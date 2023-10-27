USE [PHGDB_TEST]
GO
/****** Object:  Table [dbo].[PB_GatePass_M]    Script Date: 08/20/2007 14:11:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PB_GatePass_M](
	[IDO] [varchar](12) NOT NULL,
	[Company] [varchar](5) NULL,
	[Prjno] [varchar](20) NULL,
	[Sopno] [varchar](7) NULL,
	[ConfirmReserve] [int] NULL,--null: ; 0: not need reserve ; 1: need reserve; 2: Confirm Reserve; 3: Cancel Reserve
	[ConfirmTime] [datetime] NULL,
	[ConfirmUser] [nvarchar](15) NULL,
	[CancelTime] [datetime] NULL,
	[CancelUser] [nvarchar](15) NULL,
	[Remark] [nvarchar](255) NULL,
 CONSTRAINT [PK_PB_GatePass_M] PRIMARY KEY CLUSTERED 
(
	[IDO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF

