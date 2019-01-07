# Special Groupings

library(rvest)
library(purrr)
library(xml2)
library(tidyr)
library(dplyr)
library(tibble)


opioid_labelling_regs_url <- "http://www.gazette.gc.ca/rp-pr/p1/2017/2017-06-17/html/reg8-eng.php"

opioid_labelling_regs_html <- read_html(opioid_labelling_regs_url) 

opioid_labelling_regs_tables <- html_table(opioid_labelling_regs_html)

opioid_labelling <- opioid_labelling_regs_tables[[3]]
opioid_terms_and_conditions <- opioid_labelling_regs_tables[[4]]

cdsa_xml <- read_xml("http://laws-lois.justice.gc.ca/eng/XML/C-38.8.xml")

cdsa_schedules <- xml_nodes(cdsa_xml, "Schedule")

cdsa_schedule_i <- cdsa_schedules %>%
                   xml_find_all(xpath = '//Schedule[ScheduleFormHeading/Label/text() = "SCHEDULE I"]/List/Item') %>%
                   tibble(schedule = "Schedule I", 
                           node = .) %>%
                   mutate(label = node %>% xml_node(xpath = "./Label") %>% xml_text(),
                          label_name = node %>% xml_node(xpath = "./Text") %>% xml_text(),
                          node = node %>% xml_node(xpath = "./List"),
                          item_num = map(node, ~ xml_nodes(.x, xpath = "./Item") %>% seq_along()),
                          item_num = ifelse(is.na(node), NA, item_num),
                          item_label = map(node, ~ xml_nodes(.x, xpath = "./Item") %>% xml_node(xpath = "./Label") %>% xml_text()),
                          item_label = ifelse(is.na(node), NA, item_label),
                          item_name = map(node, ~ xml_nodes(.x, xpath = "./Item") %>% xml_node(xpath = "./Text") %>% xml_text()),
                          item_name = ifelse(is.na(node), NA, item_name)) %>%
                    select(-node) %>%
                    unnest() %>%
                    group_by(label) %>%
                    mutate(type = ifelse(str_detect(item_name, "not including"), "Excluded", NA)) %>%
                    fill(type) %>%
                    mutate(type = ifelse(is.na(type), "Included", type))

cdsa_schedule_ii <- cdsa_schedules %>%
  xml_find_all(xpath = '//Schedule[ScheduleFormHeading/Label/text() = "SCHEDULE II"]/List/Item') %>%
  tibble(schedule = "Schedule II", 
         node = .) %>%
  mutate(label = node %>% xml_node(xpath = "./Label") %>% xml_text(),
         label_name = node %>% xml_node(xpath = "./Text") %>% xml_text(),
         node = node %>% xml_node(xpath = "./List"),
         item_num = map(node, ~ xml_nodes(.x, xpath = "./Item") %>% seq_along()),
         item_num = ifelse(is.na(node), NA, item_num),
         item_label = map(node, ~ xml_nodes(.x, xpath = "./Item") %>% xml_node(xpath = "./Label") %>% xml_text()),
         item_label = ifelse(is.na(node), NA, item_label),
         item_name = map(node, ~ xml_nodes(.x, xpath = "./Item") %>% xml_node(xpath = "./Text") %>% xml_text()),
         item_name = ifelse(is.na(node), NA, item_name)) %>%
  select(-node) %>%
  unnest() %>%
  group_by(label) %>%
  mutate(type = ifelse(str_detect(item_name, "not including"), "Excluded", NA)) %>%
  fill(type) %>%
  mutate(type = ifelse(is.na(type), "Included", type))
                  
cdsa_schedule_iii <- cdsa_schedules %>%
  xml_find_all(xpath = '//Schedule[ScheduleFormHeading/Label/text() = "SCHEDULE III"]/List/Item') %>%
  tibble(schedule = "Schedule III", 
         node = .) %>%
  mutate(label = node %>% xml_node(xpath = "./Label") %>% xml_text(),
         label_name = node %>% xml_node(xpath = "./Text") %>% xml_text(),
         node = node %>% xml_node(xpath = "./List"),
         item_num = map(node, ~ xml_nodes(.x, xpath = "./Item") %>% seq_along()),
         item_num = ifelse(is.na(node), NA, item_num),
         item_label = map(node, ~ xml_nodes(.x, xpath = "./Item") %>% xml_node(xpath = "./Label") %>% xml_text()),
         item_label = ifelse(is.na(node), NA, item_label),
         item_name = map(node, ~ xml_nodes(.x, xpath = "./Item") %>% xml_node(xpath = "./Text") %>% xml_text()),
         item_name = ifelse(is.na(node), NA, item_name)) %>%
  select(-node) %>%
  unnest() %>%
  group_by(label) %>%
  mutate(type = ifelse(str_detect(item_name, "not including"), "Excluded", NA)) %>%
  fill(type) %>%
  mutate(type = ifelse(is.na(type), "Included", type))

cdsa_schedule_iv <- cdsa_schedules %>%
  xml_find_all(xpath = '//Schedule[ScheduleFormHeading/Label/text() = "SCHEDULE IV"]/List/Item') %>%
  tibble(schedule = "Schedule IV", 
         node = .) %>%
  mutate(label = node %>% xml_node(xpath = "./Label") %>% xml_text(),
         label_name = node %>% xml_node(xpath = "./Text") %>% xml_text(),
         node = node %>% xml_node(xpath = "./List"),
         item_num = map(node, ~ xml_nodes(.x, xpath = "./Item") %>% seq_along()),
         item_num = ifelse(is.na(node), NA, item_num),
         item_label = map(node, ~ xml_nodes(.x, xpath = "./Item") %>% xml_node(xpath = "./Label") %>% xml_text()),
         item_label = ifelse(is.na(node), NA, item_label),
         item_name = map(node, ~ xml_nodes(.x, xpath = "./Item") %>% xml_node(xpath = "./Text") %>% xml_text()),
         item_name = ifelse(is.na(node), NA, item_name)) %>%
  select(-node) %>%
  unnest() %>%
  group_by(label) %>%
  mutate(type = ifelse(str_detect(item_name, "not including"), "Excluded", NA)) %>%
  fill(type) %>%
  mutate(type = ifelse(is.na(type), "Included", type))






   mutate_at(vars(starts_with("item")), function(x) if_else(is_empty(x), NA, x))
                     
                     filter(is.na(node)) -> a %>%
                   select(-node) %>%
                   unnest() %>%
                   bind_rows(a)
select(-node) %T>%
  rowwise() %>%
                   map_df(~ data.frame(schedule = schedule, label = label, label_name = label_name, ))                 
  mutate(sublabel = map_if(nodeset,~ !is.na(.),~ xml_nodes(., xpath = "./Item/Label") %>% xml_text())) %>%
                   unnest() %>%
                   mutate(sublabel = nodeset %>% xml_find_first(xpath = "./Item/Label") %>% xml_text() %>% list()),
                          sublabel_name = nodeset %>% xml_node(xpath = "./Item/Text") %>% xml_text() %>% list()) %>%
                   unnest()

cell_values <- function(gsx_node){
  tibble(gsx_node) %>%
    mutate(i            = row_number(),
           col_name_raw = gsx_node %>% map_chr(xml_name),
           cell_text    = gsx_node %>% map_chr(xml_text)) %>%
    select(-gsx_node)
}

cells_df <- rc %>%
  xml_find_all("(//feed:entry)", ns) %>%
  tibble(node = .) %>%
  mutate(gsx_node  = map(node, xml_find_all, xpath = "./gsx:*", ns = ns),
         cell_list = map(gsx_node, cell_values),
         row       = row_number()) %>%
  unnest(cell_list)


library(readxl)
Special_Groupings <- read_excel("~/formulary/src/Special Groupings.xlsx")

cdsa_dpd <- ccdd_mp_source %>% 
            left_join(schedule, copy = TRUE) %>%
            filter(schedule %in% c(
              "Narcotic (CDSA I)",
              "Schedule G (CDSA IV)",
              "Schedule G (CDSA III)",
              "Narcotic (CDSA II)",
              "Targeted (CDSA IV)",
              "Schedule G (CDSA I)",
              "Narcotic (CDSA II)"
            ), ccdd == TRUE) %>%
  select(extract, drug_code, drug_identification_number, schedule, tm_code, tm_formal_name) %>%
  left_join(ccdd_mp_table) %>%
  filter(!is.na(mp_code)) %>%
  left_join(ccdd_mapping_table) %>%
  {bind_rows(distinct(., mp_code, mp_formal_name, tm_formal_name, schedule) %>%
               rename(ccdd_code = mp_code,
                      ccdd_formal_name = mp_formal_name) %>%
               mutate(ccdd_type = "MP"),
             distinct(., ntp_code, ntp_formal_name, tm_formal_name, schedule) %>%
               rename(ccdd_code = ntp_code,
                      ccdd_formal_name = ntp_formal_name) %>%
               mutate(ccdd_code = as.character(ccdd_code),
                      ccdd_type = "NTP"),
             distinct(., tm_code, tm_formal_name, schedule) %>%
               mutate(ccdd_formal_name = tm_formal_name,
                      ccdd_type = "TM") %>%
               rename(ccdd_code = tm_code) %>%
               mutate(ccdd_code = as.character(ccdd_code)))} %>%
  select(ccdd_code, ccdd_formal_name, ccdd_type, tm_formal_name, policy = schedule) %>%
  mutate(policy_reference = "http://laws-lois.justice.gc.ca/eng/acts/C-38.8/FullText.html")
  
tm_reg_local <- ccdd_tm_reg %>% collect()

ccdd_opioids <- Special_Groupings %>%
                select(concept_name = `TM Name`,
                       policy = Policy,
                       policy_url = `Policy URL`) %>%
                mutate(concept_name = tolower(concept_name)) 

ccdd_opioid_codes <- tm_reg_local %>%
  filter(tm_code %in% c(8000372,
                        8000775,
                        8000776,
                        8000069,
                        8000127,
                        8000777,
                        8000778,
                        8000779,
                        8000780,
                        8000781,
                        8000106,
                        8000782,
                        8000285,
                        8000784,
                        8000071,
                        8000784,
                        8000785,
                        8000059,
                        8000045,
                        8000774,
                        8000783,
                        8000786,
                        8000789,
                        8000349,
                        8000369)) %>%
  mutate_all(as.character) %>%
<<<<<<< HEAD
  left_join(mp_ntp_tm_relationship_release_fix) %>%
=======
  left_join(mp_ntp_tm_relationship_rc) %>%
>>>>>>> folder_reorg
  filter(!is.na(mp_code)) %>%
  {bind_rows(distinct(., mp_code, mp_formal_name, tm_formal_name) %>%
               rename(ccdd_code = mp_code,
                      ccdd_formal_name = mp_formal_name) %>%
               mutate(ccdd_type = "MP"),
             distinct(., ntp_code, ntp_formal_name, tm_formal_name) %>%
               rename(ccdd_code = ntp_code,
                      ccdd_formal_name = ntp_formal_name) %>%
               mutate(ccdd_code = as.character(ccdd_code),
                      ccdd_type = "NTP"),
             distinct(., tm_code, tm_formal_name) %>%
               mutate(ccdd_formal_name = tm_formal_name,
                      ccdd_type = "TM") %>%
               rename(ccdd_code = tm_code) %>%
               mutate(ccdd_code = as.character(ccdd_code)))} %>%
  select(ccdd_code, ccdd_formal_name, ccdd_type, tm_formal_name) %>%
  mutate(policy = "Opioid Patient Info - Health Canada",
         policy_reference = "http://www.gazette.gc.ca/rp-pr/p1/2017/2017-06-17/html/reg8-eng.php") 
  

ccdd_special_groupings <- bind_rows(cdsa_dpd, ccdd_opioid_codes) %>%
                        mutate(special_groupings_status = "Active",
                               special_groupings_status_effective_time = "20170919",
                               policy_type = recode(policy, `Opioid Patient Info - Health Canada` = 500001,
                                                    `Narcotic (CDSA I)` = 500002,
                                                    `Schedule G (CDSA I)` = 500003,
                                                    `Schedule G (CDSA III)` = 500004,
                                                    `Schedule G (CDSA IV)` = 500005,
                                                    `Targeted (CDSA IV)` = 500006,
                                                    `Narcotic (CDSA II)` = 500007)) %>%
                        select(ccdd_code,
                               ccdd_formal_name,
                               ccdd_type,
                               policy_type,
                               policy_reference,
                               special_groupings_status,
                               special_groupings_status_effective_time) %>%
<<<<<<< HEAD
  filter(ccdd_code %in% c(mp_ntp_tm_relationship_release_fix$tm_code, 
                          mp_ntp_tm_relationship_release_fix$ntp_code,
                          mp_ntp_tm_relationship_release_fix$mp_code))
=======
  filter(ccdd_code %in% c(mp_ntp_tm_relationship_rc$tm_code, 
                          mp_ntp_tm_relationship_rc$ntp_code,
                          mp_ntp_tm_relationship_rc$mp_code))
>>>>>>> folder_reorg

ccdd_dev <- src_postgres(dbname = "ccdd",
                         host = "rest.hc.local",
                         port = 5432,
                         user = Sys.getenv("rest_user"),
                         password = Sys.getenv("rest_password"),
                         options = "-c search_path=dev")


,
                       tm_formal_name = tm_reg_local[str_detect(tm_reg_local$tm_formal_name, concept_name)])

