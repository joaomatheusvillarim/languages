/*
Q.3 Para cada projeto em ‘Fortaleza’, liste o
código do projeto, o departamento que controla
o projeto e o nome do gerente com endereço e
salário
 */

SELECT Projeto.codproj, Projeto.depart, Empregado.nome, Empregado.endereco, Empregado.salario
FROM Projeto, Departamento, Empregado
WHERE Projeto.depart = Departamento.coddep
  AND Departamento.gerente = Empregado.matricula
  AND Projeto.local = 'Fortaleza';
