DROP TABLE IF EXISTS #ESTUDIO
CREATE TABLE #ESTUDIO
(
ID_ESTUDIO INT IDENTITY PRIMARY KEY,
NOME VARCHAR (100) NOT NULL UNIQUE
)

DROP TABLE IF EXISTS #DESENHO
CREATE TABLE #DESENHO
(
ID_DESENHO INT IDENTITY PRIMARY KEY,
NOME VARCHAR(200),
DATA_INICIO DATE,
DATA_FIM DATE,
ID_ESTUDIO INT FOREIGN KEY REFERENCES #ESTUDIO(ID_ESTUDIO)
)

DROP TABLE IF EXISTS #CRIADORES
CREATE TABLE #CRIADORES
(
ID_CRIADOR INT IDENTITY PRIMARY KEY,
NOME VARCHAR(200) NOT NULL,
DATA_NASCIMENTO DATE
)

DROP TABLE IF EXISTS #CRIADOR_DESENHO
CREATE TABLE #CRIADOR_DESENHO
(
ID_CRIADOR_DESENHO INT IDENTITY PRIMARY KEY,
ID_CRIADOR INT FOREIGN KEY REFERENCES #CRIADORES(ID_CRIADOR),
ID_DESENHO INT FOREIGN KEY REFERENCES #DESENHO(ID_DESENHO),
)

DROP TABLE IF EXISTS #PERSONAGEM
CREATE TABLE #PERSONAGEM
(
ID_PERSONAGEM INT IDENTITY PRIMARY KEY,
PERSONAGEM VARCHAR(200),
DESCRI??O VARCHAR(MAX),
DATA_CRIA??O DATE,
ID_DESENHO INT FOREIGN KEY REFERENCES #DESENHO(ID_DESENHO)
)

INSERT INTO #ESTUDIO (NOME) VALUES
('CARTOON NETWORK'),
('FOX'),
('WARNER BROS'),
('MARVEL'),
('HANNA BARBERA')

INSERT INTO #DESENHO (NOME,DATA_INICIO,DATA_FIM,ID_ESTUDIO ) VALUES
('IRM?O DO JOREL','2014-09-22',NULL,1),
('SIMPSONS','1989-12-17',NULL,2), 
('LIGA DA JUSTI?A','2001-11-17','2004-05-29',3), 
('O HOMEM ARANHA A S?RIE ANIMADA','1994-11-19','1998-01-31',4)

INSERT INTO #CRIADORES (NOME,DATA_NASCIMENTO) VALUES
('JULIANO ENRICO','1984-07-19'),
('MATT GROENING','1954-02-16'),
('BRUCE TIMM','1974-02-16'),
('PAUL DINI','1984-02-16'),

('STAN LEE','1922-12-28'),
('STEVE DITKPO','1927-11-02')


INSERT INTO #CRIADOR_DESENHO   (ID_CRIADOR,ID_DESENHO) VALUES
(1,1),
(2,2),
(3,3),
(4,3),
(5,4),
(6,4)

INSERT INTO #PERSONAGEM (PERSONAGEM,DESCRI??O,DATA_CRIA??O,ID_DESENHO) VALUES 
('IRM?O DO JOREL', 'PERSONAGEM PRINCIPAL, CABELULO E BAIXINHO','2014-09-22',1),
('VOV? JUJU', 'SENHORINHA QUE AMA ABACATE','2014-09-22',1),
('JOREL', 'O PERFEITO IRM?O DO IRM?O DO JOREL','2014-09-22',1),

('HOMER SIMPSON', 'DOH','1989-12-17',2),
('MARGE SIMPSON', 'MATRIARCA DA FAMILIA SIMPSON. SEU CABELO ? INCONFUNDIVEL','1989-12-17',2),
('BATE SIMPSON', 'EL BARTO','1989-12-17',2),
('LISA SIMPSON', 'INTELIGENTE, QUESTIONADORA E TALENTOSA FILHA DE HOMER','1989-12-17',2),

('SUPER HOMEM', 'FILHO DE KRYPTON','1938-07-01',3),
('BATMAN', 'O HOMEM MORCEGO','1939-05-01',3),
('MULHER MARAVILHA', 'A MULHER MAIS PODEROSA DA TERRA ','1941-12-01',3),
('LANTERNA VERDE', 'JOHN STEWART - PROTEGENDO A TERRA','1972-12-01',3),
('MULHER GAVI?O', 'THANAGARIANA','1940-01-01',3),
('CA?ADOR DE MARTE', 'JONN - ULTIMO DO SEU PLANETA ','1955-01-01',3),
('THE FLASH', 'WHALLY WEST- O MAIS RAPIDO DO MUNDO  ','1986-10-01',3),


('PETER PARKER', 'MIRANHA','1962-06-01',4),
('MARY JANE WATSON', 'ATRIZ','1965-06-01',4)



-- Os exercicios abaixo dever?o possui a clausula join e 
--exibir os resultados na mesma tabela.

--1)Utilizando as tabelas PERSONAGEM E DESENHO (join ID_DESENHO). 
--Selecionar as colunas nome dos personagens e  nome desenho.
--ordenar por nome dos personagens.

--2)Utilizando as tabelas PERSONAGEM E DESENHO (join ID_DESENHO). 
--Selecionar as colunas nome dos personagens 
--(o nome da coluna dever? ser exibido como "PERSONAGENS"), nome desenho,data inicio e data fim.
--Onde o desenho ainda n?o foi finalizado (data fim is null)

--3) Utilizando as tabelas PERSONAGEM E DESENHO (join ID_DESENHO).
--Selecionar as colunas nome dos personagens, data cria??o do personagem.
--Onde a data cria?ao do personagem ? menor que a data de cria??o do desenho.

--4) Utilizando as tabelas DESENHO,CRIADOR_DESENHO  E CRIADORES.
---(join DESENHO.ID_DESENHO = CRIADOR_DESENHO.ID_DESENHO ->
--CRIADOR_DESENHO.ID_CRIADOR = CRIADORES.ID_CRIADOR ) 
--Selecionar as colunas nome do desenho, nome dos criadores.

--5)Utilizando as tabelas DESENHO, CRIADOR_DESENHO E CRIADORES. 
---(join DESENHO.ID_DESENHO = CRIADOR_DESENHO.ID_DESENHO ->
--CRIADOR_DESENHO.ID_CRIADOR = CRIADORES.ID_CRIADOR )
--Selecionar as colunas nome do desenho,data inicio, 
--data fim e nome dos criadores.
--Onde a data de nascimento dos criadores seja maior que 1970-01-01

--6)Utilizando as tabelas DESENHO E ESTUDIO.(join ID_ESTUDIO) 
--Selecionar as colunas nome do desenho, nome do estudio. 
--Onde os estudios sejam ou da marvel ou da warner bros.

--7)Utilizando as tabelas DESENHO, ESTUDIO, CRIADORES E CRIADOR_DESENHO.
---(join ID_ESTUDIO) E DEPOIS (DESENHO.ID_DESENHO = CRIADOR_DESENHO.ID_DESENHO -> 
--CRIADOR_DESENHO.ID_CRIADOR = CRIADORES.ID_CRIADOR )
--Selecionar as colunas nome do desenho, nome dos criadores e nome do estudio.

--8)Utilizando as tabelas ESTUDIO E DESENHO.
---(join ID_ESTUDIO) Onde o estudio n?o tem desenho cadastrado no banco de dados.

--9) INSERIR DADOS DO PERSONAGEM KRUST O PALHA?O na tabela personagem.  
--NOME ='KRUST O PALHA?O'
--DESCRI??O='PALHA?O MALUCO'
--DATA_CRIA??O='1989-12-17'
--DESENHO = SIMPSONS)

--10) Atualizar a tabela #PERSONAGEM, a descri??o da VOV? JUJU dever? ser:
--'SENHORINHA QUE AMA ABACATE E PATOS'

SELECT * FROM #CRIADOR_DESENHO
SELECT * FROM #CRIADORES
SELECT * FROM #ESTUDIO
SELECT * FROM #DESENHO
SELECT * FROM #PERSONAGEM