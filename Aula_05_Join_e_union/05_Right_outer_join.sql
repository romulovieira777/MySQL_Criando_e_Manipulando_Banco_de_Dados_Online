-- Seleciona o banco de dados relacionamento
USE relacionamento;

-- Exibe os dados da tabela funcionarios e cargo com RIGHT OUTER JOIN
SELECT
    *
FROM
    funcionarios
RIGHT OUTER JOIN
    cargo
ON
    funcionarios.car_id = cargo.car_id;

-- Exibe os dados da tabela funcionarios e cargo com RIGHT OUTER JOIN
SELECT
    *
FROM
    funcionarios
RIGHT JOIN
    cargo
ON
    funcionarios.car_id = cargo.car_id;

-- Exibe os dados da tabela funcionarios e cargo com RIGHT OUTER JOIN
SELECT
    *
FROM
    funcionarios AS f
RIGHT JOIN
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

-- Exibe os dados da tabela funcionarios e cargo com RIGHT OUTER JOIN e WHERE car_nome é nulo
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
WHERE
    car_nome IS NULL;
