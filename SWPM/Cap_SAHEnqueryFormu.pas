unit Cap_SAHEnqueryFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  StdCtrls, Spin, Buttons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  DBClient, cxCurrencyEdit, cxGridExportLink;

type
  TfrmCAP_SAHEnquery = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    se1: TSpinEdit;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    SaveDialog1: TSaveDialog;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column11: TcxGridDBColumn;
    cxGrid1DBTableView1Column12: TcxGridDBColumn;
    cxGrid1DBTableView1Column13: TcxGridDBColumn;
    cxGrid1DBTableView1Column14: TcxGridDBColumn;
    cxGrid1DBTableView1Column15: TcxGridDBColumn;
    cxGrid1DBTableView1Column16: TcxGridDBColumn;
    cxGrid1DBTableView1Column17: TcxGridDBColumn;
    cxGrid1DBTableView1Column18: TcxGridDBColumn;
    cxGrid1DBTableView1Column19: TcxGridDBColumn;
    cxGrid1DBTableView1Column20: TcxGridDBColumn;
    cxGrid1DBTableView1Column21: TcxGridDBColumn;
    cxGrid1DBTableView1Column22: TcxGridDBColumn;
    cxGrid1DBTableView1Column23: TcxGridDBColumn;
    cxGrid1DBTableView1Column24: TcxGridDBColumn;
    cxGrid1DBTableView1Column25: TcxGridDBColumn;
    cxGrid1DBTableView1Column26: TcxGridDBColumn;
    cxGrid1DBTableView1Column27: TcxGridDBColumn;
    cxGrid1DBTableView1Column28: TcxGridDBColumn;
    cxGrid1DBTableView1Column29: TcxGridDBColumn;
    BitBtn13: TBitBtn;
    BitBtn11: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCAP_SAHEnquery: TfrmCAP_SAHEnquery;

implementation

uses mainformu, newcapformu;

{$R *.dfm}

procedure TfrmCAP_SAHEnquery.BitBtn13Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure TfrmCAP_SAHEnquery.BitBtn1Click(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select tplant,cust,cstyle,flag6,sah,tw01,tsah01,tw02,tsah02,tw03,tsah03,tw04,tsah04,tw05,tsah05,tw06,tsah06,tw07,tsah07,tw08,tsah08,tw09,tsah09,tw10,tsah10,tw11,tsah11,tw12,tsah12 '
                 +'from tbl_cap_oa_style_new where yr='+inttostr(se1.value)+' and oldnew=''Flow'' order by tplant,cust,cstyle';
    Open;
  end;
end;

procedure TfrmCAP_SAHEnquery.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmCAP_SAHEnquery:=nil;
end;

end.
