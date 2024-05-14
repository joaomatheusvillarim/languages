DROP SEQUENCE Empregado_SEQ;

DROP SEQUENCE Projeto_SEQ;

DROP TABLE Alocacao;

DROP TABLE Projeto;

ALTER TABLE Empregado
  DROP CONSTRAINT fk_empregado_depto;

DROP TABLE Departamento;

ALTER TABLE Empregado
  DROP CONSTRAINT fk_empregado_supervisor;

DROP TABLE Dependente;

DROP TABLE Empregado;