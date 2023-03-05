DROP DATABASE IF EXISTS finances;
CREATE DATABASE IF NOT EXISTS finances;
use finances;
CREATE TABLE IF NOT EXISTS phones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    factory VARCHAR(40),
    title VARCHAR(40),
    price INT
);
INSERT INTO phones(factory, title, price) VALUES
('Apple', 'iPhone 10', 49999),
('Apple', 'iPhone 10 Pro', 59400),
('Apple', 'iPhone 10 Pro Max', 78999),
('Apple', 'iPhone 11', 62400),
('Apple', 'iPhone 11 Pro', 73499),
('Apple', 'iPhone 11 Pro Max', 88940),
('Samsung', 'Galaxy Note 8', 67320),
('Samsung', 'Galaxy Note 8 Pro', 75800),
('Samsung', 'Galaxy Note 9', 71460),
('Samsung', 'Galaxy Note 9 Pro', 79820),
('OnePlus', '7', 90670),
('OnePlus', '7T', 49000),
('OnePlus', '8', 55540),
('OnePlus', '9T', 66240),
('Huawei', 'P Smart 2019', 17890),
('Honor', '20S', 21440),
('Razor', 'Phone', 68900);

select count(*) from phones;

select avg(price) as 'middle price' from phones;

select max(price), min(price), sum(price) from phones;

select avg(price), sum(price) / count(price) from phones;

select count(*) from phones
group by factory;

select count(*), factory from phones
group by factory;

select count(*), CONCAT(factory, ' ', title) from phones
group by factory;

select count(*), title from phones
group by factory;

select count(*), ROUND(avg(price), 2) from phones
group by factory;

select factory, count(*) as 'count', ROUND(avg(price), 2) as 'avg price' from phones
group by factory;

select factory, count(*) as 'count', ROUND(avg(price), 2) as 'avg price' from phones
group by factory
order by factory;

select factory, count(*) as 'count', ROUND(avg(price), 2) as 'avg price' from phones
where price > 64000
group by factory;

select factory, count(*) as 'count', ROUND(avg(price), 2) as 'avg price' from phones
group by factory
having ROUND(avg(price), 2) > 64000;
