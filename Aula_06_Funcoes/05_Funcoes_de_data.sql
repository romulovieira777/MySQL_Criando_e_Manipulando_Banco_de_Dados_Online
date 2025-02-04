-- Setando o banco de dados
USE empresa;

-- Exibindo os dados da tabela clientes
SELECT
    *
FROM
    clientes;

-- Exibindo os dados da tabela clientes com o nome do cliente em minúsculo e maiúsculo
SELECT
    LCASE(nomeCliente) AS nomeClienteMinusculo
  , UCASE(nomeCliente) AS nomeClienteMaiusculo
FROM
    clientes;

-- Atualizando o campo ufNascimento para maiúsculo
UPDATE
    clientes
SET
    ufNascimento = UCASE(ufNascimento);

-- Exibindo os dados da tabela clientes
SELECT
    *
FROM
    clientes;

-- Exibindo a data e hora atual
SELECT
    NOW() AS dataHoraAtual;

-- Exibindo a data e hora atual formatada
SELECT
    DATE_FORMAT(NOW(), '%d/%m/%Y') AS dataHoraAtualFormatada;


-- Exibindo a data de nascimento dos clientes formatada
SELECT
    DATE_FORMAT(clientes.dataNascimento, '%d/%m/%Y') AS dataNascimento
FROM
    clientes;

-- Exibindo o ano de nascimento dos clientes
SELECT
    YEAR(clientes.dataNascimento) AS anoNascimento
FROM
    clientes;

-- Exibindo os clientes que nasceram em 2000
SELECT
    *
FROM
    clientes
WHERE
    YEAR(clientes.dataNascimento) >= 2000;

-- Exibindo os clientes que nasceram em 2000 e no mês 7
SELECT
    *
FROM
    clientes
WHERE
    YEAR(clientes.dataNascimento) = 2000
AND
    MONTH(clientes.dataNascimento) = 7;
