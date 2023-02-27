DROP SCHEMA IF EXISTS dpd CASCADE;
CREATE SCHEMA dpd;

CREATE TABLE dpd.drug_product (
    extract text DEFAULT 'active',
    drug_code integer NOT NULL,
    product_categorization text,
    class text,
    drug_identification_number text NOT NULL,
    brand_name text NOT NULL,
    descriptor text,
    pediatric_flag text,
    accession_number text,
    number_of_ais text,
    last_update_date date,
    ai_group_no text,
    class_f text,
    brand_name_f text,
    descriptor_f text
) WITH (oids = false);

CREATE TABLE dpd.packaging (
    extract text DEFAULT 'active',
    drug_code integer NOT NULL,
    upc text,
    package_size_unit text,
    package_type text,
    package_size text,
    product_information text,
    package_size_unit_f text,
    package_type_f text
) WITH (oids = false);

CREATE TABLE dpd.pharmaceutical_form (
    extract text DEFAULT 'active',
    drug_code integer NOT NULL,
    pharm_form_code integer,
    pharmaceutical_form text,
    pharmaceutical_form_f text
) WITH (oids = false);

CREATE TABLE dpd.pharmaceutical_std (
    extract text DEFAULT 'active',
    drug_code integer NOT NULL,
    pharmaceutical_std text
) WITH (oids = false);

CREATE TABLE dpd.schedule (
    extract text DEFAULT 'active',
    drug_code integer NOT NULL,
    schedule text,
    schedule_f text
) WITH (oids = false);

CREATE TABLE dpd.status (
    extract text DEFAULT 'active',
    drug_code integer NOT NULL,
    current_status_flag text,
    status text,
    history_date date,
    status_f text,
    lot_number text,
    expiration_date date
) WITH (oids = false);

CREATE TABLE dpd.therapeutic_class (
    extract text DEFAULT 'active',
    drug_code integer NOT NULL,
    tc_atc_number text,
    tc_atc text,
    tc_ahfs_number text,
    tc_ahfs text,
    tc_atc_f text,
    tc_ahfs_f text
) WITH (oids = false);

CREATE TABLE dpd.vet_species (
    extract text DEFAULT 'active',
    drug_code integer NOT NULL,
    vet_species text,
    vet_sub_species text,
    vet_species_f text
) WITH (oids = false);

CREATE TABLE dpd.active_ingredient (
    extract text DEFAULT 'active',
    drug_code integer NOT NULL,
    active_ingredient_code integer NOT NULL,
    ingredient text NOT NULL,
    ingredient_supplied_ind text,
    strength text NOT NULL,
    strength_unit text NOT NULL,
    strength_type text,
    dosage_value text,
    base text,
    dosage_unit text,
    notes text,
    ingredient_f text,
    strength_unit_f text,
    strength_type_f text,
    dosage_unit_f text
) WITH (oids = false);

CREATE TABLE dpd.companies (
    extract text DEFAULT 'active',
    drug_code integer NOT NULL,
    mfr_code text,
    company_code integer NOT NULL,
    company_name text NOT NULL,
    company_type text,
    address_mailing_flag text,
    address_billing_flag text,
    address_notification_flag text,
    address_other text,
    suite_number text,
    street_name text,
    city_name text,
    province text,
    country text,
    postal_code text,
    post_office_box text,
    province_f text,
    country_f text
) WITH (oids = false);

CREATE TABLE dpd.route (
    extract text DEFAULT 'active',
    drug_code integer NOT NULL,
    route_of_administration_code text,
    route_of_administration text,
    route_of_administration_f text
) WITH (oids = false);

CREATE TABLE dpd.opioid (
    extract text DEFAULT 'active',
    drug_code integer NOT NULL,
    policy_type integer DEFAULT 500001,
    policy_reference varchar DEFAULT 'http://www.gazette.gc.ca/rp-pr/p1/2017/2017-06-17/html/reg8-eng.php'
) WITH (oids = false);
