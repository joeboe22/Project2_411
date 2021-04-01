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

--CREATING Volunteer_Work TABLE--
CREATE TABLE Volunteer_Work(
oid char(10),
organization char(30),
primary key(oid));
-----------------------
INSERT INTO Volunteer_Work(oid, organization)
VALUES('ORG101', 'Humane Society');
INSERT INTO Volunteer_Work(oid, organization)
VALUES('ORG102', 'Salvation Army');
INSERT INTO Volunteer_Work(oid, organization)
VALUES('ORG103', 'Soup Kitchen');
-----------------------
-----------------------

--CREATING Room TABLE--
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
            
--CREATING Course TABLE--
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

--CREATING Final_Exam TABLE--            
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

--CREATING Parking TABLE--                                    
CREATE TABLE Parking(
permit_id integer,
space_number integer,
car_model char(25),
lot_name char(25),
primary key(permit_id));
-----------------------
INSERT INTO Parking(permit_id, space_number, car_model, lot_name)
VALUES(92080, 1, '2019 Ford Fusion', 'N Lot');
INSERT INTO Parking(permit_id, space_number, car_model, lot_name)
VALUES(90370, 2, '2020 Toyota Camry', 'N Lot');
INSERT INTO Parking(permit_id, space_number, car_model, lot_name)
VALUES(92099, 3, '2016 Honda Civic', 'N Lot');
INSERT INTO Parking(permit_id, space_number, car_model, lot_name)
VALUES(92011, 4, '2015 Honda Accord', 'N Lot');
INSERT INTO Parking(permit_id, space_number, car_model, lot_name)
VALUES(92321, 1, '2020 Chevrolet Suburban', 'E Lot');
INSERT INTO Parking(permit_id, space_number, car_model, lot_name)
VALUES(92009, 2, '2013 Ford Escape', 'E Lot');
INSERT INTO Parking(permit_id, space_number, car_model, lot_name)
VALUES(92001, 3, '2015 Mitsubishi Outlander', 'E Lot');
INSERT INTO Parking(permit_id, space_number, car_model, lot_name)
VALUES(92077, 4, '2007 Toyota', 'E Lot');
INSERT INTO Parking(permit_id, space_number, car_model, lot_name)
VALUES(92399, 5, '2020 Tesla model 3', 'N Lot');
INSERT INTO Parking(permit_id, space_number, car_model, lot_name)
VALUES(92173, 6, '2015 BMW X6 ', 'N Lot');
INSERT INTO Parking(permit_id, space_number, car_model, lot_name)
VALUES(92999, 7, '2021 Ford Edge', 'N Lot');
INSERT INTO Parking(permit_id, space_number, car_model, lot_name)
VALUES(92002, 8, '2017 Nissan Altima', 'N Lot');
-----------------------
-----------------------

--CREATING Parks TABLE-- 
CREATE TABLE Parks(
permit_id integer,
pid integer,
primary key(permit_id, pid),
foreign key (permit_id) references Parking,
foreign key (pid) REFERENCES Person);
-----------------------
INSERT INTO Parks(permit_id, pid)
VALUES(92399, 10005);
INSERT INTO Parks(permit_id, pid)
VALUES(92999, 10015);
INSERT INTO Parks(permit_id, pid)
VALUES(92173, 10080);
INSERT INTO Parks(permit_id, pid)
VALUES(92002, 10010);
INSERT INTO Parks(permit_id, pid)
VALUES(92080, 10020);
INSERT INTO Parks(permit_id, pid)
VALUES(90370, 10025);
INSERT INTO Parks(permit_id, pid)
VALUES(92099, 10030);
INSERT INTO Parks(permit_id, pid)
VALUES(92011, 10035);
INSERT INTO Parks(permit_id, pid)
VALUES(92321, 10090);
INSERT INTO Parks(permit_id, pid)
VALUES(92009, 10115);
INSERT INTO Parks(permit_id, pid)
VALUES(92001, 12000);
INSERT INTO Parks(permit_id, pid)
VALUES(92077, 13500);
-----------------------
-----------------------
            
--CREATING Volunteers TABLE-- 
CREATE TABLE Volunteers(
pid integer,
oid char(10),
hours_worked integer,
primary key(pid, oid),
foreign key (oid) references Volunteer_Work,
foreign key (pid) references student);
-----------------------
INSERT INTO Volunteers(pid, oid, hours_worked)
VALUES(10010, 'ORG101', 2);
INSERT INTO Volunteers(pid, oid, hours_worked)
VALUES(10010, 'ORG102', 3);
INSERT INTO Volunteers(pid, oid, hours_worked)
VALUES(10020, 'ORG101', 11);
INSERT INTO Volunteers(pid, oid, hours_worked)
VALUES(10025, 'ORG103', 7);
INSERT INTO Volunteers(pid, oid, hours_worked)
VALUES(10030, 'ORG103', 2);
INSERT INTO Volunteers(pid, oid, hours_worked)
VALUES(10030, 'ORG101', 4);
INSERT INTO Volunteers(pid, oid, hours_worked)
VALUES(10030, 'ORG102', 9);
INSERT INTO Volunteers(pid, oid, hours_worked)
VALUES(10035, 'ORG101', 15);
INSERT INTO Volunteers(pid, oid, hours_worked)
VALUES(10035, 'ORG103', 2);
INSERT INTO Volunteers(pid, oid, hours_worked)
VALUES(10090, 'ORG102', 3);
INSERT INTO Volunteers(pid, oid, hours_worked)
VALUES(10090, 'ORG103', 3);
INSERT INTO Volunteers(pid, oid, hours_worked)
VALUES(10115, 'ORG102', 10);
INSERT INTO Volunteers(pid, oid, hours_worked)
VALUES(12000, 'ORG103', 13);
INSERT INTO Volunteers(pid, oid, hours_worked)
VALUES(13500, 'ORG103', 4);
INSERT INTO Volunteers(pid, oid, hours_worked)
VALUES(13500, 'ORG101', 4);
