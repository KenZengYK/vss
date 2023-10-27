unit Smpl_ExportFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, DB, ADODB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, Buttons, cxGridExportLink;

type
  Tfrmsmpl_export = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    AdoDataSet1: TADODataSet;
    DataSource1: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1shpno: TcxGridDBColumn;
    cxGrid1DBTableView1exfty: TcxGridDBColumn;
    cxGrid1DBTableView1shr: TcxGridDBColumn;
    cxGrid1DBTableView1xh: TcxGridDBColumn;
    cxGrid1DBTableView1contractno: TcxGridDBColumn;
    cxGrid1DBTableView1con_seq: TcxGridDBColumn;
    cxGrid1DBTableView1customseqno: TcxGridDBColumn;
    cxGrid1DBTableView1hsname: TcxGridDBColumn;
    cxGrid1DBTableView1remarks: TcxGridDBColumn;
    cxGrid1DBTableView1c_name: TcxGridDBColumn;
    cxGrid1DBTableView1sqty: TcxGridDBColumn;
    cxGrid1DBTableView1unit: TcxGridDBColumn;
    cxGrid1DBTableView1wght: TcxGridDBColumn;
    cxGrid1DBTableView1hsunit: TcxGridDBColumn;
    cxGrid1DBTableView1curr: TcxGridDBColumn;
    cxGrid1DBTableView1sbqty: TcxGridDBColumn;
    cxGrid1DBTableView1unitpx: TcxGridDBColumn;
    cxGrid1DBTableView1ttlpx: TcxGridDBColumn;
    cxGrid1DBTableView1box: TcxGridDBColumn;
    cxGrid1DBTableView1wght1: TcxGridDBColumn;
    cxGrid1DBTableView1mz: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    SaveDialog1: TSaveDialog;
    qry1: TADOQuery;
    DataSource4: TDataSource;
    qry2: TADOQuery;
    Label1: TLabel;
    Edit1: TEdit;
    btn1: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure AdoDataSet1AfterOpen(DataSet: TDataSet);
    procedure adodatasetsqtychange(Sender: TField);
    procedure adodatasetwghtchange(Sender: TField);
    procedure adodatasetupxchange(Sender: TField);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure showsmpldata(const shpno: string);
    procedure calc_ttlpx;
  end;

var
  frmsmpl_export: Tfrmsmpl_export;

implementation

uses mainformu, shpadvice2formu, Choose_ContractFormu, Smpl_Export_EnqueryFormu;

{$R *.dfm}

procedure Tfrmsmpl_export.AdoDataSet1AfterOpen(DataSet: TDataSet);
begin
  adodataset1.fieldbyname('sqty').onchange:=adodatasetsqtychange;
  adodataset1.fieldbyname('wght').onchange:=adodatasetwghtchange;
  adodataset1.fieldbyname('unitpx').onchange:=adodatasetupxchange;
end;

procedure Tfrmsmpl_export.adodatasetsqtychange(Sender: TField);
var
  sqty:integer;
begin
  sqty:=0;
  if not adodataset1.fieldbyname('sqty').isnull then
    sqty:=adodataset1.fieldbyname('sqty').value;
  if (adodataset1.fieldbyname('hsunit').value='PCS') or (adodataset1.fieldbyname('hsunit').value='��') then
    adodataset1.fieldbyname('sbqty').value:=sqty;
  calc_ttlpx;
end;

procedure Tfrmsmpl_export.adodatasetupxchange(Sender: TField);
//var
//  upx,sbqty:double;
begin
  {
  upx:=0; sbqty:=0;
  if not adodataset1.fieldbyname('unitpx').isnull then
    upx:=adodataset1.fieldbyname('unitpx').value;
  if not adodataset1.fieldbyname('sbqty').isnull then
    sbqty:=adodataset1.fieldbyname('sbqty').value;
  adodataset1.fieldbyname('ttlpx').value:=upx*sbqty;
  }
  calc_ttlpx;
end;

procedure Tfrmsmpl_export.adodatasetwghtchange(Sender: TField);
var
  wght:double;
begin
  wght:=0;
  if not adodataset1.fieldbyname('wght').isnull then
    wght:=adodataset1.fieldbyname('wght').value;
  if (adodataset1.fieldbyname('hsunit').value='KGS') or (adodataset1.fieldbyname('hsunit').value='�d�J') then
    adodataset1.fieldbyname('sbqty').value:=wght;
  calc_ttlpx;
end;

procedure Tfrmsmpl_export.BitBtn1Click(Sender: TObject);
begin
  if edit1.text>'' then begin
    if frmchoose_contract=nil then frmchoose_contract:=tfrmchoose_contract.create(nil);
    frmchoose_contract.show;
  end;
end;

procedure Tfrmsmpl_export.BitBtn2Click(Sender: TObject);
begin
  if adodataset1.state=dsedit then adodataset1.post;
end;

procedure Tfrmsmpl_export.BitBtn3Click(Sender: TObject);
var
  i:integer;
  s1,s2:string;
begin
  screen.cursor:=crSQLWait;
  try
    with qry1 do begin
      close;
      sql.text:='exec phdb..sp_preshpadvice_export_sample :x1';
      parameters[0].value:=edit1.text;
      open;
    end;
    savedialog1.filename:=edit1.text+'_Summary.xls';
    if savedialog1.Execute then begin
      ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmsmpl_export.BitBtn5Click(Sender: TObject);
begin
  if adodataset1.active then begin
    if not adodataset1.fieldbyname('contractno').isnull then begin
      if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        adodataset1.delete;
      end;
    end;
  end;
end;

procedure Tfrmsmpl_export.btn1Click(Sender: TObject);
begin
  if frmsmpl_export_enquery=nil then frmsmpl_export_enquery:=tfrmsmpl_export_enquery.create(nil);
  frmsmpl_export_enquery.show;
end;

procedure Tfrmsmpl_export.calc_ttlpx;
var
  upx,sbqty:double;
begin
  upx:=0; sbqty:=0;
  if not adodataset1.fieldbyname('unitpx').isnull then
    upx:=adodataset1.fieldbyname('unitpx').value;
  if not adodataset1.fieldbyname('sbqty').isnull then
    sbqty:=adodataset1.fieldbyname('sbqty').value;
  adodataset1.fieldbyname('ttlpx').value:=upx*sbqty;
end;

procedure Tfrmsmpl_export.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    if edit1.text>'' then showsmpldata(edit1.text);
  end;
end;

procedure Tfrmsmpl_export.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmsmpl_export:=nil;
end;

procedure Tfrmsmpl_export.showsmpldata(const shpno: string);
begin
  if shpno>'' then begin
    with adodataset1 do begin
      close;
      commandtext:='select * from phdb..tbl_smpl_declare where shpno='''+shpno+'''';
      open;
    end;
  end;
end;

end.
