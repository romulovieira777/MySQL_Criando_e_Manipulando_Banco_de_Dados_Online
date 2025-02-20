-- Seleção da base de dados
USE db_cds;

-- Exibindo o nome do funcionário, número do pedido, título, quantidade de CDs, valor de compra e valor de venda.
SELECT
    nome_func  AS 'Funcionário'
  , p.num_ped  AS 'Pedido'
  , t.nome_cd  AS 'Título'
  , qtd_cd     AS 'Quantidade de CDs'
  , val_compra AS 'Valor Compra'
  , tp.val_cd  AS 'Valor Venda'
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
    tp.cod_tit = t.cod_tit;


-- Exibindo o nome do funcionário, número do pedido, título e o valor da comissão do vendedor
SELECT
    nome_func                                              AS 'Funcionário'
  , p.num_ped                                              AS 'Pedido'
  , GROUP_CONCAT(t.nome_cd)                                AS 'Título'
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
    p.num_ped;
