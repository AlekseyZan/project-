-- Округлить число
SELECT ROUND(1342.390, 2);
SELECT ROUND(1342.390, -2);
-- Оставить в дробной части определенное количество символов
SELECT TRUNCATE(1342.390, 2);
-- Модуль числа
SELECT ABS(-123);
SELECT ABS(123);
-- Округление вниз
SELECT FLOOR(-123.90);
SELECT FLOOR(123.90);
SELECT FLOOR(-123.95);
SELECT FLOOR(123.95);
-- Округление вверх
SELECT CEILING(-123.90);
SELECT CEILING(123.000001);
SELECT CEILING(-123.95);
SELECT CEILING(123.95);
-- Возвести в степень
SELECT POWER(15, 2);
SELECT POWER(5, 3);
-- Корень числа
SELECT SQRT(225);
-- Знак числа
SELECT SIGN(-42342390);
SELECT SIGN(74124324);
SELECT SIGN(0);
-- Случайное число от 0 до 1
SELECT ROUND(RAND(), 2), RAND(), RAND();
select rand(1), rand(2), rand(2), rand(400);

select rand(1), rand(400), rand(10);

-- Округлить число
SELECT ROUND('gdfgfd1342.390dgfhg', '2');
-- Оставить в дробной части определенное количество символов
SELECT TRUNCATE('1342.390', '2');
-- Модуль числа
SELECT ABS('-123');
-- Округление вниз
SELECT FLOOR('-123.90');
-- Округление вверх
SELECT CEILING('-123.90');
-- Возвести в степень
SELECT POWER('15', '2');
-- Корень числа
SELECT SQRT('225');
-- Знак числа
SELECT SIGN('-42342390');
SELECT SIGN('74124324');
SELECT SIGN('0');
-- Случайное число от 0 до 1
SELECT ROUND(RAND(), '2'), RAND(), RAND();
select rand('1');
