CREATE TABLE cdm_v1.uncertainty_table (
  observation_id VARCHAR REFERENCES cdm_v1.observations_table(observation_id),
  uncertainty_type VARCHAR,
  uncertainty_method INT REFERENCES cdm_v1.uncertainty_method(method),
  uncertainty_value NUMERIC,
  uncertainty_units INT REFERENCES cdm_v1.units(units)
);
