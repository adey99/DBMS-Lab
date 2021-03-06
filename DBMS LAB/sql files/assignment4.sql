SELECT SUBJECTNAME FROM SUBJECT WHERE SEMESTER='SEM5' AND DEPTCODE='CSE';

SELECT ROLLNO FROM RESULT WHERE SUB_CODE='CS303' AND MARKS BETWEEN 61 AND 70;

UPDATE STUDENT SET ADDRESS='HOMELESS' WHERE ROLLNO=1001;

UPDATE DEPARTMENT SET STUDENT_ALLOTED=75 WHERE DEPTCODE='IT';

UPDATE DEPARTMENT SET STUDENT_ALLOTED=STUDENT_ALLOTED+15 WHERE DEPTCODE='CSE';

UPDATE RESULT SET MARKS=MARKS+5 WHERE SUB_CODE='CS301';

UPDATE STUDENT SET PHONENO=6969696969 WHERE PHONENO IS NULL;

UPDATE RESULT SET MARKS=MARKS-2 WHERE PASS_MARKS-MARKS BETWEEN 1 AND 2 AND SUB_CODE LIKE 'CS%';

DELETE FROM STUDENT WHERE ROLLNO=4200;

SELECT NAME, DEPTCODE,SEMESTER FROM STUDENT,RESULT WHERE STUDENT.ROLLNO=RESULT.RollNo AND RESULT.Marks>80 ORDER BY RESULT.MARKS DESC;

SELECT NAME,DEPTCODE,SEMESTER FROM STUDENT WHERE YEAROFADM<2017 ORDER BY NAME;

SELECT NAME,ADDRESS,PHONENO FROM STUDENT,RESULT WHERE STUDENT.ROLLNO=RESULT.ROLLNO AND RESULT.MARKS>90 AND SUB_CODE IN ('CS301','CS302');

INSERT INTO STUDENT VALUES (4200,'MRIGENDRA','Belur,Howrah',NULL,2019,'IT','SEM1','2004-07-01'),(5395,'khagendra','tala',8482267821,2018,'CSE','SEM3','2003-07-04');

UPDATE STUDENT SET PHONENO=NULL WHERE ROLLNO=5395;

SELECT STUDENT.ROLLNO,SUB_CODE FROM STUDENT,RESULT WHERE STUDENT.ROLLNO=RESULT.ROLLNO AND RESULT.MARKS>RESULT.PASS_MARKS+40 AND SUB_CODE IN ('CS501','CS502');
