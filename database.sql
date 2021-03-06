USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 8/4/2017 1:49:16 PM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[ClothingType]    Script Date: 8/4/2017 1:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClothingType](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ClothingType] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Color]    Script Date: 8/4/2017 1:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Item]    Script Date: 8/4/2017 1:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](500) NOT NULL,
	[TypeID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[OccassionID] [int] NOT NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occassion]    Script Date: 8/4/2017 1:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occassion](
	[OccassionID] [int] IDENTITY(1,1) NOT NULL,
	[OccassionName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Occassion] PRIMARY KEY CLUSTERED 
(
	[OccassionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Season]    Script Date: 8/4/2017 1:49:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[SeasonName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ClothingType] ON 

INSERT [dbo].[ClothingType] ([TypeID], [TypeName]) VALUES (1, N'Shoes')
INSERT [dbo].[ClothingType] ([TypeID], [TypeName]) VALUES (2, N'Accessories')
INSERT [dbo].[ClothingType] ([TypeID], [TypeName]) VALUES (3, N'Bottom')
INSERT [dbo].[ClothingType] ([TypeID], [TypeName]) VALUES (4, N'Top')
SET IDENTITY_INSERT [dbo].[ClothingType] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (1, N'Red')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (2, N'Blue')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (3, N'Yellow')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (4, N'Black')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (5, N'Gray')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (6, N'Pink')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (7, N'Brown')
INSERT [dbo].[Color] ([ColorID], [ColorName]) VALUES (8, N'White')
SET IDENTITY_INSERT [dbo].[Color] OFF
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ItemID], [Name], [Photo], [TypeID], [ColorID], [SeasonID], [OccassionID]) VALUES (1, N'Hat', N'/Content/Images/hat.jpg', 2, 4, 2, 3)
INSERT [dbo].[Item] ([ItemID], [Name], [Photo], [TypeID], [ColorID], [SeasonID], [OccassionID]) VALUES (2, N'Watch', N'/Content/Images/download(1).jpg', 2, 4, 2, 2)
INSERT [dbo].[Item] ([ItemID], [Name], [Photo], [TypeID], [ColorID], [SeasonID], [OccassionID]) VALUES (3, N'Belt', N'/Content/Images/Belt.jpg', 2, 4, 2, 1)
INSERT [dbo].[Item] ([ItemID], [Name], [Photo], [TypeID], [ColorID], [SeasonID], [OccassionID]) VALUES (4, N'Jeans', N'/Content/Images/jeans.jpg', 3, 2, 4, 3)
INSERT [dbo].[Item] ([ItemID], [Name], [Photo], [TypeID], [ColorID], [SeasonID], [OccassionID]) VALUES (5, N'Dress Pants', N'/Content/Images/dresspants.jpg', 3, 5, 3, 4)
INSERT [dbo].[Item] ([ItemID], [Name], [Photo], [TypeID], [ColorID], [SeasonID], [OccassionID]) VALUES (6, N'Shorts', N'/Content/Images/shorts.jpg', 3, 1, 2, 3)
INSERT [dbo].[Item] ([ItemID], [Name], [Photo], [TypeID], [ColorID], [SeasonID], [OccassionID]) VALUES (7, N'Dress Shirt', N'/Content/Images/dressshirt.jpg', 4, 6, 1, 1)
INSERT [dbo].[Item] ([ItemID], [Name], [Photo], [TypeID], [ColorID], [SeasonID], [OccassionID]) VALUES (8, N'T-Shirt', N'/Content/Images/tshirt.jpg', 4, 3, 2, 3)
INSERT [dbo].[Item] ([ItemID], [Name], [Photo], [TypeID], [ColorID], [SeasonID], [OccassionID]) VALUES (9, N'Sweater', N'/Content/Images/sweater.jpg', 4, 2, 4, 4)
INSERT [dbo].[Item] ([ItemID], [Name], [Photo], [TypeID], [ColorID], [SeasonID], [OccassionID]) VALUES (10, N'Dress Shoes', N'/Content/Images/dressshoes.jpg', 1, 4, 1, 1)
INSERT [dbo].[Item] ([ItemID], [Name], [Photo], [TypeID], [ColorID], [SeasonID], [OccassionID]) VALUES (11, N'Sneakers', N'/Content/Images/sneakers.jpg', 1, 5, 2, 3)
INSERT [dbo].[Item] ([ItemID], [Name], [Photo], [TypeID], [ColorID], [SeasonID], [OccassionID]) VALUES (12, N'Casual Shoes', N'/Content/Images/casual.jpg', 1, 1, 2, 3)
SET IDENTITY_INSERT [dbo].[Item] OFF
SET IDENTITY_INSERT [dbo].[Occassion] ON 

INSERT [dbo].[Occassion] ([OccassionID], [OccassionName]) VALUES (1, N'Formal')
INSERT [dbo].[Occassion] ([OccassionID], [OccassionName]) VALUES (2, N'Business')
INSERT [dbo].[Occassion] ([OccassionID], [OccassionName]) VALUES (3, N'Casual')
INSERT [dbo].[Occassion] ([OccassionID], [OccassionName]) VALUES (4, N'Business Casual')
SET IDENTITY_INSERT [dbo].[Occassion] OFF
SET IDENTITY_INSERT [dbo].[Season] ON 

INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (1, N'Spring')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (2, N'Summer')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (3, N'Fall')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (4, N'Winter')
SET IDENTITY_INSERT [dbo].[Season] OFF
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_ClothingType] FOREIGN KEY([TypeID])
REFERENCES [dbo].[ClothingType] ([TypeID])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_ClothingType]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Color]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Occassion] FOREIGN KEY([OccassionID])
REFERENCES [dbo].[Occassion] ([OccassionID])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Occassion]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Season]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
