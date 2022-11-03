use [SQL_S2]
--DROP TABLE PAIS
--DROP TABLE EDITORA
--DROP TABLE AUTORES
--DROP TABLE LIVROS
CREATE TABLE PAIS
(ID_PAIS INT IDENTITY PRIMARY KEY,
PAIS VARCHAR(500)
)

CREATE TABLE EDITORA
(ID_EDITORA INT IDENTITY PRIMARY KEY,
EDITORA VARCHAR(500)
)


CREATE TABLE AUTORES
(ID_AUTOR INT IDENTITY PRIMARY KEY,
NOME VARCHAR(500),
ID_PAIS INT FOREIGN KEY REFERENCES PAIS(ID_PAIS)
)

CREATE TABLE LIVROS
(ID_LIVRO INT IDENTITY PRIMARY KEY,
ID_AUTOR INT,
NOME VARCHAR(MAX),
ID_EDITORA INT FOREIGN KEY REFERENCES EDITORA(ID_EDITORA)
)


INSERT INTO PAIS (PAIS)
VALUES ('EUA'),('BRASIL')

INSERT INTO EDITORA(EDITORA)
VALUES ('ARQUEIRO') , ('Nova Fronteira')

INSERT INTO AUTORES (NOME,ID_PAIS)
VALUES ('STEPHEN KING',1),('MARIO DE ANDRADE',2),('DAN BROWN',1)

INSERT INTO LIVROS (ID_AUTOR,NOME,ID_EDITORA)
VALUES (1,'O ILUMINADO',1),(1,'DAN�A DA MORTE',1), (2,'MACUNA�MA',2), (null,'DUNA',1)
 
-- JOINS 
-- OBSERVE O AUTOR DAN BROWN
--INNER JOIN
SELECT * FROM AUTORES
INNER JOIN LIVROS ON AUTORES.ID_AUTOR=LIVROS.ID_AUTOR

--LEFT JOIN
SELECT * FROM AUTORES
LEFT JOIN LIVROS ON AUTORES.ID_AUTOR=LIVROS.ID_AUTOR

--RIGHT JOIN
SELECT * FROM AUTORES
RIGHT JOIN LIVROS ON AUTORES.ID_AUTOR=LIVROS.ID_AUTOR

--FULL JOIN
SELECT * FROM AUTORES
FULL JOIN LIVROS ON AUTORES.ID_AUTOR=LIVROS.ID_AUTOR

--CROSS JOIN
-- FAZ UMA DISTRIBUTIVA 
SELECT * FROM AUTORES
CROSS JOIN LIVROS 

--MAIS DE UM JOIN
SELECT * FROM AUTORES
LEFT JOIN LIVROS ON AUTORES.ID_AUTOR=LIVROS.ID_AUTOR
INNER JOIN PAIS ON AUTORES.ID_PAIS = PAIS.ID_PAIS
LEFT JOIN EDITORA ON LIVROS.ID_EDITORA = EDITORA.ID_EDITORA