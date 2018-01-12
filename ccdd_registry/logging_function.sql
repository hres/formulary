-- Logging function

CREATE FUNCTION change_trigger() RETURNS trigger AS $$

        BEGIN
                IF      TG_OP = 'INSERT'
                THEN
                        INSERT INTO logging.t_history (table_name, schema_name, operation, new_val)
                                VALUES (TG_RELNAME, TG_TABLE_SCHEMA, TG_OP, row_to_json(NEW));
                        RETURN NEW;
                ELSIF   TG_OP = 'UPDATE'
                THEN
                        INSERT INTO logging.t_history (table_name, schema_name, operation, new_val, old_val)
                                VALUES (TG_RELNAME, TG_TABLE_SCHEMA, TG_OP,
                                        row_to_json(NEW), row_to_json(OLD));
                        RETURN NEW;
                ELSIF   TG_OP = 'DELETE'
                THEN
                        INSERT INTO logging.t_history (table_name, schema_name, operation, old_val)
                                VALUES (TG_RELNAME, TG_TABLE_SCHEMA, TG_OP, row_to_json(OLD));
                        RETURN OLD;
                END IF;
        END;
$$ LANGUAGE 'plpgsql' SECURITY DEFINER;