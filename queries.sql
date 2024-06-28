CREATE TABLE usuario (
    id BIGINT PRIMARY KEY,
    email VARCHAR(100),
    senha VARCHAR(100)
);

CREATE TABLE atleta (
    id BIGINT PRIMARY KEY,
    usuario BIGINT,
    nome VARCHAR(100),
    nascimento DATE,
    documento VARCHAR(100),
    FOREIGN KEY (usuario) REFERENCES usuario(id)
);

CREATE TABLE cavalo (
    id BIGINT PRIMARY KEY,
    usuario BIGINT,
    nome VARCHAR(100),
    FOREIGN KEY (usuario) REFERENCES usuario(id)
);

CREATE TABLE entidade (
    id BIGINT PRIMARY KEY,
    usuario BIGINT,
    nome VARCHAR(100),
    endereco VARCHAR(300),
    FOREIGN KEY (usuario) REFERENCES usuario(id)
);

CREATE TABLE evento (
    id BIGINT PRIMARY KEY,
    entidade BIGINT,
    nome VARCHAR(150),
    descricao VARCHAR(400),
    inicio DATE,
    fim DATE,
    FOREIGN KEY (entidade) REFERENCES entidade(id)
);

CREATE TABLE dia (
    id BIGINT PRIMARY KEY,
    evento BIGINT,
    data DATE,
    FOREIGN KEY (evento) REFERENCES evento(id)
);

CREATE TABLE altura (
    id BIGINT PRIMARY KEY,
    dia BIGINT,
    altura VARCHAR(30),
    FOREIGN KEY (dia) REFERENCES dia(id)
);

CREATE TABLE categoria (
    id BIGINT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE inscricao (
    id BIGINT PRIMARY KEY,
    atleta BIGINT,
    cavalo BIGINT,
    dia BIGINT,
    evento BIGINT,
    altura BIGINT,
    categoria BIGINT,
    FOREIGN KEY (atleta) REFERENCES atleta(id),
    FOREIGN KEY (cavalo) REFERENCES cavalo(id),
    FOREIGN KEY (dia) REFERENCES dia(id),
    FOREIGN KEY (evento) REFERENCES evento(id),
    FOREIGN KEY (altura) REFERENCES altura(id),
    FOREIGN KEY (categoria) REFERENCES categoria(id)
);
