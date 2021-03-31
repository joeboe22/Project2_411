--Project 2--   
--Saurav Adhikari--
--Thomas Tran--
--Joseph Winkler--
--Naomie Bambara--


--CREATING PERSON TABLE--
create table Person( 
pid integer,
name char(20),
primary key(pid)
);
-----------------------
INSERT INTO Person(pid,name)
VALUES(10005,'John');
INSERT INTO Person(pid,name)
VALUES(10010,'Mark');
INSERT INTO Person(pid,name)
VALUES(10015,'Mary');
INSERT INTO Person(pid,name)
VALUES(10020,'Alice');
INSERT INTO Person(pid,name)
VALUES(10025,'Sarah');
INSERT INTO Person(pid,name)
VALUES(10030,'Jane');
INSERT INTO Person(pid,name)
VALUES(10035,'Albert');
INSERT INTO Person(pid,name)
VALUES(10080,'Winston');
INSERT INTO Person(pid,name)
VALUES(10090,'Andrea');
INSERT INTO Person(pid,name)
VALUES(10115,'Charlie');
INSERT INTO Person(pid,name)
VALUES(12000,'Antonio');
INSERT INTO Person(pid,name)
VALUES(13500,'Hannah');
-----------------------
-----------------------

--CREATING STUDENT TABLE--
create table Student(
pid integer,
primary key(pid),
foreign key (pid) references Person (pid)
);
-----------------------
INSERT INTO Student(pid)
VALUES(12000);
INSERT INTO Student(pid)
VALUES(10020);
INSERT INTO Student(pid)
VALUES(10025);
INSERT INTO Student(pid)
VALUES(10115);
INSERT INTO Student(pid)
VALUES(10010);
INSERT INTO Student(pid)
VALUES(10030);
INSERT INTO Student(pid)
VALUES(10035);
INSERT INTO Student(pid)
VALUES(10090);
INSERT INTO Student(pid)
VALUES(13500);
-----------------------
-----------------------

--CREATING PROFESSORS TABLE--
create table Professor(
pid integer,
primary key(pid),
foreign key (pid) references Person (pid)
);
-----------------------
INSERT INTO Professor(pid)
VALUES(10005);
INSERT INTO Professor(pid)
VALUES(10015);
INSERT INTO Professor(pid)
VALUES(10080);
-----------------------
-----------------------
