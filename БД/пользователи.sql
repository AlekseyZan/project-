drop database if exists Пользователи;
create database if not exists Пользователи;
use Пользователи;
create table if not exists Пользователи
(id int,
username varchar(40),
email varchar(40),
password_hash varchar(200),
age tinyint,
date_reg tinytext,
index(username,email)
);
insert into Пользователи values
('0',' 1 Пользователь','user1@mail.ru','123','32','09.09.2009');
insert into Пользователи (username,date_reg) values
('2 Пользователь','15.09.2009'),
('3 Пользователь','17.09.2009'),
('4 Пользователь','01.09.2009'),
('5 Пользователь','25.09.2009');



select *from Пользователи;


