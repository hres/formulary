d1 <- dpd_human_ccdd_products %>%
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
  left_join(form %>% select(extract,
                            drug_code,
                            pharmaceutical_form)) %>%
  left_join(route %>% select(extract,
                             drug_code,
                             route_of_administration)) %>%
  collect() %>%
  left_join(ntp_dosage_form_map) %>%

d2 <- select(dpd_human_ccdd_products, extract, drug_code) %>%
      left_join(form) %>%
      left_join(route) %>%
      collect() %>%
      left_join(ntp_dosage_form_map) %>%
      group_by(extract, drug_code, ntp_dosage_form) %>%
      summarize(routes = paste(unique(route_of_administration), collapse = ", "),
                forms = paste(unique(pharmaceutical_form), collapse = ", "))




library(elastic)
library(dplyr)
library(dbplyr)
library(jsonlite)
library(tidyjson)
library(dtplyr)
library(data.table)


get_drug_json <- function(drug_code) {
  drug_row <- filter(drug, DRUG_CODE = drug_code)
  ingred_rows <- filter(ingred, DRUG_CODE = drug_code)
  comp_row <- filter(comp, DRUG_CODE = drug_code)
}

cv <- src_postgres(dbname = "cv",
                   host = "rest.hc.local",
                   port = 5432,
                   user = "dbuijs",
                   password = "carlito27",
                   options = "-c search_path=cv_20170331"
)

cv_reports <- tbl(cv, "cv_reports")
cv_json_report <- tbl(cv, "cv_json_report")


dpd <- src_postgres(dbname = "dpd",
                    host = "rest.hc.local",
                    port = 5432,
                    user = "dbuijs",
                    password = "carlito27",
                    options = "-c search_path=dpd_20170704"
)

dpd_json <- tbl(dpd, "dpd_json")

library(elastic)
library(magrittr)
library(pbapply)
library(lubridate)

dpd_elastic <- dpd_json %>% filter(extract == "active") %>% collect()
dpd_elastic_test <- dpd_elastic[1:100, ] %>% mutate(index = docs_create("dpd_active_20170704",
                                                                        "drug_product",
                                                                        drug_code,
                                                                        drug_product))
pbsapply(1:nrow(dpd_elastic), function(x) docs_create("dpd_active_20170704", "drug_product", dpd_elastic$drug_code[x], dpd_elastic$drug_product[x]))



r <- cv_json_report %>% select(report_id) %>% collect()

for(i in r$report_id) {blob <- cv_json_report %>% filter(report_id == i)
docs_create("cv_20170331", 
            "report", 
            blob$report_id, 
            blob$cv_report)}


connect(es_host = "elastic-gate.hc.local", es_port = 80)
