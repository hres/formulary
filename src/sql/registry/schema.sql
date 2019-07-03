CREATE SCHEMA if not exists dpd_override;

select * into dpd_override.active_ingredient from dpd_shadow.active_ingredient except
select * from dpd.active_ingredient;

select * into dpd_override.companies from dpd_shadow.companies except
select * from dpd.companies;

select * into dpd_override.drug_product from dpd_shadow.drug_product except
select * from dpd.drug_product;

select * into dpd_override.packaging from dpd_shadow.packaging except
select * from dpd.packaging;

select * into dpd_override.pharmaceutical_form from dpd_shadow.pharmaceutical_form except
select * from dpd.pharmaceutical_form;

select * into dpd_override.pharmaceutical_std from dpd_shadow.pharmaceutical_std except
select * from dpd.pharmaceutical_std;

select * into dpd_override.route from dpd_shadow.route except
select * from dpd.route;

select * into dpd_override.schedule from dpd_shadow.schedule except
select * from dpd.schedule;

select * into dpd_override.status from dpd_shadow.status except
select * from dpd.status;

select * into dpd_override.therapeutic_class from dpd_shadow.therapeutic_class except
select * from dpd.therapeutic_class;

select * into dpd_override.vet_species from dpd_shadow.vet_species except
select * from dpd.vet_species;
