CREATE TRIGGER source_configuration_insert_check BEFORE INSERT ON
  __INSERT_SCHEMA__.source_configuration
FOR EACH ROW
  EXECUTE PROCEDURE __INSERT_SCHEMA__.validate_source_configuration();