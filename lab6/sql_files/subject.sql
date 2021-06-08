select balleries.email,teachers.subject_id, subject.name
from subject, balleries
inner join teachers on balleries.teacher_id = teachers.id where subject_id = 1

select count(*)
from balleries
inner join teachers on balleries.teacher_id = teachers.id where subject_id = 4
--3--

select *
from balleries
inner join teachers on balleries.teacher_id = teachers.id where subject_id between 3 and 4

--4--

select teacher_id,count(*) as Amount_of_students from balleries group by balleries.teacher_id order by Amount_of_students

--5--

select subject.name, count(*) as amount_of_clients
from subject, balleries
inner join teachers on balleries.teacher_id = teachers.id group by subject.id order by amount_of_balleries

--6--

select subject.name,teachers.first_name,teachers.last_name
from subject,teachers
where subject_id = 3 and subject.name = 'java'

--7--

update teachers 
set first_name = 'Natasha' where last_name = 'Doyle'

--8--

update balleries
set teacher_id = 2 where email='"hferrant1@topsy.com"'

--9--

select count(*)
from balleries
inner join teachers on balleries.teacher_id = teachers.id where subject_id = 3 or subject_id = 1

--10--

select  subject.name, clients.email, teachers.id
from subject, balleries
inner join teachers on balleries.teacher_id = teachers.id order by subject.name