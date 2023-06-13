SELECT s.supplier_id, s.contact_name, COUNT(*) AS product_count
FROM suppliers s
JOIN products p ON s.supplier_id = p.supplier_id
JOIN order_details od ON p.product_id = od.product_id
GROUP BY s.supplier_id, s.contact_name
ORDER BY product_count DESC
LIMIT 5;
