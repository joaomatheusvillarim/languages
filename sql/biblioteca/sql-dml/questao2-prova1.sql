/*
Q2. Qual o total arrecadado com multa de cada usuário? Mostre o resultado
em ordem decrescente pelo valor da multa.
*/

SELECT u.codUsu, SUM(e.valormulta)
FROM Usuario u, Emprestimo e
WHERE e.codUsu = u.codUsu
GROUP BY u.codUsu
ORDER BY SUM(e.valorMulta) DESC NULLS LAST;