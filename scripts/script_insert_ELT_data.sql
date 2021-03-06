USE [master]
GO
/****** Object:  Database [ETL_FINAL_DWB301]    Script Date: 03/13/2022 2:57:42 PM ******/
CREATE DATABASE [ETL_FINAL_DWB301]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ETL_FINAL_DWB301', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ETL_FINAL_DWB301.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ETL_FINAL_DWB301_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ETL_FINAL_DWB301_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ETL_FINAL_DWB301].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET ARITHABORT OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET  MULTI_USER 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET QUERY_STORE = OFF
GO
USE [ETL_FINAL_DWB301]
GO
/****** Object:  Schema [production]    Script Date: 03/13/2022 2:57:42 PM ******/
CREATE SCHEMA [production]
GO
/****** Object:  Schema [sales]    Script Date: 03/13/2022 2:57:42 PM ******/
CREATE SCHEMA [sales]
GO
/****** Object:  Table [dbo].[ELT_FINAL_CHECK]    Script Date: 03/13/2022 2:57:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELT_FINAL_CHECK](
	[discount_code] [varchar](50) NULL,
	[discount_price] [varchar](50) NULL,
	[store_id] [varchar](50) NULL,
	[quantity] [varchar](50) NULL,
	[store_id (1)] [varchar](50) NULL,
	[store_name] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[street] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[zip_code] [varchar](50) NULL,
	[staff_id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[active] [varchar](50) NULL,
	[manager_id] [varchar](50) NULL,
	[customer_id] [varchar](50) NULL,
	[first_name (1)] [varchar](50) NULL,
	[last_name (1)] [varchar](50) NULL,
	[zip_code (1)] [varchar](50) NULL,
	[order_id] [varchar](50) NULL,
	[order_status] [varchar](50) NULL,
	[order_date] [varchar](50) NULL,
	[required_date] [varchar](50) NULL,
	[shipped_date] [varchar](50) NULL,
	[discount_id] [varchar](50) NULL,
	[total_amount] [varchar](50) NULL,
	[brand_id] [varchar](50) NULL,
	[brand_name] [varchar](50) NULL,
	[product_name] [varchar](50) NULL,
	[category_id] [varchar](50) NULL,
	[model_year] [varchar](50) NULL,
	[list_price] [varchar](50) NULL,
	[category_name] [varchar](50) NULL,
	[item_id] [varchar](50) NULL,
	[quantity (1)] [varchar](50) NULL,
	[list_price (1)] [varchar](50) NULL,
	[discount] [varchar](50) NULL,
	[product_id (1)] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [production].[brands]    Script Date: 03/13/2022 2:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [production].[brands](
	[brand_id] [int] IDENTITY(1,1) NOT NULL,
	[brand_name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [production].[categories]    Script Date: 03/13/2022 2:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [production].[categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [production].[products]    Script Date: 03/13/2022 2:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [production].[products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](255) NOT NULL,
	[brand_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[model_year] [smallint] NOT NULL,
	[list_price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [production].[stocks]    Script Date: 03/13/2022 2:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [production].[stocks](
	[store_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[store_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sales].[customers]    Script Date: 03/13/2022 2:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[customers](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NOT NULL,
	[phone] [varchar](25) NULL,
	[email] [varchar](255) NOT NULL,
	[street] [varchar](255) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](25) NULL,
	[zip_code] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sales].[order_items]    Script Date: 03/13/2022 2:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[order_items](
	[order_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[list_price] [decimal](10, 2) NOT NULL,
	[discount] [decimal](4, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sales].[orders]    Script Date: 03/13/2022 2:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NULL,
	[order_status] [tinyint] NOT NULL,
	[order_date] [date] NOT NULL,
	[required_date] [date] NOT NULL,
	[shipped_date] [date] NULL,
	[store_id] [int] NOT NULL,
	[staff_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sales].[staffs]    Script Date: 03/13/2022 2:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[staffs](
	[staff_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[phone] [varchar](25) NULL,
	[active] [tinyint] NOT NULL,
	[store_id] [int] NOT NULL,
	[manager_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sales].[stores]    Script Date: 03/13/2022 2:57:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[stores](
	[store_id] [int] IDENTITY(1,1) NOT NULL,
	[store_name] [varchar](255) NOT NULL,
	[phone] [varchar](25) NULL,
	[email] [varchar](255) NULL,
	[street] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[state] [varchar](10) NULL,
	[zip_code] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[store_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [sales].[order_items] ADD  DEFAULT ((0)) FOR [discount]
GO
ALTER TABLE [production].[products]  WITH CHECK ADD FOREIGN KEY([brand_id])
REFERENCES [production].[brands] ([brand_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [production].[products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [production].[categories] ([category_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [production].[stocks]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [production].[products] ([product_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [production].[stocks]  WITH CHECK ADD FOREIGN KEY([store_id])
REFERENCES [sales].[stores] ([store_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [sales].[order_items]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [sales].[orders] ([order_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [sales].[order_items]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [production].[products] ([product_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [sales].[orders]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [sales].[customers] ([customer_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [sales].[orders]  WITH CHECK ADD FOREIGN KEY([staff_id])
REFERENCES [sales].[staffs] ([staff_id])
GO
ALTER TABLE [sales].[orders]  WITH CHECK ADD FOREIGN KEY([store_id])
REFERENCES [sales].[stores] ([store_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [sales].[staffs]  WITH CHECK ADD FOREIGN KEY([manager_id])
REFERENCES [sales].[staffs] ([staff_id])
GO
ALTER TABLE [sales].[staffs]  WITH CHECK ADD FOREIGN KEY([store_id])
REFERENCES [sales].[stores] ([store_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [ETL_FINAL_DWB301] SET  READ_WRITE 
GO
