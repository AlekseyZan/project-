-- AVG: вычисляет среднее значение
-- SUM: вычисляет сумму значений
-- MIN: вычисляет наименьшее значение
-- MAX: вычисляет наибольшее значение
-- COUNT: вычисляет количество строк в запросе
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

select count(*) from users;
select count(*) from chats;
select count(*) from users_to_chats;

select count(*) from users as u
join users_to_chats as utc on u.id = 1 AND utc.user_id = u.id;

DROP DATABASE IF EXISTS finances;
CREATE DATABASE IF NOT EXISTS finances;
use finances;
CREATE TABLE IF NOT EXISTS phones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(40),
    price INT
);
INSERT INTO phones(title, price) VALUES
('Apple iPhone 10', 49999),
('Apple iPhone 10 Pro', 59400),
('Apple iPhone 10 Pro Max', 78999),
('Apple iPhone 11', 62400),
('Apple iPhone 11 Pro', 73499),
('Apple iPhone 11 Pro Max', 88940),
('Samsung Galaxy Note 8', 67320),
('Samsung Galaxy Note 8 Pro', 75800),
('Samsung Galaxy Note 9', 71460),
('Samsung Galaxy Note 9 Pro', 79820),
('OnePlus 7', 90670),
('OnePlus 7T', 49000),
('OnePlus 8', 55540),
('OnePlus 9T', 66240),
('Huawei P Smart 2019', 17890),
('Honor 20S', 21440),
('Razor Phone', 68900);

select count(*) from phones;

select avg(price) as 'middle price' from phones;

select max(price), min(price), sum(price) from phones;

select avg(price), sum(price) / count(price) from phones;
