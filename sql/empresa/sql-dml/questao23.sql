/*
Q.23 Obter o nome dos empregados que tenham
2 ou mais dependentes
 */

SELECT e.nome
FROM Empregado e
WHERE (
  SELECT COUNT(*)
  FROM Dependente d
  WHERE e.matricula = d.empregado
) >= 2;

/*
SOLUÇÃO COM HAVING

SELECT e.nome
FROM Empregado e, Dependente d
WHERE e.matricula = d.empregado
HAVING COUNT(*) >= 2
GROUP BY e.nome;
*/