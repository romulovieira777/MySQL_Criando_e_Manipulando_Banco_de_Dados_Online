-- Seleção da base de dados
USE db_cds;

-- Exibindo os dados da tabela titulos
SELECT
    *
FROM
    titulos;

-- Exibindo a quantidade de titulos
SELECT
    COUNT(*) AS 'Quantidade de Titulos'
FROM
    titulos;


SELECT
    COUNT(cod_tit) AS 'Quantidade de Titulos'
FROM
    titulos;

-- Exibindo as informações do nome do cd, categoria e gravadora.
SELECT
    nome_cd   AS Título
  , nome_cat  AS Categoria
  , nome_grav AS Gravadora
FROM
    titulos AS t
INNER JOIN
    categorias AS ct
ON
    t.cod_cat = ct.cod_cat
INNER JOIN
    gravadoras AS g
ON
    t.cod_grav = g.cod_grav
ORDER BY
    nome_cat
  , nome_cd;

-- Exibindo as informações do nome do cd, categoria e valor de compra.
SELECT
    nome_cd    AS Título
  , nome_cat   AS Categoria
  , val_compra AS 'Valor Compra'
FROM
    titulos AS t
INNER JOIN
    categorias AS ct
ON
    t.cod_cat = ct.cod_cat
WHERE
    val_compra = 230;

-- Exibindo as informações do nome do cd, categoria e valor de compra.
SELECT
    nome_cd    AS Título
  , nome_cat   AS Categoria
  , val_compra AS 'Valor Compra'
FROM
    titulos AS t
INNER JOIN
    categorias AS ct
ON
    t.cod_cat = ct.cod_cat
WHERE
    val_compra = (SELECT
                      MAX(val_compra)
                  FROM
                      titulos);

-- Exibindo as informações do nome do cd, categoria, gravadora e valor de compra.
SELECT
    nome_cd    AS Título
  , nome_cat   AS Categoria
  , nome_grav  AS Gravadora
  , val_compra AS 'Valor Compra'
FROM
    titulos AS t
INNER JOIN
    categorias AS ct
ON
    t.cod_cat = ct.cod_cat
INNER JOIN
    gravadoras AS g
ON
    t.cod_grav = g.cod_grav
WHERE
    val_compra = (SELECT
                      MAX(val_compra)
                  FROM
                      titulos);
