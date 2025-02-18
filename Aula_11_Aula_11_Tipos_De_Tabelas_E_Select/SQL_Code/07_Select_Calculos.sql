-- Seleção da base de dados
USE db_cds;

-- Exibindo os dados da tabela titulos com val_cd > val_compra * 1.5
SELECT
    *
FROM
    titulos
WHERE
    val_cd > val_compra * 1.5;

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
    titulos
WHERE
    val_cd > val_compra * 1.5;

-- Exibindo os dados da tabela titulos com val_cd < val_compra * 2
SELECT
    *
FROM
    titulos
WHERE
    val_cd < val_compra * 2;

-- Exibindo os dados da tabela titulos com val_cd - val_compra > 100
SELECT
    *
FROM
    titulos
WHERE
    (val_cd - val_compra) > 100;
