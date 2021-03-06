USE [master]
GO
/****** Object:  Database [QLNhaTro]    Script Date: 6/25/2020 10:09:59 PM ******/
CREATE DATABASE [QLNhaTro]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLNhaTro', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLNhaTro.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLNhaTro_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLNhaTro_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLNhaTro] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNhaTro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNhaTro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNhaTro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNhaTro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNhaTro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNhaTro] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNhaTro] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLNhaTro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNhaTro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNhaTro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNhaTro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNhaTro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNhaTro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNhaTro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNhaTro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNhaTro] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLNhaTro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNhaTro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNhaTro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNhaTro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNhaTro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNhaTro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNhaTro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNhaTro] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLNhaTro] SET  MULTI_USER 
GO
ALTER DATABASE [QLNhaTro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNhaTro] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNhaTro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNhaTro] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLNhaTro] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLNhaTro] SET QUERY_STORE = OFF
GO
USE [QLNhaTro]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 6/25/2020 10:09:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[bill_ID] [char](4) NOT NULL,
	[room_ID] [char](4) NOT NULL,
	[customer_ID] [char](4) NOT NULL,
	[months] [date] NOT NULL,
	[service_money] [money] NOT NULL,
 CONSTRAINT [pk_bill] PRIMARY KEY CLUSTERED 
(
	[bill_ID] ASC,
	[room_ID] ASC,
	[customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking_room]    Script Date: 6/25/2020 10:09:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking_room](
	[room_ID] [char](4) NOT NULL,
	[customer_ID] [char](4) NOT NULL,
	[date_hire] [date] NOT NULL,
 CONSTRAINT [PK_Booking_room] PRIMARY KEY CLUSTERED 
(
	[room_ID] ASC,
	[customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 6/25/2020 10:09:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[customer_ID] [char](4) NOT NULL,
	[customer_name] [nvarchar](50) NOT NULL,
	[customer_age] [int] NOT NULL,
	[customer_address] [nvarchar](50) NOT NULL,
	[customer_gender] [nvarchar](50) NOT NULL,
	[customer_phone] [varchar](15) NOT NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 6/25/2020 10:09:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[ID] [char](4) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](20) NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 6/25/2020 10:09:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[room_ID] [char](4) NOT NULL,
	[type_room] [varchar](20) NOT NULL,
	[number_floor] [int] NOT NULL,
	[price] [int] NOT NULL,
	[status_room] [varchar](20) NOT NULL,
	[number_person] [int] NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[room_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[bill] ([bill_ID], [room_ID], [customer_ID], [months], [service_money]) VALUES (N'B01 ', N'R001', N'KH01', CAST(N'2020-02-02' AS Date), 20000.0000)
INSERT [dbo].[bill] ([bill_ID], [room_ID], [customer_ID], [months], [service_money]) VALUES (N'B02 ', N'R002', N'KH03', CAST(N'2020-02-02' AS Date), 20000.0000)
INSERT [dbo].[bill] ([bill_ID], [room_ID], [customer_ID], [months], [service_money]) VALUES (N'B03 ', N'R003', N'KH04', CAST(N'2020-10-02' AS Date), 20000.0000)
INSERT [dbo].[bill] ([bill_ID], [room_ID], [customer_ID], [months], [service_money]) VALUES (N'B04 ', N'R004', N'KH06', CAST(N'2020-02-02' AS Date), 30000.0000)
INSERT [dbo].[bill] ([bill_ID], [room_ID], [customer_ID], [months], [service_money]) VALUES (N'B05 ', N'R005', N'KH09', CAST(N'2020-02-02' AS Date), 90000.0000)
GO
INSERT [dbo].[Booking_room] ([room_ID], [customer_ID], [date_hire]) VALUES (N'R001', N'KH01', CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Booking_room] ([room_ID], [customer_ID], [date_hire]) VALUES (N'R001', N'KH02', CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Booking_room] ([room_ID], [customer_ID], [date_hire]) VALUES (N'R002', N'KH03', CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Booking_room] ([room_ID], [customer_ID], [date_hire]) VALUES (N'R003', N'KH04', CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Booking_room] ([room_ID], [customer_ID], [date_hire]) VALUES (N'R003', N'KH05', CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Booking_room] ([room_ID], [customer_ID], [date_hire]) VALUES (N'R004', N'KH06', CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Booking_room] ([room_ID], [customer_ID], [date_hire]) VALUES (N'R004', N'KH07', CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Booking_room] ([room_ID], [customer_ID], [date_hire]) VALUES (N'R004', N'KH08', CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Booking_room] ([room_ID], [customer_ID], [date_hire]) VALUES (N'R005', N'KH09', CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Booking_room] ([room_ID], [customer_ID], [date_hire]) VALUES (N'R005', N'KH10', CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Booking_room] ([room_ID], [customer_ID], [date_hire]) VALUES (N'R005', N'KH11', CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Booking_room] ([room_ID], [customer_ID], [date_hire]) VALUES (N'R005', N'KH12', CAST(N'2020-06-25' AS Date))
INSERT [dbo].[Booking_room] ([room_ID], [customer_ID], [date_hire]) VALUES (N'R006', N'KH13', CAST(N'2020-06-25' AS Date))
GO
INSERT [dbo].[customer] ([customer_ID], [customer_name], [customer_age], [customer_address], [customer_gender], [customer_phone]) VALUES (N'KH01', N'Đoàn Mạnh Cường', 21, N'Hà Nội', N'Nam', N'0979416401')
INSERT [dbo].[customer] ([customer_ID], [customer_name], [customer_age], [customer_address], [customer_gender], [customer_phone]) VALUES (N'KH02', N'Ninh Tuấn Doanh', 21, N'Hà Nội', N'Nam', N'0989293996')
INSERT [dbo].[customer] ([customer_ID], [customer_name], [customer_age], [customer_address], [customer_gender], [customer_phone]) VALUES (N'KH03', N'Nguyễn Quốc Cường', 21, N'Hà Nội', N'Nam', N'021472555845')
INSERT [dbo].[customer] ([customer_ID], [customer_name], [customer_age], [customer_address], [customer_gender], [customer_phone]) VALUES (N'KH04', N'Lê Mạnh Duy', 21, N'Hà Nội', N'Nam', N'0147852369')
INSERT [dbo].[customer] ([customer_ID], [customer_name], [customer_age], [customer_address], [customer_gender], [customer_phone]) VALUES (N'KH05', N'Nguyễn Bảo Đại', 21, N'Hà Nội', N'Nam', N'0236589415')
INSERT [dbo].[customer] ([customer_ID], [customer_name], [customer_age], [customer_address], [customer_gender], [customer_phone]) VALUES (N'KH06', N'Captain America', 21, N'American', N'Nam', N'047852365')
INSERT [dbo].[customer] ([customer_ID], [customer_name], [customer_age], [customer_address], [customer_gender], [customer_phone]) VALUES (N'KH07', N'Iron Man', 22, N'American', N'Nam', N'0147852666')
INSERT [dbo].[customer] ([customer_ID], [customer_name], [customer_age], [customer_address], [customer_gender], [customer_phone]) VALUES (N'KH08', N'Black Widow', 30, N'Franch', N'Nam', N'0789415201')
INSERT [dbo].[customer] ([customer_ID], [customer_name], [customer_age], [customer_address], [customer_gender], [customer_phone]) VALUES (N'KH09', N'Lê Văn A', 14, N'Hà Tây', N'Nữ', N'0177236585')
INSERT [dbo].[customer] ([customer_ID], [customer_name], [customer_age], [customer_address], [customer_gender], [customer_phone]) VALUES (N'KH10', N'Lê Thị B', 22, N'Hà Nam', N'Nữ', N'01478526325')
INSERT [dbo].[customer] ([customer_ID], [customer_name], [customer_age], [customer_address], [customer_gender], [customer_phone]) VALUES (N'KH11', N'Lê Duy C', 45, N'Hà Đông', N'Nữ', N'024531554475')
INSERT [dbo].[customer] ([customer_ID], [customer_name], [customer_age], [customer_address], [customer_gender], [customer_phone]) VALUES (N'KH12', N'Nguyễn Duy Công', 54, N'Hà Bắc', N'Nữ', N'01444566252')
INSERT [dbo].[customer] ([customer_ID], [customer_name], [customer_age], [customer_address], [customer_gender], [customer_phone]) VALUES (N'KH13', N'Lê Thị Anh', 80, N'Hà Đông', N'Nữ', N'0147774101')
GO
INSERT [dbo].[login] ([ID], [username], [password]) VALUES (N'A001', N'sa', N'123')
INSERT [dbo].[login] ([ID], [username], [password]) VALUES (N'A002', N'sa1', N'123')
INSERT [dbo].[login] ([ID], [username], [password]) VALUES (N'A003', N'sa2', N'123')
GO
INSERT [dbo].[Room] ([room_ID], [type_room], [number_floor], [price], [status_room], [number_person]) VALUES (N'R001', N'VIP', 1, 3000000, N'full', 2)
INSERT [dbo].[Room] ([room_ID], [type_room], [number_floor], [price], [status_room], [number_person]) VALUES (N'R002', N'thuong', 3, 2000000, N'full', 1)
INSERT [dbo].[Room] ([room_ID], [type_room], [number_floor], [price], [status_room], [number_person]) VALUES (N'R003', N'VIP', 4, 3000000, N'full', 2)
INSERT [dbo].[Room] ([room_ID], [type_room], [number_floor], [price], [status_room], [number_person]) VALUES (N'R004', N'thuong', 4, 2000000, N'full', 3)
INSERT [dbo].[Room] ([room_ID], [type_room], [number_floor], [price], [status_room], [number_person]) VALUES (N'R005', N'VIP', 5, 3000000, N'full', 4)
INSERT [dbo].[Room] ([room_ID], [type_room], [number_floor], [price], [status_room], [number_person]) VALUES (N'R006', N'thuong', 2, 2000000, N'full', 1)
INSERT [dbo].[Room] ([room_ID], [type_room], [number_floor], [price], [status_room], [number_person]) VALUES (N'R007', N'thuong', 2, 2000000, N'empty', 0)
INSERT [dbo].[Room] ([room_ID], [type_room], [number_floor], [price], [status_room], [number_person]) VALUES (N'R008', N'VIP', 5, 3000000, N'empty', 0)
INSERT [dbo].[Room] ([room_ID], [type_room], [number_floor], [price], [status_room], [number_person]) VALUES (N'R009', N'VIP', 2, 3000000, N'empty', 0)
INSERT [dbo].[Room] ([room_ID], [type_room], [number_floor], [price], [status_room], [number_person]) VALUES (N'R010', N'thuong', 4, 2000000, N'empty', 0)
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [fk_bill1] FOREIGN KEY([room_ID])
REFERENCES [dbo].[Room] ([room_ID])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [fk_bill1]
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [fk_bill2] FOREIGN KEY([customer_ID])
REFERENCES [dbo].[customer] ([customer_ID])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [fk_bill2]
GO
ALTER TABLE [dbo].[Booking_room]  WITH NOCHECK ADD  CONSTRAINT [FK_Booking_room1] FOREIGN KEY([room_ID])
REFERENCES [dbo].[Room] ([room_ID])
GO
ALTER TABLE [dbo].[Booking_room] CHECK CONSTRAINT [FK_Booking_room1]
GO
ALTER TABLE [dbo].[Booking_room]  WITH NOCHECK ADD  CONSTRAINT [FK_Booking_room2] FOREIGN KEY([customer_ID])
REFERENCES [dbo].[customer] ([customer_ID])
GO
ALTER TABLE [dbo].[Booking_room] CHECK CONSTRAINT [FK_Booking_room2]
GO
USE [master]
GO
ALTER DATABASE [QLNhaTro] SET  READ_WRITE 
GO
