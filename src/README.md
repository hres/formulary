#Auto-generated Canadian Clinical Drug List

### Data Description

#### Main Tables

##### All strings are coded in UTF-8

**ntp_table**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
ntp_code|Numeric|7|Unique meaningless non-proprietary therapeutic product identifier assigned by Health Canada.
ntp_formal_name|String|500|The unambiguous description of the Non-proprietary Therapeutic Product that includes details necessary to distinguish it from other similar products.
ntp_en_description|String|500|The user-friendly English description that may be used for web applications or the user interface for any system. *NB: Not present in the files currently.*
ntp_fr_description|String|500|The user-friendly French description that may be used for web applications or the user interface for any system. *NB: Not present in the files currently.*
ntp_status|String|8|The lifecycle state for the product. Allowable values for status are "Active", "Inactive".
ntp_status_effective_time|String (Date)|8|The date of the product status in this file. Format = YYYYMMDD.
ntp_type|String|8|This attribute is used to differentiate combination products. Values = Combination product or Empty. *NB: Not present in the files currently.*


**tm_table**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
tm_code|Numeric|7|Unique meaningless therapeutic moiety identifier assigned by Health Canada.
tm_formal_name|String|500|The unambiguous description of the therapeutic moiety that includes details necessary to distinguish it from other similar products.
tm_status|String|8|The lifecycle state for the product. Allowable values for status are "Active", "Inactive".
tm_status_effective_time|String (Date)|8|The date of the product status in this file. Format = YYYYMMDD.


**mp_table**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
mp_code|String|8|It is intended to be used as the unique identifier to represent a Manufactured Product. It will include the Health Canada assigned DIN and NPN that is currently published as part of the DPD.
mp_formal_name|String|500|The unambiguous description of the Manufactured Product that includes details necessary to distinguish it from other similar products.
mp_en_description|String|500|The user-friendly English description that may be used for web applications or the user interface for any system. *NB: Not present in the files currently.*
mp_fr_description|String|500|The user-friendly French description that may be used for web applications or the user interface for any system. *NB: Not present in the files currently.*
mp_status|String|8|The lifecycle state for the product. Allowable values for status are "Active", "Inactive".
mp_status_effective_time|String (Date)|8|The date of the product status in this file. Format = YYYYMMDD.


**mp_ntp_tm_relationship_table**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
mp_code|String|8|It is intended to be used as the unique identifier to represent a Manufactured Product. It will include the Health Canada assigned DIN and NPN that is currently published as part of the DPD.
mp_formal_name|String|500|The unambiguous description of the Manufactured Product that includes details necessary to distinguish it from other similar products.
ntp_code|Numeric|7|Unique meaningless non-proprietary therapeutic product identifier assigned by Health Canada.
ntp_formal_name|String|500|The unambiguous description of the Non-proprietary Therapeutic Product that includes details necessary to distinguish it from other similar products.
tm_code|Numeric|7|Unique meaningless therapeutic moiety identifier assigned by Health Canada.
tm_formal_name|String|500|The unambiguous description of the therapeutic moiety that includes details necessary to distinguish it from other similar products.

<!--

#### Other Tables

**substance_sets**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
DRUG_CODE|Numeric|5|Code for identifying a drug (not as unique as DIN)
sub_set|String|924|Precise ingredients delimited by !
bos_set|String|924|Basis of strength ingredients delimited by !
tm_set|String|262|Theraopeutic moieties delimited by !
sub_str_dosage_set|String|602|Strength and optional dosage delimited by !
mp_table_set|String|1426|Misleading column name, but it is the basis for ntp and mp formal names. Delimited by " and "
ai_unii_set|String|266|US Active ingredient code delimited by !
am_unii_set|String|277|US Active moiety code delimited by !

**products**

Column | Data Type | Length | Description
------ | --------- | ------ | -----------
dpd_pharm_form|String|40|What form does the drug take?
dpd_route_admin|String|32|Where is the drug administered?
DRUG_CODE|Numeric|5|Code for identifying a drug (not as unique as DIN)
extract|String|8|Active, inactive or approved
DRUG_IDENTIFICATION_NUMBER|String|8|Unique product identifier
LAST_UPDATE_DATE|String (Date)|11|DD-MMM-YYYY
BRAND_NAME|String|135|Brand name for the specific drug
NUMBER_OF_AIS|Numeric|2|The number of active ingredients in the drug
COMPANY_NAME|String|80|Name of company who produces the drug
COMPANY_CODE|Numeric|5|Company code for reference
ROUTE_OF_ADMINISTRATION_CODE|Numeric|3|Code mapped to dpd_route_admin
PHARM_FORM_CODE|Numeric|3|Code mapped to dpd_pharm_admin
TC_ATC_NUMBER|String|7|
TC_ATC|String|TBD|
TC_AHFS_NUMBER|String|TBD|
TC_AHFS|String|TBD|
ntp_dose_form|String|53|ntp mapping for each route and pharm form.


-->