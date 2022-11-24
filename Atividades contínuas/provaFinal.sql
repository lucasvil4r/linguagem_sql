/*
--
--
*/

USE [AdventureWorksLT2019_PT];

/*
Resposta - 1
*/

SELECT CONCAT([VENDA].[CLIENTE].[PRIMEIRO_NOME],' ', [VENDA].[CLIENTE].MEIO_NOME,' ', [VENDA].[CLIENTE].ULTIMO_NOME) as 'nome_completo', 
[VENDA].[PEDIDO].[DATA_PEDIDO],
[VENDA].[PEDIDO].NUMERO_PEDIDO,
SUM([VENDA].[DETALHE_PEDIDO].[QUANTIDADE_PEDIDO] * [VENDA].[DETALHE_PEDIDO].PRECO_UNITARIO) as 'total_pedido',
[VENDA].[CATEGORIA_PRODUTO].[NOME]
FROM [VENDA].[CLIENTE]
JOIN [VENDA].[PEDIDO]
ON [VENDA].[PEDIDO].ID_CLIENTE = [VENDA].[PEDIDO].ID_CLIENTE
JOIN [VENDA].[DETALHE_PEDIDO]
ON [VENDA].[DETALHE_PEDIDO].[ID_PEDIDO] = [VENDA].[PEDIDO].[ID_PEDIDO]
JOIN [VENDA].[PRODUTO]
ON [VENDA].[PRODUTO].ID_PRODUTO = [VENDA].[DETALHE_PEDIDO].ID_PRODUTO
JOIN [VENDA].[CATEGORIA_PRODUTO]
ON [VENDA].[CATEGORIA_PRODUTO].ID_CATEGORIA_PRODUTO = [VENDA].[PRODUTO].[ID_CATEGORIA_PRODUTO]
GROUP BY 
CONCAT([VENDA].[CLIENTE].[PRIMEIRO_NOME],' ', [VENDA].[CLIENTE].MEIO_NOME,' ', [VENDA].[CLIENTE].ULTIMO_NOME),
[VENDA].[PEDIDO].[DATA_PEDIDO], [VENDA].[PEDIDO].NUMERO_PEDIDO, [VENDA].[CATEGORIA_PRODUTO].[NOME]
;

/*
Resposta - 2
*/

CREATE TABLE #diretoria (
    id_diretoria INT IDENTITY(1,1) PRIMARY KEY,
    nome_diretoria VARCHAR(200) NOT NULL,
	data_cadastro DATE
)

INSERT INTO #diretoria(nome_diretoria,data_cadastro) VALUES 
('MATRIZ', ''),
('REGIONAL 1','2022-01-01'),
('REGIONAL 2','2022-03-08'),
('REGIONAL 3','2022-04-08')

UPDATE
  #diretoria
SET
  data_cadastro = '2021-01-01'
WHERE
  nome_diretoria =  'MATRIZ'

/*
Resposta - 3
*/

SELECT [VENDA].[PRODUTO].[NOME] as 'nome venda produto',
[VENDA].[MODELO_PRODUTO].[NOME] as 'nome modelo produto',
[VENDA].[CATEGORIA_PRODUTO].[NOME],
[VENDA].[PRODUTO].CUSTO_PADRAO,
DATEDIFF(year, GETDATE(), [VENDA].[PRODUTO].[DATA_INICIO_VENDA]) as 'Anos_venda'
FROM [VENDA].[PRODUTO]
JOIN [VENDA].[MODELO_PRODUTO]
ON [VENDA].[PRODUTO].[ID_MODELO_PRODUTO] = [VENDA].[MODELO_PRODUTO].[ID_MODELO_PRODUTO]
JOIN [VENDA].[CATEGORIA_PRODUTO]
ON [VENDA].[CATEGORIA_PRODUTO].[ID_CATEGORIA_PRODUTO] = [VENDA].[PRODUTO].[ID_CATEGORIA_PRODUTO]
JOIN [VENDA].[DETALHE_PEDIDO]
ON [VENDA].[DETALHE_PEDIDO].ID_PRODUTO = [VENDA].[PRODUTO].ID_PRODUTO
JOIN [VENDA].[PEDIDO]
ON [VENDA].[DETALHE_PEDIDO].ID_PEDIDO = [VENDA].[PEDIDO].[ID_PEDIDO]
JOIN [VENDA].[CLIENTE]
ON [VENDA].[CLIENTE].ID_CLIENTE = [VENDA].[PEDIDO].ID_CLIENTE
WHERE [VENDA].[PEDIDO].ID_PEDIDO IS NULL
;

/*
Resposta - 4
*/

SELECT [VENDA].[CLIENTE].COMPANHIA,
SUM([VENDA].[DETALHE_PEDIDO].[QUANTIDADE_PEDIDO]) as 'soma_total'
FROM [VENDA].[CLIENTE]
JOIN [VENDA].[PEDIDO]
ON [VENDA].[PEDIDO].ID_CLIENTE = [VENDA].[CLIENTE].ID_CLIENTE
JOIN [VENDA].[DETALHE_PEDIDO]
ON [VENDA].[DETALHE_PEDIDO].ID_PEDIDO = [VENDA].[PEDIDO].ID_PEDIDO
JOIN [VENDA].[PRODUTO]
ON [VENDA].[PRODUTO].ID_PRODUTO = [VENDA].[DETALHE_PEDIDO].ID_PRODUTO
WHERE [VENDA].[PRODUTO].[COR] = 'Black'
GROUP BY [VENDA].[CLIENTE].COMPANHIA

/*
Resposta - 5
*/

SELECT [VENDA].[CLIENTE].[PRIMEIRO_NOME],
[VENDA].[CLIENTE].[ULTIMO_NOME],
[VENDA].[ENDERECO].[CIDADE],
[VENDA].[ENDERECO].ESTADO,
[VENDA].[ENDERECO].REGIAO
FROM [VENDA].[CLIENTE]
JOIN [VENDA].[CLIENTE_ENDERECO]
ON [VENDA].[CLIENTE_ENDERECO].ID_CLIENTE = [VENDA].[CLIENTE].ID_CLIENTE
JOIN [VENDA].[ENDERECO]
ON [VENDA].[CLIENTE_ENDERECO].ID_ENDERECO = [VENDA].[ENDERECO].ID_ENDERECO
WHERE [VENDA].[ENDERECO].REGIAO = 'United states' and [VENDA].[ENDERECO].ESTADO = 'texas'