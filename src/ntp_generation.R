############################################
# Bryce Claughton and Daniel Buijs
# Purpose: Scripting the collection, processing, and production of data tables relating to the electronic prescribing project with Canada Health Infoway.

library(dplyr)
library(dtplyr)
library(data.table)
library(lubridate)
library(stringr)
library(magrittr)

# Get DPD extract data. set manually here

dpdextractdate <- "2017-01-04"

# For each individual ingredient, generate:
#   dpd_ing_code
#   dpd_strength_w_unit, 
#   dpd_ingredient_name, 
#   dpd_basis_of_strength_name
#   dpd_precise_name
#   ntp_therapeutic_moeity
#   imdp_g_srs
#   idmp_ucum
#   std, mapping, etc.


# For each DIN, generate:
#   ntp_code
#   ntp_ai_set, 
#   ntp_str_set, 
#   ntp_dose_form,
#   ntp_formal_desc
#   ntp_display_desc
#   ntp_status
#   ntp_tm_set
#   dpd_brand
#   dpd_company
#   dpd_form
#   dpd_route
#   dpd_status
#   dpd_ai_set
#   dpd_str_set
#   idmp_phpid_sub_l1
#   idmp_phpid_sub_l2
#   idmp_phpid_sub_l3
#   idmp_phpid_sub_l4


# Filter to human active

dpd_human_active <- dpd_drug_all %>%
  filter(extract == "active", CLASS == "Human")

# Enrich with french terms (in future version)

# dpd_dose_form and route
# ntp_dose_form_map creates two data maps to be used for drug routes and drug types onto the dpd db.

ntp_dose_form_map <- fread("~/formulary/ntp_doseform_map.csv") %>% 
  # Creating a new column that takes in the 'V4' column and extracts the administrative method (which is encased in parentheses)
  # E.g. 'ORAL'
  mutate(dpd_route_admin = str_extract(V4, regex("(?<=\\().+(?=\\))")) %>% toupper()) %>%
  # Selecting columns and renaming them because of the spaces
  select(dpd_pharm_form = `DPD PHARMACEUTICAL_FORM`, 
         dpd_route_admin, 
         ntp_dose_form = `NTP Formal Name Dose form`) %>%
  # Filtering out all rows that have empty strings (there are 3 extra rows at the bottom that are like this)
  filter(!dpd_pharm_form == "") %T>%
  # Tee operator is used for the side effect of the next code block in {}. 
  # In this case, we are creating a new map for the cases that have self explanatory, or only one, routes of admin.
  # And then only keeping the pharm_form and the dose_form.
  {ntp_dose_form_map_simple <<- filter(., is.na(dpd_route_admin)) %>% 
    select(dpd_pharm_form, ntp_dose_form)} %>%
  filter(!is.na(dpd_route_admin))

# dpd_form_route is a df that maps each form and route to the dpd_human_active df
dpd_form_route <- dpd_human_active %>%
  left_join(dpd_form_all) %>%
  left_join(dpd_route_all) %>%
  group_by(PHARM_FORM_CODE, ROUTE_OF_ADMINISTRATION_CODE) %>%
  dplyr::summarize(dpd_pharm_form = first(PHARMACEUTICAL_FORM),
                   dpd_route_admin = first(ROUTE_OF_ADMINISTRATION),
                   n_din = n_distinct(DRUG_IDENTIFICATION_NUMBER))

# Right join to limit dpd_pharm_form to only those in the ntp map
# Left join to include all routes of admin
# Need to figure out NAs

dpd_form_route_map <- bind_rows(right_join(dpd_form_route, ntp_dose_form_map),
                                left_join(dpd_form_route, ntp_dose_form_map_simple)) %>%
  filter(!is.na(ntp_dose_form))





# dpd_active_ingredients <- dpd_ingred_all %>%
#   # Semi join only keeps the ingredients in human active drugs
#   semi_join(dpd_human_active) %>%
#   group_by(ACTIVE_INGREDIENT_CODE) %>%
#   dplyr::summarize(n_names = length(unique(INGREDIENT)),
#                    ingredient_names = sort(unique(INGREDIENT)) %>% 
#                      paste(collapse = "|"),
#                    basis_of_strength_ing = sort(unique(INGREDIENT))[1] %>% 
#                      # replace all characters within a parentheses with the empty string, if and only if parentheses exist.
#                      # then trim the white space leaving only what was outside of parentheses
#                      str_replace(regex("(\\(.*\\)$)+?"), "") %>% 
#                      str_trim(),
#                    precise_ing = sort(unique(INGREDIENT)) %>% 
#                      # only recovers the characters within parentheses, and takes out any NAs
#                      str_extract(regex("(?<=\\()(.*)(?=\\))")) %>% 
#                      na.omit(.) %>% 
#                      paste(collapse = "|")) %>%
#   # if there is no precise_ing, replace it with the basis_of_strength_ing, otherwise leave it the same.
#   mutate(precise_ing = ifelse(precise_ing == "", basis_of_strength_ing, precise_ing))

# US reference data for active ingredients
# See: https://tripod.nih.gov/ginas/
us_spl_ai <- fread("~/formulary/data/ai_am_bos.csv") %>% select(precise_ing = `Active Ingredient`, everything())

# Bad name, should change
# Basically the same as dpd_active_ingredients, but every ingredient is upper case and we don't care about
# the number of ingredients or the ingredient names because we are using the GINAS dataset as it is quite complete.
dpd_active_ingredients <- dpd_ingred_all %>%
  semi_join(dpd_human_active) %>%
  mutate(INGREDIENT = toupper(INGREDIENT)) %>%
  group_by(ACTIVE_INGREDIENT_CODE, INGREDIENT) %>%
  # the regex are buggy because they have no exception. some entries do not have precise ingredients inside brackets (even though they should)
  dplyr::mutate(basis_of_strength_ing = sort(unique(INGREDIENT))[1] %>% 
                     str_replace(regex("(\\(.*\\)$)+?"), "") %>% 
                     str_trim(),
                   precise_ing = sort(unique(INGREDIENT)) %>% 
                     str_extract(regex("(?<=\\()(.*)(?=\\))")) %>% 
                     na.omit(.) %>% 
                     paste(collapse = "|")
                   ) %>%
  mutate(precise_ing = ifelse(precise_ing == "", basis_of_strength_ing, precise_ing)) %>%
  left_join(us_spl_ai) %>%
  mutate(strength_w_unit_w_dosage_if_exists = paste(STRENGTH,
                                                    STRENGTH_UNIT,
                                                    ifelse(DOSAGE_VALUE != "", paste("per", DOSAGE_VALUE, DOSAGE_UNIT), ""))) %>%
  select(c(DRUG_CODE,
         precise_ing,
         basis_of_strength_ing,
         active_moiety = `Active Moiety`,
         ACTIVE_INGREDIENT_CODE,
         ai_unii = `AI UNII`,
         am_unii = `AM UNII`,
         STRENGTH,
         STRENGTH_UNIT,
         DOSAGE_VALUE,
         DOSAGE_UNIT,
         strength_w_unit_w_dosage_if_exists))


# substance_sets is a data frame that contains the precise ingredient, basis of strengths, and therapeutic moiety combinations for each drug code
# used for mapping to the products table
substance_sets <- dpd_ingred_all %>%
  semi_join(dpd_human_active) %>%
  group_by(DRUG_CODE) %>%
  left_join(dpd_active_ingredients) %>%
  mutate(sub_str = paste(precise_ing, strength_w_unit_w_dosage_if_exists),
         boss_set = sort(basis_of_strength_ing) %>% unique() %>% paste(collapse = "!"),
         tm_set = sort(active_moiety) %>% unique() %>% paste(collapse = "!"),
         sub_set = sort(precise_ing) %>% unique() %>% paste(collapse = "!"),
         sub_str_set = sort(sub_str) %>% unique() %>% paste(collapse = "!")) %>%
  select(c(DRUG_CODE,
           sub_set,
           boss_set,
           tm_set,
           sub_str_set,
           ai_unii,
           am_unii))

# products is a table that contains all relevant information for every product from dpd_human_active.
# relevant information includes brand name, company name, active ingredients, ntp dose form, route of admin, form code
products <- dpd_human_active %>%
  left_join(dpd_active_ingredients, by = c("DRUG_CODE")) %>%
  left_join(dpd_comp_all %>% select(DRUG_CODE, COMPANY_CODE, COMPANY_NAME)) %>%
  left_join(dpd_route_all) %>%
  left_join(dpd_form_all) %>%
  left_join(dpd_ther_all) %>%
  mutate(dpd_pharm_form = PHARMACEUTICAL_FORM, dpd_route_admin = ROUTE_OF_ADMINISTRATION) %>%
  select(-c(PHARMACEUTICAL_FORM, ROUTE_OF_ADMINISTRATION)) %>%
  left_join(ntp_dose_form_map) %>%
  left_join(ntp_dose_form_map_simple, by = c("dpd_pharm_form")) %>%
  mutate(ntp_dose_form = ifelse(is.na(ntp_dose_form.x), ntp_dose_form.y, ntp_dose_form.x)) %>%
  select(c(DRUG_CODE,
           DRUG_IDENTIFICATION_NUMBER,
           extract,
           LAST_UPDATE_DATE,
           BRAND_NAME,
           COMPANY_NAME,
           COMPANY_CODE,
           dpd_route_admin,
           dpd_pharm_form,
           TC_ATC_NUMBER,
           TC_ATC,
           TC_AHFS_NUMBER,
           TC_AHFS,
           NUMBER_OF_AIS,
           ntp_dose_form,
           ROUTE_OF_ADMINISTRATION_CODE,
           PHARM_FORM_CODE))

# mp_source is the joining of substance_sets onto products
mp_source <- left_join(products, substance_sets)

# mp_table is the manufactured prodcuts table that looks nice and pretty for the librarians at canada health infoway
# see MPSample20161215.xlsx in formulary directory for an example
# a lot of code here is quite rough, and there are known issues about it.
mp_table <- mp_source %>%
  select(c(DRUG_IDENTIFICATION_NUMBER,
           extract,
           LAST_UPDATE_DATE,
           BRAND_NAME,
           COMPANY_NAME,
           sub_str_set,
           tm_set,
           ntp_dose_form,
           NUMBER_OF_AIS)) %>%
  group_by(DRUG_IDENTIFICATION_NUMBER) %>%
  unique() %>%
  left_join(ntp_concept_map %>% select(DRUG_IDENTIFICATION_NUMBER,
                                       DPD_BRAND_NAME,
                                       ai_set_str,
                                       ROUTE_OF_ADMINISTRATION,
                                       PHARMACEUTICAL_FORM)) %>%
  mutate(formal_description = sprintf("%s [%s %s %s] %s",
                                      DPD_BRAND_NAME,
                                      tolower(ai_set_str),
                                      tolower(ROUTE_OF_ADMINISTRATION),
                                      tolower(PHARMACEUTICAL_FORM),
                                      COMPANY_NAME),
         en_display = "",
         fr_display = "") %>%
  left_join(top250) %>% filter(!is.na(id)) %>%
  mutate(product_status_effective_time = LAST_UPDATE_DATE %>%
           parse_date_time("dmy") %>%
           as.Date %>%
           str_replace_all("-", ""),
         product_status = extract) %>%
  select(c(id,
           formal_description,
           en_display,
           fr_display,
           product_status,
           product_status_effective_time)) %>%
  unique()



# ntp_table is the table of ntp with formal names and all that good stuff
# see NTPsample20161215.xlsx for the example of what the table should look like.
ntp_table <- mp_source %>%
  left_join(ntp_concept_map) %>%
  group_by(ntp_dose_form, sub_set) %>%
  dplyr::summarize(unique_number_dins = n_distinct(DRUG_IDENTIFICATION_NUMBER),
                   formal_descrip = tolower(paste(first(ai_set_str), ROUTE_OF_ADMINISTRATION, PHARMACEUTICAL_FORM)),
                   status = ifelse(extract == "active", "active", "inactive"),
                   greater_than_5_AIs = NUMBER_OF_AIS > 5,
                   tm_set = first(tm_set)) %>%
  unique() %>% 
  left_join(top250) %>% filter(!is.na(id)) %>%
  mutate(ntp_id = id + 9000000,
         en_display = "",
         fr_display = "",
         type = "") %>%
  left_join(mp_source) %>%
  unique() %>%
  mutate(product_status = extract,
         product_status_effective_time = LAST_UPDATE_DATE %>%
           parse_date_time("dmy") %>%
           as.Date %>%
           str_replace_all("-", "")) %>%
  select(c(ntp_id,
           formal_descrip,
           en_display,
           fr_display,
           type,
           product_status,
           product_status_effective_time))

tm_table <- mp_source %>%
  group_by(tm_set) %>%
  # There shouldn't be any empty tm_sets, so this is a bug.
  filter(tm_set != "") %>%
  dplyr::summarize(n_dins = n_distinct(DRUG_IDENTIFICATION_NUMBER),
            n_ntps = n_distinct(ntp_dose_form)) %>%
  right_join(top250) %>%
  left_join(mp_source %>% select(c(tm_set, extract, LAST_UPDATE_DATE))) %>%
  mutate(formal_description = tm_set %>% str_replace_all("!", " and ") %>% tolower(),
         product_status_effective_time = LAST_UPDATE_DATE %>%
           parse_date_time("dmy") %>%
           as.Date %>%
           str_replace_all("-", "")) %>%
  unique() %>%
  mutate(en_display = "",
         fr_display = "",
         product_status = extract,
         tm_id = group_indices(tm_table, tm_set)) %>%
  select(c(tm_id,
           formal_description,
           en_display,
           fr_display,
           product_status,
           product_status_effective_time))

mapping_table <- mp_source %>%
  group_by(DRUG_IDENTIFICATION_NUMBER) %>%
  select(c(ROUTE_OF_ADMINISTRATION_CODE,
           PHARM_FORM_CODE,
           ntp_dose_form,
           am_unii,
           tm_set)) %>%
  # Taking out na active moiety... weird bug which will need to be looked at because there should not be any NAs
  filter(!is.na(am_unii)) %>%
  group_by(DRUG_IDENTIFICATION_NUMBER, am_unii) %>%
  unique() %>%
  mutate(description = "") %>%
  right_join(top250)

dpd_active_ingredients %>% write.csv("dpd_active_ingredients.csv")
tm_table %>% write.csv("tm_table.csv")
mapping_table %>% write.csv("mapping_table.csv")
ntp_table %>% write.csv("ntp_table.csv")
mp_table %>% write.csv("mp_table.csv")
products %>% write.csv("products.csv")
substance_sets %>% write.csv("substance_sets.csv")
top250 %>% write.csv("top250.csv")
  
  
  
  

# dpd_ingredient_sets

ntp_concepts <- dpd_ingred_all %>%
  # drop any ingredient that is not an active human ingredient
  semi_join(dpd_human_active) %>%
  # join up the active ingredients2 df to our original data
  left_join(dpd_active_ingredients) %>%
  # dpd_strength_w_unit looks like 200 mg for example.
  # dpd_ing_w_strength is the basis of strength ing followed by the previous column that was just defined.
  mutate(dpd_strength_w_unit = paste(as.numeric(STRENGTH), STRENGTH_UNIT),
         dpd_ing_w_strength = paste0(basis_of_strength_ing, ' (', precise_ing, ') ',  dpd_strength_w_unit, 
                                     ifelse(DOSAGE_VALUE != "" , paste(" per", DOSAGE_VALUE, DOSAGE_UNIT), ""))) %>%
  group_by(DRUG_CODE) %>%
  # ai_set orders the basis_strenth_ing and collapses them together by " and ", then makes it all upper case
  # n_ing is the number of ingredients
  # ai_set_str sorts the ing with strengths, also collapsing by " and " to upper case.
  dplyr::summarize(ai_set = sort(basis_of_strength_ing) %>% unique() %>% paste(collapse = " and ") %>% toupper(),
                   n_ing = length(basis_of_strength_ing),
                   ai_set_str = sort(dpd_ing_w_strength) %>% unique() %>% paste(collapse = " and ") %>% toupper(),
                   strength = STRENGTH,
                   strength_unit = STRENGTH_UNIT) %>%
  # add in human active drugs
  left_join(dpd_human_active) %>%
  # get the forms
  left_join(dpd_form_all) %>%
  # get the routes
  left_join(dpd_route_all) %>%
  # only add the company codes and names
  left_join(dpd_comp_all %>% select(DRUG_CODE, COMPANY_CODE, COMPANY_NAME)) %>%
  # ai_group extracts the first 7 digits from the active ingredient group number 
  mutate(ai_group = str_extract(AI_GROUP_NO, regex("^\\d{7}"))) %T>%
  {ntp_concept_map <<- select(., 
                              DRUG_CODE, 
                              DRUG_IDENTIFICATION_NUMBER,
                              DPD_BRAND_NAME = BRAND_NAME,
                              ai_set_str,
                              PHARMACEUTICAL_FORM,
                              ROUTE_OF_ADMINISTRATION,
                              COMPANY_NAME,
                              ai_set,
                              ai_group, 
                              AI_GROUP_NO,
                              strength,
                              strength_unit,
                              LAST_UPDATE_DATE)} %>%
  group_by(ai_set_str,
           ai_set,
           PHARMACEUTICAL_FORM,
           ROUTE_OF_ADMINISTRATION) %>%
  dplyr::summarize(num_ais = first(NUMBER_OF_AIS),
                   num_dins = n_distinct(DRUG_IDENTIFICATION_NUMBER),
                   ai_group = first(ai_group),
                   num_ai_groups = n_distinct(ai_group),
                   num_strengths = n_distinct(AI_GROUP_NO),
                   AI_GROUP_NO = paste(unique(AI_GROUP_NO), collapse = ", "),
                   strength = strength,
                   strength_unit = strength_unit) %>%
  ungroup()

########################################################################################
  

# http://www.fda.gov/downloads/ForIndustry/DataStandards/StructuredProductLabeling/UCM362965.zip
# Active Ingredient - Active Moiety - Basis of Strength map

# Top 250 from hcref
# taking top 250 active ingredient sets and total
top250 <- tbl(src_postgres("hcref", "shiny.hc.local", user = "hcreader", password = "canada1"), "rx_retail_usage") %>% 
  collect() %>%
  dplyr::select(ai_set, total) %>%
  `[`(1:250,) %>%
  as.data.table()

# same as top250 but 500
top500 <- tbl(src_postgres("hcref", "shiny.hc.local", user = "hcreader", password = "canada1"), "rx_retail_usage") %>% 
  collect() %>%
  dplyr::select(ai_set, total) %>%
  `[`(1:500,) %>%
  as.data.table()

# take the top 250 ntp_concepts
ntp_concepts_250 <- ntp_concepts %>% semi_join(top250)
# take the top 250 dpd_active ingredients.
dpd_active_ingredients_250 <- dpd_active_ingredients %>% mutate(ai_set = basis_of_strength_ing) %>% semi_join(top250) %>% select(-ai_set)
# top 250 concept maps
ntp_concept_map_250 <- ntp_concept_map %>% semi_join(ntp_concepts_250)
