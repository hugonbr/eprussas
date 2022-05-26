CREATE DATABASE testeproduto;
USE testeproduto;

CREATE TABLE produto (
	id INT,
    nome VARCHAR(100),
    preco DECIMAL(15,2),
    quant INT,
    PRIMARY KEY (id)
);

DROP TABLE produto;

INSERT INTO produto VALUES (1, 'p1', 2.45, 4);
INSERT INTO produto VALUES (2, 'p2', 4.60, 14);
INSERT INTO produto VALUES (3, 'p3', 22.75, 12);
INSERT INTO produto VALUES (4, 'p4', 10.00, 7);
INSERT INTO produto VALUES (5, 'p5', 4.60, 1);


SELECT * FROM produto;
DELETE FROM produto;

SELECT MAX(preco) FROM produto;

SELECT nome, preco FROM produto WHERE preco = (SELECT MAX(preco) FROM produto);
SELECT nome, preco FROM produto WHERE preco = 4.60; -- (SELECT MAX(preco) FROM produto);