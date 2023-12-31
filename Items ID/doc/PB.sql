/****** Object:  Table [dbo].[PB_COUNT]    Script Date: 2005-04-25 10:07:18 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PB_COUNT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PB_COUNT]
GO

/****** Object:  Table [dbo].[PB_FINALID]    Script Date: 2005-04-25 10:07:18 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PB_FINALID]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PB_FINALID]
GO

/****** Object:  Table [dbo].[PB_FTPIP]    Script Date: 2005-04-25 10:07:18 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PB_FTPIP]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PB_FTPIP]
GO

/****** Object:  Table [dbo].[PB_Functions]    Script Date: 2005-04-25 10:07:18 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PB_Functions]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PB_Functions]
GO

/****** Object:  Table [dbo].[PB_GATEPASS]    Script Date: 2005-04-25 10:07:18 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PB_GATEPASS]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PB_GATEPASS]
GO

/****** Object:  Table [dbo].[PB_HDO]    Script Date: 2005-04-25 10:07:18 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PB_HDO]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PB_HDO]
GO

/****** Object:  Table [dbo].[PB_Language]    Script Date: 2005-04-25 10:07:18 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PB_Language]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PB_Language]
GO

/****** Object:  Table [dbo].[PB_LanguageType]    Script Date: 2005-04-25 10:07:18 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PB_LanguageType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PB_LanguageType]
GO

/****** Object:  Table [dbo].[PB_Module]    Script Date: 2005-04-25 10:07:18 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PB_Module]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PB_Module]
GO

/****** Object:  Table [dbo].[PB_ModuleFunc]    Script Date: 2005-04-25 10:07:18 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PB_ModuleFunc]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PB_ModuleFunc]
GO

/****** Object:  Table [dbo].[PB_Power]    Script Date: 2005-04-25 10:07:18 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PB_Power]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PB_Power]
GO

/****** Object:  Table [dbo].[PB_RETURN]    Script Date: 2005-04-25 10:07:18 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PB_RETURN]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PB_RETURN]
GO

/****** Object:  Table [dbo].[PB_USER]    Script Date: 2005-04-25 10:07:18 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PB_USER]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PB_USER]
GO

/****** Object:  Table [dbo].[PB_COUNT]    Script Date: 2005-04-25 10:07:21 ******/
CREATE TABLE [dbo].[PB_COUNT] (
	[COUNT_NO] [varchar] (7) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[ITEM_CODE] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[LOT_ID] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[COMPUTER_QTY] [float] NOT NULL ,
	[COUNTED_QTY] [float] NOT NULL ,
	[UOM] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[STOCKROOM] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[COMPANY] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[COUNT_DATE] [smalldatetime] NULL ,
	[RANDOM_TAKE] [bit] NOT NULL ,
	[STATUS] [int] NOT NULL ,
	[RECORD_CREATED_DATE] [smalldatetime] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PB_FINALID]    Script Date: 2005-04-25 10:07:21 ******/
CREATE TABLE [dbo].[PB_FINALID] (
	[HDO_NO] [varchar] (8) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[ITEM_CODE] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[LOT_ID] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[ORG_QTY] [float] NOT NULL ,
	[CUR_BAL] [float] NOT NULL ,
	[UOM] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[STOCKROOM] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[COMPANY] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[NO_OF_COPIES] [int] NULL ,
	[NO_OF_ROLLS] [int] NOT NULL ,
	[MARKER_WIDTH] [float] NULL ,
	[PURCHASE_UOM] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[STATUS] [int] NOT NULL ,
	[RECORD_CREATED_DATE] [smalldatetime] NOT NULL ,
	[IsCheck] [bit] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PB_FTPIP]    Script Date: 2005-04-25 10:07:22 ******/
CREATE TABLE [dbo].[PB_FTPIP] (
	[FTPIP] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[FTPPORT] [int] NOT NULL ,
	[FTPUSER] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[FTPPWD] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[NEXT_RETURN_NO] [varchar] (10) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[HHTPORT] [int] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PB_Functions]    Script Date: 2005-04-25 10:07:22 ******/
CREATE TABLE [dbo].[PB_Functions] (
	[FID] [int] NOT NULL ,
	[FName] [varchar] (100) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PB_GATEPASS]    Script Date: 2005-04-25 10:07:22 ******/
CREATE TABLE [dbo].[PB_GATEPASS] (
	[SOP] [varchar] (7) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[PROJECT_NO] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[IDO] [varchar] (12) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[WORK_ORDER] [varchar] (7) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[LOT_ID] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[ISSUE_QTY] [float] NOT NULL ,
	[GATEPASS] [nvarchar] (50) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[UID] [varchar] (10) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[ITEM_CODE] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[COMPANY] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Stockroom] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[ISSUED_DATE] [datetime] NOT NULL ,
	[UOM] [varchar] (5) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[STATUS] [int] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PB_HDO]    Script Date: 2005-04-25 10:07:23 ******/
CREATE TABLE [dbo].[PB_HDO] (
	[HDO_NO] [varchar] (8) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[ITEM_CODE] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[LOT_ID] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[ORG_QTY] [float] NOT NULL ,
	[CUR_BAL] [float] NOT NULL ,
	[UOM] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[STOCKROOM] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[COMPANY] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[NO_OF_COPIES] [int] NULL ,
	[NO_OF_ROLLS] [int] NOT NULL ,
	[MARKER_WIDTH] [float] NULL ,
	[PURCHASE_UOM] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[STATUS] [int] NOT NULL ,
	[RECORD_CREATED_DATE] [smalldatetime] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PB_Language]    Script Date: 2005-04-25 10:07:23 ******/
CREATE TABLE [dbo].[PB_Language] (
	[RUnit] [varchar] (30) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[LanguageID] [int] NOT NULL ,
	[RID] [int] NOT NULL ,
	[RCaption] [nvarchar] (1000) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PB_LanguageType]    Script Date: 2005-04-25 10:07:23 ******/
CREATE TABLE [dbo].[PB_LanguageType] (
	[LanguageID] [int] NOT NULL ,
	[LanguageName] [nvarchar] (50) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[CharSetName] [varchar] (50) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Remark] [nvarchar] (500) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PB_Module]    Script Date: 2005-04-25 10:07:23 ******/
CREATE TABLE [dbo].[PB_Module] (
	[MID] [int] NOT NULL ,
	[MName] [varchar] (100) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PB_ModuleFunc]    Script Date: 2005-04-25 10:07:24 ******/
CREATE TABLE [dbo].[PB_ModuleFunc] (
	[RID] [int] NOT NULL ,
	[MID] [int] NOT NULL ,
	[FID] [int] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PB_Power]    Script Date: 2005-04-25 10:07:24 ******/
CREATE TABLE [dbo].[PB_Power] (
	[UID] [varchar] (10) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[RID] [int] NOT NULL ,
	[Enable] [bit] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PB_RETURN]    Script Date: 2005-04-25 10:07:24 ******/
CREATE TABLE [dbo].[PB_RETURN] (
	[RETURN_NO] [varchar] (10) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[ITEM_CODE] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[WORK_ORDER] [varchar] (7) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[LOT_ID] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[RETURN_QTY] [float] NOT NULL ,
	[UOM] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[RETURN_DATE] [smalldatetime] NOT NULL ,
	[STOCKROOM] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[COMPANY] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[STATUS] [int] NOT NULL ,
	[RECORD_CREATED_DATE] [smalldatetime] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PB_USER]    Script Date: 2005-04-25 10:07:24 ******/
CREATE TABLE [dbo].[PB_USER] (
	[UID] [varchar] (10) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[UPWD] [varchar] (10) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[SITE] [varchar] (3) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[IsAdmin] [bit] NULL ,
	[Remark] [text] COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[UR1] [bit] NULL ,
	[UR2] [bit] NULL ,
	[UR3] [bit] NULL ,
	[UR4] [bit] NULL ,
	[UR5] [bit] NULL ,
	[UR6] [bit] NULL ,
	[UR7] [bit] NULL ,
	[UR8] [bit] NULL ,
	[UR9] [bit] NULL ,
	[UR10] [bit] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[PB_COUNT] WITH NOCHECK ADD 
	CONSTRAINT [PK_PB_COUNT] PRIMARY KEY  CLUSTERED 
	(
		[COUNT_NO],
		[ITEM_CODE],
		[LOT_ID],
		[STOCKROOM],
		[COMPANY]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PB_FINALID] WITH NOCHECK ADD 
	CONSTRAINT [PK_PB_FINALID] PRIMARY KEY  CLUSTERED 
	(
		[HDO_NO],
		[ITEM_CODE],
		[LOT_ID],
		[STOCKROOM],
		[COMPANY]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PB_Functions] WITH NOCHECK ADD 
	CONSTRAINT [PK_PB_Functions] PRIMARY KEY  CLUSTERED 
	(
		[FID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PB_GATEPASS] WITH NOCHECK ADD 
	CONSTRAINT [PK_PB_GATEPASS] PRIMARY KEY  CLUSTERED 
	(
		[SOP],
		[WORK_ORDER],
		[LOT_ID],
		[ISSUED_DATE]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PB_HDO] WITH NOCHECK ADD 
	CONSTRAINT [PK_PB_HDO] PRIMARY KEY  CLUSTERED 
	(
		[HDO_NO],
		[ITEM_CODE],
		[LOT_ID],
		[STOCKROOM],
		[COMPANY]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PB_Language] WITH NOCHECK ADD 
	CONSTRAINT [PK_PB_Language] PRIMARY KEY  CLUSTERED 
	(
		[RUnit],
		[LanguageID],
		[RID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PB_LanguageType] WITH NOCHECK ADD 
	CONSTRAINT [PK_PB_LanguageType] PRIMARY KEY  CLUSTERED 
	(
		[LanguageID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PB_Module] WITH NOCHECK ADD 
	CONSTRAINT [PK_PB_module] PRIMARY KEY  CLUSTERED 
	(
		[MID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PB_ModuleFunc] WITH NOCHECK ADD 
	CONSTRAINT [PK_PB_ModuleFunc] PRIMARY KEY  CLUSTERED 
	(
		[RID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PB_Power] WITH NOCHECK ADD 
	CONSTRAINT [PK_PB_Power] PRIMARY KEY  CLUSTERED 
	(
		[UID],
		[RID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PB_RETURN] WITH NOCHECK ADD 
	CONSTRAINT [PK_PB_RETURN] PRIMARY KEY  CLUSTERED 
	(
		[LOT_ID],
		[COMPANY]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PB_USER] WITH NOCHECK ADD 
	CONSTRAINT [PK_PB_USER] PRIMARY KEY  CLUSTERED 
	(
		[UID]
	)  ON [PRIMARY] 
GO

