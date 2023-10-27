Create PROCEDURE [dbo].[sp_pb_CancelPickingIDO]  
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
        Update IDO1 set ydc=0,ConfirmUser=null,ConfirmTime=null where bh=@BH

     --3--delete PB_GATEPASS
        delete from PB_GATEPASS where IDO=@BH
            and  ((status=1 and ERPSuccess=0) or status<>1)

        delete from PB_GATEPASS_M where IDO=@BH


       if  @@ERROR <>0 
       BEGIN
             
             ROLLBACK TRAN
       END
       ELSE
       BEGIN
             
             COMMIT TRAN
       END
end