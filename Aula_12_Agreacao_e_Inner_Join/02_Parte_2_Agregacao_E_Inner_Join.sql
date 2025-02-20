-- Seleção da base de dados
USE db_cds;

-- Exibindo os dados da tabela clientes
SELECT
    *
FROM
    clientes;

-- Exibindo os dados nome do cliente, nome da cidade e nome do estado
SELECT
    nome_cli AS 'Nome do Cliente'
  , nome_cid AS 'Nome da Cidade'
  , nome_est AS 'Nome do Estado'
FROM
    clientes AS cl
INNER JOIN
    cidades AS cd
ON
    cl.cod_cid = cd.cod_cid
INNER JOIN
    estados AS e
ON
    cd.sigla_est = e.sigla_est
WHERE
    e.nome_est = 'São Paulo';

-- Exibindo a quantidade de clientes
SELECT
    COUNT(cod_cli) AS 'Quantidade de Clientes'
FROM
    clientes AS cl
INNER JOIN
    cidades AS cd
ON
    cl.cod_cid = cd.cod_cid
INNER JOIN
    estados AS e
ON
    cd.sigla_est = e.sigla_est
WHERE
    e.nome_est = 'São Paulo';
