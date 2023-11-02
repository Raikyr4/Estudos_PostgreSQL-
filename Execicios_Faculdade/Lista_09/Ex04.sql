SELECT 
    p.nome                      AS projeto_nm
   ,COUNT(f.matricula)          AS  quantidade_func
FROM public.funcionario_projeto AS fp
JOIN public.projeto     p   ON  p.codigo = fp.fk_projeto
JOIN public.funcionario f   ON f.matricula = fp.fk_funcionario
GROUP BY p.nome
ORDER BY p.nome
