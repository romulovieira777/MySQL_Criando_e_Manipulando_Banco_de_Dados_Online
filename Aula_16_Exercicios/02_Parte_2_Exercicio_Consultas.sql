-- Seleção da base de dados
USE db_cds;

-- Exibindo dados da tabela Pedidos, Funcionarios, Dependentes, Clientes e Conjunges
CREATE OR REPLACE VIEW v_mostra_tudo AS
    SELECT
        num_ped
      , nome_func
      , nome_dep
      , nome_cli
      , nome_conj
    FROM
        pedidos AS p
    RIGHT JOIN
        funcionarios AS f
    ON
        p.cod_func = f.cod_func
    LEFT JOIN
        dependentes AS d
    ON
        f.cod_func = d.cod_func
    LEFT JOIN
        clientes AS c
    ON
        p.cod_cli = c.cod_cli
    LEFT JOIN
        conjuges AS cj
    ON
        c.cod_cli = cj.cod_cli

    UNION ALL

    SELECT
        num_ped
      , nome_func
      , nome_dep
      , nome_cli
      , nome_conj
    FROM
        pedidos AS p
    RIGHT JOIN
        funcionarios AS f
    ON
        p.cod_func = f.cod_func
    LEFT JOIN
        dependentes AS d
    ON
        f.cod_func = d.cod_func
    RIGHT JOIN
        clientes AS c
    ON
        p.cod_cli = c.cod_cli
    LEFT JOIN
        conjuges AS cj
    ON
        c.cod_cli = cj.cod_cli;

-- Exibindo dados da view v_mostra_tudo
SELECT
    *
FROM
    v_mostra_tudo;

-- Exibindo dados da view v_mostra_tudo
SELECT
    *
FROM
    v_mostra_tudo
WHERE
    num_ped IS NULL;

-- Exibindo dados da view v_mostra_tudo
SELECT
    *
FROM
    v_mostra_tudo
WHERE
    num_ped IS NULL
AND
    nome_conj IS NOT NULL;

-- Exibindo Databases
SHOW DATABASES;

-- Seleção da base de dados
USE mysql;

-- Exibindo todas as tabelas
SHOW TABLES;

-- Escolhendo a  information_schema
USE information_schema;

-- Exibindo todas as tabelas da information_schema
SELECT
    *
FROM
    views;
