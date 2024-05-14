/*
Q4. Para cada empregado, recupere seu nome e o nome do
seu supervisor
 */

SELECT e.nome, s.nome
FROM Empregado e, Empregado s
WHERE e.supervisor IS NOT NULL
  AND e.supervisor = s.matricula;