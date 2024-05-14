/*
Q14. Re-escrevendo a Q13 sem usar aninhamento
*/

--OBS.: NÃO HÁ NO NOSSO BD O ATRIBUTO 'SEXO' PARA EMPREGADO

SELECT e.nome
FROM Empregado e, Dependente d
WHERE e.matricula = d.empregado
  AND e.nome = d.nome
  --AND e.sexo = d.nome;