SELECT 
    l.name,
    ROUND((l.omega * 1.618), 3) AS "Fator N"
FROM life_registry l
JOIN dimensions d ON  l.dimensions_id = d.id
WHERE (d.name = 'C875' OR d.name = 'C774') and left(l.name,7)='Richard';
