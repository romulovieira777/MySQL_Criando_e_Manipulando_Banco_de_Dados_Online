-- Selecionando o banco de dados
USE relacionamento;

-- Criando a view vw_final
CREATE OR REPLACE VIEW vw_final AS
    SELECT
        Nome
      , Sexo
      , FORMAT(Salario, 2)
      , Cargo
    FROM
        vw_funcionarios_cargos;

-- Exibindo a view vw_final
SELECT
    *
FROM
    vw_final;

-- Criando a view vw_final
CREATE OR REPLACE VIEW vw_final AS
    SELECT
        Nome
      , Sexo
      , REPLACE(FORMAT(Salario, 2), '.', ',') AS 'Salario'
      , Cargo
    FROM
        vw_funcionarios_cargos;

-- Exibindo a view vw_final
SELECT
    *
FROM
    vw_final;

-- Criando a view vw_final
CREATE OR REPLACE VIEW vw_final AS
    SELECT
        Nome
      , Sexo
      , REPLACE(REPLACE(FORMAT(Salario, 2), '.', ','), ',', '.') AS 'Salario'
      , Cargo
    FROM
        vw_funcionarios_cargos;

-- Exibindo a view vw_final
SELECT
    *
FROM
    vw_final;

-- Criando a view vw_final
CREATE OR REPLACE VIEW vw_final AS
    SELECT
        Nome
      , Sexo
      , REPLACE(REPLACE(REPLACE(FORMAT(Salario, 2), '.', '@'), ',', '.'), '@', ',') AS 'Salario'
      , Cargo
    FROM
        vw_funcionarios_cargos;

-- Exibindo a view vw_final
SELECT
    *
FROM
    vw_final;
