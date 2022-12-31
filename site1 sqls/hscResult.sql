drop table hscResult CASCADE CONSTRAINTS;


create table hscResult(
	sid int, 
	hscEnglish number, 
	hscMath number, 
	hscPhysics number, 
	hscChemistry number
	);
	
	
	
	
	
insert into hscResult(sid , hscEnglish, hscMath, hscPhysics, hscChemistry) values (1,82,84,80,75);
insert into hscResult(sid , hscEnglish, hscMath, hscPhysics, hscChemistry) values (2,81,86,81,77);
insert into hscResult(sid , hscEnglish, hscMath, hscPhysics, hscChemistry) values (3,83,87,79,76);
insert into hscResult(sid , hscEnglish, hscMath, hscPhysics, hscChemistry) values (4,79,85,78,77);
insert into hscResult(sid , hscEnglish, hscMath, hscPhysics, hscChemistry) values (5,83,84,76,80);


insert into hscResult(sid , hscEnglish, hscMath, hscPhysics, hscChemistry) values (6,82,80,86,79);
insert into hscResult(sid , hscEnglish, hscMath, hscPhysics, hscChemistry) values (7,81,79,87,80);
insert into hscResult(sid , hscEnglish, hscMath, hscPhysics, hscChemistry) values (8,83,82,84,81);
insert into hscResult(sid , hscEnglish, hscMath, hscPhysics, hscChemistry) values (9,79,81,85,79);
insert into hscResult(sid , hscEnglish, hscMath, hscPhysics, hscChemistry) values (10,83,81,87,80);




insert into hscResult(sid , hscEnglish, hscMath, hscPhysics, hscChemistry) values (11,82,78,80,79);
insert into hscResult(sid , hscEnglish, hscMath, hscPhysics, hscChemistry) values (12,81,76,80,82);
insert into hscResult(sid , hscEnglish, hscMath, hscPhysics, hscChemistry) values (13,83,79,79,81);
insert into hscResult(sid , hscEnglish, hscMath, hscPhysics, hscChemistry) values (14,79,80,78,80);
insert into hscResult(sid , hscEnglish, hscMath, hscPhysics, hscChemistry) values (15,83,79,76,80);


commit;