CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(25) NOT NULL,
    sexo CHAR(1),
    raça VARCHAR(25),
    dano_fisico INT,
    dano_magico INT,
    classe BIGINT,
    habilidade_especial VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(25) NOT NULL,
    subclasse VARCHAR(25) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classe) REFERENCES tb_classes(id);

INSERT INTO tb_classes (nome, subclasse)
VALUES ("Mago", "Elementalista"),
       ("Mago", "Necromante"),
       ("Mago", "Pyromancer"),
       ("Guerreiro", "Paladino"),
       ("Guerreiro", "Lutador"),
       ("Guerreiro", "Tank");

INSERT INTO tb_personagens (nome, sexo, raça, dano_fisico, dano_magico, habilidade_especial)
VALUES ("Geralt", "m", "Humano", 2500, 1500, "Sinais de Bruxo"),
       ("Yennefer", "f", "Humana", 1000, 3000, "Magia do Caos"),
       ("Link", "m", "Hylian", 2000, 1200, "Espada Mestre"),
       ("Zelda", "f", "Hylian", 800, 2500, "Magia Ancestral"),
       ("Kratos", "m", "Deus", 3000, 1000, "Fúria Espartana"),
       ("Atreus", "m", "Meio-Deus", 1500, 2000, "Flechas Mágicas"),
       ("Dovahkiin", "m", "Humano", 2700, 1800, "Shouts"),
       ("Ciri", "f", "Humana", 2300, 2200, "Salto Dimensional");

-- Consultas de exemplo
SELECT * FROM tb_personagens WHERE dano_fisico > 2000;
SELECT * FROM tb_personagens WHERE dano_magico IN (1000, 2000);
SELECT * FROM tb_personagens WHERE nome LIKE '%a%';

-- Atualizando as classes dos personagens
UPDATE tb_personagens SET classe = 3 WHERE id = 1;
UPDATE tb_personagens SET classe = 4 WHERE id = 2;
UPDATE tb_personagens SET classe = 3 WHERE id = 3;
UPDATE tb_personagens SET classe = 2 WHERE id = 4;
UPDATE tb_personagens SET classe = 1 WHERE id = 5;
UPDATE tb_personagens SET classe = 5 WHERE id = 6;
UPDATE tb_personagens SET classe = 3 WHERE id = 7;
UPDATE tb_personagens SET classe = 2 WHERE id = 8;

SELECT tb_personagens.nome, raça, dano_fisico, dano_magico, tb_classes.nome AS classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe = tb_classes.id;

SELECT tb_personagens.nome, raça, dano_fisico, dano_magico, tb_classes.nome AS classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe = tb_classes.id
WHERE tb_personagens.classe = 2;
