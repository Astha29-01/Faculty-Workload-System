CREATE DATABASE faculty_workload_db;
USE faculty_workload_db;
SHOW DATABASES;
CREATE TABLE faculty (
    faculty_id INT PRIMARY KEY,
    faculty_name VARCHAR(100),
    department VARCHAR(50)
);
SHOW TABLES;
INSERT INTO faculty VALUES
(1,'Amit Sharma','CSE'),
(2,'Riya Das','ECE'),
(3,'John Paul','IT'),
(4,'Sara Khan','ME'),
(5,'Raj Patel','CSE'),
(6,'Neha Singh','ECE'),
(7,'Arun Kumar','IT'),
(8,'Meena Roy','ME');
SELECT * FROM faculty;
CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100)
);
INSERT INTO subjects VALUES
(101,'Data Science'),
(102,'Circuits'),
(103,'DBMS'),
(104,'Thermodynamics'),
(105,'AI'),
(106,'Signals'),
(107,'Networks'),
(108,'Robotics');
SELECT * FROM subjects;
CREATE TABLE workload (
    workload_id INT PRIMARY KEY,
    faculty_id INT,
    subject_id INT,
    hours_assigned INT,
    semester VARCHAR(20),

    FOREIGN KEY (faculty_id)
        REFERENCES faculty(faculty_id),

    FOREIGN KEY (subject_id)
        REFERENCES subjects(subject_id)
);
INSERT INTO workload VALUES
(1,1,101,4,'Sem1'),
(2,2,102,3,'Sem1'),
(3,3,103,5,'Sem2'),
(4,4,104,2,'Sem2'),
(5,5,105,4,'Sem1'),
(6,6,106,3,'Sem1'),
(7,7,107,5,'Sem2'),
(8,8,108,2,'Sem2');
SELECT * FROM workload;
SELECT faculty_name
FROM faculty;
SELECT *
FROM faculty
WHERE department = 'CSE';
SELECT semester,
SUM(hours_assigned)
FROM workload
GROUP BY semester;

SELECT *
FROM faculty
ORDER BY faculty_name;