use www;
-- Comandos para popular o BANCO
-- cliente
select * from cliente;
INSERT INTO cliente(login, senha, cpf, nome, e_rua, e_cidade, e_estado)
VALUES ('hugo','0000','001-002-003-44','Hugo Nathan','Av Principal 123','Russas','CE');
INSERT INTO cliente(login, senha, cpf, nome, e_rua, e_cidade, e_estado)
VALUES ('jose','1111','111-002-003-44','José Lima','Av Leste 543','Mossoró','RN');
INSERT INTO cliente(login, senha, cpf, nome, e_rua, e_cidade, e_estado)
VALUES ('maria','2222','222-002-003-44','Maria Sombra','Av Principal 3564','Russas','CE');
-- admin
select * from admin;
INSERT INTO `admin` (`idadmin`, `nome`, `login`, `senha`) VALUES
(NULL, 'João Admin', 'jojo', '0000'), (NULL, 'Pedro Admin', 'pepe', '0000');
-- entregador
select * from entregador;
INSERT INTO `entregador` (`identregador`, `nome`, `login`, `senha`, `placa`) VALUES
(NULL, 'José Entrega', 'jose', '0000', 'HRA-4511'), (NULL, 'Paulo Entrega', 'paulo', '0000', 'HHA-3132');
-- categoria_produto
select * from categoria;
INSERT INTO `categoria` (`idcategoria`, `nome`) VALUES (NULL, 'pizza'), (NULL, 'refrigerante');
-- produto
select * from produto;
INSERT INTO produto(nome, valor, descricao, quantidade, categoria_idcategoria)
VALUES ('Coca-Cola 2L',5.59,'Refrigerante Coca-Cola 2 Litros retornável',20,2);
INSERT INTO produto(nome, valor, descricao, quantidade, categoria_idcategoria)
VALUES ('Fanta Laranja 2L',4.79,'Refrigerante Fanta Laranja 2 Litros',10,2);
INSERT INTO produto(nome, valor, descricao, quantidade, categoria_idcategoria)
VALUES ('Pizza Grande Frango',25.59,'Pizza Grande Frango com queijo e catupiry. Sem borda', 20,1);
INSERT INTO produto(nome, valor, descricao, quantidade, categoria_idcategoria)
VALUES ('Pizza Pequena Calabresa',27.99,'Pizza Pequena Calabresa com cebola. Sem borda', 20,1);
-- status_pedido
select * from status;
INSERT INTO `status` (`idstatus`, `nome`)
VALUES (NULL, 'Pendente'), (NULL, 'Entregue'), (NULL, 'Cancelado');
-- pedido
select * from pedido;
delete from pedido;
INSERT INTO `pedido` (`idpedido`, `cliente_idcliente`, `valor_total`, `data_hora_pedido`, `data_hora_entrega`, `admin_idadmin`, `entregador_identregador`, `e_rua`, `e_cidade`, `e_estado`, `status_idstatus`)
VALUES
(NULL, '1', '0', '2021-08-17 22:10:05.000000', '2021-08-17 22:10:05.000000', '1', '1', 'Av Principal 123', 'Russas', 'CE', '1'),
(NULL, '2', '0', '2021-08-17 22:10:05.000000', '2021-08-17 22:10:05.000000', '1', '1', 'Av Leste 543', 'Mossoró', 'RN', '1'),
(NULL, '1', '0', '2021-10-06 22:10:05.000000', '2021-10-06 22:10:05.000000', '1', '1', 'Av Principal 123', 'Russas', 'CE', '1'),
(NULL, '1', '0', '2021-11-20 22:10:05.000000', '2021-11-20 22:10:05.000000', '1', '2', 'Av Principal 123', 'Russas', 'CE', '1');

-- pedido_has_produto
select * from pedido_has_produto;
INSERT INTO `pedido_has_produto` (`pedido_idpedido`, `produto_idproduto`, `quantidade`, `desconto`) VALUES
(11, 1, 1, NULL),
(12, 1, 1, NULL),
(12, 3, 2, NULL),
(13, 3, 2, NULL),
(14, 1, 1, NULL),
(14, 4, 1, NULL);


-- Comandos de relatório

select * from cliente;
select * from admin;
select * from entregador;
select * from categoria;
select * from produto;
select * from status;
select * from pedido;
select * from pedido_has_produto;

-- JOIN produto categoria
SELECT produto.nome, categoria.nome
FROM produto
INNER JOIN categoria ON produto.categoria_idcategoria=categoria.idcategoria;

-- valor_total pedido
select pedido.idpedido, produto.idproduto, produto.valor
from produto
join pedido_has_produto as pp on pp.produto_idproduto=produto.idproduto
join pedido on pedido.idpedido=pp.pedido_idpedido
order by pedido.idpedido
;
create view valor_total as select pedido.idpedido, produto.idproduto, sum(produto.valor*pp.quantidade) as v_t
from produto
join pedido_has_produto as pp on pp.produto_idproduto=produto.idproduto
join pedido on pedido.idpedido=pp.pedido_idpedido
group by pedido.idpedido
order by pedido.idpedido
;
drop view valor_total;
select * from valor_total;
-- ---------------------------------------------------
create view vendas as select pedido.idpedido, cliente.nome, valor_total.v_t, entregador.identregador, pedido.e_cidade, pedido.e_estado from valor_total
join pedido on pedido.idpedido=valor_total.idpedido
join cliente on pedido.cliente_idcliente=cliente.idcliente
join entregador on pedido.entregador_identregador=entregador.identregador
;
select * from vendas;
create view relatorio_entregas as select identregador, count(identregador) as cont from vendas
group by identregador order by cont desc;
-- Entregador que fez mais entregas
select entregador.nome, relatorio_entregas.cont from relatorio_entregas
join entregador on entregador.identregador=relatorio_entregas.identregador;
-- ---------------------------------------------------
-- update pedido set pedido.valor_total=valor_total.v_t where pedido.idpedido=valor_total.idpedido;


-- pedido
-- cliente + pedido + produtos + status
select pedido.idpedido, cliente.nome as cliente, status.nome as status, produto.idproduto, produto.nome as produto
from pedido
join cliente on pedido.cliente_idcliente=cliente.idcliente
join status on pedido.status_idstatus=status.idstatus
join pedido_has_produto as pp on pp.pedido_idpedido=pedido.idpedido
join produto on pp.produto_idproduto=produto.idproduto
order by (pedido.idpedido);

