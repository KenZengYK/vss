unit custstyleshvformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, GridsEh, DBGridEh, StdCtrls, Buttons, ppDB,
  ppComm, ppRelatv, ppDBPipe, ppCtrls, ppBands, ppClass, ppMemo, ppReport,
  ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppProd, ppViewr,
  Menus, ppParameter;

type
  Tfrmcuststyleshv = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1ARTNO: TStringField;
    Query1CSTYLE: TStringField;
    Query1SEQ: TIntegerField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Query3: TClientDataSet;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Query7: TClientDataSet;
    DataSource4: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    Query10: TClientDataSet;
    DataSource5: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    Query11: TClientDataSet;
    DataSource6: TDataSource;
    ppDBPipeline4: TppDBPipeline;
    ppDBPipeline4ppField1: TppField;
    ppDBPipeline4ppField2: TppField;
    ppDBPipeline4ppField3: TppField;
    ppDBPipeline4ppField4: TppField;
    ppDBPipeline4ppField5: TppField;
    ppDBPipeline4ppField6: TppField;
    ppDBPipeline4ppField7: TppField;
    ppDBPipeline4ppField8: TppField;
    Query12: TClientDataSet;
    DataSource7: TDataSource;
    ppDBPipeline5: TppDBPipeline;
    ppDBPipeline5ppField1: TppField;
    ppDBPipeline5ppField2: TppField;
    ppDBPipeline5ppField3: TppField;
    ppDBPipeline5ppField4: TppField;
    ppDBPipeline5ppField5: TppField;
    ppDBPipeline5ppField6: TppField;
    ppDBPipeline5ppField7: TppField;
    ppDBPipeline5ppField8: TppField;
    Query13: TClientDataSet;
    DataSource8: TDataSource;
    ppDBPipeline6: TppDBPipeline;
    Query14: TClientDataSet;
    DataSource9: TDataSource;
    ppDBPipeline7: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppReport6: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppLabel158: TppLabel;
    ppLabel173: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppLabel174: TppLabel;
    ppSystemVariable12: TppSystemVariable;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    cust001: TppLabel;
    ppLabel177: TppLabel;
    dt001: TppLabel;
    ppLabel178: TppLabel;
    dt002: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppShape10: TppShape;
    ppLabel181: TppLabel;
    ppLabel183: TppLabel;
    ppLabel185: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLine40: TppLine;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppLabel189: TppLabel;
    ppLine120: TppLine;
    ppLabel190: TppLabel;
    x501: TppLabel;
    ppLabel317: TppLabel;
    ppLabel318: TppLabel;
    ppLine121: TppLine;
    ppLabel319: TppLabel;
    ppLabel321: TppLabel;
    ppLine122: TppLine;
    ppLabel322: TppLabel;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLine126: TppLine;
    ppLabel368: TppLabel;
    fty001: TppLabel;
    ppLine181: TppLine;
    ppLabel385: TppLabel;
    ppLine184: TppLine;
    ppLine187: TppLine;
    ppLabel408: TppLabel;
    ppLine204: TppLine;
    ppLabel409: TppLabel;
    ppLabel411: TppLabel;
    ppLine199: TppLine;
    ppLabel320: TppLabel;
    ppLabel410: TppLabel;
    ppLabel431: TppLabel;
    ppLabel435: TppLabel;
    ppLine200: TppLine;
    ppLabel463: TppLabel;
    ppLabel464: TppLabel;
    ppLabel375: TppLabel;
    ppLine207: TppLine;
    ppLabel471: TppLabel;
    ppLine214: TppLine;
    ppLabel472: TppLabel;
    ppLabel473: TppLabel;
    ppLabel474: TppLabel;
    ppLabel475: TppLabel;
    ppLabel476: TppLabel;
    ppLine215: TppLine;
    ppLine41: TppLine;
    ppLabel182: TppLabel;
    ppLine281: TppLine;
    ppLabel352: TppLabel;
    ppLabel184: TppLabel;
    ppLabel360: TppLabel;
    ppLabel604: TppLabel;
    ppLabel640: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText269: TppDBText;
    ppDBText193: TppDBText;
    ppDBText194: TppDBText;
    ppDBText195: TppDBText;
    x502: TppLabel;
    x503: TppLabel;
    x504: TppLabel;
    ppDBText221: TppDBText;
    ppDBText238: TppDBText;
    ppDBText241: TppDBText;
    ppDBText270: TppDBText;
    ppDBText310: TppDBText;
    ppDBText311: TppDBText;
    s003: TppDBText;
    ppDBText313: TppDBText;
    ppDBText314: TppDBText;
    ppDBText315: TppDBText;
    ppDBText317: TppDBText;
    d003: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape22: TppShape;
    ppLabel333: TppLabel;
    ppLabel334: TppLabel;
    ppLine132: TppLine;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppLine138: TppLine;
    ppLine141: TppLine;
    ppLabel337: TppLabel;
    ppLabel338: TppLabel;
    ppLabel341: TppLabel;
    ppLabel342: TppLabel;
    ppLabel347: TppLabel;
    ppLine142: TppLine;
    ppLine143: TppLine;
    ppLabel349: TppLabel;
    ppLabel350: TppLabel;
    ppLabel351: TppLabel;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLabel353: TppLabel;
    ppLabel354: TppLabel;
    ppLabel355: TppLabel;
    ppHeaderBand9: TppHeaderBand;
    ppDetailBand9: TppDetailBand;
    ppShape23: TppShape;
    ppDBText203: TppDBText;
    ppDBText214: TppDBText;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLine155: TppLine;
    ppLine156: TppLine;
    ppLine157: TppLine;
    ppLine158: TppLine;
    ppLine159: TppLine;
    ppDBText215: TppDBText;
    ppDBText216: TppDBText;
    ppDBText217: TppDBText;
    ppDBText218: TppDBText;
    ppDBText219: TppDBText;
    ppLine160: TppLine;
    sz002: TppLabel;
    ppDBText312: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppMemo2: TppMemo;
    ppGroup28: TppGroup;
    ppGroupHeaderBand28: TppGroupHeaderBand;
    ppGroupFooterBand28: TppGroupFooterBand;
    ppSubReport8: TppSubReport;
    ppChildReport8: TppChildReport;
    ppTitleBand8: TppTitleBand;
    ppLabel336: TppLabel;
    ppHeaderBand15: TppHeaderBand;
    ppDetailBand16: TppDetailBand;
    ppDBText344: TppDBText;
    ppDBText351: TppDBText;
    ppDBText357: TppDBText;
    ppDBText358: TppDBText;
    ppDBText359: TppDBText;
    ppDBText360: TppDBText;
    ppDBText361: TppDBText;
    s043: TppDBText;
    ppDBText363: TppDBText;
    ppDBText364: TppDBText;
    ppDBText365: TppDBText;
    ppDBText366: TppDBText;
    ppDBText367: TppDBText;
    d043: TppDBText;
    ppSummaryBand13: TppSummaryBand;
    ppGroup21: TppGroup;
    ppGroupHeaderBand21: TppGroupHeaderBand;
    ppGroupFooterBand21: TppGroupFooterBand;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel365: TppLabel;
    ppHeaderBand11: TppHeaderBand;
    ppDetailBand11: TppDetailBand;
    ppDBText240: TppDBText;
    ppDBText244: TppDBText;
    ppDBText345: TppDBText;
    ppDBText346: TppDBText;
    ppDBText347: TppDBText;
    ppDBText348: TppDBText;
    ppDBText349: TppDBText;
    ppDBText350: TppDBText;
    s033: TppDBText;
    ppDBText352: TppDBText;
    ppDBText353: TppDBText;
    ppDBText354: TppDBText;
    ppDBText355: TppDBText;
    ppDBText356: TppDBText;
    d033: TppDBText;
    ppSummaryBand8: TppSummaryBand;
    ppGroup22: TppGroup;
    ppGroupHeaderBand22: TppGroupHeaderBand;
    ppGroupFooterBand22: TppGroupFooterBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel356: TppLabel;
    ppHeaderBand10: TppHeaderBand;
    ppDetailBand10: TppDetailBand;
    ppDBText220: TppDBText;
    ppDBText222: TppDBText;
    ppDBText223: TppDBText;
    ppDBText236: TppDBText;
    ppDBText332: TppDBText;
    ppDBText333: TppDBText;
    ppDBText334: TppDBText;
    ppDBText335: TppDBText;
    ppDBText336: TppDBText;
    ppDBText337: TppDBText;
    s023: TppDBText;
    ppDBText339: TppDBText;
    ppDBText340: TppDBText;
    ppDBText341: TppDBText;
    ppDBText342: TppDBText;
    ppDBText343: TppDBText;
    d023: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppGroup23: TppGroup;
    ppGroupHeaderBand23: TppGroupHeaderBand;
    ppGroupFooterBand23: TppGroupFooterBand;
    ppLine174: TppLine;
    ppLine175: TppLine;
    ppLabel384: TppLabel;
    ppSubReport5: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppLabel392: TppLabel;
    ppHeaderBand12: TppHeaderBand;
    ppDetailBand12: TppDetailBand;
    ppDBText237: TppDBText;
    ppDBText239: TppDBText;
    ppDBText319: TppDBText;
    ppDBText320: TppDBText;
    ppDBText321: TppDBText;
    ppDBText322: TppDBText;
    ppDBText323: TppDBText;
    ppDBText324: TppDBText;
    s013: TppDBText;
    ppDBText326: TppDBText;
    ppDBText327: TppDBText;
    ppDBText328: TppDBText;
    ppDBText329: TppDBText;
    ppDBText330: TppDBText;
    d013: TppDBText;
    ppSummaryBand9: TppSummaryBand;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppGroup18: TppGroup;
    ppGroupHeaderBand18: TppGroupHeaderBand;
    ppGroupFooterBand18: TppGroupFooterBand;
    ppGroup19: TppGroup;
    ppGroupHeaderBand19: TppGroupHeaderBand;
    ppGroupFooterBand19: TppGroupFooterBand;
    ppGroup20: TppGroup;
    ppGroupHeaderBand20: TppGroupHeaderBand;
    ppGroupFooterBand20: TppGroupFooterBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine2: TppLine;
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
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLine5: TppLine;
    ppLabel29: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine6: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppShape1: TppShape;
    ppLabel39: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine11: TppLine;
    ppLabel48: TppLabel;
    ppLine13: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLine14: TppLine;
    ppLabel51: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel52: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel53: TppLabel;
    ppLine22: TppLine;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine23: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLine24: TppLine;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLine25: TppLine;
    ppLabel66: TppLabel;
    ppLine26: TppLine;
    ppLabel67: TppLabel;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel68: TppLabel;
    ppLine29: TppLine;
    ppLine30: TppLine;
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
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLine33: TppLine;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLine34: TppLine;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLine35: TppLine;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppShape2: TppShape;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel71: TppLabel;
    ppLine37: TppLine;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLine38: TppLine;
    ppLabel116: TppLabel;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLabel117: TppLabel;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLabel118: TppLabel;
    ppLine48: TppLine;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLine49: TppLine;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLine50: TppLine;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLine51: TppLine;
    ppLabel131: TppLabel;
    ppLine52: TppLine;
    ppLabel132: TppLabel;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLabel133: TppLabel;
    ppLine55: TppLine;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLine56: TppLine;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel159: TppLabel;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLine59: TppLine;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLine60: TppLine;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel186: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel195: TppLabel;
    ppLine61: TppLine;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppShape3: TppShape;
    ppLabel47: TppLabel;
    ppLabel70: TppLabel;
    ppLabel130: TppLabel;
    ppLine36: TppLine;
    ppLine39: TppLine;
    ppLine63: TppLine;
    ppLabel202: TppLabel;
    ppLine65: TppLine;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLine66: TppLine;
    ppLabel205: TppLabel;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLabel206: TppLabel;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLabel207: TppLabel;
    ppLine74: TppLine;
    ppLabel208: TppLabel;
    ppLabel209: TppLabel;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    ppLine75: TppLine;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLine76: TppLine;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLine77: TppLine;
    ppLabel220: TppLabel;
    ppLine78: TppLine;
    ppLabel221: TppLabel;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLabel222: TppLabel;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
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
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppLabel251: TppLabel;
    ppLabel252: TppLabel;
    ppLabel253: TppLabel;
    ppLabel254: TppLabel;
    ppLine85: TppLine;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppLabel258: TppLabel;
    ppLine86: TppLine;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppLabel266: TppLabel;
    ppLine87: TppLine;
    ppLabel267: TppLabel;
    ppLabel268: TppLabel;
    ppLabel269: TppLabel;
    ppShape4: TppShape;
    ppLabel65: TppLabel;
    ppLabel225: TppLabel;
    ppLine89: TppLine;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppLine90: TppLine;
    ppLabel270: TppLabel;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLabel271: TppLabel;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLabel272: TppLabel;
    ppLine98: TppLine;
    ppLabel273: TppLabel;
    ppLabel274: TppLabel;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    ppLabel277: TppLabel;
    ppLine99: TppLine;
    ppLabel278: TppLabel;
    ppLabel279: TppLabel;
    ppLabel280: TppLabel;
    ppLabel281: TppLabel;
    ppLine100: TppLine;
    ppLabel282: TppLabel;
    ppLabel283: TppLabel;
    ppLine101: TppLine;
    ppLabel285: TppLabel;
    ppLine102: TppLine;
    ppLabel286: TppLabel;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLabel287: TppLabel;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppLabel300: TppLabel;
    ppLabel301: TppLabel;
    ppLabel302: TppLabel;
    ppLabel303: TppLabel;
    ppLabel304: TppLabel;
    ppLabel305: TppLabel;
    ppLabel306: TppLabel;
    ppLabel307: TppLabel;
    ppLabel308: TppLabel;
    ppLabel309: TppLabel;
    ppLabel310: TppLabel;
    ppLabel311: TppLabel;
    ppLabel312: TppLabel;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLabel313: TppLabel;
    ppLabel314: TppLabel;
    ppLabel315: TppLabel;
    ppLabel316: TppLabel;
    ppLabel323: TppLabel;
    ppLabel324: TppLabel;
    ppLabel325: TppLabel;
    ppLine109: TppLine;
    ppLabel326: TppLabel;
    ppLabel327: TppLabel;
    ppLabel328: TppLabel;
    ppLabel329: TppLabel;
    ppLine110: TppLine;
    ppLabel330: TppLabel;
    ppLabel331: TppLabel;
    ppLabel332: TppLabel;
    ppLabel335: TppLabel;
    ppLabel339: TppLabel;
    ppLabel340: TppLabel;
    ppLabel343: TppLabel;
    ppLabel344: TppLabel;
    ppLine111: TppLine;
    ppLabel345: TppLabel;
    ppLabel346: TppLabel;
    ppLabel348: TppLabel;
    ppLine42: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
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
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppLabel69: TppLabel;
    w001: TppLabel;
    w002: TppLabel;
    w003: TppLabel;
    w004: TppLabel;
    w005: TppLabel;
    w006: TppLabel;
    w007: TppLabel;
    w008: TppLabel;
    w009: TppLabel;
    w010: TppLabel;
    w011: TppLabel;
    w012: TppLabel;
    w013: TppLabel;
    w014: TppLabel;
    w016: TppLabel;
    w017: TppLabel;
    w018: TppLabel;
    w020: TppLabel;
    w021: TppLabel;
    w022: TppLabel;
    w023: TppLabel;
    ppLine62: TppLine;
    ppLine92: TppLine;
    ppLine128: TppLine;
    ppLine137: TppLine;
    ppLine147: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText10: TppDBText;
    ppLine64: TppLine;
    ppLabel134: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine88: TppLine;
    ppLine91: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText22: TppDBText;
    BitBtn8: TBitBtn;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    Query15: TClientDataSet;
    DataSource2: TDataSource;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    tplant001: TppLabel;
    ppLabel139: TppLabel;
    customer001: TppLabel;
    delivery001: TppLabel;
    ppLabel140: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel141: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel201: TppLabel;
    ppLabel219: TppLabel;
    ppShape11: TppShape;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape12: TppShape;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLabel223: TppLabel;
    ppLine114: TppLine;
    ppLabel224: TppLabel;
    ppLabel228: TppLabel;
    ppShape13: TppShape;
    ppLabel229: TppLabel;
    ppLabel230: TppLabel;
    ppLabel284: TppLabel;
    ppLine115: TppLine;
    ppLine127: TppLine;
    ppLabel290: TppLabel;
    ppLabel291: TppLabel;
    ppShape14: TppShape;
    ppLabel292: TppLabel;
    ppLabel293: TppLabel;
    ppLabel294: TppLabel;
    ppShape15: TppShape;
    ppLabel295: TppLabel;
    ppLabel357: TppLabel;
    ppLabel358: TppLabel;
    ppLabel359: TppLabel;
    ppLabel361: TppLabel;
    ppLine129: TppLine;
    ppShape16: TppShape;
    ppDBText34: TppDBText;
    ppDBText46: TppDBText;
    ppLabel362: TppLabel;
    ppDBText58: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppLine130: TppLine;
    ppLine131: TppLine;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppLabel364: TppLabel;
    ppDBText66: TppDBText;
    ppLine133: TppLine;
    ppLabel367: TppLabel;
    ppLabel369: TppLabel;
    ppDBText67: TppDBText;
    ppLine134: TppLine;
    ppLabel370: TppLabel;
    ppLabel371: TppLabel;
    ppLine139: TppLine;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppShape17: TppShape;
    ppLabel372: TppLabel;
    ppLabel373: TppLabel;
    ppLabel374: TppLabel;
    ppLabel376: TppLabel;
    ppLabel377: TppLabel;
    ppLabel378: TppLabel;
    ppDBText70: TppDBText;
    ppLabel379: TppLabel;
    ppLabel380: TppLabel;
    ppLabel382: TppLabel;
    ppLabel383: TppLabel;
    ppLabel386: TppLabel;
    ppLabel387: TppLabel;
    ppLabel388: TppLabel;
    ppLabel389: TppLabel;
    ppLabel390: TppLabel;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppShape18: TppShape;
    ppLabel391: TppLabel;
    ppLabel393: TppLabel;
    ppLabel394: TppLabel;
    ppLabel395: TppLabel;
    ppLabel396: TppLabel;
    ppLabel397: TppLabel;
    ppLabel399: TppLabel;
    ppLabel400: TppLabel;
    ppLabel401: TppLabel;
    ppLabel402: TppLabel;
    ppLabel403: TppLabel;
    ppLabel404: TppLabel;
    ppLabel405: TppLabel;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppShape20: TppShape;
    ppLabel424: TppLabel;
    ppLabel425: TppLabel;
    ppLabel426: TppLabel;
    ppLabel427: TppLabel;
    ppLabel428: TppLabel;
    ppLine140: TppLine;
    ppLine144: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppLabel429: TppLabel;
    ppLabel430: TppLabel;
    ppLabel432: TppLabel;
    ppLabel433: TppLabel;
    ppLabel434: TppLabel;
    ppLine150: TppLine;
    ppLabel436: TppLabel;
    ppLabel437: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine161: TppLine;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLine165: TppLine;
    gsd001: TppLabel;
    lb3001: TppLabel;
    lb6001: TppLabel;
    ppLine171: TppLine;
    ppLabel438: TppLabel;
    ppLabel439: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    gsd002: TppLabel;
    lb3002: TppLabel;
    lb6002: TppLabel;
    ppShape21: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppLine172: TppLine;
    ppLine173: TppLine;
    ppLine176: TppLine;
    ppLine177: TppLine;
    ppLine178: TppLine;
    ppLine179: TppLine;
    ppLine180: TppLine;
    ppLine182: TppLine;
    ppLine183: TppLine;
    ppLine186: TppLine;
    ppLine188: TppLine;
    ppLine192: TppLine;
    ppLine193: TppLine;
    ppLine194: TppLine;
    ppLine195: TppLine;
    ppLine196: TppLine;
    ppLine197: TppLine;
    ppLine198: TppLine;
    ppLine201: TppLine;
    w0001: TppLabel;
    ppDBText92: TppDBText;
    ppLabel441: TppLabel;
    ppLabel442: TppLabel;
    ppLine202: TppLine;
    ppLabel443: TppLabel;
    ppLabel444: TppLabel;
    ppLine203: TppLine;
    ppLine205: TppLine;
    ppLine206: TppLine;
    ppLabel406: TppLabel;
    ppLabel407: TppLabel;
    ppLine166: TppLine;
    ppLine167: TppLine;
    ppLabel412: TppLabel;
    ppLabel413: TppLabel;
    ppLabel414: TppLabel;
    ppLabel415: TppLabel;
    ppLabel416: TppLabel;
    ppLabel417: TppLabel;
    ppLabel418: TppLabel;
    ppLine168: TppLine;
    ppLine169: TppLine;
    ppLabel419: TppLabel;
    ppLabel420: TppLabel;
    ppLabel421: TppLabel;
    ppLabel422: TppLabel;
    ppLabel423: TppLabel;
    ppLabel451: TppLabel;
    ppLabel452: TppLabel;
    ppLabel453: TppLabel;
    ppLabel454: TppLabel;
    ppLabel455: TppLabel;
    ppLine190: TppLine;
    ppLabel456: TppLabel;
    ppLabel457: TppLabel;
    ppLine191: TppLine;
    ppLine208: TppLine;
    ppDBText82: TppDBText;
    lb1001: TppLabel;
    lb1002: TppLabel;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    eff001: TppLabel;
    eff002: TppLabel;
    ppDBPipeline1: TppDBPipeline;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel491: TppLabel;
    ppLabel507: TppLabel;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppLabel542: TppLabel;
    ppLabel543: TppLabel;
    ppLabel544: TppLabel;
    ppLabel545: TppLabel;
    ppLabel546: TppLabel;
    ppLine232: TppLine;
    ppLabel547: TppLabel;
    ppLabel548: TppLabel;
    ppLabel549: TppLabel;
    ppLabel550: TppLabel;
    ppLabel551: TppLabel;
    ppLine233: TppLine;
    ppLine234: TppLine;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    tq1: TppLabel;
    tq2: TppLabel;
    dif1: TppLabel;
    dif2: TppLabel;
    tq01: TppLabel;
    tq02: TppLabel;
    dif01: TppLabel;
    dif02: TppLabel;
    tq001: TppLabel;
    tq002: TppLabel;
    dif001: TppLabel;
    dif002: TppLabel;
    ppLine235: TppLine;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
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
    ppLine236: TppLine;
    ppLine237: TppLine;
    ppLine238: TppLine;
    ppLine239: TppLine;
    ppLine240: TppLine;
    ppLine241: TppLine;
    ppLine242: TppLine;
    ppLine243: TppLine;
    ppLine244: TppLine;
    ppLine245: TppLine;
    ppLine246: TppLine;
    ppLine247: TppLine;
    ppLine248: TppLine;
    ppLine249: TppLine;
    ppDBText117: TppDBText;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppDBText121: TppDBText;
    ppLine250: TppLine;
    ppLine251: TppLine;
    ppLine252: TppLine;
    ppLine253: TppLine;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppLabel552: TppLabel;
    ppLabel553: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    gsd003: TppLabel;
    lb3003: TppLabel;
    lb6003: TppLabel;
    lb1003: TppLabel;
    eff003: TppLabel;
    ppLine254: TppLine;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppLabel559: TppLabel;
    ppLabel560: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    gsd004: TppLabel;
    lb3004: TppLabel;
    lb6004: TppLabel;
    lb1004: TppLabel;
    eff004: TppLabel;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppLine255: TppLine;
    ppLine256: TppLine;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppLabel554: TppLabel;
    ppLine257: TppLine;
    ppLabel555: TppLabel;
    lbu001: TppLabel;
    lbu002: TppLabel;
    lbu003: TppLabel;
    ppShape31: TppShape;
    ppLine170: TppLine;
    ppLabel478: TppLabel;
    ppLabel479: TppLabel;
    ppLabel480: TppLabel;
    ppLabel481: TppLabel;
    ppLabel482: TppLabel;
    ppLine210: TppLine;
    lbu0001: TppLabel;
    lbu0002: TppLabel;
    lbu0003: TppLabel;
    ppLabel557: TppLabel;
    ppLabel558: TppLabel;
    ppLabel561: TppLabel;
    ppLabel445: TppLabel;
    ppLabel446: TppLabel;
    ppLabel562: TppLabel;
    ppLabel447: TppLabel;
    ppLabel448: TppLabel;
    ppLabel563: TppLabel;
    ppLabel449: TppLabel;
    ppLabel450: TppLabel;
    ppLabel564: TppLabel;
    PopupMenu1: TPopupMenu;
    SalesPeople1: TMenuItem;
    ProductionPeople1: TMenuItem;
    ppLabel571: TppLabel;
    ppLabel572: TppLabel;
    SalesPeoplev311: TMenuItem;
    ProductionPeoplev311: TMenuItem;
    ChangeTrackingv311: TMenuItem;
    gsd101: TppLabel;
    lgsd101: TppLabel;
    l3101: TppLabel;
    l6101: TppLabel;
    eff101: TppLabel;
    gsd102: TppLabel;
    lgsd102: TppLabel;
    l3102: TppLabel;
    l6102: TppLabel;
    eff102: TppLabel;
    gsd201: TppLabel;
    lgsd201: TppLabel;
    l3201: TppLabel;
    l6201: TppLabel;
    eff201: TppLabel;
    ppLabel575: TppLabel;
    ppLabel576: TppLabel;
    ppLabel577: TppLabel;
    ppLabel578: TppLabel;
    ppLabel579: TppLabel;
    ppLabel580: TppLabel;
    ppMemo1: TppMemo;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppMemo3: TppMemo;
    ppLine259: TppLine;
    ppLine260: TppLine;
    ppLabel288: TppLabel;
    ppLine261: TppLine;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppLabel289: TppLabel;
    ppLine185: TppLine;
    ppLabel363: TppLabel;
    ppLabel366: TppLabel;
    ppLabel381: TppLabel;
    ppLabel398: TppLabel;
    ppLabel440: TppLabel;
    ppLine189: TppLine;
    ppLine209: TppLine;
    ppLabel458: TppLabel;
    ppLabel459: TppLabel;
    ppLabel460: TppLabel;
    ppLabel461: TppLabel;
    ppLabel462: TppLabel;
    ppLabel465: TppLabel;
    ppLine262: TppLine;
    ppLine263: TppLine;
    ppLabel466: TppLabel;
    ppLine264: TppLine;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppLabel467: TppLabel;
    ppLabel468: TppLabel;
    ppLabel469: TppLabel;
    ppLabel470: TppLabel;
    ppLine265: TppLine;
    ppLine266: TppLine;
    ppLine267: TppLine;
    ppLabel477: TppLabel;
    ppLabel484: TppLabel;
    ppLabel486: TppLabel;
    ppLine268: TppLine;
    ppLabel499: TppLabel;
    ppLine269: TppLine;
    ppShape19: TppShape;
    ppShape27: TppShape;
    ppShape30: TppShape;
    ppLabel483: TppLabel;
    ppLine211: TppLine;
    ppLabel485: TppLabel;
    ppLabel487: TppLabel;
    ppLine212: TppLine;
    ppLabel488: TppLabel;
    ppLabel489: TppLabel;
    ppLine213: TppLine;
    ppLabel490: TppLabel;
    ppLabel492: TppLabel;
    ppLabel493: TppLabel;
    ppLabel494: TppLabel;
    ppLabel495: TppLabel;
    ppLabel496: TppLabel;
    ppLabel497: TppLabel;
    ppLabel498: TppLabel;
    ppLabel500: TppLabel;
    ppLabel501: TppLabel;
    ppLabel502: TppLabel;
    ppLabel503: TppLabel;
    ppLabel504: TppLabel;
    ppLabel505: TppLabel;
    ppLabel506: TppLabel;
    ppLabel508: TppLabel;
    ppLabel509: TppLabel;
    ppLabel510: TppLabel;
    ppLabel511: TppLabel;
    ppLabel512: TppLabel;
    ppLabel513: TppLabel;
    ppLabel514: TppLabel;
    ppLabel515: TppLabel;
    ppLabel516: TppLabel;
    ppLabel517: TppLabel;
    ppLabel518: TppLabel;
    ppLine216: TppLine;
    ppLine217: TppLine;
    ppLine218: TppLine;
    ppLine219: TppLine;
    ppLine220: TppLine;
    ppLine221: TppLine;
    ppLine222: TppLine;
    ppLine223: TppLine;
    ppLine224: TppLine;
    ppLine225: TppLine;
    ppLabel519: TppLabel;
    ppLabel520: TppLabel;
    ppLine226: TppLine;
    ppLine227: TppLine;
    ppLabel521: TppLabel;
    ppLabel522: TppLabel;
    ppLabel523: TppLabel;
    ppLabel524: TppLabel;
    ppLabel525: TppLabel;
    ppLabel526: TppLabel;
    ppLabel527: TppLabel;
    ppLine228: TppLine;
    ppLine229: TppLine;
    ppLabel528: TppLabel;
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
    ppLabel539: TppLabel;
    ppLine230: TppLine;
    ppLine231: TppLine;
    ppLine258: TppLine;
    ppLabel540: TppLabel;
    ppLabel541: TppLabel;
    ppLabel556: TppLabel;
    ppLabel565: TppLabel;
    ppLabel566: TppLabel;
    ppLine270: TppLine;
    ppLine271: TppLine;
    ppLine272: TppLine;
    ppLabel567: TppLabel;
    ppLabel568: TppLabel;
    ppLabel569: TppLabel;
    ppLine273: TppLine;
    ppLabel570: TppLabel;
    ppLine274: TppLine;
    ppLabel573: TppLabel;
    wf001: TppLabel;
    wf002: TppLabel;
    ppLabel574: TppLabel;
    ppLabel581: TppLabel;
    ppLabel582: TppLabel;
    ppLabel583: TppLabel;
    ppLabel584: TppLabel;
    ppLabel585: TppLabel;
    ppLabel31: TppLabel;
    ppLabel586: TppLabel;
    ppLabel587: TppLabel;
    ppLabel588: TppLabel;
    ppLabel589: TppLabel;
    ppLabel590: TppLabel;
    ppLabel591: TppLabel;
    ppLabel592: TppLabel;
    ppLabel593: TppLabel;
    ppLabel594: TppLabel;
    ppLabel595: TppLabel;
    ppLabel596: TppLabel;
    ppLabel597: TppLabel;
    ppLabel598: TppLabel;
    ppLabel599: TppLabel;
    ppLabel600: TppLabel;
    ppLabel603: TppLabel;
    ppLabel607: TppLabel;
    ppLabel610: TppLabel;
    ppLabel613: TppLabel;
    Query1LB4WF: TFloatField;
    Query1CUST: TStringField;
    Query1LBU: TFloatField;
    Query1LB63: TFloatField;
    Query1BSIZ: TStringField;
    Query1TPLANT: TStringField;
    chk1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Query1ARTNOSetText(Sender: TField; const Text: String);
    procedure Query1CSTYLESetText(Sender: TField; const Text: String);
    procedure Query1ARTNOChange(Sender: TField);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ppDetailBand6BeforePrint(Sender: TObject);
    procedure ppDetailBand11BeforePrint(Sender: TObject);
    procedure ppDetailBand10BeforePrint(Sender: TObject);
    procedure ppDetailBand12BeforePrint(Sender: TObject);
    procedure ppDetailBand16BeforePrint(Sender: TObject);
    procedure ppDetailBand9BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand23BeforePrint(Sender: TObject);
    procedure ppReport6PreviewFormCreate(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand5BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand4BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure SalesPeople1Click(Sender: TObject);
    procedure ProductionPeople1Click(Sender: TObject);
    procedure SalesPeoplev311Click(Sender: TObject);
    procedure ProductionPeoplev311Click(Sender: TObject);
    procedure ChangeTrackingv311Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcuststyleshv: Tfrmcuststyleshv;

implementation

uses mainformu, custformu, custstyleshv1formu;

{$R *.dfm}

procedure Tfrmcuststyleshv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmcuststyleshv1<>nil then frmcuststyleshv1:=nil;
  action:=cafree;
  frmcuststyleshv:=nil;
end;

procedure Tfrmcuststyleshv.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq from temp_prjbd_rpt1_style';
    open;
    if not fieldbyname('seq').isnull then seq:=fieldbyname('seq').value+1
    else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
  query1.fieldbyname('cust').value:=frmcustomer.ComboBox1.text;
end;

procedure Tfrmcuststyleshv.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from temp_prjbd_rpt1_style where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='update temp_prjbd_rpt1_style set artno=:x1,cstyle=:x2,cust=:x4,lb63=:x5 where seq=:x3';
          if not query1.fieldbyname('artno').isnull then
          params[0].asstring:=query1.fieldbyname('artno').value
          else params[0].asstring:='';
          if not query1.fieldbyname('cstyle').isnull then
          params[1].asstring:=query1.fieldbyname('cstyle').value
          else params[1].asstring:='';
          params[2].asstring:=query1.fieldbyname('cust').value;
          if not query1.fieldbyname('lb63').isnull then
          params[3].asfloat:=query1.fieldbyname('lb63').value
          else params[3].asfloat:=0;
          params[4].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftfloat,'x5',ptinput);
          commandtext:='insert into temp_prjbd_rpt1_style(artno,cstyle,seq,cust,lb63) values(:x1,:x2,:x3,:x4,:x5)';
          if not query1.fieldbyname('artno').isnull then
          params[0].asstring:=query1.fieldbyname('artno').value
          else params[0].asstring:='';
          if not query1.fieldbyname('cstyle').isnull then
          params[1].asstring:=query1.fieldbyname('cstyle').value
          else params[1].asstring:='';
          params[2].asinteger:=query1.fieldbyname('seq').value;
          params[3].asstring:=query1.fieldbyname('cust').value;
          if not query1.fieldbyname('lb63').isnull then
          params[4].asfloat:=query1.fieldbyname('lb63').value
          else params[4].asfloat:=0;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmcuststyleshv.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.setfocus;
  dbgrideh1.selectedindex:=0;
  query1.append;
end;

procedure Tfrmcuststyleshv.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from temp_prjbd_rpt1_style where cust='''+frmcustomer.combobox1.text+'''';
    open;
  end;
end;

procedure Tfrmcuststyleshv.BitBtn3Click(Sender: TObject);
begin
  if not dbgrideh1.fields[0].isnull then begin
    if application.messagebox('Delete all styles?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='delete from temp_prjbd_rpt1_style where cust='''+frmcustomer.combobox1.text+'''';
        execute;
      end;
      with query1 do begin
        close;
        params.clear;
        commandtext:='select * from temp_prjbd_rpt1_style';
        open;
      end;
    end;
  end;
end;

procedure Tfrmcuststyleshv.BitBtn2Click(Sender: TObject);
begin
  if not dbgrideh1.fields[0].isnull then begin
    if application.messagebox('Delete this style?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='delete from temp_prjbd_rpt1_style where seq=:x1';
        params[0].asinteger:=query1.fieldbyname('seq').value;
        execute;
      end;
      query1.delete;
    end;
  end;
end;

procedure Tfrmcuststyleshv.BitBtn4Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmcuststyleshv.Query1ARTNOSetText(Sender: TField;
  const Text: String);
begin
  query1.fieldbyname('artno').value:=uppercase(text);
end;

procedure Tfrmcuststyleshv.Query1CSTYLESetText(Sender: TField;
  const Text: String);
begin
  query1.fieldbyname('cstyle').value:=uppercase(text);
end;

procedure Tfrmcuststyleshv.Query1ARTNOChange(Sender: TField);
begin
  if not query1.fieldbyname('artno').isnull then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select cstyle from tblshedule where artno='''+query1.fieldbyname('artno').value+'''';
      open;
      if not fieldbyname('cstyle').isnull then query1.fieldbyname('cstyle').value:=fieldbyname('cstyle').value;
    end;
  end;
end;

procedure Tfrmcuststyleshv.BitBtn5Click(Sender: TObject);
{
var
  tm:tdatetime;
  dt1,dt2:tdate;
begin
  bitbtn4click(self);
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    if frmcustomer.DateEdit1.date>0 then dt1:=frmcustomer.DateEdit1.date
    else dt1:=encodedate(2005,1,1);
    if frmcustomer.DateEdit2.Date>0 then dt2:=frmcustomer.DateEdit2.date
    else dt2:=encodedate(2020,12,31);
  if (frmcustomer.combobox1.text>'') then begin
    if (frmcustomer.dateedit1.Date>0) and (frmcustomer.dateedit2.date>0) then begin
    with Query3 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure SP_GENTEMPPRJBD_RPT_STYLE_1(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      execute;
    end;
    with Query3 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_tempprjbd_style(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox1.text;
      params[3].asstring:=frmcustomer.combobox6.text;
      execute;
    end;
    tqty:=0;
    if frmcuststyleshv1=nil then frmcuststyleshv1:=tfrmcuststyleshv1.create(nil);
    with frmcuststyleshv1.query10 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_tempprjbd_clr order by flag,seq';
      open;
    end;
    with frmcuststyleshv1.query11 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_2_1(:x1,:x2,:x3,:x4) order by cust,flag6,lst2,lst2d';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      open;
    end;
    with frmcuststyleshv1.query14 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_4_1(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      open;
    end;
    with frmcuststyleshv1.query12 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_3_1(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      open;
    end;
      with frmcuststyleshv1.query13 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_1_1(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=frmcustomer.combobox6.text;
        params[3].asstring:=frmcustomer.combobox1.text;
        open;
      end;
      with frmcuststyleshv1.query7 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='select * from TEMP_PRJBD_RPT1 where cust=:x1';
        if frmcustomer.combobox6.text>'' then commandtext:=commandtext+' and tplant='''+frmcustomer.combobox6.text+''''
        else commandtext:=commandtext+' and tplant=''All''';
        commandtext:=commandtext+' order by cust,pstl52,ptyp,lst2,lst2d,flag6';
        params[0].asstring:=frmcustomer.combobox1.text;
        open;
        if not fieldbyname('cust').isnull then begin
          frmcuststyleshv1.pplabel180.Caption:=' / Product Category & Style dependent ';
          frmcuststyleshv1.cust001.Caption:=frmcustomer.combobox1.text;
          frmcuststyleshv1.dt001.Caption:=frmcustomer.dateedit1.Text;
          frmcuststyleshv1.dt002.Caption:=frmcustomer.dateedit2.Text;
          if frmcustomer.combobox6.text>'' then
          frmcuststyleshv1.fty001.Caption:=frmcustomer.combobox6.text
          else frmcuststyleshv1.fty001.Caption:='All';
          //frmcuststyleshv1.pplabel185.Caption:='Style# / Name';
          frmcuststyleshv1.pplabel175.Caption:='Version   3.1.0';
          //frmcuststyleshv1.pplabel175.Caption:='Version   2.6.0';
          frmcuststyleshv1.pplabel7.caption:='vs Line';
          frmcuststyleshv1.pplabel10.caption:='vs Line';
          frmcuststyleshv1.pplabel474.caption:='vs Line';
          frmcuststyleshv1.pplabel8.caption:='GSD';
          frmcuststyleshv1.pplabel11.caption:='GSD';
          frmcuststyleshv1.pplabel475.caption:='GSD';
          frmcuststyleshv1.pplabel78.caption:='vs Line';
          frmcuststyleshv1.pplabel81.caption:='vs Line';
          frmcuststyleshv1.pplabel111.caption:='vs Line';
          frmcuststyleshv1.pplabel79.caption:='GSD';
          frmcuststyleshv1.pplabel82.caption:='GSD';
          frmcuststyleshv1.pplabel110.caption:='GSD';
          frmcuststyleshv1.pplabel143.caption:='vs Line';
          frmcuststyleshv1.pplabel146.caption:='vs Line';
          frmcuststyleshv1.pplabel194.caption:='vs Line';
          frmcuststyleshv1.pplabel144.caption:='GSD';
          frmcuststyleshv1.pplabel147.caption:='GSD';
          frmcuststyleshv1.pplabel193.caption:='GSD';
          frmcuststyleshv1.pplabel232.caption:='vs Line';
          frmcuststyleshv1.pplabel235.caption:='vs Line';
          frmcuststyleshv1.pplabel265.caption:='vs Line';
          frmcuststyleshv1.pplabel233.caption:='GSD';
          frmcuststyleshv1.pplabel236.caption:='GSD';
          frmcuststyleshv1.pplabel264.caption:='GSD';
          frmcuststyleshv1.pplabel297.caption:='vs Line';
          frmcuststyleshv1.pplabel300.caption:='vs Line';
          frmcuststyleshv1.pplabel343.caption:='vs Line';
          frmcuststyleshv1.pplabel298.caption:='GSD';
          frmcuststyleshv1.pplabel301.caption:='GSD';
          frmcuststyleshv1.pplabel340.caption:='GSD';
          frmcuststyleshv1.ppReport6.Print;
        end;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
  }
begin
  salespeoplev311click(self);
end;

procedure Tfrmcuststyleshv.BitBtn6Click(Sender: TObject);
{
var
  tm:tdatetime;
  dt1,dt2:tdate;
begin
  bitbtn4click(self);
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    if frmcustomer.DateEdit1.date>0 then dt1:=frmcustomer.DateEdit1.date
    else dt1:=encodedate(2005,1,1);
    if frmcustomer.DateEdit2.Date>0 then dt2:=frmcustomer.DateEdit2.date
    else dt2:=encodedate(2020,12,31);
  if (frmcustomer.combobox1.text>'') then begin
    if (frmcustomer.dateedit1.Date>0) and (frmcustomer.dateedit2.date>0) then begin
    with Query3 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure SP_GENTEMPPRJBD_RPT_STYLE(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      execute;
    end;
    with Query3 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_tempprjbd_style(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox1.text;
      params[3].asstring:=frmcustomer.combobox6.text;
      execute;
    end;
    tqty:=0;
    with query10 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_tempprjbd_clr order by flag,seq';
      open;
    end;
    with query11 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_2(:x1,:x2,:x3,:x4) order by cust,flag6,lst2,lst2d';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      open;
    end;
    with query14 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_4(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      open;
    end;
    with query12 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_3(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      open;
    end;
      with query13 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_1(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=frmcustomer.combobox6.text;
        params[3].asstring:=frmcustomer.combobox1.text;
        open;
      end;
      with query7 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='select * from TEMP_PRJBD_RPT1 where cust=:x1';
        if frmcustomer.combobox6.text>'' then commandtext:=commandtext+' and tplant='''+frmcustomer.combobox6.text+''''
        else commandtext:=commandtext+' and tplant=''All''';
        commandtext:=commandtext+' order by cust,pstl52,ptyp,lst2,lst2d,flag6';
        params[0].asstring:=frmcustomer.combobox1.text;
        open;
        if not fieldbyname('cust').isnull then begin
          pplabel180.Caption:=' / Product Category & Style dependent ';
          cust001.Caption:=frmcustomer.combobox1.text;
          dt001.Caption:=frmcustomer.dateedit1.Text;
          dt002.Caption:=frmcustomer.dateedit2.Text;
          if frmcustomer.combobox6.text>'' then
          fty001.Caption:=frmcustomer.combobox6.text
          else fty001.Caption:='All';
          //pplabel185.Caption:='Name / Style#';
          pplabel175.Caption:='Version   3.1.0';
          //pplabel175.Caption:='Version   2.6.0';
          pplabel13.caption:='vs Line';
          pplabel16.caption:='vs Line';
          pplabel19.caption:='vs Line';
          pplabel7.caption:='vs Line';
          pplabel10.caption:='vs Line';
          pplabel474.caption:='vs Line';
          pplabel14.caption:='GSD';
          pplabel17.caption:='GSD';
          pplabel20.caption:='GSD';
          pplabel8.caption:='GSD';
          pplabel11.caption:='GSD';
          pplabel475.caption:='GSD';
          pplabel84.caption:='vs Line';
          pplabel87.caption:='vs Line';
          pplabel90.caption:='vs Line';
          pplabel78.caption:='vs Line';
          pplabel81.caption:='vs Line';
          pplabel111.caption:='vs Line';
          pplabel85.caption:='GSD';
          pplabel88.caption:='GSD';
          pplabel91.caption:='GSD';
          pplabel79.caption:='GSD';
          pplabel82.caption:='GSD';
          pplabel110.caption:='GSD';
          pplabel149.caption:='vs Line';
          pplabel152.caption:='vs Line';
          pplabel155.caption:='vs Line';
          pplabel143.caption:='vs Line';
          pplabel146.caption:='vs Line';
          pplabel194.caption:='vs Line';
          pplabel150.caption:='GSD';
          pplabel153.caption:='GSD';
          pplabel156.caption:='GSD';
          pplabel144.caption:='GSD';
          pplabel147.caption:='GSD';
          pplabel193.caption:='GSD';
          pplabel238.caption:='vs Line';
          pplabel241.caption:='vs Line';
          pplabel244.caption:='vs Line';
          pplabel232.caption:='vs Line';
          pplabel235.caption:='vs Line';
          pplabel265.caption:='vs Line';
          pplabel239.caption:='GSD';
          pplabel242.caption:='GSD';
          pplabel245.caption:='GSD';
          pplabel233.caption:='GSD';
          pplabel236.caption:='GSD';
          pplabel264.caption:='GSD';
          pplabel303.caption:='vs Line';
          pplabel306.caption:='vs Line';
          pplabel309.caption:='vs Line';
          pplabel297.caption:='vs Line';
          pplabel300.caption:='vs Line';
          pplabel343.caption:='vs Line';
          pplabel304.caption:='GSD';
          pplabel307.caption:='GSD';
          pplabel310.caption:='GSD';
          pplabel298.caption:='GSD';
          pplabel301.caption:='GSD';
          pplabel340.caption:='GSD';
          ppReport6.Print;
        end;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
  }
begin
  productionpeoplev311click(self);
end;

procedure Tfrmcuststyleshv.ppDetailBand6BeforePrint(Sender: TObject);
var
  pfit,xsz,sz:string;
  lmax,ttl:integer;
begin
  //key size on highest ratio
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    commandtext:='select * from sp_tempprj_shv_style(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
    params[0].asdate:=frmcustomer.dateedit1.Date;
    params[1].asdate:=frmcustomer.dateedit2.date;
    params[2].asstring:=frmcustomer.combobox6.text;
    params[3].asstring:=frmcustomer.combobox1.text;
    params[4].asstring:=query7.fieldbyname('lst2').value;
    params[5].asstring:=query7.fieldbyname('flag6').value;
    params[6].asstring:=query7.fieldbyname('pstl52').value;
    open;
    if not fieldbyname('qty').isnull then begin
      if fieldbyname('pfit').value>'' then
      x502.Caption:=fieldbyname('psize').value+fieldbyname('pfit').value//+'/'+fieldbyname('psize').value
      else x502.Caption:=fieldbyname('psize').value;
      //x503.Caption:=fieldbyname('qty').asstring;
      x504.Caption:=formatfloat('0.00%',fieldbyname('qty').value*100.00/fieldbyname('sewn').value);
      x503.Caption:=formatfloat('#0',fieldbyname('qty').value/fieldbyname('sewn').value*query7.fieldbyname('qty1').value);
      //x505.Caption:=fieldbyname('sewn').value;
    end else begin
      x502.Caption:='';
      x503.Caption:='0';
      x504.Caption:='0.00%';
      //x505.Caption:='0';
    end;
  end;
  {
  if query7.fieldbyname('sah3').value>query7.fieldbyname('sah4').value then s003.Font.Color:=clRed
  else if query7.fieldbyname('sah3').value<query7.fieldbyname('sah4').value then s003.Font.Color:=clGreen
  else s003.Font.Color:=clBlack;
  }
  if query7.fieldbyname('sah1').value>query7.fieldbyname('lb6shv').value then ppdbtext9.Font.Color:=clGreen
  else if query7.fieldbyname('sah1').value<query7.fieldbyname('lb6shv').value then ppdbtext9.Font.Color:=clRed
  else ppdbtext9.Font.Color:=clBlack;
  if query7.fieldbyname('eff3').value>100.00 then ppdbtext317.Font.color:=clGreen
  else if query7.fieldbyname('eff3').value<100.00 then ppdbtext317.Font.Color:=clRed
  else ppdbtext317.Font.Color:=clBlack;
  if query7.fieldbyname('diff').value>0 then d003.Font.Color:=clGreen
  else if query7.fieldbyname('diff').value<0 then d003.Font.Color:=clRed
  else d003.Font.Color:=clBlack;
end;

procedure Tfrmcuststyleshv.ppDetailBand11BeforePrint(Sender: TObject);
begin
  {
  if query12.fieldbyname('sah3').value>query12.fieldbyname('sah4').value then s033.Font.Color:=clRed
  else if query12.fieldbyname('sah3').value<query12.fieldbyname('sah4').value then s033.Font.Color:=clGreen
  else s033.Font.Color:=clBlack;
  }
  if query12.fieldbyname('sah1').value>query12.fieldbyname('lb6shv').value then ppdbtext45.Font.Color:=clGreen
  else if query12.fieldbyname('sah1').value<query12.fieldbyname('lb6shv').value then ppdbtext45.Font.Color:=clRed
  else ppdbtext45.Font.Color:=clBlack;
  if query12.fieldbyname('eff3').value>100.00 then ppdbtext356.Font.color:=clGreen
  else if query12.fieldbyname('eff3').value<100.00 then ppdbtext356.Font.Color:=clRed
  else ppdbtext356.Font.Color:=clBlack;
  if query12.fieldbyname('diff').value>0 then d033.Font.Color:=clGreen
  else if query12.fieldbyname('diff').value<0 then d033.Font.Color:=clRed
  else d033.Font.Color:=clBlack;
end;

procedure Tfrmcuststyleshv.ppDetailBand10BeforePrint(Sender: TObject);
begin
  {
  if query11.fieldbyname('sah3').value>query11.fieldbyname('sah4').value then s023.Font.Color:=clRed
  else if query11.fieldbyname('sah3').value<query11.fieldbyname('sah4').value then s023.Font.Color:=clGreen
  else s023.Font.Color:=clBlack;
  }
  if query11.fieldbyname('sah1').value>query11.fieldbyname('lb6shv').value then ppdbtext33.Font.Color:=clGreen
  else if query11.fieldbyname('sah1').value<query11.fieldbyname('lb6shv').value then ppdbtext33.Font.Color:=clRed
  else ppdbtext33.Font.Color:=clBlack;
  if query11.fieldbyname('eff3').value>100.00 then ppdbtext343.Font.color:=clGreen
  else if query11.fieldbyname('eff3').value<100.00 then ppdbtext343.Font.Color:=clRed
  else ppdbtext343.Font.Color:=clBlack;
  if query11.fieldbyname('diff').value>0 then d023.Font.Color:=clGreen
  else if query11.fieldbyname('diff').value<0 then d023.Font.Color:=clRed
  else d023.Font.Color:=clBlack;
end;

procedure Tfrmcuststyleshv.ppDetailBand12BeforePrint(Sender: TObject);
begin
  {
  if query13.fieldbyname('sah3').value>query13.fieldbyname('sah4').value then s013.Font.Color:=clRed
  else if query13.fieldbyname('sah3').value<query13.fieldbyname('sah4').value then s013.Font.Color:=clGreen
  else s013.Font.Color:=clBlack;
  }
  if query13.fieldbyname('sah1').value>query13.fieldbyname('lb6shv').value then ppdbtext20.Font.Color:=clGreen
  else if query13.fieldbyname('sah1').value<query13.fieldbyname('lb6shv').value then ppdbtext20.Font.Color:=clRed
  else ppdbtext20.Font.Color:=clBlack;
  if query13.fieldbyname('eff3').value>100.00 then ppdbtext330.Font.color:=clGreen
  else if query13.fieldbyname('eff3').value<100.00 then ppdbtext330.Font.Color:=clRed
  else ppdbtext330.Font.Color:=clBlack;
  if query13.fieldbyname('diff').value>0 then d013.Font.Color:=clGreen
  else if query13.fieldbyname('diff').value<0 then d013.Font.Color:=clRed
  else d013.Font.Color:=clBlack;
end;

procedure Tfrmcuststyleshv.ppDetailBand16BeforePrint(Sender: TObject);
begin
  {
  if query14.fieldbyname('sah3').value>query14.fieldbyname('sah4').value then s043.Font.Color:=clRed
  else if query14.fieldbyname('sah3').value<query14.fieldbyname('sah4').value then s043.Font.Color:=clGreen
  else s043.Font.Color:=clBlack;
  }
  if query14.fieldbyname('sah1').value>query14.fieldbyname('lb6shv').value then ppdbtext57.Font.Color:=clGreen
  else if query14.fieldbyname('sah1').value<query14.fieldbyname('lb6shv').value then ppdbtext57.Font.Color:=clRed
  else ppdbtext57.Font.Color:=clBlack;
  if query14.fieldbyname('eff3').value>100.00 then ppdbtext367.Font.color:=clGreen
  else if query14.fieldbyname('eff3').value<100.00 then ppdbtext367.Font.Color:=clRed
  else ppdbtext367.Font.Color:=clBlack;
  if query14.fieldbyname('diff').value>0 then d043.Font.Color:=clGreen
  else if query14.fieldbyname('diff').value<0 then d043.Font.Color:=clRed
  else d043.Font.Color:=clBlack;
end;

procedure Tfrmcuststyleshv.ppDetailBand9BeforePrint(Sender: TObject);
begin
  if query10.fieldbyname('seq').value=9 then sz002.Caption:='dual'
  else sz002.Caption:='single';
end;

procedure Tfrmcuststyleshv.ppGroupFooterBand23BeforePrint(Sender: TObject);
begin
  w001.Caption:=''; w002.Caption:=''; w003.Caption:=''; w004.Caption:=''; w005.Caption:='';
  w006.Caption:=''; w007.Caption:=''; w008.Caption:=''; w009.Caption:=''; w010.Caption:='';
  w011.Caption:=''; w012.Caption:=''; w013.Caption:=''; w014.Caption:='';
  w016.Caption:=''; w017.Caption:=''; w018.Caption:=''; w020.Caption:='';
  w021.Caption:=''; w022.Caption:=''; w023.Caption:='';
  w0001.Caption:='';
  with query3 do begin
    close;
    params.clear;
    commandtext:='select sum(sah0*qty1)/sum(qty1) as x1,sum(lb3wf*qty1)/sum(qty1) as x2,'
                +'sum(lbu*qty1)/sum(qty1) as x3,sum(sah1*qty1)/sum(qty1) as x4,sum(sah4*qty1)/sum(qty1) as x5,'
                +'sum(lb4wf*qty1)/sum(qty1) as x6,sum(lflag*qty1)/sum(qty1) as x7,sum(lb4shv*qty2)/sum(qty2) as x8,'
                +'sum(sah2*qty1)/sum(qty1) as x9,sum(lb5wf*qty1)/sum(qty1) as x10,sum(lb5shv*qty2)/sum(qty2) as x11,'
                +'sum(sah3*qty1)/sum(qty1) as x12,sum(lb6wf*qty1)/sum(qty1) as x13,sum(lb6shv*qty2)/sum(qty2) as x14,'
                +'sum(eff2*qty2)/sum(qty2) as x15,sum(eff4*qty2)/sum(qty2) as x16,sum(eff0*qty2)/sum(qty2) as x17,'
                +'sum(eff1*qty2)/sum(qty2) as x18,sum(lb65*qty1)/sum(qty1) as x19,sum(lb43*qty1)/sum(qty1) as x20,'
                +'sum(lb53*qty1)/sum(qty1) as x21,sum(eff3*qty2)/sum(qty2) as x22,sum(diff*qty1)/sum(qty1) as x23,sum(gsd*qty1)/sum(qty1) as x24 '
                +'from temp_prjbd_rpt1';
    open;
    if not fieldbyname('x24').isnull then w001.Caption:=formatfloat('#0.0000',fieldbyname('x24').value);
    if not fieldbyname('x2').isnull then w002.Caption:=formatfloat('#0.0',fieldbyname('x2').value);
    if not fieldbyname('x3').isnull then w003.Caption:=formatfloat('#0.00',fieldbyname('x3').value);
    if not fieldbyname('x4').isnull then w004.Caption:=formatfloat('#0.0000',fieldbyname('x4').value);
    if not fieldbyname('x5').isnull then w005.Caption:=formatfloat('#0.0000',fieldbyname('x5').value);
    if not fieldbyname('x6').isnull then w006.Caption:=formatfloat('#0.0',fieldbyname('x6').value);
    if not fieldbyname('x7').isnull then w007.Caption:=formatfloat('#0.0',fieldbyname('x7').value);
    if not fieldbyname('x8').isnull then w008.Caption:=formatfloat('#0.0000',fieldbyname('x8').value);
    if not fieldbyname('x9').isnull then w009.Caption:=formatfloat('#0.0000',fieldbyname('x9').value);
    if not fieldbyname('x10').isnull then w010.Caption:=formatfloat('#0.0',fieldbyname('x10').value);
    if not fieldbyname('x11').isnull then w011.Caption:=formatfloat('#0.0000',fieldbyname('x11').value);
    if not fieldbyname('x12').isnull then w012.Caption:=formatfloat('#0.0000',fieldbyname('x12').value);
    if not fieldbyname('x13').isnull then w013.Caption:=formatfloat('#0.0',fieldbyname('x13').value);
    if not fieldbyname('x14').isnull then w014.Caption:=formatfloat('#0.0000',fieldbyname('x14').value);
    if not fieldbyname('x16').isnull then w016.Caption:=formatfloat('#0.00',fieldbyname('x16').value);
    if not fieldbyname('x17').isnull then w017.Caption:=formatfloat('#0.00',fieldbyname('x17').value);
    if not fieldbyname('x18').isnull then w018.Caption:=formatfloat('#0.00',fieldbyname('x18').value);
    //if not fieldbyname('x19').isnull then w019.Caption:=formatfloat('#0.00',fieldbyname('x19').value);
    if not fieldbyname('x20').isnull then w020.Caption:=formatfloat('#0.00',fieldbyname('x20').value);
    if not fieldbyname('x21').isnull then w021.Caption:=formatfloat('#0.00',fieldbyname('x21').value);
    if not fieldbyname('x22').isnull then w022.Caption:=formatfloat('#0.00',fieldbyname('x22').value);
    if not fieldbyname('x23').isnull then begin
      w023.Caption:=formatfloat('#0.0',fieldbyname('x23').value);
      if fieldbyname('x23').value>0 then w023.Font.Color:=clGreen
      else if fieldbyname('x23').value<0 then w023.Font.Color:=clRed
      else w023.Font.Color:=clBlack;
    end;
    if fieldbyname('x4').value>fieldbyname('x14').value then w014.Font.Color:=clGreen
    else if fieldbyname('x4').value<fieldbyname('x14').value then w014.Font.Color:=clRed
    else w014.Font.Color:=clBlack;
    if fieldbyname('x22').value>100.00 then w022.font.Color:=clGreen
    else if fieldbyname('x22').value<100.00 then w022.Font.Color:=clRed
    else w022.Font.Color:=clBlack;
    if not fieldbyname('x1').isnull then w0001.Caption:=formatfloat('0.0000',fieldbyname('x1').value);
  end;
end;

procedure Tfrmcuststyleshv.ppReport6PreviewFormCreate(Sender: TObject);
begin
  ppReport6.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport6.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcuststyleshv.BitBtn7Click(Sender: TObject);
begin
  ChangeTrackingv311Click(self);
{
var
  tm:tdatetime;
begin
  tm:=now;
  try
    screen.Cursor:=crSQLWait;
    with query2 do begin
      close;
      params.Clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftdatetime,'x5',ptinput);
      commandtext:='Execute PROCEDURE SP_GEN_TEMPPRJBDTRACKING(:x1,:x2,:x3,:x4,:x5)';
      params[0].asstring:=frmcustomer.ComboBox6.text;
      params[1].asstring:=frmcustomer.ComboBox1.text;
      params[2].asdate:=frmcustomer.dateedit1.date;
      params[3].asdate:=frmcustomer.dateedit2.date;
      params[4].asdatetime:=tm;
      execute;
    end;
    with query15 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from temp_prjbd_tracking where tm=:x1 order by seq,cls2,cls1,brand';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        tplant001.Caption:=frmcustomer.ComboBox6.Text;
        customer001.Caption:=frmcustomer.ComboBox1.Text;
        delivery001.Caption:='Delivery Date from '+formatdatetime('yyyy/MM/dd',frmcustomer.DateEdit1.date)+' to '+formatdatetime('yyyy/MM/dd',frmcustomer.DateEdit2.date);
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          commandtext:='select * from temp_prjbd_tracking where tm=:x1 and fdt3 is not null';
          params[0].asdatetime:=tm;
          open;
          if fieldbyname('tm').isnull then ppSummaryBand1.Visible:=false else ppSummaryBand1.Visible:=true;
        end;
        pplabel219.caption:='3.0.0';
        pplabel416.caption:='LB3';
        pplabel423.caption:='LB3';
        pplabel455.caption:='LB3';
        pplabel527.caption:='LB3';
        pplabel534.caption:='LB3';
        pplabel539.caption:='LB3';
        ppReport1.Print;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
  }
end;

procedure Tfrmcuststyleshv.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcuststyleshv.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if query15.fieldbyname('qty1').value>query15.fieldbyname('qty2').value then
    ppDBText65.Font.Color:=clRed
  else if query15.fieldbyname('qty1').value<query15.fieldbyname('qty2').value then
    ppDBText65.Font.Color:=clGreen
  else ppDBText65.Font.Color:=clBlack;
  if query15.fieldbyname('lb3').value>query15.fieldbyname('lb6').value then
    ppDBText69.Font.Color:=clGreen
  else if query15.fieldbyname('lb3').value<query15.fieldbyname('lb6').value then
    ppDBText69.Font.Color:=clRed
  else ppDBText69.Font.Color:=clBlack;
  if query15.fieldbyname('fqty12').value<query15.fieldbyname('fqty11').value then
    ppDBText72.Font.Color:=clRed
  else if query15.fieldbyname('fqty12').value>query15.fieldbyname('fqty11').value then
    ppDBText72.Font.Color:=clGreen
  else ppDBText72.Font.Color:=clBlack;
  //ppDBText75 lb61 <lb62 green >lb62 red else black
  if not query15.fieldbyname('flb62').isnull then begin
    if (query15.fieldbyname('flb61').value>0.0001) and (query15.fieldbyname('flb62').value>0.0001) then begin
      if query15.fieldbyname('flb61').value<query15.fieldbyname('flb62').value then
        ppDBText75.Font.Color:=clGreen
      else if query15.fieldbyname('flb61').value>query15.fieldbyname('flb62').value then
        ppDBText75.Font.Color:=clRed
      else ppDBText75.Font.Color:=clBlack;
    end else ppDBText75.Font.Color:=clBlack;
  end else ppDBText75.Font.Color:=clBlack;
  if query15.fieldbyname('fqty22').value<query15.fieldbyname('fqty21').value then
    ppDBText78.Font.Color:=clRed
  else if query15.fieldbyname('fqty22').value>query15.fieldbyname('fqty21').value then
    ppDBText78.Font.Color:=clGreen
  else ppDBText78.Font.Color:=clBlack;
  //ppDBText81 lb62 <lb63 green >lb63 red else black
  if not query15.fieldbyname('flb63').isnull then begin
    if (query15.fieldbyname('flb62').value>0.0001) and (query15.fieldbyname('flb63').value>0.0001) then begin
      if query15.fieldbyname('flb62').value<query15.fieldbyname('flb63').value then
        ppDBText81.Font.Color:=clGreen
      else if query15.fieldbyname('flb62').value>query15.fieldbyname('flb63').value then
        ppDBText81.Font.Color:=clRed
      else ppDBText81.Font.Color:=clBlack;
    end else ppDBText81.Font.Color:=clBlack;
  end else ppDBText81.Font.Color:=clBlack;
  tq1.caption:=inttostr(query15.fieldbyname('fqty11').value+query15.fieldbyname('fqty21').value);
  tq2.Caption:=inttostr(query15.fieldbyname('fqty12').value+query15.fieldbyname('fqty22').value);
  dif1.Caption:=inttostr(query15.fieldbyname('qty1').value-(query15.fieldbyname('fqty11').value+query15.fieldbyname('fqty21').value));
  dif2.Caption:=inttostr(query15.fieldbyname('qty2').value-(query15.fieldbyname('fqty12').value+query15.fieldbyname('fqty22').value));
  if not query15.fieldbyname('lb1').isnull then lbu001.Caption:=formatfloat('0.00',query15.fieldbyname('lb1').value*100.00/query15.fieldbyname('lb3').value)
  else lbu001.Caption:='0.00';
end;

procedure Tfrmcuststyleshv.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(gsd*qty1)/sum(qty1) as gsd,sum(lb1*qty1)/sum(qty1) as lb1,sum(lb3*qty1)/sum(qty1) as lb3,'
                +'sum(lb6*qty2)/sum(qty2) as lb6,sum(eff*qty2)/sum(qty2) as eff,sum(qty1) as x1,sum(qty2) as x2,sum(fqty11+fqty21) as x3,sum(fqty12+fqty22) as x4,'
                +'sum(fgsd1*qty1)/sum(qty1) as x5,sum(flb11*qty1)/sum(qty1) as x6,sum(flb31*qty1)/sum(qty1) as x7,sum(flb61*qty2)/sum(qty2) as x8,'
                +'sum(feff1*qty2)/sum(qty2) as x9,sum(fgsd2*qty1)/sum(qty1) as x10,sum(flb12*qty1)/sum(qty1) as x11,sum(flb32*qty1)/sum(qty1) as x12,'
                +'sum(flb62*qty2)/sum(qty2) as x13,sum(feff2*qty2)/sum(qty2) as x14,sum(wf*qty1)/sum(qty1) as x15 '
                +'from temp_prjbd_tracking where tm=:x1 and seq=:x2 and qty2>0';
    params[0].asdatetime:=query15.fieldbyname('tm').value;
    params[1].asinteger:=query15.fieldbyname('seq').value;
    open;
    if not fieldbyname('gsd').isnull then gsd001.Caption:=formatfloat('0.0000',fieldbyname('gsd').value)
    else gsd001.Caption:='0.0000';
    if not fieldbyname('lb3').isnull then lb3001.Caption:=formatfloat('0.0000',fieldbyname('lb3').value)
    else lb3001.Caption:='0.0000';
    if not fieldbyname('lb6').isnull then lb6001.Caption:=formatfloat('0.0000',fieldbyname('lb6').value)
    else lb6001.Caption:='0.0000';
    if not fieldbyname('lb1').isnull then lb1001.Caption:=formatfloat('0.0000',fieldbyname('lb1').value)
    else lb1001.Caption:='0.0000';
    if not fieldbyname('eff').isnull then eff001.Caption:=formatfloat('0.00',fieldbyname('eff').value)
    else eff001.Caption:='0.00';
    tq01.Caption:=fieldbyname('x3').asstring;
    tq02.Caption:=fieldbyname('x4').AsString;
    dif01.Caption:=inttostr(fieldbyname('x1').value-fieldbyname('x3').value);
    dif02.Caption:=inttostr(fieldbyname('x2').value-fieldbyname('x4').value);
    if fieldbyname('lb6').value>fieldbyname('lb3').value then lb6001.Font.Color:=clRed
    else if fieldbyname('lb6').value<fieldbyname('lb3').value then lb6001.Font.Color:=clGreen
    else lb6001.Font.Color:=clBlack;
    if not fieldbyname('lb1').isnull then lbu002.Caption:=formatfloat('0.00',fieldbyname('lb1').value*100.00/fieldbyname('lb3').value)
    else lbu002.Caption:='0.00';
    if not fieldbyname('x5').isnull then gsd101.Caption:=formatfloat('0.0000',fieldbyname('x5').value) else gsd101.Caption:='0.0000';
    if not fieldbyname('x6').isnull then lgsd101.Caption:=formatfloat('0.0000',fieldbyname('x6').value) else lgsd101.Caption:='0.0000';
    if not fieldbyname('x7').isnull then l3101.Caption:=formatfloat('0.0000',fieldbyname('x7').value) else l3101.Caption:='0.0000';
    if not fieldbyname('x8').isnull then l6101.Caption:=formatfloat('0.0000',fieldbyname('x8').value) else l6101.Caption:='0.0000';
    if not fieldbyname('x9').isnull then eff101.Caption:=formatfloat('0.00',fieldbyname('x9').value) else eff101.Caption:='0.00';
    if not fieldbyname('x10').isnull then gsd102.Caption:=formatfloat('0.0000;-0.0000;''''',fieldbyname('x10').value) else gsd102.Caption:='';
    if not fieldbyname('x11').isnull then lgsd102.Caption:=formatfloat('0.0000;-0.0000;''''',fieldbyname('x11').value) else lgsd102.Caption:='';
    if not fieldbyname('x12').isnull then l3102.Caption:=formatfloat('0.0000;-0.0000;''''',fieldbyname('x12').value) else l3102.Caption:='';
    if not fieldbyname('x13').isnull then l6102.Caption:=formatfloat('0.0000;-0.0000;''''',fieldbyname('x13').value) else l6102.Caption:='';
    if not fieldbyname('x14').isnull then eff102.Caption:=formatfloat('0.00;-0.00;''''',fieldbyname('x14').value) else eff102.Caption:='';
    if not fieldbyname('x15').isnull then wf001.caption:=formatfloat('0.0',fieldbyname('x15').value) else wf001.Caption:='0.0';
  end;
  if ppDBCalc1.Value>ppDBCalc2.Value then ppDBCalc2.Font.Color:=clRed
  else ppDBCalc2.Font.Color:=clBlack;
  if ppDBCalc3.Value>ppDBCalc4.Value then ppDBCalc4.Font.Color:=clRed
  else ppDBCalc4.Font.Color:=clBlack;
  if ppDBCalc5.Value>ppDBCalc6.Value then ppDBCalc6.Font.Color:=clRed
  else ppDBCalc6.Font.Color:=clBlack;
  if ppDBCalc7.Value>ppDBCalc8.Value then ppDBCalc8.Font.Color:=clRed
  else ppDBCalc8.Font.Color:=clBlack;
  //wf001
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftdate,'x5',ptinput);
    params.createparam(ftdate,'x6',ptinput);
    commandtext:='select sum(a.lstrs*a.scqty)/sum(a.scqty) as x0 from tblshedule a,line_shjs b,temp_prjbd_style1 c,tbl_erpordn d '
                +'where a.pline=b.pline and a.seq=b.seq and b.flag=''0'' and a.tplant=c.tplant and a.artno=c.artno and a.acol=c.acol and a.cstyle=c.cstyle '
                +'and substr(a.j_no,1,4)=c.cust and a.tplant=:x1 and a.artno=:x2 and a.cstyle=:x3 and c.cls=:x4 '
                +'and a.sopno=d.ordn55 and a.ordline=d.ordl55 and a.acol=d.pcol55 and d.dtdr55>=:x5 and d.dtdr55<=:x6';
    params[0].asstring:=query15.fieldbyname('tplant').value;
    params[1].asstring:=query15.fieldbyname('artno').value;
    params[2].asstring:=query15.fieldbyname('cstyle').value;
    params[3].asstring:=query15.fieldbyname('cls2').value;
    params[4].asdate:=frmcustomer.DateEdit1.date;
    params[5].asdate:=frmcustomer.DateEdit2.date;
    open;
    if not fieldbyname('x0').isnull then wf001.Caption:=formatfloat('0.0',fieldbyname('x0').value)
    else wf001.Caption:='0.0';
  end;
  }
end;

procedure Tfrmcuststyleshv.ppGroupFooterBand3BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(gsd*qty1)/sum(qty1) as gsd,sum(lb1*qty1)/sum(qty1) as lb1,sum(lb3*qty1)/sum(qty1) as lb3,'
                +'sum(lb6*qty2)/sum(qty2) as lb6,sum(eff*qty2)/sum(qty2) as eff,sum(qty1) as x1,sum(qty2) as x2,sum(fqty11+fqty21) as x3,sum(fqty12+fqty22) as x4 '
                +'from temp_prjbd_tracking where tm=:x1';
    params[0].asdatetime:=query15.fieldbyname('tm').value;
    open;
    if not fieldbyname('gsd').isnull then gsd002.Caption:=formatfloat('0.0000',fieldbyname('gsd').value)
    else gsd002.Caption:='0.0000';
    if not fieldbyname('lb3').isnull then lb3002.Caption:=formatfloat('0.0000',fieldbyname('lb3').value)
    else lb3002.Caption:='0.0000';
    if not fieldbyname('lb6').isnull then lb6002.Caption:=formatfloat('0.0000',fieldbyname('lb6').value)
    else lb6002.Caption:='0.0000';
    if not fieldbyname('lb1').isnull then lb1002.Caption:=formatfloat('0.0000',fieldbyname('lb1').value)
    else lb1002.Caption:='0.0000';
    if not fieldbyname('eff').isnull then eff002.Caption:=formatfloat('0.00',fieldbyname('eff').value)
    else eff002.Caption:='0.00';
    tq001.Caption:=fieldbyname('x3').asstring;
    tq002.Caption:=fieldbyname('x4').AsString;
    if fieldbyname('x3').value>fieldbyname('x4').value then tq002.Font.Color:=clRed
    else tq002.Font.Color:=clBlack;
    dif001.Caption:=inttostr(fieldbyname('x1').value-fieldbyname('x3').value);
    dif002.Caption:=inttostr(fieldbyname('x2').value-fieldbyname('x4').value);
    if fieldbyname('lb6').value>fieldbyname('lb3').value then lb6002.Font.Color:=clRed
    else if fieldbyname('lb6').value<fieldbyname('lb3').value then lb6002.Font.Color:=clGreen
    else lb6002.Font.Color:=clBlack;
    if not fieldbyname('lb1').isnull then lbu003.Caption:=formatfloat('0.00',fieldbyname('lb1').value*100.00/fieldbyname('lb3').value)
    else lbu003.Caption:='0.00';
  end;
  if ppDBCalc13.Value>ppDBCalc14.Value then ppDBCalc14.Font.Color:=clRed
  else ppDBCalc14.Font.Color:=clBlack;
  if ppDBCalc15.Value>ppDBCalc16.Value then ppDBCalc16.Font.Color:=clRed
  else ppDBCalc16.Font.Color:=clBlack;
  if ppDBCalc17.Value>ppDBCalc18.Value then ppDBCalc18.Font.Color:=clRed
  else ppDBCalc18.Font.Color:=clBlack;
  if ppDBCalc19.Value>ppDBCalc20.Value then ppDBCalc20.Font.Color:=clRed
  else ppDBCalc20.Font.Color:=clBlack;
end;

procedure Tfrmcuststyleshv.ppGroupFooterBand5BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(gsd*qty1)/sum(qty1) as gsd,sum(lb1*qty1)/sum(qty1) as lb1,sum(lb3*qty1)/sum(qty1) as lb3,'
                +'sum(lb6*qty2)/sum(qty2) as lb6,sum(eff*qty2)/sum(qty2) as eff,'
                +'sum(fgsd3*qty1)/sum(qty1) as x5,sum(flb13*qty1)/sum(qty1) as x6,sum(flb33*qty1)/sum(qty1) as x7,sum(flb63*qty2)/sum(qty2) as x8,'
                +'sum(feff3*qty2)/sum(qty2) as x9,sum(wf*qty1)/sum(qty1) as x10 '
                +'from temp_prjbd_tracking where tm=:x1 and seq=:x2 and qty2>0';
    params[0].asdatetime:=query15.fieldbyname('tm').value;
    params[1].asinteger:=query15.fieldbyname('seq').value;
    open;
    if not fieldbyname('gsd').isnull then gsd003.Caption:=formatfloat('0.0000',fieldbyname('gsd').value)
    else gsd003.Caption:='0.0000';
    if not fieldbyname('lb3').isnull then lb3003.Caption:=formatfloat('0.0000',fieldbyname('lb3').value)
    else lb3003.Caption:='0.0000';
    if not fieldbyname('lb6').isnull then lb6003.Caption:=formatfloat('0.0000',fieldbyname('lb6').value)
    else lb6003.Caption:='0.0000';
    if not fieldbyname('lb1').isnull then lb1003.Caption:=formatfloat('0.0000',fieldbyname('lb1').value)
    else lb1003.Caption:='0.0000';
    if not fieldbyname('eff').isnull then eff003.Caption:=formatfloat('0.00',fieldbyname('eff').value)
    else eff003.Caption:='0.00';
    if not fieldbyname('lb1').isnull then lbu0002.Caption:=formatfloat('0.00',fieldbyname('lb1').value*100.00/fieldbyname('lb3').value)
    else lbu0002.Caption:='0.00';
    if not fieldbyname('x5').isnull then gsd201.Caption:=formatfloat('0.0000;-0.0000;''''',fieldbyname('x5').value) else gsd201.Caption:='';
    if not fieldbyname('x6').isnull then lgsd201.Caption:=formatfloat('0.0000;-0.0000;''''',fieldbyname('x6').value) else lgsd201.Caption:='';
    if not fieldbyname('x7').isnull then l3201.Caption:=formatfloat('0.0000;-0.0000;''''',fieldbyname('x7').value) else l3201.Caption:='';
    if not fieldbyname('x8').isnull then l6201.Caption:=formatfloat('0.0000;-0.0000;''''',fieldbyname('x8').value) else l6201.Caption:='';
    if not fieldbyname('x9').isnull then eff201.Caption:=formatfloat('0.00;-0.00;''''',fieldbyname('x9').value) else eff201.Caption:='';
    if not fieldbyname('x10').isnull then wf002.Caption:=formatfloat('0.0',fieldbyname('x10').value) else wf002.Caption:='0.0';
  end;
  if ppDBCalc5.Value>ppDBCalc6.Value then ppDBCalc6.Font.Color:=clRed
  else ppDBCalc6.Font.Color:=clBlack;
  if ppDBCalc9.Value>ppDBCalc10.Value then ppDBCalc10.Font.Color:=clRed
  else ppDBCalc10.Font.Color:=clBlack;
  //wf002
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftdate,'x5',ptinput);
    params.createparam(ftdate,'x6',ptinput);
    commandtext:='select sum(a.lstrs*a.scqty)/sum(a.scqty) as x0 from tblshedule a,line_shjs b,temp_prjbd_style1 c,tbl_erpordn d '
                +'where a.pline=b.pline and a.seq=b.seq and b.flag=''0'' and a.tplant=c.tplant and a.artno=c.artno and a.acol=c.acol and a.cstyle=c.cstyle '
                +'and substr(a.j_no,1,4)=c.cust and a.tplant=:x1 and a.artno=:x2 and a.cstyle=:x3 and c.cls=:x4 '
                +'and a.sopno=d.ordn55 and a.ordline=d.ordl55 and a.acol=d.pcol55 and d.dtdr55>=:x5 and d.dtdr55<=:x6';
    params[0].asstring:=query15.fieldbyname('tplant').value;
    params[1].asstring:=query15.fieldbyname('artno').value;
    params[2].asstring:=query15.fieldbyname('cstyle').value;
    params[3].asstring:=query15.fieldbyname('cls2').value;
    params[4].asdate:=frmcustomer.DateEdit1.date;
    params[5].asdate:=frmcustomer.DateEdit2.date;
    open;
    if not fieldbyname('x0').isnull then wf002.Caption:=formatfloat('0.0',fieldbyname('x0').value)
    else wf002.Caption:='0.0';
  end;
  }
end;

procedure Tfrmcuststyleshv.ppGroupFooterBand4BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(gsd*qty1)/sum(qty1) as gsd,sum(lb1*qty1)/sum(qty1) as lb1,sum(lb3*qty1)/sum(qty1) as lb3,'
                +'sum(lb6*qty2)/sum(qty2) as lb6,sum(eff*qty2)/sum(qty2) as eff '
                +'from temp_prjbd_tracking where tm=:x1';
    params[0].asdatetime:=query15.fieldbyname('tm').value;
    open;
    if not fieldbyname('gsd').isnull then gsd004.Caption:=formatfloat('0.0000',fieldbyname('gsd').value)
    else gsd004.Caption:='0.0000';
    if not fieldbyname('lb3').isnull then lb3004.Caption:=formatfloat('0.0000',fieldbyname('lb3').value)
    else lb3004.Caption:='0.0000';
    if not fieldbyname('lb6').isnull then lb6004.Caption:=formatfloat('0.0000',fieldbyname('lb6').value)
    else lb6004.Caption:='0.0000';
    if not fieldbyname('lb1').isnull then lb1004.Caption:=formatfloat('0.0000',fieldbyname('lb1').value)
    else lb1004.Caption:='0.0000';
    if not fieldbyname('eff').isnull then eff004.Caption:=formatfloat('0.00',fieldbyname('eff').value)
    else eff004.Caption:='0.00';
    if not fieldbyname('lb1').isnull then lbu0003.Caption:=formatfloat('0.00',fieldbyname('lb1').value*100.00/fieldbyname('lb3').value)
    else lbu0003.Caption:='0.00';
  end;
  if ppDBCalc11.Value>ppDBCalc12.Value then ppDBCalc12.Font.Color:=clRed
  else ppDBCalc12.Font.Color:=clBlack;
  if ppDBCalc17.Value>ppDBCalc18.Value then ppDBCalc18.Font.Color:=clRed
  else ppDBCalc18.Font.Color:=clBlack;
  if ppDBCalc25.Value>ppDBCalc26.Value then ppDBCalc26.Font.Color:=clRed
  else ppDBCalc26.Font.Color:=clBlack;
end;

procedure Tfrmcuststyleshv.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if not query15.fieldbyname('lb1').isnull then lbu0001.Caption:=formatfloat('0.00',query15.fieldbyname('lb1').value*100.00/query15.fieldbyname('lb3').value)
  else lbu0001.Caption:='0.00';
end;

procedure Tfrmcuststyleshv.SalesPeople1Click(Sender: TObject);
var
  tm:tdatetime;
  dt1,dt2:tdate;
begin
  bitbtn4click(self);
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    if frmcustomer.DateEdit1.date>0 then dt1:=frmcustomer.DateEdit1.date
    else dt1:=encodedate(2005,1,1);
    if frmcustomer.DateEdit2.Date>0 then dt2:=frmcustomer.DateEdit2.date
    else dt2:=encodedate(2020,12,31);
  if (frmcustomer.combobox1.text>'') then begin
    if (frmcustomer.dateedit1.Date>0) and (frmcustomer.dateedit2.date>0) then begin
    with Query3 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure SP_GENTEMPPRJBD_RPT_STYLE_1_spe(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      execute;
    end;
    with Query3 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_tempprjbd_style(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox1.text;
      params[3].asstring:=frmcustomer.combobox6.text;
      execute;
    end;
    tqty:=0;
    if frmcuststyleshv1=nil then frmcuststyleshv1:=tfrmcuststyleshv1.create(nil);
    with frmcuststyleshv1.query10 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_tempprjbd_clr order by flag,seq';
      open;
    end;
    with frmcuststyleshv1.query11 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_2_1(:x1,:x2,:x3,:x4) order by cust,flag6,lst2,lst2d';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      open;
    end;
    with frmcuststyleshv1.query14 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_4_1(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      open;
    end;
    with frmcuststyleshv1.query12 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_3_1(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      open;
    end;
      with frmcuststyleshv1.query13 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_1_1(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=frmcustomer.combobox6.text;
        params[3].asstring:=frmcustomer.combobox1.text;
        open;
      end;
      with frmcuststyleshv1.query7 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='select * from TEMP_PRJBD_RPT1 where cust=:x1';
        if frmcustomer.combobox6.text>'' then commandtext:=commandtext+' and tplant='''+frmcustomer.combobox6.text+''''
        else commandtext:=commandtext+' and tplant=''All''';
        commandtext:=commandtext+' order by cust,pstl52,ptyp,lst2,lst2d,flag6';
        params[0].asstring:=frmcustomer.combobox1.text;
        open;
        if not fieldbyname('cust').isnull then begin
          frmcuststyleshv1.pplabel180.Caption:=' / Product Category & Style dependent ';
          frmcuststyleshv1.cust001.Caption:=frmcustomer.combobox1.text;
          frmcuststyleshv1.dt001.Caption:=frmcustomer.dateedit1.Text;
          frmcuststyleshv1.dt002.Caption:=frmcustomer.dateedit2.Text;
          if frmcustomer.combobox6.text>'' then
          frmcuststyleshv1.fty001.Caption:=frmcustomer.combobox6.text
          else frmcuststyleshv1.fty001.Caption:='All';
          //frmcuststyleshv1.pplabel185.Caption:='Style# / Name';
          frmcuststyleshv1.pplabel175.Caption:='Version   3.0.0';
          frmcuststyleshv1.pplabel322.caption:='Eff% Comparison (based on LB3)';
          frmcuststyleshv1.pplabel51.caption:='Eff% Comparison (based on LB3)';
          frmcuststyleshv1.pplabel116.caption:='Eff% Comparison (based on LB3)';
          frmcuststyleshv1.pplabel205.caption:='Eff% Comparison (based on LB3)';
          frmcuststyleshv1.pplabel270.caption:='Eff% Comparison (based on LB3)';
          frmcuststyleshv1.pplabel7.caption:='vs';
          frmcuststyleshv1.pplabel10.caption:='vs';
          frmcuststyleshv1.pplabel474.caption:='vs';
          frmcuststyleshv1.pplabel8.caption:='LB3';
          frmcuststyleshv1.pplabel11.caption:='LB3';
          frmcuststyleshv1.pplabel475.caption:='LB3';
          frmcuststyleshv1.pplabel78.caption:='vs';
          frmcuststyleshv1.pplabel81.caption:='vs';
          frmcuststyleshv1.pplabel111.caption:='vs';
          frmcuststyleshv1.pplabel79.caption:='LB3';
          frmcuststyleshv1.pplabel82.caption:='LB3';
          frmcuststyleshv1.pplabel110.caption:='LB3';
          frmcuststyleshv1.pplabel143.caption:='vs';
          frmcuststyleshv1.pplabel146.caption:='vs';
          frmcuststyleshv1.pplabel194.caption:='vs';
          frmcuststyleshv1.pplabel144.caption:='LB3';
          frmcuststyleshv1.pplabel147.caption:='LB3';
          frmcuststyleshv1.pplabel193.caption:='LB3';
          frmcuststyleshv1.pplabel232.caption:='vs';
          frmcuststyleshv1.pplabel235.caption:='vs';
          frmcuststyleshv1.pplabel265.caption:='vs';
          frmcuststyleshv1.pplabel233.caption:='LB3';
          frmcuststyleshv1.pplabel236.caption:='LB3';
          frmcuststyleshv1.pplabel264.caption:='LB3';
          frmcuststyleshv1.pplabel297.caption:='vs';
          frmcuststyleshv1.pplabel300.caption:='vs';
          frmcuststyleshv1.pplabel343.caption:='vs';
          frmcuststyleshv1.pplabel298.caption:='LB3';
          frmcuststyleshv1.pplabel301.caption:='LB3';
          frmcuststyleshv1.pplabel340.caption:='LB3';
          frmcuststyleshv1.ppReport6.Print;
        end;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmcuststyleshv.ProductionPeople1Click(Sender: TObject);
var
  tm:tdatetime;
  dt1,dt2:tdate;
begin
  bitbtn4click(self);
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    if frmcustomer.DateEdit1.date>0 then dt1:=frmcustomer.DateEdit1.date
    else dt1:=encodedate(2005,1,1);
    if frmcustomer.DateEdit2.Date>0 then dt2:=frmcustomer.DateEdit2.date
    else dt2:=encodedate(2020,12,31);
  if (frmcustomer.combobox1.text>'') then begin
    if (frmcustomer.dateedit1.Date>0) and (frmcustomer.dateedit2.date>0) then begin
    with Query3 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure SP_GENTEMPPRJBD_RPT_STYLE_SPE(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      execute;
    end;
    with Query3 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_tempprjbd_style(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox1.text;
      params[3].asstring:=frmcustomer.combobox6.text;
      execute;
    end;
    tqty:=0;
    with query10 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_tempprjbd_clr order by flag,seq';
      open;
    end;
    with query11 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_2(:x1,:x2,:x3,:x4) order by cust,flag6,lst2,lst2d';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      open;
    end;
    with query14 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_4(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      open;
    end;
    with query12 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_3(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      open;
    end;
      with query13 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_1(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=frmcustomer.combobox6.text;
        params[3].asstring:=frmcustomer.combobox1.text;
        open;
      end;
      with query7 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='select * from TEMP_PRJBD_RPT1 where cust=:x1';
        if frmcustomer.combobox6.text>'' then commandtext:=commandtext+' and tplant='''+frmcustomer.combobox6.text+''''
        else commandtext:=commandtext+' and tplant=''All''';
        commandtext:=commandtext+' order by cust,pstl52,ptyp,lst2,lst2d,flag6';
        params[0].asstring:=frmcustomer.combobox1.text;
        open;
        if not fieldbyname('cust').isnull then begin
          pplabel180.Caption:=' / Product Category & Style dependent ';
          cust001.Caption:=frmcustomer.combobox1.text;
          dt001.Caption:=frmcustomer.dateedit1.Text;
          dt002.Caption:=frmcustomer.dateedit2.Text;
          if frmcustomer.combobox6.text>'' then
          fty001.Caption:=frmcustomer.combobox6.text
          else fty001.Caption:='All';
          //pplabel185.Caption:='Name / Style#';
          pplabel175.Caption:='Version   3.0.0';
          pplabel322.caption:='Eff% Comparison (based on LB3)';
          pplabel51.caption:='Eff% Comparison (based on LB3)';
          pplabel116.caption:='Eff% Comparison (based on LB3)';
          pplabel205.caption:='Eff% Comparison (based on LB3)';
          pplabel270.caption:='Eff% Comparison (based on LB3)';
          pplabel13.caption:='vs';
          pplabel16.caption:='vs';
          pplabel19.caption:='vs';
          pplabel7.caption:='vs';
          pplabel10.caption:='vs';
          pplabel474.caption:='vs';
          pplabel14.caption:='LB3';
          pplabel17.caption:='LB3';
          pplabel20.caption:='LB3';
          pplabel8.caption:='LB3';
          pplabel11.caption:='LB3';
          pplabel475.caption:='LB3';
          pplabel84.caption:='vs';
          pplabel87.caption:='vs';
          pplabel90.caption:='vs';
          pplabel78.caption:='vs';
          pplabel81.caption:='vs';
          pplabel111.caption:='vs';
          pplabel85.caption:='LB3';
          pplabel88.caption:='LB3';
          pplabel91.caption:='LB3';
          pplabel79.caption:='LB3';
          pplabel82.caption:='LB3';
          pplabel110.caption:='LB3';
          pplabel149.caption:='vs';
          pplabel152.caption:='vs';
          pplabel155.caption:='vs';
          pplabel143.caption:='vs';
          pplabel146.caption:='vs';
          pplabel194.caption:='vs';
          pplabel150.caption:='LB3';
          pplabel153.caption:='LB3';
          pplabel156.caption:='LB3';
          pplabel144.caption:='LB3';
          pplabel147.caption:='LB3';
          pplabel193.caption:='LB3';
          pplabel238.caption:='vs';
          pplabel241.caption:='vs';
          pplabel244.caption:='vs';
          pplabel232.caption:='vs';
          pplabel235.caption:='vs';
          pplabel265.caption:='vs';
          pplabel239.caption:='LB3';
          pplabel242.caption:='LB3';
          pplabel245.caption:='LB3';
          pplabel233.caption:='LB3';
          pplabel236.caption:='LB3';
          pplabel264.caption:='LB3';
          pplabel303.caption:='vs';
          pplabel306.caption:='vs';
          pplabel309.caption:='vs';
          pplabel297.caption:='vs';
          pplabel300.caption:='vs';
          pplabel343.caption:='vs';
          pplabel304.caption:='LB3';
          pplabel307.caption:='LB3';
          pplabel310.caption:='LB3';
          pplabel298.caption:='LB3';
          pplabel301.caption:='LB3';
          pplabel340.caption:='LB3';
          ppReport6.Print;
        end;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmcuststyleshv.SalesPeoplev311Click(Sender: TObject);
var
  tm:tdatetime;
  dt1,dt2:tdate;
  cust:string;
begin
  bitbtn4click(self);
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    if frmcustomer.DateEdit1.date>0 then dt1:=frmcustomer.DateEdit1.date
    else dt1:=encodedate(2005,1,1);
    if frmcustomer.DateEdit2.Date>0 then dt2:=frmcustomer.DateEdit2.date
    else dt2:=encodedate(2020,12,31);
  if (frmcustomer.combobox1.text>'') then begin
    if (frmcustomer.dateedit1.Date>0) and (frmcustomer.dateedit2.date>0) then begin
      if chk1.checked then begin
        with Query3 do begin
          close;
          params.clear;
          params.createparam(ftdate,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          commandtext:='execute procedure SP_GENTEMPPRJBD_RPT_STYLE_BYCUST(:x1,:x2,:x3,:x4)';
          params[0].asdate:=dt1;
          params[1].asdate:=dt2;
          params[2].asstring:=frmcustomer.combobox6.text;
          params[3].asstring:=frmcustomer.combobox1.text;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          commandtext:='select cust from temp_prjbd_style1 where tplant='''+frmcustomer.ComboBox6.text+''' and cust='''+copy(frmcustomer.ComboBox1.text,1,4)+'''';
          open;
          if not fieldbyname('cust').isnull then cust:=fieldbyname('cust').value else cust:='';
        end;
        if cust>'' then begin
          with Query3 do begin
            close;
            params.clear;
            params.createparam(ftdate,'x1',ptinput);
            params.createparam(ftdate,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='execute procedure SP_GENTEMPPRJBD_RPT_STYLE_1_SPE_GSD(:x1,:x2,:x3,:x4)';
            params[0].asdate:=dt1;
            params[1].asdate:=dt2;
            params[2].asstring:=frmcustomer.combobox6.text;
            params[3].asstring:=frmcustomer.combobox1.text;
            execute;
          end;
        end else begin
          with Query3 do begin
            close;
            params.clear;
            params.createparam(ftdate,'x1',ptinput);
            params.createparam(ftdate,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='execute procedure SP_GENTEMPPRJBD_RPT_STYLE_BYCUST(:x1,:x2,:x3,:x4)';
            params[0].asdate:=dt1;
            params[1].asdate:=dt2;
            params[2].asstring:=frmcustomer.combobox6.text;
            params[3].asstring:=frmcustomer.combobox1.text;
            execute;
          end;
        end;
      end;
      with Query3 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure sp_tempprjbd_style(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=frmcustomer.combobox1.text;
        params[3].asstring:=frmcustomer.combobox6.text;
        execute;
      end;
      tqty:=0;
      if frmcuststyleshv1=nil then frmcuststyleshv1:=tfrmcuststyleshv1.create(nil);
      with frmcuststyleshv1.query10 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_tempprjbd_clr order by flag,seq';
        open;
      end;
      with frmcuststyleshv1.query11 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_2_1(:x1,:x2,:x3,:x4) order by cust,flag6,lst2,lst2d';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=frmcustomer.combobox6.text;
        params[3].asstring:=frmcustomer.combobox1.text;
        open;
      end;
      with frmcuststyleshv1.query14 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_4_1(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=frmcustomer.combobox6.text;
        params[3].asstring:=frmcustomer.combobox1.text;
        open;
      end;
      with frmcuststyleshv1.query12 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_3_1(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=frmcustomer.combobox6.text;
        params[3].asstring:=frmcustomer.combobox1.text;
        open;
      end;
      with frmcuststyleshv1.query13 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_1_1(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=frmcustomer.combobox6.text;
        params[3].asstring:=frmcustomer.combobox1.text;
        open;
      end;
      with frmcuststyleshv1.query7 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='select * from TEMP_PRJBD_RPT1 where cust=:x1';
        if frmcustomer.combobox6.text>'' then commandtext:=commandtext+' and tplant='''+frmcustomer.combobox6.text+''''
        else commandtext:=commandtext+' and tplant=''All''';
        commandtext:=commandtext+' order by cust,pstl52,ptyp,lst2,lst2d,flag6';
        params[0].asstring:=frmcustomer.combobox1.text;
        open;
        if not fieldbyname('cust').isnull then begin
          frmcuststyleshv1.pplabel180.Caption:=' / Product Category & Style/Customer dependent ';
          frmcuststyleshv1.cust001.Caption:=frmcustomer.combobox1.text;
          frmcuststyleshv1.dt001.Caption:=frmcustomer.dateedit1.Text;
          frmcuststyleshv1.dt002.Caption:=frmcustomer.dateedit2.Text;
          if frmcustomer.combobox6.text>'' then
          frmcuststyleshv1.fty001.Caption:=frmcustomer.combobox6.text
          else frmcuststyleshv1.fty001.Caption:='All';
          frmcuststyleshv1.pplabel185.Caption:='Style# / Name';
          frmcuststyleshv1.pplabel175.Caption:='Version   3.1.1';
          frmcuststyleshv1.pplabel7.caption:='vs Line';
          frmcuststyleshv1.pplabel10.caption:='vs Line';
          frmcuststyleshv1.pplabel474.caption:='vs Line';
          frmcuststyleshv1.pplabel8.caption:='GSD';
          frmcuststyleshv1.pplabel11.caption:='GSD';
          frmcuststyleshv1.pplabel475.caption:='GSD';
          frmcuststyleshv1.pplabel78.caption:='vs Line';
          frmcuststyleshv1.pplabel81.caption:='vs Line';
          frmcuststyleshv1.pplabel111.caption:='vs Line';
          frmcuststyleshv1.pplabel79.caption:='GSD';
          frmcuststyleshv1.pplabel82.caption:='GSD';
          frmcuststyleshv1.pplabel110.caption:='GSD';
          frmcuststyleshv1.pplabel143.caption:='vs Line';
          frmcuststyleshv1.pplabel146.caption:='vs Line';
          frmcuststyleshv1.pplabel194.caption:='vs Line';
          frmcuststyleshv1.pplabel144.caption:='GSD';
          frmcuststyleshv1.pplabel147.caption:='GSD';
          frmcuststyleshv1.pplabel193.caption:='GSD';
          frmcuststyleshv1.pplabel232.caption:='vs Line';
          frmcuststyleshv1.pplabel235.caption:='vs Line';
          frmcuststyleshv1.pplabel265.caption:='vs Line';
          frmcuststyleshv1.pplabel233.caption:='GSD';
          frmcuststyleshv1.pplabel236.caption:='GSD';
          frmcuststyleshv1.pplabel264.caption:='GSD';
          frmcuststyleshv1.pplabel297.caption:='vs Line';
          frmcuststyleshv1.pplabel300.caption:='vs Line';
          frmcuststyleshv1.pplabel343.caption:='vs Line';
          frmcuststyleshv1.pplabel298.caption:='GSD';
          frmcuststyleshv1.pplabel301.caption:='GSD';
          frmcuststyleshv1.pplabel340.caption:='GSD';
          frmcuststyleshv1.ppReport6.Print;
        end;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmcuststyleshv.ProductionPeoplev311Click(Sender: TObject);
var
  tm:tdatetime;
  dt1,dt2:tdate;
begin
  bitbtn4click(self);
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    if frmcustomer.DateEdit1.date>0 then dt1:=frmcustomer.DateEdit1.date
    else dt1:=encodedate(2005,1,1);
    if frmcustomer.DateEdit2.Date>0 then dt2:=frmcustomer.DateEdit2.date
    else dt2:=encodedate(2020,12,31);
  if (frmcustomer.combobox1.text>'') then begin
    if (frmcustomer.dateedit1.Date>0) and (frmcustomer.dateedit2.date>0) then begin
    with Query3 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure SP_GENTEMPPRJBD_RPT_STYLE_SPE_GSD(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      execute;
    end;
    with Query3 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_tempprjbd_style(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox1.text;
      params[3].asstring:=frmcustomer.combobox6.text;
      execute;
    end;
    tqty:=0;
    with query10 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_tempprjbd_clr order by flag,seq';
      open;
    end;
    with query11 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_2(:x1,:x2,:x3,:x4) order by cust,flag6,lst2,lst2d';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      open;
    end;
    with query14 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_4(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      open;
    end;
    with query12 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_3(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      open;
    end;
      with query13 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_1(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=frmcustomer.combobox6.text;
        params[3].asstring:=frmcustomer.combobox1.text;
        open;
      end;
      with query7 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='select * from TEMP_PRJBD_RPT1 where cust=:x1';
        if frmcustomer.combobox6.text>'' then commandtext:=commandtext+' and tplant='''+frmcustomer.combobox6.text+''''
        else commandtext:=commandtext+' and tplant=''All''';
        commandtext:=commandtext+' order by cust,pstl52,ptyp,lst2,lst2d,flag6';
        params[0].asstring:=frmcustomer.combobox1.text;
        open;
        if not fieldbyname('cust').isnull then begin
          pplabel180.Caption:=' / Product Category & Style dependent ';
          cust001.Caption:=frmcustomer.combobox1.text;
          dt001.Caption:=frmcustomer.dateedit1.Text;
          dt002.Caption:=frmcustomer.dateedit2.Text;
          if frmcustomer.combobox6.text>'' then
          fty001.Caption:=frmcustomer.combobox6.text
          else fty001.Caption:='All';
          //pplabel185.Caption:='Name / Style#';
          pplabel175.Caption:='Version   3.1.1';
          pplabel322.caption:='Eff% Comparison (based on Line GSD)';
          pplabel51.caption:='Eff% Comparison (based on Line GSD)';
          pplabel116.caption:='Eff% Comparison (based on Line GSD)';
          pplabel205.caption:='Eff% Comparison (based on Line GSD)';
          pplabel270.caption:='Eff% Comparison (based on Line GSD)';
          pplabel13.caption:='vs Line';
          pplabel16.caption:='vs Line';
          pplabel19.caption:='vs Line';
          pplabel7.caption:='vs Line';
          pplabel10.caption:='vs Line';
          pplabel474.caption:='vs Line';
          pplabel14.caption:='GSD';
          pplabel17.caption:='GSD';
          pplabel20.caption:='GSD';
          pplabel8.caption:='GSD';
          pplabel11.caption:='GSD';
          pplabel475.caption:='GSD';
          pplabel84.caption:='vs Line';
          pplabel87.caption:='vs Line';
          pplabel90.caption:='vs Line';
          pplabel78.caption:='vs Line';
          pplabel81.caption:='vs Line';
          pplabel111.caption:='vs Line';
          pplabel85.caption:='GSD';
          pplabel88.caption:='GSD';
          pplabel91.caption:='GSD';
          pplabel79.caption:='GSD';
          pplabel82.caption:='GSD';
          pplabel110.caption:='GSD';
          pplabel149.caption:='vs Line';
          pplabel152.caption:='vs Line';
          pplabel155.caption:='vs Line';
          pplabel143.caption:='vs Line';
          pplabel146.caption:='vs Line';
          pplabel194.caption:='vs Line';
          pplabel150.caption:='GSD';
          pplabel153.caption:='GSD';
          pplabel156.caption:='GSD';
          pplabel144.caption:='GSD';
          pplabel147.caption:='GSD';
          pplabel193.caption:='GSD';
          pplabel238.caption:='vs Line';
          pplabel241.caption:='vs Line';
          pplabel244.caption:='vs Line';
          pplabel232.caption:='vs Line';
          pplabel235.caption:='vs Line';
          pplabel265.caption:='vs Line';
          pplabel239.caption:='GSD';
          pplabel242.caption:='GSD';
          pplabel245.caption:='GSD';
          pplabel233.caption:='GSD';
          pplabel236.caption:='GSD';
          pplabel264.caption:='GSD';
          pplabel303.caption:='vs Line';
          pplabel306.caption:='vs Line';
          pplabel309.caption:='vs Line';
          pplabel297.caption:='vs Line';
          pplabel300.caption:='vs Line';
          pplabel343.caption:='vs Line';
          pplabel304.caption:='GSD';
          pplabel307.caption:='GSD';
          pplabel310.caption:='GSD';
          pplabel298.caption:='GSD';
          pplabel301.caption:='GSD';
          pplabel340.caption:='GSD';
          ppReport6.Print;
        end;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmcuststyleshv.ChangeTrackingv311Click(Sender: TObject);
var
  tm:tdatetime;
begin
  tm:=now;
  try
    screen.Cursor:=crSQLWait;
    with query2 do begin
      close;
      params.Clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftdatetime,'x5',ptinput);
      commandtext:='Execute PROCEDURE SP_GEN_TEMPPRJBDTRACKING_GSD(:x1,:x2,:x3,:x4,:x5)';
      params[0].asstring:=frmcustomer.ComboBox6.text;
      params[1].asstring:=frmcustomer.ComboBox1.text;
      params[2].asdate:=frmcustomer.dateedit1.date;
      params[3].asdate:=frmcustomer.dateedit2.date;
      params[4].asdatetime:=tm;
      execute;
    end;
    with query15 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from temp_prjbd_tracking where tm=:x1 order by seq,cls2,cls1,brand';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        tplant001.Caption:=frmcustomer.ComboBox6.Text;
        customer001.Caption:=frmcustomer.ComboBox1.Text;
        delivery001.Caption:='Delivery Date from '+formatdatetime('yyyy/MM/dd',frmcustomer.DateEdit1.date)+' to '+formatdatetime('yyyy/MM/dd',frmcustomer.DateEdit2.date);
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          commandtext:='select * from temp_prjbd_tracking where tm=:x1 and fdt3 is not null';
          params[0].asdatetime:=tm;
          open;
          if fieldbyname('tm').isnull then begin
            ppSummaryBand1.Visible:=false;
            ppGroupFooterBand6.Visible:=true;
          end else begin
            ppGroupFooterBand6.Visible:=false;
            ppSummaryBand1.Visible:=true;
          end;
        end;
        pplabel219.caption:='3.1.1';
        pplabel416.caption:='line gsd';
        pplabel423.caption:='line gsd';
        pplabel455.caption:='line gsd';
        pplabel527.caption:='line gsd';
        pplabel534.caption:='line gsd';
        pplabel539.caption:='line gsd';
        ppReport1.Print;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

end.
