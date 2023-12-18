-- Виклику функції
SELECT remove_users();

-- Перевірка роботи функції
SELECT * FROM users;

-- Виклик процедури
CALL get_popular_books(2);

-- Перевірка роботи триггера
-- Оновлення запису (спровокує виклик тригера)
UPDATE books SET book_title = 'The Devil Is There' WHERE book_title = 'The Angel Is Near';

-- Перевірка результатів 
SELECT * FROM books;
