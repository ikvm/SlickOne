USE [SlickOneDemoDB]
GO
/****** Object:  Table [dbo].[PrdProduct]    Script Date: 12/23/2015 10:18:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrdProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductCode] [varchar](20) NOT NULL,
	[ProductType] [nvarchar](50) NOT NULL,
	[UnitPrice] [decimal](18, 2) NULL,
	[Notes] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_PrdProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PrdProduct] ON
INSERT [dbo].[PrdProduct] ([ID], [ProductName], [ProductCode], [ProductType], [UnitPrice], [Notes], [CreatedDate]) VALUES (1, N'福特', N'FT001', N'小汽车', CAST(100000.00 AS Decimal(18, 2)), NULL, CAST(0x0000A54C00AD0908 AS DateTime))
INSERT [dbo].[PrdProduct] ([ID], [ProductName], [ProductCode], [ProductType], [UnitPrice], [Notes], [CreatedDate]) VALUES (2, N'红富士', N'FS001', N'苹果', CAST(10.00 AS Decimal(18, 2)), NULL, CAST(0x0000A54C00AD505C AS DateTime))
INSERT [dbo].[PrdProduct] ([ID], [ProductName], [ProductCode], [ProductType], [UnitPrice], [Notes], [CreatedDate]) VALUES (3, N'IPhone6S', N'IP001', N'手机', CAST(6000.00 AS Decimal(18, 2)), NULL, CAST(0x0000A54C00ADD758 AS DateTime))
INSERT [dbo].[PrdProduct] ([ID], [ProductName], [ProductCode], [ProductType], [UnitPrice], [Notes], [CreatedDate]) VALUES (8, N'sdV', N'', N'手机', NULL, N'', CAST(0x0000A577009D636B AS DateTime))
INSERT [dbo].[PrdProduct] ([ID], [ProductName], [ProductCode], [ProductType], [UnitPrice], [Notes], [CreatedDate]) VALUES (9, N'sdV', N'', N'手机', NULL, N'', CAST(0x0000A577009D671D AS DateTime))
INSERT [dbo].[PrdProduct] ([ID], [ProductName], [ProductCode], [ProductType], [UnitPrice], [Notes], [CreatedDate]) VALUES (10, N'sdV', N'', N'手机', NULL, N'', CAST(0x0000A577009E0865 AS DateTime))
INSERT [dbo].[PrdProduct] ([ID], [ProductName], [ProductCode], [ProductType], [UnitPrice], [Notes], [CreatedDate]) VALUES (12, N'f', N'34', N'苹果', NULL, N'DS', CAST(0x0000A577009F69C0 AS DateTime))
INSERT [dbo].[PrdProduct] ([ID], [ProductName], [ProductCode], [ProductType], [UnitPrice], [Notes], [CreatedDate]) VALUES (13, N'f', N'34', N'苹果', NULL, N'DS', CAST(0x0000A57700A1ABD6 AS DateTime))
SET IDENTITY_INSERT [dbo].[PrdProduct] OFF
/****** Object:  Default [DF_PrdProduct_CreatedDate]    Script Date: 12/23/2015 10:18:22 ******/
ALTER TABLE [dbo].[PrdProduct] ADD  CONSTRAINT [DF_PrdProduct_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
