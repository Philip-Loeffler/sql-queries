select * from student order by lastname;

select * from student order by state;

-- how many students from each state
select count(*), state 
from student
group by state;

-- oldest student, (usesubselect)
-- select * from student
-- where birthday = (
-- select min(birthday from student);

select * from student order by birthday;

select subject, count(*)
from course 
group by subject; 

select * from student 
join enrolled 
where student.id = enrolled.id;

-- grades by quarter
select grade, quarter
from entrolled e
join course c
on courseid = c.id
order by quarter;

select lastname, firstname, subject, c.name, grade, quarter
from entrolled e
join course c
on courseid = c.id
join student s 
on s.id = e.studentID
order by lastname;

select * from enrolled 
where Grades order by course.id;

-- student enrollment report 
-- list all students - first name, last name
-- course name, if entrolled

select lastname, firstname, name
from student s 
join enrolled e 
on s.id = e.studentid
-- now that we have this info, we can join this information to a new table
join course
on e.courseID = c.id;

