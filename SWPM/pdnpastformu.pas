unit pdnpastformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, DB, DBClient, ppCtrls, ppPrnabl,
  ppClass, ppDB, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppViewr, ppVar, ppStrtch, ppSubRpt, ppRichTx, dateutils,
  ExtCtrls, ppMemo, ppParameter;

type
  Tfrmpdnpast = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SpinEdit1: TSpinEdit;
    Label4: TLabel;
    SpinEdit2: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    SpinEdit3: TSpinEdit;
    Label7: TLabel;
    SpinEdit4: TSpinEdit;
    BitBtn1: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    f001: TppLabel;
    w001: TppLabel;
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
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
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
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLabel16: TppLabel;
    ppShape2: TppShape;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel3: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    grd001: TppLabel;
    grd002: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppLabel17: TppLabel;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText23: TppDBText;
    grd003: TppLabel;
    o001: TppLabel;
    o002: TppLabel;
    o003: TppLabel;
    o004: TppLabel;
    grade01: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    p001: TppLabel;
    p002: TppLabel;
    p003: TppLabel;
    p004: TppLabel;
    p005: TppLabel;
    p006: TppLabel;
    wa004: TppLabel;
    wa005: TppLabel;
    wa006: TppLabel;
    wa007: TppLabel;
    wa008: TppLabel;
    wa009: TppLabel;
    wa001: TppLabel;
    wa002: TppLabel;
    wa003: TppLabel;
    ppLine1: TppLine;
    p007: TppLabel;
    ppLabel21: TppLabel;
    p107: TppLabel;
    p101: TppLabel;
    p102: TppLabel;
    p103: TppLabel;
    p104: TppLabel;
    p105: TppLabel;
    p106: TppLabel;
    ppLabel20: TppLabel;
    ppDBText3: TppDBText;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBText13: TppDBText;
    wa010: TppLabel;
    ppShape3: TppShape;
    ppMemo6: TppRichText;
    ppShape4: TppShape;
    ppLabel22: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppLabel23: TppLabel;
    hr001: TppLabel;
    ppLabel24: TppLabel;
    hr002: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel27: TppLabel;
    wk01: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine9: TppLine;
    ppLabel33: TppLabel;
    he001: TppLabel;
    he002: TppLabel;
    ppShape5: TppShape;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel36: TppLabel;
    wk02: TppLabel;
    ppLine10: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine11: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel43: TppLabel;
    hn001: TppLabel;
    ht001: TppLabel;
    ht002: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    Label8: TLabel;
    ComboBox2: TComboBox;
    title002: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppLabel37: TppLabel;
    BitBtn9: TBitBtn;
    Query5: TClientDataSet;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label9: TLabel;
    ComboBox3: TComboBox;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    fty001: TppLabel;
    week001: TppLabel;
    ppShape8: TppShape;
    ppLabel46: TppLabel;
    c01: TppLabel;
    ppDBText22: TppDBText;
    x001: TppDBText;
    x002: TppDBText;
    x003: TppDBText;
    x004: TppDBText;
    x005: TppDBText;
    x006: TppDBText;
    x007: TppDBText;
    x008: TppDBText;
    x009: TppDBText;
    x010: TppDBText;
    x011: TppDBText;
    x012: TppDBText;
    x013: TppDBText;
    x014: TppDBText;
    x015: TppDBText;
    x016: TppDBText;
    x017: TppDBText;
    x018: TppDBText;
    x019: TppDBText;
    x020: TppDBText;
    x021: TppDBText;
    x022: TppDBText;
    x023: TppDBText;
    x024: TppDBText;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    c02: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    c03: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    c04: TppLabel;
    c05: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    c06: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    c07: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    c08: TppLabel;
    c09: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    c10: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    c11: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    c12: TppLabel;
    ppLabel47: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel52: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppSummaryBand3: TppSummaryBand;
    ppLine8: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel57: TppLabel;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
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
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLabel58: TppLabel;
    ppLabel61: TppLabel;
    ppLabel64: TppLabel;
    yr001: TppLabel;
    ppShape9: TppShape;
    ppRichText1: TppRichText;
    ppLabel69: TppLabel;
    Label10: TLabel;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel70: TppLabel;
    ppLabel73: TppLabel;
    fty002: TppLabel;
    week002: TppLabel;
    ppLabel119: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel120: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    yr002: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel82: TppLabel;
    ppDBText24: TppDBText;
    ppShape10: TppShape;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppShape11: TppShape;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppShape12: TppShape;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    grade001: TppLabel;
    round001: TppLabel;
    score001: TppLabel;
    BitBtn2: TBitBtn;
    ppReport4: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppLabel76: TppLabel;
    ppLabel81: TppLabel;
    fty004: TppLabel;
    wk004: TppLabel;
    ppLabel87: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppLabel88: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppShape13: TppShape;
    ppLabel89: TppLabel;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBText34: TppDBText;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppDBText35: TppDBText;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppDBCalc44: TppDBCalc;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppDBText36: TppDBText;
    scust001: TppLabel;
    ppLabel96: TppLabel;
    ppMemo1: TppMemo;
    ROQuery1: TClientDataSet;
    BitBtn5: TBitBtn;
    ppReport5: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppShape14: TppShape;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    fty003: TppLabel;
    ppLabel100: TppLabel;
    pkm001: TppLabel;
    ppLabel101: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine59: TppLine;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLine60: TppLine;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLine61: TppLine;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLine64: TppLine;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLine65: TppLine;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel144: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppLabel145: TppLabel;
    ppSystemVariable12: TppSystemVariable;
    wkno001: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppShape15: TppShape;
    ppDBText37: TppDBText;
    ppDBText39: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppLabel140: TppLabel;
    cx001: TppLabel;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    cx002: TppLabel;
    cx003: TppLabel;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText60: TppDBText;
    cx004: TppLabel;
    ppFooterBand5: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppShape22: TppShape;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppParameterList5: TppParameterList;
    ppLabel141: TppLabel;
    dshpm001: TppLabel;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel142: TppLabel;
    cx005: TppLabel;
    ppDBText38: TppDBText;
    cx006: TppLabel;
    ppDBText40: TppDBText;
    ppLabel99: TppLabel;
    ppLine44: TppLine;
    ppLabel102: TppLabel;
    ppShape16: TppShape;
    dx005: TppLabel;
    dx006: TppLabel;
    ppLabel143: TppLabel;
    ppLabel146: TppLabel;
    ppLine46: TppLine;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppReport6: TppReport;
    ppParameterList6: TppParameterList;
    ppHeaderBand6: TppHeaderBand;
    ppDetailBand7: TppDetailBand;
    ppFooterBand6: TppFooterBand;
    ppLabel152: TppLabel;
    ppShape17: TppShape;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel156: TppLabel;
    c_head001: TppLabel;
    ppLabel158: TppLabel;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine54: TppLine;
    ppLine57: TppLine;
    c_title001: TppLabel;
    c_period001: TppLabel;
    ppLabel169: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppLabel170: TppLabel;
    ppSystemVariable14: TppSystemVariable;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLabel157: TppLabel;
    c_shpm001: TppLabel;
    c_budget001: TppLabel;
    c_sl001: TppLabel;
    c_fj001: TppLabel;
    c_gg001: TppLabel;
    c_cg001: TppLabel;
    ppLabel167: TppLabel;
    ppShape18: TppShape;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    c_wa001: TppLabel;
    c_diff001: TppLabel;
    ppLabel147: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand8: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppDBText57: TppDBText;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    gl001: TppLabel;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppDBText58: TppDBText;
    ppLabel155: TppLabel;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLabel176: TppLabel;
    gl002: TppLabel;
    ppLabel185: TppLabel;
    eqty001: TppLabel;
    ppShape21: TppShape;
    ppLine45: TppLine;
    ppLine53: TppLine;
    grade002: TppLabel;
    round002: TppLabel;
    score002: TppLabel;
    eqty002: TppLabel;
    lblcust: TLabel;
    ppLabel161: TppLabel;
    ppLabel166: TppLabel;
    ppDBText59: TppDBText;
    ppDBCalc46: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    p1007: TppLabel;
    ppDBText61: TppDBText;
    o005: TppLabel;
    ppLabel168: TppLabel;
    p1008: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand4BeforePrint(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ppReport4PreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand4BeforePrint(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppDetailBand6BeforePrint(Sender: TObject);
    procedure ppReport5PreviewFormCreate(Sender: TObject);
    procedure ppGroupFooterBand6BeforePrint(Sender: TObject);
    procedure ppReport6PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand7BeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppDetailBand8BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand7BeforePrint(Sender: TObject);
    procedure ppSummaryBand4BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pastreport1;
    procedure pastreport2;
    procedure pastreport3;
    procedure printcomparisonreport(const shpm: string);
  end;

var
  frmpdnpast: Tfrmpdnpast;
  custcolor: string;
  custcolor1: TColor;
  custt4qty,budgetyr:integer;
  custbudget,custdiff:double;
  tm:tdatetime;
  d_shpm:string;
  custcolor01: string;
  custcolor001: TColor;

implementation

uses mainformu, pdnformu, loginfoformu, pdnpast1formu, airsummaryformu,
  pdnpast2formu, exportshpadvformu;

{$R *.dfm}

procedure Tfrmpdnpast.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmpdnpast1<>nil then frmpdnpast1:=nil;
  if frmairsummary<>nil then frmairsummary:=nil;
  action:=cafree;
  frmpdnpast:=nil;
end;

procedure Tfrmpdnpast.FormShow(Sender: TObject);
var
  r53:boolean;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select r56 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r56').isnull then r53:=fieldbyname('r56').value else r53:=false;
  end;
  if r53 then bitbtn9.visible:=true else bitbtn9.visible:=false;
  combobox2.items.Clear;
  combobox2.Items.Add('ALL CUSTS');
  combobox2.Items.Add('CUST BY CUST');
  with query2 do begin
    close;
    params.Clear;
    commandtext:='select distinct f_left(j_no,4) as cust from tbl_erpsop where ddt>=''2012-01-01''';
    open;
    first;
    while not eof do begin
      combobox2.Items.Add(trim(fieldbyname('cust').value));
      application.ProcessMessages;
      next;
    end;
  end;
  with query2 do begin
    close;
    params.Clear;
    commandtext:='select distinct f_right(pdn,2) as cust from tbl_pdn_m where exfty>=''2012-01-01''';
    open;
    first;
    while not eof do begin
      combobox2.Items.Add(trim(fieldbyname('cust').value));
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmpdnpast.BitBtn1Click(Sender: TObject);
begin
  if frmpdnpast2=nil then frmpdnpast2:=tfrmpdnpast2.create(nil);
  frmpdnpast2.show;
end;

procedure Tfrmpdnpast.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmpdnpast.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  //showmessage('g1_0');
  if ppdbcalc1.value>0 then begin
    if abs(ppdbcalc3.Value*100.00/ppdbcalc1.Value)<=1 then grd001.Caption:='A'
    else if abs(ppdbcalc3.Value*100.00/ppdbcalc1.Value)<=2 then grd001.Caption:='B'
    else if abs(ppdbcalc3.Value*100.00/ppdbcalc1.Value)<=3 then grd001.Caption:='C'
    else if abs(ppdbcalc3.Value*100.00/ppdbcalc1.Value)<=4 then grd001.Caption:='D'
    else if abs(ppdbcalc3.Value*100.00/ppdbcalc1.Value)<=5 then grd001.Caption:='F'
    else grd001.Caption:='U';
  end else grd001.Caption:='';
  o002.Caption:=inttostr(ppdbcalc4.value+ppdbcalc5.value+ppdbcalc6.value);
  if ppdbcalc3.Value>ppdbcalc17.Value then ppdbcalc17.Font.Color:=clRed
  else if ppdbcalc3.Value<ppdbcalc17.Value then ppdbcalc17.Font.Color:=clGreen
  else ppdbcalc17.Font.Color:=clBlack;
  //showmessage('g1_1');
end;

procedure Tfrmpdnpast.ppSummaryBand1BeforePrint(Sender: TObject);
var
  dt1,dt2:tdate;
  cust:string;
begin
  //showmessage('s_0');
    if ((combobox2.text>'') and (length(combobox2.text)<=4)) then cust:=combobox2.text;
    //cust:=query1.fieldbyname('cust').value;
    if cust='SALL' then cust:='SL'
    else if cust='SARA' then cust:='SA'
    else if cust='TAMA' then cust:='TM'
    else if cust='TAIL' then cust:='TL'
    else if cust='ESSE' then cust:='ES'
    else if cust='ETAM' then cust:='ET'
    else if cust='WARN' then cust:='WN'
    else if cust='GAPA' then cust:='GP'
    else if cust='MAST' then cust:='MA'
    else if cust='MONO' then cust:='MO'
    else if cust='MEXX' then cust:='MX'
    else if cust='DAXO' then cust:='DA'
    else if cust='NEXT' then cust:='NE'
    else if cust='CANA' then cust:='CA'
    else if cust='LARD' then cust:='LA'
    else if cust='TORD' then cust:='TD'
    else if cust='CMYR' then cust:='CM'
    else if cust='CALD' then cust:='CL'
    else if cust='CANN' then cust:='CN'
    else if cust='MASC' then cust:='MC'
    //else if cust='PLUK' then cust:='PL'
    else if cust='PLST' then cust:='PL'
    else if cust='PLPS' then cust:='PS'
    else if cust='PLPK' then cust:='PK'
    else if cust='PLPZ' then cust:='PZ'
    else if cust='HBIB' then cust:='HB'
    else if cust='HBIU' then cust:='HU'
    else if cust='HBIA' then cust:='HA'
    else if cust='HBIC' then cust:='HC'
    else if cust='HBIP' then cust:='HP'
    else if cust='EBIM' then cust:='EB'
    else if cust='MNSU' then cust:='MU'
    else if cust='ELLO' then cust:='WE'
    else if cust='QVCP' then cust:='QV'
    else if cust='AFGD' then cust:='GD'
    else if cust='AFGH' then cust:='GH'
    else if cust='SAPH' then cust:='SP'
    else if cust='CNAP' then cust:='CP'
    else if cust='AGPO' then cust:='AG'
    else if cust='BEBD' then cust:='BD'
    else if cust='BEBS' then cust:='BS'
    else if cust='BEBZ' then cust:='BZ'
    else if cust='PVHT' then cust:='KF'
    else if cust='CTPF' then cust:='CF'
    else if cust='TBDA' then cust:='TB'
    else if cust='OYSH' then cust:='OS'
    else if cust='DETA' then cust:='DE'
    else if cust='SAXF' then cust:='SX'
    else if cust='DUMF' then cust:='DU'
    else if cust='COSA' then cust:='CO'
    else cust:='';

    hr001.Caption:='0';
    hr002.Caption:=inttostr(ppdbcalc19.Value);
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select min(exfty) as d1 from tbl_pdn_m where f_year(exfty)=:x1 and wk>=:x2 and tplant='''+combobox1.text+'''';
    if cust>'' then begin
      if cust='SL' then
        commandtext:=commandtext+' and f_right(pdn,2) in (''SL'',''AF'')'
      else
        commandtext:=commandtext+' and f_right(pdn,2)='''+cust+'''';
    end;
    params[0].asinteger:=spinedit1.Value;
    params[1].asinteger:=spinedit2.Value;
    open;
    if not fieldbyname('d1').isnull then
    dt1:=fieldbyname('d1').value else dt1:=encodedate(1899,12,30);
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(exfty) as d1 from tbl_pdn_m where f_year(exfty)=:x1 and wk<=:x2 and tplant='''+combobox1.text+'''';
    if cust>'' then begin
      if cust='SL' then
        commandtext:=commandtext+' and f_right(pdn,2) in (''SL'',''AF'')'
      else
        commandtext:=commandtext+' and f_right(pdn,2)='''+cust+'''';
    end;
    params[0].asinteger:=spinedit3.Value;
    params[1].asinteger:=spinedit4.Value;
    open;
    if not fieldbyname('d1').isnull then
    dt2:=fieldbyname('d1').value else dt2:=encodedate(1899,12,30);
  end;
  if (dt1>encodedate(1899,12,30)) and (dt2>encodedate(1899,12,30)) then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select sum(a.hqty) as r1 from tbl_pdn_writeoff a,tbl_pdn_m b where a.seq=b.seq and b.tplant='''+combobox1.text+''' and b.exfty>=:x1 and b.exfty<=:x2 and a.h_ysw=1';
      if cust>'' then begin
        if cust='SL' then
          commandtext:=commandtext+' and f_right(pdn,2) in (''SL'',''AF'')'
        else
          commandtext:=commandtext+' and f_right(pdn,2)='''+cust+'''';
      end;
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      open;
      if not fieldbyname('r1').isnull then begin
        hr001.Caption:=fieldbyname('r1').asstring;
        hr002.Caption:=inttostr(ppdbcalc19.Value-fieldbyname('r1').value);
      end;
    end;
  end;
  he001.Caption:='0';
  he002.Caption:=hr002.Caption;
  hn001.Caption:=he002.Caption;
  ht001.Caption:='0';
  ht002.Caption:=he002.Caption;
  wk01.Caption:=inttostr(weekof(date));
  wk02.Caption:=inttostr(weekof(date));
end;

procedure Tfrmpdnpast.ppDetailBand2BeforePrint(Sender: TObject);
var
  pt,pt1:double;
begin
  //showmessage('dd_0');
  if query2.fieldbyname('sqty').value>0 then begin
    if abs(query2.fieldbyname('diff').Value*100.00/query2.fieldbyname('sqty').Value)<=1 then grd003.Caption:='A'
    else if abs(query2.fieldbyname('diff').Value*100.00/query2.fieldbyname('sqty').Value)<=2 then grd003.Caption:='B'
    else if abs(query2.fieldbyname('diff').value*100.00/query2.fieldbyname('sqty').Value)<=3 then grd003.Caption:='C'
    else if abs(query2.fieldbyname('diff').value*100.00/query2.fieldbyname('sqty').Value)<=4 then grd003.Caption:='D'
    else if abs(query2.fieldbyname('diff').value*100.00/query2.fieldbyname('sqty').Value)<=5 then grd003.Caption:='F'
    else grd003.Caption:='U';
  end else grd003.Caption:='';
  //showmessage('dd_1');

  if (label10.Caption='PDN Qty') or (label10.caption='Both') then begin
    pt:=0; pt1:=0;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select distinct grd,count(*) as cnt from tbl_pdn_past where tm=:x1 and cust=:x2 and seq is not null group by grd';
      params[0].asdatetime:=query1.fieldbyname('tm').value;
      params[1].asstring:=query2.fieldbyname('cust').value;
      open;
      first;
      while not eof do begin
        pt:=pt+fieldbyname('cnt').value;
        if fieldbyname('grd').value='A' then pt1:=pt1+fieldbyname('cnt').value*4.0
        else if fieldbyname('grd').value='B' then pt1:=pt1+fieldbyname('cnt').value*3.0
        else if fieldbyname('grd').value='C' then pt1:=pt1+fieldbyname('cnt').value*2.0
        else if fieldbyname('grd').value='D' then pt1:=pt1+fieldbyname('cnt').value*1.0
        else if fieldbyname('grd').value='F' then pt1:=pt1+fieldbyname('cnt').value*0.0
        else if fieldbyname('grd').value='U' then pt1:=pt1+fieldbyname('cnt').value*(-4.0)
        else if fieldbyname('grd').value='' then pt1:=pt1+1000.0;
        application.ProcessMessages;
        next;
      end;
    end;
  //showmessage('dd_2');
    pt1:=pt1/pt;
    if label10.Caption='PDN Qty' then begin
      if pt1>=100.0 then grd003.caption:=''
      else if pt1>=3.5 then grd003.Caption:='A'
      else if pt1>=2.5 then grd003.Caption:='B'
      else if pt1>=1.5 then grd003.Caption:='C'
      else if pt1>=0.5 then grd003.Caption:='D'
      else if pt1>=-0.5 then grd003.Caption:='F'
      else grd003.Caption:='U';
    end else begin
      if pt1>=100.0 then grd003.caption:=grd003.caption+' / '
      else if pt1>=3.5 then grd003.Caption:=grd003.caption+' / A'
      else if pt1>=2.5 then grd003.Caption:=grd003.caption+' / B'
      else if pt1>=1.5 then grd003.Caption:=grd003.caption+' / C'
      else if pt1>=0.5 then grd003.Caption:=grd003.caption+' / D'
      else if pt1>=-0.5 then grd003.Caption:=grd003.caption+' / F'
      else grd003.Caption:=grd003.caption+' / U';
    end;
  end;
  
  //showmessage('dd_3');
  o004.Caption:=inttostr(query2.fieldbyname('spqty').value+query2.fieldbyname('writeoff').value+query2.fieldbyname('lstqty').value);
  o005.caption:=inttostr(query2.fieldbyname('post_c').value);
  if query2.fieldbyname('diff').value>query2.fieldbyname('ttl').value then ppdbtext13.Font.Color:=clRed
  else if query2.fieldbyname('diff').value<query2.fieldbyname('ttl').value then ppdbtext13.Font.Color:=clGreen
  else ppdbtext13.Font.color:=clBlack;
  //showmessage('dd_4');
end;

procedure Tfrmpdnpast.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
   //showmessage('g2_0');
   with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct tplant,cust,sum(sqty) as sqty,sum(t4qty) as t4qty,sum(diff) as diff,sum(spqty) as spqty,sum(writeoff) as writeoff,'
                  +'sum(lstqty) as lstqty,sum(hqty) as hqty,sum(swing) as swing,sum(ttl) as ttl,sum(post_c) as post_c from tbl_pdn_past where tm=:x1 and tplant='''+query1.fieldbyname('tplant').value+''' ';
      if ((combobox2.text>'') and (length(combobox2.text)<=4)) then commandtext:=commandtext+'and cust='''+combobox2.text+''' ';
      //commandtext:=commandtext+'and cust='''+query1.fieldbyname('cust').value+''' ';
      commandtext:=commandtext+'group by tplant,cust order by tplant,cust';
      params[0].asdatetime:=query1.fieldbyname('tm').value;
      open;
    end;
  //showmessage('g2_1');
end;

procedure Tfrmpdnpast.ppDetailBand1BeforePrint(Sender: TObject);
begin
  //showmessage('d_0');
  if query1.fieldbyname('sqty').value>0 then begin
    if abs(query1.fieldbyname('diff').Value*100.00/query1.fieldbyname('sqty').Value)<=1 then grade01.Caption:='A'
    else if abs(query1.fieldbyname('diff').Value*100.00/query1.fieldbyname('sqty').Value)<=2 then grade01.Caption:='B'
    else if abs(query1.fieldbyname('diff').value*100.00/query1.fieldbyname('sqty').Value)<=3 then grade01.Caption:='C'
    else if abs(query1.fieldbyname('diff').value*100.00/query1.fieldbyname('sqty').Value)<=4 then grade01.Caption:='D'
    else if abs(query1.fieldbyname('diff').value*100.00/query1.fieldbyname('sqty').Value)<=5 then grade01.Caption:='F'
    else grade01.Caption:='U';
  end else grade01.Caption:='';
  o001.Caption:=inttostr(query1.fieldbyname('spqty').value+query1.fieldbyname('writeoff').value+query1.fieldbyname('lstqty').value);
  if query1.fieldbyname('diff').value>query1.fieldbyname('ttl').value then ppdbtext3.Font.Color:=clRed
  else if query1.fieldbyname('diff').value<query1.fieldbyname('ttl').value then ppdbtext3.Font.Color:=clGreen
  else ppdbtext3.Font.color:=clBlack;
  //showmessage('d_1');
end;

procedure Tfrmpdnpast.ppGroupFooterBand3BeforePrint(Sender: TObject);
var
  wk:integer;
  pt,pt1:double;
begin
  //showmessage('g3_0');
  if ppdbcalc9.value>0 then begin
    if abs(ppdbcalc11.Value*100.00/ppdbcalc9.Value)<=1 then grd002.Caption:='A'
    else if abs(ppdbcalc11.Value*100.00/ppdbcalc9.Value)<=2 then grd002.Caption:='B'
    else if abs(ppdbcalc11.Value*100.00/ppdbcalc9.Value)<=3 then grd002.Caption:='C'
    else if abs(ppdbcalc11.Value*100.00/ppdbcalc9.Value)<=4 then grd002.Caption:='D'
    else if abs(ppdbcalc11.Value*100.00/ppdbcalc9.Value)<=5 then grd002.Caption:='F'
    else grd002.Caption:='U';
  end else grd002.Caption:='';

  if (label10.Caption='PDN Qty') or (label10.caption='Both') then begin
  pt:=0; pt1:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct grd,count(*) as cnt from tbl_pdn_past where tm=:x1 and seq is not null group by grd';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      pt:=pt+fieldbyname('cnt').value;
      if fieldbyname('grd').value='A' then pt1:=pt1+fieldbyname('cnt').value*4.0
      else if fieldbyname('grd').value='B' then pt1:=pt1+fieldbyname('cnt').value*3.0
      else if fieldbyname('grd').value='C' then pt1:=pt1+fieldbyname('cnt').value*2.0
      else if fieldbyname('grd').value='D' then pt1:=pt1+fieldbyname('cnt').value*1.0
      else if fieldbyname('grd').value='F' then pt1:=pt1+fieldbyname('cnt').value*0.0
      else if fieldbyname('grd').value='U' then pt1:=pt1+fieldbyname('cnt').value*(-4.0)
      else if fieldbyname('grd').value='' then pt1:=pt1+1000.0;
      application.ProcessMessages;
      next;
    end;
  end;
  pt1:=pt1/pt;
  if label10.caption='Both' then begin
    if pt1>=100.0 then grd002.caption:=grd002.caption+' / '
    else if pt1>=3.5 then grd002.Caption:=grd002.Caption+' / A'
    else if pt1>=2.5 then grd002.Caption:=grd002.Caption+' / B'
    else if pt1>=1.5 then grd002.Caption:=grd002.Caption+' / C'
    else if pt1>=0.5 then grd002.Caption:=grd002.Caption+' / D'
    else if pt1>=-0.5 then grd002.Caption:=grd002.Caption+' / F'
    else grd002.Caption:=grd002.Caption+' / U';
  end else if label10.caption='PDN Qty' then begin
    if pt1>=100.0 then grd002.caption:=''
    else if pt1>=3.5 then grd002.Caption:='A'
    else if pt1>=2.5 then grd002.Caption:='B'
    else if pt1>=1.5 then grd002.Caption:='C'
    else if pt1>=0.5 then grd002.Caption:='D'
    else if pt1>=-0.5 then grd002.Caption:='F'
    else grd002.Caption:='U';
  end;
  end;

  if combobox2.text>'' then begin
    if (combobox2.text='ALL CUSTS') or (combobox2.text='CUST BY CUST') then grd002.Visible:=true
    else grd002.Visible:=false;
  end;
  o003.Caption:=inttostr(ppdbcalc12.value+ppdbcalc13.value+ppdbcalc14.value);
  //if ppdbcalc10.Value>0 then begin
  if ppdbcalc9.Value>0 then begin
    p007.Caption:=formatfloat('#0.00%',ppdbcalc10.Value*100.00/ppdbcalc9.Value);
    p001.Caption:=formatfloat('#0.00%',ppdbcalc12.Value*100.00/ppdbcalc9.Value);
    p002.Caption:=formatfloat('#0.00%',ppdbcalc13.Value*100.00/ppdbcalc9.Value);
    p003.Caption:=formatfloat('#0.00%',ppdbcalc14.Value*100.00/ppdbcalc9.Value);
    p004.Caption:=formatfloat('#0.00%',(ppdbcalc12.Value+ppdbcalc13.value+ppdbcalc14.value)*100.00/ppdbcalc9.Value);
    p005.Caption:=formatfloat('#0.00%',ppdbcalc15.Value*100.00/ppdbcalc9.Value);
    p006.Caption:=formatfloat('#0.00%',ppdbcalc16.Value*100.00/ppdbcalc9.Value);
    p1007.Caption:=formatfloat('#0.00%',ppdbcalc45.Value*100.00/ppdbcalc9.Value);
    p1008.caption:=formatfloat('#0',ppdbcalc15.value+ppdbcalc16.value-ppdbcalc45.value);
  end else begin
    p007.caption:='na';p001.Caption:='na';p002.Caption:='na';p003.Caption:='na';
    p004.Caption:='na';p005.Caption:='na';p006.Caption:='na';p1007.Caption:='na';
  end;
  //if spinedit1.value=spinedit3.Value then wk:=spinedit4.Value-spinedit2.Value+1
  //else wk:=53-spinedit2.Value+spinedit4.Value;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select count(distinct wk) as cnt from tbl_pdn_past where tm=:x1 and seq is not null ';//and cust='''+query1.fieldbyname('cust').value+'''';
      if ((combobox2.text>'') and (length(combobox2.text)<=4)) then commandtext:=commandtext+' and cust='''+combobox2.text+'''';
      params[0].asdatetime:=query1.fieldbyname('tm').value;
      open;
      if fieldbyname('cnt').value>0 then wk:=fieldbyname('cnt').value else wk:=1;
    end;
  wa001.Caption:=formatfloat('#0.00',ppdbcalc9.Value/wk);
  wa002.Caption:=formatfloat('#0.00',ppdbcalc10.Value/wk);
  wa003.Caption:=formatfloat('#0.00',ppdbcalc11.Value/wk);
  wa004.Caption:=formatfloat('#0.00',ppdbcalc12.Value/wk);
  wa005.Caption:=formatfloat('#0.00',ppdbcalc13.Value/wk);
  wa006.Caption:=formatfloat('#0.00',ppdbcalc14.Value/wk);
  wa007.Caption:=formatfloat('#0.00',(ppdbcalc12.Value+ppdbcalc13.value+ppdbcalc14.value)/wk);
  wa008.Caption:=formatfloat('#0.00',ppdbcalc15.Value/wk);
  wa009.Caption:=formatfloat('#0.00',ppdbcalc16.Value/wk);
  wa010.Caption:=formatfloat('#0.00',ppdbcalc18.Value/wk);
  //if ppdbcalc10.Value>0 then begin
  if ppdbcalc9.Value>0 then begin
    p107.Caption:=formatfloat('#0.00%',ppdbcalc10.Value*100.00/ppdbcalc9.Value/wk);
    p101.Caption:=formatfloat('#0.00%',ppdbcalc12.Value*100.00/ppdbcalc9.Value/wk);
    p102.Caption:=formatfloat('#0.00%',ppdbcalc13.Value*100.00/ppdbcalc9.Value/wk);
    p103.Caption:=formatfloat('#0.00%',ppdbcalc14.Value*100.00/ppdbcalc9.Value/wk);
    p104.Caption:=formatfloat('#0.00%',(ppdbcalc12.Value+ppdbcalc13.value+ppdbcalc14.value)*100.00/ppdbcalc9.Value/wk);
    p105.Caption:=formatfloat('#0.00%',ppdbcalc15.Value*100.00/ppdbcalc9.Value/wk);
    p106.Caption:=formatfloat('#0.00%',ppdbcalc16.Value*100.00/ppdbcalc9.Value/wk);
  end else begin
    p107.caption:='na';p101.Caption:='na';p102.Caption:='na';p103.Caption:='na';
    p104.Caption:='na';p105.Caption:='na';p106.Caption:='na';
  end;
  if ppdbcalc11.Value>ppdbcalc18.Value then begin
    ppdbcalc18.font.color:=clred;
    wa010.Font.color:=clRed;
  end else if ppdbcalc11.Value<ppdbcalc18.value then begin
    ppdbcalc18.Font.color:=clGreen;
    wa010.Font.Color:=clGreen;
  end else begin
    ppdbcalc18.Font.Color:=clBlack;
    wa010.Font.Color:=clBlack;
  end;
  //showmessage('g3_1');
end;

procedure Tfrmpdnpast.BitBtn9Click(Sender: TObject);
begin
  if (combobox2.Text<>'ALL CUSTS') and (combobox2.Text<>'CUST BY CUST') then begin
    if combobox1.text>'' then begin
      if frmloginfo=nil then frmloginfo:=tfrmloginfo.create(nil);
      frmloginfo.show;
    end;
  end else begin
    screen.cursor:=crSQLWait;
    try
    if (combobox1.text='SL+GG') or (combobox1.text='SL+FJ+GG') or (combobox1.text='GG+RX') or (combobox1.text='SL+GG+RX') or (combobox1.text='SL+CS+GG+RX') then begin
      //showmessage('0');
      tm:=now;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        if combobox1.text='GG+RX' then
        commandtext:='execute procedure sp_pdn_genlogistic_cost_region1(:x1,:x2,:x3,:x4,:x5)'
        else commandtext:='execute procedure sp_pdn_genlogistic_cost_region(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm;
        params[1].asinteger:=frmpdnpast.spinedit1.value;
        params[2].asinteger:=frmpdnpast.spinedit2.Value;
        params[3].asinteger:=frmpdnpast.spinedit3.Value;
        params[4].asinteger:=frmpdnpast.spinedit4.Value;
        execute;
      end;
      printcomparisonreport('0');
      printcomparisonreport('1');
      {
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct tm,cust,flag60 from tbl_pdn_logisticcost_tmp2 where tm=:x1 and shpm=dshpm order by cust,flag60';
        params[0].asdatetime:=tm;
        open;
        c_period001.Caption:='(from '+inttostr(frmpdnpast.SpinEdit1.value)+' week '+inttostr(frmpdnpast.SpinEdit2.Value)+' to '+inttostr(frmpdnpast.SpinEdit3.value)+' week '+inttostr(frmpdnpast.SpinEdit4.Value)+')';
        c_period002.Caption:='(from '+inttostr(frmpdnpast.SpinEdit1.value)+' week '+inttostr(frmpdnpast.SpinEdit2.Value)+' to '+inttostr(frmpdnpast.SpinEdit3.value)+' week '+inttostr(frmpdnpast.SpinEdit4.Value)+')';
        ppReport6.Print;
      end;
      }
    end else begin
      tm:=now;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        params.createparam(ftstring,'x6',ptinput);
        params.createparam(ftdatetime,'x7',ptinput);
        commandtext:='execute procedure sp_pdn_genlogistic_cost_all_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
        params[0].asstring:=frmpdnpast.combobox1.text;
        params[1].asinteger:=frmpdnpast.spinedit1.value;
        params[2].asinteger:=frmpdnpast.spinedit2.Value;
        params[3].asinteger:=frmpdnpast.spinedit3.Value;
        params[4].asinteger:=frmpdnpast.spinedit4.Value;
        params[5].asstring:='ALL';
        params[6].asdatetime:=tm;
        execute;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_pdn_logisticcost_tmp0 where tm=:x1 order by tplant,cust,flag60';
        params[0].asdatetime:=tm;
        open;
      end;
      fty003.Caption:=ComboBox1.text;
      pkm001.Caption:='ALL';
      wkno001.Caption:='(from '+inttostr(frmpdnpast.SpinEdit1.value)+' week '+inttostr(frmpdnpast.SpinEdit2.Value)+' to '+inttostr(frmpdnpast.SpinEdit3.value)+' week '+inttostr(frmpdnpast.SpinEdit4.Value)+')';
      custcolor:=''; custt4qty:=0; custbudget:=0; custdiff:=0;
      ppReport5.Print;
    end;
    finally
      screen.Cursor:=crDefault;
    end;
  end;
end;

procedure Tfrmpdnpast.BitBtn3Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      if label4.Caption='Week' then
      commandtext:='execute procedure sp_pdn_genairsummary_1(:x1,:x2,:x3,:x4,:x5,:x6,:x7)'
      else commandtext:='execute procedure sp_pdn_genairsummary_1_m(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      params[2].asinteger:=spinedit1.Value;
      params[3].asinteger:=spinedit2.Value;
      params[4].asinteger:=spinedit3.Value;
      params[5].asinteger:=spinedit4.Value;
      params[6].asstring:=combobox3.text;
      execute;
    end;
    if frmairsummary=nil then frmairsummary:=tfrmairsummary.Create(nil);
    if (combobox1.text='') or (combobox1.text='SL+FJ+GG+KB') then frmairsummary.label1.caption:='PH';
    with frmairsummary.query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct tm,mth,cust,sum(ttlcost) as ttlcost,sum(bcost) as bcost from tbl_pdn_airsummary where tm=:x1 ';
      if (combobox2.text<>'ALL CUSTS') and (combobox2.text<>'CUST BY CUST') then
      commandtext:=commandtext+'and cust='''+combobox2.text+''' ';
      commandtext:=commandtext+'group by tm,mth,cust order by mth,cust';
      params[0].asdatetime:=tm;
      open;
    end;
    with frmairsummary.query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct tm,cust,sum(ttlcost) as ttlcost,sum(bcost) as bcost from tbl_pdn_airsummary where tm=:x1 ';
      if (combobox2.text<>'ALL CUSTS') and (combobox2.text<>'CUST BY CUST') then
      commandtext:=commandtext+'and cust='''+combobox2.text+''' ';
      commandtext:=commandtext+'group by tm,cust order by cust';
      params[0].asdatetime:=tm;
      open;
    end;
    with frmairsummary.query4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct tm,rcode,sum(ttlcost) as ttlcost,sum(bcost) as bcost from tbl_pdn_airsummary where tm=:x1 ';
      if (combobox2.text<>'ALL CUSTS') and (combobox2.text<>'CUST BY CUST') then
      commandtext:=commandtext+'and cust='''+combobox2.text+''' ';
      commandtext:=commandtext+'group by tm,rcode order by rcode';
      params[0].asdatetime:=tm;
      open;
    end;
    with frmairsummary.query5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct rcode,rdesc from tbl_pdn_airsummary where tm=:x1 ';
      if (combobox2.text<>'ALL CUSTS') and (combobox2.text<>'CUST BY CUST') then
      commandtext:=commandtext+'and cust='''+combobox2.text+''' ';
      commandtext:=commandtext+'order by rcode';
      params[0].asdatetime:=tm;
      open;
    end;
    with frmairsummary.query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_pdn_airsummary where tm=:x1 ';
      if (combobox2.text<>'ALL CUSTS') and (combobox2.text<>'CUST BY CUST') then
      commandtext:=commandtext+'and cust='''+combobox2.text+''' ';
      commandtext:=commandtext+'order by cust,pdn,seq,afrno,seq1,cstyle,j_no';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('seq').isnull then begin
        frmairsummary.f001.Caption:='Factory: '+combobox1.text;
        frmairsummary.w001.Caption:='Week from: '+inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.Value)+'  to: '+inttostr(spinedit3.Value)+'-'+inttostr(spinedit4.Value);
        frmairsummary.w0002.Caption:='('+frmairsummary.w001.Caption+')';
        if (combobox1.text='SL+FJ+GG+KB') or (combobox1.text='') then begin
          frmairsummary.pplabel107.Caption:='PH Group';
          frmairsummary.pplabel59.Caption:='PH Group';
          frmairsummary.pplabel83.Caption:='PH Group';
          frmairsummary.pplabel39.Visible:=false;
          frmairsummary.pplabel40.Visible:=false;
          frmairsummary.pplabel126.Visible:=false;
          frmairsummary.pplabel125.Visible:=false;
          frmairsummary.pplabel130.Visible:=false;
          frmairsummary.pplabel129.Visible:=false;
        end else begin
          frmairsummary.pplabel107.Caption:='Factory';
          frmairsummary.pplabel59.Caption:='Factory';
          frmairsummary.pplabel83.Caption:='Factory';
          frmairsummary.pplabel39.Visible:=true;
          frmairsummary.pplabel40.Visible:=true;
          frmairsummary.pplabel126.Visible:=true;
          frmairsummary.pplabel125.Visible:=true;
          frmairsummary.pplabel130.Visible:=true;
          frmairsummary.pplabel129.Visible:=true;
        end;
        frmairsummary.ppReport1.Print;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdnpast.pastreport1;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftdatetime,'x6',ptinput);
      if label4.Caption='Week' then begin
        if lblcust.caption='CUST' then begin
          if combobox1.text='CN' then
          commandtext:='execute procedure sp_pdn_past_n_cn(:x1,:x2,:x3,:x4,:x5,:x6)' else
          commandtext:='execute procedure sp_pdn_past_n(:x1,:x2,:x3,:x4,:x5,:x6)';
        end else begin
          if combobox1.text='CN' then
          commandtext:='execute procedure sp_pdn_past_cn(:x1,:x2,:x3,:x4,:x5,:x6)' else
          commandtext:='execute procedure sp_pdn_past(:x1,:x2,:x3,:x4,:x5,:x6)';
        end;
      end else commandtext:='execute procedure sp_pdn_past_m(:x1,:x2,:x3,:x4,:x5,:x6)';
      params[0].asstring:=combobox1.text;
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=spinedit2.Value;
      params[3].asinteger:=spinedit3.Value;
      params[4].asinteger:=spinedit4.Value;
      params[5].asdatetime:=tm;
      execute;
    end;
    if (combobox2.text<>'CUST BY CUST') then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct tplant,cust,sum(sqty) as sqty,sum(t4qty) as t4qty,sum(diff) as diff,sum(spqty) as spqty,sum(writeoff) as writeoff,'
                    +'sum(lstqty) as lstqty,sum(hqty) as hqty,sum(swing) as swing,sum(ttl) as ttl,sum(post_c) as post_c from tbl_pdn_past where tm=:x1 ';
        commandtext:=commandtext+'group by tplant,cust order by tplant,cust';
        params[0].asdatetime:=tm;
        open;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_pdn_past where tm=:x1 ';
        if ((combobox2.text>'') and (length(combobox2.text)<=4)) then commandtext:=commandtext+' and cust='''+combobox2.text+'''';
        commandtext:=commandtext+' order by tplant,yr,wk,pdn';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          if (combobox1.text='CN') and (combobox2.text='WARN') then f001.caption:='Factory  SL' else
          f001.Caption:='Factory  '+combobox1.text;
          w001.Caption:='Week From  '+inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.Value)+'   To  '+inttostr(spinedit3.Value)+'-'+inttostr(spinedit4.Value);
          //if ((combobox2.text>'') and (length(combobox2.text)<=4)) then title002.Caption:='  -  '+combobox2.text+' ' else title002.Caption:='';
          title002.Caption:=' - '+combobox2.text;
          if ((combobox2.text>'') and (length(combobox2.text)<=4)) then ppGroupFooterBand1.Visible:=false
          else ppGroupFooterBand1.Visible:=true;
          ppReport1.Print;
        end;
      end;
    end else begin
      if frmpdnpast1=nil then frmpdnpast1:=tfrmpdnpast1.create(nil);
      with frmpdnpast1.query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct tplant,cust,sum(sqty) as sqty,sum(t4qty) as t4qty,sum(diff) as diff,sum(spqty) as spqty,sum(writeoff) as writeoff,'
                    +'sum(lstqty) as lstqty,sum(hqty) as hqty,sum(swing) as swing,sum(ttl) as ttl,sum(post_c) as post_c from tbl_pdn_past where tm=:x1 ';
        //if ((combobox2.text>'') and (length(combobox2.text)<=4)) then commandtext:=commandtext+'and cust='''+combobox2.text+''' ';
        //commandtext:=commandtext+'and cust='''+query1.fieldbyname('cust').value+''' ';
        commandtext:=commandtext+'group by tplant,cust order by tplant,cust';
        params[0].asdatetime:=tm;
        open;
      end;
      with frmpdnpast1.query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_pdn_past where tm=:x1 and cust>'''' ';
        if ((combobox2.text>'') and (length(combobox2.text)<=4)) then commandtext:=commandtext+' and cust='''+combobox2.text+'''';
        commandtext:=commandtext+' order by tplant,cust,yr,wk,pdn';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          frmpdnpast1.f001.Caption:='Factory  '+combobox1.text;
          if label4.Caption='Week' then
          frmpdnpast1.w001.Caption:='Week From  '+inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.Value)+'   To  '+inttostr(spinedit3.Value)+'-'+inttostr(spinedit4.Value)
          else
          frmpdnpast1.w001.Caption:='Month From  '+inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.Value)+'   To  '+inttostr(spinedit3.Value)+'-'+inttostr(spinedit4.Value);
          frmpdnpast1.ppGroupFooterBand1.Visible:=false;
          frmpdnpast1.ppReport1.Print;
        end;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmpdnpast.pastreport2;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftdatetime,'x6',ptinput);
      if label4.Caption='Week' then
      commandtext:='execute procedure sp_pdn_past_2(:x1,:x2,:x3,:x4,:x5,:x6)'
      else commandtext:='execute procedure sp_pdn_past_2_m(:x1,:x2,:x3,:x4,:x5,:x6)';
      params[0].asstring:=combobox1.text;
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=spinedit2.Value;
      params[3].asinteger:=spinedit3.Value;
      params[4].asinteger:=spinedit4.Value;
      params[5].asdatetime:=tm;
      execute;
    end;
    with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_pdn_diff02 where tm=:x1 ';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          fty001.Caption:=combobox1.text;
          if label4.Caption='Week' then
          week001.Caption:='Week From  '+inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.Value)+'   To  '+inttostr(spinedit3.Value)+'-'+inttostr(spinedit4.Value)
          else
          week001.Caption:='Month From  '+inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.Value)+'   To  '+inttostr(spinedit3.Value)+'-'+inttostr(spinedit4.Value);
          yr001.Caption:='Year  '+inttostr(spinedit1.value);
          ppReport2.Print;
        end;
    end;
    {
    if (combobox2.text<>'CUST BY CUST') then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_pdn_past where tm=:x1 ';
        if ((combobox2.text>'') and (length(combobox2.text)<=4)) then commandtext:=commandtext+' and cust='''+combobox2.text+'''';
        commandtext:=commandtext+' order by tplant,yr,wk,pdn';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          f001.Caption:='Factory  '+combobox1.text;
          w001.Caption:='Week From  '+inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.Value)+'   To  '+inttostr(spinedit3.Value)+'-'+inttostr(spinedit4.Value);
          if ((combobox2.text>'') and (length(combobox2.text)<=4)) then title002.Caption:='  -  '+combobox2.text+' ' else title002.Caption:='';
          if ((combobox2.text>'') and (length(combobox2.text)<=4)) then ppGroupFooterBand1.Visible:=false
          else ppGroupFooterBand1.Visible:=true;
          ppReport1.Print;
        end;
      end;
    end else begin
      if frmpdnpast1=nil then frmpdnpast1:=tfrmpdnpast1.create(nil);
      with frmpdnpast1.query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_pdn_past where tm=:x1 and cust>'''' ';
        if ((combobox2.text>'') and (length(combobox2.text)<=4)) then commandtext:=commandtext+' and cust='''+combobox2.text+'''';
        commandtext:=commandtext+' order by tplant,cust,yr,wk,pdn';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          frmpdnpast1.f001.Caption:='Factory  '+combobox1.text;
          frmpdnpast1.w001.Caption:='Week From  '+inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.Value)+'   To  '+inttostr(spinedit3.Value)+'-'+inttostr(spinedit4.Value);
          frmpdnpast1.ppGroupFooterBand1.Visible:=false;
          frmpdnpast1.ppReport1.Print;
        end;
      end;
    end;
    }
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmpdnpast.ppDetailBand3BeforePrint(Sender: TObject);
begin
  if c01.Caption>'' then begin
    x001.Visible:=true;   x002.Visible:=true;
  end else begin
    x001.Visible:=false;   x002.Visible:=false;
  end;
  if c02.Caption>'' then begin
    x003.Visible:=true;   x004.Visible:=true;
  end else begin
    x003.Visible:=false;   x004.Visible:=false;
  end;
  if c03.Caption>'' then begin
    x005.Visible:=true;   x006.Visible:=true;
  end else begin
    x005.Visible:=false;   x006.Visible:=false;
  end;
  if c04.Caption>'' then begin
    x007.Visible:=true;   x008.Visible:=true;
  end else begin
    x007.Visible:=false;   x008.Visible:=false;
  end;
  if c05.Caption>'' then begin
    x009.Visible:=true;   x010.Visible:=true;
  end else begin
    x009.Visible:=false;   x010.Visible:=false;
  end;
  if c06.Caption>'' then begin
    x011.Visible:=true;   x012.Visible:=true;
  end else begin
    x011.Visible:=false;   x012.Visible:=false;
  end;
  if c07.Caption>'' then begin
    x013.Visible:=true;   x014.Visible:=true;
  end else begin
    x013.Visible:=false;   x014.Visible:=false;
  end;
  if c08.Caption>'' then begin
    x015.Visible:=true;   x016.Visible:=true;
  end else begin
    x015.Visible:=false;   x016.Visible:=false;
  end;
  if c09.Caption>'' then begin
    x017.Visible:=true;   x018.Visible:=true;
  end else begin
    x017.Visible:=false;   x018.Visible:=false;
  end;
  if c10.Caption>'' then begin
    x019.Visible:=true;   x020.Visible:=true;
  end else begin
    x019.Visible:=false;   x020.Visible:=false;
  end;
  if c11.Caption>'' then begin
    x021.Visible:=true;   x022.Visible:=true;
  end else begin
    x021.Visible:=false;   x022.Visible:=false;
  end;
  if c12.Caption>'' then begin
    x023.Visible:=true;   x024.Visible:=true;
  end else begin
    x023.Visible:=false;   x024.Visible:=false;
  end;
  if query1.fieldbyname('d0101').value>query1.fieldbyname('d0102').value then
  x002.Font.Color:=clRed
  else if query1.fieldbyname('d0101').value<query1.fieldbyname('d0102').value then
  x002.font.color:=clGreen else x002.Font.Color:=clBlack;
  if query1.fieldbyname('d0201').value>query1.fieldbyname('d0202').value then
  x004.Font.Color:=clRed
  else if query1.fieldbyname('d0201').value<query1.fieldbyname('d0202').value then
  x004.font.color:=clGreen else x004.Font.Color:=clBlack;
  if query1.fieldbyname('d0301').value>query1.fieldbyname('d0302').value then
  x006.Font.Color:=clRed
  else if query1.fieldbyname('d0301').value<query1.fieldbyname('d0302').value then
  x006.font.color:=clGreen else x006.Font.Color:=clBlack;
  if query1.fieldbyname('d0401').value>query1.fieldbyname('d0402').value then
  x008.Font.Color:=clRed
  else if query1.fieldbyname('d0401').value<query1.fieldbyname('d0402').value then
  x008.font.color:=clGreen else x008.Font.Color:=clBlack;
  if query1.fieldbyname('d0501').value>query1.fieldbyname('d0502').value then
  x010.Font.Color:=clRed
  else if query1.fieldbyname('d0501').value<query1.fieldbyname('d0502').value then
  x010.font.color:=clGreen else x010.Font.Color:=clBlack;
  if query1.fieldbyname('d0601').value>query1.fieldbyname('d0602').value then
  x012.Font.Color:=clRed
  else if query1.fieldbyname('d0601').value<query1.fieldbyname('d0602').value then
  x012.font.color:=clGreen else x012.Font.Color:=clBlack;
  if query1.fieldbyname('d0701').value>query1.fieldbyname('d0702').value then
  x014.Font.Color:=clRed
  else if query1.fieldbyname('d0701').value<query1.fieldbyname('d0702').value then
  x014.font.color:=clGreen else x014.Font.Color:=clBlack;
  if query1.fieldbyname('d0801').value>query1.fieldbyname('d0802').value then
  x016.Font.Color:=clRed
  else if query1.fieldbyname('d0801').value<query1.fieldbyname('d0802').value then
  x016.font.color:=clGreen else x016.Font.Color:=clBlack;
  if query1.fieldbyname('d0901').value>query1.fieldbyname('d0902').value then
  x018.Font.Color:=clRed
  else if query1.fieldbyname('d0901').value<query1.fieldbyname('d0902').value then
  x018.font.color:=clGreen else x018.Font.Color:=clBlack;
  if query1.fieldbyname('d1001').value>query1.fieldbyname('d1002').value then
  x020.Font.Color:=clRed
  else if query1.fieldbyname('d1001').value<query1.fieldbyname('d1002').value then
  x020.font.color:=clGreen else x020.Font.Color:=clBlack;
  if query1.fieldbyname('d1101').value>query1.fieldbyname('d1102').value then
  x022.Font.Color:=clRed
  else if query1.fieldbyname('d1101').value<query1.fieldbyname('d1102').value then
  x022.font.color:=clGreen else x022.Font.Color:=clBlack;
  if query1.fieldbyname('d1201').value>query1.fieldbyname('d1202').value then
  x024.Font.Color:=clRed
  else if query1.fieldbyname('d1201').value<query1.fieldbyname('d1202').value then
  x024.font.color:=clGreen else x024.Font.Color:=clBlack;
end;

procedure Tfrmpdnpast.ppDetailBand6BeforePrint(Sender: TObject);
begin
  budgetyr:=spinedit1.value;
  dshpm001.Caption:='-'; cx005.Caption:='-'; cx006.Caption:='-';
  if query1.fieldbyname('box').value>0 then begin
    cx001.Caption:=formatfloat('#0.00',query1.fieldbyname('t4qty').value*1.00/query1.fieldbyname('box').value);
  end else begin
    cx001.Caption:='0.00';
  end;
  //dest001.Caption:=query1.fieldbyname('cust').value+'1';
  if query1.fieldbyname('t4qty').value>0 then begin
    cx002.Caption:=formatfloat('#0.00',query1.fieldbyname('acost1').value);//*query1.fieldbyname('acost').value*1.0/query1.fieldbyname('at4qty').value);
    cx003.Caption:=formatfloat('#0.00',query1.fieldbyname('bcost1').value);//*query1.fieldbyname('bcost').value*1.0/query1.fieldbyname('bt4qty').value);
    cx004.Caption:=formatfloat('#0.00',query1.fieldbyname('ocost1').value);//*query1.fieldbyname('ocost').value*1.0/query1.fieldbyname('t4qty').value);
  end else begin
    cx002.Caption:='-';
    cx003.Caption:='-';
    cx004.Caption:='-';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select defshpm,budge,budge1,budge2,budge3,b0,b1,b2,b3 from cust_logistic_budget where tplant=:x1 and substr(cust,1,4)=:x2 and prod=:x3';
    params[0].asstring:=frmpdnpast.combobox1.text;
    params[1].asstring:=query1.fieldbyname('cust1').value;
    params[2].asstring:=query1.fieldbyname('flag6').value;
    open;
    if not fieldbyname('defshpm').IsNull then begin
      dshpm001.Caption:=fieldbyname('defshpm').value;
      if (budgetyr=2020) or (budgetyr=2024) or (budgetyr=2028) then begin
        cx005.Caption:=formatfloat('0.00',fieldbyname('budge').value+fieldbyname('b0').value);
        custt4qty:=custt4qty+query1.fieldbyname('t4qty').value;
        custbudget:=custbudget+(fieldbyname('budge').value+fieldbyname('b0').value)*query1.fieldbyname('t4qty').value;
        if pos('AIR',fieldbyname('defshpm').value)>0 then begin
          cx006.Caption:=formatfloat('0.00',-query1.FieldByName('acost2').value+fieldbyname('budge').value+fieldbyname('b0').value);
          custdiff:=custdiff+(-query1.FieldByName('acost2').value+fieldbyname('budge').value+fieldbyname('b0').value)*query1.fieldbyname('at4qty').value;
          if fieldbyname('budge').value+fieldbyname('b0').value>query1.FieldByName('acost2').value then
          cx006.font.Color:=clGreen
          else if fieldbyname('budge').value+fieldbyname('b0').value<query1.FieldByName('acost2').value then
          cx006.font.Color:=clRed else cx006.font.Color:=clBlack;
        end else begin
          cx006.Caption:=formatfloat('0.00',-query1.FieldByName('bcost2').value+fieldbyname('budge').value+fieldbyname('b0').value);
          custdiff:=custdiff+(-query1.FieldByName('bcost2').value+fieldbyname('budge').value+fieldbyname('b0').value)*query1.fieldbyname('bt4qty').value;
          if fieldbyname('budge').value+fieldbyname('b0').value>query1.FieldByName('bcost2').value then
          cx006.font.Color:=clGreen
          else if fieldbyname('budge').value+fieldbyname('b0').value<query1.FieldByName('bcost2').value then
          cx006.font.Color:=clRed else cx006.font.Color:=clBlack;
        end;
      end else if (budgetyr=2021) or (budgetyr=2025) or (budgetyr=2027) then begin
        cx005.Caption:=formatfloat('0.00',fieldbyname('budge1').value+fieldbyname('b1').value);
        custt4qty:=custt4qty+query1.fieldbyname('t4qty').value;
        custbudget:=custbudget+(fieldbyname('budge1').value+fieldbyname('b1').value)*query1.fieldbyname('t4qty').value;
        if pos('AIR',fieldbyname('defshpm').value)>0 then begin
          cx006.Caption:=formatfloat('0.00',-query1.FieldByName('acost2').value+fieldbyname('budge1').value+fieldbyname('b1').value);
          custdiff:=custdiff+(-query1.FieldByName('acost2').value+fieldbyname('budge1').value+fieldbyname('b1').value)*query1.fieldbyname('at4qty').value;
          if fieldbyname('budge1').value+fieldbyname('b1').value>query1.FieldByName('acost2').value then
          cx006.font.Color:=clGreen
          else if fieldbyname('budge1').value+fieldbyname('b1').value<query1.FieldByName('acost2').value then
          cx006.font.Color:=clRed else cx006.font.Color:=clBlack;
        end else begin
          cx006.Caption:=formatfloat('0.00',-query1.FieldByName('bcost2').value+fieldbyname('budge1').value+fieldbyname('b1').value);
          custdiff:=custdiff+(-query1.FieldByName('bcost2').value+fieldbyname('budge1').value+fieldbyname('b1').value)*query1.fieldbyname('bt4qty').value;
          if fieldbyname('budge1').value+fieldbyname('b1').value>query1.FieldByName('bcost2').value then
          cx006.font.Color:=clGreen
          else if fieldbyname('budge1').value+fieldbyname('b1').value<query1.FieldByName('bcost2').value then
          cx006.font.Color:=clRed else cx006.font.Color:=clBlack;
        end;
      end else if (budgetyr=2022) or (budgetyr=2026) or (budgetyr=2030) then begin
        cx005.Caption:=formatfloat('0.00',fieldbyname('budge2').value+fieldbyname('b2').value);
        custt4qty:=custt4qty+query1.fieldbyname('t4qty').value;
        custbudget:=custbudget+(fieldbyname('budge2').value+fieldbyname('b2').value)*query1.fieldbyname('t4qty').value;
        if pos('AIR',fieldbyname('defshpm').value)>0 then begin
          cx006.Caption:=formatfloat('0.00',-query1.FieldByName('acost2').value+fieldbyname('budge2').value+fieldbyname('b2').value);
          custdiff:=custdiff+(-query1.FieldByName('acost2').value+fieldbyname('budge2').value+fieldbyname('b2').value)*query1.fieldbyname('at4qty').value;
          if fieldbyname('budge2').value+fieldbyname('b2').value>query1.FieldByName('acost2').value then
          cx006.font.Color:=clGreen
          else if fieldbyname('budge2').value+fieldbyname('b2').value<query1.FieldByName('acost2').value then
          cx006.font.Color:=clRed else cx006.font.Color:=clBlack;
        end else begin
          cx006.Caption:=formatfloat('0.00',-query1.FieldByName('bcost2').value+fieldbyname('budge2').value+fieldbyname('b2').value);
          custdiff:=custdiff+(-query1.FieldByName('bcost2').value+fieldbyname('budge2').value+fieldbyname('b2').value)*query1.fieldbyname('bt4qty').value;
          if fieldbyname('budge2').value+fieldbyname('b2').value>query1.FieldByName('bcost2').value then
          cx006.font.Color:=clGreen
          else if fieldbyname('budge2').value+fieldbyname('b2').value<query1.FieldByName('bcost2').value then
          cx006.font.Color:=clRed else cx006.font.Color:=clBlack;
        end;
      end else if (budgetyr=2023) or (budgetyr=2027) or (budgetyr=2031) then begin
        cx005.Caption:=formatfloat('0.00',fieldbyname('budge3').value+fieldbyname('b3').value);
        custt4qty:=custt4qty+query1.fieldbyname('t4qty').value;
        custbudget:=custbudget+(fieldbyname('budge3').value+fieldbyname('b3').value)*query1.fieldbyname('t4qty').value;
        if pos('AIR',fieldbyname('defshpm').value)>0 then begin
          cx006.Caption:=formatfloat('0.00',-query1.FieldByName('acost2').value+fieldbyname('budge3').value+fieldbyname('b3').value);
          custdiff:=custdiff+(-query1.FieldByName('acost2').value+fieldbyname('budge3').value+fieldbyname('b3').value)*query1.fieldbyname('at4qty').value;
          if fieldbyname('budge3').value+fieldbyname('b3').value>query1.FieldByName('acost2').value then
          cx006.font.Color:=clGreen
          else if fieldbyname('budge3').value+fieldbyname('b3').value<query1.FieldByName('acost2').value then
          cx006.font.Color:=clRed else cx006.font.Color:=clBlack;
        end else begin
          cx006.Caption:=formatfloat('0.00',-query1.FieldByName('bcost2').value+fieldbyname('budge3').value+fieldbyname('b3').value);
          custdiff:=custdiff+(-query1.FieldByName('bcost2').value+fieldbyname('budge3').value+fieldbyname('b3').value)*query1.fieldbyname('bt4qty').value;
          if fieldbyname('budge3').value+fieldbyname('b3').value>query1.FieldByName('bcost2').value then
          cx006.font.Color:=clGreen
          else if fieldbyname('budge3').value+fieldbyname('b3').value<query1.FieldByName('bcost2').value then
          cx006.font.Color:=clRed else cx006.font.Color:=clBlack;
        end;
      end;
    end;
  end;
  if custcolor='' then begin
    custcolor:=query1.FieldByName('cust').Value;
    ppshape15.Brush.Color:=clWhite;
    custcolor1:=ppshape15.Brush.Color;
  end else begin
    if (custcolor<>query1.FieldByName('cust').Value) then begin
      if (custcolor1=clWhite) then
      ppshape15.Brush.Color:=$00EEEEEE//clSilver
      else ppshape15.Brush.Color:=clWhite;
    end else begin
      if (custcolor1=clWhite) then
      ppshape15.Brush.Color:=clWhite
      else ppshape15.Brush.Color:=$00EEEEEE;//clSilver;
    end;
    custcolor:=query1.FieldByName('cust').Value;
    custcolor1:=ppshape15.Brush.Color;
  end;
end;

procedure Tfrmpdnpast.ppDetailBand7BeforePrint(Sender: TObject);
var
  slcost,cgcost:double;
begin
  budgetyr:=spinedit1.value;
  //c_dest001.Caption:=query1.fieldbyname('cust').value;//+'1';
  c_budget001.Caption:='0.00';
  c_sl001.Caption:='-'; c_fj001.Caption:='-'; c_gg001.Caption:='-';
  c_cg001.Caption:='-';
  slcost:=0; cgcost:=0;
  c_wa001.Caption:='-'; c_diff001.Caption:='-'; //gl001.Caption:='-';
  if d_shpm='0' then begin
    c_shpm001.Caption:='OCEAN';
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select distinct defshpm,budge,budge1,budge2,budge3 from cust_logistic_budget where substr(cust,1,4)=:x1 and prod=:x2 and tplant=''SL''';
      params[0].asstring:=query1.fieldbyname('cust1').value;
      params[1].asstring:=query1.fieldbyname('flag60').value;
      open;
      if not fieldbyname('defshpm').isnull then begin
        c_shpm001.Caption:=fieldbyname('defshpm').value;
        if (budgetyr=2020) or (budgetyr=2024) or (budgetyr=2028) then
        c_budget001.Caption:=formatfloat('0.00',fieldbyname('budge').value)
        else if (budgetyr=2021) or (budgetyr=2025) or (budgetyr=2029) then
        c_budget001.Caption:=formatfloat('0.00',fieldbyname('budge1').value)
        else if (budgetyr=2022) or (budgetyr=2026) or (budgetyr=2030) then
        c_budget001.Caption:=formatfloat('0.00',fieldbyname('budge2').value)
        else if (budgetyr=2023) or (budgetyr=2027) or (budgetyr=2031) then
        c_budget001.Caption:=formatfloat('0.00',fieldbyname('budge3').value);
      end;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select sum(fobcost)/sum(t4qty) as x1,sum(t4qty) as x2 from tbl_pdn_logisticcost_tmp2 where tm=:x1 and cust=:x2 and flag60=:x3 and shpm=dshpm and tplant in (''SL'',''GG'',''CL'',''RX'')';
      params[0].asdatetime:=query1.fieldbyname('tm').value;
      params[1].asstring:=query1.fieldbyname('cust').value;
      params[2].asstring:=query1.fieldbyname('flag60').value;
      open;
      if not fieldbyname('x1').isnull then begin
        c_wa001.Caption:=formatfloat('0.00',fieldbyname('x1').value);
        c_diff001.Caption:=formatfloat('0.00',-fieldbyname('x1').value+strtofloat(c_budget001.Caption));
        gl001.Caption:=formatfloat('0.00',(-fieldbyname('x1').value+strtofloat(c_budget001.Caption))*fieldbyname('x2').value);
      end;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select distinct tplant,sum(fobcost)/sum(t4qty) as x1 from tbl_pdn_logisticcost_tmp2 where tm=:x1 and cust=:x2 and flag60=:x3 and shpm=dshpm and tplant in (''SL'') group by tplant';
      params[0].asdatetime:=query1.fieldbyname('tm').value;
      params[1].asstring:=query1.fieldbyname('cust').value;
      params[2].asstring:=query1.fieldbyname('flag60').value;
      open;
      first;
      while not eof do begin
        //if fieldbyname('tplant').value='SL' then begin
          c_sl001.Caption:=formatfloat('0.00',fieldbyname('x1').value);
          slcost:=fieldbyname('x1').value;
        //end else begin
        //  c_cg001.Caption:=formatfloat('0.00',fieldbyname('x1').value);
        //  cgcost:=fieldbyname('x1').value;
        //end;
        application.ProcessMessages;
        next;
      end;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select distinct tplant,sum(fobcost)/sum(t4qty) as x1 from tbl_pdn_logisticcost_tmp2 where tm=:x1 and cust=:x2 and flag60=:x3 and shpm=dshpm and tplant not in (''SL'') group by tplant';
      params[0].asdatetime:=query1.fieldbyname('tm').value;
      params[1].asstring:=query1.fieldbyname('cust').value;
      params[2].asstring:=query1.fieldbyname('flag60').value;
      open;
      first;
      while not eof do begin
        if fieldbyname('tplant').value='RX' then c_fj001.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ('+formatfloat('0.00',slcost-fieldbyname('x1').value)+') '
        else if fieldbyname('tplant').value='GG' then c_gg001.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ('+formatfloat('0.00',slcost-fieldbyname('x1').value)+') '
        else if fieldbyname('tplant').value='CL' then c_cg001.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ('+formatfloat('0.00',slcost-fieldbyname('x1').value)+') ';
        application.ProcessMessages;
        next;
      end;
    end;
  end else begin
    c_shpm001.Caption:=query1.fieldbyname('shpm').value;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select distinct budge,budge1,budge2,budge3 from cust_logistic_budget where substr(cust,1,4)=:x1 and prod=:x2 and tplant=''SL''';
      params[0].asstring:=query1.fieldbyname('cust1').value;
      params[1].asstring:=query1.fieldbyname('flag60').value;
      open;
      if not fieldbyname('budge').isnull then begin
        if (budgetyr=2020) or (budgetyr=2024) or (budgetyr=2028) then
        c_budget001.Caption:=formatfloat('0.00',fieldbyname('budge').value)
        else if (budgetyr=2021) or (budgetyr=2025) or (budgetyr=2029) then
        c_budget001.Caption:=formatfloat('0.00',fieldbyname('budge1').value)
        else if (budgetyr=2022) or (budgetyr=2026) or (budgetyr=2030) then
        c_budget001.Caption:=formatfloat('0.00',fieldbyname('budge2').value)
        else if (budgetyr=2023) or (budgetyr=2027) or (budgetyr=2031) then
        c_budget001.Caption:=formatfloat('0.00',fieldbyname('budge3').value);
      end;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select sum(fobcost)/sum(t4qty) as x1,sum(t4qty) as x2 from tbl_pdn_logisticcost_tmp2 where tm=:x1 and cust=:x2 and flag60=:x3 and shpm<>dshpm and tplant in (''SL'',''GG'',''CL'',''RX'')';
      params[0].asdatetime:=query1.fieldbyname('tm').value;
      params[1].asstring:=query1.fieldbyname('cust').value;
      params[2].asstring:=query1.fieldbyname('flag60').value;
      open;
      if not fieldbyname('x1').isnull then begin
        c_wa001.Caption:=formatfloat('0.00',fieldbyname('x1').value);
        c_diff001.Caption:=formatfloat('0.00',-fieldbyname('x1').value+strtofloat(c_budget001.Caption));
        //gl001.Caption:=formatfloat('0.00',(-fieldbyname('x1').value+strtofloat(c_budget001.Caption))*fieldbyname('x2').value);
      end;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select distinct tplant,sum(fobcost)/sum(t4qty) as x1 from tbl_pdn_logisticcost_tmp2 where tm=:x1 and cust=:x2 and flag60=:x3 and shpm<>dshpm and tplant in (''SL'') group by tplant';
      params[0].asdatetime:=query1.fieldbyname('tm').value;
      params[1].asstring:=query1.fieldbyname('cust').value;
      params[2].asstring:=query1.fieldbyname('flag60').value;
      open;
      first;
      while not eof do begin
        //if fieldbyname('tplant').value='SL' then begin
          c_sl001.Caption:=formatfloat('0.00',fieldbyname('x1').value);
          slcost:=fieldbyname('x1').value;
        //end else begin
        //  c_cg001.Caption:=formatfloat('0.00',fieldbyname('x1').value);
        //  cgcost:=fieldbyname('x1').value;
        //end;
        application.ProcessMessages;
        next;
      end;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select distinct tplant,sum(fobcost)/sum(t4qty) as x1 from tbl_pdn_logisticcost_tmp2 where tm=:x1 and cust=:x2 and flag60=:x3 and shpm<>dshpm and tplant not in (''SL'') group by tplant';
      params[0].asdatetime:=query1.fieldbyname('tm').value;
      params[1].asstring:=query1.fieldbyname('cust').value;
      params[2].asstring:=query1.fieldbyname('flag60').value;
      open;
      first;
      while not eof do begin
        if fieldbyname('tplant').value='RX' then c_fj001.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ('+formatfloat('0.00',slcost-fieldbyname('x1').value)+') '
        else if fieldbyname('tplant').value='GG' then c_gg001.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ('+formatfloat('0.00',slcost-fieldbyname('x1').value)+') '
        else if fieldbyname('tplant').value='CL' then c_cg001.Caption:=formatfloat('0.00',fieldbyname('x1').value)+' ('+formatfloat('0.00',slcost-fieldbyname('x1').value)+') ';
        application.ProcessMessages;
        next;
      end;
    end;
    {
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select distinct tplant,sum(fobcost)/sum(t4qty) as x1 from tbl_pdn_logisticcost_tmp2 where tm=:x1 and cust=:x2 and flag60=:x3 and shpm<>dshpm group by tplant';
      params[0].asdatetime:=query1.fieldbyname('tm').value;
      params[1].asstring:=query1.fieldbyname('cust').value;
      params[2].asstring:=query1.fieldbyname('flag60').value;
      open;
      first;
      while not eof do begin
        if fieldbyname('tplant').value='SL' then c_sl001.Caption:='HKD '+formatfloat('0.00',fieldbyname('x1').value)
        else if fieldbyname('tplant').value='FJ' then c_fj001.Caption:='HKD '+formatfloat('0.00',fieldbyname('x1').value)
        else if fieldbyname('tplant').value='GG' then c_gg001.Caption:='HKD '+formatfloat('0.00',fieldbyname('x1').value)
        else if fieldbyname('tplant').value='CG' then c_cg001.Caption:='HKD '+formatfloat('0.00',fieldbyname('x1').value)
        else if fieldbyname('tplant').value='KB' then c_kb001.Caption:='HKD '+formatfloat('0.00',fieldbyname('x1').value);
        application.ProcessMessages;
        next;
      end;
    end;
    }
  end;
  if custcolor01='' then begin
    custcolor01:=query1.FieldByName('cust').Value;
    ppshape18.Brush.Color:=clWhite;
    custcolor001:=ppshape18.Brush.Color;
  end else begin
    if (custcolor01<>query1.FieldByName('cust').Value) then begin
      if (custcolor001=clWhite) then
      ppshape18.Brush.Color:=$00EEEEEE//clSilver
      else ppshape18.Brush.Color:=clWhite;
    end else begin
      if (custcolor001=clWhite) then
      ppshape18.Brush.Color:=clWhite
      else ppshape18.Brush.Color:=$00EEEEEE;//clSilver;
    end;
    custcolor01:=query1.FieldByName('cust').Value;
    custcolor001:=ppshape18.Brush.Color;
  end;
end;

procedure Tfrmpdnpast.ppDetailBand8BeforePrint(Sender: TObject);
begin
  budgetyr:=spinedit1.value;
  gl001.caption:='0.00';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select defshpm,budge,budge1,budge2,budge3,b0,b1,b2,b3 from cust_logistic_budget where tplant=:x1 and substr(cust,1,4)=:x2 and prod=:x3';
    params[0].asstring:=frmpdnpast.combobox1.text;
    params[1].asstring:=query1.fieldbyname('cust1').value;
    params[2].asstring:=query1.fieldbyname('flag6').value;
    open;
    if not fieldbyname('defshpm').IsNull then begin
      if (budgetyr=2020) or (budgetyr=2024) or (budgetyr=2028) then begin
        gl001.Caption:=formatfloat('0.00',-query1.FieldByName('tcost').value+(fieldbyname('budge').value+fieldbyname('b0').value)*query1.fieldbyname('t4qty').value);
      end else if (budgetyr=2021) or (budgetyr=2025) or (budgetyr=2029) then begin
        gl001.Caption:=formatfloat('0.00',-query1.FieldByName('tcost').value+(fieldbyname('budge1').value+fieldbyname('b1').value)*query1.fieldbyname('t4qty').value);
      end else if (budgetyr=2022) or (budgetyr=2026) or (budgetyr=2030) then begin
        gl001.Caption:=formatfloat('0.00',-query1.FieldByName('tcost').value+(fieldbyname('budge2').value+fieldbyname('b2').value)*query1.fieldbyname('t4qty').value);
      end else if (budgetyr=2023) or (budgetyr=2027) or (budgetyr=2031) then begin
        gl001.Caption:=formatfloat('0.00',-query1.FieldByName('tcost').value+(fieldbyname('budge3').value+fieldbyname('b3').value)*query1.fieldbyname('t4qty').value);
      end;
    end;
  end;
end;

procedure Tfrmpdnpast.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmpdnpast.ppHeaderBand2BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select * from tbl_pdn_diff01 where tm=:x1';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('c01').isnull then c01.Caption:=fieldbyname('c01').value
    else c01.Caption:='';
    if not fieldbyname('c02').isnull then c02.Caption:=fieldbyname('c02').value
    else c02.Caption:='';
    if not fieldbyname('c03').isnull then c03.Caption:=fieldbyname('c03').value
    else c03.Caption:='';
    if not fieldbyname('c04').isnull then c04.Caption:=fieldbyname('c04').value
    else c04.Caption:='';
    if not fieldbyname('c05').isnull then c05.Caption:=fieldbyname('c05').value
    else c05.Caption:='';
    if not fieldbyname('c06').isnull then c06.Caption:=fieldbyname('c06').value
    else c06.Caption:='';
    if not fieldbyname('c07').isnull then c07.Caption:=fieldbyname('c07').value
    else c07.Caption:='';
    if not fieldbyname('c08').isnull then c08.Caption:=fieldbyname('c08').value
    else c08.Caption:='';
    if not fieldbyname('c09').isnull then c09.Caption:=fieldbyname('c09').value
    else c09.Caption:='';
    if not fieldbyname('c10').isnull then c10.Caption:=fieldbyname('c10').value
    else c10.Caption:='';
    if not fieldbyname('c11').isnull then c11.Caption:=fieldbyname('c11').value
    else c11.Caption:='';
    if not fieldbyname('c12').isnull then c12.Caption:=fieldbyname('c12').value
    else c12.Caption:='';
  end;
end;

procedure Tfrmpdnpast.ppSummaryBand3BeforePrint(Sender: TObject);
begin
  //
  if c09.Caption>'' then begin
    ppdbcalc36.Visible:=true;  ppdbcalc37.Visible:=true;
  end else begin
    ppdbcalc36.Visible:=false;  ppdbcalc37.Visible:=false;
  end;
  if c10.Caption>'' then begin
    ppdbcalc38.Visible:=true;  ppdbcalc39.Visible:=true;
  end else begin
    ppdbcalc38.Visible:=false;  ppdbcalc39.Visible:=false;
  end;
  if c11.Caption>'' then begin
    ppdbcalc40.Visible:=true;  ppdbcalc41.Visible:=true;
  end else begin
    ppdbcalc40.Visible:=false;  ppdbcalc41.Visible:=false;
  end;
  if c12.Caption>'' then begin
    ppdbcalc42.Visible:=true;  ppdbcalc43.Visible:=true;
  end else begin
    ppdbcalc42.Visible:=false;  ppdbcalc43.Visible:=false;
  end;
  if ppdbcalc20.Value>ppdbcalc21.Value then
  ppdbcalc21.Font.Color:=clRed
  else if ppdbcalc20.value<ppdbcalc21.Value then
  ppdbcalc21.Font.color:=clGreen else ppdbcalc21.Font.Color:=clBlack;
  if ppdbcalc22.Value>ppdbcalc23.Value then
  ppdbcalc23.Font.Color:=clRed
  else if ppdbcalc22.value<ppdbcalc23.Value then
  ppdbcalc23.Font.color:=clGreen else ppdbcalc23.Font.Color:=clBlack;
  if ppdbcalc24.Value>ppdbcalc25.Value then
  ppdbcalc25.Font.Color:=clRed
  else if ppdbcalc24.value<ppdbcalc25.Value then
  ppdbcalc25.Font.color:=clGreen else ppdbcalc25.Font.Color:=clBlack;
  if ppdbcalc26.Value>ppdbcalc27.Value then
  ppdbcalc27.Font.Color:=clRed
  else if ppdbcalc26.value<ppdbcalc27.Value then
  ppdbcalc27.Font.color:=clGreen else ppdbcalc27.Font.Color:=clBlack;
  if ppdbcalc28.Value>ppdbcalc29.Value then
  ppdbcalc29.Font.Color:=clRed
  else if ppdbcalc28.value<ppdbcalc29.Value then
  ppdbcalc29.Font.color:=clGreen else ppdbcalc29.Font.Color:=clBlack;
  if ppdbcalc30.Value>ppdbcalc31.Value then
  ppdbcalc31.Font.Color:=clRed
  else if ppdbcalc30.value<ppdbcalc31.Value then
  ppdbcalc31.Font.color:=clGreen else ppdbcalc31.Font.Color:=clBlack;
  if ppdbcalc32.Value>ppdbcalc33.Value then
  ppdbcalc33.Font.Color:=clRed
  else if ppdbcalc32.value<ppdbcalc33.Value then
  ppdbcalc33.Font.color:=clGreen else ppdbcalc33.Font.Color:=clBlack;
  if ppdbcalc34.Value>ppdbcalc35.Value then
  ppdbcalc35.Font.Color:=clRed
  else if ppdbcalc34.value<ppdbcalc35.Value then
  ppdbcalc35.Font.color:=clGreen else ppdbcalc35.Font.Color:=clBlack;
  if ppdbcalc36.Value>ppdbcalc37.Value then
  ppdbcalc37.Font.Color:=clRed
  else if ppdbcalc36.value<ppdbcalc37.Value then
  ppdbcalc37.Font.color:=clGreen else ppdbcalc37.Font.Color:=clBlack;
  if ppdbcalc38.Value>ppdbcalc39.Value then
  ppdbcalc39.Font.Color:=clRed
  else if ppdbcalc38.value<ppdbcalc39.Value then
  ppdbcalc39.Font.color:=clGreen else ppdbcalc39.Font.Color:=clBlack;
  if ppdbcalc40.Value>ppdbcalc41.Value then
  ppdbcalc41.Font.Color:=clRed
  else if ppdbcalc40.value<ppdbcalc41.Value then
  ppdbcalc41.Font.color:=clGreen else ppdbcalc41.Font.Color:=clBlack;
  if ppdbcalc42.Value>ppdbcalc43.Value then
  ppdbcalc43.Font.Color:=clRed
  else if ppdbcalc42.value<ppdbcalc43.Value then
  ppdbcalc43.Font.color:=clGreen else ppdbcalc43.Font.Color:=clBlack;
end;

procedure Tfrmpdnpast.ppSummaryBand4BeforePrint(Sender: TObject);
var
  rslt:double;
  oround,sqty,eqty:integer;
  oscore,grds:double;
  grd:string;
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(oround) as x1,sum(oscore) as x2 from tbl_pdn_custgrd where tm=:x1';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then oround:=fieldbyname('x1').value else oround:=0;
    if not fieldbyname('x2').isnull then oscore:=fieldbyname('x2').value else oscore:=0;
  end;
  round002.caption:='TTL # of Round = '+inttostr(oround);
  score002.Caption:='TTL Score = '+formatfloat('#0',oscore);
  if oround>0 then rslt:=oscore/oround else rslt:=0;
  if rslt>=3.5 then grade002.Caption:='Overall Grading Marks by fty : A'
  else if rslt>=2.5 then grade002.Caption:='Overall Grading Marks by fty : B'
  else if rslt>=1.5 then grade002.Caption:='Overall Grading Marks by fty : C'
  else if rslt>=0.5 then grade002.Caption:='Overall Grading Marks by fty : D'
  else if rslt>=-0.5 then grade002.Caption:='Overall Grading Marks by fty : F'
  else grade002.Caption:='Overall Grading Marks by fty : U';
  with query4 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    if lblcust.caption='CUST' then
    commandtext:='select * from sp_pdn_past_eqty_n(:x1,:x2,:x3,:x4,:x5,:x6)'
    else commandtext:='select * from sp_pdn_past_eqty(:x1,:x2,:x3,:x4,:x5,:x6)';
    params[0].asstring:=combobox1.text;
    params[1].asinteger:=spinedit1.value;
    params[2].asinteger:=spinedit2.value;
    params[3].asinteger:=spinedit3.value;
    params[4].asinteger:=spinedit4.value;
    params[5].asstring:='';
    open;
    eqty:=fieldbyname('eqty').value;
    sqty:=fieldbyname('sqty').value;
    eqty002.caption:='Total Ex-fty Qty  '+fieldbyname('eqty').asstring;
    grds:=eqty*100.00/sqty;
    if grds>=99.00 then grd:='A'
    else if grds>=98.00 then grd:='B'
    else if grds>=97.00 then grd:='C'
    else if grds>=96.00 then grd:='D'
    else if grds>=95.00 then grd:='F'
    else grd:='U';
    eqty002.caption:=eqty002.caption+'       Grade: '+grd+' ('+formatfloat('0.00%',grds)+')';
  end;
end;

procedure Tfrmpdnpast.printcomparisonreport(const shpm: string);
begin
  d_shpm:=shpm;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    if shpm='0' then
    commandtext:='select distinct tm,cust,flag60,cust1 from tbl_pdn_logisticcost_tmp2 where tm=:x1 and shpm=dshpm order by cust1,cust,flag60'
    else commandtext:='select distinct tm,cust,flag60,shpm,cust1 from tbl_pdn_logisticcost_tmp2 where tm=:x1 and shpm<>dshpm order by cust1,cust,flag60';
    params[0].asdatetime:=tm;
    open;
    if not fieldbyname('tm').isnull then begin
      if shpm='0' then begin
        c_title001.Caption:=' - Default Transit Mode / China & Off-shore figure  ';
        c_head001.Caption:='Default Transit Mode ';
      end else begin
        c_title001.Caption:=' - Transit Mode Change / China & Off-shore figure  ';
        c_head001.Caption:='Transit Mode Change ';
      end;
      c_period001.Caption:='(from '+inttostr(frmpdnpast.SpinEdit1.value)+' week '+inttostr(frmpdnpast.SpinEdit2.Value)+' to '+inttostr(frmpdnpast.SpinEdit3.value)+' week '+inttostr(frmpdnpast.SpinEdit4.Value)+')';
      custcolor01:='';
      ppshape18.Brush.Color:=clWhite;
      ppReport6.Print;
    end;
  end;
end;

procedure Tfrmpdnpast.pastreport3;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftdatetime,'x6',ptinput);
      if label4.Caption='Week' then begin
        if lblcust.caption='CUST' then
        commandtext:='execute procedure sp_pdn_past_grd_n(:x1,:x2,:x3,:x4,:x5,:x6)'
        else commandtext:='execute procedure sp_pdn_past_grd(:x1,:x2,:x3,:x4,:x5,:x6)';
      end else commandtext:='execute procedure sp_pdn_past_grd_m(:x1,:x2,:x3,:x4,:x5,:x6)';
      params[0].asstring:=combobox1.text;
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=spinedit2.Value;
      params[3].asinteger:=spinedit3.Value;
      params[4].asinteger:=spinedit4.Value;
      params[5].asdatetime:=tm;
      execute;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_pdn_custgrd where tm=:x1';
      if (combobox2.text<>'ALL CUSTS') and (combobox2.text<>'CUST BY CUST') then
      commandtext:=commandtext+' and ocust='''+combobox2.text+'''';
      commandtext:=commandtext+' order by ocust,ogrd';
      params[0].asdatetime:=tm;
      open;
        if not fieldbyname('ocust').isnull then begin
          fty002.Caption:=combobox1.text;
          if label4.Caption='Week' then
          week002.Caption:='Week From  '+inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.Value)+'   To  '+inttostr(spinedit3.Value)+'-'+inttostr(spinedit4.Value)
          else
          week002.Caption:='Month From  '+inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.Value)+'   To  '+inttostr(spinedit3.Value)+'-'+inttostr(spinedit4.Value);
          yr002.Caption:='Year  '+inttostr(spinedit1.value);
          ppReport3.Print;
        end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmpdnpast.ppGroupFooterBand4BeforePrint(Sender: TObject);
var
  rslt:double;
  oround:integer;
  oscore:double;
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select sum(oround) as x1,sum(oscore) as x2 from tbl_pdn_custgrd where tm=:x1 and ocust=:x2';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('ocust').value;
    open;
    if not fieldbyname('x1').isnull then oround:=fieldbyname('x1').value else oround:=0;
    if not fieldbyname('x2').isnull then oscore:=fieldbyname('x2').value else oscore:=0;
  end;
  round001.caption:='TTL # of Round = '+inttostr(oround);
  score001.Caption:='TTL Score = '+formatfloat('#0',oscore);
  if oround>0 then rslt:=oscore/oround else rslt:=0;
  if rslt>=3.5 then grade001.Caption:='Overall Grading Marks : A'
  else if rslt>=2.5 then grade001.Caption:='Overall Grading Marks : B'
  else if rslt>=1.5 then grade001.Caption:='Overall Grading Marks : C'
  else if rslt>=0.5 then grade001.Caption:='Overall Grading Marks : D'
  else if rslt>=-0.5 then grade001.Caption:='Overall Grading Marks : F'
  else grade001.Caption:='Overall Grading Marks : U';
end;

procedure Tfrmpdnpast.ppGroupFooterBand6BeforePrint(Sender: TObject);
begin
  dx005.Caption:='-';
  dx006.Caption:='-';
  if custt4qty>0 then begin
    dx005.caption:=formatfloat('#0.00',custbudget/custt4qty);
    dx006.caption:=formatfloat('#0.00',custdiff/custt4qty);
    if custdiff>0 then dx006.Font.Color:=clGreen
    else if custdiff<0 then dx006.Font.Color:=clRed
    else dx006.Font.Color:=clBlack;
  end;
end;

procedure Tfrmpdnpast.ppGroupFooterBand7BeforePrint(Sender: TObject);
var
  glx:double;
begin
  budgetyr:=spinedit1.value;
  glx:=0;
  with query3 do begin
    close;
    params.clear;
    {
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    commandtext:='select * from sp_pdn_genlogistic_cost_all(:x1,:x2,:x3,:x4,:x5,:x6) where cust=:x7 order by tplant,cust,flag60';
    params[0].asstring:=frmpdnpast.combobox1.text;
    params[1].asinteger:=frmpdnpast.spinedit1.value;
    params[2].asinteger:=frmpdnpast.spinedit2.Value;
    params[3].asinteger:=frmpdnpast.spinedit3.Value;
    params[4].asinteger:=frmpdnpast.spinedit4.Value;
    params[5].asstring:='ALL';
    params[6].asstring:=query1.fieldbyname('cust').value;
    }
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select * from tbl_pdn_logisticcost_tmp0 where tm=:x1 and cust=:x2 order by tplant,cust,flag60';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('cust').value;
    open;
    first;
    while not eof do begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='select defshpm,budge,budge1,budge2,budge3,b0,b1,b2,b3 from cust_logistic_budget where tplant=:x1 and substr(cust,1,4)=:x2 and prod=:x3';
        params[0].asstring:=frmpdnpast.combobox1.text;
        params[1].asstring:=query3.fieldbyname('cust1').value;
        params[2].asstring:=query3.fieldbyname('flag6').value;
        open;
        if not fieldbyname('defshpm').IsNull then begin
          if (budgetyr=2020) or (budgetyr=2024) or (budgetyr=2028) then begin
            glx:=glx-query3.FieldByName('tcost').value+(fieldbyname('budge').value+fieldbyname('b0').value)*query3.fieldbyname('t4qty').value;
          end else if (budgetyr=2021) or (budgetyr=2025) or (budgetyr=2029) then begin
            glx:=glx-query3.FieldByName('tcost').value+(fieldbyname('budge1').value+fieldbyname('b1').value)*query3.fieldbyname('t4qty').value;
          end else if (budgetyr=2022) or (budgetyr=2026) or (budgetyr=2030) then begin
            glx:=glx-query3.FieldByName('tcost').value+(fieldbyname('budge2').value+fieldbyname('b2').value)*query3.fieldbyname('t4qty').value;
          end else if (budgetyr=2023) or (budgetyr=2027) or (budgetyr=2031) then begin
            glx:=glx-query3.FieldByName('tcost').value+(fieldbyname('budge3').value+fieldbyname('b3').value)*query3.fieldbyname('t4qty').value;
          end;
        end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  gl002.Caption:=formatfloat('0.00',glx);
end;

procedure Tfrmpdnpast.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport3.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmpdnpast.BitBtn4Click(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    commandtext:='select * from sp_v_pdn_details(:x1,:x2,:x3,:x4,:x5) order by tplant,ptyp,pdn,j_no,cstyle,acol,psiz';
    params[0].asstring:=combobox1.text;
    params[1].asinteger:=spinedit1.Value;
    params[2].asinteger:=spinedit2.value;
    params[3].asinteger:=spinedit3.Value;
    params[4].AsInteger:=spinedit4.value;
    open;
    if not fieldbyname('pdn').isnull then begin
      fty004.Caption:=combobox1.text;
      wk004.Caption:='Week from '+inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.value)+'  to '+inttostr(spinedit3.value)+'-'+inttostr(spinedit4.value);
      ppReport4.Print;
    end;
  end;
end;

procedure Tfrmpdnpast.ppReport4PreviewFormCreate(Sender: TObject);
begin
  ppReport4.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport4.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmpdnpast.ppReport5PreviewFormCreate(Sender: TObject);
begin
  ppReport5.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport5.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmpdnpast.ppReport6PreviewFormCreate(Sender: TObject);
begin
  ppReport6.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport6.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmpdnpast.ppGroupHeaderBand4BeforePrint(Sender: TObject);
var
  cust:string;
begin
  if not query1.fieldbyname('ocust').isnull then cust:=query1.fieldbyname('ocust').value;
    if cust='SALL' then cust:='(SL)'
    else if cust='SARA' then cust:='(SA)'
    else if cust='TAMA' then cust:='(TM)'
    else if cust='TAIL' then cust:='(TL)'
    else if cust='ESSE' then cust:='(ES)'
    else if cust='ETAM' then cust:='(ET)'
    else if cust='WARN' then cust:='(WN)'
    else if cust='GAPA' then cust:='(GP)'
    else if cust='MAST' then cust:='(MA)'
    else if cust='MONO' then cust:='(MO)'
    else if cust='MEXX' then cust:='(MX)'
    else if cust='DAXO' then cust:='(DA)'
    else if cust='NEXT' then cust:='(NE)'
    else if cust='CANA' then cust:='(CA)'
    else if cust='LARD' then cust:='(LA)'
    else if cust='TORD' then cust:='(TD)'
    else if cust='CMYR' then cust:='(CM)'
    else if cust='CALD' then cust:='(CL)'
    //else if cust='PLUK' then cust:='(PL)'
    else if cust='PLST' then cust:='(PL)'
    else if cust='PLPS' then cust:='(PS)'
    else if cust='PLPK' then cust:='(PK)'
    else if cust='PLPZ' then cust:='(PZ)'
    else if cust='BALE' then cust:='(BA)'
    else if cust='CANN' then cust:='(CN)'
    else if cust='MASC' then cust:='(MC)'
    else if cust='HBIB' then cust:='(HB)'
    else if cust='HBIU' then cust:='(HU)'
    else if cust='HBIA' then cust:='(HA)'
    else if cust='HBIP' then cust:='(HP)'
    else if cust='HBIC' then cust:='(HC)'
    else if cust='EBIM' then cust:='(EB)'
    else if cust='MNSU' then cust:='(MU)'
    else if cust='ELLO' then cust:='(WE)'
    else if cust='AFGD' then cust:='(GD)'
    else if cust='AFGH' then cust:='(GH)'
    else if cust='QVCP' then cust:='(QV)'
    else if cust='SAPH' then cust:='(SP)'
    else if cust='CNAP' then cust:='(CP)'
    else if cust='AGPO' then cust:='(AG)'
    else if cust='BEBD' then cust:='(BD)'
    else if cust='BEBS' then cust:='(BS)'
    else if cust='BEBZ' then cust:='(BZ)'
    else cust:='';
  scust001.Caption:=cust;
  with query4 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    commandtext:='select * from sp_pdn_past_eqty(:x1,:x2,:x3,:x4,:x5,:x6)';
    params[0].asstring:=combobox1.text;
    params[1].asinteger:=spinedit1.value;
    params[2].asinteger:=spinedit2.value;
    params[3].asinteger:=spinedit3.value;
    params[4].asinteger:=spinedit4.value;
    params[5].asstring:=query1.fieldbyname('ocust').value;
    open;
    eqty001.caption:='Total Ex-fty Qty  '+fieldbyname('eqty').asstring;
  end;
end;

procedure Tfrmpdnpast.BitBtn2Click(Sender: TObject);
begin
  if frmexportshpadv=nil then frmexportshpadv:=tfrmexportshpadv.create(nil);
  frmexportshpadv.ComboBox1.text:=combobox1.text;
  frmexportshpadv.show;
end;

end.
