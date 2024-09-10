--GROUP BY
SELECT ALUNO_ID AS "ALUNO"
ROUND(AVG(P1):: NUMERIC, 2)
FROM ALUNO_DISCIPLINA
GROUP BY "ALUNO"

/*HAVING FILTRA OS AGRUPAMENTOS*/

/*• Crie um select que retorne as duas primeiras disciplinas, sabendo que
foram ordenadas pelo nome.
*/


SELECT nome_disciplin
FROM 
	Disciplina
ORDER BY 
	nome_disciplina
LIMIT 2
offset 2

-------------------------------------------

SELECT Id_aluno as "id", MIN(P1)
FROM Aluno_disciplina
GROUP BY Id_aluno
ORDER BY
	"id"
-------------------------------------------

SELECT tipo_disciplina, COUNT(id_disciplina)
FROM disciplina
GROUP BY tipo_disciplina--geralmente o group by é pela coluna que não é uma função de agregação
ORDER BY tipo_disciplina

------------------------------------------

SELECT 
	CONCAT(primeIro_nome, sobrenome) AS "nome completo", 
	TO_CHAR(datanasc, 'DD/MM/YY') AS "data de nascimento" 
FROM
	Aluno
ORDER BY dataNasc
LIMIT
	2
OFFSET
	2
----------------------------------------------

SELECT 
	Id_aluno As "id",
	COUNT(Id_disciplina) AS "disciplinas",
	MAX(P1) AS "maior nota P1",
	MAX(P2) AS "maior nota P2",
	ROUND(AVG(FALTA):: numeric, 2) AS "Faltas"
FROM
	Aluno_disciplina
GROUP BY
	"id"
	
-------------------------------------------------

• Crie um select que retorna o id da disciplina e a soma de todas as
faltas que os alunos tiveram para cada uma dessas disciplinas.
Considerando:
• O id da disciplina deverá aparecer como: Disciplina
• A soma das faltas deve aparecer como: Total de Faltas
• Mostre apenas as tuplas que tiverem um total de 30 ou mais faltas
• Após os 3 primeiros valores, limite o resultado para 1
• Ordene pelo id da disciplina.

SELECT 
	Id_disciplina AS "Disciplina",
	SUM(FALTA) AS "Total de Faltas"
FROM 
	ALUNO_DISCIPLINA
GROUP BY
	Id_disciplina
HAVING  SUM(FALTA) >= 30
ORDER BY 
	Id_disciplina
LIMIT 3
OFFSET 1

--------------------------------------------------

SELECT 
	Id_aluno AS "ID do aluno aprovado"
	,Id_disciplina AS "ID da disciplina"
	,ROUND(AVG(P1):: numeric, 2) + ROUND(AVG(P2):: numeric, 2) AS "média"
FROM
	Aluno_disciplina
WHERE 
	FALTA <= 10
GROUP BY 
	Id_aluno
	,Id_disciplina
HAVING 
	 ROUND(AVG(P1):: numeric, 2) + ROUND(AVG(P2):: numeric, 2)  >= 70
ORDER BY 
	Id_aluno
-------------------------------------------------





