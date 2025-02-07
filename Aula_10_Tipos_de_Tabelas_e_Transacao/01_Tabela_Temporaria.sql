-- Selecionando o banco de dados
USE relacionamento;

-- Exibindo a estrutura da tabela funcionarios
DESC funcionarios;

-- Criando uma tabela temporaria com a estrutura da tabela funcionarios
CREATE TEMPORARY TABLE IF NOT EXISTS funcionarios_temp LIKE funcionarios;

-- Exibindo a estrutura da tabela funcionarios_temp
DESC funcionarios_temp;

-- Exibindo as tabelas do banco de dados
SHOW TABLES;

-- Exibindo os dados da tabela cargo
SELECT
    *
FROM
    cargo;

-- Exibindo a estrutura da tabela cargo
DESC cargo;

-- Criando uma tabela temporaria com a estrutura da tabela cargo
CREATE TEMPORARY TABLE IF NOT EXISTS cargos LIKE funcionarios;

-- Exibindo a estrutura da tabela cargos
DESC cargos;

-- Criando uma tabela temporaria com a estrutura da tabela funcionarios
CREATE TEMPORARY TABLE IF NOT EXISTS temp AS
    SELECT
        *
    FROM
        funcionarios;

-- Exibindo os dados da tabela temporaria temp
SELECT
    *
FROM
    temp;
