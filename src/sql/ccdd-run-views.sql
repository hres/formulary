
-- filters other views
REFRESH MATERIALIZED VIEW public.dpd_drug_source;

-- rest of DPD data
REFRESH MATERIALIZED VIEW public.dpd_route_source;
REFRESH MATERIALIZED VIEW public.dpd_form_source;
REFRESH MATERIALIZED VIEW public.dpd_named_ingredient_source;
REFRESH MATERIALIZED VIEW public.dpd_active_ingredient_code_source;
REFRESH MATERIALIZED VIEW public.dpd_ingredient_source;
REFRESH MATERIALIZED VIEW public.dpd_drug_ingredient_source;
REFRESH MATERIALIZED VIEW public.dpd_drug_ingredient_option_source;
REFRESH MATERIALIZED VIEW public.dpd_drug_form_source;
REFRESH MATERIALIZED VIEW public.dpd_drug_route_source;

-- depending on DPD data
REFRESH MATERIALIZED VIEW public.ccdd_ingredient_stem_source;
REFRESH MATERIALIZED VIEW public.ccdd_ntp_ingredient_source;
REFRESH MATERIALIZED VIEW public.ccdd_dpd_ingredient_ntp_mapping_source;
REFRESH MATERIALIZED VIEW public.ccdd_tm_source;
REFRESH MATERIALIZED VIEW public.ccdd_tm_ingredient_stem_source;
REFRESH MATERIALIZED VIEW public.ccdd_dosage_form_source;
REFRESH MATERIALIZED VIEW public.ccdd_dosage_form_mapping_source;
REFRESH MATERIALIZED VIEW public.ccdd_dosage_form_mapping_dpd_form_source;
REFRESH MATERIALIZED VIEW public.ccdd_dosage_form_mapping_dpd_route_source;
REFRESH MATERIALIZED VIEW public.ccdd_combination_product_source;
REFRESH MATERIALIZED VIEW public.ccdd_presentation_source;

INSERT INTO public.dpd_drug(
    code,
    din,
    brand_name_en,
    company_name
) SELECT
    code,
    din,
    brand_name_en,
    company_name
FROM public.dpd_drug_source;

INSERT INTO public.dpd_named_ingredient(
    name
) SELECT
    name
FROM public.dpd_named_ingredient_source;

INSERT INTO public.dpd_active_ingredient_code(
    id
) SELECT
    id
FROM public.dpd_active_ingredient_code_source;

INSERT INTO public.dpd_ingredient(
    dpd_named_ingredient_name,
    dpd_active_ingredient_code_id
) SELECT
    dpd_named_ingredient_name,
    dpd_active_ingredient_code_id
FROM public.dpd_ingredient_source;

INSERT INTO public.dpd_drug_ingredient(
    dpd_drug_code,
    dpd_named_ingredient_name,
    dpd_active_ingredient_code_id
) SELECT
    dpd_drug_code,
    dpd_named_ingredient_name,
    dpd_active_ingredient_code_id
FROM public.dpd_drug_ingredient_source;

INSERT INTO public.dpd_drug_ingredient_option(
    dpd_drug_code,
    dpd_named_ingredient_name,
    dpd_active_ingredient_code_id,
    strength_amount,
    strength_unit,
    dosage_amount,
    dosage_unit
) SELECT
    dpd_drug_code,
    dpd_named_ingredient_name,
    dpd_active_ingredient_code_id,
    strength_amount,
    strength_unit,
    dosage_amount,
    dosage_unit
FROM public.dpd_drug_ingredient_option_source;

INSERT INTO public.ccdd_ingredient_stem(
    name
) SELECT
    name
FROM public.ccdd_ingredient_stem_source;

INSERT INTO public.ccdd_ntp_ingredient(
    name,
    ccdd_ingredient_stem_name
) SELECT
    name,
    ccdd_ingredient_stem_name
FROM public.ccdd_ntp_ingredient_source;

INSERT INTO public.ccdd_dpd_ingredient_ntp_mapping(
    dpd_named_ingredient_name,
    ccdd,
    ccdd_ntp_ingredient_name
) SELECT
    dpd_named_ingredient_name,
    ccdd,
    ccdd_ntp_ingredient_name
FROM public.ccdd_dpd_ingredient_ntp_mapping_source;

INSERT INTO public.ccdd_tm(
    code
) SELECT
    code
FROM public.ccdd_tm_source;

INSERT INTO public.ccdd_tm_ingredient_stem(
    ccdd_tm_code,
    ccdd_ingredient_stem_name
) SELECT
    ccdd_tm_code,
    ccdd_ingredient_stem_name
FROM public.ccdd_tm_ingredient_stem_source;

INSERT INTO public.dpd_route(
    code,
    name_en
) SELECT
    code,
    name_en
FROM public.dpd_route_source;

INSERT INTO public.dpd_form(
    code,
    name_en
) SELECT
    code,
    name_en
FROM public.dpd_form_source;

INSERT INTO public.dpd_drug_form(
    dpd_drug_code,
    dpd_form_code
) SELECT
    dpd_drug_code,
    dpd_form_code
FROM public.dpd_drug_form_source;

INSERT INTO public.dpd_drug_route(
    dpd_drug_code,
    dpd_route_code
) SELECT
    dpd_drug_code,
    dpd_route_code
FROM public.dpd_drug_route_source;

INSERT INTO public.ccdd_dosage_form(
    name,
    code
) SELECT
    name,
    code
FROM public.ccdd_dosage_form_source;

INSERT INTO public.ccdd_dosage_form_mapping(
    id,
    ccdd_dosage_form_name
) SELECT
    id,
    ccdd_dosage_form_name
FROM public.ccdd_dosage_form_mapping_source;

INSERT INTO public.ccdd_dosage_form_mapping_dpd_form(
    dpd_form_code,
    ccdd_dosage_form_mapping_id
) SELECT
    dpd_form_code,
    ccdd_dosage_form_mapping_id
FROM public.ccdd_dosage_form_mapping_dpd_form_source;

INSERT INTO public.ccdd_dosage_form_mapping_dpd_route(
    dpd_route_code,
    ccdd_dosage_form_mapping_id
) SELECT
    dpd_route_code,
    ccdd_dosage_form_mapping_id
FROM public.ccdd_dosage_form_mapping_dpd_route_source;

INSERT INTO public.ccdd_combination_product(
    dpd_drug_code,
    mp_formal_name,
    ntp_formal_name,
    ntp_type
) SELECT
    dpd_drug_code,
    mp_formal_name,
    ntp_formal_name,
    ntp_type
FROM public.ccdd_combination_product_source;

INSERT INTO public.ccdd_presentation(
    pseudodin,
    dpd_drug_code,
    unit,
    size_amount,
    size_unit,
    strength_is_per_size_unit
) SELECT
    pseudodin,
    dpd_drug_code,
    unit,
    size_amount,
    size_unit,
    strength_is_per_size_unit
FROM public.ccdd_presentation_source;

-- update computed lookups
REFRESH MATERIALIZED VIEW ccdd_drug_dosage_form_by_form;
REFRESH MATERIALIZED VIEW ccdd_drug_dosage_form_by_route;
REFRESH MATERIALIZED VIEW ccdd_drug_dosage_form;
REFRESH MATERIALIZED VIEW ccdd_drug_ingredient_summary;
REFRESH MATERIALIZED VIEW ccdd_drug_tm;
