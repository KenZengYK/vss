
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
	 BEGIN--���²��ɹ�
	   ROLLBACK TRAN
	   set @success=-1
	 END
         ELSE BEGIN--���³ɹ�
	   COMMIT TRAN
	   set @success=1
	 END
     end
     else if (@iSTATUS=4)
     begin-- �Ѿ����¹�
       set @success=2
     end
     else if (@iSTATUS = null)
     begin--������
       set @success=3
     end
     else
     begin--���ܸ���,�Ѿ��ϴ���ERP
       set @success=0
     end

     select @success
end
GO
