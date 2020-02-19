\connect c3s311a
CREATE TRIGGER header_insert_trigger
BEFORE INSERT ON header_table
FOR EACH ROW EXECUTE PROCEDURE header_insert_trigger();
