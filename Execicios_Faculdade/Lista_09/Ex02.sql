SELECT 
    p.nome AS projeto_nm
    ,o.nome AS orgao_nm
    ,f.matricula
    ,pe.nome AS pessoa_nm
FROM public.funcionario_projeto AS fp
JOIN public.projeto     p   ON  p.codigo = fp.fk_projeto
JOIN public.funcionario f   ON  f.matricula = fp.fk_funcionario
JOIN public.pessoa      pe  ON  pe.cpf = f.fk_pessoa
JOIN public.orgao       o   ON  (o.id = p.fk_orgao_responsavel AND o.id = f.fk_orgao)  
ORDER BY p.nome
