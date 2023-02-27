CREATE INDEX companies_drug_code ON dpd.companies USING btree (extract, drug_code);
CREATE INDEX packaging_drug_code ON dpd.packaging USING btree (extract, drug_code);
CREATE INDEX pharmaceutical_form_drug_code ON dpd.pharmaceutical_form USING btree (extract, drug_code);
CREATE INDEX pharmaceutical_std_drug_code ON dpd.pharmaceutical_std USING btree (extract, drug_code);
CREATE INDEX schedule_drug_code ON dpd.schedule USING btree (extract, drug_code);
CREATE INDEX status_drug_code ON dpd.status USING btree (extract, drug_code);
CREATE INDEX active_ingredient_drug_code ON dpd.active_ingredient USING btree (extract, drug_code);
CREATE INDEX therapeutic_class_drug_code ON dpd.therapeutic_class USING btree (extract, drug_code);
CREATE INDEX route_drug_code ON dpd.route USING btree (extract, drug_code);
CREATE INDEX vet_drug_code ON dpd.vet_species USING btree (extract, drug_code);
CREATE INDEX opioid_code ON dpd.opioid USING btree (extract, drug_code);

ALTER TABLE dpd.drug_product ADD CONSTRAINT drug_product_drug_code PRIMARY KEY (extract, drug_code);

ALTER TABLE dpd.packaging ADD CONSTRAINT packaging_drug_code_fkey FOREIGN KEY (extract, drug_code) REFERENCES dpd.drug_product(extract, drug_code) NOT DEFERRABLE;

ALTER TABLE dpd.pharmaceutical_form ADD CONSTRAINT pharmaceutical_form_drug_code_fkey FOREIGN KEY (extract, drug_code) REFERENCES dpd.drug_product(extract, drug_code) NOT DEFERRABLE;

ALTER TABLE dpd.pharmaceutical_std ADD CONSTRAINT pharmaceutical_std_drug_code_fkey FOREIGN KEY (extract, drug_code) REFERENCES dpd.drug_product(extract, drug_code) NOT DEFERRABLE;

ALTER TABLE dpd.schedule ADD CONSTRAINT schedule_drug_code_fkey FOREIGN KEY (extract, drug_code) REFERENCES dpd.drug_product(extract, drug_code) NOT DEFERRABLE;

ALTER TABLE dpd.status ADD CONSTRAINT status_drug_code_fkey FOREIGN KEY (extract, drug_code) REFERENCES dpd.drug_product(extract, drug_code) NOT DEFERRABLE;

ALTER TABLE dpd.therapeutic_class ADD CONSTRAINT ther_drug_code_fkey FOREIGN KEY (extract, drug_code) REFERENCES dpd.drug_product(extract, drug_code) NOT DEFERRABLE;

ALTER TABLE dpd.vet_species ADD CONSTRAINT vet_drug_code_fkey FOREIGN KEY (extract, drug_code) REFERENCES dpd.drug_product(extract, drug_code) NOT DEFERRABLE;

ALTER TABLE dpd.opioid ADD CONSTRAINT opioid_drug_code_fkey FOREIGN KEY (extract, drug_code) REFERENCES dpd.drug_product(extract, drug_code) NOT DEFERRABLE;

ALTER TABLE dpd.active_ingredient ADD CONSTRAINT active_ingredient_drug_code_fkey FOREIGN KEY (extract, drug_code) REFERENCES dpd.drug_product(extract, drug_code) NOT DEFERRABLE;

ALTER TABLE dpd.companies ADD CONSTRAINT companies_drug_code_fkey FOREIGN KEY (extract, drug_code) REFERENCES dpd.drug_product(extract, drug_code) NOT DEFERRABLE;

ALTER TABLE dpd.route ADD CONSTRAINT route_drug_code_fkey FOREIGN KEY (extract, drug_code) REFERENCES dpd.drug_product(extract, drug_code) NOT DEFERRABLE;

