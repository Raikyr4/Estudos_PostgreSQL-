SELECT 
    e.cpf,
    e.enome,
    d.dnome
FROM empregados e
JOIN departamentos d ON e.dnumero = d.dnumero
WHERE e.cpf NOT IN (
    SELECT DISTINCT t.cpf_emp
    FROM trabalha t
)
ORDER BY e.cpf;