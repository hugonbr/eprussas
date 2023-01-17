CREATE VIEW exame_paciente AS
SELECT e.idexame, e.resultado, e.tipo, p.nome AS nome_paciente
FROM exame AS e
JOIN paciente AS p ON e.paciente_cpf=p.cpf
