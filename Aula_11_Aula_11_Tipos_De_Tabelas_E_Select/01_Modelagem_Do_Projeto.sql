-- Criação da base de dados do projeto CDS
CREATE DATABASE IF NOT EXISTS db_cds;

-- Seleção da base de dados
USE db_cds;

-- Criação da tabela de funcionários
CREATE TABLE IF NOT EXISTS db_cds.funcionarios (
    cod_func INT NOT NULL AUTO_INCREMENT
  , nome_func VARCHAR(100) NOT NULL
  , end_func VARCHAR(200) NOT NULL
  , sal_func DECIMAL(10,2) NOT NULL DEFAULT 0
  , sexo_func CHAR(1) NOT NULL DEFAULT 'F'
  , CONSTRAINT pk_func PRIMARY KEY (cod_func)
  , CONSTRAINT ch_func_1 CHECK (sal_func >= 0)
  , CONSTRAINT ch_func_2 CHECK (sexo_func IN ('F', 'M'))
);

-- Exibição da estrutura da tabela de funcionários
DESC db_cds.funcionarios;

-- Inserção de registros na tabela de funcionários
INSERT INTO
    db_cds.funcionarios
VALUES
    (NULL, 'Vânia Gabriela Pereira', 'Rua A', 2500.00, 'F')
  , (NULL, 'Noberto Pereira da Silva', 'Rua B', 2300.00, 'M')
  , (NULL, 'Olavo Linhares', 'Rua C', 2580.00, 'M')
  , (NULL, 'Paula da Silva', 'Rua D', 3000.00, 'F')
  , (NULL, 'Rolando Rocha', 'Rua E', 2000.00, 'M');

-- Exibição dos registros da tabela de funcionários
SELECT
    *
FROM
    db_cds.funcionarios;

-- Criação da tabela de dependentes
CREATE TABLE IF NOT EXISTS db_cds.dependentes (
    cod_dep INT NOT NULL AUTO_INCREMENT
  , cod_func INT NOT NULL
  , nome_dep VARCHAR(100) NOT NULL
  , sexo_dep CHAR(1) NOT NULL DEFAULT 'M'
  , CONSTRAINT pk_dep PRIMARY KEY (cod_dep)
  , CONSTRAINT fk_dep FOREIGN KEY (cod_func) REFERENCES db_cds.funcionarios (cod_func)
  , CONSTRAINT ch_dep CHECK (sexo_dep IN ('F', 'M'))
);

-- Exibição da estrutura da tabela de dependentes
DESC db_cds.dependentes;

-- Inserção de registros na tabela de dependentes
INSERT INTO
    db_cds.dependentes
VALUES
    (NULL, 1, 'Ana Pereira', 'F')
  , (NULL, 1, 'Roberto Pereira', 'M')
  , (NULL, 1, 'Celso Pereira', 'M')
  , (NULL, 3, 'Brisa Linhares', 'F')
  , (NULL, 3, 'Mari Sol Linhares', 'F')
  , (NULL, 4, 'Sonia da Silva', 'F');

-- Exibição dos registros da tabela de dependentes
SELECT
    *
FROM
    db_cds.dependentes;
