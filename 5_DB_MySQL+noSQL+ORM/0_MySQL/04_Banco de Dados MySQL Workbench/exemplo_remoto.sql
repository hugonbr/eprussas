CREATE DATABASE exemplo_remoto;
-- DROP DATABASE exemplo_operacoes;
SHOW DATABASES;
USE exemplo_remoto;

CREATE TABLE cliente (
    nome varchar(255),
    cpf bigint(13),
    data_nasc varchar(10),
    -- endereco varchar (255)
    e_rua varchar(255),
    e_numero int(4), -- 9999
    e_cidade varchar (100),
    e_estado varchar (100),
    primary key (cpf)
);

DROP table cliente;
DROP table cliente2;


insert into cliente values ('Hugo', 123, '22/09/2000', 'Av. lalala', 234, 'Russas', 'CE');
insert into cliente values ('João', 456, '22/09/2000', 'Av. lalala', 234, 'Limoeiro', 'CE');
insert into cliente values ('José', 789, '22/09/2000', 'Av. lalala', 234, 'Morada Nova', 'CE');
insert into cliente values ('Pedro', 000, '22/09/2000', 'Av. lalala', 234, 'Russas', 'CE');
insert into cliente values ('Maria', null, '22/09/2000', 'Av. lalala', 234, 'Russas', 'CE');

select * from cliente;

delete from cliente;

select * from cliente where e_cidade = 'Russas';

select * from cliente order by e_cidade ASC;
