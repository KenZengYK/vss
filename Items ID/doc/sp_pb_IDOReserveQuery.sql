
CREATE PROCEDURE [dbo].[sp_pb_IDOReserveQuery]  
(@IDO varchar(12),@fromDT varchar(20),@toDT varchar(20))
AS
  declare @trnc int

begin
   set nocount on

   select a.* ,CAST(NULL AS  BIT) as ERPsuccess 
   into #temp
   from PB_GatePass_M a
   where (@IDO='' or IDO=@IDO)
     and (@fromDT='' or (ConfirmTime between @fromDT and @toDT and ConfirmReserve=2) or (CancelTime between @fromDT and @toDT and ConfirmReserve=3) ) 

   update #temp set ConfirmTime=CancelTime,ConfirmUser=CancelUser 
   where ConfirmReserve=3

   DECLARE @IDO_temp varchar(12)
   Declare @count int
   declare @ERPsuccess bit

      DECLARE C1 CURSOR FOR 
         SELECT DISTINCT IDO FROM #TEMP
      OPEN C1
      FETCH NEXT FROM C1 INTO @IDO_temp
      WHILE @@FETCH_STATUS=0 
      BEGIN
         SET @count=0

	 SELECT @count=Count(*) FROM PB_GatePass 
	 WHERE IDO=@IDO_temp and (ERPSuccess=0 or ERPSuccess is null)

         if (@count=0)
           set @ERPsuccess=1
	 else 
           set @ERPsuccess=0

	 UPDATE #TEMP SET ERPsuccess=@ERPsuccess
         WHERE IDO=@IDO_temp 

         FETCH NEXT FROM C1 INTO @IDO_temp
      END
      CLOSE C1
      DEALLOCATE C1
    set nocount off

    select * from #temp order by IDO
end