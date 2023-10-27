unit calendarformu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, rxToolEdit, Db, DBClient, Grids, DBGridEh, Buttons,
  Menus, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppDB,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE, ppViewr, ppVar,
  ExtCtrls, GridsEh, ADODB, ppParameter;
  function Calcdays(var year,month,day:word):integer;
  function calcwkno(var dt1:tdatetime):integer;
  function calcdiffday(var dt1,dt2:tdatetime):integer;

type
  Tfrmcalendar = class(TForm)
    week52: TClientDataSet;
    DataSource1: TDataSource;
    Query1: TClientDataSet;
    DBGridEh1: TDBGridEh;
    PopupMenu1: TPopupMenu;
    SetStandardCalendar1: TMenuItem;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    DataSource2: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    xk: TppDBCalc;
    percent1: TppLabel;
    mb: TppLabel;
    SetStandarCalendar1: TMenuItem;
    ModifyCalendar1: TMenuItem;
    ppDBPipeline1: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    line01: TppLabel;
    ppLabel14: TppLabel;
    date01: TppLabel;
    ppLabel16: TppLabel;
    date02: TppLabel;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel20: TppLabel;
    ppShape2: TppShape;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel17: TppLabel;
    ppDBText11: TppDBText;
    ppLabel21: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText16: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel25: TppLabel;
    ppLabel30: TppLabel;
    sj01: TppLabel;
    ppLabel32: TppLabel;
    sj03: TppLabel;
    ppLabel33: TppLabel;
    ppDBText15: TppDBText;
    ppLabel35: TppLabel;
    sj05: TppLabel;
    ppLabel37: TppLabel;
    sj11: TppLabel;
    ppLabel39: TppLabel;
    sj12: TppLabel;
    ppLabel41: TppLabel;
    sj13: TppLabel;
    ppLabel43: TppLabel;
    sj14: TppLabel;
    ppLabel45: TppLabel;
    sj15: TppLabel;
    ppLabel38: TppLabel;
    tshop01: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape3: TppShape;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel40: TppLabel;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    S01: TppLabel;
    S02: TppLabel;
    s03: TppLabel;
    x001: TppLabel;
    ppLine9: TppLine;
    x002: TppDBText;
    x003: TppDBCalc;
    ppLine7: TppLine;
    ppLabel24: TppLabel;
    ppLabel47: TppLabel;
    ppDBText19: TppDBText;
    ppDBCalc8: TppDBCalc;
    ppSummaryBand2: TppSummaryBand;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLabel48: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    x004: TppDBCalc;
    ppLabel49: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    docu001: TppLabel;
    ddcu001: TppLabel;
    socu001: TppLabel;
    sdcu001: TppLabel;
    tocu001: TppLabel;
    tdcu001: TppLabel;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    pline01: TppLabel;
    ppLabel55: TppLabel;
    ddt01: TppLabel;
    ppLabel57: TppLabel;
    ddt02: TppLabel;
    ppLabel59: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel60: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel61: TppLabel;
    ppLabel82: TppLabel;
    wshop01: TppLabel;
    ppShape4: TppShape;
    ppLabel87: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLine16: TppLine;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    y001: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    y002: TppDBText;
    ppDBText30: TppDBText;
    docu01: TppLabel;
    ddcu01: TppLabel;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel106: TppLabel;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    y003: TppDBCalc;
    socu01: TppLabel;
    sdcu01: TppLabel;
    ttlline01: TppLabel;
    ppLabel54: TppLabel;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    y004: TppDBCalc;
    aocu01: TppLabel;
    adcu01: TppLabel;
    ppLine18: TppLine;
    ppLabel56: TppLabel;
    ppLabel58: TppLabel;
    ppDBText21: TppDBText;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppLine27: TppLine;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppDBText22: TppDBText;
    ppDBCalc35: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    Panel1: TPanel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    ppLine28: TppLine;
    ppLabel65: TppLabel;
    dbcu001: TppLabel;
    sbcu001: TppLabel;
    tbcu001: TppLabel;
    ppLine29: TppLine;
    ppLabel66: TppLabel;
    dbcu01: TppLabel;
    sbcu01: TppLabel;
    abcu01: TppLabel;
    ppLine30: TppLine;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    pday01: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText31: TppDBText;
    ppLabel22: TppLabel;
    fty001: TppLabel;
    ppLabel26: TppLabel;
    s04: TppLabel;
    o001: TppLabel;
    b001: TppLabel;
    d001: TppLabel;
    n1001: TppLabel;
    n2001: TppLabel;
    o1001: TppLabel;
    o2001: TppLabel;
    oc001: TppLabel;
    bc001: TppLabel;
    dc001: TppLabel;
    o002: TppLabel;
    b002: TppLabel;
    d002: TppLabel;
    n1002: TppLabel;
    n2002: TppLabel;
    o1002: TppLabel;
    o2002: TppLabel;
    oc002: TppLabel;
    bc002: TppLabel;
    dc002: TppLabel;
    o003: TppLabel;
    b003: TppLabel;
    d003: TppLabel;
    n1003: TppLabel;
    n2003: TppLabel;
    o1003: TppLabel;
    o2003: TppLabel;
    oc003: TppLabel;
    bc003: TppLabel;
    dc003: TppLabel;
    fty002: TppLabel;
    ppLabel29: TppLabel;
    BitBtn5: TBitBtn;
    SpeedButton2: TSpeedButton;
    ppLabel36: TppLabel;
    ppLabel62: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    sj001: TppLabel;
    ppLabel86: TppLabel;
    sj003: TppLabel;
    ppLabel96: TppLabel;
    sj005: TppLabel;
    DataSet2: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure week52AfterPost(DataSet: TDataSet);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure SetStandardCalendar1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure SetStandarCalendar1Click(Sender: TObject);
    procedure setcalendar(dt1,dt2:tdatetime; line1:string);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure secttchange(Sender: TField);
    procedure week52AfterOpen(DataSet: TDataSet);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ppReport2BeforePrint(Sender: TObject);
    procedure ppReport3BeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pre_byline_dtl;
    procedure pre_byline_sum;
    procedure pre_bywks_dtl;
    procedure pre_bywks_sum;
  end;

var
  frmcalendar: Tfrmcalendar;
  logseq:integer;

implementation
uses mainformu, poptionformu, calendar_sumformu, calnotepadformu;
{$R *.DFM}

procedure Tfrmcalendar.FormShow(Sender: TObject);
//var
//  year,month,day:word;
begin
  //decodedate(date,year,month,day);
  dateedit1.date:=date;
  dateedit2.date:=date;//encodedate(year,12,31);
  combobox1.text:='';
  combobox2.Text:='';
  combobox3.text:='';
  {
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct tplant from tblline where lactive=1';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('tplant').value);
      application.ProcessMessages;
      next;
    end;
  end;
  }
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where lactive=1';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('tshop').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r2').value=false then begin
      dbgrideh1.ReadOnly:=true;
    end;
  end;
end;

procedure Tfrmcalendar.BitBtn2Click(Sender: TObject);
begin
  if (week52.state=dsinsert) or (week52.state=dsedit) then week52.post;
end;

procedure Tfrmcalendar.week52AfterPost(DataSet: TDataSet);
var
  secto,sectt,sectc,workero,workert,workerc,sectt1:double;
  wday,shft:string;
  pstr:string;
  str1:string;
begin
  if not week52.fieldbyname('secto').isnull then secto:=week52.fieldbyname('secto').value
  else secto:=0;
  if not week52.fieldbyname('sectt').isnull then sectt:=week52.fieldbyname('sectt').value
  else sectt:=0;
  if not week52.fieldbyname('sectt1').isnull then sectt1:=week52.fieldbyname('sectt1').value
  else sectt1:=0;
  if not week52.fieldbyname('sectc').isnull then sectc:=week52.fieldbyname('sectc').value
  else sectc:=0;
  if not week52.fieldbyname('workero').isnull then workero:=week52.fieldbyname('workero').value
  else workero:=0;
  if not week52.fieldbyname('workert').isnull then workert:=week52.fieldbyname('workert').value
  else workert:=0;
  if not week52.fieldbyname('workerc').isnull then workerc:=week52.fieldbyname('workerc').value
  else workerc:=0;
  if not week52.fieldbyname('wday').isnull then wday:=week52.fieldbyname('wday').value
  else wday:='-';
  if not week52.fieldbyname('shft').isnull then shft:=week52.fieldbyname('shft').value
  else shft:='D';
  {
  if week52.ApplyUpdates(-1)>0 then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'secto',ptinput);
      params.createparam(ftfloat,'sectt',ptinput);
      params.createparam(ftfloat,'sectc',ptinput);
      params.createparam(ftfloat,'workero',ptinput);
      params.createparam(ftfloat,'workert',ptinput);
      params.createparam(ftfloat,'workerc',ptinput);
      params.createparam(ftfloat,'sectt1',ptinput);
      params.createparam(ftstring,'wday',ptinput);
      params.createparam(ftstring,'shft',ptinput);
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftfloat,'x2',ptinput);
      params.createparam(ftfloat,'x3',ptinput);
      params.createparam(ftfloat,'x4',ptinput);
      params.createparam(ftfloat,'x5',ptinput);
      params.createparam(ftfloat,'x6',ptinput);
      params.createparam(ftfloat,'x7',ptinput);
      params.createparam(ftfloat,'x8',ptinput);
      params.createparam(ftfloat,'x9',ptinput);
      params.createparam(ftfloat,'x10',ptinput);
      params.createparam(ftfloat,'x11',ptinput);
      params.createparam(ftfloat,'x12',ptinput);
      params.createparam(ftfloat,'x13',ptinput);
      params.createparam(ftfloat,'x14',ptinput);
      params.createparam(ftfloat,'esect',ptinput);
      params.createparam(ftfloat,'csect',ptinput);
      params.createparam(ftfloat,'zsect',ptinput);
      params.createparam(ftstring,'emarks',ptinput);
      params.createparam(ftstring,'lmemo',ptinput);
      params.createparam(ftfloat,'x15',ptinput);
      params.createparam(ftfloat,'x16',ptinput);
      params.createparam(ftfloat,'x17',ptinput);
      params.createparam(ftfloat,'df1',ptinput);
      params.createparam(ftfloat,'df2',ptinput);
      params.createparam(ftdate,'date1',ptinput);
      params.createparam(ftstring,'line',ptinput);
      commandtext:='update week52 set secto=:secto,sectt=:sectt,sectc=:sectc,workero=:workero,workert=:workert,'
                  +'workerc=:workerc,sectt1=:sectt1,wday=:wday,shft=:shft,flag=:x1,lsect=:x2,asect=:x3,rsect=:x4,'
                  +'osect=:x5,ttl=:x6,a2=:x7,b2=:x8,c2=:x9,d2=:x10,e2=:x11,f2=:x12,g2=:x13,h2=:x14,esect=:esect,'
                  +'csect=:csect,zsect=:zsect,emarks=:emarks,lmemo=:lmemo,ottl=:x15,ocu=:x16,dcu=:x17,'
                  +'diff1=:df1,diff2=:df2 where date1=:date1 and line=:line';

      params[0].asfloat:=secto;
      params[1].asfloat:=sectt;
      params[2].asfloat:=sectc;
      params[3].asfloat:=workero;
      params[4].asfloat:=workert;
      params[5].asfloat:=workerc;
      params[6].asfloat:=sectt1;
      params[7].asstring:=wday;
      params[8].asstring:=shft;
      if not week52.fieldbyname('flag').isnull then
      params[9].asstring:=week52.fieldbyname('flag').value
      else params[9].asstring:='';
      if not week52.fieldbyname('lsect').isnull then
      params[10].asfloat:=week52.fieldbyname('lsect').value
      else params[10].asfloat:=0;
      if not week52.fieldbyname('asect').isnull then
      params[11].asfloat:=week52.fieldbyname('asect').value
      else params[11].asfloat:=0;
      if not week52.fieldbyname('rsect').isnull then
      params[12].asfloat:=week52.fieldbyname('rsect').value
      else params[12].asfloat:=0;
      if not week52.fieldbyname('osect').isnull then
      params[13].asfloat:=week52.fieldbyname('osect').value
      else params[13].asfloat:=0;
      if not week52.fieldbyname('ttl').isnull then
      params[14].asfloat:=week52.fieldbyname('ttl').value
      else params[14].asfloat:=0;
      if not week52.fieldbyname('a2').isnull then
      params[15].asfloat:=week52.fieldbyname('a2').value
      else params[15].AsFloat:=0;
      if not week52.fieldbyname('b2').isnull then
      params[16].asfloat:=week52.fieldbyname('b2').value
      else params[16].AsFloat:=0;
      if not week52.fieldbyname('c2').isnull then
      params[17].asfloat:=week52.fieldbyname('c2').value
      else params[17].AsFloat:=0;
      if not week52.fieldbyname('d2').isnull then
      params[18].asfloat:=week52.fieldbyname('d2').value
      else params[18].AsFloat:=0;
      if not week52.fieldbyname('e2').isnull then
      params[19].asfloat:=week52.fieldbyname('e2').value
      else params[19].AsFloat:=0;
      if not week52.fieldbyname('f2').isnull then
      params[20].asfloat:=week52.fieldbyname('f2').value
      else params[20].AsFloat:=0;
      if not week52.fieldbyname('g2').isnull then
      params[21].asfloat:=week52.fieldbyname('g2').value
      else params[21].asfloat:=0;
      if not week52.fieldbyname('h2').isnull then
      params[22].asfloat:=week52.fieldbyname('h2').value
      else params[22].asfloat:=0;
      if not week52.fieldbyname('esect').isnull then
      params[23].asfloat:=week52.fieldbyname('esect').value
      else params[23].asfloat:=0;
      if not week52.fieldbyname('csect').isnull then
      params[24].asfloat:=week52.fieldbyname('csect').value
      else params[24].asfloat:=0;
      if not week52.fieldbyname('zsect').isnull then
      params[25].asfloat:=week52.fieldbyname('zsect').value
      else params[25].asfloat:=0;
      if not week52.fieldbyname('emarks').isnull then
      params[26].asstring:=week52.fieldbyname('emarks').value
      else params[26].asstring:='';
      if not week52.fieldbyname('lmemo').isnull then
      params[27].asstring:=week52.fieldbyname('lmemo').value
      else params[27].asstring:='';
      if not week52.fieldbyname('ottl').isnull then
      params[28].asfloat:=week52.fieldbyname('ottl').value
      else params[28].asfloat:=week52.fieldbyname('csect').value;
      if not week52.fieldbyname('ocu').isnull then
      params[29].asfloat:=week52.fieldbyname('ocu').value
      else params[29].asfloat:=0;
      if not week52.fieldbyname('dcu').isnull then
      params[30].asfloat:=week52.fieldbyname('dcu').value
      else params[30].asfloat:=0;
      if not week52.fieldbyname('diff1').isnull then
      params[31].asfloat:=week52.fieldbyname('diff1').value
      else params[31].asfloat:=0;
      if not week52.fieldbyname('diff2').isnull then
      params[32].asfloat:=week52.fieldbyname('diff2').value
      else params[32].asfloat:=0;
      params[33].asdate:=week52.fieldbyname('date1').value;
      params[34].asstring:=week52.fieldbyname('line').value;
      execute;
    end;
  end;
  }
      str1:='update week52 set ';
      str1:=str1+'secto='+floattostr(secto)+',';
      str1:=str1+'sectt='+floattostr(sectt)+',';
      str1:=str1+'sectc='+floattostr(sectc)+',';
      str1:=str1+'workero='+floattostr(workero)+',';
      str1:=str1+'workert='+floattostr(workert)+',';
      str1:=str1+'workerc='+floattostr(workerc)+',';
      str1:=str1+'sectt1='+floattostr(sectt1)+',';
      str1:=str1+'wday='''+wday+''',';
      str1:=str1+'shft='''+shft+''',';
      if not week52.fieldbyname('flag').isnull then
      str1:=str1+'flag='''+week52.fieldbyname('flag').value+''','
      else str1:=str1+'flag='''',';
      if not week52.fieldbyname('lsect').isnull then
      str1:=str1+'lsect='+week52.fieldbyname('lsect').asstring+','
      else str1:=str1+'lsect=0,';
      if not week52.fieldbyname('asect').isnull then
      str1:=str1+'asect='+week52.fieldbyname('asect').asstring+','
      else str1:=str1+'asect=0,';
      if not week52.fieldbyname('rsect').isnull then
      str1:=str1+'rsect='+week52.fieldbyname('rsect').asstring+','
      else str1:=str1+'rsect=0,';
      if not week52.fieldbyname('osect').isnull then
      str1:=str1+'osect='+week52.fieldbyname('osect').asstring+','
      else str1:=str1+'osect=0,';
      if not week52.fieldbyname('ttl').isnull then
      str1:=str1+'ttl='+week52.fieldbyname('ttl').asstring+','
      else str1:=str1+'ttl=0,';
      if not week52.fieldbyname('a2').isnull then
      str1:=str1+'a2='+week52.fieldbyname('a2').asstring+','
      else str1:=str1+'a2=0,';
      if not week52.fieldbyname('b2').isnull then
      str1:=str1+'b2='+week52.fieldbyname('b2').asstring+','
      else str1:=str1+'b2=0,';
      if not week52.fieldbyname('c2').isnull then
      str1:=str1+'c2='+week52.fieldbyname('c2').asstring+','
      else str1:=str1+'c2=0,';
      if not week52.fieldbyname('d2').isnull then
      str1:=str1+'d2='+week52.fieldbyname('d2').asstring+','
      else str1:=str1+'d2=0,';
      if not week52.fieldbyname('e2').isnull then
      str1:=str1+'e2='+week52.fieldbyname('e2').asstring+','
      else str1:=str1+'e2=0,';
      if not week52.fieldbyname('f2').isnull then
      str1:=str1+'f2='+week52.fieldbyname('f2').asstring+','
      else str1:=str1+'f2=0,';
      if not week52.fieldbyname('g2').isnull then
      str1:=str1+'g2='+week52.fieldbyname('g2').asstring+','
      else str1:=str1+'g2=0,';
      if not week52.fieldbyname('h2').isnull then
      str1:=str1+'h2='+week52.fieldbyname('h2').asstring+','
      else str1:=str1+'h2=0,';
      if not week52.fieldbyname('esect').isnull then
      str1:=str1+'esect='+week52.fieldbyname('esect').asstring+','
      else str1:=str1+'esect=0,';
      if not week52.fieldbyname('csect').isnull then
      str1:=str1+'csect='+week52.fieldbyname('csect').asstring+','
      else str1:=str1+'csect=0,';
      if not week52.fieldbyname('zsect').isnull then
      str1:=str1+'zsect='+week52.fieldbyname('zsect').asstring+','
      else str1:=str1+'zsect=0,';
      if not week52.fieldbyname('emarks').isnull then
      str1:=str1+'emarks='''+week52.fieldbyname('emarks').value+''','
      else str1:=str1+'emarks='''',';
      if not week52.fieldbyname('lmemo').isnull then
      str1:=str1+'lmemo='''+week52.fieldbyname('lmemo').value+''','
      else str1:=str1+'lmemo='''',';
      if not week52.fieldbyname('ottl').isnull then
      str1:=str1+'ottl='+week52.fieldbyname('ottl').asstring+','
      else str1:=str1+'ottl='+week52.fieldbyname('csect').asstring+',';
      if not week52.fieldbyname('ocu').isnull then
      str1:=str1+'ocu='+week52.fieldbyname('ocu').asstring+','
      else str1:=str1+'ocu=0,';
      if not week52.fieldbyname('dcu').isnull then
      str1:=str1+'dcu='+week52.fieldbyname('dcu').asstring+','
      else str1:=str1+'dcu=0,';
      if not week52.fieldbyname('diff1').isnull then
      str1:=str1+'diff1='+week52.fieldbyname('diff1').asstring+','
      else str1:=str1+'diff1=0,';
      if not week52.fieldbyname('diff2').isnull then
      str1:=str1+'diff2='+week52.fieldbyname('diff2').asstring+' '
      else str1:=str1+'diff2=0 ';
      str1:=str1+'where date1='''+formatdatetime('yyyy-MM-dd',week52.fieldbyname('date1').value)+''' ';
      str1:=str1+'and line='''+week52.fieldbyname('line').value+'''';
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

    {
    pstr:='8 '+week52.fieldbyname('line').value+' '+week52.fieldbyname('date1').asstring;
    if pos('test',lowercase(application.ExeName))>0 then
    winexec(pchar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
    else winexec(pchar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
    }
end;

procedure Tfrmcalendar.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmcalendar.SpeedButton1Click(Sender: TObject);
var
  dt1,dt2:tdatetime;
  line1:string;
  year,month,day:word;
begin
  screen.cursor:=crhourglass;
  decodedate(date,year,month,day);
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(year,12,31);
  line1:=uppercase(combobox3.text);
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'line',ptinput);
    params.createparam(ftdate,'date1',ptinput);
    params.createparam(ftdate,'date2',ptinput);
    commandtext:='execute procedure set_calendar(:line,:date1,:date2)';
    params[0].asstring:=line1;
    params[1].asdate:=dt1;
    params[2].asdate:=dt2;
    execute;
  end;
  with week52 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      if dateedit2.date>0 then begin
          params.createparam(ftdate,'date1',ptinput);
          params.createparam(ftdate,'date2',ptinput);
          commandtext:='select * from week52 where date1>=:date1 and date1<=:date2 and tshop>'''' and lactive=1';
          if combobox3.text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
          if combobox1.text>'' then begin
            if combobox1.text<>'KBT' then
            commandtext:=commandtext+' and tplant='''+combobox1.text+''''
            else commandtext:=commandtext+' and tplant=''KB''';
          end;
          if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
          params[0].asdate:=dateedit1.date;
          params[1].asdate:=dateedit2.date;
      end else if combobox3.text<>'' then begin
          params.createparam(ftdate,'date1',ptinput);
          commandtext:='select * from week52 where date1>=:date1 and tshop>'''' and lactive=1';
          if combobox3.text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
          if combobox1.text>'' then begin
            if combobox1.text<>'KBT' then
            commandtext:=commandtext+' and tplant='''+combobox1.text+''''
            else commandtext:=commandtext+' and tplant=''KB''';
          end;
          if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
          params[0].asdate:=dateedit1.date;
      end;
    end else if dateedit2.date>0 then begin
          params.createparam(ftdate,'date2',ptinput);
          commandtext:='select * from week52 where date1<=:date2 and tshop>'''' and line in (select pline from tblline where lactive=1 and week52.tplant=tblline.tplant)';
          if combobox3.text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
          if combobox1.text>'' then begin
            if combobox1.text<>'KBT' then
            commandtext:=commandtext+' and tplant='''+combobox1.text+''''
            else commandtext:=commandtext+' and tplant=''KB''';
          end;
          if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
          params[0].asdate:=dateedit2.date;
    end else begin
          commandtext:='select * from week52 where tshop>'''' and line in (select pline from tblline where lactive=1 and week52.tplant=tblline.tplant)';
          if combobox3.text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
          if combobox1.text>'' then begin
            if combobox1.text<>'KBT' then
            commandtext:=commandtext+' and tplant='''+combobox1.text+''''
            else commandtext:=commandtext+' and tplant=''KB''';
          end;
          if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    end;
    open;
  end;
  if ((combobox1.text='KB') or (pos('KB',combobox2.text)>0) or ((combobox3.text>='T080') and (combobox3.text<='T110'))) then
  dbgrideh1.columns[14].Visible:=false else dbgrideh1.columns[14].Visible:=true;
  screen.cursor:=crdefault
end;

procedure Tfrmcalendar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if week52.state=dsedit then week52.post;
  action:=cafree;
  frmcalendar:=nil;
end;

procedure Tfrmcalendar.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then speedbutton1click(self);
end;

procedure Tfrmcalendar.SetStandardCalendar1Click(Sender: TObject);
var
  dt1,dt2:tdatetime;
  year,month,day:word;
begin
  screen.cursor:=crhourglass;
  decodedate(date,year,month,day);
  if (dateedit1.text<>'    /  /  ') or (dateedit1.text<>'    -  -  ') then
  dt1:=dateedit1.date else dt1:=date;
  if (dateedit2.text<>'    /  /  ') or (dateedit2.text<>'    -  -  ') then
  dt2:=dateedit2.date else dt2:=encodedate(year,12,31);
  frmmain.SocketConnection1.AppServer.setstandardcalendar(dt1,dt2);
  screen.cursor:=crdefault;
  showmessage('OK!');
end;

procedure Tfrmcalendar.BitBtn4Click(Sender: TObject);
begin
  if frmpoption=nil then frmpoption:=tfrmpoption.create(nil);
  if (combobox2.text>'') or (combobox3.text>'') then
  frmpoption.xh1.ItemIndex:=0
  else if combobox1.text>'' then frmpoption.xh1.ItemIndex:=1;
  frmpoption.Label1.Caption:='Def_1';
  frmpoption.Show;
end;

procedure Tfrmcalendar.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  percent1.caption:=formatfloat('#0.00',(xk.Value)*100/strtofloat(mb.caption));
end;

procedure Tfrmcalendar.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).ZoomPercentage:=100;
end;

procedure Tfrmcalendar.SetStandarCalendar1Click(Sender: TObject);
var
  dt1,dt2:tdatetime;
  //year,month,day:word;
  pline,pline1:string;
begin
  screen.cursor:=crhourglass;
  try
  {
  decodedate(date,year,month,day);
  if dateedit1.date>0 then
  dt1:=dateedit1.date else dt1:=date;
  if dateedit2.date>0 then
  dt2:=dateedit2.date else dt2:=encodedate(year,12,31);
  if combobox3.text>'' then begin
    pline:=uppercase(combobox3.text);
    frmmain.SocketConnection1.AppServer.setstdcalendar(pline,dt1,dt2);
  end;
  }
  pline1:=combobox3.text;
  dt1:=dateedit1.Date;
  dt2:=dateedit2.Date;
  pline:=inputbox('Copy from other line','Please input a line:','');
  if (pline>'') and (pline1>'') and (dt1>0) and (dt2>0) then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.Createparam(ftstring,'x1',ptinput);
      params.Createparam(ftstring,'x2',ptinput);
      params.Createparam(ftdate,'x3',ptinput);
      params.Createparam(ftdate,'x4',ptinput);
      commandtext:='execute procedure sp_updwk52_cpyline(:x1,:x2,:x3,:x4)';
      params[0].AsString:=uppercase(pline);
      params[1].asstring:=pline1;
      params[2].asdate:=dt1;
      params[3].asdate:=dt2;
      execute;
    end;
    speedbutton1click(self);
  end;
  //showmessage('OK!');
  finally
    screen.cursor:=crdefault;
  end;
end;

function Calcdays(var year,month,day:word):integer;
begin
  if isleapyear(year) then begin
    if month=1 then result:=day
    else if month=2 then result:=31+day
    else if month=3 then result:=60+day
    else if month=4 then result:=91+day
    else if month=5 then result:=121+day
    else if month=6 then result:=152+day
    else if month=7 then result:=182+day
    else if month=8 then result:=213+day
    else if month=9 then result:=244+day
    else if month=10 then result:=274+day
    else if month=11 then result:=305+day
    else if month=12 then result:=335+day;
  end
  else begin
    if month=1 then result:=day
    else if month=2 then result:=31+day
    else if month=3 then result:=59+day
    else if month=4 then result:=90+day
    else if month=5 then result:=120+day
    else if month=6 then result:=151+day
    else if month=7 then result:=181+day
    else if month=8 then result:=212+day
    else if month=9 then result:=243+day
    else if month=10 then result:=273+day
    else if month=11 then result:=304+day
    else if month=12 then result:=334+day;
  end;
end;

function calcwkno(var dt1:tdatetime):integer;
var
  year1,month1,day1:word;
  int1:integer;
begin
  decodedate(dt1,year1,month1,day1);
  int1:=calcdays(year1,month1,day1);
  if dayofweek(encodedate(year1,1,1))=1 then
    //result:=(int1+6) div 7
    result:=(int1-1) div 7
  else if dayofweek(encodedate(year1,1,1))=2 then
    result:=(int1+7) div 7
  else if dayofweek(encodedate(year1,1,1))=3 then
    result:=(int1+8) div 7
  else if dayofweek(encodedate(year1,1,1))=4 then
    result:=(int1+9) div 7
  else if dayofweek(encodedate(year1,1,1))=5 then
    result:=(int1+10) div 7
  else if dayofweek(encodedate(year1,1,1))=6 then
    result:=(int1+11) div 7
  else result:=(int1+12) div 7;
end;

function calcdiffday(var dt1,dt2:tdatetime):integer;
var
  year1,month1,day1,year2,month2,day2:word;
  days1,days2:integer;
begin
  decodedate(dt1,year1,month1,day1);
  decodedate(dt2,year2,month2,day2);
  days1:=calcdays(year1,month1,day1);
  days2:=calcdays(year2,month2,day2);
  if year1=year2 then begin
    result:=days1-days2;
  end
  else begin
    if year1>year2 then begin
      if isleapyear(year2) then begin
        result:=days1+366-days2;
      end
      else begin
        result:=days1+365-days2;
      end;
    end
    else begin
      if isleapyear(year1) then begin
        result:=days1-366-days2;
      end
      else begin
        result:=days1-365-days2;
      end;
    end;
  end;
end;

procedure Tfrmcalendar.setcalendar(dt1, dt2: tdatetime; line1: string);
var
  i,j,wkno,workert:integer;
  date1:tdatetime;
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'pline',ptinput);
    commandtext:='select workert from tblline where pline=:pline';
    params[0].asstring:=line1;
    open;
    workert:=fieldbyname('workert').value;
  end;
  j:=calcdiffday(dt2,dt1);
  for i:=0 to j do begin
    date1:=dt1+i;
    wkno:=calcwkno(date1);
    with query1 do begin
      close;
      params.clear;
        params.createparam(ftstring,'line',ptinput);
        params.createparam(ftdatetime,'date1',ptinput);
        params.createparam(ftinteger,'wkno',ptinput);
        params.createparam(ftinteger,'secto',ptinput);
        params.createparam(ftinteger,'sectt',ptinput);
        params.createparam(ftinteger,'workert',ptinput);
        commandtext:='insert into week52(line,date1,wkno,secto,sectt,workert) '
                    +'values(:line,:date1,:wkno,:secto,:sectt,:workert)';
        params[0].asstring:=line1;
        params[1].asdatetime:=date1;
        params[2].asinteger:=wkno;
        if dayofweek(date1)=1 then begin
          params[3].asinteger:=0;
          params[4].asinteger:=0;
        end
        else begin
          params[3].asinteger:=21;
          params[4].asinteger:=21;
        end;
        params[5].asinteger:=workert;
      execute;
    end;
  end;
end;

procedure Tfrmcalendar.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppreport2.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport2.previewform.viewer).ZoomPercentage:=100;
end;

procedure Tfrmcalendar.ppDetailBand2BeforePrint(Sender: TObject);
begin
  //if clientdataset3.fieldbyname('wday').Value<>'W' then
  //wday1.Caption:=clientdataset3.fieldbyname('wday').value
  //else wday1.Caption:='-';
  if clientdataset3.fieldbyname('ottl').value>0 then
    docu001.Caption:=formatfloat('0.00',clientdataset3.fieldbyname('csect').value*100.0/clientdataset3.fieldbyname('ottl').value-100.0)
  else docu001.Caption:='--';
  if clientdataset3.FieldByName('csect').Value>0 then
    ddcu001.Caption:='100.00'
  else ddcu001.Caption:='--';
  if clientdataset3.FieldByName('workero').Value>0 then
    dbcu001.Caption:=formatfloat('0.00',clientdataset3.fieldbyname('csect').value*100.0/clientdataset3.fieldbyname('workero').value-100.0)
  else dbcu001.Caption:='--';
end;

procedure Tfrmcalendar.secttchange(Sender: TField);
var
  s1,s2,s3,s4,s5,s6,s7,s8,a2,b2,c2,d2,e2,f2,g2,h2:double;
  ottl,workero:double;
  str1:string;
begin
  if not week52.fieldbyname('sectt').isnull then
  s1:=week52.fieldbyname('sectt').value else s1:=0;
  if not week52.fieldbyname('sectt1').isnull then
  s2:=week52.fieldbyname('sectt1').value else s2:=0;
  if not week52.fieldbyname('sectc').isnull then
  s3:=week52.fieldbyname('sectc').value else s3:=0;
  week52.fieldbyname('secto').value:=s1+s2+s3;
  if not week52.fieldbyname('osect').isnull then
  s5:=week52.fieldbyname('osect').value else s5:=0;
  if not week52.fieldbyname('zsect').isnull then
  s4:=week52.fieldbyname('zsect').value else s4:=0;
  if not week52.fieldbyname('esect').isnull then
  s6:=week52.fieldbyname('esect').value else s6:=0;
  if not week52.fieldbyname('asect').isnull then
  s7:=week52.fieldbyname('asect').value else s7:=0;
  if not week52.fieldbyname('rsect').isnull then
  s8:=week52.fieldbyname('rsect').value else s8:=0;
  if not week52.fieldbyname('workero').isnull then workero:=week52.fieldbyname('workero').value else workero:=0;
  if not week52.fieldbyname('a2').isnull then a2:=week52.fieldbyname('a2').value else a2:=0;
  if not week52.fieldbyname('b2').isnull then b2:=week52.fieldbyname('b2').value else b2:=0;
  if not week52.fieldbyname('c2').isnull then c2:=week52.fieldbyname('c2').value else c2:=0;
  if not week52.fieldbyname('d2').isnull then d2:=week52.fieldbyname('d2').value else d2:=0;
  if not week52.fieldbyname('e2').isnull then e2:=week52.fieldbyname('e2').value else e2:=0;
  if not week52.fieldbyname('f2').isnull then f2:=week52.fieldbyname('f2').value else f2:=0;
  if not week52.fieldbyname('g2').isnull then g2:=week52.fieldbyname('g2').value else g2:=0;
  if not week52.fieldbyname('h2').isnull then h2:=week52.fieldbyname('h2').value else h2:=0;
  week52.fieldbyname('lsect').value:=a2+b2+c2+d2+e2+f2+g2+h2;
  week52.fieldbyname('csect').value:=s1+s2+s3+s5;//s4+a2+b2+c2+d2+e2+f2+s6+s7+s8;
  week52.fieldbyname('ttl').value:=s1+s2+s3+s5-(a2+b2+c2+d2+e2+f2+g2+h2+s4+s6+s7+s8);
  if not week52.fieldbyname('ottl').isnull then ottl:=week52.fieldbyname('ottl').value else ottl:=week52.fieldbyname('csect').value;
  str1:='';
  if a2>0 then begin
    if str1>'' then str1:=str1+',2A('+formatfloat('0.0',a2)+')' else str1:='2A('+formatfloat('0.0',a2)+')';
  end;
  if b2>0 then begin
    if str1>'' then str1:=str1+',2B('+formatfloat('0.0',b2)+')' else str1:='2B('+formatfloat('0.0',b2)+')';
  end;
  if c2>0 then begin
    if str1>'' then str1:=str1+',2C('+formatfloat('0.0',c2)+')' else str1:='2C('+formatfloat('0.0',c2)+')';
  end;
  if d2>0 then begin
    if str1>'' then str1:=str1+',2D('+formatfloat('0.0',d2)+')' else str1:='2D('+formatfloat('0.0',d2)+')';
  end;
  if e2>0 then begin
    if str1>'' then str1:=str1+',2E('+formatfloat('0.0',e2)+')' else str1:='2E('+formatfloat('0.0',e2)+')';
  end;
  if f2>0 then begin
    if str1>'' then str1:=str1+',2F('+formatfloat('0.0',f2)+')' else str1:='2F('+formatfloat('0.0',f2)+')';
  end;
  if g2>0 then begin
    if str1>'' then str1:=str1+',2G('+formatfloat('0.0',g2)+')' else str1:='2G('+formatfloat('0.0',g2)+')';
  end;
  if h2>0 then begin
    if str1>'' then str1:=str1+',2H('+formatfloat('0.0',h2)+')' else str1:='2H('+formatfloat('0.0',h2)+')';
  end;
  week52.fieldbyname('flag').value:=str1;
  if ottl>0 then week52.fieldbyname('ocu').value:=week52.fieldbyname('csect').value*100.0/ottl-100.0 else week52.fieldbyname('ocu').value:=0;
  if week52.fieldbyname('csect').value>0 then week52.fieldbyname('dcu').value:=week52.fieldbyname('csect').value*100.0/week52.fieldbyname('csect').value
  else week52.fieldbyname('dcu').value:=0;
  if workero>0 then week52.fieldbyname('workert').value:=week52.fieldbyname('csect').value*100.0/workero-100.0 else week52.fieldbyname('workert').value:=0;
  week52.fieldbyname('diff1').value:=week52.fieldbyname('csect').value-week52.fieldbyname('ottl').value;
  week52.fieldbyname('diff2').value:=week52.fieldbyname('csect').value-week52.fieldbyname('workero').value;
end;

procedure Tfrmcalendar.week52AfterOpen(DataSet: TDataSet);
begin
  (week52.fieldbyname('ocu') as tfloatfield).displayformat:='0.00;;''';
  (week52.fieldbyname('dcu') as tfloatfield).displayformat:='0.00;;''';
  (week52.fieldbyname('workert') as tfloatfield).displayformat:='0.00;;''';
  week52.FieldByName('sectt').OnChange:=secttchange;
  week52.FieldByName('sectt1').OnChange:=secttchange;
  week52.FieldByName('sectc').OnChange:=secttchange;
  week52.FieldByName('osect').OnChange:=secttchange;
  week52.FieldByName('esect').OnChange:=secttchange;
  //week52.FieldByName('ttl').OnChange:=secttchange;
  week52.FieldByName('asect').OnChange:=secttchange;
  week52.FieldByName('rsect').OnChange:=secttchange;
  week52.FieldByName('zsect').OnChange:=secttchange;
  week52.FieldByName('a2').OnChange:=secttchange;
  week52.FieldByName('b2').OnChange:=secttchange;
  week52.FieldByName('c2').OnChange:=secttchange;
  week52.FieldByName('d2').OnChange:=secttchange;
  week52.FieldByName('e2').OnChange:=secttchange;
  week52.FieldByName('f2').OnChange:=secttchange;
  week52.FieldByName('g2').OnChange:=secttchange;
  week52.FieldByName('h2').OnChange:=secttchange;
  week52.FieldByName('ottl').onchange:=secttchange;
  week52.FieldByName('workero').onchange:=secttchange;
end;

procedure Tfrmcalendar.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  s01.Caption:='';
  s02.Caption:='';
  s03.Caption:='';
  s04.Caption:='';
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select count(*) as cnt,sum(ottl) as n1,sum(workero) as n2,sum(csect) as n3,sum(sectt) as n4,sum(sectt1) as n5,'
                +'sum(sectc) as n6,sum(osect) as n7 from week52 where line=:x1 and date1>=:x2 and date1<=:x3 and wday=''S'' and tshop>''''';
    params[0].asstring:=clientdataset3.fieldbyname('line').value;
    params[1].asdate:=dateedit1.date;
    params[2].asdate:=dateedit2.date;
    open;
    s01.Caption:=fieldbyname('cnt').asstring;
    if not fieldbyname('n1').isnull then begin
      o002.Caption:=formatfloat('0.0',fieldbyname('n1').value);
      b002.Caption:=formatfloat('0.0',fieldbyname('n2').value);
      d002.Caption:=formatfloat('0.0',fieldbyname('n3').value);
      n1002.Caption:=formatfloat('0.0',fieldbyname('n4').value);
      n2002.Caption:=formatfloat('0.0',fieldbyname('n5').value);
      o1002.Caption:=formatfloat('0.0',fieldbyname('n6').value);
      o2002.Caption:=formatfloat('0.0',fieldbyname('n7').value);
      if fieldbyname('n1').value>0 then oc002.Caption:=formatfloat('0.00',fieldbyname('n3').Value*100.0/fieldbyname('n1').value-100.0)
      else oc002.Caption:='--';
      if fieldbyname('n3').value>0 then dc002.Caption:='100.00' else dc002.Caption:='--';
      if fieldbyname('n2').value>0 then bc002.Caption:=formatfloat('0.00',fieldbyname('n3').Value*100.0/fieldbyname('n2').value-100.0)
      else bc002.Caption:='--';
    end else begin
      o002.Caption:='0.0';
      b002.Caption:='0.0';
      d002.Caption:='0.0';
      n1002.Caption:='0.0';
      n2002.Caption:='0.0';
      o1002.Caption:='0.0';
      o2002.Caption:='0.0';
      oc002.Caption:='--';
      dc002.Caption:='--';
      bc002.Caption:='--';
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select count(*) as cnt,sum(ottl) as n1,sum(workero) as n2,sum(csect) as n3,sum(sectt) as n4,sum(sectt1) as n5,'
                +'sum(sectc) as n6,sum(osect) as n7 from week52 where line=:x1 and date1>=:x2 and date1<=:x3 and wday=''H'' and tshop>''''';
    params[0].asstring:=clientdataset3.fieldbyname('line').value;
    params[1].asdate:=dateedit1.date;
    params[2].asdate:=dateedit2.date;
    open;
    s02.Caption:=fieldbyname('cnt').asstring;
    if not fieldbyname('n1').isnull then begin
      o003.Caption:=formatfloat('0.0',fieldbyname('n1').value);
      b003.Caption:=formatfloat('0.0',fieldbyname('n2').value);
      d003.Caption:=formatfloat('0.0',fieldbyname('n3').value);
      n1003.Caption:=formatfloat('0.0',fieldbyname('n4').value);
      n2003.Caption:=formatfloat('0.0',fieldbyname('n5').value);
      o1003.Caption:=formatfloat('0.0',fieldbyname('n6').value);
      o2003.Caption:=formatfloat('0.0',fieldbyname('n7').value);
      if fieldbyname('n1').value>0 then oc003.Caption:=formatfloat('0.00',fieldbyname('n3').Value*100.0/fieldbyname('n1').value-100.0)
      else oc003.Caption:='--';
      if fieldbyname('n3').value>0 then dc003.Caption:='100.00' else dc003.Caption:='--';
      if fieldbyname('n2').value>0 then bc003.Caption:=formatfloat('0.00',fieldbyname('n3').Value*100.0/fieldbyname('n2').value-100.0)
      else bc003.Caption:='--';
    end else begin
      o003.Caption:='0.0';
      b003.Caption:='0.0';
      d003.Caption:='0.0';
      n1003.Caption:='0.0';
      n2003.Caption:='0.0';
      o1003.Caption:='0.0';
      o2003.Caption:='0.0';
      oc003.Caption:='--';
      dc003.Caption:='--';
      bc003.Caption:='--';
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select count(*) as cnt,sum(ottl) as n1,sum(workero) as n2,sum(csect) as n3,sum(sectt) as n4,sum(sectt1) as n5,'
                +'sum(sectc) as n6,sum(osect) as n7 from week52 where line=:x1 and date1>=:x2 and date1<=:x3 and wday=''W'' and tshop>''''';
    params[0].asstring:=clientdataset3.fieldbyname('line').value;
    params[1].asdate:=dateedit1.date;
    params[2].asdate:=dateedit2.date;
    open;
    s03.Caption:=fieldbyname('cnt').asstring;
    if not fieldbyname('n1').isnull then begin
      o001.Caption:=formatfloat('0.0',fieldbyname('n1').value);
      b001.Caption:=formatfloat('0.0',fieldbyname('n2').value);
      d001.Caption:=formatfloat('0.0',fieldbyname('n3').value);
      n1001.Caption:=formatfloat('0.0',fieldbyname('n4').value);
      n2001.Caption:=formatfloat('0.0',fieldbyname('n5').value);
      o1001.Caption:=formatfloat('0.0',fieldbyname('n6').value);
      o2001.Caption:=formatfloat('0.0',fieldbyname('n7').value);
      if fieldbyname('n1').value>0 then oc001.Caption:=formatfloat('0.00',fieldbyname('n3').Value*100.0/fieldbyname('n1').value-100.0)
      else oc001.Caption:='--';
      if fieldbyname('n3').value>0 then dc001.Caption:='100.00' else dc001.Caption:='--';
      if fieldbyname('n2').value>0 then bc001.Caption:=formatfloat('0.00',fieldbyname('n3').Value*100.0/fieldbyname('n2').value-100.0)
      else bc001.Caption:='--';
    end else begin
      o001.Caption:='0.0';
      b001.Caption:='0.0';
      d001.Caption:='0.0';
      n1001.Caption:='0.0';
      n2001.Caption:='0.0';
      o1001.Caption:='0.0';
      o2001.Caption:='0.0';
      oc001.Caption:='--';
      dc001.Caption:='--';
      bc001.Caption:='--';
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select count(*) as cnt from week52 where line=:x1 and date1>=:x2 and date1<=:x3 and csect>0 and tshop>''''';
    params[0].asstring:=clientdataset3.fieldbyname('line').value;
    params[1].asdate:=dateedit1.date;
    params[2].asdate:=dateedit2.date;
    open;
    s04.Caption:=fieldbyname('cnt').asstring;
  end;

  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select distinct sum(ottl) as s1,sum(csect) as s2,sum(workero) as s3 from week52 where line=:x1 and date1>=:x2 and date1<=:x3 and tshop>''''';
    params[0].asstring:=clientdataset3.fieldbyname('line').value;
    params[1].asdate:=dateedit1.date;
    params[2].asdate:=dateedit2.date;
    open;
    if not fieldbyname('s1').isnull then begin
      if fieldbyname('s1').value>0 then begin
        socu001.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s1').value-100.0);
        sdcu001.Caption:='100.00';
      end else begin
        socu001.Caption:='--';
        sdcu001.Caption:='--';
      end;
    end else begin
      socu001.Caption:='--';
      sdcu001.Caption:='--';
    end;
    if not fieldbyname('s3').isnull then begin
      if fieldbyname('s3').value>0 then sbcu001.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s3').value-100.0)
      else sbcu001.Caption:='--';
    end else sbcu001.Caption:='--';
  end;
end;

procedure Tfrmcalendar.ComboBox3Enter(Sender: TObject);
begin
  combobox3.items.clear;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct pline from tblline where lactive=1';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('pline').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmcalendar.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select distinct sum(ottl) as s1,sum(csect) as s2,sum(workero) as s3 from week52 where date1>=:x2 and date1<=:x3 and tshop>''''';
    if combobox3.text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('s1').isnull then begin
      if fieldbyname('s1').value>0 then begin
        tocu001.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s1').value-100.0);
        tdcu001.Caption:='100.00';
      end else begin
        tocu001.Caption:='--';
        tdcu001.Caption:='--';
      end;
    end else begin
      tocu001.Caption:='--';
      tdcu001.Caption:='--';
    end;
    if not fieldbyname('s3').isnull then begin
      if fieldbyname('s3').value>0 then tbcu001.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s3').value-100.0)
      else tbcu001.Caption:='--';
    end else tbcu001.Caption:='--';
  end;
end;

procedure Tfrmcalendar.BitBtn3Click(Sender: TObject);
begin
  if frmpoption=nil then frmpoption:=tfrmpoption.create(nil);
  if (combobox2.text>'') or (combobox3.text>'') then
  frmpoption.xh1.ItemIndex:=0
  else if combobox1.text>'' then frmpoption.xh1.ItemIndex:=1;
  frmpoption.Label1.Caption:='Def_2';
  frmpoption.Show;
end;

procedure Tfrmcalendar.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppreport3.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport3.previewform.viewer).ZoomPercentage:=100;
end;

procedure Tfrmcalendar.ppDetailBand3BeforePrint(Sender: TObject);
begin
  if clientdataset3.fieldbyname('ottl').value>0 then
    docu01.Caption:=formatfloat('0.00',clientdataset3.fieldbyname('csect').value*100.0/clientdataset3.fieldbyname('ottl').value-100.0)
  else docu01.Caption:='--';
  if clientdataset3.FieldByName('csect').Value>0 then
    ddcu01.Caption:='100.00'
  else ddcu01.Caption:='--';
  if clientdataset3.fieldbyname('workero').value>0 then
    dbcu01.Caption:=formatfloat('0.00',clientdataset3.fieldbyname('csect').value*100.0/clientdataset3.fieldbyname('workero').value-100.0)
  else dbcu01.Caption:='--';
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select distinct count(*) as cnt from week52 where line=:x1 and date1>=:x2 and date1<=:x3 and csect>0 and tshop>''''';
    params[0].asstring:=clientdataset3.fieldbyname('line').value;
    params[1].asdate:=dateedit1.date;
    params[2].asdate:=dateedit2.date;
    open;
    pday01.Caption:=fieldbyname('cnt').asstring;
  end;
end;

procedure Tfrmcalendar.ppSummaryBand3BeforePrint(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select sum(ottl) as s1,sum(csect) as s2,sum(workero) as s3,count(distinct line) as cnt from week52 where date1>=:x2 and date1<=:x3 and tshop>''''';
    if combobox3.text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('s1').isnull then begin
      if fieldbyname('s1').value>0 then begin
        socu01.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s1').value-100.0);
        aocu01.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s1').value-100.0);
        sdcu01.Caption:='100.00';
        adcu01.Caption:='100.00';
      end else begin
        socu01.Caption:='--';
        sdcu01.Caption:='--';
        aocu01.Caption:='--';
        adcu01.Caption:='--';
      end;
    end else begin
      socu01.Caption:='--';
      sdcu01.Caption:='--';
      aocu01.Caption:='--';
      adcu01.Caption:='--';
    end;
    if not fieldbyname('cnt').isnull then ttlline01.Caption:=fieldbyname('cnt').asstring;//'# of line(s): '+fieldbyname('cnt').asstring else ttlline01.Caption:='# of line(s): 0';
    if not fieldbyname('s3').isnull then begin
      if fieldbyname('s3').value>0 then begin
        sbcu01.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s3').value-100.0);
        abcu01.Caption:=formatfloat('0.00',query1.fieldbyname('s2').value*100.0/query1.fieldbyname('s3').value-100.0);
      end else begin
        sbcu01.Caption:='--';
        abcu01.Caption:='--';
      end;
    end else begin
      sbcu01.Caption:='--';
      abcu01.Caption:='--';
    end;
  end;
end;

procedure Tfrmcalendar.pre_byline_dtl;
var
  sj1,sj2,sj3,sj4,sj5,sj6,sj7,sj8,sj9,sj10:string;
begin
  screen.cursor:=crHourglass;
  if week52.Active then begin
    {
    sj1:='  :  :  ';
    sj2:='  :  :  ';
    sj3:='  :  :  ';
    sj4:='  :  :  ';
    sj5:='  :  :  ';
    sj6:='  :  :  ';
    sj7:='  :  :  ';
    sj8:='  :  :  ';
    sj9:='  :  :  ';
    sj10:='  :  :  ';
    if combobox3.text>'' then begin
      with query1 do begin
        close;
        params.clear;
        commandtext:='select sj1,sj2,sj3,sj4,sj5,sj6,sj7,sj8,sj9,sj10,tshop from tblline where pline='''+combobox3.text+'''';
        open;
        if not fieldbyname('sj1').isnull then sj1:=formatdatetime('hh:nn:ss',fieldbyname('sj1').value);
        if not fieldbyname('sj2').isnull then sj2:=formatdatetime('hh:nn:ss',fieldbyname('sj2').value);
        if not fieldbyname('sj3').isnull then sj3:=formatdatetime('hh:nn:ss',fieldbyname('sj3').value);
        if not fieldbyname('sj4').isnull then sj4:=formatdatetime('hh:nn:ss',fieldbyname('sj4').value);
        if not fieldbyname('sj5').isnull then sj5:=formatdatetime('hh:nn:ss',fieldbyname('sj5').value);
        if not fieldbyname('sj6').isnull then sj6:=formatdatetime('hh:nn:ss',fieldbyname('sj6').value);
        if not fieldbyname('sj7').isnull then sj7:=formatdatetime('hh:nn:ss',fieldbyname('sj7').value);
        if not fieldbyname('sj8').isnull then sj8:=formatdatetime('hh:nn:ss',fieldbyname('sj8').value);
        if not fieldbyname('sj9').isnull then sj9:=formatdatetime('hh:nn:ss',fieldbyname('sj9').value);
        if not fieldbyname('sj10').isnull then sj10:=formatdatetime('hh:nn:ss',fieldbyname('sj10').value);
        //if not fieldbyname('tshop').isnull then tshop:=fieldbyname('tshop').value else tshop:='';
      end;
    end;
    }
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_shift where tplant='''+week52.fieldbyname('tplant').value+''' order by sftc';
      open;
      first;
      while not eof do begin
        if (uppercase(fieldbyname('sftc').value)='O1') or (uppercase(fieldbyname('sftc').value)='KB_O1') then begin
          sj01.Caption:=formatdatetime('hh:nn',fieldbyname('st01').value)+'   To  '+formatdatetime('hh:nn',fieldbyname('et02').value);
          if not fieldbyname('et04').isnull then
          sj03.Caption:=formatdatetime('hh:nn',fieldbyname('st03').value)+'   To  '+formatdatetime('hh:nn',fieldbyname('et04').value)
          else sj03.Caption:=formatdatetime('hh:nn',fieldbyname('st03').value)+'   To  ';
          sj05.Caption:=formatdatetime('hh:nn',fieldbyname('lts01').value)+'   To  '+formatdatetime('hh:nn',fieldbyname('lte01').value);
        end else if (uppercase(fieldbyname('sftc').value)='O2') or (uppercase(fieldbyname('sftc').value)='KB_O2') then begin
          sj001.Caption:=formatdatetime('hh:nn',fieldbyname('st01').value)+'   To  '+formatdatetime('hh:nn',fieldbyname('et02').value);
          if not fieldbyname('et04').isnull then
          sj003.Caption:=formatdatetime('hh:nn',fieldbyname('st03').value)+'   To  '+formatdatetime('hh:nn',fieldbyname('et04').value)
          else sj003.Caption:=formatdatetime('hh:nn',fieldbyname('st03').value)+'   To  ';
          sj005.Caption:=formatdatetime('hh:nn',fieldbyname('lts01').value)+'   To  '+formatdatetime('hh:nn',fieldbyname('lte01').value);
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    with clientdataset3 do begin
      close;
      params.clear;
      if dateedit1.date>0 then params.createparam(ftdate,'x1',ptinput);
      if dateedit2.date>0 then params.createparam(ftdate,'x2',ptinput);
      commandtext:='select * from week52 where tshop>''''';
      if dateedit1.date>0 then commandtext:=commandtext+' and date1>=:x1';
      if dateedit2.date>0 then commandtext:=commandtext+' and date1<=:x2';
      if combobox3.text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
      if combobox1.text>'' then begin
        if combobox1.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox1.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if dateedit1.date>0 then params.ParamByName('x1').AsDate:=dateedit1.date;
      if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
      commandtext:=commandtext+' order by line,date1';
      open;
    end;
    date01.Caption:=dateedit1.Text;
    date02.Caption:=dateedit2.Text;
    fty001.Caption:=clientdataset3.fieldbyname('tplant').value;
    line01.Caption:=combobox3.Text;
    tshop01.Caption:=clientdataset3.fieldbyname('tshop').value;
    {
    sj01.Caption:=sj1;
    sj02.Caption:=sj2;
    sj03.Caption:=sj3;
    sj04.Caption:=sj4;
    sj05.Caption:=sj5;
    sj11.Caption:=sj6;
    sj12.Caption:=sj7;
    sj13.Caption:=sj8;
    sj14.Caption:=sj9;
    sj15.Caption:=sj10;
    }
    ppReport2.Print;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmcalendar.pre_byline_sum;
var
  dt1,dt2:tdate;
begin
  screen.Cursor:=crHourglass;
  try
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(2006,1,1);
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(2020,12,31);
  with clientdataset3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct tplant,tshop,line,sum(ottl) as ottl,sum(csect) as csect,sum(sectt) as sectt,sum(sectt1) as sectt1,'
                +'sum(sectc) as sectc,sum(osect) as osect,sum(ttl) as ttl,sum(lsect) as lsect,sum(zsect) as zsect,sum(asect) as asect,'
                +'sum(rsect) as rsect,sum(esect) as esect,sum(workero) as workero from week52 where date1>=:x1 and date1<=:x2 and tshop>''''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    commandtext:=commandtext+' group by tplant,tshop,line order by tplant,tshop,line';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('tplant').isnull then begin
      pline01.Caption:=combobox3.text;
      wshop01.Caption:=clientdataset3.fieldbyname('tshop').value;
      fty002.Caption:=clientdataset3.fieldbyname('tplant').value;
      ddt01.Caption:=formatdatetime('yyyy/MM/dd',dt1);
      ddt02.Caption:=formatdatetime('yyyy/MM/dd',dt2);
      ppReport3.Print;
    end;
  end;
  finally
  screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmcalendar.pre_bywks_dtl;
var
  dt1,dt2:tdate;
begin
  screen.Cursor:=crHourglass;
  try
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(2006,1,1);
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(2020,12,31);
  if combobox1.text>'' then begin
    if week52.Active then begin
      if frmcalendar_sum=nil then frmcalendar_sum:=tfrmcalendar_sum.Create(nil);
      with frmcalendar_sum.ClientDataSet3 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        commandtext:='select distinct tplant,tshop,date1,wkno,count(line) as line,sum(ottl) as ottl,sum(workero) as workero,sum(csect) as csect,'
                    +'sum(sectt) as sectt,sum(sectt1) as sectt1,sum(sectc) as sectc,sum(osect) as osect from week52 '
                    +'where date1>=:x1 and date1<=:x2 and tshop>'''' and line in (select pline from tblline where lactive=1 and week52.tplant=tblline.tplant)';
        if combobox1.text>'' then begin
          if combobox1.text<>'KBT' then
          commandtext:=commandtext+' and tplant='''+combobox1.text+''''
          else commandtext:=commandtext+' and tplant=''KB''';
        end;
        commandtext:=commandtext+' group by tplant,tshop,date1,wkno order by tshop,date1';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        open;
        if not fieldbyname('tplant').isnull then begin
          frmcalendar_sum.date01.Caption:=dateedit1.Text;
          frmcalendar_sum.date02.Caption:=dateedit2.Text;
          frmcalendar_sum.fty001.Caption:=frmcalendar_sum.clientdataset3.fieldbyname('tplant').value;
          frmcalendar_sum.ppReport2.Print;
        end;
      end;
    end;
  end;
  finally
  screen.cursor:=crDefault;
  end;
end;

procedure Tfrmcalendar.pre_bywks_sum;
var
  dt1,dt2:tdate;
begin
  screen.Cursor:=crHourglass;
  try
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(2006,1,1);
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(2020,12,31);
  if frmcalendar_sum=nil then frmcalendar_sum:=tfrmcalendar_sum.Create(nil);
  with frmcalendar_sum.clientdataset3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct tplant,tshop,sum(ottl) as ottl,sum(csect) as csect,sum(sectt) as sectt,sum(sectt1) as sectt1,'
                +'sum(sectc) as sectc,sum(osect) as osect,sum(ttl) as ttl,sum(lsect) as lsect,sum(zsect) as zsect,sum(asect) as asect,'
                +'sum(rsect) as rsect,sum(esect) as esect,sum(workero) as workero from week52 where date1>=:x1 and date1<=:x2 and tshop>'''' and lactive=1';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    commandtext:=commandtext+' group by tplant,tshop order by tshop,tplant';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('tplant').isnull then begin
      frmcalendar_sum.pline01.Caption:=frmcalendar_sum.clientdataset3.fieldbyname('tplant').value;
      frmcalendar_sum.ddt01.Caption:=formatdatetime('yyyy/MM/dd',dt1);
      frmcalendar_sum.ddt02.Caption:=formatdatetime('yyyy/MM/dd',dt2);
      frmcalendar_sum.ppReport3.Print;
    end;
  end;
  finally
  screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmcalendar.BitBtn1Click(Sender: TObject);
begin
  if frmcalnotepad=nil then frmcalnotepad:=tfrmcalnotepad.create(nil);
  frmcalnotepad.DBMemo1.DataSource:=datasource1;
  frmcalnotepad.show;
end;

procedure Tfrmcalendar.SpeedButton2Click(Sender: TObject);
begin
  with week52 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      if dateedit2.date>0 then begin
          params.createparam(ftdate,'date1',ptinput);
          params.createparam(ftdate,'date2',ptinput);
          commandtext:='select a.* from week52 a where a.date1>=:date1 and a.date1<=:date2 and a.tshop>'''' and a.lactive=1';
          if combobox3.text>'' then commandtext:=commandtext+' and a.line='''+combobox3.text+'''';
          if combobox1.text>'' then commandtext:=commandtext+' and a.tplant='''+combobox1.text+'''';
          if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
          params[0].asdate:=dateedit1.date;
          params[1].asdate:=dateedit2.date;
      end else if combobox3.text<>'' then begin
          params.createparam(ftdate,'date1',ptinput);
          commandtext:='select a.* from week52 a where a.date1>=:date1 and a.tshop>'''' and a.lactive=1';
          if combobox3.text>'' then commandtext:=commandtext+' and a.line='''+combobox3.text+'''';
          if combobox1.text>'' then commandtext:=commandtext+' and a.tplant='''+combobox1.text+'''';
          if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
          params[0].asdate:=dateedit1.date;
      end;
    end else if dateedit2.date>0 then begin
          params.createparam(ftdate,'date2',ptinput);
          commandtext:='select a.* from week52 a where a.date1<=:date2 and a.tshop>'''' and a.lactive=1';
          if combobox3.text>'' then commandtext:=commandtext+' and a.line='''+combobox3.text+'''';
          if combobox1.text>'' then commandtext:=commandtext+' and a.tplant='''+combobox1.text+'''';
          if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
          params[0].asdate:=dateedit2.date;
    end else begin
          commandtext:='select a.* from week52 a where a.tshop>'''' and a.lactive=1';
          if combobox3.text>'' then commandtext:=commandtext+' and a.line='''+combobox3.text+'''';
          if combobox1.text>'' then commandtext:=commandtext+' and a.tplant='''+combobox1.text+'''';
          if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
    end;
    open;
  end;
end;

procedure Tfrmcalendar.ppReport2BeforePrint(Sender: TObject);
begin
  if clientdataset3.fieldbyname('tplant').value='KB' then begin
    x001.Visible:=false;x002.Visible:=false;x003.Visible:=false;x004.Visible:=false;
    o2001.Visible:=false;o2002.Visible:=false;o2003.Visible:=false;
  end else begin
    x001.Visible:=true;x002.Visible:=true;x003.Visible:=true;x004.Visible:=true;
    o2001.Visible:=true;o2002.Visible:=true;o2003.Visible:=true;
  end;
end;

procedure Tfrmcalendar.ppReport3BeforePrint(Sender: TObject);
begin
  if clientdataset3.fieldbyname('tplant').value='KB' then begin
    y001.Visible:=false;y002.Visible:=false;y003.Visible:=false;y004.Visible:=false;
  end else begin
    y001.Visible:=true;y002.Visible:=true;y003.Visible:=true;y004.Visible:=true;
  end;
end;

procedure Tfrmcalendar.FormCreate(Sender: TObject);
begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select max(dseq) as q1 from tbl_logging where seq=:x1';
          params[0].asinteger:=frmmain.SpinEdit1.Value;
          open;
          if not fieldbyname('q1').isnull then logseq:=fieldbyname('q1').value+1
          else logseq:=2;
        end;
        {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.CreateParam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftdatetime,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          commandtext:='insert into tbl_logging(seq,usr,frmid,strdt,ip,dseq) values(:x1,:x2,:x3,:x4,:x5,:x6)';
          params[0].asinteger:=frmmain.spinedit1.Value;
          params[1].AsString:=frmmain.combobox1.text;
          params[2].AsString:='Default LW Calendar';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
        with dataset2 do begin
          close;
          sql.text:='insert into [Sys.Authority].dbo.sysuseinfo(menuid,userid,starttime) values(:x1,:x2,:x3)';
          parameters[0].Value:='LWPM - Default LW Calendar';
          parameters[1].value:=frmmain.combobox1.text;
          parameters[2].Value:=now;
          execsql;
        end;
end;

procedure Tfrmcalendar.FormDestroy(Sender: TObject);
begin
  {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='update tbl_logging set enddt=:x1 where seq=:x2 and dseq=:x3';
          params[0].AsDateTime:=now;
          params[1].asinteger:=frmmain.spinedit1.Value;
          params[2].asinteger:=logseq;
          execute;
        end;
  }
end;

end.
