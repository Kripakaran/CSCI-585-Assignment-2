-- mysql version 8.0.19

create table instructors(
 faculty_name varchar(20) not null, 
 course_name varchar(20) not null, 
 primary key (faculty_name, course_name));

insert into instructors values('Aleph','Scratch');
insert into instructors values('Aleph','Java');
insert into instructors values('Aleph','Processing');
insert into instructors values('Bit','Python');
insert into instructors values('Bit','JavaScript');
insert into instructors values('Bit','Java');
insert into instructors values('CRC','Python');
insert into instructors values('CRC','JavaScript');
insert into instructors values('Dat','Scratch');
insert into instructors values('Dat','Python');
insert into instructors values('Dat','JavaScript');
insert into instructors values('Emscr','Scratch');
insert into instructors values('Emscr','Processing');
insert into instructors values('Emscr','JavaScript');
insert into instructors values('Emscr','Python');

create table courses(
 course_name varchar(20), 
 primary key(course_name));

insert into courses values('Python');

insert into courses values('JavaScript');

insert into courses values('Scratch');

select distinct i.faculty_name from instructors i where (select count(1) from ( select course_name from instructors where faculty_name = i.faculty_name and course_name in (Select course_name from courses))x) = (select count(1) from courses) order by i.faculty_name;

/* Here, we use the Intersection operator. The subquery runs for every faculty in the instructors table for whom the courses match with course_name in the 'courses' table.
 Now we compare count of courses in the 2 tables and return names that satisfy the condition where count is the same. */