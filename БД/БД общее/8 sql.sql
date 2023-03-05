CREATE TABLE users;

CREATE TABLE users (id INT);

CREATE TABLE users (
  id INT,
  username VARCHAR(40),
  firstname VARCHAR(40),
  lastname VARCHAR(40),
  email VARCHAR(40),
  age INT
);

DROP TABLE users;
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
  id INT,
  username VARCHAR(40),
  firstname VARCHAR(40),
  lastname VARCHAR(40),
  email VARCHAR(40),
  age INT
);

CREATE TABLE users (
  id INT,
  username VARCHAR(40),
  firstname VARCHAR(40),
  lastname VARCHAR(40),
  email VARCHAR(40),
  age INT,
  INDEX (username, email)
);
