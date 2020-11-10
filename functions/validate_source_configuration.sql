CREATE OR REPLACE FUNCTION cdm_v1.validate_source_configuration()
RETURNS trigger AS 
$BODY$
BEGIN
IF NOT new.contact <@ (select array_agg(contact_id) from cdm_v1.contact) THEN
  RAISE EXCEPTION ' Invalid entry for source_configuration.contact, match not found in contact.contact_id ';
END IF;
IF NOT new.contact_role <@ (select array_agg(role) from cdm_v1.role) THEN
  RAISE EXCEPTION ' Invalid entry for source_configuration.contact_role, match not found in role.role ';
END IF;
IF NOT new.metadata_contact <@ (select array_agg(contact_id) from cdm_v1.contact) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.metadata_contact, match not found in contact.contact_id ';
END IF;
IF NOT new.metadata_contact_role <@ (select array_agg(role) from cdm_v1.role) THEN
  RAISE EXCEPTION ' Invalid entry for station_configuration.metadata_contact_role, match not found in role.role ';
END IF;
RETURN NEW;
END;
$BODY$
LANGUAGE plpgsql VOLATILE
COST 100;


