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

-- quantidade de linhas com esse valor
/* select count(*) as cont
from quantidade_de_oc
group by quant_oc
having quant_oc = max(quant_oc)
order by cont desc
limit 1
; */

/* alunos com maior número de ocorrências */
create view alunos_max_num_oc as
select aluno_idaluno, quant_oc
from quantidade_de_oc
where quant_oc = (select maior from maior_quant_oc)
order by aluno_idaluno asc;

select * from alunos_max_num_oc;

