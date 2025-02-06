-- Selecionando o banco de dados
USE relacionamento;

-- Exibindo os dados da tabela funcionarios com CASE
SELECT
    fun_nome AS 'Nome do funcionario'
  , CASE
        WHEN fun_salario >= 5000 THEN 'Não Informado'
        ELSE fun_salario
    END AS 'Salario'
FROM
    funcionarios;

-- Exibindo os dados da tabela funcionarios com CASE
SELECT
    fun_nome AS 'Nome do funcionario'
  , CASE
        WHEN fun_salario >= 5000 THEN 'Confidencial'
        WHEN fun_salario < 5000 THEN fun_salario
    END AS 'Salario'
FROM
    funcionarios;

-- Exibindo os dados da tabela funcionarios com CASE
SELECT
    fun_nome AS 'Nome do funcionario'
  , CASE
        WHEN fun_salario >= 5000 THEN 'Confidencial'
        WHEN fun_salario < 5000 THEN fun_salario
        ELSE 'Não Informado'
    END AS 'Salario'
FROM
    funcionarios;
