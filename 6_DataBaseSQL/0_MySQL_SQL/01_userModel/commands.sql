-- use database;
use `git01_userModel`;
-- inserts
INSERT INTO `usuario`(`login`, `senha`, `NomeCompleto`, `cpf`, `email`)
VALUES (
        'hugo',
        '1234',
        'Hugo Nathan Barbosa Régis',
        '001.002.003-45',
        'hugo@gmail.com'
    );
INSERT INTO `usuario`(`login`, `senha`, `NomeCompleto`, `cpf`, `email`)
VALUES (
        'livia',
        '1011',
        'Lívia Lima Régis',
        '010.020.030-77',
        'livia@gmail.com'
    );
INSERT INTO `usuario`(`login`, `senha`, `NomeCompleto`, `cpf`, `email`)
VALUES (
        'maria',
        '1022',
        'Maria das Tantas',
        '020.020.020-11',
        'maria@gmail.com'
    );
-- select usuarios
select *
from usuario;
delete from usuario
where idusuario > 10;