-- Selecionando o banco de dados
USE relacionamento;

-- Exibindo os dados da tabela funcionarios
SELECT
    *
FROM
    funcionarios;

-- Exibindo o nome dos funcionarios e o sexo
SELECT
    funcionarios.fun_nome AS 'Nome do Funcionarios'
  , funcionarios.fun_sexo AS 'Sexo do Funcionarios'
FROM
    funcionarios;

-- Exibindo o nome dos funcionarios e o sexo
SELECT
    funcionarios.fun_nome AS 'Nome do Funcionarios'
  , CASE funcionarios.fun_sexo
      WHEN 'M' THEN 'Masculino'
      WHEN 'F' THEN 'Feminino'
      ELSE 'Valor não Informado'
    END AS 'Sexo do Funcionarios'
FROM
    funcionarios;
