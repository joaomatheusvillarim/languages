/*
Q19. Encontre o total de salários, o maior salário, o menor
salário e a média salarial da relação empregados
 */

SELECT SUM(salario), MAX(salario), MIN(salario), AVG(salario)
FROM Empregado;