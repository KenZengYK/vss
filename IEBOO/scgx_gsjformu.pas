unit scgx_gsjformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  DBClient, StdCtrls, Buttons, cxDropDownEdit, cxCurrencyEdit;

type
  Tfrmscgx_gsj = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    Query1seq: TIntegerField;
    Query1fty: TStringField;
    Query1fae: TStringField;
    Query1difficulty: TStringField;
    Query1prodcode: TStringField;
    Query1price: TFloatField;
    cxGrid1DBTableView1fty: TcxGridDBColumn;
    cxGrid1DBTableView1fae: TcxGridDBColumn;
    cxGrid1DBTableView1difficulty: TcxGridDBColumn;
    cxGrid1DBTableView1prodcode: TcxGridDBColumn;
    cxGrid1DBTableView1price: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmscgx_gsj: Tfrmscgx_gsj;

implementation

uses dlu, scgxu;

{$R *.dfm}

procedure Tfrmscgx_gsj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmscgx_gsj:=nil;
end;

procedure Tfrmscgx_gsj.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q1 from ie_price_master';
    open;
    if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
end;

procedure Tfrmscgx_gsj.Query1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
end;

procedure Tfrmscgx_gsj.BitBtn1Click(Sender: TObject);
begin
  cxgrid1.SetFocus;
  query1.Append;
end;

procedure Tfrmscgx_gsj.BitBtn2Click(Sender: TObject);
begin
  if not query1.fieldbyname('seq').isnull then begin
    if application.MessageBox('Delete this record?','Question',mb_iconquestion+mb_yesno)=idyes then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='delete from ie_price_master where seq=:x1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        execute;
      end;
      query1.Delete;
    end;
  end;
end;

procedure Tfrmscgx_gsj.BitBtn3Click(Sender: TObject);
begin
  if (query1.State=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmscgx_gsj.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from ie_price_master';
    open;
  end;
end;

end.
