DROP DATABASE IF EXISTS postadb;
CREATE DATABASE IF NOT EXISTS postadb;
USE postadb;
CREATE TABLE IF NOT EXISTS postamp(id INT PRIMARY KEY AUTO_INCREMENT,address VARCHAR(200),
hours VARCHAR(40));

CREATE TABLE IF NOT EXISTS worker(worker_id INT PRIMARY KEY AUTO_INCREMENT,FOREIGN KEY(worker_id) REFERENCES postamp(id),
passport VARCHAR(200),
residence VARCHAR(400),
number_tk INT);

CREATE TABLE IF NOT EXISTS package(package_id INT PRIMARY KEY AUTO_INCREMENT,FOREIGN KEY(package_id) REFERENCES postamp(id),
weight INT,
category VARCHAR(40),
trek_number INT);
INSERT INTO postamp(address,hours) VALUES
('Москва,Кропоткинская ул,22','Пн-Пт 8:00-19:00,Сб,Вс - выходной'),
('Ростов-на-Дону,Ворошиловский пр-т,15','Пн-Сб 9:00-18:00,Вс-выходной'),
('Казань, Комсомольская ул.,37','Пн-Пт 8:00-17:00,Сб 8:00-15:00,Вс-выходной')
;
INSERT INTO worker(passport,residence,number_tk) VALUES
('6002 390678','Щёлково,Красноармейская ул.,22 кв 19','123789'),
('6002 254876','Ростов-на-Дону,Будёновский пр-т.,28 кв.3','123987'),
('6005 544098','Казань,Советская ул.,12 кв.21','390876')
;
INSERT INTO package(weight,category,trek_number) VALUES
('40','письмо','12390'),
('140','бандероль','90678'),
('1400','посылка','67890')
;
select *from postamp,worker,package;
