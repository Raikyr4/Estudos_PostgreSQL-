SELECT DISTINCT
    pe.cpf
    ,pe.nome                     AS pessoa_nm
    ,f.matricula
    ,COALESCE(t.numero, 'Sem telefone cadastrado') AS telefone
FROM public.funcionario_projeto AS fp
JOIN public.funcionario f   ON  f.matricula = fp.fk_funcionario
JOIN public.pessoa      pe  ON  pe.cpf = f.fk_pessoa
LEFT JOIN (
    SELECT 
        fk_pessoa
        ,numero
        ,ROW_NUMBER() OVER(PARTITION BY fk_pessoa ORDER BY RANDOM()) as rn
    FROM public.telefone
) t ON  pe.cpf = t.fk_pessoa AND t.rn = 1
ORDER BY pe.nome;
