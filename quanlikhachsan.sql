USE [master]
GO
/****** Object:  Database [QuanLiKhachSan_Nhom1]    Script Date: 04-Aug-20 12:01:12 PM ******/
CREATE DATABASE [QuanLiKhachSan_Nhom1]
 CONTAINMENT = NONE
  

GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLiKhachSan_Nhom1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLiKhachSan_Nhom1', N'ON'
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET QUERY_STORE = OFF
GO
USE [QuanLiKhachSan_Nhom1]
GO
/****** Object:  Table [dbo].[ChiPhatSinh]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiPhatSinh](
	[MaChiPhatSinh] [int] NOT NULL,
	[SoTienPhatSinh] [money] NULL,
	[MaNhanVien] [char](5) NULL,
	[MoTa] [ntext] NULL,
	[NgayPhatSinh] [datetime] NULL,
 CONSTRAINT [PK_ChiPhatSinh] PRIMARY KEY CLUSTERED 
(
	[MaChiPhatSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDichVu]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDichVu](
	[MaCTDV] [int] NOT NULL,
	[MaPhieuDichVu] [int] NULL,
	[MaDichVu] [int] NULL,
	[NgaySuDung] [datetime] NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_ChiTietDichVu] PRIMARY KEY CLUSTERED 
(
	[MaCTDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [char](4) NOT NULL,
	[TenChucVu] [nvarchar](20) NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPhieuThue]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPhieuThue](
	[MaChiTietPhieuThue] [int] NOT NULL,
	[MaPhieuThue] [int] NOT NULL,
	[MaKhachHang] [int] NOT NULL,
 CONSTRAINT [PK_CTPhieuThue] PRIMARY KEY CLUSTERED 
(
	[MaChiTietPhieuThue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDichVu] [int] NOT NULL,
	[TenDichVu] [varchar](30) NULL,
	[MaLoaiDichVu] [char](4) NULL,
	[SoLuongVatChat] [nchar](10) NULL,
	[MaVatChat] [nchar](10) NULL,
	[DonGia] [money] NULL,
	[DonVi] [nvarchar](15) NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[CMND] [varchar](12) NULL,
	[LoaiKhachHang] [char](5) NULL,
	[SDT] [varchar](11) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[NgaySinh] [nchar](10) NULL,
	[GioiTinh] [bit] NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[MaKhuVuc] [char](4) NOT NULL,
	[TenKhuVuc] [varchar](50) NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_KhuVuc] PRIMARY KEY CLUSTERED 
(
	[MaKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiDichVu]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDichVu](
	[MaLoaiDichVu] [char](4) NOT NULL,
	[TenLoaiDichVu] [nvarchar](30) NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_LoaiDichVu] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiKhachHang]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiKhachHang](
	[MaLoaiKhachHang] [char](5) NOT NULL,
	[TenLoaiKhachHang] [nvarchar](150) NULL,
	[PhanTramGiam] [int] NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_LoaiKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaLoaiKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLoaiPhong] [char](3) NOT NULL,
	[TenLoaiPhong] [nvarchar](50) NOT NULL,
	[GiaPhong] [money] NOT NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [char](5) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](11) NULL,
	[GioiTinh] [bit] NULL,
	[NgayVaoLam] [date] NULL,
	[MaChucVu] [char](4) NULL,
	[TenDangNhap] [varchar](30) NULL,
	[MatKhau] [varchar](30) NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDichVu]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDichVu](
	[MaPhieuDichVu] [int] NOT NULL,
	[NgayLapPhieu] [datetime] NULL,
	[MaPhieuThue] [int] NULL,
	[MaNhanVien] [char](5) NULL,
 CONSTRAINT [PK_PhieuDichVu] PRIMARY KEY CLUSTERED 
(
	[MaPhieuDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuThue]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThue](
	[MaPhieuThue] [int] NOT NULL,
	[MaPhong] [char](4) NULL,
	[MaNhanVien] [char](5) NULL,
	[NgayThue] [date] NOT NULL,
	[TienDatCoc] [money] NOT NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_PhieuThue] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [char](4) NOT NULL,
	[TenPhong] [nvarchar](50) NOT NULL,
	[MaKhuVuc] [char](4) NOT NULL,
	[MaLoaiPhong] [char](3) NOT NULL,
	[TinhTrangPhong] [nvarchar](20) NOT NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanDangNhap]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanDangNhap](
	[MaNhanVien] [char](5) NOT NULL,
	[TaiKhoan] [varchar](20) NULL,
	[MatKhau] [varchar](30) NULL,
 CONSTRAINT [PK_TaiKhoanDangNhap] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuPhatSinh]    Script Date: 04-Aug-20 12:01:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuPhatSinh](
	[MaPhatSinh] [int] NOT NULL,
	[MoTa] [ntext] NULL,
	[money] [money] NULL,
	[MaNhanVien] [char](5) NULL,
	[NgayPhatSinh] [datetime] NULL,
 CONSTRAINT [PK_ThuPhatSinh] PRIMARY KEY CLUSTERED 
(
	[MaPhatSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[KhuVuc] ([MaKhuVuc], [TenKhuVuc], [MoTa]) VALUES (N'KV01', N'ALL', N'Tất cả')
GO
INSERT [dbo].[LoaiKhachHang] ([MaLoaiKhachHang], [TenLoaiKhachHang], [PhanTramGiam], [MoTa]) VALUES (N'LKH01', N'Mới', 0, N'sprint 1')
GO
ALTER TABLE [dbo].[ChiPhatSinh]  WITH CHECK ADD  CONSTRAINT [FK_ChiPhatSinh_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ChiPhatSinh] CHECK CONSTRAINT [FK_ChiPhatSinh_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietDichVu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDichVu_DichVu] FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[DichVu] ([MaDichVu])
GO
ALTER TABLE [dbo].[ChiTietDichVu] CHECK CONSTRAINT [FK_ChiTietDichVu_DichVu]
GO
ALTER TABLE [dbo].[ChiTietDichVu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDichVu_PhieuDichVu] FOREIGN KEY([MaPhieuDichVu])
REFERENCES [dbo].[PhieuDichVu] ([MaPhieuDichVu])
GO
ALTER TABLE [dbo].[ChiTietDichVu] CHECK CONSTRAINT [FK_ChiTietDichVu_PhieuDichVu]
GO
ALTER TABLE [dbo].[CTPhieuThue]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuThue_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[CTPhieuThue] CHECK CONSTRAINT [FK_CTPhieuThue_KhachHang]
GO
ALTER TABLE [dbo].[CTPhieuThue]  WITH CHECK ADD  CONSTRAINT [FK_CTPhieuThue_PhieuThue] FOREIGN KEY([MaPhieuThue])
REFERENCES [dbo].[PhieuThue] ([MaPhieuThue])
GO
ALTER TABLE [dbo].[CTPhieuThue] CHECK CONSTRAINT [FK_CTPhieuThue_PhieuThue]
GO
ALTER TABLE [dbo].[DichVu]  WITH CHECK ADD  CONSTRAINT [FK_DichVu_LoaiDichVu] FOREIGN KEY([MaLoaiDichVu])
REFERENCES [dbo].[LoaiDichVu] ([MaLoaiDichVu])
GO
ALTER TABLE [dbo].[DichVu] CHECK CONSTRAINT [FK_DichVu_LoaiDichVu]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_LoaiKhachHang] FOREIGN KEY([LoaiKhachHang])
REFERENCES [dbo].[LoaiKhachHang] ([MaLoaiKhachHang])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_LoaiKhachHang]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoanDangNhap] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[TaiKhoanDangNhap] ([MaNhanVien])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoanDangNhap]
GO
ALTER TABLE [dbo].[PhieuThue]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThue_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuThue] CHECK CONSTRAINT [FK_PhieuThue_NhanVien]
GO
ALTER TABLE [dbo].[PhieuThue]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThue_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[PhieuThue] CHECK CONSTRAINT [FK_PhieuThue_Phong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_KhuVuc] FOREIGN KEY([MaKhuVuc])
REFERENCES [dbo].[KhuVuc] ([MaKhuVuc])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_KhuVuc]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[ThuPhatSinh]  WITH CHECK ADD  CONSTRAINT [FK_ThuPhatSinh_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[ThuPhatSinh] CHECK CONSTRAINT [FK_ThuPhatSinh_NhanVien]
GO
ALTER TABLE [dbo].[LoaiPhong]  WITH CHECK ADD  CONSTRAINT [CK_LoaiPhong_GiaPhong] CHECK  (([GiaPhong]>=(0)))
GO
ALTER TABLE [dbo].[LoaiPhong] CHECK CONSTRAINT [CK_LoaiPhong_GiaPhong]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LoaiPhong', @level2type=N'CONSTRAINT',@level2name=N'CK_LoaiPhong_GiaPhong'
GO
USE [master]
GO
ALTER DATABASE [QuanLiKhachSan_Nhom1] SET  READ_WRITE 
GO
