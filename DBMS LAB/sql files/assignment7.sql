select name,deptname from student,department where student.deptcode=department.deptcode;

select name,marks from student,result where yearofadm=2017 and sub_code='CS502' and student.roll_no=result.rollno;

select name from student,result where result.marks between 70 and 89 and sub_code='CS501' and student.roll_no=result.rollno;

select name,roll_no from student,result where sub_code='ECS501' and student.roll_no=result.rollno;

select name,sub_code,marks from student,result where semester='SEM5' and deptcode='CSE' and student.roll_no=result.rollno;

select name,deptname from student,department where semester='SEM5' and birth_date like '%-MAY-%' and student.deptcode=department.deptcode;

select name,subjectname from student,subject where student.semester='SEM5' and subjectname like '%Data%' and student.semester=subject.semester;

select name,subjectname,marks from student,subject,result where student.semester='SEM5' and student.roll_no=result.rollno and subject.subjectcode=result.sub_code;

select rollno,name,marks from student,result where deptcode='CSE' and sub_code='CS301' and marks>80 and student.roll_no=result.rollno;

select name,deptname,subjectname,marks from student,department,subject,result where marks>90 and student.roll_no=result.rollno and student.deptcode=department.deptcode and subject.subjectcode=result.sub_code;

alter table department add HOD varchar2(4);
update department set HOD='F01' where deptcode='CSE';
update department set HOD='F02' where deptcode='ECE';
update department set HOD='F03' where deptcode='EE';
update department set HOD='F04' where deptcode='IT';

alter table subject add TEACHER varchar2(4);
update subject set TEACHER='F01' where subjectcode='CS301';
update subject set TEACHER='F02' where subjectcode='CS302';
update subject set TEACHER='F03' where subjectcode='CS501';
update subject set TEACHER='F04' where subjectcode='CS502';
update subject set TEACHER='F05' where subjectcode='CS503';
update subject set TEACHER='F06' where subjectcode='EC501';
update subject set TEACHER='F07' where subjectcode='ECS501';

select deptname,subjectname,semester,faculty.name from department,subject,faculty where subject.deptcode=department.deptcode and faculty.fid=subject.teacher;

select name from faculty where fid in (select HOD from department);

select subjectname,sub_code,marks from subject left outer join result on subject.subjectcode=result.sub_code;

select name,sub_code,marks from result right outer join student on result.rollno=student.roll_no;
