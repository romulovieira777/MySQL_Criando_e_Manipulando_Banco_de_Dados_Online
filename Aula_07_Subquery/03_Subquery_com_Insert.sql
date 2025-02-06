-- Selecionando o banco de dados
USE relacionamento;

-- Exibindo os dados da tabela funcionarios
SELECT
    *
FROM
    funcionarios;

-- Criando a tabela funcionarios_copia
CREATE TABLE IF NOT EXISTS funcionarios_copia AS (
    SELECT
        *
    FROM
        funcionarios
);

-- Exibindo os dados da tabela funcionarios_copia
SELECT
    *
FROM
    funcionarios_copia;

-- Exibindo a estrutura da tabela funcionarios_copia
DESC funcionarios_copia;

-- Criando a tabela funcionarios03
CREATE TABLE IF NOT EXISTS funcionarios03 LIKE funcionarios;

-- Exibindo a estrutura da tabela funcionarios03
DESC funcionarios03;

-- Exibindo os dados da tabela funcionarios03
SELECT
    *
FROM
    funcionarios03;

-- Inserindo os dados da tabela funcionarios na tabela funcionarios03
INSERT INTO
    funcionarios03
SELECT
    *
FROM
    funcionarios;

-- Exibindo os dados da tabela funcionarios03
SELECT
    *
FROM
    funcionarios03;
