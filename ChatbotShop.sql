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
	--password: default = 1
	[password] [char](64) NOT NULL default('6B86B273FF34FCE19D6B804EFF5A3F5747ADA4EAA22F1D49C01E52DDB7875B4B'),
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
	[category_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
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
INSERT [Category] ([id], [name]) VALUES (1, N'teddy bear')
SET IDENTITY_INSERT [Category] OFF

/******insert  data product ******/
SET IDENTITY_INSERT [Product] ON 
INSERT [Product] ([id], [description], [price], [discount], [category_id]) VALUES (1, N'Dog 1', 204.99, 0.1, 1)
SET IDENTITY_INSERT [Product] OFF

/******insert  data chatbot ******/
SET IDENTITY_INSERT [Chatbot] ON
INSERT [Chatbot] ([id], [content], [script],[category_id], [product_id]) VALUES (1, N'Welcome to GAUBONGSHOP',N'adasdas' , 1, 1)
SET IDENTITY_INSERT [Product] OFF

SET IDENTITY_INSERT [Account] ON 
INSERT [Account] ([id], [name], [address], [phone], [email], [userName],[role]) VALUES
(1, N'Admin', N'9652 Los Angeles', N'0123456789', N'a@petstore.com','admin', 'ROLE_ADMIN'),
(2, N'Staff1', N'5747 Shirley Drive', N'1234567890', N'e1@petstore.com', 'e1', 'ROLE_EMPLOYEE'),
(3, N'Staff2', N'3841 Silver Oaks Place', N'2345678901', N'e2@petstore.com', 'e2', 'ROLE_EMPLOYEE'),
(4, N'Customer1', N'1873 Lion Circle', N'5678901234', N'c1@gmail.com', 'c1','ROLE_CUSTOMER'),
(5, N'Customer2', N'5747 Shirley Drive', N'6789872314', N'c2@gmail.com', 'c2', 'ROLE_CUSTOMER')
SET IDENTITY_INSERT [Account] OFF

INSERT [dbo].[Customer] ([id], [category], [shipToAddress]) VALUES (4, 'Copper', N'1873 Lion Circle')
INSERT [dbo].[Customer] ([id], [category], [shipToAddress]) VALUES (5, 'Copper', N'5747 Shirley Drive')

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
ALTER TABLE [Chatbot]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [Product] ([id])
GO
ALTER TABLE [OrderHeader]  WITH CHECK ADD CHECK  (([status]='canceled' OR [status]='paid' OR [status]='delivered' OR [status]='packaged' OR [status]='confirmed' OR [status]='new'))
GO
USE [master]
GO
ALTER DATABASE [ChatbotShop] SET  READ_WRITE 
GO
raiserror('The ChatbotShop database in now ready for use....',0,1)
GO
