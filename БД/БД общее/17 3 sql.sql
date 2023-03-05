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
add contstaint orders_users_fk
foreign key (user_id) references users(id);

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
