select * from estados /*dessa maneira eu retorno todos os dados da tabela*/

select  Sigla, nome as 'Nome do Estado'/*dessa forma eu seleciono apenas as colunas dos nomes e Siglas apenas onde os estados sao da regiao SUL*/
from estados
where regiao = 'Sul'

select  nome, regiao, populacao
from estados
where populacao >= 10
order by populacao desc /*após selecionado as colunas desejadas irá ser retornado de forma DECRESCENTE (quando usamos o 'desc') os dados onde a população é menor ou igual a 10*/