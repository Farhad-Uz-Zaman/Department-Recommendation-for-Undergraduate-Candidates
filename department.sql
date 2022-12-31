drop table department CASCADE CONSTRAINTS;
	
create table department(
sid int,
dep varchar2(30)
);	

insert into department(sid, dep) values (1,'CSE');
insert into department(sid, dep) values (2,'CSE');
insert into department(sid, dep) values (3,'CSE');
insert into department(sid, dep) values (4,'CSE');
insert into department(sid, dep) values (5,'CSE');

insert into department(sid, dep) values (6,'ME');
insert into department(sid, dep) values (7,'ME');
insert into department(sid, dep) values (8,'ME');
insert into department(sid, dep) values (9,'ME');
insert into department(sid, dep) values (10,'ME');


insert into department(sid, dep) values (11,'TE');
insert into department(sid, dep) values (12,'TE');
insert into department(sid, dep) values (13,'TE');
insert into department(sid, dep) values (14,'TE');
insert into department(sid, dep) values (15,'TE');


commit;