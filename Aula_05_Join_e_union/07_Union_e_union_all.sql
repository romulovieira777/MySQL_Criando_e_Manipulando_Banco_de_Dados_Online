-- Seleciona o banco de dados relacionamento
USE relacionamento;

-- Exibe os dados da tabela funcionarios e cargo com UNION ALL
SELECT
    fun_nome AS 'Funcionarios'
  , fun_salario AS 'Salarios'
  , car_nome AS 'Cargos'
FROM
    funcionarios AS f
LEFT JOIN
    cargo AS c
ON
    f.car_id = c.car_id

UNION ALL

SELECT
    fun_nome AS 'Funcionarios'
  , fun_salario AS 'Salarios'
  , car_nome AS 'Cargos'
FROM
    funcionarios AS f
RIGHT JOIN
    cargo AS c
ON
    f.car_id = c.car_id;

-- Exibe os dados da tabela funcionarios e cargo com UNION ALL
SELECT
    fun_nome
  , fun_salario
  , car_nome
FROM
    funcionarios AS f
LEFT JOIN
    cargo AS c
ON
    f.car_id = c.car_id

UNION ALL

SELECT
    fun_nome AS 'Funcionarios'
  , fun_salario AS 'Salarios'
  , car_nome AS 'Cargos'
FROM
    funcionarios AS f
RIGHT JOIN
    cargo AS c
ON
    f.car_id = c.car_id;

-- Exibe os dados da tabela funcionarios e cargo com UNION ALL
SELECT
    fun_nome AS 'Funcionarios'
  , fun_salario AS 'Salarios'
  , car_nome AS 'Cargos'
FROM
    funcionarios AS f
LEFT JOIN
    cargo AS c
ON
    f.car_id = c.car_id

UNION ALL

SELECT
    fun_nome AS 'xxxx'
  , fun_salario AS 'yyyyy'
  , car_nome AS 'zzzz'
FROM
    funcionarios AS f
RIGHT JOIN
    cargo AS c
ON
    f.car_id = c.car_id;

-- Exibe os dados da tabela funcionarios e cargo com UNION ALL e WHERE car_nome é nulo
SELECT
    fun_nome AS 'Funcionarios'
  , fun_salario AS 'Salarios'
  , car_nome AS 'Cargos'
FROM
    funcionarios AS f
LEFT JOIN
    cargo AS c
ON
    f.car_id = c.car_id
WHERE
    car_nome IS NULL

UNION ALL

SELECT
    fun_nome AS 'xxxx'
  , fun_salario AS 'yyyyy'
  , car_nome AS 'zzzz'
FROM
    funcionarios AS f
RIGHT JOIN
    cargo AS c
ON
    f.car_id = c.car_id;

-- Exibe os dados da tabela funcionarios e cargo com UNION ALL e WHERE car_nome é nulo e fun_nome é nulo
SELECT
    fun_nome AS 'Funcionarios'
  , fun_salario AS 'Salarios'
  , car_nome AS 'Cargos'
FROM
    funcionarios AS f
LEFT JOIN
    cargo AS c
ON
    f.car_id = c.car_id
WHERE
    car_nome IS NULL

UNION ALL

SELECT
    fun_nome AS 'xxxx'
  , fun_salario AS 'yyyyy'
  , car_nome AS 'zzzz'
FROM
    funcionarios AS f
RIGHT JOIN
    cargo AS c
ON
    f.car_id = c.car_id
WHERE
    fun_nome IS NULL;

-- Exibe os dados da tabela funcionarios e cargo com UNION ALL e ORDER BY Funcionarios
SELECT
    fun_nome AS 'Funcionarios'
  , fun_salario AS 'Salarios'
  , car_nome AS 'Cargos'
FROM
    funcionarios AS f
LEFT JOIN
    cargo AS c
ON
    f.car_id = c.car_id

UNION ALL

SELECT
    fun_nome AS 'Funcionarios'
  , fun_salario AS 'Salarios'
  , car_nome AS 'Cargos'
FROM
    funcionarios AS f
RIGHT JOIN
    cargo AS c
ON
    f.car_id = c.car_id
ORDER BY
    Funcionarios;
