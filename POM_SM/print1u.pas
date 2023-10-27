unit print1u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  myChkBox, ppBands, ppCtrls, ppStrtch, ppRegion, ppPrnabl, ppClass,
  ppProd, ppReport, ppDB, ppComm, ppRelatv, ppCache, ppDBPipe, ppDBBDE, Db,
  DBTables, StdCtrls, ExtCtrls, Buttons, ppViewr, ppMemo;

type
  Tfrmprint1 = class(TForm)
    Label1: TLabel;
    xx1: TCheckBox;
    xx2: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioGroup1: TRadioGroup;
    Query1: TQuery;
    Query2: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppBDEPipeline2: TppBDEPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppRegion7: TppRegion;
    ppShape46: TppShape;
    ppShape56: TppShape;
    ppShape45: TppShape;
    ppShape53: TppShape;
    ppShape49: TppShape;
    ppShape47: TppShape;
    ppShape55: TppShape;
    ppShape54: TppShape;
    ppShape51: TppShape;
    ppShape52: TppShape;
    ppShape43: TppShape;
    ppShape44: TppShape;
    ppLine5: TppLine;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel64: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    myDBCheckBox3: TmyDBCheckBox;
    ppLabel67: TppLabel;
    myDBCheckBox4: TmyDBCheckBox;
    ppLabel68: TppLabel;
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
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine7: TppLine;
    ppShape63: TppShape;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppDBText137: TppDBText;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppDBText146: TppDBText;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppLine6: TppLine;
    ppShape64: TppShape;
    ppDetailBand2: TppDetailBand;
    ppRegion8: TppRegion;
    ppShape67: TppShape;
    ppShape72: TppShape;
    ppDBText121: TppDBText;
    ppShape50: TppShape;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppShape65: TppShape;
    ppDBText124: TppDBText;
    ppDBText125: TppDBText;
    ppShape66: TppShape;
    ppDBText150: TppDBText;
    ppShape68: TppShape;
    ppShape69: TppShape;
    ppShape70: TppShape;
    ppShape71: TppShape;
    ppShape73: TppShape;
    ppShape74: TppShape;
    ppShape75: TppShape;
    ppShape76: TppShape;
    ppShape77: TppShape;
    ppShape78: TppShape;
    ppShape79: TppShape;
    ppDBText151: TppDBText;
    ppDBText152: TppDBText;
    ppDBText153: TppDBText;
    ppDBText154: TppDBText;
    ppDBText155: TppDBText;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppDBText161: TppDBText;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    ppDBText164: TppDBText;
    ppDBText165: TppDBText;
    ppDBText166: TppDBText;
    ppDBText167: TppDBText;
    ppDBText168: TppDBText;
    ppDBText169: TppDBText;
    ppDBText170: TppDBText;
    ppDBText171: TppDBText;
    ppDBText172: TppDBText;
    ppDBText173: TppDBText;
    ppDBText174: TppDBText;
    ppDBText237: TppDBText;
    ppDBText238: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppRegion9: TppRegion;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText59: TppDBText;
    ppLabel29: TppLabel;
    ppDBText60: TppDBText;
    ppLabel30: TppLabel;
    ppDBText61: TppDBText;
    ppRegion4: TppRegion;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppShape32: TppShape;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppLabel93: TppLabel;
    ppLine11: TppLine;
    ppDetailBand3: TppDetailBand;
    ppRegion5: TppRegion;
    ppShape33: TppShape;
    ppDBText94: TppDBText;
    ldwz: TppDBText;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppDBText97: TppDBText;
    mthd3: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppRegion6: TppRegion;
    ppLabel52: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppReport4: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppRegion10: TppRegion;
    ppShape94: TppShape;
    ppShape92: TppShape;
    ppShape84: TppShape;
    ppShape85: TppShape;
    ppShape86: TppShape;
    ppShape87: TppShape;
    ppShape88: TppShape;
    ppShape89: TppShape;
    ppShape90: TppShape;
    ppShape91: TppShape;
    ppLine8: TppLine;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    myDBCheckBox5: TmyDBCheckBox;
    ppLabel105: TppLabel;
    myDBCheckBox6: TmyDBCheckBox;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    myDBCheckBox7: TmyDBCheckBox;
    ppLabel108: TppLabel;
    myDBCheckBox8: TmyDBCheckBox;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLine10: TppLine;
    ppShape95: TppShape;
    ppShape96: TppShape;
    ppDBText181: TppDBText;
    ppDBText182: TppDBText;
    ppDBText183: TppDBText;
    ppDBText184: TppDBText;
    ppDBText185: TppDBText;
    ppDBText186: TppDBText;
    ppDBText187: TppDBText;
    ppDBText188: TppDBText;
    ppDBText189: TppDBText;
    ppDBText190: TppDBText;
    ppDBText191: TppDBText;
    ppDBText192: TppDBText;
    ppDBText193: TppDBText;
    ppDBText194: TppDBText;
    ppDBText195: TppDBText;
    ppDBText196: TppDBText;
    ppDBText197: TppDBText;
    ppDBText198: TppDBText;
    ppDBText199: TppDBText;
    ppDBText200: TppDBText;
    ppDBText201: TppDBText;
    ppDBText202: TppDBText;
    ppDBText203: TppDBText;
    ppDBText204: TppDBText;
    ppLine9: TppLine;
    ppShape99: TppShape;
    ppShape100: TppShape;
    ppDetailBand4: TppDetailBand;
    ppRegion11: TppRegion;
    ppDBText205: TppDBText;
    ppShape101: TppShape;
    ldwz1: TppDBText;
    ppShape102: TppShape;
    ppDBText208: TppDBText;
    mthd4: TppDBText;
    ppShape103: TppShape;
    ppDBText210: TppDBText;
    ppShape104: TppShape;
    ppShape105: TppShape;
    ppShape106: TppShape;
    ppShape107: TppShape;
    ppShape108: TppShape;
    ppShape109: TppShape;
    ppShape110: TppShape;
    ppShape111: TppShape;
    ppShape112: TppShape;
    ppShape113: TppShape;
    ppShape114: TppShape;
    ppShape115: TppShape;
    ppShape116: TppShape;
    ppDBText211: TppDBText;
    ppDBText212: TppDBText;
    ppDBText213: TppDBText;
    ppDBText214: TppDBText;
    ppDBText215: TppDBText;
    ppDBText216: TppDBText;
    ppDBText217: TppDBText;
    ppDBText218: TppDBText;
    ppDBText219: TppDBText;
    ppDBText220: TppDBText;
    ppDBText221: TppDBText;
    ppDBText222: TppDBText;
    ppDBText223: TppDBText;
    ppDBText224: TppDBText;
    ppDBText225: TppDBText;
    ppDBText226: TppDBText;
    ppDBText227: TppDBText;
    ppDBText228: TppDBText;
    ppDBText229: TppDBText;
    ppDBText230: TppDBText;
    ppDBText231: TppDBText;
    ppDBText232: TppDBText;
    ppDBText233: TppDBText;
    ppDBText234: TppDBText;
    ppDBText206: TppDBText;
    ppDBText236: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppRegion12: TppRegion;
    ppLabel134: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppReport5: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppRegion13: TppRegion;
    ppShape118: TppShape;
    ppShape119: TppShape;
    ppShape121: TppShape;
    ppShape122: TppShape;
    ppShape123: TppShape;
    ppShape124: TppShape;
    ppShape129: TppShape;
    ppShape130: TppShape;
    ppShape131: TppShape;
    ppShape132: TppShape;
    ppShape133: TppShape;
    ppShape134: TppShape;
    ppLine15: TppLine;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    myDBCheckBox9: TmyDBCheckBox;
    ppLabel148: TppLabel;
    myDBCheckBox10: TmyDBCheckBox;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    myDBCheckBox11: TmyDBCheckBox;
    ppLabel151: TppLabel;
    myDBCheckBox12: TmyDBCheckBox;
    ppLabel152: TppLabel;
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
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppShape136: TppShape;
    ppDBText245: TppDBText;
    ppDBText246: TppDBText;
    ppDBText247: TppDBText;
    ppDBText248: TppDBText;
    ppDBText249: TppDBText;
    ppDBText250: TppDBText;
    ppDBText251: TppDBText;
    ppDBText252: TppDBText;
    ppDBText253: TppDBText;
    ppDBText254: TppDBText;
    ppDBText255: TppDBText;
    ppDBText256: TppDBText;
    ppDBText257: TppDBText;
    ppDBText258: TppDBText;
    ppDBText259: TppDBText;
    ppDBText260: TppDBText;
    ppDBText261: TppDBText;
    ppDBText262: TppDBText;
    ppDBText263: TppDBText;
    ppDBText264: TppDBText;
    ppDBText265: TppDBText;
    ppDBText266: TppDBText;
    ppDBText267: TppDBText;
    ppDBText268: TppDBText;
    ppShape137: TppShape;
    ppDetailBand5: TppDetailBand;
    ppRegion14: TppRegion;
    ppShape138: TppShape;
    ppShape139: TppShape;
    ppDBText269: TppDBText;
    ppShape140: TppShape;
    ppDBText270: TppDBText;
    ppDBText271: TppDBText;
    ppShape141: TppShape;
    ppDBText272: TppDBText;
    ppDBText273: TppDBText;
    ppShape142: TppShape;
    ppDBText274: TppDBText;
    ppShape143: TppShape;
    ppShape144: TppShape;
    ppShape145: TppShape;
    ppShape146: TppShape;
    ppShape147: TppShape;
    ppShape148: TppShape;
    ppShape149: TppShape;
    ppShape150: TppShape;
    ppShape151: TppShape;
    ppShape152: TppShape;
    ppShape153: TppShape;
    ppDBText275: TppDBText;
    ppDBText276: TppDBText;
    ppDBText277: TppDBText;
    ppDBText278: TppDBText;
    ppDBText279: TppDBText;
    ppDBText280: TppDBText;
    ppDBText281: TppDBText;
    ppDBText282: TppDBText;
    ppDBText283: TppDBText;
    ppDBText284: TppDBText;
    ppDBText285: TppDBText;
    ppDBText286: TppDBText;
    ppDBText287: TppDBText;
    ppDBText288: TppDBText;
    ppDBText289: TppDBText;
    ppDBText290: TppDBText;
    ppDBText291: TppDBText;
    ppDBText292: TppDBText;
    ppDBText293: TppDBText;
    ppDBText294: TppDBText;
    ppDBText295: TppDBText;
    ppDBText296: TppDBText;
    ppDBText297: TppDBText;
    ppDBText298: TppDBText;
    ppDBText299: TppDBText;
    ppDBText300: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppSummaryBand5: TppSummaryBand;
    ppRegion15: TppRegion;
    ppLabel177: TppLabel;
    ppReport6: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppRegion16: TppRegion;
    ppShape155: TppShape;
    ppShape156: TppShape;
    ppShape158: TppShape;
    ppShape159: TppShape;
    ppShape160: TppShape;
    ppShape161: TppShape;
    ppShape166: TppShape;
    ppShape167: TppShape;
    ppShape168: TppShape;
    ppShape169: TppShape;
    ppShape170: TppShape;
    ppShape171: TppShape;
    ppLine19: TppLine;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    myDBCheckBox13: TmyDBCheckBox;
    ppLabel189: TppLabel;
    myDBCheckBox14: TmyDBCheckBox;
    ppLabel190: TppLabel;
    ppLabel191: TppLabel;
    myDBCheckBox15: TmyDBCheckBox;
    ppLabel192: TppLabel;
    myDBCheckBox16: TmyDBCheckBox;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLabel202: TppLabel;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLabel205: TppLabel;
    ppLabel206: TppLabel;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppLabel209: TppLabel;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppShape173: TppShape;
    ppDBText308: TppDBText;
    ppDBText309: TppDBText;
    ppDBText310: TppDBText;
    ppDBText311: TppDBText;
    ppDBText312: TppDBText;
    ppDBText313: TppDBText;
    ppDBText314: TppDBText;
    ppDBText315: TppDBText;
    ppDBText316: TppDBText;
    ppDBText317: TppDBText;
    ppDBText318: TppDBText;
    ppDBText319: TppDBText;
    ppDBText320: TppDBText;
    ppDBText321: TppDBText;
    ppDBText322: TppDBText;
    ppDBText323: TppDBText;
    ppDBText324: TppDBText;
    ppDBText325: TppDBText;
    ppDBText326: TppDBText;
    ppDBText327: TppDBText;
    ppDBText328: TppDBText;
    ppDBText329: TppDBText;
    ppDBText330: TppDBText;
    ppDBText331: TppDBText;
    ppShape174: TppShape;
    ppDetailBand6: TppDetailBand;
    ppRegion17: TppRegion;
    ppShape175: TppShape;
    ppShape176: TppShape;
    ppDBText332: TppDBText;
    ppShape177: TppShape;
    ldwz2: TppDBText;
    ppShape178: TppShape;
    ppDBText335: TppDBText;
    mthd6: TppDBText;
    ppShape179: TppShape;
    ppDBText337: TppDBText;
    ppShape180: TppShape;
    ppShape181: TppShape;
    ppShape182: TppShape;
    ppShape183: TppShape;
    ppShape184: TppShape;
    ppShape185: TppShape;
    ppShape186: TppShape;
    ppShape187: TppShape;
    ppShape188: TppShape;
    ppShape189: TppShape;
    ppShape190: TppShape;
    ppDBText338: TppDBText;
    ppDBText339: TppDBText;
    ppDBText340: TppDBText;
    ppDBText341: TppDBText;
    ppDBText342: TppDBText;
    ppDBText343: TppDBText;
    ppDBText344: TppDBText;
    ppDBText345: TppDBText;
    ppDBText346: TppDBText;
    ppDBText347: TppDBText;
    ppDBText348: TppDBText;
    ppDBText349: TppDBText;
    ppDBText350: TppDBText;
    ppDBText351: TppDBText;
    ppDBText352: TppDBText;
    ppDBText353: TppDBText;
    ppDBText354: TppDBText;
    ppDBText355: TppDBText;
    ppDBText356: TppDBText;
    ppDBText357: TppDBText;
    ppDBText358: TppDBText;
    ppDBText359: TppDBText;
    ppDBText360: TppDBText;
    ppDBText361: TppDBText;
    ppDBText362: TppDBText;
    ppDBText363: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppLabel214: TppLabel;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLabel217: TppLabel;
    ppSummaryBand6: TppSummaryBand;
    ppRegion18: TppRegion;
    ppLabel218: TppLabel;
    Query3: TQuery;
    ppReport7: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppRegion19: TppRegion;
    ppShape192: TppShape;
    ppShape193: TppShape;
    ppShape195: TppShape;
    ppShape196: TppShape;
    ppShape197: TppShape;
    ppShape198: TppShape;
    ppShape203: TppShape;
    ppShape204: TppShape;
    ppShape205: TppShape;
    ppShape206: TppShape;
    ppShape207: TppShape;
    ppShape208: TppShape;
    ppLine23: TppLine;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppLabel229: TppLabel;
    myDBCheckBox17: TmyDBCheckBox;
    ppLabel230: TppLabel;
    myDBCheckBox18: TmyDBCheckBox;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    myDBCheckBox19: TmyDBCheckBox;
    ppLabel233: TppLabel;
    myDBCheckBox20: TmyDBCheckBox;
    ppLabel234: TppLabel;
    ppLabel235: TppLabel;
    ppLabel236: TppLabel;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppLabel239: TppLabel;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLabel243: TppLabel;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppLabel251: TppLabel;
    ppLabel252: TppLabel;
    ppLabel253: TppLabel;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppShape210: TppShape;
    ppDBText369: TppDBText;
    ppDBText370: TppDBText;
    ppDBText371: TppDBText;
    ppDBText372: TppDBText;
    ppDBText373: TppDBText;
    ppDBText374: TppDBText;
    ppDBText375: TppDBText;
    ppDBText376: TppDBText;
    ppDBText377: TppDBText;
    ppDBText378: TppDBText;
    ppDBText379: TppDBText;
    ppDBText380: TppDBText;
    ppDBText381: TppDBText;
    ppDBText382: TppDBText;
    ppDBText383: TppDBText;
    ppDBText384: TppDBText;
    ppDBText385: TppDBText;
    ppDBText386: TppDBText;
    ppDBText387: TppDBText;
    ppDBText388: TppDBText;
    ppDBText389: TppDBText;
    ppDBText390: TppDBText;
    ppDBText391: TppDBText;
    ppDBText392: TppDBText;
    ppShape211: TppShape;
    ppDetailBand7: TppDetailBand;
    ppRegion20: TppRegion;
    ppShape212: TppShape;
    ppShape213: TppShape;
    ppDBText393: TppDBText;
    ppShape214: TppShape;
    ppDBText394: TppDBText;
    ppDBText395: TppDBText;
    ppShape215: TppShape;
    ppDBText396: TppDBText;
    ppDBText397: TppDBText;
    ppShape216: TppShape;
    ppDBText398: TppDBText;
    ppShape217: TppShape;
    ppShape218: TppShape;
    ppShape219: TppShape;
    ppShape220: TppShape;
    ppShape221: TppShape;
    ppShape222: TppShape;
    ppShape223: TppShape;
    ppShape224: TppShape;
    ppShape225: TppShape;
    ppShape226: TppShape;
    ppShape227: TppShape;
    ppDBText399: TppDBText;
    ppDBText400: TppDBText;
    ppDBText401: TppDBText;
    ppDBText402: TppDBText;
    ppDBText403: TppDBText;
    ppDBText404: TppDBText;
    ppDBText405: TppDBText;
    ppDBText406: TppDBText;
    ppDBText407: TppDBText;
    ppDBText408: TppDBText;
    ppDBText409: TppDBText;
    ppDBText410: TppDBText;
    ppDBText411: TppDBText;
    ppDBText412: TppDBText;
    ppDBText413: TppDBText;
    ppDBText414: TppDBText;
    ppDBText415: TppDBText;
    ppDBText416: TppDBText;
    ppDBText417: TppDBText;
    ppDBText418: TppDBText;
    ppDBText419: TppDBText;
    ppDBText420: TppDBText;
    ppDBText421: TppDBText;
    ppDBText422: TppDBText;
    ppDBText423: TppDBText;
    ppDBText424: TppDBText;
    ppFooterBand7: TppFooterBand;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppLabel258: TppLabel;
    ppSummaryBand7: TppSummaryBand;
    ppRegion21: TppRegion;
    ppLabel259: TppLabel;
    ppReport8: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppRegion22: TppRegion;
    ppShape229: TppShape;
    ppShape230: TppShape;
    ppShape232: TppShape;
    ppShape233: TppShape;
    ppShape234: TppShape;
    ppShape235: TppShape;
    ppShape240: TppShape;
    ppShape241: TppShape;
    ppShape242: TppShape;
    ppShape243: TppShape;
    ppShape244: TppShape;
    ppShape245: TppShape;
    ppLine27: TppLine;
    ppLabel267: TppLabel;
    ppLabel268: TppLabel;
    ppLabel269: TppLabel;
    ppLabel270: TppLabel;
    myDBCheckBox21: TmyDBCheckBox;
    ppLabel271: TppLabel;
    myDBCheckBox22: TmyDBCheckBox;
    ppLabel272: TppLabel;
    ppLabel273: TppLabel;
    myDBCheckBox23: TmyDBCheckBox;
    ppLabel274: TppLabel;
    myDBCheckBox24: TmyDBCheckBox;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    ppLabel277: TppLabel;
    ppLabel278: TppLabel;
    ppLabel279: TppLabel;
    ppLabel280: TppLabel;
    ppLabel281: TppLabel;
    ppLabel282: TppLabel;
    ppLabel283: TppLabel;
    ppLabel284: TppLabel;
    ppLabel285: TppLabel;
    ppLabel286: TppLabel;
    ppLabel287: TppLabel;
    ppLabel288: TppLabel;
    ppLabel289: TppLabel;
    ppLabel290: TppLabel;
    ppLabel291: TppLabel;
    ppLabel292: TppLabel;
    ppLabel293: TppLabel;
    ppLabel294: TppLabel;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppShape247: TppShape;
    ppDBText432: TppDBText;
    ppDBText433: TppDBText;
    ppDBText434: TppDBText;
    ppDBText435: TppDBText;
    ppDBText436: TppDBText;
    ppDBText437: TppDBText;
    ppDBText438: TppDBText;
    ppDBText439: TppDBText;
    ppDBText440: TppDBText;
    ppDBText441: TppDBText;
    ppDBText442: TppDBText;
    ppDBText443: TppDBText;
    ppDBText444: TppDBText;
    ppDBText445: TppDBText;
    ppDBText446: TppDBText;
    ppDBText447: TppDBText;
    ppDBText448: TppDBText;
    ppDBText449: TppDBText;
    ppDBText450: TppDBText;
    ppDBText451: TppDBText;
    ppDBText452: TppDBText;
    ppDBText453: TppDBText;
    ppDBText454: TppDBText;
    ppDBText455: TppDBText;
    ppShape248: TppShape;
    ppDetailBand8: TppDetailBand;
    ppRegion23: TppRegion;
    ppShape249: TppShape;
    ppShape250: TppShape;
    ppDBText456: TppDBText;
    ppShape251: TppShape;
    ldwz3: TppDBText;
    ppShape252: TppShape;
    ppDBText459: TppDBText;
    mthd8: TppDBText;
    ppShape253: TppShape;
    ppDBText461: TppDBText;
    ppShape254: TppShape;
    ppShape255: TppShape;
    ppShape256: TppShape;
    ppShape257: TppShape;
    ppShape258: TppShape;
    ppShape259: TppShape;
    ppShape260: TppShape;
    ppShape261: TppShape;
    ppShape262: TppShape;
    ppShape263: TppShape;
    ppShape264: TppShape;
    ppDBText462: TppDBText;
    ppDBText463: TppDBText;
    ppDBText464: TppDBText;
    ppDBText465: TppDBText;
    ppDBText466: TppDBText;
    ppDBText467: TppDBText;
    ppDBText468: TppDBText;
    ppDBText469: TppDBText;
    ppDBText470: TppDBText;
    ppDBText471: TppDBText;
    ppDBText472: TppDBText;
    ppDBText473: TppDBText;
    ppDBText474: TppDBText;
    ppDBText475: TppDBText;
    ppDBText476: TppDBText;
    ppDBText477: TppDBText;
    ppDBText478: TppDBText;
    ppDBText479: TppDBText;
    ppDBText480: TppDBText;
    ppDBText481: TppDBText;
    ppDBText482: TppDBText;
    ppDBText483: TppDBText;
    ppDBText484: TppDBText;
    ppDBText485: TppDBText;
    ppDBText486: TppDBText;
    ppDBText487: TppDBText;
    ppFooterBand8: TppFooterBand;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppSummaryBand8: TppSummaryBand;
    ppRegion24: TppRegion;
    ppLabel300: TppLabel;
    ppLabel307: TppLabel;
    ppLabel309: TppLabel;
    ppLabel310: TppLabel;
    ppLabel313: TppLabel;
    ppLabel314: TppLabel;
    ppDBText209: TppDBText;
    ppLabel315: TppLabel;
    ppLabel316: TppLabel;
    ppLabel317: TppLabel;
    ppLabel318: TppLabel;
    ppDBText336: TppDBText;
    ppLabel319: TppLabel;
    ppLabel320: TppLabel;
    ppLabel321: TppLabel;
    ppLabel322: TppLabel;
    ppDBText457: TppDBText;
    ppLabel323: TppLabel;
    ppLabel324: TppLabel;
    ppRegion25: TppRegion;
    ppRegion26: TppRegion;
    ppRegion27: TppRegion;
    ppLine31: TppLine;
    ppLabel325: TppLabel;
    ppLabel326: TppLabel;
    ppLabel327: TppLabel;
    ppLabel328: TppLabel;
    ppLabel329: TppLabel;
    ppShape48: TppShape;
    ppShape57: TppShape;
    ppShape58: TppShape;
    ppShape59: TppShape;
    ppLabel94: TppLabel;
    ppLabel98: TppLabel;
    ppLine13: TppLine;
    ppLabel99: TppLabel;
    ppRegion31: TppRegion;
    ppRegion32: TppRegion;
    ppRegion33: TppRegion;
    ppShape81: TppShape;
    ppShape82: TppShape;
    ppShape83: TppShape;
    ppLine33: TppLine;
    ppLabel100: TppLabel;
    ppLabel135: TppLabel;
    ppLabel301: TppLabel;
    ppLabel335: TppLabel;
    ppLabel336: TppLabel;
    ppShape93: TppShape;
    ppLabel95: TppLabel;
    ppDBText175: TppDBText;
    ppLabel96: TppLabel;
    ppDBText176: TppDBText;
    ppLabel97: TppLabel;
    ppDBText177: TppDBText;
    ppLabel337: TppLabel;
    ppDBText178: TppDBText;
    ppLabel338: TppLabel;
    ppDBText179: TppDBText;
    ppLabel339: TppLabel;
    ppDBText180: TppDBText;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine14: TppLine;
    ppLabel55: TppLabel;
    ppRegion34: TppRegion;
    ppRegion35: TppRegion;
    ppRegion36: TppRegion;
    ppShape97: TppShape;
    ppShape98: TppShape;
    ppShape117: TppShape;
    ppLine34: TppLine;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel136: TppLabel;
    ppShape120: TppShape;
    ppLabel303: TppLabel;
    ppDBText95: TppDBText;
    ppLabel340: TppLabel;
    ppDBText96: TppDBText;
    ppLabel341: TppLabel;
    ppDBText117: TppDBText;
    ppLabel342: TppLabel;
    ppDBText118: TppDBText;
    ppLabel343: TppLabel;
    ppDBText119: TppDBText;
    ppLabel344: TppLabel;
    ppDBText120: TppDBText;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppLine30: TppLine;
    ppLabel262: TppLabel;
    ppRegion37: TppRegion;
    ppRegion38: TppRegion;
    ppRegion39: TppRegion;
    ppShape125: TppShape;
    ppShape126: TppShape;
    ppShape127: TppShape;
    ppLine35: TppLine;
    ppLabel263: TppLabel;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppLabel266: TppLabel;
    ppLabel295: TppLabel;
    ppShape128: TppShape;
    ppLabel302: TppLabel;
    ppDBText426: TppDBText;
    ppLabel345: TppLabel;
    ppDBText427: TppDBText;
    ppLabel346: TppLabel;
    ppDBText428: TppDBText;
    ppLabel347: TppLabel;
    ppDBText429: TppDBText;
    ppLabel348: TppLabel;
    ppDBText430: TppDBText;
    ppLabel349: TppLabel;
    ppDBText431: TppDBText;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLine18: TppLine;
    ppLabel139: TppLabel;
    ppRegion40: TppRegion;
    ppRegion41: TppRegion;
    ppRegion42: TppRegion;
    ppShape135: TppShape;
    ppShape154: TppShape;
    ppShape157: TppShape;
    ppLine36: TppLine;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel172: TppLabel;
    ppShape162: TppShape;
    ppLabel304: TppLabel;
    ppDBText239: TppDBText;
    ppLabel350: TppLabel;
    ppDBText240: TppDBText;
    ppLabel351: TppLabel;
    ppDBText241: TppDBText;
    ppLabel352: TppLabel;
    ppDBText242: TppDBText;
    ppLabel353: TppLabel;
    ppDBText243: TppDBText;
    ppLabel354: TppLabel;
    ppDBText244: TppDBText;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLine22: TppLine;
    ppLabel180: TppLabel;
    ppRegion43: TppRegion;
    ppRegion44: TppRegion;
    ppRegion45: TppRegion;
    ppShape163: TppShape;
    ppShape164: TppShape;
    ppShape165: TppShape;
    ppLine37: TppLine;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppLabel213: TppLabel;
    ppShape172: TppShape;
    ppLabel305: TppLabel;
    ppDBText302: TppDBText;
    ppLabel355: TppLabel;
    ppDBText303: TppDBText;
    ppLabel356: TppLabel;
    ppDBText304: TppDBText;
    ppLabel357: TppLabel;
    ppDBText305: TppDBText;
    ppLabel358: TppLabel;
    ppDBText306: TppDBText;
    ppLabel359: TppLabel;
    ppDBText307: TppDBText;
    ppLabel219: TppLabel;
    ppLabel220: TppLabel;
    ppLine26: TppLine;
    ppLabel221: TppLabel;
    ppRegion46: TppRegion;
    ppRegion47: TppRegion;
    ppRegion48: TppRegion;
    ppShape191: TppShape;
    ppShape194: TppShape;
    ppShape199: TppShape;
    ppLine38: TppLine;
    ppLabel222: TppLabel;
    ppLabel223: TppLabel;
    ppLabel224: TppLabel;
    ppLabel225: TppLabel;
    ppLabel254: TppLabel;
    ppShape200: TppShape;
    ppLabel306: TppLabel;
    ppDBText333: TppDBText;
    ppLabel360: TppLabel;
    ppDBText334: TppDBText;
    ppLabel361: TppLabel;
    ppDBText365: TppDBText;
    ppLabel362: TppLabel;
    ppDBText366: TppDBText;
    ppLabel363: TppLabel;
    ppDBText367: TppDBText;
    ppLabel364: TppLabel;
    ppDBText368: TppDBText;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
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
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppMemo2: TppMemo;
    ppReport9: TppReport;
    ppHeaderBand9: TppHeaderBand;
    ppRegion49: TppRegion;
    ppShape201: TppShape;
    ppShape202: TppShape;
    ppShape209: TppShape;
    ppShape228: TppShape;
    ppShape231: TppShape;
    ppShape236: TppShape;
    ppShape237: TppShape;
    ppShape238: TppShape;
    ppShape239: TppShape;
    ppShape246: TppShape;
    ppLabel365: TppLabel;
    ppLabel366: TppLabel;
    ppLabel367: TppLabel;
    ppShape265: TppShape;
    ppLabel368: TppLabel;
    ppLabel369: TppLabel;
    ppLabel370: TppLabel;
    ppLabel371: TppLabel;
    ppLabel372: TppLabel;
    ppLabel373: TppLabel;
    ppLabel374: TppLabel;
    ppLabel375: TppLabel;
    ppLabel376: TppLabel;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLabel377: TppLabel;
    ppLabel378: TppLabel;
    ppLabel379: TppLabel;
    ppLabel380: TppLabel;
    ppLabel381: TppLabel;
    ppLabel382: TppLabel;
    ppDBText12: TppDBText;
    ppDBText116: TppDBText;
    ppDBText458: TppDBText;
    ppDBText460: TppDBText;
    ppDBText489: TppDBText;
    ppDBText490: TppDBText;
    ppDBText491: TppDBText;
    ppDBText492: TppDBText;
    ppDBText493: TppDBText;
    ppDBText494: TppDBText;
    ppDBText495: TppDBText;
    ppDBText496: TppDBText;
    ppDBText497: TppDBText;
    ppDBText498: TppDBText;
    ppDBText499: TppDBText;
    ppDBText500: TppDBText;
    ppDBText501: TppDBText;
    ppDBText502: TppDBText;
    ppDBText503: TppDBText;
    ppDBText504: TppDBText;
    ppDBText505: TppDBText;
    ppDBText506: TppDBText;
    ppDBText507: TppDBText;
    ppDBText508: TppDBText;
    ppDBText509: TppDBText;
    ppDBText510: TppDBText;
    ppDBText511: TppDBText;
    ppDBText512: TppDBText;
    ppDBText513: TppDBText;
    ppDBText514: TppDBText;
    ppDBText515: TppDBText;
    ppDBText516: TppDBText;
    ppLabel383: TppLabel;
    ppLabel384: TppLabel;
    ppLabel385: TppLabel;
    ppLabel386: TppLabel;
    ppDBText517: TppDBText;
    ppLabel387: TppLabel;
    ppDBText518: TppDBText;
    ppLabel388: TppLabel;
    ppDBText519: TppDBText;
    ppLabel389: TppLabel;
    ppLine83: TppLine;
    ppLabel390: TppLabel;
    ppRegion50: TppRegion;
    ppRegion51: TppRegion;
    ppRegion52: TppRegion;
    ppShape266: TppShape;
    ppShape267: TppShape;
    ppShape268: TppShape;
    ppLine84: TppLine;
    ppLabel391: TppLabel;
    ppLabel392: TppLabel;
    ppLabel393: TppLabel;
    ppLabel394: TppLabel;
    ppLabel395: TppLabel;
    ppShape269: TppShape;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppDetailBand9: TppDetailBand;
    ppRegion53: TppRegion;
    ppShape270: TppShape;
    ppDBText520: TppDBText;
    ppDBText521: TppDBText;
    ppDBText522: TppDBText;
    ppShape271: TppShape;
    ppShape272: TppShape;
    ppShape273: TppShape;
    ppShape274: TppShape;
    ppShape275: TppShape;
    ppShape276: TppShape;
    ppShape277: TppShape;
    ppShape278: TppShape;
    ppShape279: TppShape;
    ppDBText523: TppDBText;
    ppDBText524: TppDBText;
    ppDBText525: TppDBText;
    ppDBText526: TppDBText;
    ppDBText527: TppDBText;
    ppDBText528: TppDBText;
    ppDBText529: TppDBText;
    ppDBText530: TppDBText;
    ppDBText531: TppDBText;
    ppDBText532: TppDBText;
    ppDBText533: TppDBText;
    ppDBText534: TppDBText;
    ppDBText535: TppDBText;
    ppDBText536: TppDBText;
    ppDBText537: TppDBText;
    ppDBText538: TppDBText;
    ppDBText539: TppDBText;
    ppDBText540: TppDBText;
    ppDBText541: TppDBText;
    ppDBText542: TppDBText;
    ppFooterBand9: TppFooterBand;
    ppSummaryBand9: TppSummaryBand;
    ppRegion54: TppRegion;
    ppLabel396: TppLabel;
    ppMemo3: TppMemo;
    ppLabel397: TppLabel;
    ppLabel398: TppLabel;
    ppLabel399: TppLabel;
    ppReport10: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppLabel400: TppLabel;
    ppLabel401: TppLabel;
    ppDBText543: TppDBText;
    ppLabel402: TppLabel;
    ppDBText544: TppDBText;
    ppLabel403: TppLabel;
    ppDBText545: TppDBText;
    ppRegion55: TppRegion;
    ppShape280: TppShape;
    ppShape281: TppShape;
    ppShape282: TppShape;
    ppShape283: TppShape;
    ppShape284: TppShape;
    ppShape285: TppShape;
    ppShape286: TppShape;
    ppShape287: TppShape;
    ppShape288: TppShape;
    ppShape289: TppShape;
    ppLabel404: TppLabel;
    ppLabel405: TppLabel;
    ppLabel406: TppLabel;
    ppShape290: TppShape;
    ppLabel407: TppLabel;
    ppLabel408: TppLabel;
    ppLabel409: TppLabel;
    ppLabel410: TppLabel;
    ppLabel411: TppLabel;
    ppLabel412: TppLabel;
    ppLabel413: TppLabel;
    ppLabel414: TppLabel;
    ppLabel415: TppLabel;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLabel416: TppLabel;
    ppLabel417: TppLabel;
    ppLabel418: TppLabel;
    ppLabel419: TppLabel;
    ppLabel420: TppLabel;
    ppLabel421: TppLabel;
    ppDBText546: TppDBText;
    ppDBText547: TppDBText;
    ppDBText548: TppDBText;
    ppDBText549: TppDBText;
    ppDBText550: TppDBText;
    ppDBText551: TppDBText;
    ppDBText552: TppDBText;
    ppDBText553: TppDBText;
    ppDBText554: TppDBText;
    ppDBText555: TppDBText;
    ppDBText556: TppDBText;
    ppDBText557: TppDBText;
    ppDBText558: TppDBText;
    ppDBText559: TppDBText;
    ppDBText560: TppDBText;
    ppDBText561: TppDBText;
    ppDBText562: TppDBText;
    ppDBText563: TppDBText;
    ppDBText564: TppDBText;
    ppDBText565: TppDBText;
    ppDBText566: TppDBText;
    ppDBText567: TppDBText;
    ppDBText568: TppDBText;
    ppDBText569: TppDBText;
    ppDBText570: TppDBText;
    ppDBText571: TppDBText;
    ppDBText572: TppDBText;
    ppDBText573: TppDBText;
    ppDBText574: TppDBText;
    ppDBText575: TppDBText;
    ppDBText576: TppDBText;
    ppDBText577: TppDBText;
    ppLabel422: TppLabel;
    ppLabel423: TppLabel;
    ppLabel424: TppLabel;
    ppLine90: TppLine;
    ppLabel425: TppLabel;
    ppRegion56: TppRegion;
    ppLine91: TppLine;
    ppRegion57: TppRegion;
    ppRegion58: TppRegion;
    ppShape291: TppShape;
    ppShape292: TppShape;
    ppShape293: TppShape;
    ppLine92: TppLine;
    ppLabel426: TppLabel;
    ppLabel427: TppLabel;
    ppLabel428: TppLabel;
    ppLabel429: TppLabel;
    ppLabel430: TppLabel;
    ppShape294: TppShape;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppDetailBand10: TppDetailBand;
    ppRegion59: TppRegion;
    ppShape295: TppShape;
    ppDBText578: TppDBText;
    ldwz4: TppDBText;
    ppShape296: TppShape;
    ppShape297: TppShape;
    ppShape298: TppShape;
    ppShape299: TppShape;
    ppShape300: TppShape;
    ppShape301: TppShape;
    ppShape302: TppShape;
    ppShape303: TppShape;
    ppShape304: TppShape;
    ppDBText580: TppDBText;
    methd10: TppDBText;
    ppDBText582: TppDBText;
    ppDBText583: TppDBText;
    ppDBText584: TppDBText;
    ppDBText585: TppDBText;
    ppDBText586: TppDBText;
    ppDBText587: TppDBText;
    ppDBText588: TppDBText;
    ppDBText589: TppDBText;
    ppDBText590: TppDBText;
    ppDBText591: TppDBText;
    ppDBText592: TppDBText;
    ppDBText593: TppDBText;
    ppDBText594: TppDBText;
    ppDBText595: TppDBText;
    ppDBText596: TppDBText;
    ppDBText597: TppDBText;
    ppDBText598: TppDBText;
    ppFooterBand10: TppFooterBand;
    ppSummaryBand10: TppSummaryBand;
    ppRegion60: TppRegion;
    ppLabel431: TppLabel;
    ppMemo4: TppMemo;
    ppLabel432: TppLabel;
    ppLabel433: TppLabel;
    ppLabel434: TppLabel;
    ppMemo5: TppMemo;
    ppMemo6: TppMemo;
    ppMemo7: TppMemo;
    ppMemo8: TppMemo;
    ppMemo9: TppMemo;
    ppMemo10: TppMemo;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppRegion1: TppRegion;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppShape2: TppShape;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppLabel311: TppLabel;
    ppLabel312: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel129: TppLabel;
    ppLine12: TppLine;
    ppLabel308: TppLabel;
    ppRegion28: TppRegion;
    ppRegion30: TppRegion;
    ppShape60: TppShape;
    ppShape61: TppShape;
    ppShape62: TppShape;
    ppLine32: TppLine;
    ppLabel330: TppLabel;
    ppLabel331: TppLabel;
    ppLabel332: TppLabel;
    ppLabel333: TppLabel;
    ppLabel334: TppLabel;
    ppShape80: TppShape;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppDetailBand1: TppDetailBand;
    ppRegion2: TppRegion;
    ppShape12: TppShape;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    ppDBText19: TppDBText;
    ppDBText22: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText98: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppRegion3: TppRegion;
    ppLabel26: TppLabel;
    ppMemo1: TppMemo;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppReport11: TppReport;
    ppHeaderBand11: TppHeaderBand;
    ppRegion61: TppRegion;
    ppShape305: TppShape;
    ppShape306: TppShape;
    ppShape307: TppShape;
    ppShape308: TppShape;
    ppShape309: TppShape;
    ppShape310: TppShape;
    ppShape311: TppShape;
    ppShape312: TppShape;
    ppShape313: TppShape;
    ppShape314: TppShape;
    ppLabel435: TppLabel;
    ppLabel436: TppLabel;
    ppLabel437: TppLabel;
    ppShape315: TppShape;
    ppLabel438: TppLabel;
    ppLabel439: TppLabel;
    ppLabel440: TppLabel;
    ppLabel441: TppLabel;
    ppLabel442: TppLabel;
    ppLabel443: TppLabel;
    ppLabel444: TppLabel;
    ppLabel445: TppLabel;
    ppLabel446: TppLabel;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLabel447: TppLabel;
    ppLabel448: TppLabel;
    ppLabel449: TppLabel;
    ppLabel450: TppLabel;
    ppLabel451: TppLabel;
    ppLabel452: TppLabel;
    ppDBText207: TppDBText;
    ppDBText235: TppDBText;
    ppDBText301: TppDBText;
    ppDBText364: TppDBText;
    ppDBText425: TppDBText;
    ppDBText488: TppDBText;
    ppDBText579: TppDBText;
    ppDBText581: TppDBText;
    ppDBText599: TppDBText;
    ppDBText600: TppDBText;
    ppDBText601: TppDBText;
    ppDBText602: TppDBText;
    ppDBText603: TppDBText;
    ppDBText604: TppDBText;
    ppDBText605: TppDBText;
    ppDBText606: TppDBText;
    ppLabel453: TppLabel;
    ppLabel454: TppLabel;
    ppLabel455: TppLabel;
    ppLabel456: TppLabel;
    ppDBText623: TppDBText;
    ppLabel457: TppLabel;
    ppDBText624: TppDBText;
    ppLabel458: TppLabel;
    ppDBText625: TppDBText;
    ppLabel459: TppLabel;
    ppLine97: TppLine;
    ppLabel460: TppLabel;
    ppRegion62: TppRegion;
    ppRegion63: TppRegion;
    ppRegion64: TppRegion;
    ppShape316: TppShape;
    ppShape317: TppShape;
    ppShape318: TppShape;
    ppLine98: TppLine;
    ppLabel461: TppLabel;
    ppLabel462: TppLabel;
    ppLabel463: TppLabel;
    ppLabel464: TppLabel;
    ppLabel465: TppLabel;
    ppShape319: TppShape;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppDetailBand11: TppDetailBand;
    ppRegion65: TppRegion;
    ppShape320: TppShape;
    ppDBText626: TppDBText;
    ppDBText627: TppDBText;
    ppDBText628: TppDBText;
    ppShape321: TppShape;
    ppShape322: TppShape;
    ppShape323: TppShape;
    ppShape324: TppShape;
    ppShape325: TppShape;
    ppShape326: TppShape;
    ppShape327: TppShape;
    ppShape328: TppShape;
    ppShape329: TppShape;
    ppDBText629: TppDBText;
    ppDBText630: TppDBText;
    ppDBText631: TppDBText;
    ppDBText632: TppDBText;
    ppDBText633: TppDBText;
    ppDBText634: TppDBText;
    ppDBText635: TppDBText;
    ppDBText636: TppDBText;
    ppDBText637: TppDBText;
    ppDBText638: TppDBText;
    ppDBText639: TppDBText;
    ppDBText648: TppDBText;
    ppFooterBand11: TppFooterBand;
    ppSummaryBand11: TppSummaryBand;
    ppRegion66: TppRegion;
    ppLabel466: TppLabel;
    ppMemo11: TppMemo;
    ppLabel467: TppLabel;
    ppLabel468: TppLabel;
    ppLabel469: TppLabel;
    ppReport12: TppReport;
    ppHeaderBand12: TppHeaderBand;
    ppLabel470: TppLabel;
    ppLabel471: TppLabel;
    ppDBText607: TppDBText;
    ppLabel472: TppLabel;
    ppDBText608: TppDBText;
    ppLabel473: TppLabel;
    ppDBText609: TppDBText;
    ppRegion67: TppRegion;
    ppShape330: TppShape;
    ppShape331: TppShape;
    ppShape332: TppShape;
    ppShape333: TppShape;
    ppShape334: TppShape;
    ppShape335: TppShape;
    ppShape336: TppShape;
    ppShape337: TppShape;
    ppShape338: TppShape;
    ppShape339: TppShape;
    ppLabel474: TppLabel;
    ppLabel475: TppLabel;
    ppLabel476: TppLabel;
    ppShape340: TppShape;
    ppLabel477: TppLabel;
    ppLabel478: TppLabel;
    ppLabel479: TppLabel;
    ppLabel480: TppLabel;
    ppLabel481: TppLabel;
    ppLabel482: TppLabel;
    ppLabel483: TppLabel;
    ppLabel484: TppLabel;
    ppLabel485: TppLabel;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLabel486: TppLabel;
    ppLabel487: TppLabel;
    ppLabel488: TppLabel;
    ppLabel489: TppLabel;
    ppLabel490: TppLabel;
    ppLabel491: TppLabel;
    ppDBText610: TppDBText;
    ppDBText611: TppDBText;
    ppDBText612: TppDBText;
    ppDBText613: TppDBText;
    ppDBText614: TppDBText;
    ppDBText615: TppDBText;
    ppDBText616: TppDBText;
    ppDBText617: TppDBText;
    ppDBText618: TppDBText;
    ppDBText619: TppDBText;
    ppDBText620: TppDBText;
    ppDBText621: TppDBText;
    ppDBText622: TppDBText;
    ppDBText640: TppDBText;
    ppDBText641: TppDBText;
    ppDBText642: TppDBText;
    ppLabel492: TppLabel;
    ppLabel493: TppLabel;
    ppLabel494: TppLabel;
    ppLine104: TppLine;
    ppLabel495: TppLabel;
    ppRegion68: TppRegion;
    ppLine105: TppLine;
    ppRegion69: TppRegion;
    ppRegion70: TppRegion;
    ppShape341: TppShape;
    ppShape342: TppShape;
    ppShape343: TppShape;
    ppLine106: TppLine;
    ppLabel496: TppLabel;
    ppLabel497: TppLabel;
    ppLabel498: TppLabel;
    ppLabel499: TppLabel;
    ppLabel500: TppLabel;
    ppShape344: TppShape;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppDetailBand12: TppDetailBand;
    ppRegion71: TppRegion;
    ppShape345: TppShape;
    ppDBText660: TppDBText;
    method11: TppDBText;
    ppShape346: TppShape;
    ppShape347: TppShape;
    ppShape348: TppShape;
    ppShape349: TppShape;
    ppShape350: TppShape;
    ppShape351: TppShape;
    ppShape352: TppShape;
    ppShape353: TppShape;
    ppShape354: TppShape;
    ldwz5: TppDBText;
    ppDBText663: TppDBText;
    ppDBText664: TppDBText;
    ppDBText665: TppDBText;
    ppDBText666: TppDBText;
    ppDBText667: TppDBText;
    ppDBText668: TppDBText;
    ppDBText669: TppDBText;
    ppDBText670: TppDBText;
    ppDBText671: TppDBText;
    ppDBText672: TppDBText;
    ppFooterBand12: TppFooterBand;
    ppSummaryBand12: TppSummaryBand;
    ppRegion72: TppRegion;
    ppLabel501: TppLabel;
    ppMemo12: TppMemo;
    ppLabel502: TppLabel;
    ppLabel503: TppLabel;
    ppLabel504: TppLabel;
    ppLine109: TppLine;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppReport4PreviewFormCreate(Sender: TObject);
    procedure ppReport5PreviewFormCreate(Sender: TObject);
    procedure ppReport6PreviewFormCreate(Sender: TObject);
    procedure ppReport7PreviewFormCreate(Sender: TObject);
    procedure ppReport8PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppReport9PreviewFormCreate(Sender: TObject);
    procedure ppReport10PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand10BeforePrint(Sender: TObject);
    procedure ppSummaryBand9BeforePrint(Sender: TObject);
    procedure ppSummaryBand4BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppSummaryBand8BeforePrint(Sender: TObject);
    procedure ppSummaryBand5BeforePrint(Sender: TObject);
    procedure ppSummaryBand6BeforePrint(Sender: TObject);
    procedure ppSummaryBand7BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppSummaryBand11BeforePrint(Sender: TObject);
    procedure ppReport11PreviewFormCreate(Sender: TObject);
    procedure ppReport12PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand12BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprint1: Tfrmprint1;

implementation
uses siztblu, sampletblu;
{$R *.DFM}

procedure Tfrmprint1.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmprint1.FormDeactivate(Sender: TObject);
begin
  close;
end;

procedure Tfrmprint1.FormShow(Sender: TObject);
begin
  xx1.checked:=true;
  xx2.checked:=true;
end;

procedure Tfrmprint1.BitBtn1Click(Sender: TObject);
begin
 if radiogroup1.ItemIndex=0 then
 begin
  if xx1.checked=true then
  begin
    if xx2.checked=true then
    begin
      if label1.caption='siztbl' then
      begin
        query1.close;
        query1.sql.clear;
        query1.sql.add('select a.cdate,a.mdate,a.mem,b.*,c.* from lsize a,lsize1 b,lsize2 c where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno order by b.stylno,b.cde,b.id');
        query1.prepare;
        query1.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        query1.open;
        if query1.recordcount>0 then
        begin
          ppline12.visible:=false;
          pplabel129.Visible:=false;
          ppreport1.print;//中﹐英siztbl
          query3.close;
          query3.sql.clear;
          query3.sql.add('select size17,size33 from lsize2 where stylno=:stylno');
          query3.prepare;
          query3.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size17').isnull then
          begin
            ppline83.visible:=false;
            pplabel389.visible:=false;
            ppreport9.print; //中﹐英sizetbl
          end;
          if not query3.fieldbyname('size33').isnull then
          begin
            ppline97.visible:=false;
            pplabel459.visible:=false;
            ppreport11.print;//中﹐英sizetbl
          end;
        end;
      end
      else
      begin
        query2.close;
        query2.sql.clear;
        query2.sql.add('select a.custn,a.cstyl,a.projno,a.jobno,a.mdate,a.mem,a.cprov,a.pprov,b.*,c.* from sampsize a,sampsize1 b,sampsize2 c ');
        query2.sql.add('where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno order by b.stylno,b.cde,b.id');
        query2.prepare;
        query2.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        query2.open;
        if query2.recordcount>0 then
        begin
          ppline14.visible:=false;
          pplabel54.Visible:=false;
          ppreport2.print;////中﹐英sampletbl
          query3.close;
          query3.sql.clear;
          query3.sql.add('select size13,size25 from sampsize2 where stylno=:stylno');
          query3.prepare;
          query3.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size13').isnull then
          begin
            ppline18.visible:=false;
            pplabel138.visible:=false;
            ppreport5.print;//中﹐英sampletbl
            if not query3.fieldbyname('size25').isnull then
            begin
             ppline26.visible:=true;
             pplabel220.visible:=true;
             ppreport7.print;//中﹐英sampletbl
            end;
          end;
        end;
      end;
    end
    else
    begin
      if label1.caption='siztbl' then
      begin
        query1.close;
        query1.sql.clear;
        query1.sql.add('select a.cdate,a.mdate,a.mem,b.*,c.* from lsize a,lsize1 b,lsize2 c where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno order by b.stylno,b.cde,b.id');
        query1.prepare;
        query1.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        query1.open;
        if query1.recordcount>0 then
        begin
          ppline11.visible:=false;
          pplabel93.Visible:=false;
          ldwz.DataField:='cmeas';
          mthd3.datafield:='methd';
          ppreport3.print;//中sizetbl
          query3.close;
          query3.sql.clear;
          query3.sql.add('select size17,size33 from lsize2 where stylno=:stylno');
          query3.prepare;
          query3.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size17').isnull then
          begin
            ppline90.visible:=false;
            pplabel424.visible:=false;
            ldwz4.datafield:='cmeas';
            methd10.datafield:='methd';
            ppreport10.print;//中sizetbl
          end;
          if not query3.fieldbyname('size33').isnull then
          begin
            ppline104.visible:=false;
            pplabel494.visible:=false;
            ldwz5.datafield:='cmeas';
            method11.datafield:='methd';
            ppreport12.print;//中sizetbl
          end;
        end;
      end
      else
      begin
        query2.close;
        query2.sql.clear;
        query2.sql.add('select a.custn,a.cstyl,a.projno,a.jobno,a.mdate,a.mem,a.cprov,a.pprov,b.*,c.* from sampsize a,sampsize1 b,sampsize2 c ');
        query2.sql.add('where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno order by b.stylno,b.cde,b.id');
        query2.prepare;
        query2.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        query2.open;
        if query2.recordcount>0 then
        begin
          ppline13.visible:=false;
          pplabel98.Visible:=false;
          ldwz1.datafield:='cmeas';
          mthd4.datafield:='methd';
          ppreport4.print;//中sampletbl
          query3.close;
          query3.sql.clear;
          query3.sql.add('select size13,size25 from sampsize2 where stylno=:stylno');
          query3.prepare;
          query3.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size13').isnull then
          begin
            ppline22.visible:=false;
            pplabel179.visible:=false;
            ldwz2.datafield:='cmeas';
            mthd6.datafield:='methd';
            ppreport6.print;//中sampletbl
            if not query3.fieldbyname('size25').isnull then
            begin
             ppline30.visible:=true;
             pplabel261.visible:=true;
             ldwz3.datafield:='cmeas';
             mthd8.datafield:='methd';
             ppreport8.print;//中sampletbl
            end;
          end;
        end;
      end;
    end;
  end
  else
  begin
    if xx2.checked=true then
    begin
      if label1.caption='siztbl' then
      begin
        query1.close;
        query1.sql.clear;
        query1.sql.add('select a.cdate,a.mdate,a.mem,b.*,c.* from lsize a,lsize1 b,lsize2 c where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno order by b.stylno,b.cde,b.id');
        query1.prepare;
        query1.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        query1.open;
        if query1.recordcount>0 then
        begin
          ppline11.visible:=false;
          pplabel93.Visible:=false;
          ldwz.datafield:='emeas';
          mthd3.datafield:='emethd';
          ppreport3.print;////英﹐siztbl
          query3.close;
          query3.sql.clear;
          query3.sql.add('select size17,size33 from lsize2 where stylno=:stylno');
          query3.prepare;
          query3.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size17').isnull then
          begin
            ppline90.visible:=false;
            pplabel424.visible:=false;
            ldwz4.datafield:='emeas';
            methd10.datafield:='emethd';
            ppreport10.print;//英﹐siztbl
          end;
          if not query3.fieldbyname('size33').isnull then
          begin
            ppline104.visible:=false;
            pplabel494.visible:=false;
            ldwz5.datafield:='emeas';
            method11.datafield:='emethd';
            ppreport12.print;//英﹐siztbl
          end;
        end;
      end
      else
      begin
        query2.close;
        query2.sql.clear;
        query2.sql.add('select a.custn,a.cstyl,a.projno,a.jobno,a.mdate,a.mem,a.pprov,a.cprov,b.*,c.* from sampsize a,sampsize1 b,sampsize2 c ');
        query2.sql.add('where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno order by b.stylno,b.cde,b.id');
        query2.prepare;
        query2.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        query2.open;
        if query2.recordcount>0 then
        begin
          ppline13.visible:=false;
          pplabel98.Visible:=false;
          ldwz1.datafield:='emeas';
          mthd4.datafield:='emethd';
          ppreport4.print;//英﹐sampletbl
          query3.close;
          query3.sql.clear;
          query3.sql.add('select size13,size25 from sampsize2 where stylno=:stylno');
          query3.prepare;
          query3.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size13').isnull then
          begin
            ppline22.visible:=false;
            pplabel179.visible:=false;
            ldwz2.datafield:='emeas';
            mthd6.datafield:='emethd';
            ppreport6.print;//英﹐sampletbl
            if not query3.fieldbyname('size25').isnull then
            begin
             ppline30.visible:=false;
             pplabel261.visible:=false;
             ldwz3.datafield:='emeas';
             mthd8.datafield:='emethd';
             ppreport8.print;//英﹐sampletbl
            end;
          end;
        end;
      end;
    end;
  end;
 end
 else  //客戶
 begin
  if xx1.checked=true then
  begin
    if xx2.checked=true then
    begin
      if label1.caption='siztbl' then
      begin
        query1.close;
        query1.sql.clear;
        query1.sql.add('select a.cdate,a.mdate,a.mem,b.*,c.* from lsize a,lsize1 b,lsize2 c where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno and b.flg1=true order by b.stylno,b.cde,b.id');
        query1.prepare;
        query1.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        query1.open;
        if query1.recordcount>0 then
        begin
          ppline12.visible:=true;
          pplabel129.Visible:=true;
          ppreport1.print;
          query3.close;
          query3.sql.clear;
          query3.sql.add('select size17,size33 from lsize2 where stylno=:stylno');
          query3.prepare;
          query3.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size17').isnull then
          begin
            ppline83.visible:=true;
            pplabel389.visible:=true;
            ppreport9.print;//中﹐英siztbl
          end;
          if not query3.fieldbyname('size33').isnull then
          begin
            ppline97.visible:=true;
            pplabel459.visible:=true;
            ppreport11.print;//中﹐英siztbl
          end;
        end;
      end
      else
      begin
        query2.close;
        query2.sql.clear;
        query2.sql.add('select a.custn,a.cstyl,a.projno,a.jobno,a.mdate,a.mem,a.cprov,a.pprov,b.*,c.* from sampsize a,sampsize1 b,sampsize2 c ');
        query2.sql.add('where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno and b.kh=true order by b.stylno,b.cde,b.id');
        query2.prepare;
        query2.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        query2.open;
        if query2.recordcount>0 then
        begin
          ppline14.visible:=true;
          pplabel54.Visible:=true;
          ppreport2.print;//中﹐英sampletbl
          query3.close;
          query3.sql.clear;
          query3.sql.add('select size13,size25 from sampsize2 where stylno=:stylno');
          query3.prepare;
          query3.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size13').isnull then
          begin
            ppline18.visible:=true;
            pplabel138.visible:=true;
            ppreport5.print;//中﹐英sampletbl
            if not query3.fieldbyname('size25').isnull then
            begin
             ppline26.visible:=true;
             pplabel220.visible:=true;
             ppreport7.print;//中﹐英sampletbl
            end;
          end;
        end;
      end;
    end
    else
    begin
      if label1.caption='siztbl' then
      begin
        query1.close;
        query1.sql.clear;
        query1.sql.add('select a.cdate,a.mdate,a.mem,b.*,c.* from lsize a,lsize1 b,lsize2 c where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno and b.flg1=true order by b.stylno,b.cde,b.id');
        query1.prepare;
        query1.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        query1.open;
        if query1.recordcount>0 then
        begin
          ppline11.visible:=true;
          pplabel93.Visible:=true;
          ldwz.DataField:='cmeas';
          mthd3.datafield:='methd';
          ppreport3.print;//中siztbl
          query3.close;
          query3.sql.clear;
          query3.sql.add('select size17,size33 from lsize2 where stylno=:stylno');
          query3.prepare;
          query3.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size17').isnull then
          begin
            ppline90.visible:=true;
            pplabel424.visible:=true;
            ldwz4.datafield:='cmeas';
            methd10.datafield:='methd';
            ppreport10.print;//中siztbl
          end;
          if not query3.fieldbyname('size33').isnull then
          begin
            ppline104.visible:=true;
            pplabel494.visible:=true;
            ldwz5.datafield:='cmeas';
            method11.datafield:='methd';
            ppreport12.print;//中siztbl
          end;
        end;
      end
      else
      begin
        query2.close;
        query2.sql.clear;
        query2.sql.add('select a.custn,a.cstyl,a.projno,a.jobno,a.mdate,a.mem,a.cprov,a.pprov,b.*,c.* from sampsize a,sampsize1 b,sampsize2 c ');
        query2.sql.add('where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno and b.kh=true order by b.stylno,b.cde,b.id');
        query2.prepare;
        query2.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        query2.open;
        if query2.recordcount>0 then
        begin
          ppline13.visible:=true;
          pplabel98.Visible:=true;
          ldwz1.datafield:='cmeas';
          mthd4.datafield:='methd';
          ppreport4.print;//中sampletbl
          query3.close;
          query3.sql.clear;
          query3.sql.add('select size13,size25 from sampsize2 where stylno=:stylno');
          query3.prepare;
          query3.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size13').isnull then
          begin
            ppline22.visible:=true;
            pplabel179.visible:=true;
            ldwz2.datafield:='cmeas';
            mthd6.datafield:='methd';
            ppreport6.print;//中sampletbl
            if not query3.fieldbyname('size25').isnull then
            begin
             ppline30.visible:=true;
             pplabel261.visible:=true;
             ldwz3.datafield:='cmeas';
             mthd8.datafield:='methd';
             ppreport8.print;
            end;
          end;
        end;
      end;
    end;
  end
  else
  begin
    if xx2.checked=true then
    begin
      if label1.caption='siztbl' then
      begin
        query1.close;
        query1.sql.clear;
        query1.sql.add('select a.cdate,a.mdate,a.mem,b.*,c.* from lsize a,lsize1 b,lsize2 c where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno and b.flg1=true order by b.stylno,b.cde,b.id');
        query1.prepare;
        query1.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
        query1.open;
        if query1.recordcount>0 then
        begin
          ppline11.visible:=true;
          pplabel93.Visible:=true;
          ldwz.datafield:='emeas';
          mthd3.datafield:='emethd';
          ppreport3.print;//英siztbl
          query3.close;
          query3.sql.clear;
          query3.sql.add('select size17,size33 from lsize2 where stylno=:stylno');
          query3.prepare;
          query3.params[0].asstring:=frmsiztbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size17').isnull then
          begin
            ppline90.visible:=true;
            pplabel424.visible:=true;
            ldwz4.datafield:='emeas';
            methd10.datafield:='emethd';
            ppreport10.print;//英siztbl
          end;
          if not query3.fieldbyname('size33').isnull then
          begin
            ppline104.visible:=true;
            pplabel494.visible:=true;
            ldwz5.datafield:='emeas';
            method11.datafield:='emethd';
            ppreport12.print;//英siztbl
          end;
        end;
      end
      else
      begin
        query2.close;
        query2.sql.clear;
        query2.sql.add('select a.custn,a.cstyl,a.projno,a.jobno,a.mdate,a.mem,a.pprov,a.cprov,b.*,c.* from sampsize a,sampsize1 b,sampsize2 c ');
        query2.sql.add('where b.stylno=a.stylno and c.stylno=a.stylno and a.stylno=:stylno and b.kh=true order by b.stylno,b.cde,b.id');
        query2.prepare;
        query2.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
        query2.open;
        if query2.recordcount>0 then
        begin
          ppline13.visible:=true;
          pplabel98.Visible:=true;
          ldwz1.datafield:='emeas';
          mthd4.datafield:='emethd';
          ppreport4.print;//英sampletbl
          query3.close;
          query3.sql.clear;
          query3.sql.add('select size13,size25 from sampsize2 where stylno=:stylno');
          query3.prepare;
          query3.params[0].asstring:=frmsampletbl.table1.fieldbyname('stylno').value;
          query3.open;
          if not query3.fieldbyname('size13').isnull then
          begin
            ppline22.visible:=true;
            pplabel179.visible:=true;
            ldwz2.datafield:='emeas';
            mthd6.datafield:='emethd';
            ppreport6.print;//英sampletbl
            if not query3.fieldbyname('size25').isnull then
            begin
             ppline30.visible:=true;
             pplabel261.visible:=true;
             ldwz3.datafield:='emeas';
             mthd8.datafield:='emethd';
             ppreport8.print;//英sampletbl
            end;
          end;
        end;
      end;
    end;
  end;
 end;
end;

procedure Tfrmprint1.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmprint1.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppreport3.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport3.previewform.viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmprint1.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppreport2.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport2.previewform.viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmprint1.ppReport4PreviewFormCreate(Sender: TObject);
begin
  ppreport4.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport4.previewform.viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmprint1.ppReport5PreviewFormCreate(Sender: TObject);
begin
  ppreport5.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport5.previewform.viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmprint1.ppReport6PreviewFormCreate(Sender: TObject);
begin
  ppreport6.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport6.previewform.viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmprint1.ppReport7PreviewFormCreate(Sender: TObject);
begin
  ppreport7.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport7.previewform.viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmprint1.ppReport8PreviewFormCreate(Sender: TObject);
begin
  ppreport8.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport8.previewform.viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmprint1.ppSummaryBand1BeforePrint(Sender: TObject);
var
  i:integer;
begin
  ppmemo1.Lines.clear;
  for i:=0 to frmsiztbl.DBMemo1.Lines.Count-1 do
  begin
    if not (frmsiztbl.dbmemo1.lines[i]=null) then
    ppmemo1.Lines.add(frmsiztbl.dbmemo1.lines[i]);
  end;
end;

procedure Tfrmprint1.ppSummaryBand2BeforePrint(Sender: TObject);
var
  i:integer;
begin
  ppmemo2.Lines.clear;
  for i:=0 to frmsiztbl.DBMemo1.Lines.Count-1 do
  begin
    if not (frmsiztbl.dbmemo1.lines[i]=null) then
    ppmemo2.Lines.add(frmsiztbl.dbmemo1.lines[i]);
  end;
end;

procedure Tfrmprint1.ppReport9PreviewFormCreate(Sender: TObject);
begin
  ppreport9.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport9.previewform.viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmprint1.ppReport10PreviewFormCreate(Sender: TObject);
begin
  ppreport10.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport10.previewform.viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmprint1.ppSummaryBand10BeforePrint(Sender: TObject);
var
  i:integer;
begin
  ppmemo4.Lines.clear;
  for i:=0 to frmsiztbl.DBMemo1.Lines.Count-1 do
  begin
    if not (frmsiztbl.dbmemo1.lines[i]=null) then
    ppmemo4.Lines.add(frmsiztbl.dbmemo1.lines[i]);
  end;
end;

procedure Tfrmprint1.ppSummaryBand9BeforePrint(Sender: TObject);
var
  i:integer;
begin
  ppmemo3.Lines.clear;
  for i:=0 to frmsiztbl.DBMemo1.Lines.Count-1 do
  begin
    if not (frmsiztbl.dbmemo1.lines[i]=null) then
    ppmemo3.Lines.add(frmsiztbl.dbmemo1.lines[i]);
  end;
end;

procedure Tfrmprint1.ppSummaryBand4BeforePrint(Sender: TObject);
var
  i:integer;
begin
  ppmemo5.Lines.clear;
  for i:=0 to frmsampletbl.DBMemo1.Lines.Count-1 do
  begin
    if not (frmsampletbl.dbmemo1.lines[i]=null) then
    ppmemo5.Lines.add(frmsampletbl.dbmemo1.lines[i]);
  end;
end;

procedure Tfrmprint1.ppSummaryBand3BeforePrint(Sender: TObject);
var
  i:integer;
begin
  ppmemo6.Lines.clear;
  for i:=0 to frmsampletbl.DBMemo1.Lines.Count-1 do
  begin
    if not (frmsampletbl.dbmemo1.lines[i]=null) then
    ppmemo6.Lines.add(frmsampletbl.dbmemo1.lines[i]);
  end;
end;

procedure Tfrmprint1.ppSummaryBand8BeforePrint(Sender: TObject);
var
  i:integer;
begin
  ppmemo7.Lines.clear;
  for i:=0 to frmsampletbl.DBMemo1.Lines.Count-1 do
  begin
    if not (frmsampletbl.dbmemo1.lines[i]=null) then
    ppmemo7.Lines.add(frmsampletbl.dbmemo1.lines[i]);
  end;
end;

procedure Tfrmprint1.ppSummaryBand5BeforePrint(Sender: TObject);
var
  i:integer;
begin
  ppmemo8.Lines.clear;
  for i:=0 to frmsampletbl.DBMemo1.Lines.Count-1 do
  begin
    if not (frmsampletbl.dbmemo1.lines[i]=null) then
    ppmemo8.Lines.add(frmsampletbl.dbmemo1.lines[i]);
  end;
end;

procedure Tfrmprint1.ppSummaryBand6BeforePrint(Sender: TObject);
var
  i:integer;
begin
  ppmemo9.Lines.clear;
  for i:=0 to frmsampletbl.DBMemo1.Lines.Count-1 do
  begin
    if not (frmsampletbl.dbmemo1.lines[i]=null) then
    ppmemo9.Lines.add(frmsampletbl.dbmemo1.lines[i]);
  end;
end;

procedure Tfrmprint1.ppSummaryBand7BeforePrint(Sender: TObject);
var
  i:integer;
begin
  ppmemo10.Lines.clear;
  for i:=0 to frmsampletbl.DBMemo1.Lines.Count-1 do
  begin
    if not (frmsampletbl.dbmemo1.lines[i]=null) then
    ppmemo10.Lines.add(frmsampletbl.dbmemo1.lines[i]);
  end;
end;

procedure Tfrmprint1.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if length(ppdbtext13.text)>4 then ppdbtext13.font.size:=6 else ppdbtext13.font.size:=8;
  if length(ppdbtext16.text)>4 then ppdbtext16.font.size:=6 else ppdbtext16.font.size:=8;
  if length(ppdbtext19.text)>4 then ppdbtext19.font.size:=6 else ppdbtext19.font.size:=8;
  if length(ppdbtext22.text)>4 then ppdbtext22.font.size:=6 else ppdbtext22.font.size:=8;
  if length(ppdbtext47.text)>4 then ppdbtext47.font.size:=6 else ppdbtext47.font.size:=8;
  if length(ppdbtext48.text)>4 then ppdbtext48.font.size:=6 else ppdbtext48.font.size:=8;
  if length(ppdbtext49.text)>4 then ppdbtext49.font.size:=6 else ppdbtext49.font.size:=8;
  if length(ppdbtext50.text)>4 then ppdbtext50.font.size:=6 else ppdbtext50.font.size:=8;
  if length(ppdbtext51.text)>4 then ppdbtext51.font.size:=6 else ppdbtext51.font.size:=8;
  if length(ppdbtext52.text)>4 then ppdbtext52.font.size:=6 else ppdbtext52.font.size:=8;
  if length(ppdbtext53.text)>4 then ppdbtext53.font.size:=6 else ppdbtext53.font.size:=8;
  if length(ppdbtext54.text)>4 then ppdbtext54.font.size:=6 else ppdbtext54.font.size:=8;
  if length(ppdbtext55.text)>4 then ppdbtext55.font.size:=6 else ppdbtext55.font.size:=8;
  if length(ppdbtext56.text)>4 then ppdbtext56.font.size:=6 else ppdbtext56.font.size:=8;
  if length(ppdbtext57.text)>4 then ppdbtext57.font.size:=6 else ppdbtext57.font.size:=8;
  if length(ppdbtext58.text)>4 then ppdbtext58.font.size:=6 else ppdbtext58.font.size:=8;
end;

procedure Tfrmprint1.ppDetailBand3BeforePrint(Sender: TObject);
begin
  if length(ppdbtext100.text)>4 then ppdbtext100.font.size:=6 else ppdbtext100.font.size:=8;
  if length(ppdbtext101.text)>4 then ppdbtext101.font.size:=6 else ppdbtext101.font.size:=8;
  if length(ppdbtext102.text)>4 then ppdbtext102.font.size:=6 else ppdbtext102.font.size:=8;
  if length(ppdbtext103.text)>4 then ppdbtext103.font.size:=6 else ppdbtext103.font.size:=8;
  if length(ppdbtext104.text)>4 then ppdbtext104.font.size:=6 else ppdbtext104.font.size:=8;
  if length(ppdbtext105.text)>4 then ppdbtext105.font.size:=6 else ppdbtext105.font.size:=8;
  if length(ppdbtext106.text)>4 then ppdbtext106.font.size:=6 else ppdbtext106.font.size:=8;
  if length(ppdbtext107.text)>4 then ppdbtext107.font.size:=6 else ppdbtext107.font.size:=8;
  if length(ppdbtext108.text)>4 then ppdbtext108.font.size:=6 else ppdbtext108.font.size:=8;
  if length(ppdbtext109.text)>4 then ppdbtext109.font.size:=6 else ppdbtext109.font.size:=8;
  if length(ppdbtext110.text)>4 then ppdbtext110.font.size:=6 else ppdbtext110.font.size:=8;
  if length(ppdbtext111.text)>4 then ppdbtext111.font.size:=6 else ppdbtext111.font.size:=8;
  if length(ppdbtext112.text)>4 then ppdbtext112.font.size:=6 else ppdbtext112.font.size:=8;
  if length(ppdbtext113.text)>4 then ppdbtext113.font.size:=6 else ppdbtext113.font.size:=8;
  if length(ppdbtext114.text)>4 then ppdbtext114.font.size:=6 else ppdbtext114.font.size:=8;
  if length(ppdbtext115.text)>4 then ppdbtext115.font.size:=6 else ppdbtext115.font.size:=8;
end;

procedure Tfrmprint1.ppSummaryBand11BeforePrint(Sender: TObject);
var
  i:integer;
begin
  ppmemo11.Lines.clear;
  for i:=0 to frmsiztbl.DBMemo1.Lines.Count-1 do
  begin
    if not (frmsiztbl.dbmemo1.lines[i]=null) then
    ppmemo11.Lines.add(frmsiztbl.dbmemo1.lines[i]);
  end;
end;

procedure Tfrmprint1.ppReport11PreviewFormCreate(Sender: TObject);
begin
  ppreport11.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport11.previewform.viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmprint1.ppReport12PreviewFormCreate(Sender: TObject);
begin
  ppreport12.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport12.previewform.viewer).zoomsetting:=zs100percent;
end;

procedure Tfrmprint1.ppSummaryBand12BeforePrint(Sender: TObject);
var
  i:integer;
begin
  ppmemo12.Lines.clear;
  for i:=0 to frmsiztbl.DBMemo1.Lines.Count-1 do
  begin
    if not (frmsiztbl.dbmemo1.lines[i]=null) then
    ppmemo12.Lines.add(frmsiztbl.dbmemo1.lines[i]);
  end;
end;

end.
