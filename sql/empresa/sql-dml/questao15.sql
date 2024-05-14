/*
Q.15 Recupere os nomes dos empregados que não têm
dependentes
 */

SELECT e.nome
FROM Empregado e
WHERE NOT EXISTS (
  SELECT d.*
  FROM Dependente d
  WHERE e.matricula = d.empregado
);