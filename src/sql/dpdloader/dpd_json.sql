CREATE VIEW dpd_json AS  
	(
	SELECT drug.extract, drug.drug_code,
		JSONB_STRIP_NULLS(
		JSONB_BUILD_OBJECT(
			'extract', drug.extract,
			'drug_code', drug.drug_code,
			'product_categorization', NULLIF(product_categorization, ''),
			'class', class,
			'drug_identification_number', drug_identification_number,
			'brand_name', brand_name,
			'descriptor', NULLIF(descriptor, ''),
			'pediatric_flag', pediatric_flag,
			'accession_number', NULLIF(accession_number, ''),
			'number_of_ais', number_of_ais,
			'last_update_date', last_update_date,
			'ai_group_no', ai_group_no,
			'company', (
			  SELECT TO_JSONB(c)
			  FROM (
			    SELECT
			      NULLIF(mfr_code, '') AS mfr_code,
			      company_code,
			      company_name,
			      company_type,
			      address_mailing_flag,
			      address_billing_flag,
			      address_notification_flag,
			      address_other,
			      suite_number,
			      street_name,
			      city_name,
			      province,
			      country,
			      postal_code,
			      post_office_box
			    FROM companies
					WHERE extract = drug.extract AND drug_code = drug.drug_code
					) c),
			'active_ingredients', (
				SELECT JSONB_AGG(TO_JSONB(ai))
				FROM (
					SELECT
						active_ingredient_code,
						ingredient,
						strength,
						strength_unit,
						NULLIF(strength_type, '') as strength_type,
						NULLIF(dosage_value, '') as dosage_value,
						NULLIF(dosage_unit, '') as dosage_unit
					FROM active_ingredient
					WHERE extract = drug.extract AND drug_code = drug.drug_code
					) ai),
				'dosage_form', (
				  SELECT DISTINCT TO_JSONB(ARRAY_AGG(pharmaceutical_form))
				  FROM pharmaceutical_form
				  WHERE extract = drug.extract AND drug_code = drug.drug_code
				    ),
				'route', (
				  SELECT DISTINCT TO_JSONB(ARRAY_AGG(route_of_administration))
				  FROM route
				  WHERE extract = drug.extract AND drug_code = drug.drug_code
				  ),
				'schedule', (
				  SELECT DISTINCT TO_JSONB(ARRAY_AGG(schedule))
				  FROM schedule
				    WHERE extract = drug.extract AND drug_code = drug.drug_code
				  ),
				'pharmaceutical_std', (
				  SELECT DISTINCT TO_JSONB(ARRAY_AGG(pharmaceutical_std))
				  FROM pharmaceutical_std
				    WHERE extract = drug.extract AND drug_code = drug.drug_code
				  ),
				'packaging', (
				  SELECT JSONB_AGG(TO_JSONB(pa))
				  FROM (
					  SELECT
					    NULLIF(upc, '') as upc,
					    NULLIF(package_size_unit, '') as package_size_unit,
					    NULLIF(package_type, '') as package_type,
					    NULLIF(package_size, '') as package_size,
					    NULLIF(product_information, '') as product_information
					  FROM packaging
					  WHERE extract = drug.extract AND drug_code = drug.drug_code
				    ) pa),
				'status', (
				  SELECT JSONB_AGG(TO_JSONB(st))
				  FROM (
					  SELECT
					    current_status_flag,
					    status,
					    history_date
					  FROM status
					  WHERE extract = drug.extract AND drug_code = drug.drug_code
				    ) st),
				'therapeutic_class', (
				  SELECT JSONB_AGG(TO_JSONB(tc))
				  FROM (
					  SELECT
					    NULLIF(tc_atc_number, '') as tc_atc_number,
					    NULLIF(tc_atc, '') as tc_atc,
					    NULLIF(tc_ahfs_number, '') as tc_ahfs_number,
					    NULLIF(tc_ahfs, '') as tc_ahfs
					  FROM therapeutic_class
					  WHERE extract = drug.extract AND drug_code = drug.drug_code
				    ) tc),
				'vet_species', (
				  SELECT DISTINCT TO_JSONB(ARRAY_AGG(vet_species))
				  FROM vet_species
				    WHERE extract = drug.extract AND drug_code = drug.drug_code
				  )
		)) AS drug_product
		FROM drug_product drug
		); 
		
	CREATE FUNCTION dpd_search(dpd_json2) RETURNS text AS $$
  SELECT $1.drug_product::text;
$$ LANGUAGE SQL;		

CREATE INDEX dpd_json_ts_idx ON dpd_json2
  USING GIN (to_tsvector('english', dpd_search(dpd_json2)));


grant execute on function dpd_search(dpd_json2) to anon;
grant select on table dpd_json2 to anon;