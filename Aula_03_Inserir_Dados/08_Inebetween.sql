-- Seleciona o banco de dados empresa
USE empresa;

-- Exibe os dados da tabela clientes onde idCliente está entre 5 e 10
SELECT
    *
FROM
    clientes
WHERE
    idCliente >= 5
AND
    idCliente <= 10;

-- Exibe os dados da tabela clientes onde idCliente está entre 5 e 10
SELECT
    *
FROM
    clientes
WHERE
    idCliente BETWEEN 5 AND 10;

-- Exibe os dados da tabela clientes onde idCliente está entre 5 e 10
SELECT
    *
FROM
    clientes
WHERE
    idCliente >= 5
OR
    idCliente <= 10;

-- Exibe os dados da tabela clientes onde idCliente não está entre 5 e 10
SELECT
    *
FROM
    clientes
WHERE
    idCliente NOT BETWEEN 5 AND 10;

-- Exibe os dados da tabela clientes onde idCliente é 5, 10 ou 15
SELECT
    *
FROM
    clientes
WHERE
    idCliente = 5
OR
    idCliente = 10
OR
    idCliente = 15;

-- Exibe os dados da tabela clientes onde idCliente é 5, 10 ou 15
SELECT
    *
FROM
    clientes
WHERE
    idCliente IN (5, 10, 15);

-- Exibe os dados da tabela clientes onde idCliente não é 5, 10 ou 15
SELECT
    *
FROM
    clientes
WHERE
    idCliente <> 5
OR
    idCliente <> 10
OR
    idCliente <> 15;

-- Exibe os dados da tabela clientes onde idCliente não é 5, 10 ou 15
SELECT
    *
FROM
    clientes
WHERE
    idCliente NOT IN (5, 10, 15);