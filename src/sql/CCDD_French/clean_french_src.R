library(dplyr)
library(dbplyr)
library(pool)
library(tidyr)
library(stringr)

add_quote<-function(col){
  col[grepl(',',col)]<-paste0('"',col[grepl(',',col)],'"')
}
# clean up French CCDD src table:
ntp_github<-read.csv('https://raw.githubusercontent.com/hres/formulary/folder_reorg/src/ntp_dosage_form_map_master.csv',stringsAsFactors = F)
ntp_fr<-read.table('./CCDD_French/ntp_dosage.txt',sep='\t',stringsAsFactors = F,header=T)%>%distinct()%>%filter(ntp_dosage_form_FR!='')
dosage<-ntp_github%>%select(-route_of_administration_f,-pharmaceutical_form_f)
dosage<-left_join(dosage,ntp_fr)


#read from DPD:
ccdd <- dbPool(drv      = RPostgreSQL::PostgreSQL(),
               host     = "rest.hc.local",
               dbname   = "ccdd_2019_05_08_140857",
               user     = "nzhu",
               password = "nzhu_rest" )

pharmaceutical_form<-tbl(ccdd, in_schema("dpd","pharmaceutical_form"))%>%as.data.frame()%>%mutate(pharm_form_code=as.character(pharm_form_code))
route<-tbl(ccdd,in_schema('dpd','route'))%>%as.data.frame()
pharm<-dosage%>%distinct(pharm_form_code)%>%
                mutate(index_num=pharm_form_code)%>%
                mutate(pharm_form_code=ifelse(pharm_form_code=='141|161','141-161',pharm_form_code))%>%
                separate_rows(pharm_form_code,sep='-')%>%
                left_join(pharmaceutical_form[,c('pharm_form_code','pharmaceutical_form_f')]%>%distinct()%>%filter(!is.na(pharmaceutical_form_f)))%>%
                group_by(index_num)%>%
                summarise(pharmaceutical_form_f=paste(pharmaceutical_form_f,collapse=','))%>%
                mutate(pharmaceutical_form_f=ifelse(pharmaceutical_form_f=='NA','',pharmaceutical_form_f))


dosage_route<-dosage%>%distinct(route_of_administration_code)%>%
                       mutate(index_num=route_of_administration_code)%>%
                       separate_rows(route_of_administration_code,sep='-')%>%
                       left_join(route[,c('route_of_administration_code','route_of_administration_f')]%>%distinct()%>%filter(!is.na(route_of_administration_f)))%>%
                       group_by(index_num)%>%
                       summarise(route_of_administration_f=paste(route_of_administration_f,collapse=','))
                      
dosage<-dosage%>%left_join(dosage_route,by=c('route_of_administration_code'='index_num'))
dosage<-dosage%>%left_join(pharm,by=c('pharm_form_code'='index_num'))

dosage$route_of_administration[grepl(',',dosage$route_of_administration)]<-paste0('"',dosage$route_of_administration[grepl(',',dosage$route_of_administration)],'"')
dosage$route_of_administration_f[grepl(',',dosage$route_of_administration_f)]<-paste0('"',dosage$route_of_administration_f[grepl(',',dosage$route_of_administration_f)],'"')

dosage$pharmaceutical_form[grepl(',',dosage$pharmaceutical_form)]<-paste0('"',dosage$pharmaceutical_form[grepl(',',dosage$pharmaceutical_form)],'"')
dosage$pharmaceutical_form_f[grepl(',',dosage$pharmaceutical_form_f)]<-paste0('"',dosage$pharmaceutical_form_f[grepl(',',dosage$pharmaceutical_form_f)],'"')



combination<-read.csv('./CCDD_French/Combination Products_master.csv',stringsAsFactors = F,encoding='UTF-8')
combination_fr<-read.delim2('./CCDD_French/combination.txt',sep='\t',header=T,stringsAsFactors = F)
combination$mp_formal_name<-combination_fr$mp_formal_name_fr
combination$ntp_formal_name<-combination_fr$ntp_formal_name_fr
combination$drug_identification_number<-as.character(combination$drug_identification_number)
combination$drug_identification_number<-str_pad(combination$drug_identification_number,7,pad='0')
combination$mp_formal_name[grepl(',',combination$mp_formal_name)]<-paste0('"',combination$mp_formal_name[grepl(',',combination$mp_formal_name)],'"')
combination$ntp_formal_name[grepl(',',combination$ntp_formal_name)]<-paste0('"',combination$ntp_formal_name[grepl(',',combination$ntp_formal_name)],'"')
#combination$mp_formal_name[11]<-'CLÉO-35 (cyproterone acetate 2 mg and ethinyl estradiol 35 mcg oral tablet) ALTIUS HEALTHCARE INC'
#combination$mp_formal_name[330]<-'KWELLADA-P CRÈME RINSE (permethrin 1 % cutaneous solution) MEDTECH PRODUCTS INC'
combination<-combination%>%select(1:5)
write.csv(combination, "./CCDD_French/combination_table_fr.csv", row.names = F,quote=FALSE, fileEncoding = 'UTF-8')


stem_ingredient<-read.delim('./CCDD_French/stem_ingredient.txt',stringsAsFactors = F,header=T)
stem_ingredient_github<-read.csv('https://raw.githubusercontent.com/hres/formulary/folder_reorg/src/Ingredient_Stem_File_master.csv',stringsAsFactors = F)

stem_ingredient<-left_join(stem_ingredient_github%>%select(-ing_stem_FR,-ntp_ing_FR),stem_ingredient)
stem_ingredient$ntp_ing_FR<-na_if(stem_ingredient$ntp_ing_FR,'')
stem_ingredient$ing_stem_FR<-na_if(stem_ingredient$ing_stem_FR,'')
stem_ingredient$ing_stem<-coalesce(stem_ingredient$ing_stem_FR,stem_ingredient$ing_stem)
stem_ingredient$ntp_ing<-coalesce(stem_ingredient$ntp_ing_FR,stem_ingredient$ntp_ing)

stem_ingredient$dpd_ingredient[grepl(',',stem_ingredient$dpd_ingredient)]<-paste0('"',stem_ingredient$dpd_ingredient[grepl(',',stem_ingredient$dpd_ingredient)],'"')
stem_ingredient$ntp_ing[grepl(',',stem_ingredient$ntp_ing)]<-paste0('"',stem_ingredient$ntp_ing[grepl(',',stem_ingredient$ntp_ing)],'"')
stem_ingredient$ing_stem[grepl(',',stem_ingredient$ing_stem)]<-paste0('"',stem_ingredient$ing_stem[grepl(',',stem_ingredient$ing_stem)],'"')
stem_ingredient$dpd_ingredient_FR[grepl(',',stem_ingredient$dpd_ingredient_FR)]<-paste0('"',stem_ingredient$dpd_ingredient_FR[grepl(',',stem_ingredient$dpd_ingredient_FR)],'"')
stem_ingredient$top250name[grepl(',',stem_ingredient$top250name)]<-paste0('"',stem_ingredient$top250name[grepl(',',stem_ingredient$top250name)],'"')
stem_ingredient$ntp_ing_fr[grepl(',',stem_ingredient$ntp_ing_fr)]<-paste0('"',stem_ingredient$ntp_ing_fr[grepl(',',stem_ingredient$ntp_ing_fr)],'"')
stem_ingredient$comments_do.not.use.commas.or.special.characters[grepl(',',stem_ingredient$comments_do.not.use.commas.or.special.characters)]<-paste0('"',stem_ingredient$comments_do.not.use.commas.or.special.characters[grepl(',',stem_ingredient$comments_do.not.use.commas.or.special.characters)],'"')
stem_ingredient<-stem_ingredient%>%select(1:9)
write.csv(stem_ingredient, "./CCDD_French/stem_ingredient_fr.csv", row.names = F,quote=FALSE, fileEncoding = 'UTF-8')


uofp<-read.delim('./CCDD_French/uofp.txt',stringsAsFactors = F)
uofp_github<-read.csv('https://raw.githubusercontent.com/hres/formulary/folder_reorg/src/Units_of_Presentation_master.csv',stringsAsFactors = F)
uofp<-uofp_github%>%left_join(uofp,by=c('unit_of_presentation'='English.UP.Term'))
uofp$unit_of_presentation<-uofp$Final.French.Term
uofp<-uofp%>%select(-Final.French.Term)
uofp$unit_of_presentation<-gsub('\\s+',' ',uofp$unit_of_presentation)
write.csv(uofp, "./CCDD_French/unit_of_presentation_fr.csv", row.names = F,quote=FALSE, fileEncoding = 'UTF-8')


# generate French source files:
ingredient_stem_fr<-read.csv('./CCDD_French/stem_ingredient_clean.csv',stringsAsFactors = F,encoding = 'UTF-8')
write.csv(stem_ingredient, "./CCDD_French/stem_ingredient_fr.csv", row.names = F,quote=FALSE, fileEncoding = 'UTF-8')




#dosage_form
dosage$ntp_dosage_form_FR<-gsub('\\s+',' ',dosage$ntp_dosage_form_FR)
dosage$ntp_dosage_form_FR[dosage$ntp_dosage_form_FR==' '|dosage$ntp_dosage_form_FR=='Not in CCDD list'|dosage$ntp_dosage_form_FR=='']<-NA
dosage$ntp_dosage_form<-coalesce(dosage$ntp_dosage_form_FR,dosage$ntp_dosage_form)
dosage<-dosage%>%select(ntp_dosage_form_code,ntp_dosage_form,route_of_administration_code,route_of_administration,route_of_administration_f,
                        pharm_form_code,pharmaceutical_form,pharmaceutical_form_f,audit_id,validated,date_validated,validated_by,ntp_dosage_form_id)

dosage[is.na(dosage)]<-''
write.csv(dosage,'./src/sql/CCDD_French/ntp_dosage_form_map_master.csv',row.names = F,quote=FALSE, fileEncoding = 'UTF-8')


#translate pseudodin map:
pseudodin_map<-read.csv('./test/ccdd-pseudodin-map-draft.csv',stringsAsFactors = F)
pseudodin_map<-left_join(pseudodin_map,uofp,by=c('unit_of_presentation'='English.UP.Term'))

write.csv(pseudodin_map,'./CCDD_French/ccdd-pseudodin-map-draft.csv',row.names=F,quote=FALSE,fileEncoding = 'UTF-8')