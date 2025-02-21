-- Seleção da base de dados
USE db_cds;

-- Exibindo dados da tabela Pedidos
SELECT
    *
FROM
    pedidos;


SELECT
    *
FROM
    pedidos AS p
INNER JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
INNER JOIN
    clientes AS c
ON
    p.cod_cli = c.cod_cli;


SELECT
    *
FROM
    pedidos AS p
INNER JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
INNER JOIN
    clientes AS c
ON
    p.cod_cli = c.cod_cli
INNER JOIN
    conjunges AS cj
ON
    c.cod_cli = cj.cod_cli;



SELECT
    *
FROM
    pedidos AS p
INNER JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
INNER JOIN
    clientes AS c
ON
    p.cod_cli = c.cod_cli
LEFT JOIN
    conjunges AS cj
ON
    c.cod_cli = cj.cod_cli;


SELECT
    *
FROM
    pedidos AS p
INNER JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
INNER JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func
INNER JOIN
    clientes AS c
ON
    p.cod_cli = c.cod_cli
LEFT JOIN
    conjunges AS cj
ON
    c.cod_cli = cj.cod_cli;


SELECT
    *
FROM
    pedidos AS p
INNER JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
LEFT JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func
INNER JOIN
    clientes AS c
ON
    p.cod_cli = c.cod_cli
LEFT JOIN
    conjunges AS cj
ON
    c.cod_cli = cj.cod_cli
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
INNER JOIN
    titulos AS t
ON
    tp.cod_tit = t.cod_tit
INNER JOIN
    categorias AS ct
ON
    t.cod_cat = ct.cod_cat;


SELECT
    *
FROM
    pedidos AS p
INNER JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
LEFT JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func
INNER JOIN
    clientes AS c
ON
    p.cod_cli = c.cod_cli
LEFT JOIN
    conjunges AS cj
ON
    c.cod_cli = cj.cod_cli
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
INNER JOIN
    titulos AS t
ON
    tp.cod_tit = t.cod_tit
INNER JOIN
    categorias AS ct
ON
    t.cod_cat = ct.cod_cat
WHERE
    nome_cat = 'MPB';


SELECT
    p.num_ped AS Pedido
  , nome_func AS Funcionario
  , nome_dep  AS Dependente
  , nome_cli  AS Cliente
  , nome_conj AS Conjugue
  , nome_cd   AS Título
FROM
    pedidos AS p
INNER JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
LEFT JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func
INNER JOIN
    clientes AS c
ON
    p.cod_cli = c.cod_cli
LEFT JOIN
    conjuges AS cj
ON
    c.cod_cli = cj.cod_cli
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
INNER JOIN
    titulos AS t
ON
    tp.cod_tit = t.cod_tit
INNER JOIN
    categorias AS ct
ON
    t.cod_cat = ct.cod_cat
WHERE
    nome_cat = 'MPB'
AND
    nome_cd REGEXP '^[^aeiouAEIOU]';