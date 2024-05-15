/*
Q1. Crie uma visão que mostra os nomes e endereços dos usuários que já
atrasaram a devolução dos livros mais de 5 vezes.
*/

CREATE VIEW Atrasaram_Cinco_Ou_Mais AS
SELECT u.nome, u.endereco
FROM Usuario u, Emprestimo e
WHERE e.codUsu = u.codUsu
  AND e.valorMulta IS NOT NULL
HAVING COUNT(*) >= 5
GROUP BY u.nome, u.endereco;