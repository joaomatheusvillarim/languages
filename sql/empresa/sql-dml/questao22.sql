/*
Q.22 Obter o número de salários distintos do departamento de
Contabilidade
 */

SELECT COUNT(DISTINCT e.salario)
FROM Empregado e, Departamento d
WHERE d.nome = 'Contabilidade'
  AND e.depto = d.coddep;