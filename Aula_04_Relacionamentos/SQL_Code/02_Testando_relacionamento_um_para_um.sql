-- Seleciona o banco de dados relacionamento
USE relacionamento;

-- Apaga a tabela conjuge
DROP TABLE IF EXISTS conjuge;

-- Insere dados na tabela funcionarios
INSERT INTO
    funcionarios
VALUES
    (NULL, 'Itamar Assunção', 'M', 2000.69);

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
    (NULL, 'Tete Spinola', '1990-03-25', 2);

INSERT INTO
    conjuge
VALUES
    (NULL, 'Zeze Mota', '1990-03-25', 1);

-- Exibe os dados da tabela conjuge
SELECT
    *
FROM
    conjuge;

-- Remove o conjuge com fun_id = 2
DELETE FROM
    conjuge
WHERE
    fun_id = 2;

-- Exibe os dados da tabela conjuge
SELECT
    *
FROM
    conjuge;

-- Remove o funcionario com fun_id = 2
DELETE FROM
    funcionarios
WHERE
    fun_id = 2;

-- Exibe os dados da tabela funcionarios
SELECT
    *
FROM
    funcionarios;
