SELECT 
       p.name,
       CASE p.type
           WHEN 'A' THEN 20.0
           WHEN 'B' THEN 70.0
           WHEN 'C' THEN 530.5
       END AS price
FROM products p
ORDER BY 
   CASE p.type
       WHEN 'A' THEN 1
       WHEN 'B' THEN 2
       WHEN 'C' THEN 3
   END,
   p.id DESC;