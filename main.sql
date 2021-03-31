--Project 2--   
--Saurav Adhikari--
--Thomas Tran--
--Joseph Winkler--
--Naomie Bambara--


--CREATING PERSON TABLE--
CREATE TABLE Person( 
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
CREATE TABLE Student(
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
CREATE TABLE Professor(
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
CREATE TABLE Transcript(
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
VALUES('Antonio@SCSU.edu', TO_DATE('01-JAN-2021', 'DD-MON-YYYY'));
INSERT INTO Email_Address(email, creation)
VALUES('Hannah@SCSU.edu', TO_DATE('11-MAR-2021', 'DD-MON-YYYY'));
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
            
