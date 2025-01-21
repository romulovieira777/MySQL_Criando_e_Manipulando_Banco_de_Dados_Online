-- Seleciona o banco de dados `cursos`
USE cursos;

-- Exibe a estrutura da tabela `cursos`
DESCRIBE cursos;

-- Cria uma nova tabela `cursosVerao` com a mesma estrutura da tabela `cursos`
CREATE TABLE curosVerao LIKE cursos;

-- Exibe a estrutura da tabela `cursosVerao`
desc curosVerao;

-- Renomeia a tabela `cursosVerao` para `cursosFerias`
ALTER TABLE curosVerao RENAME TO cursosFerias;

-- Exibe a estrutura da tabela `cursosFerias`
DESC cursosFerias;

-- Adiciona a coluna `estacao` na tabela `cursosFerias`
ALTER TABLE cursosFerias ADD COLUMN estacao VARCHAR(20);

-- Exibe a estrutura da tabela `cursosFerias`
DESC cursosFerias;

-- Adiciona a coluna `teste` na tabela `cursosFerias` após a coluna `descricao`
ALTER TABLE cursosFerias ADD COLUMN teste VARCHAR(20) AFTER descricao;

-- Exibe a estrutura da tabela `cursosFerias`
DESC cursosFerias;

-- Adiciona a coluna `teste2` na tabela `cursosFerias` na primeira posição
ALTER TABLE cursosFerias ADD COLUMN teste2 VARCHAR(20) FIRST;

-- Exibe a estrutura da tabela `cursosFerias`
DESC cursosFerias;

-- Modifica a coluna `teste2` da tabela `cursosFerias` para `INT(5) ZEROFILL NOT NULL`
ALTER TABLE cursosFerias MODIFY COLUMN teste2 INT(5) ZEROFILL NOT NULL;

-- Exibe a estrutura da tabela `cursosFerias`
DESC cursosFerias;

-- Modifica a coluna `teste2` da tabela `cursosFerias` para `testando INT(5) ZEROFILL NOT NULL`
ALTER TABLE cursosFerias CHANGE teste2 testando INT(5) ZEROFILL NOT NULL;

-- Exibe a estrutura da tabela `cursosFerias`
DESC cursosFerias;

-- Remove a coluna `testando` da tabela `cursosFerias`
ALTER TABLE cursosFerias DROP COLUMN testando;

-- Exibe a estrutura da tabela `cursosFerias`
DESC cursosFerias;

-- Remove a tabela `cursosFerias`
SHOW TABLES;

-- Exclui a tabela `cursosFerias`
DROP TABLE cursosFerias;

-- Exibe a estrutura de todas as tabelas do banco de dados `cursos`
SHOW TABLES;

-- Exclui o banco de dados `cursos`
DROP DATABASE cursos;

-- Exibe a estrutura de todas as tabelas do banco de dados `cursos`
SHOW TABLES;
