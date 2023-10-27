unit dWFDeployBoardformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, cxGridBandedTableView,
  cxGridDBBandedTableView, ADODB, StdCtrls, Mask, rxToolEdit, Buttons,
  cxGridExportLink;

type
  TfrmdWFDeployBoard = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    cxGrid1DBBandedTableView1WS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WSD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WSL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DWF: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WF_H: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WFR_U: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WFR_F: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WF_D: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WF_I1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WF_I2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1WF_I3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AN_Y: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AN_N: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wf_i3_cfm: TcxGridDBBandedColumn;
    ADOQuery1: TADOQuery;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SaveDialog1: TSaveDialog;
    BitBtn4: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1WSDCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DWFCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure ADODataSet1AfterOpen(DataSet: TDataSet);
    procedure ANChange(Sender: TField);
    procedure I2Change(Sender: TField);
    procedure cxGrid1DBBandedTableView1WSLCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdWFDeployBoard: TfrmdWFDeployBoard;

implementation

uses mainformu;

{$R *.dfm}

procedure TfrmdWFDeployBoard.ADODataSet1AfterOpen(DataSet: TDataSet);
begin
  adodataset1.fieldbyname('wf_h').onchange:=anchange;
  adodataset1.fieldbyname('an_y').onchange:=anchange;
  adodataset1.fieldbyname('an_n').onchange:=anchange;
  adodataset1.fieldbyname('wf_i2').onchange:=i2change;
end;

procedure TfrmdWFDeployBoard.ANChange(Sender: TField);
var
  h,y1,n1:double;
begin
  h:=0; y1:=0; n1:=0;
  if not adodataset1.fieldbyname('wf_h').isnull then
    h:=adodataset1.fieldbyname('wf_h').value;
  if not adodataset1.fieldbyname('an_y').isnull then
    y1:=adodataset1.fieldbyname('an_y').value;
  if not adodataset1.fieldbyname('an_n').isnull then
    n1:=adodataset1.fieldbyname('an_n').value;
  adodataset1.fieldbyname('wf_d').value:=h-(y1+n1);
end;

procedure TfrmdWFDeployBoard.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    if (combobox1.text>'') and (dateedit1.date>0) then begin
      with ADOQuery1 do begin
        close;
        sql.text:='exec phdb..sp_swpm_wfdeploy0 :x1,:x2';
        parameters[0].value:=combobox1.text;
        parameters[1].value:=dateedit1.date;
        ExecSQL;
      end;
      with ADODataSet1 do begin
        Close;
        commandtext:='select * from phdb..tbl_swpm_wfdeploy1 where fty=:x1 and dt=:x2';
        parameters[0].value:=combobox1.text;
        parameters[1].value:=dateedit1.date;
        Open;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmdWFDeployBoard.BitBtn2Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure TfrmdWFDeployBoard.BitBtn3Click(Sender: TObject);
begin
  if adodataset1.state=dsedit then adodataset1.post;
end;

procedure TfrmdWFDeployBoard.cxGrid1DBBandedTableView1DWFCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  if ARow1.Values[cxGrid1DBBandedTableView1WSD.Index] = ARow2.Values[cxGrid1DBBandedTableView1WSD.Index] then begin
    if ARow1.Values[cxGrid1DBBandedTableView1DWF.Index] = ARow2.Values[cxGrid1DBBandedTableView1DWF.Index] then
      AAreEqual := True
   end else
     AAreEqual := False;
end;

procedure TfrmdWFDeployBoard.cxGrid1DBBandedTableView1WSDCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  if ARow1.Values[cxGrid1DBBandedTableView1WSD.Index] = ARow2.Values[cxGrid1DBBandedTableView1WSD.Index] then begin
     AAreEqual := True
   end else
     AAreEqual := False;
end;

procedure TfrmdWFDeployBoard.cxGrid1DBBandedTableView1WSLCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  if ARow1.Values[cxGrid1DBBandedTableView1WSD.Index] = ARow2.Values[cxGrid1DBBandedTableView1WSD.Index] then begin
    if ARow1.Values[cxGrid1DBBandedTableView1WSL.Index] = ARow2.Values[cxGrid1DBBandedTableView1WSL.Index] then
      AAreEqual := True
   end else
     AAreEqual := False;
end;

procedure TfrmdWFDeployBoard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmdWFDeployBoard:=nil;
end;

procedure TfrmdWFDeployBoard.I2Change(Sender: TField);
var
  i2:double;
begin
  i2:=0;
  if not adodataset1.fieldbyname('wf_i2').isnull then
    i2:=adodataset1.fieldbyname('wf_i2').value;
  adodataset1.fieldbyname('wf_i3').value:=adodataset1.fieldbyname('wf_d').value+i2;
end;

end.
