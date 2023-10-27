

CREATE PROCEDURE dbo.sp_GetIDOsQty  
(@CONO varchar(2),@Project varchar(20),@WorkOrder varchar(7),@ItemCode  varchar(15))
AS
  declare @trnc int

begin
     select IDO,sum(ISSUE_QTY) as qty
     from PB_GATEPASS
     where COMPANY=@CONO and PROJECT_NO=@Project and WORK_ORDER=@WorkOrder and ITEM_CODE=@ItemCode and ERPSuccess=1
     group by IDO

     UNION

     select IDO,sum(ISSUE_QTY) as qty
     from PB_GATEPASS_Unplanned
     where COMPANY=@CONO and PROJECT_NO=@Project and WORK_ORDER=@WorkOrder and ITEM_CODE=@ItemCode and ERPSuccess=1
     group by IDO

end
GO