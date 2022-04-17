CREATE DATABASE aula_remota DEFAULT CHARACTER SET utf8;
SHOW DATABASES;
DROP DATABASE aula_remota;
USE aula_remota;

CREATE TABLE turma (
	id_turma INT AUTO_INCREMENT,
	curso VARCHAR(30),
	ano INT,
	PRIMARY KEY (id_turma)
);

CREATE TABLE aluno (
	matricula INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nasc DATE,
    cidade VARCHAR(100) DEFAULT 'Russas',
    sexo VARCHAR(1) NOT NULL,
    id_turma INT NOT NULL,
    PRIMARY KEY (matricula),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

-- ON DELETE CASCADE
CREATE TABLE aluno(
	matricula INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nasc DATE,
    cidade VARCHAR(100) DEFAULT 'Russas',
    sexo VARCHAR(1) NOT NULL,
    id_turma INT NOT NULL,
    PRIMARY KEY (matricula),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
		ON DELETE CASCADE
);
-- ON DELETE CASCADE

DROP TABLE aluno;

SHOW TABLES;

-- insert turma
INSERT INTO turma (curso, ano) VALUES ('Informática 1', 2020);
INSERT INTO turma (curso, ano) VALUES ('Informática 2', 2020);
INSERT INTO turma (curso, ano) VALUES ('Informática 3', 2020);
INSERT INTO turma (curso, ano) VALUES ('Enfermagem 1', 2020);
INSERT INTO turma (curso, ano) VALUES ('Enfermagem 2', 2020);
INSERT INTO turma (curso, ano) VALUES ('Enfermagem 3', 2020);
INSERT INTO turma (curso, ano) VALUES ('Massoterapia 2', 2020);

-- Exibe todas as turmas
SELECT * FROM turma;
ALTER TABLE turma AUTO_INCREMENT = 1;
DELETE FROM turma;

-- insert aluno
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
SELECT COUNT(*) as Quantidade FROM aluno;
ALTER TABLE aluno AUTO_INCREMENT = 1;
DELETE FROM aluno;

-- Comandos para manipular dados

-- Deletar os alunos que nasceram nas datas 01/03/1999 ou 22/10/1999
DELETE FROM aluno WHERE data_nasc='1999-03-01' OR data_nasc='1999-10-22';

-- Mudar os alunos da info1 para a info2 
SELECT * FROM turma;
SELECT * FROM aluno;
UPDATE aluno SET id_turma=2 WHERE id_turma = 1;

-- INFO2 de 2020 viu só até aqui! --

-- COMANDOS SQL PARA RELATÓRIOS

-- JOIN aluno+turma
SELECT a.matricula, a.nome, t.curso
FROM aluno as a
JOIN turma as t ON a.id_turma=t.id_turma;

-- JOIN aluno+turma com where
SELECT a.matricula, a.nome, t.curso
FROM aluno as a
JOIN turma as t ON a.id_turma=t.id_turma WHERE t.id_turma=1;

-- COUNT
SELECT count(id_turma) FROM aluno WHERE id_turma=1;

-- MIN e MAX
SELECT MIN(data_nasc) from aluno;
SELECT nome FROM aluno WHERE data_nasc=(SELECT MIN(data_nasc) from aluno);
SELECT nome FROM aluno WHERE data_nasc=(SELECT MAX(data_nasc) from aluno);

-- ORDER BY ASC e DESC
SELECT nome FROM aluno ORDER BY nome ASC;
SELECT nome FROM aluno ORDER BY nome DESC;

-- LIKE
SELECT * FROM turma WHERE curso LIKE '%ca%';
SELECT * FROM turma WHERE curso LIKE '%ma%';
select * from turma where curso like '____________3';

-- VIEW
CREATE VIEW aluno_turma as (
	SELECT a.matricula, a.nome, t.curso
	FROM aluno as a
	JOIN turma as t ON a.id_turma=t.id_turma
);

SELECT * FROM aluno_turma;

