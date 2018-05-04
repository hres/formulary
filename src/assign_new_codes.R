# This is to generate new concept codes. Not great to be doign this in R. Needs an SQL implementation.

library(dplyr)
library(readr)

ccdd_sql <- src_postgres(dbname = "ccdd_2018_05_03_135357",
                     host = "rest.hc.local",
                     port = 5432,
                     user = Sys.getenv("rest_user"),
                     password = Sys.getenv("rest_password"))

qa_missing_concepts_ntp <- tbl(ccdd_sql, "qa_missing_concepts_ntp")
qa_missing_concepts_pseudodin <- tbl(ccdd_sql, "qa_missing_concepts_pseudodin")
qa_missing_concepts_tm <- tbl(ccdd_sql, "qa_missing_concepts_tm")

# This are the reference codes that are used to look up newly generated concepts. 
ccdd_pseudodin_map_draft <- read_csv("~/formulary/src/sql/test/ccdd-pseudodin-map-draft.csv")
ccdd_ntp_definitions_draft <- read_csv("~/formulary/src/sql/test/ccdd-ntp-definitions-draft.csv")
ccdd_tm_definitions_draft <- read_csv("~/formulary/src/sql/test/ccdd-tm-definitions-draft.csv")

# We need to check publication set for previously published concepts
ccdd_tm_published <- read_csv("https://raw.githubusercontent.com/hres/formulary/folder_reorg/releases/20180418%20-%20April%202018%20Release/tm_full_release_20180418.csv")
ccdd_ntp_published <- read_csv("https://raw.githubusercontent.com/hres/formulary/folder_reorg/releases/20180418%20-%20April%202018%20Release/ntp_full_release_20180418.csv")
ccdd_mp_published <- read_csv("https://raw.githubusercontent.com/hres/formulary/folder_reorg/releases/20180418%20-%20April%202018%20Release/mp_full_release_20180418.csv")


# What's already published

new_tms <- qa_missing_concepts_tm %>%
              collect() %>%
              mutate(code = 1:n() + max(ccdd_tm_published$tm_code)) %>% 
              select(code, formal_name = tm_formal_name) %>%
              {bind_rows(ccdd_tm_definitions_draft, .)} %>%
              mutate_all(as.character)

new_pseudodins <- qa_missing_concepts_pseudodin %>%
                    collect() %>%
                    mutate(pseudodin = 1:n() + max(ccdd_pseudodin_map_draft$pseudodin)) %>%
                    select(pseudodin, drug_code, unit_of_presentation, uop_size_amount, uop_size_unit) %>%
                  {bind_rows(ccdd_pseudodin_map_draft, .)} %>%
                  mutate_all(as.character)

new_ntps <- qa_missing_concepts_ntp %>%
              collect() %>% 
              mutate(code = 1:n() + max(ccdd_ntp_definitions_draft$code)) %>%
              select(code, formal_name = ntp_formal_name) %>%
              {bind_rows(ccdd_ntp_definitions_draft, .)} %>%
              mutate_all(as.character)


write.csv(new_tms, file = "~/formulary/src/sql/test/ccdd-tm-definitions-draft.csv", row.names = FALSE)
write.csv(new_pseudodins, file = "~/formulary/src/sql/test/ccdd-pseudodin-map-draft.csv", row.names = FALSE)
write.csv(new_ntps, file = "~/formulary/src/sql/test/ccdd-ntp-definitions-draft.csv", row.names = FALSE)

