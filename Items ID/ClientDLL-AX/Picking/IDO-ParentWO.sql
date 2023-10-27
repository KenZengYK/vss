USE [PHGDB2]
GO

alter table ido2 
add  PARENTWO varchar(20) null
go

alter table ido2_Unplanned 
add  PARENTWO varchar(20) null
go

alter table PB_GATEPASS 
add  PARENTWO varchar(20) null
go

alter table PB_GATEPASS_Unplanned 
add  PARENTWO varchar(20) null
go


USE [PHGDB2]
GO

SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
--create by peter 2005.04.23  PCBarcode system,confrim IDO--
ALTER PROCEDURE [dbo].[sp_pb_IDOConfirm_Reserve_MC]  
(@IDO varchar(12),@UID varchar(10),@Status_Issue int,@Status_ido2 int,@ydc bit,@reserveMaterial bit)
AS
  declare @trnc int

begin
      BEGIN TRAN
      --1---delete 
      delete PB_GATEPASS where IDO=@IDO  and  ((ERPSuccess=0 and status=1) or (status<>1))
      --2--insert
      insert into PB_GATEPASS(SOP,PROJECT_NO,IDO,WORK_ORDER,LOT_ID,ISSUE_QTY,GATEPASS,UID,RECORD_CREATED_DATE,UOM,ITEM_CODE,Status,COMPANY,StockRoom,Location,PGMN,PHISM,ColorShade,InspectedFlag,OrigQTY,PARENTWO) 
                                          select a.Sopno,a.Prjno,a.BH,b.zdh,b.Idno,b.qty,a.Bm1,@UID,GetDate(),b.UOM,b.WL,@Status_Issue,a.cono,b.StockRoom,b.wz,b.pgmn,b.PHISM,b.sz,b.InspectedFlag,OrigQTY,PARENTWO 
                                          from IDO1 a,IDO2 b
                                          where a.bh=b.bh and a.bh=@IDO  and  (b.status=0 or b.status is null) 
     --3--Update IDO2
     update ido2 set  status=@Status_ido2 where bh=@IDO and status<>@Status_ido2

     --4--Update IDO1
     update ido1 set ydc=@ydc,ReserveMaterial=@reserveMaterial,ConfirmUser=@UID,ConfirmTime=GetDate() where bh=@IDO    

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
GO

USE [PHGDB2]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[sp_pb_IDOConfirm_Unplanned]  
(@IDO varchar(12),@UID varchar(10),@Status_Issue int,@Status_ido2 int,@ydc bit,@State int  output)
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
