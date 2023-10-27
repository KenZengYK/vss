update PB_GatePass set PHISM=bb.PHISM 
from PB_GatePass aa,
(select b.bh,b.idno,b.wl,a.cono,b.stockroom,b.PHISM from ido1 a,ido2 b where a.bh=b.bh) bb
where aa.IDO=bb.bh 
and aa.LOT_ID=bb.idno
and aa.ITEM_CODE=bb.wl
and aa.COMPANY=bb.cono
and aa.STOCKROOM=bb.stockroom