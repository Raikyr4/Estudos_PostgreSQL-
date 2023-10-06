SELECT CONCAT(
    LEFT(cpf, 3),
    '.', SUBSTRING(cpf, 4, 3),
    '.', SUBSTRING(cpf, 7, 3),
    '-', RIGHT(cpf, 2)
) AS CPF
FROM natural_person;
