unit shvplusgaiformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppClass, ppMemo, ppVar, ppReport, ppStrtch,
  ppSubRpt, ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe,
  DB, DBClient, ppViewr, ppRichTx, ppParameter;

type
  Tfrmshvplusgai = class(TForm)
    Query3: TClientDataSet;
    Query7: TClientDataSet;
    DataSource4: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    Query10: TClientDataSet;
    DataSource5: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    ppReport8: TppReport;
    ppHeaderBand13: TppHeaderBand;
    ppDetailBand13: TppDetailBand;
    ps01: TppShape;
    ppDBText242: TppDBText;
    ppDBText245: TppDBText;
    ppDBText271: TppDBText;
    ppDBText273: TppDBText;
    ppDBText243: TppDBText;
    ppDBText274: TppDBText;
    ppDBText277: TppDBText;
    ppDBText278: TppDBText;
    ppDBText279: TppDBText;
    ppDBText280: TppDBText;
    ppDBText281: TppDBText;
    ppDBText282: TppDBText;
    ppDBText283: TppDBText;
    ppDBText288: TppDBText;
    ppDBText289: TppDBText;
    ppLine234: TppLine;
    ppLine235: TppLine;
    ppLine236: TppLine;
    ppLine247: TppLine;
    ppLine248: TppLine;
    ppLine249: TppLine;
    ppLine250: TppLine;
    ppLine251: TppLine;
    ppLine252: TppLine;
    grd001: TppLabel;
    ppFooterBand8: TppFooterBand;
    ppSummaryBand10: TppSummaryBand;
    ppSubReport6: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppLabel513: TppLabel;
    ppSystemVariable17: TppSystemVariable;
    ppLabel514: TppLabel;
    ppLabel515: TppLabel;
    ppLabel516: TppLabel;
    dt038: TppLabel;
    ppLabel518: TppLabel;
    dt048: TppLabel;
    ppLabel553: TppLabel;
    ppLabel554: TppLabel;
    ppLine253: TppLine;
    ppLine254: TppLine;
    ppLine255: TppLine;
    ppLabel556: TppLabel;
    ppLabel557: TppLabel;
    ppLine256: TppLine;
    ppLabel558: TppLabel;
    ppLine257: TppLine;
    ppLabel559: TppLabel;
    fty018: TppLabel;
    ppLine258: TppLine;
    ppLabel561: TppLabel;
    ppLabel562: TppLabel;
    ppLine259: TppLine;
    ppLine260: TppLine;
    ppLabel563: TppLabel;
    ppLabel564: TppLabel;
    ppLine261: TppLine;
    ppLabel565: TppLabel;
    ppLabel567: TppLabel;
    ppLabel568: TppLabel;
    ppLabel569: TppLabel;
    ppLabel570: TppLabel;
    ppLabel571: TppLabel;
    ppLabel572: TppLabel;
    ppLabel573: TppLabel;
    ppLabel574: TppLabel;
    ppLine262: TppLine;
    ppLabel575: TppLabel;
    ppLabel576: TppLabel;
    ppLabel577: TppLabel;
    ppLine263: TppLine;
    ppLine264: TppLine;
    ppLabel581: TppLabel;
    ppLine265: TppLine;
    ppLabel582: TppLabel;
    ppLabel583: TppLabel;
    ppLabel584: TppLabel;
    ppLabel585: TppLabel;
    ppLabel586: TppLabel;
    ppLine266: TppLine;
    ppLine267: TppLine;
    ppLabel587: TppLabel;
    ppLabel588: TppLabel;
    ppLine268: TppLine;
    ppLine269: TppLine;
    ppLabel589: TppLabel;
    ppLabel590: TppLabel;
    ppLabel591: TppLabel;
    ppLabel603: TppLabel;
    pg001: TppLabel;
    ppHeaderBand14: TppHeaderBand;
    ppDetailBand14: TppDetailBand;
    ps02: TppShape;
    ppDBText291: TppDBText;
    ppDBText296: TppDBText;
    ppDBText297: TppDBText;
    ppDBText298: TppDBText;
    ppDBText299: TppDBText;
    ppDBText300: TppDBText;
    ppDBText302: TppDBText;
    ppDBText303: TppDBText;
    ppDBText304: TppDBText;
    ppDBText305: TppDBText;
    ppDBText306: TppDBText;
    ppDBText307: TppDBText;
    ppDBText308: TppDBText;
    ppDBText309: TppDBText;
    ppLine271: TppLine;
    ppLine272: TppLine;
    ppLine273: TppLine;
    ppLine274: TppLine;
    ppLine275: TppLine;
    ppLine276: TppLine;
    ppLine277: TppLine;
    ppLine278: TppLine;
    ppLine279: TppLine;
    grd002: TppLabel;
    ppSummaryBand11: TppSummaryBand;
    ppGroup25: TppGroup;
    ppGroupHeaderBand25: TppGroupHeaderBand;
    ppDBText290: TppDBText;
    ptyp002: TppLabel;
    ppLine270: TppLine;
    ppGroupFooterBand25: TppGroupFooterBand;
    ppLine280: TppLine;
    ppLabel524: TppLabel;
    ppLabel560: TppLabel;
    sah0: TppLabel;
    sah1: TppLabel;
    sah4: TppLabel;
    sah2: TppLabel;
    eff1: TppLabel;
    eff2: TppLabel;
    eff3: TppLabel;
    diff1: TppLabel;
    sah3: TppLabel;
    eff4: TppLabel;
    eff0: TppLabel;
    qty1: TppLabel;
    qty2: TppLabel;
    grd102: TppLabel;
    ppGroup26: TppGroup;
    ppGroupHeaderBand26: TppGroupHeaderBand;
    ppGroupFooterBand26: TppGroupFooterBand;
    ppGroup27: TppGroup;
    ppGroupHeaderBand27: TppGroupHeaderBand;
    ppShape28: TppShape;
    ppShape30: TppShape;
    ppShape29: TppShape;
    ppLabel495: TppLabel;
    ppLabel496: TppLabel;
    ppSystemVariable15: TppSystemVariable;
    ppLabel497: TppLabel;
    ppSystemVariable16: TppSystemVariable;
    ppLabel498: TppLabel;
    ppLabel501: TppLabel;
    dt018: TppLabel;
    ppLabel503: TppLabel;
    dt028: TppLabel;
    ppLabel505: TppLabel;
    ppLabel506: TppLabel;
    ppLabel507: TppLabel;
    ppLabel512: TppLabel;
    ppLine225: TppLine;
    ppLine226: TppLine;
    ppLabel519: TppLabel;
    ppLine232: TppLine;
    ppLabel520: TppLabel;
    ppLabel521: TppLabel;
    ppLine233: TppLine;
    ppLabel522: TppLabel;
    ppLine237: TppLine;
    ppLabel523: TppLabel;
    fty008: TppLabel;
    ppLine238: TppLine;
    ppLabel525: TppLabel;
    ppLabel526: TppLabel;
    ppLine239: TppLine;
    ppLine240: TppLine;
    ppLabel527: TppLabel;
    ppLabel528: TppLabel;
    ppLine241: TppLine;
    ppLabel529: TppLabel;
    ppLabel530: TppLabel;
    ppLabel531: TppLabel;
    ppLabel532: TppLabel;
    ppLabel533: TppLabel;
    ppLabel534: TppLabel;
    ppLabel535: TppLabel;
    ppLabel536: TppLabel;
    ppLabel537: TppLabel;
    ppLabel538: TppLabel;
    ppLine242: TppLine;
    ppLabel539: TppLabel;
    ppLabel540: TppLabel;
    ppLabel541: TppLabel;
    ppLine243: TppLine;
    ppLabel543: TppLabel;
    ppLabel544: TppLabel;
    ppLine244: TppLine;
    ppLabel546: TppLabel;
    ppLine245: TppLine;
    ppLabel547: TppLabel;
    ppLabel548: TppLabel;
    ppLabel549: TppLabel;
    ppLabel550: TppLabel;
    ppLabel551: TppLabel;
    ppLine246: TppLine;
    ppLine227: TppLine;
    ppLabel499: TppLabel;
    ppLabel500: TppLabel;
    ppLine228: TppLine;
    ppLine229: TppLine;
    ppLabel502: TppLabel;
    ppLabel504: TppLabel;
    ppLabel508: TppLabel;
    pc01: TppSystemVariable;
    ppGroupFooterBand27: TppGroupFooterBand;
    ppGroup29: TppGroup;
    ppGroupHeaderBand29: TppGroupHeaderBand;
    ppDBText272: TppDBText;
    ptyp001: TppLabel;
    ppLine231: TppLine;
    ppGroupFooterBand29: TppGroupFooterBand;
    ppLine230: TppLine;
    ppLabel509: TppLabel;
    ppLabel510: TppLabel;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    sah000: TppLabel;
    sah001: TppLabel;
    sah004: TppLabel;
    sah002: TppLabel;
    eff001: TppLabel;
    eff002: TppLabel;
    eff003: TppLabel;
    diff001: TppLabel;
    sah003: TppLabel;
    eff004: TppLabel;
    eff000: TppLabel;
    grd101: TppLabel;
    ppGroup24: TppGroup;
    ppGroupHeaderBand24: TppGroupHeaderBand;
    ppGroupFooterBand24: TppGroupFooterBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
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
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    rk001: TppLabel;
    rk002: TppLabel;
    x001: TppLabel;
    x002: TppLabel;
    x003: TppLabel;
    x004: TppLabel;
    ppRichText1: TppRichText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine10: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    q1p01: TppLabel;
    q2p01: TppLabel;
    Query1: TClientDataSet;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    fty001: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    q1001: TppLabel;
    q2001: TppLabel;
    s0001: TppLabel;
    s1001: TppLabel;
    s4001: TppLabel;
    s2001: TppLabel;
    e1001: TppLabel;
    e2001: TppLabel;
    e3001: TppLabel;
    d1001: TppLabel;
    s3001: TppLabel;
    e4001: TppLabel;
    e0001: TppLabel;
    r1001: TppLabel;
    g1001: TppLabel;
    g2001: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    q1002: TppLabel;
    q2002: TppLabel;
    s0002: TppLabel;
    s1002: TppLabel;
    s4002: TppLabel;
    s2002: TppLabel;
    e1002: TppLabel;
    e2002: TppLabel;
    e3002: TppLabel;
    d1002: TppLabel;
    s3002: TppLabel;
    e4002: TppLabel;
    e0002: TppLabel;
    r1002: TppLabel;
    g1002: TppLabel;
    g2002: TppLabel;
    ppLabel60: TppLabel;
    q1003: TppLabel;
    q2003: TppLabel;
    s0003: TppLabel;
    s1003: TppLabel;
    s4003: TppLabel;
    s2003: TppLabel;
    e1003: TppLabel;
    e2003: TppLabel;
    e3003: TppLabel;
    d1003: TppLabel;
    s3003: TppLabel;
    e4003: TppLabel;
    e0003: TppLabel;
    r1003: TppLabel;
    g1003: TppLabel;
    g2003: TppLabel;
    ppLabel78: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLine16: TppLine;
    ppLabel83: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine21: TppLine;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLine22: TppLine;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel100: TppLabel;
    ppLine25: TppLine;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLine30: TppLine;
    ppLabel111: TppLabel;
    ppLine31: TppLine;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLine32: TppLine;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLabel124: TppLabel;
    q1007: TppLabel;
    q2007: TppLabel;
    s0007: TppLabel;
    s1007: TppLabel;
    s4007: TppLabel;
    s2007: TppLabel;
    e1007: TppLabel;
    e2007: TppLabel;
    e3007: TppLabel;
    d1007: TppLabel;
    s3007: TppLabel;
    e4007: TppLabel;
    e0007: TppLabel;
    r1007: TppLabel;
    g1007: TppLabel;
    g2007: TppLabel;
    ppLabel141: TppLabel;
    q1008: TppLabel;
    q2008: TppLabel;
    s0008: TppLabel;
    s1008: TppLabel;
    s4008: TppLabel;
    s2008: TppLabel;
    e1008: TppLabel;
    e2008: TppLabel;
    e3008: TppLabel;
    d1008: TppLabel;
    s3008: TppLabel;
    e4008: TppLabel;
    e0008: TppLabel;
    r1008: TppLabel;
    g1008: TppLabel;
    g2008: TppLabel;
    ppLabel159: TppLabel;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLine38: TppLine;
    ppLabel170: TppLabel;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLine43: TppLine;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLine44: TppLine;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLabel187: TppLabel;
    ppLine47: TppLine;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLine52: TppLine;
    ppLabel198: TppLabel;
    ppLine53: TppLine;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLabel202: TppLabel;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLabel205: TppLabel;
    ppLabel206: TppLabel;
    ppLine54: TppLine;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppLabel209: TppLabel;
    ppLabel210: TppLabel;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLabel211: TppLabel;
    q1004: TppLabel;
    q2004: TppLabel;
    s0004: TppLabel;
    s1004: TppLabel;
    s4004: TppLabel;
    s2004: TppLabel;
    e1004: TppLabel;
    e2004: TppLabel;
    e3004: TppLabel;
    d1004: TppLabel;
    s3004: TppLabel;
    e4004: TppLabel;
    e0004: TppLabel;
    r1004: TppLabel;
    g1004: TppLabel;
    g2004: TppLabel;
    ppLabel219: TppLabel;
    ppLabel220: TppLabel;
    q1005: TppLabel;
    q2005: TppLabel;
    s0005: TppLabel;
    s1005: TppLabel;
    s4005: TppLabel;
    s2005: TppLabel;
    e1005: TppLabel;
    e2005: TppLabel;
    e3005: TppLabel;
    d1005: TppLabel;
    s3005: TppLabel;
    e4005: TppLabel;
    e0005: TppLabel;
    r1005: TppLabel;
    g1005: TppLabel;
    g2005: TppLabel;
    ppLabel237: TppLabel;
    q1006: TppLabel;
    q2006: TppLabel;
    s0006: TppLabel;
    s1006: TppLabel;
    s4006: TppLabel;
    s2006: TppLabel;
    e1006: TppLabel;
    e2006: TppLabel;
    e3006: TppLabel;
    d1006: TppLabel;
    s3006: TppLabel;
    e4006: TppLabel;
    e0006: TppLabel;
    r1006: TppLabel;
    g1006: TppLabel;
    g2006: TppLabel;
    ppLabel254: TppLabel;
    p1001: TppLabel;
    p2001: TppLabel;
    p1002: TppLabel;
    p2002: TppLabel;
    p1003: TppLabel;
    p1004: TppLabel;
    p2004: TppLabel;
    p2003: TppLabel;
    p1005: TppLabel;
    p1006: TppLabel;
    p2006: TppLabel;
    p2005: TppLabel;
    p1007: TppLabel;
    p1008: TppLabel;
    p2007: TppLabel;
    p2008: TppLabel;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppRichText2: TppRichText;
    procedure ppReport8PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand13BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand29BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand29BeforePrint(Sender: TObject);
    procedure ppDetailBand14BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand25BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand25BeforePrint(Sender: TObject);
    procedure ppTitleBand6BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmshvplusgai: Tfrmshvplusgai;
  q1,q2:integer;

implementation

uses mainformu, custformu;

{$R *.dfm}

procedure Tfrmshvplusgai.ppReport8PreviewFormCreate(Sender: TObject);
begin
  ppReport8.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport8.PreviewForm.Viewer).ZoomPercentage:=100;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select sum(qty1) as q1,sum(qty2) as q2 from temp_prjbd_summary a where exists (select cust from temp_prjbd_summary b where tplant=''All'' and a.cust=b.cust and a.flag6=b.flag6)';
      if frmcustomer.combobox6.text>'' then commandtext:=commandtext+' and tplant='''+frmcustomer.combobox6.text+'''';
      open;
      q1:=fieldbyname('q1').value;
      q2:=fieldbyname('q2').value;
    end;
end;

procedure Tfrmshvplusgai.ppDetailBand13BeforePrint(Sender: TObject);
begin
  if query7.fieldbyname('diff').value>0 then ppdbtext283.Font.Color:=clGreen
  else if query7.fieldbyname('diff').value<0 then ppdbtext283.Font.color:=clRed
  else ppdbtext283.Font.Color:=clBlack;
  if query7.fieldbyname('sah3').value>query7.fieldbyname('sah2').value then
  ppdbtext278.font.Color:=clRed
  else if query7.fieldbyname('sah3').value<query7.fieldbyname('sah2').value then
  ppdbtext278.Font.Color:=clGreen else ppdbtext278.Font.Color:=clBlack;
  if query7.fieldbyname('tplant').value='KB' then ps01.Visible:=true
  else ps01.Visible:=false;
  if query7.fieldbyname('eff3').value>90.0 then begin
    grd001.Caption:=' A'; grd001.Font.Color:=clGreen;
    ppdbtext282.Font.Color:=clGreen;
  end else if query7.fieldbyname('eff3').value>80 then begin
    grd001.Caption:=' B'; grd001.Font.Color:=clGreen;
    ppdbtext282.Font.Color:=clGreen;
  end else if query7.FieldByName('eff3').value>70 then begin
    grd001.Caption:=' C'; grd001.Font.Color:=clBlack;
    ppdbtext282.Font.Color:=clBlack;
  end else if query7.FieldByName('eff3').value>60 then begin
    grd001.caption:=' D'; grd001.Font.Color:=clBlack;
    ppdbtext282.Font.Color:=clBlack;
  end else if query7.fieldbyname('eff3').value>30 then begin
    grd001.Caption:=' F'; grd001.Font.Color:=clRed;
    ppdbtext282.Font.Color:=clRed;
  end else begin
    grd001.Caption:=' U'; grd001.Font.Color:=clRed;
    ppdbtext282.Font.Color:=clRed;
  end;
  if query7.fieldbyname('gai1').value>90 then ppdbtext1.Font.Color:=clGreen
  else if query7.fieldbyname('gai1').value<75 then ppdbtext1.Font.Color:=clRed
  else ppdbtext1.Font.Color:=clBlack;
  if query7.fieldbyname('gai2').value>90 then ppdbtext2.Font.Color:=clGreen
  else if query7.fieldbyname('gai2').value<75 then ppdbtext2.Font.Color:=clRed
  else ppdbtext2.Font.Color:=clBlack;
  if not query7.fieldbyname('rk1').isnull then rk001.Caption:='('+query7.fieldbyname('rk1').asstring+')'
  else rk001.Caption:='';
  if not query7.fieldbyname('rk2').isnull then rk002.Caption:='('+query7.fieldbyname('rk2').asstring+')'
  else rk002.Caption:='';
  rk001.Font.Color:=ppdbtext1.Font.Color;
  rk002.Font.Color:=ppdbtext2.Font.Color;
end;

procedure Tfrmshvplusgai.ppGroupFooterBand29BeforePrint(Sender: TObject);
begin
  with query3 do begin
      close;
      params.clear;
      commandtext:='select sum(sah0*qty2)/sum(qty2) as s0,sum(sah1*qty2)/sum(qty2) as s1,sum(sah2*qty2)/sum(qty2) as s2,'
                  +'sum(sah3*qty2)/sum(qty2) as s3,sum(sah4*qty2)/sum(qty2) as s4,sum(eff3*qty2)/sum(qty2) as e3,sum(pqty) as x1,sum(aqty) as x2,sum(tqty) as x3 '
                  +'from temp_prjbd_summary where flag6='''+query7.fieldbyname('flag6').value+'''';
      if frmcustomer.combobox6.text>'' then commandtext:=commandtext+' and tplant='''+frmcustomer.combobox6.text+'''';
      open;
      if not fieldbyname('s0').isnull then sah000.Caption:=formatfloat('0.0000',fieldbyname('s0').value)
      else sah000.Caption:='0.0000';
      if not fieldbyname('s1').isnull then sah001.Caption:=formatfloat('0.0000',fieldbyname('s1').value)
      else sah001.Caption:='0.0000';
      if not fieldbyname('s2').isnull then sah002.Caption:=formatfloat('0.0000',fieldbyname('s2').value)
      else sah002.Caption:='0.0000';
      if not fieldbyname('s3').isnull then sah003.Caption:=formatfloat('0.0000',fieldbyname('s3').value)
      else sah003.Caption:='0.0000';
      if not fieldbyname('s4').isnull then sah004.Caption:=formatfloat('0.0000',fieldbyname('s4').value)
      else sah004.Caption:='0.0000';
      if not fieldbyname('e3').isnull then eff003.Caption:=formatfloat('0.00',fieldbyname('e3').value)
      else eff003.Caption:='0.00';
      if fieldbyname('e3').value>90.0 then begin
        grd101.Caption:=' A'; grd101.Font.Color:=clGreen;
        eff003.Font.Color:=clGreen;
      end else if fieldbyname('e3').value>80 then begin
        grd101.Caption:=' B'; grd101.Font.Color:=clGreen;
        eff003.Font.Color:=clGreen;
      end else if FieldByName('e3').value>70 then begin
        grd101.Caption:=' C'; grd101.Font.Color:=clBlack;
        eff003.Font.Color:=clBlack;
      end else if FieldByName('e3').value>60 then begin
        grd101.caption:=' D'; grd101.Font.Color:=clBlack;
        eff003.Font.Color:=clBlack;
      end else if fieldbyname('e3').value>30 then begin
        grd101.Caption:=' F'; grd101.Font.Color:=clRed;
        eff003.Font.Color:=clRed;
      end else begin
        grd101.Caption:=' U'; grd101.Font.Color:=clRed;
        eff003.Font.Color:=clRed;
      end;
      if fieldbyname('s2').value>0 then begin
        eff000.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s2').value);
      end else begin
        eff000.Caption:='0.00';
      end;
      if fieldbyname('s4').value>0 then begin
        eff004.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s4').value);
      end else begin
        eff004.Caption:='0.00';
      end;
      if fieldbyname('s3').value>0 then begin
        eff001.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s3').value);
        eff002.Caption:=formatfloat('0.00',fieldbyname('s2').value*100.00/fieldbyname('s3').value);
      end else begin
        eff001.Caption:='0.00';
        eff002.Caption:='0.00';
      end;
      if fieldbyname('s3').value<fieldbyname('s2').value then sah003.Font.Color:=clGreen
      else if fieldbyname('s3').value>fieldbyname('s2').value then sah003.Font.Color:=clRed
      else sah003.Font.Color:=clBlack;
      if fieldbyname('x1').value>0 then begin
        x001.Caption:=formatfloat('0.00',fieldbyname('x2').value*100.0/fieldbyname('x1').value);
        x002.Caption:=formatfloat('0.00',fieldbyname('x3').value*100.0/fieldbyname('x1').value);
        if fieldbyname('x2').value/fieldbyname('x1').value>0.9 then x001.Font.Color:=clGreen
        else if fieldbyname('x2').value/fieldbyname('x1').value<0.75 then x001.Font.Color:=clRed
        else x001.Font.Color:=clBlack;
        if fieldbyname('x3').value/fieldbyname('x1').value>0.9 then x002.Font.Color:=clGreen
        else if fieldbyname('x3').value/fieldbyname('x1').value<0.75 then x002.Font.Color:=clRed
        else x002.Font.Color:=clBlack;
      end else begin
        x001.Caption:='0.00';
        x002.Caption:='0.00';
      end;
  end;
      diff001.Caption:=formatfloat('0.00',strtofloat(eff003.Caption)-strtofloat(eff001.Caption));
      if strtofloat(eff003.Caption)>strtofloat(eff001.Caption) then diff001.Font.Color:=clGreen
      else if strtofloat(eff003.Caption)<strtofloat(eff001.Caption) then diff001.Font.Color:=clRed
      else diff001.Font.Color:=clBlack;
end;

procedure Tfrmshvplusgai.ppGroupHeaderBand29BeforePrint(Sender: TObject);
begin
  if query7.fieldbyname('flag6').value='B' then ptyp001.caption:='Product Type / Code:   BRA / B :- '
  else if query7.fieldbyname('flag6').value='K' then ptyp001.Caption:='Product Type / Code:   KNICKER / K :- '
  else ptyp001.Caption:='Product Type / Code:   UNDERWEAR / U :- ';
end;

procedure Tfrmshvplusgai.ppDetailBand14BeforePrint(Sender: TObject);
begin
  if query10.fieldbyname('diff').value>0 then ppdbtext307.Font.Color:=clGreen
  else if query10.fieldbyname('diff').value<0 then ppdbtext307.Font.color:=clRed
  else ppdbtext307.Font.Color:=clBlack;
  if query10.fieldbyname('sah3').value>query10.fieldbyname('sah2').value then
  ppdbtext302.font.Color:=clRed
  else if query10.fieldbyname('sah3').value<query10.fieldbyname('sah2').value then
  ppdbtext302.Font.Color:=clGreen else ppdbtext302.Font.Color:=clBlack;
  if query10.fieldbyname('tplant').value='KB' then ps02.Visible:=true
  else ps02.Visible:=false;
  if query10.fieldbyname('eff3').value>90.0 then begin
    grd002.Caption:=' A'; grd002.Font.Color:=clGreen;
    ppdbtext306.Font.Color:=clGreen;
  end else if query10.fieldbyname('eff3').value>80 then begin
    grd002.Caption:=' B'; grd002.Font.Color:=clGreen;
    ppdbtext306.Font.Color:=clGreen;
  end else if query10.FieldByName('eff3').value>70 then begin
    grd002.Caption:=' C'; grd002.Font.Color:=clBlack;
    ppdbtext306.Font.Color:=clBlack;
  end else if query10.FieldByName('eff3').value>60 then begin
    grd002.caption:=' D'; grd002.Font.Color:=clBlack;
    ppdbtext306.Font.Color:=clBlack;
  end else if query10.fieldbyname('eff3').value>30 then begin
    grd002.Caption:=' F'; grd002.Font.Color:=clRed;
    ppdbtext306.Font.Color:=clRed;
  end else begin
    grd002.Caption:=' U'; grd002.Font.Color:=clRed;
    ppdbtext306.Font.Color:=clRed;
  end;
  if query10.FieldByName('gai1').value>90 then ppdbtext3.Font.Color:=clGreen
  else if query10.fieldbyname('gai1').value<75 then ppdbtext3.Font.Color:=clRed
  else ppdbtext3.Font.Color:=clBlack;
  if query10.FieldByName('gai2').value>90 then ppdbtext4.Font.Color:=clGreen
  else if query10.fieldbyname('gai2').value<75 then ppdbtext4.Font.Color:=clRed
  else ppdbtext4.Font.Color:=clBlack;
  q1p01.Caption:=formatfloat('0.00%',query10.fieldbyname('qty1').value*100.00/q1);
  q2p01.Caption:=formatfloat('0.00%',query10.fieldbyname('qty2').value*100.00/q2);
  if query10.fieldbyname('tplant').value<>'All' then fty001.Caption:=query10.fieldbyname('tplant').value
  else fty001.Caption:='SL+KB';
end;

procedure Tfrmshvplusgai.ppGroupFooterBand25BeforePrint(Sender: TObject);
begin
  with query3 do begin
      close;
      params.clear;
      commandtext:='select sum(qty1) as q1,sum(qty2) as q2,sum(sah0*qty2)/sum(qty2) as s0,sum(sah1*qty2)/sum(qty2) as s1,sum(sah2*qty2)/sum(qty2) as s2,'
                  +'sum(sah3*qty2)/sum(qty2) as s3,sum(sah4*qty2)/sum(qty2) as s4,sum(eff3*qty2)/sum(qty2) as e3,sum(pqty) as x1,sum(aqty) as x2,sum(tqty) as x3 '
                  +'from temp_prjbd_summary where flag6='''+query10.fieldbyname('flag6').value+''' and tplant=''All''';
      if frmcustomer.combobox6.text>'' then commandtext:=commandtext+' and tplant='''+frmcustomer.combobox6.text+'''';
      open;
      if not fieldbyname('q1').isnull then qty1.Caption:=fieldbyname('q1').AsString else qty1.Caption:='0';
      if not fieldbyname('q2').isnull then qty2.Caption:=fieldbyname('q2').AsString else qty2.Caption:='0';
      if not fieldbyname('s0').isnull then sah0.Caption:=formatfloat('0.0000',fieldbyname('s0').value)
      else sah0.Caption:='0.0000';
      if not fieldbyname('s1').isnull then sah1.Caption:=formatfloat('0.0000',fieldbyname('s1').value)
      else sah1.Caption:='0.0000';
      if not fieldbyname('s2').isnull then sah2.Caption:=formatfloat('0.0000',fieldbyname('s2').value)
      else sah2.Caption:='0.0000';
      if not fieldbyname('s3').isnull then sah3.Caption:=formatfloat('0.0000',fieldbyname('s3').value)
      else sah3.Caption:='0.0000';
      if not fieldbyname('s4').isnull then sah4.Caption:=formatfloat('0.0000',fieldbyname('s4').value)
      else sah4.Caption:='0.0000';
      if not fieldbyname('e3').isnull then eff3.Caption:=formatfloat('0.00',fieldbyname('e3').value)
      else eff3.Caption:='0.00';
      if fieldbyname('e3').value>90.0 then begin
        grd102.Caption:=' A'; grd102.Font.Color:=clGreen;
        eff3.Font.Color:=clGreen;
      end else if fieldbyname('e3').value>80 then begin
        grd102.Caption:=' B'; grd102.Font.Color:=clGreen;
        eff3.Font.Color:=clGreen;
      end else if FieldByName('e3').value>70 then begin
        grd102.Caption:=' C'; grd102.Font.Color:=clBlack;
        eff3.Font.Color:=clBlack;
      end else if FieldByName('e3').value>60 then begin
        grd102.caption:=' D'; grd102.Font.Color:=clBlack;
        eff3.Font.Color:=clBlack;
      end else if fieldbyname('e3').value>30 then begin
        grd102.Caption:=' F'; grd102.Font.Color:=clRed;
        eff3.Font.Color:=clRed;
      end else begin
        grd102.Caption:=' U'; grd102.Font.Color:=clRed;
        eff3.Font.Color:=clRed;
      end;
      if fieldbyname('s2').value>0 then begin
        eff0.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s2').value);
      end else begin
        eff0.Caption:='0.00';
      end;
      if fieldbyname('s4').value>0 then begin
        eff4.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s4').value);
      end else begin
        eff4.Caption:='0.00';
      end;
      if fieldbyname('s3').value>0 then begin
        eff1.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s3').value);
        eff2.Caption:=formatfloat('0.00',fieldbyname('s2').value*100.00/fieldbyname('s3').value);
      end else begin
        eff1.Caption:='0.00';
        eff2.Caption:='0.00';
      end;
      if fieldbyname('s3').value<fieldbyname('s2').value then sah3.Font.Color:=clGreen
      else if fieldbyname('s3').value>fieldbyname('s2').value then sah3.Font.Color:=clRed
      else sah3.Font.Color:=clBlack;
      if fieldbyname('x1').value>0 then begin
        x003.Caption:=formatfloat('0.00',fieldbyname('x2').value*100.0/fieldbyname('x1').value);
        x004.Caption:=formatfloat('0.00',fieldbyname('x3').value*100.0/fieldbyname('x1').value);
        if fieldbyname('x2').value/fieldbyname('x1').value>0.9 then x003.Font.Color:=clGreen
        else if fieldbyname('x2').value/fieldbyname('x1').value<0.75 then x003.Font.Color:=clRed
        else x003.Font.Color:=clBlack;
        if fieldbyname('x3').value/fieldbyname('x1').value>0.9 then x004.Font.Color:=clGreen
        else if fieldbyname('x3').value/fieldbyname('x1').value<0.75 then x004.Font.Color:=clRed
        else x004.Font.Color:=clBlack;
      end else begin
        x003.Caption:='0.00';
        x004.Caption:='0.00';
      end;
  end;
      diff1.Caption:=formatfloat('0.00',strtofloat(eff3.Caption)-strtofloat(eff1.Caption));
      if strtofloat(eff3.Caption)>strtofloat(eff1.Caption) then diff1.Font.Color:=clGreen
      else if strtofloat(eff3.Caption)<strtofloat(eff1.Caption) then diff1.Font.Color:=clRed
      else diff1.Font.Color:=clBlack;
end;

procedure Tfrmshvplusgai.ppGroupHeaderBand25BeforePrint(Sender: TObject);
begin
  if query10.fieldbyname('flag6').value='B' then ptyp002.caption:='Product Type / Code:   BRA / B :- '
  else if query10.fieldbyname('flag6').value='K' then ptyp002.Caption:='Product Type / Code:   KNICKER / K :- '
  else ptyp002.Caption:='Product Type / Code:   UNDERWEAR / U :- ';
end;

procedure Tfrmshvplusgai.ppTitleBand6BeforePrint(Sender: TObject);
var
  sq1,sq2,kq1,kq2:integer;
  sp1,sp2,kp1,kp2:double;
begin
  pg001.Caption:=pc01.Text+' of '+pc01.Text;
  sq1:=0; sq2:=0; kq1:=0; kq2:=0;
  sp1:=0; sp2:=0; kp1:=0; kp2:=0;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct tplant,flag60,sum(pqty) as x1,sum(aqty) as x2,sum(diff) as x3 from v_ga_percent where dt>=:x1 and dt<=:x2 and cust not in (''ESSE'') group by tplant,flag60';
    params[0].asdate:=frmcustomer.dateedit1.date;
    params[1].asdate:=frmcustomer.dateedit2.date;
    open;
    first;
    while not eof do begin
      if fieldbyname('tplant').value='SL' then begin
        if fieldbyname('flag60').value='B' then begin
          if fieldbyname('x1').value>0 then begin
            g1001.Caption:=formatfloat('0.00',fieldbyname('x2').value*100.0/fieldbyname('x1').value);
            g2001.Caption:=formatfloat('0.00',fieldbyname('x3').value*100.0/fieldbyname('x1').value);
            if fieldbyname('x2').value/fieldbyname('x1').value>0.9 then g1001.Font.Color:=clGreen
            else if fieldbyname('x2').value/fieldbyname('x1').value<0.75 then g1001.Font.Color:=clRed
            else g1001.Font.Color:=clBlack;
            if fieldbyname('x3').value/fieldbyname('x1').value>0.9 then g2001.Font.Color:=clGreen
            else if fieldbyname('x3').value/fieldbyname('x1').value<0.75 then g2001.Font.Color:=clRed
            else g2001.Font.Color:=clBlack;
          end else begin
            g1001.Caption:='0.00';
            g2001.Caption:='0.00';
          end;
        end else if fieldbyname('flag60').value='K' then begin
          if fieldbyname('x1').value>0 then begin
            g1002.Caption:=formatfloat('0.00',fieldbyname('x2').value*100.0/fieldbyname('x1').value);
            g2002.Caption:=formatfloat('0.00',fieldbyname('x3').value*100.0/fieldbyname('x1').value);
            if fieldbyname('x2').value/fieldbyname('x1').value>0.9 then g1002.Font.Color:=clGreen
            else if fieldbyname('x2').value/fieldbyname('x1').value<0.75 then g1002.Font.Color:=clRed
            else g1002.Font.Color:=clBlack;
            if fieldbyname('x3').value/fieldbyname('x1').value>0.9 then g2002.Font.Color:=clGreen
            else if fieldbyname('x3').value/fieldbyname('x1').value<0.75 then g2002.Font.Color:=clRed
            else g2002.Font.Color:=clBlack;
          end else begin
            g1002.Caption:='0.00';
            g2002.Caption:='0.00';
          end;
        end else if fieldbyname('flag60').value='U' then begin
          if fieldbyname('x1').value>0 then begin
            g1003.Caption:=formatfloat('0.00',fieldbyname('x2').value*100.0/fieldbyname('x1').value);
            g2003.Caption:=formatfloat('0.00',fieldbyname('x3').value*100.0/fieldbyname('x1').value);
            if fieldbyname('x2').value/fieldbyname('x1').value>0.9 then g1003.Font.Color:=clGreen
            else if fieldbyname('x2').value/fieldbyname('x1').value<0.75 then g1003.Font.Color:=clRed
            else g1003.Font.Color:=clBlack;
            if fieldbyname('x3').value/fieldbyname('x1').value>0.9 then g2003.Font.Color:=clGreen
            else if fieldbyname('x3').value/fieldbyname('x1').value<0.75 then g2003.Font.Color:=clRed
            else g2003.Font.Color:=clBlack;
          end else begin
            g1003.Caption:='0.00';
            g2003.Caption:='0.00';
          end;
        end;
      end else if fieldbyname('tplant').value='KB' then begin
        if fieldbyname('flag60').value='B' then begin
          if fieldbyname('x1').value>0 then begin
            g1004.Caption:=formatfloat('0.00',fieldbyname('x2').value*100.0/fieldbyname('x1').value);
            g2004.Caption:=formatfloat('0.00',fieldbyname('x3').value*100.0/fieldbyname('x1').value);
            if fieldbyname('x2').value/fieldbyname('x1').value>0.9 then g1004.Font.Color:=clGreen
            else if fieldbyname('x2').value/fieldbyname('x1').value<0.75 then g1004.Font.Color:=clRed
            else g1004.Font.Color:=clBlack;
            if fieldbyname('x3').value/fieldbyname('x1').value>0.9 then g2004.Font.Color:=clGreen
            else if fieldbyname('x3').value/fieldbyname('x1').value<0.75 then g2004.Font.Color:=clRed
            else g2004.Font.Color:=clBlack;
          end else begin
            g1004.Caption:='0.00';
            g2004.Caption:='0.00';
          end;
        end else if fieldbyname('flag60').value='K' then begin
          if fieldbyname('x1').value>0 then begin
            g1005.Caption:=formatfloat('0.00',fieldbyname('x2').value*100.0/fieldbyname('x1').value);
            g2005.Caption:=formatfloat('0.00',fieldbyname('x3').value*100.0/fieldbyname('x1').value);
            if fieldbyname('x2').value/fieldbyname('x1').value>0.9 then g1005.Font.Color:=clGreen
            else if fieldbyname('x2').value/fieldbyname('x1').value<0.75 then g1005.Font.Color:=clRed
            else g1005.Font.Color:=clBlack;
            if fieldbyname('x3').value/fieldbyname('x1').value>0.9 then g2005.Font.Color:=clGreen
            else if fieldbyname('x3').value/fieldbyname('x1').value<0.75 then g2005.Font.Color:=clRed
            else g2005.Font.Color:=clBlack;
          end else begin
            g1005.Caption:='0.00';
            g2005.Caption:='0.00';
          end;
        end else if fieldbyname('flag60').value='U' then begin
          if fieldbyname('x1').value>0 then begin
            g1006.Caption:=formatfloat('0.00',fieldbyname('x2').value*100.0/fieldbyname('x1').value);
            g2006.Caption:=formatfloat('0.00',fieldbyname('x3').value*100.0/fieldbyname('x1').value);
            if fieldbyname('x2').value/fieldbyname('x1').value>0.9 then g1006.Font.Color:=clGreen
            else if fieldbyname('x2').value/fieldbyname('x1').value<0.75 then g1006.Font.Color:=clRed
            else g1006.Font.Color:=clBlack;
            if fieldbyname('x3').value/fieldbyname('x1').value>0.9 then g2006.Font.Color:=clGreen
            else if fieldbyname('x3').value/fieldbyname('x1').value<0.75 then g2006.Font.Color:=clRed
            else g2006.Font.Color:=clBlack;
          end else begin
            g1006.Caption:='0.00';
            g2006.Caption:='0.00';
          end;
        end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct tplant,flag6,sum(qty1) as q1,sum(qty2) as q2,sum(q1p) as p1,sum(q2p) as p2,'
                +'sum(sah0*qty2)/sum(qty2) as s0,sum(sah1*qty2)/sum(qty2) as s1,sum(sah2*qty2)/sum(qty2) as s2,'
                +'sum(sah3*qty2)/sum(qty2) as s3,sum(sah4*qty2)/sum(qty2) as s4,sum(eff3*qty2)/sum(qty2) as e3,sum(pqty) as x1,sum(aqty) as x2,sum(tqty) as x3 '
                +'from temp_prjbd_summary where tplant<>''All''';
    if frmcustomer.ComboBox6.text>'' then commandtext:=commandtext+' and tplant='''+frmcustomer.ComboBox6.text+'''';
    commandtext:=commandtext+' group by tplant,flag6';
    open;
    first;
    while not eof do begin
      if fieldbyname('tplant').value='SL' then begin
        if fieldbyname('flag6').value='B' then begin
          q1001.Caption:=fieldbyname('q1').asstring;
          q2001.Caption:=fieldbyname('q2').asstring;
          p1001.Caption:=formatfloat('0.00%',fieldbyname('p1').value);
          p2001.Caption:=formatfloat('0.00%',fieldbyname('p2').value);
          s0001.Caption:=formatfloat('0.0000',fieldbyname('s0').value);
          s1001.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          s2001.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          s3001.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          s4001.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
          e3001.Caption:=formatfloat('0.00',fieldbyname('e3').value);
          if fieldbyname('s2').value>0 then
            e0001.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s2').value)
          else e0001.Caption:='0.00';
          if fieldbyname('s4').value>0 then
            e4001.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s4').value)
          else e4001.Caption:='0.00';
          if fieldbyname('s3').value>0 then begin
            e1001.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s3').value);
            e2001.Caption:=formatfloat('0.00',fieldbyname('s2').value*100.00/fieldbyname('s3').value);
          end else begin
            e1001.Caption:='0.00';
            e2001.Caption:='0.00';
          end;
          if fieldbyname('s3').value<fieldbyname('s2').value then s3001.Font.Color:=clGreen
          else if fieldbyname('s3').value>fieldbyname('s2').value then s3001.Font.Color:=clRed
          else s3001.Font.Color:=clBlack;
          d1001.Caption:=formatfloat('0.00',strtofloat(e3001.Caption)-strtofloat(e1001.Caption));
          if strtofloat(e3001.Caption)>strtofloat(e1001.Caption) then d1001.Font.Color:=clGreen
          else if strtofloat(e3001.Caption)<strtofloat(e1001.Caption) then d1001.Font.Color:=clRed
          else d1001.Font.Color:=clBlack;
          if fieldbyname('e3').value>90.0 then begin
            r1001.Caption:=' A'; r1001.Font.Color:=clGreen;
            e3001.Font.Color:=clGreen;
          end else if fieldbyname('e3').value>80 then begin
            r1001.Caption:=' B'; r1001.Font.Color:=clGreen;
            e3001.Font.Color:=clGreen;
          end else if FieldByName('e3').value>70 then begin
            r1001.Caption:=' C'; r1001.Font.Color:=clBlack;
            e3001.Font.Color:=clBlack;
          end else if FieldByName('e3').value>60 then begin
            r1001.caption:=' D'; r1001.Font.Color:=clBlack;
            e3001.Font.Color:=clBlack;
          end else if fieldbyname('e3').value>30 then begin
            r1001.Caption:=' F'; r1001.Font.Color:=clRed;
            e3001.Font.Color:=clRed;
          end else begin
            r1001.Caption:=' U'; r1001.Font.Color:=clRed;
            e3001.Font.Color:=clRed;
          end;
        end else if fieldbyname('flag6').value='K' then begin
          q1002.Caption:=fieldbyname('q1').asstring;
          q2002.Caption:=fieldbyname('q2').asstring;
          p1002.Caption:=formatfloat('0.00%',fieldbyname('p1').value);
          p2002.Caption:=formatfloat('0.00%',fieldbyname('p2').value);
          s0002.Caption:=formatfloat('0.0000',fieldbyname('s0').value);
          s1002.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          s2002.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          s3002.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          s4002.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
          e3002.Caption:=formatfloat('0.00',fieldbyname('e3').value);
          if fieldbyname('s2').value>0 then
            e0002.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s2').value)
          else e0002.Caption:='0.00';
          if fieldbyname('s4').value>0 then
            e4002.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s4').value)
          else e4002.Caption:='0.00';
          if fieldbyname('s3').value>0 then begin
            e1002.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s3').value);
            e2002.Caption:=formatfloat('0.00',fieldbyname('s2').value*100.00/fieldbyname('s3').value);
          end else begin
            e1002.Caption:='0.00';
            e2002.Caption:='0.00';
          end;
          if fieldbyname('s3').value<fieldbyname('s2').value then s3002.Font.Color:=clGreen
          else if fieldbyname('s3').value>fieldbyname('s2').value then s3002.Font.Color:=clRed
          else s3002.Font.Color:=clBlack;
          d1002.Caption:=formatfloat('0.00',strtofloat(e3002.Caption)-strtofloat(e1002.Caption));
          if strtofloat(e3002.Caption)>strtofloat(e1002.Caption) then d1002.Font.Color:=clGreen
          else if strtofloat(e3002.Caption)<strtofloat(e1002.Caption) then d1002.Font.Color:=clRed
          else d1002.Font.Color:=clBlack;
          if fieldbyname('e3').value>90.0 then begin
            r1002.Caption:=' A'; r1002.Font.Color:=clGreen;
            e3002.Font.Color:=clGreen;
          end else if fieldbyname('e3').value>80 then begin
            r1002.Caption:=' B'; r1002.Font.Color:=clGreen;
            e3002.Font.Color:=clGreen;
          end else if FieldByName('e3').value>70 then begin
            r1002.Caption:=' C'; r1002.Font.Color:=clBlack;
            e3002.Font.Color:=clBlack;
          end else if FieldByName('e3').value>60 then begin
            r1002.caption:=' D'; r1002.Font.Color:=clBlack;
            e3002.Font.Color:=clBlack;
          end else if fieldbyname('e3').value>30 then begin
            r1002.Caption:=' F'; r1002.Font.Color:=clRed;
            e3002.Font.Color:=clRed;
          end else begin
            r1002.Caption:=' U'; r1002.Font.Color:=clRed;
            e3002.Font.Color:=clRed;
          end;
        end else if fieldbyname('flag6').value='U' then begin
          q1003.Caption:=fieldbyname('q1').AsString;
          q2003.Caption:=fieldbyname('q2').asstring;
          p1003.Caption:=formatfloat('0.00%',fieldbyname('p1').value);
          p2003.Caption:=formatfloat('0.00%',fieldbyname('p2').value);
          s0003.Caption:=formatfloat('0.0000',fieldbyname('s0').value);
          s1003.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          s2003.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          s3003.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          s4003.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
          e3003.Caption:=formatfloat('0.00',fieldbyname('e3').value);
          if fieldbyname('s2').value>0 then
            e0003.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s2').value)
          else e0003.Caption:='0.00';
          if fieldbyname('s4').value>0 then
            e4003.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s4').value)
          else e4003.Caption:='0.00';
          if fieldbyname('s3').value>0 then begin
            e1003.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s3').value);
            e2003.Caption:=formatfloat('0.00',fieldbyname('s2').value*100.00/fieldbyname('s3').value);
          end else begin
            e1003.Caption:='0.00';
            e2003.Caption:='0.00';
          end;
          if fieldbyname('s3').value<fieldbyname('s2').value then s3003.Font.Color:=clGreen
          else if fieldbyname('s3').value>fieldbyname('s2').value then s3003.Font.Color:=clRed
          else s3003.Font.Color:=clBlack;
          d1003.Caption:=formatfloat('0.00',strtofloat(e3003.Caption)-strtofloat(e1003.Caption));
          if strtofloat(e3003.Caption)>strtofloat(e1003.Caption) then d1003.Font.Color:=clGreen
          else if strtofloat(e3003.Caption)<strtofloat(e1003.Caption) then d1003.Font.Color:=clRed
          else d1003.Font.Color:=clBlack;
          if fieldbyname('e3').value>90.0 then begin
            r1003.Caption:=' A'; r1003.Font.Color:=clGreen;
            e3003.Font.Color:=clGreen;
          end else if fieldbyname('e3').value>80 then begin
            r1003.Caption:=' B'; r1003.Font.Color:=clGreen;
            e3003.Font.Color:=clGreen;
          end else if FieldByName('e3').value>70 then begin
            r1003.Caption:=' C'; r1003.Font.Color:=clBlack;
            e3003.Font.Color:=clBlack;
          end else if FieldByName('e3').value>60 then begin
            r1003.caption:=' D'; r1003.Font.Color:=clBlack;
            e3003.Font.Color:=clBlack;
          end else if fieldbyname('e3').value>30 then begin
            r1003.Caption:=' F'; r1003.Font.Color:=clRed;
            e3003.Font.Color:=clRed;
          end else begin
            r1003.Caption:=' U'; r1003.Font.Color:=clRed;
            e3003.Font.Color:=clRed;
          end;
        end;
        sq1:=sq1+fieldbyname('q1').value;
        sq2:=sq2+fieldbyname('q2').value;
        sp1:=sp1+fieldbyname('p1').value;
        sp2:=sp2+fieldbyname('p2').value;
      end else if fieldbyname('tplant').value='KB' then begin
        if fieldbyname('flag6').value='B' then begin
          q1004.Caption:=fieldbyname('q1').asstring;
          q2004.Caption:=fieldbyname('q2').asstring;
          p1004.Caption:=formatfloat('0.00%',fieldbyname('p1').value);
          p2004.Caption:=formatfloat('0.00%',fieldbyname('p2').value);
          s0004.Caption:=formatfloat('0.0000',fieldbyname('s0').value);
          s1004.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          s2004.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          s3004.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          s4004.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
          e3004.Caption:=formatfloat('0.00',fieldbyname('e3').value);
          if fieldbyname('s2').value>0 then
            e0004.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s2').value)
          else e0004.Caption:='0.00';
          if fieldbyname('s4').value>0 then
            e4004.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s4').value)
          else e4004.Caption:='0.00';
          if fieldbyname('s3').value>0 then begin
            e1004.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s3').value);
            e2004.Caption:=formatfloat('0.00',fieldbyname('s2').value*100.00/fieldbyname('s3').value);
          end else begin
            e1004.Caption:='0.00';
            e2004.Caption:='0.00';
          end;
          if fieldbyname('s3').value<fieldbyname('s2').value then s3004.Font.Color:=clGreen
          else if fieldbyname('s3').value>fieldbyname('s2').value then s3004.Font.Color:=clRed
          else s3004.Font.Color:=clBlack;
          d1004.Caption:=formatfloat('0.00',strtofloat(e3004.Caption)-strtofloat(e1004.Caption));
          if strtofloat(e3004.Caption)>strtofloat(e1004.Caption) then d1004.Font.Color:=clGreen
          else if strtofloat(e3004.Caption)<strtofloat(e1004.Caption) then d1004.Font.Color:=clRed
          else d1004.Font.Color:=clBlack;
          if fieldbyname('e3').value>90.0 then begin
            r1004.Caption:=' A'; r1004.Font.Color:=clGreen;
            e3004.Font.Color:=clGreen;
          end else if fieldbyname('e3').value>80 then begin
            r1004.Caption:=' B'; r1004.Font.Color:=clGreen;
            e3004.Font.Color:=clGreen;
          end else if FieldByName('e3').value>70 then begin
            r1004.Caption:=' C'; r1004.Font.Color:=clBlack;
            e3004.Font.Color:=clBlack;
          end else if FieldByName('e3').value>60 then begin
            r1004.caption:=' D'; r1004.Font.Color:=clBlack;
            e3004.Font.Color:=clBlack;
          end else if fieldbyname('e3').value>30 then begin
            r1004.Caption:=' F'; r1004.Font.Color:=clRed;
            e3004.Font.Color:=clRed;
          end else begin
            r1004.Caption:=' U'; r1004.Font.Color:=clRed;
            e3004.Font.Color:=clRed;
          end;
        end else if fieldbyname('flag6').value='K' then begin
          q1005.Caption:=fieldbyname('q1').asstring;
          q2005.Caption:=fieldbyname('q2').asstring;
          p1005.Caption:=formatfloat('0.00%',fieldbyname('p1').value);
          p2005.Caption:=formatfloat('0.00%',fieldbyname('p2').value);
          s0005.Caption:=formatfloat('0.0000',fieldbyname('s0').value);
          s1005.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          s2005.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          s3005.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          s4005.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
          e3005.Caption:=formatfloat('0.00',fieldbyname('e3').value);
          if fieldbyname('s2').value>0 then
            e0005.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s2').value)
          else e0005.Caption:='0.00';
          if fieldbyname('s4').value>0 then
            e4005.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s4').value)
          else e4005.Caption:='0.00';
          if fieldbyname('s3').value>0 then begin
            e1005.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s3').value);
            e2005.Caption:=formatfloat('0.00',fieldbyname('s2').value*100.00/fieldbyname('s3').value);
          end else begin
            e1005.Caption:='0.00';
            e2005.Caption:='0.00';
          end;
          if fieldbyname('s3').value<fieldbyname('s2').value then s3005.Font.Color:=clGreen
          else if fieldbyname('s3').value>fieldbyname('s2').value then s3005.Font.Color:=clRed
          else s3005.Font.Color:=clBlack;
          d1005.Caption:=formatfloat('0.00',strtofloat(e3005.Caption)-strtofloat(e1005.Caption));
          if strtofloat(e3005.Caption)>strtofloat(e1005.Caption) then d1005.Font.Color:=clGreen
          else if strtofloat(e3005.Caption)<strtofloat(e1005.Caption) then d1005.Font.Color:=clRed
          else d1005.Font.Color:=clBlack;
          if fieldbyname('e3').value>90.0 then begin
            r1005.Caption:=' A'; r1005.Font.Color:=clGreen;
            e3005.Font.Color:=clGreen;
          end else if fieldbyname('e3').value>80 then begin
            r1005.Caption:=' B'; r1005.Font.Color:=clGreen;
            e3005.Font.Color:=clGreen;
          end else if FieldByName('e3').value>70 then begin
            r1005.Caption:=' C'; r1005.Font.Color:=clBlack;
            e3005.Font.Color:=clBlack;
          end else if FieldByName('e3').value>60 then begin
            r1005.caption:=' D'; r1005.Font.Color:=clBlack;
            e3005.Font.Color:=clBlack;
          end else if fieldbyname('e3').value>30 then begin
            r1005.Caption:=' F'; r1005.Font.Color:=clRed;
            e3005.Font.Color:=clRed;
          end else begin
            r1005.Caption:=' U'; r1005.Font.Color:=clRed;
            e3005.Font.Color:=clRed;
          end;
        end else if fieldbyname('flag6').value='U' then begin
          q1006.Caption:=fieldbyname('q1').AsString;
          q2006.Caption:=fieldbyname('q2').asstring;
          p1006.Caption:=formatfloat('0.00%',fieldbyname('p1').value);
          p2006.Caption:=formatfloat('0.00%',fieldbyname('p2').value);
          s0006.Caption:=formatfloat('0.0000',fieldbyname('s0').value);
          s1006.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          s2006.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          s3006.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          s4006.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
          e3006.Caption:=formatfloat('0.00',fieldbyname('e3').value);
          if fieldbyname('s2').value>0 then
            e0006.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s2').value)
          else e0006.Caption:='0.00';
          if fieldbyname('s4').value>0 then
            e4006.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s4').value)
          else e4006.Caption:='0.00';
          if fieldbyname('s3').value>0 then begin
            e1006.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s3').value);
            e2006.Caption:=formatfloat('0.00',fieldbyname('s2').value*100.00/fieldbyname('s3').value);
          end else begin
            e1006.Caption:='0.00';
            e2006.Caption:='0.00';
          end;
          if fieldbyname('s3').value<fieldbyname('s2').value then s3006.Font.Color:=clGreen
          else if fieldbyname('s3').value>fieldbyname('s2').value then s3006.Font.Color:=clRed
          else s3006.Font.Color:=clBlack;
          d1006.Caption:=formatfloat('0.00',strtofloat(e3006.Caption)-strtofloat(e1006.Caption));
          if strtofloat(e3006.Caption)>strtofloat(e1006.Caption) then d1006.Font.Color:=clGreen
          else if strtofloat(e3006.Caption)<strtofloat(e1006.Caption) then d1006.Font.Color:=clRed
          else d1006.Font.Color:=clBlack;
          if fieldbyname('e3').value>90.0 then begin
            r1006.Caption:=' A'; r1006.Font.Color:=clGreen;
            e3006.Font.Color:=clGreen;
          end else if fieldbyname('e3').value>80 then begin
            r1006.Caption:=' B'; r1006.Font.Color:=clGreen;
            e3006.Font.Color:=clGreen;
          end else if FieldByName('e3').value>70 then begin
            r1006.Caption:=' C'; r1006.Font.Color:=clBlack;
            e3006.Font.Color:=clBlack;
          end else if FieldByName('e3').value>60 then begin
            r1006.caption:=' D'; r1006.Font.Color:=clBlack;
            e3006.Font.Color:=clBlack;
          end else if fieldbyname('e3').value>30 then begin
            r1006.Caption:=' F'; r1006.Font.Color:=clRed;
            e3006.Font.Color:=clRed;
          end else begin
            r1006.Caption:=' U'; r1006.Font.Color:=clRed;
            e3006.Font.Color:=clRed;
          end;
        end;
        kq1:=kq1+fieldbyname('q1').value;
        kq2:=kq2+fieldbyname('q2').value;
        kp1:=kp1+fieldbyname('p1').value;
        kp2:=kp2+fieldbyname('p2').value;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  q1007.Caption:=inttostr(sq1); q2007.Caption:=inttostr(sq2);
  q1008.Caption:=inttostr(kq1); q2008.Caption:=inttostr(kq2);
  p1007.Caption:=formatfloat('0.00%',sp1); p2007.Caption:=formatfloat('0.00%',sp2);
  p1008.Caption:=formatfloat('0.00%',kp1); p2008.Caption:=formatfloat('0.00%',kp2);
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct tplant,sum(pqty) as x1,sum(aqty) as x2,sum(diff) as x3 from v_ga_percent where dt>=:x1 and dt<=:x2 and cust not in (''ESSE'') group by tplant';
    params[0].asdate:=frmcustomer.dateedit1.date;
    params[1].asdate:=frmcustomer.dateedit2.date;
    open;
    first;
    while not eof do begin
      if fieldbyname('tplant').value='SL' then begin
          if fieldbyname('x1').value>0 then begin
            g1007.Caption:=formatfloat('0.00',fieldbyname('x2').value*100.0/fieldbyname('x1').value);
            g2007.Caption:=formatfloat('0.00',fieldbyname('x3').value*100.0/fieldbyname('x1').value);
            if fieldbyname('x2').value/fieldbyname('x1').value>0.9 then g1007.Font.Color:=clGreen
            else if fieldbyname('x2').value/fieldbyname('x1').value<0.75 then g1007.Font.Color:=clRed
            else g1007.Font.Color:=clBlack;
            if fieldbyname('x3').value/fieldbyname('x1').value>0.9 then g2007.Font.Color:=clGreen
            else if fieldbyname('x3').value/fieldbyname('x1').value<0.75 then g2007.Font.Color:=clRed
            else g2007.Font.Color:=clBlack;
          end else begin
            g1007.Caption:='0.00';
            g2007.Caption:='0.00';
          end;
      end else if fieldbyname('tplant').value='KB' then begin
          if fieldbyname('x1').value>0 then begin
            g1008.Caption:=formatfloat('0.00',fieldbyname('x2').value*100.0/fieldbyname('x1').value);
            g2008.Caption:=formatfloat('0.00',fieldbyname('x3').value*100.0/fieldbyname('x1').value);
            if fieldbyname('x2').value/fieldbyname('x1').value>0.9 then g1008.Font.Color:=clGreen
            else if fieldbyname('x2').value/fieldbyname('x1').value<0.75 then g1008.Font.Color:=clRed
            else g1008.Font.Color:=clBlack;
            if fieldbyname('x3').value/fieldbyname('x1').value>0.9 then g2008.Font.Color:=clGreen
            else if fieldbyname('x3').value/fieldbyname('x1').value<0.75 then g2008.Font.Color:=clRed
            else g2008.Font.Color:=clBlack;
          end else begin
            g1008.Caption:='0.00';
            g2008.Caption:='0.00';
          end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct tplant,sum(qty1) as q1,sum(qty2) as q2,sum(q1p) as p1,sum(q2p) as p2,'
                +'sum(sah0*qty2)/sum(qty2) as s0,sum(sah1*qty2)/sum(qty2) as s1,sum(sah2*qty2)/sum(qty2) as s2,'
                +'sum(sah3*qty2)/sum(qty2) as s3,sum(sah4*qty2)/sum(qty2) as s4,sum(eff3*qty2)/sum(qty2) as e3,sum(pqty) as x1,sum(aqty) as x2,sum(tqty) as x3 '
                +'from temp_prjbd_summary where tplant<>''All''';
    if frmcustomer.ComboBox6.text>'' then commandtext:=commandtext+' and tplant='''+frmcustomer.ComboBox6.text+'''';
    commandtext:=commandtext+' group by tplant';
    open;
    first;
    while not eof do begin
      if fieldbyname('tplant').value='SL' then begin
          s0007.Caption:=formatfloat('0.0000',fieldbyname('s0').value);
          s1007.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          s2007.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          s3007.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          s4007.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
          e3007.Caption:=formatfloat('0.00',fieldbyname('e3').value);
          if fieldbyname('s2').value>0 then
            e0007.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s2').value)
          else e0007.Caption:='0.00';
          if fieldbyname('s4').value>0 then
            e4007.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s4').value)
          else e4007.Caption:='0.00';
          if fieldbyname('s3').value>0 then begin
            e1007.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s3').value);
            e2007.Caption:=formatfloat('0.00',fieldbyname('s2').value*100.00/fieldbyname('s3').value);
          end else begin
            e1007.Caption:='0.00';
            e2007.Caption:='0.00';
          end;
          if fieldbyname('s3').value<fieldbyname('s2').value then s3007.Font.Color:=clGreen
          else if fieldbyname('s3').value>fieldbyname('s2').value then s3007.Font.Color:=clRed
          else s3007.Font.Color:=clBlack;
          d1007.Caption:=formatfloat('0.00',strtofloat(e3007.Caption)-strtofloat(e1007.Caption));
          if strtofloat(e3007.Caption)>strtofloat(e1007.Caption) then d1007.Font.Color:=clGreen
          else if strtofloat(e3007.Caption)<strtofloat(e1007.Caption) then d1007.Font.Color:=clRed
          else d1007.Font.Color:=clBlack;
          if fieldbyname('e3').value>90.0 then begin
            r1007.Caption:=' A'; r1007.Font.Color:=clGreen;
            e3007.Font.Color:=clGreen;
          end else if fieldbyname('e3').value>80 then begin
            r1007.Caption:=' B'; r1007.Font.Color:=clGreen;
            e3007.Font.Color:=clGreen;
          end else if FieldByName('e3').value>70 then begin
            r1007.Caption:=' C'; r1007.Font.Color:=clBlack;
            e3007.Font.Color:=clBlack;
          end else if FieldByName('e3').value>60 then begin
            r1007.caption:=' D'; r1007.Font.Color:=clBlack;
            e3007.Font.Color:=clBlack;
          end else if fieldbyname('e3').value>30 then begin
            r1007.Caption:=' F'; r1007.Font.Color:=clRed;
            e3007.Font.Color:=clRed;
          end else begin
            r1007.Caption:=' U'; r1007.Font.Color:=clRed;
            e3007.Font.Color:=clRed;
          end;
      end else if fieldbyname('tplant').value='KB' then begin
          s0008.Caption:=formatfloat('0.0000',fieldbyname('s0').value);
          s1008.Caption:=formatfloat('0.0000',fieldbyname('s1').value);
          s2008.Caption:=formatfloat('0.0000',fieldbyname('s2').value);
          s3008.Caption:=formatfloat('0.0000',fieldbyname('s3').value);
          s4008.Caption:=formatfloat('0.0000',fieldbyname('s4').value);
          e3008.Caption:=formatfloat('0.00',fieldbyname('e3').value);
          if fieldbyname('s2').value>0 then
            e0008.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s2').value)
          else e0008.Caption:='0.00';
          if fieldbyname('s4').value>0 then
            e4008.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s4').value)
          else e4008.Caption:='0.00';
          if fieldbyname('s3').value>0 then begin
            e1008.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s3').value);
            e2008.Caption:=formatfloat('0.00',fieldbyname('s2').value*100.00/fieldbyname('s3').value);
          end else begin
            e1008.Caption:='0.00';
            e2008.Caption:='0.00';
          end;
          if fieldbyname('s3').value<fieldbyname('s2').value then s3008.Font.Color:=clGreen
          else if fieldbyname('s3').value>fieldbyname('s2').value then s3008.Font.Color:=clRed
          else s3008.Font.Color:=clBlack;
          d1008.Caption:=formatfloat('0.00',strtofloat(e3008.Caption)-strtofloat(e1008.Caption));
          if strtofloat(e3008.Caption)>strtofloat(e1008.Caption) then d1008.Font.Color:=clGreen
          else if strtofloat(e3008.Caption)<strtofloat(e1008.Caption) then d1008.Font.Color:=clRed
          else d1008.Font.Color:=clBlack;
          if fieldbyname('e3').value>90.0 then begin
            r1008.Caption:=' A'; r1008.Font.Color:=clGreen;
            e3008.Font.Color:=clGreen;
          end else if fieldbyname('e3').value>80 then begin
            r1008.Caption:=' B'; r1008.Font.Color:=clGreen;
            e3008.Font.Color:=clGreen;
          end else if FieldByName('e3').value>70 then begin
            r1008.Caption:=' C'; r1008.Font.Color:=clBlack;
            e3008.Font.Color:=clBlack;
          end else if FieldByName('e3').value>60 then begin
            r1008.caption:=' D'; r1008.Font.Color:=clBlack;
            e3008.Font.Color:=clBlack;
          end else if fieldbyname('e3').value>30 then begin
            r1008.Caption:=' F'; r1008.Font.Color:=clRed;
            e3008.Font.Color:=clRed;
          end else begin
            r1008.Caption:=' U'; r1008.Font.Color:=clRed;
            e3008.Font.Color:=clRed;
          end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
end;

end.
