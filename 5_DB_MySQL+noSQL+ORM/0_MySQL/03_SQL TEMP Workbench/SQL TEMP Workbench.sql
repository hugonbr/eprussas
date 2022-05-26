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

SELECT a.usuario_login as 'Login Aluno', ua.nome as 'Nome Aluno',
r.usuario_login as 'Login Responsavel', ur.nome as 'Nome Responsavel'
FROM aluno as a
JOIN responsavel as r ON a.responsavel_idresponsavel=r.idresponsavel
JOIN usuario as ua ON a.usuario_login=ua.login
JOIN usuario as ur ON r.usuario_login=ur.login;