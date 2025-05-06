CREATE DATABASE oficina_motos;
USE oficina_motos;

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    data_cadastro DATE NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao_detalhada TEXT,
    valor DECIMAL(10,2) NOT NULL
);

CREATE TABLE orcamento (
    id_orcamento INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    data_orcamento DATE NOT NULL,
    validade_orcamento DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE item_orcamento (
    id_orcamento INT,
    id_servico INT,
    quantidade INT NOT NULL DEFAULT 1,
    percentual_desconto DECIMAL(5,2),
    PRIMARY KEY (id_orcamento, id_servico),
    FOREIGN KEY (id_orcamento) REFERENCES orcamento(id_orcamento),
    FOREIGN KEY (id_servico) REFERENCES servico(id_servico)
);