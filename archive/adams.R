library(tidyverse)


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

# Assume "drug" is all DINs with same set of actives and same company code

adams <- drug %>%
          filter(class %in% c("Veterinary", "Human"), extract == "active") %>%
          left_join(comp) %>%
          left_join(schedule) %>%
          collect() %>%
          mutate(ai_prefix = str_extract(ai_group_no, regex("^\\d{7}"))) %>%
          mutate(brand_cluster = paste(ai_prefix, company_code, sep = "_"))

human_active <- filter(adams, class == "Human")

human_rx <- filter(adams, !schedule %in% c("OTC", "Ethical"), class == "Human")

vet_active <- filter(adams, class == "Veterinary")

dpd_numbers <- data.frame(subset = c("Human Marketed", "Human Prescription", "Veterinary"),
                          object = c("human_active", "human_rx", "vet_active"),
                          number_of_dins = c(12032, 8499, 1367),
                          number_of_branded_drugs = c(5454, 3728, 923),
                          number_of_therapeutic_moeities = c(1916, 1312, 564),
                          stringsAsFactors = FALSE) 