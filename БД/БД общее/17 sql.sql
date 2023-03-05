drop database if exists my_service;
create database if not exists my_service;
use my_service;
-- Пользователи
-- айди
-- почта
-- номер телефона
-- пароль
-- дата регистрации
-- любимые магазины
-- заказы
create table if not exists users
(
id int primary key auto_increment,
email varchar(40) not null,
phone varchar(15) not null,
password_hash varchar(40) not null,
registration_date datetime not null default now()
);

-- Любимые магазины
-- пользователь
-- магазин
create table if not exists favourite_shops
(
user_id int,
shop_id int,
primary key (user_id, shop_id)
);

-- Любимые товары
-- пользователь
-- товар
create table if not exists favourite_products
(
user_id int,
product_id int,
primary key (user_id, product_id)
);

-- Магазины
-- айди
-- название
-- адрес
-- график работы
-- товары
create table if not exists shops
(
id int primary key auto_increment,
title varchar(40) not null,
address varchar(70) not null,
working_hours varchar(10) not null
);

-- Товары
-- айди
-- название
-- цена
-- скидка
-- производитель
create table if not exists products
(
id int primary key auto_increment,
title varchar(40) not null,
price int unsigned not null,
discount tinyint unsigned not null default 0
);

-- Производитель
-- айди
-- название
-- адрес
-- дата регистрации
-- товары
create table if not exists factories
(
id int primary key auto_increment,
title varchar(40) not null,
address varchar(70) not null,
registration_date datetime not null default now()
);

-- Корзина
-- пользователь
-- товар
create table if not exists buckets
(
user_id int,
product_id int,
primary key (user_id, product_id)
);

-- Заказы
-- айди
-- общая сумма
-- дата заказа
-- пользователь
create table if not exists orders
(
id int primary key auto_increment auto_increment,
total int unsigned not null,
order_datetime datetime not null default now()
);
