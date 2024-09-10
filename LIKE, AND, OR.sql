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
 



