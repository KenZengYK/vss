unit lockedqnformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridBandedTableView, cxGridDBBandedTableView, StdCtrls, Buttons, ExtCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBClient, cxGridExportLink;

type
  Tfrmlockedqn = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxView1: TcxGridDBBandedTableView;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    SaveDialog1: TSaveDialog;
    cxView1PLINE: TcxGridDBBandedColumn;
    cxView1LOCKCFKS: TcxGridDBBandedColumn;
    cxView1J_NO: TcxGridDBBandedColumn;
    cxView1J2_JOB: TcxGridDBBandedColumn;
    cxView1CSTYLE: TcxGridDBBandedColumn;
    cxView1ACOL: TcxGridDBBandedColumn;
    cxView1RWO: TcxGridDBBandedColumn;
    cxView1FCCS: TcxGridDBBandedColumn;
    cxView1LOCK_DT: TcxGridDBBandedColumn;
    cxView1LOCK_GAP: TcxGridDBBandedColumn;
    cxView1CFKSRQ: TcxGridDBBandedColumn;
    cxView1KDJS: TcxGridDBBandedColumn;
    cxView1S_DEF: TcxGridDBBandedColumn;
    cxView1S_BUFF: TcxGridDBBandedColumn;
    cxView1FW_DEF: TcxGridDBBandedColumn;
    cxView1FW_ADJ: TcxGridDBBandedColumn;
    cxView1FW_ACT: TcxGridDBBandedColumn;
    cxView1FW_BUFF: TcxGridDBBandedColumn;
    cxView1EX_DEF: TcxGridDBBandedColumn;
    cxView1EX_ADJ: TcxGridDBBandedColumn;
    cxView1EX_BUFF: TcxGridDBBandedColumn;
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlockedqn: Tfrmlockedqn;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmlockedqn.BitBtn1Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmlockedqn.cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  str,str1,str2:string;
  ARec: TRect;
begin
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1s_buff.Index],   varString));
  if (AViewInfo.Item = cxview1s_buff) then begin
    if str='' then str:='0';
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed
    else ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1fw_buff.Index],   varString));
  if (AViewInfo.Item = cxview1fw_buff) then begin
    if str='' then str:='0';
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed
    else ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1ex_buff.Index],   varString));
  if (AViewInfo.Item = cxview1ex_buff) then begin
    if str='' then str:='0';
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed
    else ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;
end;

procedure Tfrmlockedqn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmlockedqn:=nil;
end;

procedure Tfrmlockedqn.Query1AfterOpen(DataSet: TDataSet);
begin
  (query1.fieldbyname('lock_dt') as tdatetimefield).displayformat:='mm/dd';
  (query1.fieldbyname('cfksrq') as tdatetimefield).displayformat:='mm/dd';
  (query1.fieldbyname('s_def') as tdatetimefield).displayformat:='mm/dd';
  (query1.fieldbyname('fw_def') as tdatetimefield).displayformat:='mm/dd';
  (query1.fieldbyname('fw_adj') as tdatetimefield).displayformat:='mm/dd';
  (query1.fieldbyname('fw_act') as tdatetimefield).displayformat:='mm/dd';
  (query1.fieldbyname('ex_def') as tdatetimefield).displayformat:='mm/dd';
  (query1.fieldbyname('ex_adj') as tdatetimefield).displayformat:='mm/dd';
end;

end.
