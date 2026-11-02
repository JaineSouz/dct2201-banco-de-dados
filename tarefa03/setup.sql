-- Tarefa 03 - Configuracao do banco de dados
-- Banco: biblioteca

DROP DATABASE IF EXISTS biblioteca;

CREATE DATABASE biblioteca
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE biblioteca;

-- Tabela de autores
CREATE TABLE autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    pais VARCHAR(50),
    ano_nascimento INT
) ENGINE=InnoDB;

-- Tabela de livros
CREATE TABLE livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    ano_publicacao INT,
    preco DECIMAL(10,2),
    autor_id INT,
    FOREIGN KEY (autor_id) REFERENCES autores(id)
) ENGINE=InnoDB;

-- Tabela de emprestimos
CREATE TABLE emprestimos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro_id INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    devolvido BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (livro_id) REFERENCES livros(id)
) ENGINE=InnoDB;

-- Cadastro dos autores
INSERT INTO autores (nome, pais, ano_nascimento) VALUES
('Machado de Assis', 'Brasil', 1839),
('Clarice Lispector', 'Brasil', 1920),
('Gabriel García Márquez', 'Colômbia', 1927),
('Jane Austen', 'Inglaterra', 1775),
('William Shakespeare', 'Inglaterra', 1564),
('Victor Hugo', 'França', 1802),
('Franz Kafka', 'República Tcheca', 1883),
('George Orwell', 'Inglaterra', 1903),
('Agatha Christie', 'Inglaterra', 1890),
('Jorge Luis Borges', 'Argentina', 1899),
('Liev Tolstói', 'Rússia', 1828),
('Mary Shelley', 'Inglaterra', 1797),
('Miguel de Cervantes', 'Espanha', 1547),
('Chimamanda Ngozi Adichie', 'Nigéria', 1977);

-- Cadastro dos livros
INSERT INTO livros (titulo, ano_publicacao, preco, autor_id) VALUES
('Dom Casmurro', 1899, 43.89, 1),
('Memórias Póstumas de Brás Cubas', 1881, 45.00, 1),
('A Hora da Estrela', 1977, 32.50, 2),
('Cem Anos de Solidão', 1967, 59.90, 3),
('Orgulho e Preconceito', 1813, 29.90, 4),
('Hamlet', 1603, 35.90, 5),
('Romeu e Julieta', 1597, 29.90, 5),
('Os Miseráveis', 1862, 59.90, 6),
('O Corcunda de Notre-Dame', 1831, 45.90, 6),
('A Metamorfose', 1915, 32.90, 7),
('O Processo', 1925, 42.90, 7),
('1984', 1949, 39.90, 8),
('A Revolução dos Bichos', 1945, 29.90, 8),
('Assassinato no Expresso do Oriente', 1934, 44.90, 9),
('E Não Sobrou Nenhum', 1939, 39.90, 9),
('Ficções', 1944, 34.90, 10),
('O Aleph', 1949, 36.90, 10),
('Guerra e Paz', 1869, 79.90, 11),
('Anna Kariênina', 1877, 69.90, 11),
('Frankenstein', 1818, 39.90, 12),
('O Último Homem', 1826, 45.90, 12),
('Dom Quixote', 1605, 59.90, 13),
('Novelas Exemplares', 1613, 42.90, 13),
('Americanah', 2013, 49.90, 14),
('Meio Sol Amarelo', 2006, 46.90, 14),
('A Cor Púrpura', 1982, 39.90, 2),
('O Amor nos Tempos do Cólera', 1985, 49.90, 3),
('Razão e Sensibilidade', 1811, 35.90, 4),
('O Rei Lear', 1606, 37.90, 5),
('O Homem que Ri', 1869, 48.90, 6);

-- Cadastro dos emprestimos
INSERT INTO emprestimos (livro_id, data_emprestimo, devolvido) VALUES
(1, '2026-10-20', FALSE),
(2, '2026-10-22', FALSE),
(3, '2026-10-25', TRUE);

-- Criacao dos usuarios
CREATE USER IF NOT EXISTS 'app_biblioteca'@'%' IDENTIFIED BY 'AppBib2026!';
CREATE USER IF NOT EXISTS 'consulta'@'%' IDENTIFIED BY 'Consulta2026!';
CREATE USER IF NOT EXISTS 'relatorios'@'%' IDENTIFIED BY 'Relatorios2026!';

-- Permissoes
GRANT SELECT, INSERT, UPDATE, DELETE
ON biblioteca.* TO 'app_biblioteca'@'%';

GRANT SELECT
ON biblioteca.* TO 'consulta'@'%';

GRANT SELECT
ON biblioteca.livros TO 'relatorios'@'%';

FLUSH PRIVILEGES;
