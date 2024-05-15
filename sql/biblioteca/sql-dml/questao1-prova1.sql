/*
Q1. Crie uma visão que mostra os nomes e os endereços dos usuários
que nunca atrasaram a devolução dos livros.
*/

CREATE VIEW nunca_atrasaram AS
SELECT u.nome, u.endereco
FROM Usuario u
WHERE NOT EXISTS (
  SELECT e.*
  FROM Emprestimo e
  WHERE e.codUsu = u.codUsu
    AND e.valorMulta IS NOT NULL
);