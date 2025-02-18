-- Seleção da base de dados
USE db_cds;

-- Exibindo a estrutura da tabela titulos
DESC titulos;

-- Exibindo os dados da tabela titulos
SELECT
    *
FROM
    titulos;

-- Exibindo os dados da tabela titulos onde o código do título é 1 ou 2 ou 3
SELECT
    *
FROM
    titulos
WHERE
    cod_tit = 1
OR
    cod_tit = 2
OR
    cod_tit = 3;

-- Exibindo os dados da tabela titulos onde o código do título é 1 ou 2 ou 3
SELECT
    *
FROM
    titulos
WHERE
    cod_tit IN (1, 2, 3);

-- Exibindo os dados da tabela titulos onde o código do título é 1 ou 2 ou 3
SELECT
    *
FROM
    titulos
WHERE
    cod_tit >= 1 AND cod_tit <= 3;

-- Exibindo os dados da tabela titulos onde o código do título é 1 ou 2 ou 3
SELECT
    *
FROM
    titulos
WHERE
    cod_tit BETWEEN 1 AND 3;

-- Exibindo os dados da tabela titulos onde o código do título é 1 ou 2 ou 3
SELECT
    *
FROM
    titulos
WHERE
    cod_tit <= 3;

-- Exibindo os dados da tabela titulos onde o código do título é 1 ou 2 ou 3
SELECT
    *
FROM
    titulos
WHERE
    cod_tit < 4;

-- Exibindo os dados da tabela titulos onde o código do título é 1 ou 2 ou 3
SELECT
    *
FROM
    titulos
ORDER BY
    cod_tit ASC LIMIT 3;

-- Exibindo os dados da tabela titulos onde o código do título é 1 ou 2 ou 3
SELECT
    *
FROM
    titulos
ORDER BY
    cod_tit ASC LIMIT 0, 3;

-- Exibindo os dados da tabela titulos onde o código do título é diferente de 2 e 9
SELECT
    *
FROM
    titulos
WHERE
    cod_tit <> 2 AND cod_tit <> 6 AND cod_tit <> 9;

-- Exibindo os dados da tabela titulos onde o código do título é diferente de 2, 6 e 9
SELECT
    *
FROM
    titulos
WHERE
    cod_tit NOT IN (2, 6, 9);

-- Exibindo os dados da tabela titulos onde o valor do cd está entre 100 e 150
SELECT
    *
FROM
    titulos
WHERE
    val_cd BETWEEN 100 AND 150;

-- Exibindo os dados da tabela titulos onde o valor do cd for maior que 100 e menor que 150
SELECT
    *
FROM
    titulos
WHERE
    val_cd > 100 AND val_cd < 150;

-- Exibindo os dados da tabela titulos onde o valor de compra menor que 100
SELECT
    *
FROM
    titulos
WHERE
    val_compra < 100;
