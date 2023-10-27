declare @idno varchar(15)
set @idno='040216-S0483-00'

select status,* from ido2 where idno=@idno
select status,erpsuccess,* from pb_gatepass where LOT_ID=@idno



update ido2  set idno=idno+'A' where idno=@idno