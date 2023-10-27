if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SYS_IDO]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SYS_IDO]
GO

CREATE TABLE [dbo].[SYS_IDO] (
	[FID] [int] IDENTITY (1, 1) NOT NULL ,
	[GUID] [uniqueidentifier] NOT NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SYS_IDO] WITH NOCHECK ADD 
	CONSTRAINT [PK_SYS_IDO] PRIMARY KEY  CLUSTERED 
	(
		[GUID]
	)  ON [PRIMARY] 
GO

CREATE PROCEDURE dbo.sp_GetMaxIDO
AS
begin
   declare @guid uniqueidentifier
   set @guid=newid()
   insert into SYS_IDO (guid) values (@guid)
   select FID from SYS_IDO where guid=@guid
end
GO
CREATE PROCEDURE dbo.sp_pb_IssueUpdate  
(@IDO varchar(12),@LOT_ID varchar(15),@Status int,@ISSUED_DATE  datetime,@State int  output)
AS
  declare @trnc int

begin
     BEGIN TRAN

     if @ISSUED_DATE='1900-01-01'
          update PB_GATEPASS set Status=@Status  where IDO=@IDO and LOT_ID=@LOT_ID
     else
          update PB_GATEPASS set Status=@Status, ISSUED_DATE=@ISSUED_DATE where IDO=@IDO  and LOT_ID=@LOT_ID


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

CREATE PROCEDURE dbo.sp_pb_CancelPickingIDO  
(@BH varchar(12),@UID varchar(10),@DT varchar(8))
AS
  declare @trnc int

begin
      BEGIN TRAN
      --1---update ido2 
        Update  IDO2 set status=0,FUser=IsNull(FUser,'')+'_'+@UID+'('+@DT+')'          
            from IDo2 a,PB_GATEPASS b
           where  a.bh=@BH
           and a.bh=b.IDO and ((b.ERPSuccess=0 and b.status=1) or b.status<>1) and a.idno=b.Lot_ID 
           and a.Zdh=b.WORK_ORDER and a.Wl=b.ITEM_CODE
      --2--update ido1
        Update IDO1 set ydc=0 where bh=@BH
     --3--delete PB_GATEPASS
        delete from PB_GATEPASS where IDO=@BH
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

CREATE PROCEDURE dbo.sp_pb_IDO1Update 
(@cono varchar(5),@bh varchar(12),@rq varchar(20),@sj varchar(20),@site varchar(3),@jlr varchar(15),
 @Prjno varchar(20),@Worder varchar(7),@sopno varchar(7),@Bm varchar(50),@Shr varchar(15),
 @Bmscx varchar(15),@Mem varchar(255),@Bm1 varchar(50),@ydc bit,@Insert bit)
 
AS

begin
      BEGIN TRAN
      --1--insert
      if (@Insert=1) 
          insert into ido1 (cono,bh,rq,sj,site,jlr,ydc)
                  values (@cono,@bh,@rq,@sj,@site,@jlr,@ydc) 
     --2--Update
     else
         Update IDO1 set cono=@cono,Prjno=@Prjno,Worder=@Worder,sopno=@sopno,Bm=@Bm,
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

CREATE PROCEDURE dbo.sp_pb_Update_IssueSubLotNo 
(@COMPANY varchar(2),@DATE datetime,@Stockroom varchar(2),
  @ITEM_CODE varchar(15),@LOT_ID varchar(15),@LOT_ID_Sub varchar(15))
AS
  declare @trnc int

begin
      BEGIN TRAN 

      update PB_GATEPASS set LOT_ID_Sub=@LOT_ID_Sub  
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