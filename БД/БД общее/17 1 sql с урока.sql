drop database if exists my_service;
create database if not exists my_service;
use my_service;
drop table users;
create table if not exists users
(
    id int primary key auto_increment,
    email varchar(40) not null,
    phone varchar(15) not null,
    password_hash varchar(40) not null,
    registration_date datetime not null default now()
);

show tables;
describe users;

alter table users_new
rename to users;

alter table users
add column birthdate date not null;

alter table users
add birthdate date not null;

alter table users
add birthdate date not null,
add age tinyint unsigned not null;

-- Добавление нового столбца на 1е место
alter table users
add birthdate date not null first;

-- Добавлние нового столбца после указанной колонки
alter table users
add birthdate date not null after phone;

-- Удаление столбца
alter table users
drop column birthdate;

-- Изменить описание столбца
alter table users
modify birthdate date null;

-- Изменить тип столбца
alter table users
add age tinyint,
add bio tinytext not null;

alter table users
modify age tinyint unsigned,
modify bio varchar(140) null;

-- Изменить название столбца
alter table users
change phone phone_number varchar(15) not null;

-- --------------------------------------------------------------------------------------
drop database if exists my_service;
create database if not exists my_service;
use my_service;
create table if not exists users
(
    id int primary key auto_increment,
    email varchar(40) not null,
    phone varchar(15) not null,
    password_hash varchar(40) not null,
    registration_date datetime not null default now()
);
create table if not exists orders
(
    id int primary key auto_increment,
    total int unsigned not null,
    order_datetime datetime not null default now()
);

-- Добавим имя для пользователей
alter table users
add username varchar(15) not null default 'Пользователь';

-- Добавим поле для ссылки на таблицу
alter table orders
add user_id int;

-- Добавим ссылку на таблицу
alter table orders
add foreign key (user_id) references users(id);

insert into users(email, phone, password_hash, registration_date) values
('test@mail.ru', '999-999-99-99', 'md5 hash', '2022-01-01');

insert into orders(total, user_id) values
(4400, 1);

select * from users;
select * from orders;


delete from users where id = 1;
delete from orders where id = 1;


drop database if exists my_service;
create database if not exists my_service;
use my_service;
create table if not exists users
(
    id int primary key auto_increment,
    email varchar(40) not null,
    phone varchar(15) not null,
    password_hash varchar(40) not null,
    registration_date datetime not null default now()
);
create table if not exists orders
(
    id int primary key auto_increment,
    total int unsigned not null,
    order_datetime datetime not null default now(),
    user_id int,
    foreign key (user_id) references users(id)
    on delete cascade on update cascade
);

insert into users(email, phone, password_hash, registration_date) values
('test@mail.ru', '999-999-99-99', 'md5 hash', '2022-01-01');

insert into orders(total, user_id) values
(4400, 1);

select * from users;
select * from orders;

delete from users where id = 1;

update users set id = 2 where id = 1;

-- 0--------------------------------------------------------------------------------

drop database if exists my_service;
create database if not exists my_service;
use my_service;
create table if not exists users
(
    id int primary key auto_increment,
    email varchar(40) not null,
    phone varchar(15) not null,
    password_hash varchar(40) not null,
    registration_date datetime not null default now()
);
create table if not exists orders
(
    id int primary key auto_increment,
    total int unsigned not null,
    order_datetime datetime not null default now()
);

-- Добавим имя для пользователей
alter table users
add username varchar(15) not null default 'Пользователь';

-- Добавим поле для ссылки на таблицу
alter table orders
add user_id int;

-- Но что если мы хотим изменить внешний ключ?
-- constraint

alter table orders
add constraint orders_users_fk
foreign key (user_id) references users(id);

alter table orders
drop foreign key orders_users_fk;

-- constraint при создании таблицы
create table if not exists users
(
    id int primary key auto_increment,
    email varchar(40) not null,
    phone varchar(15) not null,
    password_hash varchar(40) not null,
    registration_date datetime not null default now()
);
create table if not exists orders
(
    id int primary key auto_increment,
    total int unsigned not null,
    order_datetime datetime not null default now(),
    user_id int,
    constraint orders_users_fk
    foreign key (user_id) references users(id)
);
