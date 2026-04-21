USE faculty_workload_db;

SHOW TABLES;

SELECT 
    f.faculty_name,
    f.department,
    s.subject_name,
    w.hours_assigned,
    w.semester

FROM workload w

INNER JOIN faculty f
ON w.faculty_id = f.faculty_id

INNER JOIN subjects s
ON w.subject_id = s.subject_id;

SELECT 
    f.faculty_name,
    w.hours_assigned

FROM faculty f

LEFT JOIN workload w
ON f.faculty_id = w.faculty_id;

SELECT 
    f.faculty_name,
    w.hours_assigned

FROM faculty f

RIGHT JOIN workload w
ON f.faculty_id = w.faculty_id;

SELECT faculty_id,
hours_assigned

FROM workload

WHERE hours_assigned >

(
SELECT AVG(hours_assigned)
FROM workload
);

SELECT 
    f.department,
    SUM(w.hours_assigned) AS total_hours

FROM workload w

JOIN faculty f
ON w.faculty_id = f.faculty_id

GROUP BY f.department;


SELECT 
    faculty_id,
    hours_assigned,

RANK() OVER(
ORDER BY hours_assigned DESC
) AS workload_rank

FROM workload;

SELECT 
semester,
hours_assigned,

SUM(hours_assigned)
OVER(
ORDER BY semester
) AS running_total

FROM workload;

CREATE VIEW faculty_workload_report AS

SELECT 
    f.faculty_name,
    f.department,
    s.subject_name,
    w.hours_assigned,
    w.semester

FROM workload w

JOIN faculty f
ON w.faculty_id = f.faculty_id

JOIN subjects s
ON w.subject_id = s.subject_id;

SELECT * 
FROM faculty_workload_report;

INSERT INTO workload
VALUES (9,1,101,4,'Sem1');
