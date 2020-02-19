CREATE OR REPLACE FUNCTION validate_source_configuration()
RETURNS trigger AS 
$BODY$
BEGIN
IF NOT new.contact <@ (select array_agg(contact_id) from contact) THEN
  RAISE EXCEPTION ' Invalid entry for source_configuration.contact, match not found in contact.contact_id ';
END IF;
IF NOT new.contact_role <@ (select array_agg(role) from role) THEN
  RAISE EXCEPTION ' Invalid entry for source_configuration.contact_role, match not found in role.role ';
END IF;
IF NOT new.metadata_contact <@ (select array_agg(contact_id) from contact) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.metadata_contact, match not found in contact.contact_id ';
END IF;
IF NOT new.metadata_contact_role <@ (select array_agg(role) from role) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.metadata_contact_role, match not found in role.role ';
END IF;
RETURN NEW;
END;
$BODY$
LANGUAGE plpgsql VOLATILE
COST 100;

CREATE TRIGGER source_configuration_insert_check BEFORE INSERT ON
  source_configuration
FOR EACH ROW
  EXECUTE PROCEDURE validate_source_configuration();
