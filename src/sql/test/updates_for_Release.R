library(xlsx)
library(pool)
#load dpd table:
library(RPostgreSQL)
library(dplyr)
library(dbplyr)
library(tidyr)
library(docxtractr)

#############################################################

#params to update:

qa_file_name<-'qa_file_20191205.docx'
tm_filter_file_name<-'tm_filter_20191205.csv'

ccdd <- dbPool(drv      = RPostgreSQL::PostgreSQL(),
               host     = "rest.hc.local",
               dbname   = "ccdd_2019_12_02_145930",  #update date of database accordingly
               user     = "nzhu",
               password = "nzhu_rest" )

################################################################

dpd_drug<-tbl(ccdd, in_schema("dpd","drug_product"))%>%as.data.frame()

changes_mp<-tbl(ccdd, in_schema("public","qa_release_changes_mp_release_candidate"))%>%as.data.frame()

#changes_mp<-read.xlsx('TM NTP and MP Concepts to be added back for September 2018 CCDD Release.xlsx',3,stringsAsFactors=F,header=T)
code_to_add<-changes_mp[changes_mp$changes=='DELETED',1:2]
code_to_add<-left_join(code_to_add,dpd_drug[,c('drug_code','drug_identification_number')],by=c('mp_code'='drug_identification_number'))

# if there is a product with pseudo din on the list:
if(sum(is.na(code_to_add$drug_code))>0){
  pseudodin<-read.csv('./src/sql/test/ccdd-pseudodin-map-draft.csv',stringsAsFactors = F)
  
  pseudodin$pseudodin<-as.character(pseudodin$pseudodin)
  code_to_add<-left_join(code_to_add,pseudodin[,c('pseudodin','drug_code')],by=c('mp_code'='pseudodin'))
  code_to_add$drug_code<-coalesce(code_to_add$drug_code.x,code_to_add$drug_code.y)
  
  code_to_add<-code_to_add[,c(1,2,5)]
}else{
  
  code_to_add<-code_to_add
}


code_to_add<-code_to_add%>%
             filter(!drug_code %in% c(15207,42844,44264,43078))%>%  #those drug products were 'manually' added during file output 
             filter(!is.na(drug_code))

#load qa list from Jo-Anne:
qa<-read_docx(paste0('./src/sql/test/',qa_file_name))
qa_whitelist<-docx_extract_tbl(qa,11) #the witelist table is always the 11th table

#confirm with QA whitelist
code_to_add<-code_to_add%>%filter(drug_code %in% qa_whitelist$drug_code)


whitelist<-read.csv('./src/sql/test/ccdd-mp-whitelist-draft.csv',stringsAsFactors = F,
                    colClasses = c('mp_code'='character'))

whitelist<-bind_rows(whitelist,code_to_add)%>%distinct()

write.csv(whitelist,'./src/sql/test/ccdd-mp-whitelist-draft.csv',row.names = F)


# first run write-new-concetps.sql script to update tm_definition_draft
#update TM_filter_master.csv

#load tm filter from QA file, change filepath if necessary
tm_filter<-read.csv(paste0('./src/sql/test/',tm_filter_file_name),stringsAsFactors = F)

#load tm_definition after running write-new-concepts.sh 
tm_definition<-read.csv('./src/sql/test/ccdd-tm-definitions-draft.csv', stringsAsFactors = F)
tm_filter_master<-tm_definition%>%filter(formal_name%in% tm_filter$tm_formal_name)%>%
                                  select(code,formal_name)

#save the TM_filter_master.csv and move to folder-reorg branch:
if(nrow(tm_filter)==nrow(tm_filter_master)){
write.csv(tm_filter_master,'./src/sql/test/TM_filter_master.csv',row.names = F)
}else{
  
  print('Please double check tm master list, the row number does not match tm filter provided by QA group')
}

#############################################################################################################################

#ntp definition name changes for existing code:
ntp_definition<-read.csv('./src/sql/test/ccdd-ntp-definitions-draft.csv',stringsAsFactors = F)
ntp_name_change<-docx_extract_tbl(qa,6)

if(ntp_definition$ntp._formal_name=='[NONE]'){
  
  ntp_definition<-ntp_definition
  
}else{

ntp_definition$formal_name[match(ntp_name_change$ntp_code..to.keep.,ntp_definition$code)]<-ntp_name_change$ntp._formal_name

#remove newly assigned ntp_definition:
ntp_definition<-ntp_definition%>%group_by(formal_name)%>%
                                 filter(code==min(code))%>%
                                 ungroup()

ntp_definition$code<-as.character(ntp_definition$code)

write.csv(ntp_definition,'./src/sql/test/ccdd-ntp-definitions-draft.csv',row.names = F)

}
