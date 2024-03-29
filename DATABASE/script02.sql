USE [master]
GO
/****** Object:  Database [LTT]    Script Date: 8/26/2019 8:20:44 PM ******/
CREATE DATABASE [LTT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LTT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\LTT.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LTT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\LTT_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LTT] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LTT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LTT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LTT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LTT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LTT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LTT] SET ARITHABORT OFF 
GO
ALTER DATABASE [LTT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LTT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LTT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LTT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LTT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LTT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LTT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LTT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LTT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LTT] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LTT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LTT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LTT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LTT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LTT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LTT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LTT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LTT] SET RECOVERY FULL 
GO
ALTER DATABASE [LTT] SET  MULTI_USER 
GO
ALTER DATABASE [LTT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LTT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LTT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LTT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LTT] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'LTT', N'ON'
GO
USE [LTT]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 8/26/2019 8:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] NOT NULL,
	[cateroryName] [varchar](255) NOT NULL,
	[notes] [text] NULL,
	[categoryStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categoryProduct]    Script Date: 8/26/2019 8:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categoryProduct](
	[id] [int] NOT NULL,
	[categoryProductName] [varchar](255) NOT NULL,
	[notes] [text] NULL,
	[categoryId] [int] NULL,
	[categoryStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[districts]    Script Date: 8/26/2019 8:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[districts](
	[id] [int] NOT NULL,
	[districtName] [varchar](255) NOT NULL,
	[typeArea_id] [int] NOT NULL,
	[province_id] [int] NOT NULL,
	[districtStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[news]    Script Date: 8/26/2019 8:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[news](
	[id] [int] NOT NULL,
	[productName] [nvarchar](250) NOT NULL,
	[codeProduct] [varchar](50) NOT NULL,
	[description] [nvarchar](250) NOT NULL,
	[image] [nvarchar](250) NOT NULL,
	[video] [nvarchar](250) NULL,
	[detail] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[oder]    Script Date: 8/26/2019 8:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[oder](
	[id] [int] NOT NULL,
	[codeOder] [varchar](50) NOT NULL,
	[codeProduct] [varchar](50) NOT NULL,
	[userName] [nvarchar](250) NOT NULL,
	[cartStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[oderDetail]    Script Date: 8/26/2019 8:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[oderDetail](
	[id] [int] NOT NULL,
	[codeOder] [varchar](50) NOT NULL,
	[codeProduct] [varchar](50) NOT NULL,
	[productName] [nvarchar](250) NOT NULL,
	[userName] [nvarchar](250) NOT NULL,
	[productDescription] [nvarchar](250) NOT NULL,
	[productImage] [nvarchar](250) NOT NULL,
	[video] [nvarchar](250) NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[detail] [ntext] NULL,
	[oderId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[products]    Script Date: 8/26/2019 8:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] NOT NULL,
	[productName] [nvarchar](250) NOT NULL,
	[codeProduct] [varchar](50) NOT NULL,
	[productDescription] [nvarchar](250) NOT NULL,
	[productImage] [nvarchar](250) NOT NULL,
	[video] [nvarchar](250) NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[detail] [ntext] NULL,
	[categoryProductId] [int] NULL,
	[oderDetailId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[provinces]    Script Date: 8/26/2019 8:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[provinces](
	[id] [int] NOT NULL,
	[provinceName] [varchar](255) NOT NULL,
	[typeArea_id] [int] NOT NULL,
	[provinceStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shop]    Script Date: 8/26/2019 8:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop](
	[id] [int] NOT NULL,
	[description] [nvarchar](250) NULL,
	[image] [nvarchar](250) NULL,
	[video] [nvarchar](250) NULL,
	[detail] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[typeareas]    Script Date: 8/26/2019 8:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[typeareas](
	[id] [int] NOT NULL,
	[typeAreaName] [varchar](255) NOT NULL,
	[notes] [text] NULL,
	[typeAreaStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 8/26/2019 8:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] NOT NULL,
	[email] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[userAvatar] [varchar](255) NOT NULL,
	[userBirthday] [date] NULL,
	[userGender] [bit] NULL,
	[userPhone] [varchar](20) NOT NULL,
	[userProvince] [text] NULL,
	[userDistricts] [text] NULL,
	[userWard] [text] NULL,
	[userAddress] [text] NULL,
	[userStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[wards]    Script Date: 8/26/2019 8:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[wards](
	[id] [int] NOT NULL,
	[wardName] [varchar](255) NOT NULL,
	[typeArea_id] [int] NOT NULL,
	[district_id] [int] NOT NULL,
	[wardStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [userBirthday]
GO
ALTER TABLE [dbo].[categoryProduct]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[oderDetail]  WITH CHECK ADD FOREIGN KEY([oderId])
REFERENCES [dbo].[oder] ([id])
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([categoryProductId])
REFERENCES [dbo].[categoryProduct] ([id])
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([oderDetailId])
REFERENCES [dbo].[oderDetail] ([id])
GO
USE [master]
GO
ALTER DATABASE [LTT] SET  READ_WRITE 
GO
