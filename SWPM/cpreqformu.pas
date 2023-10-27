unit cpreqformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGridEh, ExtCtrls, Buttons, DB, DBClient,
  GridsEh;

type
  Tfrmcpreq = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcpreq: Tfrmcpreq;

implementation

uses mainformu, cpreportformu;

{$R *.dfm}

procedure Tfrmcpreq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmcpreq:=nil;
end;

procedure Tfrmcpreq.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q1 from cust_plan';
    open;
    if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1
    else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
end;

procedure Tfrmcpreq.Query1AfterPost(DataSet: TDataSet);
var
  y,m,d:word;
begin
  decodedate(date,y,m,d);
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from cust_plan where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftfloat,'x6',ptinput);
          params.createparam(ftinteger,'x8',ptinput);
          params.createparam(ftboolean,'x9',ptinput);
          params.createparam(ftfloat,'x10',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          commandtext:='update cust_plan set tplant=:x1,grp=:x2,cust=:x3,ny=:x4,f6=:x5,qty=:x6,wk=:x8,cfm=:x9,qty1=:x10 where seq=:x7';
          if not query1.fieldbyname('tplant').isnull then
          params[0].asstring:=query1.fieldbyname('tplant').value
          else params[0].asstring:='SL';
          if not query1.fieldbyname('grp').isnull then
          params[1].asstring:=query1.fieldbyname('grp').value
          else params[1].asstring:='C';
          if not query1.fieldbyname('cust').isnull then
          params[2].asstring:=query1.fieldbyname('cust').value
          else params[2].asstring:='TAMA';
          if not query1.fieldbyname('ny').isnull then
          params[3].asstring:=query1.fieldbyname('ny').value
          else params[3].asstring:=inttostr(y)+'-'+copy('0'+inttostr(m),length('0'+inttostr(m))-1,2);
          if not query1.fieldbyname('f6').isnull then
          params[4].asstring:=query1.fieldbyname('f6').value
          else params[4].asstring:='B';
          if not query1.fieldbyname('qty').isnull then
          params[5].asfloat:=query1.fieldbyname('qty').value
          else params[5].asfloat:=0;
          if not query1.fieldbyname('wk').isnull then
          params[6].asinteger:=query1.fieldbyname('wk').value
          else params[6].asinteger:=0;
          if not query1.fieldbyname('cfm').isnull then
          params[7].asboolean:=query1.fieldbyname('cfm').value
          else params[7].asboolean:=false;
          if not query1.fieldbyname('qty1').isnull then
          params[8].asfloat:=query1.fieldbyname('qty1').value
          else params[8].asfloat:=0;
          params[9].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftfloat,'x6',ptinput);
          params.createparam(ftinteger,'x8',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          params.createparam(ftboolean,'x9',ptinput);
          params.createparam(ftfloat,'x10',ptinput);
          commandtext:='insert into cust_plan(tplant,grp,cust,ny,f6,qty,wk,seq,cfm,qty1) values(:x1,:x2,:x3,:x4,:x5,:x6,:x8,:x7,:x9,:x10)';
          if not query1.fieldbyname('tplant').isnull then
          params[0].asstring:=query1.fieldbyname('tplant').value
          else params[0].asstring:='SL';
          if not query1.fieldbyname('grp').isnull then
          params[1].asstring:=query1.fieldbyname('grp').value
          else params[1].asstring:='C';
          if not query1.fieldbyname('cust').isnull then
          params[2].asstring:=query1.fieldbyname('cust').value
          else params[2].asstring:='TAMA';
          if not query1.fieldbyname('ny').isnull then
          params[3].asstring:=query1.fieldbyname('ny').value
          else params[3].asstring:=inttostr(y)+copy('0'+inttostr(m),length('0'+inttostr(m))-1,2);
          if not query1.fieldbyname('f6').isnull then
          params[4].asstring:=query1.fieldbyname('f6').value
          else params[4].asstring:='B';
          if not query1.fieldbyname('qty').isnull then
          params[5].asfloat:=query1.fieldbyname('qty').value
          else params[5].asfloat:=0;
          if not query1.fieldbyname('wk').isnull then
          params[6].asinteger:=query1.fieldbyname('wk').value
          else params[6].asinteger:=0;
          params[7].asinteger:=query1.fieldbyname('seq').value;
          if not query1.fieldbyname('cfm').isnull then
          params[8].asboolean:=query1.fieldbyname('cfm').value
          else params[8].asboolean:=false;
          if not query1.fieldbyname('qty1').isnull then
          params[9].asfloat:=query1.fieldbyname('qty1').value
          else params[9].asfloat:=0;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmcpreq.BitBtn5Click(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from cust_plan where 1=1';
    if combobox1.text>'' then commandtext:=commandtext+' and grp='''+combobox1.text+'''';
    if edit1.text>'' then commandtext:=commandtext+' and cust='''+edit1.text+'''';
    open;
  end;
end;

procedure Tfrmcpreq.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.Append;
end;

procedure Tfrmcpreq.BitBtn2Click(Sender: TObject);
begin
  if query1.Active then begin
    if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='delete from cust_plan where seq=:x1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        execute;
      end;
      query1.Delete;
    end;
  end;
end;

procedure Tfrmcpreq.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmcpreq.Query1AfterOpen(DataSet: TDataSet);
begin
  dbgrideh1.Columns[2].PickList.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp from cust_exfty';
    open;
    first;
    while not eof do begin
      dbgrideh1.Columns[2].PickList.add(fieldbyname('pgrp').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

end.
