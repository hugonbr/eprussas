CREATE TABLE Produto (
IDProduto int(11) NOT NULL AUTO_INCREMENT,
NomeProduto varchar(255) CHARACTER SET utf8 DEFAULT NULL,
IDRevendedor int(11) DEFAULT NULL,
IDCategoria int(11) DEFAULT NULL,
Unidade varchar(255) CHARACTER SET utf8 DEFAULT NULL,
Quantidade int(11) DEFAULT NULL,
Preco decimal(10,2) DEFAULT NULL,
PRIMARY KEY (`IDProduto`)
);
Insert into Produto values (1,'TV LG 4k',1,4,null,1,1999.90);
Insert into Produto values (2,'Jogo Uno',1,7,null,5,19.90);
Insert into Produto values (3,'Chocolate',1,4,'250g',8,9.90);
Insert into Produto values (4,'Camisa Branca G',1,4,null,2,29.90);
select NomeProduto, Quantidade, Preco from Produto where Quantidade > 4;


