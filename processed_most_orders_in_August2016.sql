SELECT e.employee_id, e.first_name, COUNT(*) AS order_count FROM employees e JOIN orders o ON e.employee_id = o.employee_id WHERE YEAR(o.order_date) = 2016 AND MONTH(o.order_date) = 8 GROUP BY e.employee_id, e.first_name ORDER BY order_count DESC LIMIT 1;
