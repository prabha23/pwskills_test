use mavenmovies;

SELECT TABLE_NAME, COLUMN_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE CONSTRAINT_NAME = 'PRIMARY' AND TABLE_SCHEMA = 'mavenmovies';

SELECT CONSTRAINT_NAME,TABLE_NAME,COLUMN_NAME,REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE CONSTRAINT_NAME != 'PRIMARY' AND REFERENCED_TABLE_NAME IS NOT NULL AND TABLE_SCHEMA = 'mavenmovies';

select * from actor;

select * from customer;

select distinct country from country;

select * from customer where active=1;

select rental_id from rental where customer_id=1;

select * from film where rental_duration>5;

select count(*) from film where replacement_cost>15 and replacement_cost<20;

select count(distinct first_name) from actor;

select * from customer limit 10;

select * from customer where first_name like 'b%' limit 3;

select title from film where rating='G' limit 5;

select * from customer where first_name like 'a%';

select * from customer where first_name like '%a';

select city from city where city like 'a%a' limit 4;

select * from customer where first_name like  "%NI%" ;

select * from customer where first_name like  "_r%" ;

select * from customer where first_name like  "a%" and length(first_name)>=5 ;

select * from customer where first_name like  "a%o" ;

select * from film where rating in ('PG','PG-13');

select * from film where length between 50 and 100;

select * from actor limit 50;

select distinct film_id from inventory;
