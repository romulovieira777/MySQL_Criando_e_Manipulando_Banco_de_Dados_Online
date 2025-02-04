-- Selecionando o banco de dados
USE relacionamento;

-- Exibindo os dados da tabela funcionarios
SELECT
    *
FROM
    funcionarios;

-- Exibindo o salario dos funcionarios
SELECT
    funcionario.fun_salario
FROM
    funcionarios AS funcionario;

-- Exibindo a soma dos salarios dos funcionarios
SELECT
    SUM(funcionario.fun_salario) AS 'Soma dos salarios'
FROM
    funcionarios AS funcionario;

-- Exibindo o salario dos funcionarios e a soma dos salarios
SELECT
    *
  , funcionario.fun_salario
  , SUM(funcionario.fun_salario) AS 'Soma dos salarios'
FROM
    funcionarios AS funcionario;

-- Exibindo os dados da tabela cargo
SELECT
    *
FROM
    cargo;

-- Exibindo o nome dos cargos
SELECT
    cargo.car_nome
FROM
    cargo AS cargo;

-- Exibindo a soma dos cargos
SELECT
    SUM(cargo.car_nome) AS 'Soma dos cargos'
FROM
    cargo AS cargo;

-- Exibindo o nome dos cargos e a soma dos cargos
SELECT
    GROUP_CONCAT(cargo.car_nome) AS 'Cargos'
FROM
    cargo AS cargo;