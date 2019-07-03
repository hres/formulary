library(xlsx)
library(pool)
#load dpd table:
library(RPostgreSQL)
library(dplyr)
library(dbplyr)
library(tidyr)

ccdd <- dbPool(drv      = RPostgreSQL::PostgreSQL(),
                   host     = "rest.hc.local",
                   dbname   = "ccdd_2019_07_02_100803",
                   user     = "nzhu",
                   password = "nzhu_rest" )

dpd_drug<-tbl(ccdd, in_schema("dpd","drug_product"))%>%as.data.frame()

changes_mp<-tbl(ccdd, in_schema("public","qa_release_changes_mp_release_candidate"))%>%as.data.frame()

#changes_mp<-read.xlsx('TM NTP and MP Concepts to be added back for September 2018 CCDD Release.xlsx',3,stringsAsFactors=F,header=T)
code_to_add<-changes_mp[changes_mp$changes=='DELETED',1:2]
code_to_add<-left_join(code_to_add,dpd_drug[,c('drug_code','drug_identification_number')],by=c('mp_code'='drug_identification_number'))


#confirm with QA whitelist
qa_whitelist_filepath<-'./src/sql/test/whitelist_20190605.csv'
qa_whitelist<-read.csv(qa_whitelist_filepath,stringsAsFactors = F)
code_to_add<-code_to_add%>%filter(drug_code %in% qa_whitelist$drug_code)


whitelist<-read.csv('./src/sql/test/ccdd-mp-whitelist-draft.csv',stringsAsFactors = F,
                    colClasses = c('mp_code'='character'))
pseudodin<-read.csv('./src/sql/test/ccdd-pseudodin-map-draft.csv',stringsAsFactors = F)

pseudodin$pseudodin<-as.character(pseudodin$pseudodin)
code_to_add<-left_join(code_to_add,pseudodin[,c('pseudodin','drug_code')],by=c('mp_code'='pseudodin'))
code_to_add$drug_code<-coalesce(code_to_add$drug_code.x,code_to_add$drug_code.y)


#include DIN and mp concept name to whitelist:
# whitelist<-left_join(whitelist,dpd_drug[,c('drug_code','drug_identification_number')],copy=T)
# whitelist<-left_join(whitelist,tbl(ccdd, in_schema("ccdd","mp_release_candidate"))%>%select(mp_code,mp_formal_name),
#                      by=c('drug_identification_number'='mp_code'),copy=T)
# whitelist<-rename(whitelist,mp_code=drug_identification_number)

whitelist<-bind_rows(whitelist,code_to_add[,c(1,2,5)])%>%distinct()

write.csv(whitelist,'./src/sql/test/ccdd-mp-whitelist-draft.csv',row.names = F)


# first run write-new-concetps.sql script to update tm_definition_draft
#update TM_filter_master.csv

#load tm filter from QA file, change filepath if necessary
tm_filter<-read.csv('./src/sql/test/tm_filter_20190605.csv',stringsAsFactors = F)

#load tm_definition after running write-new-concepts.sh 
tm_definition<-read.csv('./src/sql/test/ccdd-tm-definitions-draft.csv',stringsAsFactors = F)
tm_filter_master<-tm_definition%>%filter(formal_name%in% tm_filter$tm_formal_name)

#save the TM_filter_master.csv and move to folder-reorg branch:
write.csv(tm_filter_master,'./src/sql/test/TM_filter_master.csv',row.names = F)





#update brand overide list :
# brand_overide<-read.csv('./src/sql/test/ccdd-mp-brand-override-draft.csv',stringsAsFactors = F)
# 
# # list of products with duplicated MP name, find drug code and add dpd descriptors to brand-override 
# duplicate_mp<-read.xlsx('./src/sql/test/Changes for CCDD October 2018 Release Candidate.xlsx',2,stringsAsFactors=F)
# 
# duplicate_mp<-duplicate_mp%>%
#               filter(Action=='Add DPD Descriptor')%>%
#               left_join(dpd_drug[,c('drug_code','drug_identification_number','brand_name')],
#                       by=c('mp_code'='drug_identification_number'))%>%
#               select(drug_code,brand_name,DPD.Descriptor)%>%
#               unite('brand',c('brand_name','DPD.Descriptor'),sep=' ')
# 
# brand_overide<-bind_rows(brand_overide,duplicate_mp)
# brand_overide$drug_code<-as.character(brand_overide$drug_code)
# 
# write.csv(brand_overide,'./src/sql/test/ccdd-mp-brand-override-draft.csv',row.names = F)
