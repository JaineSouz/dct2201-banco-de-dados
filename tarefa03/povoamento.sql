-- Povoamento adicional da biblioteca
-- Os quatro autores e cinco livros iniciais ja devem existir.

USE biblioteca;

INSERT INTO autores (nome, pais, ano_nascimento) VALUES
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

INSERT INTO livros (titulo, ano_publicacao, preco, autor_id) VALUES
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
