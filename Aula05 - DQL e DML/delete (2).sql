--DELETANDO VALORES
SELECT * FROM CANAL

-- DELETE SEM WHERE- ALTAMENTE N�O RECOMENDAVEL
DELETE  CANAL

DELETE  CANAL WHERE GRUPO = 'REDE GLOBO'
-- SE CASO O RESULTADO DE LINHAS AFETADAS FOR MAIOR QUE O PLANEJADO, VERIFICAR O QUE HOUVE
--DELETE COM WHERE
--ANTES DE DAR UM DELETE, FA�A UM "SELECT" COM A MESMA CLAUSULA PARA VALIDAR
--SELECT * FROM CANAL WHERE ID_CANAL = 1
-- O VALOR RETORNADO VAI SER O MESMO QUE SER� EXCLUIDO
DELETE  CANAL WHERE GRUPO = 'REDE GLOBO' and ID_CANAL = 1 

-- TRUNCATE TABLE
-- TRUNCATE "PARECE" COM O DELETE, POR�M ELE ZERA OS IDENTITYS E N�O EXISTE A POSSIBILIDADE DE FILTRAR A OPERA��O, ELE DELETA TUDO
TRUNCATE TABLE CANAL


DELETE MINIATURA
--SET VALOR = MINIATURA_2.VALOR
FROM MINIATURA_2 
WHERE MINIATURA.NOME = MINIATURA_2.NOME