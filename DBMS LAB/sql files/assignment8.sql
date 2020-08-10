select count(roll_no) from student where semester='SEM3' and deptcode='CSE';

select count(distinct(rollno)) from result;

select count(fid) from faculty;

select rollno,Marks from result where marks in (select max(marks) from result group by Sub_code) and sub_code like '%50_';

select rollno from result where marks in (select max(marks) from result group by Sub_code)and sub_code='CS501';

select avg(marks) from result where sub_code='CS502' group by sub_code;

select deptcode,student_allotted from department;

select deptname,student_allotted from department;

select deptcode from (select deptcode,count(teacher) as num from subject group by deptcode) where num>3;

select name,rollno from student,(select rollno,count(sub_code) as subnum from result where marks>80 group by rollno) where subnum>=2 and rollno=roll_no;

select name,rollno from student,(select rollno,avg(marks) as average from result group by rollno) where average>70 and rollno=roll_no;

select semester,count(subjectcode) from subject where deptcode='CSE' group by semester;

select deptname from department where student_allotted=(select max(student_allotted) from department);

select max(marks) as marks from result where marks<(select max(marks) from result);

select name,sub_code from result,student where marks in (select max(marks) from result group by Sub_code) and rollno=roll_no;


