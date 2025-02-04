USE [master]
GO
/****** Object:  Database [HastahaneRandevu]    Script Date: 19.01.2025 21:40:26 ******/
CREATE DATABASE [HastahaneRandevu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HastahaneRandevu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MINE\MSSQL\DATA\HastahaneRandevu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HastahaneRandevu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MINE\MSSQL\DATA\HastahaneRandevu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HastahaneRandevu] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HastahaneRandevu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HastahaneRandevu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET ARITHABORT OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HastahaneRandevu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HastahaneRandevu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HastahaneRandevu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HastahaneRandevu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HastahaneRandevu] SET  MULTI_USER 
GO
ALTER DATABASE [HastahaneRandevu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HastahaneRandevu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HastahaneRandevu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HastahaneRandevu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HastahaneRandevu] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HastahaneRandevu] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HastahaneRandevu] SET QUERY_STORE = OFF
GO
USE [HastahaneRandevu]
GO
/****** Object:  Table [dbo].[TBL_Branslar]    Script Date: 19.01.2025 21:40:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Branslar](
	[BransId] [tinyint] IDENTITY(1,1) NOT NULL,
	[BransAd] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Doktorlar]    Script Date: 19.01.2025 21:40:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Doktorlar](
	[DoktorId] [tinyint] IDENTITY(1,1) NOT NULL,
	[DoktorAd] [varchar](10) NULL,
	[DoktorSoyad] [varchar](10) NULL,
	[DoktorBrans] [varchar](30) NULL,
	[DoktorTC] [char](11) NULL,
	[DoktorSifre] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Duyurular]    Script Date: 19.01.2025 21:40:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Duyurular](
	[DuyuruId] [smallint] IDENTITY(1,1) NOT NULL,
	[Duyuru] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Hastalar]    Script Date: 19.01.2025 21:40:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Hastalar](
	[HastaId] [smallint] IDENTITY(1,1) NOT NULL,
	[HastaAd] [varchar](10) NULL,
	[HastaSoyad] [varchar](10) NULL,
	[HastaTC] [char](11) NULL,
	[HastaTelefon] [varchar](15) NULL,
	[HastaSifre] [varchar](10) NULL,
	[HastaCinsiyet] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Randevular]    Script Date: 19.01.2025 21:40:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Randevular](
	[RandevuId] [int] IDENTITY(1,1) NOT NULL,
	[RandevuTarih] [varchar](10) NULL,
	[RandevuSaati] [varchar](5) NULL,
	[RandevuBrans] [varchar](30) NULL,
	[RandevuDoktor] [varchar](20) NULL,
	[RandevuDurum] [bit] NULL,
	[HastaTC] [char](11) NULL,
	[HastaSikayet] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Sekreter]    Script Date: 19.01.2025 21:40:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Sekreter](
	[SekreterId] [tinyint] IDENTITY(1,1) NOT NULL,
	[SekreterAdSoyad] [varchar](20) NULL,
	[SekreterTC] [char](11) NULL,
	[SekreterSifre] [varchar](10) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TBL_Randevular] ADD  CONSTRAINT [DF_TBL_Randevular_RandevuDurum]  DEFAULT ((0)) FOR [RandevuDurum]
GO
USE [master]
GO
ALTER DATABASE [HastahaneRandevu] SET  READ_WRITE 
GO
