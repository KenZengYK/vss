select * from (
select strc80 as STOCKROOM,pnum80 as ITEM_CODE,locn80 as LOT_ID,sphy80 as ORG_QTY,IUNT35 as UOM, 
1 as IsCheck,spc235,ch9t84 as Location,pgmn35 as pgmn,ch1t84 as HDO_NO,VCAT01 AS PHISM,CH4T84 AS ColorShade,CH3T84 as Project,SubString(CH2T84,1,7) as PO,
locn80,CH9T84,ch1t84,CONO80,strc80  
from ault2f1.inp80,ault2f1.inp35,AULT2F1.INP60
LEFT JOIN AULT4F1.PMP01 ON (CONO01=CONO60 AND ITEM01=PNUM60 AND VNDR01=SUC160)
LEFT JOIN ault4f1.app84 ON (cono84=cono80 and lotn84=locn80 and pnum84=pnum80)
where cono80=cono35 and pnum80=pnum35 
AND CONO80=CONO60 AND PNUM80=PNUM60 AND STRC80=STRC60 and sphy80>0
) aa
where CONO80='P1' and locn80 between '080604-S417' and '080604-S4179'




USE [PHGDB2]
GO


alter TABLE [dbo].[PB_FINALID]
add 	[SuppColor] [varchar](10) NULL

alter TABLE [dbo].[PB_FINALID]
add 	[BuyerSizeCup] [varchar](10) NULL

alter TABLE [dbo].[PB_FINALID]
add 	[BuyerSizeCups] [varchar](10) NULL

alter TABLE [dbo].[PB_FINALID]
add 	[Dept] [varchar](10) NULL

alter TABLE [dbo].[PB_FINALID]
add 	[WO] [varchar](10) NULL

alter TABLE [dbo].[PB_FINALID]
add 	[GarmentColor] [varchar](10) NULL

alter TABLE [dbo].[PB_FINALID]
add 	[CustStyle] [varchar](10) NULL

