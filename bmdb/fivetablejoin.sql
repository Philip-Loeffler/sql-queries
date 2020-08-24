select * from Genre;


select id from genre 
where name = 'comedy'; 

-- 3 table join to list comedy movies 
select * 
from movie m
join moviegenre mg 
	on mg.movieId = m.id
join genre g 
on g.id = mg.genreid
where g.id = (select id from genre 
where name = 'comedy');

-- 5 table join 
-- show all movies, actors and genres 
select m.title, m.year, a.firstname, a.lastname, c.role, g.name
from movie m 
join credit c 
on c.movieid = m.id
join actor a 
on a.id = c.actorid
join moviegenre mg 
on mg.movieid = m.id
join genre g
on g.id = mg.genreid;
