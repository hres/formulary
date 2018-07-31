#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(igraph)
library(visNetwork)
library(dplyr)
library(stringr)
library(magrittr)
library(DT)

load("ccdd_main.RData")
ccdd_main <- m2
ccddoptions <- c(unique(ccdd_main$formal_description_tm), 
                 unique(ccdd_main$formal_description_ntp), 
                 unique(ccdd_main$formal_description_mp))

search_ccdd <- function(query, top250flag = TRUE){
  search_tm <- dplyr::filter(ccdd_main, formal_description_mp %in% query | 
                               formal_description_ntp %in% query | 
                               formal_description_tm %in% query) %>% 
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

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Canadian Clinical Drug Data Set Browser"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
        selectInput('query', 'Search Concepts', choices = ccddoptions, multiple = TRUE, selectize = TRUE),
        checkboxInput(inputId = "top250flag",
                      label = strong("Top 250 TMs"),
                      value = TRUE),
        tableOutput('summary')
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
        tabsetPanel(
          tabPanel("Graph", visNetworkOutput("graph")),
          tabPanel("Table", DT::dataTableOutput("table"))
      ))
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
     search_result <- reactive(search_ccdd(input$query, input$top250flag))

       
     output$graph <- renderVisNetwork(vis_ccdd(search_result()$search_graph))
     output$table <- DT::renderDataTable(table_ccdd(search_result()$res_table))
     output$summary <- renderTable({
       data <- search_result()$res_table
       result <- data.frame(names = c("Therapeutic Moeities (TMs):",
                                      "Non-proprietary Therapeutic Products (NTPs):",
                                      "Manufactured Products (MPs):",
                                      "NTP Dose Forms:",
                                      "DPD Dose Forms:",
                                      "DPD Routes:"),
                            numbers = c(n_distinct(data$formal_description_tm),
                                        n_distinct(data$formal_description_ntp),
                                        n_distinct(data$formal_description_mp),
                                        n_distinct(data$ntp_dose_form),
                                        n_distinct(data$dpd_form),
                                        n_distinct(data$dpd_route)),
                            stringsAsFactors=FALSE)
       result["" == result] <- "Not Specified"
       result
     }, include.colnames = FALSE
     )
}

# Run the application 
shinyApp(ui = ui, server = server)

