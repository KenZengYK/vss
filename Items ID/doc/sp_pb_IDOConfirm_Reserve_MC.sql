USE [PHGDB_TEST]
GO
/****** Object:  StoredProcedure [dbo].[sp_pb_IDOConfirm_Reserve]    Script Date: 08/21/2007 10:17:00 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
--create by peter 2005.04.23  PCBarcode system,confrim IDO--
CREATE PROCEDURE [dbo].[sp_pb_IDOConfirm_Reserve_MC]  
(@IDO varchar(12),@UID varchar(10),@Status_Issue int,@Status_ido2 int,@ydc bit,@reserveMaterial bit)
AS
  declare @trnc int

begin
      BEGIN TRAN
      --1---delete 
      delete PB_GATEPASS where IDO=@IDO  and  ((ERPSuccess=0 and status=1) or (status<>1))
      --2--insert
      insert into PB_GATEPASS(SOP,PROJECT_NO,IDO,WORK_ORDER,LOT_ID,ISSUE_QTY,GATEPASS,UID,RECORD_CREATED_DATE,UOM,ITEM_CODE,Status,COMPANY,StockRoom,Location,PGMN,PHISM,ColorShade,InspectedFlag,OrigQTY) 
                                          select a.Sopno,a.Prjno,a.BH,b.zdh,b.Idno,b.qty,a.Bm1,@UID,GetDate(),b.UOM,b.WL,@Status_Issue,a.cono,b.StockRoom,b.wz,b.pgmn,b.PHISM,b.sz,b.InspectedFlag,OrigQTY 
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