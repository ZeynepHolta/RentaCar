USE [rentacar]
GO
/****** Object:  Table [dbo].[admins]    Script Date: 10.05.2017 00:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admins](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](500) NULL,
	[password] [varchar](500) NULL,
	[name] [varchar](500) NULL,
	[token] [varchar](500) NULL,
 CONSTRAINT [PK_admins] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[announcements]    Script Date: 10.05.2017 00:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[announcements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_announcements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cars]    Script Date: 10.05.2017 00:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cars](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[brand] [varchar](100) NULL,
	[model] [varchar](100) NULL,
	[color] [varchar](100) NULL,
	[km] [int] NULL,
	[price] [decimal](18, 2) NULL,
	[period] [varchar](50) NULL,
	[title] [varchar](255) NULL,
	[img] [varchar](max) NULL,
	[modelyear] [varchar](50) NULL,
	[rank] [int] NULL,
 CONSTRAINT [PK_cars] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[reservations]    Script Date: 10.05.2017 00:21:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[phone] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[reservationtime] [varchar](50) NULL,
	[cars] [varchar](50) NULL,
	[isclose] [bit] NULL,
	[reservationnot] [varchar](max) NULL,
	[reservationadminnot] [varchar](max) NULL,
	[reservationcode] [varchar](50) NULL,
 CONSTRAINT [PK_reservations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[admins] ON 

GO
INSERT [dbo].[admins] ([id], [username], [password], [name], [token]) VALUES (1, N'admin', N'admin', N'Oğuzhan SARI', N'6b1c6684-f5b6-429b-a32a-d2b09435b8ea')
GO
SET IDENTITY_INSERT [dbo].[admins] OFF
GO
SET IDENTITY_INSERT [dbo].[announcements] ON 

GO
INSERT [dbo].[announcements] ([id], [title], [description]) VALUES (3, N'Test duyuru2', N'Deneme duyuru içerik')
GO
INSERT [dbo].[announcements] ([id], [title], [description]) VALUES (4, N'Yeni duyuru', N'Yeni duyuru deneme')
GO
SET IDENTITY_INSERT [dbo].[announcements] OFF
GO
SET IDENTITY_INSERT [dbo].[cars] ON 

GO
INSERT [dbo].[cars] ([id], [brand], [model], [color], [km], [price], [period], [title], [img], [modelyear], [rank]) VALUES (1, N'BMW', N'3.20i', N'Mavi', 25000, CAST(230.00 AS Decimal(18, 2)), N'Aylık', N'BMW 3.20i Yeni Kasa', N'https://bayi.rentacarss.com/Dosyalar/AracResim/27056a84-2e08-4feb-a18b-89b894b9442c_IMG_0916.JPG', N'2016', 10)
GO
INSERT [dbo].[cars] ([id], [brand], [model], [color], [km], [price], [period], [title], [img], [modelyear], [rank]) VALUES (4, N'Ford', N'Kuga', N'Mavi', 25000, CAST(230.00 AS Decimal(18, 2)), N'Aylık', N'BMW 3.20i Yeni Kasa', N'https://1.bp.blogspot.com/-3Nrz4V00H8A/Vsf3rssCyDI/AAAAAAAAqbQ/4fKpfZENvi8/s1600/makyajl%25C4%25B1%2Bford%2Bkuga%2B1.jpg', N'2017', 52)
GO
INSERT [dbo].[cars] ([id], [brand], [model], [color], [km], [price], [period], [title], [img], [modelyear], [rank]) VALUES (5, N'Renault', N'Megan', N'Metalic Gri', 38000, CAST(450.00 AS Decimal(18, 2)), N'Aylık', N'Renault Megane 2017', N'http://carsmag.us/wp-content/uploads/2016/11/Renault-Megane-2017-Hatchback.jpg', N'2017', 20)
GO
INSERT [dbo].[cars] ([id], [brand], [model], [color], [km], [price], [period], [title], [img], [modelyear], [rank]) VALUES (6, N'OPEL', N'ASTRA', N'Metalic Beyaz', 25600, CAST(100.00 AS Decimal(18, 2)), N'Günlük', N'Opel Astra', N'https://s1.cdn.autoevolution.com/images/news/2017-opel-astra-tourer-opc-rendering-is-too-good-to-be-true-107916_1.jpg', N'2017', 18)
GO
INSERT [dbo].[cars] ([id], [brand], [model], [color], [km], [price], [period], [title], [img], [modelyear], [rank]) VALUES (7, N'BMW', N'3.20i', N'Mavi', 25000, CAST(230.00 AS Decimal(18, 2)), N'Saatlik', N'BMW 3.20i Yeni Kasa', N'http://img.autobytel.com/car-reviews/autobytel/11694-good-looking-sports-cars/2016-Ford-Mustang-GT-burnout-red-tire-smoke.jpg', N'2016', 25)
GO
INSERT [dbo].[cars] ([id], [brand], [model], [color], [km], [price], [period], [title], [img], [modelyear], [rank]) VALUES (8, N'VOLVO', N'S60', N'Metalic Gri', 38000, CAST(450.00 AS Decimal(18, 2)), N'Aylık', N'Volvo S60 Tam Otomatik', N'http://st.motortrend.com/uploads/sites/10/2015/09/2016-Volvo-S60-Cross-Country-rear-three-quarter-studio1.jpg', N'2015', 11)
GO
INSERT [dbo].[cars] ([id], [brand], [model], [color], [km], [price], [period], [title], [img], [modelyear], [rank]) VALUES (9, N'MERCEDES', N'AMG', N'Metalic Beyaz', 25600, CAST(100.00 AS Decimal(18, 2)), N'Günlük', N'Mercedes AMG', N'https://cms.kelleybluebookimages.com/content/dam/kbb-editorial/auto-shows/new_york/_2016/2017-maserati-levante/01-2017-Maserati-Levante.jpg/jcr:content/renditions/cq5dam.web.1280.1280.jpeg', N'2017', 29)
GO
INSERT [dbo].[cars] ([id], [brand], [model], [color], [km], [price], [period], [title], [img], [modelyear], [rank]) VALUES (10, N'Ford', N'Kuga', N'Mavi', 25000, CAST(230.00 AS Decimal(18, 2)), N'Aylık', N'BMW 3.20i Yeni Kasa', N'http://cdn1.carbuyer.co.uk/sites/carbuyer_d7/files/styles/16x9_720/public/bmw-x2-concept-001_4.jpg?itok=igTrFeiO', N'2017', 30)
GO
INSERT [dbo].[cars] ([id], [brand], [model], [color], [km], [price], [period], [title], [img], [modelyear], [rank]) VALUES (11, N'Renault', N'Megan', N'Metalic Gri', 38000, CAST(450.00 AS Decimal(18, 2)), N'Aylık', N'Renault Megane 2017', N'https://blogs-images.forbes.com/jimgorzelany/files/2016/12/zenvo-st1-2009_848.jpg', N'2017', 45)
GO
INSERT [dbo].[cars] ([id], [brand], [model], [color], [km], [price], [period], [title], [img], [modelyear], [rank]) VALUES (12, N'OPEL', N'ASTRA', N'Metalic Beyaz', 25600, CAST(100.00 AS Decimal(18, 2)), N'Günlük', N'Opel Astra', N'http://cdn2.carbuyer.co.uk/sites/carbuyer_d7/files/styles/16x9_720/public/abarth-500x-1.jpg?itok=vgh_3uVW', N'2017', 8)
GO
INSERT [dbo].[cars] ([id], [brand], [model], [color], [km], [price], [period], [title], [img], [modelyear], [rank]) VALUES (21, N'BMW', N'i8', N'Lacivert', 2017, CAST(280.00 AS Decimal(18, 2)), N'Aylık', N'BMW i8 2017 Otomatik 2', N'https://otomobilaski.files.wordpress.com/2013/09/bmw-i8-arka.jpg', N'30000', NULL)
GO
SET IDENTITY_INSERT [dbo].[cars] OFF
GO
SET IDENTITY_INSERT [dbo].[reservations] ON 

GO
INSERT [dbo].[reservations] ([id], [name], [email], [phone], [city], [reservationtime], [cars], [isclose], [reservationnot], [reservationadminnot], [reservationcode]) VALUES (3, N'OĞUZHAN SARI', N'oguzhansari1989@gmail.com', N'05325151335', N'YALOVA', N'1 Saat', N'9,8,6', 0, N'dtyhrh', N'rtshrth', N'LNVQEX')
GO
INSERT [dbo].[reservations] ([id], [name], [email], [phone], [city], [reservationtime], [cars], [isclose], [reservationnot], [reservationadminnot], [reservationcode]) VALUES (4, N'OĞUZHAN SARI', N'oguzhansari1989@gmail.com', N'5325151335', N'YALOVA', N'1 Hafta', N'21,12', 0, N'Müşteriye iletilecek mesaj', N'Yönetici tarafından görüntülenecek mesaj', N'H7S46J')
GO
SET IDENTITY_INSERT [dbo].[reservations] OFF
GO
