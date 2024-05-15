/*
Q32. Quais departamentos têm mais empregados?
*/

SELECT depto
FROM Empregado
HAVING COUNT(*) >= ALL (
  SELECT COUNT(*)
  FROM Empregado
  GROUP BY depto
)
GROUP BY depto;