USE [master]
GO
/****** Object:  Database [WebsiteNhaTro]     ******/
CREATE DATABASE WebsiteNhaTro
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebsiteNhaTro', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\WebsiteNhaTro.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebsiteNhaTro_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\WebsiteNhaTro_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebsiteNhaTro] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebsiteNhaTro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebsiteNhaTro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NhaTro] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [WebsiteNhaTro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebsiteNhaTro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebsiteNhaTro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebsiteNhaTro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebsiteNhaTro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebsiteNhaTro] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebsiteNhaTro] SET  MULTI_USER 
GO
ALTER DATABASE [WebsiteNhaTro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebsiteNhaTro] SET DB_CHAINING OFF 
GO
ALTER DATABASE WebsiteNhaTro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebsiteNhaTro] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [WebsiteNhaTro]
GO
/****** Object:  StoredProcedure [dbo].[kiemtraquyen]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[kiemtra_quyen]
@Tendangnhap nvarchar(50)
as
select Idtaikhoan from DangKi where Tendangnhap = @Tendangnhap

GO
/****** Object:  StoredProcedure [dbo].[login_form]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Login_form1]
@taikhoan nvarchar(50),
@matkhau nvarchar(50)
as
select * from DangKi where Tendangnhap = @taikhoan and Matkhau = @matkhau

GO
/****** Object:  Table [dbo].[DangKy]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKi](
	[Idtaikhoan] [int] NOT NULL,
	[Tendangnhap] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Matkhau] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](100) NULL,
	[Sodienthoai] [nvarchar](50) NULL,
		
 CONSTRAINT [PK_DangKi] PRIMARY KEY CLUSTERED 
(
	[Tendangnhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[SanPham]    Script Date: 6/29/2018 2:20:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham1](
	[MaSanPham] [int] NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[GiaSanPham] [nvarchar](20) NULL,
	[HinhSanPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham1] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[ChiTietSanPham]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPham](
	[MaSanPham] [int] NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[GiaSanPham] [nvarchar](20) NULL,
	[HinhSanPham] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ThongTinChiTiet] [nvarchar](200) NULL,
 CONSTRAINT [PK_ChiTietSanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

INSERT [dbo].[DangKi] ([Idtaikhoan], [Tendangnhap], [Email], [Matkhau], [Diachi], [Sodienthoai]) VALUES (1, N'anh', N'a@gmail.com', N'anhhoang123', N'Bình Dương', N'0912345678')
INSERT [dbo].[DangKi] ([Idtaikhoan], [Tendangnhap], [Email], [Matkhau], [Diachi], [Sodienthoai]) VALUES (1, N'vy', N'vy@gmail.com', N'vyvy123', N'Đà Nẵng', N'0913567897')
INSERT [dbo].[DangKi] ([Idtaikhoan], [Tendangnhap], [Email], [Matkhau], [Diachi], [Sodienthoai]) VALUES (1, N'giang', N'giang@gmail.com', N'giang123', N'TP Hồ Chí MInh', N'0965300619')
INSERT [dbo].[DangKi] ([Idtaikhoan], [Tendangnhap], [Email], [Matkhau], [Diachi], [Sodienthoai]) VALUES (1, N'lien', N'lien@gmail.com', N'lien123', N'Bình Định', N'0365232323')
INSERT [dbo].[DangKi] ([Idtaikhoan], [Tendangnhap], [Email], [Matkhau], [Diachi], [Sodienthoai]) VALUES (2, N'admin', N'nguyenthimyduyen2397@gmail.com', N'admin123', N'Bình Dương', N'0965008795')
INSERT [dbo].[DangKi] ([Idtaikhoan], [Tendangnhap], [Email], [Matkhau], [Diachi], [Sodienthoai]) VALUES (1, N'hoa', N'huynhhoa8697@gmail.com', N'hoa123', N'An Giang', N'0967778888')

INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (0, N'NHÀ TRỌ Ở THỦ DẦU MỘT 1', N'GIÁ:', N'images/nhatro_TDM_1.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (10, N'NHÀ TRỌ Ở THỦ DẦU MỘT 10', N'GIÁ: ', N'images/nhatro_TDM_2.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (2, N'NHÀ TRỌ Ở THỦ DẦU MỘT 2', N'GIÁ:lIÊN HỆ', N'images/nhatro_TDM_3.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (3, N'NHÀ TRỌ Ở THỦ DẦU MỘT 3', N'GIÁ:1 300 000', N'images/nhatro_TDM_4.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (4, N'NHÀ TRỌ Ở THỦ DẦU MỘT 4', N'GIÁ:1 300 000', N'images/nhatro_TDM_5.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (8, N'NHÀ TRỌ Ở THỦ DẦU MỘT 8', N'GIÁ:1 500 000', N'images/nhatro_TDM_6.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (5, N'NHÀ TRỌ Ở THỦ DẦU MỘT 5', N'GIÁ:1 200 000', N'images/nhatro_TDM_7.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (6, N'NHÀ TRỌ Ở THỦ DẦU MỘT 6', N'GIÁ:800 000', N'images/nhatro_TDM_8.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (11, N'NHÀ TRỌ Ở THỦ DẦU MỘT 11', N'GIÁ:800 000', N'images/nhatro_TDM_9.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (9, N'NHÀ TRỌ Ở THỦ DẦU MỘT 9 ', N'GIÁ:800 000', N'images/nhatro_TDM_10.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (13, N'NHÀ TRỌ Ở THỦ DẦU MỘT 13', N'GIÁ:800 000', N'images/nhatro_TDM_11.JPG')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (14, N'NHÀ TRỌ Ở THỦ DẦU MỘT 14', N'GIÁ:800 000', N'images/nhatro_TDM_12.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (7, N'NHÀ TRỌ Ở THỦ DẦU MỘT 7', N'GIÁ:1 500 000', N'images/nhatro_TDM_13.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (15, N'NHÀ TRỌ Ở THỦ DẦU MỘT 15', N'GIÁ:1 300 000', N'images/nhatro_TDM_14.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (16, N'NHÀ TRỌ Ở THỦ DẦU MỘT 16', N'GIÁ:2 000 000', N'images/nhatro_TDM_15.jpg')

INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (30, N'NHÀ TRỌ Ở THUẬN AN ', N'GIÁ:900 000', N'images/NT_ThuanAn_1.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (20, N'NHÀ TRỌ Ở THUẬN AN', N'GIÁ:850 000', N'images/NT_ThuanAn_2.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (31, N'NHÀ TRỌ Ở DĨ AN', N'GIÁ:800 000', N'images/Di AN_1.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (40, N'NHÀ TRỌ Ở TÂN UYÊN', N'GIÁ:950 000', N'images/nhatro_TanUyen_1.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (21, N'NHÀ TRỌ Ở THUẬN AN', N'GIÁ: 1 000 000', N'images/NT_ThuanAn_3.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (32, N'NHÀ TRỌ Ở THUẬN AN', N'GIÁ:800 000', N'images/NT_ThuanAn_4.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (22, N'NHÀ TRỌ Ở THUẬN AN', N'GIÁ:1 400 000', N'images/NT_ThuanAn_5.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (33, N'NHÀ TRỌ Ở BẾN CÁT', N'GIÁ:800 000', N'images/nhatro_BenCat_1.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (23, N'NHÀ TRỌ Ở DĨ AN', N'GIÁ:850 000', N'images/Di AN_2.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (24, N'NHÀ TRỌ Ở DĨ AN', N'GIÁ:1 300 000', N'images/Di AN_3.jpg')
INSERT [dbo].[SanPham1] ([MaSanPham], [TenSanPham], [GiaSanPham], [HinhSanPham]) VALUES (25, N'NHÀ TRỌ Ở DĨ AN', N'GIÁ:1 200 000', N'images/Di AN_4.jpg')













