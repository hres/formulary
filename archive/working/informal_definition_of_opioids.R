# Informal definition of opioids

narcotic_ingredients <- dpd_schedule_all %>% 
                          dplyr::filter(extract == "active", SCHEDULE == "Narcotic (CDSA I)") %>%
                          left_join(dpd_ingred_all) %>%
                          group_by(ACTIVE_INGREDIENT_CODE) %>%
                          dplyr::summarize(salts = paste(unique(INGREDIENT), collapse = ", "),
                                    n = n_distinct(DRUG_CODE)) %>%
                          arrange(desc(n))
                          

atc_opioids <- dpd_ther_all %>%
                dplyr::filter(extract == "active", str_detect(TC_ATC_NUMBER, regex("(N01AH)|(N02A)"))) %>%
  left_join(dpd_ingred_all) %>%
  group_by(ACTIVE_INGREDIENT_CODE) %>%
  dplyr::summarize(salts = paste(unique(INGREDIENT), collapse = ", "),
                   n = n_distinct(DRUG_CODE)) %>%
  arrange(desc(n))

working_opioids <- c("buprenorphine",
                     "codeine",
                     "fentanyl",
                     "hydrocodone",
                     "hydromorphone",
                     "meperidine",
                     "methadone",
                     "morphine",
                     "oxycodone",
                     "pentazocine",
                     "tapentadol",
                     "tramadol")

cv_product_dictionary3 <- cv_drug_product_ingredients %>%
                            distinct(DRUGNAME, ACTIVE_INGREDIENT_NAME) %>%
                            collect(n = Inf) %>%
                            filter(or(ain(DRUGNAME, toupper(working_opioids), method = "jw", maxDist = 0.125),
                                   ain(ACTIVE_INGREDIENT_NAME, working_opioids, method = "jw", maxDist = 0.125)))

hcopen_pool <- dbPool(drv = "PostgreSQL",
                      host = "shiny.hc.local",
                      dbname = "hcopen",
                      user = "hcreader",
                      password = "canada1")
hcopen <- src_pool(hcopen_pool)
cv_meddra_pt_map <- tbl(hcopen, "cv_meddra_pt_map")
cv_reports <- tbl(hcopen, "cv_reports_20160630")
cv_drug_product_ingredients <-  tbl(hcopen, "cv_drug_product_ingredients_20160930")

cv_product_dictionary <- cv_drug_product_ingredients %>%
  distinct(DRUGNAME, ACTIVE_INGREDIENT_NAME) %>%
  collect(n = Inf)

cv_brands <- cv_product_dictionary %>% distinct(DRUGNAME)
dpd_brands <- dpd_drug_all %>% distinct(BRAND_NAME)
dpd_matrix200 <- stringdistmatrix(arrange(dpd_brands, BRAND_NAME)$BRAND_NAME[1:200], method = "jw", p = 0.1, useNames = "strings")
dpd_clust <- hclust(dpd_matrix200)
dpd_cut <- cutree(dpd_clust, h = 0.1)

cv_dist <- stringdistmatrix(cv_brands$DRUGNAME, method = "qgram", q = 3, useNames = "strings")


