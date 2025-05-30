USE [Variant2]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 30.05.2025 20:22:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[MaterialID] [int] IDENTITY(1,1) NOT NULL,
	[MaterialName] [nvarchar](150) NOT NULL,
	[MaterialTypeID] [int] NOT NULL,
	[UnitPrice] [decimal](10, 2) NOT NULL,
	[StockQuanity] [decimal](10, 2) NOT NULL,
	[MinQuantity] [decimal](10, 2) NOT NULL,
	[PackageQuantity] [decimal](10, 2) NOT NULL,
	[UnitID] [int] NOT NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 30.05.2025 20:22:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[MaterialTypeID] [int] IDENTITY(1,1) NOT NULL,
	[MaterialName] [nvarchar](50) NOT NULL,
	[PercentLoss] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[MaterialTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 30.05.2025 20:22:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeID] [int] NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[Article] [int] NOT NULL,
	[MinPrice] [decimal](10, 2) NOT NULL,
	[Width] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterials]    Script Date: 30.05.2025 20:22:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterials](
	[ProductMaterialsID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[MaterialID] [int] NOT NULL,
	[NeedQuantity] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_ProductMaterials] PRIMARY KEY CLUSTERED 
(
	[ProductMaterialsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 30.05.2025 20:22:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ProductTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[CoefficientType] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ProductTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 30.05.2025 20:22:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[UnitID] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Materials] ON 

INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (1, N'Бумага-основа с покрытием для флизелиновых обоев', 1, CAST(1700.00 AS Decimal(10, 2)), CAST(2500.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (2, N'Бумага-основа для флизелиновых обоев', 1, CAST(1500.00 AS Decimal(10, 2)), CAST(3000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (3, N'Бумага обойная для вспененных виниловых обоев', 1, CAST(1200.00 AS Decimal(10, 2)), CAST(1500.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (4, N'Концентрат водоразбавляемой печатной краски', 2, CAST(1500.00 AS Decimal(10, 2)), CAST(550.00 AS Decimal(10, 2)), CAST(500.00 AS Decimal(10, 2)), CAST(200.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (5, N'Перламутровый пигмент', 2, CAST(3100.00 AS Decimal(10, 2)), CAST(200.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (6, N'Сухой клей на основе ПВС', 3, CAST(360.00 AS Decimal(10, 2)), CAST(700.00 AS Decimal(10, 2)), CAST(500.00 AS Decimal(10, 2)), CAST(50.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (7, N'Флизелин', 1, CAST(1600.00 AS Decimal(10, 2)), CAST(2000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)), CAST(140.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (8, N'Стирол-акриловая дисперсия для производства обоев', 4, CAST(14.90 AS Decimal(10, 2)), CAST(2000.00 AS Decimal(10, 2)), CAST(880.00 AS Decimal(10, 2)), CAST(220.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (9, N'Стирол-акриловая дисперсия для гидрофобных покрытий', 4, CAST(14.90 AS Decimal(10, 2)), CAST(1200.00 AS Decimal(10, 2)), CAST(880.00 AS Decimal(10, 2)), CAST(220.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (10, N'Акрилат-винилацетатная дисперсия для производства бумаги', 4, CAST(15.50 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)), CAST(660.00 AS Decimal(10, 2)), CAST(220.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (11, N'Цветная пластизоль', 2, CAST(650.00 AS Decimal(10, 2)), CAST(200.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (12, N'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', 3, CAST(170.00 AS Decimal(10, 2)), CAST(800.00 AS Decimal(10, 2)), CAST(660.00 AS Decimal(10, 2)), CAST(220.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (13, N'Водорастворимая краска водная', 2, CAST(500.00 AS Decimal(10, 2)), CAST(400.00 AS Decimal(10, 2)), CAST(300.00 AS Decimal(10, 2)), CAST(25.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (14, N'Диспергатор минеральных пигментов и наполнителей', 4, CAST(16.00 AS Decimal(10, 2)), CAST(400.00 AS Decimal(10, 2)), CAST(360.00 AS Decimal(10, 2)), CAST(120.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (15, N'Ассоциативный акриловый загуститель', 4, CAST(16.50 AS Decimal(10, 2)), CAST(400.00 AS Decimal(10, 2)), CAST(360.00 AS Decimal(10, 2)), CAST(120.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (16, N'Водорастворимая краска спецводная ', 2, CAST(700.00 AS Decimal(10, 2)), CAST(350.00 AS Decimal(10, 2)), CAST(300.00 AS Decimal(10, 2)), CAST(25.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (17, N'Металлический пигмент', 2, CAST(4100.00 AS Decimal(10, 2)), CAST(250.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), CAST(15.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (18, N'Акриловая дисперсия', 4, CAST(14.90 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)), CAST(880.00 AS Decimal(10, 2)), CAST(220.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (19, N'Бумага-основа для обоев марки АФ', 1, CAST(1200.00 AS Decimal(10, 2)), CAST(2000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Materials] ([MaterialID], [MaterialName], [MaterialTypeID], [UnitPrice], [StockQuanity], [MinQuantity], [PackageQuantity], [UnitID]) VALUES (20, N'Бумага с подложкой устойчивая к атмосферным воздействиям', 1, CAST(3500.00 AS Decimal(10, 2)), CAST(2000.00 AS Decimal(10, 2)), CAST(800.00 AS Decimal(10, 2)), CAST(50.00 AS Decimal(10, 2)), 1)
SET IDENTITY_INSERT [dbo].[Materials] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialType] ON 

INSERT [dbo].[MaterialType] ([MaterialTypeID], [MaterialName], [PercentLoss]) VALUES (1, N'Бумага', CAST(0.70 AS Decimal(5, 2)))
INSERT [dbo].[MaterialType] ([MaterialTypeID], [MaterialName], [PercentLoss]) VALUES (2, N'Краска', CAST(0.50 AS Decimal(5, 2)))
INSERT [dbo].[MaterialType] ([MaterialTypeID], [MaterialName], [PercentLoss]) VALUES (3, N'Клей', CAST(0.15 AS Decimal(5, 2)))
INSERT [dbo].[MaterialType] ([MaterialTypeID], [MaterialName], [PercentLoss]) VALUES (4, N'Дисперсия', CAST(0.20 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[MaterialType] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (1, 1, N'Обои из природного материала Традиционный принт светло-коричневые', 1549922, CAST(16950.00 AS Decimal(10, 2)), CAST(0.91 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (2, 2, N'Фотообои флизелиновые Горы 500x270 см', 2018556, CAST(15880.00 AS Decimal(10, 2)), CAST(0.50 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (3, 3, N'Обои под покраску флизелиновые Рельеф', 3028272, CAST(11080.00 AS Decimal(10, 2)), CAST(0.75 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (4, 4, N'Стеклообои Рогожка белые', 4029272, CAST(5898.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (5, 1, N'Обои флизелиновые Эвелин светло-серые', 1028248, CAST(15200.00 AS Decimal(10, 2)), CAST(1.06 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (6, 2, N'Фотообои флизелиновые 3D Лес и горы 300x280 см', 2118827, CAST(12500.96 AS Decimal(10, 2)), CAST(0.30 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (7, 3, N'Обои под покраску флизелиновые цвет белый', 3130981, CAST(4320.56 AS Decimal(10, 2)), CAST(1.06 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (8, 4, N'Стеклохолст', 4029784, CAST(2998.99 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (9, 1, N'Флизелиновые обои Принт Вензель серые', 1658953, CAST(16200.96 AS Decimal(10, 2)), CAST(0.68 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (10, 2, N'Фотообои флизелиновые Узор 300x270 см', 2026662, CAST(8780.69 AS Decimal(10, 2)), CAST(0.30 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (11, 3, N'Обои под покраску флизелиновые Кирпичная стена', 3159043, CAST(15750.00 AS Decimal(10, 2)), CAST(1.06 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (12, 4, N'Стеклообои Средняя елка белые', 4588376, CAST(5500.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (13, 1, N'Обои бумажные Полосы цвет бежевый', 1758375, CAST(13500.96 AS Decimal(10, 2)), CAST(0.68 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (14, 2, N'Фотообои Тропики 290x260 см', 2759324, CAST(6980.00 AS Decimal(10, 2)), CAST(0.29 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (15, 3, N'Обои под покраску Рисунок Штукатурка белые', 3118827, CAST(5890.00 AS Decimal(10, 2)), CAST(1.06 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (16, 4, N'Стеклообои Геометрические фигуры белые ', 4559898, CAST(5369.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (17, 1, N'Обои флизелиновые Лилия бежевые', 1259474, CAST(9750.79 AS Decimal(10, 2)), CAST(1.06 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (18, 2, N'Фотообои флизелиновые 3D Пейзаж 300x280 см', 2115947, CAST(16850.00 AS Decimal(10, 2)), CAST(0.30 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (19, 3, N'Обои под покраску флизелиновые однотонные цвет белый ', 3033136, CAST(3390.00 AS Decimal(10, 2)), CAST(1.06 AS Decimal(10, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductTypeID], [ProductName], [Article], [MinPrice], [Width]) VALUES (20, 4, N'Стеклохолст малярный Паутинка', 4028048, CAST(1750.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductMaterials] ON 

INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (1, 5, 10, CAST(1.95 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (2, 12, 10, CAST(0.21 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (3, 14, 18, CAST(1.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (4, 18, 18, CAST(1.00 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (5, 10, 18, CAST(1.00 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (6, 1, 15, CAST(0.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (7, 16, 15, CAST(0.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (8, 11, 3, CAST(2.55 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (9, 16, 3, CAST(3.60 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (10, 12, 3, CAST(2.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (11, 1, 20, CAST(2.90 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (12, 11, 20, CAST(2.55 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (13, 6, 20, CAST(1.80 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (14, 18, 20, CAST(2.20 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (15, 2, 20, CAST(3.40 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (16, 13, 19, CAST(3.60 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (17, 15, 19, CAST(3.70 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (18, 14, 19, CAST(1.60 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (19, 10, 19, CAST(3.56 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (20, 5, 2, CAST(4.60 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (21, 3, 1, CAST(2.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (22, 9, 1, CAST(3.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (23, 5, 16, CAST(3.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (24, 9, 16, CAST(5.25 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (25, 18, 16, CAST(5.00 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (26, 10, 16, CAST(3.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (27, 13, 13, CAST(4.75 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (28, 1, 13, CAST(3.00 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (29, 15, 14, CAST(1.30 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (30, 19, 14, CAST(1.30 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (31, 7, 14, CAST(1.80 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (32, 4, 14, CAST(0.20 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (33, 8, 14, CAST(0.20 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (34, 9, 14, CAST(0.25 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (35, 1, 12, CAST(0.20 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (36, 19, 12, CAST(0.20 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (37, 5, 12, CAST(0.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (38, 16, 12, CAST(0.20 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (39, 20, 12, CAST(0.25 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (40, 14, 12, CAST(0.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (41, 6, 12, CAST(0.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (42, 18, 12, CAST(0.70 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (43, 2, 12, CAST(1.00 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (44, 10, 12, CAST(0.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (45, 17, 4, CAST(2.55 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (46, 14, 4, CAST(2.00 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (47, 6, 4, CAST(2.00 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (48, 2, 4, CAST(1.00 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (49, 5, 17, CAST(0.45 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (50, 4, 17, CAST(0.30 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (51, 9, 17, CAST(1.00 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (52, 13, 5, CAST(1.00 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (53, 1, 5, CAST(0.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (54, 12, 5, CAST(0.35 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (55, 18, 5, CAST(1.25 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (56, 15, 9, CAST(1.00 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (57, 11, 9, CAST(1.00 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (58, 13, 8, CAST(0.15 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (59, 19, 8, CAST(1.00 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (60, 3, 8, CAST(1.20 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (61, 7, 8, CAST(1.20 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (62, 17, 8, CAST(1.00 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (63, 6, 8, CAST(1.20 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (64, 2, 8, CAST(0.33 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (65, 13, 6, CAST(0.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (66, 11, 6, CAST(2.90 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (67, 7, 6, CAST(1.40 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (68, 17, 6, CAST(1.70 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (69, 8, 6, CAST(0.30 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (70, 9, 6, CAST(1.00 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (71, 19, 7, CAST(1.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (72, 3, 7, CAST(2.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (73, 7, 7, CAST(1.75 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (74, 17, 7, CAST(1.85 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (75, 4, 7, CAST(2.20 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (76, 8, 7, CAST(1.30 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (77, 20, 7, CAST(0.80 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (78, 3, 11, CAST(1.65 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (79, 14, 11, CAST(1.25 AS Decimal(5, 2)))
INSERT [dbo].[ProductMaterials] ([ProductMaterialsID], [ProductID], [MaterialID], [NeedQuantity]) VALUES (80, 6, 11, CAST(1.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[ProductMaterials] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([ProductTypeID], [ProductName], [CoefficientType]) VALUES (1, N'Декоративные обои', CAST(5.50 AS Decimal(5, 2)))
INSERT [dbo].[ProductType] ([ProductTypeID], [ProductName], [CoefficientType]) VALUES (2, N'Фотообои', CAST(7.54 AS Decimal(5, 2)))
INSERT [dbo].[ProductType] ([ProductTypeID], [ProductName], [CoefficientType]) VALUES (3, N'Обои под покраску', CAST(3.25 AS Decimal(5, 2)))
INSERT [dbo].[ProductType] ([ProductTypeID], [ProductName], [CoefficientType]) VALUES (4, N'Стеклообои', CAST(2.50 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Units] ON 

INSERT [dbo].[Units] ([UnitID], [UnitName]) VALUES (1, N'рул')
INSERT [dbo].[Units] ([UnitID], [UnitName]) VALUES (2, N'кг')
INSERT [dbo].[Units] ([UnitID], [UnitName]) VALUES (3, N'л')
SET IDENTITY_INSERT [dbo].[Units] OFF
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_MaterialType] FOREIGN KEY([MaterialTypeID])
REFERENCES [dbo].[MaterialType] ([MaterialTypeID])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_MaterialType]
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_Units] FOREIGN KEY([UnitID])
REFERENCES [dbo].[Units] ([UnitID])
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_Units]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ProductTypeID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
ALTER TABLE [dbo].[ProductMaterials]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterials_Materials] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Materials] ([MaterialID])
GO
ALTER TABLE [dbo].[ProductMaterials] CHECK CONSTRAINT [FK_ProductMaterials_Materials]
GO
ALTER TABLE [dbo].[ProductMaterials]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterials_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductMaterials] CHECK CONSTRAINT [FK_ProductMaterials_Product]
GO
