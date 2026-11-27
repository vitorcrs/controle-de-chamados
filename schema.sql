-- Cria o banco e a tabela do sistema de chamados.
-- Rode uma vez: mysql -u root -p < schema.sql

CREATE DATABASE IF NOT EXISTS chamados_db
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE chamados_db;

CREATE TABLE IF NOT EXISTS chamados (
  id            INT AUTO_INCREMENT PRIMARY KEY,
  titulo        VARCHAR(120) NOT NULL,
  descricao     TEXT,
  prioridade    ENUM('Baixa', 'Média', 'Alta') NOT NULL DEFAULT 'Média',
  status        ENUM('Aberto', 'Em andamento', 'Encerrado') NOT NULL DEFAULT 'Aberto',
  criado_em     DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  atualizado_em DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  encerrado_em  DATETIME NULL
);
