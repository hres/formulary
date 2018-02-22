library(stringdist)

ntp_dose_form_map_v3 <- fread("~/formulary/ntp_dose_form_map_V3.csv") %>% 
  mutate(dpd_route_admin = str_extract(`X__1`, regex("(?<=\\().+(?=\\))")) %>%
           toupper()) %>%
  select(dpd_pharm_form = `DPD PHARMACEUTICAL_FORM`, 
         dpd_route_admin, 
         ntp_dose_form  = `NTP Formal Name Dose form`) %>%
  filter(!dpd_pharm_form == "") %T>%
  {ntp_dose_form_map_simple <<- filter(., is.na(dpd_route_admin)) %>% 
    select(dpd_pharm_form, ntp_dose_form)} %>%
  filter(!is.na(dpd_route_admin))


drug_ <- drug %>% 
  filter(class == "Human", extract == "active") %>% 
  collect() %>% 
  mutate(ing_group = str_extract(ai_group_no, "^\\d{7}")) %>%
  left_join(collect(ing) %>% group_by(drug_code) %>% dplyr::summarize(ing_names = sort(ingredient) %>% paste(collapse = ",")))


ing_names <- drug %>%
  filter(class == "Human", extract == "active") %>%
  left_join(ing) %>%
  distinct(active_ingredient_code, ingredient) %>%
  collect() %>%
  group_by(active_ingredient_code) %>%
  dplyr::summarize(boss = sort(unique(toupper(ingredient)))[1],
            all_names = sort(unique(toupper(ingredient))) %>% paste(collapse = ", "),
            n_names = n_distinct(ingredient)) %>%
  arrange(boss)

ing_name_dup <- ing_names %>% group_by(boss) %>% dplyr::summarize(n_codes = n_distinct(active_ingredient_code),
                                                                  ai_codes = paste(active_ingredient_code, collapse = ", ")) %>% 
  filter(n_codes < 1)

ing_dist <- stringdistmatrix(ing_names$boss, method = "jw")
ing_clust <- hclust(ing_dist)
ing_clust_cut <- cutree(ing_clust, h = 0.15)
ing_groups <- data.frame(name = ing_names$boss, group = ing_clust_cut, tm = tm_lookup[amatch(ing_names$boss, tm_lookup$tm_set, method = "jw")]$tm_set) %>% arrange(group)
