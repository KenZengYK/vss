unit WsCalendarFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, ppParameter, ppBands, ppReport, ppSubRpt, ppClass, ppStrtch,
  ppMemo, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppDBBDE, Menus, DB, DBClient, StdCtrls, Buttons, Mask, rxToolEdit,
  ExtCtrls, GridsEh, DBGridEh, siComp;

type
  Tfrmwscalendar = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    week52: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    PopupMenu1: TPopupMenu;
    SetStandardCalendar1: TMenuItem;
    SetStandarCalendar1: TMenuItem;
    ModifyCalendar1: TMenuItem;
    Export1: TMenuItem;
    Copyfromotherline1: TMenuItem;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    ppBDEPipeline1: TppBDEPipeline;
    DataSource2: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
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
    ppLabel38: TppLabel;
    tshop01: TppLabel;
    ppShape2: TppShape;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel25: TppLabel;
    ppLabel33: TppLabel;
    x001: TppLabel;
    ppLine8: TppLine;
    ppLabel47: TppLabel;
    ppLine9: TppLine;
    ppLabel48: TppLabel;
    ppLine10: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLine16: TppLine;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLine7: TppLine;
    ppLine19: TppLine;
    tst01: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel71: TppLabel;
    ppLine22: TppLine;
    ppLabel57: TppLabel;
    ppLabel60: TppLabel;
    ppLabel69: TppLabel;
    ppLine72: TppLine;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLine73: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel112: TppLabel;
    fty001: TppLabel;
    ppLabel70: TppLabel;
    ppLabel24: TppLabel;
    ppLabel99: TppLabel;
    ppLabel116: TppLabel;
    sj01: TppLabel;
    ppLabel135: TppLabel;
    sj03: TppLabel;
    ppLabel145: TppLabel;
    sj05: TppLabel;
    ppLabel147: TppLabel;
    sj001: TppLabel;
    ppLabel149: TppLabel;
    sj003: TppLabel;
    ppLabel150: TppLabel;
    sj005: TppLabel;
    ppLine26: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    ppDBText15: TppDBText;
    x002: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ddcu001: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText14: TppDBText;
    ddf01: TppLabel;
    ddf02: TppLabel;
    ppDBText61: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ottl002: TppDBCalc;
    gross002: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    x004: TppDBCalc;
    ttl002: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    DCU002: TppLabel;
    ppLabel63: TppLabel;
    ppLine25: TppLine;
    ppLabel65: TppLabel;
    ppMemo1: TppMemo;
    ppLabel68: TppLabel;
    ppDBCalc62: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    fdf01: TppLabel;
    fdf02: TppLabel;
    tmarks01: TppLabel;
    ppLabel114: TppLabel;
    ppMemo2: TppMemo;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape3: TppShape;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    gross001: TppDBCalc;
    ppLabel40: TppLabel;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    S01: TppLabel;
    S02: TppLabel;
    s03: TppLabel;
    x003: TppDBCalc;
    ttl001: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ottl001: TppDBCalc;
    dcu001: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel22: TppLabel;
    s04: TppLabel;
    o001: TppLabel;
    b001: TppLabel;
    d001: TppLabel;
    n1001: TppLabel;
    n2001: TppLabel;
    o1001: TppLabel;
    o2001: TppLabel;
    n001: TppLabel;
    d00101: TppLabel;
    wc001: TppLabel;
    a001: TppLabel;
    r001: TppLabel;
    e001: TppLabel;
    dc001: TppLabel;
    l001: TppLabel;
    z001: TppLabel;
    o002: TppLabel;
    b002: TppLabel;
    d002: TppLabel;
    n1002: TppLabel;
    n2002: TppLabel;
    o1002: TppLabel;
    o2002: TppLabel;
    n002: TppLabel;
    d00102: TppLabel;
    wc002: TppLabel;
    l002: TppLabel;
    z002: TppLabel;
    a002: TppLabel;
    r002: TppLabel;
    e002: TppLabel;
    dc002: TppLabel;
    o003: TppLabel;
    b003: TppLabel;
    d003: TppLabel;
    n1003: TppLabel;
    n2003: TppLabel;
    o1003: TppLabel;
    o2003: TppLabel;
    n003: TppLabel;
    d00103: TppLabel;
    wc003: TppLabel;
    l003: TppLabel;
    z003: TppLabel;
    a003: TppLabel;
    r003: TppLabel;
    e003: TppLabel;
    dc003: TppLabel;
    sdf01: TppLabel;
    sdf02: TppLabel;
    sdf11: TppLabel;
    sdf12: TppLabel;
    sdf21: TppLabel;
    sdf31: TppLabel;
    sdf32: TppLabel;
    sdf22: TppLabel;
    marsk001: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppDBText64: TppDBText;
    ppDBText17: TppDBText;
    ppDBText29: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    x005: TppDBText;
    ppDBText38: TppDBText;
    ppDBText46: TppDBText;
    ppDBText49: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppLabel36: TppLabel;
    srdif01: TppLabel;
    srdif02: TppLabel;
    ppDBText55: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppParameterList1: TppParameterList;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel72: TppLabel;
    ppLabel79: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel80: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel81: TppLabel;
    ppShape4: TppShape;
    ppLabel104: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLine28: TppLine;
    ppLabel115: TppLabel;
    y001: TppLabel;
    ppLine32: TppLine;
    ppLabel118: TppLabel;
    ppLine33: TppLine;
    ppLabel119: TppLabel;
    ppLine34: TppLine;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLine40: TppLine;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLine42: TppLine;
    ppLabel136: TppLabel;
    ppLine44: TppLine;
    ppLabel138: TppLabel;
    ppLine45: TppLine;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel73: TppLabel;
    dt001: TppLabel;
    ppLabel75: TppLabel;
    dt002: TppLabel;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLine76: TppLine;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel95: TppLabel;
    ppLabel101: TppLabel;
    ppLabel26: TppLabel;
    fty002: TppLabel;
    Workshop: TppLabel;
    wks001: TppLabel;
    ppLine5: TppLine;
    ppLabel29: TppLabel;
    ppLabel74: TppLabel;
    ppLine6: TppLine;
    ppLabel82: TppLabel;
    ppLabel100: TppLabel;
    ppLabel113: TppLabel;
    ppLabel32: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText30: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText37: TppDBText;
    y002: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ddcu01: TppLabel;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    pday01: TppLabel;
    diff01: TppLabel;
    diff02: TppLabel;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel76: TppLabel;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    y004: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppDBCalc58: TppDBCalc;
    ppDBCalc59: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppDBCalc61: TppDBCalc;
    ADCU01: TppLabel;
    ppDBCalc65: TppDBCalc;
    ppDBCalc69: TppDBCalc;
    diff21: TppLabel;
    diff22: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine27: TppLine;
    ppLine29: TppLine;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    y003: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    sdcu01: TppLabel;
    ppLabel78: TppLabel;
    ppDBCalc63: TppDBCalc;
    ppDBCalc66: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    diff11: TppLabel;
    diff12: TppLabel;
    ppParameterList2: TppParameterList;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel9: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppShape1: TppShape;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel111: TppLabel;
    ppLine35: TppLine;
    ppLine41: TppLine;
    ppLine50: TppLine;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLine51: TppLine;
    ppLabel144: TppLabel;
    ppLine52: TppLine;
    ppLabel148: TppLabel;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel168: TppLabel;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel173: TppLabel;
    ppLine49: TppLine;
    ppLabel77: TppLabel;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine66: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel174: TppLabel;
    ppDBText7: TppDBText;
    ppDBText28: TppDBText;
    ppDBText50: TppDBText;
    ppDBText54: TppDBText;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppDBCalc68: TppDBCalc;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLine69: TppLine;
    ppLabel180: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape5: TppShape;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppDBCalc80: TppDBCalc;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLine53: TppLine;
    ppParameterList3: TppParameterList;
    DataSource3: TDataSource;
    ppBDEPipeline2: TppBDEPipeline;
    ClientDataSet4: TClientDataSet;
    DataSet2: TADOQuery;
    SaveDialog1: TSaveDialog;
    siLang1: TsiLang;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure week52AfterPost(DataSet: TDataSet);
    procedure week52AfterOpen(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure week52secttchange(Sender: TField);
    procedure week52wfchange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwscalendar: Tfrmwscalendar;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmwscalendar.BitBtn2Click(Sender: TObject);
begin
  if week52.state=dsedit then week52.post;
end;

procedure Tfrmwscalendar.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where lactive=1 and tshop>'''' and ((pline like ''T%'') or (pline like ''PP%''))';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('tshop').value);
      application.processmessages;
      next;
    end;
  end;
  {
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct pline from tblline where lactive=0 and pline like ''P%''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('pline').value);
      application.processmessages;
      next;
    end;
  end;
  }
end;

procedure Tfrmwscalendar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmwscalendar:=nil;
end;

procedure Tfrmwscalendar.FormCreate(Sender: TObject);
begin
  siLang1.Language:=frmmain.ComboBox2.text;
end;

procedure Tfrmwscalendar.FormShow(Sender: TObject);
begin
  dateedit1.date:=date;
  dateedit2.date:=date;
end;

procedure Tfrmwscalendar.SpeedButton1Click(Sender: TObject);
var
  dt1,dt2:tdatetime;
  //line1:string;
  year,month,day:word;
begin
  screen.cursor:=crhourglass;
  decodedate(date,year,month,day);
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(year,12,31);
  {
  line1:=uppercase(combobox3.text);
  with clientdataset1 do begin
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
  }
  with week52 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from wk52_ws where date1>=:x1 and date1<=:x2';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and ws='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(def_ky*100.0)/sum(def_tg) as acu from wk52_ws where date1>=:x1 and date1<=:x2 and def_tg>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and ws='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('acu').isnull then dbgrideh1.Columns[13].Footers[1].Value:=formatfloat('0.00',100.00-fieldbyname('acu').Value)
    else dbgrideh1.Columns[13].Footers[1].Value:='0.00';
  end;
  screen.cursor:=crdefault
end;

procedure Tfrmwscalendar.week52AfterOpen(DataSet: TDataSet);
begin
  week52.fieldbyname('sectt').onchange:=week52secttchange;
  week52.fieldbyname('sectt1').onchange:=week52secttchange;
  week52.fieldbyname('sectc').onchange:=week52secttchange;
  week52.fieldbyname('def_kh').onchange:=week52secttchange;
  week52.fieldbyname('def_lk').onchange:=week52secttchange;
  week52.fieldbyname('dwf').onchange:=week52wfchange;
  week52.fieldbyname('awf').onchange:=week52wfchange;
  week52.fieldbyname('awf_o').onchange:=week52wfchange;
end;

procedure Tfrmwscalendar.week52AfterPost(DataSet: TDataSet);
var
  sectt,sectc,sectt1,dwfp:double;
  wday:string;
  dt1,dt2:tdate;
  year,month,day:word;
  pstr:string;
  str1:string;
  dwf,awf:integer;
begin
  if not week52.fieldbyname('sectt').isnull then sectt:=week52.fieldbyname('sectt').value
  else sectt:=0;
  if not week52.fieldbyname('sectt1').isnull then sectt1:=week52.fieldbyname('sectt1').value
  else sectt1:=0;
  if not week52.fieldbyname('sectc').isnull then sectc:=week52.fieldbyname('sectc').value
  else sectc:=0;
  if not week52.fieldbyname('wday').isnull then wday:=week52.fieldbyname('wday').value
  else wday:='-';

      str1:='update wk52_ws set ';
      str1:=str1+'sectt='+floattostr(sectt)+',';
      str1:=str1+'sectc='+floattostr(sectc)+',';
      str1:=str1+'sectt1='+floattostr(sectt1)+',';
      str1:=str1+'wday='''+wday+''',';
      if not week52.fieldbyname('csect').isnull then
      str1:=str1+'csect='+week52.fieldbyname('csect').asstring+','
      else str1:=str1+'csect=0,';
      if not week52.fieldbyname('dcu').isnull then
      str1:=str1+'dcu='+week52.fieldbyname('dcu').asstring+','
      else str1:=str1+'dcu=0,';

      if not week52.fieldbyname('dwf').isnull then
      str1:=str1+'dwf='+week52.fieldbyname('dwf').asstring+','
      else str1:=str1+'dwf=0,';
      if not week52.fieldbyname('awf').isnull then
      str1:=str1+'awf='+week52.fieldbyname('awf').asstring+','
      else str1:=str1+'awf=null,';
      if not week52.fieldbyname('awf_o').isnull then
      str1:=str1+'awf_o='+week52.fieldbyname('awf_o').asstring+','
      else str1:=str1+'awf_o=null,';
      if not week52.fieldbyname('dwf_p').isnull then
      str1:=str1+'dwf_p='+week52.fieldbyname('dwf_p').asstring+','
      else str1:=str1+'dwf_p=100,';

      if not week52.fieldbyname('def_sb').isnull then
      str1:=str1+'def_sb='+week52.fieldbyname('def_sb').asstring+','
      else str1:=str1+'def_sb=0,';
      if not week52.fieldbyname('def_tg').isnull then
      str1:=str1+'def_tg='+week52.fieldbyname('def_tg').asstring+','
      else str1:=str1+'def_tg=0,';
      if not week52.fieldbyname('def_kh').isnull then
      str1:=str1+'def_kh='+week52.fieldbyname('def_kh').asstring+','
      else str1:=str1+'def_kh=0,';
      if not week52.fieldbyname('def_lk').isnull then
      str1:=str1+'def_lk='+week52.fieldbyname('def_lk').asstring+','
      else str1:=str1+'def_lk=0,';
      if not week52.fieldbyname('def_ky').isnull then
      str1:=str1+'def_ky='+week52.fieldbyname('def_ky').asstring+' '
      else str1:=str1+'def_ky=0 ';
      str1:=str1+'where date1='''+formatdatetime('yyyy-MM-dd',week52.fieldbyname('date1').value)+''' ';
      str1:=str1+'and ws='''+week52.fieldbyname('ws').value+'''';
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  decodedate(date,year,month,day);
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(year,12,31);
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(def_ky*100.0)/sum(def_tg) as acu from wk52_ws where date1>=:x1 and date1<=:x2 and def_tg>0';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and ws='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('acu').isnull then dbgrideh1.Columns[13].Footers[1].Value:=formatfloat('0.00',100.00-fieldbyname('acu').Value)
    else dbgrideh1.Columns[13].Footers[1].Value:='0.00';
  end;
end;

procedure Tfrmwscalendar.week52secttchange(Sender: TField);
var
  sectt,sectt1,sectc,dkh,dlk:double;
begin
  if not week52.fieldbyname('sectt').isnull then
  sectt:=week52.fieldbyname('sectt').value else sectt:=0;
  if not week52.fieldbyname('sectt1').isnull then
  sectt1:=week52.fieldbyname('sectt1').value else sectt1:=0;
  if not week52.fieldbyname('sectc').isnull then
  sectc:=week52.fieldbyname('sectc').value else sectc:=0;
  if not week52.fieldbyname('def_kh').isnull then
  dkh:=week52.fieldbyname('def_kh').value else dkh:=0;
  if not week52.fieldbyname('def_lk').isnull then
  dlk:=week52.fieldbyname('def_lk').value else dlk:=0;
  //week52.fieldbyname('def_tg').value:=sectt+sectt1+sectc;
  week52.fieldbyname('def_ky').value:=sectt+sectt1+sectc;//-dkh-dlk;
  if (sectt+sectt1+sectc>0) then
    week52.fieldbyname('dcu').value:=100.00-(sectt+sectt1+sectc-dkh-dlk)*100.00/(sectt+sectt1+sectc)
  else week52.fieldbyname('dcu').value:=0;
end;

procedure Tfrmwscalendar.week52wfchange(Sender: TField);
var
  sectt,sectt1,sectc:double;
  dwf,awf,awf_o:integer;
begin
  if not week52.fieldbyname('dwf').isnull then
  dwf:=week52.fieldbyname('dwf').value else dwf:=0;
  if not week52.fieldbyname('awf').isnull then
  awf:=week52.fieldbyname('awf').value else awf:=dwf;
  if not week52.fieldbyname('awf_o').isnull then
  awf_o:=week52.fieldbyname('awf_o').value else awf_o:=dwf;
  if not week52.fieldbyname('sectt').isnull then
  sectt:=week52.fieldbyname('sectt').value else sectt:=0;
  if not week52.fieldbyname('sectt1').isnull then
  sectt1:=week52.fieldbyname('sectt1').value else sectt1:=0;
  if not week52.fieldbyname('sectc').isnull then
  sectc:=week52.fieldbyname('sectc').value else sectc:=0;
  //{
  if (sectt+sectt1+sectc>0) then begin
    if dwf>0 then begin
      week52.fieldbyname('dwf_p').value:=(awf*(sectt+sectt1)+awf_o*sectc)/(sectt+sectt1+sectc)*100.00/dwf;
      //sectt1*100.00/sectt
    end else week52.fieldbyname('dwf_p').value:=100;
  end else week52.fieldbyname('dwf_p').value:=100;
  //}
end;

end.
