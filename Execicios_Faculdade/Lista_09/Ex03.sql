SELECT 
    pe.nome as pessoa_nm
    ,f.matricula
    ,COUNT(p.nome)    AS quantidade_projeto
FROM public.funcionario_projeto AS fp
JOIN public.projeto     p   ON  p.codigo = fp.fk_projeto
JOIN public.funcionario f   ON f.matricula = fp.fk_funcionario
JOIN public.pessoa      pe  ON pe.cpf = f.fk_pessoa
GROUP BY f.matricula, pe.nome
ORDER BY COUNT(p.nome) DESC, f.matricula ASC;