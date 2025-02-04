-- Selecionando o banco de dados
USE relacionamento;

-- Exibindo os dados da tabela cargo
SELECT
    *
FROM
    cargo;

-- Exibindo a quantidade de funcionarios
SELECT
    COUNT(funcionarios.fun_nome) AS 'Quantidade de Funcionarios'
FROM
    funcionarios;

-- Exibindo o nome dos funcionarios e a soma dos salarios
SELECT
    *
  , funcionarios.fun_nome
  , SUM(funcionarios.fun_salario) AS 'Soma dos Salarios'
FROM
    funcionarios;

-- Exibindo os dados da tabela funcionarios
SELECT
    *
FROM
    funcionarios;

-- Exibindo a quantidade de cargos
SELECT
    COUNT(car_id) AS 'Quantidade de Cargos'
FROM
    funcionarios;

-- Exibindo a quantidade de funcionarios
SELECT
    COUNT(*) AS 'Quantidade de Funcionarios'
FROM
    funcionarios;

-- Exibindo a quantidade de salarios
SELECT
    COUNT(fun_salario) AS 'Media dos Salarios'
FROM
    funcionarios;

-- Exibindo a quantidade de salarios, a soma dos salarios e a media dos salarios
SELECT
    COUNT(funcionarios.fun_salario) AS 'Contagem dos Salarios'
  , SUM(funcionarios.fun_salario)   AS 'Soma dos Salarios'
  , AVG(funcionarios.fun_salario)   AS 'Media dos Salarios'
FROM
    funcionarios;
