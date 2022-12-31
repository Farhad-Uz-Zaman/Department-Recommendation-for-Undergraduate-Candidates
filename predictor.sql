SET SERVEROUTPUT ON;
SET VERIFY OFF;




Delete from KNN@site1;


CREATE OR REPLACE FUNCTION square(A IN NUMBER, B IN NUMBER)
RETURN NUMBER
IS 
sqr NUMBER;
BEGIN

sqr:=POWER((A - B),2);   
RETURN sqr;
END square;
/




CREATE OR REPLACE PACKAGE predictPack AS 



PROCEDURE nearestNeighbours(A IN NUMBER,B IN NUMBER,C IN NUMBER,D IN NUMBER,E IN NUMBER,F IN NUMBER,G IN NUMBER,H IN NUMBER,I IN NUMBER);

PROCEDURE neighbourCount(cseCount OUT int,meCount OUT int,teCount OUT int);

END predictPack;
/



CREATE OR REPLACE PACKAGE Body predictPack AS





PROCEDURE nearestNeighbours(A IN NUMBER,B IN NUMBER,C IN NUMBER,D IN NUMBER,E IN NUMBER,F IN NUMBER,G IN NUMBER,H IN NUMBER,I IN NUMBER)
IS	
BEGIN
	 
For R in (select sid,sqrt(square(sscEnglish , A) + square(sscGenMath , B) +square(sscHighMath , C) +square(sscPhysics , D) +square(sscChemistry , E) +square(hscEnglish , F) +square(hscMath , G) +square(hscPhysics , H) +square(hscChemistry , I))as distance from sscResult natural join hscResult@site1) LOOP
 
insert into KNN@site1 values(R.sid,R.distance) ;

End Loop;	

For R in (select sid,distance,dep from KNN@site1 natural join Department order by distance) LOOP
 
DBMS_OUTPUT.PUT_LINE(R.sid||'  '||R.distance||'  '||R.dep);

End Loop; 
	 
END nearestNeighbours;

 
 
PROCEDURE neighbourCount(cseCount OUT int,meCount OUT int,teCount OUT int)
IS	


loopCount int :=0 ;

BEGIN 
cseCount :=0 ;
meCount :=0 ;
teCount :=0 ;
For R in (select sid,distance,dep from KNN@site1 natural join Department order by distance) LOOP

loopCount:=loopCount+1;
IF R.dep='CSE' THEN
cseCount:=cseCount+1;
ELSIF R.dep='ME' THEN
meCount:=meCount+1; 
ELSE
teCount:=teCount+1;
END IF;

IF loopCount=5 THEN
EXIT;
END IF;


End Loop; 
  

END neighbourCount;



END predictPack;
/	

 

ACCEPT P NUMBER PROMPT "Enter Marks in sscEnglish: "
ACCEPT Q NUMBER PROMPT "Enter Marks in sscGenMath: "
ACCEPT R NUMBER PROMPT "Enter Marks in sscHighMath: "
ACCEPT S NUMBER PROMPT "Enter Marks in sscPhysics: "
ACCEPT T NUMBER PROMPT "Enter Marks in sscChemistry: "
ACCEPT U NUMBER PROMPT "Enter Marks in hscEnglish: "
ACCEPT V NUMBER PROMPT "Enter Marks in hscMath: "
ACCEPT W NUMBER PROMPT "Enter Marks in hscPhysics: "
ACCEPT X NUMBER PROMPT "Enter Marks in hscChemistry: "





DECLARE

A number:=&P;
B number:=&Q;
C number:=&R;
D number:=&S;
E number:=&T;
F number:=&U;
G number:=&V;
H number:=&W;
I number:=&X;
  
cseCount int;
meCount int;
teCount int;

invalidMarks EXCEPTION;

BEGIN

--select * from sscResult natural join hscResult natural join department ;

 

IF A>100 OR A<0 THEN
RAISE invalidMarks;
ELSIF B>100 OR B<0  THEN
RAISE invalidMarks;
ELSIF C>100 OR C<0  THEN
RAISE invalidMarks;
ELSIF D>100 OR D<0  THEN
RAISE invalidMarks;
ELSIF E>100 OR E<0  THEN
RAISE invalidMarks;
ELSIF F>100 OR F<0   THEN
RAISE invalidMarks;
ELSIF G>100 OR G<0  THEN
RAISE invalidMarks;
ELSIF H>100 OR H<0  THEN
RAISE invalidMarks;
ELSIF I>100 OR I<0  THEN
RAISE invalidMarks;
END IF;

	
DBMS_OUTPUT.PUT_LINE('The nearest neighbours are: ');	
predictPack.nearestNeighbours(A,B,C,D,E,F,G,H,I);

predictPack.neighbourCount(cseCount,meCount,teCount);
 

DBMS_OUTPUT.PUT_LINE('Output counts for 5 nearest neighbours: ');
DBMS_OUTPUT.PUT_LINE('CSE COUNT : '||cseCount);
DBMS_OUTPUT.PUT_LINE('ME COUNT : '||meCount);
DBMS_OUTPUT.PUT_LINE('TE COUNT : '||teCount);

IF cseCount>meCount and cseCount>teCount THEN
DBMS_OUTPUT.PUT_LINE('Preferable Department for the candidate is : CSE');  
ELSIF meCount>cseCount and meCount>teCount THEN
DBMS_OUTPUT.PUT_LINE('Preferable Department for the candidate is : ME');
ELSE
DBMS_OUTPUT.PUT_LINE('Preferable Department for the candidate is : TE');   
END IF;

 
--select sid from sscResult natural join hscResult@site1
--order by sqrt(power(sscEnglish - 80,2) + power(sscGenMath - 76,2) +power(sscHighMath - 77,2) +power(sscPhysics - 80,2) +power(sscChemistry - 86,2) +power(hscEnglish - 76,2) +power(hscMath - 77,2) +power(hscPhysics - 79,2) +power(hscChemistry - 83,2)); 

--select sid from sscResult natural join hscResult@site1
--order by sqrt(power(sscEnglish - 80,2) + power(sscGenMath - 76,2)) ;


--select sid,sqrt(power(sscEnglish - 80,2) + power(sscGenMath - 76,2) +power(sscHighMath - 77,2) +power(sscPhysics - 80,2) +power(sscChemistry - 86,2) +power(hscEnglish - 76,2) +power(hscMath - 77,2) +power(hscPhysics - 79,2) +power(hscChemistry - 83,2))as distance 
--from sscResult natural join hscResult@site1   ;



EXCEPTION
	WHEN invalidMarks THEN
		DBMS_OUTPUT.PUT_LINE('Invalid Marks');	

END;
/






commit;