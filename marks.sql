delimiter //
create function calculate1 (tmarks int) returns varchar(20)
begin 
declare grade varchar(20);
if tmarks>=1001 and tmarks<1500
then set grade = "DISTINCTION";
elseif 
tmarks>=501 and tmarks<1000 then set grade = "FIRST_CLASS";
elseif
tmarks>25 and tmarks<=500 then set grade = "PASS_CLASS";
end if;
return grade;
end
//

