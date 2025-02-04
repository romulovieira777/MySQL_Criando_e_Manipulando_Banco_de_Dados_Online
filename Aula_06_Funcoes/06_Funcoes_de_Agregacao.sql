-- Setando o banco de dados
USE relacionamento;

-- Exibe os dados da tabela clientes
SELECT
    *
FROM
    funcionarios;

-- Exibe o salário máximo da tabela funcionarios
SELECT
    MAX(fun_salario) AS 'Maior Salário'
FROM
    funcionarios;

-- Exibe o nome, salário e o salário máximo da tabela funcionarios
SELECT
    funcionario.fun_nome
  , funcionario.fun_salario
  , MAX(funcionario.fun_salario) AS 'Maior Salário'
FROM
    funcionarios AS funcionario;

-- Exibe o nome, salário e o salário minimo da tabela funcionarios
SELECT
    funcionario.fun_nome
  , funcionario.fun_salario
  , MIN(funcionario.fun_salario) AS 'Maior Salário'
FROM
    funcionarios AS funcionario;
