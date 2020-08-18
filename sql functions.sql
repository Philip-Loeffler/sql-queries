Select * from customers;


-- count function

select count(*) from customers;

-- count with an alias
-- rename the count to row_count. give the table an alias
select count(*) as row_count from customers;

-- a shorthand version of this, just removing an
select count(*) row_count from customers;

-- sum function
select sum(creditlimit) from customers; 

-- avg function
select avg(creditlimit) from customers;

-- avg format and concat function
select format(avg(creditlimit),2) from customers;

-- avg, format, and concat
select concat('$',format(avg(creditlimit),2)) as avg_credit_limit from customers;


-- group by: avg, format, and concat by country
select country, concat('$',format(avg(creditlimit),2)) 
as avg_credit_limit 
from customers 
group by country
order by avg(creditLimit) desc;


-- group by having: avg, format, and concat by country function where having avg credit limit is greater than 0
-- as is just renaming customers here 
select country, concat('$',format(avg(creditlimit),2)) 
as avg_credit_limit 
from customers 
group by country
having avg(creditlimit) > 0
order by avg(creditLimit) desc;

-- max credit limit 
select mac(creditlimit) 
from customers;

-- min credit limit 
select min(creditlimit) from customers; 
