unit outstandingsampleformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, Buttons, DBClient,
  cxGridExportLink;

type
  Tfrmoutstandingsample = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query6: TClientDataSet;
    Query5: TClientDataSet;
    cxGrid1DBTableView1PLINE: TcxGridDBColumn;
    cxGrid1DBTableView1J_NO: TcxGridDBColumn;
    cxGrid1DBTableView1J2_JOB: TcxGridDBColumn;
    cxGrid1DBTableView1RWO: TcxGridDBColumn;
    cxGrid1DBTableView1ACOL: TcxGridDBColumn;
    cxGrid1DBTableView1PSIZ: TcxGridDBColumn;
    cxGrid1DBTableView1SP: TcxGridDBColumn;
    cxGrid1DBTableView1SP_DT: TcxGridDBColumn;
    cxGrid1DBTableView1CSTYLE: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmoutstandingsample: Tfrmoutstandingsample;

implementation

uses mainformu, analysisformu;

{$R *.dfm}

procedure Tfrmoutstandingsample.BitBtn1Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmoutstandingsample.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmoutstandingsample:=nil;
end;

procedure Tfrmoutstandingsample.FormShow(Sender: TObject);
var
  tm:tdatetime;
begin
  tm:=now;
  screen.cursor:=crSQLWait;
  try
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='execute procedure sp_lwo_sample(:x1)';
      params[0].asdatetime:=tm;
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_lwo_sample_withoutpdn where tm=:x1 order by sp_dt';
      params[0].asdatetime:=tm;
      open;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

end.
