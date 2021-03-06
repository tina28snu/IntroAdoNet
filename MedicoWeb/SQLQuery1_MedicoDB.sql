USE [MedicoDB]
GO
ALTER TABLE [dbo].[Horaire] DROP CONSTRAINT [chkDay]
GO
/****** Object:  Table [dbo].[Horaire]    Script Date: 7/11/2016 16:19:56 ******/
DROP TABLE [dbo].[Horaire]
GO
USE [master]
GO
/****** Object:  Database [MedicoDB]    Script Date: 7/11/2016 16:19:56 ******/
DROP DATABASE [MedicoDB]
GO
/****** Object:  Database [MedicoDB]    Script Date: 7/11/2016 16:19:56 ******/
CREATE DATABASE [MedicoDB];

USE [MedicoDB]
GO
/****** Object:  Table [dbo].[Horaire]    Script Date: 7/11/2016 16:19:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horaire](
	[IdHoraire] [int] IDENTITY(1,1) NOT NULL,
	[Jour] [nvarchar](8) NOT NULL,
	[DebMat] [time](7) NOT NULL,
	[FinMat] [time](7) NOT NULL,
	[DebAprem] [time](7) NOT NULL,
	[FinAprem] [time](7) NOT NULL,
	[DebDate] [date] NOT NULL,
	[FinDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHoraire] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Horaire] ON 

GO
INSERT [dbo].[Horaire] ([IdHoraire], [Jour], [DebMat], [FinMat], [DebAprem], [FinAprem], [DebDate], [FinDate]) VALUES (2, N'Lundi', CAST(0x070040230E430000 AS Time), CAST(0x0700AC5264600000 AS Time), CAST(0x070048F9F66C0000 AS Time), CAST(0x07004C64EB810000 AS Time), CAST(0x083C0B00 AS Date), CAST(0x423C0B00 AS Date))
GO
INSERT [dbo].[Horaire] ([IdHoraire], [Jour], [DebMat], [FinMat], [DebAprem], [FinAprem], [DebDate], [FinDate]) VALUES (3, N'Mardi', CAST(0x070040230E430000 AS Time), CAST(0x0700AC5264600000 AS Time), CAST(0x070048F9F66C0000 AS Time), CAST(0x07004C64EB810000 AS Time), CAST(0x083C0B00 AS Date), CAST(0x423C0B00 AS Date))
GO
INSERT [dbo].[Horaire] ([IdHoraire], [Jour], [DebMat], [FinMat], [DebAprem], [FinAprem], [DebDate], [FinDate]) VALUES (4, N'Mercredi', CAST(0x070040230E430000 AS Time), CAST(0x0700AC5264600000 AS Time), CAST(0x070048F9F66C0000 AS Time), CAST(0x07004C64EB810000 AS Time), CAST(0x083C0B00 AS Date), CAST(0x423C0B00 AS Date))
GO
INSERT [dbo].[Horaire] ([IdHoraire], [Jour], [DebMat], [FinMat], [DebAprem], [FinAprem], [DebDate], [FinDate]) VALUES (5, N'Jeudi', CAST(0x070040230E430000 AS Time), CAST(0x0700AC5264600000 AS Time), CAST(0x070048F9F66C0000 AS Time), CAST(0x07004C64EB810000 AS Time), CAST(0x083C0B00 AS Date), CAST(0x423C0B00 AS Date))
GO
INSERT [dbo].[Horaire] ([IdHoraire], [Jour], [DebMat], [FinMat], [DebAprem], [FinAprem], [DebDate], [FinDate]) VALUES (6, N'Vendredi', CAST(0x070040230E430000 AS Time), CAST(0x0700AC5264600000 AS Time), CAST(0x070048F9F66C0000 AS Time), CAST(0x07004C64EB810000 AS Time), CAST(0x083C0B00 AS Date), CAST(0x423C0B00 AS Date))
GO
INSERT [dbo].[Horaire] ([IdHoraire], [Jour], [DebMat], [FinMat], [DebAprem], [FinAprem], [DebDate], [FinDate]) VALUES (7, N'Samedi', CAST(0x070040230E430000 AS Time), CAST(0x0700AC5264600000 AS Time), CAST(0x070048F9F66C0000 AS Time), CAST(0x07004C64EB810000 AS Time), CAST(0x083C0B00 AS Date), CAST(0x423C0B00 AS Date))
GO
SET IDENTITY_INSERT [dbo].[Horaire] OFF
GO
ALTER TABLE [dbo].[Horaire]  WITH CHECK ADD  CONSTRAINT [chkDay] CHECK  (([Jour]='Samedi' OR [Jour]='Vendredi' OR [Jour]='Jeudi' OR [Jour]='Mercredi' OR [Jour]='Mardi' OR [Jour]='Lundi'))
GO
ALTER TABLE [dbo].[Horaire] CHECK CONSTRAINT [chkDay]
GO
USE [master]
GO
ALTER DATABASE [MedicoDB] SET  READ_WRITE 
GO
