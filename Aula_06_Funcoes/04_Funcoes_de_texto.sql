-- Exemplo de funções de texto
SELECT
    'Impacta Online' AS 'Nome';

-- Exemplo de funções de texto com RIGHT
SELECT
    RIGHT('Impacta Online', 6) AS 'Nome';

-- Exemplo de funções de texto com LEFT
SELECT
    LEFT('Impacta Online', 7) AS 'Nome';

-- Exemplo de funções de texto com SUBSTRING
SELECT
    SUBSTRING('Impacta Online', 7) AS 'Nome';

-- Exemplo de funções de texto com SUBSTRING
SELECT
    SUBSTRING('Impacta Online', 9) AS 'Nome';

-- Exemplo de funções de texto com SUBSTRING
SELECT
    SUBSTRING('Impacta Online', 9, 2) AS 'Nome';

-- Exemplo de funções de texto com SUBSTRING
SELECT
    SUBSTRING('Impacta Online', -6) AS 'Nome';

-- Exemplo de funções de texto com SUBSTRING
SELECT
    SUBSTRING('Impacta Online', 1, 7) AS 'Nome';

-- Exemplo de funções de texto com TRIM
SELECT
    TRIM(' Impacta Online ') AS 'Nome';

-- Exemplo de funções de texto com LTRIM
SELECT
    LTRIM(' Impacta Online ') AS 'Nome';

-- Exemplo de funções de texto com RTRIM
SELECT
    RTRIM(' Impacta Online ') AS 'Nome';

-- Exemplo de funções de texto com UPPER
SELECT
    UPPER('impacta online') AS 'Nome';

-- Exemplo de funções de texto com LOWER
SELECT
    LOWER('IMPACTA ONLINE') AS 'Nome';

-- Exemplo de funções de texto com UCASE
SELECT
    UCASE('impacta online') AS 'Nome';

-- Exemplo de funções de texto com LCASE
SELECT
    LCASE('IMPACTA ONLINE') AS 'Nome';
