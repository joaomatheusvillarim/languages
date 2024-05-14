/*
Q.3 Para cada projeto em ‘Fortaleza’, liste o
código do projeto, o departamento que controla
o projeto e o nome do gerente com endereço e
salário
 */

SELECT p.codproj, p.depart, e.nome, e.endereco, e.salario
FROM Projeto p, Departamento d, Empregado e
WHERE p.local = 'Fortaleza'
  AND p.depart = d.coddep
  AND d.gerente = e.matricula