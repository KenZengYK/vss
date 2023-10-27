use [PHGDB2]
go


if not Exists(select * from sysColumns Where Name='POLine' 
              and id in (Select id from SysObjects Where Name='PB_FINALID'))
begin
	alter table [PB_FINALID]
	add [POLine] int null
end
go

if not Exists(select * from sysColumns Where Name='POLine' 
              and id in (Select id from SysObjects Where Name='PB_PrintLabel'))
begin
	alter table [PB_PrintLabel]
	add [POLine] int null
end
go