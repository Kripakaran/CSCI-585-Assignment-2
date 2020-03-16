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

SELECT i1.faculty_name FROM instructors i1 WHERE i1.course_name = "JavaScript" AND EXISTS (SELECT i1.faculty_name FROM instructors i2 WHERE i2.course_name = "Python" AND i1.faculty_name = i2.faculty_name AND EXISTS (SELECT i2.faculty_name FROM instructors i3 WHERE i3.course_name = "Scratch" AND i2.faculty_name = i3.faculty_name));

/* Here, we use correlated subqueries to solve the problem. We check for faculties who teach Javascript and check if they also teach python in a subquery and we 
further check if the same person also teaches Scratch to finally return all instructors who teach all the 3 courses. */