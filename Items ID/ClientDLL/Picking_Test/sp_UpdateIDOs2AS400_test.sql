drop procedure zphlib_aul.sp_UpdateIDOs2AS400_Test;

Create Procedure zphlib_aul.sp_UpdateIDOs2AS400_Test(
  IN i_cono varchar(2),IN i_IDO varchar(12),IN i_LOTID varchar(15),IN i_Word varchar(7),IN i_Status varchar(1)  
) Language SQL

BEGIN 

  if (i_Status='D') then
       update TSTT4F1.idono set stats=i_Status where cono=i_cono and lotno=i_lotid and IDO=i_ido and WORD=i_word;
    else 
        if exists (select * from TSTT4F1.idono where cono=i_cono and lotno=i_lotid and IDO=i_ido and word=i_word) then
	     update TSTT4F1.idono set stats=i_Status where cono=i_cono and lotno=i_lotid and IDO=i_ido and word=i_word;
	   else 
	      insert into TSTT4F1.idono (cono,lotno,IDO,word,stats) 
	      values (i_cono,i_lotid,i_ido,i_word,i_Status);
	end if;    
  end if;

END;
