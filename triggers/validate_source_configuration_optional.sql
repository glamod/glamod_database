CREATE TRIGGER validate_source_configuration_optional BEFORE INSERT ON
    cdm_v1.source_configuration_optional
FOR EACH ROW
    EXECUTE PROCEDURE cdm_v1.validate_source_configuration_optional();