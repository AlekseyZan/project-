drop database if exists shop;
create database if not exists shop;
use shop;
create table if not exists shop
(id int,
title varchar(40),
address varchar(40),
city varchar(40),
hours tinytext,
index(id,title));
insert into shop values
('0','Пятерочка','ул.Семенова,47','Москва','8:00 - 22:00'),
('1','Перекрёсток','ул.Семенова,48','Москва','круглосуточно'),
('2','Пятерочка','ул.Вовы,32','Санкт-петербург','8:40 - 22:40'),
('3','Перекрёсток','ул.Татьяны Б.,1','Ижевск','9:00 - 21:00');

update shop set title = 'Пятёрочка 2' where title = 'Пятерочка';

update shop set address = 'пр-т Орлова,33' where city = 'Ижевск';

update shop set title = 'Всегда открыто', address='Рядом с домом' where hours='круглосуточно';

delete from shop where id = 2;
select *from shop;

