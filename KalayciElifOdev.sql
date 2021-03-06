USE [master]
GO
/****** Object:  Database [KalayciElifOdev]    Script Date: 12/7/2020 11:23:44 PM ******/
CREATE DATABASE [KalayciElifOdev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KalayciElifOdev', FILENAME = N'C:\Users\Kaan\KalayciElifOdev.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KalayciElifOdev_log', FILENAME = N'C:\Users\Kaan\KalayciElifOdev_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [KalayciElifOdev] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KalayciElifOdev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KalayciElifOdev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET ARITHABORT OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KalayciElifOdev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KalayciElifOdev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KalayciElifOdev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KalayciElifOdev] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KalayciElifOdev] SET  MULTI_USER 
GO
ALTER DATABASE [KalayciElifOdev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KalayciElifOdev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KalayciElifOdev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KalayciElifOdev] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KalayciElifOdev] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KalayciElifOdev] SET QUERY_STORE = OFF
GO
USE [KalayciElifOdev]
GO
/****** Object:  Table [dbo].[calisanlar]    Script Date: 12/7/2020 11:23:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[calisanlar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[calisan_ad] [varchar](100) NOT NULL,
	[calisan_soyad] [varchar](100) NOT NULL,
	[calisan_cinsiyet] [varchar](20) NOT NULL,
	[calisan_yas] [int] NOT NULL,
	[subesi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[magaza]    Script Date: 12/7/2020 11:23:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[magaza](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[magaza_ad] [varchar](255) NOT NULL,
	[magaza_sehir] [varchar](100) NOT NULL,
	[magaza_telefon] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mudurler]    Script Date: 12/7/2020 11:23:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mudurler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mudur_ad] [varchar](100) NOT NULL,
	[mudur_soyad] [varchar](100) NOT NULL,
	[mudur_cinsiyet] [varchar](20) NOT NULL,
	[mudur_yas] [int] NOT NULL,
	[subesi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subeler]    Script Date: 12/7/2020 11:23:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subeler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sube_ad] [varchar](100) NOT NULL,
	[sube_sehir] [varchar](100) NOT NULL,
	[sube_telefon] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[calisanlar] ON 

INSERT [dbo].[calisanlar] ([id], [calisan_ad], [calisan_soyad], [calisan_cinsiyet], [calisan_yas], [subesi]) VALUES (1, N'Kaan', N'Kurt', N'Erkek', 24, 3)
INSERT [dbo].[calisanlar] ([id], [calisan_ad], [calisan_soyad], [calisan_cinsiyet], [calisan_yas], [subesi]) VALUES (2, N'Firat', N'Dün', N'Erkek', 31, 1)
INSERT [dbo].[calisanlar] ([id], [calisan_ad], [calisan_soyad], [calisan_cinsiyet], [calisan_yas], [subesi]) VALUES (3, N'Esra', N'Ay', N'Kadin', 29, 2)
INSERT [dbo].[calisanlar] ([id], [calisan_ad], [calisan_soyad], [calisan_cinsiyet], [calisan_yas], [subesi]) VALUES (4, N'Elif', N'Erol', N'Kadin', 19, 3)
INSERT [dbo].[calisanlar] ([id], [calisan_ad], [calisan_soyad], [calisan_cinsiyet], [calisan_yas], [subesi]) VALUES (5, N'Nisa', N'Kaçak', N'Kadin', 32, 1)
SET IDENTITY_INSERT [dbo].[calisanlar] OFF
GO
SET IDENTITY_INSERT [dbo].[magaza] ON 

INSERT [dbo].[magaza] ([id], [magaza_ad], [magaza_sehir], [magaza_telefon]) VALUES (1, N'X Firmasi', N'Istanbul', N'02822523534')
SET IDENTITY_INSERT [dbo].[magaza] OFF
GO
SET IDENTITY_INSERT [dbo].[mudurler] ON 

INSERT [dbo].[mudurler] ([id], [mudur_ad], [mudur_soyad], [mudur_cinsiyet], [mudur_yas], [subesi]) VALUES (1, N'Ahmet', N'Sönmez', N'Erkek', 42, 2)
INSERT [dbo].[mudurler] ([id], [mudur_ad], [mudur_soyad], [mudur_cinsiyet], [mudur_yas], [subesi]) VALUES (2, N'Mehmet', N'Cemil', N'Erkek', 38, 1)
INSERT [dbo].[mudurler] ([id], [mudur_ad], [mudur_soyad], [mudur_cinsiyet], [mudur_yas], [subesi]) VALUES (3, N'Özlem', N'Gündüz', N'Kadin', 37, 3)
SET IDENTITY_INSERT [dbo].[mudurler] OFF
GO
SET IDENTITY_INSERT [dbo].[subeler] ON 

INSERT [dbo].[subeler] ([id], [sube_ad], [sube_sehir], [sube_telefon]) VALUES (1, N'A Subesi', N'Istanbul', N'02821239234')
INSERT [dbo].[subeler] ([id], [sube_ad], [sube_sehir], [sube_telefon]) VALUES (2, N'B Subesi', N'Izmir', N'02321679234')
INSERT [dbo].[subeler] ([id], [sube_ad], [sube_sehir], [sube_telefon]) VALUES (3, N'C Subesi', N'Antayla', N'02421267434')
SET IDENTITY_INSERT [dbo].[subeler] OFF
GO
ALTER TABLE [dbo].[calisanlar]  WITH CHECK ADD FOREIGN KEY([subesi])
REFERENCES [dbo].[subeler] ([id])
GO
ALTER TABLE [dbo].[mudurler]  WITH CHECK ADD FOREIGN KEY([subesi])
REFERENCES [dbo].[subeler] ([id])
GO
USE [master]
GO
ALTER DATABASE [KalayciElifOdev] SET  READ_WRITE 
GO
