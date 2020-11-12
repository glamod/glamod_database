CREATE TRIGGER station_configuration_insert_check BEFORE INSERT ON
  __INSERT_SCHEMA__.station_configuration
FOR EACH ROW
  EXECUTE PROCEDURE __INSERT_SCHEMA__.validate_station_configuration();