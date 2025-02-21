-- Seleção da base de dados
USE db_cds;

-- Exibindo dados da tabela pedidos
SELECT
    *
FROM
    pedidos;

-- Exibindo dados da tabela funcionarios e dependentes
SELECT
    *
FROM
    pedidos AS p
INNER JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func;

-- Exibindo dados da tabela pedidos, funcionarios e dependentes
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
    f.cod_func = d.cod_func;

-- Exibindo dados da tabela pedidos, funcionarios e dependentes
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
    f.cod_func = d.cod_func;

-- Exibindo dados da tabela pedidos, funcionarios e dependentes
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
WHERE
    cod_dep IS NULL;

-- Exibindo dados da tabela pedidos, funcionarios e dependentes
SELECT
    num_ped   AS 'Número do Pedido'
  , nome_func AS 'Nome do Funcionário'
  , nome_dep  AS 'Nome do Dependente'
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
WHERE
    cod_dep IS NULL;

-- Exibindo dados da tabela pedidos, funcionarios e dependentes
SELECT
    num_ped   AS 'Número do Pedido'
  , nome_func AS 'Nome do Funcionário'
  , nome_dep  AS 'Nome do Dependente'
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
WHERE
    cod_dep IS NULL
ORDER BY
    num_ped;

-- Exibindo dados da tabela conjuges
SELECT
    *
FROM
    conjuges AS cj;

-- Exibindo dados da tabela clientes e conjuges
SELECT
    *
FROM
    conjuges AS cj
INNER JOIN
    clientes AS c
ON
    cj.cod_cli = c.cod_cli;

-- Exibindo dados da tabela conjuges, clientes e pedidos
SELECT
    *
FROM
    conjuges AS cj
INNER JOIN
    clientes AS c
ON
    cj.cod_cli = c.cod_cli
INNER JOIN
    pedidos AS p
ON
    c.cod_cli = p.cod_cli;

-- Exibindo dados da tabela conjuges e clientes
SELECT
    *
FROM
    conjuges AS cj
RIGHT JOIN
    clientes AS c
ON
    cj.cod_cli = c.cod_cli;

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
    c.cod_cli = p.cod_cli;

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

-- Exibindo dados da tabela conjuges, clientes e pedidos
SELECT
    num_ped   AS 'Pedido'
  , nome_cli  AS 'Cliente'
  , nome_conj AS 'Cônjuge'
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
