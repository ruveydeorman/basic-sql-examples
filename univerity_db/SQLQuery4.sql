USE university;
GO
SELECT 
    COUNT(*) AS total_courses,
    AVG(credits) AS average_credits
FROM course;

SELECT 
   COUNT(DISTINCT course_id) AS distinct_course,
   COUNT(*) AS total_section
FROM section
WHERE semester = 'Spring' AND year = '2024';

SELECT 
    d.dept_name,
    COUNT(i.ID) AS number_of_instructors,
    AVG(i.salary) AS average_salary
FROM department d
LEFT JOIN instructor i ON d.dept_name = i.dept_name
GROUP BY d.dept_name
ORDER BY average_salary DESC;

SELECT 
    d.dept_name,
    COUNT(s.ID) AS student_count,
    AVG(s.tot_cred) AS average_credits
FROM department d
LEFT JOIN student s ON d.dept_name = s.dept_name
GROUP BY d.dept_name
ORDER BY student_count DESC;

SELECT 
    s.building,
    COUNT(*) AS number_of_sections,
    AVG(c.capacity) AS average_classroom_capacity
FROM section s
JOIN classroom c ON s.building = c.building AND s.room_number = c.room_number
WHERE s.semester = 'Fall' AND s.year = 2023
GROUP BY s.building
ORDER BY number_of_sections DESC;


SELECT 
    dept_name,
    AVG(tot_cred) AS average_credits
FROM student
GROUP BY dept_name
HAVING AVG(tot_cred) > 25
ORDER BY average_credits DESC;

SELECT 
    dept_name,
    COUNT(*) AS student_count,
    AVG(tot_cred) AS average_credits
FROM student
GROUP BY dept_name
HAVING COUNT(*) > 5
ORDER BY student_count DESC, average_credits DESC;
SELECT 
    d.dept_name,
    d.budget AS department_budget,
    COALESCE(SUM(i.salary), 0) AS total_salary
FROM department d
LEFT JOIN instructor i ON d.dept_name = i.dept_name
GROUP BY d.dept_name, d.budget
HAVING COALESCE(SUM(i.salary), 0) > d.budget;