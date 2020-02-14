-- update dpd.active_ingredient.ccdd_ingredient and dpd.active_ingredient.ccdd_strength
UPDATE dpd.active_ingredient tgt
SET
    ccdd_ingredient =
    CASE WHEN src.ccdd_ingredient IS NOT NULL
    THEN src.ccdd_ingredient ELSE tgt.ingredient END,
    ccdd_strength =
    CASE WHEN src.ccdd_strength IS NOT NULL
    THEN src.ccdd_strength ELSE tgt.ccdd_strength END
FROM dpd_temp.active_ingredient src
WHERE (
        src.ccdd_ingredient IS NOT NULL OR
        src.ccdd_strength IS NOT NULL
      ) AND
      tgt.drug_code = src.drug_code AND
      tgt.active_ingredient_code = src.active_ingredient_code AND
      tgt.ingredient = src.ingredient AND
      tgt.strength = src.strength;

-- update dpd.route.ccdd_route_of_administration
UPDATE dpd.route tgt
SET ccdd_route_of_administration = src.ccdd_route_of_administration
FROM dpd_temp.route src
WHERE src.ccdd_route_of_administration IS NOT NULL AND
      tgt.drug_code = src.drug_code AND
      tgt.route_of_administration = src.route_of_administration;

-- update dpd.pharmaceutical_form.ccdd_pharmaceutical_form
UPDATE dpd.pharmaceutical_form tgt
SET ccdd_pharmaceutical_form = src.ccdd_pharmaceutical_form
FROM dpd_temp.pharmaceutical_form src
WHERE src.ccdd_pharmaceutical_form IS NOT NULL AND
      tgt.pharm_form_code = src.pharm_form_code AND
      tgt.drug_code = src.drug_code;