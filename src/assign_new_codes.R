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
qa_missing_concepts_tm <- tbl(ccdd_sql, "qa_missing_coincepts_tm")

# This are the reference codes that are used to look up newly generated concepts. 
ccdd_pseudodin_map_draft <- read_csv("~/formulary/src/sql/test/ccdd-pseudodin-map-draft.csv")
ccdd_ntp_definitions_draft <- read_csv("~/formulary/src/sql/test/ccdd-ntp-definitions-draft.csv")


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