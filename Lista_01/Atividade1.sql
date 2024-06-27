CREATE DATABASE IF NOT EXISTS db_servicos_rh;
USE db_servicos_rh;

CREATE TABLE colaboradores  (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    dataDeNascimento DATE NOT NULL,
    cargo VARCHAR(50) NOT NULL,
	senioridade INT NOT NULL,
    salario DECIMAL(10,2) NOT NULL
);

INSERT INTO colaboradores (nome, dataDeNascimento, cargo, senioridade, salario) VALUES
("Lucas Carlos", "2000-06-28", "Desenvolvedor", 0, 1800.00),
("Eduardo Wada", "1999-08-07", "Engenheiro", 2, 8500.00),
("Nicollas Silva de Moraes", "2000-08-05", "Analista de Segurança", 1, 3000.00),
("Isabelly Dornelas", "2003-08-19", "Designer", 0, 1500.00),
("Cicero Felipe", "1997-08-31", "Recursos Humanos", 2, 4800.00);

SELECT * FROM colaboradores WHERE salario > 2000;
SELECT * FROM colaboradores WHERE salario < 2000;

RENAME TABLE colaboradores TO tb_colaboradores;

UPDATE tb_colaboradores SET salario = salario * 1.40, senioridade = 1 WHERE senioridade = 0;
SELECT nome AS 'Funcionários Juniors', salario, cargo FROM tb_colaboradores WHERE senioridade = 1;


