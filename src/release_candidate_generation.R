# To generate release candidate files from a QA set and a publication filter
library(readr)
tm_release_file  <- read_csv("~/formulary/releases/20180309/TMs to Release 20180309.csv", 
                                    col_types = cols(X3 = col_skip(), X4 = col_skip(), 
                                                     tm_code = col_character()))

ccdd_tm_table_rc <- ccdd_tm_table_release %>% semi_join(tm_release_file)

mp_ntp_tm_relationship_rc <- mp_ntp_tm_relationship_release %>% semi_join(tm_release_file)

ccdd_ntp_table_rc <- ccdd_ntp_table_release %>% semi_join(mp_ntp_tm_relationship_rc)

ccdd_mp_table_rc <- ccdd_mp_table_release %>% semi_join(mp_ntp_tm_relationship_rc)

# Manual edits for March 2018
# Supress NTP 9012412 from both the ntp file and the relationship file, and MP 02461528 from the mp file

ccdd_ntp_table_rc <- ccdd_ntp_table_rc %>% filter(!ntp_code == "9012412")
mp_ntp_tm_relationship_rc <- mp_ntp_tm_relationship_rc %>% filter(!ntp_code == "9012412")
ccdd_mp_table_rc <- ccdd_mp_table_rc %>% filter(!mp_code == "02461528")

# Add in deprecated ntp concepts
library(readr)
ntp_full_release_20180223 <- read_csv("~/formulary/releases/CanadianClinicalDrugDataSet(CCDD)-20180223/ntp_full_release_20180223.csv", 
                                      col_types = cols(ntp_code = col_character(), 
                                                       ntp_status_effective_time = col_character()))
deprecated_ntps <- filter(ntp_full_release_20180223) %>% 
                    anti_join(ccdd_ntp_table_rc, by = "ntp_code") %>%
                    mutate(ntp_status = "Deprecated",
                           ntp_status_effective_time = "20180312")

ccdd_ntp_table_rc <- bind_rows(ccdd_ntp_table_rc, deprecated_ntps)

write.csv(ccdd_ntp_table_release, file = "~/formulary/QAfiles/20180312/ntp_qa_release_20180312.csv", row.names = FALSE)
write.csv(ccdd_tm_table_release, file = "~/formulary/QAfiles/20180312/tm_qa_release_20180312.csv", row.names = FALSE)
write.csv(ccdd_mp_table_release, file = "~/formulary/QAfiles/20180312/mp_qa_release_20180312.csv", row.names = FALSE)
write.csv(mp_ntp_tm_relationship_release, file = "~/formulary/QAfiles/20180312/mp_ntp_tm_relationship_qa_release_20180312.csv", row.names = FALSE)


write.csv(ccdd_ntp_table_rc, file = "~/formulary/releases/20180312/ntp_release_candidate_20180312.csv", row.names = FALSE)
write.csv(ccdd_tm_table_rc, file = "~/formulary/releases/20180312/tm_release_candidate_20180312.csv", row.names = FALSE)
write.csv(ccdd_mp_table_rc, file = "~/formulary/releases/20180312/mp_release_candidate_20180312.csv", row.names = FALSE)
write.csv(mp_ntp_tm_relationship_rc, file = "~/formulary/releases/20180312/mp_ntp_tm_relationship_release_candidate_20180312.csv", row.names = FALSE)
