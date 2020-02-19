CREATE TABLE conversion_method (
  method INT,
  variable INT REFERENCES observed_variable(variable),
  description VARCHAR,
  implementation VARCHAR,
  reference VARCHAR,
  PRIMARY KEY(method, variable)
);
