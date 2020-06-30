CREATE OR REPLACE FUNCTION __INSERT_SCHEMA__.validate_station_configuration()
RETURNS trigger AS 
$BODY$
BEGIN
IF NOT new.secondary_id_scheme <@ (select array_agg(scheme) from __INSERT_SCHEMA__.id_scheme) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.secondary_id_scheme, match not found in id_scheme.scheme ';
END IF;
IF NOT new.contact <@ (select array_agg(contact_id) from __INSERT_SCHEMA__.contact) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.contact, match not found in contact.contact_id ';
END IF;
IF NOT new.role <@ (select array_agg(role) from __INSERT_SCHEMA__.role) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.role, match not found in role.role ';
END IF;
IF NOT new.metadata_contact <@ (select array_agg(contact_id) from __INSERT_SCHEMA__.contact) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.metadata_contact, match not found in contact.contact_id ';
END IF;
IF NOT new.metadata_contact_role <@ (select array_agg(role) from __INSERT_SCHEMA__.role) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.metadata_contact_role, match not found in role.role ';
END IF;
IF NOT new.telecommunication_method <@ (select array_agg(method) from __INSERT_SCHEMA__.communication_method) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.telecommunication_method, match not found in communication_method.method ';
END IF;
IF NOT new.observed_variables <@ (select array_agg(variable) from __INSERT_SCHEMA__.observed_variable) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.observed_variables, match not found in observed_variable.variable ';
END IF;
RETURN NEW;
END;
$BODY$
LANGUAGE plpgsql VOLATILE
COST 100;

CREATE TRIGGER __INSERT_SCHEMA__.station_configuration_insert_check BEFORE INSERT ON
  __INSERT_SCHEMA__.station_configuration
FOR EACH ROW
  EXECUTE PROCEDURE __INSERT_SCHEMA__.validate_station_configuration();
