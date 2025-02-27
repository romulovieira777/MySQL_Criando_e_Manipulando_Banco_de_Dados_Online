-- Seleção da base de dados
USE db_cds;

-- Exibindo dados da tabela Artistas e Titulos_Artistas
SELECT
    *
FROM
    artistas AS a
INNER JOIN
    titulos_artistas AS ta
ON
    a.cod_art = ta.cod_art;

-- Exibindo dados da tabela Artistas e Titulos_Artistas
SELECT
    *
FROM
    artistas AS a
LEFT JOIN
    titulos_artistas AS ta
ON
    a.cod_art = ta.cod_art;

-- Exibindo dados da tabela Artistas, Titulos_Artistas e Titulos
SELECT
    *
FROM
    artistas AS a
LEFT JOIN
    titulos_artistas AS ta
ON
    a.cod_art = ta.cod_art
LEFT JOIN
    titulos AS t
ON
    ta.cod_tit = t.cod_tit;

-- Exibindo dados da tabela Artistas, Titulos_Artistas e Titulos
SELECT
    nome_art              AS Artista
  , COUNT(nome_cd)        AS 'Qtd Titulos'
  , GROUP_CONCAT(nome_cd) AS Titulos
FROM
    artistas AS a
LEFT JOIN
    titulos_artistas AS ta
ON
    a.cod_art = ta.cod_art
LEFT JOIN
    titulos AS t
ON
    ta.cod_tit = t.cod_tit;

-- Exibindo dados da tabela Artistas, Titulos_Artistas e Titulos
SELECT
    nome_art              AS Artista
  , COUNT(nome_cd)        AS 'Qtd Titulos'
  , GROUP_CONCAT(nome_cd) AS Titulos
FROM
    artistas AS a
LEFT JOIN
    titulos_artistas AS ta
ON
    a.cod_art = ta.cod_art
LEFT JOIN
    titulos AS t
ON
    ta.cod_tit = t.cod_tit
GROUP BY
    nome_art;

-- Exibindo dados da tabela Artistas, Titulos_Artistas e Titulos
SELECT
    nome_art              AS Artista
  , COUNT(nome_cd)        AS 'Qtd Titulos'
  , GROUP_CONCAT(nome_cd) AS Titulos
FROM
    artistas AS a
LEFT JOIN
    titulos_artistas AS ta
ON
    a.cod_art = ta.cod_art
LEFT JOIN
    titulos AS t
ON
    ta.cod_tit = t.cod_tit
GROUP BY
    nome_art
ORDER BY
    COUNT(nome_cd);

-- Exibindo dados da tabela Artistas, Titulos_Artistas e Titulos
SELECT
    nome_art              AS Artista
  , COUNT(nome_cd)        AS 'Qtd_Titulos'
  , GROUP_CONCAT(nome_cd) AS Titulos
FROM
    artistas AS a
LEFT JOIN
    titulos_artistas AS ta
ON
    a.cod_art = ta.cod_art
LEFT JOIN
    titulos AS t
ON
    ta.cod_tit = t.cod_tit
GROUP BY
    nome_art
ORDER BY
    Qtd_Titulos;

-- Exibindo dados da tabela Artistas, Titulos_Artistas e Titulos
SELECT
    nome_art              AS Artista
  , COUNT(nome_cd)        AS 'Qtd_Titulos'
  , GROUP_CONCAT(nome_cd) AS Titulos
FROM
    artistas AS a
LEFT JOIN
    titulos_artistas AS ta
ON
    a.cod_art = ta.cod_art
LEFT JOIN
    titulos AS t
ON
    ta.cod_tit = t.cod_tit
GROUP BY
    nome_art
HAVING
    COUNT(nome_cd) < 2
ORDER BY
    Qtd_Titulos;
