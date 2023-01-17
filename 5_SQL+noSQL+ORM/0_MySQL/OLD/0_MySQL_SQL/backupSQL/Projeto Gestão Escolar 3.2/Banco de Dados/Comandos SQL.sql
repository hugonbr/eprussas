- CRUDS -

- INSERT -

TURMA (INFORMÁTICA, ADMINISTRAÇÃO, ENFERMAGEM E MASSOTERAPIA)

INSERT INTO turma (nome) VALUES ('INFORMÁTICA');
INSERT INTO turma (nome) VALUES ('ADMINISTRAÇÃO');
INSERT INTO turma (nome) VALUES ('ENFERMAGEM');
INSERT INTO turma (nome) VALUES ('MASSOTERAPIA');

USUARIO (18 USUARIOS)

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

ADMIN (tadeu, jarlenice, thiago, joãovitor)

INSERT INTO admin (tipo, usuario_login) VALUES ('Diretor', 'tadeu');
INSERT INTO admin (tipo, usuario_login) VALUES ('Gestor', 'jarlenice');
INSERT INTO admin (tipo, usuario_login) VALUES ('Gestor', 'thiago');
INSERT INTO admin (tipo, usuario_login) VALUES ('Secretário', 'joãovitor');

PROFESSOR (hugo, renan, rogério e dinardo)

INSERT INTO professor (usuario_login) VALUES ('hugo');
INSERT INTO professor (usuario_login) VALUES ('renan');
INSERT INTO professor (usuario_login) VALUES ('rogério');
INSERT INTO professor (usuario_login) VALUES ('dinardo');

RESPONSAVEL (joão, josé, francisco, maria, maria)

INSERT INTO responsavel (usuario_login) VALUES ('joão');
INSERT INTO responsavel (usuario_login) VALUES ('josé');
INSERT INTO responsavel (usuario_login) VALUES ('francisco');
INSERT INTO responsavel (usuario_login) VALUES ('maria');
INSERT INTO responsavel (usuario_login) VALUES ('maria2');

ALUNO (pedro, paulo, carla, ana, lucas)

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

--

TIPO_OCORRENCIA (BAIXA, MÉDIA, GRAVE)

INSERT INTO tipo_ocorrencia (nivel, descricao) VALUES (1,'Fardamento incompleto');
INSERT INTO tipo_ocorrencia (nivel, descricao) VALUES (2,'Esquecimento de material didático');
INSERT INTO tipo_ocorrencia (nivel, descricao) VALUES (2,'Não cumprimento de atividades');
INSERT INTO tipo_ocorrencia (nivel, descricao) VALUES (3,'Falta de Respeito com o professor ou
	com a instituição');
INSERT INTO tipo_ocorrencia (nivel, descricao) VALUES (3,'Falta de Respeito com o(a) colega');
INSERT INTO tipo_ocorrencia (nivel, descricao) VALUES (3,'Pesca em prova');

TIPO_SUSPENSAO (BAIXA, MÉDIA, GRAVE)

INSERT INTO tipo_suspensao (nivel, descricao) VALUES (1,'Acumulo de ocorrências');
INSERT INTO tipo_suspensao (nivel, descricao) VALUES (2,'Namoro');
INSERT INTO tipo_suspensao (nivel, descricao) VALUES (3,'Motivo extra gravíssimo');

TIPO_SAIDA_SALA (BANHEIRO, EVENTO, OUTRO)

INSERT INTO tipo_saida_sala (descricao) VALUES ('Banheiro');
INSERT INTO tipo_saida_sala (descricao) VALUES ('Participação em eventos');
INSERT INTO tipo_saida_sala (descricao) VALUES ('Chegada em atraso');

--

--

OCORRENCIA (3) datetime -- YYYY-MM-DD hh:mm:ss

-- INSERT INTO ocorrencia (data, tipo_ocorrencia_idtipo_ocorrencia, professor_idprofessor, 
-- aluno_idaluno) VALUES ('2019-08-14 11:00:00', 1, 3, 4);

INSERT INTO `ocorrencia` (`idocorrencia`, `data`, `tipo_ocorrencia_idtipo_ocorrencia`,
	`professor_idprofessor`, `aluno_idaluno`, `cancelada`) VALUES
(1, '2019-08-20 07:30:00', 1, 3, 4, NULL),
(2, '2019-08-14 11:00:00', 6, 4, 2, NULL),
(3, '2019-08-14 11:00:00', 6, 3, 1, NULL);

SUSPENSAO (2)

INSERT INTO 'suspensao' (data, quant_dias, tipo_suspensao_idtipo_suspensao,
	admin_idadmin, aluno_idaluno) VALUES
('2019-08-22 14:30:00', 2, 1, 3, 4),
('2019-08-22 14:30:00', 2, 3, 3, 5); 

SAIDA_SALA (3) -- Banheiro e Participação em eventos

INSERT INTO saida_sala (horário_aula, fazendo_prova, tipo_saida_sala_idtipo_saida_sala, 
	admin_idadmin, aluno_idaluno) VALUES
(4, 1, 1, 2, 1),
(5, 1, 1, 2, 2),
(6, 0, 2, 3, 5);
--

ADM_ALTERA_OCORRENCIA



--

- SELECT -


- UPDATE -


- DELETE -


- RELATÓRIOS -

- OBS -

- Ver se os cascades estão corretos - 

