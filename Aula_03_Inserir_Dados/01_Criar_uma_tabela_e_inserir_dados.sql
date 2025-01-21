-- Criação de um banco de dados chamado empresa
CREATE DATABASE IF NOT EXISTS empresa;

-- visualização de todos os bancos de dados
SHOW DATABASES;

-- Seleciona o banco de dados empresa
USE empresa;

-- Cria a tabela clientes
CREATE TABLE IF NOT EXISTS empresa.clientes (
    idCliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY
  , nomeCliente VARCHAR(100) NOT NULL
  , sexoCliente ENUM('M', 'F')
  , ufNascimento CHAR(2)
  , dataNascimento DATE
);

-- Exibe a estrutura da tabela clientes
DESC empresa.clientes;
