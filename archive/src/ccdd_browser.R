ccdd_main <- mapping_table %>%
  mutate(top250 = tm_set %in% top250$tm_set,
         DRUG_IDENTIFICATION_NUMBER = mp_code) %>%
  left_join(distinct(dpd_drug_all, DRUG_CODE, DRUG_IDENTIFICATION_NUMBER)) %>%
  left_join(dpd_form_all %>%
              filter(extract == "active") %>%
              group_by(DRUG_CODE) %>%
              summarize(dpd_form = paste(PHARMACEUTICAL_FORM, collapse = ", "))) %>%
  left_join(dpd_route_all %>%
              filter(extract == "active") %>%
              group_by(DRUG_CODE) %>%
              summarize(dpd_route = paste(ROUTE_OF_ADMINISTRATION, collapse = ", "))) %>%
  left_join(select(dpd_drug_all, DRUG_CODE, extract)) %>%
  filter(extract == "active")

search_ccdd <- function(query, top250flag = TRUE){
  search_tm <- dplyr::filter(ccdd_main, str_detect(formal_description_mp, regex(query, ignore_case = TRUE)) | 
                        str_detect(formal_description_ntp, regex(query, ignore_case = TRUE)) | 
                        str_detect(formal_description_tm, regex(query, ignore_case = TRUE))) %>% 
    distinct(tm_code)
  
  res_table <- dplyr::filter(ccdd_main, tm_code %in% search_tm$tm_code)
  
  if(top250flag == TRUE){res_table <- dplyr::filter(res_table, top250 == TRUE)}
  
  search_nodes <- res_table %>%
  {bind_rows(select(., title = formal_description_mp,  id = mp_code) %>% 
               mutate(group = "MP",
                      title = str_replace(title, regex("(.+) (\\[.+\\]) (.+)"), "\\1<br>\\2<br>\\3"),
                      label = paste0("DIN ", id)),
             select(., title = formal_description_ntp, id = ntp_code) %>% 
               mutate(group = "NTP", 
                      id = as.character(id), 
                      label = paste0("NTP Code ", id)),
             select(., title = formal_description_tm, id = tm_code) %>% 
               mutate(group = "TM", 
                      id = as.character(id), 
                      label = paste0("TM Code ", id)),
             select(., title = ntp_dose_form) %>%
               mutate(group = "NTP Dose Form",
                      label = title,
                      id = title),
             select(., title = dpd_form) %>%
               mutate(group = "DPD Dosage Form",
                      label = title,
                      id = title),
             select(., title = dpd_route) %>%
               mutate(group = "DPD Route of Admin",
                      label = title,
                      id = title)) %>% 
      select(id, everything()) %>%
      mutate(font.size = 24) %>%
      distinct(id, .keep_all = TRUE)
  }
  
  search_edges <- res_table %>%
  {bind_rows(select(., from = tm_code, to = ntp_code) %>% mutate_all(as.character) %>% mutate(color = "black") %>% distinct(),
             select(., from = ntp_code, to = mp_code) %>% mutate_all(as.character) %>% mutate(color = "black") %>% distinct(),
             select(., from = ntp_dose_form, to = ntp_code) %>% mutate_all(as.character) %>% mutate(color = "red", dashes = TRUE) %>% distinct(),
             select(., from = dpd_form, to = mp_code) %>% mutate_all(as.character) %>% mutate(color = "red", dashes = TRUE) %>% distinct(),
             select(., from = dpd_route, to = mp_code) %>% mutate_all(as.character) %>% mutate(color = "red", dashes = TRUE) %>% distinct()) %>%
      mutate(width = 1) %>%
      distinct()
  }
  
  search_graph <- graph_from_data_frame(search_edges, directed = FALSE, vertices = search_nodes)
  
  return(list(res_table = res_table,
              search_graph = search_graph))
  
}
vis_ccdd <- function(search_graph){
  toVisNetworkData(search_graph, idToLabel = FALSE) %>%
  {visNetwork(nodes = .$nodes, edges = .$edges, main = "Therapeutic Moeities")} %>%
    visGroups(groupname = "MP", color = "#8dd3c7", shape = "ellipse", shadow = list(enabled = T)) %>%
    visGroups(groupname = "NTP", color = "#ffffb3", shape = "circle") %>%
    visGroups(groupname = "TM", color = "#bebada", shape = "square") %>%
    visGroups(groupname = "NTP Dose Form", color = "#fb8072", shape = "circle") %>%
    visGroups(groupname = "DPD Dosage Form", color = "#80b1d3", shape = "ellipse") %>%
    visGroups(groupname = "DPD Route of Admin", color = "#fdb462", shape = "ellipse") %>%
    visLegend() %>%
    visIgraphLayout() %>%
    visOptions(highlightNearest = list(enabled = T, degree = 2, hover = T), 
               nodesIdSelection = T)
  
}
table_ccdd <- function(search_frame){
  datatable(search_frame, 
            rownames = FALSE, 
            filter = "top", 
            extensions = c("Buttons", "ColReorder"), 
            options = list(dom = "Bfrtip", 
                           buttons = c('copy', 'csv', 'pdf', 'print',
                                       I('colvis')), 
                           colReorder = TRUE))
  
}