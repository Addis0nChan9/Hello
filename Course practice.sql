CREATE DATABASE opendata;
CREATE TABLE who_covid19 (
  date_reported date NOT NULL,
  country_code char(2) NOT NULL,
  country varchar(60) NOT NULL,
  who_region varchar(5) NOT NULL,
  new_cases int(7) DEFAULT NULL,
  cumulative_cases int(9) DEFAULT NULL,
  new_deaths int(7) DEFAULT NULL,
  cumulative_deaths int(9) DEFAULT NULL
);

SET GLOBAL local_infile = 1;


LOAD DATA LOCAL INFILE '/Users/addisonchang/Downloads/WHO-COVID-19-global-data.csv' 
INTO TABLE who_covid19 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

show variables like '%secure%';