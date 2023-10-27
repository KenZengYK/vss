unit transitbalancingformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, DB, DBClient;

type
  Tfrmtransitbalancing = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query3: TClientDataSet;
    Query2: TClientDataSet;
    DataSource2: TDataSource;
    Query4: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query2NewRecord(DataSet: TDataSet);
    procedure Query2AfterPost(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query2AfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtransitbalancing: Tfrmtransitbalancing;

implementation

uses mainformu, analysisformu;

{$R *.dfm}

procedure Tfrmtransitbalancing.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmtransitbalancing:=nil;
end;

procedure Tfrmtransitbalancing.Query1AfterScroll(DataSet: TDataSet);
begin
  if not query1.fieldbyname('j_no').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select * from tbl_newtransit1 where j2_job=:x1 and acol=:x2 and rwo=:x3';
      params[0].asstring:=query1.fieldbyname('j2_job').value;
      params[1].asstring:=query1.fieldbyname('acol').value;
      params[2].asstring:=query1.fieldbyname('rwo').value;
      open;
    end;
  end;
end;

procedure Tfrmtransitbalancing.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if edit1.text>'' then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='execute procedure sp_gen_newtransit(:x1)';
      params[0].asstring:=edit1.text;
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='select * from tbl_newtransit where j_no=:x1';
      params[0].asstring:=edit1.text;
      open;
    end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmtransitbalancing.Query2NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query3 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q from tbl_newtransit1';
    open;
    if not fieldbyname('q').isnull then seq:=fieldbyname('q').value+1
    else seq:=1;
  end;
  query2.fieldbyname('j_no').value:=query1.fieldbyname('j_no').value;
  query2.fieldbyname('j2_job').value:=query1.fieldbyname('j2_job').value;
  query2.fieldbyname('acol').value:=query1.fieldbyname('acol').value;
  query2.fieldbyname('rwo').value:=query1.fieldbyname('rwo').value;
  query2.fieldbyname('seq').value:=seq;
  query2.fieldbyname('dt').value:=date;
  query2.fieldbyname('qty').value:=0;
end;

procedure Tfrmtransitbalancing.Query2AfterPost(DataSet: TDataSet);
var
  cutqty,moldqty,mcutqty,ppqty:integer;
begin
  if query2.applyupdates(-1)>0 then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tbl_newtransit1 where seq=:x1';
      params[0].asinteger:=query2.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        with query4 do begin
          close;
          params.clear;
          params.createparam(ftdate,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          commandtext:='update tbl_newtransit1 set dt=:x1,typ=:x2,qty=:x3 where seq=:x4';
          if not query2.fieldbyname('dt').isnull then
          params[0].asdate:=query2.fieldbyname('dt').value
          else params[0].asdate:=date;
          if not query2.fieldbyname('typ').isnull then
          params[1].asstring:=query2.fieldbyname('typ').value
          else params[1].asstring:='';
          if not query2.fieldbyname('qty').isnull then
          params[2].asinteger:=query2.fieldbyname('qty').value
          else params[2].asinteger:=0;
          params[3].asinteger:=query2.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query4 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftdate,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          params.createparam(ftinteger,'x8',ptinput);
          commandtext:='insert into tbl_newtransit1(j_no,j2_job,acol,rwo,seq,dt,typ,qty) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
          params[0].asstring:=query2.fieldbyname('j_no').value;
          params[1].asstring:=query2.fieldbyname('j2_job').value;
          params[2].asstring:=query2.fieldbyname('acol').value;
          params[3].asstring:=query2.fieldbyname('rwo').value;
          params[4].asinteger:=query2.fieldbyname('seq').value;
          if not query2.fieldbyname('dt').isnull then
          params[5].asdate:=query2.fieldbyname('dt').value
          else params[5].asdate:=date;
          if not query2.fieldbyname('typ').isnull then
          params[6].asstring:=query2.fieldbyname('typ').value
          else params[6].asstring:='';
          if not query2.fieldbyname('qty').isnull then
          params[7].asinteger:=query2.fieldbyname('qty').value
          else params[7].asinteger:=0;
          execute;
        end;
      end;
    end;
  end;
  cutqty:=0; moldqty:=0; mcutqty:=0; ppqty:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select distinct typ,sum(qty) as qty from tbl_newtransit1 where j2_job=:x1 and acol=:x2 and rwo=:x3 group by typ';
    params[0].asstring:=query1.fieldbyname('j2_job').value;
    params[1].asstring:=query1.fieldbyname('acol').value;
    params[2].asstring:=query1.fieldbyname('rwo').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('typ').value='Cutting' then cutqty:=cutqty+fieldbyname('qty').value
      else if fieldbyname('typ').value='Molding' then moldqty:=moldqty+fieldbyname('qty').value
      else if fieldbyname('typ').value='Mold Cut' then mcutqty:=mcutqty+fieldbyname('qty').value
      else if fieldbyname('typ').value='PP' then ppqty:=ppqty+fieldbyname('qty').value;
      application.ProcessMessages;
      next;
    end;
  end;
  with query1 do begin
    edit;
    fieldbyname('cutqty').Value:=cutqty;
    fieldbyname('moldqty').value:=moldqty;
    fieldbyname('mcutqty').value:=mcutqty;
    fieldbyname('ppqty').value:=ppqty;
    post;
  end;
end;

procedure Tfrmtransitbalancing.BitBtn2Click(Sender: TObject);
begin
  dbgrideh2.SetFocus;
  dbgrideh2.SelectedIndex:=0;
  query2.append;
end;

procedure Tfrmtransitbalancing.BitBtn3Click(Sender: TObject);
begin
  if not query2.fieldbyname('seq').isnull then begin
    if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='delete from tbl_newtransit1 where seq=:x1';
        params[0].asinteger:=query2.fieldbyname('seq').value;
        execute;
      end;
      query2.delete;
    end;
  end;
end;

procedure Tfrmtransitbalancing.BitBtn4Click(Sender: TObject);
begin
  if (query2.state=dsedit) or (query2.state=dsinsert) then query2.post;
end;

procedure Tfrmtransitbalancing.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.applyupdates(-1)>0 then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='update tbl_newtransit set cutqty=:x1,moldqty=:x2,mcutqty=:x3,ppqty=:x4 where j2_job='''+query1.fieldbyname('j2_job').value+''' and acol='''+query1.fieldbyname('acol').value+''' and rwo='''+query1.fieldbyname('rwo').value+'''';
      params[0].asinteger:=query1.fieldbyname('cutqty').value;
      params[1].asinteger:=query1.fieldbyname('moldqty').value;
      params[2].asinteger:=query1.fieldbyname('mcutqty').value;
      params[3].asinteger:=query1.fieldbyname('ppqty').value;
      execute;
    end;
  end;
end;

procedure Tfrmtransitbalancing.Query2AfterDelete(DataSet: TDataSet);
var
  cutqty,moldqty,mcutqty,ppqty:integer;
begin
  cutqty:=0; moldqty:=0; mcutqty:=0; ppqty:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select distinct typ,sum(qty) as qty from tbl_newtransit1 where j2_job=:x1 and acol=:x2 and rwo=:x3 group by typ';
    params[0].asstring:=query1.fieldbyname('j2_job').value;
    params[1].asstring:=query1.fieldbyname('acol').value;
    params[2].asstring:=query1.fieldbyname('rwo').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('typ').value='Cutting' then cutqty:=cutqty+fieldbyname('qty').value
      else if fieldbyname('typ').value='Molding' then moldqty:=moldqty+fieldbyname('qty').value
      else if fieldbyname('typ').value='Mold Cut' then mcutqty:=mcutqty+fieldbyname('qty').value
      else if fieldbyname('typ').value='PP' then ppqty:=ppqty+fieldbyname('qty').value;
      application.ProcessMessages;
      next;
    end;
  end;
  with query1 do begin
    edit;
    fieldbyname('cutqty').Value:=cutqty;
    fieldbyname('moldqty').value:=moldqty;
    fieldbyname('mcutqty').value:=mcutqty;
    fieldbyname('ppqty').value:=ppqty;
    post;
  end;
end;

end.
