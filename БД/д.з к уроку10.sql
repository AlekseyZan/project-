drop database if exists autosdb;
create database if not exists autosdb;
use autosdb;
create table autos (
  id_trim int,
  make varchar(25),
  model varchar(40),
  generation varchar(40),
  year_from int,
  year_to int,
  series varchar(40),
  trim varchar(40),
  cylinder_layout varchar(40),
  boost_type varchar(40),
  drive_wheels varchar(40),
  transmission varchar(40)
);
INSERT INTO autos VALUES
(1,'AC','ACE','1 generation',1993,2000,'Cabriolet','3.5 MT','V-type','Turbo','Rear wheel drive','Manual'),
(14,'AC','Cobra','1 generation',1990,2001,'Roadster','4.9 MT','V-type','','Rear wheel drive','Manual'),
(15,'AC','Cobra','1 generation',1990,2001,'Roadster','4.9 MT','V-type','Turbo','Rear wheel drive','Manual'),
(16,'AC','Cobra','1 generation',1990,2001,'Roadster','4.9 MT','V-type','','Rear wheel drive','Manual'),
(17,'AC','Cobra','1 generation',1990,2001,'Roadster','4.9 MT Lightweight','V-type','','Rear wheel drive','Manual'),
(23,'Acura','CL','1 generation',1996,2000,'Coupe','2.2 AT','Inline','','Front wheel drive','Automatic'),
(75,'Acura','RDX','2 generation',2012,2020,'Crossover','3.5 AT AWD','V-type','','All wheel drive (AWD)','Automatic'),
(83,'Acura','RL','KA9',1999,2004,'Sedan','3.5 AT','V-type','','Front wheel drive','Automatic'),
(84,'Acura','RL','KA9',1999,2004,'Sedan','3.5 AT','V-type','','Front wheel drive','Automatic'),
(90,'Acura','TSX','1 generation',2003,2008,'Sedan','3.5 AT','Inline','','Front wheel drive','Automatic'),
(116,'Acura','TSX','1 generation',2003,2008,'Sedan','3.5 MT','Inline','','Front wheel drive','Manual'),
(117,'Acura','TSX','2 generation',2008,2010,'Sedan 4-doors','2.4 AT','Inline','','Front wheel drive','Automatic'),
(118,'Acura','ZDX','1 generation',2009,2010,'Crossover','3.7 AT','V-type','','All wheel drive (AWD)','Automatic'),
(603,'Alfa Romeo','Stelvio','949',2017,2020,'Crossover','2.0 AT Q4','Inline','Twin-scroll','Four wheel drive (4WD)','Automatic'),
(604,'Alfa Romeo','Stelvio','949',2017,2020,'Crossover','2.2 D AT','Inline','Turbo','Front wheel drive','Automatic'),
(605,'Alfa Romeo','Stelvio','949',2017,2020,'Crossover','2.2 D AT','Inline','Turbo','Front wheel drive','Automatic'),
(606,'Alfa Romeo','Stelvio','949',2017,2020,'Crossover','2.2 D AT Q4','Inline','Turbo','Four wheel drive (4WD)','Automatic'),
(607,'Alfa Romeo','Stelvio','949',2017,2020,'Crossover','2.2 D AT Q4','Inline','Turbo','Four wheel drive (4WD)','Automatic'),
(608,'Alfa Romeo','Stelvio','949',2017,2020,'Crossover','2.9 AT Q4','V-type','Bi Turbo','Four wheel drive (4WD)','Automatic'),
(609,'Alpina','B10','E39',1998,2004,'Sedan','3.3 MT','Inline','','Rear wheel drive','Manual'),
(610,'Alpina','B10','E39',1998,2004,'Sedan','4.6 AT' 'Switchtronic','V-type','','Rear wheel drive','Automatic'),
(611,'Alpina','B10','E39',1998,2004,'Sedan','4.8 AT','V-type','','Rear wheel drive','Automatic'),
(952,'Aston Martin','Virage','2 generation',2011,2012,'Cabriolet Volante','5.9 AT','V-type','','Rear wheel drive','Automatic'),
(953,'Aston Martin','Virage','2 generation',2011,2012,'Coupe','5.9 AT','V-type','','Rear wheel drive','Automatic'),
(954,'Audi','40','4A/C4',1990,1994,'Avant wagon','2.0 AT','Inline','','Front wheel drive','Automatic'),
(955,'Audi','40','4A/C4',1990,1994,'Avant wagon','2.0 MT','Inline','','Front wheel drive','Manual'),
(956,'Audi','40','4A/C4',1990,1994,'Avant wagon','2.0 MT','Inline','','Front wheel drive','Manual'),
(957,'Audi','40','4A/C4',1990,1994,'Avant wagon','2.3 AT','Inline','','Front wheel drive','Automatic'),
(958,'Audi','40','4A/C4',1990,1994,'Avant wagon','2.3 MT','Inline','','Front wheel drive','Manual'),
(959,'Audi','40','4A/C4',1990,1994,'Avant wagon','2.4 D MT','Inline','','Front wheel drive','Manual'),
(960,'Audi','40','4A/C4',1990,1994,'Avant wagon','2.5 TDI MT','Inline','Turbo','Front wheel drive','Manual'),
(961,'Audi','40','4A/C4',1990,1994,'Avant wagon','2.6 AT','V-type','','Front wheel drive','Automatic'),
(962,'Audi','40','4A/C4',1990,1994,'Avant wagon','2.6 MT','V-type','','Front wheel drive','Manual'),
(963,'Audi','40','4A/C4',1990,1994,'Avant wagon','2.6 quattro AT','V-type','','All wheel drive (AWD)','Automatic'),
(964,'Audi','40','4A/C4',1990,1994,'Avant wagon','2.6 quattro MT','V-type','','All wheel drive (AWD)','Manual'),
(965,'Audi','40','4A/C4',1990,1994,'Avant wagon','2.8 AT','V-type','','Front wheel drive','Automatic'),
(62943,'Toyota','Porte','2 generation',2012,2020,'Minivan','1.5 CVT','Inline','','Front wheel drive','Continuously variable transmission (CVT)'),
(62944,'Toyota','Porte','2 generation',2012,2020,'Minivan','1.5 CVT 4WD','Inline','','All wheel drive (AWD)','Continuously variable transmission (CVT)'),
(62990,'Toyota','Porte','2 generation',2012,2020,'Spade minivan 3-doors','1.3 CVT','Inline','','Front wheel drive','Continuously variable transmission (CVT)'),
(68495,'Volkswagen','Polo','2 generation',1981,1990,'Hatchback','1.0 MT','Inline','','Front wheel drive','Manual'),
(68496,'Volkswagen','Polo','2 generation',1981,1990,'Hatchback','1.1 MT','Inline','','Front wheel drive','Manual'),
(68497,'Volkswagen','Polo','2 generation',1981,1990,'Hatchback','1.3 D MT','Inline','','Front wheel drive','Manual'),
(68498,'Volkswagen','Polo','2 generation',1981,1990,'Hatchback','1.3 MT','Inline','','Front wheel drive','Manual'),
(70295,'Volvo','V40','1 generation',1996,2000,'wagon','1.6 MT','Inline','','Front wheel drive','Manual'),
(70296,'Volvo','V40','1 generation',1996,2000,'wagon','1.8 AT','Inline','','Front wheel drive','Automatic'),
(70297,'Volvo','V40','1 generation',1996,2000,'wagon','1.8 AT','Inline','','Front wheel drive','Automatic'),
(70298,'Volvo','V40','1 generation',1996,2000,'wagon','1.8 MT','Inline','','Front wheel drive','Manual'),
(70299,'Volvo','V40','1 generation',1996,2000,'wagon','1.8 MT','Inline','','Front wheel drive','Manual'),
(70400,'Volvo','V40','1 generation',1996,2000,'wagon','1.8i MT','Inline','','Front wheel drive','Manual'),
(70985,'ZX','Landmark','1 generation',2007,2009,'SUV 5 doors','2.4 MT 4WD','','','',''),
(70986,'ZX','Landmark','1 generation',2007,2009,'SUV 5 doors','3.2 AT 4WD','','','',''),
(70987,'ZX','Landmark','1 generation',2007,2009,'SUV 5 doors','3.2 MT 4WD','','','','');
select * from autos;
select make, model from autos;
ALTER TABLE autos RENAME COLUMN make TO марка;
select * from autos;
ALTER TABLE autos RENAME COLUMN model TO модель;
ALTER TABLE autos RENAME COLUMN cylinder_layout TO положение_цилиндров;
ALTER TABLE autos RENAME COLUMN boost_type TO наличие_турбины;
select * from autos;
ALTER TABLE autos RENAME COLUMN марка TO make;
ALTER TABLE autos RENAME COLUMN модель TO model;
ALTER TABLE autos RENAME COLUMN положение_цилиндров TO cylinder_layout;
ALTER TABLE autos RENAME COLUMN наличие_турбины TO boost_type;
select * from autos;
select * from autos where cylinder_layout = 'V-type';
select * from autos where year_from >= 1990;
select * from autos where year_from >= 2001 and year_from <= 2009;
select * from autos where year_from between 2001 and 2009;
select * from autos where series != 'Crossover' and series != 'Sedan';
select * from autos where series not in ('Crossover', 'Sedan');
select make, model, series, drive_wheels, transmission from autos where year_from >= 2014 and boost_type != 'Turbo';
select * from autos where model like '%t%';
select make, model, year_from, series, drive_wheels from autos where drive_wheels = 'All wheel drive (AWD)' order by make limit 20;