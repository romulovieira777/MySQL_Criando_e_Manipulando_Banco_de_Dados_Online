-- Seleciona o banco de dados empresa
USE empresa;

-- Inserção de dados na tabela clientes
INSERT INTO
    clientes
VALUES
    (DEFAULT, 'Jose Carlos', 'M', 'SP', '19951203'),
    (DEFAULT, 'Manoel Carlos', 'M', 'RJ', '1998@08@15'),
    (DEFAULT, 'João Antonio', 'M', 'RJ', '1997-05-23'),
    (DEFAULT, 'Antonio Marcos', 'M', 'SP', '1996-09-16'),
    (DEFAULT, 'Nilvan', 'M', 'SC', '2002-09-11'),
    (DEFAULT, 'Anastacia', 'F', 'SP', '2001-07-23'),
    (DEFAULT, 'Manuela', 'F', 'SC', '1998-09-18'),
    (DEFAULT, 'Vania', 'F', 'SP', '2001-08-14'),
    (DEFAULT, 'Mariana', 'F', 'MG', '2007-10-28'),
    (DEFAULT, 'João Firmino', 'M', 'PR', '1998-09-18'),
    (DEFAULT, 'Antonieta', 'F', 'MG', '2007-06-30'),
    (DEFAULT, 'Stevan', 'M', 'SP', '1998-05-22'),
    (DEFAULT, 'João Anisio', 'M', 'SP', '2003-10-05'),
    (DEFAULT, 'Juan', 'M', 'SP', '2005-03-13'),
    (DEFAULT, 'Mirian', 'F', 'MG', '2003-12-05'),
    (DEFAULT, 'Tania', 'F', 'RJ', '2000-07-12');

-- Exibe os dados da tabela clientes
SELECT
    *
FROM
    clientes;

-- Exibe os nomes dos clientes e suas datas de nascimento
SELECT
    clientes.nomeCliente
  , clientes.dataNascimento
FROM
    clientes;

-- Exibe as datas de nascimento e os nomes dos clientes
SELECT
    clientes.dataNascimento
  , clientes.nomeCliente
FROM
    clientes;

-- Exibe todos os dados da tabela clientes e a data de nascimento
SELECT
    *
  , clientes.dataNascimento
FROM
    clientes;

-- Exibe o nome do cliente e a data de nascimento
SELECT
    clientes.nomeCliente    AS "Nome do Cliente"
  , clientes.dataNascimento AS "Nascimento"
FROM
    clientes;
