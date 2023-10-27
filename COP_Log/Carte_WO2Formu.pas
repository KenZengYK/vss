unit Carte_WO2Formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDropDownEdit, cxCalendar, cxButtonEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGridDBTableView, cxGrid, ADODB, ExtCtrls, StdCtrls,
  Buttons, cxGridExportLink;

type
  TfrmCarte_WO2 = class(TForm)
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1BandedTableView1: TcxGridBandedTableView;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1keycode: TcxGridDBBandedColumn;
    cxGrid1projectno: TcxGridDBBandedColumn;
    cxGrid1workorderno: TcxGridDBBandedColumn;
    cxGrid1custpo: TcxGridDBBandedColumn;
    cxGrid1rwo_wo: TcxGridDBBandedColumn;
    cxGrid1prodcode: TcxGridDBBandedColumn;
    cxGrid1custstyle: TcxGridDBBandedColumn;
    cxGrid1phstyle: TcxGridDBBandedColumn;
    cxGrid1custcolor: TcxGridDBBandedColumn;
    cxGrid1phcolor: TcxGridDBBandedColumn;
    cxGrid1qty: TcxGridDBBandedColumn;
    cxGrid1qty1: TcxGridDBBandedColumn;
    cxGrid1sp_qty: TcxGridDBBandedColumn;
    cxGrid1ex_o: TcxGridDBBandedColumn;
    cxGrid1ex_r: TcxGridDBBandedColumn;
    cxGrid1prod_site: TcxGridDBBandedColumn;
    cxGrid1prod_site1: TcxGridDBBandedColumn;
    cxGrid1etam_bdc: TcxGridDBBandedColumn;
    cxGrid1etam_pak: TcxGridDBBandedColumn;
    cxGrid1pvh_dest: TcxGridDBBandedColumn;
    cxGrid1custpo_qty: TcxGridDBBandedColumn;
    cxGrid1bdc_qty: TcxGridDBBandedColumn;
    cxGrid1mtono: TcxGridDBBandedColumn;
    cxGrid1dest_qty: TcxGridDBBandedColumn;
    cxGrid1pvh_aa: TcxGridDBBandedColumn;
    cxGrid1aa_qty: TcxGridDBBandedColumn;
    cxGrid1pvh_drop: TcxGridDBBandedColumn;
    cxGrid1drop_qty: TcxGridDBBandedColumn;
    cxGrid1pvh_bcd: TcxGridDBBandedColumn;
    cxGrid1phstyleseq: TcxGridDBBandedColumn;
    cxGrid1custpo_new: TcxGridDBBandedColumn;
    cxGrid1qty1_new: TcxGridDBBandedColumn;
    cxGrid1phstyleno: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn12: TBitBtn;
    SaveDialog1: TSaveDialog;
    cxGrid1projectno_new: TcxGridDBBandedColumn;
    cxGrid1custpo_qty_new: TcxGridDBBandedColumn;
    cxGrid1s_custpo: TcxGridDBBandedColumn;
    cxGrid1s_qty1: TcxGridDBBandedColumn;
    cxGrid1phstyle_new: TcxGridDBBandedColumn;
    cxGrid1phstyleseq_new: TcxGridDBBandedColumn;
    cxGrid1custcolor_new: TcxGridDBBandedColumn;
    cxGrid1phcolor_new: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1keycodeCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ADODataSet1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_WO2: TfrmCarte_WO2;

implementation

uses Carte_MainFormu, Carte_OrdprocessingFormu;

{$R *.dfm}

procedure TfrmCarte_WO2.ADODataSet1AfterOpen(DataSet: TDataSet);
begin
  (adodataset1.FieldByName('ex_o') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('ex_r') as tdatetimefield).DisplayFormat:='mm/dd';
end;

procedure TfrmCarte_WO2.BitBtn3Click(Sender: TObject);
begin
  if adodataset1.state=dsedit then adodataset1.post;
end;

procedure TfrmCarte_WO2.BitBtn5Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure TfrmCarte_WO2.cxGrid1keycodeCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  if ARow1.Values[cxGrid1keycode.Index] = ARow2.Values[cxGrid1keycode.Index] then
     AAreEqual := True
   else
     AAreEqual := False;
end;

procedure TfrmCarte_WO2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Wo2:=nil;
end;

end.
