unit Capacitygapformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridBandedTableView, cxGridDBBandedTableView, ExtCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBClient, StdCtrls, Buttons, cxGridExportLink,
  cxMemo;

type
  Tfrmcapacitygap = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    cxView1: TcxGridDBBandedTableView;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    cxView1LINE: TcxGridDBBandedColumn;
    cxView1CUST: TcxGridDBBandedColumn;
    cxView1CSTYLE: TcxGridDBBandedColumn;
    cxView1FLAG60: TcxGridDBBandedColumn;
    cxView1WK: TcxGridDBBandedColumn;
    cxView1WCRQ: TcxGridDBBandedColumn;
    cxView1SCQTY: TcxGridDBBandedColumn;
    cxView1TTLQN: TcxGridDBBandedColumn;
    cxView1TTLQTY: TcxGridDBBandedColumn;
    cxView1SLINE: TcxGridDBBandedColumn;
    cxView1SCUST: TcxGridDBBandedColumn;
    cxView1SCSTYLE: TcxGridDBBandedColumn;
    cxView1SFLAG60: TcxGridDBBandedColumn;
    cxView1SWK: TcxGridDBBandedColumn;
    cxView1SKSRQ: TcxGridDBBandedColumn;
    cxView1SSCQTY: TcxGridDBBandedColumn;
    cxView1STTLQN: TcxGridDBBandedColumn;
    cxView1STTLQTY: TcxGridDBBandedColumn;
    cxView1GAP_G: TcxGridDBBandedColumn;
    cxView1GAP_H: TcxGridDBBandedColumn;
    cxView1GAP_N: TcxGridDBBandedColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SaveDialog1: TSaveDialog;
    cxView1Column1: TcxGridDBBandedColumn;
    cxView1Column2: TcxGridDBBandedColumn;
    cxView1Column3: TcxGridDBBandedColumn;
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcapacitygap: Tfrmcapacitygap;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmcapacitygap.BitBtn1Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmcapacitygap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmcapacitygap:=nil;
end;

procedure Tfrmcapacitygap.Query1AfterOpen(DataSet: TDataSet);
begin
  (query1.fieldbyname('wcrq') as tdatetimefield).displayformat:='mm/dd';
  (query1.fieldbyname('sksrq') as tdatetimefield).displayformat:='mm/dd';
  (query1.fieldbyname('swcrq') as tdatetimefield).displayformat:='mm/dd';
  cxView1.DataController.Summary.FooterSummaryValues[4]:='TTL:';
  cxView1.DataController.Summary.FooterSummaryValues[5]:='TTL:';
end;

end.
