unit Exfty_EnqueryFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  Buttons, cxGridExportLink;

type
  Tfrmexfty_enquery = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1EX_NO: TcxGridDBColumn;
    cxGrid1DBTableView1EX_DT: TcxGridDBColumn;
    cxGrid1DBTableView1EX_TRUCK: TcxGridDBColumn;
    cxGrid1DBTableView1EX_BOX: TcxGridDBColumn;
    cxGrid1DBTableView1EX_BOX1: TcxGridDBColumn;
    cxGrid1DBTableView1EX_COUNT: TcxGridDBColumn;
    cxGrid1DBTableView1EX_SIGN: TcxGridDBColumn;
    cxGrid1DBTableView1EX_SECU: TcxGridDBColumn;
    cxGrid1DBTableView1EX_SHPNO: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmexfty_enquery: Tfrmexfty_enquery;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmexfty_enquery.BitBtn1Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmexfty_enquery.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmexfty_enquery:=nil;
end;

procedure Tfrmexfty_enquery.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    commandtext:='select * from tbl_pdn_exit';
    open;
  end;
end;

end.
