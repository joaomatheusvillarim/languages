CREATE TABLE Empregado (
  matricula INTEGER,
  nome VARCHAR(255) NOT NULL,
  endereco VARCHAR(255) NOT NULL,
  salario NUMERIC(10, 2) NOT NULL,
  supervisor INTEGER NOT NULL,
  depto CHAR(2) NOT NULL,

  CONSTRAINT pk_matricula
    PRIMARY KEY (matricula)
);

ALTER TABLE Empregado
  ADD CONSTRAINT fk_matricula
    FOREIGN KEY (supervisor)
    REFERENCES Empregado(matricula);

CREATE TABLE Departamento (
  coddep CHAR(2),
  nome VARCHAR(20) NOT NULL,
  gerente INTEGER NOT NULL,
  dataini DATE NOT NULL,

  CONSTRAINT pk_coddep
    PRIMARY KEY (coddep),
  CONSTRAINT fk_gerente
    FOREIGN KEY (gerente)
    REFERENCES Empregado(matricula)
);

ALTER TABLE Empregado
  ADD CONSTRAINT fk_depto
    FOREIGN KEY (depto)
    REFERENCES Departamento(coddep);

CREATE TABLE Projeto (
  codproj INTEGER,
  nome VARCHAR(20) NOT NULL,
  local VARCHAR(50) NOT NULL,
  depart CHAR(2) NOT NULL,

  CONSTRAINT pk_codproj
    PRIMARY KEY (codproj),
  CONSTRAINT fk_depart
    FOREIGN KEY (depart),
    REFERENCES Departamento(coddep)
);

CREATE TABLE Alocacao (
  matric INTEGER NOT NULL,
  codproj INTEGER NOT NULL,
  horas INTEGER NOT NULL,

  CONSTRAINT fk_matric
    FOREIGN KEY (matric)
    REFERENCES Empregado(matricula),
  CONSTRAINT fk_codproj
    FOREIGN KEY (codproj)
    REFERENCES Projeto(codproj),
  CONSTRAINT pk_matric_codproj
    PRIMARY KEY (matric, codproj)
);

CREATE SEQUENCE Empregado_SEQ
  MINVALUE 1
  MAXVALUE 999999
  INCREMENT BY 1
  START WITH 1
  NOCYCLE;
CREATE SEQUENCE Departamento_SEQ
  MINVALUE 1
  MAXVALUE 999999
  INCREMENT BY 1
  START WITH 1
  NOCYCLE;
CREATE SEQUENCE Projeto_SEQ
  MINVALUE 1
  MAXVALUE 999999
  INCREMENT BY 1
  START WITH 1
  NOCYCLE;
