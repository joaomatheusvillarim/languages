/*
Q4. Remova todos os empréstimos do usuário de nome "Maria Silva".
*/

DELETE
FROM Emprestimo
WHERE codUsu IN (
  SELECT codUsu
  FROM Usuario
  WHERE nome = 'Maria Silva'
);