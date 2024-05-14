/*
Q24. Para cada departamento, obter o código do
departamento, o número de empregados e a média salarial
*/

SELECT d.coddep, COUNT(*), AVG(e.salario) 
FROM Departamento d, Empregado e
WHERE e.depto = d.coddep
GROUP BY d.coddep;