-- OLTP TABLES
USE faculty_workload_db;
-- faculty
CREATE TABLE faculty (
faculty_id INT PRIMARY KEY,
faculty_name VARCHAR(100),
department VARCHAR(50)
);

-- subjects
CREATE TABLE subjects (
subject_id INT PRIMARY KEY,
subject_name VARCHAR(100)
);

-- workload
CREATE TABLE workload (
workload_id INT PRIMARY KEY,
faculty_id INT,
subject_id INT,
hours_assigned INT,
semester VARCHAR(20)
);

-- OLAP STAR SCHEMA

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