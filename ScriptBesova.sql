USE [master]
GO
/****** Object:  Database [ShopSt]    Script Date: 04.05.2024 16:43:46 ******/
CREATE DATABASE [ShopSt]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DemSport', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DemSport.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DemSport_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DemSport_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ShopSt] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopSt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopSt] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopSt] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopSt] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopSt] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopSt] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopSt] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopSt] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopSt] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopSt] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopSt] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopSt] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopSt] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopSt] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopSt] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopSt] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopSt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopSt] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopSt] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopSt] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopSt] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopSt] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopSt] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopSt] SET RECOVERY FULL 
GO
ALTER DATABASE [ShopSt] SET  MULTI_USER 
GO
ALTER DATABASE [ShopSt] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopSt] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopSt] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopSt] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopSt] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopSt] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShopSt', N'ON'
GO
ALTER DATABASE [ShopSt] SET QUERY_STORE = OFF
GO
USE [ShopSt]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 04.05.2024 16:43:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductArticleNumber] [varchar](50) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProductCost] [int] NOT NULL,
	[ProductDiscountAmount] [int] NOT NULL,
	[ProductManufacturer] [nvarchar](255) NOT NULL,
	[ProductProvider] [nvarchar](255) NOT NULL,
	[ProductCategory] [nvarchar](255) NOT NULL,
	[ProductEffectiveDiscount] [int] NOT NULL,
	[ProductDescription] [nvarchar](255) NOT NULL,
	[ProductPhoto] [nvarchar](255) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Prod]    Script Date: 04.05.2024 16:43:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Prod]
AS
SELECT        ProductName AS [Название продукта], ProductCategory AS [Категория ], ProductDescription1 AS [Описание продукта], ProductQuantityInStock AS Количество, Quantity AS [Ед. измерения ], 
                         ProductManufacturer AS [ Производитель], ProductProvider AS Поставщик, ProductEffectiveDiscount AS [Действующая скидка], ProductDiscountAmount AS [Сумма скидки], ProductCost AS Сумма, 
                         ProductArticleNumber AS артикул
FROM            dbo.Products
GO
/****** Object:  Table [dbo].[Users]    Script Date: 04.05.2024 16:43:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
 CONSTRAINT [PK_Usr] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 04.05.2024 16:43:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderPID] [int] NOT NULL,
	[ProductArticleNumbe] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderPID] ASC,
	[ProductArticleNumbe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickUp_Point]    Script Date: 04.05.2024 16:43:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickUp_Point](
	[ID_pickUpPoint] [int] IDENTITY(1,1) NOT NULL,
	[Index] [int] NOT NULL,
	[City] [nvarchar](255) NOT NULL,
	[Street] [nvarchar](255) NOT NULL,
	[HouseNumber] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Pick_Up_Point] PRIMARY KEY CLUSTERED 
(
	[ID_pickUpPoint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 04.05.2024 16:43:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] NOT NULL,
	[UserID] [int] NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[Code] [int] NOT NULL,
	[OrderStatus] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ViewOrder]    Script Date: 04.05.2024 16:43:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewOrder]
AS
SELECT        String_agg(dbo.Products.ProductName, ' , ') AS [Содержимое заказа], dbo.[Order].OrderDate AS [Дата заказа], dbo.[Order].OrderDeliveryDate AS [Дата доставки], SUM(dbo.Products.ProductCost) AS [Сумма заказа], 
                         AVG(dbo.Products.ProductDiscountAmount) AS Скидка, dbo.[Order].OrderStatus AS [Статус заказа], dbo.[Order].OrderID
FROM            dbo.[Order] INNER JOIN
                         dbo.PickUp_Point ON dbo.[Order].OrderPickupPoint = dbo.PickUp_Point.ItemID INNER JOIN
                         dbo.OrderProduct ON dbo.[Order].OrderID = dbo.OrderProduct.OrderPID INNER JOIN
                         dbo.Products ON dbo.OrderProduct.ProductArticleNumbe = dbo.Products.ProductArticleNumber INNER JOIN
                         dbo.Users ON dbo.[Order].UserID = dbo.Users.UserID
GROUP BY dbo.[Order].OrderDate, dbo.[Order].OrderDeliveryDate, dbo.[Order].OrderStatus, dbo.[Order].OrderID
GO
/****** Object:  Table [dbo].[Role]    Script Date: 04.05.2024 16:43:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__Role__8AFACE3A44A52266] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Order] ([OrderID], [UserID], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderStatus]) VALUES (1, 7, CAST(N'2022-05-15T00:00:00.000' AS DateTime), CAST(N'2022-05-21T00:00:00.000' AS DateTime), 18, 401, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [UserID], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderStatus]) VALUES (2, 12, CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 20, 402, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [UserID], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderStatus]) VALUES (3, 9, CAST(N'2022-05-17T00:00:00.000' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), 20, 403, N'Завершен')
INSERT [dbo].[Order] ([OrderID], [UserID], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderStatus]) VALUES (4, 14, CAST(N'2022-05-18T00:00:00.000' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), 22, 404, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [UserID], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderStatus]) VALUES (5, 13, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 22, 405, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [UserID], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderStatus]) VALUES (6, 10, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 16, 406, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [UserID], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderStatus]) VALUES (7, 11, CAST(N'2022-05-21T00:00:00.000' AS DateTime), CAST(N'2022-05-27T00:00:00.000' AS DateTime), 16, 407, N'Завершен')
INSERT [dbo].[Order] ([OrderID], [UserID], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderStatus]) VALUES (8, 7, CAST(N'2022-05-22T00:00:00.000' AS DateTime), CAST(N'2022-05-28T00:00:00.000' AS DateTime), 18, 408, N'Завершен')
INSERT [dbo].[Order] ([OrderID], [UserID], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderStatus]) VALUES (9, 8, CAST(N'2022-05-23T00:00:00.000' AS DateTime), CAST(N'2022-05-29T00:00:00.000' AS DateTime), 24, 409, N'Новый ')
INSERT [dbo].[Order] ([OrderID], [UserID], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderStatus]) VALUES (10, 12, CAST(N'2022-05-24T00:00:00.000' AS DateTime), CAST(N'2022-05-30T00:00:00.000' AS DateTime), 24, 410, N'Завершен')
GO
SET IDENTITY_INSERT [dbo].[PickUp_Point] ON 

INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (1, 614164, N' г.Дубна', N'  ул. Степная', N'30        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (2, 394242, N' г. Дубна', N' ул. Коммунистическая', N'43        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (3, 660540, N' г. Дубна', N' ул. Солнечная', N'25        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (4, 125837, N' г. Дубна', N' ул. Шоссейная', N'40        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (5, 125703, N' г. Дубна', N' ул. Партизанская', N'49        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (6, 625283, N' г. Дубна', N' ул. Победы', N'46        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (7, 614611, N' г. Дубна', N' ул. Молодежная', N'50        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (8, 454311, N' г.Дубна', N' ул. Новая', N'19        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (9, 660007, N' г.Дубна', N' ул. Октябрьская', N'19        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (10, 603036, N' г. Дубна', N' ул. Садовая', N'4         ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (11, 450983, N' г.Дубна', N' ул. Комсомольская', N'26        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (12, 394782, N' г. Дубна', N' ул. Чехова', N'3         ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (13, 603002, N' г. Дубна', N' ул. Дзержинского', N'28        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (14, 450558, N' г. Дубна', N' ул. Набережная', N'30        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (15, 394060, N' г.Дубна', N' ул. Фрунзе', N'43        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (16, 410661, N' г. Дубна', N' ул. Школьная', N'50        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (17, 625590, N' г. Дубна', N' ул. Коммунистическая', N'20        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (18, 625683, N' г. Дубна', N' ул. 8 Марта', N'1         ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (19, 400562, N' г. Дубна', N' ул. Зеленая', N'32        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (20, 614510, N' г. Дубна', N' ул. Маяковского', N'47        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (21, 410542, N' г. Дубна', N' ул. Светлая', N'46        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (22, 620839, N' г. Дубна', N' ул. Цветочная', N'8         ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (23, 443890, N' г. Дубна', N' ул. Коммунистическая', N'1         ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (24, 603379, N' г. Дубна', N' ул. Спортивная', N'46        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (25, 603721, N' г. Дубна', N' ул. Гоголя', N'41        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (26, 410172, N' г. Дубна', N' ул. Северная', N'13        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (27, 420151, N' г. Дубна', N' ул. Вишневая', N'32        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (28, 125061, N' г. Дубна', N' ул. Подгорная', N'8         ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (29, 630370, N' г. Дубна', N' ул. Шоссейная', N'24        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (30, 614753, N' г. Дубна', N' ул. Полевая', N'35        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (31, 426030, N' г. Дубна', N' ул. Маяковского', N'44        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (32, 450375, N' г. Дубна ', N'ул. Клубная', N'44        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (33, 625560, N' г. Дубна', N' ул. Некрасова', N'12        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (34, 630201, N' г. Дубна', N' ул. Комсомольская', N'17        ')
INSERT [dbo].[PickUp_Point] ([ID_pickUpPoint], [Index], [City], [Street], [HouseNumber]) VALUES (35, 190949, N' г. Дубна', N' ул. Мичурина', N'26        ')
SET IDENTITY_INSERT [dbo].[PickUp_Point] OFF
GO
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'B538G6', N'Спортивный костюм', 17, 839, 3, N'playToday', N'Спортмастер', N'Одежда', 5, N'Спортивный костюм playToday (футболка + шорты)', N'B538G6.jpg')
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'C324S5', N'Шлем', 16, 4000, 5, N'Salomon', N'Декатлон', N'Спортивный инвентарь', 10, N'Шлем г.л./сноуб. Salomon Grom р.:KS черный (L40836800)', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'D038G6', N'Лыжный комплект', 23, 3000, 4, N'Nordway', N'Декатлон', N'Спортивный инвентарь', 30, N'Лыжный комплект беговые NORDWAY XC Classic, 45-45-45мм, 160см', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'D648N7', N'Набор для хоккея', 7, 350, 4, N'Совтехстром', N'Декатлон', N'Спортивный инвентарь', 10, N'Набор для хоккея Совтехстром', N'D648N7.jpg')
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'D830R5', N'Тренажер прыжков', 8, 1120, 4, N'Moby Kids', N'Спортмастер', N'Спортивный инвентарь', 15, N'Тренажер для прыжков Moby Kids Moby-Jumper со счетчиком', N'D830R5.jpg')
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'D893W4', N'Мяч', 5, 900, 2, N'Demix', N'Спортмастер', N'Спортивный инвентарь', 5, N'Мяч футбольный DEMIX 1STLS1JWWW, универсальный, 4-й размер, белый/зеленый', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'D927K3', N'Перчатки ', 3, 660, 4, N'Starfit', N'Декатлон', N'Спортивный инвентарь', 15, N'Перчатки Starfit SU-125 атлетические S черный', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'E324U7', N'Велотренажер', 5, 6480, 5, N'DFC', N'Спортмастер', N'Спортивный инвентарь', 25, N'Велотренажер двойной DFC B804 dual bike', N'E324U7.jpg')
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'F047J7', N'Коврик', 11, 720, 5, N'Bradex', N'Спортмастер', N'Спортивный инвентарь', 15, N'Коврик Bradex для мягкой йоги дл.:1730мм ш.:610мм т.:3мм серый', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'F687G5', N'Защита голени', 6, 1900, 4, N'Green Hill', N'Спортмастер', N'Спортивный инвентарь', 15, N'Защита голени GREEN HILL Panther, L, синий/черный', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'F735B6', N'Игровой набор', 9, 320, 2, N'Совтехстром', N'Декатлон', N'Спортивный инвентарь', 15, N'Игровой набор Совтехстром Кегли и шары', N'F735B6.jpg')
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'F746E6', N'Шведская стенка', 5, 9900, 3, N'ROMANA Next', N'Декатлон', N'Спортивный инвентарь', 10, N'Шведская стенка ROMANA Next, pastel', N'F746E6.jpg')
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'F937G4', N'Игровой набор', 12, 480, 4, N'Abtoys', N'Спортмастер', N'Спортивный инвентарь', 10, N'Набор Abtoys Бадминтон и теннис ', N'F937G4.jpg')
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'G403T5', N'Тюбинг', 13, 1450, 4, N'Nordway', N'Спортмастер', N'Спортивный инвентарь', 15, N'Тюбинг Nordway, 73 см', N'G403T5.jpg')
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'G480F5', N'Ролики', 7, 1600, 4, N'Ridex', N'Спортмастер', N'Спортивный инвентарь', 15, N'Коньки роликовые Ridex Cricket жен. ABEC 3 кол.:72мм р.:39-42 синий', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'G522B5', N'Ласты', 6, 1980, 3, N'Colton', N'Декатлон', N'Спортивный инвентарь', 15, N'Ласты Colton CF-02 для плавания р.:33-34 серый/голубой', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'G598Y6', N'Спортивный мат', 16, 2390, 2, N'Perfetto Sport', N'Декатлон', N'Спортивный инвентарь', 15, N'Спортивный мат 100x100x10 см Perfetto Sport № 3 бежевый', N'G598Y6.jpg')
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'G873H4', N'Велосипед', 6, 14930, 4, N'SKIF', N'Спортмастер', N'Спортивный инвентарь', 5, N'Велосипед SKIF 29 Disc (2021), горный (взрослый), рама: 17", колеса: 29", темно-серый', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'J4DF5E', N'Насос', 12, 300, 4, N'Molten', N'Спортмастер', N'Спортивный инвентарь', 5, N'Насос Molten HP-18-B для мячей мультиколор', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'J532D4', N'Перчатки для карате', 5, 1050, 3, N'Green Hill', N'Спортмастер', N'Спортивный инвентарь', 15, N'Перчатки для каратэ Green Hill KMС-6083 L красный', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'K432G6', N'Шапочка для плавания', 17, 440, 5, N'Atemi', N'Декатлон', N'Спортивный инвентарь', 25, N'Шапочка для плавания Atemi PU 140 ткань с покрытием желтый', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'K937A5', N'Гиря', 10, 890, 4, N'Starfit', N'Декатлон', N'Спортивный инвентарь', 5, N'Гиря Starfit ГМБ4 мягкое 4кг синий/оранжевый', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'N483G5', N'Клюшка', 4, 1299, 3, N'Nordway', N'Декатлон', N'Спортивный инвентарь', 10, N'Клюшка Nordway NDW300 (2019/2020) SR лев. 19 150см', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'N836R5', N'Коньки', 16, 2000, 3, N'Atemi', N'Декатлон', N'Спортивный инвентарь', 10, N'Коньки ATEMI AKSK01DXS, раздвижные, прогулочные, унисекс, 27-30, черный/зеленый', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'N892G6', N'Очки для плавания', 14, 500, 5, N'Atemi', N'Декатлон', N'Спортивный инвентарь', 5, N'Очки для плавания Atemi N8401 синий', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'S374B5', N'Ролик для йоги', 12, 700, 3, N'Bradex', N'Спортмастер', N'Спортивный инвентарь', 10, N'Ролик для йоги Bradex Туба d=14см ш.:33см оранжевый', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'V312R4', N'Мяч', 5, 4150, 2, N'Mikasa', N'Декатлон', N'Спортивный инвентарь', 20, N'Мяч волейбольный MIKASA VT370W, для зала, 5-й размер, желтый/синий', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'V392H7', N'Степ-платформа', 15, 4790, 3, N'Starfit', N'Спортмастер', N'Спортивный инвентарь', 10, N'Степ-платформа Starfit SP-204 серый/черный', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'V423D4', N'Штанга', 8, 5600, 3, N'Starfit', N'Декатлон', N'Спортивный инвентарь', 10, N'Штанга Starfit BB-401 30кг пласт. черный ', NULL)
INSERT [dbo].[Products] ([ProductArticleNumber], [ProductName], [Quantity], [ProductCost], [ProductDiscountAmount], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductEffectiveDiscount], [ProductDescription], [ProductPhoto]) VALUES (N'А112Т4', N'Боксерская груша', 6, 778, 5, N'X-Match', N'Спортмастер', N'Спортивный инвентарь', 30, N'Боксерская груша X-Match черная', N'А112Т4.jpg')
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Пахомова', N'Аиша', N'Анатольевна', N'm4ic8j5qgstw@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[Users] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Жуков', N'Роман', N'Богданович', N'd43zfg9tlsyv@gmail.com', N'uzWC67', 1)
INSERT [dbo].[Users] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Киселева', N'Анастасия', N'Максимовна', N'8ohgisf6k45w@outlook.com', N'8ntwUp', 1)
INSERT [dbo].[Users] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Григорьева', N'Арина', N'Арсентьевна', N'hi1brwj46czx@mail.com', N'YOyhfR', 2)
INSERT [dbo].[Users] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Иванов', N'Лев', N'Михайлович', N'fvkbcamhlj52@gmail.com', N'RSbvHv', 2)
INSERT [dbo].[Users] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Григорьев', N'Лев', N'Давидович', N'9qxnce8jwruv@gmail.com', N'rwVDh9', 2)
INSERT [dbo].[Users] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Поляков', N'Степан', N'Егорович', N'dotiex942p1r@gmail.com', N'LdNyos', 3)
INSERT [dbo].[Users] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Леонова', N'Алиса', N'Кирилловна', N'n0bmi2h1xral@tutanota.com', N'gynQMT', 3)
INSERT [dbo].[Users] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Яковлев', N'Платон', N'Константинович', N'sfm3t278kdvz@yahoo.com', N'AtnDjr', 3)
INSERT [dbo].[Users] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Ковалева', N'Ева', N'Яковлевна', N'ilb8rdut0v7e@mail.com', N'JlFRCZ', 3)
INSERT [dbo].[Users] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (11, N'Поляков', N'Степан', N'Егорович', N'qwerty', N'qwerty', 3)
INSERT [dbo].[Users] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (12, N'Леонова', N'Алиса', N'Кирилловна', N'qwerty1', N'qwerty1', 3)
INSERT [dbo].[Users] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (13, N'Яковлев ', N'Платон ', N'Константинович', N'qwerty2', N'qwerty2', 3)
INSERT [dbo].[Users] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (14, N'Ковалева', N'Ева', N'Яковлевна', N'qwerty3', N'qwerty3', 3)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Users]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_PickUp_Point] FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[PickUp_Point] ([ID_pickUpPoint])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_OrderProduct_PickUp_Point]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_Order_Products] FOREIGN KEY([ProductArticleNumbe])
REFERENCES [dbo].[Products] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_Order_Products]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderPID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Usr_Role] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Usr_Role]
GO
/****** Object:  StoredProcedure [dbo].[Aut]    Script Date: 04.05.2024 16:43:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Aut]
@Login varchar(50),
@Password varchar(50)

AS
BEGIN
SELECT * 
FROM Users 
WHERE UserLogin =@Login and UserPassword = @Password 
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteOrder]    Script Date: 04.05.2024 16:43:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteOrder]

AS
BEGIN
select * from [dbo].[Products]
END
GO
/****** Object:  StoredProcedure [dbo].[NewBask]    Script Date: 04.05.2024 16:43:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[NewBask] 
@ProdArticle int,
@id_user int
AS
BEGIN
INSERT INTO [dbo].[basket]([ProdArticle],[id_user])
VALUES (@ProdArticle,@id_user)
END
GO
/****** Object:  StoredProcedure [dbo].[UpdetOrder]    Script Date: 04.05.2024 16:43:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdetOrder]

AS
BEGIN
select * from [dbo].[Products]
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Products"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 302
               Right = 466
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3570
         Alias = 2400
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Prod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Prod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Order"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PickUp_Point"
            Begin Extent = 
               Top = 6
               Left = 261
               Bottom = 136
               Right = 452
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "OrderProduct"
            Begin Extent = 
               Top = 6
               Left = 490
               Bottom = 119
               Right = 695
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Products"
            Begin Extent = 
               Top = 6
               Left = 733
               Bottom = 136
               Right = 956
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Users"
            Begin Extent = 
               Top = 6
               Left = 994
               Bottom = 136
               Right = 1168
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewOrder'
GO
USE [master]
GO
ALTER DATABASE [ShopSt] SET  READ_WRITE 
GO
