drop database if exists my_service;
create database if not exists my_service;
use my_service;
create table if not exists users
(
id int primary key auto_increment,
email varchar(40) not null,
phone varchar(15) not null,
password_hash varchar(40) not null,
registration_date datetime not null default now(),
first_name varchar(40) not null,
last_name varchar(40) null
);

create table if not exists favourite_shops
(
user_id int,
shop_id int,
primary key (user_id, shop_id)
);

create table if not exists favourite_products
(
user_id int,
product_id int,
primary key (user_id, product_id)
);

create table if not exists shops
(
id int primary key auto_increment,
title varchar(40) not null,
address varchar(70) not null,
working_hours varchar(10) not null
);

create table if not exists products
(
id int primary key auto_increment,
title varchar(40) not null,
price int unsigned not null,
discount tinyint unsigned not null default 0,
factory_id int
);

create table if not exists factories
(
id int primary key auto_increment,
title varchar(40) not null,
address varchar(70) not null,
registration_date datetime not null default now()
);

create table if not exists buckets
(
user_id int,
product_id int,
primary key (user_id, product_id)
);

create table if not exists orders
(
id int primary key auto_increment auto_increment,
total_without_discount int unsigned not null,
discount tinyint unsigned not null,
order_datetime datetime not null default now(),
user_id int
);

create table if not exists shops_products
(
shop_id int,
product_id int,
primary key(shop_id, product_id)
);

create table if not exists orders_products
(
order_id int,
product_id int,
primary key(order_id, product_id)
);
