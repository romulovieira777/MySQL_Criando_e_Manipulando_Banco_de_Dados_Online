-- Seleciona o banco de dados relacionamento
USE relacionamento;

-- Apaga a tabela conjuge
DROP TABLE IF EXISTS conjuge;

-- Exibe a estrutura da tabela conjuge
DESC conjuge;

-- Cria a tabela conjuge
CREATE TABLE IF NOT EXISTS relacionamento.conjuge (
    fun_id INT PRIMARY KEY
  , conj_nome VARCHAR(100)
  , conNasc DATE
  , FOREIGN KEY (fun_id) REFERENCES funcionarios(fun_id)
);

-- Exibe os dados da tabela conjuge
SELECT
    *
FROM
    funcionarios;

-- Insere dados na tabela funcionarios
INSERT INTO
        funcionarios (fun_nome, fun_salario)
VALUES
    ('Luis Melodia', 3000.00);

-- Exibe os dados da tabela funcionarios
SELECT
    *
FROM
    funcionarios;

-- Insere dados na tabela conjuge
INSERT INTO
    conjuge
VALUES
    (1, 'Tete Spinola', '1990-03-25');

INSERT INTO
    conjuge
VALUES
    (3, 'Zeze Mota', '1990-03-25');

-- Exibe os dados da tabela conjuge
SELECT
    *
FROM
    conjuge;
