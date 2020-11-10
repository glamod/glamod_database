CREATE TRIGGER validate_station_configuration_optional BEFORE INSERT ON
    cdm_v1.station_configuration_optional
FOR EACH ROW
    EXECUTE PROCEDURE cdm_v1.validate_station_configuration_optional();