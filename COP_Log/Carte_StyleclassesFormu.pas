unit Carte_StyleclassesFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons, RzBckgnd, ExtCtrls,
  ADODB, cxGridBandedTableView, cxGridDBBandedTableView, cxGridExportLink;

type
  TfrmCarte_Styleclasses = class(TForm)
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
    cxGrid1Level1: TcxGridLevel;
    ADODataSet1: TADODataSet;
    SaveDialog1: TSaveDialog;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    cxGrid1DBTableView1class_g: TcxGridDBColumn;
    cxGrid1DBTableView1class_g_d: TcxGridDBColumn;
    cxGrid1DBTableView1class: TcxGridDBColumn;
    cxGrid1DBTableView1class_d: TcxGridDBColumn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1class_g: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1class_g_d: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1class: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1class_d: TcxGridDBBandedColumn;
    cxGrid1clrgrp: TcxGridDBBandedColumn;
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
  frmCarte_Styleclasses: TfrmCarte_Styleclasses;

implementation

uses Carte_MainFormu;

{$R *.dfm}

procedure TfrmCarte_Styleclasses.BitBtn1Click(Sender: TObject);
begin
  cxgrid1.SetFocus;
  adodataset1.append;
end;

procedure TfrmCarte_Styleclasses.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then adodataset1.Delete;
  //cxgrid1dbtableview1.DataController.GetItemByFieldName('')
end;

procedure TfrmCarte_Styleclasses.BitBtn3Click(Sender: TObject);
begin
  if (adodataset1.State=dsEdit) or (adodataset1.State=dsInsert) then adodataset1.Post;
end;

procedure TfrmCarte_Styleclasses.BitBtn5Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure TfrmCarte_Styleclasses.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Styleclasses:=nil;
end;

end.
