Create table Genre (
ID 			integer 		primary key auto_increment,
name		varchar(10) 	not null
);

Create table MovieGenre (
ID 			integer 		primary key auto_increment,
movieId		int 	not null,
genreId		int 	not null
);

ALTER TABLE movieGenre
add FOREIGN KEY(genreID) REFERENCES genre(ID),
add FOREIGN KEY(movieID) REFERENCES movie(ID),
add CONSTRAINT mov_gen unique (movieID, genreID);

Insert into Genre (name) values
('western'),
('war'),
('thriller'),
('sport'),
('sci-fi'),
('musical'),
('mystery');


select * from genre
join movie;


Insert into MovieGenre (movieId, genreId) values
('1', '18'),
('2', '16'),
('3', '17'),
('4', '17'),
('10', '14'),
('9', '18'),
('8', '14'),
('7', '19'),
('6', '14'),
('5', '19');

insert into movie (title, year, rating, director) values
  ('Clueless', 1995, 'PG-13', 'Amy Heckerling'),
    ('Role Models', 2008, 'R', 'David Wain'),
    ( 'Weekend at Bernie''s', 1989, 'PG-13', 'Ted Kotcheff'),
    ('The Shawshank Redemption', 1994, 'R', 'Frank Darabont'),
    ('Brittany Runs a Marathon', 2019, 'R', 'Paul Downs Colaizzo'),
	('Bridesmaids', 2011, 'R', 'Paul Feig'),
    ('This Is 40', 2012, 'R', 'Judd Apatow'),
    ('Good Boys', 2019, 'R', 'Gene Stupnitsky'),
    ('The Breakfast Club', 1985, 'R', 'John Hughes'),
    ('The Sandlot', 1993, 'PG', 'David Mickey Evans');

select * from movieGenre;