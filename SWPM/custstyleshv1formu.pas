unit custstyleshv1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppClass, ppMemo, ppReport, ppStrtch, ppSubRpt,
  ppVar, ppPrnabl, ppCache, ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, DB,
  DBClient, ppViewr, ppParameter;

type
  Tfrmcuststyleshv1 = class(TForm)
    Query2: TClientDataSet;
    Query3: TClientDataSet;
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
    ppLabel190: TppLabel;
    x501: TppLabel;
    ppLabel322: TppLabel;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLabel368: TppLabel;
    fty001: TppLabel;
    ppLabel375: TppLabel;
    ppLine207: TppLine;
    ppLabel472: TppLabel;
    ppLabel473: TppLabel;
    ppLabel474: TppLabel;
    ppLabel475: TppLabel;
    ppLabel352: TppLabel;
    ppLabel184: TppLabel;
    ppLabel360: TppLabel;
    ppLabel604: TppLabel;
    ppLabel640: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText269: TppDBText;
    ppDBText193: TppDBText;
    ppDBText194: TppDBText;
    ppDBText195: TppDBText;
    x502: TppLabel;
    x503: TppLabel;
    x504: TppLabel;
    ppDBText317: TppDBText;
    d003: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
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
    ppShape4: TppShape;
    ppLabel65: TppLabel;
    ppLabel270: TppLabel;
    ppLine101: TppLine;
    ppLabel286: TppLabel;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppLabel300: TppLabel;
    ppLabel301: TppLabel;
    ppLabel340: TppLabel;
    ppLabel343: TppLabel;
    ppLabel344: TppLabel;
    ppLine42: TppLine;
    ppHeaderBand15: TppHeaderBand;
    ppDetailBand16: TppDetailBand;
    ppDBText344: TppDBText;
    ppDBText367: TppDBText;
    d043: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppSummaryBand13: TppSummaryBand;
    ppGroup21: TppGroup;
    ppGroupHeaderBand21: TppGroupHeaderBand;
    ppGroupFooterBand21: TppGroupFooterBand;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel365: TppLabel;
    ppShape3: TppShape;
    ppLabel47: TppLabel;
    ppLabel70: TppLabel;
    ppLabel130: TppLabel;
    ppLine36: TppLine;
    ppLine39: TppLine;
    ppLine63: TppLine;
    ppLabel205: TppLabel;
    ppLine77: TppLine;
    ppLabel221: TppLabel;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppLabel235: TppLabel;
    ppLabel236: TppLabel;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppLabel266: TppLabel;
    ppHeaderBand11: TppHeaderBand;
    ppDetailBand11: TppDetailBand;
    ppDBText240: TppDBText;
    ppDBText244: TppDBText;
    ppDBText356: TppDBText;
    d033: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppSummaryBand8: TppSummaryBand;
    ppGroup22: TppGroup;
    ppGroupHeaderBand22: TppGroupHeaderBand;
    ppGroupFooterBand22: TppGroupFooterBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel356: TppLabel;
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
    ppLabel116: TppLabel;
    ppLine51: TppLine;
    ppLabel132: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel195: TppLabel;
    ppHeaderBand10: TppHeaderBand;
    ppDetailBand10: TppDetailBand;
    ppDBText220: TppDBText;
    ppDBText222: TppDBText;
    ppDBText223: TppDBText;
    ppDBText236: TppDBText;
    ppDBText343: TppDBText;
    d023: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
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
    ppShape1: TppShape;
    ppLabel39: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine11: TppLine;
    ppLabel51: TppLabel;
    ppLine25: TppLine;
    ppLabel67: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppHeaderBand12: TppHeaderBand;
    ppDetailBand12: TppDetailBand;
    ppDBText237: TppDBText;
    ppDBText239: TppDBText;
    ppDBText330: TppDBText;
    d013: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppSummaryBand9: TppSummaryBand;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppLabel69: TppLabel;
    w001: TppLabel;
    w002: TppLabel;
    w003: TppLabel;
    w004: TppLabel;
    w006: TppLabel;
    w007: TppLabel;
    w008: TppLabel;
    w010: TppLabel;
    w011: TppLabel;
    w013: TppLabel;
    w014: TppLabel;
    w020: TppLabel;
    w021: TppLabel;
    w022: TppLabel;
    w023: TppLabel;
    ppGroup18: TppGroup;
    ppGroupHeaderBand18: TppGroupHeaderBand;
    ppGroupFooterBand18: TppGroupFooterBand;
    ppGroup19: TppGroup;
    ppGroupHeaderBand19: TppGroupHeaderBand;
    ppGroupFooterBand19: TppGroupFooterBand;
    ppGroup20: TppGroup;
    ppGroupHeaderBand20: TppGroupHeaderBand;
    ppGroupFooterBand20: TppGroupFooterBand;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLine64: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText61: TppDBText;
    ppLine67: TppLine;
    ppLine88: TppLine;
    ppLine91: TppLine;
    ppDBText63: TppDBText;
    w017: TppLabel;
    w015: TppLabel;
    ppLabel22: TppLabel;
    ppDBText64: TppDBText;
    w018: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel53: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel83: TppLabel;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine115: TppLine;
    ppLine127: TppLine;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel97: TppLabel;
    ppLine129: TppLine;
    ppLine130: TppLine;
    ppLine131: TppLine;
    ppLine133: TppLine;
    ppLabel98: TppLabel;
    ppLabel105: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel131: TppLabel;
    ppLabel148: TppLabel;
    ppLine134: TppLine;
    ppLine137: TppLine;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel163: TppLabel;
    ppLine144: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppDBText65: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLine161: TppLine;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppLine166: TppLine;
    ppLine167: TppLine;
    ppLine168: TppLine;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppLabel189: TppLabel;
    ppLine120: TppLine;
    ppLabel317: TppLabel;
    ppLabel318: TppLabel;
    ppLine121: TppLine;
    ppLabel319: TppLabel;
    ppLabel321: TppLabel;
    ppLine122: TppLine;
    ppLine125: TppLine;
    ppLine126: TppLine;
    ppLine181: TppLine;
    ppLabel385: TppLabel;
    ppLine184: TppLine;
    ppLine187: TppLine;
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
    ppLine214: TppLine;
    ppLine215: TppLine;
    ppLine41: TppLine;
    ppLabel182: TppLabel;
    ppLine281: TppLine;
    ppLabel21: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLine5: TppLine;
    ppLabel29: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine6: TppLine;
    ppLabel38: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLine62: TppLine;
    ppLabel76: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLine201: TppLine;
    ppLabel441: TppLabel;
    ppLabel442: TppLabel;
    ppDBText221: TppDBText;
    ppDBText238: TppDBText;
    ppDBText241: TppDBText;
    ppDBText270: TppDBText;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText22: TppDBText;
    ppDBText92: TppDBText;
    ppLabel48: TppLabel;
    ppLine13: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLine14: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel52: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLine23: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLine24: TppLine;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel68: TppLabel;
    ppLine29: TppLine;
    ppLabel92: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLabel96: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLine33: TppLine;
    ppLabel101: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLine34: TppLine;
    ppLabel109: TppLabel;
    ppLabel139: TppLabel;
    ppLine68: TppLine;
    ppLine202: TppLine;
    ppDBText319: TppDBText;
    ppDBText320: TppDBText;
    ppDBText321: TppDBText;
    ppDBText322: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel71: TppLabel;
    ppLine37: TppLine;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLine38: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLabel117: TppLabel;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLine49: TppLine;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLine50: TppLine;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLabel133: TppLabel;
    ppLine55: TppLine;
    ppLabel157: TppLabel;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLabel162: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLine59: TppLine;
    ppLabel167: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLine60: TppLine;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLine148: TppLine;
    ppLine203: TppLine;
    ppDBText332: TppDBText;
    ppDBText333: TppDBText;
    ppDBText334: TppDBText;
    ppDBText335: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel202: TppLabel;
    ppLine65: TppLine;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLine66: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLabel206: TppLabel;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLabel208: TppLabel;
    ppLabel209: TppLabel;
    ppLine75: TppLine;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLine76: TppLine;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLabel222: TppLabel;
    ppLine81: TppLine;
    ppLabel246: TppLabel;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLabel250: TppLabel;
    ppLabel253: TppLabel;
    ppLabel254: TppLabel;
    ppLine85: TppLine;
    ppLabel255: TppLabel;
    ppLabel257: TppLabel;
    ppLabel258: TppLabel;
    ppLine86: TppLine;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppLine114: TppLine;
    ppLine205: TppLine;
    ppDBText345: TppDBText;
    ppDBText346: TppDBText;
    ppDBText347: TppDBText;
    ppDBText348: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppLabel225: TppLabel;
    ppLine89: TppLine;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppLine90: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLabel271: TppLabel;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLabel273: TppLabel;
    ppLabel274: TppLabel;
    ppLine99: TppLine;
    ppLabel278: TppLabel;
    ppLabel279: TppLabel;
    ppLabel280: TppLabel;
    ppLabel281: TppLabel;
    ppLine100: TppLine;
    ppLabel282: TppLabel;
    ppLabel283: TppLabel;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLabel287: TppLabel;
    ppLine105: TppLine;
    ppLabel311: TppLabel;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLabel315: TppLabel;
    ppLabel324: TppLabel;
    ppLabel325: TppLabel;
    ppLine109: TppLine;
    ppLabel326: TppLabel;
    ppLabel328: TppLabel;
    ppLabel329: TppLabel;
    ppLine110: TppLine;
    ppLabel335: TppLabel;
    ppLabel339: TppLabel;
    ppLine128: TppLine;
    ppLine206: TppLine;
    ppDBText351: TppDBText;
    ppDBText357: TppDBText;
    ppDBText358: TppDBText;
    ppDBText359: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    w0001: TppLabel;
    ppDBText10: TppDBText;
    ppDBText34: TppDBText;
    ppDBText46: TppDBText;
    ppDBText58: TppDBText;
    ppLabel554: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel563: TppLabel;
    ppLabel5: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel447: TppLabel;
    ppLabel448: TppLabel;
    ppLabel107: TppLabel;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLabel164: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel201: TppLabel;
    ppLabel207: TppLabel;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    ppLabel219: TppLabel;
    ppLabel220: TppLabel;
    ppLabel223: TppLabel;
    ppLabel224: TppLabel;
    ppLabel228: TppLabel;
    ppLabel229: TppLabel;
    ppLabel230: TppLabel;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppLabel577: TppLabel;
    ppLabel239: TppLabel;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLabel13: TppLabel;
    ppLabel20: TppLabel;
    ppLabel243: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel106: TppLabel;
    ppLabel118: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLabel247: TppLabel;
    ppLabel251: TppLabel;
    ppDBText62: TppDBText;
    w016: TppLabel;
    ppDBText66: TppDBText;
    ppDBText70: TppDBText;
    ppDBText74: TppDBText;
    ppDBText78: TppDBText;
    ppLabel252: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLabel272: TppLabel;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    ppLabel277: TppLabel;
    ppLabel284: TppLabel;
    ppLabel285: TppLabel;
    ppLabel288: TppLabel;
    ppLabel289: TppLabel;
    ppLabel290: TppLabel;
    ppLabel291: TppLabel;
    ppLabel293: TppLabel;
    ppLabel302: TppLabel;
    ppLabel305: TppLabel;
    ppLabel308: TppLabel;
    ppLabel610: TppLabel;
    ppLabel310: TppLabel;
    ppLabel312: TppLabel;
    ppLabel316: TppLabel;
    ppLabel323: TppLabel;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel24: TppLabel;
    lb43wf01: TppLabel;
    ppLine35: TppLine;
    ppLine61: TppLine;
    lb43wf02: TppLabel;
    lb43wf03: TppLabel;
    ppLine87: TppLine;
    lb43wf04: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel196: TppLabel;
    ppLabel585: TppLabel;
    ppLabel198: TppLabel;
    ppLabel249: TppLabel;
    ppLabel256: TppLabel;
    ppLabel197: TppLabel;
    ppLabel31: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel108: TppLabel;
    ppLabel267: TppLabel;
    ppLabel268: TppLabel;
    ppLabel102: TppLabel;
    ppLabel113: TppLabel;
    ppLabel160: TppLabel;
    ppLabel186: TppLabel;
    ppLabel269: TppLabel;
    ppLabel292: TppLabel;
    ppLabel161: TppLabel;
    ppLabel168: TppLabel;
    ppLabel248: TppLabel;
    ppLabel261: TppLabel;
    ppLabel294: TppLabel;
    ppLabel295: TppLabel;
    ppLabel303: TppLabel;
    ppLabel304: TppLabel;
    ppLabel306: TppLabel;
    ppLabel307: TppLabel;
    ppLabel309: TppLabel;
    ppLabel313: TppLabel;
    ppLine92: TppLine;
    ppLabel314: TppLabel;
    lb43wf05: TppLabel;
    plus001: TppLabel;
    plus002: TppLabel;
    plus003: TppLabel;
    plus004: TppLabel;
    plus005: TppLabel;
    plus01: TppLabel;
    ppLabel327: TppLabel;
    ppLabel330: TppLabel;
    ppLabel331: TppLabel;
    ppLabel332: TppLabel;
    ppLabel345: TppLabel;
    ppLine2: TppLine;
    ppLine30: TppLine;
    ppLine56: TppLine;
    ppLine82: TppLine;
    ppLine106: TppLine;
    ppLine111: TppLine;
    ppLine169: TppLine;
    ppLine170: TppLine;
    ppLine171: TppLine;
    ppLine172: TppLine;
    procedure ppDetailBand6BeforePrint(Sender: TObject);
    procedure ppDetailBand11BeforePrint(Sender: TObject);
    procedure ppDetailBand10BeforePrint(Sender: TObject);
    procedure ppDetailBand12BeforePrint(Sender: TObject);
    procedure ppDetailBand16BeforePrint(Sender: TObject);
    procedure ppDetailBand9BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand23BeforePrint(Sender: TObject);
    procedure ppReport6PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcuststyleshv1: Tfrmcuststyleshv1;

implementation

uses mainformu, custformu, custstyleshvformu;

{$R *.dfm}

procedure Tfrmcuststyleshv1.ppDetailBand6BeforePrint(Sender: TObject);
var
  pfit,xsz,sz:string;
  lmax,ttl:integer;
begin
  //key size on highest ratio
  with query3 do begin
    close;
    params.clear;
    if query7.fieldbyname('pstl52').value>'' then begin
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
    end else begin
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      commandtext:='select * from sp_tempprj_shv(:x1,:x2,:x3,:x4,:x5,:x6)';
      params[0].asdate:=frmcustomer.dateedit1.Date;
      params[1].asdate:=frmcustomer.dateedit2.date;
      params[2].asstring:=frmcustomer.combobox6.text;
      params[3].asstring:=frmcustomer.combobox1.text;
      params[4].asstring:=query7.fieldbyname('lst2').value;
      params[5].asstring:=query7.fieldbyname('flag6').value;
    end;
    open;
    if not fieldbyname('qty').isnull then begin
      if fieldbyname('pfit').value>'' then
      x502.Caption:=fieldbyname('psize').value+fieldbyname('pfit').value//+'/'+fieldbyname('psize').value
      else x502.Caption:=fieldbyname('psize').value;
      //x503.Caption:=fieldbyname('qty').asstring;
      x504.Caption:=formatfloat('0.00%',fieldbyname('qty').value*100.00/fieldbyname('sewn').value);
      x503.Caption:=formatfloat('#0',fieldbyname('qty').value*query7.fieldbyname('qty1').value/fieldbyname('sewn').value)
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
  if query7.fieldbyname('diff').value<0 then d003.Font.Color:=clGreen
  else if query7.fieldbyname('diff').value>0 then d003.Font.Color:=clRed
  else d003.Font.Color:=clBlack;
  lb43wf01.Caption:=formatfloat('0.0',query7.fieldbyname('lb4wf').value-query7.fieldbyname('lb3wf').value);
  if query7.fieldbyname('lb4wf').value<query7.fieldbyname('lb3wf').value then
    lb43wf01.Font.Color:=clGreen
  else if query7.fieldbyname('lb4wf').value>query7.fieldbyname('lb3wf').value then
    lb43wf01.Font.Color:=clRed
  else lb43wf01.Font.Color:=clBlack;
  if query7.fieldbyname('eff2').value>0 then begin
    if query7.fieldbyname('lb6shv').value>0 then
    plus001.Caption:=formatfloat('0.00',(query7.fieldbyname('eff2').value-query7.fieldbyname('lb6shv').value)*100.00/query7.fieldbyname('lb6shv').value)
    else plus001.caption:='0.00';
  end else plus001.Caption:='';
  if query7.fieldbyname('eff2').value>query7.fieldbyname('lb6shv').value then
    plus001.Font.Color:=clRed
  else if query7.fieldbyname('eff2').value<query7.fieldbyname('lb6shv').value then
    plus001.Font.Color:=clGreen
  else plus001.Font.Color:=clBlack;
end;

procedure Tfrmcuststyleshv1.ppDetailBand11BeforePrint(Sender: TObject);
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
  if query12.fieldbyname('diff').value<0 then d033.Font.Color:=clGreen
  else if query12.fieldbyname('diff').value>0 then d033.Font.Color:=clRed
  else d033.Font.Color:=clBlack;
  lb43wf04.Caption:=formatfloat('0.0',query12.fieldbyname('lb4wf').value-query12.fieldbyname('lb3wf').value);
  if query12.fieldbyname('lb4wf').value<query12.fieldbyname('lb3wf').value then
    lb43wf04.Font.Color:=clGreen
  else if query12.fieldbyname('lb4wf').value>query12.fieldbyname('lb3wf').value then
    lb43wf04.Font.Color:=clRed
  else lb43wf04.Font.Color:=clBlack;
  if query12.fieldbyname('eff2').value>0 then begin
    if query12.fieldbyname('lb6shv').value>0 then
    plus004.Caption:=formatfloat('0.00',(query12.fieldbyname('eff2').value-query12.fieldbyname('lb6shv').value)*100.00/query12.fieldbyname('lb6shv').value)
    else plus004.caption:='0.00';
  end else plus004.Caption:='';
  if query12.fieldbyname('eff2').value>query12.fieldbyname('lb6shv').value then
    plus004.Font.Color:=clRed
  else if query12.fieldbyname('eff2').value<query12.fieldbyname('lb6shv').value then
    plus004.Font.Color:=clGreen
  else plus004.Font.Color:=clBlack;
end;

procedure Tfrmcuststyleshv1.ppDetailBand10BeforePrint(Sender: TObject);
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
  if query11.fieldbyname('diff').value<0 then d023.Font.Color:=clGreen
  else if query11.fieldbyname('diff').value>0 then d023.Font.Color:=clRed
  else d023.Font.Color:=clBlack;
  lb43wf03.Caption:=formatfloat('0.0',query11.fieldbyname('lb4wf').value-query11.fieldbyname('lb3wf').value);
  if query11.fieldbyname('lb4wf').value<query11.fieldbyname('lb3wf').value then
    lb43wf03.Font.Color:=clGreen
  else if query11.fieldbyname('lb4wf').value>query11.fieldbyname('lb3wf').value then
    lb43wf03.Font.Color:=clRed
  else lb43wf03.Font.Color:=clBlack;
  if query11.fieldbyname('eff2').value>0 then begin
    if query11.fieldbyname('lb6shv').value>0 then
    plus003.Caption:=formatfloat('0.00',(query11.fieldbyname('eff2').value-query11.fieldbyname('lb6shv').value)*100.00/query11.fieldbyname('lb6shv').value)
    else plus003.caption:='0.00';
  end else plus003.Caption:='';
  if query11.fieldbyname('eff2').value>query11.fieldbyname('lb6shv').value then
    plus003.Font.Color:=clRed
  else if query11.fieldbyname('eff2').value<query11.fieldbyname('lb6shv').value then
    plus003.Font.Color:=clGreen
  else plus003.Font.Color:=clBlack;
end;

procedure Tfrmcuststyleshv1.ppDetailBand12BeforePrint(Sender: TObject);
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
  if query13.fieldbyname('diff').value<0 then d013.Font.Color:=clGreen
  else if query13.fieldbyname('diff').value>0 then d013.Font.Color:=clRed
  else d013.Font.Color:=clBlack;
  lb43wf02.Caption:=formatfloat('0.0',query13.fieldbyname('lb4wf').value-query13.fieldbyname('lb3wf').value);
  if query13.fieldbyname('lb4wf').value<query13.fieldbyname('lb3wf').value then
    lb43wf02.Font.Color:=clGreen
  else if query13.fieldbyname('lb4wf').value>query13.fieldbyname('lb3wf').value then
    lb43wf02.Font.Color:=clRed
  else lb43wf02.Font.Color:=clBlack;
  if query13.fieldbyname('eff2').value>0 then begin
    if query13.fieldbyname('lb6shv').value>0 then
    plus002.Caption:=formatfloat('0.00',(query13.fieldbyname('eff2').value-query13.fieldbyname('lb6shv').value)*100.00/query13.fieldbyname('lb6shv').value)
    else plus002.caption:='0.00';
  end else plus002.Caption:='';
  if query13.fieldbyname('eff2').value>query13.fieldbyname('lb6shv').value then
    plus002.Font.Color:=clRed
  else if query13.fieldbyname('eff2').value<query13.fieldbyname('lb6shv').value then
    plus002.Font.Color:=clGreen
  else plus002.Font.Color:=clBlack;
end;

procedure Tfrmcuststyleshv1.ppDetailBand16BeforePrint(Sender: TObject);
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
  if query14.fieldbyname('diff').value<0 then d043.Font.Color:=clGreen
  else if query14.fieldbyname('diff').value>0 then d043.Font.Color:=clRed
  else d043.Font.Color:=clBlack;
  lb43wf05.Caption:=formatfloat('0.0',query14.fieldbyname('lb4wf').value-query14.fieldbyname('lb3wf').value);
  if query14.fieldbyname('lb4wf').value<query14.fieldbyname('lb3wf').value then
    lb43wf05.Font.Color:=clGreen
  else if query14.fieldbyname('lb4wf').value>query14.fieldbyname('lb3wf').value then
    lb43wf05.Font.Color:=clRed
  else lb43wf05.Font.Color:=clBlack;
  if query14.fieldbyname('eff2').value>0 then begin
    if query14.fieldbyname('lb6shv').value>0 then
    plus005.Caption:=formatfloat('0.00',(query14.fieldbyname('eff2').value-query14.fieldbyname('lb6shv').value)*100.00/query14.fieldbyname('lb6shv').value)
    else plus005.caption:='0.00';
  end else plus005.Caption:='';
  if query14.fieldbyname('eff2').value>query14.fieldbyname('lb6shv').value then
    plus005.Font.Color:=clRed
  else if query14.fieldbyname('eff2').value<query14.fieldbyname('lb6shv').value then
    plus005.Font.Color:=clGreen
  else plus005.Font.Color:=clBlack;
end;

procedure Tfrmcuststyleshv1.ppDetailBand9BeforePrint(Sender: TObject);
begin
  if query10.fieldbyname('seq').value=9 then sz002.Caption:='dual'
  else sz002.Caption:='single';
end;

procedure Tfrmcuststyleshv1.ppGroupFooterBand23BeforePrint(Sender: TObject);
begin
  w001.Caption:=''; w002.Caption:=''; w003.Caption:=''; w004.Caption:='';
  w006.Caption:=''; w007.Caption:=''; w008.Caption:=''; w010.Caption:='';
  w011.Caption:=''; w013.Caption:=''; w014.Caption:=''; w015.Caption:='';
  w016.Caption:='n.a. ';
  w017.Caption:=''; w018.Caption:='';
  w020.Caption:=''; w021.Caption:=''; w022.Caption:=''; w023.Caption:='';
  w0001.Caption:=''; plus01.Caption:='';
  with query3 do begin
    close;
    params.clear;
    commandtext:='select sum(sah0*qty1)/sum(qty1) as x1,sum(lb3wf*qty1)/sum(qty1) as x2,'
                +'sum(lbu*qty1)/sum(qty1) as x3,sum(sah1*qty1)/sum(qty1) as x4,sum(sah4*qty1)/sum(qty1) as x5,'
                +'sum((lb4wf-lb3wf)*qty1)/sum(qty1) as x6,sum(lflag*qty1)/sum(qty1) as x7,sum(lb4shv*qty2)/sum(qty2) as x8,'
                +'sum(sah2*qty1)/sum(qty1) as x9,sum(lb5wf*qty1)/sum(qty1) as x10,sum(lb5shv*qty2)/sum(qty2) as x11,'
                +'sum(sah3*qty1)/sum(qty1) as x12,sum(lb6wf*qty1)/sum(qty1) as x13,sum(lb6shv*qty2)/sum(qty2) as x14,'
                +'sum(eff2*qty2)/sum(qty2) as x15,sum(eff4*qty2)/sum(qty2) as x16,sum(pgsd*qty1)/sum(qty1) as x17,'
                +'sum(eff1*qty2)/sum(qty2) as x18,sum(lb65*qty1)/sum(qty1) as x19,sum(lb43*qty1)/sum(qty1) as x20,'
                +'sum(lb53*qty1)/sum(qty1) as x21,sum(eff3*qty2)/sum(qty2) as x22,sum(diff*qty1)/sum(qty1) as x23,sum(gsd*qty1)/sum(qty1) as x24 '
                +'from temp_prjbd_rpt1';
    open;
    if not fieldbyname('x24').isnull then w001.Caption:=formatfloat('#0.0000',fieldbyname('x24').value);
    if not fieldbyname('x2').isnull then w002.Caption:=formatfloat('#0.0',fieldbyname('x2').value);
    if not fieldbyname('x3').isnull then w003.Caption:=formatfloat('#0.00',fieldbyname('x3').value);
    if not fieldbyname('x4').isnull then w004.Caption:=formatfloat('#0.0000',fieldbyname('x4').value);
    if not fieldbyname('x6').isnull then w006.Caption:=formatfloat('#0.0',fieldbyname('x6').value);
    if not fieldbyname('x7').isnull then w007.Caption:=formatfloat('#0.0',fieldbyname('x7').value);
    if not fieldbyname('x8').isnull then w008.Caption:=formatfloat('#0.0000',fieldbyname('x8').value);
    if not fieldbyname('x10').isnull then w010.Caption:=formatfloat('#0.0',fieldbyname('x10').value);
    if not fieldbyname('x11').isnull then w011.Caption:=formatfloat('#0.0000',fieldbyname('x11').value);
    if not fieldbyname('x13').isnull then w013.Caption:=formatfloat('#0.0',fieldbyname('x13').value);
    if not fieldbyname('x14').isnull then w014.Caption:=formatfloat('#0.0000',fieldbyname('x14').value);
    if not fieldbyname('x1').isnull then w015.Caption:=formatfloat('#0.0000',fieldbyname('x1').value);
    //if not fieldbyname('x17').isnull then w016.Caption:=formatfloat('#0.0000',fieldbyname('x17').value);
    if not fieldbyname('x18').isnull then w017.Caption:=formatfloat('#0.00;-#0.00;''''',fieldbyname('x18').value);
    if not fieldbyname('x15').isnull then w018.Caption:=formatfloat('#0.0000;-#0.0000;''''',fieldbyname('x15').value);
    //if not fieldbyname('x19').isnull then w019.Caption:=formatfloat('#0.00',fieldbyname('x19').value);
    if not fieldbyname('x20').isnull then w020.Caption:=formatfloat('#0.00',fieldbyname('x20').value);
    if not fieldbyname('x21').isnull then w021.Caption:=formatfloat('#0.00',fieldbyname('x21').value);
    if not fieldbyname('x22').isnull then w022.Caption:=formatfloat('#0.00',fieldbyname('x22').value);
    if fieldbyname('x14').value>0 then
    plus01.Caption:=formatfloat('0.00',(fieldbyname('x15').value-fieldbyname('x14').value)*100.00/fieldbyname('x14').value)
    else plus01.Caption:='';
    if fieldbyname('x15').value>fieldbyname('x14').value then
      plus01.Font.Color:=clRed
    else if fieldbyname('x15').value<fieldbyname('x14').value then
      plus01.Font.Color:=clGreen
    else plus01.Font.Color:=clBlack;
    if fieldbyname('x6').value<0 then w006.font.Color:=clGreen
    else if fieldbyname('x6').value>0 then w006.Font.color:=clRed
    else w006.Font.Color:=clBlack;
    if not fieldbyname('x23').isnull then begin
      w023.Caption:=formatfloat('#0.0',fieldbyname('x23').value);
      if fieldbyname('x23').value<0 then w023.Font.Color:=clGreen
      else if fieldbyname('x23').value>0 then w023.Font.Color:=clRed
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

procedure Tfrmcuststyleshv1.ppReport6PreviewFormCreate(Sender: TObject);
begin
  ppReport6.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport6.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
 