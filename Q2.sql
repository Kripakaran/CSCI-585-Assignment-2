-- mysql version 8.0.19

create table Enroll(
 SID integer(5), 
 ClassName varchar(20), 
 Grade varchar(2),
 primary key(SID, ClassName));

insert into Enroll values(123, 'Processing' ,'A');

insert into Enroll values(123, 'Python' ,'B');

insert into Enroll values(123, 'Scratch' ,'B');

insert into Enroll values(662, 'Java' ,'B');

insert into Enroll values(662, 'Python' ,'A');

insert into Enroll values(662, 'JavaScript' ,'A');

insert into Enroll values(662, 'Scratch' ,'B');

insert into Enroll values(345, 'Scratch' ,'A');

insert into Enroll values(345, 'JavaScript' ,'B');

insert into Enroll values(345, 'Python' ,'A');

insert into Enroll values(555, 'Python' ,'B');

insert into Enroll values(555, 'JavaScript' ,'B');

select ClassName, count(ClassName) as Total from Enroll group by Classname order by Total desc;
