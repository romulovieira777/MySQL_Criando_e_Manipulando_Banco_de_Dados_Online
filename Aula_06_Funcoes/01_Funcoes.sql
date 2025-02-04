-- Arendondamento de valores com a função ROUND no MySQL
SELECT
    ROUND(125874.3687) AS ARREDONDAMENTO;

-- Arendondamento de valores com a função ROUND no MySQL
SELECT
    ROUND(125874.8687) AS ARREDONDAMENTO;

-- Arendondamento de valores com a função ROUND no MySQL
SELECT
    ROUND(125874.8687, 2) AS ARREDONDAMENTO;

-- Cast de valores com a função CAST no MySQL
SELECT
    CAST(125874.8687 AS CHAR) AS ARREDONDAMENTO;

-- Cast de valores com a função CAST e arredondamento com ROUND no MySQL
SELECT
    CAST(ROUND(125874.8687, 2) AS CHAR) AS ARREDONDAMENTO;
