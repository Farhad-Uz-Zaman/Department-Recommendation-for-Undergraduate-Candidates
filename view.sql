create or replace view sscView(view_id, view_A, view_B, view_C, view_D, view_E) as
select S.sid, S.sscEnglish, S.sscGenMath, S.sscHighMath, S.sscPhysics, S.sscChemistry
from sscResult S;



create or replace view hscView(view_id, view_F, view_G, view_H, view_I) as
select P.sid , P.hscEnglish, P.hscMath, P.hscPhysics, P.hscChemistry
from hscResult@site1 P;

create or replace view depView(view_id, view_Dep) as
select  Q.sid , Q.dep
from department Q;

create or replace view knnView(view_id, view_Dis) as
select  R.sid , R.distance
from KNN@site1 R;


select * from sscView;
select * from hscView;
select * from depView;
select * from knnView;

commit;