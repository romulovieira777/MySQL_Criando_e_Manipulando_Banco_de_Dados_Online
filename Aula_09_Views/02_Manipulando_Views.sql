-- Selecionando o banco de dados
USE relacionamento;

-- Exibindo a view vw_funcionarios_cargos
SHOW CREATE VIEW vw_funcionarios_cargos;

-- Alterando a view vw_funcionarios_cargos
ALTER VIEW
    vw_funcionarios_cargos AS
    SELECT
        fun_nome AS 'Nome'
      , CASE fun_sexo
           WHEN 'M' THEN 'Masculino'
           WHEN 'F' THEN 'Feminino'
        END AS 'Sexo'
      , fun_salario AS 'Salario'
      , car_nome AS 'Cargo'
    FROM
        funcionarios AS f
    INNER JOIN
        cargo AS c
    ON
        f.car_id = c.car_id;


-- Exibindo a view vw_funcionarios_cargos
SELECT
    *
FROM
    vw_funcionarios_cargos;

-- Apagando a view vw_funcionarios_cargos
DROP VIEW
    vw_funcionarios_cargos;

-- Criando a view vw_funcionarios_cargos
CREATE OR REPLACE VIEW
    vw_funcionarios_cargos AS
    SELECT
        fun_nome AS 'Nome'
      , fun_salario AS 'Salario'
      , car_nome AS 'Cargo'
    FROM
        funcionarios AS f
    INNER JOIN
        cargo AS c
    ON
        f.car_id = c.car_id;

-- Exibindo a view vw_funcionarios_cargos
SELECT
    *
FROM
    vw_funcionarios_cargos;

-- Criando a view vw_funcionarios_cargos
CREATE OR REPLACE VIEW
    vw_funcionarios_cargos AS
    SELECT
        fun_nome AS 'Nome'
      , CASE fun_sexo
           WHEN 'M' THEN 'Masculino'
           WHEN 'F' THEN 'Feminino'
        END AS 'Sexo'
      , fun_salario AS 'Salario'
      , car_nome AS 'Cargo'
    FROM
        funcionarios AS f
    INNER JOIN
        cargo AS c
    ON
        f.car_id = c.car_id;

-- Exibindo a view vw_funcionarios_cargos
SELECT
    *
FROM
    vw_funcionarios_cargos;
