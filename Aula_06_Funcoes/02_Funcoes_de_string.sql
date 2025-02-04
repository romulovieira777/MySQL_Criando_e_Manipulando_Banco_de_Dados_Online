-- Exemplo de concatenação de strings
SELECT
    CONCAT('10', ' e ', '20') AS 'Resultado';

-- Exemplo de concatenação de strings com CAST
SELECT
    CONCAT(CAST(10 AS CHAR), ' e ', '20') AS 'Resultado';

-- Soma de strings
SELECT
    '10' + '20' AS 'Resultado';
