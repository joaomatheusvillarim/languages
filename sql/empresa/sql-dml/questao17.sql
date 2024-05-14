/*
Q17. Mostre os empregados que trabalham em todos os projetos
do empregado com mat = 8.
 */

SELECT e.*
FROM Empregado e, Alocacao al
WHERE al.matric = e.matricula
  AND al.codproj = ALL (
    SELECT al.codproj
    FROM Alocacao al
    WHERE al.matric = 8
  ) AND al.matric <> 8;