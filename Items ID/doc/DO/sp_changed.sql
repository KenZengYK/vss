USE [PHGDB2]
GO
/****** Object:  StoredProcedure [dbo].[sp_pb_IssueUpdate_New]    Script Date: 04/23/2012 10:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_pb_IssueUpdate_New_Unplanned]  
(@IDO varchar(12),@LOT_ID varchar(15),@Status int,@ISSUED_DATE  datetime,@UID nvarchar(20),@State int  output)
AS
  declare @trnc int

begin
     BEGIN TRAN

     if @ISSUED_DATE='1900-01-01'
          update PB_GATEPASS_Unplanned set Status=@Status, ConfirmBy=@UID,ConfirmDate=getdate()
              where IDO=@IDO and LOT_ID=@LOT_ID
     else
          update PB_GATEPASS_Unplanned set Status=@Status, ISSUED_DATE=@ISSUED_DATE , ConfirmBy=@UID,ConfirmDate=getdate()
              where IDO=@IDO  and LOT_ID=@LOT_ID


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

USE [PHGDB2]
GO
/****** Object:  StoredProcedure [dbo].[sp_pb_IDOConfirm_Reserve_MC_Unplanned]    Script Date: 04/23/2012 16:54:23 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
--create by peter 2005.04.23  PCBarcode system,confrim IDO--
ALTER PROCEDURE [dbo].[sp_pb_IDOConfirm_Reserve_MC_Unplanned]  
(@IDO varchar(12),@UID varchar(10),@Status_Issue int,@Status_ido2 int,@ydc bit,@reserveMaterial bit)
AS
  declare @trnc int

begin
      BEGIN TRAN
      --1---delete 
      delete PB_GATEPASS_Unplanned where IDO=@IDO  and  ((ERPSuccess=0 and status=1) or (status<>1))
      --2--insert
      insert into PB_GATEPASS_Unplanned(SOP,PROJECT_NO,IDO,WORK_ORDER,LOT_ID,ISSUE_QTY,GATEPASS,UID,RECORD_CREATED_DATE,UOM,ITEM_CODE,Status,COMPANY,StockRoom,Location,PGMN,PHISM,ColorShade,InspectedFlag,MOVR,PARENTWO) 
                                          select a.Sopno,a.Prjno,a.BH,b.zdh,b.Idno,b.qty,a.Bm1,@UID,GetDate(),b.UOM,b.WL,@Status_Issue,a.cono,b.StockRoom,b.wz,b.pgmn,b.PHISM,b.sz,b.InspectedFlag,MOVR,PARENTWO 
                                          from IDO1_Unplanned a,IDO2_Unplanned b
                                          where a.bh=b.bh and a.bh=@IDO  and  (b.status=0 or b.status is null)
     --3--Update IDO2
     update ido2_Unplanned set  status=@Status_ido2 where bh=@IDO and status<>@Status_ido2

     --4--Update IDO1
     update ido1_Unplanned set ydc=@ydc,ReserveMaterial=@reserveMaterial,ConfirmUser=@UID,ConfirmTime=GetDate() where bh=@IDO    

     delete from PB_GATEPASS_M where IDO=@IDO
     if (@reserveMaterial=1)
     begin
	  insert into PB_GATEPASS_M(IDO,Company,Prjno,Sopno,ConfirmReserve)  --,ConfirmTime,ConfirmUser,Remark
             select bh,cono,prjno,sopno,1 from ido1 where bh=@ido
     end
     else
     begin
	  insert into PB_GATEPASS_M(IDO,Company,Prjno,Sopno,ConfirmReserve)  --,ConfirmTime,ConfirmUser,Remark
             select bh,cono,prjno,sopno,0 from ido1 where bh=@ido
     end

       if  @@ERROR <>0 
       BEGIN
             --select @State= -1
             ROLLBACK TRAN
       END
       ELSE
       BEGIN
             --select @State=0
             COMMIT TRAN
       END
end


