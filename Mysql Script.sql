create database crcars

use crcars

create table clients
(
	clientname varchar(50),
	clientlastname varchar(50),
	clientphone int,
	clientemail varchar(50),
	clientpassword varchar(50)
)

select * from clients

create table cars
(
	caremail varchar(50),
	carmake varchar(50),
	carmodel varchar(50),
	caryear int,
    carprice int,
    carbody varchar(50),
    carimg varchar(50)
)
select * from cars

ALTER TABLE cars ADD carstatus VARCHAR(60);
UPDATE cars SET carstatus = 'Sold Out' WHERE carimg = 'img/49294.jpg';
UPDATE cars SET carstatus = 'For Sale' WHERE carimg = 'img/655904.jpg';
SELECT * FROM customer WHERE last_name LIKE 'Pete%';
SELECT * FROM customer WHERE last_name IN ('Smith', 'Johnson', 'Fredrich');
DELETE FROM cars WHERE carmake='JAC';
INSERT INTO cars (c1,c2) VALUES (v1,v2);