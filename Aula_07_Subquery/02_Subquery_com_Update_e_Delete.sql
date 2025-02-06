-- Selecionando o banco de dados
USE relacionamento;

-- Exibindo os dados da tabela funcionarios com WHERE car_id = 2
SELECT
    *
FROM
    funcionarios
WHERE
    car_id = 2;

-- Exibindo os dados da tabela funcionarios com WHERE car_id = 2
SELECT
    *
FROM
    funcionarios
WHERE
    car_id = (2);

-- Exibindo os dados da tabela funcionarios com WHERE car_id = (SELECT car_id FROM cargo WHERE car_nome = 'Jornalista')
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
                   car_nome = 'Jornalista');

-- Exibindo os dados da tabela funcionarios com WHERE car_id = (SELECT car_id FROM cargo WHERE car_nome = 'Jornalista')
SELECT
    funcionario.fun_nome            AS 'Funcionarios'
  , funcionario.fun_salario         AS 'Salario'
  , (funcionario.fun_salario * 1.2) AS 'Previsao de 20%'
FROM
    funcionarios AS funcionario
WHERE
    funcionario.car_id = (SELECT
                              car_id
                          FROM
                              cargo
                          WHERE
                              car_nome = 'Jornalista');

-- Atualizando o salario dos funcionarios com WHERE car_id = (SELECT car_id FROM cargo WHERE car_nome = 'Jornalista')
UPDATE
    funcionarios
SET
    fun_salario = (fun_salario * 1.2)
WHERE
    car_id = (SELECT
                  car_id
              FROM
                  cargo
              WHERE
                  car_nome = 'Jornalista');

-- Exibindo os dados da tabela funcionarios com WHERE car_id = (SELECT car_id FROM cargo WHERE car_nome = 'Jornalista')
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
                   car_nome = 'Jornalista');

-- Apagando os funcionarios com WHERE car_id = (SELECT car_id FROM cargo WHERE car_nome = 'Jornalista')
DELETE FROM
    funcionarios
WHERE
    car_id = (
        SELECT
            car_id
        FROM
            cargo
        WHERE
            car_nome = 'Jornalista');
