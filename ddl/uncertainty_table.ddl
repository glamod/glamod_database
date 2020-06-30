CREATE TABLE __INSERT_SCHEMA__.uncertainty_table (
  observation_id VARCHAR REFERENCES observations_table(observation_id),
  uncertainty_type INT REFERENCES uncertainty_type( uncertainty_type ),
  uncertainty_method INT REFERENCES uncertainty_method(method),
  uncertainty_value NUMERIC,
  uncertainty_units INT REFERENCES units(units)
);
