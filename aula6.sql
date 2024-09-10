SELECT CONCAT(primeiro_nome, sobrenome) AS "Nome Completo"
FROM
	Aluno
-------------------------------------------------------------
SELECT AGE(dataNasc) AS "Idade"
FROM
	Aluno
---------------------------------------------------------------
SELECT CONCAT(sobrenome,' ', primeiro_nome) AS"Nome cientifico"
FROM
	Aluno
ORDER BY
	sobrenome

----------------------------------------------------------------

SELECT CONCAT(primeiro_nome, ' ', sobrenome) AS "Nome Completo"
FROM
	Aluno
WHERE
	AGE(dataNasc)
IN
	('27 years 8 mons 15 days', '20 years 30 days', '24 years 8 mons 18 days')
AND 
	primeiro_nome
ILIKE ('L%')

-------------------------------------------------------------------

ALTER TABLE Aluno_disciplina
ADD COLUMN 
	P1 FLOAT DEFAULT 0  CHECK(P1 >= 0 AND P1 <= 50)

-----------------------------------------------------------------

ALTER TABLE Aluno_Disciplina
ADD COLUMN 
	P2 FLOAT DEFAULT 0 CHECK(P2 >= 0 AND P2 <= 50)

select * from aluno_disciplina

----------------------------------------------------------------

ALTER TABLE Aluno_disciplina
ADD COLUMN FALTA INT

----------------------------------------------------------------
/*• Laboratório de Banco de Dados
• 28.3; 41.0; 1
• Governança em Tecnologia da Informação
• 18.7; 40.2; 6
• Engenharia de Software
• 17.0; 14.5; 10
• Projeto Aplicado à Comunidade IV.
• 38.1; 10.5; 7*/
UPDATE Aluno_disciplina
SET 
	P1 = 28.3,
	P2 = 41.0,
	FALTA = 1
WHERE
	Id_aluno = 1
AND Id_disciplina =1
-------------------------------------------------
Delete  from disciplina where Id_disciplina > 9

UPDATE Aluno_disciplina
SET
	P1= 18.7,
	P2= 40.2,
	FALTAS =6
WHERE
	Id_aluno = 1
	Id_dsiciplina =

	
UPDATE Disciplina 
SET Id_disciplina = 9
where id_disciplina = 31

select * from disciplina

