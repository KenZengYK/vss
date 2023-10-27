unit ShelleyDataFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  StdCtrls, Mask, rxToolEdit, Buttons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  cxGridExportLink, DBClient;

type
  TfrmShelleyData = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    BitBtn13: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    SaveDialog1: TSaveDialog;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    cxGrid1DBTableView1J_NO: TcxGridDBColumn;
    cxGrid1DBTableView1CUST: TcxGridDBColumn;
    cxGrid1DBTableView1J2_JOB: TcxGridDBColumn;
    cxGrid1DBTableView1FLAG6: TcxGridDBColumn;
    cxGrid1DBTableView1CSTYLE: TcxGridDBColumn;
    cxGrid1DBTableView1ACOL: TcxGridDBColumn;
    cxGrid1DBTableView1LINE: TcxGridDBColumn;
    cxGrid1DBTableView1QTY: TcxGridDBColumn;
    Label3: TLabel;
    ComboBox1: TComboBox;
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmShelleyData: TfrmShelleyData;

implementation

uses mainformu;

{$R *.dfm}

procedure TfrmShelleyData.BitBtn13Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure TfrmShelleyData.BitBtn2Click(Sender: TObject);
var
  tm:tdatetime;
begin
  if (dateedit1.Date>0) and (dateedit2.Date>0) then begin
    tm:=now;
    with query1 do begin
      close;
      params.Clear;
      params.CreateParam(ftdatetime,'x1',ptinput);
      params.CreateParam(ftstring,'x2',ptinput);
      params.CreateParam(ftdate,'x3',ptinput);
      params.CreateParam(ftdate,'x4',ptinput);
      commandtext:='select * from sp_getdate4shelley(:x1,:x2,:x3,:x4)';
      params[0].AsDateTime:=tm;
      if combobox1.text>'' then params[1].asstring:=combobox1.text
      else params[1].AsString:='SL';
      params[2].AsDate:=dateedit1.Date;
      params[3].AsDate:=dateedit2.Date;
      open;
    end;
  end;
end;

procedure TfrmShelleyData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmshelleydata:=nil;
end;

end.
