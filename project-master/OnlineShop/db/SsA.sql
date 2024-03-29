USE [OnlineShop]
GO
/****** Object:  Table [dbo].[About]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[About](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NULL,
	[Detail] [ntext] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NOT NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[City]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [nchar](10) NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Content]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tag] [nvarchar](500) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContentTag](
	[ContentID] [bigint] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ContentTag] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Creadental]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Creadental](
	[UserGroupID] [varchar](50) NOT NULL,
	[RoleID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Creadental] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[District]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[DistrictID] [nchar](10) NOT NULL,
	[DistrictName] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[CityID] [nchar](10) NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[DistrictID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Content] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Footer]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [varchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[Icon] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Code] [varchar](10) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NULL,
	[MoreImages] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[IncludedVAT] [bit] NULL,
	[Quantity] [int] NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [nvarchar](250) NOT NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Silde]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Silde](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](250) NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Silde] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Value] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId]  AS ('UID'+right('00000000'+CONVERT([varchar](50),[ID]),(8))),
	[Username] [varchar](50) NULL,
	[Password] [varchar](32) NULL,
	[Name] [nvarchar](50) NULL,
	[GroupID] [varchar](50) NULL CONSTRAINT [DF_User_GroupID]  DEFAULT ('MEMBER'),
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Birthday] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL CONSTRAINT [DF_User_Status]  DEFAULT ((1)),
	[CityID] [nchar](10) NULL,
	[DistrictID] [nchar](10) NULL,
	[WardID] [nchar](10) NULL,
	[PassNew] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserGroup](
	[ID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ward]    Script Date: 8/19/2019 4:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ward](
	[WardID] [nchar](10) NOT NULL,
	[WardName] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[DistrictID] [nchar](10) NULL,
 CONSTRAINT [PK_Ward] PRIMARY KEY CLUSTERED 
(
	[WardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'01        ', N'Thành phố Hà Nội', N'Thành phố Trung ương')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'02        ', N'Tỉnh Hà Giang', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'04        ', N'Tỉnh Cao Bằng', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'06        ', N'Tỉnh Bắc Kạn', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'08        ', N'Tỉnh Tuyên Quang', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'10        ', N'Tỉnh Lào Cai', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'11        ', N'Tỉnh Điện Biên', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'12        ', N'Tỉnh Lai Châu', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'14        ', N'Tỉnh Sơn La', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'15        ', N'Tỉnh Yên Bái', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'17        ', N'Tỉnh Hoà Bình', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'19        ', N'Tỉnh Thái Nguyên', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'20        ', N'Tỉnh Lạng Sơn', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'22        ', N'Tỉnh Quảng Ninh', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'24        ', N'Tỉnh Bắc Giang', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'25        ', N'Tỉnh Phú Thọ', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'26        ', N'Tỉnh Vĩnh Phúc', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'27        ', N'Tỉnh Bắc Ninh', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'30        ', N'Tỉnh Hải Dương', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'31        ', N'Thành phố Hải Phòng', N'Thành phố Trung ương')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'33        ', N'Tỉnh Hưng Yên', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'34        ', N'Tỉnh Thái Bình', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'35        ', N'Tỉnh Hà Nam', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'36        ', N'Tỉnh Nam Định', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'37        ', N'Tỉnh Ninh Bình', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'38        ', N'Tỉnh Thanh Hóa', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'40        ', N'Tỉnh Nghệ An', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'42        ', N'Tỉnh Hà Tĩnh', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'44        ', N'Tỉnh Quảng Bình', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'45        ', N'Tỉnh Quảng Trị', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'46        ', N'Tỉnh Thừa Thiên Huế', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'48        ', N'Thành phố Đà Nẵng', N'Thành phố Trung ương')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'49        ', N'Tỉnh Quảng Nam', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'51        ', N'Tỉnh Quảng Ngãi', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'52        ', N'Tỉnh Bình Định', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'54        ', N'Tỉnh Phú Yên', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'56        ', N'Tỉnh Khánh Hòa', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'58        ', N'Tỉnh Ninh Thuận', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'60        ', N'Tỉnh Bình Thuận', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'62        ', N'Tỉnh Kon Tum', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'64        ', N'Tỉnh Gia Lai', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'66        ', N'Tỉnh Đắk Lắk', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'67        ', N'Tỉnh Đắk Nông', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'68        ', N'Tỉnh Lâm Đồng', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'70        ', N'Tỉnh Bình Phước', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'72        ', N'Tỉnh Tây Ninh', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'74        ', N'Tỉnh Bình Dương', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'75        ', N'Tỉnh Đồng Nai', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'77        ', N'Tỉnh Bà Rịa - Vũng Tàu', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'79        ', N'Thành phố Hồ Chí Minh', N'Thành phố Trung ương')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'80        ', N'Tỉnh Long An', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'82        ', N'Tỉnh Tiền Giang', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'83        ', N'Tỉnh Bến Tre', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'84        ', N'Tỉnh Trà Vinh', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'86        ', N'Tỉnh Vĩnh Long', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'87        ', N'Tỉnh Đồng Tháp', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'89        ', N'Tỉnh An Giang', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'91        ', N'Tỉnh Kiên Giang', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'92        ', N'Thành phố Cần Thơ', N'Thành phố Trung ương')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'93        ', N'Tỉnh Hậu Giang', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'94        ', N'Tỉnh Sóc Trăng', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'95        ', N'Tỉnh Bạc Liêu', N'Tỉnh')
INSERT [dbo].[City] ([CityID], [CityName], [Type]) VALUES (N'96        ', N'Tỉnh Cà Mau', N'Tỉnh')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'001       ', N'Quận Ba Đình', N'Quận', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'002       ', N'Quận Hoàn Kiếm', N'Quận', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'003       ', N'Quận Tây Hồ', N'Quận', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'004       ', N'Quận Long Biên', N'Quận', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'005       ', N'Quận Cầu Giấy', N'Quận', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'006       ', N'Quận Đống Đa', N'Quận', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'007       ', N'Quận Hai Bà Trưng', N'Quận', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'008       ', N'Quận Hoàng Mai', N'Quận', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'009       ', N'Quận Thanh Xuân', N'Quận', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'016       ', N'Huyện Sóc Sơn', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'017       ', N'Huyện Đông Anh', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'018       ', N'Huyện Gia Lâm', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'019       ', N'Quận Nam Từ Liêm', N'Quận', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'020       ', N'Huyện Thanh Trì', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'021       ', N'Quận Bắc Từ Liêm', N'Quận', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'024       ', N'Thành phố Hà Giang', N'Thành phố', N'02        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'026       ', N'Huyện Đồng Văn', N'Huyện', N'02        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'027       ', N'Huyện Mèo Vạc', N'Huyện', N'02        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'028       ', N'Huyện Yên Minh', N'Huyện', N'02        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'029       ', N'Huyện Quản Bạ', N'Huyện', N'02        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'030       ', N'Huyện Vị Xuyên', N'Huyện', N'02        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'031       ', N'Huyện Bắc Mê', N'Huyện', N'02        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'032       ', N'Huyện Hoàng Su Phì', N'Huyện', N'02        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'033       ', N'Huyện Xín Mần', N'Huyện', N'02        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'034       ', N'Huyện Bắc Quang', N'Huyện', N'02        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'035       ', N'Huyện Quang Bình', N'Huyện', N'02        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'040       ', N'Thành phố Cao Bằng', N'Thành phố', N'04        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'042       ', N'Huyện Bảo Lâm', N'Huyện', N'04        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'043       ', N'Huyện Bảo Lạc', N'Huyện', N'04        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'044       ', N'Huyện Thông Nông', N'Huyện', N'04        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'045       ', N'Huyện Hà Quảng', N'Huyện', N'04        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'046       ', N'Huyện Trà Lĩnh', N'Huyện', N'04        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'047       ', N'Huyện Trùng Khánh', N'Huyện', N'04        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'048       ', N'Huyện Hạ Lang', N'Huyện', N'04        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'049       ', N'Huyện Quảng Uyên', N'Huyện', N'04        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'050       ', N'Huyện Phục Hoà', N'Huyện', N'04        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'051       ', N'Huyện Hoà An', N'Huyện', N'04        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'052       ', N'Huyện Nguyên Bình', N'Huyện', N'04        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'053       ', N'Huyện Thạch An', N'Huyện', N'04        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'058       ', N'Thành phố Bắc Kạn', N'Thành phố', N'06        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'060       ', N'Huyện Pác Nặm', N'Huyện', N'06        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'061       ', N'Huyện Ba Bể', N'Huyện', N'06        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'062       ', N'Huyện Ngân Sơn', N'Huyện', N'06        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'063       ', N'Huyện Bạch Thông', N'Huyện', N'06        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'064       ', N'Huyện Chợ Đồn', N'Huyện', N'06        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'065       ', N'Huyện Chợ Mới', N'Huyện', N'06        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'066       ', N'Huyện Na Rì', N'Huyện', N'06        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'070       ', N'Thành phố Tuyên Quang', N'Thành phố', N'08        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'071       ', N'Huyện Lâm Bình', N'Huyện', N'08        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'072       ', N'Huyện Nà Hang', N'Huyện', N'08        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'073       ', N'Huyện Chiêm Hóa', N'Huyện', N'08        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'074       ', N'Huyện Hàm Yên', N'Huyện', N'08        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'075       ', N'Huyện Yên Sơn', N'Huyện', N'08        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'076       ', N'Huyện Sơn Dương', N'Huyện', N'08        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'080       ', N'Thành phố Lào Cai', N'Thành phố', N'10        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'082       ', N'Huyện Bát Xát', N'Huyện', N'10        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'083       ', N'Huyện Mường Khương', N'Huyện', N'10        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'084       ', N'Huyện Si Ma Cai', N'Huyện', N'10        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'085       ', N'Huyện Bắc Hà', N'Huyện', N'10        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'086       ', N'Huyện Bảo Thắng', N'Huyện', N'10        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'087       ', N'Huyện Bảo Yên', N'Huyện', N'10        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'088       ', N'Huyện Sa Pa', N'Huyện', N'10        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'089       ', N'Huyện Văn Bàn', N'Huyện', N'10        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'094       ', N'Thành phố Điện Biên Phủ', N'Thành phố', N'11        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'095       ', N'Thị Xã Mường Lay', N'Thị Xã', N'11        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'096       ', N'Huyện Mường Nhé', N'Huyện', N'11        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'097       ', N'Huyện Mường Chà', N'Huyện', N'11        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'098       ', N'Huyện Tủa Chùa', N'Huyện', N'11        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'099       ', N'Huyện Tuần Giáo', N'Huyện', N'11        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'100       ', N'Huyện Điện Biên', N'Huyện', N'11        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'101       ', N'Huyện Điện Biên Đông', N'Huyện', N'11        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'102       ', N'Huyện Mường Ảng', N'Huyện', N'11        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'103       ', N'Huyện Nậm Pồ', N'Huyện', N'11        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'105       ', N'Thành phố Lai Châu', N'Thành phố', N'12        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'106       ', N'Huyện Tam Đường', N'Huyện', N'12        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'107       ', N'Huyện Mường Tè', N'Huyện', N'12        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'108       ', N'Huyện Sìn Hồ', N'Huyện', N'12        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'109       ', N'Huyện Phong Thổ', N'Huyện', N'12        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'110       ', N'Huyện Than Uyên', N'Huyện', N'12        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'111       ', N'Huyện Tân Uyên', N'Huyện', N'12        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'112       ', N'Huyện Nậm Nhùn', N'Huyện', N'12        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'116       ', N'Thành phố Sơn La', N'Thành phố', N'14        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'118       ', N'Huyện Quỳnh Nhai', N'Huyện', N'14        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'119       ', N'Huyện Thuận Châu', N'Huyện', N'14        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'120       ', N'Huyện Mường La', N'Huyện', N'14        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'121       ', N'Huyện Bắc Yên', N'Huyện', N'14        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'122       ', N'Huyện Phù Yên', N'Huyện', N'14        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'123       ', N'Huyện Mộc Châu', N'Huyện', N'14        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'124       ', N'Huyện Yên Châu', N'Huyện', N'14        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'125       ', N'Huyện Mai Sơn', N'Huyện', N'14        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'126       ', N'Huyện Sông Mã', N'Huyện', N'14        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'127       ', N'Huyện Sốp Cộp', N'Huyện', N'14        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'128       ', N'Huyện Vân Hồ', N'Huyện', N'14        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'132       ', N'Thành phố Yên Bái', N'Thành phố', N'15        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'133       ', N'Thị Xã Nghĩa Lộ', N'Thị Xã', N'15        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'135       ', N'Huyện Lục Yên', N'Huyện', N'15        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'136       ', N'Huyện Văn Yên', N'Huyện', N'15        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'137       ', N'Huyện Mù Căng Chải', N'Huyện', N'15        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'138       ', N'Huyện Trấn Yên', N'Huyện', N'15        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'139       ', N'Huyện Trạm Tấu', N'Huyện', N'15        ')
GO
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'140       ', N'Huyện Văn Chấn', N'Huyện', N'15        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'141       ', N'Huyện Yên Bình', N'Huyện', N'15        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'148       ', N'Thành phố Hòa Bình', N'Thành phố', N'17        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'150       ', N'Huyện Đà Bắc', N'Huyện', N'17        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'151       ', N'Huyện Kỳ Sơn', N'Huyện', N'17        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'152       ', N'Huyện Lương Sơn', N'Huyện', N'17        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'153       ', N'Huyện Kim Bôi', N'Huyện', N'17        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'154       ', N'Huyện Cao Phong', N'Huyện', N'17        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'155       ', N'Huyện Tân Lạc', N'Huyện', N'17        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'156       ', N'Huyện Mai Châu', N'Huyện', N'17        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'157       ', N'Huyện Lạc Sơn', N'Huyện', N'17        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'158       ', N'Huyện Yên Thủy', N'Huyện', N'17        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'159       ', N'Huyện Lạc Thủy', N'Huyện', N'17        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'164       ', N'Thành phố Thái Nguyên', N'Thành phố', N'19        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'165       ', N'Thành phố Sông Công', N'Thành phố', N'19        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'167       ', N'Huyện Định Hóa', N'Huyện', N'19        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'168       ', N'Huyện Phú Lương', N'Huyện', N'19        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'169       ', N'Huyện Đồng Hỷ', N'Huyện', N'19        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'170       ', N'Huyện Võ Nhai', N'Huyện', N'19        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'171       ', N'Huyện Đại Từ', N'Huyện', N'19        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'172       ', N'Thị Xã Phổ Yên', N'Thị Xã', N'19        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'173       ', N'Huyện Phú Bình', N'Huyện', N'19        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'178       ', N'Thành phố Lạng Sơn', N'Thành phố', N'20        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'180       ', N'Huyện Tràng Định', N'Huyện', N'20        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'181       ', N'Huyện Bình Gia', N'Huyện', N'20        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'182       ', N'Huyện Văn Lãng', N'Huyện', N'20        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'183       ', N'Huyện Cao Lộc', N'Huyện', N'20        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'184       ', N'Huyện Văn Quan', N'Huyện', N'20        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'185       ', N'Huyện Bắc Sơn', N'Huyện', N'20        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'186       ', N'Huyện Hữu Lũng', N'Huyện', N'20        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'187       ', N'Huyện Chi Lăng', N'Huyện', N'20        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'188       ', N'Huyện Lộc Bình', N'Huyện', N'20        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'189       ', N'Huyện Đình Lập', N'Huyện', N'20        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'193       ', N'Thành phố Hạ Long', N'Thành phố', N'22        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'194       ', N'Thành phố Móng Cái', N'Thành phố', N'22        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'195       ', N'Thành phố Cẩm Phả', N'Thành phố', N'22        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'196       ', N'Thành phố Uông Bí', N'Thành phố', N'22        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'198       ', N'Huyện Bình Liêu', N'Huyện', N'22        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'199       ', N'Huyện Tiên Yên', N'Huyện', N'22        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'200       ', N'Huyện Đầm Hà', N'Huyện', N'22        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'201       ', N'Huyện Hải Hà', N'Huyện', N'22        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'202       ', N'Huyện Ba Chẽ', N'Huyện', N'22        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'203       ', N'Huyện Vân Đồn', N'Huyện', N'22        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'204       ', N'Huyện Hoành Bồ', N'Huyện', N'22        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'205       ', N'Thị Xã Đông Triều', N'Thị Xã', N'22        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'206       ', N'Thị Xã Quảng Yên', N'Thị Xã', N'22        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'207       ', N'Huyện Cô Tô', N'Huyện', N'22        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'213       ', N'Thành phố Bắc Giang', N'Thành phố', N'24        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'215       ', N'Huyện Yên Thế', N'Huyện', N'24        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'216       ', N'Huyện Tân Yên', N'Huyện', N'24        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'217       ', N'Huyện Lạng Giang', N'Huyện', N'24        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'218       ', N'Huyện Lục Nam', N'Huyện', N'24        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'219       ', N'Huyện Lục Ngạn', N'Huyện', N'24        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'220       ', N'Huyện Sơn Động', N'Huyện', N'24        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'221       ', N'Huyện Yên Dũng', N'Huyện', N'24        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'222       ', N'Huyện Việt Yên', N'Huyện', N'24        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'223       ', N'Huyện Hiệp Hòa', N'Huyện', N'24        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'227       ', N'Thành phố Việt Trì', N'Thành phố', N'25        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'228       ', N'Thị Xã Phú Thọ', N'Thị Xã', N'25        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'230       ', N'Huyện Đoan Hùng', N'Huyện', N'25        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'231       ', N'Huyện Hạ Hoà', N'Huyện', N'25        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'232       ', N'Huyện Thanh Ba', N'Huyện', N'25        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'233       ', N'Huyện Phù Ninh', N'Huyện', N'25        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'234       ', N'Huyện Yên Lập', N'Huyện', N'25        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'235       ', N'Huyện Cẩm Khê', N'Huyện', N'25        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'236       ', N'Huyện Tam Nông', N'Huyện', N'25        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'237       ', N'Huyện Lâm Thao', N'Huyện', N'25        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'238       ', N'Huyện Thanh Sơn', N'Huyện', N'25        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'239       ', N'Huyện Thanh Thuỷ', N'Huyện', N'25        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'240       ', N'Huyện Tân Sơn', N'Huyện', N'25        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'243       ', N'Thành phố Vĩnh Yên', N'Thành phố', N'26        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'244       ', N'Thị Xã Phúc Yên', N'Thị Xã', N'26        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'246       ', N'Huyện Lập Thạch', N'Huyện', N'26        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'247       ', N'Huyện Tam Dương', N'Huyện', N'26        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'248       ', N'Huyện Tam Đảo', N'Huyện', N'26        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'249       ', N'Huyện Bình Xuyên', N'Huyện', N'26        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'250       ', N'Huyện Mê Linh', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'251       ', N'Huyện Yên Lạc', N'Huyện', N'26        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'252       ', N'Huyện Vĩnh Tường', N'Huyện', N'26        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'253       ', N'Huyện Sông Lô', N'Huyện', N'26        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'256       ', N'Thành phố Bắc Ninh', N'Thành phố', N'27        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'258       ', N'Huyện Yên Phong', N'Huyện', N'27        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'259       ', N'Huyện Quế Võ', N'Huyện', N'27        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'260       ', N'Huyện Tiên Du', N'Huyện', N'27        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'261       ', N'Thị Xã Từ Sơn', N'Thị Xã', N'27        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'262       ', N'Huyện Thuận Thành', N'Huyện', N'27        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'263       ', N'Huyện Gia Bình', N'Huyện', N'27        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'264       ', N'Huyện Lương Tài', N'Huyện', N'27        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'268       ', N'Quận Hà Đông', N'Quận', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'269       ', N'Thị Xã Sơn Tây', N'Thị Xã', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'271       ', N'Huyện Ba Vì', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'272       ', N'Huyện Phúc Thọ', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'273       ', N'Huyện Đan Phượng', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'274       ', N'Huyện Hoài Đức', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'275       ', N'Huyện Quốc Oai', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'276       ', N'Huyện Thạch Thất', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'277       ', N'Huyện Chương Mỹ', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'278       ', N'Huyện Thanh Oai', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'279       ', N'Huyện Thường Tín', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'280       ', N'Huyện Phú Xuyên', N'Huyện', N'01        ')
GO
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'281       ', N'Huyện Ứng Hòa', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'282       ', N'Huyện Mỹ Đức', N'Huyện', N'01        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'288       ', N'Thành phố Hải Dương', N'Thành phố', N'30        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'290       ', N'Thị Xã Chí Linh', N'Thị Xã', N'30        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'291       ', N'Huyện Nam Sách', N'Huyện', N'30        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'292       ', N'Huyện Kinh Môn', N'Huyện', N'30        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'293       ', N'Huyện Kim Thành', N'Huyện', N'30        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'294       ', N'Huyện Thanh Hà', N'Huyện', N'30        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'295       ', N'Huyện Cẩm Giàng', N'Huyện', N'30        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'296       ', N'Huyện Bình Giang', N'Huyện', N'30        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'297       ', N'Huyện Gia Lộc', N'Huyện', N'30        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'298       ', N'Huyện Tứ Kỳ', N'Huyện', N'30        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'299       ', N'Huyện Ninh Giang', N'Huyện', N'30        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'300       ', N'Huyện Thanh Miện', N'Huyện', N'30        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'303       ', N'Quận Hồng Bàng', N'Quận', N'31        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'304       ', N'Quận Ngô Quyền', N'Quận', N'31        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'305       ', N'Quận Lê Chân', N'Quận', N'31        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'306       ', N'Quận Hải An', N'Quận', N'31        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'307       ', N'Quận Kiến An', N'Quận', N'31        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'308       ', N'Quận Đồ Sơn', N'Quận', N'31        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'309       ', N'Quận Dương Kinh', N'Quận', N'31        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'311       ', N'Huyện Thuỷ Nguyên', N'Huyện', N'31        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'312       ', N'Huyện An Dương', N'Huyện', N'31        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'313       ', N'Huyện An Lão', N'Huyện', N'31        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'314       ', N'Huyện Kiến Thuỵ', N'Huyện', N'31        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'315       ', N'Huyện Tiên Lãng', N'Huyện', N'31        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'316       ', N'Huyện Vĩnh Bảo', N'Huyện', N'31        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'317       ', N'Huyện Cát Hải', N'Huyện', N'31        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'323       ', N'Thành phố Hưng Yên', N'Thành phố', N'33        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'325       ', N'Huyện Văn Lâm', N'Huyện', N'33        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'326       ', N'Huyện Văn Giang', N'Huyện', N'33        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'327       ', N'Huyện Yên Mỹ', N'Huyện', N'33        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'328       ', N'Huyện Mỹ Hào', N'Huyện', N'33        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'329       ', N'Huyện Ân Thi', N'Huyện', N'33        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'330       ', N'Huyện Khoái Châu', N'Huyện', N'33        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'331       ', N'Huyện Kim Động', N'Huyện', N'33        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'332       ', N'Huyện Tiên Lữ', N'Huyện', N'33        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'333       ', N'Huyện Phù Cừ', N'Huyện', N'33        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'336       ', N'Thành phố Thái Bình', N'Thành phố', N'34        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'338       ', N'Huyện Quỳnh Phụ', N'Huyện', N'34        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'339       ', N'Huyện Hưng Hà', N'Huyện', N'34        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'340       ', N'Huyện Đông Hưng', N'Huyện', N'34        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'341       ', N'Huyện Thái Thụy', N'Huyện', N'34        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'342       ', N'Huyện Tiền Hải', N'Huyện', N'34        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'343       ', N'Huyện Kiến Xương', N'Huyện', N'34        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'344       ', N'Huyện Vũ Thư', N'Huyện', N'34        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'347       ', N'Thành phố Phủ Lý', N'Thành phố', N'35        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'349       ', N'Huyện Duy Tiên', N'Huyện', N'35        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'350       ', N'Huyện Kim Bảng', N'Huyện', N'35        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'351       ', N'Huyện Thanh Liêm', N'Huyện', N'35        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'352       ', N'Huyện Bình Lục', N'Huyện', N'35        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'353       ', N'Huyện Lý Nhân', N'Huyện', N'35        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'356       ', N'Thành phố Nam Định', N'Thành phố', N'36        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'358       ', N'Huyện Mỹ Lộc', N'Huyện', N'36        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'359       ', N'Huyện Vụ Bản', N'Huyện', N'36        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'360       ', N'Huyện Ý Yên', N'Huyện', N'36        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'361       ', N'Huyện Nghĩa Hưng', N'Huyện', N'36        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'362       ', N'Huyện Nam Trực', N'Huyện', N'36        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'363       ', N'Huyện Trực Ninh', N'Huyện', N'36        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'364       ', N'Huyện Xuân Trường', N'Huyện', N'36        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'365       ', N'Huyện Giao Thủy', N'Huyện', N'36        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'366       ', N'Huyện Hải Hậu', N'Huyện', N'36        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'369       ', N'Thành phố Ninh Bình', N'Thành phố', N'37        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'370       ', N'Thành phố Tam Điệp', N'Thành phố', N'37        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'372       ', N'Huyện Nho Quan', N'Huyện', N'37        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'373       ', N'Huyện Gia Viễn', N'Huyện', N'37        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'374       ', N'Huyện Hoa Lư', N'Huyện', N'37        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'375       ', N'Huyện Yên Khánh', N'Huyện', N'37        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'376       ', N'Huyện Kim Sơn', N'Huyện', N'37        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'377       ', N'Huyện Yên Mô', N'Huyện', N'37        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'380       ', N'Thành phố Thanh Hóa', N'Thành phố', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'381       ', N'Thị Xã Bỉm Sơn', N'Thị Xã', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'382       ', N'Thành phố Sầm Sơn', N'Thành phố', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'384       ', N'Huyện Mường Lát', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'385       ', N'Huyện Quan Hóa', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'386       ', N'Huyện Bá Thước', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'387       ', N'Huyện Quan Sơn', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'388       ', N'Huyện Lang Chánh', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'389       ', N'Huyện Ngọc Lặc', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'390       ', N'Huyện Cẩm Thủy', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'391       ', N'Huyện Thạch Thành', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'392       ', N'Huyện Hà Trung', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'393       ', N'Huyện Vĩnh Lộc', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'394       ', N'Huyện Yên Định', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'395       ', N'Huyện Thọ Xuân', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'396       ', N'Huyện Thường Xuân', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'397       ', N'Huyện Triệu Sơn', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'398       ', N'Huyện Thiệu Hóa', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'399       ', N'Huyện Hoằng Hóa', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'400       ', N'Huyện Hậu Lộc', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'401       ', N'Huyện Nga Sơn', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'402       ', N'Huyện Như Xuân', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'403       ', N'Huyện Như Thanh', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'404       ', N'Huyện Nông Cống', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'405       ', N'Huyện Đông Sơn', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'406       ', N'Huyện Quảng Xương', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'407       ', N'Huyện Tĩnh Gia', N'Huyện', N'38        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'412       ', N'Thành phố Vinh', N'Thành phố', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'413       ', N'Thị Xã Cửa Lò', N'Thị Xã', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'414       ', N'Thị Xã Thái Hoà', N'Thị Xã', N'40        ')
GO
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'415       ', N'Huyện Quế Phong', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'416       ', N'Huyện Quỳ Châu', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'417       ', N'Huyện Kỳ Sơn', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'418       ', N'Huyện Tương Dương', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'419       ', N'Huyện Nghĩa Đàn', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'420       ', N'Huyện Quỳ Hợp', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'421       ', N'Huyện Quỳnh Lưu', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'422       ', N'Huyện Con Cuông', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'423       ', N'Huyện Tân Kỳ', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'424       ', N'Huyện Anh Sơn', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'425       ', N'Huyện Diễn Châu', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'426       ', N'Huyện Yên Thành', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'427       ', N'Huyện Đô Lương', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'428       ', N'Huyện Thanh Chương', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'429       ', N'Huyện Nghi Lộc', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'430       ', N'Huyện Nam Đàn', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'431       ', N'Huyện Hưng Nguyên', N'Huyện', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'432       ', N'Thị Xã Hoàng Mai', N'Thị Xã', N'40        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'436       ', N'Thành phố Hà Tĩnh', N'Thành phố', N'42        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'437       ', N'Thị Xã Hồng Lĩnh', N'Thị Xã', N'42        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'439       ', N'Huyện Hương Sơn', N'Huyện', N'42        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'440       ', N'Huyện Đức Thọ', N'Huyện', N'42        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'441       ', N'Huyện Vũ Quang', N'Huyện', N'42        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'442       ', N'Huyện Nghi Xuân', N'Huyện', N'42        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'443       ', N'Huyện Can Lộc', N'Huyện', N'42        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'444       ', N'Huyện Hương Khê', N'Huyện', N'42        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'445       ', N'Huyện Thạch Hà', N'Huyện', N'42        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'446       ', N'Huyện Cẩm Xuyên', N'Huyện', N'42        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'447       ', N'Huyện Kỳ Anh', N'Huyện', N'42        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'448       ', N'Huyện Lộc Hà', N'Huyện', N'42        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'449       ', N'Thị Xã Kỳ Anh', N'Thị Xã', N'42        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'450       ', N'Thành phố Đồng Hới', N'Thành phố', N'44        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'452       ', N'Huyện Minh Hóa', N'Huyện', N'44        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'453       ', N'Huyện Tuyên Hóa', N'Huyện', N'44        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'454       ', N'Huyện Quảng Trạch', N'Huyện', N'44        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'455       ', N'Huyện Bố Trạch', N'Huyện', N'44        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'456       ', N'Huyện Quảng Ninh', N'Huyện', N'44        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'457       ', N'Huyện Lệ Thủy', N'Huyện', N'44        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'458       ', N'Thị Xã Ba Đồn', N'Thị Xã', N'44        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'461       ', N'Thành phố Đông Hà', N'Thành phố', N'45        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'462       ', N'Thị Xã Quảng Trị', N'Thị Xã', N'45        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'464       ', N'Huyện Vĩnh Linh', N'Huyện', N'45        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'465       ', N'Huyện Hướng Hóa', N'Huyện', N'45        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'466       ', N'Huyện Gio Linh', N'Huyện', N'45        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'467       ', N'Huyện Đa Krông', N'Huyện', N'45        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'468       ', N'Huyện Cam Lộ', N'Huyện', N'45        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'469       ', N'Huyện Triệu Phong', N'Huyện', N'45        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'470       ', N'Huyện Hải Lăng', N'Huyện', N'45        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'474       ', N'Thành phố Huế', N'Thành phố', N'46        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'476       ', N'Huyện Phong Điền', N'Huyện', N'46        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'477       ', N'Huyện Quảng Điền', N'Huyện', N'46        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'478       ', N'Huyện Phú Vang', N'Huyện', N'46        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'479       ', N'Thị Xã Hương Thủy', N'Thị Xã', N'46        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'480       ', N'Thị Xã Hương Trà', N'Thị Xã', N'46        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'481       ', N'Huyện A Lưới', N'Huyện', N'46        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'482       ', N'Huyện Phú Lộc', N'Huyện', N'46        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'483       ', N'Huyện Nam Đông', N'Huyện', N'46        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'490       ', N'Quận Liên Chiểu', N'Quận', N'48        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'491       ', N'Quận Thanh Khê', N'Quận', N'48        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'492       ', N'Quận Hải Châu', N'Quận', N'48        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'493       ', N'Quận Sơn Trà', N'Quận', N'48        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'494       ', N'Quận Ngũ Hành Sơn', N'Quận', N'48        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'495       ', N'Quận Cẩm Lệ', N'Quận', N'48        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'497       ', N'Huyện Hòa Vang', N'Huyện', N'48        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'502       ', N'Thành phố Tam Kỳ', N'Thành phố', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'503       ', N'Thành phố Hội An', N'Thành phố', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'504       ', N'Huyện Tây Giang', N'Huyện', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'505       ', N'Huyện Đông Giang', N'Huyện', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'506       ', N'Huyện Đại Lộc', N'Huyện', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'507       ', N'Thị Xã Điện Bàn', N'Thị Xã', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'508       ', N'Huyện Duy Xuyên', N'Huyện', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'509       ', N'Huyện Quế Sơn', N'Huyện', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'510       ', N'Huyện Nam Giang', N'Huyện', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'511       ', N'Huyện Phước Sơn', N'Huyện', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'512       ', N'Huyện Hiệp Đức', N'Huyện', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'513       ', N'Huyện Thăng Bình', N'Huyện', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'514       ', N'Huyện Tiên Phước', N'Huyện', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'515       ', N'Huyện Bắc Trà My', N'Huyện', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'516       ', N'Huyện Nam Trà My', N'Huyện', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'517       ', N'Huyện Núi Thành', N'Huyện', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'518       ', N'Huyện Phú Ninh', N'Huyện', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'519       ', N'Huyện Nông Sơn', N'Huyện', N'49        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'522       ', N'Thành phố Quảng Ngãi', N'Thành phố', N'51        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'524       ', N'Huyện Bình Sơn', N'Huyện', N'51        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'525       ', N'Huyện Trà Bồng', N'Huyện', N'51        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'526       ', N'Huyện Tây Trà', N'Huyện', N'51        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'527       ', N'Huyện Sơn Tịnh', N'Huyện', N'51        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'528       ', N'Huyện Tư Nghĩa', N'Huyện', N'51        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'529       ', N'Huyện Sơn Hà', N'Huyện', N'51        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'530       ', N'Huyện Sơn Tây', N'Huyện', N'51        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'531       ', N'Huyện Minh Long', N'Huyện', N'51        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'532       ', N'Huyện Nghĩa Hành', N'Huyện', N'51        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'533       ', N'Huyện Mộ Đức', N'Huyện', N'51        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'534       ', N'Huyện Đức Phổ', N'Huyện', N'51        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'535       ', N'Huyện Ba Tơ', N'Huyện', N'51        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'536       ', N'Huyện Lý Sơn', N'Huyện', N'51        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'540       ', N'Thành phố Qui Nhơn', N'Thành phố', N'52        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'542       ', N'Huyện An Lão', N'Huyện', N'52        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'543       ', N'Huyện Hoài Nhơn', N'Huyện', N'52        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'544       ', N'Huyện Hoài Ân', N'Huyện', N'52        ')
GO
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'545       ', N'Huyện Phù Mỹ', N'Huyện', N'52        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'546       ', N'Huyện Vĩnh Thạnh', N'Huyện', N'52        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'547       ', N'Huyện Tây Sơn', N'Huyện', N'52        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'548       ', N'Huyện Phù Cát', N'Huyện', N'52        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'549       ', N'Thị Xã An Nhơn', N'Thị Xã', N'52        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'550       ', N'Huyện Tuy Phước', N'Huyện', N'52        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'551       ', N'Huyện Vân Canh', N'Huyện', N'52        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'555       ', N'Thành phố Tuy Hoà', N'Thành phố', N'54        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'557       ', N'Thị Xã Sông Cầu', N'Thị Xã', N'54        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'558       ', N'Huyện Đồng Xuân', N'Huyện', N'54        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'559       ', N'Huyện Tuy An', N'Huyện', N'54        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'560       ', N'Huyện Sơn Hòa', N'Huyện', N'54        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'561       ', N'Huyện Sông Hinh', N'Huyện', N'54        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'562       ', N'Huyện Tây Hoà', N'Huyện', N'54        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'563       ', N'Huyện Phú Hoà', N'Huyện', N'54        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'564       ', N'Huyện Đông Hòa', N'Huyện', N'54        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'568       ', N'Thành phố Nha Trang', N'Thành phố', N'56        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'569       ', N'Thành phố Cam Ranh', N'Thành phố', N'56        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'570       ', N'Huyện Cam Lâm', N'Huyện', N'56        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'571       ', N'Huyện Vạn Ninh', N'Huyện', N'56        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'572       ', N'Thị Xã Ninh Hòa', N'Thị Xã', N'56        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'573       ', N'Huyện Khánh Vĩnh', N'Huyện', N'56        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'574       ', N'Huyện Diên Khánh', N'Huyện', N'56        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'575       ', N'Huyện Khánh Sơn', N'Huyện', N'56        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'576       ', N'Huyện Trường Sa', N'Huyện', N'56        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'582       ', N'Thành phố Phan Rang-Tháp Chàm', N'Thành phố', N'58        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'584       ', N'Huyện Bác Ái', N'Huyện', N'58        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'585       ', N'Huyện Ninh Sơn', N'Huyện', N'58        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'586       ', N'Huyện Ninh Hải', N'Huyện', N'58        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'587       ', N'Huyện Ninh Phước', N'Huyện', N'58        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'588       ', N'Huyện Thuận Bắc', N'Huyện', N'58        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'589       ', N'Huyện Thuận Nam', N'Huyện', N'58        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'593       ', N'Thành phố Phan Thiết', N'Thành phố', N'60        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'594       ', N'Thị Xã La Gi', N'Thị Xã', N'60        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'595       ', N'Huyện Tuy Phong', N'Huyện', N'60        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'596       ', N'Huyện Bắc Bình', N'Huyện', N'60        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'597       ', N'Huyện Hàm Thuận Bắc', N'Huyện', N'60        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'598       ', N'Huyện Hàm Thuận Nam', N'Huyện', N'60        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'599       ', N'Huyện Tánh Linh', N'Huyện', N'60        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'600       ', N'Huyện Đức Linh', N'Huyện', N'60        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'601       ', N'Huyện Hàm Tân', N'Huyện', N'60        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'602       ', N'Huyện Phú Quí', N'Huyện', N'60        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'608       ', N'Thành phố Kon Tum', N'Thành phố', N'62        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'610       ', N'Huyện Đắk Glei', N'Huyện', N'62        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'611       ', N'Huyện Ngọc Hồi', N'Huyện', N'62        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'612       ', N'Huyện Đắk Tô', N'Huyện', N'62        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'613       ', N'Huyện Kon Plông', N'Huyện', N'62        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'614       ', N'Huyện Kon Rẫy', N'Huyện', N'62        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'615       ', N'Huyện Đắk Hà', N'Huyện', N'62        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'616       ', N'Huyện Sa Thầy', N'Huyện', N'62        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'617       ', N'Huyện Tu Mơ Rông', N'Huyện', N'62        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'618       ', N'Huyện Ia Drai', N'Huyện', N'62        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'622       ', N'Thành phố Pleiku', N'Thành phố', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'623       ', N'Thị Xã An Khê', N'Thị Xã', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'624       ', N'Thị Xã Ayun Pa', N'Thị Xã', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'625       ', N'Huyện KBang', N'Huyện', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'626       ', N'Huyện Đăk Đoa', N'Huyện', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'627       ', N'Huyện Chư Păh', N'Huyện', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'628       ', N'Huyện Ia Grai', N'Huyện', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'629       ', N'Huyện Mang Yang', N'Huyện', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'630       ', N'Huyện Kông Chro', N'Huyện', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'631       ', N'Huyện Đức Cơ', N'Huyện', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'632       ', N'Huyện Chư Prông', N'Huyện', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'633       ', N'Huyện Chư Sê', N'Huyện', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'634       ', N'Huyện Đăk Pơ', N'Huyện', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'635       ', N'Huyện Ia Pa', N'Huyện', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'637       ', N'Huyện Krông Pa', N'Huyện', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'638       ', N'Huyện Phú Thiện', N'Huyện', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'639       ', N'Huyện Chư Pưh', N'Huyện', N'64        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'643       ', N'Thành phố Buôn Ma Thuột', N'Thành phố', N'66        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'644       ', N'Thị Xã Buôn Hồ', N'Thị Xã', N'66        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'645       ', N'Huyện Ea Hleo', N'Huyện', N'66        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'646       ', N'Huyện Ea Súp', N'Huyện', N'66        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'647       ', N'Huyện Buôn Đôn', N'Huyện', N'66        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'648       ', N'Huyện Cư Mgar', N'Huyện', N'66        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'649       ', N'Huyện Krông Búk', N'Huyện', N'66        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'650       ', N'Huyện Krông Năng', N'Huyện', N'66        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'651       ', N'Huyện Ea Kar', N'Huyện', N'66        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'652       ', N'Huyện M Đrắk', N'Huyện', N'66        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'653       ', N'Huyện Krông Bông', N'Huyện', N'66        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'654       ', N'Huyện Krông Pắc', N'Huyện', N'66        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'655       ', N'Huyện Krông A Na', N'Huyện', N'66        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'656       ', N'Huyện Lắk', N'Huyện', N'66        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'657       ', N'Huyện Cư Kuin', N'Huyện', N'66        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'660       ', N'Thị Xã Gia Nghĩa', N'Thị Xã', N'67        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'661       ', N'Huyện Đăk Glong', N'Huyện', N'67        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'662       ', N'Huyện Cư Jút', N'Huyện', N'67        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'663       ', N'Huyện Đắk Mil', N'Huyện', N'67        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'664       ', N'Huyện Krông Nô', N'Huyện', N'67        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'665       ', N'Huyện Đắk Song', N'Huyện', N'67        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'666       ', N'Huyện Đắk R Lấp', N'Huyện', N'67        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'667       ', N'Huyện Tuy Đức', N'Huyện', N'67        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'672       ', N'Thành phố Đà Lạt', N'Thành phố', N'68        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'673       ', N'Thành phố Bảo Lộc', N'Thành phố', N'68        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'674       ', N'Huyện Đam Rông', N'Huyện', N'68        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'675       ', N'Huyện Lạc Dương', N'Huyện', N'68        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'676       ', N'Huyện Lâm Hà', N'Huyện', N'68        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'677       ', N'Huyện Đơn Dương', N'Huyện', N'68        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'678       ', N'Huyện Đức Trọng', N'Huyện', N'68        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'679       ', N'Huyện Di Linh', N'Huyện', N'68        ')
GO
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'680       ', N'Huyện Bảo Lâm', N'Huyện', N'68        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'681       ', N'Huyện Đạ Huoai', N'Huyện', N'68        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'682       ', N'Huyện Đạ Tẻh', N'Huyện', N'68        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'683       ', N'Huyện Cát Tiên', N'Huyện', N'68        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'688       ', N'Thị Xã Phước Long', N'Thị Xã', N'70        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'689       ', N'Thị Xã Đồng Xoài', N'Thị Xã', N'70        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'690       ', N'Thị Xã Bình Long', N'Thị Xã', N'70        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'691       ', N'Huyện Bù Gia Mập', N'Huyện', N'70        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'692       ', N'Huyện Lộc Ninh', N'Huyện', N'70        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'693       ', N'Huyện Bù Đốp', N'Huyện', N'70        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'694       ', N'Huyện Hớn Quản', N'Huyện', N'70        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'695       ', N'Huyện Đồng Phú', N'Huyện', N'70        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'696       ', N'Huyện Bù Đăng', N'Huyện', N'70        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'697       ', N'Huyện Chơn Thành', N'Huyện', N'70        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'698       ', N'Huyện Phú Riềng', N'Huyện', N'70        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'703       ', N'Thành phố Tây Ninh', N'Thành phố', N'72        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'705       ', N'Huyện Tân Biên', N'Huyện', N'72        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'706       ', N'Huyện Tân Châu', N'Huyện', N'72        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'707       ', N'Huyện Dương Minh Châu', N'Huyện', N'72        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'708       ', N'Huyện Châu Thành', N'Huyện', N'72        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'709       ', N'Huyện Hòa Thành', N'Huyện', N'72        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'710       ', N'Huyện Gò Dầu', N'Huyện', N'72        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'711       ', N'Huyện Bến Cầu', N'Huyện', N'72        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'712       ', N'Huyện Trảng Bàng', N'Huyện', N'72        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'718       ', N'Thành phố Thủ Dầu Một', N'Thành phố', N'74        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'719       ', N'Huyện Bàu Bàng', N'Huyện', N'74        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'720       ', N'Huyện Dầu Tiếng', N'Huyện', N'74        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'721       ', N'Thị Xã Bến Cát', N'Thị Xã', N'74        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'722       ', N'Huyện Phú Giáo', N'Huyện', N'74        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'723       ', N'Thị Xã Tân Uyên', N'Thị Xã', N'74        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'724       ', N'Thị Xã Dĩ An', N'Thị Xã', N'74        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'725       ', N'Thị Xã Thuận An', N'Thị Xã', N'74        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'726       ', N'Huyện Bắc Tân Uyên', N'Huyện', N'74        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'731       ', N'Thành phố Biên Hòa', N'Thành phố', N'75        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'732       ', N'Thị Xã Long Khánh', N'Thị Xã', N'75        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'734       ', N'Huyện Tân Phú', N'Huyện', N'75        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'735       ', N'Huyện Vĩnh Cửu', N'Huyện', N'75        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'736       ', N'Huyện Định Quán', N'Huyện', N'75        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'737       ', N'Huyện Trảng Bom', N'Huyện', N'75        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'738       ', N'Huyện Thống Nhất', N'Huyện', N'75        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'739       ', N'Huyện Cẩm Mỹ', N'Huyện', N'75        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'740       ', N'Huyện Long Thành', N'Huyện', N'75        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'741       ', N'Huyện Xuân Lộc', N'Huyện', N'75        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'742       ', N'Huyện Nhơn Trạch', N'Huyện', N'75        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'747       ', N'Thành phố Vũng Tàu', N'Thành phố', N'77        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'748       ', N'Thành phố Bà Rịa', N'Thành phố', N'77        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'750       ', N'Huyện Châu Đức', N'Huyện', N'77        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'751       ', N'Huyện Xuyên Mộc', N'Huyện', N'77        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'752       ', N'Huyện Long Điền', N'Huyện', N'77        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'753       ', N'Huyện Đất Đỏ', N'Huyện', N'77        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'754       ', N'Huyện Tân Thành', N'Huyện', N'77        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'760       ', N'Quận 1', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'761       ', N'Quận 12', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'762       ', N'Quận Thủ Đức', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'763       ', N'Quận 9', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'764       ', N'Quận Gò Vấp', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'765       ', N'Quận Bình Thạnh', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'766       ', N'Quận Tân Bình', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'767       ', N'Quận Tân Phú', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'768       ', N'Quận Phú Nhuận', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'769       ', N'Quận 2', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'770       ', N'Quận 3', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'771       ', N'Quận 10', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'772       ', N'Quận 11', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'773       ', N'Quận 4', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'774       ', N'Quận 5', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'775       ', N'Quận 6', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'776       ', N'Quận 8', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'777       ', N'Quận Bình Tân', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'778       ', N'Quận 7', N'Quận', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'783       ', N'Huyện Củ Chi', N'Huyện', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'784       ', N'Huyện Hóc Môn', N'Huyện', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'785       ', N'Huyện Bình Chánh', N'Huyện', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'786       ', N'Huyện Nhà Bè', N'Huyện', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'787       ', N'Huyện Cần Giờ', N'Huyện', N'79        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'794       ', N'Thành phố Tân An', N'Thành phố', N'80        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'795       ', N'Thị Xã Kiến Tường', N'Thị Xã', N'80        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'796       ', N'Huyện Tân Hưng', N'Huyện', N'80        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'797       ', N'Huyện Vĩnh Hưng', N'Huyện', N'80        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'798       ', N'Huyện Mộc Hóa', N'Huyện', N'80        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'799       ', N'Huyện Tân Thạnh', N'Huyện', N'80        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'800       ', N'Huyện Thạnh Hóa', N'Huyện', N'80        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'801       ', N'Huyện Đức Huệ', N'Huyện', N'80        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'802       ', N'Huyện Đức Hòa', N'Huyện', N'80        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'803       ', N'Huyện Bến Lức', N'Huyện', N'80        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'804       ', N'Huyện Thủ Thừa', N'Huyện', N'80        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'805       ', N'Huyện Tân Trụ', N'Huyện', N'80        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'806       ', N'Huyện Cần Đước', N'Huyện', N'80        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'807       ', N'Huyện Cần Giuộc', N'Huyện', N'80        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'808       ', N'Huyện Châu Thành', N'Huyện', N'80        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'815       ', N'Thành phố Mỹ Tho', N'Thành phố', N'82        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'816       ', N'Thị Xã Gò Công', N'Thị Xã', N'82        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'817       ', N'Thị Xã Cai Lậy', N'Thị Xã', N'82        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'818       ', N'Huyện Tân Phước', N'Huyện', N'82        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'819       ', N'Huyện Cái Bè', N'Huyện', N'82        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'820       ', N'Huyện Cai Lậy', N'Huyện', N'82        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'821       ', N'Huyện Châu Thành', N'Huyện', N'82        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'822       ', N'Huyện Chợ Gạo', N'Huyện', N'82        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'823       ', N'Huyện Gò Công Tây', N'Huyện', N'82        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'824       ', N'Huyện Gò Công Đông', N'Huyện', N'82        ')
GO
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'825       ', N'Huyện Tân Phú Đông', N'Huyện', N'82        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'829       ', N'Thành phố Bến Tre', N'Thành phố', N'83        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'831       ', N'Huyện Châu Thành', N'Huyện', N'83        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'832       ', N'Huyện Chợ Lách', N'Huyện', N'83        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'833       ', N'Huyện Mỏ Cày Nam', N'Huyện', N'83        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'834       ', N'Huyện Giồng Trôm', N'Huyện', N'83        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'835       ', N'Huyện Bình Đại', N'Huyện', N'83        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'836       ', N'Huyện Ba Tri', N'Huyện', N'83        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'837       ', N'Huyện Thạnh Phú', N'Huyện', N'83        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'838       ', N'Huyện Mỏ Cày Bắc', N'Huyện', N'83        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'842       ', N'Thành phố Trà Vinh', N'Thành phố', N'84        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'844       ', N'Huyện Càng Long', N'Huyện', N'84        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'845       ', N'Huyện Cầu Kè', N'Huyện', N'84        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'846       ', N'Huyện Tiểu Cần', N'Huyện', N'84        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'847       ', N'Huyện Châu Thành', N'Huyện', N'84        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'848       ', N'Huyện Cầu Ngang', N'Huyện', N'84        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'849       ', N'Huyện Trà Cú', N'Huyện', N'84        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'850       ', N'Huyện Duyên Hải', N'Huyện', N'84        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'851       ', N'Thị Xã Duyên Hải', N'Thị Xã', N'84        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'855       ', N'Thành phố Vĩnh Long', N'Thành phố', N'86        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'857       ', N'Huyện Long Hồ', N'Huyện', N'86        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'858       ', N'Huyện Mang Thít', N'Huyện', N'86        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'859       ', N'Huyện  Vũng Liêm', N'Huyện', N'86        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'860       ', N'Huyện Tam Bình', N'Huyện', N'86        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'861       ', N'Thị Xã Bình Minh', N'Thị Xã', N'86        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'862       ', N'Huyện Trà Ôn', N'Huyện', N'86        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'863       ', N'Huyện Bình Tân', N'Huyện', N'86        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'866       ', N'Thành phố Cao Lãnh', N'Thành phố', N'87        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'867       ', N'Thành phố Sa Đéc', N'Thành phố', N'87        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'868       ', N'Thị Xã Hồng Ngự', N'Thị Xã', N'87        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'869       ', N'Huyện Tân Hồng', N'Huyện', N'87        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'870       ', N'Huyện Hồng Ngự', N'Huyện', N'87        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'871       ', N'Huyện Tam Nông', N'Huyện', N'87        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'872       ', N'Huyện Tháp Mười', N'Huyện', N'87        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'873       ', N'Huyện Cao Lãnh', N'Huyện', N'87        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'874       ', N'Huyện Thanh Bình', N'Huyện', N'87        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'875       ', N'Huyện Lấp Vò', N'Huyện', N'87        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'876       ', N'Huyện Lai Vung', N'Huyện', N'87        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'877       ', N'Huyện Châu Thành', N'Huyện', N'87        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'883       ', N'Thành phố Long Xuyên', N'Thành phố', N'89        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'884       ', N'Thành phố Châu Đốc', N'Thành phố', N'89        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'886       ', N'Huyện An Phú', N'Huyện', N'89        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'887       ', N'Thị Xã Tân Châu', N'Thị Xã', N'89        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'888       ', N'Huyện Phú Tân', N'Huyện', N'89        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'889       ', N'Huyện Châu Phú', N'Huyện', N'89        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'890       ', N'Huyện Tịnh Biên', N'Huyện', N'89        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'891       ', N'Huyện Tri Tôn', N'Huyện', N'89        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'892       ', N'Huyện Châu Thành', N'Huyện', N'89        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'893       ', N'Huyện Chợ Mới', N'Huyện', N'89        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'894       ', N'Huyện Thoại Sơn', N'Huyện', N'89        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'899       ', N'Thành phố Rạch Giá', N'Thành phố', N'91        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'900       ', N'Thị Xã Hà Tiên', N'Thị Xã', N'91        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'902       ', N'Huyện Kiên Lương', N'Huyện', N'91        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'903       ', N'Huyện Hòn Đất', N'Huyện', N'91        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'904       ', N'Huyện Tân Hiệp', N'Huyện', N'91        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'905       ', N'Huyện Châu Thành', N'Huyện', N'91        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'906       ', N'Huyện Giồng Riềng', N'Huyện', N'91        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'907       ', N'Huyện Gò Quao', N'Huyện', N'91        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'908       ', N'Huyện An Biên', N'Huyện', N'91        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'909       ', N'Huyện An Minh', N'Huyện', N'91        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'910       ', N'Huyện Vĩnh Thuận', N'Huyện', N'91        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'911       ', N'Huyện Phú Quốc', N'Huyện', N'91        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'912       ', N'Huyện Kiên Hải', N'Huyện', N'91        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'913       ', N'Huyện U Minh Thượng', N'Huyện', N'91        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'914       ', N'Huyện Giang Thành', N'Huyện', N'91        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'916       ', N'Quận Ninh Kiều', N'Quận', N'92        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'917       ', N'Quận Ô Môn', N'Quận', N'92        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'918       ', N'Quận Bình Thuỷ', N'Quận', N'92        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'919       ', N'Quận Cái Răng', N'Quận', N'92        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'923       ', N'Quận Thốt Nốt', N'Quận', N'92        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'924       ', N'Huyện Vĩnh Thạnh', N'Huyện', N'92        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'925       ', N'Huyện Cờ Đỏ', N'Huyện', N'92        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'926       ', N'Huyện Phong Điền', N'Huyện', N'92        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'927       ', N'Huyện Thới Lai', N'Huyện', N'92        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'930       ', N'Thành phố Vị Thanh', N'Thành phố', N'93        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'931       ', N'Thị Xã Ngã Bảy', N'Thị Xã', N'93        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'932       ', N'Huyện Châu Thành A', N'Huyện', N'93        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'933       ', N'Huyện Châu Thành', N'Huyện', N'93        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'934       ', N'Huyện Phụng Hiệp', N'Huyện', N'93        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'935       ', N'Huyện Vị Thuỷ', N'Huyện', N'93        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'936       ', N'Huyện Long Mỹ', N'Huyện', N'93        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'937       ', N'Thị Xã Long Mỹ', N'Thị Xã', N'93        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'941       ', N'Thành phố Sóc Trăng', N'Thành phố', N'94        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'942       ', N'Huyện Châu Thành', N'Huyện', N'94        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'943       ', N'Huyện Kế Sách', N'Huyện', N'94        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'944       ', N'Huyện Mỹ Tú', N'Huyện', N'94        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'945       ', N'Huyện Cù Lao Dung', N'Huyện', N'94        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'946       ', N'Huyện Long Phú', N'Huyện', N'94        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'947       ', N'Huyện Mỹ Xuyên', N'Huyện', N'94        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'948       ', N'Thị Xã Ngã Năm', N'Thị Xã', N'94        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'949       ', N'Huyện Thạnh Trị', N'Huyện', N'94        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'950       ', N'Thị Xã Vĩnh Châu', N'Thị Xã', N'94        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'951       ', N'Huyện Trần Đề', N'Huyện', N'94        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'954       ', N'Thành phố Bạc Liêu', N'Thành phố', N'95        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'956       ', N'Huyện Hồng Dân', N'Huyện', N'95        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'957       ', N'Huyện Phước Long', N'Huyện', N'95        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'958       ', N'Huyện Vĩnh Lợi', N'Huyện', N'95        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'959       ', N'Thị Xã Giá Rai', N'Thị Xã', N'95        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'960       ', N'Huyện Đông Hải', N'Huyện', N'95        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'961       ', N'Huyện Hoà Bình', N'Huyện', N'95        ')
GO
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'964       ', N'Thành phố Cà Mau', N'Thành phố', N'96        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'966       ', N'Huyện U Minh', N'Huyện', N'96        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'967       ', N'Huyện Thới Bình', N'Huyện', N'96        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'968       ', N'Huyện Trần Văn Thời', N'Huyện', N'96        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'969       ', N'Huyện Cái Nước', N'Huyện', N'96        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'970       ', N'Huyện Đầm Dơi', N'Huyện', N'96        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'971       ', N'Huyện Năm Căn', N'Huyện', N'96        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'972       ', N'Huyện Phú Tân', N'Huyện', N'96        ')
INSERT [dbo].[District] ([DistrictID], [DistrictName], [Type], [CityID]) VALUES (N'973       ', N'Huyện Ngọc Hiển', N'Huyện', N'96        ')
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Text], [Link], [Icon], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (6, N'Trang chủ', N'/Admin/Home', N'fa fa-home', NULL, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [Icon], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (7, N'Tài khoản', N' /Admin/User', N'fa fa-users', NULL, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [Icon], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (8, NULL, NULL, N'fas fa-user-circle fa-fw', NULL, N'_self', 1, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [Icon], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (9, N'Trang cá nhân', N'/Admin/User/Profiled', N'far fa-user-circle', 8, N'_self', 1, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [Icon], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (10, N'Đổi mật khẩu', N'/Admin/User/EditPassword', N'fab fa-expeditedssl', 8, N'_self', 1, 2)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[MenuType] ON 

INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (1, N'Menu admin trái')
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (2, N'Menu admin Trên')
SET IDENTITY_INSERT [dbo].[MenuType] OFF
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_USER', N'Thêm')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'DELETE_USER', N'Xóa')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_USER', N'S?a')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'VIEW_USER', N'Xem danh sách')
SET IDENTITY_INSERT [dbo].[Silde] ON 

INSERT [dbo].[Silde] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (1, N'', 0, N'', N'', CAST(N'1900-01-01 00:00:00.000' AS DateTime), N'', CAST(N'1900-01-01 00:00:00.000' AS DateTime), N'', 1)
INSERT [dbo].[Silde] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (2, N'', 0, N'', N'', CAST(N'1900-01-01 00:00:00.000' AS DateTime), N'', CAST(N'1900-01-01 00:00:00.000' AS DateTime), N'', 0)
SET IDENTITY_INSERT [dbo].[Silde] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [Username], [Password], [Name], [GroupID], [Address], [Email], [Phone], [Birthday], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [CityID], [DistrictID], [WardID], [PassNew]) VALUES (90, N'lamtrann', N'e10adc3949ba59abbe56e057f20f883e', N'Trần Ngọc Sơn Lâm', NULL, N'3533', N'fdgaaaaafd@gmail.com', N'0961582680', CAST(N'1900-01-01 00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2019-07-23 16:52:59.770' AS DateTime), NULL, 1, NULL, NULL, NULL, N'123456')
INSERT [dbo].[User] ([ID], [Username], [Password], [Name], [GroupID], [Address], [Email], [Phone], [Birthday], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [CityID], [DistrictID], [WardID], [PassNew]) VALUES (92, N'admin', N'21232f297a57a5a743894a0e4a801fc3', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2019-07-09 14:40:24.477' AS DateTime), NULL, NULL, NULL, 1, N'01        ', NULL, NULL, NULL)
INSERT [dbo].[User] ([ID], [Username], [Password], [Name], [GroupID], [Address], [Email], [Phone], [Birthday], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [CityID], [DistrictID], [WardID], [PassNew]) VALUES (93, N'lamtrann1', N'c4ca4238a0b923820dcc509a6f75849b', N'dgfkd', NULL, N'Việt Nam', N'lamtran151991@gmail.com', N'0961582581', CAST(N'1900-01-01 00:00:00.000' AS DateTime), CAST(N'2019-07-23 17:13:30.557' AS DateTime), NULL, CAST(N'2019-07-23 17:24:12.690' AS DateTime), NULL, 1, N'01        ', NULL, NULL, NULL)
INSERT [dbo].[User] ([ID], [Username], [Password], [Name], [GroupID], [Address], [Email], [Phone], [Birthday], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [CityID], [DistrictID], [WardID], [PassNew]) VALUES (94, N'lamtrannz', N'e10adc3949ba59abbe56e057f20f883e', N'f', NULL, N'f', N'fdgaaaaaafd@gmail.com', N'0961582585', CAST(N'1900-01-01 00:00:00.000' AS DateTime), CAST(N'2019-07-23 17:41:50.147' AS DateTime), NULL, NULL, NULL, 1, N'01        ', NULL, NULL, NULL)
INSERT [dbo].[User] ([ID], [Username], [Password], [Name], [GroupID], [Address], [Email], [Phone], [Birthday], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [CityID], [DistrictID], [WardID], [PassNew]) VALUES (97, N'lamtrannaaa', N'e10adc3949ba59abbe56e057f20f883e', N'43534', NULL, N'3533', N'fdgajfghaaaafd@gmail.com', N'0961581680', CAST(N'2019-08-09 00:00:00.000' AS DateTime), CAST(N'2019-08-13 11:35:44.153' AS DateTime), NULL, CAST(N'2019-08-13 11:42:38.820' AS DateTime), NULL, 1, N'01        ', N'001       ', NULL, N'123456')
INSERT [dbo].[User] ([ID], [Username], [Password], [Name], [GroupID], [Address], [Email], [Phone], [Birthday], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [CityID], [DistrictID], [WardID], [PassNew]) VALUES (99, N'lamtrannzyujytj', N'c4ca4238a0b923820dcc509a6f75849b', N'ghjfghj', NULL, N'ghfjghjghfj', N'lamtran15199@gmail.com', N'0961582585', CAST(N'2019-08-09 00:00:00.000' AS DateTime), CAST(N'2019-08-15 09:11:33.957' AS DateTime), NULL, NULL, NULL, 1, N'26        ', N'248       ', NULL, NULL)
INSERT [dbo].[User] ([ID], [Username], [Password], [Name], [GroupID], [Address], [Email], [Phone], [Birthday], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [CityID], [DistrictID], [WardID], [PassNew]) VALUES (100, N'lamtrannzghfdh', N'e10adc3949ba59abbe56e057f20f883e', N'gfdg', NULL, N'fdgfdgfd@gmail.com', N'sdjhfjsdfgjsfdfghj@gmail.com', N'0961582585', CAST(N'2019-08-08 00:00:00.000' AS DateTime), CAST(N'2019-08-15 11:38:03.703' AS DateTime), NULL, NULL, NULL, 1, N'01        ', N'019       ', N'2         ', N'123456')
SET IDENTITY_INSERT [dbo].[User] OFF
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'ADMIN', N'Admin')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MEMBER', N'Thành viên')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MOD', N'Mod')
INSERT [dbo].[Ward] ([WardID], [WardName], [Type], [DistrictID]) VALUES (N'1         ', N'Tây Mỗ', NULL, N'019       ')
INSERT [dbo].[Ward] ([WardID], [WardName], [Type], [DistrictID]) VALUES (N'2         ', N'Phú Đô', NULL, N'019       ')
INSERT [dbo].[Ward] ([WardID], [WardName], [Type], [DistrictID]) VALUES (N'3         ', N'Xuân Phương', NULL, N'019       ')
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Menu] FOREIGN KEY([DisplayOrder])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_Menu]
GO
