-- Selecionando o banco de dados
USE relacionamento;

-- Atualizando a view vw_funcionarios_cargos
UPDATE
    vw_funcionarios_cargos
SET
    Nome = 'Lucas de Aguas'
WHERE
    fun_id = 1;


-- Criando a view vw_funcionarios_cargos
CREATE OR REPLACE VIEW vw_funcionarios_cargos_01 AS
    SELECT
        fun_id      AS 'ID'
      , fun_nome    AS 'Nome'
      , fun_sexo    AS 'Sexo'
      , fun_salario AS 'Salario'
    FROM
        funcionarios;

-- Exibindo a view vw_funcionarios_cargos
SELECT
    *
FROM
    vw_funcionarios_cargos_01;

-- Deletando o registro com ID = 1
DELETE FROM
    vw_funcionarios_cargos_01
WHERE
    ID = 1;

-- Exibindo a view vw_funcionarios_cargos
SELECT
    *
FROM
    vw_funcionarios_cargos_01;

-- Criando a view vw_funcionarios_cargos_02
CREATE TABLE IF NOT EXISTS vw_funcionarios_cargos_02 AS
    SELECT
        *
    FROM
        vw_funcionarios_cargos_01;

-- Exibindo a estrutura da view vw_funcionarios_cargos_02
DESC vw_funcionarios_cargos_02;
