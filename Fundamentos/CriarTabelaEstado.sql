/*Criando a tabela estado!*/

create table estados (

    /*--cada linha do código iniciada com um NOME é uma coluna da tabela
    --cada coluna possui seu tipo de dados e suas regras*/

    id INT UNSIGNED NOT NULL AUTO_INCREMENT, /*--coluna 'id' feito de int nao nulo q se atuo incrementa quando add*/
    nome VARCHAR(45) NOT NULL, /*-- coluna 'nome' feita de string/varchar de 45 carateres de limite e que nao aceita vazio*/
    sigla VARCHAR(2) NOT NULL,
    regiao ENUM('Norte', 'Nordeste','Centro-Oeste', 'Sudeste', 'Sul') NOT NULL,
    populacao DECIMAL(5,2) NOT NULL,

   /* --Características de algumas colunas */

    PRIMARY KEY (id),   /*-- chave primaria*/
    UNIQUE KEY (nome),  /*-- nao permite que haja nenhum nome repetido */
    UNIQUE KEY (sigla)  /*-- nao permite que haja nenhuma sigla repetida */
); 