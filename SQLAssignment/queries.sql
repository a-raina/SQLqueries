/*Anmol Raina*/

/*1*/
    SELECT pname
    FROM prof, dept
    WHERE numphds <50 and prof.dname = dept.dname;
    
/*2*/
    SELECT sname
    FROM student
    WHERE gpa = (SELECT MIN(gpa)
                 FROM student);
                 
/*3*/
    SELECT cno, sectno, avg(gpa) as avg_gpa
    FROM enroll natural join student
    WHERE enroll.dname = 'Computer Sciences'
    GROUP BY cno, sectno;
    
/*4*/
    SELECT cname, sectno
    FROM enroll natural join course
    GROUP BY cname, sectno
    HAVING count(sid)>6;

/*5*/  
    SELECT distinct(temp.sname), temp.sid
    FROM 
        (SELECT sname, sid, count(cno) as n
        FROM student natural join enroll 
        GROUP BY sname, sid) as temp
    WHERE temp.n = (SELECT MAX(n)
                    FROM (SELECT sname, sid, count(cno) as n
                         FROM student natural join enroll 
                         GROUP BY sname, sid) as temp);
                         
/*6*/
    SELECT distinct(dname)
    FROM major natural join student 
    WHERE age < 18.0;

/*7*/
    SELECT distinct(sname), dname
    FROM course natural join major natural join student
    WHERE cno = 461 OR cno = 462
    GROUP BY sname, dname;
    
/*8*/
    SELECT distinct(dname), numphds
    FROM course natural join dept
    WHERE cno != 461 AND cno != 462;
    
/*9*/
    SELECT sname
    FROM enroll natural join student
    WHERE dname = 'Computer Sciences'
    GROUP BY sname, sid
    HAVING sid in (SELECT sid
                    FROM enroll natural join student
                    WHERE dname = 'Mathematics');

/*10*/
    SELECT MAX(age) - MIN(age) as age_difference
    FROM major natural join student
    WHERE dname = 'Computer Sciences';
    
/*11*/
    SELECT dname, avg(gpa)
    FROM major natural join student
    WHERE dname in (SELECT dname
                    FROM major natural join student
                    WHERE gpa < 1)
    GROUP BY dname;

/*12*/    
    SELECT  sname, sid, gpa
    FROM enroll natural join student 
    WHERE dname = 'Civil Engineering' 
    GROUP BY sname, sid, gpa
    HAVING count(cno) = (SELECT count(cno)
                         FROM course
                         WHERE dname = 'Civil Engineering');
    
    
    
    
