USE [Project_SU22]
GO
ALTER TABLE [dbo].[Productsize] DROP CONSTRAINT [FK_Productsize_Size]
GO
ALTER TABLE [dbo].[Productsize] DROP CONSTRAINT [FK_Productsize_Product]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Status_product]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Size]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Image_product]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Color]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Order_Details] DROP CONSTRAINT [FK_Order_Details_Product]
GO
ALTER TABLE [dbo].[Order_Details] DROP CONSTRAINT [FK_Order_Details_Order]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Status_order]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Status_Account]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_Shipping]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK_Feedback_Product]
GO
ALTER TABLE [dbo].[Blog] DROP CONSTRAINT [FK_Blog_Category_blog]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK_Account_Role]
GO
/****** Object:  Table [dbo].[Status_product]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Status_product]') AND type in (N'U'))
DROP TABLE [dbo].[Status_product]
GO
/****** Object:  Table [dbo].[Status_order]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Status_order]') AND type in (N'U'))
DROP TABLE [dbo].[Status_order]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Slide]') AND type in (N'U'))
DROP TABLE [dbo].[Slide]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Size]') AND type in (N'U'))
DROP TABLE [dbo].[Size]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Shipping]') AND type in (N'U'))
DROP TABLE [dbo].[Shipping]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[Productsize]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Productsize]') AND type in (N'U'))
DROP TABLE [dbo].[Productsize]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order_Details]') AND type in (N'U'))
DROP TABLE [dbo].[Order_Details]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type in (N'U'))
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[Image_product]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Image_product]') AND type in (N'U'))
DROP TABLE [dbo].[Image_product]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feedback]') AND type in (N'U'))
DROP TABLE [dbo].[Feedback]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Color]') AND type in (N'U'))
DROP TABLE [dbo].[Color]
GO
/****** Object:  Table [dbo].[Category_blog]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category_blog]') AND type in (N'U'))
DROP TABLE [dbo].[Category_blog]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Blog]') AND type in (N'U'))
DROP TABLE [dbo].[Blog]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/2/2022 2:58:19 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[account_email] [nvarchar](50) NOT NULL,
	[account_password] [nvarchar](30) NOT NULL,
	[account_name] [nvarchar](30) NOT NULL,
	[account_phone] [nvarchar](10) NOT NULL,
	[account_address] [nvarchar](100) NOT NULL,
	[account_gender] [bit] NOT NULL,
	[account_role] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[author] [nvarchar](100) NOT NULL,
	[descriptions] [nvarchar](500) NOT NULL,
	[createdate] [datetime] NOT NULL,
	[createby] [nvarchar](100) NOT NULL,
	[images] [nvarchar](100) NOT NULL,
	[modifydate] [datetime] NOT NULL,
	[modifyby] [nvarchar](100) NOT NULL,
	[detail] [nvarchar](2000) NOT NULL,
	[category_id] [int] NOT NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](30) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_blog]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category_blog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[color_id] [int] IDENTITY(1,1) NOT NULL,
	[color_name] [nvarchar](30) NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](2000) NULL,
	[ratting] [float] NOT NULL,
	[product_id] [int] NULL,
	[account_id] [int] NOT NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image_product]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image_product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](100) NULL,
 CONSTRAINT [PK_Image_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[note] [nvarchar](50) NULL,
	[status_id] [int] NOT NULL,
	[total_money] [float] NOT NULL,
	[Date] [date] NULL,
	[shipping_id] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [float] NULL,
	[num] [int] NULL,
	[total_number] [float] NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[image_id] [int] NOT NULL,
	[product_name] [nvarchar](50) NOT NULL,
	[product_price] [float] NOT NULL,
	[color_id] [int] NOT NULL,
	[product_quantity] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
	[product_description] [nvarchar](2000) NULL,
	[product_code] [nvarchar](10) NOT NULL,
	[product_sale] [int] NULL,
	[size_id] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productsize]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productsize](
	[product_id] [int] NULL,
	[size_id] [int] NULL,
	[quantity] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[names] [int] NOT NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](500) NOT NULL,
	[createdate] [date] NOT NULL,
	[createby] [nvarchar](50) NOT NULL,
	[modifydate] [date] NULL,
	[modifyby] [nvarchar](50) NULL,
	[imageslide] [nvarchar](50) NOT NULL,
	[descriptions] [nvarchar](500) NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status_order]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status_order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](100) NULL,
 CONSTRAINT [PK_Status_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status_product]    Script Date: 6/2/2022 2:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status_product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](100) NULL,
 CONSTRAINT [PK_Status_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([account_id], [account_email], [account_password], [account_name], [account_phone], [account_address], [account_gender], [account_role]) VALUES (1, N'anhnkthe151369@fpt.edu.vn', N'123456', N'Kieu', N'0987582761', N'Sơn Tây', 1, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (1, N'Nike')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (2, N'Adidas')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (3, N'Reebook')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (4, N'MLB')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (5, N'Gucci')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (6, N'Vans')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (7, N'Converse')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([color_id], [color_name]) VALUES (1, N'Red')
INSERT [dbo].[Color] ([color_id], [color_name]) VALUES (2, N'Black')
INSERT [dbo].[Color] ([color_id], [color_name]) VALUES (3, N'Blue')
INSERT [dbo].[Color] ([color_id], [color_name]) VALUES (4, N'Brown')
INSERT [dbo].[Color] ([color_id], [color_name]) VALUES (5, N'Pink')
INSERT [dbo].[Color] ([color_id], [color_name]) VALUES (6, N'Purple')
INSERT [dbo].[Color] ([color_id], [color_name]) VALUES (7, N'Grey')
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Image_product] ON 

INSERT [dbo].[Image_product] ([id], [image]) VALUES (1, N'product1.jpg')
INSERT [dbo].[Image_product] ([id], [image]) VALUES (2, N'product2.jpg')
INSERT [dbo].[Image_product] ([id], [image]) VALUES (3, N'product3.jpg')
SET IDENTITY_INSERT [dbo].[Image_product] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (11, 1, N'Nike Air Force 1 07', 150, 1, 25, 1, 1, N'Mens Shoe', N'N1', NULL, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (12, 2, N'Nike Air Force 1 Shadow', 250, 1, 25, 2, 2, N'Unisex', N'N2', NULL, 2)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (16, 2, N'Hudson', 48, 6, 6, 3, 3, N'Hydrocodone Bitartrate And Acetaminophen', N'Green', NULL, 2)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (17, 2, N'Hudson', 48, 6, 6, 3, 3, N'Hydrocodone Bitartrate And Acetaminophen', N'Green', NULL, 2)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (18, 2, N'Redwing', 99, 7, 12, 4, 1, N'Unisex', N'N2', 69, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (19, 1, N'Meadow Vale', 9, 2, 5, 4, 4, N'Unisex', N'Crimson', 14, 5)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (20, 2, N'Algoma', 83, 6, 18, 4, 5, N'Unisex', N'Fuscia', 56, 5)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (21, 1, N'Miller', 48, 5, 4, 4, 1, N'Cefepime', N'Maroon', 93, 3)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (22, 3, N'Union', 16, 5, 4, 2, 1, N'Unisex', N'Yellow', 96, 7)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (23, 2, N'Browning', 50, 4, 14, 1, 4, N'Unisex', N'Mauv', 73, 2)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (24, 1, N'Victoria', 15, 7, 19, 6, 1, N'Unisex', N'Fuscia', 9, 4)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (25, 1, N'Arkansas', 12, 2, 12, 5, 3, N'Unisex', N'Green', 53, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (26, 1, N'Northland', 61, 1, 16, 2, 1, N'Dawn', N'Yellow', 23, 5)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (27, 3, N'Mccormick', 98, 4, 12, 7, 4, N'Super Aqua Eye', N'Turquoise', 18, 7)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (28, 3, N'Killdeer', 27, 1, 15, 4, 3, N'Minocin', N'Purple', 35, 2)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (29, 1, N'Paget', 76, 3, 17, 1, 2, N'Unisex', N'Pink', 40, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (30, 3, N'Vernon', 20, 5, 2, 1, 4, N'Eye Lubricant', N'Purple', 30, 4)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (31, 2, N'Macpherson', 3, 5, 14, 2, 2, N'Terazosin', N'Aquamarine', 67, 2)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (32, 3, N'Westerfield', 20, 4, 12, 5, 5, N'Rough Pigweed', N'Blue', 21, 6)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (33, 2, N'Chinook', 78, 5, 14, 5, 2, N'Nasal Decongestant', N'Puce', 20, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (34, 2, N'Hintze', 82, 1, 10, 4, 2, N'BETULA NIGRA POLLEN', N'Red', 77, 6)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (35, 2, N'Evergreen', 91, 5, 19, 2, 4, N'Unisex', N'Khaki', 72, 5)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (36, 1, N'Sugar', 46, 1, 16, 4, 5, N'METFORMIN HYDROCHLORIDE', N'Violet', 98, 4)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (37, 2, N'Weeping Birch', 93, 7, 19, 3, 1, N'bareMinerals 5-in-1 BB Advanced Performance Eyeshadow Broad Spectrum SPF 15', N'Yellow', 84, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (38, 2, N'Maple', 35, 6, 12, 1, 1, N'Cold and Hot Medicated', N'Puce', 14, 7)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (39, 1, N'Manufacturers', 93, 5, 11, 1, 2, N'Ondansetron Hydrochloride', N'Crimson', 80, 4)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (40, 1, N'Valley Edge', 74, 2, 8, 5, 5, N'Unisex', N'Maroon', 92, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (41, 3, N'Fulton', 15, 2, 8, 4, 1, N'Unisex', N'Fuscia', 77, 4)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (42, 1, N'Hooker', 5, 7, 15, 5, 1, N'ShopRite Infants Acetaminophen', N'Indigo', 7, 5)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (43, 3, N'Coolidge', 60, 4, 15, 7, 1, N'Formula 4', N'Violet', 78, 4)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (44, 3, N'Warrior', 42, 7, 4, 3, 2, N'Niseko Sunscreen SPF 25', N'Khaki', 23, 5)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (45, 1, N'Bartelt', 5, 5, 17, 3, 2, N'Mineral Oil', N'Red', 77, 6)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (46, 3, N'Cordelia', 25, 6, 17, 2, 5, N'Unisex', N'Fuscia', 72, 3)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (47, 3, N'Continental', 42, 2, 19, 6, 2, N'Transderm Scop', N'Teal', 87, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (48, 2, N'Heath', 65, 4, 14, 4, 4, N'Risperidone', N'Puce', 12, 2)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (49, 3, N'Monica', 88, 1, 20, 1, 3, N'LEVETIRACETAM', N'Red', 15, 2)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (50, 3, N'Calypso', 17, 6, 3, 2, 3, N'foot works', N'Purple', 33, 2)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (51, 1, N'2nd', 57, 5, 2, 7, 3, N'MICRONOR', N'Orange', 35, 7)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (52, 2, N'Walton', 48, 6, 1, 1, 5, N'Betapace', N'Indigo', 15, 2)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (53, 3, N'Waubesa', 61, 5, 15, 1, 3, N'Unisex', N'Khaki', 83, 6)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (54, 2, N'Bellgrove', 47, 4, 15, 2, 2, N'SyDerm Complex', N'Red', 75, 4)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (55, 2, N'Anniversary', 63, 3, 6, 1, 5, N'Lo Minastrin Fe', N'Indigo', 73, 3)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (56, 3, N'Marquette', 93, 5, 5, 4, 1, N'MEDICAGO SATIVA POLLEN', N'Indigo', 92, 2)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (57, 1, N'Miller', 39, 1, 1, 1, 2, N'Unisex', N'Puce', 53, 3)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (58, 2, N'Lillian', 12, 2, 15, 7, 1, N'Metoclopramide Hydrochloride', N'Crimson', 14, 6)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (59, 1, N'Jenifer', 98, 6, 15, 2, 5, N'GUNA-MOOD', N'Blue', 14, 4)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (60, 3, N'Lunder', 12, 3, 9, 7, 3, N'RITE AID RENEWAL', N'Puce', 30, 3)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (61, 2, N'Dryden', 49, 4, 17, 6, 3, N'Levofloxacin', N'Pink', 75, 6)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (62, 2, N'Atwood', 21, 2, 19, 3, 3, N'HEB Dandruff', N'Red', 7, 4)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (63, 3, N'Arizona', 20, 5, 7, 1, 4, N'Unisex', N'Orange', 77, 6)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (64, 1, N'Sauthoff', 68, 4, 3, 6, 5, N'Carbamazepine', N'Red', 27, 4)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (65, 3, N'La Follette', 35, 4, 1, 3, 2, N'Greasewood', N'Blue', 32, 4)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (66, 1, N'Carberry', 69, 1, 10, 4, 2, N'APCAL', N'Turquoise', 16, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (67, 3, N'8th', 89, 4, 5, 4, 1, N'Nicotine', N'Khaki', 48, 3)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (68, 3, N'Northridge', 89, 4, 20, 2, 3, N'Herpetrol', N'Crimson', 51, 5)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (69, 3, N'Rieder', 21, 4, 5, 6, 2, N'Natural SPF 28', N'Yellow', 6, 5)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (70, 3, N'Macpherson', 10, 1, 17, 5, 2, N'Methocarbamol', N'N1', 90, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (71, 2, N'Sunfield', 28, 2, 20, 3, 4, N'nasal', N'Crimson', 26, 3)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (72, 2, N'Namekagon', 58, 2, 15, 3, 2, N'Oral-B Fluorinse Mint', N'N1', 100, 4)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (73, 1, N'Ruskin', 73, 5, 8, 4, 4, N'Ibuprofen', N'N1', 76, 6)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (74, 3, N'Towne', 88, 5, 17, 5, 5, N'ALBENZA', N'N1', 98, 2)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (75, 1, N'Johnson', 62, 7, 18, 1, 2, N'Sore Throat', N'Mauv', 17, 3)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (76, 1, N'Holy Cross', 21, 2, 3, 3, 2, N'Ondansetron', N'Maroon', 15, 3)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (77, 3, N'Armistice', 19, 3, 1, 1, 5, N'Nicotine', N'Green', 24, 7)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (78, 1, N'Marcy', 69, 3, 11, 7, 1, N'Unisex', N'N1', 65, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (79, 3, N'Everett', 44, 6, 11, 1, 1, N'CLARITHROMYCIN', N'Mauv', 22, 7)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (80, 1, N'Magdeline', 45, 1, 5, 1, 1, N'BENZTROPINE MESYLATE', N'N1', 74, 6)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (81, 2, N'Cottonwood', 55, 3, 20, 5, 4, N'Direct Safety Extra Strength Aspirin Free', N'N2', 95, 5)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (82, 2, N'Annamark', 57, 2, 15, 4, 1, N'SUMATRIPTAN', N'Khaki', 33, 2)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (83, 2, N'Mitchell', 99, 3, 18, 5, 1, N'Atenolol', N'Maroon', 47, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (84, 3, N'Londonderry', 63, 2, 3, 3, 4, N'Sweet Pea Blossom Hand Sanitizer', N'Fuscia', 53, 6)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (85, 2, N'Namekagon', 72, 1, 20, 6, 2, N'up and up childrens ibuprofen', N'N1', 17, 2)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (86, 2, N'Lukken', 98, 6, 9, 4, 4, N'SP1 Formula', N'Yellow', 32, 4)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (87, 3, N'Carey', 22, 4, 2, 5, 4, N'Smoke Control', N'Blue', 36, 7)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (88, 2, N'Truax', 66, 3, 2, 6, 1, N'Flounder', N'Aquamarine', 76, 5)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (89, 2, N'Stang', 59, 6, 4, 7, 5, N'DILL SEED', N'N1', 44, 7)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (90, 1, N'Milwaukee', 89, 2, 8, 1, 5, N'donepezil hydrochloride', N'Pink', 18, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (91, 1, N'New Castle', 10, 5, 13, 1, 5, N'3M Avagard Foam', N'Red', 37, 3)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (92, 2, N'Stephen', 4, 7, 11, 5, 3, N'Butalbital, Acetaminophen, and Caffeine', N'Blue', 10, 5)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (93, 2, N'Kennedy', 87, 2, 1, 1, 1, N'Ibuprofen', N'N1', 62, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (94, 3, N'Arapahoe', 73, 6, 8, 3, 2, N'Cleocin Phosphate', N'N2', 83, 6)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (95, 1, N'Dahle', 62, 2, 20, 7, 2, N'Rocaltrol', N'N2', 13, 6)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (96, 3, N'Hallows', 78, 7, 5, 1, 1, N'clomiphene citrate', N'N2', 19, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (97, 3, N'Moose', 91, 3, 9, 2, 2, N'AloeGuard', N'Turquoise', 98, 3)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (98, 3, N'Di Loreto', 59, 5, 6, 5, 3, N'Preferred Plus Chest Congestion Relief', N'Maroon', 25, 7)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (99, 2, N'Brown', 35, 1, 12, 3, 5, N'Hemorrhoidal', N'Mauv', 40, 5)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (100, 2, N'Sheridan', 35, 7, 7, 2, 2, N'Cyclobenzaprine Hydrochloride', N'Crimson', 72, 7)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (101, 1, N'Acker', 38, 2, 11, 6, 3, N'Epinephrine', N'Crimson', 82, 5)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (102, 2, N'Mallory', 37, 1, 3, 2, 4, N'Terconazole', N'Turquoise', 77, 3)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (103, 3, N'Victoria', 73, 1, 18, 2, 4, N'Ibuprofen', N'Orange', 35, 3)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (104, 3, N'Lukken', 97, 7, 11, 3, 5, N'tizanidine', N'Yellow', 33, 6)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (105, 2, N'Buena Vista', 2, 2, 2, 6, 4, N'Simvastatin', N'Purple', 23, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (106, 2, N'Macpherson', 78, 1, 17, 1, 5, N'Adult Long Lasting-Cough Relief', N'Pink', 25, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (107, 2, N'Mendota', 92, 1, 19, 3, 4, N'buprenorphine hydrochloride', N'Green', 84, 6)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (108, 1, N'Spenser', 17, 6, 3, 6, 4, N'Softlips Sugar Plum Berry', N'Puce', 26, 5)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (109, 1, N'Bluestem', 66, 1, 10, 6, 4, N'Labetalol HCl', N'Red', 37, 6)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (110, 1, N'Hanover', 94, 6, 8, 2, 5, N'Hydrocodone Bitartrate and Acetaminophen', N'Red', 63, 2)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (111, 2, N'Sommers', 29, 4, 18, 1, 5, N'HYDROXYZINE HYDROCHLORIDE', N'Indigo', 24, 1)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (112, 2, N'Drewry', 96, 1, 4, 3, 2, N'IBU', N'Crimson', 82, 5)
GO
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (113, 2, N'Burning Wood', 17, 4, 16, 1, 3, N'Nitrofurantion Macrocrystals', N'Pink', 93, 3)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (114, 3, N'1st', 31, 1, 19, 2, 2, N'nifedipine', N'Indigo', 82, 3)
INSERT [dbo].[Product] ([product_id], [image_id], [product_name], [product_price], [color_id], [product_quantity], [category_id], [status_id], [product_description], [product_code], [product_sale], [size_id]) VALUES (115, 2, N'Dahle', 8, 4, 18, 2, 1, N'PEGINTRON', N'Maroon', 17, 6)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([id], [role_name]) VALUES (2, N'Marketing')
INSERT [dbo].[Role] ([id], [role_name]) VALUES (3, N'Customer')
INSERT [dbo].[Role] ([id], [role_name]) VALUES (4, N'Sale')
INSERT [dbo].[Role] ([id], [role_name]) VALUES (5, N'Sale Manager')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([id], [names]) VALUES (1, 37)
INSERT [dbo].[Size] ([id], [names]) VALUES (2, 38)
INSERT [dbo].[Size] ([id], [names]) VALUES (3, 39)
INSERT [dbo].[Size] ([id], [names]) VALUES (4, 40)
INSERT [dbo].[Size] ([id], [names]) VALUES (5, 41)
INSERT [dbo].[Size] ([id], [names]) VALUES (6, 42)
INSERT [dbo].[Size] ([id], [names]) VALUES (7, 43)
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([id], [title], [createdate], [createby], [modifydate], [modifyby], [imageslide], [descriptions]) VALUES (1, N'Đôi giày “rách nát” của Balenciaga thực chất là sáng 
tạo nghệ thuật hay chỉ là chiêu trò truyền thông?', CAST(N'2022-05-19' AS Date), N'TuanAnh', NULL, NULL, N'girl1.jpg', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
INSERT [dbo].[Slide] ([id], [title], [createdate], [createby], [modifydate], [modifyby], [imageslide], [descriptions]) VALUES (2, N'10 bí mật đen tối của Nike mà 
chưa chắc bạn đã muốn biết', CAST(N'2022-05-19' AS Date), N'TuanAnh', NULL, NULL, N'girl2.jpg', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
INSERT [dbo].[Slide] ([id], [title], [createdate], [createby], [modifydate], [modifyby], [imageslide], [descriptions]) VALUES (3, N'Vans đã chiến thắng MSCHF tại tòa án 
về vụ kiện Wavy Baby', CAST(N'2022-05-19' AS Date), N'TuanAnh', NULL, NULL, N'girl3.jpg', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
SET IDENTITY_INSERT [dbo].[Status_product] ON 

INSERT [dbo].[Status_product] ([id], [status]) VALUES (1, N'Còn hàng')
INSERT [dbo].[Status_product] ([id], [status]) VALUES (2, N'Đang khuyến mãi')
INSERT [dbo].[Status_product] ([id], [status]) VALUES (3, N'Bán chạy')
INSERT [dbo].[Status_product] ([id], [status]) VALUES (4, N'Hết hàng')
INSERT [dbo].[Status_product] ([id], [status]) VALUES (5, N'Ngừng kinh doanh')
SET IDENTITY_INSERT [dbo].[Status_product] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([account_role])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Category_blog] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category_blog] ([id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_Category_blog]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Shipping]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status_Account]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status_order] FOREIGN KEY([status_id])
REFERENCES [dbo].[Status_order] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status_order]
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK_Order_Details_Order]
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK_Order_Details_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Color] FOREIGN KEY([color_id])
REFERENCES [dbo].[Color] ([color_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Color]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Image_product] FOREIGN KEY([image_id])
REFERENCES [dbo].[Image_product] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Image_product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Size] FOREIGN KEY([size_id])
REFERENCES [dbo].[Size] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Size]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Status_product] FOREIGN KEY([status_id])
REFERENCES [dbo].[Status_product] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Status_product]
GO
ALTER TABLE [dbo].[Productsize]  WITH CHECK ADD  CONSTRAINT [FK_Productsize_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Productsize] CHECK CONSTRAINT [FK_Productsize_Product]
GO
ALTER TABLE [dbo].[Productsize]  WITH CHECK ADD  CONSTRAINT [FK_Productsize_Size] FOREIGN KEY([size_id])
REFERENCES [dbo].[Size] ([id])
GO
ALTER TABLE [dbo].[Productsize] CHECK CONSTRAINT [FK_Productsize_Size]
GO
