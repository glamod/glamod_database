CREATE TABLE cdm_v1.conversion_method (
  method INT,
  variable INT REFERENCES cdm_v1.observed_variable(variable),
  description VARCHAR,
  implementation VARCHAR,
  reference VARCHAR,
  PRIMARY KEY(method, variable)
);
