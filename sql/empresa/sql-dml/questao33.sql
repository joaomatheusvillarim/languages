/*
Q33. Quais empregados não ganham o menor salário pago pela
empresa?
*/

SELECT matricula
FROM Empregado
WHERE salario > ANY (
  SELECT salario
  FROM Empregado
  GROUP BY matricula
);