-- Seleção da base de dados
USE db_cds;

-- Exibindo dados da tabela conjuges, clientes e pedidos
SELECT
    *
FROM
    conjuges AS cj
RIGHT JOIN
    clientes AS c
ON
    cj.cod_cli = c.cod_cli
INNER JOIN
    pedidos AS p
ON
    c.cod_cli = p.cod_cli
WHERE
    nome_conj IS NULL;

-- Exibindo dados da tabela conjuges, clientes, pedidos, titulos_pedidos, titulos, titulos_artistas e artistas
SELECT
    *
FROM
    conjuges AS cj
RIGHT JOIN
    clientes AS c
ON
    cj.cod_cli = c.cod_cli
INNER JOIN
    pedidos AS p
ON
    c.cod_cli = p.cod_cli
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
INNER JOIN
    titulos AS t
ON
    tp.cod_tit = t.cod_tit
INNER JOIN
    titulos_artistas AS ta
ON
    t.cod_tit = ta.cod_tit
INNER JOIN
    artistas AS a
ON
    ta.cod_art = a.cod_art;

-- Exibindo dados da tabela conjuges, clientes, pedidos, titulos_pedidos, titulos, titulos_artistas e artistas
SELECT
    *
FROM
    conjuges AS cj
RIGHT JOIN
    clientes AS c
ON
    cj.cod_cli = c.cod_cli
INNER JOIN
    pedidos AS p
ON
    c.cod_cli = p.cod_cli
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
INNER JOIN
    titulos AS t
ON
    tp.cod_tit = t.cod_tit
INNER JOIN
    titulos_artistas AS ta
ON
    t.cod_tit = ta.cod_tit
INNER JOIN
    artistas AS a
ON
    ta.cod_art = a.cod_art
WHERE
    nome_conj IS NULL:

-- Exibindo dados da tabela conjuges, clientes, pedidos, titulos_pedidos, titulos, titulos_artistas e artistas
SELECT
    *
FROM
    conjuges AS cj
RIGHT JOIN
    clientes AS c
ON
    cj.cod_cli = c.cod_cli
INNER JOIN
    pedidos AS p
ON
    c.cod_cli = p.cod_cli
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
INNER JOIN
    titulos AS t
ON
    tp.cod_tit = t.cod_tit
INNER JOIN
    titulos_artistas AS ta
ON
    t.cod_tit = ta.cod_tit
INNER JOIN
    artistas AS a
ON
    ta.cod_art = a.cod_art
WHERE
    nome_conj IS NULL
AND
    nome_art = 'Marisa Monte';

-- Exibindo dados da tabela conjuges, clientes, pedidos, titulos_pedidos, titulos, titulos_artistas e artistas
SELECT
    p.num_ped AS Pedido
  , nome_cli AS Cliente
  , nome_conj AS Conjuge
  , nome_art AS Artista
  , nome_cd AS Título
FROM
    conjuges AS cj
RIGHT JOIN
    clientes AS c
ON
    cj.cod_cli = c.cod_cli
INNER JOIN
    pedidos AS p
ON
    c.cod_cli = p.cod_cli
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
INNER JOIN
    titulos AS t
ON
    tp.cod_tit = t.cod_tit
INNER JOIN
    titulos_artistas AS ta
ON
    t.cod_tit = ta.cod_tit
INNER JOIN
    artistas AS a
ON
    ta.cod_art = a.cod_art
WHERE
    nome_conj IS NULL
AND
    nome_art = 'Marisa Monte';
