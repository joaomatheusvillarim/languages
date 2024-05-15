/*
Q4. Quais os usuários (código) que mais levaram livros?
*/

SELECT u.codUsu
FROM Usuario u, Emprestimo e
WHERE u.codUsu = e.codUsu
GROUP BY u.nome, u.endereco
HAVING COUNT(*) >= ALL (
  SELECT COUNT(*)
  FROM Emprestimo e
  GROUP BY e.codUsu
);