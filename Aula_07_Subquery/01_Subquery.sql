-- Selecionando o banco de dados
USE relacionamento;

-- Exibindo os dados da tabela funcionarios
SELECT
    *
FROM
    funcionarios;

-- Exibindo os dados da tabela cargo
SELECT
    *
FROM
    cargo;

-- Exibindo os dados da tabela cargo com WHERE car_nome = 'Medico'
SELECT
    *
FROM
    cargo
WHERE
    car_nome = 'Medico';

-- Exibindo o car_id da tabela cargo com WHERE car_nome = 'Medico'
SELECT
    car_id
FROM
    cargo
WHERE
    car_nome = 'Medico';

-- Exibindo os dados da tabela funcionarios com WHERE car_id = 1
SELECT
    *
FROM
    funcionarios
WHERE
    car_id = 1;

-- Exibindo os dados da tabela funcionarios com WHERE car_id = 1
SELECT
    *
FROM
    funcionarios
WHERE
    car_id = (1);

-- Exibindo os dados da tabela funcionarios com WHERE car_id = (SELECT car_id FROM cargo WHERE car_nome = 'Medico')
SELECT
    *
FROM
    funcionarios
WHERE
    car_id = (SELECT
                   car_id
               FROM
                   cargo
               WHERE
                   car_nome = 'Medico');

-- Exibindo os dados da tabela funcionarios e ordenando por fun_salario em ordem decrescente com LIMIT 1
SELECT
    *
FROM
    funcionarios
ORDER BY
    fun_salario DESC
LIMIT 1;

-- Exibindo os dados da tabela funcionarios com WHERE fun_salario = 9854.00
SELECT
    *
FROM
    funcionarios
WHERE
    fun_salario = 9854.00;

-- Exibindo os dados da tabela funcionarios com WHERE fun_salario = (SELECT MAX(fun_salario) FROM funcionarios)
SELECT
    *
FROM
    funcionarios
WHERE
    fun_salario = (SELECT
                       MAX(fun_salario)
                   FROM
                       funcionarios);
