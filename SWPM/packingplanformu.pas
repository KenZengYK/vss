unit packingplanformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Mask, rxToolEdit, Buttons,
  DB, DBClient, QExport4, QExport4XLS, ppCtrls, ppPrnabl, ppClass, ppDB,
  ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppVar,
  ppViewr, ppParameter;

type
  Tfrmpackingplan = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    SaveDialog1: TSaveDialog;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText4: TppDBText;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel14: TppLabel;
    ppDBText10: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppDBText11: TppDBText;
    ppLabel17: TppLabel;
    ppDBText12: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel18: TppLabel;
    ppDBText13: TppDBText;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel19: TppLabel;
    ppDBText14: TppDBText;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLabel20: TppLabel;
    ppDBText15: TppDBText;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText16: TppDBText;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppDBText17: TppDBText;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText18: TppDBText;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText19: TppDBText;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLabel29: TppLabel;
    ppDBText20: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLabel30: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel31: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    xls1: TQExport4XLS;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Change(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure QueryFieldChange(Sender: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGridEh1Columns9EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpackingplan: Tfrmpackingplan;

implementation

uses mainformu, packplan_selpdnformu;

{$R *.dfm}

procedure Tfrmpackingplan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmpackingplan:=nil;
end;

procedure Tfrmpackingplan.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.Handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmpackingplan.DateEdit1Change(Sender: TObject);
begin
  if dateedit1.date>0 then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='select * from tbl_pdn_packplan where dt=:x1';
      params[0].asdate:=dateedit1.date;
      open;
    end;
  end;
end;

procedure Tfrmpackingplan.Query1NewRecord(DataSet: TDataSet);
begin
  query1.fieldbyname('dt').value:=dateedit1.date;
end;

procedure Tfrmpackingplan.BitBtn1Click(Sender: TObject);
begin
  if frmpackplan_selpdn=nil then frmpackplan_selpdn:=tfrmpackplan_selpdn.create(nil);
  frmpackplan_selpdn.Show;
end;

procedure Tfrmpackingplan.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('tmu').onchange:=queryfieldchange;
  query1.fieldbyname('t3qty').OnChange:=queryfieldchange;
end;

procedure Tfrmpackingplan.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'x1',ptinput);
      params.createparam(ftfloat,'x2',ptinput);
      params.createparam(ftfloat,'x3',ptinput);
      params.createparam(ftfloat,'x4',ptinput);
      params.createparam(ftfloat,'x5',ptinput);
      params.createparam(ftfloat,'x6',ptinput);
      params.createparam(ftfloat,'x7',ptinput);
      params.createparam(ftstring,'x8',ptinput);
      params.createparam(ftdate,'x9',ptinput);
      params.createparam(ftstring,'x10',ptinput);
      params.createparam(ftinteger,'x11',ptinput);
      params.createparam(ftstring,'x12',ptinput);
      params.createparam(ftstring,'x13',ptinput);
      params.createparam(ftstring,'x14',ptinput);
      params.createparam(ftstring,'x15',ptinput);
      commandtext:='update tbl_pdn_packplan set t2qty=:x1,tmu=:x2,stmu=:x3,t3qty=:x4,bal=:x5,btmu=:x6,t3tmu=:x7,memo1=:x8 '
                  +'where dt=:x9 and pdn=:x10 and voyn=:x11 and j_no=:x12 and j2_job=:x13 and rwo=:x14 and acol=:x15';
      if not query1.fieldbyname('t2qty').isnull then
      params[0].asfloat:=query1.fieldbyname('t2qty').value
      else params[0].asfloat:=0;
      if not query1.fieldbyname('tmu').isnull then
      params[1].asfloat:=query1.fieldbyname('tmu').value
      else params[1].asfloat:=0;
      if not query1.fieldbyname('stmu').isnull then
      params[2].asfloat:=query1.fieldbyname('stmu').value
      else params[2].asfloat:=0;
      if not query1.fieldbyname('t3qty').isnull then
      params[3].asfloat:=query1.fieldbyname('t3qty').value
      else params[3].asfloat:=0;
      if not query1.fieldbyname('bal').isnull then
      params[4].asfloat:=query1.fieldbyname('bal').value
      else params[4].asfloat:=0;
      if not query1.fieldbyname('btmu').isnull then
      params[5].asfloat:=query1.fieldbyname('btmu').value
      else params[5].asfloat:=0;
      if not query1.fieldbyname('t3tmu').isnull then
      params[6].asfloat:=query1.fieldbyname('t3tmu').value
      else params[6].asfloat:=0;
      if not query1.fieldbyname('memo1').isnull then
      params[7].asstring:=query1.fieldbyname('memo1').value
      else params[7].asstring:='';
      params[8].asdate:=query1.fieldbyname('dt').value;
      params[9].asstring:=query1.fieldbyname('pdn').value;
      params[10].asinteger:=query1.fieldbyname('voyn').value;
      params[11].asstring:=query1.fieldbyname('j_no').value;
      params[12].asstring:=query1.fieldbyname('j2_job').value;
      params[13].asstring:=query1.fieldbyname('rwo').value;
      params[14].asstring:=query1.fieldbyname('acol').value;
      execute;
    end;
  end;
end;

procedure Tfrmpackingplan.QueryFieldChange(Sender: TField);
var
  tmu,t3qty:double;
begin
  if not query1.fieldbyname('tmu').isnull then
  tmu:=query1.fieldbyname('tmu').value else tmu:=0;
  if not query1.fieldbyname('t3qty').isnull then
  t3qty:=query1.fieldbyname('t3qty').value else t3qty:=0;
  query1.fieldbyname('stmu').value:=query1.fieldbyname('sqty').value*tmu;
  query1.fieldbyname('bal').value:=query1.fieldbyname('sqty').value-t3qty;
  query1.fieldbyname('btmu').value:=(query1.fieldbyname('sqty').value-t3qty)*tmu;
  query1.fieldbyname('t3tmu').value:=t3qty*tmu;
end;

procedure Tfrmpackingplan.BitBtn3Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

procedure Tfrmpackingplan.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      commandtext:='delete from tbl_pdn_packplan where dt=:x1 and pdn=:x2 and voyn=:x3 and j_no=:x4 and j2_job=:x5 and rwo=:x6 and acol=:x7';
      params[0].asdate:=query1.fieldbyname('dt').value;
      params[1].asstring:=query1.fieldbyname('pdn').value;
      params[2].asinteger:=query1.fieldbyname('voyn').value;
      params[3].asstring:=query1.fieldbyname('j_no').value;
      params[4].asstring:=query1.fieldbyname('j2_job').value;
      params[5].asstring:=query1.fieldbyname('rwo').value;
      params[6].asstring:=query1.fieldbyname('acol').value;
      execute;
    end;
    query1.delete;
  end;
end;

procedure Tfrmpackingplan.BitBtn5Click(Sender: TObject);
var
  str1:string;
begin
  if query1.state=dsedit then query1.post;
  if savedialog1.Execute then str1:=savedialog1.FileName;
  if dateedit1.date>0 then begin
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='select dt as Planning_date,pdn as PDN,voyn as Manifest,exfty as Exfty_date,'
                  +'j_no as Project,j2_job as WO,rwo as RWO,ksrq as Sewing_start_date,wcrq as Sewing_end_date,'
                  +'cstyle as Style,acol as Color_code,sqty as PDN_Qty,t2qty as T2_Qty,TMU as SAH_PC,'
                  +'STMU as TTL_SAH,t3qty as T3_Qty,bal as Not_finish_Qty,BTMU as Not_finish_SAH,'
                  +'t3TMU as Finished_SAH,memo1 as Remarks from tbl_pdn_packplan where dt=:x1 '
                  +'order by dt,pdn,voyn,j_no,j2_job,rwo';
      params[0].asdate:=dateedit1.date;
      open;
      xls1.FileName:=str1;
      xls1.ShowFile:=true;
      xls1.Execute;
    end;
  end;
end;

procedure Tfrmpackingplan.DBGridEh1Columns9EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  //
end;

procedure Tfrmpackingplan.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmpackingplan.BitBtn4Click(Sender: TObject);
begin
  if query1.Active then begin
    if not query1.fieldbyname('j_no').isnull then ppReport1.Print;
  end;
end;

end.
