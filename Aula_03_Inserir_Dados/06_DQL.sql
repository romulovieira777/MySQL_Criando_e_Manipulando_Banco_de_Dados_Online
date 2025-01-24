-- Seleciona o banco de dados empresa
USE empresa;

-- Exibe os dados da tabela clientes com os campos nomeCliente, dataNascimento, idCliente e ufNascimento
SELECT
    clientes.nomeCliente     AS 'Nome do Cliente'
  , clientes.dataNascimento  AS 'Nascimento'
  , clientes.idCliente * 100 AS 'Salário'
  , 'Brasileiro'             AS 'Nacionalidade'
FROM
    clientes;

-- Exibe os dados da tabela clientes e ordena pelo campo ufNascimento
SELECT
    *
FROM
    clientes
ORDER BY
    ufNascimento;

-- Exibe os dados da tabela clientes e ordena pelo campo ufNascimento e dataNascimento
SELECT
    *
FROM
    clientes
ORDER BY
    ufNascimento
  , dataNascimento;

-- Exibe os dados da tabela clientes e ordena pelo campo ufNascimento em ordem decrescente e dataNascimento em ordem crescente
SELECT
    *
FROM
    clientes
ORDER BY
    ufNascimento ASC
  , dataNascimento DESC;

-- Exibe os dados da tabela clientes e ordena pelo campo ufNascimento em ordem decrescente e dataNascimento em ordem decrescente
SELECT
    *
FROM
    clientes
ORDER BY
    ufNascimento DESC
  , dataNascimento DESC;

-- Exibe os dados da tabela clientes e ordena pelo campo ufNascimento em ordem crescente e dataNascimento em ordem crescente
SELECT
    *
FROM
    clientes
ORDER BY
    4 ASC
  , 5 DESC;

-- Exibe os dados da tabela clientes e ordena pelo campo ufNascimento em ordem decrescente e dataNascimento em ordem decrescente
SELECT
    clientes.nomeCliente AS 'Nome do Cliente'
  , clientes.dataNascimento AS 'Nascimento'
  , clientes.idCliente * 100 AS 'Salário'
  , 'Brasileiro' AS 'Nacionalidade'
FROM
    clientes
ORDER BY
    Nascimento;

-- Exibe os dados da tabela clientes e limita a 3 registros
SELECT
    *
FROM
    clientes
LIMIT 3;

-- Exibe os dados da tabela clientes e limita a 3 registros a partir do registro 0
SELECT
    *
FROM
    clientes
LIMIT 0, 3;

-- Exibe os dados da tabela clientes e limita a 3 registros a partir do registro 3
SELECT
    *
FROM
    clientes
LIMIT 3, 3;

-- Exibe os dados da tabela clientes e limita a 6 registros a partir do registro 4
SELECT
    *
FROM
    clientes
LIMIT 4, 6;
