SELECT
    c.nome AS cargo_nm,
    COUNT(f.matricula) AS qtd_func
FROM public.cargo c
LEFT JOIN public.funcionario f ON c.id = f.fk_cargo
LEFT JOIN public.funcionario_projeto fp ON f.matricula = fp.fk_funcionario
LEFT JOIN public.projeto p ON p.codigo = fp.fk_projeto
WHERE p.codigo = 28 OR p.codigo IS NULL
GROUP BY cargo_nm
ORDER BY cargo_nm;
