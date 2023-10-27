unit pdntransitflowdetailsformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  DBClient, ppPrnabl, ppCtrls, ppBands, ppCache, ppParameter, ppStrtch, ppSubRpt,
  ppVar, ppPageBreak, ppMemo;

type
  Tfrmpdn_transitflowdetails = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppSummaryBand1: TppSummaryBand;
    title001: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel9: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppHeaderBand2: TppHeaderBand;
    fty001: TppLabel;
    pdn001: TppLabel;
    wk001: TppLabel;
    ver001: TppLabel;
    manifest001: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel14: TppLabel;
    ppDBText3: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText7: TppDBText;
    ppLabel25: TppLabel;
    ppDBText8: TppDBText;
    ppLabel26: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel46: TppLabel;
    ppLabel54: TppLabel;
    ppLabel62: TppLabel;
    ppLabel70: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
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
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    pk_d001: TppDBText;
    ppDBText14: TppDBText;
    t1_d001: TppDBText;
    ppDBText16: TppDBText;
    t2_d001: TppDBText;
    ppDBText18: TppDBText;
    t3_d001: TppDBText;
    ppDBText20: TppDBText;
    aq_d001: TppDBText;
    ppDBText22: TppDBText;
    t4_d001: TppDBText;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape6: TppShape;
    ppLabel112: TppLabel;
    ppShape8: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    pdn_q002: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    pk_d002: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    t1_d002: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    t2_d002: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    t3_d002: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    aq_d002: TppDBCalc;
    ppShape10: TppShape;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine45: TppLine;
    ppDBCalc14: TppDBCalc;
    t4_d002: TppDBCalc;
    ppLabel113: TppLabel;
    t4_p002: TppLabel;
    ppLabel52: TppLabel;
    ppLabel55: TppLabel;
    ppLabel83: TppLabel;
    ppLabel116: TppLabel;
    ppLabel118: TppLabel;
    ppLabel120: TppLabel;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    t3_d003: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    aq_d003: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    t4_d003: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    pdn_q003: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    pk_d003: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    t1_d003: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    t2_d003: TppDBCalc;
    ppLabel122: TppLabel;
    t4_p003: TppLabel;
    ppShape11: TppShape;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppShape36: TppShape;
    ppShape48: TppShape;
    ppShape49: TppShape;
    aq_d201: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText75: TppDBText;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    t4_d201: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppShape50: TppShape;
    ppShape51: TppShape;
    ppShape52: TppShape;
    ppShape53: TppShape;
    ppShape56: TppShape;
    ppShape57: TppShape;
    ppShape58: TppShape;
    ppShape59: TppShape;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppLabel258: TppLabel;
    ppLabel259: TppLabel;
    ppLabel262: TppLabel;
    ppLabel267: TppLabel;
    ppLabel273: TppLabel;
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
    ppLabel289: TppLabel;
    ppLabel290: TppLabel;
    ppLabel291: TppLabel;
    ppLabel292: TppLabel;
    ppLabel293: TppLabel;
    ppLabel294: TppLabel;
    ppLabel295: TppLabel;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppLabel300: TppLabel;
    ppLabel301: TppLabel;
    ppLabel303: TppLabel;
    ppLabel304: TppLabel;
    ppLabel307: TppLabel;
    ppLabel308: TppLabel;
    ppLabel309: TppLabel;
    ppLabel310: TppLabel;
    ppLabel312: TppLabel;
    ppLabel316: TppLabel;
    ppLabel322: TppLabel;
    ppLabel326: TppLabel;
    ppLabel350: TppLabel;
    ppLabel351: TppLabel;
    ppLabel352: TppLabel;
    ppLabel353: TppLabel;
    ppLabel354: TppLabel;
    ppLabel355: TppLabel;
    ppLabel356: TppLabel;
    ppLabel357: TppLabel;
    ppLabel358: TppLabel;
    ppLabel361: TppLabel;
    ppLabel362: TppLabel;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppLine120: TppLine;
    ppLine122: TppLine;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLine129: TppLine;
    ppLine130: TppLine;
    ppLine131: TppLine;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppLine142: TppLine;
    ppLine143: TppLine;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLine153: TppLine;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppShape60: TppShape;
    ppShape61: TppShape;
    ppShape62: TppShape;
    ppDBCalc47: TppDBCalc;
    ppDBCalc58: TppDBCalc;
    pdn_q202: TppDBCalc;
    ppDBCalc64: TppDBCalc;
    aq_d202: TppDBCalc;
    ppDBCalc66: TppDBCalc;
    t4_d202: TppDBCalc;
    ppLabel364: TppLabel;
    t4_p202: TppLabel;
    ppLine155: TppLine;
    ppLine156: TppLine;
    ppLine157: TppLine;
    ppLabel366: TppLabel;
    stage001: TppLabel;
    ppLabel1: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel92: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel56: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel63: TppLabel;
    ppLabel65: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel45: TppLabel;
    ppLabel102: TppLabel;
    aq_d101: TppDBText;
    pk_d101: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
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
    ppDBText34: TppDBText;
    ppDBText36: TppDBText;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppShape15: TppShape;
    ppShape16: TppShape;
    t1_d101: TppDBText;
    t2_d101: TppDBText;
    t3_d101: TppDBText;
    t4_d101: TppDBText;
    ppLabel180: TppLabel;
    t4_p101: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    t3_d102: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    aq_d102: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    t4_d102: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    pdn_q102: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    pk_d102: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    t1_d102: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    t2_d102: TppDBCalc;
    ppLabel182: TppLabel;
    t4_p102: TppLabel;
    ppLabel184: TppLabel;
    prj001: TppLabel;
    ppLabel186: TppLabel;
    wo001: TppLabel;
    ppLabel188: TppLabel;
    rwo001: TppLabel;
    ppLabel190: TppLabel;
    qn001: TppLabel;
    ppLabel192: TppLabel;
    custpo001: TppLabel;
    ppLabel194: TppLabel;
    cstyle001: TppLabel;
    ppLabel196: TppLabel;
    acol001: TppLabel;
    ppLabel198: TppLabel;
    cname001: TppLabel;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape22: TppShape;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLine72: TppLine;
    ppDBText35: TppDBText;
    ppDBText41: TppDBText;
    ppLabel204: TppLabel;
    ppLabel205: TppLabel;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppLine74: TppLine;
    ppDBText42: TppDBText;
    ppPageBreak1: TppPageBreak;
    ppLabel209: TppLabel;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLabel219: TppLabel;
    ppLabel220: TppLabel;
    ppLabel221: TppLabel;
    ppLabel222: TppLabel;
    ppLabel223: TppLabel;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppLabel229: TppLabel;
    ppLabel230: TppLabel;
    ppLabel231: TppLabel;
    ppLine75: TppLine;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppLabel238: TppLabel;
    ppLabel260: TppLabel;
    ppLine77: TppLine;
    ppDBText45: TppDBText;
    ppLabel261: TppLabel;
    ppLabel264: TppLabel;
    ppShape29: TppShape;
    t4_p201: TppLabel;
    ppLabel315: TppLabel;
    prj002: TppLabel;
    ppLabel318: TppLabel;
    wo002: TppLabel;
    ppLabel321: TppLabel;
    rwo002: TppLabel;
    ppLabel325: TppLabel;
    qn002: TppLabel;
    ppLabel328: TppLabel;
    custpo002: TppLabel;
    ppLabel330: TppLabel;
    cstyle002: TppLabel;
    ppLabel332: TppLabel;
    acol002: TppLabel;
    ppLabel334: TppLabel;
    cname002: TppLabel;
    ppLine82: TppLine;
    ppShape31: TppShape;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppLabel336: TppLabel;
    ppLabel337: TppLabel;
    ppLabel338: TppLabel;
    ppLabel339: TppLabel;
    ppDBText64: TppDBText;
    ppDBCalc39: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppDBCalc59: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppLabel340: TppLabel;
    ppLabel341: TppLabel;
    ppLabel342: TppLabel;
    ppLabel343: TppLabel;
    ppShape35: TppShape;
    Query5: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppHeaderBand4: TppHeaderBand;
    ppShape21: TppShape;
    ppLabel232: TppLabel;
    ppDBText65: TppDBText;
    ppLabel234: TppLabel;
    ppDBText66: TppDBText;
    ppLabel239: TppLabel;
    ppDBText67: TppDBText;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppShape37: TppShape;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine102: TppLine;
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
    ppLine121: TppLine;
    ppLine125: TppLine;
    ppLine126: TppLine;
    ppLine127: TppLine;
    ppLine128: TppLine;
    ppLine144: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLine158: TppLine;
    ppLine159: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
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
    ppShape38: TppShape;
    ppLine177: TppLine;
    ppLine178: TppLine;
    ppLine179: TppLine;
    ppLine180: TppLine;
    ppLine181: TppLine;
    ppLine182: TppLine;
    ppLine184: TppLine;
    ppLine185: TppLine;
    ppLine186: TppLine;
    ppLine187: TppLine;
    ppLine188: TppLine;
    ppLine189: TppLine;
    ppLine190: TppLine;
    ppLine191: TppLine;
    ppLine192: TppLine;
    ppLine193: TppLine;
    ppLine194: TppLine;
    ppLine196: TppLine;
    ppLine197: TppLine;
    ppLine198: TppLine;
    ppShape39: TppShape;
    ppShape40: TppShape;
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
    ppLine212: TppLine;
    ppShape41: TppShape;
    ppShape42: TppShape;
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
    ppLine236: TppLine;
    line001: TppLabel;
    acol003: TppLabel;
    qn003: TppLabel;
    exdt002: TppLabel;
    ondt001: TppLabel;
    truck001: TppLabel;
    vess001: TppLabel;
    lport001: TppLabel;
    indt001: TppLabel;
    rair001: TppMemo;
    ppLine237: TppLine;
    exdt001: TppLabel;
    shpm001: TppLabel;
    ppLine242: TppLine;
    ppLabel10: TppLabel;
    ppShape43: TppShape;
    ppLabel11: TppLabel;
    ppLabel114: TppLabel;
    ppLabel123: TppLabel;
    ppLabel185: TppLabel;
    ppLabel187: TppLabel;
    ppLabel189: TppLabel;
    ppLabel191: TppLabel;
    ppLabel193: TppLabel;
    ppLabel195: TppLabel;
    ppLabel197: TppLabel;
    ppLabel199: TppLabel;
    ppLabel233: TppLabel;
    ppLabel237: TppLabel;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLabel243: TppLabel;
    ppShape44: TppShape;
    ppShape45: TppShape;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLabel246: TppLabel;
    ppLine154: TppLine;
    ppLine183: TppLine;
    ppLine195: TppLine;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppLabel254: TppLabel;
    ppLabel266: TppLabel;
    ppLine243: TppLine;
    t3_d202: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine244: TppLine;
    t3_d201: TppDBText;
    ppDBText15: TppDBText;
    ppLine245: TppLine;
    ppLine246: TppLine;
    ppLine247: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine238: TppLine;
    ppLine239: TppLine;
    dest001: TppLabel;
    ppLabel181: TppLabel;
    ppLabel183: TppLabel;
    ppLabel253: TppLabel;
    ppLine240: TppLine;
    ppLabel265: TppLabel;
    ppLabel269: TppLabel;
    ppLabel270: TppLabel;
    ppLine241: TppLine;
    ppLine248: TppLine;
    ppLabel271: TppLabel;
    ppLabel272: TppLabel;
    ppLabel274: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBText13: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppLine132: TppLine;
    ppLabel44: TppLabel;
    ppLabel53: TppLabel;
    ppLabel57: TppLabel;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel80: TppLabel;
    ppLabel84: TppLabel;
    ppLabel91: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel79: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel115: TppLabel;
    ppLabel117: TppLabel;
    ppLabel119: TppLabel;
    ppLabel121: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
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
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLine4: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
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
    ppLine73: TppLine;
    ppLine76: TppLine;
    ppLine249: TppLine;
    ppShape5: TppShape;
    ppShape7: TppShape;
    ppShape9: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppLabel176: TppLabel;
    ppLabel175: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLine250: TppLine;
    ppLabel202: TppLabel;
    ppLine251: TppLine;
    ppLine252: TppLine;
    ppLine253: TppLine;
    ppDBText37: TppDBText;
    cs001: TppLabel;
    ppLabel224: TppLabel;
    ppLabel206: TppLabel;
    ppLabel235: TppLabel;
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand4BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand6BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand8BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand9BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand8BeforePrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function dtwk(const dt1: Tdatetime):string;
    function dt_mth(const i1: Integer):string;
    function dt_wkd(const dt1: TDateTime):string;
  end;

var
  frmpdn_transitflowdetails: Tfrmpdn_transitflowdetails;

implementation

uses mainformu, pdnformu, pdnprintformu;

{$R *.dfm}

function Tfrmpdn_transitflowdetails.dtwk(const dt1: Tdatetime): string;
var
  y,m,d:word;
  s1:string;
begin
  decodedate(dt1,y,m,d);
  s1:=dt_mth(m)+copy('0'+inttostr(d),length('0'+inttostr(d))-1,2);
  s1:=s1+' '+dt_wkd(dt1)+'  ';
  result:=s1;
end;

function Tfrmpdn_transitflowdetails.dt_mth(const i1: Integer): string;
begin
  if i1=1 then result:='Jan '
  else if i1=2 then result:='Feb '
  else if i1=3 then result:='Mar '
  else if i1=4 then result:='Apr '
  else if i1=5 then result:='May '
  else if i1=6 then result:='Jun '
  else if i1=7 then result:='Jul '
  else if i1=8 then result:='Aug '
  else if i1=9 then result:='Sep '
  else if i1=10 then result:='Oct '
  else if i1=11 then result:='Nov '
  else if i1=12 then result:='Dec ';
end;

function Tfrmpdn_transitflowdetails.dt_wkd(const dt1: TDateTime): string;
begin
  if DayOfWeek(dt1)=1 then result:='(Sun)'
  else if DayOfWeek(dt1)=2 then result:='(Mon)'
  else if DayOfWeek(dt1)=3 then result:='(Tue)'
  else if DayOfWeek(dt1)=4 then result:='(Wed)'
  else if DayOfWeek(dt1)=5 then result:='(Thu)'
  else if DayOfWeek(dt1)=6 then result:='(Fri)'
  else if DayOfWeek(dt1)=7 then result:='(Sat)';
end;

procedure Tfrmpdn_transitflowdetails.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if query1.fieldbyname('pk_p_d1').value<0 then pk_d001.font.color:=clRed
  else pk_d001.font.color:=clBlack;
  if query1.fieldbyname('t1_p_d1').value<0 then t1_d001.font.color:=clRed
  else t1_d001.font.color:=clBlack;
  if query1.fieldbyname('t2_p_d1').value<0 then t2_d001.font.color:=clRed
  else t2_d001.font.color:=clBlack;
  if query1.fieldbyname('t3_p_d1').value<0 then t3_d001.font.color:=clRed
  else t3_d001.font.color:=clBlack;
  if query1.fieldbyname('aq_p_d1').value<0 then aq_d001.font.color:=clRed
  else aq_d001.font.color:=clBlack;
  if query1.fieldbyname('t4_p_d1').value<0 then t4_d001.font.color:=clRed
  else t4_d001.font.color:=clBlack;
end;

procedure Tfrmpdn_transitflowdetails.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if query4.fieldbyname('pk_p_d1').value<0 then pk_d101.font.color:=clRed
  else pk_d101.font.color:=clBlack;
  if query4.fieldbyname('t1_p_d1').value<0 then t1_d101.font.color:=clRed
  else t1_d101.font.color:=clBlack;
  if query4.fieldbyname('t2_p_d1').value<0 then t2_d101.font.color:=clRed
  else t2_d101.font.color:=clBlack;
  if query4.fieldbyname('t3_p_d1').value<0 then t3_d101.font.color:=clRed
  else t3_d101.font.color:=clBlack;
  if query4.fieldbyname('aq_p_d1').value<0 then aq_d101.font.color:=clRed
  else aq_d101.font.color:=clBlack;
  t4_p101.caption:=formatfloat('0.0%',query4.fieldbyname('t4_p_d1').value*100.00/query4.fieldbyname('sqty').value);
  if query4.fieldbyname('t4_p_d1').value<0 then begin
    t4_d101.font.color:=clRed;
    t4_p101.font.color:=clRed;
  end else begin
    t4_d101.font.color:=clBlack;
    t4_p101.font.color:=clBlack;
  end;
end;

procedure Tfrmpdn_transitflowdetails.ppDetailBand3BeforePrint(Sender: TObject);
begin
  //if query4.fieldbyname('t3_p_d1').value<0 then t3_d201.font.color:=clRed
  //else t3_d201.font.color:=clBlack;
  t4_p201.caption:=formatfloat('0.0%',query4.fieldbyname('t4_p_d1').value*100.00/query4.fieldbyname('sqty').value);
  if query4.fieldbyname('t4_p_d1').value<0 then t4_p201.font.color:=clRed
  else t4_p201.font.color:=clBlack;
  {
  if query4.fieldbyname('t4_p_d1').value<0 then begin
    aq_d201.font.color:=clRed;
    t4_d201.font.color:=clRed;
    t4_p201.font.color:=clRed;
  end else begin
    aq_d201.font.color:=clBlack;
    t4_d201.font.color:=clBlack;
    t4_p201.font.color:=clBlack;
  end;
  }
end;

procedure Tfrmpdn_transitflowdetails.ppGroupFooterBand3BeforePrint(
  Sender: TObject);
begin
  if pk_d002.value<0 then pk_d002.font.color:=clRed else pk_d002.font.color:=clBlack;
  if t1_d002.value<0 then t1_d002.font.color:=clRed else t1_d002.font.color:=clBlack;
  if t2_d002.value<0 then t2_d002.font.color:=clRed else t2_d002.font.color:=clBlack;
  if t3_d002.value<0 then t3_d002.font.color:=clRed else t3_d002.font.color:=clBlack;
  if aq_d002.value<0 then aq_d002.font.color:=clRed else aq_d002.font.color:=clBlack;
  t4_p002.caption:=formatfloat('0.0%',t4_d002.value*100.00/pdn_q002.value);
  if t4_d002.value<0 then begin
    t4_d002.font.color:=clRed;
    t4_p002.font.color:=clRed;
  end else begin
    t4_d002.font.color:=clBlack;
    t4_p002.font.color:=clBlack;
  end;
end;

procedure Tfrmpdn_transitflowdetails.ppGroupFooterBand4BeforePrint(
  Sender: TObject);
begin
  if pk_d003.value<0 then pk_d003.font.color:=clRed else pk_d003.font.color:=clBlack;
  if t1_d003.value<0 then t1_d003.font.color:=clRed else t1_d003.font.color:=clBlack;
  if t2_d003.value<0 then t2_d003.font.color:=clRed else t2_d003.font.color:=clBlack;
  if t3_d003.value<0 then t3_d003.font.color:=clRed else t3_d003.font.color:=clBlack;
  if aq_d003.value<0 then aq_d003.font.color:=clRed else aq_d003.font.color:=clBlack;
  t4_p003.caption:=formatfloat('0.0%',t4_d003.value*100.00/pdn_q003.value);
  if t4_d003.value<0 then begin
    t4_d003.font.color:=clRed;
    t4_p003.font.color:=clRed;
  end else begin
    t4_d003.font.color:=clBlack;
    t4_p003.font.color:=clBlack;
  end;
end;

procedure Tfrmpdn_transitflowdetails.ppGroupFooterBand6BeforePrint(
  Sender: TObject);
begin
  if pk_d102.value<0 then pk_d102.font.color:=clRed else pk_d102.font.color:=clBlack;
  if t1_d102.value<0 then t1_d102.font.color:=clRed else t1_d102.font.color:=clBlack;
  if t2_d102.value<0 then t2_d102.font.color:=clRed else t2_d102.font.color:=clBlack;
  if t3_d102.value<0 then t3_d102.font.color:=clRed else t3_d102.font.color:=clBlack;
  if aq_d102.value<0 then aq_d102.font.color:=clRed else aq_d102.font.color:=clBlack;
  t4_p102.caption:=formatfloat('0.0%',t4_d102.value*100.00/pdn_q102.value);
  if t4_d102.value<0 then begin
    t4_d102.font.color:=clRed;
    t4_p102.font.color:=clRed;
  end else begin
    t4_d102.font.color:=clBlack;
    t4_p102.font.color:=clBlack;
  end;
  //showmessage('Q1');
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct j_no) as f1,count(distinct j2_job) as f2,count(distinct j2_job||cwo||rwo) as f3,count(distinct custpo) as f5,count(distinct cstyle) as f6,'
                +'count(distinct acol) as f7,count(distinct cname) as f8 from tbl_pdn_newtransitflow where tm=:x1';
    params[0].asdatetime:=query4.fieldbyname('tm').value;
    open;
    if not fieldbyname('f1').isnull then prj001.caption:=fieldbyname('f1').asstring;
    if not fieldbyname('f2').isnull then wo001.caption:=fieldbyname('f2').asstring;
    if not fieldbyname('f3').isnull then rwo001.caption:=fieldbyname('f3').asstring;
    if not fieldbyname('f5').isnull then custpo001.caption:=fieldbyname('f5').asstring;
    if not fieldbyname('f6').isnull then cstyle001.caption:=fieldbyname('f6').asstring;
    if not fieldbyname('f7').isnull then acol001.caption:=fieldbyname('f7').asstring;
    if not fieldbyname('f8').isnull then begin
      if fieldbyname('f8').value<fieldbyname('f7').value then cname001.caption:='0'
      else cname001.caption:=fieldbyname('f7').value;
    end;
    //if not fieldbyname('f7').isnull then cname001.caption:=fieldbyname('f7').asstring;
  end;
  //showmessage('Q2');
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct tqn) as f4 from tbl_pdn_newtransitflow_qn where tm=:x1';
    params[0].asdatetime:=query4.fieldbyname('tm').value;
    open;
    if not fieldbyname('f4').isnull then qn001.caption:=fieldbyname('f4').asstring;
  end;
end;

procedure Tfrmpdn_transitflowdetails.ppGroupFooterBand8BeforePrint(
  Sender: TObject);
begin
  //if t3_d202.value<0 then t3_d202.font.color:=clRed else t3_d202.font.color:=clBlack;
  //if aq_d202.value<0 then aq_d202.font.color:=clRed else aq_d202.font.color:=clBlack;
  t4_p202.caption:=formatfloat('0.0%',t4_d202.value*100.00/pdn_q202.value);
  if t4_d202.value<0 then t4_p202.font.color:=clRed else t4_p202.font.color:=clBlack;
  {
  if t4_d202.value<0 then begin
    t4_d202.font.color:=clRed;
    t4_p202.font.color:=clRed;
  end else begin
    t4_d202.font.color:=clBlack;
    t4_p202.font.color:=clBlack;
  end;
  }
  //showmessage('Q3');
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct j_no) as f1,count(distinct j2_job) as f2,count(distinct j2_job||cwo||rwo) as f3,count(distinct custpo) as f5,count(distinct cstyle) as f6,'
                +'count(distinct acol) as f7,count(distinct cname) as f8 from tbl_pdn_newtransitflow where tm=:x1';
    params[0].asdatetime:=query4.fieldbyname('tm').value;
    open;
    if not fieldbyname('f1').isnull then prj002.caption:=fieldbyname('f1').asstring;
    if not fieldbyname('f2').isnull then wo002.caption:=fieldbyname('f2').asstring;
    if not fieldbyname('f3').isnull then rwo002.caption:=fieldbyname('f3').asstring;
    if not fieldbyname('f5').isnull then custpo002.caption:=fieldbyname('f5').asstring;
    if not fieldbyname('f6').isnull then cstyle002.caption:=fieldbyname('f6').asstring;
    if not fieldbyname('f7').isnull then acol002.caption:=fieldbyname('f7').asstring;
    if not fieldbyname('f8').isnull then begin
      if fieldbyname('f8').value<fieldbyname('f7').value then cname002.caption:='0'
      else cname002.caption:=fieldbyname('f7').value;
    end;
    //if not fieldbyname('f7').isnull then cname002.caption:=fieldbyname('f7').asstring;
  end;
  //showmessage('Q4');
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct tqn) as f4 from tbl_pdn_newtransitflow_qn where tm=:x1';
    params[0].asdatetime:=query4.fieldbyname('tm').value;
    open;
    if not fieldbyname('f4').isnull then qn002.caption:=fieldbyname('f4').asstring;
  end;
end;

procedure Tfrmpdn_transitflowdetails.ppGroupFooterBand9BeforePrint(
  Sender: TObject);
begin
  //showmessage('Q5');
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct pline) as f01,count(distinct acol) as f02,count(distinct tqn) as f03,count(distinct cstyle) as f04 from tbl_pdn_newtransitflow_qn where tm=:x1';
    params[0].asdatetime:=query5.fieldbyname('tm').value;
    open;
    if not fieldbyname('f01').isnull then line001.caption:=fieldbyname('f01').asstring;
    if not fieldbyname('f02').isnull then acol003.caption:=fieldbyname('f02').asstring;
    if not fieldbyname('f03').isnull then qn003.caption:=fieldbyname('f03').asstring;
    if not fieldbyname('f04').isnull then cs001.caption:=fieldbyname('f04').asstring;
  end;
end;

procedure Tfrmpdn_transitflowdetails.ppGroupHeaderBand8BeforePrint(
  Sender: TObject);
begin
  //showmessage('Q6');
  rair001.lines.clear;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select truck,indt,intm,ondt,vess,lport,rair,dest from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    params[1].asinteger:=query4.fieldbyname('seq1').value;
    open;
    if not fieldbyname('truck').isnull then truck001.caption:=fieldbyname('truck').value;
    if not fieldbyname('indt').isnull then begin
      //if not fieldbyname('intm').isnull then indt001.caption:=formatdatetime('MM/dd',fieldbyname('indt').value)+'  '+formatdatetime('hh:nn',fieldbyname('intm').value)
      //else indt001.caption:=formatdatetime('MM/dd',fieldbyname('indt').value)+' ';
      if not fieldbyname('intm').isnull then indt001.caption:=dtwk(fieldbyname('indt').value)+formatdatetime('hh:nn',fieldbyname('intm').value)//formatdatetime('MM/dd',fieldbyname('indt').value)+'  '+formatdatetime('hh:nn',fieldbyname('intm').value)
      else indt001.caption:=dtwk(fieldbyname('indt').value);//formatdatetime('MM/dd',fieldbyname('indt').value)+' ';
    end;
    if not fieldbyname('ondt').isnull then ondt001.caption:=dtwk(fieldbyname('ondt').value);//formatdatetime('MM/dd',fieldbyname('ondt').value);
    if not fieldbyname('vess').isnull then vess001.caption:=fieldbyname('vess').value;
    if not fieldbyname('lport').isnull then lport001.caption:=fieldbyname('lport').value;
    if not fieldbyname('rair').isnull then rair001.lines.add(fieldbyname('rair').value);
    if not fieldbyname('dest').isnull then dest001.caption:=fieldbyname('dest').value;
  end;

  //showmessage('Q7');
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select actdt,acttm from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    params[1].asinteger:=query4.fieldbyname('seq1').value;
    open;
    if not fieldbyname('actdt').isnull then begin
      //if not fieldbyname('acttm').isnull then exdt002.caption:=formatdatetime('MM/dd',fieldbyname('actdt').value)+'  '+formatdatetime('hh:nn',fieldbyname('acttm').value)
      //else exdt002.caption:=formatdatetime('MM/dd',fieldbyname('actdt').value)+'  ';
      if not fieldbyname('acttm').isnull then exdt002.caption:=dtwk(fieldbyname('actdt').value)+formatdatetime('hh:nn',fieldbyname('acttm').value)//formatdatetime('MM/dd',fieldbyname('actdt').value)+'  '+formatdatetime('hh:nn',fieldbyname('acttm').value)
      else exdt002.caption:=dtwk(fieldbyname('actdt').value);//formatdatetime('MM/dd',fieldbyname('actdt').value)+'  ';
    end;
  end;
end;

procedure Tfrmpdn_transitflowdetails.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  //showmessage('Q8');
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    //showmessage('801');
    title001.caption:='PDN Manifest with transit flow Qty of chosen colors + SKU related to Cust''s PO -  ';
    if not fieldbyname('memo1').isnull then begin
      if fieldbyname('memo1').value='CANA' then
      title001.caption:=title001.caption+'HBI''s CANA'
      else title001.caption:=title001.caption+fieldbyname('memo1').value;
    end;
    if not fieldbyname('tplant').isnull then fty001.caption:=fieldbyname('tplant').value;
    if not fieldbyname('pdn').isnull then pdn001.caption:=fieldbyname('pdn').value;
    if not fieldbyname('wk').isnull then wk001.caption:=fieldbyname('wk').value;
    if not fieldbyname('ver').isnull then ver001.caption:=fieldbyname('ver').value;
    if not fieldbyname('voyn').isnull then manifest001.caption:=fieldbyname('voyn').value;
    if not fieldbyname('shpm').isnull then shpm001.caption:=fieldbyname('shpm').value;
    if not fieldbyname('status').isnull then begin
      if fieldbyname('status').value='6' then stage001.caption:='Acted'
      else stage001.caption:='WIP';
    end else stage001.caption:='WIP';
    if not fieldbyname('exfty').isnull then begin
      //if not fieldbyname('extm').isnull then exdt001.caption:=formatdatetime('MM/dd',fieldbyname('exfty').value)+'  '+formatdatetime('hh:nn',fieldbyname('extm').value)
      //else exdt001.caption:=formatdatetime('MM/dd',fieldbyname('exfty').value)+'  17:00';
      if not fieldbyname('extm').isnull then exdt001.caption:=dtwk(fieldbyname('exfty').value)+formatdatetime('hh:nn',fieldbyname('extm').value)//formatdatetime('MM/dd',fieldbyname('exfty').value)+'  '+formatdatetime('hh:nn',fieldbyname('extm').value)
      else exdt001.caption:=dtwk(fieldbyname('exfty').value)+'17:00';//formatdatetime('MM/dd',fieldbyname('exfty').value)+'  17:00';
    end;
  end;
end;

end.
