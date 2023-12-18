-- Виведення книг, рейтинг яких більше за вказане значення
DROP PROCEDURE IF EXISTS get_popular_books(integer);
CREATE OR REPLACE PROCEDURE get_popular_books(integer)
LANGUAGE plpgsql
AS $$
DECLARE popular_books ratings.isbn%TYPE;
BEGIN
     SELECT isbn INTO popular_books 
     FROM ratings WHERE book_rating > 6;
END;
$$;
