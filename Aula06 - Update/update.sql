--ATUALIZANDO VALORES
SELECT * FROM CANAL

-- UPDATE SEM WHERE- ALTAMENTE N�O RECOMENDAVEL
UPDATE CANAL SET GRUPO = 'REDE GLOBO'

--UPDATE COM WHERE
--ANTES DE DAR UM UPDATE, FA�A UM "SELECT" COM A MESMA CLAUSULA PARA VALIDAR
--SELECT * FROM CANAL WHERE ID_CANAL = 1
-- O VALOR RETORNADO VAI SER O MESMO QUE SER� ATUALIZADO
UPDATE CANAL SET GRUPO = 'REDE GLOBO' WHERE ID_CANAL = 1 
--VALIDAR RESULTADO
SELECT * FROM CANAL
--ATUALIZAR MAIS DE UM VALOR 
UPDATE CANAL SET GRUPO = 'GRUPO SILVIO SANTOS', VALOR_MERCADO = 345000000 WHERE ID_CANAL = 2 AND NOME_CANAL = 'SISTEMA BRASILEIRO DE TELEVIS�O'
--VALIDAR RESULTADO
SELECT * FROM CANAL
--ATUALIZAR MAIS DE UMA LINHA
UPDATE CANAL SET GRUPO = 'N�O INFORMADO' WHERE ID_CANAL IN (1,2)

--ATUALIZANDO COLUNAS COM COLUNAS
DROP TABLE MINIATURA
CREATE TABLE MINIATURA
(
NOME VARCHAR(200),
VALOR DECIMAL(10,2),
CUSTO DECIMAL(10,2)
)
INSERT INTO MINIATURA (NOME,VALOR,CUSTO)
VALUES 
('CARRO',100,30),
('NAVIO',400,200),
('NAVE',600,250)

ALTER TABLE MINIATURA ADD LUCRO DECIMAL(10,2)

SELECT * FROM MINIATURA

UPDATE MINIATURA SET LUCRO =  VALOR - CUSTO
UPDATE MINIATURA SET LUCRO =  VALOR - (CUSTO + 15)  WHERE NOME = 'CARRO'
SELECT * FROM MINIATURA

--ALTER TABLE MINIATURA COM UMA OUTRA FONTE DE DADOS
--ADD LUCRO   AS (MINIATURA.VALOR- MINIATURA.CUSTO)
CREATE TABLE MINIATURA_2
(
NOME VARCHAR(200),
VALOR DECIMAL(10,2),
CUSTO DECIMAL(10,2)
)
INSERT INTO MINIATURA_2 (NOME,VALOR,CUSTO)
VALUES 
('CARRO',200,30)




UPDATE MINIATURA
SET VALOR = MINIATURA_2.VALOR
FROM MINIATURA_2 
WHERE MINIATURA.NOME = MINIATURA_2.NOME