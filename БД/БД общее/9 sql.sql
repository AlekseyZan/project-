SELECT * FROM users;

INSERT INTO users VALUES (1, "Танк 34", "Иван", "Иванов", "test@mail.ru", "34");

INSERT INTO users VALUES (1, "Танк 34", "Иван", "Иванов", "test@mail.ru", "34"), (2, "Танк 34", "Иван", "Иванов", "test@mail.ru", "34");

UPDATE users SET lastname = "без фамилии";
UPDATE users SET lastname = "с фамилией" WHERE lastname = "без фамилии";

CREATE TABLE IF NOT EXISTS users (
  id INT DEFAULT 0,
  username VARCHAR(40),
  firstname VARCHAR(40),
  lastname VARCHAR(40),
  email VARCHAR(40),
  age INT,
  INDEX (username, email)
);

CREATE TABLE IF NOT EXISTS users ( id INT DEFAULT 0, username VARCHAR(40), firstname VARCHAR(40), lastname VARCHAR(40), email VARCHAR(40), age INT, INDEX (username, email) );
