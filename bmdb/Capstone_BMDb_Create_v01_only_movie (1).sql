-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID 			integer 		primary key auto_increment,
Title 		varchar(255) 	not null unique,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null
-- CONSTRAINT utitle unique (Title)
);

-- Add some movies
 insert into Movie VALUES
 	(1, 'Star Wars', 1977, 'PG', 'George Lucas'),
 	(2, 'Sixteen Candles', 1984, 'PG', 'John Hughes'),
  	(3, 'Fifth Element', 1997, 'PG-13', 'luc Benson'),
 	(4, 'Better Off Dead', 1985, 'PG', 'Savage Steve Holland'),
	(5, 'Nightmare Before Christmas', 1993, 'PG', 'Tim Burton'),
 	(6, 'Hot Rod', 2007, 'PG-13', 'Akiva Schaffer'),
 	(7, 'Inside Out', 2015, 'PG', 'Pete Docter'),
 	(8, 'Pineapple Express', 2008, 'R', 'David Gordon Green'),
	(9, 'Django Unchained', 2012, 'R', 'Quentin Tarantino'),
	(10, 'Pulp Fiction', 1994, 'R', 'Quentin Tarantino');

