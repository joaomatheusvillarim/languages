/*
Q2. Remova todos os empréstimos de 'João Silva'.
*/

DELETE
FROM Emprestimo
WHERE codUsu IN (
  SELECT codUsu
  FROM Usuario
  WHERE nome = 'João Silva'
);