-- mysql version 8.0.19

create table stem(
 Name varchar(10), 
 Address varchar(2), 
 ID integer(3), 
 SameFam integer(20),
 primary key(ID));

insert into stem(Name, Address, ID) values('Alice','A',10);

insert into stem(Name, Address, ID) values('Bob','B',15);

insert into stem(Name, Address, ID) values('Carmen','C',22);

insert into stem values('Diego','A',9,10);

insert into stem values('Ella','B',3,15);

insert into stem(Name, Address, ID) values('Farkhad','D',11);

delete from stem where SameFam is NULL and ID in (select temp from (select SameFam as temp from stem)x);

select * from stem;