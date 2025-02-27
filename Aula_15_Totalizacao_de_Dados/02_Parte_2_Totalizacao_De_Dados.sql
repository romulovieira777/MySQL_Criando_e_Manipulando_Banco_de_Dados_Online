-- Seleção da base de dados
USE db_cds;

-- Exibindo dados da tabela gravadoras, titulos, titulos_artistas e artistas
SELECT
    *
FROM
    gravadoras AS g
INNER JOIN
    titulos AS t
ON
    g.cod_grav = t.cod_grav
INNER JOIN
    titulos_artistas AS ta
ON
    t.cod_tit = ta.cod_tit
INNER JOIN
    artistas AS a
ON
    ta.cod_art = a.cod_art;

-- Exibindo dados da tabela gravadoras, titulos, titulos_artistas e artistas
SELECT
    nome_grav AS Gravadora
  , nome_art  AS 'Artista'
  , nome_art  AS Artista
FROM
    gravadoras AS g
INNER JOIN
    titulos AS t
ON
    g.cod_grav = t.cod_grav
INNER JOIN
    titulos_artistas AS ta
ON
    t.cod_tit = ta.cod_tit
INNER JOIN
    artistas AS a
ON
    ta.cod_art = a.cod_art;

-- Exibindo dados da tabela gravadoras, titulos, titulos_artistas e artistas
SELECT
    nome_grav             AS Gravadora
 , COUNT(nome_art)        AS 'Qtd Artista'
 , GROUP_CONCAT(nome_art) AS Artista
FROM
    gravadoras AS g
INNER JOIN
    titulos AS t
ON
    g.cod_grav = t.cod_grav
INNER JOIN
    titulos_artistas AS ta
ON
    t.cod_tit = ta.cod_tit
INNER JOIN
    artistas AS a
ON
    ta.cod_art = a.cod_art;

-- Exibindo dados da tabela gravadoras, titulos, titulos_artistas e artistas
SELECT
    nome_grav AS Gravadora
  , COUNT(nome_art) AS 'Qtd Artista'
  , GROUP_CONCAT(nome_art) AS Artista
FROM
    gravadoras AS g
INNER JOIN
    titulos AS t
ON
    g.cod_grav = t.cod_grav
INNER JOIN
    titulos_artistas AS ta
ON
    t.cod_tit = ta.cod_tit
INNER JOIN
    artistas AS a
ON
    ta.cod_art = a.cod_art
GROUP BY
    nome_grav;

-- Exibindo dados da tabela gravadoras, titulos, titulos_artistas e artistas
SELECT
    nome_grav AS Gravadora
  , COUNT(nome_art) AS 'Qtd Artista'
  , GROUP_CONCAT(nome_art) AS Artista
FROM
    gravadoras AS g
INNER JOIN
    titulos AS t
ON
    g.cod_grav = t.cod_grav
INNER JOIN
    titulos_artistas AS ta
ON
    t.cod_tit = ta.cod_tit
INNER JOIN
    artistas AS a
ON
    ta.cod_art = a.cod_art
GROUP BY
    nome_grav
WITH ROLLUP;

-- Exibindo dados da tabela pedidos
SELECT
    *
FROM
    pedidos;

-- Exibindo dados da tabela pedidos
SELECT
    *
FROM
    pedidos
WHERE
    YEAR(data_ped) = 2013;

-- Exibindo dados da tabela pedidos e titulo_pedidos
SELECT
    *
FROM
    pedidos AS p
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
WHERE
    YEAR(data_ped) = 2013;

-- Exibindo dados da tabela pedidos e titulo_pedidos
SELECT
    p.num_ped       AS Pedido
  , qtd_cd * val_cd AS 'Valor Pedido'
FROM
    pedidos AS p
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
WHERE
    YEAR(data_ped) = 2013;

-- Exibindo dados da tabela pedidos e titulo_pedidos
SELECT
    p.num_ped            AS Pedido
  , SUM(qtd_cd * val_cd) AS 'Valor Pedido'
FROM
    pedidos AS p
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
WHERE
    YEAR(data_ped) = 2013
GROUP BY
    Pedido;

-- Exibindo dados da tabela pedidos e titulo_pedidos
SELECT
    CASE
        WHEN p.num_ped IS NOT NULL THEN p.num_ped
        ELSE 'Total Faturado no Ano'
    END                  AS Pedido
  , SUM(qtd_cd * val_cd) AS 'Valor Pedido'
FROM
    pedidos AS p
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
WHERE
    YEAR(data_ped) = 2012
GROUP BY
    Pedido
WITH ROLLUP

-- Exibindo dados da tabela pedidos e titulo_pedidos
SELECT
    CASE
        WHEN p.num_ped IS NOT NULL THEN p.num_ped
        ELSE 'Total Faturado no Ano'
    END                AS Pedido
, SUM(qtd_cd * val_cd) AS 'Valor Pedido'
FROM
    pedidos AS p
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
WHERE
    YEAR(data_ped) = 2012
GROUP BY
    Pedido
HAVING
    SUM(qtd_cd * val_cd) > 500;

-- Exibindo dados da tabela pedidos e titulo_pedidos
SELECT
    p.num_ped            AS Pedido
  , SUM(qtd_cd * val_cd) AS 'Valor Pedido'
FROM
    pedidos AS p
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
WHERE
    YEAR(data_ped) = 2013
GROUP BY
    Pedido
HAVING
    SUM(qtd_cd * val_cd) > 500

UNION ALL

SELECT
    'Total'
  , SUM(qtd_cd * val_cd) AS 'Valor Pedido'
FROM
    pedidos AS p
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
WHERE
    YEAR(data_ped) = 2013
HAVING
    SUM(qtd_cd * val_cd) > 500;

-- Exibindo dados da tabela funcionarios e dependentes
SELECT
    *
FROM
    funcionarios AS f
INNER JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func;

-- Exibindo dados da tabela funcionarios e dependentes
SELECT
    nome_func       AS 'Funcionário'
  , COUNT(nome_dep) AS 'Número Dependente'
  , nome_dep        AS 'Nome Dependente'
FROM
    funcionarios AS f
LEFT JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func
GROUP BY
    nome_func
ORDER BY
    COUNT(nome_dep);
