-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.0
-- PostgreSQL version: 9.6
-- Project Site: pgmodeler.com.br
-- Model Author: ---

SET check_function_bodies = false;
-- ddl-end --


-- Database creation must be done outside an multicommand file.
-- These commands were put in this file only for convenience.
-- -- object: sandbox | type: DATABASE --
-- -- DROP DATABASE IF EXISTS sandbox;
-- CREATE DATABASE sandbox
-- ;
-- -- ddl-end --
-- 

-- -- object: dpd | type: SCHEMA --
-- -- DROP SCHEMA IF EXISTS dpd CASCADE;
-- CREATE SCHEMA dpd;
-- -- ddl-end --
-- ALTER SCHEMA dpd OWNER TO postgres;
-- -- ddl-end --
-- 
-- object: ccdd | type: SCHEMA --
-- DROP SCHEMA IF EXISTS ccdd CASCADE;
CREATE SCHEMA ccdd;
-- ddl-end --
ALTER SCHEMA ccdd OWNER TO postgres;
-- ddl-end --

SET search_path TO pg_catalog,public,dpd,ccdd;
-- ddl-end --

-- object: public.dpd_drug | type: TABLE --
-- DROP TABLE IF EXISTS public.dpd_drug CASCADE;
CREATE TABLE public.dpd_drug(
	code bigint NOT NULL,
	din varchar,
	brand_name_en varchar,
	company_name varchar,
	CONSTRAINT dpd_drug_pk PRIMARY KEY (code)

);
-- ddl-end --
ALTER TABLE public.dpd_drug OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_ingredient | type: TABLE --
-- DROP TABLE IF EXISTS public.dpd_ingredient CASCADE;
CREATE TABLE public.dpd_ingredient(
	dpd_named_ingredient_name varchar NOT NULL,
	dpd_active_ingredient_code_id bigint NOT NULL,
	CONSTRAINT dpd_ingredient_pk PRIMARY KEY (dpd_named_ingredient_name,dpd_active_ingredient_code_id)

);
-- ddl-end --
ALTER TABLE public.dpd_ingredient OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_named_ingredient | type: TABLE --
-- DROP TABLE IF EXISTS public.dpd_named_ingredient CASCADE;
CREATE TABLE public.dpd_named_ingredient(
	name varchar NOT NULL,
	CONSTRAINT dpd_named_ingredient_pk PRIMARY KEY (name)

);
-- ddl-end --
ALTER TABLE public.dpd_named_ingredient OWNER TO postgres;
-- ddl-end --

-- object: dpd_named_ingredient_fk | type: CONSTRAINT --
-- ALTER TABLE public.dpd_ingredient DROP CONSTRAINT IF EXISTS dpd_named_ingredient_fk CASCADE;
ALTER TABLE public.dpd_ingredient ADD CONSTRAINT dpd_named_ingredient_fk FOREIGN KEY (dpd_named_ingredient_name)
REFERENCES public.dpd_named_ingredient (name) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: public.dpd_drug_ingredient | type: TABLE --
-- DROP TABLE IF EXISTS public.dpd_drug_ingredient CASCADE;
CREATE TABLE public.dpd_drug_ingredient(
	dpd_drug_code bigint NOT NULL,
	dpd_named_ingredient_name varchar NOT NULL,
	dpd_active_ingredient_code_id bigint NOT NULL,
	CONSTRAINT dpd_drug_ingredient_pk PRIMARY KEY (dpd_drug_code,dpd_named_ingredient_name,dpd_active_ingredient_code_id)

);
-- ddl-end --
ALTER TABLE public.dpd_drug_ingredient OWNER TO postgres;
-- ddl-end --

-- object: dpd_drug_fk | type: CONSTRAINT --
-- ALTER TABLE public.dpd_drug_ingredient DROP CONSTRAINT IF EXISTS dpd_drug_fk CASCADE;
ALTER TABLE public.dpd_drug_ingredient ADD CONSTRAINT dpd_drug_fk FOREIGN KEY (dpd_drug_code)
REFERENCES public.dpd_drug (code) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: public.dpd_active_ingredient_code | type: TABLE --
-- DROP TABLE IF EXISTS public.dpd_active_ingredient_code CASCADE;
CREATE TABLE public.dpd_active_ingredient_code(
	id bigint NOT NULL,
	CONSTRAINT dpd_active_ingredient_code_pk PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.dpd_active_ingredient_code OWNER TO postgres;
-- ddl-end --

-- object: dpd_active_ingredient_code_fk | type: CONSTRAINT --
-- ALTER TABLE public.dpd_ingredient DROP CONSTRAINT IF EXISTS dpd_active_ingredient_code_fk CASCADE;
ALTER TABLE public.dpd_ingredient ADD CONSTRAINT dpd_active_ingredient_code_fk FOREIGN KEY (dpd_active_ingredient_code_id)
REFERENCES public.dpd_active_ingredient_code (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: dpd_ingredient_fk | type: CONSTRAINT --
-- ALTER TABLE public.dpd_drug_ingredient DROP CONSTRAINT IF EXISTS dpd_ingredient_fk CASCADE;
ALTER TABLE public.dpd_drug_ingredient ADD CONSTRAINT dpd_ingredient_fk FOREIGN KEY (dpd_named_ingredient_name,dpd_active_ingredient_code_id)
REFERENCES public.dpd_ingredient (dpd_named_ingredient_name,dpd_active_ingredient_code_id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: public.ccdd_ingredient_stem | type: TABLE --
-- DROP TABLE IF EXISTS public.ccdd_ingredient_stem CASCADE;
CREATE TABLE public.ccdd_ingredient_stem(
	name varchar NOT NULL,
	CONSTRAINT ccdd_ingredient_stem_pk PRIMARY KEY (name)

);
-- ddl-end --
ALTER TABLE public.ccdd_ingredient_stem OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_ntp_ingredient | type: TABLE --
-- DROP TABLE IF EXISTS public.ccdd_ntp_ingredient CASCADE;
CREATE TABLE public.ccdd_ntp_ingredient(
	name varchar NOT NULL,
	ccdd_ingredient_stem_name varchar NOT NULL,
	CONSTRAINT ccdd_ntp_ingredient_pk PRIMARY KEY (name)

);
-- ddl-end --
ALTER TABLE public.ccdd_ntp_ingredient OWNER TO postgres;
-- ddl-end --

-- object: ccdd_ingredient_stem_fk | type: CONSTRAINT --
-- ALTER TABLE public.ccdd_ntp_ingredient DROP CONSTRAINT IF EXISTS ccdd_ingredient_stem_fk CASCADE;
ALTER TABLE public.ccdd_ntp_ingredient ADD CONSTRAINT ccdd_ingredient_stem_fk FOREIGN KEY (ccdd_ingredient_stem_name)
REFERENCES public.ccdd_ingredient_stem (name) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: public.ccdd_dpd_ingredient_ntp_mapping | type: TABLE --
-- DROP TABLE IF EXISTS public.ccdd_dpd_ingredient_ntp_mapping CASCADE;
CREATE TABLE public.ccdd_dpd_ingredient_ntp_mapping(
	dpd_named_ingredient_name varchar NOT NULL,
	ccdd bool,
	ccdd_ntp_ingredient_name varchar NOT NULL
);
-- ddl-end --
ALTER TABLE public.ccdd_dpd_ingredient_ntp_mapping OWNER TO postgres;
-- ddl-end --

-- object: dpd_named_ingredient_fk | type: CONSTRAINT --
-- ALTER TABLE public.ccdd_dpd_ingredient_ntp_mapping DROP CONSTRAINT IF EXISTS dpd_named_ingredient_fk CASCADE;
ALTER TABLE public.ccdd_dpd_ingredient_ntp_mapping ADD CONSTRAINT dpd_named_ingredient_fk FOREIGN KEY (dpd_named_ingredient_name)
REFERENCES public.dpd_named_ingredient (name) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: ccdd_dpd_ingredient_ntp_mapping_uq | type: CONSTRAINT --
-- ALTER TABLE public.ccdd_dpd_ingredient_ntp_mapping DROP CONSTRAINT IF EXISTS ccdd_dpd_ingredient_ntp_mapping_uq CASCADE;
ALTER TABLE public.ccdd_dpd_ingredient_ntp_mapping ADD CONSTRAINT ccdd_dpd_ingredient_ntp_mapping_uq UNIQUE (dpd_named_ingredient_name);
-- ddl-end --

-- object: ccdd_ntp_ingredient_fk | type: CONSTRAINT --
-- ALTER TABLE public.ccdd_dpd_ingredient_ntp_mapping DROP CONSTRAINT IF EXISTS ccdd_ntp_ingredient_fk CASCADE;
ALTER TABLE public.ccdd_dpd_ingredient_ntp_mapping ADD CONSTRAINT ccdd_ntp_ingredient_fk FOREIGN KEY (ccdd_ntp_ingredient_name)
REFERENCES public.ccdd_ntp_ingredient (name) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: public.ccdd_tm | type: TABLE --
-- DROP TABLE IF EXISTS public.ccdd_tm CASCADE;
CREATE TABLE public.ccdd_tm(
	code bigint NOT NULL,
	CONSTRAINT tm_pk PRIMARY KEY (code)

);
-- ddl-end --
ALTER TABLE public.ccdd_tm OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_dosage_form | type: TABLE --
-- DROP TABLE IF EXISTS public.ccdd_dosage_form CASCADE;
CREATE TABLE public.ccdd_dosage_form(
	name varchar NOT NULL,
	code bigint,
	CONSTRAINT ccdd_dosage_form_pk PRIMARY KEY (name),
	CONSTRAINT ccdd_dosage_form_code_unique UNIQUE (code)

);
-- ddl-end --
ALTER TABLE public.ccdd_dosage_form OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_dosage_form_mapping | type: TABLE --
-- DROP TABLE IF EXISTS public.ccdd_dosage_form_mapping CASCADE;
CREATE TABLE public.ccdd_dosage_form_mapping(
	id varchar NOT NULL,
	ccdd_dosage_form_name varchar NOT NULL,
	CONSTRAINT ccdd_dosage_form_mapping_pk PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.ccdd_dosage_form_mapping OWNER TO postgres;
-- ddl-end --

-- object: ccdd_dosage_form_fk | type: CONSTRAINT --
-- ALTER TABLE public.ccdd_dosage_form_mapping DROP CONSTRAINT IF EXISTS ccdd_dosage_form_fk CASCADE;
ALTER TABLE public.ccdd_dosage_form_mapping ADD CONSTRAINT ccdd_dosage_form_fk FOREIGN KEY (ccdd_dosage_form_name)
REFERENCES public.ccdd_dosage_form (name) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: public.dpd_route | type: TABLE --
-- DROP TABLE IF EXISTS public.dpd_route CASCADE;
CREATE TABLE public.dpd_route(
	code bigint NOT NULL,
	name_en varchar,
	CONSTRAINT dpd_route_pk PRIMARY KEY (code)

);
-- ddl-end --
ALTER TABLE public.dpd_route OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_form | type: TABLE --
-- DROP TABLE IF EXISTS public.dpd_form CASCADE;
CREATE TABLE public.dpd_form(
	code bigint NOT NULL,
	name_en varchar,
	CONSTRAINT dpd_form_pk PRIMARY KEY (code)

);
-- ddl-end --
ALTER TABLE public.dpd_form OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_combination_product | type: TABLE --
-- DROP TABLE IF EXISTS public.ccdd_combination_product CASCADE;
CREATE TABLE public.ccdd_combination_product(
	dpd_drug_code bigint NOT NULL,
	mp_formal_name varchar,
	ntp_formal_name varchar,
	ntp_type varchar,
	CONSTRAINT ccdd_combination_product_pk PRIMARY KEY (dpd_drug_code)

);
-- ddl-end --
ALTER TABLE public.ccdd_combination_product OWNER TO postgres;
-- ddl-end --

-- object: dpd_drug_fk | type: CONSTRAINT --
-- ALTER TABLE public.ccdd_combination_product DROP CONSTRAINT IF EXISTS dpd_drug_fk CASCADE;
ALTER TABLE public.ccdd_combination_product ADD CONSTRAINT dpd_drug_fk FOREIGN KEY (dpd_drug_code)
REFERENCES public.dpd_drug (code) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: ccdd_combination_product_uq | type: CONSTRAINT --
-- ALTER TABLE public.ccdd_combination_product DROP CONSTRAINT IF EXISTS ccdd_combination_product_uq CASCADE;
ALTER TABLE public.ccdd_combination_product ADD CONSTRAINT ccdd_combination_product_uq UNIQUE (dpd_drug_code);
-- ddl-end --

-- object: public.ccdd_presentation | type: TABLE --
-- DROP TABLE IF EXISTS public.ccdd_presentation CASCADE;
CREATE TABLE public.ccdd_presentation(
	pseudodin varchar NOT NULL,
	dpd_drug_code bigint NOT NULL,
	unit varchar,
	size_amount double precision,
	size_unit varchar,
	strength_is_per_size_unit bool,
	CONSTRAINT ccdd_presentation_pk PRIMARY KEY (pseudodin)

);
-- ddl-end --
ALTER TABLE public.ccdd_presentation OWNER TO postgres;
-- ddl-end --

-- object: dpd_drug_fk | type: CONSTRAINT --
-- ALTER TABLE public.ccdd_presentation DROP CONSTRAINT IF EXISTS dpd_drug_fk CASCADE;
ALTER TABLE public.ccdd_presentation ADD CONSTRAINT dpd_drug_fk FOREIGN KEY (dpd_drug_code)
REFERENCES public.dpd_drug (code) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- -- object: dpd.active_ingredient | type: TABLE --
-- -- DROP TABLE IF EXISTS dpd.active_ingredient CASCADE;
-- CREATE TABLE dpd.active_ingredient(
-- 	"extract" text DEFAULT 'approved',
-- 	drug_code integer NOT NULL,
-- 	active_ingredient_code integer NOT NULL,
-- 	ingredient text NOT NULL,
-- 	ingredient_supplied_ind text,
-- 	strength text NOT NULL,
-- 	strength_unit text NOT NULL,
-- 	strength_type text,
-- 	dosage_value text,
-- 	base text,
-- 	dosage_unit text,
-- 	notes text,
-- 	ingredient_f text,
-- 	strength_unit_f text,
-- 	strength_type_f text,
-- 	dosage_unit_f text
-- );
-- -- ddl-end --
-- ALTER TABLE dpd.active_ingredient OWNER TO postgres;
-- -- ddl-end --
-- 
-- -- object: dpd.companies | type: TABLE --
-- -- DROP TABLE IF EXISTS dpd.companies CASCADE;
-- CREATE TABLE dpd.companies(
-- 	"extract" text DEFAULT 'approved',
-- 	drug_code integer NOT NULL,
-- 	mfr_code text,
-- 	company_code integer NOT NULL,
-- 	company_name text NOT NULL,
-- 	company_type text,
-- 	address_mailing_flag text,
-- 	address_billing_flag text,
-- 	address_notification_flag text,
-- 	address_other text,
-- 	suite_number text,
-- 	street_name text,
-- 	city_name text,
-- 	province text,
-- 	country text,
-- 	postal_code text,
-- 	post_office_box text,
-- 	province_f text,
-- 	country_f text
-- );
-- -- ddl-end --
-- ALTER TABLE dpd.companies OWNER TO postgres;
-- -- ddl-end --
-- 
-- -- object: dpd.drug_product | type: TABLE --
-- -- DROP TABLE IF EXISTS dpd.drug_product CASCADE;
-- CREATE TABLE dpd.drug_product(
-- 	"extract" text NOT NULL DEFAULT 'approved',
-- 	drug_code integer NOT NULL,
-- 	product_categorization text,
-- 	class text,
-- 	drug_identification_number text NOT NULL,
-- 	brand_name text NOT NULL,
-- 	descriptor text,
-- 	pediatric_flag text,
-- 	accession_number text,
-- 	number_of_ais text,
-- 	last_update_date date,
-- 	ai_group_no text,
-- 	class_f text,
-- 	brand_name_f text,
-- 	descriptor_f text,
-- 	CONSTRAINT drug_product_drug_code PRIMARY KEY ("extract",drug_code)
-- 
-- );
-- -- ddl-end --
-- ALTER TABLE dpd.drug_product OWNER TO postgres;
-- -- ddl-end --
-- 
-- -- object: dpd.pharmaceutical_form | type: TABLE --
-- -- DROP TABLE IF EXISTS dpd.pharmaceutical_form CASCADE;
-- CREATE TABLE dpd.pharmaceutical_form(
-- 	"extract" text DEFAULT 'approved',
-- 	drug_code integer NOT NULL,
-- 	pharm_form_code integer,
-- 	pharmaceutical_form text,
-- 	pharmaceutical_form_f text
-- );
-- -- ddl-end --
-- ALTER TABLE dpd.pharmaceutical_form OWNER TO postgres;
-- -- ddl-end --
-- 
-- -- object: dpd.route | type: TABLE --
-- -- DROP TABLE IF EXISTS dpd.route CASCADE;
-- CREATE TABLE dpd.route(
-- 	"extract" text DEFAULT 'approved',
-- 	drug_code integer NOT NULL,
-- 	route_of_administration_code text,
-- 	route_of_administration text,
-- 	route_of_administration_f text
-- );
-- -- ddl-end --
-- ALTER TABLE dpd.route OWNER TO postgres;
-- -- ddl-end --
-- 
-- -- object: dpd.status | type: TABLE --
-- -- DROP TABLE IF EXISTS dpd.status CASCADE;
-- CREATE TABLE dpd.status(
-- 	"extract" text DEFAULT 'approved',
-- 	drug_code integer NOT NULL,
-- 	current_status_flag text,
-- 	status text,
-- 	history_date date,
-- 	status_f text,
-- 	lot_number text,
-- 	expiration_date text
-- );
-- -- ddl-end --
-- ALTER TABLE dpd.status OWNER TO postgres;
-- -- ddl-end --
-- 
-- object: public.dpd_drug_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_drug_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_drug_source
AS 

SELECT
   dp.drug_code AS code,
   dp.drug_identification_number AS din,
   dp.brand_name AS brand_name_en,
   (SELECT
   dc.company_name
FROM
   dpd.companies AS dc
WHERE
   dc.drug_code = dp.drug_code) AS company_name
FROM
   dpd.drug_product AS dp
WHERE
   dp.class = 'Human' AND (
EXISTS(select * from dpd.status s where
	s.drug_code = dp.drug_code and
	s.current_status_flag = 'Y' and
	s.history_date > '2017-07-04' and
	s.status IN ('DORMANT', 'CANCELLED POST MARKET')
)
OR
(
	EXISTS(select * from dpd.status s where
		s.drug_code = dp.drug_code and
		s.current_status_flag = 'Y' and
		s.status = 'MARKETED'
	) AND
	EXISTS(select * from dpd.status s where
		s.drug_code = dp.drug_code and
		s.status = 'MARKETED' and
		s.history_date < '2017-07-04'
	)
)
);
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_drug_source OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_drug_form | type: TABLE --
-- DROP TABLE IF EXISTS public.dpd_drug_form CASCADE;
CREATE TABLE public.dpd_drug_form(
	dpd_drug_code bigint NOT NULL,
	dpd_form_code bigint NOT NULL,
	CONSTRAINT dpd_drug_form_pk PRIMARY KEY (dpd_drug_code,dpd_form_code)

);
-- ddl-end --
ALTER TABLE public.dpd_drug_form OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_drug_route | type: TABLE --
-- DROP TABLE IF EXISTS public.dpd_drug_route CASCADE;
CREATE TABLE public.dpd_drug_route(
	dpd_drug_code bigint NOT NULL,
	dpd_route_code bigint NOT NULL,
	CONSTRAINT dpd_drug_route_pk PRIMARY KEY (dpd_drug_code,dpd_route_code)

);
-- ddl-end --
ALTER TABLE public.dpd_drug_route OWNER TO postgres;
-- ddl-end --

-- object: dpd_drug_fk | type: CONSTRAINT --
-- ALTER TABLE public.dpd_drug_form DROP CONSTRAINT IF EXISTS dpd_drug_fk CASCADE;
ALTER TABLE public.dpd_drug_form ADD CONSTRAINT dpd_drug_fk FOREIGN KEY (dpd_drug_code)
REFERENCES public.dpd_drug (code) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: dpd_drug_fk | type: CONSTRAINT --
-- ALTER TABLE public.dpd_drug_route DROP CONSTRAINT IF EXISTS dpd_drug_fk CASCADE;
ALTER TABLE public.dpd_drug_route ADD CONSTRAINT dpd_drug_fk FOREIGN KEY (dpd_drug_code)
REFERENCES public.dpd_drug (code) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: dpd_form_fk | type: CONSTRAINT --
-- ALTER TABLE public.dpd_drug_form DROP CONSTRAINT IF EXISTS dpd_form_fk CASCADE;
ALTER TABLE public.dpd_drug_form ADD CONSTRAINT dpd_form_fk FOREIGN KEY (dpd_form_code)
REFERENCES public.dpd_form (code) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: dpd_route_fk | type: CONSTRAINT --
-- ALTER TABLE public.dpd_drug_route DROP CONSTRAINT IF EXISTS dpd_route_fk CASCADE;
ALTER TABLE public.dpd_drug_route ADD CONSTRAINT dpd_route_fk FOREIGN KEY (dpd_route_code)
REFERENCES public.dpd_route (code) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: public.dpd_form_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_form_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_form_source
AS 

SELECT
   pf.pharm_form_code AS code,
   pf.pharmaceutical_form AS name_en
FROM
   dpd.pharmaceutical_form AS pf
WHERE
   EXISTS(select * from public.dpd_drug_source ds where ds.code = pf.drug_code)   GROUP BY code, name_en;
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_form_source OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_route_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_route_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_route_source
AS 

SELECT
   CAST(r.route_of_administration_code as bigint) AS code,
   r.route_of_administration AS name_en
FROM
   dpd.route AS r
WHERE
   EXISTS(select * from public.dpd_drug_source ds where ds.code = r.drug_code)   GROUP BY code, name_en;
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_route_source OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_drug_form_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_drug_form_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_drug_form_source
AS 

SELECT
   pf.drug_code AS dpd_drug_code,
   pf.pharm_form_code AS dpd_form_code
FROM
   dpd.pharmaceutical_form AS pf
WHERE
   EXISTS(select * from public.dpd_drug_source ds where ds.code = pf.drug_code);
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_drug_form_source OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_drug_route_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_drug_route_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_drug_route_source
AS 

SELECT
   r.drug_code AS dpd_drug_code,
   CAST(r.route_of_administration_code as bigint) AS dpd_route_code
FROM
   dpd.route AS r
WHERE
   EXISTS(select * from public.dpd_drug_source ds where ds.code = r.drug_code);
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_drug_route_source OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_active_ingredient_code_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_active_ingredient_code_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_active_ingredient_code_source
AS 

SELECT
   ai.active_ingredient_code AS id
FROM
   dpd.active_ingredient AS ai
WHERE
   EXISTS(select * from public.dpd_drug_source ds where ds.code = ai.drug_code)   GROUP BY id;
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_active_ingredient_code_source OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_named_ingredient_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_named_ingredient_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_named_ingredient_source
AS 

SELECT
   ai.ingredient AS name
FROM
   dpd.active_ingredient AS ai
WHERE
   EXISTS(select * from public.dpd_drug_source ds where ds.code = ai.drug_code)   GROUP BY name;
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_named_ingredient_source OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_ingredient_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_ingredient_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_ingredient_source
AS 

SELECT
   ai.ingredient AS dpd_named_ingredient_name,
   ai.active_ingredient_code AS dpd_active_ingredient_code_id
FROM
   dpd.active_ingredient AS ai
WHERE
   EXISTS(select * from public.dpd_drug_source ds where ds.code = ai.drug_code)   GROUP BY dpd_named_ingredient_name, dpd_active_ingredient_code_id;
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_ingredient_source OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_drug_ingredient_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_drug_ingredient_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_drug_ingredient_source
AS 

SELECT
   ai.drug_code AS dpd_drug_code,
   ai.ingredient AS dpd_named_ingredient_name,
   ai.active_ingredient_code AS dpd_active_ingredient_code_id
FROM
   dpd.active_ingredient AS ai
WHERE
   EXISTS(select * from public.dpd_drug_source ds where ds.code = ai.drug_code)   GROUP BY dpd_drug_code, dpd_named_ingredient_name, dpd_active_ingredient_code_id;
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_drug_ingredient_source OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_drug_ingredient_option | type: TABLE --
-- DROP TABLE IF EXISTS public.dpd_drug_ingredient_option CASCADE;
CREATE TABLE public.dpd_drug_ingredient_option(
	dpd_drug_code bigint NOT NULL,
	dpd_named_ingredient_name varchar NOT NULL,
	dpd_active_ingredient_code_id bigint NOT NULL,
	strength_amount double precision NOT NULL,
	strength_unit varchar NOT NULL,
	dosage_amount double precision,
	dosage_unit varchar
);
-- ddl-end --
ALTER TABLE public.dpd_drug_ingredient_option OWNER TO postgres;
-- ddl-end --

-- object: dpd_drug_ingredient_fk | type: CONSTRAINT --
-- ALTER TABLE public.dpd_drug_ingredient_option DROP CONSTRAINT IF EXISTS dpd_drug_ingredient_fk CASCADE;
ALTER TABLE public.dpd_drug_ingredient_option ADD CONSTRAINT dpd_drug_ingredient_fk FOREIGN KEY (dpd_drug_code,dpd_named_ingredient_name,dpd_active_ingredient_code_id)
REFERENCES public.dpd_drug_ingredient (dpd_drug_code,dpd_named_ingredient_name,dpd_active_ingredient_code_id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: public.ccdd_normalized_unit | type: FUNCTION --
-- DROP FUNCTION IF EXISTS public.ccdd_normalized_unit(varchar) CASCADE;
CREATE FUNCTION public.ccdd_normalized_unit ( dpd_unit varchar)
	RETURNS varchar
	LANGUAGE sql
	STABLE 
	RETURNS NULL ON NULL INPUT
	SECURITY INVOKER
	COST 1
	AS $$
SELECT regexp_replace(
	regexp_replace(
		lower(dpd_unit),
		'^ml$', -- whole string must match
		'mL'
	),
	'^act$', -- whole string must match
	'actuation'
);
$$;
-- ddl-end --
ALTER FUNCTION public.ccdd_normalized_unit(varchar) OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_drug_ingredient_option_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_drug_ingredient_option_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_drug_ingredient_option_source
AS 

SELECT
   ai.drug_code AS dpd_drug_code,
   ai.ingredient AS dpd_named_ingredient_name,
   ai.active_ingredient_code AS dpd_active_ingredient_code_id,
   CAST (ai.strength AS double precision) AS strength_amount,
   ccdd_normalized_unit(ai.strength_unit) AS strength_unit,
   CAST (nullif(ai.dosage_value, '') AS double precision) AS dosage_amount,
   ccdd_normalized_unit(ai.dosage_unit) AS dosage_unit
FROM
   dpd.active_ingredient AS ai
WHERE
   EXISTS(select * from public.dpd_drug_source ds where ds.code = ai.drug_code);
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_drug_ingredient_option_source OWNER TO postgres;
-- ddl-end --

-- object: ccdd.ingredient_stem_csv | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.ingredient_stem_csv CASCADE;
CREATE TABLE ccdd.ingredient_stem_csv(
	ccdd varchar,
	top250name varchar,
	dpd_ingredient varchar,
	ing_stem varchar,
	hydrate varchar,
	ntp_ing varchar
);
-- ddl-end --
ALTER TABLE ccdd.ingredient_stem_csv OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_ingredient_stem_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_ingredient_stem_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_ingredient_stem_source
AS 

SELECT
   isc.ing_stem AS name
FROM
   ccdd.ingredient_stem_csv AS isc
WHERE
   exists(select * from dpd_named_ingredient_source dni where dni.name = isc.dpd_ingredient)   GROUP BY name;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_ingredient_stem_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_ntp_ingredient_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_ntp_ingredient_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_ntp_ingredient_source
AS 

SELECT
   isc.ntp_ing AS name,
   isc.ing_stem AS ccdd_ingredient_stem_name
FROM
   ccdd.ingredient_stem_csv AS isc
WHERE
   exists(select * from dpd_named_ingredient_source dni where dni.name = isc.dpd_ingredient)   GROUP BY name, ccdd_ingredient_stem_name;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_ntp_ingredient_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_dpd_ingredient_ntp_mapping_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_dpd_ingredient_ntp_mapping_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_dpd_ingredient_ntp_mapping_source
AS 

SELECT
   isc.dpd_ingredient AS dpd_named_ingredient_name,
   isc.ntp_ing AS ccdd_ntp_ingredient_name,
   coalesce(isc.ccdd = 'Y', false) AS ccdd
FROM
   ccdd.ingredient_stem_csv AS isc
WHERE
   exists(select * from dpd_named_ingredient_source dni where dni.name = isc.dpd_ingredient);
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_dpd_ingredient_ntp_mapping_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_tm_ingredient_stem | type: TABLE --
-- DROP TABLE IF EXISTS public.ccdd_tm_ingredient_stem CASCADE;
CREATE TABLE public.ccdd_tm_ingredient_stem(
	ccdd_tm_code bigint,
	ccdd_ingredient_stem_name varchar,
	CONSTRAINT ccdd_tm_ingredient_stem_pk PRIMARY KEY (ccdd_tm_code,ccdd_ingredient_stem_name)

);
-- ddl-end --

-- object: ccdd_tm_fk | type: CONSTRAINT --
-- ALTER TABLE public.ccdd_tm_ingredient_stem DROP CONSTRAINT IF EXISTS ccdd_tm_fk CASCADE;
ALTER TABLE public.ccdd_tm_ingredient_stem ADD CONSTRAINT ccdd_tm_fk FOREIGN KEY (ccdd_tm_code)
REFERENCES public.ccdd_tm (code) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: ccdd_ingredient_stem_fk | type: CONSTRAINT --
-- ALTER TABLE public.ccdd_tm_ingredient_stem DROP CONSTRAINT IF EXISTS ccdd_ingredient_stem_fk CASCADE;
ALTER TABLE public.ccdd_tm_ingredient_stem ADD CONSTRAINT ccdd_ingredient_stem_fk FOREIGN KEY (ccdd_ingredient_stem_name)
REFERENCES public.ccdd_ingredient_stem (name) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: ccdd.tm_table | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.tm_table CASCADE;
CREATE TABLE ccdd.tm_table(
	tm_code integer NOT NULL,
	tm_formal_name text NOT NULL,
	audit_id bigint NOT NULL,
	CONSTRAINT tm_table_audit_id_key UNIQUE (audit_id),
	CONSTRAINT tm_table_tm_code PRIMARY KEY (tm_code)

);
-- ddl-end --
ALTER TABLE ccdd.tm_table OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_tm_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_tm_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_tm_source
AS 

SELECT
   tt.tm_code AS code
FROM
   ccdd.tm_table AS tt;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_tm_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_tm_ingredient_stem_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_tm_ingredient_stem_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_tm_ingredient_stem_source
AS 

SELECT
   tt.tm_code AS ccdd_tm_code,
   tm_name_part AS ccdd_ingredient_stem_name
FROM
   ccdd.tm_table AS tt,
   regexp_split_to_table(tt.tm_formal_name, '\s+and\s+', 'i') AS tm_name_part;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_tm_ingredient_stem_source OWNER TO postgres;
-- ddl-end --

-- object: ccdd.ntp_dosage_forms | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.ntp_dosage_forms CASCADE;
CREATE TABLE ccdd.ntp_dosage_forms(
	ntp_dosage_form_code bigint,
	ntp_dosage_form text,
	route_of_administration_code text,
	route_of_administration text,
	route_of_administration_f text,
	pharm_form_code text,
	pharmaceutical_form text,
	pharmaceutical_form_f text,
	audit_id bigint NOT NULL
);
-- ddl-end --
ALTER TABLE ccdd.ntp_dosage_forms OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_dosage_form_mapping_dpd_form | type: TABLE --
-- DROP TABLE IF EXISTS public.ccdd_dosage_form_mapping_dpd_form CASCADE;
CREATE TABLE public.ccdd_dosage_form_mapping_dpd_form(
	ccdd_dosage_form_mapping_id varchar,
	dpd_form_code bigint,
	CONSTRAINT ccdd_dosage_form_mapping_dpd_form_pk PRIMARY KEY (ccdd_dosage_form_mapping_id,dpd_form_code)

);
-- ddl-end --

-- object: ccdd_dosage_form_mapping_fk | type: CONSTRAINT --
-- ALTER TABLE public.ccdd_dosage_form_mapping_dpd_form DROP CONSTRAINT IF EXISTS ccdd_dosage_form_mapping_fk CASCADE;
ALTER TABLE public.ccdd_dosage_form_mapping_dpd_form ADD CONSTRAINT ccdd_dosage_form_mapping_fk FOREIGN KEY (ccdd_dosage_form_mapping_id)
REFERENCES public.ccdd_dosage_form_mapping (id) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: dpd_form_fk | type: CONSTRAINT --
-- ALTER TABLE public.ccdd_dosage_form_mapping_dpd_form DROP CONSTRAINT IF EXISTS dpd_form_fk CASCADE;
ALTER TABLE public.ccdd_dosage_form_mapping_dpd_form ADD CONSTRAINT dpd_form_fk FOREIGN KEY (dpd_form_code)
REFERENCES public.dpd_form (code) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: public.ccdd_dosage_form_mapping_dpd_route | type: TABLE --
-- DROP TABLE IF EXISTS public.ccdd_dosage_form_mapping_dpd_route CASCADE;
CREATE TABLE public.ccdd_dosage_form_mapping_dpd_route(
	ccdd_dosage_form_mapping_id varchar,
	dpd_route_code bigint,
	CONSTRAINT ccdd_dosage_form_mapping_dpd_route_pk PRIMARY KEY (ccdd_dosage_form_mapping_id,dpd_route_code)

);
-- ddl-end --

-- object: ccdd_dosage_form_mapping_fk | type: CONSTRAINT --
-- ALTER TABLE public.ccdd_dosage_form_mapping_dpd_route DROP CONSTRAINT IF EXISTS ccdd_dosage_form_mapping_fk CASCADE;
ALTER TABLE public.ccdd_dosage_form_mapping_dpd_route ADD CONSTRAINT ccdd_dosage_form_mapping_fk FOREIGN KEY (ccdd_dosage_form_mapping_id)
REFERENCES public.ccdd_dosage_form_mapping (id) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: dpd_route_fk | type: CONSTRAINT --
-- ALTER TABLE public.ccdd_dosage_form_mapping_dpd_route DROP CONSTRAINT IF EXISTS dpd_route_fk CASCADE;
ALTER TABLE public.ccdd_dosage_form_mapping_dpd_route ADD CONSTRAINT dpd_route_fk FOREIGN KEY (dpd_route_code)
REFERENCES public.dpd_route (code) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: public.ccdd_dosage_form_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_dosage_form_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_dosage_form_source
AS 

SELECT
   df.ntp_dosage_form AS name,
   df.ntp_dosage_form_code AS code
FROM
   ccdd.ntp_dosage_forms AS df
WHERE
   true   GROUP BY name, code;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_dosage_form_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_dosage_form_mapping_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_dosage_form_mapping_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_dosage_form_mapping_source
AS 

SELECT
   CONCAT(df.ntp_dosage_form_code, '|', df.route_of_administration_code, '|', df.pharm_form_code) AS id,
   df.ntp_dosage_form AS ccdd_dosage_form_name
FROM
   ccdd.ntp_dosage_forms AS df
WHERE
   true   GROUP BY id, ccdd_dosage_form_name;
-- ddl-end --
COMMENT ON MATERIALIZED VIEW public.ccdd_dosage_form_mapping_source IS 'Grouped to eliminate possible duplicates';
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_dosage_form_mapping_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_dosage_form_mapping_dpd_form_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_dosage_form_mapping_dpd_form_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_dosage_form_mapping_dpd_form_source
AS 

SELECT
   CONCAT(df.ntp_dosage_form_code, '|', df.route_of_administration_code, '|', df.pharm_form_code) AS ccdd_dosage_form_mapping_id,
   CAST(form_code_part as bigint) AS dpd_form_code
FROM
   ccdd.ntp_dosage_forms AS df,
   regexp_split_to_table(df.pharm_form_code, '\s*-\s*', 'i') AS form_code_part
WHERE
   true   GROUP BY ccdd_dosage_form_mapping_id, dpd_form_code;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_dosage_form_mapping_dpd_form_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_dosage_form_mapping_dpd_route_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_dosage_form_mapping_dpd_route_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_dosage_form_mapping_dpd_route_source
AS 

SELECT
   CONCAT(df.ntp_dosage_form_code, '|', df.route_of_administration_code, '|', df.pharm_form_code) AS ccdd_dosage_form_mapping_id,
   CAST(route_code_part as bigint) AS dpd_route_code
FROM
   ccdd.ntp_dosage_forms AS df,
   regexp_split_to_table(df.route_of_administration_code, '\s*-\s*', 'i') AS route_code_part
WHERE
   true   GROUP BY ccdd_dosage_form_mapping_id, dpd_route_code;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_dosage_form_mapping_dpd_route_source OWNER TO postgres;
-- ddl-end --

-- object: ccdd.combination_products_csv | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.combination_products_csv CASCADE;
CREATE TABLE ccdd.combination_products_csv(
	drug_code bigint NOT NULL,
	drug_identification_number varchar,
	mp_formal_name varchar,
	ntp_formal_name varchar,
	ntp_type varchar,
	CONSTRAINT combination_products_csv_pk PRIMARY KEY (drug_code)

);
-- ddl-end --
ALTER TABLE ccdd.combination_products_csv OWNER TO postgres;
-- ddl-end --

-- object: ccdd.unit_of_presentation_csv | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.unit_of_presentation_csv CASCADE;
CREATE TABLE ccdd.unit_of_presentation_csv(
	drug_code bigint,
	unit_of_presentation varchar,
	uop_size varchar,
	uop_unit_of_measure varchar,
	calculation varchar
);
-- ddl-end --
ALTER TABLE ccdd.unit_of_presentation_csv OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_combination_product_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_combination_product_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_combination_product_source
AS 

SELECT
   cp.drug_code AS dpd_drug_code,
   cp.mp_formal_name,
   cp.ntp_formal_name,
   cp.ntp_type
FROM
   ccdd.combination_products_csv AS cp
WHERE
   exists(select * from dpd_drug_source dd where dd.code = cp.drug_code);
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_combination_product_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_normalize_ingredient | type: FUNCTION --
-- DROP FUNCTION IF EXISTS public.ccdd_normalize_ingredient(varchar) CASCADE;
CREATE FUNCTION public.ccdd_normalize_ingredient ( raw_ingredient varchar)
	RETURNS varchar
	LANGUAGE sql
	VOLATILE 
	CALLED ON NULL INPUT
	SECURITY INVOKER
	COST 1
	AS $$
WITH src AS (SELECT raw_ingredient as ingredient)
SELECT
	string_agg(CASE
		WHEN vitamatch is not null THEN concat(vitamatch[1], upper(vitamatch[2]), vitamatch[3])
		ELSE lower(src.ingredient)
	END, '') as name
FROM
	src
	left join lateral regexp_matches(lower(src.ingredient), '(vitamin )([a-z])((?:(?!vitamin [a-z]).)*)', 'g') as vitamatch on(true)
$$;
-- ddl-end --
ALTER FUNCTION public.ccdd_normalize_ingredient(varchar) OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_drug_ingredient_option_description | type: VIEW --
-- DROP VIEW IF EXISTS public.ccdd_drug_ingredient_option_description CASCADE;
CREATE VIEW public.ccdd_drug_ingredient_option_description
AS 

SELECT
	ddio.dpd_drug_code,
	p.pseudodin,
	ccdd_normalize_ingredient(ddio.dpd_named_ingredient_name) as drug_ingredient_name,
	ntpmap.ccdd_ntp_ingredient_name as ntp_ingredient_name,
	ntpi.ccdd_ingredient_stem_name as ingredient_stem_name,
	CASE
		WHEN p.unit is not null AND p.strength_is_per_size_unit THEN format('%s %s per %s %s', strength_amount * p.size_amount, strength_unit, p.size_amount, p.size_unit)
		WHEN (
			upper(ddio.dosage_unit) not in ('', '%', 'BLISTER', 'CAP', 'DOSE', 'ECC', 'ECT', 'KIT', 'LOZ', 'NIL', 'PATCH', 'SLT', 'SRC', 'SRD', 'SRT', 'SUP', 'SYR', 'TAB', 'V/V', 'W/V', 'W/W')
		) THEN (
			CASE
				WHEN dosage_amount is not null THEN format('%s %s per %s %s', strength_amount, strength_unit, dosage_amount, dosage_unit)
				ELSE format('%s %s per %s', strength_amount, strength_unit, dosage_unit)
			END
		)
		ELSE format('%s %s', strength_amount, strength_unit)
	END AS strength_description,
	ntpmap.ccdd
FROM
	public.dpd_drug_ingredient_option AS ddio
	INNER JOIN public.ccdd_dpd_ingredient_ntp_mapping ntpmap ON (ntpmap.dpd_named_ingredient_name = ddio.dpd_named_ingredient_name)
	INNER JOIN ccdd_ntp_ingredient ntpi on(ntpi.name = ntpmap.ccdd_ntp_ingredient_name)
	LEFT JOIN public.ccdd_presentation p on(p.dpd_drug_code = ddio.dpd_drug_code);
-- ddl-end --
ALTER VIEW public.ccdd_drug_ingredient_option_description OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_drug_dosage_form_by_form | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_drug_dosage_form_by_form CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_drug_dosage_form_by_form
AS 

select dd.code as dpd_drug_code, dform.id as mapping_id, dform.ccdd_dosage_form_name from
	dpd_drug dd,
	ccdd_dosage_form_mapping dform
where
	exists(
		select * from
			dpd_drug_form ddf
			INNER JOIN ccdd_dosage_form_mapping_dpd_form dformForm ON (dformForm.dpd_form_code = ddf.dpd_form_code)
		where ddf.dpd_drug_code = dd.code AND dformForm.ccdd_dosage_form_mapping_id = dform.id
	)
	AND
	not exists(
		select * from
			ccdd_dosage_form_mapping_dpd_form dformFormOther
		where dformFormOther.ccdd_dosage_form_mapping_id = dform.id AND not exists(
			select * from
				dpd_drug_form ddf
			where ddf.dpd_drug_code = dd.code AND dformFormOther.dpd_form_code = ddf.dpd_form_code
		)
	)
	AND
	not exists(
		select * from
			dpd_drug_form ddfOther
		where ddfOther.dpd_drug_code = dd.code AND not exists(
			select * from
				ccdd_dosage_form_mapping_dpd_form dformForm
			where dformForm.ccdd_dosage_form_mapping_id = dform.id AND dformForm.dpd_form_code = ddfOther.dpd_form_code
		)
	);
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_drug_dosage_form_by_form OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_drug_dosage_form_by_route | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_drug_dosage_form_by_route CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_drug_dosage_form_by_route
AS 

select dd.code as dpd_drug_code, dform.id as mapping_id, dform.ccdd_dosage_form_name from
	dpd_drug dd,
	ccdd_dosage_form_mapping dform
where
	exists(
		select * from
			dpd_drug_route ddr
			INNER JOIN ccdd_dosage_form_mapping_dpd_route dformRoute ON (dformRoute.dpd_route_code = ddr.dpd_route_code)
		where ddr.dpd_drug_code = dd.code AND dformRoute.ccdd_dosage_form_mapping_id = dform.id
	)
	AND
	not exists(
		select * from
			ccdd_dosage_form_mapping_dpd_route dformRouteOther
		where dformRouteOther.ccdd_dosage_form_mapping_id = dform.id AND not exists(
			select * from
				dpd_drug_route ddr
			where ddr.dpd_drug_code = dd.code AND dformRouteOther.dpd_route_code = ddr.dpd_route_code
		)
	)
	AND
	not exists(
		select * from
			dpd_drug_route ddrOther
		where ddrOther.dpd_drug_code = dd.code AND not exists(
			select * from
				ccdd_dosage_form_mapping_dpd_route dformRoute
			where dformRoute.ccdd_dosage_form_mapping_id = dform.id AND dformRoute.dpd_route_code = ddrOther.dpd_route_code
		)
	);
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_drug_dosage_form_by_route OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_drug_dosage_form | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_drug_dosage_form CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_drug_dosage_form
AS 

select
	dd.code as dpd_drug_code,
	(
		select dfbf.ccdd_dosage_form_name from
			ccdd_drug_dosage_form_by_form dfbf
			INNER JOIN ccdd_drug_dosage_form_by_route dfbr USING(dpd_drug_code, mapping_id)
		where dfbf.dpd_drug_code = dd.code
	) as dosage_form
from
	dpd_drug dd;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_drug_dosage_form OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_drug_ingredient_summary | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_drug_ingredient_summary CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_drug_ingredient_summary
AS 

select
	dd.code as dpd_drug_code,
	p.pseudodin,
	(case
		when p.strength_is_per_size_unit then p.unit
		else format('%s %s %s', p.size_amount, p.size_unit, p.unit)
	end) as uop_suffix,
	STRING_AGG(
		format('%s %s', dod.drug_ingredient_name, dod.strength_description),
		' and '
		order by dod.ingredient_stem_name
	) as drug_ingredient_detail_set,
	STRING_AGG(
		format('%s %s', dod.ntp_ingredient_name, dod.strength_description),
		' and '
		order by dod.ingredient_stem_name
	) as ntp_ingredient_detail_set,
	bool_and(dod.ccdd) as ccdd_all
from
	dpd_drug dd
	LEFT JOIN ccdd_presentation p on(p.dpd_drug_code = dd.code)
	LEFT JOIN ccdd_drug_ingredient_option_description dod on(dod.dpd_drug_code = dd.code and dod.pseudodin is not distinct from p.pseudodin)
group by
	dd.code,
	p.pseudodin;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_drug_ingredient_summary OWNER TO postgres;
-- ddl-end --

-- object: ccdd_presentation_dpd_drug_code | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_presentation_dpd_drug_code CASCADE;
CREATE INDEX ccdd_presentation_dpd_drug_code ON public.ccdd_presentation
	USING btree
	(
	  dpd_drug_code
	);
-- ddl-end --

-- object: dpd_drug_ingredient_dpd_drug_code | type: INDEX --
-- DROP INDEX IF EXISTS public.dpd_drug_ingredient_dpd_drug_code CASCADE;
CREATE INDEX dpd_drug_ingredient_dpd_drug_code ON public.dpd_drug_ingredient
	USING btree
	(
	  dpd_drug_code
	);
-- ddl-end --

-- object: ccdd_dpd_ingredient_ntp_mapping_dpd_named_ingredient_name | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_dpd_ingredient_ntp_mapping_dpd_named_ingredient_name CASCADE;
CREATE INDEX ccdd_dpd_ingredient_ntp_mapping_dpd_named_ingredient_name ON public.ccdd_dpd_ingredient_ntp_mapping
	USING btree
	(
	  dpd_named_ingredient_name
	);
-- ddl-end --

-- object: ccdd_ntp_ingredient_stem_name | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_ntp_ingredient_stem_name CASCADE;
CREATE INDEX ccdd_ntp_ingredient_stem_name ON public.ccdd_ntp_ingredient
	USING btree
	(
	  ccdd_ingredient_stem_name
	);
-- ddl-end --

-- object: dpd_drug_form_drug | type: INDEX --
-- DROP INDEX IF EXISTS public.dpd_drug_form_drug CASCADE;
CREATE INDEX dpd_drug_form_drug ON public.dpd_drug_form
	USING btree
	(
	  dpd_drug_code
	);
-- ddl-end --

-- object: dpd_drug_form_form | type: INDEX --
-- DROP INDEX IF EXISTS public.dpd_drug_form_form CASCADE;
CREATE INDEX dpd_drug_form_form ON public.dpd_drug_form
	USING btree
	(
	  dpd_form_code
	);
-- ddl-end --

-- object: dpd_drug_route_drug | type: INDEX --
-- DROP INDEX IF EXISTS public.dpd_drug_route_drug CASCADE;
CREATE INDEX dpd_drug_route_drug ON public.dpd_drug_route
	USING btree
	(
	  dpd_drug_code
	);
-- ddl-end --

-- object: dpd_drug_route_route | type: INDEX --
-- DROP INDEX IF EXISTS public.dpd_drug_route_route CASCADE;
CREATE INDEX dpd_drug_route_route ON public.dpd_drug_route
	USING btree
	(
	  dpd_route_code
	);
-- ddl-end --

-- object: ccdd_dosage_form_mapping_dpd_form_id | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_dosage_form_mapping_dpd_form_id CASCADE;
CREATE INDEX ccdd_dosage_form_mapping_dpd_form_id ON public.ccdd_dosage_form_mapping_dpd_form
	USING btree
	(
	  ccdd_dosage_form_mapping_id
	);
-- ddl-end --

-- object: ccdd_dosage_form_mapping_dpd_form_form | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_dosage_form_mapping_dpd_form_form CASCADE;
CREATE INDEX ccdd_dosage_form_mapping_dpd_form_form ON public.ccdd_dosage_form_mapping_dpd_form
	USING btree
	(
	  dpd_form_code
	);
-- ddl-end --

-- object: ccdd_dosage_form_mapping_dpd_route_id | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_dosage_form_mapping_dpd_route_id CASCADE;
CREATE INDEX ccdd_dosage_form_mapping_dpd_route_id ON public.ccdd_dosage_form_mapping_dpd_route
	USING btree
	(
	  ccdd_dosage_form_mapping_id
	);
-- ddl-end --

-- object: ccdd_dosage_form_mapping_dpd_route_route | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_dosage_form_mapping_dpd_route_route CASCADE;
CREATE INDEX ccdd_dosage_form_mapping_dpd_route_route ON public.ccdd_dosage_form_mapping_dpd_route
	USING btree
	(
	  dpd_route_code
	);
-- ddl-end --

-- object: ccdd_drug_dosage_form_by_form_drug_code | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_drug_dosage_form_by_form_drug_code CASCADE;
CREATE INDEX ccdd_drug_dosage_form_by_form_drug_code ON public.ccdd_drug_dosage_form_by_form
	USING btree
	(
	  dpd_drug_code
	);
-- ddl-end --

-- object: ccdd_drug_dosage_form_by_route_drug_code | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_drug_dosage_form_by_route_drug_code CASCADE;
CREATE INDEX ccdd_drug_dosage_form_by_route_drug_code ON public.ccdd_drug_dosage_form_by_route
	USING btree
	(
	  dpd_drug_code
	);
-- ddl-end --

-- object: ccdd_drug_dosage_form_drug_code | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_drug_dosage_form_drug_code CASCADE;
CREATE INDEX ccdd_drug_dosage_form_drug_code ON public.ccdd_drug_dosage_form
	USING btree
	(
	  dpd_drug_code
	);
-- ddl-end --

-- object: ccdd_drug_ingredient_summary_drug_code | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_drug_ingredient_summary_drug_code CASCADE;
CREATE INDEX ccdd_drug_ingredient_summary_drug_code ON public.ccdd_drug_ingredient_summary
	USING btree
	(
	  dpd_drug_code
	);
-- ddl-end --

-- object: dpd_drug_ingredient_option_drug_code | type: INDEX --
-- DROP INDEX IF EXISTS public.dpd_drug_ingredient_option_drug_code CASCADE;
CREATE INDEX dpd_drug_ingredient_option_drug_code ON public.dpd_drug_ingredient_option
	USING btree
	(
	  dpd_drug_code
	);
-- ddl-end --

-- object: public.ccdd_drug_tm | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_drug_tm CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_drug_tm
AS 

select
	dd.code as dpd_drug_code,
	tm.code as tm_code,
	(
		select
			string_agg(stemList.stem, ' and ')
		from (
			select
				tmistem.ccdd_ingredient_stem_name as stem
			from ccdd_tm_ingredient_stem tmistem
			where tmistem.ccdd_tm_code = tm.code
			group by tmistem.ccdd_ingredient_stem_name
			order by tmistem.ccdd_ingredient_stem_name
		) as stemList
	) as tm_formal_name
from
	dpd_drug dd,
	ccdd_tm tm
WHERE
	exists(
		select * from
			dpd_drug_ingredient ddi
			INNER JOIN ccdd_dpd_ingredient_ntp_mapping dintp on(dintp.dpd_named_ingredient_name = ddi.dpd_named_ingredient_name)
			INNER JOIN ccdd_ntp_ingredient ntpi on(ntpi.name = dintp.ccdd_ntp_ingredient_name)
			INNER JOIN ccdd_tm_ingredient_stem tmistem on(tmistem.ccdd_ingredient_stem_name = ntpi.ccdd_ingredient_stem_name)
		where ddi.dpd_drug_code = dd.code AND tmistem.ccdd_tm_code = tm.code
	)
	AND
	not exists(
		select * from
			ccdd_tm_ingredient_stem tmistemOther
		where tmistemOther.ccdd_tm_code = tm.code AND not exists(
			select * from
				dpd_drug_ingredient ddi
				INNER JOIN ccdd_dpd_ingredient_ntp_mapping dintp on(dintp.dpd_named_ingredient_name = ddi.dpd_named_ingredient_name)
				INNER JOIN ccdd_ntp_ingredient ntpi on(ntpi.name = dintp.ccdd_ntp_ingredient_name)
			where ddi.dpd_drug_code = dd.code and ntpi.ccdd_ingredient_stem_name = tmistemOther.ccdd_ingredient_stem_name
		)
	)
	AND
	not exists(
		select * from
			dpd_drug_ingredient ddiOther
		where ddiOther.dpd_drug_code = dd.code AND not exists(
			select * from
				ccdd_dpd_ingredient_ntp_mapping dintp
				INNER JOIN ccdd_ntp_ingredient ntpi on(ntpi.name = dintp.ccdd_ntp_ingredient_name)
				INNER JOIN ccdd_tm_ingredient_stem tmistem on(tmistem.ccdd_ingredient_stem_name = ntpi.ccdd_ingredient_stem_name)
			where tmistem.ccdd_tm_code = tm.code and dintp.dpd_named_ingredient_name = ddiOther.dpd_named_ingredient_name
		)
	);
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_drug_tm OWNER TO postgres;
-- ddl-end --

-- object: ccdd_drug_tm_drug_code | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_drug_tm_drug_code CASCADE;
CREATE INDEX ccdd_drug_tm_drug_code ON public.ccdd_drug_tm
	USING btree
	(
	  dpd_drug_code
	);
-- ddl-end --

-- object: ccdd_tm_ingredient_stem_tm_code | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_tm_ingredient_stem_tm_code CASCADE;
CREATE INDEX ccdd_tm_ingredient_stem_tm_code ON public.ccdd_tm_ingredient_stem
	USING btree
	(
	  ccdd_tm_code
	);
-- ddl-end --

-- object: public.ccdd_drug_status | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_drug_status CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_drug_status
AS 

select
	dd.code as dpd_drug_code,
	(array_agg(ds_fm.history_date order by ds_fm.history_date))[1] as first_market_date,
	(array_agg(ds_c.status order by ds_c.history_date))[1] as current_status,
	(array_agg(ds_c.history_date order by ds_c.history_date))[1] as current_status_date,
	(array_agg(ds_c.expiration_date order by ds_c.history_date))[1] as current_expiration_date
from
	dpd_drug dd
	LEFT JOIN dpd.status ds_fm on(ds_fm.drug_code = dd.code and ds_fm.status = 'MARKETED')
	LEFT JOIN dpd.status ds_c on(ds_c.drug_code = dd.code and ds_c.current_status_flag = 'Y')
group by dd.code;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_drug_status OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_mp_table_candidate | type: VIEW --
-- DROP VIEW IF EXISTS public.ccdd_mp_table_candidate CASCADE;
CREATE VIEW public.ccdd_mp_table_candidate
AS 

select
	dd.code as dpd_drug_code,
	COALESCE(p.pseudodin, dd.din) as mp_code,
	COALESCE(cp.mp_formal_name, format(
		'%s (%s %s) %s',
		dd.brand_name_en,
		dsum.drug_ingredient_detail_set,
		(CASE
			WHEN p.pseudodin is not null THEN format(
				'%s %s',
				ddform.dosage_form,
				dsum.uop_suffix
			)
			ELSE ddform.dosage_form
		END),
		dd.company_name
	)) as mp_formal_name,
	COALESCE(cp.ntp_formal_name, format(
		'%s %s',
		dsum.ntp_ingredient_detail_set,
		(CASE
			WHEN p.pseudodin is not null THEN format(
				'%s %s',
				ddform.dosage_form,
				dsum.uop_suffix
			)
			ELSE ddform.dosage_form
		END)
	)) as ntp_formal_name,
	(CASE
		WHEN ds.current_status = 'MARKETED' THEN ds.first_market_date
		ELSE ds.current_status_date
	END) as mp_status_effective_date,
	(CASE
		WHEN ds.current_status = 'MARKETED' THEN 'active'
		WHEN ds.current_status = 'CANCELLED POST MARKET' AND ds.current_expiration_date > '2017-12-05' THEN 'active'
		ELSE 'inactive'
	END) as mp_status,
	ds.first_market_date
from
	dpd_drug dd
	LEFT JOIN ccdd_presentation p on(p.dpd_drug_code = dd.code)
	LEFT JOIN ccdd_drug_ingredient_summary dsum on(dsum.dpd_drug_code = dd.code and dsum.pseudodin is not distinct from p.pseudodin)
	LEFT JOIN ccdd_drug_dosage_form ddform on(ddform.dpd_drug_code = dd.code)
	LEFT JOIN ccdd_drug_status ds on(ds.dpd_drug_code = dd.code)
	LEFT JOIN ccdd_combination_product cp on(cp.dpd_drug_code = dd.code)
where
	dsum.ccdd_all;
-- ddl-end --
ALTER VIEW public.ccdd_mp_table_candidate OWNER TO postgres;
-- ddl-end --

-- object: ccdd.ntp_table | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.ntp_table CASCADE;
CREATE TABLE ccdd.ntp_table(
	ntp_formal_name text,
	ccdd boolean,
	n_mp integer,
	"greater_than_5_AIs" boolean,
	ntp_status_effective_time date,
	ntp_code integer NOT NULL,
	en_display boolean,
	fr_display boolean,
	audit_id bigint NOT NULL,
	CONSTRAINT ntp_table_audit_id_key UNIQUE (audit_id),
	CONSTRAINT ntp_table_ntp_code PRIMARY KEY (ntp_code)

);
-- ddl-end --
ALTER TABLE ccdd.ntp_table OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_ntp_table | type: VIEW --
-- DROP VIEW IF EXISTS public.ccdd_ntp_table CASCADE;
CREATE VIEW public.ccdd_ntp_table
AS 

select
	(
		select
			ntp_code
		from ccdd.ntp_table prevntp
		where prevntp.ntp_formal_name = candidate.ntp_formal_name
	) as ntp_code,
	candidate.ntp_formal_name,
	(CASE
		WHEN bool_and(candidate.mp_status = 'inactive') THEN 'inactive'
		ELSE 'active'
	END) as ntp_status,
	to_char((CASE
		WHEN bool_and(candidate.mp_status = 'inactive') THEN max(candidate.mp_status_effective_date)
		ELSE min(candidate.first_market_date)
	END), 'YYYYMMDD') as ntp_status_effective_time
from
	ccdd_mp_table_candidate candidate
GROUP BY
	candidate.ntp_formal_name
order by ntp_status_effective_time;
-- ddl-end --
ALTER VIEW public.ccdd_ntp_table OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_tm_table | type: VIEW --
-- DROP VIEW IF EXISTS public.ccdd_tm_table CASCADE;
CREATE VIEW public.ccdd_tm_table
AS 

select
	dtm.tm_code,
	dtm.tm_formal_name,
	(CASE
		WHEN bool_and(candidate.mp_status = 'inactive') THEN 'inactive'
		ELSE 'active'
	END) as tm_status,
	to_char((CASE
		WHEN bool_and(candidate.mp_status = 'inactive') THEN max(candidate.mp_status_effective_date)
		ELSE min(candidate.first_market_date)
	END), 'YYYYMMDD') as tm_status_effective_time
from
	ccdd_mp_table_candidate candidate
	LEFT JOIN ccdd_drug_tm dtm on(candidate.dpd_drug_code = dtm.dpd_drug_code)
where tm_code is not null
GROUP BY
	dtm.tm_code,
	dtm.tm_formal_name
order by tm_status_effective_time;
-- ddl-end --
ALTER VIEW public.ccdd_tm_table OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_mp_tp_tm_relationship | type: VIEW --
-- DROP VIEW IF EXISTS public.ccdd_mp_tp_tm_relationship CASCADE;
CREATE VIEW public.ccdd_mp_tp_tm_relationship
AS 

select
	mp_code,
	mp_formal_name,
	(
		select
			ntp_code
		from ccdd.ntp_table prevntp
		where prevntp.ntp_formal_name = candidate.ntp_formal_name
	) as ntp_code,
	ntp_formal_name,
	dtm.tm_code,
	dtm.tm_formal_name
from
	ccdd_mp_table_candidate candidate
	LEFT JOIN ccdd_drug_tm dtm on(candidate.dpd_drug_code = dtm.dpd_drug_code);
-- ddl-end --
ALTER VIEW public.ccdd_mp_tp_tm_relationship OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_mp_table | type: VIEW --
-- DROP VIEW IF EXISTS public.ccdd_mp_table CASCADE;
CREATE VIEW public.ccdd_mp_table
AS 

select
	mp_code,
	mp_formal_name,
	mp_status,
	to_char(mp_status_effective_date, 'YYYYMMDD') as mp_status_effective_time
from
	ccdd_mp_table_candidate candidate;
-- ddl-end --
ALTER VIEW public.ccdd_mp_table OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_presentation_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_presentation_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_presentation_source
AS 

SELECT
   md5(concat(drug_code, unit_of_presentation, uop_size, uop_unit_of_measure)) AS pseudodin,
   uop.drug_code AS dpd_drug_code,
   uop.unit_of_presentation AS unit,
   CAST(uop.uop_size as double precision) AS size_amount,
   ccdd_normalized_unit(uop.uop_unit_of_measure) AS size_unit,
   uop.calculation = 'Y' AS strength_is_per_size_unit
FROM
   ccdd.unit_of_presentation_csv AS uop
WHERE
   exists(select * from dpd_drug_source dd where dd.code = uop.drug_code);
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_presentation_source OWNER TO postgres;
-- ddl-end --

-- object: ccdd_drug_status_code | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_drug_status_code CASCADE;
CREATE INDEX ccdd_drug_status_code ON public.ccdd_drug_status
	USING btree
	(
	  dpd_drug_code
	);
-- ddl-end --

-- -- object: active_ingredient_drug_code_fkey | type: CONSTRAINT --
-- -- ALTER TABLE dpd.active_ingredient DROP CONSTRAINT IF EXISTS active_ingredient_drug_code_fkey CASCADE;
-- ALTER TABLE dpd.active_ingredient ADD CONSTRAINT active_ingredient_drug_code_fkey FOREIGN KEY ("extract",drug_code)
-- REFERENCES dpd.drug_product ("extract",drug_code) MATCH SIMPLE
-- ON DELETE NO ACTION ON UPDATE NO ACTION;
-- -- ddl-end --
-- 
-- -- object: companies_drug_code_fkey | type: CONSTRAINT --
-- -- ALTER TABLE dpd.companies DROP CONSTRAINT IF EXISTS companies_drug_code_fkey CASCADE;
-- ALTER TABLE dpd.companies ADD CONSTRAINT companies_drug_code_fkey FOREIGN KEY ("extract",drug_code)
-- REFERENCES dpd.drug_product ("extract",drug_code) MATCH SIMPLE
-- ON DELETE NO ACTION ON UPDATE NO ACTION;
-- -- ddl-end --
-- 
-- -- object: pharmaceutical_form_drug_code_fkey | type: CONSTRAINT --
-- -- ALTER TABLE dpd.pharmaceutical_form DROP CONSTRAINT IF EXISTS pharmaceutical_form_drug_code_fkey CASCADE;
-- ALTER TABLE dpd.pharmaceutical_form ADD CONSTRAINT pharmaceutical_form_drug_code_fkey FOREIGN KEY ("extract",drug_code)
-- REFERENCES dpd.drug_product ("extract",drug_code) MATCH SIMPLE
-- ON DELETE NO ACTION ON UPDATE NO ACTION;
-- -- ddl-end --
-- 
-- -- object: route_drug_code_fkey | type: CONSTRAINT --
-- -- ALTER TABLE dpd.route DROP CONSTRAINT IF EXISTS route_drug_code_fkey CASCADE;
-- ALTER TABLE dpd.route ADD CONSTRAINT route_drug_code_fkey FOREIGN KEY ("extract",drug_code)
-- REFERENCES dpd.drug_product ("extract",drug_code) MATCH SIMPLE
-- ON DELETE NO ACTION ON UPDATE NO ACTION;
-- -- ddl-end --
-- 
-- -- object: status_drug_code_fkey | type: CONSTRAINT --
-- -- ALTER TABLE dpd.status DROP CONSTRAINT IF EXISTS status_drug_code_fkey CASCADE;
-- ALTER TABLE dpd.status ADD CONSTRAINT status_drug_code_fkey FOREIGN KEY ("extract",drug_code)
-- REFERENCES dpd.drug_product ("extract",drug_code) MATCH SIMPLE
-- ON DELETE NO ACTION ON UPDATE NO ACTION;
-- -- ddl-end --
-- 

