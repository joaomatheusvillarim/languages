CREATE TABLE Empregado (
  matricula INTEGER,
  nome VARCHAR(255) NOT NULL,
  endereco VARCHAR(255) NOT NULL,
  salario NUMERIC(10, 2) NOT NULL,
  supervisor INTEGER,
  depto CHAR(2) NOT NULL,

  CONSTRAINT pk_empregado_matricula
    PRIMARY KEY (matricula)
);

ALTER TABLE Empregado
  ADD CONSTRAINT fk_empregado_supervisor
    FOREIGN KEY (supervisor)
    REFERENCES Empregado(matricula);

CREATE TABLE Departamento (
  coddep CHAR(2),
  nome VARCHAR(20) NOT NULL,
  gerente INTEGER,
  dataini DATE NOT NULL,

  CONSTRAINT pk_departamento_coddep
    PRIMARY KEY (coddep),
  CONSTRAINT fk_departamento_gerente
    FOREIGN KEY (gerente)
    REFERENCES Empregado(matricula)
);

ALTER TABLE Empregado
  ADD CONSTRAINT fk_empregado_depto
    FOREIGN KEY(depto)
    REFERENCES Departamento(coddep);

CREATE TABLE Projeto (
  codproj INTEGER,
  nome VARCHAR(20) NOT NULL,
  local VARCHAR(50) NOT NULL,
  depart CHAR(2) NOT NULL,

  CONSTRAINT pk_projeto_codproj
    PRIMARY KEY (codproj),
  CONSTRAINT fk_projeto_depart
    FOREIGN KEY (depart)
    REFERENCES Departamento(coddep)
);

CREATE TABLE Alocacao (
  matric Integer,
  codproj Integer,
  horas Integer NOT NULL,

  CONSTRAINT pk_alocacao_matric_codproj
    PRIMARY KEY (matric, codproj),
  CONSTRAINT fk_alocacao_matric
    FOREIGN KEY (matric)
    REFERENCES Empregado(matricula),
  CONSTRAINT fk_alocacao_codproj
    FOREIGN KEY (codproj)
    REFERENCES Projeto(codproj)
);

CREATE TABLE Dependente (
  empregado INTEGER NOT NULL,
  nome VARCHAR(255) NOT NULL,
  idade INTEGER NOT NULL,
  sexo CHAR(1) NOT NULL,

  CONSTRAINT fk_dependente_empregado
    FOREIGN KEY (empregado)
    REFERENCES Empregado(matricula),
  CONSTRAINT pk_dependente_empregado_nome
    PRIMARY KEY (empregado, nome)
);

CREATE SEQUENCE Empregado_SEQ
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