unit Carte_PVHstylesuffixFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB,
  cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, Buttons, RzBckgnd, ExtCtrls, cxGridExportLink,
  cxMemo;

type
  TfrmCarte_PVHstylesuffix = class(TForm)
    Panel1: TPanel;
    RzBackground1: TRzBackground;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1class_g: TcxGridDBColumn;
    cxGrid1DBTableView1class_g_d: TcxGridDBColumn;
    cxGrid1DBTableView1class: TcxGridDBColumn;
    cxGrid1DBTableView1class_d: TcxGridDBColumn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    ADODataSet1: TADODataSet;
    SaveDialog1: TSaveDialog;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    cxGrid1pvh_moa: TcxGridDBBandedColumn;
    cxGrid1suffix: TcxGridDBBandedColumn;
    cxGrid1pvh_dest: TcxGridDBBandedColumn;
    cxGrid1htg: TcxGridDBBandedColumn;
    cxGrid1marks: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_PVHstylesuffix: TfrmCarte_PVHstylesuffix;

implementation

uses Carte_MainFormu;

{$R *.dfm}

procedure TfrmCarte_PVHstylesuffix.BitBtn1Click(Sender: TObject);
begin
  cxgrid1.SetFocus;
  adodataset1.append;
end;

procedure TfrmCarte_PVHstylesuffix.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then adodataset1.Delete;
end;

procedure TfrmCarte_PVHstylesuffix.BitBtn3Click(Sender: TObject);
begin
  if (adodataset1.State=dsEdit) or (adodataset1.State=dsInsert) then adodataset1.Post;
end;

procedure TfrmCarte_PVHstylesuffix.BitBtn5Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure TfrmCarte_PVHstylesuffix.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_PVHstylesuffix:=nil;
end;

end.
