CREATE TABLE CANAL
(
ID_CANAL INT IDENTITY(1,1) PRIMARY KEY ,
NOME_CANAL VARCHAR(200)  NOT NULL  UNIQUE,
DATA_FUNDACAO DATE  NOT NULL ,
NOME_FUNDADOR VARCHAR(500)  NOT NULL ,
GRUPO VARCHAR(500),
VALOR_MERCADO DECIMAL (18,4)
)
--INSERINDO UM VALOR UNICO
INSERT INTO CANAL
(NOME_CANAL,DATA_FUNDACAO,NOME_FUNDADOR)
VALUES 
('REDE GLOBO','1965-04-26','ROBERTO MARINHO')
--MAIS DE UM VALOR
INSERT INTO CANAL
(NOME_CANAL,DATA_FUNDACAO,NOME_FUNDADOR)
VALUES 
('SISTEMA BRASILEIRO DE TELEVIS�O','1981-08-19','SILVIO SANTOS'),
('RECORDTV','1953-09-27','PAULO MACHADO DE CARVALHO')
--INSERINDO USANDO SELECT
INSERT INTO CANAL
(NOME_CANAL,DATA_FUNDACAO,NOME_FUNDADOR)
SELECT 'REDETV!','1999-11-11','AMILCARE DALLEVO'

--INSERINDO USANDO VARIAVEIS E SELECT
DECLARE @NOME_CANAL VARCHAR(MAX) = 'TV CULTURA',
@DATA_CANAL DATE = '1960-01-01',
@FUNDADOR VARCHAR(MAX) = 'DIARIOS ASSOCIADOS'
INSERT INTO CANAL
(NOME_CANAL,DATA_FUNDACAO,NOME_FUNDADOR)
SELECT @NOME_CANAL,@DATA_CANAL,@FUNDADOR

--INSERINDO DE UMA TABELA PARA OUTRA
-- GOSTARIA DE CRIAR UMA TABELA COM DADOS DOS FUNDADORES, A EMISSORA QUE FUNDOU E A DATA EM QUE O REGISTRO FOI INSERIDO
CREATE TABLE NOME_FUNDADORES
(ID_FUNDADOR INT,
NOME_FUNDADOR VARCHAR(200) NOT NULL,
EMISSORA_FUNDADA VARCHAR(200)NOT NULL,
DATA_REGISTRADO DATETIME NOT NULL
)

--INSERINDO VALORES DE UMA COLUNA PARA OUTRA COM WHERE
INSERT INTO NOME_FUNDADORES (NOME_FUNDADOR,EMISSORA_FUNDADA,DATA_REGISTRADO)
SELECT NOME_FUNDADOR,NOME_CANAL,GETDATE() FROM CANAL WHERE NOME_CANAL != 'REDE GLOBO'


INSERT INTO NOME_FUNDADORES (NOME_FUNDADOR,EMISSORA_FUNDADA,DATA_REGISTRADO)
SELECT NOME_FUNDADOR,NOME_CANAL,GETDATE() FROM CANAL WHERE NOME_CANAL = 'REDE GLOBO'

--CRIANDO FACILMENTE UMA TABELA TEMPORARIA, A PARTIR DE UMA CONSULTA
SELECT * INTO #TABELA_TEMPORARIA_CANAL FROM CANAL WHERE NOME_CANAL = 'REDE GLOBO'

--CRIANDO FACILMENTE UMA TABELA, A PARTIR DE UMA CONSULTA
SELECT * INTO CANAL_GLOBO FROM CANAL WHERE NOME_CANAL = 'REDE GLOBO'
 