-- Exemplo de funções de strings replace
SELECT
    REPLACE('MySQl não é legal', 'não é', 'é muito') AS 'Resultado';

-- Exemplo de funções de strings round
SELECT
    ROUND(23564.6487, 2) AS 'Resultado';

-- Exemplo de funções de strings cast e round
SELECT
    CAST(ROUND(23564.6487, 2) AS CHAR) AS 'Resultado';

-- Exemplo de funções de strings replace, cast e round
SELECT
    REPLACE(CAST(ROUND(23564.6487, 2) AS CHAR), '.', ',') AS 'Resultado';

-- Exemplo de funções de strings concat, replace, cast e round
SELECT
    CONCAT('R$ ', REPLACE(CAST(ROUND(23564.6487, 2) AS CHAR), '.', ',')) AS 'Resultado';
