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

-- Изменить имя таблицы
alter table users
rename to users_new;

-- Добавление нового столбца
alter table users
add column birthdate date not null;

-- Добавлние нового столбца
alter table users
add birthdate date not null;

-- Добавлние новых столбцов
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

-- Изменить местоположение столбца
alter table users
modify birthdate first;

-- Изменить местоположение столбца
alter table users
modify birthdate after email;

-- Изменить тип столбца
alter table users
add age tinyint,
add bio smalltext not null;

alter table users
modify age tinyint unsigned,
modify bio varchar(140) null;

-- Изменить название столбца
-- К сожалению, нужно заново указывать его описание
-- По идее, это псевдоним для нескольких действий: удалить, создать на нужное место
alter table users
change phone phone_number varchar(15) not null;
