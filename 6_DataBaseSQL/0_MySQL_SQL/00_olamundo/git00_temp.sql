-- Database
create database git00_temp DEFAULT CHARACTER SET utf8;
use git00_temp;
-- drop database temp;
-- Create table
create table usuario (
    login varchar (100) NOT NULL,
    nome varchar (150) NOT NULL,
    email varchar (100) NOT NULL,
    senha varchar (150) NOT NULL,
    primary key (login)
);
-- ENGINE = MyISAM;
/*Adicione a ENGINE para usar MyISAM, o InnoDB é o padrão (ACID)*/
-- Inserts
insert into usuario
values (
        'teste',
        'Teste das Tantas',
        'teste@email.com',
        '1234'
    );
insert into usuario
values (
        'teste2',
        'Teste das Tantas',
        'teste@email.com',
        '1234'
    );
insert into usuario
values (
        'teste3',
        'Teste das Tantas',
        'teste@email.com',
        '1234'
    );
-- Select Usuários
select *
from usuario;
-- Quantidade Usuários
select count(login)
from usuario;