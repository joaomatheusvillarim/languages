/*
Q25. Para cada projeto, obter o código do projeto,
seu nome e o número de empregados que
trabalham naquele projeto
*/

SELECT p.codproj, p.nome, COUNT(*)
FROM Projeto p, Alocacao al
WHERE p.codproj = al.codproj
GROUP BY p.codproj, p.nome;