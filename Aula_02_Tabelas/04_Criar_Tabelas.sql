-- Seleciona o banco de dados `cursos`
USE cursos;

-- Cria a tabela `cursos` se não existir
CREATE TABLE IF NOT EXISTS cursos (
    idCurso INT NOT NULL
  , nomeCurso VARCHAR(65) NOT NULL
  , descricao TEXT
  , cargaHoraria INT
  , dataInicio DATE
);

-- Exibe a estrutura da tabela `cursos`
DESCRIBE cursos;

-- Exibe a estrutura da tabela `cursos`
EXPLAIN cursos;

-- Exibe a estrutura da tabela `cursos`
DESC cursos;
