CREATE TRIGGER source_configuration_insert_check BEFORE INSERT ON
  cdm_v1.source_configuration
FOR EACH ROW
  EXECUTE PROCEDURE cdm_v1.validate_source_configuration();