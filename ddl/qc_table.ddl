CREATE TABLE qc_table (
  report_id VARCHAR REFERENCES header_table(report_id),
  observation_id VARCHAR REFERENCES observations_table(observation_id),
  qc_method INT REFERENCES qc_method(method),
  qc_flag INT REFERENCES quality_flag(flag)
);
