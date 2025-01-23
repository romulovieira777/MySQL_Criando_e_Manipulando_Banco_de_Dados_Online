-- Seleciona o banco de dados empresa
USE empresa;

-- Atualiza a data de nascimento e a UF de nascimento do cliente com id 13
UPDATE
    clientes
SET
    dataNascimento = '2000-07-12'
  , ufNascimento = 'PR'
WHERE
    idCliente = 13;

-- Exibe os dados da tabela clientes
SELECT
    *
FROM
    clientes;

-- Atualiza a data de nascimento e a UF de nascimento do cliente com id 5
UPDATE
    clientes
SET
    dataNascimento = '2002-09-18'
  , ufNascimento = 'PR'
WHERE
    idCliente = 5;

-- Exibe os dados da tabela clientes
SELECT
    *
FROM
    clientes;

-- Atualiza a UF de nascimento dos clientes que não possuem UF de nascimento
UPDATE
    clientes
SET
    ufNascimento = 'MG'
WHERE
    ufNascimento IS NULL;

-- Exibe os dados da tabela clientes
SELECT
    *
FROM
    clientes;
