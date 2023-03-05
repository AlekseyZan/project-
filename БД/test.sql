drop database if exists users;
create database if not exists users;
use users;
create table if not exists user(
id int,
username varchar(40),
email varchar(40),
password_hash varchar(200),
age tinyint,
index(username,email)
);
insert into user values
('0','user1','user1@mail.ru','123','43'),
('1','user2','user2@mail.ru','123','35');

insert into user (username,email) values
('user3','user3@mail.ru'),
('user4','user4@mail.ru'),
('user5','user5@mail.ru');

update user set id = 0;

update user set username='Ololo' where username ='user5';
delete from user where username = 'user4';



select *from user;
