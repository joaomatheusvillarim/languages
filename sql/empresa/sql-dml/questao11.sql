/*
Q11. Liste todos os nomes de projetos que envolvem o
empregado ‘Silva’ como trabalhador ou como gerente do
departamento que controla o projeto.
 */

SELECT DISTINCT p.nome
FROM Projeto p, Empregado e, Alocacao al, Departamento d
WHERE e.nome LIKE '%Silva'
  AND (
    (
      p.depart = d.coddep
        AND d.gerente = e.matricula
    ) OR (
      al.codproj = p.codproj
        AND al.matric = e.matricula
    )
  );