/*
Q.31 Obter uma lista de empregados e seus respectivos
departamentos e projetos, listando ordenado pelo nome do
departamento
*/

SELECT d.nome, e.nome, p.nome
FROM Empregado e, Departamento d, Projeto p, Alocacao al
WHERE e.depto = d.coddep
  AND al.matric = e.matricula
  AND al.codproj = p.codproj
ORDER BY d.nome, e.nome;