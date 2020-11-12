CREATE TRIGGER validate_sensor_configuration_optional BEFORE INSERT ON
    __INSERT_SCHEMA__.sensor_configuration_optional
FOR EACH ROW
    EXECUTE PROCEDURE __INSERT_SCHEMA__.validate_sensor_configuration_optional();