-- Seleção da base de dados
USE db_cds;

-- Exibindo os dados da tabela titulos com nome_cd = 'Reza'
SELECT
    *
FROM
    titulos
WHERE
    nome_cd = 'Reza';

-- Exibindo os dados da tabela titulos com nome_cd que contém 'saber'
SELECT
    *
FROM
    titulos
WHERE
    nome_cd LIKE '%saber%';

-- Exibindo os dados da tabela titulos com nome_cd que começa com 'Acabou'
SELECT
    *
FROM
    titulos
WHERE
    nome_cd LIKE 'Acabou%';

-- Exibindo os dados da tabela titulos com nome_cd que começa com 'b', 'c' ou 'd'
SELECT
    *
FROM
    titulos
WHERE
    nome_cd LIKE 'b%'
OR
    nome_cd LIKE 'c%'
OR
    nome_cd LIKE 'd%';

-- Exibindo os dados da tabela titulos com nome_cd que não começa com 'a', 'e', 'i', 'o' ou 'u'
SELECT
    *
FROM
    titulos
WHERE
    nome_cd NOT LIKE 'a%'
AND
    nome_cd NOT LIKE 'e%'
AND
    nome_cd NOT LIKE 'i%'
AND
    nome_cd NOT LIKE 'o%'
AND
    nome_cd NOT LIKE 'u%';

-- Exibindo os dados da tabela titulos com nome_cd que não começa com 'a', 'e', 'i', 'o' ou 'u'
SELECT
    *
FROM
    titulos
WHERE
    nome_cd REGEXP '^[bcdfghjklmnpqrstvwxyz]';

-- Exibindo os dados da tabela titulos com nome_cd que não começa com 'a', 'e', 'i', 'o' ou 'u'
SELECT
    *
FROM
    titulos
WHERE
    nome_cd REGEXP '^[^AEIOUaeiou]';

-- Exibindo os dados da tabela titulos com nome_cd que começa com 'a', 'e', 'i', 'o' ou 'u'
SELECT
    *
FROM
    titulos
WHERE
    nome_cd NOT REGEXP '^[^AEIOUaeiou]';

-- Exibindo os dados da tabela titulos com nome_cd que não começa com 'a', 'e', 'i', 'o' ou 'u'
SELECT
    *
FROM
    titulos
WHERE
    nome_cd RLIKE '^[^AEIOUaeiou]';

-- Exibindo os dados da tabela titulos com nome_cd que começa com 'a', 'e', 'i', 'o' ou 'u'
SELECT
    *
FROM
    titulos
WHERE
    nome_cd NOT RLIKE '^[^AEIOUaeiou]';


-- Exibindo os dados da tabela titulos com o lucro em R$
SELECT
    nome_cd             AS 'Título'
  , val_compra          AS 'Valor de Compra'
  , val_cd              AS 'Valor de Venda'
  , val_cd - val_compra AS 'Lucro em R$'
FROM
    titulos;

-- Exibindo os dados da tabela titulos com o lucro em %
SELECT
    nome_cd                              AS 'Título'
  , val_compra                           AS 'Valor de Compra'
  , val_cd                               AS 'Valor de Venda'
  , val_cd - val_compra                  AS 'Lucro em R$'
  , (val_cd - val_compra) * 100 / val_cd AS 'Lucro em %'
FROM
    titulos;

-- Exibindo os dados da tabela titulos com o lucro em %
SELECT
    nome_cd                                        AS 'Título'
  , val_compra                                     AS 'Valor de Compra'
  , val_cd                                         AS 'Valor de Venda'
  , val_cd - val_compra                            AS 'Lucro em R$'
  , ROUND((val_cd - val_compra) * 100 / val_cd, 2) AS 'Lucro em %'
FROM
    titulos;

-- Exibindo os dados da tabela titulos com a projeção no valor de venda
SELECT
    nome_cd                                        AS 'Título'
  , val_compra                                     AS 'Valor de Compra'
  , val_cd                                         AS 'Valor de Venda'
  , val_cd - val_compra                            AS 'Lucro em R$'
  , ROUND((val_cd - val_compra) * 100 / val_cd, 2) AS 'Lucro em %'
  , val_cd * 1.4                                   AS 'Projeção de 40% no valor de venda'
FROM
    titulos;

-- Exibindo os dados da tabela titulos com a projeção no valor de venda
SELECT
    nome_cd                                        AS 'Título'
  , val_compra                                     AS 'Valor de Compra'
  , val_cd                                         AS 'Valor de Venda'
  , val_cd - val_compra                            AS 'Lucro em R$'
  , ROUND((val_cd - val_compra) * 100 / val_cd, 2) AS 'Lucro em %'
  , ROUND(val_cd * 1.4, 2)                         AS 'Projeção de 40% no valor de venda'
FROM
    titulos;

-- Exibindo os dados da tabela titulos com a projeção de lucro
SELECT
    nome_cd                                        AS 'Título'
  , val_compra                                     AS 'Valor de Compra'
  , val_cd                                         AS 'Valor de Venda'
  , val_cd - val_compra                            AS 'Lucro em R$'
  , ROUND((val_cd - val_compra) * 100 / val_cd, 2) AS 'Lucro em %'
  , ROUND(val_cd * 1.4, 2)                         AS 'Projeção de 40% no valor de venda'
  , ROUND(val_compra * 1.5, 2)                     AS 'Projeção 50% de lucro'
FROM
    titulos;
