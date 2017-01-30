Auto-generated Clinical Drug List

Start from DPD monthly extract

Filter to Human Active (add in approved in future version)

-------------------------------------------------------------------------------

### Data Description

#### Main Tables

**ntp_table**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
ntp_code|Character|7|Unique ntp identifier
formal_description_ntp|Character|TBD|Follows the format "basis of strength, (precise ingredient), strength and dosage, ntp dose form"
en_display|Character|TBD|English description
fr_display|Character|TBD|French description
status|Character|16|Active, inactive, or approved
ntp_status_effective_time|Character (Date)|8|YYYYMMDD


**tm_table**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
tm_code|Character|7|Unique tm identifier
formal_desciption_tm|Character|TBD|Follows the format "therapeutic moiety(s)"
en_display|Character|TBD|English description
fr_display|Character|TBD|French description
status|Character|16|Active, inactive, or approved
tm_status_effective_time|Character (Date)|8|YYYYMMDD


**mp_table**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
DRUG_IDENTIFICATION_NUMBER|Character|8|Unique product identifier
formal_description_mp|Character|TBD|Follows the format "BRAND NAME [basis of strength, (precise ingredient), strength and dosage, ntp dose form] COMPANY NAME"
en_display|Character|TBD|English description
fr_display|Character|TBD|French description
product_status|Character|16|Active, inactive or approved
product_status_effective_time|Character (Date)|8|YYYYMMDD

#### Other Tables

**substance_sets**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
DRUG_CODE|Character|5|Code for identifying a drug (not as unique as DIN)
sub_set|Character|TBD|Precise ingredients delimited by !
bos_set|Character|TBD|Basis of strength ingredients delimited by !
tm_set|Character|TBD|Theraopeutic moieties delimited by !
sub_str_dosage_set|Character|TBD|Strength and optional dosage delimited by !
mp_table_set|Character|TBD|Misleading column name, but it is the basis for ntp and mp formal names. Delimited by " and "
ai_unii_set|Character|TBD|US Active ingredient code delimited by !
am_unii_set|Character|TBD|US Active moiety code delimited by !

**products**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
dpd_pharm_form|Character|TBD|What form does the drug take?
dpd_route_admin|Character|TBD|Where is the drug administered?
DRUG_CODE|Character|5|Code for identifying a drug (not as unique as DIN)
extract|Character|16|Active, inactive or approved
DRUG_IDENTIFICATION_NUMBER|Character|8|Unique product identifier
LAST_UPDATE_DATE|Character (Date)|11|DD-MMM-YYYY
BRAND_NAME|Character|TBD|Brand name for the specific drug
NUMBER_OF_AIS|Character|3|The number of active ingredients in the drug
COMPANY_NAME|Character|TBD|Name of company who produces the drug
COMPANY_CODE|Character|5|Company code for reference
ROUTE_OF_ADMINISTRATION_CODE|Character|3|Code mapped to dpd_route_admin
PHARM_FORM_CODE|Character|3|Code mapped to dpd_pharm_admin
TC_ATC_NUMBER|Character|7|
TC_ATC|Character|TBD|
TC_AHFS_NUMBER|Character|TBD|
TC_AHFS|Character|TBD|
ntp_dose_form|Character|TBD|ntp mapping for each route and pharm form.

**mapping_table**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
DRUG_IDENTIFICATION_NUMBER|Character|8|Unique product identifier
formal_description_ntp|Character|TBD|Follows the format "basis of strength, (precise ingredient), strength and dosage, ntp dose form"
ntp_code|Character|7|Unique ntp identifier
formal_desciption_tm|Character|TBD|Follows the format "therapeutic moiety(s)"
tm_code|Character|7|Unique tm identifier
