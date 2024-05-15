/*
Q2. Mostre os códigos dos usuários que efetuaram menos de 10 empréstimos.
*/

SELECT u.codUsu
FROM Usuario u, Emprestimo e
WHERE e.codUsu = u.codUsu
HAVING COUNT(*) < 10
GROUP BY u.codUsu;