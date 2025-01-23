-- Seleciona o banco de dados empresa
USE empresa;

-- Inserção de dados na tabela clientes
INSERT INTO clientes (nomeCliente, sexoCliente, ufNascimento, dataNascimento) VALUES ('Alem Mar Oaranhos', 'M', 'SP', '1995-05-30');

-- Exibe os dados da tabela clientes
SELECT
    *
FROM
    clientes;

-- Inserção de dados na tabela clientes
INSERT INTO clientes (nomeCliente, sexoCliente) VALUES ('Suzana Maria', 'F');

INSERT INTO clientes (sexoCliente, ufNascimento, nomeCliente) VALUES ('M', 'RJ', 'Antonio Carlos');

INSERT INTO clientes VALUES (DEFAULT, 'Jussara Maria', 'F', 'SC', '2000-05-21');

INSERT INTO clientes VALUES (DEFAULT, 'João Carlos', 'M', NULL, NULL);

INSERT INTO clientes
    (idCliente, nomeCliente, sexoCliente)
VALUES
    (DEFAULT, 'Suzi Rego', 'F'), (DEFAULT, 'Ana Melo', 'F'), (DEFAULT, 'Jorge Freitas', 'M');

INSERT INTO
    clientes
VALUES
    (DEFAULT, 'Jose Carlos', 'M', 'SP', '19951203'),
    (DEFAULT, 'Manoel Carlos', 'M', 'RJ', '1998@08@15'),
    (DEFAULT, 'João Antonio', 'M', 'RJ', '1997-05-23'),
    (DEFAULT, 'João Firmino', 'M', 'SP', '1998-09-18'),
    (DEFAULT, 'João', 'M', 'RJ', '200-07-12');
