-- Соединить строки
SELECT CONCAT('Игра', ' ', 'молоко');
-- Длина строки
select length('Dota 2 лучшая игра');
-- Убрать пустые символы в начале и в конце
select trim('     Пустые символы    ');
-- Вырезать из строки под строку
SELECT SUBSTRING('Galaxy S8 Plus', 8);  -- Начиная с 8го символа
SELECT SUBSTRING('Galaxy S8 Plus', 8, 2);  -- Вырезать 2 символа, начиная с 8го символа
-- Перевернуть строку
SELECT REVERSE('123906789');
-- Нижний регистр
select lower('ApPlE');
-- Верхний регистр
select upper('ApPlE');
