-- Видалення користувачів, вік яких менше 25
DROP FUNCTION IF EXISTS remove_users();
CREATE OR REPLACE FUNCTION remove_users() RETURNS void
LANGUAGE 'plpgsql'
AS $$
BEGIN 
    DELETE FROM users
		WHERE age < 25;
END;
$$;
