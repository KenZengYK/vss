unit weeklysewindataformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppBands, ppCache, ppParameter, ppCtrls, ppPrnabl, myChkBox, ppViewr,
  DB, DBClient, GridsEh, DBGridEh, ppVar, ppStrtch, ppMemo, ppSubRpt;

type
  Tfrmweeklysewingdata = class(TForm)
    xh1: TCheckBox;
    xh2: TCheckBox;
    xh3: TCheckBox;
    xh4: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    title001: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine1: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine4: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine5: TppLine;
    ppLabel31: TppLabel;
    ppLine6: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine7: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine8: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLine9: TppLine;
    ppLabel48: TppLabel;
    ppShape2: TppShape;
    ppLine10: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLine11: TppLine;
    ppLabel53: TppLabel;
    ppLine12: TppLine;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLine13: TppLine;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine14: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLine15: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLine16: TppLine;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLine17: TppLine;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLine18: TppLine;
    ppLabel80: TppLabel;
    ppLine19: TppLine;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLine20: TppLine;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppShape3: TppShape;
    ppLine24: TppLine;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel95: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel96: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppDBText17: TppDBText;
    myDBCheckBox2: TmyDBCheckBox;
    ppDBText18: TppDBText;
    myDBCheckBox3: TmyDBCheckBox;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet2: TClientDataSet;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    calc001: TppDBCalc;
    calc002: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    calc003: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppShape6: TppShape;
    ppShape7: TppShape;
    calc004: TppDBCalc;
    calc005: TppDBCalc;
    calc006: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBText25: TppDBText;
    ppShape8: TppShape;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    cfm001: TppLabel;
    cfm002: TppLabel;
    ppLabel1: TppLabel;
    fty001: TppLabel;
    printdt001: TppLabel;
    ppLabel98: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape9: TppShape;
    ppShape13: TppShape;
    title002: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLabel119: TppLabel;
    ppLine49: TppLine;
    ppLabel121: TppLabel;
    ppLabel126: TppLabel;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLabel132: TppLabel;
    ppLabel134: TppLabel;
    ppLabel141: TppLabel;
    ppLine55: TppLine;
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
    ppLine81: TppLine;
    ppLabel193: TppLabel;
    fty002: TppLabel;
    ppLabel196: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppDetailBand2: TppDetailBand;
    ppShape14: TppShape;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppParameterList2: TppParameterList;
    ppLine64: TppLine;
    ppLabel99: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel120: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel133: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel142: TppLabel;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
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
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine68: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLabel163: TppLabel;
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
    ppDBText46: TppDBText;
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
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape10: TppShape;
    ppShape11: TppShape;
    title003: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLine54: TppLine;
    ppLine67: TppLine;
    ppLine69: TppLine;
    ppLabel176: TppLabel;
    ppLine87: TppLine;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLine88: TppLine;
    ppLabel181: TppLabel;
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
    ppLine102: TppLine;
    ppLabel182: TppLabel;
    fty003: TppLabel;
    ppLabel185: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLine103: TppLine;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLabel194: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLine113: TppLine;
    ppLabel219: TppLabel;
    ppLabel220: TppLabel;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppLabel230: TppLabel;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine120: TppLine;
    ppLabel236: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape12: TppShape;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppParameterList3: TppParameterList;
    ppLine100: TppLine;
    ppLabel180: TppLabel;
    ppLabel183: TppLabel;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppLabel213: TppLabel;
    ppLabel229: TppLabel;
    ppLabel214: TppLabel;
    ppLabel221: TppLabel;
    ppLabel222: TppLabel;
    ppLabel223: TppLabel;
    ppLine111: TppLine;
    ppLabel224: TppLabel;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLabel202: TppLabel;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLabel205: TppLabel;
    ppLabel206: TppLabel;
    ppLabel207: TppLabel;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine89: TppLine;
    ppLabel208: TppLabel;
    ppLabel209: TppLabel;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLabel235: TppLabel;
    ppLabel239: TppLabel;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLabel243: TppLabel;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine112: TppLine;
    ppLine119: TppLine;
    ppLabel244: TppLabel;
    ppLabel246: TppLabel;
    ppLine122: TppLine;
    ppLine123: TppLine;
    ppLine124: TppLine;
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
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppLabel251: TppLabel;
    ppLabel252: TppLabel;
    ppDBText88: TppDBText;
    ppReport4: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppShape15: TppShape;
    ppShape16: TppShape;
    title004: TppLabel;
    ppLabel254: TppLabel;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppLabel258: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppLabel264: TppLabel;
    ppLine125: TppLine;
    ppLine126: TppLine;
    ppLine127: TppLine;
    ppLabel265: TppLabel;
    ppLine128: TppLine;
    ppLabel266: TppLabel;
    ppLabel267: TppLabel;
    ppLine129: TppLine;
    ppLabel268: TppLabel;
    ppLine130: TppLine;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppLine139: TppLine;
    ppLabel269: TppLabel;
    fty004: TppLabel;
    ppLabel272: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLine141: TppLine;
    ppLabel273: TppLabel;
    ppLabel274: TppLabel;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    ppLabel277: TppLabel;
    ppLabel278: TppLabel;
    ppLabel279: TppLabel;
    ppLabel280: TppLabel;
    ppLabel281: TppLabel;
    ppLabel282: TppLabel;
    ppLabel299: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppShape17: TppShape;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppParameterList4: TppParameterList;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLabel253: TppLabel;
    ppLabel270: TppLabel;
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
    ppLabel295: TppLabel;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppLine140: TppLine;
    ppLine142: TppLine;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppLabel298: TppLabel;
    ppLabel300: TppLabel;
    ppLabel301: TppLabel;
    ppLabel302: TppLabel;
    ppLabel303: TppLabel;
    ppLabel304: TppLabel;
    ppLabel305: TppLabel;
    ppLabel306: TppLabel;
    ppLabel311: TppLabel;
    ppLabel312: TppLabel;
    ppLabel313: TppLabel;
    ppLabel314: TppLabel;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLine155: TppLine;
    ppLine156: TppLine;
    ppLine157: TppLine;
    ppLine158: TppLine;
    ppLabel307: TppLabel;
    ppLabel308: TppLabel;
    ppLabel309: TppLabel;
    ppLabel310: TppLabel;
    ppLabel315: TppLabel;
    ppLabel316: TppLabel;
    ppLabel317: TppLabel;
    ppLabel318: TppLabel;
    ppLabel319: TppLabel;
    ppLabel320: TppLabel;
    ppLabel321: TppLabel;
    ppLabel322: TppLabel;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLine159: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppShape18: TppShape;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText105: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    adt001: TppLabel;
    adt002: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel323: TppLabel;
    ppShape19: TppShape;
    ppLabel324: TppLabel;
    ppShape20: TppShape;
    ppSummaryBand3: TppSummaryBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel325: TppLabel;
    ppShape21: TppShape;
    ppLabel326: TppLabel;
    ppShape22: TppShape;
    ppSummaryBand4: TppSummaryBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel327: TppLabel;
    ppShape23: TppShape;
    ppLabel328: TppLabel;
    ppShape24: TppShape;
    dtrange001: TppLabel;
    dtrange002: TppLabel;
    printdt002: TppLabel;
    dtrange003: TppLabel;
    printdt003: TppLabel;
    dtrange004: TppLabel;
    printdt004: TppLabel;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppLine166: TppLine;
    ppLine167: TppLine;
    ppLine168: TppLine;
    ppLine169: TppLine;
    ppLine170: TppLine;
    ppLine171: TppLine;
    ppLine172: TppLine;
    ppLine173: TppLine;
    ppLine174: TppLine;
    ppLine175: TppLine;
    ppLine176: TppLine;
    ppLine177: TppLine;
    ppLine178: TppLine;
    ppLine179: TppLine;
    ppLine180: TppLine;
    ppLine181: TppLine;
    ppLine182: TppLine;
    ppLine183: TppLine;
    ppLine184: TppLine;
    ppLine185: TppLine;
    ppLine186: TppLine;
    ppLine187: TppLine;
    ppLine188: TppLine;
    ppLine189: TppLine;
    ppLine190: TppLine;
    ppLine191: TppLine;
    ppLine192: TppLine;
    ppLabel97: TppLabel;
    ppLine101: TppLine;
    ppLine121: TppLine;
    ppLine193: TppLine;
    ppLine194: TppLine;
    ppLine195: TppLine;
    ppLine196: TppLine;
    ppLine197: TppLine;
    ppLine198: TppLine;
    ppLine199: TppLine;
    ppLine200: TppLine;
    ppLine201: TppLine;
    ppLine202: TppLine;
    ppLine203: TppLine;
    ppLine204: TppLine;
    ppLine205: TppLine;
    ppLine206: TppLine;
    ppLine207: TppLine;
    ppLine208: TppLine;
    ppLine209: TppLine;
    ppLine210: TppLine;
    ppLine211: TppLine;
    ppLabel164: TppLabel;
    ppLabel179: TppLabel;
    ppLabel184: TppLabel;
    ppLine212: TppLine;
    ppLine213: TppLine;
    ppLine214: TppLine;
    ppLine215: TppLine;
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
    ppLine226: TppLine;
    ppLine227: TppLine;
    ppLine228: TppLine;
    ppLine229: TppLine;
    ppLine230: TppLine;
    ppLine231: TppLine;
    ppLine232: TppLine;
    ppLine233: TppLine;
    ppLine234: TppLine;
    ppLine235: TppLine;
    line001: TppLabel;
    prj001: TppLabel;
    style001: TppLabel;
    line002: TppLabel;
    prj002: TppLabel;
    style002: TppLabel;
    Label1: TLabel;
    line1001: TppLabel;
    prj1001: TppLabel;
    style1001: TppLabel;
    line1002: TppLabel;
    prj1002: TppLabel;
    style1002: TppLabel;
    line2001: TppLabel;
    prj2001: TppLabel;
    style2001: TppLabel;
    line2002: TppLabel;
    prj2002: TppLabel;
    style2002: TppLabel;
    line3001: TppLabel;
    prj3001: TppLabel;
    style3001: TppLabel;
    line3002: TppLabel;
    prj3002: TppLabel;
    style3002: TppLabel;
    qn001: TppLabel;
    qn002: TppLabel;
    clr001: TppLabel;
    clr002: TppLabel;
    clr1001: TppLabel;
    qn1001: TppLabel;
    clr1002: TppLabel;
    qn1002: TppLabel;
    clr2001: TppLabel;
    qn2001: TppLabel;
    clr2002: TppLabel;
    qn2002: TppLabel;
    clr3001: TppLabel;
    qn3001: TppLabel;
    clr3002: TppLabel;
    qn3002: TppLabel;
    ppLabel195: TppLabel;
    ppLabel245: TppLabel;
    ppLine236: TppLine;
    ppLabel271: TppLabel;
    ppLabel329: TppLabel;
    ppLabel330: TppLabel;
    ppLabel331: TppLabel;
    ppLabel332: TppLabel;
    ppDBText115: TppDBText;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppLabel333: TppLabel;
    ppLabel334: TppLabel;
    ppLabel335: TppLabel;
    ppLabel336: TppLabel;
    Label2: TLabel;
    Memo1: TMemo;
    chk1: TCheckBox;
    chk2: TCheckBox;
    ClientDataSet3: TClientDataSet;
    ppReport5: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppShape25: TppShape;
    ppShape26: TppShape;
    title005: TppLabel;
    ppLabel338: TppLabel;
    ppLabel339: TppLabel;
    ppLabel340: TppLabel;
    ppLabel341: TppLabel;
    ppLabel342: TppLabel;
    ppLabel343: TppLabel;
    ppLabel344: TppLabel;
    ppLabel345: TppLabel;
    ppLabel346: TppLabel;
    ppLabel347: TppLabel;
    ppLabel348: TppLabel;
    ppLine237: TppLine;
    ppLine238: TppLine;
    ppLine239: TppLine;
    ppLabel349: TppLabel;
    ppLine240: TppLine;
    ppLabel350: TppLabel;
    ppLabel351: TppLabel;
    ppLine241: TppLine;
    ppLabel352: TppLabel;
    ppLine242: TppLine;
    ppLine243: TppLine;
    ppLine244: TppLine;
    ppLine245: TppLine;
    ppLine246: TppLine;
    ppLine247: TppLine;
    ppLine248: TppLine;
    ppLine249: TppLine;
    ppLine250: TppLine;
    ppLine251: TppLine;
    ppLine252: TppLine;
    ppLabel353: TppLabel;
    fty005: TppLabel;
    ppLabel355: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine253: TppLine;
    ppLabel356: TppLabel;
    ppLabel357: TppLabel;
    ppLabel358: TppLabel;
    ppLabel359: TppLabel;
    ppLabel360: TppLabel;
    ppLabel361: TppLabel;
    ppLabel362: TppLabel;
    ppLabel363: TppLabel;
    ppLabel364: TppLabel;
    ppLabel365: TppLabel;
    ppLine254: TppLine;
    ppLabel366: TppLabel;
    ppLabel367: TppLabel;
    ppLabel368: TppLabel;
    ppLabel369: TppLabel;
    ppLabel370: TppLabel;
    ppLabel371: TppLabel;
    ppLabel372: TppLabel;
    ppLabel373: TppLabel;
    ppLabel374: TppLabel;
    ppLine255: TppLine;
    ppLine256: TppLine;
    ppLine257: TppLine;
    ppLine258: TppLine;
    ppLine259: TppLine;
    ppLine260: TppLine;
    ppLabel375: TppLabel;
    ppLine261: TppLine;
    ppLabel376: TppLabel;
    ppLabel377: TppLabel;
    ppLabel378: TppLabel;
    ppLabel379: TppLabel;
    ppLabel380: TppLabel;
    ppLabel381: TppLabel;
    ppLabel382: TppLabel;
    ppLabel383: TppLabel;
    ppLabel384: TppLabel;
    ppLabel385: TppLabel;
    ppLine262: TppLine;
    ppLabel386: TppLabel;
    ppLabel387: TppLabel;
    ppLabel388: TppLabel;
    ppLabel389: TppLabel;
    ppLabel390: TppLabel;
    ppLabel391: TppLabel;
    ppLabel392: TppLabel;
    ppLabel393: TppLabel;
    ppLabel394: TppLabel;
    ppLabel395: TppLabel;
    ppLabel396: TppLabel;
    ppLabel397: TppLabel;
    ppLine263: TppLine;
    ppLine264: TppLine;
    ppLine265: TppLine;
    ppLine266: TppLine;
    ppLabel398: TppLabel;
    ppLabel399: TppLabel;
    ppLabel400: TppLabel;
    ppLabel401: TppLabel;
    ppLabel402: TppLabel;
    ppLabel403: TppLabel;
    ppLabel404: TppLabel;
    ppLabel405: TppLabel;
    ppLabel406: TppLabel;
    ppLabel407: TppLabel;
    ppLabel408: TppLabel;
    ppLabel409: TppLabel;
    ppLabel410: TppLabel;
    ppLabel411: TppLabel;
    ppLabel412: TppLabel;
    ppLine267: TppLine;
    ppLine268: TppLine;
    ppLine269: TppLine;
    ppLine270: TppLine;
    ppLine271: TppLine;
    ppLine272: TppLine;
    ppLabel413: TppLabel;
    ppLabel414: TppLabel;
    ppLine273: TppLine;
    ppLine274: TppLine;
    ppLine275: TppLine;
    dtrange005: TppLabel;
    printdt005: TppLabel;
    ppLabel417: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppShape27: TppShape;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppDBText124: TppDBText;
    ppDBText125: TppDBText;
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
    ppLabel418: TppLabel;
    ppLabel419: TppLabel;
    ppLabel420: TppLabel;
    ppLabel421: TppLabel;
    ppLabel422: TppLabel;
    ppLabel423: TppLabel;
    ppLine276: TppLine;
    ppLine277: TppLine;
    ppLine278: TppLine;
    ppLine279: TppLine;
    ppLine280: TppLine;
    ppLine281: TppLine;
    ppLine282: TppLine;
    ppFooterBand5: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppShape28: TppShape;
    ppLabel424: TppLabel;
    ppLine283: TppLine;
    ppLine284: TppLine;
    ppLine285: TppLine;
    ppLine286: TppLine;
    ppLine287: TppLine;
    ppLine288: TppLine;
    line4002: TppLabel;
    prj4002: TppLabel;
    style4002: TppLabel;
    clr4002: TppLabel;
    qn4002: TppLabel;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppShape29: TppShape;
    ppLabel430: TppLabel;
    ppLine289: TppLine;
    ppLine290: TppLine;
    ppLine291: TppLine;
    ppLine292: TppLine;
    ppLine293: TppLine;
    ppLine294: TppLine;
    line4001: TppLabel;
    prj4001: TppLabel;
    style4001: TppLabel;
    clr4001: TppLabel;
    qn4001: TppLabel;
    ppParameterList5: TppParameterList;
    ppReport6: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppShape32: TppShape;
    title006: TppLabel;
    ppLabel437: TppLabel;
    ppLabel438: TppLabel;
    ppLabel439: TppLabel;
    ppLabel440: TppLabel;
    ppLabel441: TppLabel;
    ppLabel442: TppLabel;
    ppLabel443: TppLabel;
    ppLabel444: TppLabel;
    ppLabel445: TppLabel;
    ppLabel446: TppLabel;
    ppLabel447: TppLabel;
    ppLine295: TppLine;
    ppLine296: TppLine;
    ppLine297: TppLine;
    ppLabel448: TppLabel;
    ppLine298: TppLine;
    ppLabel449: TppLabel;
    ppLabel450: TppLabel;
    ppLine299: TppLine;
    ppLabel451: TppLabel;
    ppLine300: TppLine;
    ppLine301: TppLine;
    ppLine302: TppLine;
    ppLine303: TppLine;
    ppLine304: TppLine;
    ppLine305: TppLine;
    ppLine306: TppLine;
    ppLine307: TppLine;
    ppLine308: TppLine;
    ppLine309: TppLine;
    ppLabel452: TppLabel;
    fty006: TppLabel;
    ppLabel454: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLine310: TppLine;
    ppLabel455: TppLabel;
    ppLabel456: TppLabel;
    ppLabel457: TppLabel;
    ppLabel458: TppLabel;
    ppLabel459: TppLabel;
    ppLabel460: TppLabel;
    ppLabel461: TppLabel;
    ppLabel462: TppLabel;
    ppLabel463: TppLabel;
    ppLabel464: TppLabel;
    ppLabel465: TppLabel;
    ppLine311: TppLine;
    ppLine312: TppLine;
    ppLabel466: TppLabel;
    ppLabel467: TppLabel;
    ppLabel468: TppLabel;
    ppLabel469: TppLabel;
    ppLabel470: TppLabel;
    ppLabel471: TppLabel;
    ppLabel472: TppLabel;
    ppLabel473: TppLabel;
    ppLabel474: TppLabel;
    ppLabel475: TppLabel;
    ppLabel476: TppLabel;
    ppLabel477: TppLabel;
    ppLabel478: TppLabel;
    ppLabel479: TppLabel;
    ppLabel480: TppLabel;
    ppLabel481: TppLabel;
    ppLabel482: TppLabel;
    ppLine313: TppLine;
    ppLine314: TppLine;
    ppLine315: TppLine;
    ppLine316: TppLine;
    ppLine317: TppLine;
    ppLine318: TppLine;
    ppLine319: TppLine;
    ppLine320: TppLine;
    ppLabel483: TppLabel;
    ppLabel484: TppLabel;
    ppLabel485: TppLabel;
    ppLabel486: TppLabel;
    ppLabel487: TppLabel;
    ppLabel488: TppLabel;
    ppLabel489: TppLabel;
    ppLabel490: TppLabel;
    ppLabel491: TppLabel;
    ppLabel492: TppLabel;
    ppLabel493: TppLabel;
    ppLabel494: TppLabel;
    ppLine321: TppLine;
    ppLine322: TppLine;
    ppLine323: TppLine;
    ppLine324: TppLine;
    ppLine325: TppLine;
    ppLine326: TppLine;
    ppLabel495: TppLabel;
    ppLabel496: TppLabel;
    ppLabel497: TppLabel;
    ppLabel498: TppLabel;
    ppLabel499: TppLabel;
    ppLabel500: TppLabel;
    ppLabel501: TppLabel;
    ppLabel502: TppLabel;
    ppLabel503: TppLabel;
    ppLabel504: TppLabel;
    ppLabel505: TppLabel;
    ppLabel506: TppLabel;
    ppLine327: TppLine;
    ppLine328: TppLine;
    ppLine329: TppLine;
    ppLine330: TppLine;
    ppLine331: TppLine;
    dtrange006: TppLabel;
    printdt006: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppShape33: TppShape;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppDBText146: TppDBText;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppLine332: TppLine;
    ppLine333: TppLine;
    ppLine334: TppLine;
    ppLine335: TppLine;
    ppFooterBand6: TppFooterBand;
    ppSummaryBand6: TppSummaryBand;
    ppShape34: TppShape;
    ppLabel509: TppLabel;
    ppLine336: TppLine;
    ppLine337: TppLine;
    ppLine338: TppLine;
    ppLine339: TppLine;
    line5002: TppLabel;
    prj5002: TppLabel;
    style5002: TppLabel;
    clr5002: TppLabel;
    qn5002: TppLabel;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppShape35: TppShape;
    ppLabel515: TppLabel;
    ppLine340: TppLine;
    ppLine341: TppLine;
    ppLine342: TppLine;
    ppLine343: TppLine;
    line5001: TppLabel;
    prj5001: TppLabel;
    style5001: TppLabel;
    clr5001: TppLabel;
    qn5001: TppLabel;
    ppParameterList6: TppParameterList;
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
    ppLabel354: TppLabel;
    rwo001: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ClientDataSet4: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppTitleBand1: TppTitleBand;
    ppDetailBand7: TppDetailBand;
    ppSummaryBand7: TppSummaryBand;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppDBText150: TppDBText;
    ppDBText151: TppDBText;
    ppDBText152: TppDBText;
    ppLabel415: TppLabel;
    ppLabel416: TppLabel;
    ppLabel425: TppLabel;
    ppLabel426: TppLabel;
    ppDBText153: TppDBText;
    rn001: TppLabel;
    ppShape36: TppShape;
    ppLabel337: TppLabel;
    ppMemo1: TppMemo;
    ppLine344: TppLine;
    ppLine345: TppLine;
    ppLabel427: TppLabel;
    ppDBText154: TppDBText;
    ppShape37: TppShape;
    ppLabel428: TppLabel;
    ppLabel429: TppLabel;
    bq001: TppLabel;
    kq001: TppLabel;
    bq002: TppLabel;
    kq002: TppLabel;
    bq003: TppLabel;
    kq003: TppLabel;
    bq004: TppLabel;
    kq004: TppLabel;
    bq005: TppLabel;
    kq005: TppLabel;
    bq006: TppLabel;
    kq006: TppLabel;
    bq007: TppLabel;
    kq007: TppLabel;
    bq008: TppLabel;
    kq008: TppLabel;
    ppLabel431: TppLabel;
    ppLabel432: TppLabel;
    bq01: TppLabel;
    kq01: TppLabel;
    bq02: TppLabel;
    kq02: TppLabel;
    bq03: TppLabel;
    kq03: TppLabel;
    bq04: TppLabel;
    kq04: TppLabel;
    bq05: TppLabel;
    kq05: TppLabel;
    bq06: TppLabel;
    kq06: TppLabel;
    bq07: TppLabel;
    kq07: TppLabel;
    bq08: TppLabel;
    kq08: TppLabel;
    ppShape38: TppShape;
    ppShape39: TppShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure ppReport4PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand4BeforePrint(Sender: TObject);
    procedure ppSummaryBand4BeforePrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppReport5PreviewFormCreate(Sender: TObject);
    procedure ppReport6PreviewFormCreate(Sender: TObject);
    procedure ppGroupFooterBand5BeforePrint(Sender: TObject);
    procedure ppSummaryBand5BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand6BeforePrint(Sender: TObject);
    procedure ppSummaryBand6BeforePrint(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure printweeklysewingdata1(const tm: tdatetime);
  end;

var
  frmweeklysewingdata: Tfrmweeklysewingdata;

implementation

uses mainformu, worksheet;

{$R *.dfm}

procedure Tfrmweeklysewingdata.BitBtn1Click(Sender: TObject);
var
  yr,wk:integer;
  str1:string;
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    if memo1.text>'' then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        commandtext:='select f_year(date1) as x1,wkno from tplant_wk52 where tplant=''SL'' and opt_c=1 and date1=:x1';
        params[0].AsDate:=worksheet1.DateEdit1.Date;
        open;
        yr:=fieldbyname('x1').value;
        wk:=fieldbyname('wkno').value;
      end;
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select fty from qn_notepad_week where fty='''+worksheet1.edit6.text+''' and yr=:x1 and wkno=:x2';
        params[0].asinteger:=yr;
        params[1].asinteger:=wk;
        open;
        if not fieldbyname('fty').isnull then begin
          str1:='update qn_notepad_week set notepad='''+memo1.text+''' where fty='''+worksheet1.edit6.text+''' and yr='+inttostr(yr)+' and wkno='+inttostr(wk);
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
        end else begin
          with clientdataset3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            params.createparam(ftdate,'x4',ptinput);
            params.createparam(ftdate,'x5',ptinput);
            params.createparam(ftstring,'x6',ptinput);
            commandtext:='insert into qn_notepad_week(fty,yr,wkno,start_date,end_date,notepad) values(:x1,:x2,:x3,:x4,:x5,:x6)';
            params[0].asstring:=worksheet1.edit6.text;
            params[1].asinteger:=yr;
            params[2].asinteger:=wk;
            params[3].asdate:=worksheet1.dateedit1.date;
            params[4].asdate:=worksheet1.dateedit2.date;
            params[5].asstring:=memo1.text;
            execute;
          end;
        end;
      end;
    end;
    if (xh1.Checked) or (xh2.checked) or (xh3.checked) or (xh4.checked) then printweeklysewingdata1(tm);
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmweeklysewingdata.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmweeklysewingdata:=nil;
end;

procedure Tfrmweeklysewingdata.FormShow(Sender: TObject);
begin
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select notepad from qn_notepad_week where fty='''+worksheet1.edit6.text+''' and start_date=:x1 and end_date=:x2';
    params[0].AsDate:=worksheet1.DateEdit1.Date;
    params[1].AsDate:=worksheet1.DateEdit2.Date;
    open;
    if not fieldbyname('notepad').isnull then memo1.text:=fieldbyname('notepad').value;
  end;
end;

procedure Tfrmweeklysewingdata.ppDetailBand1BeforePrint(Sender: TObject);
begin
  adt001.caption:=''; adt002.caption:='';
  if not clientdataset1.fieldbyname('flag3').isnull then begin
    if pos('s',clientdataset1.fieldbyname('flag3').value)>0 then begin
      adt001.caption:=formatdatetime('mm/dd',clientdataset1.fieldbyname('cfksrq').value);
    end else if pos('x',clientdataset1.fieldbyname('flag3').value)>0 then begin
      adt001.caption:=formatdatetime('mm/dd',clientdataset1.fieldbyname('cfksrq').value);
      adt002.caption:=formatdatetime('mm/dd',clientdataset1.fieldbyname('cfwcrq').value);
    end;
  end;
  if clientdataset1.fieldbyname('dqty').value<0 then begin
    ppdbtext111.font.color:=clred;
    ppdbtext112.font.color:=clred;
    ppdbtext113.font.color:=clred;
    ppdbtext114.font.color:=clred;
  end else begin
    ppdbtext111.font.color:=clblack;
    ppdbtext112.font.color:=clblack;
    ppdbtext113.font.color:=clblack;
    ppdbtext114.font.color:=clblack;
  end;
end;

procedure Tfrmweeklysewingdata.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  s1:string;
begin
  calc003.caption:=formatfloat('#0',calc001.value+calc002.value);
  if ppdbcalc18.value<0 then begin
    ppdbcalc17.font.color:=clred;
    ppdbcalc18.font.color:=clred;
  end else begin
    ppdbcalc17.font.color:=clblack;
    ppdbcalc18.font.color:=clblack;
  end;
  s1:='';
  line001.caption:=''; prj001.caption:=''; style001.caption:='';
  {
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct cfm,count(*) as x1 from sp_qnsupplement_new(:x1,:x2) where fty=:x3 and ws=:x4 group by cfm';
    params[0].AsDate:=worksheet1.DateEdit1.Date;
    params[1].AsDate:=worksheet1.DateEdit2.Date;
    params[2].AsString:=clientdataset1.FieldByName('tplant').Value;
    params[3].AsString:=clientdataset1.FieldByName('tshop').Value;
    open;
    first;
    while not eof do begin
      if s1>'' then s1:=s1+'+'+fieldbyname('x1').AsString+fieldbyname('cfm').Value
      else s1:=fieldbyname('x1').AsString+fieldbyname('cfm').Value;
      application.ProcessMessages;
      next;
    end;
  end;
  }
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct pline) as x1,count(distinct j_no) as x2,count(distinct cstyle) as x3,count(distinct acol) as x4,count(*) as x5 '
                +'from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' and tshop='''+clientdataset1.FieldByName('tshop').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq<=:x1 and cfwcrq>=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and pline not in (select pline from tblline where tshop=''SC'')';
    params[0].AsDate:=worksheet1.DateEdit2.Date;
    params[1].AsDate:=worksheet1.DateEdit1.Date;
    open;
    if not fieldbyname('x1').isnull then line001.caption:=fieldbyname('x1').asstring;
    if not fieldbyname('x2').isnull then prj001.caption:=fieldbyname('x2').asstring;
    if not fieldbyname('x3').isnull then style001.caption:=fieldbyname('x3').asstring;
    if not fieldbyname('x4').isnull then clr001.caption:=fieldbyname('x4').asstring;
    if not fieldbyname('x5').isnull then qn001.caption:=fieldbyname('x5').asstring;
  end;
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(pqty) as x1,sum(lastqty) as x2,sum(lastqty+currqty) as x3,sum(nextqty) as x4,sum(defsah) as x5,sum(defqty) as x6,sum(asah) as x7,sum(aqty) as x8 '
                +'from tbl_sewingcontrolsheet where tm=:x1 and flag6 in (''B'',''U'') and ws='''+clientdataset1.FieldByName('tshop').Value+'''';
    params[0].AsDatetime:=clientdataset1.fieldbyname('tm').value;//worksheet1.DateEdit2.Date;
    open;
    if not fieldbyname('x1').isnull then bq001.caption:=formatfloat('#0;-#0;''''',fieldbyname('x1').value) else bq001.caption:='';
    //if not fieldbyname('x2').isnull then bq002.caption:=formatfloat('#0;-#0;''''',fieldbyname('x2').value) else
    bq002.caption:='';
    if not fieldbyname('x3').isnull then bq003.caption:=formatfloat('#0;-#0;''''',fieldbyname('x3').value) else bq003.caption:='';
    if not fieldbyname('x4').isnull then bq004.caption:=formatfloat('#0;-#0;''''',fieldbyname('x4').value) else bq004.caption:='';
    if not fieldbyname('x5').isnull then bq005.caption:=formatfloat('#0.0;-#0.0;''''',fieldbyname('x5').value) else bq005.caption:='';
    if not fieldbyname('x6').isnull then bq006.caption:=formatfloat('#0;-#0;''''',fieldbyname('x6').value) else bq006.caption:='';
    if not fieldbyname('x7').isnull then bq007.caption:=formatfloat('#0.0;-#0.0;''''',fieldbyname('x7').value) else bq007.caption:='';
    if not fieldbyname('x8').isnull then bq008.caption:=formatfloat('#0;-#0;''''',fieldbyname('x8').value) else bq008.caption:='';
  end;
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(pqty) as x1,sum(lastqty) as x2,sum(lastqty+currqty) as x3,sum(nextqty) as x4,sum(defsah) as x5,sum(defqty) as x6,sum(asah) as x7,sum(aqty) as x8 '
                +'from tbl_sewingcontrolsheet where tm=:x1 and flag6 in (''K'') and ws='''+clientdataset1.FieldByName('tshop').Value+'''';
    params[0].AsDatetime:=clientdataset1.fieldbyname('tm').value;//worksheet1.DateEdit2.Date;
    open;
    if not fieldbyname('x1').isnull then kq001.caption:=formatfloat('#0;-#0;''''',fieldbyname('x1').value) else kq001.caption:='';
    //if not fieldbyname('x2').isnull then kq002.caption:=formatfloat('#0;-#0;''''',fieldbyname('x2').value) else
    kq002.caption:='';
    if not fieldbyname('x3').isnull then kq003.caption:=formatfloat('#0;-#0;''''',fieldbyname('x3').value) else kq003.caption:='';
    if not fieldbyname('x4').isnull then kq004.caption:=formatfloat('#0;-#0;''''',fieldbyname('x4').value) else kq004.caption:='';
    if not fieldbyname('x5').isnull then kq005.caption:=formatfloat('#0.0;-#0.0;''''',fieldbyname('x5').value) else kq005.caption:='';
    if not fieldbyname('x6').isnull then kq006.caption:=formatfloat('#0;-#0;''''',fieldbyname('x6').value) else kq006.caption:='';
    if not fieldbyname('x7').isnull then kq007.caption:=formatfloat('#0.0;-#0.0;''''',fieldbyname('x7').value) else kq007.caption:='';
    if not fieldbyname('x8').isnull then kq008.caption:=formatfloat('#0;-#0;''''',fieldbyname('x8').value) else kq008.caption:='';
  end;
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(*) as x1 from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' and tshop='''+clientdataset1.FieldByName('tshop').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq<:x1 and cfwcrq>=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and pline not in (select pline from tblline where tshop=''SC'')';
    params[0].AsDate:=worksheet1.DateEdit1.Date;
    params[1].AsDate:=worksheet1.DateEdit1.Date;
    open;
    if not fieldbyname('x1').isnull then begin
      if fieldbyname('x1').value>0 then
      s1:=fieldbyname('x1').asstring+'Y';
    end;
  end;
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(*) as x1 from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' and tshop='''+clientdataset1.FieldByName('tshop').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq>=:x1 and cfksrq<=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and substr(pline,1,2)<>''TT''';
    params[0].AsDate:=worksheet1.DateEdit1.Date;
    params[1].AsDate:=worksheet1.DateEdit2.Date;
    open;
    if not fieldbyname('x1').isnull then begin
      if fieldbyname('x1').value>0 then begin
        if s1>'' then s1:=s1+'+'+fieldbyname('x1').asstring+'N'
        else s1:=fieldbyname('x1').asstring+'N';
      end;
    end;
  end;
  cfm001.Caption:=s1;
end;

procedure Tfrmweeklysewingdata.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct pline) as x1,count(distinct j_no) as x2,count(distinct cstyle) as x3,count(distinct acol) as x4,count(*) as x5 '
                +'from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' and tshop='''+clientdataset1.FieldByName('tshop').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq<=:x1 and cfwcrq>=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and substr(pline,1,2)<>''TT''';
    params[0].AsDate:=worksheet1.DateEdit2.Date;
    params[1].AsDate:=worksheet1.DateEdit1.Date;
    open;
    if not fieldbyname('x1').isnull then line1001.caption:=fieldbyname('x1').asstring;
    if not fieldbyname('x2').isnull then prj1001.caption:=fieldbyname('x2').asstring;
    if not fieldbyname('x3').isnull then style1001.caption:=fieldbyname('x3').asstring;
    if not fieldbyname('x4').isnull then clr1001.caption:=fieldbyname('x4').asstring;
    if not fieldbyname('x5').isnull then qn1001.caption:=fieldbyname('x5').asstring;
  end;
end;

procedure Tfrmweeklysewingdata.ppGroupFooterBand3BeforePrint(Sender: TObject);
begin
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct pline) as x1,count(distinct j_no) as x2,count(distinct cstyle) as x3,count(distinct acol) as x4,count(*) as x5 '
                +'from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' and tshop='''+clientdataset1.FieldByName('tshop').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq<=:x1 and cfwcrq>=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and substr(pline,1,2)<>''TT''';
    params[0].AsDate:=worksheet1.DateEdit2.Date;
    params[1].AsDate:=worksheet1.DateEdit1.Date;
    open;
    if not fieldbyname('x1').isnull then line2001.caption:=fieldbyname('x1').asstring;
    if not fieldbyname('x2').isnull then prj2001.caption:=fieldbyname('x2').asstring;
    if not fieldbyname('x3').isnull then style2001.caption:=fieldbyname('x3').asstring;
    if not fieldbyname('x4').isnull then clr2001.caption:=fieldbyname('x4').asstring;
    if not fieldbyname('x5').isnull then qn2001.caption:=fieldbyname('x5').asstring;
  end;
end;

procedure Tfrmweeklysewingdata.ppGroupFooterBand4BeforePrint(Sender: TObject);
begin
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct pline) as x1,count(distinct j_no) as x2,count(distinct cstyle) as x3,count(distinct acol) as x4,count(*) as x5 '
                +'from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' and tshop='''+clientdataset1.FieldByName('tshop').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq<=:x1 and cfwcrq>=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and substr(pline,1,2)<>''TT''';
    params[0].AsDate:=worksheet1.DateEdit2.Date;
    params[1].AsDate:=worksheet1.DateEdit1.Date;
    open;
    if not fieldbyname('x1').isnull then line3001.caption:=fieldbyname('x1').asstring;
    if not fieldbyname('x2').isnull then prj3001.caption:=fieldbyname('x2').asstring;
    if not fieldbyname('x3').isnull then style3001.caption:=fieldbyname('x3').asstring;
    if not fieldbyname('x4').isnull then clr3001.caption:=fieldbyname('x4').asstring;
    if not fieldbyname('x5').isnull then qn3001.caption:=fieldbyname('x5').asstring;
  end;
end;

procedure Tfrmweeklysewingdata.ppGroupFooterBand5BeforePrint(Sender: TObject);
begin
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct pline) as x1,count(distinct j_no) as x2,count(distinct cstyle) as x3,count(distinct acol) as x4,count(*) as x5 '
                +'from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' and tshop='''+clientdataset1.FieldByName('tshop').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq<=:x1 and cfwcrq>=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and substr(pline,1,2)<>''TT''';
    params[0].AsDate:=worksheet1.DateEdit2.Date;
    params[1].AsDate:=worksheet1.DateEdit1.Date;
    open;
    if not fieldbyname('x1').isnull then line4001.caption:=fieldbyname('x1').asstring;
    if not fieldbyname('x2').isnull then prj4001.caption:=fieldbyname('x2').asstring;
    if not fieldbyname('x3').isnull then style4001.caption:=fieldbyname('x3').asstring;
    if not fieldbyname('x4').isnull then clr4001.caption:=fieldbyname('x4').asstring;
    if not fieldbyname('x5').isnull then qn4001.caption:=fieldbyname('x5').asstring;
  end;
end;

procedure Tfrmweeklysewingdata.ppGroupFooterBand6BeforePrint(Sender: TObject);
begin
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct pline) as x1,count(distinct j_no) as x2,count(distinct cstyle) as x3,count(distinct acol) as x4,count(*) as x5 '
                +'from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' and tshop='''+clientdataset1.FieldByName('tshop').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq<=:x1 and cfwcrq>=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and substr(pline,1,2)<>''TT''';
    params[0].AsDate:=worksheet1.DateEdit2.Date;
    params[1].AsDate:=worksheet1.DateEdit1.Date;
    open;
    if not fieldbyname('x1').isnull then line5001.caption:=fieldbyname('x1').asstring;
    if not fieldbyname('x2').isnull then prj5001.caption:=fieldbyname('x2').asstring;
    if not fieldbyname('x3').isnull then style5001.caption:=fieldbyname('x3').asstring;
    if not fieldbyname('x4').isnull then clr5001.caption:=fieldbyname('x4').asstring;
    if not fieldbyname('x5').isnull then qn5001.caption:=fieldbyname('x5').asstring;
  end;
end;

procedure Tfrmweeklysewingdata.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmweeklysewingdata.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmweeklysewingdata.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport3.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmweeklysewingdata.ppReport4PreviewFormCreate(Sender: TObject);
begin
  ppReport4.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport4.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmweeklysewingdata.ppReport5PreviewFormCreate(Sender: TObject);
begin
  ppReport5.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport5.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmweeklysewingdata.ppReport6PreviewFormCreate(Sender: TObject);
begin
  ppReport6.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport6.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmweeklysewingdata.ppSummaryBand1BeforePrint(Sender: TObject);
var
  s1:string;
begin
  calc006.caption:=formatfloat('#0',calc004.value+calc005.value);
  if ppdbcalc20.value<0 then begin
    ppdbcalc19.font.color:=clred;
    ppdbcalc20.font.color:=clred;
  end else begin
    ppdbcalc19.font.color:=clblack;
    ppdbcalc20.font.color:=clblack;
  end;
  s1:='';
  {
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select distinct cfm,count(*) as x1 from sp_qnsupplement_new(:x1,:x2) where fty=:x3 and substr(line,1,2)<>''TT'' group by cfm';
    params[0].AsDate:=worksheet1.DateEdit1.Date;
    params[1].AsDate:=worksheet1.DateEdit2.Date;
    params[2].AsString:=clientdataset1.FieldByName('tplant').Value;
    open;
    first;
    while not eof do begin
      if s1>'' then s1:=s1+'+'+fieldbyname('x1').AsString+fieldbyname('cfm').Value
      else s1:=fieldbyname('x1').AsString+fieldbyname('cfm').Value;
      application.ProcessMessages;
      next;
    end;
  end;
  }
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct pline) as x1,count(distinct j_no) as x2,count(distinct cstyle) as x3,count(distinct acol) as x4,count(*) as x5 '
                +'from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq<=:x1 and cfwcrq>=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and substr(pline,1,2)<>''TT''';
    params[0].AsDate:=worksheet1.DateEdit2.Date;
    params[1].AsDate:=worksheet1.DateEdit1.Date;
    open;
    if not fieldbyname('x1').isnull then line002.caption:=fieldbyname('x1').asstring;
    if not fieldbyname('x2').isnull then prj002.caption:=fieldbyname('x2').asstring;
    if not fieldbyname('x3').isnull then style002.caption:=fieldbyname('x3').asstring;
    if not fieldbyname('x4').isnull then clr002.caption:=fieldbyname('x4').asstring;
    if not fieldbyname('x5').isnull then qn002.caption:=fieldbyname('x5').asstring;
  end;
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(*) as x1 from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq<:x1 and cfwcrq>=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and substr(pline,1,2)<>''TT''';
    params[0].AsDate:=worksheet1.DateEdit1.Date;
    params[1].AsDate:=worksheet1.DateEdit1.Date;
    open;
    if not fieldbyname('x1').isnull then begin
      if fieldbyname('x1').value>0 then
      s1:=fieldbyname('x1').asstring+'Y';
    end;
  end;
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(*) as x1 from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq>=:x1 and cfksrq<=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and substr(pline,1,2)<>''TT''';
    params[0].AsDate:=worksheet1.DateEdit1.Date;
    params[1].AsDate:=worksheet1.DateEdit2.Date;
    open;
    if not fieldbyname('x1').isnull then begin
      if fieldbyname('x1').value>0 then begin
        if s1>'' then s1:=s1+'+'+fieldbyname('x1').asstring+'N'
        else s1:=fieldbyname('x1').asstring+'N';
      end;
    end;
  end;
  cfm002.Caption:=s1;
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select sum(qty) as x1 from sp_sewingplanningcontrolsheet1(:x1,:x2,:x3)';
    params[0].Asstring:=worksheet1.Edit6.text;
    params[1].AsDate:=worksheet1.DateEdit1.Date;
    params[2].AsDate:=worksheet1.DateEdit2.Date;
    open;
    rwo001.caption:=fieldbyname('x1').asstring;
  end;
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(pqty) as x1,sum(lastqty) as x2,sum(lastqty+currqty) as x3,sum(nextqty) as x4,sum(defsah) as x5,sum(defqty) as x6,sum(asah) as x7,sum(aqty) as x8 '
                +'from tbl_sewingcontrolsheet where tm=:x1 and flag6 in (''B'',''U'') and fty='''+worksheet1.edit6.text+'''';
    params[0].AsDatetime:=clientdataset1.fieldbyname('tm').value;//worksheet1.DateEdit2.Date;
    open;
    if not fieldbyname('x1').isnull then bq01.caption:=formatfloat('#0;-#0;''''',fieldbyname('x1').value) else bq01.caption:='';
    //if not fieldbyname('x2').isnull then bq02.caption:=formatfloat('#0;-#0;''''',fieldbyname('x2').value) else
    bq02.caption:='';
    if not fieldbyname('x3').isnull then bq03.caption:=formatfloat('#0;-#0;''''',fieldbyname('x3').value) else bq03.caption:='';
    if not fieldbyname('x4').isnull then bq04.caption:=formatfloat('#0;-#0;''''',fieldbyname('x4').value) else bq04.caption:='';
    if not fieldbyname('x5').isnull then bq05.caption:=formatfloat('#0.0;-#0.0;''''',fieldbyname('x5').value) else bq05.caption:='';
    if not fieldbyname('x6').isnull then bq06.caption:=formatfloat('#0;-#0;''''',fieldbyname('x6').value) else bq06.caption:='';
    if not fieldbyname('x7').isnull then bq07.caption:=formatfloat('#0.0;-#0.0;''''',fieldbyname('x7').value) else bq07.caption:='';
    if not fieldbyname('x8').isnull then bq08.caption:=formatfloat('#0;-#0;''''',fieldbyname('x8').value) else bq08.caption:='';
  end;
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(pqty) as x1,sum(lastqty) as x2,sum(lastqty+currqty) as x3,sum(nextqty) as x4,sum(defsah) as x5,sum(defqty) as x6,sum(asah) as x7,sum(aqty) as x8 '
                +'from tbl_sewingcontrolsheet where tm=:x1 and flag6 in (''K'') and fty='''+worksheet1.edit6.text+'''';
    params[0].AsDatetime:=clientdataset1.fieldbyname('tm').value;//worksheet1.DateEdit2.Date;
    open;
    if not fieldbyname('x1').isnull then kq01.caption:=formatfloat('#0;-#0;''''',fieldbyname('x1').value) else kq01.caption:='';
    //if not fieldbyname('x2').isnull then kq02.caption:=formatfloat('#0;-#0;''''',fieldbyname('x2').value) else
    kq02.caption:='';
    if not fieldbyname('x3').isnull then kq03.caption:=formatfloat('#0;-#0;''''',fieldbyname('x3').value) else kq03.caption:='';
    if not fieldbyname('x4').isnull then kq04.caption:=formatfloat('#0;-#0;''''',fieldbyname('x4').value) else kq04.caption:='';
    if not fieldbyname('x5').isnull then kq05.caption:=formatfloat('#0.0;-#0.0;''''',fieldbyname('x5').value) else kq05.caption:='';
    if not fieldbyname('x6').isnull then kq06.caption:=formatfloat('#0;-#0;''''',fieldbyname('x6').value) else kq06.caption:='';
    if not fieldbyname('x7').isnull then kq07.caption:=formatfloat('#0.0;-#0.0;''''',fieldbyname('x7').value) else kq07.caption:='';
    if not fieldbyname('x8').isnull then kq08.caption:=formatfloat('#0;-#0;''''',fieldbyname('x8').value) else kq08.caption:='';
  end;
end;

procedure Tfrmweeklysewingdata.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct pline) as x1,count(distinct j_no) as x2,count(distinct cstyle) as x3,count(distinct acol) as x4,count(*) as x5 '
                +'from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq<=:x1 and cfwcrq>=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and substr(pline,1,2)<>''TT''';
    params[0].AsDate:=worksheet1.DateEdit2.Date;
    params[1].AsDate:=worksheet1.DateEdit1.Date;
    open;
    if not fieldbyname('x1').isnull then line1002.caption:=fieldbyname('x1').asstring;
    if not fieldbyname('x2').isnull then prj1002.caption:=fieldbyname('x2').asstring;
    if not fieldbyname('x3').isnull then style1002.caption:=fieldbyname('x3').asstring;
    if not fieldbyname('x4').isnull then clr1002.caption:=fieldbyname('x4').asstring;
    if not fieldbyname('x5').isnull then qn1002.caption:=fieldbyname('x5').asstring;
  end;
end;

procedure Tfrmweeklysewingdata.ppSummaryBand3BeforePrint(Sender: TObject);
begin
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct pline) as x1,count(distinct j_no) as x2,count(distinct cstyle) as x3,count(distinct acol) as x4,count(*) as x5 '
                +'from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq<=:x1 and cfwcrq>=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and substr(pline,1,2)<>''TT''';
    params[0].AsDate:=worksheet1.DateEdit2.Date;
    params[1].AsDate:=worksheet1.DateEdit1.Date;
    open;
    if not fieldbyname('x1').isnull then line2002.caption:=fieldbyname('x1').asstring;
    if not fieldbyname('x2').isnull then prj2002.caption:=fieldbyname('x2').asstring;
    if not fieldbyname('x3').isnull then style2002.caption:=fieldbyname('x3').asstring;
    if not fieldbyname('x4').isnull then clr2002.caption:=fieldbyname('x4').asstring;
    if not fieldbyname('x5').isnull then qn2002.caption:=fieldbyname('x5').asstring;
  end;
end;

procedure Tfrmweeklysewingdata.ppSummaryBand4BeforePrint(Sender: TObject);
begin
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct pline) as x1,count(distinct j_no) as x2,count(distinct cstyle) as x3,count(distinct acol) as x4,count(*) as x5 '
                +'from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq<=:x1 and cfwcrq>=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and substr(pline,1,2)<>''TT''';
    params[0].AsDate:=worksheet1.DateEdit2.Date;
    params[1].AsDate:=worksheet1.DateEdit1.Date;
    open;
    if not fieldbyname('x1').isnull then line3002.caption:=fieldbyname('x1').asstring;
    if not fieldbyname('x2').isnull then prj3002.caption:=fieldbyname('x2').asstring;
    if not fieldbyname('x3').isnull then style3002.caption:=fieldbyname('x3').asstring;
    if not fieldbyname('x4').isnull then clr3002.caption:=fieldbyname('x4').asstring;
    if not fieldbyname('x5').isnull then qn3002.caption:=fieldbyname('x5').asstring;
  end;
end;

procedure Tfrmweeklysewingdata.ppSummaryBand5BeforePrint(Sender: TObject);
begin
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct pline) as x1,count(distinct j_no) as x2,count(distinct cstyle) as x3,count(distinct acol) as x4,count(*) as x5 '
                +'from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq<=:x1 and cfwcrq>=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and substr(pline,1,2)<>''TT''';
    params[0].AsDate:=worksheet1.DateEdit2.Date;
    params[1].AsDate:=worksheet1.DateEdit1.Date;
    open;
    if not fieldbyname('x1').isnull then line4002.caption:=fieldbyname('x1').asstring;
    if not fieldbyname('x2').isnull then prj4002.caption:=fieldbyname('x2').asstring;
    if not fieldbyname('x3').isnull then style4002.caption:=fieldbyname('x3').asstring;
    if not fieldbyname('x4').isnull then clr4002.caption:=fieldbyname('x4').asstring;
    if not fieldbyname('x5').isnull then qn4002.caption:=fieldbyname('x5').asstring;
  end;
end;

procedure Tfrmweeklysewingdata.ppSummaryBand6BeforePrint(Sender: TObject);
begin
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct pline) as x1,count(distinct j_no) as x2,count(distinct cstyle) as x3,count(distinct acol) as x4,count(*) as x5 '
                +'from tblshedule where tplant='''+clientdataset1.FieldByName('tplant').Value+''' '//and substr(pline,1,2)<>''TT'' '
                +'and cfksrq<=:x1 and cfwcrq>=:x2';
    if worksheet1.edit4.text='SC' then commandtext:=commandtext+' and pline in (select pline from tblline where tshop=''SC'')'
    else commandtext:=commandtext+' and substr(pline,1,2)<>''TT''';
    params[0].AsDate:=worksheet1.DateEdit2.Date;
    params[1].AsDate:=worksheet1.DateEdit1.Date;
    open;
    if not fieldbyname('x1').isnull then line5002.caption:=fieldbyname('x1').asstring;
    if not fieldbyname('x2').isnull then prj5002.caption:=fieldbyname('x2').asstring;
    if not fieldbyname('x3').isnull then style5002.caption:=fieldbyname('x3').asstring;
    if not fieldbyname('x4').isnull then clr5002.caption:=fieldbyname('x4').asstring;
    if not fieldbyname('x5').isnull then qn5002.caption:=fieldbyname('x5').asstring;
  end;
end;

procedure Tfrmweeklysewingdata.ppTitleBand1BeforePrint(Sender: TObject);
var
  s1:string;
  q1:integer;
begin
  s1:='';  q1:=0;
  with clientdataset2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select distinct wc,rn,sum(scqty) as x1 from sp_sewingplanningcontrolsheet4(:x1,:x2,:x3) group by wc,rn order by wc';
    params[0].asstring:=worksheet1.edit6.text;
    params[1].asdate:=worksheet1.dateedit1.date;
    params[2].asdate:=worksheet1.dateedit2.date;
    open;
    first;
    while not eof do begin
      q1:=q1+fieldbyname('x1').value;
      if s1>'' then s1:=s1+'  +  '+fieldbyname('x1').asstring+' '+fieldbyname('rn').value
      else s1:=fieldbyname('x1').asstring+' '+fieldbyname('rn').value;
      application.processmessages;
      next;
    end;
  end;
  rn001.caption:='輪制單數和數頁數相差 '+rwo001.caption+' - '+inttostr(ppdbcalc8.value)+' = '+inttostr(q1)+'  ['+s1+']';
end;

procedure Tfrmweeklysewingdata.printweeklysewingdata1(const tm: tdatetime);
var
  pline,tplant:string;
  wk:integer;
begin
      pline:=worksheet1.edit2.text;
      tplant:=worksheet1.edit6.text;
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        commandtext:='select wkno from tplant_wk52 where tplant=''SL'' and opt_c=1 and date1=:x1';
        params[0].asdate:=date;
        open;
        wk:=fieldbyname('wkno').value;
      end;
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftdatetime,'x3',ptinput);
        if tplant>'' then begin
          params.createparam(ftstring,'x4',ptinput);
          commandtext:='execute procedure sp_qnsupplement_new1_fty(:x1,:x2,:x3,:x4)';
        end else begin
          if worksheet1.edit4.text='SC' then
          commandtext:='execute procedure sp_qnsupplement_new1_tt(:x1,:x2,:x3)'
          else commandtext:='execute procedure sp_qnsupplement_new1(:x1,:x2,:x3)';
        end;
        params[0].asdate:=worksheet1.dateedit1.date;
        params[1].asdate:=worksheet1.dateedit2.date;
        params[2].asdatetime:=tm;
        if tplant>'' then
        params[3].asstring:=tplant;
        execute;
      end;
      with clientdataset4 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        if worksheet1.edit4.text='SC' then
        commandtext:='select * from sp_sewingplanningcontrolsheet4_tt(:x1,:x2,:x3) order by wc,j_no,j2_job,cwo,rwo,fccs'
        else commandtext:='select * from sp_sewingplanningcontrolsheet4(:x1,:x2,:x3) order by wc,j_no,j2_job,cwo,rwo,fccs';
        params[0].asstring:=worksheet1.edit6.text;
        params[1].asdate:=worksheet1.dateedit1.date;
        params[2].asdate:=worksheet1.dateedit2.date;
        open;
      end;
      with clientdataset1 do begin
        close;
        params.clear;
        //params.createparam(ftdate,'x1',ptinput);
        //params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftdatetime,'x1',ptinput);
        //commandtext:='select a.*,b.*,a.j2_job||''-''||a.cwo||''-''||a.rwo||''-''||a.fccs as qn from tblshedule a,sp_qnsupplement_new(:x1,:x2) b where a.pline=b.line and a.seq=b.seq1';
        commandtext:='select a.*,b.*,a.j2_job||''-''||a.cwo||''-''||a.rwo||''-''||a.fccs as qn from tblshedule a,tbl_sewingcontrolsheet b where b.tm=:x1 and a.pline=b.line and a.seq=b.seq1';
        if worksheet1.edit4.text='SC' then begin
          if pline>'' then commandtext:=commandtext+' and upper(a.pline)='''+pline+''''
          else commandtext:=commandtext+' and a.pline in (select pline from tblline c where a.tplant=c.tplant and c.tshop=''SC'')';
        end else begin
          if pline>'' then commandtext:=commandtext+' and upper(a.pline)='''+pline+''''
          else commandtext:=commandtext+' and substr(a.pline,1,2)<>''TT''';
        end;
        if tplant>'' then commandtext:=commandtext+' and a.tplant='''+tplant+'''';
        commandtext:=commandtext+' order by a.tshop,a.pline,a.seq';
        //params[0].asdate:=worksheet1.dateedit1.date;
        //params[1].asdate:=worksheet1.dateedit2.date;
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('qn').isnull then begin
          if xh1.checked then begin
            title001.caption:=xh1.caption;//'週 '+inttostr(wk)+' 縫合生產之計劃和執控表';
            fty001.Caption:=tplant;
            dtrange001.caption:=label1.caption+' (日期 從 '+formatdatetime('yyyy/MM/dd',worksheet1.dateedit1.date)+'  到  '+formatdatetime('yyyy/MM/dd',worksheet1.dateedit2.date)+') ';
            printdt001.caption:='打印日期:  '+formatdatetime('yyyy/MM/dd',date)+' (週 '+inttostr(wk)+') ';
            ppmemo1.text:=memo1.text;
            ppReport1.Print;
          end;
          if xh2.checked then begin
            title002.caption:=xh2.caption;
            fty002.Caption:=tplant;
            dtrange002.caption:=label1.caption+' (日期 從 '+formatdatetime('yyyy/MM/dd',worksheet1.dateedit1.date)+'  到  '+formatdatetime('yyyy/MM/dd',worksheet1.dateedit2.date)+') ';
            printdt002.caption:='打印日期:  '+formatdatetime('yyyy/MM/dd',date)+' (週 '+inttostr(wk)+') ';
            ppReport2.Print;
          end;
          if chk1.checked then begin
            if xh3.checked then begin
              title003.caption:=xh3.caption+' ['+chk1.caption+']';
              fty003.Caption:=tplant;
              dtrange003.caption:=label1.caption+' (日期 從 '+formatdatetime('yyyy/MM/dd',worksheet1.dateedit1.date)+'  到  '+formatdatetime('yyyy/MM/dd',worksheet1.dateedit2.date)+') ';
              printdt003.caption:='打印日期:  '+formatdatetime('yyyy/MM/dd',date)+' (週 '+inttostr(wk)+') ';
              ppReport3.Print;
            end;
            if xh4.checked then begin
              title004.caption:=xh4.caption+' ['+chk1.caption+']';
              fty004.Caption:=tplant;
              dtrange004.caption:=label1.caption+' (日期 從 '+formatdatetime('yyyy/MM/dd',worksheet1.dateedit1.date)+'  到  '+formatdatetime('yyyy/MM/dd',worksheet1.dateedit2.date)+') ';
              printdt004.caption:='打印日期:  '+formatdatetime('yyyy/MM/dd',date)+' (週 '+inttostr(wk)+') ';
              ppReport4.Print;
            end;
          end;
          if chk2.checked then begin
            if xh3.checked then begin
              title005.caption:=xh3.caption+' ['+chk2.caption+']';
              fty005.Caption:=tplant;
              dtrange005.caption:=label1.caption+' (日期 從 '+formatdatetime('yyyy/MM/dd',worksheet1.dateedit1.date)+'  到  '+formatdatetime('yyyy/MM/dd',worksheet1.dateedit2.date)+') ';
              printdt005.caption:='打印日期:  '+formatdatetime('yyyy/MM/dd',date)+' (週 '+inttostr(wk)+') ';
              ppReport5.Print;
            end;
            if xh4.checked then begin
              title006.caption:=xh4.caption+' ['+chk2.caption+']';
              fty006.Caption:=tplant;
              dtrange006.caption:=label1.caption+' (日期 從 '+formatdatetime('yyyy/MM/dd',worksheet1.dateedit1.date)+'  到  '+formatdatetime('yyyy/MM/dd',worksheet1.dateedit2.date)+') ';
              printdt006.caption:='打印日期:  '+formatdatetime('yyyy/MM/dd',date)+' (週 '+inttostr(wk)+') ';
              ppReport6.Print;
            end;
          end;
        end;
      end;
end;

end.
