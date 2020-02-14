CREATE SCHEMA if not exists dpd_override;

select * into dpd_override.active_ingredient from dpd_shadow.active_ingredient except
select * from dpd.active_ingredient;

select * into dpd_override.companies from (
  WITH union_all_companies AS
  ((SELECT *, 'REMOVED'::text AS change_type FROM dpd.companies AS drug_old)
  	UNION ALL
  (SELECT *, 'ADDED'::text AS change_type FROM dpd_shadow.companies AS drug_new))

  (SELECT
  	CASE WHEN t1."extract" != t2."extract" THEN t2."extract" ELSE NULL END AS "extract",
  	t1.drug_code,
  	CASE WHEN t1.mfr_code != t2.mfr_code THEN t2.mfr_code ELSE NULL END AS product_categorization,
  	CASE WHEN t1.company_code != t2.company_code THEN t2.company_code ELSE NULL END AS company_code,
  	CASE WHEN t1.company_name != t2.company_name THEN t2.company_name ELSE NULL END AS 	company_name,
  	CASE WHEN t1.company_type != t2.company_type THEN t2.company_type ELSE NULL END AS company_type,
  	CASE WHEN t1.address_mailing_flag != t2.address_mailing_flag THEN t2.address_mailing_flag ELSE NULL END AS address_mailing_flag,
  	CASE WHEN t1.address_billing_flag != t2.address_billing_flag THEN t2.address_billing_flag ELSE NULL END AS address_billing_flag,
  	CASE WHEN t1.address_notification_flag != t2.address_notification_flag THEN t2.address_notification_flag ELSE NULL END AS address_notification_flag,
  	CASE WHEN t1.address_other != t2.address_other THEN t2.address_other ELSE NULL END AS address_other,
   	CASE WHEN t1.suite_number != t2.suite_number THEN t2.suite_number ELSE NULL END AS suite_number,
  	CASE WHEN t1.street_name != t2.street_name THEN t2.street_name ELSE NULL END AS street_name,
  	CASE WHEN t1.city_name != t2.city_name THEN t2.city_name ELSE NULL END AS city_name,
  	CASE WHEN t1.province != t2.province THEN t2.province ELSE NULL END AS province,
  	CASE WHEN t1.country != t2.country THEN t2.country ELSE NULL END AS country,
  	CASE WHEN t1.postal_code != t2.postal_code THEN t2.postal_code ELSE NULL END AS postal_code,
   	CASE WHEN t1.post_office_box != t2.post_office_box THEN t2.post_office_box ELSE NULL END AS post_office_box,
  	CASE WHEN t1.province_f != t2.province_f THEN t2.province_f ELSE NULL END AS province_f,
  	CASE WHEN t1.country_f != t2.country_f THEN t2.country_f ELSE NULL END AS country_f,
  	'CHANGED'::text AS change_type
  FROM dpd.companies t1
  LEFT join dpd_shadow.companies t2
  ON t1.drug_code = t2.drug_code
  WHERE row(t1) != row(t2))
  	UNION ALL
  (SELECT union_all_companies.* FROM union_all_companies JOIN
  (SELECT drug_code, min(change_type::text) AS change_type
  FROM union_all_companies
  GROUP by (union_all_companies.drug_code) HAVING count(*) <> 2) AS t3 on union_all_companies.drug_code = t3.drug_code)
) as test;

select * into dpd_override.drug_product FROM (
  WITH unionAll AS
  ((SELECT *, 'REMOVED'::text AS change_type FROM dpd.drug_product AS drug_old)
  	UNION ALL
  (SELECT *, 'ADDED'::text AS change_type FROM dpd_shadow.drug_product AS drug_new))

  (SELECT
  	CASE WHEN t1."extract" != t2."extract" THEN t2."extract" ELSE NULL END AS "extract",
  	t1.drug_code,
  	CASE WHEN t1.product_categorization != t2.product_categorization THEN t2.product_categorization ELSE NULL END AS product_categorization,
  	CASE WHEN t1."class" != t2."class" THEN t2."class" ELSE NULL END AS "class",
  	CASE WHEN t1.drug_identification_number != t2.drug_identification_number THEN t2.drug_identification_number ELSE NULL END AS 				drug_identification_number,
  	CASE WHEN t1.brand_name != t2.brand_name THEN t2.brand_name ELSE NULL END AS brand_name,
  	CASE WHEN t1.descriptor != t2.descriptor THEN t2.descriptor ELSE NULL END AS descriptor,
  	CASE WHEN t1.pediatric_flag != t2.pediatric_flag THEN t2.pediatric_flag ELSE NULL END AS pediatric_flag,
  	CASE WHEN t1.accession_number != t2.accession_number THEN t2.accession_number ELSE NULL END AS accession_number,
  	CASE WHEN t1.number_of_ais != t2.number_of_ais THEN t2.number_of_ais ELSE NULL END AS number_of_ais,
  	CASE WHEN t1.last_update_date != t2.last_update_date THEN t2.last_update_date ELSE NULL END AS last_update_date,
  	CASE WHEN t1.ai_group_no != t2.ai_group_no THEN t2.ai_group_no ELSE NULL END AS ai_group_no,
  	CASE WHEN t1.class_f != t2.class_f THEN t2.class_f ELSE NULL END AS class_f,
  	CASE WHEN t1.brand_name_f != t2.brand_name_f THEN t2.brand_name_f ELSE NULL END AS brand_name_f,
  	CASE WHEN t1.descriptor_f != t2.descriptor_f THEN t2.descriptor_f ELSE NULL END AS descriptor_f,
  	'CHANGED'::text AS change_type
  FROM dpd.drug_product t1
  LEFT join dpd_shadow.drug_product t2 ON t1.drug_code = t2.drug_code
  WHERE row(t1) != row(t2))
  	UNION ALL
  (SELECT unionAll.* FROM unionAll JOIN
  (SELECT drug_code, min(change_type::text) AS change_type
  FROM unionAll
  GROUP by (unionAll.drug_code) HAVING count(*) <> 2) AS t3 on unionAll.drug_code = t3.drug_code)
) as drug_product_test;

select * into dpd_override.pharmaceutical_form from (
  WITH union_pharma_form AS
  ((SELECT *, 'REMOVED'::text AS change_type FROM dpd.pharmaceutical_form AS drug_old)
  	UNION ALL
  (SELECT *, 'ADDED'::text AS change_type FROM dpd_shadow.pharmaceutical_form AS drug_new))

  (SELECT
  	CASE WHEN t1."extract" != t2."extract" THEN t2."extract" ELSE NULL END AS "extract",
  	t1.drug_code,
  	t1.pharm_form_code,
  	CASE WHEN t1.pharmaceutical_form != t2.pharmaceutical_form THEN t2.pharmaceutical_form ELSE NULL END AS pharmaceutical_form,
  	CASE
   		WHEN (t1.pharmaceutical_form_f = t2.pharmaceutical_form_f) THEN NULL
   		WHEN (t1.pharmaceutical_form_f != t2.pharmaceutical_form_f AND t2.pharmaceutical_form_f IS NOT NULL) THEN t2.pharmaceutical_form_f
   		ELSE 'NULL'
   	END AS pharmaceutical_form_f,
  	'CHANGED'::text AS change_type
  FROM dpd.pharmaceutical_form t1
  LEFT join dpd_shadow.pharmaceutical_form t2
  ON t1.drug_code = t2.drug_code AND t1.pharm_form_code = t2.pharm_form_code
  WHERE row(t1) != row(t2))
  	UNION ALL
  (SELECT union_pharma_form.* FROM union_pharma_form JOIN
  (SELECT drug_code, pharm_form_code, min(change_type::text) AS change_type
  FROM union_pharma_form
  GROUP by (union_pharma_form.drug_code, union_pharma_form.pharm_form_code) HAVING count(*) <> 2) AS t3 on (union_pharma_form.drug_code = t3.drug_code and union_pharma_form.pharm_form_code = t3.pharm_form_code))
) as pharma_test;

select * into dpd_override.route FROM (
  WITH union_route AS
  ((SELECT *, 'REMOVED'::text AS change_type FROM dpd.route AS drug_old)
  	UNION ALL
  (SELECT *, 'ADDED'::text AS change_type FROM dpd_shadow.route AS drug_new))

  (SELECT
  	CASE WHEN t1."extract" != t2."extract" THEN t2."extract" ELSE NULL END AS "extract",
  	t1.drug_code,
  	t1.route_of_administration_code,
  	CASE WHEN t1.route_of_administration != t2.route_of_administration THEN t2.route_of_administration ELSE NULL END AS route_of_administration,
  	CASE
   		WHEN (t1.route_of_administration_f = t2.route_of_administration_f) THEN NULL
   		WHEN (t1.route_of_administration_f != t2.route_of_administration_f AND t2.route_of_administration_f IS NOT NULL) THEN t2.route_of_administration_f
   		ELSE 'NULL'
   	END AS route_of_administration_f,
  	'CHANGED'::text AS change_type
  FROM dpd.route t1
  LEFT join dpd_shadow.route t2
  ON t1.drug_code = t2.drug_code AND t1.route_of_administration_code = t2.route_of_administration_code
  WHERE row(t1) != row(t2))
  	UNION ALL
  (SELECT union_route.* FROM union_route JOIN
  (SELECT drug_code, route_of_administration_code, min(change_type::text) AS change_type
  FROM union_route
  GROUP by (union_route.drug_code, union_route.route_of_administration_code) HAVING count(*) <> 2) AS t3 ON (union_route.drug_code = t3.drug_code AND union_route.route_of_administration_code = t3.route_of_administration_code))
) as route_test;

select * into dpd_override.status from (
  WITH union_status AS
  ((SELECT DISTINCT ON (drug_code, status, history_date) *, 'REMOVED'::text AS change_type FROM dpd.status AS drug_old)
  	UNION ALL
  (SELECT DISTINCT ON (drug_code, status, history_date) *, 'ADDED'::text AS change_type FROM dpd_shadow.status AS drug_new))

  (SELECT
  	CASE WHEN t1."extract" != t2."extract" THEN t2."extract" ELSE NULL END AS "extract",
  	t1.drug_code,
      	CASE WHEN t1.current_status_flag != t2.current_status_flag THEN t2.current_status_flag ELSE NULL END AS current_status_flag,
   	t1.status,
   	t1.history_date,
  	CASE
   		WHEN (t1.status_f = t2.status_f) THEN NULL
   		WHEN (t1.status_f != t2.status_f AND t2.status_f IS NOT NULL) THEN t2.status_f ELSE 'NULL'
   		END AS status_f,
    	CASE WHEN t1.lot_number != t2.lot_number THEN t2.lot_number ELSE NULL END AS lot_number,
   	CASE WHEN t1.expiration_date != t2.expiration_date THEN t2.expiration_date ELSE NULL END AS expiration_date,
  	'CHANGED'::text AS change_type
  FROM dpd.status t1
  LEFT join dpd_shadow.status t2
  ON t1.drug_code = t2.drug_code AND
   	t1.status = t2.status AND
   	t1.history_date = t2.history_date
  WHERE row(t1) != row(t2))
  	UNION ALL
  (SELECT union_status.* FROM union_status JOIN
  (SELECT drug_code, status, history_date, min(change_type::text) AS change_type
  FROM union_status
  GROUP by (union_status.drug_code, union_status.status, union_status.history_date) HAVING count(*) <> 2) AS t3 ON (union_status.drug_code = t3.drug_code AND union_status.status = t3.status AND union_status.history_date = t3.history_date))
) as status_test;

-- select * into dpd_override.packaging from dpd_shadow.packaging except
-- select * from dpd.packaging;

-- select * into dpd_override.schedule from dpd_shadow.schedule except
-- select * from dpd.schedule;
--
-- select * into dpd_override.pharmaceutical_std from dpd_shadow.pharmaceutical_std except
-- select * from dpd.pharmaceutical_std;
--
-- select * into dpd_override.therapeutic_class from dpd_shadow.therapeutic_class except
-- select * from dpd.therapeutic_class;
--
-- select * into dpd_override.vet_species from dpd_shadow.vet_species except
-- select * from dpd.vet_species;
