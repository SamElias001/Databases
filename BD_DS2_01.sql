CREATE TABLE estado (
    id_estado INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sigla CHAR(2) NOT NULL
);

CREATE TABLE cidade (
    id_cidade  INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    id_estado INT,
    FOREIGN KEY (id_estado) REFERENCES estado(id_estado)
);

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    id_cidade INT,
    FOREIGN KEY (id_cidade) REFERENCES cidade(id_cidade)
);
 
INSERT INTO estado (nome, sigla) VALUES
('São Paulo', 'SP'),
('Minas Gerais', 'MG'),
('Rio de Janeiro','RJ'),
('Curitiba','PR'),
('Bahia','BH');

INSERT INTO cidade (nome, id_estado) VALUES
('Ribeirão Preto', 1),
('Belo Horizonte', 2),
('Rio de Janeiro', 3),
('Curitiba', 4),
('Salvador', 5);

INSERT INTO cliente (nome,cpf,telefone,id_cidade) VALUES
('João Silva', '123.4567.890-01', '(11)999999999', 1),
('Maria Silva', '234.123.321-02', '(31)76163276', 2),
('Pedro Silva', '345.678.901-03', '(21)9999999229', 3),
('Luiz Silva', '456.789.012-04', '(41)9999999991', 4),
('Ana Silva', '567.890.123-05', '(71)9999999992', 5),
('João Silva', '123.457.890-01', '(11)981650422', 1),
('Maria Silva', '234.13.321-02', '(31)76163276', 2),
('Pedro Silva', '345.78.901-03', '(21)999999922', 3),
('Luiz Silva', '456.89.012-04', '(41)999999999', 4),
('Ana Silva', '567.90.123-05', '(71)999999999', 5);