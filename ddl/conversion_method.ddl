CREATE TABLE __INSERT_SCHEMA__.conversion_method (
  method INT,
  variable INT REFERENCES observed_variable(variable),
  description VARCHAR,
  implementation VARCHAR,
  reference VARCHAR,
  PRIMARY KEY(method, variable)
);
