-- Seleciona o banco de dados relacionamento
USE relacionamento;

-- Exibe os dados da tabela funcionarios
SELECT
    *
FROM
    funcionarios;

-- Exibe os dados da tabela funcionarios e cargo
SELECT
    *
FROM
    funcionarios, cargo;

-- Exibe os dados da tabela funcionarios e cargo com CROSS JOIN
SELECT
    *
FROM
    funcionarios
CROSS JOIN
    cargo;
