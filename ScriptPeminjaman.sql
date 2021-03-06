USE [DB_ASSIGN]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 26/05/2020 13.56.20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstAlat]    Script Date: 26/05/2020 13.56.20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstAlat](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LaboratoryId] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Jumlah] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime] NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.MstAlat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstBiodata]    Script Date: 26/05/2020 13.56.20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstBiodata](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Bp] [nvarchar](10) NOT NULL,
	[Deskripsi] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime] NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.MstBiodata] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstDetail]    Script Date: 26/05/2020 13.56.20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstDetail](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ToolId] [bigint] NOT NULL,
	[BiodataId] [bigint] NOT NULL,
	[awal] [date] NULL,
	[akhir] [date] NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime] NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.MstDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstdetailPeminjaman]    Script Date: 26/05/2020 13.56.20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstdetailPeminjaman](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ToolId] [bigint] NOT NULL,
	[BiodataId] [bigint] NOT NULL,
	[DetaiId] [bigint] NOT NULL,
	[Keterangan] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime] NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.MstdetailPeminjaman] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstLaboratory]    Script Date: 26/05/2020 13.56.20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstLaboratory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Initial] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Deskripsi] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime] NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.MstLaboratory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
