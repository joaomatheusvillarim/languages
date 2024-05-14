/*
Q16. Selecione a matricula de todos os empregados que trabalham
nos projetos 1, 2, ou 3
 */

SELECT DISTINCT al.matric
FROM Alocacao al
WHERE al.codproj IN (1, 2, 3);