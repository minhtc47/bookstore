USE [AssgnPRJ]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/6/2023 10:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 3/6/2023 10:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/6/2023 10:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/6/2023 10:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/6/2023 10:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 3/6/2023 10:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 3/6/2023 10:04:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (1, N'aaa', N'123456', 1, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (2, N'Anjolie', N'234', 0, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (3, N'Ferris', N'234', 0, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (4, N'Katell', N'333', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (5, N'Zahir', N'2222', 1, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (6, N'Conan', N'3', 1, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (7, N'Cade', N'333', 1, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (8, N'Micah', N'2', 0, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (9, N'Rowan', N'3', 1, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (10, N'Kirby', N'3', 1, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (11, N'Tanisha', N'22', 0, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (12, N'Howard', N'2', 0, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (13, N'Tana', N'2', 0, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (14, N'Hadassah', N'2', 1, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (15, N'Echo', N'IGE8TN', 1, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (16, N'Slade', N'4', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (17, N'Devin', N'5', 1, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (18, N'Rowan', N'5', 1, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (19, N'Rafael', N'5', 1, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (20, N'Madaline', N'5', 0, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (21, N'Vera', N'5', 0, 1, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (22, N'Declan', N'5', 1, 1, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (23, N'Katell', N'5', 1, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (24, N'Summer', N'5', 0, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (25, N'Robin', N'5', 1, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (26, N'Dominique', N'5', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (27, N'admin', N'123', 1, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (28, N'mra', N'5', 0, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (29, N'mrb', N'123', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (30, N'Camden', N'123', 0, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (31, N'manhdsz', N'123456', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (32, N'sfdfds', N'123', 0, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (33, N'aaaaa', N'123', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (34, N'bbbb', N'1234', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (35, N'luong', N'123', 0, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (38, N'mit', N'123', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (39, N'aaaaaaaa', N'123', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (40, N'efef', N'123', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (41, N'fef', N'123', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (42, N'cd', N'1234', 0, 0, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (43, N'fefr', N'123', 1, 1, 1)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (44, N'fdef', N'123', 0, 0, 0)
GO
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (45, N'fds', N'123', 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Tiểu Thuyết')
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Văn Học')
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (6, N'Lịch Sử')
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (7, N'Khoa học viễn tưởng')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (46, 19, N'Nanh Trắng', N'https://salt.tikicdn.com/cache/280x280/media/catalog/product/n/a/nanh-trang-300.u335.d20160505.t105441.jpg', 140, 1)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (47, 19, N'Lịch Sử Hiện Đại', N'https://salt.tikicdn.com/ts/product/45/1b/c2/e23f8afc23074c835ab525f56a06d154.jpg', 150, 1)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (48, 20, N'Số Đỏ', N'https://cdn0.fahasa.com/media/catalog/product/s/o/so-do_vu-trong-phung_1.jpg', 100, 1)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (49, 21, N'Hai vạn dặm dưới đáy biển', N'https://cf.shopee.vn/file/60626de1fae2bd22c0ca5f768702abf1', 100, 1)
GO
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (50, 22, N'Star War', N'https://specials-images.forbesimg.com/imageserve/5d2675c34c687b00085c5503/Star-Wars/960x0.jpg?fit=scale', 160, 1)
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (19, 1, 290, N'hang de vo', CAST(N'2022-04-23' AS Date), 19)
GO
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (20, 1, 100, N'', CAST(N'2023-02-10' AS Date), 20)
GO
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (21, 4, 100, N'1', CAST(N'2023-02-10' AS Date), 21)
GO
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [create_date], [shipping_id]) VALUES (22, 1, 160, N'd', CAST(N'2023-02-11' AS Date), 22)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (21, N'Nanh trắng', N'https://salt.tikicdn.com/cache/280x280/media/catalog/product/n/a/nanh-trang-300.u335.d20160505.t105441.jpg', 160.0000, N'Nanh trắng', N'Nanh trắng', 3, 7)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (27, N'Tiếng gọi nơi hoang dã', N'https://salt.tikicdn.com/media/catalog/product/i/m/img226_11.jpg', 100.0000, N'Tiếng gọi nơi hoang dã', N'Tiếng gọi nơi hoang dã', 3, 6)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (28, N'Lịch sử hiện đại', N'https://salt.tikicdn.com/ts/product/45/1b/c2/e23f8afc23074c835ab525f56a06d154.jpg', 100.0000, N'Lịch sử hiện đại', N'Lịch sử hiện đại', 6, 1)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (29, N'Truyện Kiều', N'https://palda.vn/wp-content/uploads/2021/04/truyen-kieu.jpg', 120.0000, N'Truyện Kiều', N'Truyện Kiều', 4, 7)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (30, N'Số Đỏ', N'https://cdn0.fahasa.com/media/catalog/product/s/o/so-do_vu-trong-phung_1.jpg', 120.0000, N'Số Đỏ', N'Số Đỏ', 4, 7)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (31, N'HarryPotter', N'https://m.media-amazon.com/images/M/MV5BNmQ0ODBhMjUtNDRhOC00MGQzLTk5MTAtZDliODg5NmU5MjZhXkEyXkFqcGdeQXVyNDUyOTg3Njg@._V1_FMjpg_UX1000_.jpg', 165.0000, N'HarryPotter', N'HarryPotter', 3, 19)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (32, N'Sherlock Holmes', N'http://product.hstatic.net/1000237375/product/f8380fa2630080c89bd66910bacfa3ba_e71beff73a294b1aa792de04a8a6e1d2_grande.jpg', 150.0000, N'Sherlock Holmes', N'Sherlock Holmes', 3, 15)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (33, N'Star Treck', N'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781501146312/star-trek-the-original-series-the-weight-of-worlds-9781501146312_hr.jpg', 185.0000, N'Star Treck', N'Star Treck', 7, 18)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (34, N'Star War', N'https://specials-images.forbesimg.com/imageserve/5d2675c34c687b00085c5503/Star-Wars/960x0.jpg?fit=scale', 150.0000, N'Star War', N'Star War', 7, 17)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (35, N'Vạn dặm dưới đáy biển', N'https://cf.shopee.vn/file/60626de1fae2bd22c0ca5f768702abf1', 180.0000, N'Vạn dặm dưới đáy biển', N'Vạn dặm dưới đáy biển', 3, 15)
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (36, N'Kì án ánh trăng', N'https://salt.tikicdn.com/cache/w1200/ts/product/e0/a7/23/d12e2954a060f0344267a1292b7b1337.jpg', 200.0000, N'Kì án ánh trăng', N'Kì án ánh trăng', 3, 1)
GO
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 
GO
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (19, N'viet', N'12345678', N'hanoi')
GO
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (20, N'', N'', N'')
GO
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (21, N'1', N'1', N'1')
GO
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (22, N'd', N'd', N'd')
GO
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_product] FOREIGN KEY([AccountID])
REFERENCES [dbo].[product] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shipping]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Category]
GO
