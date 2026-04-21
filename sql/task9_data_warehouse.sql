CREATE DATABASE faculty_workload_dw;

USE faculty_workload_dw;
SHOW DATABASES;
CREATE TABLE dim_faculty (

    faculty_id INT PRIMARY KEY,
    faculty_name VARCHAR(100)

);
CREATE TABLE dim_subject (

    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100)

);

CREATE TABLE dim_department (

    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)

);

CREATE TABLE dim_semester (

    semester_id INT PRIMARY KEY,
    semester_name VARCHAR(20)

);

CREATE TABLE fact_workload (

    workload_id INT,
    faculty_id INT,
    subject_id INT,
    department_id INT,
    semester_id INT,
    hours_assigned INT
);

INSERT INTO dim_faculty VALUES
(1,'Amit Sharma'),
(2,'Riya Das'),
(3,'John Paul'),
(4,'Sara Khan'),
(5,'Raj Patel'),
(6,'Neha Singh'),
(7,'Arun Kumar'),
(8,'Meena Roy');

INSERT INTO dim_subject VALUES
(101,'Data Science'),
(102,'Circuits'),
(103,'DBMS'),
(104,'Thermodynamics'),
(105,'AI'),
(106,'Signals'),
(107,'Networks'),
(108,'Robotics');

INSERT INTO dim_department VALUES
(1,'CSE'),
(2,'ECE'),
(3,'IT'),
(4,'ME');

INSERT INTO dim_semester VALUES
(1,'Sem1'),
(2,'Sem2');

INSERT INTO fact_workload VALUES
(1,1,101,1,1,4),
(2,2,102,2,1,3),
(3,3,103,3,2,5),
(4,4,104,4,2,2),
(5,5,105,1,1,4),
(6,6,106,2,1,3),
(7,7,107,3,2,5),
(8,8,108,4,2,2);

SELECT 
    f.faculty_name,
    s.subject_name,
    d.department_name,
    sem.semester_name,
    fact.hours_assigned

FROM fact_workload fact

JOIN dim_faculty f
ON fact.faculty_id = f.faculty_id

JOIN dim_subject s
ON fact.subject_id = s.subject_id

JOIN dim_department d
ON fact.department_id = d.department_id

JOIN dim_semester sem
ON fact.semester_id = sem.semester_id;

SELECT 
    d.department_name,
    SUM(fact.hours_assigned) AS total_hours

FROM fact_workload fact

JOIN dim_department d
ON fact.department_id = d.department_id

GROUP BY d.department_name;