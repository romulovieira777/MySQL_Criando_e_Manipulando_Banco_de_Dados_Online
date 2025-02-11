-- Selecionando o banco de dados
USE relacionamento;


START TRANSACTION;

SELECT
    *
FROM
    funcionarios;


UPDATE
    funcionarios
SET
    fun_salario = fun_salario * 1.2;

ROLLBACK;


SELECT
    *
FROM
    funcionarios;


START TRANSACTION;

SELECT
    *
FROM
    funcionarios;


UPDATE
    funcionarios
SET
    fun_salario = fun_salario * 1.2;

COMMIT;


SELECT
    *
FROM
    funcionarios;
