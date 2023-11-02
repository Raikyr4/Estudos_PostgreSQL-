SELECT 
    p.nome as projeto_nm
    ,f.matricula
    ,pe.nome as pessoa_nm
FROM public.funcionario_projeto AS fp
JOIN public.projeto     p   ON  p.codigo = fp.fk_projeto
JOIN public.funcionario f   ON f.matricula = fp.fk_funcionario
JOIN public.pessoa      pe  ON pe.cpf = f.fk_pessoa
ORDER BY p.nome
