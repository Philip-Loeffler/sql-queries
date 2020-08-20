-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID 			integer 		primary key auto_increment,
Title 		varchar(255) 	not null,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null,
CONSTRAINT unq_movie unique (Title, Year)
);

-- create Actor table
Create table Actor (
ID          integer         primary key auto_increment,
FirstName   varchar(255)    not null,
LastName    varchar(255)    not null,
Gender      varchar(1)      not null,
BirthDate   date            not null,
CONSTRAINT unq_actor unique (FirstName, LastName, BirthDate)
);


-- create credit table
Create table Credit (
ID 			integer 		primary key auto_increment,
ActorID 	integer 		not null,
MovieID 	integer			not null,
Role 		varchar(255) 	not null,
Foreign Key (ActorID) references Actor(ID),
Foreign Key (MovieID) references Movie(ID),
CONSTRAINT act_mov unique (ActorID, MovieID)
);


 insert into Credit VALUES
 	(1, 1, 1, 'Luke Skywalker'),
    (2, 2, 1, 'Han Solo'),
    (3, 3, 2, 'Samantha'),
    (4, 4, 2, 'Farmer Ted');



-- add some actors 
-- date fields are yyy-mm-dd
 insert into Actor VALUES
 	(1, 'Mark ', 'Hamill', 'M', '1951-09-25'),
	(2, 'Harrison ', 'Ford', 'M', '1942-07-13'),
	(3, 'Molly ', 'Ringwald', 'F', '1968-02-18'),
	(4, 'Anthony Michael ', 'Hall', 'M', '1968-04-14');


    
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

