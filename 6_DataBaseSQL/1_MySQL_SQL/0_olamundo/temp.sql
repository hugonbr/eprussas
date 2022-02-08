create database temp DEFAULT CHARACTER SET utf8;
use temp;
-- drop database temp;

create table usuario (
    login varchar (100) NOT NULL,
    nome varchar (150) NOT NULL,
    email varchar (100) NOT NULL,
    senha varchar (150) NOT NULL,
    primary key (login)
);
-- ENGINE = MyISAM; /*Adicione esta linha para usar MyISAM, o InnoDB é o padrão (ACID)*/

insert into usuario values ('teste','Teste das Tantas','teste@email.com','1234');
insert into usuario values ('teste2','Teste das Tantas','teste@email.com','1234');
insert into usuario values ('teste3','Teste das Tantas','teste@email.com','1234');

select * from usuario;