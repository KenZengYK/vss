
-----------------SL----------------

SELECT [HDO_NO]
      ,[ITEM_CODE]
      ,[LOT_ID]
      ,[STOCKROOM]
      ,[COMPANY]
      ,[Project]
      ,[PO]
      ,[POLine]
-- update a set a.Project=case when a.Project is null then  rtrim(b.CH3T84) else a.Project end, 
a.PO=case when a.PO is null then rtrim(SubString(CH2T84,1,7)) else a.PO end, 
a.POLine=case when isnumeric(SubString(CH2T84,8,3))=1 then SubString(CH2T84,8,3) else a.POLine end

  FROM [PHGDB2].[dbo].[PB_FINALID] a
  inner join (
             select * from [AS400DB].[dbo].[APP84] a
                inner join [AS400DB].[dbo].[INP80] b
                   on CONO84=CONO80 AND LOTN84=LOCN80  AND PNUM84=PNUM80
) b
    on a.COMPANY=b.[CONO84] and a.HDO_NO=b.ch1t84 and a.ITEM_CODE=b.pnum84 
       and a.LOT_ID=b.lotn84 and a.STOCKROOM=b.STRC80

--select count(*) from [PB_FINALID]
--SELECT [CONO84] as COMPANY
--,pnum84 as ITEM_CODE
--,lotn84 as LOT_ID
--,ch1t84 as HDO_NO
--,CH3T84 as Project
--,SubString(CH2T84,1,7) as PO,SubString(CH2T84,8,3) as POLine
--  FROM [AS400DB].[dbo].[APP84]
--
--select case when isnumeric(SubString(CH2T84,8,3))=1 then 2 else 0 end


--------------KB-------------

SELECT [HDO_NO]
      ,[ITEM_CODE]
      ,[LOT_ID]
      ,[STOCKROOM]
      ,[COMPANY]
      ,[Project]
      ,[PO]
      ,[POLine]
,CH3T84
,CH2T84

into #temp
-- update a set a.Project=case when a.Project is null then  rtrim(b.CH3T84) else a.Project end, 
--a.PO=case when a.PO is null then rtrim(SubString(CH2T84,1,7)) else a.PO end, 
--a.POLine=case when isnumeric(SubString(CH2T84,8,3))=1 then SubString(CH2T84,8,3) else a.POLine end

  FROM [10.4.1.11].[PHGDB2].[dbo].[PB_FINALID] a
  inner join (
             select * from [AS400DB].[dbo].[APP84] a
                inner join [AS400DB].[dbo].[INP80] b
                   on CONO84=CONO80 AND LOTN84=LOCN80  AND PNUM84=PNUM80
) b
    on a.COMPANY=b.[CONO84] and a.HDO_NO=b.ch1t84 and a.ITEM_CODE=b.pnum84 
       and a.LOT_ID=b.lotn84 and a.STOCKROOM=b.STRC80

insert into [10.4.1.11].[PHGDB2].[dbo].[PB_FINALID1]
([HDO_NO]
      ,[ITEM_CODE]
      ,[LOT_ID]
      ,[STOCKROOM]
      ,[COMPANY]
      ,[Project]
      ,[PO]
      ,[POLine]
,CH3T84
,CH2T84)
select [HDO_NO]
      ,[ITEM_CODE]
      ,[LOT_ID]
      ,[STOCKROOM]
      ,[COMPANY]
      ,[Project]
      ,[PO]
      ,[POLine]
,CH3T84
,CH2T84 from #temp

 update a set a.Project=case when a.Project is null then  rtrim(b.CH3T84) else a.Project end, 
a.PO=case when a.PO is null then rtrim(SubString(CH2T84,1,7)) else a.PO end, 
a.POLine=case when isnumeric(SubString(CH2T84,8,3))=1 then SubString(CH2T84,8,3) else a.POLine end
FROM [10.4.1.11].[PHGDB2].[dbo].[PB_FINALID] a 
inner join #temp b on      a.COMPANY=b.COMPANY and a.HDO_NO=b.HDO_NO and a.ITEM_CODE=b.ITEM_CODE 
       and a.LOT_ID=b.LOT_ID and a.STOCKROOM=b.STOCKROOM