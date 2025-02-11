-- Selecionando o banco de dados
USE relacionamento;

-- Criando a tabela recursiva
CREATE TABLE IF NOT EXISTS recursiva (
    rec_id INT PRIMARY KEY AUTO_INCREMENT
  , rec_nome VARCHAR(100) NOT NULL
  , rec_desc VARCHAR(6000) NOT NULL
  , rec_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  , rec_sementes INT
  , rec_anterior INT
  , FOREIGN KEY (rec_anterior) REFERENCES recursiva(rec_id)
);

-- Exibindo a estrutura da tabela recursiva
DESC recursiva;

-- Inserindo dados na tabela recursiva
INSERT INTO recursiva
    (rec_nome, rec_desc, rec_sementes)
VALUES
    ('Perobas', 'no no no no nooo', 100)
  , ('Ipe', 'bla bla', 200)
  , ('rosas', 'ble ble ble', 300);

-- Exibindo os dados da tabela recursiva
SELECT
    *
FROM
    recursiva;

-- Inserindo dados na tabela recursiva
INSERT INTO recursiva
    (rec_nome, rec_desc, rec_sementes, rec_anterior)
VALUES
    ('Perobas 2', 'no no no no nooo', 25, 1)
  , ('Perobas 3', 'no no no no nooo', 25, 1)
  , ('Perobas 4', 'no no no no nooo', 25, 1);

-- Exibindo os dados da tabela recursiva
SELECT
    *
FROM
    recursiva;
