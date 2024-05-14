/*
Q18. Selecione os nomes de todos os empregados que não
têm supervisores
 */

SELECT nome
FROM Empregado
WHERE supervisor IS NULL;