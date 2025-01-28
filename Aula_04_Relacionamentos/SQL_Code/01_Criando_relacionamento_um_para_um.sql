-- Criação do banco de dados relacionamento
CREATE DATABASE IF NOT EXISTS relacionamento;

-- Seleciona o banco de dados relacionamento
USE relacionamento;

-- Cria a tabela funcionarios
CREATE TABLE IF NOT EXISTS relacionamento.funcionarios (
    fun_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
  , fun_nome VARCHAR(100) NOT NULL
  , fun_sexo ENUM('M', 'F') NOT NULL DEFAULT 'M'
  , fun_salario DECIMAL(10, 2)
);

-- Cria a tabela conjuge
CREATE TABLE IF NOT EXISTS relacionamento.conjuge (
    conj_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL
  , conj_nome VARCHAR(100)
  , conNasc DATE
  , fun_id INT
  , FOREIGN KEY (fun_id) REFERENCES funcionarios(fun_id)
  , UNIQUE (fun_id)
);

-- Exibe a estrutura da tabela funcionarios
DESC relacionamento.funcionarios;

-- Exibe a estrutura da tabela conjuge
DESC relacionamento.conjuge;