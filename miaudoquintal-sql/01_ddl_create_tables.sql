-- 01_ddl_create_tables.sql
-- Criação do banco de dados e das tabelas do projeto MiauDoQuintal

CREATE DATABASE IF NOT EXISTS miaudoquintal;
USE miaudoquintal;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS SolicitacaoAdocao;
DROP TABLE IF EXISTS Animal;
DROP TABLE IF EXISTS Administrador;
DROP TABLE IF EXISTS Tutor;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE Tutor (
    id_tutor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(200),
    preferencias TEXT
);

CREATE TABLE Administrador (
    id_admin INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    cargo VARCHAR(50)
);

CREATE TABLE Animal (
    id_animal INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especie VARCHAR(30) NOT NULL,
    idade INT,
    porte VARCHAR(20),
    peso DECIMAL(5,2),
    historico TEXT,
    status VARCHAR(20) -- ex.: 'disponível', 'adotado'
);

CREATE TABLE SolicitacaoAdocao (
    id_solicitacao INT AUTO_INCREMENT PRIMARY KEY,
    data_solicitacao DATE NOT NULL,
    status VARCHAR(20) NOT NULL, -- ex.: 'pendente', 'aprovada', 'rejeitada'
    id_tutor INT NOT NULL,
    id_animal INT NOT NULL,
    id_admin_responsavel INT NOT NULL,
    CONSTRAINT fk_solicitacao_tutor
        FOREIGN KEY (id_tutor) REFERENCES Tutor(id_tutor),
    CONSTRAINT fk_solicitacao_animal
        FOREIGN KEY (id_animal) REFERENCES Animal(id_animal),
    CONSTRAINT fk_solicitacao_admin
        FOREIGN KEY (id_admin_responsavel) REFERENCES Administrador(id_admin)
);
