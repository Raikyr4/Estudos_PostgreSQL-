SELECT
    pe.nome
    ,TO_CHAR(pe.data_nascimento, 'MM/DD') AS aniversario
FROM public.pessoa  pe
JOIN public.funcionario f ON f.fk_pessoa = pe.cpf
WHERE EXTRACT(MONTH FROM pe.data_nascimento) = 12
ORDER BY pe.nome
