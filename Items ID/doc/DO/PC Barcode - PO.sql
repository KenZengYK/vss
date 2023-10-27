use [PHGDB2]
go

-----IDO2---
if not Exists(select * from sysColumns Where Name='PONO' 
              and id in (Select id from SysObjects Where Name='IDO2'))
begin
	alter table [IDO2]
	add [PONO] nvarchar(10) null
end
go

if not Exists(select * from sysColumns Where Name='POLine' 
              and id in (Select id from SysObjects Where Name='IDO2'))
begin
	alter table [IDO2]
	add [POLine] int null
end
go

if not Exists(select * from sysColumns Where Name='PONO' 
              and id in (Select id from SysObjects Where Name='IDO2_Unplanned'))
begin
	alter table [IDO2_Unplanned]
	add [PONO] nvarchar(10) null
end
go

if not Exists(select * from sysColumns Where Name='POLine' 
              and id in (Select id from SysObjects Where Name='IDO2_Unplanned'))
begin
	alter table [IDO2_Unplanned]
	add [POLine] int null
end
go
