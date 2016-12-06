library(dplyr)
library(dtplyr)
library(data.table)
library(lubridate)
library(stringr)
library(magrittr)

# Get DPD extract data. set manually here

dpdextractdate <- "2016-11-01"

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


#Filter to human active

dpd_human_active <- dpd_drug_all %>%
                    filter(extract == "active", CLASS == "Human")

# Enrich with french terms (in future version)

# dpd_dose_form and route

dpd_form_route <- dpd_human_active %>%
  left_join(dpd_form_all) %>%
  left_join(dpd_route_all) %>%
  group_by(PHARM_FORM_CODE, ROUTE_OF_ADMINISTRATION_CODE) %>%
  dplyr::summarize(dpd_pharm_form = first(PHARMACEUTICAL_FORM),
                   dpd_route_admin = first(ROUTE_OF_ADMINISTRATION),
                   n_din = n_distinct(DRUG_IDENTIFICATION_NUMBER))

# dpd active ingredients
dpd_active_ingredients <- dpd_ingred_all %>%
                          semi_join(dpd_human_active) %>%
                          group_by(ACTIVE_INGREDIENT_CODE) %>%
                          dplyr::summarize(n_names = length(unique(INGREDIENT)),
                                           ingredient_names = sort(unique(INGREDIENT)) %>% 
                                             paste(collapse = "|"),
                                           basis_of_strength_ing = sort(unique(INGREDIENT))[1] %>% 
                                             str_replace(regex("(\\(.*\\)$)+?"), "") %>% 
                                             str_trim(),
                                           precise_ing = sort(unique(INGREDIENT)) %>% 
                                             str_extract(regex("(?<=\\()(.*)(?=\\))")) %>% 
                                             na.omit(.) %>% 
                                             paste(collapse = "|")) %>%
                          mutate(precise_ing = ifelse(precise_ing == "", basis_of_strength_ing, precise_ing))

# dpd_ingredient_sets

ntp_concepts <- dpd_ingred_all %>%
  semi_join(dpd_human_active) %>%
  left_join(dpd_active_ingredients) %>%
  mutate(dpd_strength_w_unit = paste(as.numeric(STRENGTH), STRENGTH_UNIT),
         dpd_ing_w_strength = paste(basis_of_strength_ing, dpd_strength_w_unit)) %>%
  group_by(DRUG_CODE) %>%
  dplyr::summarize(ai_set = sort(basis_of_strength_ing) %>% paste(collapse = "!") %>% toupper(),
                   n_ing = length(basis_of_strength_ing),
                   ai_set_str = sort(dpd_ing_w_strength) %>% paste(collapse = "!") %>% toupper()) %>%
  left_join(dpd_human_active) %>%
  left_join(dpd_form_all) %>%
  left_join(dpd_route_all) %>%
  left_join(dpd_comp_all %>% select(DRUG_CODE, COMPANY_CODE, COMPANY_NAME)) %>%
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
                             AI_GROUP_NO)} %>%
  group_by(ai_set_str,
           ai_set,
           PHARMACEUTICAL_FORM,
           ROUTE_OF_ADMINISTRATION) %>%
  dplyr::summarize(num_ais = first(NUMBER_OF_AIS),
                   num_dins = n_distinct(DRUG_IDENTIFICATION_NUMBER),
                   ai_group = first(ai_group),
                   num_ai_groups = n_distinct(ai_group),
                   num_strengths = n_distinct(AI_GROUP_NO),
                   AI_GROUP_NO = paste(unique(AI_GROUP_NO), collapse = ", ")) %>%
  ungroup()

# http://www.fda.gov/downloads/ForIndustry/DataStandards/StructuredProductLabeling/UCM362965.zip
# Active Ingredient - Active Moiety - Basis of Strength map

#Top 250 from hcref

top250 <- tbl(src_postgres("hcref", "shiny.hc.local", user = "hcreader", password = "canada1"), "rx_retail_usage") %>% 
  collect() %>%
  dplyr::select(ai_set, total) %>%
  `[`(1:250,) %>%
  as.data.table()

ntp_concepts_250 <- ntp_concepts %>% semi_join(top250)
dpd_active_ingredients_250 <- dpd_active_ingredients %>% mutate(ai_set = basis_of_strength_ing) %>% semi_join(top250) %>% select(-ai_set)
ntp_concept_map_250 <- ntp_concept_map %>% semi_join(ntp_concepts_250)
