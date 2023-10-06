SELECT
     p.name,
     LENGTH(p.name) AS length
FROM people p
ORDER BY length DESC