USE [master]
GO
/****** Object:  Database [QuanLiThuVien]    Script Date: 5/13/2023 11:18:07 AM ******/
CREATE DATABASE [QuanLiThuVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLiThuVien', FILENAME = N'D:\SQLSerVer_Windownform\QuanLiThuVien.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLiThuVien_log', FILENAME = N'D:\SQLSerVer_Windownform\QuanLiThuVien_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLiThuVien] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLiThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLiThuVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLiThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLiThuVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLiThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLiThuVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLiThuVien] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLiThuVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLiThuVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLiThuVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLiThuVien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLiThuVien] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLiThuVien] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLiThuVien] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLiThuVien] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLiThuVien]
GO
/****** Object:  Table [dbo].[BanDoc]    Script Date: 5/13/2023 11:18:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanDoc](
	[MaBanDoc] [nchar](10) NOT NULL,
	[TenBanDoc] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_BanDoc] PRIMARY KEY CLUSTERED 
(
	[MaBanDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 5/13/2023 11:18:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNhaCungCap] [nchar](10) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/13/2023 11:18:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nchar](10) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuonTra]    Script Date: 5/13/2023 11:18:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuonTra](
	[MaPhieu] [nchar](10) NOT NULL,
	[MaBanDoc] [nchar](10) NULL,
	[NgayMuon] [date] NULL,
	[NgayTra] [date] NULL,
 CONSTRAINT [PK_PhieuMuonTra] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuonTraSach]    Script Date: 5/13/2023 11:18:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuonTraSach](
	[MaPhieu] [nchar](10) NOT NULL,
	[MaSach] [nchar](10) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_PhieuMuonTraSach] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 5/13/2023 11:18:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [nchar](10) NOT NULL,
	[MaNhaCungCap] [nchar](10) NULL,
	[MaNhanVien] [nchar](10) NULL,
	[NgayLap] [date] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhapSach]    Script Date: 5/13/2023 11:18:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapSach](
	[MaPhieuNhap] [nchar](10) NOT NULL,
	[MaSach] [nchar](10) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_PhieuNhapSach] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 5/13/2023 11:18:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [nchar](10) NOT NULL,
	[TenSach] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDangNhap]    Script Date: 5/13/2023 11:18:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDangNhap](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[phanquyen] [bit] NULL,
 CONSTRAINT [PK_tblDangNhap] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BanDoc] ([MaBanDoc], [TenBanDoc], [DiaChi]) VALUES (N'dinhphuc  ', N'Nguyễn Đình Phúc', N'Bình Dương')
INSERT [dbo].[BanDoc] ([MaBanDoc], [TenBanDoc], [DiaChi]) VALUES (N'hngoc2002 ', N'Vũ Hoài Ngọc', N'Điện Biên	')
INSERT [dbo].[BanDoc] ([MaBanDoc], [TenBanDoc], [DiaChi]) VALUES (N'huyba2004 ', N'Lê Huy Ba', N'An Giang')
INSERT [dbo].[BanDoc] ([MaBanDoc], [TenBanDoc], [DiaChi]) VALUES (N'huyenmy21 ', N'Vũ Huyền My', N'Đắk Nông')
INSERT [dbo].[BanDoc] ([MaBanDoc], [TenBanDoc], [DiaChi]) VALUES (N'lemai     ', N'Lê Thị Mai', N'Hải Dương')
INSERT [dbo].[BanDoc] ([MaBanDoc], [TenBanDoc], [DiaChi]) VALUES (N'manhduc07 ', N'Vũ Mạnh Đức', N'Hậu Giang')
INSERT [dbo].[BanDoc] ([MaBanDoc], [TenBanDoc], [DiaChi]) VALUES (N'minhtri02 ', N'Nguyễn Minh Trí', N'Đồng Tháp')
INSERT [dbo].[BanDoc] ([MaBanDoc], [TenBanDoc], [DiaChi]) VALUES (N'thinga2002', N'Lê Thị Nga', N'Bạc Liêu')
INSERT [dbo].[BanDoc] ([MaBanDoc], [TenBanDoc], [DiaChi]) VALUES (N'ThuHuyen04', N'Võ Thu Huyền', N'Hà Giang	')
INSERT [dbo].[BanDoc] ([MaBanDoc], [TenBanDoc], [DiaChi]) VALUES (N'thuThuy02 ', N'Võ Thu Thủy', N'Hà Nam')
INSERT [dbo].[BanDoc] ([MaBanDoc], [TenBanDoc], [DiaChi]) VALUES (N'tuananh   ', N'Nguyễn Tuấn Anh', N'Đắk Nông')
GO
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap]) VALUES (N'bk        ', N'Trường Đại học Bách Khoa Hà Nội')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap]) VALUES (N'ftu       ', N'Đại Học Ngoại Thương')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap]) VALUES (N'hbt       ', N'Học viện Báo chí và Tuyên truyền')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap]) VALUES (N'hnt       ', N'Học viện Thanh thiếu niên Việt Nam')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap]) VALUES (N'Neu       ', N'Trường Đại học Kinh Tế Quốc Dân')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap]) VALUES (N'nhh       ', N'Học viện Ngân Hàng')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap]) VALUES (N'nono      ', N'Nhà sách Thùy tiên')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap]) VALUES (N'Uneti     ', N'Trường Đại học Kinh tế Kỹ thuật - Công nghiệp')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap]) VALUES (N'yhb       ', N'Đại Học Y Hà Nội')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien]) VALUES (N'NV1       ', N'Trần Long Hải')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien]) VALUES (N'NV2       ', N'Nguyễn Xuân Khoa')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien]) VALUES (N'NV3       ', N'Nguyễn Thành Kiên')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien]) VALUES (N'NV4       ', N'Nguyễn Văn Qúy')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien]) VALUES (N'NV5       ', N'Bùi Nhật Minh')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien]) VALUES (N'NV6       ', N'Nguyễn Minh Nhật')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien]) VALUES (N'NV7       ', N'Nguyễn Anh Minh')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien]) VALUES (N'NV8       ', N'Nguyễn Minh Trung')
GO
INSERT [dbo].[PhieuMuonTra] ([MaPhieu], [MaBanDoc], [NgayMuon], [NgayTra]) VALUES (N'MP1       ', N'dinhphuc  ', CAST(N'2023-01-13' AS Date), CAST(N'2023-01-16' AS Date))
INSERT [dbo].[PhieuMuonTra] ([MaPhieu], [MaBanDoc], [NgayMuon], [NgayTra]) VALUES (N'MP2       ', N'hngoc2002 ', CAST(N'2023-02-02' AS Date), CAST(N'2023-02-05' AS Date))
INSERT [dbo].[PhieuMuonTra] ([MaPhieu], [MaBanDoc], [NgayMuon], [NgayTra]) VALUES (N'MP3       ', N'huyba2004 ', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-03' AS Date))
INSERT [dbo].[PhieuMuonTra] ([MaPhieu], [MaBanDoc], [NgayMuon], [NgayTra]) VALUES (N'MP4       ', N'huyenmy21 ', CAST(N'2023-03-05' AS Date), CAST(N'2023-03-08' AS Date))
INSERT [dbo].[PhieuMuonTra] ([MaPhieu], [MaBanDoc], [NgayMuon], [NgayTra]) VALUES (N'MP5       ', N'lemai     ', CAST(N'2023-02-05' AS Date), CAST(N'2023-02-09' AS Date))
INSERT [dbo].[PhieuMuonTra] ([MaPhieu], [MaBanDoc], [NgayMuon], [NgayTra]) VALUES (N'MP6       ', N'ThuHuyen04', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-04' AS Date))
GO
INSERT [dbo].[PhieuMuonTraSach] ([MaPhieu], [MaSach], [SoLuong]) VALUES (N'MP1       ', N'S1        ', 1)
INSERT [dbo].[PhieuMuonTraSach] ([MaPhieu], [MaSach], [SoLuong]) VALUES (N'MP1       ', N'S10       ', 2)
INSERT [dbo].[PhieuMuonTraSach] ([MaPhieu], [MaSach], [SoLuong]) VALUES (N'MP1       ', N'S11       ', 1)
INSERT [dbo].[PhieuMuonTraSach] ([MaPhieu], [MaSach], [SoLuong]) VALUES (N'MP1       ', N'S9        ', 1)
INSERT [dbo].[PhieuMuonTraSach] ([MaPhieu], [MaSach], [SoLuong]) VALUES (N'MP4       ', N'S3        ', 2)
INSERT [dbo].[PhieuMuonTraSach] ([MaPhieu], [MaSach], [SoLuong]) VALUES (N'MP5       ', N'S9        ', 1)
GO
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [MaNhanVien], [NgayLap]) VALUES (N'MPN1      ', N'bk        ', N'NV1       ', CAST(N'2023-01-11' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [MaNhanVien], [NgayLap]) VALUES (N'MPN2      ', N'ftu       ', N'NV2       ', CAST(N'2023-02-02' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [MaNhanVien], [NgayLap]) VALUES (N'MPN3      ', N'hbt       ', N'NV3       ', CAST(N'2023-01-01' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [MaNhanVien], [NgayLap]) VALUES (N'MPN4      ', N'hnt       ', N'NV4       ', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [MaNhanVien], [NgayLap]) VALUES (N'MPN5      ', N'bk        ', N'NV5       ', CAST(N'2021-05-05' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [MaNhanVien], [NgayLap]) VALUES (N'MPN6      ', N'Uneti     ', N'NV6       ', CAST(N'2023-01-01' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [MaNhanVien], [NgayLap]) VALUES (N'MPN7      ', N'nono      ', N'NV7       ', CAST(N'2019-01-01' AS Date))
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [MaNhaCungCap], [MaNhanVien], [NgayLap]) VALUES (N'MPN8      ', N'nhh       ', N'NV3       ', CAST(N'2020-02-02' AS Date))
GO
INSERT [dbo].[PhieuNhapSach] ([MaPhieuNhap], [MaSach], [SoLuong]) VALUES (N'MPN1      ', N'S1        ', 3)
INSERT [dbo].[PhieuNhapSach] ([MaPhieuNhap], [MaSach], [SoLuong]) VALUES (N'MPN1      ', N'S11       ', 7)
INSERT [dbo].[PhieuNhapSach] ([MaPhieuNhap], [MaSach], [SoLuong]) VALUES (N'MPN1      ', N'S9        ', 2)
INSERT [dbo].[PhieuNhapSach] ([MaPhieuNhap], [MaSach], [SoLuong]) VALUES (N'MPN2      ', N'S10       ', 5)
INSERT [dbo].[PhieuNhapSach] ([MaPhieuNhap], [MaSach], [SoLuong]) VALUES (N'MPN2      ', N'S12       ', 3)
INSERT [dbo].[PhieuNhapSach] ([MaPhieuNhap], [MaSach], [SoLuong]) VALUES (N'MPN2      ', N'S8        ', 3)
INSERT [dbo].[PhieuNhapSach] ([MaPhieuNhap], [MaSach], [SoLuong]) VALUES (N'MPN3      ', N'S8        ', 2)
INSERT [dbo].[PhieuNhapSach] ([MaPhieuNhap], [MaSach], [SoLuong]) VALUES (N'MPN4      ', N'S12       ', 3)
INSERT [dbo].[PhieuNhapSach] ([MaPhieuNhap], [MaSach], [SoLuong]) VALUES (N'MPN5      ', N'S2        ', 1)
INSERT [dbo].[PhieuNhapSach] ([MaPhieuNhap], [MaSach], [SoLuong]) VALUES (N'MPN7      ', N'S6        ', 8)
GO
INSERT [dbo].[Sach] ([MaSach], [TenSach]) VALUES (N'S1        ', N'Học lập trình không khó')
INSERT [dbo].[Sach] ([MaSach], [TenSach]) VALUES (N'S10       ', N'Lập Trình C++, C#')
INSERT [dbo].[Sach] ([MaSach], [TenSach]) VALUES (N'S11       ', N'Lập trình với Flutter')
INSERT [dbo].[Sach] ([MaSach], [TenSach]) VALUES (N'S12       ', N'Lập trình app Android studio( Andoid native)')
INSERT [dbo].[Sach] ([MaSach], [TenSach]) VALUES (N'S2        ', N'Khéo ăn khéo nói sẽ có được thiên hạ')
INSERT [dbo].[Sach] ([MaSach], [TenSach]) VALUES (N'S3        ', N'Thám tử lừng danh Conan')
INSERT [dbo].[Sach] ([MaSach], [TenSach]) VALUES (N'S4        ', N'Bác Hồ sống mãi')
INSERT [dbo].[Sach] ([MaSach], [TenSach]) VALUES (N'S5        ', N'Toán rời rạc')
INSERT [dbo].[Sach] ([MaSach], [TenSach]) VALUES (N'S6        ', N'Lập trình java')
INSERT [dbo].[Sach] ([MaSach], [TenSach]) VALUES (N'S7        ', N'Quản Trị Mạng')
INSERT [dbo].[Sach] ([MaSach], [TenSach]) VALUES (N'S8        ', N'Tư tường Hồ Chí Minh')
INSERT [dbo].[Sach] ([MaSach], [TenSach]) VALUES (N'S9        ', N'Công nghệ Phần mềm')
GO
INSERT [dbo].[tblDangNhap] ([username], [password], [phanquyen]) VALUES (N'admin', N'admin123456', 1)
GO
ALTER TABLE [dbo].[PhieuMuonTra]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuonTra_BanDoc] FOREIGN KEY([MaBanDoc])
REFERENCES [dbo].[BanDoc] ([MaBanDoc])
GO
ALTER TABLE [dbo].[PhieuMuonTra] CHECK CONSTRAINT [FK_PhieuMuonTra_BanDoc]
GO
ALTER TABLE [dbo].[PhieuMuonTraSach]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuonTraSach_PhieuMuonTra] FOREIGN KEY([MaPhieu])
REFERENCES [dbo].[PhieuMuonTra] ([MaPhieu])
GO
ALTER TABLE [dbo].[PhieuMuonTraSach] CHECK CONSTRAINT [FK_PhieuMuonTraSach_PhieuMuonTra]
GO
ALTER TABLE [dbo].[PhieuMuonTraSach]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuonTraSach_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[PhieuMuonTraSach] CHECK CONSTRAINT [FK_PhieuMuonTraSach_Sach]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
ALTER TABLE [dbo].[PhieuNhapSach]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapSach_PhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[PhieuNhapSach] CHECK CONSTRAINT [FK_PhieuNhapSach_PhieuNhap]
GO
ALTER TABLE [dbo].[PhieuNhapSach]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapSach_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[PhieuNhapSach] CHECK CONSTRAINT [FK_PhieuNhapSach_Sach]
GO
USE [master]
GO
ALTER DATABASE [QuanLiThuVien] SET  READ_WRITE 
GO
