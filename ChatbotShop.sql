raiserror('Creating ChatbotShop database....',0,1)
GO
USE [master]
GO

CREATE DATABASE [ChatbotShop]
GO
USE [ChatbotShop]
GO

/****** Object:  Table [Category]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Account]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[phone] [varchar](12) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[userName] [varchar](100) NOT NULL unique,
	[password] [char](64) NOT NULL ,
	[enabled] [bit] NOT NULL default(1),
	[role] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [Chatbot]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Chatbot](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [varchar](200) NOT NULL,
	[script][varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED (
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [Customer]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Customer](
	[id] [int] NOT NULL,
	[category] varchar(50) NOT NULL CHECK([category] IN ('Gold','Silver','Copper')),
	[shipToAddress] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [Staff]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Staff](
	[id] [int] NOT NULL,
	[salary] [money] NOT NULL,
	[department_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [OrderHeader]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [OrderHeader](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NOT NULL,
	[status] [varchar](30) NULL,
	[customer_id] [int] NOT NULL,
	[staff_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [OrderDetail]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[discount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [Product]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[color][varchar](50) NOT Null,
	[price] [float] NOT NULL,
	[discount] [float] NOT NULL,
	[category_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object: insert data for table  ******/
/****** insert  data category******/
SET IDENTITY_INSERT [Category] ON 
INSERT [Category] ([id], [name]) VALUES (1, N'stuffed animal')
SET IDENTITY_INSERT [Category] OFF

/******insert  data product ******/
SET IDENTITY_INSERT [Product] ON 
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (1, N'Bear',N'Brown', 10, 0.1, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (2, N'Shin',N'Beige', 5, 0.02, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (3, N'Dinosaur',N'green and orange', 8, 0.05, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (4, N'Doremon',N'blue', 9, 0.15, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (5, N'Dog',N'Beige',4, 0.12, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (6, N'Banana',N'yellow', 3, 0.01, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (7, N'Donan',N'blue', 7, 0.05, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (8, N'Shit',N'Brown', 5, 0.13, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (9, N'Mommy-long leg',N'Pink', 20, 0.2, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (10, N'Poopy',N'Blue',19, 0.07, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (11, N'Teddy bear',N'Pink',10, 0.1, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (12, N'Doremi',N'yellow',8, 0.01, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (13, N'Sitich',N'Blue',7.2, 0.05, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (14, N'Kiu',N'Pink',6.9, 0.069, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (15, N'Panda',N'Black and White',5.5, 0, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (16, N'Dinosaur Shin',N'Green',8.5, 0, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (17, N'Cute Pig',N'Pink',4.6, 0.1, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (18, N'Teddy bear',N'Orange',3, 0, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (19, N'Teddy bear',N'Yellow',6.5, 0, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (20, N'Hear',N'Pink',6.9, 0, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (21, N'Bomb',N'Green',8.2, 0.03, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (22, N'Chopper',N'While and Yellow',7.2, 0, 1)
INSERT [Product] ([id],[description],[color], [price], [discount], [category_id]) VALUES (23, N'Polo',N'White',2, 0, 1)

SET IDENTITY_INSERT [Product] OFF

/******insert  data chatbot ******/


SET IDENTITY_INSERT [Account] ON 
INSERT [Account] ([id], [name], [address], [phone], [email], [userName],[password], [role]) VALUES
(1, N'Admin', N'Tp.HCM', N'0123456789', N'a@petstore.com','admin','123', 'ROLE_ADMIN'),
(2, N'Employee1', N'Tp.HCM', N'0912312313', N'e1@petstore.com', 'e1','123', 'ROLE_EMPLOYEE'),
(3, N'Employee2', N'Tp.HCM', N'2345678901', N'e2@petstore.com', 'e2','123', 'ROLE_EMPLOYEE'),
(4, N'Customer1', N'Tp.HCM', N'5678901234', N'c1@gmail.com', 'c1','123','ROLE_CUSTOMER'),
(5, N'Customer2', N'Tp.HCM', N'6789872314', N'c2@gmail.com', 'c2','123', 'ROLE_CUSTOMER')
SET IDENTITY_INSERT [Account] OFF

INSERT [dbo].[Customer] ([id], [category], [shipToAddress]) VALUES (4, 'Copper', N'tp.HCM')
INSERT [dbo].[Customer] ([id], [category], [shipToAddress]) VALUES (5, 'Copper', N'tp.HCM')

INSERT [Staff] ([id], [salary], [department_id]) VALUES 
(1, 1200, 1),(2, 1000, 2),(3, 800, 2)

SET ANSI_PADDING ON
GO

/****** Object:  Index [UQ__User__66DCF95C57BB9BE7]     ******/
ALTER TABLE [Account] ADD UNIQUE NONCLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [Product] ADD  DEFAULT ((0)) FOR [discount]
GO
ALTER TABLE [Customer]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [Account] ([id])
GO
ALTER TABLE [Staff]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [Account] ([id])
GO
ALTER TABLE [OrderHeader]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [Customer] ([id])
GO
ALTER TABLE [OrderHeader]  WITH CHECK ADD FOREIGN KEY([staff_id])
REFERENCES [Staff] ([id])
GO
ALTER TABLE [OrderDetail]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [OrderHeader] ([id])
GO
ALTER TABLE [OrderDetail]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [Product] ([id])
GO
ALTER TABLE [Product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [Category] ([id])
GO


GO
ALTER TABLE [OrderHeader]  WITH CHECK ADD CHECK  (([status]='canceled' OR [status]='paid' OR [status]='delivered' OR [status]='packaged' OR [status]='confirmed' OR [status]='new'))
GO
USE [master]
GO
ALTER DATABASE [ChatbotShop] SET  READ_WRITE 
GO
raiserror('The ChatbotShop database in now ready for use....',0,1)
GO
