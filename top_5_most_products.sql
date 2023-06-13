SELECT product_id, product_name, SUM(quantity_per_unit) AS total_quantity FROM products p INNER JOIN orders o ON product_id GROUP BY product_id, product_name ORDER BY total_quantity DESC LIMIT 5