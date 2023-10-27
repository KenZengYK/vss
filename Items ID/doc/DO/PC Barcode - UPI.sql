use [PHGDB2]
go

-----IDO1_Unplanned---
if not Exists(select * from sysColumns Where Name='ConfirmUser' 
              and id in (Select id from SysObjects Where Name='ido1_Unplanned'))
begin
	alter table [ido1_Unplanned]
	add [ConfirmUser] varchar(15) null
end
go

if not Exists(select * from sysColumns Where Name='reserveMaterial' 
              and id in (Select id from SysObjects Where Name='ido1_Unplanned'))
begin
	alter table [ido1_Unplanned]
	add [reserveMaterial] bit null
end
go

if not Exists(select * from sysColumns Where Name='IsDO' 
              and id in (Select id from SysObjects Where Name='ido1_Unplanned'))
begin
	alter table [ido1_Unplanned]
	add [IsDO] bit null
end
go

if not Exists(select * from sysColumns Where Name='IsSC' 
              and id in (Select id from SysObjects Where Name='ido1_Unplanned'))
begin
	alter table [ido1_Unplanned]
	add [IsSC] bit null
end
go

if not Exists(select * from sysColumns Where Name='IsUPI' 
              and id in (Select id from SysObjects Where Name='ido1_Unplanned'))
begin
	alter table [ido1_Unplanned]
	add [IsUPI] bit null
end
go


-----IDO2_Unplanned---

if not Exists(select * from sysColumns Where Name='EndCustColorCode' 
              and id in (Select id from SysObjects Where Name='ido2_Unplanned'))
begin
	alter table [ido2_Unplanned]
	add [EndCustColorCode] nvarchar(20) null
end
go

if not Exists(select * from sysColumns Where Name='QCResult' 
              and id in (Select id from SysObjects Where Name='ido2_Unplanned'))
begin
	alter table [ido2_Unplanned]
	add [QCResult] nvarchar(20) null
end
go

if not Exists(select * from sysColumns Where Name='QCAction' 
              and id in (Select id from SysObjects Where Name='ido2_Unplanned'))
begin
	alter table [ido2_Unplanned]
	add [QCAction] nvarchar(20) null
end
go

-----IDO2---
if not Exists(select * from sysColumns Where Name='MOVR' 
              and id in (Select id from SysObjects Where Name='ido2'))
begin
	alter table [ido2]
	add [MOVR] varchar(2) null
end
go

-----PB_GATEPASS_Unplanned---

if not Exists(select * from sysColumns Where Name='ConfirmBy' 
              and id in (Select id from SysObjects Where Name='PB_GATEPASS_Unplanned'))
begin
	alter table [PB_GATEPASS_Unplanned]
	add [ConfirmBy] nvarchar(30) null
end
go

if not Exists(select * from sysColumns Where Name='ConfirmDate' 
              and id in (Select id from SysObjects Where Name='PB_GATEPASS_Unplanned'))
begin
	alter table [PB_GATEPASS_Unplanned]
	add [ConfirmDate] datetime null
end
go

if not Exists(select * from sysColumns Where Name='IssueBy' 
              and id in (Select id from SysObjects Where Name='PB_GATEPASS_Unplanned'))
begin
	alter table [PB_GATEPASS_Unplanned]
	add [IssueBy] nvarchar(30) null
end
go
