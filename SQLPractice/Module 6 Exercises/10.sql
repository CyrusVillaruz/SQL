SELECT lgemployee.emp_num, lgemployee.emp_lname, lgemployee.emp_fname, lgsalary_history.sal_from, lgsalary_history.sal_end, lgsalary_history.sal_amount
FROM lgemployee JOIN lgsalary_history ON lgemployee.emp_num = lgsalary_history.emp_num
WHERE lgemployee.emp_num = 83731
OR lgemployee.emp_num = 83745
OR lgemployee.emp_num = 84039
ORDER BY lgemployee.emp_num, lgsalary_history.sal_from;
