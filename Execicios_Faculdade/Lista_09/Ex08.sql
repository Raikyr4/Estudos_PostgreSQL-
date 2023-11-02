SELECT
    o.nome       AS orgao_nm,
    c.nome       AS cargo_nm,
    COUNT(f.matricula) 
FROM public.funcionario f
JOIN public.cargo c ON c.id = f.fk_cargo
JOIN public.orgao o ON o.id = f.fk_orgao
WHERE o.id = 1
GROUP BY cargo_nm, orgao_nm
ORDER BY cargo_nm
