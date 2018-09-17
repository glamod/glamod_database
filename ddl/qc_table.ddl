CREATE TABLE cdm_v1.qc_table (
  report_id VARCHAR REFERENCES cdm_v1.header_table(report_id),
  observation_id VARCHAR REFERENCES cdm_v1.observations_table(observation_id),
  qc_method INT REFERENCES cdm_v1.qc_method(method),
  qc_flag INT REFERENCES cdm_v1.quality_flag(flag)
);
