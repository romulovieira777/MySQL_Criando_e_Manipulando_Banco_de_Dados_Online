-- Seleção da base de dados
USE db_cds;

-- Exibindo todas as tabelas
SHOW TABLES;


CREATE TEMPORARY TABLE IF NOT EXISTS temp_mostra_tudo AS (
    SELECT
        *
    FROM
        v_mostra_tudo
);

-- Exibindo os dados da tabela temp_mostra_tudo
DESC temp_mostra_tudo;

-- Exibindo os dados da tabela temp_mostra_tudo
SELECT
    *
FROM
    temp_mostra_tudo;

-- Exibindo os dados da tabela temp_mostra_tudo
SELECT
    *
FROM
    temp_mostra_tudo
WHERE
    num_ped IS NULL
AND
    nome_conj IS NOT NULL;
