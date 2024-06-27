CREATE DATABASE IF NOT EXISTS db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
    id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT,
    categoria VARCHAR(50)
);

INSERT INTO tb_produtos (nome, preco, descricao, categoria) VALUES
('Camiseta Masculina', 39.99, 'Camiseta básica de algodão', 'Roupas'),
('Calça Jeans Feminina', 89.90, 'Calça jeans skinny', 'Roupas'),
('Tênis Esportivo', 199.99, 'Tênis para corrida leve', 'Calçados'),
('Bolsa de Couro', 149.50, 'Bolsa feminina em couro sintético', 'Acessórios'),
('Relógio Digital', 129.99, 'Relógio digital esportivo resistente à água', 'Acessórios'),
('Óculos de Sol', 79.90, 'Óculos de sol com proteção UV', 'Acessórios'),
('Smartphone', 1999.00, 'Smartphone com câmera tripla e processador octa-core', 'Eletrônicos'),
('Tablet', 899.00, 'Tablet com tela HD e memória expansível', 'Eletrônicos');

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = preco * 0.80 WHERE categoria = "Eletrônicos";
SELECT nome AS "Eletronicos", preco AS "20% de Desconto" FROM tb_produtos WHERE categoria = "Eletrônicos";
