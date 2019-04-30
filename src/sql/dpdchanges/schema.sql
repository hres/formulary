CREATE SCHEMA if not exists dpd_changes;

DROP TABLE IF EXISTS dpd_changes.new_drug;
DROP TABLE IF EXISTS dpd_changes.drug_product_changes;
DROP TABLE IF EXISTS dpd_changes.companies_changes;
DROP TABLE IF EXISTS dpd_changes.status_changes;
DROP TABLE IF EXISTS dpd_changes.route_changes;
DROP TABLE IF EXISTS dpd_changes.pharmaceutical_form_changes;
DROP TABLE IF EXISTS dpd_changes.active_ingredient_changes;
DROP TABLE IF EXISTS dpd_changes.drugs;
DROP TABLE IF EXISTS dpd_changes.dpd_changed_drug_codes;


SELECT drug_new.* into dpd_changes.new_drug
FROM dpd.drug_product as drug_new LEFT JOIN dpd_old.drug_product as drug_old ON
     drug_new.drug_code = drug_old.drug_code
WHERE drug_old.drug_code is null AND drug_new."class" = 'Human';

SELECT drug_code into dpd_changes.drugs
From ccdd.mp_release_candidate
left join dpd.drug_product
on ccdd.mp_release_candidate."Health_Canada_identifier" = dpd.drug_product.drug_identification_number;

SELECT drug_new.brand_name as new_brand_name, drug_old.brand_name as old_brand_name, dpd_changes.drugs.drug_code into dpd_changes.drug_product_changes
FROM dpd_changes.drugs
LEFT JOIN dpd.drug_product as drug_new ON drug_new.drug_code = dpd_changes.drugs.drug_code
LEFT JOIN dpd_old.drug_product as drug_old ON drug_old.drug_code = dpd_changes.drugs.drug_code
WHERE drug_new.brand_name <> drug_old.brand_name;

SELECT drug_new.company_name as new_company_name, drug_old.company_name as old_company_name, dpd_changes.drugs.drug_code into dpd_changes.companies_changes
FROM dpd_changes.drugs
LEFT JOIN dpd.companies as drug_new ON drug_new.drug_code = dpd_changes.drugs.drug_code
LEFT JOIN dpd_old.companies as drug_old ON drug_old.drug_code = dpd_changes.drugs.drug_code
WHERE drug_new.company_name <> drug_old.company_name;

SELECT drug_new.status as new_status, drug_old.status as old_status, drug_new.history_date as new_history_date, drug_old.history_date as old_history_date, drug_new.drug_code into dpd_changes.status_changes
FROM dpd.status as drug_new LEFT JOIN dpd_old.status as drug_old ON
     drug_new.drug_code=drug_old.drug_code AND drug_new.current_status_flag = 'Y' AND drug_old.current_status_flag = 'Y'
WHERE (
  drug_new.status <> drug_old.status OR
  ((drug_new.history_date <> drug_old.history_date) AND (drug_new.status <> 'MARKETED'))) AND
  ((drug_new.drug_code IN (SELECT drug_code from dpd_changes.drugs)) OR (drug_new.status = 'MARKETED' AND drug_old.status='APPROVED')) AND
  drug_new.drug_code NOT IN (
    SELECT drug_new.drug_code FROM dpd.status as drug_new
    LEFT JOIN dpd_old.status as drug_old ON drug_new.drug_code=drug_old.drug_code AND drug_new.current_status_flag = 'Y' AND drug_old.current_status_flag = 'Y'
    WHERE
      (drug_new.status ='CANCELLED POST MARKET' AND drug_old.status = 'MARKETED' AND drug_new.history_date <> drug_old.history_date AND drug_new.history_date > (SELECT ccdd_date from ccdd_config LIMIT 1))
      OR
      (drug_new.status ='CANCELLED POST MARKET' AND drug_old.status = 'MARKETED' AND drug_new.expiration_date <> drug_old.expiration_date AND drug_new.expiration_date::date > (SELECT ccdd_date from ccdd_config LIMIT 1))
);

SELECT drug_code, route_of_administration_code, min(status::text) AS status into dpd_changes.route_changes
from
((SELECT route_of_administration_code, drug_code, 'ADDED' AS status
FROM dpd.route AS drug_new)
UNION ALL
(SELECT route_of_administration_code, drug_code, 'REMOVED' AS status
FROM dpd_old.route AS drug_old) ) s
WHERE drug_code IN (SELECT drug_code from dpd_changes.drugs)
GROUP BY (drug_code, route_of_administration_code)
HAVING count(*) <> 2;

SELECT drug_code, pharm_form_code, min(status::text) AS status into dpd_changes.pharmaceutical_form_changes
from
((SELECT pharm_form_code, drug_code, 'ADDED'::text AS status
FROM dpd.pharmaceutical_form AS drug_new)
UNION ALL
(SELECT pharm_form_code, drug_code, 'REMOVED'::text AS status
FROM dpd_old.pharmaceutical_form AS drug_old) ) s
WHERE drug_code IN (SELECT drug_code from dpd_changes.drugs)
GROUP BY (drug_code, pharm_form_code)
HAVING count(*) <> 2;

SELECT a.drug_code, a.active_ingredient_code, 'Changed' AS status
INTO dpd_changes.active_ingredient_changes
FROM (
  SELECT s.drug_code, s.active_ingredient_code, s.dosage_value, s.strength, min(s.status::text) FROM (
    ((SELECT drug_code, active_ingredient_code, 'Changed'::text AS status, dosage_value, strength, strength as new_strength
    FROM dpd.active_ingredient AS ingredient_new)
    UNION ALL
    (SELECT drug_code, active_ingredient_code, 'Changed'::text AS status, dosage_value, strength, strength as old_strength
    FROM dpd_old.active_ingredient AS ingredient_old))
  ) s
  GROUP BY (drug_code, active_ingredient_code, dosage_value, strength)
  HAVING count(*) <> 2
) a
WHERE drug_code IN (SELECT drug_code from dpd_changes.drugs)
GROUP BY (drug_code, active_ingredient_code)
HAVING count(*) >= 2;

ALTER TABLE dpd_changes.active_ingredient_changes
ALTER COLUMN status TYPE text;

INSERT INTO dpd_changes.active_ingredient_changes (drug_code, active_ingredient_code, status)
(SELECT drug_code, active_ingredient_code, min(s.status) AS status
FROM
((SELECT active_ingredient_code, drug_code, 'ADDED'::text AS status
FROM dpd.active_ingredient AS drug_new)
UNION ALL
(SELECT active_ingredient_code, drug_code, 'REMOVED'::text AS status
FROM dpd_old.active_ingredient AS drug_old) ) s
WHERE drug_code IN (SELECT drug_code from dpd_changes.drugs)
GROUP BY (drug_code, active_ingredient_code)
HAVING count(*) = 1
);

SELECT ROW_NUMBER() OVER (ORDER BY dpd_ingredient) AS row_num, dpd_ingredient,
string_agg( distinct case when ccdd is null then 'NULL' else ccdd end, 'changed to') AS ccdd,
string_agg( distinct case when top250name is null then 'NULL' else top250name end, ' changed to ') AS top250name,
string_agg( distinct case when ing_stem is null then 'NULL' else ing_stem end, ' changed to ') AS ing_stem,
string_agg( distinct case when hydrate is null then 'NULL' else hydrate end, ' changed to ') AS hydrate,
string_agg( distinct case when ntp_ing is null then 'NULL' else ntp_ing end, ' changed to ') AS ntp_ing,
CASE WHEN count(dpd_ingredient) = 2 THEN 'Changed'
ELSE min(status) END AS status
INTO dpd_changes.ingredient_stem_csv_changes
FROM
  (SELECT 'Added' AS status, T1.*
  FROM (
    SELECT * FROM public.ingredient_stem_csv_old where ccdd = 'Y'
    EXCEPT
    SELECT * FROM ccdd.ingredient_stem_csv where ccdd = 'Y'
  ) AS T1
  UNION ALL
  SELECT 'Removed' AS status,  T2.*
  FROM (
     SELECT * FROM ccdd.ingredient_stem_csv where ccdd = 'Y'
     EXCEPT
     SELECT * FROM public.ingredient_stem_csv_old where ccdd = 'Y'
     ) AS T2
  ) sub
  GROUP BY dpd_ingredient
  ORDER BY dpd_ingredient;

SELECT dpd_changes.ingredient_stem_csv_changes.row_num, active_i_new.*
INTO dpd_changes.ingredient_stem_and_active_ingredient_changes
FROM dpd_changes.ingredient_stem_csv_changes 
LEFT JOIN dpd.active_ingredient AS active_i_new
ON active_i_new.ingredient = dpd_changes.ingredient_stem_csv_changes.dpd_ingredient
ORDER BY dpd_changes.ingredient_stem_csv_changes.row_num