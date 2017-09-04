# Authors ---------------------------------------------------------------------
# Daniel Buijs and Bryce Claughton
# Purpose: Scripting the collection, processing, and production of data tables
#          relating to the electronic prescribing project with 
#          Canada Health Infoway.

# Libraries - most recent CRAN versions

library(dplyr)
library(dtplyr)
library(dbplyr)
library(data.table)
library(lubridate)
library(stringr)
library(magrittr)
library(testthat)
library(purrr)

# Check for database connections. The connection credentials are provided by environment variables (not included in git repo)
# Important for updating CCDD but not necessary for the first generation
dpd <- src_postgres(dbname = "dpd",
                    host = "rest.hc.local",
                    port = 5432,
                    user = Sys.getenv("rest_user"),
                    password = Sys.getenv("rest_password"),
                    options = "-c search_path=dpd_20170901")

ccdd <- src_postgres(dbname = "ccdd",
                     host = "rest.hc.local",
                     port = 5432,
                     user = Sys.getenv("rest_user"),
                     password = Sys.getenv("rest_password"))


drug <- tbl(dpd, "drug_product")
ing <- tbl(dpd, "active_ingredient")
comp <- tbl(dpd, "companies")
form <- tbl(dpd, "pharmaceutical_form")
route <- tbl(dpd, "route")
schedule <- tbl(dpd, "schedule")
status <- tbl(dpd, "status")
ther <- tbl(dpd, "therapeutic_class")
packaging <- tbl(dpd, "packaging")

ccdd_tm_reg <- tbl(ccdd, "tm_table")
ccdd_ntp_reg <- tbl(ccdd, "ntp_table")
ccdd_mp_reg <- tbl(ccdd, "mp_table")
# This is a hard-coded value to ensure all the subsequent date math is absolute and not relative.

ccdd_start_date <- "2017-07-04"

# Get raw data from dpd database on rest.hc.local. Naming convention for schema based on extracts is dpd_[yyyymmdd] 

dpdextractdate <- "2017-07-04"

# Text files required for generation process

# Ingredient Stem

#ingredient_stem_file <- fread("ing_stem_20170822.csv")[-1,-1]
ingredient_stem_file <- fread("ingredient_stem_20170903.csv")

# NTP Dosage Form Transform

ntp_form_route_file <- fread("Julie/NTP Dosage Form Transform 20170901.txt")

# Unit of Presentation

packaging_file <- fread("Julie/Unit of Presentation 20170901.txt", data.table = TRUE)

# Combination Products

combination_products_file <- fread("Julie/combination_products_20170903.csv") %>% mutate(drug_code = as.integer(drug_code))
# Special Groupings (TMs)

# For each individual ingredient, generate:
#   dpd_ing_code
#   dpd_strength_w_unit, 
#   dpd_ingredient_name, 
#   dpd_basis_of_strength_name
#   dpd_precise_name
#   ntp_therapeutic_moeity
#   idmp_g_srs
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

setwd("~/formulary/src")

# Data ------------------------------------------------------------------------

# DPDimport.R is a script that generates all tables from the DPD website.
# Imports dpd data extract files from Health Canada website.
# Only run this if you don't have a database connection to the DPD history.
# source("DPDimport.R")

# Table Manipulation ----------------------------------------------------------

# Filtering for products to add to CCDD. 
# This will be different depending on whether this is the first generation or an update.
# For the first generation, we need all Human products where:
# they are both currently marketed and the first date of marketing is before the CCDD start date
# they are currently cancelled post-market and the expiry date is after the dpd extract date (need to wait for DPD structure change on this one)

dpd_first_market_date <- status %>% 
  filter(status == "MARKETED") %>%
  group_by(drug_code) %>%
  filter(history_date == min(history_date)) %>%
  select(drug_code, first_market_date = history_date)

dpd_current_status <- status %>%
  filter(current_status_flag == "Y") %>%
  select(drug_code, current_status = status)

# Save this intermediate
dpd_human_ccdd_products <- drug %>%
  filter(class == "Human") %>%
  left_join(dpd_first_market_date) %>%
  left_join(dpd_current_status) %>%
  filter((current_status == "MARKETED" & first_market_date < ccdd_start_date) |
           (current_status == "DORMANT" & last_update_date > ccdd_start_date))

# Taking only the ingredients that are used in the ccdd products.
# Left-join Ingredient_stem file when available. 
dpd_ccdd_ingredient_names <- ing %>%
  semi_join(dpd_human_ccdd_products) %>%
  distinct(ingredient, active_ingredient_code) %>%
  collect() %>%
  select(dpd_ingredient = ingredient, everything()) %>%
  mutate(basis_of_strength_ing = dpd_ingredient %>% 
           str_replace(regex("(\\(.*\\)$)+?"), "") %>%
                          str_trim(),
         precise_ing = dpd_ingredient %>% 
           str_extract(regex("(?<=\\()(.*)(?=\\))")),
         precise_ing = ifelse(is.na(precise_ing),
                                          basis_of_strength_ing, precise_ing))

# dpd_ccdd_ingredients <- dpd_ccdd_ingredient_names %>%
#   group_by(active_ingredient_code) %>%
#   summarize(n_names = n_distinct(dpd_ingredient),
#             str_units = paste(sort(unique(strength_unit)), collapse = ", "),
#             dosage_units = paste(sort(unique(dosage_unit)), collapse = ", "),
#             basis_of_strength_ing = sort(unique(dpd_ingredient))[1] %>% 
#               str_replace(regex("(\\(.*\\)$)+?"), "") %>% 
#               str_trim(),
#          precise_ing = sort(unique(dpd_ingredient)) %>% 
#            str_extract(regex("(?<=\\()(.*)(?=\\))")) %>% 
#            na.omit(.) %>% 
#            paste(collapse = ", ")) %>%
#   mutate(precise_ing = ifelse(precise_ing == "", 
#                               basis_of_strength_ing, precise_ing))
# 
# dpd_ccdd_ingredient_names <- left_join(dpd_ccdd_ingredient_names, dpd_ccdd_ingredients)

# Ingredient stems
# For now import manual table, to be maintained in the CCDD database in the future.
# This line renames columns to facilitate a join, and excludes the comments column

# ingredient_stem <- fread("Ingredient Stem v4.txt") %>%
#                    select(ccdd = `CCDD Flag`,
#                           top250name = `Top 250 Ingred - no multiples`,
#                           dpd_ingredient = `DPD Medicinal Ingredient (E)`,
#                           ing_stem = `Ingredient Stem`) %>%
#   mutate(hydrate = str_detect(dpd_ingredient, regex("hydrate", ignore_case = TRUE)),
#          hydrate = ifelse(dpd_ingredient == "CHLORAL HYDRATE", FALSE, hydrate),
#          ntp_ing = dpd_ingredient)

# This is an important source file
ingredient_stem <- ingredient_stem_file %>% 
                    mutate(ing_stem = tolower(ing_stem),
                           ing_stem = ifelse(str_detect(ing_stem, "^vitamin"),
                                            str_replace_all(ing_stem, regex("(?<=vitamin )([abcdek])"), toupper),
                                            ing_stem),
                      ntp_ing = tolower(ntp_ing),
                           ntp_ing = ifelse(str_detect(ntp_ing, "^vitamin"),
                                            str_replace_all(ntp_ing, regex("(?<=vitamin )([abcdek])"), toupper),
                                            ntp_ing)) 

# This is an intermediate to save
dpd_ccdd_ingredient_names <- left_join(dpd_ccdd_ingredient_names, ingredient_stem) 

# Creates a mapping for each combination of route admin and 
# pharmaceutical form for ntp. Arbritary mapping generated by
# Infoway Expert advisor group intended to make legacy DPD routes
# and forms consistent with eventual IDMP administrable dose forms.
# This version of the file has the form and route columns mixed up

#This is an important source file
ntp_dosage_form_map <- ntp_form_route_file %>% 
                select(route_of_administration = `DPD_ROUTE_OF_ADMINISTRATION`, 
                       pharmaceutical_form = `DPD PHARMACEUTICAL_FORM`,
                       ntp_dosage_form = NTP_DOSAGE_FORM,
                       everything())


# For each combo of pharmaceutical form and route of administration, 
# create some basic summary statistics
# Bryce : Need to capture this intermediate and send to Julie
# The filter restricts the combinations to only those products 
# with ingredients flagged in the ingredient stem table 

#This is an intermdediate (QA) file
dpd_ccdd_form_route_combinations <- dpd_human_ccdd_products %>% 
  left_join(ing) %>% 
  select(extract, drug_code, dpd_ingredient = ingredient) %>% 
  left_join(form) %>% 
  left_join(route) %>% 
  collect() %>% 
  left_join(dpd_ccdd_ingredient_names) %>% 
  filter(ccdd == "Y") %>% 
  distinct(pharmaceutical_form, route_of_administration)

# Rows from the dpd_ccdd combos that are not in the ntp_dosage_form_route_map
# This file should be empty

# This is a QA file
missing_form_routes <- anti_join(dpd_ccdd_form_route_combinations, ntp_dosage_form_map)


# The table used for string manipulation of INGREDIENT and strength/dosage values.
# TODO (bclaught): Cleaner handling of top 250 corrections. Manual overrides
#                  should not happen.

# 

ccdd_drug_ingredients_raw <- ing %>%
                             semi_join(dpd_human_ccdd_products) %>%
                             select(dpd_ingredient = ingredient, everything()) %>%
                             collect() %>%
                             left_join(dpd_ccdd_ingredient_names)

# The set of strength units in included products (QA file)
ccdd_strength_units <- ccdd_drug_ingredients_raw %>%
                       filter(ccdd == "Y") %>%
                       distinct(strength_unit)

# The set of dosage units in included products (QA file)
ccdd_dosage_units <- ccdd_drug_ingredients_raw %>%
                     filter(ccdd == "Y") %>%
                     distinct(dosage_unit)
# 
# # Do not include the following in the dosage units:
# %, BLISTER, CAP, DOSE, ECC, ECT, KIT, LOZ, NIL, PATCH, SLT, SRC, SRD, SRT, SUP, SYR, TAB, V/V, W/V, W/W
unit.dosage.unapproved <- c('', '%', 'BLISTER', 'CAP', 'DOSE', 'ECC', 'ECT',
                            'KIT', 'LOZ', 'NIL', 'PATCH', 'SLT', 'SRC', 
                            'SRD', 'SRT', 'SUP', 'SYR', 'TAB', 'V/V', 'W/V', 'W/W')


# This is an important intermediate
ccdd_drug_ingredients_raw <- ccdd_drug_ingredients_raw %>%
  # End of Top 250 Corrections ------------------------------------------------
  mutate(strength = sprintf("%15.9g", as.numeric(strength)) %>% str_trim(),
         dosage_value = ifelse(dosage_value != "",
                               sprintf("%15.9g", as.numeric(dosage_value)),
                               "") %>% str_trim(),
         dosage_unit = ifelse(dosage_unit == "ACT", "ACTUATION", dosage_unit)) %>%
  mutate(strength_w_unit_w_dosage_if_exists = paste0(strength, " ",
                                                     strength_unit, 
                                                     ifelse(!(dosage_unit %in% unit.dosage.unapproved), 
                                                            paste0(" per ",
                                                                   ifelse(dosage_value != "",
                                                                          paste0(dosage_value," ", dosage_unit),
                                                                          dosage_unit),
                                                                   ""),
                                                            "")) %>% str_trim(),
         ntp_ingredient_name = sprintf("%s %s", ntp_ing %>% tolower(),
                                       strength_w_unit_w_dosage_if_exists %>% tolower() %>% str_replace_all("ml", "mL")),
    mp_ingredient_name = ifelse(
      ing_stem != dpd_ingredient,
      sprintf("%s %s", dpd_ingredient %>% tolower(),
              strength_w_unit_w_dosage_if_exists %>% tolower() %>% str_replace_all("ml", "mL")),
      sprintf("%s %s", ing_stem %>% tolower(),
              strength_w_unit_w_dosage_if_exists %>% tolower() %>% str_replace_all("ml", "mL"))))

# This is an important intermediate
ccdd_packaging_raw <- packaging_file %>%
                      mutate(uop_suffix = ifelse(calculation == "N", 
                                                 paste(uop_size,
                                                       uop_unit_of_measure,
                                                       unit_of_presentation),
                                                 NA),
                             uop_suffix = ifelse(calculation == "Y", 
                                                 unit_of_presentation,
                                                 uop_suffix)) %>%
                      left_join(ccdd_drug_ingredients_raw %>%
                      as.data.table() %>%
                        select(drug_code,
                               ntp_ing,
                               ing_stem,
                               dpd_ingredient,
                             ntp_ingredient_name,
                             mp_ingredient_name,
                             strength,
                             strength_unit,
                             dosage_value,
                             dosage_unit)) %>%
                       mutate(uop_unit_match = tolower(uop_unit_of_measure) == tolower(dosage_unit),
                              strength_w_uop_if_exists = paste(as.numeric(strength) * uop_size,
                                                               tolower(strength_unit),
                                                               "per",
                                                               uop_size,
                                                               uop_unit_of_measure),
                              ntp_ingredient_name = ifelse(calculation == "Y",
                                                           sprintf("%s %s", ntp_ing %>% tolower(),
                                                                   strength_w_uop_if_exists %>% tolower() %>% str_replace_all("ml", "mL")),
                                                           ntp_ingredient_name),
                              mp_ingredient_name = ifelse(calculation == "Y",
                                                          ifelse(
                                                            ing_stem != dpd_ingredient,
                                                            sprintf("%s %s", dpd_ingredient %>% tolower(),
                                                                    strength_w_uop_if_exists %>% tolower() %>% str_replace_all("ml", "mL")),
                                                            sprintf("%s %s", ing_stem %>% tolower(),
                                                                    strength_w_uop_if_exists %>% tolower() %>% str_replace_all("ml", "mL"))),
                                                          mp_ingredient_name)) %>%
                       group_by(drug_code, unit_of_presentation, uop_size, uop_unit_of_measure, uop_suffix, calculation) %>%
                       summarize(ntp_ing_formal_name_uop = paste(ntp_ingredient_name, collapse = " and "),
                                 mp_ing_formal_name_uop = paste(mp_ingredient_name, collapse = " and "))

# This is an important intermediate
ccdd_ingredient_set_source <- ccdd_drug_ingredients_raw %>%
                              arrange(ing_stem) %>%
                              group_by(drug_code) %>%
                              summarize(ccdd = any(ccdd == "Y"),
                                        n_ing = n_distinct(dpd_ingredient),
                                        ai_code_set = active_ingredient_code %>% paste(collapse = ", "),
                                        tm_formal_name = ing_stem %>% unique() %>% paste(collapse = " and "),
                                        str_set = strength_w_unit_w_dosage_if_exists %>% paste(collapse = ", "),
                                        precise_ing_set = precise_ing %>% paste(collapse = ", "),
                                        ntp_ing_group = ntp_ing %>% paste(collapse = ", "),
                                        ntp_ing_formal_name = paste(ntp_ingredient_name, collapse = " and "),
                                        mp_ing_formal_name = paste(mp_ingredient_name, collapse = " and "))

# This is an important intermediate
ccdd_mp_source_raw <- dpd_human_ccdd_products %>%
                      select(extract,
                             drug_code,
                         drug_identification_number,
                         brand_name,
                         descriptor,
                         number_of_ais,
                         last_update_date,
                         ai_group_no,
                         first_market_date,
                         current_status) %>%
                       left_join(comp %>% select(extract,
                                                 drug_code,
                                                 company_code,
                                                 company_name)) %>%
  left_join(form %>% 
              select(extract,
                     drug_code,
                     pharmaceutical_form) %>%
              arrange(pharmaceutical_form) %>%
              collect() %>%
              group_by(extract, drug_code) %>%
              summarize(pharmaceutical_form = paste(pharmaceutical_form, collapse = ", ")), copy = TRUE) %>%
  left_join(route %>% 
              select(extract,
                     drug_code,
                     route_of_administration) %>%
              arrange(route_of_administration) %>%
              collect() %>%
              group_by(extract, drug_code) %>%
              summarize(route_of_administration = paste(route_of_administration, collapse = ", ")), copy = TRUE) %>%
  collect() %>%
   left_join(ntp_dosage_form_map) %>%
                       left_join(ccdd_ingredient_set_source) %>%
  left_join(ccdd_packaging_raw) %>%
  mutate(mp_formal_name = sprintf("%s (%s %s) %s",
                                         brand_name,
                                         mp_ing_formal_name,
                                         ntp_dosage_form,
                                         company_name),
         mp_formal_name = ifelse(!is.na(unit_of_presentation),
                                        sprintf("%s (%s %s %s) %s",
                                                brand_name,
                                                mp_ing_formal_name_uop,
                                                ntp_dosage_form,
                                                uop_suffix,
                                                company_name),
                                        mp_formal_name),
         ntp_formal_name = paste(ntp_ing_formal_name, ntp_dosage_form),
                ntp_formal_name = ifelse(!is.na(unit_of_presentation),
                                                paste(ntp_ing_formal_name_uop,
                                                      ntp_dosage_form,
                                                      uop_suffix),
                                                ntp_formal_name),
                greater_than_5_AIs = as.numeric(number_of_ais) > 5)

# ccdd_mp_source_raw <- ccdd_mp_source_raw %>%
#                       mutate(mp_formal_name = ifelse(drug_code %in% combination_products_map$drug_code,
#                                                      combination_products_map[combination_products_map$drug_code == drug_code]$mp_formal_name,
#                                                      mp_formal_name))
# Inject manual overrides here for MP names, Combination Products, Medical Devies, PseudoDINs, NHPS, etc.)

# This is an important intermediate
ccdd_mp_source <- ccdd_mp_source_raw %>% 
  left_join(ccdd_tm_reg %>% select(tm_formal_name, tm_code), copy = TRUE) %>%
  mutate(ccdd = ifelse(!is.na(tm_code), 
                       TRUE,
                       FALSE)) %>%
  left_join(., combination_products_file, 
               by = c("drug_code", "drug_identification_number")) %>%
  rename(combo_mp_formal_name = mp_formal_name.y,
         combo_ntp_formal_name = ntp_formal_name.y,
         mp_formal_name = mp_formal_name.x,
         ntp_formal_name = ntp_formal_name.x) %T>%
         {ccdd_pseudodins <<- distinct(., mp_formal_name, drug_code, drug_identification_number, mp_formal_name, tm_code, ccdd) %>%
                         group_by(drug_identification_number) %>% 
                         filter(n() > 1) %>%
                         ungroup() %>%
                         mutate(mp_code = 1:n() + 700000) %>%
           select(mp_code, drug_code, drug_identification_number, mp_formal_name, tm_code, ccdd) %>%
           as.data.table() %>%
           setkey(mp_formal_name)}

ccdd_pseudodins_top250 <- ccdd_pseudodins %>%
                          filter(ccdd == TRUE) %>%
                          select(-ccdd)
# Provides useful summary statistics for each drug code in active human drugs.
# substance_sets <- ccdd_drug_ingredients_raw %>%
#   arrange(dpd_ingredient, ntp_ing, ing_stem, strength) %>%
#   group_by(drug_code) %>%
#   dplyr::summarize(
#     sub_set = dpd_ingredient %>% unique() %>% paste(collapse = ", "),
#     ntp_set = ntp_group %>% unique() %>% paste(collapse = "!"),
#     tm_set  = tm %>% unique() %>% paste(collapse = "!"),
#     sub_str_dosage_set = mp_name %>% unique() %>% str_extract("\\d.*") %>% paste(collapse = "!"),
#     mp_table_set = mp_name %>% unique() %>% paste(collapse = " and "),
#     ai_unii_set = ai_unii %>% unique() %>% paste(collapse = "!"),
#     am_unii_set = am_unii %>% unique() %>% paste(collapse = "!"))
# 

# The products table contains product information for every drug code.
# products <- dpd_human_active %>%
#   select(c(DRUG_CODE, DRUG_IDENTIFICATION_NUMBER, extract, LAST_UPDATE_DATE, BRAND_NAME, NUMBER_OF_AIS)) %>%
#   left_join(dpd_comp_all %>% select(c(DRUG_CODE, COMPANY_NAME, COMPANY_CODE))) %>%
#   left_join(dpd_route_all) %>%
#   left_join(dpd_form_all) %>%
#   left_join(dpd_ther_all) %>%
#   mutate(dpd_route_admin = ROUTE_OF_ADMINISTRATION,
#          dpd_pharm_form  = PHARMACEUTICAL_FORM) %>%
#   select(-c(ROUTE_OF_ADMINISTRATION, PHARMACEUTICAL_FORM)) %>%
  # Need to do two mappings because some transforms are based on just the doseforma and others are based on both doseform and route.
  # Inelegant and should be fixed.
  # left_join(ntp_dose_form_map) %>%
  # left_join(ntp_dose_form_map_simple, by = "dpd_pharm_form") %>%
  # mutate(ntp_dose_form = ifelse(is.na(ntp_dose_form.x), ntp_dose_form.y, ntp_dose_form.x)) %>%
  # select(-c(ntp_dose_form.x, ntp_dose_form.y)) %>%
  # filter(!is.na(ntp_dose_form))

# mp_source exists as the ultimate substance and product table.
# mp, ntp, and tm can trace their roots back to this table.
# mp_source <- left_join(products, substance_sets) %>%
#   mutate(product_status_effective_time = LAST_UPDATE_DATE %>%
#            parse_date_time("dmy") %>%
#            as.Date %>%
#            str_replace_all("-", ""),
#          product_status = extract)
# 
# Contains the necessary ingredients to create the name for manufactured products.
# This is a final output file
ccdd_mp_table <- ccdd_mp_source %>% 
  mutate(
         en_display = NA,
         fr_display = NA,
         mp_formal_name = ifelse(is.na(combo_mp_formal_name),
                                 mp_formal_name,
                                 combo_mp_formal_name)) %>%
  select(ccdd,
         drug_identification_number,
         product_status = current_status, 
         product_status_effective_time = first_market_date, 
         brand_name,
         company_name,
         mp_formal_name,
         en_display,
         fr_display) %>%
  mutate(mp_code = ifelse(mp_formal_name %in% ccdd_pseudodins$mp_formal_name,
                          ccdd_pseudodins[mp_formal_name]$mp_code,
                          drug_identification_number)) %>%
  distinct() %>%
  select(ccdd, mp_code, everything())

# Contains the necessary ingredients to create the name for ntps
# This is a final output file
ccdd_ntp_table <- ccdd_mp_source %>%
  group_by(ntp_formal_name) %>%
  dplyr::summarize(ccdd = any(ccdd),
                   n_mp = n_distinct(drug_identification_number),
                   greater_than_5_AIs = any(greater_than_5_AIs),
                   #din_list = DRUG_IDENTIFICATION_NUMBER %>% unique() %>% paste(collapse = "!"),
                   #status = ifelse(product_status != "active", "inactive", "active"),
                   ntp_status_effective_time = min(first_market_date)) %>%
  ungroup() %>%
  arrange(desc(ccdd), ntp_status_effective_time) %>%
  left_join(ccdd_ntp_reg %>% select(ntp_formal_name, ntp_code), copy = TRUE) %T>%
   {start_code <- max(.$ntp_code, na.rm = TRUE)
   new_ntp_concepts <<- filter(., is.na(ntp_code)) %>%
     mutate(ntp_code = 1:n() + start_code)} %>%
   filter(!is.na(ntp_code)) %>%
   bind_rows(new_ntp_concepts) %>%
  mutate(en_display = NA,
         fr_display = NA) %>%
  select(ccdd, ntp_code, everthing())


# copy_to(ccdd, ccdd_ntp_table, "ntp_table", temporary = FALSE)



# Contains the necessary ingredients to create a therapeutic moiety table.
# TODO (bclaught): There is an issue with NAs appearing in the tm set.
# This is a final output file
ccdd_tm_table <- ccdd_mp_source %>%
  group_by(tm_formal_name) %>%
  dplyr::summarize(ccdd = any(ccdd == TRUE),
                   n_dins = n_distinct(drug_identification_number),
                   n_ntps = n_distinct(ntp_dosage_form), #this isn't an accurate count 
                   status = ifelse(any(current_status == "MARKETED"), "active", "inactive"),
                   tm_status_effective_time = min(first_market_date)) %>%
  ungroup() %>%
  arrange(desc(ccdd), tm_status_effective_time) %>%
  left_join(ccdd_tm_reg, copy = TRUE) %>%
#  {start_code <- max(.$tm_code, na.rm = TRUE)
#    new_tm_concepts <<- filter(., is.na(tm_code)) %>%
#    mutate(tm_code = 1:n() + start_code)} %>%
#  filter(!is.na(tm_code)) %>%
#  bind_rows(new_tm_concepts) %>%
  mutate(en_display = NA,
         fr_display = NA) %>%
  select(ccdd, tm_code, everything())


# Mapping table between TM and NTP
# This is a final output file
ccdd_mapping_table <- ccdd_mp_source %>%
                 left_join(ccdd_tm_table %>% select(tm_code, tm_formal_name)) %>%
                 left_join(ccdd_ntp_table %>% select(ntp_code, ntp_formal_name)) %>%
  select(ccdd,
         tm_code,
         tm_formal_name,
         ntp_code,
         ntp_formal_name, 
         mp_code = drug_identification_number, 
         mp_formal_name) %>% distinct()



# CCDD Database
# copy_to(ccdd, ccdd_mp_table, "mp_table", temporary = FALSE)
# copy_to(ccdd, ccdd_ntp_table, "ntp_table", temporary = FALSE)


# mp_ntp_relationship_table <- mapping_table %>%
#   select(-c(tm_set, formal_description_tm, tm_code))
# 
# mp_tm_relationship_table <- mapping_table %>%
#   select(-c(ntp_dose_form, formal_description_ntp, ntp_code))

# Top 250 therapeutic moieties in Canada --------------------------------------  


# Summary Tables for the top 250 ----------------------------------------------
# http://www.fda.gov/downloads/ForIndustry/DataStandards/StructuredProductLabeling/UCM362965.zip
# These are the final output tables filtered for CCDD == TRUE
ccdd_mp_table_top250 <- ccdd_mp_table %>%
  filter(ccdd == TRUE) %>% 
  select(-ccdd)

ccdd_tm_table_top250 <- ccdd_tm_table %>%
  filter(ccdd == TRUE) %>% 
  select(-ccdd)

ccdd_ntp_table_top250 <- ccdd_ntp_table %>%
  filter(ccdd == TRUE) %>% 
  select(-ccdd)

mp_ntp_tm_relationship_top250 <- ccdd_mapping_table %>%
  filter(ccdd == TRUE) %>% 
  select(-ccdd)


# Test Functions --------------------------------------------------------------

expect_that(TRUE    , is_identical_to(nrow(mp_ntp_tm_relationship_top250) == nrow(mp_table_top250)))
expect_that(0       , equals(nrow(mp_ntp_tm_relationship_top250 %>% filter(is.na(ntp_code)))))
expect_that(TRUE    , equals(nrow(top250) == nrow(tm_table_top250)))

# Write to file ---------------------------------------------------------------

# table_writer <- function(table, tablename, version = "v11") {
#   date <- as.character(Sys.Date()) %>% str_replace_all("-", "")
#   directory <- paste0("~/formulary/output/", date, "/")
#   filename <- sprintf("%s_%s_%s.txt", tablename, date, version)
#   ifelse(!dir.exists(directory), dir.create(directory), FALSE)
#   write.table(x = table, file = paste0(directory, filename), row.names = FALSE, sep = "|", fileEncoding = "UTF-8")
# }
# 
# # Current Version is Version 10 as of 2017-03-13
# table_writer(mp_table_top250, "mp_table")
# table_writer(ntp_table_top250, "ntp_table")
# table_writer(tm_table_top250, "tm_table")
# table_writer(mp_ntp_tm_relationship_top250, "mp_ntp_tm_relationship")

# Artifacts to write:
# dpd_human_ccdd_prodcts
# dpd_ccdd_ingredient_names
# ingredient_stem
# ntp_dosage_form_map
# dpd_ccdd_form_route_combinations
# missing_form_routes
# ccdd_drug_ingredients_raw
# ccdd_strength_units
# ccdd_dosage_units
# packaging
# ccdd_packaging_raw
# ccdd_ingredient_set_source
# ccdd_mp_source_raw
# ccdd_mp_source
# ccdd_mp_table
# ccdd_ntp_table
# ccdd_tm_table
# mapping_table
# ccdd_mp_table_top250
# ccdd_ntp_table_top250
# ccdd_tm_table_top250
# mp_ntp_tm_relationship_top250

artifacts <- c(
  "dpd_ccdd_ingredient_names",
  "ingredient_stem_file",
  "ntp_dosage_form_map",
  "dpd_ccdd_form_route_combinations",
  "missing_form_routes",
  "ccdd_drug_ingredients_raw",
  "ccdd_strength_units",
  "ccdd_dosage_units",
  "packaging_file",
  "ccdd_packaging_raw",
  "ccdd_ingredient_set_source",
  "ccdd_mp_source_raw",
  "ccdd_mp_source",
  "ccdd_mp_table",
  "ccdd_ntp_table",
  "ccdd_tm_table",
  "ccdd_mapping_table",
  "ccdd_pseudodins",
  "ccdd_pseudodins_top250",
  "ccdd_mp_table_top250",
  "ccdd_ntp_table_top250",
  "ccdd_tm_table_top250",
  "mp_ntp_tm_relationship_top250",
  "new_ntp_concepts")
  
for(x in artifacts){
  filename <- paste(x, "20170903_sept_extract.csv", sep = "_")
  write.csv(get(x), file = paste0("../reports/20170903_sept_extract/", filename), row.names = FALSE)
}

