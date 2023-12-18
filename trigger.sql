-- Видалення книг, написаних до 2000 року
DROP FUNCTION IF EXISTS remove_books();
CREATE OR REPLACE FUNCTION remove_books() RETURNS TRIGGER
LANGUAGE 'plpgsql'
AS $$
BEGIN 
    DELETE FROM books
		WHERE year_of_publication < 2000;
END;
$$;

-- Тригер викликає функцію delete_books() при модифікації даних в таблиці books
DROP TRIGGER IF EXISTS trigger_remove_books ON books;
CREATE TRIGGER trigger_remove_books
AFTER UPDATE ON books
FOR EACH ROW
EXECUTE FUNCTION remove_books();
