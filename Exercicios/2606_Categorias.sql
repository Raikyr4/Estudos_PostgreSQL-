SELECT 
    p.id,
    p.name 
FROM products p
JOIN categories c ON c.id = p.id_categories
WHERE LEFT(c.name,5) = 'super'