-- Seleção da base de dados
USE db_cds;

-- Exibindo dados da tabela Pedidos
SELECT
    *
FROM
    pedidos;

-- Exibindo dados da tabela Pedidos e Funcionarios
SELECT
    *
FROM
    pedidos AS p
INNER JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
ORDER BY
    cod_func;

-- Exibindo dados da tabela Pedidos, Funcionarios e Dependentes
SELECT
    *
FROM
    pedidos AS p
RIGHT JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
INNER JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func
ORDER BY
    cod_func;

-- Exibindo dados da tabela Pedidos, Funcionarios e Dependentes
SELECT
    *
FROM
    pedidos AS p
RIGHT JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
LEFT JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func
ORDER BY
    cod_func;

-- Exibindo dados da tabela Pedidos, Funcionarios, Dependentes e Clientes
SELECT
    *
FROM
    pedidos AS p
RIGHT JOIN
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
ORDER BY
    cod_func;

-- Exibindo dados da tabela Pedidos, Funcionarios, Dependentes e Clientes
SELECT
    *
FROM
    pedidos AS p
RIGHT JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
LEFT JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func
LEFT JOIN
    clientes AS c
ON
    p.cod_cli = c.cod_cli
ORDER BY
    cod_func;

-- Exibindo dados da tabela Pedidos, Funcionarios, Dependentes e Clientes
SELECT
    *
FROM
    pedidos AS p
RIGHT JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
LEFT JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func
RIGHT JOIN
    clientes AS c
ON
    p.cod_cli = c.cod_cli
ORDER BY
    c.cod_cli;

-- Exibindo dados da tabela Pedidos, Funcionarios, Dependentes, Clientes e Conjunges
SELECT
    *
FROM
    pedidos AS p
RIGHT JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
LEFT JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func
LEFT JOIN
    clientes AS c
ON
    p.cod_cli = c.cod_cli
INNER JOIN
    conjuges AS cj
ON
    c.cod_cli = cj.cod_cli
ORDER BY
    c.cod_cli;

-- Exibindo dados da tabela Pedidos, Funcionarios, Dependentes, Clientes e Conjunges
SELECT
    *
FROM
    pedidos AS p
RIGHT JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
LEFT JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func
LEFT JOIN
    clientes AS c
ON
    p.cod_cli = c.cod_cli
LEFT JOIN
    conjuges AS cj
ON
    c.cod_cli = cj.cod_cli
ORDER BY
    c.cod_cli;

-- Exibindo dados da tabela Pedidos, Funcionarios, Dependentes, Clientes e Conjunges
SELECT
    num_ped
  , nome_func
  , nome_dep
  , nome_cli
  , nome_conj
FROM
    pedidos AS p
RIGHT JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
LEFT JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func
LEFT JOIN
    clientes AS c
ON
    p.cod_cli = c.cod_cli
LEFT JOIN
    conjuges AS cj
ON
    c.cod_cli = cj.cod_cli
ORDER BY
    c.cod_cli;

-- Exibindo dados da tabela Pedidos, Funcionarios, Dependentes, Clientes e Conjunges
SELECT
    num_ped
  , nome_func
  , nome_dep
  , nome_cli
  , nome_conj
FROM
    pedidos AS p
RIGHT JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
LEFT JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func
RIGHT JOIN
    clientes AS c
ON
    p.cod_cli = c.cod_cli
LEFT JOIN
    conjuges AS cj
ON
    c.cod_cli = cj.cod_cli
ORDER BY
    c.cod_cli;

-- Exibindo dados da tabela Pedidos, Funcionarios, Dependentes, Clientes e Conjunges
SELECT
    num_ped
  , nome_func
  , nome_dep
  , nome_cli
  , nome_conj
FROM
    pedidos AS p
RIGHT JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
LEFT JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func
LEFT JOIN
    clientes AS c
ON
    p.cod_cli = c.cod_cli
LEFT JOIN
    conjuges AS cj
ON
    c.cod_cli = cj.cod_cli

UNION ALL

SELECT
    num_ped
  , nome_func
  , nome_dep
  , nome_cli
  , nome_conj
FROM
    pedidos AS p
RIGHT JOIN
    funcionarios AS f
ON
    p.cod_func = f.cod_func
LEFT JOIN
    dependentes AS d
ON
    f.cod_func = d.cod_func
RIGHT JOIN
    clientes AS c
ON
    p.cod_cli = c.cod_cli
LEFT JOIN
    conjuges AS cj
ON
    c.cod_cli = cj.cod_cli;
