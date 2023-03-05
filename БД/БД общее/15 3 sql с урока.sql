-- Текущая дата и время
SELECT NOW();
SELECT SYSDATE();
SELECT CURRENT_TIMESTAMP();
SELECT NOW(), SYSDATE(), SLEEP(5), NOW(), SYSDATE();
-- Текущая дата
SELECT CURRENT_DATE();
SELECT CURDATE();
-- Текущее время
SELECT CURRENT_TIME();
SELECT CURTIME();
-- Дата по UTC
SELECT UTC_DATE();
-- Время по UTC
SELECT UTC_TIME();

-- DAYOFMONTH(date) возвращает день месяца в виде числового значения
-- DAYOFWEEK(date) возвращает день недели в виде числового значения
-- DAYOFYEAR(date) возвращает номер дня в году
-- MONTH(date) возвращает месяц даты
-- YEAR(date) возвращает год из даты
-- QUARTER(date) возвращает номер квартала года
-- WEEK(date [, first]) возвращает номер недели года
-- LAST_DAY(date) возвращает последний день месяца в виде даты
-- DAYNAME(date) возвращает название дня недели
-- MONTHNAME(date) возвращает название текущего месяца
-- HOUR(time) возвращает час времени
-- MINUTE(time) возвращает минуту времени
-- SECOND(time) возвращает секунду времени

SELECT DAYOFMONTH('2022-06-09');
SELECT DAYOFWEEK('2022-06-09') ;
SELECT DAYOFYEAR('2022-06-09') ;
SELECT MONTH('2022-06-09') ;
SELECT YEAR('2022-06-09');
SELECT QUARTER('2022-06-09');
SELECT WEEK('2022-06-09');
SELECT WEEK('2022-06-09', 1);
SELECT LAST_DAY('2022-06-09');
SELECT DAYNAME('2022-06-09');
SELECT MONTHNAME('2022-06-09');
SELECT HOUR('13:90:09') ;
SELECT MINUTE('13:90:09') ;
SELECT SECOND('13:90:09') ;

-- Добавить к дате
SELECT DATE_ADD('2022-06-09', INTERVAL 1 DAY);
SELECT DATE_ADD('2022-06-09', INTERVAL 3 MONTH);
SELECT DATE_ADD('2022-06-09 21:31:27', INTERVAL 4 HOUR);
-- Вычесить из даты
SELECT DATE_SUB('2022-06-09', INTERVAL 4 DAY);
-- Разница дат
SELECT DATEDIFF('2022-06-09', '2022-06-15');
SELECT DATEDIFF('2022-06-09', '2022-06-07');
SELECT DATEDIFF('2022-06-09', '2022-04-07');
-- Форматирование
SELECT DATE_FORMAT(date, format);
SELECT TIME_FORMAT(date, format);
-- %m: месяц в числовом формате 01..12
-- %с: месяц в числовом формате 1..12
-- %M: название месяца (January...December)
-- %b: аббревиатура месяца (Jan...Dec)
-- %d: день месяца в числовом формате 00..31
-- %e: день месяца в числовом формате 0..31
-- %D: номер дня месяца с суффиксом (1st, 2nd, 3rd...)
-- %y: год в виде двух чисел
-- %Y: год в виде четырех чисел
-- %W: название дня недели (Sunday...Saturday)
-- %a: аббревиатура дня недели (Sun...Sat)
-- %H: час в формате 00..23
-- %k: час в формате 0..23
-- %h: час в формате 01..12
-- %l: час в формате 1..12
-- %i: минуты в формате 00..59
-- %r: время в 12-ти часовом формате (hh:mm:ss AM или PM)
-- %T: время в 24-ти часовом формате (hh:mm:ss)
-- %S: секунды в формате 00..59
-- %p: AM или PM

SELECT DATE_FORMAT('2022-06-09 09:34:57', '%r, %T');
