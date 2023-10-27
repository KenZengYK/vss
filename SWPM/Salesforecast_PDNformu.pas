unit Salesforecast_PDNformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Spin,
  Buttons, DateUtils, cxGridExportLink, DBClient, cxCurrencyEdit;

type
  Tfrmsalesforecast_pdn = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label3: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    BitBtn1: TBitBtn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    SaveDialog1: TSaveDialog;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsalesforecast_pdn: Tfrmsalesforecast_pdn;

implementation

uses mainformu, analysisformu;

{$R *.dfm}

procedure Tfrmsalesforecast_pdn.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
  fty:string;
  y1,y2,w1,w2:integer;
begin
  screen.cursor:=crSQLwait;
  tm:=now;
  fty:=combobox1.text;
  y1:=spinedit1.value;
  y2:=spinedit3.value;
  w1:=spinedit2.value;
  w2:=spinedit4.value;
  try
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    commandtext:='execute procedure sp_pdn_salesforecast(:x1,:x2,:x3,:x4,:x5,:x6)';
    params[0].asdatetime:=tm;
    params[1].asstring:=fty;
    params[2].asinteger:=y1;
    params[3].asinteger:=w1;
    params[4].asinteger:=y2;
    params[5].asinteger:=w2;
    execute;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct ex_yw,cust,c_name,sum(sqty) as sqty,sum(ttl_px) as ttl_px,fty '
                +'from tbl_pdn_salesforecast where tm=:x1 group by ex_yw,cust,c_name,fty order by ex_yw,cust,fty';
    params[0].asdatetime:=tm;
    open;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmsalesforecast_pdn.BitBtn5Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmsalesforecast_pdn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmsalesforecast_pdn:=nil;
end;

procedure Tfrmsalesforecast_pdn.FormShow(Sender: TObject);
begin
  spinedit1.value:=yearof(date);
  spinedit2.value:=weekof(date);
  spinedit3.value:=yearof(date);
  spinedit4.value:=weekof(date);
end;

end.
