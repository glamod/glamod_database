CREATE TRIGGER validate_profile_configuration_optional BEFORE INSERT ON
    __INSERT_SCHEMA__.profile_configuration_optional
FOR EACH ROW
    EXECUTE PROCEDURE __INSERT_SCHEMA__.validate_profile_configuration_optional();