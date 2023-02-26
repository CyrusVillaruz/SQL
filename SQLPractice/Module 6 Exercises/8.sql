SELECT emp_fname, emp_lname, emp_email FROM lgemployee
WHERE emp_hiredate BETWEEN '2005-1-1' AND '2014-12-31'
ORDER BY emp_lname, emp_fname;
