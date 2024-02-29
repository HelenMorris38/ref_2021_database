\c ref_2021_database

CREATE TABLE main_panel
(main_panel_id CHAR(1) NOT NULL PRIMARY KEY,
main_panel_name VARCHAR(15) NOT NULL);

CREATE TABLE units_of_assessment
(uoa INT NOT NULL,
uoa_name VARCHAR(250) NOT NULL,
main_panel CHAR(1),
PRIMARY KEY (uoa),
FOREIGN KEY (main_panel) REFERENCES main_panel(main_panel_id));

CREATE TABLE open_access_status
(oa_id INT NOT NULL PRIMARY KEY,
open_access_status VARCHAR(100));

CREATE TABLE country
(country_id INT NOT NULL PRIMARY KEY,
country VARCHAR(20));

CREATE TABLE area
(area_id INT NOT NULL PRIMARY KEY,
area VARCHAR(50));

CREATE TABLE institutions
(institution_id INT NOT NULL PRIMARY KEY,
institution_name VARCHAR(250),
country INT,
area INT NULL,
FOREIGN KEY (country) REFERENCES country(country_id),
FOREIGN KEY (area) REFERENCES area(area_id));

CREATE TABLE output_type
(output_type_id CHAR(1) PRIMARY KEY NOT NULL,
output_type VARCHAR(100));

CREATE TABLE outputs
(output_id INT NOT NULL PRIMARY KEY,
institution_id INT NOT NULL,
unit_of_assessment INT NOT NULL,
output_type CHAR(1) NOT NULL,
title VARCHAR(500),
place VARCHAR(100),
publisher VARCHAR(100),
vol_title VARCHAR(500),
vol VARCHAR(100),
issue VARCHAR(10),
doi VARCHAR(100),
isbn VARCHAR(50),
issn CHAR(9),
patent_number VARCHAR(50),
month VARCHAR(25),
year INT,
number_of_additional_authors INT,
oa_status INT,
propose_dw BOOLEAN,
reserve_output BOOLEAN,
delayed_by_covid19 BOOLEAN,
FOREIGN KEY (institution_id) REFERENCES institutions(institution_id),
FOREIGN KEY (unit_of_assessment) REFERENCES units_of_assessment(uoa),
FOREIGN KEY (output_type) REFERENCES output_type(output_type_id),
FOREIGN KEY (oa_status) REFERENCES open_access_status(oa_id));

