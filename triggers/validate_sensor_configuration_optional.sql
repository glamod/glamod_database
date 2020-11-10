CREATE TRIGGER validate_sensor_configuration_optional BEFORE INSERT ON
    cdm_v1.sensor_configuration_optional
FOR EACH ROW
    EXECUTE PROCEDURE cdm_v1.validate_sensor_configuration_optional();