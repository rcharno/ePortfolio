CREATE DATABASE School;

CREATE table Student(
Studentid int NOT NULL AUTO_INCREMENT,
Surname varchar(255),
Forename varchar(255),
Exam Score int,
Support varchar(3),
DOB Date,  
PRIMARY KEY (Sudentid)
);

CREATE table Course_Student_link(
Coursestudentid int NOT NULL AUTO_INCREMENT,
Studentid int,
Courseid int,
PRIMARY KEY (Course_student_id),
FOREIGN KEY (Studentid) REFERENCES Student(Studentid),
FOREIGN KEY (Courseid) REFERENCES Course(Courseid)
);

CREATE table Course(
Courseid int NOT NULL AUTO_INCREMENT,
Coursename varchar(255),
Examboard varchar(255),
Teacherid int,
PRIMARY KEY (Courseid),
FOREIGN KEY (Teacherid) REFERENCES Teacher(Teacherid)
);


CREATE table Teacher(
Teacherid int NOT NULL AUTO_INCREMENT,
Teachername varchar(255),
PRIMARY KEY (Teacherid)
);
