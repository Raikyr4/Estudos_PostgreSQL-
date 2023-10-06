SELECT
     p.name
FROM products p
JOIN providers f ON f.id = p.id_providers
WHERE (p.amount BETWEEN 10 AND 20) AND LEFT(f.name, 1) = 'P';
