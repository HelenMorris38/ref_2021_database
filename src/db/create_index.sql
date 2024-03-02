\c ref_2021_database

create index output_index on outputs (institution_id, unit_of_assessment, output_type, oa_status);

create index inst_index on institutions (institution_name);

create index uoa_index on units_of_assessment (uoa_name);