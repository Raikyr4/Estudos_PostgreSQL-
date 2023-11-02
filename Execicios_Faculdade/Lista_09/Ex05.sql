SELECT DISTINCT
    pe.cpf
    ,pe.nome                     AS pessoa_nm
    ,f.matricula
    ,t.numero
FROM public.funcionario_projeto  AS fp
JOIN public.funcionario f   ON  f.matricula = fp.fk_funcionario
JOIN public.pessoa      pe  ON  pe.cpf = f.fk_pessoa
JOIN public.telefone    t   ON  pe.cpf = t.fk_pessoa
ORDER BY pe.nome ,pe.cpf;
