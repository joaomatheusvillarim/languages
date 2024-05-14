/*
Q30. Queremos ver o efeito de dar aos empregados que
trabalham no Projeto 2 um aumento de 10%
*/

SELECT e.nome, 1.1 * e.salario
FROM Empregado e, Projeto p, Alocacao al
WHERE al.codproj = p.codproj
  AND al.matric = e.matricula
  AND p.nome = 'Projeto 2';