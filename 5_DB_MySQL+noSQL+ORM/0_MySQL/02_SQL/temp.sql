-- teste aluno --

CREATE DATABASE testealuno;
SHOW DATABASES;
USE testealuno;

create table turma (
	id_turma int auto_increment,
	curso varchar (30),
	ano int,
	primary key (id_turma)
);

create table aluno(
	matricula int auto_increment,
    nome varchar(100) not null,
    data_nasc date,
    cidade char (100) default 'Russas',
    sexo varchar(1) not null,
    id_turma int not null,
    primary key (matricula),
    foreign key (id_turma) references turma(id_turma)
);

SHOW tables;

insert into turma (curso, ano) values ('Informática 1', 2018);
insert into turma (curso, ano) values ('Informática 2', 2018);
insert into turma (curso, ano) values ('Informática 1', 2018);
insert into turma (curso, ano) values ('Enfermagem 1', 2018);
insert into turma (curso, ano) values ('Enfermagem 2', 2018);
insert into turma (curso, ano) values ('Enfermagem 3', 2018);
insert into turma (curso, ano) values ('Massoterapia 2', 2018);

SELECT * FROM turma;
ALTER TABLE turma AUTO_INCREMENT = 1;
DELETE FROM turma;

insert into aluno (nome, data_nasc, sexo, id_turma) values ('Lucas', '1999-03-01', 'M', 2);
insert into aluno (nome, data_nasc, cidade, sexo, id_turma) values ('Igor', '1999-10-22', 'Limoeiro', 'M', 1);
insert into aluno (nome, data_nasc, cidade, sexo, id_turma) values ('Bruno', '1999-10-22', 'Russas', 'M', 1);
insert into aluno (nome, data_nasc, cidade, sexo, id_turma) values ('João', '1999-06-01', 'Jaguaruana', 'M', 2);
insert into aluno (nome, data_nasc, cidade, sexo, id_turma) values ('Ana', '1999-10-22', 'Russas', 'F', 2);
insert into aluno (nome, data_nasc, cidade, sexo, id_turma) values ('José', '1999-06-01', 'Jaguaruana', 'M', 1);
insert into aluno (nome, data_nasc, cidade, sexo, id_turma) values ('Carla', '1999-03-01', 'Limoeiro', 'F', 2);
insert into aluno (nome, data_nasc, cidade, sexo, id_turma) values ('Pedro', '1999-10-22', 'Russas', 'M', 4);
insert into aluno (nome, data_nasc, cidade, sexo, id_turma) values ('Maria', '1999-03-01', 'Russas', 'F', 2);

SELECT * FROM aluno;
ALTER TABLE aluno AUTO_INCREMENT = 1;
DELETE FROM aluno;

SELECT count(sexo) FROM aluno WHERE sexo='M';

DELETE FROM aluno WHERE cidade='Limoeiro' OR cidade='Jaguaruana';

UPDATE aluno SET id_turma=2 WHERE id_turma = 1;

SELECT nome FROM aluno ORDER BY nome ASC;

SELECT nome FROM aluno WHERE data_nasc=(SELECT MIN(data_nasc) from aluno);

SELECT nome FROM aluno WHERE nome LIKE '_____';