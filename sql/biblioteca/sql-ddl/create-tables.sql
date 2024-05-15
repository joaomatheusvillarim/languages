CREATE TABLE Usuario (
  codUsu INTEGER,
  nome VARCHAR2(255) NOT NULL,
  endereco VARCHAR2(255) NOT NULL,
  sexo CHAR(1) NOT NULL,
  telefone VARCHAR(11) NOT NULL,

  CONSTRAINT pk_usuario_codusu
    PRIMARY KEY (codUsu)
);

CREATE TABLE Livro (
  codLivro INTEGER,
  titulo VARCHAR2(255) NOT NULL,
  ano INTEGER NOT NULL,
  editora VARCHAR(50) NOT NULL,

  CONSTRAINT pk_livro_codlivro
    PRIMARY KEY (codLivro)
);

CREATE TABLE ExemplarLivro (
  codExemplar INTEGER,
  tipo VARCHAR2(20) NOT NULL,
  estaEmprestado INTEGER NOT NULL,
  codLivro INTEGER NOT NULL,

  CONSTRAINT pk_exemplarlivro_codexemplar
    PRIMARY KEY (codExemplar),
  CONSTRAINT fk_exemplarlivro_codlivro
    FOREIGN KEY (codLivro)
    REFERENCES Livro(codLivro),
  CONSTRAINT check_estaemprestado
    CHECK (estaEmprestado IN (0, 1))
);

CREATE TABLE Emprestimo (
  codUsu INTEGER NOT NULL,
  codExemplar INTEGER NOT NULL,
  dataEmprestimo DATE NOT NULL,
  dataDevolucao DATE,
  valorMulta NUMERIC(10, 2),

  CONSTRAINT fk_emprestimo_codusu
    FOREIGN KEY (codUsu)
    REFERENCES Usuario(codUsu),
  CONSTRAINT fk_emprestimo_codexemplar
    FOREIGN KEY (codExemplar)
    REFERENCES ExemplarLivro(codExemplar),
  CONSTRAINT pk_emprestimo
    PRIMARY KEY (codUsu, codExemplar, dataEmprestimo)
);

CREATE SEQUENCE Usuario_SEQ
  MINVALUE 1
  MAXVALUE 999999
  INCREMENT BY 1
  START WITH 1
  NOCYCLE;
CREATE SEQUENCE Livro_SEQ
  MINVALUE 1
  MAXVALUE 999999
  INCREMENT BY 1
  START WITH 1
  NOCYCLE;
CREATE SEQUENCE ExemplarLivro_SEQ
  MINVALUE 1
  MAXVALUE 999999
  INCREMENT BY 1
  START WITH 1
  NOCYCLE;