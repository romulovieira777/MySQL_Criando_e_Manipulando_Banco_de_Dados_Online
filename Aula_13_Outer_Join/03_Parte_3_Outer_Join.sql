-- Seleção da base de dados
USE db_cds;

-- Exibindo dados da tabela funcionarios, clientes, pedidos, titulos_pedidos, titulos, titulos_artistas e artistas
SELECT
    p.num_ped AS Pedido
  , nome_cli  AS Cliente
  , nome_func AS Conjuge
  , nome_art  AS Artista
  , nome_cd   AS Título
FROM
    clientes AS c
INNER JOIN
    pedidos AS p
ON
    c.cod_cli = p.cod_cli
INNER JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
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
    nome_art = 'Marisa Monte';
