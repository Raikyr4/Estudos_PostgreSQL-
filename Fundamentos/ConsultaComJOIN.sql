select 
    e.nome as Estado,
    c.nome as Cidade,
    regiao as Região
from estados e, cidades c /*as letras 'e' e 'c' sao apelidos dados as tabelas para facilitar na referenciação dos dados através da notação ponto '.'*/
where e.id = c.estado_id;

/*---------------------------------------------------*/

select 
    c.nome as Cidade,
    e.nome as Estado,
    regiao as Região
from estados e
inner join cidades c /*JOIN -> serve para fazer uma junção das tabelas a partir da condição a seguir */
    on e.id = c.estado_id

    /*Existe tipos de JOIN :
        - inner (junção interna) => trás apenas os dados que estão relacionados (chave estrangeira e a primária)
        - left  
        - right
    */

select * from prefeitos;
select * from cidades;

select * from cidades c inner join prefeitos p on c.id = p.cidade_id;
select * from cidades c left outer join prefeitos p on c.id = p.cidade_id;
select * from cidades c right join prefeitos p on c.id = p.cidade_id;
-- select * from cidades c full join prefeitos p on c.id = p.cidade_id;

select * from cidades c left outer join prefeitos p on c.id = p.cidade_id
union --junta os dois comandos
select * from cidades c right join prefeitos p on c.id = p.cidade_id;