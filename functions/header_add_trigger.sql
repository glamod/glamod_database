\connect c3s311a
CREATE TRIGGER header_insert_trigger
BEFORE INSERT ON cdm_v1.header_table
FOR EACH ROW EXECUTE PROCEDURE cdm_v1.header_insert_trigger();
