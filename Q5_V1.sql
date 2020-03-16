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


select instructors.faculty_name from instructors right join courses on instructors.course_name=courses.course_name group by instructors.faculty_name having count(instructors.faculty_name)=(select count(*) from courses);

/* This is an example of Division operation. We perform a right outer join between the tables Instructors and Courses to get the set of all courses with 
and without instructors. From this set, we group those instructors who teach the same number of courses as there are in the Courses table using the Count aggregate function. */

