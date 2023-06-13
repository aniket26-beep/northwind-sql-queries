SELECT c.customer_id, c.contact_name, COUNT(*) AS product_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.contact_name
ORDER BY product_count DESC
LIMIT 3;
