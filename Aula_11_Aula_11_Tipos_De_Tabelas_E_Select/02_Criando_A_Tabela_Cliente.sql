-- Seleção da base de dados
USE db_cds;

-- Criação da tabela estados
CREATE TABLE IF NOT EXISTS db_cds.estados (
    sigla_est CHAR(2) NOT NULL
  , nome_est CHAR(50) NOT NULL
  , CONSTRAINT pk_est PRIMARY KEY (sigla_est)
  , CONSTRAINT uq_est UNIQUE (nome_est)
);

-- Exibe a estrutura da tabela estados
DESC db_cds.estados;

-- Inserção de dados na tabela estados
INSERT INTO
    db_cds.estados
VALUES
    ('AC', 'Acre'),
    ('AL', 'Alagoas'),
    ('AP', 'Amapá'),
    ('AM', 'Amazonas'),
    ('BA', 'Bahia'),
    ('CE', 'Ceará'),
    ('DF', 'Distrito Federal'),
    ('ES', 'Espírito Santo'),
    ('GO', 'Goiás'),
    ('MA', 'Maranhão'),
    ('MT', 'Mato Grosso'),
    ('MS', 'Mato Grosso do Sul'),
    ('MG', 'Minas Gerais'),
    ('PA', 'Pará'),
    ('PB', 'Paraíba'),
    ('PR', 'Paraná'),
    ('PE', 'Pernambuco'),
    ('PI', 'Piauí'),
    ('RJ', 'Rio de Janeiro'),
    ('RN', 'Rio Grande do Norte'),
    ('RS', 'Rio Grande do Sul'),
    ('RO', 'Rondônia'),
    ('RR', 'Roraima'),
    ('SC', 'Santa Catarina'),
    ('SP', 'São Paulo'),
    ('SE', 'Sergipe'),
    ('TO', 'Tocantins');

-- Exibe os dados da tabela estados
SELECT
    *
FROM
    db_cds.estados;

-- Criação da tabela cidades
CREATE TABLE IF NOT EXISTS db_cds.cidades (
    cod_cid INT NOT NULL AUTO_INCREMENT
  , sigla_est CHAR(2) NOT NULL
  , nome_cid VARCHAR(100) NOT NULL
  , CONSTRAINT pk_cid PRIMARY KEY (cod_cid)
  , CONSTRAINT fk_cid FOREIGN KEY (sigla_est) REFERENCES db_cds.estados(sigla_est)
);

-- Exibe a estrutura da tabela cidades
DESC db_cds.cidades;

-- Inserção de dados na tabela cidades
INSERT INTO
    db_cds.cidades
VALUES
    (NULL, 'SP', 'São Paulo'),
    (NULL, 'SP', 'Sorocaba'),
    (NULL, 'SP', 'Jundiaí'),
    (NULL, 'SP', 'Americana'),
    (NULL, 'SP', 'Araraquara'),
    (NULL, 'MG', 'Ouro Preto'),
    (NULL, 'RJ', 'Cachoeiro do Itapemirim');

-- Exibe os dados da tabela cidades
SELECT
    *
FROM
    db_cds.cidades;

-- Criação da tabela clientes
CREATE TABLE IF NOT EXISTS db_cds.clientes (
    cod_cli INT NOT NULL AUTO_INCREMENT
  , cod_cid INT NOT NULL
  , nome_cli VARCHAR(100) NOT NULL
  , end_cli VARCHAR(100) NOT NULL
  , renda_cli DECIMAL(10, 2) NOT NULL
  , sexo_cli CHAR(1) NOT NULL DEFAULT 'F'
  , CONSTRAINT pk_cli PRIMARY KEY (cod_cli)
  , CONSTRAINT fk_cli FOREIGN KEY (cod_cid) REFERENCES db_cds.cidades(cod_cid)
  , CONSTRAINT ch_cli_1 CHECK (renda_cli > 0)
  , CONSTRAINT ch_cli_2 CHECK (sexo_cli IN ('M', 'F'))
);

-- Exibe a estrutura da tabela clientes
DESC db_cds.clientes;

-- Inserção de dados na tabela clientes
INSERT INTO
    db_cds.clientes
VALUES
    (NULL, 1, 'José Nogueira', 'Rua A', 1500.00, 'M')
  , (NULL, 1, 'Angelo Pereira', 'Rua B', 2000.00, 'M')
  , (NULL, 1, 'Além Mar Paranhos', 'Rua C', 1500.00, 'F')
  , (NULL, 1, 'Catarina Souza', 'Rua D', 892.00, 'F')
  , (NULL, 1, 'Vagner Costa', 'Rua E', 950.00, 'M')
  , (NULL, 2, 'Antenor da Costa', 'Rua F', 1582.00, 'M')
  , (NULL, 2, 'Maria Amélia de Souza', 'Rua G', 1152.02, 'F')
  , (NULL, 2, 'Paulo Roberto da Silva', 'Rua H', 3250.00, 'M')
  , (NULL, 3, 'Fátima de Souza', 'Rua I', 1632.00, 'F')
  , (NULL, 3, 'Joel da Rocha', 'Rua J', 2000.00, 'M');

-- Exibe os dados da tabela clientes
SELECT
    *
FROM
    db_cds.clientes;

-- Criação da tabela conjuges
CREATE TABLE IF NOT EXISTS db_cds.conjuges (
    cod_cli INT NOT NULL
  , nome_conj VARCHAR(100) NOT NULL
  , renda_conj DECIMAL(10, 2) NOT NULL DEFAULT 0
  , sexo_conj CHAR(1) NOT NULL DEFAULT 'M'
  , CONSTRAINT pk_conj PRIMARY KEY (cod_cli)
  , CONSTRAINT fk_conj FOREIGN KEY (cod_cli) REFERENCES db_cds.clientes(cod_cli)
  , CONSTRAINT ch_conj_1 CHECK (renda_conj >= 0)
  , CONSTRAINT ch_conj_2 CHECK (sexo_conj IN ('M', 'F'))
);

-- Exibe a estrutura da tabela conjuges
DESC db_cds.conjuges;

-- Inserção de dados na tabela conjuges
INSERT INTO
    db_cds.conjuges
VALUES
    (1, 'Carla Nogueira', 2500.00, 'F')
  , (2, 'Emilia Pereira', 5500.00, 'F')
  , (6, 'Altivista da Costa', 3000.00, 'F')
  , (7, 'Carlos de Souza', 3250.00, 'M');

-- Exibe os dados da tabela conjuges
SELECT
    *
FROM
    db_cds.conjuges;
