DROP TABLE IF EXISTS student_Course;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS course;

CREATE TABLE Student_Course(
  StudentID CHAR(10),
  CourseID CHAR(10),
  Grade CHAR(7)
);

CREATE TABLE Student (
  StudentID CHAR(10),
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  PRIMARY KEY (StudentID)
);

CREATE TABLE Course (
  CourseID CHAR(10),
  Course_Name VARCHAR(25),
  PRIMARY KEY (CourseID)
);












