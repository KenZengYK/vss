unit cap_wowithoutsahformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, Buttons, cxGridExportLink,
  cxCurrencyEdit, DBClient;

type
  Tfrmcap_wowithoutsah = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    BitBtn13: TBitBtn;
    BitBtn11: TBitBtn;
    SaveDialog1: TSaveDialog;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    cxGrid1DBTableView1TPLANT: TcxGridDBColumn;
    cxGrid1DBTableView1J_NO: TcxGridDBColumn;
    cxGrid1DBTableView1J2_JOB: TcxGridDBColumn;
    cxGrid1DBTableView1CSTYLE: TcxGridDBColumn;
    cxGrid1DBTableView1ARTNO: TcxGridDBColumn;
    cxGrid1DBTableView1AT3DT: TcxGridDBColumn;
    cxGrid1DBTableView1SAH: TcxGridDBColumn;
    cxGrid1DBTableView1QTY1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcap_wowithoutsah: Tfrmcap_wowithoutsah;

implementation

uses mainformu, newcapformu;

{$R *.dfm}

procedure Tfrmcap_wowithoutsah.BitBtn13Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmcap_wowithoutsah.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmcap_wowithoutsah:=nil;
end;

procedure Tfrmcap_wowithoutsah.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct tplant,j_no,j2_job,cstyle,artno,at3dt,sah,sum(qty) as qty1 from tbl_cap_erprwo '
                +'where at3dt>=''2022-01-01'' and sah=0 '
                +'group by tplant,j_no,j2_job,cstyle,artno,at3dt,sah';
    open;
  end;
end;

end.
