-- Seleciona o banco de dados relacionamento
USE relacionamento;

-- Exibe os dados da tabela funcionarios e cargo com LEFT OUTER JOIN e WHERE car_nome é nulo
SELECT
    fun_nome AS 'Funcionarios'
  , fun_salario AS 'Salarios'
  , car_nome AS 'Cargos'
FROM
    funcionarios AS f
LEFT JOIN
    cargo AS c
ON
    f.car_id = c.car_id;

-- Exibe os dados da tabela funcionarios e cargo com RIGHT OUTER JOIN
SELECT
    fun_nome AS 'Funcionarios'
  , fun_salario AS 'Salarios'
  , car_nome AS 'Cargos'
FROM
    funcionarios AS f
LEFT JOIN
    cargo AS c
ON
    f.car_id = c.car_id;

-- Exibe os dados da tabela funcionarios e cargo com RIGHT OUTER JOIN
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
    fun_nome AS 'Funcionarios'
  , fun_salario AS 'Salarios'
  , car_nome AS 'Cargos'
FROM
    funcionarios AS f
RIGHT JOIN
    cargo AS c
ON
    f.car_id = c.car_id;

-- Exibe os dados da tabela funcionarios e cargo com UNION
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

UNION

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
