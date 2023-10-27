select count(*) from inp71
select  * from ido2 where bh='IDO-0000020'
select  * from pb_gatePass where ido='IDO-0000232'

update ido2 set aqty=21.1 where wl='NSC08493AC10' and idno='050308-S1584-00' and bh='IDO-0000232' and zdh='W001101'
select * from ido2  where wl='NSC08493AC10' and idno='050308-S1584-00' and bh='IDO-0000232' and zdh='W001101'
select * from inp71 where worder='W001800'  and itemcode='NYT09046AW89' and lotid='050505-S1232-01'

select b.* from ido1 a,ido2 b  where aqty<>qty and a.bh=b.bh and a.cono='P1' order by b.bh,wl,idno

--update inp71 set worder=SubString(a.dref,1,7),oper=substring(a.dref,8,4)
--from inp71 a

--delete from inp71 where lotid like 'W%'



update pb_gatePass set Issue_qty=c.qty
select  Issue_qty,c.qty from ido2 a,pb_gatePass b,inp71 c 
where a.bh=b.ido and a.idno=b.lot_id and a.zdh=b.work_order and a.wl=b.item_code and b.company='P1' 
and (b.status<>1 or (b.status=1 and erpsuccess=0))
and c.cono=b.company and c.lotid=b.lot_id and c.worder=b.work_order and c.oper=a.oper and c.itemcode=b.Item_code
and a.aqty<>a.qty  and (a.aqty<800)