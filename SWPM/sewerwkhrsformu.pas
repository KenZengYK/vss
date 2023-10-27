unit sewerwkhrsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Mask, rxToolEdit, DB,
  DBClient, Buttons, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppCtrls, ppPrnabl, ppBands, ppCache, ppViewr, ppParameter;

type
  Tfrmsewerwkhrs = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    xh1: TRadioButton;
    xh2: TRadioButton;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    dt001: TppLabel;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText3: TppDBText;
    ppLabel8: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    title001: TppLabel;
    eff001: TppLabel;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    eff002: TppLabel;
    duty001: TppLabel;
    prd001: TppLabel;
    dt002: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Change(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure QueryDutyChange(Sender: TField);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsewerwkhrs: Tfrmsewerwkhrs;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmsewerwkhrs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmsewerwkhrs:=nil;
end;

procedure Tfrmsewerwkhrs.ComboBox1Change(Sender: TObject);
var
  tplant:string;
  dt1,dt2:tdate;
  y,m,d:word;
begin
  screen.Cursor:=crSQLWait;
  try
    decodedate(date,y,m,d);
    if combobox1.text>'' then tplant:=combobox1.text else tplant:='SL';
    if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(y,m,1);
    if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=date-2;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='execute procedure sp_updsewing_wkhrs(:x1,:x2,:x3)';
      params[0].asstring:=tplant;
      params[1].asdate:=dt1;
      params[2].asdate:=dt2;
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select * from tbl_sewing_hrs where tplant=:x1 and dt1>=:x2 and dt1<=:x3';
      params[0].asstring:=tplant;
      params[1].asdate:=dt1;
      params[2].asdate:=dt2;
      open;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmsewerwkhrs.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  {
  if query1.Applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'x0',ptinput);
      params.createparam(ftfloat,'x01',ptinput);
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='update tbl_sewing_hrs set ondutyhrs=:x0,eff=:x01 where tplant=:x1 and dt1=:x2';
      if not query1.fieldbyname('ondutyhrs').isnull then
      params[0].asfloat:=query1.fieldbyname('ondutyhrs').value
      else params[0].asfloat:=0;
      params[1].asfloat:=query1.fieldbyname('eff').value;
      params[2].asstring:=query1.fieldbyname('tplant').value;
      params[3].asdate:=query1.fieldbyname('dt1').value;
      execute;
    end;
  end;
  }
  str1:='update tbl_sewing_hrs set ';
  if not query1.fieldbyname('ondutyhrs').isnull then
  str1:=str1+'ondutyhrs='+query1.fieldbyname('ondutyhrs').asstring+','
  else str1:=str1+'ondutyhrs=0,';
  str1:=str1+'eff='+query1.fieldbyname('eff').asstring+' ';
  str1:=str1+'where tplant='''+query1.fieldbyname('tplant').value+''' ';
  str1:=str1+'and dt1='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('dt1').value)+'''';
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  
end;

procedure Tfrmsewerwkhrs.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('ondutyhrs').OnChange:=querydutychange;
end;

procedure Tfrmsewerwkhrs.QueryDutyChange(Sender: TField);
var
  hr1,hr2:double;
begin
  if not query1.fieldbyname('ondutyhrs').isnull then
  hr1:=query1.fieldbyname('ondutyhrs').value else hr1:=0;
  if not query1.fieldbyname('prdhrs').isnull then
  hr2:=query1.fieldbyname('prdhrs').value else hr2:=0;
  if hr1>0 then query1.fieldbyname('eff').value:=hr2*100.00/hr1
  else query1.fieldbyname('eff').value:=0;
end;

procedure Tfrmsewerwkhrs.DataSource1DataChange(Sender: TObject;
  Field: TField);
var
  tplant:string;
  dt1,dt2:tdate;
  y,m,d:word;
begin
  screen.Cursor:=crSQLWait;
  try
    decodedate(date,y,m,d);
    if combobox1.text>'' then tplant:=combobox1.text else tplant:='SL';
    if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(y,m,1);
    if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=date-2;
    if query1.state=dsbrowse then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        commandtext:='select max(dt1) as dt,sum(ondutyhrs) as x1,sum(prdhrs) as x2 from tbl_sewing_hrs where tplant=:x1 and dt1>=:x2 and dt1<=:x3 and ondutyhrs>0 and prdhrs>0';
        params[0].asstring:=tplant;
        params[1].asdate:=dt1;
        params[2].asdate:=dt2;
        open;
        if not fieldbyname('x1').isnull then begin
          dbgrideh1.Columns[1].Footer.Value:='up-to: '+fieldbyname('dt').asstring;
          dbgrideh1.columns[2].Footer.Value:=formatfloat('#,0.00',fieldbyname('x1').value);
          dbgrideh1.columns[3].Footer.Value:=formatfloat('#,0.00',fieldbyname('x2').value);
          if fieldbyname('x1').value>0 then
            dbgrideh1.Columns[4].Footer.Value:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x1').value)
          else dbgrideh1.Columns[4].Footer.Value:='0.00';
        end else dbgrideh1.Columns[4].Footer.Value:='0.00';
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmsewerwkhrs.BitBtn2Click(Sender: TObject);
begin
  bitbtn1click(self);
  if xh1.Checked then begin
    title001.Caption:='- Summary by month ';
    ppdetailband1.Visible:=false;
    ppgroupfooterband3.Visible:=true;
  end else if xh2.Checked then begin
    title001.Caption:='- Detail by date ';
    ppdetailband1.Visible:=true;
    ppgroupfooterband3.Visible:=false;
  end;
  dt001.Caption:='From '+formatdatetime('yyyy-MM-dd',dateedit1.date)+'  to '+formatdatetime('yyyy-MM-dd',dateedit2.date);
  ppReport1.Print;
end;

procedure Tfrmsewerwkhrs.ppSummaryBand1BeforePrint(Sender: TObject);
var
  tplant:string;
  dt1,dt2:tdate;
  y,m,d:word;
begin
  decodedate(date,y,m,d);
  if combobox1.text>'' then tplant:=combobox1.text else tplant:='SL';
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(y,m,1);
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=date-2;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select max(dt1) as dt,sum(ondutyhrs) as x1,sum(prdhrs) as x2 from tbl_sewing_hrs where tplant=:x1 and dt1>=:x2 and dt1<=:x3 and ondutyhrs>0 and prdhrs>0';
    params[0].asstring:=tplant;
    params[1].asdate:=dt1;
    params[2].asdate:=dt2;
    open;
    if not fieldbyname('x1').isnull then begin
      dt002.Caption:='Up-to: '+fieldbyname('dt').asstring;
      if fieldbyname('x1').value>0 then
        eff002.caption:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x1').value)
      else eff002.caption:='0.00';
    end else eff002.caption:='0.00';
  end;
  //if ppdbcalc3.Value>0 then
  //eff002.Caption:=formatfloat('0.00',ppdbcalc4.Value*100.00/ppdbcalc3.Value)
  //else eff002.Caption:='0.00';
end;

procedure Tfrmsewerwkhrs.ppGroupFooterBand3BeforePrint(Sender: TObject);
var
  tplant:string;
  dt1,dt2:tdate;
  y,m,d:word;
begin
  decodedate(date,y,m,d);
  if combobox1.text>'' then tplant:=combobox1.text else tplant:='SL';
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(y,m,1);
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=date-2;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    commandtext:='select sum(ondutyhrs) as x1,sum(prdhrs) as x2 from tbl_sewing_hrs where tplant=:x1 and dt1>=:x2 and dt1<=:x3 and ondutyhrs>0 and prdhrs>0 and yr=:x4 and mn=:x5';
    params[0].asstring:=tplant;
    params[1].asdate:=dt1;
    params[2].asdate:=dt2;
    params[3].asinteger:=query1.fieldbyname('yr').value;
    params[4].asinteger:=query1.fieldbyname('mn').value;
    open;
    if not fieldbyname('x1').isnull then begin
      duty001.Caption:=formatfloat('#,0.00',fieldbyname('x1').value);
      prd001.Caption:=formatfloat('#,0.00',fieldbyname('x2').value);
      if fieldbyname('x1').value>0 then
        eff001.caption:=formatfloat('0.00',fieldbyname('x2').value*100.00/fieldbyname('x1').value)
      else eff001.caption:='0.00';
    end else eff001.caption:='0.00';
  end;
  //if ppdbcalc1.Value>0 then
  //eff001.Caption:=formatfloat('0.00',ppdbcalc2.Value*100.00/ppdbcalc1.Value)
  //else eff001.Caption:='0.00';
end;

procedure Tfrmsewerwkhrs.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport1.PreviewForm.Viewer).zoompercentage:=100;
end;

procedure Tfrmsewerwkhrs.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then query1.post;
end;

end.
