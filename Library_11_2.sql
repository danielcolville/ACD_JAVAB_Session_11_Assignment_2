-- *** SqlDbx Personal Edition ***
-- !!! Not licensed for commercial use beyound 90 days evaluation period !!!
-- For version limitations please check http://www.sqldbx.com/personal_edition.htm
-- Number of queries executed: 294, number of rows retrieved: 1249
USE lib_db;


-- a
SELECT * FROM book_table;
SELECT str_to_date(book_issue_date,'%m/%d/%Y') FROM book_table
WHERE  str_to_date(book_issue_date,'%m/%d/%Y') between '2008/08/21' AND '2008/08/29';
-- '8/21/08' AND '8/29/08';

-- b
SELECT * FROM book_table WHERE book_author='Caressa Cogan';
-- c
SELECT book_publisher,count(DISTINCT book_name) FROM book_table GROUP BY book_publisher;
-- d
SELECT count(DISTINCT b_id) FROM book_table;
-- e
SELECT count(DISTINCT b_id) FROM book_table 
JOIN student_table ON student_table.st_id = book_table.student_id WHERE st_id='CSB06001';

-- f
UPDATE book_table set book_table.book_author='ABC' WHERE b_id='BK003';
-- UPDATE book_table set book_table.book_author='Parsifal McInally' WHERE b_id='BK003';
-- g
SELECT student_table.st_name FROM student_table JOIN book_table ON book_table.student_id = student_table.st_id
WHERE book_name='Database System' AND book_author='E.Navathe';
-- h
SELECT department_table.dept_name,count(DISTINCT book_table.b_id) FROM book_table JOIN student_table ON student_table.st_id = book_table.student_id 
JOIN department_table ON department_table.dept_id = student_table.dpt_id GROUP BY dept_id;

-- i
SELECT book_table.book_name FROM book_table WHERE book_subject LIKE 'ora%';