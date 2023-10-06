SELECT 
    P.name AS name, 
    round(P.salary*0.1,2) AS tax
FROM people P
WHERE P.salary > 3000.00;