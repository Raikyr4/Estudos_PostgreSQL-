/*NUNCA USAR UPDATE sem WHERE*/

update estados set nome = 'Maranhão' 
where sigla = 'MA'
/*usamos o update para alterar algum dado da tabela
o SET é para setar um novo dado no respectivo atributo*/

select nome from estados where sigla = "MA" /*Consulta para verificar se ocorreu o update corretamente*/

update estados set nome = 'Paraná', populacao = 11.32
where sigla = 'PR'

select  nome, sigla, populacao from estados
where sigla = "PR"