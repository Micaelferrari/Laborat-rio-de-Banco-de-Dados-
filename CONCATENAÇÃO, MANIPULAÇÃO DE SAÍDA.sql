CREATE TABLE Aluno(
Id_aluno integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
primeiro_nome varchar,
sobrenome varchar,
dataNasc date
);


CREATE TABLE Disciplina(
Id_disciplina integer  PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
nome_disciplina varchar,
tipo_disciplina  int REFERENCES Tipo(Id_tipo)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE Tipo(
Id_tipo integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
nome_tipo varchar
);

CREATE TABLE Aluno_Disciplina(
Id_aluno int REFERENCES Aluno(Id_Aluno)
ON DELETE CASCADE
ON UPDATE CASCADE,
Id_Disciplina int  REFERENCES Disciplina(Id_Disciplina)
ON DELETE CASCADE
ON UPDATE CASCADE,

PRIMARY KEY (Id_Aluno, Id_Disciplina)
);

INSERT INTO Aluno(primeiro_nome, sobrenome, datanasc)
values
('Leonardo', 'Nascimento', '30.05.2002' ),
('Guilherme' ,'Riguiti de Oliveira', '03.04.1997'),
('Pedro Henrique', 'Sousa Machado', '12.03.1999'),
('Marcos Tarcisio', 'Buettel Mota', '04.04.1991'),
('Lucas', 'dos Santos Narciso', '31.07.2001'),
('Luiz Octavio', 'Barros Rodrigues', '12.12.1996'),
('João Marcus', 'da Silva Sousa', '17.09.1999'),
('Flávia Aparecida', 'Ferrari Toscano', '03.10.2001');

INSERT INTO Tipo(nome_tipo)
values
('Formação Básica'),
('Práticas Profissionais'),
('Formação Complementar'),
('Projeto Aplicado à Comunidade'),
('Optativa');

INSERT INTO Disciplina (nome_disciplina, tipo_disciplina)
values
('Laboratório de Banco de Dados', 2),
('Optativa I', 5),
('Governança em Tecnologia da Informação', 3),
('Linguagem de Programação I', 2),
('Algoritmos', 1),
('Engenharia de Software', 2),
('Gestão de Projetos', 3),
('Projeto Aplicado à Comunidade IV', 4),
('Estruturas de Dados', 1);

INSERT INTO Aluno_Disciplina(Id_aluno, Id_Disciplina)
values
(1, 1),
(1, 3),
(1, 6),
(1, 8),

(2, 2),
(2, 3),
(2, 7),
(2, 8),

(3, 2),
(3, 4),
(3, 7),
(3, 8),

(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),

(5, 1),
(5, 2),
(5, 6),
(5, 7),
(5, 8),

(6, 3),
(6, 6),
(6, 8),

(7, 3),
(7, 4),
(7, 8),

(8, 1),
(8, 4),
(8, 5),
(8, 7),
(8, 8);


/*
EXERCICIO 1
a) select * from Disciplina

b)SELECT primeiro_nome AS "Nome", sobrenome AS "Sobrenome", dataNasc "Data de Nascimento" FROM Aluno*/

/*c) SELECT * FROM Aluno_Disciplina WHERE Id_Disciplina = 1*/

--d)  SELECT * FROM Aluno ORDER BY dataNasc ASC

/*SELECT
nome_Disciplina As "Nome da Disciplina",
tipo_Disciplina AS "Unidade de Ensino"
FROM
Disciplina
ORDER BY
tipo_Disciplina DESC*/

SELECT

primeiro_Nome AS "Primeiro Nome do Aluno",
sobrenome AS "Sobrenome do Aluno",
datanasc AS "Data de NAscimento do Aluno"

FROM

Aluno dataNasc
WHERE
datanasc > '2000.12.31'
ORDER BY
datanasc ASC
 
SELECT

primeiro_Nome AS "Primeiro Nome do Aluno",
sobrenome AS "Sobrenome do Aluno",
datanasc AS "Data de NAscimento do Aluno"

FROM

Aluno dataNasc
WHERE
datanasc > '2000.12.31'
ORDER BY
datanasc ASC
 

/*• Crie um select que retorne o nome, sobrenome e data de nascimento de
todos os alunos que:
• O sobrenome termina com a letra (a)
• O nome possua (m, a) nessa ordem, podendo ser maiúsculo ou minúsculo e
ter caracteres antes, entre e depois das duas letras.
• Os dados sejam ordenados pela data de nascimento em formato
decrescente.
• As colunas devem aparecer como: Nome do cliente; Sobrenome do
cliente; Data de nascimento do cliente.*/

SELECT
primeiro_Nome


SELECT
datanasc
FROM
Aluno
WHERE
 datanasc

BETWEEN
'01.01.1998'
AND
'01.01.2001'

--------------------------------------------------------------
SELECT
 primeiro_nome
FROM
Aluno
WHERE
primeiro_nome
IN
('Rafael', 'Leonardo', 'Lucas', 'Maria', 'Aparecida')
--------------------------------------------------------------


SELECT DISTINCT Id_Aluno
FROM
Aluno_Disciplina
WHERE
Id_Disciplina
IS NOT NULL

---------------------------------------------------------------

SELECT *
FROM
Tipo
WHERE
nome_tipo
ILIKE
'F%'
OR
nome_tipo
ILIKE
'o%'
OR
nome_tipo
IN ('Formação Básica', 'Formação acadêmica', 'Opcional', 'Optativa', 'Optimus Prime')

----------------------------------------------------------

/*Crie um select que retorne somente o nome das disciplinas que possuam nome
entre algoritmos e gestão de projetos, incluindo estes. Ordene por nome de
forma decrescente.
• A coluna nome deve aparecer como Disciplina*/

SELECT
nome_disciplina AS "Disciplina"
FROM
Disciplina
WHERE
 nome_Disciplina
BETWEEN
'Algoritmos'
AND
'Gestão de Projetos'
ORDER BY nome_disciplina DESC

---------------------------------------------------

SELECT
primeiro_nome AS "Primeiro Nome",
sobrenome AS "Sobrenome",
datanasc AS "Data de Nascimento"
FROM
Aluno
WHERE
sobrenome
BETWEEN
'Anubis'
AND
'Xerxes'
AND
primeiro_nome
LIKE
'%o%'
ORDER BY primeiro_nome, sobrenome

--------------------------------------
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

---------------------------------------------------------------

UPDATE Aluno_disciplina
SET
P1 = 28.3,
P2 = 41.0,
FALTA = 1
WHERE
Id_aluno = 1
AND Id_disciplina =1
-------------------------------------------------

UPDATE Aluno_disciplina
SET
P1= 18.7,
P2= 40.2,
FALTA =6
WHERE
Id_aluno = 1
AND
	Id_disciplina =3
---------------------------------------------------

UPDATE Aluno_disciplina
SET 
	P1=17.0,
	P2=14.5,
	FALTA= 10
WHERE
	Id_Aluno = 1
AND
	Id_disciplina = 6
AND
----------------------------------------------------

UPDATE Aluno_disciplina
SET 
	P1= 38.1,
	p2= 10.5,
	FALTA= 7
WHERE 
	Id_aluno =1
AND
	Id_disciplina= 8
-------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1=49.0,
	P2= 35.5,
	FALTA= 14
WHERE
	Id_Aluno =2
AND
	Id_disciplina= 2
------------------------------------------------------

UPDATE Aluno_disciplina
SET 
	P1= 18.8,
	P2= 25.7,
	FALTA= 2
WHERE
	Id_Aluno = 2
AND
	Id_disciplina = 3
-------------------------------------------------------

UPDATE Aluno_disciplina
SET 
	P1= 29.1,
	P2= 33.7,
	FALTA= 5
WHERE
	Id_aluno = 2
AND
	Id_disciplina = 7
-------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 37.6,
	P2= 22.4,
	FALTA= 3
WHERE
	Id_Aluno = 2
AND
	Id_disciplina = 8
--------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 17.9,
	P2= 44.5,
	FALTA= 7
WHERE
	Id_aluno = 3
AND
	Id_disciplina = 2
----------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 12.0,
	P2= 32.4,
	FALTA= 0
WHERE
	Id_aluno = 3
AND
	Id_disciplina = 4
---------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 9.2,
	P2=27.3 ,
	FALTA= 11
WHERE
	Id_aluno = 3
AND
	Id_disciplina = 7
select * from 
------------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 28,
	P2= 36.1,
	FALTA= 3
WHERE
	Id_aluno = 3
AND
	Id_disciplina = 8
------------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 13,
	P2= 26.7,
	FALTA= 10
WHERE
	Id_aluno = 4
AND
	Id_disciplina = 1
--------------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1=29.4 ,
	P2= 34.1,
	FALTA= 1
WHERE
	Id_aluno = 4
AND
	Id_disciplina = 2
--------------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 45.5,
	P2= 16.8,
	FALTA= 12
WHERE
	Id_aluno = 4
AND
	Id_disciplina = 3
--------------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 38.7,
	P2= 11.2,
	FALTA= 2
WHERE
	Id_aluno = 4
AND
	Id_disciplina = 4
--------------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 4,
	P2= 18.5,
	FALTA= 12
WHERE
	Id_aluno = 4
AND
	Id_disciplina = 5
------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 21.6,
	P2= 40.8,
	FALTA= 6
WHERE
	Id_aluno = 4
AND
	Id_disciplina = 6
------------------------------------------------------
UPDATE Aluno_disciplina
SET
	P1= 35,
	P2= 12.7,
	FALTA= 8
WHERE
	Id_aluno = 4
AND
	Id_disciplina = 7
------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 22.1,
	P2= 42.3,
	FALTA= 1
WHERE
	Id_aluno = 4
AND
	Id_disciplina = 8
------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 49.2,
	P2= 29.9,
	FALTA= 0
WHERE
	Id_aluno = 4
AND
	Id_disciplina = 9
------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 41.8,
	P2= 36.8,
	FALTA= 15
WHERE
	Id_aluno = 5
AND
	Id_disciplina = 2
------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 12.6,
	P2= 40.2,
	FALTA= 8
WHERE
	Id_aluno = 5
AND
	Id_disciplina = 6
------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 26.4,
	P2= 18.7,
	FALTA= 11
WHERE
	Id_aluno = 5
AND
	Id_disciplina = 7
------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 47.4,
	P2= 32.1,
	FALTA= 5
WHERE
	Id_aluno = 5
AND
	Id_disciplina = 8
------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 0,
	P2= 37.5,
	FALTA= 12
WHERE
	Id_aluno = 6
AND
	Id_disciplina = 3
-----------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 48.5,
	P2= 28.9,
	FALTA= 4
WHERE
	Id_aluno = 6
AND
	Id_disciplina = 6
-----------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 29.4,
	P2= 50,
	FALTA= 3
WHERE
	Id_aluno = 7
AND
	Id_disciplina = 3
---------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 14,
	P2= 4.5,
	FALTA= 2
WHERE
	Id_aluno = 7
AND
	Id_disciplina = 4
---------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 25.2,
	P2= 33.8,
	FALTA= 1
WHERE
	Id_aluno = 7
AND
	Id_disciplina = 8
---------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 27.8,
	P2= 42.1,
	FALTA= 0
WHERE
	Id_aluno = 8
AND
	Id_disciplina = 1
---------------------------------------------------------

UPDATE Aluno_disciplina
SET
	P1= 3.7,
	P2= 36.3,
	FALTA= 15
WHERE
	Id_aluno = 8
AND
	Id_disciplina = 5
---------------------------------------------------------


select * from aluno


• Algoritmos
• 3.7; 36.3; 15









