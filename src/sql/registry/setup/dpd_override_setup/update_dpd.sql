ALTER TABLE dpd.active_ingredient
ADD COLUMN ccdd_ingredient TEXT,
ADD COLUMN ccdd_strength TEXT;

ALTER TABLE dpd.route
ADD COLUMN ccdd_route_of_administration TEXT;

ALTER TABLE dpd.pharmaceutical_form
ADD COLUMN ccdd_pharmaceutical_form TEXT;