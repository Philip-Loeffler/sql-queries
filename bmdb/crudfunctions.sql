-- select (read)
-- insert (create)
-- update (update)
-- delete (delete)  

-- insert function 
insert into movie values 
(11, 'Dummy Movie', 2020, 'G', 'Test Director');


-- update function
	update movie 
		set title = 'dummy movie 2' 
        where id = 11;

-- delete function

delete from movie 
	where id = 11;