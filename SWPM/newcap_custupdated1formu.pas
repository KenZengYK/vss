unit newcap_custupdated1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppVar,
  ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient,
  StdCtrls, ExtCtrls, Spin, DateUtils, ppViewr, ppParameter;

type
  Tfrmnewcap_custupdated1 = class(TForm)
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    lbl001: TppLabel;
    ppLabel18: TppLabel;
    yr001: TppLabel;
    ppLabel20: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel21: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLabel25: TppLabel;
    ppLine43: TppLine;
    title002: TppLabel;
    title003: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText31: TppDBText;
    ppLine50: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLabel23: TppLabel;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppLine49: TppLine;
    ppLabel24: TppLabel;
    line02: TppLine;
    line03: TppLine;
    line04: TppLine;
    line08: TppLine;
    line05: TppLine;
    line06: TppLine;
    line07: TppLine;
    line01: TppLine;
    x001: TppLabel;
    x002: TppLabel;
    x006: TppLabel;
    x007: TppLabel;
    x009: TppLabel;
    x008: TppLabel;
    x010: TppLabel;
    x011: TppLabel;
    x012: TppLabel;
    x013: TppLabel;
    x003: TppLabel;
    x004: TppLabel;
    x005: TppLabel;
    ppShape3: TppShape;
    ppLabel26: TppLabel;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    a001: TppLabel;
    a002: TppLabel;
    a003: TppLabel;
    a004: TppLabel;
    a005: TppLabel;
    a006: TppLabel;
    a007: TppLabel;
    a008: TppLabel;
    a009: TppLabel;
    a010: TppLabel;
    a011: TppLabel;
    a012: TppLabel;
    a013: TppLabel;
    b001: TppLabel;
    b002: TppLabel;
    b003: TppLabel;
    b004: TppLabel;
    b005: TppLabel;
    b006: TppLabel;
    b007: TppLabel;
    b008: TppLabel;
    b009: TppLabel;
    b010: TppLabel;
    b011: TppLabel;
    b012: TppLabel;
    b013: TppLabel;
    c001: TppLabel;
    e001: TppLabel;
    e002: TppLabel;
    c002: TppLabel;
    e003: TppLabel;
    c003: TppLabel;
    e004: TppLabel;
    c004: TppLabel;
    e005: TppLabel;
    c005: TppLabel;
    e006: TppLabel;
    c006: TppLabel;
    e007: TppLabel;
    c007: TppLabel;
    e008: TppLabel;
    c008: TppLabel;
    e009: TppLabel;
    c009: TppLabel;
    e010: TppLabel;
    c010: TppLabel;
    e011: TppLabel;
    c011: TppLabel;
    e012: TppLabel;
    c012: TppLabel;
    e013: TppLabel;
    c013: TppLabel;
    tips001: TppLabel;
    a014: TppLabel;
    b014: TppLabel;
    c014: TppLabel;
    e014: TppLabel;
    x014: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLine31: TppLine;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLabel22: TppLabel;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppLine40: TppLine;
    pt002: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape2: TppShape;
    ppDBText32: TppDBText;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    pt001: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine1: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine2: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel19: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    lbl002: TppLabel;
    lbl003: TppLabel;
    ppLine17: TppLine;
    ppLine51: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine18: TppLine;
    Query3: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    Query4: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    Query5: TClientDataSet;
    Label1: TLabel;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    rg1: TRadioGroup;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    xh1: TRadioGroup;
    xh2: TRadioGroup;
    ax01: TppLabel;
    ay01: TppLabel;
    bx01: TppLabel;
    by01: TppLabel;
    cx01: TppLabel;
    cy01: TppLabel;
    ex01: TppLabel;
    ey01: TppLabel;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    tx01: TppLabel;
    ty01: TppLabel;
    ax02: TppLabel;
    ay02: TppLabel;
    bx02: TppLabel;
    by02: TppLabel;
    cx02: TppLabel;
    cy02: TppLabel;
    ex02: TppLabel;
    ey02: TppLabel;
    tx02: TppLabel;
    ty02: TppLabel;
    ax03: TppLabel;
    ay03: TppLabel;
    bx03: TppLabel;
    by03: TppLabel;
    cx03: TppLabel;
    cy03: TppLabel;
    ex03: TppLabel;
    ey03: TppLabel;
    tx03: TppLabel;
    ty03: TppLabel;
    ax04: TppLabel;
    ay04: TppLabel;
    bx04: TppLabel;
    by04: TppLabel;
    cx04: TppLabel;
    cy04: TppLabel;
    ex04: TppLabel;
    ey04: TppLabel;
    tx04: TppLabel;
    ty04: TppLabel;
    ax05: TppLabel;
    ay05: TppLabel;
    bx05: TppLabel;
    by05: TppLabel;
    cx05: TppLabel;
    cy05: TppLabel;
    ex05: TppLabel;
    ey05: TppLabel;
    tx05: TppLabel;
    ty05: TppLabel;
    ax06: TppLabel;
    ay06: TppLabel;
    bx06: TppLabel;
    by06: TppLabel;
    cx06: TppLabel;
    cy06: TppLabel;
    ex06: TppLabel;
    ey06: TppLabel;
    tx06: TppLabel;
    ty06: TppLabel;
    ax07: TppLabel;
    ay07: TppLabel;
    bx07: TppLabel;
    by07: TppLabel;
    cx07: TppLabel;
    cy07: TppLabel;
    ex07: TppLabel;
    ey07: TppLabel;
    tx07: TppLabel;
    ty07: TppLabel;
    ax08: TppLabel;
    ay08: TppLabel;
    bx08: TppLabel;
    by08: TppLabel;
    cx08: TppLabel;
    cy08: TppLabel;
    ex08: TppLabel;
    ey08: TppLabel;
    tx08: TppLabel;
    ty08: TppLabel;
    ax09: TppLabel;
    ay09: TppLabel;
    bx09: TppLabel;
    by09: TppLabel;
    cx09: TppLabel;
    cy09: TppLabel;
    ex09: TppLabel;
    ey09: TppLabel;
    tx09: TppLabel;
    ty09: TppLabel;
    ax10: TppLabel;
    ay10: TppLabel;
    bx10: TppLabel;
    by10: TppLabel;
    cx10: TppLabel;
    cy10: TppLabel;
    ex10: TppLabel;
    ey10: TppLabel;
    tx10: TppLabel;
    ty10: TppLabel;
    ax11: TppLabel;
    ay11: TppLabel;
    bx11: TppLabel;
    by11: TppLabel;
    cx11: TppLabel;
    cy11: TppLabel;
    ex11: TppLabel;
    ey11: TppLabel;
    tx11: TppLabel;
    ty11: TppLabel;
    ax12: TppLabel;
    ay12: TppLabel;
    bx12: TppLabel;
    by12: TppLabel;
    cx12: TppLabel;
    cy12: TppLabel;
    ex12: TppLabel;
    ey12: TppLabel;
    tx12: TppLabel;
    ty12: TppLabel;
    ppLine63: TppLine;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLine64: TppLine;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel17: TppLabel;
    otitle001: TppLabel;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    y001: TppLabel;
    y002: TppLabel;
    y006: TppLabel;
    y007: TppLabel;
    y009: TppLabel;
    y008: TppLabel;
    y010: TppLabel;
    y011: TppLabel;
    y012: TppLabel;
    y013: TppLabel;
    y003: TppLabel;
    y004: TppLabel;
    y005: TppLabel;
    y014: TppLabel;
    otitle002: TppLabel;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    z001: TppLabel;
    z002: TppLabel;
    z006: TppLabel;
    z007: TppLabel;
    z009: TppLabel;
    z008: TppLabel;
    z010: TppLabel;
    z011: TppLabel;
    z012: TppLabel;
    z013: TppLabel;
    z003: TppLabel;
    z004: TppLabel;
    z005: TppLabel;
    z014: TppLabel;
    otitle003: TppLabel;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    u001: TppLabel;
    u002: TppLabel;
    u006: TppLabel;
    u007: TppLabel;
    u009: TppLabel;
    u008: TppLabel;
    u010: TppLabel;
    u011: TppLabel;
    u012: TppLabel;
    u013: TppLabel;
    u003: TppLabel;
    u004: TppLabel;
    u005: TppLabel;
    u014: TppLabel;
    otitle004: TppLabel;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    v001: TppLabel;
    v002: TppLabel;
    v006: TppLabel;
    v007: TppLabel;
    v009: TppLabel;
    v008: TppLabel;
    v010: TppLabel;
    v011: TppLabel;
    v012: TppLabel;
    v013: TppLabel;
    v003: TppLabel;
    v004: TppLabel;
    v005: TppLabel;
    v014: TppLabel;
    otitle005: TppLabel;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    w001: TppLabel;
    w002: TppLabel;
    w006: TppLabel;
    w007: TppLabel;
    w009: TppLabel;
    w008: TppLabel;
    w010: TppLabel;
    w011: TppLabel;
    w012: TppLabel;
    w013: TppLabel;
    w003: TppLabel;
    w004: TppLabel;
    w005: TppLabel;
    w014: TppLabel;
    otitle006: TppLabel;
    tips002: TppLabel;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine112: TppLine;
    r001: TppLabel;
    r002: TppLabel;
    r006: TppLabel;
    r007: TppLabel;
    r009: TppLabel;
    r008: TppLabel;
    r010: TppLabel;
    r011: TppLabel;
    r012: TppLabel;
    r013: TppLabel;
    r003: TppLabel;
    r004: TppLabel;
    r005: TppLabel;
    r014: TppLabel;
    otitle007: TppLabel;
    otle001: TppLabel;
    otle002: TppLabel;
    tips003: TppLabel;
    ppLabel49: TppLabel;
    GroupBox2: TGroupBox;
    xh3: TRadioGroup;
    xh4: TRadioGroup;
    xh5: TRadioGroup;
    title001: TppLabel;
    title004: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand4BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_custupdated1: Tfrmnewcap_custupdated1;

implementation

uses mainformu, newcap_custupdatedformu;

{$R *.dfm}

{ Tfrmnewcap_custupdated1 }

procedure Tfrmnewcap_custupdated1.ppGroupFooterBand1BeforePrint(
  Sender: TObject);
var
  ttl:integer;
begin
  //lbl002 & lbl003
  ttl:=0;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(ttl) as x1 from tbl_cap_custqty where tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then ttl:=fieldbyname('x1').value;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(ttl) as x1 from tbl_cap_custqty where tm=:x1 and cust='''+query2.fieldbyname('cust').value+'''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then begin
      lbl002.Caption:=formatfloat('#,0',fieldbyname('x1').value);
      lbl003.Caption:=formatfloat('#0.00',fieldbyname('x1').value*100.00/ttl);
    end else begin
      lbl002.Caption:='0';
      lbl003.Caption:='0.00';
    end;
  end;
end;

procedure Tfrmnewcap_custupdated1.ppGroupFooterBand3BeforePrint(
  Sender: TObject);
var
  ttl:integer;
begin
  ttl:=0;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(ttl) as x1 from tbl_cap_custqty where tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then ttl:=fieldbyname('x1').value;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(ttl) as x1 from tbl_cap_custqty where tm=:x1 and tplant='''+query3.fieldbyname('tplant').value+'''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then begin
      pt002.Caption:=formatfloat('#0.00',fieldbyname('x1').value*100.00/ttl);
    end else begin
      pt002.Caption:='0.00';
    end;
  end;
end;

procedure Tfrmnewcap_custupdated1.ppGroupFooterBand4BeforePrint(
  Sender: TObject);
var
  ttl:integer;
begin
  ttl:=0;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(ttl) as x1 from tbl_cap_custqty where tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then ttl:=fieldbyname('x1').value;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(ttl) as x1 from tbl_cap_custqty where tm=:x1 and grp='''+query2.fieldbyname('grp').value+'''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then begin
      pt001.Caption:=formatfloat('#0.00',fieldbyname('x1').value*100.00/ttl);
    end else begin
      pt001.Caption:='0.00';
    end;
  end;
end;

procedure Tfrmnewcap_custupdated1.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmnewcap_custupdated1.ppSummaryBand2BeforePrint(
  Sender: TObject);
var
  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13:double;
  y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13:double;
  z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13:double;
  oa01,oa02,oa03,oa04,oa05,oa06,oa07,oa08,oa09,oa10,oa11,oa12:double;
  ob01,ob02,ob03,ob04,ob05,ob06,ob07,ob08,ob09,ob10,ob11,ob12:double;
  oc01,oc02,oc03,oc04,oc05,oc06,oc07,oc08,oc09,oc10,oc11,oc12:double;
  oe01,oe02,oe03,oe04,oe05,oe06,oe07,oe08,oe09,oe10,oe11,oe12:double;
  ttl:integer;
  pts01,ptk01:double;
begin
  ttl:=0;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(ttl) as x1 from tbl_cap_custqty where tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then ttl:=fieldbyname('x1').value;
  end;
  //--
  {
  line09.Visible:=false; line10.Visible:=false; line11.Visible:=false; line12.Visible:=false;
  line13.Visible:=false; line14.Visible:=false; line15.Visible:=false; pttl001.Visible:=false;
  p001.Caption:='--'; p002.Caption:='--'; p003.Caption:='--'; p004.Caption:='--'; p005.Caption:='--';
  p006.Caption:='--'; p007.Caption:='--'; p008.Caption:='--'; p009.Caption:='--'; p010.Caption:='--';
  p011.Caption:='--'; p012.Caption:='--'; p013.Caption:='';
  p001.Visible:=false; p002.Visible:=false; p003.Visible:=false; p004.Visible:=false; p005.Visible:=false; p006.Visible:=false;
  p007.Visible:=false; p008.Visible:=false; p009.Visible:=false; p010.Visible:=false; p011.Visible:=false; p012.Visible:=false;

  line01.Visible:=false; line02.Visible:=false; line03.Visible:=false; line04.Visible:=false;
  line05.Visible:=false; line06.Visible:=false; line07.Visible:=false; line08.Visible:=false;
  }
  if xh2.ItemIndex>=0 then begin
    otitle001.Caption:='2. Qty Diff on STD time of Grp A Vs Grp B *(A-B) ';
    otitle002.Caption:='1. Qty of Sales Proj''s outstanding of Grp A''s time ';
    otitle003.Caption:='2. % of Sales Proj''s outstanding of Grp A''s time ';
    otitle004.Caption:='3. Qty of RWO of Grp A''s time ';
    otitle005.Caption:='5. Qty of Sales Projection on Grp A''s time ';
    otitle006.Caption:='4. Qty of Level-off on Grp A''s time ';
    otitle007.Caption:='1. Qty on STD time of Grp B (for ref) ';
    otle001.Caption:='A) Qty on Grp B time vs Grp A time ';
    otle002.Caption:='B) Qty on Grp A''s time on different aspect ';
  end else if xh4.ItemIndex>=0 then begin
    otitle001.Caption:='2. Qty Diff on STD time of Grp B Vs Grp A *(B-A) ';
    otitle002.Caption:='1. Qty of Sales Proj''s outstanding of Grp B''s time ';
    otitle003.Caption:='2. % of Sales Proj''s outstanding of Grp B''s time ';
    otitle004.Caption:='3. Qty of RWO of Grp B''s time ';
    otitle005.Caption:='5. Qty of Sales Projection on Grp B''s time ';
    otitle006.Caption:='4. Qty of Level-off on Grp B''s time ';
    otitle007.Caption:='1. Qty on STD time of Grp A (for ref) ';
    otle001.Caption:='A) Qty on Grp A time vs Grp B time ';
    otle002.Caption:='B) Qty on Grp B''s time on different aspect ';
  end;
  x001.Caption:=''; x002.Caption:=''; x003.Caption:=''; x004.Caption:=''; x005.Caption:='';
  x006.Caption:=''; x007.Caption:=''; x008.Caption:=''; x009.Caption:=''; x010.Caption:='';
  x011.Caption:=''; x012.Caption:=''; x013.Caption:=''; x014.Caption:='';
  y001.Caption:=''; y002.Caption:=''; y003.Caption:=''; y004.Caption:=''; y005.Caption:='';
  y006.Caption:=''; y007.Caption:=''; y008.Caption:=''; y009.Caption:=''; y010.Caption:='';
  y011.Caption:=''; y012.Caption:=''; y013.Caption:=''; y014.Caption:='';
  z001.Caption:=''; z002.Caption:=''; z003.Caption:=''; z004.Caption:=''; z005.Caption:='';
  z006.Caption:=''; z007.Caption:=''; z008.Caption:=''; z009.Caption:=''; z010.Caption:='';
  z011.Caption:=''; z012.Caption:=''; z013.Caption:=''; z014.Caption:='';
  u001.Caption:=''; u002.Caption:=''; u003.Caption:=''; u004.Caption:=''; u005.Caption:='';
  u006.Caption:=''; u007.Caption:=''; u008.Caption:=''; u009.Caption:=''; u010.Caption:='';
  u011.Caption:=''; u012.Caption:=''; u013.Caption:=''; u014.Caption:='';
  v001.Caption:=''; v002.Caption:=''; v003.Caption:=''; v004.Caption:=''; v005.Caption:='';
  v006.Caption:=''; v007.Caption:=''; v008.Caption:=''; v009.Caption:=''; v010.Caption:='';
  v011.Caption:=''; v012.Caption:=''; v013.Caption:=''; v014.Caption:='';
  w001.Caption:=''; w002.Caption:=''; w003.Caption:=''; w004.Caption:=''; w005.Caption:='';
  w006.Caption:=''; w007.Caption:=''; w008.Caption:=''; w009.Caption:=''; w010.Caption:='';
  w011.Caption:=''; w012.Caption:=''; w013.Caption:=''; w014.Caption:='';
  r001.Caption:=''; r002.Caption:=''; r003.Caption:=''; r004.Caption:=''; r005.Caption:='';
  r006.Caption:=''; r007.Caption:=''; r008.Caption:=''; r009.Caption:=''; r010.Caption:='';
  r011.Caption:=''; r012.Caption:=''; r013.Caption:=''; r014.Caption:='';
  tips001.Caption:='Notepad: -  ';
  //if rg1.ItemIndex=1 then begin
  if ((xh1.ItemIndex>=0) or (xh2.ItemIndex>=0) or ((xh3.ItemIndex>=0) and (xh3.ItemIndex<>4) and (xh3.ItemIndex<>5)) or (xh4.ItemIndex>=0)) then begin
    if ((combobox1.text='') or (combobox1.text='ALL')) then begin
      //line01.Visible:=true; line02.Visible:=true; line03.Visible:=true; line04.Visible:=true;
      //line05.Visible:=true; line06.Visible:=true; line07.Visible:=true; line08.Visible:=true;
      with query5 do begin
        close;
        params.clear;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                  +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from tbl_cap_custqty_vs where tm=:x1';
        params[0].asdatetime:=query2.fieldbyname('tm').value;
        open;
        if not fieldbyname('m1').isnull then x1:=fieldbyname('m1').value;
        if not fieldbyname('m2').isnull then x2:=fieldbyname('m2').value;
        if not fieldbyname('m3').isnull then x3:=fieldbyname('m3').value;
        if not fieldbyname('m4').isnull then x4:=fieldbyname('m4').value;
        if not fieldbyname('m5').isnull then x5:=fieldbyname('m5').value;
        if not fieldbyname('m6').isnull then x6:=fieldbyname('m6').value;
        if not fieldbyname('m7').isnull then x7:=fieldbyname('m7').value;
        if not fieldbyname('m8').isnull then x8:=fieldbyname('m8').value;
        if not fieldbyname('m9').isnull then x9:=fieldbyname('m9').value;
        if not fieldbyname('m10').isnull then x10:=fieldbyname('m10').value;
        if not fieldbyname('m11').isnull then x11:=fieldbyname('m11').value;
        if not fieldbyname('m12').isnull then x12:=fieldbyname('m12').value;
        if not fieldbyname('ttl').isnull then x13:=fieldbyname('ttl').value;
      end;
      r001.Caption:=formatfloat('#,0',x1);
      r002.Caption:=formatfloat('#,0',x2);
      r003.Caption:=formatfloat('#,0',x3);
      r004.Caption:=formatfloat('#,0',x4);
      r005.Caption:=formatfloat('#,0',x5);
      r006.Caption:=formatfloat('#,0',x6);
      r007.Caption:=formatfloat('#,0',x7);
      r008.Caption:=formatfloat('#,0',x8);
      r009.Caption:=formatfloat('#,0',x9);
      r010.Caption:=formatfloat('#,0',x10);
      r011.Caption:=formatfloat('#,0',x11);
      r012.Caption:=formatfloat('#,0',x12);
      r013.Caption:=formatfloat('#,0',x13);
      with query5 do begin
        close;
        params.clear;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                  +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from tbl_cap_custqty where tm=:x1';
        params[0].asdatetime:=query2.fieldbyname('tm').value;
        open;
        if not fieldbyname('m1').isnull then y1:=fieldbyname('m1').value;
        if not fieldbyname('m2').isnull then y2:=fieldbyname('m2').value;
        if not fieldbyname('m3').isnull then y3:=fieldbyname('m3').value;
        if not fieldbyname('m4').isnull then y4:=fieldbyname('m4').value;
        if not fieldbyname('m5').isnull then y5:=fieldbyname('m5').value;
        if not fieldbyname('m6').isnull then y6:=fieldbyname('m6').value;
        if not fieldbyname('m7').isnull then y7:=fieldbyname('m7').value;
        if not fieldbyname('m8').isnull then y8:=fieldbyname('m8').value;
        if not fieldbyname('m9').isnull then y9:=fieldbyname('m9').value;
        if not fieldbyname('m10').isnull then y10:=fieldbyname('m10').value;
        if not fieldbyname('m11').isnull then y11:=fieldbyname('m11').value;
        if not fieldbyname('m12').isnull then y12:=fieldbyname('m12').value;
        if not fieldbyname('ttl').isnull then y13:=fieldbyname('ttl').value;
      end;
      x001.Caption:=formatfloat('#,0',y1-x1);
      x002.Caption:=formatfloat('#,0',y2-x2);
      x003.Caption:=formatfloat('#,0',y3-x3);
      x004.Caption:=formatfloat('#,0',y4-x4);
      x005.Caption:=formatfloat('#,0',y5-x5);
      x006.Caption:=formatfloat('#,0',y6-x6);
      x007.Caption:=formatfloat('#,0',y7-x7);
      x008.Caption:=formatfloat('#,0',y8-x8);
      x009.Caption:=formatfloat('#,0',y9-x9);
      x010.Caption:=formatfloat('#,0',y10-x10);
      x011.Caption:=formatfloat('#,0',y11-x11);
      x012.Caption:=formatfloat('#,0',y12-x12);
      x013.Caption:=formatfloat('#,0',y13-x13);
      x014.Caption:=formatfloat('#,0.00',(y13-x13)*100.00/ttl);
      if (xh3.ItemIndex=1) or (xh4.ItemIndex=0) then begin
        {
        z1:=0; z2:=0; z3:=0; z4:=0; z5:=0; z6:=0; z7:=0; z8:=0; z9:=0; z10:=0; z11:=0; z12:=0; z13:=0;
        line09.Visible:=true; line10.Visible:=true; line11.Visible:=true; line12.Visible:=true;
        line13.Visible:=true; line14.Visible:=true; line15.Visible:=true; pttl001.Visible:=true;
        p001.Visible:=true; p002.Visible:=true; p003.Visible:=true; p004.Visible:=true; p005.Visible:=true; p006.Visible:=true;
        p007.Visible:=true; p008.Visible:=true; p009.Visible:=true; p010.Visible:=true; p011.Visible:=true; p012.Visible:=true;
        with query5 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select distinct mn,sum(diff) as x1 from view_actperf where yr=:x1 and mn<:x2 group by mn order by mn';
          params[0].asinteger:=spinedit1.value;
          params[1].asinteger:=monthof(date);
          open;
          first;
          while not eof do begin
            //x14:=x14+fieldbyname('x1').value;
            if fieldbyname('mn').value=1 then z1:=fieldbyname('x1').value
            else if fieldbyname('mn').value=2 then z2:=fieldbyname('x1').value
            else if fieldbyname('mn').value=3 then z3:=fieldbyname('x1').value
            else if fieldbyname('mn').value=4 then z4:=fieldbyname('x1').value
            else if fieldbyname('mn').value=5 then z5:=fieldbyname('x1').value
            else if fieldbyname('mn').value=6 then z6:=fieldbyname('x1').value
            else if fieldbyname('mn').value=7 then z7:=fieldbyname('x1').value
            else if fieldbyname('mn').value=8 then z8:=fieldbyname('x1').value
            else if fieldbyname('mn').value=9 then z9:=fieldbyname('x1').value
            else if fieldbyname('mn').value=10 then z10:=fieldbyname('x1').value
            else if fieldbyname('mn').value=11 then z11:=fieldbyname('x1').value
            else if fieldbyname('mn').value=12 then z12:=fieldbyname('x1').value;
            application.ProcessMessages;
            next;
          end;
        end;
        if z1>0 then begin
          z13:=z13+y1-z1;
          p001.Caption:=formatfloat('#,0',y1-z1);
          if y1>z1 then p001.Font.Color:=clGreen
          else if y1<z1 then p001.Font.Color:=clRed
          else p001.Font.Color:=clBlack;
        end else p001.Font.Color:=clBlack;
        if z2>0 then begin
          z13:=z13+y2-z2;
          p002.Caption:=formatfloat('#,0',y2-z2);
          if y2>z2 then p002.Font.Color:=clGreen
          else if y2<z2 then p002.Font.Color:=clRed
          else p002.Font.Color:=clBlack;
        end else p002.Font.Color:=clBlack;
        if z3>0 then begin
          z13:=z13+y3-z3;
          p003.Caption:=formatfloat('#,0',y3-z3);
          if y3>z3 then p003.Font.Color:=clGreen
          else if y3<z3 then p003.Font.Color:=clRed
          else p003.Font.Color:=clBlack;
        end else p003.Font.Color:=clBlack;
        if z4>0 then begin
          z13:=z13+y4-z4;
          p004.Caption:=formatfloat('#,0',y4-z4);
          if y4>z4 then p004.Font.Color:=clGreen
          else if y4<z4 then p004.Font.Color:=clRed
          else p004.Font.Color:=clBlack;
        end else p004.Font.Color:=clBlack;
        if z5>0 then begin
          z13:=z13+y5-z5;
          p005.Caption:=formatfloat('#,0',y5-z5);
          if y5>z5 then p005.Font.Color:=clGreen
          else if y5<z5 then p005.Font.Color:=clRed
          else p005.Font.Color:=clBlack;
        end else p005.Font.Color:=clBlack;
        if z6>0 then begin
          z13:=z13+y6-z6;
          p006.Caption:=formatfloat('#,0',y6-z6);
          if y6>z6 then p006.Font.Color:=clGreen
          else if y6<z6 then p006.Font.Color:=clRed
          else p006.Font.Color:=clBlack;
        end else p006.Font.Color:=clBlack;
        if z7>0 then begin
          z13:=z13+y7-z7;
          p007.Caption:=formatfloat('#,0',y7-z7);
          if y7>z7 then p007.Font.Color:=clGreen
          else if y7<z7 then p007.Font.Color:=clRed
          else p007.Font.Color:=clBlack;
        end else p007.Font.Color:=clBlack;
        if z8>0 then begin
          z13:=z13+y8-z8;
          p008.Caption:=formatfloat('#,0',y8-z8);
          if y8>z8 then p008.Font.Color:=clGreen
          else if y8<z8 then p008.Font.Color:=clRed
          else p008.Font.Color:=clBlack;
        end else p008.Font.Color:=clBlack;
        if z9>0 then begin
          z13:=z13+y9-z9;
          p009.Caption:=formatfloat('#,0',y9-z9);
          if y9>z9 then p009.Font.Color:=clGreen
          else if y9<z9 then p009.Font.Color:=clRed
          else p009.Font.Color:=clBlack;
        end else p009.Font.Color:=clBlack;
        if z10>0 then begin
          z13:=z13+y10-z10;
          p010.Caption:=formatfloat('#,0',y10-z10);
          if y10>z10 then p010.Font.Color:=clGreen
          else if y10<z10 then p010.Font.Color:=clRed
          else p010.Font.Color:=clBlack;
        end else p010.Font.Color:=clBlack;
        if z11>0 then begin
          z13:=z13+y11-z11;
          p011.Caption:=formatfloat('#,0',y11-z11);
          if y11>z11 then p011.Font.Color:=clGreen
          else if y11<z11 then p011.Font.Color:=clRed
          else p011.Font.Color:=clBlack;
        end else p011.Font.Color:=clBlack;
        if z12>0 then begin
          z13:=z13+y12-z12;
          p012.Caption:=formatfloat('#,0',y12-z12);
          if y12>z12 then p012.Font.Color:=clGreen
          else if y12<z12 then p012.Font.Color:=clRed
          else p012.Font.Color:=clBlack;
        end else p012.Font.Color:=clBlack;
        p013.Caption:=formatfloat('#,0',z13);
        if z13>0 then p013.Font.Color:=clGreen
        else if z13<0 then p013.Font.Color:=clRed
        else p013.Font.Color:=clBlack;
        }
      end;
      if ((xh1.ItemIndex=1) or (xh3.ItemIndex=1)) then begin
        with query5 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='select sum(qty) as x1 from tbl_cap_erprwo where dtyr=:x1 and ((t3dt<>at3dt and at3yr<:x2) or (t3dt=at3dt and bt3yr<:x3))';
          params[0].asinteger:=spinedit1.Value;
          params[1].asinteger:=spinedit1.Value;
          params[2].asinteger:=spinedit1.Value;
          open;
          if not fieldbyname('x1').isnull then tips001.Caption:=tips001.Caption+'  Go to previous year: '+formatfloat('#,0',fieldbyname('x1').value)+' pcs';
        end;
        with query5 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='select sum(qty) as x1 from tbl_cap_erprwo where dtyr=:x1 and ((t3dt<>at3dt and at3yr>:x2) or (t3dt=at3dt and bt3yr>:x3))';
          params[0].asinteger:=spinedit1.Value;
          params[1].asinteger:=spinedit1.Value;
          params[2].asinteger:=spinedit1.Value;
          open;
          if not fieldbyname('x1').isnull then tips001.Caption:=tips001.caption+'  go to future: '+formatfloat('#,0',fieldbyname('x1').value)+' pcs';
        end;
      end;
    end;
  end;
  oa01:=0; oa02:=0; oa03:=0; oa04:=0; oa05:=0; oa06:=0; oa07:=0; oa08:=0; oa09:=0; oa10:=0; oa11:=0; oa12:=0;
  ob01:=0; ob02:=0; ob03:=0; ob04:=0; ob05:=0; ob06:=0; ob07:=0; ob08:=0; ob09:=0; ob10:=0; ob11:=0; ob12:=0;
  oc01:=0; oc02:=0; oc03:=0; oc04:=0; oc05:=0; oc06:=0; oc07:=0; oc08:=0; oc09:=0; oc10:=0; oc11:=0; oc12:=0;
  oe01:=0; oe02:=0; oe03:=0; oe04:=0; oe05:=0; oe06:=0; oe07:=0; oe08:=0; oe09:=0; oe10:=0; oe11:=0; oe12:=0;

  ax01.Caption:=''; ax02.Caption:=''; ax03.Caption:=''; ax04.Caption:=''; ax05.Caption:=''; ax06.Caption:='';
  ax07.Caption:=''; ax08.Caption:=''; ax09.Caption:=''; ax10.Caption:=''; ax11.Caption:=''; ax12.Caption:='';
  ay01.Caption:=''; ay02.Caption:=''; ay03.Caption:=''; ay04.Caption:=''; ay05.Caption:=''; ay06.Caption:='';
  ay07.Caption:=''; ay08.Caption:=''; ay09.Caption:=''; ay10.Caption:=''; ay11.Caption:=''; ay12.Caption:='';
  bx01.Caption:=''; bx02.Caption:=''; bx03.Caption:=''; bx04.Caption:=''; bx05.Caption:=''; bx06.Caption:='';
  bx07.Caption:=''; bx08.Caption:=''; bx09.Caption:=''; bx10.Caption:=''; bx11.Caption:=''; bx12.Caption:='';
  by01.Caption:=''; by02.Caption:=''; by03.Caption:=''; by04.Caption:=''; by05.Caption:=''; by06.Caption:='';
  by07.Caption:=''; by08.Caption:=''; by09.Caption:=''; by10.Caption:=''; by11.Caption:=''; by12.Caption:='';
  cx01.Caption:=''; cx02.Caption:=''; cx03.Caption:=''; cx04.Caption:=''; cx05.Caption:=''; cx06.Caption:='';
  cx07.Caption:=''; cx08.Caption:=''; cx09.Caption:=''; cx10.Caption:=''; cx11.Caption:=''; cx12.Caption:='';
  cy01.Caption:=''; cy02.Caption:=''; cy03.Caption:=''; cy04.Caption:=''; cy05.Caption:=''; cy06.Caption:='';
  cy07.Caption:=''; cy08.Caption:=''; cy09.Caption:=''; cy10.Caption:=''; cy11.Caption:=''; cy12.Caption:='';
  ex01.Caption:=''; ex02.Caption:=''; ex03.Caption:=''; ex04.Caption:=''; ex05.Caption:=''; ex06.Caption:='';
  ex07.Caption:=''; ex08.Caption:=''; ex09.Caption:=''; ex10.Caption:=''; ex11.Caption:=''; ex12.Caption:='';
  ey01.Caption:=''; ey02.Caption:=''; ey03.Caption:=''; ey04.Caption:=''; ey05.Caption:=''; ey06.Caption:='';
  ey07.Caption:=''; ey08.Caption:=''; ey09.Caption:=''; ey10.Caption:=''; ey11.Caption:=''; ey12.Caption:='';
  tx01.Caption:=''; tx02.Caption:=''; tx03.Caption:=''; tx04.Caption:=''; tx05.Caption:=''; tx06.Caption:='';
  tx07.Caption:=''; tx08.Caption:=''; tx09.Caption:=''; tx10.Caption:=''; tx11.Caption:=''; tx12.Caption:='';
  ty01.Caption:=''; ty02.Caption:=''; ty03.Caption:=''; ty04.Caption:=''; ty05.Caption:=''; ty06.Caption:='';
  ty07.Caption:=''; ty08.Caption:=''; ty09.Caption:=''; ty10.Caption:=''; ty11.Caption:=''; ty12.Caption:='';

  a001.Caption:=''; a002.Caption:=''; a003.Caption:=''; a004.Caption:=''; a005.Caption:=''; a006.Caption:=''; a007.Caption:='';
  a008.Caption:=''; a009.Caption:=''; a010.Caption:=''; a011.Caption:=''; a012.Caption:=''; a013.Caption:=''; a014.Caption:='';
  b001.Caption:=''; b002.Caption:=''; b003.Caption:=''; b004.Caption:=''; b005.Caption:=''; b006.Caption:=''; b007.Caption:='';
  b008.Caption:=''; b009.Caption:=''; b010.Caption:=''; b011.Caption:=''; b012.Caption:=''; b013.Caption:=''; b014.Caption:='';
  c001.Caption:=''; c002.Caption:=''; c003.Caption:=''; c004.Caption:=''; c005.Caption:=''; c006.Caption:=''; c007.Caption:='';
  c008.Caption:=''; c009.Caption:=''; c010.Caption:=''; c011.Caption:=''; c012.Caption:=''; c013.Caption:=''; c014.Caption:='';
  e001.Caption:=''; e002.Caption:=''; e003.Caption:=''; e004.Caption:=''; e005.Caption:=''; e006.Caption:=''; e007.Caption:='';
  e008.Caption:=''; e009.Caption:=''; e010.Caption:=''; e011.Caption:=''; e012.Caption:=''; e013.Caption:=''; e014.Caption:='';
  //if ((combobox1.text='') or (combobox1.text='ALL')) then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    if xh2.ItemIndex=0 then
      commandtext:='select distinct grp,sum(q01) as x1,sum(q02) as x2,sum(q03) as x3,sum(q04) as x4,sum(q05) as x5,sum(q06) as x6,sum(q07) as x7,'
                  +'sum(q08) as x8,sum(q09) as x9,sum(q10) as x10,sum(q11) as x11,sum(q12) as x12 '
                  +'from tbl_cap_oa_style_new_sum where yr=:x1 and cstyle like ''1)%'' group by grp'
    else if xh4.ItemIndex=0 then
      commandtext:='select distinct grp,sum(tw01+tsah01) as x1,sum(tw02+tsah02) as x2,sum(tw03+tsah03) as x3,sum(tw04+tsah04) as x4,sum(tw05+tsah05) as x5,'
                  +'sum(tw06+tsah06) as x6,sum(tw07+tsah07) as x7,sum(tw08+tsah08) as x8,sum(tw09+tsah09) as x9,sum(tw10+tsah10) as x10,'
                  +'sum(tw11+tsah11) as x11,sum(tw12+tsah12) as x12 '
                  +'from tbl_cap_oa_style_new_sum where yr=:x1 and cstyle like ''1)%'' group by grp';
    params[0].asinteger:=spinedit1.Value;
    open;
    first;
    while not eof do begin
      if fieldbyname('grp').value='A' then begin
        oa01:=fieldbyname('x1').value; oa02:=fieldbyname('x2').value; oa03:=fieldbyname('x3').value; oa04:=fieldbyname('x4').value;
        oa05:=fieldbyname('x5').value; oa06:=fieldbyname('x6').value; oa07:=fieldbyname('x7').value; oa08:=fieldbyname('x8').value;
        oa09:=fieldbyname('x9').value; oa10:=fieldbyname('x10').value; oa11:=fieldbyname('x11').value; oa12:=fieldbyname('x12').value;
      end else if fieldbyname('grp').value='B' then begin
        ob01:=fieldbyname('x1').value; ob02:=fieldbyname('x2').value; ob03:=fieldbyname('x3').value; ob04:=fieldbyname('x4').value;
        ob05:=fieldbyname('x5').value; ob06:=fieldbyname('x6').value; ob07:=fieldbyname('x7').value; ob08:=fieldbyname('x8').value;
        ob09:=fieldbyname('x9').value; ob10:=fieldbyname('x10').value; ob11:=fieldbyname('x11').value; ob12:=fieldbyname('x12').value;
      end else if fieldbyname('grp').value='C' then begin
        oc01:=fieldbyname('x1').value; oc02:=fieldbyname('x2').value; oc03:=fieldbyname('x3').value; oc04:=fieldbyname('x4').value;
        oc05:=fieldbyname('x5').value; oc06:=fieldbyname('x6').value; oc07:=fieldbyname('x7').value; oc08:=fieldbyname('x8').value;
        oc09:=fieldbyname('x9').value; oc10:=fieldbyname('x10').value; oc11:=fieldbyname('x11').value; oc12:=fieldbyname('x12').value;
      end else if fieldbyname('grp').value='D' then begin
        oe01:=fieldbyname('x1').value; oe02:=fieldbyname('x2').value; oe03:=fieldbyname('x3').value; oe04:=fieldbyname('x4').value;
        oe05:=fieldbyname('x5').value; oe06:=fieldbyname('x6').value; oe07:=fieldbyname('x7').value; oe08:=fieldbyname('x8').value;
        oe09:=fieldbyname('x9').value; oe10:=fieldbyname('x10').value; oe11:=fieldbyname('x11').value; oe12:=fieldbyname('x12').value;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
    ax01.Caption:=formatfloat('#,0',oa01); ax02.Caption:=formatfloat('#,0',oa02); ax03.Caption:=formatfloat('#,0',oa03); ax04.Caption:=formatfloat('#,0',oa04);
    ax05.Caption:=formatfloat('#,0',oa05); ax06.Caption:=formatfloat('#,0',oa06); ax07.Caption:=formatfloat('#,0',oa07); ax08.Caption:=formatfloat('#,0',oa08);
    ax09.Caption:=formatfloat('#,0',oa09); ax10.Caption:=formatfloat('#,0',oa10); ax11.Caption:=formatfloat('#,0',oa11); ax12.Caption:=formatfloat('#,0',oa12);
    bx01.Caption:=formatfloat('#,0',ob01); bx02.Caption:=formatfloat('#,0',ob02); bx03.Caption:=formatfloat('#,0',ob03); bx04.Caption:=formatfloat('#,0',ob04);
    bx05.Caption:=formatfloat('#,0',ob05); bx06.Caption:=formatfloat('#,0',ob06); bx07.Caption:=formatfloat('#,0',ob07); bx08.Caption:=formatfloat('#,0',ob08);
    bx09.Caption:=formatfloat('#,0',ob09); bx10.Caption:=formatfloat('#,0',ob10); bx11.Caption:=formatfloat('#,0',ob11); bx12.Caption:=formatfloat('#,0',ob12);
    cx01.Caption:=formatfloat('#,0',oc01); cx02.Caption:=formatfloat('#,0',oc02); cx03.Caption:=formatfloat('#,0',oc03); cx04.Caption:=formatfloat('#,0',oc04);
    cx05.Caption:=formatfloat('#,0',oc05); cx06.Caption:=formatfloat('#,0',oc06); cx07.Caption:=formatfloat('#,0',oc07); cx08.Caption:=formatfloat('#,0',oc08);
    cx09.Caption:=formatfloat('#,0',oc09); cx10.Caption:=formatfloat('#,0',oc10); cx11.Caption:=formatfloat('#,0',oc11); cx12.Caption:=formatfloat('#,0',oc12);
    ex01.Caption:=formatfloat('#,0',oe01); ex02.Caption:=formatfloat('#,0',oe02); ex03.Caption:=formatfloat('#,0',oe03); ex04.Caption:=formatfloat('#,0',oe04);
    ex05.Caption:=formatfloat('#,0',oe05); ex06.Caption:=formatfloat('#,0',oe06); ex07.Caption:=formatfloat('#,0',oe07); ex08.Caption:=formatfloat('#,0',oe08);
    ex09.Caption:=formatfloat('#,0',oe09); ex10.Caption:=formatfloat('#,0',oe10); ex11.Caption:=formatfloat('#,0',oe11); ex12.Caption:=formatfloat('#,0',oe12);
    tx01.Caption:=formatfloat('#,0',oa01+ob01+oc01+oe01); tx02.Caption:=formatfloat('#,0',oa02+ob02+oc02+oe02);
    tx03.Caption:=formatfloat('#,0',oa03+ob03+oc03+oe03); tx04.Caption:=formatfloat('#,0',oa04+ob04+oc04+oe04);
    tx05.Caption:=formatfloat('#,0',oa05+ob05+oc05+oe05); tx06.Caption:=formatfloat('#,0',oa06+ob06+oc06+oe06);
    tx07.Caption:=formatfloat('#,0',oa07+ob07+oc07+oe07); tx08.Caption:=formatfloat('#,0',oa08+ob08+oc08+oe08);
    tx09.Caption:=formatfloat('#,0',oa09+ob09+oc09+oe09); tx10.Caption:=formatfloat('#,0',oa10+ob10+oc10+oe10);
    tx11.Caption:=formatfloat('#,0',oa11+ob11+oc11+oe11); tx12.Caption:=formatfloat('#,0',oa12+ob12+oc12+oe12);

    with query5 do begin
      close;
      params.clear;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from tbl_cap_custqty where tm=:x1';
      params[0].asdatetime:=query2.fieldbyname('tm').value;
      open;
      ty01.Caption:=formatfloat('#,0',fieldbyname('m1').value-oa01-ob01-oc01-oe01);
      ty02.Caption:=formatfloat('#,0',fieldbyname('m2').value-oa02-ob02-oc02-oe02);
      ty03.Caption:=formatfloat('#,0',fieldbyname('m3').value-oa03-ob03-oc03-oe03);
      ty04.Caption:=formatfloat('#,0',fieldbyname('m4').value-oa04-ob04-oc04-oe04);
      ty05.Caption:=formatfloat('#,0',fieldbyname('m5').value-oa05-ob05-oc05-oe05);
      ty06.Caption:=formatfloat('#,0',fieldbyname('m6').value-oa06-ob06-oc06-oe06);
      ty07.Caption:=formatfloat('#,0',fieldbyname('m7').value-oa07-ob07-oc07-oe07);
      ty08.Caption:=formatfloat('#,0',fieldbyname('m8').value-oa08-ob08-oc08-oe08);
      ty09.Caption:=formatfloat('#,0',fieldbyname('m9').value-oa09-ob09-oc09-oe09);
      ty10.Caption:=formatfloat('#,0',fieldbyname('m10').value-oa10-ob10-oc10-oe10);
      ty11.Caption:=formatfloat('#,0',fieldbyname('m11').value-oa11-ob11-oc11-oe11);
      ty12.Caption:=formatfloat('#,0',fieldbyname('m12').value-oa12-ob12-oc12-oe12);
    end;

    with query5 do begin
      close;
      params.clear;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct grp,sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from tbl_cap_custqty where tm=:x1 group by grp order by grp';
      params[0].asdatetime:=query2.fieldbyname('tm').value;
      open;
      first;
      while not eof do begin
        if fieldbyname('grp').value='A' then begin
          a001.Caption:=formatfloat('#,0',fieldbyname('m1').value);
          a002.Caption:=formatfloat('#,0',fieldbyname('m2').value);
          a003.Caption:=formatfloat('#,0',fieldbyname('m3').value);
          a004.Caption:=formatfloat('#,0',fieldbyname('m4').value);
          a005.Caption:=formatfloat('#,0',fieldbyname('m5').value);
          a006.Caption:=formatfloat('#,0',fieldbyname('m6').value);
          a007.Caption:=formatfloat('#,0',fieldbyname('m7').value);
          a008.Caption:=formatfloat('#,0',fieldbyname('m8').value);
          a009.Caption:=formatfloat('#,0',fieldbyname('m9').value);
          a010.Caption:=formatfloat('#,0',fieldbyname('m10').value);
          a011.Caption:=formatfloat('#,0',fieldbyname('m11').value);
          a012.Caption:=formatfloat('#,0',fieldbyname('m12').value);
          a013.Caption:=formatfloat('#,0',fieldbyname('ttl').value);
          a014.Caption:=formatfloat('#,0.00',fieldbyname('ttl').value*100.00/ttl);
          ay01.Caption:=formatfloat('#,0',fieldbyname('m1').value-oa01);
          ay02.Caption:=formatfloat('#,0',fieldbyname('m2').value-oa02);
          ay03.Caption:=formatfloat('#,0',fieldbyname('m3').value-oa03);
          ay04.Caption:=formatfloat('#,0',fieldbyname('m4').value-oa04);
          ay05.Caption:=formatfloat('#,0',fieldbyname('m5').value-oa05);
          ay06.Caption:=formatfloat('#,0',fieldbyname('m6').value-oa06);
          ay07.Caption:=formatfloat('#,0',fieldbyname('m7').value-oa07);
          ay08.Caption:=formatfloat('#,0',fieldbyname('m8').value-oa08);
          ay09.Caption:=formatfloat('#,0',fieldbyname('m9').value-oa09);
          ay10.Caption:=formatfloat('#,0',fieldbyname('m10').value-oa10);
          ay11.Caption:=formatfloat('#,0',fieldbyname('m11').value-oa11);
          ay12.Caption:=formatfloat('#,0',fieldbyname('m12').value-oa12);
        end else if fieldbyname('grp').value='B' then begin
          b001.Caption:=formatfloat('#,0',fieldbyname('m1').value);
          b002.Caption:=formatfloat('#,0',fieldbyname('m2').value);
          b003.Caption:=formatfloat('#,0',fieldbyname('m3').value);
          b004.Caption:=formatfloat('#,0',fieldbyname('m4').value);
          b005.Caption:=formatfloat('#,0',fieldbyname('m5').value);
          b006.Caption:=formatfloat('#,0',fieldbyname('m6').value);
          b007.Caption:=formatfloat('#,0',fieldbyname('m7').value);
          b008.Caption:=formatfloat('#,0',fieldbyname('m8').value);
          b009.Caption:=formatfloat('#,0',fieldbyname('m9').value);
          b010.Caption:=formatfloat('#,0',fieldbyname('m10').value);
          b011.Caption:=formatfloat('#,0',fieldbyname('m11').value);
          b012.Caption:=formatfloat('#,0',fieldbyname('m12').value);
          b013.Caption:=formatfloat('#,0',fieldbyname('ttl').value);
          b014.Caption:=formatfloat('#,0.00',fieldbyname('ttl').value*100.00/ttl);
          by01.Caption:=formatfloat('#,0',fieldbyname('m1').value-ob01);
          by02.Caption:=formatfloat('#,0',fieldbyname('m2').value-ob02);
          by03.Caption:=formatfloat('#,0',fieldbyname('m3').value-ob03);
          by04.Caption:=formatfloat('#,0',fieldbyname('m4').value-ob04);
          by05.Caption:=formatfloat('#,0',fieldbyname('m5').value-ob05);
          by06.Caption:=formatfloat('#,0',fieldbyname('m6').value-ob06);
          by07.Caption:=formatfloat('#,0',fieldbyname('m7').value-ob07);
          by08.Caption:=formatfloat('#,0',fieldbyname('m8').value-ob08);
          by09.Caption:=formatfloat('#,0',fieldbyname('m9').value-ob09);
          by10.Caption:=formatfloat('#,0',fieldbyname('m10').value-ob10);
          by11.Caption:=formatfloat('#,0',fieldbyname('m11').value-ob11);
          by12.Caption:=formatfloat('#,0',fieldbyname('m12').value-ob12);
        end else if fieldbyname('grp').value='C' then begin
          c001.Caption:=formatfloat('#,0',fieldbyname('m1').value);
          c002.Caption:=formatfloat('#,0',fieldbyname('m2').value);
          c003.Caption:=formatfloat('#,0',fieldbyname('m3').value);
          c004.Caption:=formatfloat('#,0',fieldbyname('m4').value);
          c005.Caption:=formatfloat('#,0',fieldbyname('m5').value);
          c006.Caption:=formatfloat('#,0',fieldbyname('m6').value);
          c007.Caption:=formatfloat('#,0',fieldbyname('m7').value);
          c008.Caption:=formatfloat('#,0',fieldbyname('m8').value);
          c009.Caption:=formatfloat('#,0',fieldbyname('m9').value);
          c010.Caption:=formatfloat('#,0',fieldbyname('m10').value);
          c011.Caption:=formatfloat('#,0',fieldbyname('m11').value);
          c012.Caption:=formatfloat('#,0',fieldbyname('m12').value);
          c013.Caption:=formatfloat('#,0',fieldbyname('ttl').value);
          c014.Caption:=formatfloat('#,0.00',fieldbyname('ttl').value*100.00/ttl);
          cy01.Caption:=formatfloat('#,0',fieldbyname('m1').value-oc01);
          cy02.Caption:=formatfloat('#,0',fieldbyname('m2').value-oc02);
          cy03.Caption:=formatfloat('#,0',fieldbyname('m3').value-oc03);
          cy04.Caption:=formatfloat('#,0',fieldbyname('m4').value-oc04);
          cy05.Caption:=formatfloat('#,0',fieldbyname('m5').value-oc05);
          cy06.Caption:=formatfloat('#,0',fieldbyname('m6').value-oc06);
          cy07.Caption:=formatfloat('#,0',fieldbyname('m7').value-oc07);
          cy08.Caption:=formatfloat('#,0',fieldbyname('m8').value-oc08);
          cy09.Caption:=formatfloat('#,0',fieldbyname('m9').value-oc09);
          cy10.Caption:=formatfloat('#,0',fieldbyname('m10').value-oc10);
          cy11.Caption:=formatfloat('#,0',fieldbyname('m11').value-oc11);
          cy12.Caption:=formatfloat('#,0',fieldbyname('m12').value-oc12);
        end else if fieldbyname('grp').value='D' then begin
          e001.Caption:=formatfloat('#,0',fieldbyname('m1').value);
          e002.Caption:=formatfloat('#,0',fieldbyname('m2').value);
          e003.Caption:=formatfloat('#,0',fieldbyname('m3').value);
          e004.Caption:=formatfloat('#,0',fieldbyname('m4').value);
          e005.Caption:=formatfloat('#,0',fieldbyname('m5').value);
          e006.Caption:=formatfloat('#,0',fieldbyname('m6').value);
          e007.Caption:=formatfloat('#,0',fieldbyname('m7').value);
          e008.Caption:=formatfloat('#,0',fieldbyname('m8').value);
          e009.Caption:=formatfloat('#,0',fieldbyname('m9').value);
          e010.Caption:=formatfloat('#,0',fieldbyname('m10').value);
          e011.Caption:=formatfloat('#,0',fieldbyname('m11').value);
          e012.Caption:=formatfloat('#,0',fieldbyname('m12').value);
          e013.Caption:=formatfloat('#,0',fieldbyname('ttl').value);
          e014.Caption:=formatfloat('#,0.00',fieldbyname('ttl').value*100.00/ttl);
          ey01.Caption:=formatfloat('#,0',fieldbyname('m1').value-oe01);
          ey02.Caption:=formatfloat('#,0',fieldbyname('m2').value-oe02);
          ey03.Caption:=formatfloat('#,0',fieldbyname('m3').value-oe03);
          ey04.Caption:=formatfloat('#,0',fieldbyname('m4').value-oe04);
          ey05.Caption:=formatfloat('#,0',fieldbyname('m5').value-oe05);
          ey06.Caption:=formatfloat('#,0',fieldbyname('m6').value-oe06);
          ey07.Caption:=formatfloat('#,0',fieldbyname('m7').value-oe07);
          ey08.Caption:=formatfloat('#,0',fieldbyname('m8').value-oe08);
          ey09.Caption:=formatfloat('#,0',fieldbyname('m9').value-oe09);
          ey10.Caption:=formatfloat('#,0',fieldbyname('m10').value-oe10);
          ey11.Caption:=formatfloat('#,0',fieldbyname('m11').value-oe11);
          ey12.Caption:=formatfloat('#,0',fieldbyname('m12').value-oe12);
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  //end;
  with query5 do begin
    close;
    params.clear;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct tplant,sum(ttl) as ttl from tbl_cap_custqty where tm=:x1 group by tplant';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('tplant').value='SL' then pts01:=fieldbyname('ttl').value*100.00/ttl
      else if fieldbyname('tplant').value='KB' then ptk01:=fieldbyname('ttl').value*100.00/ttl;
      application.ProcessMessages;
      next;
    end;
  end;
  tips001.Caption:=tips001.Caption+'      Factory''s Order Balancing of year '+inttostr(spinedit1.value)+':- SL Vs KB = '+formatfloat('#,0.00%',pts01)+' Vs '+formatfloat('#,0.00%',ptk01);
  //other data summary
  if xh2.ItemIndex>=0 then begin
    //2.outstanding
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select sum(q01) as x1,sum(q02) as x2,sum(q03) as x3,sum(q04) as x4,sum(q05) as x5,sum(q06) as x6,sum(q07) as x7,'
                  +'sum(q08) as x8,sum(q09) as x9,sum(q10) as x10,sum(q11) as x11,sum(q12) as x12 '
                  +'from tbl_cap_oa_style_new_sum where yr=:x1 and cstyle like ''1)%''';
      params[0].asinteger:=spinedit1.Value;
      open;
      x1:=fieldbyname('x1').value;
      x2:=fieldbyname('x2').value;
      x3:=fieldbyname('x3').value;
      x4:=fieldbyname('x4').value;
      x5:=fieldbyname('x5').value;
      x6:=fieldbyname('x6').value;
      x7:=fieldbyname('x7').value;
      x8:=fieldbyname('x8').value;
      x9:=fieldbyname('x9').value;
      x10:=fieldbyname('x10').value;
      x11:=fieldbyname('x11').value;
      x12:=fieldbyname('x12').value;
      y001.Caption:=formatfloat('#,0',fieldbyname('x1').value);
      y002.Caption:=formatfloat('#,0',fieldbyname('x2').value);
      y003.Caption:=formatfloat('#,0',fieldbyname('x3').value);
      y004.Caption:=formatfloat('#,0',fieldbyname('x4').value);
      y005.Caption:=formatfloat('#,0',fieldbyname('x5').value);
      y006.Caption:=formatfloat('#,0',fieldbyname('x6').value);
      y007.Caption:=formatfloat('#,0',fieldbyname('x7').value);
      y008.Caption:=formatfloat('#,0',fieldbyname('x8').value);
      y009.Caption:=formatfloat('#,0',fieldbyname('x9').value);
      y010.Caption:=formatfloat('#,0',fieldbyname('x10').value);
      y011.Caption:=formatfloat('#,0',fieldbyname('x11').value);
      y012.Caption:=formatfloat('#,0',fieldbyname('x12').value);
      y013.Caption:=formatfloat('#,0',x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12);
    end;
    //4.RWO
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select sum(q01) as x1,sum(q02) as x2,sum(q03) as x3,sum(q04) as x4,sum(q05) as x5,sum(q06) as x6,sum(q07) as x7,'
                  +'sum(q08) as x8,sum(q09) as x9,sum(q10) as x10,sum(q11) as x11,sum(q12) as x12 '
                  +'from tbl_cap_oa_style_new_sum where yr=:x1 and cstyle like ''4)%''';
      params[0].asinteger:=spinedit1.Value;
      open;
      u001.Caption:=formatfloat('#,0',fieldbyname('x1').value);
      u002.Caption:=formatfloat('#,0',fieldbyname('x2').value);
      u003.Caption:=formatfloat('#,0',fieldbyname('x3').value);
      u004.Caption:=formatfloat('#,0',fieldbyname('x4').value);
      u005.Caption:=formatfloat('#,0',fieldbyname('x5').value);
      u006.Caption:=formatfloat('#,0',fieldbyname('x6').value);
      u007.Caption:=formatfloat('#,0',fieldbyname('x7').value);
      u008.Caption:=formatfloat('#,0',fieldbyname('x8').value);
      u009.Caption:=formatfloat('#,0',fieldbyname('x9').value);
      u010.Caption:=formatfloat('#,0',fieldbyname('x10').value);
      u011.Caption:=formatfloat('#,0',fieldbyname('x11').value);
      u012.Caption:=formatfloat('#,0',fieldbyname('x12').value);
      u013.Caption:=formatfloat('#,0',fieldbyname('x1').value+fieldbyname('x2').value+fieldbyname('x3').value+fieldbyname('x4').value
      +fieldbyname('x5').value+fieldbyname('x6').value+fieldbyname('x7').value+fieldbyname('x8').value+fieldbyname('x9').value
      +fieldbyname('x10').value+fieldbyname('x11').value+fieldbyname('x12').value);
    end;
    //5.Projection
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct m1,sum(w1+w2+w3+w4+w5+w6) as x1 from tbl_cap_oa_proj where yr=:x1 group by m1 order by m1';
      params[0].asinteger:=spinedit1.Value;
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then y1:=fieldbyname('x1').value
        else if fieldbyname('m1').value=2 then y2:=fieldbyname('x1').value
        else if fieldbyname('m1').value=3 then y3:=fieldbyname('x1').value
        else if fieldbyname('m1').value=4 then y4:=fieldbyname('x1').value
        else if fieldbyname('m1').value=5 then y5:=fieldbyname('x1').value
        else if fieldbyname('m1').value=6 then y6:=fieldbyname('x1').value
        else if fieldbyname('m1').value=7 then y7:=fieldbyname('x1').value
        else if fieldbyname('m1').value=8 then y8:=fieldbyname('x1').value
        else if fieldbyname('m1').value=9 then y9:=fieldbyname('x1').value
        else if fieldbyname('m1').value=10 then y10:=fieldbyname('x1').value
        else if fieldbyname('m1').value=11 then y11:=fieldbyname('x1').value
        else if fieldbyname('m1').value=12 then y12:=fieldbyname('x1').value;
        application.ProcessMessages;
        next;
      end;
    end;
    v001.Caption:=formatfloat('#,0',y1);
    v002.Caption:=formatfloat('#,0',y2);
    v003.Caption:=formatfloat('#,0',y3);
    v004.Caption:=formatfloat('#,0',y4);
    v005.Caption:=formatfloat('#,0',y5);
    v006.Caption:=formatfloat('#,0',y6);
    v007.Caption:=formatfloat('#,0',y7);
    v008.Caption:=formatfloat('#,0',y8);
    v009.Caption:=formatfloat('#,0',y9);
    v010.Caption:=formatfloat('#,0',y10);
    v011.Caption:=formatfloat('#,0',y11);
    v012.Caption:=formatfloat('#,0',y12);
    v013.Caption:=formatfloat('#,0',y1+y2+y3+y4+y5+y6+y7+y8+y9+y10+y11+y12);
    //3.% of outstanding
    if y1>0 then z001.Caption:=formatfloat('#0.00',x1*100.00/y1);
    if y2>0 then z002.Caption:=formatfloat('#0.00',x2*100.00/y2);
    if y3>0 then z003.Caption:=formatfloat('#0.00',x3*100.00/y3);
    if y4>0 then z004.Caption:=formatfloat('#0.00',x4*100.00/y4);
    if y5>0 then z005.Caption:=formatfloat('#0.00',x5*100.00/y5);
    if y6>0 then z006.Caption:=formatfloat('#0.00',x6*100.00/y6);
    if y7>0 then z007.Caption:=formatfloat('#0.00',x7*100.00/y7);
    if y8>0 then z008.Caption:=formatfloat('#0.00',x8*100.00/y8);
    if y9>0 then z009.Caption:=formatfloat('#0.00',x9*100.00/y9);
    if y10>0 then z010.Caption:=formatfloat('#0.00',x10*100.00/y10);
    if y11>0 then z011.Caption:=formatfloat('#0.00',x11*100.00/y11);
    if y12>0 then z012.Caption:=formatfloat('#0.00',x12*100.00/y12);
    if (y1+y2+y3+y4+y5+y6+y7+y8+y9+y10+y11+y12)>0 then
    z013.Caption:=formatfloat('#0.00',(x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12)*100.00/(y1+y2+y3+y4+y5+y6+y7+y8+y9+y10+y11+y12));
    //6.Level-off
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select sum(q01) as x1,sum(q02) as x2,sum(q03) as x3,sum(q04) as x4,sum(q05) as x5,sum(q06) as x6,sum(q07) as x7,'
                  +'sum(q08) as x8,sum(q09) as x9,sum(q10) as x10,sum(q11) as x11,sum(q12) as x12 '
                  +'from tbl_cap_oa_style_new_sum where yr=:x1 and cstyle like ''5)%''';
      params[0].asinteger:=spinedit1.Value;
      open;
      w001.Caption:=formatfloat('#,0',fieldbyname('x1').value);
      w002.Caption:=formatfloat('#,0',fieldbyname('x2').value);
      w003.Caption:=formatfloat('#,0',fieldbyname('x3').value);
      w004.Caption:=formatfloat('#,0',fieldbyname('x4').value);
      w005.Caption:=formatfloat('#,0',fieldbyname('x5').value);
      w006.Caption:=formatfloat('#,0',fieldbyname('x6').value);
      w007.Caption:=formatfloat('#,0',fieldbyname('x7').value);
      w008.Caption:=formatfloat('#,0',fieldbyname('x8').value);
      w009.Caption:=formatfloat('#,0',fieldbyname('x9').value);
      w010.Caption:=formatfloat('#,0',fieldbyname('x10').value);
      w011.Caption:=formatfloat('#,0',fieldbyname('x11').value);
      w012.Caption:=formatfloat('#,0',fieldbyname('x12').value);
      w013.Caption:=formatfloat('#,0',fieldbyname('x1').value+fieldbyname('x2').value+fieldbyname('x3').value+fieldbyname('x4').value
      +fieldbyname('x5').value+fieldbyname('x6').value+fieldbyname('x7').value+fieldbyname('x8').value+fieldbyname('x9').value
      +fieldbyname('x10').value+fieldbyname('x11').value+fieldbyname('x12').value);
    end;
  end else if xh4.ItemIndex>=0 then begin
    //2.outstanding
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select sum(tw01+tsah01) as x1,sum(tw02+tsah02) as x2,sum(tw03+tsah03) as x3,sum(tw04+tsah04) as x4,sum(tw05+tsah05) as x5,'
                  +'sum(tw06+tsah06) as x6,sum(tw07+tsah07) as x7,sum(tw08+tsah08) as x8,sum(tw09+tsah09) as x9,sum(tw10+tsah10) as x10,'
                  +'sum(tw11+tsah11) as x11,sum(tw12+tsah12) as x12 '
                  +'from tbl_cap_oa_style_new_sum where yr=:x1 and cstyle like ''1)%''';
      params[0].asinteger:=spinedit1.Value;
      open;
      x1:=fieldbyname('x1').value;
      x2:=fieldbyname('x2').value;
      x3:=fieldbyname('x3').value;
      x4:=fieldbyname('x4').value;
      x5:=fieldbyname('x5').value;
      x6:=fieldbyname('x6').value;
      x7:=fieldbyname('x7').value;
      x8:=fieldbyname('x8').value;
      x9:=fieldbyname('x9').value;
      x10:=fieldbyname('x10').value;
      x11:=fieldbyname('x11').value;
      x12:=fieldbyname('x12').value;
      y001.Caption:=formatfloat('#,0',fieldbyname('x1').value);
      y002.Caption:=formatfloat('#,0',fieldbyname('x2').value);
      y003.Caption:=formatfloat('#,0',fieldbyname('x3').value);
      y004.Caption:=formatfloat('#,0',fieldbyname('x4').value);
      y005.Caption:=formatfloat('#,0',fieldbyname('x5').value);
      y006.Caption:=formatfloat('#,0',fieldbyname('x6').value);
      y007.Caption:=formatfloat('#,0',fieldbyname('x7').value);
      y008.Caption:=formatfloat('#,0',fieldbyname('x8').value);
      y009.Caption:=formatfloat('#,0',fieldbyname('x9').value);
      y010.Caption:=formatfloat('#,0',fieldbyname('x10').value);
      y011.Caption:=formatfloat('#,0',fieldbyname('x11').value);
      y012.Caption:=formatfloat('#,0',fieldbyname('x12').value);
      y013.Caption:=formatfloat('#,0',x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12);
    end;
    //4.RWO
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select sum(tw01+tsah01) as x1,sum(tw02+tsah02) as x2,sum(tw03+tsah03) as x3,sum(tw04+tsah04) as x4,sum(tw05+tsah05) as x5,'
                  +'sum(tw06+tsah06) as x6,sum(tw07+tsah07) as x7,sum(tw08+tsah08) as x8,sum(tw09+tsah09) as x9,sum(tw10+tsah10) as x10,'
                  +'sum(tw11+tsah11) as x11,sum(tw12+tsah12) as x12 '
                  +'from tbl_cap_oa_style_new_sum where yr=:x1 and cstyle like ''4)%''';
      params[0].asinteger:=spinedit1.Value;
      open;
      u001.Caption:=formatfloat('#,0',fieldbyname('x1').value);
      u002.Caption:=formatfloat('#,0',fieldbyname('x2').value);
      u003.Caption:=formatfloat('#,0',fieldbyname('x3').value);
      u004.Caption:=formatfloat('#,0',fieldbyname('x4').value);
      u005.Caption:=formatfloat('#,0',fieldbyname('x5').value);
      u006.Caption:=formatfloat('#,0',fieldbyname('x6').value);
      u007.Caption:=formatfloat('#,0',fieldbyname('x7').value);
      u008.Caption:=formatfloat('#,0',fieldbyname('x8').value);
      u009.Caption:=formatfloat('#,0',fieldbyname('x9').value);
      u010.Caption:=formatfloat('#,0',fieldbyname('x10').value);
      u011.Caption:=formatfloat('#,0',fieldbyname('x11').value);
      u012.Caption:=formatfloat('#,0',fieldbyname('x12').value);
      u013.Caption:=formatfloat('#,0',fieldbyname('x1').value+fieldbyname('x2').value+fieldbyname('x3').value+fieldbyname('x4').value
      +fieldbyname('x5').value+fieldbyname('x6').value+fieldbyname('x7').value+fieldbyname('x8').value+fieldbyname('x9').value
      +fieldbyname('x10').value+fieldbyname('x11').value+fieldbyname('x12').value);
    end;
    //5.Projection
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct m1,sum(w1+w2+w3+w4+w5+w6+w0+w7) as x1 from tbl_cap_oa_proj where yr=:x1 group by m1 order by m1';
      params[0].asinteger:=spinedit1.Value;
      open;
      first;
      while not eof do begin
        if fieldbyname('m1').value=1 then y1:=fieldbyname('x1').value
        else if fieldbyname('m1').value=2 then y2:=fieldbyname('x1').value
        else if fieldbyname('m1').value=3 then y3:=fieldbyname('x1').value
        else if fieldbyname('m1').value=4 then y4:=fieldbyname('x1').value
        else if fieldbyname('m1').value=5 then y5:=fieldbyname('x1').value
        else if fieldbyname('m1').value=6 then y6:=fieldbyname('x1').value
        else if fieldbyname('m1').value=7 then y7:=fieldbyname('x1').value
        else if fieldbyname('m1').value=8 then y8:=fieldbyname('x1').value
        else if fieldbyname('m1').value=9 then y9:=fieldbyname('x1').value
        else if fieldbyname('m1').value=10 then y10:=fieldbyname('x1').value
        else if fieldbyname('m1').value=11 then y11:=fieldbyname('x1').value
        else if fieldbyname('m1').value=12 then y12:=fieldbyname('x1').value;
        application.ProcessMessages;
        next;
      end;
    end;
    v001.Caption:=formatfloat('#,0',y1);
    v002.Caption:=formatfloat('#,0',y2);
    v003.Caption:=formatfloat('#,0',y3);
    v004.Caption:=formatfloat('#,0',y4);
    v005.Caption:=formatfloat('#,0',y5);
    v006.Caption:=formatfloat('#,0',y6);
    v007.Caption:=formatfloat('#,0',y7);
    v008.Caption:=formatfloat('#,0',y8);
    v009.Caption:=formatfloat('#,0',y9);
    v010.Caption:=formatfloat('#,0',y10);
    v011.Caption:=formatfloat('#,0',y11);
    v012.Caption:=formatfloat('#,0',y12);
    v013.Caption:=formatfloat('#,0',y1+y2+y3+y4+y5+y6+y7+y8+y9+y10+y11+y12);
    //3.% of outstanding
    if y1>0 then z001.Caption:=formatfloat('#0.00',x1*100.00/y1);
    if y2>0 then z002.Caption:=formatfloat('#0.00',x2*100.00/y2);
    if y3>0 then z003.Caption:=formatfloat('#0.00',x3*100.00/y3);
    if y4>0 then z004.Caption:=formatfloat('#0.00',x4*100.00/y4);
    if y5>0 then z005.Caption:=formatfloat('#0.00',x5*100.00/y5);
    if y6>0 then z006.Caption:=formatfloat('#0.00',x6*100.00/y6);
    if y7>0 then z007.Caption:=formatfloat('#0.00',x7*100.00/y7);
    if y8>0 then z008.Caption:=formatfloat('#0.00',x8*100.00/y8);
    if y9>0 then z009.Caption:=formatfloat('#0.00',x9*100.00/y9);
    if y10>0 then z010.Caption:=formatfloat('#0.00',x10*100.00/y10);
    if y11>0 then z011.Caption:=formatfloat('#0.00',x11*100.00/y11);
    if y12>0 then z012.Caption:=formatfloat('#0.00',x12*100.00/y12);
    if (y1+y2+y3+y4+y5+y6+y7+y8+y9+y10+y11+y12)>0 then
    z013.Caption:=formatfloat('#0.00',(x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12)*100.00/(y1+y2+y3+y4+y5+y6+y7+y8+y9+y10+y11+y12));
    //6.Level-off
    with query5 do begin
      close;
      params.clear;
      {
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select sum(q01) as x1,sum(q02) as x2,sum(q03) as x3,sum(q04) as x4,sum(q05) as x5,sum(q06) as x6,sum(q07) as x7,'
                  +'sum(q08) as x8,sum(q09) as x9,sum(q10) as x10,sum(q11) as x11,sum(q12) as x12 '
                  +'from tbl_cap_oa_style_new_sum where yr=:x1 and cstyle like ''5)%''';
      params[0].asinteger:=spinedit1.Value;
      }
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from tbl_cap_custqty_lvl where tm=:x1 group by grp order by grp';
      params[0].asdatetime:=query2.fieldbyname('tm').value;
      open;
      w001.Caption:=formatfloat('#,0',fieldbyname('m1').value);
      w002.Caption:=formatfloat('#,0',fieldbyname('m2').value);
      w003.Caption:=formatfloat('#,0',fieldbyname('m3').value);
      w004.Caption:=formatfloat('#,0',fieldbyname('m4').value);
      w005.Caption:=formatfloat('#,0',fieldbyname('m5').value);
      w006.Caption:=formatfloat('#,0',fieldbyname('m6').value);
      w007.Caption:=formatfloat('#,0',fieldbyname('m7').value);
      w008.Caption:=formatfloat('#,0',fieldbyname('m8').value);
      w009.Caption:=formatfloat('#,0',fieldbyname('m9').value);
      w010.Caption:=formatfloat('#,0',fieldbyname('m10').value);
      w011.Caption:=formatfloat('#,0',fieldbyname('m11').value);
      w012.Caption:=formatfloat('#,0',fieldbyname('m12').value);
      w013.Caption:=formatfloat('#,0',fieldbyname('m1').value+fieldbyname('m2').value+fieldbyname('m3').value+fieldbyname('m4').value
      +fieldbyname('m5').value+fieldbyname('m6').value+fieldbyname('m7').value+fieldbyname('m8').value+fieldbyname('m9').value
      +fieldbyname('m10').value+fieldbyname('m11').value+fieldbyname('m12').value);
    end;
  end;
  //tips002.Caption:='PS: -  Sales Projection should incl. Level-off qty, Sales Projection = Level-off Qty + RWO + Projection''s outstanding ';
  tips002.Caption:='1. Qty of Sales Projection (5) = Qty of Sales Proj''s outstanding (1) + RWO (3) + Qty of Level-off (4) ';
  tips003.Caption:='2. Grand Total Qty on STD time of Grp ';
  if xh2.ItemIndex>=0 then tips003.Caption:=tips003.Caption+'A = Qty of Sales Proj''s outstanding (1) + RWO (3) '
  else if xh4.ItemIndex>=0 then tips003.Caption:=tips003.Caption+'B = Qty of Sales Proj''s outstanding (1) + RWO (3) ';
end;

procedure Tfrmnewcap_custupdated1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_custupdated1:=nil;
end;

end.
