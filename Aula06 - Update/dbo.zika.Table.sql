USE [FIT_2022]
GO
/****** Object:  Table [dbo].[zika]    Script Date: 9/14/2022 7:08:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zika](
	[index] [bigint] NULL,
	[no] [bigint] NULL,
	[state] [varchar](max) NULL,
	[cases_under_investigation] [varchar](max) NULL,
	[cases_confirmed] [varchar](max) NULL,
	[cases_discarded] [varchar](max) NULL,
	[cases_reported_total] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (0, 1, N'Alagoas', N'158', N'0', N'0', N'158')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (1, 2, N'Bahia', N'471', N'35', N'27', N'533')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (2, 3, N'Ceará', N'218', N'4', N'7', N'229')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (3, 4, N'Maranhão', N'119', N'0', N'15', N'134')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (4, 5, N'Paraíba', N'497', N'31', N'181', N'709')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (5, 6, N'Pernambuco', N'1125', N'138', N'110', N'1373')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (6, 7, N'Piauí', N'91', N'0', N'0', N'91')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (7, 8, N'Rio Grande do Norte', N'133', N'60', N'15', N'208')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (8, 9, N'Sergipe', N'172', N'0', N'0', N'172')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (9, 10, N'Espírito Santo', N'52', N'0', N'0', N'52')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (10, 11, N'Minas Gerais', N'8', N'1', N'39', N'48')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (11, 12, N'Rio de Janeiro', N'122', N'0', N'0', N'122')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (12, 13, N'São Paulo', N'18', N'0', N'0', N'18')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (13, 14, N'Acre', N'Sem registros', N'Sem registros', N'Sem registros', N'Sem registros ')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (14, 15, N'Amapá', N'Sem registros', N'Sem registros', N'Sem registros', N'Sem registros ')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (15, 16, N'Amazonas', N'Sem registros', N'Sem registros', N'Sem registros', N'Sem registros ')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (16, 17, N'Pará', N'6', N'0', N'0', N'6')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (17, 18, N'Rondônia', N'1', N'0', N'0', N'1')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (18, 19, N'Roraima', N'5', N'0', N'0', N'5')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (19, 20, N'Tocantins', N'70', N'0', N'12', N'82')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (20, 21, N'Distrito Federal', N'5', N'0', N'9', N'14')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (21, 22, N'Goiás', N'62', N'0', N'0', N'62')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (22, 23, N'Mato Grosso', N'110', N'0', N'37', N'147')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (23, 24, N'Mato Grosso do Sul', N'3', N'0', N'1', N'4')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (24, 25, N'Paraná', N'2', N'0', N'8', N'10')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (25, 26, N'Santa Catarina', N'0', N'0', N'1', N'1')
INSERT [dbo].[zika] ([index], [no], [state], [cases_under_investigation], [cases_confirmed], [cases_discarded], [cases_reported_total]) VALUES (26, 27, N'Rio Grande do Sul', N'0', N'1', N'0', N'1')
GO
