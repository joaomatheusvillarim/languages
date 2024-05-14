/*
Q8. Selecione todos os atributos de todos os
empregados do departamento pessoal
 */

SELECT e.*
FROM Empregado e, Departamento d
WHERE e.depto = d.coddep
  AND d.nome = 'Pessoal';