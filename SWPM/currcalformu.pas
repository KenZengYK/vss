unit currcalformu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, rxToolEdit, Db, DBClient, Grids, DBGridEh, Buttons,
  Menus, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppDB,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppDBBDE, ppViewr, ppVar,
  ExtCtrls, ppStrtch, ppMemo, ppSubRpt, GridsEh, ADODB, ppParameter,
  DBGridEh2Excel_Joe, siComp;
  function Calcdays(var year,month,day:word):integer;
  function calcwkno(var dt1:tdatetime):integer;
  function calcdiffday(var dt1,dt2:tdatetime):integer;

type
  Tfrmcurrcal = class(TForm)
    week52: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DBGridEh1: TDBGridEh;
    PopupMenu1: TPopupMenu;
    SetStandardCalendar1: TMenuItem;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    ppBDEPipeline1: TppBDEPipeline;
    DataSource2: TDataSource;
    SetStandarCalendar1: TMenuItem;
    ModifyCalendar1: TMenuItem;
    ppDBPipeline1: TppDBPipeline;
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
    ppFooterBand2: TppFooterBand;
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
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLine16: TppLine;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppDBText26: TppDBText;
    x003: TppDBCalc;
    ppLine7: TppLine;
    ttl001: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppMemo1: TppMemo;
    ppLine19: TppLine;
    ppLabel68: TppLabel;
    tst01: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel71: TppLabel;
    ppLine22: TppLine;
    ppLabel57: TppLabel;
    ppLabel60: TppLabel;
    ppDBText27: TppDBText;
    ottl001: TppDBCalc;
    dcu001: TppLabel;
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
    ppLabel69: TppLabel;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
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
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel73: TppLabel;
    dt001: TppLabel;
    ppLabel75: TppLabel;
    dt002: TppLabel;
    ddcu01: TppLabel;
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
    ddcu001: TppLabel;
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
    ppLine49: TppLine;
    ppLine53: TppLine;
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
    ppLine72: TppLine;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppDBText4: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLine73: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppDBText5: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBCalc62: TppDBCalc;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppDBText6: TppDBText;
    ppDBCalc63: TppDBCalc;
    ppDBCalc65: TppDBCalc;
    ppLine76: TppLine;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppDBText8: TppDBText;
    ppDBCalc66: TppDBCalc;
    ppDBCalc69: TppDBCalc;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel101: TppLabel;
    BitBtn6: TBitBtn;
    ppLabel112: TppLabel;
    fty001: TppLabel;
    ppDBText14: TppDBText;
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
    ppLabel26: TppLabel;
    fty002: TppLabel;
    Workshop: TppLabel;
    wks001: TppLabel;
    ppLine5: TppLine;
    ppLabel29: TppLabel;
    pday01: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    DataSource3: TDataSource;
    ppBDEPipeline2: TppBDEPipeline;
    ClientDataSet4: TClientDataSet;
    ppTitleBand1: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
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
    ppDBCalc8: TppDBCalc;
    ppLabel36: TppLabel;
    ppLabel70: TppLabel;
    ddf01: TppLabel;
    ddf02: TppLabel;
    sdf01: TppLabel;
    sdf02: TppLabel;
    sdf11: TppLabel;
    sdf12: TppLabel;
    sdf21: TppLabel;
    sdf31: TppLabel;
    sdf32: TppLabel;
    sdf22: TppLabel;
    fdf01: TppLabel;
    fdf02: TppLabel;
    ppLabel74: TppLabel;
    ppLine6: TppLine;
    ppLabel82: TppLabel;
    diff01: TppLabel;
    diff02: TppLabel;
    diff11: TppLabel;
    diff12: TppLabel;
    diff21: TppLabel;
    diff22: TppLabel;
    srdif01: TppLabel;
    srdif02: TppLabel;
    ppLabel24: TppLabel;
    ppLabel99: TppLabel;
    tmarks01: TppLabel;
    ppDBText55: TppDBText;
    ppLabel100: TppLabel;
    ppLabel113: TppLabel;
    marsk001: TppLabel;
    BitBtn7: TBitBtn;
    ppLabel114: TppLabel;
    ppMemo2: TppMemo;
    SpeedButton2: TSpeedButton;
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
    ppDBText61: TppDBText;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    DataSet2: TADOQuery;
    Export1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Copyfromotherline1: TMenuItem;
    Set1: TMenuItem;
    siLang1: TsiLang;
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
    procedure DBGridEh1Columns17EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1Columns16EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ppReport2BeforePrint(Sender: TObject);
    procedure ppReport3BeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Export1Click(Sender: TObject);
    procedure Copyfromotherline1Click(Sender: TObject);
    procedure DBGridEh1Columns24EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns26EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns28EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ComboBox2Enter(Sender: TObject);
    procedure ModifyCalendar1Click(Sender: TObject);
    procedure Set1Click(Sender: TObject);
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
  frmcurrcal: Tfrmcurrcal;
  atm:tdatetime;
  logseq:integer;

implementation

uses mainformu, cclformu, spsectformu, ltformu, dailyqnformu, calendarchartformu,
  poptionformu, currcal_sumformu, calnotepadformu, currcal_tdformu;

{$R *.DFM}

procedure Tfrmcurrcal.FormShow(Sender: TObject);
//var
//  year,month,day:word;
begin
  //combobox1.items.clear;
  combobox2.items.clear;
  //decodedate(date,year,month,day);
  dateedit1.date:=date;
  dateedit2.date:=date;//encodedate(year,12,31);
  //combobox1.text:='';
  combobox2.text:='';
  combobox3.text:='';
  {
  with clientdataset1 do begin
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
  with clientdataset1 do begin
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
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r2').value=false then begin
      dbgrideh1.ReadOnly:=true;
    end;
  end;
end;

procedure Tfrmcurrcal.ModifyCalendar1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='execute procedure sp_qnupdateweek52_fty('''+combobox1.text+''',:x1,:x2)';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit1.date;
    execute;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='execute procedure sp_lwcalendar_arr('''+combobox1.text+''',:x1,:x2)';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit1.date;
    execute;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmcurrcal.BitBtn2Click(Sender: TObject);
begin
  if (week52.state=dsinsert) or (week52.state=dsedit) then week52.post;
end;

procedure Tfrmcurrcal.week52AfterPost(DataSet: TDataSet);
var
  secto,sectt,sectc,workero,workert,workerc,sectt1:double;
  wday,shft:string;
  dt1,dt2:tdate;
  year,month,day:word;
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
      str1:=str1+'def_ky='+week52.fieldbyname('def_ky').asstring+','
      else str1:=str1+'def_ky=0,';
      if not week52.fieldbyname('def_kh1').isnull then
      str1:=str1+'def_kh1='+week52.fieldbyname('def_kh1').asstring+','
      else str1:=str1+'def_kh1=0,';
      if not week52.fieldbyname('def_kh2').isnull then
      str1:=str1+'def_kh2='+week52.fieldbyname('def_kh2').asstring+','
      else str1:=str1+'def_kh2=0,';
      if not week52.fieldbyname('def_kh3').isnull then
      str1:=str1+'def_kh3='+week52.fieldbyname('def_kh3').asstring+','
      else str1:=str1+'def_kh3=0,';
      if not week52.fieldbyname('def_cl').isnull then
      str1:=str1+'def_cl='+week52.fieldbyname('def_cl').asstring+','
      else str1:=str1+'def_cl=0,';
      if not week52.fieldbyname('arr_tg').isnull then
      str1:=str1+'arr_tg='+week52.fieldbyname('arr_tg').asstring+','
      else str1:=str1+'arr_tg=0,';
      if not week52.fieldbyname('arr_kh').isnull then
      str1:=str1+'arr_kh='+week52.fieldbyname('arr_kh').asstring+','
      else str1:=str1+'arr_kh=0,';
      if not week52.fieldbyname('arr_lk').isnull then
      str1:=str1+'arr_lk='+week52.fieldbyname('arr_lk').asstring+','
      else str1:=str1+'arr_lk=0,';
      if not week52.fieldbyname('arr_ky').isnull then
      str1:=str1+'arr_ky='+week52.fieldbyname('arr_ky').asstring+','
      else str1:=str1+'arr_ky=0,';
      if not week52.fieldbyname('arr_cst').isnull then
      str1:=str1+'arr_cst='+week52.fieldbyname('arr_cst').asstring+','
      else str1:=str1+'arr_cst=0,';
      if not week52.fieldbyname('arr_cu').isnull then
      str1:=str1+'arr_cu='+week52.fieldbyname('arr_cu').asstring+','
      else str1:=str1+'arr_cu=0,';
      if not week52.fieldbyname('arr_td').isnull then
      str1:=str1+'arr_td='+week52.fieldbyname('arr_td').asstring+','
      else str1:=str1+'arr_td=0,';
      if not week52.fieldbyname('cur_kh').isnull then
      str1:=str1+'cur_kh='+week52.fieldbyname('cur_kh').asstring+','
      else str1:=str1+'cur_kh=0,';
      if not week52.fieldbyname('cur_khe').isnull then
      str1:=str1+'cur_khe='''+week52.fieldbyname('cur_khe').value+''','
      else str1:=str1+'cur_khe='''',';
      if not week52.fieldbyname('cur_td').isnull then
      str1:=str1+'cur_td='+week52.fieldbyname('cur_td').asstring+','
      else str1:=str1+'cur_td=0,';
      if not week52.fieldbyname('cur_cl').isnull then
      str1:=str1+'cur_cl='+week52.fieldbyname('cur_cl').asstring+','
      else str1:=str1+'cur_cl=0,';
      if not week52.fieldbyname('cur_m2').isnull then
      str1:=str1+'cur_m2='+week52.fieldbyname('cur_m2').asstring+','
      else str1:=str1+'cur_m2=0,';
      if not week52.fieldbyname('cur_kh3').isnull then
      str1:=str1+'cur_kh3='+week52.fieldbyname('cur_kh3').asstring+','
      else str1:=str1+'cur_kh3=0,';
      if not week52.fieldbyname('arr_cl').isnull then
      str1:=str1+'arr_cl='+week52.fieldbyname('arr_cl').asstring+','
      else str1:=str1+'arr_cl=0,';
      if not week52.fieldbyname('arr_m2').isnull then
      str1:=str1+'arr_m2='+week52.fieldbyname('arr_m2').asstring+','
      else str1:=str1+'arr_m2=0,';
      if not week52.fieldbyname('arr_kh1').isnull then
      str1:=str1+'arr_kh1='+week52.fieldbyname('arr_kh1').asstring+','
      else str1:=str1+'arr_kh1=0,';
      if not week52.fieldbyname('arr_kh2').isnull then
      str1:=str1+'arr_kh2='+week52.fieldbyname('arr_kh2').asstring+','
      else str1:=str1+'arr_kh2=0,';
      if not week52.fieldbyname('arr_kh3').isnull then
      str1:=str1+'arr_kh3='+week52.fieldbyname('arr_kh3').asstring+','
      else str1:=str1+'arr_kh3=0,';

      if not week52.fieldbyname('arr_2he').isnull then
      str1:=str1+'arr_2he='''+week52.fieldbyname('arr_2he').value+''','
      else str1:=str1+'arr_2he='''',';
      if not week52.fieldbyname('arr_khe').isnull then
      str1:=str1+'arr_khe='''+week52.fieldbyname('arr_khe').value+''','
      else str1:=str1+'arr_khe='''',';
      if not week52.fieldbyname('def_khe').isnull then
      str1:=str1+'def_khe='''+week52.fieldbyname('def_khe').value+''','
      else str1:=str1+'def_khe='''',';
      if not week52.fieldbyname('arr_2h').isnull then
      str1:=str1+'arr_2h='+week52.fieldbyname('arr_2h').asstring+','
      else str1:=str1+'arr_2h=0,';
      if not week52.fieldbyname('def_td').isnull then
      str1:=str1+'def_td='+week52.fieldbyname('def_td').asstring+' '
      else str1:=str1+'def_td=0 ';
      str1:=str1+'where date1='''+formatdatetime('yyyy-MM-dd',week52.fieldbyname('date1').value)+''' ';
      str1:=str1+'and line='''+week52.fieldbyname('line').value+'''';
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
      
  decodedate(date,year,month,day);
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(year,12,31);
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(arr_2h*100.0)/sum(arr_ky) as acu,sum(lsect*100.0)/sum(ttl) as dcu from week52 where ttl>0 and date1>=:x1 and date1<=:x2';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('acu').isnull then dbgrideh1.Columns[22].Footers[1].Value:=formatfloat('0.00',fieldbyname('acu').Value)
    else dbgrideh1.Columns[22].Footers[1].Value:='0.00';
    if not fieldbyname('dcu').isnull then dbgrideh1.Columns[23].Footers[1].Value:=formatfloat('0.00',fieldbyname('dcu').Value)
    else dbgrideh1.Columns[23].Footers[1].Value:='0.00';
  end;
end;

procedure Tfrmcurrcal.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmcurrcal.Export1Click(Sender: TObject);
begin
  try
  if savedialog1.execute then begin
    //SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,DBGridEh1,SaveDialog1.FileName,true);
    if ExptoExcel(DBGridEh1,'','')=true then showmessage('OK');
  end;
  finally
    //showmessage('succeeded!');
  end;
end;

procedure Tfrmcurrcal.SpeedButton1Click(Sender: TObject);
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
  with week52 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from week52 where date1>=:x1 and date1<=:x2 and tshop>'''' and lactive=1';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
  end;
  screen.cursor:=crdefault
end;

procedure Tfrmcurrcal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if week52.state=dsedit then week52.post;
  if frmdailyqn<>nil then frmdailyqn:=nil;
  action:=cafree;
  frmcurrcal:=nil;
end;

procedure Tfrmcurrcal.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then speedbutton1click(self);
end;

procedure Tfrmcurrcal.ComboBox2Enter(Sender: TObject);
begin
  combobox2.items.clear;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where tshop>'''' and lactive=1';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('tshop').value);
      application.processmessages;
      next;
    end;
  end;
end;

procedure Tfrmcurrcal.SetStandardCalendar1Click(Sender: TObject);
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

procedure Tfrmcurrcal.BitBtn4Click(Sender: TObject);
begin
  if frmpoption=nil then frmpoption:=tfrmpoption.create(nil);
  if (combobox2.text>'') or (combobox3.text>'') then
  frmpoption.xh1.ItemIndex:=0
  else if combobox1.text>'' then frmpoption.xh1.ItemIndex:=1;
  frmpoption.Label1.Caption:='Cur_1';
  frmpoption.Show;
end;

procedure Tfrmcurrcal.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  //percent1.caption:=formatfloat('#0.00',(xk.Value)*100/strtofloat(mb.caption));
end;

procedure Tfrmcurrcal.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).ZoomPercentage:=100;
end;

procedure Tfrmcurrcal.SetStandarCalendar1Click(Sender: TObject);
var
  dt1,dt2:tdatetime;
  year,month,day:word;
  pline:string;
begin
  screen.cursor:=crhourglass;
  decodedate(date,year,month,day);
  if dateedit1.date>0 then
  dt1:=dateedit1.date else dt1:=date;
  if dateedit2.date>0 then
  dt2:=dateedit2.date else dt2:=encodedate(year,12,31);
  if combobox1.text>'' then begin
    pline:=uppercase(combobox3.text);
    frmmain.SocketConnection1.AppServer.setstdcalendar(pline,dt1,dt2);
  end;
  screen.cursor:=crdefault;
  showmessage('OK!');
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

procedure Tfrmcurrcal.setcalendar(dt1, dt2: tdatetime; line1: string);
var
  i,j,wkno:integer;
  date1:tdatetime;
begin
  j:=calcdiffday(dt2,dt1);
  for i:=0 to j do begin
    date1:=dt1+i;
    wkno:=calcwkno(date1);
    with clientdataset1 do begin
      close;
      params.clear;
        params.createparam(ftstring,'line',ptinput);
        params.createparam(ftdatetime,'date1',ptinput);
        params.createparam(ftinteger,'wkno',ptinput);
        params.createparam(ftinteger,'secto',ptinput);
        params.createparam(ftinteger,'sectt',ptinput);
        commandtext:='insert into week52(line,date1,wkno,secto,sectt) '
                    +'values(:line,:date1,:wkno,:secto,:sectt)';
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
      execute;
    end;
  end;
end;

procedure Tfrmcurrcal.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppreport2.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport2.previewform.viewer).ZoomPercentage:=100;
end;

procedure Tfrmcurrcal.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if clientdataset3.fieldbyname('csect').value>0 then ddcu001.Caption:=formatfloat('0.00',clientdataset3.fieldbyname('dcu').value)
  else ddcu001.caption:='0.00';
  ddf01.Caption:='0.0';//formatfloat('+0.0;-0.0',clientdataset3.fieldbyname('csect').value-clientdataset3.fieldbyname('ottl').value);
  ddf02.Caption:='0.0';//formatfloat('+0.0;-0.0',clientdataset3.fieldbyname('csect').value-clientdataset3.fieldbyname('workero').value);
end;

procedure Tfrmcurrcal.week52AfterOpen(DataSet: TDataSet);
var
  dt1,dt2:tdate;
  year,month,day:word;
begin
  (week52.fieldbyname('arr_cu') as tfloatfield).displayformat:='0.00;;''';
  (week52.fieldbyname('dcu') as tfloatfield).displayformat:='0.00;;''';
  (week52.fieldbyname('ocu') as tfloatfield).displayformat:='0.00;;''';
  week52.FieldByName('sectt').OnChange:=secttchange;
  week52.FieldByName('sectt1').OnChange:=secttchange;
  week52.FieldByName('sectc').OnChange:=secttchange;
  week52.FieldByName('osect').OnChange:=secttchange;
  week52.FieldByName('esect').OnChange:=secttchange;
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
  week52.FieldByName('def_kh1').OnChange:=secttchange;
  week52.FieldByName('def_kh2').OnChange:=secttchange;
  week52.FieldByName('def_kh3').OnChange:=secttchange;
  week52.FieldByName('def_lk').OnChange:=secttchange;
  week52.FieldByName('def_cl').OnChange:=secttchange;
  week52.FieldByName('arr_2h').OnChange:=secttchange;
  week52.FieldByName('arr_kh1').OnChange:=secttchange;
  week52.FieldByName('arr_kh2').OnChange:=secttchange;
  week52.FieldByName('arr_kh3').OnChange:=secttchange;
  week52.FieldByName('arr_lk').OnChange:=secttchange;
  week52.FieldByName('arr_cl').OnChange:=secttchange;
  week52.FieldByName('arr_cst').OnChange:=secttchange;
  week52.FieldByName('cur_kh3').OnChange:=secttchange;
  //week52.FieldByName('cur_kh').OnChange:=secttchange;
  week52.FieldByName('cur_cl').OnChange:=secttchange;
  week52.FieldByName('arr_m2').OnChange:=secttchange;
  week52.FieldByName('cur_m2').OnChange:=secttchange;

  decodedate(date,year,month,day);
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(year,12,31);
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(lsect*100.0)/sum(def_ky) as acu,sum(cur_td*100.0)/sum(def_ky) as dcu,sum((cur_td+lsect)*100.0)/sum(def_ky) as ocu from week52 where date1>=:x1 and date1<=:x2 and ttl>0 and tshop>''''';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('acu').isnull then dbgrideh1.Columns[22].Footers[1].Value:=formatfloat('0.00',fieldbyname('acu').Value)
    else dbgrideh1.Columns[22].Footers[1].Value:='0.00';
    if not fieldbyname('dcu').isnull then dbgrideh1.Columns[29].Footers[1].Value:=formatfloat('0.00',fieldbyname('dcu').Value)
    else dbgrideh1.Columns[29].Footers[1].Value:='0.00';
    if not fieldbyname('ocu').isnull then dbgrideh1.Columns[30].Footers[1].Value:=formatfloat('0.00',fieldbyname('ocu').Value)
    else dbgrideh1.Columns[30].Footers[1].Value:='0.00';
  end;
end;

procedure Tfrmcurrcal.secttchange(Sender: TField);
var
  s1,s2,s3,s4,s5,s6,s7,s8,a2,b2,c2,d2,e2,f2,g2,h2:double;
  ottl,workero:double;
  dkh,dlk,akh,alk,acst,acl,ccl,a2h,dcl,dkh1,dkh2,dkh3,akh1,akh2,akh3,ckh3:double;
  str1,str2,str3,str4:string;
  am2,cm2:double;
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
  if not week52.fieldbyname('a2').isnull then a2:=week52.fieldbyname('a2').value else a2:=0;
  if not week52.fieldbyname('b2').isnull then b2:=week52.fieldbyname('b2').value else b2:=0;
  if not week52.fieldbyname('c2').isnull then c2:=week52.fieldbyname('c2').value else c2:=0;
  if not week52.fieldbyname('d2').isnull then d2:=week52.fieldbyname('d2').value else d2:=0;
  if not week52.fieldbyname('e2').isnull then e2:=week52.fieldbyname('e2').value else e2:=0;
  if not week52.fieldbyname('f2').isnull then f2:=week52.fieldbyname('f2').value else f2:=0;
  if not week52.fieldbyname('g2').isnull then g2:=week52.fieldbyname('g2').value else g2:=0;
  if not week52.fieldbyname('h2').isnull then h2:=week52.fieldbyname('h2').value else h2:=0;
  if not week52.fieldbyname('def_kh1').isnull then
  dkh1:=week52.fieldbyname('def_kh1').value else dkh1:=0;
  if not week52.fieldbyname('def_kh2').isnull then
  dkh2:=week52.fieldbyname('def_kh2').value else dkh2:=0;
  if not week52.fieldbyname('def_kh3').isnull then
  dkh3:=week52.fieldbyname('def_kh3').value else dkh3:=0;
  if not week52.fieldbyname('def_lk').isnull then
  dlk:=week52.fieldbyname('def_lk').value else dlk:=0;
  if not week52.fieldbyname('arr_kh1').isnull then
  akh1:=week52.fieldbyname('arr_kh1').value else akh1:=0;
  if not week52.fieldbyname('arr_kh2').isnull then
  akh2:=week52.fieldbyname('arr_kh2').value else akh2:=0;
  if not week52.fieldbyname('arr_kh3').isnull then
  akh3:=week52.fieldbyname('arr_kh3').value else akh3:=0;
  if not week52.fieldbyname('arr_lk').isnull then
  alk:=week52.fieldbyname('arr_lk').value else alk:=0;
  if not week52.fieldbyname('arr_cst').isnull then
  acst:=week52.fieldbyname('arr_cst').value else acst:=0;
  if not week52.fieldbyname('def_cl').isnull then
  dcl:=week52.fieldbyname('def_cl').value else dcl:=0;
  if not week52.fieldbyname('arr_cl').isnull then
  acl:=week52.fieldbyname('arr_cl').value else acl:=0;
  if not week52.fieldbyname('cur_cl').isnull then
  ccl:=week52.fieldbyname('cur_cl').value else ccl:=0;
  if not week52.fieldbyname('arr_2h').isnull then
  a2h:=week52.fieldbyname('arr_2h').value else a2h:=0;
  if not week52.fieldbyname('cur_kh3').isnull then
  ckh3:=week52.fieldbyname('cur_kh3').value else ckh3:=0;
  if not week52.fieldbyname('arr_m2').isnull then
  am2:=week52.fieldbyname('arr_m2').value else am2:=0;
  if not week52.fieldbyname('cur_m2').isnull then
  cm2:=week52.fieldbyname('cur_m2').value else cm2:=0;

  week52.fieldbyname('def_tg').value:=s1+s2+s3;
  week52.fieldbyname('def_ky').value:=s1+s2+s3-dkh1-dkh2-dkh3-dlk-dcl;
  week52.fieldbyname('arr_tg').value:=s1+s2+s3+s5-f2-ckh3-ccl-s4-cm2-e2;//+acst;
  week52.fieldbyname('arr_ky').value:=s1+s2+s3-akh1-akh2-akh3-alk-acl-a2h-am2+acst;
  week52.fieldbyname('lsect').value:=a2+b2+c2+d2+g2+h2+ckh3;//+e2+f2;
  week52.fieldbyname('csect').value:=s1+s2+s3+acst-akh1-akh2-akh3-alk-acl-am2;//s5;
  week52.fieldbyname('ttl').value:=s1+s2+s3+s5-(a2+b2+c2+d2+g2+h2)-e2-f2-ckh3-ccl-s4-cm2;
  week52.fieldbyname('def_td').value:=dkh1+dkh2+dkh3+dlk+dcl;
  week52.fieldbyname('arr_td').value:=akh1+akh2+akh3+alk+acl;
  week52.fieldbyname('cur_td').value:=f2+s4+ccl+e2+cm2;//s4+a2+b2+c2+d2+e2+f2+g2+h2;
  if not week52.fieldbyname('ottl').isnull then ottl:=week52.fieldbyname('ottl').value else ottl:=week52.fieldbyname('csect').value;
  str1:='';
  if a2>0 then begin
    if str1>'' then str1:=str1+',2a('+formatfloat('0.0',a2)+')' else str1:='2a('+formatfloat('0.0',a2)+')';
  end;
  if b2>0 then begin
    if str1>'' then str1:=str1+',2b('+formatfloat('0.0',b2)+')' else str1:='2b('+formatfloat('0.0',b2)+')';
  end;
  if c2>0 then begin
    if str1>'' then str1:=str1+',2c('+formatfloat('0.0',c2)+')' else str1:='2c('+formatfloat('0.0',c2)+')';
  end;
  if d2>0 then begin
    if str1>'' then str1:=str1+',2d('+formatfloat('0.0',d2)+')' else str1:='2d('+formatfloat('0.0',d2)+')';
  end;
  if ckh3>0 then begin
    if str1>'' then str1:=str1+',2e('+formatfloat('0.0',ckh3)+')' else str1:='2e('+formatfloat('0.0',ckh3)+')';
  end;
  if g2>0 then begin
    if str1>'' then str1:=str1+',2f('+formatfloat('0.0',g2)+')' else str1:='2f('+formatfloat('0.0',g2)+')';
  end;
  if h2>0 then begin
    if str1>'' then str1:=str1+',2g('+formatfloat('0.0',h2)+')' else str1:='2g('+formatfloat('0.0',h2)+')';
  end;
  str2:='';
  if e2>0 then begin
    if str2>'' then str2:=str2+',3.1a('+formatfloat('0.0',e2)+')' else str2:='3.1a('+formatfloat('0.0',e2)+')';
  end;
  if f2>0 then begin
    if str2>'' then str2:=str2+',3.1b('+formatfloat('0.0',f2)+')' else str2:='3.1b('+formatfloat('0.0',f2)+')';
  end;
  if ckh3>0 then begin
    if str2>'' then str2:=str2+',3.1c('+formatfloat('0.0',ckh3)+')' else str2:='3.1c('+formatfloat('0.0',ckh3)+')';
  end;
  if s4>0 then begin
    if str2>'' then str2:=str2+',3.2a('+formatfloat('0.0',s4)+')' else str2:='3.2a('+formatfloat('0.0',s4)+')';
  end;
  if ccl>0 then begin
    if str2>'' then str2:=str2+',3.3a('+formatfloat('0.0',ccl)+')' else str2:='3.3a('+formatfloat('0.0',ccl)+')';
  end;
  if cm2>0 then begin
    if str2>'' then str2:=str2+',3.4a('+formatfloat('0.0',cm2)+')' else str2:='3.4a('+formatfloat('0.0',cm2)+')';
  end;
  str3:='';
  if akh1>0 then begin
    if str3>'' then str3:=str3+',3.1a('+formatfloat('0.0',akh1)+')' else str3:='3.1a('+formatfloat('0.0',akh1)+')';
  end;
  if akh2>0 then begin
    if str3>'' then str3:=str3+',3.1b('+formatfloat('0.0',akh2)+')' else str3:='3.1b('+formatfloat('0.0',akh2)+')';
  end;
  if akh3>0 then begin
    if str3>'' then str3:=str3+',3.1c('+formatfloat('0.0',akh3)+')' else str3:='3.1c('+formatfloat('0.0',akh3)+')';
  end;
  if alk>0 then begin
    if str3>'' then str3:=str3+',3.2a('+formatfloat('0.0',alk)+')' else str3:='3.2a('+formatfloat('0.0',alk)+')';
  end;
  if acl>0 then begin
    if str3>'' then str3:=str3+',3.3a('+formatfloat('0.0',acl)+')' else str3:='3.3a('+formatfloat('0.0',acl)+')';
  end;
  if am2>0 then begin
    if str3>'' then str3:=str3+',3.4a('+formatfloat('0.0',am2)+')' else str3:='3.4a('+formatfloat('0.0',am2)+')';
  end;
  str4:='';
  if dkh1>0 then begin
    if str4>'' then str4:=str4+',3.1a('+formatfloat('0.0',dkh1)+')' else str4:='3.1a('+formatfloat('0.0',dkh1)+')';
  end;
  if dkh2>0 then begin
    if str4>'' then str4:=str4+',3.1b('+formatfloat('0.0',dkh2)+')' else str4:='3.1b('+formatfloat('0.0',dkh2)+')';
  end;
  if dkh3>0 then begin
    if str4>'' then str4:=str4+',3.1c('+formatfloat('0.0',dkh3)+')' else str4:='3.1c('+formatfloat('0.0',dkh3)+')';
  end;
  if dlk>0 then begin
    if str4>'' then str4:=str4+',3.2a('+formatfloat('0.0',dlk)+')' else str4:='3.2a('+formatfloat('0.0',dlk)+')';
  end;
  if dcl>0 then begin
    if str4>'' then str4:=str4+',3.3a('+formatfloat('0.0',dcl)+')' else str4:='3.3a('+formatfloat('0.0',dcl)+')';
  end;
  week52.fieldbyname('flag').value:=str1;
  week52.fieldbyname('cur_khe').value:=str2;
  week52.fieldbyname('arr_khe').value:=str3;
  week52.fieldbyname('def_khe').value:=str4;
  week52.fieldbyname('arr_2he').value:='';
  if week52.fieldbyname('def_ky').value>0 then begin
    week52.fieldbyname('arr_cu').value:=week52.fieldbyname('lsect').value*100.00/week52.fieldbyname('def_ky').value;
    week52.fieldbyname('dcu').value:=week52.fieldbyname('cur_td').value*100.00/week52.fieldbyname('def_ky').value;
    week52.fieldbyname('ocu').value:=(week52.fieldbyname('lsect').value+week52.fieldbyname('cur_td').value)*100.00/week52.fieldbyname('def_ky').value;
    //if week52.fieldbyname('ttl').value>0 then week52.fieldbyname('dcu').value:=week52.fieldbyname('lsect').value*100.0/week52.fieldbyname('ttl').value
    //else week52.fieldbyname('dcu').value:=0;
    //if week52.fieldbyname('arr_ky').value>0 then week52.fieldbyname('arr_cu').value:=week52.fieldbyname('arr_2h').value*100.0/week52.fieldbyname('arr_ky').value
    //else week52.fieldbyname('arr_cu').value:=0;
  end else begin
    week52.fieldbyname('arr_cu').value:=0;
    week52.fieldbyname('dcu').value:=0;
    week52.fieldbyname('ocu').value:=0;
  end;
end;

procedure Tfrmcurrcal.Set1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if combobox1.text>'' then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='execute procedure sp_swpm_lwcalendar_arr(:x1,:x2,:x3)';
      params[0].asstring:=combobox1.text;
      params[1].asdate:=dateedit1.date;
      params[2].asdate:=dateedit2.date;
      execute;
    end;
    //showmessage(clientdataset1.commandtext);
  end;
  speedbutton1click(self);
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmcurrcal.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  dt1,dt2:tdate;
  year,month,day:word;
begin
  decodedate(date,year,month,day);
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(year,12,31);
  s01.Caption:='';
  s02.Caption:='';
  s03.Caption:='';
  s04.Caption:='';
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select count(*) as cnt,sum(ottl) as n1,sum(workero) as n2,sum(csect) as n3,sum(sectt) as n4,sum(sectt1) as n5,'
                +'sum(sectc) as n6,sum(osect) as n7,sum(ttl) as n8,sum(workerc) as n9,sum(lsect) as n10,sum(zsect) as n11,sum(asect) as n12,'
                +'sum(rsect) as n13,sum(esect) as n14 from week52 where line=:x1 and date1>=:x2 and date1<=:x3 and wday=''S'' and tshop>''''';
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
      n002.Caption:=formatfloat('0.0',fieldbyname('n8').value);
      d00102.Caption:=formatfloat('0.0',fieldbyname('n3').value);
      wc002.Caption:=formatfloat('0.0',fieldbyname('n9').value);
      l002.Caption:=formatfloat('0.0',fieldbyname('n10').value);
      z002.Caption:=formatfloat('0.0',fieldbyname('n11').value);
      a002.Caption:=formatfloat('0.0',fieldbyname('n12').value);
      r002.Caption:=formatfloat('0.0',fieldbyname('n13').value);
      e002.Caption:=formatfloat('0.0',fieldbyname('n14').value);
      if fieldbyname('n3').value>0 then dc002.Caption:='100.00' else dc002.Caption:='0.00';
      sdf11.Caption:=formatfloat('+0.0;-0.0',fieldbyname('n3').value-fieldbyname('n1').value);
      sdf12.Caption:=formatfloat('+0.0;-0.0',fieldbyname('n3').value-fieldbyname('n2').value);
    end else begin
      o002.Caption:='0.0';
      b002.Caption:='0.0';
      d002.Caption:='0.0';
      n1002.Caption:='0.0';
      n2002.Caption:='0.0';
      o1002.Caption:='0.0';
      o2002.Caption:='0.0';
      n002.Caption:='0.0';
      d00102.Caption:='0.0';
      wc002.Caption:='0.0';
      l002.Caption:='0.0';
      z002.Caption:='0.0';
      a002.Caption:='0.0';
      r002.Caption:='0.0';
      e002.Caption:='0.0';
      dc002.Caption:='0.00';
      sdf11.Caption:='0.0';
      sdf12.Caption:='0.0';
    end;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select count(*) as cnt,sum(ottl) as n1,sum(workero) as n2,sum(csect) as n3,sum(sectt) as n4,sum(sectt1) as n5,'
                +'sum(sectc) as n6,sum(osect) as n7,sum(ttl) as n8,sum(workerc) as n9,sum(lsect) as n10,sum(zsect) as n11,sum(asect) as n12,'
                +'sum(rsect) as n13,sum(esect) as n14 from week52 where line=:x1 and date1>=:x2 and date1<=:x3 and wday=''H'' and tshop>''''';
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
      n003.Caption:=formatfloat('0.0',fieldbyname('n8').value);
      d00103.Caption:=formatfloat('0.0',fieldbyname('n3').value);
      wc003.Caption:=formatfloat('0.0',fieldbyname('n9').value);
      l003.Caption:=formatfloat('0.0',fieldbyname('n10').value);
      z003.Caption:=formatfloat('0.0',fieldbyname('n11').value);
      a003.Caption:=formatfloat('0.0',fieldbyname('n12').value);
      r003.Caption:=formatfloat('0.0',fieldbyname('n13').value);
      e003.Caption:=formatfloat('0.0',fieldbyname('n14').value);
      if fieldbyname('n3').value>0 then dc003.Caption:='100.00' else dc003.Caption:='0.00';
      sdf21.Caption:=formatfloat('+0.0;-0.0',fieldbyname('n3').value-fieldbyname('n1').value);
      sdf22.Caption:=formatfloat('+0.0;-0.0',fieldbyname('n3').value-fieldbyname('n2').value);
    end else begin
      o003.Caption:='0.0';
      b003.Caption:='0.0';
      d003.Caption:='0.0';
      n1003.Caption:='0.0';
      n2003.Caption:='0.0';
      o1003.Caption:='0.0';
      o2003.Caption:='0.0';
      n003.Caption:='0.0';
      d00103.Caption:='0.0';
      wc003.Caption:='0.0';
      l003.Caption:='0.0';
      z003.Caption:='0.0';
      a003.Caption:='0.0';
      r003.Caption:='0.0';
      e003.Caption:='0.0';
      dc003.Caption:='0.00';
      sdf21.Caption:='0.0';
      sdf22.Caption:='0.0';
    end;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select count(*) as cnt,sum(ottl) as n1,sum(workero) as n2,sum(csect) as n3,sum(sectt) as n4,sum(sectt1) as n5,'
                +'sum(sectc) as n6,sum(osect) as n7,sum(ttl) as n8,sum(workerc) as n9,sum(lsect) as n10,sum(zsect) as n11,sum(asect) as n12,'
                +'sum(rsect) as n13,sum(esect) as n14 from week52 where line=:x1 and date1>=:x2 and date1<=:x3 and wday=''W'' and tshop>''''';
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
      n001.Caption:=formatfloat('0.0',fieldbyname('n8').value);
      d00101.Caption:=formatfloat('0.0',fieldbyname('n3').value);
      wc001.Caption:=formatfloat('0.0',fieldbyname('n9').value);
      l001.Caption:=formatfloat('0.0',fieldbyname('n10').value);
      z001.Caption:=formatfloat('0.0',fieldbyname('n11').value);
      a001.Caption:=formatfloat('0.0',fieldbyname('n12').value);
      r001.Caption:=formatfloat('0.0',fieldbyname('n13').value);
      e001.Caption:=formatfloat('0.0',fieldbyname('n14').value);
      if fieldbyname('n3').value>0 then dc001.Caption:=formatfloat('0.00',fieldbyname('n8').Value*100.0/fieldbyname('n3').value)
      else dc001.Caption:='0.00';
      sdf01.Caption:=formatfloat('+0.0;-0.0',fieldbyname('n3').value-fieldbyname('n1').value);
      sdf02.Caption:=formatfloat('+0.0;-0.0',fieldbyname('n3').value-fieldbyname('n2').value);
    end else begin
      o001.Caption:='0.0';
      b001.Caption:='0.0';
      d001.Caption:='0.0';
      n1001.Caption:='0.0';
      n2001.Caption:='0.0';
      o1001.Caption:='0.0';
      o2001.Caption:='0.0';
      n001.Caption:='0.0';
      d00101.Caption:='0.0';
      wc001.Caption:='0.0';
      l001.Caption:='0.0';
      z001.Caption:='0.0';
      a001.Caption:='0.0';
      r001.Caption:='0.0';
      e001.Caption:='0.0';
      dc001.Caption:='0.00';
      sdf01.Caption:='0.0';
      sdf02.Caption:='0.0';
    end;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select count(*) as cnt,sum(ottl) as n1,sum(workero) as n2,sum(csect) as n3 from week52 where date1>=:x1 and date1<=:x2 and line=:x3 and tshop>''''';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    params[2].asstring:=clientdataset3.fieldbyname('line').value;
    open;
    sdf31.Caption:=formatfloat('+0.0;-0.0',fieldbyname('n3').value-fieldbyname('n1').value);
    sdf32.Caption:=formatfloat('+0.0;-0.0',fieldbyname('n3').value-fieldbyname('n2').value);
  end;

  with clientdataset1 do begin
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

  //dcu
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select sum(ttl*100.0)/sum(csect) as dcu from week52 where date1>=:x1 and date1<=:x2 and line=:x3 and csect>0 and tshop>''''';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    params[2].asstring:=clientdataset3.fieldbyname('line').value;
    open;
    if not fieldbyname('dcu').isnull then dcu001.Caption:=formatfloat('0.00',fieldbyname('dcu').Value) else dcu001.Caption:='0.00';
  end;

  //marks001.caption:='';
end;

procedure Tfrmcurrcal.ComboBox3Enter(Sender: TObject);
begin
  combobox3.items.clear;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct pline from tblline where lactive=1';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('pline').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmcurrcal.Copyfromotherline1Click(Sender: TObject);
var
  dt1,dt2:tdatetime;
  pline,pline1:string;
begin
  screen.cursor:=crhourglass;
  try
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
  finally
    screen.cursor:=crdefault;
  end;
end;

procedure Tfrmcurrcal.DBGridEh1Columns17EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmlt=nil then frmlt:=tfrmlt.create(nil);
  frmlt.show;
end;

procedure Tfrmcurrcal.DBGridEh1Columns24EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmcurrcal_td=nil then frmcurrcal_td:=tfrmcurrcal_td.create(nil);
  frmcurrcal_td.xedit1.datafield:='def_kh1';
  frmcurrcal_td.xedit2.datafield:='def_kh2';
  frmcurrcal_td.xedit3.datafield:='def_kh3';
  frmcurrcal_td.xedit4.datafield:='def_lk';
  frmcurrcal_td.xedit5.datafield:='def_cl';
  frmcurrcal_td.show;
end;

procedure Tfrmcurrcal.DBGridEh1Columns26EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmcurrcal_td=nil then frmcurrcal_td:=tfrmcurrcal_td.create(nil);
  frmcurrcal_td.xedit1.datafield:='arr_kh1';
  frmcurrcal_td.xedit2.datafield:='arr_kh2';
  frmcurrcal_td.xedit3.datafield:='arr_kh3';
  frmcurrcal_td.xedit4.datafield:='arr_lk';
  frmcurrcal_td.xedit5.datafield:='arr_cl';
  frmcurrcal_td.xedit6.datafield:='arr_m2';
  frmcurrcal_td.show;
end;

procedure Tfrmcurrcal.DBGridEh1Columns28EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmcurrcal_td=nil then frmcurrcal_td:=tfrmcurrcal_td.create(nil);
  frmcurrcal_td.xedit1.datafield:='e2';
  frmcurrcal_td.xedit2.datafield:='f2';
  frmcurrcal_td.xedit3.datafield:='cur_kh3';
  frmcurrcal_td.xedit4.datafield:='zsect';
  frmcurrcal_td.xedit5.datafield:='cur_cl';
  frmcurrcal_td.xedit6.datafield:='cur_m2';
  frmcurrcal_td.show;
end;

procedure Tfrmcurrcal.DBGridEh1DblClick(Sender: TObject);
begin
  if dbgrideh1.SelectedIndex=26 then begin
    if frmspsect=nil then frmspsect:=tfrmspsect.Create(nil);
    frmspsect.show;
  end;
end;

procedure Tfrmcurrcal.DBGridEh1Columns16EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmccl=nil then frmccl:=tfrmccl.create(nil);
  frmccl.show;
end;

procedure Tfrmcurrcal.ppSummaryBand2BeforePrint(Sender: TObject);
var
  dt1,dt2:tdate;
  year,month,day:word;
  str1:string;
  a2,b2,c2,d2,e2,f2,g2,h2:double;
begin
  decodedate(date,year,month,day);
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(year,12,31);
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(ttl*100.0)/sum(csect) as dcu from week52 where date1>=:x1 and date1<=:x2 and csect>0';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    //if not fieldbyname('ocu').isnull then ocu002.Caption:=formatfloat('0.00',fieldbyname('ocu').Value) else ocu002.Caption:='0.00';
    if not fieldbyname('dcu').isnull then dcu002.Caption:=formatfloat('0.00',fieldbyname('dcu').Value) else dcu002.Caption:='0.00';
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(ottl) as s1,sum(csect) as s2,sum(workero) as s3 from week52 where date1>=:x1 and date1<=:x2';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    fdf01.Caption:=formatfloat('+0.0;-0.0',fieldbyname('s2').value-fieldbyname('s1').value);
    fdf02.Caption:=formatfloat('+0.0;-0.0',fieldbyname('s2').value-fieldbyname('s3').value);
  end;
  ppmemo1.Lines.Clear;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct line,date1,emarks from week52 where date1>=:x1 and date1<=:x2 and emarks>''''';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    commandtext:=commandtext+' order by line,date1';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    first;
    while not eof do begin
      ppmemo1.Lines.Add(fieldbyname('line').value+'  '+formatdatetime('yy/MM/dd',fieldbyname('date1').value)+': '+fieldbyname('emarks').value);
      application.ProcessMessages;
      next;
    end;
  end;
  ppmemo2.Lines.Clear;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct line,date1,lmemo from week52 where date1>=:x1 and date1<=:x2 and lmemo>''''';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    commandtext:=commandtext+' order by line,date1';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    first;
    while not eof do begin
      ppmemo2.Lines.Add(fieldbyname('line').value+'  '+formatdatetime('yy/MM/dd',fieldbyname('date1').value)+': '+fieldbyname('lmemo').value);
      application.ProcessMessages;
      next;
    end;
  end;
  str1:='';
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(a2) as a2,sum(b2) as b2,sum(c2) as c2,sum(d2) as d2,sum(e2) as e2,sum(f2) as f2,sum(g2) as g2,sum(h2) as h2 from week52 where date1>=:x1 and date1<=:x2';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('a2').isnull then a2:=fieldbyname('a2').value else a2:=0;
    if not fieldbyname('b2').isnull then b2:=fieldbyname('b2').value else b2:=0;
    if not fieldbyname('c2').isnull then c2:=fieldbyname('c2').value else c2:=0;
    if not fieldbyname('d2').isnull then d2:=fieldbyname('d2').value else d2:=0;
    if not fieldbyname('e2').isnull then e2:=fieldbyname('e2').value else e2:=0;
    if not fieldbyname('f2').isnull then f2:=fieldbyname('f2').value else f2:=0;
    if not fieldbyname('g2').isnull then g2:=fieldbyname('g2').value else g2:=0;
    if not fieldbyname('h2').isnull then h2:=fieldbyname('h2').value else h2:=0;
  end;
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
  tmarks01.Caption:=str1;  
end;

procedure Tfrmcurrcal.BitBtn3Click(Sender: TObject);
var
  tm:tdatetime;
  dt1,dt2:tdate;
  year,month,day:word;
begin
  screen.Cursor:=crSQLWait;
  try
    tm:=now;
    decodedate(date,year,month,day);
    if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
    if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(year,12,31);
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x0',ptinput);
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='execute procedure sp_gen_dailyqn_1(:x0,:x1,:x2,:x3,:x4,:x5)';
      params[0].asdatetime:=tm;
      params[1].asdate:=dt1;
      params[2].asdate:=dt2;
      if combobox1.text<>'KBT' then
      params[3].asstring:=combobox1.text
      else params[3].asstring:='KB';
      params[4].asstring:=combobox2.text;
      params[5].asstring:=combobox3.text;
      execute;
    end;
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='execute procedure sp_gen_dailyqn(:x1)';
      params[0].asdatetime:=tm;
      execute;
    end;
    if frmdailyqn=nil then frmdailyqn:=tfrmdailyqn.create(nil);
    with frmdailyqn.ClientDataSet3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from week52_tmp_1 where tm=:x1 order by line,date1,secto';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('date1').isnull then begin
        frmdailyqn.date01.Caption:=dateedit1.Text;
        frmdailyqn.date02.Caption:=dateedit2.Text;
        frmdailyqn.line01.Caption:=combobox3.Text;
        frmdailyqn.tshop01.Caption:=combobox2.text;//tshop;
        if pos('test',application.ExeName)>0 then frmdailyqn.tst01.Caption:='- Test' else frmdailyqn.tst01.caption:='';
        frmdailyqn.ppReport2.Print;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmcurrcal.BitBtn1Click(Sender: TObject);
begin
  if frmpoption=nil then frmpoption:=tfrmpoption.create(nil);
  if (combobox2.text>'') or (combobox3.text>'') then
  frmpoption.xh1.ItemIndex:=0
  else if combobox1.text>'' then frmpoption.xh1.ItemIndex:=1;
  frmpoption.Label1.Caption:='Cur_2';
  frmpoption.Show;
end;

procedure Tfrmcurrcal.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport3.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcurrcal.ppDetailBand3BeforePrint(Sender: TObject);
begin
  if clientdataset3.FieldByName('csect').isnull then ddcu01.Caption:='--'
  else begin
    if clientdataset3.fieldbyname('csect').value>0 then
    ddcu01.Caption:=formatfloat('0.00',clientdataset3.fieldbyname('ttl').value*100.0/clientdataset3.fieldbyname('csect').value)
    else ddcu01.Caption:='--';
  end;
  diff01.Caption:=formatfloat('+0.0;-0.0',clientdataset3.fieldbyname('csect').value-clientdataset3.fieldbyname('ottl').value);
  diff02.Caption:=formatfloat('+0.0;-0.0',clientdataset3.fieldbyname('csect').value-clientdataset3.fieldbyname('workero').value);
  with clientdataset1 do begin
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

procedure Tfrmcurrcal.ppGroupFooterBand2BeforePrint(Sender: TObject);
var
  dt1,dt2:tdate;
begin
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(2006,1,1);
  if dateedit2.date>0 then begin
   if dateedit2.date>date then dt2:=date
   else dt2:=dateedit2.date;
  end else dt2:=date;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(ttl*100.0)/sum(csect) as dcu from week52 where date1>=:x1 and date1<=:x2 and csect>0 and tshop='''+clientdataset3.fieldbyname('tshop').value+'''';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('dcu').isnull then sdcu01.Caption:=formatfloat('0.00',fieldbyname('dcu').Value) else sdcu01.Caption:='0.00';
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(ottl) as s1,sum(csect) as s2,sum(workero) as s3 from week52 where date1>=:x1 and date1<=:x2 and tshop='''+clientdataset3.fieldbyname('tshop').value+'''';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    diff11.Caption:=formatfloat('+0.0;-0.0',fieldbyname('s2').value-fieldbyname('s1').value);
    diff12.Caption:=formatfloat('+0.0;-0.0',fieldbyname('s2').value-fieldbyname('s3').value);
  end;
end;

procedure Tfrmcurrcal.ppSummaryBand3BeforePrint(Sender: TObject);
var
  dt1,dt2:tdate;
begin
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(2006,1,1);
  if dateedit2.date>0 then begin
   if dateedit2.date>date then dt2:=date
   else dt2:=dateedit2.date;
  end else dt2:=date;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(ottl) as s1,sum(csect) as s2,sum(workero) as s3 from week52 where date1>=:x1 and date1<=:x2 and tshop>''''';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    diff21.Caption:=formatfloat('+0.0;-0.0',fieldbyname('s2').value-fieldbyname('s1').value);
    diff22.Caption:=formatfloat('+0.0;-0.0',fieldbyname('s2').value-fieldbyname('s3').value);
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(ttl*100.0)/sum(csect) as dcu from week52 where date1>=:x1 and date1<=:x2 and csect>0 and tshop>''''';
    if combobox3.Text>'' then commandtext:=commandtext+' and line='''+combobox3.text+'''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('dcu').isnull then begin
      adcu01.Caption:=formatfloat('0.00',fieldbyname('dcu').Value);
    end else begin
      adcu01.Caption:='0.00';
    end;
  end;
end;

procedure Tfrmcurrcal.BitBtn5Click(Sender: TObject);
begin
  if frmcalendarchart=nil then frmcalendarchart:=tfrmcalendarchart.create(nil);
  frmcalendarchart.show;
end;

procedure Tfrmcurrcal.pre_byline_dtl;
var
  sj1,sj2,sj3,sj4,sj5,sj6,sj7,sj8,sj9,sj10:string;
begin
  screen.cursor:=crHourglass;
    atm:=now;
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x0',ptinput);
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='execute procedure sp_gen_dailyqn_1(:x0,:x1,:x2,:x3,:x4,:x5)';
      params[0].asdatetime:=atm;
      params[1].asdate:=dateedit1.date;
      params[2].asdate:=dateedit2.date;
      if combobox1.text<>'KBT' then
      params[3].asstring:=combobox1.text
      else params[3].asstring:='KB';
      params[4].asstring:=combobox2.text;
      params[5].asstring:=combobox3.text;
      execute;
    end;
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='execute procedure sp_gen_dailyqn(:x1)';
      params[0].asdatetime:=atm;
      execute;
    end;
  if week52.Active then begin
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_shift where tplant='''+week52.fieldbyname('tplant').value+''' order by sftc';
      open;
      first;
      while not eof do begin
        if (uppercase(fieldbyname('sftc').value)='O1') or (uppercase(fieldbyname('sftc').value)='KB_O1') then begin
          sj01.Caption:=formatdatetime('hh:nn',fieldbyname('st01').value)+'   To  '+formatdatetime('hh:nn',fieldbyname('et02').value);
          if not fieldbyname('et04').isnull then begin
            if not fieldbyname('st03').isnull then
              sj03.Caption:=formatdatetime('hh:nn',fieldbyname('st03').value)+'   To  '+formatdatetime('hh:nn',fieldbyname('et04').value)
            else sj03.Caption:=formatdatetime('hh:nn',fieldbyname('st03').value)+'   To   ';
          end else begin
            if not fieldbyname('st03').isnull then
            sj03.Caption:=formatdatetime('hh:nn',fieldbyname('st03').value)+'   To  '
            else sj03.Caption:='  To  ';
          end;
          if not fieldbyname('lts01').isnull then begin
            if not fieldbyname('lte01').isnull then
              sj05.Caption:=formatdatetime('hh:nn',fieldbyname('lts01').value)+'   To  '+formatdatetime('hh:nn',fieldbyname('lte01').value)
            else sj05.Caption:=formatdatetime('hh:nn',fieldbyname('lts01').value)+'   To   ';
          end else sj05.Caption:='   To   ';
        end else if (uppercase(fieldbyname('sftc').value)='O2') or (uppercase(fieldbyname('sftc').value)='KB_O2') then begin
          sj001.Caption:=formatdatetime('hh:nn',fieldbyname('st01').value)+'   To  '+formatdatetime('hh:nn',fieldbyname('et02').value);
          if not fieldbyname('et04').isnull then begin
            if not fieldbyname('st03').isnull then
              sj03.Caption:=formatdatetime('hh:nn',fieldbyname('st03').value)+'   To  '+formatdatetime('hh:nn',fieldbyname('et04').value)
            else sj03.Caption:=formatdatetime('hh:nn',fieldbyname('st03').value)+'   To   ';
          end else begin
            if not fieldbyname('st03').isnull then
            sj03.Caption:=formatdatetime('hh:nn',fieldbyname('st03').value)+'   To  '
            else sj03.Caption:='  To  ';
          end;
          if not fieldbyname('lts01').isnull then begin
            if not fieldbyname('lte01').isnull then
              sj05.Caption:=formatdatetime('hh:nn',fieldbyname('lts01').value)+'   To  '+formatdatetime('hh:nn',fieldbyname('lte01').value)
            else sj05.Caption:=formatdatetime('hh:nn',fieldbyname('lts01').value)+'   To   ';
          end else sj05.Caption:='   To   ';
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
      commandtext:=commandtext+' order by line,date1';
      if dateedit1.date>0 then params.ParamByName('x1').AsDate:=dateedit1.date;
      if dateedit2.date>0 then params.ParamByName('x2').AsDate:=dateedit2.date;
      open;
    end;
    date01.Caption:=dateedit1.Text;
    date02.Caption:=dateedit2.Text;
    fty001.Caption:=clientdataset3.fieldbyname('tplant').value;
    line01.Caption:=combobox3.Text;
    tshop01.Caption:=clientdataset3.fieldbyname('tshop').value;
    if pos('test',application.ExeName)>0 then tst01.Caption:='- Test' else tst01.caption:='';
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

procedure Tfrmcurrcal.pre_byline_sum;
var
  dt1,dt2:tdate;
begin
  screen.Cursor:=crHourglass;
  try
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(2006,1,1);
  if dateedit2.date>0 then begin
   if dateedit2.date>date then dt2:=date
   else dt2:=dateedit2.date;
  end else dt2:=date;
  dateedit2.Date:=dt2;
  with clientdataset3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct tplant,tshop,line,sum(ottl) as ottl,sum(csect) as csect,sum(sectt) as sectt,sum(sectt1) as sectt1,'
                +'sum(sectc) as sectc,sum(osect) as osect,sum(ttl) as ttl,sum(lsect) as lsect,sum(zsect) as zsect,sum(asect) as asect,'
                +'sum(rsect) as rsect,sum(esect) as esect,sum(workero) as workero,sum(workerc) as workerc from week52 where date1>=:x1 and date1<=:x2 and tshop>''''';
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
      wks001.Caption:=clientdataset3.fieldbyname('tshop').value;
      fty002.Caption:=clientdataset3.fieldbyname('tplant').value;
      dt001.Caption:=formatdatetime('yyyy/MM/dd',dt1);
      dt002.Caption:=formatdatetime('yyyy/MM/dd',dt2);
      ppReport3.Print;
    end;
  end;
  finally
  screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmcurrcal.pre_bywks_dtl;
var
  dt1,dt2:tdate;
begin
  screen.Cursor:=crHourglass;
  try
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(2006,1,1);
  if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=encodedate(2020,12,31);
  if combobox1.text>'' then begin
    if week52.Active then begin
      if frmcurrcal_sum=nil then frmcurrcal_sum:=tfrmcurrcal_sum.Create(nil);
      with frmcurrcal_sum.ClientDataSet3 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        commandtext:='select distinct tplant,tshop,date1,wkno,count(line) as line,sum(ottl) as ottl,sum(workero) as workero,sum(csect) as csect,'
                    +'sum(sectt) as sectt,sum(sectt1) as sectt1,sum(sectc) as sectc,sum(osect) as osect,sum(ttl) as ttl,sum(lsect) as lsect,sum(zsect) as zsect,'
                    +'sum(asect) as asect,sum(rsect) as rsect,sum(esect) as esect,sum(workero) as workero,sum(workerc) as workerc from week52 '
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
          frmcurrcal_sum.date01.Caption:=dateedit1.Text;
          frmcurrcal_sum.date02.Caption:=dateedit2.Text;
          frmcurrcal_sum.fty001.Caption:=frmcurrcal_sum.clientdataset3.fieldbyname('tplant').value;
          frmcurrcal_sum.ppReport2.Print;
        end;
      end;
    end;
  end;
  finally
  screen.cursor:=crDefault;
  end;
end;

procedure Tfrmcurrcal.pre_bywks_sum;
var
  dt1,dt2:tdate;
begin
  screen.Cursor:=crHourglass;
  try
  if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=encodedate(2006,1,1);
  if dateedit2.date>0 then begin
   if dateedit2.date>date then dt2:=date
   else dt2:=dateedit2.date;
  end else dt2:=date;
  dateedit2.Date:=dt2;
  if frmcurrcal_sum=nil then frmcurrcal_sum:=tfrmcurrcal_sum.Create(nil);
  with frmcurrcal_sum.clientdataset3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct tplant,tshop,count(distinct line) as line,sum(ottl) as ottl,sum(csect) as csect,sum(sectt) as sectt,sum(sectt1) as sectt1,'
                +'sum(sectc) as sectc,sum(osect) as osect,sum(ttl) as ttl,sum(lsect) as lsect,sum(zsect) as zsect,sum(asect) as asect,'
                +'sum(rsect) as rsect,sum(esect) as esect,sum(workero) as workero,sum(workerc) as workerc from week52 where date1>=:x1 and date1<=:x2 and tshop>'''''
                +' and line in (select pline from tblline where lactive=1 and week52.tplant=tblline.tplant)';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    commandtext:=commandtext+' group by tplant,tshop order by tshop,tplant';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('tplant').isnull then begin
      frmcurrcal_sum.fty002.Caption:=frmcurrcal_sum.clientdataset3.fieldbyname('tplant').value;
      frmcurrcal_sum.dt001.Caption:=formatdatetime('yyyy/MM/dd',dt1);
      frmcurrcal_sum.dt002.Caption:=formatdatetime('yyyy/MM/dd',dt2);
      frmcurrcal_sum.ppReport3.Print;
    end;
  end;
  finally
  screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmcurrcal.ppGroupFooterBand3BeforePrint(Sender: TObject);
begin
  with clientdataset4 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select * from week52_tmp_1 where line=:x1 and date1=:x2 and tm=:x3 order by line,date1,secto';
    params[0].asstring:=clientdataset3.fieldbyname('line').value;
    params[1].asdate:=clientdataset3.fieldbyname('date1').value;
    params[2].asdatetime:=atm;
    open;
  end;
end;

procedure Tfrmcurrcal.ppDetailBand4BeforePrint(Sender: TObject);
begin
  srdif01.Caption:=formatfloat('+0.0;-0.0',clientdataset4.fieldbyname('csect').value-clientdataset4.fieldbyname('ottl').value);
  srdif02.Caption:=formatfloat('+0.0;-0.0',clientdataset4.fieldbyname('csect').value-clientdataset4.fieldbyname('workero').value);
end;

procedure Tfrmcurrcal.BitBtn6Click(Sender: TObject);
begin
  if frmcalnotepad=nil then frmcalnotepad:=tfrmcalnotepad.create(nil);
  frmcalnotepad.DBMemo1.DataSource:=datasource1;
  frmcalnotepad.show;
end;

procedure Tfrmcurrcal.SpeedButton2Click(Sender: TObject);
begin
  with week52 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select a.* from week52 a where a.date1>=:x1 and a.date1<=:x2 and a.tshop>'''' and a.lactive=1';
    if combobox3.Text>'' then commandtext:=commandtext+' and a.line='''+combobox3.text+'''';
    if combobox1.text>'' then commandtext:=commandtext+' and a.tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
  end;
end;

procedure Tfrmcurrcal.ppReport2BeforePrint(Sender: TObject);
begin
  if clientdataset3.fieldbyname('tplant').value='KB' then begin
    x001.Visible:=false;x002.Visible:=false;x003.Visible:=false;x004.Visible:=false;x005.Visible:=false;
    o2001.Visible:=false;o2002.Visible:=false;o2003.Visible:=false;
  end else begin
    x001.Visible:=true;x002.Visible:=true;x003.Visible:=true;x004.Visible:=true;x005.Visible:=true;
    o2001.Visible:=true;o2002.Visible:=true;o2003.Visible:=true;
  end;
end;

procedure Tfrmcurrcal.ppReport3BeforePrint(Sender: TObject);
begin
  if clientdataset3.fieldbyname('tplant').value='KB' then begin
    y001.Visible:=false;y002.Visible:=false;y003.Visible:=false;y004.Visible:=false;
  end else begin
    y001.Visible:=true;y002.Visible:=true;y003.Visible:=true;y004.Visible:=true;
  end;
end;

procedure Tfrmcurrcal.FormCreate(Sender: TObject);
begin
  siLang1.Language:=frmmain.ComboBox2.text;

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
          params[2].AsString:='Current LW Calendar';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
        with dataset2 do begin
          close;
          sql.text:='insert into [Sys.Authority].dbo.sysuseinfo(menuid,userid,starttime) values(:x1,:x2,:x3)';
          parameters[0].Value:='LWPM - Current LW Calendar';
          parameters[1].value:=frmmain.combobox1.text;
          parameters[2].Value:=now;
          execsql;
        end;
end;

procedure Tfrmcurrcal.FormDestroy(Sender: TObject);
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
