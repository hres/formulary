SELECT pg_catalog.set_config('search_path', 'ccdd_history', false);

DROP FUNCTION IF EXISTS custom_str_agg(text, text);
CREATE FUNCTION custom_str_agg(x text, y text)
    RETURNS text LANGUAGE SQL AS
	$func$SELECT string_agg(FORMAT('%s -> %s', (CASE WHEN x IS NOT NULL THEN FORMAT('"%s"', x) ELSE 'NULL' END), (CASE WHEN y IS NOT NULL THEN 	FORMAT('"%s"', y) ELSE 'NULL' END)), E'\n')$func$;

-- combination_products_csv changes
WITH unionAll AS
((SELECT *, 'REMOVED'::text AS change_type FROM :v1.combination_products_csv AS cp_old)
	UNION ALL
(SELECT *, 'ADDED'::text AS change_type FROM :v2.combination_products_csv AS cp_new))

INSERT INTO ccdd_history.combination_products_csv_changes
(SELECT
	t1.drug_code,
 	CASE WHEN t1.drug_identification_number = t2.drug_identification_number THEN NULL ELSE custom_str_agg(t1.drug_identification_number, t2.drug_identification_number) END as mp_formal_name,
  	CASE WHEN t1.mp_formal_name = t2.mp_formal_name THEN NULL ELSE custom_str_agg(t1.mp_formal_name, t2.mp_formal_name) END as mp_formal_name,
	CASE WHEN t1.ntp_formal_name = t2.ntp_formal_name THEN NULL ELSE custom_str_agg(t1.ntp_formal_name, t2.ntp_formal_name) END as ntp_formal_name,
 	CASE WHEN t1.ntp_type = t2.ntp_type THEN NULL ELSE custom_str_agg(t1.ntp_type, t2.ntp_type) END AS ntp_type,
  	CASE WHEN t1.mp_formal_name_fr = t2.mp_formal_name_fr THEN NULL ELSE custom_str_agg(t1.mp_formal_name_fr, t2.mp_formal_name_fr) END AS mp_formal_name_fr,
  	CASE WHEN t1.ntp_formal_name_fr = t2.ntp_formal_name_fr THEN NULL ELSE custom_str_agg(t1.ntp_formal_name_fr, t2.ntp_formal_name_fr) END AS mp_formal_name_fr,
	'CHANGED'::text AS change_type
FROM :v1.combination_products_csv t1
LEFT JOIN :v2.combination_products_csv t2 ON t1.drug_code = t2.drug_code
WHERE row(t1) != row(t2))
	UNION ALL
(SELECT unionAll.* FROM unionAll JOIN
(SELECT drug_code, min(change_type::text) AS change_type
FROM unionAll
GROUP by (unionAll.drug_code) HAVING count(*) <> 2) AS t3 on unionAll.drug_code = t3.drug_code);

-- ingredient_stem_csv changes
WITH unionAll AS
((SELECT *, 'REMOVED'::text AS change_type FROM :v1.ingredient_stem_csv AS cp_old)
	UNION ALL
(SELECT *, 'ADDED'::text AS change_type FROM :v2.ingredient_stem_csv AS cp_new))

INSERT INTO ccdd_history.ingredient_stem_csv_changes
(SELECT
 	CASE WHEN t1.ccdd = t2.ccdd THEN NULL ELSE custom_str_agg(t1.ccdd, t2.ccdd) END as ccdd,
  	CASE WHEN t1.top250name = t2.top250name THEN NULL ELSE custom_str_agg(t1.top250name, t2.top250name) END as top250name,
	t1.dpd_ingredient,
	CASE WHEN t1.ing_stem = t2.ing_stem THEN NULL ELSE custom_str_agg(t1.ing_stem, t2.ing_stem) END as ing_stem,
 	CASE WHEN t1.ing_stem_fr = t2.ing_stem_fr THEN NULL ELSE custom_str_agg(t1.ing_stem_fr, t2.ing_stem_fr) END as ing_stem_fr,
 	CASE WHEN t1.hydrate = t2.hydrate THEN NULL ELSE custom_str_agg(t1.hydrate, t2.hydrate) END AS hydrate,
	CASE WHEN t1.ntp_ing = t2.ntp_ing THEN NULL ELSE custom_str_agg(t1.ntp_ing, t2.ntp_ing) END as ntp_ing,
  	CASE WHEN t1.ntp_ing_fr = t2.ntp_ing_fr THEN NULL ELSE custom_str_agg(t1.ntp_ing_fr, t2.ntp_ing_fr) END as ntp_ing_fr,
	'CHANGED'::text AS change_type
FROM :v1.ingredient_stem_csv t1
LEFT JOIN :v2.ingredient_stem_csv t2 ON t1.dpd_ingredient = t2.dpd_ingredient
WHERE row(t1) != row(t2))
	UNION ALL
(SELECT unionAll.* FROM unionAll JOIN
(SELECT dpd_ingredient, min(change_type::text) AS change_type
FROM unionAll
GROUP by (unionAll.dpd_ingredient) HAVING count(*) <> 2) AS t3 on unionAll.dpd_ingredient = t3.dpd_ingredient);

-- ntp_dosage_forms changes
WITH unionAll AS
((SELECT *, 'REMOVED'::text AS change_type FROM :v1.ntp_dosage_forms AS ndf_old)
	UNION ALL
(SELECT *, 'ADDED'::text AS change_type FROM :v2.ntp_dosage_forms AS ndf_new))

INSERT INTO ccdd_history.ntp_dosage_forms_changes
(SELECT
	t1.ntp_dosage_form_code,
 	CASE WHEN t1.ntp_dosage_form = t2.ntp_dosage_form THEN NULL ELSE custom_str_agg(t1.ntp_dosage_form, t2.ntp_dosage_form) END as ntp_dosage_form,
	t1.route_of_administration_code,
  	CASE WHEN t1.route_of_administration = t2.route_of_administration THEN NULL ELSE custom_str_agg(t1.route_of_administration, t2.route_of_administration) END as route_of_administration,
	CASE WHEN t1.route_of_administration_f = t2.route_of_administration_f THEN NULL ELSE custom_str_agg(t1.route_of_administration_f, t2.route_of_administration_f) END as route_of_administration_f,
	t1.pharm_form_code,
 	CASE WHEN t1.pharmaceutical_form = t2.pharmaceutical_form THEN NULL ELSE custom_str_agg(t1.pharmaceutical_form, t2.pharmaceutical_form) END AS pharmaceutical_form,
	CASE WHEN t1.pharmaceutical_form_f = t2.pharmaceutical_form_f THEN NULL ELSE custom_str_agg(t1.pharmaceutical_form_f, t2.pharmaceutical_form_f) END as pharmaceutical_form_f,
 	CASE WHEN t1.ntp_dosage_form_fr = t2.ntp_dosage_form_fr THEN NULL ELSE custom_str_agg(t1.ntp_dosage_form_fr, t2.ntp_dosage_form_fr) END as ntp_dosage_form_fr,
	'CHANGED'::text AS change_type
FROM :v1.ntp_dosage_forms t1
LEFT JOIN :v2.ntp_dosage_forms t2
ON t1.ntp_dosage_form_code = t2.ntp_dosage_form_code AND
	t1.route_of_administration_code = t2.route_of_administration_code AND
 	t1.pharm_form_code = t2.pharm_form_code
WHERE row(t1) != row(t2))
	UNION ALL
(SELECT unionAll.ntp_dosage_form_code, unionAll.ntp_dosage_form, unionAll.route_of_administration_code, unionAll.route_of_administration, unionAll.route_of_administration_f, unionAll.pharm_form_code, unionAll.pharmaceutical_form, unionAll.pharmaceutical_form_f, unionAll.ntp_dosage_form_fr, unionAll.change_type  FROM unionAll JOIN
(SELECT ntp_dosage_form_code, route_of_administration_code, pharm_form_code, min(change_type::text) AS change_type
FROM unionAll
GROUP by (unionAll.ntp_dosage_form_code, unionAll.route_of_administration_code, unionAll.pharm_form_code) HAVING count(*) <> 2) AS t3 ON (unionAll.ntp_dosage_form_code = t3.ntp_dosage_form_code AND unionAll.route_of_administration_code = t3.route_of_administration_code AND unionAll.pharm_form_code = t3.pharm_form_code ));

-- unit_of_presentation_csv changes
WITH unionAll AS
((SELECT *, 'REMOVED'::text AS change_type FROM :v1.unit_of_presentation_csv AS uop_old)
	UNION ALL
(SELECT *, 'ADDED'::text AS change_type FROM :v2.unit_of_presentation_csv AS uop_new))

INSERT INTO ccdd_history.unit_of_presentation_csv_changes
(SELECT
	t1.drug_code,
 	t1.unit_of_presentation,
  	t1.uop_size,
 	CASE WHEN t1.uop_unit_of_measure = t2.uop_unit_of_measure THEN NULL ELSE custom_str_agg(t1.uop_unit_of_measure, t2.uop_unit_of_measure) END AS uop_unit_of_measure,
  	CASE WHEN t1.calculation = t2.calculation THEN NULL ELSE custom_str_agg(t1.calculation, t2.calculation) END AS calculation,
  	CASE WHEN t1.uop_size_insert = t2.uop_size_insert THEN NULL ELSE custom_str_agg(t1.uop_size_insert, t2.uop_size_insert) END AS uop_size_insert,
   	CASE WHEN t1.unit_of_presentation_fr = t2.unit_of_presentation_fr THEN NULL ELSE custom_str_agg(t1.unit_of_presentation_fr, t2.unit_of_presentation_fr) END AS unit_of_presentation_fr,
	'CHANGED'::text AS change_type
FROM :v1.unit_of_presentation_csv t1
LEFT JOIN :v2.unit_of_presentation_csv t2 
ON t1.drug_code = t2.drug_code AND
 	t1.unit_of_presentation = t2.unit_of_presentation AND
 	t1.uop_size = t2.uop_size 
WHERE row(t1) != row(t2))
	UNION ALL
(SELECT unionAll.* FROM unionAll JOIN
(SELECT drug_code, unit_of_presentation, uop_size, min(change_type::text) AS change_type
FROM unionAll
GROUP by (unionAll.drug_code, unionAll.unit_of_presentation, unionAll.uop_size) HAVING count(*) <> 2) AS t3 on (unionAll.drug_code = t3.drug_code AND unionAll.unit_of_presentation = t3.unit_of_presentation AND unionAll.uop_size = t3.uop_size));

-- tm_filter changes
INSERT INTO ccdd_history.tm_filter_changes
SELECT tm_code, min(s.change_type) as change_type
FROM
	((SELECT *, 'REMOVED'::text AS change_type FROM :v1.tm_filter AS tm_old)
		UNION ALL
	(SELECT *, 'ADDED'::text AS change_type FROM :v2.tm_filter AS tm_new)) s
GROUP BY tm_code
HAVING count(*) = 1;

-- mp_blacklist changes
INSERT INTO ccdd_history.mp_blacklist_changes
SELECT drug_code, min(s.change_type) as change_type
FROM
	((SELECT *, 'REMOVED'::text AS change_type FROM :v1.mp_blacklist AS mp_old)
		UNION ALL
	(SELECT *, 'ADDED'::text AS change_type FROM :v2.mp_blacklist AS mp_new)) s
GROUP BY drug_code
HAVING count(*) = 1;

-- mp_whitelist changes
INSERT INTO ccdd_history.mp_whitelist_changes
SELECT drug_code, min(s.change_type) as change_type
FROM
	((SELECT *, 'REMOVED'::text AS change_type FROM :v1.mp_whitelist AS tm_old)
		UNION ALL
	(SELECT *, 'ADDED'::text AS change_type FROM :v2.mp_whitelist AS tm_new)) s
GROUP BY drug_code
HAVING count(*) = 1;

-- mp_brand_override changes
WITH unionAll AS
((SELECT *, 'REMOVED'::text AS change_type FROM :v1.mp_brand_override AS mp_brand_old)
	UNION ALL
(SELECT *, 'ADDED'::text AS change_type FROM :v2.mp_brand_override AS mp_brand_new))

INSERT INTO ccdd_history.mp_brand_override_changes
(SELECT
	t1.drug_code,
 	CASE WHEN t1.brand = t2.brand THEN NULL ELSE custom_str_agg(t1.brand, t2.brand) END as brand,
	'CHANGED'::text AS change_type
FROM :v1.mp_brand_override t1
LEFT JOIN :v2.mp_brand_override t2 ON t1.drug_code = t2.drug_code
WHERE row(t1) != row(t2))
	UNION ALL
(SELECT unionAll.* FROM unionAll JOIN
(SELECT drug_code, min(change_type::text) AS change_type
	FROM unionAll
GROUP by (unionAll.drug_code) HAVING count(*) <> 2) AS t3 on unionAll.drug_code = t3.drug_code);

--  mp_deprecations changes
INSERT INTO ccdd_history.mp_deprecations_changes
SELECT mp_code, min(s.change_type) as change_type
FROM
	((SELECT *, 'REMOVED'::text AS change_type FROM :v1.mp_deprecations AS mp_dep_old)
		UNION ALL
	(SELECT *, 'ADDED'::text AS change_type FROM :v2.mp_deprecations AS mp_dep_old)) s
GROUP BY mp_code
HAVING count(*) = 1;

-- ntp_deprecations changes
WITH unionAll AS
((SELECT *, 'REMOVED'::text AS change_type FROM :v1.ntp_deprecations AS ntp_dep_old)
	UNION ALL
(SELECT *, 'ADDED'::text AS change_type FROM :v2.ntp_deprecations AS ntp_dep_new))

INSERT INTO ccdd_history.ntp_deprecations_changes
(SELECT
	t1.code,
 	CASE WHEN t1.status_effective_date = t2.status_effective_date THEN NULL ELSE custom_str_agg(t1.status_effective_date::text,
		t2.status_effective_date::text) END as brand,
	'CHANGED'::text AS change_type
FROM :v1.ntp_deprecations t1
LEFT JOIN :v2.ntp_deprecations t2 ON t1.code = t2.code
WHERE row(t1) != row(t2))
	UNION ALL
(SELECT unionAll.code, unionAll.status_effective_date::text, unionAll.change_type FROM unionAll JOIN
(SELECT code, min(change_type::text) AS change_type
	FROM unionAll
GROUP by (unionAll.code) HAVING count(*) <> 2) AS t3 on unionAll.code = t3.code);

-- tm_deprecations_changes
WITH unionAll AS
((SELECT *, 'REMOVED'::text AS change_type FROM :v1.tm_deprecations AS ntp_dep_old)
	UNION ALL
(SELECT *, 'ADDED'::text AS change_type FROM :v2.tm_deprecations AS ntp_dep_new))
INSERT INTO ccdd_history.tm_deprecations_changes
(SELECT
	t1.code,
 	CASE WHEN t1.status_effective_time = t2.status_effective_time THEN NULL ELSE custom_str_agg(t1.status_effective_time::text,
		t2.status_effective_time::text) END as brand,
	'CHANGED'::text AS change_type
FROM :v1.tm_deprecations t1
LEFT JOIN :v2.tm_deprecations t2 ON t1.code = t2.code
WHERE row(t1) != row(t2))
	UNION ALL
(SELECT unionAll.code, unionAll.status_effective_time::text, unionAll.change_type FROM unionAll JOIN
(SELECT code, min(change_type::text) AS change_type
	FROM unionAll
GROUP by (unionAll.code) HAVING count(*) <> 2) AS t3 on unionAll.code = t3.code);