unit DailyNotepadformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBClient, Buttons,
  DBCtrls;

type
  Tfrmdailynotepad = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    lblfty: TLabel;
    Label2: TLabel;
    lbldt: TLabel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query1FTY: TStringField;
    Query1DT: TDateField;
    Query1PLINE: TStringField;
    Query1NOTEPAD: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBMemo1: TDBMemo;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query4AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdailynotepad: Tfrmdailynotepad;

implementation

uses aqlmainformu, xtdlformu, defectsummaryformu;

{$R *.dfm}

procedure Tfrmdailynotepad.Query1NewRecord(DataSet: TDataSet);
begin
  query1.fieldbyname('fty').value:=frmdefectsummary.ComboBox2.text;
  query1.fieldbyname('dt').value:=frmdefectsummary.DateEdit1.date;
end;

procedure Tfrmdailynotepad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmdailynotepad:=nil;
end;

procedure Tfrmdailynotepad.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select fty from tbl_aql_dailynotepad where fty='''+frmdefectsummary.combobox2.text+''' and dt=:x1 and pline=:x2';
      params[0].asdate:=frmdefectsummary.DateEdit1.date;
      params[1].asstring:=query1.fieldbyname('pline').value;
      open;
      if not fieldbyname('fty').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftdate,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          commandtext:='update tbl_aql_dailynotepad set notepad=:x1 where fty=:x2 and dt=:x3 and pline=:x4';
          if not query1.fieldbyname('notepad').isnull then
          params[0].asstring:=query1.fieldbyname('notepad').value
          else params[0].asstring:='';
          params[1].asstring:=query1.fieldbyname('fty').value;
          params[2].asdate:=query1.fieldbyname('dt').value;
          params[3].asstring:=query1.fieldbyname('pline').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftdate,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          commandtext:='insert into tbl_aql_dailynotepad(notepad,fty,dt,pline) values(:x1,:x2,:x3,:x4)';
          if not query1.fieldbyname('notepad').isnull then
          params[0].asstring:=query1.fieldbyname('notepad').value
          else params[0].asstring:='';
          params[1].asstring:=query1.fieldbyname('fty').value;
          params[2].asdate:=query1.fieldbyname('dt').value;
          params[3].asstring:=query1.fieldbyname('pline').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmdailynotepad.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.append;
end;

procedure Tfrmdailynotepad.FormShow(Sender: TObject);
var
  gx:string;
begin
  lblfty.caption:=frmdefectsummary.ComboBox2.text;
  lbldt.Caption:=frmdefectsummary.dateedit1.Text;
  //gx:='';
  if lblfty.caption='GG' then gx:=frmxtdl.query1.fieldbyname('fty').value
  else gx:=lblfty.caption;
  dbgrideh1.Columns[0].PickList.clear;
  dbgrideh1.Columns[1].PickList.clear;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select pline from tblline a where tplant='''+gx+''' and lactive=1 '
                +'and not exists (select pline from tbl_aql_s0 b where a.pline=b.pline and b.dt=:x1 and endline=1)';
    params[0].asdate:=frmdefectsummary.dateedit1.date;
    open;
    first;
    while not eof do begin
      dbgrideh1.Columns[0].PickList.add(fieldbyname('pline').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_aql_notepadmaster order by ncode';
    open;
    first;
    while not eof do begin
      dbgrideh1.columns[1].PickList.add(fieldbyname('notepad').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from tbl_aql_dailynotepad where fty=:x1 and dt=:x2';
    params[0].asstring:=frmdefectsummary.ComboBox2.text;
    params[1].asdate:=frmdefectsummary.DateEdit1.Date;
    open;
  end;
end;

procedure Tfrmdailynotepad.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='delete from tbl_aql_dailynotepad where fty=:x1 and dt=:x2 and pline=:x3';
      params[0].asstring:=frmdefectsummary.ComboBox2.text;
      params[1].asdate:=frmdefectsummary.DateEdit1.date;
      params[2].asstring:=query1.fieldbyname('pline').value;
      execute;
    end;
    query1.delete;
  end;
end;

procedure Tfrmdailynotepad.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
  if (query4.state=dsedit) or (query4.state=dsinsert) then query4.post;
end;

procedure Tfrmdailynotepad.Query4AfterPost(DataSet: TDataSet);
begin
  if query4.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      commandtext:='select * from tbl_aql_dailyaqlnotepad where cust=:x1 and tplant=:x2 and ws=:x3 and aql_type=:x4 and dt=:x5';
      params[0].asstring:=query4.fieldbyname('cust').value;
      params[1].asstring:=query4.fieldbyname('tplant').value;
      params[2].asstring:=query4.fieldbyname('ws').value;
      params[3].asstring:=query4.fieldbyname('aql_type').value;
      params[4].asdate:=query4.fieldbyname('dt').value;
      open;
      if not fieldbyname('tplant').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x0',ptinput);
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftdate,'x5',ptinput);
          commandtext:='update tbl_aql_dailyaqlnotepad set remarks=:x0 where cust=:x1 and tplant=:x2 and ws=:x3 and aql_type=:x4 and dt=:x5';
          if not query4.fieldbyname('remarks').isnull then
          params[0].asstring:=query4.fieldbyname('remarks').value
          else params[0].asstring:='';
          params[1].asstring:=query4.fieldbyname('cust').value;
          params[2].asstring:=query4.fieldbyname('tplant').value;
          params[3].asstring:=query4.fieldbyname('ws').value;
          params[4].asstring:=query4.fieldbyname('aql_type').value;
          params[5].asdate:=query4.fieldbyname('dt').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x0',ptinput);
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftdate,'x5',ptinput);
          commandtext:='insert into tbl_aql_dailyaqlnotepad(remarks,cust,tplant,ws,aql_type,dt) values(:x0,:x1,:x2,:x3,:x4,:x5)';
          if not query4.fieldbyname('remarks').isnull then
          params[0].asstring:=query4.fieldbyname('remarks').value
          else params[0].asstring:='';
          params[1].asstring:=query4.fieldbyname('cust').value;
          params[2].asstring:=query4.fieldbyname('tplant').value;
          params[3].asstring:=query4.fieldbyname('ws').value;
          params[4].asstring:=query4.fieldbyname('aql_type').value;
          params[5].asdate:=query4.fieldbyname('dt').value;
          execute;
        end;
      end;
    end;
  end;
end;

end.
