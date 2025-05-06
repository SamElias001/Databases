CREATE TABLE autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE editora (
    id_editora INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE genero_literario (
    id_genero_literario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    ISBN VARCHAR(13) UNIQUE NOT NULL,
    ano_publicacao VARCHAR(4),
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor),
    id_editora INT,
    FOREIGN KEY (id_editora) REFERENCES editora(id_editora),
    id_genero_literario INT,
    FOREIGN KEY (id_genero_literario) REFERENCES genero_literario(id_genero_literario)
);

/* Area de implementação */

INSERT INTO autor(nome) VALUES("Mario de Andrade");

INSERT INTO editora(nome) VALUES("Ediouro");

INSERT INTO genero_literario(nome) VALUES("Fantasia");

INSERT INTO livro(titulo,ISBN,ano_publicacao,id_autor,id_editora,id_genero_literario) VALUES("O Pequeno Príncipe","1234567898765","2000",1,1,1);