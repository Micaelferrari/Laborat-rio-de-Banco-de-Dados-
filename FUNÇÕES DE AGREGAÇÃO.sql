SELECT COUNT(Id_disciplina)
FROM Disciplina

----------------------------------------------------

SELECT MIN(nome_tipo)
FROM Tipo

---------------------------------------------------
SELECT TO_CHAR(MAX(datanasc),'DD/MM/YY') 
FROM
	Aluno
WHERE 
	datanasc < '01.01.2002'

---------------------------------------------------

SELECT ROUND(AVG(P1):: numeric, 2)
FROM
	Aluno_disciplina

---------------------------------------------------

SELECT COUNT(FALTA) AS "quantidade de faltas", ROUND(AVG(FALTA):: numeric, 2) AS "media de faltas"
FROM 
	aluno_disciplina
WHERE
	Id_disciplina = 3
	
----------------------------------------------------

SELECT COUNT(*) AS "Numero de Alunos"
FROM
	Aluno
WHERE primeiro_nome ILIKE ('%l%') 
AND
	sobrenome ILIKE ('%a%') 
AND
	datanasc BETWEEN '01.01.1992' AND '01.01.2000'

--------------------------------------------------

SELECT COUNT(Id_disciplina) AS "Numero de Alunos",
MIN(P1) AS "Menor Nota da P1", MIN(P2) AS "Menor nota da P2",
MAX(FALTA) AS "Numero máximo de faltas"

FROM
	Aluno_disciplina
WHERE
	Id_disciplina = 6

--------------------------------------------------
SELECT 
COUNT(Id_disciplina) AS "numero de disciplinas",
MIN(P1) AS "menor nota da P1",
MAX(P1) AS "maior nota da P1",
MIN(P2) AS "menor nota da P2",
MAX(P2) AS "maior nota da P2",
MIN(FALTA) AS "menor número de Faltas",
MAX(FALTA) AS "maior numero de faltas",
ROUND(AVG(P1):: numeric, 2) AS "media da P1",
ROUND(AVG(P2):: numeric, 2) AS "media da P2",
ROUND(AVG(FALTA):: numeric, 2) AS "media de Faltas",
COUNT(FALTA) AS "total de faltas"
FROM
	Aluno_disciplina
WHERE
	Id_Aluno = 4
	
-----------------------------------------------------
SELECT COUNT(Id_aluno) AS "quantidade de lihas",
MIN(P1) AS "Menor nota da P1",
MAX(P2) AS "Menor nota da P2",
MAX(FALTA) AS "maior numero de faltas",
ROUND(AVG(P1):: numeric, 2) AS "media da P1",
ROUND(AVG(P2):: numeric, 2) AS "media da P2",
ROUND(AVG(FALTA):: numeric, 2) AS "media de Faltas"
FROM
	Aluno_disciplina
WHERE
	Id_aluno IN(1,3,4,7,10,11)
AND
	Id_disciplina IN(2, 4, 5, 6, 8, 9, 15)
	










