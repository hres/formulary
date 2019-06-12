-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.0
-- PostgreSQL version: 9.6
-- Project Site: pgmodeler.com.br
-- Model Author: ---

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
	name_fr varchar,
	CONSTRAINT ccdd_ingredient_stem_pk PRIMARY KEY (name)

);
-- ddl-end --
ALTER TABLE public.ccdd_ingredient_stem OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_ntp_ingredient | type: TABLE --
-- DROP TABLE IF EXISTS public.ccdd_ntp_ingredient CASCADE;
CREATE TABLE public.ccdd_ntp_ingredient(
	name varchar NOT NULL,
	name_fr varchar,
	ccdd_ingredient_stem_name varchar NOT NULL,
	ccdd_ingredient_stem_name_fr varchar,
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
	ccdd_ntp_ingredient_name varchar NOT NULL,
	ccdd_ntp_ingredient_name_fr varchar
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
	name_fr varchar,
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
	ccdd_dosage_form_name_fr varchar,
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
	mp_formal_name_fr varchar,
	ntp_formal_name_fr varchar,
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
	id varchar NOT NULL,
	dpd_drug_code bigint NOT NULL,
	unit varchar,
	unit_fr varchar,
	size_amount double precision,
	size_unit varchar,
	size_unit_fr varchar,
	strength_is_per_size_unit bool,
	unit_has_explicit_size bool,
	pseudodin bigint,
	CONSTRAINT ccdd_presentation_pk PRIMARY KEY (id),
	CONSTRAINT ccdd_presentation_pseudodin UNIQUE (pseudodin)

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

-- object: public.dpd_drug_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_drug_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_drug_source
AS

SELECT
   dp.drug_code AS code,
   dp.drug_identification_number AS din,
   dp.brand_name AS brand_name_en,
   dc.company_name AS company_name
FROM
   dpd.drug_product dp
LEFT JOIN dpd.companies dc ON(dc.drug_code = dp.drug_code)
LEFT JOIN dpd.status cs ON(cs.drug_code = dp.drug_code AND cs.current_status_flag = 'Y')
WHERE
   dp.class = 'Human' AND (
(
	cs.status = 'DORMANT'
	AND
	cs.history_date > (SELECT ccdd_date FROM ccdd_config LIMIT 1)
)
OR
(
	cs.status = 'CANCELLED POST MARKET'
	AND
	(
		cs.history_date > (SELECT ccdd_date FROM ccdd_config LIMIT 1)
		OR
		(CASE
			WHEN cs.expiration_date LIKE '____-__-__' THEN to_date(cs.expiration_date, 'YYYY-MM-DD')
			ELSE to_date(cs.expiration_date, 'DD-MON-YYYY')
		END) > (SELECT ccdd_date FROM ccdd_config LIMIT 1)
	)
)
OR
(
	cs.status = 'MARKETED'
)
OR
EXISTS(select * from ccdd.mp_whitelist wl where wl.drug_code = CAST(dp.drug_code as varchar))
)
AND NOT EXISTS(SELECT * FROM ccdd.mp_blacklist bl WHERE bl.drug_code = CAST(dp.drug_code as varchar));
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_drug_source OWNER TO postgres;
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

-- object: public.dpd_drug_ingredient_option_source_order | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.dpd_drug_ingredient_option_source_order CASCADE;
CREATE SEQUENCE public.dpd_drug_ingredient_option_source_order
	INCREMENT BY 1
	MINVALUE 0
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
-- ddl-end --
ALTER SEQUENCE public.dpd_drug_ingredient_option_source_order OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_drug_ingredient_option | type: TABLE --
-- DROP TABLE IF EXISTS public.dpd_drug_ingredient_option CASCADE;
CREATE TABLE public.dpd_drug_ingredient_option(
	dpd_drug_code bigint NOT NULL,
	dpd_named_ingredient_name varchar NOT NULL,
	dpd_named_ingredient_name_fr varchar,
	dpd_active_ingredient_code_id bigint NOT NULL,
	strength_amount double precision NOT NULL,
	strength_unit varchar NOT NULL,
	strength_unit_fr varchar,
	dosage_amount double precision,
	dosage_unit varchar,
	dosage_unit_fr varchar,
	source_order bigint DEFAULT nextval('public.dpd_drug_ingredient_option_source_order'::regclass)
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

-- object: public.dpd_drug_ingredient_option_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_drug_ingredient_option_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_drug_ingredient_option_source
AS

SELECT
   ai.drug_code AS dpd_drug_code,
   ai.ingredient AS dpd_named_ingredient_name,
	 ai.ingredient_f AS dpd_named_ingredient_name_fr,
   ai.active_ingredient_code AS dpd_active_ingredient_code_id,
   CAST (ai.strength AS double precision) AS strength_amount,
   ccdd_normalized_unit(ai.strength_unit) AS strength_unit,
	 ccdd_normalized_unit(ai.strength_unit_f) AS strength_unit_fr,
   CAST (nullif(ai.dosage_value, '') AS double precision) AS dosage_amount,
   ccdd_normalized_unit(ai.dosage_unit) AS dosage_unit,
	 ccdd_normalized_unit(ai.dosage_unit_f) AS dosage_unit_fr
FROM
   dpd.active_ingredient AS ai
WHERE
   EXISTS(select * from public.dpd_drug_source ds where ds.code = ai.drug_code);
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_drug_ingredient_option_source OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_route_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_route_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_route_source
AS

SELECT code, max(name_en) as name_en FROM (
	SELECT
	   CAST(r.route_of_administration_code as bigint) AS code,
	   r.route_of_administration AS name_en
	FROM
	   dpd.route AS r
	WHERE
	   EXISTS(select * from public.dpd_drug_source ds where ds.code = r.drug_code)

	UNION

	SELECT
	   CAST(route_code_part as bigint) AS code,
		null as name_en
	FROM
	   ccdd.ntp_dosage_forms AS df,
	   regexp_split_to_table(df.route_of_administration_code, '\s*\D\s*', 'i') AS route_code_part
) allcodes
GROUP BY code;
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_route_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_tm_ingredient_stem | type: TABLE --
-- DROP TABLE IF EXISTS public.ccdd_tm_ingredient_stem CASCADE;
CREATE TABLE public.ccdd_tm_ingredient_stem(
	ccdd_tm_code bigint,
	ccdd_ingredient_stem_name varchar,
	ccdd_ingredient_stem_name_fr varchar,
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

-- object: public.ccdd_ntp_ingredient_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_ntp_ingredient_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_ntp_ingredient_source
AS

SELECT
   isc.ntp_ing AS name,
	 isc.ntp_ing_fr AS name_fr,
   isc.ing_stem AS ccdd_ingredient_stem_name,
	 isc.ing_stem_fr AS ccdd_ingredient_stem_name_fr
FROM
   ccdd.ingredient_stem_csv AS isc
WHERE
   exists(select * from dpd_named_ingredient_source dni where dni.name = isc.dpd_ingredient)   GROUP BY name, name_fr, ccdd_ingredient_stem_name, ccdd_ingredient_stem_name_fr;
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
	 isc.ntp_ing_fr AS ccdd_ntp_ingredient_name_fr,
   coalesce(isc.ccdd = 'Y', false) AS ccdd
FROM
   ccdd.ingredient_stem_csv AS isc
WHERE
   exists(select * from dpd_named_ingredient_source dni where dni.name = isc.dpd_ingredient);
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_dpd_ingredient_ntp_mapping_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_ingredient_stem_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_ingredient_stem_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_ingredient_stem_source
AS

SELECT DISTINCT name, name_fr FROM (
	SELECT
		isc.ing_stem AS name,
		isc.ing_stem_fr AS name_fr
	FROM
		ccdd.ingredient_stem_csv AS isc
	WHERE
		exists(select * from dpd_named_ingredient_source dni where dni.name = isc.dpd_ingredient)

	UNION

	SELECT
	unnest(string_to_array(formal_name, '\s+and\s+(?!sp-c)')) as name,
	unnest(string_to_array(formal_name_fr, '\s+et\s+(?!sp-c)')) as name_fr

	FROM
		ccdd.tm_definition
) allstems
GROUP BY name, name_fr;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_ingredient_stem_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_dosage_form_mapping_dpd_form | type: TABLE --
-- DROP TABLE IF EXISTS public.ccdd_dosage_form_mapping_dpd_form CASCADE;
CREATE TABLE public.ccdd_dosage_form_mapping_dpd_form(
	ccdd_dosage_form_mapping_id varchar,
	dpd_form_code bigint,
	CONSTRAINT ccdd_dosage_form_mapping_dpd_form_pk PRIMARY KEY (ccdd_dosage_form_mapping_id,dpd_form_code)

);
-- ddl-end --

-- object: public.ccdd_tm_ingredient_stem_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_tm_ingredient_stem_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_tm_ingredient_stem_source
AS

SELECT
   code AS ccdd_tm_code,
   unnest(string_to_array(formal_name, '\s+and\s+(?!sp-c)')) as ccdd_ingredient_stem_name,
   unnest(string_to_array(formal_name_fr, '\s+et\s+(?!sp-c)')) as ccdd_ingredient_stem_name_fr
FROM
   ccdd.tm_definition;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_tm_ingredient_stem_source OWNER TO postgres;
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

-- object: public.ccdd_tm_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_tm_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_tm_source
AS

SELECT
   tt.code AS code
FROM
   ccdd.tm_definition AS tt
WHERE
   tt.code IS NOT NULL;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_tm_source OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_form_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_form_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_form_source
AS

SELECT code, max(name_en) as name_en FROM (
	SELECT
	   pf.pharm_form_code AS code,
	   pf.pharmaceutical_form AS name_en
	FROM
	   dpd.pharmaceutical_form AS pf
	WHERE
	   EXISTS(select * from public.dpd_drug_source ds where ds.code = pf.drug_code)

	UNION

	SELECT
	   CAST(form_code_part as bigint) AS code,
		null as name_en
	FROM
	   ccdd.ntp_dosage_forms AS df,
	   regexp_split_to_table(df.pharm_form_code, '\s*\D\s*', 'i') AS form_code_part
) allcodes
GROUP BY code;
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_form_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_dosage_form_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_dosage_form_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_dosage_form_source
AS

SELECT
   df.ntp_dosage_form AS name,
	 df.ntp_dosage_form_fr AS name_fr,
   df.ntp_dosage_form_code AS code
FROM
   ccdd.ntp_dosage_forms AS df
WHERE
   true   GROUP BY name, name_fr, code;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_dosage_form_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_dosage_form_mapping_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_dosage_form_mapping_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_dosage_form_mapping_source
AS

SELECT
   CONCAT(df.ntp_dosage_form_code, '|', df.route_of_administration_code, '|', df.pharm_form_code) AS id,
   df.ntp_dosage_form AS ccdd_dosage_form_name,
	 df.ntp_dosage_form_fr AS ccdd_dosage_form_name_fr
FROM
   ccdd.ntp_dosage_forms AS df
WHERE
   true
GROUP BY id, ccdd_dosage_form_name, ccdd_dosage_form_name_fr;
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
   regexp_split_to_table(df.pharm_form_code, '\s*\D\s*', 'i') AS form_code_part
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
   regexp_split_to_table(df.route_of_administration_code, '\s*\D\s*', 'i') AS route_code_part
WHERE
   true   GROUP BY ccdd_dosage_form_mapping_id, dpd_route_code;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_dosage_form_mapping_dpd_route_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_drug_dosage_form_by_route | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_drug_dosage_form_by_route CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_drug_dosage_form_by_route
AS

select dd.code as dpd_drug_code, dform.id as mapping_id, dform.ccdd_dosage_form_name, dform.ccdd_dosage_form_name_fr from
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
	p.id as ccdd_presentation_id,
	ccdd_normalize_ingredient(ddio.dpd_named_ingredient_name) as drug_ingredient_name,
	ccdd_normalize_ingredient(ddio.dpd_named_ingredient_name_fr) as drug_ingredient_name_fr,
	ntpmap.ccdd_ntp_ingredient_name as ntp_ingredient_name,
	ntpmap.ccdd_ntp_ingredient_name_fr as ntp_ingredient_name_fr,
	ntpi.ccdd_ingredient_stem_name as ingredient_stem_name,
	ntpi.ccdd_ingredient_stem_name_fr as ingredient_stem_name_fr,
	ingst.hydrate as hydrate,
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
	CASE
		WHEN p.unit_fr is not null AND p.strength_is_per_size_unit THEN format('%s %s par %s %s', strength_amount * p.size_amount, strength_unit_fr, p.size_amount, p.size_unit_fr)
		WHEN (
			upper(ddio.dosage_unit_fr) not in ('', '%', 'PLAQUETTE', 'CAPSULE', 'DOSE', 'ECC', 'ECT', 'TROUSSE', 'PASTILLE', 'NIL', 'PATCH', 'SLT', 'SRC', 'SRD', 'SRT', 'SUPPOSITOIRE', 'SYRINGUE', 'COMPRIMÉ', 'V/V', 'P/V', 'P/P')
		) THEN (
			CASE
				WHEN dosage_amount is not null THEN format('%s %s par %s %s', strength_amount, strength_unit_fr, dosage_amount, dosage_unit_fr)
				ELSE format('%s %s par %s', strength_amount, strength_unit_fr, dosage_unit_fr)
			END
		)
		ELSE format('%s %s', strength_amount, strength_unit_fr)
	END AS strength_description_fr,
	ddio.source_order,
	COALESCE(ntpmap.ccdd, false) as ccdd
FROM
	public.dpd_drug_ingredient_option AS ddio
	LEFT JOIN public.ccdd_dpd_ingredient_ntp_mapping ntpmap ON (ntpmap.dpd_named_ingredient_name = ddio.dpd_named_ingredient_name)
	LEFT JOIN ccdd_ntp_ingredient ntpi on(ntpi.name = ntpmap.ccdd_ntp_ingredient_name)
	LEFT JOIN public.ccdd_presentation p on(p.dpd_drug_code = ddio.dpd_drug_code)
	LEFT JOIN ccdd.ingredient_stem_csv ingst on(ingst.dpd_ingredient = ddio.dpd_named_ingredient_name);
-- ddl-end --
ALTER VIEW public.ccdd_drug_ingredient_option_description OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_drug_dosage_form_by_form | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_drug_dosage_form_by_form CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_drug_dosage_form_by_form
AS

select dd.code as dpd_drug_code, dform.id as mapping_id, dform.ccdd_dosage_form_name, dform.ccdd_dosage_form_name_fr from
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
	) as dosage_form,
	(
		select dfbf.ccdd_dosage_form_name_fr from
			ccdd_drug_dosage_form_by_form dfbf
			INNER JOIN ccdd_drug_dosage_form_by_route dfbr USING(dpd_drug_code, mapping_id)
		where dfbf.dpd_drug_code = dd.code
	) as dosage_form_fr
from
	dpd_drug dd;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_drug_dosage_form OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_drug_ingredient_summary | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_drug_ingredient_summary CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_drug_ingredient_summary
AS

SELECT
	dd.code AS dpd_drug_code,
	p.id AS ccdd_presentation_id,
	(
		CASE
			WHEN p.unit_has_explicit_size THEN format('%s %s %s', p.size_amount, p.size_unit, p.unit)
			ELSE p.unit END
	) AS uop_suffix,
	STRING_AGG(
		format('%s %s', (CASE WHEN dod.hydrate = 'TRUE' THEN dod.drug_ingredient_name ELSE dod.ntp_ingredient_name END), dod.strength_description),
		' and '
		ORDER BY
			regexp_replace(dod.ingredient_stem_name, '[[:punct:]]', '', 'g'),
			regexp_replace(dod.drug_ingredient_name, '[[:punct:]]', '', 'g'),
			dod.source_order
	) AS drug_ingredient_detail_set,
	STRING_AGG(
		format('%s %s', (CASE WHEN dod.hydrate = 'TRUE' THEN dod.drug_ingredient_name_fr ELSE dod.ntp_ingredient_name_fr END), dod.strength_description_fr),
		' et '
		ORDER BY
			regexp_replace(dod.ingredient_stem_name_fr, '[[:punct:]]', '', 'g'),
			regexp_replace(dod.drug_ingredient_name_fr, '[[:punct:]]', '', 'g'),
			dod.source_order
	) AS drug_ingredient_detail_set_fr,
	STRING_AGG(
		(CASE WHEN dod.ntp_ingredient_name is not null then format('%s %s', dod.ntp_ingredient_name, dod.strength_description) else '<UNKNOWN>' END),
		' and '
		ORDER BY
			regexp_replace(dod.ingredient_stem_name, '[[:punct:]]', '', 'g'),
			regexp_replace(dod.ntp_ingredient_name, '[[:punct:]]', '', 'g'),
			dod.source_order
	) AS ntp_ingredient_detail_set,
	STRING_AGG(
		(CASE WHEN dod.ntp_ingredient_name_fr is not null then format('%s %s', dod.ntp_ingredient_name_fr, dod.strength_description_fr) else '<UNKNOWN>' END),
		' et '
		ORDER BY
			regexp_replace(dod.ingredient_stem_name_fr, '[[:punct:]]', '', 'g'),
			regexp_replace(dod.ntp_ingredient_name_fr, '[[:punct:]]', '', 'g'),
			dod.source_order
	) AS ntp_ingredient_detail_set_fr,
	bool_and(dod.ccdd) AS ccdd_all
FROM
	dpd_drug dd
	LEFT JOIN ccdd_presentation p ON(p.dpd_drug_code = dd.code)
	LEFT JOIN ccdd_drug_ingredient_option_description dod ON(dod.dpd_drug_code = dd.code AND dod.ccdd_presentation_id IS NOT DISTINCT FROM p.id)
GROUP BY
	dd.code,
	p.id;
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

-- object: public.ccdd_combination_product_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_combination_product_source CASCADE;


CREATE MATERIALIZED VIEW public.ccdd_combination_product_source
AS

SELECT
   cp.drug_code AS dpd_drug_code,
   cp.mp_formal_name,
	 cp.mp_formal_name_fr,
   cp.ntp_formal_name,
	 cp.ntp_formal_name_fr,
    (case
        when cp.ntp_type='NA' then null
        else cp.ntp_type
    END)

FROM
   ccdd.combination_products_csv AS cp
WHERE
   exists(select * from dpd_drug_source dd where dd.code = cp.drug_code);
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_combination_product_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_drug_tm | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_drug_tm CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_drug_tm
AS
SELECT
	dd.code AS dpd_drug_code,
	tm.code AS tm_code,
	(
		SELECT
			STRING_AGG(stemList.stem, ' and ')
		FROM (
			SELECT
				tmistem.ccdd_ingredient_stem_name AS stem
			FROM ccdd_tm_ingredient_stem tmistem
			WHERE tmistem.ccdd_tm_code = tm.code
			GROUP BY tmistem.ccdd_ingredient_stem_name
			ORDER BY regexp_replace(tmistem.ccdd_ingredient_stem_name, '[[:punct:]]', '', 'g')
		) AS stemList
	) AS tm_formal_name,
	(
		SELECT
			STRING_AGG(stemList.stem, ' et ')
		FROM (
			SELECT
				tmistem.ccdd_ingredient_stem_name_fr AS stem
			FROM ccdd_tm_ingredient_stem tmistem
			WHERE tmistem.ccdd_tm_code = tm.code
			GROUP BY tmistem.ccdd_ingredient_stem_name_fr
			ORDER BY regexp_replace(tmistem.ccdd_ingredient_stem_name_fr, '[[:punct:]]', '', 'g')
		) AS stemList
	) AS tm_formal_name_fr
FROM
	dpd_drug dd,
	ccdd_tm tm
WHERE
	EXISTS(
		SELECT * FROM
			dpd_drug_ingredient ddi
			INNER JOIN ccdd_dpd_ingredient_ntp_mapping dintp ON(dintp.dpd_named_ingredient_name = ddi.dpd_named_ingredient_name)
			INNER JOIN ccdd_ntp_ingredient ntpi ON(ntpi.name = dintp.ccdd_ntp_ingredient_name)
			INNER JOIN ccdd_tm_ingredient_stem tmistem ON(tmistem.ccdd_ingredient_stem_name = ntpi.ccdd_ingredient_stem_name)
		WHERE ddi.dpd_drug_code = dd.code AND tmistem.ccdd_tm_code = tm.code
	)
	AND
	NOT EXISTS(
		SELECT * FROM
			ccdd_tm_ingredient_stem tmistemOther
		WHERE tmistemOther.ccdd_tm_code = tm.code AND NOT EXISTS(
			SELECT * FROM
				dpd_drug_ingredient ddi
				INNER JOIN ccdd_dpd_ingredient_ntp_mapping dintp ON(dintp.dpd_named_ingredient_name = ddi.dpd_named_ingredient_name)
				INNER JOIN ccdd_ntp_ingredient ntpi ON(ntpi.name = dintp.ccdd_ntp_ingredient_name)
			WHERE ddi.dpd_drug_code = dd.code AND ntpi.ccdd_ingredient_stem_name = tmistemOther.ccdd_ingredient_stem_name
		)
	)
	AND
	NOT EXISTS(
		SELECT * FROM
			dpd_drug_ingredient ddiOther
		WHERE ddiOther.dpd_drug_code = dd.code AND NOT EXISTS(
			SELECT * FROM
				ccdd_dpd_ingredient_ntp_mapping dintp
				INNER JOIN ccdd_ntp_ingredient ntpi ON(ntpi.name = dintp.ccdd_ntp_ingredient_name)
				INNER JOIN ccdd_tm_ingredient_stem tmistem ON(tmistem.ccdd_ingredient_stem_name = ntpi.ccdd_ingredient_stem_name)
			WHERE tmistem.ccdd_tm_code = tm.code AND dintp.dpd_named_ingredient_name = ddiOther.dpd_named_ingredient_name
		)
	);
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_drug_tm OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_drug_status | type: TABLE --
-- DROP TABLE IF EXISTS public.dpd_drug_status CASCADE;
CREATE TABLE public.dpd_drug_status(
	dpd_drug_code bigint NOT NULL,
	status_date date NOT NULL,
	status varchar NOT NULL,
	is_current bool NOT NULL,
	expiration_date varchar
);
-- ddl-end --
ALTER TABLE public.dpd_drug_status OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_drug_status | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_drug_status CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_drug_status
AS

select
	dd.code as dpd_drug_code,
	(array_agg(ds_fm.status_date order by ds_fm.status_date))[1] as first_market_date,
	(array_agg(ds_c.status order by ds_c.status_date))[1] as current_status,
	(array_agg(ds_c.status_date order by ds_c.status_date))[1] as current_status_date,
	(array_agg(ds_c.expiration_date order by ds_c.status_date))[1] as current_expiration_date
from
	dpd_drug dd
	LEFT JOIN dpd_drug_status ds_fm on(ds_fm.dpd_drug_code = dd.code and ds_fm.status = 'MARKETED')
	LEFT JOIN dpd_drug_status ds_c on(ds_c.dpd_drug_code = dd.code and ds_c.is_current)
group by dd.code;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_drug_status OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_drug_schedule_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_drug_schedule_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_drug_schedule_source
AS

SELECT
   sch.drug_code AS dpd_drug_code,
   sch.schedule AS schedule
FROM
   	dpd.schedule AS sch
WHERE
   EXISTS(select * from public.dpd_drug_source ds where ds.code = sch.drug_code)
GROUP BY dpd_drug_code, sch.schedule;
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_drug_schedule_source OWNER TO postgres;
-- ddl-end --

-- object: public.dpd_drug_schedule | type: TABLE --
-- DROP TABLE IF EXISTS public.dpd_drug_schedule CASCADE;
CREATE TABLE public.dpd_drug_schedule(
	schedule varchar,
	dpd_drug_code bigint
);
-- ddl-end --
ALTER TABLE public.dpd_drug_schedule OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_drug_schedule | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_drug_schedule CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_drug_schedule
AS

SELECT
	sch.dpd_drug_code AS dpd_drug_code,
	sch.schedule AS schedule,
	schedule_policy_mapping.policy_type AS policy_type
FROM
	(VALUES
		('Narcotic (CDSA I)', 500002),
		('Schedule G (CDSA I)', 500003),
		('Schedule G (CDSA III)', 500004),
		('Schedule G (CDSA IV)', 500005),
		('Targeted (CDSA IV)', 500006),
		('Narcotic (CDSA II)', 500007)
	) AS schedule_policy_mapping (schedule, policy_type)
	INNER JOIN public.dpd_drug_schedule sch ON schedule_policy_mapping.schedule = sch.schedule
GROUP BY dpd_drug_code, sch.schedule, schedule_policy_mapping.policy_type;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_drug_schedule OWNER TO postgres;
-- ddl-end --

-- object: ccdd.mp_release | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.mp_release CASCADE;
CREATE TABLE ccdd.mp_release(
	mp_code varchar,
	mp_formal_name text,
	mp_en_description text,
	mp_fr_description text,
	mp_status varchar,
	mp_status_effective_time varchar,
	mp_type varchar,
	"Health_Canada_identifier" text,
	"Health_Canada_product_name" text
);
-- ddl-end --
ALTER TABLE ccdd.mp_release OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_mp_table_candidate | type: VIEW --
-- DROP VIEW IF EXISTS public.ccdd_mp_table_candidate CASCADE;
CREATE VIEW public.ccdd_mp_table_candidate
AS

select
	dd.code as dpd_drug_code,
	p.id as ccdd_presentation_id,
	p.pseudodin,
	dd.din,
	dd.brand_name_en,
	COALESCE(cp.mp_formal_name, format('%s (%s %s) %s', COALESCE(mbo.brand, dd.brand_name_en),
		dsum.drug_ingredient_detail_set,
		(CASE
			WHEN p.id is not null THEN format(
				'%s %s',
				COALESCE(ddform.dosage_form, 'NA'),
				dsum.uop_suffix
			)
			ELSE COALESCE(ddform.dosage_form, 'NA')
		END),
		dd.company_name
	)) as mp_formal_name,
	COALESCE(cp.mp_formal_name_fr, format('%s (%s %s) %s', COALESCE(mbo.brand, dd.brand_name_en),
		dsum.drug_ingredient_detail_set_fr,
		(CASE
			WHEN p.id is not null THEN format(
				'%s %s',
				COALESCE(ddform.dosage_form_fr, 'NA'),
				dsum.uop_suffix
			)
			ELSE COALESCE(ddform.dosage_form_fr, 'NA')
		END),
		dd.company_name
	)) as mp_formal_name_fr,
	COALESCE(cp.ntp_formal_name, format(
		'%s %s',
		dsum.ntp_ingredient_detail_set,
		(CASE
			WHEN p.id is not null THEN format(
				'%s %s',
				COALESCE(ddform.dosage_form, 'NA'),
				dsum.uop_suffix
			)
			ELSE COALESCE(ddform.dosage_form, 'NA')
		END)
	)) as ntp_formal_name,
	COALESCE(cp.ntp_formal_name_fr, format(
		'%s %s',
		dsum.ntp_ingredient_detail_set_fr,
		(CASE
			WHEN p.id is not null THEN format(
				'%s %s',
				COALESCE(ddform.dosage_form_fr, 'NA'),
				dsum.uop_suffix
			)
			ELSE COALESCE(ddform.dosage_form_fr, 'NA')
		END)
	)) as ntp_formal_name_fr,
	cp.ntp_type,
	(CASE
		WHEN (COALESCE(CAST(p.pseudodin AS varchar), dd.din)
				IN
			(SELECT * FROM ccdd.mp_deprecations))
	 		THEN COALESCE(
				CAST((SELECT prevmp.mp_status_effective_time FROM ccdd.mp_release prevmp WHERE prevmp.mp_code = COALESCE(CAST(p.pseudodin AS varchar), dd.din)) AS date),
				(SELECT ccdd_date FROM ccdd_config LIMIT 1)
			)
		WHEN ds.current_status = 'MARKETED' THEN ds.first_market_date
		WHEN ds.current_status = 'APPROVED' AND ds.first_market_date IS NOT NULL THEN ds.first_market_date
		WHEN ds.current_status = 'CANCELLED POST MARKET' AND ds.current_status_date < (SELECT ccdd_date FROM ccdd_config LIMIT 1) AND ds.current_expiration_date::date > (SELECT dpd_extract_date FROM ccdd_config LIMIT 1) THEN ds.first_market_date
		ELSE ds.current_status_date
	END) as mp_status_effective_date,
	(CASE
		WHEN (
			COALESCE(CAST(p.pseudodin AS varchar), dd.din)
				IN
			(SELECT * FROM ccdd.mp_deprecations)
		) THEN 'Deprec'
		WHEN ds.current_status = 'MARKETED' OR (
			ds.current_status = 'APPROVED'
			AND
			ds.first_market_date IS NOT NULL
		) THEN 'Active'
		WHEN ds.current_status = 'CANCELLED POST MARKET' AND ds.current_expiration_date::date > (SELECT dpd_extract_date FROM ccdd_config LIMIT 1)  THEN 'Active'
		ELSE 'Inactive'
	END) as mp_status,
	ds.first_market_date,
	exists(
		select * from
			ccdd_drug_tm dtm
			inner join ccdd.tm_filter tf on tf.tm_code = cast(dtm.tm_code as varchar)
		where dtm.dpd_drug_code = dd.code
	) as tm_is_publishable,
	(select count(*) from ccdd_presentation pc where pc.dpd_drug_code = dd.code) as presentation_count
from
	dpd_drug dd
	LEFT JOIN ccdd_presentation p on(p.dpd_drug_code = dd.code)
	LEFT JOIN ccdd_drug_ingredient_summary dsum on(dsum.dpd_drug_code = dd.code and dsum.ccdd_presentation_id is not distinct from p.id)
	LEFT JOIN ccdd_drug_dosage_form ddform on(ddform.dpd_drug_code = dd.code)
	LEFT JOIN ccdd_drug_status ds on(ds.dpd_drug_code = dd.code)
	LEFT JOIN ccdd_combination_product cp on(cp.dpd_drug_code = dd.code)
	LEFT JOIN ccdd.mp_brand_override mbo on(mbo.drug_code = dd.code)
where
	dsum.ccdd_all;
-- ddl-end --
ALTER VIEW public.ccdd_mp_table_candidate OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_ntp_table | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_ntp_table CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_ntp_table
AS

		(SELECT
        (CASE
            WHEN defn.formal_name IS NULL THEN md5(COALESCE(candidate.ntp_formal_name))
        		ELSE defn.code::varchar
            END
        ) AS ntp_code,
        candidate.ntp_formal_name AS ntp_formal_name,
				candidate.ntp_formal_name_fr AS ntp_formal_name_fr,
        (CASE
            WHEN bool_and(candidate.mp_status = 'Inactive') THEN 'Inactive'
            ELSE 'Active'
        END) AS ntp_status,
        candidate.ntp_type as ntp_type,
        to_char((CASE
            WHEN bool_and(candidate.mp_status = 'Inactive') THEN max(candidate.mp_status_effective_date)
            ELSE min(candidate.first_market_date)
        END), 'YYYYMMDD') AS ntp_status_effective_time,
				(bool_or(candidate.tm_is_publishable)) AS tm_is_publishable
    FROM
        ccdd_mp_table_candidate candidate
        LEFT JOIN ccdd.ntp_definition defn ON (defn.formal_name = candidate.ntp_formal_name)
    GROUP BY
        candidate.ntp_formal_name,candidate.ntp_formal_name_fr, candidate.ntp_type, defn.formal_name, defn.code
    ORDER BY ntp_status_effective_time
	) UNION ALL (
		SELECT
			CAST(depr.code as varchar) as ntp_code,
			deprntp.formal_name as ntp_formal_name,
			deprntp.formal_name_fr as ntp_formal_name_fr,
			'Deprec' as ntp_status,
			NULL as ntp_type,
			to_char((SELECT dpd_extract_date FROM ccdd_config LIMIT 1), 'YYYYMMDD') as ntp_status_effective_time,
			true as tm_is_publishable
		FROM
			ccdd.ntp_deprecations depr
			LEFT JOIN ccdd.ntp_definition deprntp ON(CAST(deprntp.code as varchar) = depr.code)
		);


-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_ntp_table OWNER TO postgres;
-- ddl-end --

-- object: ccdd_drug_status_code | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_drug_status_code CASCADE;
CREATE INDEX ccdd_drug_status_code ON public.ccdd_drug_status
	USING btree
	(
	  dpd_drug_code
	);
-- ddl-end --

-- object: public.ccdd_drug_tm_fallback | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_drug_tm_fallback CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_drug_tm_fallback
AS

SELECT
	dd.code AS dpd_drug_code,
	(CASE WHEN stemResult.all_stems_mapped THEN stemResult.name END) AS tm_fallback_formal_name,
	(CASE WHEN stemResult.all_stems_mapped_fr THEN stemResult.name_fr END) AS tm_fallback_formal_name_fr
FROM
	dpd_drug dd
	LEFT JOIN LATERAL (
		SELECT
			STRING_AGG(stemList.stem, ' and ') as name,
			STRING_AGG(stemList.stem_fr, ' et ') as name_fr,
			bool_and(stemList.stem IS NOT NULL) as all_stems_mapped,
			bool_and(stemList.stem_fr IS NOT NULL) as all_stems_mapped_fr
		FROM (
			SELECT
				ntpi.ccdd_ingredient_stem_name AS stem,
				ntpi.ccdd_ingredient_stem_name_fr AS stem_fr
			FROM
				dpd_drug_ingredient ddi
				LEFT JOIN ccdd_dpd_ingredient_ntp_mapping dintp ON(dintp.dpd_named_ingredient_name = ddi.dpd_named_ingredient_name)
				LEFT JOIN ccdd_ntp_ingredient ntpi ON(ntpi.name = dintp.ccdd_ntp_ingredient_name)
			WHERE ddi.dpd_drug_code = dd.code
			GROUP BY ntpi.ccdd_ingredient_stem_name, ntpi.ccdd_ingredient_stem_name_fr
			ORDER BY regexp_replace(ntpi.ccdd_ingredient_stem_name, '[[:punct:]]', '', 'g')
		) AS stemList
	) AS stemResult ON(true);

-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_drug_tm_fallback OWNER TO postgres;
-- ddl-end --

-- object: dpd_drug_fk | type: CONSTRAINT --
-- ALTER TABLE public.dpd_drug_status DROP CONSTRAINT IF EXISTS dpd_drug_fk CASCADE;
ALTER TABLE public.dpd_drug_status ADD CONSTRAINT dpd_drug_fk FOREIGN KEY (dpd_drug_code)
REFERENCES public.dpd_drug (code) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: public.ccdd_mp_ntp_tm_relationship | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_mp_ntp_tm_relationship CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_mp_ntp_tm_relationship
AS

SELECT
	(CASE
		WHEN candidate.presentation_count > 1 THEN COALESCE(cast(candidate.pseudodin AS varchar), candidate.ccdd_presentation_id)
		ELSE candidate.din
	END) AS mp_code,
	candidate.mp_formal_name,
	candidate.mp_formal_name_fr,
	(CASE WHEN CAST(
		(
			SELECT code FROM ccdd.ntp_definition prevntp
			WHERE prevntp.formal_name = candidate.ntp_formal_name
		) as varchar) IS NULL THEN md5(COALESCE(candidate.ntp_formal_name))
		ELSE CAST(
			(
				SELECT
					code
				FROM ccdd.ntp_definition prevntp
				WHERE prevntp.formal_name = candidate.ntp_formal_name) as varchar
		)
	END
	) AS ntp_code,
	candidate.ntp_formal_name,
	candidate.ntp_formal_name_fr,
	(
		CASE
			WHEN CAST(dtm.tm_code as varchar) IS NULL THEN md5(COALESCE(dtm.tm_formal_name, dtmf.tm_fallback_formal_name))
			ELSE CAST(dtm.tm_code as varchar)
		END
	) as tm_code,
	COALESCE(dtm.tm_formal_name, dtmf.tm_fallback_formal_name) as tm_formal_name,
	COALESCE(dtm.tm_formal_name_fr, dtmf.tm_fallback_formal_name_fr) as tm_formal_name_fr,
	candidate.tm_is_publishable AS tm_is_publishable
FROM
	ccdd_mp_table_candidate candidate
	LEFT JOIN ccdd_drug_tm dtm ON(candidate.dpd_drug_code = dtm.dpd_drug_code)
	LEFT JOIN ccdd_drug_tm_fallback dtmf ON(candidate.dpd_drug_code = dtmf.dpd_drug_code)
WHERE (
	(CASE
		WHEN candidate.presentation_count > 1 THEN COALESCE(cast(candidate.pseudodin AS varchar), candidate.ccdd_presentation_id)
		ELSE candidate.din
	END) NOT IN (SELECT * FROM ccdd.mp_deprecations)
);
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_mp_ntp_tm_relationship OWNER TO postgres;
-- ddl-end --

-- object: ccdd_drug_tm_fallback_code | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_drug_tm_fallback_code CASCADE;
CREATE INDEX ccdd_drug_tm_fallback_code ON public.ccdd_drug_tm_fallback
	USING btree
	(
	  dpd_drug_code
	);
-- ddl-end --

-- object: public.ccdd_tm_table | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_tm_table CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_tm_table
AS
	SELECT
		(
			CASE
				WHEN CAST(depr.code as varchar) IS NOT NULL THEN depr.code
				WHEN CAST(dtm.tm_code as varchar) IS NULL THEN md5(COALESCE(dtm.tm_formal_name, dtmf.tm_fallback_formal_name))
				ELSE CAST(dtm.tm_code as varchar)
			END
		) as tm_code,
		COALESCE(dtm.tm_formal_name, dtmf.tm_fallback_formal_name) as tm_formal_name,
		COALESCE(dtm.tm_formal_name_fr, dtmf.tm_fallback_formal_name_fr) as tm_formal_name_fr,
		(CASE
			WHEN CAST(depr.code as varchar) IS NOT NULL THEN 'Deprec'
			WHEN bool_and(candidate.mp_status = 'Inactive') THEN 'Inactive'
			ELSE 'Active'
		END) AS tm_status,
		to_char((CASE
			WHEN CAST(depr.code as varchar) IS NOT NULL THEN depr.status_effective_time
			WHEN bool_and(candidate.mp_status = 'Inactive') THEN max(candidate.mp_status_effective_date)
			ELSE min(candidate.first_market_date)
		END), 'YYYYMMDD') AS tm_status_effective_time,
		bool_or(candidate.tm_is_publishable) AS tm_is_publishable
	FROM
		ccdd_mp_table_candidate candidate
		LEFT JOIN ccdd_drug_tm dtm ON(candidate.dpd_drug_code = dtm.dpd_drug_code)
		LEFT JOIN ccdd_drug_tm_fallback dtmf ON(candidate.dpd_drug_code = dtmf.dpd_drug_code)
		LEFT JOIN ccdd.tm_deprecations depr ON (CAST(depr.code as bigint) = dtm.tm_code)
	GROUP BY
		dtm.tm_code,
		dtm.tm_formal_name,
		dtm.tm_formal_name_fr,
		dtmf.tm_fallback_formal_name,
		dtmf.tm_fallback_formal_name_fr,
		depr.code;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_tm_table OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_mp_table | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_mp_table CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_mp_table
AS

SELECT
	(CASE
		WHEN candidate.presentation_count > 1 THEN COALESCE(cast(candidate.pseudodin AS varchar), candidate.ccdd_presentation_id)
		ELSE candidate.din
	END) AS mp_code,
	candidate.mp_formal_name,
	candidate.mp_formal_name_fr,
	NULL::text AS mp_en_description,
	NULL::text AS mp_fr_description,
	candidate.mp_status,
	to_char(candidate.mp_status_effective_date, 'YYYYMMDD') AS mp_status_effective_time,
	(CASE
		WHEN candidate.presentation_count > 1 THEN 'CCDD'
		ELSE 'DIN'
	END) AS mp_type,
	candidate.din AS "Health_Canada_identifier",
	candidate.brand_name_en AS "Health_Canada_product_name",
	candidate.tm_is_publishable AS tm_is_publishable
FROM
	ccdd_mp_table_candidate candidate;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_mp_table OWNER TO postgres;
-- ddl-end --

-- object: ccdd_drug_tm_drug_code | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_drug_tm_drug_code CASCADE;
CREATE INDEX ccdd_drug_tm_drug_code ON public.ccdd_drug_tm
	USING btree
	(
	  dpd_drug_code
	);
-- ddl-end --

-- object: public.dpd_drug_status_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.dpd_drug_status_source CASCADE;
CREATE MATERIALIZED VIEW public.dpd_drug_status_source
AS

SELECT
   s.drug_code AS dpd_drug_code,
   s.status,
   s.history_date AS status_date,
   s.current_status_flag = 'Y' AS is_current,
   (CASE
	WHEN expiration_date LIKE '____-__-__' THEN to_date(expiration_date, 'YYYY-MM-DD')
	ELSE to_date(expiration_date, 'DD-MON-YYYY')
END)
 AS expiration_date
FROM
   dpd.status AS s
WHERE
   EXISTS(select * from public.dpd_drug_source ds where ds.code = s.drug_code);
-- ddl-end --
ALTER MATERIALIZED VIEW public.dpd_drug_status_source OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_presentation_source | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_presentation_source CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_presentation_source
AS

SELECT
   md5(concat(drug_code, unit_of_presentation, uop_size, uop_unit_of_measure)) AS id,
   uop.drug_code AS dpd_drug_code,
   uop.unit_of_presentation AS unit,
	 uop.unit_of_presentation_fr AS unit_fr,
   CAST(uop.uop_size as double precision) AS size_amount,
   ccdd_normalized_unit(uop.uop_unit_of_measure) AS size_unit,
	 ccdd_normalized_unit(uop.uop_unit_of_measure) AS size_unit_fr,
   uop.calculation = 'Y' AS strength_is_per_size_unit,
   uop.uop_size_insert = 'Y' AS unit_has_explicit_size,
   (select pseudodin from ccdd.pseudodin_map map where
	map.drug_code = uop.drug_code
	AND
	map.unit_of_presentation = uop.unit_of_presentation
	AND
	map.uop_size_amount = uop.uop_size
	AND
	map.uop_size_unit = uop.uop_unit_of_measure
order by pseudodin limit 1) AS pseudodin
FROM
   ccdd.unit_of_presentation_csv AS uop
WHERE
   exists(select * from dpd_drug_source dd where dd.code = uop.drug_code);
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_presentation_source OWNER TO postgres;
-- ddl-end --



-- object: public.qa_release_changes_mp | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_release_changes_mp CASCADE;
CREATE VIEW public.qa_release_changes_mp
AS

select
	cur.mp_code,
	cur.mp_formal_name,
	(CASE
		WHEN nxt.mp_code is null THEN 'DELETED'
		ELSE string_agg(FORMAT(
			'%s: "%s" -> %s',
			cmp.field_name,
			cmp.cur_value,
			(CASE WHEN cmp.nxt_value is not null THEN FORMAT('"%s"', cmp.nxt_value) ELSE 'NULL' END)
		), E'\n' ORDER BY cmp.field_name)
	END) as changes
from
	ccdd.mp_release cur
	LEFT JOIN ccdd_mp_table nxt ON(nxt.mp_code = cur.mp_code)
	LEFT JOIN LATERAL (VALUES
		('mp_formal_name', cur.mp_formal_name, nxt.mp_formal_name),
		('mp_status', UPPER(cur.mp_status), UPPER(nxt.mp_status)),
		('mp_status_effective_time', cur.mp_status_effective_time, nxt.mp_status_effective_time),
		('mp_type', cur.mp_type, nxt.mp_type),
		('Health_Canada_identifier', cur."Health_Canada_identifier", nxt."Health_Canada_identifier"),
		('Health_Canada_product_name', cur."Health_Canada_product_name", nxt."Health_Canada_product_name")
	) AS cmp (
		field_name, cur_value, nxt_value
	) ON true
WHERE
	cmp.cur_value is distinct from cmp.nxt_value
GROUP BY cur.mp_code, cur.mp_formal_name, nxt.mp_code

UNION

select
	nxt.mp_code,
	nxt.mp_formal_name,
	'ADDED' as changes
from
	ccdd_mp_table nxt
WHERE
	not exists(select * from ccdd.mp_release cur where cur.mp_code = nxt.mp_code);
-- ddl-end --
ALTER VIEW public.qa_release_changes_mp OWNER TO postgres;
-- ddl-end --

-- object: ccdd.ntp_release | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.ntp_release CASCADE;
CREATE TABLE ccdd.ntp_release(
	ntp_code varchar,
	ntp_formal_name text,
	ntp_en_description text,
	ntp_fr_description text,
	ntp_status varchar,
	ntp_status_effective_time varchar,
	ntp_type varchar
);
-- ddl-end --
ALTER TABLE ccdd.ntp_release OWNER TO postgres;
-- ddl-end --

-- object: ccdd_mp_table_code | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_mp_table_code CASCADE;
CREATE INDEX ccdd_mp_table_code ON public.ccdd_mp_table
	USING btree
	(
	  mp_code
	);
-- ddl-end --

-- object: ccdd_mp_table_name | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_mp_table_name CASCADE;
CREATE INDEX ccdd_mp_table_name ON public.ccdd_mp_table
	USING btree
	(
	  mp_formal_name
	);
-- ddl-end --

-- object: ccdd_ntp_table_code | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_ntp_table_code CASCADE;
CREATE INDEX ccdd_ntp_table_code ON public.ccdd_ntp_table
	USING btree
	(
	  ntp_code
	);
-- ddl-end --

-- object: ccdd_ntp_table_name | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_ntp_table_name CASCADE;
CREATE INDEX ccdd_ntp_table_name ON public.ccdd_ntp_table
	USING btree
	(
	  ntp_formal_name
	);
-- ddl-end --

-- object: tm_table_code | type: INDEX --
-- DROP INDEX IF EXISTS public.tm_table_code CASCADE;
CREATE INDEX tm_table_code ON public.ccdd_tm_table
	USING btree
	(
	  tm_code
	);
-- ddl-end --

-- object: tm_table_name | type: INDEX --
-- DROP INDEX IF EXISTS public.tm_table_name CASCADE;
CREATE INDEX tm_table_name ON public.ccdd_tm_table
	USING btree
	(
	  tm_formal_name
	);
-- ddl-end --

-- object: ccdd_mp_ntp_tm_relationship_mp | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_mp_ntp_tm_relationship_mp CASCADE;
CREATE INDEX ccdd_mp_ntp_tm_relationship_mp ON public.ccdd_mp_ntp_tm_relationship
	USING btree
	(
	  mp_code
	);
-- ddl-end --

-- object: ccdd.tm_release | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.tm_release CASCADE;
CREATE TABLE ccdd.tm_release(
	tm_code varchar,
	tm_formal_name text,
	tm_status varchar,
	tm_status_effective_time varchar
);
-- ddl-end --
ALTER TABLE ccdd.tm_release OWNER TO postgres;
-- ddl-end --

-- object: ccdd.mp_ntp_tm_relationship_release | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.mp_ntp_tm_relationship_release CASCADE;
CREATE TABLE ccdd.mp_ntp_tm_relationship_release(
	mp_code varchar,
	mp_formal_name text,
	ntp_code varchar,
	ntp_formal_name text,
	tm_code varchar,
	tm_formal_name text
);
-- ddl-end --
ALTER TABLE ccdd.mp_ntp_tm_relationship_release OWNER TO postgres;
-- ddl-end --

-- object: public.qa_release_changes_ntp | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_release_changes_ntp CASCADE;
CREATE VIEW public.qa_release_changes_ntp
AS

select
	cur.ntp_code,
	cur.ntp_formal_name,
	(CASE
		WHEN nxt.ntp_code is null THEN
		(CASE WHEN LENGTH(cur.ntp_code) = 32 AND cur.ntp_formal_name = (SELECT ntp_formal_name FROM ccdd_ntp_table WHERE ntp_formal_name = cur.ntp_formal_name) THEN 'CHANGED' ELSE 'DELETED' END)
		ELSE string_agg(FORMAT(
			'%s: "%s" -> %s',
			cmp.field_name,
			cmp.cur_value,
			(CASE WHEN cmp.nxt_value is not null THEN FORMAT('"%s"', cmp.nxt_value) ELSE 'NULL' END)
		), E'\n' ORDER BY cmp.field_name)
	END) as changes
from
	ccdd.ntp_release cur
	LEFT JOIN ccdd_ntp_table nxt ON(cur.ntp_code = CAST(nxt.ntp_code AS varchar))
	LEFT JOIN LATERAL (VALUES
		('ntp_formal_name', cur.ntp_formal_name, nxt.ntp_formal_name),
		('ntp_status', UPPER(cur.ntp_status), UPPER(nxt.ntp_status)),
		('ntp_status_effective_time', cur.ntp_status_effective_time, nxt.ntp_status_effective_time),
		('ntp_type', cur.ntp_type, COALESCE(nxt.ntp_type, 'NA'))
	) AS cmp (
		field_name, cur_value, nxt_value
	) ON true
WHERE
	cmp.cur_value is distinct from cmp.nxt_value
GROUP BY cur.ntp_code, cur.ntp_formal_name, nxt.ntp_code

UNION

select
	CAST(nxt.ntp_code AS varchar) as ntp_code,
	nxt.ntp_formal_name,
	(CASE WHEN nxt.ntp_formal_name = (SELECT ntp_formal_name FROM ccdd.ntp_release WHERE ntp_formal_name = nxt.ntp_formal_name) THEN 'CHANGED' ELSE 'ADDED' END)
	 as changes
from
	ccdd_ntp_table nxt
WHERE
	not exists(select * from ccdd.ntp_release cur where cur.ntp_code = CAST(nxt.ntp_code AS varchar));
-- ddl-end --
ALTER VIEW public.qa_release_changes_ntp OWNER TO postgres;
-- ddl-end --

-- object: public.qa_release_changes_tm | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_release_changes_tm CASCADE;
CREATE VIEW public.qa_release_changes_tm
AS

select
	cur.tm_code,
	cur.tm_formal_name,
	(CASE
		WHEN nxt.tm_code is null THEN
		(CASE WHEN LENGTH(cur.tm_code) = 32 AND cur.tm_formal_name = (SELECT tm_formal_name FROM ccdd_tm_table WHERE tm_formal_name = cur.tm_formal_name) THEN 'CHANGED' ELSE 'DELETED' END)
		ELSE string_agg(FORMAT(
			'%s: "%s" -> %s',
			cmp.field_name,
			cmp.cur_value,
			(CASE WHEN cmp.nxt_value is not null THEN FORMAT('"%s"', cmp.nxt_value) ELSE 'NULL' END)
		), E'\n' ORDER BY cmp.field_name)
	END) as changes
from
	ccdd.tm_release cur
	LEFT JOIN ccdd_tm_table nxt ON(cur.tm_code = CAST(nxt.tm_code AS varchar))
	LEFT JOIN LATERAL (VALUES
		('tm_formal_name', cur.tm_formal_name, nxt.tm_formal_name),
		('tm_status', UPPER(cur.tm_status), UPPER(nxt.tm_status)),
		('tm_status_effective_time', cur.tm_status_effective_time, nxt.tm_status_effective_time)
	) AS cmp (
		field_name, cur_value, nxt_value
	) ON true
WHERE
	cmp.cur_value is distinct from cmp.nxt_value
GROUP BY cur.tm_code, cur.tm_formal_name, nxt.tm_code

UNION

select
	CAST(nxt.tm_code AS varchar) as tm_code,
	nxt.tm_formal_name,
	(CASE WHEN nxt.tm_formal_name = (SELECT tm_formal_name FROM ccdd.tm_release WHERE tm_formal_name = nxt.tm_formal_name) THEN 'CHANGED' ELSE 'ADDED' END)
	as changes
from
	ccdd_tm_table nxt
WHERE
	not exists(select * from ccdd.tm_release cur where cur.tm_code = CAST(nxt.tm_code AS varchar));
-- ddl-end --
ALTER VIEW public.qa_release_changes_tm OWNER TO postgres;
-- ddl-end --

-- object: public.qa_mp_duplicates_code | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_mp_duplicates_code CASCADE;
CREATE VIEW public.qa_mp_duplicates_code
AS

select
	*
from
	ccdd_mp_table nxt
where
	(select count(*) from ccdd_mp_table ct where ct.mp_code = nxt.mp_code) > 1
order by
	nxt.mp_code;
-- ddl-end --
ALTER VIEW public.qa_mp_duplicates_code OWNER TO postgres;
-- ddl-end --

-- object: public.qa_mp_duplicates_name | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_mp_duplicates_name CASCADE;
CREATE VIEW public.qa_mp_duplicates_name
AS

select
	*
from
	ccdd_mp_table nxt
where
	(select count(*) from ccdd_mp_table ct where ct.mp_formal_name = nxt.mp_formal_name) > 1
order by
	nxt.mp_formal_name;
-- ddl-end --
ALTER VIEW public.qa_mp_duplicates_name OWNER TO postgres;
-- ddl-end --

-- object: public.qa_ntp_duplicates_code | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_ntp_duplicates_code CASCADE;
CREATE VIEW public.qa_ntp_duplicates_code
AS

select
	*
from
	ccdd_ntp_table nxt
where
	(select count(*) from ccdd_ntp_table ct where ct.ntp_code = nxt.ntp_code) > 1
order by
	nxt.ntp_code;
-- ddl-end --
ALTER VIEW public.qa_ntp_duplicates_code OWNER TO postgres;
-- ddl-end --

-- object: public.qa_ntp_duplicates_name | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_ntp_duplicates_name CASCADE;
CREATE VIEW public.qa_ntp_duplicates_name
AS

select
	*
from
	ccdd_ntp_table nxt
where
	(select count(*) from ccdd_ntp_table ct where ct.ntp_formal_name = nxt.ntp_formal_name) > 1
order by
	nxt.ntp_formal_name;
-- ddl-end --
ALTER VIEW public.qa_ntp_duplicates_name OWNER TO postgres;
-- ddl-end --

-- object: public.qa_tm_duplicates_code | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_tm_duplicates_code CASCADE;
CREATE VIEW public.qa_tm_duplicates_code
AS

select
	*
from
	ccdd_tm_table nxt
where
	(select count(*) from ccdd_tm_table ct where ct.tm_code = nxt.tm_code) > 1
order by
	nxt.tm_code;
-- ddl-end --
ALTER VIEW public.qa_tm_duplicates_code OWNER TO postgres;
-- ddl-end --

-- object: public.qa_tm_duplicates_name | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_tm_duplicates_name CASCADE;
CREATE VIEW public.qa_tm_duplicates_name
AS

select
	*
from
	ccdd_tm_table nxt
where
	(select count(*) from ccdd_tm_table ct where ct.tm_formal_name = nxt.tm_formal_name) > 1
order by
	nxt.tm_formal_name;
-- ddl-end --
ALTER VIEW public.qa_tm_duplicates_name OWNER TO postgres;
-- ddl-end --

-- object: public.qa_missing_concepts_ntp | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_missing_concepts_ntp CASCADE;
CREATE VIEW public.qa_missing_concepts_ntp
AS

select
	*
from
	ccdd_ntp_table nxt
where
	nxt.ntp_code is not null AND length(nxt.ntp_code) = 32
order by
	nxt.ntp_formal_name;
-- ddl-end --
ALTER VIEW public.qa_missing_concepts_ntp OWNER TO postgres;
-- ddl-end --

-- object: dpd_drug_ingredient_option_drug_code | type: INDEX --
-- DROP INDEX IF EXISTS public.dpd_drug_ingredient_option_drug_code CASCADE;
CREATE INDEX dpd_drug_ingredient_option_drug_code ON public.dpd_drug_ingredient_option
	USING btree
	(
	  dpd_drug_code
	);
-- ddl-end --

-- object: public.qa_missing_concepts_tm | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_missing_concepts_tm CASCADE;
CREATE VIEW public.qa_missing_concepts_tm
AS

select
	*
from
	ccdd_tm_table nxt
where
	nxt.tm_code is not null AND length(nxt.tm_code) = 32
order by
	nxt.tm_formal_name;
-- ddl-end --
ALTER VIEW public.qa_missing_concepts_tm OWNER TO postgres;
-- ddl-end --

-- object: public.qa_missing_concepts_dosage_form | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_missing_concepts_dosage_form CASCADE;
CREATE VIEW public.qa_missing_concepts_dosage_form
AS

select
	dd.code as dpd_drug_code,
	dd.din,
	(select string_agg(cast(ddf.dpd_form_code as varchar), '|' order by ddf.dpd_form_code) from
		dpd_drug_form ddf
	where ddf.dpd_drug_code = dd.code) as dpd_form_code_combo,
	(select string_agg(df.name_en, ', ' order by ddf.dpd_form_code) from
		dpd_drug_form ddf left join dpd_form df on(df.code = ddf.dpd_form_code)
	where ddf.dpd_drug_code = dd.code) as dpd_form_name_combo,
	(select string_agg(cast(ddr.dpd_route_code as varchar), '|' order by ddr.dpd_route_code) from
		dpd_drug_route ddr
	where ddr.dpd_drug_code = dd.code) as dpd_route_code_combo,
	(select string_agg(dr.name_en, ', ' order by ddr.dpd_route_code) from
		dpd_drug_route ddr left join dpd_route dr on(dr.code = ddr.dpd_route_code)
	where ddr.dpd_drug_code = dd.code) as dpd_route_name_combo
from
	dpd_drug dd
	LEFT JOIN ccdd_drug_dosage_form ddform on(ddform.dpd_drug_code = dd.code)
where
	ddform.dosage_form is null
	AND
	exists(select * from
		ccdd_mp_table_candidate candidate
	where candidate.dpd_drug_code = dd.code)
	AND
	not exists(select * from
		ccdd_combination_product cp
	where cp.dpd_drug_code = dd.code);
-- ddl-end --
ALTER VIEW public.qa_missing_concepts_dosage_form OWNER TO postgres;
-- ddl-end --

-- object: public.qa_missing_concepts_ingredient_stem | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_missing_concepts_ingredient_stem CASCADE;
CREATE VIEW public.qa_missing_concepts_ingredient_stem
AS

select
	dd.code as dpd_drug_code,
	dd.din,
	ddio.dpd_named_ingredient_name,
	exists(select * from
		ccdd_combination_product cp
	where cp.dpd_drug_code = dd.code) as combination_product_defined
from
	dpd_drug dd
	INNER JOIN dpd_drug_ingredient_option AS ddio on (ddio.dpd_drug_code = dd.code)
	LEFT JOIN ccdd_dpd_ingredient_ntp_mapping ntpmap ON (ntpmap.dpd_named_ingredient_name = ddio.dpd_named_ingredient_name)
where ntpmap.ccdd_ntp_ingredient_name is null
order by dd.din;
-- ddl-end --
ALTER VIEW public.qa_missing_concepts_ingredient_stem OWNER TO postgres;
-- ddl-end --

-- object: public.qa_release_changes_mp_ntp_tm_relationship | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_release_changes_mp_ntp_tm_relationship CASCADE;
CREATE VIEW public.qa_release_changes_mp_ntp_tm_relationship
AS

select
	cur.mp_code,
	cur.mp_formal_name,
	(CASE
		WHEN nxt.mp_code is null THEN 'DELETED'
		ELSE string_agg(FORMAT(
			'%s: "%s" -> %s',
			cmp.field_name,
			cmp.cur_value,
			(CASE WHEN cmp.nxt_value is not null THEN FORMAT('"%s"', cmp.nxt_value) ELSE 'NULL' END)
		), E'\n' ORDER BY cmp.field_name)
	END) as changes
from
	ccdd.mp_ntp_tm_relationship_release cur
	LEFT JOIN ccdd_mp_ntp_tm_relationship nxt ON(nxt.mp_code = cur.mp_code)
	LEFT JOIN LATERAL (VALUES
		('mp_formal_name', cur.mp_formal_name, nxt.mp_formal_name),
		('ntp_code', cur.ntp_code, CAST(nxt.ntp_code as varchar)),
		('ntp_formal_name', cur.ntp_formal_name, nxt.ntp_formal_name),
		('tm_code', cur.tm_code, CAST(nxt.tm_code as varchar)),
		('tm_formal_name', cur.tm_formal_name, nxt.tm_formal_name)
	) AS cmp (
		field_name, cur_value, nxt_value
	) ON true
WHERE
	cmp.cur_value is distinct from cmp.nxt_value
GROUP BY cur.mp_code, cur.mp_formal_name, nxt.mp_code

UNION

select
	nxt.mp_code,
	nxt.mp_formal_name,
	'ADDED' as changes
from
	ccdd_mp_ntp_tm_relationship nxt
WHERE
	not exists(select * from ccdd.mp_ntp_tm_relationship_release cur where cur.mp_code = nxt.mp_code);
-- ddl-end --
ALTER VIEW public.qa_release_changes_mp_ntp_tm_relationship OWNER TO postgres;
-- ddl-end --

-- object: ccdd_tm_ingredient_stem_tm_code | type: INDEX --
-- DROP INDEX IF EXISTS public.ccdd_tm_ingredient_stem_tm_code CASCADE;
CREATE INDEX ccdd_tm_ingredient_stem_tm_code ON public.ccdd_tm_ingredient_stem
	USING btree
	(
	  ccdd_tm_code
	);
-- ddl-end --

-- object: public.qa_mp_ntp_tm_relationship_duplicates_code | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_mp_ntp_tm_relationship_duplicates_code CASCADE;
CREATE VIEW public.qa_mp_ntp_tm_relationship_duplicates_code
AS

select
	*
from
	ccdd_mp_ntp_tm_relationship nxt
where
	(select count(*) from ccdd_mp_ntp_tm_relationship ct where ct.mp_code = nxt.mp_code) > 1
order by
	nxt.mp_code;
-- ddl-end --
ALTER VIEW public.qa_mp_ntp_tm_relationship_duplicates_code OWNER TO postgres;
-- ddl-end --

-- object: public.qa_mp_ntp_tm_relationship_missing_rows | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_mp_ntp_tm_relationship_missing_rows CASCADE;
CREATE VIEW public.qa_mp_ntp_tm_relationship_missing_rows
AS

select
	*
from
	ccdd_mp_table nxt
where
	not exists(select * from ccdd_mp_ntp_tm_relationship rel where rel.mp_code = nxt.mp_code)
order by
	nxt.mp_formal_name;
-- ddl-end --
ALTER VIEW public.qa_mp_ntp_tm_relationship_missing_rows OWNER TO postgres;
-- ddl-end --

-- object: dpd_drug_fk | type: CONSTRAINT --
-- ALTER TABLE public.dpd_drug_schedule DROP CONSTRAINT IF EXISTS dpd_drug_fk CASCADE;
ALTER TABLE public.dpd_drug_schedule ADD CONSTRAINT dpd_drug_fk FOREIGN KEY (dpd_drug_code)
REFERENCES public.dpd_drug (code) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: public.qa_mp_ntp_tm_relationship_missing_parents | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_mp_ntp_tm_relationship_missing_parents CASCADE;
CREATE VIEW public.qa_mp_ntp_tm_relationship_missing_parents
AS

select
	*
from
	ccdd_mp_ntp_tm_relationship nxt
where
	not exists(select * from ccdd_mp_table rel where rel.mp_code = nxt.mp_code)
order by
	nxt.mp_formal_name;
-- ddl-end --
ALTER VIEW public.qa_mp_ntp_tm_relationship_missing_parents OWNER TO postgres;
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

-- object: public.qa_missing_concepts_pseudodin | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_missing_concepts_pseudodin CASCADE;
CREATE VIEW public.qa_missing_concepts_pseudodin
AS

select
	nxt.din,
	nxt.mp_formal_name,
	nxt.mp_formal_name_fr,
	p.dpd_drug_code as drug_code,
	p.unit as unit_of_presentation,
	p.unit_fr as unit_of_presentation_fr,
	p.size_amount as uop_size_amount,
	p.size_unit as uop_size_unit,
	p.size_unit_fr as uop_size_unit_fr
from
	ccdd_mp_table_candidate nxt
	left join ccdd_presentation p on(p.id = nxt.ccdd_presentation_id)
where
	nxt.ccdd_presentation_id is not null
	and
	nxt.presentation_count > 1
	and
	nxt.pseudodin is null
order by
	nxt.dpd_drug_code;
-- ddl-end --
ALTER VIEW public.qa_missing_concepts_pseudodin OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_tm_special_groupings | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_tm_special_groupings CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_tm_special_groupings
AS

SELECT
	tsg.tm_code AS tm_code,
	tsg.policy_type AS policy_type,
	tsg.policy_reference AS policy_reference
FROM
	ccdd.tm_groupings tsg;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_tm_special_groupings OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_mp_special_groupings | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_mp_special_groupings CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_mp_special_groupings
AS

SELECT
	msg.mp_code AS mp_code,
	msg.mp_formal_name AS mp_formal_name,
	msg.mp_formal_name_fr AS mp_formal_name_fr,
	msg.policy_type AS policy_type,
	msg.policy_reference AS policy_reference,
	msg.tm_is_publishable AS tm_is_publishable
FROM (
	(
		SELECT
			(CASE
				WHEN can.presentation_count > 1 THEN COALESCE(cast(can.pseudodin as varchar), can.ccdd_presentation_id)
				ELSE can.din
			END)::varchar AS mp_code,
			can.mp_formal_name AS mp_formal_name,
			can.mp_formal_name_fr AS mp_formal_name_fr,
			sch.policy_type AS policy_type,
			can.tm_is_publishable AS tm_is_publishable,
			'http://laws-lois.justice.gc.ca/eng/acts/C-38.8/FullText.html'::varchar AS policy_reference
		FROM
			ccdd_drug_schedule sch
			INNER JOIN ccdd_mp_table_candidate can
			ON sch.dpd_drug_code = can.dpd_drug_code
	)
	UNION
	(
		SELECT
			(CASE
				WHEN can.presentation_count > 1 THEN COALESCE(cast(can.pseudodin as varchar), can.ccdd_presentation_id)
				ELSE can.din
			END)::varchar AS mp_code,
			can.mp_formal_name AS mp_formal_name,
			can.mp_formal_name_fr AS mp_formal_name_fr,
			tsg.policy_type AS policy_type,
			can.tm_is_publishable AS tm_is_publishable,
			tsg.policy_reference AS policy_reference
		FROM
			ccdd_tm_special_groupings tsg
			JOIN ccdd_drug_tm cdt ON cdt.tm_code = tsg.tm_code
			JOIN ccdd_mp_table_candidate can ON can.dpd_drug_code = cdt.dpd_drug_code
	)
) msg;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_mp_special_groupings OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_special_groupings | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_special_groupings CASCADE;

CREATE TABLE ccdd.special_groupings(
	ccdd_code varchar NOT NULL,
	ccdd_formal_name text NOT NULL,
	ccdd_type varchar,
	policy_type varchar,
	policy_reference varchar,
	special_groupings_status text,
	special_groupings_status_effective_time text
);
-- ddl-end --
ALTER TABLE ccdd.special_groupings OWNER TO postgres;

CREATE MATERIALIZED VIEW public.ccdd_special_groupings
AS

SELECT
	csg.ccdd_code,
	csg.ccdd_formal_name,
	csg.ccdd_type,
	csg.policy_type,
	csg.policy_reference,
	csg.tm_is_publishable,
	'Active'::text AS special_groupings_status,
	'20170919'::text AS special_groupings_status_effective_time
FROM (
	(
		SELECT DISTINCT
			reltm.tm_code::varchar AS ccdd_code,
			reltm.tm_formal_name AS ccdd_formal_name,
			CAST('TM' AS varchar) AS ccdd_type,
			policy_type AS policy_type,
			reltm.tm_is_publishable AS tm_is_publishable,
			policy_reference AS policy_reference
		FROM
			ccdd_mp_special_groupings msg
			JOIN (
				SELECT
					rel.tm_code,
					rel.tm_formal_name,
					rel.mp_code,
					rel.tm_is_publishable
				FROM ccdd_mp_ntp_tm_relationship rel
			) reltm ON reltm.mp_code = msg.mp_code
	)
	UNION ALL
	(
		SELECT DISTINCT
			relntp.ntp_code::varchar AS ccdd_code,
			relntp.ntp_formal_name AS ccdd_formal_name,
			CAST('NTP' AS varchar) AS ccdd_type,
			msg.policy_type AS policy_type,
			relntp.tm_is_publishable AS tm_is_publishable,
			msg.policy_reference AS policy_reference
		FROM
			ccdd_mp_special_groupings msg
			JOIN (
				SELECT
					rel.ntp_code,
					rel.ntp_formal_name,
					rel.mp_code,
					rel.tm_is_publishable
				FROM ccdd_mp_ntp_tm_relationship rel
			) relntp ON relntp.mp_code = msg.mp_code
	)
	UNION ALL
	(
		SELECT
			msg.mp_code AS ccdd_code,
			msg.mp_formal_name AS ccdd_formal_name,
			CAST('MP' AS varchar) AS ccdd_type,
			msg.policy_type AS policy_type,
			msg.tm_is_publishable AS tm_is_publishable,
			msg.policy_reference AS policy_reference
		FROM
			ccdd_mp_special_groupings msg
	)
) csg;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_special_groupings OWNER TO postgres;
-- ddl-end --

-- -- object: public.ccdd_config | type: TABLE --
-- -- DROP TABLE IF EXISTS public.ccdd_config CASCADE;
-- CREATE TABLE public.ccdd_config(
-- 	ccdd_date date,
-- 	dpd_extract_date date
-- );
-- -- ddl-end --
-- ALTER TABLE public.ccdd_config OWNER TO postgres;
-- -- ddl-end --
--
-- object: ccdd.mp_release_candidate | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.mp_release_candidate CASCADE;
CREATE TABLE ccdd.mp_release_candidate(
	mp_code varchar,
	mp_formal_name text,
	mp_en_description text,
	mp_fr_description text,
	mp_status varchar,
	mp_status_effective_time varchar,
	mp_type varchar,
	"Health_Canada_identifier" text,
	"Health_Canada_product_name" text
);
-- ddl-end --
ALTER TABLE ccdd.mp_release_candidate OWNER TO postgres;
-- ddl-end --

-- object: ccdd.mp_ntp_tm_relationship_release_candidate | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.mp_ntp_tm_relationship_release_candidate CASCADE;
CREATE TABLE ccdd.mp_ntp_tm_relationship_release_candidate(
	mp_code varchar,
	mp_formal_name text,
	ntp_code varchar,
	ntp_formal_name text,
	tm_code varchar,
	tm_formal_name text
);
-- ddl-end --
ALTER TABLE ccdd.mp_ntp_tm_relationship_release_candidate OWNER TO postgres;
-- ddl-end --

-- object: ccdd.tm_release_candidate | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.tm_release_candidate CASCADE;
CREATE TABLE ccdd.tm_release_candidate(
	tm_code varchar,
	tm_formal_name text,
	tm_status varchar,
	tm_status_effective_time varchar
);
-- ddl-end --
ALTER TABLE ccdd.tm_release_candidate OWNER TO postgres;
-- ddl-end --

-- object: ccdd.ntp_release_candidate | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.ntp_release_candidate CASCADE;
CREATE TABLE ccdd.ntp_release_candidate(
	ntp_code varchar,
	ntp_formal_name text,
	ntp_en_description text,
	ntp_fr_description text,
	ntp_status varchar,
	ntp_status_effective_time varchar,
	ntp_type varchar
);
-- ddl-end --
ALTER TABLE ccdd.ntp_release_candidate OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_mp_release_candidate | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_mp_release_candidate CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_mp_release_candidate
AS

SELECT
	mp_code,
	mp_formal_name,
	mp_formal_name_fr,
	mp_en_description,
	mp_fr_description,
	mp_status,
	mp_status_effective_time,
	mp_type,
	"Health_Canada_identifier",
	"Health_Canada_product_name"
FROM ccdd_mp_table
WHERE tm_is_publishable = true;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_mp_release_candidate OWNER TO postgres;
-- ddl-end --

-- object: public.qa_release_changes_mp_release_candidate | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_release_changes_mp_release_candidate CASCADE;
CREATE VIEW public.qa_release_changes_mp_release_candidate
AS

SELECT
	cur.mp_code,
	cur.mp_formal_name,
	(CASE
		WHEN nxt.mp_code IS NULL THEN 'DELETED'
		ELSE string_agg(FORMAT(
			'%s: "%s" -> %s',
			cmp.field_name,
			cmp.cur_value,
			(CASE WHEN cmp.nxt_value IS NOT NULL THEN FORMAT('"%s"', cmp.nxt_value) ELSE 'NULL' END)
		), E'\n' ORDER BY cmp.field_name)
	END) AS changes
FROM
	ccdd.mp_release_candidate cur
	LEFT JOIN ccdd_mp_release_candidate nxt ON(nxt.mp_code = cur.mp_code)
	LEFT JOIN LATERAL (VALUES
		('mp_formal_name', cur.mp_formal_name, nxt.mp_formal_name),
		('mp_status', UPPER(cur.mp_status), UPPER(nxt.mp_status)),
		('mp_status_effective_time', cur.mp_status_effective_time, nxt.mp_status_effective_time),
		('mp_type', cur.mp_type, nxt.mp_type),
		('Health_Canada_identifier', cur."Health_Canada_identifier", nxt."Health_Canada_identifier"),
		('Health_Canada_product_name', cur."Health_Canada_product_name", nxt."Health_Canada_product_name")
	) AS cmp (
		field_name, cur_value, nxt_value
	) ON true
WHERE
	cmp.cur_value IS DISTINCT FROM cmp.nxt_value
GROUP BY cur.mp_code, cur.mp_formal_name, nxt.mp_code

UNION

SELECT
	nxt.mp_code,
	nxt.mp_formal_name,
	'ADDED' AS changes
FROM
	ccdd_mp_release_candidate nxt
WHERE
	NOT EXISTS(SELECT * FROM ccdd.mp_release_candidate cur WHERE cur.mp_code = nxt.mp_code);
-- ddl-end --
ALTER VIEW public.qa_release_changes_mp_release_candidate OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_ntp_release_candidate | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_ntp_release_candidate CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_ntp_release_candidate
AS

SELECT
	ntp_code,
	ntp_formal_name,
	ntp_formal_name_fr,
	ntp_status,
	ntp_status_effective_time,
	ntp_type
FROM ccdd_ntp_table
WHERE tm_is_publishable = true;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_ntp_release_candidate OWNER TO postgres;
-- ddl-end --

-- object: public.qa_release_changes_ntp_release_candidate | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_release_changes_ntp_release_candidate CASCADE;
CREATE VIEW public.qa_release_changes_ntp_release_candidate
AS

select
	cur.ntp_code,
	cur.ntp_formal_name,
	(CASE
		WHEN nxt.ntp_code is null THEN 'DELETED'
		ELSE string_agg(FORMAT(
			'%s: "%s" -> %s',
			cmp.field_name,
			cmp.cur_value,
			(CASE WHEN cmp.nxt_value is not null THEN FORMAT('"%s"', cmp.nxt_value) ELSE 'NULL' END)
		), E'\n' ORDER BY cmp.field_name)
	END) as changes
from
	ccdd.ntp_release_candidate cur
	LEFT JOIN ccdd_ntp_release_candidate nxt ON(cur.ntp_code = CAST(nxt.ntp_code AS varchar))
	LEFT JOIN LATERAL (VALUES
		('ntp_formal_name', cur.ntp_formal_name, nxt.ntp_formal_name),
		('ntp_status', UPPER(cur.ntp_status), UPPER(nxt.ntp_status)),
		('ntp_status_effective_time', cur.ntp_status_effective_time, nxt.ntp_status_effective_time),
		('ntp_type', cur.ntp_type, COALESCE(nxt.ntp_type, 'NA'))
	) AS cmp (
		field_name, cur_value, nxt_value
	) ON true
WHERE
	cmp.cur_value is distinct from cmp.nxt_value
GROUP BY cur.ntp_code, cur.ntp_formal_name, nxt.ntp_code

UNION

select
	CAST(nxt.ntp_code AS varchar) as ntp_code,
	nxt.ntp_formal_name,
	'ADDED' as changes
from
	ccdd_ntp_release_candidate nxt
WHERE
	not exists(select * from ccdd.ntp_release_candidate cur where cur.ntp_code = CAST(nxt.ntp_code AS varchar));
-- ddl-end --
ALTER VIEW public.qa_release_changes_ntp_release_candidate OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_tm_release_candidate | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_tm_release_candidate CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_tm_release_candidate
AS

SELECT
	tm_code,
	tm_formal_name,
	tm_status,
	tm_status_effective_time
FROM
	ccdd_tm_table
WHERE tm_is_publishable = true;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_tm_release_candidate OWNER TO postgres;
-- ddl-end --

-- object: public.qa_release_changes_tm_release_candidate | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_release_changes_tm_release_candidate CASCADE;
CREATE VIEW public.qa_release_changes_tm_release_candidate
AS

select
	cur.tm_code,
	cur.tm_formal_name,
	(CASE
		WHEN nxt.tm_code is null THEN 'DELETED'
		ELSE string_agg(FORMAT(
			'%s: "%s" -> %s',
			cmp.field_name,
			cmp.cur_value,
			(CASE WHEN cmp.nxt_value is not null THEN FORMAT('"%s"', cmp.nxt_value) ELSE 'NULL' END)
		), E'\n' ORDER BY cmp.field_name)
	END) as changes
from
	ccdd.tm_release_candidate cur
	LEFT JOIN ccdd_tm_release_candidate nxt ON(cur.tm_code = CAST(nxt.tm_code AS varchar))
	LEFT JOIN LATERAL (VALUES
		('tm_formal_name', cur.tm_formal_name, nxt.tm_formal_name),
		('tm_status', UPPER(cur.tm_status), UPPER(nxt.tm_status)),
		('tm_status_effective_time', cur.tm_status_effective_time, nxt.tm_status_effective_time)
	) AS cmp (
		field_name, cur_value, nxt_value
	) ON true
WHERE
	cmp.cur_value is distinct from cmp.nxt_value
GROUP BY cur.tm_code, cur.tm_formal_name, nxt.tm_code

UNION

select
	CAST(nxt.tm_code AS varchar) as tm_code,
	nxt.tm_formal_name,
	'ADDED' as changes
from
	ccdd_tm_release_candidate nxt
WHERE
	not exists(select * from ccdd.tm_release_candidate cur where cur.tm_code = CAST(nxt.tm_code AS varchar));
-- ddl-end --
ALTER VIEW public.qa_release_changes_tm_release_candidate OWNER TO postgres;
-- ddl-end --

-- object: public.ccdd_mp_ntp_tm_relationship_release_candidate | type: MATERIALIZED VIEW --
-- DROP MATERIALIZED VIEW IF EXISTS public.ccdd_mp_ntp_tm_relationship_release_candidate CASCADE;
CREATE MATERIALIZED VIEW public.ccdd_mp_ntp_tm_relationship_release_candidate
AS

select
	mp_code,
	mp_formal_name,
	mp_formal_name_fr,
	ntp_code,
	ntp_formal_name,
	ntp_formal_name_fr,
	tm_code,
	tm_formal_name,
	tm_formal_name_fr
FROM
	ccdd_mp_ntp_tm_relationship
WHERE tm_is_publishable = true;
-- ddl-end --
ALTER MATERIALIZED VIEW public.ccdd_mp_ntp_tm_relationship_release_candidate OWNER TO postgres;
-- ddl-end --

-- object: public.qa_release_changes_mp_ntp_tm_relationship_release_candidate | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_release_changes_mp_ntp_tm_relationship_release_candidate CASCADE;
CREATE VIEW public.qa_release_changes_mp_ntp_tm_relationship_release_candidate
AS

select
	cur.mp_code,
	cur.mp_formal_name,
	(CASE
		WHEN nxt.mp_code is null THEN 'DELETED'
		ELSE string_agg(FORMAT(
			'%s: "%s" -> %s',
			cmp.field_name,
			cmp.cur_value,
			(CASE WHEN cmp.nxt_value is not null THEN FORMAT('"%s"', cmp.nxt_value) ELSE 'NULL' END)
		), E'\n' ORDER BY cmp.field_name)
	END) as changes
from
	ccdd.mp_ntp_tm_relationship_release_candidate cur
	LEFT JOIN ccdd_mp_ntp_tm_relationship_release_candidate nxt ON(nxt.mp_code = cur.mp_code)
	LEFT JOIN LATERAL (VALUES
		('mp_formal_name', cur.mp_formal_name, nxt.mp_formal_name),
		('ntp_code', cur.ntp_code, CAST(nxt.ntp_code as varchar)),
		('ntp_formal_name', cur.ntp_formal_name, nxt.ntp_formal_name),
		('tm_code', cur.tm_code, CAST(nxt.tm_code as varchar)),
		('tm_formal_name', cur.tm_formal_name, nxt.tm_formal_name)
	) AS cmp (
		field_name, cur_value, nxt_value
	) ON true
WHERE
	cmp.cur_value is distinct from cmp.nxt_value
GROUP BY cur.mp_code, cur.mp_formal_name, nxt.mp_code

UNION

select
	nxt.mp_code,
	nxt.mp_formal_name,
	'ADDED' as changes
from
	ccdd_mp_ntp_tm_relationship_release_candidate nxt
WHERE
	not exists(select * from ccdd.mp_ntp_tm_relationship_release_candidate cur where cur.mp_code = nxt.mp_code);
-- ddl-end --
ALTER VIEW public.qa_release_changes_mp_ntp_tm_relationship_release_candidate OWNER TO postgres;
-- ddl-end --

-- object: ccdd.ntp_full_release | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.ntp_full_release CASCADE;
CREATE TABLE ccdd.ntp_full_release(
	ntp_code varchar,
	ntp_formal_name text,
	ntp_en_description text,
	ntp_fr_description text,
	ntp_status varchar,
	ntp_status_effective_time varchar,
	ntp_type varchar
);
-- ddl-end --
ALTER TABLE ccdd.ntp_full_release OWNER TO postgres;
-- ddl-end --

-- object: ccdd.tm_full_release | type: TABLE --
-- DROP TABLE IF EXISTS ccdd.tm_full_release CASCADE;
CREATE TABLE ccdd.tm_full_release(
	tm_code varchar,
	tm_formal_name text,
	tm_status varchar,
	tm_status_effective_time varchar
);
-- ddl-end --
ALTER TABLE ccdd.tm_full_release OWNER TO postgres;
-- ddl-end --

-- object: public.qa_new_concepts_ntp | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_new_concepts_ntp CASCADE;
CREATE VIEW public.qa_new_concepts_ntp
AS

SELECT
	CAST(((SELECT max(ntd.code) FROM ccdd.ntp_definition ntd)) + (row_number() OVER ()) as varchar) AS ntp_code,
	mcn.ntp_formal_name,
	mcn.ntp_formal_name_fr
FROM qa_missing_concepts_ntp mcn;
-- ddl-end --
ALTER VIEW public.qa_new_concepts_ntp OWNER TO postgres;
-- ddl-end --

-- object: public.qa_new_concepts_ntp_test | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_new_concepts_ntp_test CASCADE;
CREATE VIEW public.qa_new_concepts_ntp_test
AS

SELECT
	(
		SELECT COUNT(*)
		FROM qa_new_concepts_ntp ncn
		WHERE EXISTS(SELECT * FROM ccdd.ntp_definition ntpd WHERE CAST(ntpd.code AS VARCHAR) = ncn.ntp_code)
	) AS draft_overlap_codes,
	(
		SELECT COUNT(*)
		FROM qa_new_concepts_ntp ncn
		WHERE EXISTS(SELECT * FROM ccdd.ntp_definition ntpd WHERE ntpd.formal_name = ncn.ntp_formal_name)
	) AS draft_overlap_names,
	(
		SELECT COUNT(*)
		FROM qa_new_concepts_ntp ncn
		WHERE EXISTS(SELECT * FROM ccdd.ntp_full_release nfr WHERE nfr.ntp_code = ncn.ntp_code)
	) AS release_overlap_codes,
	(
		SELECT COUNT(*)
		FROM qa_new_concepts_ntp ncn
		WHERE EXISTS(SELECT * FROM ccdd.ntp_full_release nfr WHERE nfr.ntp_formal_name = ncn.ntp_formal_name)
	) AS release_overlap_names;
-- ddl-end --
ALTER VIEW public.qa_new_concepts_ntp_test OWNER TO postgres;
-- ddl-end --

-- object: public.qa_new_concepts_pseudodin | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_new_concepts_pseudodin CASCADE;
CREATE VIEW public.qa_new_concepts_pseudodin
AS

SELECT
	((SELECT max(psm.pseudodin) FROM ccdd.pseudodin_map psm)) + (row_number() OVER ()) AS pseudodin,
	mcp.drug_code,
	mcp.unit_of_presentation,
	mcp.unit_of_presentation_fr,
	CAST(mcp.uop_size_amount AS varchar),
	mcp.uop_size_unit
FROM qa_missing_concepts_pseudodin mcp;
-- ddl-end --
ALTER VIEW public.qa_new_concepts_pseudodin OWNER TO postgres;
-- ddl-end --

-- object: public.qa_new_concepts_pseudodin_test | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_new_concepts_pseudodin_test CASCADE;
CREATE VIEW public.qa_new_concepts_pseudodin_test
AS

SELECT
	(
		SELECT COUNT(*)
		FROM qa_new_concepts_pseudodin ncp
		WHERE EXISTS(SELECT * FROM ccdd.pseudodin_map psm WHERE psm.pseudodin = ncp.pseudodin)
	) AS draft_overlap_pseudodin;
-- ddl-end --
ALTER VIEW public.qa_new_concepts_pseudodin_test OWNER TO postgres;
-- ddl-end --

-- object: public.qa_new_concepts_tm | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_new_concepts_tm CASCADE;
CREATE VIEW public.qa_new_concepts_tm
AS

SELECT
	CAST(((SELECT max(tmd.code) FROM ccdd.tm_definition tmd)) + (row_number() OVER ()) AS VARCHAR) AS tm_code,
	mct.tm_formal_name,
	mct.tm_formal_name_fr
FROM qa_missing_concepts_tm mct;
-- ddl-end --
ALTER VIEW public.qa_new_concepts_tm OWNER TO postgres;
-- ddl-end --

-- object: public.qa_new_concepts_tm_test | type: VIEW --
-- DROP VIEW IF EXISTS public.qa_new_concepts_tm_test CASCADE;
CREATE VIEW public.qa_new_concepts_tm_test
AS

SELECT
	(
		SELECT COUNT(*)
		FROM qa_new_concepts_tm nct
		WHERE EXISTS(SELECT * FROM ccdd.tm_definition tmd WHERE CAST(tmd.code AS varchar) = nct.tm_code)
	) AS draft_overlap_codes,
	(
		SELECT COUNT(*)
		FROM qa_new_concepts_tm nct
		WHERE EXISTS(SELECT * FROM ccdd.tm_definition tmd WHERE tmd.formal_name = nct.tm_formal_name)
	) AS draft_overlap_names,
	(
		SELECT COUNT(*)
		FROM qa_new_concepts_tm nct
		WHERE EXISTS(SELECT * FROM ccdd.tm_full_release tfr WHERE tfr.tm_code = nct.tm_code)
	) AS release_overlap_codes,
	(
		SELECT COUNT(*)
		FROM qa_new_concepts_tm nct
		WHERE EXISTS(SELECT * FROM ccdd.tm_full_release tfr WHERE tfr.tm_formal_name = nct.tm_formal_name)
	) AS release_overlap_names;
-- ddl-end --
ALTER VIEW public.qa_new_concepts_tm_test OWNER TO postgres;
-- ddl-end --
CREATE VIEW public.release_changes_special_groupings
AS
select
	cur.ccdd_code,
	cur.ccdd_formal_name,
	cur.ccdd_type,
	cur.policy_type,
	cur.policy_reference,
	(CASE
		WHEN nxt.ccdd_code is null THEN 'Inactive'
		ELSE cur.special_groupings_status END
	),
	(
		CASE WHEN nxt.ccdd_code is null THEN (SELECT ccdd_date::text FROM ccdd_config LIMIT 1)
		ELSE cur.special_groupings_status_effective_time END
	),
	(CASE
		WHEN nxt.ccdd_code is null THEN 'DELETED'
		ELSE string_agg(FORMAT(
			'%s: "%s" -> %s',
			cmp.field_name,
			cmp.cur_value,
			(CASE WHEN cmp.nxt_value is not null THEN FORMAT('"%s"', cmp.nxt_value) ELSE 'NULL' END)
		), E'\n' ORDER BY cmp.field_name)
	END) as changes
from
	ccdd.special_groupings cur
	LEFT JOIN ccdd_special_groupings nxt ON(nxt.ccdd_code = cur.ccdd_code AND CAST(nxt.policy_type as text) = cur.policy_type)
	LEFT JOIN LATERAL (VALUES
		('ccdd_formal_name', cur.ccdd_formal_name, nxt.ccdd_formal_name),
		('special_groupings_status', UPPER(cur.special_groupings_status), UPPER(nxt.special_groupings_status)),
		('special_groupings_status_effective_time', cur.special_groupings_status_effective_time, nxt.special_groupings_status_effective_time),
		('ccdd_type', cur.ccdd_type, nxt.ccdd_type),
		('policy_type', cur.policy_type::text, nxt.policy_type::text),
		('policy_reference', cur.policy_reference, nxt.policy_reference)
	) AS cmp (
		field_name, cur_value, nxt_value
	) ON true
WHERE
	cmp.cur_value is distinct from cmp.nxt_value
GROUP BY cur.ccdd_code, cur.ccdd_formal_name, cur.ccdd_type, cur.policy_type, cur.policy_reference, cur.special_groupings_status, cur.special_groupings_status_effective_time, nxt.ccdd_code
UNION
select
	nxt.ccdd_code,
	nxt.ccdd_formal_name,
	nxt.ccdd_type,
	nxt.policy_type::text,
	nxt.policy_reference,
	nxt.special_groupings_status,
	nxt.special_groupings_status_effective_time,
	'ADDED' as changes
from
	ccdd_special_groupings nxt
WHERE
	not exists(select * from ccdd.special_groupings cur where cur.ccdd_code = nxt.ccdd_code);
-- ddl-end --
ALTER VIEW public.release_changes_special_groupings OWNER TO postgres;
