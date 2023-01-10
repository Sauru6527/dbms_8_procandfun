-- 1: Create table    => Stud_marks     (id,name,tmarks)  insert data
-- 2: Create table    => result         (id,name,grade)   Dont insert data
-- 3: procedure -> source /home/sauru/cal.sql
-- 4: function  -> source /home/sauru/marks.sql
-- 5: call proc_grade2();
-- 6: DONE SUCCESSFULLY
delimiter //
create procedure proc_grade2()
begin
declare vfinished int default 0;
declare r int;
declare n varchar(20);
declare tmarks int;
declare grade varchar(20);
declare cursor1 cursor for
select * from stud_marks;
declare continue handler for not found set vfinished=1;
open cursor1;
getdata:loop
fetch
cursor1 into r,n,tmarks;
if vfinished=1 then 
leave getdata;
end if;
set grade = calculate1(tmarks);
insert into result values(r,n,grade);
end loop getdata;
close cursor1;
end
//

