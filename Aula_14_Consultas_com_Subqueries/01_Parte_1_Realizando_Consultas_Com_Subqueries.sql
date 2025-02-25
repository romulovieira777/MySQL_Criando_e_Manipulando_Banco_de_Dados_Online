-- Seleção da base de dados
USE db_cds;

-- Exibindo dados da tabela clientes
SELECT
    *
FROM
    clientes;

-- Exibindo dados da tabela clientes
SELECT
    *
FROM
    clientes
WHERE
    cod_cli IN (1, 2, 6, 7);

-- Exibindo dados da tabela conjuges
SELECT
    *
FROM
    conjuges;

-- Exibindo dados da tabela conjuges
SELECT
    cod_cli
FROM
    conjuges;

-- Exibindo dados da tabela clientes
SELECT
    *
FROM
    clientes
WHERE
    cod_cli NOT IN (
        SELECT
            cod_cli
        FROM
            conjuges
    );

-- Exibindo dados da tabela clientes
SELECT
    *
FROM
    clientes
WHERE
    cod_cli IN (
        SELECT
            cod_cli
        FROM
            conjuges
    );

-- Exibindo dados da tabela clientes e conjuges
SELECT
    nome_cli AS Cliente
  , 'Solterio' AS 'Estado Civil'
FROM
    clientes
WHERE
    cod_cli NOT IN (
        SELECT
            cod_cli
        FROM
            conjuges
    )

UNION ALL

SELECT
    nome_cli AS Cliente
  , 'Casado' AS 'Estado Civil'
FROM
    clientes
WHERE
    cod_cli IN (
        SELECT
            cod_cli
        FROM
            conjuges
    )
ORDER BY
    nome_cli;

-- Exibindo dados da tabela categorias
SELECT
    *
FROM
    categorias;

-- Exibindo dados da tabela categorias e titulos
SELECT
    *
FROM
    categorias
WHERE
    cod_cat NOT IN (
        SELECT
            DISTINCT cod_cat
        FROM
            titulos
    );

-- Exibindo dados da tabela categorias e titulos
SELECT
    *
FROM
    categorias
WHERE
    cod_cat IN (
        SELECT
            DISTINCT cod_cat
        FROM
            titulos
    );