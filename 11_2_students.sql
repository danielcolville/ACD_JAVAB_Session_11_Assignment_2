-- *** SqlDbx Personal Edition ***
-- !!! Not licensed for commercial use beyound 90 days evaluation period !!!
-- For version limitations please check http://www.sqldbx.com/personal_edition.htm
-- Number of queries executed: 0, number of rows retrieved: 0

USE school;
SELECT s.name,city,c.course_name FROM (students s 
JOIN courses_registered cr ON cr.student_code = s.roll_number 
JOIN courses c ON c.course_number = cr.course_code 
JOIN departments d ON d.department_code = c.department_code)
WHERE d.department_name='CSE';

SELECT count(DISTINCT employee_code) AS 'Number CSE faculty' FROM teachers JOIN departments ON departments.department_code = teachers.department_code
WHERE department_name='CSE';

SELECT course_name FROM courses JOIN departments ON departments.department_code = courses.department_code
WHERE department_name='CSE';

SELECT * FROM students WHERE semester='summer2018';

-- e?
SELECT students.name, sum(CASE WHEN courses_registered.grade >=80  THEN 10 WHEN courses_registered.grade >=70 THEN 9
WHEN courses_registered.grade >=60 THEN 8
WHEN courses_registered.grade >=55 THEN 7
WHEN courses_registered.grade >=50 THEN 6
WHEN courses_registered.grade >=40 THEN 5
WHEN courses_registered.grade <40 THEN 0
  END)/ count(courses_registered.grade) AS cgpa
 FROM students JOIN courses_registered ON courses_registered.student_code = students.roll_number
GROUP BY student_code
having cgpa > 9.5;

SELECT s.name,count(DISTINCT course_code) 'courses subject count' FROM students s JOIN courses_registered cr ON cr.student_code = s.roll_number GROUP BY student_code;



-- g?

SELECT s1.name,s1.roll_number FROM (students s1 
	JOIN program_enrollment pe ON pe.student_code = s1.roll_number
	JOIN academic_programs ap ON ap.program_code = pe.program_code 
	JOIN courses_registered  cr ON cr.student_code = s1.roll_number)
	
	WHERE ap.program_name='MCA'  OR ap.program_name='M.Tech'
	 AND course_code IN 
	
	(SELECT cr2.course_code FROM students s2 	
	JOIN program_enrollment pe2 ON pe2.student_code = s2.roll_number
	JOIN academic_programs ap2 ON ap2.program_code = pe2.program_code 
	JOIN courses_registered cr2 ON cr2.student_code = s2.roll_number
    where ap2.program_name='M.tech' OR ap2.program_name='MCA')
    GROUP BY s1.name;
	
	
SELECT * FROM students JOIN courses_registered ON courses_registered.student_code = students.roll_number JOIN courses ON courses.course_number = courses_registered.course_code
WHERE course_name='DBMS';


SELECT name,semester FROM students JOIN courses_registered ON courses_registered.student_code = students.roll_number JOIN courses ON courses.course_number = courses_registered.course_code
WHERE course_name='DBMS';

SELECT name FROM students ORDER BY name;

UPDATE students 
SET city='Tezpur' 
WHERE city='Guwahati' and roll_number='CSI08002';

-- UPDATE students 
-- SET city='Guwahati' 
-- WHERE city='Tezpur' and roll_number='CSI08002';

SELECT sum(course_credit) FROM academic_programs JOIN courses_required ON courses_required.program_code = academic_programs.program_code JOIN courses ON courses.course_number = courses_required.course_code
WHERE program_name='MCA';


SELECT * FROM departments JOIN courses ON courses.department_code = departments.department_code WHERE department_name='CSE';

SELECT * FROM students WHERE city='Tezpur';

SELECT count(DISTINCT department_name) AS 'Number of departments' FROM departments;