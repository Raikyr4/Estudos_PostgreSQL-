SELECT 
    c.id,
    c.name
FROM customers c
LEFT JOIN locations l ON l.id_customers=c.id 
WHERE l.id IS NULL 
ORDER BY c.id;