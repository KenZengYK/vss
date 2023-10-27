use [PHGDB2]
go

-----IDO4---
if not Exists(select * from sysColumns Where Name='WName' 
              and id in (Select id from SysObjects Where Name='IDO4'))
begin
	alter table [IDO4]
	add [WName] nvarchar(200) null
end
go

if not Exists(select * from sysColumns Where Name='Consignee' 
              and id in (Select id from SysObjects Where Name='IDO4'))
begin
	alter table [IDO4]
	add [Consignee] nvarchar(50) null
end
go

if not Exists(select * from sysColumns Where Name='DeliveryAddress' 
              and id in (Select id from SysObjects Where Name='IDO4'))
begin
	alter table [IDO4]
	add [DeliveryAddress] nvarchar(200) null
end
go


-----IDO1---

if not Exists(select * from sysColumns Where Name='IsDO' 
              and id in (Select id from SysObjects Where Name='IDO1'))
begin
	alter table [IDO1]
	add [IsDO] bit null
end
go

if not Exists(select * from sysColumns Where Name='IsSC' 
              and id in (Select id from SysObjects Where Name='IDO1'))
begin
	alter table [IDO1]
	add [IsSC] bit null
end
go

if not Exists(select * from sysColumns Where Name='IsUPI' 
              and id in (Select id from SysObjects Where Name='IDO1'))
begin
	alter table [IDO1]
	add [IsUPI] bit null
end
go

-----PB_GATEPASS---

if not Exists(select * from sysColumns Where Name='ConfirmBy' 
              and id in (Select id from SysObjects Where Name='PB_GATEPASS'))
begin
	alter table [PB_GATEPASS]
	add [ConfirmBy] nvarchar(30) null
end
go
if not Exists(select * from sysColumns Where Name='ConfirmDate' 
              and id in (Select id from SysObjects Where Name='PB_GATEPASS'))
begin
	alter table [PB_GATEPASS]
	add [ConfirmDate] datetime null
end
go
if not Exists(select * from sysColumns Where Name='IssueBy' 
              and id in (Select id from SysObjects Where Name='PB_GATEPASS'))
begin
	alter table [PB_GATEPASS]
	add [IssueBy] nvarchar(30) null
end
go


------------------------------------------------------
use [PH.MIDc]
go


if not Exists(select * from sysColumns Where Name='CN' 
              and id in (Select id from SysObjects Where Name='MaterialType'))
begin
	alter table [MaterialType]
	add [CN] nvarchar(250) null
end
go

if not Exists(select * from sysColumns Where Name='TH' 
              and id in (Select id from SysObjects Where Name='MaterialType'))
begin
	alter table [MaterialType]
	add [TH] nvarchar(250) null
end
go