unit Carte_ReportsFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RzBckgnd, ppParameter, ppBands, ppClass, ppCtrls,
  ppVar, ppStrtch, ppRichTx, ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, DB, ADODB, ppViewr, ppSubRpt, ppMemo, siComp;

type
  TfrmCarte_Reports = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    chk1: TCheckBox;
    chk3: TCheckBox;
    chk2: TCheckBox;
    chk4: TCheckBox;
    CheckBox3: TCheckBox;
    RzBackground1: TRzBackground;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppRichText1: TppRichText;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
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
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine3: TppLine;
    ppLabel29: TppLabel;
    ppLine4: TppLine;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel66: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
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
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLabel17: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel31: TppLabel;
    ppLabel53: TppLabel;
    ppLabel67: TppLabel;
    ppLine35: TppLine;
    ppLine53: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLine2: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel35: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLine59: TppLine;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    title6001: TppLabel;
    ppLabel76: TppLabel;
    ppLine56: TppLine;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
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
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    wc001: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine62: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText31: TppDBText;
    ppLine52: TppLine;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText27: TppDBText;
    ppDBText30: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel61: TppLabel;
    seqno001: TppLabel;
    issue001: TppLabel;
    site001: TppLabel;
    des001: TppLabel;
    item001: TppLabel;
    vndr001: TppLabel;
    scolor001: TppLabel;
    icolor001: TppLabel;
    keycode001: TppLabel;
    ppLabel64: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLine54: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine55: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine63: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine64: TppLine;
    ppParameterList1: TppParameterList;
    ADOQuery1: TADOQuery;
    CheckBox9: TCheckBox;
    subtitle6001: TppLabel;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape10: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape23: TppShape;
    ppShape22: TppShape;
    ppShape21: TppShape;
    mex1001: TppShape;
    ppShape11: TppShape;
    mex100: TppLabel;
    ppLabel65: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    mex102: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    mex104: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLine31: TppLine;
    ppLine34: TppLine;
    ppLine44: TppLine;
    ppLine47: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine60: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine68: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppLine69: TppLine;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLine70: TppLine;
    ppLine74: TppLine;
    ppLabel105: TppLabel;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLine77: TppLine;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLabel113: TppLabel;
    ppLine80: TppLine;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel124: TppLabel;
    ppLine105: TppLine;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLine110: TppLine;
    ex_adt01: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ex_adt02: TppLabel;
    ppLine144: TppLine;
    ppLabel129: TppLabel;
    title002: TppLabel;
    title201: TppRichText;
    ppLine172: TppLine;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLine136: TppLine;
    ppLabel151: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLine292: TppLine;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    mex103: TppLabel;
    ppLine85: TppLine;
    ppLabel136: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel176: TppLabel;
    ex_adt003: TppLabel;
    title2001: TppLabel;
    ppLabel254: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape26: TppShape;
    oskey001: TppDBText;
    ppLine86: TppLine;
    ppDBText34: TppDBText;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppDBText35: TppDBText;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine95: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine111: TppLine;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText41: TppDBText;
    ppDBText43: TppDBText;
    ppDBText45: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppLine112: TppLine;
    ppDBText49: TppDBText;
    ppLine113: TppLine;
    ppDBText50: TppDBText;
    ppLine114: TppLine;
    ex_adt03: TppDBText;
    ppLine145: TppLine;
    ppLine173: TppLine;
    ppDBText52: TppDBText;
    ppLine115: TppLine;
    m_ddt001: TppLabel;
    m_end001: TppLabel;
    ex_or001: TppLabel;
    mex_or001: TppLabel;
    mex_or002: TppLabel;
    ppLine116: TppLine;
    qnx001: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape29: TppShape;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppLine120: TppLine;
    ppLine121: TppLine;
    ppLine122: TppLine;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLine126: TppLine;
    ppLine127: TppLine;
    ppLine128: TppLine;
    ppLine129: TppLine;
    ppLine130: TppLine;
    ppLine134: TppLine;
    ppLine135: TppLine;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppLine142: TppLine;
    ppDBCalc1: TppDBCalc;
    prj001: TppLabel;
    custpo001: TppLabel;
    wo001: TppLabel;
    custstyle001: TppLabel;
    sp_app001: TppLabel;
    custcolor001: TppLabel;
    phcolor001: TppLabel;
    ppDBCalc3: TppDBCalc;
    m_start001: TppLabel;
    fwdt_o001: TppLabel;
    fwdt_a001: TppLabel;
    ex_o001: TppLabel;
    act_item001: TppLabel;
    ppLabel139: TppLabel;
    prod_site001: TppLabel;
    ppLabel140: TppLabel;
    ppLine143: TppLine;
    ppLine146: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand3: TppHeaderBand;
    ppLabel141: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppShape31: TppShape;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLine168: TppLine;
    ppLine169: TppLine;
    ppDetailBand3: TppDetailBand;
    ppShape32: TppShape;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppLine170: TppLine;
    ppLine171: TppLine;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLine131: TppLine;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    mddt001: TppLabel;
    m_ddt002: TppLabel;
    m_end002: TppLabel;
    ppLabel255: TppLabel;
    exdiff001: TppLabel;
    ppLabel270: TppLabel;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppLabel145: TppLabel;
    ppParameterList2: TppParameterList;
    ppLabel84: TppLabel;
    ppLabel88: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppDBText57: TppDBText;
    ppLine73: TppLine;
    ppLine108: TppLine;
    dest001: TppLabel;
    dest002: TppLabel;
    ppDBText58: TppDBText;
    ppLabel103: TppLabel;
    ppReport5: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppShape64: TppShape;
    ppShape67: TppShape;
    ppShape76: TppShape;
    ppShape77: TppShape;
    ppShape78: TppShape;
    ppShape79: TppShape;
    ppShape80: TppShape;
    ppShape81: TppShape;
    ppShape82: TppShape;
    ppShape83: TppShape;
    ppShape84: TppShape;
    ppShape85: TppShape;
    ppShape86: TppShape;
    ppShape87: TppShape;
    ppShape88: TppShape;
    ppShape89: TppShape;
    ppShape90: TppShape;
    ppLabel227: TppLabel;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppLabel266: TppLabel;
    ppLabel267: TppLabel;
    ppLabel268: TppLabel;
    ppLabel269: TppLabel;
    ppLabel274: TppLabel;
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
    ppLine407: TppLine;
    ppLine408: TppLine;
    ppLine409: TppLine;
    ppLine410: TppLine;
    ppLine411: TppLine;
    ppLine412: TppLine;
    ppLine413: TppLine;
    ppLine414: TppLine;
    ppLine415: TppLine;
    ppLine416: TppLine;
    ppLine417: TppLine;
    ppLine418: TppLine;
    ppSystemVariable9: TppSystemVariable;
    ppLine419: TppLine;
    ppLabel294: TppLabel;
    ppLabel295: TppLabel;
    ppLabel296: TppLabel;
    ppLine420: TppLine;
    ppLine421: TppLine;
    dest003: TppLabel;
    ppLine424: TppLine;
    ppLabel304: TppLabel;
    ppLine425: TppLine;
    ppLine426: TppLine;
    ppLabel305: TppLabel;
    ppLabel306: TppLabel;
    ppLine427: TppLine;
    ppLabel307: TppLabel;
    ppLabel308: TppLabel;
    ppLabel309: TppLabel;
    ppLine428: TppLine;
    ppLine429: TppLine;
    ppLabel312: TppLabel;
    ppLine430: TppLine;
    ppLabel313: TppLabel;
    ppLabel315: TppLabel;
    ppLabel316: TppLabel;
    ppLabel317: TppLabel;
    ppLine431: TppLine;
    ppLine432: TppLine;
    ppLine433: TppLine;
    ppLabel319: TppLabel;
    ppLine434: TppLine;
    ppLabel320: TppLabel;
    ppLabel321: TppLabel;
    ppLabel322: TppLabel;
    ppLabel323: TppLabel;
    ppLabel325: TppLabel;
    ppLine435: TppLine;
    ppLabel326: TppLabel;
    ppLabel327: TppLabel;
    ppLabel328: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppLine437: TppLine;
    ppLabel331: TppLabel;
    title005: TppLabel;
    ppRichText2: TppRichText;
    ppLabel333: TppLabel;
    dest004: TppLabel;
    ppLine438: TppLine;
    ppLabel335: TppLabel;
    ppLabel336: TppLabel;
    ppLabel337: TppLabel;
    ppLabel338: TppLabel;
    ppLine439: TppLine;
    ppLabel339: TppLabel;
    ppLabel340: TppLabel;
    ppLabel341: TppLabel;
    ppLine440: TppLine;
    ppLabel342: TppLabel;
    ppLabel344: TppLabel;
    ppLabel346: TppLabel;
    ppLine441: TppLine;
    ppLabel347: TppLabel;
    ppLabel348: TppLabel;
    ppLabel349: TppLabel;
    ppLabel350: TppLabel;
    ppLabel314: TppLabel;
    ppLabel329: TppLabel;
    ppLabel318: TppLabel;
    ppLine468: TppLine;
    ppLine436: TppLine;
    ppLabel330: TppLabel;
    ppLabel332: TppLabel;
    ppLabel343: TppLabel;
    ppLabel345: TppLabel;
    ppLabel351: TppLabel;
    ppLabel357: TppLabel;
    ppLine478: TppLine;
    ppLine502: TppLine;
    ppLine503: TppLine;
    ppLabel310: TppLabel;
    ppLabel311: TppLabel;
    ppLine510: TppLine;
    bc003: TppLabel;
    bcx004: TppLabel;
    title5x001: TppLabel;
    ppLabel359: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppShape91: TppShape;
    ppDBText114: TppDBText;
    ppLine442: TppLine;
    ppDBText116: TppDBText;
    ppLine443: TppLine;
    ppLine444: TppLine;
    ppDBText136: TppDBText;
    ppLine445: TppLine;
    ppLine446: TppLine;
    ppLine447: TppLine;
    ppLine448: TppLine;
    ppLine449: TppLine;
    ppLine450: TppLine;
    ppLine451: TppLine;
    ppLine452: TppLine;
    ppLine453: TppLine;
    ppLine454: TppLine;
    ppLine455: TppLine;
    ppLine456: TppLine;
    ppLine457: TppLine;
    ppLine458: TppLine;
    ppLine459: TppLine;
    ppLine460: TppLine;
    ppLine461: TppLine;
    ppLine462: TppLine;
    ppLine463: TppLine;
    ppLine465: TppLine;
    ppDBText137: TppDBText;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppDBText145: TppDBText;
    ppDBText146: TppDBText;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppDBText150: TppDBText;
    ppDBText151: TppDBText;
    ppLine466: TppLine;
    ppDBText152: TppDBText;
    ppLine467: TppLine;
    ppDBText153: TppDBText;
    ppLine469: TppLine;
    ppDBText155: TppDBText;
    ppLine470: TppLine;
    ppDBText156: TppDBText;
    ppLine471: TppLine;
    ddtx5001: TppLabel;
    ddt0x5001: TppLabel;
    ppLine472: TppLine;
    ppDBText157: TppDBText;
    ppDBText144: TppDBText;
    ppDBText154: TppDBText;
    ppDBText161: TppDBText;
    ppLine504: TppLine;
    ppLine505: TppLine;
    ppLine506: TppLine;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    mddtx5001: TppLabel;
    mddt0x5001: TppLabel;
    ppDBText164: TppDBText;
    ppLine511: TppLine;
    bc004: TppLabel;
    ppFooterBand5: TppFooterBand;
    ppSummaryBand7: TppSummaryBand;
    ppShape92: TppShape;
    ppLine473: TppLine;
    ppLine474: TppLine;
    ppLine475: TppLine;
    ppLine476: TppLine;
    ppLine477: TppLine;
    ppLine479: TppLine;
    ppLine480: TppLine;
    ppLine481: TppLine;
    ppLine482: TppLine;
    ppLine483: TppLine;
    ppLine484: TppLine;
    ppLine485: TppLine;
    ppLine486: TppLine;
    ppLine488: TppLine;
    ppLine489: TppLine;
    ppLine490: TppLine;
    ppLine491: TppLine;
    ppLine493: TppLine;
    ppLine494: TppLine;
    ppDBCalc33: TppDBCalc;
    prj5001: TppLabel;
    custpo5001: TppLabel;
    wo5001: TppLabel;
    custstyle5001: TppLabel;
    sp_app5001: TppLabel;
    custcolor5001: TppLabel;
    phcolor5001: TppLabel;
    ppDBCalc34: TppDBCalc;
    x05001: TppLabel;
    fwdto5001: TppLabel;
    exo5001: TppLabel;
    actitem5001: TppLabel;
    ppLabel372: TppLabel;
    prodsite5001: TppLabel;
    ppLabel374: TppLabel;
    ppLine495: TppLine;
    ppLine496: TppLine;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppHeaderBand8: TppHeaderBand;
    ppLabel375: TppLabel;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppShape93: TppShape;
    ppLabel376: TppLabel;
    ppLabel377: TppLabel;
    ppLabel378: TppLabel;
    ppLine497: TppLine;
    ppLine498: TppLine;
    ppDetailBand8: TppDetailBand;
    ppShape94: TppShape;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppLine499: TppLine;
    ppLine500: TppLine;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppSummaryBand8: TppSummaryBand;
    ppLine501: TppLine;
    ppLabel379: TppLabel;
    ppLabel380: TppLabel;
    ddt5001: TppLabel;
    ddt15001: TppLabel;
    ppLabel386: TppLabel;
    ppLabel387: TppLabel;
    ppLabel388: TppLabel;
    ppLabel389: TppLabel;
    ppLabel390: TppLabel;
    ppLabel391: TppLabel;
    mx05001: TppLabel;
    mddt5001: TppLabel;
    mddt15001: TppLabel;
    ppLine492: TppLine;
    ppLine507: TppLine;
    ppLine512: TppLine;
    x25001: TppLabel;
    ppLine513: TppLine;
    mx25001: TppLabel;
    ppParameterList5: TppParameterList;
    ppLabel131: TppLabel;
    ppLabel137: TppLabel;
    bcx005: TppLabel;
    bcx006: TppLabel;
    ppDBText59: TppDBText;
    ppLabel361: TppLabel;
    exdiffx001: TppDBText;
    ppLabel104: TppLabel;
    ppLabel130: TppLabel;
    ppLabel147: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppDBText60: TppDBText;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine109: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    act_itemd001: TppLabel;
    custcolord001: TppLabel;
    custpod001: TppLabel;
    custstyled001: TppLabel;
    ex_od001: TppLabel;
    fwdt_ad001: TppLabel;
    fwdt_od001: TppLabel;
    m_ddtd002: TppLabel;
    m_endd002: TppLabel;
    m_startd001: TppLabel;
    mddtd001: TppLabel;
    phcolord001: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel164: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel175: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLine155: TppLine;
    ppLine156: TppLine;
    ppLine157: TppLine;
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
    ppLine174: TppLine;
    ppLine175: TppLine;
    ppLine176: TppLine;
    ppShape8: TppShape;
    prjd001: TppLabel;
    prod_sited001: TppLabel;
    sp_appd001: TppLabel;
    wod001: TppLabel;
    ppDBText61: TppDBText;
    ppLabel188: TppLabel;
    ppLine177: TppLine;
    ppLine178: TppLine;
    ppLine179: TppLine;
    ppLine180: TppLine;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ipoqty_2001: TppDBText;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel125: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    fwdt_or001: TppLabel;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLine181: TppLine;
    ppLine182: TppLine;
    ppLine183: TppLine;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLine184: TppLine;
    ppLine185: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine186: TppLine;
    ppLine187: TppLine;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLine188: TppLine;
    ppLine189: TppLine;
    ppLine190: TppLine;
    ppLine191: TppLine;
    ppLabel193: TppLabel;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    prod_site1d001: TppLabel;
    line_tnod001: TppLabel;
    qn_tnod001: TppLabel;
    qn_tnoxd001: TppLabel;
    mddtxd001: TppLabel;
    fwdt_oxd001: TppLabel;
    fwdt_ox001: TppLabel;
    line_tno001: TppLabel;
    mddtx001: TppLabel;
    prod_site1001: TppLabel;
    qn_tno001: TppLabel;
    qn_tnox001: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    exdiffd001: TppLabel;
    ppLabel177: TppLabel;
    custpoxa001: TppLabel;
    custpoxd001: TppLabel;
    ppLabel202: TppLabel;
    prodsite1001: TppLabel;
    prodsite001: TppLabel;
    ppLabel201: TppLabel;
    ppLine192: TppLine;
    ppLine193: TppLine;
    m_ddtxd002: TppLabel;
    m_ddtx002: TppLabel;
    pakxd001: TppLabel;
    pakx001: TppLabel;
    destxd001: TppLabel;
    destx001: TppLabel;
    ppLabel203: TppLabel;
    ppShape37: TppShape;
    sp_appdt001: TppLabel;
    sp_appxd001: TppLabel;
    sp_appx001: TppLabel;
    ppLabel204: TppLabel;
    ppLabel205: TppLabel;
    ppLabel123: TppLabel;
    ppLabel161: TppLabel;
    ppLabel206: TppLabel;
    custx001: TppLabel;
    ppLine194: TppLine;
    fwdt_ox1001: TppLabel;
    mddtx1001: TppLabel;
    ppLabel211: TppLabel;
    sp_appx1001: TppLabel;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLine195: TppLine;
    fwdt_oxd1001: TppLabel;
    mddtxd1001: TppLabel;
    ppLabel212: TppLabel;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLabel219: TppLabel;
    ppLabel220: TppLabel;
    sp_appxd1001: TppLabel;
    CheckBox13: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox12: TCheckBox;
    ppLine196: TppLine;
    ppLine197: TppLine;
    ppLine198: TppLine;
    ppLine199: TppLine;
    ppRichText3: TppRichText;
    ppLine200: TppLine;
    ppLine201: TppLine;
    ppLine202: TppLine;
    ppLabel138: TppLabel;
    ppLine61: TppLine;
    ppLine67: TppLine;
    ppLine94: TppLine;
    ppLabel146: TppLabel;
    ppLabel194: TppLabel;
    ppLabel198: TppLabel;
    ppLine96: TppLine;
    ppLine203: TppLine;
    ppShape7: TppShape;
    ppLabel148: TppLabel;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppLabel209: TppLabel;
    ex_oxd001: TppLabel;
    ex_ox001: TppLabel;
    ex_oxd002: TppLabel;
    ex_ox002: TppLabel;
    ppLabel210: TppLabel;
    t3dt001: TppLabel;
    ppLine204: TppLine;
    ppLine205: TppLine;
    t3dtxd001: TppLabel;
    t3dtx001: TppLabel;
    ppLabel221: TppLabel;
    ppLabel222: TppLabel;
    t3dtxd002: TppLabel;
    t3dtx002: TppLabel;
    ppLabel223: TppLabel;
    ddtx001: TppLabel;
    ppLabel224: TppLabel;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppLine84: TppLine;
    ppLine91: TppLine;
    CheckBox10: TCheckBox;
    GroupBox3: TGroupBox;
    CheckBox15: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox11: TCheckBox;
    siLang1: TsiLang;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chk1Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure chk4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand7BeforePrint(Sender: TObject);
    procedure ppSummaryBand7BeforePrint(Sender: TObject);
    procedure ppReport5PreviewFormCreate(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_Reports: TfrmCarte_Reports;
  tm:tdatetime;

implementation

uses Carte_MainFormu, Carte_OrdprocessingFormu, Carte_LogisticsflowFormu,
Carte_ShipmentbyprojectFormu, Carte_TimechangeFormu, Carte_Reports1Formu,
Carte_Reports2Formu, Carte_PVHIPOFormu, Carte_Timechange1Formu;

{$R *.dfm}

procedure TfrmCarte_Reports.BitBtn1Click(Sender: TObject);
var
  rmks:string;
  sqltext:string;
begin
  if (checkbox1.checked) or (checkbox2.checked) or (checkbox13.checked) then begin
    with frmCarte_Ordprocessing.adoquery1 do begin
      close;
      sql.text:='update tbl_carte_sopc3 set act_item30=act_item3';
      execsql;
      close;
      sql.text:='update tbl_carte_sopc3 set act_item30=act_item3+''*'' where act_cmp3=1';
      execsql;
    end;
    with frmCarte_Ordprocessing.adoquery1 do begin
      close;
      sql.text:='select marks from tbl_carte_ps';
      open;
      rmks:=fieldbyname('marks').value;
    end;
  end;
  if checkbox1.checked then begin
    frmCarte_Ordprocessing.bitbtn3click(self);
    if (frmCarte_Ordprocessing.combobox4.text='ETAM') or (frmCarte_Ordprocessing.combobox4.text='PVH') then begin
      if frmCarte_Reports2=nil then frmCarte_Reports2:=tfrmCarte_Reports2.create(nil);
      frmCarte_Reports2.checkbox1.checked:=true;
      frmCarte_Reports2.bitbtn1click(self);
    end else begin
      if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
        title002.caption:='安排離廠期 (PDN終站) 從 '+frmCarte_Ordprocessing.dateedit4.text+' 到 '+frmCarte_Ordprocessing.dateedit5.text;
      end else begin
        if (frmCarte_Ordprocessing.chk1.checked=false) and (frmCarte_Ordprocessing.chk3.checked=false) and (frmCarte_Ordprocessing.chk4.checked=false) and (frmCarte_Ordprocessing.chk5.checked=false) then
        title002.caption:='[Outstanding Orders]' else title002.caption:='';
      end;
      if not frmCarte_Ordprocessing.adodataset1.fieldbyname('seq').isnull then begin
        if frmCarte_Ordprocessing.chk3.checked then begin
          ex_adt01.caption:='實際';
          ex_adt02.caption:='';
          ex_adt003.caption:='';
          title002.caption:='[Shipped]';
          ex_adt03.datafield:='ex_a';
        end else begin
          ex_adt01.caption:='安排';
          ex_adt02.caption:='(PDN';
          ex_adt003.caption:='終站)';
          //title002.caption:='';
          ex_adt03.datafield:='act_cmpdt';
          if frmCarte_Ordprocessing.chk5.checked then
          title002.caption:='[Cancelled]';
        end;
        if title002.caption>'' then begin
          if frmCarte_Ordprocessing.combobox1.text>'' then
          title002.caption:=title002.caption+' / Div: '+frmCarte_Ordprocessing.combobox1.text;
        end else begin
          if frmCarte_Ordprocessing.combobox1.text>'' then
          title002.caption:='Div: '+frmCarte_Ordprocessing.combobox1.text;
        end;
        if title002.caption>'' then begin
          if frmCarte_Ordprocessing.combobox8.text>'' then
          title002.caption:=title002.caption+' / 客組別: '+frmCarte_Ordprocessing.combobox8.text;
        end else begin
          if frmCarte_Ordprocessing.combobox8.text>'' then
          title002.caption:='客組別: '+frmCarte_Ordprocessing.combobox8.text;
        end;

        if title002.caption>'' then begin
          if (frmCarte_Ordprocessing.dateedit1.date>0) and (frmCarte_Ordprocessing.dateedit2.date>0) then
          title002.caption:=title002.caption+'離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
        end else begin
          if frmCarte_Ordprocessing.combobox8.text>'' then
          title002.caption:='離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
        end;

        if title002.caption>'' then begin
          if frmCarte_Ordprocessing.combobox7.text>'' then
          title002.caption:=title002.caption+' / 生產基地 (貨): '+frmCarte_Ordprocessing.combobox7.text;
        end else begin
          if frmCarte_Ordprocessing.combobox7.text>'' then
          title002.caption:='生產基地 (貨): '+frmCarte_Ordprocessing.combobox7.text;
        end;
        if title002.caption>'' then begin
          if frmCarte_Ordprocessing.chk1.checked=true then
          title002.caption:=title002.caption+' / 新單 - 未開制單';
        end else begin
          if frmCarte_Ordprocessing.chk1.checked=true then
          title002.caption:='新單  - 未開制單';
        end;
        if title002.caption>'' then begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
          title002.caption:=title002.caption+' / *板';
        end else begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
          title002.caption:='*板';
        end;
        if title002.caption>'' then begin
          if frmCarte_Ordprocessing.dateedit3.date>0 then
          title002.caption:=title002.caption+' / 未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
        end else begin
          if frmCarte_Ordprocessing.dateedit3.date>0 then
          title002.caption:='未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
        end;
        if title002.caption>'' then begin
          if frmCarte_Ordprocessing.cxcombobox2.text>'' then
          title002.caption:=title002.caption+' / 初段批號: '+frmCarte_Ordprocessing.cxcombobox2.text;
        end else begin
          if frmCarte_Ordprocessing.cxcombobox2.text>'' then
          title002.caption:='初段批號: '+frmCarte_Ordprocessing.cxcombobox2.text;
        end;
        if (frmCarte_Ordprocessing.chk1.checked=true) then begin
          //mex101.caption:='備齊 - 依計劃送料期';
          mex102.visible:=false;
          mex103.visible:=false;
          mex104.visible:=false;
        end else begin
          //mex101.caption:='未備齊 - 依開始送料期';
          mex102.visible:=true;
          mex103.visible:=true;
          mex104.visible:=true;
        end;
        //pplabel12.caption:=rmks;
        if checkbox7.checked then ppsubreport1.visible:=true
        else ppsubreport1.visible:=false;
        {
        if frmCarte_Ordprocessing.combobox4.text='ETAM' then begin
          dest003.visible:=true;
          dest004.visible:=true;
        end else if frmCarte_Ordprocessing.combobox4.text='PVH' then begin
          dest001.visible:=true;
          dest002.visible:=true;
        end;
        }
        title2001.caption:=frmCarte_Ordprocessing.combobox4.text+' ';
        if frmCarte_Ordprocessing.combobox4.text='All' then ppGroupFooterBand3.visible:=true
        else ppGroupFooterBand3.visible:=false;
        ppReport2.print;
      end;
    end;
  end;

  if checkbox10.checked then begin
    if frmCarte_Reports1=nil then frmCarte_Reports1:=tfrmCarte_Reports1.create(nil);
    frmCarte_Reports1.checkbox1.checked:=true;
    frmCarte_Reports1.bitbtn1click(self);
  end;

  if checkbox6.checked then begin
    frmCarte_Ordprocessing.bitbtn3click(self);
    if (frmCarte_Ordprocessing.combobox4.text='CARTE') then begin
      if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
        frmCarte_Ordprocessing.title005.caption:='安排離廠期 (PDN終站) 從 '+frmCarte_Ordprocessing.dateedit4.text+' 到 '+frmCarte_Ordprocessing.dateedit5.text;
      end else begin
        if (frmCarte_Ordprocessing.chk1.checked=false) and (frmCarte_Ordprocessing.chk3.checked=false) and (frmCarte_Ordprocessing.chk4.checked=false)
        and (frmCarte_Ordprocessing.chk5.checked=false) and (frmCarte_Ordprocessing.cxcombobox2.text='') then
        frmCarte_Ordprocessing.title005.caption:='[Outstanding Orders]' else frmCarte_Ordprocessing.title005.caption:='';
      end;
      if not frmCarte_Ordprocessing.adodataset1.fieldbyname('seq').isnull then begin
        if frmCarte_Ordprocessing.title005.caption>'' then begin
          if frmCarte_Ordprocessing.combobox1.text>'' then
          frmCarte_Ordprocessing.title005.caption:=frmCarte_Ordprocessing.title005.caption+' / Div: '+frmCarte_Ordprocessing.combobox1.text;
        end else begin
          if frmCarte_Ordprocessing.combobox1.text>'' then
          frmCarte_Ordprocessing.title005.caption:='Div: '+frmCarte_Ordprocessing.combobox1.text;
        end;
        if frmCarte_Ordprocessing.title005.caption>'' then begin
          if frmCarte_Ordprocessing.combobox8.text>'' then
          frmCarte_Ordprocessing.title005.caption:=frmCarte_Ordprocessing.title005.caption+' / 客組別: '+frmCarte_Ordprocessing.combobox8.text;
        end else begin
          if frmCarte_Ordprocessing.combobox8.text>'' then
          frmCarte_Ordprocessing.title005.caption:='客組別: '+frmCarte_Ordprocessing.combobox8.text;
        end;

        if frmCarte_Ordprocessing.title005.caption>'' then begin
          if (frmCarte_Ordprocessing.dateedit1.date>0) and (frmCarte_Ordprocessing.dateedit2.date>0) then
          frmCarte_Ordprocessing.title005.caption:=frmCarte_Ordprocessing.title005.caption+'離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
        end else begin
          if frmCarte_Ordprocessing.combobox8.text>'' then
          frmCarte_Ordprocessing.title005.caption:='離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
        end;

        if frmCarte_Ordprocessing.title005.caption>'' then begin
          if frmCarte_Ordprocessing.combobox7.text>'' then
          frmCarte_Ordprocessing.title005.caption:=frmCarte_Ordprocessing.title005.caption+' / 生產基地 (貨): '+frmCarte_Ordprocessing.combobox7.text;
        end else begin
          if frmCarte_Ordprocessing.combobox7.text>'' then
          frmCarte_Ordprocessing.title005.caption:='生產基地 (貨): '+frmCarte_Ordprocessing.combobox7.text;
        end;
        if frmCarte_Ordprocessing.title005.caption>'' then begin
          if frmCarte_Ordprocessing.chk1.checked=true then
          frmCarte_Ordprocessing.title005.caption:=frmCarte_Ordprocessing.title005.caption+' / 新單 - 未開制單';
        end else begin
          if frmCarte_Ordprocessing.chk1.checked=true then
          frmCarte_Ordprocessing.title005.caption:='新單  - 未開制單';
        end;
        if frmCarte_Ordprocessing.title005.caption>'' then begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
          frmCarte_Ordprocessing.title005.caption:=frmCarte_Ordprocessing.title005.caption+' / *板';
        end else begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
          frmCarte_Ordprocessing.title005.caption:='*板';
        end;
        if frmCarte_Ordprocessing.title005.caption>'' then begin
          if frmCarte_Ordprocessing.dateedit3.date>0 then
          frmCarte_Ordprocessing.title005.caption:=frmCarte_Ordprocessing.title005.caption+' / 未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
        end else begin
          if frmCarte_Ordprocessing.dateedit3.date>0 then
          frmCarte_Ordprocessing.title005.caption:='未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
        end;
        if frmCarte_Ordprocessing.title005.caption>'' then begin
          if frmCarte_Ordprocessing.cxcombobox2.text>'' then
          frmCarte_Ordprocessing.title005.caption:=frmCarte_Ordprocessing.title005.caption+' / 初批組號: '+frmCarte_Ordprocessing.cxcombobox2.text;
        end else begin
          if frmCarte_Ordprocessing.cxcombobox2.text>'' then
          frmCarte_Ordprocessing.title005.caption:='初批組號: '+frmCarte_Ordprocessing.cxcombobox2.text;
        end;
        //frmCarte_Ordprocessing.pplabel372.caption:=rmks;
        if checkbox7.checked then frmCarte_Ordprocessing.ppsubreport3.visible:=true
        else frmCarte_Ordprocessing.ppsubreport3.visible:=false;
        if frmCarte_Ordprocessing.combobox4.text='CRTE' then frmCarte_Ordprocessing.title5x001.caption:='CARTE '
        else frmCarte_Ordprocessing.title5x001.caption:=frmCarte_Ordprocessing.combobox4.text+' ';
        frmCarte_Ordprocessing.ppReport5.print;
      end;
    end else begin
      if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
        title005.caption:='安排離廠期 (PDN終站) 從 '+frmCarte_Ordprocessing.dateedit4.text+' 到 '+frmCarte_Ordprocessing.dateedit5.text;
      end else begin
        if (frmCarte_Ordprocessing.chk1.checked=false) and (frmCarte_Ordprocessing.chk3.checked=false) and (frmCarte_Ordprocessing.chk4.checked=false)
        and (frmCarte_Ordprocessing.chk5.checked=false) and (frmCarte_Ordprocessing.cxcombobox2.text='') then
        title005.caption:='[Outstanding Orders]' else frmCarte_Ordprocessing.title005.caption:='';
      end;
      if not frmCarte_Ordprocessing.adodataset1.fieldbyname('seq').isnull then begin
        if title005.caption>'' then begin
          if frmCarte_Ordprocessing.combobox1.text>'' then
          title005.caption:=title005.caption+' / Div: '+frmCarte_Ordprocessing.combobox1.text;
        end else begin
          if frmCarte_Ordprocessing.combobox1.text>'' then
          title005.caption:='Div: '+frmCarte_Ordprocessing.combobox1.text;
        end;
        if title005.caption>'' then begin
          if frmCarte_Ordprocessing.combobox8.text>'' then
          title005.caption:=title005.caption+' / 客組別: '+frmCarte_Ordprocessing.combobox8.text;
        end else begin
          if frmCarte_Ordprocessing.combobox8.text>'' then
          title005.caption:='客組別: '+frmCarte_Ordprocessing.combobox8.text;
        end;

        if title005.caption>'' then begin
          if (frmCarte_Ordprocessing.dateedit1.date>0) and (frmCarte_Ordprocessing.dateedit2.date>0) then
          title005.caption:=title005.caption+'離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
        end else begin
          if frmCarte_Ordprocessing.combobox8.text>'' then
          title005.caption:='離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
        end;

        if title005.caption>'' then begin
          if frmCarte_Ordprocessing.combobox7.text>'' then
          title005.caption:=title005.caption+' / 生產基地 (貨): '+frmCarte_Ordprocessing.combobox7.text;
        end else begin
          if frmCarte_Ordprocessing.combobox7.text>'' then
          title005.caption:='生產基地 (貨): '+frmCarte_Ordprocessing.combobox7.text;
        end;
        if title005.caption>'' then begin
          if frmCarte_Ordprocessing.chk1.checked=true then
          title005.caption:=title005.caption+' / 新單 - 未開制單';
        end else begin
          if frmCarte_Ordprocessing.chk1.checked=true then
          title005.caption:='新單  - 未開制單';
        end;
        if title005.caption>'' then begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
          title005.caption:=title005.caption+' / *板';
        end else begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
          title005.caption:='*板';
        end;
        if title005.caption>'' then begin
          if frmCarte_Ordprocessing.dateedit3.date>0 then
          title005.caption:=title005.caption+' / 未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
        end else begin
          if frmCarte_Ordprocessing.dateedit3.date>0 then
          title005.caption:='未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
        end;
        if title005.caption>'' then begin
          if frmCarte_Ordprocessing.cxcombobox2.text>'' then
          title005.caption:=title005.caption+' / 初段批號: '+frmCarte_Ordprocessing.cxcombobox2.text;
        end else begin
          if frmCarte_Ordprocessing.cxcombobox2.text>'' then
          title005.caption:='初段批號: '+frmCarte_Ordprocessing.cxcombobox2.text;
        end;
        //frmCarte_Ordprocessing.pplabel372.caption:=rmks;
        if checkbox7.checked then ppsubreport3.visible:=true
        else ppsubreport3.visible:=false;
        if frmCarte_Ordprocessing.combobox4.text='CRTE' then title5x001.caption:='CARTE '
        else title5x001.caption:=frmCarte_Ordprocessing.combobox4.text+' ';
        bcx004.visible:=true;
        bcx005.visible:=true;
        bcx006.visible:=true;
        if frmCarte_Ordprocessing.combobox4.text='ETAM' then begin
          bc003.caption:='BDC';
          dest003.visible:=true;
          dest004.visible:=true;
        end else if frmCarte_Ordprocessing.combobox4.text='PVH' then begin
          bc003.caption:='CPO';
          dest003.visible:=true;
          dest004.visible:=true;
        end else begin
          bc003.caption:='';
          bcx004.visible:=false;
          bcx005.visible:=false;
          bcx006.visible:=false;
        end;
        title5x001.caption:=frmCarte_Ordprocessing.combobox4.text+' ';
        //end;
        ppReport5.print;
      end;
    end;
  end;

  if checkbox4.checked then begin
      with frmCarte_Ordprocessing.adoquery2 do begin
        close;
        sql.text:='select * from tbl_carte_sopc1 a left join tbl_carte_sopc4 b on (a.seq=b.seq) where 0=0';
        if frmCarte_Ordprocessing.combobox1.text>'' then sql.text:=sql.text+' and a.cgrp='''+frmCarte_Ordprocessing.combobox1.text+'''';
        if frmCarte_Ordprocessing.cxcombobox1.text>'' then sql.text:=sql.text+' and charindex(a.keycode,'''+frmCarte_Ordprocessing.cxcombobox1.text+''')>0';
        if frmCarte_Ordprocessing.combobox2.text>'' then sql.text:=sql.text+' and charindex(a.projectno,'''+frmCarte_Ordprocessing.combobox2.text+''')>0';
        if frmCarte_Ordprocessing.combobox4.text>'' then begin
          if frmCarte_Ordprocessing.combobox4.text<>'All' then
          sql.text:=sql.text+' and a.cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
        end;
        if frmCarte_Ordprocessing.combobox5.text>'' then sql.text:=sql.text+' and a.qty1_sp='''+frmCarte_Ordprocessing.combobox5.text+'''';
        if frmCarte_Ordprocessing.combobox6.text>'' then sql.text:=sql.text+' and a.custstyle='''+frmCarte_Ordprocessing.combobox6.text+'''';
        if frmCarte_Ordprocessing.combobox3.text>'' then begin
           if frmCarte_Ordprocessing.combobox3.text='未開制單' then sql.text:=sql.text+' and ((a.workorderno is null) or (a.workorderno=''''))'
           else sql.text:=sql.text+' and a.workorderno='''+frmCarte_Ordprocessing.combobox3.text+'''';
        end;
        if frmCarte_Ordprocessing.combobox7.text>'' then begin
          if (frmCarte_Ordprocessing.combobox7.text<>'All') and (frmCarte_Ordprocessing.combobox7.text<>'RX+GG') and (frmCarte_Ordprocessing.combobox7.text<>'SL+SLPP') then
            sql.text:=sql.text+' and a.prod_site='''+frmCarte_Ordprocessing.combobox7.text+''''
          else if (frmCarte_Ordprocessing.combobox7.text='SL+SLPP') then
            sql.text:=sql.text+' and a.prod_site in (''SL'',''SLPP'')'
          else if (frmCarte_Ordprocessing.combobox7.text='RX+GG') then
            sql.text:=sql.text+' and a.prod_site in (''GG'',''RX'')'
          else if (frmCarte_Ordprocessing.combobox7.text='All') then
            sql.text:=sql.text+' and a.prod_site in (''SL'',''CL'',''GG'',''RX'',''SLPP'')';
        end;
        if frmCarte_Ordprocessing.combobox8.text>'' then sql.text:=sql.text+' and a.div like '''+frmCarte_Ordprocessing.combobox8.text+'%''';
        if frmCarte_Ordprocessing.cbb1.text>'' then begin
          if pos('*',frmCarte_Ordprocessing.cbb1.text)>0 then
            sql.text:=sql.text+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=1 and c.act_item3='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+''')'
                     +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=1 and act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+'''))'
          else sql.text:=sql.text+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=0 and c.act_item3='''+frmCarte_Ordprocessing.cbb1.text+''')'
                        +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb1.text+'''))';
        end;
        if frmCarte_Ordprocessing.cbb2.text>'' then sql.text:=sql.text+' and (exists (select c.seq from tbl_carte_sopc3 c,tbl_carte_sopc2 d '
                                                                   +'where a.seq=c.seq and a.seq=d.seq and c.seq_i=d.seq_i and c.act_cmp3=0 and d.act_cnt=1 and d.act_issue='''+frmCarte_Ordprocessing.cbb2.text+''')'
                                                                   +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb2.text+'''))';
        if frmCarte_Ordprocessing.dateedit1.date>0 then sql.text:=sql.text+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit1.date)+'''';
        if frmCarte_Ordprocessing.dateedit2.date>0 then sql.text:=sql.text+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit2.date+1)+'''';
        if frmCarte_Ordprocessing.dateedit3.date>0 then sql.text:=sql.text+' and exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=0 and c.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit3.date)+''')';
        if frmCarte_Ordprocessing.edit1.text>'' then sql.text:=sql.text+' and mex_oe>='+frmCarte_Ordprocessing.edit1.text;
        if frmCarte_Ordprocessing.edit2.text>'' then sql.text:=sql.text+' and mex_oe<='+frmCarte_Ordprocessing.edit2.text;
        if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
          if frmCarte_Ordprocessing.dateedit4.date>0 then sql.text:=sql.text+' and a.act_cmpdt>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit4.date)+'''';
          if frmCarte_Ordprocessing.dateedit5.date>0 then sql.text:=sql.text+' and a.act_cmpdt<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit5.date)+'''';
        end else begin
          if frmCarte_Ordprocessing.chk3.checked then sql.text:=sql.text+' and a.ex_a is not null'
          else sql.text:=sql.text+' and a.ex_a is null';
        end;
        if frmCarte_Ordprocessing.chk5.checked then begin
          sql.text:=sql.text+' and a.ord_cancel1=''Y''';
          if frmCarte_Ordprocessing.chk1.checked then sql.text:=sql.text+' and ((a.workorderno='''') or (a.workorderno is null))';
        end else begin
          sql.text:=sql.text+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
          if frmCarte_Ordprocessing.chk1.checked then sql.text:=sql.text+' and ((a.workorderno='''') or (a.workorderno is null))'
          else sql.text:=sql.text+' and a.workorderno>''''';
        end;
        sql.text:=sql.text+' order by a.cgrp,a.cust,a.moa_seq,a.pvh_mtodt,a.pvh_bcd,a.projectno,a.custpo,a.phstyleno,a.phcolor,a.phstyle_a,a.phstyle,a.workorderno,a.rwo_wo,a.keycode';
        open;
        if not fieldbyname('seq').isnull then begin
          if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
            frmCarte_Ordprocessing.title0002.caption:='安排離廠期 (PDN終站) 從 '+frmCarte_Ordprocessing.dateedit4.text+' 到 '+frmCarte_Ordprocessing.dateedit5.text;
          end else begin
            if (frmCarte_Ordprocessing.chk1.checked=false) and (frmCarte_Ordprocessing.chk3.checked=false) and (frmCarte_Ordprocessing.chk4.checked=false) and (frmCarte_Ordprocessing.chk5.checked=false) then
            frmCarte_Ordprocessing.title0002.caption:='[Outstanding Orders]' else frmCarte_Ordprocessing.title0002.caption:='';
          end;
          if frmCarte_Ordprocessing.chk3.checked then
          frmCarte_Ordprocessing.title0002.caption:='[Shipped]';
          if frmCarte_Ordprocessing.chk5.checked then
          frmCarte_Ordprocessing.title0002.caption:='[Cancelled]';
          if frmCarte_Ordprocessing.title0002.caption>'' then begin
            if frmCarte_Ordprocessing.combobox8.text>'' then
            frmCarte_Ordprocessing.title0002.caption:=frmCarte_Ordprocessing.title0002.caption+' / 客組別: '+frmCarte_Ordprocessing.combobox8.text;
          end else begin
            if frmCarte_Ordprocessing.combobox8.text>'' then
            frmCarte_Ordprocessing.title0002.caption:='客組別: '+frmCarte_Ordprocessing.combobox8.text;
          end;

          if frmCarte_Ordprocessing.title0002.caption>'' then begin
            if (frmCarte_Ordprocessing.dateedit1.date>0) and (frmCarte_Ordprocessing.dateedit2.date>0) then
            frmCarte_Ordprocessing.title0002.caption:=frmCarte_Ordprocessing.title0002.caption+'離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
          end else begin
            if frmCarte_Ordprocessing.combobox8.text>'' then
            frmCarte_Ordprocessing.title0002.caption:='離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
          end;

          if frmCarte_Ordprocessing.title0002.caption>'' then begin
            if frmCarte_Ordprocessing.combobox7.text>'' then
            frmCarte_Ordprocessing.title0002.caption:=frmCarte_Ordprocessing.title0002.caption+' / 生產基地 (貨): '+frmCarte_Ordprocessing.combobox7.text;
          end else begin
            if frmCarte_Ordprocessing.combobox7.text>'' then
            frmCarte_Ordprocessing.title0002.caption:='生產基地 (貨): '+frmCarte_Ordprocessing.combobox7.text;
          end;
          if frmCarte_Ordprocessing.title0002.caption>'' then begin
            if frmCarte_Ordprocessing.chk1.checked=true then
            frmCarte_Ordprocessing.title0002.caption:=frmCarte_Ordprocessing.title0002.caption+' / 新單 - 未開制單';
          end else begin
            if frmCarte_Ordprocessing.chk1.checked=true then
            frmCarte_Ordprocessing.title0002.caption:='新單  - 未開制單';
          end;
          if frmCarte_Ordprocessing.title0002.caption>'' then begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
            frmCarte_Ordprocessing.title0002.caption:=frmCarte_Ordprocessing.title0002.caption+' / *板';
          end else begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
            frmCarte_Ordprocessing.title0002.caption:='*板';
          end;
          if frmCarte_Ordprocessing.title0002.caption>'' then begin
            if frmCarte_Ordprocessing.dateedit3.date>0 then
            frmCarte_Ordprocessing.title0002.caption:=frmCarte_Ordprocessing.title0002.caption+' / 未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
          end else begin
            if frmCarte_Ordprocessing.dateedit3.date>0 then
            frmCarte_Ordprocessing.title0002.caption:='未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
          end;
          if frmCarte_Ordprocessing.combobox4.text='CRTE' then frmCarte_Ordprocessing.title3001.caption:='CARTE '
          else frmCarte_Ordprocessing.title3001.caption:=frmCarte_Ordprocessing.combobox4.text+' ';
          if frmCarte_Ordprocessing.combobox4.text='All' then frmCarte_Ordprocessing.ppGroupFooterBand5.visible:=true
          else frmCarte_Ordprocessing.ppGroupFooterBand5.visible:=false;
          frmCarte_Ordprocessing.ppReport3.print;
        end;
      end;
  end;

  if checkbox2.checked then begin
      {
      with frmCarte_Ordprocessing.adoquery2 do begin
        close;
        sql.text:='select *,rtrim(a.workorderno)+''-''+rtrim(a.problem_o)+''-''+rtrim(a.rwo_wo) as cwono_new,';
        sql.text:=sql.text+'case when prod_site in (''SL'',''SLPP'') then ''0'' ';
        sql.text:=sql.text+'when prod_site in (''RX'',''GG'') then ''1'' else ''2'' end as prd_st ';
        sql.text:=sql.text+'from tbl_carte_sopc1 a,tbl_carte_sopc3 b left join tbl_carte_sopc2 c on (b.seq=c.seq and b.seq_i=c.seq_i) where a.seq=b.seq';
        if frmCarte_Ordprocessing.combobox1.text>'' then sql.text:=sql.text+' and a.cgrp='''+frmCarte_Ordprocessing.combobox1.text+'''';
        if frmCarte_Ordprocessing.cxcombobox1.text>'' then sql.text:=sql.text+' and charindex(a.keycode,'''+frmCarte_Ordprocessing.cxcombobox1.text+''')>0';
        if frmCarte_Ordprocessing.combobox2.text>'' then sql.text:=sql.text+' and charindex(a.projectno,'''+frmCarte_Ordprocessing.combobox2.text+''')>0';
        if frmCarte_Ordprocessing.combobox4.text>'' then begin
          if frmCarte_Ordprocessing.combobox4.text<>'All' then
          sql.text:=sql.text+' and a.cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
        end;
        if frmCarte_Ordprocessing.combobox5.text>'' then sql.text:=sql.text+' and a.qty1_sp='''+frmCarte_Ordprocessing.combobox5.text+'''';
        if frmCarte_Ordprocessing.combobox6.text>'' then sql.text:=sql.text+' and a.custstyle='''+frmCarte_Ordprocessing.combobox6.text+'''';
        if frmCarte_Ordprocessing.combobox3.text>'' then begin
           if frmCarte_Ordprocessing.combobox3.text='未開制單' then sql.text:=sql.text+' and ((a.workorderno is null) or (a.workorderno=''''))'
           else sql.text:=sql.text+' and a.workorderno='''+frmCarte_Ordprocessing.combobox3.text+'''';
        end;

        if frmCarte_Ordprocessing.combobox7.text>'' then begin
          if (frmCarte_Ordprocessing.combobox7.text<>'All') and (frmCarte_Ordprocessing.combobox7.text<>'CN') and (frmCarte_Ordprocessing.combobox7.text<>'RX+GG') and (frmCarte_Ordprocessing.combobox7.text<>'SL+SLPP') then
            sql.text:=sql.text+' and case when a.prod_site_r is not null then a.prod_site_r else a.prod_site end='''+frmCarte_Ordprocessing.combobox7.text+''''
          else if (frmCarte_Ordprocessing.combobox7.text='CN') then
            sql.text:=sql.text+' and case when a.prod_site_r is not null then a.prod_site_r else a.prod_site end in (''SL'',''GG'',''RX'',''SLPP'')'
          else if (frmCarte_Ordprocessing.combobox7.text='RX+GG') then
            sql.text:=sql.text+' and case when a.prod_site_r is not null then a.prod_site_r else a.prod_site end in (''GG'',''RX'')'
          else if (frmCarte_Ordprocessing.combobox7.text='SL+SLPP') then
            sql.text:=sql.text+' and case when a.prod_site_r is not null then a.prod_site_r else a.prod_site end in (''SL'',''SLPP'')';
        end;

        if frmCarte_Ordprocessing.combobox8.text>'' then sql.text:=sql.text+' and a.div like '''+frmCarte_Ordprocessing.combobox8.text+'%''';
        if frmCarte_Ordprocessing.cbb1.text>'' then begin
          if pos('*',frmCarte_Ordprocessing.cbb1.text)>0 then
            sql.text:=sql.text+' and b.act_cmp3=1 and b.act_item3='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+''''
          else sql.text:=sql.text+' and b.act_item3='''+frmCarte_Ordprocessing.cbb1.text+'''';
        end;
        if frmCarte_Ordprocessing.cbb2.text>'' then sql.text:=sql.text+' and b.act_cmp3=0 and exists (select seq from tbl_carte_sopc2 d where a.seq=d.seq and b.seq_i=d.seq_i and d.act_cnt=1 and d.act_issue='''+frmCarte_Ordprocessing.cbb2.text+''')';
        if frmCarte_Ordprocessing.dateedit1.date>0 then sql.text:=sql.text+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit1.date)+'''';
        if frmCarte_Ordprocessing.dateedit2.date>0 then sql.text:=sql.text+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit2.date+1)+'''';
        if frmCarte_Ordprocessing.dateedit3.date>0 then sql.text:=sql.text+' and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit3.date)+'''';
        if frmCarte_Ordprocessing.edit1.text>'' then sql.text:=sql.text+' and mex_oe>='+frmCarte_Ordprocessing.edit1.text;
        if frmCarte_Ordprocessing.edit2.text>'' then sql.text:=sql.text+' and mex_oe<='+frmCarte_Ordprocessing.edit2.text;
        if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
          if frmCarte_Ordprocessing.dateedit4.date>0 then sql.text:=sql.text+' and a.act_cmpdt>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit4.date)+'''';
          if frmCarte_Ordprocessing.dateedit5.date>0 then sql.text:=sql.text+' and a.act_cmpdt<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit5.date)+'''';
        end else begin
          if frmCarte_Ordprocessing.chk3.checked then sql.text:=sql.text+' and a.ex_a is not null'
          else sql.text:=sql.text+' and a.ex_a is null';
        end;
        if frmCarte_Ordprocessing.chk5.checked then begin
          sql.text:=sql.text+' and a.ord_cancel1=''Y''';
          if frmCarte_Ordprocessing.chk1.checked then sql.text:=sql.text+' and ((a.workorderno='''') or (a.workorderno is null))';
        end else begin
          sql.text:=sql.text+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
          if frmCarte_Ordprocessing.chk1.checked then sql.text:=sql.text+' and ((a.workorderno='''') or (a.workorderno is null))'
          else sql.text:=sql.text+' and a.workorderno>''''';
        end;
        if checkbox3.checked=false then sql.text:=sql.text+' and b.act_cmp3=0';
        sql.text:=sql.text+' order by prd_st,a.projectno,a.prod_site desc,a.cgrp,a.cust,a.moa_seq,a.pvh_mtodt,a.pvh_bcd,a.custpo,a.phstyleno,a.phcolor,a.phstyle_a,a.phstyle,a.workorderno,a.rwo_wo,a.keycode,b.seq_i,c.act_cnt';
        open;
        if not fieldbyname('seq').isnull then begin
          if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
            frmCarte_Ordprocessing.sub002.caption:='安排離廠期 (PDN終站) 從 '+frmCarte_Ordprocessing.dateedit4.text+' 到 '+frmCarte_Ordprocessing.dateedit5.text;
          end else begin
            if (frmCarte_Ordprocessing.chk1.checked=false) and (frmCarte_Ordprocessing.chk3.checked=false) and (frmCarte_Ordprocessing.chk4.checked=false) and (frmCarte_Ordprocessing.chk5.checked=false) then
            frmCarte_Ordprocessing.sub002.caption:='[Outstanding Orders]' else frmCarte_Ordprocessing.sub002.caption:='';
          end;
          if frmCarte_Ordprocessing.chk3.checked then
          frmCarte_Ordprocessing.sub002.caption:='[Shipped]';
          if frmCarte_Ordprocessing.chk5.checked then
          frmCarte_Ordprocessing.sub002.caption:='[Cancelled]';
          if frmCarte_Ordprocessing.sub002.caption>'' then begin
            if frmCarte_Ordprocessing.combobox8.text>'' then
            frmCarte_Ordprocessing.sub002.caption:=frmCarte_Ordprocessing.sub002.caption+' / 客組別: '+frmCarte_Ordprocessing.combobox8.text;
          end else begin
            if frmCarte_Ordprocessing.combobox8.text>'' then
            frmCarte_Ordprocessing.sub002.caption:='客組別: '+frmCarte_Ordprocessing.combobox8.text;
          end;

          if frmCarte_Ordprocessing.sub002.caption>'' then begin
            if (frmCarte_Ordprocessing.dateedit1.date>0) and (frmCarte_Ordprocessing.dateedit2.date>0) then
            frmCarte_Ordprocessing.sub002.caption:=frmCarte_Ordprocessing.sub002.caption+'離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
          end else begin
            if frmCarte_Ordprocessing.combobox8.text>'' then
            frmCarte_Ordprocessing.sub002.caption:='離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
          end;

          if frmCarte_Ordprocessing.sub002.caption>'' then begin
            if frmCarte_Ordprocessing.combobox7.text>'' then
            frmCarte_Ordprocessing.sub002.caption:=frmCarte_Ordprocessing.sub002.caption+' / Mfr. Loc. 製造地點: '+frmCarte_Ordprocessing.combobox7.text;
          end else begin
            if frmCarte_Ordprocessing.combobox7.text>'' then
            frmCarte_Ordprocessing.sub002.caption:='Mfr. Loc. 製造地點: '+frmCarte_Ordprocessing.combobox7.text;
          end;
          if frmCarte_Ordprocessing.sub002.caption>'' then begin
            if frmCarte_Ordprocessing.chk1.checked=true then
            frmCarte_Ordprocessing.sub002.caption:=frmCarte_Ordprocessing.sub002.caption+' / 新單 - 未開制單';
          end else begin
            if frmCarte_Ordprocessing.chk1.checked=true then
            frmCarte_Ordprocessing.sub002.caption:='新單  - 未開制單';
          end;
          if frmCarte_Ordprocessing.sub002.caption>'' then begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
            frmCarte_Ordprocessing.sub002.caption:=frmCarte_Ordprocessing.sub002.caption+' / *板';
          end else begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
            frmCarte_Ordprocessing.sub002.caption:='*板';
          end;
          if frmCarte_Ordprocessing.sub002.caption>'' then begin
            if frmCarte_Ordprocessing.dateedit3.date>0 then
            frmCarte_Ordprocessing.sub002.caption:=frmCarte_Ordprocessing.sub002.caption+' / 未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
          end else begin
            if frmCarte_Ordprocessing.dateedit3.date>0 then
            frmCarte_Ordprocessing.sub002.caption:='未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
          end;

          if frmCarte_Ordprocessing.combobox7.text>'' then
          frmCarte_Ordprocessing.fty2001.caption:=frmCarte_Ordprocessing.combobox7.text
          else frmCarte_Ordprocessing.fty2001.caption:='';
          frmCarte_Ordprocessing.fty2001.Font.Style:=[fsUnderLine];

          //frmCarte_Ordprocessing.pplabel126.caption:=rmks;
          if frmCarte_Ordprocessing.combobox4.text='CRTE' then frmCarte_Ordprocessing.title1001.caption:='CARTE '
          else frmCarte_Ordprocessing.title1001.caption:=frmCarte_Ordprocessing.combobox4.text+' ';
          frmCarte_Ordprocessing.ppReport1.print;
        end;
      end;
      }

        sqltext:='select a.seq,a.keycode,a.cust,a.cgrp,a.projectno,a.custpo,a.custstyle,a.phstyle_a,a.phcolor,a.phstyle,'
                +'a.workorderno,rtrim(a.workorderno)+''-''+rtrim(a.problem_o)+''-''+rtrim(a.rwo_wo) as rwo_wo,b.grp_act3g,a.custcolor,a.qty,a.qty1,a.sp_qty,a.mex_or1,a.mex_or2,a.prod_site,a.prod_site1,'
                +'b.act_item3g,b.act_subject3g,b.act_start3g,b.act_cmpdt3g,c.act_cnt3g,c.act_date3g,c.act_issue3g,c.act_marks,b.mat_qty,b.aff_p '
                +'from tbl_carte_sopc1 a,tbl_carte_sopc_al b left join tbl_carte_sopc2_grp c on (b.seq3g=c.seq3g) '
                +'where charindex(b.grp_act3g,a.grp_act)>0 and b.grpg=''S''';
        if frmCarte_Ordprocessing.combobox1.text>'' then sqltext:=sqltext+' and a.cgrp='''+frmCarte_Ordprocessing.combobox1.text+'''';
        if frmCarte_Ordprocessing.cxcombobox1.text>'' then sqltext:=sqltext+' and charindex(a.keycode,'''+frmCarte_Ordprocessing.cxcombobox1.text+''')>0';
        if frmCarte_Ordprocessing.combobox2.text>'' then sqltext:=sqltext+' and charindex(a.projectno,'''+frmCarte_Ordprocessing.combobox2.text+''')>0';
        if frmCarte_Ordprocessing.combobox4.text>'' then begin
          if frmCarte_Ordprocessing.combobox4.text<>'All' then
          sqltext:=sqltext+' and a.cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
        end;
        if frmCarte_Ordprocessing.combobox5.text>'' then sqltext:=sqltext+' and a.qty1_sp='''+frmCarte_Ordprocessing.combobox5.text+'''';
        if frmCarte_Ordprocessing.combobox6.text>'' then sqltext:=sqltext+' and a.custstyle='''+frmCarte_Ordprocessing.combobox6.text+'''';
        if frmCarte_Ordprocessing.combobox3.text>'' then begin
           if frmCarte_Ordprocessing.combobox3.text='未開制單' then sqltext:=sqltext+' and ((a.workorderno is null) or (a.workorderno=''''))'
           else sqltext:=sqltext+' and a.workorderno='''+frmCarte_Ordprocessing.combobox3.text+'''';
        end;
        {
        if frmCarte_Ordprocessing.combobox7.text>'' then begin
          if (frmCarte_Ordprocessing.combobox7.text<>'All') and (frmCarte_Ordprocessing.combobox7.text<>'RX+GG') and (frmCarte_Ordprocessing.combobox7.text<>'SL+SLPP') then
            sqltext:=sqltext+' and a.prod_site='''+frmCarte_Ordprocessing.combobox7.text+''''
          else if (frmCarte_Ordprocessing.combobox7.text='SL+SLPP') then
            sqltext:=sqltext+' and a.prod_site in (''SL'',''SLPP'')'
          else if (frmCarte_Ordprocessing.combobox7.text='RX+GG') then
            sqltext:=sqltext+' and a.prod_site in (''GG'',''RX'')'
          else if (frmCarte_Ordprocessing.combobox7.text='All') then
            sqltext:=sqltext+' and a.prod_site in (''SL'',''CL'',''GG'',''RX'',''SLPP'')';
        end;
        }
        if frmCarte_Ordprocessing.combobox7.text>'' then begin
          if (frmCarte_Ordprocessing.combobox7.text<>'All') and (frmCarte_Ordprocessing.combobox7.text<>'CN') and (frmCarte_Ordprocessing.combobox7.text<>'RX+GG') and (frmCarte_Ordprocessing.combobox7.text<>'SL+SLPP') then
            sqltext:=sqltext+' and case when a.prod_site_r is not null then a.prod_site_r else a.prod_site end='''+frmCarte_Ordprocessing.combobox7.text+''''
          else if (frmCarte_Ordprocessing.combobox7.text='CN') then
            sqltext:=sqltext+' and case when a.prod_site_r is not null then a.prod_site_r else a.prod_site end in (''SL'',''GG'',''RX'',''SLPP'')'
          else if (frmCarte_Ordprocessing.combobox7.text='RX+GG') then
            sqltext:=sqltext+' and case when a.prod_site_r is not null then a.prod_site_r else a.prod_site end in (''GG'',''RX'')'
          else if (frmCarte_Ordprocessing.combobox7.text='SL+SLPP') then
            sqltext:=sqltext+' and case when a.prod_site_r is not null then a.prod_site_r else a.prod_site end in (''SL'',''SLPP'')';
        end;

        if frmCarte_Ordprocessing.combobox8.text>'' then sqltext:=sqltext+' and a.div like '''+frmCarte_Ordprocessing.combobox8.text+'%''';
        if frmCarte_Ordprocessing.cbb1.text>'' then begin
          if pos('*',frmCarte_Ordprocessing.cbb1.text)>0 then
            sqltext:=sqltext+' and b.act_cmp3g=1 and b.act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+''''
          else sqltext:=sqltext+' and b.act_item3g='''+frmCarte_Ordprocessing.cbb1.text+'''';
        end;
        if (frmCarte_Ordprocessing.cbb2.text>'') and (frmCarte_Ordprocessing.cbb2.text<>'All') then sqltext:=sqltext+' and b.act_cmp3g=0 and b.act_issue3g='''+frmCarte_Ordprocessing.cbb2.text+'''';
        //if frmCarte_Ordprocessing.cbb2.text>'' then sqltext:=sqltext+' and b.act_cmp3g=0 and b.act_issue3g='''+frmCarte_Ordprocessing.cbb2.text+'''';
        if frmCarte_Ordprocessing.dateedit1.date>0 then sqltext:=sqltext+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit1.date)+'''';
        if frmCarte_Ordprocessing.dateedit2.date>0 then sqltext:=sqltext+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit2.date+1)+'''';
        if frmCarte_Ordprocessing.dateedit3.date>0 then sqltext:=sqltext+' and b.act_cmp3g=0 and b.act_cmpdt3g<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit3.date)+'''';
        if frmCarte_Ordprocessing.edit1.text>'' then sqltext:=sqltext+' and mex_oe>='+frmCarte_Ordprocessing.edit1.text;
        if frmCarte_Ordprocessing.edit2.text>'' then sqltext:=sqltext+' and mex_oe<='+frmCarte_Ordprocessing.edit2.text;
        if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
          if frmCarte_Ordprocessing.dateedit4.date>0 then sqltext:=sqltext+' and a.act_cmpdt>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit4.date)+'''';
          if frmCarte_Ordprocessing.dateedit5.date>0 then sqltext:=sqltext+' and a.act_cmpdt<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit5.date)+'''';
        end else begin
          if frmCarte_Ordprocessing.chk3.checked then sqltext:=sqltext+' and a.ex_a is not null'
          else sqltext:=sqltext+' and a.ex_a is null';
        end;
        if frmCarte_Ordprocessing.chk5.checked then begin
          sqltext:=sqltext+' and a.ord_cancel1=''Y''';
          if frmCarte_Ordprocessing.chk1.checked then sqltext:=sqltext+' and ((a.workorderno='''') or (a.workorderno is null))';
        end else begin
          sqltext:=sqltext+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
          if frmCarte_Ordprocessing.chk1.checked then sqltext:=sqltext+' and ((a.workorderno='''') or (a.workorderno is null))'
          else sqltext:=sqltext+' and a.workorderno>''''';
        end;
        if checkbox3.checked=false then sqltext:=sqltext+' and b.act_cmp3g=0';
        //sqltext:=sqltext+' order by a.grp_act,a.cust,a.projectno,a.custpo,a.custstyle,a.phstyle_a,a.phcolor,a.phstyle,a.workorderno,a.rwo_wo,a.keycode,c.act_cnt3g';

      //showmessage(sqltext);

      with frmCarte_Ordprocessing.adoquery2 do begin
        close;
        sql.Text:='exec sp_carte_generalgrpissuelog :x1';
        parameters[0].Value:=sqltext;
        open;
        if not fieldbyname('seq').isnull then begin
          if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
            frmCarte_Ordprocessing.sub6001.caption:='安排離廠期 (PDN終站) 從 '+frmCarte_Ordprocessing.dateedit4.text+' 到 '+frmCarte_Ordprocessing.dateedit5.text;
          end else begin
            if (frmCarte_Ordprocessing.chk1.checked=false) and (frmCarte_Ordprocessing.chk3.checked=false) and (frmCarte_Ordprocessing.chk4.checked=false) and (frmCarte_Ordprocessing.chk5.checked=false) then
            frmCarte_Ordprocessing.sub6001.caption:='[Outstanding Orders]' else frmCarte_Ordprocessing.sub6001.caption:='';
          end;
          if frmCarte_Ordprocessing.chk3.checked then
          frmCarte_Ordprocessing.sub6001.caption:='[Shipped]';
          if frmCarte_Ordprocessing.chk5.checked then
          frmCarte_Ordprocessing.sub6001.caption:='[Cancelled]';
          if frmCarte_Ordprocessing.sub6001.caption>'' then begin
            if frmCarte_Ordprocessing.combobox8.text>'' then
            frmCarte_Ordprocessing.sub6001.caption:=frmCarte_Ordprocessing.sub6001.caption+' / 客組別: '+frmCarte_Ordprocessing.combobox8.text;
          end else begin
            if frmCarte_Ordprocessing.combobox8.text>'' then
            frmCarte_Ordprocessing.sub6001.caption:='客組別: '+frmCarte_Ordprocessing.combobox8.text;
          end;

          if frmCarte_Ordprocessing.sub6001.caption>'' then begin
            if (frmCarte_Ordprocessing.dateedit1.date>0) and (frmCarte_Ordprocessing.dateedit2.date>0) then
            frmCarte_Ordprocessing.sub6001.caption:=frmCarte_Ordprocessing.sub6001.caption+'離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
          end else begin
            if frmCarte_Ordprocessing.combobox8.text>'' then
            frmCarte_Ordprocessing.sub6001.caption:='離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
          end;

          if frmCarte_Ordprocessing.sub6001.caption>'' then begin
            if frmCarte_Ordprocessing.combobox7.text>'' then
            frmCarte_Ordprocessing.sub6001.caption:=frmCarte_Ordprocessing.sub6001.caption+' / Mfr. Loc. 製造地點: '+frmCarte_Ordprocessing.combobox7.text;
          end else begin
            if frmCarte_Ordprocessing.combobox7.text>'' then
            frmCarte_Ordprocessing.sub6001.caption:='Mfr. Loc. 製造地點: '+frmCarte_Ordprocessing.combobox7.text;
          end;
          if frmCarte_Ordprocessing.sub6001.caption>'' then begin
            if frmCarte_Ordprocessing.chk1.checked=true then
            frmCarte_Ordprocessing.sub6001.caption:=frmCarte_Ordprocessing.sub6001.caption+' / 新單 - 未開制單';
          end else begin
            if frmCarte_Ordprocessing.chk1.checked=true then
            frmCarte_Ordprocessing.sub6001.caption:='新單  - 未開制單';
          end;
          if frmCarte_Ordprocessing.sub6001.caption>'' then begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
            frmCarte_Ordprocessing.sub6001.caption:=frmCarte_Ordprocessing.sub6001.caption+' / *板';
          end else begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
            frmCarte_Ordprocessing.sub6001.caption:='*板';
          end;
          if frmCarte_Ordprocessing.sub6001.caption>'' then begin
            if frmCarte_Ordprocessing.dateedit3.date>0 then
            frmCarte_Ordprocessing.sub6001.caption:=frmCarte_Ordprocessing.sub6001.caption+' / 未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
          end else begin
            if frmCarte_Ordprocessing.dateedit3.date>0 then
            frmCarte_Ordprocessing.sub6001.caption:='未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
          end;
          {
          if frmCarte_Ordprocessing.chk1.checked=true then begin
            frmCarte_Ordprocessing.mex002.visible:=false;
            frmCarte_Ordprocessing.mex003.visible:=false;
            frmCarte_Ordprocessing.mex004.visible:=false;
            frmCarte_Ordprocessing.mex007.visible:=false;
            frmCarte_Ordprocessing.mex008.visible:=false;
            frmCarte_Ordprocessing.mexd003.datafield:='mex_ld';
            frmCarte_Ordprocessing.mexd006.visible:=false;
          end else begin
            frmCarte_Ordprocessing.mex002.visible:=true;
            frmCarte_Ordprocessing.mex003.visible:=true;
            frmCarte_Ordprocessing.mex004.visible:=true;
            frmCarte_Ordprocessing.mex007.visible:=true;
            frmCarte_Ordprocessing.mex008.visible:=true;
            frmCarte_Ordprocessing.mexd003.datafield:='mex_ls';
            frmCarte_Ordprocessing.mexd006.visible:=true;
          end;
          }
          if frmCarte_Ordprocessing.combobox7.text>'' then
          frmCarte_Ordprocessing.fty6001.caption:=frmCarte_Ordprocessing.combobox7.text
          else frmCarte_Ordprocessing.fty6001.caption:='';
          frmCarte_Ordprocessing.fty6001.Font.Style:=[fsUnderLine];

          if frmCarte_Ordprocessing.combobox4.text='CRTE' then frmCarte_Ordprocessing.title6001.caption:='CARTE '
          else frmCarte_Ordprocessing.title6001.caption:=frmCarte_Ordprocessing.combobox4.text+' ';
          frmcarte_ordprocessing.rpt_title001.caption:='Central Order Processing - Single Action Log 個別行動誌';
          frmCarte_Ordprocessing.ppReport6.print;
        end;
      end;
  end;

  if checkbox13.checked then begin

        sqltext:='select a.seq,a.keycode,a.cust,a.cgrp,a.projectno,a.custpo,a.custstyle,a.phstyle_a,a.phcolor,a.phstyle,'
                +'a.workorderno,rtrim(a.workorderno)+''-''+rtrim(a.problem_o)+''-''+rtrim(a.rwo_wo) as rwo_wo,b.grp_act3g,a.custcolor,a.qty,a.qty1,a.sp_qty,a.mex_or1,a.mex_or2,a.prod_site,a.prod_site1,'
                +'b.act_item3g,b.act_subject3g,b.act_start3g,b.act_cmpdt3g,c.act_cnt3g,c.act_date3g,c.act_issue3g,c.act_marks,b.mat_qty,b.aff_p '
                +'from tbl_carte_sopc1 a,tbl_carte_sopc_al b left join tbl_carte_sopc2_grp c on (b.seq3g=c.seq3g) '
                +'where charindex(b.grp_act3g,a.grp_act)>0 and b.grpg=''G''';
        if frmCarte_Ordprocessing.combobox1.text>'' then sqltext:=sqltext+' and a.cgrp='''+frmCarte_Ordprocessing.combobox1.text+'''';
        if frmCarte_Ordprocessing.cxcombobox1.text>'' then sqltext:=sqltext+' and charindex(a.keycode,'''+frmCarte_Ordprocessing.cxcombobox1.text+''')>0';
        if frmCarte_Ordprocessing.combobox2.text>'' then sqltext:=sqltext+' and charindex(a.projectno,'''+frmCarte_Ordprocessing.combobox2.text+''')>0';
        if frmCarte_Ordprocessing.combobox4.text>'' then begin
          if frmCarte_Ordprocessing.combobox4.text<>'All' then
          sqltext:=sqltext+' and a.cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
        end;
        if frmCarte_Ordprocessing.combobox5.text>'' then sqltext:=sqltext+' and a.qty1_sp='''+frmCarte_Ordprocessing.combobox5.text+'''';
        if frmCarte_Ordprocessing.combobox6.text>'' then sqltext:=sqltext+' and a.custstyle='''+frmCarte_Ordprocessing.combobox6.text+'''';
        if frmCarte_Ordprocessing.combobox3.text>'' then begin
           if frmCarte_Ordprocessing.combobox3.text='未開制單' then sqltext:=sqltext+' and ((a.workorderno is null) or (a.workorderno=''''))'
           else sqltext:=sqltext+' and a.workorderno='''+frmCarte_Ordprocessing.combobox3.text+'''';
        end;
        {
        if frmCarte_Ordprocessing.combobox7.text>'' then begin
          if (frmCarte_Ordprocessing.combobox7.text<>'All') and (frmCarte_Ordprocessing.combobox7.text<>'RX+GG') and (frmCarte_Ordprocessing.combobox7.text<>'SL+SLPP') then
            sqltext:=sqltext+' and a.prod_site='''+frmCarte_Ordprocessing.combobox7.text+''''
          else if (frmCarte_Ordprocessing.combobox7.text='SL+SLPP') then
            sqltext:=sqltext+' and a.prod_site in (''SL'',''SLPP'')'
          else if (frmCarte_Ordprocessing.combobox7.text='RX+GG') then
            sqltext:=sqltext+' and a.prod_site in (''GG'',''RX'')'
          else if (frmCarte_Ordprocessing.combobox7.text='All') then
            sqltext:=sqltext+' and a.prod_site in (''SL'',''CL'',''GG'',''RX'',''SLPP'')';
        end;
        }
        if frmCarte_Ordprocessing.combobox7.text>'' then begin
          if (frmCarte_Ordprocessing.combobox7.text<>'All') and (frmCarte_Ordprocessing.combobox7.text<>'CN') and (frmCarte_Ordprocessing.combobox7.text<>'RX+GG') and (frmCarte_Ordprocessing.combobox7.text<>'SL+SLPP') then
            sqltext:=sqltext+' and case when a.prod_site_r is not null then a.prod_site_r else a.prod_site end='''+frmCarte_Ordprocessing.combobox7.text+''''
          else if (frmCarte_Ordprocessing.combobox7.text='CN') then
            sqltext:=sqltext+' and case when a.prod_site_r is not null then a.prod_site_r else a.prod_site end in (''SL'',''GG'',''RX'',''SLPP'')'
          else if (frmCarte_Ordprocessing.combobox7.text='RX+GG') then
            sqltext:=sqltext+' and case when a.prod_site_r is not null then a.prod_site_r else a.prod_site end in (''GG'',''RX'')'
          else if (frmCarte_Ordprocessing.combobox7.text='SL+SLPP') then
            sqltext:=sqltext+' and case when a.prod_site_r is not null then a.prod_site_r else a.prod_site end in (''SL'',''SLPP'')';
        end;

        if frmCarte_Ordprocessing.combobox8.text>'' then sqltext:=sqltext+' and a.div like '''+frmCarte_Ordprocessing.combobox8.text+'%''';
        if frmCarte_Ordprocessing.cbb1.text>'' then begin
          if pos('*',frmCarte_Ordprocessing.cbb1.text)>0 then
            sqltext:=sqltext+' and b.act_cmp3g=1 and b.act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+''''
          else sqltext:=sqltext+' and b.act_item3g='''+frmCarte_Ordprocessing.cbb1.text+'''';
        end;
        if (frmCarte_Ordprocessing.cbb2.text>'') and (frmCarte_Ordprocessing.cbb2.text<>'All') then sqltext:=sqltext+' and b.act_cmp3g=0 and b.act_issue3g='''+frmCarte_Ordprocessing.cbb2.text+'''';
        if frmCarte_Ordprocessing.dateedit1.date>0 then sqltext:=sqltext+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit1.date)+'''';
        if frmCarte_Ordprocessing.dateedit2.date>0 then sqltext:=sqltext+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit2.date+1)+'''';
        if frmCarte_Ordprocessing.dateedit3.date>0 then sqltext:=sqltext+' and b.act_cmp3g=0 and b.act_cmpdt3g<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit3.date)+'''';
        if frmCarte_Ordprocessing.edit1.text>'' then sqltext:=sqltext+' and mex_oe>='+frmCarte_Ordprocessing.edit1.text;
        if frmCarte_Ordprocessing.edit2.text>'' then sqltext:=sqltext+' and mex_oe<='+frmCarte_Ordprocessing.edit2.text;
        if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
          if frmCarte_Ordprocessing.dateedit4.date>0 then sqltext:=sqltext+' and a.act_cmpdt>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit4.date)+'''';
          if frmCarte_Ordprocessing.dateedit5.date>0 then sqltext:=sqltext+' and a.act_cmpdt<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit5.date)+'''';
        end else begin
          if frmCarte_Ordprocessing.chk3.checked then sqltext:=sqltext+' and a.ex_a is not null'
          else sqltext:=sqltext+' and a.ex_a is null';
        end;
        if frmCarte_Ordprocessing.chk5.checked then begin
          sqltext:=sqltext+' and a.ord_cancel1=''Y''';
          if frmCarte_Ordprocessing.chk1.checked then sqltext:=sqltext+' and ((a.workorderno='''') or (a.workorderno is null))';
        end else begin
          sqltext:=sqltext+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
          if frmCarte_Ordprocessing.chk1.checked then sqltext:=sqltext+' and ((a.workorderno='''') or (a.workorderno is null))'
          else sqltext:=sqltext+' and a.workorderno>''''';
        end;
        if checkbox3.checked=false then sqltext:=sqltext+' and b.act_cmp3g=0';
        //sqltext:=sqltext+' order by a.grp_act,a.cust,a.projectno,a.custpo,a.custstyle,a.phstyle_a,a.phcolor,a.phstyle,a.workorderno,a.rwo_wo,a.keycode,c.act_cnt3g';

      //showmessage(sqltext);

      with frmCarte_Ordprocessing.adoquery2 do begin
        close;
        sql.Text:='exec sp_carte_generalgrpissuelog :x1';
        parameters[0].Value:=sqltext;
        open;
        if not fieldbyname('seq').isnull then begin
          if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
            frmCarte_Ordprocessing.sub6001.caption:='安排離廠期 (PDN終站) 從 '+frmCarte_Ordprocessing.dateedit4.text+' 到 '+frmCarte_Ordprocessing.dateedit5.text;
          end else begin
            if (frmCarte_Ordprocessing.chk1.checked=false) and (frmCarte_Ordprocessing.chk3.checked=false) and (frmCarte_Ordprocessing.chk4.checked=false) and (frmCarte_Ordprocessing.chk5.checked=false) then
            frmCarte_Ordprocessing.sub6001.caption:='[Outstanding Orders]' else frmCarte_Ordprocessing.sub6001.caption:='';
          end;
          if frmCarte_Ordprocessing.chk3.checked then
          frmCarte_Ordprocessing.sub6001.caption:='[Shipped]';
          if frmCarte_Ordprocessing.chk5.checked then
          frmCarte_Ordprocessing.sub6001.caption:='[Cancelled]';
          if frmCarte_Ordprocessing.sub6001.caption>'' then begin
            if frmCarte_Ordprocessing.combobox8.text>'' then
            frmCarte_Ordprocessing.sub6001.caption:=frmCarte_Ordprocessing.sub6001.caption+' / 客組別: '+frmCarte_Ordprocessing.combobox8.text;
          end else begin
            if frmCarte_Ordprocessing.combobox8.text>'' then
            frmCarte_Ordprocessing.sub6001.caption:='客組別: '+frmCarte_Ordprocessing.combobox8.text;
          end;

          if frmCarte_Ordprocessing.sub6001.caption>'' then begin
            if (frmCarte_Ordprocessing.dateedit1.date>0) and (frmCarte_Ordprocessing.dateedit2.date>0) then
            frmCarte_Ordprocessing.sub6001.caption:=frmCarte_Ordprocessing.sub6001.caption+'離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
          end else begin
            if frmCarte_Ordprocessing.combobox8.text>'' then
            frmCarte_Ordprocessing.sub6001.caption:='離廠期 從 '+frmCarte_Ordprocessing.dateedit1.text+' 到 '+frmCarte_Ordprocessing.dateedit2.text;
          end;

          if frmCarte_Ordprocessing.sub6001.caption>'' then begin
            if frmCarte_Ordprocessing.combobox7.text>'' then
            frmCarte_Ordprocessing.sub6001.caption:=frmCarte_Ordprocessing.sub6001.caption+' / Mfr. Loc. 製造地點: '+frmCarte_Ordprocessing.combobox7.text;
          end else begin
            if frmCarte_Ordprocessing.combobox7.text>'' then
            frmCarte_Ordprocessing.sub6001.caption:='Mfr. Loc. 製造地點: '+frmCarte_Ordprocessing.combobox7.text;
          end;
          if frmCarte_Ordprocessing.sub6001.caption>'' then begin
            if frmCarte_Ordprocessing.chk1.checked=true then
            frmCarte_Ordprocessing.sub6001.caption:=frmCarte_Ordprocessing.sub6001.caption+' / 新單 - 未開制單';
          end else begin
            if frmCarte_Ordprocessing.chk1.checked=true then
            frmCarte_Ordprocessing.sub6001.caption:='新單  - 未開制單';
          end;
          if frmCarte_Ordprocessing.sub6001.caption>'' then begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
            frmCarte_Ordprocessing.sub6001.caption:=frmCarte_Ordprocessing.sub6001.caption+' / *板';
          end else begin
          if frmCarte_Ordprocessing.combobox5.text='*' then
            frmCarte_Ordprocessing.sub6001.caption:='*板';
          end;
          if frmCarte_Ordprocessing.sub6001.caption>'' then begin
            if frmCarte_Ordprocessing.dateedit3.date>0 then
            frmCarte_Ordprocessing.sub6001.caption:=frmCarte_Ordprocessing.sub6001.caption+' / 未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
          end else begin
            if frmCarte_Ordprocessing.dateedit3.date>0 then
            frmCarte_Ordprocessing.sub6001.caption:='未如期完成目標之項目';// - '+formatdatetime('mm/dd',frmCarte_Ordprocessing.dateedit3.date)+'及以前';
          end;
          {
          if frmCarte_Ordprocessing.chk1.checked=true then begin
            frmCarte_Ordprocessing.mex002.visible:=false;
            frmCarte_Ordprocessing.mex003.visible:=false;
            frmCarte_Ordprocessing.mex004.visible:=false;
            frmCarte_Ordprocessing.mex007.visible:=false;
            frmCarte_Ordprocessing.mex008.visible:=false;
            frmCarte_Ordprocessing.mexd003.datafield:='mex_ld';
            frmCarte_Ordprocessing.mexd006.visible:=false;
          end else begin
            frmCarte_Ordprocessing.mex002.visible:=true;
            frmCarte_Ordprocessing.mex003.visible:=true;
            frmCarte_Ordprocessing.mex004.visible:=true;
            frmCarte_Ordprocessing.mex007.visible:=true;
            frmCarte_Ordprocessing.mex008.visible:=true;
            frmCarte_Ordprocessing.mexd003.datafield:='mex_ls';
            frmCarte_Ordprocessing.mexd006.visible:=true;
          end;
          }
          if frmCarte_Ordprocessing.combobox7.text>'' then
          frmCarte_Ordprocessing.fty6001.caption:=frmCarte_Ordprocessing.combobox7.text
          else frmCarte_Ordprocessing.fty6001.caption:='';
          frmCarte_Ordprocessing.fty6001.Font.Style:=[fsUnderLine];

          if frmCarte_Ordprocessing.combobox4.text='CRTE' then frmCarte_Ordprocessing.title6001.caption:='CARTE '
          else frmCarte_Ordprocessing.title6001.caption:=frmCarte_Ordprocessing.combobox4.text+' ';
          frmcarte_ordprocessing.rpt_title001.caption:='Central Order Processing - Group Action Log 集體行動誌';
          frmCarte_Ordprocessing.ppReport6.print;
        end;
      end;
  end;

  if checkbox8.checked then begin
    tm:=now;
    if not checkbox3.checked then begin
      with adodataset1 do begin
        close;
        commandtext:='exec sp_carte_genchaseitems_oslist_new1 :x1,:x2';
        parameters[0].value:=frmCarte_Ordprocessing.combobox4.text;
        parameters[1].value:=tm;
        open;
        if not fieldbyname('seq31').isnull then begin
          if frmCarte_Ordprocessing.combobox4.text='CRTE' then title6001.caption:='CARTE '
          else title6001.caption:=frmCarte_Ordprocessing.combobox4.text+' ';
          subtitle6001.caption:='[未完成]';
          ppReport1.print;
        end;
      end;
    end else if checkbox3.checked then begin
      with adodataset1 do begin
        close;
        commandtext:='exec sp_carte_genchaseitems_oslist_new2 :x1,:x2';
        parameters[0].value:=frmCarte_Ordprocessing.combobox4.text;
        parameters[1].value:=tm;
        open;
        if not fieldbyname('seq31').isnull then begin
          if frmCarte_Ordprocessing.adodataset1.fieldbyname('cust').value='CRTE' then title6001.caption:='CARTE '
          else title6001.caption:=frmCarte_Ordprocessing.adodataset1.fieldbyname('cust').value+' ';
          subtitle6001.caption:='[已完成] (週期 從 '+formatdatetime('mm/dd',date-14)+' 到 '+formatdatetime('mm/dd',date)+')';
          ppReport1.print;
        end;
      end;
    end;
  end;

  if checkbox12.checked then begin
    if frmCarte_Timechange=nil then frmCarte_Timechange:=tfrmCarte_Timechange.create(nil);
    frmCarte_Timechange.BitBtn4Click(self);
  end;

  if checkbox11.checked then begin
    if frmCarte_Timechange1=nil then frmCarte_Timechange1:=tfrmCarte_Timechange1.create(nil);
    frmCarte_Timechange1.BitBtn4Click(self);
  end;

  if checkbox9.checked then begin
    if frmCarte_Shipmentbyproject=nil then frmCarte_Shipmentbyproject:=tfrmCarte_Shipmentbyproject.create(nil);
    frmCarte_Shipmentbyproject.combobox1.items.clear;
    with adoquery1 do begin
      close;
      sql.text:='select distinct projectno from tbl_carte_sopc1 where cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
      open;
      first;
      while not eof do begin
        frmCarte_Shipmentbyproject.combobox1.items.add(fieldbyname('projectno').value);
        application.processmessages;
        next;
      end;
    end;
    if frmCarte_Ordprocessing.adodataset1.active then begin
      if not frmCarte_Ordprocessing.adodataset1.fieldbyname('projectno').isnull then
      frmCarte_Shipmentbyproject.combobox1.text:=frmCarte_Ordprocessing.adodataset1.fieldbyname('projectno').value;
    end;
    frmCarte_Shipmentbyproject.show;
  end;

  if checkbox5.checked then begin
    if frmCarte_Logisticsflow=nil then frmCarte_Logisticsflow:=tfrmCarte_Logisticsflow.create(nil);
    with frmCarte_Logisticsflow.adodataset1 do begin
      close;
      commandtext:='select * from tbl_carte_sopc5 where 0=0';
      if frmCarte_Ordprocessing.combobox7.text>'' then begin
        if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
          commandtext:=commandtext+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
        else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
          commandtext:=commandtext+' and prod_site5 in (''SL'',''PP'',''PP2'',''-'')'
        else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
          commandtext:=commandtext+' and prod_site5 in (''GG'',''RX'')'
        else if (frmCarte_Ordprocessing.combobox7.text='未定') then
          commandtext:=commandtext+' and ((prod_site5 is null) or (prod_site5=''''))';
      end;
      commandtext:=commandtext+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2';
      if frmCarte_Ordprocessing.combobox4.text>'' then begin
        if frmCarte_Ordprocessing.combobox4.text<>'All' then
        commandtext:=commandtext+' and cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
      end;
      parameters[0].value:=frmCarte_Ordprocessing.dateedit4.date;
      parameters[1].value:=frmCarte_Ordprocessing.dateedit5.date;
      open;
    end;
    frmCarte_Logisticsflow.BitBtn4Click(self);
  end;

  if checkbox17.checked then begin
    if (frmCarte_Ordprocessing.combobox4.text='PVH') or (frmCarte_Ordprocessing.combobox4.text='AP') or (frmCarte_Ordprocessing.combobox4.text='BDON') or (frmCarte_Ordprocessing.combobox4.text='PPTT') or (frmCarte_Ordprocessing.combobox4.text='TGTA') then begin
      if frmCarte_PVHIPO=nil then frmCarte_PVHIPO:=tfrmCarte_PVHIPO.create(nil);
      frmCarte_PVHIPO.label1.caption:='CUSTPO';
      frmCarte_PVHIPO.generatedata;
      frmCarte_PVHIPO.bitbtn4click(self);
    end else showmessage('只有AP/BDON/PPTT/PVH/TGTA才能查詢！');
  end;
  //frmCarte_Ordprocessing.n1click(self);
  if checkbox18.checked then begin
    if (frmCarte_Ordprocessing.combobox4.text='PVH') or (frmCarte_Ordprocessing.combobox4.text='AP') or (frmCarte_Ordprocessing.combobox4.text='BDON') or (frmCarte_Ordprocessing.combobox4.text='PPTT') or (frmCarte_Ordprocessing.combobox4.text='TGTA') then begin
      if frmCarte_PVHIPO=nil then frmCarte_PVHIPO:=tfrmCarte_PVHIPO.create(nil);
      frmCarte_PVHIPO.label1.caption:='WO';
      frmCarte_PVHIPO.generatedata;
      frmCarte_PVHIPO.bitbtn4click(self);
    end else showmessage('只有AP/BDON/PPTT/PVH/TGTA才能查詢！');
  end;
  //frmCarte_Ordprocessing.n2click(self);
  if checkbox19.checked then frmCarte_Ordprocessing.PVHReportlayoutdependentonUSCAHK1click(self);

end;

procedure TfrmCarte_Reports.CheckBox10Click(Sender: TObject);
begin
  if checkbox10.checked then begin
    checkbox6.checked:=false;
  end;
end;

procedure TfrmCarte_Reports.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.checked then begin
    checkbox6.checked:=false;
  end;
end;

procedure TfrmCarte_Reports.CheckBox6Click(Sender: TObject);
begin
  if checkbox6.checked then begin
    checkbox1.checked:=false;
    checkbox10.checked:=false;
  end;
end;

procedure TfrmCarte_Reports.chk1Click(Sender: TObject);
begin
  if chk1.checked then begin
    chk2.checked:=false;
    chk3.checked:=false;
    chk4.checked:=false;
  end;
end;

procedure TfrmCarte_Reports.chk2Click(Sender: TObject);
begin
  if chk2.checked then begin
    chk1.checked:=false;
    chk3.checked:=false;
    chk4.checked:=false;
  end;
end;

procedure TfrmCarte_Reports.chk3Click(Sender: TObject);
begin
  if chk3.checked then begin
    chk1.checked:=false;
    chk2.checked:=false;
    chk4.checked:=false;
  end;
end;

procedure TfrmCarte_Reports.chk4Click(Sender: TObject);
begin
  if chk4.checked then begin
    chk1.checked:=false;
    chk2.checked:=false;
    chk3.checked:=false;
  end;
end;

procedure TfrmCarte_Reports.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmCarte_Logisticsflow<>nil then frmCarte_Logisticsflow:=nil;
  if frmCarte_Timechange<>nil then frmCarte_Timechange:=nil;
  if frmCarte_Reports1<>nil then frmCarte_Reports1:=nil;
  if frmCarte_Reports2<>nil then frmCarte_Reports2:=nil;
  if frmCarte_PVHIPO<>nil then frmCarte_PVHIPO:=nil;
  action:=cafree;
  frmCarte_Reports:=nil;
end;

procedure TfrmCarte_Reports.FormCreate(Sender: TObject);
begin
  siLang1.Language:=frmCarte_Main.ComboBox2.text;
end;

procedure TfrmCarte_Reports.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if not adodataset1.fieldbyname('kc_r1_cmp').isnull then begin
    if adodataset1.fieldbyname('kc_r1_cmp').value=true then wc001.caption:='Y'
    else wc001.caption:='';
  end else wc001.caption:='';
  if not adodataset1.fieldbyname('kc_r1_exor').isnull then begin
    if adodataset1.fieldbyname('kc_r1_cmp').value=false then begin
      if adodataset1.fieldbyname('kc_r1_exor').value<date then ppdbtext25.font.color:=clred
      else ppdbtext25.font.color:=clblack;
    end else ppdbtext25.font.color:=clblack;
  end else ppdbtext25.font.color:=clblack;
end;

procedure TfrmCarte_Reports.ppDetailBand2BeforePrint(Sender: TObject);
begin
  ipoqty_2001.font.color:=clBlack;
  if frmCarte_Ordprocessing.adodataset1.fieldbyname('cust').value='PVH' then begin
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('custpo_qty').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('custpo_qty').value>1 then
      ipoqty_2001.font.color:=clRed;
    end;
  end;
  if frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_qty').value>0 then begin
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('prod_site1').isnull then
    prodsite1001.caption:=frmCarte_Ordprocessing.adodataset1.fieldbyname('prod_site1').value;
  end else prodsite1001.caption:='-';
  if frmCarte_Ordprocessing.adodataset1.fieldbyname('qty1').value>0 then begin
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('prod_site').isnull then
    prodsite001.caption:=frmCarte_Ordprocessing.adodataset1.fieldbyname('prod_site').value;
  end else prodsite001.caption:='-';
  if frmCarte_Ordprocessing.adodataset1.fieldbyname('act_item').value>'' then
  oskey001.font.style:=[fsBold] else oskey001.font.style:=[];
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('m_ddt').isnull then begin
    m_ddt001.caption:=formatfloat('#0;-#0',trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('m_ddt').value)-trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt').value));
    if frmCarte_Ordprocessing.adodataset1.fieldbyname('m_end').isnull then begin
      if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').isnull then begin
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('m_ddt').value>frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value then begin
          m_ddt001.font.color:=clRed;
          m_ddt001.Font.Style:=[fsbold];
        end else begin
          m_ddt001.font.color:=clBlack;
          m_ddt001.Font.Style:=[];
        end;
      end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').isnull then begin
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('m_ddt').value>frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value then begin
          m_ddt001.font.color:=clRed;
          m_ddt001.Font.Style:=[fsbold];
        end else begin
          m_ddt001.font.color:=clBlack;
          m_ddt001.Font.Style:=[];
        end;
      end else begin
        m_ddt001.font.color:=clBlack;
        m_ddt001.Font.Style:=[];
      end;
    end else begin
      //m_ddt001.caption:='';
      m_ddt001.font.color:=clBlack;
      m_ddt001.Font.Style:=[];
    end;
  end else begin
    m_ddt001.caption:='';
    m_ddt001.font.color:=clBlack;
    m_ddt001.Font.Style:=[];
  end;
  ddtx001.caption:='';
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt0').isnull then
  ddtx001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt0').value)+'*'
  else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt').isnull then
  ddtx001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt').value);
  if frmCarte_Ordprocessing.adodataset1.fieldbyname('m_start').isnull then begin
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt').isnull then begin
      if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt0').isnull then begin
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt0').value<=date+7 then begin
          ddtx001.font.color:=clRed;
          if frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt0').value<=date then
          ddtx001.font.style:=[fsbold] else ddtx001.font.style:=[];
        end else begin
          ddtx001.font.color:=clBlack;
          ddtx001.font.style:=[];
        end;
      end else begin
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt').value<=date+7 then begin
          ddtx001.font.color:=clRed;
          if frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt').value<=date then
          ddtx001.font.style:=[fsbold] else ddtx001.font.style:=[];
        end else begin
          ddtx001.font.color:=clBlack;
          ddtx001.font.style:=[];
        end;
      end;
    end else begin
      ddtx001.font.color:=clBlack;
      ddtx001.font.style:=[];
    end;
  end else begin
    ddtx001.font.color:=clBlack;
    ddtx001.font.style:=[];
  end;
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('m_end').isnull then
    m_end001.caption:=formatfloat('#0;-#0',trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('m_end').value)-trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('m_start').value))
  else m_end001.caption:='';
  ex_or001.Font.Color:=clBlack;
  ex_or001.Font.Style:=[];
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_r').isnull then begin
    ex_or001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_r').value)+'*';
    if frmCarte_Ordprocessing.ADODataSet1.FieldByName('act_cmpdt').IsNull then begin
      if frmCarte_Ordprocessing.ADODataSet1.FieldByName('ex_r').Value<=date+14 then begin
        ex_or001.Font.Color:=clRed;
        if frmCarte_Ordprocessing.ADODataSet1.FieldByName('ex_r').Value<=date+7 then
        ex_or001.Font.Style:=[fsBold] else ex_or001.Font.Style:=[];
      end;
    end;
  end else begin
    ex_or001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_o').value);
    if frmCarte_Ordprocessing.ADODataSet1.FieldByName('act_cmpdt').IsNull then begin
      if frmCarte_Ordprocessing.ADODataSet1.FieldByName('ex_o').Value<=date+14 then begin
        ex_or001.Font.Color:=clRed;
        if frmCarte_Ordprocessing.ADODataSet1.FieldByName('ex_o').Value<=date+7 then
        ex_or001.Font.Style:=[fsBold] else ex_or001.Font.Style:=[];
      end;
    end;
  end;
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').isnull then begin
    fwdt_or001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value)+'*';
    if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_a').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value<=date+7 then begin
        fwdt_or001.font.color:=clRed;
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value<=date then
        fwdt_or001.font.style:=[fsbold] else fwdt_or001.font.style:=[];
      end else begin
        fwdt_or001.font.color:=clBlack;
        fwdt_or001.font.style:=[];
      end;
    end else begin
      fwdt_or001.font.color:=clBlack;
      fwdt_or001.font.style:=[];
    end;
  end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').isnull then begin
    fwdt_or001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value);
    if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_a').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value<=date+7 then begin
        fwdt_or001.font.color:=clRed;
        if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value<=date then
        fwdt_or001.font.style:=[fsbold] else fwdt_or001.font.style:=[];
      end else begin
        fwdt_or001.font.color:=clBlack;
        fwdt_or001.font.style:=[];
      end;
    end else begin
      fwdt_or001.font.color:=clBlack;
      fwdt_or001.font.style:=[];
    end;
  end;

  mex_or001.caption:=''; mex_or002.caption:='';
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('mex_rs').isnull then
    mex_or001.caption:=frmCarte_Ordprocessing.adodataset1.fieldbyname('mex_rs').asstring+'*'
  else begin
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('mex_os').isnull then
    mex_or001.caption:=frmCarte_Ordprocessing.adodataset1.fieldbyname('mex_os').asstring;
  end;
  //end;
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('mex_re').isnull then
    mex_or002.caption:=frmCarte_Ordprocessing.adodataset1.fieldbyname('mex_re').asstring+'*'
  else begin
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('mex_oe').isnull then
    mex_or002.caption:=frmCarte_Ordprocessing.adodataset1.fieldbyname('mex_oe').asstring;
  end;
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('exdiff').isnull then begin
    if frmCarte_Ordprocessing.adodataset1.fieldbyname('exdiff').value<0 then begin
      exdiffx001.font.color:=clRed;
      exdiffx001.Font.Style:=[fsbold];
    end else begin
      exdiffx001.font.color:=clBlack;
      exdiffx001.Font.Style:=[];
    end;
  end else begin
    exdiffx001.font.color:=clBlack;
    exdiffx001.Font.Style:=[];
  end;
  qnx001.font.color:=clBlack;
  qnx001.Font.Style:=[];
  if frmCarte_Ordprocessing.adodataset1.fieldbyname('qn_tno').value>=1 then begin
    with frmCarte_Ordprocessing.adoquery3 do begin
      close;
      sql.text:='select q1_dt1 from tbl_carte_sopc4 where seq=:x1';
      parameters[0].value:=frmCarte_Ordprocessing.adodataset1.fieldbyname('seq').value;
      open;
      if fieldbyname('q1_dt1').isnull then begin
        qnx001.font.color:=clRed;
        qnx001.Font.Style:=[fsbold];
      end else begin
        qnx001.font.color:=clBlack;
        qnx001.Font.Style:=[];
      end;
    end;
  end;
  sp_appdt001.caption:='';
  sp_appdt001.font.color:=clBlack;
  sp_appdt001.font.style:=[];
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_a').isnull then begin
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_app2').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_app2').value='R' then
        sp_appdt001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_a').value)+'R'
      else sp_appdt001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_a').value)+'Y';
    end else
      sp_appdt001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_a').value)+'Y';
  end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_r').isnull then begin
    sp_appdt001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_r').value)+'*';
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_r').value then begin
        sp_appdt001.font.color:=clRed;
        //if frmCarte_Ordprocessing.ADODataSet1.FieldByName('fwdt_a').isnull then
        sp_appdt001.font.style:=[fsBold]; //else sp_appdt001.Font.Style:=[];
      end else if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_r').value+7 then begin
        sp_appdt001.font.color:=clRed;
        sp_appdt001.font.style:=[];
      end else begin
        sp_appdt001.font.color:=clBlack;
        sp_appdt001.font.style:=[];
      end;
    end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_r').value then begin
        sp_appdt001.font.color:=clRed;
        //if frmCarte_Ordprocessing.ADODataSet1.FieldByName('fwdt_a').isnull then
        sp_appdt001.font.style:=[fsBold]; //else sp_appdt001.Font.Style:=[];
      end else if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_r').value+7 then begin
        sp_appdt001.font.color:=clRed;
        sp_appdt001.font.style:=[];
      end else begin
        sp_appdt001.font.color:=clBlack;
        sp_appdt001.font.style:=[];
      end;
    end else begin
      sp_appdt001.font.color:=clBlack;
      sp_appdt001.font.style:=[];
    end;
  end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_o').isnull then begin
    sp_appdt001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_o').value);
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_o').value then begin
        sp_appdt001.font.color:=clRed;
        //if frmCarte_Ordprocessing.ADODataSet1.FieldByName('fwdt_a').isnull then
        sp_appdt001.font.style:=[fsBold]; //else sp_appdt001.Font.Style:=[];
      end else if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_r').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_o').value+7 then begin
        sp_appdt001.font.color:=clRed;
        sp_appdt001.font.style:=[];
      end else begin
        sp_appdt001.font.color:=clBlack;
        sp_appdt001.font.style:=[];
      end;
    end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_o').value then begin
        sp_appdt001.font.color:=clRed;
        //if frmCarte_Ordprocessing.ADODataSet1.FieldByName('fwdt_a').isnull then
        sp_appdt001.font.style:=[fsBold]; //else sp_appdt001.Font.Style:=[];
      end else if frmCarte_Ordprocessing.adodataset1.fieldbyname('fwdt_o').value<=frmCarte_Ordprocessing.adodataset1.fieldbyname('sp_appdt_o').value+7 then begin
        sp_appdt001.font.color:=clRed;
        sp_appdt001.font.style:=[];
      end else begin
        sp_appdt001.font.color:=clBlack;
        sp_appdt001.font.style:=[];
      end;
    end else begin
      sp_appdt001.font.color:=clBlack;
      sp_appdt001.font.style:=[];
    end;
  end;
  t3dt001.Font.Color:=clBlack;
  t3dt001.Font.Style:=[];
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('t3dt_r').isnull then begin
    t3dt001.caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('t3dt_r').value)+'*';
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_r').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_r').value>=frmCarte_Ordprocessing.adodataset1.fieldbyname('t3dt_r').value+7 then begin
        t3dt001.Font.Color:=clBlue; t3dt001.Font.Style:=[fsBold];
      end;
    end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_o').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_o').value>=frmCarte_Ordprocessing.adodataset1.fieldbyname('t3dt_r').value+7 then begin
        t3dt001.Font.Color:=clBlue; t3dt001.Font.Style:=[fsBold];
      end;
    end;
  end else if not frmCarte_Ordprocessing.ADODataSet1.FieldByName('t3dt').isnull then begin
    t3dt001.Caption:=formatdatetime('mm/dd',frmCarte_Ordprocessing.adodataset1.fieldbyname('t3dt').value);
    if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_r').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_r').value>=frmCarte_Ordprocessing.adodataset1.fieldbyname('t3dt').value+7 then begin
        t3dt001.Font.Color:=clBlue; t3dt001.Font.Style:=[fsBold];
      end;
    end else if not frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_o').isnull then begin
      if frmCarte_Ordprocessing.adodataset1.fieldbyname('ex_o').value>=frmCarte_Ordprocessing.adodataset1.fieldbyname('t3dt').value+7 then begin
        t3dt001.Font.Color:=clBlue; t3dt001.Font.Style:=[fsBold];
      end;
    end;
  end else begin
    t3dt001.Caption:='';
  end;
end;

procedure TfrmCarte_Reports.ppDetailBand7BeforePrint(Sender: TObject);
begin
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('m_ddt').isnull then
    ddtx5001.caption:=formatfloat('+#0;-#0',trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('m_ddt').value)-trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt').value))
  else ddtx5001.caption:='';
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('m_ddt0').isnull then
    ddt0x5001.caption:=formatfloat('+#0;-#0',trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('m_ddt0').value)-trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('ddt0').value))
  else ddt0x5001.caption:='';
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_mddt').isnull then
    mddtx5001.caption:=formatfloat('+#0;-#0',trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_mddt').value)-trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_ddt').value))
  else mddtx5001.caption:='';
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_mddt0').isnull then
    mddt0x5001.caption:=formatfloat('+#0;-#0',trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_mddt0').value)-trunc(frmCarte_Ordprocessing.adodataset1.fieldbyname('mcup_ddt0').value))
  else mddt0x5001.caption:='';
  if not frmCarte_Ordprocessing.adodataset1.fieldbyname('etam_bdc').isnull then begin
    if frmCarte_Ordprocessing.adodataset1.fieldbyname('etam_bdc').value>'' then
    bc004.caption:='*' else bc004.caption:='';
  end else begin
    bc004.caption:='';
  end;
end;

procedure TfrmCarte_Reports.ppGroupFooterBand3BeforePrint(Sender: TObject);
var
  sqlstr1:string;
begin
  sqlstr1:='';
    if frmCarte_Ordprocessing.combobox1.text>'' then sqlstr1:=sqlstr1+' and cgrp='''+frmCarte_Ordprocessing.combobox1.text+'''';
    if frmCarte_Ordprocessing.cxcombobox1.text>'' then sqlstr1:=sqlstr1+' and charindex(keycode,'''+frmCarte_Ordprocessing.cxcombobox1.text+''')>0';
    if frmCarte_Ordprocessing.combobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(projectno,'''+frmCarte_Ordprocessing.combobox2.text+''')>0';
    if frmCarte_Ordprocessing.cxcombobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(booking,'''+frmCarte_Ordprocessing.cxcombobox2.text+''')>0';
      sqlstr1:=sqlstr1+' and cust='''+frmCarte_Ordprocessing.adodataset1.fieldbyname('cust').value+'''';
    if frmCarte_Ordprocessing.combobox5.text>'' then sqlstr1:=sqlstr1+' and a.qty1_sp='''+frmCarte_Ordprocessing.combobox5.text+'''';
    if frmCarte_Ordprocessing.combobox6.text>'' then sqlstr1:=sqlstr1+' and custstyle='''+frmCarte_Ordprocessing.combobox6.text+'''';
    if frmCarte_Ordprocessing.combobox3.text>'' then begin
       if frmCarte_Ordprocessing.combobox3.text='未開制單' then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))'
       else sqlstr1:=sqlstr1+' and workorderno='''+frmCarte_Ordprocessing.combobox3.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sqlstr1:=sqlstr1+' and prod_site='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        sqlstr1:=sqlstr1+' and prod_site in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sqlstr1:=sqlstr1+' and prod_site in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sqlstr1:=sqlstr1+' and ((prod_site is null) or (prod_site=''''))';
    end;
    if frmCarte_Ordprocessing.combobox8.text>'' then sqlstr1:=sqlstr1+' and div like '''+frmCarte_Ordprocessing.combobox8.text+'%''';
        if frmCarte_Ordprocessing.cbb1.text>'' then begin
          if pos('*',frmCarte_Ordprocessing.cbb1.text)>0 then
            sqlstr1:=sqlstr1+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=1 and c.act_item3='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+''')'
                     +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=1 and act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+'''))'
          else sqlstr1:=sqlstr1+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=0 and c.act_item3='''+frmCarte_Ordprocessing.cbb1.text+''')'
                        +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb1.text+'''))';
        end;
        if frmCarte_Ordprocessing.cbb2.text>'' then sqlstr1:=sqlstr1+' and (exists (select c.seq from tbl_carte_sopc3 c,tbl_carte_sopc2 d '
                                                                   +'where a.seq=c.seq and a.seq=d.seq and c.seq_i=d.seq_i and c.act_cmp3=0 and d.act_cnt=1 and d.act_issue='''+frmCarte_Ordprocessing.cbb2.text+''')'
                                                                   +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb2.text+'''))';
    if frmCarte_Ordprocessing.dateedit1.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit1.date)+'''';
    if frmCarte_Ordprocessing.dateedit2.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit2.date+1)+'''';
    if frmCarte_Ordprocessing.dateedit3.date>0 then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit3.date)+''')';
    if frmCarte_Ordprocessing.edit1.text>'' then sqlstr1:=sqlstr1+' and mex_oe>='+frmCarte_Ordprocessing.edit1.text;
    if frmCarte_Ordprocessing.edit2.text>'' then sqlstr1:=sqlstr1+' and mex_oe<='+frmCarte_Ordprocessing.edit2.text;
    if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
      if frmCarte_Ordprocessing.dateedit4.date>0 then sqlstr1:=sqlstr1+' and act_cmpdt>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit4.date)+'''';
      if frmCarte_Ordprocessing.dateedit5.date>0 then sqlstr1:=sqlstr1+' and act_cmpdt<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit5.date)+'''';
    end else begin
      if frmCarte_Ordprocessing.chk3.checked then sqlstr1:=sqlstr1+' and ex_a is not null'
      else sqlstr1:=sqlstr1+' and ex_a is null';
    end;
    if frmCarte_Ordprocessing.chk4.checked then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0)';
    if frmCarte_Ordprocessing.chk5.checked then begin
      sqlstr1:=sqlstr1+' and a.ord_cancel1=''Y''';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))';
    end else begin
      sqlstr1:=sqlstr1+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))'
      else sqlstr1:=sqlstr1+' and workorderno>''''';
    end;


  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(distinct projectno) as x1,count(distinct workorderno) as x2,count(distinct custpo) as x3,count(distinct custstyle) as x4,'
             +'count(distinct phcolor) as x5 from tbl_carte_sopc1 a where 1=1';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prjd001.caption:=fieldbyname('x1').asstring;
      wod001.caption:=fieldbyname('x2').asstring;
      //custpod001.caption:=fieldbyname('x3').asstring;
      custstyled001.caption:=fieldbyname('x4').asstring;
      phcolord001.caption:=fieldbyname('x5').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(distinct custpo) as x1 from tbl_carte_sopc1 a where custpo>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custpod001.caption:=fieldbyname('x1').asstring;
    end else custpod001.caption:='0';
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(distinct custcolor) as x1 from tbl_carte_sopc1 a where custcolor>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custcolord001.caption:=fieldbyname('x1').asstring;
    end else custcolord001.caption:='0';
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where sp_appdt_a is null and ((sp_app1 is null) or (sp_app1='''') or (sp_app1=''N''))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      sp_appd001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mddtd001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_ddtd002.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_start is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_startd001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_end is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_endd002.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (fwdt_o is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_od001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (fwdt_a is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_ad001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (ex_o is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      ex_od001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (t3dt is null) and (t3dt_r is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      t3dtxd001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((prod_site='''') or (prod_site is null)) and qty1>0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prod_sited001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((prod_site1='''') or (prod_site1 is null)) and sp_qty>0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prod_site1d001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((line_tno=0) or (line_tno is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      line_tnod001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((qn_tno=0) or (qn_tno is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      qn_tnod001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((custpo='''') or (custpo is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custpoxd001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((etam_pak='''') or (etam_pak is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      pakxd001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((pvh_dest='''') or (pvh_dest is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      destxd001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ddt0 is not null then ddt0 else ddt end<='''+formatdatetime('yyyy-mm-dd',date+7)+''') and (case when ddt0 is not null then ddt0 else ddt end>'''+formatdatetime('yyyy-mm-dd',date)+''') and m_start is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    //parameters[1].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      mddtxd001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then mddtxd001.font.color:=clRed
      else mddtxd001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ddt0 is not null then ddt0 else ddt end<='''+formatdatetime('yyyy-mm-dd',date)+''') and m_start is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      mddtxd1001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then mddtxd1001.font.color:=clRed
      else mddtxd1001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<='''+formatdatetime('yyyy-mm-dd',date+7)+''') and (case when fwdt_r is not null then fwdt_r else fwdt_o end>'''+formatdatetime('yyyy-mm-dd',date)+''') and fwdt_a is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    //parameters[1].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_oxd001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then fwdt_oxd001.font.color:=clRed
      else fwdt_oxd001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<='''+formatdatetime('yyyy-mm-dd',date)+''') and fwdt_a is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_oxd1001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then fwdt_oxd1001.font.color:=clRed
      else fwdt_oxd1001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ex_r is not null then ex_r else ex_o end<='''+formatdatetime('yyyy-mm-dd',date+14)+''') and (case when ex_r is not null then ex_r else ex_o end>'''+formatdatetime('yyyy-mm-dd',date+7)+''') and act_cmpdt is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+14;
    //parameters[1].value:=date+7;
    open;
    if not fieldbyname('x1').isnull then begin
      ex_oxd001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then ex_oxd001.font.color:=clRed
      else ex_oxd001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ex_r is not null then ex_r else ex_o end<='''+formatdatetime('yyyy-mm-dd',date+7)+''') and act_cmpdt is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    open;
    if not fieldbyname('x1').isnull then begin
      ex_oxd002.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then ex_oxd002.font.color:=clRed
      else ex_oxd002.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ex_r is not null then ex_r else ex_o end>=case when t3dt_r is not null then t3dt_r else t3dt end+7) and ((t3dt is not null) or (t3dt_r is not null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      t3dtxd002.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then begin
        t3dtxd002.font.color:=clBlue;
        t3dtxd002.Font.Style:=[fsBold];
      end else begin
        t3dtxd002.font.color:=clBlack;
        t3dtxd002.Font.Style:=[];
      end;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end+7>=case when fwdt_r is not null then fwdt_r else fwdt_o end'
             +' and case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end<case when fwdt_r is not null then fwdt_r else fwdt_o end'
             +' and (sp_appdt_o is not null or sp_appdt_r is not null) and (fwdt_r is not null or fwdt_o is not null) and sp_appdt_a is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      sp_appxd001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then sp_appxd001.font.color:=clRed
      else sp_appxd001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end>=case when fwdt_r is not null then fwdt_r else fwdt_o end'
             +' and (sp_appdt_o is not null or sp_appdt_r is not null) and (fwdt_r is not null or fwdt_o is not null) and sp_appdt_a is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      sp_appxd1001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then sp_appxd1001.font.color:=clRed
      else sp_appxd1001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where exdiff<0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      exdiffd001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then exdiffd001.font.color:=clRed
      else exdiffd001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<m_ddt) and m_ddt is not null and fwdt_o is not null and m_end is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_ddtxd002.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then m_ddtxd002.font.color:=clRed
      else m_ddtxd002.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=1 and b.q1_dt1 is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      qn_tnoxd001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then qn_tnoxd001.font.color:=clRed
      else qn_tnoxd001.font.color:=clBlack;
    end;
  end;


  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where act_item>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      act_itemd001.caption:=fieldbyname('x1').asstring;
    end;
  end;
end;

procedure TfrmCarte_Reports.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Reports.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Reports.ppReport5PreviewFormCreate(Sender: TObject);
begin
  ppReport5.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport5.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Reports.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  with adoquery1 do begin
    close;
    sql.text:='select distinct count(distinct seqno) as x1,count(distinct act_issue31) as x2,count(distinct prod_site) as x3,count(distinct item_des) as x4,'
             +'count(distinct item_code) as x5,count(distinct item_scolor) as x6,count(distinct item_icolor) as x7,count(distinct item_vndr) as x8,count(distinct kc_r1_keycode) as x9 '
             +'from tbl_carte_itemtmp where tm=:x1';
    parameters[0].value:=tm;
    open;
    if not fieldbyname('x1').isnull then begin
      seqno001.caption:=fieldbyname('x1').asstring;
      issue001.caption:=fieldbyname('x2').asstring;
      site001.caption:=fieldbyname('x3').asstring;
      des001.caption:=fieldbyname('x4').asstring;
      item001.caption:=fieldbyname('x5').asstring;
      vndr001.caption:=fieldbyname('x8').asstring;
      scolor001.caption:=fieldbyname('x6').asstring;
      icolor001.caption:=fieldbyname('x7').asstring;
      keycode001.caption:=fieldbyname('x9').asstring;
    end;
  end;
end;

procedure TfrmCarte_Reports.ppSummaryBand2BeforePrint(Sender: TObject);
var
  sqlstr1:string;
begin
  sqlstr1:='';
    if frmCarte_Ordprocessing.combobox1.text>'' then sqlstr1:=sqlstr1+' and cgrp='''+frmCarte_Ordprocessing.combobox1.text+'''';
    if frmCarte_Ordprocessing.cxcombobox1.text>'' then sqlstr1:=sqlstr1+' and charindex(keycode,'''+frmCarte_Ordprocessing.cxcombobox1.text+''')>0';
    if frmCarte_Ordprocessing.combobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(projectno,'''+frmCarte_Ordprocessing.combobox2.text+''')>0';
    if frmCarte_Ordprocessing.cxcombobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(booking,'''+frmCarte_Ordprocessing.cxcombobox2.text+''')>0';
    if frmCarte_Ordprocessing.combobox4.text>'' then begin
      if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sqlstr1:=sqlstr1+' and cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox5.text>'' then sqlstr1:=sqlstr1+' and a.qty1_sp='''+frmCarte_Ordprocessing.combobox5.text+'''';
    if frmCarte_Ordprocessing.combobox6.text>'' then sqlstr1:=sqlstr1+' and custstyle='''+frmCarte_Ordprocessing.combobox6.text+'''';
    if frmCarte_Ordprocessing.combobox3.text>'' then begin
       if frmCarte_Ordprocessing.combobox3.text='未開制單' then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))'
       else sqlstr1:=sqlstr1+' and workorderno='''+frmCarte_Ordprocessing.combobox3.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sqlstr1:=sqlstr1+' and prod_site='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        sqlstr1:=sqlstr1+' and prod_site in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sqlstr1:=sqlstr1+' and prod_site in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sqlstr1:=sqlstr1+' and ((prod_site is null) or (prod_site=''''))';
    end;
    if frmCarte_Ordprocessing.combobox8.text>'' then sqlstr1:=sqlstr1+' and div like '''+frmCarte_Ordprocessing.combobox8.text+'%''';
    if frmCarte_Ordprocessing.cbb1.text>'' then begin
      if pos('*',frmCarte_Ordprocessing.cbb1.text)>0 then
        sqlstr1:=sqlstr1+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=1 and c.act_item3='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+''')'
                 +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=1 and act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+'''))'
      else sqlstr1:=sqlstr1+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=0 and c.act_item3='''+frmCarte_Ordprocessing.cbb1.text+''')'
                    +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb1.text+'''))';
    end;
    if frmCarte_Ordprocessing.cbb2.text>'' then sqlstr1:=sqlstr1+' and (exists (select c.seq from tbl_carte_sopc3 c,tbl_carte_sopc2 d '
                                                               +'where a.seq=c.seq and a.seq=d.seq and c.seq_i=d.seq_i and c.act_cmp3=0 and d.act_cnt=1 and d.act_issue='''+frmCarte_Ordprocessing.cbb2.text+''')'
                                                               +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb2.text+'''))';
    if frmCarte_Ordprocessing.dateedit1.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit1.date)+'''';
    if frmCarte_Ordprocessing.dateedit2.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit2.date+1)+'''';
    if frmCarte_Ordprocessing.dateedit3.date>0 then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit3.date)+''')';
    if frmCarte_Ordprocessing.edit1.text>'' then sqlstr1:=sqlstr1+' and mex_oe>='+frmCarte_Ordprocessing.edit1.text;
    if frmCarte_Ordprocessing.edit2.text>'' then sqlstr1:=sqlstr1+' and mex_oe<='+frmCarte_Ordprocessing.edit2.text;
    if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
      if frmCarte_Ordprocessing.dateedit4.date>0 then sqlstr1:=sqlstr1+' and act_cmpdt>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit4.date)+'''';
      if frmCarte_Ordprocessing.dateedit5.date>0 then sqlstr1:=sqlstr1+' and act_cmpdt<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit5.date)+'''';
    end else begin
      if frmCarte_Ordprocessing.chk3.checked then sqlstr1:=sqlstr1+' and ex_a is not null'
      else sqlstr1:=sqlstr1+' and ex_a is null';
    end;
    if frmCarte_Ordprocessing.chk4.checked then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0)';
    if frmCarte_Ordprocessing.chk5.checked then begin
      sqlstr1:=sqlstr1+' and a.ord_cancel1=''Y''';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))';
    end else begin
      sqlstr1:=sqlstr1+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))'
      else sqlstr1:=sqlstr1+' and workorderno>''''';
    end;

  custx001.caption:=frmCarte_Ordprocessing.combobox4.text;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(distinct projectno) as x1,count(distinct workorderno) as x2,count(distinct custpo) as x3,count(distinct custstyle) as x4,'
             +'count(distinct phcolor) as x5 from tbl_carte_sopc1 a where 1=1';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prj001.caption:=fieldbyname('x1').asstring;
      wo001.caption:=fieldbyname('x2').asstring;
      //custpo001.caption:=fieldbyname('x3').asstring;
      custstyle001.caption:=fieldbyname('x4').asstring;
      phcolor001.caption:=fieldbyname('x5').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(distinct custpo) as x1 from tbl_carte_sopc1 a where custpo>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custpo001.caption:=fieldbyname('x1').asstring;
    end else custpo001.caption:='0';
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(distinct custcolor) as x1 from tbl_carte_sopc1 a where custcolor>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custcolor001.caption:=fieldbyname('x1').asstring;
    end else custcolor001.caption:='0';
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where sp_appdt_a is null and ((sp_app1 is null) or (sp_app1='''') or (sp_app1=''N''))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      sp_app001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mddt001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_ddt002.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_start is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_start001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_end is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_end002.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (fwdt_o is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_o001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (fwdt_a is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_a001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (ex_o is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      ex_o001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (t3dt is null) and (t3dt_r is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      t3dtx001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((prod_site='''') or (prod_site is null)) and qty1>0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prod_site001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((prod_site1='''') or (prod_site1 is null)) and sp_qty>0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prod_site1001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((line_tno=0) or (line_tno is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      line_tno001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((qn_tno=0) or (qn_tno is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      qn_tno001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((custpo='''') or (custpo is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custpoxa001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((etam_pak='''') or (etam_pak is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      pakx001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((pvh_dest='''') or (pvh_dest is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      destx001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((case when ddt0 is not null then ddt0 else ddt end<='''+formatdatetime('yyyy-mm-dd',date+7)+''') and (case when ddt0 is not null then ddt0 else ddt end>'''+formatdatetime('yyyy-mm-dd',date)+''')) and m_start is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    //parameters[1].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      mddtx001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then mddtx001.font.color:=clRed
      else mddtx001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((case when ddt0 is not null then ddt0 else ddt end<='''+formatdatetime('yyyy-mm-dd',date)+''')) and m_start is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      mddtx1001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then mddtx1001.font.color:=clRed
      else mddtx1001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<='''+formatdatetime('yyyy-mm-dd',date+7)+''') and (case when fwdt_r is not null then fwdt_r else fwdt_o end>'''+formatdatetime('yyyy-mm-dd',date)+''') and fwdt_a is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    //parameters[1].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_ox001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then fwdt_ox001.font.color:=clRed
      else fwdt_ox001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<='''+formatdatetime('yyyy-mm-dd',date)+''') and fwdt_a is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_ox1001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then fwdt_ox1001.font.color:=clRed
      else fwdt_ox1001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ex_r is not null then ex_r else ex_o end<='''+formatdatetime('yyyy-mm-dd',date+14)+''') and (case when ex_r is not null then ex_r else ex_o end>'''+formatdatetime('yyyy-mm-dd',date+7)+''') and act_cmpdt is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+14;
    //parameters[1].value:=date+7;
    open;
    if not fieldbyname('x1').isnull then begin
      ex_ox001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then ex_ox001.font.color:=clRed
      else ex_ox001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ex_r is not null then ex_r else ex_o end<='''+formatdatetime('yyyy-mm-dd',date+7)+''') and act_cmpdt is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    open;
    if not fieldbyname('x1').isnull then begin
      ex_ox002.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then ex_ox002.font.color:=clRed
      else ex_ox002.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when ex_r is not null then ex_r else ex_o end>=case when t3dt_r is not null then t3dt_r else t3dt end+7) and ((t3dt is not null) or (t3dt_r is not null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      t3dtx002.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then begin
        t3dtx002.font.color:=clBlue;
        t3dtx002.Font.Style:=[fsBold];
      end else begin
        t3dtx002.font.color:=clBlack;
        t3dtx002.Font.Style:=[];
      end;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end+7>=case when fwdt_r is not null then fwdt_r else fwdt_o end'
             +' and case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end<case when fwdt_r is not null then fwdt_r else fwdt_o end'
             +' and (sp_appdt_o is not null or sp_appdt_r is not null) and (fwdt_r is not null or fwdt_o is not null) and sp_appdt_a is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      sp_appx001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then sp_appx001.font.color:=clRed
      else sp_appx001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end>=case when fwdt_r is not null then fwdt_r else fwdt_o end'
             +' and (sp_appdt_o is not null or sp_appdt_r is not null) and (fwdt_r is not null or fwdt_o is not null) and sp_appdt_a is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      sp_appx1001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then sp_appx1001.font.color:=clRed
      else sp_appx1001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where exdiff<0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      exdiff001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then exdiff001.font.color:=clRed
      else exdiff001.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<m_ddt) and m_ddt is not null and fwdt_o is not null and m_end is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_ddtx002.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then m_ddtx002.font.color:=clRed
      else m_ddtx002.font.color:=clBlack;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=1 and b.q1_dt1 is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      qn_tnox001.caption:=fieldbyname('x1').asstring;
      if fieldbyname('x1').value>0 then qn_tnox001.font.color:=clRed
      else qn_tnox001.font.color:=clBlack;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where act_item>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      act_item001.caption:=fieldbyname('x1').asstring;
    end;
  end;
end;

procedure TfrmCarte_Reports.ppSummaryBand7BeforePrint(Sender: TObject);
var
  sqlstr1:string;
begin
  sqlstr1:='';
    if frmCarte_Ordprocessing.combobox1.text>'' then sqlstr1:=sqlstr1+' and cgrp='''+frmCarte_Ordprocessing.combobox1.text+'''';
    if frmCarte_Ordprocessing.cxcombobox1.text>'' then sqlstr1:=sqlstr1+' and charindex(keycode,'''+frmCarte_Ordprocessing.cxcombobox1.text+''')>0';
    if frmCarte_Ordprocessing.combobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(projectno,'''+frmCarte_Ordprocessing.combobox2.text+''')>0';
    if frmCarte_Ordprocessing.cxcombobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(booking,'''+frmCarte_Ordprocessing.cxcombobox2.text+''')>0';
    if frmCarte_Ordprocessing.combobox4.text>'' then begin
      if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sqlstr1:=sqlstr1+' and cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox5.text>'' then sqlstr1:=sqlstr1+' and a.qty1_sp='''+frmCarte_Ordprocessing.combobox5.text+'''';
    if frmCarte_Ordprocessing.combobox6.text>'' then sqlstr1:=sqlstr1+' and custstyle='''+frmCarte_Ordprocessing.combobox6.text+'''';
    if frmCarte_Ordprocessing.combobox3.text>'' then begin
       if frmCarte_Ordprocessing.combobox3.text='未開制單' then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))'
       else sqlstr1:=sqlstr1+' and workorderno='''+frmCarte_Ordprocessing.combobox3.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sqlstr1:=sqlstr1+' and prod_site='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        sqlstr1:=sqlstr1+' and prod_site in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sqlstr1:=sqlstr1+' and prod_site in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sqlstr1:=sqlstr1+' and ((prod_site is null) or (prod_site=''''))';
    end;
    if frmCarte_Ordprocessing.combobox8.text>'' then sqlstr1:=sqlstr1+' and div like '''+frmCarte_Ordprocessing.combobox8.text+'%''';
    if frmCarte_Ordprocessing.cbb1.text>'' then begin
      if pos('*',frmCarte_Ordprocessing.cbb1.text)>0 then
        sqlstr1:=sqlstr1+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=1 and c.act_item3='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+''')'
                 +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=1 and act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+'''))'
      else sqlstr1:=sqlstr1+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=0 and c.act_item3='''+frmCarte_Ordprocessing.cbb1.text+''')'
                    +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb1.text+'''))';
    end;
    if frmCarte_Ordprocessing.cbb2.text>'' then sqlstr1:=sqlstr1+' and (exists (select c.seq from tbl_carte_sopc3 c,tbl_carte_sopc2 d '
                                                               +'where a.seq=c.seq and a.seq=d.seq and c.seq_i=d.seq_i and c.act_cmp3=0 and d.act_cnt=1 and d.act_issue='''+frmCarte_Ordprocessing.cbb2.text+''')'
                                                               +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb2.text+'''))';
    if frmCarte_Ordprocessing.dateedit1.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit1.date)+'''';
    if frmCarte_Ordprocessing.dateedit2.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit2.date+1)+'''';
    if frmCarte_Ordprocessing.dateedit3.date>0 then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit3.date)+''')';
    if frmCarte_Ordprocessing.edit1.text>'' then sqlstr1:=sqlstr1+' and mex_oe>='+frmCarte_Ordprocessing.edit1.text;
    if frmCarte_Ordprocessing.edit2.text>'' then sqlstr1:=sqlstr1+' and mex_oe<='+frmCarte_Ordprocessing.edit2.text;
    if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
      if frmCarte_Ordprocessing.dateedit4.date>0 then sqlstr1:=sqlstr1+' and act_cmpdt>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit4.date)+'''';
      if frmCarte_Ordprocessing.dateedit5.date>0 then sqlstr1:=sqlstr1+' and act_cmpdt<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit5.date)+'''';
    end else begin
      if frmCarte_Ordprocessing.chk3.checked then sqlstr1:=sqlstr1+' and ex_a is not null'
      else sqlstr1:=sqlstr1+' and ex_a is null';
    end;
    if frmCarte_Ordprocessing.chk4.checked then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0)';
    if frmCarte_Ordprocessing.chk5.checked then begin
      sqlstr1:=sqlstr1+' and a.ord_cancel1=''Y''';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))';
    end else begin
      sqlstr1:=sqlstr1+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))'
      else sqlstr1:=sqlstr1+' and workorderno>''''';
    end;


  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(distinct projectno) as x1,count(distinct workorderno) as x2,count(distinct custpo) as x3,count(distinct custstyle) as x4,'
             +'count(distinct phcolor) as x5 from tbl_carte_sopc1 a where 1=1';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prj5001.caption:=fieldbyname('x1').asstring;
      wo5001.caption:=fieldbyname('x2').asstring;
      //custpo5001.caption:=fieldbyname('x3').asstring;
      custstyle5001.caption:=fieldbyname('x4').asstring;
      phcolor5001.caption:=fieldbyname('x5').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(distinct custpo) as x1 from tbl_carte_sopc1 a where custpo>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custpo5001.caption:=fieldbyname('x1').asstring;
    end else custpo5001.caption:='0';
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(distinct custcolor) as x1 from tbl_carte_sopc1 a where custcolor>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custcolor5001.caption:=fieldbyname('x1').asstring;
    end else custcolor5001.caption:='0';
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where sp_appdt_a is null and ((sp_app1='''') or (sp_app1=''N'') or (sp_app1 is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      sp_app5001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      ddt5001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      ddt15001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (mcup_ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mddt5001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (mcup_mddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mddt15001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (fwdt_o is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdto5001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (ex_o is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      exo5001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((prod_site='''') or (prod_site is null)) and qty1>0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prodsite5001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with frmCarte_Ordprocessing.adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where act_item>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      actitem5001.caption:=fieldbyname('x1').asstring;
    end;
  end;
end;

end.
