Auto-generated Clinical Drug List

Start from DPD monthly extract

Filter to Human Active (add in approved in future version)

-------------------------------------------------------------------------------

### Data Description

#### Main Tables

**ntp_table**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
ntp_code|Numeric|7|Unique ntp identifier
formal_description_ntp|Character|183|Follows the format "basis of strength, (precise ingredient), strength and dosage, ntp dose form"
en_display|Character|TBD|English description
fr_display|Character|TBD|French description
status|Character|8|Active, inactive, or approved
ntp_status_effective_time|Character (Date)|8|YYYYMMDD


**tm_table**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
tm_code|Numeric|7|Unique tm identifier
formal_desciption_tm|Character|55|Follows the format "therapeutic moiety(s)"
en_display|Character|TBD|English description
fr_display|Character|TBD|French description
status|Character|8|Active, inactive, or approved
tm_status_effective_time|Character (Date)|8|YYYYMMDD


**mp_table**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
DRUG_IDENTIFICATION_NUMBER|Character|8|Unique product identifier
formal_description_mp|Character|227|Follows the format "BRAND NAME [basis of strength, (precise ingredient), strength and dosage, ntp dose form] COMPANY NAME"
en_display|Character|TBD|English description
fr_display|Character|TBD|French description
product_status|Character|8|Active, inactive or approved
product_status_effective_time|Character (Date)|8|YYYYMMDD

#### Other Tables

**substance_sets**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
DRUG_CODE|Numeric|5|Code for identifying a drug (not as unique as DIN)
sub_set|Character|924|Precise ingredients delimited by !
bos_set|Character|924|Basis of strength ingredients delimited by !
tm_set|Character|262|Theraopeutic moieties delimited by !
sub_str_dosage_set|Character|602|Strength and optional dosage delimited by !
mp_table_set|Character|1426|Misleading column name, but it is the basis for ntp and mp formal names. Delimited by " and "
ai_unii_set|Character|266|US Active ingredient code delimited by !
am_unii_set|Character|277|US Active moiety code delimited by !

**products**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
dpd_pharm_form|Character|40|What form does the drug take?
dpd_route_admin|Character|32|Where is the drug administered?
DRUG_CODE|Numeric|5|Code for identifying a drug (not as unique as DIN)
extract|Character|8|Active, inactive or approved
DRUG_IDENTIFICATION_NUMBER|Character|8|Unique product identifier
LAST_UPDATE_DATE|Character (Date)|11|DD-MMM-YYYY
BRAND_NAME|Character|135|Brand name for the specific drug
NUMBER_OF_AIS|Numeric|2|The number of active ingredients in the drug
COMPANY_NAME|Character|80|Name of company who produces the drug
COMPANY_CODE|Numeric|5|Company code for reference
ROUTE_OF_ADMINISTRATION_CODE|Numeric|3|Code mapped to dpd_route_admin
PHARM_FORM_CODE|Numeric|3|Code mapped to dpd_pharm_admin
TC_ATC_NUMBER|Character|7|
TC_ATC|Character|TBD|
TC_AHFS_NUMBER|Character|TBD|
TC_AHFS|Character|TBD|
ntp_dose_form|Character|53|ntp mapping for each route and pharm form.

**mapping_table**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
DRUG_IDENTIFICATION_NUMBER|Character|8|Unique product identifier
formal_description_ntp|Character|183|Follows the format "basis of strength, (precise ingredient), strength and dosage, ntp dose form"
ntp_code|Numeric|7|Unique ntp identifier
formal_desciption_tm|Character|55|Follows the format "therapeutic moiety(s)"
tm_code|Numeric|7|Unique tm identifier
