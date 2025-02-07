-- Selecionando o banco de dados
USE relacionamento;

-- Exibindo os dados da tabela funcionarios
SELECT
    *
FROM
    funcionarios;

-- Exibindo os dados da tabela cargo e funcionarios com INNER JOIN
SELECT
    *
FROM
    funcionarios AS f
INNER JOIN
    cargo AS c
ON
    f.car_id = c.car_id;

-- Exibindo os dados da tabela cargo e funcionarios com INNER JOIN
SELECT
    fun_nome AS 'Nome'
  , fun_sexo AS 'Sexo'
  , fun_salario AS 'Salario'
  , car_nome AS 'Cargo'
FROM
    funcionarios AS f
INNER JOIN
    cargo AS c
ON
    f.car_id = c.car_id;

-- Criando a view vw_funcionarios_cargos
CREATE VIEW vw_funcionarios_cargos AS
    SELECT
        fun_nome AS 'Nome'
      , fun_sexo AS 'Sexo'
      , fun_salario AS 'Salario'
      , car_nome AS 'Cargo'
    FROM
        funcionarios AS f
    INNER JOIN
        cargo AS c
    ON
        f.car_id = c.car_id;

-- Exibindo os dados da view vw_funcionarios_cargos
SELECT
    *
FROM
    vw_funcionarios_cargos;

-- Exibindo os dados da view vw_funcionarios_cargos
SELECT
    Nome
  , CASE Sexo
      WHEN 'M' THEN 'Masculino'
      WHEN 'F' THEN 'Feminino'
  END AS 'Sexo'
FROM
    vw_funcionarios_cargos;

-- Exibindo as bases de dados
SHOW DATABASES ;

-- Selecionando a base de dados information_schema
USE information_schema;

-- Exibindo as tabelas
SHOW TABLES;

-- Exibindo as views
SELECT
    *
FROM
    views;
