CREATE TABLE enroll(
sid numeric(20,1),
grade numeric(20,1),
dname varchar(40),
cno numeric(20,1),
sectno numeric(20,1),

primary key (sid, dname, cno, sectno)
);

CREATE TABLE student(
sid numeric(20,1),
sname varchar(40),
sex varchar(10),
age numeric(20,1),
year numeric(20,1),
gpa numeric(20,2),

primary key (sid)
);

CREATE TABLE dept(
dname varchar(40),
numphds numeric(20,1),

primary key (dname)
);

CREATE TABLE prof(
pname varchar(40),
dname varchar(40),

primary key (pname)
);

CREATE TABLE course(
cno numeric(20,5),
cname varchar(40),
dname varchar(40),

primary key (cno, dname)
);

CREATE TABLE major(
dname varchar(40),
sid numeric(20,1),

primary key (sid, dname)
);

CREATE TABLE section(
dname varchar(40),
cno numeric(20,5),
sectno numeric(20,5),
pname varchar(40),

primary key (dname, cno, sectno)
);