unit ufrmSelectReturnData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxTextEdit, cxCurrencyEdit;

type
  TfrmSelectReturnData = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    panel1: TPanel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1WORK_ORDER: TcxGridDBColumn;
    cxGrid1DBTableView1STOCKROOM: TcxGridDBColumn;
    cxGrid1DBTableView1Location: TcxGridDBColumn;
    cxGrid1DBTableView1UOM: TcxGridDBColumn;
    cxGrid1DBTableView1ISSUE_QTY: TcxGridDBColumn;
    cxGrid1DBTableView1IDO: TcxGridDBColumn;
    cxGrid1DBTableView1PROJECT_NO: TcxGridDBColumn;
    DataSource1: TDataSource;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
    FCanDbClick:boolean;
  public
    { Public declarations }
    procedure SetLanguageStr;
  end;

var
  frmSelectReturnData: TfrmSelectReturnData;
function DoSelectData(ADataSet: TDataSet): boolean;

implementation

uses ufrmMain;

{$R *.dfm}

function DoSelectData(ADataSet: TDataSet): boolean;
begin
  result := False;
  frmSelectReturnData := TfrmSelectReturnData.Create(nil);
  with frmSelectReturnData do
  begin
    try
      Caption := 'select Data: (' + ADataSet.FieldByName('Company').AsString +','+ ADataSet.FieldByName('LOT_ID').AsString + ')';
      DataSource1.DataSet := ADataSet;
      if ShowModal = IDOK then
      begin
         Result:=True;
      end;
    finally // wrap up
      FreeAndNil(frmSelectReturnData);
    end; // try/finally
  end; // with
end;

procedure TfrmSelectReturnData.FormCreate(Sender: TObject);
begin
  SetLanguageStr;
end;

procedure TfrmSelectReturnData.SetLanguageStr;
begin
  //Caption := 'select one Record from Multi record';

  cxGrid1DBTableView1ITEM_CODE.Caption := frmMain.GetLanguagesStr(13, 'Item Code', True);
  cxGrid1DBTableView1WORK_ORDER.Caption := frmMain.GetLanguagesStr(11, 'Work Order No.');
  cxGrid1DBTableView1STOCKROOM.Caption := frmMain.GetLanguagesStr(16, 'StockRoom', True);
  cxGrid1DBTableView1Location.Caption := frmMain.GetLanguagesStr(73, 'Location', True);
  cxGrid1DBTableView1UOM.Caption := frmMain.GetLanguagesStr(15, 'Uom', True);
  cxGrid1DBTableView1ISSUE_QTY.Caption := frmMain.GetLanguagesStr(52, 'Issued Qty');
  //cxGrid1DBTableView1IDO.Caption := frmMain.GetLanguagesStr(33, 'Please select Batch No. for Deletion :');
  cxGrid1DBTableView1PROJECT_NO.Caption := frmMain.GetLanguagesStr(51, 'Project No.');

  btnOK.Caption := frmMain.GetLanguagesStr(37, 'OK');
  btnCancel.Caption := frmMain.GetLanguagesStr(38, 'Cancel');

end;

procedure TfrmSelectReturnData.cxGrid1DBTableView1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  //see help ---Grid View Elements--
  FCanDbClick := (Button = mbLeft) and
    (TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y).HitTestCode in [htCell]); //, htIndicator
end;

procedure TfrmSelectReturnData.cxGrid1DBTableView1DblClick(
  Sender: TObject);
begin
  if FCanDbClick then
  begin
    btnOK.Click;
  end;
end;

end.

