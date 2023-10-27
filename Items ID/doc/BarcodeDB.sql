/****** Object:  Table [dbo].[bc_Language]    Script Date: 2005-2-28 11:25:50 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[bc_Language]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[bc_Language]
GO

/****** Object:  Table [dbo].[bc_Language]    Script Date: 2005-2-28 11:26:03 ******/
CREATE TABLE [dbo].[bc_Language] (
	[RID] [int] NOT NULL ,
	[LanguageID] [int] NULL ,
	[RCaption] [nvarchar] (200) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[bc_Language] WITH NOCHECK ADD 
	CONSTRAINT [PK_bc_Language] PRIMARY KEY  CLUSTERED 
	(
		[RID]
	)  ON [PRIMARY] 
GO
