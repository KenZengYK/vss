unit shv_custformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, DBCtrls, DB, DBClient,
  Buttons;

type
  Tfrmshv_cust = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Label3: TLabel;
    DBText4: TDBText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmshv_cust: Tfrmshv_cust;

implementation

uses mainformu, custformu;

{$R *.dfm}

procedure Tfrmshv_cust.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmshv_cust:=nil;
end;

procedure Tfrmshv_cust.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q1 from cust_exfty_shv';
    open;
    if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  query1.fieldbyname('cust').value:=frmcustomer.Query2.fieldbyname('cust').value;
  query1.fieldbyname('lst2').value:=frmcustomer.Query2.fieldbyname('lst2').value;
  query1.fieldbyname('lst2d').value:=frmcustomer.Query2.fieldbyname('lst2d').value;
  query1.fieldbyname('tplant').value:=frmcustomer.Query2.fieldbyname('tplant').value;
  query1.fieldbyname('seq').value:=seq;
  query1.fieldbyname('flag6').value:='B1';
  query1.fieldbyname('shv').value:=0;
end;

procedure Tfrmshv_cust.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.Append;
end;

procedure Tfrmshv_cust.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
end;

procedure Tfrmshv_cust.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from cust_exfty_shv where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftfloat,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='update cust_exfty_shv set flag6=:x1,shv=:x2 where seq=:x3';
          if not query1.fieldbyname('flag6').IsNull then
          params[0].asstring:=query1.fieldbyname('flag6').value
          else params[0].asstring:='B1';
          if not query1.fieldbyname('shv').isnull then
          params[1].asfloat:=query1.fieldbyname('shv').value
          else params[1].asfloat:=0;
          params[2].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftfloat,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          commandtext:='insert into cust_exfty_shv(cust,lst2,tplant,seq,flag6,shv,lst2d) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
          params[0].asstring:=query1.fieldbyname('cust').value;
          params[1].asstring:=query1.fieldbyname('lst2').value;
          params[2].asstring:=query1.fieldbyname('tplant').value;
          params[3].asinteger:=query1.fieldbyname('seq').value;
          if not query1.fieldbyname('flag6').IsNull then
          params[4].asstring:=query1.fieldbyname('flag6').value
          else params[4].asstring:='B1';
          if not query1.fieldbyname('shv').isnull then
          params[5].asfloat:=query1.fieldbyname('shv').value
          else params[5].asfloat:=0;
          params[6].asstring:=query1.fieldbyname('lst2d').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmshv_cust.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from cust_exfty_shv where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    query1.Delete;
  end;
end;

end.
