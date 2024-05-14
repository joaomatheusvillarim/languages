/*
Q.29 Obter os nomes de empregados cujos endereços estão
em Natal, RN

usando LOWER ou UPPER
*/

SELECT nome
FROM Empregado
WHERE UPPER(endereco) LIKE '%NATAL, RN%';