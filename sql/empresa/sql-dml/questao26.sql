/*
Q.26. Para cada projeto que possui mais de 2 empregados trabalhando,
obter o código do projeto, nome do projeto e número de empregados que
trabalha neste projeto
*/

SELECT p.codproj, p.nome, COUNT(*)
FROM Projeto p, Alocacao al
WHERE p.codproj = al.codproj
GROUP BY p.codproj, p.nome
HAVING COUNT(*) >= 2;