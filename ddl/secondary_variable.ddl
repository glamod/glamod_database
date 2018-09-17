CREATE TABLE cdm_v1.secondary_variable (
  variable INT,
  variable_name VARCHAR,
  value INT,
  symbol VARCHAR,
  description VARCHAR,
  PRIMARY KEY(variable, value)
);
