USE [master]
GO
/****** Object:  Database [ParkGorkogo]    Script Date: 16.03.2023 10:50:27 ******/
CREATE DATABASE [ParkGorkogo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ParkGorkogo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ParkGorkogo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ParkGorkogo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ParkGorkogo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ParkGorkogo] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ParkGorkogo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ParkGorkogo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ParkGorkogo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ParkGorkogo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ParkGorkogo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ParkGorkogo] SET ARITHABORT OFF 
GO
ALTER DATABASE [ParkGorkogo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ParkGorkogo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ParkGorkogo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ParkGorkogo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ParkGorkogo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ParkGorkogo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ParkGorkogo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ParkGorkogo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ParkGorkogo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ParkGorkogo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ParkGorkogo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ParkGorkogo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ParkGorkogo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ParkGorkogo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ParkGorkogo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ParkGorkogo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ParkGorkogo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ParkGorkogo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ParkGorkogo] SET  MULTI_USER 
GO
ALTER DATABASE [ParkGorkogo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ParkGorkogo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ParkGorkogo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ParkGorkogo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ParkGorkogo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ParkGorkogo] SET QUERY_STORE = OFF
GO
USE [ParkGorkogo]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 16.03.2023 10:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[IDClient] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[Patronimic] [nvarchar](max) NULL,
	[CodeClient] [nvarchar](50) NOT NULL,
	[Passport] [nvarchar](max) NULL,
	[DataBirth] [date] NULL,
	[Adress] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[PasswordClient] [nvarchar](max) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[CodeClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orrder]    Script Date: 16.03.2023 10:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orrder](
	[IDOrder] [int] IDENTITY(1,1) NOT NULL,
	[DateOrder] [date] NULL,
	[TimeOrder] [time](7) NULL,
	[CodeClient] [nvarchar](50) NULL,
	[IDService] [int] NULL,
	[StatusOrder] [nvarchar](50) NULL,
	[DateClose] [date] NULL,
	[Time] [int] NULL,
 CONSTRAINT [PK_Orrder] PRIMARY KEY CLUSTERED 
(
	[IDOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 16.03.2023 10:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IDRole] [int] IDENTITY(1,1) NOT NULL,
	[NameRole] [nvarchar](max) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 16.03.2023 10:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[IDService] [int] IDENTITY(1,1) NOT NULL,
	[NameService] [nvarchar](max) NULL,
	[CodeService] [nvarchar](50) NULL,
	[PriceService] [money] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[IDService] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 16.03.2023 10:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[IDSession] [int] IDENTITY(1,1) NOT NULL,
	[IDWorker] [int] NULL,
	[DateSession] [date] NULL,
	[TimeSession] [time](7) NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[IDSession] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 16.03.2023 10:50:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[IDWorker] [int] IDENTITY(1,1) NOT NULL,
	[IDRole] [int] NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[Patronimic] [nvarchar](max) NULL,
	[LiginWorker] [nvarchar](max) NULL,
	[PasswordWorker] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[IDWorker] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orrder]  WITH CHECK ADD  CONSTRAINT [FK_Orrder_Client] FOREIGN KEY([CodeClient])
REFERENCES [dbo].[Client] ([CodeClient])
GO
ALTER TABLE [dbo].[Orrder] CHECK CONSTRAINT [FK_Orrder_Client]
GO
ALTER TABLE [dbo].[Orrder]  WITH CHECK ADD  CONSTRAINT [FK_Orrder_Service] FOREIGN KEY([IDService])
REFERENCES [dbo].[Service] ([IDService])
GO
ALTER TABLE [dbo].[Orrder] CHECK CONSTRAINT [FK_Orrder_Service]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Worker] FOREIGN KEY([IDWorker])
REFERENCES [dbo].[Worker] ([IDWorker])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Worker]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([IDRole])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Role]
GO
USE [master]
GO
ALTER DATABASE [ParkGorkogo] SET  READ_WRITE 
GO
