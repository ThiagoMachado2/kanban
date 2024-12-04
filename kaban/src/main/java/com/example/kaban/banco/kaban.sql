-- Criação do banco de dados
CREATE DATABASE kanban;

-- Criação da tabela de usuários
CREATE TABLE user (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

-- Criação da tabela de tarefas
CREATE TABLE task (
    id SERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    description VARCHAR(255) NOT NULL,
    sector VARCHAR(255) NOT NULL,
    priority VARCHAR(10) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    status VARCHAR(15) NOT NULL,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES user (id)
);