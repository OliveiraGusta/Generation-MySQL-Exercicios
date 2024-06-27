CREATE DATABASE IF NOT EXISTS db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
    id_estudante BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    curso VARCHAR(50),
    nota DECIMAL(4, 1)
);

INSERT INTO tb_estudantes (nome, idade, curso, nota) VALUES
('Caroline Coutinho', 15, 'Matemática', 2.9),
('Giovana Takahashi', 16, 'História', 2.5),
('Rodrigo Dias', 17, 'Geografia', 6.2),
('Fernanda Viotto', 18, 'Biologia', 4.5),
('Gustavo', 16, 'Física', 6.8),
('Gabriela Stano', 17, 'Química', 8.3),
('Yanca Dantas', 18, 'Artes', 7.1),
('Victor Camargo', 19, 'Literatura', 3.7),
('João Pedro', 18, 'Educação Física', 9.8),
('Will Belcari', 17, 'Inglês', 4.0);

SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota <= 7.0;

UPDATE tb_estudantes SET nota = nota + 5 WHERE nota >= 4 AND nota < 5;
SELECT nome AS "Estudantes que não passaram" , nota AS "Nota pós recueracao" FROM tb_estudantes WHERE nota < 5;