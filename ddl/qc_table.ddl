CREATE TABLE __INSERT_SCHEMA__.qc_table (
  report_id VARCHAR REFERENCES __INSERT_SCHEMA__.header_table(report_id),
  observation_id VARCHAR REFERENCES __INSERT_SCHEMA__.observations_table(observation_id),
  qc_method INT REFERENCES __INSERT_SCHEMA__.qc_method(method),
  qc_flag INT REFERENCES __INSERT_SCHEMA__.quality_flag(flag)
);
