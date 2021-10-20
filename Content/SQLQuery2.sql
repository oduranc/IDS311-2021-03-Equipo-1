USE [master]
GO
/****** Object:  Database [IDS311]    Script Date: 19/10/2021 11:40:41 p. m. ******/
CREATE DATABASE [IDS311]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IDS311', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\IDS311.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IDS311_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\IDS311_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [IDS311] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IDS311].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IDS311] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IDS311] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IDS311] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IDS311] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IDS311] SET ARITHABORT OFF 
GO
ALTER DATABASE [IDS311] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IDS311] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IDS311] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IDS311] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IDS311] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IDS311] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IDS311] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IDS311] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IDS311] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IDS311] SET  DISABLE_BROKER 
GO
ALTER DATABASE [IDS311] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IDS311] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IDS311] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IDS311] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IDS311] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IDS311] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IDS311] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IDS311] SET RECOVERY FULL 
GO
ALTER DATABASE [IDS311] SET  MULTI_USER 
GO
ALTER DATABASE [IDS311] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IDS311] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IDS311] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IDS311] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IDS311] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IDS311] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'IDS311', N'ON'
GO
ALTER DATABASE [IDS311] SET QUERY_STORE = OFF
GO
USE [IDS311]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 19/10/2021 11:40:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReceiverName] [varchar](70) NOT NULL,
	[ReceiverLastName] [varchar](70) NOT NULL,
	[ReceiverAddress] [varchar](max) NOT NULL,
	[ReceiverPhoneNumber] [varchar](10) NOT NULL,
	[ProductoId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[TimeCreated] [varchar](25) NOT NULL,
	[ETA] [varchar](25) NULL,
	[Status] [varchar](15) NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 19/10/2021 11:40:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](140) NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 19/10/2021 11:40:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](15) NOT NULL,
	[Email] [varchar](320) NOT NULL,
	[Password] [varchar](128) NOT NULL,
	[Role] [int] NOT NULL,
	[Name] [varchar](70) NOT NULL,
	[LastName] [varchar](70) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Pedido] ON 
GO
INSERT [dbo].[Pedido] ([Id], [ReceiverName], [ReceiverLastName], [ReceiverAddress], [ReceiverPhoneNumber], [ProductoId], [UserId], [TimeCreated], [ETA], [Status]) VALUES (4, N'Oscar', N'Durán', N'Donde el diablo tiró la chancleta', N'8295461192', 1, 1, N'Oct 19 2021 11:13PM', NULL, NULL)
GO
INSERT [dbo].[Pedido] ([Id], [ReceiverName], [ReceiverLastName], [ReceiverAddress], [ReceiverPhoneNumber], [ProductoId], [UserId], [TimeCreated], [ETA], [Status]) VALUES (5, N'Paul', N'Paniagua', N'Donde el diablo encontró su chancleta', N'8493545543', 1, 1, N'19/10/2021 11:25:18 p. m.', N'50', N'En camino')
GO
SET IDENTITY_INSERT [dbo].[Pedido] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 
GO
INSERT [dbo].[Producto] ([Id], [Name], [Price]) VALUES (1, N'Pizza Mediana', 30)
GO
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([Id], [Username], [Email], [Password], [Role], [Name], [LastName]) VALUES (1, N'Ocal23', N'odurancuello@gmail.com', N'Contraseña12', 2, N'Oscar', N'Durán')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Pedido] ADD  CONSTRAINT [DF_Pedido_TimeCreated]  DEFAULT (getdate()) FOR [TimeCreated]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Producto] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Producto]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_User]
GO
USE [master]
GO
ALTER DATABASE [IDS311] SET  READ_WRITE 
GO
