/*
Q.27 Selecione os nomes dos empregados que ganham
mais de 1000 e menos de 2000 reais
*/

SELECT nome
FROM Empregado
WHERE salario BETWEEN 1000 AND 2000;