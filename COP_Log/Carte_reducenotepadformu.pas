unit Carte_reducenotepadformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxMemo,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB, ExtCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons, RzBckgnd;

type
  Tfrmreduce_notepad = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    cxGrid1DBTableView1keycode5: TcxGridDBColumn;
    cxGrid1DBTableView1projectno5: TcxGridDBColumn;
    cxGrid1DBTableView1workorderno5: TcxGridDBColumn;
    cxGrid1DBTableView1custstyle5: TcxGridDBColumn;
    cxGrid1DBTableView1phcolor5: TcxGridDBColumn;
    cxGrid1DBTableView1qty5: TcxGridDBColumn;
    cxGrid1DBTableView1marks: TcxGridDBColumn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    RzBackground2: TRzBackground;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmreduce_notepad: Tfrmreduce_notepad;

implementation

uses Carte_Mainformu, Carte_Ordprocessingformu, Carte_Logisticsflowformu;

{$R *.dfm}

procedure Tfrmreduce_notepad.BitBtn3Click(Sender: TObject);
begin
  if adodataset1.state=dsedit then adodataset1.post;
end;

procedure Tfrmreduce_notepad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmreduce_notepad:=nil;
end;

procedure Tfrmreduce_notepad.FormShow(Sender: TObject);
begin
  with adodataset1 do begin
    close;
    commandtext:='select * from tbl_carte_sopc5_transfer where cust5=:x1 and act_cmpdt5>=:x2 and act_cmpdt5<=:x3';
    parameters[0].value:=frmCarte_Ordprocessing.combobox4.text;
    parameters[1].value:=frmCarte_Logisticsflow.dateedit4.date;
    parameters[2].value:=frmCarte_Logisticsflow.dateedit5.date;
    open;
  end;
end;

end.
