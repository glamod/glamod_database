CREATE OR REPLACE FUNCTION __INSERT_SCHEMA__.validate_sensor_configuration_optional()
    RETURNS trigger AS
    $BODY$
    DECLARE
        tmp_int integer;
        tmp_numeric numeric;
        tmp_varchar varchar;
        tmp_timestamp timestamp with time zone;
    BEGIN
        IF NEW.kind = 0 THEN -- INT
            tmp_int = NEW.value::INT;
        ELSIF NEW.kind = 1 THEN -- NUMERIC
            tmp_numeric = NEW.value::NUMERIC;
        ELSIF NEW.kind = 2 THEN -- VARCHAR
            tmp_varchar = NEW.value::VARCHAR;
        ELSIF NEW.kind = 3 THEN -- TIMESTAMP WITH TIME ZONE
            tmp_timestamp = NEW.value::TIMESTAMP WITH TIME ZONE;
        ELSE
            RAISE EXCEPTION 'Invalid kind';
        END IF;
        INSERT INTO __INSERT_SCHEMA__.sensor_configuration_optional VALUES (NEW.*);
        RETURN NEW;
    EXCEPTION
        WHEN invalid_text_representation THEN --
            IF NEW.kind = 0 THEN
                RAISE EXCEPTION 'Invalid value, expecting integer and received %\n', NEW.value;
            ELSIF NEW.kind = 1 THEN
                RAISE EXCEPTION 'Invalid value, expecting numeric and received %\n', NEW.value;
            ELSIF NEW.kind = 2 THEN
                RAISE EXCEPTION 'Invalid value, expecting varchar and received %\n', NEW.value;
            ELSIF NEW.kind = 3 THEN
                RAISE EXCEPTION 'Invalid value, expecting timestamp with time zone and received %\n', NEW.value;
            ELSE
                RAISE EXCEPTION 'Invalid value, received %s\n', NEW.value;
            END IF;
    RETURN NULL;
    END;
    $BODY$
LANGUAGE plpgsql VOLATILE
COST 100;


CREATE TRIGGER __INSERT_SCHEMA__.validate_sensor_configuration_optional BEFORE INSERT ON
    __INSERT_SCHEMA__.sensor_configuration_optional
FOR EACH ROW
    EXECUTE PROCEDURE __INSERT_SCHEMA__.validate_sensor_configuration_optional();
