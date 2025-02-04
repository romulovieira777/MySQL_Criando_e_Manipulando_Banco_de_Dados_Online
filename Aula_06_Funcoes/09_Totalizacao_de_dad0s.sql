-- Selecionando o banco de dados
USE relacionamento;

-- Exibindo os dados da tabela funcionarios
SELECT
    *
FROM
    funcionarios;

-- Exibindo o nome dos funcionarios e o cargo
SELECT
    funcionarios.fun_nome
   ,funcionarios.car_id
FROM
    funcionarios;

-- Exibindo a quantidade de funcionarios e o cargo
SELECT
    COUNT(funcionarios.fun_nome) AS 'Quantidade de Funcionarios'
  , funcionarios.car_id
FROM
    funcionarios;

-- Exibindo a quantidade de funcionarios, cargo e agrupado
SELECT
    COUNT(funcionarios.fun_nome) AS 'Quantidade de Funcionarios'
  , funcionarios.car_id
FROM
    funcionarios
GROUP BY
    funcionarios.car_id;


-- Exibindo a quantidade de funcionarios, cargo e agrupado com ROLLUP
SELECT
    COUNT(funcionarios.fun_nome) AS 'Quantidade de Funcionarios'
  , funcionarios.car_id
FROM
    funcionarios
GROUP BY
    funcionarios.car_id
WITH ROLLUP;

-- Exibindo os dados da tabela funcionarios
SELECT
    *
FROM
    funcionarios AS f
INNER JOIN
        cargo AS c
ON
    f.car_id = c.car_id;

-- Exibindo os dados da tabela funcionarios
SELECT
    *
FROM
    funcionarios AS f
LEFT JOIN
        cargo AS c
ON
    f.car_id = c.car_id;

-- Exibindo os dados da tabela funcionarios
SELECT
    car_nome    AS 'Categoria'
  , fun_nome    AS 'Funcionarios'
  , fun_salario AS 'Salarios'
FROM
    funcionarios AS f
LEFT JOIN
        cargo AS c
ON
    f.car_id = c.car_id;

-- Exibindo os dados da tabela funcionarios e cargo com GROUP BY
SELECT
    car_nome               AS 'Categoria'
  , GROUP_CONCAT(fun_nome) AS 'Funcionarios'
  , SUM(fun_salario)       AS 'Salarios'
FROM
    funcionarios AS f
LEFT JOIN
        cargo AS c
ON
    f.car_id = c.car_id
GROUP BY
    car_nome;

-- Exibindo os dados da tabela funcionarios e cargo com GROUP BY e ROLLUP
SELECT
    car_nome               AS 'Categoria'
  , GROUP_CONCAT(fun_nome) AS 'Funcionarios'
  , SUM(fun_salario)       AS 'Salarios'
FROM
    funcionarios AS f
LEFT JOIN
        cargo AS c
ON
    f.car_id = c.car_id
GROUP BY
    car_nome
WITH ROLLUP;


-- Exibindo os dados da tabela funcionarios e cargo com UNION
SELECT
    car_nome               AS 'Categoria'
  , GROUP_CONCAT(fun_nome) AS 'Funcionarios'
  , SUM(fun_salario)       AS 'Salarios'
FROM
    funcionarios AS f
LEFT JOIN
        cargo AS c
ON
    f.car_id = c.car_id
GROUP BY
    car_nome

UNION

SELECT
    'Total'
  , '_________'
  , SUM(fun_salario)       AS 'Salarios'
FROM
    funcionarios AS f;

-- Exibindo os dados da tabela funcionarios e cargo utilizando HAVING e GROUP BY
SELECT
    car_nome               AS 'Categoria'
  , GROUP_CONCAT(fun_nome) AS 'Funcionarios'
  , SUM(fun_salario)       AS 'Salarios'
FROM
    funcionarios AS f
LEFT JOIN
        cargo AS c
ON
    f.car_id = c.car_id
GROUP BY
    car_nome
HAVING
    SUM(fun_salario) > 3000;