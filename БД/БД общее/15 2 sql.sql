-- Округлить число
SELECT ROUND(1342.390, 2);
SELECT ROUND(1342.390, -2);
-- Оставить в дробной части определенное количество символов
SELECT TRUNCATE(1342.390, 2);
-- Модуль числа
SELECT ABS(-123);
-- Округление вниз
SELECT CEILING(-123.90);
SELECT CEILING(123.90);
SELECT CEILING(-123.95);
SELECT CEILING(123.95);
-- Округление вверх
SELECT CEILING(-123.90);
SELECT CEILING(123.90);
SELECT CEILING(-123.95);
SELECT CEILING(123.95);
-- Возвести в степень
SELECT POWER(5, 2);
SELECT POWER(5, 3);
-- Корень числа
SELECT SQRT(225);
-- Знак числа
SELECT SIGN(-5);
SELECT SIGN(7);
SELECT SIGN(0);
-- Случайное число от 0 до 1
SELECT RAND();
