# February incremental release
# Take only those concepts from the following TMs
# 8001070	 	aclidinium
# 8001071	 	aclidinium and formoterol
# 8001049	 	aminophylline
# 8000930	 	budesonide and formoterol
# 8000982	 	formoterol and mometasone
# 8000851	 	hydralazine
# 8000055	 	folic acid
# 8000919	 	trimethoprim
# 8001100	brinzolamide
# 8001099	brinzolamide and timolol

ccdd_tm_table_release[ccdd_tm_table_release$tm_formal_name == "brinzolamide",]$tm_code <- 8001100
ccdd_tm_table_release[ccdd_tm_table_release$tm_formal_name == "brinzolamide and timolol",]$tm_code <- 8001099

mp_ntp_tm_relationship_release[mp_ntp_tm_relationship_release$tm_formal_name == "brinzolamide",]$tm_code <- 8001100
mp_ntp_tm_relationship_release[mp_ntp_tm_relationship_release$tm_formal_name == "brinzolamide and timolol",]$tm_code <- 8001099



ccdd_tm_feb <- filter(ccdd_tm_table_release, tm_code %in% c(8001070, 
                                                            8001071, 
                                                            8001049, 
                                                            8000930, 
                                                            8000982,
                                                            8000851,
                                                            8000055,
                                                            8000919,
                                                            8001100,
                                                            8001099))

mp_ntp_tm_relationship_feb <- filter(mp_ntp_tm_relationship_release, tm_code %in% c(8001070, 
                                                                           8001071, 
                                                                           8001049, 
                                                                           8000930, 
                                                                           8000982,
                                                                           8000851,
                                                                           8000055,
                                                                           8000919,
                                                                           8001100,
                                                                           8001099))
mp_ntp_tm_relationship_feb <- mp_ntp_tm_relationship_feb %T>%
                              {new_rows <<- filter(., is.na(ntp_code)) %>% 
                              select(-ntp_code) %>% 
                              left_join(distinct(mp_ntp_tm_delta_release_2010208, ntp_code, ntp_formal_name)) } %>%
                              filter(!is.na(ntp_code)) %>%
                              bind_rows(new_rows)

ccdd_ntp_table_feb <- mp_ntp_tm_relationship_feb %>%
                      select(ntp_code, ntp_formal_name) %>%
                      left_join(ccdd_ntp_table_release %>% select(-ntp_code))

ccdd_mp_table_feb <- mp_ntp_tm_relationship_feb %>%
                      select(mp_code, mp_formal_name) %>%
                      left_join(ccdd_mp_table_release) %>%
                      mutate(mp_type = "DIN",
                             drug_identification_number = mp_code) %>%
                      left_join(drug %>% select(drug_identification_number, brand_name), copy = TRUE) %>%
                      rename(Health_Canada_identifier = drug_identification_number,
                             Health_Canada_product_name = brand_name)

write.csv(ccdd_tm_feb, file = "~/formulary/releases/20180216/ccdd_tm_table_incremental_20180215.csv", row.names = FALSE)
write.csv(ccdd_ntp_table_feb, file = "~/formulary/releases/20180216/ccdd_ntp_table_incremental_20180215.csv", row.names = FALSE)
write.csv(ccdd_mp_table_feb, file = "~/formulary/releases/20180216/ccdd_mp_table_incremental_20180215.csv", row.names = FALSE)
write.csv(mp_ntp_tm_relationship_feb, file = "~/formulary/releases/20180216/mp_ntp_tm_relationship_incremental_20180215.csv", row.names = FALSE)







