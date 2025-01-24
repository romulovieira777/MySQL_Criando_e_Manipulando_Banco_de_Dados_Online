-- Seleciona o banco de dados empresa
USE empresa;


SELECT
    clientes.ufNascimento
FROM
    clientes;


SELECT DISTINCT
    clientes.ufNascimento
FROM
    clientes;


SELECT
    *
FROM
    clientes
WHERE
    nomeCliente = 'Nilvan';


SELECT
    *
FROM
    clientes
WHERE
    nomeCliente LIKE 'Nilvan';


SELECT
    *
FROM
    clientes
WHERE
    nomeCliente LIKE 'an%';


SELECT
    *
FROM
    clientes
WHERE
    nomeCliente LIKE '%an';


SELECT
    *
FROM
    clientes
WHERE
    nomeCliente LIKE '%an%';


SELECT
    *
FROM
    clientes
WHERE
    nomeCliente NOT LIKE '%an%';


SELECT
    *
FROM
    clientes
WHERE
    nomeCliente LIKE 'an%to%';


SELECT
    *
FROM
    clientes
WHERE
    nomeCliente LIKE 'an%to%t%';