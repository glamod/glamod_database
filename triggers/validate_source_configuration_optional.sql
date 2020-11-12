CREATE TRIGGER validate_source_configuration_optional BEFORE INSERT ON
    __INSERT_SCHEMA__.source_configuration_optional
FOR EACH ROW
    EXECUTE PROCEDURE __INSERT_SCHEMA__.validate_source_configuration_optional();