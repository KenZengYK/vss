use [PHGDB2]
go

-----IDO2---
if not Exists(select * from sysColumns Where Name='QCResult' 
              and id in (Select id from SysObjects Where Name='IDO2'))
begin
	alter table [IDO2]
	add [QCResult] nvarchar(20) null
end
go

if not Exists(select * from sysColumns Where Name='QCAction' 
              and id in (Select id from SysObjects Where Name='IDO2'))
begin
	alter table [IDO2]
	add [QCAction] nvarchar(20) null
end
go

if not Exists(select * from sysColumns Where Name='EndCustColorCode' 
              and id in (Select id from SysObjects Where Name='IDO2'))
begin
	alter table [IDO2]
	add [EndCustColorCode] nvarchar(20) null
end
go


