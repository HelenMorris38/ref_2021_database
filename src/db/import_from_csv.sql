\c ref_2021_database

COPY outputs
(output_id, 
institution_id, 
unit_of_assessment, 
output_type,
title,
place,
publisher,
vol_title,
vol,
issue,
doi,
isbn,
issn,
patent_number,
month,
year,
number_of_additional_authors,
oa_status,
propose_dw,
reserve_output,
delayed_by_covid19)
FROM '/Users/helenmorris/ref_data_project.csv'
DELIMITER ','
CSV HEADER;