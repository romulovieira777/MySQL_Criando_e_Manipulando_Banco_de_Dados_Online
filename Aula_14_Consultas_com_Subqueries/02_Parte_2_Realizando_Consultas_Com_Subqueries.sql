-- Seleção da base de dados
USE db_cds;

-- Exibindo dados da tabela funcionarios
SELECT
    *
FROM
    funcionarios;

-- Exibindo dados da tabela funcionarios e dependentes
SELECT
    *
FROM
    funcionarios
WHERE
    cod_func IN (
        SELECT
            DISTINCT cod_func
        FROM
            dependentes);

-- Exibindo dados da tabela funcionarios e dependentes
SELECT
    *
FROM
    funcionarios
WHERE
    cod_func IN (
        SELECT
            DISTINCT cod_func
        FROM
            dependentes)
AND
    cod_func NOT IN (
        SELECT
            DISTINCT cod_func
        FROM
            pedidos);

-- Exibindo dados da tabela pedidos e clientes
SELECT
    *
FROM
    pedidos
WHERE
    cod_cli IN (
        SELECT
            DISTINCT cod_cli
        FROM
            conjuges);

-- Exibindo dados da tabela pedidos, clientes e funcionarios
SELECT
    *
FROM
    funcionarios
WHERE
    cod_func IN (
        SELECT
            DISTINCT cod_func
        FROM
            pedidos
        WHERE
            cod_cli IN (
                SELECT
                    cod_cli
                FROM
                    conjuges));

-- Exibindo dados da tabela pedidos e funcionarios
SELECT
    *
FROM
    funcionarios
WHERE
    cod_func IN (2, 4, 5, 1);

-- Exibindo dados da tabela titulos
SELECT
    *
FROM
    titulos;

-- Exibindo dados da tabela titulos
SELECT
    *
FROM
    titulos
ORDER BY
    val_cd DESC
LIMIT 1;

-- Exibindo dados da tabela titulos
SELECT
    *
FROM
    titulos
WHERE
    val_cd = (
        SELECT
            MAX(val_cd)
        FROM
            titulos);
