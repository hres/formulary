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
library(tibble)

# Check for database connections. The connection credentials are provided by environment variables (not included in git repo)
# Important for updating CCDD but not necessary for the first generation
dpd <- src_postgres(dbname = "dpd",
                    host = "rest.hc.local",
                    port = 5432,
                    user = Sys.getenv("rest_user"),
                    password = Sys.getenv("rest_password"),
<<<<<<< HEAD
                    options = "-c search_path=dpd_20180202")
=======
                    options = "-c search_path=dpd_20180501")
>>>>>>> folder_reorg

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
ccdd_pseudodins_reg <- tbl(ccdd, "pseudodin_table")
ccdd_ntp_device_reg <- tbl(ccdd, "ntp_devices")
#ccdd_special_groupings_reg <- tbl(ccdd, "special_groupings")
#ccdd_coded_concepts_reg <- tbl(ccdd, "coded_concepts")
ccdd_ntp_dosage_forms <- tbl(ccdd, "ntp_dosage_forms")
ccdd_ntp_ingredients <- tbl(ccdd, "ntp_ingredients")

# This is a hard-coded value to ensure all the subsequent date math is absolute and not relative.

ccdd_start_date <- "2017-07-04"

# Get raw data from dpd database on rest.hc.local. Naming convention for schema based on extracts is dpd_[yyyymmdd] 

<<<<<<< HEAD
dpdextractdate <- "2018-02-02"
=======
dpdextractdate <- "2018-03-01"
>>>>>>> folder_reorg

# Text files required for generation process

# Ingredient Stem

#ingredient_stem_file <- fread("ing_stem_20170822.csv")[-1,-1]
<<<<<<< HEAD
ingredient_stem_file <- fread("Ingredient Stem/Ingredient_Stem_File_20180201.csv")
=======
ingredient_stem_file <- fread("~/formulary/src/Ingredient_Stem_File_master.csv")
>>>>>>> folder_reorg



# Unit of Presentation

<<<<<<< HEAD
packaging_file <- fread("Julie/Units of Presentation 20180205.csv", data.table = TRUE)
=======
packaging_file <- fread("~/formulary/src/Units_of_Presentation_master.csv", data.table = TRUE) %>% filter(!is.na(drug_code))
>>>>>>> folder_reorg

# Combination Products

# combination_products_file <- fread("Julie/combination_products_20170906.csv", 
#                                    colClasses = c("integer", 
#                                                   "character",
#                                                   "character",
#                                                   "character",
#                                                   "character"),
#                                    encoding = "Latin-1") %>% 
#   as.tibble() %>%                            
#   select_all(tolower) 

#library(readxl)
#combination_products_file <- read_excel("Julie/Combination Products 20171004.xlsx") %>%

<<<<<<< HEAD
 combination_products_file <- fread("Julie/Combination Products 20180205.csv",
=======
 combination_products_file <- fread("~/formulary/src/Combination Products_master.csv",
>>>>>>> folder_reorg
                                    colClasses = c("integer", 
                                                  "character",
                                                  "character",
                                                  "character",
                                                  "character"),
                                    encoding = "Latin-1") %>%
                              as_tibble() %>%
                              dplyr::rename_all("tolower") %>%
                              mutate(drug_code = as.integer(drug_code)) %>%
                              filter(!is.na(drug_code))
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
  select(drug_code, 
         current_status_date = history_date,
         current_status = status, 
         expiration_date)

# Save this intermediate
dpd_human_ccdd_products <- drug %>%
  filter(class == "Human") %>%
  left_join(dpd_first_market_date) %>%
  left_join(dpd_current_status) %>%
<<<<<<< HEAD
=======
  collect() %>%
>>>>>>> folder_reorg
  filter(current_status == "MARKETED"  |
           (current_status == "DORMANT" & current_status_date > ccdd_start_date)|
           current_status == "CANCELLED POST MARKET" & current_status_date > ccdd_start_date|
# Needs to be coerced to dates
                      current_status == "CANCELLED POST MARKET" & lubridate::dmy(expiration_date) > lubridate::ymd(ccdd_start_date)|
#temporary fudge for previously published DINs
                      drug_identification_number %in% c("00313580", "00578487", "00870943", "02245686", "02248454", "02240341", "02312530", "02312549",
                                                         "02316544", "02324326", "02324334", "00636533", "00519367", "02229760", "02229761"))

# Taking only the ingredients that are used in the ccdd products.
# Left-join Ingredient_stem file when available. 
dpd_ccdd_ingredient_names <- ing %>%
  semi_join(dpd_human_ccdd_products, copy = TRUE) %>%
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
ntp_dosage_form_map <- collect(ccdd_ntp_dosage_forms)

# For each combo of pharmaceutical form and route of administration, 
# create some basic summary statistics
# Bryce : Need to capture this intermediate and send to Julie
# The filter restricts the combinations to only those products 
# with ingredients flagged in the ingredient stem table 

#This is an intermdediate (QA) file
dpd_ccdd_form_route_combinations_products <- dpd_human_ccdd_products %>%
  {copy_to(dpd, ., temporary = TRUE, overwrite = TRUE)} %>%
  left_join(ing) %>% 
  select(extract, drug_code, dpd_ingredient = ingredient) %>% 
  left_join(form) %>% 
  left_join(route) %>% 
  collect() %>%
  left_join(dpd_ccdd_ingredient_names) %>% 
  arrange(route_of_administration, pharmaceutical_form, ing_stem) %>%
  group_by(drug_code) %>%
  summarize(all_ccdd = all(ccdd == "Y"),
            any_ccdd = any(ccdd == "Y"),
            tm_formal_name = unique(ing_stem) %>% paste(collapse = " and "),
            route_of_administration_code = unique(route_of_administration_code) %>% 
             paste(collapse = "|"),
            route_of_administration = unique(route_of_administration) %>%
              paste(collapse = ", "),
            route_of_administration_f = unique(route_of_administration_f) %>%
              paste(collapse = ", "),
            pharm_form_code = as.character(pharm_form_code) %>% unique() %>%
              paste(collapse = "|"),
            pharmaceutical_form = unique(pharmaceutical_form) %>%
             paste(collapse = ", "),
            pharmaceutical_form_f = unique(pharmaceutical_form_f) %>%
              paste(collapse = ", ")) %>%
  left_join(drug %>% select(extract, drug_code), copy = TRUE)

dpd_ccdd_form_route_combinations_summary <- dpd_ccdd_form_route_combinations_products %>%
                                      group_by(route_of_administration_code, pharm_form_code) %>%
                                      summarize(route_of_administration = first(route_of_administration),
                                                pharmaceutical_form = first(pharmaceutical_form),
                                                n_human_din = n_distinct(drug_code),
                                                n_any_ccdd = sum(any_ccdd, na.rm = TRUE),
                                                n_all_ccdd = sum(all_ccdd, na.rm = TRUE),
                                                n_tm = n_distinct(tm_formal_name)) %>%
                                      full_join(ntp_dosage_form_map %>% 
                                                  mutate(route_of_administration_code = str_replace_all(route_of_administration_code, "-", "\\|"),
                                                         pharm_form_code = str_replace_all(pharm_form_code, "-", "\\|"))) %>%
                                      select(-audit_id, -validated, -validated_by, -date_validated, -ntp_dosage_form_id)

# Rows from the dpd_ccdd combos that are not in the ntp_dosage_form_route_map
# This file should be empty

# This is a QA file
missing_form_routes <- filter(dpd_ccdd_form_route_combinations_summary, is.na(ntp_dosage_form), n_all_ccdd > 0)


# The table used for string manipulation of INGREDIENT and strength/dosage values.
# TODO (bclaught): Cleaner handling of top 250 corrections. Manual overrides
#                  should not happen.

# 

ccdd_drug_ingredients_raw <- ing %>%
                             semi_join(dpd_human_ccdd_products, copy = TRUE) %>%
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
         ntp_ingredient_name = ifelse(str_detect(ntp_ingredient_name, "^vitamin"),
                                      str_replace_all(ntp_ingredient_name, regex("(?<=vitamin )([abcdek])"), toupper),
                                      ntp_ingredient_name),
    mp_ingredient_name = ifelse(
      ing_stem != dpd_ingredient,
      sprintf("%s %s", dpd_ingredient %>% tolower(),
              strength_w_unit_w_dosage_if_exists %>% tolower() %>% str_replace_all("ml", "mL")),
      sprintf("%s %s", ing_stem %>% tolower(),
              strength_w_unit_w_dosage_if_exists %>% tolower() %>% str_replace_all("ml", "mL"))),
    mp_ingredient_name = ifelse(str_detect(mp_ingredient_name, "^vitamin"),
                                str_replace_all(mp_ingredient_name, regex("(?<=vitamin )([abcdek])"), toupper),
                                mp_ingredient_name))

# This is an important intermediate
ccdd_packaging_raw <- packaging_file %>%
                      mutate(uop_suffix = ifelse(uop_size_insert == "Y", 
                                                 paste(uop_size,
                                                       uop_unit_of_measure,
                                                       unit_of_presentation),
                                                 NA),
                             uop_suffix = ifelse(uop_size_insert == "N", 
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
                       group_by(drug_code, unit_of_presentation, uop_size, uop_unit_of_measure, uop_suffix, calculation, uop_size_insert) %>%
                       summarize(ntp_ing_formal_name_uop = paste(ntp_ingredient_name, collapse = " and "),
                                 mp_ing_formal_name_uop = paste(mp_ingredient_name, collapse = " and "))

# This is an important intermediate
ccdd_ingredient_set_source <- ccdd_drug_ingredients_raw %>%
                              arrange(ing_stem) %>%
                              group_by(drug_code) %>%
                              summarize(ccdd = all(ccdd == "Y"),
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
                         current_status_date,
                         ai_group_no,
                         first_market_date,
                         current_status,
                         expiration_date) %>%
                       left_join(comp %>% select(extract,
                                                 drug_code,
                                                 company_code,
                                                 company_name), copy = TRUE) %>%
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
                greater_than_5_AIs = as.numeric(n_ing) > 5) %>%
  mutate_if(is.Date, format, "%Y%m%d")

# ccdd_mp_source_raw <- ccdd_mp_source_raw %>%
#                       mutate(mp_formal_name = ifelse(drug_code %in% combination_products_map$drug_code,
#                                                      combination_products_map[combination_products_map$drug_code == drug_code]$mp_formal_name,
#                                                      mp_formal_name))
# Inject manual overrides here for MP names, Combination Products, Medical Devies, PseudoDINs, NHPS, etc.)

# This is an important intermediate
ccdd_mp_source <- ccdd_mp_source_raw %>% 
  left_join(ccdd_tm_reg %>% select(tm_formal_name, tm_code), copy = TRUE) %>%
  # mutate(ccdd = ifelse(!is.na(tm_code), 
  #                      TRUE,
  #                      FALSE)) %>%
  left_join(combination_products_file %>%  
              rename(combo_mp_formal_name = mp_formal_name,
                     combo_ntp_formal_name = ntp_formal_name)) %>%
  mutate(mp_formal_name = if_else(is.na(combo_mp_formal_name),
                                  mp_formal_name,
                                  combo_mp_formal_name),
         ntp_formal_name = if_else(is.na(combo_ntp_formal_name),
                                   ntp_formal_name,
                                   combo_ntp_formal_name),
         mp_status_effective_time = if_else(current_status == "MARKETED", 
                                            first_market_date,
                                            current_status_date),
         mp_status = case_when(current_status == "MARKETED" ~ "Active",
                               current_status == "CANCELLED POST MARKET" & lubridate::dmy(expiration_date) > lubridate::ymd(dpdextractdate) ~ "Active",
                               TRUE ~ "Inactive")) %T>%
         {ccdd_pseudodins <<- group_by(., drug_identification_number) %>% 
                         filter(n() > 1) %>%
                         ungroup() %>%
                         distinct(., drug_code, mp_formal_name, drug_identification_number, mp_formal_name, tm_code, ccdd) %>%
<<<<<<< HEAD
                         left_join(mp_full_release_20180123 %>% select(mp_code, mp_formal_name)) %>%
                         mutate(mp_code = if_else(is.na(mp_code), 1:n() + 700521, as.numeric(mp_code))) %>%
=======
                         left_join(ccdd_pseudodins_reg %>% select(mp_code, mp_formal_name), copy = TRUE) %>%
         
         #                mutate(mp_code = if_else(is.na(mp_code), 1:n() + 700521, as.numeric(mp_code))) %>%
>>>>>>> folder_reorg
           select(mp_code, drug_code, drug_identification_number, mp_formal_name, tm_code, ccdd) %>%
           as.data.table() %>%
           setkey(mp_formal_name)} %>%
           group_by(mp_formal_name) %T>%
           {mp_names_with_descriptor <<- filter(., n() > 1) %>%
                                         ungroup() %>%
                                         mutate(mp_formal_name = str_replace(mp_formal_name, brand_name, str_trim(paste(brand_name, descriptor, sep = " "))))} %>%
           filter(n() == 1) %>%
           ungroup() %>%
           bind_rows(mp_names_with_descriptor)
          
  

ccdd_pseudodins_top250 <- ccdd_pseudodins %>%
                          filter(ccdd == TRUE) %>%
                          select(-ccdd) %>% as.data.frame()
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
#ccdd_mp_table2 <- ccdd_mp_source_filter %>%
    mutate(
         mp_en_description = NA,
         mp_fr_description = NA,
         mp_formal_name = ifelse(is.na(combo_mp_formal_name),
                                 mp_formal_name,
                                 combo_mp_formal_name)
         ) %>%
  select(ccdd,
         greater_than_5_AIs,
         drug_identification_number,
         brand_name,
         company_name,
         mp_formal_name,
         mp_en_description,
         mp_fr_description,
         mp_status, 
         mp_status_effective_time) %>%
  left_join(select(ccdd_pseudodins_top250, mp_formal_name, mp_code)) %>%
  mutate(mp_code = as.character(mp_code),
    mp_code = if_else(is.na(mp_code), drug_identification_number, mp_code)) %>%
  distinct() %>%
  select(ccdd, mp_code, everything())
  
  
 
# Contains the necessary ingredients to create the name for ntps
# This is a final output file
ccdd_ntp_table <- ccdd_mp_source %>%
#ccdd_ntp_table2 <- ccdd_mp_source_filter %>%
    group_by(ntp_formal_name) %>%
  dplyr::summarize(ccdd = any(ccdd),
                   n_mp = n_distinct(drug_identification_number),
                   greater_than_5_AIs = any(greater_than_5_AIs),
                   #din_list = DRUG_IDENTIFICATION_NUMBER %>% unique() %>% paste(collapse = "!"),
                   ntp_status = if_else(all(mp_status == "Inactive"), "Inactive", "Active"),
                   ntp_status_effective_time = if_else(ntp_status == "Inactive", 
                                                       max(mp_status_effective_time),
                                                       min(first_market_date)),
                   ntp_type = first(ntp_type)) %>%
  ungroup() %>%
  arrange(desc(ccdd), ntp_status_effective_time) %>%
  left_join(ccdd_ntp_reg %>% select(ntp_formal_name, ntp_code), copy = TRUE) %>%
#   {start_code <- max(.$ntp_code, na.rm = TRUE)
#   new_ntp_concepts <<- filter(., is.na(ntp_code)) %>%
#     mutate(ntp_code = 1:n() + start_code)} %>%
#   filter(!is.na(ntp_code)) %>%
#   bind_rows(new_ntp_concepts) %>%
  mutate(ntp_en_description = NA,
         ntp_fr_description = NA) %>%
  select(ccdd,
         greater_than_5_AIs,
         ntp_code, 
         ntp_en_description, 
         ntp_fr_description, 
         ntp_status,
         ntp_status_effective_time,
         ntp_type,
         everything())

#db_insert_into(ccdd$con, table = "ntp_table", new_ntp_concepts)
# copy_to(ccdd, ccdd_ntp_table, "ntp_table", temporary = FALSE)



# Contains the necessary ingredients to create a therapeutic moiety table.
# TODO (bclaught): There is an issue with NAs appearing in the tm set.
# This is a final output file
ccdd_tm_table <- ccdd_mp_source %>%
#ccdd_tm_table2 <- ccdd_mp_source_filter %>%
    group_by(tm_formal_name) %>%
  dplyr::summarize(ccdd = any(ccdd == TRUE),
                   greater_than_5_AIs = any(greater_than_5_AIs),
                   n_dins = n_distinct(drug_identification_number),
                   n_ntps = n_distinct(ntp_dosage_form), #this isn't an accurate count 
                   tm_status = if_else(all(mp_status == "Inactive"), "Inactive", "Active"),
                   tm_status_effective_time = if_else(tm_status == "Inactive", 
                                                      max(mp_status_effective_time),
                                                      min(first_market_date))) %>%
  ungroup() %>%
  arrange(desc(ccdd), tm_status_effective_time) %>%
  left_join(ccdd_tm_reg, copy = TRUE) %>%
#  {start_code <- max(.$tm_code, na.rm = TRUE)
#    new_tm_concepts <<- filter(., is.na(tm_code)) %>%
#    mutate(tm_code = 1:n() + start_code)} %>%
#  filter(!is.na(tm_code)) %>%
#  bind_rows(new_tm_concepts) %>%
  select(ccdd, tm_code, everything())


# Mapping table between TM and NTP
# This is a final output file
ccdd_mapping_table <- ccdd_mp_source %>%
#ccdd_mapping_table2 <- ccdd_mp_source_filter %>%  
                 select(-tm_code) %>%
                 left_join(ccdd_tm_table %>% select(tm_code, tm_formal_name)) %>%
                 left_join(ccdd_ntp_table %>% select(ntp_code, ntp_formal_name)) %>%
                 left_join(ccdd_mp_table %>% select(mp_code, mp_formal_name)) %>%
  select(ccdd,
         tm_code,
         tm_formal_name,
         ntp_code,
         ntp_formal_name, 
         mp_code, 
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
ccdd_mp_table_release <- ccdd_mp_table %>%
<<<<<<< HEAD
    filter(ccdd == TRUE, greater_than_5_AIs == FALSE) %>% 
=======
    filter(ccdd == TRUE, greater_than_5_AIs == FALSE) %>%
    mutate(mp_type = if_else(str_detect(mp_code, "^7"), "CCDD", "DIN")) %>%
>>>>>>> folder_reorg
  #ccdd_mp_table_release2 <- ccdd_mp_table2 %>%
  select(mp_code, 
         mp_formal_name, 
         mp_en_description, 
         mp_fr_description, 
         mp_status, 
<<<<<<< HEAD
         mp_status_effective_time) %>% mutate_all(as.character)
=======
         mp_status_effective_time,
         mp_type,
         Health_Canada_identifier = drug_identification_number,
         Health_Canada_product_name = brand_name) %>% mutate_all(as.character)
>>>>>>> folder_reorg

ccdd_tm_table_release <- ccdd_tm_table %>%
    filter(ccdd == TRUE, greater_than_5_AIs == FALSE) %>% 
  #ccdd_tm_table_release2 <- ccdd_tm_table2 %>%
  select(-ccdd, -n_dins, - n_ntps, -audit_id, -greater_than_5_AIs) %>% mutate_all(as.character)

ccdd_ntp_table_release <- ccdd_ntp_table %>%
    filter(ccdd == TRUE, greater_than_5_AIs == FALSE) %>% 
  #ccdd_ntp_table_release2 <- ccdd_ntp_table2 %>%
    select(-ccdd, -n_mp, -greater_than_5_AIs) %>% mutate_all(as.character)

mp_ntp_tm_relationship_release <- ccdd_mapping_table %>%
#mp_ntp_tm_relationship_release2 <- ccdd_mapping_table2 %>%
    filter(ccdd == TRUE) %>% 
  select(-ccdd) %>% mutate_all(as.character)


# Special Groupings


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
  "combination_products_file",
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
  filename <- paste(x, "20180215.csv", sep = "_")
  write.csv(get(x), file = paste0("../releases/20180215/", filename), row.names = FALSE)
}

