/*
Script adds trigger (header_insert_trigger) to header table. This script needs to be called after the
script that creates the trigger function.
*/
\connect c3s311a
CREATE TRIGGER header_insert_trigger
BEFORE INSERT ON __INSERT_SCHEMA__.header_table
FOR EACH ROW EXECUTE PROCEDURE __INSERT_SCHEMA__.header_insert_trigger();
