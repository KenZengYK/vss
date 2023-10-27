unit shp_accountformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, DBClient, cxCurrencyEdit,
  StdCtrls, Mask, RzEdit, Buttons, cxGridExportLink;

type
  TfrmShp_Account = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    cxGrid1DBTableView1PDN: TcxGridDBColumn;
    cxGrid1DBTableView1SOPNO: TcxGridDBColumn;
    cxGrid1DBTableView1CUST: TcxGridDBColumn;
    cxGrid1DBTableView1J_NO: TcxGridDBColumn;
    cxGrid1DBTableView1J2_JOB: TcxGridDBColumn;
    cxGrid1DBTableView1CSTYLE: TcxGridDBColumn;
    cxGrid1DBTableView1T4QTY: TcxGridDBColumn;
    cxGrid1DBTableView1EXFTY: TcxGridDBColumn;
    cxGrid1DBTableView1UPRC55: TcxGridDBColumn;
    cxGrid1DBTableView1TPRC1: TcxGridDBColumn;
    cxGrid1DBTableView1TPRC: TcxGridDBColumn;
    cxGrid1DBTableView1INV: TcxGridDBColumn;
    cxGrid1DBTableView1CURN40: TcxGridDBColumn;
    cxGrid1DBTableView1HSNAME: TcxGridDBColumn;
    cxGrid1DBTableView1ONDT: TcxGridDBColumn;
    cxGrid1DBTableView1EXRATE: TcxGridDBColumn;
    cxGrid1DBTableView1UNITPX: TcxGridDBColumn;
    cxGrid1DBTableView1TTLPX: TcxGridDBColumn;
    Label1: TLabel;
    DateEdit1: TRzDateTimeEdit;
    Label2: TLabel;
    DateEdit2: TRzDateTimeEdit;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    SaveDialog1: TSaveDialog;
    BitBtn2: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmShp_Account: TfrmShp_Account;

implementation

uses mainformu, analysisformu;

{$R *.dfm}

procedure TfrmShp_Account.BitBtn1Click(Sender: TObject);
var
  dt1,dt2:string;
begin
  screen.cursor:=crSQLwait;
  try
  if (dateedit1.date>0) and (dateedit2.date>0) then begin
    dt1:=formatdatetime('yyyy/MM/dd',dateedit1.date);
    dt2:=formatdatetime('yyyy/MM/dd',dateedit2.date);
    with query1 do begin
      close;
      params.clear;
      commandtext:='select distinct a.exfty,b.ondt,b.inv,b.cust,sum(b.t4qty) as t4qty,b.uprc55,b.curn40,sum(b.t4qty*b.uprc55) as tprc1,'
                  +'b.uprc/b.uprc55 as exrate,sum(b.t4qty*b.uprc) as tprc,b.j_no,b.pdn||''-''||b.voyn as pdn,b.sopno,b.j2_job,'
                  +'b.cstyle,b.hsname,sum(b.ttlpx)/sum(case when b.t4qty>0 then b.t4qty else b.sqty end) as unitpx,sum(b.ttlpx) as ttlpx '
                  +'from tbl_pdn_shpadvice1 a,tbl_pdn_shpadvice2 b where a.tplant=b.tplant and a.shpno=b.shpno '
                  +'and b.ondt>='''+dt1+''' and b.ondt<='''+dt2+''' '
                  +'group by a.exfty,b.ondt,b.inv,b.cust,b.uprc55,b.curn40,b.uprc,b.j_no,b.pdn,b.voyn,b.sopno,b.j2_job,b.cstyle,b.hsname';
      open;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmShp_Account.BitBtn5Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure TfrmShp_Account.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmshp_account:=nil;
end;

end.
