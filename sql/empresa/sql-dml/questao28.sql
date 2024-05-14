/*
Q28. Obter os nomes de empregados cujos endereços estão
em Natal, RN
*/

SELECT nome
FROM Empregado
WHERE endereco LIKE '%Natal, RN%';