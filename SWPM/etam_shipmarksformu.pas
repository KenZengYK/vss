unit etam_shipmarksformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxRichEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, ExtCtrls, StdCtrls, Buttons;

type
  Tfrmetam_shipmarks = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1SPM1: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmetam_shipmarks: Tfrmetam_shipmarks;

implementation

uses mainformu, pdninvoiceformu, pdninv_descriptionformu;

{$R *.dfm}

procedure Tfrmetam_shipmarks.BitBtn1Click(Sender: TObject);
begin
  if not query1.fieldbyname('spl').isnull then begin
    frmpdninvoice.query2.edit;
    frmpdninv_description.dbmemo1.lines.clear;
    frmpdninv_description.dbmemo1.lines.add(query1.fieldbyname('spm1').value);
    close;
  end;
end;

procedure Tfrmetam_shipmarks.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmetam_shipmarks:=nil;
end;

procedure Tfrmetam_shipmarks.FormShow(Sender: TObject);
begin
  with Query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_inv_cust1 where tplant='''+frmpdninvoice.query1.fieldbyname('tplant').value+'''';
    Open;
  end;
end;

end.
