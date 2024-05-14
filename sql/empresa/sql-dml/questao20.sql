/*
Q20. Encontre o maior e menor salário do departamento de
Produção
 */

SELECT MAX(e.salario), MIN(e.salario)
FROM Empregado e, Departamento d
WHERE d.nome = 'Produção'
  AND e.depto = d.coddep;