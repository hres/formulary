SET check_function_bodies = false;
-- ddl-end --

CREATE SCHEMA ccdd;
ALTER SCHEMA ccdd OWNER TO postgres;
SET search_path TO pg_catalog,public,dpd,ccdd;

CREATE TABLE ccdd.combination_products_csv(
	drug_code bigint NOT NULL,
	drug_identification_number varchar,
	mp_formal_name varchar,
	ntp_formal_name varchar,
	ntp_type varchar,
  mp_formal_name_fr varchar,
  ntp_formal_name_fr varchar,
	CONSTRAINT combination_products_csv_pk PRIMARY KEY (drug_code)

);
ALTER TABLE ccdd.combination_products_csv OWNER TO postgres;
--
CREATE TABLE ccdd.ingredient_stem_csv(
	ccdd varchar,
	top250name varchar,
	dpd_ingredient varchar,
	ing_stem varchar,
	hydrate varchar,
	ntp_ing varchar,
  ing_stem_fr varchar,
  ntp_ing_fr varchar
);
-- ddl-end --
ALTER TABLE ccdd.ingredient_stem_csv OWNER TO postgres;
--
CREATE TABLE ccdd.unit_of_presentation_csv(
	drug_code bigint,
	unit_of_presentation varchar,
	uop_size varchar,
	uop_unit_of_measure varchar,
	calculation varchar,
	uop_size_insert varchar,
  unit_of_presentation_fr varchar
);
-- ddl-end --
ALTER TABLE ccdd.unit_of_presentation_csv OWNER TO postgres;
--
CREATE TABLE ccdd.ntp_dosage_forms(
	ntp_dosage_form_code bigint,
	ntp_dosage_form text,
	route_of_administration_code text,
	route_of_administration text,
	route_of_administration_f text,
	pharm_form_code text,
	pharmaceutical_form text,
	pharmaceutical_form_f text,
  ntp_dosage_form_fr text
);
-- ddl-end --
ALTER TABLE ccdd.ntp_dosage_forms OWNER TO postgres;
--
CREATE TABLE ccdd.mp_brand_override(
	drug_code bigint NOT NULL,
	brand text,
	CONSTRAINT mp_brand_override_pk PRIMARY KEY (drug_code)

);
-- ddl-end --
ALTER TABLE ccdd.mp_brand_override OWNER TO postgres;

CREATE TABLE ccdd.tm_definition(
	code bigint NOT NULL,
	formal_name text NOT NULL,
  formal_name_fr text,
	CONSTRAINT tm_definition_pk PRIMARY KEY (code)
);
-- ddl-end --
ALTER TABLE ccdd.tm_definition OWNER TO postgres;
--
CREATE TABLE ccdd.ntp_definition(
	code bigint NOT NULL,
	formal_name text NOT NULL,
  formal_name_fr text,
	CONSTRAINT ntp_definition_pk PRIMARY KEY (code),
	CONSTRAINT ntp_definition_name UNIQUE (formal_name)
);
-- ddl-end --
ALTER TABLE ccdd.ntp_definition OWNER TO postgres;
--
CREATE TABLE ccdd.pseudodin_map(
	pseudodin bigint NOT NULL,
	drug_code bigint NOT NULL,
	unit_of_presentation varchar NOT NULL,
	uop_size_amount varchar NOT NULL,
	uop_size_unit varchar NOT NULL,
  unit_of_presentation_fr varchar,
	CONSTRAINT pseudodin_map_pk PRIMARY KEY (pseudodin)

);
-- ddl-end --
ALTER TABLE ccdd.pseudodin_map OWNER TO postgres;
--
CREATE TABLE ccdd.mp_whitelist(
	drug_code varchar NOT NULL,
	CONSTRAINT mp_whitelist_pk PRIMARY KEY (drug_code)

);
-- ddl-end --
ALTER TABLE ccdd.mp_whitelist OWNER TO postgres;
-- -- ddl-end --
--
CREATE TABLE ccdd.mp_blacklist(
	drug_code varchar NOT NULL,
	CONSTRAINT mp_blacklist_pk PRIMARY KEY (drug_code)

);
-- ddl-end --
ALTER TABLE ccdd.mp_blacklist OWNER TO postgres;
--
CREATE TABLE ccdd.ntp_deprecations(
	code varchar NOT NULL,
  status_effective_date date NOT NULL,
	CONSTRAINT ntp_deprecations_pk PRIMARY KEY (code)

);
-- ddl-end --
ALTER TABLE ccdd.ntp_deprecations OWNER TO postgres;
--
CREATE TABLE ccdd.tm_deprecations(
	code varchar NOT NULL,
	status_effective_time date NOT NULL,
	CONSTRAINT tm_deprecations_pk PRIMARY KEY (code)
);
-- ddl-end --
ALTER TABLE ccdd.tm_deprecations OWNER TO postgres;

CREATE TABLE ccdd.mp_deprecations(
	mp_code varchar NOT NULL,
	CONSTRAINT mp_deprecations_pk PRIMARY KEY (mp_code)

);
-- ddl-end --
ALTER TABLE ccdd.mp_deprecations OWNER TO postgres;

CREATE TABLE ccdd.tm_filter(
	tm_code varchar
);
-- ddl-end --
ALTER TABLE ccdd.tm_filter OWNER TO postgres;

CREATE TABLE ccdd.tm_groupings(
	tm_code bigint NOT NULL,
	policy_type integer NOT NULL,
	policy_reference varchar NOT NULL
);
-- ddl-end --
ALTER TABLE ccdd.tm_groupings OWNER TO postgres;
