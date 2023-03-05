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
    constraint orders_users_fk
    foreign key (user_id) references users(id)
    on delete cascade on update cascade
);
