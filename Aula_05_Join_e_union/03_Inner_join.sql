-- Seleciona o banco de dados relacionamento
USE relacionamento;

-- Exibe os dados da tabela funcionarios e cargo com INNER JOIN
SELECT
    *
FROM
    funcionarios
INNER JOIN
    cargo ON funcionarios.car_id = cargo.car_id;

-- Exibe os dados da tabela funcionarios e cargo com INNER JOIN
SELECT
    *
FROM
    funcionarios
JOIN
    cargo ON funcionarios.car_id = cargo.car_id;

-- Exibe os dados da tabela funcionarios e cargo com INNER JOIN
SELECT
    *
FROM
    funcionarios AS f
INNER JOIN
    cargo AS c
ON
    f.car_id = c.car_id;

-- Exibe os dados da tabela funcionarios e cargo com INNER JOIN
SELECT
    fun_nome AS 'Funcionarios'
  , car_nome AS 'Cargos'
FROM
    funcionarios AS f
INNER JOIN
    cargo AS c
ON
    f.car_id = c.car_id;

-- Exibe os dados da tabela funcionarios e cargo com INNER JOIN
SELECT
    fun_nome AS 'Funcionarios'
  , car_nome AS 'Cargos'
FROM
    funcionarios AS f
  , cargo AS c
WHERE
    f.car_id = c.car_id;

-- Exibe os dados da tabela funcionarios e cargo com INNER JOIN e WHERE car_nome = 'Medico'
SELECT
    fun_nome AS 'Funcionarios'
  , car_nome AS 'Cargos'
FROM
    funcionarios AS f
INNER JOIN
    cargo AS c
ON
    f.car_id = c.car_id
WHERE
    car_nome = 'Medico';