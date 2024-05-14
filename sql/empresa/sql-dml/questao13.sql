/*
Q13. Recupere o nome de cada empregado que tem um
dependente com o mesmo nome e mesmo sexo
 */

--OBS.: NÃO HÁ NO NOSSO BD O ATRIBUTO 'SEXO' PARA EMPREGADO

SELECT e.nome
FROM Empregado e
WHERE EXISTS (
  SELECT d.*
  FROM Dependente d
  WHERE e.matricula = d.empregado
    AND e.nome = d.nome
    --AND e.sexo = d.sexo
);