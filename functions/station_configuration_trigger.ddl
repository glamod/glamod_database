CREATE OR REPLACE FUNCTION cdm_v1.validate_station_configuration()
RETURNS trigger AS 
$BODY$
BEGIN
IF NOT new.secondary_id_scheme <@ (select array_agg(scheme) from cdm_v1.id_scheme) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.secondary_id_scheme, match not found in id_scheme.scheme ';
END IF;
IF NOT new.contact <@ (select array_agg(contact_id) from cdm_v1.contact) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.contact, match not found in contact.contact_id ';
END IF;
IF NOT new.role <@ (select array_agg(role) from cdm_v1.role) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.role, match not found in role.role ';
END IF;
IF NOT new.metadata_contact <@ (select array_agg(contact_id) from cdm_v1.contact) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.metadata_contact, match not found in contact.contact_id ';
END IF;
IF NOT new.metadata_contact_role <@ (select array_agg(role) from cdm_v1.role) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.metadata_contact_role, match not found in role.role ';
END IF;
IF NOT new.telecommunication_method <@ (select array_agg(method) from cdm_v1.communication_method) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.telecommunication_method, match not found in communication_method.method ';
END IF;
IF NOT new.observed_variables <@ (select array_agg(variable) from cdm_v1.observed_variable) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.observed_variables, match not found in observed_variable.variable ';
END IF;
RETURN NEW;
END;
$BODY$
LANGUAGE plpgsql VOLATILE
COST 100;

CREATE TRIGGER station_configuration_insert_check BEFORE INSERT ON
  cdm_v1.station_configuration
FOR EACH ROW
  EXECUTE PROCEDURE cdm_v1.validate_station_configuration();
