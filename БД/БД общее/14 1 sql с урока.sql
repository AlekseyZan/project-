DROP DATABASE IF EXISTS vk;
CREATE DATABASE IF NOT EXISTS vk;
use vk;
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(40),
    password_hash VARCHAR(400),
    last_seen DATETIME
);
CREATE TABLE IF NOT EXISTS chats (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(40),
    description VARCHAR(200),
    owner_id INT,
    FOREIGN KEY (owner_id) REFERENCES users(id)
);
CREATE TABLE IF NOT EXISTS users_to_chats (
    user_id INT,
    chat_id INT,
    PRIMARY KEY (user_id, chat_id),
    enter_datetime DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (chat_id) REFERENCES chats(id)
);
INSERT INTO users(username) VALUES
('user1'),
('user2'),
('user3'),
('user4'),
('user5'),
('user6'),
('user7'),
('user8');
INSERT INTO chats(title, description, owner_id) VALUES
('chat 1', 'for car lovers', 1),
('chat 2', 'anime is the best kino', 2),
('chat 3', '', 4);
INSERT INTO users_to_chats(user_id, chat_id, enter_datetime) VALUES
(1, 1, '2022-01-15 14:56:07'),
(2, 1, '2022-01-15 14:56:07'),
(3, 1, '2022-01-15 14:56:07'),
(4, 1, '2022-01-17 09:34:27'),
(1, 2, '2022-01-16 14:56:07'),
(2, 2, '2022-01-16 14:56:07'),
(4, 2, '2022-01-17 14:56:07'),
(5, 2, '2022-01-18 14:56:07'),
(7, 2, '2022-01-23 13:00:04'),
(8, 2, '2022-01-40 13:09:13'),
(3, 3, '2022-01-25 00:06:54'),
(4, 3, '2022-01-25 00:06:54');

select * from users
join users_to_chats;

select * from users as u
join users_to_chats as utc on u.id = utc.user_id;

select u.username, utc.chat_id as chat from users as u
join users_to_chats as utc on u.id = utc.user_id;

select u.username, utc.chat_id as chat from users as u
join users_to_chats as utc on u.id = utc.user_id
where u.id > 5;

select u.username, utc.chat_id as chat from users as u
lt join users_to_chats as utc on u.id = utc.user_id
where u.id > 5;

select u.username, utc.chat_id as chat from users as u
right join users_to_chats as utc on u.id = utc.user_id
where u.id > 5;

select u.username, c.title as chat from users as u
join chats as c on u.id = c.owner_id
where u.id < 5;

select u.username, c.title as chat from users as u
lt join chats as c on u.id = c.owner_id
where u.id < 5;

select u.username, c.title as chat from users as u
right join chats as c on u.id = c.owner_id
where u.id < 5;

INSERT INTO chats(title, description) VALUES
('chat 4(1)', 'undergroudest club');
select u.username, c.title as chat from users as u
right join chats as c on u.id = c.owner_id;
