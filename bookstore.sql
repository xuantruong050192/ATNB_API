USE [BookStore]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 5/15/2018 4:19:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](150) NOT NULL,
	[History] [nvarchar](150) NOT NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book]    Script Date: 5/15/2018 4:19:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[AuthorID] [int] NOT NULL,
	[PublisherID] [int] NOT NULL,
	[Summary] [nvarchar](200) NOT NULL,
	[ImgUrl] [nvarchar](150) NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [nvarchar](100) NOT NULL,
	[CreateDay] [date] NOT NULL,
	[ModifiedDay] [date] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BookStatus]    Script Date: 5/15/2018 4:19:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookStatus](
	[BookStatusID] [int] IDENTITY(1,1) NOT NULL,
	[BookStatusName] [nvarchar](50) NULL,
 CONSTRAINT [PK_BookStatus] PRIMARY KEY CLUSTERED 
(
	[BookStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/15/2018 4:19:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comment]    Script Date: 5/15/2018 4:19:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[CommentContent] [nvarchar](max) NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 5/15/2018 4:19:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[PublisherID] [int] IDENTITY(1,1) NOT NULL,
	[PublisherName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[PublisherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/15/2018 4:19:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Created] [nchar](10) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (1, N'Nguyen Truong', N'123456', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (2, N'Xuan An', N'123456', 1, CAST(N'2018-05-15T08:40:06.387' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (3, N'Nguyen An', N'123', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (4, N'Nguyen Binh', N'123', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (5, N'Nguyen Tien', N'123', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (6, N'Nam Cao', N'123', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (7, N'Tu Xuong', N'123', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (8, N'Tu Xuong', N'123', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (9, N'Tu Xuong', N'123', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (10, N'Tu Xuong', N'123', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (11, N'Tu Xuong', N'123', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (12, N'Tu Xuong', N'123', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (13, N'Tu Xuong', N'123', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (14, N'Tu Xuong', N'123', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (15, N'Tu Xuong', N'123', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (16, N'Tu Xuong', N'123', 0, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (17, N'Tu Xuong', N'123', 0, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (18, N'Tu Xuong', N'123', 0, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (19, N'Tu Xuong', N'123', 0, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (20, N'Tu Xuong', N'123', 0, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (21, N'Tu Xuong', N'123', 0, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (22, N'Tu Xuong', N'123', 0, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (23, N'Tu Xuong', N'123', 0, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (24, N'Tu Xuong', N'123', 0, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Author] ([AuthorID], [AuthorName], [History], [IsActive], [Created]) VALUES (25, N'Nhat anh', N'123', 0, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Author] OFF
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookID], [Title], [CategoryID], [AuthorID], [PublisherID], [Summary], [ImgUrl], [Price], [Quantity], [CreateDay], [ModifiedDay], [IsActive]) VALUES (1, N'1', 1, 1, 1, N'abc', N'1', 1, N'1', CAST(N'2017-05-15' AS Date), CAST(N'2017-05-15' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Book] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [Created]) VALUES (1, N'Truyen Tranh', N'truyen tranh tre nho', 0, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [Created]) VALUES (2, N'The thao', N'theo thao', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [Created]) VALUES (3, N'Truyen Tranh', N'truyen tranh', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [Created]) VALUES (4, N'1', N'1', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [Created]) VALUES (5, N'2', N'2', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [Created]) VALUES (6, N'3', N'3', 1, CAST(N'2017-05-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [Created]) VALUES (7, N'the thao', N'the thao', 1, CAST(N'2018-05-14T10:33:08.950' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [Created]) VALUES (8, N'kinh te', N'kinh te', 1, CAST(N'2018-05-14T10:33:21.633' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [Created]) VALUES (9, N'van hoa', N'van hoa', 1, CAST(N'2018-05-14T10:33:33.873' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [Created]) VALUES (10, N'van hoc ', N'van hoc ', 1, CAST(N'2018-05-14T10:34:50.677' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [Created]) VALUES (11, N'nghe thuat', N'nghe thuat ', 1, CAST(N'2018-05-14T10:35:02.790' AS DateTime))
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description], [IsActive], [Created]) VALUES (12, N'3', N'3', 0, CAST(N'2018-05-14T14:43:08.943' AS DateTime))
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (1, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (2, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (3, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (4, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (5, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (6, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (7, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (8, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (9, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (10, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (11, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (12, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (13, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (14, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (15, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (16, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (17, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (18, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (19, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (20, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (21, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (22, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (23, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (24, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (25, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (26, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (27, N'Tuoi Tre', N'Tuoi tre 1', 1, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (28, N'Tuoi Tre', N'Tuoi tre 1', 0, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Description], [IsActive], [Created]) VALUES (29, N'Tuoi Tre', N'Tuoi tre 1', 0, CAST(N'2018-05-15T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Publisher] OFF
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Author] ([AuthorID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publisher] FOREIGN KEY([PublisherID])
REFERENCES [dbo].[Publisher] ([PublisherID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Publisher]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Book] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Book]
GO
