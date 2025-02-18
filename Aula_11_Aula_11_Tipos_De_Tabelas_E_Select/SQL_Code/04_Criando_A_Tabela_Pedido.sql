-- Seleção da base de dados
USE db_cds;

-- Criando a tabela pedidos
CREATE TABLE IF NOT EXISTS pedidos (
    num_ped INT NOT NULL AUTO_INCREMENT
  , cod_cli INT NOT NULL
  , cod_func INT NOT NULL
  , data_ped DATETIME NOT NULL
  , CONSTRAINT pk_ped PRIMARY KEY (num_ped)
  , CONSTRAINT fk_ped_1 FOREIGN KEY (cod_cli) REFERENCES clientes (cod_cli)
  , CONSTRAINT fk_ped_2 FOREIGN KEY (cod_func) REFERENCES funcionarios (cod_func)
);

-- Exibindo a estrutura da tabela pedidos
DESC pedidos;

-- Inserção de registros na tabela pedidos
INSERT INTO
    pedidos
VALUES
    (NULL, 1, 2, '2012/05/02')
  , (NULL, 3, 4, '2012/05/02')
  , (NULL, 4, 5, '2012/06/02')
  , (NULL, 1, 4, '2013/03/02')
  , (NULL, 7, 5, '2013/03/02')
  , (NULL, 4, 4, '2013/03/02')
  , (NULL, 5, 5, '2013/03/02')
  , (NULL, 8, 2, '2013/03/02')
  , (NULL, 2, 2, '2013/03/02')
  , (NULL, 7, 1, '2013/03/02');

-- Exibindo os registros da tabela pedidos
SELECT
    *
FROM
    pedidos;

-- Criação da tabela titulos_pedidos
CREATE TABLE IF NOT EXISTS titulos_pedidos (
    num_ped INT            NOT NULL
  , cod_tit INT            NOT NULL
  , qtd_cd  INT            NOT NULL
  , val_cd  DECIMAL(10, 2) NOT NULL
  , CONSTRAINT pk_titped PRIMARY KEY (num_ped, cod_tit)
  , CONSTRAINT fk_titped_4 FOREIGN KEY (cod_tit) REFERENCES titulos (cod_tit)
  , CONSTRAINT fk_titped_3 FOREIGN KEY (num_ped) REFERENCES pedidos (num_ped)
  , CONSTRAINT ch_titped_2 CHECK (qtd_cd >= 1)
  , CONSTRAINT ch_titped_3 CHECK (val_cd >= 0)
);

-- Exibindo a estrutura da tabela titulos_pedidos
DESC titulos_pedidos;

-- Inserção de registros na tabela titulos_pedidos
INSERT INTO
    titulos_pedidos
VALUES
    (1, 1, 2, 150.00)
  , (1, 2, 3, 200.00)
  , (2, 1, 1, 150.00)
  , (2, 2, 3, 200.00)
  , (3, 1, 2, 150.00)
  , (4, 2, 3, 200.00)
  , (5, 1, 2, 150.00)
  , (6, 2, 3, 200.00)
  , (6, 3, 1, 120.00)
  , (7, 4, 2, 70.00)
  , (8, 1, 4, 150.00)
  , (9, 2, 3, 200.00)
  , (10, 7, 2, 250.00);

-- Exibindo os registros da tabela titulos_pedidos
SELECT
    *
FROM
    titulos_pedidos;
