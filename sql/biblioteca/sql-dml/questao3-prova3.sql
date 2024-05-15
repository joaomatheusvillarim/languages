/*
Q3. Mostre qual foi a maior multa já paga e o nome e endereço do usuário
que a pagou.
*/

SELECT u.nome, u.endereco, e.valorMulta
FROM Usuario u, Emprestimo e
WHERE u.codUsu = e.codUsu
  AND e.valorMulta IN (
    SELECT MAX(e.valorMulta)
    FROM Emprestimo e
  );

/*
Usando >= ALL ao invés de MAX()
*/