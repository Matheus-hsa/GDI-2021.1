--Exemplo GROUP BY/HAVING
SELECT count(COD), cpf
FROM coordenaDisDoc
GROUP BY cpf

SELECT count(COD), cpf
FROM coordenaDisDoc
GROUP BY cpf
HAVING count(COD) > 1

--Junção Interna
SELECT nome, count(cod)
from func f
INNER JOIN docente d on f.cpf = d.cpf
INNER JOIN coordenaDisDoc cdd on f.cpf = cdd.cpf
GROUP BY nome

--Exemplo Junção Interna
SELECT nota, nome
FROM matriculaTurAlu mta
INNER JOIN turma t on mta.codT = t.codT
INNER JOIN aluno a on mta.cpf = a.cpf

SELECT nome, nota
FROM matriculaTurAlu mta
INNER JOIN turma t on mta.codT = t.codT
INNER JOIN aluno a on mta.cpf = a.cpf
WHERE nota > 5

--Exemplo Junção Externa
SELECT nome, codT, semestre 
FROM aluno a
LEFT JOIN monitoria m on a.cpf = m.cpf_alu
WHERE m.semestre IS NULL
AND m.codT IS NULL

--Exemplo Semi Join
SELECT nome 
FROM aluno a
WHERE a.cpf IN
(SELECT cpf_alu FROM monitoria)
ORDER BY ASC

--Exemplo Anti Join
SELECT nome 
FROM aluno a
WHERE a.cpf NOT IN
(SELECT cpf_alu FROM monitoria)
ORDER BY DES

--Exemplo Subconsulta do tipo escalar
SELECT nome, nota
FROM aluno a
INNER JOIN matriculaTurAlu mta ON a.cpf = mta.cpf
WHERE nota > 
(
   Select AVG(nota)
   FROM matriculaTurAlu
)

-- Exemplo Subconsulta do tipo linha
SELECT end_CEP, end_Descricao
FROM aluno
WHERE (nome, cpf) =
(
   SELECT nome, cpf
   FROM aluno
   where curso = 'Ciência da Computação'
)

--Exemplo Subconsulta do tipo tabela
SELECT *
FROM func
WHERE nome IN
(
   SELECT nome
   FROM terceirizados t
   INNER JOIN func f on t.cpf = f.cpf
   WHERE chefe = '41764264037'
)

--Exemplo Operação de conjunto
SELECT nome, nota
FROM matriculaTurAlu mta
INNER JOIN aluno a ON mta.cpf = a.cpf
WHERE nota BETWEEN 2 AND 9
INTERSECT
SELECT nome, nota
FROM matriculaTurAlu mta
INNER JOIN aluno a ON mta.cpf = a.cpf
WHERE nota BETWEEN 5 AND 10