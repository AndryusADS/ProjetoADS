USE [master]
GO
/****** Object:  Database [Games]    Script Date: 16/10/2016 18:15:36 ******/
CREATE DATABASE [Games]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Games', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER14\MSSQL\DATA\Games.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Games_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER14\MSSQL\DATA\Games_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Games] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Games].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Games] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Games] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Games] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Games] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Games] SET ARITHABORT OFF 
GO
ALTER DATABASE [Games] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Games] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Games] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Games] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Games] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Games] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Games] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Games] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Games] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Games] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Games] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Games] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Games] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Games] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Games] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Games] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Games] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Games] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Games] SET  MULTI_USER 
GO
ALTER DATABASE [Games] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Games] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Games] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Games] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Games] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Games]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 16/10/2016 18:15:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](35) NULL,
	[endereco] [varchar](35) NULL,
	[cidade] [varchar](35) NULL,
	[estado] [varchar](2) NULL,
	[aniversario] [datetime] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Itens_Locacao]    Script Date: 16/10/2016 18:15:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Itens_Locacao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[locacao_id] [int] NULL,
	[jogos_id] [int] NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_ITENS_LOCACAO] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Jogos]    Script Date: 16/10/2016 18:15:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Jogos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](35) NULL,
	[genero] [varchar](20) NULL,
	[quantidade] [int] NULL,
	[valor] [float] NULL,
 CONSTRAINT [PK_Jogos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Locacao]    Script Date: 16/10/2016 18:15:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locacao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[data] [datetime] NULL,
	[clientes_id] [int] NULL,
 CONSTRAINT [PK_Locacao] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 16/10/2016 18:15:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [nchar](50) NOT NULL,
	[senha] [nchar](50) NOT NULL,
	[perfil] [char](1) NOT NULL,
 CONSTRAINT [PK_dbo.Usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([id], [nome], [endereco], [cidade], [estado], [aniversario]) VALUES (1, N'Andryus', N'rua j', N'assis', N'sp', CAST(N'1995-11-24 00:00:00.000' AS DateTime))
INSERT [dbo].[Clientes] ([id], [nome], [endereco], [cidade], [estado], [aniversario]) VALUES (2, N'Felipe', N'rua f', N'assis', N'sp', CAST(N'1994-12-12 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Clientes] OFF
SET IDENTITY_INSERT [dbo].[Itens_Locacao] ON 

INSERT [dbo].[Itens_Locacao] ([id], [locacao_id], [jogos_id], [status]) VALUES (1, 1, 1, N'L')
INSERT [dbo].[Itens_Locacao] ([id], [locacao_id], [jogos_id], [status]) VALUES (2, 1, 2, N'L')
INSERT [dbo].[Itens_Locacao] ([id], [locacao_id], [jogos_id], [status]) VALUES (3, 2, 1, N'L')
INSERT [dbo].[Itens_Locacao] ([id], [locacao_id], [jogos_id], [status]) VALUES (4, 2, 2, N'L')
SET IDENTITY_INSERT [dbo].[Itens_Locacao] OFF
SET IDENTITY_INSERT [dbo].[Jogos] ON 

INSERT [dbo].[Jogos] ([id], [titulo], [genero], [quantidade], [valor]) VALUES (1, N'Call of Duty', N'Guerra', 5, 10)
INSERT [dbo].[Jogos] ([id], [titulo], [genero], [quantidade], [valor]) VALUES (2, N'Fifa 17', N'Futebol', 7, 15)
SET IDENTITY_INSERT [dbo].[Jogos] OFF
SET IDENTITY_INSERT [dbo].[Locacao] ON 

INSERT [dbo].[Locacao] ([id], [data], [clientes_id]) VALUES (1, CAST(N'2016-05-12 00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Locacao] ([id], [data], [clientes_id]) VALUES (2, CAST(N'2016-05-10 00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Locacao] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id], [usuario], [senha], [perfil]) VALUES (3, N'andryus                                           ', N'1234                                              ', N'A')
INSERT [dbo].[Usuarios] ([id], [usuario], [senha], [perfil]) VALUES (4, N'sergio                                            ', N'123                                               ', N'B')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
ALTER TABLE [dbo].[Itens_Locacao]  WITH CHECK ADD  CONSTRAINT [FK_Itens_Locacao_Jogos] FOREIGN KEY([jogos_id])
REFERENCES [dbo].[Jogos] ([id])
GO
ALTER TABLE [dbo].[Itens_Locacao] CHECK CONSTRAINT [FK_Itens_Locacao_Jogos]
GO
ALTER TABLE [dbo].[Itens_Locacao]  WITH CHECK ADD  CONSTRAINT [FK_Itens_Locacao_Locacao] FOREIGN KEY([locacao_id])
REFERENCES [dbo].[Locacao] ([id])
GO
ALTER TABLE [dbo].[Itens_Locacao] CHECK CONSTRAINT [FK_Itens_Locacao_Locacao]
GO
ALTER TABLE [dbo].[Locacao]  WITH CHECK ADD  CONSTRAINT [FK_Locacao_Clientes] FOREIGN KEY([clientes_id])
REFERENCES [dbo].[Clientes] ([id])
GO
ALTER TABLE [dbo].[Locacao] CHECK CONSTRAINT [FK_Locacao_Clientes]
GO
USE [master]
GO
ALTER DATABASE [Games] SET  READ_WRITE 
GO
