CREATE TABLE homogenisation_table (
  observation_id VARCHAR REFERENCES observations_table(observation_id),
  homogenisation_method INT REFERENCES homogenisation_method(method),
  homogenisation_adjustment NUMERIC,
  homogenisation_operator INT REFERENCES homogenisation_operator(operator),
  homogenisation_order INT
);
