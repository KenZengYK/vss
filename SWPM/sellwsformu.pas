unit sellwsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Db, DBClient, ExtCtrls, Mask, rxToolEdit,
  rxCurrEdit, ShellApi;

type
  Tfrmsellws = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Edit1: TCurrencyEdit;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    xh1: TRadioButton;
    xh3: TRadioButton;
    xh4: TRadioButton;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    BitBtn3: TBitBtn;
    GroupBox2: TGroupBox;
    xh2: TRadioGroup;
    ComboBox2: TComboBox;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure xh2Click(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure xh3Click(Sender: TObject);
    procedure xh4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure updtblshedule(const str1: string);
  end;

var
  frmsellws: Tfrmsellws;
  strupd: string;

implementation

uses mainformu, worksheet, xgsl1formu, qnhaltformu;

{$R *.dfm}

procedure Tfrmsellws.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmsellws:=nil;
end;

procedure Tfrmsellws.BitBtn1Click(Sender: TObject);
var
  pline,tplant:string;
  seq,i,i1:integer;
  s3,s4:string;
  q1:double;
  cmp:string;
  dt1:tdate;
  sect1,qty1,qty2:double;
  tmx:tdatetime;
  str1,str2,fty:string;
  cmps:boolean;
begin
  pline:=worksheet1.tblshedule.fieldbyname('pline').value;
  seq:=worksheet1.tblshedule.fieldbyname('seq').value;
  s3:='';
  with query2 do begin
    close;
    params.clear;
    commandtext:='select tplant from tblline where pline='''+pline+'''';
    open;
    fty:=fieldbyname('tplant').value;
  end;
  if xh2.ItemIndex>=0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select pline from tbl_qnhalt_notepad where pline=:x1 and seq=:x2';
      params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
      params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
      open;
      if fieldbyname('pline').isnull then begin
        showmessage('Please input instruction/reason first when QN halt!');
        exit;
      end;
    end;
    if combobox2.text='' then begin
      showmessage('Please select a cut-off area!');
      exit;
    end;
  end;
  if (dateedit1.date>0) and (edit1.value>=0.0) then begin
    //
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select sta3 from tbl_schstatus where pline='''+pline+''' and seq=:x1';
      params[0].asinteger:=seq;
      open;
      if not fieldbyname('sta3').isnull then begin
        if (fieldbyname('sta3').value='Halt') or (fieldbyname('sta3').value='H1') then s3:='H1'
        else if fieldbyname('sta3').value='H2' then s3:='H2'
        else if fieldbyname('sta3').value='H3' then s3:='H3'
        else if fieldbyname('sta3').value='H4' then s3:='H4'
        else s3:='';
      end else s3:='';
    end;
    //
    if (xh1.Checked=true) or (xh3.Checked=true) then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select count(*) as cnt from tblshedule where pline='''+pline+''' and seq=:x1 and flag3 like ''%s%'' and yzh=0';
        params[0].asinteger:=seq;
        open;
        if fieldbyname('cnt').isnull then i1:=0 else i1:=fieldbyname('cnt').value;
      end;
      if i1>0 then begin
        if application.MessageBox('There are activated QN(s), do you want to activate this QN?','Confirmation',mb_iconquestion+mb_okcancel)=idok then i1:=0;
      end;
      if i1=0 then begin
        i:=0;
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select seq from tbl_schstatus where pline='''+pline+''' and seq=:x1';
          params[0].asinteger:=seq;
          open;
          if not fieldbyname('seq').IsNull then i:=1 else i:=0;
        end;
        if i=0 then begin
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdate,'x4',ptinput);
            params.createparam(ftfloat,'x5',ptinput);
            if xh1.Checked then
            commandtext:='insert into tbl_schstatus(pline,seq,sta2,dt2,sect2,sta1,dt1,sect1) values(:x1,:x2,:x3,:x4,:x5,null,null,0)'
            else commandtext:='insert into tbl_schstatus(pline,seq,sta1,dt1,sect1,sta2,dt2,sect2) values(:x1,:x2,:x3,:x4,:x5,null,null,0)';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            if xh1.checked then
            params[2].asstring:='Active'
            else params[2].asstring:=s3;
            params[3].asdate:=dateedit1.date;
            params[4].asfloat:=edit1.value;
            execute;
          end;
        end else begin
          if xh1.Checked then
          strupd:='update tbl_schstatus set sta1=null,dt1=null,sect1=0,sta2=''Active'',dt2='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+''',sect2='+floattostr(edit1.Value)+',sta4='''',dt4=null,sect4=0 where pline='''+pline+''' and seq='+inttostr(seq)
          else
          strupd:='update tbl_schstatus set st2=null,dt2=null,sect2=0,sta1='''+s3+''',dt1='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+''',sect1='+floattostr(edit1.Value)+',sta4='''',dt4=null,sect4=0 where pline='''+pline+''' and seq='+inttostr(seq);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

        end;
        strupd:='update tblshedule set ';
        if (xh1.Checked=true) then begin
          if combobox3.Text='First Group' then
          strupd:=strupd+'flag3=''1s'','
          else strupd:=strupd+'flag3=''1sl'',';
        end else if (xh3.Checked=true) then begin
          if combobox4.Text='First Group' then
          strupd:=strupd+'flag3=''1s'','
          else strupd:=strupd+'flag3=''1sl'',';
        end;
        strupd:=strupd+'cfksrq='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+''',';
        strupd:=strupd+'cfksjs='+floattostr(edit1.value)+' ';
        strupd:=strupd+'where pline='''+pline+''' ';
        strupd:=strupd+'and seq='+inttostr(seq);
        if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

        updtblshedule(pline);
      end;
      //
      tmx:=now;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftdatetime,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure sp_save_stime_1(:x1,:x2,:x3,:x4)';
        params[0].asstring:=pline;
        params[1].asinteger:=seq;
        params[2].asdatetime:=tmx;
        params[3].asstring:=frmmain.ComboBox1.text;
        execute;
      end;

      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select tplant,pline,j_no,j2_job,rwo,fccs,acol,flag3,seq,tshop,cfksrq,cfwcrq from tblshedule where pline=:x1 and seq=:x2';
        params[0].asstring:=pline;
        params[1].asinteger:=seq;
        open;
      end;
      if (not query1.fieldbyname('cfksrq').isnull) and (not query1.fieldbyname('cfwcrq').isnull) then begin
        with frmmain.ADOQuery1 do begin
          close;
          sql.Clear;
          sql.Text:='exec [ph.lwpm.wp].dbo.getlwpm :x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12';
          parameters[0].Value:=query1.fieldbyname('tplant').value;
          parameters[1].Value:=query1.fieldbyname('pline').value;
          parameters[2].Value:=query1.fieldbyname('j_no').value;
          parameters[3].Value:=query1.fieldbyname('j2_job').value;
          parameters[4].Value:=query1.fieldbyname('rwo').value;
          parameters[5].Value:=query1.fieldbyname('fccs').value;
          parameters[6].Value:=query1.fieldbyname('acol').value;
          parameters[7].Value:=query1.fieldbyname('flag3').value;
          parameters[8].Value:=query1.fieldbyname('seq').value;
          parameters[9].Value:=query1.fieldbyname('tshop').value;
          parameters[10].Value:=query1.fieldbyname('cfksrq').value;
          parameters[11].Value:=query1.fieldbyname('cfwcrq').value;
          execsql;
        end;
      end;
    end else if xh2.ItemIndex>=0 then begin
      screen.Cursor:=crSQLWait;
      try
      strupd:='update tbl_schstatus set sta4=''x'',dt4='''+formatdatetime('yyyy-MM-dd',dateedit1.Date)+''',sect4='+floattostr(edit1.Value)+' where pline='''+pline+''' and seq='+inttostr(seq);
      if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select sum(diff) as q1 from line_shjs where pline=:x1 and seq=:x2 and flag=''0''';
        params[0].asstring:=pline;
        params[1].asinteger:=seq;
        open;
        if not fieldbyname('q1').isnull then q1:=fieldbyname('q1').value else q1:=0;
      end;
      with query1 do begin
        close;
        params.clear;
        commandtext:='select tplant from tblline where pline='''+pline+'''';
        open;
        if not fieldbyname('tplant').isnull then tplant:=fieldbyname('tplant').value else tplant:='';
      end;
      if frmxgsl1=nil then frmxgsl1:=tfrmxgsl1.Create(nil);
      frmxgsl1.Edit1.Text:=worksheet1.tblshedule.fieldbyname('scqty').asstring;
      if xh2.ItemIndex>=2 then begin
        frmxgsl1.GroupBox2.Enabled:=true;
        frmxgsl1.ComboBox1.Text:='SB'+tplant;
        frmxgsl1.ComboBox2.Text:='';
      end else begin
        frmxgsl1.GroupBox2.Enabled:=false;
        frmxgsl1.ComboBox1.Text:='SB'+tplant;//pline;
        frmxgsl1.SpinEdit1.Value:=worksheet1.tblshedule.fieldbyname('scqty').value-q1;
      end;
      frmxgsl1.label2.caption:=inttostr(worksheet1.tblshedule.fieldbyname('scqty').value-q1);
      frmxgsl1.Show;
      finally
      screen.Cursor:=crDefault;
      end;
    end else if xh4.Checked then begin
      if (fty='SC') or ((pline='PPWS') and (worksheet1.tblshedule.fieldbyname('rwo').value='1/1P')) then begin
        if s3='' then s4:='x'
        else if s3='H1' then s4:='x'
        else if s3='H2' then s4:='x'
        else if s3='H3' then s4:='x'
        else if s3='H4' then s4:='x';
        strupd:='update tbl_schstatus set sta4='''+s4+''',dt4='''+formatdatetime('yyyy-MM-dd',dateedit1.Date)+''',sect4='+floattostr(edit1.Value)+' where pline='''+pline+''' and seq='+inttostr(seq);
        if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
        strupd:='update tblshedule set flag31a=''s'',flag32a=''x'',flag3='''+s4+''',cfwcrq='''+formatdatetime('yyyy-MM-dd',dateedit1.Date)+''',cfwcjs='+floattostr(edit1.Value)+',ckjs='+floattostr(edit1.Value)+' where pline='''+pline+''' and seq='+inttostr(seq);
        if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

        updtblshedule(pline);
      end else begin
        if (copy(pline,1,1)='T') or (pline='PPB.SL') or (pline='PPK.SL') then begin
          cmp:='0';
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            commandtext:='select cfksrq,cfksjs,scqty from tblshedule where pline='''+pline+''' and seq=:x1';
            params[0].asinteger:=seq;
            open;
            if not fieldbyname('cfksrq').isnull then begin
              dt1:=fieldbyname('cfksrq').value;
              sect1:=fieldbyname('cfksjs').value;
            end;
            qty1:=fieldbyname('scqty').value;
          end;

          cmp:='0';
          if dateedit1.date<dt1 then cmp:='0'
          else if (dateedit1.date=dt1) and (sect1>=edit1.value) then cmp:='0'
          else begin
            if cmp='0' then begin
              with query1 do begin
                close;
                params.clear;
                params.createparam(ftinteger,'x1',ptinput);
                commandtext:='select sum(diff_sp) as qty2 from line_shjs where flag=''0'' and pline='''+pline+''' and seq=:x1 and diff_sp>=1.0';
                params[0].asinteger:=seq;
                open;
                if not fieldbyname('qty2').isnull then qty2:=fieldbyname('qty2').value else qty2:=0;
              end;
              if qty1>qty2+2000 then cmp:='0' else cmp:='1';
            end;
            if cmp='0' then begin
              with query1 do begin
                close;
                params.clear;
                params.createparam(ftinteger,'x1',ptinput);
                commandtext:='select sum(diff) as qty2 from line_shjs where flag=''0'' and pline='''+pline+''' and seq=:x1 and diff>=1.0';
                params[0].asinteger:=seq;
                open;
                if not fieldbyname('qty2').isnull then qty2:=fieldbyname('qty2').value else qty2:=0;
              end;
              if qty1>qty2+2000 then cmp:='0' else cmp:='1';
            end;
          end;

          if s3='' then s4:='x'
          else if s3='H1' then s4:='x'
          else if s3='H2' then s4:='x'
          else if s3='H3' then s4:='x'
          else if s3='H4' then s4:='x';
          cmps:=false;
          if cmps=false then begin
            with query1 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              commandtext:='select distinct cmps from tbl_lwo_sew_sp where pline='''+pline+''' and seq=:x1 and cmps=0 and pqty>0';
              params[0].asinteger:=seq;
              open;
              if not fieldbyname('cmps').isnull then cmps:=false else cmps:=true;
            end;
          end;
          if cmps=false then begin
            with query1 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              commandtext:='select distinct cmps from tbl_lwo_sew where pline='''+pline+''' and seq=:x1 and cmps=0 and pqty>0';
              params[0].asinteger:=seq;
              open;
              if not fieldbyname('cmps').isnull then cmps:=false else cmps:=true;
            end;
          end;
          if (copy(uppercase(worksheet1.tblshedule.fieldbyname('flag4').value),1,1)<'E') or (cmps=false) then abort
          else begin
            if cmp='1' then begin
              strupd:='update tbl_schstatus set sta4='''+s4+''',dt4='''+formatdatetime('yyyy-MM-dd',dateedit1.Date)+''',sect4='+floattostr(edit1.Value)+' where pline='''+pline+''' and seq='+inttostr(seq);
              if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
              strupd:='update tblshedule set flag31a=''s'',flag32a=''x'',flag3='''+s4+''',cfwcrq='''+formatdatetime('yyyy-MM-dd',dateedit1.Date)+''',cfwcjs='+floattostr(edit1.Value)+',ckjs='+floattostr(edit1.Value)+' where pline='''+pline+''' and seq='+inttostr(seq);
              if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

              updtblshedule(pline);
              with query1 do begin
                close;
                params.clear;
                params.createparam(ftstring,'x1',ptinput);
                params.createparam(ftinteger,'x2',ptinput);
                commandtext:='select tplant,pline,j_no,j2_job,rwo,fccs,acol,flag3,seq,tshop,cfksrq,cfwcrq from tblshedule where pline=:x1 and seq=:x2';
                params[0].asstring:=pline;
                params[1].asinteger:=seq;
                open;
              end;
              if (not query1.fieldbyname('cfksrq').isnull) and (not query1.fieldbyname('cfwcrq').isnull) then begin
                with frmmain.ADOQuery1 do begin
                  close;
                  sql.Clear;
                  sql.Text:='exec [ph.lwpm.wp].dbo.getlwpm :x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12';
                  parameters[0].Value:=query1.fieldbyname('tplant').value;
                  parameters[1].Value:=query1.fieldbyname('pline').value;
                  parameters[2].Value:=query1.fieldbyname('j_no').value;
                  parameters[3].Value:=query1.fieldbyname('j2_job').value;
                  parameters[4].Value:=query1.fieldbyname('rwo').value;
                  parameters[5].Value:=query1.fieldbyname('fccs').value;
                  parameters[6].Value:=query1.fieldbyname('acol').value;
                  parameters[7].Value:=query1.fieldbyname('flag3').value;
                  parameters[8].Value:=query1.fieldbyname('seq').value;
                  parameters[9].Value:=query1.fieldbyname('tshop').value;
                  parameters[10].Value:=query1.fieldbyname('cfksrq').value;
                  parameters[11].Value:=query1.fieldbyname('cfwcrq').value;
                  execsql;
                end;
              end;
            end else begin
              showmessage('Can not complete this QN, please check date/sect hr or output!');
            end;
          end;
        end else begin
          strupd:='update tbl_schstatus set sta4='''+s4+''',dt4='''+formatdatetime('yyyy-MM-dd',dateedit1.Date)+''',sect4='+floattostr(edit1.Value)+' where pline='''+pline+''' and seq='+inttostr(seq);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
          strupd:='update tblshedule set flag31a=''s'',flag32a=''x'',flag3='''+s4+''',cfwcrq='''+formatdatetime('yyyy-MM-dd',dateedit1.Date)+''',cfwcjs='+floattostr(edit1.Value)+',ckjs='+floattostr(edit1.Value)+' where pline='''+pline+''' and seq='+inttostr(seq);
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

          updtblshedule(pline);
        end;
      end;
    end;
    worksheet1.SpeedButton1Click(self);
    worksheet1.tblshedule.Locate('pline;seq',VarArrayOf([pline,seq]),[])
  end;
end;

procedure Tfrmsellws.updtblshedule(const str1: string);
var
  s1:string;
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select count(*) as cnt from tblshedule where pline=:x1 and flag3>=''1'' and flag3<=''9sl'' and yzh=0';
    params[0].asstring:=str1;
    open;
    if not fieldbyname('cnt').isnull then s1:=fieldbyname('cnt').asstring else s1:='0';
  end;
  if s1>'0' then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='update tblshedule set flag3=:x1 where pline=:x2 and flag3>=''1'' and flag3<=''9sl'' and yzh=0 and substr(flag3,2,3)=''s''';
      params[0].asstring:=s1+'s';
      params[1].asstring:=str1;
      execute;
    end;
    }
          strupd:='update tblshedule set flag31a='''+s1+'s'+''',flag3='''+s1+'s'+''' where pline='''+str1+''' and flag3>=''1'' and flag3<=''9sl'' and yzh=0 and substr(flag3,2,3)=''s''';
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='update tblshedule set flag3=:x1 where pline=:x2 and flag3>=''1'' and flag3<=''9sl'' and yzh=0 and substr(flag3,2,3)=''sl''';
      params[0].asstring:=s1+'sl';
      params[1].asstring:=str1;
      execute;
    end;
    }
          strupd:='update tblshedule set flag31a='''+s1+'s'+''',flag3='''+s1+'s'+''' where pline='''+str1+''' and flag3>=''1'' and flag3<=''9sl'' and yzh=0 and substr(flag3,2,3)=''sl''';
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
  end;
end;

procedure Tfrmsellws.xh2Click(Sender: TObject);
begin
  if xh2.ItemIndex>=0 then begin
    xh1.Checked:=false;
    xh3.Checked:=false;
    xh4.Checked:=false;
    //label3.Caption:='Halt Sect Time';
  end;
end;

procedure Tfrmsellws.xh1Click(Sender: TObject);
begin
  if xh1.Checked then begin
    xh2.ItemIndex:=-1;
    //label3.Caption:='Active Sect Time';
  end;
end;

procedure Tfrmsellws.xh3Click(Sender: TObject);
begin
  if xh3.Checked then begin
    xh2.ItemIndex:=-1;
    //label3.Caption:='Re-active Sect Time';
  end;
end;

procedure Tfrmsellws.xh4Click(Sender: TObject);
begin
  if xh4.Checked then begin
    xh2.ItemIndex:=-1;
    //label3.Caption:='Complete Sect Time';
  end;
end;

procedure Tfrmsellws.BitBtn2Click(Sender: TObject);
var
  qncpy:boolean;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('qncpy').isnull then qncpy:=fieldbyname('qncpy').value
    else qncpy:=false;
  end;

  if qncpy then begin
    if xh2.ItemIndex=0 then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from tbl_qnhalt_notepad where pline=:x1 and seq=:x2';
        params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
        params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
        open;
        if fieldbyname('pline').isnull then begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdate,'x3',ptinput);
            params.createparam(ftfloat,'x4',ptinput);
            params.createparam(ftstring,'x5',ptinput);
            commandtext:='insert into tbl_qnhalt_notepad(pline,seq,dt,sect,cutoff) values(:x1,:x2,:x3,:x4,:x5)';
            params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
            params[2].asdate:=dateedit1.Date;
            params[3].asfloat:=edit1.Value;
            params[4].asstring:=combobox2.Text;
            execute;
          end;
        end;
      end;
      if frmqnhalt=nil then frmqnhalt:=tfrmqnhalt.create(nil);
      with frmqnhalt.query1 do begin
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from tbl_qnhalt_notepad where pline=:x1 and seq=:x2';
        params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
        params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
        open;
      end;
      frmqnhalt.show;
    end;
  end else showmessage('You have no right!');
end;

end.
