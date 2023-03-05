DROP DATABASE IF EXISTS testdb;
CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;
CREATE TABLE IF NOT EXISTS passport(passport_id INT PRIMARY KEY AUTO_INCREMENT,
seria INT,
nomer INT,
vidan VARCHAR(40),
data_vid VARCHAR(40),
cod_podr INT)
;
INSERT INTO passport(seria,nomer,vidan,data_vid,cod_podr) VALUES
('6002','536907','РОСТОВСКИЙ ОВД','12.12.1989','518'),
('6002','123654','МОСКОВСКИЙ ОВД','01.10.1960','523'),
('6112','980998','ВОЛОГОДСКИЙ ОВД','27.02.1990','123'),
('9999','777888','ЩЕЛКОВСКИЙ ОВД','31.12.1900','235')
;
CREATE TABLE IF NOT EXISTS grazdanin(id INT PRIMARY KEY AUTO_INCREMENT,FOREIGN KEY(user_id ) REFERENCES passport(passport_id),
user_id INT,
lastname VARCHAR(40),
username VARCHAR(40),
middlename VARCHAR(40),
data_rozd INT)
;
INSERT INTO grazdanin(user_id,lastname,username,middlename,data_rozd) VALUES
('1','Иванов','Иван','Иванович','1980'),
('2','Петров','Петр','Петрович','1948'),
('3','Сидоров','Евграф','Кузьмич','1990'),
('4','Кукушкина','Евдокия','Патрикеевна','1880')
;

CREATE TABLE IF NOT EXISTS home(id INT PRIMARY KEY AUTO_INCREMENT,
FOREIGN KEY(vladelec_id) REFERENCES grazdanin(user_id),
vladelec_id INT,
address VARCHAR(40),
vladelec VARCHAR(40)
);
INSERT INTO home(vladelec_id,address,vladelec) VALUES
('1','ВОРОШИЛОВСКИЙ пр-т','Иванов'),
('2','СОКОЛЬНИЧЕСКАЯ ул.','Петров'),
('3','НЕВСКИЙ пр-т','Сидоров'),
('4','БУДДЕННОГО пр-т','Кукушкина')
;

CREATE TABLE IF NOT EXISTS pitomec(id INT PRIMARY KEY AUTO_INCREMENT,FOREIGN KEY(pitomec_id) REFERENCES home(vladelec_id),
pitomec_id INT,
nikname VARCHAR(40) NOT NULL,
breed VARCHAR(40) NOT NULL,
type VARCHAR(40) NOT NULL,
owner VARCHAR(40) NOT NULL
);
INSERT INTO pitomec(pitomec_id,nikname,breed,type,owner) VALUES
('1','Мурзик','британский','кот','Иванов'),
('2','Барсик','персидский','кот','Петров'),
('3','Шарик','кокер-спаниель','собака','Сидоров'),
('4','Тузик','овчарка','собака','Кукушкина')
;
SELECT *FROM passport,grazdanin,home,pitomec where passport_id=1;
