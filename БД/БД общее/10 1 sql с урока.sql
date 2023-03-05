use autosdb;
select make, model from autos
where transmission = 'Automatic'
or transmission = 'Continuously variable transmission (CVT)';

select make, model from autos
where transmission in 
('Automatic', 'Continuously variable transmission (CVT)');

select
 make as factory,
 model,
 boost_type as turbo, 
 drive_wheels as 'Ведущие колёса'
from autos
where transmission != 'Manual'
and boost_type = 'Turbo'
and series = 'Crossover';

>, <, =, != (<>), >=, <=
in, between

where drive in ('4wd', 'awd')
where year_from between (2000, 2020)
where drive in ('4wd', 'awd') and
 year_from between (2000, 2020);

where make = 'Toyota' or make = 'Audi';


select transmission from autos;








select * from autos
where drive_wheels in
('Four wheel drive (4WD)',
 'All wheel drive (AWD)');

select * from autos
where year_from between 1990 AND 2003;

select * from autos
where drive_wheels in
  ('Four wheel drive (4WD)', 'All wheel drive (AWD)')
  and year_from between 2000 AND 2020;

select * from autos
where make = 'Toyota' or make = 'Audi';
