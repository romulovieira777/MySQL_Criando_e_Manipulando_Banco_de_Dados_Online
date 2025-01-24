-- Seleciona o banco de dados empresa
USE empresa;

-- Exibe os dados da tabela clientes com idCliente = 3
SELECT
    *
FROM
    clientes
WHERE
    idCliente = 3;

-- Exibe os dados da tabela clientes com ufNascimento = 'RJ'
SELECT
    *
FROM
    clientes
WHERE
    ufNascimento = 'RJ';

-- Exibe os dados da tabela clientes com idCliente diferente de 3
SELECT
    *
FROM
    clientes
WHERE
    idCliente <> 3;

-- Exibe os dados da tabela clientes com ufNascimento diferente de 'RJ'
SELECT
    *
FROM
    clientes
WHERE
    ufNascimento != 'RJ';

-- Exibe os dados da tabela clientes com idCliente maior que 10
SELECT
    *
FROM
    clientes
WHERE
    idCliente > 10;

-- Exibe os dados da tabela clientes com idCliente maior ou igual a 10
SELECT
    *
FROM
    clientes
WHERE
    idCliente >= 10;

-- Exibe os dados da tabela clientes com idCliente menor que 10
SELECT
    *
FROM
    clientes
WHERE
    idCliente < 10;

-- Exibe os dados da tabela clientes com idCliente menor ou igual a 10
SELECT
    *
FROM
    clientes
WHERE
    idCliente <= 10;

-- Exibe os dados da tabela clientes com idCliente menor que 10 e ufNascimento diferente de 'SP'
SELECT
    *
FROM
    clientes
WHERE
    idCliente < 10
AND
    ufNascimento <> 'SP';

-- Exibe os dados da tabela clientes com idCliente menor que 10 ou ufNascimento diferente de 'SP'
SELECT
    *
FROM
    clientes
WHERE
    idCliente < 10
OR
    ufNascimento <> 'SP';

-- Exibe os dados da tabela clientes com idCliente menor que 10 e ufNascimento igual a 'SP'
SELECT
    *
FROM
    clientes
WHERE
    idCliente < 10
OR
    ufNascimento = 'SP';
