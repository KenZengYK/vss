--ConfirmReserve:  0: not need reserve ; 1: need reserve; 2: Confirm Reserve; 3: Cancel Reserve

CREATE PROCEDURE [dbo].[sp_pb_IDOConfirm_Reserve_WH]  
(@IDO varchar(12),@UID varchar(10))
AS
  declare @trnc int

begin
      BEGIN TRAN
	  update PB_GATEPASS_M set ConfirmReserve=2,ConfirmTime=getdate(),ConfirmUser=@UID
	  where IDO=@IDO

       if  @@ERROR <>0 
             ROLLBACK TRAN
       ELSE
             COMMIT TRAN
end
GO

CREATE PROCEDURE [dbo].[sp_pb_IDOCancel_Reserve_WH]  
(@IDO varchar(12),@UID varchar(10))
AS
  declare @trnc int

begin
      BEGIN TRAN
	  update PB_GATEPASS_M set ConfirmReserve=3,CancelTime=getdate(),CancelUser=@UID
	  where IDO=@IDO

       if  @@ERROR <>0 
             ROLLBACK TRAN
       ELSE
             COMMIT TRAN
end
GO