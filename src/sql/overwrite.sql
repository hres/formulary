-- update dpd.active_ingredient.ingredient and dpd.active_ingredient.strength
UPDATE dpd.active_ingredient tgt
SET ingredient = ccdd_ingredient,
    strength = ccdd_strength
FROM dpd.active_ingredient_src src
WHERE src.ccdd_ingredient IS NOT NULL AND
      src.ccdd_strength IS NOT NULL AND
      tgt.drug_code = src.drug_code AND
      tgt.active_ingredient_code = src.active_ingredient_code AND
      tgt.ingredient = src.ingredient AND
      tgt.strength = src.strength

-- update dpd.route.route_of_admnistration
UPDATE dpd.route tgt
SET route_of_admnistration = ccdd_route_of_admnistration
FROM dpd.route_src src
WHERE src.ccdd_route_of_admnistration IS NOT NULL AND
      tgt.drug_code = src.drug_code AND
      tgt.route_of_admnistration = src.route_of_admnistration

-- update dpd.pharmaceutical_form.pharmaceutical_form
UPDATE dpd.pharmaceutical_form tgt
SET pharmaceutical_form = ccdd_pharmaceutical_form
FROM dpd.pharmaceutical_form_src src
WHERE src.ccdd_pharmaceutical_form IS NOT NULL AND
      tgt.pharm_form_code = src.pharm_form_code AND
      tgt.drug_code = src.drug_code
