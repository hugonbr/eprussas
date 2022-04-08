USE escola_teste;

select * from aluno;

select * from turma order by idturma;

INSERT INTO turma (idturma, nome) VALUES ('1', 'info1');
INSERT INTO `turma` (`idturma`, `nome`) VALUES ('2', 'info2');
INSERT INTO `turma` (`idturma`, `nome`) VALUES ('3', 'info3');
INSERT INTO `turma` (`idturma`, `nome`) VALUES ('4', 'adm1');

INSERT INTO `aluno` (`matricula`, `nome`, `cpf`, `data_nasc`, `hora_cadastro`, `turma_idturma`)
VALUES (NULL, 'João', '012.345.678-90', '2000-05-10', current_timestamp(), '1');
INSERT INTO `aluno` (`matricula`, `nome`, `cpf`, `data_nasc`, `hora_cadastro`, `turma_idturma`)
VALUES (NULL, 'Maria', '534.332.653-12', '2002-01-10', current_timestamp(), '1');
INSERT INTO `aluno` (`matricula`, `nome`, `cpf`, `data_nasc`, `hora_cadastro`, `turma_idturma`)
VALUES (NULL, 'Pedro', '131.345.678-90', '2000-05-12', current_timestamp(), '3');
INSERT INTO `aluno` (`matricula`, `nome`, `cpf`, `data_nasc`, `hora_cadastro`, `turma_idturma`)
VALUES (NULL, 'Paulo', '321.345.678-90', '2000-05-12', current_timestamp(), '3');

select aluno.nome, turma.nome from aluno
join turma on aluno.turma_idturma = turma.idturma;


