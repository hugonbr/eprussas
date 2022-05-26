use gemodoc;

show tables;

select * from turma;
ALTER TABLE turma AUTO_INCREMENT = 1;
delete from turma;

INSERT INTO turma (nome) VALUES ('INFORMÁTICA');
INSERT INTO turma (nome) VALUES ('ADMINISTRAÇÃO');
INSERT INTO turma (nome) VALUES ('ENFERMAGEM');
INSERT INTO turma (nome) VALUES ('MASSOTERAPIA');

select * from usuario;
select nome from usuario;
select distinct nome from usuario;

INSERT INTO usuario (login, senha, nome) VALUES ('tadeu', '10203040', 'Tadeu');
INSERT INTO usuario (login, senha, nome) VALUES ('jarlenice', '10203040', 'Jarlenice');
INSERT INTO usuario (login, senha, nome) VALUES ('thiago', '10203040', 'Thiago');
INSERT INTO usuario (login, senha, nome) VALUES ('joãovitor', '10203040', 'Joãovitor');
INSERT INTO usuario (login, senha, nome) VALUES ('hugo', '1234', 'Hugo');
INSERT INTO usuario (login, senha, nome) VALUES ('renan', '4321', 'Renan');
INSERT INTO usuario (login, senha, nome) VALUES ('rogério', '2255', 'Rogério');
INSERT INTO usuario (login, senha, nome) VALUES ('dinardo', '2255', 'Dinardo');
INSERT INTO usuario (login, senha, nome) VALUES ('pedro', '0000', 'Pedro');
INSERT INTO usuario (login, senha, nome) VALUES ('paulo', '0000', 'Paulo');
INSERT INTO usuario (login, senha, nome) VALUES ('carla', '0000', 'Carla');
INSERT INTO usuario (login, senha, nome) VALUES ('ana', '0000', 'Ana');
INSERT INTO usuario (login, senha, nome) VALUES ('lucas', '0000', 'Lucas');
INSERT INTO usuario (login, senha, nome) VALUES ('joão', '1111', 'João');
INSERT INTO usuario (login, senha, nome) VALUES ('josé', '1111', 'José');
INSERT INTO usuario (login, senha, nome) VALUES ('francisco', '1111', 'Francisco');
INSERT INTO usuario (login, senha, nome) VALUES ('maria', '1111', 'Maria');
INSERT INTO usuario (login, senha, nome) VALUES ('maria2', '1111', 'Maria');

select * from admin;

INSERT INTO admin (tipo, usuario_login) VALUES ('Diretor', 'tadeu');
INSERT INTO admin (tipo, usuario_login) VALUES ('Gestor', 'jarlenice');
INSERT INTO admin (tipo, usuario_login) VALUES ('Gestor', 'thiago');
INSERT INTO admin (tipo, usuario_login) VALUES ('Secretário', 'joãovitor');
-- TESTE 2
INSERT INTO admin (tipo, usuario_login) VALUES ('TESTE', 'TESTE');


-- JOIN;
SELECT u.login, a.tipo as cargo
FROM usuario as u
INNER JOIN admin as a ON u.login=a.usuario_login;

SELECT u.nome, a.tipo as cargo
FROM usuario as u
INNER JOIN admin as a ON u.login=a.usuario_login
WHERE a.tipo = 'Gestor';

SELECT u.nome, a.tipo as cargo
FROM usuario as u
INNER JOIN admin as a ON u.login=a.usuario_login
WHERE a.tipo = 'Gestor' OR a.tipo = 'Diretor';

SELECT u.nome, a.tipo as cargo
FROM usuario as u
INNER JOIN admin as a ON u.login=a.usuario_login
WHERE a.tipo like 'Gestor';

SELECT u.nome, a.tipo as cargo
FROM usuario as u
INNER JOIN admin as a ON u.login=a.usuario_login
WHERE a.tipo not like 'Gestor';

SELECT u.nome, a.tipo as cargo
FROM usuario as u
INNER JOIN admin as a ON u.login=a.usuario_login
WHERE NOT a.tipo = 'Gestor';

-- JOIN Types

SELECT *
FROM usuario
INNER JOIN admin ON usuario.login=admin.usuario_login;

SELECT *
FROM usuario
LEFT JOIN admin ON usuario.login=admin.usuario_login;

SELECT *
FROM usuario
RIGHT JOIN admin ON usuario.login=admin.usuario_login;

select * from professor;
ALTER TABLE professor AUTO_INCREMENT = 1;
delete from professor;

INSERT INTO professor (usuario_login) VALUES ('hugo');
INSERT INTO professor (usuario_login) VALUES ('renan');
INSERT INTO professor (usuario_login) VALUES ('rogério');
INSERT INTO professor (usuario_login) VALUES ('dinardo');

select * from responsavel;
ALTER TABLE responsavel AUTO_INCREMENT = 1;
delete from responsavel;

INSERT INTO responsavel (usuario_login) VALUES ('joão');
INSERT INTO responsavel (usuario_login) VALUES ('josé');
INSERT INTO responsavel (usuario_login) VALUES ('francisco');
INSERT INTO responsavel (usuario_login) VALUES ('maria');
INSERT INTO responsavel (usuario_login) VALUES ('maria2');

select * from aluno;
show create table aluno;
ALTER TABLE aluno AUTO_INCREMENT = 1;
delete from aluno;

INSERT INTO aluno (serie, ano_inicio, usuario_login, responsavel_idresponsavel, turma_idturma)
VALUES (1, 2019, 'pedro', 1, 1);
INSERT INTO aluno (serie, ano_inicio, usuario_login, responsavel_idresponsavel, turma_idturma)
VALUES (2, 2018, 'paulo', 2, 1);
INSERT INTO aluno (serie, ano_inicio, usuario_login, responsavel_idresponsavel, turma_idturma)
VALUES (3, 2017, 'carla', 3, 2);
INSERT INTO aluno (serie, ano_inicio, usuario_login, responsavel_idresponsavel, turma_idturma)
VALUES (3, 2017, 'ana', 4, 3);
INSERT INTO aluno (serie, ano_inicio, usuario_login, responsavel_idresponsavel, turma_idturma)
VALUES (1, 2019, 'lucas', 5, 4);

-- nome em usuario
-- join aluno + responsavel
SELECT u.Nome as 'Nome Aluno'
FROM aluno as a
JOIN usuario as u ON a.usuario_login=u.login;

SELECT u.Nome as 'Nome Responsavel'
FROM responsavel as r
JOIN usuario as u ON r.usuario_login=u.login;

-- Múltiplos JOINs
SELECT a.usuario_login as 'Login Aluno', ua.nome as 'Nome Aluno',
r.usuario_login as 'Login Responsavel', ur.nome as 'Nome Responsavel'
FROM aluno as a
JOIN responsavel as r ON a.responsavel_idresponsavel=r.idresponsavel
JOIN usuario as ua ON a.usuario_login=ua.login
JOIN usuario as ur ON r.usuario_login=ur.login;

-- inserts de ações
select * from tipo_ocorrencia;
INSERT INTO tipo_ocorrencia (nivel, descricao) VALUES (1,'Fardamento incompleto');
INSERT INTO tipo_ocorrencia (nivel, descricao) VALUES (2,'Esquecimento de material didático');
INSERT INTO tipo_ocorrencia (nivel, descricao) VALUES (2,'Não cumprimento de atividades');
INSERT INTO tipo_ocorrencia (nivel, descricao) VALUES (3,'Falta de Respeito com o professor ou
	com a instituição');
INSERT INTO tipo_ocorrencia (nivel, descricao) VALUES (3,'Falta de Respeito com o(a) colega');
INSERT INTO tipo_ocorrencia (nivel, descricao) VALUES (3,'Pesca em prova');

select * from tipo_suspensao;
INSERT INTO tipo_suspensao (nivel, descricao) VALUES (1,'Acumulo de ocorrências');
INSERT INTO tipo_suspensao (nivel, descricao) VALUES (2,'Namoro');
INSERT INTO tipo_suspensao (nivel, descricao) VALUES (3,'Motivo extra gravíssimo');

select * from tipo_saida_sala;
INSERT INTO tipo_saida_sala (descricao) VALUES ('Banheiro');
INSERT INTO tipo_saida_sala (descricao) VALUES ('Participação em eventos');
INSERT INTO tipo_saida_sala (descricao) VALUES ('Chegada em atraso');

-- Observação para deletes em cascate. Ex: Ao deletar um professor que cadastrou a ocorrência de um
-- aluno, a ocorrência sumiria, pois o professor é chave extrangeira da ocorrência.

-- insert de acontecimentos

INSERT INTO ocorrencia (data, tipo_ocorrencia_idtipo_ocorrencia, professor_idprofessor,
aluno_idaluno) VALUES ('2019-08-14 11:00:00', 1, 3, 4);
INSERT INTO ocorrencia (data, tipo_ocorrencia_idtipo_ocorrencia, professor_idprofessor,
aluno_idaluno) VALUES ('2019-09-01 11:00:00', 1, 2, 4);
INSERT INTO ocorrencia (data, tipo_ocorrencia_idtipo_ocorrencia, professor_idprofessor,
aluno_idaluno) VALUES ('2019-08-14 11:00:00', 1, 4, 4);
INSERT INTO ocorrencia (data, tipo_ocorrencia_idtipo_ocorrencia, professor_idprofessor,
aluno_idaluno) VALUES ('2019-08-14 11:00:00', 6, 4, 2);
INSERT INTO ocorrencia (data, tipo_ocorrencia_idtipo_ocorrencia, professor_idprofessor,
aluno_idaluno) VALUES ('2019-08-14 11:00:00', 1, 3, 1);
INSERT INTO ocorrencia (data, tipo_ocorrencia_idtipo_ocorrencia, professor_idprofessor,
aluno_idaluno) VALUES ('2019-09-06 8:00:00', 1, 3, 1);
INSERT INTO ocorrencia (data, tipo_ocorrencia_idtipo_ocorrencia, professor_idprofessor,
aluno_idaluno) VALUES ('2019-09-17 10:00:00', 1, 3, 1);

-- select -- nome aluno, -- nome professor, --tipo ocorrência, -- data
select ua.nome as 'Nome Aluno', up.nome as 'Nome Professor',
t_o.descricao as 'Descrição Ocorrência', t_o.nivel as 'Nível Ocorrência',
oc.data as 'Data Ocorrência', t.nome as 'Turma', a.serie as 'Serie'
from ocorrencia as oc
join tipo_ocorrencia as t_o on t_o.idtipo_ocorrencia=oc.tipo_ocorrencia_idtipo_ocorrencia
join aluno as a on a.idaluno=oc.aluno_idaluno
join usuario as ua on ua.login=a.usuario_login
join professor as p on p.idprofessor=oc.professor_idprofessor
join usuario as up on up.login=p.usuario_login
join turma as t on t.idturma=a.turma_idturma
order by oc.data;
-- tabelas: aluno, professor, usuário, tipo_ocorrencia, ocorrencia

select * from suspensao;
INSERT INTO suspensao (data, quant_dias, tipo_suspensao_idtipo_suspensao,
	admin_idadmin, aluno_idaluno) VALUES
('2019-08-22 14:30:00', 2, 1, 3, 4),
('2019-08-22 14:30:00', 2, 3, 3, 5);

-- select -- nome aluno, -- nome gestor
select ua.nome as 'Nome Aluno', up.nome as 'Nome Gestor',
t_s.descricao as 'Descrição Suspensão', t_s.nivel as 'Nível Suspensão',
s.data as 'Data Suspensão', t.nome as 'Turma'
from suspensao as s
join tipo_suspensao as t_s on t_s.idtipo_suspensao=s.tipo_suspensao_idtipo_suspensao
join aluno as a on a.idaluno=s.aluno_idaluno
join usuario as ua on ua.login=a.usuario_login
join admin as adm on adm.idadmin=s.admin_idadmin
join usuario as up on up.login=adm.usuario_login
join turma as t on t.idturma=a.turma_idturma;
-- tabelas: aluno, gestor, usuário, tipo_suspensao, suspensao, turma

select * from saida_sala;

INSERT INTO saida_sala (horário_aula, fazendo_prova, tipo_saida_sala_idtipo_saida_sala,
	admin_idadmin, aluno_idaluno) VALUES
(4, 1, 1, 2, 1),
(5, 1, 1, 2, 2),
(6, 0, 2, 3, 5);

ALTER TABLE saida_sala
ADD data datetime;

-- select -- nome aluno, -- nome gestor
select ua.nome as 'Nome Aluno', up.nome as 'Nome Gestor',
t_s.descricao as 'Descrição Saída', s.data as 'Data Saída', s.horário_aula,
t_s.descricao as 'Saída', s.horário_aula as 'Horário Aula',
s.fazendo_prova as 'Fazendo Prova',
t.nome as 'Turma'
from saida_sala as s
join tipo_saida_sala as t_s on t_s.idtipo_saida_sala=s.tipo_saida_sala_idtipo_saida_sala
join aluno as a on a.idaluno=s.aluno_idaluno
join usuario as ua on ua.login=a.usuario_login
join admin as adm on adm.idadmin=s.admin_idadmin
join usuario as up on up.login=adm.usuario_login
join turma as t on t.idturma=a.turma_idturma;
-- tabelas: aluno, gestor, usuário, tipo_suspensao, suspensao, turma

-- select -- nome aluno, -- nome gestor
select ua.nome as 'Nome Aluno', up.nome as 'Nome Gestor',
t_s.descricao as 'Descrição Saída', s.data as 'Data Saída', s.horário_aula,
t_s.descricao as 'Saída', s.horário_aula as 'Horário Aula',
s.fazendo_prova as 'Fazendo Prova',
t.nome as 'Turma', a.serie as 'Série'
from saida_sala as s
join tipo_saida_sala as t_s on t_s.idtipo_saida_sala=s.tipo_saida_sala_idtipo_saida_sala
join aluno as a on a.idaluno=s.aluno_idaluno
join usuario as ua on ua.login=a.usuario_login
join admin as adm on adm.idadmin=s.admin_idadmin
join usuario as up on up.login=adm.usuario_login
join turma as t on t.idturma=a.turma_idturma
where t_s.descricao like 'Banheiro' and
(s.data BETWEEN '2019-09-20 07:00:00' AND '2019-09-20 17:00:00') and
t.nome='INFORMÁTICA' and a.serie=1;
-- tabelas: aluno, gestor, usuário, tipo_suspensao, suspensao, turma


-- Relatórios da Gestão --
--
select * from ocorrencia;

create view quantidade_de_oc as
select aluno_idaluno, count(aluno_idaluno) as quant_oc
from ocorrencia
group by aluno_idaluno
;
create view maior_quant_oc as
select max(quant_oc) as maior
from quantidade_de_oc
;

-- views
select * from quantidade_de_oc;
select * from maior_quant_oc;


/* alunos com maior número de ocorrências */
create view alunos_max_num_oc as
select aluno_idaluno, quant_oc
from quantidade_de_oc
where quant_oc = (select maior from maior_quant_oc)
order by aluno_idaluno asc;

select * from alunos_max_num_oc;

/* FINAL */
select us.nome, /* a.usuario_login,*/ /*amax.aluno_idaluno,*/ amax.quant_oc
from aluno as a
join alunos_max_num_oc as amax on a.idaluno=amax.aluno_idaluno
join usuario as us on us.login=a.usuario_login;

-- Fim Relatórios da Gestão --












/* TEMP */

-- Relatório
-- quantidade de linhas com esse valor
/* select count(*) as cont
from quantidade_de_oc
group by quant_oc
having quant_oc = max(quant_oc)
order by cont desc
limit 1
; */

use gemodoc;

desc saida_sala;

select * from saida_sala;
show create table usuario;
show create table ocorrencia;
/* TEMP */
