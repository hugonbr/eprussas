-- Instruções DDL

show databases;

create database escola;
drop database escola;

use escola;

show tables;

-- -----------------

create table turma (
	id_turma int auto_increment,
	curso varchar (30),
	ano int,
	primary key (id_turma)
);

desc turma;
show create table turma;
-- teste
-- insert into turma (curso, ano) values ('Computação 1', 2018);
-- SELECT * FROM turma;


-- -----------------

create table alunoOld (
	matricula int,
    nome varchar (255),
    idade int
    );

desc alunoOld;

drop table alunoOld;

-- -----------------

create table aluno(
	matricula int auto_increment,
    nome varchar(255) not null,
    idade int (2),
    cidade char (20) default 'Russas',
    id_turma int not null,
    primary key (matricula),
    foreign key (id_turma) references turma(id_turma)
);

drop table alunoNovo;
drop table aluno;

desc alunoOld;
desc aluno;

-- -----------------

show create table aluno;

alter table aluno add sexo varchar(1) NOT NULL;
alter table aluno drop sexo;

-- alter table alunoNovo add sexo char(1) ENUM( 'M', 'F' );

alter table aluno add cpf varchar(14) not null unique first;

alter table aluno drop cpf;

-- rename table aluno to aluno;
desc aluno;

-- -----------------

-- Instruções DML

-- insert
insert into turma (curso, ano) values ('Informática 1', 2018);
insert into turma (curso, ano) values ('Informática 2', 2018);
insert into turma (curso, ano) values ('Informática 1', 2018);
insert into turma (curso, ano) values ('Enfermagem 1', 2018);
insert into turma (curso, ano) values ('Enfermagem 2', 2018);
insert into turma (curso, ano) values ('Enfermagem 3', 2018);
insert into turma (curso, ano) values ('Massoterapia 2', 2018);
select * from turma;
delete from turma where id_turma = 5;
delete from turma where id_turma = 1;

-- update
update turma set curso='Mudou2' where id_turma =6 or id_turma =10;
update turma set curso='Mudou12' where id_turma between 8 and 12;
update aluno set sexo='M' where matricula>0;
update aluno set cidade='SQL City' where matricula between 3 and 5;
update aluno set id_turma=6 where matricula = 5;
update aluno set id_turma=1 where matricula = 9;

-- insert Tabela Aluno
desc aluno;
insert into aluno (cpf, nome, idade, id_turma, sexo) values ('José', 16, 1, 'M');
insert into aluno (cpf, nome, idade, id_turma, sexo) values ('Pedro', 16, 4, 'M');
insert into aluno (cpf, nome, idade, id_turma, sexo) values ('Igor', 16, 1, 'M');
insert into aluno (cpf, nome, idade, id_turma, sexo) values ('Bruno', 16, 1, 'M');
insert into aluno (cpf, nome, idade, id_turma, sexo) values ('João', 16, 2, 'M');
insert into aluno (cpf, nome, idade, id_turma, sexo) values ('Ana', 18, 2, 'M');
insert into aluno (cpf, nome, idade, id_turma, sexo) values ('Carla', 18, 2, 'F');
insert into aluno (cpf, nome, idade, id_turma, sexo) values ('Lucas', 15, 2, 'M');
select * from aluno;
delete from aluno where matricula=1;

-- delete
select * from aluno;
select * from turma;
delete from turma where id_turma = 10;
delete from turma where id_turma = 6;
delete from aluno where matricula=5;


-- select
show tables;
select * from turma;
select * from aluno;
select nome from aluno where id_turma=1;
UPDATE aluno set cidade='Jaguaruana' WHERE id_turma=17;
select aluno.matricula,aluno.nome,aluno.cidade,turma.curso,turma.id_turma
from aluno
join turma on aluno.id_turma=turma.id_turma;

-- select 2.0
desc aluno;
select * from aluno;
alter table aluno drop sexo;
alter table aluno add sexo varchar(1);

update aluno set sexo='M' where matricula>0;
update aluno set nome='Maria' where matricula=4;
update aluno set sexo='F' where matricula between 7 and 10;
SELECT count(*) as quant from aluno;
SELECT count(sexo) from aluno;
SELECT count(sexo) as count_sexo from aluno where sexo='F';
SELECT count(sexo) from aluno where sexo='M';
SELECT MIN(idade) from aluno;
SELECT MAX(idade) from aluno;
SELECT nome from aluno where idade=(SELECT MIN(idade) from aluno);
SELECT nome from aluno where idade=(SELECT MAX(idade) from aluno);

-- Like

insert into turma (curso, ano) values ('abc',1999);
insert into turma (curso, ano) values ('rgsca',2019);
select * from turma;
select * from turma where curso like '%ca%';
select * from turma where curso like '%pia%';
select * from turma where curso like '___';
select * from turma where curso like '____________3';

-- not like

-- Workbench ou PHPMyAdmin

