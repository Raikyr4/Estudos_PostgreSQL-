SELECT
    p.name,
    c.name 
FROM products p
JOIN categories c ON c.id = p.id_categories
WHERE p.amount > 100 AND (c.id = 1 OR c.id=2 OR c.id=3 OR c.id =6 OR c.id=9)
ORDER BY c.id ASC  