drop database if exists test2;
create database if not exists test2;
use test2;
create table if not exists users
(
id int,
username varchar(40),
email varchar(40),
password_hash varchar(200),
age tinyint,
index (username, email)
);

insert into users values
(0, 'user 1', 'user1@mail.ru', '123', 34),
(1, 'user 2', 'user2@mail.ru', '123', 23);

insert into users(username, email) values
('user3', 'user3@mail.ru'),
('user4', 'user4@mail.ru'),
('user5', 'user5@mail.ru');

update users set id = 0;

update users set username = 'user 5' where username = 'user5';

delete from users where username = 'user4';

select * from users;
