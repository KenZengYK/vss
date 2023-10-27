unit pdnrpt4formu;

interface
                      
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppVar,
  ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient,
  ppViewr, ppRichTx, ppMemo, myChkBox, ppParameter;

type
  Tfrmpdnrpt4 = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    DataSource2: TDataSource;
    Query4: TClientDataSet;
    ppDBPipeline3: TppDBPipeline;
    DataSource3: TDataSource;
    Query5: TClientDataSet;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    title001: TppLabel;
    ppLabel35: TppLabel;
    pdn001: TppLabel;
    ppLabel36: TppLabel;
    exfty001: TppLabel;
    ppLabel21: TppLabel;
    week01: TppLabel;
    ppLabel27: TppLabel;
    fty001: TppLabel;
    from001: TppLabel;
    exfty002: TppLabel;
    to001: TppLabel;
    ppLabel37: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel38: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    title002: TppLabel;
    ppLabel28: TppLabel;
    ver001: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    sdd01: TppDBText;
    sd103: TppLabel;
    sd104: TppLabel;
    sd106: TppLabel;
    sd108: TppLabel;
    sd101: TppLabel;
    sdp01: TppLabel;
    sd107: TppLabel;
    cstyle001: TppDBText;
    sd102: TppLabel;
    sd013: TppLabel;
    sdpo: TppLabel;
    sdcolor: TppLabel;
    acol001: TppLabel;
    ppDBText20: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel34: TppLabel;
    ppLabel123: TppLabel;
    voyn001: TppLabel;
    ppLabel125: TppLabel;
    shipmode001: TppLabel;
    ppLabel127: TppLabel;
    exdt001: TppLabel;
    ppLabel129: TppLabel;
    exdt002: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    y004: TppDBText;
    y001: TppDBText;
    y002: TppDBText;
    y003: TppDBText;
    ppDBText31: TppDBText;
    ppDBText5: TppDBText;
    ppDBText12: TppDBText;
    ppDBText33: TppDBText;
    ppDBText18: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    myCheckBox1: TmyCheckBox;
    x001: TppDBText;
    vdp001: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppGroup15: TppGroup;
    ppGroupHeaderBand15: TppGroupHeaderBand;
    ppShape16: TppShape;
    ppLabel77: TppLabel;
    ppLabel79: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel108: TppLabel;
    cpo001: TppLabel;
    ppLabel56: TppLabel;
    ppLabel91: TppLabel;
    ppLine7: TppLine;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel95: TppLabel;
    ppLabel99: TppLabel;
    ppLine8: TppLine;
    ppLabel115: TppLabel;
    ppLabel119: TppLabel;
    ppLine9: TppLine;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    box001: TppLabel;
    wght001: TppLabel;
    cbm001: TppLabel;
    ppLabel75: TppLabel;
    y005: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel80: TppLabel;
    ppLabel97: TppLabel;
    ppLabel100: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel124: TppLabel;
    ppLabel126: TppLabel;
    ppLabel130: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppGroupFooterBand15: TppGroupFooterBand;
    ppShape17: TppShape;
    ppLabel102: TppLabel;
    sum001: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    x002: TppDBCalc;
    vdp002: TppLabel;
    ppDBCalc8: TppDBCalc;
    poqty001: TppLabel;
    s001: TppLabel;
    s002: TppLabel;
    s003: TppLabel;
    s004: TppLabel;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppGroupFooterBand12: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel26: TppLabel;
    ppLabel54: TppLabel;
    bcn002: TppLabel;
    ppLabel74: TppLabel;
    shpm002: TppLabel;
    ppLabel76: TppLabel;
    exfty004: TppLabel;
    ppLabel78: TppLabel;
    extm002: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel30: TppLabel;
    ppMemo1: TppMemo;
    ppLabel31: TppLabel;
    ppMemo2: TppMemo;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape3: TppShape;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel25: TppLabel;
    ppLabel33: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel47: TppLabel;
    srwo01: TppLabel;
    ss101: TppLabel;
    ss103: TppLabel;
    ss104: TppLabel;
    ss106: TppLabel;
    ss107: TppLabel;
    ss108: TppLabel;
    ss111: TppLabel;
    ss113: TppLabel;
    ss114: TppLabel;
    ss116: TppLabel;
    ss118: TppLabel;
    ppLabel19: TppLabel;
    ppLabel53: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine5: TppLine;
    ppLabel1: TppLabel;
    ppLine6: TppLine;
    ppLabel29: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel65: TppLabel;
    ppLabel45: TppLabel;
    ppLabel128: TppLabel;
    ppLabel71: TppLabel;
    ppLabel64: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape4: TppShape;
    ppLabel96: TppLabel;
    sbq01: TppDBCalc;
    sbd01: TppDBCalc;
    sb103: TppDBCalc;
    sb104: TppDBCalc;
    sb106: TppDBCalc;
    sb108: TppDBCalc;
    sb101: TppDBCalc;
    sbp01: TppLabel;
    sb107: TppDBCalc;
    sb102: TppDBCalc;
    sb013: TppLabel;
    ttl001: TppLabel;
    woqty001: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel143: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel44: TppLabel;
    ppLabel61: TppLabel;
    ppLabel69: TppLabel;
    ppLabel144: TppLabel;
    ppDBText28: TppDBText;
    ppDBText19: TppDBText;
    ppDBText30: TppDBText;
    lst01: TppLabel;
    oth001: TppLabel;
    sb010: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    lst03: TppLabel;
    oth003: TppLabel;
    ppShape6: TppShape;
    ppLabel109: TppLabel;
    exdttm002: TppLabel;
    ppLabel90: TppLabel;
    truck001: TppLabel;
    ppLabel89: TppLabel;
    indttm001: TppLabel;
    ppLabel94: TppLabel;
    ppLabel98: TppLabel;
    ppLabel101: TppLabel;
    ondt001: TppLabel;
    vess001: TppLabel;
    lport001: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel147: TppLabel;
    mnotepad001: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    dd001: TppDBText;
    d1003: TppLabel;
    d1004: TppLabel;
    d1006: TppLabel;
    d1008: TppLabel;
    d2003: TppLabel;
    d2004: TppLabel;
    d2006: TppLabel;
    d2008: TppLabel;
    ppDBText9: TppDBText;
    d1001: TppLabel;
    d1002: TppLabel;
    d2002: TppLabel;
    d2001: TppLabel;
    dp001: TppLabel;
    d1007: TppLabel;
    d2007: TppLabel;
    ppDBText3: TppDBText;
    acol002: TppLabel;
    v002: TppLabel;
    v003: TppLabel;
    v004: TppLabel;
    v001: TppLabel;
    v005: TppLabel;
    d1005: TppLabel;
    d2005: TppLabel;
    v008: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppShape5: TppShape;
    ppLabel46: TppLabel;
    ppDBCalc3: TppDBCalc;
    tbq001: TppDBCalc;
    tbd001: TppDBCalc;
    tb1003: TppDBCalc;
    tb1004: TppDBCalc;
    tb1006: TppDBCalc;
    tb1008: TppDBCalc;
    tb2003: TppDBCalc;
    tb2004: TppDBCalc;
    tb2006: TppDBCalc;
    tb2008: TppDBCalc;
    tb1001: TppDBCalc;
    tb1002: TppDBCalc;
    tb2001: TppDBCalc;
    tb2002: TppDBCalc;
    tbp001: TppLabel;
    tb1007: TppDBCalc;
    tb2007: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    v007: TppLabel;
    tb1005: TppDBCalc;
    tb2005: TppDBCalc;
    v010: TppLabel;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppLabel48: TppLabel;
    bcn001: TppLabel;
    ppLabel50: TppLabel;
    shpm001: TppLabel;
    ppLabel52: TppLabel;
    exfty003: TppLabel;
    ppLabel55: TppLabel;
    extm001: TppLabel;
    ppLabel43: TppLabel;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel39: TppLabel;
    s1001: TppLabel;
    s1002: TppLabel;
    s1003: TppLabel;
    s1004: TppLabel;
    s1006: TppLabel;
    s1007: TppLabel;
    s1008: TppLabel;
    s2001: TppLabel;
    s2002: TppLabel;
    s2003: TppLabel;
    s2004: TppLabel;
    s2006: TppLabel;
    s2007: TppLabel;
    s2008: TppLabel;
    s1101: TppLabel;
    s1102: TppLabel;
    s1103: TppLabel;
    s1104: TppLabel;
    s1106: TppLabel;
    s1107: TppLabel;
    s1108: TppLabel;
    s2101: TppLabel;
    s2102: TppLabel;
    s2103: TppLabel;
    s2104: TppLabel;
    s2106: TppLabel;
    s2107: TppLabel;
    s2108: TppLabel;
    ppLabel4: TppLabel;
    ppLabel118: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLine17: TppLine;
    ppLabel32: TppLabel;
    ppLine18: TppLine;
    ppLabel51: TppLabel;
    ppLabel113: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    s1005: TppLabel;
    s1105: TppLabel;
    s2005: TppLabel;
    s2105: TppLabel;
    ppLabel114: TppLabel;
    ppLabel142: TppLabel;
    r001: TppLabel;
    r002: TppLabel;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppShape2: TppShape;
    ppLabel13: TppLabel;
    ppDBCalc1: TppDBCalc;
    bq001: TppDBCalc;
    bd001: TppDBCalc;
    b1003: TppDBCalc;
    b1004: TppDBCalc;
    b1006: TppDBCalc;
    b1008: TppDBCalc;
    b2003: TppDBCalc;
    b2004: TppDBCalc;
    b2006: TppDBCalc;
    b2008: TppDBCalc;
    b1001: TppDBCalc;
    b1002: TppDBCalc;
    b2001: TppDBCalc;
    b2002: TppDBCalc;
    bp001: TppLabel;
    b1007: TppDBCalc;
    b2007: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    v006: TppLabel;
    b1005: TppDBCalc;
    b2005: TppDBCalc;
    v009: TppLabel;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    rwo001: TppLabel;
    rwo002: TppLabel;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppShape7: TppShape;
    ppLabel148: TppLabel;
    ppDBCalc19: TppDBCalc;
    bq011: TppDBCalc;
    bd011: TppDBCalc;
    b1013: TppDBCalc;
    b1014: TppDBCalc;
    b1016: TppDBCalc;
    b1018: TppDBCalc;
    b2013: TppDBCalc;
    b2014: TppDBCalc;
    b2016: TppDBCalc;
    b2018: TppDBCalc;
    b1011: TppDBCalc;
    b1012: TppDBCalc;
    b2011: TppDBCalc;
    b2012: TppDBCalc;
    bp011: TppLabel;
    b1017: TppDBCalc;
    b2017: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    v016: TppLabel;
    b1015: TppDBCalc;
    b2015: TppDBCalc;
    v019: TppLabel;
    sum002: TppLabel;
    ppLabel150: TppLabel;
    ppLabel63: TppLabel;
    ppLabel68: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel49: TppLabel;
    ppLabel62: TppLabel;
    ppLabel70: TppLabel;
    ppLabel112: TppLabel;
    ppLabel131: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel149: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLine26: TppLine;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand8BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand4BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand7BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand6BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand4BeforePrint(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand15BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand15BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand7BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand6BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnrpt4: Tfrmpdnrpt4;

implementation

uses mainformu, pdnformu, pdnreportformu;

{$R *.dfm}

procedure Tfrmpdnrpt4.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmpdnrpt4.ppGroupHeaderBand8BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('voyn').isnull then bcn001.Caption:=fieldbyname('voyn').value else bcn001.Caption:='';
    if not fieldbyname('shpm').isnull then shpm001.Caption:=fieldbyname('shpm').value else shpm001.Caption:='';
    if not fieldbyname('exfty').isnull then exfty003.Caption:=fieldbyname('exfty').asstring else exfty003.Caption:='';
    if not fieldbyname('extm').isnull then extm001.Caption:=fieldbyname('extm').asstring else extm001.Caption:='';
  end;
end;

procedure Tfrmpdnrpt4.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if srwo01.Caption>'' then begin
    sd101.Caption:=query4.fieldbyname('r1qty').asstring;
    sd102.Caption:=query4.fieldbyname('r1pkqty').asstring;
    sd103.Caption:=query4.fieldbyname('r1t1qty').asstring;
    sd104.Caption:=query4.fieldbyname('r1t2qty').asstring;
    sd106.Caption:=query4.fieldbyname('r1t3qty').asstring;
    sd107.Caption:=query4.fieldbyname('r1aqqty').asstring;
    sd108.Caption:=query4.fieldbyname('r1t4qty').asstring;
  end else begin
   sd101.Caption:='';sd102.caption:='';sd103.Caption:='';sd104.Caption:='';
   sd106.Caption:='';sd107.Caption:='';sd108.Caption:='';
  end;
  //sd009.Caption:=sd101.Caption;
  //sd012.Caption:=inttostr(query4.fieldbyname('qty').value-query4.fieldbyname('sqty').value-query4.fieldbyname('shpqty').value);
  sd013.Caption:=inttostr(query4.fieldbyname('r1qty').value-query4.fieldbyname('sqty').value-query4.fieldbyname('shpqty').value);
  //sd010.Caption:=query4.fieldbyname('shpqty').asstring;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bcn,castl,cname,custpo from tbl_pdn_rwo where seq=:x1 and j_no=:x2 and j2_job=:x3 and acol=:x4';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    params[1].asstring:=query4.fieldbyname('j_no').value;
    params[2].asstring:=query4.fieldbyname('j2_job').value;
    params[3].asstring:=query4.fieldbyname('acol').value;
    open;
    //if not fieldbyname('bcn').isnull then sdbcn.Caption:=fieldbyname('bcn').value else sdbcn.Caption:='';
    //if not fieldbyname('castl').isnull then sdcast.Caption:=fieldbyname('castl').value else sdcast.Caption:='';
    if not fieldbyname('cname').isnull then sdcolor.Caption:=fieldbyname('cname').value else sdcolor.Caption:='';
    if not fieldbyname('custpo').isnull then sdpo.Caption:=fieldbyname('custpo').value else sdpo.Caption:='';
  end;

  //QN 1
  if query4.fieldbyname('r1aqqty').value>query4.fieldbyname('r1t4qty').value then sd108.Font.color:=clRed
  else if query4.fieldbyname('r1aqqty').value=query4.fieldbyname('r1t4qty').value then sd108.Font.color:=clBlack
  else sd108.Font.color:=clGreen;
  if query4.fieldbyname('r1t3qty').value>query4.fieldbyname('r1aqqty').value then sd107.Font.color:=clRed
  else if query4.fieldbyname('r1t3qty').value=query4.fieldbyname('r1aqqty').value then sd107.Font.color:=clBlack
  else sd107.Font.color:=clGreen;
  if query4.fieldbyname('r1t2qty').value>query4.fieldbyname('r1t3qty').value then sd106.Font.color:=clRed
  else if query4.fieldbyname('r1t2qty').value=query4.fieldbyname('r1t3qty').value then sd106.Font.color:=clBlack
  else sd106.Font.color:=clGreen;
  if query4.fieldbyname('r1t1qty').value>query4.fieldbyname('r1t2qty').value then sd104.Font.color:=clRed
  else if query4.fieldbyname('r1t1qty').value=query4.fieldbyname('r1t2qty').value then sd104.Font.color:=clBlack
  else sd104.Font.color:=clGreen;
  if query4.fieldbyname('r1pqty').value>query4.fieldbyname('r1t1qty').value then sd103.Font.color:=clRed
  else if query4.fieldbyname('r1pqty').value=query4.fieldbyname('r1t1qty').value then sd103.Font.color:=clBlack
  else sd103.Font.color:=clGreen;
{
  //QN 2
  if query4.fieldbyname('r2pqty').value>query4.fieldbyname('r2t4qty').value then sd208.Font.color:=clRed
  else if query4.fieldbyname('r2pqty').value=query4.fieldbyname('r2t4qty').value then sd208.Font.color:=clBlack
  else sd208.Font.color:=clGreen;
  if query4.fieldbyname('r2pqty').value>query4.fieldbyname('r2aqqty').value then sd207.Font.color:=clRed
  else if query4.fieldbyname('r2pqty').value=query4.fieldbyname('r2aqqty').value then sd207.Font.color:=clBlack
  else sd207.Font.color:=clGreen;
  if query4.fieldbyname('r2pqty').value>query4.fieldbyname('r2t3qty').value then sd206.Font.color:=clRed
  else if query4.fieldbyname('r2pqty').value=query4.fieldbyname('r2t3qty').value then sd206.Font.color:=clBlack
  else sd206.Font.color:=clGreen;
  if query4.fieldbyname('r2pqty').value>query4.fieldbyname('r2t2qty').value then sd204.Font.color:=clRed
  else if query4.fieldbyname('r2pqty').value=query4.fieldbyname('r2t2qty').value then sd204.Font.color:=clBlack
  else sd204.Font.color:=clGreen;
  if query4.fieldbyname('r2pqty').value>query4.fieldbyname('r2t1qty').value then sd203.Font.color:=clRed
  else if query4.fieldbyname('r2pqty').value=query4.fieldbyname('r2t1qty').value then sd203.Font.color:=clBlack
  else sd203.Font.color:=clGreen;

  //QN 3
  if query4.fieldbyname('r3pqty').value>query4.fieldbyname('r3t4qty').value then sd308.Font.color:=clRed
  else if query4.fieldbyname('r3pqty').value=query4.fieldbyname('r3t4qty').value then sd308.Font.color:=clBlack
  else sd308.Font.color:=clGreen;
  if query4.fieldbyname('r3pqty').value>query4.fieldbyname('r3aqqty').value then sd307.Font.color:=clRed
  else if query4.fieldbyname('r3pqty').value=query4.fieldbyname('r3aqqty').value then sd307.Font.color:=clBlack
  else sd307.Font.color:=clGreen;
  if query4.fieldbyname('r3pqty').value>query4.fieldbyname('r3t3qty').value then sd306.Font.color:=clRed
  else if query4.fieldbyname('r3pqty').value=query4.fieldbyname('r3t3qty').value then sd306.Font.color:=clBlack
  else sd306.Font.color:=clGreen;
  if query4.fieldbyname('r3pqty').value>query4.fieldbyname('r3t2qty').value then sd304.Font.color:=clRed
  else if query4.fieldbyname('r3pqty').value=query4.fieldbyname('r3t2qty').value then sd304.Font.color:=clBlack
  else sd304.Font.color:=clGreen;
  if query4.fieldbyname('r3pqty').value>query4.fieldbyname('r3t1qty').value then sd303.Font.color:=clRed
  else if query4.fieldbyname('r3pqty').value=query4.fieldbyname('r3t1qty').value then sd303.Font.color:=clBlack
  else sd303.Font.color:=clGreen;
}
  if query4.fieldbyname('diff').value<0 then begin
    sdd01.Font.color:=clRed;
    sdp01.Font.Color:=clRed;
  end else if query4.fieldbyname('diff').value=0 then begin
    sdd01.Font.Color:=clBlack;
    sdp01.Font.Color:=clBlack;
  end else begin
    sdd01.Font.Color:=clGreen;
    sdp01.Font.Color:=clGreen;
  end;
  if query4.fieldbyname('sqty').value>0 then
  sdp01.Caption:='('+formatfloat('0.0%',query4.fieldbyname('diff').value*100.0/query4.fieldbyname('sqty').value)+')'
  else sdp01.Caption:='(0.0%)';

  oth001.Caption:=inttostr(query4.fieldbyname('spqty').value+query4.fieldbyname('writeoff').value);
  //oth002.Caption:=inttostr(query4.fieldbyname('spqty').value+query4.fieldbyname('writeoff').value);

  with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftdatetime,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        params.createparam(ftstring,'x6',ptinput);
        commandtext:='select cstyle from tbl_pdn_r_tmp_sum where seq=:x1 and tm=:x2 and ((j_no<:x3) or (j_no=:x3 and j2_job<:x4) or (j_no=:x3 and j2_job=:x4 and acol<:x5)) and cstyle=:x6';
        params[0].asinteger:=Query4.fieldbyname('seq').value;
        params[1].asdatetime:=query4.fieldbyname('tm').value;
        params[2].asstring:=query4.fieldbyname('j_no').value;
        params[3].asstring:=query4.fieldbyname('j2_job').value;
        params[4].asstring:=query4.fieldbyname('acol').value;
        params[5].asstring:=query4.fieldbyname('cstyle').value;
        open;
        if not fieldbyname('cstyle').isnull then cstyle001.Font.Color:=clBlue else cstyle001.Font.Color:=clBlack;
  end;
  if pos('-TF',sdcolor.Caption)>0 then acol001.Caption:=query4.fieldbyname('acol').value+'TF'
  else acol001.Caption:=query4.fieldbyname('acol').value;
end;

procedure Tfrmpdnrpt4.ppGroupFooterBand4BeforePrint(Sender: TObject);
begin
  if not frmpdn.query1.fieldbyname('marks').isnull then
  ppmemo1.Text:=frmpdn.query1.fieldbyname('marks').value;
  if not frmpdn.query1.fieldbyname('marks1').isnull then
  ppmemo2.Text:=frmpdn.query1.fieldbyname('marks1').value;
end;

procedure Tfrmpdnrpt4.ppGroupHeaderBand7BeforePrint(Sender: TObject);
begin
  rwo001.Caption:='';rwo002.Caption:='';//rwo003.Caption:='';
  {
  s1001.Visible:=false;s1002.Visible:=false;s1003.Visible:=false;s1004.Visible:=false;s1005.Visible:=false;s1006.Visible:=false;s1007.Visible:=false;s1008.Visible:=false;
  s2001.Visible:=false;s2002.Visible:=false;s2003.Visible:=false;s2004.Visible:=false;s2005.Visible:=false;s2006.Visible:=false;s2007.Visible:=false;s2008.Visible:=false;
  s1101.Visible:=false;s1102.Visible:=false;s1103.Visible:=false;s1104.Visible:=false;s1105.Visible:=false;s1106.Visible:=false;s1107.Visible:=false;s1108.Visible:=false;
  s2101.Visible:=false;s2102.Visible:=false;s2103.Visible:=false;s2104.Visible:=false;s2105.Visible:=false;s2106.Visible:=false;s2107.Visible:=false;s2108.Visible:=false;
  }
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftdatetime,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select * from tbl_pdn_r_tmp1 where seq=:x1 and tm=:x2 and seq1=:x3 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and acol='''+query1.fieldbyname('acol').value+'''';// and rwo='''+query1.fieldbyname('rwo').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asdatetime:=query1.fieldbyname('tm').value;
    params[2].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('r1').isnull then begin
      rwo001.Caption:='RWO #: '+query1.fieldbyname('j2_job').value+'-'+fieldbyname('r1').value;
      {
      s1001.Visible:=true;s1002.Visible:=true;s1003.Visible:=true;s1004.Visible:=true;s1005.Visible:=true;s1006.Visible:=true;s1007.Visible:=true;s1008.Visible:=true;
      s1101.Visible:=true;s1102.Visible:=true;s1103.Visible:=true;s1104.Visible:=true;s1105.Visible:=true;s1106.Visible:=true;s1107.Visible:=true;s1108.Visible:=true;
      }
    end;
    if not fieldbyname('r2').isnull then begin
      rwo002.Caption:='RWO #: '+query1.fieldbyname('j2_job').value+'-'+fieldbyname('r2').value;
      {
      s2001.Visible:=true;s2002.Visible:=true;s2003.Visible:=true;s2004.Visible:=true;s2005.Visible:=true;s2006.Visible:=true;s2007.Visible:=true;s2008.Visible:=true;
      s2101.Visible:=true;s2102.Visible:=true;s2103.Visible:=true;s2104.Visible:=true;s2105.Visible:=true;s2106.Visible:=true;s2107.Visible:=true;s2108.Visible:=true;
      }
    end;
  end;
end;

procedure Tfrmpdnrpt4.ppDetailBand3BeforePrint(Sender: TObject);
begin
  if rwo001.Caption>'' then begin
    d1001.Caption:=query1.fieldbyname('r1qty').asstring;
    d1002.Caption:=query1.fieldbyname('r1pqty').asstring;
    d1003.Caption:=query1.fieldbyname('r1t1qty').asstring;
    d1004.Caption:=query1.fieldbyname('r1t2qty').asstring;
    d1005.Caption:=query1.fieldbyname('r1pkqty').asstring;
    d1006.Caption:=query1.fieldbyname('r1t3qty').asstring;
    d1007.Caption:=query1.fieldbyname('r1aqqty').asstring;
    d1008.Caption:=query1.fieldbyname('r1t4qty').asstring;
  end else begin
   d1001.Caption:='';d1002.Caption:='';d1003.Caption:='';d1004.Caption:='';
   d1005.caption:='';d1006.Caption:='';d1007.Caption:='';d1008.Caption:='';
  end;
  if rwo002.Caption>'' then begin
    d2001.Caption:=query1.fieldbyname('r2qty').asstring;
    d2002.Caption:=query1.fieldbyname('r2pqty').asstring;
    d2003.Caption:=query1.fieldbyname('r2t1qty').asstring;
    d2004.Caption:=query1.fieldbyname('r2t2qty').asstring;
    d2005.Caption:=query1.fieldbyname('r2pkqty').asstring;
    d2006.Caption:=query1.fieldbyname('r2t3qty').asstring;
    d2007.Caption:=query1.fieldbyname('r2aqqty').asstring;
    d2008.Caption:=query1.fieldbyname('r2t4qty').asstring;
  end else begin
   d2001.Caption:='';d2002.Caption:='';d2003.Caption:='';d2004.Caption:='';
   d2005.caption:='';d2006.Caption:='';d2007.Caption:='';d2008.Caption:='';
  end;
  {
  if rwo003.Caption>'' then begin
    d3001.Caption:=query1.fieldbyname('r3qty').asstring;
    d3002.Caption:=query1.fieldbyname('r3pqty').asstring;
    d3003.Caption:=query1.fieldbyname('r3t1qty').asstring;
    d3004.Caption:=query1.fieldbyname('r3t2qty').asstring;
    d3006.Caption:=query1.fieldbyname('r3t3qty').asstring;
    d3007.Caption:=query1.fieldbyname('r3aqqty').asstring;
    d3008.Caption:=query1.fieldbyname('r3t4qty').asstring;
  end else begin
   d3001.Caption:='';d3002.Caption:='';d3003.Caption:='';d3004.Caption:='';
   d3006.Caption:='';d3007.Caption:='';d3008.Caption:='';
  end;
  }
  if not query1.fieldbyname('shpqty').isnull then
  v001.Caption:=query1.fieldbyname('shpqty').asstring
  else v001.Caption:='0';
  if not query1.fieldbyname('spqty').isnull then
  v002.Caption:=query1.fieldbyname('spqty').asstring
  else v002.Caption:='0';
  if not query1.fieldbyname('writeoff').isnull then
  v003.Caption:=query1.fieldbyname('writeoff').asstring
  else v003.Caption:='0';
  if not query1.fieldbyname('lstqty').isnull then
  v004.Caption:=query1.fieldbyname('lstqty').asstring
  else v004.Caption:='0';
  v005.Caption:=inttostr(query1.fieldbyname('qty').value-query1.fieldbyname('sqty').value-query1.fieldbyname('shpqty').value);
  v008.Caption:=inttostr(query1.fieldbyname('r1t4qty').value+query1.fieldbyname('r2t4qty').value);
  //QN 1
  if query1.fieldbyname('r1aqqty').value>query1.fieldbyname('r1t4qty').value then d1008.Font.color:=clRed
  else if query1.fieldbyname('r1aqqty').value=query1.fieldbyname('r1t4qty').value then d1008.Font.color:=clBlack
  else d1008.Font.color:=clGreen;
  if query1.fieldbyname('r1t3qty').value>query1.fieldbyname('r1aqqty').value then d1007.Font.color:=clRed
  else if query1.fieldbyname('r1t3qty').value=query1.fieldbyname('r1aqqty').value then d1007.Font.color:=clBlack
  else d1007.Font.color:=clGreen;
  if query1.fieldbyname('r1t2qty').value>query1.fieldbyname('r1t3qty').value then d1006.Font.color:=clRed
  else if query1.fieldbyname('r1t2qty').value=query1.fieldbyname('r1t3qty').value then d1006.Font.color:=clBlack
  else d1006.Font.color:=clGreen;
  if query1.fieldbyname('r1t1qty').value>query1.fieldbyname('r1t2qty').value then d1004.Font.color:=clRed
  else if query1.fieldbyname('r1t1qty').value=query1.fieldbyname('r1t2qty').value then d1004.Font.color:=clBlack
  else d1004.Font.color:=clGreen;
  if query1.fieldbyname('r1pkqty').value>query1.fieldbyname('r1t1qty').value then d1003.Font.color:=clRed
  else if query1.fieldbyname('r1pkqty').value=query1.fieldbyname('r1t1qty').value then d1003.Font.color:=clBlack
  else d1003.Font.color:=clGreen;

  //QN 2
  if query1.fieldbyname('r2aqqty').value>query1.fieldbyname('r2t4qty').value then d2008.Font.color:=clRed
  else if query1.fieldbyname('r2aqqty').value=query1.fieldbyname('r2t4qty').value then d2008.Font.color:=clBlack
  else d2008.Font.color:=clGreen;
  if query1.fieldbyname('r2t3qty').value>query1.fieldbyname('r2aqqty').value then d2007.Font.color:=clRed
  else if query1.fieldbyname('r2t3qty').value=query1.fieldbyname('r2aqqty').value then d2007.Font.color:=clBlack
  else d2007.Font.color:=clGreen;
  if query1.fieldbyname('r2t2qty').value>query1.fieldbyname('r2t3qty').value then d2006.Font.color:=clRed
  else if query1.fieldbyname('r2t2qty').value=query1.fieldbyname('r2t3qty').value then d2006.Font.color:=clBlack
  else d2006.Font.color:=clGreen;
  if query1.fieldbyname('r2t1qty').value>query1.fieldbyname('r2t2qty').value then d2004.Font.color:=clRed
  else if query1.fieldbyname('r2t1qty').value=query1.fieldbyname('r2t2qty').value then d2004.Font.color:=clBlack
  else d2004.Font.color:=clGreen;
  if query1.fieldbyname('r2pkqty').value>query1.fieldbyname('r2t1qty').value then d2003.Font.color:=clRed
  else if query1.fieldbyname('r2pkqty').value=query1.fieldbyname('r2t1qty').value then d2003.Font.color:=clBlack
  else d2003.Font.color:=clGreen;
  {
  //QN 3
  if query1.fieldbyname('r3aqqty').value>query1.fieldbyname('r3t4qty').value then d3008.Font.color:=clRed
  else if query1.fieldbyname('r3aqqty').value=query1.fieldbyname('r3t4qty').value then d3008.Font.color:=clBlack
  else d3008.Font.color:=clGreen;
  if query1.fieldbyname('r3t3qty').value>query1.fieldbyname('r3aqqty').value then d3007.Font.color:=clRed
  else if query1.fieldbyname('r3t3qty').value=query1.fieldbyname('r3aqqty').value then d3007.Font.color:=clBlack
  else d3007.Font.color:=clGreen;
  if query1.fieldbyname('r3t2qty').value>query1.fieldbyname('r3t3qty').value then d3006.Font.color:=clRed
  else if query1.fieldbyname('r3t2qty').value=query1.fieldbyname('r3t3qty').value then d3006.Font.color:=clBlack
  else d3006.Font.color:=clGreen;
  if query1.fieldbyname('r3t1qty').value>query1.fieldbyname('r3t2qty').value then d3004.Font.color:=clRed
  else if query1.fieldbyname('r3t1qty').value=query1.fieldbyname('r3t2qty').value then d3004.Font.color:=clBlack
  else d3004.Font.color:=clGreen;
  if query1.fieldbyname('r3pqty').value>query1.fieldbyname('r3t1qty').value then d3003.Font.color:=clRed
  else if query1.fieldbyname('r3pqty').value=query1.fieldbyname('r3t1qty').value then d3003.Font.color:=clBlack
  else d3003.Font.color:=clGreen;
  }
  if query1.fieldbyname('diff').value<0 then begin
    dd001.Font.color:=clRed;
    dp001.Font.Color:=clRed;
  end else if query1.fieldbyname('diff').value=0 then begin
    dd001.Font.Color:=clBlack;
    dp001.Font.Color:=clBlack;
  end else begin
    dd001.Font.Color:=clGreen;
    dp001.Font.Color:=clGreen;
  end;
  dp001.Caption:='';//'('+formatfloat('0.00%',query1.fieldbyname('diff').value*100.0/query1.fieldbyname('sqty').value)+')';
  acol002.Caption:=query1.fieldbyname('acol').value;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select cname from tbl_pdn_voyage_rwo where seq=:x1 and seq1=:x2 and j_no=:x3 and j2_job=:x4 and acol=:x5';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    params[2].asstring:=query1.fieldbyname('j_no').value;
    params[3].asstring:=query1.fieldbyname('j2_job').value;
    params[4].asstring:=query1.fieldbyname('acol').value;
    open;
    if not fieldbyname('cname').isnull then begin
      if pos('-TF',fieldbyname('cname').value)>0 then acol002.Caption:=acol002.Caption+'TF';
    end;
  end;
end;

procedure Tfrmpdnrpt4.ppGroupFooterBand6BeforePrint(Sender: TObject);
begin
  b1001.Visible:=false;b1002.Visible:=false;b1003.Visible:=false;b1004.Visible:=false;b1005.Visible:=false;b1006.Visible:=false;b1007.Visible:=false;b1008.Visible:=false;
  b2001.Visible:=false;b2002.Visible:=false;b2003.Visible:=false;b2004.Visible:=false;b2005.Visible:=false;b2006.Visible:=false;b2007.Visible:=false;b2008.Visible:=false;
  //b3001.Visible:=false;b3002.Visible:=false;b3003.Visible:=false;b3004.Visible:=false;b3006.Visible:=false;b3007.Visible:=false;b3008.Visible:=false;

  if rwo001.Caption>'' then begin
    b1001.Visible:=true;b1002.Visible:=true;b1003.Visible:=true;b1004.Visible:=true;b1005.Visible:=true;b1006.Visible:=true;b1007.Visible:=true;b1008.Visible:=true;
  end;
  if rwo002.Caption>'' then begin
    b2001.Visible:=true;b2002.Visible:=true;b2003.Visible:=true;b2004.Visible:=true;b2005.Visible:=true;b2006.Visible:=true;b2007.Visible:=true;b2008.Visible:=true;
  end;
  {
  if rwo003.Caption>'' then begin
    b3001.Visible:=true;b3002.Visible:=true;b3003.Visible:=true;b3004.Visible:=true;b3006.Visible:=true;b3007.Visible:=true;b3008.Visible:=true;
  end;
  }
  //QN 1
  if b1005.Value>b1003.Value then b1003.Font.Color:=clRed
  else if b1005.Value=b1003.Value then b1003.Font.Color:=clBlack else b1003.Font.Color:=clGreen;
  if b1003.Value>b1004.Value then b1004.Font.Color:=clRed
  else if b1003.Value=b1004.Value then b1004.Font.Color:=clBlack else b1004.Font.Color:=clGreen;
  if b1004.Value>b1006.Value then b1006.Font.Color:=clRed
  else if b1004.Value=b1006.Value then b1006.Font.Color:=clBlack else b1006.Font.Color:=clGreen;
  if b1006.Value>b1007.Value then b1007.Font.Color:=clRed
  else if b1006.Value=b1007.Value then b1007.Font.Color:=clBlack else b1007.Font.Color:=clGreen;
  if b1007.Value>b1008.Value then b1008.Font.Color:=clRed
  else if b1007.Value=b1008.Value then b1008.Font.Color:=clBlack else b1008.Font.Color:=clGreen;

  //QN 2
  if b2005.Value>b2003.Value then b2003.Font.Color:=clRed
  else if b2005.Value=b2003.Value then b2003.Font.Color:=clBlack else b2003.Font.Color:=clGreen;
  if b2003.Value>b2004.Value then b2004.Font.Color:=clRed
  else if b2003.Value=b2004.Value then b2004.Font.Color:=clBlack else b2004.Font.Color:=clGreen;
  if b2004.Value>b2006.Value then b2006.Font.Color:=clRed
  else if b2004.Value=b2006.Value then b2006.Font.Color:=clBlack else b2006.Font.Color:=clGreen;
  if b2006.Value>b2007.Value then b2007.Font.Color:=clRed
  else if b2006.Value=b2007.Value then b2007.Font.Color:=clBlack else b2007.Font.Color:=clGreen;
  if b2007.Value>b2008.Value then b2008.Font.Color:=clRed
  else if b2007.Value=b2008.Value then b2008.Font.Color:=clBlack else b2008.Font.Color:=clGreen;
  {
  //QN 3
  if b3002.Value>b3003.Value then b3003.Font.Color:=clRed
  else if b3002.Value=b3003.Value then b3003.Font.Color:=clBlack else b3003.Font.Color:=clGreen;
  if b3003.Value>b3004.Value then b3004.Font.Color:=clRed
  else if b3003.Value=b3004.Value then b3004.Font.Color:=clBlack else b3004.Font.Color:=clGreen;
  if b3004.Value>b3006.Value then b3006.Font.Color:=clRed
  else if b3004.Value=b3006.Value then b3006.Font.Color:=clBlack else b3006.Font.Color:=clGreen;
  if b3006.Value>b3007.Value then b3007.Font.Color:=clRed
  else if b3006.Value=b3007.Value then b3007.Font.Color:=clBlack else b3007.Font.Color:=clGreen;
  if b3007.Value>b3008.Value then b3008.Font.Color:=clRed
  else if b3007.Value=b3008.Value then b3008.Font.Color:=clBlack else b3008.Font.Color:=clGreen;
  }
  if bd001.Value<0 then begin
    bd001.Font.Color:=clRed;
    bp001.Font.Color:=clRed;
  end else if bd001.Value=0 then begin
    bd001.Font.Color:=clBlack;
    bp001.Font.Color:=clBlack;
  end else begin
    bd001.Font.Color:=clGreen;
    bp001.Font.Color:=clBlack;
  end;
  if bq001.Value>0 then
  bp001.Caption:='('+formatfloat('0.0%',bd001.Value*100.0/bq001.Value)+')'
  else bp001.Caption:='(0.0%)';
  v006.Caption:=inttostr(ppdbcalc1.Value-bq001.Value-ppdbcalc14.Value);
  v009.Caption:=inttostr(b1008.Value+b2008.Value);
end;

procedure Tfrmpdnrpt4.ppSummaryBand3BeforePrint(Sender: TObject);
begin
  tb1001.Visible:=false;tb1002.Visible:=false;tb1003.Visible:=false;tb1004.Visible:=false;tb1005.Visible:=false;tb1006.Visible:=false;tb1007.Visible:=false;tb1008.Visible:=false;
  tb2001.Visible:=false;tb2002.Visible:=false;tb2003.Visible:=false;tb2004.Visible:=false;tb2005.Visible:=false;tb2006.Visible:=false;tb2007.Visible:=false;tb2008.Visible:=false;
  //tb3001.Visible:=false;tb3002.Visible:=false;tb3003.Visible:=false;tb3004.Visible:=false;tb3006.Visible:=false;tb3007.Visible:=false;tb3008.Visible:=false;

  if rwo001.Caption>'' then begin
    tb1001.Visible:=true;tb1002.Visible:=true;tb1003.Visible:=true;tb1004.Visible:=true;tb1005.Visible:=true;tb1006.Visible:=true;tb1007.Visible:=true;tb1008.Visible:=true;
  end;
  //if rwo002.Caption>'' then begin
    tb2001.Visible:=true;tb2002.Visible:=true;tb2003.Visible:=true;tb2004.Visible:=true;tb2005.Visible:=true;tb2006.Visible:=true;tb2007.Visible:=true;tb2008.Visible:=true;
  //end;
  //if rwo003.Caption>'' then begin
    //tb3001.Visible:=true;tb3002.Visible:=true;tb3003.Visible:=true;tb3004.Visible:=true;tb3006.Visible:=true;tb3007.Visible:=true;tb3008.Visible:=true;
  //end;
  //QN 1
  if tb1005.Value>tb1003.Value then tb1003.Font.Color:=clRed
  else if tb1005.Value=tb1003.Value then tb1003.Font.Color:=clBlack else tb1003.Font.Color:=clGreen;
  if tb1003.Value>tb1004.Value then tb1004.Font.Color:=clRed
  else if tb1003.Value=tb1004.Value then tb1004.Font.Color:=clBlack else tb1004.Font.Color:=clGreen;
  if tb1004.Value>tb1006.Value then tb1006.Font.Color:=clRed
  else if tb1004.Value=tb1006.Value then tb1006.Font.Color:=clBlack else tb1006.Font.Color:=clGreen;
  if tb1006.Value>tb1007.Value then tb1007.Font.Color:=clRed
  else if tb1006.Value=tb1007.Value then tb1007.Font.Color:=clBlack else tb1007.Font.Color:=clGreen;
  if tb1007.Value>tb1008.Value then tb1008.Font.Color:=clRed
  else if tb1007.Value=tb1008.Value then tb1008.Font.Color:=clBlack else tb1008.Font.Color:=clGreen;

  //QN 2
  if tb2005.Value>tb2003.Value then tb2003.Font.Color:=clRed
  else if tb2005.Value=tb2003.Value then tb2003.Font.Color:=clBlack else tb2003.Font.Color:=clGreen;
  if tb2003.Value>tb2004.Value then tb2004.Font.Color:=clRed
  else if tb2003.Value=tb2004.Value then tb2004.Font.Color:=clBlack else tb2004.Font.Color:=clGreen;
  if tb2004.Value>tb2006.Value then tb2006.Font.Color:=clRed
  else if tb2004.Value=tb2006.Value then tb2006.Font.Color:=clBlack else tb2006.Font.Color:=clGreen;
  if tb2006.Value>tb2007.Value then tb2007.Font.Color:=clRed
  else if tb2006.Value=tb2007.Value then tb2007.Font.Color:=clBlack else tb2007.Font.Color:=clGreen;
  if tb2007.Value>tb2008.Value then tb2008.Font.Color:=clRed
  else if tb2007.Value=tb2008.Value then tb2008.Font.Color:=clBlack else tb2008.Font.Color:=clGreen;
  {
  //QN 3
  if tb3002.Value>tb3003.Value then tb3003.Font.Color:=clRed
  else if tb3002.Value=tb3003.Value then tb3003.Font.Color:=clBlack else tb3003.Font.Color:=clGreen;
  if tb3003.Value>tb3004.Value then tb3004.Font.Color:=clRed
  else if tb3003.Value=tb3004.Value then tb3004.Font.Color:=clBlack else tb3004.Font.Color:=clGreen;
  if tb3004.Value>tb3006.Value then tb3006.Font.Color:=clRed
  else if tb3004.Value=tb3006.Value then tb3006.Font.Color:=clBlack else tb3006.Font.Color:=clGreen;
  if tb3006.Value>tb3007.Value then tb3007.Font.Color:=clRed
  else if tb3006.Value=tb3007.Value then tb3007.Font.Color:=clBlack else tb3007.Font.Color:=clGreen;
  if tb3007.Value>tb3008.Value then tb3008.Font.Color:=clRed
  else if tb3007.Value=tb3008.Value then tb3008.Font.Color:=clBlack else tb3008.Font.Color:=clGreen;
  }
  if tbd001.Value<0 then begin
    tbd001.Font.Color:=clRed;
    tbp001.Font.Color:=clRed;
  end else if bd001.Value=0 then begin
    tbd001.Font.Color:=clBlack;
    tbp001.Font.Color:=clBlack;
  end else begin
    tbd001.Font.Color:=clGreen;
    tbp001.Font.Color:=clBlack;
  end;
  if tbq001.Value>0 then
  tbp001.Caption:='('+formatfloat('0.0%',tbd001.Value*100.0/tbq001.Value)+')'
  else tbp001.Caption:='(0.0%)';
  v007.Caption:=inttostr(ppdbcalc3.value-tbq001.Value-ppdbcalc15.Value);
  v010.Caption:=inttostr(tb1008.Value+tb2008.Value);
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,count(distinct cname) as s2,count(distinct j_no) as s3,count(distinct j2_job) as s4,'
                +'count(distinct custpo) as s5,sum(box) as s6,sum(wght) as s7,sum(cbm) as s8,sum(diff) as s9,sum(sqty) as s10,count(*) as s11 from tbl_pdn_pack where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    sum002.Caption:='Ttl:    Project='+fieldbyname('s3').asstring+'    Cust Style='+fieldbyname('s1').asstring+'    Style Clr Code='+fieldbyname('s2').asstring+'    Cust Clr Name='+fieldbyname('s2').asstring;
    sum002.Caption:=sum002.Caption+'    Cust PO='+fieldbyname('s5').asstring+'    WO='+fieldbyname('s4').asstring+'    RWO='+fieldbyname('s11').asstring;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select count(*) as s7 from tblshedule a,tbl_pdn_voyage_rwo b where a.j_no=b.j_no and a.j2_job=b.j2_job and a.rwo=b.rwo and a.acol=b.acol and b.seq=:x1 and b.seq1=:x2';
    params[0].asinteger:=query1.fieldbyname('seq').Value;
    params[1].asinteger:=query1.fieldbyname('seq1').Value;
    open;
    if not fieldbyname('s7').isnull then begin
      if sum002.Caption>'' then sum002.Caption:=sum002.caption+'    QN='+fieldbyname('s7').asstring else ttl001.Caption:='QN='+fieldbyname('s7').asstring;
    end;
  end;
end;

procedure Tfrmpdnrpt4.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  woqty:integer;
begin
  sb101.Visible:=false;sb103.Visible:=false;sb104.Visible:=false;sb106.Visible:=false;sb107.Visible:=false;sb108.Visible:=false;
  //sb201.Visible:=false;sb203.Visible:=false;sb204.Visible:=false;sb206.Visible:=false;sb207.Visible:=false;sb208.Visible:=false;
  //sb301.Visible:=false;sb303.Visible:=false;sb304.Visible:=false;sb306.Visible:=false;sb307.Visible:=false;sb308.Visible:=false;

  if srwo01.Caption>'' then begin
    sb101.Visible:=true;sb103.Visible:=true;sb104.Visible:=true;sb106.Visible:=true;sb107.Visible:=true;sb108.Visible:=true;
  end;
  //if srwo02.Caption>'' then begin
  //  sb201.Visible:=true;sb203.Visible:=true;sb204.Visible:=true;sb206.Visible:=true;sb207.Visible:=true;sb208.Visible:=true;
  //end;
  //if srwo03.Caption>'' then begin
  //  sb301.Visible:=true;sb303.Visible:=true;sb304.Visible:=true;sb306.Visible:=true;sb307.Visible:=true;sb308.Visible:=true;
  //end;
  //QN 1
  if sb102.Value>sb103.Value then sb103.Font.Color:=clRed
  else if sb102.Value=sb103.Value then sb103.Font.Color:=clBlack else sb103.Font.Color:=clGreen;
  if sb103.Value>sb104.Value then sb104.Font.Color:=clRed
  else if sb103.Value=sb104.Value then sb104.Font.Color:=clBlack else sb104.Font.Color:=clGreen;
  if sb104.Value>sb106.Value then sb106.Font.Color:=clRed
  else if sb104.Value=sb106.Value then sb106.Font.Color:=clBlack else sb106.Font.Color:=clGreen;
  if sb106.Value>sb107.Value then sb107.Font.Color:=clRed
  else if sb106.Value=sb107.Value then sb107.Font.Color:=clBlack else sb107.Font.Color:=clGreen;
  if sb107.Value>sb108.Value then sb108.Font.Color:=clRed
  else if sb107.Value=sb108.Value then sb108.Font.Color:=clBlack else sb108.Font.Color:=clGreen;
{
  //QN 2
  if sb202.Value>sb203.Value then sb203.Font.Color:=clRed
  else if sb202.Value=sb203.Value then sb203.Font.Color:=clBlack else sb203.Font.Color:=clGreen;
  if sb202.Value>sb204.Value then sb204.Font.Color:=clRed
  else if sb202.Value=sb204.Value then sb204.Font.Color:=clBlack else sb204.Font.Color:=clGreen;
  if sb202.Value>sb206.Value then sb206.Font.Color:=clRed
  else if sb202.Value=sb206.Value then sb206.Font.Color:=clBlack else sb206.Font.Color:=clGreen;
  if sb202.Value>sb207.Value then sb207.Font.Color:=clRed
  else if sb202.Value=sb207.Value then sb207.Font.Color:=clBlack else sb207.Font.Color:=clGreen;
  if sb202.Value>sb208.Value then sb208.Font.Color:=clRed
  else if sb202.Value=sb208.Value then sb208.Font.Color:=clBlack else sb208.Font.Color:=clGreen;

  //QN 3
  if sb302.Value>sb303.Value then sb303.Font.Color:=clRed
  else if sb302.Value=sb303.Value then sb303.Font.Color:=clBlack else sb303.Font.Color:=clGreen;
  if sb302.Value>sb304.Value then sb304.Font.Color:=clRed
  else if sb302.Value=sb304.Value then sb304.Font.Color:=clBlack else sb304.Font.Color:=clGreen;
  if sb302.Value>sb306.Value then sb306.Font.Color:=clRed
  else if sb302.Value=sb306.Value then sb306.Font.Color:=clBlack else sb306.Font.Color:=clGreen;
  if sb302.Value>sb307.Value then sb307.Font.Color:=clRed
  else if sb302.Value=sb307.Value then sb307.Font.Color:=clBlack else sb307.Font.Color:=clGreen;
  if sb302.Value>sb308.Value then sb308.Font.Color:=clRed
  else if sb302.Value=sb308.Value then sb308.Font.Color:=clBlack else sb308.Font.Color:=clGreen;
}
  //sb012.Caption:=inttostr(sb008.Value-sb011.Value-sb010.value);
  //sb013.Caption:=inttostr(sb009.value-sb011.Value-sb010.value);
  //sb010.Caption:='0';

  if sbd01.Value<0 then begin
    sbd01.Font.Color:=clRed;
    sbp01.Font.Color:=clRed;
  end else if sbd01.Value=0 then begin
    sbd01.Font.Color:=clBlack;
    sbp01.Font.Color:=clBlack;
  end else begin
    sbd01.Font.Color:=clGreen;
    sbp01.Font.Color:=clGreen;
  end;
  if sbq01.Value>0 then
  sbp01.Caption:='('+formatfloat('0.0%',sbd01.Value*100.0/sbq01.Value)+')';

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select count(distinct j_no) as s1,count(distinct j2_job) as s2,count(distinct cstyle) as s3,count(distinct acol) as s4,count(distinct custpo) as s5,count(*) as s6 from tbl_pdn_voyage_rwo where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    params[1].asinteger:=query4.fieldbyname('seq1').value;
    open;
    if not fieldbyname('s1').isnull then begin
      ttl001.Caption:='Ttl:    Project='+fieldbyname('s1').asstring+'    Cust Style='+fieldbyname('s3').asstring;
      if pos('GP',frmpdn.Query1.fieldbyname('pdn').value)>0 then ttl001.caption:=ttl001.Caption+'    Style Clr Code='+inttostr(fieldbyname('s4').value+1)+'    Cust Clr Name='+inttostr(fieldbyname('s4').value+1)
      else ttl001.Caption:=ttl001.caption+'    Style Clr Code='+fieldbyname('s4').asstring+'    Cust Clr Name='+fieldbyname('s4').asstring;
      ttl001.caption:=ttl001.caption+'    Cust PO='+fieldbyname('s5').asstring+'    WO='+fieldbyname('s2').asstring+'    RWO='+fieldbyname('s6').asstring;
    end else ttl001.Caption:='';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select count(*) as s7 from tblshedule a,tbl_pdn_voyage_rwo b where a.j_no=b.j_no and a.j2_job=b.j2_job and a.rwo=b.rwo and a.acol=b.acol and b.seq=:x1 and b.seq1=:x2';
    params[0].asinteger:=query4.fieldbyname('seq').Value;
    params[1].asinteger:=query4.fieldbyname('seq1').Value;
    open;
    if not fieldbyname('s7').isnull then begin
      if ttl001.Caption>'' then ttl001.Caption:=ttl001.caption+'    QN='+fieldbyname('s7').asstring else ttl001.Caption:='QN='+fieldbyname('s7').asstring;
    end;
  end;
  woqty:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select distinct j_no,j2_job,acol,qty from tbl_pdn_r_tmp_sum where seq=:x1 and seq1=:x2 and tm=:x3';
    params[0].asinteger:=query4.fieldbyname('seq').Value;
    params[1].asinteger:=query4.fieldbyname('seq1').Value;
    params[2].asdatetime:=query4.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      woqty:=woqty+fieldbyname('qty').value;
      application.ProcessMessages;
      next;
    end;
    woqty001.Caption:=inttostr(woqty);
    //woqty002.Caption:=inttostr(woqty);
  end;

  //sb012.Caption:=inttostr(woqty-sbq01.Value-sb010.value);
  sb013.Caption:=inttostr(sb101.value-sbq01.Value-sb010.value);
  oth003.Caption:=inttostr(ppdbcalc4.value+ppdbcalc6.value);
  //oth004.Caption:=inttostr(ppdbcalc4.value+ppdbcalc6.value);
end;

procedure Tfrmpdnrpt4.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  srwo01.Caption:='123';

  ss101.Visible:=false;ss103.Visible:=false;ss104.Visible:=false;ss106.Visible:=false;ss107.Visible:=false;ss108.Visible:=false;
  ss111.Visible:=false;ss113.Visible:=false;ss114.Visible:=false;ss116.Visible:=false;{ss117.Visible:=false;}ss118.Visible:=false;

  if srwo01.Caption>'' then begin
    ss101.Visible:=true;ss103.Visible:=true;ss104.Visible:=true;ss106.Visible:=true;ss107.Visible:=true;ss108.Visible:=true;
    ss111.Visible:=true;ss113.Visible:=true;ss114.Visible:=true;ss116.Visible:=true;{ss117.Visible:=true;}ss118.Visible:=true;
  end;

end;

procedure Tfrmpdnrpt4.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select exfty,ver from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    params[1].asinteger:=query4.fieldbyname('seq1').value;
    open;
    if not fieldbyname('exfty').isnull then exfty001.Caption:=formatdatetime('yyyy-MM-dd',fieldbyname('exfty').Value);
    if not fieldbyname('ver').IsNull then ver001.Caption:=fieldbyname('ver').value else ver001.Caption:='';
  end;
  from001.visible:=false;to001.Visible:=false;exfty002.Caption:='';
end;

procedure Tfrmpdnrpt4.ppGroupHeaderBand4BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    params[1].asinteger:=query4.fieldbyname('seq1').value;
    open;
    if not fieldbyname('voyn').isnull then bcn002.Caption:=fieldbyname('voyn').value else bcn002.Caption:='';
    if not fieldbyname('shpm').isnull then shpm002.Caption:=fieldbyname('shpm').value else shpm002.Caption:='';
    if not fieldbyname('exfty').isnull then exfty004.Caption:=fieldbyname('exfty').asstring else exfty004.Caption:='';
    if not fieldbyname('extm').isnull then extm002.Caption:=fieldbyname('extm').asstring else extm002.Caption:='';
  end;
end;

procedure Tfrmpdnrpt4.ppTitleBand1BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query5.fieldbyname('seq').value;
    params[1].asinteger:=query5.fieldbyname('seq1').value;
    open;
    if not fieldbyname('exfty').isnull then exdt001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('exfty').value)
    else exdt001.Caption:='';
    if not fieldbyname('extm').isnull then exdt002.Caption:=formatdatetime('hh:nn',fieldbyname('extm').value)
    else exdt002.Caption:='';
    if not fieldbyname('actdt').isnull then exdttm002.Caption:=formatdatetime('yy-MM-dd',fieldbyname('actdt').value)+' / '
    else exdttm002.Caption:='';
    if not fieldbyname('acttm').isnull then exdttm002.Caption:=exdttm002.Caption+formatdatetime('hh:nn',fieldbyname('acttm').value);
    if not fieldbyname('truck').isnull then truck001.Caption:=fieldbyname('truck').value else truck001.Caption:='';
    if not fieldbyname('indt').isnull then indttm001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('indt').value)+' / '
    else indttm001.Caption:='';
    if not fieldbyname('intm').isnull then indttm001.Caption:=indttm001.Caption+formatdatetime('hh:nn',fieldbyname('intm').value);
    if not fieldbyname('ondt').isnull then ondt001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('ondt').value)
    else ondt001.Caption:='';
    if not fieldbyname('shpm').isnull then shipmode001.Caption:=fieldbyname('shpm').value else shipmode001.Caption:='';
    if not fieldbyname('vess').isnull then vess001.Caption:=fieldbyname('vess').value else vess001.Caption:='';
    if not fieldbyname('lport').isnull then lport001.Caption:=fieldbyname('lport').value else lport001.Caption:='';
    if not fieldbyname('voyn').isnull then voyn001.Caption:=fieldbyname('voyn').value else voyn001.Caption:='';
    if not fieldbyname('rair').isnull then mnotepad001.Caption:=fieldbyname('rair').value else mnotepad001.Caption:='';
  end;
end;

procedure Tfrmpdnrpt4.ppDetailBand2BeforePrint(Sender: TObject);
begin
  vdp001.Caption:='('+formatfloat('0.0%',query5.fieldbyname('dp').value)+')';
  if query5.fieldbyname('diff').value<0 then begin
    x001.Font.Color:=clRed;
    vdp001.Font.Color:=clRed;
  end else begin
    x001.Font.Color:=clBlack;
    vdp001.Font.Color:=clBlack;
  end;
  if pos('PO',cpo001.Caption)>0 then begin
    y001.Visible:=true;
    y002.Visible:=true;
    y003.Visible:=true;
    y004.Visible:=true;
  end else begin
    y001.Visible:=false;
    y002.Visible:=false;
    y003.Visible:=false;
    y004.Visible:=false;
  end;
end;

procedure Tfrmpdnrpt4.ppGroupFooterBand15BeforePrint(Sender: TObject);
var
  pqty,s1,s2,s3,s4:integer;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,count(distinct cname) as s2,count(distinct j_no) as s3,count(distinct j2_job) as s4,'
                +'count(distinct custpo) as s5,sum(box) as s6,sum(wght) as s7,sum(cbm) as s8,sum(diff) as s9,sum(sqty) as s10,count(*) as s11 from tbl_pdn_pack where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query5.fieldbyname('seq').value;
    params[1].asinteger:=query5.fieldbyname('seq1').value;
    open;
    sum001.Caption:='Ttl:    Project='+fieldbyname('s3').asstring+'    Cust Style='+fieldbyname('s1').asstring+'    Style Clr Code='+fieldbyname('s2').asstring+'    Cust Clr Name='+fieldbyname('s2').asstring;
    sum001.Caption:=sum001.Caption+'    Cust PO='+fieldbyname('s5').asstring+'    WO='+fieldbyname('s4').asstring+'    RWO='+fieldbyname('s11').asstring;
    if fieldbyname('s10').value>0 then vdp002.Caption:='('+formatfloat('0.0%',fieldbyname('s9').value*100.0/fieldbyname('s10').value)+')'
    else vdp002.Caption:='(0.0%)';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select count(*) as s7 from tblshedule a,tbl_pdn_voyage_rwo b where a.j_no=b.j_no and a.j2_job=b.j2_job and a.rwo=b.rwo and a.acol=b.acol and b.seq=:x1 and b.seq1=:x2';
    params[0].asinteger:=query5.fieldbyname('seq').Value;
    params[1].asinteger:=query5.fieldbyname('seq1').Value;
    open;
    if not fieldbyname('s7').isnull then begin
      if sum001.Caption>'' then sum001.Caption:=sum001.caption+'    QN='+fieldbyname('s7').asstring else sum001.Caption:='QN='+fieldbyname('s7').asstring;
    end;
  end;
  if x002.Value<0 then begin
    x002.Font.Color:=clRed;
    vdp002.Font.Color:=clRed;
  end else begin
    x002.Font.Color:=clBlack;
    vdp002.Font.Color:=clBlack;
  end;
  pqty:=0; s1:=0; s2:=0; s3:=0; s4:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct j_no,j2_job,poqty,shpqty,spqty,writeoff,bal from tbl_pdn_pack where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query5.fieldbyname('seq').Value;
    params[1].asinteger:=query5.fieldbyname('seq1').Value;
    open;
    first;
    while not eof do begin
      pqty:=pqty+fieldbyname('poqty').value;
      s1:=s1+fieldbyname('shpqty').value;
      s2:=s2+fieldbyname('spqty').value;
      s3:=s3+fieldbyname('writeoff').value;
      s4:=s4+fieldbyname('bal').value;
      application.ProcessMessages;
      next;
    end;
  end;
  poqty001.Caption:=inttostr(pqty);
  s001.Caption:=inttostr(s1);
  s002.Caption:=inttostr(s2);
  s003.Caption:=inttostr(s3);
  s004.Caption:=inttostr(s4);
end;

procedure Tfrmpdnrpt4.ppGroupHeaderBand15BeforePrint(Sender: TObject);
var
  box1:integer;
  wght1,cbm1:double;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,count(distinct cname) as s2,count(distinct j_no) as s3,count(distinct j2_job) as s4,'
                +'count(distinct custpo) as s5,sum(box) as s6,sum(wght) as s7,sum(cbm) as s8,sum(diff) as s9,sum(sqty) as s10 from tbl_pdn_pack where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query5.fieldbyname('seq').value;
    params[1].asinteger:=query5.fieldbyname('seq1').value;
    open;
    if not fieldbyname('s6').isnull then box1:=fieldbyname('s6').value else box1:=0;
    if not fieldbyname('s7').isnull then wght1:=fieldbyname('s7').value else wght1:=0;
    if not fieldbyname('s8').isnull then cbm1:=fieldbyname('s8').value else cbm1:=0;
  end;
  if pos('PO',cpo001.Caption)>0 then begin
    box001.Caption:=inttostr(box1);
    wght001.Caption:=formatfloat('0.00',wght1);
    cbm001.Caption:=formatfloat('0.00',cbm1);
    y005.caption:='';
  end else begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select box,wght,cbm from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
      params[0].asinteger:=query5.fieldbyname('seq').value;
      params[1].asinteger:=query5.fieldbyname('seq1').value;
      open;
      box001.Caption:=fieldbyname('box').asstring;
      wght001.Caption:=formatfloat('0.00',fieldbyname('wght').value);
      cbm001.Caption:=formatfloat('0.00',fieldbyname('cbm').value);
    end;
    if not query5.fieldbyname('dest').isnull then
    y005.caption:=query5.fieldbyname('dest').value
    else y005.Caption:='';
  end;
end;

procedure Tfrmpdnrpt4.ppGroupFooterBand7BeforePrint(Sender: TObject);
begin
  b1011.Visible:=false;b1012.Visible:=false;b1013.Visible:=false;b1014.Visible:=false;b1015.Visible:=false;b1016.Visible:=false;b1017.Visible:=false;b1018.Visible:=false;
  b2011.Visible:=false;b2012.Visible:=false;b2013.Visible:=false;b2014.Visible:=false;b2015.Visible:=false;b2016.Visible:=false;b2017.Visible:=false;b2018.Visible:=false;

  if rwo001.Caption>'' then begin
    b1011.Visible:=true;b1012.Visible:=true;b1013.Visible:=true;b1014.Visible:=true;b1015.Visible:=true;b1016.Visible:=true;b1017.Visible:=true;b1018.Visible:=true;
  end;
  if rwo002.Caption>'' then begin
    b2011.Visible:=true;b2012.Visible:=true;b2013.Visible:=true;b2014.Visible:=true;b2015.Visible:=true;b2016.Visible:=true;b2017.Visible:=true;b2018.Visible:=true;
  end;

  //QN 1
  if b1015.Value>b1013.Value then b1013.Font.Color:=clRed
  else if b1015.Value=b1013.Value then b1013.Font.Color:=clBlack else b1013.Font.Color:=clGreen;
  if b1013.Value>b1014.Value then b1014.Font.Color:=clRed
  else if b1013.Value=b1014.Value then b1014.Font.Color:=clBlack else b1014.Font.Color:=clGreen;
  if b1014.Value>b1016.Value then b1016.Font.Color:=clRed
  else if b1014.Value=b1016.Value then b1016.Font.Color:=clBlack else b1016.Font.Color:=clGreen;
  if b1016.Value>b1017.Value then b1017.Font.Color:=clRed
  else if b1016.Value=b1017.Value then b1017.Font.Color:=clBlack else b1017.Font.Color:=clGreen;
  if b1017.Value>b1018.Value then b1018.Font.Color:=clRed
  else if b1017.Value=b1018.Value then b1018.Font.Color:=clBlack else b1018.Font.Color:=clGreen;

  //QN 2
  if b2015.Value>b2013.Value then b2013.Font.Color:=clRed
  else if b2015.Value=b2013.Value then b2013.Font.Color:=clBlack else b2013.Font.Color:=clGreen;
  if b2013.Value>b2014.Value then b2014.Font.Color:=clRed
  else if b2013.Value=b2014.Value then b2014.Font.Color:=clBlack else b2014.Font.Color:=clGreen;
  if b2014.Value>b2016.Value then b2016.Font.Color:=clRed
  else if b2014.Value=b2016.Value then b2016.Font.Color:=clBlack else b2016.Font.Color:=clGreen;
  if b2016.Value>b2017.Value then b2017.Font.Color:=clRed
  else if b2016.Value=b2017.Value then b2017.Font.Color:=clBlack else b2017.Font.Color:=clGreen;
  if b2017.Value>b2018.Value then b2018.Font.Color:=clRed
  else if b2017.Value=b2018.Value then b2018.Font.Color:=clBlack else b2018.Font.Color:=clGreen;

  if bd011.Value<0 then begin
    bd011.Font.Color:=clRed;
    bp011.Font.Color:=clRed;
  end else if bd011.Value=0 then begin
    bd011.Font.Color:=clBlack;
    bp011.Font.Color:=clBlack;
  end else begin
    bd011.Font.Color:=clGreen;
    bp011.Font.Color:=clBlack;
  end;
  if bq011.Value>0 then
  bp011.Caption:='('+formatfloat('0.0%',bd011.Value*101.0/bq011.Value)+')'
  else bp011.Caption:='(0.0%)';
  v016.Caption:=inttostr(ppdbcalc19.Value-bq011.Value-ppdbcalc39.Value);
  v019.Caption:=inttostr(b1018.Value+b2018.Value);
end;

procedure Tfrmpdnrpt4.ppGroupHeaderBand6BeforePrint(Sender: TObject);
begin
  s1001.Visible:=false;s1002.Visible:=false;s1003.Visible:=false;s1004.Visible:=false;s1005.Visible:=false;s1006.Visible:=false;s1007.Visible:=false;s1008.Visible:=false;
  s2001.Visible:=false;s2002.Visible:=false;s2003.Visible:=false;s2004.Visible:=false;s2005.Visible:=false;s2006.Visible:=false;s2007.Visible:=false;s2008.Visible:=false;
  s1101.Visible:=false;s1102.Visible:=false;s1103.Visible:=false;s1104.Visible:=false;s1105.Visible:=false;s1106.Visible:=false;s1107.Visible:=false;s1108.Visible:=false;
  s2101.Visible:=false;s2102.Visible:=false;s2103.Visible:=false;s2104.Visible:=false;s2105.Visible:=false;s2106.Visible:=false;s2107.Visible:=false;s2108.Visible:=false;

  r001.Caption:='';r002.Caption:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftdatetime,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select * from tbl_pdn_r_tmp1 where seq=:x1 and tm=:x2 and seq1=:x3 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+'''';// and acol='''+query1.fieldbyname('acol').value+'''';// and rwo='''+query1.fieldbyname('rwo').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asdatetime:=query1.fieldbyname('tm').value;
    params[2].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('r1').isnull then begin
      r001.Caption:='RWO #: '+query1.fieldbyname('j2_job').value+'-'+fieldbyname('r1').value;
      s1001.Visible:=true;s1002.Visible:=true;s1003.Visible:=true;s1004.Visible:=true;s1005.Visible:=true;s1006.Visible:=true;s1007.Visible:=true;s1008.Visible:=true;
      s1101.Visible:=true;s1102.Visible:=true;s1103.Visible:=true;s1104.Visible:=true;s1105.Visible:=true;s1106.Visible:=true;s1107.Visible:=true;s1108.Visible:=true;
    end;
    if not fieldbyname('r2').isnull then begin
      r002.Caption:='RWO #: '+query1.fieldbyname('j2_job').value+'-'+fieldbyname('r2').value;
      s2001.Visible:=true;s2002.Visible:=true;s2003.Visible:=true;s2004.Visible:=true;s2005.Visible:=true;s2006.Visible:=true;s2007.Visible:=true;s2008.Visible:=true;
      s2101.Visible:=true;s2102.Visible:=true;s2103.Visible:=true;s2104.Visible:=true;s2105.Visible:=true;s2106.Visible:=true;s2107.Visible:=true;s2108.Visible:=true;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftdatetime,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select count(distinct acol) as cn1 from tbl_pdn_r_tmp1 where seq=:x1 and tm=:x2 and seq1=:x3 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asdatetime:=query1.fieldbyname('tm').value;
    params[2].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if fieldbyname('cn1').value>1 then begin
      r001.Caption:='';r002.Caption:='';
      rwo001.Visible:=true;rwo002.Visible:=true;
    end else begin
      //r001.Caption:='';r002.Caption:='';
      rwo001.Visible:=false;rwo002.Visible:=false;
    end;
  end;
end;

end.
