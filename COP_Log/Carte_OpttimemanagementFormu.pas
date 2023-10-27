unit Carte_OpttimemanagementFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxGridBandedTableView,
  cxGridDBBandedTableView, ADODB, StdCtrls, Buttons, cxGridExportLink;

type
  TfrmCarte_Opttimemanagement = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    cxGrid1DBBandedTableView1projectno: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1workorderno: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1custstyle: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1keycode: TcxGridDBBandedColumn;
    cxGrid1wh_mat: TcxGridDBBandedColumn;
    cxGrid1wh_issdt_o1: TcxGridDBBandedColumn;
    cxGrid1wh_issdt_o2: TcxGridDBBandedColumn;
    cxGrid1wh_issdt_r1: TcxGridDBBandedColumn;
    cxGrid1wh_issdt_r2: TcxGridDBBandedColumn;
    cxGrid1wh_issdt_po1: TcxGridDBBandedColumn;
    cxGrid1wh_issdt_po2: TcxGridDBBandedColumn;
    cxGrid1wh_issdt_pr1: TcxGridDBBandedColumn;
    cxGrid1wh_issdt_pr2: TcxGridDBBandedColumn;
    cxGrid1wh_issdt_a1: TcxGridDBBandedColumn;
    cxGrid1wh_issdt_a2: TcxGridDBBandedColumn;
    cxGrid1cut_cs1: TcxGridDBBandedColumn;
    cxGrid1cut_o1: TcxGridDBBandedColumn;
    cxGrid1cut_o2: TcxGridDBBandedColumn;
    cxGrid1cut_r1: TcxGridDBBandedColumn;
    cxGrid1cut_r2: TcxGridDBBandedColumn;
    cxGrid1cut_po1: TcxGridDBBandedColumn;
    cxGrid1cut_po2: TcxGridDBBandedColumn;
    cxGrid1cut_pr1: TcxGridDBBandedColumn;
    cxGrid1cut_pr2: TcxGridDBBandedColumn;
    cxGrid1cut_a1: TcxGridDBBandedColumn;
    cxGrid1cut_a2: TcxGridDBBandedColumn;
    cxGrid1sub_need: TcxGridDBBandedColumn;
    cxGrid1sub_o1: TcxGridDBBandedColumn;
    cxGrid1sub_o2: TcxGridDBBandedColumn;
    cxGrid1sub_r1: TcxGridDBBandedColumn;
    cxGrid1sub_r2: TcxGridDBBandedColumn;
    cxGrid1sub_po1: TcxGridDBBandedColumn;
    cxGrid1sub_po2: TcxGridDBBandedColumn;
    cxGrid1sub_pr1: TcxGridDBBandedColumn;
    cxGrid1sub_pr2: TcxGridDBBandedColumn;
    cxGrid1sub_a1: TcxGridDBBandedColumn;
    cxGrid1sub_a2: TcxGridDBBandedColumn;
    cxGrid1sub1_need: TcxGridDBBandedColumn;
    cxGrid1sub1_o1: TcxGridDBBandedColumn;
    cxGrid1sub1_o2: TcxGridDBBandedColumn;
    cxGrid1sub1_r1: TcxGridDBBandedColumn;
    cxGrid1sub1_r2: TcxGridDBBandedColumn;
    cxGrid1sub1_po1: TcxGridDBBandedColumn;
    cxGrid1sub1_po2: TcxGridDBBandedColumn;
    cxGrid1sub1_pr1: TcxGridDBBandedColumn;
    cxGrid1sub1_pr2: TcxGridDBBandedColumn;
    cxGrid1sub1_a1: TcxGridDBBandedColumn;
    cxGrid1sub1_a2: TcxGridDBBandedColumn;
    cxGrid1mold_need: TcxGridDBBandedColumn;
    cxGrid1mold_need1: TcxGridDBBandedColumn;
    cxGrid1mold_o1: TcxGridDBBandedColumn;
    cxGrid1mold_o2: TcxGridDBBandedColumn;
    cxGrid1mold_r1: TcxGridDBBandedColumn;
    cxGrid1mold_r2: TcxGridDBBandedColumn;
    cxGrid1mold_po1: TcxGridDBBandedColumn;
    cxGrid1mold_po2: TcxGridDBBandedColumn;
    cxGrid1mold_pr1: TcxGridDBBandedColumn;
    cxGrid1mold_pr2: TcxGridDBBandedColumn;
    cxGrid1mold_a1: TcxGridDBBandedColumn;
    cxGrid1mold_a2: TcxGridDBBandedColumn;
    cxGrid1pi_o1: TcxGridDBBandedColumn;
    cxGrid1pi_o2: TcxGridDBBandedColumn;
    cxGrid1pi_r1: TcxGridDBBandedColumn;
    cxGrid1pi_r2: TcxGridDBBandedColumn;
    cxGrid1pi_po1: TcxGridDBBandedColumn;
    cxGrid1pi_po2: TcxGridDBBandedColumn;
    cxGrid1pi_pr1: TcxGridDBBandedColumn;
    cxGrid1pi_pr2: TcxGridDBBandedColumn;
    cxGrid1pi_a1: TcxGridDBBandedColumn;
    cxGrid1pi_a2: TcxGridDBBandedColumn;
    cxGrid1cut_cs2: TcxGridDBBandedColumn;
    cxGrid1cut_cs3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1lwdt: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1lwdt_r: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1q1_dt1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1q1_dt2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1q1_dt4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1t3dt: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1t3dt_r: TcxGridDBBandedColumn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    procedure ADODataSet1AfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_Opttimemanagement: TfrmCarte_Opttimemanagement;

implementation

uses Carte_MainFormu, Carte_OrdprocessingFormu;

{$R *.dfm}

procedure TfrmCarte_Opttimemanagement.ADODataSet1AfterOpen(DataSet: TDataSet);
begin
  (adodataset1.fieldbyname('wh_issdt_o1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('wh_issdt_o2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('wh_issdt_r1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('wh_issdt_r2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('wh_issdt_po1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('wh_issdt_po2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('wh_issdt_pr1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('wh_issdt_pr2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('wh_issdt_a1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('wh_issdt_a2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('cut_o1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('cut_o2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('cut_r1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('cut_r2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('cut_po1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('cut_po2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('cut_pr1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('cut_pr2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('cut_a1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('cut_a2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub_o1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub_o2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub_r1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub_r2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub_po1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub_po2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub_pr1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub_pr2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub_a1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub_a2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub1_o1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub1_o2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub1_r1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub1_r2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub1_po1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub1_po2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub1_pr1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub1_pr2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub1_a1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('sub1_a2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('mold_o1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('mold_o2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('mold_r1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('mold_r2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('mold_po1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('mold_po2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('mold_pr1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('mold_pr2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('mold_a1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('mold_a2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('pi_o1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('pi_o2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('pi_r1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('pi_r2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('pi_po1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('pi_po2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('pi_pr1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('pi_pr2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('pi_a1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('pi_a2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('lwdt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('lwdt_r') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('q1_dt1') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('q1_dt2') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('q1_dt4') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('t3dt') as tdatetimefield).displayformat:='mm/dd';
  (adodataset1.fieldbyname('t3dt_r') as tdatetimefield).displayformat:='mm/dd';
end;

procedure TfrmCarte_Opttimemanagement.BitBtn3Click(Sender: TObject);
begin
  if adodataset1.state=dsedit then adodataset1.post;
end;

procedure TfrmCarte_Opttimemanagement.BitBtn5Click(Sender: TObject);
begin
  if frmCarte_Ordprocessing.savedialog1.Execute then begin
    ExportGridToExcel(frmCarte_Ordprocessing.savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure TfrmCarte_Opttimemanagement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Opttimemanagement:=nil;
end;

end.
