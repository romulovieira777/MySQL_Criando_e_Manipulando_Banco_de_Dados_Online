-- Cria o banco de dados `cursos` se não existir
CREATE DATABASE IF NOT EXISTS cursos;

-- Seleciona o banco de dados `cursos`
USE cursos;

-- Remove o banco de dados `cursos` se existir
DROP DATABASE IF EXISTS cursos;

-- Cria o banco de dados `cursos` com charset e collation definidos
CREATE DATABASE IF NOT EXISTS cursos
DEFAULT CHARSET utf8
DEFAULT COLLATE utf8_general_ci;

-- Seleciona o banco de dados `cursos`
USE cursos;
