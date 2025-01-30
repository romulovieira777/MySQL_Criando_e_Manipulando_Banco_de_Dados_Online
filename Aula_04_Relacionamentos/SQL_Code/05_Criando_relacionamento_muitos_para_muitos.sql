-- Seleciona o banco de dados relacionamento
USE relacionamento;

-- Cria a tabela funcionario
CREATE TABLE IF NOT EXISTS relacionamento.funcionario (
    fun_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
  , fun_nome VARCHAR(100) NOT NULL
  , fun_sexo ENUM('M', 'F') NOT NULL DEFAULT 'M'
  , fun_salario DECIMAL(10, 2)
);

-- Exibe a estrutura da tabela funcionarios
DESC relacionamento.funcionario;

-- Insere dados na tabela funcionario
INSERT INTO
    funcionario (fun_nome, fun_salario)
VALUES
    ('Luis Melodia', 6500.00),
    ('Luis Airao', 7850.00),
    ('Luis Tatit', 3268.00),
    ('Marcos de Barros', 9854.00),
    ('Elton Soares', 1234.00),
    ('Milton Cruz', 8521.00),
    ('Sandro Bueno', 3578.00),
    ('Ivan Narciso', 4415.00);

-- Exibe os dados da tabela funcionario
SELECT
    *
FROM
    funcionario;

-- Cria a tabela treinamento
CREATE TABLE IF NOT EXISTS relacionamento.treinamento (
    trei_id INT AUTO_INCREMENT PRIMARY KEY
  , trei_nome VARCHAR(100) NOT NULL
);

-- Exibe a estrutura da tabela treinamento
DESC relacionamento.treinamento;

-- Insere dados na tabela treinamento
INSERT INTO
    treinamento (trei_nome)
VALUES
    ('Excell'),
    ('MySQL'),
    ('Project');

-- Exibe os dados da tabela treinamento
SELECT
    *
FROM
    treinamento;

-- Cria a tabela func_trei
CREATE TABLE IF NOT EXISTS relacionamento.func_trei (
    fun_id INT
  , trei_id INT
  , PRIMARY KEY (fun_id, trei_id)
  , FOREIGN KEY (fun_id) REFERENCES funcionario(fun_id)
  , FOREIGN KEY (trei_id) REFERENCES treinamento(trei_id)
);

-- Exibe a estrutura da tabela func_trei
DESC relacionamento.func_trei;

-- Insere dados na tabela func_trei
INSERT INTO
    func_trei
VALUES
    (1, 2)
  , (1, 3)
  , (2, 1)
  , (2, 2)
  , (2, 3);

-- Exibe os dados da tabela func_trei
SELECT
    *
FROM
    func_trei;
