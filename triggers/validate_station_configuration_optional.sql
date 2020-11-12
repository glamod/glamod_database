CREATE TRIGGER validate_station_configuration_optional BEFORE INSERT ON
    __INSERT_SCHEMA__.station_configuration_optional
FOR EACH ROW
    EXECUTE PROCEDURE __INSERT_SCHEMA__.validate_station_configuration_optional();