-- Seleciona o banco de dados empresa
USE empresa;

-- Remove o cliente com idCliente = 2
DELETE FROM clientes
WHERE
    idCliente = 2;

-- Exibe os dados da tabela clientes
SELECT
    *
FROM
    clientes;

-- Remove o cliente com nomeCliente = 'João'
DELETE FROM clientes
WHERE
    nomeCliente = 'João';

-- Exibe os dados da tabela clientes
SELECT
    *
FROM
    clientes;

-- Remove os clientes com UF de nascimento nula
DELETE FROM clientes
WHERE
    ufNascimento IS NULL;

-- Exibe os dados da tabela clientes
SELECT
    *
FROM
    clientes;

-- Remove todos os clientes
DELETE FROM clientes;

TRUNCATE TABLE clientes;

-- Exibe os dados da tabela clientes
SELECT
    *
FROM
    clientes;
