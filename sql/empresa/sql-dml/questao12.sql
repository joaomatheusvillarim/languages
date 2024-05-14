/*
Q12: A consulta Q11 poderia ser reescrita da
seguinte forma:
 */

SELECT p.nome
FROM Projeto p
WHERE p.codproj IN (
    SELECT p.codproj
    FROM Projeto p, Departamento d, Empregado e
    WHERE e.nome LIKE '%Silva'
      AND p.depart = d.coddep
      AND d.gerente = e.matricula
  ) OR codproj IN (
    SELECT p.codproj
    FROM Projeto p, Alocacao al, Empregado e
    WHERE e.nome LIKE '%Silva'
      AND al.codproj = p.codproj
      AND al.matric = e.matricula
  );