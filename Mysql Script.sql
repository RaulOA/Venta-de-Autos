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