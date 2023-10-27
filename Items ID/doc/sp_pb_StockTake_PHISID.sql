
CREATE PROCEDURE dbo.sp_pb_StockTake_PHISID  
(@LOT_ID varchar(15))
AS
 declare @iSTATUS int
 declare @success int
begin
     set @success=0
     select @iSTATUS=STATUS from PB_COUNT where LOT_ID=@LOT_ID

     if (@iSTATUS=0 or @iSTATUS=3)
     begin
         BEGIN TRAN

         update PB_COUNT set STATUS=4,COUNT_DATE=getDate() 
         where  LOT_ID=@LOT_ID 

         if  (@@ERROR <>0)
	 BEGIN--更新不成功
	   ROLLBACK TRAN
	   set @success=-1
	 END
         ELSE BEGIN--更新成功
	   COMMIT TRAN
	   set @success=1
	 END
     end
     else if (@iSTATUS=4)
     begin-- 已经更新过
       set @success=2
     end
     else if (@iSTATUS = null)
     begin--不存在
       set @success=3
     end
     else
     begin--不能更新,已经上传至ERP
       set @success=0
     end

     select @success
end
GO
