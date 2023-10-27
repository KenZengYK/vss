unit newcap_comformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Spin, DateUtils, ppDB, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DB, DBClient, ppViewr, ppStrtch, ppSubRpt,
  ppRichTx, Menus, ComCtrls, ppParameter;

type
  Tfrmnewcap_com = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    xh1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppShape2: TppShape;
    x0002: TppLabel;
    ppLine3: TppLine;
    fty002: TppLabel;
    ppLabel32: TppLabel;
    yr002: TppLabel;
    ppLabel34: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel37: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    x0001: TppLabel;
    wk0001: TppLabel;
    ppLabel40: TppLabel;
    wk0002: TppLabel;
    ppLine5: TppLine;
    c001: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    c002: TppLabel;
    c003: TppLabel;
    c004: TppLabel;
    c005: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine15: TppLine;
    ppLine16: TppLine;
    opt1: TRadioButton;
    Label3: TLabel;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    opt2: TRadioButton;
    c006: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLine17: TppLine;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    c007: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
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
    ppLabel20: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel29: TppLabel;
    c008: TppLabel;
    c009: TppLabel;
    c010: TppLabel;
    c011: TppLabel;
    c012: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLine13: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
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
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    BitBtn3: TBitBtn;
    Label5: TLabel;
    ComboBox2: TComboBox;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel30: TppLabel;
    fty001: TppLabel;
    ppLabel33: TppLabel;
    yr001: TppLabel;
    ppLabel36: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel46: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    x001: TppLabel;
    wk001: TppLabel;
    x002: TppLabel;
    wk002: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText53: TppDBText;
    t001: TppDBText;
    t002: TppDBText;
    t003: TppDBText;
    t004: TppDBText;
    ax001: TppDBText;
    ax002: TppDBText;
    ax003: TppDBText;
    ax004: TppDBText;
    ax006: TppDBText;
    ax007: TppDBText;
    ax008: TppDBText;
    ax009: TppDBText;
    ax011: TppDBText;
    ax012: TppDBText;
    ax013: TppDBText;
    ax014: TppDBText;
    ax016: TppDBText;
    ax017: TppDBText;
    ax018: TppDBText;
    ax019: TppDBText;
    ppDBText74: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppShape4: TppShape;
    w0001: TppLabel;
    ppLine25: TppLine;
    ppLine26: TppLine;
    tc01: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    at001: TppLabel;
    at002: TppLabel;
    at003: TppLabel;
    at004: TppLabel;
    at006: TppLabel;
    at007: TppLabel;
    at008: TppLabel;
    at009: TppLabel;
    at011: TppLabel;
    at012: TppLabel;
    at013: TppLabel;
    at014: TppLabel;
    at016: TppLabel;
    at017: TppLabel;
    at018: TppLabel;
    at019: TppLabel;
    ac01: TppLabel;
    ac02: TppLabel;
    ac03: TppLabel;
    ac04: TppLabel;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppLine33: TppLine;
    ppLine31: TppLine;
    ppLine34: TppLine;
    at005: TppLabel;
    at010: TppLabel;
    at015: TppLabel;
    at020: TppLabel;
    ax005: TppDBText;
    ax010: TppDBText;
    ax015: TppDBText;
    ax020: TppDBText;
    ppLine14: TppLine;
    ppShape3: TppShape;
    w0002: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    tc02: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    bt001: TppLabel;
    bt002: TppLabel;
    bt003: TppLabel;
    bt004: TppLabel;
    bt006: TppLabel;
    bt007: TppLabel;
    bt008: TppLabel;
    bt009: TppLabel;
    bt011: TppLabel;
    bt012: TppLabel;
    bt013: TppLabel;
    bt014: TppLabel;
    bt016: TppLabel;
    bt017: TppLabel;
    bt018: TppLabel;
    bt019: TppLabel;
    bc001: TppLabel;
    bc002: TppLabel;
    bc003: TppLabel;
    bc004: TppLabel;
    bt005: TppLabel;
    bt010: TppLabel;
    bt015: TppLabel;
    bt020: TppLabel;
    t005: TppDBText;
    t006: TppDBText;
    t007: TppDBText;
    t008: TppDBText;
    bx001: TppDBText;
    bx002: TppDBText;
    bx003: TppDBText;
    bx004: TppDBText;
    bx006: TppDBText;
    bx007: TppDBText;
    bx008: TppDBText;
    bx009: TppDBText;
    bx011: TppDBText;
    bx012: TppDBText;
    bx013: TppDBText;
    bx014: TppDBText;
    bx016: TppDBText;
    bx017: TppDBText;
    bx018: TppDBText;
    ppLine24: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    bx005: TppDBText;
    bx010: TppDBText;
    bx015: TppDBText;
    bx019: TppDBText;
    bx020: TppDBText;
    ppLine37: TppLine;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    t009: TppDBText;
    t010: TppDBText;
    t011: TppDBText;
    t012: TppDBText;
    cx001: TppDBText;
    cx002: TppDBText;
    cx003: TppDBText;
    cx004: TppDBText;
    cx006: TppDBText;
    cx007: TppDBText;
    cx008: TppDBText;
    cx009: TppDBText;
    cx011: TppDBText;
    cx012: TppDBText;
    cx013: TppDBText;
    cx014: TppDBText;
    cx016: TppDBText;
    cx017: TppDBText;
    cx018: TppDBText;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    cx005: TppDBText;
    cx010: TppDBText;
    cx015: TppDBText;
    cx019: TppDBText;
    cx020: TppDBText;
    ppLine42: TppLine;
    ppSummaryBand5: TppSummaryBand;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppShape5: TppShape;
    w0003: TppLabel;
    ppLine43: TppLine;
    ppLine44: TppLine;
    tc03: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ct001: TppLabel;
    ct002: TppLabel;
    ct003: TppLabel;
    ct004: TppLabel;
    ct006: TppLabel;
    ct007: TppLabel;
    ct008: TppLabel;
    ct009: TppLabel;
    ct011: TppLabel;
    ct012: TppLabel;
    ct013: TppLabel;
    ct014: TppLabel;
    ct016: TppLabel;
    ct017: TppLabel;
    ct018: TppLabel;
    ct019: TppLabel;
    cc001: TppLabel;
    cc002: TppLabel;
    cc003: TppLabel;
    cc004: TppLabel;
    ct005: TppLabel;
    ct010: TppLabel;
    ct015: TppLabel;
    ct020: TppLabel;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand6: TppDetailBand;
    t013: TppDBText;
    t014: TppDBText;
    t015: TppDBText;
    t016: TppDBText;
    cx021: TppDBText;
    cx022: TppDBText;
    cx023: TppDBText;
    cx024: TppDBText;
    cx026: TppDBText;
    cx027: TppDBText;
    cx028: TppDBText;
    cx029: TppDBText;
    cx031: TppDBText;
    cx032: TppDBText;
    cx033: TppDBText;
    cx034: TppDBText;
    cx036: TppDBText;
    cx037: TppDBText;
    cx038: TppDBText;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    cx025: TppDBText;
    cx030: TppDBText;
    cx035: TppDBText;
    cx039: TppDBText;
    cx040: TppDBText;
    ppLine53: TppLine;
    ppSummaryBand6: TppSummaryBand;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppShape6: TppShape;
    w0004: TppLabel;
    ppLine54: TppLine;
    ppLine55: TppLine;
    tc04: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ct021: TppLabel;
    ct022: TppLabel;
    ct023: TppLabel;
    ct024: TppLabel;
    ct026: TppLabel;
    ct027: TppLabel;
    ct028: TppLabel;
    ct029: TppLabel;
    ct031: TppLabel;
    ct032: TppLabel;
    ct033: TppLabel;
    ct034: TppLabel;
    ct036: TppLabel;
    ct037: TppLabel;
    ct038: TppLabel;
    ct039: TppLabel;
    cc005: TppLabel;
    cc006: TppLabel;
    cc007: TppLabel;
    cc008: TppLabel;
    ct025: TppLabel;
    ct030: TppLabel;
    ct035: TppLabel;
    ct040: TppLabel;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppGroupFooterBand12: TppGroupFooterBand;
    title001: TppLabel;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppGroupFooterBand13: TppGroupFooterBand;
    ppDBText73: TppDBText;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppRichText1: TppRichText;
    sp0001: TppShape;
    ppRichText2: TppRichText;
    ppGroup14: TppGroup;
    ppGroupHeaderBand14: TppGroupHeaderBand;
    ppGroupFooterBand14: TppGroupFooterBand;
    ppLine64: TppLine;
    ppGroup15: TppGroup;
    ppGroupHeaderBand15: TppGroupHeaderBand;
    ppGroupFooterBand15: TppGroupFooterBand;
    ppLine65: TppLine;
    ppGroup16: TppGroup;
    ppGroupHeaderBand16: TppGroupHeaderBand;
    ppGroupFooterBand16: TppGroupFooterBand;
    ppLine66: TppLine;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    tm001: TppLabel;
    sp0002: TppShape;
    ppRichText3: TppRichText;
    ppRichText4: TppRichText;
    ttl001: TppLabel;
    ttl002: TppLabel;
    Query5: TClientDataSet;
    Query6: TClientDataSet;
    ppLine73: TppLine;
    xt001: TppLabel;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppGroup17: TppGroup;
    ppGroupHeaderBand17: TppGroupHeaderBand;
    ppGroupFooterBand17: TppGroupFooterBand;
    ppGroup18: TppGroup;
    ppGroupHeaderBand18: TppGroupHeaderBand;
    ppGroupFooterBand18: TppGroupFooterBand;
    ppLine84: TppLine;
    ppLine88: TppLine;
    ppGroup19: TppGroup;
    ppGroupHeaderBand19: TppGroupHeaderBand;
    ppGroupFooterBand19: TppGroupFooterBand;
    ppLine92: TppLine;
    ppGroup20: TppGroup;
    ppGroupHeaderBand20: TppGroupHeaderBand;
    ppGroupFooterBand20: TppGroupFooterBand;
    ppLine95: TppLine;
    ppLine96: TppLine;
    xt002: TppLabel;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    xt003: TppLabel;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    xt004: TppLabel;
    ppLine107: TppLine;
    ppLine108: TppLine;
    chk1: TCheckBox;
    PopupMenu1: TPopupMenu;
    HideSomeGroup1: TMenuItem;
    ShowGroup1: TMenuItem;
    ppLine32: TppLine;
    pst01: TppShape;
    ppLine38: TppLine;
    ppLine49: TppLine;
    ppLine60: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    pst02: TppShape;
    pst03: TppShape;
    pst04: TppShape;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine99: TppLine;
    ppLine104: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine112: TppLine;
    sp101: TppShape;
    sp201: TppShape;
    sp301: TppShape;
    sp401: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    spa01: TppShape;
    spb01: TppShape;
    spc01: TppShape;
    spd01: TppShape;
    chk2: TCheckBox;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    Label6: TLabel;
    BitBtn6: TBitBtn;
    spt01: TppShape;
    ppLine113: TppLine;
    ppLine114: TppLine;
    spt02: TppShape;
    spt03: TppShape;
    ppLine115: TppLine;
    spt04: TppShape;
    ppLine116: TppLine;
    CheckSOIssueVsWOProcessDifference1: TMenuItem;
    CheckSOIssueVsRWOCfmdProcessPerformanceDifference1: TMenuItem;
    ppSubReport5: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppDetailBand7: TppDetailBand;
    spt05: TppShape;
    spe01: TppShape;
    sp501: TppShape;
    pst05: TppShape;
    t017: TppDBText;
    t018: TppDBText;
    t019: TppDBText;
    t020: TppDBText;
    cx041: TppDBText;
    cx042: TppDBText;
    cx043: TppDBText;
    cx044: TppDBText;
    cx046: TppDBText;
    cx047: TppDBText;
    cx048: TppDBText;
    cx049: TppDBText;
    cx051: TppDBText;
    cx052: TppDBText;
    cx053: TppDBText;
    cx054: TppDBText;
    cx056: TppDBText;
    cx057: TppDBText;
    cx058: TppDBText;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    cx045: TppDBText;
    cx050: TppDBText;
    cx055: TppDBText;
    cx059: TppDBText;
    cx060: TppDBText;
    ppLine120: TppLine;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppLine121: TppLine;
    ppLine122: TppLine;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppSummaryBand7: TppSummaryBand;
    ppGroup21: TppGroup;
    ppGroupHeaderBand21: TppGroupHeaderBand;
    ppShape15: TppShape;
    ppShape16: TppShape;
    w0005: TppLabel;
    ppLine125: TppLine;
    ppLine126: TppLine;
    tc05: TppLabel;
    ppLabel63: TppLabel;
    ppLabel72: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLine127: TppLine;
    ppLine128: TppLine;
    ppLine129: TppLine;
    ppLine130: TppLine;
    ct041: TppLabel;
    ct042: TppLabel;
    ct043: TppLabel;
    ct044: TppLabel;
    ct046: TppLabel;
    ct047: TppLabel;
    ct048: TppLabel;
    ct049: TppLabel;
    ct051: TppLabel;
    ct052: TppLabel;
    ct053: TppLabel;
    ct054: TppLabel;
    ct056: TppLabel;
    ct057: TppLabel;
    ct058: TppLabel;
    ct059: TppLabel;
    cc009: TppLabel;
    cc010: TppLabel;
    cc011: TppLabel;
    cc012: TppLabel;
    ct045: TppLabel;
    ct050: TppLabel;
    ct055: TppLabel;
    ct060: TppLabel;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppGroupFooterBand21: TppGroupFooterBand;
    ppGroup22: TppGroup;
    ppGroupHeaderBand22: TppGroupHeaderBand;
    ppGroupFooterBand22: TppGroupFooterBand;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppGroup23: TppGroup;
    ppGroupHeaderBand23: TppGroupHeaderBand;
    ppGroupFooterBand23: TppGroupFooterBand;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppLine137: TppLine;
    xt005: TppLabel;
    ppLine138: TppLine;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppGroup24: TppGroup;
    ppGroupHeaderBand24: TppGroupHeaderBand;
    ppGroupFooterBand24: TppGroupFooterBand;
    ppLine141: TppLine;
    sp0003: TppShape;
    ppRichText5: TppRichText;
    ppRichText6: TppRichText;
    ttl003: TppLabel;
    CheckaT31: TMenuItem;
    sp0005: TppShape;
    ppRichText8: TppRichText;
    ppRichText7: TppRichText;
    ttl005: TppLabel;
    ppShape7: TppShape;
    ppRichText9: TppRichText;
    ppRichText10: TppRichText;
    ppLabel31: TppLabel;
    ppSubReport6: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppDetailBand8: TppDetailBand;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape14: TppShape;
    ppShape17: TppShape;
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
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppLine142: TppLine;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppLine145: TppLine;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppSummaryBand8: TppSummaryBand;
    ppGroup25: TppGroup;
    ppGroupHeaderBand25: TppGroupHeaderBand;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppLabel35: TppLabel;
    ppLine150: TppLine;
    ppLine151: TppLine;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLine152: TppLine;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLine155: TppLine;
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
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLine156: TppLine;
    ppLine157: TppLine;
    ppGroupFooterBand25: TppGroupFooterBand;
    ppShape20: TppShape;
    ppRichText11: TppRichText;
    ppRichText12: TppRichText;
    ppLabel112: TppLabel;
    ppGroup26: TppGroup;
    ppGroupHeaderBand26: TppGroupHeaderBand;
    ppGroupFooterBand26: TppGroupFooterBand;
    ppLine158: TppLine;
    ppLine159: TppLine;
    ppGroup27: TppGroup;
    ppGroupHeaderBand27: TppGroupHeaderBand;
    ppGroupFooterBand27: TppGroupFooterBand;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLine162: TppLine;
    ppLabel113: TppLabel;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppGroup28: TppGroup;
    ppGroupHeaderBand28: TppGroupHeaderBand;
    ppGroupFooterBand28: TppGroupFooterBand;
    ppLine166: TppLine;
    ROQuery1: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure ppDetailBand5BeforePrint(Sender: TObject);
    procedure ppDetailBand6BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand13BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand14BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand15BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand16BeforePrint(Sender: TObject);
    procedure HideSomeGroup1Click(Sender: TObject);
    procedure ShowGroup1Click(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure ppGroupFooterBand17BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand18BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand19BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand20BeforePrint(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure CheckSOIssueVsWOProcessDifference1Click(Sender: TObject);
    procedure CheckSOIssueVsRWOCfmdProcessPerformanceDifference1Click(
      Sender: TObject);
    procedure ppDetailBand7BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand23BeforePrint(Sender: TObject);
    procedure CheckaT31Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_com: Tfrmnewcap_com;
  ftydt,oadt:tdate;

implementation

uses mainformu, newcapformu, newcap_custformu, newcap_sumformu, newcap_ftyformu,
  chkSOvsWORWOformu;

{$R *.dfm}

procedure Tfrmnewcap_com.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmnewcap_sum<>nil then frmnewcap_sum:=nil;
  action:=cafree;
  frmnewcap_com:=nil;
end;

procedure Tfrmnewcap_com.FormShow(Sender: TObject);
begin
  combobox1.text:='SL';
  spinedit1.Value:=yearof(date);
  datetimepicker1.DateTime:=now-100;
end;

procedure Tfrmnewcap_com.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  if datetimepicker1.DateTime>now-1 then tm:=datetimepicker1.DateTime
  else tm:=now;
  try
  label6.Caption:='A';
  if xh1.ItemIndex<=2 then begin
    with query5 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_loggdt';
      open;
      if not fieldbyname('ftydt').isnull then ftydt:=fieldbyname('ftydt').value else ftydt:=date;
      if not fieldbyname('oadt').isnull then oadt:=fieldbyname('oadt').value else oadt:=date;
    end;
    if datetimepicker1.DateTime<now-1 then begin
      //datetimepicker1.DateTime:=tm;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='insert into tbl_cap_oafty_custseq_tmp(seq,cust,grp,tplant,tm) select seq,cust,grp,tplant,:x1 from tbl_cap_oafty_custseq where 0=0';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
        params[0].asdatetime:=tm;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        if opt1.Checked then begin
          if xh1.ItemIndex=0 then
          commandtext:='execute procedure sp_cap_oaftytmp(:x1,:x2,:x3,:x4,:x5)'
          else if xh1.ItemIndex=1 then
          commandtext:='execute procedure sp_cap_oaftytmp_rwo(:x1,:x2,:x3,:x4,:x5)'
          else if xh1.ItemIndex=2 then
          commandtext:='execute procedure sp_cap_oaftytmp_t3(:x1,:x2,:x3,:x4,:x5)';
          params[0].asdatetime:=tm;
          params[1].asstring:=combobox1.text;
          params[2].asinteger:=spinedit1.Value;
          params[3].asinteger:=spinedit2.Value;
          params[4].asinteger:=spinedit3.Value;
        end else if opt2.Checked then begin
          if xh1.ItemIndex=0 then
          commandtext:='execute procedure sp_cap_oaftytmp_m(:x1,:x2,:x3,:x4,:x5)'
          else if xh1.ItemIndex=1 then
          commandtext:='execute procedure sp_cap_oaftytmp_rwo_m(:x1,:x2,:x3,:x4,:x5)'
          else if xh1.ItemIndex=2 then
          commandtext:='execute procedure sp_cap_oaftytmp_t3_m(:x1,:x2,:x3,:x4,:x5)';
          params[0].asdatetime:=tm;
          params[1].asstring:=combobox1.text;
          params[2].asinteger:=spinedit1.Value;
          params[3].asinteger:=spinedit4.Value;
          params[4].asinteger:=spinedit5.Value;
        end;
        execute;
      end;
    end;

      if xh1.ItemIndex=0 then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          commandtext:='update tbl_cap_oafty_tmp02 set sdsc=''3b) WO Ex-fty'' where tm=:x1 and seq=15';
          params[0].asdatetime:=tm;
          execute;
        end;
      end else if xh1.ItemIndex=1 then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          commandtext:='update tbl_cap_oafty_tmp02 set sdsc=''3b) RWO Ex-fty'' where tm=:x1 and seq=15';
          params[0].asdatetime:=tm;
          execute;
        end;
      end else if xh1.ItemIndex=2 then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          commandtext:='update tbl_cap_oafty_tmp02 set sdsc=''3b) Curr T3'' where tm=:x1 and seq=18';
          params[0].asdatetime:=tm;
          execute;
        end;
      end;

      with query5 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        params.createparam(ftinteger,'x6',ptinput);
        commandtext:='select * from sp_cap_oafty_ttl(:x1,:x2,:x3,:x4,:x5,:x6)';
        params[0].asdatetime:=tm;
        params[1].asstring:=combobox1.text;
        if opt1.Checked then begin
          params[2].asstring:='W';
          params[3].asinteger:=spinedit1.Value;
          params[4].asinteger:=spinedit2.Value;
          params[5].asinteger:=spinedit3.Value;
        end else begin
          params[2].asstring:='M';
          params[3].asinteger:=spinedit1.Value;
          params[4].asinteger:=spinedit4.Value;
          params[5].asinteger:=spinedit5.Value;
        end;
        open;
      end;

      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        if xh1.ItemIndex<2 then
        commandtext:='select * from tbl_cap_oafty_tmp02 where tm=:x1 and seq not in (13,16) order by wk,seq'
        else commandtext:='select * from tbl_cap_oafty_tmp02 where tm=:x1 and seq not in (16,19) order by wk,nseq';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          fty001.Caption:=combobox1.text;
          yr001.Caption:=inttostr(spinedit1.Value);
          if opt1.Checked then begin
            wk001.Caption:=inttostr(spinedit2.Value);
            wk002.Caption:=inttostr(spinedit3.Value);
            x001.Caption:='Week from ';
            x002.Caption:='to ';
            if combobox2.text='' then begin
            tc01.Caption:='All Divisions';
            tc02.Caption:='All Divisions';
            tc03.Caption:='All Divisions';
            tc04.Caption:='All Divisions';
            tc05.Caption:='All Divisions';
            end else begin
            tc01.Caption:='Cust dependent';
            tc02.Caption:='Cust dependent';
            tc03.Caption:='Cust dependent';
            tc04.Caption:='Cust dependent';
            tc05.Caption:='Cust dependent';
            end;
            w0001.Caption:='Week';
            w0002.Caption:='Week';
            w0003.Caption:='Week';
            w0004.Caption:='Week';
            w0005.Caption:='Week';
          end else if opt2.Checked then begin
            wk001.Caption:=inttostr(spinedit4.Value);
            wk002.Caption:=inttostr(spinedit5.Value);
            x001.Caption:='Month from ';
            x002.Caption:='to ';
            if combobox2.text='' then begin
            tc01.Caption:='All Divisions';
            tc02.Caption:='All Divisions';
            tc03.Caption:='All Divisions';
            tc04.Caption:='All Divisions';
            tc05.Caption:='All Divisions';
            end else begin
            tc01.Caption:='Cust dependent';
            tc02.Caption:='Cust dependent';
            tc03.Caption:='Cust dependent';
            tc04.Caption:='Cust dependent';
            tc05.Caption:='Cust dependent';
            end;
            w0001.Caption:='Month';
            w0002.Caption:='Month';
            w0003.Caption:='Month';
            w0004.Caption:='Month';
            w0005.Caption:='Month';
          end;
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select * from tbl_cap_oa_tmp01 where tm=:x1';
            params[0].asdatetime:=tm;
            open;
          end;
          if (combobox2.text='B') or ((combobox1.text='KB') and (combobox2.text='C')) or ((combobox1.text='FJ') and ((combobox2.text='A') or (combobox2.text='C'))) then begin
            tm001.Caption:='Division  '+combobox2.text;
            ac01.Caption:=''; ac02.Caption:=''; ac03.Caption:=''; ac04.Caption:='';
            at006.Visible:=false; at007.Visible:=false; at008.Visible:=false; at009.Visible:=false; at010.Visible:=false;
            at011.Visible:=false; at012.Visible:=false; at013.Visible:=false; at014.Visible:=false; at015.Visible:=false;
            at016.Visible:=false; at017.Visible:=false; at018.Visible:=false; at019.Visible:=false; at020.Visible:=false;
            ax006.Visible:=false; ax007.Visible:=false; ax008.Visible:=false; ax009.Visible:=false; ax010.Visible:=false;
            ax011.Visible:=false; ax012.Visible:=false; ax013.Visible:=false; ax014.Visible:=false; ax015.Visible:=false;
            ax016.Visible:=false; ax017.Visible:=false; ax018.Visible:=false; ax019.Visible:=false; ax020.Visible:=false;
            ppSubReport2.Visible:=false;
            if xh1.ItemIndex<2 then begin
              ppRichText1.Visible:=true;
              ppRichText2.Visible:=false;
            end else if xh1.ItemIndex=2 then begin
              ppRichText2.Visible:=true;
              ppRichText1.Visible:=false;
            end;
            ac01.Caption:=query3.fieldbyname('c1').Value;
            ax001.DataField:='B01'; ax002.DataField:='K01'; ax003.DataField:='U01'; ax004.DataField:='T01'; ax005.DataField:='B17';
            if not query3.fieldbyname('c2').isnull then begin
              ac02.Caption:=query3.fieldbyname('c2').value;
              at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
              ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
              ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
            end else if not query3.fieldbyname('c3').isnull then begin
              ac03.Caption:=query3.fieldbyname('c3').value;
              at011.Visible:=true; at012.Visible:=true; at013.Visible:=true; at014.Visible:=true; at015.Visible:=true;
              ax011.Visible:=true; ax012.Visible:=true; ax013.Visible:=true; ax014.Visible:=true; ax015.Visible:=true;
              ax011.DataField:='B03'; ax012.DataField:='K03'; ax013.DataField:='U03'; ax014.DataField:='T03'; ax010.DataField:='U17';
            end else if not query3.fieldbyname('c4').isnull then begin
              ac04.Caption:=query3.fieldbyname('c4').value;
              at016.Visible:=true; at017.Visible:=true; at018.Visible:=true; at019.Visible:=true; at020.Visible:=true;
              ax016.Visible:=true; ax017.Visible:=true; ax018.Visible:=true; ax019.Visible:=true; ax020.Visible:=true;
              ax016.DataField:='B04'; ax017.DataField:='K04'; ax018.DataField:='U04'; ax019.DataField:='T04'; ax020.DataField:='T17';
            end;
          end else begin
            if combobox1.text='SL' then begin
              if (combobox2.text='A') or (combobox2.text='C') then begin
                    ppSubReport2.Visible:=true;
                    tm001.Caption:='Division  '+combobox2.text;
                    if not query3.fieldbyname('c5').isnull then begin
                      ppGroupFooterBand5.Visible:=true;
                      if xh1.ItemIndex<2 then begin
                        ppGroupFooterBand7.Visible:=false;
                        ppRichText3.Visible:=true;
                        ppRichText4.Visible:=false;
                      end else if xh1.ItemIndex=2 then begin
                        ppGroupFooterBand7.Visible:=true;
                        ppRichText1.Visible:=false;
                        ppRichText2.Visible:=true;
                        ppRichText4.Visible:=true;
                        ppRichText3.Visible:=false;
                      end;
                      ppSummaryBand3.Visible:=true;
                    end;
                    ppSummaryBand4.Visible:=false;
                    ac01.Caption:=''; ac02.Caption:=''; ac03.Caption:=''; ac04.Caption:='';
                    bc001.Caption:=''; bc002.Caption:=''; bc003.Caption:=''; bc004.Caption:='';
                    at006.Visible:=false; at007.Visible:=false; at008.Visible:=false; at009.Visible:=false; at010.Visible:=false;
                    at011.Visible:=false; at012.Visible:=false; at013.Visible:=false; at014.Visible:=false; at015.Visible:=false;
                    at016.Visible:=false; at017.Visible:=false; at018.Visible:=false; at019.Visible:=false; at020.Visible:=false;
                    ax006.Visible:=false; ax007.Visible:=false; ax008.Visible:=false; ax009.Visible:=false; ax010.Visible:=false;
                    ax011.Visible:=false; ax012.Visible:=false; ax013.Visible:=false; ax014.Visible:=false; ax015.Visible:=false;
                    ax016.Visible:=false; ax017.Visible:=false; ax018.Visible:=false; ax019.Visible:=false; ax020.Visible:=false;
                    bt006.Visible:=false; bt007.Visible:=false; bt008.Visible:=false; bt009.Visible:=false; bt010.Visible:=false;
                    bt011.Visible:=false; bt012.Visible:=false; bt013.Visible:=false; bt014.Visible:=false; bt015.Visible:=false;
                    bt016.Visible:=false; bt017.Visible:=false; bt018.Visible:=false; bt019.Visible:=false; bt020.Visible:=false;
                    bx006.Visible:=false; bx007.Visible:=false; bx008.Visible:=false; bx009.Visible:=false; bx010.Visible:=false;
                    bx011.Visible:=false; bx012.Visible:=false; bx013.Visible:=false; bx014.Visible:=false; bx015.Visible:=false;
                    bx016.Visible:=false; bx017.Visible:=false; bx018.Visible:=false; bx019.Visible:=false; bx020.Visible:=false;
                    ac01.Caption:=query3.fieldbyname('c1').Value;
                    ax001.DataField:='B01'; ax002.DataField:='K01'; ax003.DataField:='U01'; ax004.DataField:='T01'; ax005.DataField:='B17';
                    if not query3.fieldbyname('c8').isnull then begin
                      ac02.Caption:=query3.fieldbyname('c2').value; ac03.Caption:=query3.fieldbyname('c3').value; ac04.Caption:=query3.fieldbyname('c4').value;
                      at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
                      ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                      ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
                      at011.Visible:=true; at012.Visible:=true; at013.Visible:=true; at014.Visible:=true; at015.Visible:=true;
                      ax011.Visible:=true; ax012.Visible:=true; ax013.Visible:=true; ax014.Visible:=true; ax015.Visible:=true;
                      ax011.DataField:='B03'; ax012.DataField:='K03'; ax013.DataField:='U03'; ax014.DataField:='T03'; ax015.DataField:='U17';
                      at016.Visible:=true; at017.Visible:=true; at018.Visible:=true; at019.Visible:=true; at020.Visible:=true;
                      ax016.Visible:=true; ax017.Visible:=true; ax018.Visible:=true; ax019.Visible:=true; ax020.Visible:=true;
                      ax016.DataField:='B04'; ax017.DataField:='K04'; ax018.DataField:='U04'; ax019.DataField:='T04'; ax020.DataField:='T17';
                      bc001.Caption:=query3.fieldbyname('c5').value; bc002.Caption:=query3.fieldbyname('c6').value;
                      bc003.Caption:=query3.fieldbyname('c7').value; bc004.Caption:=query3.fieldbyname('c8').value;
                      bt001.Visible:=true; bt002.Visible:=true; bt003.Visible:=true; bt004.Visible:=true; bt005.Visible:=true;
                      bt006.Visible:=true; bt007.Visible:=true; bt008.Visible:=true; bt009.Visible:=true; bt010.Visible:=true;
                      bt011.Visible:=true; bt012.Visible:=true; bt013.Visible:=true; bt014.Visible:=true; bt015.Visible:=true;
                      bt016.Visible:=true; bt017.Visible:=true; bt018.Visible:=true; bt019.Visible:=true; bt020.Visible:=true;
                      bx001.DataField:='B05'; bx002.DataField:='K05'; bx003.DataField:='U05'; bx004.DataField:='T05'; bx005.DataField:='B18';
                      bx006.DataField:='B06'; bx007.DataField:='K06'; bx008.DataField:='U06'; bx009.DataField:='T06'; bx010.DataField:='K18';
                      bx011.DataField:='B07'; bx012.DataField:='K07'; bx013.DataField:='U07'; bx014.DataField:='T07'; bx015.DataField:='U18';
                      bx016.DataField:='B08'; bx017.DataField:='K08'; bx018.DataField:='U08'; bx019.DataField:='T06'; bx020.DataField:='T18';
                      bx001.Visible:=true; bx002.Visible:=true; bx003.Visible:=true; bx004.Visible:=true; bx005.Visible:=true;
                      bx006.Visible:=true; bx007.Visible:=true; bx008.Visible:=true; bx009.Visible:=true; bx010.Visible:=true;
                      bx011.Visible:=true; bx012.Visible:=true; bx013.Visible:=true; bx014.Visible:=true; bx015.Visible:=true;
                      bx016.Visible:=true; bx017.Visible:=true; bx018.Visible:=true; bx019.Visible:=true; bx020.Visible:=true;
                    end else if not query3.fieldbyname('c7').isnull then begin
                      ac02.Caption:=query3.fieldbyname('c2').value; ac03.Caption:=query3.fieldbyname('c3').value; ac04.Caption:=query3.fieldbyname('c4').value;
                      at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
                      ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                      ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
                      at011.Visible:=true; at012.Visible:=true; at013.Visible:=true; at014.Visible:=true; at015.Visible:=true;
                      ax011.Visible:=true; ax012.Visible:=true; ax013.Visible:=true; ax014.Visible:=true; ax015.Visible:=true;
                      ax011.DataField:='B03'; ax012.DataField:='K03'; ax013.DataField:='U03'; ax014.DataField:='T03'; ax015.DataField:='U17';
                      at016.Visible:=true; at017.Visible:=true; at018.Visible:=true; at019.Visible:=true; at020.Visible:=true;
                      ax016.Visible:=true; ax017.Visible:=true; ax018.Visible:=true; ax019.Visible:=true; ax020.Visible:=true;
                      ax016.DataField:='B04'; ax017.DataField:='K04'; ax018.DataField:='U04'; ax019.DataField:='T04'; ax020.DataField:='T17';
                      bc001.Caption:=query3.fieldbyname('c5').value; bc002.Caption:=query3.fieldbyname('c6').value; bc003.Caption:=query3.fieldbyname('c7').value;
                      bt001.Visible:=true; bt002.Visible:=true; bt003.Visible:=true; bt004.Visible:=true; bt005.Visible:=true;
                      bt006.Visible:=true; bt007.Visible:=true; bt008.Visible:=true; bt009.Visible:=true; bt010.Visible:=true;
                      bt011.Visible:=true; bt012.Visible:=true; bt013.Visible:=true; bt014.Visible:=true; bt015.Visible:=true;
                      bx001.DataField:='B05'; bx002.DataField:='K05'; bx003.DataField:='U05'; bx004.DataField:='T05'; bx005.DataField:='B18';
                      bx006.DataField:='B06'; bx007.DataField:='K06'; bx008.DataField:='U06'; bx009.DataField:='T06'; bx010.DataField:='K18';
                      bx011.DataField:='B07'; bx012.DataField:='K07'; bx013.DataField:='U07'; bx014.DataField:='T07'; bx015.DataField:='U18';
                      bx001.Visible:=true; bx002.Visible:=true; bx003.Visible:=true; bx004.Visible:=true; bx005.Visible:=true;
                      bx006.Visible:=true; bx007.Visible:=true; bx008.Visible:=true; bx009.Visible:=true; bx010.Visible:=true;
                      bx011.Visible:=true; bx012.Visible:=true; bx013.Visible:=true; bx014.Visible:=true; bx015.Visible:=true;
                    end else if not query3.fieldbyname('c6').isnull then begin
                      ac02.Caption:=query3.fieldbyname('c2').value; ac03.Caption:=query3.fieldbyname('c3').value; ac04.Caption:=query3.fieldbyname('c4').value;
                      at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
                      ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                      ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
                      at011.Visible:=true; at012.Visible:=true; at013.Visible:=true; at014.Visible:=true; at015.Visible:=true;
                      ax011.Visible:=true; ax012.Visible:=true; ax013.Visible:=true; ax014.Visible:=true; ax015.Visible:=true;
                      ax011.DataField:='B03'; ax012.DataField:='K03'; ax013.DataField:='U03'; ax014.DataField:='T03'; ax015.DataField:='U17';
                      at016.Visible:=true; at017.Visible:=true; at018.Visible:=true; at019.Visible:=true; at020.Visible:=true;
                      ax016.Visible:=true; ax017.Visible:=true; ax018.Visible:=true; ax019.Visible:=true; ax020.Visible:=true;
                      ax016.DataField:='B04'; ax017.DataField:='K04'; ax018.DataField:='U04'; ax019.DataField:='T04'; ax020.DataField:='T17';
                      bc001.Caption:=query3.fieldbyname('c5').value; bc002.Caption:=query3.fieldbyname('c6').value;
                      bt001.Visible:=true; bt002.Visible:=true; bt003.Visible:=true; bt004.Visible:=true; bt005.Visible:=true;
                      bt006.Visible:=true; bt007.Visible:=true; bt008.Visible:=true; bt009.Visible:=true; bt010.Visible:=true;
                      bx001.DataField:='B05'; bx002.DataField:='K05'; bx003.DataField:='U05'; bx004.DataField:='T05'; bx005.DataField:='B18';
                      bx006.DataField:='B06'; bx007.DataField:='K06'; bx008.DataField:='U06'; bx009.DataField:='T06'; bx010.DataField:='K18';
                      bx001.Visible:=true; bx002.Visible:=true; bx003.Visible:=true; bx004.Visible:=true; bx005.Visible:=true;
                      bx006.Visible:=true; bx007.Visible:=true; bx008.Visible:=true; bx009.Visible:=true; bx010.Visible:=true;
                    end else if not query3.fieldbyname('c5').isnull then begin
                      ac02.Caption:=query3.fieldbyname('c2').value; ac03.Caption:=query3.fieldbyname('c3').value; ac04.Caption:=query3.fieldbyname('c4').value;
                      at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
                      ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                      ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
                      at011.Visible:=true; at012.Visible:=true; at013.Visible:=true; at014.Visible:=true; at015.Visible:=true;
                      ax011.Visible:=true; ax012.Visible:=true; ax013.Visible:=true; ax014.Visible:=true; ax015.Visible:=true;
                      ax011.DataField:='B03'; ax012.DataField:='K03'; ax013.DataField:='U03'; ax014.DataField:='T03'; ax015.DataField:='U17';
                      at016.Visible:=true; at017.Visible:=true; at018.Visible:=true; at019.Visible:=true; at020.Visible:=true;
                      ax016.Visible:=true; ax017.Visible:=true; ax018.Visible:=true; ax019.Visible:=true; ax020.Visible:=true;
                      ax016.DataField:='B04'; ax017.DataField:='K04'; ax018.DataField:='U04'; ax019.DataField:='T04'; ax020.DataField:='T17';
                      bc001.Caption:=query3.fieldbyname('c5').value;
                      bx001.DataField:='B05'; bx002.DataField:='K05'; bx003.DataField:='U05'; bx004.DataField:='T05'; bx005.DataField:='B18';
                      bt001.Visible:=true; bt002.Visible:=true; bt003.Visible:=true; bt004.Visible:=true; bt005.Visible:=true;
                      bx001.Visible:=true; bx002.Visible:=true; bx003.Visible:=true; bx004.Visible:=true; bx005.Visible:=true;
                    end;
              end else begin
                      ppsubReport2.Visible:=true;
                      ppGroupFooterBand7.Visible:=false;
                      ppGroupFooterBand5.Visible:=true;
                      ppGroupFooterBand9.Visible:=true;
                      ppGroupFooterBand11.Visible:=false;
                      ppGroupFooterBand21.Visible:=true;
                      if xh1.ItemIndex<2 then begin
                        //ppGroupFooterBand7.Visible:=false;
                        ppRichText3.Visible:=true;
                        ppRichText4.Visible:=false;
                        ppRichText5.Visible:=true;
                        ppRichText6.Visible:=false;
                        ppRichText9.Visible:=true;
                        ppRichText10.Visible:=false;
                      end else if xh1.ItemIndex=2 then begin
                        //ppGroupFooterBand7.Visible:=true;
                        //ppRichText2.Visible:=true;
                        //ppRichText1.Visible:=false;
                        ppRichText3.Visible:=false;
                        ppRichText4.Visible:=true;
                        ppRichText5.Visible:=false;
                        ppRichText6.Visible:=true;
                        ppRichText9.Visible:=false;
                        ppRichText10.Visible:=true;
                      end;
                      ppSummaryBand3.Visible:=true;
                      ppsummaryband4.Visible:=true;
                      ppSummaryBand6.Visible:=true;
                      ppSummaryBand7.Visible:=false;
                    ac01.Caption:=''; ac02.Caption:=''; ac03.Caption:=''; ac04.Caption:='';
                    bc001.Caption:=''; bc002.Caption:=''; bc003.Caption:=''; bc004.Caption:='';
                    cc001.Caption:=''; cc002.Caption:=''; cc003.Caption:=''; cc004.Caption:='';
                    cc005.Caption:=''; cc006.Caption:=''; cc007.Caption:=''; cc008.Caption:='';
                    cc009.Caption:=''; cc010.Caption:=''; cc011.Caption:=''; cc012.Caption:='';
                    at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
                    at011.Visible:=true; at012.Visible:=true; at013.Visible:=true; at014.Visible:=true; at015.Visible:=true;
                    at016.Visible:=true; at017.Visible:=true; at018.Visible:=true; at019.Visible:=true; at020.Visible:=true;
                    ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                    ax011.Visible:=true; ax012.Visible:=true; ax013.Visible:=true; ax014.Visible:=true; ax015.Visible:=true;
                    ax016.Visible:=true; ax017.Visible:=true; ax018.Visible:=true; ax019.Visible:=true; ax020.Visible:=true;
                    bt001.Visible:=true; bt002.Visible:=true; bt003.Visible:=true; bt004.Visible:=true; bt005.Visible:=true;
                    bt006.Visible:=true; bt007.Visible:=true; bt008.Visible:=true; bt009.Visible:=true; bt010.Visible:=true;
                    bt011.Visible:=false; bt012.Visible:=false; bt013.Visible:=false; bt014.Visible:=false; bt015.Visible:=false;
                    bt016.Visible:=false; bt017.Visible:=false; bt018.Visible:=false; bt019.Visible:=false; bt020.Visible:=false;
                    bx001.Visible:=true; bx002.Visible:=true; bx003.Visible:=true; bx004.Visible:=true; bx005.Visible:=true;
                    bx006.Visible:=true; bx007.Visible:=true; bx008.Visible:=true; bx009.Visible:=true; bx010.Visible:=true;
                    bx011.Visible:=false; bx012.Visible:=false; bx013.Visible:=false; bx014.Visible:=false; bx015.Visible:=false;
                    bx016.Visible:=false; bx017.Visible:=false; bx018.Visible:=false; bx019.Visible:=false; bx020.Visible:=false;
                    ct001.visible:=true; ct002.visible:=true; ct003.visible:=true; ct004.visible:=true; ct005.visible:=true;
                    ct006.visible:=true; ct007.visible:=true; ct008.visible:=true; ct009.visible:=true; ct010.visible:=true;
                    ct011.visible:=false; ct012.visible:=false; ct013.visible:=false; ct014.visible:=false; ct015.visible:=false;
                    ct016.visible:=false; ct017.visible:=false; ct018.visible:=false; ct019.visible:=false; ct020.visible:=false;
                    cx001.visible:=true; cx002.visible:=true; cx003.visible:=true; cx004.visible:=true; cx005.visible:=true;
                    cx006.visible:=true; cx007.visible:=true; cx008.visible:=true; cx009.visible:=true; cx010.visible:=true;
                    cx011.visible:=false; cx012.visible:=false; cx013.visible:=false; cx014.visible:=false; cx015.visible:=false;
                    cx016.visible:=false; cx017.visible:=false; cx018.visible:=false; cx019.visible:=false; cx020.visible:=false;
                    ct021.visible:=true; ct022.visible:=true; ct023.visible:=true; ct024.visible:=true; ct025.visible:=true;
                    ct026.visible:=true; ct027.visible:=true; ct028.visible:=true; ct029.visible:=true; ct030.visible:=true;
                    ct031.visible:=true; ct032.visible:=true; ct033.visible:=true; ct034.visible:=true; ct035.visible:=true;
                    ct036.visible:=true; ct037.visible:=true; ct038.visible:=true; ct039.visible:=true; ct040.visible:=true;
                    cx021.visible:=true; cx022.visible:=true; cx023.visible:=true; cx024.visible:=true; cx025.visible:=true;
                    cx026.visible:=true; cx027.visible:=true; cx028.visible:=true; cx029.visible:=true; cx030.visible:=true;
                    cx031.visible:=true; cx032.visible:=true; cx033.visible:=true; cx034.visible:=true; cx035.visible:=true;
                    cx036.visible:=true; cx037.visible:=true; cx038.visible:=true; cx039.visible:=true; cx040.visible:=true;
                    ct041.visible:=true; ct042.visible:=true; ct043.visible:=true; ct044.visible:=true; ct045.visible:=true;
                    ct046.visible:=true; ct047.visible:=true; ct048.visible:=true; ct049.visible:=true; ct050.visible:=true;
                    ct051.visible:=true; ct052.visible:=true; ct053.visible:=true; ct054.visible:=true; ct055.visible:=true;
                    ct056.visible:=true; ct057.visible:=true; ct058.visible:=true; ct059.visible:=true; ct060.visible:=true;
                    cx041.visible:=true; cx042.visible:=true; cx043.visible:=true; cx044.visible:=true; cx045.visible:=true;
                    cx046.visible:=true; cx047.visible:=true; cx048.visible:=true; cx049.visible:=true; cx050.visible:=true;
                    cx051.visible:=true; cx052.visible:=true; cx053.visible:=true; cx054.visible:=true; cx055.visible:=true;
                    cx056.visible:=true; cx057.visible:=true; cx058.visible:=true; cx059.visible:=true; cx060.visible:=true;
                    ac01.Caption:=query3.fieldbyname('c1').Value; ac02.Caption:=query3.fieldbyname('c2').value;
                    ac03.Caption:=query3.fieldbyname('c3').value; ac04.Caption:=query3.fieldbyname('c4').value;
                    bc001.Caption:=query3.fieldbyname('c5').value; bc002.Caption:=query3.fieldbyname('c6').value;
                    //bc003.Caption:=query3.fieldbyname('c7').value;
                    cc001.Caption:=query3.fieldbyname('c7').value; cc002.Caption:=query3.fieldbyname('c8').value;
                    //cc003.Caption:=query3.fieldbyname('c10').value; cc004.Caption:=query3.fieldbyname('c11').value;
                    cc005.Caption:=query3.fieldbyname('c9').value; cc006.Caption:=query3.fieldbyname('c10').value;
                    cc007.Caption:=query3.fieldbyname('c11').value; cc008.Caption:=query3.fieldbyname('c12').value;
                    cc009.Caption:=query3.fieldbyname('c13').value; cc010.Caption:=query3.fieldbyname('c14').value;
                    cc011.Caption:=query3.fieldbyname('c15').value; cc012.Caption:=query3.fieldbyname('c16').value;
                    ax001.DataField:='B01'; ax002.DataField:='K01'; ax003.DataField:='U01'; ax004.DataField:='T01'; ax005.DataField:='B17';
                    ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
                    ax011.DataField:='B03'; ax012.DataField:='K03'; ax013.DataField:='U03'; ax014.DataField:='T03'; ax015.DataField:='U17';
                    ax016.DataField:='B04'; ax017.DataField:='K04'; ax018.DataField:='U04'; ax019.DataField:='T04'; ax020.DataField:='T17';
                    bx001.DataField:='B05'; bx002.DataField:='K05'; bx003.DataField:='U05'; bx004.DataField:='T05'; bx005.DataField:='B18';
                    bx006.DataField:='B06'; bx007.DataField:='K06'; bx008.DataField:='U06'; bx009.DataField:='T06'; bx010.DataField:='K18';

                    //bx011.DataField:='B07'; bx012.DataField:='K07'; bx013.DataField:='U07'; bx014.DataField:='T07'; bx015.DataField:='U18';

                    cx001.DataField:='B07'; cx002.DataField:='K07'; cx003.DataField:='U07'; cx004.DataField:='T07'; cx005.DataField:='U18';
                    cx006.DataField:='B08'; cx007.DataField:='K08'; cx008.DataField:='U08'; cx009.DataField:='T08'; cx010.DataField:='T18';
                    //cx011.DataField:='B10'; cx012.DataField:='K10'; cx013.DataField:='U10'; cx014.DataField:='T10'; cx015.DataField:='K19';
                    //cx016.DataField:='B11'; cx017.DataField:='K11'; cx018.DataField:='U11'; cx019.DataField:='T11'; cx020.DataField:='U19';

                    cx021.DataField:='B09'; cx022.DataField:='K09'; cx023.DataField:='U09'; cx024.DataField:='T09'; cx025.DataField:='B19';
                    cx026.DataField:='B10'; cx027.DataField:='K10'; cx028.DataField:='U10'; cx029.DataField:='T10'; cx030.DataField:='K19';
                    cx031.DataField:='B11'; cx032.DataField:='K11'; cx033.DataField:='U11'; cx034.DataField:='T11'; cx035.DataField:='U19';
                    cx036.DataField:='B12'; cx037.DataField:='K12'; cx038.DataField:='U12'; cx039.DataField:='T12'; cx040.DataField:='T19';
                    cx041.DataField:='B13'; cx042.DataField:='K13'; cx043.DataField:='U13'; cx044.DataField:='T13'; cx045.DataField:='B20';
                    cx046.DataField:='B14'; cx047.DataField:='K14'; cx048.DataField:='U14'; cx049.DataField:='T14'; cx050.DataField:='K20';
                    cx051.DataField:='B15'; cx052.DataField:='K15'; cx053.DataField:='U15'; cx054.DataField:='T15'; cx055.DataField:='U20';
                    cx056.DataField:='B16'; cx057.DataField:='K16'; cx058.DataField:='U16'; cx059.DataField:='T16'; cx060.DataField:='T20';
              end;
            end else if combobox1.text='KB' then begin
                    ppSubReport2.Visible:=true;
                    tm001.Caption:='';
                    ppGroupFooterBand7.Visible:=true;
                    ppGroupFooterBand5.Visible:=true;
                    if xh1.ItemIndex<2 then begin
                      ppRichText1.Visible:=true;
                      ppRichText2.Visible:=false;
                    end else if xh1.ItemIndex=2 then begin
                      ppRichText2.Visible:=true;
                      ppRichText1.Visible:=false;
                    end;
                      if xh1.ItemIndex<2 then begin
                        ppRichText3.Visible:=true;
                        ppRichText4.Visible:=false;
                      end else if xh1.ItemIndex=2 then begin
                        ppRichText4.Visible:=true;
                        ppRichText3.Visible:=false;
                      end;
                      ppSummaryBand3.Visible:=true;
                    ppSummaryBand4.Visible:=false;
                    ac01.Caption:=''; ac02.Caption:=''; ac03.Caption:=''; ac04.Caption:='';
                    bc001.Caption:=''; bc002.Caption:=''; bc003.Caption:=''; bc004.Caption:='';
                    at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
                    at011.Visible:=false; at012.Visible:=false; at013.Visible:=false; at014.Visible:=false; at015.Visible:=false;
                    at016.Visible:=false; at017.Visible:=false; at018.Visible:=false; at019.Visible:=false; at020.Visible:=false;
                    ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                    ax011.Visible:=false; ax012.Visible:=false; ax013.Visible:=false; ax014.Visible:=false; ax015.Visible:=false;
                    ax016.Visible:=false; ax017.Visible:=false; ax018.Visible:=false; ax019.Visible:=false; ax020.Visible:=false;
                    bt006.Visible:=false; bt007.Visible:=false; bt008.Visible:=false; bt009.Visible:=false; bt010.Visible:=false;
                    bt011.Visible:=false; bt012.Visible:=false; bt013.Visible:=false; bt014.Visible:=false; bt015.Visible:=false;
                    bt016.Visible:=false; bt017.Visible:=false; bt018.Visible:=false; bt019.Visible:=false; bt020.Visible:=false;
                    bx006.Visible:=false; bx007.Visible:=false; bx008.Visible:=false; bx009.Visible:=false; bx010.Visible:=false;
                    bx011.Visible:=false; bx012.Visible:=false; bx013.Visible:=false; bx014.Visible:=false; bx015.Visible:=false;
                    bx016.Visible:=false; bx017.Visible:=false; bx018.Visible:=false; bx019.Visible:=false; bx020.Visible:=false;
                    ac01.Caption:=query3.fieldbyname('c1').Value; ac02.Caption:=query3.fieldbyname('c2').value;
                    ax001.DataField:='B01'; ax002.DataField:='K01'; ax003.DataField:='U01'; ax004.DataField:='T01'; ax005.DataField:='B17';
                    ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
                    bc001.Caption:=query3.fieldbyname('c3').value;
                    bx001.DataField:='B03'; bx002.DataField:='K03'; bx003.DataField:='U03'; bx004.DataField:='T03'; bx005.DataField:='U17';
            end else if combobox1.text='FJ' then begin
                    ppSubReport2.Visible:=true;
                    tm001.Caption:='';
                    ppGroupFooterBand7.Visible:=true;
                    ppGroupFooterBand5.Visible:=true;
                    if xh1.ItemIndex<2 then begin
                      ppRichText1.Visible:=true;
                      ppRichText2.Visible:=false;
                    end else if xh1.ItemIndex=2 then begin
                      ppRichText2.Visible:=true;
                      ppRichText1.Visible:=false;
                    end;
                    if xh1.ItemIndex<2 then begin
                      ppRichText3.Visible:=true;
                      ppRichText4.Visible:=false;
                    end else if xh1.ItemIndex=2 then begin
                      ppRichText4.Visible:=true;
                      ppRichText3.Visible:=false;
                    end;
                    if xh1.ItemIndex<2 then begin
                      ppRichText5.Visible:=true;
                      ppRichText6.Visible:=false;
                    end else if xh1.ItemIndex=2 then begin
                      ppRichText6.Visible:=true;
                      ppRichText5.Visible:=false;
                    end;
                    ppSummaryBand3.Visible:=true;
                    ppSummaryBand4.Visible:=true;
                    ppsummaryband5.Visible:=false;
                    ac01.Caption:=''; ac02.Caption:=''; ac03.Caption:=''; ac04.Caption:='';
                    bc001.Caption:=''; bc002.Caption:=''; bc003.Caption:=''; bc004.Caption:='';
                    at006.Visible:=false; at007.Visible:=false; at008.Visible:=false; at009.Visible:=false; at010.Visible:=false;
                    at011.Visible:=false; at012.Visible:=false; at013.Visible:=false; at014.Visible:=false; at015.Visible:=false;
                    at016.Visible:=false; at017.Visible:=false; at018.Visible:=false; at019.Visible:=false; at020.Visible:=false;
                    ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                    ax011.Visible:=false; ax012.Visible:=false; ax013.Visible:=false; ax014.Visible:=false; ax015.Visible:=false;
                    ax016.Visible:=false; ax017.Visible:=false; ax018.Visible:=false; ax019.Visible:=false; ax020.Visible:=false;
                    bt001.Visible:=true; bt002.Visible:=true; bt003.Visible:=true; bt004.Visible:=true; bt005.Visible:=true;
                    bt006.Visible:=true; bt007.Visible:=true; bt008.Visible:=true; bt009.Visible:=true; bt010.Visible:=true;
                    bt011.Visible:=false; bt012.Visible:=false; bt013.Visible:=false; bt014.Visible:=false; bt015.Visible:=false;
                    bt016.Visible:=false; bt017.Visible:=false; bt018.Visible:=false; bt019.Visible:=false; bt020.Visible:=false;
                    bx001.Visible:=true; bx002.Visible:=true; bx003.Visible:=true; bx004.Visible:=true; bx005.Visible:=true;
                    bx006.Visible:=true; bx007.Visible:=true; bx008.Visible:=true; bx009.Visible:=true; bx010.Visible:=true;
                    bx011.Visible:=false; bx012.Visible:=false; bx013.Visible:=false; bx014.Visible:=false; bx015.Visible:=false;
                    bx016.Visible:=false; bx017.Visible:=false; bx018.Visible:=false; bx019.Visible:=false; bx020.Visible:=false;
                    ct001.visible:=true; ct002.visible:=true; ct003.visible:=true; ct004.visible:=true; ct005.visible:=true;
                    ct006.visible:=true; ct007.visible:=true; ct008.visible:=true; ct009.visible:=true; ct010.visible:=true;
                    ct011.visible:=true; ct012.visible:=true; ct013.visible:=true; ct014.visible:=true; ct015.visible:=true;
                    ct016.visible:=true; ct017.visible:=true; ct018.visible:=true; ct019.visible:=true; ct020.visible:=true;
                    cx001.visible:=true; cx002.visible:=true; cx003.visible:=true; cx004.visible:=true; cx005.visible:=true;
                    cx006.visible:=true; cx007.visible:=true; cx008.visible:=true; cx009.visible:=true; cx010.visible:=true;
                    cx011.visible:=true; cx012.visible:=true; cx013.visible:=true; cx014.visible:=true; cx015.visible:=true;
                    cx016.visible:=true; cx017.visible:=true; cx018.visible:=true; cx019.visible:=true; cx020.visible:=true;
                    ac01.Caption:=query3.fieldbyname('c1').Value;
                    ax001.DataField:='B01'; ax002.DataField:='K01'; ax003.DataField:='U01'; ax004.DataField:='T01'; ax005.DataField:='B17';
                    bc001.Caption:=query3.fieldbyname('c2').value; bc002.Caption:=query3.fieldbyname('c3').value;
                    bx001.DataField:='B02'; bx002.DataField:='K02'; bx003.DataField:='U02'; bx004.DataField:='T02'; bx005.DataField:='K17';
                    bx006.DataField:='B03'; bx007.DataField:='K03'; bx008.DataField:='U03'; bx009.DataField:='T03'; bx010.DataField:='U17';
                    bt006.Visible:=true; bt007.Visible:=true; bt008.Visible:=true; bt009.Visible:=true; bt010.Visible:=true;
                    cc001.Caption:=query3.fieldbyname('c4').value; cc002.Caption:=query3.fieldbyname('c5').value;
                    cc003.Caption:=query3.fieldbyname('c6').value; cc004.Caption:=query3.fieldbyname('c7').value;
                    cx001.DataField:='B04'; cx002.DataField:='K04'; cx003.DataField:='U04'; cx004.DataField:='T04'; cx005.DataField:='T17';
                    cx006.DataField:='B05'; cx007.DataField:='K05'; cx008.DataField:='U05'; cx009.DataField:='T05'; cx010.DataField:='B18';
                    cx011.DataField:='B06'; cx012.DataField:='K06'; cx013.DataField:='U06'; cx014.DataField:='T06'; cx015.DataField:='K18';
                    cx016.DataField:='B07'; cx017.DataField:='K07'; cx018.DataField:='U07'; cx019.DataField:='T07'; cx020.DataField:='U18';
            end;
          end;

          if xh1.ItemIndex=0 then begin
            title001.Caption:=' -  Comparison 1  (WO Ex-fty)      [Customer dependent] ';
          end else if xh1.ItemIndex=1 then begin
            title001.Caption:=' -  Comparison 2  (RWO Ex-fty)      [Customer dependent] ';
          end else if xh1.ItemIndex=2 then begin
            title001.Caption:=' -  Comparison 3  (T3 Date)      [Customer dependent] ';
          end;
          if ppSummaryBand4.Visible=true then begin
              if xh1.ItemIndex<2 then begin
                ppRichText5.Visible:=true;
                ppRichText6.Visible:=false;
              end else if xh1.ItemIndex=2 then begin
                ppRichText6.Visible:=true;
                ppRichText5.Visible:=false;
              end;
              if xh1.ItemIndex<2 then begin
                ppRichText7.Visible:=true;
                ppRichText8.Visible:=false;
              end else if xh1.ItemIndex=2 then begin
                ppRichText8.Visible:=true;
                ppRichText7.Visible:=false;
              end;
          end;
          //ttl001, ttl002, ttl003
          if not query5.fieldbyname('custs').isnull then begin
            ttl001.Caption:='# of cust: '+query5.fieldbyname('custs').asstring;
            ttl002.Caption:='# of cust: '+query5.fieldbyname('custs').asstring;
            ttl003.Caption:='# of cust: '+query5.fieldbyname('custs').asstring;
            ttl005.Caption:='# of cust: '+query5.fieldbyname('custs').asstring;
            if not query5.fieldbyname('lines').isnull then begin
              ttl001.Caption:=ttl001.Caption+'    # of line: '+query5.fieldbyname('lines').asstring;
              ttl002.Caption:=ttl002.Caption+'    # of line: '+query5.fieldbyname('lines').asstring;
              ttl003.Caption:=ttl003.Caption+'    # of line: '+query5.fieldbyname('lines').asstring;
              ttl005.Caption:=ttl005.Caption+'    # of line: '+query5.fieldbyname('lines').asstring;
            end;
            if not query5.fieldbyname('days').isnull then begin
              ttl001.Caption:=ttl001.Caption+'    # of work days: '+query5.fieldbyname('days').asstring;
              ttl002.Caption:=ttl002.Caption+'    # of work days: '+query5.fieldbyname('days').asstring;
              ttl003.Caption:=ttl003.Caption+'    # of work days: '+query5.fieldbyname('days').asstring;
              ttl005.Caption:=ttl005.Caption+'    # of work days: '+query5.fieldbyname('days').asstring;
            end;
            if not query5.fieldbyname('sects').isnull then begin
              ttl001.Caption:=ttl001.Caption+'    # of sect hr/line/work day: '+formatfloat('0.00',query5.fieldbyname('sects').value);
              ttl002.Caption:=ttl002.Caption+'    # of sect hr/line/work day: '+formatfloat('0.00',query5.fieldbyname('sects').value);
              ttl003.Caption:=ttl003.Caption+'    # of sect hr/line/work day: '+formatfloat('0.00',query5.fieldbyname('sects').value);
              ttl005.Caption:=ttl005.Caption+'    # of sect hr/line/work day: '+formatfloat('0.00',query5.fieldbyname('sects').value);
            end;
          end;
          if chk1.Checked then begin
            ppgroupfooterband13.Visible:=false;
            ppgroupfooterband14.Visible:=false;
            ppgroupfooterband15.Visible:=false;
            ppgroupfooterband16.Visible:=false;
            ppgroupfooterband23.visible:=false;
          end else begin
            ppgroupfooterband13.Visible:=true;
            ppgroupfooterband14.Visible:=true;
            ppgroupfooterband15.Visible:=true;
            ppgroupfooterband16.Visible:=true;
            ppgroupfooterband23.Visible:=true;
          end;
          ppReport1.Print;
        end;
      end;
  //end else if xh1.ItemIndex=2 then begin
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_com.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmnewcap_com.BitBtn2Click(Sender: TObject);
begin
  if frmnewcap_cust=nil then frmnewcap_cust:=tfrmnewcap_cust.Create(nil);
  with frmnewcap_cust.Query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_cap_oafty_custseq';
    open;
  end;
  frmnewcap_cust.Show;
end;

procedure Tfrmnewcap_com.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if c012.Caption>'' then begin
    ppdbtext49.BlankWhenZero:=false;
    ppdbtext50.BlankWhenZero:=false;
    ppdbtext51.BlankWhenZero:=false;
    ppdbtext52.BlankWhenZero:=false;
  end else begin
    ppdbtext49.BlankWhenZero:=true;
    ppdbtext50.BlankWhenZero:=true;
    ppdbtext51.BlankWhenZero:=true;
    ppdbtext52.BlankWhenZero:=true;
  end;
end;

procedure Tfrmnewcap_com.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmnewcap_com.ppDetailBand3BeforePrint(Sender: TObject);
var
  i1,i2,i3:integer;
begin
  if xh1.ItemIndex<2 then begin
    i1:=17; i2:=13; i3:=16;
  end else begin
    i1:=21; i2:=16; i3:=19;
  end;
  if xh1.ItemIndex<2 then begin
    if (query4.fieldbyname('seq').value=2) or (query4.fieldbyname('seq').value=6) or (query4.fieldbyname('seq').value=10)
    or (query4.fieldbyname('seq').value>=i1) then begin
      spt01.Visible:=true;
      pst01.Visible:=true;
      pst01.Brush.Color:=$00C7C6FB;
    end else begin
      spt01.Visible:=false;
      pst01.Visible:=false;
    end;
  end else begin
    if (query4.fieldbyname('seq').value=2) or (query4.fieldbyname('seq').value=6) or (query4.fieldbyname('seq').value=10)
    or (query4.fieldbyname('seq').value=13) or (query4.fieldbyname('seq').value>=i1) then begin
      spt01.Visible:=true;
      pst01.Visible:=true;
      pst01.Brush.Color:=$00C7C6FB;
    end else begin
      spt01.Visible:=false;
      pst01.Visible:=false;
    end;
  end;
  if (query4.fieldbyname('seq').value>=i1) then begin
    spt01.Visible:=false;
    pst01.Brush.Color:=$00FEFFE6;
  end;

  sp101.Visible:=false;

  if query4.fieldbyname('wk').value>=98 then begin
    if label6.Caption='A' then begin
    if query4.fieldbyname('seq').value=1 then spa01.Visible:=true
    else spa01.Visible:=false;
    end else begin
    if query4.fieldbyname('seq').value=9 then spa01.Visible:=true
    else spa01.Visible:=false;
    end;
  end else spa01.Visible:=false;
          if query4.fieldbyname('seq').value>=i1 then begin
            t001.DisplayFormat:='0.00'; t002.DisplayFormat:='0.00'; t003.DisplayFormat:='0.00'; t004.DisplayFormat:='0.00';
            ax001.DisplayFormat:='0.00'; ax002.DisplayFormat:='0.00'; ax003.DisplayFormat:='0.00'; ax004.DisplayFormat:='0.00';
            ax006.DisplayFormat:='0.00'; ax007.DisplayFormat:='0.00'; ax008.DisplayFormat:='0.00'; ax009.DisplayFormat:='0.00';
            ax011.DisplayFormat:='0.00'; ax012.DisplayFormat:='0.00'; ax013.DisplayFormat:='0.00'; ax014.DisplayFormat:='0.00';
            ax016.DisplayFormat:='0.00'; ax017.DisplayFormat:='0.00'; ax018.DisplayFormat:='0.00'; ax019.DisplayFormat:='0.00';
            ax005.DisplayFormat:='n.a.'; ax010.DisplayFormat:='n.a.'; ax015.DisplayFormat:='n.a.'; ax020.DisplayFormat:='n.a.';
            if query4.fieldbyname('tb').value=100 then t001.Font.Color:=clBlue
            else if (query4.fieldbyname('tb').value>90) and (query4.fieldbyname('tb').value<=110) then t001.Font.color:=clGreen
            else t001.Font.Color:=clRed;
            if query4.fieldbyname('tk').value=100 then t002.Font.Color:=clBlue
            else if (query4.fieldbyname('tk').value>90) and (query4.fieldbyname('tk').value<=110) then t002.Font.color:=clGreen
            else t002.Font.Color:=clRed;
            if query4.fieldbyname('tu').value=100 then t003.Font.Color:=clBlue
            else if (query4.fieldbyname('tu').value>90) and (query4.fieldbyname('tu').value<=110) then t003.Font.color:=clGreen
            else t003.Font.Color:=clRed;
            if query4.fieldbyname('ttl').value=100 then t004.Font.Color:=clBlue
            else if (query4.fieldbyname('ttl').value>90) and (query4.fieldbyname('ttl').value<=110) then t004.Font.color:=clGreen
            else t004.Font.Color:=clRed;
            if ax001.FieldValue=100 then ax001.Font.Color:=clBlue
            else if (ax001.FieldValue>90) and (ax001.FieldValue<=110) then ax001.Font.Color:=clGreen
            else ax001.Font.Color:=clRed;
            if ax002.FieldValue=100 then ax002.Font.Color:=clBlue
            else if (ax002.FieldValue>90) and (ax002.FieldValue<=110) then ax002.Font.Color:=clGreen
            else ax002.Font.Color:=clRed;
            if ax003.FieldValue=100 then ax003.Font.Color:=clBlue
            else if (ax003.FieldValue>90) and (ax003.FieldValue<=110) then ax003.Font.Color:=clGreen
            else ax003.Font.Color:=clRed;
            if ax004.FieldValue=100 then ax004.Font.Color:=clBlue
            else if (ax004.FieldValue>90) and (ax004.FieldValue<=110) then ax004.Font.Color:=clGreen
            else ax004.Font.Color:=clRed;
            if ax006.FieldValue=100 then ax006.Font.Color:=clBlue
            else if (ax006.FieldValue>90) and (ax006.FieldValue<=110) then ax006.Font.Color:=clGreen
            else ax006.Font.Color:=clRed;
            if ax007.FieldValue=100 then ax007.Font.Color:=clBlue
            else if (ax007.FieldValue>90) and (ax007.FieldValue<=110) then ax007.Font.Color:=clGreen
            else ax007.Font.Color:=clRed;
            if ax008.FieldValue=100 then ax008.Font.Color:=clBlue
            else if (ax008.FieldValue>90) and (ax008.FieldValue<=110) then ax008.Font.Color:=clGreen
            else ax008.Font.Color:=clRed;
            if ax009.FieldValue=100 then ax009.Font.Color:=clBlue
            else if (ax009.FieldValue>90) and (ax009.FieldValue<=110) then ax009.Font.Color:=clGreen
            else ax009.Font.Color:=clRed;
            if ax011.FieldValue=100 then ax011.Font.Color:=clBlue
            else if (ax011.FieldValue>90) and (ax011.FieldValue<=110) then ax011.Font.Color:=clGreen
            else ax011.Font.Color:=clRed;
            if ax012.FieldValue=100 then ax012.Font.Color:=clBlue
            else if (ax012.FieldValue>90) and (ax012.FieldValue<=110) then ax012.Font.Color:=clGreen
            else ax012.Font.Color:=clRed;
            if ax013.FieldValue=100 then ax013.Font.Color:=clBlue
            else if (ax013.FieldValue>90) and (ax013.FieldValue<=110) then ax013.Font.Color:=clGreen
            else ax013.Font.Color:=clRed;
            if ax014.FieldValue=100 then ax014.Font.Color:=clBlue
            else if (ax014.FieldValue>90) and (ax014.FieldValue<=110) then ax014.Font.Color:=clGreen
            else ax014.Font.Color:=clRed;
            if ax016.FieldValue=100 then ax016.Font.Color:=clBlue
            else if (ax016.FieldValue>90) and (ax016.FieldValue<=110) then ax016.Font.Color:=clGreen
            else ax016.Font.Color:=clRed;
            if ax017.FieldValue=100 then ax017.Font.Color:=clBlue
            else if (ax017.FieldValue>90) and (ax017.FieldValue<=110) then ax017.Font.Color:=clGreen
            else ax017.Font.Color:=clRed;
            if ax018.FieldValue=100 then ax018.Font.Color:=clBlue
            else if (ax018.FieldValue>90) and (ax018.FieldValue<=110) then ax018.Font.Color:=clGreen
            else ax018.Font.Color:=clRed;
            if ax019.FieldValue=100 then ax019.Font.Color:=clBlue
            else if (ax019.FieldValue>90) and (ax019.FieldValue<=110) then ax019.Font.Color:=clGreen
            else ax019.Font.Color:=clRed;
          end else if (query4.fieldbyname('seq').value=i2) or (query4.fieldbyname('seq').value=i3) then begin
            t001.DisplayFormat:='#0'; t002.DisplayFormat:='#0'; t003.DisplayFormat:='#0'; t004.DisplayFormat:='#0';
            ax001.DisplayFormat:='#0'; ax002.DisplayFormat:='#0'; ax003.DisplayFormat:='#0'; ax004.DisplayFormat:='#0';
            ax006.DisplayFormat:='#0'; ax007.DisplayFormat:='#0'; ax008.DisplayFormat:='#0'; ax009.DisplayFormat:='#0';
            ax011.DisplayFormat:='#0'; ax012.DisplayFormat:='#0'; ax013.DisplayFormat:='#0'; ax014.DisplayFormat:='#0';
            ax016.DisplayFormat:='#0'; ax017.DisplayFormat:='#0'; ax018.DisplayFormat:='#0'; ax019.DisplayFormat:='#0';
            ax005.DisplayFormat:='0.00'; ax010.DisplayFormat:='0.00'; ax015.DisplayFormat:='0.00'; ax020.DisplayFormat:='0.00';
            if query4.fieldbyname('tb').value=0 then t001.Font.Color:=clBlue
            else if (query4.fieldbyname('tb').value>0) then t001.Font.color:=clRed
            else t001.Font.Color:=clRed;
            if query4.fieldbyname('tk').value=0 then t002.Font.Color:=clBlue
            else if (query4.fieldbyname('tk').value>0) then t002.Font.color:=clRed
            else t002.Font.Color:=clRed;
            if query4.fieldbyname('tu').value=0 then t003.Font.Color:=clBlue
            else if (query4.fieldbyname('tu').value>0) then t003.Font.color:=clRed
            else t003.Font.Color:=clRed;
            if query4.fieldbyname('ttl').value=0 then t004.Font.Color:=clBlue
            else if (query4.fieldbyname('ttl').value>0) then t004.Font.color:=clRed
            else t004.Font.Color:=clRed;
            if ax001.FieldValue=0 then ax001.Font.Color:=clBlue
            else if (ax001.FieldValue>0) then ax001.Font.Color:=clRed
            else ax001.Font.Color:=clRed;
            if ax002.FieldValue=0 then ax002.Font.Color:=clBlue
            else if (ax002.FieldValue>0) then ax002.Font.Color:=clRed
            else ax002.Font.Color:=clRed;
            if ax003.FieldValue=0 then ax003.Font.Color:=clBlue
            else if (ax003.FieldValue>0) then ax003.Font.Color:=clRed
            else ax003.Font.Color:=clRed;
            if ax004.FieldValue=0 then ax004.Font.Color:=clBlue
            else if (ax004.FieldValue>0) then ax004.Font.Color:=clRed
            else ax004.Font.Color:=clRed;
            if ax006.FieldValue=0 then ax006.Font.Color:=clBlue
            else if (ax006.FieldValue>0) then ax006.Font.Color:=clRed
            else ax006.Font.Color:=clRed;
            if ax007.FieldValue=0 then ax007.Font.Color:=clBlue
            else if (ax007.FieldValue>0) then ax007.Font.Color:=clRed
            else ax007.Font.Color:=clRed;
            if ax008.FieldValue=0 then ax008.Font.Color:=clBlue
            else if (ax008.FieldValue>0) then ax008.Font.Color:=clRed
            else ax008.Font.Color:=clRed;
            if ax009.FieldValue=0 then ax009.Font.Color:=clBlue
            else if (ax009.FieldValue>0) then ax009.Font.Color:=clRed
            else ax009.Font.Color:=clRed;
            if ax011.FieldValue=0 then ax011.Font.Color:=clBlue
            else if (ax011.FieldValue>0) then ax011.Font.Color:=clRed
            else ax011.Font.Color:=clRed;
            if ax012.FieldValue=0 then ax012.Font.Color:=clBlue
            else if (ax012.FieldValue>0) then ax012.Font.Color:=clRed
            else ax012.Font.Color:=clRed;
            if ax013.FieldValue=0 then ax013.Font.Color:=clBlue
            else if (ax013.FieldValue>0) then ax013.Font.Color:=clRed
            else ax013.Font.Color:=clRed;
            if ax014.FieldValue=0 then ax014.Font.Color:=clBlue
            else if (ax014.FieldValue>0) then ax014.Font.Color:=clRed
            else ax014.Font.Color:=clRed;
            if ax016.FieldValue=0 then ax016.Font.Color:=clBlue
            else if (ax016.FieldValue>0) then ax016.Font.Color:=clRed
            else ax016.Font.Color:=clRed;
            if ax017.FieldValue=0 then ax017.Font.Color:=clBlue
            else if (ax017.FieldValue>0) then ax017.Font.Color:=clRed
            else ax017.Font.Color:=clRed;
            if ax018.FieldValue=0 then ax018.Font.Color:=clBlue
            else if (ax018.FieldValue>0) then ax018.Font.Color:=clRed
            else ax018.Font.Color:=clRed;
            if ax019.FieldValue=0 then ax019.Font.Color:=clBlue
            else if (ax019.FieldValue>0) then ax019.Font.Color:=clRed
            else ax019.Font.Color:=clRed;
          end else if query4.fieldbyname('seq').value=3 then begin
            t001.DisplayFormat:='0.00'; t002.DisplayFormat:='0.00'; t003.DisplayFormat:='0.00'; t004.DisplayFormat:='0.00';
            ax001.DisplayFormat:='0.00'; ax002.DisplayFormat:='0.00'; ax003.DisplayFormat:='0.00'; ax004.DisplayFormat:='0.00';
            ax006.DisplayFormat:='0.00'; ax007.DisplayFormat:='0.00'; ax008.DisplayFormat:='0.00'; ax009.DisplayFormat:='0.00';
            ax011.DisplayFormat:='0.00'; ax012.DisplayFormat:='0.00'; ax013.DisplayFormat:='0.00'; ax014.DisplayFormat:='0.00';
            ax016.DisplayFormat:='0.00'; ax017.DisplayFormat:='0.00'; ax018.DisplayFormat:='0.00'; ax019.DisplayFormat:='0.00';
            ax005.DisplayFormat:='n.a.'; ax010.DisplayFormat:='n.a.'; ax015.DisplayFormat:='n.a.'; ax020.DisplayFormat:='n.a.';
            t001.Font.Color:=clBlack; t002.Font.Color:=clBlack; t003.Font.Color:=clBlack; t004.Font.Color:=clBlack;
            ax001.Font.color:=clBlack; ax002.Font.Color:=clBlack; ax003.Font.Color:=clBlack; ax004.Font.Color:=clBlack;
            ax006.Font.color:=clBlack; ax007.Font.Color:=clBlack; ax008.Font.Color:=clBlack; ax009.Font.Color:=clBlack;
            ax011.Font.color:=clBlack; ax012.Font.Color:=clBlack; ax013.Font.Color:=clBlack; ax014.Font.Color:=clBlack;
            ax016.Font.color:=clBlack; ax017.Font.Color:=clBlack; ax018.Font.Color:=clBlack; ax019.Font.Color:=clBlack;
          end else begin
            t001.DisplayFormat:='#0'; t002.DisplayFormat:='#0'; t003.DisplayFormat:='#0'; t004.DisplayFormat:='#0';
            ax001.DisplayFormat:='#0'; ax002.DisplayFormat:='#0'; ax003.DisplayFormat:='#0'; ax004.DisplayFormat:='#0';
            ax006.DisplayFormat:='#0'; ax007.DisplayFormat:='#0'; ax008.DisplayFormat:='#0'; ax009.DisplayFormat:='#0';
            ax011.DisplayFormat:='#0'; ax012.DisplayFormat:='#0'; ax013.DisplayFormat:='#0'; ax014.DisplayFormat:='#0';
            ax016.DisplayFormat:='#0'; ax017.DisplayFormat:='#0'; ax018.DisplayFormat:='#0'; ax019.DisplayFormat:='#0';
            ax005.DisplayFormat:='0.00'; ax010.DisplayFormat:='0.00'; ax015.DisplayFormat:='0.00'; ax020.DisplayFormat:='0.00';
            t001.Font.Color:=clBlack; t002.Font.Color:=clBlack; t003.Font.Color:=clBlack; t004.Font.Color:=clBlack;
            ax001.Font.color:=clBlack; ax002.Font.Color:=clBlack; ax003.Font.Color:=clBlack; ax004.Font.Color:=clBlack;
            ax006.Font.color:=clBlack; ax007.Font.Color:=clBlack; ax008.Font.Color:=clBlack; ax009.Font.Color:=clBlack;
            ax011.Font.color:=clBlack; ax012.Font.Color:=clBlack; ax013.Font.Color:=clBlack; ax014.Font.Color:=clBlack;
            ax016.Font.color:=clBlack; ax017.Font.Color:=clBlack; ax018.Font.Color:=clBlack; ax019.Font.Color:=clBlack;
          end;
end;

procedure Tfrmnewcap_com.ppDetailBand4BeforePrint(Sender: TObject);
var
  i1,i2,i3:integer;
begin
  if xh1.ItemIndex<2 then begin
    i1:=17; i2:=13; i3:=16;
  end else begin
    i1:=21; i2:=16; i3:=19;
  end;

  if xh1.ItemIndex<2 then begin
    if (query4.fieldbyname('seq').value=2) or (query4.fieldbyname('seq').value=6) or (query4.fieldbyname('seq').value=10)
    or (query4.fieldbyname('seq').value>=i1) then begin
      spt02.Visible:=true;
      pst02.Visible:=true;
      pst02.Brush.Color:=$00C7C6FB;
    end else begin
      spt02.Visible:=false;
      pst02.Visible:=false;
    end;
  end else begin
    if (query4.fieldbyname('seq').value=2) or (query4.fieldbyname('seq').value=6) or (query4.fieldbyname('seq').value=10)
    or (query4.fieldbyname('seq').value=13) or (query4.fieldbyname('seq').value>=i1) then begin
      spt02.Visible:=true;
      pst02.Visible:=true;
      pst02.Brush.Color:=$00C7C6FB;
    end else begin
      spt02.Visible:=false;
      pst02.Visible:=false;
    end;
  end;
  if (query4.fieldbyname('seq').value>=i1) then begin
    spt02.visible:=false;
    pst02.Brush.Color:=$00FEFFE6;
  end;

  sp201.Visible:=false;

  if query4.fieldbyname('wk').value>=98 then begin
    if label6.Caption='A' then begin
    if query4.fieldbyname('seq').value=1 then spb01.Visible:=true
    else spb01.Visible:=false;
    end else begin
    if query4.fieldbyname('seq').value=9 then spb01.Visible:=true
    else spb01.Visible:=false;
    end;
  end else spb01.Visible:=false;
  if combobox2.text='C' then begin
          if query4.fieldbyname('seq').value>=i1 then begin
            t005.DisplayFormat:='0.00'; t006.DisplayFormat:='0.00'; t007.DisplayFormat:='0.00'; t008.DisplayFormat:='0.00';
            bx001.DisplayFormat:='0.00'; bx002.DisplayFormat:='0.00'; bx003.DisplayFormat:='0.00'; bx004.DisplayFormat:='0.00';
            bx006.DisplayFormat:='0.00'; bx007.DisplayFormat:='0.00'; bx008.DisplayFormat:='0.00'; bx009.DisplayFormat:='0.00';
            bx011.DisplayFormat:='0.00'; bx012.DisplayFormat:='0.00'; bx013.DisplayFormat:='0.00'; bx014.DisplayFormat:='0.00';
            bx016.DisplayFormat:='0.00'; bx017.DisplayFormat:='0.00'; bx018.DisplayFormat:='0.00'; bx019.DisplayFormat:='0.00';
            if query4.fieldbyname('tb').value=100 then t005.Font.Color:=clBlue
            else if (query4.fieldbyname('tb').value>90) and (query4.fieldbyname('tb').value<=110) then t005.Font.color:=clGreen
            else t005.Font.Color:=clRed;
            if query4.fieldbyname('tk').value=100 then t006.Font.Color:=clBlue
            else if (query4.fieldbyname('tk').value>90) and (query4.fieldbyname('tk').value<=110) then t006.Font.color:=clGreen
            else t006.Font.Color:=clRed;
            if query4.fieldbyname('tu').value=100 then t007.Font.Color:=clBlue
            else if (query4.fieldbyname('tu').value>90) and (query4.fieldbyname('tu').value<=110) then t007.Font.color:=clGreen
            else t007.Font.Color:=clRed;
            if query4.fieldbyname('ttl').value=100 then t008.Font.Color:=clBlue
            else if (query4.fieldbyname('ttl').value>90) and (query4.fieldbyname('ttl').value<=110) then t008.Font.color:=clGreen
            else t008.Font.Color:=clRed;
            if bx001.FieldValue=100 then bx001.Font.Color:=clBlue
            else if (bx001.FieldValue>90) and (bx001.FieldValue<=110) then bx001.Font.Color:=clGreen
            else bx001.Font.Color:=clRed;
            if bx002.FieldValue=100 then bx002.Font.Color:=clBlue
            else if (bx002.FieldValue>90) and (bx002.FieldValue<=110) then bx002.Font.Color:=clGreen
            else bx002.Font.Color:=clRed;
            if bx003.FieldValue=100 then bx003.Font.Color:=clBlue
            else if (bx003.FieldValue>90) and (bx003.FieldValue<=110) then bx003.Font.Color:=clGreen
            else bx003.Font.Color:=clRed;
            if bx004.FieldValue=100 then bx004.Font.Color:=clBlue
            else if (bx004.FieldValue>90) and (bx004.FieldValue<=110) then bx004.Font.Color:=clGreen
            else bx004.Font.Color:=clRed;
            if bx006.FieldValue=100 then bx006.Font.Color:=clBlue
            else if (bx006.FieldValue>90) and (bx006.FieldValue<=110) then bx006.Font.Color:=clGreen
            else bx006.Font.Color:=clRed;
            if bx007.FieldValue=100 then bx007.Font.Color:=clBlue
            else if (bx007.FieldValue>90) and (bx007.FieldValue<=110) then bx007.Font.Color:=clGreen
            else bx007.Font.Color:=clRed;
            if bx008.FieldValue=100 then bx008.Font.Color:=clBlue
            else if (bx008.FieldValue>90) and (bx008.FieldValue<=110) then bx008.Font.Color:=clGreen
            else bx008.Font.Color:=clRed;
            if bx009.FieldValue=100 then bx009.Font.Color:=clBlue
            else if (bx009.FieldValue>90) and (bx009.FieldValue<=110) then bx009.Font.Color:=clGreen
            else bx009.Font.Color:=clRed;
            if bx011.FieldValue=100 then bx011.Font.Color:=clBlue
            else if (bx011.FieldValue>90) and (bx011.FieldValue<=110) then bx011.Font.Color:=clGreen
            else bx011.Font.Color:=clRed;
            if bx012.FieldValue=100 then bx012.Font.Color:=clBlue
            else if (bx012.FieldValue>90) and (bx012.FieldValue<=110) then bx012.Font.Color:=clGreen
            else bx012.Font.Color:=clRed;
            if bx013.FieldValue=100 then bx013.Font.Color:=clBlue
            else if (bx013.FieldValue>90) and (bx013.FieldValue<=110) then bx013.Font.Color:=clGreen
            else bx013.Font.Color:=clRed;
            if bx014.FieldValue=100 then bx014.Font.Color:=clBlue
            else if (bx014.FieldValue>90) and (bx014.FieldValue<=110) then bx014.Font.Color:=clGreen
            else bx014.Font.Color:=clRed;
            if bx016.FieldValue=100 then bx016.Font.Color:=clBlue
            else if (bx016.FieldValue>90) and (bx016.FieldValue<=110) then bx016.Font.Color:=clGreen
            else bx016.Font.Color:=clRed;
            if bx017.FieldValue=100 then bx017.Font.Color:=clBlue
            else if (bx017.FieldValue>90) and (bx017.FieldValue<=110) then bx017.Font.Color:=clGreen
            else bx017.Font.Color:=clRed;
            if bx018.FieldValue=100 then bx018.Font.Color:=clBlue
            else if (bx018.FieldValue>90) and (bx018.FieldValue<=110) then bx018.Font.Color:=clGreen
            else bx018.Font.Color:=clRed;
            if bx019.FieldValue=100 then bx019.Font.Color:=clBlue
            else if (bx019.FieldValue>90) and (bx019.FieldValue<=110) then bx019.Font.Color:=clGreen
            else bx019.Font.Color:=clRed;
          end else if (query4.fieldbyname('seq').value=i2) or (query4.fieldbyname('seq').value=i3) then begin
            t005.DisplayFormat:='#0'; t006.DisplayFormat:='#0'; t007.DisplayFormat:='#0'; t008.DisplayFormat:='#0';
            bx001.DisplayFormat:='#0'; bx002.DisplayFormat:='#0'; bx003.DisplayFormat:='#0'; bx004.DisplayFormat:='#0';
            bx006.DisplayFormat:='#0'; bx007.DisplayFormat:='#0'; bx008.DisplayFormat:='#0'; bx009.DisplayFormat:='#0';
            bx011.DisplayFormat:='#0'; bx012.DisplayFormat:='#0'; bx013.DisplayFormat:='#0'; bx014.DisplayFormat:='#0';
            bx016.DisplayFormat:='#0'; bx017.DisplayFormat:='#0'; bx018.DisplayFormat:='#0'; bx019.DisplayFormat:='#0';
            if query4.fieldbyname('tb').value=0 then t005.Font.Color:=clBlue
            else if (query4.fieldbyname('tb').value>0) then t005.Font.color:=clRed
            else t005.Font.Color:=clRed;
            if query4.fieldbyname('tk').value=0 then t006.Font.Color:=clBlue
            else if (query4.fieldbyname('tk').value>0) then t006.Font.color:=clRed
            else t006.Font.Color:=clRed;
            if query4.fieldbyname('tu').value=0 then t007.Font.Color:=clBlue
            else if (query4.fieldbyname('tu').value>0) then t007.Font.color:=clRed
            else t007.Font.Color:=clRed;
            if query4.fieldbyname('ttl').value=0 then t008.Font.Color:=clBlue
            else if (query4.fieldbyname('ttl').value>0) then t008.Font.color:=clRed
            else t008.Font.Color:=clRed;
            if bx001.FieldValue=0 then bx001.Font.Color:=clBlue
            else if (bx001.FieldValue>0) then bx001.Font.Color:=clRed
            else bx001.Font.Color:=clRed;
            if bx002.FieldValue=0 then bx002.Font.Color:=clBlue
            else if (bx002.FieldValue>0) then bx002.Font.Color:=clRed
            else bx002.Font.Color:=clRed;
            if bx003.FieldValue=0 then bx003.Font.Color:=clBlue
            else if (bx003.FieldValue>0) then bx003.Font.Color:=clRed
            else bx003.Font.Color:=clRed;
            if bx004.FieldValue=0 then bx004.Font.Color:=clBlue
            else if (bx004.FieldValue>0) then bx004.Font.Color:=clRed
            else bx004.Font.Color:=clRed;
            if bx006.FieldValue=0 then bx006.Font.Color:=clBlue
            else if (bx006.FieldValue>0) then bx006.Font.Color:=clRed
            else bx006.Font.Color:=clRed;
            if bx007.FieldValue=0 then bx007.Font.Color:=clBlue
            else if (bx007.FieldValue>0) then bx007.Font.Color:=clRed
            else bx007.Font.Color:=clRed;
            if bx008.FieldValue=0 then bx008.Font.Color:=clBlue
            else if (bx008.FieldValue>0) then bx008.Font.Color:=clRed
            else bx008.Font.Color:=clRed;
            if bx009.FieldValue=0 then bx009.Font.Color:=clBlue
            else if (bx009.FieldValue>0) then bx009.Font.Color:=clRed
            else bx009.Font.Color:=clRed;
            if bx011.FieldValue=0 then bx011.Font.Color:=clBlue
            else if (bx011.FieldValue>0) then bx011.Font.Color:=clRed
            else bx011.Font.Color:=clRed;
            if bx012.FieldValue=0 then bx012.Font.Color:=clBlue
            else if (bx012.FieldValue>0) then bx012.Font.Color:=clRed
            else bx012.Font.Color:=clRed;
            if bx013.FieldValue=0 then bx013.Font.Color:=clBlue
            else if (bx013.FieldValue>0) then bx013.Font.Color:=clRed
            else bx013.Font.Color:=clRed;
            if bx014.FieldValue=0 then bx014.Font.Color:=clBlue
            else if (bx014.FieldValue>0) then bx014.Font.Color:=clRed
            else bx014.Font.Color:=clRed;
            if bx016.FieldValue=0 then bx016.Font.Color:=clBlue
            else if (bx016.FieldValue>0) then bx016.Font.Color:=clRed
            else bx016.Font.Color:=clRed;
            if bx017.FieldValue=0 then bx017.Font.Color:=clBlue
            else if (bx017.FieldValue>0) then bx017.Font.Color:=clRed
            else bx017.Font.Color:=clRed;
            if bx018.FieldValue=0 then bx018.Font.Color:=clBlue
            else if (bx018.FieldValue>0) then bx018.Font.Color:=clRed
            else bx018.Font.Color:=clRed;
            if bx019.FieldValue=0 then bx019.Font.Color:=clBlue
            else if (bx019.FieldValue>0) then bx019.Font.Color:=clRed
            else bx019.Font.Color:=clRed;
          end else begin
            t005.DisplayFormat:='#0'; t006.DisplayFormat:='#0'; t007.DisplayFormat:='#0'; t008.DisplayFormat:='#0';
            bx001.DisplayFormat:='#0'; bx002.DisplayFormat:='#0'; bx003.DisplayFormat:='#0'; bx004.DisplayFormat:='#0';
            bx006.DisplayFormat:='#0'; bx007.DisplayFormat:='#0'; bx008.DisplayFormat:='#0'; bx009.DisplayFormat:='#0';
            bx011.DisplayFormat:='#0'; bx012.DisplayFormat:='#0'; bx013.DisplayFormat:='#0'; bx014.DisplayFormat:='#0';
            bx016.DisplayFormat:='#0'; bx017.DisplayFormat:='#0'; bx018.DisplayFormat:='#0'; bx019.DisplayFormat:='#0';
            t005.Font.Color:=clBlack; t006.Font.Color:=clBlack; t007.Font.Color:=clBlack; t008.Font.Color:=clBlack;
            bx001.Font.color:=clBlack; bx002.Font.Color:=clBlack; bx003.Font.Color:=clBlack; bx004.Font.Color:=clBlack;
            bx006.Font.color:=clBlack; bx007.Font.Color:=clBlack; bx008.Font.Color:=clBlack; bx009.Font.Color:=clBlack;
            bx011.Font.color:=clBlack; bx012.Font.Color:=clBlack; bx013.Font.Color:=clBlack; bx014.Font.Color:=clBlack;
            bx016.Font.color:=clBlack; bx017.Font.Color:=clBlack; bx018.Font.Color:=clBlack; bx019.Font.Color:=clBlack;
          end;
  end else if combobox2.text='' then begin
          if query4.fieldbyname('seq').value>=i1 then begin
            t005.DisplayFormat:='0.00'; t006.DisplayFormat:='0.00'; t007.DisplayFormat:='0.00'; t008.DisplayFormat:='0.00';
            bx001.DisplayFormat:='0.00'; bx002.DisplayFormat:='0.00'; bx003.DisplayFormat:='0.00'; bx004.DisplayFormat:='0.00';
            bx006.DisplayFormat:='0.00'; bx007.DisplayFormat:='0.00'; bx008.DisplayFormat:='0.00'; bx009.DisplayFormat:='0.00';
            bx011.DisplayFormat:='0.00'; bx012.DisplayFormat:='0.00'; bx013.DisplayFormat:='0.00'; bx014.DisplayFormat:='0.00';
            bx016.DisplayFormat:='0.00'; bx017.DisplayFormat:='0.00'; bx018.DisplayFormat:='0.00'; bx019.DisplayFormat:='0.00';
            if query4.fieldbyname('tb').value=100 then t005.Font.Color:=clBlue
            else if (query4.fieldbyname('tb').value>90) and (query4.fieldbyname('tb').value<=110) then t005.Font.color:=clGreen
            else t005.Font.Color:=clRed;
            if query4.fieldbyname('tk').value=100 then t006.Font.Color:=clBlue
            else if (query4.fieldbyname('tk').value>90) and (query4.fieldbyname('tk').value<=110) then t006.Font.color:=clGreen
            else t006.Font.Color:=clRed;
            if query4.fieldbyname('tu').value=100 then t007.Font.Color:=clBlue
            else if (query4.fieldbyname('tu').value>90) and (query4.fieldbyname('tu').value<=110) then t007.Font.color:=clGreen
            else t007.Font.Color:=clRed;
            if query4.fieldbyname('ttl').value=100 then t008.Font.Color:=clBlue
            else if (query4.fieldbyname('ttl').value>90) and (query4.fieldbyname('ttl').value<=110) then t008.Font.color:=clGreen
            else t008.Font.Color:=clRed;
            if bx001.FieldValue=100 then bx001.Font.Color:=clBlue
            else if (bx001.FieldValue>90) and (bx001.FieldValue<=110) then bx001.Font.Color:=clGreen
            else bx001.Font.Color:=clRed;
            if bx002.FieldValue=100 then bx002.Font.Color:=clBlue
            else if (bx002.FieldValue>90) and (bx002.FieldValue<=110) then bx002.Font.Color:=clGreen
            else bx002.Font.Color:=clRed;
            if bx003.FieldValue=100 then bx003.Font.Color:=clBlue
            else if (bx003.FieldValue>90) and (bx003.FieldValue<=110) then bx003.Font.Color:=clGreen
            else bx003.Font.Color:=clRed;
            if bx004.FieldValue=100 then bx004.Font.Color:=clBlue
            else if (bx004.FieldValue>90) and (bx004.FieldValue<=110) then bx004.Font.Color:=clGreen
            else bx004.Font.Color:=clRed;
            if bx006.FieldValue=100 then bx006.Font.Color:=clBlue
            else if (bx006.FieldValue>90) and (bx006.FieldValue<=110) then bx006.Font.Color:=clGreen
            else bx006.Font.Color:=clRed;
            if bx007.FieldValue=100 then bx007.Font.Color:=clBlue
            else if (bx007.FieldValue>90) and (bx007.FieldValue<=110) then bx007.Font.Color:=clGreen
            else bx007.Font.Color:=clRed;
            if bx008.FieldValue=100 then bx008.Font.Color:=clBlue
            else if (bx008.FieldValue>90) and (bx008.FieldValue<=110) then bx008.Font.Color:=clGreen
            else bx008.Font.Color:=clRed;
            if bx009.FieldValue=100 then bx009.Font.Color:=clBlue
            else if (bx009.FieldValue>90) and (bx009.FieldValue<=110) then bx009.Font.Color:=clGreen
            else bx009.Font.Color:=clRed;
            if bx011.FieldValue=100 then bx011.Font.Color:=clBlue
            else if (bx011.FieldValue>90) and (bx011.FieldValue<=110) then bx011.Font.Color:=clGreen
            else bx011.Font.Color:=clRed;
            if bx012.FieldValue=100 then bx012.Font.Color:=clBlue
            else if (bx012.FieldValue>90) and (bx012.FieldValue<=110) then bx012.Font.Color:=clGreen
            else bx012.Font.Color:=clRed;
            if bx013.FieldValue=100 then bx013.Font.Color:=clBlue
            else if (bx013.FieldValue>90) and (bx013.FieldValue<=110) then bx013.Font.Color:=clGreen
            else bx013.Font.Color:=clRed;
            if bx014.FieldValue=100 then bx014.Font.Color:=clBlue
            else if (bx014.FieldValue>90) and (bx014.FieldValue<=110) then bx014.Font.Color:=clGreen
            else bx014.Font.Color:=clRed;
            if bx016.FieldValue=100 then bx016.Font.Color:=clBlue
            else if (bx016.FieldValue>90) and (bx016.FieldValue<=110) then bx016.Font.Color:=clGreen
            else bx016.Font.Color:=clRed;
            if bx017.FieldValue=100 then bx017.Font.Color:=clBlue
            else if (bx017.FieldValue>90) and (bx017.FieldValue<=110) then bx017.Font.Color:=clGreen
            else bx017.Font.Color:=clRed;
            if bx018.FieldValue=100 then bx018.Font.Color:=clBlue
            else if (bx018.FieldValue>90) and (bx018.FieldValue<=110) then bx018.Font.Color:=clGreen
            else bx018.Font.Color:=clRed;
            if bx019.FieldValue=100 then bx019.Font.Color:=clBlue
            else if (bx019.FieldValue>90) and (bx019.FieldValue<=110) then bx019.Font.Color:=clGreen
            else bx019.Font.Color:=clRed;
          end else if (query4.fieldbyname('seq').value=i2) or (query4.fieldbyname('seq').value=i3) then begin
            t005.DisplayFormat:='#0'; t006.DisplayFormat:='#0'; t007.DisplayFormat:='#0'; t008.DisplayFormat:='#0';
            bx001.DisplayFormat:='#0'; bx002.DisplayFormat:='#0'; bx003.DisplayFormat:='#0'; bx004.DisplayFormat:='#0';
            bx006.DisplayFormat:='#0'; bx007.DisplayFormat:='#0'; bx008.DisplayFormat:='#0'; bx009.DisplayFormat:='#0';
            bx011.DisplayFormat:='#0'; bx012.DisplayFormat:='#0'; bx013.DisplayFormat:='#0'; bx014.DisplayFormat:='#0';
            bx016.DisplayFormat:='#0'; bx017.DisplayFormat:='#0'; bx018.DisplayFormat:='#0'; bx019.DisplayFormat:='#0';
            if query4.fieldbyname('tb').value=0 then t005.Font.Color:=clBlue
            else if (query4.fieldbyname('tb').value>0) then t005.Font.color:=clRed
            else t005.Font.Color:=clRed;
            if query4.fieldbyname('tk').value=0 then t006.Font.Color:=clBlue
            else if (query4.fieldbyname('tk').value>0) then t006.Font.color:=clRed
            else t006.Font.Color:=clRed;
            if query4.fieldbyname('tu').value=0 then t007.Font.Color:=clBlue
            else if (query4.fieldbyname('tu').value>0) then t007.Font.color:=clRed
            else t007.Font.Color:=clRed;
            if query4.fieldbyname('ttl').value=0 then t008.Font.Color:=clBlue
            else if (query4.fieldbyname('ttl').value>0) then t008.Font.color:=clRed
            else t008.Font.Color:=clRed;
            if bx001.FieldValue=0 then bx001.Font.Color:=clBlue
            else if (bx001.FieldValue>0) then bx001.Font.Color:=clRed
            else bx001.Font.Color:=clRed;
            if bx002.FieldValue=0 then bx002.Font.Color:=clBlue
            else if (bx002.FieldValue>0) then bx002.Font.Color:=clRed
            else bx002.Font.Color:=clRed;
            if bx003.FieldValue=0 then bx003.Font.Color:=clBlue
            else if (bx003.FieldValue>0) then bx003.Font.Color:=clRed
            else bx003.Font.Color:=clRed;
            if bx004.FieldValue=0 then bx004.Font.Color:=clBlue
            else if (bx004.FieldValue>0) then bx004.Font.Color:=clRed
            else bx004.Font.Color:=clRed;
            if bx006.FieldValue=0 then bx006.Font.Color:=clBlue
            else if (bx006.FieldValue>0) then bx006.Font.Color:=clRed
            else bx006.Font.Color:=clRed;
            if bx007.FieldValue=0 then bx007.Font.Color:=clBlue
            else if (bx007.FieldValue>0) then bx007.Font.Color:=clRed
            else bx007.Font.Color:=clRed;
            if bx008.FieldValue=0 then bx008.Font.Color:=clBlue
            else if (bx008.FieldValue>0) then bx008.Font.Color:=clRed
            else bx008.Font.Color:=clRed;
            if bx009.FieldValue=0 then bx009.Font.Color:=clBlue
            else if (bx009.FieldValue>0) then bx009.Font.Color:=clRed
            else bx009.Font.Color:=clRed;
            if bx011.FieldValue=0 then bx011.Font.Color:=clBlue
            else if (bx011.FieldValue>0) then bx011.Font.Color:=clRed
            else bx011.Font.Color:=clRed;
            if bx012.FieldValue=0 then bx012.Font.Color:=clBlue
            else if (bx012.FieldValue>0) then bx012.Font.Color:=clRed
            else bx012.Font.Color:=clRed;
            if bx013.FieldValue=0 then bx013.Font.Color:=clBlue
            else if (bx013.FieldValue>0) then bx013.Font.Color:=clRed
            else bx013.Font.Color:=clRed;
            if bx014.FieldValue=0 then bx014.Font.Color:=clBlue
            else if (bx014.FieldValue>0) then bx014.Font.Color:=clRed
            else bx014.Font.Color:=clRed;
            if bx016.FieldValue=0 then bx016.Font.Color:=clBlue
            else if (bx016.FieldValue>0) then bx016.Font.Color:=clRed
            else bx016.Font.Color:=clRed;
            if bx017.FieldValue=0 then bx017.Font.Color:=clBlue
            else if (bx017.FieldValue>0) then bx017.Font.Color:=clRed
            else bx017.Font.Color:=clRed;
            if bx018.FieldValue=0 then bx018.Font.Color:=clBlue
            else if (bx018.FieldValue>0) then bx018.Font.Color:=clRed
            else bx018.Font.Color:=clRed;
            if bx019.FieldValue=0 then bx019.Font.Color:=clBlue
            else if (bx019.FieldValue>0) then bx019.Font.Color:=clRed
            else bx019.Font.Color:=clRed;
          end else begin
            t005.DisplayFormat:='#0'; t006.DisplayFormat:='#0'; t007.DisplayFormat:='#0'; t008.DisplayFormat:='#0';
            bx001.DisplayFormat:='#0'; bx002.DisplayFormat:='#0'; bx003.DisplayFormat:='#0'; bx004.DisplayFormat:='#0';
            bx006.DisplayFormat:='#0'; bx007.DisplayFormat:='#0'; bx008.DisplayFormat:='#0'; bx009.DisplayFormat:='#0';
            bx011.DisplayFormat:='#0'; bx012.DisplayFormat:='#0'; bx013.DisplayFormat:='#0'; bx014.DisplayFormat:='#0';
            bx016.DisplayFormat:='#0'; bx017.DisplayFormat:='#0'; bx018.DisplayFormat:='#0'; bx019.DisplayFormat:='#0';
            t005.Font.Color:=clBlack; t006.Font.Color:=clBlack; t007.Font.Color:=clBlack; t008.Font.Color:=clBlack;
            bx001.Font.color:=clBlack; bx002.Font.Color:=clBlack; bx003.Font.Color:=clBlack; bx004.Font.Color:=clBlack;
            bx006.Font.color:=clBlack; bx007.Font.Color:=clBlack; bx008.Font.Color:=clBlack; bx009.Font.Color:=clBlack;
            bx011.Font.color:=clBlack; bx012.Font.Color:=clBlack; bx013.Font.Color:=clBlack; bx014.Font.Color:=clBlack;
            bx016.Font.color:=clBlack; bx017.Font.Color:=clBlack; bx018.Font.Color:=clBlack; bx019.Font.Color:=clBlack;
          end;
  end;
end;

procedure Tfrmnewcap_com.ppDetailBand5BeforePrint(Sender: TObject);
var
  i1,i2,i3:integer;
begin
  if xh1.ItemIndex<2 then begin
    i1:=17; i2:=13; i3:=16;
  end else begin
    i1:=21; i2:=16; i3:=19;
  end;

  if xh1.ItemIndex<2 then begin
    if (query4.fieldbyname('seq').value=2) or (query4.fieldbyname('seq').value=6) or (query4.fieldbyname('seq').value=10)
    or (query4.fieldbyname('seq').value>=i1) then begin
      spt03.Visible:=true;
      pst03.Visible:=true;
      pst03.Brush.Color:=$00C7C6FB;
    end else begin
      spt03.Visible:=false;
      pst03.Visible:=false;
    end;
  end else begin
    if (query4.fieldbyname('seq').value=2) or (query4.fieldbyname('seq').value=6) or (query4.fieldbyname('seq').value=10)
    or (query4.fieldbyname('seq').value=13) or (query4.fieldbyname('seq').value>=i1) then begin
      spt03.Visible:=true;
      pst03.Visible:=true;
      pst03.Brush.Color:=$00C7C6FB;
    end else begin
      spt03.Visible:=false;
      pst03.Visible:=false;
    end;
  end;
  if (query4.fieldbyname('seq').value>=i1) then begin
    spt03.visible:=false;
    pst03.Brush.Color:=$00FEFFE6;
  end;

  sp301.Visible:=false;

  if query4.fieldbyname('wk').value>=98 then begin
    if label6.Caption='A' then begin
    if query4.fieldbyname('seq').value=1 then spc01.Visible:=true
    else spc01.Visible:=false;
    end else begin
    if query4.fieldbyname('seq').value=9 then spc01.Visible:=true
    else spc01.Visible:=false;
    end;
  end else spc01.Visible:=false;
          if query4.fieldbyname('seq').value>=i1 then begin
            t009.DisplayFormat:='0.00'; t010.DisplayFormat:='0.00'; t011.DisplayFormat:='0.00'; t012.DisplayFormat:='0.00';
            cx001.DisplayFormat:='0.00'; cx002.DisplayFormat:='0.00'; cx003.DisplayFormat:='0.00'; cx004.DisplayFormat:='0.00';
            cx006.DisplayFormat:='0.00'; cx007.DisplayFormat:='0.00'; cx008.DisplayFormat:='0.00'; cx009.DisplayFormat:='0.00';
            cx011.DisplayFormat:='0.00'; cx012.DisplayFormat:='0.00'; cx013.DisplayFormat:='0.00'; cx014.DisplayFormat:='0.00';
            cx016.DisplayFormat:='0.00'; cx017.DisplayFormat:='0.00'; cx018.DisplayFormat:='0.00'; cx019.DisplayFormat:='0.00';
            if query4.fieldbyname('tb').value=100 then t009.Font.Color:=clBlue
            else if (query4.fieldbyname('tb').value>90) and (query4.fieldbyname('tb').value<=110) then t009.Font.color:=clGreen
            else t009.Font.Color:=clRed;
            if query4.fieldbyname('tk').value=100 then t010.Font.Color:=clBlue
            else if (query4.fieldbyname('tk').value>90) and (query4.fieldbyname('tk').value<=110) then t010.Font.color:=clGreen
            else t010.Font.Color:=clRed;
            if query4.fieldbyname('tu').value=100 then t011.Font.Color:=clBlue
            else if (query4.fieldbyname('tu').value>90) and (query4.fieldbyname('tu').value<=110) then t011.Font.color:=clGreen
            else t011.Font.Color:=clRed;
            if query4.fieldbyname('ttl').value=100 then t012.Font.Color:=clBlue
            else if (query4.fieldbyname('ttl').value>90) and (query4.fieldbyname('ttl').value<=110) then t012.Font.color:=clGreen
            else t012.Font.Color:=clRed;
            if cx001.FieldValue=100 then cx001.Font.Color:=clBlue
            else if (cx001.FieldValue>90) and (cx001.FieldValue<=110) then cx001.Font.Color:=clGreen
            else cx001.Font.Color:=clRed;
            if cx002.FieldValue=100 then cx002.Font.Color:=clBlue
            else if (cx002.FieldValue>90) and (cx002.FieldValue<=110) then cx002.Font.Color:=clGreen
            else cx002.Font.Color:=clRed;
            if cx003.FieldValue=100 then cx003.Font.Color:=clBlue
            else if (cx003.FieldValue>90) and (cx003.FieldValue<=110) then cx003.Font.Color:=clGreen
            else cx003.Font.Color:=clRed;
            if cx004.FieldValue=100 then cx004.Font.Color:=clBlue
            else if (cx004.FieldValue>90) and (cx004.FieldValue<=110) then cx004.Font.Color:=clGreen
            else cx004.Font.Color:=clRed;
            if cx006.FieldValue=100 then cx006.Font.Color:=clBlue
            else if (cx006.FieldValue>90) and (cx006.FieldValue<=110) then cx006.Font.Color:=clGreen
            else cx006.Font.Color:=clRed;
            if cx007.FieldValue=100 then cx007.Font.Color:=clBlue
            else if (cx007.FieldValue>90) and (cx007.FieldValue<=110) then cx007.Font.Color:=clGreen
            else cx007.Font.Color:=clRed;
            if cx008.FieldValue=100 then cx008.Font.Color:=clBlue
            else if (cx008.FieldValue>90) and (cx008.FieldValue<=110) then cx008.Font.Color:=clGreen
            else cx008.Font.Color:=clRed;
            if cx009.FieldValue=100 then cx009.Font.Color:=clBlue
            else if (cx009.FieldValue>90) and (cx009.FieldValue<=110) then cx009.Font.Color:=clGreen
            else cx009.Font.Color:=clRed;
            if cx011.FieldValue=100 then cx011.Font.Color:=clBlue
            else if (cx011.FieldValue>90) and (cx011.FieldValue<=110) then cx011.Font.Color:=clGreen
            else cx011.Font.Color:=clRed;
            if cx012.FieldValue=100 then cx012.Font.Color:=clBlue
            else if (cx012.FieldValue>90) and (cx012.FieldValue<=110) then cx012.Font.Color:=clGreen
            else cx012.Font.Color:=clRed;
            if cx013.FieldValue=100 then cx013.Font.Color:=clBlue
            else if (cx013.FieldValue>90) and (cx013.FieldValue<=110) then cx013.Font.Color:=clGreen
            else cx013.Font.Color:=clRed;
            if cx014.FieldValue=100 then cx014.Font.Color:=clBlue
            else if (cx014.FieldValue>90) and (cx014.FieldValue<=110) then cx014.Font.Color:=clGreen
            else cx014.Font.Color:=clRed;
            if cx016.FieldValue=100 then cx016.Font.Color:=clBlue
            else if (cx016.FieldValue>90) and (cx016.FieldValue<=110) then cx016.Font.Color:=clGreen
            else cx016.Font.Color:=clRed;
            if cx017.FieldValue=100 then cx017.Font.Color:=clBlue
            else if (cx017.FieldValue>90) and (cx017.FieldValue<=110) then cx017.Font.Color:=clGreen
            else cx017.Font.Color:=clRed;
            if cx018.FieldValue=100 then cx018.Font.Color:=clBlue
            else if (cx018.FieldValue>90) and (cx018.FieldValue<=110) then cx018.Font.Color:=clGreen
            else cx018.Font.Color:=clRed;
            if cx019.FieldValue=100 then cx019.Font.Color:=clBlue
            else if (cx019.FieldValue>90) and (cx019.FieldValue<=110) then cx019.Font.Color:=clGreen
            else cx019.Font.Color:=clRed;
          end else if (query4.fieldbyname('seq').value=i2) or (query4.fieldbyname('seq').value=i3) then begin
            t009.DisplayFormat:='#0'; t010.DisplayFormat:='#0'; t011.DisplayFormat:='#0'; t012.DisplayFormat:='#0';
            cx001.DisplayFormat:='#0'; cx002.DisplayFormat:='#0'; cx003.DisplayFormat:='#0'; cx004.DisplayFormat:='#0';
            cx006.DisplayFormat:='#0'; cx007.DisplayFormat:='#0'; cx008.DisplayFormat:='#0'; cx009.DisplayFormat:='#0';
            cx011.DisplayFormat:='#0'; cx012.DisplayFormat:='#0'; cx013.DisplayFormat:='#0'; cx014.DisplayFormat:='#0';
            cx016.DisplayFormat:='#0'; cx017.DisplayFormat:='#0'; cx018.DisplayFormat:='#0'; cx019.DisplayFormat:='#0';
            if query4.fieldbyname('tb').value=0 then t009.Font.Color:=clBlue
            else if (query4.fieldbyname('tb').value>0) then t009.Font.color:=clRed
            else t009.Font.Color:=clRed;
            if query4.fieldbyname('tk').value=0 then t010.Font.Color:=clBlue
            else if (query4.fieldbyname('tk').value>0) then t010.Font.color:=clRed
            else t010.Font.Color:=clRed;
            if query4.fieldbyname('tu').value=0 then t011.Font.Color:=clBlue
            else if (query4.fieldbyname('tu').value>0) then t011.Font.color:=clRed
            else t011.Font.Color:=clRed;
            if query4.fieldbyname('ttl').value=0 then t012.Font.Color:=clBlue
            else if (query4.fieldbyname('ttl').value>0) then t012.Font.color:=clRed
            else t012.Font.Color:=clRed;
            if cx001.FieldValue=0 then cx001.Font.Color:=clBlue
            else if (cx001.FieldValue>0) then cx001.Font.Color:=clRed
            else cx001.Font.Color:=clRed;
            if cx002.FieldValue=0 then cx002.Font.Color:=clBlue
            else if (cx002.FieldValue>0) then cx002.Font.Color:=clRed
            else cx002.Font.Color:=clRed;
            if cx003.FieldValue=0 then cx003.Font.Color:=clBlue
            else if (cx003.FieldValue>0) then cx003.Font.Color:=clRed
            else cx003.Font.Color:=clRed;
            if cx004.FieldValue=0 then cx004.Font.Color:=clBlue
            else if (cx004.FieldValue>0) then cx004.Font.Color:=clRed
            else cx004.Font.Color:=clRed;
            if cx006.FieldValue=0 then cx006.Font.Color:=clBlue
            else if (cx006.FieldValue>0) then cx006.Font.Color:=clRed
            else cx006.Font.Color:=clRed;
            if cx007.FieldValue=0 then cx007.Font.Color:=clBlue
            else if (cx007.FieldValue>0) then cx007.Font.Color:=clRed
            else cx007.Font.Color:=clRed;
            if cx008.FieldValue=0 then cx008.Font.Color:=clBlue
            else if (cx008.FieldValue>0) then cx008.Font.Color:=clRed
            else cx008.Font.Color:=clRed;
            if cx009.FieldValue=0 then cx009.Font.Color:=clBlue
            else if (cx009.FieldValue>0) then cx009.Font.Color:=clRed
            else cx009.Font.Color:=clRed;
            if cx011.FieldValue=0 then cx011.Font.Color:=clBlue
            else if (cx011.FieldValue>0) then cx011.Font.Color:=clRed
            else cx011.Font.Color:=clRed;
            if cx012.FieldValue=0 then cx012.Font.Color:=clBlue
            else if (cx012.FieldValue>0) then cx012.Font.Color:=clRed
            else cx012.Font.Color:=clRed;
            if cx013.FieldValue=0 then cx013.Font.Color:=clBlue
            else if (cx013.FieldValue>0) then cx013.Font.Color:=clRed
            else cx013.Font.Color:=clRed;
            if cx014.FieldValue=0 then cx014.Font.Color:=clBlue
            else if (cx014.FieldValue>0) then cx014.Font.Color:=clRed
            else cx014.Font.Color:=clRed;
            if cx016.FieldValue=0 then cx016.Font.Color:=clBlue
            else if (cx016.FieldValue>0) then cx016.Font.Color:=clRed
            else cx016.Font.Color:=clRed;
            if cx017.FieldValue=0 then cx017.Font.Color:=clBlue
            else if (cx017.FieldValue>0) then cx017.Font.Color:=clRed
            else cx017.Font.Color:=clRed;
            if cx018.FieldValue=0 then cx018.Font.Color:=clBlue
            else if (cx018.FieldValue>0) then cx018.Font.Color:=clRed
            else cx018.Font.Color:=clRed;
            if cx019.FieldValue=0 then cx019.Font.Color:=clBlue
            else if (cx019.FieldValue>0) then cx019.Font.Color:=clRed
            else cx019.Font.Color:=clRed;
          end else begin
            t009.DisplayFormat:='#0'; t010.DisplayFormat:='#0'; t011.DisplayFormat:='#0'; t012.DisplayFormat:='#0';
            cx001.DisplayFormat:='#0'; cx002.DisplayFormat:='#0'; cx003.DisplayFormat:='#0'; cx004.DisplayFormat:='#0';
            cx006.DisplayFormat:='#0'; cx007.DisplayFormat:='#0'; cx008.DisplayFormat:='#0'; cx009.DisplayFormat:='#0';
            cx011.DisplayFormat:='#0'; cx012.DisplayFormat:='#0'; cx013.DisplayFormat:='#0'; cx014.DisplayFormat:='#0';
            cx016.DisplayFormat:='#0'; cx017.DisplayFormat:='#0'; cx018.DisplayFormat:='#0'; cx019.DisplayFormat:='#0';
            t009.Font.Color:=clBlack; t010.Font.Color:=clBlack; t011.Font.Color:=clBlack; t012.Font.Color:=clBlack;
            cx001.Font.color:=clBlack; cx002.Font.Color:=clBlack; cx003.Font.Color:=clBlack; cx004.Font.Color:=clBlack;
            cx006.Font.color:=clBlack; cx007.Font.Color:=clBlack; cx008.Font.Color:=clBlack; cx009.Font.Color:=clBlack;
            cx011.Font.color:=clBlack; cx012.Font.Color:=clBlack; cx013.Font.Color:=clBlack; cx014.Font.Color:=clBlack;
            cx016.Font.color:=clBlack; cx017.Font.Color:=clBlack; cx018.Font.Color:=clBlack; cx019.Font.Color:=clBlack;
          end;
end;

procedure Tfrmnewcap_com.ppDetailBand6BeforePrint(Sender: TObject);
var
  i1,i2,i3:integer;
begin
  if xh1.ItemIndex<2 then begin
    i1:=17; i2:=13; i3:=16;
  end else begin
    i1:=21; i2:=16; i3:=19;
  end;

  if xh1.ItemIndex<2 then begin
    if (query4.fieldbyname('seq').value=2) or (query4.fieldbyname('seq').value=6) or (query4.fieldbyname('seq').value=10)
    or (query4.fieldbyname('seq').value>=i1) then begin
      spt04.Visible:=true;
      pst04.Visible:=true;
      pst04.Brush.Color:=$00C7C6FB;
    end else begin
      spt04.Visible:=false;
      pst04.Visible:=false;
    end;
  end else begin
    if (query4.fieldbyname('seq').value=2) or (query4.fieldbyname('seq').value=6) or (query4.fieldbyname('seq').value=10)
    or (query4.fieldbyname('seq').value=13) or (query4.fieldbyname('seq').value>=i1) then begin
      spt04.Visible:=true;
      pst04.Visible:=true;
      pst04.Brush.Color:=$00C7C6FB;
    end else begin
      spt04.Visible:=false;
      pst04.Visible:=false;
    end;
  end;
  if (query4.fieldbyname('seq').value>=i1) then begin
    spt04.visible:=false;
    pst04.Brush.Color:=$00FEFFE6;
  end;

  sp401.Visible:=false;
  
  if query4.fieldbyname('wk').value>=98 then begin
    if label6.Caption='A' then begin
    if query4.fieldbyname('seq').value=1 then spd01.Visible:=true
    else spd01.Visible:=false;
    end else begin
    if query4.fieldbyname('seq').value=9 then spd01.Visible:=true
    else spd01.Visible:=false;
    end;
  end else spd01.Visible:=false;
          if query4.fieldbyname('seq').value>=i1 then begin
            t013.DisplayFormat:='0.00'; t014.DisplayFormat:='0.00'; t015.DisplayFormat:='0.00'; t016.DisplayFormat:='0.00';
            cx021.DisplayFormat:='0.00'; cx022.DisplayFormat:='0.00'; cx023.DisplayFormat:='0.00'; cx024.DisplayFormat:='0.00';
            cx026.DisplayFormat:='0.00'; cx027.DisplayFormat:='0.00'; cx028.DisplayFormat:='0.00'; cx029.DisplayFormat:='0.00';
            cx031.DisplayFormat:='0.00'; cx032.DisplayFormat:='0.00'; cx033.DisplayFormat:='0.00'; cx034.DisplayFormat:='0.00';
            cx036.DisplayFormat:='0.00'; cx037.DisplayFormat:='0.00'; cx038.DisplayFormat:='0.00'; cx039.DisplayFormat:='0.00';
            if query4.fieldbyname('tb').value=100 then t013.Font.Color:=clBlue
            else if (query4.fieldbyname('tb').value>90) and (query4.fieldbyname('tb').value<=110) then t013.Font.color:=clGreen
            else t013.Font.Color:=clRed;
            if query4.fieldbyname('tk').value=100 then t014.Font.Color:=clBlue
            else if (query4.fieldbyname('tk').value>90) and (query4.fieldbyname('tk').value<=110) then t014.Font.color:=clGreen
            else t014.Font.Color:=clRed;
            if query4.fieldbyname('tu').value=100 then t015.Font.Color:=clBlue
            else if (query4.fieldbyname('tu').value>90) and (query4.fieldbyname('tu').value<=110) then t015.Font.color:=clGreen
            else t015.Font.Color:=clRed;
            if query4.fieldbyname('ttl').value=100 then t016.Font.Color:=clBlue
            else if (query4.fieldbyname('ttl').value>90) and (query4.fieldbyname('ttl').value<=110) then t016.Font.color:=clGreen
            else t016.Font.Color:=clRed;
            if cx021.FieldValue=100 then cx021.Font.Color:=clBlue
            else if (cx021.FieldValue>90) and (cx021.FieldValue<=110) then cx021.Font.Color:=clGreen
            else cx021.Font.Color:=clRed;
            if cx022.FieldValue=100 then cx022.Font.Color:=clBlue
            else if (cx022.FieldValue>90) and (cx022.FieldValue<=110) then cx022.Font.Color:=clGreen
            else cx022.Font.Color:=clRed;
            if cx023.FieldValue=100 then cx023.Font.Color:=clBlue
            else if (cx023.FieldValue>90) and (cx023.FieldValue<=110) then cx023.Font.Color:=clGreen
            else cx023.Font.Color:=clRed;
            if cx024.FieldValue=100 then cx024.Font.Color:=clBlue
            else if (cx024.FieldValue>90) and (cx024.FieldValue<=110) then cx024.Font.Color:=clGreen
            else cx024.Font.Color:=clRed;
            if cx026.FieldValue=100 then cx026.Font.Color:=clBlue
            else if (cx026.FieldValue>90) and (cx026.FieldValue<=110) then cx026.Font.Color:=clGreen
            else cx026.Font.Color:=clRed;
            if cx027.FieldValue=100 then cx027.Font.Color:=clBlue
            else if (cx027.FieldValue>90) and (cx027.FieldValue<=110) then cx027.Font.Color:=clGreen
            else cx027.Font.Color:=clRed;
            if cx028.FieldValue=100 then cx028.Font.Color:=clBlue
            else if (cx028.FieldValue>90) and (cx028.FieldValue<=110) then cx028.Font.Color:=clGreen
            else cx028.Font.Color:=clRed;
            if cx029.FieldValue=100 then cx029.Font.Color:=clBlue
            else if (cx029.FieldValue>90) and (cx029.FieldValue<=110) then cx029.Font.Color:=clGreen
            else cx029.Font.Color:=clRed;
            if cx031.FieldValue=100 then cx031.Font.Color:=clBlue
            else if (cx031.FieldValue>90) and (cx031.FieldValue<=110) then cx031.Font.Color:=clGreen
            else cx031.Font.Color:=clRed;
            if cx032.FieldValue=100 then cx032.Font.Color:=clBlue
            else if (cx032.FieldValue>90) and (cx032.FieldValue<=110) then cx032.Font.Color:=clGreen
            else cx032.Font.Color:=clRed;
            if cx033.FieldValue=100 then cx033.Font.Color:=clBlue
            else if (cx033.FieldValue>90) and (cx033.FieldValue<=110) then cx033.Font.Color:=clGreen
            else cx033.Font.Color:=clRed;
            if cx034.FieldValue=100 then cx034.Font.Color:=clBlue
            else if (cx034.FieldValue>90) and (cx034.FieldValue<=110) then cx034.Font.Color:=clGreen
            else cx034.Font.Color:=clRed;
            if cx036.FieldValue=100 then cx036.Font.Color:=clBlue
            else if (cx036.FieldValue>90) and (cx036.FieldValue<=110) then cx036.Font.Color:=clGreen
            else cx036.Font.Color:=clRed;
            if cx037.FieldValue=100 then cx037.Font.Color:=clBlue
            else if (cx037.FieldValue>90) and (cx037.FieldValue<=110) then cx037.Font.Color:=clGreen
            else cx037.Font.Color:=clRed;
            if cx038.FieldValue=100 then cx038.Font.Color:=clBlue
            else if (cx038.FieldValue>90) and (cx038.FieldValue<=110) then cx038.Font.Color:=clGreen
            else cx038.Font.Color:=clRed;
            if cx039.FieldValue=100 then cx039.Font.Color:=clBlue
            else if (cx039.FieldValue>90) and (cx039.FieldValue<=110) then cx039.Font.Color:=clGreen
            else cx039.Font.Color:=clRed;
          end else if (query4.fieldbyname('seq').value=i2) or (query4.fieldbyname('seq').value=i3) then begin
            t013.DisplayFormat:='#0'; t014.DisplayFormat:='#0'; t015.DisplayFormat:='#0'; t016.DisplayFormat:='#0';
            cx021.DisplayFormat:='#0'; cx022.DisplayFormat:='#0'; cx023.DisplayFormat:='#0'; cx024.DisplayFormat:='#0';
            cx026.DisplayFormat:='#0'; cx027.DisplayFormat:='#0'; cx028.DisplayFormat:='#0'; cx029.DisplayFormat:='#0';
            cx031.DisplayFormat:='#0'; cx032.DisplayFormat:='#0'; cx033.DisplayFormat:='#0'; cx034.DisplayFormat:='#0';
            cx036.DisplayFormat:='#0'; cx037.DisplayFormat:='#0'; cx038.DisplayFormat:='#0'; cx039.DisplayFormat:='#0';
            if query4.fieldbyname('tb').value=0 then t013.Font.Color:=clBlue
            else if (query4.fieldbyname('tb').value>0) then t013.Font.color:=clRed
            else t013.Font.Color:=clRed;
            if query4.fieldbyname('tk').value=0 then t014.Font.Color:=clBlue
            else if (query4.fieldbyname('tk').value>0) then t014.Font.color:=clRed
            else t014.Font.Color:=clRed;
            if query4.fieldbyname('tu').value=0 then t015.Font.Color:=clBlue
            else if (query4.fieldbyname('tu').value>0) then t015.Font.color:=clRed
            else t015.Font.Color:=clRed;
            if query4.fieldbyname('ttl').value=0 then t016.Font.Color:=clBlue
            else if (query4.fieldbyname('ttl').value>0) then t016.Font.color:=clRed
            else t016.Font.Color:=clRed;
            if cx021.FieldValue=0 then cx021.Font.Color:=clBlue
            else if (cx021.FieldValue>0) then cx021.Font.Color:=clRed
            else cx021.Font.Color:=clRed;
            if cx022.FieldValue=0 then cx022.Font.Color:=clBlue
            else if (cx022.FieldValue>0) then cx022.Font.Color:=clRed
            else cx022.Font.Color:=clRed;
            if cx023.FieldValue=0 then cx023.Font.Color:=clBlue
            else if (cx023.FieldValue>0) then cx023.Font.Color:=clRed
            else cx023.Font.Color:=clRed;
            if cx024.FieldValue=0 then cx024.Font.Color:=clBlue
            else if (cx024.FieldValue>0) then cx024.Font.Color:=clRed
            else cx024.Font.Color:=clRed;
            if cx026.FieldValue=0 then cx026.Font.Color:=clBlue
            else if (cx026.FieldValue>0) then cx026.Font.Color:=clRed
            else cx026.Font.Color:=clRed;
            if cx027.FieldValue=0 then cx027.Font.Color:=clBlue
            else if (cx027.FieldValue>0) then cx027.Font.Color:=clRed
            else cx027.Font.Color:=clRed;
            if cx028.FieldValue=0 then cx028.Font.Color:=clBlue
            else if (cx028.FieldValue>0) then cx028.Font.Color:=clRed
            else cx028.Font.Color:=clRed;
            if cx029.FieldValue=0 then cx029.Font.Color:=clBlue
            else if (cx029.FieldValue>0) then cx029.Font.Color:=clRed
            else cx029.Font.Color:=clRed;
            if cx031.FieldValue=0 then cx031.Font.Color:=clBlue
            else if (cx031.FieldValue>0) then cx031.Font.Color:=clRed
            else cx031.Font.Color:=clRed;
            if cx032.FieldValue=0 then cx032.Font.Color:=clBlue
            else if (cx032.FieldValue>0) then cx032.Font.Color:=clRed
            else cx032.Font.Color:=clRed;
            if cx033.FieldValue=0 then cx033.Font.Color:=clBlue
            else if (cx033.FieldValue>0) then cx033.Font.Color:=clRed
            else cx033.Font.Color:=clRed;
            if cx034.FieldValue=0 then cx034.Font.Color:=clBlue
            else if (cx034.FieldValue>0) then cx034.Font.Color:=clRed
            else cx034.Font.Color:=clRed;
            if cx036.FieldValue=0 then cx036.Font.Color:=clBlue
            else if (cx036.FieldValue>0) then cx036.Font.Color:=clRed
            else cx036.Font.Color:=clRed;
            if cx037.FieldValue=0 then cx037.Font.Color:=clBlue
            else if (cx037.FieldValue>0) then cx037.Font.Color:=clRed
            else cx037.Font.Color:=clRed;
            if cx038.FieldValue=0 then cx038.Font.Color:=clBlue
            else if (cx038.FieldValue>0) then cx038.Font.Color:=clRed
            else cx038.Font.Color:=clRed;
            if cx039.FieldValue=0 then cx039.Font.Color:=clBlue
            else if (cx039.FieldValue>0) then cx039.Font.Color:=clRed
            else cx039.Font.Color:=clRed;
          end else begin
            t013.DisplayFormat:='#0'; t014.DisplayFormat:='#0'; t015.DisplayFormat:='#0'; t016.DisplayFormat:='#0';
            cx021.DisplayFormat:='#0'; cx022.DisplayFormat:='#0'; cx023.DisplayFormat:='#0'; cx024.DisplayFormat:='#0';
            cx026.DisplayFormat:='#0'; cx027.DisplayFormat:='#0'; cx028.DisplayFormat:='#0'; cx029.DisplayFormat:='#0';
            cx031.DisplayFormat:='#0'; cx032.DisplayFormat:='#0'; cx033.DisplayFormat:='#0'; cx034.DisplayFormat:='#0';
            cx036.DisplayFormat:='#0'; cx037.DisplayFormat:='#0'; cx038.DisplayFormat:='#0'; cx039.DisplayFormat:='#0';
            t013.Font.Color:=clBlack; t014.Font.Color:=clBlack; t015.Font.Color:=clBlack; t016.Font.Color:=clBlack;
            cx021.Font.color:=clBlack; cx022.Font.Color:=clBlack; cx023.Font.Color:=clBlack; cx024.Font.Color:=clBlack;
            cx026.Font.color:=clBlack; cx027.Font.Color:=clBlack; cx028.Font.Color:=clBlack; cx029.Font.Color:=clBlack;
            cx031.Font.color:=clBlack; cx032.Font.Color:=clBlack; cx033.Font.Color:=clBlack; cx034.Font.Color:=clBlack;
            cx036.Font.color:=clBlack; cx037.Font.Color:=clBlack; cx038.Font.Color:=clBlack; cx039.Font.Color:=clBlack;
          end;
end;

procedure Tfrmnewcap_com.ppGroupFooterBand13BeforePrint(Sender: TObject);
var
  dt:tdate;
  custx1,linex1,wdayx1,istylex1,rstylex1,tstylex1:string;
  i1,i2:integer;
begin
  if xh1.ItemIndex<2 then begin
    i1:=17; i2:=15;
  end else begin
    i1:=21; i2:=20;
  end;
  //xt001
  if label6.Caption='A' then begin
  if query4.FieldByName('seq').value<i1 then ppGroupFooterBand13.Visible:=true
  else ppGroupFooterBand13.Visible:=false;
  if query4.fieldbyname('seq').value<=5 then dt:=ftydt//encodedate(2009,6,05)
  else if query4.fieldbyname('seq').value<=8 then dt:=oadt//encodedate(2009,6,13)
  else dt:=date;
  if query4.fieldbyname('seq').value=5 then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    commandtext:='select * from sp_cap_def_add(:x1,:x2,:x3,:x4,:x5,:x6) where o_wk=:x7';
    params[0].asstring:=combobox1.text;
    if combobox2.text>'' then
    params[1].asstring:=combobox2.text
    else if combobox1.text='SL' then params[1].asstring:='A'
    else if combobox1.text='KB' then params[1].asstring:='B';
    if opt1.Checked then params[2].asinteger:=1
    else if opt2.Checked then params[2].AsInteger:=2;
    params[3].asinteger:=spinedit1.Value;
    if opt1.Checked then begin
      params[4].asinteger:=spinedit2.Value;
      params[5].AsInteger:=spinedit3.value;
    end else if opt2.Checked then begin
      params[4].asinteger:=spinedit4.Value;
      params[5].AsInteger:=spinedit5.value;
    end;
    params[6].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('o_cust').isnull then custx1:=fieldbyname('o_cust').value else custx1:='';
    if not fieldbyname('o_line').isnull then linex1:=fieldbyname('o_line').value else linex1:='';
    if not fieldbyname('o_day').isnull then wdayx1:=fieldbyname('o_day').value else wdayx1:='';
    istylex1:=''; rstylex1:=''; tstylex1:='';
  end;
  end else if query4.fieldbyname('seq').value=8 then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    commandtext:='select * from sp_cap_prj_add(:x1,:x2,:x3,:x4,:x5,:x6) where o_wk=:x7';
    params[0].asstring:=combobox1.text;
    if combobox2.text>'' then
    params[1].asstring:=combobox2.text
    else if combobox1.text='SL' then params[1].asstring:='A'
    else if combobox1.text='KB' then params[1].asstring:='B';
    if opt1.Checked then params[2].asinteger:=1
    else if opt2.Checked then params[2].AsInteger:=2;
    params[3].asinteger:=spinedit1.Value;
    if opt1.Checked then begin
      params[4].asinteger:=spinedit2.Value;
      params[5].AsInteger:=spinedit3.value;
    end else if opt2.Checked then begin
      params[4].asinteger:=spinedit4.Value;
      params[5].AsInteger:=spinedit5.value;
    end;
    params[6].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('o_cust').isnull then custx1:=fieldbyname('o_cust').value else custx1:='';
    if not fieldbyname('o_line').isnull then linex1:=fieldbyname('o_line').value else linex1:='';
    if not fieldbyname('o_day').isnull then wdayx1:=fieldbyname('o_day').value else wdayx1:='';
    istylex1:=''; rstylex1:=''; tstylex1:='';
  end;
  //end else if (query4.fieldbyname('seq').value>=15) and (query4.fieldbyname('seq').value<=17) then begin
  end else if query4.fieldbyname('seq').value=i2 then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    commandtext:='select * from sp_cap_curr_add(:x1,:x2,:x3,:x4,:x5,:x6) where o_wk=:x7';
    params[0].asstring:=combobox1.text;
    if combobox2.text>'' then
    params[1].asstring:=combobox2.text
    else if combobox1.text='SL' then params[1].asstring:='A'
    else if combobox1.text='KB' then params[1].asstring:='B';
    if opt1.Checked then params[2].asinteger:=1
    else if opt2.Checked then params[2].AsInteger:=2;
    params[3].asinteger:=spinedit1.Value;
    if opt1.Checked then begin
      params[4].asinteger:=spinedit2.Value;
      params[5].AsInteger:=spinedit3.value;
    end else if opt2.Checked then begin
      params[4].asinteger:=spinedit4.Value;
      params[5].AsInteger:=spinedit5.value;
    end;
    params[6].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('o_cust').isnull then custx1:=fieldbyname('o_cust').value else custx1:='';
    if not fieldbyname('o_line').isnull then linex1:=fieldbyname('o_line').value else linex1:='';
    if not fieldbyname('o_day').isnull then wdayx1:=fieldbyname('o_day').value else wdayx1:='';
    if not fieldbyname('o_istyle').isnull then istylex1:=fieldbyname('o_istyle').value else istylex1:='';
    if not fieldbyname('o_rstyle').isnull then rstylex1:=fieldbyname('o_rstyle').value else rstylex1:='';
    if not fieldbyname('o_tstyle').isnull then tstylex1:=fieldbyname('o_tstyle').value else tstylex1:='';
  end;
  //end else begin
  //  custx1:=''; linex1:=''; istylex1:=''; rstylex1:=''; tstylex1:='';
  end;
  xt001.Caption:='As at '+formatdatetime('yy-MM-dd',dt)+'    Additional Information:-    # of Cust: '+custx1+'      # of Line: '+linex1+'      # of work days: '+wdayx1+'      # of sect hr/line/work day(normal day: 22      Saturday: 18)      # of style(initial: '+istylex1+'      flow/repeat: '+rstylex1+'      ttl: '+tstylex1+')  ';
  end;
end;

procedure Tfrmnewcap_com.ppGroupFooterBand14BeforePrint(Sender: TObject);
var
  dt:tdate;
  custx1,linex1,wdayx1,istylex1,rstylex1,tstylex1:string;
  i1,i2:integer;
begin
  if xh1.ItemIndex<2 then begin
    i1:=17; i2:=15;
  end else begin
    i1:=21; i2:=20;
  end;
  //xt002
  if label6.Caption='A' then begin
  if query4.FieldByName('seq').value<i1 then ppGroupFooterBand14.Visible:=true
  else ppGroupFooterBand14.Visible:=false;
  if query4.fieldbyname('seq').value<=5 then dt:=ftydt//encodedate(2009,6,05)
  else if query4.fieldbyname('seq').value<=8 then dt:=oadt//encodedate(2009,6,13)
  else dt:=date;
  if query4.fieldbyname('seq').value=5 then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    commandtext:='select * from sp_cap_def_add(:x1,:x2,:x3,:x4,:x5,:x6) where o_wk=:x7';
    params[0].asstring:=combobox1.text;
    if combobox2.text>'' then
    params[1].asstring:=combobox2.text
    else if combobox1.text='SL' then params[1].asstring:='A'
    else if combobox1.text='KB' then params[1].asstring:='C';
    if opt1.Checked then params[2].asinteger:=1
    else if opt2.Checked then params[2].AsInteger:=2;
    params[3].asinteger:=spinedit1.Value;
    if opt1.Checked then begin
      params[4].asinteger:=spinedit2.Value;
      params[5].AsInteger:=spinedit3.value;
    end else if opt2.Checked then begin
      params[4].asinteger:=spinedit4.Value;
      params[5].AsInteger:=spinedit5.value;
    end;
    params[6].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('o_cust').isnull then custx1:=fieldbyname('o_cust').value else custx1:='';
    if not fieldbyname('o_line').isnull then linex1:=fieldbyname('o_line').value else linex1:='';
    if not fieldbyname('o_day').isnull then wdayx1:=fieldbyname('o_day').value else wdayx1:='';
    istylex1:=''; rstylex1:=''; tstylex1:='';
  end;
  end else if query4.fieldbyname('seq').value=8 then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    commandtext:='select * from sp_cap_prj_add(:x1,:x2,:x3,:x4,:x5,:x6) where o_wk=:x7';
    params[0].asstring:=combobox1.text;
    if combobox2.text>'' then
    params[1].asstring:=combobox2.text
    else if combobox1.text='SL' then params[1].asstring:='A'
    else if combobox1.text='KB' then params[1].asstring:='C';
    if opt1.Checked then params[2].asinteger:=1
    else if opt2.Checked then params[2].AsInteger:=2;
    params[3].asinteger:=spinedit1.Value;
    if opt1.Checked then begin
      params[4].asinteger:=spinedit2.Value;
      params[5].AsInteger:=spinedit3.value;
    end else if opt2.Checked then begin
      params[4].asinteger:=spinedit4.Value;
      params[5].AsInteger:=spinedit5.value;
    end;
    params[6].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('o_cust').isnull then custx1:=fieldbyname('o_cust').value else custx1:='';
    if not fieldbyname('o_line').isnull then linex1:=fieldbyname('o_line').value else linex1:='';
    if not fieldbyname('o_day').isnull then wdayx1:=fieldbyname('o_day').value else wdayx1:='';
    istylex1:=''; rstylex1:=''; tstylex1:='';
  end;
  //end else if (query4.fieldbyname('seq').value>=15) and (query4.fieldbyname('seq').value<=17) then begin
  end else if query4.fieldbyname('seq').value=i2 then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    commandtext:='select * from sp_cap_curr_add(:x1,:x2,:x3,:x4,:x5,:x6) where o_wk=:x7';
    params[0].asstring:=combobox1.text;
    if combobox2.text>'' then
    params[1].asstring:=combobox2.text
    else if combobox1.text='SL' then params[1].asstring:='A'
    else if combobox1.text='KB' then params[1].asstring:='C';
    if opt1.Checked then params[2].asinteger:=1
    else if opt2.Checked then params[2].AsInteger:=2;
    params[3].asinteger:=spinedit1.Value;
    if opt1.Checked then begin
      params[4].asinteger:=spinedit2.Value;
      params[5].AsInteger:=spinedit3.value;
    end else if opt2.Checked then begin
      params[4].asinteger:=spinedit4.Value;
      params[5].AsInteger:=spinedit5.value;
    end;
    params[6].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('o_cust').isnull then custx1:=fieldbyname('o_cust').value else custx1:='';
    if not fieldbyname('o_line').isnull then linex1:=fieldbyname('o_line').value else linex1:='';
    if not fieldbyname('o_day').isnull then wdayx1:=fieldbyname('o_day').value else wdayx1:='';
    if not fieldbyname('o_istyle').isnull then istylex1:=fieldbyname('o_istyle').value else istylex1:='';
    if not fieldbyname('o_rstyle').isnull then rstylex1:=fieldbyname('o_rstyle').value else rstylex1:='';
    if not fieldbyname('o_tstyle').isnull then tstylex1:=fieldbyname('o_tstyle').value else tstylex1:='';
  end;
  //end else begin
  //  custx1:=''; linex1:=''; wdayx1:=''; istylex1:=''; rstylex1:=''; tstylex1:='';
  end;
  xt002.Caption:='As at '+formatdatetime('yy-MM-dd',dt)+'    Additional Information:-    # of Cust: '+custx1+'      # of Line: '+linex1+'      # of work days: '+wdayx1+'      # of sect hr/line/work day(normal day: 22      Saturday: 18)      # of style(initial: '+istylex1+'      flow/repeat: '+rstylex1+'      ttl: '+tstylex1+')  ';
  end;
end;

procedure Tfrmnewcap_com.ppGroupFooterBand15BeforePrint(Sender: TObject);
var
  dt:tdate;
  custx1,linex1,wdayx1,istylex1,rstylex1,tstylex1:string;
  i1,i2:integer;
begin
  if xh1.ItemIndex<2 then begin
    i1:=17; i2:=15;
  end else begin
    i1:=21; i2:=20;
  end;
  //xt003
  if label6.Caption='A' then begin
  if query4.FieldByName('seq').value<i1 then ppGroupFooterBand15.Visible:=true
  else ppGroupFooterBand15.Visible:=false;
  if query4.fieldbyname('seq').value<=5 then dt:=ftydt//encodedate(2009,6,05)
  else if query4.fieldbyname('seq').value<=8 then dt:=oadt//encodedate(2009,6,13)
  else dt:=date;
  if query4.fieldbyname('seq').value=5 then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    commandtext:='select * from sp_cap_def_add(:x1,:x2,:x3,:x4,:x5,:x6) where o_wk=:x7';
    params[0].asstring:=combobox1.text;
    if combobox2.text>'' then
    params[1].asstring:=combobox2.text
    else params[1].asstring:='B';
    if opt1.Checked then params[2].asinteger:=1
    else if opt2.Checked then params[2].AsInteger:=2;
    params[3].asinteger:=spinedit1.Value;
    if opt1.Checked then begin
      params[4].asinteger:=spinedit2.Value;
      params[5].AsInteger:=spinedit3.value;
    end else if opt2.Checked then begin
      params[4].asinteger:=spinedit4.Value;
      params[5].AsInteger:=spinedit5.value;
    end;
    params[6].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('o_cust').isnull then custx1:=fieldbyname('o_cust').value else custx1:='';
    if not fieldbyname('o_line').isnull then linex1:=fieldbyname('o_line').value else linex1:='';
    if not fieldbyname('o_day').isnull then wdayx1:=fieldbyname('o_day').value else wdayx1:='';
    istylex1:=''; rstylex1:=''; tstylex1:='';
  end;
  end else if query4.fieldbyname('seq').value=8 then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    commandtext:='select * from sp_cap_prj_add(:x1,:x2,:x3,:x4,:x5,:x6) where o_wk=:x7';
    params[0].asstring:=combobox1.text;
    if combobox2.text>'' then
    params[1].asstring:=combobox2.text
    else params[1].asstring:='B';
    if opt1.Checked then params[2].asinteger:=1
    else if opt2.Checked then params[2].AsInteger:=2;
    params[3].asinteger:=spinedit1.Value;
    if opt1.Checked then begin
      params[4].asinteger:=spinedit2.Value;
      params[5].AsInteger:=spinedit3.value;
    end else if opt2.Checked then begin
      params[4].asinteger:=spinedit4.Value;
      params[5].AsInteger:=spinedit5.value;
    end;
    params[6].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('o_cust').isnull then custx1:=fieldbyname('o_cust').value else custx1:='';
    if not fieldbyname('o_line').isnull then linex1:=fieldbyname('o_line').value else linex1:='';
    if not fieldbyname('o_day').isnull then wdayx1:=fieldbyname('o_day').value else wdayx1:='';
    istylex1:=''; rstylex1:=''; tstylex1:='';
  end;
  //end else if (query4.fieldbyname('seq').value>=15) and (query4.fieldbyname('seq').value<=17) then begin
  end else if query4.fieldbyname('seq').value=i2 then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    commandtext:='select * from sp_cap_curr_add(:x1,:x2,:x3,:x4,:x5,:x6) where o_wk=:x7';
    params[0].asstring:=combobox1.text;
    if combobox2.text>'' then
    params[1].asstring:=combobox2.text
    else params[1].asstring:='B';
    if opt1.Checked then params[2].asinteger:=1
    else if opt2.Checked then params[2].AsInteger:=2;
    params[3].asinteger:=spinedit1.Value;
    if opt1.Checked then begin
      params[4].asinteger:=spinedit2.Value;
      params[5].AsInteger:=spinedit3.value;
    end else if opt2.Checked then begin
      params[4].asinteger:=spinedit4.Value;
      params[5].AsInteger:=spinedit5.value;
    end;
    params[6].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('o_cust').isnull then custx1:=fieldbyname('o_cust').value else custx1:='';
    if not fieldbyname('o_line').isnull then linex1:=fieldbyname('o_line').value else linex1:='';
    if not fieldbyname('o_day').isnull then wdayx1:=fieldbyname('o_day').value else wdayx1:='';
    if not fieldbyname('o_istyle').isnull then istylex1:=fieldbyname('o_istyle').value else istylex1:='';
    if not fieldbyname('o_rstyle').isnull then rstylex1:=fieldbyname('o_rstyle').value else rstylex1:='';
    if not fieldbyname('o_tstyle').isnull then tstylex1:=fieldbyname('o_tstyle').value else tstylex1:='';
  end;
  //end else begin
  //  custx1:=''; linex1:=''; wdayx1:=''; istylex1:=''; rstylex1:=''; tstylex1:='';
  end;
  xt003.Caption:='As at '+formatdatetime('yy-MM-dd',dt)+'    Additional Information:-    # of Cust: '+custx1+'      # of Line: '+linex1+'      # of work days: '+wdayx1+'      # of sect hr/line/work day(normal day: 22      Saturday: 18)      # of style(initial: '+istylex1+'      flow/repeat: '+rstylex1+'      ttl: '+tstylex1+')  ';
  end;
end;

procedure Tfrmnewcap_com.ppGroupFooterBand16BeforePrint(Sender: TObject);
var
  dt:tdate;
  custx1,linex1,wdayx1,istylex1,rstylex1,tstylex1:string;
  i1,i2:integer;
begin
  if xh1.ItemIndex<2 then begin
    i1:=17; i2:=15;
  end else begin
    i1:=21; i2:=20;
  end;
  //xt004
  if label6.Caption='A' then begin
  if query4.FieldByName('seq').value<i1 then ppGroupFooterBand16.Visible:=true
  else ppGroupFooterBand16.Visible:=false;
  if query4.fieldbyname('seq').value<=5 then dt:=ftydt//encodedate(2009,6,05)
  else if query4.fieldbyname('seq').value<=8 then dt:=oadt//encodedate(2009,6,13)
  else dt:=date;
  if query4.fieldbyname('seq').value=5 then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    commandtext:='select * from sp_cap_def_add(:x1,:x2,:x3,:x4,:x5,:x6) where o_wk=:x7';
    params[0].asstring:=combobox1.text;
    if combobox2.text>'' then
    params[1].asstring:=combobox2.text
    else params[1].asstring:='C';
    if opt1.Checked then params[2].asinteger:=1
    else if opt2.Checked then params[2].AsInteger:=2;
    params[3].asinteger:=spinedit1.Value;
    if opt1.Checked then begin
      params[4].asinteger:=spinedit2.Value;
      params[5].AsInteger:=spinedit3.value;
    end else if opt2.Checked then begin
      params[4].asinteger:=spinedit4.Value;
      params[5].AsInteger:=spinedit5.value;
    end;
    params[6].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('o_cust').isnull then custx1:=fieldbyname('o_cust').value else custx1:='';
    if not fieldbyname('o_line').isnull then linex1:=fieldbyname('o_line').value else linex1:='';
    if not fieldbyname('o_day').isnull then wdayx1:=fieldbyname('o_day').value else wdayx1:='';
    istylex1:=''; rstylex1:=''; tstylex1:='';
  end;
  end else if query4.fieldbyname('seq').value=8 then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    commandtext:='select * from sp_cap_prj_add(:x1,:x2,:x3,:x4,:x5,:x6) where o_wk=:x7';
    params[0].asstring:=combobox1.text;
    if combobox2.text>'' then
    params[1].asstring:=combobox2.text
    else params[1].asstring:='C';
    if opt1.Checked then params[2].asinteger:=1
    else if opt2.Checked then params[2].AsInteger:=2;
    params[3].asinteger:=spinedit1.Value;
    if opt1.Checked then begin
      params[4].asinteger:=spinedit2.Value;
      params[5].AsInteger:=spinedit3.value;
    end else if opt2.Checked then begin
      params[4].asinteger:=spinedit4.Value;
      params[5].AsInteger:=spinedit5.value;
    end;
    params[6].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('o_cust').isnull then custx1:=fieldbyname('o_cust').value else custx1:='';
    if not fieldbyname('o_line').isnull then linex1:=fieldbyname('o_line').value else linex1:='';
    if not fieldbyname('o_day').isnull then wdayx1:=fieldbyname('o_day').value else wdayx1:='';
    istylex1:=''; rstylex1:=''; tstylex1:='';
  end;
  //end else if (query4.fieldbyname('seq').value>=15) and (query4.fieldbyname('seq').value<=17) then begin
  end else if query4.fieldbyname('seq').value=i2 then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    commandtext:='select * from sp_cap_curr_add(:x1,:x2,:x3,:x4,:x5,:x6) where o_wk=:x7';
    params[0].asstring:=combobox1.text;
    if combobox2.text>'' then
    params[1].asstring:=combobox2.text
    else params[1].asstring:='C';
    if opt1.Checked then params[2].asinteger:=1
    else if opt2.Checked then params[2].AsInteger:=2;
    params[3].asinteger:=spinedit1.Value;
    if opt1.Checked then begin
      params[4].asinteger:=spinedit2.Value;
      params[5].AsInteger:=spinedit3.value;
    end else if opt2.Checked then begin
      params[4].asinteger:=spinedit4.Value;
      params[5].AsInteger:=spinedit5.value;
    end;
    params[6].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('o_cust').isnull then custx1:=fieldbyname('o_cust').value else custx1:='';
    if not fieldbyname('o_line').isnull then linex1:=fieldbyname('o_line').value else linex1:='';
    if not fieldbyname('o_day').isnull then wdayx1:=fieldbyname('o_day').value else wdayx1:='';
    if not fieldbyname('o_istyle').isnull then istylex1:=fieldbyname('o_istyle').value else istylex1:='';
    if not fieldbyname('o_rstyle').isnull then rstylex1:=fieldbyname('o_rstyle').value else rstylex1:='';
    if not fieldbyname('o_tstyle').isnull then tstylex1:=fieldbyname('o_tstyle').value else tstylex1:='';
  end;
  //end else begin
  //  custx1:=''; linex1:=''; wdayx1:=''; istylex1:=''; rstylex1:=''; tstylex1:='';
  end;
  xt004.Caption:='As at '+formatdatetime('yy-MM-dd',dt)+'    Additional Information:-    # of Cust: '+custx1+'      # of Line: '+linex1+'      # of work days: '+wdayx1+'      # of sect hr/line/work day(normal day: 22      Saturday: 18)      # of style(initial: '+istylex1+'      flow/repeat: '+rstylex1+'      ttl: '+tstylex1+')  ';
  end;
end;

procedure Tfrmnewcap_com.HideSomeGroup1Click(Sender: TObject);
begin
  chk1.Checked:=true;
end;

procedure Tfrmnewcap_com.ShowGroup1Click(Sender: TObject);
begin
  chk1.Checked:=false;
end;

procedure Tfrmnewcap_com.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
  {
  //ppGroup6.KeptTogether:=true;
  //ppGroup8.KeptTogether:=true;
  //ppGroup10.KeptTogether:=true;
  //ppGroup12.KeptTogether:=true;
  if query4.Active then begin
    if query4.fieldbyname('wk').value=98 then begin
      ppGroup6.NewPage:=true;
      ppGroup8.NewPage:=true;
      ppGroup10.NewPage:=true;
      ppGroup12.NewPage:=true;
      ppGroup6.KeptTogether:=false;
      ppGroup8.KeptTogether:=false;
      ppGroup10.KeptTogether:=false;
      ppGroup12.KeptTogether:=false;
    end else if query4.fieldbyname('wk').value<>98 then begin
      ppGroup6.NewPage:=false;
      ppGroup8.NewPage:=false;
      ppGroup10.NewPage:=false;
      ppGroup12.NewPage:=false;
      ppGroup6.KeptTogether:=true;
      ppGroup8.KeptTogether:=true;
      ppGroup10.KeptTogether:=true;
      ppGroup12.KeptTogether:=true;
    end;
  end;
  }
end;

procedure Tfrmnewcap_com.BitBtn3Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  if datetimepicker1.DateTime>now-1 then tm:=datetimepicker1.DateTime
  else tm:=now;
  try
  if xh1.ItemIndex<=2 then begin
    with query5 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_loggdt';
      open;
      if not fieldbyname('ftydt').isnull then ftydt:=fieldbyname('ftydt').value else ftydt:=date;
      if not fieldbyname('oadt').isnull then oadt:=fieldbyname('oadt').value else oadt:=date;
    end;
    if datetimepicker1.DateTime<now-1 then begin
      //datetimepicker1.DateTime:=tm;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='insert into tbl_cap_oafty_custseq_tmp(seq,cust,grp,tplant,tm) select seq,cust,grp,tplant,:x1 from tbl_cap_oafty_custseq where 0=0';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
        params[0].asdatetime:=tm;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        if opt1.Checked then begin
          //commandtext:='execute procedure sp_gen_cap_oaftytmp(:x1,:x2,:x3,:x4,:x5)';
          commandtext:='execute procedure sp_cap_oaftytmp(:x1,:x2,:x3,:x4,:x5)';
          params[0].asdatetime:=tm;
          params[1].asstring:=combobox1.text;
          params[2].asinteger:=spinedit1.Value;
          params[3].asinteger:=spinedit2.Value;
          params[4].asinteger:=spinedit3.Value;
        end else if opt2.Checked then begin
          //commandtext:='execute procedure sp_gen_cap_oaftytmp_m(:x1,:x2,:x3,:x4,:x5)';
          commandtext:='execute procedure sp_cap_oaftytmp_m(:x1,:x2,:x3,:x4,:x5)';
          params[0].asdatetime:=tm;
          params[1].asstring:=combobox1.text;
          params[2].asinteger:=spinedit1.Value;
          params[3].asinteger:=spinedit4.Value;
          params[4].asinteger:=spinedit5.Value;
        end;
        execute;
      end;
    end;
    
      //if chk2.Checked then begin
        if (combobox1.text='SL') and (combobox2.text='') then begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            params.createparam(ftstring,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            params.createparam(ftinteger,'x4',ptinput);
            params.createparam(ftinteger,'x5',ptinput);
            commandtext:='execute procedure sp_cap_oaftytmp_sum(:x1,:x2,:x3,:x4,:x5)';
            params[0].asdatetime:=tm;
            params[1].asstring:=combobox1.text;
            params[2].asinteger:=spinedit1.Value;
            if opt1.Checked then begin
              params[3].asinteger:=spinedit2.Value;
              params[4].asinteger:=spinedit3.Value;
            end else if opt2.Checked then begin
              params[3].asinteger:=spinedit4.Value;
              params[4].asinteger:=spinedit5.Value;
            end;
            execute;
          end;
          if frmnewcap_sum=nil then frmnewcap_sum:=tfrmnewcap_sum.Create(nil);
          with frmnewcap_sum.Query4 do begin
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select * from tbl_cap_oafty_tmp02_s where tm=:x1 and seq not in (13,16) order by wk,seq';
            params[0].asdatetime:=tm;
            open;
            if not fieldbyname('tm').isnull then begin
                  frmnewcap_sum.fty001.Caption:=combobox1.text;
                  frmnewcap_sum.yr001.Caption:=inttostr(spinedit1.Value);
                  if opt1.Checked then begin
                    frmnewcap_sum.wk001.Caption:=inttostr(spinedit2.Value);
                    frmnewcap_sum.wk002.Caption:=inttostr(spinedit3.Value);
                    frmnewcap_sum.x001.Caption:='Week from ';
                    frmnewcap_sum.x002.Caption:='to ';
                    frmnewcap_sum.tc01.Caption:='All Divisions';
                    frmnewcap_sum.w0001.Caption:='Week/Content ';
                  end else if opt2.Checked then begin
                    frmnewcap_sum.wk001.Caption:=inttostr(spinedit4.Value);
                    frmnewcap_sum.wk002.Caption:=inttostr(spinedit5.Value);
                    frmnewcap_sum.x001.Caption:='Month from ';
                    frmnewcap_sum.x002.Caption:='to ';
                    frmnewcap_sum.tc01.Caption:='All Divisions';
                    frmnewcap_sum.w0001.Caption:='Month/Content ';
                  end;
                  if xh1.ItemIndex=0 then begin
                    frmnewcap_sum.title001.Caption:=' -  Comparison 1  (WO Ex-fty)        [Division dependent]  ';
                  end else if xh1.ItemIndex=1 then begin
                    frmnewcap_sum.title001.Caption:=' -  Comparison 2  (RWO Ex-fty)        [Division dependent]  ';
                  end else if xh1.ItemIndex=2 then begin
                    frmnewcap_sum.title001.Caption:=' -  Comparison 3  (T3 Date)        [Division dependent]  ';
                  end;
                  frmnewcap_sum.ppReport1.Print;
            end;
          end;
        end;
      //end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_com.BitBtn5Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  if datetimepicker1.DateTime>now-1 then tm:=datetimepicker1.DateTime
  else tm:=now;
  try
  label6.Caption:='B';
  if xh1.ItemIndex<=2 then begin
    with query5 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_loggdt';
      open;
      if not fieldbyname('ftydt').isnull then ftydt:=fieldbyname('ftydt').value else ftydt:=date;
      if not fieldbyname('oadt').isnull then oadt:=fieldbyname('oadt').value else oadt:=date;
    end;
    if datetimepicker1.DateTime<now-1 then begin
      //datetimepicker1.DateTime:=tm;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='insert into tbl_cap_oafty_custseq_tmp(seq,cust,grp,tplant,tm) select seq,cust,grp,tplant,:x1 from tbl_cap_oafty_custseq where 0=0';
        if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
        params[0].asdatetime:=tm;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        if opt1.Checked then begin
          if xh1.ItemIndex=0 then
          commandtext:='execute procedure sp_cap_oaftytmp(:x1,:x2,:x3,:x4,:x5)'
          else if xh1.ItemIndex=1 then
          commandtext:='execute procedure sp_cap_oaftytmp_rwo(:x1,:x2,:x3,:x4,:x5)'
          else if xh1.ItemIndex=2 then
          commandtext:='execute procedure sp_cap_oaftytmp_t3(:x1,:x2,:x3,:x4,:x5)';
          params[0].asdatetime:=tm;
          params[1].asstring:=combobox1.text;
          params[2].asinteger:=spinedit1.Value;
          params[3].asinteger:=spinedit2.Value;
          params[4].asinteger:=spinedit3.Value;
        end else if opt2.Checked then begin
          if xh1.ItemIndex=0 then
          commandtext:='execute procedure sp_cap_oaftytmp_m(:x1,:x2,:x3,:x4,:x5)'
          else if xh1.ItemIndex=1 then
          commandtext:='execute procedure sp_cap_oaftytmp_rwo_m(:x1,:x2,:x3,:x4,:x5)'
          else if xh1.ItemIndex=2 then
          commandtext:='execute procedure sp_cap_oaftytmp_t3_m(:x1,:x2,:x3,:x4,:x5)';
          params[0].asdatetime:=tm;
          params[1].asstring:=combobox1.text;
          params[2].asinteger:=spinedit1.Value;
          params[3].asinteger:=spinedit4.Value;
          params[4].asinteger:=spinedit5.Value;
        end;
        execute;
      end;
    end;
    
      if xh1.ItemIndex=0 then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          commandtext:='update tbl_cap_oafty_tmp02 set sdsc=''3b) WO Ex-fty'' where tm=:x1 and seq=15';
          params[0].asdatetime:=tm;
          execute;
        end;
      end else if xh1.ItemIndex=1 then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          commandtext:='update tbl_cap_oafty_tmp02 set sdsc=''3b) RWO Ex-fty'' where tm=:x1 and seq=15';
          params[0].asdatetime:=tm;
          execute;
        end;
      end else if xh1.ItemIndex=2 then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          commandtext:='update tbl_cap_oafty_tmp02 set sdsc=''3b) Curr T3'' where tm=:x1 and seq=18';
          params[0].asdatetime:=tm;
          execute;
        end;
      end;
      with query5 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        params.createparam(ftinteger,'x6',ptinput);
        commandtext:='select * from sp_cap_oafty_ttl(:x1,:x2,:x3,:x4,:x5,:x6)';
        params[0].asdatetime:=tm;
        params[1].asstring:=combobox1.text;
        if opt1.Checked then begin
          params[2].asstring:='W';
          params[3].asinteger:=spinedit1.Value;
          params[4].asinteger:=spinedit2.Value;
          params[5].asinteger:=spinedit3.Value;
        end else begin
          params[2].asstring:='M';
          params[3].asinteger:=spinedit1.Value;
          params[4].asinteger:=spinedit4.Value;
          params[5].asinteger:=spinedit5.Value;
        end;
        open;
      end;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        if xh1.ItemIndex<2 then
        commandtext:='select * from tbl_cap_oafty_tmp02 where tm=:x1 and seq>=9 and seq<=16 order by wk,seq'
        else commandtext:='select * from tbl_cap_oafty_tmp02 where tm=:x1 and seq>=9 and seq<=19 order by wk,nseq';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          fty001.Caption:=combobox1.text;
          yr001.Caption:=inttostr(spinedit1.Value);
          if opt1.Checked then begin
            wk001.Caption:=inttostr(spinedit2.Value);
            wk002.Caption:=inttostr(spinedit3.Value);
            x001.Caption:='Week from ';
            x002.Caption:='to ';
            if combobox2.text='' then begin
            tc01.Caption:='All Divisions';
            tc02.Caption:='All Divisions';
            tc03.Caption:='All Divisions';
            tc04.Caption:='All Divisions';
            tc05.Caption:='All Divisions';
            end else begin
            tc01.Caption:='Cust dependent';
            tc02.Caption:='Cust dependent';
            tc03.Caption:='Cust dependent';
            tc04.Caption:='Cust dependent';
            tc05.Caption:='Cust dependent';
            end;
            w0001.Caption:='Week';
            w0002.Caption:='Week';
            w0003.Caption:='Week';
            w0004.Caption:='Week';
            w0005.Caption:='Week';
          end else if opt2.Checked then begin
            wk001.Caption:=inttostr(spinedit4.Value);
            wk002.Caption:=inttostr(spinedit5.Value);
            x001.Caption:='Month from ';
            x002.Caption:='to ';
            if combobox2.text='' then begin
            tc01.Caption:='All Divisions';
            tc02.Caption:='All Divisions';
            tc03.Caption:='All Divisions';
            tc04.Caption:='All Divisions';
            tc05.Caption:='All Divisions';
            end else begin
            tc01.Caption:='Cust dependent';
            tc02.Caption:='Cust dependent';
            tc03.Caption:='Cust dependent';
            tc04.Caption:='Cust dependent';
            tc05.Caption:='Cust dependent';
            end;
            w0001.Caption:='Month';
            w0002.Caption:='Month';
            w0003.Caption:='Month';
            w0004.Caption:='Month';
            w0005.Caption:='Month';
          end;
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select * from tbl_cap_oa_tmp01 where tm=:x1';
            params[0].asdatetime:=tm;
            open;
          end;
          if (combobox2.text='B') or ((combobox1.text='KB') and (combobox2.text='C')) or ((combobox1.text='FJ') and ((combobox2.text='A') or (combobox2.text='C'))) then begin
            tm001.Caption:='Division  '+combobox2.text;
            ac01.Caption:=''; ac02.Caption:=''; ac03.Caption:=''; ac04.Caption:='';
            at006.Visible:=false; at007.Visible:=false; at008.Visible:=false; at009.Visible:=false; at010.Visible:=false;
            at011.Visible:=false; at012.Visible:=false; at013.Visible:=false; at014.Visible:=false; at015.Visible:=false;
            at016.Visible:=false; at017.Visible:=false; at018.Visible:=false; at019.Visible:=false; at020.Visible:=false;
            ax006.Visible:=false; ax007.Visible:=false; ax008.Visible:=false; ax009.Visible:=false; ax010.Visible:=false;
            ax011.Visible:=false; ax012.Visible:=false; ax013.Visible:=false; ax014.Visible:=false; ax015.Visible:=false;
            ax016.Visible:=false; ax017.Visible:=false; ax018.Visible:=false; ax019.Visible:=false; ax020.Visible:=false;
            ppSubReport2.Visible:=false;
            if xh1.ItemIndex<2 then begin
              ppRichText1.Visible:=true;
              ppRichText2.Visible:=false;
            end else if xh1.ItemIndex=2 then begin
              ppRichText2.Visible:=true;
              ppRichText1.Visible:=false;
            end;
            ac01.Caption:=query3.fieldbyname('c1').Value;
            ax001.DataField:='B01'; ax002.DataField:='K01'; ax003.DataField:='U01'; ax004.DataField:='T01'; ax005.DataField:='B17';
            if not query3.fieldbyname('c2').isnull then begin
              ac02.Caption:=query3.fieldbyname('c2').value;
              at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
              ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
              ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
            end else if not query3.fieldbyname('c3').isnull then begin
              ac03.Caption:=query3.fieldbyname('c3').value;
              at011.Visible:=true; at012.Visible:=true; at013.Visible:=true; at014.Visible:=true; at015.Visible:=true;
              ax011.Visible:=true; ax012.Visible:=true; ax013.Visible:=true; ax014.Visible:=true; ax015.Visible:=true;
              ax011.DataField:='B03'; ax012.DataField:='K03'; ax013.DataField:='U03'; ax014.DataField:='T03'; ax015.DataField:='U17';
            end else if not query3.fieldbyname('c4').isnull then begin
              ac04.Caption:=query3.fieldbyname('c4').value;
              at016.Visible:=true; at017.Visible:=true; at018.Visible:=true; at019.Visible:=true; at020.Visible:=true;
              ax016.Visible:=true; ax017.Visible:=true; ax018.Visible:=true; ax019.Visible:=true; ax020.Visible:=true;
              ax016.DataField:='B04'; ax017.DataField:='K04'; ax018.DataField:='U04'; ax019.DataField:='T04'; ax020.DataField:='T17';
            end;
          end else begin
            if combobox1.text='SL' then begin
              if (combobox2.text='A') or (combobox2.text='C') then begin
                    tm001.Caption:='Division  '+combobox2.text;
                    if not query3.fieldbyname('c5').isnull then begin
                      ppGroupFooterBand7.Visible:=false;
                      ppGroupFooterBand5.Visible:=true;
                      if xh1.ItemIndex<2 then begin
                        ppRichText3.Visible:=true;
                        ppRichText4.Visible:=false;
                      end else if xh1.ItemIndex=2 then begin
                        ppRichText4.Visible:=true;
                        ppRichText3.Visible:=false;
                      end;
                      ppSummaryBand3.Visible:=true;
                    end;
                    ppSummaryBand4.Visible:=false;
                    ac01.Caption:=''; ac02.Caption:=''; ac03.Caption:=''; ac04.Caption:='';
                    bc001.Caption:=''; bc002.Caption:=''; bc003.Caption:=''; bc004.Caption:='';
                    at006.Visible:=false; at007.Visible:=false; at008.Visible:=false; at009.Visible:=false; at010.Visible:=false;
                    at011.Visible:=false; at012.Visible:=false; at013.Visible:=false; at014.Visible:=false; at015.Visible:=false;
                    at016.Visible:=false; at017.Visible:=false; at018.Visible:=false; at019.Visible:=false; at020.Visible:=false;
                    ax006.Visible:=false; ax007.Visible:=false; ax008.Visible:=false; ax009.Visible:=false; ax010.Visible:=false;
                    ax011.Visible:=false; ax012.Visible:=false; ax013.Visible:=false; ax014.Visible:=false; ax015.Visible:=false;
                    ax016.Visible:=false; ax017.Visible:=false; ax018.Visible:=false; ax019.Visible:=false; ax020.Visible:=false;
                    bt006.Visible:=false; bt007.Visible:=false; bt008.Visible:=false; bt009.Visible:=false; bt010.Visible:=false;
                    bt011.Visible:=false; bt012.Visible:=false; bt013.Visible:=false; bt014.Visible:=false; bt015.Visible:=false;
                    bt016.Visible:=false; bt017.Visible:=false; bt018.Visible:=false; bt019.Visible:=false; bt020.Visible:=false;
                    bx006.Visible:=false; bx007.Visible:=false; bx008.Visible:=false; bx009.Visible:=false; bx010.Visible:=false;
                    bx011.Visible:=false; bx012.Visible:=false; bx013.Visible:=false; bx014.Visible:=false; bx015.Visible:=false;
                    bx016.Visible:=false; bx017.Visible:=false; bx018.Visible:=false; bx019.Visible:=false; bx020.Visible:=false;
                    ac01.Caption:=query3.fieldbyname('c1').Value;
                    ax001.DataField:='B01'; ax002.DataField:='K01'; ax003.DataField:='U01'; ax004.DataField:='T01'; ax005.DataField:='B17';
                    if not query3.fieldbyname('c8').isnull then begin
                      ac02.Caption:=query3.fieldbyname('c2').value; ac03.Caption:=query3.fieldbyname('c3').value; ac04.Caption:=query3.fieldbyname('c4').value;
                      at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
                      ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                      ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
                      at011.Visible:=true; at012.Visible:=true; at013.Visible:=true; at014.Visible:=true; at015.Visible:=true;
                      ax011.Visible:=true; ax012.Visible:=true; ax013.Visible:=true; ax014.Visible:=true; ax015.Visible:=true;
                      ax011.DataField:='B03'; ax012.DataField:='K03'; ax013.DataField:='U03'; ax014.DataField:='T03'; ax015.DataField:='U17';
                      at016.Visible:=true; at017.Visible:=true; at018.Visible:=true; at019.Visible:=true; at020.Visible:=true;
                      ax016.Visible:=true; ax017.Visible:=true; ax018.Visible:=true; ax019.Visible:=true; ax020.Visible:=true;
                      ax016.DataField:='B04'; ax017.DataField:='K04'; ax018.DataField:='U04'; ax019.DataField:='T04'; ax020.DataField:='T17';
                      bc001.Caption:=query3.fieldbyname('c5').value; bc002.Caption:=query3.fieldbyname('c6').value;
                      bc003.Caption:=query3.fieldbyname('c7').value; bc004.Caption:=query3.fieldbyname('c8').value;
                      bt001.Visible:=true; bt002.Visible:=true; bt003.Visible:=true; bt004.Visible:=true; bt005.Visible:=true;
                      bt006.Visible:=true; bt007.Visible:=true; bt008.Visible:=true; bt009.Visible:=true; bt010.Visible:=true;
                      bt011.Visible:=true; bt012.Visible:=true; bt013.Visible:=true; bt014.Visible:=true; bt015.Visible:=true;
                      bt016.Visible:=true; bt017.Visible:=true; bt018.Visible:=true; bt019.Visible:=true; bt020.Visible:=true;
                      bx001.DataField:='B05'; bx002.DataField:='K05'; bx003.DataField:='U05'; bx004.DataField:='T05'; bx005.DataField:='B18';
                      bx006.DataField:='B06'; bx007.DataField:='K06'; bx008.DataField:='U06'; bx009.DataField:='T06'; bx010.DataField:='K18';
                      bx011.DataField:='B07'; bx012.DataField:='K07'; bx013.DataField:='U07'; bx014.DataField:='T07'; bx015.DataField:='U18';
                      bx016.DataField:='B08'; bx017.DataField:='K08'; bx018.DataField:='U08'; bx019.DataField:='T06'; bx020.DataField:='T18';
                      bx001.Visible:=true; bx002.Visible:=true; bx003.Visible:=true; bx004.Visible:=true; bx005.Visible:=true;
                      bx006.Visible:=true; bx007.Visible:=true; bx008.Visible:=true; bx009.Visible:=true; bx010.Visible:=true;
                      bx011.Visible:=true; bx012.Visible:=true; bx013.Visible:=true; bx014.Visible:=true; bx015.Visible:=true;
                      bx016.Visible:=true; bx017.Visible:=true; bx018.Visible:=true; bx019.Visible:=true; bx020.Visible:=true;
                    end else if not query3.fieldbyname('c7').isnull then begin
                      ac02.Caption:=query3.fieldbyname('c2').value; ac03.Caption:=query3.fieldbyname('c3').value; ac04.Caption:=query3.fieldbyname('c4').value;
                      at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
                      ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                      ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
                      at011.Visible:=true; at012.Visible:=true; at013.Visible:=true; at014.Visible:=true; at015.Visible:=true;
                      ax011.Visible:=true; ax012.Visible:=true; ax013.Visible:=true; ax014.Visible:=true; ax015.Visible:=true;
                      ax011.DataField:='B03'; ax012.DataField:='K03'; ax013.DataField:='U03'; ax014.DataField:='T03'; ax015.DataField:='U17';
                      at016.Visible:=true; at017.Visible:=true; at018.Visible:=true; at019.Visible:=true; at020.Visible:=true;
                      ax016.Visible:=true; ax017.Visible:=true; ax018.Visible:=true; ax019.Visible:=true; ax020.Visible:=true;
                      ax016.DataField:='B04'; ax017.DataField:='K04'; ax018.DataField:='U04'; ax019.DataField:='T04'; ax020.DataField:='T17';
                      bc001.Caption:=query3.fieldbyname('c5').value; bc002.Caption:=query3.fieldbyname('c6').value; bc003.Caption:=query3.fieldbyname('c7').value;
                      bt001.Visible:=true; bt002.Visible:=true; bt003.Visible:=true; bt004.Visible:=true; bt005.Visible:=true;
                      bt006.Visible:=true; bt007.Visible:=true; bt008.Visible:=true; bt009.Visible:=true; bt010.Visible:=true;
                      bt011.Visible:=true; bt012.Visible:=true; bt013.Visible:=true; bt014.Visible:=true; bt015.Visible:=true;
                      bx001.DataField:='B05'; bx002.DataField:='K05'; bx003.DataField:='U05'; bx004.DataField:='T05'; bx005.DataField:='B18';
                      bx006.DataField:='B06'; bx007.DataField:='K06'; bx008.DataField:='U06'; bx009.DataField:='T06'; bx010.DataField:='K18';
                      bx011.DataField:='B07'; bx012.DataField:='K07'; bx013.DataField:='U07'; bx014.DataField:='T07'; bx015.DataField:='U18';
                      bx001.Visible:=true; bx002.Visible:=true; bx003.Visible:=true; bx004.Visible:=true; bx005.Visible:=true;
                      bx006.Visible:=true; bx007.Visible:=true; bx008.Visible:=true; bx009.Visible:=true; bx010.Visible:=true;
                      bx011.Visible:=true; bx012.Visible:=true; bx013.Visible:=true; bx014.Visible:=true; bx015.Visible:=true;
                    end else if not query3.fieldbyname('c6').isnull then begin
                      ac02.Caption:=query3.fieldbyname('c2').value; ac03.Caption:=query3.fieldbyname('c3').value; ac04.Caption:=query3.fieldbyname('c4').value;
                      at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
                      ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                      ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
                      at011.Visible:=true; at012.Visible:=true; at013.Visible:=true; at014.Visible:=true; at015.Visible:=true;
                      ax011.Visible:=true; ax012.Visible:=true; ax013.Visible:=true; ax014.Visible:=true; ax015.Visible:=true;
                      ax011.DataField:='B03'; ax012.DataField:='K03'; ax013.DataField:='U03'; ax014.DataField:='T03'; ax015.DataField:='U17';
                      at016.Visible:=true; at017.Visible:=true; at018.Visible:=true; at019.Visible:=true; at020.Visible:=true;
                      ax016.Visible:=true; ax017.Visible:=true; ax018.Visible:=true; ax019.Visible:=true; ax020.Visible:=true;
                      ax016.DataField:='B04'; ax017.DataField:='K04'; ax018.DataField:='U04'; ax019.DataField:='T04'; ax020.DataField:='T17';
                      bc001.Caption:=query3.fieldbyname('c5').value; bc002.Caption:=query3.fieldbyname('c6').value;
                      bt001.Visible:=true; bt002.Visible:=true; bt003.Visible:=true; bt004.Visible:=true; bt005.Visible:=true;
                      bt006.Visible:=true; bt007.Visible:=true; bt008.Visible:=true; bt009.Visible:=true; bt010.Visible:=true;
                      bx001.DataField:='B05'; bx002.DataField:='K05'; bx003.DataField:='U05'; bx004.DataField:='T05'; bx005.DataField:='B18';
                      bx006.DataField:='B06'; bx007.DataField:='K06'; bx008.DataField:='U06'; bx009.DataField:='T06'; bx010.DataField:='K18';
                      bx001.Visible:=true; bx002.Visible:=true; bx003.Visible:=true; bx004.Visible:=true; bx005.Visible:=true;
                      bx006.Visible:=true; bx007.Visible:=true; bx008.Visible:=true; bx009.Visible:=true; bx010.Visible:=true;
                    end else if not query3.fieldbyname('c5').isnull then begin
                      ac02.Caption:=query3.fieldbyname('c2').value; ac03.Caption:=query3.fieldbyname('c3').value; ac04.Caption:=query3.fieldbyname('c4').value;
                      at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
                      ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                      ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
                      at011.Visible:=true; at012.Visible:=true; at013.Visible:=true; at014.Visible:=true; at015.Visible:=true;
                      ax011.Visible:=true; ax012.Visible:=true; ax013.Visible:=true; ax014.Visible:=true; ax015.Visible:=true;
                      ax011.DataField:='B03'; ax012.DataField:='K03'; ax013.DataField:='U03'; ax014.DataField:='T03'; ax015.DataField:='U17';
                      at016.Visible:=true; at017.Visible:=true; at018.Visible:=true; at019.Visible:=true; at020.Visible:=true;
                      ax016.Visible:=true; ax017.Visible:=true; ax018.Visible:=true; ax019.Visible:=true; ax020.Visible:=true;
                      ax016.DataField:='B04'; ax017.DataField:='K04'; ax018.DataField:='U04'; ax019.DataField:='T04'; ax020.DataField:='T17';
                      bc001.Caption:=query3.fieldbyname('c5').value;
                      bx001.DataField:='B05'; bx002.DataField:='K05'; bx003.DataField:='U05'; bx004.DataField:='T05'; bx005.DataField:='B18';
                      bt001.Visible:=true; bt002.Visible:=true; bt003.Visible:=true; bt004.Visible:=true; bt005.Visible:=true;
                      bx001.Visible:=true; bx002.Visible:=true; bx003.Visible:=true; bx004.Visible:=true; bx005.Visible:=true;
                    end else if not query3.fieldbyname('c4').isnull then begin
                      ac02.Caption:=query3.fieldbyname('c2').value; ac03.Caption:=query3.fieldbyname('c3').value; ac04.Caption:=query3.fieldbyname('c4').value;
                      at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
                      ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                      ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
                      at011.Visible:=true; at012.Visible:=true; at013.Visible:=true; at014.Visible:=true; at015.Visible:=true;
                      ax011.Visible:=true; ax012.Visible:=true; ax013.Visible:=true; ax014.Visible:=true; ax015.Visible:=true;
                      ax011.DataField:='B03'; ax012.DataField:='K03'; ax013.DataField:='U03'; ax014.DataField:='T03'; ax015.DataField:='U17';
                      at016.Visible:=true; at017.Visible:=true; at018.Visible:=true; at019.Visible:=true; at020.Visible:=true;
                      ax016.Visible:=true; ax017.Visible:=true; ax018.Visible:=true; ax019.Visible:=true; ax020.Visible:=true;
                      ax016.DataField:='B04'; ax017.DataField:='K04'; ax018.DataField:='U04'; ax019.DataField:='T04'; ax020.DataField:='T17';
                    end else if not query3.fieldbyname('c3').isnull then begin
                      ac02.Caption:=query3.fieldbyname('c2').value; ac03.Caption:=query3.fieldbyname('c3').value;
                      at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
                      ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                      ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
                      at011.Visible:=true; at012.Visible:=true; at013.Visible:=true; at014.Visible:=true; at015.Visible:=true;
                      ax011.Visible:=true; ax012.Visible:=true; ax013.Visible:=true; ax014.Visible:=true; ax015.Visible:=true;
                      ax011.DataField:='B03'; ax012.DataField:='K03'; ax013.DataField:='U03'; ax014.DataField:='T03'; ax015.DataField:='U17';
                    end else if not query3.fieldbyname('c2').isnull then begin
                      ac02.Caption:=query3.fieldbyname('c2').value;
                      at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
                      ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                      ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
                    end;
              end else begin
                      ppsubReport2.Visible:=true;
                      ppGroupFooterBand7.Visible:=false;
                      ppGroupFooterBand5.Visible:=true;
                      ppGroupFooterBand9.Visible:=true;
                      ppGroupFooterBand11.Visible:=false;
                      ppGroupFooterBand21.Visible:=true;
                      if xh1.ItemIndex<2 then begin
                        //ppGroupFooterBand7.Visible:=false;
                        ppRichText3.Visible:=true;
                        ppRichText4.Visible:=false;
                        ppRichText5.Visible:=true;
                        ppRichText6.Visible:=false;
                        ppRichText9.Visible:=true;
                        ppRichText10.Visible:=false;
                      end else if xh1.ItemIndex=2 then begin
                        //ppGroupFooterBand7.Visible:=true;
                        //ppRichText2.Visible:=true;
                        //ppRichText1.Visible:=false;
                        ppRichText3.Visible:=false;
                        ppRichText4.Visible:=true;
                        ppRichText5.Visible:=false;
                        ppRichText6.Visible:=true;
                        ppRichText9.Visible:=false;
                        ppRichText10.Visible:=true;
                      end;
                      ppSummaryBand3.Visible:=true;
                      ppsummaryband4.Visible:=true;
                      ppSummaryBand6.Visible:=true;
                      ppSummaryBand7.Visible:=false;
                    ac01.Caption:=''; ac02.Caption:=''; ac03.Caption:=''; ac04.Caption:='';
                    bc001.Caption:=''; bc002.Caption:=''; bc003.Caption:=''; bc004.Caption:='';
                    cc001.Caption:=''; cc002.Caption:=''; cc003.Caption:=''; cc004.Caption:='';
                    cc005.Caption:=''; cc006.Caption:=''; cc007.Caption:=''; cc008.Caption:='';
                    cc009.Caption:=''; cc010.Caption:=''; cc011.Caption:=''; cc012.Caption:='';
                    at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
                    at011.Visible:=true; at012.Visible:=true; at013.Visible:=true; at014.Visible:=true; at015.Visible:=true;
                    at016.Visible:=true; at017.Visible:=true; at018.Visible:=true; at019.Visible:=true; at020.Visible:=true;
                    ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                    ax011.Visible:=true; ax012.Visible:=true; ax013.Visible:=true; ax014.Visible:=true; ax015.Visible:=true;
                    ax016.Visible:=true; ax017.Visible:=true; ax018.Visible:=true; ax019.Visible:=true; ax020.Visible:=true;
                    bt001.Visible:=true; bt002.Visible:=true; bt003.Visible:=true; bt004.Visible:=true; bt005.Visible:=true;
                    bt006.Visible:=true; bt007.Visible:=true; bt008.Visible:=true; bt009.Visible:=true; bt010.Visible:=true;
                    bt011.Visible:=false; bt012.Visible:=false; bt013.Visible:=false; bt014.Visible:=false; bt015.Visible:=false;
                    bt016.Visible:=false; bt017.Visible:=false; bt018.Visible:=false; bt019.Visible:=false; bt020.Visible:=false;
                    bx001.Visible:=true; bx002.Visible:=true; bx003.Visible:=true; bx004.Visible:=true; bx005.Visible:=true;
                    bx006.Visible:=true; bx007.Visible:=true; bx008.Visible:=true; bx009.Visible:=true; bx010.Visible:=true;
                    bx011.Visible:=false; bx012.Visible:=false; bx013.Visible:=false; bx014.Visible:=false; bx015.Visible:=false;
                    bx016.Visible:=false; bx017.Visible:=false; bx018.Visible:=false; bx019.Visible:=false; bx020.Visible:=false;
                    ct001.visible:=true; ct002.visible:=true; ct003.visible:=true; ct004.visible:=true; ct005.visible:=true;
                    ct006.visible:=true; ct007.visible:=true; ct008.visible:=true; ct009.visible:=true; ct010.visible:=true;
                    ct011.visible:=false; ct012.visible:=false; ct013.visible:=false; ct014.visible:=false; ct015.visible:=false;
                    ct016.visible:=false; ct017.visible:=false; ct018.visible:=false; ct019.visible:=false; ct020.visible:=false;
                    cx001.visible:=true; cx002.visible:=true; cx003.visible:=true; cx004.visible:=true; cx005.visible:=true;
                    cx006.visible:=true; cx007.visible:=true; cx008.visible:=true; cx009.visible:=true; cx010.visible:=true;
                    cx011.visible:=false; cx012.visible:=false; cx013.visible:=false; cx014.visible:=false; cx015.visible:=false;
                    cx016.visible:=false; cx017.visible:=false; cx018.visible:=false; cx019.visible:=false; cx020.visible:=false;
                    ct021.visible:=true; ct022.visible:=true; ct023.visible:=true; ct024.visible:=true; ct025.visible:=true;
                    ct026.visible:=true; ct027.visible:=true; ct028.visible:=true; ct029.visible:=true; ct030.visible:=true;
                    ct031.visible:=true; ct032.visible:=true; ct033.visible:=true; ct034.visible:=true; ct035.visible:=true;
                    ct036.visible:=true; ct037.visible:=true; ct038.visible:=true; ct039.visible:=true; ct040.visible:=true;
                    cx021.visible:=true; cx022.visible:=true; cx023.visible:=true; cx024.visible:=true; cx025.visible:=true;
                    cx026.visible:=true; cx027.visible:=true; cx028.visible:=true; cx029.visible:=true; cx030.visible:=true;
                    cx031.visible:=true; cx032.visible:=true; cx033.visible:=true; cx034.visible:=true; cx035.visible:=true;
                    cx036.visible:=true; cx037.visible:=true; cx038.visible:=true; cx039.visible:=true; cx040.visible:=true;
                    ct041.visible:=true; ct042.visible:=true; ct043.visible:=true; ct044.visible:=true; ct045.visible:=true;
                    ct046.visible:=true; ct047.visible:=true; ct048.visible:=true; ct049.visible:=true; ct050.visible:=true;
                    ct051.visible:=true; ct052.visible:=true; ct053.visible:=true; ct054.visible:=true; ct055.visible:=true;
                    ct056.visible:=true; ct057.visible:=true; ct058.visible:=true; ct059.visible:=true; ct060.visible:=true;
                    cx041.visible:=true; cx042.visible:=true; cx043.visible:=true; cx044.visible:=true; cx045.visible:=true;
                    cx046.visible:=true; cx047.visible:=true; cx048.visible:=true; cx049.visible:=true; cx050.visible:=true;
                    cx051.visible:=true; cx052.visible:=true; cx053.visible:=true; cx054.visible:=true; cx055.visible:=true;
                    cx056.visible:=true; cx057.visible:=true; cx058.visible:=true; cx059.visible:=true; cx060.visible:=true;
                    ac01.Caption:=query3.fieldbyname('c1').Value; ac02.Caption:=query3.fieldbyname('c2').value;
                    ac03.Caption:=query3.fieldbyname('c3').value; ac04.Caption:=query3.fieldbyname('c4').value;
                    bc001.Caption:=query3.fieldbyname('c5').value; bc002.Caption:=query3.fieldbyname('c6').value;
                    //bc003.Caption:=query3.fieldbyname('c7').value;
                    cc001.Caption:=query3.fieldbyname('c7').value; cc002.Caption:=query3.fieldbyname('c8').value;
                    //cc003.Caption:=query3.fieldbyname('c10').value; cc004.Caption:=query3.fieldbyname('c11').value;
                    cc005.Caption:=query3.fieldbyname('c9').value; cc006.Caption:=query3.fieldbyname('c10').value;
                    cc007.Caption:=query3.fieldbyname('c11').value; cc008.Caption:=query3.fieldbyname('c12').value;
                    cc009.Caption:=query3.fieldbyname('c13').value; cc010.Caption:=query3.fieldbyname('c14').value;
                    cc011.Caption:=query3.fieldbyname('c15').value; cc012.Caption:=query3.fieldbyname('c16').value;
                    ax001.DataField:='B01'; ax002.DataField:='K01'; ax003.DataField:='U01'; ax004.DataField:='T01'; ax005.DataField:='B17';
                    ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
                    ax011.DataField:='B03'; ax012.DataField:='K03'; ax013.DataField:='U03'; ax014.DataField:='T03'; ax015.DataField:='U17';
                    ax016.DataField:='B04'; ax017.DataField:='K04'; ax018.DataField:='U04'; ax019.DataField:='T04'; ax020.DataField:='T17';
                    bx001.DataField:='B05'; bx002.DataField:='K05'; bx003.DataField:='U05'; bx004.DataField:='T05'; bx005.DataField:='B18';
                    bx006.DataField:='B06'; bx007.DataField:='K06'; bx008.DataField:='U06'; bx009.DataField:='T06'; bx010.DataField:='K18';

                    //bx011.DataField:='B07'; bx012.DataField:='K07'; bx013.DataField:='U07'; bx014.DataField:='T07'; bx015.DataField:='U18';

                    cx001.DataField:='B07'; cx002.DataField:='K07'; cx003.DataField:='U07'; cx004.DataField:='T07'; cx005.DataField:='U18';
                    cx006.DataField:='B08'; cx007.DataField:='K08'; cx008.DataField:='U08'; cx009.DataField:='T08'; cx010.DataField:='T18';
                    //cx011.DataField:='B10'; cx012.DataField:='K10'; cx013.DataField:='U10'; cx014.DataField:='T10'; cx015.DataField:='K19';
                    //cx016.DataField:='B11'; cx017.DataField:='K11'; cx018.DataField:='U11'; cx019.DataField:='T11'; cx020.DataField:='U19';

                    cx021.DataField:='B09'; cx022.DataField:='K09'; cx023.DataField:='U09'; cx024.DataField:='T09'; cx025.DataField:='B19';
                    cx026.DataField:='B10'; cx027.DataField:='K10'; cx028.DataField:='U10'; cx029.DataField:='T10'; cx030.DataField:='K19';
                    cx031.DataField:='B11'; cx032.DataField:='K11'; cx033.DataField:='U11'; cx034.DataField:='T11'; cx035.DataField:='U19';
                    cx036.DataField:='B12'; cx037.DataField:='K12'; cx038.DataField:='U12'; cx039.DataField:='T12'; cx040.DataField:='T19';
                    cx041.DataField:='B13'; cx042.DataField:='K13'; cx043.DataField:='U13'; cx044.DataField:='T13'; cx045.DataField:='B20';
                    cx046.DataField:='B14'; cx047.DataField:='K14'; cx048.DataField:='U14'; cx049.DataField:='T14'; cx050.DataField:='K20';
                    cx051.DataField:='B15'; cx052.DataField:='K15'; cx053.DataField:='U15'; cx054.DataField:='T15'; cx055.DataField:='U20';
                    cx056.DataField:='B16'; cx057.DataField:='K16'; cx058.DataField:='U16'; cx059.DataField:='T16'; cx060.DataField:='T20';
              end;
            end else if combobox1.text='KB' then begin
                    ppSubReport2.Visible:=true;
                    tm001.Caption:='';
                    ppGroupFooterBand7.Visible:=true;
                    ppGroupFooterBand5.Visible:=true;
                    if xh1.ItemIndex<2 then begin
                      ppRichText1.Visible:=true;
                      ppRichText2.Visible:=false;
                    end else if xh1.ItemIndex=2 then begin
                      ppRichText2.Visible:=true;
                      ppRichText1.Visible:=false;
                    end;
                      if xh1.ItemIndex<2 then begin
                        ppRichText3.Visible:=true;
                        ppRichText4.Visible:=false;
                      end else if xh1.ItemIndex=2 then begin
                        ppRichText4.Visible:=true;
                        ppRichText3.Visible:=false;
                      end;
                      ppSummaryBand3.Visible:=true;
                    ppSummaryBand4.Visible:=false;
                    ac01.Caption:=''; ac02.Caption:=''; ac03.Caption:=''; ac04.Caption:='';
                    bc001.Caption:=''; bc002.Caption:=''; bc003.Caption:=''; bc004.Caption:='';
                    at006.Visible:=true; at007.Visible:=true; at008.Visible:=true; at009.Visible:=true; at010.Visible:=true;
                    at011.Visible:=false; at012.Visible:=false; at013.Visible:=false; at014.Visible:=false; at015.Visible:=false;
                    at016.Visible:=false; at017.Visible:=false; at018.Visible:=false; at019.Visible:=false; at020.Visible:=false;
                    ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                    ax011.Visible:=false; ax012.Visible:=false; ax013.Visible:=false; ax014.Visible:=false; ax015.Visible:=false;
                    ax016.Visible:=false; ax017.Visible:=false; ax018.Visible:=false; ax019.Visible:=false; ax020.Visible:=false;
                    bt006.Visible:=false; bt007.Visible:=false; bt008.Visible:=false; bt009.Visible:=false; bt010.Visible:=false;
                    bt011.Visible:=false; bt012.Visible:=false; bt013.Visible:=false; bt014.Visible:=false; bt015.Visible:=false;
                    bt016.Visible:=false; bt017.Visible:=false; bt018.Visible:=false; bt019.Visible:=false; bt020.Visible:=false;
                    bx006.Visible:=false; bx007.Visible:=false; bx008.Visible:=false; bx009.Visible:=false; bx010.Visible:=false;
                    bx011.Visible:=false; bx012.Visible:=false; bx013.Visible:=false; bx014.Visible:=false; bx015.Visible:=false;
                    bx016.Visible:=false; bx017.Visible:=false; bx018.Visible:=false; bx019.Visible:=false; bx020.Visible:=false;
                    ac01.Caption:=query3.fieldbyname('c1').Value; ac02.Caption:=query3.fieldbyname('c2').value;
                    ax001.DataField:='B01'; ax002.DataField:='K01'; ax003.DataField:='U01'; ax004.DataField:='T01'; ax005.DataField:='B17';
                    ax006.DataField:='B02'; ax007.DataField:='K02'; ax008.DataField:='U02'; ax009.DataField:='T02'; ax010.DataField:='K17';
                    bc001.Caption:=query3.fieldbyname('c3').value;
                    bx001.DataField:='B03'; bx002.DataField:='K03'; bx003.DataField:='U03'; bx004.DataField:='T03'; bx005.DataField:='U17';
            end else if combobox1.text='FJ' then begin
                    ppSubReport2.Visible:=true;
                    tm001.Caption:='';
                    ppGroupFooterBand7.Visible:=true;
                    ppGroupFooterBand5.Visible:=true;
                    if xh1.ItemIndex<2 then begin
                      ppRichText1.Visible:=true;
                      ppRichText2.Visible:=false;
                    end else if xh1.ItemIndex=2 then begin
                      ppRichText2.Visible:=true;
                      ppRichText1.Visible:=false;
                    end;
                    if xh1.ItemIndex<2 then begin
                      ppRichText3.Visible:=true;
                      ppRichText4.Visible:=false;
                    end else if xh1.ItemIndex=2 then begin
                      ppRichText4.Visible:=true;
                      ppRichText3.Visible:=false;
                    end;
                    if xh1.ItemIndex<2 then begin
                      ppRichText5.Visible:=true;
                      ppRichText6.Visible:=false;
                    end else if xh1.ItemIndex=2 then begin
                      ppRichText6.Visible:=true;
                      ppRichText5.Visible:=false;
                    end;
                    ppSummaryBand3.Visible:=true;
                    ppSummaryBand4.Visible:=true;
                    ppsummaryband5.Visible:=false;
                    ac01.Caption:=''; ac02.Caption:=''; ac03.Caption:=''; ac04.Caption:='';
                    bc001.Caption:=''; bc002.Caption:=''; bc003.Caption:=''; bc004.Caption:='';
                    at006.Visible:=false; at007.Visible:=false; at008.Visible:=false; at009.Visible:=false; at010.Visible:=false;
                    at011.Visible:=false; at012.Visible:=false; at013.Visible:=false; at014.Visible:=false; at015.Visible:=false;
                    at016.Visible:=false; at017.Visible:=false; at018.Visible:=false; at019.Visible:=false; at020.Visible:=false;
                    ax006.Visible:=true; ax007.Visible:=true; ax008.Visible:=true; ax009.Visible:=true; ax010.Visible:=true;
                    ax011.Visible:=false; ax012.Visible:=false; ax013.Visible:=false; ax014.Visible:=false; ax015.Visible:=false;
                    ax016.Visible:=false; ax017.Visible:=false; ax018.Visible:=false; ax019.Visible:=false; ax020.Visible:=false;
                    bt001.Visible:=true; bt002.Visible:=true; bt003.Visible:=true; bt004.Visible:=true; bt005.Visible:=true;
                    bt006.Visible:=true; bt007.Visible:=true; bt008.Visible:=true; bt009.Visible:=true; bt010.Visible:=true;
                    bt011.Visible:=false; bt012.Visible:=false; bt013.Visible:=false; bt014.Visible:=false; bt015.Visible:=false;
                    bt016.Visible:=false; bt017.Visible:=false; bt018.Visible:=false; bt019.Visible:=false; bt020.Visible:=false;
                    bx001.Visible:=true; bx002.Visible:=true; bx003.Visible:=true; bx004.Visible:=true; bx005.Visible:=true;
                    bx006.Visible:=true; bx007.Visible:=true; bx008.Visible:=true; bx009.Visible:=true; bx010.Visible:=true;
                    bx011.Visible:=false; bx012.Visible:=false; bx013.Visible:=false; bx014.Visible:=false; bx015.Visible:=false;
                    bx016.Visible:=false; bx017.Visible:=false; bx018.Visible:=false; bx019.Visible:=false; bx020.Visible:=false;
                    ct001.visible:=true; ct002.visible:=true; ct003.visible:=true; ct004.visible:=true; ct005.visible:=true;
                    ct006.visible:=true; ct007.visible:=true; ct008.visible:=true; ct009.visible:=true; ct010.visible:=true;
                    ct011.visible:=true; ct012.visible:=true; ct013.visible:=true; ct014.visible:=true; ct015.visible:=true;
                    ct016.visible:=true; ct017.visible:=true; ct018.visible:=true; ct019.visible:=true; ct020.visible:=true;
                    cx001.visible:=true; cx002.visible:=true; cx003.visible:=true; cx004.visible:=true; cx005.visible:=true;
                    cx006.visible:=true; cx007.visible:=true; cx008.visible:=true; cx009.visible:=true; cx010.visible:=true;
                    cx011.visible:=true; cx012.visible:=true; cx013.visible:=true; cx014.visible:=true; cx015.visible:=true;
                    cx016.visible:=true; cx017.visible:=true; cx018.visible:=true; cx019.visible:=true; cx020.visible:=true;
                    ac01.Caption:=query3.fieldbyname('c1').Value;
                    ax001.DataField:='B01'; ax002.DataField:='K01'; ax003.DataField:='U01'; ax004.DataField:='T01'; ax005.DataField:='B17';
                    bc001.Caption:=query3.fieldbyname('c2').value; bc002.Caption:=query3.fieldbyname('c3').value;
                    bx001.DataField:='B02'; bx002.DataField:='K02'; bx003.DataField:='U02'; bx004.DataField:='T02'; bx005.DataField:='K17';
                    bx006.DataField:='B03'; bx007.DataField:='K03'; bx008.DataField:='U03'; bx009.DataField:='T03'; bx010.DataField:='U17';
                    bt006.Visible:=true; bt007.Visible:=true; bt008.Visible:=true; bt009.Visible:=true; bt010.Visible:=true;
                    cc001.Caption:=query3.fieldbyname('c4').value; cc002.Caption:=query3.fieldbyname('c5').value;
                    cc003.Caption:=query3.fieldbyname('c6').value; cc004.Caption:=query3.fieldbyname('c7').value;
                    cx001.DataField:='B04'; cx002.DataField:='K04'; cx003.DataField:='U04'; cx004.DataField:='T04'; cx005.DataField:='T17';
                    cx006.DataField:='B05'; cx007.DataField:='K05'; cx008.DataField:='U05'; cx009.DataField:='T05'; cx010.DataField:='B18';
                    cx011.DataField:='B06'; cx012.DataField:='K06'; cx013.DataField:='U06'; cx014.DataField:='T06'; cx015.DataField:='K18';
                    cx016.DataField:='B07'; cx017.DataField:='K07'; cx018.DataField:='U07'; cx019.DataField:='T07'; cx020.DataField:='U18';
            end;
          end;

          if xh1.ItemIndex=0 then begin
            title001.Caption:=' -  Tracking SO issue and WO cfmd processing performance (WO Ex-fty) ';
          end else if xh1.ItemIndex=1 then begin
            title001.Caption:=' -  Tracking SO issue and RWO cfmd processing performance (RWO Ex-fty) ';
          end else if xh1.ItemIndex=2 then begin
            title001.Caption:=' -  Tracking SO issue and WO cfmd processing performance (T3 Date) ';
          end;
          //if ppSubReport3.Visible=true then begin
          if ppSummaryBand4.Visible=true then begin
              if xh1.ItemIndex<2 then begin
                ppRichText5.Visible:=true;
                ppRichText6.Visible:=false;
              end else if xh1.ItemIndex=2 then begin
                ppRichText6.Visible:=true;
                ppRichText5.Visible:=false;
              end;
              if xh1.ItemIndex<2 then begin
                ppRichText7.Visible:=true;
                ppRichText8.Visible:=false;
              end else if xh1.ItemIndex=2 then begin
                ppRichText8.Visible:=true;
                ppRichText7.Visible:=false;
              end;
          end;
          //ttl001, ttl002, ttl003
          if not query5.fieldbyname('custs').isnull then begin
            ttl001.Caption:='# of cust: '+query5.fieldbyname('custs').asstring;
            ttl002.Caption:='# of cust: '+query5.fieldbyname('custs').asstring;
            ttl003.Caption:='# of cust: '+query5.fieldbyname('custs').asstring;
            ttl005.Caption:='# of cust: '+query5.fieldbyname('custs').asstring;
            if not query5.fieldbyname('lines').isnull then begin
              ttl001.Caption:=ttl001.Caption+'    # of line: '+query5.fieldbyname('lines').asstring;
              ttl002.Caption:=ttl002.Caption+'    # of line: '+query5.fieldbyname('lines').asstring;
              ttl003.Caption:=ttl003.Caption+'    # of line: '+query5.fieldbyname('lines').asstring;
              ttl005.Caption:=ttl005.Caption+'    # of line: '+query5.fieldbyname('lines').asstring;
            end;
            if not query5.fieldbyname('days').isnull then begin
              ttl001.Caption:=ttl001.Caption+'    # of work days: '+query5.fieldbyname('days').asstring;
              ttl002.Caption:=ttl002.Caption+'    # of work days: '+query5.fieldbyname('days').asstring;
              ttl003.Caption:=ttl003.Caption+'    # of work days: '+query5.fieldbyname('days').asstring;
              ttl005.Caption:=ttl005.Caption+'    # of work days: '+query5.fieldbyname('days').asstring;
            end;
            if not query5.fieldbyname('sects').isnull then begin
              ttl001.Caption:=ttl001.Caption+'    # of sect hr/line/work day: '+formatfloat('0.00',query5.fieldbyname('sects').value);
              ttl002.Caption:=ttl002.Caption+'    # of sect hr/line/work day: '+formatfloat('0.00',query5.fieldbyname('sects').value);
              ttl003.Caption:=ttl003.Caption+'    # of sect hr/line/work day: '+formatfloat('0.00',query5.fieldbyname('sects').value);
              ttl005.Caption:=ttl005.Caption+'    # of sect hr/line/work day: '+formatfloat('0.00',query5.fieldbyname('sects').value);
            end;
          end;
            ppgroupfooterband13.Visible:=false;
            ppgroupfooterband14.Visible:=false;
            ppgroupfooterband15.Visible:=false;
            ppgroupfooterband16.Visible:=false;
            ppgroupfooterband23.Visible:=false;
          ppReport1.Print;
        end;
      end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_com.BitBtn6Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
  if xh1.ItemIndex<=2 then begin
    with query5 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_loggdt';
      open;
      if not fieldbyname('ftydt').isnull then ftydt:=fieldbyname('ftydt').value else ftydt:=date;
      if not fieldbyname('oadt').isnull then oadt:=fieldbyname('oadt').value else oadt:=date;
    end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        if opt1.Checked then begin
          commandtext:='execute procedure sp_cap_oaftytmp_f(:x1,:x3,:x4,:x5)';
          params[0].asdatetime:=tm;
          params[1].asinteger:=spinedit1.Value;
          params[2].asinteger:=spinedit2.Value;
          params[3].asinteger:=spinedit3.Value;
        end else if opt2.Checked then begin
          if xh1.ItemIndex<>1 then
          commandtext:='execute procedure sp_cap_oaftytmp_f_m(:x1,:x3,:x4,:x5)'
          else if xh1.ItemIndex=1 then
          commandtext:='execute procedure sp_cap_oaftytmp_f_rwo_m(:x1,:x3,:x4,:x5)';
          params[0].asdatetime:=tm;
          params[1].asinteger:=spinedit1.Value;
          params[2].asinteger:=spinedit4.Value;
          params[3].asinteger:=spinedit5.Value;
        end;
        execute;
      end;

          if frmnewcap_fty=nil then frmnewcap_fty:=tfrmnewcap_fty.Create(nil);
          with frmnewcap_fty.Query4 do begin
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select * from tbl_cap_oafty_tmp02_s where tm=:x1 and seq not in (13,16) order by wk,seq';
            params[0].asdatetime:=tm;
            open;
            if not fieldbyname('tm').isnull then begin
                  frmnewcap_fty.yr001.Caption:=inttostr(spinedit1.Value);
                  if opt1.Checked then begin
                    frmnewcap_fty.wk001.Caption:=inttostr(spinedit2.Value);
                    frmnewcap_fty.wk002.Caption:=inttostr(spinedit3.Value);
                    frmnewcap_fty.x001.Caption:='Week from ';
                    frmnewcap_fty.x002.Caption:='to ';
                    frmnewcap_fty.tc01.Caption:='All Factories';
                    frmnewcap_fty.w0001.Caption:='Week/Content ';
                  end else if opt2.Checked then begin
                    frmnewcap_fty.wk001.Caption:=inttostr(spinedit4.Value);
                    frmnewcap_fty.wk002.Caption:=inttostr(spinedit5.Value);
                    frmnewcap_fty.x001.Caption:='Month from ';
                    frmnewcap_fty.x002.Caption:='to ';
                    frmnewcap_fty.tc01.Caption:='All Factories';
                    frmnewcap_fty.w0001.Caption:='Month/Content ';
                  end;
                  if xh1.ItemIndex=0 then begin
                    frmnewcap_fty.title001.Caption:=' -  Comparison 1  (WO Ex-fty)        [Factory dependent]  ';
                  end else if xh1.ItemIndex=1 then begin
                    frmnewcap_fty.title001.Caption:=' -  Comparison 2  (RWO Ex-fty)        [Factory dependent]  ';
                  end else if xh1.ItemIndex=2 then begin
                    frmnewcap_fty.title001.Caption:=' -  Comparison 3  (T3)        [Factory dependent]  ';
                  end;
                  frmnewcap_fty.ppReport1.Print;
            end;
          end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_com.xh1Click(Sender: TObject);
begin
  if xh1.ItemIndex=0 then
    bitbtn5.Caption:='Tracking SO issue and WO cfmd processing performance'
  else if xh1.ItemIndex>=1 then
    bitbtn5.Caption:='Tracking SO issue and RWO cfmd processing performance'
end;

procedure Tfrmnewcap_com.ppGroupFooterBand17BeforePrint(Sender: TObject);
var
  i1:integer;
begin
  if xh1.ItemIndex<2 then i1:=17 else i1:=21;
  if query4.FieldByName('seq').value<i1 then ppline113.Visible:=false
  else ppline113.Visible:=true;
end;

procedure Tfrmnewcap_com.ppGroupFooterBand18BeforePrint(Sender: TObject);
var
  i1:integer;
begin
  if xh1.ItemIndex<2 then i1:=17 else i1:=21;
  if query4.FieldByName('seq').value<i1 then ppline114.Visible:=false
  else ppline114.Visible:=true;
end;

procedure Tfrmnewcap_com.ppGroupFooterBand19BeforePrint(Sender: TObject);
var
  i1:integer;
begin
  if xh1.ItemIndex<2 then i1:=17 else i1:=21;
  if query4.FieldByName('seq').value<i1 then ppline115.Visible:=false
  else ppline115.Visible:=true;
end;

procedure Tfrmnewcap_com.ppGroupFooterBand20BeforePrint(Sender: TObject);
var
  i1:integer;
begin
  if xh1.ItemIndex<2 then i1:=17 else i1:=21;
  if query4.FieldByName('seq').value<i1 then ppline116.Visible:=false
  else ppline116.Visible:=true;
end;

procedure Tfrmnewcap_com.SpinEdit2Change(Sender: TObject);
begin
  opt1.Checked:=true;
end;

procedure Tfrmnewcap_com.SpinEdit4Change(Sender: TObject);
begin
  opt2.Checked:=true;
end;

procedure Tfrmnewcap_com.CheckSOIssueVsWOProcessDifference1Click(
  Sender: TObject);
begin
  if frmchkSOvsWORWO=nil then frmchkSOvsWORWO:=tfrmchkSOvsWORWO.Create(nil);
  frmchkSOvsWORWO.Caption:='Check SO Issue Vs WO cfmd Proccessing Performance Difference';
  frmchkSOvsWORWO.ComboBox1.Text:='SL';
  frmchkSOvsWORWO.SpinEdit1.Value:=YearOf(date);
  frmchkSOvsWORWO.SpinEdit2.Value:=MonthOf(date);
  frmchkSOvsWORWO.Label5.Caption:='WO';
  frmchkSOvsWORWO.Show;
end;

procedure Tfrmnewcap_com.CheckSOIssueVsRWOCfmdProcessPerformanceDifference1Click(
  Sender: TObject);
begin
  if frmchkSOvsWORWO=nil then frmchkSOvsWORWO:=tfrmchkSOvsWORWO.Create(nil);
  frmchkSOvsWORWO.Caption:='Check SO Issue Vs RWO cfmd Proccessing Performance Difference';
  frmchkSOvsWORWO.ComboBox1.Text:='SL';
  frmchkSOvsWORWO.SpinEdit1.Value:=YearOf(date);
  frmchkSOvsWORWO.SpinEdit2.Value:=MonthOf(date);
  frmchkSOvsWORWO.Label5.Caption:='RWO';
  frmchkSOvsWORWO.Show;
end;

procedure Tfrmnewcap_com.ppDetailBand7BeforePrint(Sender: TObject);
var
  i1,i2,i3:integer;
begin
  if xh1.ItemIndex<2 then begin
    i1:=17; i2:=13; i3:=16;
  end else begin
    i1:=21; i2:=16; i3:=19;
  end;

  if xh1.ItemIndex<2 then begin
    if (query4.fieldbyname('seq').value=2) or (query4.fieldbyname('seq').value=6) or (query4.fieldbyname('seq').value=10)
    or (query4.fieldbyname('seq').value>=i1) then begin
      spt05.Visible:=true;
      pst05.Visible:=true;
      pst05.Brush.Color:=$00C7C6FB;
    end else begin
      spt05.Visible:=false;
      pst05.Visible:=false;
    end;
  end else begin
    if (query4.fieldbyname('seq').value=2) or (query4.fieldbyname('seq').value=6) or (query4.fieldbyname('seq').value=10)
    or (query4.fieldbyname('seq').value=13) or (query4.fieldbyname('seq').value>=i1) then begin
      spt05.Visible:=true;
      pst05.Visible:=true;
      pst05.Brush.Color:=$00C7C6FB;
    end else begin
      spt05.Visible:=false;
      pst05.Visible:=false;
    end;
  end;
  if (query4.fieldbyname('seq').value>=i1) then begin
    spt05.visible:=false;
    pst05.Brush.Color:=$00FEFFE6;
  end;

  sp501.Visible:=false;
  
  if query4.fieldbyname('wk').value>=98 then begin
    if label6.Caption='A' then begin
    if query4.fieldbyname('seq').value=1 then spe01.Visible:=true
    else spe01.Visible:=false;
    end else begin
    if query4.fieldbyname('seq').value=9 then spe01.Visible:=true
    else spe01.Visible:=false;
    end;
  end else spe01.Visible:=false;
          if query4.fieldbyname('seq').value>=i1 then begin
            t017.DisplayFormat:='0.00'; t018.DisplayFormat:='0.00'; t019.DisplayFormat:='0.00'; t020.DisplayFormat:='0.00';
            cx041.DisplayFormat:='0.00'; cx042.DisplayFormat:='0.00'; cx043.DisplayFormat:='0.00'; cx044.DisplayFormat:='0.00';
            cx046.DisplayFormat:='0.00'; cx047.DisplayFormat:='0.00'; cx048.DisplayFormat:='0.00'; cx049.DisplayFormat:='0.00';
            cx051.DisplayFormat:='0.00'; cx052.DisplayFormat:='0.00'; cx053.DisplayFormat:='0.00'; cx054.DisplayFormat:='0.00';
            cx056.DisplayFormat:='0.00'; cx057.DisplayFormat:='0.00'; cx058.DisplayFormat:='0.00'; cx059.DisplayFormat:='0.00';
            if query4.fieldbyname('tb').value=100 then t017.Font.Color:=clBlue
            else if (query4.fieldbyname('tb').value>90) and (query4.fieldbyname('tb').value<=110) then t017.Font.color:=clGreen
            else t017.Font.Color:=clRed;
            if query4.fieldbyname('tk').value=100 then t018.Font.Color:=clBlue
            else if (query4.fieldbyname('tk').value>90) and (query4.fieldbyname('tk').value<=110) then t018.Font.color:=clGreen
            else t018.Font.Color:=clRed;
            if query4.fieldbyname('tu').value=100 then t019.Font.Color:=clBlue
            else if (query4.fieldbyname('tu').value>90) and (query4.fieldbyname('tu').value<=110) then t019.Font.color:=clGreen
            else t019.Font.Color:=clRed;
            if query4.fieldbyname('ttl').value=100 then t020.Font.Color:=clBlue
            else if (query4.fieldbyname('ttl').value>90) and (query4.fieldbyname('ttl').value<=110) then t020.Font.color:=clGreen
            else t020.Font.Color:=clRed;
            if cx041.FieldValue=100 then cx041.Font.Color:=clBlue
            else if (cx041.FieldValue>90) and (cx041.FieldValue<=110) then cx041.Font.Color:=clGreen
            else cx041.Font.Color:=clRed;
            if cx042.FieldValue=100 then cx042.Font.Color:=clBlue
            else if (cx042.FieldValue>90) and (cx042.FieldValue<=110) then cx042.Font.Color:=clGreen
            else cx042.Font.Color:=clRed;
            if cx043.FieldValue=100 then cx043.Font.Color:=clBlue
            else if (cx043.FieldValue>90) and (cx043.FieldValue<=110) then cx043.Font.Color:=clGreen
            else cx043.Font.Color:=clRed;
            if cx044.FieldValue=100 then cx044.Font.Color:=clBlue
            else if (cx044.FieldValue>90) and (cx044.FieldValue<=110) then cx044.Font.Color:=clGreen
            else cx044.Font.Color:=clRed;
            if cx046.FieldValue=100 then cx046.Font.Color:=clBlue
            else if (cx046.FieldValue>90) and (cx046.FieldValue<=110) then cx046.Font.Color:=clGreen
            else cx046.Font.Color:=clRed;
            if cx047.FieldValue=100 then cx047.Font.Color:=clBlue
            else if (cx047.FieldValue>90) and (cx047.FieldValue<=110) then cx047.Font.Color:=clGreen
            else cx047.Font.Color:=clRed;
            if cx048.FieldValue=100 then cx048.Font.Color:=clBlue
            else if (cx048.FieldValue>90) and (cx048.FieldValue<=110) then cx048.Font.Color:=clGreen
            else cx048.Font.Color:=clRed;
            if cx049.FieldValue=100 then cx049.Font.Color:=clBlue
            else if (cx049.FieldValue>90) and (cx049.FieldValue<=110) then cx049.Font.Color:=clGreen
            else cx049.Font.Color:=clRed;
            if cx051.FieldValue=100 then cx051.Font.Color:=clBlue
            else if (cx051.FieldValue>90) and (cx051.FieldValue<=110) then cx051.Font.Color:=clGreen
            else cx051.Font.Color:=clRed;
            if cx052.FieldValue=100 then cx052.Font.Color:=clBlue
            else if (cx052.FieldValue>90) and (cx052.FieldValue<=110) then cx052.Font.Color:=clGreen
            else cx052.Font.Color:=clRed;
            if cx053.FieldValue=100 then cx053.Font.Color:=clBlue
            else if (cx053.FieldValue>90) and (cx053.FieldValue<=110) then cx053.Font.Color:=clGreen
            else cx053.Font.Color:=clRed;
            if cx054.FieldValue=100 then cx054.Font.Color:=clBlue
            else if (cx054.FieldValue>90) and (cx054.FieldValue<=110) then cx054.Font.Color:=clGreen
            else cx054.Font.Color:=clRed;
            if cx056.FieldValue=100 then cx056.Font.Color:=clBlue
            else if (cx056.FieldValue>90) and (cx056.FieldValue<=110) then cx056.Font.Color:=clGreen
            else cx056.Font.Color:=clRed;
            if cx057.FieldValue=100 then cx057.Font.Color:=clBlue
            else if (cx057.FieldValue>90) and (cx057.FieldValue<=110) then cx057.Font.Color:=clGreen
            else cx057.Font.Color:=clRed;
            if cx058.FieldValue=100 then cx058.Font.Color:=clBlue
            else if (cx058.FieldValue>90) and (cx058.FieldValue<=110) then cx058.Font.Color:=clGreen
            else cx058.Font.Color:=clRed;
            if cx059.FieldValue=100 then cx059.Font.Color:=clBlue
            else if (cx059.FieldValue>90) and (cx059.FieldValue<=110) then cx059.Font.Color:=clGreen
            else cx059.Font.Color:=clRed;
          end else if (query4.fieldbyname('seq').value=i2) or (query4.fieldbyname('seq').value=i3) then begin
            t017.DisplayFormat:='#0'; t018.DisplayFormat:='#0'; t019.DisplayFormat:='#0'; t020.DisplayFormat:='#0';
            cx041.DisplayFormat:='#0'; cx042.DisplayFormat:='#0'; cx043.DisplayFormat:='#0'; cx044.DisplayFormat:='#0';
            cx046.DisplayFormat:='#0'; cx047.DisplayFormat:='#0'; cx048.DisplayFormat:='#0'; cx049.DisplayFormat:='#0';
            cx051.DisplayFormat:='#0'; cx052.DisplayFormat:='#0'; cx053.DisplayFormat:='#0'; cx054.DisplayFormat:='#0';
            cx056.DisplayFormat:='#0'; cx057.DisplayFormat:='#0'; cx058.DisplayFormat:='#0'; cx059.DisplayFormat:='#0';
            if query4.fieldbyname('tb').value=0 then t017.Font.Color:=clBlue
            else if (query4.fieldbyname('tb').value>0) then t017.Font.color:=clRed
            else t017.Font.Color:=clRed;
            if query4.fieldbyname('tk').value=0 then t018.Font.Color:=clBlue
            else if (query4.fieldbyname('tk').value>0) then t018.Font.color:=clRed
            else t018.Font.Color:=clRed;
            if query4.fieldbyname('tu').value=0 then t019.Font.Color:=clBlue
            else if (query4.fieldbyname('tu').value>0) then t019.Font.color:=clRed
            else t019.Font.Color:=clRed;
            if query4.fieldbyname('ttl').value=0 then t020.Font.Color:=clBlue
            else if (query4.fieldbyname('ttl').value>0) then t020.Font.color:=clRed
            else t020.Font.Color:=clRed;
            if cx041.FieldValue=0 then cx041.Font.Color:=clBlue
            else if (cx041.FieldValue>0) then cx041.Font.Color:=clRed
            else cx041.Font.Color:=clRed;
            if cx042.FieldValue=0 then cx042.Font.Color:=clBlue
            else if (cx042.FieldValue>0) then cx042.Font.Color:=clRed
            else cx042.Font.Color:=clRed;
            if cx043.FieldValue=0 then cx043.Font.Color:=clBlue
            else if (cx043.FieldValue>0) then cx043.Font.Color:=clRed
            else cx043.Font.Color:=clRed;
            if cx044.FieldValue=0 then cx044.Font.Color:=clBlue
            else if (cx044.FieldValue>0) then cx044.Font.Color:=clRed
            else cx044.Font.Color:=clRed;
            if cx046.FieldValue=0 then cx046.Font.Color:=clBlue
            else if (cx046.FieldValue>0) then cx046.Font.Color:=clRed
            else cx046.Font.Color:=clRed;
            if cx047.FieldValue=0 then cx047.Font.Color:=clBlue
            else if (cx047.FieldValue>0) then cx047.Font.Color:=clRed
            else cx047.Font.Color:=clRed;
            if cx048.FieldValue=0 then cx048.Font.Color:=clBlue
            else if (cx048.FieldValue>0) then cx048.Font.Color:=clRed
            else cx048.Font.Color:=clRed;
            if cx049.FieldValue=0 then cx049.Font.Color:=clBlue
            else if (cx049.FieldValue>0) then cx049.Font.Color:=clRed
            else cx049.Font.Color:=clRed;
            if cx051.FieldValue=0 then cx051.Font.Color:=clBlue
            else if (cx051.FieldValue>0) then cx051.Font.Color:=clRed
            else cx051.Font.Color:=clRed;
            if cx052.FieldValue=0 then cx052.Font.Color:=clBlue
            else if (cx052.FieldValue>0) then cx052.Font.Color:=clRed
            else cx052.Font.Color:=clRed;
            if cx053.FieldValue=0 then cx053.Font.Color:=clBlue
            else if (cx053.FieldValue>0) then cx053.Font.Color:=clRed
            else cx053.Font.Color:=clRed;
            if cx054.FieldValue=0 then cx054.Font.Color:=clBlue
            else if (cx054.FieldValue>0) then cx054.Font.Color:=clRed
            else cx054.Font.Color:=clRed;
            if cx056.FieldValue=0 then cx056.Font.Color:=clBlue
            else if (cx056.FieldValue>0) then cx056.Font.Color:=clRed
            else cx056.Font.Color:=clRed;
            if cx057.FieldValue=0 then cx057.Font.Color:=clBlue
            else if (cx057.FieldValue>0) then cx057.Font.Color:=clRed
            else cx057.Font.Color:=clRed;
            if cx058.FieldValue=0 then cx058.Font.Color:=clBlue
            else if (cx058.FieldValue>0) then cx058.Font.Color:=clRed
            else cx058.Font.Color:=clRed;
            if cx059.FieldValue=0 then cx059.Font.Color:=clBlue
            else if (cx059.FieldValue>0) then cx059.Font.Color:=clRed
            else cx059.Font.Color:=clRed;
          end else begin
            t017.DisplayFormat:='#0'; t018.DisplayFormat:='#0'; t019.DisplayFormat:='#0'; t020.DisplayFormat:='#0';
            cx041.DisplayFormat:='#0'; cx042.DisplayFormat:='#0'; cx043.DisplayFormat:='#0'; cx044.DisplayFormat:='#0';
            cx046.DisplayFormat:='#0'; cx047.DisplayFormat:='#0'; cx048.DisplayFormat:='#0'; cx049.DisplayFormat:='#0';
            cx051.DisplayFormat:='#0'; cx052.DisplayFormat:='#0'; cx053.DisplayFormat:='#0'; cx054.DisplayFormat:='#0';
            cx056.DisplayFormat:='#0'; cx057.DisplayFormat:='#0'; cx058.DisplayFormat:='#0'; cx059.DisplayFormat:='#0';
            t017.Font.Color:=clBlack; t018.Font.Color:=clBlack; t019.Font.Color:=clBlack; t020.Font.Color:=clBlack;
            cx041.Font.color:=clBlack; cx042.Font.Color:=clBlack; cx043.Font.Color:=clBlack; cx044.Font.Color:=clBlack;
            cx046.Font.color:=clBlack; cx047.Font.Color:=clBlack; cx048.Font.Color:=clBlack; cx049.Font.Color:=clBlack;
            cx051.Font.color:=clBlack; cx052.Font.Color:=clBlack; cx053.Font.Color:=clBlack; cx054.Font.Color:=clBlack;
            cx056.Font.color:=clBlack; cx057.Font.Color:=clBlack; cx058.Font.Color:=clBlack; cx059.Font.Color:=clBlack;
          end;
end;

procedure Tfrmnewcap_com.ppGroupFooterBand23BeforePrint(Sender: TObject);
var
  dt:tdate;
  custx1,linex1,wdayx1,istylex1,rstylex1,tstylex1:string;
  i1,i2:integer;
begin
  if xh1.ItemIndex<2 then begin
    i1:=17; i2:=15;
  end else begin
    i1:=21; i2:=20;
  end;
  //xt004
  if label6.Caption='A' then begin
  if query4.FieldByName('seq').value<i1 then ppGroupFooterBand23.Visible:=true
  else ppGroupFooterBand23.Visible:=false;
  if query4.fieldbyname('seq').value<=5 then dt:=ftydt//encodedate(2009,6,05)
  else if query4.fieldbyname('seq').value<=8 then dt:=oadt//encodedate(2009,6,13)
  else dt:=date;
  if query4.fieldbyname('seq').value=5 then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    commandtext:='select * from sp_cap_def_add(:x1,:x2,:x3,:x4,:x5,:x6) where o_wk=:x7';
    params[0].asstring:=combobox1.text;
    if combobox2.text>'' then
    params[1].asstring:=combobox2.text
    else params[1].asstring:='C';
    if opt1.Checked then params[2].asinteger:=1
    else if opt2.Checked then params[2].AsInteger:=2;
    params[3].asinteger:=spinedit1.Value;
    if opt1.Checked then begin
      params[4].asinteger:=spinedit2.Value;
      params[5].AsInteger:=spinedit3.value;
    end else if opt2.Checked then begin
      params[4].asinteger:=spinedit4.Value;
      params[5].AsInteger:=spinedit5.value;
    end;
    params[6].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('o_cust').isnull then custx1:=fieldbyname('o_cust').value else custx1:='';
    if not fieldbyname('o_line').isnull then linex1:=fieldbyname('o_line').value else linex1:='';
    if not fieldbyname('o_day').isnull then wdayx1:=fieldbyname('o_day').value else wdayx1:='';
    istylex1:=''; rstylex1:=''; tstylex1:='';
  end;
  end else if query4.fieldbyname('seq').value=8 then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    commandtext:='select * from sp_cap_prj_add(:x1,:x2,:x3,:x4,:x5,:x6) where o_wk=:x7';
    params[0].asstring:=combobox1.text;
    if combobox2.text>'' then
    params[1].asstring:=combobox2.text
    else params[1].asstring:='C';
    if opt1.Checked then params[2].asinteger:=1
    else if opt2.Checked then params[2].AsInteger:=2;
    params[3].asinteger:=spinedit1.Value;
    if opt1.Checked then begin
      params[4].asinteger:=spinedit2.Value;
      params[5].AsInteger:=spinedit3.value;
    end else if opt2.Checked then begin
      params[4].asinteger:=spinedit4.Value;
      params[5].AsInteger:=spinedit5.value;
    end;
    params[6].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('o_cust').isnull then custx1:=fieldbyname('o_cust').value else custx1:='';
    if not fieldbyname('o_line').isnull then linex1:=fieldbyname('o_line').value else linex1:='';
    if not fieldbyname('o_day').isnull then wdayx1:=fieldbyname('o_day').value else wdayx1:='';
    istylex1:=''; rstylex1:=''; tstylex1:='';
  end;
  //end else if (query4.fieldbyname('seq').value>=15) and (query4.fieldbyname('seq').value<=17) then begin
  end else if query4.fieldbyname('seq').value=i2 then begin
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    params.createparam(ftinteger,'x7',ptinput);
    commandtext:='select * from sp_cap_curr_add(:x1,:x2,:x3,:x4,:x5,:x6) where o_wk=:x7';
    params[0].asstring:=combobox1.text;
    if combobox2.text>'' then
    params[1].asstring:=combobox2.text
    else params[1].asstring:='C';
    if opt1.Checked then params[2].asinteger:=1
    else if opt2.Checked then params[2].AsInteger:=2;
    params[3].asinteger:=spinedit1.Value;
    if opt1.Checked then begin
      params[4].asinteger:=spinedit2.Value;
      params[5].AsInteger:=spinedit3.value;
    end else if opt2.Checked then begin
      params[4].asinteger:=spinedit4.Value;
      params[5].AsInteger:=spinedit5.value;
    end;
    params[6].asinteger:=query4.fieldbyname('wk').value;
    open;
    if not fieldbyname('o_cust').isnull then custx1:=fieldbyname('o_cust').value else custx1:='';
    if not fieldbyname('o_line').isnull then linex1:=fieldbyname('o_line').value else linex1:='';
    if not fieldbyname('o_day').isnull then wdayx1:=fieldbyname('o_day').value else wdayx1:='';
    if not fieldbyname('o_istyle').isnull then istylex1:=fieldbyname('o_istyle').value else istylex1:='';
    if not fieldbyname('o_rstyle').isnull then rstylex1:=fieldbyname('o_rstyle').value else rstylex1:='';
    if not fieldbyname('o_tstyle').isnull then tstylex1:=fieldbyname('o_tstyle').value else tstylex1:='';
  end;
  //end else begin
  //  custx1:=''; linex1:=''; wdayx1:=''; istylex1:=''; rstylex1:=''; tstylex1:='';
  end;
  xt005.Caption:='As at '+formatdatetime('yy-MM-dd',dt)+'    Additional Information:-    # of Cust: '+custx1+'      # of Line: '+linex1+'      # of work days: '+wdayx1+'      # of sect hr/line/work day(normal day: 22      Saturday: 18)      # of style(initial: '+istylex1+'      flow/repeat: '+rstylex1+'      ttl: '+tstylex1+')  ';
  end;
end;

procedure Tfrmnewcap_com.CheckaT31Click(Sender: TObject);
begin
  if frmchkSOvsWORWO=nil then frmchkSOvsWORWO:=tfrmchkSOvsWORWO.Create(nil);
  frmchkSOvsWORWO.Caption:='Check aT3(-) and aT3(+)';
  frmchkSOvsWORWO.ComboBox1.Text:='SL';
  frmchkSOvsWORWO.SpinEdit1.Value:=YearOf(date);
  frmchkSOvsWORWO.SpinEdit2.Value:=MonthOf(date);
  frmchkSOvsWORWO.Label5.Caption:='aT3';
  frmchkSOvsWORWO.Show;
end;

end.
