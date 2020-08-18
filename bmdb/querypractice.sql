-- select all movies rated pg, ordered by title (alpha)
SELECT * FROM movie WHERE rating = 'pg' order by title;


-- adding the desc after title will order it be descending. so regular is alphabetical, this way is reversed 
SELECT * FROM movie WHERE rating = 'pg' order by title desc;

-- select statement using the 'in' keyword
SELECT * from movie WHERE year in (1977, 1997);

-- select statement using range <>
SELECT * from movie WHERE year > 1980 and year < 1999;

-- select all moveis that start with the leter s 
-- percent sign is the wild card 
-- will return the movies that start with the letter s 
SELECT * from movie WHERE title like 's%';
