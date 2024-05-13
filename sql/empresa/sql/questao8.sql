/*
Q8. Selecione todos os atributos de todos os
empregados do departamento pessoal
 */

SELECT Empregado.*
FROM Empregado, Departamento
WHERE Empregado.depto = Departamento.coddep
  AND Departamento.nome = 'Pessoal';
