
ALTER TABLE [dbo].[ido1] WITH NOCHECK ADD 
	CONSTRAINT [PK_ido1] PRIMARY KEY  CLUSTERED 
	(
		[Bh]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ido2] WITH NOCHECK ADD 
	CONSTRAINT [PK_ido2] PRIMARY KEY  CLUSTERED 
	(
		[Bh],
		[Idno],
		[Zdh],
		[Wl]
	)  ON [PRIMARY] 
GO


		[IDO],
		[WORK_ORDER],
		[LOT_ID],
		[ITEM_CODE],
		[COMPANY],
		[Stockroom]


ALTER TABLE [dbo].[PB_GATEPASS]  ADD 
	CONSTRAINT [PK_PB_GATEPASS] PRIMARY KEY  CLUSTERED 
	(
		[IDO],
		[WORK_ORDER],
		[LOT_ID],
		[ITEM_CODE],
		[COMPANY],
		[Stockroom]
	)  ON [PRIMARY] 
GO
----------------------------



if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ido1_Unplanned]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ido1_Unplanned]
GO

/****** Object:  Table [dbo].[ido1_Unplanned]    Script Date: 2006-10-12 9:50:12 ******/
CREATE TABLE [dbo].[ido1_Unplanned] (
	[Bh] [varchar] (12) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[Rq] [smalldatetime] NULL ,
	[Sj] [datetime] NULL ,
	[Bm] [nvarchar] (50) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Bm1] [nvarchar] (50) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Shr] [nvarchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Jlr] [nvarchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Sopno] [varchar] (7) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Bmscx] [nvarchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Mem] [nvarchar] (1000) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Worder] [varchar] (7) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Cono] [varchar] (5) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Ydc] [bit] NULL ,
	[Prjno] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Site] [varchar] (3) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[ConfirmTime] [datetime] NULL 
) ON [PRIMARY]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ido2_Unplanned]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ido2_Unplanned]
GO
/****** Object:  Table [dbo].[ido2_Unplanned]    Script Date: 2006-10-12 9:50:13 ******/
CREATE TABLE [dbo].[ido2_Unplanned] (
	[Bh] [varchar] (12) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[Oper] [int] NULL ,
	[Idno] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[Zdh] [varchar] (7) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[Wl] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[Uwidth] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[StockRoom] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Sh] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Sz] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Qaresult] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Cd] [float] NULL ,
	[Ufd] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Mfd] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Qty] [float] NULL ,
	[Uom] [varchar] (5) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[pgmn] [varchar] (3) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Wz] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Opdesc] [varchar] (50) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Sy] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Gh] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[Aqty] [float] NULL ,
	[Status] [int] NULL ,
	[MOVR] [varchar] (2) NULL,
	[PHISM] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[SuppBatch] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[FUser] [varchar] (200) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[CreateDate] [smalldatetime] NULL ,
	[InspectedFlag] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ido1_Unplanned] WITH NOCHECK ADD 
	CONSTRAINT [PK_ido1_Unplanned] PRIMARY KEY  CLUSTERED 
	(
		[Bh]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ido2_Unplanned] WITH NOCHECK ADD 
	CONSTRAINT [PK_ido2_Unplanned] PRIMARY KEY  CLUSTERED 
	(
		[Bh],
		[Idno],
		[Zdh],
		[Wl]
	)  ON [PRIMARY] 
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SYS_IDO_Unplanned]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SYS_IDO_Unplanned]
GO

CREATE TABLE [dbo].[SYS_IDO_Unplanned] (
	[FID] [int] IDENTITY (1, 1) NOT NULL ,
	[GUID] [uniqueidentifier] NOT NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SYS_IDO_Unplanned] WITH NOCHECK ADD 
	CONSTRAINT [PK_SYS_IDO_Unplanned] PRIMARY KEY  CLUSTERED 
	(
		[GUID]
	)  ON [PRIMARY] 
GO


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PB_GATEPASS_Unplanned]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PB_GATEPASS_Unplanned]
GO

CREATE TABLE [dbo].[PB_GATEPASS_Unplanned] (
	[SOP] [varchar] (7) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[PROJECT_NO] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[IDO] [varchar] (12) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[WORK_ORDER] [varchar] (7) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[LOT_ID] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[ISSUE_QTY] [float] NOT NULL ,
	[GATEPASS] [nvarchar] (50) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[UID] [varchar] (10) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[ITEM_CODE] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[COMPANY] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[Stockroom] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[ISSUED_DATE] [smalldatetime] NULL ,
	[UOM] [varchar] (5) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[Location] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[pgmn] [varchar] (3) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[STATUS] [int] NOT NULL ,
	[MOVR] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[ERPSuccess] [bit] NULL ,
	[LOT_ID_Sub] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[RECORD_CREATED_DATE] [datetime] NULL ,
	[PHISM] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[ColorShade] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[FERROR] [varchar] (30) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[InspectedFlag] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PB_GATEPASS_Unplanned]  ADD 
	CONSTRAINT [PK_PB_GATEPASS_Unplanned] PRIMARY KEY  CLUSTERED 
	(
		[IDO],
		[WORK_ORDER],
		[LOT_ID],
		[ITEM_CODE],
		[COMPANY],
		[Stockroom]
	)  ON [PRIMARY] 
GO


if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[IDOMatchingLog_Unplanned]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[IDOMatchingLog_Unplanned]
GO

CREATE TABLE [dbo].[IDOMatchingLog_Unplanned] (
	[CONO] [varchar] (2) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[LOTNO] [varchar] (15) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[IDO] [varchar] (12) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[WORDER] [varchar] (7) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL ,
	[FDATE] [datetime] NOT NULL ,
	[Prjno] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL ,
	[FUSER] [varchar] (20) COLLATE Chinese_Taiwan_Stroke_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[IDOMatchingLog_Unplanned] WITH NOCHECK ADD 
	CONSTRAINT [PK_IDOMatchingLog_Unplanned] PRIMARY KEY  CLUSTERED 
	(
		[CONO],
		[LOTNO],
		[IDO],
		[WORDER],
		[FDATE]
	)  ON [PRIMARY] 
GO


--===============store procedure=====================================================================================================================
--=================================================
CREATE PROCEDURE dbo.sp_GetMaxIDO_Unplanned
AS
begin
   declare @guid uniqueidentifier
   set @guid=newid()
   insert into SYS_IDO_Unplanned (guid) values (@guid)
   select FID from SYS_IDO_Unplanned where guid=@guid
end


CREATE PROCEDURE dbo.sp_pb_IssueUpdate_Unplanned  
(@IDO varchar(12),@LOT_ID varchar(15),@Status int,@ISSUED_DATE  datetime,@State int  output)
AS
  declare @trnc int

begin
     BEGIN TRAN

     if @ISSUED_DATE='1900-01-01'
          update PB_GATEPASS_Unplanned set Status=@Status  where IDO=@IDO and LOT_ID=@LOT_ID
     else
          update PB_GATEPASS_Unplanned set Status=@Status, ISSUED_DATE=@ISSUED_DATE where IDO=@IDO  and LOT_ID=@LOT_ID


       if  @@ERROR <>0 
       BEGIN
             select @State= -1
             ROLLBACK TRAN
       END
       ELSE
       BEGIN
                select @State=0
                COMMIT TRAN
       END
end
GO

CREATE PROCEDURE dbo.sp_pb_CancelPickingIDO_Unplanned  
(@BH varchar(12),@UID varchar(10),@DT varchar(8))
AS
  declare @trnc int

begin
      BEGIN TRAN
      --1---update ido2 
        Update  IDO2_Unplanned set status=0,FUser=IsNull(FUser,'')+'_'+@UID+'('+@DT+')'          
            from IDo2_Unplanned a,PB_GATEPASS_Unplanned b
           where  a.bh=@BH
           and a.bh=b.IDO and ((b.ERPSuccess=0 and b.status=1) or b.status<>1) and a.idno=b.Lot_ID 
           and a.Zdh=b.WORK_ORDER and a.Wl=b.ITEM_CODE
      --2--update ido1
        Update IDO1_Unplanned set ydc=0 where bh=@BH
     --3--delete PB_GATEPASS
        delete from PB_GATEPASS_Unplanned where IDO=@BH
            and  ((status=1 and ERPSuccess=0) or status<>1)



       if  @@ERROR <>0 
       BEGIN
             
             ROLLBACK TRAN
       END
       ELSE
       BEGIN
             
             COMMIT TRAN
       END
end
GO

CREATE PROCEDURE dbo.sp_pb_IDO1Update_Unplanned  
(@cono varchar(5),@bh varchar(12),@rq varchar(20),@sj varchar(20),@site varchar(3),@jlr varchar(15),
 @Prjno varchar(20),@Worder varchar(7),@sopno varchar(7),@Bm varchar(50),@Shr varchar(15),
 @Bmscx varchar(15),@Mem varchar(255),@Bm1 varchar(50),@ydc bit,@Insert bit)
 
AS

begin
      BEGIN TRAN
      --1--insert
      if (@Insert=1) 
          insert into ido1_Unplanned (cono,bh,rq,sj,site,jlr,ydc)
                  values (@cono,@bh,@rq,@sj,@site,@jlr,@ydc) 
     --2--Update
     else
         Update IDO1_Unplanned set cono=@cono,Prjno=@Prjno,Worder=@Worder,sopno=@sopno,Bm=@Bm,
                         Shr=@Shr,Bmscx=@Bmscx,Mem=@Mem,ydc=@ydc,Bm1=@Bm1 
         where bh=@bh


       if  @@ERROR <>0 
       BEGIN
             ROLLBACK TRAN
       END
       ELSE
       BEGIN
             COMMIT TRAN
       END
end
GO

CREATE PROCEDURE dbo.sp_pb_IDOConfirm_Unplanned  
(@IDO varchar(12),@UID varchar(10),@Status_Issue int,@Status_ido2 int,@ydc bit,@State int  output)
AS
  declare @trnc int

begin
      BEGIN TRAN
      --1---delete 
      delete PB_GATEPASS_Unplanned where IDO=@IDO  and  ((ERPSuccess=0 and status=1) or (status<>1))
      --2--insert
      insert into PB_GATEPASS_Unplanned(SOP,PROJECT_NO,IDO,WORK_ORDER,LOT_ID,ISSUE_QTY,GATEPASS,UID,RECORD_CREATED_DATE,UOM,ITEM_CODE,Status,COMPANY,StockRoom,Location,PGMN,PHISM,ColorShade,InspectedFlag,MOVR) 
                                          select a.Sopno,a.Prjno,a.BH,b.zdh,b.Idno,b.qty,a.Bm1,@UID,GetDate(),b.UOM,b.WL,@Status_Issue,a.cono,b.StockRoom,b.wz,b.pgmn,b.PHISM,b.sz,b.InspectedFlag,MOVR 
                                          from IDO1_Unplanned a,IDO2_Unplanned b
                                          where a.bh=b.bh and a.bh=@IDO  and  (b.status=0 or b.status is null) 
     --3--Update IDO2
     update ido2_Unplanned set  status=@Status_ido2 where bh=@IDO and status<>@Status_ido2

     --4--Update IDO1
     update ido1_Unplanned set ydc=@ydc,ConfirmTime=GetDate() where bh=@IDO    


       if  @@ERROR <>0 
       BEGIN
             select @State= -1
             ROLLBACK TRAN
       END
       ELSE
       BEGIN
             select @State=0
             COMMIT TRAN
       END
end
GO


CREATE PROCEDURE dbo.sp_PB_IDOMatching_Select_Unplanned
(  
  @IDO varchar(12),
  @LotNo varchar(15),
  @SopNo varchar(7),
  @WorderNo varchar(7),
  @Project varchar(20),
  @ItemCode varchar(15)
)
AS

BEGIN

  SELECT * FROM 
  (
      SELECT A.*,B.IDNO,B.ZDH,B.STOCKROOM,B.WL,B.QTY, B.STATUS AS BSTATUS,C.STATUS AS CSTATUS,C.ERPSUCCESS,B.STATUS AS ISCHECK
      FROM IDO1_Unplanned A INNER JOIN IDO2_Unplanned B ON (A.BH=B.BH)
        LEFT JOIN PB_GATEPASS_Unplanned C 
           ON (B.BH=C.IDO AND B.IDNO=C.LOT_ID AND B.ZDH=C.WORK_ORDER AND B.WL=C.ITEM_CODE AND A.CONO=C.COMPANY AND B.STOCKROOM=C.STOCKROOM)
      WHERE ( @LotNo  =''    OR (@LotNo<>''    AND UPPER(B.IDNO)  LIKE (@LotNo + '%') ))
        AND ( @SopNo  =''    OR (@SopNo<>''    AND UPPER(A.SOPNO) LIKE (@SopNo + '%') ))
        AND ( @WorderNo  ='' OR (@WorderNo<>'' AND UPPER(B.ZDH)   LIKE (@WorderNo + '%') ))
        AND ( @Project   ='' OR (@Project<>''  AND UPPER(A.PRJNO) LIKE (@Project + '%') ))
        AND ( @ItemCode  ='' OR (@ItemCode<>'' AND UPPER(B.WL)    LIKE (@ItemCode + '%') ))
        AND ( @IDO  =''      OR (@IDO<>''      AND UPPER(A.BH)    LIKE (@IDO + '%') ))
  ) AA
  WHERE (CStatus is null or CStatus<>1 or (CStatus=1 and ERPSuccess=0))
      

END
GO


CREATE PROCEDURE dbo.sp_PB_IDOMatching_Unlock_Unplanned  
(
  @IDO varchar(12), 
  @LOTID varchar(15), 
  @CONO varchar(2), 
  @Word varchar(7), 
  @Itemcode varchar(15),
  @Prjno varchar(20),
  @FUser varchar(20),
  @IsWarehouse int
)
AS
  Declare @FSuccess int
begin
      BEGIN TRAN

	--1.Warehouse-- 
        if (@IsWarehouse=1)
	begin
           delete from PB_GATEPASS_Unplanned 
	   where IDO=@IDO and Lot_ID=@LOTID and company=@CONO and WORK_ORDER=@word and ITEM_CODE=@Itemcode
	     and ((status=1 and ERPSuccess=0) or status<>1)
	end

	--2.PMC-------
        delete from ido2_Unplanned where bh=@IDO  and idno=@LOTID and Zdh=@word and wl=@Itemcode
        
	--3.Log--------
       Insert into IDOMatchingLog_Unplanned (CONO,LOTNO,IDO,WORDER,Prjno,FUSER,FDATE)
       Values (@CONO,@LOTID,@IDO,@Word,@Prjno,@FUser,GetDate())

       if  @@ERROR <>0
       begin
             ROLLBACK TRAN
	     set @FSuccess=0
	     select @FSuccess
       end
       ELSE
       begin
             COMMIT TRAN
	     set @FSuccess=1
	     select @FSuccess
       end
end
GO

CREATE PROCEDURE dbo.sp_pb_Update_ErpSuccess  
(@COMPANY varchar(2),@WORK_ORDER varchar(7),@DATE datetime,@Stockroom varchar(2),
  @ITEM_CODE varchar(15),@LOT_ID varchar(15),@ErpSuccess  bit,@type int,@IDO varchar(20),
  @FERROR varchar(30)='')
AS
  declare @trnc int
  declare @ErpSuccess_old bit
begin

     if @type=0   --Return
     begin
        select @ErpSuccess_old=ErpSuccess from PB_RETURN
         where    RETURN_NO=@IDO  and   COMPANY=@COMPANY and LOT_ID=@LOT_ID and WORK_ORDER=@WORK_ORDER
                    and RETURN_DATE=@DATE and Stockroom=@Stockroom and ITEM_CODE=@ITEM_CODE

       if (@ErpSuccess_old=1) return

     end
     else  if @type=1   --Issue
     begin
        select @ErpSuccess_old=ErpSuccess from PB_GATEPASS
         where         COMPANY=@COMPANY and LOT_ID=@LOT_ID and WORK_ORDER=@WORK_ORDER and IDO=@IDO
                    and ISSUED_DATE=@DATE and Stockroom=@Stockroom and ITEM_CODE=@ITEM_CODE

        if (@ErpSuccess_old=1) return

     end
     else    if @type=2   --Stock Take
     begin
        select @ErpSuccess_old=ErpSuccess from PB_COUNT
         where    COUNT_NO=@IDO and  COMPANY=@COMPANY and LOT_ID=@LOT_ID 
                     and Stockroom=@Stockroom and ITEM_CODE=@ITEM_CODE

        if (@ErpSuccess_old=1) return

     end
     else  if @type=3   --Unplanned Issue
     begin
        select @ErpSuccess_old=ErpSuccess from PB_GATEPASS_Unplanned
         where         COMPANY=@COMPANY and LOT_ID=@LOT_ID and WORK_ORDER=@WORK_ORDER and IDO=@IDO
                    and ISSUED_DATE=@DATE and Stockroom=@Stockroom and ITEM_CODE=@ITEM_CODE

        if (@ErpSuccess_old=1) return

     end

     BEGIN TRAN
     if @type=0   --Return
     begin
         update PB_RETURN  set ErpSuccess=@ErpSuccess,FERROR=@FERROR  
         where    RETURN_NO=@IDO  and  COMPANY=@COMPANY and LOT_ID=@LOT_ID and WORK_ORDER=@WORK_ORDER
                    and RETURN_DATE=@DATE and Stockroom=@Stockroom and ITEM_CODE=@ITEM_CODE
     end
     else  if @type=1   --Issue
     begin
         update PB_GATEPASS set ErpSuccess=@ErpSuccess,FERROR=@FERROR  
         where         COMPANY=@COMPANY and LOT_ID=@LOT_ID and WORK_ORDER=@WORK_ORDER and IDO=@IDO
                    and ISSUED_DATE=@DATE and Stockroom=@Stockroom and ITEM_CODE=@ITEM_CODE
     end
     else    if @type=2   --Stock Take
     begin
         update PB_COUNT set ErpSuccess=@ErpSuccess,FERROR=@FERROR  
         where   COUNT_NO=@IDO and   COMPANY=@COMPANY and LOT_ID=@LOT_ID 
                     and Stockroom=@Stockroom and ITEM_CODE=@ITEM_CODE
     end
     else  if @type=3   --Unplanned Issue
     begin
         update PB_GATEPASS_Unplanned set ErpSuccess=@ErpSuccess,FERROR=@FERROR  
         where         COMPANY=@COMPANY and LOT_ID=@LOT_ID and WORK_ORDER=@WORK_ORDER and IDO=@IDO
                    and ISSUED_DATE=@DATE and Stockroom=@Stockroom and ITEM_CODE=@ITEM_CODE
     end
    
       if  @@ERROR <>0 
       BEGIN 
             ROLLBACK TRAN
       END
       ELSE
       BEGIN
                COMMIT TRAN
       END
end
GO

CREATE PROCEDURE dbo.sp_pb_Update_IssueSubLotNo_Unplanned  
(@COMPANY varchar(2),@DATE datetime,@Stockroom varchar(2),
  @ITEM_CODE varchar(15),@LOT_ID varchar(15),@LOT_ID_Sub varchar(15))
AS
  declare @trnc int

begin
      BEGIN TRAN 

      update PB_GATEPASS_Unplanned set LOT_ID_Sub=@LOT_ID_Sub  
      where   COMPANY=@COMPANY and LOT_ID = @LOT_ID and ERPSuccess=1
          and ISSUED_DATE=@DATE and Stockroom=@Stockroom and ITEM_CODE=@ITEM_CODE
    
       if  @@ERROR <>0 
       BEGIN
             ROLLBACK TRAN 
       END
       ELSE
       BEGIN
                COMMIT TRAN
       END
end
GO


CREATE PROCEDURE dbo.sp_pb_Update_Location  
(@COMPANY varchar(2),@ITEM_CODE varchar(15),
  @LOT_ID varchar(15),@IDO varchar(12),@Location varchar(15))
AS
  declare @trnc int

begin
      BEGIN TRAN 

      IF (LEFT(@IDO,3)='IDO')
      BEGIN
        update PB_GATEPASS set Location=@Location  
        where   IDO=@IDO and COMPANY=@COMPANY and LOT_ID = @LOT_ID and ITEM_CODE=@ITEM_CODE  --and ERPSuccess<>1             
      END
      ELSE IF (LEFT(@IDO,3)='UPI')
      BEGIN
        update PB_GATEPASS_Unplanned set Location=@Location  
        where   IDO=@IDO and COMPANY=@COMPANY and LOT_ID = @LOT_ID and ITEM_CODE=@ITEM_CODE  --and ERPSuccess<>1             
      END

       if  @@ERROR <>0 
       BEGIN
             ROLLBACK TRAN 
       END
       ELSE
       BEGIN
                COMMIT TRAN
       END
end
GO