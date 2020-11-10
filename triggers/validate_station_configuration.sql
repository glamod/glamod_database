CREATE TRIGGER station_configuration_insert_check BEFORE INSERT ON
  cdm_v1.station_configuration
FOR EACH ROW
  EXECUTE PROCEDURE cdm_v1.validate_station_configuration();