ALTER TABLE ccdd_history.release_changes_mp
ADD COLUMN mp_fr_description TEXT;

ALTER TABLE ccdd_history.release_changes_ntp
ADD COLUMN ntp_fr_description TEXT;

ALTER TABLE ccdd_history.release_changes_tm
ADD COLUMN tm_fr_description TEXT;

ALTER TABLE ccdd_history.combination_products_csv_changes
ADD COLUMN mp_formal_name_fr VARCHAR,
ADD COLUMN ntp_formal_name_fr VARCHAR;

ALTER TABLE ccdd_history.ingredient_stem_csv_changes
ADD COLUMN ing_stem_fr VARCHAR,
ADD COLUMN ntp_ing_fr VARCHAR;

ALTER TABLE ccdd_history.ntp_dosage_forms_changes
DROP COLUMN IF EXISTS audit_id,
ADD COLUMN ntp_dosage_form_fr text;

ALTER TABLE ccdd_history.unit_of_presentation_csv_changes
ADD COLUMN unit_of_presentation_fr VARCHAR;