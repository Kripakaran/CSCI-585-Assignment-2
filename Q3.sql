create table projects(
 pid varchar(15),
 step integer,
 status char(1) NOT NULL,
 primary key(pid,step));

insert into projects values('P100', 0, 'C');
insert into projects values('P100', 1, 'W');
insert into projects values('P100', 2, 'W');
insert into projects values('P201', 0, 'C');
insert into projects values('P201', 1, 'C');
insert into projects values('P333', 0, 'W');
insert into projects values('P333', 1, 'W');
insert into projects values('P333', 2, 'W');
insert into projects values('P333', 3, 'W');

select pid from projects where step = 0 and status = 'C' and pid in (select pid from projects where status = 'W' and step != 0);