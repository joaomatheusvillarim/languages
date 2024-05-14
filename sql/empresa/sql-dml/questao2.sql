/*
Q2. Selecione o nome e o endereço de todos os
empregados que trabalham no departamento de
produção
 */

SELECT Empregado.nome, Empregado.endereco
FROM Empregado, Departamento
WHERE Empregado.depto = Departamento.coddep
  AND Departamento.nome = 'Produção';
