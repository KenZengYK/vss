unit pdnrpt8formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppRichTx, ppCtrls, ppReport, ppStrtch,
  ppSubRpt, ppVar, ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB,
  ppDBPipe, DB, DBClient, ppViewr, ppMemo, ppParameter;

type
  Tfrmpdnrpt8 = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    DataSource2: TDataSource;
    Query4: TClientDataSet;
    ppReport1: TppReport;
    ppLabel26: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppGroupFooterBand11: TppGroupFooterBand;
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
    ppLabel51: TppLabel;
    exfty002: TppLabel;
    ppLabel53: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
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
    ss303: TppLabel;
    ss304: TppLabel;
    ss306: TppLabel;
    ss308: TppLabel;
    srwo03: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ss318: TppLabel;
    ss301: TppLabel;
    ppLabel47: TppLabel;
    ss311: TppLabel;
    ss307: TppLabel;
    ss317: TppLabel;
    ss313: TppLabel;
    ss314: TppLabel;
    ss316: TppLabel;
    srwo01: TppLabel;
    srwo02: TppLabel;
    ss101: TppLabel;
    ss103: TppLabel;
    ss104: TppLabel;
    ss106: TppLabel;
    ss107: TppLabel;
    ss108: TppLabel;
    ss201: TppLabel;
    ss203: TppLabel;
    ss204: TppLabel;
    ss206: TppLabel;
    ss207: TppLabel;
    ss208: TppLabel;
    ss111: TppLabel;
    ss113: TppLabel;
    ss114: TppLabel;
    ss116: TppLabel;
    ss117: TppLabel;
    ss118: TppLabel;
    ss211: TppLabel;
    ss213: TppLabel;
    ss214: TppLabel;
    ss216: TppLabel;
    ss217: TppLabel;
    ss218: TppLabel;
    ppLabel29: TppLabel;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    ss202: TppLabel;
    ss212: TppLabel;
    ss302: TppLabel;
    ss312: TppLabel;
    ppLine20: TppLine;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    sdd01: TppDBText;
    sd103: TppLabel;
    sd104: TppLabel;
    sd106: TppLabel;
    sd108: TppLabel;
    sd203: TppLabel;
    sd204: TppLabel;
    sd206: TppLabel;
    sd208: TppLabel;
    sd303: TppLabel;
    sd304: TppLabel;
    sd306: TppLabel;
    sd308: TppLabel;
    sd101: TppLabel;
    sd201: TppLabel;
    sd301: TppLabel;
    sdp01: TppLabel;
    sd107: TppLabel;
    sd207: TppLabel;
    sd307: TppLabel;
    cstyle001: TppDBText;
    sd102: TppLabel;
    sd202: TppLabel;
    sd302: TppLabel;
    ppShape4: TppShape;
    ppLabel96: TppLabel;
    ppDBCalc2: TppDBCalc;
    sbq01: TppDBCalc;
    sbd01: TppDBCalc;
    sbp01: TppLabel;
    ppLabel30: TppLabel;
    ppMemo1: TppMemo;
    ppLabel31: TppLabel;
    ppMemo2: TppMemo;
    sb101: TppLabel;
    sb103: TppLabel;
    sb104: TppLabel;
    sb106: TppLabel;
    sb107: TppLabel;
    sb108: TppLabel;
    sb201: TppLabel;
    sb203: TppLabel;
    sb204: TppLabel;
    sb206: TppLabel;
    sb207: TppLabel;
    sb208: TppLabel;
    sb301: TppLabel;
    sb303: TppLabel;
    sb304: TppLabel;
    sb306: TppLabel;
    sb307: TppLabel;
    sb308: TppLabel;
    sb102: TppLabel;
    sb202: TppLabel;
    sb302: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppGroupFooterBand12: TppGroupFooterBand;
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
    s3003: TppLabel;
    s3004: TppLabel;
    s3006: TppLabel;
    s3008: TppLabel;
    rwo003: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    s3108: TppLabel;
    s3001: TppLabel;
    s3002: TppLabel;
    s3102: TppLabel;
    ppLabel39: TppLabel;
    s3101: TppLabel;
    s3007: TppLabel;
    s3107: TppLabel;
    s3103: TppLabel;
    s3104: TppLabel;
    s3106: TppLabel;
    rwo001: TppLabel;
    rwo002: TppLabel;
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
    ppShape5: TppShape;
    ppLabel34: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel50: TppLabel;
    s3203: TppLabel;
    s3204: TppLabel;
    s3206: TppLabel;
    s3208: TppLabel;
    rwo203: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    s3308: TppLabel;
    s3201: TppLabel;
    s3202: TppLabel;
    s3302: TppLabel;
    ppLabel66: TppLabel;
    s3301: TppLabel;
    s3207: TppLabel;
    s3307: TppLabel;
    s3303: TppLabel;
    s3304: TppLabel;
    s3306: TppLabel;
    rwo201: TppLabel;
    rwo202: TppLabel;
    s1201: TppLabel;
    s1202: TppLabel;
    s1203: TppLabel;
    s1204: TppLabel;
    s1206: TppLabel;
    s1207: TppLabel;
    s1208: TppLabel;
    s2201: TppLabel;
    s2202: TppLabel;
    s2203: TppLabel;
    s2204: TppLabel;
    s2206: TppLabel;
    s2207: TppLabel;
    s2208: TppLabel;
    s1301: TppLabel;
    s1302: TppLabel;
    s1303: TppLabel;
    s1304: TppLabel;
    s1306: TppLabel;
    s1307: TppLabel;
    s1308: TppLabel;
    s2301: TppLabel;
    s2302: TppLabel;
    s2303: TppLabel;
    s2304: TppLabel;
    s2306: TppLabel;
    s2307: TppLabel;
    s2308: TppLabel;
    ppLabel104: TppLabel;
    rwo211: TppLabel;
    rwo212: TppLabel;
    rwo213: TppLabel;
    ppShape6: TppShape;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel115: TppLabel;
    s3403: TppLabel;
    s3404: TppLabel;
    s3406: TppLabel;
    s3408: TppLabel;
    rwo303: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    s3508: TppLabel;
    s3401: TppLabel;
    s3402: TppLabel;
    s3502: TppLabel;
    ppLabel131: TppLabel;
    s3501: TppLabel;
    s3407: TppLabel;
    s3507: TppLabel;
    s3503: TppLabel;
    s3504: TppLabel;
    s3506: TppLabel;
    rwo301: TppLabel;
    rwo302: TppLabel;
    s1401: TppLabel;
    s1402: TppLabel;
    s1403: TppLabel;
    s1404: TppLabel;
    s1406: TppLabel;
    s1407: TppLabel;
    s1408: TppLabel;
    s2401: TppLabel;
    s2402: TppLabel;
    s2403: TppLabel;
    s2404: TppLabel;
    s2406: TppLabel;
    s2407: TppLabel;
    s2408: TppLabel;
    s1501: TppLabel;
    s1502: TppLabel;
    s1503: TppLabel;
    s1504: TppLabel;
    s1506: TppLabel;
    s1507: TppLabel;
    s1508: TppLabel;
    s2501: TppLabel;
    s2502: TppLabel;
    s2503: TppLabel;
    s2504: TppLabel;
    s2506: TppLabel;
    s2507: TppLabel;
    s2508: TppLabel;
    ppLabel168: TppLabel;
    rwo311: TppLabel;
    rwo312: TppLabel;
    rwo313: TppLabel;
    rwo321: TppLabel;
    rwo322: TppLabel;
    rwo323: TppLabel;
    ppShape7: TppShape;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel182: TppLabel;
    s3603: TppLabel;
    s3604: TppLabel;
    s3606: TppLabel;
    s3608: TppLabel;
    rwo403: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLabel193: TppLabel;
    s3708: TppLabel;
    s3601: TppLabel;
    s3602: TppLabel;
    s3702: TppLabel;
    ppLabel198: TppLabel;
    s3701: TppLabel;
    s3607: TppLabel;
    s3707: TppLabel;
    s3703: TppLabel;
    s3704: TppLabel;
    s3706: TppLabel;
    rwo401: TppLabel;
    rwo402: TppLabel;
    s1601: TppLabel;
    s1602: TppLabel;
    s1603: TppLabel;
    s1604: TppLabel;
    s1606: TppLabel;
    s1607: TppLabel;
    s1608: TppLabel;
    s2601: TppLabel;
    s2602: TppLabel;
    s2603: TppLabel;
    s2604: TppLabel;
    s2606: TppLabel;
    s2607: TppLabel;
    s2608: TppLabel;
    s1701: TppLabel;
    s1702: TppLabel;
    s1703: TppLabel;
    s1704: TppLabel;
    s1706: TppLabel;
    s1707: TppLabel;
    s1708: TppLabel;
    s2701: TppLabel;
    s2702: TppLabel;
    s2703: TppLabel;
    s2704: TppLabel;
    s2706: TppLabel;
    s2707: TppLabel;
    s2708: TppLabel;
    ppLabel235: TppLabel;
    rwo411: TppLabel;
    rwo412: TppLabel;
    rwo413: TppLabel;
    rwo421: TppLabel;
    rwo422: TppLabel;
    rwo423: TppLabel;
    rwo431: TppLabel;
    rwo432: TppLabel;
    rwo433: TppLabel;
    ppShape8: TppShape;
    ppLabel245: TppLabel;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppLabel251: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel252: TppLabel;
    s3803: TppLabel;
    s3804: TppLabel;
    s3806: TppLabel;
    s3808: TppLabel;
    rwo503: TppLabel;
    ppLabel258: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    s3908: TppLabel;
    s3801: TppLabel;
    s3802: TppLabel;
    s3902: TppLabel;
    ppLabel268: TppLabel;
    s3901: TppLabel;
    s3807: TppLabel;
    s3907: TppLabel;
    s3903: TppLabel;
    s3904: TppLabel;
    s3906: TppLabel;
    rwo501: TppLabel;
    rwo502: TppLabel;
    s1801: TppLabel;
    s1802: TppLabel;
    s1803: TppLabel;
    s1804: TppLabel;
    s1806: TppLabel;
    s1807: TppLabel;
    s1808: TppLabel;
    s2801: TppLabel;
    s2802: TppLabel;
    s2803: TppLabel;
    s2804: TppLabel;
    s2806: TppLabel;
    s2807: TppLabel;
    s2808: TppLabel;
    s1901: TppLabel;
    s1902: TppLabel;
    s1903: TppLabel;
    s1904: TppLabel;
    s1906: TppLabel;
    s1907: TppLabel;
    s1908: TppLabel;
    s2901: TppLabel;
    s2902: TppLabel;
    s2903: TppLabel;
    s2904: TppLabel;
    s2906: TppLabel;
    s2907: TppLabel;
    s2908: TppLabel;
    ppLabel305: TppLabel;
    rwo511: TppLabel;
    rwo512: TppLabel;
    rwo513: TppLabel;
    rwo521: TppLabel;
    rwo522: TppLabel;
    rwo523: TppLabel;
    rwo531: TppLabel;
    rwo532: TppLabel;
    rwo533: TppLabel;
    rwo541: TppLabel;
    rwo542: TppLabel;
    rwo543: TppLabel;
    ppShape9: TppShape;
    ppLabel318: TppLabel;
    ppLabel319: TppLabel;
    ppLabel320: TppLabel;
    ppLabel321: TppLabel;
    ppLabel322: TppLabel;
    ppLabel323: TppLabel;
    ppLabel324: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel325: TppLabel;
    s3a03: TppLabel;
    s3a04: TppLabel;
    s3a06: TppLabel;
    s3a08: TppLabel;
    rwo603: TppLabel;
    ppLabel331: TppLabel;
    ppLabel332: TppLabel;
    ppLabel333: TppLabel;
    ppLabel334: TppLabel;
    ppLabel335: TppLabel;
    ppLabel336: TppLabel;
    s3b08: TppLabel;
    s3a01: TppLabel;
    s3a02: TppLabel;
    s3b02: TppLabel;
    ppLabel341: TppLabel;
    s3b01: TppLabel;
    s3a07: TppLabel;
    s3b07: TppLabel;
    s3b03: TppLabel;
    s3b04: TppLabel;
    s3b06: TppLabel;
    rwo601: TppLabel;
    rwo602: TppLabel;
    s1a01: TppLabel;
    s1a02: TppLabel;
    s1a03: TppLabel;
    s1a04: TppLabel;
    s1a06: TppLabel;
    s1a07: TppLabel;
    s1a08: TppLabel;
    s2a01: TppLabel;
    s2a02: TppLabel;
    s2a03: TppLabel;
    s2a04: TppLabel;
    s2a06: TppLabel;
    s2a07: TppLabel;
    s2a08: TppLabel;
    s1b01: TppLabel;
    s1b02: TppLabel;
    s1b03: TppLabel;
    s1b04: TppLabel;
    s1b06: TppLabel;
    s1b07: TppLabel;
    s1b08: TppLabel;
    s2b01: TppLabel;
    s2b02: TppLabel;
    s2b03: TppLabel;
    s2b04: TppLabel;
    s2b06: TppLabel;
    s2b07: TppLabel;
    s2b08: TppLabel;
    ppLabel378: TppLabel;
    rwo611: TppLabel;
    rwo612: TppLabel;
    rwo613: TppLabel;
    rwo621: TppLabel;
    rwo622: TppLabel;
    rwo623: TppLabel;
    rwo631: TppLabel;
    rwo632: TppLabel;
    rwo633: TppLabel;
    rwo641: TppLabel;
    rwo642: TppLabel;
    rwo643: TppLabel;
    rwo651: TppLabel;
    rwo652: TppLabel;
    rwo653: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
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
    d3003: TppLabel;
    d3004: TppLabel;
    d3006: TppLabel;
    d3008: TppLabel;
    ppDBText9: TppDBText;
    d1001: TppLabel;
    d1002: TppLabel;
    d2002: TppLabel;
    d2001: TppLabel;
    d3001: TppLabel;
    d3002: TppLabel;
    dp001: TppLabel;
    d1007: TppLabel;
    d2007: TppLabel;
    d3007: TppLabel;
    ppDBText14: TppDBText;
    d1013: TppLabel;
    d1014: TppLabel;
    d1016: TppLabel;
    d1018: TppLabel;
    d2013: TppLabel;
    d2014: TppLabel;
    d2016: TppLabel;
    d2018: TppLabel;
    d3013: TppLabel;
    d3014: TppLabel;
    d3016: TppLabel;
    d3018: TppLabel;
    d1011: TppLabel;
    d1012: TppLabel;
    d2012: TppLabel;
    d2011: TppLabel;
    d3011: TppLabel;
    d3012: TppLabel;
    d1017: TppLabel;
    d2017: TppLabel;
    d3017: TppLabel;
    d1023: TppLabel;
    d1024: TppLabel;
    d1026: TppLabel;
    d1028: TppLabel;
    d2023: TppLabel;
    d2024: TppLabel;
    d2026: TppLabel;
    d2028: TppLabel;
    d3023: TppLabel;
    d3024: TppLabel;
    d3026: TppLabel;
    d3028: TppLabel;
    d1021: TppLabel;
    d1022: TppLabel;
    d2022: TppLabel;
    d2021: TppLabel;
    d3021: TppLabel;
    d3022: TppLabel;
    d1027: TppLabel;
    d2027: TppLabel;
    d3027: TppLabel;
    d1033: TppLabel;
    d1034: TppLabel;
    d1036: TppLabel;
    d1038: TppLabel;
    d2033: TppLabel;
    d2034: TppLabel;
    d2036: TppLabel;
    d2038: TppLabel;
    d3033: TppLabel;
    d3034: TppLabel;
    d3036: TppLabel;
    d3038: TppLabel;
    d1031: TppLabel;
    d1032: TppLabel;
    d2032: TppLabel;
    d2031: TppLabel;
    d3031: TppLabel;
    d3032: TppLabel;
    d1037: TppLabel;
    d2037: TppLabel;
    d3037: TppLabel;
    d1043: TppLabel;
    d1044: TppLabel;
    d1046: TppLabel;
    d1048: TppLabel;
    d2043: TppLabel;
    d2044: TppLabel;
    d2046: TppLabel;
    d2048: TppLabel;
    d3043: TppLabel;
    d3044: TppLabel;
    d3046: TppLabel;
    d3048: TppLabel;
    d1041: TppLabel;
    d1042: TppLabel;
    d2042: TppLabel;
    d2041: TppLabel;
    d3041: TppLabel;
    d3042: TppLabel;
    d1047: TppLabel;
    d2047: TppLabel;
    d3047: TppLabel;
    d1053: TppLabel;
    d1054: TppLabel;
    d1056: TppLabel;
    d1058: TppLabel;
    d2053: TppLabel;
    d2054: TppLabel;
    d2056: TppLabel;
    d2058: TppLabel;
    d3053: TppLabel;
    d3054: TppLabel;
    d3056: TppLabel;
    d3058: TppLabel;
    d1051: TppLabel;
    d1052: TppLabel;
    d2052: TppLabel;
    d2051: TppLabel;
    d3051: TppLabel;
    d3052: TppLabel;
    d1057: TppLabel;
    d2057: TppLabel;
    d3057: TppLabel;
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
    b3153: TppDBCalc;
    b3154: TppDBCalc;
    b3156: TppDBCalc;
    b3158: TppDBCalc;
    b1151: TppDBCalc;
    b1152: TppDBCalc;
    b2151: TppDBCalc;
    b2152: TppDBCalc;
    b3151: TppDBCalc;
    b3152: TppDBCalc;
    bp006: TppLabel;
    b1157: TppDBCalc;
    b2157: TppDBCalc;
    b3157: TppDBCalc;
    b1163: TppDBCalc;
    b1164: TppDBCalc;
    b1166: TppDBCalc;
    b1168: TppDBCalc;
    b2163: TppDBCalc;
    b2164: TppDBCalc;
    b2166: TppDBCalc;
    b2168: TppDBCalc;
    b3163: TppDBCalc;
    b3164: TppDBCalc;
    b3166: TppDBCalc;
    b3168: TppDBCalc;
    b1161: TppDBCalc;
    b1162: TppDBCalc;
    b2161: TppDBCalc;
    b2162: TppDBCalc;
    b3161: TppDBCalc;
    b3162: TppDBCalc;
    b1167: TppDBCalc;
    b2167: TppDBCalc;
    b3167: TppDBCalc;
    b1173: TppDBCalc;
    b1174: TppDBCalc;
    b1176: TppDBCalc;
    b1178: TppDBCalc;
    b2173: TppDBCalc;
    b2174: TppDBCalc;
    b2176: TppDBCalc;
    b2178: TppDBCalc;
    b3173: TppDBCalc;
    b3174: TppDBCalc;
    b3176: TppDBCalc;
    b3178: TppDBCalc;
    b1171: TppDBCalc;
    b1172: TppDBCalc;
    b2171: TppDBCalc;
    b2172: TppDBCalc;
    b3171: TppDBCalc;
    b3172: TppDBCalc;
    b1177: TppDBCalc;
    b2177: TppDBCalc;
    b3177: TppDBCalc;
    b1183: TppDBCalc;
    b1184: TppDBCalc;
    b1186: TppDBCalc;
    b1188: TppDBCalc;
    b2183: TppDBCalc;
    b2184: TppDBCalc;
    b2186: TppDBCalc;
    b2188: TppDBCalc;
    b3183: TppDBCalc;
    b3184: TppDBCalc;
    b3186: TppDBCalc;
    b3188: TppDBCalc;
    b1181: TppDBCalc;
    b1182: TppDBCalc;
    b2181: TppDBCalc;
    b2182: TppDBCalc;
    b3181: TppDBCalc;
    b3182: TppDBCalc;
    b1187: TppDBCalc;
    b2187: TppDBCalc;
    b3187: TppDBCalc;
    b1193: TppDBCalc;
    b1194: TppDBCalc;
    b1196: TppDBCalc;
    b1198: TppDBCalc;
    b2193: TppDBCalc;
    b2194: TppDBCalc;
    b2196: TppDBCalc;
    b2198: TppDBCalc;
    b3193: TppDBCalc;
    b3194: TppDBCalc;
    b3196: TppDBCalc;
    b3198: TppDBCalc;
    b1191: TppDBCalc;
    b1192: TppDBCalc;
    b2191: TppDBCalc;
    b2192: TppDBCalc;
    b3191: TppDBCalc;
    b3192: TppDBCalc;
    b1197: TppDBCalc;
    b2197: TppDBCalc;
    b3197: TppDBCalc;
    b1203: TppDBCalc;
    b1204: TppDBCalc;
    b1206: TppDBCalc;
    b1208: TppDBCalc;
    b2203: TppDBCalc;
    b2204: TppDBCalc;
    b2206: TppDBCalc;
    b2208: TppDBCalc;
    b3203: TppDBCalc;
    b3204: TppDBCalc;
    b3206: TppDBCalc;
    b3208: TppDBCalc;
    b1201: TppDBCalc;
    b1202: TppDBCalc;
    b2201: TppDBCalc;
    b2202: TppDBCalc;
    b3201: TppDBCalc;
    b3202: TppDBCalc;
    b1207: TppDBCalc;
    b2207: TppDBCalc;
    b3207: TppDBCalc;
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
    bs5301: TppLabel;
    bs5302: TppLabel;
    bs5303: TppLabel;
    bs5304: TppLabel;
    bs5306: TppLabel;
    bs5307: TppLabel;
    bs5308: TppLabel;
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
    b3103: TppDBCalc;
    b3104: TppDBCalc;
    b3106: TppDBCalc;
    b3108: TppDBCalc;
    b1101: TppDBCalc;
    b1102: TppDBCalc;
    b2101: TppDBCalc;
    b2102: TppDBCalc;
    b3101: TppDBCalc;
    b3102: TppDBCalc;
    bp005: TppLabel;
    b1107: TppDBCalc;
    b2107: TppDBCalc;
    b3107: TppDBCalc;
    b1113: TppDBCalc;
    b1114: TppDBCalc;
    b1116: TppDBCalc;
    b1118: TppDBCalc;
    b2113: TppDBCalc;
    b2114: TppDBCalc;
    b2116: TppDBCalc;
    b2118: TppDBCalc;
    b3113: TppDBCalc;
    b3114: TppDBCalc;
    b3116: TppDBCalc;
    b3118: TppDBCalc;
    b1111: TppDBCalc;
    b1112: TppDBCalc;
    b2111: TppDBCalc;
    b2112: TppDBCalc;
    b3111: TppDBCalc;
    b3112: TppDBCalc;
    b1117: TppDBCalc;
    b2117: TppDBCalc;
    b3117: TppDBCalc;
    b1123: TppDBCalc;
    b1124: TppDBCalc;
    b1126: TppDBCalc;
    b1128: TppDBCalc;
    b2123: TppDBCalc;
    b2124: TppDBCalc;
    b2126: TppDBCalc;
    b2128: TppDBCalc;
    b3123: TppDBCalc;
    b3124: TppDBCalc;
    b3126: TppDBCalc;
    b3128: TppDBCalc;
    b1121: TppDBCalc;
    b1122: TppDBCalc;
    b2121: TppDBCalc;
    b2122: TppDBCalc;
    b3121: TppDBCalc;
    b3122: TppDBCalc;
    b1127: TppDBCalc;
    b2127: TppDBCalc;
    b3127: TppDBCalc;
    b1133: TppDBCalc;
    b1134: TppDBCalc;
    b1136: TppDBCalc;
    b1138: TppDBCalc;
    b2133: TppDBCalc;
    b2134: TppDBCalc;
    b2136: TppDBCalc;
    b2138: TppDBCalc;
    b3133: TppDBCalc;
    b3134: TppDBCalc;
    b3136: TppDBCalc;
    b3138: TppDBCalc;
    b1131: TppDBCalc;
    b1132: TppDBCalc;
    b2131: TppDBCalc;
    b2132: TppDBCalc;
    b3131: TppDBCalc;
    b3132: TppDBCalc;
    b1137: TppDBCalc;
    b2137: TppDBCalc;
    b3137: TppDBCalc;
    b1143: TppDBCalc;
    b1144: TppDBCalc;
    b1146: TppDBCalc;
    b1148: TppDBCalc;
    b2143: TppDBCalc;
    b2144: TppDBCalc;
    b2146: TppDBCalc;
    b2148: TppDBCalc;
    b3143: TppDBCalc;
    b3144: TppDBCalc;
    b3146: TppDBCalc;
    b3148: TppDBCalc;
    b1141: TppDBCalc;
    b1142: TppDBCalc;
    b2141: TppDBCalc;
    b2142: TppDBCalc;
    b3141: TppDBCalc;
    b3142: TppDBCalc;
    b1147: TppDBCalc;
    b2147: TppDBCalc;
    b3147: TppDBCalc;
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
    bs4301: TppLabel;
    bs4302: TppLabel;
    bs4303: TppLabel;
    bs4304: TppLabel;
    bs4306: TppLabel;
    bs4307: TppLabel;
    bs4308: TppLabel;
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
    b3063: TppDBCalc;
    b3064: TppDBCalc;
    b3066: TppDBCalc;
    b3068: TppDBCalc;
    b1061: TppDBCalc;
    b1062: TppDBCalc;
    b2061: TppDBCalc;
    b2062: TppDBCalc;
    b3061: TppDBCalc;
    b3062: TppDBCalc;
    bp004: TppLabel;
    b1067: TppDBCalc;
    b2067: TppDBCalc;
    b3067: TppDBCalc;
    b1073: TppDBCalc;
    b1074: TppDBCalc;
    b1076: TppDBCalc;
    b1078: TppDBCalc;
    b2073: TppDBCalc;
    b2074: TppDBCalc;
    b2076: TppDBCalc;
    b2078: TppDBCalc;
    b3073: TppDBCalc;
    b3074: TppDBCalc;
    b3076: TppDBCalc;
    b3078: TppDBCalc;
    b1071: TppDBCalc;
    b1072: TppDBCalc;
    b2071: TppDBCalc;
    b2072: TppDBCalc;
    b3071: TppDBCalc;
    b3072: TppDBCalc;
    b1077: TppDBCalc;
    b2077: TppDBCalc;
    b3077: TppDBCalc;
    b1083: TppDBCalc;
    b1084: TppDBCalc;
    b1086: TppDBCalc;
    b1088: TppDBCalc;
    b2083: TppDBCalc;
    b2084: TppDBCalc;
    b2086: TppDBCalc;
    b2088: TppDBCalc;
    b3083: TppDBCalc;
    b3084: TppDBCalc;
    b3086: TppDBCalc;
    b3088: TppDBCalc;
    b1081: TppDBCalc;
    b1082: TppDBCalc;
    b2081: TppDBCalc;
    b2082: TppDBCalc;
    b3081: TppDBCalc;
    b3082: TppDBCalc;
    b1087: TppDBCalc;
    b2087: TppDBCalc;
    b3087: TppDBCalc;
    b1093: TppDBCalc;
    b1094: TppDBCalc;
    b1096: TppDBCalc;
    b1098: TppDBCalc;
    b2093: TppDBCalc;
    b2094: TppDBCalc;
    b2096: TppDBCalc;
    b2098: TppDBCalc;
    b3093: TppDBCalc;
    b3094: TppDBCalc;
    b3096: TppDBCalc;
    b3098: TppDBCalc;
    b1091: TppDBCalc;
    b1092: TppDBCalc;
    b2091: TppDBCalc;
    b2092: TppDBCalc;
    b3091: TppDBCalc;
    b3092: TppDBCalc;
    b1097: TppDBCalc;
    b2097: TppDBCalc;
    b3097: TppDBCalc;
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
    bs3301: TppLabel;
    bs3302: TppLabel;
    bs3303: TppLabel;
    bs3304: TppLabel;
    bs3306: TppLabel;
    bs3307: TppLabel;
    bs3308: TppLabel;
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
    b3033: TppDBCalc;
    b3034: TppDBCalc;
    b3036: TppDBCalc;
    b3038: TppDBCalc;
    b1031: TppDBCalc;
    b1032: TppDBCalc;
    b2031: TppDBCalc;
    b2032: TppDBCalc;
    b3031: TppDBCalc;
    b3032: TppDBCalc;
    bp003: TppLabel;
    b1037: TppDBCalc;
    b2037: TppDBCalc;
    b3037: TppDBCalc;
    b1043: TppDBCalc;
    b1044: TppDBCalc;
    b1046: TppDBCalc;
    b1048: TppDBCalc;
    b2043: TppDBCalc;
    b2044: TppDBCalc;
    b2046: TppDBCalc;
    b2048: TppDBCalc;
    b3043: TppDBCalc;
    b3044: TppDBCalc;
    b3046: TppDBCalc;
    b3048: TppDBCalc;
    b1041: TppDBCalc;
    b1042: TppDBCalc;
    b2041: TppDBCalc;
    b2042: TppDBCalc;
    b3041: TppDBCalc;
    b3042: TppDBCalc;
    b1047: TppDBCalc;
    b2047: TppDBCalc;
    b3047: TppDBCalc;
    b1053: TppDBCalc;
    b1054: TppDBCalc;
    b1056: TppDBCalc;
    b1058: TppDBCalc;
    b2053: TppDBCalc;
    b2054: TppDBCalc;
    b2056: TppDBCalc;
    b2058: TppDBCalc;
    b3053: TppDBCalc;
    b3054: TppDBCalc;
    b3056: TppDBCalc;
    b3058: TppDBCalc;
    b1051: TppDBCalc;
    b1052: TppDBCalc;
    b2051: TppDBCalc;
    b2052: TppDBCalc;
    b3051: TppDBCalc;
    b3052: TppDBCalc;
    b1057: TppDBCalc;
    b2057: TppDBCalc;
    b3057: TppDBCalc;
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
    bs2301: TppLabel;
    bs2302: TppLabel;
    bs2303: TppLabel;
    bs2304: TppLabel;
    bs2306: TppLabel;
    bs2307: TppLabel;
    bs2308: TppLabel;
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
    b3013: TppDBCalc;
    b3014: TppDBCalc;
    b3016: TppDBCalc;
    b3018: TppDBCalc;
    b1011: TppDBCalc;
    b1012: TppDBCalc;
    b2011: TppDBCalc;
    b2012: TppDBCalc;
    b3011: TppDBCalc;
    b3012: TppDBCalc;
    bp002: TppLabel;
    b1017: TppDBCalc;
    b2017: TppDBCalc;
    b3017: TppDBCalc;
    b1023: TppDBCalc;
    b1024: TppDBCalc;
    b1026: TppDBCalc;
    b1028: TppDBCalc;
    b2023: TppDBCalc;
    b2024: TppDBCalc;
    b2026: TppDBCalc;
    b2028: TppDBCalc;
    b3023: TppDBCalc;
    b3024: TppDBCalc;
    b3026: TppDBCalc;
    b3028: TppDBCalc;
    b1021: TppDBCalc;
    b1022: TppDBCalc;
    b2021: TppDBCalc;
    b2022: TppDBCalc;
    b3021: TppDBCalc;
    b3022: TppDBCalc;
    b1027: TppDBCalc;
    b2027: TppDBCalc;
    b3027: TppDBCalc;
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
    bs1301: TppLabel;
    bs1302: TppLabel;
    bs1303: TppLabel;
    bs1304: TppLabel;
    bs1306: TppLabel;
    bs1307: TppLabel;
    bs1308: TppLabel;
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
    b3003: TppDBCalc;
    b3004: TppDBCalc;
    b3006: TppDBCalc;
    b3008: TppDBCalc;
    b1001: TppDBCalc;
    b1002: TppDBCalc;
    b2001: TppDBCalc;
    b2002: TppDBCalc;
    b3001: TppDBCalc;
    b3002: TppDBCalc;
    bp001: TppLabel;
    b1007: TppDBCalc;
    b2007: TppDBCalc;
    b3007: TppDBCalc;
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
    tb3001: TppLabel;
    tb3002: TppLabel;
    tb3003: TppLabel;
    tb3004: TppLabel;
    tb3006: TppLabel;
    tb3007: TppLabel;
    tb3008: TppLabel;
    ppLabel55: TppLabel;
    ttl001: TppLabel;
    ppLabel62: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand5BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand6BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand7BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand8BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand9BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand12BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand12BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand9BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand8BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand7BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand6BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand5BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand4BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnrpt8: Tfrmpdnrpt8;

implementation

uses mainformu, pdnformu, pdnreportformu;

{$R *.dfm}

procedure Tfrmpdnrpt8.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmpdnrpt8.ppGroupHeaderBand5BeforePrint(Sender: TObject);
begin
  rwo001.Caption:='';rwo002.Caption:='';rwo003.Caption:='';
  s1001.Visible:=false;s1002.Visible:=false;s1003.Visible:=false;s1004.Visible:=false;s1006.Visible:=false;s1007.Visible:=false;s1008.Visible:=false;
  s2001.Visible:=false;s2002.Visible:=false;s2003.Visible:=false;s2004.Visible:=false;s2006.Visible:=false;s2007.Visible:=false;s2008.Visible:=false;
  s3001.Visible:=false;s3002.Visible:=false;s3003.Visible:=false;s3004.Visible:=false;s3006.Visible:=false;s3007.Visible:=false;s3008.Visible:=false;
  s1101.Visible:=false;s1102.Visible:=false;s1103.Visible:=false;s1104.Visible:=false;s1106.Visible:=false;s1107.Visible:=false;s1108.Visible:=false;
  s2101.Visible:=false;s2102.Visible:=false;s2103.Visible:=false;s2104.Visible:=false;s2106.Visible:=false;s2107.Visible:=false;s2108.Visible:=false;
  s3101.Visible:=false;s3102.Visible:=false;s3103.Visible:=false;s3104.Visible:=false;s3106.Visible:=false;s3107.Visible:=false;s3108.Visible:=false;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_h where seq=:x1 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo001.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
      s1001.Visible:=true;s1002.Visible:=true;s1003.Visible:=true;s1004.Visible:=true;s1006.Visible:=true;s1007.Visible:=true;s1008.Visible:=true;
      s1101.Visible:=true;s1102.Visible:=true;s1103.Visible:=true;s1104.Visible:=true;s1106.Visible:=true;s1107.Visible:=true;s1108.Visible:=true;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo002.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
      s2001.Visible:=true;s2002.Visible:=true;s2003.Visible:=true;s2004.Visible:=true;s2006.Visible:=true;s2007.Visible:=true;s2008.Visible:=true;
      s2101.Visible:=true;s2102.Visible:=true;s2103.Visible:=true;s2104.Visible:=true;s2106.Visible:=true;s2107.Visible:=true;s2108.Visible:=true;
    end;
    if not fieldbyname('qn3').isnull then begin
      rwo003.Caption:=fieldbyname('q3line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn3').value;
      s3001.Visible:=true;s3002.Visible:=true;s3003.Visible:=true;s3004.Visible:=true;s3006.Visible:=true;s3007.Visible:=true;s3008.Visible:=true;
      s3101.Visible:=true;s3102.Visible:=true;s3103.Visible:=true;s3104.Visible:=true;s3106.Visible:=true;s3107.Visible:=true;s3108.Visible:=true;
    end;
  end;
end;

procedure Tfrmpdnrpt8.ppGroupHeaderBand6BeforePrint(Sender: TObject);
begin
  rwo201.Caption:='';rwo202.Caption:='';rwo203.Caption:='';rwo211.Caption:='';rwo212.Caption:='';rwo213.Caption:='';
  s1201.Visible:=false;s1202.Visible:=false;s1203.Visible:=false;s1204.Visible:=false;s1206.Visible:=false;s1207.Visible:=false;s1208.Visible:=false;
  s2201.Visible:=false;s2202.Visible:=false;s2203.Visible:=false;s2204.Visible:=false;s2206.Visible:=false;s2207.Visible:=false;s2208.Visible:=false;
  s3201.Visible:=false;s3202.Visible:=false;s3203.Visible:=false;s3204.Visible:=false;s3206.Visible:=false;s3207.Visible:=false;s3208.Visible:=false;
  s1301.Visible:=false;s1302.Visible:=false;s1303.Visible:=false;s1304.Visible:=false;s1306.Visible:=false;s1307.Visible:=false;s1308.Visible:=false;
  s2301.Visible:=false;s2302.Visible:=false;s2303.Visible:=false;s2304.Visible:=false;s2306.Visible:=false;s2307.Visible:=false;s2308.Visible:=false;
  s3301.Visible:=false;s3302.Visible:=false;s3303.Visible:=false;s3304.Visible:=false;s3306.Visible:=false;s3307.Visible:=false;s3308.Visible:=false;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_h where seq=:x1 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo201.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
      s1201.Visible:=true;s1202.Visible:=true;s1203.Visible:=true;s1204.Visible:=true;s1206.Visible:=true;s1207.Visible:=true;s1208.Visible:=true;
      s1301.Visible:=true;s1302.Visible:=true;s1303.Visible:=true;s1304.Visible:=true;s1306.Visible:=true;s1307.Visible:=true;s1308.Visible:=true;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo202.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
      s2201.Visible:=true;s2202.Visible:=true;s2203.Visible:=true;s2204.Visible:=true;s2206.Visible:=true;s2207.Visible:=true;s2208.Visible:=true;
      s2301.Visible:=true;s2302.Visible:=true;s2303.Visible:=true;s2304.Visible:=true;s2306.Visible:=true;s2307.Visible:=true;s2308.Visible:=true;
    end;
    if not fieldbyname('qn3').isnull then begin
      rwo203.Caption:=fieldbyname('q3line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn3').value;
      s3201.Visible:=true;s3202.Visible:=true;s3203.Visible:=true;s3204.Visible:=true;s3206.Visible:=true;s3207.Visible:=true;s3208.Visible:=true;
      s3301.Visible:=true;s3302.Visible:=true;s3303.Visible:=true;s3304.Visible:=true;s3306.Visible:=true;s3307.Visible:=true;s3308.Visible:=true;
    end;
    if not fieldbyname('qn4').isnull then begin
      rwo211.Caption:=fieldbyname('q4line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn4').value;
    end;
    if not fieldbyname('qn5').isnull then begin
      rwo212.Caption:=fieldbyname('q5line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn5').value;
    end;
    if not fieldbyname('qn6').isnull then begin
      rwo213.Caption:=fieldbyname('q6line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn6').value;
    end;
  end;
end;

procedure Tfrmpdnrpt8.ppGroupHeaderBand7BeforePrint(Sender: TObject);
begin
  rwo301.Caption:='';rwo302.Caption:='';rwo303.Caption:='';rwo311.Caption:='';rwo312.Caption:='';rwo313.Caption:='';
  rwo321.Caption:='';rwo322.Caption:='';rwo323.Caption:='';
  s1401.Visible:=false;s1402.Visible:=false;s1403.Visible:=false;s1404.Visible:=false;s1406.Visible:=false;s1407.Visible:=false;s1408.Visible:=false;
  s2401.Visible:=false;s2402.Visible:=false;s2403.Visible:=false;s2404.Visible:=false;s2406.Visible:=false;s2407.Visible:=false;s2408.Visible:=false;
  s3401.Visible:=false;s3402.Visible:=false;s3403.Visible:=false;s3404.Visible:=false;s3406.Visible:=false;s3407.Visible:=false;s3408.Visible:=false;
  s1501.Visible:=false;s1502.Visible:=false;s1503.Visible:=false;s1504.Visible:=false;s1506.Visible:=false;s1507.Visible:=false;s1508.Visible:=false;
  s2501.Visible:=false;s2502.Visible:=false;s2503.Visible:=false;s2504.Visible:=false;s2506.Visible:=false;s2507.Visible:=false;s2508.Visible:=false;
  s3501.Visible:=false;s3502.Visible:=false;s3503.Visible:=false;s3504.Visible:=false;s3506.Visible:=false;s3507.Visible:=false;s3508.Visible:=false;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_h where seq=:x1 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo301.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
      s1401.Visible:=true;s1402.Visible:=true;s1403.Visible:=true;s1404.Visible:=true;s1406.Visible:=true;s1407.Visible:=true;s1408.Visible:=true;
      s1501.Visible:=true;s1502.Visible:=true;s1503.Visible:=true;s1504.Visible:=true;s1506.Visible:=true;s1507.Visible:=true;s1508.Visible:=true;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo302.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
      s2401.Visible:=true;s2402.Visible:=true;s2403.Visible:=true;s2404.Visible:=true;s2406.Visible:=true;s2407.Visible:=true;s2408.Visible:=true;
      s2501.Visible:=true;s2502.Visible:=true;s2503.Visible:=true;s2504.Visible:=true;s2506.Visible:=true;s2507.Visible:=true;s2508.Visible:=true;
    end;
    if not fieldbyname('qn3').isnull then begin
      rwo303.Caption:=fieldbyname('q3line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn3').value;
      s3401.Visible:=true;s3402.Visible:=true;s3403.Visible:=true;s3404.Visible:=true;s3406.Visible:=true;s3407.Visible:=true;s3408.Visible:=true;
      s3501.Visible:=true;s3502.Visible:=true;s3503.Visible:=true;s3504.Visible:=true;s3506.Visible:=true;s3507.Visible:=true;s3508.Visible:=true;
    end;
    if not fieldbyname('qn4').isnull then begin
      rwo311.Caption:=fieldbyname('q4line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn4').value;
    end;
    if not fieldbyname('qn5').isnull then begin
      rwo312.Caption:=fieldbyname('q5line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn5').value;
    end;
    if not fieldbyname('qn6').isnull then begin
      rwo313.Caption:=fieldbyname('q6line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn6').value;
    end;
    if not fieldbyname('qn7').isnull then begin
      rwo321.Caption:=fieldbyname('q7line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn7').value;
    end;
    if not fieldbyname('qn8').isnull then begin
      rwo322.Caption:=fieldbyname('q8line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn8').value;
    end;
    if not fieldbyname('qn9').isnull then begin
      rwo323.Caption:=fieldbyname('q9line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn9').value;
    end;
  end;
end;

procedure Tfrmpdnrpt8.ppGroupHeaderBand8BeforePrint(Sender: TObject);
begin
  rwo401.Caption:='';rwo402.Caption:='';rwo403.Caption:='';rwo411.Caption:='';rwo412.Caption:='';rwo413.Caption:='';
  rwo421.Caption:='';rwo422.Caption:='';rwo423.Caption:='';rwo431.Caption:='';rwo432.Caption:='';rwo433.Caption:='';
  s1601.Visible:=false;s1602.Visible:=false;s1603.Visible:=false;s1604.Visible:=false;s1606.Visible:=false;s1607.Visible:=false;s1608.Visible:=false;
  s2601.Visible:=false;s2602.Visible:=false;s2603.Visible:=false;s2604.Visible:=false;s2606.Visible:=false;s2607.Visible:=false;s2608.Visible:=false;
  s3601.Visible:=false;s3602.Visible:=false;s3603.Visible:=false;s3604.Visible:=false;s3606.Visible:=false;s3607.Visible:=false;s3608.Visible:=false;
  s1701.Visible:=false;s1702.Visible:=false;s1703.Visible:=false;s1704.Visible:=false;s1706.Visible:=false;s1707.Visible:=false;s1708.Visible:=false;
  s2701.Visible:=false;s2702.Visible:=false;s2703.Visible:=false;s2704.Visible:=false;s2706.Visible:=false;s2707.Visible:=false;s2708.Visible:=false;
  s3701.Visible:=false;s3702.Visible:=false;s3703.Visible:=false;s3704.Visible:=false;s3706.Visible:=false;s3707.Visible:=false;s3708.Visible:=false;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_h where seq=:x1 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo401.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
      s1601.Visible:=true;s1602.Visible:=true;s1603.Visible:=true;s1604.Visible:=true;s1606.Visible:=true;s1607.Visible:=true;s1608.Visible:=true;
      s1701.Visible:=true;s1702.Visible:=true;s1703.Visible:=true;s1704.Visible:=true;s1706.Visible:=true;s1707.Visible:=true;s1708.Visible:=true;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo402.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
      s2601.Visible:=true;s2602.Visible:=true;s2603.Visible:=true;s2604.Visible:=true;s2606.Visible:=true;s2607.Visible:=true;s2608.Visible:=true;
      s2701.Visible:=true;s2702.Visible:=true;s2703.Visible:=true;s2704.Visible:=true;s2706.Visible:=true;s2707.Visible:=true;s2708.Visible:=true;
    end;
    if not fieldbyname('qn3').isnull then begin
      rwo403.Caption:=fieldbyname('q3line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn3').value;
      s3601.Visible:=true;s3602.Visible:=true;s3603.Visible:=true;s3604.Visible:=true;s3606.Visible:=true;s3607.Visible:=true;s3608.Visible:=true;
      s3701.Visible:=true;s3702.Visible:=true;s3703.Visible:=true;s3704.Visible:=true;s3706.Visible:=true;s3707.Visible:=true;s3708.Visible:=true;
    end;
    if not fieldbyname('qn4').isnull then begin
      rwo411.Caption:=fieldbyname('q4line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn4').value;
    end;
    if not fieldbyname('qn5').isnull then begin
      rwo412.Caption:=fieldbyname('q5line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn5').value;
    end;
    if not fieldbyname('qn6').isnull then begin
      rwo413.Caption:=fieldbyname('q6line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn6').value;
    end;
    if not fieldbyname('qn7').isnull then begin
      rwo421.Caption:=fieldbyname('q7line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn7').value;
    end;
    if not fieldbyname('qn8').isnull then begin
      rwo422.Caption:=fieldbyname('q8line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn8').value;
    end;
    if not fieldbyname('qn9').isnull then begin
      rwo423.Caption:=fieldbyname('q9line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn9').value;
    end;
    if not fieldbyname('qn10').isnull then begin
      rwo431.Caption:=fieldbyname('q10line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn10').value;
    end;
    if not fieldbyname('qn11').isnull then begin
      rwo432.Caption:=fieldbyname('q11line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn11').value;
    end;
    if not fieldbyname('qn12').isnull then begin
      rwo433.Caption:=fieldbyname('q12line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn12').value;
    end;
  end;
end;

procedure Tfrmpdnrpt8.ppGroupHeaderBand9BeforePrint(Sender: TObject);
begin
  rwo501.Caption:='';rwo502.Caption:='';rwo503.Caption:='';rwo511.Caption:='';rwo512.Caption:='';rwo513.Caption:='';
  rwo521.Caption:='';rwo522.Caption:='';rwo523.Caption:='';rwo531.Caption:='';rwo532.Caption:='';rwo533.Caption:='';
  rwo541.Caption:='';rwo542.Caption:='';rwo543.Caption:='';
  s1801.Visible:=false;s1802.Visible:=false;s1803.Visible:=false;s1804.Visible:=false;s1806.Visible:=false;s1807.Visible:=false;s1808.Visible:=false;
  s2801.Visible:=false;s2802.Visible:=false;s2803.Visible:=false;s2804.Visible:=false;s2806.Visible:=false;s2807.Visible:=false;s2808.Visible:=false;
  s3801.Visible:=false;s3802.Visible:=false;s3803.Visible:=false;s3804.Visible:=false;s3806.Visible:=false;s3807.Visible:=false;s3808.Visible:=false;
  s1901.Visible:=false;s1902.Visible:=false;s1903.Visible:=false;s1904.Visible:=false;s1906.Visible:=false;s1907.Visible:=false;s1908.Visible:=false;
  s2901.Visible:=false;s2902.Visible:=false;s2903.Visible:=false;s2904.Visible:=false;s2906.Visible:=false;s2907.Visible:=false;s2908.Visible:=false;
  s3901.Visible:=false;s3902.Visible:=false;s3903.Visible:=false;s3904.Visible:=false;s3906.Visible:=false;s3907.Visible:=false;s3908.Visible:=false;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_h where seq=:x1 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo501.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
      s1801.Visible:=true;s1802.Visible:=true;s1803.Visible:=true;s1804.Visible:=true;s1806.Visible:=true;s1807.Visible:=true;s1808.Visible:=true;
      s1901.Visible:=true;s1902.Visible:=true;s1903.Visible:=true;s1904.Visible:=true;s1906.Visible:=true;s1907.Visible:=true;s1908.Visible:=true;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo502.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
      s2801.Visible:=true;s2802.Visible:=true;s2803.Visible:=true;s2804.Visible:=true;s2806.Visible:=true;s2807.Visible:=true;s2808.Visible:=true;
      s2901.Visible:=true;s2902.Visible:=true;s2903.Visible:=true;s2904.Visible:=true;s2906.Visible:=true;s2907.Visible:=true;s2908.Visible:=true;
    end;
    if not fieldbyname('qn3').isnull then begin
      rwo503.Caption:=fieldbyname('q3line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn3').value;
      s3801.Visible:=true;s3802.Visible:=true;s3803.Visible:=true;s3804.Visible:=true;s3806.Visible:=true;s3807.Visible:=true;s3808.Visible:=true;
      s3901.Visible:=true;s3902.Visible:=true;s3903.Visible:=true;s3904.Visible:=true;s3906.Visible:=true;s3907.Visible:=true;s3908.Visible:=true;
    end;
    if not fieldbyname('qn4').isnull then begin
      rwo511.Caption:=fieldbyname('q4line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn4').value;
    end;
    if not fieldbyname('qn5').isnull then begin
      rwo512.Caption:=fieldbyname('q5line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn5').value;
    end;
    if not fieldbyname('qn6').isnull then begin
      rwo513.Caption:=fieldbyname('q6line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn6').value;
    end;
    if not fieldbyname('qn7').isnull then begin
      rwo521.Caption:=fieldbyname('q7line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn7').value;
    end;
    if not fieldbyname('qn8').isnull then begin
      rwo522.Caption:=fieldbyname('q8line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn8').value;
    end;
    if not fieldbyname('qn9').isnull then begin
      rwo523.Caption:=fieldbyname('q9line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn9').value;
    end;
    if not fieldbyname('qn10').isnull then begin
      rwo531.Caption:=fieldbyname('q10line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn10').value;
    end;
    if not fieldbyname('qn11').isnull then begin
      rwo532.Caption:=fieldbyname('q11line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn11').value;
    end;
    if not fieldbyname('qn12').isnull then begin
      rwo533.Caption:=fieldbyname('q12line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn12').value;
    end;
    if not fieldbyname('qn13').isnull then begin
      rwo541.Caption:=fieldbyname('q13line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn13').value;
    end;
    if not fieldbyname('qn14').isnull then begin
      rwo542.Caption:=fieldbyname('q14line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn14').value;
    end;
    if not fieldbyname('qn15').isnull then begin
      rwo543.Caption:=fieldbyname('q15line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn15').value;
    end;
  end;
end;

procedure Tfrmpdnrpt8.ppGroupHeaderBand12BeforePrint(Sender: TObject);
begin
  rwo601.Caption:='';rwo602.Caption:='';rwo603.Caption:='';rwo611.Caption:='';rwo612.Caption:='';rwo613.Caption:='';
  rwo621.Caption:='';rwo622.Caption:='';rwo623.Caption:='';rwo631.Caption:='';rwo632.Caption:='';rwo633.Caption:='';
  rwo641.Caption:='';rwo642.Caption:='';rwo643.Caption:='';rwo651.Caption:='';rwo652.Caption:='';rwo653.Caption:='';
  s1a01.Visible:=false;s1a02.Visible:=false;s1a03.Visible:=false;s1a04.Visible:=false;s1a06.Visible:=false;s1a07.Visible:=false;s1a08.Visible:=false;
  s2a01.Visible:=false;s2a02.Visible:=false;s2a03.Visible:=false;s2a04.Visible:=false;s2a06.Visible:=false;s2a07.Visible:=false;s2a08.Visible:=false;
  s3a01.Visible:=false;s3a02.Visible:=false;s3a03.Visible:=false;s3a04.Visible:=false;s3a06.Visible:=false;s3a07.Visible:=false;s3a08.Visible:=false;
  s1b01.Visible:=false;s1b02.Visible:=false;s1b03.Visible:=false;s1b04.Visible:=false;s1b06.Visible:=false;s1b07.Visible:=false;s1b08.Visible:=false;
  s2b01.Visible:=false;s2b02.Visible:=false;s2b03.Visible:=false;s2b04.Visible:=false;s2b06.Visible:=false;s2b07.Visible:=false;s2b08.Visible:=false;
  s3b01.Visible:=false;s3b02.Visible:=false;s3b03.Visible:=false;s3b04.Visible:=false;s3b06.Visible:=false;s3b07.Visible:=false;s3b08.Visible:=false;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_h where seq=:x1 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value+''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('qn1').isnull then begin
      rwo601.Caption:=fieldbyname('q1line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn1').value;
      s1a01.Visible:=true;s1a02.Visible:=true;s1a03.Visible:=true;s1a04.Visible:=true;s1a06.Visible:=true;s1a07.Visible:=true;s1a08.Visible:=true;
      s1b01.Visible:=true;s1b02.Visible:=true;s1b03.Visible:=true;s1b04.Visible:=true;s1b06.Visible:=true;s1b07.Visible:=true;s1b08.Visible:=true;
    end;
    if not fieldbyname('qn2').isnull then begin
      rwo602.Caption:=fieldbyname('q2line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn2').value;
      s2a01.Visible:=true;s2a02.Visible:=true;s2a03.Visible:=true;s2a04.Visible:=true;s2a06.Visible:=true;s2a07.Visible:=true;s2a08.Visible:=true;
      s2b01.Visible:=true;s2b02.Visible:=true;s2b03.Visible:=true;s2b04.Visible:=true;s2b06.Visible:=true;s2b07.Visible:=true;s2b08.Visible:=true;
    end;
    if not fieldbyname('qn3').isnull then begin
      rwo603.Caption:=fieldbyname('q3line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn3').value;
      s3a01.Visible:=true;s3a02.Visible:=true;s3a03.Visible:=true;s3a04.Visible:=true;s3a06.Visible:=true;s3a07.Visible:=true;s3a08.Visible:=true;
      s3b01.Visible:=true;s3b02.Visible:=true;s3b03.Visible:=true;s3b04.Visible:=true;s3b06.Visible:=true;s3b07.Visible:=true;s3b08.Visible:=true;
    end;
    if not fieldbyname('qn4').isnull then begin
      rwo611.Caption:=fieldbyname('q4line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn4').value;
    end;
    if not fieldbyname('qn5').isnull then begin
      rwo612.Caption:=fieldbyname('q5line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn5').value;
    end;
    if not fieldbyname('qn6').isnull then begin
      rwo613.Caption:=fieldbyname('q6line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn6').value;
    end;
    if not fieldbyname('qn7').isnull then begin
      rwo621.Caption:=fieldbyname('q7line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn7').value;
    end;
    if not fieldbyname('qn8').isnull then begin
      rwo622.Caption:=fieldbyname('q8line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn8').value;
    end;
    if not fieldbyname('qn9').isnull then begin
      rwo623.Caption:=fieldbyname('q9line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn9').value;
    end;
    if not fieldbyname('qn10').isnull then begin
      rwo631.Caption:=fieldbyname('q10line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn10').value;
    end;
    if not fieldbyname('qn11').isnull then begin
      rwo632.Caption:=fieldbyname('q11line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn11').value;
    end;
    if not fieldbyname('qn12').isnull then begin
      rwo633.Caption:=fieldbyname('q12line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn12').value;
    end;
    if not fieldbyname('qn13').isnull then begin
      rwo641.Caption:=fieldbyname('q13line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn13').value;
    end;
    if not fieldbyname('qn14').isnull then begin
      rwo642.Caption:=fieldbyname('q14line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn14').value;
    end;
    if not fieldbyname('qn15').isnull then begin
      rwo643.Caption:=fieldbyname('q15line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn15').value;
    end;
    if not fieldbyname('qn16').isnull then begin
      rwo651.Caption:=fieldbyname('q16line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn16').value;
    end;
    if not fieldbyname('qn17').isnull then begin
      rwo652.Caption:=fieldbyname('q17line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn17').value;
    end;
    if not fieldbyname('qn18').isnull then begin
      rwo653.Caption:=fieldbyname('q18line').value+'  QN #: '+query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('rwo').value+'-'+fieldbyname('qn18').value;
    end;
  end;
end;

procedure Tfrmpdnrpt8.ppDetailBand3BeforePrint(Sender: TObject);
begin
  d1001.Caption:=query1.fieldbyname('q1qty').asstring;d1002.Caption:=query1.fieldbyname('q1pqty').asstring;
  d1003.Caption:=query1.fieldbyname('q1t1qty').asstring;d1004.Caption:=query1.fieldbyname('q1t2qty').asstring;
  d1006.Caption:=query1.fieldbyname('q1t3qty').asstring;d1007.Caption:=query1.fieldbyname('q1aqqty').asstring;d1008.Caption:=query1.fieldbyname('q1t4qty').asstring;
  d2001.Caption:=query1.fieldbyname('q2qty').asstring;d2002.Caption:=query1.fieldbyname('q2pqty').asstring;
  d2003.Caption:=query1.fieldbyname('q2t1qty').asstring;d2004.Caption:=query1.fieldbyname('q2t2qty').asstring;
  d2006.Caption:=query1.fieldbyname('q2t3qty').asstring;d2007.Caption:=query1.fieldbyname('q2aqqty').asstring;d2008.Caption:=query1.fieldbyname('q2t4qty').asstring;
  d3001.Caption:=query1.fieldbyname('q3qty').asstring;d3002.Caption:=query1.fieldbyname('q3pqty').asstring;
  d3003.Caption:=query1.fieldbyname('q3t1qty').asstring;d3004.Caption:=query1.fieldbyname('q3t2qty').asstring;
  d3006.Caption:=query1.fieldbyname('q3t3qty').asstring;d3007.Caption:=query1.fieldbyname('q3aqqty').asstring;d3008.Caption:=query1.fieldbyname('q3t4qty').asstring;

  d1011.Caption:=query1.fieldbyname('q4qty').asstring;d1012.Caption:=query1.fieldbyname('q4pqty').asstring;
  d1013.Caption:=query1.fieldbyname('q4t1qty').asstring;d1014.Caption:=query1.fieldbyname('q4t2qty').asstring;
  d1016.Caption:=query1.fieldbyname('q4t3qty').asstring;d1017.Caption:=query1.fieldbyname('q4aqqty').asstring;d1018.Caption:=query1.fieldbyname('q4t4qty').asstring;
  d2011.Caption:=query1.fieldbyname('q5qty').asstring;d2012.Caption:=query1.fieldbyname('q5pqty').asstring;
  d2013.Caption:=query1.fieldbyname('q5t1qty').asstring;d2014.Caption:=query1.fieldbyname('q5t2qty').asstring;
  d2016.Caption:=query1.fieldbyname('q5t3qty').asstring;d2017.Caption:=query1.fieldbyname('q5aqqty').asstring;d2018.Caption:=query1.fieldbyname('q5t4qty').asstring;
  d3011.Caption:=query1.fieldbyname('q6qty').asstring;d3012.Caption:=query1.fieldbyname('q6pqty').asstring;
  d3013.Caption:=query1.fieldbyname('q6t1qty').asstring;d3014.Caption:=query1.fieldbyname('q6t2qty').asstring;
  d3016.Caption:=query1.fieldbyname('q6t3qty').asstring;d3017.Caption:=query1.fieldbyname('q6aqqty').asstring;d3018.Caption:=query1.fieldbyname('q6t4qty').asstring;

  d1021.Caption:=query1.fieldbyname('q7qty').asstring;d1022.Caption:=query1.fieldbyname('q7pqty').asstring;
  d1023.Caption:=query1.fieldbyname('q7t1qty').asstring;d1024.Caption:=query1.fieldbyname('q7t2qty').asstring;
  d1026.Caption:=query1.fieldbyname('q7t3qty').asstring;d1027.Caption:=query1.fieldbyname('q7aqqty').asstring;d1028.Caption:=query1.fieldbyname('q7t4qty').asstring;
  d2021.Caption:=query1.fieldbyname('q8qty').asstring;d2022.Caption:=query1.fieldbyname('q8pqty').asstring;
  d2023.Caption:=query1.fieldbyname('q8t1qty').asstring;d2024.Caption:=query1.fieldbyname('q8t2qty').asstring;
  d2026.Caption:=query1.fieldbyname('q8t3qty').asstring;d2027.Caption:=query1.fieldbyname('q8aqqty').asstring;d2028.Caption:=query1.fieldbyname('q8t4qty').asstring;
  d3021.Caption:=query1.fieldbyname('q9qty').asstring;d3022.Caption:=query1.fieldbyname('q9pqty').asstring;
  d3023.Caption:=query1.fieldbyname('q9t1qty').asstring;d3024.Caption:=query1.fieldbyname('q9t2qty').asstring;
  d3026.Caption:=query1.fieldbyname('q9t3qty').asstring;d3027.Caption:=query1.fieldbyname('q9aqqty').asstring;d3028.Caption:=query1.fieldbyname('q9t4qty').asstring;

  d1031.Caption:=query1.fieldbyname('q10qty').asstring;d1032.Caption:=query1.fieldbyname('q10pqty').asstring;
  d1033.Caption:=query1.fieldbyname('q10t1qty').asstring;d1034.Caption:=query1.fieldbyname('q10t2qty').asstring;
  d1036.Caption:=query1.fieldbyname('q10t3qty').asstring;d1037.Caption:=query1.fieldbyname('q10aqqty').asstring;d1038.Caption:=query1.fieldbyname('q10t4qty').asstring;
  d2031.Caption:=query1.fieldbyname('q11qty').asstring;d2032.Caption:=query1.fieldbyname('q11pqty').asstring;
  d2033.Caption:=query1.fieldbyname('q11t1qty').asstring;d2034.Caption:=query1.fieldbyname('q11t2qty').asstring;
  d2036.Caption:=query1.fieldbyname('q11t3qty').asstring;d2037.Caption:=query1.fieldbyname('q11aqqty').asstring;d2038.Caption:=query1.fieldbyname('q11t4qty').asstring;
  d3031.Caption:=query1.fieldbyname('q12qty').asstring;d3032.Caption:=query1.fieldbyname('q12pqty').asstring;
  d3033.Caption:=query1.fieldbyname('q12t1qty').asstring;d3034.Caption:=query1.fieldbyname('q12t2qty').asstring;
  d3036.Caption:=query1.fieldbyname('q12t3qty').asstring;d3037.Caption:=query1.fieldbyname('q12aqqty').asstring;d3038.Caption:=query1.fieldbyname('q12t4qty').asstring;

  d1041.Caption:=query1.fieldbyname('q13qty').asstring;d1042.Caption:=query1.fieldbyname('q13pqty').asstring;
  d1043.Caption:=query1.fieldbyname('q13t1qty').asstring;d1044.Caption:=query1.fieldbyname('q13t2qty').asstring;
  d1046.Caption:=query1.fieldbyname('q13t3qty').asstring;d1047.Caption:=query1.fieldbyname('q13aqqty').asstring;d1048.Caption:=query1.fieldbyname('q13t4qty').asstring;
  d2041.Caption:=query1.fieldbyname('q14qty').asstring;d2042.Caption:=query1.fieldbyname('q14pqty').asstring;
  d2043.Caption:=query1.fieldbyname('q14t1qty').asstring;d2044.Caption:=query1.fieldbyname('q14t2qty').asstring;
  d2046.Caption:=query1.fieldbyname('q14t3qty').asstring;d2047.Caption:=query1.fieldbyname('q14aqqty').asstring;d2048.Caption:=query1.fieldbyname('q14t4qty').asstring;
  d3041.Caption:=query1.fieldbyname('q15qty').asstring;d3042.Caption:=query1.fieldbyname('q15pqty').asstring;
  d3043.Caption:=query1.fieldbyname('q15t1qty').asstring;d3044.Caption:=query1.fieldbyname('q15t2qty').asstring;
  d3046.Caption:=query1.fieldbyname('q15t3qty').asstring;d3047.Caption:=query1.fieldbyname('q15aqqty').asstring;d3048.Caption:=query1.fieldbyname('q15t4qty').asstring;

  d1051.Caption:=query1.fieldbyname('q16qty').asstring;d1052.Caption:=query1.fieldbyname('q16pqty').asstring;
  d1053.Caption:=query1.fieldbyname('q16t1qty').asstring;d1054.Caption:=query1.fieldbyname('q16t2qty').asstring;
  d1056.Caption:=query1.fieldbyname('q16t3qty').asstring;d1057.Caption:=query1.fieldbyname('q16aqqty').asstring;d1058.Caption:=query1.fieldbyname('q16t4qty').asstring;
  d2051.Caption:=query1.fieldbyname('q17qty').asstring;d2052.Caption:=query1.fieldbyname('q17pqty').asstring;
  d2053.Caption:=query1.fieldbyname('q17t1qty').asstring;d2054.Caption:=query1.fieldbyname('q17t2qty').asstring;
  d2056.Caption:=query1.fieldbyname('q17t3qty').asstring;d2057.Caption:=query1.fieldbyname('q17aqqty').asstring;d2058.Caption:=query1.fieldbyname('q17t4qty').asstring;
  d3051.Caption:=query1.fieldbyname('q18qty').asstring;d3052.Caption:=query1.fieldbyname('q18pqty').asstring;
  d3053.Caption:=query1.fieldbyname('q18t1qty').asstring;d3054.Caption:=query1.fieldbyname('q18t2qty').asstring;
  d3056.Caption:=query1.fieldbyname('q18t3qty').asstring;d3057.Caption:=query1.fieldbyname('q18aqqty').asstring;d3058.Caption:=query1.fieldbyname('q18t4qty').asstring;

  d2001.Visible:=true;d2002.Visible:=true;d2003.Visible:=true;d2004.Visible:=true;d2006.Visible:=true;d2007.Visible:=true;d2008.Visible:=true;
  d3001.Visible:=true;d3002.Visible:=true;d3003.Visible:=true;d3004.Visible:=true;d3006.Visible:=true;d3007.Visible:=true;d3008.Visible:=true;
  if d1001.Caption='0' then begin
    d1001.Caption:='-';d1002.Caption:='-';d1003.Caption:='-';d1004.Caption:='-';d1006.Caption:='-';d1007.Caption:='-';d1008.Caption:='-';
  end;
  if d2001.Caption='0' then begin
    d2001.Caption:='-';d2002.Caption:='-';d2003.Caption:='-';d2004.Caption:='-';d2006.Caption:='-';d2007.Caption:='-';d2008.Caption:='-';
  end;
  if d3001.Caption='0' then begin
    d3001.Caption:='-';d3002.Caption:='-';d3003.Caption:='-';d3004.Caption:='-';d3006.Caption:='-';d3007.Caption:='-';d3008.Caption:='-';
  end;

  if d1011.Caption='0' then begin
    d1011.Caption:='-';d1012.Caption:='-';d1013.Caption:='-';d1014.Caption:='-';d1016.Caption:='-';d1017.Caption:='-';d1018.Caption:='-';
  end;
  if d2011.Caption='0' then begin
    d2011.Caption:='-';d2012.Caption:='-';d2013.Caption:='-';d2014.Caption:='-';d2016.Caption:='-';d2017.Caption:='-';d2018.Caption:='-';
  end;
  if d3011.Caption='0' then begin
    d3011.Caption:='-';d3012.Caption:='-';d3013.Caption:='-';d3014.Caption:='-';d3016.Caption:='-';d3017.Caption:='-';d3018.Caption:='-';
  end;

  if d1021.Caption='0' then begin
    d1021.Caption:='-';d1022.Caption:='-';d1023.Caption:='-';d1024.Caption:='-';d1026.Caption:='-';d1027.Caption:='-';d1028.Caption:='-';
  end;
  if d2021.Caption='0' then begin
    d2021.Caption:='-';d2022.Caption:='-';d2023.Caption:='-';d2024.Caption:='-';d2026.Caption:='-';d2027.Caption:='-';d2028.Caption:='-';
  end;
  if d3021.Caption='0' then begin
    d3021.Caption:='-';d3022.Caption:='-';d3023.Caption:='-';d3024.Caption:='-';d3026.Caption:='-';d3027.Caption:='-';d3028.Caption:='-';
  end;

  if d1031.Caption='0' then begin
    d1031.Caption:='-';d1032.Caption:='-';d1033.Caption:='-';d1034.Caption:='-';d1036.Caption:='-';d1037.Caption:='-';d1038.Caption:='-';
  end;
  if d2031.Caption='0' then begin
    d2031.Caption:='-';d2032.Caption:='-';d2033.Caption:='-';d2034.Caption:='-';d2036.Caption:='-';d2037.Caption:='-';d2038.Caption:='-';
  end;
  if d3031.Caption='0' then begin
    d3031.Caption:='-';d3032.Caption:='-';d3033.Caption:='-';d3034.Caption:='-';d3036.Caption:='-';d3037.Caption:='-';d3038.Caption:='-';
  end;

  if d1041.Caption='0' then begin
    d1041.Caption:='-';d1042.Caption:='-';d1043.Caption:='-';d1044.Caption:='-';d1046.Caption:='-';d1047.Caption:='-';d1048.Caption:='-';
  end;
  if d2041.Caption='0' then begin
    d2041.Caption:='-';d2042.Caption:='-';d2043.Caption:='-';d2044.Caption:='-';d2046.Caption:='-';d2047.Caption:='-';d2048.Caption:='-';
  end;
  if d3041.Caption='0' then begin
    d3041.Caption:='-';d3042.Caption:='-';d3043.Caption:='-';d3044.Caption:='-';d3046.Caption:='-';d3047.Caption:='-';d3048.Caption:='-';
  end;

  if d1051.Caption='0' then begin
    d1051.Caption:='-';d1052.Caption:='-';d1053.Caption:='-';d1054.Caption:='-';d1056.Caption:='-';d1057.Caption:='-';d1058.Caption:='-';
  end;
  if d2051.Caption='0' then begin
    d2051.Caption:='-';d2052.Caption:='-';d2053.Caption:='-';d2054.Caption:='-';d2056.Caption:='-';d2057.Caption:='-';d2058.Caption:='-';
  end;
  if d3051.Caption='0' then begin
    d3051.Caption:='-';d3052.Caption:='-';d3053.Caption:='-';d3054.Caption:='-';d3056.Caption:='-';d3057.Caption:='-';d3058.Caption:='-';
  end;

  if ppGroupHeaderBand9.Visible then begin
    if rwo652.Caption>'' then begin
      d2051.Visible:=true;d2052.Visible:=true;d2053.Visible:=true;d2054.Visible:=true;d2056.Visible:=true;d2057.Visible:=true;d2058.Visible:=true;
    end else begin
      d2051.Visible:=false;d2052.Visible:=false;d2053.Visible:=false;d2054.Visible:=false;d2056.Visible:=false;d2057.Visible:=false;d2058.Visible:=false;
    end;
    if rwo653.Caption>'' then begin
      d3051.Visible:=true;d3052.Visible:=true;d3053.Visible:=true;d3054.Visible:=true;d3056.Visible:=true;d3057.Visible:=true;d3058.Visible:=true;
    end else begin
      d3051.Visible:=false;d3052.Visible:=false;d3053.Visible:=false;d3054.Visible:=false;d3056.Visible:=false;d3057.Visible:=false;d3058.Visible:=false;
    end;
  end else if ppGroupHeaderBand8.Visible then begin
    if rwo542.Caption>'' then begin
      d2041.Visible:=true;d2042.Visible:=true;d2043.Visible:=true;d2044.Visible:=true;d2046.Visible:=true;d2047.Visible:=true;d2048.Visible:=true;
    end else begin
      d2041.Visible:=false;d2042.Visible:=false;d2043.Visible:=false;d2044.Visible:=false;d2046.Visible:=false;d2047.Visible:=false;d2048.Visible:=false;
    end;
    if rwo543.Caption>'' then begin
      d3041.Visible:=true;d3042.Visible:=true;d3043.Visible:=true;d3044.Visible:=true;d3046.Visible:=true;d3047.Visible:=true;d3048.Visible:=true;
    end else begin
      d3041.Visible:=false;d3042.Visible:=false;d3043.Visible:=false;d3044.Visible:=false;d3046.Visible:=false;d3047.Visible:=false;d3048.Visible:=false;
    end;
  end else if ppGroupHeaderBand7.Visible then begin
    if rwo432.Caption>'' then begin
      d2031.Visible:=true;d2032.Visible:=true;d2033.Visible:=true;d2034.Visible:=true;d2036.Visible:=true;d2037.Visible:=true;d2038.Visible:=true;
    end else begin
      d2031.Visible:=false;d2032.Visible:=false;d2033.Visible:=false;d2034.Visible:=false;d2036.Visible:=false;d2037.Visible:=false;d2038.Visible:=false;
    end;
    if rwo433.Caption>'' then begin
      d3031.Visible:=true;d3032.Visible:=true;d3033.Visible:=true;d3034.Visible:=true;d3036.Visible:=true;d3037.Visible:=true;d3038.Visible:=true;
    end else begin
      d3031.Visible:=false;d3032.Visible:=false;d3033.Visible:=false;d3034.Visible:=false;d3036.Visible:=false;d3037.Visible:=false;d3038.Visible:=false;
    end;
  end else if ppGroupHeaderBand6.Visible then begin
    if rwo322.Caption>'' then begin
      d2021.Visible:=true;d2022.Visible:=true;d2023.Visible:=true;d2024.Visible:=true;d2026.Visible:=true;d2027.Visible:=true;d2028.Visible:=true;
    end else begin
      d2021.Visible:=false;d2022.Visible:=false;d2023.Visible:=false;d2024.Visible:=false;d2026.Visible:=false;d2027.Visible:=false;d2028.Visible:=false;
    end;
    if rwo323.Caption>'' then begin
      d3021.Visible:=true;d3022.Visible:=true;d3023.Visible:=true;d3024.Visible:=true;d3026.Visible:=true;d3027.Visible:=true;d3028.Visible:=true;
    end else begin
      d3021.Visible:=false;d3022.Visible:=false;d3023.Visible:=false;d3024.Visible:=false;d3026.Visible:=false;d3027.Visible:=false;d3028.Visible:=false;
    end;
  end else if ppGroupHeaderBand5.Visible then begin
    if rwo212.Caption>'' then begin
      d2011.Visible:=true;d2012.Visible:=true;d2013.Visible:=true;d2014.Visible:=true;d2016.Visible:=true;d2017.Visible:=true;d2018.Visible:=true;
    end else begin
      d2011.Visible:=false;d2012.Visible:=false;d2013.Visible:=false;d2014.Visible:=false;d2016.Visible:=false;d2017.Visible:=false;d2018.Visible:=false;
    end;
    if rwo213.Caption>'' then begin
      d3011.Visible:=true;d3012.Visible:=true;d3013.Visible:=true;d3014.Visible:=true;d3016.Visible:=true;d3017.Visible:=true;d3018.Visible:=true;
    end else begin
      d3011.Visible:=false;d3012.Visible:=false;d3013.Visible:=false;d3014.Visible:=false;d3016.Visible:=false;d3017.Visible:=false;d3018.Visible:=false;
    end;
  end else begin
    if rwo002.Caption>'' then begin
      d2001.Visible:=true;d2002.Visible:=true;d2003.Visible:=true;d2004.Visible:=true;d2006.Visible:=true;d2007.Visible:=true;d2008.Visible:=true;
    end else begin
      d2001.Visible:=false;d2002.Visible:=false;d2003.Visible:=false;d2004.Visible:=false;d2006.Visible:=false;d2007.Visible:=false;d2008.Visible:=false;
    end;
    if rwo003.Caption>'' then begin
      d3001.Visible:=true;d3002.Visible:=true;d3003.Visible:=true;d3004.Visible:=true;d3006.Visible:=true;d3007.Visible:=true;d3008.Visible:=true;
    end else begin
      d3001.Visible:=false;d3002.Visible:=false;d3003.Visible:=false;d3004.Visible:=false;d3006.Visible:=false;d3007.Visible:=false;d3008.Visible:=false;
    end;
  end;

  if query1.fieldbyname('q1pqty').value>query1.fieldbyname('q1t1qty').value then d1003.Font.Color:=clRed
  else if query1.fieldbyname('q1pqty').value=query1.fieldbyname('q1t1qty').value then d1003.Font.Color:=clBlack else d1003.Font.color:=clGreen;
  if query1.fieldbyname('q1t1qty').value>query1.fieldbyname('q1t2qty').value then d1004.Font.Color:=clRed
  else if query1.fieldbyname('q1t1qty').value=query1.fieldbyname('q1t2qty').value then d1004.Font.Color:=clBlack else d1004.Font.color:=clGreen;
  if query1.fieldbyname('q1t2qty').value>query1.fieldbyname('q1t3qty').value then d1006.Font.Color:=clRed
  else if query1.fieldbyname('q1t2qty').value=query1.fieldbyname('q1t3qty').value then d1006.Font.Color:=clBlack else d1006.Font.color:=clGreen;
  if query1.fieldbyname('q1t3qty').value>query1.fieldbyname('q1aqqty').value then d1007.Font.Color:=clRed
  else if query1.fieldbyname('q1t3qty').value=query1.fieldbyname('q1aqqty').value then d1007.Font.Color:=clBlack else d1007.Font.color:=clGreen;
  if query1.fieldbyname('q1aqqty').value>query1.fieldbyname('q1t4qty').value then d1008.Font.Color:=clRed
  else if query1.fieldbyname('q1aqqty').value=query1.fieldbyname('q1t4qty').value then d1008.Font.Color:=clBlack else d1008.Font.color:=clGreen;

  if query1.fieldbyname('q2pqty').value>query1.fieldbyname('q2t1qty').value then d2003.Font.Color:=clRed
  else if query1.fieldbyname('q2pqty').value=query1.fieldbyname('q2t1qty').value then d2003.Font.Color:=clBlack else d2003.Font.color:=clGreen;
  if query1.fieldbyname('q2t1qty').value>query1.fieldbyname('q2t2qty').value then d2004.Font.Color:=clRed
  else if query1.fieldbyname('q2t1qty').value=query1.fieldbyname('q2t2qty').value then d2004.Font.Color:=clBlack else d2004.Font.color:=clGreen;
  if query1.fieldbyname('q2t2qty').value>query1.fieldbyname('q2t3qty').value then d2006.Font.Color:=clRed
  else if query1.fieldbyname('q2t2qty').value=query1.fieldbyname('q2t3qty').value then d2006.Font.Color:=clBlack else d2006.Font.color:=clGreen;
  if query1.fieldbyname('q2t3qty').value>query1.fieldbyname('q2aqqty').value then d2007.Font.Color:=clRed
  else if query1.fieldbyname('q2t3qty').value=query1.fieldbyname('q2aqqty').value then d2007.Font.Color:=clBlack else d2007.Font.color:=clGreen;
  if query1.fieldbyname('q2aqqty').value>query1.fieldbyname('q2t4qty').value then d2008.Font.Color:=clRed
  else if query1.fieldbyname('q2aqqty').value=query1.fieldbyname('q2t4qty').value then d2008.Font.Color:=clBlack else d2008.Font.color:=clGreen;

  if query1.fieldbyname('q3pqty').value>query1.fieldbyname('q3t1qty').value then d3003.Font.Color:=clRed
  else if query1.fieldbyname('q3pqty').value=query1.fieldbyname('q3t1qty').value then d3003.Font.Color:=clBlack else d3003.Font.color:=clGreen;
  if query1.fieldbyname('q3t1qty').value>query1.fieldbyname('q3t2qty').value then d3004.Font.Color:=clRed
  else if query1.fieldbyname('q3t1qty').value=query1.fieldbyname('q3t2qty').value then d3004.Font.Color:=clBlack else d3004.Font.color:=clGreen;
  if query1.fieldbyname('q3t2qty').value>query1.fieldbyname('q3t3qty').value then d3006.Font.Color:=clRed
  else if query1.fieldbyname('q3t2qty').value=query1.fieldbyname('q3t3qty').value then d3006.Font.Color:=clBlack else d3006.Font.color:=clGreen;
  if query1.fieldbyname('q3t3qty').value>query1.fieldbyname('q3aqqty').value then d3007.Font.Color:=clRed
  else if query1.fieldbyname('q3t3qty').value=query1.fieldbyname('q3aqqty').value then d3007.Font.Color:=clBlack else d3007.Font.color:=clGreen;
  if query1.fieldbyname('q3aqqty').value>query1.fieldbyname('q3t4qty').value then d3008.Font.Color:=clRed
  else if query1.fieldbyname('q3aqqty').value=query1.fieldbyname('q3t4qty').value then d3008.Font.Color:=clBlack else d3008.Font.color:=clGreen;

  if query1.fieldbyname('q4pqty').value>query1.fieldbyname('q4t1qty').value then d1013.Font.Color:=clRed
  else if query1.fieldbyname('q4pqty').value=query1.fieldbyname('q4t1qty').value then d1013.Font.Color:=clBlack else d1013.Font.color:=clGreen;
  if query1.fieldbyname('q4t1qty').value>query1.fieldbyname('q4t2qty').value then d1014.Font.Color:=clRed
  else if query1.fieldbyname('q4t1qty').value=query1.fieldbyname('q4t2qty').value then d1014.Font.Color:=clBlack else d1014.Font.color:=clGreen;
  if query1.fieldbyname('q4t2qty').value>query1.fieldbyname('q4t3qty').value then d1016.Font.Color:=clRed
  else if query1.fieldbyname('q4t2qty').value=query1.fieldbyname('q4t3qty').value then d1016.Font.Color:=clBlack else d1016.Font.color:=clGreen;
  if query1.fieldbyname('q4t3qty').value>query1.fieldbyname('q4aqqty').value then d1017.Font.Color:=clRed
  else if query1.fieldbyname('q4t3qty').value=query1.fieldbyname('q4aqqty').value then d1017.Font.Color:=clBlack else d1017.Font.color:=clGreen;
  if query1.fieldbyname('q4aqqty').value>query1.fieldbyname('q4t4qty').value then d1018.Font.Color:=clRed
  else if query1.fieldbyname('q4aqqty').value=query1.fieldbyname('q4t4qty').value then d1018.Font.Color:=clBlack else d1018.Font.color:=clGreen;

  if query1.fieldbyname('q5pqty').value>query1.fieldbyname('q5t1qty').value then d2013.Font.Color:=clRed
  else if query1.fieldbyname('q5pqty').value=query1.fieldbyname('q5t1qty').value then d2013.Font.Color:=clBlack else d2013.Font.color:=clGreen;
  if query1.fieldbyname('q5t1qty').value>query1.fieldbyname('q5t2qty').value then d2014.Font.Color:=clRed
  else if query1.fieldbyname('q5t1qty').value=query1.fieldbyname('q5t2qty').value then d2014.Font.Color:=clBlack else d2014.Font.color:=clGreen;
  if query1.fieldbyname('q5t2qty').value>query1.fieldbyname('q5t3qty').value then d2016.Font.Color:=clRed
  else if query1.fieldbyname('q5t2qty').value=query1.fieldbyname('q5t3qty').value then d2016.Font.Color:=clBlack else d2016.Font.color:=clGreen;
  if query1.fieldbyname('q5t3qty').value>query1.fieldbyname('q5aqqty').value then d2017.Font.Color:=clRed
  else if query1.fieldbyname('q5t3qty').value=query1.fieldbyname('q5aqqty').value then d2017.Font.Color:=clBlack else d2017.Font.color:=clGreen;
  if query1.fieldbyname('q5aqqty').value>query1.fieldbyname('q5t4qty').value then d2018.Font.Color:=clRed
  else if query1.fieldbyname('q5aqqty').value=query1.fieldbyname('q5t4qty').value then d2018.Font.Color:=clBlack else d2018.Font.color:=clGreen;

  if query1.fieldbyname('q6pqty').value>query1.fieldbyname('q6t1qty').value then d3013.Font.Color:=clRed
  else if query1.fieldbyname('q6pqty').value=query1.fieldbyname('q6t1qty').value then d3013.Font.Color:=clBlack else d3013.Font.color:=clGreen;
  if query1.fieldbyname('q6t1qty').value>query1.fieldbyname('q6t2qty').value then d3014.Font.Color:=clRed
  else if query1.fieldbyname('q6t1qty').value=query1.fieldbyname('q6t2qty').value then d3014.Font.Color:=clBlack else d3014.Font.color:=clGreen;
  if query1.fieldbyname('q6t2qty').value>query1.fieldbyname('q6t3qty').value then d3016.Font.Color:=clRed
  else if query1.fieldbyname('q6t2qty').value=query1.fieldbyname('q6t3qty').value then d3016.Font.Color:=clBlack else d3016.Font.color:=clGreen;
  if query1.fieldbyname('q6t3qty').value>query1.fieldbyname('q6aqqty').value then d3017.Font.Color:=clRed
  else if query1.fieldbyname('q6t3qty').value=query1.fieldbyname('q6aqqty').value then d3017.Font.Color:=clBlack else d3017.Font.color:=clGreen;
  if query1.fieldbyname('q6aqqty').value>query1.fieldbyname('q6t4qty').value then d3018.Font.Color:=clRed
  else if query1.fieldbyname('q6aqqty').value=query1.fieldbyname('q6t4qty').value then d3018.Font.Color:=clBlack else d3018.Font.color:=clGreen;

  if query1.fieldbyname('q7pqty').value>query1.fieldbyname('q7t1qty').value then d1023.Font.Color:=clRed
  else if query1.fieldbyname('q7pqty').value=query1.fieldbyname('q7t1qty').value then d1023.Font.Color:=clBlack else d1023.Font.color:=clGreen;
  if query1.fieldbyname('q7t1qty').value>query1.fieldbyname('q7t2qty').value then d1024.Font.Color:=clRed
  else if query1.fieldbyname('q7t1qty').value=query1.fieldbyname('q7t2qty').value then d1024.Font.Color:=clBlack else d1024.Font.color:=clGreen;
  if query1.fieldbyname('q7t2qty').value>query1.fieldbyname('q7t3qty').value then d1026.Font.Color:=clRed
  else if query1.fieldbyname('q7t2qty').value=query1.fieldbyname('q7t3qty').value then d1026.Font.Color:=clBlack else d1026.Font.color:=clGreen;
  if query1.fieldbyname('q7t3qty').value>query1.fieldbyname('q7aqqty').value then d1027.Font.Color:=clRed
  else if query1.fieldbyname('q7t3qty').value=query1.fieldbyname('q7aqqty').value then d1027.Font.Color:=clBlack else d1027.Font.color:=clGreen;
  if query1.fieldbyname('q7aqqty').value>query1.fieldbyname('q7t4qty').value then d1028.Font.Color:=clRed
  else if query1.fieldbyname('q7aqqty').value=query1.fieldbyname('q7t4qty').value then d1028.Font.Color:=clBlack else d1028.Font.color:=clGreen;

  if query1.fieldbyname('q8pqty').value>query1.fieldbyname('q8t1qty').value then d2023.Font.Color:=clRed
  else if query1.fieldbyname('q8pqty').value=query1.fieldbyname('q8t1qty').value then d2023.Font.Color:=clBlack else d2023.Font.color:=clGreen;
  if query1.fieldbyname('q8t1qty').value>query1.fieldbyname('q8t2qty').value then d2024.Font.Color:=clRed
  else if query1.fieldbyname('q8t1qty').value=query1.fieldbyname('q8t2qty').value then d2024.Font.Color:=clBlack else d2024.Font.color:=clGreen;
  if query1.fieldbyname('q8t2qty').value>query1.fieldbyname('q8t3qty').value then d2026.Font.Color:=clRed
  else if query1.fieldbyname('q8t2qty').value=query1.fieldbyname('q8t3qty').value then d2026.Font.Color:=clBlack else d2026.Font.color:=clGreen;
  if query1.fieldbyname('q8t3qty').value>query1.fieldbyname('q8aqqty').value then d2027.Font.Color:=clRed
  else if query1.fieldbyname('q8t3qty').value=query1.fieldbyname('q8aqqty').value then d2027.Font.Color:=clBlack else d2027.Font.color:=clGreen;
  if query1.fieldbyname('q8aqqty').value>query1.fieldbyname('q8t4qty').value then d2028.Font.Color:=clRed
  else if query1.fieldbyname('q8aqqty').value=query1.fieldbyname('q8t4qty').value then d2028.Font.Color:=clBlack else d2028.Font.color:=clGreen;

  if query1.fieldbyname('q9pqty').value>query1.fieldbyname('q9t1qty').value then d3023.Font.Color:=clRed
  else if query1.fieldbyname('q9pqty').value=query1.fieldbyname('q9t1qty').value then d3023.Font.Color:=clBlack else d3023.Font.color:=clGreen;
  if query1.fieldbyname('q9t1qty').value>query1.fieldbyname('q9t2qty').value then d3024.Font.Color:=clRed
  else if query1.fieldbyname('q9t1qty').value=query1.fieldbyname('q9t2qty').value then d3024.Font.Color:=clBlack else d3024.Font.color:=clGreen;
  if query1.fieldbyname('q9t2qty').value>query1.fieldbyname('q9t3qty').value then d3026.Font.Color:=clRed
  else if query1.fieldbyname('q9t2qty').value=query1.fieldbyname('q9t3qty').value then d3026.Font.Color:=clBlack else d3026.Font.color:=clGreen;
  if query1.fieldbyname('q9t3qty').value>query1.fieldbyname('q9aqqty').value then d3027.Font.Color:=clRed
  else if query1.fieldbyname('q9t3qty').value=query1.fieldbyname('q9aqqty').value then d3027.Font.Color:=clBlack else d3027.Font.color:=clGreen;
  if query1.fieldbyname('q9aqqty').value>query1.fieldbyname('q9t4qty').value then d3028.Font.Color:=clRed
  else if query1.fieldbyname('q9aqqty').value=query1.fieldbyname('q9t4qty').value then d3028.Font.Color:=clBlack else d3028.Font.color:=clGreen;

  if query1.fieldbyname('q10pqty').value>query1.fieldbyname('q10t1qty').value then d1033.Font.Color:=clRed
  else if query1.fieldbyname('q10pqty').value=query1.fieldbyname('q10t1qty').value then d1033.Font.Color:=clBlack else d1033.Font.color:=clGreen;
  if query1.fieldbyname('q10t1qty').value>query1.fieldbyname('q10t2qty').value then d1034.Font.Color:=clRed
  else if query1.fieldbyname('q10t1qty').value=query1.fieldbyname('q10t2qty').value then d1034.Font.Color:=clBlack else d1034.Font.color:=clGreen;
  if query1.fieldbyname('q10t2qty').value>query1.fieldbyname('q10t3qty').value then d1036.Font.Color:=clRed
  else if query1.fieldbyname('q10t2qty').value=query1.fieldbyname('q10t3qty').value then d1036.Font.Color:=clBlack else d1036.Font.color:=clGreen;
  if query1.fieldbyname('q10t3qty').value>query1.fieldbyname('q10aqqty').value then d1037.Font.Color:=clRed
  else if query1.fieldbyname('q10t3qty').value=query1.fieldbyname('q10aqqty').value then d1037.Font.Color:=clBlack else d1037.Font.color:=clGreen;
  if query1.fieldbyname('q10aqqty').value>query1.fieldbyname('q10t4qty').value then d1038.Font.Color:=clRed
  else if query1.fieldbyname('q10aqqty').value=query1.fieldbyname('q10t4qty').value then d1038.Font.Color:=clBlack else d1038.Font.color:=clGreen;

  if query1.fieldbyname('q11pqty').value>query1.fieldbyname('q11t1qty').value then d2033.Font.Color:=clRed
  else if query1.fieldbyname('q11pqty').value=query1.fieldbyname('q11t1qty').value then d2033.Font.Color:=clBlack else d2033.Font.color:=clGreen;
  if query1.fieldbyname('q11t1qty').value>query1.fieldbyname('q11t2qty').value then d2034.Font.Color:=clRed
  else if query1.fieldbyname('q11t1qty').value=query1.fieldbyname('q11t2qty').value then d2034.Font.Color:=clBlack else d2034.Font.color:=clGreen;
  if query1.fieldbyname('q11t2qty').value>query1.fieldbyname('q11t3qty').value then d2036.Font.Color:=clRed
  else if query1.fieldbyname('q11t2qty').value=query1.fieldbyname('q11t3qty').value then d2036.Font.Color:=clBlack else d2036.Font.color:=clGreen;
  if query1.fieldbyname('q11t3qty').value>query1.fieldbyname('q11aqqty').value then d2037.Font.Color:=clRed
  else if query1.fieldbyname('q11t3qty').value=query1.fieldbyname('q11aqqty').value then d2037.Font.Color:=clBlack else d2037.Font.color:=clGreen;
  if query1.fieldbyname('q11aqqty').value>query1.fieldbyname('q11t4qty').value then d2038.Font.Color:=clRed
  else if query1.fieldbyname('q11aqqty').value=query1.fieldbyname('q11t4qty').value then d2038.Font.Color:=clBlack else d2038.Font.color:=clGreen;

  if query1.fieldbyname('q12pqty').value>query1.fieldbyname('q12t1qty').value then d3033.Font.Color:=clRed
  else if query1.fieldbyname('q12pqty').value=query1.fieldbyname('q12t1qty').value then d3033.Font.Color:=clBlack else d3033.Font.color:=clGreen;
  if query1.fieldbyname('q12t1qty').value>query1.fieldbyname('q12t2qty').value then d3034.Font.Color:=clRed
  else if query1.fieldbyname('q12t1qty').value=query1.fieldbyname('q12t2qty').value then d3034.Font.Color:=clBlack else d3034.Font.color:=clGreen;
  if query1.fieldbyname('q12t2qty').value>query1.fieldbyname('q12t3qty').value then d3036.Font.Color:=clRed
  else if query1.fieldbyname('q12t2qty').value=query1.fieldbyname('q12t3qty').value then d3036.Font.Color:=clBlack else d3036.Font.color:=clGreen;
  if query1.fieldbyname('q12t3qty').value>query1.fieldbyname('q12aqqty').value then d3037.Font.Color:=clRed
  else if query1.fieldbyname('q12t3qty').value=query1.fieldbyname('q12aqqty').value then d3037.Font.Color:=clBlack else d3037.Font.color:=clGreen;
  if query1.fieldbyname('q12aqqty').value>query1.fieldbyname('q12t4qty').value then d3038.Font.Color:=clRed
  else if query1.fieldbyname('q12aqqty').value=query1.fieldbyname('q12t4qty').value then d3038.Font.Color:=clBlack else d3038.Font.color:=clGreen;

  if query1.fieldbyname('q13pqty').value>query1.fieldbyname('q13t1qty').value then d1043.Font.Color:=clRed
  else if query1.fieldbyname('q13pqty').value=query1.fieldbyname('q13t1qty').value then d1043.Font.Color:=clBlack else d1043.Font.color:=clGreen;
  if query1.fieldbyname('q13t1qty').value>query1.fieldbyname('q13t2qty').value then d1044.Font.Color:=clRed
  else if query1.fieldbyname('q13t1qty').value=query1.fieldbyname('q13t2qty').value then d1044.Font.Color:=clBlack else d1044.Font.color:=clGreen;
  if query1.fieldbyname('q13t2qty').value>query1.fieldbyname('q13t3qty').value then d1046.Font.Color:=clRed
  else if query1.fieldbyname('q13t2qty').value=query1.fieldbyname('q13t3qty').value then d1046.Font.Color:=clBlack else d1046.Font.color:=clGreen;
  if query1.fieldbyname('q13t3qty').value>query1.fieldbyname('q13aqqty').value then d1047.Font.Color:=clRed
  else if query1.fieldbyname('q13t3qty').value=query1.fieldbyname('q13aqqty').value then d1047.Font.Color:=clBlack else d1047.Font.color:=clGreen;
  if query1.fieldbyname('q13aqqty').value>query1.fieldbyname('q13t4qty').value then d1048.Font.Color:=clRed
  else if query1.fieldbyname('q13aqqty').value=query1.fieldbyname('q13t4qty').value then d1048.Font.Color:=clBlack else d1048.Font.color:=clGreen;

  if query1.fieldbyname('q14pqty').value>query1.fieldbyname('q14t1qty').value then d2043.Font.Color:=clRed
  else if query1.fieldbyname('q14pqty').value=query1.fieldbyname('q14t1qty').value then d2043.Font.Color:=clBlack else d2043.Font.color:=clGreen;
  if query1.fieldbyname('q14t1qty').value>query1.fieldbyname('q14t2qty').value then d2044.Font.Color:=clRed
  else if query1.fieldbyname('q14t1qty').value=query1.fieldbyname('q14t2qty').value then d2044.Font.Color:=clBlack else d2044.Font.color:=clGreen;
  if query1.fieldbyname('q14t2qty').value>query1.fieldbyname('q14t3qty').value then d2046.Font.Color:=clRed
  else if query1.fieldbyname('q14t2qty').value=query1.fieldbyname('q14t3qty').value then d2046.Font.Color:=clBlack else d2046.Font.color:=clGreen;
  if query1.fieldbyname('q14t3qty').value>query1.fieldbyname('q14aqqty').value then d2047.Font.Color:=clRed
  else if query1.fieldbyname('q14t3qty').value=query1.fieldbyname('q14aqqty').value then d2047.Font.Color:=clBlack else d2047.Font.color:=clGreen;
  if query1.fieldbyname('q14aqqty').value>query1.fieldbyname('q14t4qty').value then d2048.Font.Color:=clRed
  else if query1.fieldbyname('q14aqqty').value=query1.fieldbyname('q14t4qty').value then d2048.Font.Color:=clBlack else d2048.Font.color:=clGreen;

  if query1.fieldbyname('q15pqty').value>query1.fieldbyname('q15t1qty').value then d3043.Font.Color:=clRed
  else if query1.fieldbyname('q15pqty').value=query1.fieldbyname('q15t1qty').value then d3043.Font.Color:=clBlack else d3043.Font.color:=clGreen;
  if query1.fieldbyname('q15t1qty').value>query1.fieldbyname('q15t2qty').value then d3044.Font.Color:=clRed
  else if query1.fieldbyname('q15t1qty').value=query1.fieldbyname('q15t2qty').value then d3044.Font.Color:=clBlack else d3044.Font.color:=clGreen;
  if query1.fieldbyname('q15t2qty').value>query1.fieldbyname('q15t3qty').value then d3046.Font.Color:=clRed
  else if query1.fieldbyname('q15t2qty').value=query1.fieldbyname('q15t3qty').value then d3046.Font.Color:=clBlack else d3046.Font.color:=clGreen;
  if query1.fieldbyname('q15t3qty').value>query1.fieldbyname('q15aqqty').value then d3047.Font.Color:=clRed
  else if query1.fieldbyname('q15t3qty').value=query1.fieldbyname('q15aqqty').value then d3047.Font.Color:=clBlack else d3047.Font.color:=clGreen;
  if query1.fieldbyname('q15aqqty').value>query1.fieldbyname('q15t4qty').value then d3048.Font.Color:=clRed
  else if query1.fieldbyname('q15aqqty').value=query1.fieldbyname('q15t4qty').value then d3048.Font.Color:=clBlack else d3048.Font.color:=clGreen;

  if query1.fieldbyname('q16pqty').value>query1.fieldbyname('q16t1qty').value then d1053.Font.Color:=clRed
  else if query1.fieldbyname('q16pqty').value=query1.fieldbyname('q16t1qty').value then d1053.Font.Color:=clBlack else d1053.Font.color:=clGreen;
  if query1.fieldbyname('q16t1qty').value>query1.fieldbyname('q16t2qty').value then d1054.Font.Color:=clRed
  else if query1.fieldbyname('q16t1qty').value=query1.fieldbyname('q16t2qty').value then d1054.Font.Color:=clBlack else d1054.Font.color:=clGreen;
  if query1.fieldbyname('q16t2qty').value>query1.fieldbyname('q16t3qty').value then d1056.Font.Color:=clRed
  else if query1.fieldbyname('q16t2qty').value=query1.fieldbyname('q16t3qty').value then d1056.Font.Color:=clBlack else d1056.Font.color:=clGreen;
  if query1.fieldbyname('q16t3qty').value>query1.fieldbyname('q16aqqty').value then d1057.Font.Color:=clRed
  else if query1.fieldbyname('q16t3qty').value=query1.fieldbyname('q16aqqty').value then d1057.Font.Color:=clBlack else d1057.Font.color:=clGreen;
  if query1.fieldbyname('q16aqqty').value>query1.fieldbyname('q16t4qty').value then d1058.Font.Color:=clRed
  else if query1.fieldbyname('q16aqqty').value=query1.fieldbyname('q16t4qty').value then d1058.Font.Color:=clBlack else d1058.Font.color:=clGreen;

  if query1.fieldbyname('q17pqty').value>query1.fieldbyname('q17t1qty').value then d2053.Font.Color:=clRed
  else if query1.fieldbyname('q17pqty').value=query1.fieldbyname('q17t1qty').value then d2053.Font.Color:=clBlack else d2053.Font.color:=clGreen;
  if query1.fieldbyname('q17t1qty').value>query1.fieldbyname('q17t2qty').value then d2054.Font.Color:=clRed
  else if query1.fieldbyname('q17t1qty').value=query1.fieldbyname('q17t2qty').value then d2054.Font.Color:=clBlack else d2054.Font.color:=clGreen;
  if query1.fieldbyname('q17t2qty').value>query1.fieldbyname('q17t3qty').value then d2056.Font.Color:=clRed
  else if query1.fieldbyname('q17t2qty').value=query1.fieldbyname('q17t3qty').value then d2056.Font.Color:=clBlack else d2056.Font.color:=clGreen;
  if query1.fieldbyname('q17t3qty').value>query1.fieldbyname('q17aqqty').value then d2057.Font.Color:=clRed
  else if query1.fieldbyname('q17t3qty').value=query1.fieldbyname('q17aqqty').value then d2057.Font.Color:=clBlack else d2057.Font.color:=clGreen;
  if query1.fieldbyname('q17aqqty').value>query1.fieldbyname('q17t4qty').value then d2058.Font.Color:=clRed
  else if query1.fieldbyname('q17aqqty').value=query1.fieldbyname('q17t4qty').value then d2058.Font.Color:=clBlack else d2058.Font.color:=clGreen;

  if query1.fieldbyname('q18pqty').value>query1.fieldbyname('q18t1qty').value then d3053.Font.Color:=clRed
  else if query1.fieldbyname('q18pqty').value=query1.fieldbyname('q18t1qty').value then d3053.Font.Color:=clBlack else d3053.Font.color:=clGreen;
  if query1.fieldbyname('q18t1qty').value>query1.fieldbyname('q18t2qty').value then d3054.Font.Color:=clRed
  else if query1.fieldbyname('q18t1qty').value=query1.fieldbyname('q18t2qty').value then d3054.Font.Color:=clBlack else d3054.Font.color:=clGreen;
  if query1.fieldbyname('q18t2qty').value>query1.fieldbyname('q18t3qty').value then d3056.Font.Color:=clRed
  else if query1.fieldbyname('q18t2qty').value=query1.fieldbyname('q18t3qty').value then d3056.Font.Color:=clBlack else d3056.Font.color:=clGreen;
  if query1.fieldbyname('q18t3qty').value>query1.fieldbyname('q18aqqty').value then d3057.Font.Color:=clRed
  else if query1.fieldbyname('q18t3qty').value=query1.fieldbyname('q18aqqty').value then d3057.Font.Color:=clBlack else d3057.Font.color:=clGreen;
  if query1.fieldbyname('q18aqqty').value>query1.fieldbyname('q18t4qty').value then d3058.Font.Color:=clRed
  else if query1.fieldbyname('q18aqqty').value=query1.fieldbyname('q18t4qty').value then d3058.Font.Color:=clBlack else d3058.Font.color:=clGreen;

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
end;

procedure Tfrmpdnrpt8.ppGroupFooterBand12BeforePrint(Sender: TObject);
begin
  b1161.DataField:='q4qty';b1162.DataField:='q4pqty';b1163.DataField:='q4t1qty';b1164.DataField:='q4t2qty';b1166.DataField:='q4t3qty';b1167.DataField:='q4aqqty';b1168.DataField:='q4t4qty';
  b2161.DataField:='q5qty';b2162.DataField:='q5pqty';b2163.DataField:='q5t1qty';b2164.DataField:='q5t2qty';b2166.DataField:='q5t3qty';b2167.DataField:='q5aqqty';b2168.DataField:='q5t4qty';
  b3161.DataField:='q6qty';b3162.DataField:='q6pqty';b3163.DataField:='q6t1qty';b3164.DataField:='q6t2qty';b3166.DataField:='q6t3qty';b3167.DataField:='q6aqqty';b3168.DataField:='q6t4qty';

  b1171.DataField:='q7qty';b1172.DataField:='q7pqty';b1173.DataField:='q7t1qty';b1174.DataField:='q7t2qty';b1176.DataField:='q7t3qty';b1177.DataField:='q7aqqty';b1178.DataField:='q7t4qty';
  b2171.DataField:='q8qty';b2172.DataField:='q8pqty';b2173.DataField:='q8t1qty';b2174.DataField:='q8t2qty';b2176.DataField:='q8t3qty';b2177.DataField:='q8aqqty';b2178.DataField:='q8t4qty';
  b3171.DataField:='q9qty';b3172.DataField:='q9pqty';b3173.DataField:='q9t1qty';b3174.DataField:='q9t2qty';b3176.DataField:='q9t3qty';b3177.DataField:='q9aqqty';b3178.DataField:='q9t4qty';

  b1181.DataField:='q10qty';b1182.DataField:='q10pqty';b1183.DataField:='q10t1qty';b1184.DataField:='q10t2qty';b1186.DataField:='q10t3qty';b1187.DataField:='q10aqqty';b1188.DataField:='q10t4qty';
  b2181.DataField:='q11qty';b2182.DataField:='q11pqty';b2183.DataField:='q11t1qty';b2184.DataField:='q11t2qty';b2186.DataField:='q11t3qty';b2187.DataField:='q11aqqty';b2188.DataField:='q11t4qty';
  b3181.DataField:='q12qty';b3182.DataField:='q12pqty';b3183.DataField:='q12t1qty';b3184.DataField:='q12t2qty';b3186.DataField:='q12t3qty';b3187.DataField:='q12aqqty';b3188.DataField:='q12t4qty';

  b1191.DataField:='q13qty';b1192.DataField:='q13pqty';b1193.DataField:='q13t1qty';b1194.DataField:='q13t2qty';b1196.DataField:='q13t3qty';b1197.DataField:='q13aqqty';b1198.DataField:='q13t4qty';
  b2191.DataField:='q14qty';b2192.DataField:='q14pqty';b2193.DataField:='q14t1qty';b2194.DataField:='q14t2qty';b2196.DataField:='q14t3qty';b2197.DataField:='q14aqqty';b2198.DataField:='q14t4qty';
  b3191.DataField:='q15qty';b3192.DataField:='q15pqty';b3193.DataField:='q15t1qty';b3194.DataField:='q15t2qty';b3196.DataField:='q15t3qty';b3197.DataField:='q15aqqty';b3198.DataField:='q15t4qty';

  b1201.DataField:='q16qty';b1202.DataField:='q16pqty';b1203.DataField:='q16t1qty';b1204.DataField:='q16t2qty';b1206.DataField:='q16t3qty';b1207.DataField:='q16aqqty';b1208.DataField:='q16t4qty';
  b2201.DataField:='q17qty';b2202.DataField:='q17pqty';b2203.DataField:='q17t1qty';b2204.DataField:='q17t2qty';b2206.DataField:='q17t3qty';b2207.DataField:='q17aqqty';b2208.DataField:='q17t4qty';
  b3201.DataField:='q18qty';b3202.DataField:='q18pqty';b3203.DataField:='q18t1qty';b3204.DataField:='q18t2qty';b3206.DataField:='q18t3qty';b3207.DataField:='q18aqqty';b3208.DataField:='q18t4qty';

  b1151.Visible:=false;b1152.Visible:=false;b1153.Visible:=false;b1154.Visible:=false;b1156.Visible:=false;b1157.Visible:=false;b1158.Visible:=false;
  b2151.Visible:=false;b2152.Visible:=false;b2153.Visible:=false;b2154.Visible:=false;b2156.Visible:=false;b2157.Visible:=false;b2158.Visible:=false;
  b3151.Visible:=false;b3152.Visible:=false;b3153.Visible:=false;b3154.Visible:=false;b3156.Visible:=false;b3157.Visible:=false;b3158.Visible:=false;

  b1161.Visible:=false;b1162.Visible:=false;b1163.Visible:=false;b1164.Visible:=false;b1166.Visible:=false;b1167.Visible:=false;b1168.Visible:=false;
  b2161.Visible:=false;b2162.Visible:=false;b2163.Visible:=false;b2164.Visible:=false;b2166.Visible:=false;b2167.Visible:=false;b2168.Visible:=false;
  b3161.Visible:=false;b3162.Visible:=false;b3163.Visible:=false;b3164.Visible:=false;b3166.Visible:=false;b3167.Visible:=false;b3168.Visible:=false;

  b1171.Visible:=false;b1172.Visible:=false;b1173.Visible:=false;b1174.Visible:=false;b1176.Visible:=false;b1177.Visible:=false;b1178.Visible:=false;
  b2171.Visible:=false;b2172.Visible:=false;b2173.Visible:=false;b2174.Visible:=false;b2176.Visible:=false;b2177.Visible:=false;b2178.Visible:=false;
  b3171.Visible:=false;b3172.Visible:=false;b3173.Visible:=false;b3174.Visible:=false;b3176.Visible:=false;b3177.Visible:=false;b3178.Visible:=false;

  b1181.Visible:=false;b1182.Visible:=false;b1183.Visible:=false;b1184.Visible:=false;b1186.Visible:=false;b1187.Visible:=false;b1188.Visible:=false;
  b2181.Visible:=false;b2182.Visible:=false;b2183.Visible:=false;b2184.Visible:=false;b2186.Visible:=false;b2187.Visible:=false;b2188.Visible:=false;
  b3181.Visible:=false;b3182.Visible:=false;b3183.Visible:=false;b3184.Visible:=false;b3186.Visible:=false;b3187.Visible:=false;b3188.Visible:=false;

  b1191.Visible:=false;b1192.Visible:=false;b1193.Visible:=false;b1194.Visible:=false;b1196.Visible:=false;b1197.Visible:=false;b1198.Visible:=false;
  b2191.Visible:=false;b2192.Visible:=false;b2193.Visible:=false;b2194.Visible:=false;b2196.Visible:=false;b2197.Visible:=false;b2198.Visible:=false;
  b3191.Visible:=false;b3192.Visible:=false;b3193.Visible:=false;b3194.Visible:=false;b3196.Visible:=false;b3197.Visible:=false;b3198.Visible:=false;

  b1201.Visible:=false;b1202.Visible:=false;b1203.Visible:=false;b1204.Visible:=false;b1206.Visible:=false;b1207.Visible:=false;b1208.Visible:=false;
  b2201.Visible:=false;b2202.Visible:=false;b2203.Visible:=false;b2204.Visible:=false;b2206.Visible:=false;b2207.Visible:=false;b2208.Visible:=false;
  b3201.Visible:=false;b3202.Visible:=false;b3203.Visible:=false;b3204.Visible:=false;b3206.Visible:=false;b3207.Visible:=false;b3208.Visible:=false;

  if rwo601.Caption>'' then begin
    b1151.Visible:=true;b1152.Visible:=true;b1153.Visible:=true;b1154.Visible:=true;b1156.Visible:=true;b1157.Visible:=true;b1158.Visible:=true;
  end;
  if rwo602.Caption>'' then begin
    b2151.Visible:=true;b2152.Visible:=true;b2153.Visible:=true;b2154.Visible:=true;b2156.Visible:=true;b2157.Visible:=true;b2158.Visible:=true;
  end;
  if rwo603.Caption>'' then begin
    b3151.Visible:=true;b3152.Visible:=true;b3153.Visible:=true;b3154.Visible:=true;b3156.Visible:=true;b3157.Visible:=true;b3158.Visible:=true;
  end;
  if rwo611.Caption>'' then begin
    b1161.Visible:=true;b1162.Visible:=true;b1163.Visible:=true;b1164.Visible:=true;b1166.Visible:=true;b1167.Visible:=true;b1168.Visible:=true;
  end;
  if rwo612.Caption>'' then begin
    b2161.Visible:=true;b2162.Visible:=true;b2163.Visible:=true;b2164.Visible:=true;b2166.Visible:=true;b2167.Visible:=true;b2168.Visible:=true;
  end;
  if rwo613.Caption>'' then begin
    b3161.Visible:=true;b3162.Visible:=true;b3163.Visible:=true;b3164.Visible:=true;b3166.Visible:=true;b3167.Visible:=true;b3168.Visible:=true;
  end;
  if rwo621.Caption>'' then begin
    b1171.Visible:=true;b1172.Visible:=true;b1173.Visible:=true;b1174.Visible:=true;b1176.Visible:=true;b1177.Visible:=true;b1178.Visible:=true;
  end;
  if rwo622.Caption>'' then begin
    b2171.Visible:=true;b2172.Visible:=true;b2173.Visible:=true;b2174.Visible:=true;b2176.Visible:=true;b2177.Visible:=true;b2178.Visible:=true;
  end;
  if rwo623.Caption>'' then begin
    b3171.Visible:=true;b3172.Visible:=true;b3173.Visible:=true;b3174.Visible:=true;b3176.Visible:=true;b3177.Visible:=true;b3178.Visible:=true;
  end;
  if rwo631.Caption>'' then begin
    b1181.Visible:=true;b1182.Visible:=true;b1183.Visible:=true;b1184.Visible:=true;b1186.Visible:=true;b1187.Visible:=true;b1188.Visible:=true;
  end;
  if rwo632.Caption>'' then begin
    b2181.Visible:=true;b2182.Visible:=true;b2183.Visible:=true;b2184.Visible:=true;b2186.Visible:=true;b2187.Visible:=true;b2188.Visible:=true;
  end;
  if rwo633.Caption>'' then begin
    b3181.Visible:=true;b3182.Visible:=true;b3183.Visible:=true;b3184.Visible:=true;b3186.Visible:=true;b3187.Visible:=true;b3188.Visible:=true;
  end;
  if rwo641.Caption>'' then begin
    b1191.Visible:=true;b1192.Visible:=true;b1193.Visible:=true;b1194.Visible:=true;b1196.Visible:=true;b1197.Visible:=true;b1198.Visible:=true;
  end;
  if rwo642.Caption>'' then begin
    b2191.Visible:=true;b2192.Visible:=true;b2193.Visible:=true;b2194.Visible:=true;b2196.Visible:=true;b2197.Visible:=true;b2198.Visible:=true;
  end;
  if rwo643.Caption>'' then begin
    b3191.Visible:=true;b3192.Visible:=true;b3193.Visible:=true;b3194.Visible:=true;b3196.Visible:=true;b3197.Visible:=true;b3198.Visible:=true;
  end;
  if rwo651.Caption>'' then begin
    b1201.Visible:=true;b1202.Visible:=true;b1203.Visible:=true;b1204.Visible:=true;b1206.Visible:=true;b1207.Visible:=true;b1208.Visible:=true;
  end;
  if rwo652.Caption>'' then begin
    b2201.Visible:=true;b2202.Visible:=true;b2203.Visible:=true;b2204.Visible:=true;b2206.Visible:=true;b2207.Visible:=true;b2208.Visible:=true;
  end;
  if rwo653.Caption>'' then begin
    b3201.Visible:=true;b3202.Visible:=true;b3203.Visible:=true;b3204.Visible:=true;b3206.Visible:=true;b3207.Visible:=true;b3208.Visible:=true;
  end;

  //QN 1
  if b1152.Value>b1153.Value then b1153.Font.Color:=clRed
  else if b1152.Value=b1153.Value then b1153.Font.Color:=clBlack else b1153.Font.Color:=clGreen;
  if b1153.Value>b1154.Value then b1154.Font.Color:=clRed
  else if b1153.Value=b1154.Value then b1154.Font.Color:=clBlack else b1154.Font.Color:=clGreen;
  if b1154.Value>b1156.Value then b1156.Font.Color:=clRed
  else if b1154.Value=b1156.Value then b1156.Font.Color:=clBlack else b1156.Font.Color:=clGreen;
  if b1156.Value>b1157.Value then b1157.Font.Color:=clRed
  else if b1156.Value=b1157.Value then b1157.Font.Color:=clBlack else b1157.Font.Color:=clGreen;
  if b1157.Value>b1158.Value then b1158.Font.Color:=clRed
  else if b1157.Value=b1158.Value then b1158.Font.Color:=clBlack else b1158.Font.Color:=clGreen;

  //QN 2
  if b2152.Value>b2153.Value then b2153.Font.Color:=clRed
  else if b2152.Value=b2153.Value then b2153.Font.Color:=clBlack else b2153.Font.Color:=clGreen;
  if b2153.Value>b2154.Value then b2154.Font.Color:=clRed
  else if b2153.Value=b2154.Value then b2154.Font.Color:=clBlack else b2154.Font.Color:=clGreen;
  if b2154.Value>b2156.Value then b2156.Font.Color:=clRed
  else if b2154.Value=b2156.Value then b2156.Font.Color:=clBlack else b2156.Font.Color:=clGreen;
  if b2156.Value>b2157.Value then b2157.Font.Color:=clRed
  else if b2156.Value=b2157.Value then b2157.Font.Color:=clBlack else b2157.Font.Color:=clGreen;
  if b2157.Value>b2158.Value then b2158.Font.Color:=clRed
  else if b2157.Value=b2158.Value then b2158.Font.Color:=clBlack else b2158.Font.Color:=clGreen;

  //QN 3
  if b3152.Value>b3153.Value then b3153.Font.Color:=clRed
  else if b3152.Value=b3153.Value then b3153.Font.Color:=clBlack else b3153.Font.Color:=clGreen;
  if b3153.Value>b3154.Value then b3154.Font.Color:=clRed
  else if b3153.Value=b3154.Value then b3154.Font.Color:=clBlack else b3154.Font.Color:=clGreen;
  if b3154.Value>b3156.Value then b3156.Font.Color:=clRed
  else if b3154.Value=b3156.Value then b3156.Font.Color:=clBlack else b3156.Font.Color:=clGreen;
  if b3156.Value>b3157.Value then b3157.Font.Color:=clRed
  else if b3156.Value=b3157.Value then b3157.Font.Color:=clBlack else b3157.Font.Color:=clGreen;
  if b3157.Value>b3158.Value then b3158.Font.Color:=clRed
  else if b3157.Value=b3158.Value then b3158.Font.Color:=clBlack else b3158.Font.Color:=clGreen;

  //QN 4
  if b1162.Value>b1163.Value then b1163.Font.Color:=clRed
  else if b1162.Value=b1163.Value then b1163.Font.Color:=clBlack else b1163.Font.Color:=clGreen;
  if b1163.Value>b1164.Value then b1164.Font.Color:=clRed
  else if b1163.Value=b1164.Value then b1164.Font.Color:=clBlack else b1164.Font.Color:=clGreen;
  if b1164.Value>b1166.Value then b1166.Font.Color:=clRed
  else if b1164.Value=b1166.Value then b1166.Font.Color:=clBlack else b1166.Font.Color:=clGreen;
  if b1166.Value>b1167.Value then b1167.Font.Color:=clRed
  else if b1166.Value=b1167.Value then b1167.Font.Color:=clBlack else b1167.Font.Color:=clGreen;
  if b1167.Value>b1168.Value then b1168.Font.Color:=clRed
  else if b1167.Value=b1168.Value then b1168.Font.Color:=clBlack else b1168.Font.Color:=clGreen;

  //QN 5
  if b2162.Value>b2163.Value then b2163.Font.Color:=clRed
  else if b2162.Value=b2163.Value then b2163.Font.Color:=clBlack else b2163.Font.Color:=clGreen;
  if b2163.Value>b2164.Value then b2164.Font.Color:=clRed
  else if b2163.Value=b2164.Value then b2164.Font.Color:=clBlack else b2164.Font.Color:=clGreen;
  if b2164.Value>b2166.Value then b2166.Font.Color:=clRed
  else if b2164.Value=b2166.Value then b2166.Font.Color:=clBlack else b2166.Font.Color:=clGreen;
  if b2166.Value>b2167.Value then b2167.Font.Color:=clRed
  else if b2166.Value=b2167.Value then b2167.Font.Color:=clBlack else b2167.Font.Color:=clGreen;
  if b2167.Value>b2168.Value then b2168.Font.Color:=clRed
  else if b2167.Value=b2168.Value then b2168.Font.Color:=clBlack else b2168.Font.Color:=clGreen;

  //QN 6
  if b3162.Value>b3163.Value then b3163.Font.Color:=clRed
  else if b3162.Value=b3163.Value then b3163.Font.Color:=clBlack else b3163.Font.Color:=clGreen;
  if b3163.Value>b3164.Value then b3164.Font.Color:=clRed
  else if b3163.Value=b3164.Value then b3164.Font.Color:=clBlack else b3164.Font.Color:=clGreen;
  if b3164.Value>b3166.Value then b3166.Font.Color:=clRed
  else if b3164.Value=b3166.Value then b3166.Font.Color:=clBlack else b3166.Font.Color:=clGreen;
  if b3166.Value>b3167.Value then b3167.Font.Color:=clRed
  else if b3166.Value=b3167.Value then b3167.Font.Color:=clBlack else b3167.Font.Color:=clGreen;
  if b3167.Value>b3168.Value then b3168.Font.Color:=clRed
  else if b3167.Value=b3168.Value then b3168.Font.Color:=clBlack else b3168.Font.Color:=clGreen;

  //QN 7
  if b1172.Value>b1173.Value then b1173.Font.Color:=clRed
  else if b1172.Value=b1173.Value then b1173.Font.Color:=clBlack else b1173.Font.Color:=clGreen;
  if b1173.Value>b1174.Value then b1174.Font.Color:=clRed
  else if b1173.Value=b1174.Value then b1174.Font.Color:=clBlack else b1174.Font.Color:=clGreen;
  if b1174.Value>b1176.Value then b1176.Font.Color:=clRed
  else if b1174.Value=b1176.Value then b1176.Font.Color:=clBlack else b1176.Font.Color:=clGreen;
  if b1176.Value>b1177.Value then b1177.Font.Color:=clRed
  else if b1176.Value=b1177.Value then b1177.Font.Color:=clBlack else b1177.Font.Color:=clGreen;
  if b1177.Value>b1178.Value then b1178.Font.Color:=clRed
  else if b1177.Value=b1178.Value then b1178.Font.Color:=clBlack else b1178.Font.Color:=clGreen;

  //QN 8
  if b2172.Value>b2173.Value then b2173.Font.Color:=clRed
  else if b2172.Value=b2173.Value then b2173.Font.Color:=clBlack else b2173.Font.Color:=clGreen;
  if b2173.Value>b2174.Value then b2174.Font.Color:=clRed
  else if b2173.Value=b2174.Value then b2174.Font.Color:=clBlack else b2174.Font.Color:=clGreen;
  if b2174.Value>b2176.Value then b2176.Font.Color:=clRed
  else if b2174.Value=b2176.Value then b2176.Font.Color:=clBlack else b2176.Font.Color:=clGreen;
  if b2176.Value>b2177.Value then b2177.Font.Color:=clRed
  else if b2176.Value=b2177.Value then b2177.Font.Color:=clBlack else b2177.Font.Color:=clGreen;
  if b2177.Value>b2178.Value then b2178.Font.Color:=clRed
  else if b2177.Value=b2178.Value then b2178.Font.Color:=clBlack else b2178.Font.Color:=clGreen;

  //QN 9
  if b3172.Value>b3173.Value then b3173.Font.Color:=clRed
  else if b3172.Value=b3173.Value then b3173.Font.Color:=clBlack else b3173.Font.Color:=clGreen;
  if b3173.Value>b3174.Value then b3174.Font.Color:=clRed
  else if b3173.Value=b3174.Value then b3174.Font.Color:=clBlack else b3174.Font.Color:=clGreen;
  if b3174.Value>b3176.Value then b3176.Font.Color:=clRed
  else if b3174.Value=b3176.Value then b3176.Font.Color:=clBlack else b3176.Font.Color:=clGreen;
  if b3176.Value>b3177.Value then b3177.Font.Color:=clRed
  else if b3176.Value=b3177.Value then b3177.Font.Color:=clBlack else b3177.Font.Color:=clGreen;
  if b3177.Value>b3178.Value then b3178.Font.Color:=clRed
  else if b3177.Value=b3178.Value then b3178.Font.Color:=clBlack else b3178.Font.Color:=clGreen;

  //QN 10
  if b1182.Value>b1183.Value then b1183.Font.Color:=clRed
  else if b1182.Value=b1183.Value then b1183.Font.Color:=clBlack else b1183.Font.Color:=clGreen;
  if b1183.Value>b1184.Value then b1184.Font.Color:=clRed
  else if b1183.Value=b1184.Value then b1184.Font.Color:=clBlack else b1184.Font.Color:=clGreen;
  if b1184.Value>b1186.Value then b1186.Font.Color:=clRed
  else if b1184.Value=b1186.Value then b1186.Font.Color:=clBlack else b1186.Font.Color:=clGreen;
  if b1186.Value>b1187.Value then b1187.Font.Color:=clRed
  else if b1186.Value=b1187.Value then b1187.Font.Color:=clBlack else b1187.Font.Color:=clGreen;
  if b1187.Value>b1188.Value then b1188.Font.Color:=clRed
  else if b1187.Value=b1188.Value then b1188.Font.Color:=clBlack else b1188.Font.Color:=clGreen;

  //QN 11
  if b2182.Value>b2183.Value then b2183.Font.Color:=clRed
  else if b2182.Value=b2183.Value then b2183.Font.Color:=clBlack else b2183.Font.Color:=clGreen;
  if b2183.Value>b2184.Value then b2184.Font.Color:=clRed
  else if b2183.Value=b2184.Value then b2184.Font.Color:=clBlack else b2184.Font.Color:=clGreen;
  if b2184.Value>b2186.Value then b2186.Font.Color:=clRed
  else if b2184.Value=b2186.Value then b2186.Font.Color:=clBlack else b2186.Font.Color:=clGreen;
  if b2186.Value>b2187.Value then b2187.Font.Color:=clRed
  else if b2186.Value=b2187.Value then b2187.Font.Color:=clBlack else b2187.Font.Color:=clGreen;
  if b2187.Value>b2188.Value then b2188.Font.Color:=clRed
  else if b2187.Value=b2188.Value then b2188.Font.Color:=clBlack else b2188.Font.Color:=clGreen;

  //QN 12
  if b3182.Value>b3183.Value then b3183.Font.Color:=clRed
  else if b3182.Value=b3183.Value then b3183.Font.Color:=clBlack else b3183.Font.Color:=clGreen;
  if b3183.Value>b3184.Value then b3184.Font.Color:=clRed
  else if b3183.Value=b3184.Value then b3184.Font.Color:=clBlack else b3184.Font.Color:=clGreen;
  if b3184.Value>b3186.Value then b3186.Font.Color:=clRed
  else if b3184.Value=b3186.Value then b3186.Font.Color:=clBlack else b3186.Font.Color:=clGreen;
  if b3186.Value>b3187.Value then b3187.Font.Color:=clRed
  else if b3186.Value=b3187.Value then b3187.Font.Color:=clBlack else b3187.Font.Color:=clGreen;
  if b3187.Value>b3188.Value then b3188.Font.Color:=clRed
  else if b3187.Value=b3188.Value then b3188.Font.Color:=clBlack else b3188.Font.Color:=clGreen;

  //QN 13
  if b1192.Value>b1193.Value then b1193.Font.Color:=clRed
  else if b1192.Value=b1193.Value then b1193.Font.Color:=clBlack else b1193.Font.Color:=clGreen;
  if b1193.Value>b1194.Value then b1194.Font.Color:=clRed
  else if b1193.Value=b1194.Value then b1194.Font.Color:=clBlack else b1194.Font.Color:=clGreen;
  if b1194.Value>b1196.Value then b1196.Font.Color:=clRed
  else if b1194.Value=b1196.Value then b1196.Font.Color:=clBlack else b1196.Font.Color:=clGreen;
  if b1196.Value>b1197.Value then b1197.Font.Color:=clRed
  else if b1196.Value=b1197.Value then b1197.Font.Color:=clBlack else b1197.Font.Color:=clGreen;
  if b1197.Value>b1198.Value then b1198.Font.Color:=clRed
  else if b1197.Value=b1198.Value then b1198.Font.Color:=clBlack else b1198.Font.Color:=clGreen;

  //QN 14
  if b2192.Value>b2193.Value then b2193.Font.Color:=clRed
  else if b2192.Value=b2193.Value then b2193.Font.Color:=clBlack else b2193.Font.Color:=clGreen;
  if b2193.Value>b2194.Value then b2194.Font.Color:=clRed
  else if b2193.Value=b2194.Value then b2194.Font.Color:=clBlack else b2194.Font.Color:=clGreen;
  if b2194.Value>b2196.Value then b2196.Font.Color:=clRed
  else if b2194.Value=b2196.Value then b2196.Font.Color:=clBlack else b2196.Font.Color:=clGreen;
  if b2196.Value>b2197.Value then b2197.Font.Color:=clRed
  else if b2196.Value=b2197.Value then b2197.Font.Color:=clBlack else b2197.Font.Color:=clGreen;
  if b2197.Value>b2198.Value then b2198.Font.Color:=clRed
  else if b2197.Value=b2198.Value then b2198.Font.Color:=clBlack else b2198.Font.Color:=clGreen;

  //QN 15
  if b3192.Value>b3193.Value then b3193.Font.Color:=clRed
  else if b3192.Value=b3193.Value then b3193.Font.Color:=clBlack else b3193.Font.Color:=clGreen;
  if b3193.Value>b3194.Value then b3194.Font.Color:=clRed
  else if b3193.Value=b3194.Value then b3194.Font.Color:=clBlack else b3194.Font.Color:=clGreen;
  if b3194.Value>b3196.Value then b3196.Font.Color:=clRed
  else if b3194.Value=b3196.Value then b3196.Font.Color:=clBlack else b3196.Font.Color:=clGreen;
  if b3196.Value>b3197.Value then b3197.Font.Color:=clRed
  else if b3196.Value=b3197.Value then b3197.Font.Color:=clBlack else b3197.Font.Color:=clGreen;
  if b3197.Value>b3198.Value then b3198.Font.Color:=clRed
  else if b3197.Value=b3198.Value then b3198.Font.Color:=clBlack else b3198.Font.Color:=clGreen;

  //QN 16
  if b1202.Value>b1203.Value then b1203.Font.Color:=clRed
  else if b1202.Value=b1203.Value then b1203.Font.Color:=clBlack else b1203.Font.Color:=clGreen;
  if b1203.Value>b1204.Value then b1204.Font.Color:=clRed
  else if b1203.Value=b1204.Value then b1204.Font.Color:=clBlack else b1204.Font.Color:=clGreen;
  if b1204.Value>b1206.Value then b1206.Font.Color:=clRed
  else if b1204.Value=b1206.Value then b1206.Font.Color:=clBlack else b1206.Font.Color:=clGreen;
  if b1206.Value>b1207.Value then b1207.Font.Color:=clRed
  else if b1206.Value=b1207.Value then b1207.Font.Color:=clBlack else b1207.Font.Color:=clGreen;
  if b1207.Value>b1208.Value then b1208.Font.Color:=clRed
  else if b1207.Value=b1208.Value then b1208.Font.Color:=clBlack else b1208.Font.Color:=clGreen;

  //QN 17
  if b2202.Value>b2203.Value then b2203.Font.Color:=clRed
  else if b2202.Value=b2203.Value then b2203.Font.Color:=clBlack else b2203.Font.Color:=clGreen;
  if b2203.Value>b2204.Value then b2204.Font.Color:=clRed
  else if b2203.Value=b2204.Value then b2204.Font.Color:=clBlack else b2204.Font.Color:=clGreen;
  if b2204.Value>b2206.Value then b2206.Font.Color:=clRed
  else if b2204.Value=b2206.Value then b2206.Font.Color:=clBlack else b2206.Font.Color:=clGreen;
  if b2206.Value>b2207.Value then b2207.Font.Color:=clRed
  else if b2206.Value=b2207.Value then b2207.Font.Color:=clBlack else b2207.Font.Color:=clGreen;
  if b2207.Value>b2208.Value then b2208.Font.Color:=clRed
  else if b2207.Value=b2208.Value then b2208.Font.Color:=clBlack else b2208.Font.Color:=clGreen;

  //QN 18
  if b3202.Value>b3203.Value then b3203.Font.Color:=clRed
  else if b3202.Value=b3203.Value then b3203.Font.Color:=clBlack else b3203.Font.Color:=clGreen;
  if b3203.Value>b3204.Value then b3204.Font.Color:=clRed
  else if b3203.Value=b3204.Value then b3204.Font.Color:=clBlack else b3204.Font.Color:=clGreen;
  if b3204.Value>b3206.Value then b3206.Font.Color:=clRed
  else if b3204.Value=b3206.Value then b3206.Font.Color:=clBlack else b3206.Font.Color:=clGreen;
  if b3206.Value>b3207.Value then b3207.Font.Color:=clRed
  else if b3206.Value=b3207.Value then b3207.Font.Color:=clBlack else b3207.Font.Color:=clGreen;
  if b3207.Value>b3208.Value then b3208.Font.Color:=clRed
  else if b3207.Value=b3208.Value then b3208.Font.Color:=clBlack else b3208.Font.Color:=clGreen;

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

  bs5301.Caption:=b3151.Value+b3161.Value+b3171.Value+b3181.Value+b3191.Value+b3201.Value;
  bs5302.Caption:=b3152.Value+b3162.Value+b3172.Value+b3182.Value+b3192.Value+b3202.Value;
  bs5303.Caption:=b3153.value+b3163.value+b3173.value+b3183.value+b3193.value+b3203.value;
  bs5304.Caption:=b3154.value+b3164.value+b3174.value+b3184.value+b3194.value+b3204.value;
  bs5306.Caption:=b3156.value+b3166.value+b3176.value+b3186.value+b3196.value+b3206.value;
  bs5307.Caption:=b3157.value+b3167.value+b3177.value+b3187.value+b3197.value+b3207.value;
  bs5308.Caption:=b3158.value+b3168.value+b3178.value+b3188.value+b3198.value+b3208.value;

  if bs5102.caption>bs5103.Caption then bs5103.Font.Color:=clRed
  else if bs5102.Caption=bs5103.Caption then bs5103.Font.Color:=clBlack else bs5103.Font.Color:=clGreen;
  if bs5103.caption>bs5104.Caption then bs5104.Font.Color:=clRed
  else if bs5103.Caption=bs5104.Caption then bs5104.Font.Color:=clBlack else bs5104.Font.Color:=clGreen;
  if bs5104.caption>bs5106.Caption then bs5106.Font.Color:=clRed
  else if bs5104.Caption=bs5106.Caption then bs5106.Font.Color:=clBlack else bs5106.Font.Color:=clGreen;
  if bs5106.caption>bs5107.Caption then bs5107.Font.Color:=clRed
  else if bs5106.Caption=bs5107.Caption then bs5107.Font.Color:=clBlack else bs5107.Font.Color:=clGreen;
  if bs5107.caption>bs5108.Caption then bs5108.Font.Color:=clRed
  else if bs5107.Caption=bs5108.Caption then bs5108.Font.Color:=clBlack else bs5108.Font.Color:=clGreen;

  if bs5202.caption>bs5203.Caption then bs5203.Font.Color:=clRed
  else if bs5202.Caption=bs5203.Caption then bs5203.Font.Color:=clBlack else bs5203.Font.Color:=clGreen;
  if bs5203.caption>bs5204.Caption then bs5204.Font.Color:=clRed
  else if bs5203.Caption=bs5204.Caption then bs5204.Font.Color:=clBlack else bs5204.Font.Color:=clGreen;
  if bs5204.caption>bs5206.Caption then bs5206.Font.Color:=clRed
  else if bs5204.Caption=bs5206.Caption then bs5206.Font.Color:=clBlack else bs5206.Font.Color:=clGreen;
  if bs5206.caption>bs5207.Caption then bs5207.Font.Color:=clRed
  else if bs5206.Caption=bs5207.Caption then bs5207.Font.Color:=clBlack else bs5207.Font.Color:=clGreen;
  if bs5207.caption>bs5208.Caption then bs5208.Font.Color:=clRed
  else if bs5207.Caption=bs5208.Caption then bs5208.Font.Color:=clBlack else bs5208.Font.Color:=clGreen;

  if bs5302.caption>bs5303.Caption then bs5303.Font.Color:=clRed
  else if bs5302.Caption=bs5303.Caption then bs5303.Font.Color:=clBlack else bs5303.Font.Color:=clGreen;
  if bs5303.caption>bs5304.Caption then bs5304.Font.Color:=clRed
  else if bs5303.Caption=bs5304.Caption then bs5304.Font.Color:=clBlack else bs5304.Font.Color:=clGreen;
  if bs5304.caption>bs5306.Caption then bs5306.Font.Color:=clRed
  else if bs5304.Caption=bs5306.Caption then bs5306.Font.Color:=clBlack else bs5306.Font.Color:=clGreen;
  if bs5306.caption>bs5307.Caption then bs5307.Font.Color:=clRed
  else if bs5306.Caption=bs5307.Caption then bs5307.Font.Color:=clBlack else bs5307.Font.Color:=clGreen;
  if bs5307.caption>bs5308.Caption then bs5308.Font.Color:=clRed
  else if bs5307.Caption=bs5308.Caption then bs5308.Font.Color:=clBlack else bs5308.Font.Color:=clGreen;

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
  bp006.Caption:='('+formatfloat('0.0%',bd006.Value*100.0/bq006.Value)+')';
end;

procedure Tfrmpdnrpt8.ppGroupFooterBand9BeforePrint(Sender: TObject);
begin
  b1111.DataField:='q4qty';b1112.DataField:='q4pqty';b1113.DataField:='q4t1qty';b1114.DataField:='q4t2qty';b1116.DataField:='q4t3qty';b1117.DataField:='q4aqqty';b1118.DataField:='q4t4qty';
  b2111.DataField:='q5qty';b2112.DataField:='q5pqty';b2113.DataField:='q5t1qty';b2114.DataField:='q5t2qty';b2116.DataField:='q5t3qty';b2117.DataField:='q5aqqty';b2118.DataField:='q5t4qty';
  b3111.DataField:='q6qty';b3112.DataField:='q6pqty';b3113.DataField:='q6t1qty';b3114.DataField:='q6t2qty';b3116.DataField:='q6t3qty';b3117.DataField:='q6aqqty';b3118.DataField:='q6t4qty';

  b1121.DataField:='q7qty';b1122.DataField:='q7pqty';b1123.DataField:='q7t1qty';b1124.DataField:='q7t2qty';b1126.DataField:='q7t3qty';b1127.DataField:='q7aqqty';b1128.DataField:='q7t4qty';
  b2121.DataField:='q8qty';b2122.DataField:='q8pqty';b2123.DataField:='q8t1qty';b2124.DataField:='q8t2qty';b2126.DataField:='q8t3qty';b2127.DataField:='q8aqqty';b2128.DataField:='q8t4qty';
  b3121.DataField:='q9qty';b3122.DataField:='q9pqty';b3123.DataField:='q9t1qty';b3124.DataField:='q9t2qty';b3126.DataField:='q9t3qty';b3127.DataField:='q9aqqty';b3128.DataField:='q9t4qty';

  b1131.DataField:='q10qty';b1132.DataField:='q10pqty';b1133.DataField:='q10t1qty';b1134.DataField:='q10t2qty';b1136.DataField:='q10t3qty';b1137.DataField:='q10aqqty';b1138.DataField:='q10t4qty';
  b2131.DataField:='q11qty';b2132.DataField:='q11pqty';b2133.DataField:='q11t1qty';b2134.DataField:='q11t2qty';b2136.DataField:='q11t3qty';b2137.DataField:='q11aqqty';b2138.DataField:='q11t4qty';
  b3131.DataField:='q12qty';b3132.DataField:='q12pqty';b3133.DataField:='q12t1qty';b3134.DataField:='q12t2qty';b3136.DataField:='q12t3qty';b3137.DataField:='q12aqqty';b3138.DataField:='q12t4qty';

  b1141.DataField:='q13qty';b1142.DataField:='q13pqty';b1143.DataField:='q13t1qty';b1144.DataField:='q13t2qty';b1146.DataField:='q13t3qty';b1147.DataField:='q13aqqty';b1148.DataField:='q13t4qty';
  b2141.DataField:='q14qty';b2142.DataField:='q14pqty';b2143.DataField:='q14t1qty';b2144.DataField:='q14t2qty';b2146.DataField:='q14t3qty';b2147.DataField:='q14aqqty';b2148.DataField:='q14t4qty';
  b3141.DataField:='q15qty';b3142.DataField:='q15pqty';b3143.DataField:='q15t1qty';b3144.DataField:='q15t2qty';b3146.DataField:='q15t3qty';b3147.DataField:='q15aqqty';b3148.DataField:='q15t4qty';

  b1101.Visible:=false;b1102.Visible:=false;b1103.Visible:=false;b1104.Visible:=false;b1106.Visible:=false;b1107.Visible:=false;b1108.Visible:=false;
  b2101.Visible:=false;b2102.Visible:=false;b2103.Visible:=false;b2104.Visible:=false;b2106.Visible:=false;b2107.Visible:=false;b2108.Visible:=false;
  b3101.Visible:=false;b3102.Visible:=false;b3103.Visible:=false;b3104.Visible:=false;b3106.Visible:=false;b3107.Visible:=false;b3108.Visible:=false;

  b1111.Visible:=false;b1112.Visible:=false;b1113.Visible:=false;b1114.Visible:=false;b1116.Visible:=false;b1117.Visible:=false;b1118.Visible:=false;
  b2111.Visible:=false;b2112.Visible:=false;b2113.Visible:=false;b2114.Visible:=false;b2116.Visible:=false;b2117.Visible:=false;b2118.Visible:=false;
  b3111.Visible:=false;b3112.Visible:=false;b3113.Visible:=false;b3114.Visible:=false;b3116.Visible:=false;b3117.Visible:=false;b3118.Visible:=false;

  b1121.Visible:=false;b1122.Visible:=false;b1123.Visible:=false;b1124.Visible:=false;b1126.Visible:=false;b1127.Visible:=false;b1128.Visible:=false;
  b2121.Visible:=false;b2122.Visible:=false;b2123.Visible:=false;b2124.Visible:=false;b2126.Visible:=false;b2127.Visible:=false;b2128.Visible:=false;
  b3121.Visible:=false;b3122.Visible:=false;b3123.Visible:=false;b3124.Visible:=false;b3126.Visible:=false;b3127.Visible:=false;b3128.Visible:=false;

  b1131.Visible:=false;b1132.Visible:=false;b1133.Visible:=false;b1134.Visible:=false;b1136.Visible:=false;b1137.Visible:=false;b1138.Visible:=false;
  b2131.Visible:=false;b2132.Visible:=false;b2133.Visible:=false;b2134.Visible:=false;b2136.Visible:=false;b2137.Visible:=false;b2138.Visible:=false;
  b3131.Visible:=false;b3132.Visible:=false;b3133.Visible:=false;b3134.Visible:=false;b3136.Visible:=false;b3137.Visible:=false;b3138.Visible:=false;

  b1141.Visible:=false;b1142.Visible:=false;b1143.Visible:=false;b1144.Visible:=false;b1146.Visible:=false;b1147.Visible:=false;b1148.Visible:=false;
  b2141.Visible:=false;b2142.Visible:=false;b2143.Visible:=false;b2144.Visible:=false;b2146.Visible:=false;b2147.Visible:=false;b2148.Visible:=false;
  b3141.Visible:=false;b3142.Visible:=false;b3143.Visible:=false;b3144.Visible:=false;b3146.Visible:=false;b3147.Visible:=false;b3148.Visible:=false;

  if rwo501.Caption>'' then begin
    b1101.Visible:=true;b1102.Visible:=true;b1103.Visible:=true;b1104.Visible:=true;b1106.Visible:=true;b1107.Visible:=true;b1108.Visible:=true;
  end;
  if rwo502.Caption>'' then begin
    b2101.Visible:=true;b2102.Visible:=true;b2103.Visible:=true;b2104.Visible:=true;b2106.Visible:=true;b2107.Visible:=true;b2108.Visible:=true;
  end;
  if rwo503.Caption>'' then begin
    b3101.Visible:=true;b3102.Visible:=true;b3103.Visible:=true;b3104.Visible:=true;b3106.Visible:=true;b3107.Visible:=true;b3108.Visible:=true;
  end;
  if rwo511.Caption>'' then begin
    b1111.Visible:=true;b1112.Visible:=true;b1113.Visible:=true;b1114.Visible:=true;b1116.Visible:=true;b1117.Visible:=true;b1118.Visible:=true;
  end;
  if rwo512.Caption>'' then begin
    b2111.Visible:=true;b2112.Visible:=true;b2113.Visible:=true;b2114.Visible:=true;b2116.Visible:=true;b2117.Visible:=true;b2118.Visible:=true;
  end;
  if rwo513.Caption>'' then begin
    b3111.Visible:=true;b3112.Visible:=true;b3113.Visible:=true;b3114.Visible:=true;b3116.Visible:=true;b3117.Visible:=true;b3118.Visible:=true;
  end;
  if rwo521.Caption>'' then begin
    b1121.Visible:=true;b1122.Visible:=true;b1123.Visible:=true;b1124.Visible:=true;b1126.Visible:=true;b1127.Visible:=true;b1128.Visible:=true;
  end;
  if rwo522.Caption>'' then begin
    b2121.Visible:=true;b2122.Visible:=true;b2123.Visible:=true;b2124.Visible:=true;b2126.Visible:=true;b2127.Visible:=true;b2128.Visible:=true;
  end;
  if rwo523.Caption>'' then begin
    b3121.Visible:=true;b3122.Visible:=true;b3123.Visible:=true;b3124.Visible:=true;b3126.Visible:=true;b3127.Visible:=true;b3128.Visible:=true;
  end;
  if rwo531.Caption>'' then begin
    b1131.Visible:=true;b1132.Visible:=true;b1133.Visible:=true;b1134.Visible:=true;b1136.Visible:=true;b1137.Visible:=true;b1138.Visible:=true;
  end;
  if rwo532.Caption>'' then begin
    b2131.Visible:=true;b2132.Visible:=true;b2133.Visible:=true;b2134.Visible:=true;b2136.Visible:=true;b2137.Visible:=true;b2138.Visible:=true;
  end;
  if rwo533.Caption>'' then begin
    b3131.Visible:=true;b3132.Visible:=true;b3133.Visible:=true;b3134.Visible:=true;b3136.Visible:=true;b3137.Visible:=true;b3138.Visible:=true;
  end;
  if rwo541.Caption>'' then begin
    b1141.Visible:=true;b1142.Visible:=true;b1143.Visible:=true;b1144.Visible:=true;b1146.Visible:=true;b1147.Visible:=true;b1148.Visible:=true;
  end;
  if rwo542.Caption>'' then begin
    b2141.Visible:=true;b2142.Visible:=true;b2143.Visible:=true;b2144.Visible:=true;b2146.Visible:=true;b2147.Visible:=true;b2148.Visible:=true;
  end;
  if rwo543.Caption>'' then begin
    b3141.Visible:=true;b3142.Visible:=true;b3143.Visible:=true;b3144.Visible:=true;b3146.Visible:=true;b3147.Visible:=true;b3148.Visible:=true;
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
  if b3102.Value>b3103.Value then b3103.Font.Color:=clRed
  else if b3102.Value=b3103.Value then b3103.Font.Color:=clBlack else b3103.Font.Color:=clGreen;
  if b3103.Value>b3104.Value then b3104.Font.Color:=clRed
  else if b3103.Value=b3104.Value then b3104.Font.Color:=clBlack else b3104.Font.Color:=clGreen;
  if b3104.Value>b3106.Value then b3106.Font.Color:=clRed
  else if b3104.Value=b3106.Value then b3106.Font.Color:=clBlack else b3106.Font.Color:=clGreen;
  if b3106.Value>b3107.Value then b3107.Font.Color:=clRed
  else if b3106.Value=b3107.Value then b3107.Font.Color:=clBlack else b3107.Font.Color:=clGreen;
  if b3107.Value>b3108.Value then b3108.Font.Color:=clRed
  else if b3107.Value=b3108.Value then b3108.Font.Color:=clBlack else b3108.Font.Color:=clGreen;

  //QN 4
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

  //QN 5
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

  //QN 6
  if b3112.Value>b3113.Value then b3113.Font.Color:=clRed
  else if b3112.Value=b3113.Value then b3113.Font.Color:=clBlack else b3113.Font.Color:=clGreen;
  if b3113.Value>b3114.Value then b3114.Font.Color:=clRed
  else if b3113.Value=b3114.Value then b3114.Font.Color:=clBlack else b3114.Font.Color:=clGreen;
  if b3114.Value>b3116.Value then b3116.Font.Color:=clRed
  else if b3114.Value=b3116.Value then b3116.Font.Color:=clBlack else b3116.Font.Color:=clGreen;
  if b3116.Value>b3117.Value then b3117.Font.Color:=clRed
  else if b3116.Value=b3117.Value then b3117.Font.Color:=clBlack else b3117.Font.Color:=clGreen;
  if b3117.Value>b3118.Value then b3118.Font.Color:=clRed
  else if b3117.Value=b3118.Value then b3118.Font.Color:=clBlack else b3118.Font.Color:=clGreen;

  //QN 7
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

  //QN 8
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

  //QN 9
  if b3122.Value>b3123.Value then b3123.Font.Color:=clRed
  else if b3122.Value=b3123.Value then b3123.Font.Color:=clBlack else b3123.Font.Color:=clGreen;
  if b3123.Value>b3124.Value then b3124.Font.Color:=clRed
  else if b3123.Value=b3124.Value then b3124.Font.Color:=clBlack else b3124.Font.Color:=clGreen;
  if b3124.Value>b3126.Value then b3126.Font.Color:=clRed
  else if b3124.Value=b3126.Value then b3126.Font.Color:=clBlack else b3126.Font.Color:=clGreen;
  if b3126.Value>b3127.Value then b3127.Font.Color:=clRed
  else if b3126.Value=b3127.Value then b3127.Font.Color:=clBlack else b3127.Font.Color:=clGreen;
  if b3127.Value>b3128.Value then b3128.Font.Color:=clRed
  else if b3127.Value=b3128.Value then b3128.Font.Color:=clBlack else b3128.Font.Color:=clGreen;

  //QN 10
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

  //QN 11
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

  //QN 12
  if b3132.Value>b3133.Value then b3133.Font.Color:=clRed
  else if b3132.Value=b3133.Value then b3133.Font.Color:=clBlack else b3133.Font.Color:=clGreen;
  if b3133.Value>b3134.Value then b3134.Font.Color:=clRed
  else if b3133.Value=b3134.Value then b3134.Font.Color:=clBlack else b3134.Font.Color:=clGreen;
  if b3134.Value>b3136.Value then b3136.Font.Color:=clRed
  else if b3134.Value=b3136.Value then b3136.Font.Color:=clBlack else b3136.Font.Color:=clGreen;
  if b3136.Value>b3137.Value then b3137.Font.Color:=clRed
  else if b3136.Value=b3137.Value then b3137.Font.Color:=clBlack else b3137.Font.Color:=clGreen;
  if b3137.Value>b3138.Value then b3138.Font.Color:=clRed
  else if b3137.Value=b3138.Value then b3138.Font.Color:=clBlack else b3138.Font.Color:=clGreen;

  //QN 13
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

  //QN 14
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

  //QN 15
  if b3142.Value>b3143.Value then b3143.Font.Color:=clRed
  else if b3142.Value=b3143.Value then b3143.Font.Color:=clBlack else b3143.Font.Color:=clGreen;
  if b3143.Value>b3144.Value then b3144.Font.Color:=clRed
  else if b3143.Value=b3144.Value then b3144.Font.Color:=clBlack else b3144.Font.Color:=clGreen;
  if b3144.Value>b3146.Value then b3146.Font.Color:=clRed
  else if b3144.Value=b3146.Value then b3146.Font.Color:=clBlack else b3146.Font.Color:=clGreen;
  if b3146.Value>b3147.Value then b3147.Font.Color:=clRed
  else if b3146.Value=b3147.Value then b3147.Font.Color:=clBlack else b3147.Font.Color:=clGreen;
  if b3147.Value>b3148.Value then b3148.Font.Color:=clRed
  else if b3147.Value=b3148.Value then b3148.Font.Color:=clBlack else b3148.Font.Color:=clGreen;

  bs4101.Caption:=b1101.Value+b1111.Value+b1121.Value+b1131.Value+b1141.Value;
  bs4102.Caption:=b1102.Value+b1112.Value+b1122.Value+b1132.Value+b1142.Value;
  bs4103.Caption:=b1103.value+b1113.value+b1123.value+b1133.value+b1143.value;
  bs4104.Caption:=b1104.value+b1114.value+b1124.value+b1134.value+b1144.value;
  bs4106.Caption:=b1106.value+b1116.value+b1126.value+b1136.value+b1146.value;
  bs4107.Caption:=b1107.value+b1112.value+b1127.value+b1137.value+b1147.value;
  bs4108.Caption:=b1108.value+b1113.value+b1128.value+b1138.value+b1148.value;

  bs4201.Caption:=b2101.Value+b2111.Value+b2121.Value+b2131.Value+b2141.Value;
  bs4202.Caption:=b2102.Value+b2112.Value+b2122.Value+b2132.Value+b2142.Value;
  bs4203.Caption:=b2103.value+b2113.value+b2123.value+b2133.value+b2143.value;
  bs4204.Caption:=b2104.value+b2114.value+b2124.value+b2134.value+b2144.value;
  bs4206.Caption:=b2106.value+b2116.value+b2126.value+b2136.value+b2146.value;
  bs4207.Caption:=b2107.value+b2112.value+b2127.value+b2137.value+b2147.value;
  bs4208.Caption:=b2108.value+b2113.value+b2128.value+b2138.value+b2148.value;

  bs4301.Caption:=b3101.Value+b3111.Value+b3121.Value+b3131.Value+b3141.Value;
  bs4302.Caption:=b3102.Value+b3112.Value+b3122.Value+b3132.Value+b3142.Value;
  bs4303.Caption:=b3103.value+b3113.value+b3123.value+b3133.value+b3143.value;
  bs4304.Caption:=b3104.value+b3114.value+b3124.value+b3134.value+b3144.value;
  bs4306.Caption:=b3106.value+b3116.value+b3126.value+b3136.value+b3146.value;
  bs4307.Caption:=b3107.value+b3112.value+b3127.value+b3137.value+b3147.value;
  bs4308.Caption:=b3108.value+b3113.value+b3128.value+b3138.value+b3148.value;

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

  if bs4302.caption>bs4303.Caption then bs4303.Font.Color:=clRed
  else if bs4302.Caption=bs4303.Caption then bs4303.Font.Color:=clBlack else bs4303.Font.Color:=clGreen;
  if bs4303.caption>bs4304.Caption then bs4304.Font.Color:=clRed
  else if bs4303.Caption=bs4304.Caption then bs4304.Font.Color:=clBlack else bs4304.Font.Color:=clGreen;
  if bs4304.caption>bs4306.Caption then bs4306.Font.Color:=clRed
  else if bs4304.Caption=bs4306.Caption then bs4306.Font.Color:=clBlack else bs4306.Font.Color:=clGreen;
  if bs4306.caption>bs4307.Caption then bs4307.Font.Color:=clRed
  else if bs4306.Caption=bs4307.Caption then bs4307.Font.Color:=clBlack else bs4307.Font.Color:=clGreen;
  if bs4307.caption>bs4308.Caption then bs4308.Font.Color:=clRed
  else if bs4307.Caption=bs4308.Caption then bs4308.Font.Color:=clBlack else bs4308.Font.Color:=clGreen;

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
  bp005.Caption:='('+formatfloat('0.0%',bd005.Value*100.0/bq005.Value)+')';
end;

procedure Tfrmpdnrpt8.ppGroupFooterBand8BeforePrint(Sender: TObject);
begin
  b1071.DataField:='q4qty';b1072.DataField:='q4pqty';b1073.DataField:='q4t1qty';b1074.DataField:='q4t2qty';b1076.DataField:='q4t3qty';b1077.DataField:='q4aqqty';b1078.DataField:='q4t4qty';
  b2071.DataField:='q5qty';b2072.DataField:='q5pqty';b2073.DataField:='q5t1qty';b2074.DataField:='q5t2qty';b2076.DataField:='q5t3qty';b2077.DataField:='q5aqqty';b2078.DataField:='q5t4qty';
  b3071.DataField:='q6qty';b3072.DataField:='q6pqty';b3073.DataField:='q6t1qty';b3074.DataField:='q6t2qty';b3076.DataField:='q6t3qty';b3077.DataField:='q6aqqty';b3078.DataField:='q6t4qty';

  b1081.DataField:='q7qty';b1082.DataField:='q7pqty';b1083.DataField:='q7t1qty';b1084.DataField:='q7t2qty';b1086.DataField:='q7t3qty';b1087.DataField:='q7aqqty';b1088.DataField:='q7t4qty';
  b2081.DataField:='q8qty';b2082.DataField:='q8pqty';b2083.DataField:='q8t1qty';b2084.DataField:='q8t2qty';b2086.DataField:='q8t3qty';b2087.DataField:='q8aqqty';b2088.DataField:='q8t4qty';
  b3081.DataField:='q9qty';b3082.DataField:='q9pqty';b3083.DataField:='q9t1qty';b3084.DataField:='q9t2qty';b3086.DataField:='q9t3qty';b3087.DataField:='q9aqqty';b3088.DataField:='q9t4qty';

  b1091.DataField:='q10qty';b1092.DataField:='q10pqty';b1093.DataField:='q10t1qty';b1094.DataField:='q10t2qty';b1096.DataField:='q10t3qty';b1097.DataField:='q10aqqty';b1098.DataField:='q10t4qty';
  b2091.DataField:='q11qty';b2092.DataField:='q11pqty';b2093.DataField:='q11t1qty';b2094.DataField:='q11t2qty';b2096.DataField:='q11t3qty';b2097.DataField:='q11aqqty';b2098.DataField:='q11t4qty';
  b3091.DataField:='q12qty';b3092.DataField:='q12pqty';b3093.DataField:='q12t1qty';b3094.DataField:='q12t2qty';b3096.DataField:='q12t3qty';b3097.DataField:='q12aqqty';b3098.DataField:='q12t4qty';

  b1061.Visible:=false;b1062.Visible:=false;b1063.Visible:=false;b1064.Visible:=false;b1066.Visible:=false;b1067.Visible:=false;b1068.Visible:=false;
  b2061.Visible:=false;b2062.Visible:=false;b2063.Visible:=false;b2064.Visible:=false;b2066.Visible:=false;b2067.Visible:=false;b2068.Visible:=false;
  b3061.Visible:=false;b3062.Visible:=false;b3063.Visible:=false;b3064.Visible:=false;b3066.Visible:=false;b3067.Visible:=false;b3068.Visible:=false;

  b1071.Visible:=false;b1072.Visible:=false;b1073.Visible:=false;b1074.Visible:=false;b1076.Visible:=false;b1077.Visible:=false;b1078.Visible:=false;
  b2071.Visible:=false;b2072.Visible:=false;b2073.Visible:=false;b2074.Visible:=false;b2076.Visible:=false;b2077.Visible:=false;b2078.Visible:=false;
  b3071.Visible:=false;b3072.Visible:=false;b3073.Visible:=false;b3074.Visible:=false;b3076.Visible:=false;b3077.Visible:=false;b3078.Visible:=false;

  b1081.Visible:=false;b1082.Visible:=false;b1083.Visible:=false;b1084.Visible:=false;b1086.Visible:=false;b1087.Visible:=false;b1088.Visible:=false;
  b2081.Visible:=false;b2082.Visible:=false;b2083.Visible:=false;b2084.Visible:=false;b2086.Visible:=false;b2087.Visible:=false;b2088.Visible:=false;
  b3081.Visible:=false;b3082.Visible:=false;b3083.Visible:=false;b3084.Visible:=false;b3086.Visible:=false;b3087.Visible:=false;b3088.Visible:=false;

  b1091.Visible:=false;b1092.Visible:=false;b1093.Visible:=false;b1094.Visible:=false;b1096.Visible:=false;b1097.Visible:=false;b1098.Visible:=false;
  b2091.Visible:=false;b2092.Visible:=false;b2093.Visible:=false;b2094.Visible:=false;b2096.Visible:=false;b2097.Visible:=false;b2098.Visible:=false;
  b3091.Visible:=false;b3092.Visible:=false;b3093.Visible:=false;b3094.Visible:=false;b3096.Visible:=false;b3097.Visible:=false;b3098.Visible:=false;

  if rwo401.Caption>'' then begin
    b1061.Visible:=true;b1062.Visible:=true;b1063.Visible:=true;b1064.Visible:=true;b1066.Visible:=true;b1067.Visible:=true;b1068.Visible:=true;
  end;
  if rwo402.Caption>'' then begin
    b2061.Visible:=true;b2062.Visible:=true;b2063.Visible:=true;b2064.Visible:=true;b2066.Visible:=true;b2067.Visible:=true;b2068.Visible:=true;
  end;
  if rwo403.Caption>'' then begin
    b3061.Visible:=true;b3062.Visible:=true;b3063.Visible:=true;b3064.Visible:=true;b3066.Visible:=true;b3067.Visible:=true;b3068.Visible:=true;
  end;
  if rwo411.Caption>'' then begin
    b1071.Visible:=true;b1072.Visible:=true;b1073.Visible:=true;b1074.Visible:=true;b1076.Visible:=true;b1077.Visible:=true;b1078.Visible:=true;
  end;
  if rwo412.Caption>'' then begin
    b2071.Visible:=true;b2072.Visible:=true;b2073.Visible:=true;b2074.Visible:=true;b2076.Visible:=true;b2077.Visible:=true;b2078.Visible:=true;
  end;
  if rwo413.Caption>'' then begin
    b3071.Visible:=true;b3072.Visible:=true;b3073.Visible:=true;b3074.Visible:=true;b3076.Visible:=true;b3077.Visible:=true;b3078.Visible:=true;
  end;
  if rwo421.Caption>'' then begin
    b1081.Visible:=true;b1082.Visible:=true;b1083.Visible:=true;b1084.Visible:=true;b1086.Visible:=true;b1087.Visible:=true;b1088.Visible:=true;
  end;
  if rwo422.Caption>'' then begin
    b2081.Visible:=true;b2082.Visible:=true;b2083.Visible:=true;b2084.Visible:=true;b2086.Visible:=true;b2087.Visible:=true;b2088.Visible:=true;
  end;
  if rwo423.Caption>'' then begin
    b3081.Visible:=true;b3082.Visible:=true;b3083.Visible:=true;b3084.Visible:=true;b3086.Visible:=true;b3087.Visible:=true;b3088.Visible:=true;
  end;
  if rwo431.Caption>'' then begin
    b1091.Visible:=true;b1092.Visible:=true;b1093.Visible:=true;b1094.Visible:=true;b1096.Visible:=true;b1097.Visible:=true;b1098.Visible:=true;
  end;
  if rwo432.Caption>'' then begin
    b2091.Visible:=true;b2092.Visible:=true;b2093.Visible:=true;b2094.Visible:=true;b2096.Visible:=true;b2097.Visible:=true;b2098.Visible:=true;
  end;
  if rwo433.Caption>'' then begin
    b3091.Visible:=true;b3092.Visible:=true;b3093.Visible:=true;b3094.Visible:=true;b3096.Visible:=true;b3097.Visible:=true;b3098.Visible:=true;
  end;

  //QN 1
  if b1062.Value>b1063.Value then b1063.Font.Color:=clRed
  else if b1062.Value=b1063.Value then b1063.Font.Color:=clBlack else b1063.Font.Color:=clGreen;
  if b1063.Value>b1064.Value then b1064.Font.Color:=clRed
  else if b1063.Value=b1064.Value then b1064.Font.Color:=clBlack else b1064.Font.Color:=clGreen;
  if b1064.Value>b1066.Value then b1066.Font.Color:=clRed
  else if b1064.Value=b1066.Value then b1066.Font.Color:=clBlack else b1066.Font.Color:=clGreen;
  if b1066.Value>b1067.Value then b1067.Font.Color:=clRed
  else if b1066.Value=b1067.Value then b1067.Font.Color:=clBlack else b1067.Font.Color:=clGreen;
  if b1067.Value>b1068.Value then b1068.Font.Color:=clRed
  else if b1067.Value=b1068.Value then b1068.Font.Color:=clBlack else b1068.Font.Color:=clGreen;

  //QN 2
  if b2062.Value>b2063.Value then b2063.Font.Color:=clRed
  else if b2062.Value=b2063.Value then b2063.Font.Color:=clBlack else b2063.Font.Color:=clGreen;
  if b2063.Value>b2064.Value then b2064.Font.Color:=clRed
  else if b2063.Value=b2064.Value then b2064.Font.Color:=clBlack else b2064.Font.Color:=clGreen;
  if b2064.Value>b2066.Value then b2066.Font.Color:=clRed
  else if b2064.Value=b2066.Value then b2066.Font.Color:=clBlack else b2066.Font.Color:=clGreen;
  if b2066.Value>b2067.Value then b2067.Font.Color:=clRed
  else if b2066.Value=b2067.Value then b2067.Font.Color:=clBlack else b2067.Font.Color:=clGreen;
  if b2067.Value>b2068.Value then b2068.Font.Color:=clRed
  else if b2067.Value=b2068.Value then b2068.Font.Color:=clBlack else b2068.Font.Color:=clGreen;

  //QN 3
  if b3062.Value>b3063.Value then b3063.Font.Color:=clRed
  else if b3062.Value=b3063.Value then b3063.Font.Color:=clBlack else b3063.Font.Color:=clGreen;
  if b3063.Value>b3064.Value then b3064.Font.Color:=clRed
  else if b3063.Value=b3064.Value then b3064.Font.Color:=clBlack else b3064.Font.Color:=clGreen;
  if b3064.Value>b3066.Value then b3066.Font.Color:=clRed
  else if b3064.Value=b3066.Value then b3066.Font.Color:=clBlack else b3066.Font.Color:=clGreen;
  if b3066.Value>b3067.Value then b3067.Font.Color:=clRed
  else if b3066.Value=b3067.Value then b3067.Font.Color:=clBlack else b3067.Font.Color:=clGreen;
  if b3067.Value>b3068.Value then b3068.Font.Color:=clRed
  else if b3067.Value=b3068.Value then b3068.Font.Color:=clBlack else b3068.Font.Color:=clGreen;

  //QN 4
  if b1072.Value>b1073.Value then b1073.Font.Color:=clRed
  else if b1072.Value=b1073.Value then b1073.Font.Color:=clBlack else b1073.Font.Color:=clGreen;
  if b1073.Value>b1074.Value then b1074.Font.Color:=clRed
  else if b1073.Value=b1074.Value then b1074.Font.Color:=clBlack else b1074.Font.Color:=clGreen;
  if b1074.Value>b1076.Value then b1076.Font.Color:=clRed
  else if b1074.Value=b1076.Value then b1076.Font.Color:=clBlack else b1076.Font.Color:=clGreen;
  if b1076.Value>b1077.Value then b1077.Font.Color:=clRed
  else if b1076.Value=b1077.Value then b1077.Font.Color:=clBlack else b1077.Font.Color:=clGreen;
  if b1077.Value>b1078.Value then b1078.Font.Color:=clRed
  else if b1077.Value=b1078.Value then b1078.Font.Color:=clBlack else b1078.Font.Color:=clGreen;

  //QN 5
  if b2072.Value>b2073.Value then b2073.Font.Color:=clRed
  else if b2072.Value=b2073.Value then b2073.Font.Color:=clBlack else b2073.Font.Color:=clGreen;
  if b2073.Value>b2074.Value then b2074.Font.Color:=clRed
  else if b2073.Value=b2074.Value then b2074.Font.Color:=clBlack else b2074.Font.Color:=clGreen;
  if b2074.Value>b2076.Value then b2076.Font.Color:=clRed
  else if b2074.Value=b2076.Value then b2076.Font.Color:=clBlack else b2076.Font.Color:=clGreen;
  if b2076.Value>b2077.Value then b2077.Font.Color:=clRed
  else if b2076.Value=b2077.Value then b2077.Font.Color:=clBlack else b2077.Font.Color:=clGreen;
  if b2077.Value>b2078.Value then b2078.Font.Color:=clRed
  else if b2077.Value=b2078.Value then b2078.Font.Color:=clBlack else b2078.Font.Color:=clGreen;

  //QN 6
  if b3072.Value>b3073.Value then b3073.Font.Color:=clRed
  else if b3072.Value=b3073.Value then b3073.Font.Color:=clBlack else b3073.Font.Color:=clGreen;
  if b3073.Value>b3074.Value then b3074.Font.Color:=clRed
  else if b3073.Value=b3074.Value then b3074.Font.Color:=clBlack else b3074.Font.Color:=clGreen;
  if b3074.Value>b3076.Value then b3076.Font.Color:=clRed
  else if b3074.Value=b3076.Value then b3076.Font.Color:=clBlack else b3076.Font.Color:=clGreen;
  if b3076.Value>b3077.Value then b3077.Font.Color:=clRed
  else if b3076.Value=b3077.Value then b3077.Font.Color:=clBlack else b3077.Font.Color:=clGreen;
  if b3077.Value>b3078.Value then b3078.Font.Color:=clRed
  else if b3077.Value=b3078.Value then b3078.Font.Color:=clBlack else b3078.Font.Color:=clGreen;

  //QN 7
  if b1082.Value>b1083.Value then b1083.Font.Color:=clRed
  else if b1082.Value=b1083.Value then b1083.Font.Color:=clBlack else b1083.Font.Color:=clGreen;
  if b1083.Value>b1084.Value then b1084.Font.Color:=clRed
  else if b1083.Value=b1084.Value then b1084.Font.Color:=clBlack else b1084.Font.Color:=clGreen;
  if b1084.Value>b1086.Value then b1086.Font.Color:=clRed
  else if b1084.Value=b1086.Value then b1086.Font.Color:=clBlack else b1086.Font.Color:=clGreen;
  if b1086.Value>b1087.Value then b1087.Font.Color:=clRed
  else if b1086.Value=b1087.Value then b1087.Font.Color:=clBlack else b1087.Font.Color:=clGreen;
  if b1087.Value>b1088.Value then b1088.Font.Color:=clRed
  else if b1087.Value=b1088.Value then b1088.Font.Color:=clBlack else b1088.Font.Color:=clGreen;

  //QN 8
  if b2082.Value>b2083.Value then b2083.Font.Color:=clRed
  else if b2082.Value=b2083.Value then b2083.Font.Color:=clBlack else b2083.Font.Color:=clGreen;
  if b2083.Value>b2084.Value then b2084.Font.Color:=clRed
  else if b2083.Value=b2084.Value then b2084.Font.Color:=clBlack else b2084.Font.Color:=clGreen;
  if b2084.Value>b2086.Value then b2086.Font.Color:=clRed
  else if b2084.Value=b2086.Value then b2086.Font.Color:=clBlack else b2086.Font.Color:=clGreen;
  if b2086.Value>b2087.Value then b2087.Font.Color:=clRed
  else if b2086.Value=b2087.Value then b2087.Font.Color:=clBlack else b2087.Font.Color:=clGreen;
  if b2087.Value>b2088.Value then b2088.Font.Color:=clRed
  else if b2087.Value=b2088.Value then b2088.Font.Color:=clBlack else b2088.Font.Color:=clGreen;

  //QN 9
  if b3082.Value>b3083.Value then b3083.Font.Color:=clRed
  else if b3082.Value=b3083.Value then b3083.Font.Color:=clBlack else b3083.Font.Color:=clGreen;
  if b3083.Value>b3084.Value then b3084.Font.Color:=clRed
  else if b3083.Value=b3084.Value then b3084.Font.Color:=clBlack else b3084.Font.Color:=clGreen;
  if b3084.Value>b3086.Value then b3086.Font.Color:=clRed
  else if b3084.Value=b3086.Value then b3086.Font.Color:=clBlack else b3086.Font.Color:=clGreen;
  if b3086.Value>b3087.Value then b3087.Font.Color:=clRed
  else if b3086.Value=b3087.Value then b3087.Font.Color:=clBlack else b3087.Font.Color:=clGreen;
  if b3087.Value>b3088.Value then b3088.Font.Color:=clRed
  else if b3087.Value=b3088.Value then b3088.Font.Color:=clBlack else b3088.Font.Color:=clGreen;

  //QN 10
  if b1092.Value>b1093.Value then b1093.Font.Color:=clRed
  else if b1092.Value=b1093.Value then b1093.Font.Color:=clBlack else b1093.Font.Color:=clGreen;
  if b1093.Value>b1094.Value then b1094.Font.Color:=clRed
  else if b1093.Value=b1094.Value then b1094.Font.Color:=clBlack else b1094.Font.Color:=clGreen;
  if b1094.Value>b1096.Value then b1096.Font.Color:=clRed
  else if b1094.Value=b1096.Value then b1096.Font.Color:=clBlack else b1096.Font.Color:=clGreen;
  if b1096.Value>b1097.Value then b1097.Font.Color:=clRed
  else if b1096.Value=b1097.Value then b1097.Font.Color:=clBlack else b1097.Font.Color:=clGreen;
  if b1097.Value>b1098.Value then b1098.Font.Color:=clRed
  else if b1097.Value=b1098.Value then b1098.Font.Color:=clBlack else b1098.Font.Color:=clGreen;

  //QN 11
  if b2092.Value>b2093.Value then b2093.Font.Color:=clRed
  else if b2092.Value=b2093.Value then b2093.Font.Color:=clBlack else b2093.Font.Color:=clGreen;
  if b2093.Value>b2094.Value then b2094.Font.Color:=clRed
  else if b2093.Value=b2094.Value then b2094.Font.Color:=clBlack else b2094.Font.Color:=clGreen;
  if b2094.Value>b2096.Value then b2096.Font.Color:=clRed
  else if b2094.Value=b2096.Value then b2096.Font.Color:=clBlack else b2096.Font.Color:=clGreen;
  if b2096.Value>b2097.Value then b2097.Font.Color:=clRed
  else if b2096.Value=b2097.Value then b2097.Font.Color:=clBlack else b2097.Font.Color:=clGreen;
  if b2097.Value>b2098.Value then b2098.Font.Color:=clRed
  else if b2097.Value=b2098.Value then b2098.Font.Color:=clBlack else b2098.Font.Color:=clGreen;

  //QN 12
  if b3092.Value>b3093.Value then b3093.Font.Color:=clRed
  else if b3092.Value=b3093.Value then b3093.Font.Color:=clBlack else b3093.Font.Color:=clGreen;
  if b3093.Value>b3094.Value then b3094.Font.Color:=clRed
  else if b3093.Value=b3094.Value then b3094.Font.Color:=clBlack else b3094.Font.Color:=clGreen;
  if b3094.Value>b3096.Value then b3096.Font.Color:=clRed
  else if b3094.Value=b3096.Value then b3096.Font.Color:=clBlack else b3096.Font.Color:=clGreen;
  if b3096.Value>b3097.Value then b3097.Font.Color:=clRed
  else if b3096.Value=b3097.Value then b3097.Font.Color:=clBlack else b3097.Font.Color:=clGreen;
  if b3097.Value>b3098.Value then b3098.Font.Color:=clRed
  else if b3097.Value=b3098.Value then b3098.Font.Color:=clBlack else b3098.Font.Color:=clGreen;

  bs3101.Caption:=b1061.Value+b1071.Value+b1081.Value+b1091.Value;
  bs3102.Caption:=b1062.Value+b1072.Value+b1082.Value+b1092.Value;
  bs3103.Caption:=b1063.value+b1073.value+b1083.value+b1093.value;
  bs3104.Caption:=b1064.value+b1074.value+b1084.value+b1094.value;
  bs3106.Caption:=b1066.value+b1076.value+b1086.value+b1096.value;
  bs3107.Caption:=b1067.value+b1077.value+b1087.value+b1097.value;
  bs3108.Caption:=b1068.value+b1078.value+b1088.value+b1098.value;

  bs3201.Caption:=b2061.Value+b2071.Value+b2081.Value+b2091.Value;
  bs3202.Caption:=b2062.Value+b2072.Value+b2082.Value+b2092.Value;
  bs3203.Caption:=b2063.value+b2073.value+b2083.value+b2093.value;
  bs3204.Caption:=b2064.value+b2074.value+b2084.value+b2094.value;
  bs3206.Caption:=b2066.value+b2076.value+b2086.value+b2096.value;
  bs3207.Caption:=b2067.value+b2077.value+b2087.value+b2097.value;
  bs3208.Caption:=b2068.value+b2078.value+b2088.value+b2098.value;

  bs3301.Caption:=b3061.Value+b3071.Value+b3081.Value+b3091.Value;
  bs3302.Caption:=b3062.Value+b3072.Value+b3082.Value+b3092.Value;
  bs3303.Caption:=b3063.value+b3073.value+b3083.value+b3093.value;
  bs3304.Caption:=b3064.value+b3074.value+b3084.value+b3094.value;
  bs3306.Caption:=b3066.value+b3076.value+b3086.value+b3096.value;
  bs3307.Caption:=b3067.value+b3077.value+b3087.value+b3097.value;
  bs3308.Caption:=b3068.value+b3078.value+b3088.value+b3098.value;

  if bs3102.caption>bs3103.Caption then bs3103.Font.Color:=clRed
  else if bs3102.Caption=bs3103.Caption then bs3103.Font.Color:=clBlack else bs3103.Font.Color:=clGreen;
  if bs3103.caption>bs3104.Caption then bs3104.Font.Color:=clRed
  else if bs3103.Caption=bs3104.Caption then bs3104.Font.Color:=clBlack else bs3104.Font.Color:=clGreen;
  if bs3104.caption>bs3106.Caption then bs3106.Font.Color:=clRed
  else if bs3104.Caption=bs3106.Caption then bs3106.Font.Color:=clBlack else bs3106.Font.Color:=clGreen;
  if bs3106.caption>bs3107.Caption then bs3107.Font.Color:=clRed
  else if bs3106.Caption=bs3107.Caption then bs3107.Font.Color:=clBlack else bs3107.Font.Color:=clGreen;
  if bs3107.caption>bs3108.Caption then bs3108.Font.Color:=clRed
  else if bs3107.Caption=bs3108.Caption then bs3108.Font.Color:=clBlack else bs3108.Font.Color:=clGreen;

  if bs3202.caption>bs3203.Caption then bs3203.Font.Color:=clRed
  else if bs3202.Caption=bs3203.Caption then bs3203.Font.Color:=clBlack else bs3203.Font.Color:=clGreen;
  if bs3203.caption>bs3204.Caption then bs3204.Font.Color:=clRed
  else if bs3203.Caption=bs3204.Caption then bs3204.Font.Color:=clBlack else bs3204.Font.Color:=clGreen;
  if bs3204.caption>bs3206.Caption then bs3206.Font.Color:=clRed
  else if bs3204.Caption=bs3206.Caption then bs3206.Font.Color:=clBlack else bs3206.Font.Color:=clGreen;
  if bs3206.caption>bs3207.Caption then bs3207.Font.Color:=clRed
  else if bs3206.Caption=bs3207.Caption then bs3207.Font.Color:=clBlack else bs3207.Font.Color:=clGreen;
  if bs3207.caption>bs3208.Caption then bs3208.Font.Color:=clRed
  else if bs3207.Caption=bs3208.Caption then bs3208.Font.Color:=clBlack else bs3208.Font.Color:=clGreen;

  if bs3302.caption>bs3303.Caption then bs3303.Font.Color:=clRed
  else if bs3302.Caption=bs3303.Caption then bs3303.Font.Color:=clBlack else bs3303.Font.Color:=clGreen;
  if bs3303.caption>bs3304.Caption then bs3304.Font.Color:=clRed
  else if bs3303.Caption=bs3304.Caption then bs3304.Font.Color:=clBlack else bs3304.Font.Color:=clGreen;
  if bs3304.caption>bs3306.Caption then bs3306.Font.Color:=clRed
  else if bs3304.Caption=bs3306.Caption then bs3306.Font.Color:=clBlack else bs3306.Font.Color:=clGreen;
  if bs3306.caption>bs3307.Caption then bs3307.Font.Color:=clRed
  else if bs3306.Caption=bs3307.Caption then bs3307.Font.Color:=clBlack else bs3307.Font.Color:=clGreen;
  if bs3307.caption>bs3308.Caption then bs3308.Font.Color:=clRed
  else if bs3307.Caption=bs3308.Caption then bs3308.Font.Color:=clBlack else bs3308.Font.Color:=clGreen;

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
  bp004.Caption:='('+formatfloat('0.0%',bd004.Value*100.0/bq004.Value)+')';
end;

procedure Tfrmpdnrpt8.ppGroupFooterBand7BeforePrint(Sender: TObject);
begin
  b1041.DataField:='q4qty';b1042.DataField:='q4pqty';b1043.DataField:='q4t1qty';b1044.DataField:='q4t2qty';b1046.DataField:='q4t3qty';b1047.DataField:='q4aqqty';b1048.DataField:='q4t4qty';
  b2041.DataField:='q5qty';b2042.DataField:='q5pqty';b2043.DataField:='q5t1qty';b2044.DataField:='q5t2qty';b2046.DataField:='q5t3qty';b2047.DataField:='q5aqqty';b2048.DataField:='q5t4qty';
  b3041.DataField:='q6qty';b3042.DataField:='q6pqty';b3043.DataField:='q6t1qty';b3044.DataField:='q6t2qty';b3046.DataField:='q6t3qty';b3047.DataField:='q6aqqty';b3048.DataField:='q6t4qty';

  b1051.DataField:='q7qty';b1052.DataField:='q7pqty';b1053.DataField:='q7t1qty';b1054.DataField:='q7t2qty';b1056.DataField:='q7t3qty';b1057.DataField:='q7aqqty';b1058.DataField:='q7t4qty';
  b2051.DataField:='q8qty';b2052.DataField:='q8pqty';b2053.DataField:='q8t1qty';b2054.DataField:='q8t2qty';b2056.DataField:='q8t3qty';b2057.DataField:='q8aqqty';b2058.DataField:='q8t4qty';
  b3051.DataField:='q9qty';b3052.DataField:='q9pqty';b3053.DataField:='q9t1qty';b3054.DataField:='q9t2qty';b3056.DataField:='q9t3qty';b3057.DataField:='q9aqqty';b3058.DataField:='q9t4qty';

  b1031.Visible:=false;b1032.Visible:=false;b1033.Visible:=false;b1034.Visible:=false;b1036.Visible:=false;b1037.Visible:=false;b1038.Visible:=false;
  b2031.Visible:=false;b2032.Visible:=false;b2033.Visible:=false;b2034.Visible:=false;b2036.Visible:=false;b2037.Visible:=false;b2038.Visible:=false;
  b3031.Visible:=false;b3032.Visible:=false;b3033.Visible:=false;b3034.Visible:=false;b3036.Visible:=false;b3037.Visible:=false;b3038.Visible:=false;

  b1041.Visible:=false;b1042.Visible:=false;b1043.Visible:=false;b1044.Visible:=false;b1046.Visible:=false;b1047.Visible:=false;b1048.Visible:=false;
  b2041.Visible:=false;b2042.Visible:=false;b2043.Visible:=false;b2044.Visible:=false;b2046.Visible:=false;b2047.Visible:=false;b2048.Visible:=false;
  b3041.Visible:=false;b3042.Visible:=false;b3043.Visible:=false;b3044.Visible:=false;b3046.Visible:=false;b3047.Visible:=false;b3048.Visible:=false;

  b1051.Visible:=false;b1052.Visible:=false;b1053.Visible:=false;b1054.Visible:=false;b1056.Visible:=false;b1057.Visible:=false;b1058.Visible:=false;
  b2051.Visible:=false;b2052.Visible:=false;b2053.Visible:=false;b2054.Visible:=false;b2056.Visible:=false;b2057.Visible:=false;b2058.Visible:=false;
  b3051.Visible:=false;b3052.Visible:=false;b3053.Visible:=false;b3054.Visible:=false;b3056.Visible:=false;b3057.Visible:=false;b3058.Visible:=false;

  if rwo301.Caption>'' then begin
    b1031.Visible:=true;b1032.Visible:=true;b1033.Visible:=true;b1034.Visible:=true;b1036.Visible:=true;b1037.Visible:=true;b1038.Visible:=true;
  end;
  if rwo302.Caption>'' then begin
    b2031.Visible:=true;b2032.Visible:=true;b2033.Visible:=true;b2034.Visible:=true;b2036.Visible:=true;b2037.Visible:=true;b2038.Visible:=true;
  end;
  if rwo303.Caption>'' then begin
    b3031.Visible:=true;b3032.Visible:=true;b3033.Visible:=true;b3034.Visible:=true;b3036.Visible:=true;b3037.Visible:=true;b3038.Visible:=true;
  end;
  if rwo311.Caption>'' then begin
    b1041.Visible:=true;b1042.Visible:=true;b1043.Visible:=true;b1044.Visible:=true;b1046.Visible:=true;b1047.Visible:=true;b1048.Visible:=true;
  end;
  if rwo312.Caption>'' then begin
    b2041.Visible:=true;b2042.Visible:=true;b2043.Visible:=true;b2044.Visible:=true;b2046.Visible:=true;b2047.Visible:=true;b2048.Visible:=true;
  end;
  if rwo313.Caption>'' then begin
    b3041.Visible:=true;b3042.Visible:=true;b3043.Visible:=true;b3044.Visible:=true;b3046.Visible:=true;b3047.Visible:=true;b3048.Visible:=true;
  end;
  if rwo321.Caption>'' then begin
    b1051.Visible:=true;b1052.Visible:=true;b1053.Visible:=true;b1054.Visible:=true;b1056.Visible:=true;b1057.Visible:=true;b1058.Visible:=true;
  end;
  if rwo322.Caption>'' then begin
    b2051.Visible:=true;b2052.Visible:=true;b2053.Visible:=true;b2054.Visible:=true;b2056.Visible:=true;b2057.Visible:=true;b2058.Visible:=true;
  end;
  if rwo323.Caption>'' then begin
    b3051.Visible:=true;b3052.Visible:=true;b3053.Visible:=true;b3054.Visible:=true;b3056.Visible:=true;b3057.Visible:=true;b3058.Visible:=true;
  end;

  //QN 1
  if b1032.Value>b1033.Value then b1033.Font.Color:=clRed
  else if b1032.Value=b1033.Value then b1033.Font.Color:=clBlack else b1033.Font.Color:=clGreen;
  if b1033.Value>b1034.Value then b1034.Font.Color:=clRed
  else if b1033.Value=b1034.Value then b1034.Font.Color:=clBlack else b1034.Font.Color:=clGreen;
  if b1034.Value>b1036.Value then b1036.Font.Color:=clRed
  else if b1034.Value=b1036.Value then b1036.Font.Color:=clBlack else b1036.Font.Color:=clGreen;
  if b1036.Value>b1037.Value then b1037.Font.Color:=clRed
  else if b1036.Value=b1037.Value then b1037.Font.Color:=clBlack else b1037.Font.Color:=clGreen;
  if b1037.Value>b1038.Value then b1038.Font.Color:=clRed
  else if b1037.Value=b1038.Value then b1038.Font.Color:=clBlack else b1038.Font.Color:=clGreen;

  //QN 2
  if b2032.Value>b2033.Value then b2033.Font.Color:=clRed
  else if b2032.Value=b2033.Value then b2033.Font.Color:=clBlack else b2033.Font.Color:=clGreen;
  if b2033.Value>b2034.Value then b2034.Font.Color:=clRed
  else if b2033.Value=b2034.Value then b2034.Font.Color:=clBlack else b2034.Font.Color:=clGreen;
  if b2034.Value>b2036.Value then b2036.Font.Color:=clRed
  else if b2034.Value=b2036.Value then b2036.Font.Color:=clBlack else b2036.Font.Color:=clGreen;
  if b2036.Value>b2037.Value then b2037.Font.Color:=clRed
  else if b2036.Value=b2037.Value then b2037.Font.Color:=clBlack else b2037.Font.Color:=clGreen;
  if b2037.Value>b2038.Value then b2038.Font.Color:=clRed
  else if b2037.Value=b2038.Value then b2038.Font.Color:=clBlack else b2038.Font.Color:=clGreen;

  //QN 3
  if b3032.Value>b3033.Value then b3033.Font.Color:=clRed
  else if b3032.Value=b3033.Value then b3033.Font.Color:=clBlack else b3033.Font.Color:=clGreen;
  if b3033.Value>b3034.Value then b3034.Font.Color:=clRed
  else if b3033.Value=b3034.Value then b3034.Font.Color:=clBlack else b3034.Font.Color:=clGreen;
  if b3034.Value>b3036.Value then b3036.Font.Color:=clRed
  else if b3034.Value=b3036.Value then b3036.Font.Color:=clBlack else b3036.Font.Color:=clGreen;
  if b3036.Value>b3037.Value then b3037.Font.Color:=clRed
  else if b3036.Value=b3037.Value then b3037.Font.Color:=clBlack else b3037.Font.Color:=clGreen;
  if b3037.Value>b3038.Value then b3038.Font.Color:=clRed
  else if b3037.Value=b3038.Value then b3038.Font.Color:=clBlack else b3038.Font.Color:=clGreen;

  //QN 4
  if b1042.Value>b1043.Value then b1043.Font.Color:=clRed
  else if b1042.Value=b1043.Value then b1043.Font.Color:=clBlack else b1043.Font.Color:=clGreen;
  if b1043.Value>b1044.Value then b1044.Font.Color:=clRed
  else if b1043.Value=b1044.Value then b1044.Font.Color:=clBlack else b1044.Font.Color:=clGreen;
  if b1044.Value>b1046.Value then b1046.Font.Color:=clRed
  else if b1044.Value=b1046.Value then b1046.Font.Color:=clBlack else b1046.Font.Color:=clGreen;
  if b1046.Value>b1047.Value then b1047.Font.Color:=clRed
  else if b1046.Value=b1047.Value then b1047.Font.Color:=clBlack else b1047.Font.Color:=clGreen;
  if b1047.Value>b1048.Value then b1048.Font.Color:=clRed
  else if b1047.Value=b1048.Value then b1048.Font.Color:=clBlack else b1048.Font.Color:=clGreen;

  //QN 5
  if b2042.Value>b2043.Value then b2043.Font.Color:=clRed
  else if b2042.Value=b2043.Value then b2043.Font.Color:=clBlack else b2043.Font.Color:=clGreen;
  if b2043.Value>b2044.Value then b2044.Font.Color:=clRed
  else if b2043.Value=b2044.Value then b2044.Font.Color:=clBlack else b2044.Font.Color:=clGreen;
  if b2044.Value>b2046.Value then b2046.Font.Color:=clRed
  else if b2044.Value=b2046.Value then b2046.Font.Color:=clBlack else b2046.Font.Color:=clGreen;
  if b2046.Value>b2047.Value then b2047.Font.Color:=clRed
  else if b2046.Value=b2047.Value then b2047.Font.Color:=clBlack else b2047.Font.Color:=clGreen;
  if b2047.Value>b2048.Value then b2048.Font.Color:=clRed
  else if b2047.Value=b2048.Value then b2048.Font.Color:=clBlack else b2048.Font.Color:=clGreen;

  //QN 6
  if b3042.Value>b3043.Value then b3043.Font.Color:=clRed
  else if b3042.Value=b3043.Value then b3043.Font.Color:=clBlack else b3043.Font.Color:=clGreen;
  if b3043.Value>b3044.Value then b3044.Font.Color:=clRed
  else if b3043.Value=b3044.Value then b3044.Font.Color:=clBlack else b3044.Font.Color:=clGreen;
  if b3044.Value>b3046.Value then b3046.Font.Color:=clRed
  else if b3044.Value=b3046.Value then b3046.Font.Color:=clBlack else b3046.Font.Color:=clGreen;
  if b3046.Value>b3047.Value then b3047.Font.Color:=clRed
  else if b3046.Value=b3047.Value then b3047.Font.Color:=clBlack else b3047.Font.Color:=clGreen;
  if b3047.Value>b3048.Value then b3048.Font.Color:=clRed
  else if b3047.Value=b3048.Value then b3048.Font.Color:=clBlack else b3048.Font.Color:=clGreen;

  //QN 7
  if b1052.Value>b1053.Value then b1053.Font.Color:=clRed
  else if b1052.Value=b1053.Value then b1053.Font.Color:=clBlack else b1053.Font.Color:=clGreen;
  if b1053.Value>b1054.Value then b1054.Font.Color:=clRed
  else if b1053.Value=b1054.Value then b1054.Font.Color:=clBlack else b1054.Font.Color:=clGreen;
  if b1054.Value>b1056.Value then b1056.Font.Color:=clRed
  else if b1054.Value=b1056.Value then b1056.Font.Color:=clBlack else b1056.Font.Color:=clGreen;
  if b1056.Value>b1057.Value then b1057.Font.Color:=clRed
  else if b1056.Value=b1057.Value then b1057.Font.Color:=clBlack else b1057.Font.Color:=clGreen;
  if b1057.Value>b1058.Value then b1058.Font.Color:=clRed
  else if b1057.Value=b1058.Value then b1058.Font.Color:=clBlack else b1058.Font.Color:=clGreen;

  //QN 8
  if b2052.Value>b2053.Value then b2053.Font.Color:=clRed
  else if b2052.Value=b2053.Value then b2053.Font.Color:=clBlack else b2053.Font.Color:=clGreen;
  if b2053.Value>b2054.Value then b2054.Font.Color:=clRed
  else if b2053.Value=b2054.Value then b2054.Font.Color:=clBlack else b2054.Font.Color:=clGreen;
  if b2054.Value>b2056.Value then b2056.Font.Color:=clRed
  else if b2054.Value=b2056.Value then b2056.Font.Color:=clBlack else b2056.Font.Color:=clGreen;
  if b2056.Value>b2057.Value then b2057.Font.Color:=clRed
  else if b2056.Value=b2057.Value then b2057.Font.Color:=clBlack else b2057.Font.Color:=clGreen;
  if b2057.Value>b2058.Value then b2058.Font.Color:=clRed
  else if b2057.Value=b2058.Value then b2058.Font.Color:=clBlack else b2058.Font.Color:=clGreen;

  //QN 9
  if b3052.Value>b3053.Value then b3053.Font.Color:=clRed
  else if b3052.Value=b3053.Value then b3053.Font.Color:=clBlack else b3053.Font.Color:=clGreen;
  if b3053.Value>b3054.Value then b3054.Font.Color:=clRed
  else if b3053.Value=b3054.Value then b3054.Font.Color:=clBlack else b3054.Font.Color:=clGreen;
  if b3054.Value>b3056.Value then b3056.Font.Color:=clRed
  else if b3054.Value=b3056.Value then b3056.Font.Color:=clBlack else b3056.Font.Color:=clGreen;
  if b3056.Value>b3057.Value then b3057.Font.Color:=clRed
  else if b3056.Value=b3057.Value then b3057.Font.Color:=clBlack else b3057.Font.Color:=clGreen;
  if b3057.Value>b3058.Value then b3058.Font.Color:=clRed
  else if b3057.Value=b3058.Value then b3058.Font.Color:=clBlack else b3058.Font.Color:=clGreen;

  bs2101.Caption:=b1031.Value+b1041.Value+b1051.Value;
  bs2102.Caption:=b1032.Value+b1042.Value+b1052.Value;
  bs2103.Caption:=b1033.value+b1043.value+b1053.value;
  bs2104.Caption:=b1034.value+b1044.value+b1054.value;
  bs2106.Caption:=b1036.value+b1046.value+b1056.value;
  bs2107.Caption:=b1037.value+b1047.value+b1057.value;
  bs2108.Caption:=b1038.value+b1048.value+b1058.value;

  bs2201.Caption:=b2031.Value+b2041.Value+b2051.Value;
  bs2202.Caption:=b2032.Value+b2042.Value+b2052.Value;
  bs2203.Caption:=b2033.value+b2043.value+b2053.value;
  bs2204.Caption:=b2034.value+b2044.value+b2054.value;
  bs2206.Caption:=b2036.value+b2046.value+b2056.value;
  bs2207.Caption:=b2037.value+b2047.value+b2057.value;
  bs2208.Caption:=b2038.value+b2048.value+b2058.value;

  bs2301.Caption:=b3031.Value+b3041.Value+b3051.Value;
  bs2302.Caption:=b3032.Value+b3042.Value+b3052.Value;
  bs2303.Caption:=b3033.value+b3043.value+b3053.value;
  bs2304.Caption:=b3034.value+b3044.value+b3054.value;
  bs2306.Caption:=b3036.value+b3046.value+b3056.value;
  bs2307.Caption:=b3037.value+b3047.value+b3057.value;
  bs2308.Caption:=b3038.value+b3048.value+b3058.value;

  if bs2102.caption>bs2103.Caption then bs2103.Font.Color:=clRed
  else if bs2102.Caption=bs2103.Caption then bs2103.Font.Color:=clBlack else bs2103.Font.Color:=clGreen;
  if bs2103.caption>bs2104.Caption then bs2104.Font.Color:=clRed
  else if bs2103.Caption=bs2104.Caption then bs2104.Font.Color:=clBlack else bs2104.Font.Color:=clGreen;
  if bs2104.caption>bs2106.Caption then bs2106.Font.Color:=clRed
  else if bs2104.Caption=bs2106.Caption then bs2106.Font.Color:=clBlack else bs2106.Font.Color:=clGreen;
  if bs2106.caption>bs2107.Caption then bs2107.Font.Color:=clRed
  else if bs2106.Caption=bs2107.Caption then bs2107.Font.Color:=clBlack else bs2107.Font.Color:=clGreen;
  if bs2107.caption>bs2108.Caption then bs2108.Font.Color:=clRed
  else if bs2107.Caption=bs2108.Caption then bs2108.Font.Color:=clBlack else bs2108.Font.Color:=clGreen;

  if bs2202.caption>bs2203.Caption then bs2203.Font.Color:=clRed
  else if bs2202.Caption=bs2203.Caption then bs2203.Font.Color:=clBlack else bs2203.Font.Color:=clGreen;
  if bs2203.caption>bs2204.Caption then bs2204.Font.Color:=clRed
  else if bs2203.Caption=bs2204.Caption then bs2204.Font.Color:=clBlack else bs2204.Font.Color:=clGreen;
  if bs2204.caption>bs2206.Caption then bs2206.Font.Color:=clRed
  else if bs2204.Caption=bs2206.Caption then bs2206.Font.Color:=clBlack else bs2206.Font.Color:=clGreen;
  if bs2206.caption>bs2207.Caption then bs2207.Font.Color:=clRed
  else if bs2206.Caption=bs2207.Caption then bs2207.Font.Color:=clBlack else bs2207.Font.Color:=clGreen;
  if bs2207.caption>bs2208.Caption then bs2208.Font.Color:=clRed
  else if bs2207.Caption=bs2208.Caption then bs2208.Font.Color:=clBlack else bs2208.Font.Color:=clGreen;

  if bs2302.caption>bs2303.Caption then bs2303.Font.Color:=clRed
  else if bs2302.Caption=bs2303.Caption then bs2303.Font.Color:=clBlack else bs2303.Font.Color:=clGreen;
  if bs2303.caption>bs2304.Caption then bs2304.Font.Color:=clRed
  else if bs2303.Caption=bs2304.Caption then bs2304.Font.Color:=clBlack else bs2304.Font.Color:=clGreen;
  if bs2304.caption>bs2306.Caption then bs2306.Font.Color:=clRed
  else if bs2304.Caption=bs2306.Caption then bs2306.Font.Color:=clBlack else bs2306.Font.Color:=clGreen;
  if bs2306.caption>bs2307.Caption then bs2307.Font.Color:=clRed
  else if bs2306.Caption=bs2307.Caption then bs2307.Font.Color:=clBlack else bs2307.Font.Color:=clGreen;
  if bs2307.caption>bs2308.Caption then bs2308.Font.Color:=clRed
  else if bs2307.Caption=bs2308.Caption then bs2308.Font.Color:=clBlack else bs2308.Font.Color:=clGreen;

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
  bp003.Caption:='('+formatfloat('0.0%',bd003.Value*100.0/bq003.Value)+')';
end;

procedure Tfrmpdnrpt8.ppGroupFooterBand6BeforePrint(Sender: TObject);
begin
  b1021.DataField:='q4qty';b1022.DataField:='q4pqty';b1023.DataField:='q4t1qty';b1024.DataField:='q4t2qty';b1026.DataField:='q4t3qty';b1027.DataField:='q4aqqty';b1028.DataField:='q4t4qty';
  b2021.DataField:='q5qty';b2022.DataField:='q5pqty';b2023.DataField:='q5t1qty';b2024.DataField:='q5t2qty';b2026.DataField:='q5t3qty';b2027.DataField:='q5aqqty';b2028.DataField:='q5t4qty';
  b3021.DataField:='q6qty';b3022.DataField:='q6pqty';b3023.DataField:='q6t1qty';b3024.DataField:='q6t2qty';b3026.DataField:='q6t3qty';b3027.DataField:='q6aqqty';b3028.DataField:='q6t4qty';

  b1011.Visible:=false;b1012.Visible:=false;b1013.Visible:=false;b1014.Visible:=false;b1016.Visible:=false;b1017.Visible:=false;b1018.Visible:=false;
  b2011.Visible:=false;b2012.Visible:=false;b2013.Visible:=false;b2014.Visible:=false;b2016.Visible:=false;b2017.Visible:=false;b2018.Visible:=false;
  b3011.Visible:=false;b3012.Visible:=false;b3013.Visible:=false;b3014.Visible:=false;b3016.Visible:=false;b3017.Visible:=false;b3018.Visible:=false;

  b1021.Visible:=false;b1022.Visible:=false;b1023.Visible:=false;b1024.Visible:=false;b1026.Visible:=false;b1027.Visible:=false;b1028.Visible:=false;
  b2021.Visible:=false;b2022.Visible:=false;b2023.Visible:=false;b2024.Visible:=false;b2026.Visible:=false;b2027.Visible:=false;b2028.Visible:=false;
  b3021.Visible:=false;b3022.Visible:=false;b3023.Visible:=false;b3024.Visible:=false;b3026.Visible:=false;b3027.Visible:=false;b3028.Visible:=false;

  if rwo201.Caption>'' then begin
    b1011.Visible:=true;b1012.Visible:=true;b1013.Visible:=true;b1014.Visible:=true;b1016.Visible:=true;b1017.Visible:=true;b1018.Visible:=true;
  end;
  if rwo202.Caption>'' then begin
    b2011.Visible:=true;b2012.Visible:=true;b2013.Visible:=true;b2014.Visible:=true;b2016.Visible:=true;b2017.Visible:=true;b2018.Visible:=true;
  end;
  if rwo203.Caption>'' then begin
    b3011.Visible:=true;b3012.Visible:=true;b3013.Visible:=true;b3014.Visible:=true;b3016.Visible:=true;b3017.Visible:=true;b3018.Visible:=true;
  end;
  if rwo211.Caption>'' then begin
    b1021.Visible:=true;b1022.Visible:=true;b1023.Visible:=true;b1024.Visible:=true;b1026.Visible:=true;b1027.Visible:=true;b1028.Visible:=true;
  end;
  if rwo212.Caption>'' then begin
    b2021.Visible:=true;b2022.Visible:=true;b2023.Visible:=true;b2024.Visible:=true;b2026.Visible:=true;b2027.Visible:=true;b2028.Visible:=true;
  end;
  if rwo213.Caption>'' then begin
    b3021.Visible:=true;b3022.Visible:=true;b3023.Visible:=true;b3024.Visible:=true;b3026.Visible:=true;b3027.Visible:=true;b3028.Visible:=true;
  end;

  //QN 1
  if b1012.Value>b1013.Value then b1013.Font.Color:=clRed
  else if b1012.Value=b1013.Value then b1013.Font.Color:=clBlack else b1013.Font.Color:=clGreen;
  if b1013.Value>b1014.Value then b1014.Font.Color:=clRed
  else if b1013.Value=b1014.Value then b1014.Font.Color:=clBlack else b1014.Font.Color:=clGreen;
  if b1014.Value>b1016.Value then b1016.Font.Color:=clRed
  else if b1014.Value=b1016.Value then b1016.Font.Color:=clBlack else b1016.Font.Color:=clGreen;
  if b1016.Value>b1017.Value then b1017.Font.Color:=clRed
  else if b1016.Value=b1017.Value then b1017.Font.Color:=clBlack else b1017.Font.Color:=clGreen;
  if b1017.Value>b1018.Value then b1018.Font.Color:=clRed
  else if b1017.Value=b1018.Value then b1018.Font.Color:=clBlack else b1018.Font.Color:=clGreen;

  //QN 2
  if b2012.Value>b2013.Value then b2013.Font.Color:=clRed
  else if b2012.Value=b2013.Value then b2013.Font.Color:=clBlack else b2013.Font.Color:=clGreen;
  if b2013.Value>b2014.Value then b2014.Font.Color:=clRed
  else if b2013.Value=b2014.Value then b2014.Font.Color:=clBlack else b2014.Font.Color:=clGreen;
  if b2014.Value>b2016.Value then b2016.Font.Color:=clRed
  else if b2014.Value=b2016.Value then b2016.Font.Color:=clBlack else b2016.Font.Color:=clGreen;
  if b2016.Value>b2017.Value then b2017.Font.Color:=clRed
  else if b2016.Value=b2017.Value then b2017.Font.Color:=clBlack else b2017.Font.Color:=clGreen;
  if b2017.Value>b2018.Value then b2018.Font.Color:=clRed
  else if b2017.Value=b2018.Value then b2018.Font.Color:=clBlack else b2018.Font.Color:=clGreen;

  //QN 3
  if b3012.Value>b3013.Value then b3013.Font.Color:=clRed
  else if b3012.Value=b3013.Value then b3013.Font.Color:=clBlack else b3013.Font.Color:=clGreen;
  if b3013.Value>b3014.Value then b3014.Font.Color:=clRed
  else if b3013.Value=b3014.Value then b3014.Font.Color:=clBlack else b3014.Font.Color:=clGreen;
  if b3014.Value>b3016.Value then b3016.Font.Color:=clRed
  else if b3014.Value=b3016.Value then b3016.Font.Color:=clBlack else b3016.Font.Color:=clGreen;
  if b3016.Value>b3017.Value then b3017.Font.Color:=clRed
  else if b3016.Value=b3017.Value then b3017.Font.Color:=clBlack else b3017.Font.Color:=clGreen;
  if b3017.Value>b3018.Value then b3018.Font.Color:=clRed
  else if b3017.Value=b3018.Value then b3018.Font.Color:=clBlack else b3018.Font.Color:=clGreen;

  //QN 4
  if b1022.Value>b1023.Value then b1023.Font.Color:=clRed
  else if b1022.Value=b1023.Value then b1023.Font.Color:=clBlack else b1023.Font.Color:=clGreen;
  if b1023.Value>b1024.Value then b1024.Font.Color:=clRed
  else if b1023.Value=b1024.Value then b1024.Font.Color:=clBlack else b1024.Font.Color:=clGreen;
  if b1024.Value>b1026.Value then b1026.Font.Color:=clRed
  else if b1024.Value=b1026.Value then b1026.Font.Color:=clBlack else b1026.Font.Color:=clGreen;
  if b1026.Value>b1027.Value then b1027.Font.Color:=clRed
  else if b1026.Value=b1027.Value then b1027.Font.Color:=clBlack else b1027.Font.Color:=clGreen;
  if b1027.Value>b1028.Value then b1028.Font.Color:=clRed
  else if b1027.Value=b1028.Value then b1028.Font.Color:=clBlack else b1028.Font.Color:=clGreen;

  //QN 5
  if b2022.Value>b2023.Value then b2023.Font.Color:=clRed
  else if b2022.Value=b2023.Value then b2023.Font.Color:=clBlack else b2023.Font.Color:=clGreen;
  if b2023.Value>b2024.Value then b2024.Font.Color:=clRed
  else if b2023.Value=b2024.Value then b2024.Font.Color:=clBlack else b2024.Font.Color:=clGreen;
  if b2024.Value>b2026.Value then b2026.Font.Color:=clRed
  else if b2024.Value=b2026.Value then b2026.Font.Color:=clBlack else b2026.Font.Color:=clGreen;
  if b2026.Value>b2027.Value then b2027.Font.Color:=clRed
  else if b2026.Value=b2027.Value then b2027.Font.Color:=clBlack else b2027.Font.Color:=clGreen;
  if b2027.Value>b2028.Value then b2028.Font.Color:=clRed
  else if b2027.Value=b2028.Value then b2028.Font.Color:=clBlack else b2028.Font.Color:=clGreen;

  //QN 6
  if b3022.Value>b3023.Value then b3023.Font.Color:=clRed
  else if b3022.Value=b3023.Value then b3023.Font.Color:=clBlack else b3023.Font.Color:=clGreen;
  if b3023.Value>b3024.Value then b3024.Font.Color:=clRed
  else if b3023.Value=b3024.Value then b3024.Font.Color:=clBlack else b3024.Font.Color:=clGreen;
  if b3024.Value>b3026.Value then b3026.Font.Color:=clRed
  else if b3024.Value=b3026.Value then b3026.Font.Color:=clBlack else b3026.Font.Color:=clGreen;
  if b3026.Value>b3027.Value then b3027.Font.Color:=clRed
  else if b3026.Value=b3027.Value then b3027.Font.Color:=clBlack else b3027.Font.Color:=clGreen;
  if b3027.Value>b3028.Value then b3028.Font.Color:=clRed
  else if b3027.Value=b3028.Value then b3028.Font.Color:=clBlack else b3028.Font.Color:=clGreen;

  bs1101.Caption:=b1011.Value+b1021.Value;
  bs1102.Caption:=b1012.Value+b1022.Value;
  bs1103.Caption:=b1013.value+b1023.value;
  bs1104.Caption:=b1014.value+b1024.value;
  bs1106.Caption:=b1002.value+b1026.value;
  bs1107.Caption:=b1017.value+b1027.value;
  bs1108.Caption:=b1018.value+b1028.value;

  bs1201.Caption:=b2011.Value+b2021.Value;
  bs1202.Caption:=b2012.Value+b2022.Value;
  bs1203.Caption:=b2013.value+b2023.value;
  bs1204.Caption:=b2014.value+b2024.value;
  bs1206.Caption:=b2002.value+b2026.value;
  bs1207.Caption:=b2017.value+b2027.value;
  bs1208.Caption:=b2018.value+b2028.value;

  bs1301.Caption:=b3011.Value+b3021.Value;
  bs1302.Caption:=b3012.Value+b3022.Value;
  bs1303.Caption:=b3013.value+b3023.value;
  bs1304.Caption:=b3014.value+b3024.value;
  bs1306.Caption:=b3002.value+b3026.value;
  bs1307.Caption:=b3017.value+b3027.value;
  bs1308.Caption:=b3018.value+b3028.value;

  if bs1102.caption>bs1103.Caption then bs1103.Font.Color:=clRed
  else if bs1102.Caption=bs1103.Caption then bs1103.Font.Color:=clBlack else bs1103.Font.Color:=clGreen;
  if bs1103.caption>bs1104.Caption then bs1104.Font.Color:=clRed
  else if bs1103.Caption=bs1104.Caption then bs1104.Font.Color:=clBlack else bs1104.Font.Color:=clGreen;
  if bs1104.caption>bs1106.Caption then bs1106.Font.Color:=clRed
  else if bs1104.Caption=bs1106.Caption then bs1106.Font.Color:=clBlack else bs1106.Font.Color:=clGreen;
  if bs1106.caption>bs1107.Caption then bs1107.Font.Color:=clRed
  else if bs1106.Caption=bs1107.Caption then bs1107.Font.Color:=clBlack else bs1107.Font.Color:=clGreen;
  if bs1107.caption>bs1108.Caption then bs1108.Font.Color:=clRed
  else if bs1107.Caption=bs1108.Caption then bs1108.Font.Color:=clBlack else bs1108.Font.Color:=clGreen;

  if bs1202.caption>bs1203.Caption then bs1203.Font.Color:=clRed
  else if bs1202.Caption=bs1203.Caption then bs1203.Font.Color:=clBlack else bs1203.Font.Color:=clGreen;
  if bs1203.caption>bs1204.Caption then bs1204.Font.Color:=clRed
  else if bs1203.Caption=bs1204.Caption then bs1204.Font.Color:=clBlack else bs1204.Font.Color:=clGreen;
  if bs1204.caption>bs1206.Caption then bs1206.Font.Color:=clRed
  else if bs1204.Caption=bs1206.Caption then bs1206.Font.Color:=clBlack else bs1206.Font.Color:=clGreen;
  if bs1206.caption>bs1207.Caption then bs1207.Font.Color:=clRed
  else if bs1206.Caption=bs1207.Caption then bs1207.Font.Color:=clBlack else bs1207.Font.Color:=clGreen;
  if bs1207.caption>bs1208.Caption then bs1208.Font.Color:=clRed
  else if bs1207.Caption=bs1208.Caption then bs1208.Font.Color:=clBlack else bs1208.Font.Color:=clGreen;

  if bs1302.caption>bs1303.Caption then bs1303.Font.Color:=clRed
  else if bs1302.Caption=bs1303.Caption then bs1303.Font.Color:=clBlack else bs1303.Font.Color:=clGreen;
  if bs1303.caption>bs1304.Caption then bs1304.Font.Color:=clRed
  else if bs1303.Caption=bs1304.Caption then bs1304.Font.Color:=clBlack else bs1304.Font.Color:=clGreen;
  if bs1304.caption>bs1306.Caption then bs1306.Font.Color:=clRed
  else if bs1304.Caption=bs1306.Caption then bs1306.Font.Color:=clBlack else bs1306.Font.Color:=clGreen;
  if bs1306.caption>bs1307.Caption then bs1307.Font.Color:=clRed
  else if bs1306.Caption=bs1307.Caption then bs1307.Font.Color:=clBlack else bs1307.Font.Color:=clGreen;
  if bs1307.caption>bs1308.Caption then bs1308.Font.Color:=clRed
  else if bs1307.Caption=bs1308.Caption then bs1308.Font.Color:=clBlack else bs1308.Font.Color:=clGreen;

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
  bp002.Caption:='('+formatfloat('0.0%',bd002.Value*100.0/bq002.Value)+')';
end;

procedure Tfrmpdnrpt8.ppGroupFooterBand5BeforePrint(Sender: TObject);
begin
  b1001.Visible:=false;b1002.Visible:=false;b1003.Visible:=false;b1004.Visible:=false;b1006.Visible:=false;b1007.Visible:=false;b1008.Visible:=false;
  b2001.Visible:=false;b2002.Visible:=false;b2003.Visible:=false;b2004.Visible:=false;b2006.Visible:=false;b2007.Visible:=false;b2008.Visible:=false;
  b3001.Visible:=false;b3002.Visible:=false;b3003.Visible:=false;b3004.Visible:=false;b3006.Visible:=false;b3007.Visible:=false;b3008.Visible:=false;

  if rwo001.Caption>'' then begin
    b1001.Visible:=true;b1002.Visible:=true;b1003.Visible:=true;b1004.Visible:=true;b1006.Visible:=true;b1007.Visible:=true;b1008.Visible:=true;
  end;
  if rwo002.Caption>'' then begin
    b2001.Visible:=true;b2002.Visible:=true;b2003.Visible:=true;b2004.Visible:=true;b2006.Visible:=true;b2007.Visible:=true;b2008.Visible:=true;
  end;
  if rwo003.Caption>'' then begin
    b3001.Visible:=true;b3002.Visible:=true;b3003.Visible:=true;b3004.Visible:=true;b3006.Visible:=true;b3007.Visible:=true;b3008.Visible:=true;
  end;

  //QN 1
  if b1002.Value>b1003.Value then b1003.Font.Color:=clRed
  else if b1002.Value=b1003.Value then b1003.Font.Color:=clBlack else b1003.Font.Color:=clGreen;
  if b1003.Value>b1004.Value then b1004.Font.Color:=clRed
  else if b1003.Value=b1004.Value then b1004.Font.Color:=clBlack else b1004.Font.Color:=clGreen;
  if b1004.Value>b1006.Value then b1006.Font.Color:=clRed
  else if b1004.Value=b1006.Value then b1006.Font.Color:=clBlack else b1006.Font.Color:=clGreen;
  if b1006.Value>b1007.Value then b1007.Font.Color:=clRed
  else if b1006.Value=b1007.Value then b1007.Font.Color:=clBlack else b1007.Font.Color:=clGreen;
  if b1007.Value>b1008.Value then b1008.Font.Color:=clRed
  else if b1007.Value=b1008.Value then b1008.Font.Color:=clBlack else b1008.Font.Color:=clGreen;

  //QN 2
  if b2002.Value>b2003.Value then b2003.Font.Color:=clRed
  else if b2002.Value=b2003.Value then b2003.Font.Color:=clBlack else b2003.Font.Color:=clGreen;
  if b2003.Value>b2004.Value then b2004.Font.Color:=clRed
  else if b2003.Value=b2004.Value then b2004.Font.Color:=clBlack else b2004.Font.Color:=clGreen;
  if b2004.Value>b2006.Value then b2006.Font.Color:=clRed
  else if b2004.Value=b2006.Value then b2006.Font.Color:=clBlack else b2006.Font.Color:=clGreen;
  if b2006.Value>b2007.Value then b2007.Font.Color:=clRed
  else if b2006.Value=b2007.Value then b2007.Font.Color:=clBlack else b2007.Font.Color:=clGreen;
  if b2007.Value>b2008.Value then b2008.Font.Color:=clRed
  else if b2007.Value=b2008.Value then b2008.Font.Color:=clBlack else b2008.Font.Color:=clGreen;

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
  bp001.Caption:='('+formatfloat('0.0%',bd001.Value*100.0/bq001.Value)+')';
end;

procedure Tfrmpdnrpt8.ppSummaryBand3BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(q1qty+q4qty+q7qty+q10qty+q13qty+q16qty) as q01,sum(q1t1qty+q4t1qty+q7t1qty+q10t1qty+q13t1qty+q16t1qty) as q03,'
                +'sum(q1t2qty+q4t2qty+q7t2qty+q10t2qty+q13t2qty+q16t2qty) as q04,sum(q1t3qty+q4t3qty+q7t3qty+q10t3qty+q13t3qty+q16t3qty) as q06,'
                +'sum(q1aqqty+q4aqqty+q7aqqty+q10aqqty+q13aqqty+q16aqqty) as q07,sum(q1t4qty+q4t4qty+q7t4qty+q10t4qty+q13t4qty+q16t4qty) as q08,'
                +'sum(q2qty+q5qty+q8qty+q11qty+q14qty+q17qty) as q11,sum(q2t1qty+q5t1qty+q6t1qty+q11t1qty+q14t1qty+q17t1qty) as q13,'
                +'sum(q2t2qty+q5t2qty+q8t2qty+q11t2qty+q14t2qty+q17t2qty) as q14,sum(q2t3qty+q5t3qty+q8t3qty+q11t3qty+q14t3qty+q17t3qty) as q16,'
                +'sum(q2aqqty+q5aqqty+q8aqqty+q11aqqty+q14aqqty+q17aqqty) as q17,sum(q2t4qty+q5t4qty+q8t4qty+q11t4qty+q14t4qty+q17t4qty) as q18,'
                +'sum(q3qty+q6qty+q9qty+q12qty+q15qty+q18qty) as q21,sum(q3t1qty+q6t1qty+q9t1qty+q12t1qty+q15t1qty+q18t1qty) as q23,'
                +'sum(q3t2qty+q6t2qty+q9t2qty+q12t2qty+q15t2qty+q18t2qty) as q24,sum(q3t3qty+q6t3qty+q9t3qty+q12t3qty+q15t3qty+q18t3qty) as q26,'
                +'sum(q3aqqty+q6aqqty+q9aqqty+q12aqqty+q15aqqty+q18aqqty) as q27,sum(q3t4qty+q6t4qty+q9t4qty+q12t4qty+q15t4qty+q18t4qty) as q28,'
                +'sum(q1pqty+q4pqty+q7pqty+q10pqty+q13pqty+q16pqty) as q02,sum(q2pqty+q5pqty+q8pqty+q11pqty+q14pqty+q17pqty) as q12,'
                +'sum(q3pqty+q6pqty+q9pqty+q12pqty+q15pqty+q18pqty) as q22 '
                +'from tbl_pdn_d where seq=:x2';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('q01').isnull then tb1001.Caption:=fieldbyname('q01').asstring else tb1001.Caption:='';
    if not fieldbyname('q02').isnull then tb1002.Caption:=fieldbyname('q02').asstring else tb1002.Caption:='';
    if not fieldbyname('q03').isnull then tb1003.Caption:=fieldbyname('q03').asstring else tb1003.Caption:='';
    if not fieldbyname('q04').isnull then tb1004.Caption:=fieldbyname('q04').asstring else tb1004.Caption:='';
    if not fieldbyname('q06').isnull then tb1006.Caption:=fieldbyname('q06').asstring else tb1006.Caption:='';
    if not fieldbyname('q07').isnull then tb1007.Caption:=fieldbyname('q07').asstring else tb1007.Caption:='';
    if not fieldbyname('q08').isnull then tb1008.Caption:=fieldbyname('q08').asstring else tb1008.Caption:='';

    if not fieldbyname('q11').isnull then tb2001.Caption:=fieldbyname('q11').asstring else tb2001.Caption:='';
    if not fieldbyname('q12').isnull then tb2002.Caption:=fieldbyname('q12').asstring else tb2002.Caption:='';
    if not fieldbyname('q13').isnull then tb2003.Caption:=fieldbyname('q13').asstring else tb2003.Caption:='';
    if not fieldbyname('q14').isnull then tb2004.Caption:=fieldbyname('q14').asstring else tb2004.Caption:='';
    if not fieldbyname('q16').isnull then tb2006.Caption:=fieldbyname('q16').asstring else tb2006.Caption:='';
    if not fieldbyname('q17').isnull then tb2007.Caption:=fieldbyname('q17').asstring else tb2007.Caption:='';
    if not fieldbyname('q18').isnull then tb2008.Caption:=fieldbyname('q18').asstring else tb2008.Caption:='';

    if not fieldbyname('q21').isnull then tb3001.Caption:=fieldbyname('q21').asstring else tb3001.Caption:='';
    if not fieldbyname('q22').isnull then tb3002.Caption:=fieldbyname('q22').asstring else tb3002.Caption:='';
    if not fieldbyname('q23').isnull then tb3003.Caption:=fieldbyname('q23').asstring else tb3003.Caption:='';
    if not fieldbyname('q24').isnull then tb3004.Caption:=fieldbyname('q24').asstring else tb3004.Caption:='';
    if not fieldbyname('q26').isnull then tb3006.Caption:=fieldbyname('q26').asstring else tb3006.Caption:='';
    if not fieldbyname('q27').isnull then tb3007.Caption:=fieldbyname('q27').asstring else tb3007.Caption:='';
    if not fieldbyname('q28').isnull then tb3008.Caption:=fieldbyname('q28').asstring else tb3008.Caption:='';

    if fieldbyname('q02').value>fieldbyname('q03').value then tb1003.Font.color:=clRed
    else if fieldbyname('q02').value=fieldbyname('q03').value then tb1003.Font.color:=clBlack else tb1003.Font.Color:=clGreen;
    if fieldbyname('q03').value>fieldbyname('q04').value then tb1004.Font.color:=clRed
    else if fieldbyname('q03').value=fieldbyname('q04').value then tb1004.Font.Color:=clBlack else tb1004.Font.Color:=clGreen;
    if fieldbyname('q04').value>fieldbyname('q06').value then tb1006.Font.color:=clRed
    else if fieldbyname('q04').value=fieldbyname('q06').value then tb1006.Font.Color:=clBlack else tb1006.Font.Color:=clGreen;
    if fieldbyname('q06').value>fieldbyname('q07').value then tb1007.Font.color:=clRed
    else if fieldbyname('q06').value=fieldbyname('q07').value then tb1007.Font.Color:=clBlack else tb1007.Font.Color:=clGreen;
    if fieldbyname('q07').value>fieldbyname('q08').value then tb1008.Font.color:=clRed
    else if fieldbyname('q07').value=fieldbyname('q08').value then tb1008.Font.Color:=clBlack else tb1008.Font.Color:=clGreen;

    if fieldbyname('q12').value>fieldbyname('q13').value then tb2003.Font.color:=clRed
    else if fieldbyname('q12').value=fieldbyname('q13').value then tb2003.Font.color:=clBlack else tb2003.Font.Color:=clGreen;
    if fieldbyname('q13').value>fieldbyname('q14').value then tb2004.Font.color:=clRed
    else if fieldbyname('q13').value=fieldbyname('q14').value then tb2004.Font.Color:=clBlack else tb2004.Font.Color:=clGreen;
    if fieldbyname('q14').value>fieldbyname('q16').value then tb2006.Font.color:=clRed
    else if fieldbyname('q14').value=fieldbyname('q16').value then tb2006.Font.Color:=clBlack else tb2006.Font.Color:=clGreen;
    if fieldbyname('q16').value>fieldbyname('q17').value then tb2007.Font.color:=clRed
    else if fieldbyname('q16').value=fieldbyname('q17').value then tb2007.Font.Color:=clBlack else tb2007.Font.Color:=clGreen;
    if fieldbyname('q17').value>fieldbyname('q18').value then tb2008.Font.color:=clRed
    else if fieldbyname('q17').value=fieldbyname('q18').value then tb2008.Font.Color:=clBlack else tb2008.Font.Color:=clGreen;

    if fieldbyname('q22').value>fieldbyname('q23').value then tb3003.Font.color:=clRed
    else if fieldbyname('q22').value=fieldbyname('q23').value then tb3003.Font.color:=clBlack else tb3003.Font.Color:=clGreen;
    if fieldbyname('q23').value>fieldbyname('q24').value then tb3004.Font.color:=clRed
    else if fieldbyname('q23').value=fieldbyname('q24').value then tb3004.Font.Color:=clBlack else tb3004.Font.Color:=clGreen;
    if fieldbyname('q24').value>fieldbyname('q26').value then tb3006.Font.color:=clRed
    else if fieldbyname('q24').value=fieldbyname('q26').value then tb3006.Font.Color:=clBlack else tb3006.Font.Color:=clGreen;
    if fieldbyname('q26').value>fieldbyname('q27').value then tb3007.Font.color:=clRed
    else if fieldbyname('q26').value=fieldbyname('q27').value then tb3007.Font.Color:=clBlack else tb3007.Font.Color:=clGreen;
    if fieldbyname('q27').value>fieldbyname('q28').value then tb3008.Font.color:=clRed
    else if fieldbyname('q27').value=fieldbyname('q28').value then tb3008.Font.Color:=clBlack else tb3008.Font.Color:=clGreen;
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
  tbp001.Caption:='('+formatfloat('0.0%',tbd001.Value*100.0/tbq001.Value)+')';
end;

procedure Tfrmpdnrpt8.ppGroupHeaderBand4BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_h where seq=:x1 and j_no='''+query1.fieldbyname('j_no').value+''' and j2_job='''+query1.fieldbyname('j2_job').value+''' and rwo='''+query1.fieldbyname('rwo').value
                +''' and acol='''+query1.fieldbyname('acol').value+'''';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('qn16').isnull then begin
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

      d1011.Visible:=true;d1012.Visible:=true;d1013.Visible:=true;d1014.Visible:=true;d1016.Visible:=true;d1017.Visible:=true;d1018.Visible:=true;
      d1021.Visible:=true;d1022.Visible:=true;d1023.Visible:=true;d1024.Visible:=true;d1026.Visible:=true;d1027.Visible:=true;d1028.Visible:=true;
      d1031.Visible:=true;d1032.Visible:=true;d1033.Visible:=true;d1034.Visible:=true;d1036.Visible:=true;d1037.Visible:=true;d1038.Visible:=true;
      d1041.Visible:=true;d1042.Visible:=true;d1043.Visible:=true;d1044.Visible:=true;d1046.Visible:=true;d1047.Visible:=true;d1048.Visible:=true;
      d1051.Visible:=true;d1052.Visible:=true;d1053.Visible:=true;d1054.Visible:=true;d1056.Visible:=true;d1057.Visible:=true;d1058.Visible:=true;

      d2011.Visible:=true;d2012.Visible:=true;d2013.Visible:=true;d2014.Visible:=true;d2016.Visible:=true;d2017.Visible:=true;d2018.Visible:=true;
      d2021.Visible:=true;d2022.Visible:=true;d2023.Visible:=true;d2024.Visible:=true;d2026.Visible:=true;d2027.Visible:=true;d2028.Visible:=true;
      d2031.Visible:=true;d2032.Visible:=true;d2033.Visible:=true;d2034.Visible:=true;d2036.Visible:=true;d2037.Visible:=true;d2038.Visible:=true;
      d2041.Visible:=true;d2042.Visible:=true;d2043.Visible:=true;d2044.Visible:=true;d2046.Visible:=true;d2047.Visible:=true;d2048.Visible:=true;
      d2051.Visible:=true;d2052.Visible:=true;d2053.Visible:=true;d2054.Visible:=true;d2056.Visible:=true;d2057.Visible:=true;d2058.Visible:=true;

      d3011.Visible:=true;d3012.Visible:=true;d3013.Visible:=true;d3014.Visible:=true;d3016.Visible:=true;d3017.Visible:=true;d3018.Visible:=true;
      d3021.Visible:=true;d3022.Visible:=true;d3023.Visible:=true;d3024.Visible:=true;d3026.Visible:=true;d3027.Visible:=true;d3028.Visible:=true;
      d3031.Visible:=true;d3032.Visible:=true;d3033.Visible:=true;d3034.Visible:=true;d3036.Visible:=true;d3037.Visible:=true;d3038.Visible:=true;
      d3041.Visible:=true;d3042.Visible:=true;d3043.Visible:=true;d3044.Visible:=true;d3046.Visible:=true;d3047.Visible:=true;d3048.Visible:=true;
      d3051.Visible:=true;d3052.Visible:=true;d3053.Visible:=true;d3054.Visible:=true;d3056.Visible:=true;d3057.Visible:=true;d3058.Visible:=true;

    end else if not fieldbyname('qn13').isnull then begin
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

      d1011.Visible:=true;d1012.Visible:=true;d1013.Visible:=true;d1014.Visible:=true;d1016.Visible:=true;d1017.Visible:=true;d1018.Visible:=true;
      d1021.Visible:=true;d1022.Visible:=true;d1023.Visible:=true;d1024.Visible:=true;d1026.Visible:=true;d1027.Visible:=true;d1028.Visible:=true;
      d1031.Visible:=true;d1032.Visible:=true;d1033.Visible:=true;d1034.Visible:=true;d1036.Visible:=true;d1037.Visible:=true;d1038.Visible:=true;
      d1041.Visible:=true;d1042.Visible:=true;d1043.Visible:=true;d1044.Visible:=true;d1046.Visible:=true;d1047.Visible:=true;d1048.Visible:=true;
      d1051.Visible:=false;d1052.Visible:=false;d1053.Visible:=false;d1054.Visible:=false;d1056.Visible:=false;d1057.Visible:=false;d1058.Visible:=false;

      d2011.Visible:=true;d2012.Visible:=true;d2013.Visible:=true;d2014.Visible:=true;d2016.Visible:=true;d2017.Visible:=true;d2018.Visible:=true;
      d2021.Visible:=true;d2022.Visible:=true;d2023.Visible:=true;d2024.Visible:=true;d2026.Visible:=true;d2027.Visible:=true;d2028.Visible:=true;
      d2031.Visible:=true;d2032.Visible:=true;d2033.Visible:=true;d2034.Visible:=true;d2036.Visible:=true;d2037.Visible:=true;d2038.Visible:=true;
      d2041.Visible:=true;d2042.Visible:=true;d2043.Visible:=true;d2044.Visible:=true;d2046.Visible:=true;d2047.Visible:=true;d2048.Visible:=true;
      d2051.Visible:=false;d2052.Visible:=false;d2053.Visible:=false;d2054.Visible:=false;d2056.Visible:=false;d2057.Visible:=false;d2058.Visible:=false;

      d3011.Visible:=true;d3012.Visible:=true;d3013.Visible:=true;d3014.Visible:=true;d3016.Visible:=true;d3017.Visible:=true;d3018.Visible:=true;
      d3021.Visible:=true;d3022.Visible:=true;d3023.Visible:=true;d3024.Visible:=true;d3026.Visible:=true;d3027.Visible:=true;d3028.Visible:=true;
      d3031.Visible:=true;d3032.Visible:=true;d3033.Visible:=true;d3034.Visible:=true;d3036.Visible:=true;d3037.Visible:=true;d3038.Visible:=true;
      d3041.Visible:=true;d3042.Visible:=true;d3043.Visible:=true;d3044.Visible:=true;d3046.Visible:=true;d3047.Visible:=true;d3048.Visible:=true;
      d3051.Visible:=false;d3052.Visible:=false;d3053.Visible:=false;d3054.Visible:=false;d3056.Visible:=false;d3057.Visible:=false;d3058.Visible:=false;
    end else if not fieldbyname('qn10').isnull then begin
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

      d1011.Visible:=true;d1012.Visible:=true;d1013.Visible:=true;d1014.Visible:=true;d1016.Visible:=true;d1017.Visible:=true;d1018.Visible:=true;
      d1021.Visible:=true;d1022.Visible:=true;d1023.Visible:=true;d1024.Visible:=true;d1026.Visible:=true;d1027.Visible:=true;d1028.Visible:=true;
      d1031.Visible:=true;d1032.Visible:=true;d1033.Visible:=true;d1034.Visible:=true;d1036.Visible:=true;d1037.Visible:=true;d1038.Visible:=true;
      d1041.Visible:=false;d1042.Visible:=false;d1043.Visible:=false;d1044.Visible:=false;d1046.Visible:=false;d1047.Visible:=false;d1048.Visible:=false;
      d1051.Visible:=false;d1052.Visible:=false;d1053.Visible:=false;d1054.Visible:=false;d1056.Visible:=false;d1057.Visible:=false;d1058.Visible:=false;

      d2011.Visible:=true;d2012.Visible:=true;d2013.Visible:=true;d2014.Visible:=true;d2016.Visible:=true;d2017.Visible:=true;d2018.Visible:=true;
      d2021.Visible:=true;d2022.Visible:=true;d2023.Visible:=true;d2024.Visible:=true;d2026.Visible:=true;d2027.Visible:=true;d2028.Visible:=true;
      d2031.Visible:=true;d2032.Visible:=true;d2033.Visible:=true;d2034.Visible:=true;d2036.Visible:=true;d2037.Visible:=true;d2038.Visible:=true;
      d2041.Visible:=false;d2042.Visible:=false;d2043.Visible:=false;d2044.Visible:=false;d2046.Visible:=false;d2047.Visible:=false;d2048.Visible:=false;
      d2051.Visible:=false;d2052.Visible:=false;d2053.Visible:=false;d2054.Visible:=false;d2056.Visible:=false;d2057.Visible:=false;d2058.Visible:=false;

      d3011.Visible:=true;d3012.Visible:=true;d3013.Visible:=true;d3014.Visible:=true;d3016.Visible:=true;d3017.Visible:=true;d3018.Visible:=true;
      d3021.Visible:=true;d3022.Visible:=true;d3023.Visible:=true;d3024.Visible:=true;d3026.Visible:=true;d3027.Visible:=true;d3028.Visible:=true;
      d3031.Visible:=true;d3032.Visible:=true;d3033.Visible:=true;d3034.Visible:=true;d3036.Visible:=true;d3037.Visible:=true;d3038.Visible:=true;
      d3041.Visible:=false;d3042.Visible:=false;d3043.Visible:=false;d3044.Visible:=false;d3046.Visible:=false;d3047.Visible:=false;d3048.Visible:=false;
      d3051.Visible:=false;d3052.Visible:=false;d3053.Visible:=false;d3054.Visible:=false;d3056.Visible:=false;d3057.Visible:=false;d3058.Visible:=false;
    end else if not fieldbyname('qn7').isnull then begin
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

      d1011.Visible:=true;d1012.Visible:=true;d1013.Visible:=true;d1014.Visible:=true;d1016.Visible:=true;d1017.Visible:=true;d1018.Visible:=true;
      d1021.Visible:=true;d1022.Visible:=true;d1023.Visible:=true;d1024.Visible:=true;d1026.Visible:=true;d1027.Visible:=true;d1028.Visible:=true;
      d1031.Visible:=false;d1032.Visible:=false;d1033.Visible:=false;d1034.Visible:=false;d1036.Visible:=false;d1037.Visible:=false;d1038.Visible:=false;
      d1041.Visible:=false;d1042.Visible:=false;d1043.Visible:=false;d1044.Visible:=false;d1046.Visible:=false;d1047.Visible:=false;d1048.Visible:=false;
      d1051.Visible:=false;d1052.Visible:=false;d1053.Visible:=false;d1054.Visible:=false;d1056.Visible:=false;d1057.Visible:=false;d1058.Visible:=false;

      d2011.Visible:=true;d2012.Visible:=true;d2013.Visible:=true;d2014.Visible:=true;d2016.Visible:=true;d2017.Visible:=true;d2018.Visible:=true;
      d2021.Visible:=true;d2022.Visible:=true;d2023.Visible:=true;d2024.Visible:=true;d2026.Visible:=true;d2027.Visible:=true;d2028.Visible:=true;
      d2031.Visible:=false;d2032.Visible:=false;d2033.Visible:=false;d2034.Visible:=false;d2036.Visible:=false;d2037.Visible:=false;d2038.Visible:=false;
      d2041.Visible:=false;d2042.Visible:=false;d2043.Visible:=false;d2044.Visible:=false;d2046.Visible:=false;d2047.Visible:=false;d2048.Visible:=false;
      d2051.Visible:=false;d2052.Visible:=false;d2053.Visible:=false;d2054.Visible:=false;d2056.Visible:=false;d2057.Visible:=false;d2058.Visible:=false;

      d3011.Visible:=true;d3012.Visible:=true;d3013.Visible:=true;d3014.Visible:=true;d3016.Visible:=true;d3017.Visible:=true;d3018.Visible:=true;
      d3021.Visible:=true;d3022.Visible:=true;d3023.Visible:=true;d3024.Visible:=true;d3026.Visible:=true;d3027.Visible:=true;d3028.Visible:=true;
      d3031.Visible:=false;d3032.Visible:=false;d3033.Visible:=false;d3034.Visible:=false;d3036.Visible:=false;d3037.Visible:=false;d3038.Visible:=false;
      d3041.Visible:=false;d3042.Visible:=false;d3043.Visible:=false;d3044.Visible:=false;d3046.Visible:=false;d3047.Visible:=false;d3048.Visible:=false;
      d3051.Visible:=false;d3052.Visible:=false;d3053.Visible:=false;d3054.Visible:=false;d3056.Visible:=false;d3057.Visible:=false;d3058.Visible:=false;
    end else if not fieldbyname('qn4').isnull then begin
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

      d1011.Visible:=true;d1012.Visible:=true;d1013.Visible:=true;d1014.Visible:=true;d1016.Visible:=true;d1017.Visible:=true;d1018.Visible:=true;
      d1021.Visible:=false;d1022.Visible:=false;d1023.Visible:=false;d1024.Visible:=false;d1026.Visible:=false;d1027.Visible:=false;d1028.Visible:=false;
      d1031.Visible:=false;d1032.Visible:=false;d1033.Visible:=false;d1034.Visible:=false;d1036.Visible:=false;d1037.Visible:=false;d1038.Visible:=false;
      d1041.Visible:=false;d1042.Visible:=false;d1043.Visible:=false;d1044.Visible:=false;d1046.Visible:=false;d1047.Visible:=false;d1048.Visible:=false;
      d1051.Visible:=false;d1052.Visible:=false;d1053.Visible:=false;d1054.Visible:=false;d1056.Visible:=false;d1057.Visible:=false;d1058.Visible:=false;

      d2011.Visible:=true;d2012.Visible:=true;d2013.Visible:=true;d2014.Visible:=true;d2016.Visible:=true;d2017.Visible:=true;d2018.Visible:=true;
      d2021.Visible:=false;d2022.Visible:=false;d2023.Visible:=false;d2024.Visible:=false;d2026.Visible:=false;d2027.Visible:=false;d2028.Visible:=false;
      d2031.Visible:=false;d2032.Visible:=false;d2033.Visible:=false;d2034.Visible:=false;d2036.Visible:=false;d2037.Visible:=false;d2038.Visible:=false;
      d2041.Visible:=false;d2042.Visible:=false;d2043.Visible:=false;d2044.Visible:=false;d2046.Visible:=false;d2047.Visible:=false;d2048.Visible:=false;
      d2051.Visible:=false;d2052.Visible:=false;d2053.Visible:=false;d2054.Visible:=false;d2056.Visible:=false;d2057.Visible:=false;d2058.Visible:=false;

      d3011.Visible:=true;d3012.Visible:=true;d3013.Visible:=true;d3014.Visible:=true;d3016.Visible:=true;d3017.Visible:=true;d3018.Visible:=true;
      d3021.Visible:=false;d3022.Visible:=false;d3023.Visible:=false;d3024.Visible:=false;d3026.Visible:=false;d3027.Visible:=false;d3028.Visible:=false;
      d3031.Visible:=false;d3032.Visible:=false;d3033.Visible:=false;d3034.Visible:=false;d3036.Visible:=false;d3037.Visible:=false;d3038.Visible:=false;
      d3041.Visible:=false;d3042.Visible:=false;d3043.Visible:=false;d3044.Visible:=false;d3046.Visible:=false;d3047.Visible:=false;d3048.Visible:=false;
      d3051.Visible:=false;d3052.Visible:=false;d3053.Visible:=false;d3054.Visible:=false;d3056.Visible:=false;d3057.Visible:=false;d3058.Visible:=false;
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

      d1011.Visible:=false;d1012.Visible:=false;d1013.Visible:=false;d1014.Visible:=false;d1016.Visible:=false;d1017.Visible:=false;d1018.Visible:=false;
      d1021.Visible:=false;d1022.Visible:=false;d1023.Visible:=false;d1024.Visible:=false;d1026.Visible:=false;d1027.Visible:=false;d1028.Visible:=false;
      d1031.Visible:=false;d1032.Visible:=false;d1033.Visible:=false;d1034.Visible:=false;d1036.Visible:=false;d1037.Visible:=false;d1038.Visible:=false;
      d1041.Visible:=false;d1042.Visible:=false;d1043.Visible:=false;d1044.Visible:=false;d1046.Visible:=false;d1047.Visible:=false;d1048.Visible:=false;
      d1051.Visible:=false;d1052.Visible:=false;d1053.Visible:=false;d1054.Visible:=false;d1056.Visible:=false;d1057.Visible:=false;d1058.Visible:=false;

      d2011.Visible:=false;d2012.Visible:=false;d2013.Visible:=false;d2014.Visible:=false;d2016.Visible:=false;d2017.Visible:=false;d2018.Visible:=false;
      d2021.Visible:=false;d2022.Visible:=false;d2023.Visible:=false;d2024.Visible:=false;d2026.Visible:=false;d2027.Visible:=false;d2028.Visible:=false;
      d2031.Visible:=false;d2032.Visible:=false;d2033.Visible:=false;d2034.Visible:=false;d2036.Visible:=false;d2037.Visible:=false;d2038.Visible:=false;
      d2041.Visible:=false;d2042.Visible:=false;d2043.Visible:=false;d2044.Visible:=false;d2046.Visible:=false;d2047.Visible:=false;d2048.Visible:=false;
      d2051.Visible:=false;d2052.Visible:=false;d2053.Visible:=false;d2054.Visible:=false;d2056.Visible:=false;d2057.Visible:=false;d2058.Visible:=false;

      d3011.Visible:=false;d3012.Visible:=false;d3013.Visible:=false;d3014.Visible:=false;d3016.Visible:=false;d3017.Visible:=false;d3018.Visible:=false;
      d3021.Visible:=false;d3022.Visible:=false;d3023.Visible:=false;d3024.Visible:=false;d3026.Visible:=false;d3027.Visible:=false;d3028.Visible:=false;
      d3031.Visible:=false;d3032.Visible:=false;d3033.Visible:=false;d3034.Visible:=false;d3036.Visible:=false;d3037.Visible:=false;d3038.Visible:=false;
      d3041.Visible:=false;d3042.Visible:=false;d3043.Visible:=false;d3044.Visible:=false;d3046.Visible:=false;d3047.Visible:=false;d3048.Visible:=false;
      d3051.Visible:=false;d3052.Visible:=false;d3053.Visible:=false;d3054.Visible:=false;d3056.Visible:=false;d3057.Visible:=false;d3058.Visible:=false;
    end;
  end;
end;

procedure Tfrmpdnrpt8.ppDetailBand1BeforePrint(Sender: TObject);
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

  sd101.Caption:=inttostr(query4.fieldbyname('q1qty').value+query4.fieldbyname('q4qty').value+query4.fieldbyname('q7qty').value+query4.fieldbyname('q10qty').value+query4.fieldbyname('q13qty').value+query4.fieldbyname('q16qty').value);
  sd102.Caption:=inttostr(p01+p04+p07+p10+p13+p16);
  sd103.Caption:=inttostr(query4.fieldbyname('q1t1qty').value+query4.fieldbyname('q4t1qty').value+query4.fieldbyname('q7t1qty').value+query4.fieldbyname('q10t1qty').value+query4.fieldbyname('q13t1qty').value+query4.fieldbyname('q16t1qty').value);
  sd104.Caption:=inttostr(query4.fieldbyname('q1t2qty').value+query4.fieldbyname('q4t2qty').value+query4.fieldbyname('q7t2qty').value+query4.fieldbyname('q10t2qty').value+query4.fieldbyname('q13t2qty').value+query4.fieldbyname('q16t2qty').value);
  sd106.Caption:=inttostr(query4.fieldbyname('q1t3qty').value+query4.fieldbyname('q4t3qty').value+query4.fieldbyname('q7t3qty').value+query4.fieldbyname('q10t3qty').value+query4.fieldbyname('q13t3qty').value+query4.fieldbyname('q16t3qty').value);
  sd107.Caption:=inttostr(query4.fieldbyname('q1aqqty').value+query4.fieldbyname('q4aqqty').value+query4.fieldbyname('q7aqqty').value+query4.fieldbyname('q10aqqty').value+query4.fieldbyname('q13aqqty').value+query4.fieldbyname('q16aqqty').value);
  sd108.Caption:=inttostr(query4.fieldbyname('q1t4qty').value+query4.fieldbyname('q4t4qty').value+query4.fieldbyname('q7t4qty').value+query4.fieldbyname('q10t4qty').value+query4.fieldbyname('q13t4qty').value+query4.fieldbyname('q16t4qty').value);

  sd201.Caption:=inttostr(query4.fieldbyname('q2qty').value+query4.fieldbyname('q5qty').value+query4.fieldbyname('q8qty').value+query4.fieldbyname('q11qty').value+query4.fieldbyname('q14qty').value+query4.fieldbyname('q17qty').value);
  sd202.Caption:=inttostr(p02+p05+p08+p11+p14+p17);
  sd203.Caption:=inttostr(query4.fieldbyname('q2t1qty').value+query4.fieldbyname('q5t1qty').value+query4.fieldbyname('q8t1qty').value+query4.fieldbyname('q11t1qty').value+query4.fieldbyname('q14t1qty').value+query4.fieldbyname('q17t1qty').value);
  sd204.Caption:=inttostr(query4.fieldbyname('q2t2qty').value+query4.fieldbyname('q5t2qty').value+query4.fieldbyname('q8t2qty').value+query4.fieldbyname('q11t2qty').value+query4.fieldbyname('q14t2qty').value+query4.fieldbyname('q17t2qty').value);
  sd206.Caption:=inttostr(query4.fieldbyname('q2t3qty').value+query4.fieldbyname('q5t3qty').value+query4.fieldbyname('q8t3qty').value+query4.fieldbyname('q11t3qty').value+query4.fieldbyname('q14t3qty').value+query4.fieldbyname('q17t3qty').value);
  sd207.Caption:=inttostr(query4.fieldbyname('q2aqqty').value+query4.fieldbyname('q5aqqty').value+query4.fieldbyname('q8aqqty').value+query4.fieldbyname('q11aqqty').value+query4.fieldbyname('q14aqqty').value+query4.fieldbyname('q17aqqty').value);
  sd208.Caption:=inttostr(query4.fieldbyname('q2t4qty').value+query4.fieldbyname('q5t4qty').value+query4.fieldbyname('q8t4qty').value+query4.fieldbyname('q11t4qty').value+query4.fieldbyname('q14t4qty').value+query4.fieldbyname('q17t4qty').value);

  sd301.Caption:=inttostr(query4.fieldbyname('q3qty').value+query4.fieldbyname('q6qty').value+query4.fieldbyname('q9qty').value+query4.fieldbyname('q12qty').value+query4.fieldbyname('q15qty').value+query4.fieldbyname('q18qty').value);
  sd302.Caption:=inttostr(p03+p06+p09+p12+p15+p18);
  sd303.Caption:=inttostr(query4.fieldbyname('q3t1qty').value+query4.fieldbyname('q6t1qty').value+query4.fieldbyname('q9t1qty').value+query4.fieldbyname('q12t1qty').value+query4.fieldbyname('q15t1qty').value+query4.fieldbyname('q16t1qty').value);
  sd304.Caption:=inttostr(query4.fieldbyname('q3t2qty').value+query4.fieldbyname('q6t2qty').value+query4.fieldbyname('q9t2qty').value+query4.fieldbyname('q12t2qty').value+query4.fieldbyname('q15t2qty').value+query4.fieldbyname('q18t2qty').value);
  sd306.Caption:=inttostr(query4.fieldbyname('q3t3qty').value+query4.fieldbyname('q6t3qty').value+query4.fieldbyname('q9t3qty').value+query4.fieldbyname('q12t3qty').value+query4.fieldbyname('q15t3qty').value+query4.fieldbyname('q18t3qty').value);
  sd307.Caption:=inttostr(query4.fieldbyname('q3aqqty').value+query4.fieldbyname('q6aqqty').value+query4.fieldbyname('q9aqqty').value+query4.fieldbyname('q12aqqty').value+query4.fieldbyname('q15aqqty').value+query4.fieldbyname('q18aqqty').value);
  sd308.Caption:=inttostr(query4.fieldbyname('q3t4qty').value+query4.fieldbyname('q6t4qty').value+query4.fieldbyname('q9t4qty').value+query4.fieldbyname('q12t4qty').value+query4.fieldbyname('q15t4qty').value+query4.fieldbyname('q18t4qty').value);

  if (p01+p04+p07+p10+p13+p16>t101+t104+t107+t110+t113+t116) then sd103.Font.Color:=clRed
  else if (p01+p04+p07+p10+p13+p16=t101+t104+t107+t110+t113+t116) then sd103.Font.Color:=clBlack else sd103.Font.color:=clGreen;
  if (t101+t104+t107+t110+t113+t116>t201+t204+t207+t210+t213+t216) then sd104.Font.Color:=clRed
  else if (t101+t104+t107+t110+t113+t116=t201+t204+t207+t210+t213+t216) then sd104.Font.Color:=clBlack else sd104.Font.color:=clGreen;
  if (t201+t204+t207+t210+t213+t216>t301+t304+t307+t310+t313+t316) then sd106.Font.Color:=clRed
  else if (t201+t204+t207+t210+t213+t216=t301+t304+t307+t310+t313+t316) then sd106.Font.Color:=clBlack else sd106.Font.color:=clGreen;
  if (t301+t304+t307+t310+t313+t316>aq01+aq04+aq07+aq10+aq13+aq16) then sd107.Font.Color:=clRed
  else if (t301+t304+t307+t310+t313+t316=aq01+aq04+aq07+aq10+aq13+aq16) then sd107.Font.Color:=clBlack else sd107.Font.color:=clGreen;
  if (aq01+aq04+aq07+aq10+aq13+aq16>t401+t404+t407+t410+t413+t416) then sd108.Font.Color:=clRed
  else if (aq01+aq04+aq07+aq10+aq13+aq16=t401+t404+t407+t410+t413+t416) then sd108.Font.Color:=clBlack else sd108.Font.color:=clGreen;


  if (p02+p05+p08+p11+p14+p17>t102+t105+t108+t111+t114+t117) then sd203.Font.Color:=clRed
  else if (p02+p05+p08+p11+p14+p17=t102+t105+t108+t111+t114+t117) then sd203.Font.Color:=clBlack else sd203.Font.color:=clGreen;
  if (t102+t105+t108+t111+t114+t117>t202+t205+t208+t211+t214+t217) then sd204.Font.Color:=clRed
  else if (t102+t105+t108+t111+t114+t117=t202+t205+t208+t211+t214+t217) then sd204.Font.Color:=clBlack else sd204.Font.color:=clGreen;
  if (t202+t205+t208+t211+t214+t217>t302+t305+t308+t311+t314+t317) then sd206.Font.Color:=clRed
  else if (t202+t205+t208+t211+t214+t217=t302+t305+t308+t311+t314+t317) then sd206.Font.Color:=clBlack else sd206.Font.color:=clGreen;
  if (t302+t305+t308+t311+t314+t317>aq02+aq05+aq08+aq11+aq14+aq17) then sd207.Font.Color:=clRed
  else if (t302+t305+t308+t311+t314+t317=aq02+aq05+aq08+aq11+aq14+aq17) then sd207.Font.Color:=clBlack else sd207.Font.color:=clGreen;
  if (aq02+aq05+aq08+aq11+aq14+aq17>t402+t405+t408+t411+t414+t417) then sd208.Font.Color:=clRed
  else if (aq02+aq05+aq08+aq11+aq14+aq17=t402+t405+t408+t411+t414+t417) then sd208.Font.Color:=clBlack else sd208.Font.color:=clGreen;

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
    commandtext:='select qn2 from tbl_pdn_h where seq=:x1 and j_no='''+query4.fieldbyname('j_no').value+''' and j2_job='''+query4.fieldbyname('j2_job').value+''' and rwo='''+query4.fieldbyname('rwo').value
                +''' and acol='''+query1.fieldbyname('acol').value+''' and qn2>''''';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    open;
    if not fieldbyname('qn2').isnull then qn2:=fieldbyname('qn2').value else qn2:='';
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select qn3 from tbl_pdn_h where seq=:x1 and j_no='''+query4.fieldbyname('j_no').value+''' and j2_job='''+query4.fieldbyname('j2_job').value+''' and rwo='''+query4.fieldbyname('rwo').value
                +''' and acol='''+query1.fieldbyname('acol').value+''' and qn3>''''';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    open;
    if not fieldbyname('qn3').isnull then qn3:=fieldbyname('qn3').value else qn3:='';
  end;

  if qn2>'' then begin
    sd201.Visible:=true;sd202.visible:=true;sd203.Visible:=true;sd204.Visible:=true;sd206.Visible:=true;sd207.Visible:=true;sd208.Visible:=true;
  end else begin
    sd201.Visible:=false;sd202.visible:=false;sd203.Visible:=false;sd204.Visible:=false;sd206.Visible:=false;sd207.Visible:=false;sd208.Visible:=false;
  end;

  if qn3>'' then begin
    sd301.Visible:=true;sd302.visible:=true;sd303.Visible:=true;sd304.Visible:=true;sd306.Visible:=true;sd307.Visible:=true;sd308.Visible:=true;
  end else begin
    sd301.Visible:=false;sd302.visible:=false;sd303.Visible:=false;sd304.Visible:=false;sd306.Visible:=false;sd307.Visible:=false;sd308.Visible:=false;
  end;

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
end;

procedure Tfrmpdnrpt8.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(q1qty+q4qty+q7qty+q10qty+q13qty+q16qty) as q01,sum(q1t1qty+q4t1qty+q7t1qty+q10t1qty+q13t1qty+q16t1qty) as q03,'
                +'sum(q1t2qty+q4t2qty+q7t2qty+q10t2qty+q13t2qty+q16t2qty) as q04,sum(q1t3qty+q4t3qty+q7t3qty+q10t3qty+q13t3qty+q16t3qty) as q06,'
                +'sum(q1aqqty+q4aqqty+q7aqqty+q10aqqty+q13aqqty+q16aqqty) as q07,sum(q1t4qty+q4t4qty+q7t4qty+q10t4qty+q13t4qty+q16t4qty) as q08,'
                +'sum(q2qty+q5qty+q8qty+q11qty+q14qty+q17qty) as q11,sum(q2t1qty+q5t1qty+q6t1qty+q11t1qty+q14t1qty+q17t1qty) as q13,'
                +'sum(q2t2qty+q5t2qty+q8t2qty+q11t2qty+q14t2qty+q17t2qty) as q14,sum(q2t3qty+q5t3qty+q8t3qty+q11t3qty+q14t3qty+q17t3qty) as q16,'
                +'sum(q2aqqty+q5aqqty+q8aqqty+q11aqqty+q14aqqty+q17aqqty) as q17,sum(q2t4qty+q5t4qty+q8t4qty+q11t4qty+q14t4qty+q17t4qty) as q18,'
                +'sum(q3qty+q6qty+q9qty+q12qty+q15qty+q18qty) as q21,sum(q3t1qty+q6t1qty+q9t1qty+q12t1qty+q15t1qty+q18t1qty) as q23,'
                +'sum(q3t2qty+q6t2qty+q9t2qty+q12t2qty+q15t2qty+q18t2qty) as q24,sum(q3t3qty+q6t3qty+q9t3qty+q12t3qty+q15t3qty+q18t3qty) as q26,'
                +'sum(q3aqqty+q6aqqty+q9aqqty+q12aqqty+q15aqqty+q18aqqty) as q27,sum(q3t4qty+q6t4qty+q9t4qty+q12t4qty+q15t4qty+q18t4qty) as q28,'
                +'sum(q1pqty+q4pqty+q7pqty+q10pqty+q13pqty+q16pqty) as q02,sum(q2pqty+q5pqty+q8pqty+q11pqty+q14pqty+q17pqty) as q12,'
                +'sum(q3pqty+q6pqty+q9pqty+q12pqty+q15pqty+q18pqty) as q22 '
                +'from tbl_pdn_d_tmp where tm=:x1 and seq=:x2';
    params[0].asdatetime:=query4.fieldbyname('tm').value;
    params[1].asinteger:=query4.fieldbyname('seq').value;
    open;
    if not fieldbyname('q01').isnull then sb101.Caption:=fieldbyname('q01').asstring else sb101.Caption:='';
    if not fieldbyname('q02').isnull then sb102.Caption:=fieldbyname('q02').asstring else sb102.Caption:='';
    if not fieldbyname('q03').isnull then sb103.Caption:=fieldbyname('q03').asstring else sb103.Caption:='';
    if not fieldbyname('q04').isnull then sb104.Caption:=fieldbyname('q04').asstring else sb104.Caption:='';
    if not fieldbyname('q06').isnull then sb106.Caption:=fieldbyname('q06').asstring else sb106.Caption:='';
    if not fieldbyname('q07').isnull then sb107.Caption:=fieldbyname('q07').asstring else sb107.Caption:='';
    if not fieldbyname('q08').isnull then sb108.Caption:=fieldbyname('q08').asstring else sb108.Caption:='';

    if not fieldbyname('q11').isnull then sb201.Caption:=fieldbyname('q11').asstring else sb201.Caption:='';
    if not fieldbyname('q12').isnull then sb202.Caption:=fieldbyname('q12').asstring else sb202.Caption:='';
    if not fieldbyname('q13').isnull then sb203.Caption:=fieldbyname('q13').asstring else sb203.Caption:='';
    if not fieldbyname('q14').isnull then sb204.Caption:=fieldbyname('q14').asstring else sb204.Caption:='';
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
  end;

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
  sbp01.Caption:='('+formatfloat('0.0%',sbd01.Value*100.0/sbq01.Value)+')';
  if not frmpdn.query1.fieldbyname('marks').isnull then
  ppmemo1.Text:=frmpdn.query1.fieldbyname('marks').value;
  if not frmpdn.query1.fieldbyname('marks1').isnull then
  ppmemo2.Text:=frmpdn.query1.fieldbyname('marks1').value;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select count(distinct j_no) as s1,count(distinct j2_job) as s2,count(distinct cstyle) as s3,count(distinct acol) as s4,count(distinct custpo) as s5,count(*) as s6 from tbl_pdn_rwo where seq=:x1';
    params[0].asinteger:=query4.fieldbyname('seq').value;
    open;
    if not fieldbyname('s1').isnull then begin
      ttl001.Caption:='Ttl:    Project='+fieldbyname('s1').asstring+'    Cust Style='+fieldbyname('s3').asstring+'    Clr='+fieldbyname('s4').asstring+'    WO='+fieldbyname('s2').asstring+'    Cust PO='+fieldbyname('s5').asstring+'    RWO='+fieldbyname('s6').asstring;
    end else ttl001.Caption:='';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select count(*) as s7 from tblshedule a,tbl_pdn_rwo b where a.j_no=b.j_no and a.j2_job=b.j2_job and a.rwo=b.rwo and a.acol=b.acol and b.seq=:x1';
    params[0].asinteger:=query4.fieldbyname('seq').Value;
    open;
    if not fieldbyname('s7').isnull then begin
      if ttl001.Caption>'' then ttl001.Caption:=ttl001.caption+'    QN='+fieldbyname('s7').asstring else ttl001.Caption:='QN='+fieldbyname('s7').asstring;
    end;
  end;
end;

end.
