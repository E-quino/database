CREATE TABLE usuario (
    id BIGINT PRIMARY KEY,
    email VARCHAR(100),
    senhaHash VARCHAR(100),
)

CREATE TABLE atleta (
    id BIGINT PRIMARY KEY,
    usuarioID BIGINT,
    nome VARCHAR(100),
    nascimento DATE,
    documento VARCHAR(100),
    FOREIGN KEY (usuarioID) REFERENCES usuario(id)
)

CREATE TABLE cavalo (
    id BIGINT PRIMARY KEY,
    usuarioID BIGINT,
    nome VARCHAR(100),
    FOREIGN KEY (usuarioID) REFERENCES usuario(id)
)

CREATE TABLE entidade (
    id BIGINT PRIMARY KEY,
    usuarioID BIGINT,
    nome VARCHAR(100),
    endereco VARCHAR(300),
    FOREIGN KEY (usuarioID) REFERENCES usuario(id)
)

CREATE TABLE evento (
    id BIGINT PRIMARY KEY,
    entidadeID BIGINT,
    
)
