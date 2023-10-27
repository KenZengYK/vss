unit loggingformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, Buttons, ExtCtrls, DBClient,
  cxCalendar, cxCurrencyEdit, Menus;

type
  Tfrmlogging = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    BitBtn2: TBitBtn;
    ClientDataSet2: TClientDataSet;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    cxGrid1DBTableView1SEQ: TcxGridDBColumn;
    cxGrid1DBTableView1IP: TcxGridDBColumn;
    cxGrid1DBTableView1USR: TcxGridDBColumn;
    cxGrid1DBTableView1FRMID: TcxGridDBColumn;
    cxGrid1DBTableView1STRDT: TcxGridDBColumn;
    cxGrid1DBTableView1ENDDT: TcxGridDBColumn;
    cxGrid1DBTableView1TTLTM: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    Refresh1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlogging: Tfrmlogging;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmlogging.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmlogging:=nil;
end;

procedure Tfrmlogging.FormShow(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
  with clientdataset2 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_updlogging';
    execute;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tbl_logging where strdt>=:x1 order by seq desc,dseq,strdt';
    params[0].asdatetime:=now-7;
    open;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmlogging.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  str:string;
begin
  str:=trim(VarAsType(AviewInfo.GridRecord.DisplayTexts[cxGrid1DBTableView1FRMID.Index],varString));
  if str='Sign On' then begin
    //ACanvas.Canvas.Brush.Color:=clBlue;
    ACanvas.Canvas.Font.Color:=clRed;
    ACanvas.Canvas.Font.Style:=[fsBold];
  end else begin
    //ACanvas.Canvas.Brush.Color:=clWhite;
    ACanvas.Canvas.Font.Color:=clBlack;
    ACanvas.Canvas.Font.Style:=[];
  end;
end;

end.
