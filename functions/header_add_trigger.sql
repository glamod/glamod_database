CREATE TRIGGER header_insert_trigger
BEFORE INSERT ON __INSERT_SCHEMA__.header_table
FOR EACH ROW EXECUTE PROCEDURE header_insert_trigger();
