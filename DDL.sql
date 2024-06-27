# Criar Banco de Dados
CREATE DATABASE db_quitanda;

# Usar Banco de Dados 
USE db_quitanda;

# Criar Tabelas 
CREATE TABLE tb_produtos(
	# Campo id tipo BIGINT(Dobro do Tamanho do Int) com um auto increment
	id BIGINT auto_increment,
    # Campo nome tipo String com Max.255 Caracteres, não vai ser nulo
    nome varchar(255) not null,
    # Campo quantidade tipo inteiro
    quantidade int,
    # Campo dataValidade tipo Date
    dataValidade date,
    # Campo preco tipo decimal, não vai ser nulo
    preco decimal not null,
    # Identificando que a Chave Primaria da tabela será o campo Id 
    primary key(id)
);

# Buscar todos os campos da Tabela tb_produtos;
SELECT * FROM tb_produtos;

# Inserir na tabela tb_produtos
INSERT INTO tb_produtos(nome, quantidade,dataValidade,preco)
VALUES
# 	(nome, quantidade,dataValidade,preco)
	('Banana', 100, '2024-07-01', 0.30),
	('Maçã', 80, '2024-07-05', 0.50),
	('Tomate', 60, '2024-06-30', 0.70),
	('Alface', 50, '2024-07-02', 1.20),
	('Batata', 90, '2024-07-10', 0.40);

# Buscar todos os campos da Tabela tb_produtos;
SELECT * FROM tb_produtos;






