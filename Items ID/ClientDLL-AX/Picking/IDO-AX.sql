USE [PHGDB2]
GO

-------IDO2----------------
if not Exists(select * from sysColumns Where Name='ColorCode' 
              and id in (Select id from SysObjects Where Name='IDO2'))
begin
	alter table [dbo].[IDO2]
	add [ColorCode] varchar(20)
end
go
if not Exists(select * from sysColumns Where Name='SizeCode' 
              and id in (Select id from SysObjects Where Name='IDO2'))
begin
	alter table [dbo].[IDO2]
	add [SizeCode] varchar(20)
end
go
if not Exists(select * from sysColumns Where Name='CupCode' 
              and id in (Select id from SysObjects Where Name='IDO2'))
begin
	alter table [dbo].[IDO2]
	add [CupCode] varchar(20)
end
go

-------IDO2_Unplanned----------------
if not Exists(select * from sysColumns Where Name='ColorCode' 
              and id in (Select id from SysObjects Where Name='IDO2_Unplanned'))
begin
	alter table [dbo].[IDO2_Unplanned]
	add [ColorCode] varchar(20)
end
go
if not Exists(select * from sysColumns Where Name='SizeCode' 
              and id in (Select id from SysObjects Where Name='IDO2_Unplanned'))
begin
	alter table [dbo].[IDO2_Unplanned]
	add [SizeCode] varchar(20)
end
go
if not Exists(select * from sysColumns Where Name='CupCode' 
              and id in (Select id from SysObjects Where Name='IDO2_Unplanned'))
begin
	alter table [dbo].[IDO2_Unplanned]
	add [CupCode] varchar(20)
end
go



-------PB_GATEPASS----------------
if not Exists(select * from sysColumns Where Name='ColorCode' 
              and id in (Select id from SysObjects Where Name='PB_GATEPASS'))
begin
	alter table [dbo].[PB_GATEPASS]
	add [ColorCode] varchar(20)
end
go
if not Exists(select * from sysColumns Where Name='SizeCode' 
              and id in (Select id from SysObjects Where Name='PB_GATEPASS'))
begin
	alter table [dbo].[PB_GATEPASS]
	add [SizeCode] varchar(20)
end
go
if not Exists(select * from sysColumns Where Name='CupCode' 
              and id in (Select id from SysObjects Where Name='PB_GATEPASS'))
begin
	alter table [dbo].[PB_GATEPASS]
	add [CupCode] varchar(20)
end
go

-------PB_GATEPASS_Unplanned----------------
if not Exists(select * from sysColumns Where Name='ColorCode' 
              and id in (Select id from SysObjects Where Name='PB_GATEPASS_Unplanned'))
begin
	alter table [dbo].[PB_GATEPASS_Unplanned]
	add [ColorCode] varchar(20)
end
go
if not Exists(select * from sysColumns Where Name='SizeCode' 
              and id in (Select id from SysObjects Where Name='PB_GATEPASS_Unplanned'))
begin
	alter table [dbo].[PB_GATEPASS_Unplanned]
	add [SizeCode] varchar(20)
end
go
if not Exists(select * from sysColumns Where Name='CupCode' 
              and id in (Select id from SysObjects Where Name='PB_GATEPASS_Unplanned'))
begin
	alter table [dbo].[PB_GATEPASS_Unplanned]
	add [CupCode] varchar(20)
end
go