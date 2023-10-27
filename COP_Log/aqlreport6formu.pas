unit aqlreport6formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ppBands, ppCtrls, ppVar, ppClass, ppPrnabl,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppViewr,
  ppParameter;

type
  Tfrmaqlreport6 = class(TForm)
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLine1: TppLine;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape44: TppShape;
    ppShape5: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape3: TppShape;
    ppShape53: TppShape;
    ppShape36: TppShape;
    ppShape20: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape16: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape12: TppShape;
    ppShape11: TppShape;
    ppShape10: TppShape;
    ppLine42: TppLine;
    ppLine43: TppLine;
    entqty001: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    subject01: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    auditqty001: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel7: TppLabel;
    ppDBText13: TppDBText;
    ppLabel9: TppLabel;
    ppDBText15: TppDBText;
    ppLabel10: TppLabel;
    ppDBText16: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText46: TppDBText;
    ra001: TppLabel;
    ra011: TppLabel;
    ra021: TppLabel;
    ra031: TppLabel;
    ra041: TppLabel;
    ra051: TppLabel;
    ra061: TppLabel;
    ra071: TppLabel;
    ra081: TppLabel;
    ra091: TppLabel;
    ra101: TppLabel;
    ra002: TppLabel;
    ra012: TppLabel;
    ra022: TppLabel;
    ra032: TppLabel;
    ra042: TppLabel;
    ra052: TppLabel;
    ra062: TppLabel;
    ra072: TppLabel;
    ra082: TppLabel;
    ra092: TppLabel;
    ra102: TppLabel;
    ra003: TppLabel;
    ra013: TppLabel;
    ra023: TppLabel;
    ra033: TppLabel;
    ra043: TppLabel;
    ra053: TppLabel;
    ra063: TppLabel;
    ra073: TppLabel;
    ra083: TppLabel;
    ra093: TppLabel;
    ra103: TppLabel;
    sa002: TppLabel;
    sa003: TppLabel;
    ra004: TppLabel;
    ra005: TppLabel;
    ra014: TppLabel;
    ra015: TppLabel;
    ra024: TppLabel;
    ra025: TppLabel;
    ra034: TppLabel;
    ra035: TppLabel;
    ra044: TppLabel;
    ra045: TppLabel;
    ra054: TppLabel;
    ra055: TppLabel;
    ra064: TppLabel;
    ra065: TppLabel;
    ra074: TppLabel;
    ra075: TppLabel;
    ra084: TppLabel;
    ra085: TppLabel;
    ra094: TppLabel;
    ra095: TppLabel;
    ra104: TppLabel;
    ra105: TppLabel;
    sa004: TppLabel;
    sa005: TppLabel;
    ra006: TppLabel;
    ra016: TppLabel;
    ra026: TppLabel;
    ra036: TppLabel;
    ra046: TppLabel;
    ra056: TppLabel;
    ra066: TppLabel;
    ra076: TppLabel;
    ra086: TppLabel;
    ra096: TppLabel;
    ra106: TppLabel;
    sa006: TppLabel;
    sa007: TppLabel;
    ra107: TppLabel;
    ra097: TppLabel;
    ra087: TppLabel;
    ra077: TppLabel;
    ra067: TppLabel;
    ra057: TppLabel;
    ra047: TppLabel;
    ra037: TppLabel;
    ra027: TppLabel;
    ra017: TppLabel;
    ra007: TppLabel;
    ra008: TppLabel;
    ra018: TppLabel;
    ra028: TppLabel;
    ra038: TppLabel;
    ra048: TppLabel;
    ra058: TppLabel;
    ra068: TppLabel;
    ra078: TppLabel;
    ra088: TppLabel;
    ra098: TppLabel;
    ra108: TppLabel;
    sa008: TppLabel;
    ppLine153: TppLine;
    ra111: TppLabel;
    ra112: TppLabel;
    ra113: TppLabel;
    ra114: TppLabel;
    ra115: TppLabel;
    ra116: TppLabel;
    ra117: TppLabel;
    ra118: TppLabel;
    ppLine22: TppLine;
    ra121: TppLabel;
    ra131: TppLabel;
    ra141: TppLabel;
    ra151: TppLabel;
    ra161: TppLabel;
    ra171: TppLabel;
    ra181: TppLabel;
    ra191: TppLabel;
    ppLine156: TppLine;
    ppLine157: TppLine;
    ppLine158: TppLine;
    ppLine159: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ra122: TppLabel;
    ra123: TppLabel;
    ra124: TppLabel;
    ra125: TppLabel;
    ra126: TppLabel;
    ra127: TppLabel;
    ra128: TppLabel;
    ra132: TppLabel;
    ra133: TppLabel;
    ra134: TppLabel;
    ra135: TppLabel;
    ra136: TppLabel;
    ra137: TppLabel;
    ra138: TppLabel;
    ra142: TppLabel;
    ra143: TppLabel;
    ra144: TppLabel;
    ra145: TppLabel;
    ra146: TppLabel;
    ra147: TppLabel;
    ra148: TppLabel;
    ra152: TppLabel;
    ra153: TppLabel;
    ra154: TppLabel;
    ra155: TppLabel;
    ra156: TppLabel;
    ra157: TppLabel;
    ra158: TppLabel;
    ra162: TppLabel;
    ra163: TppLabel;
    ra164: TppLabel;
    ra165: TppLabel;
    ra166: TppLabel;
    ra167: TppLabel;
    ra168: TppLabel;
    ra172: TppLabel;
    ra173: TppLabel;
    ra174: TppLabel;
    ra175: TppLabel;
    ra176: TppLabel;
    ra177: TppLabel;
    ra178: TppLabel;
    ra182: TppLabel;
    ra183: TppLabel;
    ra184: TppLabel;
    ra185: TppLabel;
    ra186: TppLabel;
    ra187: TppLabel;
    ra188: TppLabel;
    ra192: TppLabel;
    ra193: TppLabel;
    ra194: TppLabel;
    ra195: TppLabel;
    ra196: TppLabel;
    ra197: TppLabel;
    ra198: TppLabel;
    ppLabel156: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppShape25: TppShape;
    audit001: TppLabel;
    ppDBText71: TppDBText;
    sub01: TppLabel;
    ppShape1: TppShape;
    ppLabel109: TppLabel;
    ppShape35: TppShape;
    ppDBText53: TppDBText;
    ppShape56: TppShape;
    ppLabel141: TppLabel;
    ppDBText57: TppDBText;
    ppShape57: TppShape;
    ppLabel142: TppLabel;
    ppShape58: TppShape;
    ppLabel143: TppLabel;
    ppDBText59: TppDBText;
    ppShape60: TppShape;
    ppLabel6: TppLabel;
    ppDBText60: TppDBText;
    ppShape48: TppShape;
    ppShape43: TppShape;
    ppLine89: TppLine;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppLine120: TppLine;
    ppLine121: TppLine;
    ppLine122: TppLine;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLine131: TppLine;
    ppLine145: TppLine;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppImage7: TppImage;
    rx001: TppLabel;
    sd005: TppLabel;
    sd006: TppLabel;
    rd001: TppLabel;
    rd002: TppLabel;
    rd003: TppLabel;
    rd004: TppLabel;
    rd005: TppLabel;
    rd006: TppLabel;
    rd011: TppLabel;
    rd012: TppLabel;
    rd013: TppLabel;
    rd014: TppLabel;
    rd015: TppLabel;
    rd016: TppLabel;
    rd021: TppLabel;
    rd031: TppLabel;
    rd032: TppLabel;
    rd022: TppLabel;
    rd033: TppLabel;
    rd023: TppLabel;
    rd034: TppLabel;
    rd024: TppLabel;
    rd035: TppLabel;
    rd025: TppLabel;
    rd036: TppLabel;
    rd026: TppLabel;
    rd041: TppLabel;
    rd051: TppLabel;
    rd061: TppLabel;
    rd071: TppLabel;
    rd072: TppLabel;
    rd062: TppLabel;
    rd052: TppLabel;
    rd042: TppLabel;
    rd073: TppLabel;
    rd063: TppLabel;
    rd053: TppLabel;
    rd043: TppLabel;
    rd074: TppLabel;
    rd064: TppLabel;
    rd054: TppLabel;
    rd044: TppLabel;
    rd075: TppLabel;
    rd065: TppLabel;
    rd055: TppLabel;
    rd045: TppLabel;
    rd046: TppLabel;
    rd056: TppLabel;
    rd066: TppLabel;
    rd076: TppLabel;
    rd081: TppLabel;
    rd091: TppLabel;
    rd101: TppLabel;
    rd111: TppLabel;
    rd112: TppLabel;
    rd102: TppLabel;
    rd092: TppLabel;
    rd082: TppLabel;
    rd113: TppLabel;
    rd103: TppLabel;
    rd093: TppLabel;
    rd083: TppLabel;
    rd114: TppLabel;
    rd104: TppLabel;
    rd094: TppLabel;
    rd084: TppLabel;
    rd115: TppLabel;
    rd105: TppLabel;
    rd095: TppLabel;
    rd085: TppLabel;
    rd086: TppLabel;
    rd096: TppLabel;
    rd106: TppLabel;
    rd116: TppLabel;
    rd121: TppLabel;
    rd131: TppLabel;
    rd141: TppLabel;
    rd151: TppLabel;
    rd152: TppLabel;
    rd142: TppLabel;
    rd132: TppLabel;
    rd122: TppLabel;
    rd153: TppLabel;
    rd143: TppLabel;
    rd133: TppLabel;
    rd123: TppLabel;
    rd154: TppLabel;
    rd144: TppLabel;
    rd134: TppLabel;
    rd124: TppLabel;
    rd155: TppLabel;
    rd145: TppLabel;
    rd135: TppLabel;
    rd125: TppLabel;
    rd126: TppLabel;
    rd136: TppLabel;
    rd146: TppLabel;
    rd156: TppLabel;
    ppLabel138: TppLabel;
    ppLine151: TppLine;
    ppLabel139: TppLabel;
    ppLine152: TppLine;
    frep001: TppLabel;
    ppDBText54: TppDBText;
    rd161: TppLabel;
    rd171: TppLabel;
    rd181: TppLabel;
    rd191: TppLabel;
    rd201: TppLabel;
    rd211: TppLabel;
    rd221: TppLabel;
    rd231: TppLabel;
    rd241: TppLabel;
    rd251: TppLabel;
    rd252: TppLabel;
    rd242: TppLabel;
    rd232: TppLabel;
    rd222: TppLabel;
    rd212: TppLabel;
    rd202: TppLabel;
    rd192: TppLabel;
    rd182: TppLabel;
    rd172: TppLabel;
    rd162: TppLabel;
    rd163: TppLabel;
    rd173: TppLabel;
    rd183: TppLabel;
    rd193: TppLabel;
    rd203: TppLabel;
    rd213: TppLabel;
    rd223: TppLabel;
    rd233: TppLabel;
    rd243: TppLabel;
    rd253: TppLabel;
    rd254: TppLabel;
    rd244: TppLabel;
    rd234: TppLabel;
    rd224: TppLabel;
    rd214: TppLabel;
    rd204: TppLabel;
    rd194: TppLabel;
    rd184: TppLabel;
    rd174: TppLabel;
    rd164: TppLabel;
    rd165: TppLabel;
    rd166: TppLabel;
    rd175: TppLabel;
    rd176: TppLabel;
    rd185: TppLabel;
    rd186: TppLabel;
    rd195: TppLabel;
    rd196: TppLabel;
    rd205: TppLabel;
    rd215: TppLabel;
    rd225: TppLabel;
    rd235: TppLabel;
    rd245: TppLabel;
    rd255: TppLabel;
    rd256: TppLabel;
    rd246: TppLabel;
    rd236: TppLabel;
    rd226: TppLabel;
    rd216: TppLabel;
    rd206: TppLabel;
    rd261: TppLabel;
    rd271: TppLabel;
    rd281: TppLabel;
    rd291: TppLabel;
    rd292: TppLabel;
    rd282: TppLabel;
    rd272: TppLabel;
    rd262: TppLabel;
    rd263: TppLabel;
    rd273: TppLabel;
    rd283: TppLabel;
    rd293: TppLabel;
    rd294: TppLabel;
    rd284: TppLabel;
    rd274: TppLabel;
    rd264: TppLabel;
    rd265: TppLabel;
    rd275: TppLabel;
    rd285: TppLabel;
    rd295: TppLabel;
    rd296: TppLabel;
    rd286: TppLabel;
    rd276: TppLabel;
    rd266: TppLabel;
    ppLine4: TppLine;
    rd301: TppLabel;
    rd302: TppLabel;
    rd303: TppLabel;
    rd304: TppLabel;
    rd305: TppLabel;
    rd306: TppLabel;
    ppShape2: TppShape;
    ppLabel8: TppLabel;
    ppDBText14: TppDBText;
    ppShape4: TppShape;
    ppLabel11: TppLabel;
    ppDBText17: TppDBText;
    ppLabel12: TppLabel;
    ppLine5: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    subject001: TppLabel;
    subject002: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppShape8: TppShape;
    ppLabel2: TppLabel;
    ppLabel15: TppLabel;
    ppShape9: TppShape;
    endteam001: TppLabel;
    ppShape17: TppShape;
    ppLabel16: TppLabel;
    ppShape21: TppShape;
    ppLabel17: TppLabel;
    ppDBText24: TppDBText;
    cust001: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    sd001: TppLabel;
    sd011: TppLabel;
    sd021: TppLabel;
    sd031: TppLabel;
    sd041: TppLabel;
    sd051: TppLabel;
    sd061: TppLabel;
    sd071: TppLabel;
    sd081: TppLabel;
    sd091: TppLabel;
    sd101: TppLabel;
    sd111: TppLabel;
    sd121: TppLabel;
    sd131: TppLabel;
    sd141: TppLabel;
    sd151: TppLabel;
    sd161: TppLabel;
    sd171: TppLabel;
    sd181: TppLabel;
    sd191: TppLabel;
    sd201: TppLabel;
    sd211: TppLabel;
    sd221: TppLabel;
    sd231: TppLabel;
    sd241: TppLabel;
    sd251: TppLabel;
    sd261: TppLabel;
    sd271: TppLabel;
    sd281: TppLabel;
    sd291: TppLabel;
    sd301: TppLabel;
    sd302: TppLabel;
    sd292: TppLabel;
    sd282: TppLabel;
    sd272: TppLabel;
    sd262: TppLabel;
    sd252: TppLabel;
    sd242: TppLabel;
    sd232: TppLabel;
    sd222: TppLabel;
    sd212: TppLabel;
    sd202: TppLabel;
    sd192: TppLabel;
    sd182: TppLabel;
    sd172: TppLabel;
    sd162: TppLabel;
    sd152: TppLabel;
    sd142: TppLabel;
    sd132: TppLabel;
    sd122: TppLabel;
    sd112: TppLabel;
    sd102: TppLabel;
    sd092: TppLabel;
    sd082: TppLabel;
    sd072: TppLabel;
    sd062: TppLabel;
    sd052: TppLabel;
    sd042: TppLabel;
    sd032: TppLabel;
    sd022: TppLabel;
    sd012: TppLabel;
    sd002: TppLabel;
    ppShape22: TppShape;
    ppLabel20: TppLabel;
    balqty001: TppLabel;
    ppLabel21: TppLabel;
    ppShape23: TppShape;
    frstdt001: TppLabel;
    rwo001: TppLabel;
    qn001: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaqlreport6: Tfrmaqlreport6;

implementation

uses aqlmainformu, aqlreportformu;

{$R *.dfm}

procedure Tfrmaqlreport6.ppHeaderBand1BeforePrint(Sender: TObject);
var
  s1:string;
  edef1,edef2:string;
  i:integer;
  f1,f2,f3,f4,f5,f6,f7:double;
begin
    s1:='#,0;-#,0;''-''';

    with query1 do begin
      close;
      commandtext:='select cust,cusn from tbl_aql_cust where cust='''+frmaqlmain.qry_s0.fieldbyname('cust').value+'''';
      open;
      if not fieldbyname('cust').isnull then cust001.Caption:=fieldbyname('cust').value+' / '+fieldbyname('cusn').value
      else cust001.Caption:='';
    end;

    frstdt001.Caption:=''; balqty001.Caption:=''; rwo001.Caption:=''; qn001.Caption:='';

    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftdate,'x6',ptinput);
      commandtext:='select min(dt) as x1,sum(qty) as x2 from tbl_aql_s0 where pline=:x1 and j2_job=:x2 and rwo=:x3 and flag60=:x4 and acol1=:x5 and dt<=:x6';
      params[0].asstring:=frmaqlmain.qry_s0.fieldbyname('pline').value;
      params[1].asstring:=frmaqlmain.qry_s0.fieldbyname('j2_job').value;
      params[2].asstring:=frmaqlmain.qry_s0.fieldbyname('rwo').value;
      params[3].asstring:=frmaqlmain.qry_s0.fieldbyname('flag60').value;
      params[4].asstring:=frmaqlmain.qry_s0.fieldbyname('acol1').value;
      params[5].asdate:=frmaqlmain.qry_s0.fieldbyname('dt').value;
      open;
      frstdt001.Caption:=fieldbyname('x1').asstring;
      balqty001.Caption:=inttostr(frmaqlmain.qry_s0.fieldbyname('scqty').value-fieldbyname('x2').value);
    end;

    rwo001.Caption:=frmaqlmain.qry_s0.fieldbyname('j2_job').value+'-'+frmaqlmain.qry_s0.fieldbyname('rwo').value;
    qn001.Caption:=frmaqlmain.qry_s0.fieldbyname('j2_job').value+'-'+frmaqlmain.qry_s0.fieldbyname('rwo').value+'-'+frmaqlmain.qry_s0.fieldbyname('flag60').value;

    ra001.Caption:='';ra002.Caption:='';ra003.Caption:='';ra004.Caption:='';ra005.Caption:='';ra006.Caption:='';ra007.Caption:='';ra008.Caption:='';
    ra011.Caption:='';ra012.Caption:='';ra013.Caption:='';ra014.Caption:='';ra015.Caption:='';ra016.Caption:='';ra017.Caption:='';ra018.Caption:='';
    ra021.Caption:='';ra022.Caption:='';ra023.Caption:='';ra024.Caption:='';ra025.Caption:='';ra026.Caption:='';ra027.Caption:='';ra028.Caption:='';
    ra031.Caption:='';ra032.Caption:='';ra033.Caption:='';ra034.Caption:='';ra035.Caption:='';ra036.Caption:='';ra037.Caption:='';ra038.Caption:='';
    ra041.Caption:='';ra042.Caption:='';ra043.Caption:='';ra044.Caption:='';ra045.Caption:='';ra046.Caption:='';ra047.Caption:='';ra048.Caption:='';
    ra051.Caption:='';ra052.Caption:='';ra053.Caption:='';ra054.Caption:='';ra055.Caption:='';ra056.Caption:='';ra057.Caption:='';ra058.Caption:='';
    ra061.Caption:='';ra062.Caption:='';ra063.Caption:='';ra064.Caption:='';ra065.Caption:='';ra066.Caption:='';ra067.Caption:='';ra068.Caption:='';
    ra071.Caption:='';ra072.Caption:='';ra073.Caption:='';ra074.Caption:='';ra075.Caption:='';ra076.Caption:='';ra077.Caption:='';ra078.Caption:='';
    ra081.Caption:='';ra082.Caption:='';ra083.Caption:='';ra084.Caption:='';ra085.Caption:='';ra086.Caption:='';ra087.Caption:='';ra088.Caption:='';
    ra091.Caption:='';ra092.Caption:='';ra093.Caption:='';ra094.Caption:='';ra095.Caption:='';ra096.Caption:='';ra097.Caption:='';ra098.Caption:='';
    ra101.Caption:='';ra102.Caption:='';ra103.Caption:='';ra104.Caption:='';ra105.Caption:='';ra106.Caption:='';ra107.Caption:='';ra108.Caption:='';
    ra111.Caption:='';ra112.Caption:='';ra113.Caption:='';ra114.Caption:='';ra115.Caption:='';ra116.Caption:='';ra117.Caption:='';ra118.Caption:='';
    ra121.Caption:='';ra122.Caption:='';ra123.Caption:='';ra124.Caption:='';ra125.Caption:='';ra126.Caption:='';ra127.Caption:='';ra128.Caption:='';
    ra131.Caption:='';ra132.Caption:='';ra133.Caption:='';ra134.Caption:='';ra135.Caption:='';ra136.Caption:='';ra137.Caption:='';ra138.Caption:='';
    ra141.Caption:='';ra142.Caption:='';ra143.Caption:='';ra144.Caption:='';ra145.Caption:='';ra146.Caption:='';ra147.Caption:='';ra148.Caption:='';
    ra151.Caption:='';ra152.Caption:='';ra153.Caption:='';ra154.Caption:='';ra155.Caption:='';ra156.Caption:='';ra157.Caption:='';ra158.Caption:='';
    ra161.Caption:='';ra162.Caption:='';ra163.Caption:='';ra164.Caption:='';ra165.Caption:='';ra166.Caption:='';ra167.Caption:='';ra168.Caption:='';
    ra171.Caption:='';ra172.Caption:='';ra173.Caption:='';ra174.Caption:='';ra175.Caption:='';ra176.Caption:='';ra177.Caption:='';ra178.Caption:='';
    ra181.Caption:='';ra182.Caption:='';ra183.Caption:='';ra184.Caption:='';ra185.Caption:='';ra186.Caption:='';ra187.Caption:='';ra188.Caption:='';
    ra191.Caption:='';ra192.Caption:='';ra193.Caption:='';ra194.Caption:='';ra195.Caption:='';ra196.Caption:='';ra197.Caption:='';ra198.Caption:='';

    i:=0;f1:=0;f2:=0;f3:=0;f4:=0;f5:=0;f6:=0;f7:=0;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_aql_s1 where seq=:x1 and (q1>0 or q2>0 or q3>0 or q4>0 or q5>0 or q6>0 or q7>0 or q8>0 or q9>0 or q10>0 or q11>0 or q12>0) order by seq1';
      params[0].asinteger:=frmaqlmain.qry_s0.fieldbyname('seq').value;
      open;
      first;
      while not eof do begin
        i:=i+1;
        f1:=f1+fieldbyname('q1').value;
        f2:=f2+fieldbyname('q2').value;
        f3:=f3+fieldbyname('q3').value;
        f4:=f4+fieldbyname('q4').value;
        f5:=f5+fieldbyname('q5').value;
        f6:=f6+fieldbyname('q6').value;
        f7:=f7+fieldbyname('q7').value;
        if i=1 then begin
          ra001.Caption:=fieldbyname('siz').value;
          ra002.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra003.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra004.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra005.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra006.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra007.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra008.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=2 then begin
          ra011.Caption:=fieldbyname('siz').value;
          ra012.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra013.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra014.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra015.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra016.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra017.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra018.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=3 then begin
          ra021.Caption:=fieldbyname('siz').value;
          ra022.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra023.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra024.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra025.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra026.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra027.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra028.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=4 then begin
          ra031.Caption:=fieldbyname('siz').value;
          ra032.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra033.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra034.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra035.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra036.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra037.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra038.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=5 then begin
          ra041.Caption:=fieldbyname('siz').value;
          ra042.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra043.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra044.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra045.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra046.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra047.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra048.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=6 then begin
          ra051.Caption:=fieldbyname('siz').value;
          ra052.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra053.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra054.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra055.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra056.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra057.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra058.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=7 then begin
          ra061.Caption:=fieldbyname('siz').value;
          ra062.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra063.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra064.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra065.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra066.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra067.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra068.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=8 then begin
          ra071.Caption:=fieldbyname('siz').value;
          ra072.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra073.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra074.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra075.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra076.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra077.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra078.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=9 then begin
          ra081.Caption:=fieldbyname('siz').value;
          ra082.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra083.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra084.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra085.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra086.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra087.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra088.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=10 then begin
          ra091.Caption:=fieldbyname('siz').value;
          ra092.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra093.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra094.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra095.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra096.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra097.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra098.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=11 then begin
          ra101.Caption:=fieldbyname('siz').value;
          ra102.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra103.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra104.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra105.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra106.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra107.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra108.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=12 then begin
          ra111.Caption:=fieldbyname('siz').value;
          ra112.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra113.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra114.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra115.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra116.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra117.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra118.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=13 then begin
          ra121.Caption:=fieldbyname('siz').value;
          ra122.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra123.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra124.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra125.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra126.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra127.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra128.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=14 then begin
          ra131.Caption:=fieldbyname('siz').value;
          ra132.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra133.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra134.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra135.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra136.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra137.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra138.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=15 then begin
          ra141.Caption:=fieldbyname('siz').value;
          ra142.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra143.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra144.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra145.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra146.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra147.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra148.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=16 then begin
          ra151.Caption:=fieldbyname('siz').value;
          ra152.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra153.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra154.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra155.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra156.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra157.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra158.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=17 then begin
          ra161.Caption:=fieldbyname('siz').value;
          ra162.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra163.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra164.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra165.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra166.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra167.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra168.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=18 then begin
          ra171.Caption:=fieldbyname('siz').value;
          ra172.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra173.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra174.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra175.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra176.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra177.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra178.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=19 then begin
          ra181.Caption:=fieldbyname('siz').value;
          ra182.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra183.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra184.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra185.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra186.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra187.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra188.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end else if i=20 then begin
          ra191.Caption:=fieldbyname('siz').value;
          ra192.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q1').value);
          ra193.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q2').value);
          ra194.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q3').value);
          ra195.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q4').value);
          ra196.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q5').value);
          ra197.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q6').value);
          ra198.Caption:=formatfloat('#,0;-#,0;''''',fieldbyname('q7').value);
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    sa002.Caption:=formatfloat('#,0',f1);
    sa003.Caption:=formatfloat('#,0',f2);
    sa004.Caption:=formatfloat('#,0',f3);
    sa005.Caption:=formatfloat('#,0',f4);
    sa006.Caption:=formatfloat('#,0',f5);
    sa007.Caption:=formatfloat('#,0',f6);
    sa008.Caption:=formatfloat('#,0',f7);

  with query1 do begin
    close;
    params.Clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select sum(major) as q1,sum(minor) as q2 from tbl_aql_s4 where seq=:x1';
    params[0].asinteger:=frmaqlmain.qry_s0.fieldbyname('seq').value;
    open;
    if fieldbyname('q1').isnull then begin
      rx001.Caption:='0';
      sd005.Caption:='0';
    end else begin
      rx001.Caption:=fieldbyname('q1').asstring;
      sd005.Caption:=fieldbyname('q1').asstring;
    end;
    if not fieldbyname('q2').isnull then sd006.Caption:=fieldbyname('q2').asstring
    else sd006.Caption:='0';
  end;

  with query1 do begin
    close;
    params.clear;
    commandtext:='select pline from tblline_mapping where m_pline='''+frmaqlmain.qry_s0.fieldbyname('pline').value+'''';
    open;
    if not fieldbyname('pline').isnull then endteam001.Caption:=fieldbyname('pline').value else endteam001.Caption:='';
  end;

  rd001.Caption:='';rd002.Caption:='';rd003.Caption:='';rd004.Caption:='';rd005.Caption:='';rd006.Caption:='';
  rd011.Caption:='';rd012.Caption:='';rd013.Caption:='';rd014.Caption:='';rd015.Caption:='';rd016.Caption:='';
  rd021.Caption:='';rd022.Caption:='';rd023.Caption:='';rd024.Caption:='';rd025.Caption:='';rd026.Caption:='';
  rd031.Caption:='';rd032.Caption:='';rd033.Caption:='';rd034.Caption:='';rd035.Caption:='';rd036.Caption:='';
  rd041.Caption:='';rd042.Caption:='';rd043.Caption:='';rd044.Caption:='';rd045.Caption:='';rd046.Caption:='';
  rd051.Caption:='';rd052.Caption:='';rd053.Caption:='';rd054.Caption:='';rd055.Caption:='';rd056.Caption:='';
  rd061.Caption:='';rd062.Caption:='';rd063.Caption:='';rd064.Caption:='';rd065.Caption:='';rd066.Caption:='';
  rd071.Caption:='';rd072.Caption:='';rd073.Caption:='';rd074.Caption:='';rd075.Caption:='';rd076.Caption:='';
  rd081.Caption:='';rd082.Caption:='';rd083.Caption:='';rd084.Caption:='';rd085.Caption:='';rd086.Caption:='';
  rd091.Caption:='';rd092.Caption:='';rd093.Caption:='';rd094.Caption:='';rd095.Caption:='';rd096.Caption:='';
  rd101.Caption:='';rd102.Caption:='';rd103.Caption:='';rd104.Caption:='';rd105.Caption:='';rd106.Caption:='';
  rd111.Caption:='';rd112.Caption:='';rd113.Caption:='';rd114.Caption:='';rd115.Caption:='';rd116.Caption:='';
  sd001.Caption:='';sd002.Caption:='';sd011.Caption:='';sd012.Caption:='';sd021.Caption:='';sd022.Caption:='';
  sd031.Caption:='';sd032.Caption:='';sd041.Caption:='';sd042.Caption:='';sd051.Caption:='';sd052.Caption:='';
  sd061.Caption:='';sd062.Caption:='';sd071.Caption:='';sd072.Caption:='';sd081.Caption:='';sd082.Caption:='';
  sd091.Caption:='';sd092.Caption:='';sd101.Caption:='';sd102.Caption:='';sd111.Caption:='';sd112.Caption:='';
  sd121.Caption:='';sd122.Caption:='';sd131.Caption:='';sd132.Caption:='';sd141.Caption:='';sd142.Caption:='';
  sd151.Caption:='';sd152.Caption:='';sd161.Caption:='';sd162.Caption:='';sd171.Caption:='';sd172.Caption:='';
  sd181.Caption:='';sd182.Caption:='';sd191.Caption:='';sd192.Caption:='';sd201.Caption:='';sd202.Caption:='';
  sd211.Caption:='';sd212.Caption:='';sd221.Caption:='';sd222.Caption:='';sd231.Caption:='';sd232.Caption:='';
  sd241.Caption:='';sd242.Caption:='';sd251.Caption:='';sd252.Caption:='';sd261.Caption:='';sd262.Caption:='';
  sd271.Caption:='';sd272.Caption:='';sd281.Caption:='';sd282.Caption:='';sd291.Caption:='';sd292.Caption:='';
  sd301.Caption:='';sd302.Caption:='';
  i:=0; edef1:='';
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_aql_s4 where seq=:x1 order by edef,sseq';
    params[0].asinteger:=frmaqlmain.qry_s0.fieldbyname('seq').value;
    open;
    //first;
    //if not fieldbyname('edef').isnull then edef1:=fieldbyname('edef').value else edef1:='';
    while not eof do begin
      i:=i+1;
      edef2:=fieldbyname('edef').value;
      if edef1<>edef2 then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select sum(major) as x1,sum(minor) as x2 from tbl_aql_s4 where seq=:x1 and edef='''+query1.fieldbyname('edef').value+'''';
          params[0].asinteger:=frmaqlmain.qry_s0.fieldbyname('seq').value;
          open;
          if i=1 then begin
            sd001.Caption:=fieldbyname('x1').asstring;
            sd002.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=2 then begin
            sd011.Caption:=fieldbyname('x1').asstring;
            sd012.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=3 then begin
            sd021.Caption:=fieldbyname('x1').asstring;
            sd022.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=4 then begin
            sd031.Caption:=fieldbyname('x1').asstring;
            sd032.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=5 then begin
            sd041.Caption:=fieldbyname('x1').asstring;
            sd042.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=6 then begin
            sd051.Caption:=fieldbyname('x1').asstring;
            sd052.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=7 then begin
            sd061.Caption:=fieldbyname('x1').asstring;
            sd062.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=8 then begin
            sd071.Caption:=fieldbyname('x1').asstring;
            sd072.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=9 then begin
            sd081.Caption:=fieldbyname('x1').asstring;
            sd082.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=10 then begin
            sd091.Caption:=fieldbyname('x1').asstring;
            sd092.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=11 then begin
            sd101.Caption:=fieldbyname('x1').asstring;
            sd102.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=12 then begin
            sd111.Caption:=fieldbyname('x1').asstring;
            sd112.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=13 then begin
            sd121.Caption:=fieldbyname('x1').asstring;
            sd122.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=14 then begin
            sd131.Caption:=fieldbyname('x1').asstring;
            sd132.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=15 then begin
            sd141.Caption:=fieldbyname('x1').asstring;
            sd142.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=16 then begin
            sd151.Caption:=fieldbyname('x1').asstring;
            sd152.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=17 then begin
            sd161.Caption:=fieldbyname('x1').asstring;
            sd162.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=18 then begin
            sd171.Caption:=fieldbyname('x1').asstring;
            sd172.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=19 then begin
            sd181.Caption:=fieldbyname('x1').asstring;
            sd182.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=20 then begin
            sd191.Caption:=fieldbyname('x1').asstring;
            sd192.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=21 then begin
            sd201.Caption:=fieldbyname('x1').asstring;
            sd202.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=22 then begin
            sd211.Caption:=fieldbyname('x1').asstring;
            sd212.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=23 then begin
            sd221.Caption:=fieldbyname('x1').asstring;
            sd222.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=24 then begin
            sd231.Caption:=fieldbyname('x1').asstring;
            sd232.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=25 then begin
            sd241.Caption:=fieldbyname('x1').asstring;
            sd242.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=26 then begin
            sd251.Caption:=fieldbyname('x1').asstring;
            sd252.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=27 then begin
            sd261.Caption:=fieldbyname('x1').asstring;
            sd262.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=28 then begin
            sd271.Caption:=fieldbyname('x1').asstring;
            sd272.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=29 then begin
            sd281.Caption:=fieldbyname('x1').asstring;
            sd282.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=30 then begin
            sd291.Caption:=fieldbyname('x1').asstring;
            sd292.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end else if i=31 then begin
            sd301.Caption:=fieldbyname('x1').asstring;
            sd302.Caption:=formatfloat('+#,0;-#,0;''''',fieldbyname('x2').value);
          end;
        end;
      end;
      if i=1 then begin
        if not fieldbyname('siz').isnull then rd001.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd002.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd003.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd004.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd005.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd006.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=2 then begin
        if not fieldbyname('siz').isnull then rd011.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd012.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd013.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd014.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd015.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd016.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=3 then begin
        if not fieldbyname('siz').isnull then rd021.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd022.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd023.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd024.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd025.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd026.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=4 then begin
        if not fieldbyname('siz').isnull then rd031.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd032.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd033.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd034.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd035.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd036.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=5 then begin
        if not fieldbyname('siz').isnull then rd041.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd042.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd043.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd044.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd045.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd046.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=6 then begin
        if not fieldbyname('siz').isnull then rd051.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd052.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd053.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd054.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd055.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd056.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=7 then begin
        if not fieldbyname('siz').isnull then rd061.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd062.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd063.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd064.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd065.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd066.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=8 then begin
        if not fieldbyname('siz').isnull then rd071.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd072.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd073.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd074.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd075.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd076.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=9 then begin
        if not fieldbyname('siz').isnull then rd081.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd082.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd083.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd084.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd085.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd086.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=10 then begin
        if not fieldbyname('siz').isnull then rd091.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd092.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd093.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd094.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd095.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd096.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=11 then begin
        if not fieldbyname('siz').isnull then rd101.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd102.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd103.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd104.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd105.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd106.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=12 then begin
        if not fieldbyname('siz').isnull then rd111.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd112.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd113.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd114.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd115.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd116.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=13 then begin
        if not fieldbyname('siz').isnull then rd121.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd122.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd123.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd124.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd125.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd126.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=14 then begin
        if not fieldbyname('siz').isnull then rd131.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd132.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd133.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd134.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd135.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd136.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=15 then begin
        if not fieldbyname('siz').isnull then rd141.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd142.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd143.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd144.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd145.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd146.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=16 then begin
        if not fieldbyname('siz').isnull then rd151.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd152.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd153.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd154.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd155.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd156.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=17 then begin
        if not fieldbyname('siz').isnull then rd161.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd162.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd163.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd164.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd165.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd166.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=18 then begin
        if not fieldbyname('siz').isnull then rd171.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd172.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd173.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd174.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd175.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd176.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=19 then begin
        if not fieldbyname('siz').isnull then rd181.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd182.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd183.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd184.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd185.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd186.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=20 then begin
        if not fieldbyname('siz').isnull then rd191.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd192.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd193.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd194.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd195.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd196.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=21 then begin
        if not fieldbyname('siz').isnull then rd201.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd202.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd203.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd204.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd205.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd206.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=22 then begin
        if not fieldbyname('siz').isnull then rd211.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd212.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd213.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd214.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd215.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd216.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=23 then begin
        if not fieldbyname('siz').isnull then rd221.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd222.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd223.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd224.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd225.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd226.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=24 then begin
        if not fieldbyname('siz').isnull then rd231.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd232.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd233.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd234.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd235.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd236.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=25 then begin
        if not fieldbyname('siz').isnull then rd241.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd242.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd243.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd244.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd245.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd246.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=26 then begin
        if not fieldbyname('siz').isnull then rd251.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd252.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd253.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd254.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd255.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd256.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=27 then begin
        if not fieldbyname('siz').isnull then rd261.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd262.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd263.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd264.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd265.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd266.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=28 then begin
        if not fieldbyname('siz').isnull then rd271.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd272.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd273.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd274.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd275.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd276.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=29 then begin
        if not fieldbyname('siz').isnull then rd281.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd282.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd283.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd284.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd285.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd286.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=30 then begin
        if not fieldbyname('siz').isnull then rd291.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd292.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd293.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd294.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd295.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd296.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end else if i=31 then begin
        if not fieldbyname('siz').isnull then rd301.Caption:=fieldbyname('siz').value;
        if not fieldbyname('acol').isnull then rd302.Caption:=fieldbyname('acol').value;
        if not fieldbyname('eplo').isnull then rd303.Caption:=fieldbyname('eplo').value+' '+fieldbyname('plo').value;
        if not fieldbyname('edef').isnull then rd304.Caption:=fieldbyname('edef').value+' '+fieldbyname('def').value;
        if not fieldbyname('major').isnull then rd305.Caption:=formatfloat('#0;-#0;''''',fieldbyname('major').value);
        if not fieldbyname('minor').isnull then rd306.Caption:=formatfloat('#0;-#0;''''',fieldbyname('minor').value);
      end;
      edef1:=fieldbyname('edef').value;
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmaqlreport6.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).Zoompercentage:=100;
end;

procedure Tfrmaqlreport6.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select frep from tbl_aql_ftyrep where fqa=''FTY''';
    open;
    if not fieldbyname('frep').isnull then frep001.Caption:=fieldbyname('frep').value;
  end;
end;

end.
 