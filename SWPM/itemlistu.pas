unit itemlistu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, Grids, DBGridEh, ExtCtrls, DBCtrls, Buttons, StdCtrls,
  Variants;

type
  Tfrmitemlist = class(TForm)
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    tblitem: TClientDataSet;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tblitemNewRecord(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure tblitemAfterPost(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmitemlist: Tfrmitemlist;

implementation
uses mainformu;
{$R *.DFM}

procedure Tfrmitemlist.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmitemlist.SpeedButton7Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmitemlist.FormShow(Sender: TObject);
begin
  with tblitem do begin
    close;
    params.clear;
    commandtext:='select * from tblitem';
    open;
    first;
  end;
end;

procedure Tfrmitemlist.tblitemNewRecord(DataSet: TDataSet);
var
  seq1:integer;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq1 from tblitem';
    open;
    if recordcount>0 then begin
      if not fieldbyname('seq1').isnull then seq1:=fieldbyname('seq1').value+1
      else seq1:=1;
    end
    else seq1:=1;
  end;
  tblitem.fieldbyname('seq').value:=seq1;
  tblitem.fieldbyname('days').value:=0;
end;

procedure Tfrmitemlist.SpeedButton1Click(Sender: TObject);
begin
  tblitem.append;
  dbgrideh1.selectedindex:=1;
end;

procedure Tfrmitemlist.SpeedButton5Click(Sender: TObject);
begin
  if (tblitem.state=dsinsert) or (tblitem.state=dsedit) then tblitem.post;
end;

procedure Tfrmitemlist.SpeedButton6Click(Sender: TObject);
begin
  if (tblitem.state=dsinsert) or (tblitem.state=dsedit) then tblitem.post;
end;

procedure Tfrmitemlist.SpeedButton4Click(Sender: TObject);
var
  seq1,seq2:integer;
begin
  if (tblitem.state=dsinsert) or (tblitem.state=dsedit) then tblitem.post;
  if tblitem.recordcount>0 then begin
    seq1:=tblitem.fieldbyname('seq').value;
    if application.messagebox('要刪除此記錄嗎?','提示',mb_iconquestion+mb_okcancel)=idok then begin
      with clientdataset1 do begin
        close;
        params.clear;
        commandtext:='select max(seq) as seq2 from tblitem';
        open;
        seq2:=fieldbyname('seq2').value;
      end;
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'seq',ptinput);
        commandtext:='delete from tblitem where seq=:seq';
        params[0].asinteger:=seq1;
        execute;
        close;
        params.clear;
        params.createparam(ftinteger,'seq',ptinput);
        commandtext:='update tblitem set seq=seq-1 where seq>:seq';
        params[0].asinteger:=seq1;
        execute;
      end;
      with tblitem do begin
        close;
        params.clear;
        commandtext:='select * from tblitem';
        open;
        if seq1=seq2 then locate('seq',vararrayof([seq1-1]),[lopartialkey])
        else locate('seq',vararrayof([seq1]),[lopartialkey]);
      end;
    end;
  end;
end;

procedure Tfrmitemlist.tblitemAfterPost(DataSet: TDataSet);
var
  seq,days:integer;
  bh,ms,dept,fzr1,fzr2:string;
begin
  seq:=tblitem.fieldbyname('seq').value;
  if not tblitem.fieldbyname('days').isnull then days:=tblitem.fieldbyname('days').value else days:=0;
  if not tblitem.fieldbyname('bh').isnull then bh:=tblitem.fieldbyname('bh').value else bh:='';
  if not tblitem.fieldbyname('ms').isnull then ms:=tblitem.fieldbyname('ms').value else ms:='';
  if not tblitem.fieldbyname('dept').isnull then dept:=tblitem.fieldbyname('dept').value else dept:='';
  if not tblitem.fieldbyname('fzr1').isnull then fzr1:=tblitem.fieldbyname('fzr1').value else fzr1:='';
  if not tblitem.fieldbyname('fzr2').isnull then fzr2:=tblitem.fieldbyname('fzr2').value else fzr2:='';
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'seq',ptinput);
    commandtext:='select * from tblitem where seq=:seq';
    params[0].asinteger:=seq;
    open;
    if recordcount>0 then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'bh',ptinput);
        params.createparam(ftstring,'ms',ptinput);
        params.createparam(ftinteger,'days',ptinput);
        params.createparam(ftstring,'dept',ptinput);
        params.createparam(ftstring,'fzr1',ptinput);
        params.createparam(ftstring,'fzr2',ptinput);
        params.createparam(ftinteger,'seq',ptinput);
        commandtext:='update tblitem set bh=:bh,ms=:ms,days=:days,dept=:dept,fzr1=:fzr1,fzr2=:fzr2 where seq=:seq';
        params[0].asstring:=bh;
        params[1].asstring:=ms;
        params[2].asinteger:=days;
        params[3].asstring:=dept;
        params[4].asstring:=fzr1;
        params[5].asstring:=fzr2;
        params[6].asinteger:=seq;
        execute;
      end;
    end
    else begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'seq',ptinput);
        params.createparam(ftstring,'bh',ptinput);
        params.createparam(ftstring,'ms',ptinput);
        params.createparam(ftinteger,'days',ptinput);
        params.createparam(ftstring,'dept',ptinput);
        params.createparam(ftstring,'fzr1',ptinput);
        params.createparam(ftstring,'fzr2',ptinput);
        commandtext:='insert into tblitem(seq,bh,ms,days,dept,fzr1,fzr2) values(:seq,:bh,:ms,:days,:dept,:fzr1,:fzr2)';
        params[0].asinteger:=seq;
        params[1].asstring:=bh;
        params[2].asstring:=ms;
        params[3].asinteger:=days;
        params[4].asstring:=dept;
        params[5].asstring:=fzr1;
        params[6].asstring:=fzr2;
        execute;
      end;
    end;
  end;
end;

procedure Tfrmitemlist.SpeedButton2Click(Sender: TObject);
var
  seq1:integer;
begin
  if (tblitem.state=dsinsert) or (tblitem.state=dsedit) then tblitem.post;
  if not dbgrideh1.fields[0].isnull then begin
    seq1:=tblitem.fieldbyname('seq').value;
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='update tblitem set seq=seq+1 where seq>=:seq';
      params[0].asinteger:=seq1;
      execute;
      close;
      params.clear;
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='insert into tblitem(seq,days) values(:seq,0)';
      params[0].asinteger:=seq1;
      execute;
    end;
    with tblitem do begin
      close;
      params.clear;
      commandtext:='select * from tblitem';
      open;
      locate('seq',vararrayof([seq1]),[lopartialkey]);
    end;
    dbgrideh1.selectedindex:=1;
  end;
end;

procedure Tfrmitemlist.SpeedButton3Click(Sender: TObject);
var
  seq1,i,days:integer;
  bh,ms,dept,fzr1,fzr2:string;
  ksrq,bdt:tdatetime;
begin
  screen.cursor:=crhourglass;
  {if label1.caption='JobAppend' then begin
    if dbgrideh1.selectedrows.Count>0 then begin
      if frmcritical.tblcritical1.recordcount>0 then begin
        frmcritical.tblcritical1.last;
        seq1:=frmcritical.tblcritical1.fieldbyname('dseq').value;
      end
      else seq1:=0;
      for i:=0 to dbgrideh1.selectedrows.count-1 do begin
        tblitem.GotoBookmark(pointer(dbgrideh1.selectedrows.items[i]));
        bh:=tblitem.fieldbyname('bh').value;
        ms:=tblitem.fieldbyname('ms').value;
        if not tblitem.fieldbyname('dept').isnull then dept:=tblitem.fieldbyname('dept').value
        else dept:='';
        if not tblitem.fieldbyname('fzr1').isnull then fzr1:=tblitem.fieldbyname('fzr1').value
        else dept:='';
        if not tblitem.fieldbyname('fzr2').isnull then fzr2:=tblitem.fieldbyname('fzr2').value
        else fzr2:='';
        if not tblitem.fieldbyname('days').isnull then days:=tblitem.fieldbyname('days').value
        else days:=0;
        with clientdataset1 do begin
          close;
          params.clear;
          if frmmain.tblmould.fieldbyname('ksrq').isnull then begin
            ksrq:=frmmain.tblmould.fieldbyname('ksrq').value;
            params.createparam(ftstring,'machno',ptinput);
            params.createparam(ftinteger,'seq',ptinput);
            params.createparam(ftinteger,'dseq',ptinput);
            params.createparam(ftstring,'bh',ptinput);
            params.createparam(ftstring,'ms',ptinput);
            params.createparam(ftinteger,'days',ptinput);
            params.createparam(ftstring,'dept',ptinput);
            params.createparam(ftstring,'fzr1',ptinput);
            params.createparam(ftstring,'fzr2',ptinput);
            params.createparam(ftdate,'ksrq',ptinput);
            commandtext:='insert into tblcritical1(machno,seq,dseq,bh,ms,days,dday,fct1,fct2,fct3,fct4,dept,fzr1,fzr2,ksrq) values(:machno,:seq,:dseq,:bh,:ms,:days,0,false,false,false,false,:dept,:fzr1,:fzr2,:ksrq)';
            params[0].asstring:=frmmain.tblmould.fieldbyname('machno').value;
            params[1].asinteger:=frmmain.tblmould.fieldbyname('seq').value;
            params[2].asinteger:=seq1+i+1;
            params[3].asstring:=bh;
            params[4].asstring:=ms;
            params[5].asinteger:=days;
            params[6].asstring:=dept;
            params[7].asstring:=fzr1;
            params[8].asstring:=fzr2;
            params[9].asdate:=ksrq;
          end
          else begin
            bdt:=frmmain.tblmould.fieldbyname('ksrq').value-days;
            params.createparam(ftstring,'machno',ptinput);
            params.createparam(ftinteger,'seq',ptinput);
            params.createparam(ftinteger,'dseq',ptinput);
            params.createparam(ftstring,'bh',ptinput);
            params.createparam(ftstring,'ms',ptinput);
            params.createparam(ftinteger,'days',ptinput);
            params.createparam(ftdate,'bdt',ptinput);
            params.createparam(ftstring,'dept',ptinput);
            params.createparam(ftstring,'fzr1',ptinput);
            params.createparam(ftstring,'fzr2',ptinput);
            commandtext:='insert into tblcritical1(machno,seq,dseq,bh,ms,days,bdt,dday,fct1,fct2,fct3,fct4,dept,fzr1,fzr2) values(:machno,:seq,:dseq,:bh,:ms,:days,:bdt,0,false,false,false,false,:dept,:fzr1,:fzr2)';
            params[0].asstring:=frmmain.tblmould.fieldbyname('machno').value;
            params[1].asinteger:=frmmain.tblmould.fieldbyname('seq').value;
            params[2].asinteger:=seq1+i+1;
            params[3].asstring:=bh;
            params[4].asstring:=ms;
            params[5].asinteger:=days;
            params[6].asdate:=bdt;
            params[7].asstring:=dept;
            params[8].asstring:=fzr1;
            params[9].asstring:=fzr2;
          end;
          execute;
        end;
      end;
      with frmcritical.tblcritical1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'machno',ptinput);
        params.createparam(ftinteger,'seq',ptinput);
        commandtext:='select * from tblcritical1 where machno=:machno and seq=:seq';
        params[0].asstring:=frmmain.tblmould.fieldbyname('machno').value;
        params[1].asinteger:=frmmain.tblmould.fieldbyname('seq').value;
        open;
        last;
      end;
    end;
  end
  else begin
    if label1.caption='JobInsert' then begin
      seq1:=frmcritical.tblcritical1.fieldbyname('dseq').value;
      if dbgrideh1.selectedrows.count>0 then begin
        with clientdataset1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'dseq',ptinput);
          params.createparam(ftstring,'machno',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          params.createparam(ftinteger,'dseq1',ptinput);
          commandtext:='update tblcritical1 set dseq=dseq+:dseq where machno=:machno and seq=:seq and dseq>:dseq1';
          params[0].asinteger:=dbgrideh1.SelectedRows.Count;
          params[1].asstring:=frmmain.tblmould.fieldbyname('machno').value;
          params[2].asinteger:=frmmain.tblmould.fieldbyname('seq').value;
          params[3].asinteger:=seq1;
          execute;
        end;
        for i:=0 to dbgrideh1.selectedrows.count-1 do begin
          tblitem.GotoBookmark(pointer(dbgrideh1.selectedrows.items[i]));
          bh:=tblitem.fieldbyname('bh').value;
          ms:=tblitem.fieldbyname('ms').value;
          if not tblitem.fieldbyname('dept').isnull then dept:=tblitem.fieldbyname('dept').value
          else dept:='';
          if not tblitem.fieldbyname('fzr1').isnull then fzr1:=tblitem.fieldbyname('fzr1').value
          else dept:='';
          if not tblitem.fieldbyname('fzr2').isnull then fzr2:=tblitem.fieldbyname('fzr2').value
          else fzr2:='';
          if not tblitem.fieldbyname('days').isnull then days:=tblitem.fieldbyname('days').value
          else days:=0;
          with clientdataset1 do begin
            close;
            params.clear;
            if frmmain.tblmould.fieldbyname('ksrq').isnull then begin
              ksrq:=frmmain.tblmould.fieldbyname('ksrq').value;
              params.createparam(ftstring,'machno',ptinput);
              params.createparam(ftinteger,'seq',ptinput);
              params.createparam(ftinteger,'dseq',ptinput);
              params.createparam(ftstring,'bh',ptinput);
              params.createparam(ftstring,'ms',ptinput);
              params.createparam(ftinteger,'days',ptinput);
              params.createparam(ftstring,'dept',ptinput);
              params.createparam(ftstring,'fzr1',ptinput);
              params.createparam(ftstring,'fzr2',ptinput);
              params.createparam(ftdate,'ksrq',ptinput);
              commandtext:='insert into tblcritical1(machno,seq,dseq,bh,ms,days,dday,fct1,fct2,fct3,fct4,dept,fzr1,fzr2,ksrq) values(:machno,:seq,:dseq,:bh,:ms,:days,0,false,false,false,false,:dept,:fzr1,:fzr2,:ksrq)';
              params[0].asstring:=frmmain.tblmould.fieldbyname('machno').value;
              params[1].asinteger:=frmmain.tblmould.fieldbyname('seq').value;
              params[2].asinteger:=seq1+i;
              params[3].asstring:=bh;
              params[4].asstring:=ms;
              params[5].asinteger:=days;
              params[6].asstring:=dept;
              params[7].asstring:=fzr1;
              params[8].asstring:=fzr2;
              params[9].asdate:=ksrq;
            end
            else begin
              bdt:=frmmain.tblmould.fieldbyname('ksrq').value-days;
              params.createparam(ftstring,'machno',ptinput);
              params.createparam(ftinteger,'seq',ptinput);
              params.createparam(ftinteger,'dseq',ptinput);
              params.createparam(ftstring,'bh',ptinput);
              params.createparam(ftstring,'ms',ptinput);
              params.createparam(ftinteger,'days',ptinput);
              params.createparam(ftdate,'bdt',ptinput);
              params.createparam(ftstring,'dept',ptinput);
              params.createparam(ftstring,'fzr1',ptinput);
              params.createparam(ftstring,'fzr2',ptinput);
              commandtext:='insert into tblcritical1(machno,seq,dseq,bh,ms,days,bdt,dday,fct1,fct2,fct3,fct4,dept,fzr1,fzr2) values(:machno,:seq,:dseq,:bh,:ms,:days,:bdt,0,false,false,false,false,:dept,:fzr1,:fzr2)';
              params[0].asstring:=frmmain.tblmould.fieldbyname('machno').value;
              params[1].asinteger:=frmmain.tblmould.fieldbyname('seq').value;
              params[2].asinteger:=seq1+i;
              params[3].asstring:=bh;
              params[4].asstring:=ms;
              params[5].asinteger:=days;
              params[6].asdate:=bdt;
              params[7].asstring:=dept;
              params[8].asstring:=fzr1;
              params[9].asstring:=fzr2;
            end;
            execute;
          end;
        end;
        with frmcritical.tblcritical1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'machno',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from tblcritical1 where machno=:machno and seq=:seq';
          params[0].asstring:=frmmain.tblmould.fieldbyname('machno').value;
          params[1].asinteger:=frmmain.tblmould.fieldbyname('seq').value;
          open;
          last;
        end;
      end;
    end
    else begin
    end;
  end;
  close;}
  screen.cursor:=crdefault;
end;

procedure Tfrmitemlist.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (tblitem.state=dsinsert) or (tblitem.state=dsedit) then tblitem.post;
  action:=cafree;
  frmitemlist:=nil;
end;

end.
