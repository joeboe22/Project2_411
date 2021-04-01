--Project 2--   
--Saurav Adhikari--
--Thomas Tran--
--Joseph Winkler--
--Naomie Bambara--


alter session set nls_date_format = 'dd/MON/yyyy hh24:mi:ss';

--CREATING PERSON TABLE--
create table Person( 
pid integer,
name char(20),
primary key(pid));
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
foreign key (pid) references Person (pid));
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
foreign key (pid) references Person (pid));
-----------------------
INSERT INTO Professor(pid)
VALUES(10005);
INSERT INTO Professor(pid)
VALUES(10015);
INSERT INTO Professor(pid)
VALUES(10080);
-----------------------
-----------------------
                                     
--CREATING TRANSCRIPT TABLE--
create table Transcript(
tid integer,
gpa float,
primary key(tid));
-----------------------
INSERT INTO Transcript(tid, gpa)
VALUES(1001, 2.75);
INSERT INTO Transcript(tid, gpa)
VALUES(1002, 3.49);
INSERT INTO Transcript(tid, gpa)
VALUES(1003, 3.98);
INSERT INTO Transcript(tid, gpa)
VALUES(1004, 1.99);
INSERT INTO Transcript(tid, gpa)
VALUES(1005, 2.33);
INSERT INTO Transcript(tid, gpa)
VALUES(1006, 1.66);
INSERT INTO Transcript(tid, gpa)
VALUES(1007, 4.00);
INSERT INTO Transcript(tid, gpa)
VALUES(1008, 3.33);
INSERT INTO Transcript(tid, gpa)
VALUES(1009, 2.19);
-----------------------
-----------------------

--CREATING Email_Address TABLE--
CREATE TABLE Email_Address(
email char(30),
creation date,
primary key(email));
-----------------------
INSERT INTO Email_Address(email, creation)
VALUES('Mark@SCSU.edu', TO_DATE('01-FEB-2020', 'DD-MON-YYYY'));
INSERT INTO Email_Address(email, creation)
VALUES('Alice@SCSU.edu', TO_DATE('28-AUG-2019', 'DD-MON-YYYY'));
INSERT INTO Email_Address(email, creation)
VALUES('Sarah@SCSU.edu', TO_DATE('11-Jan-2020', 'DD-MON-YYYY'));
INSERT INTO Email_Address(email, creation)
VALUES('Jane@SCSU.edu', TO_DATE('21-MAY-2020', 'DD-MON-YYYY'));
INSERT INTO Email_Address(email, creation)
VALUES('Albert@SCSU.edu', TO_DATE('01-MAR-2018', 'DD-MON-YYYY'));
INSERT INTO Email_Address(email, creation)
VALUES('Andrea@SCSU.edu', TO_DATE('04-JUL-2020', 'DD-MON-YYYY'));
INSERT INTO Email_Address(email, creation)
VALUES('Charlie@SCSU.edu', TO_DATE('14-JUL-2019', 'DD-MON-YYYY'));
INSERT INTO Email_Address(email, creation)
VALUES('Antonio@SCSU.edu', TO_DATE('01-JAN-2020', 'DD-MON-YYYY'));
INSERT INTO Email_Address(email, creation)
VALUES('Hannah@SCSU.edu', TO_DATE('11-MAR-2020', 'DD-MON-YYYY'));
-----------------------
-----------------------

--CREATING Volunteer TABLE--
CREATE TABLE Volunteer(
oid char(10),
organization char(30),
primary key(oid));
-----------------------
INSERT INTO Volunteer(oid, organization)
VALUES('ORG101', 'Humane Society');
INSERT INTO Volunteer(oid, organization)
VALUES('ORG102', 'Salvation Army');
INSERT INTO Volunteer(oid, organization)
VALUES('ORG103', 'Soup Kitchen');
-----------------------
-----------------------

CREATE TABLE Room(
room_number integer,
building char(30),
primary key(room_number, building));
-----------------------
INSERT INTO Room(room_number, building)
VALUES(211, 'ECC');
INSERT INTO Room(room_number, building)
VALUES(104, 'ISELF');
INSERT INTO Room(room_number, building)
VALUES(217, 'EB');
INSERT INTO Room(room_number, building)
VALUES(107, 'ECC');
-----------------------
-----------------------

CREATE TABLE Course(
cid char(10),
section integer,
course_name char(40),
semester char(15),
primary key(cid, section));
-----------------------
INSERT INTO Course(cid, section, course_name, semester)
VALUES('CSCI301', 1, 'Computer Science 2', 'Fall' );
INSERT INTO Course(cid, section, course_name, semester)
VALUES('CSCI220', 1, 'Computer Architecture 2', 'Fall' );
INSERT INTO Course(cid, section, course_name, semester)
VALUES('CSCI411', 1, 'Database Theory and Design', 'Spring');
INSERT INTO Course(cid, section, course_name, semester)
VALUES('MATH221', 1, 'Calculus 1', 'Spring');
-----------------------
-----------------------

CREATE TABLE Final_Exam(
eid char(10),
course_name char(40),
exam_time date,
primary key(eid));
-----------------------
INSERT INTO Final_Exam(eid, course_name, exam_time)
VALUES('E11', 'Computer Science 2', TO_DATE('17-DEC-2020 11:30:00','DD-MON-YYYY HH:MI:SS'));
INSERT INTO Final_Exam(eid, course_name, exam_time)
VALUES('E12', 'Computer Architecture 2', TO_DATE('15-DEC-2020 12:15:00','DD-MON-YYYY HH:MI:SS'));
INSERT INTO Final_Exam(eid, course_name, exam_time)
VALUES('E21', 'Database Theory and Design', TO_DATE('04-MAY-2020 12:00:00','DD-MON-YYYY HH:MI:SS'));
INSERT INTO Final_Exam(eid, course_name, exam_time)
VALUES('E22', 'Calculus 1', TO_DATE('06-MAY-2020 08:30:00','DD-MON-YYYY HH:MI:SS'));
-----------------------
-----------------------


CREATE TABLE Parking(
permit_id integer,
space_number integer,
car_model char(25),
lot_name char(25),
primary key(permit_id));
