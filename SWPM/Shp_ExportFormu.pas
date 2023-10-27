unit Shp_ExportFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, rxToolEdit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBClient, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxGridExportLink, DateUtils;

type
  TfrmShp_Export = class(TForm)
    grp1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    SaveDialog1: TSaveDialog;
    cxGrid1DBTableView1EXFTY: TcxGridDBColumn;
    cxGrid1DBTableView1SHPNO: TcxGridDBColumn;
    cxGrid1DBTableView1CAR_TEXT: TcxGridDBColumn;
    cxGrid1DBTableView1DECLARATION_NO: TcxGridDBColumn;
    cxGrid1DBTableView1TPLANT: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmShp_Export: TfrmShp_Export;

implementation

uses mainformu, shpadvice2formu;

{$R *.dfm}

procedure TfrmShp_Export.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select distinct exfty,shpno,car_text,declaration_no,tplant from tbl_pdn_shpadvice1 where exfty>=:x1 and exfty<=:x2';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
      if frmshpadvice2.combobox1.text>'' then commandtext:=commandtext+' and tplant='''+frmshpadvice2.combobox1.text+'''';
      open;
    end;
    if savedialog1.Execute then begin
      ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmShp_Export.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmshp_export:=nil;
end;

procedure TfrmShp_Export.FormShow(Sender: TObject);
begin
  dateedit1.date:=encodedate(yearof(date),monthof(date),1);
  dateedit2.date:=date;
end;

end.
