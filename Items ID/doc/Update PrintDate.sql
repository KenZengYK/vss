use [PHGDB2]
go


if not Exists(select * from sysColumns Where Name='PrintDate' 
              and id in (Select id from SysObjects Where Name='PB_FINALID'))
begin
	alter table [PB_FINALID]
	add [PrintDate] datetime null
end
go

if not Exists(select * from sysColumns Where Name='PrintDate' 
              and id in (Select id from SysObjects Where Name='PB_PrintLabel'))
begin
	alter table [PB_PrintLabel]
	add [PrintDate] datetime null
end
go

if not Exists(select * from sysColumns Where Name='PrintDate' 
              and id in (Select id from SysObjects Where Name='pb_PrintLabelList'))
begin
	alter table [pb_PrintLabelList]
	add [PrintDate] datetime null
end
go

ALTER PROCEDURE [dbo].[sp_pb_PrintLabelList]  
(@CONO varchar(2),@PNUM varchar(15),@STRC varchar(2),@LOCN varchar(15),@DTLC int,@SDAT int,@STIM int)
  
AS


begin


   if not exists(select * from pb_PrintLabelList where CONO=@CONO and PNUM=@PNUM and STRC=@STRC and LOCN=@LOCN and DTLC=@DTLC and SDAT=@SDAT and STIM=@STIM)
   begin

      BEGIN TRAN

      insert into  pb_PrintLabelList(CONO,PNUM,STRC,LOCN,DTLC,SDAT,STIM,PrintDate)
      values (@CONO,@PNUM,@STRC,@LOCN,@DTLC,@SDAT,@STIM,GetDate())
    
       if  @@ERROR <>0 
       BEGIN
             ROLLBACK TRAN
       END
       ELSE
       BEGIN
             COMMIT TRAN
       END
   end
   else 
      update a set a.PrintDate=getdate() from pb_PrintLabelList a where CONO=@CONO and PNUM=@PNUM and STRC=@STRC and LOCN=@LOCN and DTLC=@DTLC and SDAT=@SDAT and STIM=@STIM
end
GO
