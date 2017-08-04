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

# Check for database connections. The connection credentials are provided by environment variables (not included in git repo)
# Important for updating CCDD but not necessary for the first generation
dpd <- src_postgres(dbname = "dpd",
                    host = "rest.hc.local",
                    port = 5432,
                    user = Sys.getenv("rest_user"),
                    password = Sys.getenv("rest_password"),
                    options = "-c search_path=dpd_20170704")

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


# This is a hard-coded value to ensure all the subsequent date math is absolute and not relative.

ccdd_start_date <- "2017-07-04"

# Get raw data. 
# Get DPD extract data. set manually here
# Will be updated with extract date by DPDimport.R
dpdextractdate <- "2017-07-04"

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
  mutate(hydrate = str_detect(dpd_ingredient, regex("hydrate", ignore_case = TRUE)),
         hydrate = ifelse(dpd_ingredient == "CHLORAL HYDRATE", FALSE, hydrate))

dpd_ccdd_ingredients <- dpd_ccdd_ingredient_names %>%
  group_by(active_ingredient_code) %>%
  summarize(n_names = n_distinct(dpd_ingredient),
            str_units = paste(sort(unique(strength_unit)), collapse = ", "),
            dosage_units = paste(sort(unique(dosage_unit)), collapse = ", "),
            basis_of_strength_ing = sort(unique(dpd_ingredient))[1] %>% 
              str_replace(regex("(\\(.*\\)$)+?"), "") %>% 
              str_trim(),
         precise_ing = sort(unique(dpd_ingredient)) %>% 
           str_extract(regex("(?<=\\()(.*)(?=\\))")) %>% 
           na.omit(.) %>% 
           paste(collapse = ", ")) %>%
  mutate(precise_ing = ifelse(precise_ing == "", 
                              basis_of_strength_ing, precise_ing))

dpd_ccdd_ingredient_names <- left_join(dpd_ccdd_ingredient_names, dpd_ccdd_ingredients)

# Ingredient stems
# For now import manual table, to be maintained in the CCDD database in the future.
# This line renames columns to facilitate a join, and excludes the comments column

ingredient_stem <- fread("Ingredient Stem v2.csv") %>%
                   select(ccdd = `CCDD Flag`,
                          top250name = `Top 250 Ingred - no multiples`,
                          dpd_ingredient = `DPD Medicinal Ingredient (E)`,
                          ing_stem = `Ingredient Stem`)

dpd_ccdd_ingredient_names <- left_join(dpd_ccdd_ingredient_names, ingredient_stem)

# Creates a mapping for each combination of route admin and 
# pharmaceutical form for ntp. Arbritary mapping generated by
# Infoway Expert advisor group intended to make legacy DPD routes
# and forms consistent with eventual IDMP administrable dose forms.
# This version of the file has the form and route columns mixed up

ntp_dosage_form_map <- fread("NTP Dosage Form Transform.txt") %>% 
                select(route_of_administration = `DPD PHARMACEUTICAL_FORM`, 
                       pharmaceutical_form = `DPD_ROUTE_OF_ADMINISTRATION`,
                       everything())


# For each combo of pharmaceutical form and route of administration, 
# create some basic summary statistics
# Bryce : Need to capture this intermediate and send to Julie

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
# Temporary to accomodate limited production releease and top 250. Full release
# should cover all dosage forms and route of admin in DPD.
# Bryce: Need to split this into two intermediate tables and save
# Bryce: Need to count both DPD dosage form + route combo and Mapping table combos and reconcile
dpd_form_route_map <- bind_rows(right_join(dpd_form_route, ntp_dose_form_map),
                                left_join(dpd_form_route, ntp_dose_form_map_simple)) %>%
  filter(!is.na(ntp_dose_form))

# Do not include the following in the dosage units:
# %, BLISTER, CAP, DOSE, ECC, ECT, KIT, LOZ, NIL, PATCH, SLT, SRC, SRD, SRT, SUP, SYR, TAB, V/V, W/V, W/W
unit.dosage.unapproved <- c('', '%', 'BLISTER', 'CAP', 'DOSE', 'ECC', 'ECT',
                            'KIT', 'LOZ', 'NIL', 'PATCH', 'SLT', 'SRC', 
                            'SRD', 'SRT', 'SUP', 'SYR', 'TAB', 'V/V', 'W/V', 'W/W')

# The table used for string manipulation of INGREDIENT and strength/dosage values.
# TODO (bclaught): Cleaner handling of top 250 corrections. Manual overrides
#                  should not happen.
dpd_active_ingredients <- dpd_human_active_ingredients %>%
  mutate(INGREDIENT = toupper(INGREDIENT),
         DOSAGE_UNIT = ifelse(DOSAGE_UNIT == "ACT", "ACTUATION", DOSAGE_UNIT)) %>%
  group_by(ACTIVE_INGREDIENT_CODE, INGREDIENT) %>%
  # the regex is incorrect because they have no exception. some entries do not 
  # have precise ingredients inside brackets (even though they should)
  mutate(basis_of_strength_ing = sort(unique(INGREDIENT))[1] %>% 
           str_replace(regex("(\\(.*\\)$)+?"), "") %>% 
           str_trim(),
         precise_ing = sort(unique(INGREDIENT)) %>% 
           str_extract(regex("(?<=\\()(.*)(?=\\))")) %>% 
           na.omit(.) %>% 
           paste(collapse = "|")) %>%
  mutate(precise_ing = ifelse(precise_ing == "", 
                              basis_of_strength_ing, precise_ing)) %T>%
                              {pre_AM <<- distinct(., DRUG_CODE) %>% nrow()} %>%
  # Top 250 Corrections -------------------------------------------------------
  left_join(mapping_for_top_250_NA %>% select(c(precise_ing = dpd_values, 
                                                precise_ing_NAME_CHANGE))) %>%
  mutate(precise_ing_US = ifelse(precise_ing_NAME_CHANGE != "" & 
                                   !is.na(precise_ing_NAME_CHANGE),
                                 precise_ing_NAME_CHANGE, precise_ing)) %>%
  left_join(us_spl_ai %>% select(c(precise_ing_US = precise_ing, 
                                   `AI UNII`, `AM UNII`, `Active Moiety`))) %>%
  left_join(mapping_for_top_250_NA %>% 
              select(c(`Active Moiety` = fda_map, tm_set_map))) %>%
  mutate(`Active Moiety` = ifelse(tm_set_map != "DO NOT SHARE DRUG CODE" & 
                                    tm_set_map != "" & 
                                    !is.na(tm_set_map),
                                  tm_set_map, `Active Moiety`),
         
         `Active Moiety` = ifelse(precise_ing == "ACYCLOVIR" | 
                                    precise_ing == "ACYCLOVIR SODIUM",
                                  "ACYCLOVIR",
                                  `Active Moiety`)) %>%
  # End of Top 250 Corrections ------------------------------------------------
  mutate(STRENGTH = sprintf("%15.9g", as.numeric(STRENGTH)) %>% str_trim(),
         DOSAGE_VALUE = ifelse(DOSAGE_VALUE != "",
                               sprintf("%15.9g", as.numeric(DOSAGE_VALUE)),
                               "") %>% str_trim()) %>%
  mutate(strength_w_unit_w_dosage_if_exists = paste0(STRENGTH, " ",
                                                     STRENGTH_UNIT, 
                                                     ifelse(!(DOSAGE_UNIT %in% unit.dosage.unapproved), 
                                                            paste0(" per ",
                                                                   ifelse(DOSAGE_VALUE != "",
                                                                          paste0(DOSAGE_VALUE," ", DOSAGE_UNIT),
                                                                          DOSAGE_UNIT),
                                                                   ""),
                                                            "")) %>% str_trim()) %>%
  select(c(DRUG_CODE, precise_ing, basis_of_strength_ing, ACTIVE_INGREDIENT_CODE,
           ai_unii = `AI UNII`, am_unii = `AM UNII`, tm = `Active Moiety`,
           STRENGTH, STRENGTH_UNIT, DOSAGE_VALUE, DOSAGE_UNIT,
           strength_w_unit_w_dosage_if_exists)) %>%
  ungroup() %>%
  mutate(
    mp_name = ifelse(
      basis_of_strength_ing != precise_ing,
      sprintf("%s (%s) %s", basis_of_strength_ing %>% tolower(),
                            precise_ing %>% tolower(),
                            strength_w_unit_w_dosage_if_exists %>% tolower() %>% str_replace_all("ml", "mL")),
      sprintf("%s %s", basis_of_strength_ing %>% tolower(),
                       strength_w_unit_w_dosage_if_exists %>% tolower() %>% str_replace_all("ml", "mL")))) %>%
  distinct()


# Provides useful summary statistics for each drug code in active human drugs.
substance_sets <- dpd_active_ingredients %>%
  arrange(precise_ing, basis_of_strength_ing, STRENGTH) %>%
  group_by(DRUG_CODE) %>%
  dplyr::summarize(
    sub_set = precise_ing %>% unique() %>% paste(collapse = "!"),
    bos_set = basis_of_strength_ing %>% unique() %>% paste(collapse = "!"),
    tm_set  = tm %>% unique() %>% paste(collapse = "!"),
    sub_str_dosage_set = mp_name %>% unique() %>% str_extract("\\d.*") %>% paste(collapse = "!"),
    mp_table_set = mp_name %>% unique() %>% paste(collapse = " and "),
    ai_unii_set = ai_unii %>% unique() %>% paste(collapse = "!"),
    am_unii_set = am_unii %>% unique() %>% paste(collapse = "!"))


# The products table contains product information for every drug code.
products <- dpd_human_active %>%
  select(c(DRUG_CODE, DRUG_IDENTIFICATION_NUMBER, extract, LAST_UPDATE_DATE, BRAND_NAME, NUMBER_OF_AIS)) %>%
  left_join(dpd_comp_all %>% select(c(DRUG_CODE, COMPANY_NAME, COMPANY_CODE))) %>%
  left_join(dpd_route_all) %>%
  left_join(dpd_form_all) %>%
  left_join(dpd_ther_all) %>%
  mutate(dpd_route_admin = ROUTE_OF_ADMINISTRATION,
         dpd_pharm_form  = PHARMACEUTICAL_FORM) %>%
  select(-c(ROUTE_OF_ADMINISTRATION, PHARMACEUTICAL_FORM)) %>%
  # Need to do two mappings because some transforms are based on just the doseforma and others are based on both doseform and route.
  # Inelegant and should be fixed.
  left_join(ntp_dose_form_map) %>%
  left_join(ntp_dose_form_map_simple, by = "dpd_pharm_form") %>%
  mutate(ntp_dose_form = ifelse(is.na(ntp_dose_form.x), ntp_dose_form.y, ntp_dose_form.x)) %>%
  select(-c(ntp_dose_form.x, ntp_dose_form.y)) %>%
  filter(!is.na(ntp_dose_form))

# mp_source exists as the ultimate substance and product table.
# mp, ntp, and tm can trace their roots back to this table.
mp_source <- left_join(products, substance_sets) %>%
  mutate(product_status_effective_time = LAST_UPDATE_DATE %>%
           parse_date_time("dmy") %>%
           as.Date %>%
           str_replace_all("-", ""),
         product_status = extract)

# Contains the necessary ingredients to create the name for manufactured products.
mp_table <- mp_source %>% 
  select(c(DRUG_IDENTIFICATION_NUMBER, product_status, product_status_effective_time, 
           BRAND_NAME, COMPANY_NAME, ntp_dose_form, mp_table_set, tm_set)) %>%
  mutate(formal_description_mp = sprintf("%s [%s %s] %s",
                                         BRAND_NAME,
                                         mp_table_set,
                                         ntp_dose_form,
                                         COMPANY_NAME),
         en_display = NA,
         fr_display = NA) %>%
  distinct()

# Contains the necessary ingredients to create the name for ntps
ntp_table <- mp_source %>%
  group_by(DRUG_CODE, sub_str_dosage_set, ntp_dose_form) %>%
  dplyr::summarize(n_dins = n_distinct(DRUG_IDENTIFICATION_NUMBER),
                   #din_list = DRUG_IDENTIFICATION_NUMBER %>% unique() %>% paste(collapse = "!"),
                   formal_description_ntp = paste(mp_table_set, ntp_dose_form),
                   status = ifelse(product_status != "active", "inactive", "active"),
                   greater_than_5_AIs = NUMBER_OF_AIS > 5,
                   ntp_status_effective_time = first(sort(product_status_effective_time))) %>%
  transform(ntp_code = as.numeric(interaction(formal_description_ntp, drop=TRUE)) + 9000000) %>%
  distinct() %>%
  mutate(en_display = NA,
         fr_display = NA)

ntp_AM <- nrow(ntp_table %>% distinct(DRUG_CODE))

# Contains the necessary ingredients to create a therapeutic moiety table.
# TODO (bclaught): There is an issue with NAs appearing in the tm set.
tm_table <- mp_source %>%
  group_by(tm_set) %>%
  dplyr::summarize(n_dins = n_distinct(DRUG_IDENTIFICATION_NUMBER),
                   n_ntps = n_distinct(ntp_dose_form),
                   status = ifelse(product_status != "active", "inactive", "active"),
                   tm_status_effective_time = first(sort(product_status_effective_time))) %>%
  distinct() %>%
  transform(tm_code = as.numeric(interaction(tm_set, drop=TRUE)) + 8000000) %>%
  filter(!(tm_set %like% "\\!NA\\!")) %>% filter(!endsWith(tm_set, "!NA")) %>% filter(!startsWith(tm_set, "NA!")) %>% filter(tm_set != "NA") %>%
  mutate(formal_description_tm = str_replace_all(tm_set, "!", " and ") %>% tolower(),
         en_display = NA,
         fr_display = NA)

# Mapping table between TM and NTP
mapping_table <- mp_source %>%
  left_join(tm_table %>% select(c(tm_set, status, tm_code, formal_description_tm)), by = c("tm_set")) %>%
  mutate(formal_description_ntp = paste(mp_table_set, ntp_dose_form) %>% tolower() %>% str_replace_all(" ml ", " mL ") %>% str_trim()) %>%
  left_join(ntp_table %>% select(c(DRUG_CODE, formal_description_ntp, ntp_code)), by = c("formal_description_ntp", "DRUG_CODE")) %>%
  filter(!(tm_set %like% "\\!NA\\!")) %>% filter(!endsWith(tm_set, "!NA")) %>% filter(!startsWith(tm_set, "NA!")) %>% filter(tm_set != "NA") %>%
  left_join(mp_table) %>%
  select(c(mp_code = DRUG_IDENTIFICATION_NUMBER, formal_description_mp, ntp_dose_form, formal_description_ntp, ntp_code, tm_set, formal_description_tm, tm_code)) %>% distinct()

# mp_ntp_relationship_table <- mapping_table %>%
#   select(-c(tm_set, formal_description_tm, tm_code))
# 
# mp_tm_relationship_table <- mapping_table %>%
#   select(-c(ntp_dose_form, formal_description_ntp, ntp_code))

# Top 250 therapeutic moieties in Canada --------------------------------------  

top250 <- tbl(src_postgres("hcref", "shiny.hc.local", user = "hcreader", password = "canada1"), "rx_retail_usage") %>%
  arrange(desc(total)) %>%
  collect() %>%
  dplyr::select(ai_set, total) %>%
  `[`(1:250,) %>%
  as.data.table() %>%
  select(tm_set = ai_set, total)

top250_NAs <- top250 %>% anti_join(tm_table)
top250 <- top250 %>% semi_join(tm_table)

# Summary Tables for the top 250 ----------------------------------------------
# http://www.fda.gov/downloads/ForIndustry/DataStandards/StructuredProductLabeling/UCM362965.zip

mp_table_top250 <- mp_table %>%
  semi_join(top250) %>% 
  select(c(mp_code = DRUG_IDENTIFICATION_NUMBER,
           mp_formal_name = formal_description_mp,
           mp_en_description = en_display,
           mp_fr_description = fr_display,
           mp_status = product_status,
           mp_status_effective_time = product_status_effective_time)) %>% distinct()

tm_table_top250 <- tm_table %>%
  semi_join(top250) %>%
  select(c(tm_code,
           tm_formal_name = formal_description_tm,
           tm_status = status,
           tm_status_effective_time))

ntp_table_top250 <- ntp_table %>%
  left_join(mapping_table) %>%
  semi_join(top250) %>%
  select(c(ntp_code, formal_description_ntp, en_display, fr_display, status, ntp_status_effective_time)) %>%
  group_by(ntp_code, formal_description_ntp, en_display, fr_display, status) %>%
  dplyr::summarize(
    ntp_status_effective_time = sort(ntp_status_effective_time) %>% `[`(1)
  ) %>% ungroup() %>%
  select(c(ntp_code,
           ntp_formal_name = formal_description_ntp,
           ntp_en_description = en_display,
           ntp_fr_description = fr_display,
           ntp_status = status,
           ntp_status_effective_time)) %>%
  mutate(ntp_type = NA) %>% distinct()

mp_ntp_tm_relationship_top250 <- mapping_table %>%
  semi_join(top250) %>%
  select(c(mp_code,
           mp_formal_name = formal_description_mp,
           ntp_code,
           ntp_formal_name = formal_description_ntp,
           tm_code,
           tm_formal_name = formal_description_tm))

# Test Functions --------------------------------------------------------------

expect_that(TRUE    , is_identical_to(nrow(mp_ntp_tm_relationship_top250) == nrow(mp_table_top250)))
expect_that(0       , equals(nrow(mp_ntp_tm_relationship_top250 %>% filter(is.na(ntp_code)))))
expect_that(TRUE    , equals(nrow(top250) == nrow(tm_table_top250)))

# Write to file ---------------------------------------------------------------

table_writer <- function(table, tablename, version = "v11") {
  date <- as.character(Sys.Date()) %>% str_replace_all("-", "")
  directory <- paste0("~/formulary/output/", date, "/")
  filename <- sprintf("%s_%s_%s.txt", tablename, date, version)
  ifelse(!dir.exists(directory), dir.create(directory), FALSE)
  write.table(x = table, file = paste0(directory, filename), row.names = FALSE, sep = "|", fileEncoding = "UTF-8")
}

# Current Version is Version 10 as of 2017-03-13
table_writer(mp_table_top250, "mp_table")
table_writer(ntp_table_top250, "ntp_table")
table_writer(tm_table_top250, "tm_table")
table_writer(mp_ntp_tm_relationship_top250, "mp_ntp_tm_relationship")


