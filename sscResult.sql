drop table sscResult CASCADE CONSTRAINTS;


create table sscResult(
	sid int,
	sscEnglish number, 
	sscGenMath number, 
	sscHighMath number, 
	sscPhysics number, 
	sscChemistry number
	);
	
	
	
insert into sscResult(sid, sscEnglish, sscGenMath, sscHighMath, sscPhysics, sscChemistry) values (1,82,88,87,82,78);
insert into sscResult(sid, sscEnglish, sscGenMath, sscHighMath, sscPhysics, sscChemistry) values (2,81,85,88,80,79);
insert into sscResult(sid, sscEnglish, sscGenMath, sscHighMath, sscPhysics, sscChemistry) values (3,83,87,86,76,80);
insert into sscResult(sid, sscEnglish, sscGenMath, sscHighMath, sscPhysics, sscChemistry) values (4,79,85,87,77,74);
insert into sscResult(sid, sscEnglish, sscGenMath, sscHighMath, sscPhysics, sscChemistry) values (5,84,86,85,81,75); 



insert into sscResult(sid, sscEnglish, sscGenMath, sscHighMath, sscPhysics, sscChemistry) values (6,82,80,81,84,79);
insert into sscResult(sid, sscEnglish, sscGenMath, sscHighMath, sscPhysics, sscChemistry) values (7,81,81,80,85,78);
insert into sscResult(sid, sscEnglish, sscGenMath, sscHighMath, sscPhysics, sscChemistry) values (8,83,81,79,86,80);
insert into sscResult(sid, sscEnglish, sscGenMath, sscHighMath, sscPhysics, sscChemistry) values (9,79,82,82,87,74);
insert into sscResult(sid, sscEnglish, sscGenMath, sscHighMath, sscPhysics, sscChemistry) values (10,84,79,83,84,75);


insert into sscResult(sid, sscEnglish, sscGenMath, sscHighMath, sscPhysics, sscChemistry) values (11,82,70,78,80,79);
insert into sscResult(sid, sscEnglish, sscGenMath, sscHighMath, sscPhysics, sscChemistry) values (12,81,81,80,81,80);
insert into sscResult(sid, sscEnglish, sscGenMath, sscHighMath, sscPhysics, sscChemistry) values (13,83,78,79,79,81);
insert into sscResult(sid, sscEnglish, sscGenMath, sscHighMath, sscPhysics, sscChemistry) values (14,79,76,75,78,78);
insert into sscResult(sid, sscEnglish, sscGenMath, sscHighMath, sscPhysics, sscChemistry) values (15,84,79,77,76,80);

commit;