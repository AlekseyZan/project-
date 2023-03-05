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
('user 1'),
('user 2'),
('user 3');
INSERT INTO chats(title, description, owner_id) VALUES
('chat 1', 'for car lovers', 1),
('chat 2', 'anime is the best kino', 2),
('chat 3', '', 3);
INSERT INTO users_to_chats VALUES
(1, 1, '2022-01-01 00:00:15'),
(1, 2, '2022-01-01 00:03:07'),
(1, 3, '2022-01-05 10:03:47'),
(2, 1, '2022-01-01 00:00:15'),
(2, 3, '2022-01-03 17:56:37'),
(3, 1, '2022-01-06 18:19:43'),
(3, 2, '2022-01-05 12:19:57');