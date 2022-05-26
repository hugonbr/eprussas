-- SQL ExemploEscola

-- 

show tables;

desc aluno;
desc turma;
desc disciplina;
desc professor;
desc professor_has_disciplina;

Select * FROM aluno;
Select * FROM turma;
Select * FROM disciplina;
Select * FROM professor;
Select * FROM professor_has_disciplina;

-- Order by

Select * FROM aluno Order by nome asc;
Select * FROM aluno Order by nome desc;

Select AVG (idade) FROM aluno;

Select * FROM aluno where idade in (14,15,16,17);

Select * FROM turma
where data_ini BETWEEN '2018-01-01' AND '2018-01-30';

--
SELECT aluno.nome,turma.curso FROM aluno JOIN turma
ON aluno.turma_id_turma=turma.id_turma;
--
Select professor.nome from professor JOIN professor_has_disciplina
ON professor.idprofessor=professor_has_disciplina.professor_idprofessor
--
Select disciplina.nome from disciplina JOIN professor_has_disciplina
ON disciplina.iddisciplina=professor_has_disciplina.disciplina_iddisciplina

--
Select professor.nome as nome_prof, disciplina.nome as nome_disc
from professor
JOIN professor_has_disciplina
ON professor.idprofessor=professor_has_disciplina.professor_idprofessor
JOIN disciplina
ON disciplina.iddisciplina=professor_has_disciplina.disciplina_iddisciplina

--
Select professor.nome as nome_prof, disciplina.nome as nome_disc
from professor
JOIN professor_has_disciplina
ON professor.idprofessor=professor_has_disciplina.professor_idprofessor
JOIN disciplina
ON disciplina.iddisciplina=professor_has_disciplina.disciplina_iddisciplina
where professor.idprofessor=1

--