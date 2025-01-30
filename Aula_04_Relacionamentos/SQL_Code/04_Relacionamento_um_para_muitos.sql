-- Seleciona o banco de dados relacionamento
USE relacionamento;

-- Deletando a tabela conjuge
DROP TABLE conjuge;

-- Deletando a tabela funcionarios
DROP TABLE funcionarios;

-- Cria a tabela cargo
CREATE TABLE IF NOT EXISTS cargo (
    car_id INT AUTO_INCREMENT PRIMARY KEY
  , car_nome VARCHAR(100)
);

-- Insere dados na tabela cargo
INSERT INTO
    cargo (car_nome)
VALUES
    ('Medico'),
    ('Jornalista'),
    ('Arquiteto'),
    ('Radialista');

-- Exibe a estrutura da tabela cargo
DESC cargo;

-- Exibe os dados da tabela cargo
SELECT
    *
FROM
    cargo;

-- Cria a tabela funcionarios
CREATE TABLE IF NOT EXISTS relacionamento.funcionarios (
    fun_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
  , fun_nome VARCHAR(100) NOT NULL
  , fun_sexo ENUM('M', 'F') NOT NULL DEFAULT 'M'
  , fun_salario DECIMAL(10, 2)
  , car_id INT NOT NULL
  , FOREIGN KEY (car_id) REFERENCES cargo(car_id)
);

-- Exibe a estrutura da tabela funcionarios
DESC relacionamento.funcionarios;

-- Insere dados na tabela funcionarios
INSERT INTO
    funcionarios (fun_nome, fun_salario, car_id)
VALUES
    ('Luis Melodia', 6500.00, 2),
    ('Luis Airao', 7850.00, 3),
    ('Luis Tatit', 3268.00, 2),
    ('Marcos de Barros', 9854.00, 1),
    ('Elton Soares', 1234.00, 2),
    ('Milton Cruz', 8521.00, 3),
    ('Sandro Bueno', 3578.00, 2),
    ('Ivan Narciso', 4415.00, 1);

-- Exibe os dados da tabela funcionarios
SELECT
    *
FROM
    funcionarios;
