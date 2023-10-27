insert into [PHGDB2].dbo.PB_GATEPASS
select * 
from [PH.PCBarcode_Backup].dbo.PB_GATEPASS a
where exists 
(
	select * 
	from 
	(
		select * from [PHGDB2].dbo.ido1 a
		where not exists 
		(
			select * from [PHGDB2].dbo.PB_GATEPASS  b where a.bh=b.ido
		)
	) b
    where a.ido=b.bh
)
and not exists
(
	select * from [PHGDB2].dbo.PB_GATEPASS b
	where  a.ido=b.ido and a.WORK_ORDER=b.WORK_ORDER
	and a.LOT_ID=b.LOT_ID and a.item_code=b.item_code
	and a.company=b.company and a.stockroom =b.stockroom
)


insert into [PHGDB2].dbo.PB_GATEPASS_Unplanned
select * 
from [PH.PCBarcode_Backup].dbo.PB_GATEPASS_Unplanned a
where exists 
(
	select * 
	from 
	(
		select * from [PHGDB2].dbo.ido1_Unplanned a
		where not exists 
		(
			select * from [PHGDB2].dbo.PB_GATEPASS_Unplanned  b where a.bh=b.ido
		)
	) b
    where a.ido=b.bh
)
and not exists
(
	select * from [PHGDB2].dbo.PB_GATEPASS_Unplanned b
	where  a.ido=b.ido and a.WORK_ORDER=b.WORK_ORDER
	and a.LOT_ID=b.LOT_ID and a.item_code=b.item_code
	and a.company=b.company and a.stockroom =b.stockroom
)
