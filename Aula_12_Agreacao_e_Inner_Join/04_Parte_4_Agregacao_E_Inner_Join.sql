-- Seleção da base de dados
USE db_cds;

-- Exibindo o nome do funcionário, número do pedido e o valor da comissão do vendedor
SELECT
    nome_func                                              AS 'Funcionário'
  , GROUP_CONCAT(DISTINCT p.num_ped )                      AS 'Pedidos'
  , SUM(ROUND((qtd_cd * (tp.val_cd - val_compra)) / 2, 2)) AS 'Comissão do vendedor'
FROM
    funcionarios AS f
INNER JOIN
    pedidos AS p
ON
    f.cod_func = p.cod_func
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
INNER JOIN
    titulos AS t
ON
    tp.cod_tit = t.cod_tit
GROUP BY
    nome_func;

-- Exibindo o nome do funcionário, número do pedido e o valor da comissão do vendedor
SELECT
    nome_func                                              AS 'Funcionário'
  , GROUP_CONCAT(DISTINCT p.num_ped )                      AS 'Pedidos'
  , SUM(ROUND((qtd_cd * (tp.val_cd - val_compra)) / 2, 2)) AS 'Comissão do vendedor'
FROM
    funcionarios AS f
INNER JOIN
    pedidos AS p
ON
    f.cod_func = p.cod_func
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
INNER JOIN
    titulos AS t
ON
    tp.cod_tit = t.cod_tit
GROUP BY
    nome_func
WITH ROLLUP;

-- Exibindo o nome do funcionário, número do pedido e o valor da comissão do vendedor
SELECT
    CASE
        WHEN nome_func IS NOT NULL THEN nome_func
        ELSE 'Total de Comissões'
    END AS 'Funcionário'
  , CASE
        WHEN nome_func IS NOT NULL THEN GROUP_CONCAT(DISTINCT p.num_ped)
        ELSE ' '
    END AS 'Pedidos'
  , SUM(ROUND((qtd_cd * (tp.val_cd - val_compra)) / 2, 2)) AS 'Comissão do vendedor'
FROM
    funcionarios AS f
INNER JOIN
    pedidos AS p
ON
    f.cod_func = p.cod_func
INNER JOIN
    titulos_pedidos AS tp
ON
    p.num_ped = tp.num_ped
INNER JOIN
    titulos AS t
ON
    tp.cod_tit = t.cod_tit
GROUP BY
    nome_func
WITH ROLLUP;
