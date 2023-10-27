CREATE TABLE [dbo].[IE_bzgx](
	[Cz] [varchar](10) NULL,
	[Mc] [varchar](40) NULL,
	[Seq] [int] NULL,
	[Dh] [varchar](6) NOT NULL,
	[Id] [int] NOT NULL,
	[Flag] [varchar](1) NULL,
	[Nd] [int] NULL,
	[Sj] [float] NULL,
	[Dj1] [float] NULL,
	[Dj2] [float] NULL,
	[Czxh] [varchar](10) NULL,
	[Yzjzb] [varchar](6) NULL,
	[Mx] [varchar](16) NULL,
	[Dx] [varchar](16) NULL,
	[Cfzkcc] [float] NULL,
	[Zzkcc] [float] NULL,
	[Dzkcc] [float] NULL,
	[Zj] [float] NULL,
	[Zf] [float] NULL,
	[Fryd] [varchar](50) NULL,
	[Tplj] [varchar](100) NULL,
	[Wjm] [varchar](20) NULL,
	[Czbh] [varchar](5) NULL,
	[Czms] [varchar](50) NULL,
	[Ndxs] [float] NULL,
	[Cdxs] [float] NULL,
	[Sj1] [float] NULL,
	[Sj2] [float] NULL,
	[Bzdj] [float] NULL,
	[Emc] [varchar](60) NULL,
	[bjtmu] [float] NULL,
	[zdj] [float] NULL
)
go

--------------PRIMARY KEY--------------------------------------------------------
ALTER TABLE [dbo].[IE_bzgx] ADD 
	CONSTRAINT [PK_IE_bzgx] PRIMARY KEY  CLUSTERED 
	(
	[Dh] ASC,
	[Id] ASC

	)  ON [PRIMARY] 
GO
