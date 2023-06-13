SELECT c.customer_id, c.contact_name
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON product_id
GROUP BY c.customer_id, c.contact_name
HAVING COUNT(DISTINCT p.category_id) = (SELECT COUNT(DISTINCT category_id) FROM Products);
