-- Selecionando o banco de dados
USE relacionamento;

-- Exibindo os dados da tabela funcionarios com INNER JOIN na tabela cargo
SELECT
    *
FROM
    funcionarios
INNER JOIN
    cargo
ON
    funcionarios.car_id = cargo.car_id;

-- Exibindo os dados da tabela funcionarios com LEFT JOIN na tabela cargo
SELECT
    *
FROM
    funcionarios
LEFT JOIN
    cargo
ON
    funcionarios.car_id = cargo.car_id;

-- Exibindo os dados da tabela funcionarios com LEFT JOIN na tabela cargo
SELECT
    fun_nome AS 'Funcionarios'
  , car_nome AS 'Cargos'
FROM
    funcionarios
LEFT JOIN
    cargo
ON
    funcionarios.car_id = cargo.car_id;

--  Exibindo os dados da tabela funcionarios com LEFT JOIN na tabela cargo e CASE
SELECT
    fun_nome AS 'Funcionarios'
  , CASE
        WHEN car_nome IS NULL THEN 'Não Definido'
        WHEN car_nome IS NOT NULL THEN car_nome
    END AS 'Cargos'
FROM
    funcionarios
LEFT JOIN
    cargo
ON
    funcionarios.car_id = cargo.car_id;
