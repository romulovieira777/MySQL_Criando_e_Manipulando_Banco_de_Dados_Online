-- Seleção da base de dados
USE db_cds;

-- Criando a tabela artistas
CREATE TABLE IF NOT EXISTS artistas (
    cod_art INT NOT NULL AUTO_INCREMENT
  , nome_art VARCHAR(100) NOT NULL
  , PRIMARY KEY (cod_art)
  , UNIQUE (nome_art)
);

-- Exibindo a estrutura da tabela artistas
DESC artistas;

-- Inserção de registros na tabela artistas
INSERT INTO
    artistas
VALUES
    (NULL, 'Marisa Monte')
  , (NULL, 'Baby do Brasil')
  , (NULL, 'Moraes Moreira')
  , (NULL, 'Pepeu Gomes')
  , (NULL, 'Paulinho Boca de Cantor')
  , (NULL, 'Luiz Galvão')
  , (NULL, 'Alceu Valença')
  , (NULL, 'Geraldo Azevedo')
  , (NULL, 'Elba Ramalho')
  , (NULL, 'Carilhos Brown')
  , (NULL, 'Arnaldo Antunes')
  , (NULL, 'Adriana Calcanhoto')
  , (NULL, 'Aline Barros')
  , (NULL, 'Gal Costa')
  , (NULL, 'Chico Buarque')
  , (NULL, 'Rita Lee')
  , (NULL, 'Skank')
  , (NULL, 'Lulu Santos')
  , (NULL, 'Anitta');

-- Exibe os dados da tabela artistas
SELECT
    *
FROM
    artistas;

-- Criando a tabela gravadoras
CREATE TABLE IF NOT EXISTS gravadoras (
    cod_grav INT NOT NULL AUTO_INCREMENT PRIMARY KEY
  , nome_grav VARCHAR(50) NOT NULL UNIQUE
);

-- Exibindo a estrutura da tabela gravadoras
DESC gravadoras;

-- Inserção de registros na tabela gravadoras
INSERT INTO
    gravadoras
VALUES
    (NULL, 'Phonomotor')
  , (NULL, 'Biscoito Fino')
  , (NULL, 'Som Livre')
  , (NULL, 'Sony Music')
  , (NULL, 'Universal')
  , (NULL, 'Emil');

-- Exibe os dados da tabela gravadoras
SELECT
    *
FROM
    gravadoras;

-- Criando a tabela categorias
CREATE TABLE IF NOT EXISTS categorias (
    cod_cat INT NOT NULL AUTO_INCREMENT
  , nome_cat VARCHAR(50) NOT NULL
  , CONSTRAINT pk_cat PRIMARY KEY (cod_cat)
  , CONSTRAINT uq_cat UNIQUE (nome_cat)
);

-- Exibindo a estrutura da tabela categorias
DESC categorias;

-- Inserção de registros na tabela categorias
INSERT INTO
    categorias
VALUES
    (NULL, 'MPB')
  , (NULL, 'Trilha Sonora')
  , (NULL, 'Gospel')
  , (NULL, 'Rock Nacional');

-- Exibe os dados da tabela categorias
SELECT
    *
FROM
    categorias;

-- Criando a tabela titulos
CREATE TABLE IF NOT EXISTS titulos (
    cod_tit INT AUTO_INCREMENT
  , cod_cat INT NOT NULL
  , cod_grav INT NOT NULL
  , nome_cd VARCHAR(100) NOT NULL
  , val_compra DECIMAL(10, 2) NOT NULL
  , val_cd DECIMAL(10, 2) NOT NULL
  , qtd_estq INT NOT NULL
  , CONSTRAINT pk_tit PRIMARY KEY (cod_tit)
  , CONSTRAINT uq_tit UNIQUE (nome_cd)
  , CONSTRAINT fk_tit_1 FOREIGN KEY (cod_cat) REFERENCES categorias (cod_cat)
  , CONSTRAINT fk_tit_2 FOREIGN KEY (cod_grav) REFERENCES gravadoras (cod_grav)
  , CONSTRAINT ch_tit_1 CHECK (val_cd >= 0)
  , CONSTRAINT ch_tit_2 CHECK (qtd_estq >= 0)
);

-- Exibindo a estrutura da tabela titulos
DESC titulos;

-- Inserção de registros na tabela titulos
INSERT INTO
    titulos
VALUES
    (NULL, 1, 1, 'Tribalistas', 30.00, 150.00, 1500)
  , (NULL, 1, 3, 'Acabou Chorare Novos Baianos se Encontraram', 50.00, 200.00, 500)
  , (NULL, 1, 4, 'O Grande Encontro', 60.00, 120.00, 1000)
  , (NULL, 1, 2, 'Estratosferica', 50.00, 70.00, 2000)
  , (NULL, 1, 2, 'A Caravana', 55.00, 98.00, 500)
  , (NULL, 1, 4, 'Loucura', 30.00, 300.00, 200)
  , (NULL, 3, 4, 'Graça Extraordinária', 20.00, 250.00, 100)
  , (NULL, 4, 2, 'Reza', 30.00, 130.00, 300)
  , (NULL, 1, 5, 'Recanto', 30.00, 90.00, 500)
  , (NULL, 1, 6, 'O Que Você Quer Saber de Verdade', 30.00, 180.00, 500);

-- Exibe os dados da tabela titulos
SELECT
    *
FROM
    titulos;

-- Criando a tabela titulos_artistas
CREATE TABLE IF NOT EXISTS titulos_artistas (
    cod_tit INT NOT NULL AUTO_INCREMENT
  , cod_art INT NOT NULL
  , CONSTRAINT pk_titart PRIMARY KEY (cod_tit, cod_art)
  , CONSTRAINT fk1_titart FOREIGN KEY (cod_tit) REFERENCES titulos (cod_tit)
  , CONSTRAINT fk2_titart FOREIGN KEY (cod_art) REFERENCES artistas (cod_art)
);

-- Exibindo a estrutura da tabela titulos_artistas
DESC titulos_artistas;

-- Inserção de registros na tabela titulos_artistas
INSERT INTO
    titulos_artistas
VALUES
    (1, 1)
  , (1, 10)
  , (1, 11)
  , (2, 2)
  , (2, 3)
  , (2, 4)
  , (2, 5)
  , (2, 6)
  , (3, 7)
  , (3, 8)
  , (3, 9)
  , (4, 14)
  , (5, 15)
  , (6, 12)
  , (7, 13)
  , (8, 16)
  , (9, 14)
  , (10, 1);

-- Exibe os dados da tabela titulos_artistas
SELECT
    *
FROM
    titulos_artistas;
