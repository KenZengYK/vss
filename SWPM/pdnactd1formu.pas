unit pdnactd1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppDB, ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, DB, DBClient, ppViewr,
  ppStrtch, ppSubRpt, ppRichTx, ppMemo, ppParameter;

type
  Tfrmpdnactd1 = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    DataSource2: TDataSource;
    Query4: TClientDataSet;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    title001: TppLabel;
    ppLabel35: TppLabel;
    pdn001: TppLabel;
    ppLabel36: TppLabel;
    exfty001: TppLabel;
    ppLabel37: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel38: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel21: TppLabel;
    week01: TppLabel;
    ppLabel27: TppLabel;
    fty001: TppLabel;
    from001: TppLabel;
    exfty002: TppLabel;
    to001: TppLabel;
    title002: TppLabel;
    ppLabel51: TppLabel;
    ver001: TppLabel;
    grade002: TppLabel;
    acted001: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
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
    acol001: TppLabel;
    sd105: TppLabel;
    v002: TppLabel;
    v003: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel26: TppLabel;
    ppLabel67: TppLabel;
    bcn002: TppLabel;
    ppLabel71: TppLabel;
    shpm002: TppLabel;
    ppLabel73: TppLabel;
    exfty004: TppLabel;
    ppLabel75: TppLabel;
    extm002: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel30: TppLabel;
    ppMemo1: TppMemo;
    ppLabel31: TppLabel;
    ppMemo2: TppMemo;
    grade001: TppLabel;
    ppShape19: TppShape;
    ppRichText1: TppRichText;
    ppGroup14: TppGroup;
    ppGroupHeaderBand14: TppGroupHeaderBand;
    ppShape3: TppShape;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel25: TppLabel;
    ppLabel32: TppLabel;
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
    ss117: TppLabel;
    ss118: TppLabel;
    ppLabel29: TppLabel;
    ppLine20: TppLine;
    ppLabel1: TppLabel;
    ss105: TppLabel;
    ss115: TppLabel;
    ppLine21: TppLine;
    ppGroupFooterBand14: TppGroupFooterBand;
    ttl001: TppLabel;
    ppShape4: TppShape;
    ppLabel96: TppLabel;
    ppDBCalc2: TppDBCalc;
    sbq01: TppDBCalc;
    sbd01: TppDBCalc;
    sbp01: TppLabel;
    sb101: TppLabel;
    sb103: TppLabel;
    sb104: TppLabel;
    sb106: TppLabel;
    sb107: TppLabel;
    sb108: TppLabel;
    sb105: TppLabel;
    v006: TppLabel;
    x001: TppDBCalc;
    x002: TppDBCalc;
    v005: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBPipeline3: TppDBPipeline;
    DataSource3: TDataSource;
    Query5: TClientDataSet;
    ppGroup18: TppGroup;
    ppGroupHeaderBand18: TppGroupHeaderBand;
    ppGroupFooterBand18: TppGroupFooterBand;
    ppLabel53: TppLabel;
    ppLabel62: TppLabel;
    ppLabel70: TppLabel;
    ppLabel72: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
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
    ppLabel295: TppLabel;
    ppLabel296: TppLabel;
    sdpo: TppLabel;
    sdcolor: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppDBText12: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    v001: TppLabel;
    v007: TppLabel;
    ppDBText5: TppDBText;
    v004: TppDBCalc;
    ppLabel52: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape6: TppShape;
    ppLabel43: TppLabel;
    ppLabel109: TppLabel;
    exdttm002: TppLabel;
    ppLabel90: TppLabel;
    truck001: TppLabel;
    ppLabel89: TppLabel;
    indttm001: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ondt001: TppLabel;
    vess001: TppLabel;
    lport001: TppLabel;
    ppLabel123: TppLabel;
    voyn001: TppLabel;
    ppLabel125: TppLabel;
    shipmode001: TppLabel;
    ppLabel127: TppLabel;
    exdt001: TppLabel;
    ppLabel129: TppLabel;
    exdt002: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel147: TppLabel;
    mnotepad001: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    y004: TppDBText;
    y001: TppDBText;
    y002: TppDBText;
    y003: TppDBText;
    ppDBText31: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText33: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    vdp001: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText32: TppDBText;
    ppDBText34: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppGroup19: TppGroup;
    ppGroupHeaderBand19: TppGroupHeaderBand;
    ppShape16: TppShape;
    ppLabel48: TppLabel;
    ppLabel79: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel49: TppLabel;
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
    ppLabel50: TppLabel;
    ppLabel54: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine8: TppLine;
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
    ppLabel59: TppLabel;
    y005: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel80: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel124: TppLabel;
    ppLabel126: TppLabel;
    ppLabel130: TppLabel;
    ppLabel66: TppLabel;
    ppLabel133: TppLabel;
    ppGroupFooterBand19: TppGroupFooterBand;
    ppShape17: TppShape;
    ppLabel74: TppLabel;
    sum001: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    vdp002: TppLabel;
    ppDBCalc13: TppDBCalc;
    poqty001: TppLabel;
    s001: TppLabel;
    s002: TppLabel;
    s003: TppLabel;
    s004: TppLabel;
    ppGroup20: TppGroup;
    ppGroupHeaderBand20: TppGroupHeaderBand;
    ppGroupFooterBand20: TppGroupFooterBand;
    ppGroup21: TppGroup;
    ppGroupHeaderBand21: TppGroupHeaderBand;
    ppGroupFooterBand21: TppGroupFooterBand;
    ppLabel76: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    dtl001: TppLabel;
    dtl002: TppLabel;
    sh001: TppLabel;
    ss001: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
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
    ppDBText14: TppDBText;
    d1013: TppLabel;
    d1014: TppLabel;
    d1016: TppLabel;
    d1018: TppLabel;
    d2013: TppLabel;
    d2014: TppLabel;
    d2016: TppLabel;
    d2018: TppLabel;
    d1011: TppLabel;
    d1012: TppLabel;
    d2012: TppLabel;
    d2011: TppLabel;
    d1017: TppLabel;
    d2017: TppLabel;
    d1023: TppLabel;
    d1024: TppLabel;
    d1026: TppLabel;
    d1028: TppLabel;
    d2023: TppLabel;
    d2024: TppLabel;
    d2026: TppLabel;
    d2028: TppLabel;
    d1021: TppLabel;
    d1022: TppLabel;
    d2022: TppLabel;
    d2021: TppLabel;
    d1027: TppLabel;
    d2027: TppLabel;
    d1033: TppLabel;
    d1034: TppLabel;
    d1036: TppLabel;
    d1038: TppLabel;
    d2033: TppLabel;
    d2034: TppLabel;
    d2036: TppLabel;
    d2038: TppLabel;
    d1031: TppLabel;
    d1032: TppLabel;
    d2032: TppLabel;
    d2031: TppLabel;
    d1037: TppLabel;
    d2037: TppLabel;
    d1043: TppLabel;
    d1044: TppLabel;
    d1046: TppLabel;
    d1048: TppLabel;
    d2043: TppLabel;
    d2044: TppLabel;
    d2046: TppLabel;
    d2048: TppLabel;
    d1041: TppLabel;
    d1042: TppLabel;
    d2042: TppLabel;
    d2041: TppLabel;
    d1047: TppLabel;
    d2047: TppLabel;
    d1053: TppLabel;
    d1054: TppLabel;
    d1056: TppLabel;
    d1058: TppLabel;
    d2053: TppLabel;
    d2054: TppLabel;
    d2056: TppLabel;
    d2058: TppLabel;
    d1051: TppLabel;
    d1052: TppLabel;
    d2052: TppLabel;
    d2051: TppLabel;
    d1057: TppLabel;
    d2057: TppLabel;
    acol002: TppLabel;
    d1063: TppLabel;
    d1064: TppLabel;
    d1066: TppLabel;
    d1068: TppLabel;
    d2063: TppLabel;
    d2064: TppLabel;
    d2066: TppLabel;
    d2068: TppLabel;
    d1061: TppLabel;
    d1062: TppLabel;
    d2062: TppLabel;
    d2061: TppLabel;
    d1067: TppLabel;
    d2067: TppLabel;
    d1073: TppLabel;
    d1074: TppLabel;
    d1076: TppLabel;
    d1078: TppLabel;
    d2073: TppLabel;
    d2074: TppLabel;
    d2076: TppLabel;
    d2078: TppLabel;
    d1071: TppLabel;
    d1072: TppLabel;
    d2072: TppLabel;
    d2071: TppLabel;
    d1077: TppLabel;
    d2077: TppLabel;
    d1083: TppLabel;
    d1084: TppLabel;
    d1086: TppLabel;
    d1088: TppLabel;
    d2083: TppLabel;
    d2084: TppLabel;
    d2086: TppLabel;
    d2088: TppLabel;
    d1081: TppLabel;
    d1082: TppLabel;
    d2082: TppLabel;
    d2081: TppLabel;
    d1087: TppLabel;
    d2087: TppLabel;
    d0003: TppLabel;
    d0002: TppLabel;
    d0001: TppLabel;
    d0013: TppLabel;
    d0012: TppLabel;
    d0011: TppLabel;
    d0023: TppLabel;
    d0022: TppLabel;
    d0021: TppLabel;
    d0033: TppLabel;
    d0032: TppLabel;
    d0031: TppLabel;
    d0043: TppLabel;
    d0042: TppLabel;
    d0041: TppLabel;
    d0053: TppLabel;
    d0052: TppLabel;
    d0051: TppLabel;
    d0063: TppLabel;
    d0062: TppLabel;
    d0061: TppLabel;
    d0073: TppLabel;
    d0072: TppLabel;
    d0071: TppLabel;
    d0083: TppLabel;
    d0082: TppLabel;
    d0081: TppLabel;
    d1005: TppLabel;
    d2005: TppLabel;
    d1015: TppLabel;
    d2015: TppLabel;
    d1025: TppLabel;
    d1035: TppLabel;
    d2025: TppLabel;
    d2035: TppLabel;
    d0004: TppLabel;
    d0014: TppLabel;
    d0024: TppLabel;
    d0034: TppLabel;
    d0044: TppLabel;
    d1045: TppLabel;
    d2045: TppLabel;
    d1055: TppLabel;
    d2055: TppLabel;
    d0054: TppLabel;
    d1065: TppLabel;
    d2065: TppLabel;
    d0064: TppLabel;
    d1075: TppLabel;
    d2075: TppLabel;
    d0074: TppLabel;
    d1085: TppLabel;
    d2085: TppLabel;
    d0084: TppLabel;
    d0005: TppLabel;
    d0015: TppLabel;
    d0025: TppLabel;
    d0035: TppLabel;
    d0045: TppLabel;
    d0055: TppLabel;
    d0065: TppLabel;
    d0075: TppLabel;
    d0085: TppLabel;
    d0006: TppLabel;
    d0016: TppLabel;
    d0026: TppLabel;
    d0036: TppLabel;
    d0046: TppLabel;
    d0056: TppLabel;
    d0066: TppLabel;
    d0076: TppLabel;
    d0086: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppShape15: TppShape;
    ppLabel68: TppLabel;
    ppDBCalc4: TppDBCalc;
    tbq001: TppDBCalc;
    tbd001: TppDBCalc;
    tbp001: TppLabel;
    tb1001: TppLabel;
    tb1002: TppLabel;
    tb1003: TppLabel;
    tb1004: TppLabel;
    tb1006: TppLabel;
    tb1007: TppLabel;
    tb1008: TppLabel;
    tb2001: TppLabel;
    tb2002: TppLabel;
    tb2003: TppLabel;
    tb2004: TppLabel;
    tb2006: TppLabel;
    tb2007: TppLabel;
    tb2008: TppLabel;
    tb1005: TppLabel;
    tb2005: TppLabel;
    tb0004: TppLabel;
    sum002: TppLabel;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppLabel63: TppLabel;
    bcn001: TppLabel;
    ppLabel64: TppLabel;
    shpm001: TppLabel;
    ppLabel65: TppLabel;
    exfty003: TppLabel;
    ppLabel69: TppLabel;
    extm001: TppLabel;
    ppGroupFooterBand13: TppGroupFooterBand;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
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
    ppLabel28: TppLabel;
    ppLabel132: TppLabel;
    ppLine28: TppLine;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLine40: TppLine;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel300: TppLabel;
    ppLabel301: TppLabel;
    s2005: TppLabel;
    s2105: TppLabel;
    s1005: TppLabel;
    s1105: TppLabel;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppShape5: TppShape;
    ppLabel34: TppLabel;
    ppDBCalc8: TppDBCalc;
    tq001: TppDBCalc;
    td001: TppDBCalc;
    tp001: TppLabel;
    t1001: TppLabel;
    t1002: TppLabel;
    t1003: TppLabel;
    t1004: TppLabel;
    t1006: TppLabel;
    t1007: TppLabel;
    t1008: TppLabel;
    t2001: TppLabel;
    t2002: TppLabel;
    t2003: TppLabel;
    t2004: TppLabel;
    t2006: TppLabel;
    t2007: TppLabel;
    t2008: TppLabel;
    t1005: TppLabel;
    t2005: TppLabel;
    t0004: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    rwo001: TppLabel;
    rwo002: TppLabel;
    ppGroupFooterBand5: TppGroupFooterBand;
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
    b2005: TppDBCalc;
    b1005: TppDBCalc;
    b0004: TppLabel;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    rwo201: TppLabel;
    rwo202: TppLabel;
    rwo211: TppLabel;
    rwo212: TppLabel;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppShape10: TppShape;
    ppLabel478: TppLabel;
    ppDBCalc3: TppDBCalc;
    bq002: TppDBCalc;
    bd002: TppDBCalc;
    b1013: TppDBCalc;
    b1014: TppDBCalc;
    b1016: TppDBCalc;
    b1018: TppDBCalc;
    b2014: TppDBCalc;
    b2016: TppDBCalc;
    b2018: TppDBCalc;
    b1011: TppDBCalc;
    b1012: TppDBCalc;
    b2011: TppDBCalc;
    b2012: TppDBCalc;
    bp002: TppLabel;
    b1017: TppDBCalc;
    b2017: TppDBCalc;
    b1023: TppDBCalc;
    b1024: TppDBCalc;
    b1026: TppDBCalc;
    b1028: TppDBCalc;
    b2023: TppDBCalc;
    b2024: TppDBCalc;
    b2026: TppDBCalc;
    b2028: TppDBCalc;
    b1021: TppDBCalc;
    b1022: TppDBCalc;
    b2021: TppDBCalc;
    b2022: TppDBCalc;
    b1027: TppDBCalc;
    b2027: TppDBCalc;
    b2013: TppDBCalc;
    ppLine15: TppLine;
    bs1101: TppLabel;
    bs1102: TppLabel;
    bs1103: TppLabel;
    bs1104: TppLabel;
    bs1106: TppLabel;
    bs1107: TppLabel;
    bs1108: TppLabel;
    bs1201: TppLabel;
    bs1202: TppLabel;
    bs1203: TppLabel;
    bs1204: TppLabel;
    bs1206: TppLabel;
    bs1207: TppLabel;
    bs1208: TppLabel;
    bs1105: TppLabel;
    bs1205: TppLabel;
    b1015: TppDBCalc;
    b1025: TppDBCalc;
    b2015: TppDBCalc;
    b2025: TppDBCalc;
    bs0004: TppLabel;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    rwo301: TppLabel;
    rwo302: TppLabel;
    rwo311: TppLabel;
    rwo312: TppLabel;
    rwo321: TppLabel;
    rwo322: TppLabel;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppShape11: TppShape;
    ppLabel480: TppLabel;
    ppDBCalc48: TppDBCalc;
    bq003: TppDBCalc;
    bd003: TppDBCalc;
    b1033: TppDBCalc;
    b1034: TppDBCalc;
    b1036: TppDBCalc;
    b1038: TppDBCalc;
    b2033: TppDBCalc;
    b2034: TppDBCalc;
    b2036: TppDBCalc;
    b2038: TppDBCalc;
    b1031: TppDBCalc;
    b1032: TppDBCalc;
    b2031: TppDBCalc;
    b2032: TppDBCalc;
    bp003: TppLabel;
    b1037: TppDBCalc;
    b2037: TppDBCalc;
    b1043: TppDBCalc;
    b1044: TppDBCalc;
    b1046: TppDBCalc;
    b1048: TppDBCalc;
    b2043: TppDBCalc;
    b2044: TppDBCalc;
    b2046: TppDBCalc;
    b2048: TppDBCalc;
    b1041: TppDBCalc;
    b1042: TppDBCalc;
    b2041: TppDBCalc;
    b2042: TppDBCalc;
    b1047: TppDBCalc;
    b2047: TppDBCalc;
    b1053: TppDBCalc;
    b1054: TppDBCalc;
    b1056: TppDBCalc;
    b1058: TppDBCalc;
    b2053: TppDBCalc;
    b2054: TppDBCalc;
    b2056: TppDBCalc;
    b2058: TppDBCalc;
    b1051: TppDBCalc;
    b1052: TppDBCalc;
    b2051: TppDBCalc;
    b2052: TppDBCalc;
    b1057: TppDBCalc;
    b2057: TppDBCalc;
    ppLine16: TppLine;
    bs2101: TppLabel;
    bs2102: TppLabel;
    bs2103: TppLabel;
    bs2104: TppLabel;
    bs2106: TppLabel;
    bs2107: TppLabel;
    bs2108: TppLabel;
    bs2201: TppLabel;
    bs2202: TppLabel;
    bs2203: TppLabel;
    bs2204: TppLabel;
    bs2206: TppLabel;
    bs2207: TppLabel;
    bs2208: TppLabel;
    bs2105: TppLabel;
    bs2205: TppLabel;
    b1035: TppDBCalc;
    b1045: TppDBCalc;
    b1055: TppDBCalc;
    b2035: TppDBCalc;
    b2045: TppDBCalc;
    b2055: TppDBCalc;
    bs0014: TppLabel;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    rwo401: TppLabel;
    rwo402: TppLabel;
    rwo411: TppLabel;
    rwo412: TppLabel;
    rwo421: TppLabel;
    rwo422: TppLabel;
    rwo431: TppLabel;
    rwo432: TppLabel;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppShape12: TppShape;
    ppLabel482: TppLabel;
    ppDBCalc114: TppDBCalc;
    bq004: TppDBCalc;
    bd004: TppDBCalc;
    b1063: TppDBCalc;
    b1064: TppDBCalc;
    b1066: TppDBCalc;
    b1068: TppDBCalc;
    b2063: TppDBCalc;
    b2064: TppDBCalc;
    b2066: TppDBCalc;
    b2068: TppDBCalc;
    b1061: TppDBCalc;
    b1062: TppDBCalc;
    b2061: TppDBCalc;
    b2062: TppDBCalc;
    bp004: TppLabel;
    b1067: TppDBCalc;
    b2067: TppDBCalc;
    b1073: TppDBCalc;
    b1074: TppDBCalc;
    b1076: TppDBCalc;
    b1078: TppDBCalc;
    b2073: TppDBCalc;
    b2074: TppDBCalc;
    b2076: TppDBCalc;
    b2078: TppDBCalc;
    b1071: TppDBCalc;
    b1072: TppDBCalc;
    b2071: TppDBCalc;
    b2072: TppDBCalc;
    b1077: TppDBCalc;
    b2077: TppDBCalc;
    b1083: TppDBCalc;
    b1084: TppDBCalc;
    b1086: TppDBCalc;
    b1088: TppDBCalc;
    b2083: TppDBCalc;
    b2084: TppDBCalc;
    b2086: TppDBCalc;
    b2088: TppDBCalc;
    b1081: TppDBCalc;
    b1082: TppDBCalc;
    b2081: TppDBCalc;
    b2082: TppDBCalc;
    b1087: TppDBCalc;
    b2087: TppDBCalc;
    b1093: TppDBCalc;
    b1094: TppDBCalc;
    b1096: TppDBCalc;
    b1098: TppDBCalc;
    b2093: TppDBCalc;
    b2094: TppDBCalc;
    b2096: TppDBCalc;
    b2098: TppDBCalc;
    b1091: TppDBCalc;
    b1092: TppDBCalc;
    b2091: TppDBCalc;
    b2092: TppDBCalc;
    b1097: TppDBCalc;
    b2097: TppDBCalc;
    ppLine17: TppLine;
    bs3101: TppLabel;
    bs3102: TppLabel;
    bs3103: TppLabel;
    bs3104: TppLabel;
    bs3106: TppLabel;
    bs3107: TppLabel;
    bs3108: TppLabel;
    bs3201: TppLabel;
    bs3202: TppLabel;
    bs3203: TppLabel;
    bs3204: TppLabel;
    bs3206: TppLabel;
    bs3207: TppLabel;
    bs3208: TppLabel;
    bs3105: TppLabel;
    bs3205: TppLabel;
    b1065: TppDBCalc;
    b1075: TppDBCalc;
    b1085: TppDBCalc;
    b1095: TppDBCalc;
    b2065: TppDBCalc;
    b2075: TppDBCalc;
    b2085: TppDBCalc;
    b2095: TppDBCalc;
    bs0024: TppLabel;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    rwo501: TppLabel;
    rwo502: TppLabel;
    rwo511: TppLabel;
    rwo512: TppLabel;
    rwo521: TppLabel;
    rwo522: TppLabel;
    rwo531: TppLabel;
    rwo532: TppLabel;
    rwo541: TppLabel;
    rwo542: TppLabel;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppShape13: TppShape;
    ppLabel484: TppLabel;
    ppDBCalc201: TppDBCalc;
    bq005: TppDBCalc;
    bd005: TppDBCalc;
    b1103: TppDBCalc;
    b1104: TppDBCalc;
    b1106: TppDBCalc;
    b1108: TppDBCalc;
    b2103: TppDBCalc;
    b2104: TppDBCalc;
    b2106: TppDBCalc;
    b2108: TppDBCalc;
    b1101: TppDBCalc;
    b1102: TppDBCalc;
    b2101: TppDBCalc;
    b2102: TppDBCalc;
    bp005: TppLabel;
    b1107: TppDBCalc;
    b2107: TppDBCalc;
    b1113: TppDBCalc;
    b1114: TppDBCalc;
    b1116: TppDBCalc;
    b1118: TppDBCalc;
    b2113: TppDBCalc;
    b2114: TppDBCalc;
    b2116: TppDBCalc;
    b2118: TppDBCalc;
    b1111: TppDBCalc;
    b1112: TppDBCalc;
    b2111: TppDBCalc;
    b2112: TppDBCalc;
    b1117: TppDBCalc;
    b2117: TppDBCalc;
    b1123: TppDBCalc;
    b1124: TppDBCalc;
    b1126: TppDBCalc;
    b1128: TppDBCalc;
    b2123: TppDBCalc;
    b2124: TppDBCalc;
    b2126: TppDBCalc;
    b2128: TppDBCalc;
    b1121: TppDBCalc;
    b1122: TppDBCalc;
    b2121: TppDBCalc;
    b2122: TppDBCalc;
    b1127: TppDBCalc;
    b2127: TppDBCalc;
    b1133: TppDBCalc;
    b1134: TppDBCalc;
    b1136: TppDBCalc;
    b1138: TppDBCalc;
    b2133: TppDBCalc;
    b2134: TppDBCalc;
    b2136: TppDBCalc;
    b2138: TppDBCalc;
    b1131: TppDBCalc;
    b1132: TppDBCalc;
    b2131: TppDBCalc;
    b2132: TppDBCalc;
    b1137: TppDBCalc;
    b2137: TppDBCalc;
    b1143: TppDBCalc;
    b1144: TppDBCalc;
    b1146: TppDBCalc;
    b1148: TppDBCalc;
    b2143: TppDBCalc;
    b2144: TppDBCalc;
    b2146: TppDBCalc;
    b2148: TppDBCalc;
    b1141: TppDBCalc;
    b1142: TppDBCalc;
    b2141: TppDBCalc;
    b2142: TppDBCalc;
    b1147: TppDBCalc;
    b2147: TppDBCalc;
    ppLine18: TppLine;
    bs4101: TppLabel;
    bs4102: TppLabel;
    bs4103: TppLabel;
    bs4104: TppLabel;
    bs4106: TppLabel;
    bs4107: TppLabel;
    bs4108: TppLabel;
    bs4201: TppLabel;
    bs4202: TppLabel;
    bs4203: TppLabel;
    bs4204: TppLabel;
    bs4206: TppLabel;
    bs4207: TppLabel;
    bs4208: TppLabel;
    bs4105: TppLabel;
    bs4205: TppLabel;
    b1105: TppDBCalc;
    b1115: TppDBCalc;
    b1125: TppDBCalc;
    b1135: TppDBCalc;
    b1145: TppDBCalc;
    b2105: TppDBCalc;
    b2115: TppDBCalc;
    b2125: TppDBCalc;
    b2135: TppDBCalc;
    b2145: TppDBCalc;
    bs0034: TppLabel;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    rwo601: TppLabel;
    rwo602: TppLabel;
    rwo611: TppLabel;
    rwo612: TppLabel;
    rwo621: TppLabel;
    rwo622: TppLabel;
    rwo631: TppLabel;
    rwo632: TppLabel;
    rwo641: TppLabel;
    rwo642: TppLabel;
    rwo651: TppLabel;
    rwo652: TppLabel;
    ppGroupFooterBand12: TppGroupFooterBand;
    ppShape14: TppShape;
    ppLabel486: TppLabel;
    ppDBCalc309: TppDBCalc;
    bq006: TppDBCalc;
    bd006: TppDBCalc;
    b1153: TppDBCalc;
    b1154: TppDBCalc;
    b1156: TppDBCalc;
    b1158: TppDBCalc;
    b2153: TppDBCalc;
    b2154: TppDBCalc;
    b2156: TppDBCalc;
    b2158: TppDBCalc;
    b1151: TppDBCalc;
    b1152: TppDBCalc;
    b2151: TppDBCalc;
    b2152: TppDBCalc;
    bp006: TppLabel;
    b1157: TppDBCalc;
    b2157: TppDBCalc;
    b1163: TppDBCalc;
    b1164: TppDBCalc;
    b1166: TppDBCalc;
    b1168: TppDBCalc;
    b2163: TppDBCalc;
    b2164: TppDBCalc;
    b2166: TppDBCalc;
    b2168: TppDBCalc;
    b1161: TppDBCalc;
    b1162: TppDBCalc;
    b2161: TppDBCalc;
    b2162: TppDBCalc;
    b1167: TppDBCalc;
    b2167: TppDBCalc;
    b1173: TppDBCalc;
    b1174: TppDBCalc;
    b1176: TppDBCalc;
    b1178: TppDBCalc;
    b2173: TppDBCalc;
    b2174: TppDBCalc;
    b2176: TppDBCalc;
    b2178: TppDBCalc;
    b1171: TppDBCalc;
    b1172: TppDBCalc;
    b2171: TppDBCalc;
    b2172: TppDBCalc;
    b1177: TppDBCalc;
    b2177: TppDBCalc;
    b1183: TppDBCalc;
    b1184: TppDBCalc;
    b1186: TppDBCalc;
    b1188: TppDBCalc;
    b2183: TppDBCalc;
    b2184: TppDBCalc;
    b2186: TppDBCalc;
    b2188: TppDBCalc;
    b1181: TppDBCalc;
    b1182: TppDBCalc;
    b2181: TppDBCalc;
    b2182: TppDBCalc;
    b1187: TppDBCalc;
    b2187: TppDBCalc;
    b1193: TppDBCalc;
    b1194: TppDBCalc;
    b1196: TppDBCalc;
    b1198: TppDBCalc;
    b2193: TppDBCalc;
    b2194: TppDBCalc;
    b2196: TppDBCalc;
    b2198: TppDBCalc;
    b1191: TppDBCalc;
    b1192: TppDBCalc;
    b2191: TppDBCalc;
    b2192: TppDBCalc;
    b1197: TppDBCalc;
    b2197: TppDBCalc;
    b1203: TppDBCalc;
    b1204: TppDBCalc;
    b1206: TppDBCalc;
    b1208: TppDBCalc;
    b2203: TppDBCalc;
    b2204: TppDBCalc;
    b2206: TppDBCalc;
    b2208: TppDBCalc;
    b1201: TppDBCalc;
    b1202: TppDBCalc;
    b2201: TppDBCalc;
    b2202: TppDBCalc;
    b1207: TppDBCalc;
    b2207: TppDBCalc;
    ppLine19: TppLine;
    bs5101: TppLabel;
    bs5102: TppLabel;
    bs5103: TppLabel;
    bs5104: TppLabel;
    bs5106: TppLabel;
    bs5107: TppLabel;
    bs5108: TppLabel;
    bs5201: TppLabel;
    bs5202: TppLabel;
    bs5203: TppLabel;
    bs5204: TppLabel;
    bs5206: TppLabel;
    bs5207: TppLabel;
    bs5208: TppLabel;
    bs5105: TppLabel;
    bs5205: TppLabel;
    b2155: TppDBCalc;
    b2165: TppDBCalc;
    b2175: TppDBCalc;
    b2185: TppDBCalc;
    b2195: TppDBCalc;
    b2205: TppDBCalc;
    b1155: TppDBCalc;
    b1165: TppDBCalc;
    b1175: TppDBCalc;
    b1185: TppDBCalc;
    b1195: TppDBCalc;
    b1205: TppDBCalc;
    bs0044: TppLabel;
    ppGroup15: TppGroup;
    ppGroupHeaderBand15: TppGroupHeaderBand;
    rwo701: TppLabel;
    rwo702: TppLabel;
    rwo711: TppLabel;
    rwo712: TppLabel;
    rwo721: TppLabel;
    rwo722: TppLabel;
    rwo731: TppLabel;
    rwo732: TppLabel;
    rwo741: TppLabel;
    rwo742: TppLabel;
    rwo751: TppLabel;
    rwo752: TppLabel;
    rwo761: TppLabel;
    rwo762: TppLabel;
    ppGroupFooterBand15: TppGroupFooterBand;
    ppShape20: TppShape;
    ppLabel316: TppLabel;
    ppDBCalc5: TppDBCalc;
    bq007: TppDBCalc;
    bd007: TppDBCalc;
    b1213: TppDBCalc;
    b1214: TppDBCalc;
    b1216: TppDBCalc;
    b1218: TppDBCalc;
    b2213: TppDBCalc;
    b2214: TppDBCalc;
    b2216: TppDBCalc;
    b2218: TppDBCalc;
    b1211: TppDBCalc;
    b1212: TppDBCalc;
    b2211: TppDBCalc;
    b2212: TppDBCalc;
    bp007: TppLabel;
    b1217: TppDBCalc;
    b2217: TppDBCalc;
    b1223: TppDBCalc;
    b1224: TppDBCalc;
    b1226: TppDBCalc;
    b1228: TppDBCalc;
    b2223: TppDBCalc;
    b2224: TppDBCalc;
    b2226: TppDBCalc;
    b2228: TppDBCalc;
    b1221: TppDBCalc;
    b1222: TppDBCalc;
    b2221: TppDBCalc;
    b2222: TppDBCalc;
    b1227: TppDBCalc;
    b2227: TppDBCalc;
    b1233: TppDBCalc;
    b1234: TppDBCalc;
    b1236: TppDBCalc;
    b1238: TppDBCalc;
    b2233: TppDBCalc;
    b2234: TppDBCalc;
    b2236: TppDBCalc;
    b2238: TppDBCalc;
    b1231: TppDBCalc;
    b1232: TppDBCalc;
    b2231: TppDBCalc;
    b2232: TppDBCalc;
    b1237: TppDBCalc;
    b2237: TppDBCalc;
    ba243: TppDBCalc;
    ba244: TppDBCalc;
    ba246: TppDBCalc;
    ba248: TppDBCalc;
    bb243: TppDBCalc;
    bb244: TppDBCalc;
    bb246: TppDBCalc;
    bb248: TppDBCalc;
    ba241: TppDBCalc;
    ba242: TppDBCalc;
    bb241: TppDBCalc;
    bb242: TppDBCalc;
    ba247: TppDBCalc;
    bb247: TppDBCalc;
    b1243: TppDBCalc;
    b1244: TppDBCalc;
    b1246: TppDBCalc;
    b1248: TppDBCalc;
    b2243: TppDBCalc;
    b2244: TppDBCalc;
    b2246: TppDBCalc;
    b2248: TppDBCalc;
    b1241: TppDBCalc;
    b1242: TppDBCalc;
    b2241: TppDBCalc;
    b2242: TppDBCalc;
    b1247: TppDBCalc;
    b2247: TppDBCalc;
    b1253: TppDBCalc;
    b1254: TppDBCalc;
    b1256: TppDBCalc;
    b1258: TppDBCalc;
    b2253: TppDBCalc;
    b2254: TppDBCalc;
    b2256: TppDBCalc;
    b2258: TppDBCalc;
    b1251: TppDBCalc;
    b1252: TppDBCalc;
    b2251: TppDBCalc;
    b2252: TppDBCalc;
    b1257: TppDBCalc;
    b2257: TppDBCalc;
    ppLine37: TppLine;
    bs6101: TppLabel;
    bs6102: TppLabel;
    bs6103: TppLabel;
    bs6104: TppLabel;
    bs6106: TppLabel;
    bs6107: TppLabel;
    bs6108: TppLabel;
    bs6201: TppLabel;
    bs6202: TppLabel;
    bs6203: TppLabel;
    bs6204: TppLabel;
    bs6206: TppLabel;
    bs6207: TppLabel;
    bs6208: TppLabel;
    b1263: TppDBCalc;
    b1264: TppDBCalc;
    b1266: TppDBCalc;
    b1268: TppDBCalc;
    b2263: TppDBCalc;
    b2264: TppDBCalc;
    b2266: TppDBCalc;
    b2268: TppDBCalc;
    b1261: TppDBCalc;
    b1262: TppDBCalc;
    b2261: TppDBCalc;
    b2262: TppDBCalc;
    b1267: TppDBCalc;
    b2267: TppDBCalc;
    bs6105: TppLabel;
    bs6205: TppLabel;
    b1215: TppDBCalc;
    b1225: TppDBCalc;
    b1235: TppDBCalc;
    ba245: TppDBCalc;
    b1245: TppDBCalc;
    b1255: TppDBCalc;
    b1265: TppDBCalc;
    b2215: TppDBCalc;
    b2225: TppDBCalc;
    b2235: TppDBCalc;
    bb245: TppDBCalc;
    b2245: TppDBCalc;
    b2255: TppDBCalc;
    b2265: TppDBCalc;
    bs0054: TppLabel;
    ppGroup16: TppGroup;
    ppGroupHeaderBand16: TppGroupHeaderBand;
    rwo801: TppLabel;
    rwo802: TppLabel;
    rwo811: TppLabel;
    rwo812: TppLabel;
    rwo821: TppLabel;
    rwo822: TppLabel;
    rwo831: TppLabel;
    rwo832: TppLabel;
    rwo841: TppLabel;
    rwo842: TppLabel;
    rwo851: TppLabel;
    rwo852: TppLabel;
    rwo861: TppLabel;
    rwo862: TppLabel;
    rwo871: TppLabel;
    rwo872: TppLabel;
    ppGroupFooterBand16: TppGroupFooterBand;
    ppShape21: TppShape;
    ppLabel347: TppLabel;
    ppDBCalc107: TppDBCalc;
    bq008: TppDBCalc;
    bd008: TppDBCalc;
    b1273: TppDBCalc;
    b1274: TppDBCalc;
    b1276: TppDBCalc;
    b1278: TppDBCalc;
    b2273: TppDBCalc;
    b2274: TppDBCalc;
    b2276: TppDBCalc;
    b2278: TppDBCalc;
    b1271: TppDBCalc;
    b1272: TppDBCalc;
    b2271: TppDBCalc;
    b2272: TppDBCalc;
    bp008: TppLabel;
    b1277: TppDBCalc;
    b2277: TppDBCalc;
    b1283: TppDBCalc;
    b1284: TppDBCalc;
    b1286: TppDBCalc;
    b1288: TppDBCalc;
    b2283: TppDBCalc;
    b2284: TppDBCalc;
    b2286: TppDBCalc;
    b2288: TppDBCalc;
    b1281: TppDBCalc;
    b1282: TppDBCalc;
    b2281: TppDBCalc;
    b2282: TppDBCalc;
    b1287: TppDBCalc;
    b2287: TppDBCalc;
    b1293: TppDBCalc;
    b1294: TppDBCalc;
    b1296: TppDBCalc;
    b1298: TppDBCalc;
    b2293: TppDBCalc;
    b2294: TppDBCalc;
    b2296: TppDBCalc;
    b2298: TppDBCalc;
    b1291: TppDBCalc;
    b1292: TppDBCalc;
    b2291: TppDBCalc;
    b2292: TppDBCalc;
    b1297: TppDBCalc;
    b2297: TppDBCalc;
    b1303: TppDBCalc;
    b1304: TppDBCalc;
    b1306: TppDBCalc;
    b1308: TppDBCalc;
    b2303: TppDBCalc;
    b2304: TppDBCalc;
    b2306: TppDBCalc;
    b2308: TppDBCalc;
    b1301: TppDBCalc;
    b1302: TppDBCalc;
    b2301: TppDBCalc;
    b2302: TppDBCalc;
    b1307: TppDBCalc;
    b2307: TppDBCalc;
    b1313: TppDBCalc;
    b1314: TppDBCalc;
    b1316: TppDBCalc;
    b1318: TppDBCalc;
    b2313: TppDBCalc;
    b2314: TppDBCalc;
    b2316: TppDBCalc;
    b2318: TppDBCalc;
    b1311: TppDBCalc;
    b1312: TppDBCalc;
    b2311: TppDBCalc;
    b2312: TppDBCalc;
    b1317: TppDBCalc;
    b2317: TppDBCalc;
    b1323: TppDBCalc;
    b1324: TppDBCalc;
    b1326: TppDBCalc;
    b1328: TppDBCalc;
    b2323: TppDBCalc;
    b2324: TppDBCalc;
    b2326: TppDBCalc;
    b2328: TppDBCalc;
    b1321: TppDBCalc;
    b1322: TppDBCalc;
    b2321: TppDBCalc;
    b2322: TppDBCalc;
    b1327: TppDBCalc;
    b2327: TppDBCalc;
    ppLine38: TppLine;
    bs7101: TppLabel;
    bs7102: TppLabel;
    bs7103: TppLabel;
    bs7104: TppLabel;
    bs7106: TppLabel;
    bs7107: TppLabel;
    bs7108: TppLabel;
    bs7201: TppLabel;
    bs7202: TppLabel;
    bs7203: TppLabel;
    bs7204: TppLabel;
    bs7206: TppLabel;
    bs7207: TppLabel;
    bs7208: TppLabel;
    b1333: TppDBCalc;
    b1334: TppDBCalc;
    b1336: TppDBCalc;
    b1338: TppDBCalc;
    b2333: TppDBCalc;
    b2334: TppDBCalc;
    b2336: TppDBCalc;
    b2338: TppDBCalc;
    b1331: TppDBCalc;
    b1332: TppDBCalc;
    b2331: TppDBCalc;
    b2332: TppDBCalc;
    b1337: TppDBCalc;
    b2337: TppDBCalc;
    b1343: TppDBCalc;
    b1344: TppDBCalc;
    b1346: TppDBCalc;
    b1348: TppDBCalc;
    b2343: TppDBCalc;
    b2344: TppDBCalc;
    b2346: TppDBCalc;
    b2348: TppDBCalc;
    b1341: TppDBCalc;
    b1342: TppDBCalc;
    b2341: TppDBCalc;
    b2342: TppDBCalc;
    b1347: TppDBCalc;
    b2347: TppDBCalc;
    bs7105: TppLabel;
    bs7205: TppLabel;
    bs0064: TppLabel;
    b1275: TppDBCalc;
    b1285: TppDBCalc;
    b1295: TppDBCalc;
    b1305: TppDBCalc;
    b1315: TppDBCalc;
    b1325: TppDBCalc;
    b1335: TppDBCalc;
    b1345: TppDBCalc;
    b2275: TppDBCalc;
    b2285: TppDBCalc;
    b2295: TppDBCalc;
    b2305: TppDBCalc;
    b2315: TppDBCalc;
    b2325: TppDBCalc;
    b2335: TppDBCalc;
    b2345: TppDBCalc;
    ppGroup17: TppGroup;
    ppGroupHeaderBand17: TppGroupHeaderBand;
    rwo901: TppLabel;
    rwo902: TppLabel;
    rwo911: TppLabel;
    rwo912: TppLabel;
    rwo921: TppLabel;
    rwo922: TppLabel;
    rwo931: TppLabel;
    rwo932: TppLabel;
    rwo941: TppLabel;
    rwo942: TppLabel;
    rwo951: TppLabel;
    rwo952: TppLabel;
    rwo961: TppLabel;
    rwo962: TppLabel;
    rwo971: TppLabel;
    rwo972: TppLabel;
    rwo981: TppLabel;
    rwo982: TppLabel;
    ppGroupFooterBand17: TppGroupFooterBand;
    ppShape22: TppShape;
    ppLabel363: TppLabel;
    ppDBCalc224: TppDBCalc;
    bq009: TppDBCalc;
    bd009: TppDBCalc;
    b1353: TppDBCalc;
    b1354: TppDBCalc;
    b1356: TppDBCalc;
    b1358: TppDBCalc;
    b2353: TppDBCalc;
    b2354: TppDBCalc;
    b2356: TppDBCalc;
    b2358: TppDBCalc;
    b1351: TppDBCalc;
    b1352: TppDBCalc;
    b2351: TppDBCalc;
    b2352: TppDBCalc;
    bp009: TppLabel;
    b1357: TppDBCalc;
    b2357: TppDBCalc;
    b1363: TppDBCalc;
    b1364: TppDBCalc;
    b1366: TppDBCalc;
    b1368: TppDBCalc;
    b2363: TppDBCalc;
    b2364: TppDBCalc;
    b2366: TppDBCalc;
    b2368: TppDBCalc;
    b1361: TppDBCalc;
    b1362: TppDBCalc;
    b2361: TppDBCalc;
    b2362: TppDBCalc;
    b1367: TppDBCalc;
    b2367: TppDBCalc;
    b1373: TppDBCalc;
    b1374: TppDBCalc;
    b1376: TppDBCalc;
    b1378: TppDBCalc;
    b2373: TppDBCalc;
    b2374: TppDBCalc;
    b2376: TppDBCalc;
    b2378: TppDBCalc;
    b1371: TppDBCalc;
    b1372: TppDBCalc;
    b2371: TppDBCalc;
    b2372: TppDBCalc;
    b1377: TppDBCalc;
    b2377: TppDBCalc;
    b1383: TppDBCalc;
    b1384: TppDBCalc;
    b1386: TppDBCalc;
    b1388: TppDBCalc;
    b2383: TppDBCalc;
    b2384: TppDBCalc;
    b2386: TppDBCalc;
    b2388: TppDBCalc;
    b1381: TppDBCalc;
    b1382: TppDBCalc;
    b2381: TppDBCalc;
    b2382: TppDBCalc;
    b1387: TppDBCalc;
    b2387: TppDBCalc;
    b1413: TppDBCalc;
    b1414: TppDBCalc;
    b1416: TppDBCalc;
    b1418: TppDBCalc;
    b2413: TppDBCalc;
    b2414: TppDBCalc;
    b2416: TppDBCalc;
    b2418: TppDBCalc;
    b1391: TppDBCalc;
    b1412: TppDBCalc;
    b2411: TppDBCalc;
    b2412: TppDBCalc;
    b1417: TppDBCalc;
    b2417: TppDBCalc;
    b1393: TppDBCalc;
    b1394: TppDBCalc;
    b1396: TppDBCalc;
    b1398: TppDBCalc;
    b2393: TppDBCalc;
    b2394: TppDBCalc;
    b2396: TppDBCalc;
    b2398: TppDBCalc;
    b1401: TppDBCalc;
    b1392: TppDBCalc;
    b2391: TppDBCalc;
    b2392: TppDBCalc;
    b1397: TppDBCalc;
    b2397: TppDBCalc;
    ppLine39: TppLine;
    bs8101: TppLabel;
    bs8102: TppLabel;
    bs8103: TppLabel;
    bs8104: TppLabel;
    bs8106: TppLabel;
    bs8107: TppLabel;
    bs8108: TppLabel;
    bs8201: TppLabel;
    bs8202: TppLabel;
    bs8203: TppLabel;
    bs8204: TppLabel;
    bs8206: TppLabel;
    bs8207: TppLabel;
    bs8208: TppLabel;
    b1403: TppDBCalc;
    b1404: TppDBCalc;
    b1406: TppDBCalc;
    b1408: TppDBCalc;
    b2403: TppDBCalc;
    b2404: TppDBCalc;
    b2406: TppDBCalc;
    b2408: TppDBCalc;
    b1411: TppDBCalc;
    b1402: TppDBCalc;
    b2401: TppDBCalc;
    b2402: TppDBCalc;
    b1407: TppDBCalc;
    b2407: TppDBCalc;
    b1423: TppDBCalc;
    b1424: TppDBCalc;
    b1426: TppDBCalc;
    b1428: TppDBCalc;
    b2423: TppDBCalc;
    b2424: TppDBCalc;
    b2426: TppDBCalc;
    b2428: TppDBCalc;
    b1421: TppDBCalc;
    b1422: TppDBCalc;
    b2421: TppDBCalc;
    b2422: TppDBCalc;
    b1427: TppDBCalc;
    b2427: TppDBCalc;
    b1433: TppDBCalc;
    b1434: TppDBCalc;
    b1436: TppDBCalc;
    b1438: TppDBCalc;
    b2433: TppDBCalc;
    b2434: TppDBCalc;
    b2436: TppDBCalc;
    b2438: TppDBCalc;
    b1431: TppDBCalc;
    b1432: TppDBCalc;
    b2431: TppDBCalc;
    b2432: TppDBCalc;
    b1437: TppDBCalc;
    b2437: TppDBCalc;
    bs8105: TppLabel;
    bs8205: TppLabel;
    ppLabel55: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand14BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand13BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand4BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand5BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand6BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand7BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand8BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand9BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand12BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand15BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand16BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand17BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand17BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand16BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand15BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand12BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand9BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand8BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand7BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand6BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand5BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand11BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand11BeforePrint(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand19BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand19BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand18BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnactd1: Tfrmpdnactd1;

implementation

uses mainformu, pdnformu, pdnreportformu;

{$R *.dfm}

procedure Tfrmpdnactd1.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmpdnactd1.ppHeaderBand1BeforePrint(Sender: TObject);
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

procedure Tfrmpdnactd1.ppDetailBand1BeforePrint(Sender: TObject);
var
  p01,p02,p03,p04,p05,p06,p07,p08,p09,p10,p11,p12,p13,p14,p15,p16,p17,p18:integer;
  t101,t102,t103,t104,t105,t106,t107,t108,t109,t110,t111,t112,t113,t114,t115,t116,t117,t118:integer;
  t201,t202,t203,t204,t205,t206,t207,t208,t209,t210,t211,t212,t213,t214,t215,t216,t217,t218:integer;
  t301,t302,t303,t304,t305,t306,t307,t308,t309,t310,t311,t312,t313,t314,t315,t316,t317,t318:integer;
  aq01,aq02,aq03,aq04,aq05,aq06,aq07,aq08,aq09,aq10,aq11,aq12,aq13,aq14,aq15,aq16,aq17,aq18:integer;
  t401,t402,t403,t404,t405,t406,t407,t408,t409,t410,t411,t412,t413,t414,t415,t416,t417,t418:integer;
  qn2,qn3:string;
begin
  p01:=query4.fieldbyname('q1pqty').value;p02:=query4.fieldbyname('q2pqty').value;p03:=query4.fieldbyname('q3pqty').value;
  p04:=query4.fieldbyname('q4pqty').value;p05:=query4.fieldbyname('q5pqty').value;p06:=query4.fieldbyname('q6pqty').value;
  p07:=query4.fieldbyname('q7pqty').value;p08:=query4.fieldbyname('q8pqty').value;p09:=query4.fieldbyname('q9pqty').value;
  p10:=query4.fieldbyname('q10pqty').value;p11:=query4.fieldbyname('q11pqty').value;p12:=query4.fieldbyname('q12pqty').value;
  p13:=query4.fieldbyname('q13pqty').value;p14:=query4.fieldbyname('q14pqty').value;p15:=query4.fieldbyname('q15pqty').value;
  p16:=query4.fieldbyname('q16pqty').value;p17:=query4.fieldbyname('q17pqty').value;p18:=query4.fieldbyname('q18pqty').value;
  t101:=query4.fieldbyname('q1t1qty').value;t102:=query4.fieldbyname('q2t1qty').value;t103:=query4.fieldbyname('q3t1qty').value;
  t104:=query4.fieldbyname('q4t1qty').value;t105:=query4.fieldbyname('q5t1qty').value;t106:=query4.fieldbyname('q6t1qty').value;
  t107:=query4.fieldbyname('q7t1qty').value;t108:=query4.fieldbyname('q8t1qty').value;t109:=query4.fieldbyname('q9t1qty').value;
  t110:=query4.fieldbyname('q10t1qty').value;t111:=query4.fieldbyname('q11t1qty').value;t112:=query4.fieldbyname('q12t1qty').value;
  t113:=query4.fieldbyname('q13t1qty').value;t114:=query4.fieldbyname('q14t1qty').value;t115:=query4.fieldbyname('q15t1qty').value;
  t116:=query4.fieldbyname('q16t1qty').value;t117:=query4.fieldbyname('q17t1qty').value;t118:=query4.fieldbyname('q18t1qty').value;
  t201:=query4.fieldbyname('q1t2qty').value;t202:=query4.fieldbyname('q2t2qty').value;t203:=query4.fieldbyname('q3t2qty').value;
  t204:=query4.fieldbyname('q4t2qty').value;t205:=query4.fieldbyname('q5t2qty').value;t206:=query4.fieldbyname('q6t2qty').value;
  t207:=query4.fieldbyname('q7t2qty').value;t208:=query4.fieldbyname('q8t2qty').value;t209:=query4.fieldbyname('q9t2qty').value;
  t210:=query4.fieldbyname('q10t2qty').value;t211:=query4.fieldbyname('q11t2qty').value;t212:=query4.fieldbyname('q12t2qty').value;
  t213:=query4.fieldbyname('q13t2qty').value;t214:=query4.fieldbyname('q14t2qty').value;t215:=query4.fieldbyname('q15t2qty').value;
  t216:=query4.fieldbyname('q16t2qty').value;t217:=query4.fieldbyname('q17t2qty').value;t218:=query4.fieldbyname('q18t2qty').value;
  t301:=query4.fieldbyname('q1t3qty').value;t302:=query4.fieldbyname('q2t3qty').value;t303:=query4.fieldbyname('q3t3qty').value;
  t304:=query4.fieldbyname('q4t3qty').value;t305:=query4.fieldbyname('q5t3qty').value;t306:=query4.fieldbyname('q6t3qty').value;
  t307:=query4.fieldbyname('q7t3qty').value;t308:=query4.fieldbyname('q8t3qty').value;t309:=query4.fieldbyname('q9t3qty').value;
  t310:=query4.fieldbyname('q10t3qty').value;t311:=query4.fieldbyname('q11t3qty').value;t312:=query4.fieldbyname('q12t3qty').value;
  t313:=query4.fieldbyname('q13t3qty').value;t314:=query4.fieldbyname('q14t3qty').value;t315:=query4.fieldbyname('q15t3qty').value;
  t316:=query4.fieldbyname('q16t3qty').value;t317:=query4.fieldbyname('q17t3qty').value;t318:=query4.fieldbyname('q18t3qty').value;
  aq01:=query4.fieldbyname('q1aqqty').value;aq02:=query4.fieldbyname('q2aqqty').value;aq03:=query4.fieldbyname('q3aqqty').value;
  aq04:=query4.fieldbyname('q4aqqty').value;aq05:=query4.fieldbyname('q5aqqty').value;aq06:=query4.fieldbyname('q6aqqty').value;
  aq07:=query4.fieldbyname('q7aqqty').value;aq08:=query4.fieldbyname('q8aqqty').value;aq09:=query4.fieldbyname('q9aqqty').value;
  aq10:=query4.fieldbyname('q10aqqty').value;aq11:=query4.fieldbyname('q11aqqty').value;aq12:=query4.fieldbyname('q12aqqty').value;
  aq13:=query4.fieldbyname('q13aqqty').value;aq14:=query4.fieldbyname('q14aqqty').value;aq15:=query4.fieldbyname('q15aqqty').value;
  aq16:=query4.fieldbyname('q16aqqty').value;aq17:=query4.fieldbyname('q17aqqty').value;aq18:=query4.fieldbyname('q18aqqty').value;
  t401:=query4.fieldbyname('q1t4qty').value;t402:=query4.fieldbyname('q2t4qty').value;t403:=query4.fieldbyname('q3t4qty').value;
  t404:=query4.fieldbyname('q4t4qty').value;t405:=query4.fieldbyname('q5t4qty').value;t406:=query4.fieldbyname('q6t4qty').value;
  t407:=query4.fieldbyname('q7t4qty').value;t408:=query4.fieldbyname('q8t4qty').value;t409:=query4.fieldbyname('q9t4qty').value;
  t410:=query4.fieldbyname('q10t4qty').value;t411:=query4.fieldbyname('q11t4qty').value;t412:=query4.fieldbyname('q12t4qty').value;
  t413:=query4.fieldbyname('q13t4qty').value;t414:=query4.fieldbyname('q14t4qty').value;t415:=query4.fieldbyname('q15t4qty').value;
  t416:=query4.fieldbyname('q16t4qty').value;t417:=query4.fieldbyname('q17t4qty').value;t418:=query4.fieldbyname('q18t4qty').value;

  sd101.Caption:=inttostr(query4.fieldbyname('q1qty').value+query4.fieldbyname('q3qty').value+query4.fieldbyname('q5qty').value+query4.fieldbyname('q7qty').value+query4.fieldbyname('q9qty').value+query4.fieldbyname('q11qty').value+query4.fieldbyname('q13qty').value+query4.fieldbyname('q15qty').value+query4.fieldbyname('q17qty').value
  +query4.fieldbyname('q2qty').value+query4.fieldbyname('q4qty').value+query4.fieldbyname('q6qty').value+query4.fieldbyname('q8qty').value+query4.fieldbyname('q10qty').value+query4.fieldbyname('q12qty').value+query4.fieldbyname('q14qty').value+query4.fieldbyname('q16qty').value+query4.fieldbyname('q18qty').value);
  sd103.Caption:=inttostr(query4.fieldbyname('q1t1qty').value+query4.fieldbyname('q3t1qty').value+query4.fieldbyname('q5t1qty').value+query4.fieldbyname('q7t1qty').value+query4.fieldbyname('q9t1qty').value+query4.fieldbyname('q11t1qty').value+query4.fieldbyname('q13t1qty').value+query4.fieldbyname('q15t1qty').value+query4.fieldbyname('q17t1qty').value
  +query4.fieldbyname('q2t1qty').value+query4.fieldbyname('q4t1qty').value+query4.fieldbyname('q6t1qty').value+query4.fieldbyname('q8t1qty').value+query4.fieldbyname('q10t1qty').value+query4.fieldbyname('q12t1qty').value+query4.fieldbyname('q14t1qty').value+query4.fieldbyname('q16t1qty').value+query4.fieldbyname('q18t1qty').value);
  sd104.Caption:=inttostr(query4.fieldbyname('q1t2qty').value+query4.fieldbyname('q3t2qty').value+query4.fieldbyname('q5t2qty').value+query4.fieldbyname('q7t2qty').value+query4.fieldbyname('q9t2qty').value+query4.fieldbyname('q11t2qty').value+query4.fieldbyname('q13t2qty').value+query4.fieldbyname('q15t2qty').value+query4.fieldbyname('q17t2qty').value
  +query4.fieldbyname('q2t2qty').value+query4.fieldbyname('q4t2qty').value+query4.fieldbyname('q6t2qty').value+query4.fieldbyname('q8t2qty').value+query4.fieldbyname('q10t2qty').value+query4.fieldbyname('q12t2qty').value+query4.fieldbyname('q14t2qty').value+query4.fieldbyname('q16t2qty').value+query4.fieldbyname('q18t2qty').value);
  sd105.Caption:=inttostr(query4.fieldbyname('q1pkqty').value+query4.fieldbyname('q3pkqty').value+query4.fieldbyname('q5pkqty').value+query4.fieldbyname('q7pkqty').value+query4.fieldbyname('q9pkqty').value+query4.fieldbyname('q11pkqty').value+query4.fieldbyname('q13pkqty').value+query4.fieldbyname('q15pkqty').value+query4.fieldbyname('q17pkqty').value
  +query4.fieldbyname('q2pkqty').value+query4.fieldbyname('q4pkqty').value+query4.fieldbyname('q6pkqty').value+query4.fieldbyname('q8pkqty').value+query4.fieldbyname('q10pkqty').value+query4.fieldbyname('q12pkqty').value+query4.fieldbyname('q14pkqty').value+query4.fieldbyname('q16pkqty').value+query4.fieldbyname('q18pkqty').value);
  sd106.Caption:=inttostr(query4.fieldbyname('q1t3qty').value+query4.fieldbyname('q3t3qty').value+query4.fieldbyname('q5t3qty').value+query4.fieldbyname('q7t3qty').value+query4.fieldbyname('q9t3qty').value+query4.fieldbyname('q11t3qty').value+query4.fieldbyname('q13t3qty').value+query4.fieldbyname('q15t3qty').value+query4.fieldbyname('q17t3qty').value
  +query4.fieldbyname('q2t3qty').value+query4.fieldbyname('q4t3qty').value+query4.fieldbyname('q6t3qty').value+query4.fieldbyname('q8t3qty').value+query4.fieldbyname('q10t3qty').value+query4.fieldbyname('q12t3qty').value+query4.fieldbyname('q14t3qty').value+query4.fieldbyname('q16t3qty').value+query4.fieldbyname('q18t3qty').value);
  sd107.Caption:=inttostr(query4.fieldbyname('q1aqqty').value+query4.fieldbyname('q3aqqty').value+query4.fieldbyname('q5aqqty').value+query4.fieldbyname('q7aqqty').value+query4.fieldbyname('q9aqqty').value+query4.fieldbyname('q11aqqty').value+query4.fieldbyname('q13aqqty').value+query4.fieldbyname('q15aqqty').value+query4.fieldbyname('q17aqqty').value
  +query4.fieldbyname('q2aqqty').value+query4.fieldbyname('q4aqqty').value+query4.fieldbyname('q6aqqty').value+query4.fieldbyname('q8aqqty').value+query4.fieldbyname('q10aqqty').value+query4.fieldbyname('q12aqqty').value+query4.fieldbyname('q14aqqty').value+query4.fieldbyname('q16aqqty').value+query4.fieldbyname('q18aqqty').value);
  sd108.Caption:=inttostr(query4.fieldbyname('q1t4qty').value+query4.fieldbyname('q3t4qty').value+query4.fieldbyname('q5t4qty').value+query4.fieldbyname('q7t4qty').value+query4.fieldbyname('q9t4qty').value+query4.fieldbyname('q11t4qty').value+query4.fieldbyname('q13t4qty').value+query4.fieldbyname('q15t4qty').value+query4.fieldbyname('q17t4qty').value
  +query4.fieldbyname('q2t4qty').value+query4.fieldbyname('q4t4qty').value+query4.fieldbyname('q6t4qty').value+query4.fieldbyname('q8t4qty').value+query4.fieldbyname('q10t4qty').value+query4.fieldbyname('q12t4qty').value+query4.fieldbyname('q14t4qty').value+query4.fieldbyname('q16t4qty').value+query4.fieldbyname('q18t4qty').value);
{
  sd201.Caption:=inttostr(query4.fieldbyname('q2qty').value+query4.fieldbyname('q4qty').value+query4.fieldbyname('q6qty').value+query4.fieldbyname('q8qty').value+query4.fieldbyname('q10qty').value+query4.fieldbyname('q12qty').value+query4.fieldbyname('q14qty').value+query4.fieldbyname('q16qty').value+query4.fieldbyname('q18qty').value);
  sd202.Caption:=inttostr(p02+p04+p06+p08+p10+p12+p14+p16+p18);
  sd203.Caption:=inttostr(query4.fieldbyname('q2t1qty').value+query4.fieldbyname('q4t1qty').value+query4.fieldbyname('q6t1qty').value+query4.fieldbyname('q8t1qty').value+query4.fieldbyname('q10t1qty').value+query4.fieldbyname('q12t1qty').value+query4.fieldbyname('q14t1qty').value+query4.fieldbyname('q16t1qty').value+query4.fieldbyname('q18t1qty').value);
  sd204.Caption:=inttostr(query4.fieldbyname('q2t2qty').value+query4.fieldbyname('q4t2qty').value+query4.fieldbyname('q6t2qty').value+query4.fieldbyname('q8t2qty').value+query4.fieldbyname('q10t2qty').value+query4.fieldbyname('q12t2qty').value+query4.fieldbyname('q14t2qty').value+query4.fieldbyname('q16t2qty').value+query4.fieldbyname('q18t2qty').value);
  sd205.Caption:=inttostr(query4.fieldbyname('q2pkqty').value+query4.fieldbyname('q4pkqty').value+query4.fieldbyname('q6pkqty').value+query4.fieldbyname('q8pkqty').value+query4.fieldbyname('q10pkqty').value+query4.fieldbyname('q12pkqty').value+query4.fieldbyname('q14pkqty').value+query4.fieldbyname('q16pkqty').value+query4.fieldbyname('q18pkqty').value);
  sd206.Caption:=inttostr(query4.fieldbyname('q2t3qty').value+query4.fieldbyname('q4t3qty').value+query4.fieldbyname('q6t3qty').value+query4.fieldbyname('q8t3qty').value+query4.fieldbyname('q10t3qty').value+query4.fieldbyname('q12t3qty').value+query4.fieldbyname('q14t3qty').value+query4.fieldbyname('q16t3qty').value+query4.fieldbyname('q18t3qty').value);
  sd207.Caption:=inttostr(query4.fieldbyname('q2aqqty').value+query4.fieldbyname('q4aqqty').value+query4.fieldbyname('q6aqqty').value+query4.fieldbyname('q8aqqty').value+query4.fieldbyname('q10aqqty').value+query4.fieldbyname('q12aqqty').value+query4.fieldbyname('q14aqqty').value+query4.fieldbyname('q16aqqty').value+query4.fieldbyname('q18aqqty').value);
  sd208.Caption:=inttostr(query4.fieldbyname('q2t4qty').value+query4.fieldbyname('q4t4qty').value+query4.fieldbyname('q6t4qty').value+query4.fieldbyname('q8t4qty').value+query4.fieldbyname('q10t4qty').value+query4.fieldbyname('q12t4qty').value+query4.fieldbyname('q14t4qty').value+query4.fieldbyname('q16t4qty').value+query4.fieldbyname('q18t4qty').value);

  sd301.Caption:=inttostr(query4.fieldbyname('q3qty').value+query4.fieldbyname('q6qty').value+query4.fieldbyname('q9qty').value+query4.fieldbyname('q12qty').value+query4.fieldbyname('q15qty').value+query4.fieldbyname('q18qty').value);
  sd302.Caption:=inttostr(p03+p06+p09+p12+p15+p18);
  sd303.Caption:=inttostr(query4.fieldbyname('q3t1qty').value+query4.fieldbyname('q6t1qty').value+query4.fieldbyname('q9t1qty').value+query4.fieldbyname('q12t1qty').value+query4.fieldbyname('q15t1qty').value+query4.fieldbyname('q16t1qty').value);
  sd304.Caption:=inttostr(query4.fieldbyname('q3t2qty').value+query4.fieldbyname('q6t2qty').value+query4.fieldbyname('q9t2qty').value+query4.fieldbyname('q12t2qty').value+query4.fieldbyname('q15t2qty').value+query4.fieldbyname('q18t2qty').value);
  sd306.Caption:=inttostr(query4.fieldbyname('q3t3qty').value+query4.fieldbyname('q6t3qty').value+query4.fieldbyname('q9t3qty').value+query4.fieldbyname('q12t3qty').value+query4.fieldbyname('q15t3qty').value+query4.fieldbyname('q18t3qty').value);
  sd307.Caption:=inttostr(query4.fieldbyname('q3aqqty').value+query4.fieldbyname('q6aqqty').value+query4.fieldbyname('q9aqqty').value+query4.fieldbyname('q12aqqty').value+query4.fieldbyname('q15aqqty').value+query4.fieldbyname('q18aqqty').value);
  sd308.Caption:=inttostr(query4.fieldbyname('q3t4qty').value+query4.fieldbyname('q6t4qty').value+query4.fieldbyname('q9t4qty').value+query4.fieldbyname('q12t4qty').value+query4.fieldbyname('q15t4qty').value+query4.fieldbyname('q18t4qty').value);
}
  if (p01+p03+p05+p07+p09+p11+p13+p15+p17+p02+p04+p06+p08+p10+p12+p14+p16+p18>t101+t103+t105+t107+t109+t111+t113+t115+t117+t102+t104+t106+t108+t110+t112+t114+t116+t118) then sd103.Font.Color:=clRed
  else if (p01+p03+p05+p07+p09+p11+p13+p15+p17+p02+p04+p06+p08+p10+p12+p14+p16+p18=t101+t103+t105+t107+t109+t111+t113+t115+t117+t102+t104+t106+t108+t110+t112+t114+t116+t118) then sd103.Font.Color:=clBlack else sd103.Font.color:=clGreen;
  if (t101+t103+t105+t107+t109+t111+t113+t115+t117+t102+t104+t106+t108+t110+t112+t114+t116+t118>t201+t203+t205+t207+t209+t211+t213+t215+t217+t202+t204+t206+t208+t210+t212+t214+t216+t218) then sd104.Font.Color:=clRed
  else if (t101+t103+t105+t107+t109+t111+t113+t115+t117+t102+t104+t106+t108+t110+t112+t114+t116+t118=t201+t203+t205+t207+t209+t211+t213+t215+t217+t202+t204+t206+t208+t210+t212+t214+t216+t218) then sd104.Font.Color:=clBlack else sd104.Font.color:=clGreen;
  if (t201+t203+t205+t207+t209+t211+t213+t215+t217+t202+t204+t206+t208+t210+t212+t214+t216+t218>t301+t303+t305+t307+t309+t311+t313+t315+t317+t302+t304+t306+t308+t310+t312+t314+t316+t318) then sd106.Font.Color:=clRed
  else if (t201+t203+t205+t207+t209+t211+t213+t215+t217+t202+t204+t206+t208+t210+t212+t214+t216+t218=t301+t303+t305+t307+t309+t311+t313+t315+t317+t302+t304+t306+t308+t310+t312+t314+t316+t318) then sd106.Font.Color:=clBlack else sd106.Font.color:=clGreen;
  if (t301+t303+t305+t307+t309+t311+t313+t315+t317+t302+t304+t306+t308+t310+t312+t314+t316+t318>aq01+aq03+aq05+aq07+aq09+aq11+aq13+aq15+aq17+aq02+aq04+aq06+aq08+aq10+aq12+aq14+aq16+aq18) then sd107.Font.Color:=clRed
  else if (t301+t303+t305+t307+t309+t311+t313+t315+t317+t302+t304+t306+t308+t310+t312+t314+t316+t318=aq01+aq03+aq05+aq07+aq09+aq11+aq13+aq15+aq17+aq02+aq04+aq06+aq08+aq10+aq12+aq14+aq16+aq18) then sd107.Font.Color:=clBlack else sd107.Font.color:=clGreen;
  if (aq01+aq03+aq05+aq07+aq09+aq11+aq13+aq15+aq17+aq02+aq04+aq06+aq08+aq10+aq12+aq14+aq16+aq18>t401+t403+t405+t407+t409+t411+t413+t415+t417+t402+t404+t406+t408+t410+t412+t414+t416+t418) then sd108.Font.Color:=clRed
  else if (aq01+aq03+aq05+aq07+aq09+aq11+aq13+aq15+aq17+aq02+aq04+aq06+aq08+aq10+aq12+aq14+aq16+aq18=t401+t403+t405+t407+t409+t411+t413+t415+t417+t402+t404+t406+t408+t410+t412+t414+t416+t418) then sd108.Font.Color:=clBlack else sd108.Font.color:=clGreen;

{
  if (p02+p04+p06+p08+p10+p12+p14+p16+p18>t102+t104+t106+t108+t110+t112+t114+t116+t118) then sd203.Font.Color:=clRed
  else if (p02+p04+p06+p08+p10+p12+p14+p16+p18=t102+t104+t106+t108+t110+t112+t114+t116+t118) then sd203.Font.Color:=clBlack else sd203.Font.color:=clGreen;
  if (t102+t104+t106+t108+t110+t112+t114+t116+t118>t202+t204+t206+t208+t210+t212+t214+t216+t218) then sd204.Font.Color:=clRed
  else if (t102+t104+t106+t108+t110+t112+t114+t116+t118=t202+t204+t206+t208+t210+t212+t214+t216+t218) then sd204.Font.Color:=clBlack else sd204.Font.color:=clGreen;
  if (t202+t204+t206+t208+t210+t212+t214+t216+t218>t302+t304+t306+t308+t310+t312+t314+t316+t318) then sd206.Font.Color:=clRed
  else if (t202+t204+t206+t208+t210+t212+t214+t216+t218=t302+t304+t306+t308+t310+t312+t314+t316+t318) then sd206.Font.Color:=clBlack else sd206.Font.color:=clGreen;
  if (t302+t304+t306+t308+t310+t312+t314+t316+t318>aq02+aq04+aq06+aq08+aq10+aq12+aq14+aq16+aq18) then sd207.Font.Color:=clRed
  else if (t302+t304+t306+t308+t310+t312+t314+t316+t318=aq02+aq04+aq06+aq08+aq10+aq12+aq14+aq16+aq18) then sd207.Font.Color:=clBlack else sd207.Font.color:=clGreen;
  if (aq02+aq04+aq06+aq08+aq10+aq12+aq14+aq16+aq18>t402+t404+t406+t408+t410+t412+t414+t416+t418) then sd208.Font.Color:=clRed
  else if (aq02+aq04+aq06+aq08+aq10+aq12+aq14+aq16+aq18=t402+t404+t406+t408+t410+t412+t414+t416+t418) then sd208.Font.Color:=clBlack else sd208.Font.color:=clGreen;

  if (p03+p06+p09+p12+p15+p18>t103+t106+t109+t112+t115+t118) then sd303.Font.Color:=clRed
  else if (p03+p06+p09+p12+p15+p18=t103+t106+t109+t112+t115+t118) then sd303.Font.Color:=clBlack else sd303.Font.color:=clGreen;
  if (t103+t106+t109+t112+t115+t118>t203+t206+t209+t212+t215+t218) then sd304.Font.Color:=clRed
  else if (t103+t106+t109+t112+t115+t118=t203+t206+t209+t212+t215+t218) then sd304.Font.Color:=clBlack else sd304.Font.color:=clGreen;
  if (t203+t206+t209+t212+t215+t218>t303+t306+t309+t312+t315+t318) then sd306.Font.Color:=clRed
  else if (t203+t206+t209+t212+t215+t218=t303+t306+t309+t312+t315+t318) then sd306.Font.Color:=clBlack else sd306.Font.color:=clGreen;
  if (t303+t306+t309+t312+t315+t318>aq03+aq06+aq09+aq12+aq15+aq18) then sd307.Font.Color:=clRed
  else if (t303+t306+t309+t312+t315+t318=aq03+aq06+aq09+aq12+aq15+aq18) then sd307.Font.Color:=clBlack else sd307.Font.color:=clGreen;
  if (aq03+aq06+aq09+aq12+aq15+aq18>t403+t406+t409+t412+t415+t418) then sd308.Font.Color:=clRed
  else if (aq03+aq06+aq09+aq12+aq15+aq18=t403+t406+t409+t412+t415+t418) then sd308.Font.Color:=clBlack else sd308.Font.color:=clGreen;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select qn2 from tbl_pdn_h where seq=:x1 and j_no='''+query4.fieldbyname('j_no').value+''' and j2_job='''+query4.fieldbyname('j2_job').value+''' and rwo='''+query4.fieldbyname('rwo').value+''' and qn2>''''';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    open;
    if not fieldbyname('qn2').isnull then qn2:=fieldbyname('qn2').value else qn2:='';
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select qn3 from tbl_pdn_h where seq=:x1 and j_no='''+query4.fieldbyname('j_no').value+''' and j2_job='''+query4.fieldbyname('j2_job').value+''' and rwo='''+query4.fieldbyname('rwo').value+''' and qn3>''''';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    open;
    if not fieldbyname('qn3').isnull then qn3:=fieldbyname('qn3').value else qn3:='';
  end;

  if qn2>'' then begin
    sd201.Visible:=true;sd202.visible:=true;sd203.Visible:=true;sd204.Visible:=true;sd205.visible:=true;sd206.Visible:=true;sd207.Visible:=true;sd208.Visible:=true;
  end else begin
    sd201.Visible:=false;sd202.visible:=false;sd203.Visible:=false;sd204.Visible:=false;sd205.visible:=false;sd206.Visible:=false;sd207.Visible:=false;sd208.Visible:=false;
  end;

  if qn3>'' then begin
    sd301.Visible:=true;sd302.visible:=true;sd303.Visible:=true;sd304.Visible:=true;sd306.Visible:=true;sd307.Visible:=true;sd308.Visible:=true;
  end else begin
    sd301.Visible:=false;sd302.visible:=false;sd303.Visible:=false;sd304.Visible:=false;sd306.Visible:=false;sd307.Visible:=false;sd308.Visible:=false;
  end;
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

  with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftdatetime,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        params.createparam(ftstring,'x6',ptinput);
        commandtext:='select cstyle from tbl_pdn_d_tmp where seq=:x1 and tm=:x2 and ((j_no<:x3) or (j_no=:x3 and j2_job<:x4) or (j_no=:x3 and j2_job=:x4 and rwo<:x5)) and cstyle=:x6';
        params[0].asinteger:=Query4.fieldbyname('seq').value;
        params[1].asdatetime:=query4.fieldbyname('tm').value;
        params[2].asstring:=query4.fieldbyname('j_no').value;
        params[3].asstring:=query4.fieldbyname('j2_job').value;
        params[4].asstring:=query4.fieldbyname('rwo').value;
        params[5].asstring:=query4.fieldbyname('cstyle').value;
        open;
        if not fieldbyname('cstyle').isnull then cstyle001.Font.Color:=clBlue else cstyle001.Font.Color:=clBlack;
  end;
  acol001.Caption:=query4.fieldbyname('acol').value;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select cname,custpo from tbl_pdn_voyage_rwo where seq=:x1 and seq1=:x2 and j_no=:x3 and j2_job=:x4 and acol=:x5';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    params[1].asinteger:=query4.fieldbyname('seq1').value;
    params[2].asstring:=query4.fieldbyname('j_no').value;
    params[3].asstring:=query4.fieldbyname('j2_job').value;
    params[4].asstring:=query4.fieldbyname('acol').value;
    open;
    if not fieldbyname('cname').isnull then begin
      if pos('-TF',fieldbyname('cname').value)>0 then acol001.Caption:=acol001.Caption+'TF';
    end;
    if not fieldbyname('cname').isnull then sdcolor.Caption:=fieldbyname('cname').value else sdcolor.Caption:='';
    if not fieldbyname('custpo').isnull then sdpo.Caption:=fieldbyname('custpo').value else sdpo.Caption:='';
  end;

  v001.Caption:=inttostr(query4.fieldbyname('spqty').asstring+query4.fieldbyname('writeoff').value);
  v002.Caption:=inttostr(query4.fieldbyname('spqty').value+query4.fieldbyname('writeoff').value);
  v003.Caption:=inttostr(query4.fieldbyname('qty').value-query4.fieldbyname('sqty').value-query4.fieldbyname('shpqty').value);
end;

procedure Tfrmpdnactd1.ppGroupFooterBand14BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select sum(q1qty+q3qty+q5qty+q7qty+q9qty+q11qty+q13qty+q15qty+q17qty+q2qty+q4qty+q6qty+q8qty+q10qty+q12qty+q14qty+q16qty+q18qty) as q01,'
                +'sum(q1t1qty+q3t1qty+q5t1qty+q7t1qty+q9t1qty+q11t1qty+q13t1qty+q15t1qty+q17t1qty+q2t1qty+q4t1qty+q6t1qty+q8t1qty+q10t1qty+q12t1qty+q14t1qty+q16t1qty+q18t1qty) as q03,'
                +'sum(q1t2qty+q3t2qty+q5t2qty+q7t2qty+q9t2qty+q11t2qty+q13t2qty+q15t2qty+q17t2qty+q2t2qty+q4t2qty+q6t2qty+q8t2qty+q10t2qty+q12t2qty+q14t2qty+q16t2qty+q18t2qty) as q04,'
                +'sum(q1t3qty+q3t3qty+q5t3qty+q7t3qty+q9t3qty+q11t3qty+q13t3qty+q15t3qty+q17t3qty+q2t3qty+q4t3qty+q6t3qty+q8t3qty+q10t3qty+q12t3qty+q14t3qty+q16t3qty+q18t3qty) as q06,'
                +'sum(q1aqqty+q3aqqty+q5aqqty+q7aqqty+q9aqqty+q11aqqty+q13aqqty+q15aqqty+q17aqqty+q2aqqty+q4aqqty+q6aqqty+q8aqqty+q10aqqty+q12aqqty+q14aqqty+q16aqqty+q18aqqty) as q07,'
                +'sum(q1t4qty+q3t4qty+q5t4qty+q7t4qty+q9t4qty+q11t4qty+q13t4qty+q15t4qty+q17t4qty+q2t4qty+q4t4qty+q6t4qty+q8t4qty+q10t4qty+q12t4qty+q14t4qty+q16t4qty+q18t4qty) as q08,'
                +'sum(q1pqty+q3pqty+q5pqty+q7pqty+q9pqty+q11pqty+q13pqty+q15pqty+q17pqty+q2pqty+q4pqty+q6pqty+q8pqty+q10pqty+q12pqty+q14pqty+q16pqty+q18pqty) as q02,'
                +'sum(q1pkqty+q3pkqty+q5pkqty+q7pkqty+q9pkqty+q11pkqty+q13pkqty+q15pkqty+q17pkqty+q2pkqty+q4pkqty+q6pkqty+q8pkqty+q10pkqty+q12pkqty+q14pkqty+q16pkqty+q18pkqty) as q05,'
                +'sum(q2qty+q4qty+q6qty+q8qty+q10qty+q12qty+q14qty+q16qty+q18qty) as q11,sum(q2t1qty+q4t1qty+q6t1qty+q8t1qty+q10t1qty+q12t1qty+q14t1qty+q16t1qty+q18t1qty) as q13,'
                +'sum(q2t2qty+q4t2qty+q6t2qty+q8t2qty+q10t2qty+q12t2qty+q14t2qty+q16t2qty+q18t2qty) as q14,sum(q2t3qty+q4t3qty+q6t3qty+q8t3qty+q10t3qty+q12t3qty+q14t3qty+q16t3qty+q18t3qty) as q16,'
                +'sum(q2aqqty+q4aqqty+q6aqqty+q8aqqty+q10aqqty+q12aqqty+q14aqqty+q16aqqty+q18aqqty) as q17,sum(q2t4qty+q4t4qty+q6t4qty+q8t4qty+q10t4qty+q12t4qty+q14t4qty+q16t4qty+q18t4qty) as q18,'
                +'sum(q2pqty+q4pqty+q6pqty+q8pqty+q10pqty+q12pqty+q14pqty+q16pqty+q18pqty) as q12,'
                +'sum(q2pkqty+q4pkqty+q6pkqty+q8pkqty+q10pkqty+q12pkqty+q14pkqty+q16pkqty+q18pkqty) as q15 '
                +'from tbl_pdn_d_tmp where tm=:x1 and seq=:x2 and seq1=:x3';
    params[0].asdatetime:=query4.fieldbyname('tm').value;
    params[1].asinteger:=query4.fieldbyname('seq').value;
    params[2].asinteger:=query4.fieldbyname('seq1').value;
    open;
    if not fieldbyname('q01').isnull then sb101.Caption:=fieldbyname('q01').asstring else sb101.Caption:='';
    if not fieldbyname('q03').isnull then sb103.Caption:=fieldbyname('q03').asstring else sb103.Caption:='';
    if not fieldbyname('q04').isnull then sb104.Caption:=fieldbyname('q04').asstring else sb104.Caption:='';
    if not fieldbyname('q05').isnull then sb105.Caption:=fieldbyname('q05').asstring else sb105.Caption:='';
    if not fieldbyname('q06').isnull then sb106.Caption:=fieldbyname('q06').asstring else sb106.Caption:='';
    if not fieldbyname('q07').isnull then sb107.Caption:=fieldbyname('q07').asstring else sb107.Caption:='';
    if not fieldbyname('q08').isnull then sb108.Caption:=fieldbyname('q08').asstring else sb108.Caption:='';
{
    if not fieldbyname('q11').isnull then sb201.Caption:=fieldbyname('q11').asstring else sb201.Caption:='';
    if not fieldbyname('q12').isnull then sb202.Caption:=fieldbyname('q12').asstring else sb202.Caption:='';
    if not fieldbyname('q13').isnull then sb203.Caption:=fieldbyname('q13').asstring else sb203.Caption:='';
    if not fieldbyname('q14').isnull then sb204.Caption:=fieldbyname('q14').asstring else sb204.Caption:='';
    if not fieldbyname('q15').isnull then sb205.Caption:=fieldbyname('q15').asstring else sb205.Caption:='';
    if not fieldbyname('q16').isnull then sb206.Caption:=fieldbyname('q16').asstring else sb206.Caption:='';
    if not fieldbyname('q17').isnull then sb207.Caption:=fieldbyname('q17').asstring else sb207.Caption:='';
    if not fieldbyname('q18').isnull then sb208.Caption:=fieldbyname('q18').asstring else sb208.Caption:='';

    if not fieldbyname('q21').isnull then sb301.Caption:=fieldbyname('q21').asstring else sb301.Caption:='';
    if not fieldbyname('q22').isnull then sb302.Caption:=fieldbyname('q22').asstring else sb302.Caption:='';
    if not fieldbyname('q23').isnull then sb303.Caption:=fieldbyname('q23').asstring else sb303.Caption:='';
    if not fieldbyname('q24').isnull then sb304.Caption:=fieldbyname('q24').asstring else sb304.Caption:='';
    if not fieldbyname('q26').isnull then sb306.Caption:=fieldbyname('q26').asstring else sb306.Caption:='';
    if not fieldbyname('q27').isnull then sb307.Caption:=fieldbyname('q27').asstring else sb307.Caption:='';
    if not fieldbyname('q28').isnull then sb308.Caption:=fieldbyname('q28').asstring else sb308.Caption:='';
}
    if fieldbyname('q02').value>fieldbyname('q03').value then sb103.Font.color:=clRed
    else if fieldbyname('q02').value=fieldbyname('q03').value then sb103.Font.color:=clBlack else sb103.Font.Color:=clGreen;
    if fieldbyname('q03').value>fieldbyname('q04').value then sb104.Font.color:=clRed
    else if fieldbyname('q03').value=fieldbyname('q04').value then sb104.Font.Color:=clBlack else sb104.Font.Color:=clGreen;
    if fieldbyname('q04').value>fieldbyname('q06').value then sb106.Font.color:=clRed
    else if fieldbyname('q04').value=fieldbyname('q06').value then sb106.Font.Color:=clBlack else sb106.Font.Color:=clGreen;
    if fieldbyname('q06').value>fieldbyname('q07').value then sb107.Font.color:=clRed
    else if fieldbyname('q06').value=fieldbyname('q07').value then sb107.Font.Color:=clBlack else sb107.Font.Color:=clGreen;
    if fieldbyname('q07').value>fieldbyname('q08').value then sb108.Font.color:=clRed
    else if fieldbyname('q07').value=fieldbyname('q08').value then sb108.Font.Color:=clBlack else sb108.Font.Color:=clGreen;
{
    if fieldbyname('q12').value>fieldbyname('q13').value then sb203.Font.color:=clRed
    else if fieldbyname('q12').value=fieldbyname('q13').value then sb203.Font.color:=clBlack else sb203.Font.Color:=clGreen;
    if fieldbyname('q13').value>fieldbyname('q14').value then sb204.Font.color:=clRed
    else if fieldbyname('q13').value=fieldbyname('q14').value then sb204.Font.Color:=clBlack else sb204.Font.Color:=clGreen;
    if fieldbyname('q14').value>fieldbyname('q16').value then sb206.Font.color:=clRed
    else if fieldbyname('q14').value=fieldbyname('q16').value then sb206.Font.Color:=clBlack else sb206.Font.Color:=clGreen;
    if fieldbyname('q16').value>fieldbyname('q17').value then sb207.Font.color:=clRed
    else if fieldbyname('q16').value=fieldbyname('q17').value then sb207.Font.Color:=clBlack else sb207.Font.Color:=clGreen;
    if fieldbyname('q17').value>fieldbyname('q18').value then sb208.Font.color:=clRed
    else if fieldbyname('q17').value=fieldbyname('q18').value then sb208.Font.Color:=clBlack else sb208.Font.Color:=clGreen;

    if fieldbyname('q22').value>fieldbyname('q23').value then sb303.Font.color:=clRed
    else if fieldbyname('q22').value=fieldbyname('q23').value then sb303.Font.color:=clBlack else sb303.Font.Color:=clGreen;
    if fieldbyname('q23').value>fieldbyname('q24').value then sb304.Font.color:=clRed
    else if fieldbyname('q23').value=fieldbyname('q24').value then sb304.Font.Color:=clBlack else sb304.Font.Color:=clGreen;
    if fieldbyname('q24').value>fieldbyname('q26').value then sb306.Font.color:=clRed
    else if fieldbyname('q24').value=fieldbyname('q26').value then sb306.Font.Color:=clBlack else sb306.Font.Color:=clGreen;
    if fieldbyname('q26').value>fieldbyname('q27').value then sb307.Font.color:=clRed
    else if fieldbyname('q26').value=fieldbyname('q27').value then sb307.Font.Color:=clBlack else sb307.Font.Color:=clGreen;
    if fieldbyname('q27').value>fieldbyname('q28').value then sb308.Font.color:=clRed
    else if fieldbyname('q27').value=fieldbyname('q28').value then sb308.Font.Color:=clBlack else sb308.Font.Color:=clGreen;
}  end;

  if sbd01.Value<0 then begin
    sbd01.Font.Color:=clRed;
    sbp01.Font.Color:=clRed;
    grade001.Font.Color:=clRed;
  end else if sbd01.Value=0 then begin
    sbd01.Font.Color:=clBlack;
    sbp01.Font.Color:=clBlack;
    grade001.Font.Color:=clBlack;
  end else begin
    sbd01.Font.Color:=clGreen;
    sbp01.Font.Color:=clGreen;
    grade001.Font.Color:=clGreen;
  end;
  if sbq01.value>0 then
  sbp01.Caption:='('+formatfloat('0.0%',sbd01.Value*100.0/sbq01.Value)+')'
  else sbp01.Caption:='(0.0%)';
  
  if sbq01.Value>0 then begin
    if (sbd01.Value*100.0/sbq01.value>=-1.0) and (sbd01.Value*100.0/sbq01.Value<=1.0) then grade001.Caption:='Grade: A'
    else if ((sbd01.Value*100.0/sbq01.value>=-2.0) and (sbd01.Value*100.0/sbq01.value<-1.0)) or ((sbd01.Value*100.0/sbq01.value>1.0) and (sbd01.Value*100.0/sbq01.value<=2.0)) then grade001.Caption:='Grade: B'
    else if ((sbd01.Value*100.0/sbq01.value>=-3.0) and (sbd01.Value*100.0/sbq01.value<-2.0)) or ((sbd01.Value*100.0/sbq01.value>2.0) and (sbd01.Value*100.0/sbq01.value<=3.0)) then grade001.Caption:='Grade: C'
    else if ((sbd01.Value*100.0/sbq01.value>=-4.0) and (sbd01.Value*100.0/sbq01.value<-3.0)) or ((sbd01.Value*100.0/sbq01.value>3.0) and (sbd01.Value*100.0/sbq01.value<=4.0)) then grade001.Caption:='Grade: D'
    else if ((sbd01.Value*100.0/sbq01.value>=-5.0) and (sbd01.Value*100.0/sbq01.value<-4.0)) or ((sbd01.Value*100.0/sbq01.value>4.0) and (sbd01.Value*100.0/sbq01.value<=5.0)) then grade001.Caption:='Grade: F'
    else grade001.Caption:='Grade: U';
  end else grade001.Caption:='Grade: A';
  grade002.Caption:=grade001.Caption;

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

  v005.Caption:=inttostr(x001.Value+x002.Value);
  v007.caption:=v005.Caption;
  v006.Caption:=inttostr(ppdbcalc2.Value-sbq01.Value-v004.Value);
end;

procedure Tfrmpdnactd1.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  if not frmpdn.query1.fieldbyname('marks').isnull then
  ppmemo1.Text:=frmpdn.query1.fieldbyname('marks').value;
  if not frmpdn.query1.fieldbyname('marks1').isnull then
  ppmemo2.Text:=frmpdn.query1.fieldbyname('marks1').value;
end;

procedure Tfrmpdnactd1.ppGroupHeaderBand13BeforePrint(Sender: TObject);
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
    if not fieldbyname('extm').isnull then extm001.Caption:=formatdatetime('hh:nn',fieldbyname('extm').value) else extm001.Caption:='';
  end;
end;

procedure Tfrmpdnactd1.ppDetailBand3BeforePrint(Sender: TObject);
var
  s1,s2,s3,s4,s5,s6,s7,s8,s9:integer;
begin
  d1001.Caption:=query1.fieldbyname('q1qty').asstring;d1002.Caption:=query1.fieldbyname('q1pqty').asstring;
  d1003.Caption:=query1.fieldbyname('q1t1qty').asstring;d1004.Caption:=query1.fieldbyname('q1t2qty').asstring;d1005.Caption:=query1.fieldbyname('q1pkqty').asstring;
  d1006.Caption:=query1.fieldbyname('q1t3qty').asstring;d1007.Caption:=query1.fieldbyname('q1aqqty').asstring;d1008.Caption:=query1.fieldbyname('q1t4qty').asstring;
  d2001.Caption:=query1.fieldbyname('q2qty').asstring;d2002.Caption:=query1.fieldbyname('q2pqty').asstring;
  d2003.Caption:=query1.fieldbyname('q2t1qty').asstring;d2004.Caption:=query1.fieldbyname('q2t2qty').asstring;d2005.Caption:=query1.fieldbyname('q2pkqty').AsString;
  d2006.Caption:=query1.fieldbyname('q2t3qty').asstring;d2007.Caption:=query1.fieldbyname('q2aqqty').asstring;d2008.Caption:=query1.fieldbyname('q2t4qty').asstring;

  d1011.Caption:=query1.fieldbyname('q3qty').asstring;d1012.Caption:=query1.fieldbyname('q3pqty').asstring;
  d1013.Caption:=query1.fieldbyname('q3t1qty').asstring;d1014.Caption:=query1.fieldbyname('q3t2qty').asstring;d1015.Caption:=query1.fieldbyname('q3pkqty').asstring;
  d1016.Caption:=query1.fieldbyname('q3t3qty').asstring;d1017.Caption:=query1.fieldbyname('q3aqqty').asstring;d1018.Caption:=query1.fieldbyname('q3t4qty').asstring;
  d2011.Caption:=query1.fieldbyname('q4qty').asstring;d2012.Caption:=query1.fieldbyname('q4pqty').asstring;
  d2013.Caption:=query1.fieldbyname('q4t1qty').asstring;d2014.Caption:=query1.fieldbyname('q4t2qty').asstring;d2015.Caption:=query1.fieldbyname('q4pkqty').asstring;
  d2016.Caption:=query1.fieldbyname('q4t3qty').asstring;d2017.Caption:=query1.fieldbyname('q4aqqty').asstring;d2018.Caption:=query1.fieldbyname('q4t4qty').asstring;

  d1021.Caption:=query1.fieldbyname('q5qty').asstring;d1022.Caption:=query1.fieldbyname('q5pqty').asstring;
  d1023.Caption:=query1.fieldbyname('q5t1qty').asstring;d1024.Caption:=query1.fieldbyname('q5t2qty').asstring;d1025.Caption:=query1.fieldbyname('q5pkqty').asstring;
  d1026.Caption:=query1.fieldbyname('q5t3qty').asstring;d1027.Caption:=query1.fieldbyname('q5aqqty').asstring;d1028.Caption:=query1.fieldbyname('q5t4qty').asstring;
  d2021.Caption:=query1.fieldbyname('q6qty').asstring;d2022.Caption:=query1.fieldbyname('q6pqty').asstring;
  d2023.Caption:=query1.fieldbyname('q6t1qty').asstring;d2024.Caption:=query1.fieldbyname('q6t2qty').asstring;d2025.Caption:=query1.fieldbyname('q6pkqty').asstring;
  d2026.Caption:=query1.fieldbyname('q6t3qty').asstring;d2027.Caption:=query1.fieldbyname('q6aqqty').asstring;d2028.Caption:=query1.fieldbyname('q6t4qty').asstring;

  d1031.Caption:=query1.fieldbyname('q7qty').asstring;d1032.Caption:=query1.fieldbyname('q7pqty').asstring;
  d1033.Caption:=query1.fieldbyname('q7t1qty').asstring;d1034.Caption:=query1.fieldbyname('q7t2qty').asstring;d1035.Caption:=query1.fieldbyname('q7pkqty').asstring;
  d1036.Caption:=query1.fieldbyname('q7t3qty').asstring;d1037.Caption:=query1.fieldbyname('q7aqqty').asstring;d1038.Caption:=query1.fieldbyname('q7t4qty').asstring;
  d2031.Caption:=query1.fieldbyname('q8qty').asstring;d2032.Caption:=query1.fieldbyname('q8pqty').asstring;
  d2033.Caption:=query1.fieldbyname('q8t1qty').asstring;d2034.Caption:=query1.fieldbyname('q8t2qty').asstring;d2035.Caption:=query1.fieldbyname('q8pkqty').asstring;
  d2036.Caption:=query1.fieldbyname('q8t3qty').asstring;d2037.Caption:=query1.fieldbyname('q8aqqty').asstring;d2038.Caption:=query1.fieldbyname('q8t4qty').asstring;

  d1041.Caption:=query1.fieldbyname('q9qty').asstring;d1042.Caption:=query1.fieldbyname('q9pqty').asstring;
  d1043.Caption:=query1.fieldbyname('q9t1qty').asstring;d1044.Caption:=query1.fieldbyname('q9t2qty').asstring;d1045.Caption:=query1.fieldbyname('q9pkqty').AsString;
  d1046.Caption:=query1.fieldbyname('q9t3qty').asstring;d1047.Caption:=query1.fieldbyname('q9aqqty').asstring;d1048.Caption:=query1.fieldbyname('q9t4qty').asstring;
  d2041.Caption:=query1.fieldbyname('q10qty').asstring;d2042.Caption:=query1.fieldbyname('q10pqty').asstring;
  d2043.Caption:=query1.fieldbyname('q10t1qty').asstring;d2044.Caption:=query1.fieldbyname('q10t2qty').asstring;d2045.Caption:=query1.fieldbyname('q10pkqty').asstring;
  d2046.Caption:=query1.fieldbyname('q10t3qty').asstring;d2047.Caption:=query1.fieldbyname('q10aqqty').asstring;d2048.Caption:=query1.fieldbyname('q10t4qty').asstring;

  d1051.Caption:=query1.fieldbyname('q11qty').asstring;d1052.Caption:=query1.fieldbyname('q11pqty').asstring;
  d1053.Caption:=query1.fieldbyname('q11t1qty').asstring;d1054.Caption:=query1.fieldbyname('q11t2qty').asstring;d1055.Caption:=query1.fieldbyname('q11pkqty').asstring;
  d1056.Caption:=query1.fieldbyname('q11t3qty').asstring;d1057.Caption:=query1.fieldbyname('q11aqqty').asstring;d1058.Caption:=query1.fieldbyname('q11t4qty').asstring;
  d2051.Caption:=query1.fieldbyname('q12qty').asstring;d2052.Caption:=query1.fieldbyname('q12pqty').asstring;
  d2053.Caption:=query1.fieldbyname('q12t1qty').asstring;d2054.Caption:=query1.fieldbyname('q12t2qty').asstring;d2055.Caption:=query1.fieldbyname('q12pkqty').asstring;
  d2056.Caption:=query1.fieldbyname('q12t3qty').asstring;d2057.Caption:=query1.fieldbyname('q12aqqty').asstring;d2058.Caption:=query1.fieldbyname('q12t4qty').asstring;

  d1061.Caption:=query1.fieldbyname('q13qty').asstring;d1062.Caption:=query1.fieldbyname('q13pqty').asstring;
  d1063.Caption:=query1.fieldbyname('q13t1qty').asstring;d1064.Caption:=query1.fieldbyname('q13t2qty').asstring;d1065.Caption:=query1.fieldbyname('q13pkqty').asstring;
  d1066.Caption:=query1.fieldbyname('q13t3qty').asstring;d1067.Caption:=query1.fieldbyname('q13aqqty').asstring;d1068.Caption:=query1.fieldbyname('q13t4qty').asstring;
  d2061.Caption:=query1.fieldbyname('q14qty').asstring;d2062.Caption:=query1.fieldbyname('q14pqty').asstring;
  d2063.Caption:=query1.fieldbyname('q14t1qty').asstring;d2064.Caption:=query1.fieldbyname('q14t2qty').asstring;d2065.Caption:=query1.fieldbyname('q14pkqty').asstring;
  d2066.Caption:=query1.fieldbyname('q14t3qty').asstring;d2067.Caption:=query1.fieldbyname('q14aqqty').asstring;d2068.Caption:=query1.fieldbyname('q14t4qty').asstring;

  d1071.Caption:=query1.fieldbyname('q15qty').asstring;d1072.Caption:=query1.fieldbyname('q15pqty').asstring;
  d1073.Caption:=query1.fieldbyname('q15t1qty').asstring;d1074.Caption:=query1.fieldbyname('q15t2qty').asstring;d1075.Caption:=query1.fieldbyname('q15pkqty').asstring;
  d1076.Caption:=query1.fieldbyname('q15t3qty').asstring;d1077.Caption:=query1.fieldbyname('q15aqqty').asstring;d1078.Caption:=query1.fieldbyname('q15t4qty').asstring;
  d2071.Caption:=query1.fieldbyname('q16qty').asstring;d2072.Caption:=query1.fieldbyname('q16pqty').asstring;
  d2073.Caption:=query1.fieldbyname('q16t1qty').asstring;d2074.Caption:=query1.fieldbyname('q16t2qty').asstring;d2075.Caption:=query1.fieldbyname('q16pkqty').asstring;
  d2076.Caption:=query1.fieldbyname('q16t3qty').asstring;d2077.Caption:=query1.fieldbyname('q16aqqty').asstring;d2078.Caption:=query1.fieldbyname('q16t4qty').asstring;

  d1081.Caption:=query1.fieldbyname('q17qty').asstring;d1082.Caption:=query1.fieldbyname('q17pqty').asstring;
  d1083.Caption:=query1.fieldbyname('q17t1qty').asstring;d1084.Caption:=query1.fieldbyname('q17t2qty').asstring;d1085.Caption:=query1.fieldbyname('q17pkqty').asstring;
  d1086.Caption:=query1.fieldbyname('q17t3qty').asstring;d1087.Caption:=query1.fieldbyname('q17aqqty').asstring;d1088.Caption:=query1.fieldbyname('q17t4qty').asstring;
  d2081.Caption:=query1.fieldbyname('q18qty').asstring;d2082.Caption:=query1.fieldbyname('q18pqty').asstring;
  d2083.Caption:=query1.fieldbyname('q18t1qty').asstring;d2084.Caption:=query1.fieldbyname('q18t2qty').asstring;d2085.Caption:=query1.fieldbyname('q18pkqty').asstring;
  d2086.Caption:=query1.fieldbyname('q18t3qty').asstring;d2087.Caption:=query1.fieldbyname('q18aqqty').asstring;d2088.Caption:=query1.fieldbyname('q18t4qty').asstring;

  d0004.Caption:=inttostr(query1.fieldbyname('q1t4qty').value+query1.fieldbyname('q2t4qty').value);
  d0014.Caption:=inttostr(query1.fieldbyname('q3t4qty').value+query1.fieldbyname('q4t4qty').value);
  d0024.Caption:=inttostr(query1.fieldbyname('q5t4qty').value+query1.fieldbyname('q6t4qty').value);
  d0034.Caption:=inttostr(query1.fieldbyname('q7t4qty').value+query1.fieldbyname('q8t4qty').value);
  d0044.Caption:=inttostr(query1.fieldbyname('q9t4qty').value+query1.fieldbyname('q10t4qty').value);
  d0054.Caption:=inttostr(query1.fieldbyname('q11t4qty').value+query1.fieldbyname('q12t4qty').value);
  d0064.Caption:=inttostr(query1.fieldbyname('q13t4qty').value+query1.fieldbyname('q14t4qty').value);
  d0074.Caption:=inttostr(query1.fieldbyname('q15t4qty').value+query1.fieldbyname('q16t4qty').value);
  d0084.Caption:=inttostr(query1.fieldbyname('q17t4qty').value+query1.fieldbyname('q18t4qty').value);

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    params.createparam(ftinteger,'x8',ptinput);
    params.createparam(ftstring,'x9',ptinput);
    commandtext:='select * from tbl_pdn_shpqty_rwo where tm=:x1 and seq=:x2 and seq1=:x3 and j_no=:x4 and j2_job=:x5 and rwo=:x6 and acol=:x7 and did=:x8 and psiz=:x9';
    params[0].asdatetime:=query4.fieldbyname('tm').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asinteger:=query1.fieldbyname('seq1').value;
    params[3].asstring:=query1.fieldbyname('j_no').value;
    params[4].asstring:=query1.fieldbyname('j2_job').value;
    params[5].asstring:=query1.fieldbyname('rwo').value;
    params[6].asstring:=query1.fieldbyname('acol').value;
    params[7].asinteger:=query1.fieldbyname('did').value;
    params[8].asstring:=query1.fieldbyname('psiz').value;
    open;
    if not fieldbyname('s1').isnull then begin
      d0005.Caption:=fieldbyname('s1').asstring;
      d0006.Caption:=inttostr(query1.fieldbyname('q1qty').value+query1.fieldbyname('q2qty').value-query1.fieldbyname('q1pqty').value-query1.fieldbyname('q2pqty').value-fieldbyname('s1').value)
    end else begin
      d0005.Caption:='0';
      d0006.Caption:=inttostr(query1.fieldbyname('q1qty').value+query1.fieldbyname('q2qty').value-query1.fieldbyname('q1pqty').value-query1.fieldbyname('q2pqty').value);
    end;
    if not fieldbyname('s2').isnull then begin
      d0015.Caption:=fieldbyname('s2').asstring;
      d0016.Caption:=inttostr(query1.fieldbyname('q3qty').value+query1.fieldbyname('q4qty').value-query1.fieldbyname('q3pqty').value-query1.fieldbyname('q4pqty').value-fieldbyname('s2').value)
    end else begin
      d0015.Caption:='0';
      d0016.Caption:=inttostr(query1.fieldbyname('q3qty').value+query1.fieldbyname('q4qty').value-query1.fieldbyname('q3pqty').value-query1.fieldbyname('q4pqty').value);
    end;
    if not fieldbyname('s3').isnull then begin
      d0025.Caption:=fieldbyname('s3').asstring;
      d0026.Caption:=inttostr(query1.fieldbyname('q5qty').value+query1.fieldbyname('q6qty').value-query1.fieldbyname('q5pqty').value-query1.fieldbyname('q6pqty').value-fieldbyname('s3').value)
    end else begin
      d0025.Caption:='0';
      d0026.Caption:=inttostr(query1.fieldbyname('q5qty').value+query1.fieldbyname('q6qty').value-query1.fieldbyname('q5pqty').value-query1.fieldbyname('q6pqty').value);
    end;
    if not fieldbyname('s4').isnull then begin
      d0035.Caption:=fieldbyname('s4').asstring;
      d0036.Caption:=inttostr(query1.fieldbyname('q7qty').value+query1.fieldbyname('q8qty').value-query1.fieldbyname('q7pqty').value-query1.fieldbyname('q8pqty').value-fieldbyname('s4').value)
    end else begin
      d0035.Caption:='0';
      d0036.Caption:=inttostr(query1.fieldbyname('q7qty').value+query1.fieldbyname('q8qty').value-query1.fieldbyname('q7pqty').value-query1.fieldbyname('q8pqty').value);
    end;
    if not fieldbyname('s5').isnull then begin
      d0045.Caption:=fieldbyname('s5').asstring;
      d0046.Caption:=inttostr(query1.fieldbyname('q9qty').value+query1.fieldbyname('q10qty').value-query1.fieldbyname('q9pqty').value-query1.fieldbyname('q10pqty').value-fieldbyname('s5').value)
    end else begin
      d0045.Caption:='0';
      d0046.Caption:=inttostr(query1.fieldbyname('q9qty').value+query1.fieldbyname('q10qty').value-query1.fieldbyname('q9pqty').value-query1.fieldbyname('q10pqty').value);
    end;
    if not fieldbyname('s6').isnull then begin
      d0055.Caption:=fieldbyname('s6').asstring;
      d0056.Caption:=inttostr(query1.fieldbyname('q11qty').value+query1.fieldbyname('q12qty').value-query1.fieldbyname('q11pqty').value-query1.fieldbyname('q12pqty').value-fieldbyname('s6').value)
    end else begin
      d0055.Caption:='0';
      d0056.Caption:=inttostr(query1.fieldbyname('q11qty').value+query1.fieldbyname('q12qty').value-query1.fieldbyname('q11pqty').value-query1.fieldbyname('q12pqty').value);
    end;
    if not fieldbyname('s7').isnull then begin
      d0065.Caption:=fieldbyname('s7').asstring;
      d0066.Caption:=inttostr(query1.fieldbyname('q13qty').value+query1.fieldbyname('q14qty').value-query1.fieldbyname('q13pqty').value-query1.fieldbyname('q14pqty').value-fieldbyname('s7').value)
    end else begin
      d0065.Caption:='0';
      d0066.Caption:=inttostr(query1.fieldbyname('q13qty').value+query1.fieldbyname('q14qty').value-query1.fieldbyname('q13pqty').value-query1.fieldbyname('q14pqty').value);
    end;
    if not fieldbyname('s8').isnull then begin
      d0075.Caption:=fieldbyname('s8').asstring;
      d0076.Caption:=inttostr(query1.fieldbyname('q15qty').value+query1.fieldbyname('q16qty').value-query1.fieldbyname('q15pqty').value-query1.fieldbyname('q16pqty').value-fieldbyname('s8').value)
    end else begin
      d0075.Caption:='0';
      d0076.Caption:=inttostr(query1.fieldbyname('q15qty').value+query1.fieldbyname('q16qty').value-query1.fieldbyname('q15pqty').value-query1.fieldbyname('q16pqty').value);
    end;
    if not fieldbyname('s9').isnull then begin
      d0085.Caption:=fieldbyname('s9').asstring;
      d0086.Caption:=inttostr(query1.fieldbyname('q17qty').value+query1.fieldbyname('q18qty').value-query1.fieldbyname('q17pqty').value-query1.fieldbyname('q18pqty').value-fieldbyname('s9').value)
    end else begin
      d0085.Caption:='0';
      d0086.Caption:=inttostr(query1.fieldbyname('q17qty').value+query1.fieldbyname('q18qty').value-query1.fieldbyname('q17pqty').value-query1.fieldbyname('q18pqty').value);
    end;
  end;

  d2001.Visible:=true;d2002.Visible:=true;d2003.Visible:=true;d2004.Visible:=true;d2006.Visible:=true;d2007.Visible:=true;d2008.Visible:=true;
  d2005.Visible:=true;
  if d1001.Caption='0' then begin
    d1001.Caption:='-';d1002.Caption:='-';d1003.Caption:='-';d1004.Caption:='-';d1006.Caption:='-';d1007.Caption:='-';d1008.Caption:='-';
    d1005.Caption:='-';
  end;
  if d2001.Caption='0' then begin
    d2001.Caption:='-';d2002.Caption:='-';d2003.Caption:='-';d2004.Caption:='-';d2006.Caption:='-';d2007.Caption:='-';d2008.Caption:='-';
    d2005.Caption:='-';
  end;
  if d1011.Caption='0' then begin
    d1011.Caption:='-';d1012.Caption:='-';d1013.Caption:='-';d1014.Caption:='-';d1016.Caption:='-';d1017.Caption:='-';d1018.Caption:='-';
    d1015.Caption:='-';
  end;
  if d2011.Caption='0' then begin
    d2011.Caption:='-';d2012.Caption:='-';d2013.Caption:='-';d2014.Caption:='-';d2016.Caption:='-';d2017.Caption:='-';d2018.Caption:='-';
    d2015.Caption:='-';
  end;
  if d1021.Caption='0' then begin
    d1021.Caption:='-';d1022.Caption:='-';d1023.Caption:='-';d1024.Caption:='-';d1026.Caption:='-';d1027.Caption:='-';d1028.Caption:='-';
    d1025.Caption:='-';
  end;
  if d2021.Caption='0' then begin
    d2021.Caption:='-';d2022.Caption:='-';d2023.Caption:='-';d2024.Caption:='-';d2026.Caption:='-';d2027.Caption:='-';d2028.Caption:='-';
    d2025.Caption:='-';
  end;
  if d1031.Caption='0' then begin
    d1031.Caption:='-';d1032.Caption:='-';d1033.Caption:='-';d1034.Caption:='-';d1036.Caption:='-';d1037.Caption:='-';d1038.Caption:='-';
    d1035.Caption:='-';
  end;
  if d2031.Caption='0' then begin
    d2031.Caption:='-';d2032.Caption:='-';d2033.Caption:='-';d2034.Caption:='-';d2036.Caption:='-';d2037.Caption:='-';d2038.Caption:='-';
    d2035.Caption:='-';
  end;
  if d1041.Caption='0' then begin
    d1041.Caption:='-';d1042.Caption:='-';d1043.Caption:='-';d1044.Caption:='-';d1046.Caption:='-';d1047.Caption:='-';d1048.Caption:='-';
    d1045.Caption:='-';
  end;
  if d2041.Caption='0' then begin
    d2041.Caption:='-';d2042.Caption:='-';d2043.Caption:='-';d2044.Caption:='-';d2046.Caption:='-';d2047.Caption:='-';d2048.Caption:='-';
    d2045.Caption:='-';
  end;
  if d1051.Caption='0' then begin
    d1051.Caption:='-';d1052.Caption:='-';d1053.Caption:='-';d1054.Caption:='-';d1056.Caption:='-';d1057.Caption:='-';d1058.Caption:='-';
    d1055.Caption:='-';
  end;
  if d2051.Caption='0' then begin
    d2051.Caption:='-';d2052.Caption:='-';d2053.Caption:='-';d2054.Caption:='-';d2056.Caption:='-';d2057.Caption:='-';d2058.Caption:='-';
    d2055.Caption:='-';
  end;
  if d1061.Caption='0' then begin
    d1061.Caption:='-';d1062.Caption:='-';d1063.Caption:='-';d1064.Caption:='-';d1066.Caption:='-';d1067.Caption:='-';d1068.Caption:='-';
    d1065.Caption:='-';
  end;
  if d2061.Caption='0' then begin
    d2061.Caption:='-';d2062.Caption:='-';d2063.Caption:='-';d2064.Caption:='-';d2066.Caption:='-';d2067.Caption:='-';d2068.Caption:='-';
    d2065.Caption:='-';
  end;
  if d1071.Caption='0' then begin
    d1071.Caption:='-';d1072.Caption:='-';d1073.Caption:='-';d1074.Caption:='-';d1076.Caption:='-';d1077.Caption:='-';d1078.Caption:='-';
    d1075.Caption:='-';
  end;
  if d2071.Caption='0' then begin
    d2071.Caption:='-';d2072.Caption:='-';d2073.Caption:='-';d2074.Caption:='-';d2076.Caption:='-';d2077.Caption:='-';d2078.Caption:='-';
    d2075.Caption:='-';
  end;
  if d1081.Caption='0' then begin
    d1081.Caption:='-';d1082.Caption:='-';d1083.Caption:='-';d1084.Caption:='-';d1086.Caption:='-';d1087.Caption:='-';d1088.Caption:='-';
    d1085.Caption:='-';
  end;
  if d2081.Caption='0' then begin
    d2081.Caption:='-';d2082.Caption:='-';d2083.Caption:='-';d2084.Caption:='-';d2086.Caption:='-';d2087.Caption:='-';d2088.Caption:='-';
    d2085.Caption:='-';
  end;

  if ppGroupHeaderBand17.Visible then begin
    if rwo982.Caption>'' then begin
      d2081.Visible:=true;d2082.Visible:=true;d2083.Visible:=true;d2084.Visible:=true;d2086.Visible:=true;d2087.Visible:=true;d2088.Visible:=true;
    end else begin
      d2081.Visible:=false;d2082.Visible:=false;d2083.Visible:=false;d2084.Visible:=false;d2086.Visible:=false;d2087.Visible:=false;d2088.Visible:=false;
    end;
  end else if ppGroupHeaderBand16.Visible then begin
    if rwo872.Caption>'' then begin
      d2071.Visible:=true;d2072.Visible:=true;d2073.Visible:=true;d2074.Visible:=true;d2076.Visible:=true;d2077.Visible:=true;d2078.Visible:=true;
    end else begin
      d2071.Visible:=false;d2072.Visible:=false;d2073.Visible:=false;d2074.Visible:=false;d2076.Visible:=false;d2077.Visible:=false;d2078.Visible:=false;
    end;
  end else if ppGroupHeaderBand15.Visible then begin
    if rwo762.Caption>'' then begin
      d2061.Visible:=true;d2062.Visible:=true;d2063.Visible:=true;d2064.Visible:=true;d2066.Visible:=true;d2067.Visible:=true;d2068.Visible:=true;
    end else begin
      d2061.Visible:=false;d2062.Visible:=false;d2063.Visible:=false;d2064.Visible:=false;d2066.Visible:=false;d2067.Visible:=false;d2068.Visible:=false;
    end;
  end else if ppGroupHeaderBand12.Visible then begin
    if rwo652.Caption>'' then begin
      d2051.Visible:=true;d2052.Visible:=true;d2053.Visible:=true;d2054.Visible:=true;d2056.Visible:=true;d2057.Visible:=true;d2058.Visible:=true;
    end else begin
      d2051.Visible:=false;d2052.Visible:=false;d2053.Visible:=false;d2054.Visible:=false;d2056.Visible:=false;d2057.Visible:=false;d2058.Visible:=false;
    end;
  end else if ppGroupHeaderBand9.Visible then begin
    if rwo542.Caption>'' then begin
      d2041.Visible:=true;d2042.Visible:=true;d2043.Visible:=true;d2044.Visible:=true;d2046.Visible:=true;d2047.Visible:=true;d2048.Visible:=true;
    end else begin
      d2041.Visible:=false;d2042.Visible:=false;d2043.Visible:=false;d2044.Visible:=false;d2046.Visible:=false;d2047.Visible:=false;d2048.Visible:=false;
    end;
  end else if ppGroupHeaderBand8.Visible then begin
    if rwo432.Caption>'' then begin
      d2031.Visible:=true;d2032.Visible:=true;d2033.Visible:=true;d2034.Visible:=true;d2036.Visible:=true;d2037.Visible:=true;d2038.Visible:=true;
      d2035.Visible:=true;
    end else begin
      d2031.Visible:=false;d2032.Visible:=false;d2033.Visible:=false;d2034.Visible:=false;d2036.Visible:=false;d2037.Visible:=false;d2038.Visible:=false;
      d2035.Visible:=false;
    end;
  end else if ppGroupHeaderBand7.Visible then begin
    if rwo322.Caption>'' then begin
      d2021.Visible:=true;d2022.Visible:=true;d2023.Visible:=true;d2024.Visible:=true;d2026.Visible:=true;d2027.Visible:=true;d2028.Visible:=true;
      d2025.Visible:=true;
    end else begin
      d2021.Visible:=false;d2022.Visible:=false;d2023.Visible:=false;d2024.Visible:=false;d2026.Visible:=false;d2027.Visible:=false;d2028.Visible:=false;
      d2025.Visible:=false;
    end;
  end else if ppGroupHeaderBand6.Visible then begin
    if rwo212.Caption>'' then begin
      d2011.Visible:=true;d2012.Visible:=true;d2013.Visible:=true;d2014.Visible:=true;d2016.Visible:=true;d2017.Visible:=true;d2018.Visible:=true;
      d2015.Visible:=true;
    end else begin
      d2011.Visible:=false;d2012.Visible:=false;d2013.Visible:=false;d2014.Visible:=false;d2016.Visible:=false;d2017.Visible:=false;d2018.Visible:=false;
      d2015.Visible:=false;
    end;
  end else begin
    if rwo002.Caption>'' then begin
      d2001.Visible:=true;d2002.Visible:=true;d2003.Visible:=true;d2004.Visible:=true;d2006.Visible:=true;d2007.Visible:=true;d2008.Visible:=true;
      d2005.Visible:=true;
    end else begin
      d2001.Visible:=false;d2002.Visible:=false;d2003.Visible:=false;d2004.Visible:=false;d2006.Visible:=false;d2007.Visible:=false;d2008.Visible:=false;
      d2005.Visible:=false;
    end;
  end;

  if query1.fieldbyname('q1pqty').value>query1.fieldbyname('q1pkqty').value then d1005.Font.Color:=clRed
  else if query1.fieldbyname('q1pqty').value=query1.fieldbyname('q1pkqty').value then d1005.Font.Color:=clBlack else d1005.Font.color:=clGreen;
  if query1.fieldbyname('q1pkqty').value>query1.fieldbyname('q1t1qty').value then d1003.Font.Color:=clRed
  else if query1.fieldbyname('q1pkqty').value=query1.fieldbyname('q1t1qty').value then d1003.Font.Color:=clBlack else d1003.Font.color:=clGreen;
  if query1.fieldbyname('q1t1qty').value>query1.fieldbyname('q1t2qty').value then d1004.Font.Color:=clRed
  else if query1.fieldbyname('q1t1qty').value=query1.fieldbyname('q1t2qty').value then d1004.Font.Color:=clBlack else d1004.Font.color:=clGreen;
  if query1.fieldbyname('q1t2qty').value>query1.fieldbyname('q1t3qty').value then d1006.Font.Color:=clRed
  else if query1.fieldbyname('q1t2qty').value=query1.fieldbyname('q1t3qty').value then d1006.Font.Color:=clBlack else d1006.Font.color:=clGreen;
  if query1.fieldbyname('q1t3qty').value>query1.fieldbyname('q1aqqty').value then d1007.Font.Color:=clRed
  else if query1.fieldbyname('q1t3qty').value=query1.fieldbyname('q1aqqty').value then d1007.Font.Color:=clBlack else d1007.Font.color:=clGreen;
  if query1.fieldbyname('q1aqqty').value>query1.fieldbyname('q1t4qty').value then d1008.Font.Color:=clRed
  else if query1.fieldbyname('q1aqqty').value=query1.fieldbyname('q1t4qty').value then d1008.Font.Color:=clBlack else d1008.Font.color:=clGreen;

  if query1.fieldbyname('q2pqty').value>query1.fieldbyname('q2pkqty').value then d2005.Font.Color:=clRed
  else if query1.fieldbyname('q2pqty').value=query1.fieldbyname('q2pkqty').value then d2005.Font.Color:=clBlack else d2005.Font.color:=clGreen;
  if query1.fieldbyname('q2pkqty').value>query1.fieldbyname('q2t1qty').value then d2003.Font.Color:=clRed
  else if query1.fieldbyname('q2pkqty').value=query1.fieldbyname('q2t1qty').value then d2003.Font.Color:=clBlack else d2003.Font.color:=clGreen;
  if query1.fieldbyname('q2t1qty').value>query1.fieldbyname('q2t2qty').value then d2004.Font.Color:=clRed
  else if query1.fieldbyname('q2t1qty').value=query1.fieldbyname('q2t2qty').value then d2004.Font.Color:=clBlack else d2004.Font.color:=clGreen;
  if query1.fieldbyname('q2t2qty').value>query1.fieldbyname('q2t3qty').value then d2006.Font.Color:=clRed
  else if query1.fieldbyname('q2t2qty').value=query1.fieldbyname('q2t3qty').value then d2006.Font.Color:=clBlack else d2006.Font.color:=clGreen;
  if query1.fieldbyname('q2t3qty').value>query1.fieldbyname('q2aqqty').value then d2007.Font.Color:=clRed
  else if query1.fieldbyname('q2t3qty').value=query1.fieldbyname('q2aqqty').value then d2007.Font.Color:=clBlack else d2007.Font.color:=clGreen;
  if query1.fieldbyname('q2aqqty').value>query1.fieldbyname('q2t4qty').value then d2008.Font.Color:=clRed
  else if query1.fieldbyname('q2aqqty').value=query1.fieldbyname('q2t4qty').value then d2008.Font.Color:=clBlack else d2008.Font.color:=clGreen;

  if query1.fieldbyname('q3pqty').value>query1.fieldbyname('q3pkqty').value then d1015.Font.Color:=clRed
  else if query1.fieldbyname('q3pqty').value=query1.fieldbyname('q3pkqty').value then d1015.Font.Color:=clBlack else d1015.Font.color:=clGreen;
  if query1.fieldbyname('q3pkqty').value>query1.fieldbyname('q3t1qty').value then d1013.Font.Color:=clRed
  else if query1.fieldbyname('q3pkqty').value=query1.fieldbyname('q3t1qty').value then d1013.Font.Color:=clBlack else d1013.Font.color:=clGreen;
  if query1.fieldbyname('q3t1qty').value>query1.fieldbyname('q3t2qty').value then d1014.Font.Color:=clRed
  else if query1.fieldbyname('q3t1qty').value=query1.fieldbyname('q3t2qty').value then d1014.Font.Color:=clBlack else d1014.Font.color:=clGreen;
  if query1.fieldbyname('q3t2qty').value>query1.fieldbyname('q3t3qty').value then d1016.Font.Color:=clRed
  else if query1.fieldbyname('q3t2qty').value=query1.fieldbyname('q3t3qty').value then d1016.Font.Color:=clBlack else d1016.Font.color:=clGreen;
  if query1.fieldbyname('q3t3qty').value>query1.fieldbyname('q3aqqty').value then d1017.Font.Color:=clRed
  else if query1.fieldbyname('q3t3qty').value=query1.fieldbyname('q3aqqty').value then d1017.Font.Color:=clBlack else d1017.Font.color:=clGreen;
  if query1.fieldbyname('q3aqqty').value>query1.fieldbyname('q3t4qty').value then d1018.Font.Color:=clRed
  else if query1.fieldbyname('q3aqqty').value=query1.fieldbyname('q3t4qty').value then d1018.Font.Color:=clBlack else d1018.Font.color:=clGreen;

  if query1.fieldbyname('q4pqty').value>query1.fieldbyname('q4pkqty').value then d2015.Font.Color:=clRed
  else if query1.fieldbyname('q4pqty').value=query1.fieldbyname('q4pkqty').value then d2015.Font.Color:=clBlack else d2015.Font.color:=clGreen;
  if query1.fieldbyname('q4pkqty').value>query1.fieldbyname('q4t1qty').value then d2013.Font.Color:=clRed
  else if query1.fieldbyname('q4pkqty').value=query1.fieldbyname('q4t1qty').value then d2013.Font.Color:=clBlack else d2013.Font.color:=clGreen;
  if query1.fieldbyname('q4t1qty').value>query1.fieldbyname('q4t2qty').value then d2014.Font.Color:=clRed
  else if query1.fieldbyname('q4t1qty').value=query1.fieldbyname('q4t2qty').value then d2014.Font.Color:=clBlack else d2014.Font.color:=clGreen;
  if query1.fieldbyname('q4t2qty').value>query1.fieldbyname('q4t3qty').value then d2016.Font.Color:=clRed
  else if query1.fieldbyname('q4t2qty').value=query1.fieldbyname('q4t3qty').value then d2016.Font.Color:=clBlack else d2016.Font.color:=clGreen;
  if query1.fieldbyname('q4t3qty').value>query1.fieldbyname('q4aqqty').value then d2017.Font.Color:=clRed
  else if query1.fieldbyname('q4t3qty').value=query1.fieldbyname('q4aqqty').value then d2017.Font.Color:=clBlack else d2017.Font.color:=clGreen;
  if query1.fieldbyname('q4aqqty').value>query1.fieldbyname('q4t4qty').value then d2018.Font.Color:=clRed
  else if query1.fieldbyname('q4aqqty').value=query1.fieldbyname('q4t4qty').value then d2018.Font.Color:=clBlack else d2018.Font.color:=clGreen;

  if query1.fieldbyname('q5pqty').value>query1.fieldbyname('q5pkqty').value then d1025.Font.Color:=clRed
  else if query1.fieldbyname('q5pqty').value=query1.fieldbyname('q5pkqty').value then d1025.Font.Color:=clBlack else d1025.Font.color:=clGreen;
  if query1.fieldbyname('q5pkqty').value>query1.fieldbyname('q5t1qty').value then d1023.Font.Color:=clRed
  else if query1.fieldbyname('q5pkqty').value=query1.fieldbyname('q5t1qty').value then d1023.Font.Color:=clBlack else d1023.Font.color:=clGreen;
  if query1.fieldbyname('q5t1qty').value>query1.fieldbyname('q5t2qty').value then d1024.Font.Color:=clRed
  else if query1.fieldbyname('q5t1qty').value=query1.fieldbyname('q5t2qty').value then d1024.Font.Color:=clBlack else d1024.Font.color:=clGreen;
  if query1.fieldbyname('q5t2qty').value>query1.fieldbyname('q5t3qty').value then d1026.Font.Color:=clRed
  else if query1.fieldbyname('q5t2qty').value=query1.fieldbyname('q5t3qty').value then d1026.Font.Color:=clBlack else d1026.Font.color:=clGreen;
  if query1.fieldbyname('q5t3qty').value>query1.fieldbyname('q5aqqty').value then d1027.Font.Color:=clRed
  else if query1.fieldbyname('q5t3qty').value=query1.fieldbyname('q5aqqty').value then d1027.Font.Color:=clBlack else d1027.Font.color:=clGreen;
  if query1.fieldbyname('q5aqqty').value>query1.fieldbyname('q5t4qty').value then d1028.Font.Color:=clRed
  else if query1.fieldbyname('q5aqqty').value=query1.fieldbyname('q5t4qty').value then d1028.Font.Color:=clBlack else d1028.Font.color:=clGreen;

  if query1.fieldbyname('q6pqty').value>query1.fieldbyname('q6pkqty').value then d2025.Font.Color:=clRed
  else if query1.fieldbyname('q6pqty').value=query1.fieldbyname('q6pkqty').value then d2025.Font.Color:=clBlack else d2025.Font.color:=clGreen;
  if query1.fieldbyname('q6pkqty').value>query1.fieldbyname('q6t1qty').value then d2023.Font.Color:=clRed
  else if query1.fieldbyname('q6pkqty').value=query1.fieldbyname('q6t1qty').value then d2023.Font.Color:=clBlack else d2023.Font.color:=clGreen;
  if query1.fieldbyname('q6t1qty').value>query1.fieldbyname('q6t2qty').value then d2024.Font.Color:=clRed
  else if query1.fieldbyname('q6t1qty').value=query1.fieldbyname('q6t2qty').value then d2024.Font.Color:=clBlack else d2024.Font.color:=clGreen;
  if query1.fieldbyname('q6t2qty').value>query1.fieldbyname('q6t3qty').value then d2026.Font.Color:=clRed
  else if query1.fieldbyname('q6t2qty').value=query1.fieldbyname('q6t3qty').value then d2026.Font.Color:=clBlack else d2026.Font.color:=clGreen;
  if query1.fieldbyname('q6t3qty').value>query1.fieldbyname('q6aqqty').value then d2027.Font.Color:=clRed
  else if query1.fieldbyname('q6t3qty').value=query1.fieldbyname('q6aqqty').value then d2027.Font.Color:=clBlack else d2027.Font.color:=clGreen;
  if query1.fieldbyname('q6aqqty').value>query1.fieldbyname('q6t4qty').value then d2028.Font.Color:=clRed
  else if query1.fieldbyname('q6aqqty').value=query1.fieldbyname('q6t4qty').value then d2028.Font.Color:=clBlack else d2028.Font.color:=clGreen;

  if query1.fieldbyname('q7pqty').value>query1.fieldbyname('q7pkqty').value then d1035.Font.Color:=clRed
  else if query1.fieldbyname('q7pqty').value=query1.fieldbyname('q7pkqty').value then d1035.Font.Color:=clBlack else d1035.Font.color:=clGreen;
  if query1.fieldbyname('q7pkqty').value>query1.fieldbyname('q7t1qty').value then d1033.Font.Color:=clRed
  else if query1.fieldbyname('q7pkqty').value=query1.fieldbyname('q7t1qty').value then d1033.Font.Color:=clBlack else d1033.Font.color:=clGreen;
  if query1.fieldbyname('q7t1qty').value>query1.fieldbyname('q7t2qty').value then d1034.Font.Color:=clRed
  else if query1.fieldbyname('q7t1qty').value=query1.fieldbyname('q7t2qty').value then d1034.Font.Color:=clBlack else d1034.Font.color:=clGreen;
  if query1.fieldbyname('q7t2qty').value>query1.fieldbyname('q7t3qty').value then d1036.Font.Color:=clRed
  else if query1.fieldbyname('q7t2qty').value=query1.fieldbyname('q7t3qty').value then d1036.Font.Color:=clBlack else d1036.Font.color:=clGreen;
  if query1.fieldbyname('q7t3qty').value>query1.fieldbyname('q7aqqty').value then d1037.Font.Color:=clRed
  else if query1.fieldbyname('q7t3qty').value=query1.fieldbyname('q7aqqty').value then d1037.Font.Color:=clBlack else d1037.Font.color:=clGreen;
  if query1.fieldbyname('q7aqqty').value>query1.fieldbyname('q7t4qty').value then d1038.Font.Color:=clRed
  else if query1.fieldbyname('q7aqqty').value=query1.fieldbyname('q7t4qty').value then d1038.Font.Color:=clBlack else d1038.Font.color:=clGreen;

  if query1.fieldbyname('q8pqty').value>query1.fieldbyname('q8pkqty').value then d2035.Font.Color:=clRed
  else if query1.fieldbyname('q8pqty').value=query1.fieldbyname('q8pkqty').value then d2035.Font.Color:=clBlack else d2035.Font.color:=clGreen;
  if query1.fieldbyname('q8pkqty').value>query1.fieldbyname('q8t1qty').value then d2033.Font.Color:=clRed
  else if query1.fieldbyname('q8pkqty').value=query1.fieldbyname('q8t1qty').value then d2033.Font.Color:=clBlack else d2033.Font.color:=clGreen;
  if query1.fieldbyname('q8t1qty').value>query1.fieldbyname('q8t2qty').value then d2034.Font.Color:=clRed
  else if query1.fieldbyname('q8t1qty').value=query1.fieldbyname('q8t2qty').value then d2034.Font.Color:=clBlack else d2034.Font.color:=clGreen;
  if query1.fieldbyname('q8t2qty').value>query1.fieldbyname('q8t3qty').value then d2036.Font.Color:=clRed
  else if query1.fieldbyname('q8t2qty').value=query1.fieldbyname('q8t3qty').value then d2036.Font.Color:=clBlack else d2036.Font.color:=clGreen;
  if query1.fieldbyname('q8t3qty').value>query1.fieldbyname('q8aqqty').value then d2037.Font.Color:=clRed
  else if query1.fieldbyname('q8t3qty').value=query1.fieldbyname('q8aqqty').value then d2037.Font.Color:=clBlack else d2037.Font.color:=clGreen;
  if query1.fieldbyname('q8aqqty').value>query1.fieldbyname('q8t4qty').value then d2038.Font.Color:=clRed
  else if query1.fieldbyname('q8aqqty').value=query1.fieldbyname('q8t4qty').value then d2038.Font.Color:=clBlack else d2038.Font.color:=clGreen;

  if query1.fieldbyname('q9pqty').value>query1.fieldbyname('q9pkqty').value then d1045.Font.Color:=clRed
  else if query1.fieldbyname('q9pqty').value=query1.fieldbyname('q9pkqty').value then d1045.Font.Color:=clBlack else d1045.Font.color:=clGreen;
  if query1.fieldbyname('q9pkqty').value>query1.fieldbyname('q9t1qty').value then d1043.Font.Color:=clRed
  else if query1.fieldbyname('q9pkqty').value=query1.fieldbyname('q9t1qty').value then d1043.Font.Color:=clBlack else d1043.Font.color:=clGreen;
  if query1.fieldbyname('q9t1qty').value>query1.fieldbyname('q9t2qty').value then d1044.Font.Color:=clRed
  else if query1.fieldbyname('q9t1qty').value=query1.fieldbyname('q9t2qty').value then d1044.Font.Color:=clBlack else d1044.Font.color:=clGreen;
  if query1.fieldbyname('q9t2qty').value>query1.fieldbyname('q9t3qty').value then d1046.Font.Color:=clRed
  else if query1.fieldbyname('q9t2qty').value=query1.fieldbyname('q9t3qty').value then d1046.Font.Color:=clBlack else d1046.Font.color:=clGreen;
  if query1.fieldbyname('q9t3qty').value>query1.fieldbyname('q9aqqty').value then d1047.Font.Color:=clRed
  else if query1.fieldbyname('q9t3qty').value=query1.fieldbyname('q9aqqty').value then d1047.Font.Color:=clBlack else d1047.Font.color:=clGreen;
  if query1.fieldbyname('q9aqqty').value>query1.fieldbyname('q9t4qty').value then d1048.Font.Color:=clRed
  else if query1.fieldbyname('q9aqqty').value=query1.fieldbyname('q9t4qty').value then d1048.Font.Color:=clBlack else d1048.Font.color:=clGreen;

  if query1.fieldbyname('q10pqty').value>query1.fieldbyname('q10pkqty').value then d2045.Font.Color:=clRed
  else if query1.fieldbyname('q10pqty').value=query1.fieldbyname('q10pkqty').value then d2045.Font.Color:=clBlack else d2045.Font.color:=clGreen;
  if query1.fieldbyname('q10pkqty').value>query1.fieldbyname('q10t1qty').value then d2043.Font.Color:=clRed
  else if query1.fieldbyname('q10pkqty').value=query1.fieldbyname('q10t1qty').value then d2043.Font.Color:=clBlack else d2043.Font.color:=clGreen;
  if query1.fieldbyname('q10t1qty').value>query1.fieldbyname('q10t2qty').value then d2044.Font.Color:=clRed
  else if query1.fieldbyname('q10t1qty').value=query1.fieldbyname('q10t2qty').value then d2044.Font.Color:=clBlack else d2044.Font.color:=clGreen;
  if query1.fieldbyname('q10t2qty').value>query1.fieldbyname('q10t3qty').value then d2046.Font.Color:=clRed
  else if query1.fieldbyname('q10t2qty').value=query1.fieldbyname('q10t3qty').value then d2046.Font.Color:=clBlack else d2046.Font.color:=clGreen;
  if query1.fieldbyname('q10t3qty').value>query1.fieldbyname('q10aqqty').value then d2047.Font.Color:=clRed
  else if query1.fieldbyname('q10t3qty').value=query1.fieldbyname('q10aqqty').value then d2047.Font.Color:=clBlack else d2047.Font.color:=clGreen;
  if query1.fieldbyname('q10aqqty').value>query1.fieldbyname('q10t4qty').value then d2048.Font.Color:=clRed
  else if query1.fieldbyname('q10aqqty').value=query1.fieldbyname('q10t4qty').value then d2048.Font.Color:=clBlack else d2048.Font.color:=clGreen;

  if query1.fieldbyname('q11pqty').value>query1.fieldbyname('q11t1qty').value then d1053.Font.Color:=clRed
  else if query1.fieldbyname('q11pqty').value=query1.fieldbyname('q11t1qty').value then d1053.Font.Color:=clBlack else d1053.Font.color:=clGreen;
  if query1.fieldbyname('q11t1qty').value>query1.fieldbyname('q11t2qty').value then d1054.Font.Color:=clRed
  else if query1.fieldbyname('q11t1qty').value=query1.fieldbyname('q11t2qty').value then d1054.Font.Color:=clBlack else d1054.Font.color:=clGreen;
  if query1.fieldbyname('q11t2qty').value>query1.fieldbyname('q11t3qty').value then d1056.Font.Color:=clRed
  else if query1.fieldbyname('q11t2qty').value=query1.fieldbyname('q11t3qty').value then d1056.Font.Color:=clBlack else d1056.Font.color:=clGreen;
  if query1.fieldbyname('q11t3qty').value>query1.fieldbyname('q11aqqty').value then d1057.Font.Color:=clRed
  else if query1.fieldbyname('q11t3qty').value=query1.fieldbyname('q11aqqty').value then d1057.Font.Color:=clBlack else d1057.Font.color:=clGreen;
  if query1.fieldbyname('q11aqqty').value>query1.fieldbyname('q11t4qty').value then d1058.Font.Color:=clRed
  else if query1.fieldbyname('q11aqqty').value=query1.fieldbyname('q11t4qty').value then d1058.Font.Color:=clBlack else d1058.Font.color:=clGreen;

  if query1.fieldbyname('q12pqty').value>query1.fieldbyname('q12t1qty').value then d2053.Font.Color:=clRed
  else if query1.fieldbyname('q12pqty').value=query1.fieldbyname('q12t1qty').value then d2053.Font.Color:=clBlack else d2053.Font.color:=clGreen;
  if query1.fieldbyname('q12t1qty').value>query1.fieldbyname('q12t2qty').value then d2054.Font.Color:=clRed
  else if query1.fieldbyname('q12t1qty').value=query1.fieldbyname('q12t2qty').value then d2054.Font.Color:=clBlack else d2054.Font.color:=clGreen;
  if query1.fieldbyname('q12t2qty').value>query1.fieldbyname('q12t3qty').value then d2056.Font.Color:=clRed
  else if query1.fieldbyname('q12t2qty').value=query1.fieldbyname('q12t3qty').value then d2056.Font.Color:=clBlack else d2056.Font.color:=clGreen;
  if query1.fieldbyname('q12t3qty').value>query1.fieldbyname('q12aqqty').value then d2057.Font.Color:=clRed
  else if query1.fieldbyname('q12t3qty').value=query1.fieldbyname('q12aqqty').value then d2057.Font.Color:=clBlack else d2057.Font.color:=clGreen;
  if query1.fieldbyname('q12aqqty').value>query1.fieldbyname('q12t4qty').value then d2058.Font.Color:=clRed
  else if query1.fieldbyname('q12aqqty').value=query1.fieldbyname('q12t4qty').value then d2058.Font.Color:=clBlack else d2058.Font.color:=clGreen;

  if query1.fieldbyname('q13pqty').value>query1.fieldbyname('q13t1qty').value then d1063.Font.Color:=clRed
  else if query1.fieldbyname('q13pqty').value=query1.fieldbyname('q13t1qty').value then d1063.Font.Color:=clBlack else d1063.Font.color:=clGreen;
  if query1.fieldbyname('q13t1qty').value>query1.fieldbyname('q13t2qty').value then d1064.Font.Color:=clRed
  else if query1.fieldbyname('q13t1qty').value=query1.fieldbyname('q13t2qty').value then d1064.Font.Color:=clBlack else d1064.Font.color:=clGreen;
  if query1.fieldbyname('q13t2qty').value>query1.fieldbyname('q13t3qty').value then d1066.Font.Color:=clRed
  else if query1.fieldbyname('q13t2qty').value=query1.fieldbyname('q13t3qty').value then d1066.Font.Color:=clBlack else d1066.Font.color:=clGreen;
  if query1.fieldbyname('q13t3qty').value>query1.fieldbyname('q13aqqty').value then d1067.Font.Color:=clRed
  else if query1.fieldbyname('q13t3qty').value=query1.fieldbyname('q13aqqty').value then d1067.Font.Color:=clBlack else d1067.Font.color:=clGreen;
  if query1.fieldbyname('q13aqqty').value>query1.fieldbyname('q13t4qty').value then d1068.Font.Color:=clRed
  else if query1.fieldbyname('q13aqqty').value=query1.fieldbyname('q13t4qty').value then d1068.Font.Color:=clBlack else d1068.Font.color:=clGreen;

  if query1.fieldbyname('q14pqty').value>query1.fieldbyname('q14t1qty').value then d2063.Font.Color:=clRed
  else if query1.fieldbyname('q14pqty').value=query1.fieldbyname('q14t1qty').value then d2063.Font.Color:=clBlack else d2063.Font.color:=clGreen;
  if query1.fieldbyname('q14t1qty').value>query1.fieldbyname('q14t2qty').value then d2064.Font.Color:=clRed
  else if query1.fieldbyname('q14t1qty').value=query1.fieldbyname('q14t2qty').value then d2064.Font.Color:=clBlack else d2064.Font.color:=clGreen;
  if query1.fieldbyname('q14t2qty').value>query1.fieldbyname('q14t3qty').value then d2066.Font.Color:=clRed
  else if query1.fieldbyname('q14t2qty').value=query1.fieldbyname('q14t3qty').value then d2066.Font.Color:=clBlack else d2066.Font.color:=clGreen;
  if query1.fieldbyname('q14t3qty').value>query1.fieldbyname('q14aqqty').value then d2067.Font.Color:=clRed
  else if query1.fieldbyname('q14t3qty').value=query1.fieldbyname('q14aqqty').value then d2067.Font.Color:=clBlack else d2067.Font.color:=clGreen;
  if query1.fieldbyname('q14aqqty').value>query1.fieldbyname('q14t4qty').value then d2068.Font.Color:=clRed
  else if query1.fieldbyname('q14aqqty').value=query1.fieldbyname('q14t4qty').value then d2068.Font.Color:=clBlack else d2068.Font.color:=clGreen;

  if query1.fieldbyname('q15pqty').value>query1.fieldbyname('q15t1qty').value then d1073.Font.Color:=clRed
  else if query1.fieldbyname('q15pqty').value=query1.fieldbyname('q15t1qty').value then d1073.Font.Color:=clBlack else d1073.Font.color:=clGreen;
  if query1.fieldbyname('q15t1qty').value>query1.fieldbyname('q15t2qty').value then d1074.Font.Color:=clRed
  else if query1.fieldbyname('q15t1qty').value=query1.fieldbyname('q15t2qty').value then d1074.Font.Color:=clBlack else d1074.Font.color:=clGreen;
  if query1.fieldbyname('q15t2qty').value>query1.fieldbyname('q15t3qty').value then d1076.Font.Color:=clRed
  else if query1.fieldbyname('q15t2qty').value=query1.fieldbyname('q15t3qty').value then d1076.Font.Color:=clBlack else d1076.Font.color:=clGreen;
  if query1.fieldbyname('q15t3qty').value>query1.fieldbyname('q15aqqty').value then d1077.Font.Color:=clRed
  else if query1.fieldbyname('q15t3qty').value=query1.fieldbyname('q15aqqty').value then d1077.Font.Color:=clBlack else d1077.Font.color:=clGreen;
  if query1.fieldbyname('q15aqqty').value>query1.fieldbyname('q15t4qty').value then d1078.Font.Color:=clRed
  else if query1.fieldbyname('q15aqqty').value=query1.fieldbyname('q15t4qty').value then d1078.Font.Color:=clBlack else d1078.Font.color:=clGreen;

  if query1.fieldbyname('q16pqty').value>query1.fieldbyname('q16t1qty').value then d2073.Font.Color:=clRed
  else if query1.fieldbyname('q16pqty').value=query1.fieldbyname('q16t1qty').value then d2073.Font.Color:=clBlack else d2073.Font.color:=clGreen;
  if query1.fieldbyname('q16t1qty').value>query1.fieldbyname('q16t2qty').value then d2074.Font.Color:=clRed
  else if query1.fieldbyname('q16t1qty').value=query1.fieldbyname('q16t2qty').value then d2074.Font.Color:=clBlack else d2074.Font.color:=clGreen;
  if query1.fieldbyname('q16t2qty').value>query1.fieldbyname('q16t3qty').value then d2076.Font.Color:=clRed
  else if query1.fieldbyname('q16t2qty').value=query1.fieldbyname('q16t3qty').value then d2076.Font.Color:=clBlack else d2076.Font.color:=clGreen;
  if query1.fieldbyname('q16t3qty').value>query1.fieldbyname('q16aqqty').value then d2077.Font.Color:=clRed
  else if query1.fieldbyname('q16t3qty').value=query1.fieldbyname('q16aqqty').value then d2077.Font.Color:=clBlack else d2077.Font.color:=clGreen;
  if query1.fieldbyname('q16aqqty').value>query1.fieldbyname('q16t4qty').value then d2078.Font.Color:=clRed
  else if query1.fieldbyname('q16aqqty').value=query1.fieldbyname('q16t4qty').value then d2078.Font.Color:=clBlack else d2078.Font.color:=clGreen;

  if query1.fieldbyname('q17pqty').value>query1.fieldbyname('q17t1qty').value then d1083.Font.Color:=clRed
  else if query1.fieldbyname('q17pqty').value=query1.fieldbyname('q17t1qty').value then d1083.Font.Color:=clBlack else d1083.Font.color:=clGreen;
  if query1.fieldbyname('q17t1qty').value>query1.fieldbyname('q17t2qty').value then d1084.Font.Color:=clRed
  else if query1.fieldbyname('q17t1qty').value=query1.fieldbyname('q17t2qty').value then d1084.Font.Color:=clBlack else d1084.Font.color:=clGreen;
  if query1.fieldbyname('q17t2qty').value>query1.fieldbyname('q17t3qty').value then d1086.Font.Color:=clRed
  else if query1.fieldbyname('q17t2qty').value=query1.fieldbyname('q17t3qty').value then d1086.Font.Color:=clBlack else d1086.Font.color:=clGreen;
  if query1.fieldbyname('q17t3qty').value>query1.fieldbyname('q17aqqty').value then d1087.Font.Color:=clRed
  else if query1.fieldbyname('q17t3qty').value=query1.fieldbyname('q17aqqty').value then d1087.Font.Color:=clBlack else d1087.Font.color:=clGreen;
  if query1.fieldbyname('q17aqqty').value>query1.fieldbyname('q17t4qty').value then d1088.Font.Color:=clRed
  else if query1.fieldbyname('q17aqqty').value=query1.fieldbyname('q17t4qty').value then d1088.Font.Color:=clBlack else d1088.Font.color:=clGreen;

  if query1.fieldbyname('q18pqty').value>query1.fieldbyname('q18t1qty').value then d2083.Font.Color:=clRed
  else if query1.fieldbyname('q18pqty').value=query1.fieldbyname('q18t1qty').value then d2083.Font.Color:=clBlack else d2083.Font.color:=clGreen;
  if query1.fieldbyname('q18t1qty').value>query1.fieldbyname('q18t2qty').value then d2084.Font.Color:=clRed
  else if query1.fieldbyname('q18t1qty').value=query1.fieldbyname('q18t2qty').value then d2084.Font.Color:=clBlack else d2084.Font.color:=clGreen;
  if query1.fieldbyname('q18t2qty').value>query1.fieldbyname('q18t3qty').value then d2086.Font.Color:=clRed
  else if query1.fieldbyname('q18t2qty').value=query1.fieldbyname('q18t3qty').value then d2086.Font.Color:=clBlack else d2086.Font.color:=clGreen;
  if query1.fieldbyname('q18t3qty').value>query1.fieldbyname('q18aqqty').value then d2087.Font.Color:=clRed
  else if query1.fieldbyname('q18t3qty').value=query1.fieldbyname('q18aqqty').value then d2087.Font.Color:=clBlack else d2087.Font.color:=clGreen;
  if query1.fieldbyname('q18aqqty').value>query1.fieldbyname('q18t4qty').value then d2088.Font.Color:=clRed
  else if query1.fieldbyname('q18aqqty').value=query1.fieldbyname('q18t4qty').value then d2088.Font.Color:=clBlack else d2088.Font.color:=clGreen;

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
  {
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
  }
end;

procedure Tfrmpdnactd1.ppGroupHeaderBand4BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_h where seq=:x1 and seq1=:x2 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value
                +''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('qn17').isnull then begin
      ppGroupHeaderBand5.Visible:=false;
      ppGroupFooterBand5.Visible:=false;
      ppGroupHeaderBand6.Visible:=false;
      ppGroupFooterBand6.Visible:=false;
      ppGroupHeaderBand7.Visible:=false;
      ppGroupFooterBand7.Visible:=false;
      ppGroupHeaderBand8.Visible:=false;
      ppGroupFooterBand8.Visible:=false;
      ppGroupHeaderBand9.Visible:=false;
      ppGroupFooterBand9.Visible:=false;
      ppGroupHeaderBand12.Visible:=false;
      ppGroupFooterBand12.Visible:=false;
      ppGroupHeaderBand15.Visible:=false;
      ppGroupFooterBand15.Visible:=false;
      ppGroupHeaderBand16.Visible:=false;
      ppGroupFooterBand16.Visible:=false;
      ppGroupHeaderBand17.Visible:=true;
      ppGroupFooterBand17.Visible:=true;

      d1011.Visible:=true;d1012.Visible:=true;d1013.Visible:=true;d1014.Visible:=true;d1016.Visible:=true;d1017.Visible:=true;d1018.Visible:=true;
      d1021.Visible:=true;d1022.Visible:=true;d1023.Visible:=true;d1024.Visible:=true;d1026.Visible:=true;d1027.Visible:=true;d1028.Visible:=true;
      d1031.Visible:=true;d1032.Visible:=true;d1033.Visible:=true;d1034.Visible:=true;d1036.Visible:=true;d1037.Visible:=true;d1038.Visible:=true;
      d1041.Visible:=true;d1042.Visible:=true;d1043.Visible:=true;d1044.Visible:=true;d1046.Visible:=true;d1047.Visible:=true;d1048.Visible:=true;
      d1051.Visible:=true;d1052.Visible:=true;d1053.Visible:=true;d1054.Visible:=true;d1056.Visible:=true;d1057.Visible:=true;d1058.Visible:=true;
      d1061.Visible:=true;d1062.Visible:=true;d1063.Visible:=true;d1064.Visible:=true;d1066.Visible:=true;d1067.Visible:=true;d1068.Visible:=true;
      d1071.Visible:=true;d1072.Visible:=true;d1073.Visible:=true;d1074.Visible:=true;d1076.Visible:=true;d1077.Visible:=true;d1078.Visible:=true;
      d1081.Visible:=true;d1082.Visible:=true;d1083.Visible:=true;d1084.Visible:=true;d1086.Visible:=true;d1087.Visible:=true;d1088.Visible:=true;

      d2011.Visible:=true;d2012.Visible:=true;d2013.Visible:=true;d2014.Visible:=true;d2016.Visible:=true;d2017.Visible:=true;d2018.Visible:=true;
      d2021.Visible:=true;d2022.Visible:=true;d2023.Visible:=true;d2024.Visible:=true;d2026.Visible:=true;d2027.Visible:=true;d2028.Visible:=true;
      d2031.Visible:=true;d2032.Visible:=true;d2033.Visible:=true;d2034.Visible:=true;d2036.Visible:=true;d2037.Visible:=true;d2038.Visible:=true;
      d2041.Visible:=true;d2042.Visible:=true;d2043.Visible:=true;d2044.Visible:=true;d2046.Visible:=true;d2047.Visible:=true;d2048.Visible:=true;
      d2051.Visible:=true;d2052.Visible:=true;d2053.Visible:=true;d2054.Visible:=true;d2056.Visible:=true;d2057.Visible:=true;d2058.Visible:=true;
      d2061.Visible:=true;d2062.Visible:=true;d2063.Visible:=true;d2064.Visible:=true;d2066.Visible:=true;d2067.Visible:=true;d2068.Visible:=true;
      d2071.Visible:=true;d2072.Visible:=true;d2073.Visible:=true;d2074.Visible:=true;d2076.Visible:=true;d2077.Visible:=true;d2078.Visible:=true;
      d2081.Visible:=true;d2082.Visible:=true;d2083.Visible:=true;d2084.Visible:=true;d2086.Visible:=true;d2087.Visible:=true;d2088.Visible:=true;
      d1015.Visible:=true;d1025.Visible:=true;d1035.Visible:=true;d1045.Visible:=true;d1055.Visible:=true;d1065.Visible:=true;d1075.Visible:=true;d1085.Visible:=true;
      d2015.Visible:=true;d2025.Visible:=true;d2035.Visible:=true;d2045.Visible:=true;d2055.Visible:=true;d2065.Visible:=true;d2075.Visible:=true;d2085.Visible:=true;
      d0014.Visible:=true;d0024.Visible:=true;d0034.Visible:=true;d0044.Visible:=true;d0054.Visible:=true;d0064.Visible:=true;d0074.Visible:=true;d0084.Visible:=true;
      d0015.visible:=true;d0025.visible:=true;d0035.visible:=true;d0045.visible:=true;d0055.visible:=true;d0065.visible:=true;d0075.visible:=true;d0085.visible:=true;
      d0016.visible:=true;d0026.visible:=true;d0036.visible:=true;d0046.visible:=true;d0056.visible:=true;d0066.visible:=true;d0076.visible:=true;d0086.visible:=true;

      d0011.Visible:=true;d0012.Visible:=true;d0013.Visible:=true;
      d0021.Visible:=true;d0022.Visible:=true;d0023.Visible:=true;
      d0031.Visible:=true;d0032.Visible:=true;d0033.Visible:=true;
      d0041.Visible:=true;d0042.Visible:=true;d0043.Visible:=true;
      d0051.Visible:=true;d0052.Visible:=true;d0053.Visible:=true;
      d0061.Visible:=true;d0062.Visible:=true;d0063.Visible:=true;
      d0071.Visible:=true;d0072.Visible:=true;d0073.Visible:=true;
      d0081.Visible:=true;d0082.Visible:=true;d0083.Visible:=true;
    end else if not fieldbyname('qn15').isnull then begin
      ppGroupHeaderBand5.Visible:=false;
      ppGroupFooterBand5.Visible:=false;
      ppGroupHeaderBand6.Visible:=false;
      ppGroupFooterBand6.Visible:=false;
      ppGroupHeaderBand7.Visible:=false;
      ppGroupFooterBand7.Visible:=false;
      ppGroupHeaderBand8.Visible:=false;
      ppGroupFooterBand8.Visible:=false;
      ppGroupHeaderBand9.Visible:=false;
      ppGroupFooterBand9.Visible:=false;
      ppGroupHeaderBand12.Visible:=false;
      ppGroupFooterBand12.Visible:=false;
      ppGroupHeaderBand15.Visible:=false;
      ppGroupFooterBand15.Visible:=false;
      ppGroupHeaderBand16.Visible:=true;
      ppGroupFooterBand16.Visible:=true;
      ppGroupHeaderBand17.Visible:=false;
      ppGroupFooterBand17.Visible:=false;

      d1011.Visible:=true;d1012.Visible:=true;d1013.Visible:=true;d1014.Visible:=true;d1016.Visible:=true;d1017.Visible:=true;d1018.Visible:=true;
      d1021.Visible:=true;d1022.Visible:=true;d1023.Visible:=true;d1024.Visible:=true;d1026.Visible:=true;d1027.Visible:=true;d1028.Visible:=true;
      d1031.Visible:=true;d1032.Visible:=true;d1033.Visible:=true;d1034.Visible:=true;d1036.Visible:=true;d1037.Visible:=true;d1038.Visible:=true;
      d1041.Visible:=true;d1042.Visible:=true;d1043.Visible:=true;d1044.Visible:=true;d1046.Visible:=true;d1047.Visible:=true;d1048.Visible:=true;
      d1051.Visible:=true;d1052.Visible:=true;d1053.Visible:=true;d1054.Visible:=true;d1056.Visible:=true;d1057.Visible:=true;d1058.Visible:=true;
      d1061.Visible:=true;d1062.Visible:=true;d1063.Visible:=true;d1064.Visible:=true;d1066.Visible:=true;d1067.Visible:=true;d1068.Visible:=true;
      d1071.Visible:=true;d1072.Visible:=true;d1073.Visible:=true;d1074.Visible:=true;d1076.Visible:=true;d1077.Visible:=true;d1078.Visible:=true;
      d1081.Visible:=false;d1082.Visible:=false;d1083.Visible:=false;d1084.Visible:=false;d1086.Visible:=false;d1087.Visible:=false;d1088.Visible:=false;

      d2011.Visible:=true;d2012.Visible:=true;d2013.Visible:=true;d2014.Visible:=true;d2016.Visible:=true;d2017.Visible:=true;d2018.Visible:=true;
      d2021.Visible:=true;d2022.Visible:=true;d2023.Visible:=true;d2024.Visible:=true;d2026.Visible:=true;d2027.Visible:=true;d2028.Visible:=true;
      d2031.Visible:=true;d2032.Visible:=true;d2033.Visible:=true;d2034.Visible:=true;d2036.Visible:=true;d2037.Visible:=true;d2038.Visible:=true;
      d2041.Visible:=true;d2042.Visible:=true;d2043.Visible:=true;d2044.Visible:=true;d2046.Visible:=true;d2047.Visible:=true;d2048.Visible:=true;
      d2051.Visible:=true;d2052.Visible:=true;d2053.Visible:=true;d2054.Visible:=true;d2056.Visible:=true;d2057.Visible:=true;d2058.Visible:=true;
      d2061.Visible:=true;d2062.Visible:=true;d2063.Visible:=true;d2064.Visible:=true;d2066.Visible:=true;d2067.Visible:=true;d2068.Visible:=true;
      d2071.Visible:=true;d2072.Visible:=true;d2073.Visible:=true;d2074.Visible:=true;d2076.Visible:=true;d2077.Visible:=true;d2078.Visible:=true;
      d2081.Visible:=false;d2082.Visible:=false;d2083.Visible:=false;d2084.Visible:=false;d2086.Visible:=false;d2087.Visible:=false;d2088.Visible:=false;
      d1015.Visible:=true;d1025.Visible:=true;d1035.Visible:=true;d1045.Visible:=true;d1055.Visible:=true;d1065.Visible:=true;d1075.Visible:=true;d1085.Visible:=false;
      d2015.Visible:=true;d2025.Visible:=true;d2035.Visible:=true;d2045.Visible:=true;d2055.Visible:=true;d2065.Visible:=true;d2075.Visible:=true;d2085.Visible:=false;
      d0014.Visible:=true;d0024.Visible:=true;d0034.Visible:=true;d0044.Visible:=true;d0054.Visible:=true;d0064.Visible:=true;d0074.Visible:=true;d0084.Visible:=false;
      d0015.visible:=true;d0025.visible:=true;d0035.visible:=true;d0045.visible:=true;d0055.visible:=true;d0065.visible:=true;d0075.visible:=true;d0085.visible:=false;
      d0016.visible:=true;d0026.visible:=true;d0036.visible:=true;d0046.visible:=true;d0056.visible:=true;d0066.visible:=true;d0076.visible:=true;d0086.visible:=false;

      d0011.Visible:=true;d0012.Visible:=true;d0013.Visible:=true;
      d0021.Visible:=true;d0022.Visible:=true;d0023.Visible:=true;
      d0031.Visible:=true;d0032.Visible:=true;d0033.Visible:=true;
      d0041.Visible:=true;d0042.Visible:=true;d0043.Visible:=true;
      d0051.Visible:=true;d0052.Visible:=true;d0053.Visible:=true;
      d0061.Visible:=true;d0062.Visible:=true;d0063.Visible:=true;
      d0071.Visible:=true;d0072.Visible:=true;d0073.Visible:=true;
      d0081.Visible:=false;d0082.Visible:=false;d0083.Visible:=false;
    end else if not fieldbyname('qn13').isnull then begin
      ppGroupHeaderBand5.Visible:=false;
      ppGroupFooterBand5.Visible:=false;
      ppGroupHeaderBand6.Visible:=false;
      ppGroupFooterBand6.Visible:=false;
      ppGroupHeaderBand7.Visible:=false;
      ppGroupFooterBand7.Visible:=false;
      ppGroupHeaderBand8.Visible:=false;
      ppGroupFooterBand8.Visible:=false;
      ppGroupHeaderBand9.Visible:=false;
      ppGroupFooterBand9.Visible:=false;
      ppGroupHeaderBand12.Visible:=false;
      ppGroupFooterBand12.Visible:=false;
      ppGroupHeaderBand15.Visible:=true;
      ppGroupFooterBand15.Visible:=true;
      ppGroupHeaderBand16.Visible:=false;
      ppGroupFooterBand16.Visible:=false;
      ppGroupHeaderBand17.Visible:=false;
      ppGroupFooterBand17.Visible:=false;

      d1011.Visible:=true;d1012.Visible:=true;d1013.Visible:=true;d1014.Visible:=true;d1016.Visible:=true;d1017.Visible:=true;d1018.Visible:=true;
      d1021.Visible:=true;d1022.Visible:=true;d1023.Visible:=true;d1024.Visible:=true;d1026.Visible:=true;d1027.Visible:=true;d1028.Visible:=true;
      d1031.Visible:=true;d1032.Visible:=true;d1033.Visible:=true;d1034.Visible:=true;d1036.Visible:=true;d1037.Visible:=true;d1038.Visible:=true;
      d1041.Visible:=true;d1042.Visible:=true;d1043.Visible:=true;d1044.Visible:=true;d1046.Visible:=true;d1047.Visible:=true;d1048.Visible:=true;
      d1051.Visible:=true;d1052.Visible:=true;d1053.Visible:=true;d1054.Visible:=true;d1056.Visible:=true;d1057.Visible:=true;d1058.Visible:=true;
      d1061.Visible:=true;d1062.Visible:=true;d1063.Visible:=true;d1064.Visible:=true;d1066.Visible:=true;d1067.Visible:=true;d1068.Visible:=true;
      d1071.Visible:=false;d1072.Visible:=false;d1073.Visible:=false;d1074.Visible:=false;d1076.Visible:=false;d1077.Visible:=false;d1078.Visible:=false;
      d1081.Visible:=false;d1082.Visible:=false;d1083.Visible:=false;d1084.Visible:=false;d1086.Visible:=false;d1087.Visible:=false;d1088.Visible:=false;

      d2011.Visible:=true;d2012.Visible:=true;d2013.Visible:=true;d2014.Visible:=true;d2016.Visible:=true;d2017.Visible:=true;d2018.Visible:=true;
      d2021.Visible:=true;d2022.Visible:=true;d2023.Visible:=true;d2024.Visible:=true;d2026.Visible:=true;d2027.Visible:=true;d2028.Visible:=true;
      d2031.Visible:=true;d2032.Visible:=true;d2033.Visible:=true;d2034.Visible:=true;d2036.Visible:=true;d2037.Visible:=true;d2038.Visible:=true;
      d2041.Visible:=true;d2042.Visible:=true;d2043.Visible:=true;d2044.Visible:=true;d2046.Visible:=true;d2047.Visible:=true;d2048.Visible:=true;
      d2051.Visible:=true;d2052.Visible:=true;d2053.Visible:=true;d2054.Visible:=true;d2056.Visible:=true;d2057.Visible:=true;d2058.Visible:=true;
      d2061.Visible:=true;d2062.Visible:=true;d2063.Visible:=true;d2064.Visible:=true;d2066.Visible:=true;d2067.Visible:=true;d2068.Visible:=true;
      d2071.Visible:=false;d2072.Visible:=false;d2073.Visible:=false;d2074.Visible:=false;d2076.Visible:=false;d2077.Visible:=false;d2078.Visible:=false;
      d2081.Visible:=false;d2082.Visible:=false;d2083.Visible:=false;d2084.Visible:=false;d2086.Visible:=false;d2087.Visible:=false;d2088.Visible:=false;
      d1015.Visible:=true;d1025.Visible:=true;d1035.Visible:=true;d1045.Visible:=true;d1055.Visible:=true;d1065.Visible:=true;d1075.Visible:=false;d1085.Visible:=false;
      d2015.Visible:=true;d2025.Visible:=true;d2035.Visible:=true;d2045.Visible:=true;d2055.Visible:=true;d2065.Visible:=true;d2075.Visible:=false;d2085.Visible:=false;
      d0014.Visible:=true;d0024.Visible:=true;d0034.Visible:=true;d0044.Visible:=true;d0054.Visible:=true;d0064.Visible:=true;d0074.Visible:=false;d0084.Visible:=false;
      d0015.visible:=true;d0025.visible:=true;d0035.visible:=true;d0045.visible:=true;d0055.visible:=true;d0065.visible:=true;d0075.visible:=false;d0085.visible:=false;
      d0016.visible:=true;d0026.visible:=true;d0036.visible:=true;d0046.visible:=true;d0056.visible:=true;d0066.visible:=true;d0076.visible:=false;d0086.visible:=false;

      d0011.Visible:=true;d0012.Visible:=true;d0013.Visible:=true;
      d0021.Visible:=true;d0022.Visible:=true;d0023.Visible:=true;
      d0031.Visible:=true;d0032.Visible:=true;d0033.Visible:=true;
      d0041.Visible:=true;d0042.Visible:=true;d0043.Visible:=true;
      d0051.Visible:=true;d0052.Visible:=true;d0053.Visible:=true;
      d0061.Visible:=true;d0062.Visible:=true;d0063.Visible:=true;
      d0071.Visible:=false;d0072.Visible:=false;d0073.Visible:=false;
      d0081.Visible:=false;d0082.Visible:=false;d0083.Visible:=false;
    end else if not fieldbyname('qn11').isnull then begin
      ppGroupHeaderBand5.Visible:=false;
      ppGroupFooterBand5.Visible:=false;
      ppGroupHeaderBand6.Visible:=false;
      ppGroupFooterBand6.Visible:=false;
      ppGroupHeaderBand7.Visible:=false;
      ppGroupFooterBand7.Visible:=false;
      ppGroupHeaderBand8.Visible:=false;
      ppGroupFooterBand8.Visible:=false;
      ppGroupHeaderBand9.Visible:=false;
      ppGroupFooterBand9.Visible:=false;
      ppGroupHeaderBand12.Visible:=true;
      ppGroupFooterBand12.Visible:=true;
      ppGroupHeaderBand15.Visible:=false;
      ppGroupFooterBand15.Visible:=false;
      ppGroupHeaderBand16.Visible:=false;
      ppGroupFooterBand16.Visible:=false;
      ppGroupHeaderBand17.Visible:=false;
      ppGroupFooterBand17.Visible:=false;

      d1011.Visible:=true;d1012.Visible:=true;d1013.Visible:=true;d1014.Visible:=true;d1016.Visible:=true;d1017.Visible:=true;d1018.Visible:=true;
      d1021.Visible:=true;d1022.Visible:=true;d1023.Visible:=true;d1024.Visible:=true;d1026.Visible:=true;d1027.Visible:=true;d1028.Visible:=true;
      d1031.Visible:=true;d1032.Visible:=true;d1033.Visible:=true;d1034.Visible:=true;d1036.Visible:=true;d1037.Visible:=true;d1038.Visible:=true;
      d1041.Visible:=true;d1042.Visible:=true;d1043.Visible:=true;d1044.Visible:=true;d1046.Visible:=true;d1047.Visible:=true;d1048.Visible:=true;
      d1051.Visible:=true;d1052.Visible:=true;d1053.Visible:=true;d1054.Visible:=true;d1056.Visible:=true;d1057.Visible:=true;d1058.Visible:=true;
      d1061.Visible:=false;d1062.Visible:=false;d1063.Visible:=false;d1064.Visible:=false;d1066.Visible:=false;d1067.Visible:=false;d1068.Visible:=false;
      d1071.Visible:=false;d1072.Visible:=false;d1073.Visible:=false;d1074.Visible:=false;d1076.Visible:=false;d1077.Visible:=false;d1078.Visible:=false;
      d1081.Visible:=false;d1082.Visible:=false;d1083.Visible:=false;d1084.Visible:=false;d1086.Visible:=false;d1087.Visible:=false;d1088.Visible:=false;

      d2011.Visible:=true;d2012.Visible:=true;d2013.Visible:=true;d2014.Visible:=true;d2016.Visible:=true;d2017.Visible:=true;d2018.Visible:=true;
      d2021.Visible:=true;d2022.Visible:=true;d2023.Visible:=true;d2024.Visible:=true;d2026.Visible:=true;d2027.Visible:=true;d2028.Visible:=true;
      d2031.Visible:=true;d2032.Visible:=true;d2033.Visible:=true;d2034.Visible:=true;d2036.Visible:=true;d2037.Visible:=true;d2038.Visible:=true;
      d2041.Visible:=true;d2042.Visible:=true;d2043.Visible:=true;d2044.Visible:=true;d2046.Visible:=true;d2047.Visible:=true;d2048.Visible:=true;
      d2051.Visible:=true;d2052.Visible:=true;d2053.Visible:=true;d2054.Visible:=true;d2056.Visible:=true;d2057.Visible:=true;d2058.Visible:=true;
      d2061.Visible:=false;d2062.Visible:=false;d2063.Visible:=false;d2064.Visible:=false;d2066.Visible:=false;d2067.Visible:=false;d2068.Visible:=false;
      d2071.Visible:=false;d2072.Visible:=false;d2073.Visible:=false;d2074.Visible:=false;d2076.Visible:=false;d2077.Visible:=false;d2078.Visible:=false;
      d2081.Visible:=false;d2082.Visible:=false;d2083.Visible:=false;d2084.Visible:=false;d2086.Visible:=false;d2087.Visible:=false;d2088.Visible:=false;
      d1015.Visible:=true;d1025.Visible:=true;d1035.Visible:=true;d1045.Visible:=true;d1055.Visible:=true;d1065.Visible:=false;d1075.Visible:=false;d1085.Visible:=false;
      d2015.Visible:=true;d2025.Visible:=true;d2035.Visible:=true;d2045.Visible:=true;d2055.Visible:=true;d2065.Visible:=false;d2075.Visible:=false;d2085.Visible:=false;
      d0014.Visible:=true;d0024.Visible:=true;d0034.Visible:=true;d0044.Visible:=true;d0054.Visible:=true;d0064.Visible:=false;d0074.Visible:=false;d0084.Visible:=false;
      d0015.visible:=true;d0025.visible:=true;d0035.visible:=true;d0045.visible:=true;d0055.visible:=true;d0065.visible:=false;d0075.visible:=false;d0085.visible:=false;
      d0016.visible:=true;d0026.visible:=true;d0036.visible:=true;d0046.visible:=true;d0056.visible:=true;d0066.visible:=false;d0076.visible:=false;d0086.visible:=false;

      d0011.Visible:=true;d0012.Visible:=true;d0013.Visible:=true;
      d0021.Visible:=true;d0022.Visible:=true;d0023.Visible:=true;
      d0031.Visible:=true;d0032.Visible:=true;d0033.Visible:=true;
      d0041.Visible:=true;d0042.Visible:=true;d0043.Visible:=true;
      d0051.Visible:=true;d0052.Visible:=true;d0053.Visible:=true;
      d0061.Visible:=false;d0062.Visible:=false;d0063.Visible:=false;
      d0071.Visible:=false;d0072.Visible:=false;d0073.Visible:=false;
      d0081.Visible:=false;d0082.Visible:=false;d0083.Visible:=false;
    end else if not fieldbyname('qn9').isnull then begin
      ppGroupHeaderBand5.Visible:=false;
      ppGroupFooterBand5.Visible:=false;
      ppGroupHeaderBand6.Visible:=false;
      ppGroupFooterBand6.Visible:=false;
      ppGroupHeaderBand7.Visible:=false;
      ppGroupFooterBand7.Visible:=false;
      ppGroupHeaderBand8.Visible:=false;
      ppGroupFooterBand8.Visible:=false;
      ppGroupHeaderBand9.Visible:=true;
      ppGroupFooterBand9.Visible:=true;
      ppGroupHeaderBand12.Visible:=false;
      ppGroupFooterBand12.Visible:=false;
      ppGroupHeaderBand15.Visible:=false;
      ppGroupFooterBand15.Visible:=false;
      ppGroupHeaderBand16.Visible:=false;
      ppGroupFooterBand16.Visible:=false;
      ppGroupHeaderBand17.Visible:=false;
      ppGroupFooterBand17.Visible:=false;

      d1011.Visible:=true;d1012.Visible:=true;d1013.Visible:=true;d1014.Visible:=true;d1016.Visible:=true;d1017.Visible:=true;d1018.Visible:=true;
      d1021.Visible:=true;d1022.Visible:=true;d1023.Visible:=true;d1024.Visible:=true;d1026.Visible:=true;d1027.Visible:=true;d1028.Visible:=true;
      d1031.Visible:=true;d1032.Visible:=true;d1033.Visible:=true;d1034.Visible:=true;d1036.Visible:=true;d1037.Visible:=true;d1038.Visible:=true;
      d1041.Visible:=true;d1042.Visible:=true;d1043.Visible:=true;d1044.Visible:=true;d1046.Visible:=true;d1047.Visible:=true;d1048.Visible:=true;
      d1051.Visible:=false;d1052.Visible:=false;d1053.Visible:=false;d1054.Visible:=false;d1056.Visible:=false;d1057.Visible:=false;d1058.Visible:=false;
      d1061.Visible:=false;d1062.Visible:=false;d1063.Visible:=false;d1064.Visible:=false;d1066.Visible:=false;d1067.Visible:=false;d1068.Visible:=false;
      d1071.Visible:=false;d1072.Visible:=false;d1073.Visible:=false;d1074.Visible:=false;d1076.Visible:=false;d1077.Visible:=false;d1078.Visible:=false;
      d1081.Visible:=false;d1082.Visible:=false;d1083.Visible:=false;d1084.Visible:=false;d1086.Visible:=false;d1087.Visible:=false;d1088.Visible:=false;

      d2011.Visible:=true;d2012.Visible:=true;d2013.Visible:=true;d2014.Visible:=true;d2016.Visible:=true;d2017.Visible:=true;d2018.Visible:=true;
      d2021.Visible:=true;d2022.Visible:=true;d2023.Visible:=true;d2024.Visible:=true;d2026.Visible:=true;d2027.Visible:=true;d2028.Visible:=true;
      d2031.Visible:=true;d2032.Visible:=true;d2033.Visible:=true;d2034.Visible:=true;d2036.Visible:=true;d2037.Visible:=true;d2038.Visible:=true;
      d2041.Visible:=true;d2042.Visible:=true;d2043.Visible:=true;d2044.Visible:=true;d2046.Visible:=true;d2047.Visible:=true;d2048.Visible:=true;
      d2051.Visible:=false;d2052.Visible:=false;d2053.Visible:=false;d2054.Visible:=false;d2056.Visible:=false;d2057.Visible:=false;d2058.Visible:=false;
      d2061.Visible:=false;d2062.Visible:=false;d2063.Visible:=false;d2064.Visible:=false;d2066.Visible:=false;d2067.Visible:=false;d2068.Visible:=false;
      d2071.Visible:=false;d2072.Visible:=false;d2073.Visible:=false;d2074.Visible:=false;d2076.Visible:=false;d2077.Visible:=false;d2078.Visible:=false;
      d2081.Visible:=false;d2082.Visible:=false;d2083.Visible:=false;d2084.Visible:=false;d2086.Visible:=false;d2087.Visible:=false;d2088.Visible:=false;
      d1015.Visible:=true;d1025.Visible:=true;d1035.Visible:=true;d1045.Visible:=true;d1055.Visible:=false;d1065.Visible:=false;d1075.Visible:=false;d1085.Visible:=false;
      d2015.Visible:=true;d2025.Visible:=true;d2035.Visible:=true;d2045.Visible:=true;d2055.Visible:=false;d2065.Visible:=false;d2075.Visible:=false;d2085.Visible:=false;
      d0014.Visible:=true;d0024.Visible:=true;d0034.Visible:=true;d0044.Visible:=true;d0054.Visible:=false;d0064.Visible:=false;d0074.Visible:=false;d0084.Visible:=false;
      d0015.visible:=true;d0025.visible:=true;d0035.visible:=true;d0045.visible:=true;d0055.visible:=false;d0065.visible:=false;d0075.visible:=false;d0085.visible:=false;
      d0016.visible:=true;d0026.visible:=true;d0036.visible:=true;d0046.visible:=true;d0056.visible:=false;d0066.visible:=false;d0076.visible:=false;d0086.visible:=false;

      d0011.Visible:=true;d0012.Visible:=true;d0013.Visible:=true;
      d0021.Visible:=true;d0022.Visible:=true;d0023.Visible:=true;
      d0031.Visible:=true;d0032.Visible:=true;d0033.Visible:=true;
      d0041.Visible:=true;d0042.Visible:=true;d0043.Visible:=true;
      d0051.Visible:=false;d0052.Visible:=false;d0053.Visible:=false;
      d0061.Visible:=false;d0062.Visible:=false;d0063.Visible:=false;
      d0071.Visible:=false;d0072.Visible:=false;d0073.Visible:=false;
      d0081.Visible:=false;d0082.Visible:=false;d0083.Visible:=false;
    end else if not fieldbyname('qn7').isnull then begin
      ppGroupHeaderBand5.Visible:=false;
      ppGroupFooterBand5.Visible:=false;
      ppGroupHeaderBand6.Visible:=false;
      ppGroupFooterBand6.Visible:=false;
      ppGroupHeaderBand7.Visible:=false;
      ppGroupFooterBand7.Visible:=false;
      ppGroupHeaderBand8.Visible:=true;
      ppGroupFooterBand8.Visible:=true;
      ppGroupHeaderBand9.Visible:=false;
      ppGroupFooterBand9.Visible:=false;
      ppGroupHeaderBand12.Visible:=false;
      ppGroupFooterBand12.Visible:=false;
      ppGroupHeaderBand15.Visible:=false;
      ppGroupFooterBand15.Visible:=false;
      ppGroupHeaderBand16.Visible:=false;
      ppGroupFooterBand16.Visible:=false;
      ppGroupHeaderBand17.Visible:=false;
      ppGroupFooterBand17.Visible:=false;

      d1011.Visible:=true;d1012.Visible:=true;d1013.Visible:=true;d1014.Visible:=true;d1016.Visible:=true;d1017.Visible:=true;d1018.Visible:=true;
      d1021.Visible:=true;d1022.Visible:=true;d1023.Visible:=true;d1024.Visible:=true;d1026.Visible:=true;d1027.Visible:=true;d1028.Visible:=true;
      d1031.Visible:=true;d1032.Visible:=true;d1033.Visible:=true;d1034.Visible:=true;d1036.Visible:=true;d1037.Visible:=true;d1038.Visible:=true;
      d1041.Visible:=false;d1042.Visible:=false;d1043.Visible:=false;d1044.Visible:=false;d1046.Visible:=false;d1047.Visible:=false;d1048.Visible:=false;
      d1051.Visible:=false;d1052.Visible:=false;d1053.Visible:=false;d1054.Visible:=false;d1056.Visible:=false;d1057.Visible:=false;d1058.Visible:=false;
      d1061.Visible:=false;d1062.Visible:=false;d1063.Visible:=false;d1064.Visible:=false;d1066.Visible:=false;d1067.Visible:=false;d1068.Visible:=false;
      d1071.Visible:=false;d1072.Visible:=false;d1073.Visible:=false;d1074.Visible:=false;d1076.Visible:=false;d1077.Visible:=false;d1078.Visible:=false;
      d1081.Visible:=false;d1082.Visible:=false;d1083.Visible:=false;d1084.Visible:=false;d1086.Visible:=false;d1087.Visible:=false;d1088.Visible:=false;

      d2011.Visible:=true;d2012.Visible:=true;d2013.Visible:=true;d2014.Visible:=true;d2016.Visible:=true;d2017.Visible:=true;d2018.Visible:=true;
      d2021.Visible:=true;d2022.Visible:=true;d2023.Visible:=true;d2024.Visible:=true;d2026.Visible:=true;d2027.Visible:=true;d2028.Visible:=true;
      d2031.Visible:=true;d2032.Visible:=true;d2033.Visible:=true;d2034.Visible:=true;d2036.Visible:=true;d2037.Visible:=true;d2038.Visible:=true;
      d2041.Visible:=false;d2042.Visible:=false;d2043.Visible:=false;d2044.Visible:=false;d2046.Visible:=false;d2047.Visible:=false;d2048.Visible:=false;
      d2051.Visible:=false;d2052.Visible:=false;d2053.Visible:=false;d2054.Visible:=false;d2056.Visible:=false;d2057.Visible:=false;d2058.Visible:=false;
      d2061.Visible:=false;d2062.Visible:=false;d2063.Visible:=false;d2064.Visible:=false;d2066.Visible:=false;d2067.Visible:=false;d2068.Visible:=false;
      d2071.Visible:=false;d2072.Visible:=false;d2073.Visible:=false;d2074.Visible:=false;d2076.Visible:=false;d2077.Visible:=false;d2078.Visible:=false;
      d2081.Visible:=false;d2082.Visible:=false;d2083.Visible:=false;d2084.Visible:=false;d2086.Visible:=false;d2087.Visible:=false;d2088.Visible:=false;
      d1015.Visible:=true;d1025.Visible:=true;d1035.Visible:=true;d1045.Visible:=false;d1055.Visible:=false;d1065.Visible:=false;d1075.Visible:=false;d1085.Visible:=false;
      d2015.Visible:=true;d2025.Visible:=true;d2035.Visible:=true;d2045.Visible:=false;d2055.Visible:=false;d2065.Visible:=false;d2075.Visible:=false;d2085.Visible:=false;
      d0014.Visible:=true;d0024.Visible:=true;d0034.Visible:=true;d0044.Visible:=false;d0054.Visible:=false;d0064.Visible:=false;d0074.Visible:=false;d0084.Visible:=false;
      d0015.visible:=true;d0025.visible:=true;d0035.visible:=true;d0045.visible:=false;d0055.visible:=false;d0065.visible:=false;d0075.visible:=false;d0085.visible:=false;
      d0016.visible:=true;d0026.visible:=true;d0036.visible:=true;d0046.visible:=false;d0056.visible:=false;d0066.visible:=false;d0076.visible:=false;d0086.visible:=false;

      d0011.Visible:=true;d0012.Visible:=true;d0013.Visible:=true;
      d0021.Visible:=true;d0022.Visible:=true;d0023.Visible:=true;
      d0031.Visible:=true;d0032.Visible:=true;d0033.Visible:=true;
      d0041.Visible:=false;d0042.Visible:=false;d0043.Visible:=false;
      d0051.Visible:=false;d0052.Visible:=false;d0053.Visible:=false;
      d0061.Visible:=false;d0062.Visible:=false;d0063.Visible:=false;
      d0071.Visible:=false;d0072.Visible:=false;d0073.Visible:=false;
      d0081.Visible:=false;d0082.Visible:=false;d0083.Visible:=false;
    end else if not fieldbyname('qn5').isnull then begin
      ppGroupHeaderBand5.Visible:=false;
      ppGroupFooterBand5.Visible:=false;
      ppGroupHeaderBand6.Visible:=false;
      ppGroupFooterBand6.Visible:=false;
      ppGroupHeaderBand7.Visible:=true;
      ppGroupFooterBand7.Visible:=true;
      ppGroupHeaderBand8.Visible:=false;
      ppGroupFooterBand8.Visible:=false;
      ppGroupHeaderBand9.Visible:=false;
      ppGroupFooterBand9.Visible:=false;
      ppGroupHeaderBand12.Visible:=false;
      ppGroupFooterBand12.Visible:=false;
      ppGroupHeaderBand15.Visible:=false;
      ppGroupFooterBand15.Visible:=false;
      ppGroupHeaderBand16.Visible:=false;
      ppGroupFooterBand16.Visible:=false;
      ppGroupHeaderBand17.Visible:=false;
      ppGroupFooterBand17.Visible:=false;

      d1011.Visible:=true;d1012.Visible:=true;d1013.Visible:=true;d1014.Visible:=true;d1016.Visible:=true;d1017.Visible:=true;d1018.Visible:=true;
      d1021.Visible:=true;d1022.Visible:=true;d1023.Visible:=true;d1024.Visible:=true;d1026.Visible:=true;d1027.Visible:=true;d1028.Visible:=true;
      d1031.Visible:=false;d1032.Visible:=false;d1033.Visible:=false;d1034.Visible:=false;d1036.Visible:=false;d1037.Visible:=false;d1038.Visible:=false;
      d1041.Visible:=false;d1042.Visible:=false;d1043.Visible:=false;d1044.Visible:=false;d1046.Visible:=false;d1047.Visible:=false;d1048.Visible:=false;
      d1051.Visible:=false;d1052.Visible:=false;d1053.Visible:=false;d1054.Visible:=false;d1056.Visible:=false;d1057.Visible:=false;d1058.Visible:=false;
      d1061.Visible:=false;d1062.Visible:=false;d1063.Visible:=false;d1064.Visible:=false;d1066.Visible:=false;d1067.Visible:=false;d1068.Visible:=false;
      d1071.Visible:=false;d1072.Visible:=false;d1073.Visible:=false;d1074.Visible:=false;d1076.Visible:=false;d1077.Visible:=false;d1078.Visible:=false;
      d1081.Visible:=false;d1082.Visible:=false;d1083.Visible:=false;d1084.Visible:=false;d1086.Visible:=false;d1087.Visible:=false;d1088.Visible:=false;

      d2011.Visible:=true;d2012.Visible:=true;d2013.Visible:=true;d2014.Visible:=true;d2016.Visible:=true;d2017.Visible:=true;d2018.Visible:=true;
      d2021.Visible:=true;d2022.Visible:=true;d2023.Visible:=true;d2024.Visible:=true;d2026.Visible:=true;d2027.Visible:=true;d2028.Visible:=true;
      d2031.Visible:=false;d2032.Visible:=false;d2033.Visible:=false;d2034.Visible:=false;d2036.Visible:=false;d2037.Visible:=false;d2038.Visible:=false;
      d2041.Visible:=false;d2042.Visible:=false;d2043.Visible:=false;d2044.Visible:=false;d2046.Visible:=false;d2047.Visible:=false;d2048.Visible:=false;
      d2051.Visible:=false;d2052.Visible:=false;d2053.Visible:=false;d2054.Visible:=false;d2056.Visible:=false;d2057.Visible:=false;d2058.Visible:=false;
      d2061.Visible:=false;d2062.Visible:=false;d2063.Visible:=false;d2064.Visible:=false;d2066.Visible:=false;d2067.Visible:=false;d2068.Visible:=false;
      d2071.Visible:=false;d2072.Visible:=false;d2073.Visible:=false;d2074.Visible:=false;d2076.Visible:=false;d2077.Visible:=false;d2078.Visible:=false;
      d2081.Visible:=false;d2082.Visible:=false;d2083.Visible:=false;d2084.Visible:=false;d2086.Visible:=false;d2087.Visible:=false;d2088.Visible:=false;
      d1015.Visible:=true;d1025.Visible:=true;d1035.Visible:=false;d1045.Visible:=false;d1055.Visible:=false;d1065.Visible:=false;d1075.Visible:=false;d1085.Visible:=false;
      d2015.Visible:=true;d2025.Visible:=true;d2035.Visible:=false;d2045.Visible:=false;d2055.Visible:=false;d2065.Visible:=false;d2075.Visible:=false;d2085.Visible:=false;
      d0014.Visible:=true;d0024.Visible:=true;d0034.Visible:=false;d0044.Visible:=false;d0054.Visible:=false;d0064.Visible:=false;d0074.Visible:=false;d0084.Visible:=false;
      d0015.visible:=true;d0025.visible:=true;d0035.visible:=false;d0045.visible:=false;d0055.visible:=false;d0065.visible:=false;d0075.visible:=false;d0085.visible:=false;
      d0016.visible:=true;d0026.visible:=true;d0036.visible:=false;d0046.visible:=false;d0056.visible:=false;d0066.visible:=false;d0076.visible:=false;d0086.visible:=false;

      d0011.Visible:=true;d0012.Visible:=true;d0013.Visible:=true;
      d0021.Visible:=true;d0022.Visible:=true;d0023.Visible:=true;
      d0031.Visible:=false;d0032.Visible:=false;d0033.Visible:=false;
      d0041.Visible:=false;d0042.Visible:=false;d0043.Visible:=false;
      d0051.Visible:=false;d0052.Visible:=false;d0053.Visible:=false;
      d0061.Visible:=false;d0062.Visible:=false;d0063.Visible:=false;
      d0071.Visible:=false;d0072.Visible:=false;d0073.Visible:=false;
      d0081.Visible:=false;d0082.Visible:=false;d0083.Visible:=false;
    end else if not fieldbyname('qn3').isnull then begin
      ppGroupHeaderBand5.Visible:=false;
      ppGroupFooterBand5.Visible:=false;
      ppGroupHeaderBand6.Visible:=true;
      ppGroupFooterBand6.Visible:=true;
      ppGroupHeaderBand7.Visible:=false;
      ppGroupFooterBand7.Visible:=false;
      ppGroupHeaderBand8.Visible:=false;
      ppGroupFooterBand8.Visible:=false;
      ppGroupHeaderBand9.Visible:=false;
      ppGroupFooterBand9.Visible:=false;
      ppGroupHeaderBand12.Visible:=false;
      ppGroupFooterBand12.Visible:=false;
      ppGroupHeaderBand15.Visible:=false;
      ppGroupFooterBand15.Visible:=false;
      ppGroupHeaderBand16.Visible:=false;
      ppGroupFooterBand16.Visible:=false;
      ppGroupHeaderBand17.Visible:=false;
      ppGroupFooterBand17.Visible:=false;

      d1011.Visible:=true;d1012.Visible:=true;d1013.Visible:=true;d1014.Visible:=true;d1016.Visible:=true;d1017.Visible:=true;d1018.Visible:=true;
      d1021.Visible:=false;d1022.Visible:=false;d1023.Visible:=false;d1024.Visible:=false;d1026.Visible:=false;d1027.Visible:=false;d1028.Visible:=false;
      d1031.Visible:=false;d1032.Visible:=false;d1033.Visible:=false;d1034.Visible:=false;d1036.Visible:=false;d1037.Visible:=false;d1038.Visible:=false;
      d1041.Visible:=false;d1042.Visible:=false;d1043.Visible:=false;d1044.Visible:=false;d1046.Visible:=false;d1047.Visible:=false;d1048.Visible:=false;
      d1051.Visible:=false;d1052.Visible:=false;d1053.Visible:=false;d1054.Visible:=false;d1056.Visible:=false;d1057.Visible:=false;d1058.Visible:=false;
      d1061.Visible:=false;d1062.Visible:=false;d1063.Visible:=false;d1064.Visible:=false;d1066.Visible:=false;d1067.Visible:=false;d1068.Visible:=false;
      d1071.Visible:=false;d1072.Visible:=false;d1073.Visible:=false;d1074.Visible:=false;d1076.Visible:=false;d1077.Visible:=false;d1078.Visible:=false;
      d1081.Visible:=false;d1082.Visible:=false;d1083.Visible:=false;d1084.Visible:=false;d1086.Visible:=false;d1087.Visible:=false;d1088.Visible:=false;

      d2011.Visible:=true;d2012.Visible:=true;d2013.Visible:=true;d2014.Visible:=true;d2016.Visible:=true;d2017.Visible:=true;d2018.Visible:=true;
      d2021.Visible:=false;d2022.Visible:=false;d2023.Visible:=false;d2024.Visible:=false;d2026.Visible:=false;d2027.Visible:=false;d2028.Visible:=false;
      d2031.Visible:=false;d2032.Visible:=false;d2033.Visible:=false;d2034.Visible:=false;d2036.Visible:=false;d2037.Visible:=false;d2038.Visible:=false;
      d2041.Visible:=false;d2042.Visible:=false;d2043.Visible:=false;d2044.Visible:=false;d2046.Visible:=false;d2047.Visible:=false;d2048.Visible:=false;
      d2051.Visible:=false;d2052.Visible:=false;d2053.Visible:=false;d2054.Visible:=false;d2056.Visible:=false;d2057.Visible:=false;d2058.Visible:=false;
      d2061.Visible:=false;d2062.Visible:=false;d2063.Visible:=false;d2064.Visible:=false;d2066.Visible:=false;d2067.Visible:=false;d2068.Visible:=false;
      d2071.Visible:=false;d2072.Visible:=false;d2073.Visible:=false;d2074.Visible:=false;d2076.Visible:=false;d2077.Visible:=false;d2078.Visible:=false;
      d2081.Visible:=false;d2082.Visible:=false;d2083.Visible:=false;d2084.Visible:=false;d2086.Visible:=false;d2087.Visible:=false;d2088.Visible:=false;
      d1015.Visible:=true;d1025.Visible:=false;d1035.Visible:=false;d1045.Visible:=false;d1055.Visible:=false;d1065.Visible:=false;d1075.Visible:=false;d1085.Visible:=false;
      d2015.Visible:=true;d2025.Visible:=false;d2035.Visible:=false;d2045.Visible:=false;d2055.Visible:=false;d2065.Visible:=false;d2075.Visible:=false;d2085.Visible:=false;
      d0014.Visible:=true;d0024.Visible:=false;d0034.Visible:=false;d0044.Visible:=false;d0054.Visible:=false;d0064.Visible:=false;d0074.Visible:=false;d0084.Visible:=false;
      d0015.visible:=true;d0025.visible:=false;d0035.visible:=false;d0045.visible:=false;d0055.visible:=false;d0065.visible:=false;d0075.visible:=false;d0085.visible:=false;
      d0016.visible:=true;d0026.visible:=false;d0036.visible:=false;d0046.visible:=false;d0056.visible:=false;d0066.visible:=false;d0076.visible:=false;d0086.visible:=false;

      d0011.Visible:=true;d0012.Visible:=true;d0013.Visible:=true;
      d0021.Visible:=false;d0022.Visible:=false;d0023.Visible:=false;
      d0031.Visible:=false;d0032.Visible:=false;d0033.Visible:=false;
      d0041.Visible:=false;d0042.Visible:=false;d0043.Visible:=false;
      d0051.Visible:=false;d0052.Visible:=false;d0053.Visible:=false;
      d0061.Visible:=false;d0062.Visible:=false;d0063.Visible:=false;
      d0071.Visible:=false;d0072.Visible:=false;d0073.Visible:=false;
      d0081.Visible:=false;d0082.Visible:=false;d0083.Visible:=false;
    end else begin
      ppGroupHeaderBand5.Visible:=true;
      ppGroupFooterBand5.Visible:=true;
      ppGroupHeaderBand6.Visible:=false;
      ppGroupFooterBand6.Visible:=false;
      ppGroupHeaderBand7.Visible:=false;
      ppGroupFooterBand7.Visible:=false;
      ppGroupHeaderBand8.Visible:=false;
      ppGroupFooterBand8.Visible:=false;
      ppGroupHeaderBand9.Visible:=false;
      ppGroupFooterBand9.Visible:=false;
      ppGroupHeaderBand12.Visible:=false;
      ppGroupFooterBand12.Visible:=false;
      ppGroupHeaderBand15.Visible:=false;
      ppGroupFooterBand15.Visible:=false;
      ppGroupHeaderBand16.Visible:=false;
      ppGroupFooterBand16.Visible:=false;
      ppGroupHeaderBand17.Visible:=false;
      ppGroupFooterBand17.Visible:=false;

      d1011.Visible:=false;d1012.Visible:=false;d1013.Visible:=false;d1014.Visible:=false;d1016.Visible:=false;d1017.Visible:=false;d1018.Visible:=false;
      d1021.Visible:=false;d1022.Visible:=false;d1023.Visible:=false;d1024.Visible:=false;d1026.Visible:=false;d1027.Visible:=false;d1028.Visible:=false;
      d1031.Visible:=false;d1032.Visible:=false;d1033.Visible:=false;d1034.Visible:=false;d1036.Visible:=false;d1037.Visible:=false;d1038.Visible:=false;
      d1041.Visible:=false;d1042.Visible:=false;d1043.Visible:=false;d1044.Visible:=false;d1046.Visible:=false;d1047.Visible:=false;d1048.Visible:=false;
      d1051.Visible:=false;d1052.Visible:=false;d1053.Visible:=false;d1054.Visible:=false;d1056.Visible:=false;d1057.Visible:=false;d1058.Visible:=false;
      d1061.Visible:=false;d1062.Visible:=false;d1063.Visible:=false;d1064.Visible:=false;d1066.Visible:=false;d1067.Visible:=false;d1068.Visible:=false;
      d1071.Visible:=false;d1072.Visible:=false;d1073.Visible:=false;d1074.Visible:=false;d1076.Visible:=false;d1077.Visible:=false;d1078.Visible:=false;
      d1081.Visible:=false;d1082.Visible:=false;d1083.Visible:=false;d1084.Visible:=false;d1086.Visible:=false;d1087.Visible:=false;d1088.Visible:=false;

      d2011.Visible:=false;d2012.Visible:=false;d2013.Visible:=false;d2014.Visible:=false;d2016.Visible:=false;d2017.Visible:=false;d2018.Visible:=false;
      d2021.Visible:=false;d2022.Visible:=false;d2023.Visible:=false;d2024.Visible:=false;d2026.Visible:=false;d2027.Visible:=false;d2028.Visible:=false;
      d2031.Visible:=false;d2032.Visible:=false;d2033.Visible:=false;d2034.Visible:=false;d2036.Visible:=false;d2037.Visible:=false;d2038.Visible:=false;
      d2041.Visible:=false;d2042.Visible:=false;d2043.Visible:=false;d2044.Visible:=false;d2046.Visible:=false;d2047.Visible:=false;d2048.Visible:=false;
      d2051.Visible:=false;d2052.Visible:=false;d2053.Visible:=false;d2054.Visible:=false;d2056.Visible:=false;d2057.Visible:=false;d2058.Visible:=false;
      d2061.Visible:=false;d2062.Visible:=false;d2063.Visible:=false;d2064.Visible:=false;d2066.Visible:=false;d2067.Visible:=false;d2068.Visible:=false;
      d2071.Visible:=false;d2072.Visible:=false;d2073.Visible:=false;d2074.Visible:=false;d2076.Visible:=false;d2077.Visible:=false;d2078.Visible:=false;
      d2081.Visible:=false;d2082.Visible:=false;d2083.Visible:=false;d2084.Visible:=false;d2086.Visible:=false;d2087.Visible:=false;d2088.Visible:=false;

      d1015.Visible:=false;d1025.Visible:=false;d1035.Visible:=false;d1045.Visible:=false;d1055.Visible:=false;d1065.Visible:=false;d1075.Visible:=false;d1085.Visible:=false;
      d2015.Visible:=false;d2025.Visible:=false;d2035.Visible:=false;d2045.Visible:=false;d2055.Visible:=false;d2065.Visible:=false;d2075.Visible:=false;d2085.Visible:=false;
      d0014.Visible:=false;d0024.Visible:=false;d0034.Visible:=false;d0044.Visible:=false;d0054.Visible:=false;d0064.Visible:=false;d0074.Visible:=false;d0084.Visible:=false;
      d0015.visible:=false;d0025.visible:=false;d0035.visible:=false;d0045.visible:=false;d0055.visible:=false;d0065.visible:=false;d0075.visible:=false;d0085.visible:=false;
      d0016.visible:=false;d0026.visible:=false;d0036.visible:=false;d0046.visible:=false;d0056.visible:=false;d0066.visible:=false;d0076.visible:=false;d0086.visible:=false;

      d0011.Visible:=false;d0012.Visible:=false;d0013.Visible:=false;
      d0021.Visible:=false;d0022.Visible:=false;d0023.Visible:=false;
      d0031.Visible:=false;d0032.Visible:=false;d0033.Visible:=false;
      d0041.Visible:=false;d0042.Visible:=false;d0043.Visible:=false;
      d0051.Visible:=false;d0052.Visible:=false;d0053.Visible:=false;
      d0061.Visible:=false;d0062.Visible:=false;d0063.Visible:=false;
      d0071.Visible:=false;d0072.Visible:=false;d0073.Visible:=false;
      d0081.Visible:=false;d0082.Visible:=false;d0083.Visible:=false;
    end;
  end;
end;

procedure Tfrmpdnactd1.ppGroupHeaderBand5BeforePrint(Sender: TObject);
begin
  rwo001.Caption:='';rwo002.Caption:='';

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_h where seq=:x1 and seq1=:x2 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo001.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query2.fieldbyname('cwo').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo002.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query2.fieldbyname('cwo').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
    end;
  end;
end;

procedure Tfrmpdnactd1.ppGroupHeaderBand6BeforePrint(Sender: TObject);
begin
  rwo201.Caption:='';rwo202.Caption:='';rwo211.Caption:='';rwo212.Caption:='';

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_h where seq=:x1 and seq1=:x2 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo201.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query2.fieldbyname('cwo').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo202.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query2.fieldbyname('cwo').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
    end;
    if not fieldbyname('qn3').isnull then begin
      rwo211.Caption:=fieldbyname('q3line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query2.fieldbyname('cwo').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn3').value;
    end;
    if not fieldbyname('qn4').isnull then begin
      rwo212.Caption:=fieldbyname('q4line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query2.fieldbyname('cwo').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn4').value;
    end;
  end;
end;

procedure Tfrmpdnactd1.ppGroupHeaderBand7BeforePrint(Sender: TObject);
begin
  rwo301.Caption:='';rwo302.Caption:='';rwo311.Caption:='';rwo312.Caption:='';
  rwo321.Caption:='';rwo322.Caption:='';

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_h where seq=:x1 and seq1=:x2 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo301.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query2.fieldbyname('cwo').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo302.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query2.fieldbyname('cwo').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
    end;
    if not fieldbyname('qn3').isnull then begin
      rwo311.Caption:=fieldbyname('q3line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query2.fieldbyname('cwo').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn3').value;
    end;
    if not fieldbyname('qn4').isnull then begin
      rwo312.Caption:=fieldbyname('q4line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query2.fieldbyname('cwo').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn4').value;
    end;
    if not fieldbyname('qn5').isnull then begin
      rwo321.Caption:=fieldbyname('q5line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query2.fieldbyname('cwo').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn5').value;
    end;
    if not fieldbyname('qn6').isnull then begin
      rwo322.Caption:=fieldbyname('q6line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query2.fieldbyname('cwo').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn6').value;
    end;
  end;
end;

procedure Tfrmpdnactd1.ppGroupHeaderBand8BeforePrint(Sender: TObject);
begin
  rwo401.Caption:='';rwo402.Caption:='';rwo411.Caption:='';rwo412.Caption:='';
  rwo421.Caption:='';rwo422.Caption:='';rwo431.Caption:='';rwo432.Caption:='';

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_h where seq=:x1 and seq1=:x2 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo401.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo402.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
    end;
    if not fieldbyname('qn3').isnull then begin
      rwo411.Caption:=fieldbyname('q3line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn3').value;
    end;
    if not fieldbyname('qn4').isnull then begin
      rwo412.Caption:=fieldbyname('q4line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn4').value;
    end;
    if not fieldbyname('qn5').isnull then begin
      rwo421.Caption:=fieldbyname('q5line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn5').value;
    end;
    if not fieldbyname('qn6').isnull then begin
      rwo422.Caption:=fieldbyname('q6line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn6').value;
    end;
    if not fieldbyname('qn7').isnull then begin
      rwo431.Caption:=fieldbyname('q7line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn7').value;
    end;
    if not fieldbyname('qn8').isnull then begin
      rwo432.Caption:=fieldbyname('q8line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn8').value;
    end;
  end;
end;

procedure Tfrmpdnactd1.ppGroupHeaderBand9BeforePrint(Sender: TObject);
begin
  rwo501.Caption:='';rwo502.Caption:='';rwo511.Caption:='';rwo512.Caption:='';
  rwo521.Caption:='';rwo522.Caption:='';rwo531.Caption:='';rwo532.Caption:='';
  rwo541.Caption:='';rwo542.Caption:='';

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_h where seq=:x1 and seq1=:x2 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo501.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo502.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
    end;
    if not fieldbyname('qn3').isnull then begin
      rwo511.Caption:=fieldbyname('q3line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn3').value;
    end;
    if not fieldbyname('qn4').isnull then begin
      rwo512.Caption:=fieldbyname('q4line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn4').value;
    end;
    if not fieldbyname('qn5').isnull then begin
      rwo521.Caption:=fieldbyname('q5line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn5').value;
    end;
    if not fieldbyname('qn6').isnull then begin
      rwo522.Caption:=fieldbyname('q6line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn6').value;
    end;
    if not fieldbyname('qn7').isnull then begin
      rwo531.Caption:=fieldbyname('q7line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn7').value;
    end;
    if not fieldbyname('qn8').isnull then begin
      rwo532.Caption:=fieldbyname('q8line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn8').value;
    end;
    if not fieldbyname('qn9').isnull then begin
      rwo541.Caption:=fieldbyname('q9line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn9').value;
    end;
    if not fieldbyname('qn10').isnull then begin
      rwo542.Caption:=fieldbyname('q10line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn10').value;
    end;
  end;
end;

procedure Tfrmpdnactd1.ppGroupHeaderBand12BeforePrint(Sender: TObject);
begin
  rwo601.Caption:='';rwo602.Caption:='';rwo611.Caption:='';rwo612.Caption:='';
  rwo621.Caption:='';rwo622.Caption:='';rwo631.Caption:='';rwo632.Caption:='';
  rwo641.Caption:='';rwo642.Caption:='';rwo651.Caption:='';rwo652.Caption:='';

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_h where seq=:x1 and seq1=:x2 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo601.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo602.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
    end;
    if not fieldbyname('qn3').isnull then begin
      rwo611.Caption:=fieldbyname('q3line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn3').value;
    end;
    if not fieldbyname('qn4').isnull then begin
      rwo612.Caption:=fieldbyname('q4line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn4').value;
    end;
    if not fieldbyname('qn5').isnull then begin
      rwo621.Caption:=fieldbyname('q5line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn5').value;
    end;
    if not fieldbyname('qn6').isnull then begin
      rwo622.Caption:=fieldbyname('q6line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn6').value;
    end;
    if not fieldbyname('qn7').isnull then begin
      rwo631.Caption:=fieldbyname('q7line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn7').value;
    end;
    if not fieldbyname('qn8').isnull then begin
      rwo632.Caption:=fieldbyname('q8line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn8').value;
    end;
    if not fieldbyname('qn9').isnull then begin
      rwo641.Caption:=fieldbyname('q9line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn9').value;
    end;
    if not fieldbyname('qn10').isnull then begin
      rwo642.Caption:=fieldbyname('q10line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn10').value;
    end;
    if not fieldbyname('qn11').isnull then begin
      rwo651.Caption:=fieldbyname('q11line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn11').value;
    end;
    if not fieldbyname('qn12').isnull then begin
      rwo652.Caption:=fieldbyname('q12line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn12').value;
    end;
  end;
end;

procedure Tfrmpdnactd1.ppGroupHeaderBand15BeforePrint(Sender: TObject);
begin
  rwo701.Caption:='';rwo702.Caption:='';rwo711.Caption:='';rwo712.Caption:='';
  rwo721.Caption:='';rwo722.Caption:='';rwo731.Caption:='';rwo732.Caption:='';
  rwo741.Caption:='';rwo742.Caption:='';rwo751.Caption:='';rwo752.Caption:='';
  rwo761.Caption:='';rwo762.Caption:='';

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_h where seq=:x1 and seq1=:x2 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo701.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo702.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
    end;
    if not fieldbyname('qn3').isnull then begin
      rwo711.Caption:=fieldbyname('q3line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn3').value;
    end;
    if not fieldbyname('qn4').isnull then begin
      rwo712.Caption:=fieldbyname('q4line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn4').value;
    end;
    if not fieldbyname('qn5').isnull then begin
      rwo721.Caption:=fieldbyname('q5line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn5').value;
    end;
    if not fieldbyname('qn6').isnull then begin
      rwo722.Caption:=fieldbyname('q6line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn6').value;
    end;
    if not fieldbyname('qn7').isnull then begin
      rwo731.Caption:=fieldbyname('q7line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn7').value;
    end;
    if not fieldbyname('qn8').isnull then begin
      rwo732.Caption:=fieldbyname('q8line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn8').value;
    end;
    if not fieldbyname('qn9').isnull then begin
      rwo741.Caption:=fieldbyname('q9line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn9').value;
    end;
    if not fieldbyname('qn10').isnull then begin
      rwo742.Caption:=fieldbyname('q10line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn10').value;
    end;
    if not fieldbyname('qn11').isnull then begin
      rwo751.Caption:=fieldbyname('q11line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn11').value;
    end;
    if not fieldbyname('qn12').isnull then begin
      rwo752.Caption:=fieldbyname('q12line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn12').value;
    end;
    if not fieldbyname('qn13').isnull then begin
      rwo761.Caption:=fieldbyname('q13line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn13').value;
    end;
    if not fieldbyname('qn14').isnull then begin
      rwo762.Caption:=fieldbyname('q14line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn14').value;
    end;
  end;
end;

procedure Tfrmpdnactd1.ppGroupHeaderBand16BeforePrint(Sender: TObject);
begin
  rwo801.Caption:='';rwo802.Caption:='';rwo811.Caption:='';rwo812.Caption:='';
  rwo821.Caption:='';rwo822.Caption:='';rwo831.Caption:='';rwo832.Caption:='';
  rwo841.Caption:='';rwo842.Caption:='';rwo851.Caption:='';rwo852.Caption:='';
  rwo861.Caption:='';rwo862.Caption:='';rwo871.Caption:='';rwo872.Caption:='';

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_h where seq=:x1 and seq1=:x2 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo801.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo802.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
    end;
    if not fieldbyname('qn3').isnull then begin
      rwo811.Caption:=fieldbyname('q3line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn3').value;
    end;
    if not fieldbyname('qn4').isnull then begin
      rwo812.Caption:=fieldbyname('q4line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn4').value;
    end;
    if not fieldbyname('qn5').isnull then begin
      rwo821.Caption:=fieldbyname('q5line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn5').value;
    end;
    if not fieldbyname('qn6').isnull then begin
      rwo822.Caption:=fieldbyname('q6line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn6').value;
    end;
    if not fieldbyname('qn7').isnull then begin
      rwo831.Caption:=fieldbyname('q7line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn7').value;
    end;
    if not fieldbyname('qn8').isnull then begin
      rwo832.Caption:=fieldbyname('q8line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn8').value;
    end;
    if not fieldbyname('qn9').isnull then begin
      rwo841.Caption:=fieldbyname('q9line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn9').value;
    end;
    if not fieldbyname('qn10').isnull then begin
      rwo842.Caption:=fieldbyname('q10line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn10').value;
    end;
    if not fieldbyname('qn11').isnull then begin
      rwo851.Caption:=fieldbyname('q11line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn11').value;
    end;
    if not fieldbyname('qn12').isnull then begin
      rwo852.Caption:=fieldbyname('q12line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn12').value;
    end;
    if not fieldbyname('qn13').isnull then begin
      rwo861.Caption:=fieldbyname('q13line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn13').value;
    end;
    if not fieldbyname('qn14').isnull then begin
      rwo862.Caption:=fieldbyname('q14line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn14').value;
    end;
    if not fieldbyname('qn15').isnull then begin
      rwo871.Caption:=fieldbyname('q15line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn15').value;
    end;
    if not fieldbyname('qn16').isnull then begin
      rwo872.Caption:=fieldbyname('q16line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn16').value;
    end;
  end;
end;

procedure Tfrmpdnactd1.ppGroupHeaderBand17BeforePrint(Sender: TObject);
begin
  rwo901.Caption:='';rwo902.Caption:='';rwo911.Caption:='';rwo912.Caption:='';
  rwo921.Caption:='';rwo922.Caption:='';rwo931.Caption:='';rwo932.Caption:='';
  rwo941.Caption:='';rwo942.Caption:='';rwo951.Caption:='';rwo952.Caption:='';
  rwo961.Caption:='';rwo962.Caption:='';rwo971.Caption:='';rwo972.Caption:='';
  rwo981.Caption:='';rwo982.Caption:='';

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_h where seq=:x1 and seq1=:x2 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo901.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo902.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
    end;
    if not fieldbyname('qn3').isnull then begin
      rwo911.Caption:=fieldbyname('q3line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn3').value;
    end;
    if not fieldbyname('qn4').isnull then begin
      rwo912.Caption:=fieldbyname('q4line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn4').value;
    end;
    if not fieldbyname('qn5').isnull then begin
      rwo921.Caption:=fieldbyname('q5line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn5').value;
    end;
    if not fieldbyname('qn6').isnull then begin
      rwo922.Caption:=fieldbyname('q6line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn6').value;
    end;
    if not fieldbyname('qn7').isnull then begin
      rwo931.Caption:=fieldbyname('q7line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn7').value;
    end;
    if not fieldbyname('qn8').isnull then begin
      rwo932.Caption:=fieldbyname('q8line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn8').value;
    end;
    if not fieldbyname('qn9').isnull then begin
      rwo941.Caption:=fieldbyname('q9line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn9').value;
    end;
    if not fieldbyname('qn10').isnull then begin
      rwo942.Caption:=fieldbyname('q10line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn10').value;
    end;
    if not fieldbyname('qn11').isnull then begin
      rwo951.Caption:=fieldbyname('q11line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn11').value;
    end;
    if not fieldbyname('qn12').isnull then begin
      rwo952.Caption:=fieldbyname('q12line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn12').value;
    end;
    if not fieldbyname('qn13').isnull then begin
      rwo961.Caption:=fieldbyname('q13line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn13').value;
    end;
    if not fieldbyname('qn14').isnull then begin
      rwo962.Caption:=fieldbyname('q14line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn14').value;
    end;
    if not fieldbyname('qn15').isnull then begin
      rwo971.Caption:=fieldbyname('q15line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn15').value;
    end;
    if not fieldbyname('qn16').isnull then begin
      rwo972.Caption:=fieldbyname('q16line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn16').value;
    end;
    if not fieldbyname('qn17').isnull then begin
      rwo981.Caption:=fieldbyname('q17line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn17').value;
    end;
    if not fieldbyname('qn18').isnull then begin
      rwo982.Caption:=fieldbyname('q18line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn18').value;
    end;
  end;
end;

procedure Tfrmpdnactd1.ppGroupHeaderBand18BeforePrint(Sender: TObject);
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
    if not fieldbyname('extm').isnull then extm002.Caption:=formatdatetime('hh:nn',fieldbyname('extm').value) else extm002.Caption:='';
  end;
end;

procedure Tfrmpdnactd1.ppGroupFooterBand17BeforePrint(Sender: TObject);
begin
  b1271.Visible:=false;b1272.Visible:=false;b1273.Visible:=false;b1274.Visible:=false;b1276.Visible:=false;b1277.Visible:=false;b1278.Visible:=false;
  b2271.Visible:=false;b2272.Visible:=false;b2273.Visible:=false;b2274.Visible:=false;b2276.Visible:=false;b2277.Visible:=false;b2278.Visible:=false;

  b1281.Visible:=false;b1282.Visible:=false;b1283.Visible:=false;b1284.Visible:=false;b1286.Visible:=false;b1287.Visible:=false;b1288.Visible:=false;
  b2281.Visible:=false;b2282.Visible:=false;b2283.Visible:=false;b2284.Visible:=false;b2286.Visible:=false;b2287.Visible:=false;b2288.Visible:=false;

  b1291.Visible:=false;b1292.Visible:=false;b1293.Visible:=false;b1294.Visible:=false;b1296.Visible:=false;b1297.Visible:=false;b1298.Visible:=false;
  b2291.Visible:=false;b2292.Visible:=false;b2293.Visible:=false;b2294.Visible:=false;b2296.Visible:=false;b2297.Visible:=false;b2298.Visible:=false;

  b1301.Visible:=false;b1302.Visible:=false;b1303.Visible:=false;b1304.Visible:=false;b1306.Visible:=false;b1307.Visible:=false;b1308.Visible:=false;
  b2301.Visible:=false;b2302.Visible:=false;b2303.Visible:=false;b2304.Visible:=false;b2306.Visible:=false;b2307.Visible:=false;b2308.Visible:=false;

  b1311.Visible:=false;b1312.Visible:=false;b1313.Visible:=false;b1314.Visible:=false;b1316.Visible:=false;b1317.Visible:=false;b1318.Visible:=false;
  b2311.Visible:=false;b2312.Visible:=false;b2313.Visible:=false;b2314.Visible:=false;b2316.Visible:=false;b2317.Visible:=false;b2318.Visible:=false;

  b1321.Visible:=false;b1322.Visible:=false;b1323.Visible:=false;b1324.Visible:=false;b1326.Visible:=false;b1327.Visible:=false;b1328.Visible:=false;
  b2321.Visible:=false;b2322.Visible:=false;b2323.Visible:=false;b2324.Visible:=false;b2326.Visible:=false;b2327.Visible:=false;b2328.Visible:=false;

  b1331.Visible:=false;b1332.Visible:=false;b1333.Visible:=false;b1334.Visible:=false;b1336.Visible:=false;b1337.Visible:=false;b1338.Visible:=false;
  b2331.Visible:=false;b2332.Visible:=false;b2333.Visible:=false;b2334.Visible:=false;b2336.Visible:=false;b2337.Visible:=false;b2338.Visible:=false;

  b1341.Visible:=false;b1342.Visible:=false;b1343.Visible:=false;b1344.Visible:=false;b1346.Visible:=false;b1347.Visible:=false;b1348.Visible:=false;
  b2341.Visible:=false;b2342.Visible:=false;b2343.Visible:=false;b2344.Visible:=false;b2346.Visible:=false;b2347.Visible:=false;b2348.Visible:=false;

  if rwo801.Caption>'' then begin
    b1271.Visible:=true;b1272.Visible:=true;b1273.Visible:=true;b1274.Visible:=true;b1276.Visible:=true;b1277.Visible:=true;b1278.Visible:=true;
  end;
  if rwo802.Caption>'' then begin
    b2271.Visible:=true;b2272.Visible:=true;b2273.Visible:=true;b2274.Visible:=true;b2276.Visible:=true;b2277.Visible:=true;b2278.Visible:=true;
  end;
  if rwo811.Caption>'' then begin
    b1281.Visible:=true;b1282.Visible:=true;b1283.Visible:=true;b1284.Visible:=true;b1286.Visible:=true;b1287.Visible:=true;b1288.Visible:=true;
  end;
  if rwo812.Caption>'' then begin
    b2281.Visible:=true;b2282.Visible:=true;b2283.Visible:=true;b2284.Visible:=true;b2286.Visible:=true;b2287.Visible:=true;b2288.Visible:=true;
  end;
  if rwo821.Caption>'' then begin
    b1291.Visible:=true;b1292.Visible:=true;b1293.Visible:=true;b1294.Visible:=true;b1296.Visible:=true;b1297.Visible:=true;b1298.Visible:=true;
  end;
  if rwo822.Caption>'' then begin
    b2291.Visible:=true;b2292.Visible:=true;b2293.Visible:=true;b2294.Visible:=true;b2296.Visible:=true;b2297.Visible:=true;b2298.Visible:=true;
  end;
  if rwo831.Caption>'' then begin
    b1301.Visible:=true;b1302.Visible:=true;b1303.Visible:=true;b1304.Visible:=true;b1306.Visible:=true;b1307.Visible:=true;b1308.Visible:=true;
  end;
  if rwo832.Caption>'' then begin
    b2301.Visible:=true;b2302.Visible:=true;b2303.Visible:=true;b2304.Visible:=true;b2306.Visible:=true;b2307.Visible:=true;b2308.Visible:=true;
  end;
  if rwo841.Caption>'' then begin
    b1311.Visible:=true;b1312.Visible:=true;b1313.Visible:=true;b1314.Visible:=true;b1316.Visible:=true;b1317.Visible:=true;b1318.Visible:=true;
  end;
  if rwo842.Caption>'' then begin
    b2311.Visible:=true;b2312.Visible:=true;b2313.Visible:=true;b2314.Visible:=true;b2316.Visible:=true;b2317.Visible:=true;b2318.Visible:=true;
  end;
  if rwo851.Caption>'' then begin
    b1321.Visible:=true;b1322.Visible:=true;b1323.Visible:=true;b1324.Visible:=true;b1326.Visible:=true;b1327.Visible:=true;b1328.Visible:=true;
  end;
  if rwo852.Caption>'' then begin
    b2321.Visible:=true;b2322.Visible:=true;b2323.Visible:=true;b2324.Visible:=true;b2326.Visible:=true;b2327.Visible:=true;b2328.Visible:=true;
  end;
  if rwo861.Caption>'' then begin
    b1331.Visible:=true;b1332.Visible:=true;b1333.Visible:=true;b1334.Visible:=true;b1336.Visible:=true;b1337.Visible:=true;b1338.Visible:=true;
  end;
  if rwo862.Caption>'' then begin
    b2331.Visible:=true;b2332.Visible:=true;b2333.Visible:=true;b2334.Visible:=true;b2336.Visible:=true;b2337.Visible:=true;b2338.Visible:=true;
  end;
  if rwo871.Caption>'' then begin
    b1341.Visible:=true;b1342.Visible:=true;b1343.Visible:=true;b1344.Visible:=true;b1346.Visible:=true;b1347.Visible:=true;b1348.Visible:=true;
  end;
  if rwo872.Caption>'' then begin
    b2341.Visible:=true;b2342.Visible:=true;b2343.Visible:=true;b2344.Visible:=true;b2346.Visible:=true;b2347.Visible:=true;b2348.Visible:=true;
  end;

  //QN 1
  if b1272.Value>b1273.Value then b1273.Font.Color:=clRed
  else if b1272.Value=b1273.Value then b1273.Font.Color:=clBlack else b1273.Font.Color:=clGreen;
  if b1273.Value>b1274.Value then b1274.Font.Color:=clRed
  else if b1273.Value=b1274.Value then b1274.Font.Color:=clBlack else b1274.Font.Color:=clGreen;
  if b1274.Value>b1276.Value then b1276.Font.Color:=clRed
  else if b1274.Value=b1276.Value then b1276.Font.Color:=clBlack else b1276.Font.Color:=clGreen;
  if b1276.Value>b1277.Value then b1277.Font.Color:=clRed
  else if b1276.Value=b1277.Value then b1277.Font.Color:=clBlack else b1277.Font.Color:=clGreen;
  if b1277.Value>b1278.Value then b1278.Font.Color:=clRed
  else if b1277.Value=b1278.Value then b1278.Font.Color:=clBlack else b1278.Font.Color:=clGreen;

  //QN 2
  if b2272.Value>b2273.Value then b2273.Font.Color:=clRed
  else if b2272.Value=b2273.Value then b2273.Font.Color:=clBlack else b2273.Font.Color:=clGreen;
  if b2273.Value>b2274.Value then b2274.Font.Color:=clRed
  else if b2273.Value=b2274.Value then b2274.Font.Color:=clBlack else b2274.Font.Color:=clGreen;
  if b2274.Value>b2276.Value then b2276.Font.Color:=clRed
  else if b2274.Value=b2276.Value then b2276.Font.Color:=clBlack else b2276.Font.Color:=clGreen;
  if b2276.Value>b2277.Value then b2277.Font.Color:=clRed
  else if b2276.Value=b2277.Value then b2277.Font.Color:=clBlack else b2277.Font.Color:=clGreen;
  if b2277.Value>b2278.Value then b2278.Font.Color:=clRed
  else if b2277.Value=b2278.Value then b2278.Font.Color:=clBlack else b2278.Font.Color:=clGreen;

  //QN 3
  if b1282.Value>b1283.Value then b1283.Font.Color:=clRed
  else if b1282.Value=b1283.Value then b1283.Font.Color:=clBlack else b1283.Font.Color:=clGreen;
  if b1283.Value>b1284.Value then b1284.Font.Color:=clRed
  else if b1283.Value=b1284.Value then b1284.Font.Color:=clBlack else b1284.Font.Color:=clGreen;
  if b1284.Value>b1286.Value then b1286.Font.Color:=clRed
  else if b1284.Value=b1286.Value then b1286.Font.Color:=clBlack else b1286.Font.Color:=clGreen;
  if b1286.Value>b1287.Value then b1287.Font.Color:=clRed
  else if b1286.Value=b1287.Value then b1287.Font.Color:=clBlack else b1287.Font.Color:=clGreen;
  if b1287.Value>b1288.Value then b1288.Font.Color:=clRed
  else if b1287.Value=b1288.Value then b1288.Font.Color:=clBlack else b1288.Font.Color:=clGreen;

  //QN 4
  if b2282.Value>b2283.Value then b2283.Font.Color:=clRed
  else if b2282.Value=b2283.Value then b2283.Font.Color:=clBlack else b2283.Font.Color:=clGreen;
  if b2283.Value>b2284.Value then b2284.Font.Color:=clRed
  else if b2283.Value=b2284.Value then b2284.Font.Color:=clBlack else b2284.Font.Color:=clGreen;
  if b2284.Value>b2286.Value then b2286.Font.Color:=clRed
  else if b2284.Value=b2286.Value then b2286.Font.Color:=clBlack else b2286.Font.Color:=clGreen;
  if b2286.Value>b2287.Value then b2287.Font.Color:=clRed
  else if b2286.Value=b2287.Value then b2287.Font.Color:=clBlack else b2287.Font.Color:=clGreen;
  if b2287.Value>b2288.Value then b2288.Font.Color:=clRed
  else if b2287.Value=b2288.Value then b2288.Font.Color:=clBlack else b2288.Font.Color:=clGreen;

  //QN 5
  if b1292.Value>b1293.Value then b1293.Font.Color:=clRed
  else if b1292.Value=b1293.Value then b1293.Font.Color:=clBlack else b1293.Font.Color:=clGreen;
  if b1293.Value>b1294.Value then b1294.Font.Color:=clRed
  else if b1293.Value=b1294.Value then b1294.Font.Color:=clBlack else b1294.Font.Color:=clGreen;
  if b1294.Value>b1296.Value then b1296.Font.Color:=clRed
  else if b1294.Value=b1296.Value then b1296.Font.Color:=clBlack else b1296.Font.Color:=clGreen;
  if b1296.Value>b1297.Value then b1297.Font.Color:=clRed
  else if b1296.Value=b1297.Value then b1297.Font.Color:=clBlack else b1297.Font.Color:=clGreen;
  if b1297.Value>b1298.Value then b1298.Font.Color:=clRed
  else if b1297.Value=b1298.Value then b1298.Font.Color:=clBlack else b1298.Font.Color:=clGreen;

  //QN 6
  if b2292.Value>b2293.Value then b2293.Font.Color:=clRed
  else if b2292.Value=b2293.Value then b2293.Font.Color:=clBlack else b2293.Font.Color:=clGreen;
  if b2293.Value>b2294.Value then b2294.Font.Color:=clRed
  else if b2293.Value=b2294.Value then b2294.Font.Color:=clBlack else b2294.Font.Color:=clGreen;
  if b2294.Value>b2296.Value then b2296.Font.Color:=clRed
  else if b2294.Value=b2296.Value then b2296.Font.Color:=clBlack else b2296.Font.Color:=clGreen;
  if b2296.Value>b2297.Value then b2297.Font.Color:=clRed
  else if b2296.Value=b2297.Value then b2297.Font.Color:=clBlack else b2297.Font.Color:=clGreen;
  if b2297.Value>b2298.Value then b2298.Font.Color:=clRed
  else if b2297.Value=b2298.Value then b2298.Font.Color:=clBlack else b2298.Font.Color:=clGreen;

  //QN 7
  if b1302.Value>b1303.Value then b1303.Font.Color:=clRed
  else if b1302.Value=b1303.Value then b1303.Font.Color:=clBlack else b1303.Font.Color:=clGreen;
  if b1303.Value>b1304.Value then b1304.Font.Color:=clRed
  else if b1303.Value=b1304.Value then b1304.Font.Color:=clBlack else b1304.Font.Color:=clGreen;
  if b1304.Value>b1306.Value then b1306.Font.Color:=clRed
  else if b1304.Value=b1306.Value then b1306.Font.Color:=clBlack else b1306.Font.Color:=clGreen;
  if b1306.Value>b1307.Value then b1307.Font.Color:=clRed
  else if b1306.Value=b1307.Value then b1307.Font.Color:=clBlack else b1307.Font.Color:=clGreen;
  if b1307.Value>b1308.Value then b1308.Font.Color:=clRed
  else if b1307.Value=b1308.Value then b1308.Font.Color:=clBlack else b1308.Font.Color:=clGreen;

  //QN 8
  if b2302.Value>b2303.Value then b2303.Font.Color:=clRed
  else if b2302.Value=b2303.Value then b2303.Font.Color:=clBlack else b2303.Font.Color:=clGreen;
  if b2303.Value>b2304.Value then b2304.Font.Color:=clRed
  else if b2303.Value=b2304.Value then b2304.Font.Color:=clBlack else b2304.Font.Color:=clGreen;
  if b2304.Value>b2306.Value then b2306.Font.Color:=clRed
  else if b2304.Value=b2306.Value then b2306.Font.Color:=clBlack else b2306.Font.Color:=clGreen;
  if b2306.Value>b2307.Value then b2307.Font.Color:=clRed
  else if b2306.Value=b2307.Value then b2307.Font.Color:=clBlack else b2307.Font.Color:=clGreen;
  if b2307.Value>b2308.Value then b2308.Font.Color:=clRed
  else if b2307.Value=b2308.Value then b2308.Font.Color:=clBlack else b2308.Font.Color:=clGreen;

  //QN 9
  if b1312.Value>b1313.Value then b1313.Font.Color:=clRed
  else if b1312.Value=b1313.Value then b1313.Font.Color:=clBlack else b1313.Font.Color:=clGreen;
  if b1313.Value>b1314.Value then b1314.Font.Color:=clRed
  else if b1313.Value=b1314.Value then b1314.Font.Color:=clBlack else b1314.Font.Color:=clGreen;
  if b1314.Value>b1316.Value then b1316.Font.Color:=clRed
  else if b1314.Value=b1316.Value then b1316.Font.Color:=clBlack else b1316.Font.Color:=clGreen;
  if b1316.Value>b1317.Value then b1317.Font.Color:=clRed
  else if b1316.Value=b1317.Value then b1317.Font.Color:=clBlack else b1317.Font.Color:=clGreen;
  if b1317.Value>b1318.Value then b1318.Font.Color:=clRed
  else if b1317.Value=b1318.Value then b1318.Font.Color:=clBlack else b1318.Font.Color:=clGreen;

  //QN 10
  if b2312.Value>b2313.Value then b2313.Font.Color:=clRed
  else if b2312.Value=b2313.Value then b2313.Font.Color:=clBlack else b2313.Font.Color:=clGreen;
  if b2313.Value>b2314.Value then b2314.Font.Color:=clRed
  else if b2313.Value=b2314.Value then b2314.Font.Color:=clBlack else b2314.Font.Color:=clGreen;
  if b2314.Value>b2316.Value then b2316.Font.Color:=clRed
  else if b2314.Value=b2316.Value then b2316.Font.Color:=clBlack else b2316.Font.Color:=clGreen;
  if b2316.Value>b2317.Value then b2317.Font.Color:=clRed
  else if b2316.Value=b2317.Value then b2317.Font.Color:=clBlack else b2317.Font.Color:=clGreen;
  if b2317.Value>b2318.Value then b2318.Font.Color:=clRed
  else if b2317.Value=b2318.Value then b2318.Font.Color:=clBlack else b2318.Font.Color:=clGreen;

  //QN 11
  if b1322.Value>b1323.Value then b1323.Font.Color:=clRed
  else if b1322.Value=b1323.Value then b1323.Font.Color:=clBlack else b1323.Font.Color:=clGreen;
  if b1323.Value>b1324.Value then b1324.Font.Color:=clRed
  else if b1323.Value=b1324.Value then b1324.Font.Color:=clBlack else b1324.Font.Color:=clGreen;
  if b1324.Value>b1326.Value then b1326.Font.Color:=clRed
  else if b1324.Value=b1326.Value then b1326.Font.Color:=clBlack else b1326.Font.Color:=clGreen;
  if b1326.Value>b1327.Value then b1327.Font.Color:=clRed
  else if b1326.Value=b1327.Value then b1327.Font.Color:=clBlack else b1327.Font.Color:=clGreen;
  if b1327.Value>b1328.Value then b1328.Font.Color:=clRed
  else if b1327.Value=b1328.Value then b1328.Font.Color:=clBlack else b1328.Font.Color:=clGreen;

  //QN 12
  if b2322.Value>b2323.Value then b2323.Font.Color:=clRed
  else if b2322.Value=b2323.Value then b2323.Font.Color:=clBlack else b2323.Font.Color:=clGreen;
  if b2323.Value>b2324.Value then b2324.Font.Color:=clRed
  else if b2323.Value=b2324.Value then b2324.Font.Color:=clBlack else b2324.Font.Color:=clGreen;
  if b2324.Value>b2326.Value then b2326.Font.Color:=clRed
  else if b2324.Value=b2326.Value then b2326.Font.Color:=clBlack else b2326.Font.Color:=clGreen;
  if b2326.Value>b2327.Value then b2327.Font.Color:=clRed
  else if b2326.Value=b2327.Value then b2327.Font.Color:=clBlack else b2327.Font.Color:=clGreen;
  if b2327.Value>b2328.Value then b2328.Font.Color:=clRed
  else if b2327.Value=b2328.Value then b2328.Font.Color:=clBlack else b2328.Font.Color:=clGreen;

  //QN 13
  if b1332.Value>b1333.Value then b1333.Font.Color:=clRed
  else if b1332.Value=b1333.Value then b1333.Font.Color:=clBlack else b1333.Font.Color:=clGreen;
  if b1333.Value>b1334.Value then b1334.Font.Color:=clRed
  else if b1333.Value=b1334.Value then b1334.Font.Color:=clBlack else b1334.Font.Color:=clGreen;
  if b1334.Value>b1336.Value then b1336.Font.Color:=clRed
  else if b1334.Value=b1336.Value then b1336.Font.Color:=clBlack else b1336.Font.Color:=clGreen;
  if b1336.Value>b1337.Value then b1337.Font.Color:=clRed
  else if b1336.Value=b1337.Value then b1337.Font.Color:=clBlack else b1337.Font.Color:=clGreen;
  if b1337.Value>b1338.Value then b1338.Font.Color:=clRed
  else if b1337.Value=b1338.Value then b1338.Font.Color:=clBlack else b1338.Font.Color:=clGreen;

  //QN 14
  if b2332.Value>b2333.Value then b2333.Font.Color:=clRed
  else if b2332.Value=b2333.Value then b2333.Font.Color:=clBlack else b2333.Font.Color:=clGreen;
  if b2333.Value>b2334.Value then b2334.Font.Color:=clRed
  else if b2333.Value=b2334.Value then b2334.Font.Color:=clBlack else b2334.Font.Color:=clGreen;
  if b2334.Value>b2336.Value then b2336.Font.Color:=clRed
  else if b2334.Value=b2336.Value then b2336.Font.Color:=clBlack else b2336.Font.Color:=clGreen;
  if b2336.Value>b2337.Value then b2337.Font.Color:=clRed
  else if b2336.Value=b2337.Value then b2337.Font.Color:=clBlack else b2337.Font.Color:=clGreen;
  if b2337.Value>b2338.Value then b2338.Font.Color:=clRed
  else if b2337.Value=b2338.Value then b2338.Font.Color:=clBlack else b2338.Font.Color:=clGreen;

  //QN 15
  if b1342.Value>b1343.Value then b1343.Font.Color:=clRed
  else if b1342.Value=b1343.Value then b1343.Font.Color:=clBlack else b1343.Font.Color:=clGreen;
  if b1343.Value>b1344.Value then b1344.Font.Color:=clRed
  else if b1343.Value=b1344.Value then b1344.Font.Color:=clBlack else b1344.Font.Color:=clGreen;
  if b1344.Value>b1346.Value then b1346.Font.Color:=clRed
  else if b1344.Value=b1346.Value then b1346.Font.Color:=clBlack else b1346.Font.Color:=clGreen;
  if b1346.Value>b1347.Value then b1347.Font.Color:=clRed
  else if b1346.Value=b1347.Value then b1347.Font.Color:=clBlack else b1347.Font.Color:=clGreen;
  if b1347.Value>b1348.Value then b1348.Font.Color:=clRed
  else if b1347.Value=b1348.Value then b1348.Font.Color:=clBlack else b1348.Font.Color:=clGreen;

  //QN 16
  if b2342.Value>b2343.Value then b2343.Font.Color:=clRed
  else if b2342.Value=b2343.Value then b2343.Font.Color:=clBlack else b2343.Font.Color:=clGreen;
  if b2343.Value>b2344.Value then b2344.Font.Color:=clRed
  else if b2343.Value=b2344.Value then b2344.Font.Color:=clBlack else b2344.Font.Color:=clGreen;
  if b2344.Value>b2346.Value then b2346.Font.Color:=clRed
  else if b2344.Value=b2346.Value then b2346.Font.Color:=clBlack else b2346.Font.Color:=clGreen;
  if b2346.Value>b2347.Value then b2347.Font.Color:=clRed
  else if b2346.Value=b2347.Value then b2347.Font.Color:=clBlack else b2347.Font.Color:=clGreen;
  if b2347.Value>b2348.Value then b2348.Font.Color:=clRed
  else if b2347.Value=b2348.Value then b2348.Font.Color:=clBlack else b2348.Font.Color:=clGreen;

  //QN 17
  if b1342.Value>b1343.Value then b1343.Font.Color:=clRed
  else if b1342.Value=b1343.Value then b1343.Font.Color:=clBlack else b1343.Font.Color:=clGreen;
  if b1343.Value>b1344.Value then b1344.Font.Color:=clRed
  else if b1343.Value=b1344.Value then b1344.Font.Color:=clBlack else b1344.Font.Color:=clGreen;
  if b1344.Value>b1346.Value then b1346.Font.Color:=clRed
  else if b1344.Value=b1346.Value then b1346.Font.Color:=clBlack else b1346.Font.Color:=clGreen;
  if b1346.Value>b1347.Value then b1347.Font.Color:=clRed
  else if b1346.Value=b1347.Value then b1347.Font.Color:=clBlack else b1347.Font.Color:=clGreen;
  if b1347.Value>b1348.Value then b1348.Font.Color:=clRed
  else if b1347.Value=b1348.Value then b1348.Font.Color:=clBlack else b1348.Font.Color:=clGreen;

  //QN 18
  if b2342.Value>b2343.Value then b2343.Font.Color:=clRed
  else if b2342.Value=b2343.Value then b2343.Font.Color:=clBlack else b2343.Font.Color:=clGreen;
  if b2343.Value>b2344.Value then b2344.Font.Color:=clRed
  else if b2343.Value=b2344.Value then b2344.Font.Color:=clBlack else b2344.Font.Color:=clGreen;
  if b2344.Value>b2346.Value then b2346.Font.Color:=clRed
  else if b2344.Value=b2346.Value then b2346.Font.Color:=clBlack else b2346.Font.Color:=clGreen;
  if b2346.Value>b2347.Value then b2347.Font.Color:=clRed
  else if b2346.Value=b2347.Value then b2347.Font.Color:=clBlack else b2347.Font.Color:=clGreen;
  if b2347.Value>b2348.Value then b2348.Font.Color:=clRed
  else if b2347.Value=b2348.Value then b2348.Font.Color:=clBlack else b2348.Font.Color:=clGreen;

  bs8101.Caption:=b1211.Value+b1221.Value+b1231.Value+ba241.Value+b1241.Value+b1251.Value+b1261.Value;
  bs8102.Caption:=b1212.Value+b1222.Value+b1232.Value+ba242.Value+b1242.Value+b1252.Value+b1262.Value;
  bs8103.Caption:=b1213.value+b1223.value+b1233.value+ba243.value+b1243.value+b1253.value+b1263.Value;
  bs8104.Caption:=b1214.value+b1224.value+b1234.value+ba244.value+b1244.value+b1254.value+b1264.Value;
  bs8106.Caption:=b1216.value+b1226.value+b1236.value+ba246.value+b1246.value+b1256.value+b1266.Value;
  bs8107.Caption:=b1217.value+b1227.value+b1237.value+ba247.value+b1247.value+b1257.value+b1267.Value;
  bs8108.Caption:=b1218.value+b1228.value+b1238.value+ba248.value+b1248.value+b1258.value+b1268.Value;

  bs8201.Caption:=b2211.Value+b2221.Value+b2231.Value+bb241.Value+b2241.Value+b2251.Value+b2261.Value;
  bs8202.Caption:=b2212.Value+b2222.Value+b2232.Value+bb242.Value+b2242.Value+b2252.Value+b2262.Value;
  bs8203.Caption:=b2213.value+b2223.value+b2233.value+bb243.value+b2243.value+b2253.value+b2263.Value;
  bs8204.Caption:=b2214.value+b2224.value+b2234.value+bb244.value+b2244.value+b2254.value+b2264.Value;
  bs8206.Caption:=b2216.value+b2226.value+b2236.value+bb246.value+b2246.value+b2256.value+b2266.Value;
  bs8207.Caption:=b2217.value+b2227.value+b2237.value+bb247.value+b2247.value+b2257.value+b2267.Value;
  bs8208.Caption:=b2218.value+b2228.value+b2238.value+bb248.value+b2248.value+b2258.value+b2268.Value;

  if bs8102.caption>bs8103.Caption then bs8103.Font.Color:=clRed
  else if bs8102.Caption=bs8103.Caption then bs8103.Font.Color:=clBlack else bs8103.Font.Color:=clGreen;
  if bs8103.caption>bs8104.Caption then bs8104.Font.Color:=clRed
  else if bs8103.Caption=bs8104.Caption then bs8104.Font.Color:=clBlack else bs8104.Font.Color:=clGreen;
  if bs8104.caption>bs8106.Caption then bs8106.Font.Color:=clRed
  else if bs8104.Caption=bs8106.Caption then bs8106.Font.Color:=clBlack else bs8106.Font.Color:=clGreen;
  if bs8106.caption>bs8107.Caption then bs8107.Font.Color:=clRed
  else if bs8106.Caption=bs8107.Caption then bs8107.Font.Color:=clBlack else bs8107.Font.Color:=clGreen;
  if bs8107.caption>bs8108.Caption then bs8108.Font.Color:=clRed
  else if bs8107.Caption=bs8108.Caption then bs8108.Font.Color:=clBlack else bs8108.Font.Color:=clGreen;

  if bs8202.caption>bs8203.Caption then bs8203.Font.Color:=clRed
  else if bs8202.Caption=bs8203.Caption then bs8203.Font.Color:=clBlack else bs8203.Font.Color:=clGreen;
  if bs8203.caption>bs8204.Caption then bs8204.Font.Color:=clRed
  else if bs8203.Caption=bs8204.Caption then bs8204.Font.Color:=clBlack else bs8204.Font.Color:=clGreen;
  if bs8204.caption>bs8206.Caption then bs8206.Font.Color:=clRed
  else if bs8204.Caption=bs8206.Caption then bs8206.Font.Color:=clBlack else bs8206.Font.Color:=clGreen;
  if bs8206.caption>bs8207.Caption then bs8207.Font.Color:=clRed
  else if bs8206.Caption=bs8207.Caption then bs8207.Font.Color:=clBlack else bs8207.Font.Color:=clGreen;
  if bs8207.caption>bs8208.Caption then bs8208.Font.Color:=clRed
  else if bs8207.Caption=bs8208.Caption then bs8208.Font.Color:=clBlack else bs8208.Font.Color:=clGreen;

  if bd009.Value<0 then begin
    bd009.Font.Color:=clRed;
    bp009.Font.Color:=clRed;
  end else if bd009.Value=0 then begin
    bd009.Font.Color:=clBlack;
    bp009.Font.Color:=clBlack;
  end else begin
    bd009.Font.Color:=clGreen;
    bp009.Font.Color:=clBlack;
  end;
  if bq009.Value>0 then
  bp009.Caption:='('+formatfloat('0.0%',bd009.Value*100.0/bq009.Value)+')'
  else bp009.Caption:='(0.0%)';
end;

procedure Tfrmpdnactd1.ppGroupFooterBand16BeforePrint(Sender: TObject);
begin
  b1271.Visible:=false;b1272.Visible:=false;b1273.Visible:=false;b1274.Visible:=false;b1276.Visible:=false;b1277.Visible:=false;b1278.Visible:=false;
  b2271.Visible:=false;b2272.Visible:=false;b2273.Visible:=false;b2274.Visible:=false;b2276.Visible:=false;b2277.Visible:=false;b2278.Visible:=false;
  b1275.Visible:=false;b2275.Visible:=false;
  b1281.Visible:=false;b1282.Visible:=false;b1283.Visible:=false;b1284.Visible:=false;b1286.Visible:=false;b1287.Visible:=false;b1288.Visible:=false;
  b2281.Visible:=false;b2282.Visible:=false;b2283.Visible:=false;b2284.Visible:=false;b2286.Visible:=false;b2287.Visible:=false;b2288.Visible:=false;
  b1285.Visible:=false;b2285.Visible:=false;

  b1291.Visible:=false;b1292.Visible:=false;b1293.Visible:=false;b1294.Visible:=false;b1296.Visible:=false;b1297.Visible:=false;b1298.Visible:=false;
  b2291.Visible:=false;b2292.Visible:=false;b2293.Visible:=false;b2294.Visible:=false;b2296.Visible:=false;b2297.Visible:=false;b2298.Visible:=false;
  b1295.Visible:=false;b2295.Visible:=false;

  b1301.Visible:=false;b1302.Visible:=false;b1303.Visible:=false;b1304.Visible:=false;b1306.Visible:=false;b1307.Visible:=false;b1308.Visible:=false;
  b2301.Visible:=false;b2302.Visible:=false;b2303.Visible:=false;b2304.Visible:=false;b2306.Visible:=false;b2307.Visible:=false;b2308.Visible:=false;
  b1305.Visible:=false;b2305.Visible:=false;

  b1311.Visible:=false;b1312.Visible:=false;b1313.Visible:=false;b1314.Visible:=false;b1316.Visible:=false;b1317.Visible:=false;b1318.Visible:=false;
  b2311.Visible:=false;b2312.Visible:=false;b2313.Visible:=false;b2314.Visible:=false;b2316.Visible:=false;b2317.Visible:=false;b2318.Visible:=false;
  b1315.Visible:=false;b2315.Visible:=false;

  b1321.Visible:=false;b1322.Visible:=false;b1323.Visible:=false;b1324.Visible:=false;b1326.Visible:=false;b1327.Visible:=false;b1328.Visible:=false;
  b2321.Visible:=false;b2322.Visible:=false;b2323.Visible:=false;b2324.Visible:=false;b2326.Visible:=false;b2327.Visible:=false;b2328.Visible:=false;
  b1325.Visible:=false;b2325.Visible:=false;

  b1331.Visible:=false;b1332.Visible:=false;b1333.Visible:=false;b1334.Visible:=false;b1336.Visible:=false;b1337.Visible:=false;b1338.Visible:=false;
  b2331.Visible:=false;b2332.Visible:=false;b2333.Visible:=false;b2334.Visible:=false;b2336.Visible:=false;b2337.Visible:=false;b2338.Visible:=false;
  b1335.Visible:=false;b2335.Visible:=false;

  b1341.Visible:=false;b1342.Visible:=false;b1343.Visible:=false;b1344.Visible:=false;b1346.Visible:=false;b1347.Visible:=false;b1348.Visible:=false;
  b2341.Visible:=false;b2342.Visible:=false;b2343.Visible:=false;b2344.Visible:=false;b2346.Visible:=false;b2347.Visible:=false;b2348.Visible:=false;
  b1345.Visible:=false;b2345.Visible:=false;

  if rwo801.Caption>'' then begin
    b1271.Visible:=true;b1272.Visible:=true;b1273.Visible:=true;b1274.Visible:=true;b1276.Visible:=true;b1277.Visible:=true;b1278.Visible:=true;
    b1275.Visible:=true;
  end;
  if rwo802.Caption>'' then begin
    b2271.Visible:=true;b2272.Visible:=true;b2273.Visible:=true;b2274.Visible:=true;b2276.Visible:=true;b2277.Visible:=true;b2278.Visible:=true;
    b2275.Visible:=true;
  end;
  if rwo811.Caption>'' then begin
    b1281.Visible:=true;b1282.Visible:=true;b1283.Visible:=true;b1284.Visible:=true;b1286.Visible:=true;b1287.Visible:=true;b1288.Visible:=true;
    b1285.Visible:=true;
  end;
  if rwo812.Caption>'' then begin
    b2281.Visible:=true;b2282.Visible:=true;b2283.Visible:=true;b2284.Visible:=true;b2286.Visible:=true;b2287.Visible:=true;b2288.Visible:=true;
    b2285.Visible:=true;
  end;
  if rwo821.Caption>'' then begin
    b1291.Visible:=true;b1292.Visible:=true;b1293.Visible:=true;b1294.Visible:=true;b1296.Visible:=true;b1297.Visible:=true;b1298.Visible:=true;
    b1295.Visible:=true;
  end;
  if rwo822.Caption>'' then begin
    b2291.Visible:=true;b2292.Visible:=true;b2293.Visible:=true;b2294.Visible:=true;b2296.Visible:=true;b2297.Visible:=true;b2298.Visible:=true;
    b2295.Visible:=true;
  end;
  if rwo831.Caption>'' then begin
    b1301.Visible:=true;b1302.Visible:=true;b1303.Visible:=true;b1304.Visible:=true;b1306.Visible:=true;b1307.Visible:=true;b1308.Visible:=true;
    b1305.Visible:=true;
  end;
  if rwo832.Caption>'' then begin
    b2301.Visible:=true;b2302.Visible:=true;b2303.Visible:=true;b2304.Visible:=true;b2306.Visible:=true;b2307.Visible:=true;b2308.Visible:=true;
    b2305.Visible:=true;
  end;
  if rwo841.Caption>'' then begin
    b1311.Visible:=true;b1312.Visible:=true;b1313.Visible:=true;b1314.Visible:=true;b1316.Visible:=true;b1317.Visible:=true;b1318.Visible:=true;
    b1315.Visible:=true;
  end;
  if rwo842.Caption>'' then begin
    b2311.Visible:=true;b2312.Visible:=true;b2313.Visible:=true;b2314.Visible:=true;b2316.Visible:=true;b2317.Visible:=true;b2318.Visible:=true;
    b2315.Visible:=true;
  end;
  if rwo851.Caption>'' then begin
    b1321.Visible:=true;b1322.Visible:=true;b1323.Visible:=true;b1324.Visible:=true;b1326.Visible:=true;b1327.Visible:=true;b1328.Visible:=true;
    b1325.Visible:=true;
  end;
  if rwo852.Caption>'' then begin
    b2321.Visible:=true;b2322.Visible:=true;b2323.Visible:=true;b2324.Visible:=true;b2326.Visible:=true;b2327.Visible:=true;b2328.Visible:=true;
    b2325.Visible:=true;
  end;
  if rwo861.Caption>'' then begin
    b1331.Visible:=true;b1332.Visible:=true;b1333.Visible:=true;b1334.Visible:=true;b1336.Visible:=true;b1337.Visible:=true;b1338.Visible:=true;
    b1335.Visible:=true;
  end;
  if rwo862.Caption>'' then begin
    b2331.Visible:=true;b2332.Visible:=true;b2333.Visible:=true;b2334.Visible:=true;b2336.Visible:=true;b2337.Visible:=true;b2338.Visible:=true;
    b2335.Visible:=true;
  end;
  if rwo871.Caption>'' then begin
    b1341.Visible:=true;b1342.Visible:=true;b1343.Visible:=true;b1344.Visible:=true;b1346.Visible:=true;b1347.Visible:=true;b1348.Visible:=true;
    b1345.Visible:=true;
  end;
  if rwo872.Caption>'' then begin
    b2341.Visible:=true;b2342.Visible:=true;b2343.Visible:=true;b2344.Visible:=true;b2346.Visible:=true;b2347.Visible:=true;b2348.Visible:=true;
    b2345.Visible:=true;
  end;

  //QN 1
  if b1272.Value>b1275.Value then b1275.Font.Color:=clRed
  else if b1272.Value=b1275.Value then b1275.Font.Color:=clBlack else b1275.Font.Color:=clGreen;
  if b1275.Value>b1273.Value then b1273.Font.Color:=clRed
  else if b1275.Value=b1273.Value then b1273.Font.Color:=clBlack else b1273.Font.Color:=clGreen;
  if b1273.Value>b1274.Value then b1274.Font.Color:=clRed
  else if b1273.Value=b1274.Value then b1274.Font.Color:=clBlack else b1274.Font.Color:=clGreen;
  if b1274.Value>b1276.Value then b1276.Font.Color:=clRed
  else if b1274.Value=b1276.Value then b1276.Font.Color:=clBlack else b1276.Font.Color:=clGreen;
  if b1276.Value>b1277.Value then b1277.Font.Color:=clRed
  else if b1276.Value=b1277.Value then b1277.Font.Color:=clBlack else b1277.Font.Color:=clGreen;
  if b1277.Value>b1278.Value then b1278.Font.Color:=clRed
  else if b1277.Value=b1278.Value then b1278.Font.Color:=clBlack else b1278.Font.Color:=clGreen;

  //QN 2
  if b2272.Value>b2275.Value then b2275.Font.Color:=clRed
  else if b2272.Value=b2275.Value then b2275.Font.Color:=clBlack else b2275.Font.Color:=clGreen;
  if b2275.Value>b2273.Value then b2273.Font.Color:=clRed
  else if b2275.Value=b2273.Value then b2273.Font.Color:=clBlack else b2273.Font.Color:=clGreen;
  if b2273.Value>b2274.Value then b2274.Font.Color:=clRed
  else if b2273.Value=b2274.Value then b2274.Font.Color:=clBlack else b2274.Font.Color:=clGreen;
  if b2274.Value>b2276.Value then b2276.Font.Color:=clRed
  else if b2274.Value=b2276.Value then b2276.Font.Color:=clBlack else b2276.Font.Color:=clGreen;
  if b2276.Value>b2277.Value then b2277.Font.Color:=clRed
  else if b2276.Value=b2277.Value then b2277.Font.Color:=clBlack else b2277.Font.Color:=clGreen;
  if b2277.Value>b2278.Value then b2278.Font.Color:=clRed
  else if b2277.Value=b2278.Value then b2278.Font.Color:=clBlack else b2278.Font.Color:=clGreen;

  //QN 3
  if b1282.Value>b1285.Value then b1285.Font.Color:=clRed
  else if b1282.Value=b1285.Value then b1285.Font.Color:=clBlack else b1285.Font.Color:=clGreen;
  if b1285.Value>b1283.Value then b1283.Font.Color:=clRed
  else if b1285.Value=b1283.Value then b1283.Font.Color:=clBlack else b1283.Font.Color:=clGreen;
  if b1283.Value>b1284.Value then b1284.Font.Color:=clRed
  else if b1283.Value=b1284.Value then b1284.Font.Color:=clBlack else b1284.Font.Color:=clGreen;
  if b1284.Value>b1286.Value then b1286.Font.Color:=clRed
  else if b1284.Value=b1286.Value then b1286.Font.Color:=clBlack else b1286.Font.Color:=clGreen;
  if b1286.Value>b1287.Value then b1287.Font.Color:=clRed
  else if b1286.Value=b1287.Value then b1287.Font.Color:=clBlack else b1287.Font.Color:=clGreen;
  if b1287.Value>b1288.Value then b1288.Font.Color:=clRed
  else if b1287.Value=b1288.Value then b1288.Font.Color:=clBlack else b1288.Font.Color:=clGreen;

  //QN 4
  if b2282.Value>b2285.Value then b2285.Font.Color:=clRed
  else if b2282.Value=b2285.Value then b2285.Font.Color:=clBlack else b2285.Font.Color:=clGreen;
  if b2285.Value>b2283.Value then b2283.Font.Color:=clRed
  else if b2285.Value=b2283.Value then b2283.Font.Color:=clBlack else b2283.Font.Color:=clGreen;
  if b2283.Value>b2284.Value then b2284.Font.Color:=clRed
  else if b2283.Value=b2284.Value then b2284.Font.Color:=clBlack else b2284.Font.Color:=clGreen;
  if b2284.Value>b2286.Value then b2286.Font.Color:=clRed
  else if b2284.Value=b2286.Value then b2286.Font.Color:=clBlack else b2286.Font.Color:=clGreen;
  if b2286.Value>b2287.Value then b2287.Font.Color:=clRed
  else if b2286.Value=b2287.Value then b2287.Font.Color:=clBlack else b2287.Font.Color:=clGreen;
  if b2287.Value>b2288.Value then b2288.Font.Color:=clRed
  else if b2287.Value=b2288.Value then b2288.Font.Color:=clBlack else b2288.Font.Color:=clGreen;

  //QN 5
  if b1292.Value>b1295.Value then b1295.Font.Color:=clRed
  else if b1292.Value=b1295.Value then b1295.Font.Color:=clBlack else b1295.Font.Color:=clGreen;
  if b1295.Value>b1293.Value then b1293.Font.Color:=clRed
  else if b1295.Value=b1293.Value then b1293.Font.Color:=clBlack else b1293.Font.Color:=clGreen;
  if b1293.Value>b1294.Value then b1294.Font.Color:=clRed
  else if b1293.Value=b1294.Value then b1294.Font.Color:=clBlack else b1294.Font.Color:=clGreen;
  if b1294.Value>b1296.Value then b1296.Font.Color:=clRed
  else if b1294.Value=b1296.Value then b1296.Font.Color:=clBlack else b1296.Font.Color:=clGreen;
  if b1296.Value>b1297.Value then b1297.Font.Color:=clRed
  else if b1296.Value=b1297.Value then b1297.Font.Color:=clBlack else b1297.Font.Color:=clGreen;
  if b1297.Value>b1298.Value then b1298.Font.Color:=clRed
  else if b1297.Value=b1298.Value then b1298.Font.Color:=clBlack else b1298.Font.Color:=clGreen;

  //QN 6
  if b2292.Value>b2295.Value then b2295.Font.Color:=clRed
  else if b2292.Value=b2295.Value then b2295.Font.Color:=clBlack else b2295.Font.Color:=clGreen;
  if b2295.Value>b2293.Value then b2293.Font.Color:=clRed
  else if b2295.Value=b2293.Value then b2293.Font.Color:=clBlack else b2293.Font.Color:=clGreen;
  if b2293.Value>b2294.Value then b2294.Font.Color:=clRed
  else if b2293.Value=b2294.Value then b2294.Font.Color:=clBlack else b2294.Font.Color:=clGreen;
  if b2294.Value>b2296.Value then b2296.Font.Color:=clRed
  else if b2294.Value=b2296.Value then b2296.Font.Color:=clBlack else b2296.Font.Color:=clGreen;
  if b2296.Value>b2297.Value then b2297.Font.Color:=clRed
  else if b2296.Value=b2297.Value then b2297.Font.Color:=clBlack else b2297.Font.Color:=clGreen;
  if b2297.Value>b2298.Value then b2298.Font.Color:=clRed
  else if b2297.Value=b2298.Value then b2298.Font.Color:=clBlack else b2298.Font.Color:=clGreen;

  //QN 7
  if b1302.Value>b1305.Value then b1305.Font.Color:=clRed
  else if b1302.Value=b1305.Value then b1305.Font.Color:=clBlack else b1305.Font.Color:=clGreen;
  if b1305.Value>b1303.Value then b1303.Font.Color:=clRed
  else if b1305.Value=b1303.Value then b1303.Font.Color:=clBlack else b1303.Font.Color:=clGreen;
  if b1303.Value>b1304.Value then b1304.Font.Color:=clRed
  else if b1303.Value=b1304.Value then b1304.Font.Color:=clBlack else b1304.Font.Color:=clGreen;
  if b1304.Value>b1306.Value then b1306.Font.Color:=clRed
  else if b1304.Value=b1306.Value then b1306.Font.Color:=clBlack else b1306.Font.Color:=clGreen;
  if b1306.Value>b1307.Value then b1307.Font.Color:=clRed
  else if b1306.Value=b1307.Value then b1307.Font.Color:=clBlack else b1307.Font.Color:=clGreen;
  if b1307.Value>b1308.Value then b1308.Font.Color:=clRed
  else if b1307.Value=b1308.Value then b1308.Font.Color:=clBlack else b1308.Font.Color:=clGreen;

  //QN 8
  if b2302.Value>b2305.Value then b2305.Font.Color:=clRed
  else if b2302.Value=b2305.Value then b2305.Font.Color:=clBlack else b2305.Font.Color:=clGreen;
  if b2305.Value>b2303.Value then b2303.Font.Color:=clRed
  else if b2305.Value=b2303.Value then b2303.Font.Color:=clBlack else b2303.Font.Color:=clGreen;
  if b2303.Value>b2304.Value then b2304.Font.Color:=clRed
  else if b2303.Value=b2304.Value then b2304.Font.Color:=clBlack else b2304.Font.Color:=clGreen;
  if b2304.Value>b2306.Value then b2306.Font.Color:=clRed
  else if b2304.Value=b2306.Value then b2306.Font.Color:=clBlack else b2306.Font.Color:=clGreen;
  if b2306.Value>b2307.Value then b2307.Font.Color:=clRed
  else if b2306.Value=b2307.Value then b2307.Font.Color:=clBlack else b2307.Font.Color:=clGreen;
  if b2307.Value>b2308.Value then b2308.Font.Color:=clRed
  else if b2307.Value=b2308.Value then b2308.Font.Color:=clBlack else b2308.Font.Color:=clGreen;

  //QN 9
  if b1312.Value>b1315.Value then b1315.Font.Color:=clRed
  else if b1312.Value=b1315.Value then b1315.Font.Color:=clBlack else b1315.Font.Color:=clGreen;
  if b1315.Value>b1313.Value then b1313.Font.Color:=clRed
  else if b1315.Value=b1313.Value then b1313.Font.Color:=clBlack else b1313.Font.Color:=clGreen;
  if b1313.Value>b1314.Value then b1314.Font.Color:=clRed
  else if b1313.Value=b1314.Value then b1314.Font.Color:=clBlack else b1314.Font.Color:=clGreen;
  if b1314.Value>b1316.Value then b1316.Font.Color:=clRed
  else if b1314.Value=b1316.Value then b1316.Font.Color:=clBlack else b1316.Font.Color:=clGreen;
  if b1316.Value>b1317.Value then b1317.Font.Color:=clRed
  else if b1316.Value=b1317.Value then b1317.Font.Color:=clBlack else b1317.Font.Color:=clGreen;
  if b1317.Value>b1318.Value then b1318.Font.Color:=clRed
  else if b1317.Value=b1318.Value then b1318.Font.Color:=clBlack else b1318.Font.Color:=clGreen;

  //QN 10
  if b2312.Value>b2315.Value then b2315.Font.Color:=clRed
  else if b2312.Value=b2315.Value then b2315.Font.Color:=clBlack else b2315.Font.Color:=clGreen;
  if b2315.Value>b2313.Value then b2313.Font.Color:=clRed
  else if b2315.Value=b2313.Value then b2313.Font.Color:=clBlack else b2313.Font.Color:=clGreen;
  if b2313.Value>b2314.Value then b2314.Font.Color:=clRed
  else if b2313.Value=b2314.Value then b2314.Font.Color:=clBlack else b2314.Font.Color:=clGreen;
  if b2314.Value>b2316.Value then b2316.Font.Color:=clRed
  else if b2314.Value=b2316.Value then b2316.Font.Color:=clBlack else b2316.Font.Color:=clGreen;
  if b2316.Value>b2317.Value then b2317.Font.Color:=clRed
  else if b2316.Value=b2317.Value then b2317.Font.Color:=clBlack else b2317.Font.Color:=clGreen;
  if b2317.Value>b2318.Value then b2318.Font.Color:=clRed
  else if b2317.Value=b2318.Value then b2318.Font.Color:=clBlack else b2318.Font.Color:=clGreen;

  //QN 11
  if b1322.Value>b1325.Value then b1325.Font.Color:=clRed
  else if b1322.Value=b1325.Value then b1325.Font.Color:=clBlack else b1325.Font.Color:=clGreen;
  if b1325.Value>b1323.Value then b1323.Font.Color:=clRed
  else if b1325.Value=b1323.Value then b1323.Font.Color:=clBlack else b1323.Font.Color:=clGreen;
  if b1323.Value>b1324.Value then b1324.Font.Color:=clRed
  else if b1323.Value=b1324.Value then b1324.Font.Color:=clBlack else b1324.Font.Color:=clGreen;
  if b1324.Value>b1326.Value then b1326.Font.Color:=clRed
  else if b1324.Value=b1326.Value then b1326.Font.Color:=clBlack else b1326.Font.Color:=clGreen;
  if b1326.Value>b1327.Value then b1327.Font.Color:=clRed
  else if b1326.Value=b1327.Value then b1327.Font.Color:=clBlack else b1327.Font.Color:=clGreen;
  if b1327.Value>b1328.Value then b1328.Font.Color:=clRed
  else if b1327.Value=b1328.Value then b1328.Font.Color:=clBlack else b1328.Font.Color:=clGreen;

  //QN 12
  if b2322.Value>b2325.Value then b2325.Font.Color:=clRed
  else if b2322.Value=b2325.Value then b2325.Font.Color:=clBlack else b2325.Font.Color:=clGreen;
  if b2325.Value>b2323.Value then b2323.Font.Color:=clRed
  else if b2325.Value=b2323.Value then b2323.Font.Color:=clBlack else b2323.Font.Color:=clGreen;
  if b2323.Value>b2324.Value then b2324.Font.Color:=clRed
  else if b2323.Value=b2324.Value then b2324.Font.Color:=clBlack else b2324.Font.Color:=clGreen;
  if b2324.Value>b2326.Value then b2326.Font.Color:=clRed
  else if b2324.Value=b2326.Value then b2326.Font.Color:=clBlack else b2326.Font.Color:=clGreen;
  if b2326.Value>b2327.Value then b2327.Font.Color:=clRed
  else if b2326.Value=b2327.Value then b2327.Font.Color:=clBlack else b2327.Font.Color:=clGreen;
  if b2327.Value>b2328.Value then b2328.Font.Color:=clRed
  else if b2327.Value=b2328.Value then b2328.Font.Color:=clBlack else b2328.Font.Color:=clGreen;

  //QN 13
  if b1332.Value>b1335.Value then b1335.Font.Color:=clRed
  else if b1332.Value=b1335.Value then b1335.Font.Color:=clBlack else b1335.Font.Color:=clGreen;
  if b1335.Value>b1333.Value then b1333.Font.Color:=clRed
  else if b1335.Value=b1333.Value then b1333.Font.Color:=clBlack else b1333.Font.Color:=clGreen;
  if b1333.Value>b1334.Value then b1334.Font.Color:=clRed
  else if b1333.Value=b1334.Value then b1334.Font.Color:=clBlack else b1334.Font.Color:=clGreen;
  if b1334.Value>b1336.Value then b1336.Font.Color:=clRed
  else if b1334.Value=b1336.Value then b1336.Font.Color:=clBlack else b1336.Font.Color:=clGreen;
  if b1336.Value>b1337.Value then b1337.Font.Color:=clRed
  else if b1336.Value=b1337.Value then b1337.Font.Color:=clBlack else b1337.Font.Color:=clGreen;
  if b1337.Value>b1338.Value then b1338.Font.Color:=clRed
  else if b1337.Value=b1338.Value then b1338.Font.Color:=clBlack else b1338.Font.Color:=clGreen;

  //QN 14
  if b2332.Value>b2335.Value then b2335.Font.Color:=clRed
  else if b2332.Value=b2335.Value then b2335.Font.Color:=clBlack else b2335.Font.Color:=clGreen;
  if b2335.Value>b2333.Value then b2333.Font.Color:=clRed
  else if b2335.Value=b2333.Value then b2333.Font.Color:=clBlack else b2333.Font.Color:=clGreen;
  if b2333.Value>b2334.Value then b2334.Font.Color:=clRed
  else if b2333.Value=b2334.Value then b2334.Font.Color:=clBlack else b2334.Font.Color:=clGreen;
  if b2334.Value>b2336.Value then b2336.Font.Color:=clRed
  else if b2334.Value=b2336.Value then b2336.Font.Color:=clBlack else b2336.Font.Color:=clGreen;
  if b2336.Value>b2337.Value then b2337.Font.Color:=clRed
  else if b2336.Value=b2337.Value then b2337.Font.Color:=clBlack else b2337.Font.Color:=clGreen;
  if b2337.Value>b2338.Value then b2338.Font.Color:=clRed
  else if b2337.Value=b2338.Value then b2338.Font.Color:=clBlack else b2338.Font.Color:=clGreen;

  //QN 15
  if b1342.Value>b1345.Value then b1345.Font.Color:=clRed
  else if b1342.Value=b1345.Value then b1345.Font.Color:=clBlack else b1345.Font.Color:=clGreen;
  if b1345.Value>b1343.Value then b1343.Font.Color:=clRed
  else if b1345.Value=b1343.Value then b1343.Font.Color:=clBlack else b1343.Font.Color:=clGreen;
  if b1343.Value>b1344.Value then b1344.Font.Color:=clRed
  else if b1343.Value=b1344.Value then b1344.Font.Color:=clBlack else b1344.Font.Color:=clGreen;
  if b1344.Value>b1346.Value then b1346.Font.Color:=clRed
  else if b1344.Value=b1346.Value then b1346.Font.Color:=clBlack else b1346.Font.Color:=clGreen;
  if b1346.Value>b1347.Value then b1347.Font.Color:=clRed
  else if b1346.Value=b1347.Value then b1347.Font.Color:=clBlack else b1347.Font.Color:=clGreen;
  if b1347.Value>b1348.Value then b1348.Font.Color:=clRed
  else if b1347.Value=b1348.Value then b1348.Font.Color:=clBlack else b1348.Font.Color:=clGreen;

  //QN 16
  if b2342.Value>b2345.Value then b2345.Font.Color:=clRed
  else if b2342.Value=b2345.Value then b2345.Font.Color:=clBlack else b2345.Font.Color:=clGreen;
  if b2345.Value>b2343.Value then b2343.Font.Color:=clRed
  else if b2345.Value=b2343.Value then b2343.Font.Color:=clBlack else b2343.Font.Color:=clGreen;
  if b2343.Value>b2344.Value then b2344.Font.Color:=clRed
  else if b2343.Value=b2344.Value then b2344.Font.Color:=clBlack else b2344.Font.Color:=clGreen;
  if b2344.Value>b2346.Value then b2346.Font.Color:=clRed
  else if b2344.Value=b2346.Value then b2346.Font.Color:=clBlack else b2346.Font.Color:=clGreen;
  if b2346.Value>b2347.Value then b2347.Font.Color:=clRed
  else if b2346.Value=b2347.Value then b2347.Font.Color:=clBlack else b2347.Font.Color:=clGreen;
  if b2347.Value>b2348.Value then b2348.Font.Color:=clRed
  else if b2347.Value=b2348.Value then b2348.Font.Color:=clBlack else b2348.Font.Color:=clGreen;

  bs7101.Caption:=b1271.Value+b1281.Value+b1291.Value+b1301.Value+b1311.Value+b1321.Value+b1331.Value+b1341.Value;
  bs7102.Caption:=b1272.Value+b1282.Value+b1292.Value+b1302.Value+b1312.Value+b1322.Value+b1332.Value+b1342.Value;
  bs7103.Caption:=b1273.value+b1283.value+b1293.value+b1303.value+b1313.value+b1323.value+b1333.Value+b1343.Value;
  bs7104.Caption:=b1274.value+b1284.value+b1294.value+b1304.value+b1314.value+b1324.value+b1334.Value+b1344.Value;
  bs7105.Caption:=b1275.value+b1285.value+b1295.value+b1305.value+b1315.value+b1325.value+b1335.Value+b1345.Value;
  bs7106.Caption:=b1276.value+b1286.value+b1296.value+b1306.value+b1316.value+b1326.value+b1336.Value+b1346.Value;
  bs7107.Caption:=b1277.value+b1287.value+b1297.value+b1307.value+b1317.value+b1327.value+b1337.Value+b1347.Value;
  bs7108.Caption:=b1278.value+b1288.value+b1298.value+b1308.value+b1318.value+b1328.value+b1338.Value+b1348.Value;

  bs7201.Caption:=b2271.Value+b2287.Value+b2291.Value+b2301.Value+b2311.Value+b2321.Value+b2331.Value+b2341.Value;
  bs7202.Caption:=b2272.Value+b2282.Value+b2292.Value+b2302.Value+b2312.Value+b2322.Value+b2332.Value+b2342.Value;
  bs7203.Caption:=b2273.value+b2283.value+b2293.value+b2303.value+b2313.value+b2323.value+b2333.Value+b2343.Value;
  bs7204.Caption:=b2274.value+b2284.value+b2294.value+b2304.value+b2314.value+b2324.value+b2334.Value+b2344.Value;
  bs7205.Caption:=b2275.value+b2285.value+b2295.value+b2305.value+b2315.value+b2325.value+b2335.Value+b2345.Value;
  bs7206.Caption:=b2276.value+b2286.value+b2296.value+b2306.value+b2316.value+b2326.value+b2336.Value+b2346.Value;
  bs7207.Caption:=b2277.value+b2287.value+b2297.value+b2307.value+b2317.value+b2327.value+b2337.Value+b2347.Value;
  bs7208.Caption:=b2278.value+b2288.value+b2298.value+b2308.value+b2318.value+b2328.value+b2338.Value+b2348.Value;
  bs0064.Caption:=b1278.value+b1288.value+b1298.value+b1308.value+b1318.value+b1328.value+b1338.Value+b1348.Value+b2278.value+b2288.value+b2298.value+b2308.value+b2318.value+b2328.value+b2338.Value+b2348.Value;

  if bs7102.caption>bs7105.Caption then bs7105.Font.Color:=clRed
  else if bs7102.Caption=bs7105.Caption then bs7105.Font.Color:=clBlack else bs7105.Font.Color:=clGreen;
  if bs7105.caption>bs7103.Caption then bs7103.Font.Color:=clRed
  else if bs7105.Caption=bs7103.Caption then bs7103.Font.Color:=clBlack else bs7103.Font.Color:=clGreen;
  if bs7103.caption>bs7104.Caption then bs7104.Font.Color:=clRed
  else if bs7103.Caption=bs7104.Caption then bs7104.Font.Color:=clBlack else bs7104.Font.Color:=clGreen;
  if bs7104.caption>bs7106.Caption then bs7106.Font.Color:=clRed
  else if bs7104.Caption=bs7106.Caption then bs7106.Font.Color:=clBlack else bs7106.Font.Color:=clGreen;
  if bs7106.caption>bs7107.Caption then bs7107.Font.Color:=clRed
  else if bs7106.Caption=bs7107.Caption then bs7107.Font.Color:=clBlack else bs7107.Font.Color:=clGreen;
  if bs7107.caption>bs7108.Caption then bs7108.Font.Color:=clRed
  else if bs7107.Caption=bs7108.Caption then bs7108.Font.Color:=clBlack else bs7108.Font.Color:=clGreen;

  if bs7202.caption>bs7205.Caption then bs7205.Font.Color:=clRed
  else if bs7202.Caption=bs7205.Caption then bs7205.Font.Color:=clBlack else bs7205.Font.Color:=clGreen;
  if bs7205.caption>bs7203.Caption then bs7203.Font.Color:=clRed
  else if bs7205.Caption=bs7203.Caption then bs7203.Font.Color:=clBlack else bs7203.Font.Color:=clGreen;
  if bs7203.caption>bs7204.Caption then bs7204.Font.Color:=clRed
  else if bs7203.Caption=bs7204.Caption then bs7204.Font.Color:=clBlack else bs7204.Font.Color:=clGreen;
  if bs7204.caption>bs7206.Caption then bs7206.Font.Color:=clRed
  else if bs7204.Caption=bs7206.Caption then bs7206.Font.Color:=clBlack else bs7206.Font.Color:=clGreen;
  if bs7206.caption>bs7207.Caption then bs7207.Font.Color:=clRed
  else if bs7206.Caption=bs7207.Caption then bs7207.Font.Color:=clBlack else bs7207.Font.Color:=clGreen;
  if bs7207.caption>bs7208.Caption then bs7208.Font.Color:=clRed
  else if bs7207.Caption=bs7208.Caption then bs7208.Font.Color:=clBlack else bs7208.Font.Color:=clGreen;

  if bd008.Value<0 then begin
    bd008.Font.Color:=clRed;
    bp008.Font.Color:=clRed;
  end else if bd008.Value=0 then begin
    bd008.Font.Color:=clBlack;
    bp008.Font.Color:=clBlack;
  end else begin
    bd008.Font.Color:=clGreen;
    bp008.Font.Color:=clBlack;
  end;
  if bq008.Value>0 then
  bp008.Caption:='('+formatfloat('0.0%',bd008.Value*100.0/bq008.Value)+')'
  else bp008.Caption:='(0.0%)';
end;

procedure Tfrmpdnactd1.ppGroupFooterBand15BeforePrint(Sender: TObject);
begin
  b1211.Visible:=false;b1212.Visible:=false;b1213.Visible:=false;b1214.Visible:=false;b1216.Visible:=false;b1217.Visible:=false;b1218.Visible:=false;
  b2211.Visible:=false;b2212.Visible:=false;b2213.Visible:=false;b2214.Visible:=false;b2216.Visible:=false;b2217.Visible:=false;b2218.Visible:=false;
  b1215.Visible:=false;b2215.Visible:=false;
  b1221.Visible:=false;b1222.Visible:=false;b1223.Visible:=false;b1224.Visible:=false;b1226.Visible:=false;b1227.Visible:=false;b1228.Visible:=false;
  b2221.Visible:=false;b2222.Visible:=false;b2223.Visible:=false;b2224.Visible:=false;b2226.Visible:=false;b2227.Visible:=false;b2228.Visible:=false;
  b1225.Visible:=false;b2225.Visible:=false;

  b1231.Visible:=false;b1232.Visible:=false;b1233.Visible:=false;b1234.Visible:=false;b1236.Visible:=false;b1237.Visible:=false;b1238.Visible:=false;
  b2231.Visible:=false;b2232.Visible:=false;b2233.Visible:=false;b2234.Visible:=false;b2236.Visible:=false;b2237.Visible:=false;b2238.Visible:=false;
  b1235.Visible:=false;b2235.Visible:=false;

  ba241.Visible:=false;ba242.Visible:=false;ba243.Visible:=false;ba244.Visible:=false;ba246.Visible:=false;ba247.Visible:=false;ba248.Visible:=false;
  bb241.Visible:=false;bb242.Visible:=false;bb243.Visible:=false;bb244.Visible:=false;bb246.Visible:=false;bb247.Visible:=false;bb248.Visible:=false;
  ba245.Visible:=false;bb245.Visible:=false;

  b1241.Visible:=false;b1242.Visible:=false;b1243.Visible:=false;b1244.Visible:=false;b1246.Visible:=false;b1247.Visible:=false;b1248.Visible:=false;
  b2241.Visible:=false;b2242.Visible:=false;b2243.Visible:=false;b2244.Visible:=false;b2246.Visible:=false;b2247.Visible:=false;b2248.Visible:=false;
  b1245.Visible:=false;b2245.Visible:=false;

  b1251.Visible:=false;b1252.Visible:=false;b1253.Visible:=false;b1254.Visible:=false;b1256.Visible:=false;b1257.Visible:=false;b1258.Visible:=false;
  b2251.Visible:=false;b2252.Visible:=false;b2253.Visible:=false;b2254.Visible:=false;b2256.Visible:=false;b2257.Visible:=false;b2258.Visible:=false;
  b1255.Visible:=false;b2255.Visible:=false;

  b1261.Visible:=false;b1262.Visible:=false;b1263.Visible:=false;b1264.Visible:=false;b1266.Visible:=false;b1267.Visible:=false;b1268.Visible:=false;
  b2261.Visible:=false;b2262.Visible:=false;b2263.Visible:=false;b2264.Visible:=false;b2266.Visible:=false;b2267.Visible:=false;b2268.Visible:=false;
  b1265.Visible:=false;b2265.Visible:=false;

  if rwo701.Caption>'' then begin
    b1211.Visible:=true;b1212.Visible:=true;b1213.Visible:=true;b1214.Visible:=true;b1216.Visible:=true;b1217.Visible:=true;b1218.Visible:=true;
    b1215.Visible:=true;
  end;
  if rwo702.Caption>'' then begin
    b2211.Visible:=true;b2212.Visible:=true;b2213.Visible:=true;b2214.Visible:=true;b2216.Visible:=true;b2217.Visible:=true;b2218.Visible:=true;
    b2215.Visible:=true;
  end;
  if rwo711.Caption>'' then begin
    b1221.Visible:=true;b1222.Visible:=true;b1223.Visible:=true;b1224.Visible:=true;b1226.Visible:=true;b1227.Visible:=true;b1228.Visible:=true;
    b1225.Visible:=true;
  end;
  if rwo712.Caption>'' then begin
    b2221.Visible:=true;b2222.Visible:=true;b2223.Visible:=true;b2224.Visible:=true;b2226.Visible:=true;b2227.Visible:=true;b2228.Visible:=true;
    b2225.Visible:=true;
  end;
  if rwo721.Caption>'' then begin
    b1231.Visible:=true;b1232.Visible:=true;b1233.Visible:=true;b1234.Visible:=true;b1236.Visible:=true;b1237.Visible:=true;b1238.Visible:=true;
    b1235.Visible:=true;
  end;
  if rwo722.Caption>'' then begin
    b2231.Visible:=true;b2232.Visible:=true;b2233.Visible:=true;b2234.Visible:=true;b2236.Visible:=true;b2237.Visible:=true;b2238.Visible:=true;
    b2235.Visible:=true;
  end;
  if rwo731.Caption>'' then begin
    ba241.Visible:=true;ba242.Visible:=true;ba243.Visible:=true;ba244.Visible:=true;ba246.Visible:=true;ba247.Visible:=true;ba248.Visible:=true;
    ba245.Visible:=true;
  end;
  if rwo732.Caption>'' then begin
    bb241.Visible:=true;bb242.Visible:=true;bb243.Visible:=true;bb244.Visible:=true;bb246.Visible:=true;bb247.Visible:=true;bb248.Visible:=true;
    bb245.Visible:=true;
  end;
  if rwo741.Caption>'' then begin
    b1241.Visible:=true;b1242.Visible:=true;b1243.Visible:=true;b1244.Visible:=true;b1246.Visible:=true;b1247.Visible:=true;b1248.Visible:=true;
    b1245.Visible:=true;
  end;
  if rwo742.Caption>'' then begin
    b2241.Visible:=true;b2242.Visible:=true;b2243.Visible:=true;b2244.Visible:=true;b2246.Visible:=true;b2247.Visible:=true;b2248.Visible:=true;
    b2245.Visible:=true;
  end;
  if rwo751.Caption>'' then begin
    b1251.Visible:=true;b1252.Visible:=true;b1253.Visible:=true;b1254.Visible:=true;b1256.Visible:=true;b1257.Visible:=true;b1258.Visible:=true;
    b1255.Visible:=true;
  end;
  if rwo752.Caption>'' then begin
    b2251.Visible:=true;b2252.Visible:=true;b2253.Visible:=true;b2254.Visible:=true;b2256.Visible:=true;b2257.Visible:=true;b2258.Visible:=true;
    b2255.Visible:=true;
  end;
  if rwo761.Caption>'' then begin
    b1261.Visible:=true;b1262.Visible:=true;b1263.Visible:=true;b1264.Visible:=true;b1266.Visible:=true;b1267.Visible:=true;b1268.Visible:=true;
    b1265.Visible:=true;
  end;
  if rwo762.Caption>'' then begin
    b2261.Visible:=true;b2262.Visible:=true;b2263.Visible:=true;b2264.Visible:=true;b2266.Visible:=true;b2267.Visible:=true;b2268.Visible:=true;
    b2265.Visible:=true;
  end;

  //QN 1
  if b1212.Value>b1215.Value then b1215.Font.Color:=clRed
  else if b1212.Value=b1215.Value then b1215.Font.Color:=clBlack else b1215.Font.Color:=clGreen;
  if b1215.Value>b1213.Value then b1213.Font.Color:=clRed
  else if b1215.Value=b1213.Value then b1213.Font.Color:=clBlack else b1213.Font.Color:=clGreen;
  if b1213.Value>b1214.Value then b1214.Font.Color:=clRed
  else if b1213.Value=b1214.Value then b1214.Font.Color:=clBlack else b1214.Font.Color:=clGreen;
  if b1214.Value>b1216.Value then b1216.Font.Color:=clRed
  else if b1214.Value=b1216.Value then b1216.Font.Color:=clBlack else b1216.Font.Color:=clGreen;
  if b1216.Value>b1217.Value then b1217.Font.Color:=clRed
  else if b1216.Value=b1217.Value then b1217.Font.Color:=clBlack else b1217.Font.Color:=clGreen;
  if b1217.Value>b1218.Value then b1218.Font.Color:=clRed
  else if b1217.Value=b1218.Value then b1218.Font.Color:=clBlack else b1218.Font.Color:=clGreen;

  //QN 2
  if b2212.Value>b2215.Value then b2215.Font.Color:=clRed
  else if b2212.Value=b2215.Value then b2215.Font.Color:=clBlack else b2215.Font.Color:=clGreen;
  if b2215.Value>b2213.Value then b2213.Font.Color:=clRed
  else if b2215.Value=b2213.Value then b2213.Font.Color:=clBlack else b2213.Font.Color:=clGreen;
  if b2213.Value>b2214.Value then b2214.Font.Color:=clRed
  else if b2213.Value=b2214.Value then b2214.Font.Color:=clBlack else b2214.Font.Color:=clGreen;
  if b2214.Value>b2216.Value then b2216.Font.Color:=clRed
  else if b2214.Value=b2216.Value then b2216.Font.Color:=clBlack else b2216.Font.Color:=clGreen;
  if b2216.Value>b2217.Value then b2217.Font.Color:=clRed
  else if b2216.Value=b2217.Value then b2217.Font.Color:=clBlack else b2217.Font.Color:=clGreen;
  if b2217.Value>b2218.Value then b2218.Font.Color:=clRed
  else if b2217.Value=b2218.Value then b2218.Font.Color:=clBlack else b2218.Font.Color:=clGreen;

  //QN 3
  if b1222.Value>b1225.Value then b1225.Font.Color:=clRed
  else if b1222.Value=b1225.Value then b1225.Font.Color:=clBlack else b1225.Font.Color:=clGreen;
  if b1225.Value>b1223.Value then b1223.Font.Color:=clRed
  else if b1225.Value=b1223.Value then b1223.Font.Color:=clBlack else b1223.Font.Color:=clGreen;
  if b1223.Value>b1224.Value then b1224.Font.Color:=clRed
  else if b1223.Value=b1224.Value then b1224.Font.Color:=clBlack else b1224.Font.Color:=clGreen;
  if b1224.Value>b1226.Value then b1226.Font.Color:=clRed
  else if b1224.Value=b1226.Value then b1226.Font.Color:=clBlack else b1226.Font.Color:=clGreen;
  if b1226.Value>b1227.Value then b1227.Font.Color:=clRed
  else if b1226.Value=b1227.Value then b1227.Font.Color:=clBlack else b1227.Font.Color:=clGreen;
  if b1227.Value>b1228.Value then b1228.Font.Color:=clRed
  else if b1227.Value=b1228.Value then b1228.Font.Color:=clBlack else b1228.Font.Color:=clGreen;

  //QN 4
  if b2222.Value>b2225.Value then b2225.Font.Color:=clRed
  else if b2222.Value=b2225.Value then b2225.Font.Color:=clBlack else b2225.Font.Color:=clGreen;
  if b2225.Value>b2223.Value then b2223.Font.Color:=clRed
  else if b2225.Value=b2223.Value then b2223.Font.Color:=clBlack else b2223.Font.Color:=clGreen;
  if b2223.Value>b2224.Value then b2224.Font.Color:=clRed
  else if b2223.Value=b2224.Value then b2224.Font.Color:=clBlack else b2224.Font.Color:=clGreen;
  if b2224.Value>b2226.Value then b2226.Font.Color:=clRed
  else if b2224.Value=b2226.Value then b2226.Font.Color:=clBlack else b2226.Font.Color:=clGreen;
  if b2226.Value>b2227.Value then b2227.Font.Color:=clRed
  else if b2226.Value=b2227.Value then b2227.Font.Color:=clBlack else b2227.Font.Color:=clGreen;
  if b2227.Value>b2228.Value then b2228.Font.Color:=clRed
  else if b2227.Value=b2228.Value then b2228.Font.Color:=clBlack else b2228.Font.Color:=clGreen;

  //QN 5
  if b1232.Value>b1235.Value then b1235.Font.Color:=clRed
  else if b1232.Value=b1235.Value then b1235.Font.Color:=clBlack else b1235.Font.Color:=clGreen;
  if b1235.Value>b1233.Value then b1233.Font.Color:=clRed
  else if b1235.Value=b1233.Value then b1233.Font.Color:=clBlack else b1233.Font.Color:=clGreen;
  if b1233.Value>b1234.Value then b1234.Font.Color:=clRed
  else if b1233.Value=b1234.Value then b1234.Font.Color:=clBlack else b1234.Font.Color:=clGreen;
  if b1234.Value>b1236.Value then b1236.Font.Color:=clRed
  else if b1234.Value=b1236.Value then b1236.Font.Color:=clBlack else b1236.Font.Color:=clGreen;
  if b1236.Value>b1237.Value then b1237.Font.Color:=clRed
  else if b1236.Value=b1237.Value then b1237.Font.Color:=clBlack else b1237.Font.Color:=clGreen;
  if b1237.Value>b1238.Value then b1238.Font.Color:=clRed
  else if b1237.Value=b1238.Value then b1238.Font.Color:=clBlack else b1238.Font.Color:=clGreen;

  //QN 6
  if b2232.Value>b2235.Value then b2235.Font.Color:=clRed
  else if b2232.Value=b2235.Value then b2235.Font.Color:=clBlack else b2235.Font.Color:=clGreen;
  if b2235.Value>b2233.Value then b2233.Font.Color:=clRed
  else if b2235.Value=b2233.Value then b2233.Font.Color:=clBlack else b2233.Font.Color:=clGreen;
  if b2233.Value>b2234.Value then b2234.Font.Color:=clRed
  else if b2233.Value=b2234.Value then b2234.Font.Color:=clBlack else b2234.Font.Color:=clGreen;
  if b2234.Value>b2236.Value then b2236.Font.Color:=clRed
  else if b2234.Value=b2236.Value then b2236.Font.Color:=clBlack else b2236.Font.Color:=clGreen;
  if b2236.Value>b2237.Value then b2237.Font.Color:=clRed
  else if b2236.Value=b2237.Value then b2237.Font.Color:=clBlack else b2237.Font.Color:=clGreen;
  if b2237.Value>b2238.Value then b2238.Font.Color:=clRed
  else if b2237.Value=b2238.Value then b2238.Font.Color:=clBlack else b2238.Font.Color:=clGreen;

  //QN 7
  if ba242.Value>ba245.Value then ba245.Font.Color:=clRed
  else if ba242.Value=ba245.Value then ba245.Font.Color:=clBlack else ba245.Font.Color:=clGreen;
  if ba245.Value>ba243.Value then ba243.Font.Color:=clRed
  else if ba245.Value=ba243.Value then ba243.Font.Color:=clBlack else ba243.Font.Color:=clGreen;
  if ba243.Value>ba244.Value then ba244.Font.Color:=clRed
  else if ba243.Value=ba244.Value then ba244.Font.Color:=clBlack else ba244.Font.Color:=clGreen;
  if ba244.Value>ba246.Value then ba246.Font.Color:=clRed
  else if ba244.Value=ba246.Value then ba246.Font.Color:=clBlack else ba246.Font.Color:=clGreen;
  if ba246.Value>ba247.Value then ba247.Font.Color:=clRed
  else if ba246.Value=ba247.Value then ba247.Font.Color:=clBlack else ba247.Font.Color:=clGreen;
  if ba247.Value>ba248.Value then ba248.Font.Color:=clRed
  else if ba247.Value=ba248.Value then ba248.Font.Color:=clBlack else ba248.Font.Color:=clGreen;

  //QN 8
  if bb242.Value>bb245.Value then bb245.Font.Color:=clRed
  else if bb242.Value=bb245.Value then bb245.Font.Color:=clBlack else bb245.Font.Color:=clGreen;
  if bb245.Value>bb243.Value then bb243.Font.Color:=clRed
  else if bb245.Value=bb243.Value then bb243.Font.Color:=clBlack else bb243.Font.Color:=clGreen;
  if bb243.Value>bb244.Value then bb244.Font.Color:=clRed
  else if bb243.Value=bb244.Value then bb244.Font.Color:=clBlack else bb244.Font.Color:=clGreen;
  if bb244.Value>bb246.Value then bb246.Font.Color:=clRed
  else if bb244.Value=bb246.Value then bb246.Font.Color:=clBlack else bb246.Font.Color:=clGreen;
  if bb246.Value>bb247.Value then bb247.Font.Color:=clRed
  else if bb246.Value=bb247.Value then bb247.Font.Color:=clBlack else bb247.Font.Color:=clGreen;
  if bb247.Value>bb248.Value then bb248.Font.Color:=clRed
  else if bb247.Value=bb248.Value then bb248.Font.Color:=clBlack else bb248.Font.Color:=clGreen;

  //QN 9
  if b1242.Value>b1245.Value then b1245.Font.Color:=clRed
  else if b1242.Value=b1245.Value then b1245.Font.Color:=clBlack else b1245.Font.Color:=clGreen;
  if b1245.Value>b1243.Value then b1243.Font.Color:=clRed
  else if b1245.Value=b1243.Value then b1243.Font.Color:=clBlack else b1243.Font.Color:=clGreen;
  if b1243.Value>b1244.Value then b1244.Font.Color:=clRed
  else if b1243.Value=b1244.Value then b1244.Font.Color:=clBlack else b1244.Font.Color:=clGreen;
  if b1244.Value>b1246.Value then b1246.Font.Color:=clRed
  else if b1244.Value=b1246.Value then b1246.Font.Color:=clBlack else b1246.Font.Color:=clGreen;
  if b1246.Value>b1247.Value then b1247.Font.Color:=clRed
  else if b1246.Value=b1247.Value then b1247.Font.Color:=clBlack else b1247.Font.Color:=clGreen;
  if b1247.Value>b1248.Value then b1248.Font.Color:=clRed
  else if b1247.Value=b1248.Value then b1248.Font.Color:=clBlack else b1248.Font.Color:=clGreen;

  //QN 10
  if b2242.Value>b2245.Value then b2245.Font.Color:=clRed
  else if b2242.Value=b2245.Value then b2245.Font.Color:=clBlack else b2245.Font.Color:=clGreen;
  if b2245.Value>b2243.Value then b2243.Font.Color:=clRed
  else if b2245.Value=b2243.Value then b2243.Font.Color:=clBlack else b2243.Font.Color:=clGreen;
  if b2243.Value>b2244.Value then b2244.Font.Color:=clRed
  else if b2243.Value=b2244.Value then b2244.Font.Color:=clBlack else b2244.Font.Color:=clGreen;
  if b2244.Value>b2246.Value then b2246.Font.Color:=clRed
  else if b2244.Value=b2246.Value then b2246.Font.Color:=clBlack else b2246.Font.Color:=clGreen;
  if b2246.Value>b2247.Value then b2247.Font.Color:=clRed
  else if b2246.Value=b2247.Value then b2247.Font.Color:=clBlack else b2247.Font.Color:=clGreen;
  if b2247.Value>b2248.Value then b2248.Font.Color:=clRed
  else if b2247.Value=b2248.Value then b2248.Font.Color:=clBlack else b2248.Font.Color:=clGreen;

  //QN 11
  if b1252.Value>b1255.Value then b1255.Font.Color:=clRed
  else if b1252.Value=b1255.Value then b1255.Font.Color:=clBlack else b1255.Font.Color:=clGreen;
  if b1255.Value>b1253.Value then b1253.Font.Color:=clRed
  else if b1255.Value=b1253.Value then b1253.Font.Color:=clBlack else b1253.Font.Color:=clGreen;
  if b1253.Value>b1254.Value then b1254.Font.Color:=clRed
  else if b1253.Value=b1254.Value then b1254.Font.Color:=clBlack else b1254.Font.Color:=clGreen;
  if b1254.Value>b1256.Value then b1256.Font.Color:=clRed
  else if b1254.Value=b1256.Value then b1256.Font.Color:=clBlack else b1256.Font.Color:=clGreen;
  if b1256.Value>b1257.Value then b1257.Font.Color:=clRed
  else if b1256.Value=b1257.Value then b1257.Font.Color:=clBlack else b1257.Font.Color:=clGreen;
  if b1257.Value>b1258.Value then b1258.Font.Color:=clRed
  else if b1257.Value=b1258.Value then b1258.Font.Color:=clBlack else b1258.Font.Color:=clGreen;

  //QN 12
  if b2252.Value>b2255.Value then b2255.Font.Color:=clRed
  else if b2252.Value=b2255.Value then b2255.Font.Color:=clBlack else b2255.Font.Color:=clGreen;
  if b2255.Value>b2253.Value then b2253.Font.Color:=clRed
  else if b2255.Value=b2253.Value then b2253.Font.Color:=clBlack else b2253.Font.Color:=clGreen;
  if b2253.Value>b2254.Value then b2254.Font.Color:=clRed
  else if b2253.Value=b2254.Value then b2254.Font.Color:=clBlack else b2254.Font.Color:=clGreen;
  if b2254.Value>b2256.Value then b2256.Font.Color:=clRed
  else if b2254.Value=b2256.Value then b2256.Font.Color:=clBlack else b2256.Font.Color:=clGreen;
  if b2256.Value>b2257.Value then b2257.Font.Color:=clRed
  else if b2256.Value=b2257.Value then b2257.Font.Color:=clBlack else b2257.Font.Color:=clGreen;
  if b2257.Value>b2258.Value then b2258.Font.Color:=clRed
  else if b2257.Value=b2258.Value then b2258.Font.Color:=clBlack else b2258.Font.Color:=clGreen;

  //QN 13
  if b1262.Value>b1265.Value then b1265.Font.Color:=clRed
  else if b1262.Value=b1265.Value then b1265.Font.Color:=clBlack else b1265.Font.Color:=clGreen;
  if b1265.Value>b1263.Value then b1263.Font.Color:=clRed
  else if b1265.Value=b1263.Value then b1263.Font.Color:=clBlack else b1263.Font.Color:=clGreen;
  if b1263.Value>b1264.Value then b1264.Font.Color:=clRed
  else if b1263.Value=b1264.Value then b1264.Font.Color:=clBlack else b1264.Font.Color:=clGreen;
  if b1264.Value>b1266.Value then b1266.Font.Color:=clRed
  else if b1264.Value=b1266.Value then b1266.Font.Color:=clBlack else b1266.Font.Color:=clGreen;
  if b1266.Value>b1267.Value then b1267.Font.Color:=clRed
  else if b1266.Value=b1267.Value then b1267.Font.Color:=clBlack else b1267.Font.Color:=clGreen;
  if b1267.Value>b1268.Value then b1268.Font.Color:=clRed
  else if b1267.Value=b1268.Value then b1268.Font.Color:=clBlack else b1268.Font.Color:=clGreen;

  //QN 14
  if b2262.Value>b2265.Value then b2265.Font.Color:=clRed
  else if b2262.Value=b2265.Value then b2265.Font.Color:=clBlack else b2265.Font.Color:=clGreen;
  if b2265.Value>b2263.Value then b2263.Font.Color:=clRed
  else if b2265.Value=b2263.Value then b2263.Font.Color:=clBlack else b2263.Font.Color:=clGreen;
  if b2263.Value>b2264.Value then b2264.Font.Color:=clRed
  else if b2263.Value=b2264.Value then b2264.Font.Color:=clBlack else b2264.Font.Color:=clGreen;
  if b2264.Value>b2266.Value then b2266.Font.Color:=clRed
  else if b2264.Value=b2266.Value then b2266.Font.Color:=clBlack else b2266.Font.Color:=clGreen;
  if b2266.Value>b2267.Value then b2267.Font.Color:=clRed
  else if b2266.Value=b2267.Value then b2267.Font.Color:=clBlack else b2267.Font.Color:=clGreen;
  if b2267.Value>b2268.Value then b2268.Font.Color:=clRed
  else if b2267.Value=b2268.Value then b2268.Font.Color:=clBlack else b2268.Font.Color:=clGreen;

  bs6101.Caption:=b1211.Value+b1221.Value+b1231.Value+ba241.Value+b1241.Value+b1251.Value+b1261.Value;
  bs6102.Caption:=b1212.Value+b1222.Value+b1232.Value+ba242.Value+b1242.Value+b1252.Value+b1262.Value;
  bs6103.Caption:=b1213.value+b1223.value+b1233.value+ba243.value+b1243.value+b1253.value+b1263.Value;
  bs6104.Caption:=b1214.value+b1224.value+b1234.value+ba244.value+b1244.value+b1254.value+b1264.Value;
  bs6105.Caption:=b1215.value+b1225.value+b1235.value+ba245.value+b1245.value+b1255.value+b1265.Value;
  bs6106.Caption:=b1216.value+b1226.value+b1236.value+ba246.value+b1246.value+b1256.value+b1266.Value;
  bs6107.Caption:=b1217.value+b1227.value+b1237.value+ba247.value+b1247.value+b1257.value+b1267.Value;
  bs6108.Caption:=b1218.value+b1228.value+b1238.value+ba248.value+b1248.value+b1258.value+b1268.Value;

  bs6201.Caption:=b2211.Value+b2221.Value+b2231.Value+bb241.Value+b2241.Value+b2251.Value+b2261.Value;
  bs6202.Caption:=b2212.Value+b2222.Value+b2232.Value+bb242.Value+b2242.Value+b2252.Value+b2262.Value;
  bs6203.Caption:=b2213.value+b2223.value+b2233.value+bb243.value+b2243.value+b2253.value+b2263.Value;
  bs6204.Caption:=b2214.value+b2224.value+b2234.value+bb244.value+b2244.value+b2254.value+b2264.Value;
  bs6205.Caption:=b2215.value+b2225.value+b2235.value+bb245.value+b2245.value+b2255.value+b2265.Value;
  bs6206.Caption:=b2216.value+b2226.value+b2236.value+bb246.value+b2246.value+b2256.value+b2266.Value;
  bs6207.Caption:=b2217.value+b2227.value+b2237.value+bb247.value+b2247.value+b2257.value+b2267.Value;
  bs6208.Caption:=b2218.value+b2228.value+b2238.value+bb248.value+b2248.value+b2258.value+b2268.Value;
  bs0054.Caption:=b1218.value+b1228.value+b1238.value+ba248.value+b1248.value+b1258.value+b1268.Value+b2218.value+b2228.value+b2238.value+bb248.value+b2248.value+b2258.value+b2268.Value;

  if bs6102.caption>bs6105.Caption then bs6105.Font.Color:=clRed
  else if bs6102.Caption=bs6105.Caption then bs6105.Font.Color:=clBlack else bs6105.Font.Color:=clGreen;
  if bs6105.caption>bs6103.Caption then bs6103.Font.Color:=clRed
  else if bs6105.Caption=bs6103.Caption then bs6103.Font.Color:=clBlack else bs6103.Font.Color:=clGreen;
  if bs6103.caption>bs6104.Caption then bs6104.Font.Color:=clRed
  else if bs6103.Caption=bs6104.Caption then bs6104.Font.Color:=clBlack else bs6104.Font.Color:=clGreen;
  if bs6104.caption>bs6106.Caption then bs6106.Font.Color:=clRed
  else if bs6104.Caption=bs6106.Caption then bs6106.Font.Color:=clBlack else bs6106.Font.Color:=clGreen;
  if bs6106.caption>bs6107.Caption then bs6107.Font.Color:=clRed
  else if bs6106.Caption=bs6107.Caption then bs6107.Font.Color:=clBlack else bs6107.Font.Color:=clGreen;
  if bs6107.caption>bs6108.Caption then bs6108.Font.Color:=clRed
  else if bs6107.Caption=bs6108.Caption then bs6108.Font.Color:=clBlack else bs6108.Font.Color:=clGreen;

  if bs6202.caption>bs6205.Caption then bs6205.Font.Color:=clRed
  else if bs6202.Caption=bs6205.Caption then bs6205.Font.Color:=clBlack else bs6205.Font.Color:=clGreen;
  if bs6205.caption>bs6203.Caption then bs6203.Font.Color:=clRed
  else if bs6205.Caption=bs6203.Caption then bs6203.Font.Color:=clBlack else bs6203.Font.Color:=clGreen;
  if bs6203.caption>bs6204.Caption then bs6204.Font.Color:=clRed
  else if bs6203.Caption=bs6204.Caption then bs6204.Font.Color:=clBlack else bs6204.Font.Color:=clGreen;
  if bs6204.caption>bs6206.Caption then bs6206.Font.Color:=clRed
  else if bs6204.Caption=bs6206.Caption then bs6206.Font.Color:=clBlack else bs6206.Font.Color:=clGreen;
  if bs6206.caption>bs6207.Caption then bs6207.Font.Color:=clRed
  else if bs6206.Caption=bs6207.Caption then bs6207.Font.Color:=clBlack else bs6207.Font.Color:=clGreen;
  if bs6207.caption>bs6208.Caption then bs6208.Font.Color:=clRed
  else if bs6207.Caption=bs6208.Caption then bs6208.Font.Color:=clBlack else bs6208.Font.Color:=clGreen;

  if bd007.Value<0 then begin
    bd007.Font.Color:=clRed;
    bp007.Font.Color:=clRed;
  end else if bd007.Value=0 then begin
    bd007.Font.Color:=clBlack;
    bp007.Font.Color:=clBlack;
  end else begin
    bd007.Font.Color:=clGreen;
    bp007.Font.Color:=clBlack;
  end;
  if bq007.Value>0 then
  bp007.Caption:='('+formatfloat('0.0%',bd007.Value*100.0/bq007.Value)+')'
  else bp007.Caption:='(0.0%)';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,count(distinct acol) as s2,count(distinct j_no) as s3,count(distinct j2_job) as s4,'
                +'count(distinct custpo) as s5,sum(box) as s6,sum(wght) as s7,sum(cbm) as s8,sum(diff) as s9,sum(sqty) as s10,count(*) as s11 from tbl_pdn_pack where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query5.fieldbyname('seq').value;
    params[1].asinteger:=query5.fieldbyname('seq1').value;
    open;
    sum001.Caption:='Ttl:    Project='+fieldbyname('s3').asstring+'    Cust Style='+fieldbyname('s1').asstring+'    Style Clr Code='+fieldbyname('s2').asstring+'    Cust Clr Name='+fieldbyname('s2').asstring;
    sum001.Caption:=sum001.Caption+'    Cust PO='+fieldbyname('s5').asstring+'    WO='+fieldbyname('s4').asstring+'    RWO='+fieldbyname('s11').asstring;
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
      if sum001.Caption>'' then sum001.Caption:=sum001.caption+'    QN='+fieldbyname('s7').asstring else ttl001.Caption:='QN='+fieldbyname('s7').asstring;
    end;
  end;
end;

procedure Tfrmpdnactd1.ppGroupFooterBand12BeforePrint(Sender: TObject);
begin
  b1151.Visible:=false;b1152.Visible:=false;b1153.Visible:=false;b1154.Visible:=false;b1156.Visible:=false;b1157.Visible:=false;b1158.Visible:=false;
  b2151.Visible:=false;b2152.Visible:=false;b2153.Visible:=false;b2154.Visible:=false;b2156.Visible:=false;b2157.Visible:=false;b2158.Visible:=false;
  b1155.Visible:=false;b2155.Visible:=false;
  b1161.Visible:=false;b1162.Visible:=false;b1163.Visible:=false;b1164.Visible:=false;b1166.Visible:=false;b1167.Visible:=false;b1168.Visible:=false;
  b2161.Visible:=false;b2162.Visible:=false;b2163.Visible:=false;b2164.Visible:=false;b2166.Visible:=false;b2167.Visible:=false;b2168.Visible:=false;
  b1165.Visible:=false;b2165.Visible:=false;
  b1171.Visible:=false;b1172.Visible:=false;b1173.Visible:=false;b1174.Visible:=false;b1176.Visible:=false;b1177.Visible:=false;b1178.Visible:=false;
  b2171.Visible:=false;b2172.Visible:=false;b2173.Visible:=false;b2174.Visible:=false;b2176.Visible:=false;b2177.Visible:=false;b2178.Visible:=false;
  b1175.Visible:=false;b2175.Visible:=false;
  b1181.Visible:=false;b1182.Visible:=false;b1183.Visible:=false;b1184.Visible:=false;b1186.Visible:=false;b1187.Visible:=false;b1188.Visible:=false;
  b2181.Visible:=false;b2182.Visible:=false;b2183.Visible:=false;b2184.Visible:=false;b2186.Visible:=false;b2187.Visible:=false;b2188.Visible:=false;
  b1185.Visible:=false;b2185.Visible:=false;
  b1191.Visible:=false;b1192.Visible:=false;b1193.Visible:=false;b1194.Visible:=false;b1196.Visible:=false;b1197.Visible:=false;b1198.Visible:=false;
  b2191.Visible:=false;b2192.Visible:=false;b2193.Visible:=false;b2194.Visible:=false;b2196.Visible:=false;b2197.Visible:=false;b2198.Visible:=false;
  b1195.Visible:=false;b2195.Visible:=false;
  b1201.Visible:=false;b1202.Visible:=false;b1203.Visible:=false;b1204.Visible:=false;b1206.Visible:=false;b1207.Visible:=false;b1208.Visible:=false;
  b2201.Visible:=false;b2202.Visible:=false;b2203.Visible:=false;b2204.Visible:=false;b2206.Visible:=false;b2207.Visible:=false;b2208.Visible:=false;
  b1205.Visible:=false;b2205.Visible:=false;
  if rwo601.Caption>'' then begin
    b1151.Visible:=true;b1152.Visible:=true;b1153.Visible:=true;b1154.Visible:=true;b1156.Visible:=true;b1157.Visible:=true;b1158.Visible:=true;
    b1155.Visible:=true;
  end;
  if rwo602.Caption>'' then begin
    b2151.Visible:=true;b2152.Visible:=true;b2153.Visible:=true;b2154.Visible:=true;b2156.Visible:=true;b2157.Visible:=true;b2158.Visible:=true;
    b2155.Visible:=true;
  end;
  if rwo611.Caption>'' then begin
    b1161.Visible:=true;b1162.Visible:=true;b1163.Visible:=true;b1164.Visible:=true;b1166.Visible:=true;b1167.Visible:=true;b1168.Visible:=true;
    b1165.Visible:=true;
  end;
  if rwo612.Caption>'' then begin
    b2161.Visible:=true;b2162.Visible:=true;b2163.Visible:=true;b2164.Visible:=true;b2166.Visible:=true;b2167.Visible:=true;b2168.Visible:=true;
    b2165.Visible:=true;
  end;
  if rwo621.Caption>'' then begin
    b1171.Visible:=true;b1172.Visible:=true;b1173.Visible:=true;b1174.Visible:=true;b1176.Visible:=true;b1177.Visible:=true;b1178.Visible:=true;
    b1175.Visible:=true;
  end;
  if rwo622.Caption>'' then begin
    b2171.Visible:=true;b2172.Visible:=true;b2173.Visible:=true;b2174.Visible:=true;b2176.Visible:=true;b2177.Visible:=true;b2178.Visible:=true;
    b2175.Visible:=true;
  end;
  if rwo631.Caption>'' then begin
    b1181.Visible:=true;b1182.Visible:=true;b1183.Visible:=true;b1184.Visible:=true;b1186.Visible:=true;b1187.Visible:=true;b1188.Visible:=true;
    b1185.Visible:=true;
  end;
  if rwo632.Caption>'' then begin
    b2181.Visible:=true;b2182.Visible:=true;b2183.Visible:=true;b2184.Visible:=true;b2186.Visible:=true;b2187.Visible:=true;b2188.Visible:=true;
    b2185.Visible:=true;
  end;
  if rwo641.Caption>'' then begin
    b1191.Visible:=true;b1192.Visible:=true;b1193.Visible:=true;b1194.Visible:=true;b1196.Visible:=true;b1197.Visible:=true;b1198.Visible:=true;
    b1195.Visible:=true;
  end;
  if rwo642.Caption>'' then begin
    b2191.Visible:=true;b2192.Visible:=true;b2193.Visible:=true;b2194.Visible:=true;b2196.Visible:=true;b2197.Visible:=true;b2198.Visible:=true;
    b2195.Visible:=true;
  end;
  if rwo651.Caption>'' then begin
    b1201.Visible:=true;b1202.Visible:=true;b1203.Visible:=true;b1204.Visible:=true;b1206.Visible:=true;b1207.Visible:=true;b1208.Visible:=true;
    b1205.Visible:=true;
  end;
  if rwo652.Caption>'' then begin
    b2201.Visible:=true;b2202.Visible:=true;b2203.Visible:=true;b2204.Visible:=true;b2206.Visible:=true;b2207.Visible:=true;b2208.Visible:=true;
    b2205.Visible:=true;
  end;

  //QN 1
  if b1152.Value>b1155.Value then b1155.Font.Color:=clRed
  else if b1152.Value=b1155.Value then b1155.Font.Color:=clBlack else b1155.Font.Color:=clGreen;
  if b1155.Value>b1153.Value then b1153.Font.Color:=clRed
  else if b1155.Value=b1153.Value then b1153.Font.Color:=clBlack else b1153.Font.Color:=clGreen;
  if b1153.Value>b1154.Value then b1154.Font.Color:=clRed
  else if b1153.Value=b1154.Value then b1154.Font.Color:=clBlack else b1154.Font.Color:=clGreen;
  if b1154.Value>b1156.Value then b1156.Font.Color:=clRed
  else if b1154.Value=b1156.Value then b1156.Font.Color:=clBlack else b1156.Font.Color:=clGreen;
  if b1156.Value>b1157.Value then b1157.Font.Color:=clRed
  else if b1156.Value=b1157.Value then b1157.Font.Color:=clBlack else b1157.Font.Color:=clGreen;
  if b1157.Value>b1158.Value then b1158.Font.Color:=clRed
  else if b1157.Value=b1158.Value then b1158.Font.Color:=clBlack else b1158.Font.Color:=clGreen;

  //QN 2
  if b2152.Value>b2155.Value then b2155.Font.Color:=clRed
  else if b2152.Value=b2155.Value then b2155.Font.Color:=clBlack else b2155.Font.Color:=clGreen;
  if b2155.Value>b2153.Value then b2153.Font.Color:=clRed
  else if b2155.Value=b2153.Value then b2153.Font.Color:=clBlack else b2153.Font.Color:=clGreen;
  if b2153.Value>b2154.Value then b2154.Font.Color:=clRed
  else if b2153.Value=b2154.Value then b2154.Font.Color:=clBlack else b2154.Font.Color:=clGreen;
  if b2154.Value>b2156.Value then b2156.Font.Color:=clRed
  else if b2154.Value=b2156.Value then b2156.Font.Color:=clBlack else b2156.Font.Color:=clGreen;
  if b2156.Value>b2157.Value then b2157.Font.Color:=clRed
  else if b2156.Value=b2157.Value then b2157.Font.Color:=clBlack else b2157.Font.Color:=clGreen;
  if b2157.Value>b2158.Value then b2158.Font.Color:=clRed
  else if b2157.Value=b2158.Value then b2158.Font.Color:=clBlack else b2158.Font.Color:=clGreen;

  //QN 3
  if b1162.Value>b1165.Value then b1165.Font.Color:=clRed
  else if b1162.Value=b1165.Value then b1165.Font.Color:=clBlack else b1165.Font.Color:=clGreen;
  if b1165.Value>b1163.Value then b1163.Font.Color:=clRed
  else if b1165.Value=b1163.Value then b1163.Font.Color:=clBlack else b1163.Font.Color:=clGreen;
  if b1163.Value>b1164.Value then b1164.Font.Color:=clRed
  else if b1163.Value=b1164.Value then b1164.Font.Color:=clBlack else b1164.Font.Color:=clGreen;
  if b1164.Value>b1166.Value then b1166.Font.Color:=clRed
  else if b1164.Value=b1166.Value then b1166.Font.Color:=clBlack else b1166.Font.Color:=clGreen;
  if b1166.Value>b1167.Value then b1167.Font.Color:=clRed
  else if b1166.Value=b1167.Value then b1167.Font.Color:=clBlack else b1167.Font.Color:=clGreen;
  if b1167.Value>b1168.Value then b1168.Font.Color:=clRed
  else if b1167.Value=b1168.Value then b1168.Font.Color:=clBlack else b1168.Font.Color:=clGreen;

  //QN 4
  if b2162.Value>b2165.Value then b2165.Font.Color:=clRed
  else if b2162.Value=b2165.Value then b2165.Font.Color:=clBlack else b2165.Font.Color:=clGreen;
  if b2165.Value>b2163.Value then b2163.Font.Color:=clRed
  else if b2165.Value=b2163.Value then b2163.Font.Color:=clBlack else b2163.Font.Color:=clGreen;
  if b2163.Value>b2164.Value then b2164.Font.Color:=clRed
  else if b2163.Value=b2164.Value then b2164.Font.Color:=clBlack else b2164.Font.Color:=clGreen;
  if b2164.Value>b2166.Value then b2166.Font.Color:=clRed
  else if b2164.Value=b2166.Value then b2166.Font.Color:=clBlack else b2166.Font.Color:=clGreen;
  if b2166.Value>b2167.Value then b2167.Font.Color:=clRed
  else if b2166.Value=b2167.Value then b2167.Font.Color:=clBlack else b2167.Font.Color:=clGreen;
  if b2167.Value>b2168.Value then b2168.Font.Color:=clRed
  else if b2167.Value=b2168.Value then b2168.Font.Color:=clBlack else b2168.Font.Color:=clGreen;

  //QN 5
  if b1172.Value>b1175.Value then b1175.Font.Color:=clRed
  else if b1172.Value=b1175.Value then b1175.Font.Color:=clBlack else b1175.Font.Color:=clGreen;
  if b1175.Value>b1173.Value then b1173.Font.Color:=clRed
  else if b1175.Value=b1173.Value then b1173.Font.Color:=clBlack else b1173.Font.Color:=clGreen;
  if b1173.Value>b1174.Value then b1174.Font.Color:=clRed
  else if b1173.Value=b1174.Value then b1174.Font.Color:=clBlack else b1174.Font.Color:=clGreen;
  if b1174.Value>b1176.Value then b1176.Font.Color:=clRed
  else if b1174.Value=b1176.Value then b1176.Font.Color:=clBlack else b1176.Font.Color:=clGreen;
  if b1176.Value>b1177.Value then b1177.Font.Color:=clRed
  else if b1176.Value=b1177.Value then b1177.Font.Color:=clBlack else b1177.Font.Color:=clGreen;
  if b1177.Value>b1178.Value then b1178.Font.Color:=clRed
  else if b1177.Value=b1178.Value then b1178.Font.Color:=clBlack else b1178.Font.Color:=clGreen;

  //QN 6
  if b2172.Value>b2175.Value then b2175.Font.Color:=clRed
  else if b2172.Value=b2175.Value then b2175.Font.Color:=clBlack else b2175.Font.Color:=clGreen;
  if b2175.Value>b2173.Value then b2173.Font.Color:=clRed
  else if b2175.Value=b2173.Value then b2173.Font.Color:=clBlack else b2173.Font.Color:=clGreen;
  if b2173.Value>b2174.Value then b2174.Font.Color:=clRed
  else if b2173.Value=b2174.Value then b2174.Font.Color:=clBlack else b2174.Font.Color:=clGreen;
  if b2174.Value>b2176.Value then b2176.Font.Color:=clRed
  else if b2174.Value=b2176.Value then b2176.Font.Color:=clBlack else b2176.Font.Color:=clGreen;
  if b2176.Value>b2177.Value then b2177.Font.Color:=clRed
  else if b2176.Value=b2177.Value then b2177.Font.Color:=clBlack else b2177.Font.Color:=clGreen;
  if b2177.Value>b2178.Value then b2178.Font.Color:=clRed
  else if b2177.Value=b2178.Value then b2178.Font.Color:=clBlack else b2178.Font.Color:=clGreen;

  //QN 7
  if b1182.Value>b1185.Value then b1185.Font.Color:=clRed
  else if b1182.Value=b1185.Value then b1185.Font.Color:=clBlack else b1185.Font.Color:=clGreen;
  if b1185.Value>b1183.Value then b1183.Font.Color:=clRed
  else if b1185.Value=b1183.Value then b1183.Font.Color:=clBlack else b1183.Font.Color:=clGreen;
  if b1183.Value>b1184.Value then b1184.Font.Color:=clRed
  else if b1183.Value=b1184.Value then b1184.Font.Color:=clBlack else b1184.Font.Color:=clGreen;
  if b1184.Value>b1186.Value then b1186.Font.Color:=clRed
  else if b1184.Value=b1186.Value then b1186.Font.Color:=clBlack else b1186.Font.Color:=clGreen;
  if b1186.Value>b1187.Value then b1187.Font.Color:=clRed
  else if b1186.Value=b1187.Value then b1187.Font.Color:=clBlack else b1187.Font.Color:=clGreen;
  if b1187.Value>b1188.Value then b1188.Font.Color:=clRed
  else if b1187.Value=b1188.Value then b1188.Font.Color:=clBlack else b1188.Font.Color:=clGreen;

  //QN 8
  if b2182.Value>b2185.Value then b2185.Font.Color:=clRed
  else if b2182.Value=b2185.Value then b2185.Font.Color:=clBlack else b2185.Font.Color:=clGreen;
  if b2185.Value>b2183.Value then b2183.Font.Color:=clRed
  else if b2185.Value=b2183.Value then b2183.Font.Color:=clBlack else b2183.Font.Color:=clGreen;
  if b2183.Value>b2184.Value then b2184.Font.Color:=clRed
  else if b2183.Value=b2184.Value then b2184.Font.Color:=clBlack else b2184.Font.Color:=clGreen;
  if b2184.Value>b2186.Value then b2186.Font.Color:=clRed
  else if b2184.Value=b2186.Value then b2186.Font.Color:=clBlack else b2186.Font.Color:=clGreen;
  if b2186.Value>b2187.Value then b2187.Font.Color:=clRed
  else if b2186.Value=b2187.Value then b2187.Font.Color:=clBlack else b2187.Font.Color:=clGreen;
  if b2187.Value>b2188.Value then b2188.Font.Color:=clRed
  else if b2187.Value=b2188.Value then b2188.Font.Color:=clBlack else b2188.Font.Color:=clGreen;

  //QN 9
  if b1192.Value>b1195.Value then b1195.Font.Color:=clRed
  else if b1192.Value=b1195.Value then b1195.Font.Color:=clBlack else b1195.Font.Color:=clGreen;
  if b1195.Value>b1193.Value then b1193.Font.Color:=clRed
  else if b1195.Value=b1193.Value then b1193.Font.Color:=clBlack else b1193.Font.Color:=clGreen;
  if b1193.Value>b1194.Value then b1194.Font.Color:=clRed
  else if b1193.Value=b1194.Value then b1194.Font.Color:=clBlack else b1194.Font.Color:=clGreen;
  if b1194.Value>b1196.Value then b1196.Font.Color:=clRed
  else if b1194.Value=b1196.Value then b1196.Font.Color:=clBlack else b1196.Font.Color:=clGreen;
  if b1196.Value>b1197.Value then b1197.Font.Color:=clRed
  else if b1196.Value=b1197.Value then b1197.Font.Color:=clBlack else b1197.Font.Color:=clGreen;
  if b1197.Value>b1198.Value then b1198.Font.Color:=clRed
  else if b1197.Value=b1198.Value then b1198.Font.Color:=clBlack else b1198.Font.Color:=clGreen;

  //QN 10
  if b2192.Value>b2195.Value then b2195.Font.Color:=clRed
  else if b2192.Value=b2195.Value then b2195.Font.Color:=clBlack else b2195.Font.Color:=clGreen;
  if b2195.Value>b2193.Value then b2193.Font.Color:=clRed
  else if b2195.Value=b2193.Value then b2193.Font.Color:=clBlack else b2193.Font.Color:=clGreen;
  if b2193.Value>b2194.Value then b2194.Font.Color:=clRed
  else if b2193.Value=b2194.Value then b2194.Font.Color:=clBlack else b2194.Font.Color:=clGreen;
  if b2194.Value>b2196.Value then b2196.Font.Color:=clRed
  else if b2194.Value=b2196.Value then b2196.Font.Color:=clBlack else b2196.Font.Color:=clGreen;
  if b2196.Value>b2197.Value then b2197.Font.Color:=clRed
  else if b2196.Value=b2197.Value then b2197.Font.Color:=clBlack else b2197.Font.Color:=clGreen;
  if b2197.Value>b2198.Value then b2198.Font.Color:=clRed
  else if b2197.Value=b2198.Value then b2198.Font.Color:=clBlack else b2198.Font.Color:=clGreen;

  //QN 11
  if b1202.Value>b1205.Value then b1205.Font.Color:=clRed
  else if b1202.Value=b1205.Value then b1205.Font.Color:=clBlack else b1205.Font.Color:=clGreen;
  if b1205.Value>b1203.Value then b1203.Font.Color:=clRed
  else if b1205.Value=b1203.Value then b1203.Font.Color:=clBlack else b1203.Font.Color:=clGreen;
  if b1203.Value>b1204.Value then b1204.Font.Color:=clRed
  else if b1203.Value=b1204.Value then b1204.Font.Color:=clBlack else b1204.Font.Color:=clGreen;
  if b1204.Value>b1206.Value then b1206.Font.Color:=clRed
  else if b1204.Value=b1206.Value then b1206.Font.Color:=clBlack else b1206.Font.Color:=clGreen;
  if b1206.Value>b1207.Value then b1207.Font.Color:=clRed
  else if b1206.Value=b1207.Value then b1207.Font.Color:=clBlack else b1207.Font.Color:=clGreen;
  if b1207.Value>b1208.Value then b1208.Font.Color:=clRed
  else if b1207.Value=b1208.Value then b1208.Font.Color:=clBlack else b1208.Font.Color:=clGreen;

  //QN 12
  if b2202.Value>b2205.Value then b2205.Font.Color:=clRed
  else if b2202.Value=b2205.Value then b2205.Font.Color:=clBlack else b2205.Font.Color:=clGreen;
  if b2205.Value>b2203.Value then b2203.Font.Color:=clRed
  else if b2205.Value=b2203.Value then b2203.Font.Color:=clBlack else b2203.Font.Color:=clGreen;
  if b2203.Value>b2204.Value then b2204.Font.Color:=clRed
  else if b2203.Value=b2204.Value then b2204.Font.Color:=clBlack else b2204.Font.Color:=clGreen;
  if b2204.Value>b2206.Value then b2206.Font.Color:=clRed
  else if b2204.Value=b2206.Value then b2206.Font.Color:=clBlack else b2206.Font.Color:=clGreen;
  if b2206.Value>b2207.Value then b2207.Font.Color:=clRed
  else if b2206.Value=b2207.Value then b2207.Font.Color:=clBlack else b2207.Font.Color:=clGreen;
  if b2207.Value>b2208.Value then b2208.Font.Color:=clRed
  else if b2207.Value=b2208.Value then b2208.Font.Color:=clBlack else b2208.Font.Color:=clGreen;

  bs5101.Caption:=b1151.Value+b1161.Value+b1171.Value+b1181.Value+b1191.Value+b1201.Value;
  bs5102.Caption:=b1152.Value+b1162.Value+b1172.Value+b1182.Value+b1192.Value+b1202.Value;
  bs5103.Caption:=b1153.value+b1163.value+b1173.value+b1183.value+b1193.value+b1203.value;
  bs5104.Caption:=b1154.value+b1164.value+b1174.value+b1184.value+b1194.value+b1204.value;
  bs5106.Caption:=b1156.value+b1166.value+b1176.value+b1186.value+b1196.value+b1206.value;
  bs5107.Caption:=b1157.value+b1167.value+b1177.value+b1187.value+b1197.value+b1207.value;
  bs5108.Caption:=b1158.value+b1168.value+b1178.value+b1188.value+b1198.value+b1208.value;

  bs5201.Caption:=b2151.Value+b2161.Value+b2171.Value+b2181.Value+b2191.Value+b2201.Value;
  bs5202.Caption:=b2152.Value+b2162.Value+b2172.Value+b2182.Value+b2192.Value+b2202.Value;
  bs5203.Caption:=b2153.value+b2163.value+b2173.value+b2183.value+b2193.value+b2203.value;
  bs5204.Caption:=b2154.value+b2164.value+b2174.value+b2184.value+b2194.value+b2204.value;
  bs5206.Caption:=b2156.value+b2166.value+b2176.value+b2186.value+b2196.value+b2206.value;
  bs5207.Caption:=b2157.value+b2167.value+b2177.value+b2187.value+b2197.value+b2207.value;
  bs5208.Caption:=b2158.value+b2168.value+b2178.value+b2188.value+b2198.value+b2208.value;
  bs0044.Caption:=b1158.value+b1168.value+b1178.value+b1188.value+b1198.value+b1208.value+b2158.value+b2168.value+b2178.value+b2188.value+b2198.value+b2208.value;

  if bs5102.caption>bs5105.Caption then bs5105.Font.Color:=clRed
  else if bs5102.Caption=bs5105.Caption then bs5105.Font.Color:=clBlack else bs5105.Font.Color:=clGreen;
  if bs5105.caption>bs5103.Caption then bs5103.Font.Color:=clRed
  else if bs5105.Caption=bs5103.Caption then bs5103.Font.Color:=clBlack else bs5103.Font.Color:=clGreen;
  if bs5103.caption>bs5104.Caption then bs5104.Font.Color:=clRed
  else if bs5103.Caption=bs5104.Caption then bs5104.Font.Color:=clBlack else bs5104.Font.Color:=clGreen;
  if bs5104.caption>bs5106.Caption then bs5106.Font.Color:=clRed
  else if bs5104.Caption=bs5106.Caption then bs5106.Font.Color:=clBlack else bs5106.Font.Color:=clGreen;
  if bs5106.caption>bs5107.Caption then bs5107.Font.Color:=clRed
  else if bs5106.Caption=bs5107.Caption then bs5107.Font.Color:=clBlack else bs5107.Font.Color:=clGreen;
  if bs5107.caption>bs5108.Caption then bs5108.Font.Color:=clRed
  else if bs5107.Caption=bs5108.Caption then bs5108.Font.Color:=clBlack else bs5108.Font.Color:=clGreen;

  if bs5202.caption>bs5205.Caption then bs5205.Font.Color:=clRed
  else if bs5202.Caption=bs5205.Caption then bs5205.Font.Color:=clBlack else bs5205.Font.Color:=clGreen;
  if bs5205.caption>bs5203.Caption then bs5203.Font.Color:=clRed
  else if bs5205.Caption=bs5203.Caption then bs5203.Font.Color:=clBlack else bs5203.Font.Color:=clGreen;
  if bs5203.caption>bs5204.Caption then bs5204.Font.Color:=clRed
  else if bs5203.Caption=bs5204.Caption then bs5204.Font.Color:=clBlack else bs5204.Font.Color:=clGreen;
  if bs5204.caption>bs5206.Caption then bs5206.Font.Color:=clRed
  else if bs5204.Caption=bs5206.Caption then bs5206.Font.Color:=clBlack else bs5206.Font.Color:=clGreen;
  if bs5206.caption>bs5207.Caption then bs5207.Font.Color:=clRed
  else if bs5206.Caption=bs5207.Caption then bs5207.Font.Color:=clBlack else bs5207.Font.Color:=clGreen;
  if bs5207.caption>bs5208.Caption then bs5208.Font.Color:=clRed
  else if bs5207.Caption=bs5208.Caption then bs5208.Font.Color:=clBlack else bs5208.Font.Color:=clGreen;

  if bd006.Value<0 then begin
    bd006.Font.Color:=clRed;
    bp006.Font.Color:=clRed;
  end else if bd006.Value=0 then begin
    bd006.Font.Color:=clBlack;
    bp006.Font.Color:=clBlack;
  end else begin
    bd006.Font.Color:=clGreen;
    bp006.Font.Color:=clBlack;
  end;
  if bq006.Value>0 then
  bp006.Caption:='('+formatfloat('0.0%',bd006.Value*100.0/bq006.Value)+')'
  else bp006.Caption:='(0.0%)';
end;

procedure Tfrmpdnactd1.ppGroupFooterBand9BeforePrint(Sender: TObject);
begin
  b1101.Visible:=false;b1102.Visible:=false;b1103.Visible:=false;b1104.Visible:=false;b1106.Visible:=false;b1107.Visible:=false;b1108.Visible:=false;
  b2101.Visible:=false;b2102.Visible:=false;b2103.Visible:=false;b2104.Visible:=false;b2106.Visible:=false;b2107.Visible:=false;b2108.Visible:=false;
  b1105.Visible:=false;b2105.Visible:=false;
  b1111.Visible:=false;b1112.Visible:=false;b1113.Visible:=false;b1114.Visible:=false;b1116.Visible:=false;b1117.Visible:=false;b1118.Visible:=false;
  b2111.Visible:=false;b2112.Visible:=false;b2113.Visible:=false;b2114.Visible:=false;b2116.Visible:=false;b2117.Visible:=false;b2118.Visible:=false;
  b1115.Visible:=false;b2115.Visible:=false;
  b1121.Visible:=false;b1122.Visible:=false;b1123.Visible:=false;b1124.Visible:=false;b1126.Visible:=false;b1127.Visible:=false;b1128.Visible:=false;
  b2121.Visible:=false;b2122.Visible:=false;b2123.Visible:=false;b2124.Visible:=false;b2126.Visible:=false;b2127.Visible:=false;b2128.Visible:=false;
  b1125.Visible:=false;b2125.Visible:=false;
  b1131.Visible:=false;b1132.Visible:=false;b1133.Visible:=false;b1134.Visible:=false;b1136.Visible:=false;b1137.Visible:=false;b1138.Visible:=false;
  b2131.Visible:=false;b2132.Visible:=false;b2133.Visible:=false;b2134.Visible:=false;b2136.Visible:=false;b2137.Visible:=false;b2138.Visible:=false;
  b1135.Visible:=false;b2135.Visible:=false;
  b1141.Visible:=false;b1142.Visible:=false;b1143.Visible:=false;b1144.Visible:=false;b1146.Visible:=false;b1147.Visible:=false;b1148.Visible:=false;
  b2141.Visible:=false;b2142.Visible:=false;b2143.Visible:=false;b2144.Visible:=false;b2146.Visible:=false;b2147.Visible:=false;b2148.Visible:=false;
  b1145.Visible:=false;b2145.Visible:=false;
  if rwo501.Caption>'' then begin
    b1101.Visible:=true;b1102.Visible:=true;b1103.Visible:=true;b1104.Visible:=true;b1106.Visible:=true;b1107.Visible:=true;b1108.Visible:=true;
    b1105.Visible:=true;
  end;
  if rwo502.Caption>'' then begin
    b2101.Visible:=true;b2102.Visible:=true;b2103.Visible:=true;b2104.Visible:=true;b2106.Visible:=true;b2107.Visible:=true;b2108.Visible:=true;
    b2105.Visible:=true;
  end;
  if rwo511.Caption>'' then begin
    b1111.Visible:=true;b1112.Visible:=true;b1113.Visible:=true;b1114.Visible:=true;b1116.Visible:=true;b1117.Visible:=true;b1118.Visible:=true;
    b1115.Visible:=true;
  end;
  if rwo512.Caption>'' then begin
    b2111.Visible:=true;b2112.Visible:=true;b2113.Visible:=true;b2114.Visible:=true;b2116.Visible:=true;b2117.Visible:=true;b2118.Visible:=true;
    b2115.Visible:=true;
  end;
  if rwo521.Caption>'' then begin
    b1121.Visible:=true;b1122.Visible:=true;b1123.Visible:=true;b1124.Visible:=true;b1126.Visible:=true;b1127.Visible:=true;b1128.Visible:=true;
    b1125.Visible:=true;
  end;
  if rwo522.Caption>'' then begin
    b2121.Visible:=true;b2122.Visible:=true;b2123.Visible:=true;b2124.Visible:=true;b2126.Visible:=true;b2127.Visible:=true;b2128.Visible:=true;
    b2125.Visible:=true;
  end;
  if rwo531.Caption>'' then begin
    b1131.Visible:=true;b1132.Visible:=true;b1133.Visible:=true;b1134.Visible:=true;b1136.Visible:=true;b1137.Visible:=true;b1138.Visible:=true;
    b1135.Visible:=true;
  end;
  if rwo532.Caption>'' then begin
    b2131.Visible:=true;b2132.Visible:=true;b2133.Visible:=true;b2134.Visible:=true;b2136.Visible:=true;b2137.Visible:=true;b2138.Visible:=true;
    b2135.Visible:=true;
  end;
  if rwo541.Caption>'' then begin
    b1141.Visible:=true;b1142.Visible:=true;b1143.Visible:=true;b1144.Visible:=true;b1146.Visible:=true;b1147.Visible:=true;b1148.Visible:=true;
    b1145.Visible:=true;
  end;
  if rwo542.Caption>'' then begin
    b2141.Visible:=true;b2142.Visible:=true;b2143.Visible:=true;b2144.Visible:=true;b2146.Visible:=true;b2147.Visible:=true;b2148.Visible:=true;
    b2145.Visible:=true;
  end;

  //QN 1
  if b1102.Value>b1103.Value then b1103.Font.Color:=clRed
  else if b1102.Value=b1103.Value then b1103.Font.Color:=clBlack else b1103.Font.Color:=clGreen;
  if b1103.Value>b1104.Value then b1104.Font.Color:=clRed
  else if b1103.Value=b1104.Value then b1104.Font.Color:=clBlack else b1104.Font.Color:=clGreen;
  if b1104.Value>b1106.Value then b1106.Font.Color:=clRed
  else if b1104.Value=b1106.Value then b1106.Font.Color:=clBlack else b1106.Font.Color:=clGreen;
  if b1106.Value>b1107.Value then b1107.Font.Color:=clRed
  else if b1106.Value=b1107.Value then b1107.Font.Color:=clBlack else b1107.Font.Color:=clGreen;
  if b1107.Value>b1108.Value then b1108.Font.Color:=clRed
  else if b1107.Value=b1108.Value then b1108.Font.Color:=clBlack else b1108.Font.Color:=clGreen;

  //QN 2
  if b2102.Value>b2103.Value then b2103.Font.Color:=clRed
  else if b2102.Value=b2103.Value then b2103.Font.Color:=clBlack else b2103.Font.Color:=clGreen;
  if b2103.Value>b2104.Value then b2104.Font.Color:=clRed
  else if b2103.Value=b2104.Value then b2104.Font.Color:=clBlack else b2104.Font.Color:=clGreen;
  if b2104.Value>b2106.Value then b2106.Font.Color:=clRed
  else if b2104.Value=b2106.Value then b2106.Font.Color:=clBlack else b2106.Font.Color:=clGreen;
  if b2106.Value>b2107.Value then b2107.Font.Color:=clRed
  else if b2106.Value=b2107.Value then b2107.Font.Color:=clBlack else b2107.Font.Color:=clGreen;
  if b2107.Value>b2108.Value then b2108.Font.Color:=clRed
  else if b2107.Value=b2108.Value then b2108.Font.Color:=clBlack else b2108.Font.Color:=clGreen;

  //QN 3
  if b1112.Value>b1113.Value then b1113.Font.Color:=clRed
  else if b1112.Value=b1113.Value then b1113.Font.Color:=clBlack else b1113.Font.Color:=clGreen;
  if b1113.Value>b1114.Value then b1114.Font.Color:=clRed
  else if b1113.Value=b1114.Value then b1114.Font.Color:=clBlack else b1114.Font.Color:=clGreen;
  if b1114.Value>b1116.Value then b1116.Font.Color:=clRed
  else if b1114.Value=b1116.Value then b1116.Font.Color:=clBlack else b1116.Font.Color:=clGreen;
  if b1116.Value>b1117.Value then b1117.Font.Color:=clRed
  else if b1116.Value=b1117.Value then b1117.Font.Color:=clBlack else b1117.Font.Color:=clGreen;
  if b1117.Value>b1118.Value then b1118.Font.Color:=clRed
  else if b1117.Value=b1118.Value then b1118.Font.Color:=clBlack else b1118.Font.Color:=clGreen;

  //QN 4
  if b2112.Value>b2113.Value then b2113.Font.Color:=clRed
  else if b2112.Value=b2113.Value then b2113.Font.Color:=clBlack else b2113.Font.Color:=clGreen;
  if b2113.Value>b2114.Value then b2114.Font.Color:=clRed
  else if b2113.Value=b2114.Value then b2114.Font.Color:=clBlack else b2114.Font.Color:=clGreen;
  if b2114.Value>b2116.Value then b2116.Font.Color:=clRed
  else if b2114.Value=b2116.Value then b2116.Font.Color:=clBlack else b2116.Font.Color:=clGreen;
  if b2116.Value>b2117.Value then b2117.Font.Color:=clRed
  else if b2116.Value=b2117.Value then b2117.Font.Color:=clBlack else b2117.Font.Color:=clGreen;
  if b2117.Value>b2118.Value then b2118.Font.Color:=clRed
  else if b2117.Value=b2118.Value then b2118.Font.Color:=clBlack else b2118.Font.Color:=clGreen;

  //QN 5
  if b1122.Value>b1123.Value then b1123.Font.Color:=clRed
  else if b1122.Value=b1123.Value then b1123.Font.Color:=clBlack else b1123.Font.Color:=clGreen;
  if b1123.Value>b1124.Value then b1124.Font.Color:=clRed
  else if b1123.Value=b1124.Value then b1124.Font.Color:=clBlack else b1124.Font.Color:=clGreen;
  if b1124.Value>b1126.Value then b1126.Font.Color:=clRed
  else if b1124.Value=b1126.Value then b1126.Font.Color:=clBlack else b1126.Font.Color:=clGreen;
  if b1126.Value>b1127.Value then b1127.Font.Color:=clRed
  else if b1126.Value=b1127.Value then b1127.Font.Color:=clBlack else b1127.Font.Color:=clGreen;
  if b1127.Value>b1128.Value then b1128.Font.Color:=clRed
  else if b1127.Value=b1128.Value then b1128.Font.Color:=clBlack else b1128.Font.Color:=clGreen;

  //QN 6
  if b2122.Value>b2123.Value then b2123.Font.Color:=clRed
  else if b2122.Value=b2123.Value then b2123.Font.Color:=clBlack else b2123.Font.Color:=clGreen;
  if b2123.Value>b2124.Value then b2124.Font.Color:=clRed
  else if b2123.Value=b2124.Value then b2124.Font.Color:=clBlack else b2124.Font.Color:=clGreen;
  if b2124.Value>b2126.Value then b2126.Font.Color:=clRed
  else if b2124.Value=b2126.Value then b2126.Font.Color:=clBlack else b2126.Font.Color:=clGreen;
  if b2126.Value>b2127.Value then b2127.Font.Color:=clRed
  else if b2126.Value=b2127.Value then b2127.Font.Color:=clBlack else b2127.Font.Color:=clGreen;
  if b2127.Value>b2128.Value then b2128.Font.Color:=clRed
  else if b2127.Value=b2128.Value then b2128.Font.Color:=clBlack else b2128.Font.Color:=clGreen;

  //QN 7
  if b1132.Value>b1133.Value then b1133.Font.Color:=clRed
  else if b1132.Value=b1133.Value then b1133.Font.Color:=clBlack else b1133.Font.Color:=clGreen;
  if b1133.Value>b1134.Value then b1134.Font.Color:=clRed
  else if b1133.Value=b1134.Value then b1134.Font.Color:=clBlack else b1134.Font.Color:=clGreen;
  if b1134.Value>b1136.Value then b1136.Font.Color:=clRed
  else if b1134.Value=b1136.Value then b1136.Font.Color:=clBlack else b1136.Font.Color:=clGreen;
  if b1136.Value>b1137.Value then b1137.Font.Color:=clRed
  else if b1136.Value=b1137.Value then b1137.Font.Color:=clBlack else b1137.Font.Color:=clGreen;
  if b1137.Value>b1138.Value then b1138.Font.Color:=clRed
  else if b1137.Value=b1138.Value then b1138.Font.Color:=clBlack else b1138.Font.Color:=clGreen;

  //QN 8
  if b2132.Value>b2133.Value then b2133.Font.Color:=clRed
  else if b2132.Value=b2133.Value then b2133.Font.Color:=clBlack else b2133.Font.Color:=clGreen;
  if b2133.Value>b2134.Value then b2134.Font.Color:=clRed
  else if b2133.Value=b2134.Value then b2134.Font.Color:=clBlack else b2134.Font.Color:=clGreen;
  if b2134.Value>b2136.Value then b2136.Font.Color:=clRed
  else if b2134.Value=b2136.Value then b2136.Font.Color:=clBlack else b2136.Font.Color:=clGreen;
  if b2136.Value>b2137.Value then b2137.Font.Color:=clRed
  else if b2136.Value=b2137.Value then b2137.Font.Color:=clBlack else b2137.Font.Color:=clGreen;
  if b2137.Value>b2138.Value then b2138.Font.Color:=clRed
  else if b2137.Value=b2138.Value then b2138.Font.Color:=clBlack else b2138.Font.Color:=clGreen;

  //QN 9
  if b1142.Value>b1143.Value then b1143.Font.Color:=clRed
  else if b1142.Value=b1143.Value then b1143.Font.Color:=clBlack else b1143.Font.Color:=clGreen;
  if b1143.Value>b1144.Value then b1144.Font.Color:=clRed
  else if b1143.Value=b1144.Value then b1144.Font.Color:=clBlack else b1144.Font.Color:=clGreen;
  if b1144.Value>b1146.Value then b1146.Font.Color:=clRed
  else if b1144.Value=b1146.Value then b1146.Font.Color:=clBlack else b1146.Font.Color:=clGreen;
  if b1146.Value>b1147.Value then b1147.Font.Color:=clRed
  else if b1146.Value=b1147.Value then b1147.Font.Color:=clBlack else b1147.Font.Color:=clGreen;
  if b1147.Value>b1148.Value then b1148.Font.Color:=clRed
  else if b1147.Value=b1148.Value then b1148.Font.Color:=clBlack else b1148.Font.Color:=clGreen;

  //QN 10
  if b2142.Value>b2143.Value then b2143.Font.Color:=clRed
  else if b2142.Value=b2143.Value then b2143.Font.Color:=clBlack else b2143.Font.Color:=clGreen;
  if b2143.Value>b2144.Value then b2144.Font.Color:=clRed
  else if b2143.Value=b2144.Value then b2144.Font.Color:=clBlack else b2144.Font.Color:=clGreen;
  if b2144.Value>b2146.Value then b2146.Font.Color:=clRed
  else if b2144.Value=b2146.Value then b2146.Font.Color:=clBlack else b2146.Font.Color:=clGreen;
  if b2146.Value>b2147.Value then b2147.Font.Color:=clRed
  else if b2146.Value=b2147.Value then b2147.Font.Color:=clBlack else b2147.Font.Color:=clGreen;
  if b2147.Value>b2148.Value then b2148.Font.Color:=clRed
  else if b2147.Value=b2148.Value then b2148.Font.Color:=clBlack else b2148.Font.Color:=clGreen;

  bs4101.Caption:=b1101.Value+b1111.Value+b1121.Value+b1131.Value+b1141.Value;
  bs4102.Caption:=b1102.Value+b1112.Value+b1122.Value+b1132.Value+b1142.Value;
  bs4103.Caption:=b1103.value+b1113.value+b1123.value+b1133.value+b1143.value;
  bs4104.Caption:=b1104.value+b1114.value+b1124.value+b1134.value+b1144.value;
  bs4105.Caption:=b1105.value+b1115.value+b1125.value+b1135.value+b1145.value;
  bs4106.Caption:=b1106.value+b1116.value+b1126.value+b1136.value+b1146.value;
  bs4107.Caption:=b1107.value+b1112.value+b1127.value+b1137.value+b1147.value;
  bs4108.Caption:=b1108.value+b1113.value+b1128.value+b1138.value+b1148.value;

  bs4201.Caption:=b2101.Value+b2111.Value+b2121.Value+b2131.Value+b2141.Value;
  bs4202.Caption:=b2102.Value+b2112.Value+b2122.Value+b2132.Value+b2142.Value;
  bs4203.Caption:=b2103.value+b2113.value+b2123.value+b2133.value+b2143.value;
  bs4204.Caption:=b2104.value+b2114.value+b2124.value+b2134.value+b2144.value;
  bs4205.Caption:=b2105.value+b2115.value+b2125.value+b2135.value+b2145.value;
  bs4206.Caption:=b2106.value+b2116.value+b2126.value+b2136.value+b2146.value;
  bs4207.Caption:=b2107.value+b2112.value+b2127.value+b2137.value+b2147.value;
  bs4208.Caption:=b2108.value+b2113.value+b2128.value+b2138.value+b2148.value;

  bs0034.Caption:=b1108.value+b1113.value+b1128.value+b1138.value+b1148.value+b2108.value+b2113.value+b2128.value+b2138.value+b2148.value;

  if bs4102.caption>bs4103.Caption then bs4103.Font.Color:=clRed
  else if bs4102.Caption=bs4103.Caption then bs4103.Font.Color:=clBlack else bs4103.Font.Color:=clGreen;
  if bs4103.caption>bs4104.Caption then bs4104.Font.Color:=clRed
  else if bs4103.Caption=bs4104.Caption then bs4104.Font.Color:=clBlack else bs4104.Font.Color:=clGreen;
  if bs4104.caption>bs4106.Caption then bs4106.Font.Color:=clRed
  else if bs4104.Caption=bs4106.Caption then bs4106.Font.Color:=clBlack else bs4106.Font.Color:=clGreen;
  if bs4106.caption>bs4107.Caption then bs4107.Font.Color:=clRed
  else if bs4106.Caption=bs4107.Caption then bs4107.Font.Color:=clBlack else bs4107.Font.Color:=clGreen;
  if bs4107.caption>bs4108.Caption then bs4108.Font.Color:=clRed
  else if bs4107.Caption=bs4108.Caption then bs4108.Font.Color:=clBlack else bs4108.Font.Color:=clGreen;

  if bs4202.caption>bs4203.Caption then bs4203.Font.Color:=clRed
  else if bs4202.Caption=bs4203.Caption then bs4203.Font.Color:=clBlack else bs4203.Font.Color:=clGreen;
  if bs4203.caption>bs4204.Caption then bs4204.Font.Color:=clRed
  else if bs4203.Caption=bs4204.Caption then bs4204.Font.Color:=clBlack else bs4204.Font.Color:=clGreen;
  if bs4204.caption>bs4206.Caption then bs4206.Font.Color:=clRed
  else if bs4204.Caption=bs4206.Caption then bs4206.Font.Color:=clBlack else bs4206.Font.Color:=clGreen;
  if bs4206.caption>bs4207.Caption then bs4207.Font.Color:=clRed
  else if bs4206.Caption=bs4207.Caption then bs4207.Font.Color:=clBlack else bs4207.Font.Color:=clGreen;
  if bs4207.caption>bs4208.Caption then bs4208.Font.Color:=clRed
  else if bs4207.Caption=bs4208.Caption then bs4208.Font.Color:=clBlack else bs4208.Font.Color:=clGreen;

  if bd005.Value<0 then begin
    bd005.Font.Color:=clRed;
    bp005.Font.Color:=clRed;
  end else if bd005.Value=0 then begin
    bd005.Font.Color:=clBlack;
    bp005.Font.Color:=clBlack;
  end else begin
    bd005.Font.Color:=clGreen;
    bp005.Font.Color:=clBlack;
  end;
  if bq005.Value>0 then
  bp005.Caption:='('+formatfloat('0.0%',bd005.Value*100.0/bq005.Value)+')'
  else bp005.Caption:='(0.0%)';
end;

procedure Tfrmpdnactd1.ppGroupFooterBand8BeforePrint(Sender: TObject);
begin
  b1061.Visible:=false;b1062.Visible:=false;b1063.Visible:=false;b1064.Visible:=false;b1066.Visible:=false;b1067.Visible:=false;b1068.Visible:=false;
  b2061.Visible:=false;b2062.Visible:=false;b2063.Visible:=false;b2064.Visible:=false;b2066.Visible:=false;b2067.Visible:=false;b2068.Visible:=false;
  b1065.Visible:=false;b2065.Visible:=false;
  b1071.Visible:=false;b1072.Visible:=false;b1073.Visible:=false;b1074.Visible:=false;b1076.Visible:=false;b1077.Visible:=false;b1078.Visible:=false;
  b2071.Visible:=false;b2072.Visible:=false;b2073.Visible:=false;b2074.Visible:=false;b2076.Visible:=false;b2077.Visible:=false;b2078.Visible:=false;
  b1075.Visible:=false;b2075.Visible:=false;
  b1081.Visible:=false;b1082.Visible:=false;b1083.Visible:=false;b1084.Visible:=false;b1086.Visible:=false;b1087.Visible:=false;b1088.Visible:=false;
  b2081.Visible:=false;b2082.Visible:=false;b2083.Visible:=false;b2084.Visible:=false;b2086.Visible:=false;b2087.Visible:=false;b2088.Visible:=false;
  b1085.Visible:=false;b2085.Visible:=false;
  b1091.Visible:=false;b1092.Visible:=false;b1093.Visible:=false;b1094.Visible:=false;b1096.Visible:=false;b1097.Visible:=false;b1098.Visible:=false;
  b2091.Visible:=false;b2092.Visible:=false;b2093.Visible:=false;b2094.Visible:=false;b2096.Visible:=false;b2097.Visible:=false;b2098.Visible:=false;
  b1095.Visible:=false;b2095.Visible:=false;
  if rwo401.Caption>'' then begin
    b1061.Visible:=true;b1062.Visible:=true;b1063.Visible:=true;b1064.Visible:=true;b1066.Visible:=true;b1067.Visible:=true;b1068.Visible:=true;
    b1065.Visible:=true;
  end;
  if rwo402.Caption>'' then begin
    b2061.Visible:=true;b2062.Visible:=true;b2063.Visible:=true;b2064.Visible:=true;b2066.Visible:=true;b2067.Visible:=true;b2068.Visible:=true;
    b2065.Visible:=true;
  end;
  if rwo411.Caption>'' then begin
    b1071.Visible:=true;b1072.Visible:=true;b1073.Visible:=true;b1074.Visible:=true;b1076.Visible:=true;b1077.Visible:=true;b1078.Visible:=true;
    b1075.Visible:=true;
  end;
  if rwo412.Caption>'' then begin
    b2071.Visible:=true;b2072.Visible:=true;b2073.Visible:=true;b2074.Visible:=true;b2076.Visible:=true;b2077.Visible:=true;b2078.Visible:=true;
    b2075.Visible:=true;
  end;
  if rwo421.Caption>'' then begin
    b1081.Visible:=true;b1082.Visible:=true;b1083.Visible:=true;b1084.Visible:=true;b1086.Visible:=true;b1087.Visible:=true;b1088.Visible:=true;
    b1085.Visible:=true;
  end;
  if rwo422.Caption>'' then begin
    b2081.Visible:=true;b2082.Visible:=true;b2083.Visible:=true;b2084.Visible:=true;b2086.Visible:=true;b2087.Visible:=true;b2088.Visible:=true;
    b2085.Visible:=true;
  end;
  if rwo431.Caption>'' then begin
    b1091.Visible:=true;b1092.Visible:=true;b1093.Visible:=true;b1094.Visible:=true;b1096.Visible:=true;b1097.Visible:=true;b1098.Visible:=true;
    b1095.Visible:=true;
  end;
  if rwo432.Caption>'' then begin
    b2091.Visible:=true;b2092.Visible:=true;b2093.Visible:=true;b2094.Visible:=true;b2096.Visible:=true;b2097.Visible:=true;b2098.Visible:=true;
    b2095.Visible:=true;
  end;

  //QN 1
  if b1062.Value>b1065.Value then b1065.Font.Color:=clRed
  else if b1062.Value=b1065.Value then b1065.Font.Color:=clBlack else b1065.Font.Color:=clGreen;
  if b1065.Value>b1063.Value then b1063.Font.Color:=clRed
  else if b1065.Value=b1063.Value then b1063.Font.Color:=clBlack else b1063.Font.Color:=clGreen;
  if b1063.Value>b1064.Value then b1064.Font.Color:=clRed
  else if b1063.Value=b1064.Value then b1064.Font.Color:=clBlack else b1064.Font.Color:=clGreen;
  if b1064.Value>b1066.Value then b1066.Font.Color:=clRed
  else if b1064.Value=b1066.Value then b1066.Font.Color:=clBlack else b1066.Font.Color:=clGreen;
  if b1066.Value>b1067.Value then b1067.Font.Color:=clRed
  else if b1066.Value=b1067.Value then b1067.Font.Color:=clBlack else b1067.Font.Color:=clGreen;
  if b1067.Value>b1068.Value then b1068.Font.Color:=clRed
  else if b1067.Value=b1068.Value then b1068.Font.Color:=clBlack else b1068.Font.Color:=clGreen;

  //QN 2
  if b2062.Value>b2065.Value then b2065.Font.Color:=clRed
  else if b2062.Value=b2065.Value then b2065.Font.Color:=clBlack else b2065.Font.Color:=clGreen;
  if b2065.Value>b2063.Value then b2063.Font.Color:=clRed
  else if b2065.Value=b2063.Value then b2063.Font.Color:=clBlack else b2063.Font.Color:=clGreen;
  if b2063.Value>b2064.Value then b2064.Font.Color:=clRed
  else if b2063.Value=b2064.Value then b2064.Font.Color:=clBlack else b2064.Font.Color:=clGreen;
  if b2064.Value>b2066.Value then b2066.Font.Color:=clRed
  else if b2064.Value=b2066.Value then b2066.Font.Color:=clBlack else b2066.Font.Color:=clGreen;
  if b2066.Value>b2067.Value then b2067.Font.Color:=clRed
  else if b2066.Value=b2067.Value then b2067.Font.Color:=clBlack else b2067.Font.Color:=clGreen;
  if b2067.Value>b2068.Value then b2068.Font.Color:=clRed
  else if b2067.Value=b2068.Value then b2068.Font.Color:=clBlack else b2068.Font.Color:=clGreen;

  //QN 3
  if b1072.Value>b1075.Value then b1075.Font.Color:=clRed
  else if b1072.Value=b1075.Value then b1075.Font.Color:=clBlack else b1075.Font.Color:=clGreen;
  if b1075.Value>b1073.Value then b1073.Font.Color:=clRed
  else if b1075.Value=b1073.Value then b1073.Font.Color:=clBlack else b1073.Font.Color:=clGreen;
  if b1073.Value>b1074.Value then b1074.Font.Color:=clRed
  else if b1073.Value=b1074.Value then b1074.Font.Color:=clBlack else b1074.Font.Color:=clGreen;
  if b1074.Value>b1076.Value then b1076.Font.Color:=clRed
  else if b1074.Value=b1076.Value then b1076.Font.Color:=clBlack else b1076.Font.Color:=clGreen;
  if b1076.Value>b1077.Value then b1077.Font.Color:=clRed
  else if b1076.Value=b1077.Value then b1077.Font.Color:=clBlack else b1077.Font.Color:=clGreen;
  if b1077.Value>b1078.Value then b1078.Font.Color:=clRed
  else if b1077.Value=b1078.Value then b1078.Font.Color:=clBlack else b1078.Font.Color:=clGreen;

  //QN 4
  if b2072.Value>b2075.Value then b2075.Font.Color:=clRed
  else if b2072.Value=b2075.Value then b2075.Font.Color:=clBlack else b2075.Font.Color:=clGreen;
  if b2075.Value>b2073.Value then b2073.Font.Color:=clRed
  else if b2075.Value=b2073.Value then b2073.Font.Color:=clBlack else b2073.Font.Color:=clGreen;
  if b2073.Value>b2074.Value then b2074.Font.Color:=clRed
  else if b2073.Value=b2074.Value then b2074.Font.Color:=clBlack else b2074.Font.Color:=clGreen;
  if b2074.Value>b2076.Value then b2076.Font.Color:=clRed
  else if b2074.Value=b2076.Value then b2076.Font.Color:=clBlack else b2076.Font.Color:=clGreen;
  if b2076.Value>b2077.Value then b2077.Font.Color:=clRed
  else if b2076.Value=b2077.Value then b2077.Font.Color:=clBlack else b2077.Font.Color:=clGreen;
  if b2077.Value>b2078.Value then b2078.Font.Color:=clRed
  else if b2077.Value=b2078.Value then b2078.Font.Color:=clBlack else b2078.Font.Color:=clGreen;

  //QN 5
  if b1082.Value>b1085.Value then b1085.Font.Color:=clRed
  else if b1082.Value=b1085.Value then b1085.Font.Color:=clBlack else b1085.Font.Color:=clGreen;
  if b1085.Value>b1083.Value then b1083.Font.Color:=clRed
  else if b1085.Value=b1083.Value then b1083.Font.Color:=clBlack else b1083.Font.Color:=clGreen;
  if b1083.Value>b1084.Value then b1084.Font.Color:=clRed
  else if b1083.Value=b1084.Value then b1084.Font.Color:=clBlack else b1084.Font.Color:=clGreen;
  if b1084.Value>b1086.Value then b1086.Font.Color:=clRed
  else if b1084.Value=b1086.Value then b1086.Font.Color:=clBlack else b1086.Font.Color:=clGreen;
  if b1086.Value>b1087.Value then b1087.Font.Color:=clRed
  else if b1086.Value=b1087.Value then b1087.Font.Color:=clBlack else b1087.Font.Color:=clGreen;
  if b1087.Value>b1088.Value then b1088.Font.Color:=clRed
  else if b1087.Value=b1088.Value then b1088.Font.Color:=clBlack else b1088.Font.Color:=clGreen;

  //QN 6
  if b2082.Value>b2085.Value then b2085.Font.Color:=clRed
  else if b2082.Value=b2085.Value then b2085.Font.Color:=clBlack else b2085.Font.Color:=clGreen;
  if b2085.Value>b2083.Value then b2083.Font.Color:=clRed
  else if b2085.Value=b2083.Value then b2083.Font.Color:=clBlack else b2083.Font.Color:=clGreen;
  if b2083.Value>b2084.Value then b2084.Font.Color:=clRed
  else if b2083.Value=b2084.Value then b2084.Font.Color:=clBlack else b2084.Font.Color:=clGreen;
  if b2084.Value>b2086.Value then b2086.Font.Color:=clRed
  else if b2084.Value=b2086.Value then b2086.Font.Color:=clBlack else b2086.Font.Color:=clGreen;
  if b2086.Value>b2087.Value then b2087.Font.Color:=clRed
  else if b2086.Value=b2087.Value then b2087.Font.Color:=clBlack else b2087.Font.Color:=clGreen;
  if b2087.Value>b2088.Value then b2088.Font.Color:=clRed
  else if b2087.Value=b2088.Value then b2088.Font.Color:=clBlack else b2088.Font.Color:=clGreen;

  //QN 7
  if b1092.Value>b1095.Value then b1095.Font.Color:=clRed
  else if b1092.Value=b1095.Value then b1095.Font.Color:=clBlack else b1095.Font.Color:=clGreen;
  if b1095.Value>b1093.Value then b1093.Font.Color:=clRed
  else if b1095.Value=b1093.Value then b1093.Font.Color:=clBlack else b1093.Font.Color:=clGreen;
  if b1093.Value>b1094.Value then b1094.Font.Color:=clRed
  else if b1093.Value=b1094.Value then b1094.Font.Color:=clBlack else b1094.Font.Color:=clGreen;
  if b1094.Value>b1096.Value then b1096.Font.Color:=clRed
  else if b1094.Value=b1096.Value then b1096.Font.Color:=clBlack else b1096.Font.Color:=clGreen;
  if b1096.Value>b1097.Value then b1097.Font.Color:=clRed
  else if b1096.Value=b1097.Value then b1097.Font.Color:=clBlack else b1097.Font.Color:=clGreen;
  if b1097.Value>b1098.Value then b1098.Font.Color:=clRed
  else if b1097.Value=b1098.Value then b1098.Font.Color:=clBlack else b1098.Font.Color:=clGreen;

  //QN 8
  if b2092.Value>b2095.Value then b2095.Font.Color:=clRed
  else if b2092.Value=b2095.Value then b2095.Font.Color:=clBlack else b2095.Font.Color:=clGreen;
  if b2095.Value>b2093.Value then b2093.Font.Color:=clRed
  else if b2095.Value=b2093.Value then b2093.Font.Color:=clBlack else b2093.Font.Color:=clGreen;
  if b2093.Value>b2094.Value then b2094.Font.Color:=clRed
  else if b2093.Value=b2094.Value then b2094.Font.Color:=clBlack else b2094.Font.Color:=clGreen;
  if b2094.Value>b2096.Value then b2096.Font.Color:=clRed
  else if b2094.Value=b2096.Value then b2096.Font.Color:=clBlack else b2096.Font.Color:=clGreen;
  if b2096.Value>b2097.Value then b2097.Font.Color:=clRed
  else if b2096.Value=b2097.Value then b2097.Font.Color:=clBlack else b2097.Font.Color:=clGreen;
  if b2097.Value>b2098.Value then b2098.Font.Color:=clRed
  else if b2097.Value=b2098.Value then b2098.Font.Color:=clBlack else b2098.Font.Color:=clGreen;

  bs3101.Caption:=b1061.Value+b1071.Value+b1081.Value+b1091.Value;
  bs3102.Caption:=b1062.Value+b1072.Value+b1082.Value+b1092.Value;
  bs3103.Caption:=b1063.value+b1073.value+b1083.value+b1093.value;
  bs3104.Caption:=b1064.value+b1074.value+b1084.value+b1094.value;
  bs3105.Caption:=b1065.value+b1075.value+b1085.value+b1095.value;
  bs3106.Caption:=b1066.value+b1076.value+b1086.value+b1096.value;
  bs3107.Caption:=b1067.value+b1077.value+b1087.value+b1097.value;
  bs3108.Caption:=b1068.value+b1078.value+b1088.value+b1098.value;

  bs3201.Caption:=b2061.Value+b2071.Value+b2081.Value+b2091.Value;
  bs3202.Caption:=b2062.Value+b2072.Value+b2082.Value+b2092.Value;
  bs3203.Caption:=b2063.value+b2073.value+b2083.value+b2093.value;
  bs3204.Caption:=b2064.value+b2074.value+b2084.value+b2094.value;
  bs3205.Caption:=b2065.value+b2075.value+b2085.value+b2095.value;
  bs3206.Caption:=b2066.value+b2076.value+b2086.value+b2096.value;
  bs3207.Caption:=b2067.value+b2077.value+b2087.value+b2097.value;
  bs3208.Caption:=b2068.value+b2078.value+b2088.value+b2098.value;

  bs0024.Caption:=b1068.value+b1078.value+b1088.value+b1098.value+b2068.value+b2078.value+b2088.value+b2098.value;

  if bs3102.caption>bs3105.Caption then bs3105.Font.Color:=clRed
  else if bs3102.Caption=bs3105.Caption then bs3105.Font.Color:=clBlack else bs3105.Font.Color:=clGreen;
  if bs3105.caption>bs3103.Caption then bs3103.Font.Color:=clRed
  else if bs3105.Caption=bs3103.Caption then bs3103.Font.Color:=clBlack else bs3103.Font.Color:=clGreen;
  if bs3103.caption>bs3104.Caption then bs3104.Font.Color:=clRed
  else if bs3103.Caption=bs3104.Caption then bs3104.Font.Color:=clBlack else bs3104.Font.Color:=clGreen;
  if bs3104.caption>bs3106.Caption then bs3106.Font.Color:=clRed
  else if bs3104.Caption=bs3106.Caption then bs3106.Font.Color:=clBlack else bs3106.Font.Color:=clGreen;
  if bs3106.caption>bs3107.Caption then bs3107.Font.Color:=clRed
  else if bs3106.Caption=bs3107.Caption then bs3107.Font.Color:=clBlack else bs3107.Font.Color:=clGreen;
  if bs3107.caption>bs3108.Caption then bs3108.Font.Color:=clRed
  else if bs3107.Caption=bs3108.Caption then bs3108.Font.Color:=clBlack else bs3108.Font.Color:=clGreen;

  if bs3202.caption>bs3205.Caption then bs3205.Font.Color:=clRed
  else if bs3202.Caption=bs3205.Caption then bs3205.Font.Color:=clBlack else bs3205.Font.Color:=clGreen;
  if bs3205.caption>bs3203.Caption then bs3203.Font.Color:=clRed
  else if bs3205.Caption=bs3203.Caption then bs3203.Font.Color:=clBlack else bs3203.Font.Color:=clGreen;
  if bs3203.caption>bs3204.Caption then bs3204.Font.Color:=clRed
  else if bs3203.Caption=bs3204.Caption then bs3204.Font.Color:=clBlack else bs3204.Font.Color:=clGreen;
  if bs3204.caption>bs3206.Caption then bs3206.Font.Color:=clRed
  else if bs3204.Caption=bs3206.Caption then bs3206.Font.Color:=clBlack else bs3206.Font.Color:=clGreen;
  if bs3206.caption>bs3207.Caption then bs3207.Font.Color:=clRed
  else if bs3206.Caption=bs3207.Caption then bs3207.Font.Color:=clBlack else bs3207.Font.Color:=clGreen;
  if bs3207.caption>bs3208.Caption then bs3208.Font.Color:=clRed
  else if bs3207.Caption=bs3208.Caption then bs3208.Font.Color:=clBlack else bs3208.Font.Color:=clGreen;

  if bd004.Value<0 then begin
    bd004.Font.Color:=clRed;
    bp004.Font.Color:=clRed;
  end else if bd004.Value=0 then begin
    bd004.Font.Color:=clBlack;
    bp004.Font.Color:=clBlack;
  end else begin
    bd004.Font.Color:=clGreen;
    bp004.Font.Color:=clBlack;
  end;
  if bq004.Value>0 then
  bp004.Caption:='('+formatfloat('0.0%',bd004.Value*100.0/bq004.Value)+')'
  else bp004.Caption:='(0.0%)';
end;

procedure Tfrmpdnactd1.ppGroupFooterBand7BeforePrint(Sender: TObject);
begin
  b1031.Visible:=false;b1032.Visible:=false;b1033.Visible:=false;b1034.Visible:=false;b1036.Visible:=false;b1037.Visible:=false;b1038.Visible:=false;
  b2031.Visible:=false;b2032.Visible:=false;b2033.Visible:=false;b2034.Visible:=false;b2036.Visible:=false;b2037.Visible:=false;b2038.Visible:=false;
  b1035.Visible:=false;b2035.Visible:=false;
  b1041.Visible:=false;b1042.Visible:=false;b1043.Visible:=false;b1044.Visible:=false;b1046.Visible:=false;b1047.Visible:=false;b1048.Visible:=false;
  b2041.Visible:=false;b2042.Visible:=false;b2043.Visible:=false;b2044.Visible:=false;b2046.Visible:=false;b2047.Visible:=false;b2048.Visible:=false;
  b1045.Visible:=false;b2045.Visible:=false;
  b1051.Visible:=false;b1052.Visible:=false;b1053.Visible:=false;b1054.Visible:=false;b1056.Visible:=false;b1057.Visible:=false;b1058.Visible:=false;
  b2051.Visible:=false;b2052.Visible:=false;b2053.Visible:=false;b2054.Visible:=false;b2056.Visible:=false;b2057.Visible:=false;b2058.Visible:=false;
  b1055.Visible:=false;b2055.Visible:=false;
  if rwo301.Caption>'' then begin
    b1031.Visible:=true;b1032.Visible:=true;b1033.Visible:=true;b1034.Visible:=true;b1036.Visible:=true;b1037.Visible:=true;b1038.Visible:=true;
    b1035.Visible:=true;
  end;
  if rwo302.Caption>'' then begin
    b2031.Visible:=true;b2032.Visible:=true;b2033.Visible:=true;b2034.Visible:=true;b2036.Visible:=true;b2037.Visible:=true;b2038.Visible:=true;
    b2035.Visible:=true;
  end;
  if rwo311.Caption>'' then begin
    b1041.Visible:=true;b1042.Visible:=true;b1043.Visible:=true;b1044.Visible:=true;b1046.Visible:=true;b1047.Visible:=true;b1048.Visible:=true;
    b1045.Visible:=true;
  end;
  if rwo312.Caption>'' then begin
    b2041.Visible:=true;b2042.Visible:=true;b2043.Visible:=true;b2044.Visible:=true;b2046.Visible:=true;b2047.Visible:=true;b2048.Visible:=true;
    b2045.Visible:=true;
  end;
  if rwo321.Caption>'' then begin
    b1051.Visible:=true;b1052.Visible:=true;b1053.Visible:=true;b1054.Visible:=true;b1056.Visible:=true;b1057.Visible:=true;b1058.Visible:=true;
    b1055.Visible:=true;
  end;
  if rwo322.Caption>'' then begin
    b2051.Visible:=true;b2052.Visible:=true;b2053.Visible:=true;b2054.Visible:=true;b2056.Visible:=true;b2057.Visible:=true;b2058.Visible:=true;
    b2055.Visible:=true;
  end;

  //QN 1
  if b1032.Value>b1035.Value then b1035.Font.Color:=clRed
  else if b1032.Value=b1035.Value then b1035.Font.Color:=clBlack else b1035.Font.Color:=clGreen;
  if b1035.Value>b1033.Value then b1033.Font.Color:=clRed
  else if b1035.Value=b1033.Value then b1033.Font.Color:=clBlack else b1033.Font.Color:=clGreen;
  if b1033.Value>b1034.Value then b1034.Font.Color:=clRed
  else if b1033.Value=b1034.Value then b1034.Font.Color:=clBlack else b1034.Font.Color:=clGreen;
  if b1034.Value>b1036.Value then b1036.Font.Color:=clRed
  else if b1034.Value=b1036.Value then b1036.Font.Color:=clBlack else b1036.Font.Color:=clGreen;
  if b1036.Value>b1037.Value then b1037.Font.Color:=clRed
  else if b1036.Value=b1037.Value then b1037.Font.Color:=clBlack else b1037.Font.Color:=clGreen;
  if b1037.Value>b1038.Value then b1038.Font.Color:=clRed
  else if b1037.Value=b1038.Value then b1038.Font.Color:=clBlack else b1038.Font.Color:=clGreen;

  //QN 2
  if b2032.Value>b2035.Value then b2035.Font.Color:=clRed
  else if b2032.Value=b2035.Value then b2035.Font.Color:=clBlack else b2035.Font.Color:=clGreen;
  if b2035.Value>b2033.Value then b2033.Font.Color:=clRed
  else if b2035.Value=b2033.Value then b2033.Font.Color:=clBlack else b2033.Font.Color:=clGreen;
  if b2033.Value>b2034.Value then b2034.Font.Color:=clRed
  else if b2033.Value=b2034.Value then b2034.Font.Color:=clBlack else b2034.Font.Color:=clGreen;
  if b2034.Value>b2036.Value then b2036.Font.Color:=clRed
  else if b2034.Value=b2036.Value then b2036.Font.Color:=clBlack else b2036.Font.Color:=clGreen;
  if b2036.Value>b2037.Value then b2037.Font.Color:=clRed
  else if b2036.Value=b2037.Value then b2037.Font.Color:=clBlack else b2037.Font.Color:=clGreen;
  if b2037.Value>b2038.Value then b2038.Font.Color:=clRed
  else if b2037.Value=b2038.Value then b2038.Font.Color:=clBlack else b2038.Font.Color:=clGreen;

  //QN 3
  if b1042.Value>b1045.Value then b1045.Font.Color:=clRed
  else if b1042.Value=b1045.Value then b1045.Font.Color:=clBlack else b1045.Font.Color:=clGreen;
  if b1045.Value>b1043.Value then b1043.Font.Color:=clRed
  else if b1045.Value=b1043.Value then b1043.Font.Color:=clBlack else b1043.Font.Color:=clGreen;
  if b1043.Value>b1044.Value then b1044.Font.Color:=clRed
  else if b1043.Value=b1044.Value then b1044.Font.Color:=clBlack else b1044.Font.Color:=clGreen;
  if b1044.Value>b1046.Value then b1046.Font.Color:=clRed
  else if b1044.Value=b1046.Value then b1046.Font.Color:=clBlack else b1046.Font.Color:=clGreen;
  if b1046.Value>b1047.Value then b1047.Font.Color:=clRed
  else if b1046.Value=b1047.Value then b1047.Font.Color:=clBlack else b1047.Font.Color:=clGreen;
  if b1047.Value>b1048.Value then b1048.Font.Color:=clRed
  else if b1047.Value=b1048.Value then b1048.Font.Color:=clBlack else b1048.Font.Color:=clGreen;

  //QN 4
  if b2042.Value>b2045.Value then b2045.Font.Color:=clRed
  else if b2042.Value=b2045.Value then b2045.Font.Color:=clBlack else b2045.Font.Color:=clGreen;
  if b2045.Value>b2043.Value then b2043.Font.Color:=clRed
  else if b2045.Value=b2043.Value then b2043.Font.Color:=clBlack else b2043.Font.Color:=clGreen;
  if b2043.Value>b2044.Value then b2044.Font.Color:=clRed
  else if b2043.Value=b2044.Value then b2044.Font.Color:=clBlack else b2044.Font.Color:=clGreen;
  if b2044.Value>b2046.Value then b2046.Font.Color:=clRed
  else if b2044.Value=b2046.Value then b2046.Font.Color:=clBlack else b2046.Font.Color:=clGreen;
  if b2046.Value>b2047.Value then b2047.Font.Color:=clRed
  else if b2046.Value=b2047.Value then b2047.Font.Color:=clBlack else b2047.Font.Color:=clGreen;
  if b2047.Value>b2048.Value then b2048.Font.Color:=clRed
  else if b2047.Value=b2048.Value then b2048.Font.Color:=clBlack else b2048.Font.Color:=clGreen;

  //QN 5
  if b1052.Value>b1055.Value then b1055.Font.Color:=clRed
  else if b1052.Value=b1055.Value then b1055.Font.Color:=clBlack else b1055.Font.Color:=clGreen;
  if b1055.Value>b1053.Value then b1053.Font.Color:=clRed
  else if b1055.Value=b1053.Value then b1053.Font.Color:=clBlack else b1053.Font.Color:=clGreen;
  if b1053.Value>b1054.Value then b1054.Font.Color:=clRed
  else if b1053.Value=b1054.Value then b1054.Font.Color:=clBlack else b1054.Font.Color:=clGreen;
  if b1054.Value>b1056.Value then b1056.Font.Color:=clRed
  else if b1054.Value=b1056.Value then b1056.Font.Color:=clBlack else b1056.Font.Color:=clGreen;
  if b1056.Value>b1057.Value then b1057.Font.Color:=clRed
  else if b1056.Value=b1057.Value then b1057.Font.Color:=clBlack else b1057.Font.Color:=clGreen;
  if b1057.Value>b1058.Value then b1058.Font.Color:=clRed
  else if b1057.Value=b1058.Value then b1058.Font.Color:=clBlack else b1058.Font.Color:=clGreen;

  //QN 6
  if b2052.Value>b2055.Value then b2055.Font.Color:=clRed
  else if b2052.Value=b2055.Value then b2055.Font.Color:=clBlack else b2055.Font.Color:=clGreen;
  if b2055.Value>b2053.Value then b2053.Font.Color:=clRed
  else if b2055.Value=b2053.Value then b2053.Font.Color:=clBlack else b2053.Font.Color:=clGreen;
  if b2053.Value>b2054.Value then b2054.Font.Color:=clRed
  else if b2053.Value=b2054.Value then b2054.Font.Color:=clBlack else b2054.Font.Color:=clGreen;
  if b2054.Value>b2056.Value then b2056.Font.Color:=clRed
  else if b2054.Value=b2056.Value then b2056.Font.Color:=clBlack else b2056.Font.Color:=clGreen;
  if b2056.Value>b2057.Value then b2057.Font.Color:=clRed
  else if b2056.Value=b2057.Value then b2057.Font.Color:=clBlack else b2057.Font.Color:=clGreen;
  if b2057.Value>b2058.Value then b2058.Font.Color:=clRed
  else if b2057.Value=b2058.Value then b2058.Font.Color:=clBlack else b2058.Font.Color:=clGreen;

  bs2101.Caption:=b1031.Value+b1041.Value+b1051.Value;
  bs2102.Caption:=b1032.Value+b1042.Value+b1052.Value;
  bs2103.Caption:=b1033.value+b1043.value+b1053.value;
  bs2104.Caption:=b1034.value+b1044.value+b1054.value;
  bs2105.Caption:=b1035.value+b1045.value+b1055.value;
  bs2106.Caption:=b1036.value+b1046.value+b1056.value;
  bs2107.Caption:=b1037.value+b1047.value+b1057.value;
  bs2108.Caption:=b1038.value+b1048.value+b1058.value;

  bs2201.Caption:=b2031.Value+b2041.Value+b2051.Value;
  bs2202.Caption:=b2032.Value+b2042.Value+b2052.Value;
  bs2203.Caption:=b2033.value+b2043.value+b2053.value;
  bs2204.Caption:=b2034.value+b2044.value+b2054.value;
  bs2205.Caption:=b2035.value+b2045.value+b2055.value;
  bs2206.Caption:=b2036.value+b2046.value+b2056.value;
  bs2207.Caption:=b2037.value+b2047.value+b2057.value;
  bs2208.Caption:=b2038.value+b2048.value+b2058.value;

  bs0014.Caption:=b1038.value+b1048.value+b1058.value+b2038.value+b2048.value+b2058.value;

  if bs2102.caption>bs2105.Caption then bs2105.Font.Color:=clRed
  else if bs2102.Caption=bs2105.Caption then bs2105.Font.Color:=clBlack else bs2105.Font.Color:=clGreen;
  if bs2105.caption>bs2103.Caption then bs2103.Font.Color:=clRed
  else if bs2105.Caption=bs2103.Caption then bs2103.Font.Color:=clBlack else bs2103.Font.Color:=clGreen;
  if bs2103.caption>bs2104.Caption then bs2104.Font.Color:=clRed
  else if bs2103.Caption=bs2104.Caption then bs2104.Font.Color:=clBlack else bs2104.Font.Color:=clGreen;
  if bs2104.caption>bs2106.Caption then bs2106.Font.Color:=clRed
  else if bs2104.Caption=bs2106.Caption then bs2106.Font.Color:=clBlack else bs2106.Font.Color:=clGreen;
  if bs2106.caption>bs2107.Caption then bs2107.Font.Color:=clRed
  else if bs2106.Caption=bs2107.Caption then bs2107.Font.Color:=clBlack else bs2107.Font.Color:=clGreen;
  if bs2107.caption>bs2108.Caption then bs2108.Font.Color:=clRed
  else if bs2107.Caption=bs2108.Caption then bs2108.Font.Color:=clBlack else bs2108.Font.Color:=clGreen;

  if bs2202.caption>bs2205.Caption then bs2205.Font.Color:=clRed
  else if bs2202.Caption=bs2205.Caption then bs2205.Font.Color:=clBlack else bs2205.Font.Color:=clGreen;
  if bs2205.caption>bs2203.Caption then bs2203.Font.Color:=clRed
  else if bs2205.Caption=bs2203.Caption then bs2203.Font.Color:=clBlack else bs2203.Font.Color:=clGreen;
  if bs2203.caption>bs2204.Caption then bs2204.Font.Color:=clRed
  else if bs2203.Caption=bs2204.Caption then bs2204.Font.Color:=clBlack else bs2204.Font.Color:=clGreen;
  if bs2204.caption>bs2206.Caption then bs2206.Font.Color:=clRed
  else if bs2204.Caption=bs2206.Caption then bs2206.Font.Color:=clBlack else bs2206.Font.Color:=clGreen;
  if bs2206.caption>bs2207.Caption then bs2207.Font.Color:=clRed
  else if bs2206.Caption=bs2207.Caption then bs2207.Font.Color:=clBlack else bs2207.Font.Color:=clGreen;
  if bs2207.caption>bs2208.Caption then bs2208.Font.Color:=clRed
  else if bs2207.Caption=bs2208.Caption then bs2208.Font.Color:=clBlack else bs2208.Font.Color:=clGreen;

  if bd003.Value<0 then begin
    bd003.Font.Color:=clRed;
    bp003.Font.Color:=clRed;
  end else if bd003.Value=0 then begin
    bd003.Font.Color:=clBlack;
    bp003.Font.Color:=clBlack;
  end else begin
    bd003.Font.Color:=clGreen;
    bp003.Font.Color:=clBlack;
  end;
  if bq003.Value>0 then
  bp003.Caption:='('+formatfloat('0.0%',bd003.Value*100.0/bq003.Value)+')'
  else bp003.Caption:='(0.0%)';
end;

procedure Tfrmpdnactd1.ppGroupFooterBand6BeforePrint(Sender: TObject);
begin
  b1011.Visible:=false;b1012.Visible:=false;b1013.Visible:=false;b1014.Visible:=false;b1016.Visible:=false;b1017.Visible:=false;b1018.Visible:=false;
  b2011.Visible:=false;b2012.Visible:=false;b2013.Visible:=false;b2014.Visible:=false;b2016.Visible:=false;b2017.Visible:=false;b2018.Visible:=false;
  b1015.Visible:=false;b2015.Visible:=false;
  b1021.Visible:=false;b1022.Visible:=false;b1023.Visible:=false;b1024.Visible:=false;b1026.Visible:=false;b1027.Visible:=false;b1028.Visible:=false;
  b2021.Visible:=false;b2022.Visible:=false;b2023.Visible:=false;b2024.Visible:=false;b2026.Visible:=false;b2027.Visible:=false;b2028.Visible:=false;
  b1025.Visible:=false;b2025.Visible:=false;
  if rwo201.Caption>'' then begin
    b1011.Visible:=true;b1012.Visible:=true;b1013.Visible:=true;b1014.Visible:=true;b1016.Visible:=true;b1017.Visible:=true;b1018.Visible:=true;
    b1015.Visible:=true;
  end;
  if rwo202.Caption>'' then begin
    b2011.Visible:=true;b2012.Visible:=true;b2013.Visible:=true;b2014.Visible:=true;b2016.Visible:=true;b2017.Visible:=true;b2018.Visible:=true;
    b2015.Visible:=true;
  end;
  if rwo211.Caption>'' then begin
    b1021.Visible:=true;b1022.Visible:=true;b1023.Visible:=true;b1024.Visible:=true;b1026.Visible:=true;b1027.Visible:=true;b1028.Visible:=true;
    b1025.Visible:=true;
  end;
  if rwo212.Caption>'' then begin
    b2021.Visible:=true;b2022.Visible:=true;b2023.Visible:=true;b2024.Visible:=true;b2026.Visible:=true;b2027.Visible:=true;b2028.Visible:=true;
    b2025.Visible:=true;
  end;

  //QN 1
  if b1012.Value>b1015.Value then b1015.Font.Color:=clRed
  else if b1012.Value=b1015.Value then b1015.Font.Color:=clBlack else b1015.Font.Color:=clGreen;
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
  if b2012.Value>b2015.Value then b2015.Font.Color:=clRed
  else if b2012.Value=b2015.Value then b2015.Font.Color:=clBlack else b2015.Font.Color:=clGreen;
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

  //QN 3
  if b1022.Value>b1025.Value then b1025.Font.Color:=clRed
  else if b1022.Value=b1025.Value then b1025.Font.Color:=clBlack else b1025.Font.Color:=clGreen;
  if b1025.Value>b1023.Value then b1023.Font.Color:=clRed
  else if b1025.Value=b1023.Value then b1023.Font.Color:=clBlack else b1023.Font.Color:=clGreen;
  if b1023.Value>b1024.Value then b1024.Font.Color:=clRed
  else if b1023.Value=b1024.Value then b1024.Font.Color:=clBlack else b1024.Font.Color:=clGreen;
  if b1024.Value>b1026.Value then b1026.Font.Color:=clRed
  else if b1024.Value=b1026.Value then b1026.Font.Color:=clBlack else b1026.Font.Color:=clGreen;
  if b1026.Value>b1027.Value then b1027.Font.Color:=clRed
  else if b1026.Value=b1027.Value then b1027.Font.Color:=clBlack else b1027.Font.Color:=clGreen;
  if b1027.Value>b1028.Value then b1028.Font.Color:=clRed
  else if b1027.Value=b1028.Value then b1028.Font.Color:=clBlack else b1028.Font.Color:=clGreen;

  //QN 4
  if b2022.Value>b2025.Value then b2025.Font.Color:=clRed
  else if b2022.Value=b2025.Value then b2025.Font.Color:=clBlack else b2025.Font.Color:=clGreen;
  if b2025.Value>b2023.Value then b2023.Font.Color:=clRed
  else if b2025.Value=b2023.Value then b2023.Font.Color:=clBlack else b2023.Font.Color:=clGreen;
  if b2023.Value>b2024.Value then b2024.Font.Color:=clRed
  else if b2023.Value=b2024.Value then b2024.Font.Color:=clBlack else b2024.Font.Color:=clGreen;
  if b2024.Value>b2026.Value then b2026.Font.Color:=clRed
  else if b2024.Value=b2026.Value then b2026.Font.Color:=clBlack else b2026.Font.Color:=clGreen;
  if b2026.Value>b2027.Value then b2027.Font.Color:=clRed
  else if b2026.Value=b2027.Value then b2027.Font.Color:=clBlack else b2027.Font.Color:=clGreen;
  if b2027.Value>b2028.Value then b2028.Font.Color:=clRed
  else if b2027.Value=b2028.Value then b2028.Font.Color:=clBlack else b2028.Font.Color:=clGreen;

  bs1101.Caption:=b1011.Value+b1021.Value;
  bs1102.Caption:=b1012.Value+b1022.Value;
  bs1103.Caption:=b1013.value+b1023.value;
  bs1104.Caption:=b1014.value+b1024.value;
  bs1105.Caption:=b1015.value+b1025.value;
  bs1106.Caption:=b1016.value+b1026.value;
  bs1107.Caption:=b1017.value+b1027.value;
  bs1108.Caption:=b1018.value+b1028.value;

  bs1201.Caption:=b2011.Value+b2021.Value;
  bs1202.Caption:=b2012.Value+b2022.Value;
  bs1203.Caption:=b2013.value+b2023.value;
  bs1204.Caption:=b2014.value+b2024.value;
  bs1205.Caption:=b2015.value+b2025.value;
  bs1206.Caption:=b2016.value+b2026.value;
  bs1207.Caption:=b2017.value+b2027.value;
  bs1208.Caption:=b2018.value+b2028.value;
  bs0004.Caption:=b1018.value+b1028.Value+b2018.Value+b2028.Value;

  if bs1102.caption>bs1105.Caption then bs1105.Font.Color:=clRed
  else if bs1102.Caption=bs1105.Caption then bs1105.Font.Color:=clBlack else bs1105.Font.Color:=clGreen;
  if bs1105.caption>bs1103.Caption then bs1103.Font.Color:=clRed
  else if bs1105.Caption=bs1103.Caption then bs1103.Font.Color:=clBlack else bs1103.Font.Color:=clGreen;
  if bs1103.caption>bs1104.Caption then bs1104.Font.Color:=clRed
  else if bs1103.Caption=bs1104.Caption then bs1104.Font.Color:=clBlack else bs1104.Font.Color:=clGreen;
  if bs1104.caption>bs1106.Caption then bs1106.Font.Color:=clRed
  else if bs1104.Caption=bs1106.Caption then bs1106.Font.Color:=clBlack else bs1106.Font.Color:=clGreen;
  if bs1106.caption>bs1107.Caption then bs1107.Font.Color:=clRed
  else if bs1106.Caption=bs1107.Caption then bs1107.Font.Color:=clBlack else bs1107.Font.Color:=clGreen;
  if bs1107.caption>bs1108.Caption then bs1108.Font.Color:=clRed
  else if bs1107.Caption=bs1108.Caption then bs1108.Font.Color:=clBlack else bs1108.Font.Color:=clGreen;

  if bs1202.caption>bs1205.Caption then bs1205.Font.Color:=clRed
  else if bs1202.Caption=bs1205.Caption then bs1205.Font.Color:=clBlack else bs1205.Font.Color:=clGreen;
  if bs1205.caption>bs1203.Caption then bs1203.Font.Color:=clRed
  else if bs1205.Caption=bs1203.Caption then bs1203.Font.Color:=clBlack else bs1203.Font.Color:=clGreen;
  if bs1203.caption>bs1204.Caption then bs1204.Font.Color:=clRed
  else if bs1203.Caption=bs1204.Caption then bs1204.Font.Color:=clBlack else bs1204.Font.Color:=clGreen;
  if bs1204.caption>bs1206.Caption then bs1206.Font.Color:=clRed
  else if bs1204.Caption=bs1206.Caption then bs1206.Font.Color:=clBlack else bs1206.Font.Color:=clGreen;
  if bs1206.caption>bs1207.Caption then bs1207.Font.Color:=clRed
  else if bs1206.Caption=bs1207.Caption then bs1207.Font.Color:=clBlack else bs1207.Font.Color:=clGreen;
  if bs1207.caption>bs1208.Caption then bs1208.Font.Color:=clRed
  else if bs1207.Caption=bs1208.Caption then bs1208.Font.Color:=clBlack else bs1208.Font.Color:=clGreen;

  if bd002.Value<0 then begin
    bd002.Font.Color:=clRed;
    bp002.Font.Color:=clRed;
  end else if bd002.Value=0 then begin
    bd002.Font.Color:=clBlack;
    bp002.Font.Color:=clBlack;
  end else begin
    bd002.Font.Color:=clGreen;
    bp002.Font.Color:=clBlack;
  end;
  if bq002.Value>0 then
  bp002.Caption:='('+formatfloat('0.0%',bd002.Value*100.0/bq002.Value)+')'
  else bp002.Caption:='(0.0%)';
end;

procedure Tfrmpdnactd1.ppGroupFooterBand5BeforePrint(Sender: TObject);
begin
  b1001.Visible:=false;b1002.Visible:=false;b1003.Visible:=false;b1004.Visible:=false;b1006.Visible:=false;b1007.Visible:=false;b1008.Visible:=false;
  b2001.Visible:=false;b2002.Visible:=false;b2003.Visible:=false;b2004.Visible:=false;b2006.Visible:=false;b2007.Visible:=false;b2008.Visible:=false;
  b1005.Visible:=false;b2005.Visible:=false;

  if rwo001.Caption>'' then begin
    b1001.Visible:=true;b1002.Visible:=true;b1003.Visible:=true;b1004.Visible:=true;b1006.Visible:=true;b1007.Visible:=true;b1008.Visible:=true;
    b1005.Visible:=true;
  end;
  if rwo002.Caption>'' then begin
    b2001.Visible:=true;b2002.Visible:=true;b2003.Visible:=true;b2004.Visible:=true;b2006.Visible:=true;b2007.Visible:=true;b2008.Visible:=true;
    b2005.Visible:=true;
  end;

  //QN 1
  if b1002.Value>b1005.Value then b1005.Font.Color:=clRed
  else if b1002.Value=b1005.Value then b1005.Font.Color:=clBlack else b1005.Font.Color:=clGreen;
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
  if b2002.Value>b2005.Value then b2005.Font.Color:=clRed
  else if b2002.Value=b2005.Value then b2005.Font.Color:=clBlack else b2005.Font.Color:=clGreen;
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

  b0004.Caption:=inttostr(b1008.Value+b2008.Value);

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
end;

procedure Tfrmpdnactd1.ppSummaryBand3BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select sum(q1qty+q3qty+q5qty+q7qty+q9qty+q11qty+q13qty+q15qty+q17qty) as q01,'
                +'sum(q1pqty+q3pqty+q5pqty+q7pqty+q9pqty+q11pqty+q13pqty+q15pqty+q17pqty) as q02,'
                +'sum(q1t1qty+q3t1qty+q5t1qty+q7t1qty+q9t1qty+q11t1qty+q13t1qty+q15t1qty+q17t1qty) as q03,'
                +'sum(q1t2qty+q3t2qty+q5t2qty+q7t2qty+q9t2qty+q11t2qty+q13t2qty+q15t2qty+q17t2qty) as q04,'
                +'sum(q1pkqty+q3pkqty+q5pkqty+q7pkqty+q9pkqty+q11pkqty+q13pkqty+q15pkqty+q17pkqty) as q05,'
                +'sum(q1t3qty+q3t3qty+q5t3qty+q7t3qty+q9t3qty+q11t3qty+q13t3qty+q15t3qty+q17t3qty) as q06,'
                +'sum(q1aqqty+q3aqqty+q5aqqty+q7aqqty+q9aqqty+q11aqqty+q13aqqty+q15aqqty+q17aqqty) as q07,'
                +'sum(q1t4qty+q3t4qty+q5t4qty+q7t4qty+q9t4qty+q11t4qty+q13t4qty+q15t4qty+q17t4qty) as q08,'
                +'sum(q2qty+q4qty+q6qty+q8qty+q10qty+q12qty+q14qty+q16qty+q18qty) as q11,'
                +'sum(q2pqty+q4pqty+q6pqty+q8pqty+q10pqty+q12pqty+q14pqty+q16pqty+q18pqty) as q12,'
                +'sum(q2t1qty+q4t1qty+q6t1qty+q8t1qty+q10t1qty+q12t1qty+q14t1qty+q16t1qty+q18t1qty) as q13,'
                +'sum(q2t2qty+q4t2qty+q6t2qty+q8t2qty+q10t2qty+q12t2qty+q14t2qty+q16t2qty+q18t2qty) as q14,'
                +'sum(q2pkqty+q4pkqty+q6pkqty+q8pkqty+q10pkqty+q12pkqty+q14pkqty+q16pkqty+q18pkqty) as q15,'
                +'sum(q2t3qty+q4t3qty+q6t3qty+q8t3qty+q10t3qty+q12t3qty+q14t3qty+q16t3qty+q18t3qty) as q16,'
                +'sum(q2aqqty+q4aqqty+q6aqqty+q8aqqty+q10aqqty+q12aqqty+q14aqqty+q16aqqty+q18aqqty) as q17,'
                +'sum(q2t4qty+q4t4qty+q6t4qty+q8t4qty+q10t4qty+q12t4qty+q14t4qty+q16t4qty+q18t4qty) as q18 '
                +'from tbl_pdn_voyage_d where seq=:x2 and seq1=:x3';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('q01').isnull then tb1001.Caption:=fieldbyname('q01').asstring else tb1001.Caption:='';
    if not fieldbyname('q02').isnull then tb1002.Caption:=fieldbyname('q02').asstring else tb1002.Caption:='';
    if not fieldbyname('q03').isnull then tb1003.Caption:=fieldbyname('q03').asstring else tb1003.Caption:='';
    if not fieldbyname('q04').isnull then tb1004.Caption:=fieldbyname('q04').asstring else tb1004.Caption:='';
    if not fieldbyname('q05').isnull then tb1005.Caption:=fieldbyname('q05').asstring else tb1005.Caption:='';
    if not fieldbyname('q06').isnull then tb1006.Caption:=fieldbyname('q06').asstring else tb1006.Caption:='';
    if not fieldbyname('q07').isnull then tb1007.Caption:=fieldbyname('q07').asstring else tb1007.Caption:='';
    if not fieldbyname('q08').isnull then tb1008.Caption:=fieldbyname('q08').asstring else tb1008.Caption:='';

    if not fieldbyname('q11').isnull then tb2001.Caption:=fieldbyname('q11').asstring else tb2001.Caption:='';
    if not fieldbyname('q12').isnull then tb2002.Caption:=fieldbyname('q12').asstring else tb2002.Caption:='';
    if not fieldbyname('q13').isnull then tb2003.Caption:=fieldbyname('q13').asstring else tb2003.Caption:='';
    if not fieldbyname('q14').isnull then tb2004.Caption:=fieldbyname('q14').asstring else tb2004.Caption:='';
    if not fieldbyname('q15').isnull then tb2005.Caption:=fieldbyname('q15').asstring else tb2005.Caption:='';
    if not fieldbyname('q16').isnull then tb2006.Caption:=fieldbyname('q16').asstring else tb2006.Caption:='';
    if not fieldbyname('q17').isnull then tb2007.Caption:=fieldbyname('q17').asstring else tb2007.Caption:='';
    if not fieldbyname('q18').isnull then tb2008.Caption:=fieldbyname('q18').asstring else tb2008.Caption:='';
    tb0004.Caption:=inttostr(fieldbyname('q08').value+fieldbyname('q18').value);

    if fieldbyname('q02').value>fieldbyname('q05').value then tb1005.Font.color:=clRed
    else if fieldbyname('q02').value=fieldbyname('q05').value then tb1005.Font.color:=clBlack else tb1005.Font.Color:=clGreen;
    if fieldbyname('q05').value>fieldbyname('q03').value then tb1003.Font.color:=clRed
    else if fieldbyname('q05').value=fieldbyname('q03').value then tb1003.Font.color:=clBlack else tb1003.Font.Color:=clGreen;
    if fieldbyname('q03').value>fieldbyname('q04').value then tb1004.Font.color:=clRed
    else if fieldbyname('q03').value=fieldbyname('q04').value then tb1004.Font.Color:=clBlack else tb1004.Font.Color:=clGreen;
    if fieldbyname('q04').value>fieldbyname('q06').value then tb1006.Font.color:=clRed
    else if fieldbyname('q04').value=fieldbyname('q06').value then tb1006.Font.Color:=clBlack else tb1006.Font.Color:=clGreen;
    if fieldbyname('q06').value>fieldbyname('q07').value then tb1007.Font.color:=clRed
    else if fieldbyname('q06').value=fieldbyname('q07').value then tb1007.Font.Color:=clBlack else tb1007.Font.Color:=clGreen;
    if fieldbyname('q07').value>fieldbyname('q08').value then tb1008.Font.color:=clRed
    else if fieldbyname('q07').value=fieldbyname('q08').value then tb1008.Font.Color:=clBlack else tb1008.Font.Color:=clGreen;

    if fieldbyname('q12').value>fieldbyname('q15').value then tb2005.Font.color:=clRed
    else if fieldbyname('q12').value=fieldbyname('q15').value then tb2005.Font.color:=clBlack else tb2005.Font.Color:=clGreen;
    if fieldbyname('q15').value>fieldbyname('q13').value then tb2003.Font.color:=clRed
    else if fieldbyname('q15').value=fieldbyname('q13').value then tb2003.Font.color:=clBlack else tb2003.Font.Color:=clGreen;
    if fieldbyname('q13').value>fieldbyname('q14').value then tb2004.Font.color:=clRed
    else if fieldbyname('q13').value=fieldbyname('q14').value then tb2004.Font.Color:=clBlack else tb2004.Font.Color:=clGreen;
    if fieldbyname('q14').value>fieldbyname('q16').value then tb2006.Font.color:=clRed
    else if fieldbyname('q14').value=fieldbyname('q16').value then tb2006.Font.Color:=clBlack else tb2006.Font.Color:=clGreen;
    if fieldbyname('q16').value>fieldbyname('q17').value then tb2007.Font.color:=clRed
    else if fieldbyname('q16').value=fieldbyname('q17').value then tb2007.Font.Color:=clBlack else tb2007.Font.Color:=clGreen;
    if fieldbyname('q17').value>fieldbyname('q18').value then tb2008.Font.color:=clRed
    else if fieldbyname('q17').value=fieldbyname('q18').value then tb2008.Font.Color:=clBlack else tb2008.Font.Color:=clGreen;

  end;

  if tbd001.Value<0 then begin
    tbd001.Font.Color:=clRed;
    tbp001.Font.Color:=clRed;
  end else if sbd01.Value=0 then begin
    tbd001.Font.Color:=clBlack;
    tbp001.Font.Color:=clBlack;
  end else begin
    tbd001.Font.Color:=clGreen;
    tbp001.Font.Color:=clGreen;
  end;
  if tbq001.Value>0 then
  tbp001.Caption:='('+formatfloat('0.0%',tbd001.Value*100.0/tbq001.Value)+')'
  else tbp001.Caption:='(0.0%)';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,count(distinct acol) as s2,count(distinct j_no) as s3,count(distinct j2_job) as s4,'
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

procedure Tfrmpdnactd1.ppGroupHeaderBand11BeforePrint(Sender: TObject);
begin
  s1001.Visible:=false;s1002.Visible:=false;s1003.Visible:=false;s1004.Visible:=false;s1006.Visible:=false;s1007.Visible:=false;s1008.Visible:=false;
  s2001.Visible:=false;s2002.Visible:=false;s2003.Visible:=false;s2004.Visible:=false;s2006.Visible:=false;s2007.Visible:=false;s2008.Visible:=false;
  s1101.Visible:=false;s1102.Visible:=false;s1103.Visible:=false;s1104.Visible:=false;s1106.Visible:=false;s1107.Visible:=false;s1108.Visible:=false;
  s2101.Visible:=false;s2102.Visible:=false;s2103.Visible:=false;s2104.Visible:=false;s2106.Visible:=false;s2107.Visible:=false;s2108.Visible:=false;
  s1005.Visible:=false;s1105.Visible:=false;s2005.Visible:=false;s2105.Visible:=false;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_pdn_voyage_h where seq=:x1 and seq1=:x2 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+'''';// and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      s1001.Visible:=true;s1002.Visible:=true;s1003.Visible:=true;s1004.Visible:=true;s1006.Visible:=true;s1007.Visible:=true;s1008.Visible:=true;
      s1101.Visible:=true;s1102.Visible:=true;s1103.Visible:=true;s1104.Visible:=true;s1106.Visible:=true;s1107.Visible:=true;s1108.Visible:=true;
      s1005.Visible:=true;s1105.Visible:=true;
    end;
    if not fieldbyname('qn2').isnull then begin
      s2001.Visible:=true;s2002.Visible:=true;s2003.Visible:=true;s2004.Visible:=true;s2006.Visible:=true;s2007.Visible:=true;s2008.Visible:=true;
      s2101.Visible:=true;s2102.Visible:=true;s2103.Visible:=true;s2104.Visible:=true;s2106.Visible:=true;s2107.Visible:=true;s2108.Visible:=true;
      s2005.Visible:=true;s2105.Visible:=true;
    end;
  end;
end;

procedure Tfrmpdnactd1.ppGroupFooterBand11BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select sum(q1qty+q3qty+q5qty+q7qty+q9qty+q11qty+q13qty+q15qty+q17qty) as q01,'
                +'sum(q1pqty+q3pqty+q5pqty+q7pqty+q9pqty+q11pqty+q13pqty+q15pqty+q17pqty) as q02,'
                +'sum(q1t1qty+q3t1qty+q5t1qty+q7t1qty+q9t1qty+q11t1qty+q13t1qty+q15t1qty+q17t1qty) as q03,'
                +'sum(q1t2qty+q3t2qty+q5t2qty+q7t2qty+q9t2qty+q11t2qty+q13t2qty+q15t2qty+q17t2qty) as q04,'
                +'sum(q1pkqty+q3pkqty+q5pkqty+q7pkqty+q9pkqty+q11pkqty+q13pkqty+q15pkqty+q17pkqty) as q05,'
                +'sum(q1t3qty+q3t3qty+q5t3qty+q7t3qty+q9t3qty+q11t3qty+q13t3qty+q15t3qty+q17t3qty) as q06,'
                +'sum(q1aqqty+q3aqqty+q5aqqty+q7aqqty+q9aqqty+q11aqqty+q13aqqty+q15aqqty+q17aqqty) as q07,'
                +'sum(q1t4qty+q3t4qty+q5t4qty+q7t4qty+q9t4qty+q11t4qty+q13t4qty+q15t4qty+q17t4qty) as q08,'
                +'sum(q2qty+q4qty+q6qty+q8qty+q10qty+q12qty+q14qty+q16qty+q18qty) as q11,'
                +'sum(q2pqty+q4pqty+q6pqty+q8pqty+q10pqty+q12pqty+q14pqty+q16pqty+q18pqty) as q12,'
                +'sum(q2t1qty+q4t1qty+q6t1qty+q8t1qty+q10t1qty+q12t1qty+q14t1qty+q16t1qty+q18t1qty) as q13,'
                +'sum(q2t2qty+q4t2qty+q6t2qty+q8t2qty+q10t2qty+q12t2qty+q14t2qty+q16t2qty+q18t2qty) as q14,'
                +'sum(q2pkqty+q4pkqty+q6pkqty+q8pkqty+q10pkqty+q12pkqty+q14pkqty+q16pkqty+q18pkqty) as q15,'
                +'sum(q2t3qty+q4t3qty+q6t3qty+q8t3qty+q10t3qty+q12t3qty+q14t3qty+q16t3qty+q18t3qty) as q16,'
                +'sum(q2aqqty+q4aqqty+q6aqqty+q8aqqty+q10aqqty+q12aqqty+q14aqqty+q16aqqty+q18aqqty) as q17,'
                +'sum(q2t4qty+q4t4qty+q6t4qty+q8t4qty+q10t4qty+q12t4qty+q14t4qty+q16t4qty+q18t4qty) as q18 '
                +'from tbl_pdn_voyage_d where seq=:x2 and seq1=:x3 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('q01').isnull then t1001.Caption:=fieldbyname('q01').asstring else t1001.Caption:='';
    if not fieldbyname('q02').isnull then t1002.Caption:=fieldbyname('q02').asstring else t1002.Caption:='';
    if not fieldbyname('q03').isnull then t1003.Caption:=fieldbyname('q03').asstring else t1003.Caption:='';
    if not fieldbyname('q04').isnull then t1004.Caption:=fieldbyname('q04').asstring else t1004.Caption:='';
    if not fieldbyname('q05').isnull then t1005.Caption:=fieldbyname('q05').asstring else t1005.Caption:='';
    if not fieldbyname('q06').isnull then t1006.Caption:=fieldbyname('q06').asstring else t1006.Caption:='';
    if not fieldbyname('q07').isnull then t1007.Caption:=fieldbyname('q07').asstring else t1007.Caption:='';
    if not fieldbyname('q08').isnull then t1008.Caption:=fieldbyname('q08').asstring else t1008.Caption:='';

    if not fieldbyname('q11').isnull then t2001.Caption:=fieldbyname('q11').asstring else t2001.Caption:='';
    if not fieldbyname('q12').isnull then t2002.Caption:=fieldbyname('q12').asstring else t2002.Caption:='';
    if not fieldbyname('q13').isnull then t2003.Caption:=fieldbyname('q13').asstring else t2003.Caption:='';
    if not fieldbyname('q14').isnull then t2004.Caption:=fieldbyname('q14').asstring else t2004.Caption:='';
    if not fieldbyname('q15').isnull then t2005.Caption:=fieldbyname('q15').asstring else t2005.Caption:='';
    if not fieldbyname('q16').isnull then t2006.Caption:=fieldbyname('q16').asstring else t2006.Caption:='';
    if not fieldbyname('q17').isnull then t2007.Caption:=fieldbyname('q17').asstring else t2007.Caption:='';
    if not fieldbyname('q18').isnull then t2008.Caption:=fieldbyname('q18').asstring else t2008.Caption:='';
    t0004.Caption:=inttostr(fieldbyname('q08').value+fieldbyname('q18').value);

    if fieldbyname('q02').value>fieldbyname('q05').value then t1005.Font.color:=clRed
    else if fieldbyname('q02').value=fieldbyname('q05').value then t1005.Font.color:=clBlack else t1005.Font.Color:=clGreen;
    if fieldbyname('q05').value>fieldbyname('q03').value then t1003.Font.color:=clRed
    else if fieldbyname('q05').value=fieldbyname('q03').value then t1003.Font.color:=clBlack else t1003.Font.Color:=clGreen;
    if fieldbyname('q03').value>fieldbyname('q04').value then t1004.Font.color:=clRed
    else if fieldbyname('q03').value=fieldbyname('q04').value then t1004.Font.Color:=clBlack else t1004.Font.Color:=clGreen;
    if fieldbyname('q04').value>fieldbyname('q06').value then t1006.Font.color:=clRed
    else if fieldbyname('q04').value=fieldbyname('q06').value then t1006.Font.Color:=clBlack else t1006.Font.Color:=clGreen;
    if fieldbyname('q06').value>fieldbyname('q07').value then t1007.Font.color:=clRed
    else if fieldbyname('q06').value=fieldbyname('q07').value then t1007.Font.Color:=clBlack else t1007.Font.Color:=clGreen;
    if fieldbyname('q07').value>fieldbyname('q08').value then t1008.Font.color:=clRed
    else if fieldbyname('q07').value=fieldbyname('q08').value then t1008.Font.Color:=clBlack else t1008.Font.Color:=clGreen;

    if fieldbyname('q12').value>fieldbyname('q15').value then t2005.Font.color:=clRed
    else if fieldbyname('q12').value=fieldbyname('q15').value then t2005.Font.color:=clBlack else t2005.Font.Color:=clGreen;
    if fieldbyname('q15').value>fieldbyname('q13').value then t2003.Font.color:=clRed
    else if fieldbyname('q15').value=fieldbyname('q13').value then t2003.Font.color:=clBlack else t2003.Font.Color:=clGreen;
    if fieldbyname('q13').value>fieldbyname('q14').value then t2004.Font.color:=clRed
    else if fieldbyname('q13').value=fieldbyname('q14').value then t2004.Font.Color:=clBlack else t2004.Font.Color:=clGreen;
    if fieldbyname('q14').value>fieldbyname('q16').value then t2006.Font.color:=clRed
    else if fieldbyname('q14').value=fieldbyname('q16').value then t2006.Font.Color:=clBlack else t2006.Font.Color:=clGreen;
    if fieldbyname('q16').value>fieldbyname('q17').value then t2007.Font.color:=clRed
    else if fieldbyname('q16').value=fieldbyname('q17').value then t2007.Font.Color:=clBlack else t2007.Font.Color:=clGreen;
    if fieldbyname('q17').value>fieldbyname('q18').value then t2008.Font.color:=clRed
    else if fieldbyname('q17').value=fieldbyname('q18').value then t2008.Font.Color:=clBlack else t2008.Font.Color:=clGreen;

  end;

  if td001.Value<0 then begin
    td001.Font.Color:=clRed;
    tp001.Font.Color:=clRed;
  end else if sbd01.Value=0 then begin
    td001.Font.Color:=clBlack;
    tp001.Font.Color:=clBlack;
  end else begin
    td001.Font.Color:=clGreen;
    tp001.Font.Color:=clGreen;
  end;
  if tq001.Value>0 then
  tp001.Caption:='('+formatfloat('0.0%',td001.Value*100.0/tq001.Value)+')'
  else tp001.Caption:='(0.0%)';
end;

procedure Tfrmpdnactd1.ppTitleBand1BeforePrint(Sender: TObject);
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

procedure Tfrmpdnactd1.ppGroupHeaderBand19BeforePrint(Sender: TObject);
var
  box1:integer;
  wght1,cbm1:double;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,count(distinct acol) as s2,count(distinct j_no) as s3,count(distinct j2_job) as s4,'
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
    else y005.caption:='';
  end;
end;

procedure Tfrmpdnactd1.ppDetailBand2BeforePrint(Sender: TObject);
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
  with query2 do begin
    close;
    params.clear;
    commandtext:='select sum(hqty) as d1,sum(swing) as d2 from tbl_pdn_writeoff where seq='+query5.fieldbyname('seq').asstring
                +' and j_no='''+query5.fieldbyname('j_no').value+''' and j2_job='''+query5.fieldbyname('j2_job').value
                +''' and rwo='''+query5.fieldbyname('rwo').value+''' and acol='''+query5.fieldbyname('acol').value+'''';
    open;
    if not fieldbyname('d1').isnull then dtl001.Caption:=fieldbyname('d1').asstring else dtl001.Caption:='0';
    if not fieldbyname('d2').isnull then dtl002.Caption:=fieldbyname('d2').asstring else dtl002.Caption:='0';
  end;
end;

procedure Tfrmpdnactd1.ppGroupFooterBand19BeforePrint(Sender: TObject);
var
  pqty,s1,s2,s3,s4:integer;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,count(distinct acol) as s2,count(distinct j_no) as s3,count(distinct j2_job) as s4,'
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
  with query2 do begin
    close;
    params.clear;
    commandtext:='select sum(a.hqty) as d1,sum(a.swing) as d2 from tbl_pdn_writeoff a,tbl_pdn_voyage_rwo b where a.seq=b.seq and a.j_no=b.j_no and a.j2_job=b.j2_job and a.rwo=b.rwo '
                +'and b.seq='+query5.fieldbyname('seq').asstring+' and b.seq1='+query5.fieldbyname('seq1').asstring;
    open;
    if not fieldbyname('d1').isnull then sh001.Caption:=fieldbyname('d1').asstring else sh001.Caption:='0';
    if not fieldbyname('d2').isnull then ss001.Caption:=fieldbyname('d2').asstring else ss001.Caption:='0';
  end;
end;

end.
