schedule_groupings <- ccdd_drug_ingredients_raw %>% 
  left_join(collect(schedule)) %>%
  count(schedule, ing_stem) %>%
  filter(!schedule %in% c("Ethical", 
                          "Prescription",
                          "Homeopathic",
                          "OTC",
                          "Schedule D"))

m2 <- ccdd_mp_source %>% 
  left_join(ccdd_mp_table) %>% 
  left_join(ccdd_ntp_table) %>% 
  left_join(ccdd_tm_table) %>% 
  select(mp_code, 
         formal_description_mp,
         ntp_dose_form = ntp_dosage_form,
         formal_description_ntp,
         ntp_code,
         tm_set,
         formal_description_tm = tm_set,
         tm_code,
         top250 = ccdd,
         DRUG_IDENTIFICAITON_NUMBER = drug_identification_number,
         DRUG_CODE = drug_code,
         dpd_form = pharmaceutical_form,
         dpd_route = route_of_administration,
         extract)
