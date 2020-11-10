CREATE TRIGGER validate_profile_configuration_optional BEFORE INSERT ON
    cdm_v1.profile_configuration_optional
FOR EACH ROW
    EXECUTE PROCEDURE cdm_v1.validate_profile_configuration_optional();