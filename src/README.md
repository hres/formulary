Auto-generated Clinical Drug List

Start from DPD monthly extract

Filter to Human Active (add in approved in future version)

-------------------------------------------------------------------------------

### Data Description

ntp_table

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
ntp_code|String|7|Unique ntp identifier
formal_description_ntp|String|TBD|Follows the format "basis of strength, (precise ingredient), strength and dosage, ntp dose form"
en_display|String|TBD|English description
fr_display|String|TBD|French description
status|String|16|Active, inactive, or approved
ntp_status_effective_time|String (Date)|8|YYYYMMDD


tm_table

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
tm_code|String|7|Unique tm identifier
formal_desciption_tm|String|TBD|Follows the format "therapeutic moiety(s)"
en_display|String|TBD|English description
fr_display|String|TBD|French description
status|String|16|Active, inactive, or approved
tm_status_effective_time|String (Date)|8|YYYYMMDD


mp_table

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
DRUG_IDENTIFICATION_NUMBER|String|8|Unique product identifier
formal_description_mp|String|TBD|Follows the format "BRAND NAME [basis of strength, (precise ingredient), strength and dosage, ntp dose form] COMPANY NAME"
en_display|String|TBD|English description
fr_display|String|TBD|French description
product_status|String|16|Active, inactive or approved
product_status_effective_time|String (Date)|8|YYYYMMDD