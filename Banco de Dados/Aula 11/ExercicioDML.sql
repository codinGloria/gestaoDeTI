-- (1)
CREATE DATABASE aula;

CREATE TABLE cliente (
 cod_cliente SERIAL NOT NULL,
 nome_cliente VARCHAR(30) NOT NULL,
 cpf_cliente VARCHAR(30) NOT NULL,
 celular_cliente VARCHAR(30),
 PRIMARY KEY (cod_cliente)
);

CREATE TABLE produto (
 cod_produto SERIAL NOT NULL,
 descricao VARCHAR(60) NOT NULL,
 preco NUMERIC(8,2),
 estoque INT DEFAULT 0,
 tipo_produto VARCHAR(10),
 PRIMARY KEY (cod_produto)
);

CREATE TABLE venda (
 cod_venda SERIAL NOT NULL,
 data_venda DATE,
 hora_venda TIME,
 cod_cliente INTEGER,
 PRIMARY KEY (cod_venda),
 FOREIGN KEY (cod_cliente) REFERENCES cliente (cod_cliente) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE produtosVenda (
 id_prodVenda SERIAL NOT NULL,
 codigo_venda INTEGER,
 codigo_produto INTEGER,
 qntd_vendida INTEGER,
 valor_total NUMERIC(8,2),
 PRIMARY KEY (id_prodVenda),
 FOREIGN KEY (codigo_venda) REFERENCES venda (cod_venda) ON DELETE NO ACTION ON UPDATE NO ACTION,
 FOREIGN KEY (codigo_produto) REFERENCES produto (cod_produto) ON DELETE NO ACTION ON UPDATE NO ACTION
);

 -- (2)
INSERT INTO
 cliente (nome_cliente, cpf_cliente, celular_cliente)
VALUES
 ('Glória', '123.456.789-22', '37998201171' );

-- (3)
INSERT INTO
 cliente (nome_cliente, cpf_cliente, celular_cliente)
VALUES
 ('Luan', '123.456.789-44', '37998201171' ),
 ('Eric', '123.456.789-66', '37999107410' ),
 ('Lidia', '123.456.789-88', '37998702041' ),
 ('Lucas', '123.456.789-00', '37998417485' ),
 ('Neide', '123.456.789-24', '37999147455' );

-- (4)
UPDATE cliente
SET celular_cliente = '37999998888'
WHERE nome_cliente = 'Glória';

-- (5)
SELECT
 nome_cliente
FROM
 cliente
ORDER BY
 1;

-- (6)
INSERT INTO
 produto (descricao, preco, estoque, tipo_produto)
VALUES
 ('Refrigerante Coca-cola', 9.80, 100, 'BEBIDA'),
 ('Milho de pipoca', 4.20, 20, 'ALIMENTO' ),
 ('Batata', 15.99, 20, 'ALIMENTO' ),
 ('Pão francês', 5.98, 200, 'ALIMENTO' ),
 ('Suco de laranja', 8.40, 18, 'BEBIDA'),
 ('Água mineral', 2.40, 28, 'BEBIDA');

-- (7)
UPDATE produto 
SET preco = preco * 1.10 
WHERE cod_produto IN (2, 4, 6);

-- (8)
UPDATE produto 
SET preco = preco * 0.90
WHERE cod_produto IN (1, 3, 5);

-- (9)
SELECT 
	* 
FROM 
	produto 
WHERE estoque > 50 OR preco < 100.00;

-- (10)
INSERT INTO 
	venda (data_venda, hora_venda, cod_cliente) 
VALUES 
	('2024-04-24', '18:28:10', 2);

INSERT INTO 
	produtosvenda (codigo_venda, codigo_produto, qntd_vendida, valor_total) 
VALUES
    (1, 1, 2, 28.78),
    (1, 3, 2, 17.64);
   
-- (11)
UPDATE produto 
SET estoque = estoque - (
    SELECT qntd_vendida 
    FROM produtosvenda 
    WHERE codigo_venda = 1 
    AND produto.cod_produto = produtosvenda.codigo_produto)
WHERE produto.cod_produto IN (
    SELECT codigo_produto 
    FROM produtosvenda 
    WHERE codigo_venda = 1);
   
-- (12)
INSERT INTO
 produto (descricao, estoque, tipo_produto)
VALUES
 ('Barra de Chocolate Laka', 80, 'ALIMENTO');