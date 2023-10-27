unit lwoformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, DB, DBClient, Buttons,
  DBCtrls, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppViewr, myChkBox,
  Menus, ppStrtch, ppMemo, ComCtrls, GridsEh, DBGridEh, ADODB, ppParameter,
  siComp;

type
  Tfrmlwo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    ppDBPipeline1: TppDBPipeline;
    BitBtn4: TBitBtn;
    Label8: TLabel;
    PopupMenu1: TPopupMenu;
    Removeall1: TMenuItem;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    fty001: TppLabel;
    ppLabel7: TppLabel;
    line001: TppLabel;
    jno001: TppLabel;
    ppLabel2: TppLabel;
    job001: TppLabel;
    rwo001: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    cstyle001: TppLabel;
    ppLabel12: TppLabel;
    acol001: TppLabel;
    ppLabel13: TppLabel;
    scqty001: TppLabel;
    ppLabel14: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel15: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    fccs001: TppLabel;
    ppLabel22: TppLabel;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine7: TppLine;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLine9: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel6: TppLabel;
    ppLabel28: TppLabel;
    ppLine18: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine20: TppLine;
    ppLabel33: TppLabel;
    ppLine23: TppLine;
    ppLabel35: TppLabel;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel37: TppLabel;
    ppLine30: TppLine;
    ppLabel39: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBText4: TppDBText;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppDBText25: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppLine19: TppLine;
    myDBCheckBox2: TmyDBCheckBox;
    ppLine21: TppLine;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLine24: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    myDBCheckBox3: TmyDBCheckBox;
    myDBCheckBox4: TmyDBCheckBox;
    ppDBText28: TppDBText;
    ppLine31: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppLabel16: TppLabel;
    fdt001: TppLabel;
    ppLabel17: TppLabel;
    cfksrq001: TppLabel;
    ppLabel18: TppLabel;
    tzlcrq001: TppLabel;
    ppLabel20: TppLabel;
    yqlcrq001: TppLabel;
    ppLabel19: TppLabel;
    xc3001: TppLabel;
    ppShape3: TppShape;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel27: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine22: TppLine;
    ppDBCalc15: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine25: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLine32: TppLine;
    b01: TppLabel;
    e01: TppLabel;
    f01: TppLabel;
    l01: TppLabel;
    Query5: TClientDataSet;
    Query6: TClientDataSet;
    DataSource2: TDataSource;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel24: TppLabel;
    ppLabel31: TppLabel;
    ppLabel36: TppLabel;
    fty002: TppLabel;
    ppLabel41: TppLabel;
    line002: TppLabel;
    jno002: TppLabel;
    ppLabel44: TppLabel;
    job002: TppLabel;
    rwo002: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    cstyle002: TppLabel;
    ppLabel50: TppLabel;
    acol002: TppLabel;
    ppLabel52: TppLabel;
    scqty002: TppLabel;
    ppLabel54: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel55: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    fccs002: TppLabel;
    ppLabel57: TppLabel;
    ppShape9: TppShape;
    ppLabel58: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLabel63: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine41: TppLine;
    ppDetailBand2: TppDetailBand;
    ppShape10: TppShape;
    ppDBText5: TppDBText;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppDBText9: TppDBText;
    myDBCheckBox5: TmyDBCheckBox;
    ppLine47: TppLine;
    myDBCheckBox6: TmyDBCheckBox;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppLabel76: TppLabel;
    fdt002: TppLabel;
    ppLabel78: TppLabel;
    cfksrq002: TppLabel;
    ppLabel80: TppLabel;
    tzlcrq002: TppLabel;
    ppLabel82: TppLabel;
    yqlcrq002: TppLabel;
    ppLabel84: TppLabel;
    xc3002: TppLabel;
    ppShape16: TppShape;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLabel86: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine58: TppLine;
    ppDBCalc11: TppDBCalc;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLabel61: TppLabel;
    ppLabel65: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLine61: TppLine;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLine62: TppLine;
    ppDBText6: TppDBText;
    ppDBText13: TppDBText;
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
    dt01: TppLabel;
    dt02: TppLabel;
    dt03: TppLabel;
    dt04: TppLabel;
    dt05: TppLabel;
    dt06: TppLabel;
    dt07: TppLabel;
    dt08: TppLabel;
    dt09: TppLabel;
    dt10: TppLabel;
    seq01: TppLabel;
    seq02: TppLabel;
    seq03: TppLabel;
    seq04: TppLabel;
    seq05: TppLabel;
    seq06: TppLabel;
    seq07: TppLabel;
    seq08: TppLabel;
    seq09: TppLabel;
    seq10: TppLabel;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
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
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    p01: TppLabel;
    t01: TppLabel;
    p02: TppLabel;
    t02: TppLabel;
    p03: TppLabel;
    t03: TppLabel;
    p04: TppLabel;
    t04: TppLabel;
    p05: TppLabel;
    t05: TppLabel;
    p06: TppLabel;
    t06: TppLabel;
    p07: TppLabel;
    t07: TppLabel;
    p08: TppLabel;
    t08: TppLabel;
    p09: TppLabel;
    t09: TppLabel;
    p10: TppLabel;
    t10: TppLabel;
    sp01: TppLabel;
    st01: TppLabel;
    sp02: TppLabel;
    st02: TppLabel;
    sp03: TppLabel;
    st03: TppLabel;
    sp04: TppLabel;
    st04: TppLabel;
    sp05: TppLabel;
    st05: TppLabel;
    sp06: TppLabel;
    st06: TppLabel;
    sp07: TppLabel;
    st07: TppLabel;
    sp08: TppLabel;
    st08: TppLabel;
    sp09: TppLabel;
    st09: TppLabel;
    sp10: TppLabel;
    st10: TppLabel;
    BitBtn7: TBitBtn;
    pick01: TppLabel;
    transit101: TppLabel;
    transit201: TppLabel;
    transit301: TppLabel;
    BitBtn8: TBitBtn;
    Query7: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppShape17: TppShape;
    ppLabel42: TppLabel;
    yszq1: TppLabel;
    ppLabel43: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel49: TppLabel;
    ppShape18: TppShape;
    ppLabel51: TppLabel;
    yszq2: TppLabel;
    b02: TppLabel;
    e02: TppLabel;
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
    seq11: TppLabel;
    dt11: TppLabel;
    seq12: TppLabel;
    dt12: TppLabel;
    seq13: TppLabel;
    dt13: TppLabel;
    p11: TppLabel;
    t11: TppLabel;
    p12: TppLabel;
    t12: TppLabel;
    p13: TppLabel;
    t13: TppLabel;
    sp11: TppLabel;
    st11: TppLabel;
    sp12: TppLabel;
    st12: TppLabel;
    sp13: TppLabel;
    st13: TppLabel;
    ppLabel53: TppLabel;
    ppLabel56: TppLabel;
    x001: TppLabel;
    y001: TppLabel;
    x002: TppLabel;
    y002: TppLabel;
    x003: TppLabel;
    y003: TppLabel;
    x004: TppLabel;
    y004: TppLabel;
    x005: TppLabel;
    y005: TppLabel;
    x006: TppLabel;
    y006: TppLabel;
    x007: TppLabel;
    y007: TppLabel;
    x008: TppLabel;
    y008: TppLabel;
    x009: TppLabel;
    y009: TppLabel;
    x010: TppLabel;
    y010: TppLabel;
    x011: TppLabel;
    y011: TppLabel;
    x012: TppLabel;
    y012: TppLabel;
    x013: TppLabel;
    y013: TppLabel;
    CancelConfirm1: TMenuItem;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    ppLine116: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel62: TppLabel;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppLine120: TppLine;
    ppLine121: TppLine;
    ppLine122: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppDBText7: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppDBText8: TppDBText;
    ppDBCalc9: TppDBCalc;
    transit401: TppLabel;
    ppLabel71: TppLabel;
    ppLabel70: TppLabel;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel77: TppLabel;
    ppLabel79: TppLabel;
    ppDBText10: TppDBText;
    ppDBCalc12: TppDBCalc;
    ppLabel81: TppLabel;
    ppLabel83: TppLabel;
    ppLine126: TppLine;
    ppLabel85: TppLabel;
    ppLine127: TppLine;
    ppLine128: TppLine;
    ppLabel89: TppLabel;
    ppLine129: TppLine;
    ppLabel90: TppLabel;
    ppLine130: TppLine;
    ppLine131: TppLine;
    myDBCheckBox7: TmyDBCheckBox;
    myDBCheckBox8: TmyDBCheckBox;
    myDBCheckBox9: TmyDBCheckBox;
    sewn01: TppLabel;
    ppLabel34: TppLabel;
    packed01: TppLabel;
    ppLabel40: TppLabel;
    ppLine132: TppLine;
    j01: TppLabel;
    ppLabel32: TppLabel;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppLabel38: TppLabel;
    ppLine135: TppLine;
    ppLabel64: TppLabel;
    ppLabel91: TppLabel;
    ppLine136: TppLine;
    ppLine137: TppLine;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    pick02: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    packed02: TppLabel;
    transit102: TppLabel;
    transit302: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    sewn02: TppLabel;
    transit402: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    transit202: TppLabel;
    ppLine138: TppLine;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppLine142: TppLine;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLine153: TppLine;
    myDBCheckBox10: TmyDBCheckBox;
    ppMemo1: TppMemo;
    pic01: TppLabel;
    trs01: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    pic02: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    trs02: TppLabel;
    ppLine154: TppLine;
    ppLine155: TppLine;
    ppLine156: TppLine;
    ppLine157: TppLine;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    h01: TppLabel;
    m01: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    BitBtn11: TBitBtn;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel115: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    fty003: TppLabel;
    ppLabel121: TppLabel;
    line003: TppLabel;
    jno003: TppLabel;
    ppLabel124: TppLabel;
    job003: TppLabel;
    rwo003: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    cstyle003: TppLabel;
    ppLabel130: TppLabel;
    acol003: TppLabel;
    ppLabel132: TppLabel;
    scqty003: TppLabel;
    ppLabel134: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel135: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    fccs003: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLine158: TppLine;
    ppLine159: TppLine;
    ppLabel139: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape20: TppShape;
    ppDBText14: TppDBText;
    ppLine177: TppLine;
    ppLine178: TppLine;
    ppDBText15: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppLabel228: TppLabel;
    fdt003: TppLabel;
    ppLabel230: TppLabel;
    cfksrq003: TppLabel;
    ppLabel232: TppLabel;
    tzlcrq003: TppLabel;
    ppLabel234: TppLabel;
    yqlcrq003: TppLabel;
    ppLabel236: TppLabel;
    xc3003: TppLabel;
    ppShape26: TppShape;
    ppLabel238: TppLabel;
    yszq3: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine214: TppLine;
    ppLine215: TppLine;
    ppLabel252: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppShape27: TppShape;
    ppLabel140: TppLabel;
    ppDBText16: TppDBText;
    ppDBCalc17: TppDBCalc;
    ppShape19: TppShape;
    ppLabel120: TppLabel;
    ppLine160: TppLine;
    ppLabel122: TppLabel;
    ppLine161: TppLine;
    myCheckBox1: TmyCheckBox;
    ppLabel123: TppLabel;
    myCheckBox2: TmyCheckBox;
    DateTimePicker1: TDateTimePicker;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppDBText17: TppDBText;
    ppDBCalc18: TppDBCalc;
    title001: TppLabel;
    ppLine40: TppLine;
    ppLine162: TppLine;
    ppLabel129: TppLabel;
    ppLine163: TppLine;
    ppDBText18: TppDBText;
    ppDBCalc19: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppMemo2: TppMemo;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppMemo3: TppMemo;
    ppLine164: TppLine;
    BitBtn12: TBitBtn;
    DBGridEh2: TDBGridEh;
    ppDBText19: TppDBText;
    ppDBCalc20: TppDBCalc;
    idt01: TppLabel;
    idt02: TppLabel;
    ppLine165: TppLine;
    ppLine166: TppLine;
    ppLabel131: TppLabel;
    myDBCheckBox11: TmyDBCheckBox;
    ppLine167: TppLine;
    ppLabel133: TppLabel;
    ppLine168: TppLine;
    myDBCheckBox12: TmyDBCheckBox;
    ppLine169: TppLine;
    ppLine170: TppLine;
    ppLine171: TppLine;
    ppLabel136: TppLabel;
    ppLabel141: TppLabel;
    ppDBText20: TppDBText;
    ppDBCalc21: TppDBCalc;
    ppLabel142: TppLabel;
    ppLine172: TppLine;
    ppLine173: TppLine;
    ppLine174: TppLine;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppDBText21: TppDBText;
    ppDBCalc22: TppDBCalc;
    ppLine175: TppLine;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLine176: TppLine;
    ppLine179: TppLine;
    ppDBText22: TppDBText;
    ppDBCalc23: TppDBCalc;
    ppLine180: TppLine;
    ppLine181: TppLine;
    ppLabel147: TppLabel;
    myDBCheckBox13: TmyDBCheckBox;
    ppLabel148: TppLabel;
    ppLabel151: TppLabel;
    sv001: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    sv002: TppLabel;
    ppLine182: TppLine;
    ppLine183: TppLine;
    ip001: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ip002: TppLabel;
    ppLine184: TppLine;
    ppLine185: TppLine;
    aql001: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    aql002: TppLabel;
    ppLine186: TppLine;
    ppLine187: TppLine;
    ppLine188: TppLine;
    ppLabel149: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    diff002: TppLabel;
    diff003: TppLabel;
    diff004: TppLabel;
    diff005: TppLabel;
    diff006: TppLabel;
    diff007: TppLabel;
    diff008: TppLabel;
    diff009: TppLabel;
    diff010: TppLabel;
    diff011: TppLabel;
    ppLabel160: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    seq0101: TppLabel;
    seq0201: TppLabel;
    seq0301: TppLabel;
    seq0401: TppLabel;
    seq0501: TppLabel;
    seq0601: TppLabel;
    seq0701: TppLabel;
    seq0801: TppLabel;
    seq0901: TppLabel;
    seq1001: TppLabel;
    seq1101: TppLabel;
    seq1201: TppLabel;
    seq1301: TppLabel;
    ppLabel161: TppLabel;
    ppLabel165: TppLabel;
    myCheckBox5: TmyCheckBox;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    myCheckBox6: TmyCheckBox;
    ppLabel168: TppLabel;
    Query8: TClientDataSet;
    DataSource4: TDataSource;
    DBText8: TDBText;
    Label9: TLabel;
    cwo01: TppLabel;
    ppLabel66: TppLabel;
    cwo001: TppLabel;
    ppLabel67: TppLabel;
    ClientDataSet2: TClientDataSet;
    DataSet2: TADOQuery;
    SampleQty1: TMenuItem;
    ppMemo4: TppMemo;
    Label4: TLabel;
    Label10: TLabel;
    DBText9: TDBText;
    Label11: TLabel;
    DBText10: TDBText;
    Label12: TLabel;
    DBText11: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    DBText12: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure DBGridEh1Columns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure QueryTQ1Change(Sender: TField);
    procedure QueryCMP1Change(Sender: TField);
    procedure QueryCMP2Change(Sender: TField);
    procedure QueryCMP3Change(Sender: TField);
    procedure QueryCMP4Change(Sender: TField);
    procedure QueryCMPiChange(Sender: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1Columns5EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure Removeall1Click(Sender: TObject);
    procedure DBGridEh1Columns7EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns17EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Query6AfterPost(DataSet: TDataSet);
    procedure CancelConfirm1Click(Sender: TObject);
    procedure DBGridEh1Columns10EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBGridEh1Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns18EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns11EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn11Click(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure DBGridEh1ColumnsIPEditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1ColumnsAQLEditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure aftersave;
    procedure BitBtn10Click(Sender: TObject);
    procedure DBGridEh1ColumnsT1BEditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SampleQty1Click(Sender: TObject);
    procedure DBGridEh1Columns14EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns9EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns15EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns19EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Query1BeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure previewT1;
    procedure previewT_1;
    procedure previewT2;
    procedure previewT_2;
    procedure previewT_2AQL;
    procedure previewT3;
    procedure previewT_3;
    procedure previewT4;
    procedure previewT_4;
    procedure previewT_4_AQL;
  end;

var
  frmlwo: Tfrmlwo;
  tm:tdatetime;
  eflag:string;
  logseq:integer;
  strupd:string;

implementation

uses mainformu, worksheet, bundleformu, transitformu, achievingformu,
  transitformu2, transitformu3, note_lwoformu, ptrans2formu, transitformu4,
  sewnformu, ptrans3formu, ptrans4formu, ptrans2_1formu, transitflowformu,
  igapackformu, dailyt2formu, dailyt3formu, dailyt4formu, transitformu4_1,
  exchangeformu, aqltransitformu, lwosum1formu, servedqtyformu, finished,
  dailyt2_1formu, transitflow2formu, flow2report1formu, dailyt4_1formu,
  qn_sampleformu, lwo_ipformu;

{$R *.dfm}

procedure Tfrmlwo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //if eflag='EDIT' then
  aftersave;
  if frmptrans2<>nil then frmptrans2:=nil;
  if frmptrans2_1<>nil then frmptrans2_1:=nil;
  if frmptrans3<>nil then frmptrans3:=nil;
  if frmptrans4<>nil then frmptrans4:=nil;
  if frmdailyt2<>nil then frmdailyt2:=nil;
  if frmdailyt2_1<>nil then frmdailyt2_1:=nil;
  if frmdailyt3<>nil then frmdailyt3:=nil;
  if frmdailyt4<>nil then frmdailyt4:=nil;
  if frmdailyt4_1<>nil then frmdailyt4_1:=nil;
  if frmlwosum1<>nil then frmlwosum1:=nil;
  if frmflow2report1<>nil then frmflow2report1:=nil;
  action:=cafree;
  frmlwo:=nil;
end;

procedure Tfrmlwo.Query1AfterPost(DataSet: TDataSet);
var
  pstr:string;
begin
  {
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      params.createparam(ftinteger,'x11',ptinput);
      params.createparam(ftinteger,'x12',ptinput);
      params.createparam(ftinteger,'x13',ptinput);
      params.createparam(ftinteger,'x14',ptinput);
      params.createparam(ftboolean,'x15',ptinput);
      params.createparam(ftinteger,'x16',ptinput);
      params.createparam(ftinteger,'x17',ptinput);
      params.createparam(ftinteger,'x18',ptinput);
      params.createparam(ftinteger,'x19',ptinput);
      params.createparam(ftinteger,'x20',ptinput);
      params.createparam(ftinteger,'x21',ptinput);
      params.createparam(ftinteger,'x22',ptinput);
      params.createparam(ftinteger,'x23',ptinput);
      params.createparam(ftinteger,'x24',ptinput);
      params.createparam(ftinteger,'x25',ptinput);
      params.createparam(ftinteger,'x26',ptinput);
      params.createparam(ftboolean,'x27',ptinput);
      params.createparam(ftinteger,'x28',ptinput);
      params.createparam(ftinteger,'x29',ptinput);
      params.createparam(ftinteger,'x30',ptinput);
      params.createparam(ftinteger,'x31',ptinput);
      params.createparam(ftinteger,'x32',ptinput);
      params.createparam(ftinteger,'x33',ptinput);
      params.createparam(ftinteger,'x34',ptinput);
      params.createparam(ftboolean,'x35',ptinput);
      params.createparam(ftinteger,'x36',ptinput);
      params.createparam(ftinteger,'x37',ptinput);
      params.createparam(ftinteger,'x38',ptinput);
      params.createparam(ftinteger,'x39',ptinput);
      params.createparam(ftinteger,'x40',ptinput);
      params.createparam(ftinteger,'x41',ptinput);
      params.createparam(ftboolean,'x42',ptinput);
      params.createparam(ftinteger,'x43',ptinput);
      params.createparam(ftinteger,'x44',ptinput);
      params.createparam(ftinteger,'x45',ptinput);
      params.createparam(ftinteger,'x46',ptinput);
      params.createparam(ftboolean,'x52',ptinput);
      params.createparam(ftinteger,'x47',ptinput);
      params.createparam(ftinteger,'x48',ptinput);
      params.createparam(ftinteger,'x49',ptinput);
      params.createparam(ftinteger,'x50',ptinput);
      params.createparam(ftinteger,'x51',ptinput);
      params.createparam(ftinteger,'x70',ptinput);
      params.createparam(ftinteger,'x71',ptinput);
      params.createparam(ftinteger,'x72',ptinput);
      params.createparam(ftinteger,'x73',ptinput);
      params.createparam(ftinteger,'x74',ptinput);
      params.createparam(ftinteger,'x75',ptinput);
      params.createparam(ftinteger,'x76',ptinput);
      params.createparam(ftinteger,'x77',ptinput);
      params.createparam(ftinteger,'x78',ptinput);
      params.createparam(ftinteger,'x79',ptinput);
      params.createparam(ftinteger,'x80',ptinput);
      params.createparam(ftinteger,'x81',ptinput);
      params.createparam(ftinteger,'x82',ptinput);
      params.createparam(ftinteger,'x83',ptinput);
      params.createparam(ftinteger,'x84',ptinput);
      params.createparam(ftinteger,'x85',ptinput);
      params.createparam(ftinteger,'x86',ptinput);
      params.createparam(ftboolean,'x92',ptinput);
      params.createparam(ftinteger,'x93',ptinput);
      params.createparam(ftinteger,'x94',ptinput);
      params.createparam(ftinteger,'x95',ptinput);
      params.createparam(ftinteger,'x96',ptinput);
      params.createparam(ftboolean,'x97',ptinput);
      params.createparam(ftinteger,'x98',ptinput);
      params.createparam(ftinteger,'x99',ptinput);
      params.createparam(ftinteger,'x100',ptinput);
      params.createparam(ftinteger,'x101',ptinput);
      params.createparam(ftinteger,'x102',ptinput);
      params.createparam(ftinteger,'x103',ptinput);
      params.createparam(ftinteger,'x104',ptinput);
      params.createparam(ftinteger,'x105',ptinput);
      params.createparam(ftinteger,'x106',ptinput);
      params.createparam(ftinteger,'x107',ptinput);
      params.createparam(ftinteger,'x108',ptinput);
      params.createparam(ftinteger,'x109',ptinput);
      params.createparam(ftinteger,'x110',ptinput);
      params.createparam(ftboolean,'x111',ptinput);
      params.createparam(ftinteger,'x112',ptinput);
      params.CreateParam(ftinteger,'x113',ptinput);
      params.CreateParam(ftinteger,'x114',ptinput);
      params.CreateParam(ftinteger,'x115',ptinput);
      params.CreateParam(ftinteger,'x116',ptinput);
      params.CreateParam(ftinteger,'x117',ptinput);
      params.CreateParam(ftinteger,'x118',ptinput);
      params.CreateParam(ftinteger,'x119',ptinput);
      params.CreateParam(ftinteger,'x120',ptinput);
      params.CreateParam(ftinteger,'x121',ptinput);
      params.CreateParam(ftinteger,'x122',ptinput);
      params.CreateParam(ftinteger,'x123',ptinput);
      params.CreateParam(ftinteger,'x124',ptinput);
      params.CreateParam(ftinteger,'x125',ptinput);
      params.CreateParam(ftinteger,'x126',ptinput);
      params.CreateParam(ftinteger,'x127',ptinput);
      params.CreateParam(ftinteger,'x128',ptinput);
      params.CreateParam(ftinteger,'x129',ptinput);
      params.CreateParam(ftinteger,'x130',ptinput);
      params.CreateParam(ftinteger,'x131',ptinput);
      params.CreateParam(ftinteger,'x132',ptinput);
      params.CreateParam(ftinteger,'x133',ptinput);
      params.CreateParam(ftinteger,'x134',ptinput);
      params.CreateParam(ftinteger,'tq11',ptinput);
      params.CreateParam(ftinteger,'tq12',ptinput);
      params.CreateParam(ftinteger,'tq13',ptinput);
      params.CreateParam(ftinteger,'tq14',ptinput);
      params.CreateParam(ftinteger,'tq15',ptinput);
      params.CreateParam(ftinteger,'tq16',ptinput);
      params.CreateParam(ftinteger,'tq17',ptinput);
      params.CreateParam(ftinteger,'tq18',ptinput);
      params.CreateParam(ftinteger,'tq19',ptinput);
      params.CreateParam(ftinteger,'tq20',ptinput);
      params.CreateParam(ftinteger,'ttq11',ptinput);
      params.CreateParam(ftinteger,'ttq12',ptinput);
      params.CreateParam(ftinteger,'ttq13',ptinput);
      params.CreateParam(ftinteger,'ttq14',ptinput);
      params.CreateParam(ftinteger,'ttq15',ptinput);
      params.CreateParam(ftinteger,'ttq16',ptinput);
      params.CreateParam(ftinteger,'ttq17',ptinput);
      params.CreateParam(ftinteger,'ttq18',ptinput);
      params.CreateParam(ftinteger,'ttq19',ptinput);
      params.CreateParam(ftinteger,'ttq20',ptinput);
      params.CreateParam(ftinteger,'fq6',ptinput);
      params.CreateParam(ftinteger,'fq7',ptinput);
      params.CreateParam(ftinteger,'fq8',ptinput);
      params.CreateParam(ftinteger,'fq9',ptinput);
      params.CreateParam(ftinteger,'fq10',ptinput);
      params.createparam(ftstring,'x53',ptinput);
      params.createparam(ftinteger,'x54',ptinput);
      params.createparam(ftstring,'x55',ptinput);
      params.createparam(ftinteger,'x56',ptinput);
      params.createparam(ftstring,'x57',ptinput);
      params.createparam(ftstring,'x58',ptinput);
      params.createparam(ftstring,'x59',ptinput);
      params.createparam(ftinteger,'x60',ptinput);
      commandtext:='update tbl_lwo set qty=:x1,aqty=:x2,pqty=:x3,tqty=:x4,tq1=:x5,tq2=:x6,tq3=:x7,tq4=:x8,tq5=:x9,tq6=:x10,'
                  +'tq7=:x11,tq8=:x12,tq9=:x13,tq10=:x14,cmp=:x15,ttqty=:x16,ttq1=:x17,ttq2=:x18,ttq3=:x19,ttq4=:x20,'
                  +'ttq5=:x21,ttq6=:x22,ttq7=:x23,ttq8=:x24,ttq9=:x25,ttq10=:x26,cmp1=:x27,tpqty=:x28,pq1=:x29,pq2=:x30,'
                  +'pq3=:x31,pq4=:x32,pq5=:x33,pq6=:x34,cmp2=:x35,tfqty=:x36,fq1=:x37,fq2=:x38,fq3=:x39,fq4=:x40,fq5=:x41,'
                  +'cmp3=:x42,teqty=:x43,eq1=:x44,eq2=:x45,eq3=:x46,cmp4=:x52,pq7=:x47,pq8=:x48,pq9=:x49,pq10=:x50,t3diff=:x51,'
                  +'pq11=:x70,pq12=:x71,pq13=:x72,pq14=:x73,pq15=:x74,pq16=:x75,pq17=:x76,pq18=:x77,pq19=:x78,pq20=:x79,'
                  +'tip=:x80,ip1=:x81,ip2=:x82,ip3=:x83,ip4=:x84,ip5=:x85,ipdiff=:x86,cmpip=:x92,iq1=:x93,iq2=:x94,iq3=:x95,'
                  +'tiqty=:x96,cmpi=:x97,idiff=:x98,eq4=:x99,eq5=:x100,aq1=:x101,aq2=:x102,aq3=:x103,aq01=:x104,aq02=:x105,aq03=:x106,'
                  +'aq001=:x107,aq002=:x108,aq003=:x109,taql=:x110,cmpaql=:x111,iq4=:x112,iq5=:x113,eq6=:x114,eq7=:x115,eq8=:x116,'
                  +'eq9=:x117,eq10=:x118,iq6=:x119,iq7=:x120,iq8=:x121,iq9=:x122,iq10=:x123,aq10=:x124,aq11=:x125,aq12=:x126,'
                  +'aq13=:x127,aq14=:x128,aq15=:x129,aq16=:x130,aq17=:x131,aq18=:x132,aq19=:x133,aq20=:x134,'
                  +'tq11=:tq11,tq12=:tq12,tq13=:tq13,tq14=:tq14,tq15=:tq15,tq16=:tq16,tq17=:tq17,tq18=:tq18,tq19=:tq19,tq20=:tq20,'
                  +'ttq11=:ttq11,ttq12=:ttq12,ttq13=:ttq13,ttq14=:ttq14,ttq15=:ttq15,ttq16=:ttq16,'
                  +'ttq17=:ttq17,ttq18=:ttq18,ttq19=:ttq19,ttq20=:ttq20,fq6=:fq6,fq7=:fq7,fq8=:fq8,fq9=:fq9,fq10=:fq10 '
                  +'where pline=:x53 and seq=:x54 and j_no=:x55 and ordline=:x56 and j2_job=:x57 and rwo=:x58 and acol=:x59 and did=:x60';

      if not query1.fieldbyname('qty').isnull then params[0].asinteger:=query1.fieldbyname('qty').value else params[0].asinteger:=0;
      if not query1.fieldbyname('aqty').isnull then params[1].asinteger:=query1.fieldbyname('aqty').value else params[1].asinteger:=0;
      if not query1.fieldbyname('pqty').isnull then params[2].asinteger:=query1.fieldbyname('pqty').value else params[2].asinteger:=0;
      if not query1.fieldbyname('tqty').isnull then params[3].asinteger:=query1.fieldbyname('tqty').value else params[3].asinteger:=0;
      if not query1.fieldbyname('tq1').isnull then params[4].asinteger:=query1.fieldbyname('tq1').value else params[4].asinteger:=0;
      if not query1.fieldbyname('tq2').isnull then params[5].asinteger:=query1.fieldbyname('tq2').value else params[5].asinteger:=0;
      if not query1.fieldbyname('tq3').isnull then params[6].asinteger:=query1.fieldbyname('tq3').value else params[6].asinteger:=0;
      if not query1.fieldbyname('tq4').isnull then params[7].asinteger:=query1.fieldbyname('tq4').value else params[7].asinteger:=0;
      if not query1.fieldbyname('tq5').isnull then params[8].asinteger:=query1.fieldbyname('tq5').value else params[8].asinteger:=0;
      if not query1.fieldbyname('tq6').isnull then params[9].asinteger:=query1.fieldbyname('tq6').value else params[9].asinteger:=0;
      if not query1.fieldbyname('tq7').isnull then params[10].asinteger:=query1.fieldbyname('tq7').value else params[10].asinteger:=0;
      if not query1.fieldbyname('tq8').isnull then params[11].asinteger:=query1.fieldbyname('tq8').value else params[11].asinteger:=0;
      if not query1.fieldbyname('tq9').isnull then params[12].asinteger:=query1.fieldbyname('tq9').value else params[12].asinteger:=0;
      if not query1.fieldbyname('tq10').isnull then params[13].asinteger:=query1.fieldbyname('tq10').value else params[13].asinteger:=0;
      if not query1.fieldbyname('cmp').isnull then params[14].asboolean:=query1.fieldbyname('cmp').value else params[14].asboolean:=false;
      if not query1.fieldbyname('ttqty').isnull then params[15].asinteger:=query1.fieldbyname('ttqty').value else params[15].asinteger:=0;
      if not query1.fieldbyname('ttq1').isnull then params[16].asinteger:=query1.fieldbyname('ttq1').value else params[16].asinteger:=0;
      if not query1.fieldbyname('ttq2').isnull then params[17].asinteger:=query1.fieldbyname('ttq2').value else params[17].asinteger:=0;
      if not query1.fieldbyname('ttq3').isnull then params[18].asinteger:=query1.fieldbyname('ttq3').value else params[18].asinteger:=0;
      if not query1.fieldbyname('ttq4').isnull then params[19].asinteger:=query1.fieldbyname('ttq4').value else params[19].asinteger:=0;
      if not query1.fieldbyname('ttq5').isnull then params[20].asinteger:=query1.fieldbyname('ttq5').value else params[20].asinteger:=0;
      if not query1.fieldbyname('ttq6').isnull then params[21].asinteger:=query1.fieldbyname('ttq6').value else params[21].asinteger:=0;
      if not query1.fieldbyname('ttq7').isnull then params[22].asinteger:=query1.fieldbyname('ttq7').value else params[22].asinteger:=0;
      if not query1.fieldbyname('ttq8').isnull then params[23].asinteger:=query1.fieldbyname('ttq8').value else params[23].asinteger:=0;
      if not query1.fieldbyname('ttq9').isnull then params[24].asinteger:=query1.fieldbyname('ttq9').value else params[24].asinteger:=0;
      if not query1.fieldbyname('ttq10').isnull then params[25].asinteger:=query1.fieldbyname('ttq10').value else params[25].asinteger:=0;
      if not query1.fieldbyname('cmp1').isnull then params[26].asboolean:=query1.fieldbyname('cmp1').value else params[26].asboolean:=false;
      if not query1.fieldbyname('tpqty').isnull then params[27].asinteger:=query1.fieldbyname('tpqty').value else params[27].asinteger:=0;
      if not query1.fieldbyname('pq1').isnull then params[28].asinteger:=query1.fieldbyname('pq1').value else params[28].asinteger:=0;
      if not query1.fieldbyname('pq2').isnull then params[29].asinteger:=query1.fieldbyname('pq2').value else params[29].asinteger:=0;
      if not query1.fieldbyname('pq3').isnull then params[30].asinteger:=query1.fieldbyname('pq3').value else params[30].asinteger:=0;
      if not query1.fieldbyname('pq4').isnull then params[31].asinteger:=query1.fieldbyname('pq4').value else params[31].asinteger:=0;
      if not query1.fieldbyname('pq5').isnull then params[32].asinteger:=query1.fieldbyname('pq5').value else params[32].asinteger:=0;
      if not query1.fieldbyname('pq6').isnull then params[33].asinteger:=query1.fieldbyname('pq6').value else params[33].asinteger:=0;
      if not query1.fieldbyname('cmp2').isnull then params[34].asboolean:=query1.fieldbyname('cmp2').value else params[34].asboolean:=false;
      if not query1.fieldbyname('tfqty').isnull then params[35].asinteger:=query1.fieldbyname('tfqty').value else params[35].asinteger:=0;
      if not query1.fieldbyname('fq1').isnull then params[36].asinteger:=query1.fieldbyname('fq1').value else params[36].asinteger:=0;
      if not query1.fieldbyname('fq2').isnull then params[37].asinteger:=query1.fieldbyname('fq2').value else params[37].asinteger:=0;
      if not query1.fieldbyname('fq3').isnull then params[38].asinteger:=query1.fieldbyname('fq3').value else params[38].asinteger:=0;

      if not query1.fieldbyname('fq4').isnull then params[39].asinteger:=query1.fieldbyname('fq4').value else params[39].asinteger:=0;
      if not query1.fieldbyname('fq5').isnull then params[40].asinteger:=query1.fieldbyname('fq5').value else params[40].asinteger:=0;

      if not query1.fieldbyname('cmp3').isnull then params[41].asboolean:=query1.fieldbyname('cmp3').value else params[41].asboolean:=false;
      if not query1.fieldbyname('teqty').isnull then params[42].asinteger:=query1.fieldbyname('teqty').value else params[42].asinteger:=0;
      if not query1.fieldbyname('eq1').isnull then params[43].asinteger:=query1.fieldbyname('eq1').value else params[43].asinteger:=0;
      if not query1.fieldbyname('eq2').isnull then params[44].asinteger:=query1.fieldbyname('eq2').value else params[44].asinteger:=0;
      if not query1.fieldbyname('eq3').isnull then params[45].asinteger:=query1.fieldbyname('eq3').value else params[45].asinteger:=0;
      if not query1.fieldbyname('cmp4').isnull then params[46].asboolean:=query1.fieldbyname('cmp4').value else params[46].asboolean:=false;
      if not query1.fieldbyname('pq7').isnull then params[47].asinteger:=query1.fieldbyname('pq7').value else params[47].asinteger:=0;
      if not query1.fieldbyname('pq8').isnull then params[48].asinteger:=query1.fieldbyname('pq8').value else params[48].asinteger:=0;
      if not query1.fieldbyname('pq9').isnull then params[49].asinteger:=query1.fieldbyname('pq9').value else params[49].asinteger:=0;
      if not query1.fieldbyname('pq10').isnull then params[50].asinteger:=query1.fieldbyname('pq10').value else params[50].asinteger:=0;
      if not query1.fieldbyname('t3diff').isnull then params[51].asinteger:=query1.fieldbyname('t3diff').value else params[51].asinteger:=0;
      if not query1.fieldbyname('pq11').isnull then params[52].asinteger:=query1.fieldbyname('pq11').value else params[52].asinteger:=0;
      if not query1.fieldbyname('pq12').isnull then params[53].asinteger:=query1.fieldbyname('pq12').value else params[53].asinteger:=0;
      if not query1.fieldbyname('pq13').isnull then params[54].asinteger:=query1.fieldbyname('pq13').value else params[54].asinteger:=0;
      if not query1.fieldbyname('pq14').isnull then params[55].asinteger:=query1.fieldbyname('pq14').value else params[55].asinteger:=0;
      if not query1.fieldbyname('pq15').isnull then params[56].asinteger:=query1.fieldbyname('pq15').value else params[56].asinteger:=0;
      if not query1.fieldbyname('pq16').isnull then params[57].asinteger:=query1.fieldbyname('pq16').value else params[57].asinteger:=0;
      if not query1.fieldbyname('pq17').isnull then params[58].asinteger:=query1.fieldbyname('pq17').value else params[58].asinteger:=0;
      if not query1.fieldbyname('pq18').isnull then params[59].asinteger:=query1.fieldbyname('pq18').value else params[59].asinteger:=0;
      if not query1.fieldbyname('pq19').isnull then params[60].asinteger:=query1.fieldbyname('pq19').value else params[60].asinteger:=0;
      if not query1.fieldbyname('pq20').isnull then params[61].asinteger:=query1.fieldbyname('pq20').value else params[61].asinteger:=0;
      if not query1.fieldbyname('tip').isnull then params[62].asinteger:=query1.fieldbyname('tip').value else params[62].asinteger:=0;
      if not query1.fieldbyname('ip1').isnull then params[63].asinteger:=query1.fieldbyname('ip1').value else params[63].asinteger:=0;
      if not query1.fieldbyname('ip2').isnull then params[64].asinteger:=query1.fieldbyname('ip2').value else params[64].asinteger:=0;
      if not query1.fieldbyname('ip3').isnull then params[65].asinteger:=query1.fieldbyname('ip3').value else params[65].asinteger:=0;
      if not query1.fieldbyname('ip4').isnull then params[66].asinteger:=query1.fieldbyname('ip4').value else params[66].asinteger:=0;
      if not query1.fieldbyname('ip5').isnull then params[67].asinteger:=query1.fieldbyname('ip5').value else params[67].asinteger:=0;
      if not query1.fieldbyname('ipdiff').isnull then params[68].asinteger:=query1.fieldbyname('ipdiff').value else params[68].asinteger:=0;
      if not query1.fieldbyname('cmpip').isnull then params[69].asboolean:=query1.fieldbyname('cmpip').value else params[69].asboolean:=false;
      if not query1.fieldbyname('iq1').isnull then params[70].asinteger:=query1.fieldbyname('iq1').value else params[70].asinteger:=0;
      if not query1.fieldbyname('iq2').isnull then params[71].asinteger:=query1.fieldbyname('iq2').value else params[71].asinteger:=0;
      if not query1.fieldbyname('iq3').isnull then params[72].asinteger:=query1.fieldbyname('iq3').value else params[72].asinteger:=0;
      if not query1.fieldbyname('tiqty').isnull then params[73].asinteger:=query1.fieldbyname('tiqty').value else params[73].asinteger:=0;
      if not query1.fieldbyname('cmpi').isnull then params[74].asboolean:=query1.fieldbyname('cmpi').value else params[74].asboolean:=false;
      if not query1.fieldbyname('idiff').isnull then params[75].asinteger:=query1.fieldbyname('idiff').value else params[75].asinteger:=0;
      if not query1.fieldbyname('eq4').isnull then params[76].asinteger:=query1.fieldbyname('eq4').value else params[76].asinteger:=0;
      if not query1.fieldbyname('eq5').isnull then params[77].asinteger:=query1.fieldbyname('eq5').value else params[77].asinteger:=0;
      if not query1.fieldbyname('aq1').isnull then params[78].asinteger:=query1.fieldbyname('aq1').value else params[78].asinteger:=0;
      if not query1.fieldbyname('aq2').isnull then params[79].asinteger:=query1.fieldbyname('aq2').value else params[79].asinteger:=0;
      if not query1.fieldbyname('aq3').isnull then params[80].asinteger:=query1.fieldbyname('aq3').value else params[80].asinteger:=0;
      if not query1.fieldbyname('aq01').isnull then params[81].asinteger:=query1.fieldbyname('aq01').value else params[81].asinteger:=0;
      if not query1.fieldbyname('aq02').isnull then params[82].asinteger:=query1.fieldbyname('aq02').value else params[82].asinteger:=0;
      if not query1.fieldbyname('aq03').isnull then params[83].asinteger:=query1.fieldbyname('aq03').value else params[83].asinteger:=0;
      if not query1.fieldbyname('aq001').isnull then params[84].asinteger:=query1.fieldbyname('aq001').value else params[84].asinteger:=0;
      if not query1.fieldbyname('aq002').isnull then params[85].asinteger:=query1.fieldbyname('aq002').value else params[85].asinteger:=0;
      if not query1.fieldbyname('aq003').isnull then params[86].asinteger:=query1.fieldbyname('aq003').value else params[86].asinteger:=0;
      if not query1.fieldbyname('taql').isnull then params[87].asinteger:=query1.fieldbyname('taql').value else params[87].asinteger:=0;
      if not query1.fieldbyname('cmpaql').isnull then params[88].asboolean:=query1.fieldbyname('cmpaql').value else params[88].asboolean:=false;
      if not query1.fieldbyname('iq4').isnull then params[89].asinteger:=query1.fieldbyname('iq4').value else params[89].asinteger:=0;
      if not query1.fieldbyname('iq5').isnull then params[90].asinteger:=query1.fieldbyname('iq5').value else params[90].asinteger:=0;
      if not query1.fieldbyname('eq6').isnull then params[91].asinteger:=query1.fieldbyname('eq6').value else params[91].asinteger:=0;
      if not query1.fieldbyname('eq7').isnull then params[92].asinteger:=query1.fieldbyname('eq7').value else params[92].asinteger:=0;
      if not query1.fieldbyname('eq8').isnull then params[93].asinteger:=query1.fieldbyname('eq8').value else params[93].asinteger:=0;
      if not query1.fieldbyname('eq9').isnull then params[94].asinteger:=query1.fieldbyname('eq9').value else params[94].asinteger:=0;
      if not query1.fieldbyname('eq10').isnull then params[95].asinteger:=query1.fieldbyname('eq10').value else params[95].asinteger:=0;
      if not query1.fieldbyname('iq6').isnull then params[96].asinteger:=query1.fieldbyname('iq6').value else params[96].asinteger:=0;
      if not query1.fieldbyname('iq7').isnull then params[97].asinteger:=query1.fieldbyname('iq7').value else params[97].asinteger:=0;
      if not query1.fieldbyname('iq8').isnull then params[98].asinteger:=query1.fieldbyname('iq8').value else params[98].asinteger:=0;
      if not query1.fieldbyname('iq9').isnull then params[99].asinteger:=query1.fieldbyname('iq9').value else params[99].asinteger:=0;
      if not query1.fieldbyname('iq10').isnull then params[100].asinteger:=query1.fieldbyname('iq10').value else params[100].asinteger:=0;
      if not query1.fieldbyname('aq10').isnull then params[101].asinteger:=query1.fieldbyname('aq10').value else params[101].asinteger:=0;
      if not query1.fieldbyname('aq11').isnull then params[102].asinteger:=query1.fieldbyname('aq11').value else params[102].asinteger:=0;
      if not query1.fieldbyname('aq12').isnull then params[103].asinteger:=query1.fieldbyname('aq12').value else params[103].asinteger:=0;
      if not query1.fieldbyname('aq13').isnull then params[104].asinteger:=query1.fieldbyname('aq13').value else params[104].asinteger:=0;
      if not query1.fieldbyname('aq14').isnull then params[105].asinteger:=query1.fieldbyname('aq14').value else params[105].asinteger:=0;
      if not query1.fieldbyname('aq15').isnull then params[106].asinteger:=query1.fieldbyname('aq15').value else params[106].asinteger:=0;
      if not query1.fieldbyname('aq16').isnull then params[107].asinteger:=query1.fieldbyname('aq16').value else params[107].asinteger:=0;
      if not query1.fieldbyname('aq17').isnull then params[108].asinteger:=query1.fieldbyname('aq17').value else params[108].asinteger:=0;
      if not query1.fieldbyname('aq18').isnull then params[109].asinteger:=query1.fieldbyname('aq18').value else params[109].asinteger:=0;
      if not query1.fieldbyname('aq19').isnull then params[110].asinteger:=query1.fieldbyname('aq19').value else params[110].asinteger:=0;
      if not query1.fieldbyname('aq20').isnull then params[111].asinteger:=query1.fieldbyname('aq20').value else params[111].asinteger:=0;

      if not query1.fieldbyname('tq11').isnull then params[112].asinteger:=query1.fieldbyname('tq11').value else params[112].asinteger:=0;
      if not query1.fieldbyname('tq12').isnull then params[113].asinteger:=query1.fieldbyname('tq12').value else params[113].asinteger:=0;
      if not query1.fieldbyname('tq13').isnull then params[114].asinteger:=query1.fieldbyname('tq13').value else params[114].asinteger:=0;
      if not query1.fieldbyname('tq14').isnull then params[115].asinteger:=query1.fieldbyname('tq14').value else params[115].asinteger:=0;
      if not query1.fieldbyname('tq15').isnull then params[116].asinteger:=query1.fieldbyname('tq15').value else params[116].asinteger:=0;
      if not query1.fieldbyname('tq16').isnull then params[117].asinteger:=query1.fieldbyname('tq16').value else params[117].asinteger:=0;
      if not query1.fieldbyname('tq17').isnull then params[118].asinteger:=query1.fieldbyname('tq17').value else params[118].asinteger:=0;
      if not query1.fieldbyname('tq18').isnull then params[119].asinteger:=query1.fieldbyname('tq18').value else params[119].asinteger:=0;
      if not query1.fieldbyname('tq19').isnull then params[120].asinteger:=query1.fieldbyname('tq19').value else params[120].asinteger:=0;
      if not query1.fieldbyname('tq20').isnull then params[121].asinteger:=query1.fieldbyname('tq20').value else params[121].asinteger:=0;
      if not query1.fieldbyname('ttq11').isnull then params[122].asinteger:=query1.fieldbyname('ttq11').value else params[122].asinteger:=0;
      if not query1.fieldbyname('ttq12').isnull then params[123].asinteger:=query1.fieldbyname('ttq12').value else params[123].asinteger:=0;
      if not query1.fieldbyname('ttq13').isnull then params[124].asinteger:=query1.fieldbyname('ttq13').value else params[124].asinteger:=0;
      if not query1.fieldbyname('ttq14').isnull then params[125].asinteger:=query1.fieldbyname('ttq14').value else params[125].asinteger:=0;
      if not query1.fieldbyname('ttq15').isnull then params[126].asinteger:=query1.fieldbyname('ttq15').value else params[126].asinteger:=0;
      if not query1.fieldbyname('ttq16').isnull then params[127].asinteger:=query1.fieldbyname('ttq16').value else params[127].asinteger:=0;
      if not query1.fieldbyname('ttq17').isnull then params[128].asinteger:=query1.fieldbyname('ttq17').value else params[128].asinteger:=0;
      if not query1.fieldbyname('ttq18').isnull then params[129].asinteger:=query1.fieldbyname('ttq18').value else params[129].asinteger:=0;
      if not query1.fieldbyname('ttq19').isnull then params[130].asinteger:=query1.fieldbyname('ttq19').value else params[130].asinteger:=0;
      if not query1.fieldbyname('ttq20').isnull then params[131].asinteger:=query1.fieldbyname('ttq20').value else params[131].asinteger:=0;

      if not query1.fieldbyname('fq6').isnull then params[132].asinteger:=query1.fieldbyname('fq6').value else params[132].asinteger:=0;
      if not query1.fieldbyname('fq7').isnull then params[133].asinteger:=query1.fieldbyname('fq7').value else params[133].asinteger:=0;
      if not query1.fieldbyname('fq8').isnull then params[134].asinteger:=query1.fieldbyname('fq8').value else params[134].asinteger:=0;
      if not query1.fieldbyname('fq9').isnull then params[135].asinteger:=query1.fieldbyname('fq9').value else params[135].asinteger:=0;
      if not query1.fieldbyname('fq10').isnull then params[136].asinteger:=query1.fieldbyname('fq10').value else params[136].asinteger:=0;

      params[137].asstring:=query1.fieldbyname('pline').value;
      params[138].asinteger:=query1.fieldbyname('seq').value;
      params[139].asstring:=query1.fieldbyname('j_no').value;
      params[140].asinteger:=query1.fieldbyname('ordline').value;
      params[141].asstring:=query1.fieldbyname('j2_job').value;
      params[142].asstring:=query1.fieldbyname('rwo').value;
      params[143].asstring:=query1.fieldbyname('acol').value;
      params[144].asinteger:=query1.fieldbyname('did').value;
      execute;
    end;
  end;
  }
      strupd:='update tbl_lwo set ';
      if not query1.fieldbyname('qty').isnull then
      strupd:=strupd+'qty='+query1.fieldbyname('qty').asstring+','
      else strupd:=strupd+'qty=0,';
      if not query1.fieldbyname('aqty').isnull then
      strupd:=strupd+'aqty='+query1.fieldbyname('aqty').asstring+','
      else strupd:=strupd+'aqty=0,';
      if not query1.fieldbyname('pqty').isnull then
      strupd:=strupd+'pqty='+query1.fieldbyname('pqty').asstring+','
      else strupd:=strupd+'pqty=0,';
      if not query1.fieldbyname('tqty').isnull then
      strupd:=strupd+'tqty='+query1.fieldbyname('tqty').asstring+','
      else strupd:=strupd+'tqty=0,';
      if not query1.fieldbyname('tq1').isnull then
      strupd:=strupd+'tq1='+query1.fieldbyname('tq1').asstring+','
      else strupd:=strupd+'tq1=0,';
      if not query1.fieldbyname('tq2').isnull then
      strupd:=strupd+'tq2='+query1.fieldbyname('tq2').asstring+','
      else strupd:=strupd+'tq2=0,';
      if not query1.fieldbyname('tq3').isnull then
      strupd:=strupd+'tq3='+query1.fieldbyname('tq3').asstring+','
      else strupd:=strupd+'tq3=0,';
      if not query1.fieldbyname('tq4').isnull then
      strupd:=strupd+'tq4='+query1.fieldbyname('tq4').asstring+','
      else strupd:=strupd+'tq4=0,';
      if not query1.fieldbyname('tq5').isnull then
      strupd:=strupd+'tq5='+query1.fieldbyname('tq5').asstring+','
      else strupd:=strupd+'tq5=0,';
      if not query1.fieldbyname('tq6').isnull then
      strupd:=strupd+'tq6='+query1.fieldbyname('tq6').asstring+','
      else strupd:=strupd+'tq6=0,';
      if not query1.fieldbyname('tq7').isnull then
      strupd:=strupd+'tq7='+query1.fieldbyname('tq7').asstring+','
      else strupd:=strupd+'tq7=0,';
      if not query1.fieldbyname('tq8').isnull then
      strupd:=strupd+'tq8='+query1.fieldbyname('tq8').asstring+','
      else strupd:=strupd+'tq8=0,';
      if not query1.fieldbyname('tq9').isnull then
      strupd:=strupd+'tq9='+query1.fieldbyname('tq9').asstring+','
      else strupd:=strupd+'tq9=0,';
      if not query1.fieldbyname('tq10').isnull then
      strupd:=strupd+'tq10='+query1.fieldbyname('tq10').asstring+','
      else strupd:=strupd+'tq10=0,';
      if not query1.fieldbyname('tq11').isnull then
      strupd:=strupd+'tq11='+query1.fieldbyname('tq11').asstring+','
      else strupd:=strupd+'tq11=0,';
      if not query1.fieldbyname('tq12').isnull then
      strupd:=strupd+'tq12='+query1.fieldbyname('tq12').asstring+','
      else strupd:=strupd+'tq12=0,';
      if not query1.fieldbyname('tq13').isnull then
      strupd:=strupd+'tq13='+query1.fieldbyname('tq13').asstring+','
      else strupd:=strupd+'tq13=0,';
      if not query1.fieldbyname('tq14').isnull then
      strupd:=strupd+'tq14='+query1.fieldbyname('tq14').asstring+','
      else strupd:=strupd+'tq14=0,';
      if not query1.fieldbyname('tq15').isnull then
      strupd:=strupd+'tq15='+query1.fieldbyname('tq15').asstring+','
      else strupd:=strupd+'tq15=0,';
      if not query1.fieldbyname('tq16').isnull then
      strupd:=strupd+'tq16='+query1.fieldbyname('tq16').asstring+','
      else strupd:=strupd+'tq16=0,';
      if not query1.fieldbyname('tq17').isnull then
      strupd:=strupd+'tq17='+query1.fieldbyname('tq17').asstring+','
      else strupd:=strupd+'tq17=0,';
      if not query1.fieldbyname('tq18').isnull then
      strupd:=strupd+'tq18='+query1.fieldbyname('tq18').asstring+','
      else strupd:=strupd+'tq18=0,';
      if not query1.fieldbyname('tq19').isnull then
      strupd:=strupd+'tq19='+query1.fieldbyname('tq19').asstring+','
      else strupd:=strupd+'tq19=0,';
      if not query1.fieldbyname('tq20').isnull then
      strupd:=strupd+'tq20='+query1.fieldbyname('tq20').asstring+','
      else strupd:=strupd+'tq20=0,';
      if not query1.fieldbyname('cmp').isnull then begin
        if query1.fieldbyname('cmp').value=true then strupd:=strupd+'cmp=1,'
        else strupd:=strupd+'cmp=0,';
      end else strupd:=strupd+'cmp=0,';

      if not query1.fieldbyname('t1b').isnull then
      strupd:=strupd+'t1b='+query1.fieldbyname('t1b').asstring+','
      else strupd:=strupd+'t1b=0,';
      if not query1.fieldbyname('cmpt1b').isnull then begin
        if query1.fieldbyname('cmpt1b').value=true then strupd:=strupd+'cmpt1b=1,'
        else strupd:=strupd+'cmpt1b=0,';
      end else strupd:=strupd+'cmpt1b=0,';

      if not query1.fieldbyname('ttqty').isnull then
      strupd:=strupd+'ttqty='+query1.fieldbyname('ttqty').asstring+','
      else strupd:=strupd+'ttqty=0,';
      if not query1.fieldbyname('ttq1').isnull then
      strupd:=strupd+'ttq1='+query1.fieldbyname('ttq1').asstring+','
      else strupd:=strupd+'ttq1=0,';
      if not query1.fieldbyname('ttq2').isnull then
      strupd:=strupd+'ttq2='+query1.fieldbyname('ttq2').asstring+','
      else strupd:=strupd+'ttq2=0,';
      if not query1.fieldbyname('ttq3').isnull then
      strupd:=strupd+'ttq3='+query1.fieldbyname('ttq3').asstring+','
      else strupd:=strupd+'ttq3=0,';
      if not query1.fieldbyname('ttq4').isnull then
      strupd:=strupd+'ttq4='+query1.fieldbyname('ttq4').asstring+','
      else strupd:=strupd+'ttq4=0,';
      if not query1.fieldbyname('ttq5').isnull then
      strupd:=strupd+'ttq5='+query1.fieldbyname('ttq5').asstring+','
      else strupd:=strupd+'ttq5=0,';
      if not query1.fieldbyname('ttq6').isnull then
      strupd:=strupd+'ttq6='+query1.fieldbyname('ttq6').asstring+','
      else strupd:=strupd+'ttq6=0,';
      if not query1.fieldbyname('ttq7').isnull then
      strupd:=strupd+'ttq7='+query1.fieldbyname('ttq7').asstring+','
      else strupd:=strupd+'ttq7=0,';
      if not query1.fieldbyname('ttq8').isnull then
      strupd:=strupd+'ttq8='+query1.fieldbyname('ttq8').asstring+','
      else strupd:=strupd+'ttq8=0,';
      if not query1.fieldbyname('ttq9').isnull then
      strupd:=strupd+'ttq9='+query1.fieldbyname('ttq9').asstring+','
      else strupd:=strupd+'ttq9=0,';
      if not query1.fieldbyname('ttq10').isnull then
      strupd:=strupd+'ttq10='+query1.fieldbyname('ttq10').asstring+','
      else strupd:=strupd+'ttq10=0,';
      if not query1.fieldbyname('ttq11').isnull then
      strupd:=strupd+'ttq11='+query1.fieldbyname('ttq11').asstring+','
      else strupd:=strupd+'ttq11=0,';
      if not query1.fieldbyname('ttq12').isnull then
      strupd:=strupd+'ttq12='+query1.fieldbyname('ttq12').asstring+','
      else strupd:=strupd+'ttq12=0,';
      if not query1.fieldbyname('ttq13').isnull then
      strupd:=strupd+'ttq13='+query1.fieldbyname('ttq13').asstring+','
      else strupd:=strupd+'ttq13=0,';
      if not query1.fieldbyname('ttq14').isnull then
      strupd:=strupd+'ttq14='+query1.fieldbyname('ttq14').asstring+','
      else strupd:=strupd+'ttq14=0,';
      if not query1.fieldbyname('ttq15').isnull then
      strupd:=strupd+'ttq15='+query1.fieldbyname('ttq15').asstring+','
      else strupd:=strupd+'ttq15=0,';
      if not query1.fieldbyname('ttq16').isnull then
      strupd:=strupd+'ttq16='+query1.fieldbyname('ttq16').asstring+','
      else strupd:=strupd+'ttq16=0,';
      if not query1.fieldbyname('ttq17').isnull then
      strupd:=strupd+'ttq17='+query1.fieldbyname('ttq17').asstring+','
      else strupd:=strupd+'ttq17=0,';
      if not query1.fieldbyname('ttq18').isnull then
      strupd:=strupd+'ttq18='+query1.fieldbyname('ttq18').asstring+','
      else strupd:=strupd+'ttq18=0,';
      if not query1.fieldbyname('ttq19').isnull then
      strupd:=strupd+'ttq19='+query1.fieldbyname('ttq19').asstring+','
      else strupd:=strupd+'ttq19=0,';
      if not query1.fieldbyname('ttq20').isnull then
      strupd:=strupd+'ttq20='+query1.fieldbyname('ttq20').asstring+','
      else strupd:=strupd+'ttq20=0,';
      if not query1.fieldbyname('cmp1').isnull then begin
        if query1.fieldbyname('cmp1').value=true then strupd:=strupd+'cmp1=1,'
        else strupd:=strupd+'cmp1=0,';
      end else strupd:=strupd+'cmp1=0,';
      if not query1.fieldbyname('tpqty').isnull then
      strupd:=strupd+'tpqty='+query1.fieldbyname('tpqty').asstring+','
      else strupd:=strupd+'tpqty=0,';
      if not query1.fieldbyname('pq1').isnull then
      strupd:=strupd+'pq1='+query1.fieldbyname('pq1').asstring+','
      else strupd:=strupd+'pq1=0,';
      if not query1.fieldbyname('pq2').isnull then
      strupd:=strupd+'pq2='+query1.fieldbyname('pq2').asstring+','
      else strupd:=strupd+'pq2=0,';
      if not query1.fieldbyname('pq3').isnull then
      strupd:=strupd+'pq3='+query1.fieldbyname('pq3').asstring+','
      else strupd:=strupd+'pq3=0,';
      if not query1.fieldbyname('pq4').isnull then
      strupd:=strupd+'pq4='+query1.fieldbyname('pq4').asstring+','
      else strupd:=strupd+'pq4=0,';
      if not query1.fieldbyname('pq5').isnull then
      strupd:=strupd+'pq5='+query1.fieldbyname('pq5').asstring+','
      else strupd:=strupd+'pq5=0,';
      if not query1.fieldbyname('pq6').isnull then
      strupd:=strupd+'pq6='+query1.fieldbyname('pq6').asstring+','
      else strupd:=strupd+'pq6=0,';
      if not query1.fieldbyname('pq7').isnull then
      strupd:=strupd+'pq7='+query1.fieldbyname('pq7').asstring+','
      else strupd:=strupd+'pq7=0,';
      if not query1.fieldbyname('pq8').isnull then
      strupd:=strupd+'pq8='+query1.fieldbyname('pq8').asstring+','
      else strupd:=strupd+'pq8=0,';
      if not query1.fieldbyname('pq9').isnull then
      strupd:=strupd+'pq9='+query1.fieldbyname('pq9').asstring+','
      else strupd:=strupd+'pq9=0,';
      if not query1.fieldbyname('pq10').isnull then
      strupd:=strupd+'pq10='+query1.fieldbyname('pq10').asstring+','
      else strupd:=strupd+'pq10=0,';
      if not query1.fieldbyname('pq11').isnull then
      strupd:=strupd+'pq11='+query1.fieldbyname('pq11').asstring+','
      else strupd:=strupd+'pq11=0,';
      if not query1.fieldbyname('pq12').isnull then
      strupd:=strupd+'pq12='+query1.fieldbyname('pq12').asstring+','
      else strupd:=strupd+'pq12=0,';
      if not query1.fieldbyname('pq13').isnull then
      strupd:=strupd+'pq13='+query1.fieldbyname('pq13').asstring+','
      else strupd:=strupd+'pq13=0,';
      if not query1.fieldbyname('pq14').isnull then
      strupd:=strupd+'pq14='+query1.fieldbyname('pq14').asstring+','
      else strupd:=strupd+'pq14=0,';
      if not query1.fieldbyname('pq15').isnull then
      strupd:=strupd+'pq15='+query1.fieldbyname('pq15').asstring+','
      else strupd:=strupd+'pq15=0,';
      if not query1.fieldbyname('pq16').isnull then
      strupd:=strupd+'pq16='+query1.fieldbyname('pq16').asstring+','
      else strupd:=strupd+'pq16=0,';
      if not query1.fieldbyname('pq17').isnull then
      strupd:=strupd+'pq17='+query1.fieldbyname('pq17').asstring+','
      else strupd:=strupd+'pq17=0,';
      if not query1.fieldbyname('pq18').isnull then
      strupd:=strupd+'pq18='+query1.fieldbyname('pq18').asstring+','
      else strupd:=strupd+'pq18=0,';
      if not query1.fieldbyname('pq19').isnull then
      strupd:=strupd+'pq19='+query1.fieldbyname('pq19').asstring+','
      else strupd:=strupd+'pq19=0,';
      if not query1.fieldbyname('pq20').isnull then
      strupd:=strupd+'pq20='+query1.fieldbyname('pq20').asstring+','
      else strupd:=strupd+'pq20=0,';
      if not query1.fieldbyname('cmp2').isnull then begin
        if query1.fieldbyname('cmp2').value=true then strupd:=strupd+'cmp2=1,'
        else strupd:=strupd+'cmp2=0,';
      end else strupd:=strupd+'cmp2=0,';
      if not query1.fieldbyname('tfqty').isnull then
      strupd:=strupd+'tfqty='+query1.fieldbyname('tfqty').asstring+','
      else strupd:=strupd+'tfqty=0,';
      if not query1.fieldbyname('fq1').isnull then
      strupd:=strupd+'fq1='+query1.fieldbyname('fq1').asstring+','
      else strupd:=strupd+'fq1=0,';
      if not query1.fieldbyname('fq2').isnull then
      strupd:=strupd+'fq2='+query1.fieldbyname('fq2').asstring+','
      else strupd:=strupd+'fq2=0,';
      if not query1.fieldbyname('fq3').isnull then
      strupd:=strupd+'fq3='+query1.fieldbyname('fq3').asstring+','
      else strupd:=strupd+'fq3=0,';
      if not query1.fieldbyname('fq4').isnull then
      strupd:=strupd+'fq4='+query1.fieldbyname('fq4').asstring+','
      else strupd:=strupd+'fq4=0,';
      if not query1.fieldbyname('fq5').isnull then
      strupd:=strupd+'fq5='+query1.fieldbyname('fq5').asstring+','
      else strupd:=strupd+'fq5=0,';
      if not query1.fieldbyname('fq6').isnull then
      strupd:=strupd+'fq6='+query1.fieldbyname('fq6').asstring+','
      else strupd:=strupd+'fq6=0,';
      if not query1.fieldbyname('fq7').isnull then
      strupd:=strupd+'fq7='+query1.fieldbyname('fq7').asstring+','
      else strupd:=strupd+'fq7=0,';
      if not query1.fieldbyname('fq8').isnull then
      strupd:=strupd+'fq8='+query1.fieldbyname('fq8').asstring+','
      else strupd:=strupd+'fq8=0,';
      if not query1.fieldbyname('fq9').isnull then
      strupd:=strupd+'fq9='+query1.fieldbyname('fq9').asstring+','
      else strupd:=strupd+'fq9=0,';
      if not query1.fieldbyname('fq10').isnull then
      strupd:=strupd+'fq10='+query1.fieldbyname('fq10').asstring+','
      else strupd:=strupd+'fq10=0,';
      if not query1.fieldbyname('cmp3').isnull then begin
        if query1.fieldbyname('cmp3').value=true then strupd:=strupd+'cmp3=1,'
        else strupd:=strupd+'cmp3=0,';
      end else strupd:=strupd+'cmp3=0,';
      if not query1.fieldbyname('t3diff').isnull then
      strupd:=strupd+'t3diff='+query1.fieldbyname('t3diff').asstring+','
      else strupd:=strupd+'t3diff=0,';
      if not query1.fieldbyname('teqty').isnull then
      strupd:=strupd+'teqty='+query1.fieldbyname('teqty').asstring+','
      else strupd:=strupd+'teqty=0,';
      if not query1.fieldbyname('eq1').isnull then
      strupd:=strupd+'eq1='+query1.fieldbyname('eq1').asstring+','
      else strupd:=strupd+'eq1=0,';
      if not query1.fieldbyname('eq2').isnull then
      strupd:=strupd+'eq2='+query1.fieldbyname('eq2').asstring+','
      else strupd:=strupd+'eq2=0,';
      if not query1.fieldbyname('eq3').isnull then
      strupd:=strupd+'eq3='+query1.fieldbyname('eq3').asstring+','
      else strupd:=strupd+'eq3=0,';
      if not query1.fieldbyname('eq4').isnull then
      strupd:=strupd+'eq4='+query1.fieldbyname('eq4').asstring+','
      else strupd:=strupd+'eq4=0,';
      if not query1.fieldbyname('eq5').isnull then
      strupd:=strupd+'eq5='+query1.fieldbyname('eq5').asstring+','
      else strupd:=strupd+'eq5=0,';
      if not query1.fieldbyname('eq6').isnull then
      strupd:=strupd+'eq6='+query1.fieldbyname('eq6').asstring+','
      else strupd:=strupd+'eq6=0,';
      if not query1.fieldbyname('eq7').isnull then
      strupd:=strupd+'eq7='+query1.fieldbyname('eq7').asstring+','
      else strupd:=strupd+'eq7=0,';
      if not query1.fieldbyname('eq8').isnull then
      strupd:=strupd+'eq8='+query1.fieldbyname('eq8').asstring+','
      else strupd:=strupd+'eq8=0,';
      if not query1.fieldbyname('eq9').isnull then
      strupd:=strupd+'eq9='+query1.fieldbyname('eq9').asstring+','
      else strupd:=strupd+'eq9=0,';
      if not query1.fieldbyname('eq10').isnull then
      strupd:=strupd+'eq10='+query1.fieldbyname('eq10').asstring+','
      else strupd:=strupd+'eq10=0,';
      if not query1.fieldbyname('eq11').isnull then
      strupd:=strupd+'eq11='+query1.fieldbyname('eq11').asstring+','
      else strupd:=strupd+'eq11=0,';
      if not query1.fieldbyname('eq12').isnull then
      strupd:=strupd+'eq12='+query1.fieldbyname('eq12').asstring+','
      else strupd:=strupd+'eq12=0,';
      if not query1.fieldbyname('eq13').isnull then
      strupd:=strupd+'eq13='+query1.fieldbyname('eq13').asstring+','
      else strupd:=strupd+'eq13=0,';
      if not query1.fieldbyname('eq14').isnull then
      strupd:=strupd+'eq14='+query1.fieldbyname('eq14').asstring+','
      else strupd:=strupd+'eq14=0,';
      if not query1.fieldbyname('eq15').isnull then
      strupd:=strupd+'eq15='+query1.fieldbyname('eq15').asstring+','
      else strupd:=strupd+'eq15=0,';
      if not query1.fieldbyname('cmp4').isnull then begin
        if query1.fieldbyname('cmp4').value=true then strupd:=strupd+'cmp4=1,'
        else strupd:=strupd+'cmp4=0,';
      end else strupd:=strupd+'cmp4=0,';
      if not query1.fieldbyname('tip').isnull then
      strupd:=strupd+'tip='+query1.fieldbyname('tip').asstring+','
      else strupd:=strupd+'tip=0,';
      if not query1.fieldbyname('ip1').isnull then
      strupd:=strupd+'ip1='+query1.fieldbyname('ip1').asstring+','
      else strupd:=strupd+'ip1=0,';
      if not query1.fieldbyname('ip2').isnull then
      strupd:=strupd+'ip2='+query1.fieldbyname('ip2').asstring+','
      else strupd:=strupd+'ip2=0,';
      if not query1.fieldbyname('ip3').isnull then
      strupd:=strupd+'ip3='+query1.fieldbyname('ip3').asstring+','
      else strupd:=strupd+'ip3=0,';
      if not query1.fieldbyname('ip4').isnull then
      strupd:=strupd+'ip4='+query1.fieldbyname('ip4').asstring+','
      else strupd:=strupd+'ip4=0,';
      if not query1.fieldbyname('ip5').isnull then
      strupd:=strupd+'ip5='+query1.fieldbyname('ip5').asstring+','
      else strupd:=strupd+'ip5=0,';
      if not query1.fieldbyname('ipdiff').isnull then
      strupd:=strupd+'ipdiff='+query1.fieldbyname('ipdiff').asstring+','
      else strupd:=strupd+'ipdiff=0,';
      if not query1.fieldbyname('cmpip').isnull then begin
        if query1.fieldbyname('cmpip').value=true then strupd:=strupd+'cmpip=1,'
        else strupd:=strupd+'cmpip=0,';
      end else strupd:=strupd+'cmpip=0,';
      if not query1.fieldbyname('tiqty').isnull then
      strupd:=strupd+'tiqty='+query1.fieldbyname('tiqty').asstring+','
      else strupd:=strupd+'tiqty=0,';
      if not query1.fieldbyname('iq1').isnull then
      strupd:=strupd+'iq1='+query1.fieldbyname('iq1').asstring+','
      else strupd:=strupd+'iq1=0,';
      if not query1.fieldbyname('iq2').isnull then
      strupd:=strupd+'iq2='+query1.fieldbyname('iq2').asstring+','
      else strupd:=strupd+'iq2=0,';
      if not query1.fieldbyname('iq3').isnull then
      strupd:=strupd+'iq3='+query1.fieldbyname('iq3').asstring+','
      else strupd:=strupd+'iq3=0,';
      if not query1.fieldbyname('iq4').isnull then
      strupd:=strupd+'iq4='+query1.fieldbyname('iq4').asstring+','
      else strupd:=strupd+'iq4=0,';
      if not query1.fieldbyname('iq5').isnull then
      strupd:=strupd+'iq5='+query1.fieldbyname('iq5').asstring+','
      else strupd:=strupd+'iq5=0,';
      if not query1.fieldbyname('iq6').isnull then
      strupd:=strupd+'iq6='+query1.fieldbyname('iq6').asstring+','
      else strupd:=strupd+'iq6=0,';
      if not query1.fieldbyname('iq7').isnull then
      strupd:=strupd+'iq7='+query1.fieldbyname('iq7').asstring+','
      else strupd:=strupd+'iq7=0,';
      if not query1.fieldbyname('iq8').isnull then
      strupd:=strupd+'iq8='+query1.fieldbyname('iq8').asstring+','
      else strupd:=strupd+'iq8=0,';
      if not query1.fieldbyname('iq9').isnull then
      strupd:=strupd+'iq9='+query1.fieldbyname('iq9').asstring+','
      else strupd:=strupd+'iq9=0,';
      if not query1.fieldbyname('iq10').isnull then
      strupd:=strupd+'iq10='+query1.fieldbyname('iq10').asstring+','
      else strupd:=strupd+'iq10=0,';
      if not query1.fieldbyname('iq11').isnull then
      strupd:=strupd+'iq11='+query1.fieldbyname('iq11').asstring+','
      else strupd:=strupd+'iq11=0,';
      if not query1.fieldbyname('iq12').isnull then
      strupd:=strupd+'iq12='+query1.fieldbyname('iq12').asstring+','
      else strupd:=strupd+'iq12=0,';
      if not query1.fieldbyname('iq13').isnull then
      strupd:=strupd+'iq13='+query1.fieldbyname('iq13').asstring+','
      else strupd:=strupd+'iq13=0,';
      if not query1.fieldbyname('iq14').isnull then
      strupd:=strupd+'iq14='+query1.fieldbyname('iq14').asstring+','
      else strupd:=strupd+'iq14=0,';
      if not query1.fieldbyname('iq15').isnull then
      strupd:=strupd+'iq15='+query1.fieldbyname('iq15').asstring+','
      else strupd:=strupd+'iq15=0,';
      if not query1.fieldbyname('idiff').isnull then
      strupd:=strupd+'idiff='+query1.fieldbyname('idiff').asstring+','
      else strupd:=strupd+'idiff=0,';
      if not query1.fieldbyname('cmpi').isnull then begin
        if query1.fieldbyname('cmpi').value=true then strupd:=strupd+'cmpi=1,'
        else strupd:=strupd+'cmpi=0,';
      end else strupd:=strupd+'cmpi=0,';
      if not query1.fieldbyname('taql').isnull then
      strupd:=strupd+'taql='+query1.fieldbyname('taql').asstring+','
      else strupd:=strupd+'taql=0,';
      if not query1.fieldbyname('aq1').isnull then
      strupd:=strupd+'aq1='+query1.fieldbyname('aq1').asstring+','
      else strupd:=strupd+'aq1=0,';
      if not query1.fieldbyname('aq2').isnull then
      strupd:=strupd+'aq2='+query1.fieldbyname('aq2').asstring+','
      else strupd:=strupd+'aq2=0,';
      if not query1.fieldbyname('aq3').isnull then
      strupd:=strupd+'aq3='+query1.fieldbyname('aq3').asstring+','
      else strupd:=strupd+'aq3=0,';
      if not query1.fieldbyname('aq01').isnull then
      strupd:=strupd+'aq01='+query1.fieldbyname('aq01').asstring+','
      else strupd:=strupd+'aq01=0,';
      if not query1.fieldbyname('aq02').isnull then
      strupd:=strupd+'aq02='+query1.fieldbyname('aq02').asstring+','
      else strupd:=strupd+'aq02=0,';
      if not query1.fieldbyname('aq03').isnull then
      strupd:=strupd+'aq03='+query1.fieldbyname('aq03').asstring+','
      else strupd:=strupd+'aq03=0,';
      if not query1.fieldbyname('aq001').isnull then
      strupd:=strupd+'aq001='+query1.fieldbyname('aq001').asstring+','
      else strupd:=strupd+'aq001=0,';
      if not query1.fieldbyname('aq002').isnull then
      strupd:=strupd+'aq002='+query1.fieldbyname('aq002').asstring+','
      else strupd:=strupd+'aq002=0,';
      if not query1.fieldbyname('aq003').isnull then
      strupd:=strupd+'aq003='+query1.fieldbyname('aq003').asstring+','
      else strupd:=strupd+'aq003=0,';
      if not query1.fieldbyname('aq10').isnull then
      strupd:=strupd+'aq10='+query1.fieldbyname('aq10').asstring+','
      else strupd:=strupd+'aq10=0,';
      if not query1.fieldbyname('aq11').isnull then
      strupd:=strupd+'aq11='+query1.fieldbyname('aq11').asstring+','
      else strupd:=strupd+'aq11=0,';
      if not query1.fieldbyname('aq12').isnull then
      strupd:=strupd+'aq12='+query1.fieldbyname('aq12').asstring+','
      else strupd:=strupd+'aq12=0,';
      if not query1.fieldbyname('aq13').isnull then
      strupd:=strupd+'aq13='+query1.fieldbyname('aq13').asstring+','
      else strupd:=strupd+'aq13=0,';
      if not query1.fieldbyname('aq14').isnull then
      strupd:=strupd+'aq14='+query1.fieldbyname('aq14').asstring+','
      else strupd:=strupd+'aq14=0,';
      if not query1.fieldbyname('aq15').isnull then
      strupd:=strupd+'aq15='+query1.fieldbyname('aq15').asstring+','
      else strupd:=strupd+'aq15=0,';
      if not query1.fieldbyname('aq16').isnull then
      strupd:=strupd+'aq16='+query1.fieldbyname('aq16').asstring+','
      else strupd:=strupd+'aq16=0,';
      if not query1.fieldbyname('aq17').isnull then
      strupd:=strupd+'aq17='+query1.fieldbyname('aq17').asstring+','
      else strupd:=strupd+'aq17=0,';
      if not query1.fieldbyname('aq18').isnull then
      strupd:=strupd+'aq18='+query1.fieldbyname('aq18').asstring+','
      else strupd:=strupd+'aq18=0,';
      if not query1.fieldbyname('aq19').isnull then
      strupd:=strupd+'aq19='+query1.fieldbyname('aq19').asstring+','
      else strupd:=strupd+'aq19=0,';
      if not query1.fieldbyname('aq20').isnull then
      strupd:=strupd+'aq20='+query1.fieldbyname('aq20').asstring+','
      else strupd:=strupd+'aq20=0,';
      if not query1.fieldbyname('fq11').isnull then
      strupd:=strupd+'fq11='+query1.fieldbyname('fq11').asstring+','
      else strupd:=strupd+'fq11=0,';
      if not query1.fieldbyname('fq12').isnull then
      strupd:=strupd+'fq12='+query1.fieldbyname('fq12').asstring+','
      else strupd:=strupd+'fq12=0,';
      if not query1.fieldbyname('fq13').isnull then
      strupd:=strupd+'fq13='+query1.fieldbyname('fq13').asstring+','
      else strupd:=strupd+'fq13=0,';
      if not query1.fieldbyname('fq14').isnull then
      strupd:=strupd+'fq14='+query1.fieldbyname('fq14').asstring+','
      else strupd:=strupd+'fq14=0,';
      if not query1.fieldbyname('fq15').isnull then
      strupd:=strupd+'fq15='+query1.fieldbyname('fq15').asstring+','
      else strupd:=strupd+'fq15=0,';
      if not query1.fieldbyname('fq16').isnull then
      strupd:=strupd+'fq16='+query1.fieldbyname('fq16').asstring+','
      else strupd:=strupd+'fq16=0,';
      if not query1.fieldbyname('fq17').isnull then
      strupd:=strupd+'fq17='+query1.fieldbyname('fq17').asstring+','
      else strupd:=strupd+'fq17=0,';
      if not query1.fieldbyname('fq18').isnull then
      strupd:=strupd+'fq18='+query1.fieldbyname('fq18').asstring+','
      else strupd:=strupd+'fq18=0,';
      if not query1.fieldbyname('fq19').isnull then
      strupd:=strupd+'fq19='+query1.fieldbyname('fq19').asstring+','
      else strupd:=strupd+'fq19=0,';
      if not query1.fieldbyname('fq20').isnull then
      strupd:=strupd+'fq20='+query1.fieldbyname('fq20').asstring+','
      else strupd:=strupd+'fq20=0,';
      if not query1.fieldbyname('cmpaql').isnull then begin
        if query1.fieldbyname('cmpaql').value=true then strupd:=strupd+'cmpaql=1 '
        else strupd:=strupd+'cmpaql=0 ';
      end else strupd:=strupd+'cmpaql=0 ';
      strupd:=strupd+'where pline='''+query1.fieldbyname('pline').value+''' ';
      strupd:=strupd+'and seq='+query1.fieldbyname('seq').asstring+' ';
      strupd:=strupd+'and j_no='''+query1.fieldbyname('j_no').value+''' ';
      strupd:=strupd+'and ordline='+query1.fieldbyname('ordline').asstring+' ';
      strupd:=strupd+'and j2_job='''+query1.fieldbyname('j2_job').value+''' ';
      strupd:=strupd+'and rwo='''+query1.fieldbyname('rwo').value+''' ';
      strupd:=strupd+'and acol='''+query1.fieldbyname('acol').value+''' ';
      strupd:=strupd+'and did='+query1.fieldbyname('did').asstring;
      //showmessage(strupd);
      if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
      //showmessage('1');

  //
  eflag:='EDIT';
  {
    pstr:='11 '+query1.fieldbyname('pline').value+' '+query1.fieldbyname('seq').asstring+' '+query1.fieldbyname('j_no').value+' '+query1.fieldbyname('ordline').asstring+' '+query1.fieldbyname('j2_job').value+' '+query1.fieldbyname('rwo').value+' '+query1.fieldbyname('acol').value+' '+query1.fieldbyname('did').asstring;
    if pos('test',lowercase(application.ExeName))>0 then
    winexec(pchar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
    else winexec(pchar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
    }
end;

procedure Tfrmlwo.Query1BeforeOpen(DataSet: TDataSet);
var
  tmpField:TIntegerField;
  i:integer;
begin
  for i:=0 to query1.Fields.Count-1 do
    query1.Fields[i].Free;
  for i:=0 to query1.FieldDefs.Count-1 do
    query1.FieldDefs.Items[i].CreateField(query1);
 tmpField:=TIntegerField.Create(query1);
 tmpField.FieldName:='cwoqty';
 tmpField.DataSet:=query1;
 tmpField.FieldKind:=fkCalculated;
end;

procedure Tfrmlwo.Query1CalcFields(DataSet: TDataSet);
var
  sqty:integer;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_swpm_gensample(:x1,:x2)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
  sqty:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select sum(s_qty) as q from tblshedule_sample where pline=:x1 and seq=:x2 and psiz=:x3 and s_swo like ''PP%''';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asstring:=query1.fieldbyname('psiz').value;
    open;
    if not fieldbyname('q').isnull then sqty:=fieldbyname('q').value;
  end;
  query1.fieldbyname('cwoqty').value:=query1.fieldbyname('qty').value+sqty;
end;

procedure Tfrmlwo.BitBtn1Click(Sender: TObject);
var
  pline:string;
  seq:integer;
  did:integer;
begin
  if query1.state=dsedit then query1.post;
  pline:=query1.fieldbyname('pline').value;
  seq:=query1.fieldbyname('seq').value;
  did:=query1.fieldbyname('did').value;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=pline;
    params[1].asinteger:=seq;
    open;
    locate('did',did,[]);
  end;
end;

procedure Tfrmlwo.FormShow(Sender: TObject);
var
  i1,i2,i3,i4,i5,i6,i7,i8:string;
  tplant:string;
  opt:integer;
  dta:string;
  cfmd,r18:boolean;
begin
  dbgrideh2.Visible:=false;
  dbgrideh1.Visible:=true;
  with query3 do begin
    close;
    params.clear;
    commandtext:='select tplant from tblline where pline='''+query1.fieldbyname('pline').value+'''';
    open;
    if fieldbyname('tplant').value='SL' then begin
      dbgrideh1.columns[24].visible:=false;
      dbgrideh1.columns[25].visible:=false;
    end else if fieldbyname('tplant').value='CL' then begin
      dbgrideh1.columns[24].visible:=false;
      dbgrideh1.columns[25].visible:=false;
      //dbgrideh1.columns[15].title.caption:='ユΜ瑈祘计/Transit flow qty|瑈祘 2|T2';
      //dbgrideh1.columns[30].title.caption:='ユΜЧΘ/Transit complete|瑈祘 2|T2';
    end else begin
      dbgrideh1.columns[24].visible:=true;
      dbgrideh1.columns[25].visible:=true;
      //dbgrideh1.columns[15].title.caption:='ユΜ瑈祘计/Transit flow qty|瑈祘 2|瑈杆 (lgP)';
      //dbgrideh1.columns[30].title.caption:='ユΜЧΘ/Transit complete|瑈祘 2|瑈杆 (lgP)';
    end;
  end;

  dta:='0';

  opt:=0;

  eflag:='';
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select flag4 from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if fieldbyname('flag4').value>='B' then begin
      if copy(fieldbyname('flag4').value,1,1)='b' then begin
        i1:=' b '; i2:='';
      end else if copy(fieldbyname('flag4').value,1,1)='B' then begin
        i1:=' B '; i2:='';
      end else if copy(fieldbyname('flag4').value,1,1)='d' then begin
        i1:=' b '; i2:=' d ';
      end else if copy(fieldbyname('flag4').value,1,1)='D' then begin
        i1:=' B '; i2:= ' D ';
      end else if copy(fieldbyname('flag4').value,1,1)='E' then begin
        i1:=' B '; i2:= ' E ';
      end;

      if copy(fieldbyname('flag4').value,2,1)='f' then begin
        i3:=' f '; i4:='';
      end else if copy(fieldbyname('flag4').value,2,1)='F' then begin
        i3:=' F '; i4:='';
      end else if copy(fieldbyname('flag4').value,2,1)='g' then begin
        i3:=' f '; i4:=' g ';
      end else if copy(fieldbyname('flag4').value,2,1)='G' then begin
        i3:=' F '; i4:= ' G ';
      end else if copy(fieldbyname('flag4').value,2,1)='H' then begin
        i3:=' F '; i4:= ' H ';
      end;

      if copy(fieldbyname('flag4').value,3,1)='j' then begin
        i5:=' j '; i6:='';
      end else if copy(fieldbyname('flag4').value,3,1)='J' then begin
        i5:=' J '; i6:='';
      end else if copy(fieldbyname('flag4').value,3,1)='k' then begin
        i5:=' j '; i6:=' k ';
      end else if copy(fieldbyname('flag4').value,3,1)='K' then begin
        i5:=' J '; i6:= ' K ';
      end else if copy(fieldbyname('flag4').value,3,1)='L' then begin
        i5:=' J '; i6:= ' L ';
      end;

      if copy(fieldbyname('flag4').value,4,1)='m' then begin
        i7:=' m '; i8:='';
      end else if copy(fieldbyname('flag4').value,4,1)='M' then begin
        i7:=' M '; i8:='';
      end else if copy(fieldbyname('flag4').value,4,1)='n' then begin
        i7:=' m '; i8:=' n ';
      end else if copy(fieldbyname('flag4').value,4,1)='N' then begin
        i7:=' M '; i8:= ' N ';
      end else if copy(fieldbyname('flag4').value,4,1)='P' then begin
        i7:=' M '; i8:= ' P ';
      end;
    end else begin
      i1:='';
      i2:='';
      i3:='';
      i4:='';
      i5:='';
      i6:='';
      i7:='';
      i8:='';
    end;
  end;
  }
  if dbgrideh1.Visible then begin
    {
    dbgrideh1.Columns[22].Footers[1].Value:=i1;
    dbgrideh1.Columns[23].Footers[1].Value:=i2;
    dbgrideh1.Columns[31].Footers[1].Value:=i3;
    dbgrideh1.Columns[33].Footers[1].Value:=i4;
    dbgrideh1.Columns[35].Footers[1].Value:=i5;
    dbgrideh1.Columns[36].Footers[1].Value:=i6;
    dbgrideh1.Columns[38].Footers[1].Value:=i7;
    dbgrideh1.Columns[39].Footers[1].Value:=i8;
    }
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='select r18,r20 from tbluser where usr=:x1';
      params[0].asstring:=frmmain.ComboBox1.Text;
      open;
      if fieldbyname('r20').value=true then begin
        dbgrideh1.Columns[2].ReadOnly:=false;
        bitbtn2.Enabled:=true;
      end else begin
        dbgrideh1.Columns[2].ReadOnly:=true;
        bitbtn2.Enabled:=false;
      end;
      if fieldbyname('r18').value=true then cancelconfirm1.Visible:=true
     else cancelconfirm1.Visible:=false;
    end;
  end;
  cfmd:=false;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cfmd from tbl_lwo_dt where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('cfmd').isnull then cfmd:=fieldbyname('cfmd').value;
  end;
  if cfmd=true then dbgrideh1.columns[3].fieldname:='TQTY'
  else dbgrideh1.columns[3].fieldname:='';
end;

procedure Tfrmlwo.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmlwo.BitBtn2Click(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select qncpy as r18 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r18').value=true then begin
      if application.MessageBox('Copy data?','Confirmation',mb_iconquestion+mb_YesNo)=idYes then begin
        with query1 do begin
          first;
          while not eof do begin
            edit;
            fieldbyname('pqty').value:=fieldbyname('qty').value;
            post;
            application.ProcessMessages;
            next;
          end;
        end;
      end;
    end else showmessage('You have not right!');
  end;
end;

procedure Tfrmlwo.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmlwo.DBGridEh1Columns4EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(tdt1) as dt from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value else dt:=date;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r18 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r18').value=true then begin
      if frmbundle=nil then frmbundle:=tfrmbundle.create(nil);
      frmbundle.DBGridEh1.Columns[2].Field:=query1.fieldbyname('tq1');
      frmbundle.DateEdit1.date:=dt;
      frmbundle.lblcs.Caption:='The first time';
      frmbundle.BitBtn1.Enabled:=false;
      frmbundle.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tfrmlwo.QueryTQ1Change(Sender: TField);
var
  q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20:integer;
  tq1,tq2,tq3,tq4,tq5,tq6,tq7,tq8,tq9,tq10,tq11,tq12,tq13,tq14,tq15,tq16,tq17,tq18,tq19,tq20:integer;
  pq1,pq2,pq3,pq4,pq5,pq6,pq7,pq8,pq9,pq10,pq11,pq12,pq13,pq14,pq15,pq16,pq17,pq18,pq19,pq20:integer;
  fq1,fq2,fq3,fq4,fq5,fq6,fq7,fq8,fq9,fq10,fq11,fq12,fq13,fq14,fq15,fq16,fq17,fq18,fq19,fq20:integer;
  ip1,ip2,ip3,ip4,ip5:integer;
  eq1,eq2,eq3,eq4,eq5,eq6,eq7,eq8,eq9,eq10,eq11,eq12,eq13,eq14,eq15:integer;
  iq1,iq2,iq3,iq4,iq5,iq6,iq7,iq8,iq9,iq10,iq11,iq12,iq13,iq14,iq15:integer;
  tsqty,tip:integer;
  aq1,aq2,aq3,aq01,aq02,aq03,aq001,aq002,aq003,aq10,aq11,aq12,aq13,aq14,aq15,aq16,aq17,aq18,aq19,aq20:integer;
  fty,ws01:string;
begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select tplant,substr(tshop,1,2) as ws from tblline where pline='''+query1.fieldbyname('pline').value+'''';
      open;
      fty:=fieldbyname('tplant').value;
      if not fieldbyname('ws').isnull then
        ws01:=fieldbyname('ws').value else ws01:='';
    end;
    if not query1.fieldbyname('tsqty').isnull then tsqty:=query1.fieldbyname('tsqty').value else tsqty:=0;
    if not query1.fieldbyname('tip').isnull then tip:=query1.fieldbyname('tip').value else tip:=0;
    if query1.fieldbyname('tq1').isnull then q1:=0 else q1:=query1.fieldbyname('tq1').value;
    if query1.fieldbyname('tq2').isnull then q2:=0 else q2:=query1.fieldbyname('tq2').value;
    if query1.fieldbyname('tq3').isnull then q3:=0 else q3:=query1.fieldbyname('tq3').value;
    if query1.fieldbyname('tq4').isnull then q4:=0 else q4:=query1.fieldbyname('tq4').value;
    if query1.fieldbyname('tq5').isnull then q5:=0 else q5:=query1.fieldbyname('tq5').value;
    if query1.fieldbyname('tq6').isnull then q6:=0 else q6:=query1.fieldbyname('tq6').value;
    if query1.fieldbyname('tq7').isnull then q7:=0 else q7:=query1.fieldbyname('tq7').value;
    if query1.fieldbyname('tq8').isnull then q8:=0 else q8:=query1.fieldbyname('tq8').value;
    if query1.fieldbyname('tq9').isnull then q9:=0 else q9:=query1.fieldbyname('tq9').value;
    if query1.fieldbyname('tq10').isnull then q10:=0 else q10:=query1.fieldbyname('tq10').value;
    if query1.fieldbyname('tq11').isnull then q11:=0 else q11:=query1.fieldbyname('tq11').value;
    if query1.fieldbyname('tq12').isnull then q12:=0 else q12:=query1.fieldbyname('tq12').value;
    if query1.fieldbyname('tq13').isnull then q13:=0 else q13:=query1.fieldbyname('tq13').value;
    if query1.fieldbyname('tq14').isnull then q14:=0 else q14:=query1.fieldbyname('tq14').value;
    if query1.fieldbyname('tq15').isnull then q15:=0 else q15:=query1.fieldbyname('tq15').value;
    if query1.fieldbyname('tq16').isnull then q16:=0 else q16:=query1.fieldbyname('tq16').value;
    if query1.fieldbyname('tq17').isnull then q17:=0 else q17:=query1.fieldbyname('tq17').value;
    if query1.fieldbyname('tq18').isnull then q18:=0 else q18:=query1.fieldbyname('tq18').value;
    if query1.fieldbyname('tq19').isnull then q19:=0 else q19:=query1.fieldbyname('tq19').value;
    if query1.fieldbyname('tq20').isnull then q20:=0 else q20:=query1.fieldbyname('tq20').value;
    query1.fieldbyname('tqty').value:=q1+q2+q3+q4+q5+q6+q7+q8+q9+q10+q11+q12+q13+q14+q15+q16+q17+q18+q19+q20;
    query1.fieldbyname('aqty').value:=query1.fieldbyname('tqty').value-query1.fieldbyname('pqty').value;

    if query1.fieldbyname('ttq1').isnull then tq1:=0 else tq1:=query1.fieldbyname('ttq1').value;
    if query1.fieldbyname('ttq2').isnull then tq2:=0 else tq2:=query1.fieldbyname('ttq2').value;
    if query1.fieldbyname('ttq3').isnull then tq3:=0 else tq3:=query1.fieldbyname('ttq3').value;
    if query1.fieldbyname('ttq4').isnull then tq4:=0 else tq4:=query1.fieldbyname('ttq4').value;
    if query1.fieldbyname('ttq5').isnull then tq5:=0 else tq5:=query1.fieldbyname('ttq5').value;
    if query1.fieldbyname('ttq6').isnull then tq6:=0 else tq6:=query1.fieldbyname('ttq6').value;
    if query1.fieldbyname('ttq7').isnull then tq7:=0 else tq7:=query1.fieldbyname('ttq7').value;
    if query1.fieldbyname('ttq8').isnull then tq8:=0 else tq8:=query1.fieldbyname('ttq8').value;
    if query1.fieldbyname('ttq9').isnull then tq9:=0 else tq9:=query1.fieldbyname('ttq9').value;
    if query1.fieldbyname('ttq10').isnull then tq10:=0 else tq10:=query1.fieldbyname('ttq10').value;
    if query1.fieldbyname('ttq11').isnull then tq11:=0 else tq11:=query1.fieldbyname('ttq11').value;
    if query1.fieldbyname('ttq12').isnull then tq12:=0 else tq12:=query1.fieldbyname('ttq12').value;
    if query1.fieldbyname('ttq13').isnull then tq13:=0 else tq13:=query1.fieldbyname('ttq13').value;
    if query1.fieldbyname('ttq14').isnull then tq14:=0 else tq14:=query1.fieldbyname('ttq14').value;
    if query1.fieldbyname('ttq15').isnull then tq15:=0 else tq15:=query1.fieldbyname('ttq15').value;
    if query1.fieldbyname('ttq16').isnull then tq16:=0 else tq16:=query1.fieldbyname('ttq16').value;
    if query1.fieldbyname('ttq17').isnull then tq17:=0 else tq17:=query1.fieldbyname('ttq17').value;
    if query1.fieldbyname('ttq18').isnull then tq18:=0 else tq18:=query1.fieldbyname('ttq18').value;
    if query1.fieldbyname('ttq19').isnull then tq19:=0 else tq19:=query1.fieldbyname('ttq19').value;
    if query1.fieldbyname('ttq20').isnull then tq20:=0 else tq20:=query1.fieldbyname('ttq20').value;
    if ((pos('SG',query1.fieldbyname('pline').value)>0) or (pos('PS',query1.fieldbyname('pline').value)>0) or (fty='SC') or (ws01='SC')) then begin
      query1.fieldbyname('ttqty').value:=tq1+tq2+tq3+tq4+tq5+tq6+tq7+tq8+tq9+tq10+tq11+tq12+tq13+tq14+tq15+tq16+tq17+tq18+tq19+tq20;
    end else begin
    if (tq1+tq2+tq3+tq4+tq5+tq6+tq7+tq8+tq9+tq10+tq11+tq12+tq13+tq14+tq15+tq16+tq17+tq18+tq19+tq20>q1+q2+q3+q4+q5+q6+q7+q8+q9+q10+q11+q12+q13+q14+q15+q16+q17+q18+q19+q20) then begin
        if (copy(query1.fieldbyname('j_no').value,1,4)<>'CRTE') and (copy(query1.fieldbyname('j_no').value,1,4)<>'LEGD')  then begin
        showmessage('T1 Qty > Picked Qty!');
        abort;
      end;
    end else query1.fieldbyname('ttqty').value:=tq1+tq2+tq3+tq4+tq5+tq6+tq7+tq8+tq9+tq10+tq11+tq12+tq13+tq14+tq15+tq16+tq17+tq18+tq19+tq20;
    end;

    if query1.fieldbyname('aq1').isnull then aq1:=0 else aq1:=query1.fieldbyname('aq1').value;
    if query1.fieldbyname('aq2').isnull then aq2:=0 else aq2:=query1.fieldbyname('aq2').value;
    if query1.fieldbyname('aq3').isnull then aq3:=0 else aq3:=query1.fieldbyname('aq3').value;
    if query1.fieldbyname('aq01').isnull then aq01:=0 else aq01:=query1.fieldbyname('aq01').value;
    if query1.fieldbyname('aq02').isnull then aq02:=0 else aq02:=query1.fieldbyname('aq02').value;
    if query1.fieldbyname('aq03').isnull then aq03:=0 else aq03:=query1.fieldbyname('aq03').value;
    if query1.fieldbyname('aq001').isnull then aq001:=0 else aq001:=query1.fieldbyname('aq001').value;
    if query1.fieldbyname('aq002').isnull then aq002:=0 else aq002:=query1.fieldbyname('aq002').value;
    if query1.fieldbyname('aq003').isnull then aq003:=0 else aq003:=query1.fieldbyname('aq003').value;
    if query1.fieldbyname('aq10').isnull then aq10:=0 else aq10:=query1.fieldbyname('aq10').value;
    if query1.fieldbyname('aq11').isnull then aq11:=0 else aq11:=query1.fieldbyname('aq11').value;
    if query1.fieldbyname('aq12').isnull then aq12:=0 else aq12:=query1.fieldbyname('aq12').value;
    if query1.fieldbyname('aq13').isnull then aq13:=0 else aq13:=query1.fieldbyname('aq13').value;
    if query1.fieldbyname('aq14').isnull then aq14:=0 else aq14:=query1.fieldbyname('aq14').value;
    if query1.fieldbyname('aq15').isnull then aq15:=0 else aq15:=query1.fieldbyname('aq15').value;
    if query1.fieldbyname('aq16').isnull then aq16:=0 else aq16:=query1.fieldbyname('aq16').value;
    if query1.fieldbyname('aq17').isnull then aq17:=0 else aq17:=query1.fieldbyname('aq17').value;
    if query1.fieldbyname('aq18').isnull then aq18:=0 else aq18:=query1.fieldbyname('aq18').value;
    if query1.fieldbyname('aq19').isnull then aq19:=0 else aq19:=query1.fieldbyname('aq19').value;
    if query1.fieldbyname('aq20').isnull then aq20:=0 else aq20:=query1.fieldbyname('aq20').value;

    if query1.fieldbyname('pq1').isnull then pq1:=0 else pq1:=query1.fieldbyname('pq1').value;
    if query1.fieldbyname('pq2').isnull then pq2:=0 else pq2:=query1.fieldbyname('pq2').value;
    if query1.fieldbyname('pq3').isnull then pq3:=0 else pq3:=query1.fieldbyname('pq3').value;
    if query1.fieldbyname('pq4').isnull then pq4:=0 else pq4:=query1.fieldbyname('pq4').value;
    if query1.fieldbyname('pq5').isnull then pq5:=0 else pq5:=query1.fieldbyname('pq5').value;
    if query1.fieldbyname('pq6').isnull then pq6:=0 else pq6:=query1.fieldbyname('pq6').value;
    if query1.fieldbyname('pq7').isnull then pq7:=0 else pq7:=query1.fieldbyname('pq7').value;
    if query1.fieldbyname('pq8').isnull then pq8:=0 else pq8:=query1.fieldbyname('pq8').value;
    if query1.fieldbyname('pq9').isnull then pq9:=0 else pq9:=query1.fieldbyname('pq9').value;
    if query1.fieldbyname('pq10').isnull then pq10:=0 else pq10:=query1.fieldbyname('pq10').value;
    if query1.fieldbyname('pq11').isnull then pq11:=0 else pq11:=query1.fieldbyname('pq11').value;
    if query1.fieldbyname('pq12').isnull then pq12:=0 else pq12:=query1.fieldbyname('pq12').value;
    if query1.fieldbyname('pq13').isnull then pq13:=0 else pq13:=query1.fieldbyname('pq13').value;
    if query1.fieldbyname('pq14').isnull then pq14:=0 else pq14:=query1.fieldbyname('pq14').value;
    if query1.fieldbyname('pq15').isnull then pq15:=0 else pq15:=query1.fieldbyname('pq15').value;
    if query1.fieldbyname('pq16').isnull then pq16:=0 else pq16:=query1.fieldbyname('pq16').value;
    if query1.fieldbyname('pq17').isnull then pq17:=0 else pq17:=query1.fieldbyname('pq17').value;
    if query1.fieldbyname('pq18').isnull then pq18:=0 else pq18:=query1.fieldbyname('pq18').value;
    if query1.fieldbyname('pq19').isnull then pq19:=0 else pq19:=query1.fieldbyname('pq19').value;
    if query1.fieldbyname('pq20').isnull then pq20:=0 else pq20:=query1.fieldbyname('pq20').value;
    if (pos('SG',query1.fieldbyname('pline').value)>0) or (pos('PS',query1.fieldbyname('pline').value)>0) or (fty='SC') or (pos('SC',ws01)>0) then begin
      query1.fieldbyname('tpqty').value:=pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20;
      query1.fieldbyname('tsdiff').value:=query1.fieldbyname('tsqty').value-(pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20);
      //showmessage('0');
    end else if pos('SC',ws01)>0 then begin
      query1.fieldbyname('tpqty').value:=pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20;
      query1.fieldbyname('tsdiff').value:=query1.fieldbyname('tsqty').value-(pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20);
      //showmessage('0');
    end else begin
      //showmessage('1');
    if (query1.fieldbyname('pline').value<='T099') and (copy(query1.fieldbyname('j_no').value,1,4)='TAMA')
    and (copy(query1.fieldbyname('pline').value,3,2)<>'SL') and (copy(query1.fieldbyname('pline').value,3,2)<>'KB') then begin
       if (pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20>tsqty) then
       begin
          if (copy(query1.fieldbyname('j_no').value,1,4)<>'CRTE') and (copy(query1.fieldbyname('j_no').value,1,4)<>'LEGD')  then begin
           showmessage('T2 Qty > Sewn Qty!');
           abort;
         end;
       end else begin
          query1.fieldbyname('tpqty').value:=pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20;
          query1.fieldbyname('tsdiff').value:=query1.fieldbyname('tsqty').value-(pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20);
       end;
    end else if (query1.fieldbyname('pline').value>='T300U') and (query1.fieldbyname('pline').value<'T700U') then begin
      {
      if (pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20>tip) then begin
        if (copy(query1.fieldbyname('j_no').value,1,4)<>'CRTE') and (copy(query1.fieldbyname('j_no').value,1,4)<>'LEGD')  then begin
          showmessage('T2 Qty > GX sP Qty!');
          abort;
        end else begin
          query1.fieldbyname('tpqty').value:=pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20;
          query1.fieldbyname('tsdiff').value:=query1.fieldbyname('tsqty').value-(pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20);
        end;
      end else begin
        query1.fieldbyname('tpqty').value:=pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20;
        query1.fieldbyname('tsdiff').value:=query1.fieldbyname('tsqty').value-(pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20);
      end;
      }
       if (pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20>tsqty) then
       begin
          if (copy(query1.fieldbyname('j_no').value,1,4)<>'CRTE') and (copy(query1.fieldbyname('j_no').value,1,4)<>'LEGD')  then begin
           showmessage('T2 Qty > Sewn Qty!');
           abort;
         end;
       end else begin
          query1.fieldbyname('tpqty').value:=pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20;
          query1.fieldbyname('tsdiff').value:=query1.fieldbyname('tsqty').value-(pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20);
       end;
    end else begin
      if (pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20>tsqty) then begin
        if (copy(query1.fieldbyname('j_no').value,1,4)<>'CRTE') and (copy(query1.fieldbyname('j_no').value,1,4)<>'LEGD')  then begin
          showmessage('T2 Qty > Sewn Qty!');
          abort;
        end;
      end else begin
        query1.fieldbyname('tpqty').value:=pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20;
        query1.fieldbyname('tsdiff').value:=query1.fieldbyname('tsqty').value-(pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20);
      end;
    end;
    end;
    {
    if query1.fieldbyname('ip1').isnull then ip1:=0 else ip1:=query1.fieldbyname('ip1').value;
    if query1.fieldbyname('ip2').isnull then ip2:=0 else ip2:=query1.fieldbyname('ip2').value;
    if query1.fieldbyname('ip3').isnull then ip3:=0 else ip3:=query1.fieldbyname('ip3').value;
    if query1.fieldbyname('ip4').isnull then ip4:=0 else ip4:=query1.fieldbyname('ip4').value;
    if query1.fieldbyname('ip5').isnull then ip5:=0 else ip5:=query1.fieldbyname('ip5').value;
    if (pos('SG',query1.fieldbyname('pline').value)>0) or (pos('PS',query1.fieldbyname('pline').value)>0) then begin
      query1.fieldbyname('tip').value:=ip1+ip2+ip3+ip4+ip5;
      query1.fieldbyname('ipdiff').value:=pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20-(ip1+ip2+ip3+ip4+ip5);
    end else begin
    if (ip1+ip2+ip3+ip4+ip5>pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20) then begin
      if copy(query1.fieldbyname('j_no').value,1,4)<>'CRTE' then begin
        showmessage('IP Qty > T2 Qty!');
        abort;
      end;
    end else begin
      query1.fieldbyname('tip').value:=ip1+ip2+ip3+ip4+ip5;
      query1.fieldbyname('ipdiff').value:=pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20-(ip1+ip2+ip3+ip4+ip5);
    end;
    end;
    }
    if query1.fieldbyname('fq1').isnull then fq1:=0 else fq1:=query1.fieldbyname('fq1').value;
    if query1.fieldbyname('fq2').isnull then fq2:=0 else fq2:=query1.fieldbyname('fq2').value;
    if query1.fieldbyname('fq3').isnull then fq3:=0 else fq3:=query1.fieldbyname('fq3').value;
    if query1.fieldbyname('fq4').isnull then fq4:=0 else fq4:=query1.fieldbyname('fq4').value;
    if query1.fieldbyname('fq5').isnull then fq5:=0 else fq5:=query1.fieldbyname('fq5').value;
    if query1.fieldbyname('fq6').isnull then fq6:=0 else fq6:=query1.fieldbyname('fq6').value;
    if query1.fieldbyname('fq7').isnull then fq7:=0 else fq7:=query1.fieldbyname('fq7').value;
    if query1.fieldbyname('fq8').isnull then fq8:=0 else fq8:=query1.fieldbyname('fq8').value;
    if query1.fieldbyname('fq9').isnull then fq9:=0 else fq9:=query1.fieldbyname('fq9').value;
    if query1.fieldbyname('fq10').isnull then fq10:=0 else fq10:=query1.fieldbyname('fq10').value;
    if query1.fieldbyname('fq11').isnull then fq11:=0 else fq11:=query1.fieldbyname('fq11').value;
    if query1.fieldbyname('fq12').isnull then fq12:=0 else fq12:=query1.fieldbyname('fq12').value;
    if query1.fieldbyname('fq13').isnull then fq13:=0 else fq13:=query1.fieldbyname('fq13').value;
    if query1.fieldbyname('fq14').isnull then fq14:=0 else fq14:=query1.fieldbyname('fq14').value;
    if query1.fieldbyname('fq15').isnull then fq15:=0 else fq15:=query1.fieldbyname('fq15').value;
    if query1.fieldbyname('fq16').isnull then fq16:=0 else fq16:=query1.fieldbyname('fq16').value;
    if query1.fieldbyname('fq17').isnull then fq17:=0 else fq17:=query1.fieldbyname('fq17').value;
    if query1.fieldbyname('fq18').isnull then fq18:=0 else fq18:=query1.fieldbyname('fq18').value;
    if query1.fieldbyname('fq19').isnull then fq19:=0 else fq19:=query1.fieldbyname('fq19').value;
    if query1.fieldbyname('fq20').isnull then fq20:=0 else fq20:=query1.fieldbyname('fq20').value;
    if ((pos('SG',query1.fieldbyname('pline').value)>0) or (pos('PS',query1.fieldbyname('pline').value)>0) or (fty='SC') or (ws01='SC')) then begin
      query1.fieldbyname('tfqty').value:=fq1+fq2+fq3+fq4+fq5+fq6+fq7+fq8+fq9+fq10+fq11+fq12+fq13+fq14+fq15+fq16+fq17+fq18+fq19+fq20;
    end else begin
    if (fq1+fq2+fq3+fq4+fq5+fq6+fq7+fq8+fq9+fq10+fq11+fq12+fq13+fq14+fq15+fq16+fq17+fq18+fq19+fq20>pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20) then begin
        if (copy(query1.fieldbyname('j_no').value,1,4)<>'CRTE') and (copy(query1.fieldbyname('j_no').value,1,4)<>'LEGD')  then begin
        showmessage('T3 Qty > T2 Qty!');
        abort;
      end;
    end else query1.fieldbyname('tfqty').value:=fq1+fq2+fq3+fq4+fq5+fq6+fq7+fq8+fq9+fq10+fq11+fq12+fq13+fq14+fq15+fq16+fq17+fq18+fq19+fq20;
    end;

    if query1.fieldbyname('eq1').isnull then eq1:=0 else eq1:=query1.fieldbyname('eq1').value;
    if query1.fieldbyname('eq2').isnull then eq2:=0 else eq2:=query1.fieldbyname('eq2').value;
    if query1.fieldbyname('eq3').isnull then eq3:=0 else eq3:=query1.fieldbyname('eq3').value;
    if query1.fieldbyname('eq4').isnull then eq4:=0 else eq4:=query1.fieldbyname('eq4').value;
    if query1.fieldbyname('eq5').isnull then eq5:=0 else eq5:=query1.fieldbyname('eq5').value;
    if query1.fieldbyname('eq6').isnull then eq6:=0 else eq6:=query1.fieldbyname('eq6').value;
    if query1.fieldbyname('eq7').isnull then eq7:=0 else eq7:=query1.fieldbyname('eq7').value;
    if query1.fieldbyname('eq8').isnull then eq8:=0 else eq8:=query1.fieldbyname('eq8').value;
    if query1.fieldbyname('eq9').isnull then eq9:=0 else eq9:=query1.fieldbyname('eq9').value;
    if query1.fieldbyname('eq10').isnull then eq10:=0 else eq10:=query1.fieldbyname('eq10').value;
    if query1.fieldbyname('eq11').isnull then eq11:=0 else eq11:=query1.fieldbyname('eq11').value;
    if query1.fieldbyname('eq12').isnull then eq12:=0 else eq12:=query1.fieldbyname('eq12').value;
    if query1.fieldbyname('eq13').isnull then eq13:=0 else eq13:=query1.fieldbyname('eq13').value;
    if query1.fieldbyname('eq14').isnull then eq14:=0 else eq14:=query1.fieldbyname('eq14').value;
    if query1.fieldbyname('eq15').isnull then eq15:=0 else eq15:=query1.fieldbyname('eq15').value;
    if ((pos('SG',query1.fieldbyname('pline').value)>0) or (pos('PS',query1.fieldbyname('pline').value)>0) or (fty='SC') or (ws01='SC')) then begin
      query1.fieldbyname('teqty').value:=eq1+eq2+eq3+eq4+eq5+eq6+eq7+eq8+eq9+eq10+eq11+eq12+eq13+eq14+eq15;
      query1.fieldbyname('t3diff').value:=fq1+fq2+fq3+fq4+fq5+fq6+fq7+fq8+fq9+fq10+fq11+fq12+fq13+fq14+fq15+fq16+fq17+fq18+fq19+fq20-(eq1+eq2+eq3+eq4+eq5+eq6+eq7+eq8+eq9+eq10+eq11+eq12+eq13+eq14+eq15);
    end else begin
    if (eq1+eq2+eq3+eq4+eq5+eq6+eq7+eq8+eq9+eq10+eq11+eq12+eq13+eq14+eq15>fq1+fq2+fq3+fq4+fq5+fq6+fq7+fq8+fq9+fq10+fq11+fq12+fq13+fq14+fq15+fq16+fq17+fq18+fq19+fq20) then begin
        if (copy(query1.fieldbyname('j_no').value,1,4)<>'CRTE') and (copy(query1.fieldbyname('j_no').value,1,4)<>'LEGD')  then begin
        showmessage('Ex-fty Qty > T3 Qty!');
        abort;
      end;
    end else begin
      query1.fieldbyname('teqty').value:=eq1+eq2+eq3+eq4+eq5+eq6+eq7+eq8+eq9+eq10+eq11+eq12+eq13+eq14+eq15;
      query1.fieldbyname('t3diff').value:=fq1+fq2+fq3+fq4+fq5+fq6+fq7+fq8+fq9+fq10+fq11+fq12+fq13+fq14+fq15+fq16+fq17+fq18+fq19+fq20-(eq1+eq2+eq3+eq4+eq5+eq6+eq7+eq8+eq9+eq10+eq11+eq12+eq13+eq14+eq15);
    end;
    end;

    if query1.fieldbyname('iq1').isnull then iq1:=0 else iq1:=query1.fieldbyname('iq1').value;
    if query1.fieldbyname('iq2').isnull then iq2:=0 else iq2:=query1.fieldbyname('iq2').value;
    if query1.fieldbyname('iq3').isnull then iq3:=0 else iq3:=query1.fieldbyname('iq3').value;
    if query1.fieldbyname('iq4').isnull then iq4:=0 else iq4:=query1.fieldbyname('iq4').value;
    if query1.fieldbyname('iq5').isnull then iq5:=0 else iq5:=query1.fieldbyname('iq5').value;
    if query1.fieldbyname('iq6').isnull then iq6:=0 else iq6:=query1.fieldbyname('iq6').value;
    if query1.fieldbyname('iq7').isnull then iq7:=0 else iq7:=query1.fieldbyname('iq7').value;
    if query1.fieldbyname('iq8').isnull then iq8:=0 else iq8:=query1.fieldbyname('iq8').value;
    if query1.fieldbyname('iq9').isnull then iq9:=0 else iq9:=query1.fieldbyname('iq9').value;
    if query1.fieldbyname('iq10').isnull then iq10:=0 else iq10:=query1.fieldbyname('iq10').value;
    if query1.fieldbyname('iq11').isnull then iq11:=0 else iq11:=query1.fieldbyname('iq11').value;
    if query1.fieldbyname('iq12').isnull then iq12:=0 else iq12:=query1.fieldbyname('iq12').value;
    if query1.fieldbyname('iq13').isnull then iq13:=0 else iq13:=query1.fieldbyname('iq13').value;
    if query1.fieldbyname('iq14').isnull then iq14:=0 else iq14:=query1.fieldbyname('iq14').value;
    if query1.fieldbyname('iq15').isnull then iq15:=0 else iq15:=query1.fieldbyname('iq15').value;
    if ((pos('SG',query1.fieldbyname('pline').value)>0) or (pos('PS',query1.fieldbyname('pline').value)>0) or (fty='SC') or (ws01='SC')) then begin
      query1.fieldbyname('tiqty').value:=iq1+iq2+iq3+iq4+iq5+iq6+iq7+iq8+iq9+iq10+iq11+iq12+iq13+iq14+iq15;
      query1.fieldbyname('idiff').value:=eq1+eq2+eq3+eq4+eq5+eq6+eq7+eq8+eq9+eq10+eq11+eq12+eq13+eq14+eq15-(iq1+iq2+iq3+iq4+iq5+iq6+iq7+iq8+iq9+iq10+iq11+iq12+iq13+iq14+iq15);
    end else begin
    if (iq1+iq2+iq3+iq4+iq5+iq6+iq7+iq8+iq9+iq10+iq11+iq12+iq13+iq14+iq15>eq1+eq2+eq3+eq4+eq5+eq6+eq7+eq8+eq9+eq10+eq11+eq12+eq13+eq14+eq15) then begin
        if (copy(query1.fieldbyname('j_no').value,1,4)<>'CRTE') and (copy(query1.fieldbyname('j_no').value,1,4)<>'LEGD')  then begin
        showmessage('Invoiced Qty > Ex-fty Qty!');
        abort;
      end;
    end else begin
      query1.fieldbyname('tiqty').value:=iq1+iq2+iq3+iq4+iq5+iq6+iq7+iq8+iq9+iq10+iq11+iq12+iq13+iq14+iq15;
      query1.fieldbyname('idiff').value:=eq1+eq2+eq3+eq4+eq5+eq6+eq7+eq8+eq9+eq10+eq11+eq12+eq13+eq14+eq15-(iq1+iq2+iq3+iq4+iq5+iq6+iq7+iq8+iq9+iq10+iq11+iq12+iq13+iq14+iq15);
    end;
    end;

    if (query1.fieldbyname('pline').value<='T080') and (copy(query1.fieldbyname('j_no').value,1,4)='TAMA')
    and (copy(query1.fieldbyname('pline').value,3,2)<>'SL') and (copy(query1.fieldbyname('pline').value,3,2)<>'KB') then begin
     if ((pos('SG',query1.fieldbyname('pline').value)>0) or (pos('PS',query1.fieldbyname('pline').value)>0) or (fty='SC') or (ws01='SC')) then begin
      query1.fieldbyname('taql').value:=aq1+aq2+aq3+aq01+aq02+aq03+aq001+aq002+aq003+aq10+aq11+aq12+aq13+aq14+aq15+aq16+aq17+aq18+aq19+aq20;
     end else begin
      //{
      if (tsqty<aq1+aq2+aq3+aq01+aq02+aq03+aq001+aq002+aq003+aq10+aq11+aq12+aq13+aq14+aq15+aq16+aq17+aq18+aq19+aq20) then
      begin
        if (copy(query1.fieldbyname('j_no').value,1,4)<>'CRTE') and (copy(query1.fieldbyname('j_no').value,1,4)<>'LEGD')  then begin
          showmessage('AQL Qty > Sewn Qty!');
          abort;
        end;
      end else
      //}
      query1.fieldbyname('taql').value:=aq1+aq2+aq3+aq01+aq02+aq03+aq001+aq002+aq003+aq10+aq11+aq12+aq13+aq14+aq15+aq16+aq17+aq18+aq19+aq20;
     end;
    end else begin
      query1.fieldbyname('taql').value:=aq1+aq2+aq3+aq01+aq02+aq03+aq001+aq002+aq003+aq10+aq11+aq12+aq13+aq14+aq15+aq16+aq17+aq18+aq19+aq20;
    end;
end;

procedure Tfrmlwo.BitBtn3Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  bitbtn1click(self);
  if query1.active then begin
    with query8 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0 order by pline,seq,did';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tblshedule where pline=:x1 and seq=:x2';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
    end;
    if pos('TAMA',query3.fieldbyname('j_no').value)>0 then begin
      if frmlwosum1=nil then frmlwosum1:=tfrmlwosum1.Create(nil);
      with frmlwosum1.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from tbl_lwo where pline=:x1 and seq=:x2';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        open;
      end;
      frmlwosum1.fty001.Caption:=query3.fieldbyname('tplant').value;
      frmlwosum1.line001.Caption:=query3.fieldbyname('pline').value;
      frmlwosum1.jno001.Caption:=query3.fieldbyname('j_no').value;
      frmlwosum1.cstyle001.Caption:=query3.fieldbyname('cstyle').value;
      frmlwosum1.job001.Caption:=query3.fieldbyname('j2_job').value;
      frmlwosum1.rwo001.Caption:=query3.fieldbyname('rwo').value;
      frmlwosum1.fccs001.Caption:=query3.fieldbyname('fccs').value;
      frmlwosum1.acol001.Caption:=query3.fieldbyname('acol').value;
      frmlwosum1.scqty001.Caption:=formatfloat('#,0',query3.fieldbyname('scqty').Value);
      if not query3.fieldbyname('cplan').isnull then
      frmlwosum1.fdt001.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('cplan').value)
      else frmlwosum1.fdt001.caption:='    /  /  ';
      if not query3.fieldbyname('cfksrq').isnull then
      frmlwosum1.cfksrq001.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('cfksrq').value)
      else frmlwosum1.cfksrq001.Caption:='    /  /  ';
      if not query3.fieldbyname('tzlcrq').isnull then
      frmlwosum1.tzlcrq001.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('tzlcrq').value)
      else frmlwosum1.tzlcrq001.Caption:='    /  /  ';
      frmlwosum1.yqlcrq001.Caption:=formatdatetime('yyyy/MM/dd hh',query3.fieldbyname('yqlcrq').value);
      frmlwosum1.xc3001.Caption:=query3.fieldbyname('xc3').asstring;
      with frmlwosum1.query4 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        commandtext:='select min(yszq) as yszq from cust_exfty where tplant=:x1 and pgrp=:x2';
        params[0].asstring:=query3.fieldbyname('tplant').value;
        params[1].asstring:=copy(query3.fieldbyname('j_no').value,1,4);
        open;
        if not fieldbyname('yszq').isnull then frmlwosum1.yszq1.Caption:=fieldbyname('yszq').AsString else frmlwosum1.yszq1.Caption:='0';
      end;
      frmlwosum1.ppReport1.Print;
    end else begin
      fty001.Caption:=query3.fieldbyname('tplant').value;
      line001.Caption:=query3.fieldbyname('pline').value;
      jno001.Caption:=query3.fieldbyname('j_no').value;
      cstyle001.Caption:=query3.fieldbyname('cstyle').value;
      job001.Caption:=query3.fieldbyname('j2_job').value;
      if not query3.fieldbyname('cwo').isnull then
      cwo001.caption:=query3.fieldbyname('cwo').value
      else cwo001.Caption:='';
      rwo001.Caption:=query3.fieldbyname('rwo').value;
      fccs001.Caption:=query3.fieldbyname('fccs').value;
      acol001.Caption:=query3.fieldbyname('acol').value;
      scqty001.Caption:=formatfloat('#,0',query3.fieldbyname('scqty').Value);
      if not query3.fieldbyname('cplan').isnull then
      fdt001.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('cplan').value)
      else fdt001.caption:='    /  /  ';
      if not query3.fieldbyname('cfksrq').isnull then
      cfksrq001.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('cfksrq').value)
       else cfksrq001.Caption:='    /  /  ';
      if not query3.fieldbyname('tzlcrq').isnull then
      tzlcrq001.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('tzlcrq').value)
      else tzlcrq001.Caption:='    /  /  ';
      yqlcrq001.Caption:=formatdatetime('yyyy/MM/dd hh',query3.fieldbyname('yqlcrq').value);
      xc3001.Caption:=query3.fieldbyname('xc3').asstring;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        commandtext:='select min(yszq) as yszq from cust_exfty where tplant=:x1 and pgrp=:x2';
        params[0].asstring:=query3.fieldbyname('tplant').value;
        params[1].asstring:=copy(query3.fieldbyname('j_no').value,1,4);
        open;
        if not fieldbyname('yszq').isnull then yszq1.Caption:=fieldbyname('yszq').AsString else yszq1.Caption:='0';
      end;
      ppReport1.Print;
    end;
  end;
  screen.Cursor:=crDefault;
end;

procedure Tfrmlwo.DBGridEh1Columns5EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(ttd1) as dt from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r18 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r18').value=true then begin
      if frmtransit=nil then frmtransit:=tfrmtransit.create(nil);
      frmtransit.DBGridEh1.Columns[2].Field:=query1.fieldbyname('ttq1');
      if dt>0 then
      frmtransit.DateEdit1.date:=dt;
      frmtransit.lblcs.Caption:='The first time';
      frmtransit.BitBtn1.Enabled:=false;
      frmtransit.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tfrmlwo.ppSummaryBand1BeforePrint(Sender: TObject);
var
  pk01,pk02,ts101,ts102,ts201,ts202,ts301,ts302,ts401,ts402,s001,s002,aq01,aq02:string;
  dt1,dt2:tdate;
  c1,c2,c3,c4,c5:integer;
  i1,i2,i3,i4,i5,i6,i7,i8:string;
  tm0:tdatetime;
  s00001:string;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select flag4 from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if fieldbyname('flag4').value>='B' then begin
      if copy(fieldbyname('flag4').value,1,1)='b' then begin
        i1:=' b '; i2:='';
      end else if copy(fieldbyname('flag4').value,1,1)='B' then begin
        i1:=' B '; i2:='';
      end else if copy(fieldbyname('flag4').value,1,1)='d' then begin
        i1:=' b '; i2:=' d ';
      end else if copy(fieldbyname('flag4').value,1,1)='D' then begin
        i1:=' B '; i2:= ' D ';
      end else if copy(fieldbyname('flag4').value,1,1)='E' then begin
        i1:=' B '; i2:= ' E ';
      end;

      if copy(fieldbyname('flag4').value,2,1)='f' then begin
        i3:=' f '; i4:='';
      end else if copy(fieldbyname('flag4').value,2,1)='F' then begin
        i3:=' F '; i4:='';
      end else if copy(fieldbyname('flag4').value,2,1)='g' then begin
        i3:=' f '; i4:=' g ';
      end else if copy(fieldbyname('flag4').value,2,1)='G' then begin
        i3:=' F '; i4:= ' G ';
      end else if copy(fieldbyname('flag4').value,2,1)='H' then begin
        i3:=' F '; i4:= ' H ';
      end;

      if copy(fieldbyname('flag4').value,3,1)='j' then begin
        i5:=' j '; i6:='';
      end else if copy(fieldbyname('flag4').value,3,1)='J' then begin
        i5:=' J '; i6:='';
      end else if copy(fieldbyname('flag4').value,3,1)='k' then begin
        i5:=' j '; i6:=' k ';
      end else if copy(fieldbyname('flag4').value,3,1)='K' then begin
        i5:=' J '; i6:= ' K ';
      end else if copy(fieldbyname('flag4').value,3,1)='L' then begin
        i5:=' J '; i6:= ' L ';
      end;

      if copy(fieldbyname('flag4').value,4,1)='m' then begin
        i7:=' m '; i8:='';
      end else if copy(fieldbyname('flag4').value,4,1)='M' then begin
        i7:=' M '; i8:='';
      end else if copy(fieldbyname('flag4').value,4,1)='n' then begin
        i7:=' m '; i8:=' n ';
      end else if copy(fieldbyname('flag4').value,4,1)='N' then begin
        i7:=' M '; i8:= ' N ';
      end else if copy(fieldbyname('flag4').value,4,1)='P' then begin
        i7:=' M '; i8:= ' P ';
      end;
    end else begin
      i1:='';
      i2:='';
      i3:='';
      i4:='';
      i5:='';
      i6:='';
      i7:='';
      i8:='';
    end;
  end;

  b01.Caption:=i1;
  e01.Caption:=i2;
  f01.Caption:=i3;
  h01.Caption:=i4;
  j01.Caption:=i5;
  l01.Caption:=i6;
  m01.Caption:=i7;

  tm0:=now;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='execute procedure sp_lwo_calc_dt_01(:x1,:x2,:x3,:x4)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asstring:='1';
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=101 and dseq<=110 and tp=''1'' and dt>:x4';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asdate:=encodedate(1899,12,30);
    open;
    if not fieldbyname('dt1').isnull then begin
      if fieldbyname('dt1').value>encodedate(1899,12,30) then pk01:=formatdatetime('yy/MM/dd',fieldbyname('dt1').value)
      else pk01:='';
    end else begin
      pk01:='';
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then pk02:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else pk02:='';
    end else begin
      pk02:='';
    end;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=201 and dseq<=210 and tp=''1'' and dt>:x4';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asdate:=encodedate(1899,12,30);
    open;
    if not fieldbyname('dt1').isnull then begin
      if fieldbyname('dt1').value>encodedate(1899,12,30) then ts101:=formatdatetime('yy/MM/dd',fieldbyname('dt1').value)
      else ts101:='';
    end else begin
      ts101:='';
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then ts102:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else ts102:='';
    end else begin
      ts102:='';
    end;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='execute procedure sp_lwo_calc_sewdt(:x1,:x2,:x3)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    execute;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_sewdt where pline=:x1 and seq=:x2 and tm=:x3';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    open;
    if not fieldbyname('dt1').isnull then begin
      if fieldbyname('dt1').value>encodedate(1899,12,30) then s001:=formatdatetime('yy/MM/dd',fieldbyname('dt1').value)
      else s001:='';
    end else begin
      s001:='';
    end;
    if not fieldbyname('dt2').isnull then begin
      if (fieldbyname('dt2').value>encodedate(1899,12,30)) and (fieldbyname('dt2').value<date) then s002:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else s002:='';
    end else begin
      s002:='';
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='execute procedure sp_lwo_calc_dt_01(:x1,:x2,:x3,:x4)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asstring:='2';
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=301 and dseq<=320 and tp=''2'' and dt>:x4';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asdate:=encodedate(1899,12,30);
    open;
    if not fieldbyname('dt1').isnull then begin
      if fieldbyname('dt1').value>encodedate(1899,12,30) then ts201:=formatdatetime('yy/MM/dd',fieldbyname('dt1').value)
      else ts201:='';
    end else begin
      ts201:='';
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then ts202:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else ts202:='';
    end else begin
      ts202:='';
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='execute procedure sp_lwo_calc_dt_01(:x1,:x2,:x3,:x4)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asstring:='3';
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=401 and dseq<=405 and tp=''3'' and dt>:x4';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asdate:=encodedate(1899,12,30);
    open;
    if not fieldbyname('dt1').isnull then begin
      if fieldbyname('dt1').value>encodedate(1899,12,30) then ts301:=formatdatetime('yy/MM/dd',fieldbyname('dt1').value)
      else ts301:='';
    end else begin
      ts301:='';
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then ts302:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else ts302:='';
    end else begin
      ts302:='';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='execute procedure sp_lwo_calc_dt_01(:x1,:x2,:x3,:x4)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asstring:='4';
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=501 and dseq<=505 and tp=''4'' and dt>:x4';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asdate:=encodedate(1899,12,30);
    open;
    if not fieldbyname('dt1').isnull then begin
      if fieldbyname('dt1').value>encodedate(1899,12,30) then ts401:=formatdatetime('yy/MM/dd',fieldbyname('dt1').value)
      else ts401:='';
    end else begin
      ts401:='';
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then ts402:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else ts402:='';
    end else begin
      ts402:='';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='execute procedure sp_lwo_calc_dt_01(:x1,:x2,:x3,:x4)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asstring:='5';
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=601 and dseq<=606 and tp=''5'' and dt>:x4';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asdate:=encodedate(1899,12,30);
    open;
    if not fieldbyname('dt1').isnull then begin
      if fieldbyname('dt1').value>encodedate(1899,12,30) then aq01:=formatdatetime('yy/MM/dd',fieldbyname('dt1').value)
      else aq01:='';
    end else begin
      aq01:='';
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then aq02:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else aq02:='';
    end else begin
      aq02:='';
    end;
  end;

  c1:=1;c2:=1;c3:=1;c4:=1;c5:=1;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0 and cmp=0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp').isnull then c1:=0;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp1 from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0 and cmp1=0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp1').isnull then c2:=0;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp2 from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0 and cmp2=0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp2').isnull then c3:=0;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp3 from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0 and cmp3=0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp3').isnull then c4:=0;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp4 from tbl_lwo where pline=:x1 and seq=:x2 and teqty>0 and cmp4=0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp4').isnull then c5:=0;
  end;

  if c1=1 then begin
    pick01.Caption:=pk01;pick02.Caption:='';
  end else begin
    pick01.Caption:=pk01;pick02.Caption:=pk02;
  end;
  if c2=1 then begin
    transit101.Caption:=ts101;transit102.Caption:='';
  end else begin
    transit101.Caption:=ts101;transit102.Caption:=ts102;
  end;
  sewn01.Caption:=s001;sewn02.Caption:=s002;
  if c3=1 then begin
    transit201.Caption:=ts201;transit202.Caption:='';
    ip001.Caption:=ts201;ip002.Caption:='';
  end else begin
    transit201.Caption:=ts201;transit202.Caption:=ts202;
    ip001.Caption:=ts201;ip002.Caption:=ts202;
  end;
  if c4=1 then begin
    packed01.Caption:=ts301;packed02.Caption:='';
    transit301.Caption:=ts301;transit302.Caption:='';
  end else begin
    packed01.Caption:=ts301;packed02.Caption:=ts302;
    transit301.Caption:=ts301;transit302.Caption:=ts302;
  end;
  if c5=1 then begin
    transit401.Caption:=ts401;transit402.Caption:='';
  end else begin
    transit401.Caption:=ts401;transit402.Caption:=ts402;
  end;
  aql001.caption:=aq01;aql002.caption:=aq02;

  ppMemo4.Lines.clear;
  s00001:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_lwo_dt where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('remarks').isnull then s00001:='Picked diff: '+fieldbyname('remarks').value+char(13);
    if not fieldbyname('smemo').isnull then begin
      if s00001>'' then s00001:=s00001+'Sewn diff: '+fieldbyname('smemo').value+char(13)
      else s00001:='Sewn diff: '+fieldbyname('smemo').value+char(13);
    end;
    if not fieldbyname('aqlmemo').isnull then begin
      if s00001>'' then s00001:=s00001+'AQL diff: '+fieldbyname('aqlmemo').value+char(13)
      else s00001:='AQL diff: '+fieldbyname('aqlmemo').value+char(13);
    end;
    if not fieldbyname('t2memo').isnull then begin
      if s00001>'' then s00001:=s00001+'T2 diff: '+fieldbyname('t2memo').value+char(13)
      else s00001:='T2 diff: '+fieldbyname('t2memo').value+char(13);
    end;
    if not fieldbyname('pmemo').isnull then begin
      if s00001>'' then s00001:=s00001+'cPack diff: '+fieldbyname('pmemo').value+char(13)
      else s00001:='cPack diff: '+fieldbyname('pmemo').value+char(13);
    end;
  end;
  ppMemo4.Lines.Add(s00001);
end;

procedure Tfrmlwo.Removeall1Click(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='delete from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
end;

procedure Tfrmlwo.DBGridEh1Columns7EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
begin
  screen.cursor:=crSQLWait;
  try
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='execute procedure sp_lwo_genip_new(:x1,:x2,:x3)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asstring:='BN';
    execute;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(adt1) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp=''BN''';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r12 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r12').value=true then begin
      if frmlwo_ip=nil then frmlwo_ip:=tfrmlwo_ip.create(nil);
      frmlwo_ip.caption:='B Ws Sewn Qty';
      frmlwo_ip.dbgrideh1.columns[5].title.caption:='B Ws Sewn|Total';
      frmlwo_ip.dbgrideh1.columns[6].title.caption:='B Ws Sewn|Qty';
      frmlwo_ip.label10.caption:='BN';
      with frmlwo_ip.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='select * from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp=:x3';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asstring:='BN';
        open;
      end;
      frmlwo_ip.DBGridEh1.Columns[6].Field:=frmlwo_ip.query1.fieldbyname('aq1');
      if dt>0 then
      frmlwo_ip.DateEdit1.date:=dt;
      frmlwo_ip.lblcs.Caption:='The first time';
      frmlwo_ip.BitBtn1.Enabled:=false;
      frmlwo_ip.Show;
    end else showmessage('You have no right!');
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmlwo.DBGridEh1Columns9EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
begin
  screen.cursor:=crSQLWait;
  try
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='execute procedure sp_lwo_genip_new(:x1,:x2,:x3)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asstring:='PF';
    execute;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(adt1) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp=''PF''';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r12 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r12').value=true then begin
      if frmlwo_ip=nil then frmlwo_ip:=tfrmlwo_ip.create(nil);
      frmlwo_ip.caption:='F Ws Sewn Qty';
      frmlwo_ip.dbgrideh1.columns[5].title.caption:='F Ws Sewn|Total';
      frmlwo_ip.dbgrideh1.columns[6].title.caption:='F Ws Sewn|Qty';
      frmlwo_ip.label10.caption:='PF';
      with frmlwo_ip.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='select * from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp=:x3';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asstring:='PF';
        open;
      end;
      frmlwo_ip.DBGridEh1.Columns[6].Field:=frmlwo_ip.query1.fieldbyname('aq1');
      if dt>0 then
      frmlwo_ip.DateEdit1.date:=dt;
      frmlwo_ip.lblcs.Caption:='The first time';
      frmlwo_ip.BitBtn1.Enabled:=false;
      frmlwo_ip.Show;
    end else showmessage('You have no right!');
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmlwo.DBGridEh1Columns17EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
begin
  //2015-09-05 さぱ蛤Daisy/Lucy/Mikle单秨穦絋﹚杆计秖ノT2杆絚计秖ノT3
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(fdt1) as dt from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r24 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r24').value=true then begin
      if frmtransit3=nil then frmtransit3:=tfrmtransit3.create(nil);
      frmtransit3.Caption:='QN - cPacked';
      frmtransit3.Label9.Caption:='cPacked Date';
      frmtransit3.DBGridEh1.Columns[6].Title.Caption:='Total cPacked Qty';
      frmtransit3.DBGridEh1.Columns[7].Title.Caption:='cPacked Qty';
      frmtransit3.DBGridEh1.Columns[7].Field:=query1.fieldbyname('fq1');
      if dt>0 then
      frmtransit3.dateedit1.date:=dt;
      frmtransit3.lblcs.Caption:='The first time';
      frmtransit3.BitBtn1.Enabled:=false;
      frmtransit3.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tfrmlwo.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmlwo.BitBtn4Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  bitbtn1click(self);
  tm:=now;
  datetimepicker1.DateTime:=tm;
  if query1.active then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdatetime,'x4',ptinput);
      commandtext:='execute procedure sp_calc_trans(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asstring:='1';
      params[3].asdatetime:=tm;
      execute;
    end;
    if frmtransitflow=nil then frmtransitflow:=tfrmtransitflow.create(nil);
    frmtransitflow.caption:='Flow 1';
    with frmtransitflow.query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdatetime:=tm;
      params[3].asstring:='1';
      open;
    end;
    frmtransitflow.show;
  end;
  screen.Cursor:=crDefault;
end;

procedure Tfrmlwo.ppDetailBand2BeforePrint(Sender: TObject);
begin
  //t101.Caption:=inttostr(query7.fieldbyname('ttqty').value-query7.fieldbyname('tqty').value);
  //t102.Caption:=inttostr(query7.fieldbyname('tqty').value-query7.fieldbyname('pqty').value);
  p01.caption:='';t01.caption:='';
  p02.caption:='';t02.caption:='';
  p03.caption:='';t03.caption:='';
  p04.caption:='';t04.caption:='';
  p05.caption:='';t05.caption:='';
  p06.caption:='';t06.caption:='';
  p07.caption:='';t07.caption:='';
  p08.caption:='';t08.caption:='';
  p09.caption:='';t09.caption:='';
  p10.caption:='';t10.caption:='';
  p11.caption:='';t11.caption:='';
  p12.caption:='';t12.caption:='';
  p13.caption:='';t13.caption:='';
  if dt01.Caption>'' then begin
    p01.Caption:=frmlwo.query7.fieldbyname('tq01').value;
    t01.Caption:=frmlwo.query7.fieldbyname('ttq01').value;
    if frmlwo.query7.fieldbyname('tq01').value>0 then p01.Font.Style:=[fsBold]
    else p01.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq01').value>0 then t01.Font.Style:=[fsBold]
    else t01.Font.Style:=[];
  end;
  if dt02.Caption>'' then begin
    p02.Caption:=frmlwo.query7.fieldbyname('tq02').value;
    t02.Caption:=frmlwo.query7.fieldbyname('ttq02').value;
    if frmlwo.query7.fieldbyname('tq02').value>0 then p02.Font.Style:=[fsBold]
    else p02.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq02').value>0 then t02.Font.Style:=[fsBold]
    else t02.Font.Style:=[];
  end;
  if dt03.Caption>'' then begin
    p03.Caption:=frmlwo.query7.fieldbyname('tq03').value;
    t03.Caption:=frmlwo.query7.fieldbyname('ttq03').value;
    if frmlwo.query7.fieldbyname('tq03').value>0 then p03.Font.Style:=[fsBold]
    else p03.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq03').value>0 then t03.Font.Style:=[fsBold]
    else t03.Font.Style:=[];
  end;
  if dt04.Caption>'' then begin
    p04.Caption:=frmlwo.query7.fieldbyname('tq04').value;
    t04.Caption:=frmlwo.query7.fieldbyname('ttq04').value;
    if frmlwo.query7.fieldbyname('tq04').value>0 then p04.Font.Style:=[fsBold]
    else p04.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq04').value>0 then t04.Font.Style:=[fsBold]
    else t04.Font.Style:=[];
  end;
  if dt05.Caption>'' then begin
    p05.Caption:=frmlwo.query7.fieldbyname('tq05').value;
    t05.Caption:=frmlwo.query7.fieldbyname('ttq05').value;
    if frmlwo.query7.fieldbyname('tq05').value>0 then p05.Font.Style:=[fsBold]
    else p05.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq05').value>0 then t05.Font.Style:=[fsBold]
    else t05.Font.Style:=[];
  end;
  if dt06.Caption>'' then begin
    p06.Caption:=frmlwo.query7.fieldbyname('tq06').value;
    t06.Caption:=frmlwo.query7.fieldbyname('ttq06').value;
    if frmlwo.query7.fieldbyname('tq06').value>0 then p06.Font.Style:=[fsBold]
    else p06.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq06').value>0 then t06.Font.Style:=[fsBold]
    else t06.Font.Style:=[];
  end;
  if dt07.Caption>'' then begin
    p07.Caption:=frmlwo.query7.fieldbyname('tq07').value;
    t07.Caption:=frmlwo.query7.fieldbyname('ttq07').value;
    if frmlwo.query7.fieldbyname('tq07').value>0 then p07.Font.Style:=[fsBold]
    else p07.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq07').value>0 then t07.Font.Style:=[fsBold]
    else t07.Font.Style:=[];
  end;
  if dt08.Caption>'' then begin
    p08.Caption:=frmlwo.query7.fieldbyname('tq08').value;
    t08.Caption:=frmlwo.query7.fieldbyname('ttq08').value;
    if frmlwo.query7.fieldbyname('tq08').value>0 then p08.Font.Style:=[fsBold]
    else p08.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq08').value>0 then t08.Font.Style:=[fsBold]
    else t08.Font.Style:=[];
  end;
  if dt09.Caption>'' then begin
    p09.Caption:=frmlwo.query7.fieldbyname('tq09').value;
    t09.Caption:=frmlwo.query7.fieldbyname('ttq09').value;
    if frmlwo.query7.fieldbyname('tq09').value>0 then p09.Font.Style:=[fsBold]
    else p09.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq09').value>0 then t09.Font.Style:=[fsBold]
    else t09.Font.Style:=[];
  end;
  if dt10.Caption>'' then begin
    p10.Caption:=frmlwo.query7.fieldbyname('tq10').value;
    t10.Caption:=frmlwo.query7.fieldbyname('ttq10').value;
    if frmlwo.query7.fieldbyname('tq10').value>0 then p10.Font.Style:=[fsBold]
    else p10.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq10').value>0 then t10.Font.Style:=[fsBold]
    else t10.Font.Style:=[];
  end;
  if dt11.Caption>'' then begin
    p11.Caption:=frmlwo.query7.fieldbyname('tq11').value;
    t11.Caption:=frmlwo.query7.fieldbyname('ttq11').value;
    if frmlwo.query7.fieldbyname('tq11').value>0 then p11.Font.Style:=[fsBold]
    else p11.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq11').value>0 then t11.Font.Style:=[fsBold]
    else t11.Font.Style:=[];
  end;
  if dt12.Caption>'' then begin
    p12.Caption:=frmlwo.query7.fieldbyname('tq12').value;
    t12.Caption:=frmlwo.query7.fieldbyname('ttq12').value;
    if frmlwo.query7.fieldbyname('tq12').value>0 then p12.Font.Style:=[fsBold]
    else p12.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq12').value>0 then t12.Font.Style:=[fsBold]
    else t12.Font.Style:=[];
  end;
  if dt13.Caption>'' then begin
    p13.Caption:=frmlwo.query7.fieldbyname('tq13').value;
    t13.Caption:=frmlwo.query7.fieldbyname('ttq13').value;
    if frmlwo.query7.fieldbyname('tq13').value>0 then p13.Font.Style:=[fsBold]
    else p13.Font.Style:=[];
    if frmlwo.query7.fieldbyname('ttq13').value>0 then t13.Font.Style:=[fsBold]
    else t13.Font.Style:=[];
  end;
end;

procedure Tfrmlwo.ppHeaderBand2BeforePrint(Sender: TObject);
var
  i:integer;
begin
  seq01.caption:='';seq0101.caption:='';seq02.caption:='';seq0201.caption:='';seq03.caption:='';seq0301.caption:='';
  seq04.caption:='';seq0401.caption:='';seq05.caption:='';seq0501.caption:='';seq06.caption:='';seq0601.caption:='';
  seq07.caption:='';seq0701.caption:='';seq08.caption:='';seq0801.caption:='';seq09.caption:='';seq0901.caption:='';
  seq10.caption:='';seq1001.caption:='';seq11.caption:='';seq1101.caption:='';seq12.caption:='';seq1201.caption:='';
  seq13.Caption:='';seq1301.caption:='';
  x001.Visible:=false;x002.Visible:=false;x003.Visible:=false;x004.Visible:=false;x005.Visible:=false;
  x006.Visible:=false;x007.Visible:=false;x008.Visible:=false;x009.Visible:=false;x010.Visible:=false;
  x011.Visible:=false;x012.Visible:=false;x013.Visible:=false;
  y001.Visible:=false;y002.Visible:=false;y003.Visible:=false;y004.Visible:=false;y005.Visible:=false;
  y006.Visible:=false;y007.Visible:=false;y008.Visible:=false;y009.Visible:=false;y010.Visible:=false;
  y011.Visible:=false;y012.Visible:=false;y013.Visible:=false;
  i:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    //commandtext:='select * from tbl_lwo_tmp_dt where tm=:x1 and pline=:x2 and seq=:x3 order by dtsq,dseq,sseq';
    commandtext:='select * from tbl_trans_dt where tm=:x1 and pline=:x2 and seq=:x3';
    params[0].asdatetime:=tm;
    params[1].asstring:=query1.fieldbyname('pline').value;
    params[2].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt01').isnull then begin
      //seq01.Caption:=fieldbyname('ct01').value;
      dt01.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt01').value);
      x001.Visible:=true;y001.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_1(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=1;
        open;
        if not fieldbyname('o_cnt').isnull then seq01.Caption:=fieldbyname('o_cnt').asstring else seq01.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0101.Caption:=fieldbyname('o_cnt1').asstring else seq0101.Caption:='0';
      end;
    end;
    if not fieldbyname('dt02').isnull then begin
      //seq02.Caption:=fieldbyname('ct02').value;
      dt02.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt02').value);
      x002.Visible:=true;y002.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_1(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=2;
        open;
        if not fieldbyname('o_cnt').isnull then seq02.Caption:=fieldbyname('o_cnt').asstring else seq02.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0201.Caption:=fieldbyname('o_cnt1').asstring else seq0201.Caption:='0';
      end;
    end;
    if not fieldbyname('dt03').isnull then begin
      //seq03.Caption:=fieldbyname('ct03').value;
      dt03.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt03').value);
      x003.Visible:=true;y003.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_1(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=3;
        open;
        if not fieldbyname('o_cnt').isnull then seq03.Caption:=fieldbyname('o_cnt').asstring else seq03.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0301.Caption:=fieldbyname('o_cnt1').asstring else seq0301.Caption:='0';
      end;
    end;
    if not fieldbyname('dt04').isnull then begin
      //seq04.Caption:=fieldbyname('ct04').value;
      dt04.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt04').value);
      x004.Visible:=true;y004.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_1(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=4;
        open;
        if not fieldbyname('o_cnt').isnull then seq04.Caption:=fieldbyname('o_cnt').asstring else seq04.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0401.Caption:=fieldbyname('o_cnt1').asstring else seq0401.Caption:='0';
      end;
    end;
    if not fieldbyname('dt05').isnull then begin
      //seq05.Caption:=fieldbyname('ct05').value;
      dt05.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt05').value);
      x005.Visible:=true;y005.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_1(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=5;
        open;
        if not fieldbyname('o_cnt').isnull then seq05.Caption:=fieldbyname('o_cnt').asstring else seq05.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0501.Caption:=fieldbyname('o_cnt1').asstring else seq0501.Caption:='0';
      end;
    end;
    if not fieldbyname('dt06').isnull then begin
      //seq06.Caption:=fieldbyname('ct06').value;
      dt06.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt06').value);
      x006.Visible:=true;y006.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_1(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=6;
        open;
        if not fieldbyname('o_cnt').isnull then seq06.Caption:=fieldbyname('o_cnt').asstring else seq06.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0601.Caption:=fieldbyname('o_cnt1').asstring else seq0601.Caption:='0';
      end;
    end;
    if not fieldbyname('dt07').isnull then begin
      //seq07.Caption:=fieldbyname('ct07').value;
      dt07.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt07').value);
      x007.Visible:=true;y007.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_1(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=7;
        open;
        if not fieldbyname('o_cnt').isnull then seq07.Caption:=fieldbyname('o_cnt').asstring else seq07.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0701.Caption:=fieldbyname('o_cnt1').asstring else seq0701.Caption:='0';
      end;
    end;
    if not fieldbyname('dt08').isnull then begin
      //seq08.Caption:=fieldbyname('ct08').value;
      dt08.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt08').value);
      x008.Visible:=true;y008.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_1(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=8;
        open;
        if not fieldbyname('o_cnt').isnull then seq08.Caption:=fieldbyname('o_cnt').asstring else seq08.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0801.Caption:=fieldbyname('o_cnt1').asstring else seq0801.Caption:='0';
      end;
    end;
    if not fieldbyname('dt09').isnull then begin
      //seq09.Caption:=fieldbyname('ct09').value;
      dt09.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt09').value);
      x009.Visible:=true;y009.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_1(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=9;
        open;
        if not fieldbyname('o_cnt').isnull then seq09.Caption:=fieldbyname('o_cnt').asstring else seq09.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq0901.Caption:=fieldbyname('o_cnt1').asstring else seq0901.Caption:='0';
      end;
    end;
    if not fieldbyname('dt10').isnull then begin
      //seq10.Caption:=fieldbyname('ct10').value;
      dt10.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt10').value);
      x010.Visible:=true;y010.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_1(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=10;
        open;
        if not fieldbyname('o_cnt').isnull then seq10.Caption:=fieldbyname('o_cnt').asstring else seq10.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq1001.Caption:=fieldbyname('o_cnt1').asstring else seq1001.Caption:='0';
      end;
    end;
    if not fieldbyname('dt11').isnull then begin
      //seq11.Caption:=fieldbyname('ct11').value;
      dt11.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt11').value);
      x011.Visible:=true;y011.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_1(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=11;
        open;
        if not fieldbyname('o_cnt').isnull then seq11.Caption:=fieldbyname('o_cnt').asstring else seq11.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq1101.Caption:=fieldbyname('o_cnt1').asstring else seq1101.Caption:='0';
      end;
    end;
    if not fieldbyname('dt12').isnull then begin
      //seq12.Caption:=fieldbyname('ct12').value;
      dt12.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt12').value);
      x012.Visible:=true;y012.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_1(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=12;
        open;
        if not fieldbyname('o_cnt').isnull then seq12.Caption:=fieldbyname('o_cnt').asstring else seq12.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq1201.Caption:=fieldbyname('o_cnt1').asstring else seq1201.Caption:='0';
      end;
    end;
    if not fieldbyname('dt13').isnull then begin
      //seq13.Caption:=fieldbyname('ct13').value;
      dt13.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt13').value);
      x013.Visible:=true;y013.Visible:=true;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from SP_CALC_TRANS_SEQ_1(:x1,:x2)';
        params[0].asdatetime:=query7.fieldbyname('tm').value;
        params[1].asinteger:=13;
        open;
        if not fieldbyname('o_cnt').isnull then seq13.Caption:=fieldbyname('o_cnt').asstring else seq13.Caption:='0';
        if not fieldbyname('o_cnt1').isnull then seq1301.Caption:=fieldbyname('o_cnt1').asstring else seq1301.Caption:='0';
      end;
    end;
  end;
end;

procedure Tfrmlwo.ppSummaryBand2BeforePrint(Sender: TObject);
var
  pk01,pk02,ts101,ts102:string;
  c1,c2:integer;
  tm0:tdatetime;
  i1,i2,i3,i4,i5,i6,i7,i8:string;
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select sum(tq01) as q1,sum(tq02) as q2,sum(tq03) as q3,sum(tq04) as q4,sum(tq05) as q5,sum(tq06) as q6,sum(tq07) as q7,'
                +'sum(tq08) as q8,sum(tq09) as q9,sum(tq10) as q10,sum(tq11) as q11,sum(tq12) as q12,sum(tq13) as q13,'
                +'sum(ttq01) as q01,sum(ttq02) as q02,sum(ttq03) as q03,sum(ttq04) as q04,sum(ttq05) as q05,sum(ttq06) as q06,sum(ttq07) as q07,'
                +'sum(ttq08) as q08,sum(ttq09) as q09,sum(ttq10) as q010,sum(ttq11) as q011,sum(ttq12) as q012,sum(ttq13) as q013 '
                +'from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=''1''';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm;
    open;
    if dt01.Caption>'' then begin
      sp01.Caption:=fieldbyname('q1').asstring;
      st01.Caption:=fieldbyname('q01').asstring;
    end else begin
      sp01.Caption:='';st01.Caption:='';
    end;
    if dt02.Caption>'' then begin
      sp02.Caption:=fieldbyname('q2').asstring;
      st02.Caption:=fieldbyname('q02').asstring;
    end else begin
      sp02.Caption:='';st02.Caption:='';
    end;
    if dt03.Caption>'' then begin
      sp03.Caption:=fieldbyname('q3').asstring;
      st03.Caption:=fieldbyname('q03').asstring;
    end else begin
      sp03.Caption:='';st03.Caption:='';
    end;
    if dt04.Caption>'' then begin
      sp04.Caption:=fieldbyname('q4').asstring;
      st04.Caption:=fieldbyname('q04').asstring;
    end else begin
      sp04.Caption:='';st04.Caption:='';
    end;
    if dt05.Caption>'' then begin
      sp05.Caption:=fieldbyname('q5').asstring;
      st05.Caption:=fieldbyname('q05').asstring;
    end else begin
      sp05.Caption:='';st05.Caption:='';
    end;
    if dt06.Caption>'' then begin
      sp06.Caption:=fieldbyname('q6').asstring;
      st06.Caption:=fieldbyname('q06').asstring;
    end else begin
      sp06.Caption:='';st06.Caption:='';
    end;
    if dt07.Caption>'' then begin
      sp07.Caption:=fieldbyname('q7').asstring;
      st07.Caption:=fieldbyname('q07').asstring;
    end else begin
      sp07.Caption:='';st07.Caption:='';
    end;
    if dt08.Caption>'' then begin
      sp08.Caption:=fieldbyname('q8').asstring;
      st08.Caption:=fieldbyname('q08').asstring;
    end else begin
      sp08.Caption:='';st08.Caption:='';
    end;
    if dt09.Caption>'' then begin
      sp09.Caption:=fieldbyname('q9').asstring;
      st09.Caption:=fieldbyname('q09').asstring;
    end else begin
      sp09.Caption:='';st09.Caption:='';
    end;
    if dt10.Caption>'' then begin
      sp10.Caption:=fieldbyname('q10').asstring;
      st10.Caption:=fieldbyname('q010').asstring;
    end else begin
      sp10.Caption:='';st10.Caption:='';
    end;
    if dt11.Caption>'' then begin
      sp11.Caption:=fieldbyname('q11').asstring;
      st11.Caption:=fieldbyname('q011').asstring;
    end else begin
      sp11.Caption:='';st11.Caption:='';
    end;
    if dt12.Caption>'' then begin
      sp12.Caption:=fieldbyname('q12').asstring;
      st12.Caption:=fieldbyname('q012').asstring;
    end else begin
      sp12.Caption:='';st12.Caption:='';
    end;
    if dt13.Caption>'' then begin
      sp13.Caption:=fieldbyname('q13').asstring;
      st13.Caption:=fieldbyname('q013').asstring;
    end else begin
      sp13.Caption:='';st13.Caption:='';
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select flag4 from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    open;
    if fieldbyname('flag4').value>='B' then begin
      if copy(fieldbyname('flag4').value,1,1)='b' then begin
        i1:=' b '; i2:='';
      end else if copy(fieldbyname('flag4').value,1,1)='B' then begin
        i1:=' B '; i2:='';
      end else if copy(fieldbyname('flag4').value,1,1)='d' then begin
        i1:=' b '; i2:=' d ';
      end else if copy(fieldbyname('flag4').value,1,1)='D' then begin
        i1:=' B '; i2:= ' D ';
      end else if copy(fieldbyname('flag4').value,1,1)='E' then begin
        i1:=' B '; i2:= ' E ';
      end;

      if copy(fieldbyname('flag4').value,2,1)='f' then begin
        i3:=' f '; i4:='';
      end else if copy(fieldbyname('flag4').value,2,1)='F' then begin
        i3:=' F '; i4:='';
      end else if copy(fieldbyname('flag4').value,2,1)='g' then begin
        i3:=' f '; i4:=' g ';
      end else if copy(fieldbyname('flag4').value,2,1)='G' then begin
        i3:=' F '; i4:= ' G ';
      end else if copy(fieldbyname('flag4').value,2,1)='H' then begin
        i3:=' F '; i4:= ' H ';
      end;

      if copy(fieldbyname('flag4').value,3,1)='j' then begin
        i5:=' j '; i6:='';
      end else if copy(fieldbyname('flag4').value,3,1)='J' then begin
        i5:=' J '; i6:='';
      end else if copy(fieldbyname('flag4').value,3,1)='k' then begin
        i5:=' j '; i6:=' k ';
      end else if copy(fieldbyname('flag4').value,3,1)='K' then begin
        i5:=' J '; i6:= ' K ';
      end else if copy(fieldbyname('flag4').value,3,1)='L' then begin
        i5:=' J '; i6:= ' L ';
      end;

      if copy(fieldbyname('flag4').value,4,1)='m' then begin
        i7:=' m '; i8:='';
      end else if copy(fieldbyname('flag4').value,4,1)='M' then begin
        i7:=' M '; i8:='';
      end else if copy(fieldbyname('flag4').value,4,1)='n' then begin
        i7:=' m '; i8:=' n ';
      end else if copy(fieldbyname('flag4').value,4,1)='N' then begin
        i7:=' M '; i8:= ' N ';
      end else if copy(fieldbyname('flag4').value,4,1)='P' then begin
        i7:=' M '; i8:= ' P ';
      end;
    end else begin
      i1:='';
      i2:='';
      i3:='';
      i4:='';
      i5:='';
      i6:='';
      i7:='';
      i8:='';
    end;
  end;
  b02.Caption:=i1;
  e02.Caption:=i2;

  tm0:=now;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='execute procedure sp_lwo_calc_dt_01(:x1,:x2,:x3,:x4)';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asstring:='1';
    execute;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=101 and dseq<=110 and tp=''1'' and dt>:x4';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asdate:=encodedate(1899,12,30);
    open;
    if not fieldbyname('dt1').isnull then begin
      if fieldbyname('dt1').value>encodedate(1899,12,30) then pk01:=formatdatetime('yy/MM/dd',fieldbyname('dt1').value)
      else pk01:='';
    end else begin
      pk01:='';
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then pk02:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else pk02:='';
    end else begin
      pk02:='';
    end;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=201 and dseq<=210 and tp=''1'' and dt>:x4';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    params[2].asdatetime:=tm0;
    params[3].asdate:=encodedate(1899,12,30);
    open;
    if not fieldbyname('dt1').isnull then begin
      if fieldbyname('dt1').value>encodedate(1899,12,30) then ts101:=formatdatetime('yy/MM/dd',fieldbyname('dt1').value)
      else ts101:='';
    end else begin
      ts101:='';
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then ts102:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else ts102:='';
    end else begin
      ts102:='';
    end;
  end;
  c1:=1;c2:=1;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0 and cmp=0';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp').isnull then c1:=0;
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cmp1 from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0 and cmp1=0';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    open;
    if fieldbyname('cmp1').isnull then c2:=0;
  end;
  if c1=1 then begin
    pic01.Caption:=pk01;pic02.Caption:='';
  end else begin
    pic01.Caption:=pk01;pic02.Caption:=pk02;
  end;
  if c2=1 then begin
    trs01.Caption:=ts101;trs02.Caption:='';
  end else begin
    trs01.Caption:=ts101;trs02.Caption:=ts102;
  end;

  ppmemo1.Lines.Text:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_lwo_dt where pline=:x1 and seq=:x2';
    params[0].asstring:=query7.fieldbyname('pline').value;
    params[1].asinteger:=query7.fieldbyname('seq').value;
    open;
    if not fieldbyname('remarks').isnull then ppmemo1.Lines.add(fieldbyname('remarks').value);
  end;
end;

procedure Tfrmlwo.BitBtn6Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  bitbtn1click(self);
  tm:=now;
  datetimepicker1.DateTime:=tm;
  //if frmptrans3=nil then frmptrans3:=tfrmptrans3.create(nil);
  if query1.active then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdatetime,'x4',ptinput);
      commandtext:='execute procedure sp_calc_trans(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asstring:='3';
      params[3].asdatetime:=tm;
      execute;
    end;
    if frmtransitflow=nil then frmtransitflow:=tfrmtransitflow.create(nil);
    frmtransitflow.caption:='Flow 3';
    with frmtransitflow.query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdatetime:=tm;
      params[3].asstring:='3';
      open;
    end;
    frmtransitflow.show;
  end;
  screen.Cursor:=crDefault;
end;

procedure Tfrmlwo.BitBtn5Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
  bitbtn1click(self);
  tm:=now;
  datetimepicker1.DateTime:=tm;
  if query1.active then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdatetime,'x4',ptinput);
      if dbgrideh2.Visible then
      commandtext:='execute procedure sp_calc_trans_aql(:x1,:x2,:x3,:x4)'
      else
      commandtext:='execute procedure sp_calc_trans(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asstring:='2';
      params[3].asdatetime:=tm;
      execute;
    end;
    //{
    if dbgrideh2.Visible then begin
      if frmtransitflow2=nil then frmtransitflow2:=tfrmtransitflow2.create(nil);
      frmtransitflow2.caption:='Flow 2';
      with frmtransitflow2.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftdatetime,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asdatetime:=tm;
        params[3].asstring:='2';
        open;
      end;
      frmtransitflow2.show;
    end else begin
    //}
      if frmtransitflow=nil then frmtransitflow:=tfrmtransitflow.create(nil);
      frmtransitflow.caption:='Flow 2';
      with frmtransitflow.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftdatetime,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asdatetime:=tm;
        params[3].asstring:='2';
        open;
      end;
      frmtransitflow.show;
    end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmlwo.BitBtn7Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  bitbtn1click(self);
  tm:=now;
  datetimepicker1.DateTime:=tm;
  //if frmptrans4=nil then frmptrans4:=tfrmptrans4.create(nil);
  if query1.active then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdatetime,'x4',ptinput);
      if dbgrideh2.Visible then
      commandtext:='execute procedure sp_calc_trans(:x1,:x2,:x3,:x4)'
      else
      commandtext:='execute procedure sp_calc_trans_aql_t4(:x1,:x2,:x3,:x4)';
      //commandtext:='execute procedure sp_calc_trans(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asstring:='4';
      params[3].asdatetime:=tm;
      execute;
    end;
    if (dbgrideh2.Visible=false) then begin
      if frmtransitflow2=nil then frmtransitflow2:=tfrmtransitflow2.create(nil);
      frmtransitflow2.caption:='Flow 4';
      with frmtransitflow2.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftdatetime,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asdatetime:=tm;
        params[3].asstring:='4';
        open;
      end;
      frmtransitflow2.show;
    end else begin
      if frmtransitflow=nil then frmtransitflow:=tfrmtransitflow.create(nil);
      frmtransitflow.caption:='Flow 4';
      with frmtransitflow.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftdatetime,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asdatetime:=tm;
        params[3].asstring:='4';
        open;
      end;
      frmtransitflow.show;
    end;
  end;
  screen.Cursor:=crDefault;
end;

procedure Tfrmlwo.Query6AfterPost(DataSet: TDataSet);
begin
  {
  if query6.ApplyUpdates(-1)>0 then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x0',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='update tbl_lwo_dt set remarks=:x1,pmemo=:x0,t4memo=:x4,t2memo=:x5,smemo=:x6,aqlmemo=:x7 where pline=:x2 and seq=:x3';

      if query6.fieldbyname('remarks').isnull then
      params[0].asstring:=''
      else params[0].asstring:=query6.fieldbyname('remarks').value;
      if query6.fieldbyname('pmemo').isnull then
      params[1].asstring:=''
      else params[1].asstring:=query6.fieldbyname('pmemo').value;
      if not query6.fieldbyname('t4memo').isnull then
      params[2].asstring:=query6.fieldbyname('t4memo').value
      else params[2].asstring:='';
      if not query6.fieldbyname('t2memo').isnull then
      params[3].asstring:=query6.fieldbyname('t2memo').value
      else params[3].asstring:='';
      if not query6.fieldbyname('smemo').isnull then
      params[4].asstring:=query6.fieldbyname('smemo').value
      else params[4].asstring:='';
      if not query6.fieldbyname('aqlmemo').isnull then
      params[5].asstring:=query6.fieldbyname('aqlmemo').value
      else params[5].asstring:='';
      params[6].asstring:=query1.fieldbyname('pline').value;
      params[7].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  }
      strupd:='update tbl_lwo_dt set ';
      if query6.fieldbyname('remarks').isnull then
      strupd:=strupd+'remarks='''','
      else strupd:=strupd+'remarks='''+query6.fieldbyname('remarks').value+''',';
      if query6.fieldbyname('pmemo').isnull then
      strupd:=strupd+'pmemo='''','
      else strupd:=strupd+'pmemo='''+query6.fieldbyname('pmemo').value+''',';
      if not query6.fieldbyname('t4memo').isnull then
      strupd:=strupd+'t4memo='''+query6.fieldbyname('t4memo').value+''','
      else strupd:=strupd+'t4memo='''',';
      if not query6.fieldbyname('t2memo').isnull then
      strupd:=strupd+'t2memo='''+query6.fieldbyname('t2memo').value+''','
      else strupd:=strupd+'t2memo='''',';
      if not query6.fieldbyname('smemo').isnull then
      strupd:=strupd+'smemo='''+query6.fieldbyname('smemo').value+''','
      else strupd:=strupd+'smemo='''',';
      if not query6.fieldbyname('aqlmemo').isnull then
      strupd:=strupd+'aqlmemo='''+query6.fieldbyname('aqlmemo').value+''' '
      else strupd:=strupd+'aqlmemo='''' ';
      strupd:=strupd+'where pline='''+query1.fieldbyname('pline').value+''' ';
      strupd:=strupd+'and seq='+query1.fieldbyname('seq').asstring;
      if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

end;

procedure Tfrmlwo.CancelConfirm1Click(Sender: TObject);
var
  scqty:integer;
begin
  {
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='update tbl_lwo_dt set cfmd=0 where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
  }
  strupd:='update tbl_lwo_dt set cfmd=0 where pline='''+query1.fieldbyname('pline').value+''' and seq='+query1.fieldbyname('seq').asstring;
  if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
  {
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='update tbl_lwo set tqn=null where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
  }
  strupd:='update tbl_lwo set tqn=null where pline='''+query1.fieldbyname('pline').value+''' and seq='+query1.fieldbyname('seq').asstring;
  if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(pqty) as scqty from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('scqty').isnull then scqty:=fieldbyname('scqty').value
    else scqty:=0;
  end;
  if scqty>0 then begin
    {
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x0',ptinput);
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='update tblshedule set scqty=:x0 where pline=:x1 and seq=:x2';
      params[0].asinteger:=scqty;
      params[1].asstring:=query1.fieldbyname('pline').value;
      params[2].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    }
    strupd:='update tblshedule set scqty='+inttostr(scqty)+' where pline='''+query1.fieldbyname('pline').value+''' and seq='+query1.fieldbyname('seq').asstring;
    if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
  end;
end;

procedure Tfrmlwo.DBGridEh1Columns10EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt,etm:tdatetime;
  epdn,bcn:string;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(ted1) as dt,max(epdn1) as epdn,max(bcn1) as bcn,max(etm1) as etm from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
    if not fieldbyname('epdn').isnull then epdn:=fieldbyname('epdn').value;
    if not fieldbyname('bcn').isnull then bcn:=fieldbyname('bcn').value;
    if not fieldbyname('etm').isnull then etm:=fieldbyname('etm').value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r23 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r23').value=true then begin
      if frmtransit4=nil then frmtransit4:=tfrmtransit4.create(nil);
      frmtransit4.DBGridEh1.Columns[7].Field:=query1.fieldbyname('eq1');
      if dt>0 then
      frmtransit4.dateedit1.date:=dt;
      frmtransit4.Edit1.Text:=epdn;
      frmtransit4.Edit2.text:=bcn;
      frmtransit4.timeedit1.Time:=etm;
      frmtransit4.lblcs.Caption:='The first time';
      frmtransit4.BitBtn1.Enabled:=false;
      frmtransit4.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tfrmlwo.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('pqty').onchange:=querytq1change;
  query1.fieldbyname('tq1').onchange:=querytq1change;
  query1.fieldbyname('tq2').onchange:=querytq1change;
  query1.fieldbyname('tq3').onchange:=querytq1change;
  query1.fieldbyname('tq4').onchange:=querytq1change;
  query1.fieldbyname('tq5').onchange:=querytq1change;
  query1.fieldbyname('tq6').onchange:=querytq1change;
  query1.fieldbyname('tq7').onchange:=querytq1change;
  query1.fieldbyname('tq8').onchange:=querytq1change;
  query1.fieldbyname('tq9').onchange:=querytq1change;
  query1.fieldbyname('tq10').onchange:=querytq1change;
  query1.fieldbyname('tq11').onchange:=querytq1change;
  query1.fieldbyname('tq12').onchange:=querytq1change;
  query1.fieldbyname('tq13').onchange:=querytq1change;
  query1.fieldbyname('tq14').onchange:=querytq1change;
  query1.fieldbyname('tq15').onchange:=querytq1change;
  query1.fieldbyname('tq16').onchange:=querytq1change;
  query1.fieldbyname('tq17').onchange:=querytq1change;
  query1.fieldbyname('tq18').onchange:=querytq1change;
  query1.fieldbyname('tq19').onchange:=querytq1change;
  query1.fieldbyname('tq20').onchange:=querytq1change;
  query1.fieldbyname('ttq1').onchange:=querytq1change;
  query1.fieldbyname('ttq2').onchange:=querytq1change;
  query1.fieldbyname('ttq3').onchange:=querytq1change;
  query1.fieldbyname('ttq4').onchange:=querytq1change;
  query1.fieldbyname('ttq5').onchange:=querytq1change;
  query1.fieldbyname('ttq6').onchange:=querytq1change;
  query1.fieldbyname('ttq7').onchange:=querytq1change;
  query1.fieldbyname('ttq8').onchange:=querytq1change;
  query1.fieldbyname('ttq9').onchange:=querytq1change;
  query1.fieldbyname('ttq10').onchange:=querytq1change;
  query1.fieldbyname('ttq11').onchange:=querytq1change;
  query1.fieldbyname('ttq12').onchange:=querytq1change;
  query1.fieldbyname('ttq13').onchange:=querytq1change;
  query1.fieldbyname('ttq14').onchange:=querytq1change;
  query1.fieldbyname('ttq15').onchange:=querytq1change;
  query1.fieldbyname('ttq16').onchange:=querytq1change;
  query1.fieldbyname('ttq17').onchange:=querytq1change;
  query1.fieldbyname('ttq18').onchange:=querytq1change;
  query1.fieldbyname('ttq19').onchange:=querytq1change;
  query1.fieldbyname('ttq20').onchange:=querytq1change;
  query1.fieldbyname('pq1').onchange:=querytq1change;
  query1.fieldbyname('pq2').onchange:=querytq1change;
  query1.fieldbyname('pq3').onchange:=querytq1change;
  query1.fieldbyname('pq4').onchange:=querytq1change;
  query1.fieldbyname('pq5').onchange:=querytq1change;
  query1.fieldbyname('pq6').onchange:=querytq1change;
  query1.fieldbyname('pq7').onchange:=querytq1change;
  query1.fieldbyname('pq8').onchange:=querytq1change;
  query1.fieldbyname('pq9').onchange:=querytq1change;
  query1.fieldbyname('pq10').onchange:=querytq1change;
  query1.fieldbyname('pq11').onchange:=querytq1change;
  query1.fieldbyname('pq12').onchange:=querytq1change;
  query1.fieldbyname('pq13').onchange:=querytq1change;
  query1.fieldbyname('pq14').onchange:=querytq1change;
  query1.fieldbyname('pq15').onchange:=querytq1change;
  query1.fieldbyname('pq16').onchange:=querytq1change;
  query1.fieldbyname('pq17').onchange:=querytq1change;
  query1.fieldbyname('pq18').onchange:=querytq1change;
  query1.fieldbyname('pq19').onchange:=querytq1change;
  query1.fieldbyname('pq20').onchange:=querytq1change;
  query1.fieldbyname('fq1').onchange:=querytq1change;
  query1.fieldbyname('fq2').onchange:=querytq1change;
  query1.fieldbyname('fq3').onchange:=querytq1change;
  query1.fieldbyname('fq4').onchange:=querytq1change;
  query1.fieldbyname('fq5').onchange:=querytq1change;
  query1.fieldbyname('fq6').onchange:=querytq1change;
  query1.fieldbyname('fq7').onchange:=querytq1change;
  query1.fieldbyname('fq8').onchange:=querytq1change;
  query1.fieldbyname('fq9').onchange:=querytq1change;
  query1.fieldbyname('fq10').onchange:=querytq1change;
  query1.fieldbyname('fq11').onchange:=querytq1change;
  query1.fieldbyname('fq12').onchange:=querytq1change;
  query1.fieldbyname('fq13').onchange:=querytq1change;
  query1.fieldbyname('fq14').onchange:=querytq1change;
  query1.fieldbyname('fq15').onchange:=querytq1change;
  query1.fieldbyname('fq16').onchange:=querytq1change;
  query1.fieldbyname('fq17').onchange:=querytq1change;
  query1.fieldbyname('fq18').onchange:=querytq1change;
  query1.fieldbyname('fq19').onchange:=querytq1change;
  query1.fieldbyname('fq20').onchange:=querytq1change;
  query1.fieldbyname('ip1').onchange:=querytq1change;
  query1.fieldbyname('ip2').onchange:=querytq1change;
  query1.fieldbyname('ip3').onchange:=querytq1change;
  query1.fieldbyname('ip4').onchange:=querytq1change;
  query1.fieldbyname('ip5').onchange:=querytq1change;
  query1.fieldbyname('eq1').onchange:=querytq1change;
  query1.fieldbyname('eq2').onchange:=querytq1change;
  query1.fieldbyname('eq3').onchange:=querytq1change;
  query1.fieldbyname('eq4').onchange:=querytq1change;
  query1.fieldbyname('eq5').onchange:=querytq1change;
  query1.fieldbyname('eq6').onchange:=querytq1change;
  query1.fieldbyname('eq7').onchange:=querytq1change;
  query1.fieldbyname('eq8').onchange:=querytq1change;
  query1.fieldbyname('eq9').onchange:=querytq1change;
  query1.fieldbyname('eq10').onchange:=querytq1change;
  query1.fieldbyname('eq11').onchange:=querytq1change;
  query1.fieldbyname('eq12').onchange:=querytq1change;
  query1.fieldbyname('eq13').onchange:=querytq1change;
  query1.fieldbyname('eq14').onchange:=querytq1change;
  query1.fieldbyname('eq15').onchange:=querytq1change;
  query1.fieldbyname('iq1').onchange:=querytq1change;
  query1.fieldbyname('iq2').onchange:=querytq1change;
  query1.fieldbyname('iq3').onchange:=querytq1change;
  query1.fieldbyname('iq4').onchange:=querytq1change;
  query1.fieldbyname('iq5').onchange:=querytq1change;
  query1.fieldbyname('iq6').onchange:=querytq1change;
  query1.fieldbyname('iq7').onchange:=querytq1change;
  query1.fieldbyname('iq8').onchange:=querytq1change;
  query1.fieldbyname('iq9').onchange:=querytq1change;
  query1.fieldbyname('iq10').onchange:=querytq1change;
  query1.fieldbyname('iq11').onchange:=querytq1change;
  query1.fieldbyname('iq12').onchange:=querytq1change;
  query1.fieldbyname('iq13').onchange:=querytq1change;
  query1.fieldbyname('iq14').onchange:=querytq1change;
  query1.fieldbyname('iq15').onchange:=querytq1change;
  query1.fieldbyname('aq1').onchange:=querytq1change;
  query1.fieldbyname('aq2').onchange:=querytq1change;
  query1.fieldbyname('aq3').onchange:=querytq1change;
  query1.fieldbyname('aq01').onchange:=querytq1change;
  query1.fieldbyname('aq02').onchange:=querytq1change;
  query1.fieldbyname('aq03').onchange:=querytq1change;
  query1.fieldbyname('aq001').onchange:=querytq1change;
  query1.fieldbyname('aq002').onchange:=querytq1change;
  query1.fieldbyname('aq003').onchange:=querytq1change;
  query1.fieldbyname('aq10').onchange:=querytq1change;
  query1.fieldbyname('aq11').onchange:=querytq1change;
  query1.fieldbyname('aq12').onchange:=querytq1change;
  query1.fieldbyname('aq13').onchange:=querytq1change;
  query1.fieldbyname('aq14').onchange:=querytq1change;
  query1.fieldbyname('aq15').onchange:=querytq1change;
  query1.fieldbyname('aq16').onchange:=querytq1change;
  query1.fieldbyname('aq17').onchange:=querytq1change;
  query1.fieldbyname('aq18').onchange:=querytq1change;
  query1.fieldbyname('aq19').onchange:=querytq1change;
  query1.fieldbyname('aq20').onchange:=querytq1change;
  query1.FieldByName('cmp1').onchange:=querycmp1change;
  query1.FieldByName('cmp2').onchange:=querycmp2change;
  query1.FieldByName('cmp3').onchange:=querycmp3change;
  query1.FieldByName('cmp4').onchange:=querycmp4change;
  query1.FieldByName('cmpi').onchange:=querycmpichange;
end;

procedure Tfrmlwo.BitBtn8Click(Sender: TObject);
var
  recno1:string;
begin
  recno1:='0';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select seq from tbl_lwo_dt where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('seq').isnull then recno1:='1' else recno1:='0';
  end;
  if recno1='0' then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='insert into tbl_lwo_dt(pline,seq) values(:x1,:x2)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r18,r24,r23,r25,r36,r47,r49 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if (fieldbyname('r18').value=true) or (fieldbyname('r24').value=true) or (fieldbyname('r23').value=true)
    or (fieldbyname('r25').value=true) or (fieldbyname('r36').value=true) or (fieldbyname('r47').value=true)
    or (fieldbyname('r49').value=true) then begin
      with query6 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from tbl_lwo_dt where pline=:x1 and seq=:x2';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        open;
      end;
      if frmnote_lwo=nil then frmnote_lwo:=tfrmnote_lwo.Create(nil);
      if fieldbyname('r36').value=true then begin
        frmnote_lwo.Caption:='Notepad for diff of split/pick qty';
        frmnote_lwo.DBMemo1.DataField:='REMARKS';
        frmnote_lwo.DBMemo1.ReadOnly:=true;
        frmnote_lwo.t1.Visible:=true;
        frmnote_lwo.t2.Visible:=true;
        frmnote_lwo.t3.Visible:=true;
        frmnote_lwo.t4.Visible:=true;
      end else begin
        if fieldbyname('r18').value=true then begin
          frmnote_lwo.Caption:='Notepad for diff of split/pick qty';
          frmnote_lwo.DBMemo1.DataField:='REMARKS';
        end else if fieldbyname('r24').value=true then begin
          frmnote_lwo.Caption:='Notepad for diff of T2/cPacked qty';
          frmnote_lwo.DBMemo1.DataField:='PMEMO';
        end else if fieldbyname('r23').value=true then begin
          frmnote_lwo.Caption:='Notepad for diff of Ex-fty/Invoice qty';
          frmnote_lwo.DBMemo1.DataField:='T4MEMO';
        end else if fieldbyname('r47').value=true then begin
          frmnote_lwo.Caption:='Notepad for diff of Sewn/T1 qty';
          frmnote_lwo.DBMemo1.DataField:='SMEMO';
        end else if fieldbyname('r25').value=true then begin
          frmnote_lwo.Caption:='Notepad for diff of T1/T2 qty';
          frmnote_lwo.DBMemo1.DataField:='T2MEMO';
        end else if fieldbyname('r49').value=true then begin
          frmnote_lwo.Caption:='Notepad for diff of AQL qty';
          frmnote_lwo.DBMemo1.DataField:='AQLMEMO';
        end;
        frmnote_lwo.DBMemo1.ReadOnly:=false;
        frmnote_lwo.t1.Visible:=false;
        frmnote_lwo.t2.Visible:=false;
        frmnote_lwo.t3.Visible:=false;
        frmnote_lwo.t4.Visible:=false;
      end;
      frmnote_lwo.Show;
    end;
  end;
end;

procedure Tfrmlwo.BitBtn9Click(Sender: TObject);
var
  recno1:string;
  scqty:double;
begin
  recno1:='0';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select seq from tbl_lwo_dt where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('seq').isnull then recno1:='1' else recno1:='0';
  end;
  if recno1='0' then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='insert into tbl_lwo_dt(pline,seq) values(:x1,:x2)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
  end;
  if query1.state=dsedit then query1.post;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r18 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r18').value=true then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select cfmd from tbl_lwo_dt where pline=:x1 and seq=:x2';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        open;
        if not fieldbyname('cfmd').isnull then begin
          if fieldbyname('cfmd').value=true then begin
            showmessage('Had been confirmed!');
          end else begin
           if application.MessageBox('Want to confirm?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
            {
            with query5 do begin
              close;
              params.clear;
              params.createparam(ftstring,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              commandtext:='update tbl_lwo_dt set cfmd=1 where pline=:x1 and seq=:x2';
              params[0].asstring:=query1.fieldbyname('pline').value;
              params[1].asinteger:=query1.fieldbyname('seq').value;
              execute;
            end;
            with query5 do begin
              close;
              params.clear;
              params.createparam(ftfloat,'x0',ptinput);
              params.createparam(ftstring,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              commandtext:='update tblshedule set scqty=:x0 where pline=:x1 and seq=:x2';
              if dbgrideh1.Visible=true then
              params[0].asfloat:=strtoint(dbgrideh1.Columns[4].Footers[0].SumValue)
              else params[0].asfloat:=strtoint(dbgrideh2.Columns[4].Footers[0].SumValue);
              params[1].asstring:=query1.fieldbyname('pline').value;
              params[2].asinteger:=query1.fieldbyname('seq').value;
              execute;
            end;
            with query5 do begin
              close;
              params.clear;
              params.createparam(ftstring,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              commandtext:='update tbl_lwo set tqn=tqty where pline=:x1 and seq=:x2';
              params[0].asstring:=query1.fieldbyname('pline').value;
              params[1].asinteger:=query1.fieldbyname('seq').value;
              execute;
            end;
            }
            strupd:='update tbl_lwo_dt set cfmd=1 where pline='''+query1.fieldbyname('pline').value+''' and seq='+query1.fieldbyname('seq').asstring;
            if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

            with query5 do begin
              close;
              params.clear;
              params.createparam(ftstring,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              commandtext:='select sum(tqty) as x1 from tbl_lwo where pline=:x1 and seq=:x2';
              params[0].asstring:=query1.fieldbyname('pline').value;
              params[1].asinteger:=query1.fieldbyname('seq').value;
              open;
              if not fieldbyname('x1').isnull then scqty:=fieldbyname('x1').value
              else scqty:=0;
            end;
            if dbgrideh1.Visible=true then
            //strupd:='update tblshedule set scqty='+dbgrideh1.Columns[4].Footers[0].SumValue+' where pline='''+query1.fieldbyname('pline').value+''' and seq='+query1.fieldbyname('seq').asstring
            //else strupd:='update tblshedule set scqty='+dbgrideh2.Columns[4].Footers[0].SumValue+' where pline='''+query1.fieldbyname('pline').value+''' and seq='+query1.fieldbyname('seq').asstring;
            strupd:='update tblshedule set scqty='+floattostr(scqty)+' where pline='''+query1.fieldbyname('pline').value+''' and seq='+query1.fieldbyname('seq').asstring
            else strupd:='update tblshedule set scqty='+floattostr(scqty)+' where pline='''+query1.fieldbyname('pline').value+''' and seq='+query1.fieldbyname('seq').asstring;
            if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

            strupd:='update tbl_lwo set tqn=tqty where pline='''+query1.fieldbyname('pline').value+''' and seq='+query1.fieldbyname('seq').asstring;
            if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

            showmessage('Confirmed OK!');
           end;
          end;
        end else begin
        end;
      end;
    end;
  end;
end;

procedure Tfrmlwo.DBGridEh1Columns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  try
  tm:=now;
  datetimepicker1.DateTime:=tm;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_lwo_gensew(:x1,:x2)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='execute procedure sp_lwo_calc_sewdt(:x1,:x2,:x3)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm;
    execute;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select dt from tbl_lwo_sewdt where pline=:x1 and seq=:x2 and tm=:x3 and dseq=601';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value else dt:=encodedate(1899,12,30);
  end;
  if dt>encodedate(2006,1,1) then begin
    if frmsewn=nil then frmsewn:=tfrmsewn.create(nil);
    frmsewn.DateTimePicker1.DateTime:=tm;
    frmsewn.Label8.Caption:='601';
    with frmsewn.Query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tbl_lwo_sew where pline=:x1 and seq=:x2';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
    end;
    frmsewn.DateEdit1.date:=dt;
    frmsewn.lblcs.Caption:='The first time';
    frmsewn.dbgrideh1.Columns[6].Field:=frmsewn.query1.fieldbyname('aq1');
    frmsewn.dbgrideh1.Columns[7].Field:=frmsewn.query1.fieldbyname('cq1');
    frmsewn.BitBtn1.Enabled:=false;
    frmsewn.Show;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmlwo.DBGridEh1Columns18EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(fdt1) as dt from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r24 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r24').value=true then begin
      if frmtransit3=nil then frmtransit3:=tfrmtransit3.create(nil);
      frmtransit3.Caption:='QN - Transit 3';
      frmtransit3.Label9.Caption:='Transit Date';
      frmtransit3.DBGridEh1.Columns[6].Title.Caption:='Total T3 Qty';
      frmtransit3.DBGridEh1.Columns[7].Title.Caption:='T3 Qty';
      frmtransit3.DBGridEh1.Columns[7].Field:=query1.fieldbyname('fq1');
      if dt>0 then
      frmtransit3.dateedit1.date:=dt;
      frmtransit3.lblcs.Caption:='The first time';
      frmtransit3.BitBtn1.Enabled:=false;
      frmtransit3.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tfrmlwo.DBGridEh1Columns19EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
begin
  //2011-03-22 さぱ蛤Vincent/Owen/Daisy单秨穦∕﹚ぃノも块AQL计秖τノEx-fty计秖
  //{
  screen.cursor:=crSQLWait;
  try
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='execute procedure sp_lwo_genip_new(:x1,:x2,:x3)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asstring:='AQ';
    execute;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(adt1) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp=''AQ''';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r23 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r23').value=true then begin
      if frmlwo_ip=nil then frmlwo_ip:=tfrmlwo_ip.create(nil);
      frmlwo_ip.caption:='sAQL (pass) Qty';
      frmlwo_ip.dbgrideh1.columns[4].title.caption:='T3 Qty';
      frmlwo_ip.dbgrideh1.columns[5].title.caption:='sAQL (pass)|Total';
      frmlwo_ip.dbgrideh1.columns[6].title.caption:='sAQL (pass)|Qty';
      frmlwo_ip.label10.caption:='AQ';
      with frmlwo_ip.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='select * from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp=:x3';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asstring:='AQ';
        open;
      end;
      frmlwo_ip.DBGridEh1.Columns[6].Field:=frmlwo_ip.query1.fieldbyname('aq1');
      if dt>0 then
      frmlwo_ip.DateEdit1.date:=dt;
      frmlwo_ip.lblcs.Caption:='The first time';
      frmlwo_ip.BitBtn1.Enabled:=false;
      frmlwo_ip.Show;
    end else showmessage('You have no right!');
  end;
  finally
    screen.cursor:=crDefault;
  end;
  //}
end;

procedure Tfrmlwo.DBGridEh1Columns11EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(idt1) as dt from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r23 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r23').value=true then begin
      if frmtransit4_1=nil then frmtransit4_1:=tfrmtransit4_1.create(nil);
      frmtransit4_1.DBGridEh1.Columns[7].Field:=query1.fieldbyname('iq1');
      if dt>0 then
      frmtransit4_1.dateedit1.date:=dt;
      frmtransit4_1.lblcs.Caption:='The first time';
      frmtransit4_1.BitBtn1.Enabled:=false;
      frmtransit4_1.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tfrmlwo.DBGridEh1Columns14EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
begin
  screen.cursor:=crSQLWait;
  try
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='execute procedure sp_lwo_genip_new(:x1,:x2,:x3)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asstring:='SP';
    execute;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(adt1) as dt from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp=''SP''';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r25 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r25').value=true then begin
      if frmlwo_ip=nil then frmlwo_ip:=tfrmlwo_ip.create(nil);
      frmlwo_ip.caption:='GX sP';
      frmlwo_ip.label10.caption:='SP';
      frmlwo_ip.dbgrideh1.columns[5].title.caption:='GX sP|Total';
      frmlwo_ip.dbgrideh1.columns[6].title.caption:='GX sP|Qty';
      with frmlwo_ip.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='select * from tbl_lwo_ip where pline=:x1 and seq=:x2 and styp=:x3';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asstring:='SP';
        open;
      end;
      frmlwo_ip.DBGridEh1.Columns[6].Field:=frmlwo_ip.query1.fieldbyname('aq1');
      if dt>0 then
      frmlwo_ip.DateEdit1.date:=dt;
      frmlwo_ip.lblcs.Caption:='The first time';
      frmlwo_ip.BitBtn1.Enabled:=false;
      frmlwo_ip.Show;
    end else showmessage('You have no right!');
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmlwo.DBGridEh1Columns15EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
begin
  //2015-09-05 さぱ蛤Daisy/Lucy/Mikle单秨穦絋﹚杆计秖ノT2杆絚计秖ノT3
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(pdt1) as dt from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r25 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r25').value=true then begin
      if frmtransit2=nil then frmtransit2:=tfrmtransit2.create(nil);
      frmtransit2.DBGridEh1.Columns[6].Field:=query1.fieldbyname('pq1');
      if dt>0 then
      frmtransit2.DateEdit1.date:=dt;
      frmtransit2.lblcs.Caption:='The first time';
      frmtransit2.BitBtn1.Enabled:=false;
      frmtransit2.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tfrmlwo.previewT1;
var
  flag4:string;
begin
    screen.cursor:=crSQLWait;
    tm:=datetimepicker1.datetime;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tblshedule where pline=:x1 and seq=:x2';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('flag4').isnull then flag4:=copy(fieldbyname('flag4').value,1,4)
      else flag4:='';
    end;
    fty002.Caption:=query3.fieldbyname('tplant').value;
    line002.Caption:=query3.fieldbyname('pline').value;
    jno002.Caption:=query3.fieldbyname('j_no').value;
    cstyle002.Caption:=query3.fieldbyname('cstyle').value;
    job002.Caption:=query3.fieldbyname('j2_job').value;
    rwo002.Caption:=query3.fieldbyname('rwo').value;
    fccs002.Caption:=query3.fieldbyname('fccs').value;
    acol002.Caption:=query3.fieldbyname('acol').value;
    scqty002.Caption:=formatfloat('#,0',query3.fieldbyname('scqty').Value);
    if not query3.fieldbyname('cplan').isnull then
    fdt002.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('cplan').value)
    else fdt002.caption:='    /  /  ';
    if not query3.fieldbyname('cfksrq').isnull then
    cfksrq002.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('cfksrq').value)
    else cfksrq002.Caption:='    /  /  ';
    if not query3.fieldbyname('tzlcrq').isnull then
    tzlcrq002.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('tzlcrq').value)
    else tzlcrq002.Caption:='    /  /  ';
    yqlcrq002.Caption:=formatdatetime('yyyy/MM/dd hh',query3.fieldbyname('yqlcrq').value);
    xc3002.Caption:=query3.fieldbyname('xc3').asstring;
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select min(yszq) as yszq from cust_exfty where tplant=:x1 and pgrp=:x2';
      params[0].asstring:=query3.fieldbyname('tplant').value;
      params[1].asstring:=copy(query3.fieldbyname('j_no').value,1,4);
      open;
      if not fieldbyname('yszq').isnull then yszq2.Caption:=fieldbyname('yszq').AsString else yszq2.Caption:='0';
    end;
    with query7 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      //commandtext:='select * from tbl_lwo_01 where pline=:x1 and seq=:x2 and tm=:x3 and tp=:x4 order by did';
      commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdatetime:=tm;
      params[3].asstring:='1';
      open;
    end;
    if (copy(uppercase(flag4),1,1)>'A') and (copy(uppercase(flag4),1,1)<'E') then frmlwo.title001.Caption:=' - WIP'
    else if (copy(uppercase(flag4),1,1)>='E') then frmlwo.title001.caption:=' - Finished'
    else frmlwo.title001.Caption:=' - Planning';
    ppReport2.Print;
    screen.cursor:=crDefault;
end;

procedure Tfrmlwo.previewT2;
var
  tplant,pline,j_no,cstyle,j2_job,rwo,fccs,acol,scqty,cplan,cfksrq,tzlcrq,yqlcrq,xc3,flag4:string;
begin
    screen.cursor:=crSQLWait;
    tm:=datetimepicker1.DateTime;
    if frmptrans2=nil then frmptrans2:=tfrmptrans2.create(nil);
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tblshedule where pline=:x1 and seq=:x2';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
      tplant:=fieldbyname('tplant').value;
      pline:=fieldbyname('pline').value;
      j_no:=fieldbyname('j_no').value;
      cstyle:=fieldbyname('cstyle').value;
      j2_job:=fieldbyname('j2_job').value;
      rwo:=fieldbyname('rwo').value;
      fccs:=fieldbyname('fccs').value;
      acol:=fieldbyname('acol').value;
      scqty:=formatfloat('#0',fieldbyname('scqty').value);
      if not fieldbyname('cplan').isnull then cplan:=formatdatetime('yyyy/MM/dd',fieldbyname('cplan').value) else cplan:='    /  /  ';
      if not fieldbyname('cfksrq').isnull then cfksrq:=formatdatetime('yyyy/MM/dd',fieldbyname('cfksrq').value) else cfksrq:='    /  /  ';
      if not fieldbyname('tzlcrq').isnull then tzlcrq:=formatdatetime('yyyy/MM/dd',fieldbyname('tzlcrq').value) else tzlcrq:='    /  /  ';
      if not fieldbyname('yqlcrq').isnull then yqlcrq:=formatdatetime('yyyy/MM/dd hh',fieldbyname('yqlcrq').value) else yqlcrq:='    /  /  ';
      xc3:=fieldbyname('xc3').asstring;
      if not fieldbyname('flag4').isnull then flag4:=copy(fieldbyname('flag4').value,1,4)
      else flag4:='';
    end;
    with query7 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdatetime:=tm;
      params[3].asstring:='2';
      open;
    end;
    frmptrans2.fty002.Caption:=tplant;
    frmptrans2.line002.Caption:=pline;
    frmptrans2.jno002.Caption:=j_no;
    frmptrans2.cstyle002.Caption:=cstyle;
    frmptrans2.job002.Caption:=j2_job;
    frmptrans2.rwo002.Caption:=rwo;
    frmptrans2.fccs002.Caption:=fccs;
    frmptrans2.acol002.Caption:=acol;
    frmptrans2.scqty002.Caption:=scqty;
    frmptrans2.fdt002.caption:=cplan;
    frmptrans2.cfksrq002.Caption:=cfksrq;
    frmptrans2.tzlcrq002.Caption:=tzlcrq;
    frmptrans2.yqlcrq002.Caption:=yqlcrq;
    frmptrans2.xc3002.Caption:=xc3;
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select min(yszq) as yszq from cust_exfty where tplant=:x1 and pgrp=:x2';
      params[0].asstring:=tplant;
      params[1].asstring:=copy(j_no,1,4);
      open;
      if not fieldbyname('yszq').isnull then frmptrans2.yszq2.Caption:=fieldbyname('yszq').AsString else frmptrans2.yszq2.Caption:='0';
    end;
    //frmptrans2.dtpk1.DateTime:=tm;
    if (copy(uppercase(flag4),1,1)>='F') and (copy(uppercase(flag4),1,1)<'H') then frmptrans2.title001.Caption:=' - WIP'
    else if (copy(uppercase(flag4),1,1)>='H') then frmptrans2.title001.caption:=' - Finished'
    else frmptrans2.title001.Caption:=' - Planning';
    frmptrans2.ppReport2.Print;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from tbl_trans_dt where tm=:x1 and pline=:x2 and seq=:x3 and dt14 is not null';
      params[0].asdatetime:=tm;
      params[1].asstring:=query1.fieldbyname('pline').value;
      params[2].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('dt14').isnull then begin
        if frmptrans2_1=nil then frmptrans2_1:=tfrmptrans2_1.create(nil);
        frmptrans2_1.fty002.Caption:=tplant;
        frmptrans2_1.line002.Caption:=pline;
        frmptrans2_1.jno002.Caption:=j_no;
        frmptrans2_1.cstyle002.Caption:=cstyle;
        frmptrans2_1.job002.Caption:=j2_job;
        frmptrans2_1.rwo002.Caption:=rwo;
        frmptrans2_1.fccs002.Caption:=fccs;
        frmptrans2_1.acol002.Caption:=acol;
        frmptrans2_1.scqty002.Caption:=scqty;
        frmptrans2_1.fdt002.caption:=cplan;
        frmptrans2_1.cfksrq002.Caption:=cfksrq;
        frmptrans2_1.tzlcrq002.Caption:=tzlcrq;
        frmptrans2_1.yqlcrq002.Caption:=yqlcrq;
        frmptrans2_1.xc3002.Caption:=xc3;
        with query4 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          commandtext:='select min(yszq) as yszq from cust_exfty where tplant=:x1 and pgrp=:x2';
          params[0].asstring:=tplant;
          params[1].asstring:=copy(j_no,1,4);
          open;
          if not fieldbyname('yszq').isnull then frmptrans2_1.yszq2.Caption:=fieldbyname('yszq').AsString else frmptrans2_1.yszq2.Caption:='0';
        end;
        frmptrans2_1.dtpk1.DateTime:=tm;
        frmptrans2_1.ppReport2.Print;
      end;
    end;
    screen.cursor:=crDefault;
end;

procedure Tfrmlwo.previewT3;
var
  flag4:string;
begin
    screen.cursor:=crSQLWait;
    tm:=datetimepicker1.datetime;
    if frmptrans3=nil then frmptrans3:=tfrmptrans3.create(nil);
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tblshedule where pline=:x1 and seq=:x2';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('flag4').isnull then flag4:=copy(fieldbyname('flag4').value,1,4)
      else flag4:='';
    end;
    frmptrans3.fty002.Caption:=query3.fieldbyname('tplant').value;
    frmptrans3.line002.Caption:=query3.fieldbyname('pline').value;
    frmptrans3.jno002.Caption:=query3.fieldbyname('j_no').value;
    frmptrans3.cstyle002.Caption:=query3.fieldbyname('cstyle').value;
    frmptrans3.job002.Caption:=query3.fieldbyname('j2_job').value;
    frmptrans3.rwo002.Caption:=query3.fieldbyname('rwo').value;
    frmptrans3.fccs002.Caption:=query3.fieldbyname('fccs').value;
    frmptrans3.acol002.Caption:=query3.fieldbyname('acol').value;
    frmptrans3.scqty002.Caption:=formatfloat('#,0',query3.fieldbyname('scqty').Value);
    if not query3.fieldbyname('cplan').isnull then
    frmptrans3.fdt002.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('cplan').value)
    else frmptrans3.fdt002.caption:='    /  /  ';
    if not query3.fieldbyname('cfksrq').isnull then
    frmptrans3.cfksrq002.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('cfksrq').value)
    else frmptrans3.cfksrq002.Caption:='    /  /  ';
    if not query3.fieldbyname('tzlcrq').isnull then
    frmptrans3.tzlcrq002.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('tzlcrq').value)
    else frmptrans3.tzlcrq002.Caption:='    /  /  ';
    frmptrans3.yqlcrq002.Caption:=formatdatetime('yyyy/MM/dd hh',query3.fieldbyname('yqlcrq').value);
    frmptrans3.xc3002.Caption:=query3.fieldbyname('xc3').asstring;
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select min(yszq) as yszq from cust_exfty where tplant=:x1 and pgrp=:x2';
      params[0].asstring:=query3.fieldbyname('tplant').value;
      params[1].asstring:=copy(query3.fieldbyname('j_no').value,1,4);
      open;
      if not fieldbyname('yszq').isnull then frmptrans3.yszq2.Caption:=fieldbyname('yszq').AsString else frmptrans3.yszq2.Caption:='0';
    end;
    with query7 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdatetime:=tm;
      params[3].asstring:='3';
      open;
    end;
    frmptrans3.dtpk1.DateTime:=tm;
    if (copy(uppercase(flag4),1,1)>='J') and (copy(uppercase(flag4),1,1)<'L') then frmptrans3.title001.Caption:=' - WIP'
    else if (copy(uppercase(flag4),1,1)>='L') then frmptrans3.title001.caption:=' - Finished'
    else frmptrans3.title001.Caption:=' - Planning';
    frmptrans3.ppReport2.Print;
    screen.cursor:=crDefault;
end;

procedure Tfrmlwo.previewT4;
var
  flag4:string;
begin
    screen.Cursor:=crSQLWait;
    tm:=datetimepicker1.DateTime;
    if frmptrans4=nil then frmptrans4:=tfrmptrans4.create(nil);
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tblshedule where pline=:x1 and seq=:x2';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('flag4').isnull then flag4:=copy(fieldbyname('flag4').value,1,4)
      else flag4:='';
    end;
    frmptrans4.fty002.Caption:=query3.fieldbyname('tplant').value;
    frmptrans4.line002.Caption:=query3.fieldbyname('pline').value;
    frmptrans4.jno002.Caption:=query3.fieldbyname('j_no').value;
    frmptrans4.cstyle002.Caption:=query3.fieldbyname('cstyle').value;
    frmptrans4.job002.Caption:=query3.fieldbyname('j2_job').value;
    frmptrans4.rwo002.Caption:=query3.fieldbyname('rwo').value;
    frmptrans4.fccs002.Caption:=query3.fieldbyname('fccs').value;
    frmptrans4.acol002.Caption:=query3.fieldbyname('acol').value;
    frmptrans4.scqty002.Caption:=formatfloat('#,0',query3.fieldbyname('scqty').Value);
    if not query3.fieldbyname('cplan').isnull then
    frmptrans4.fdt002.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('cplan').value)
    else frmptrans4.fdt002.caption:='    /  /  ';
    if not query3.fieldbyname('cfksrq').isnull then
    frmptrans4.cfksrq002.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('cfksrq').value)
    else frmptrans4.cfksrq002.Caption:='    /  /  ';
    if not query3.fieldbyname('tzlcrq').isnull then
    frmptrans4.tzlcrq002.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('tzlcrq').value)
    else frmptrans4.tzlcrq002.Caption:='    /  /  ';
    frmptrans4.yqlcrq002.Caption:=formatdatetime('yyyy/MM/dd hh',query3.fieldbyname('yqlcrq').value);
    frmptrans4.xc3002.Caption:=query3.fieldbyname('xc3').asstring;
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select min(yszq) as yszq from cust_exfty where tplant=:x1 and pgrp=:x2';
      params[0].asstring:=query3.fieldbyname('tplant').value;
      params[1].asstring:=copy(query3.fieldbyname('j_no').value,1,4);
      open;
      if not fieldbyname('yszq').isnull then frmptrans4.yszq2.Caption:=fieldbyname('yszq').AsString else frmptrans4.yszq2.Caption:='0';
    end;
    with query7 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdatetime:=tm;
      params[3].asstring:='4';
      open;
    end;
    frmptrans4.dtpk1.DateTime:=tm;
    if (copy(flag4,4,1)='m') then frmptrans4.title001.Caption:=' - WIP'
    else if (copy(flag4,4,1)='M') then frmptrans4.title001.caption:=' - Finished'
    else frmptrans4.title001.Caption:=' - Planning';
    frmptrans4.ppReport2.Print;
    screen.Cursor:=crDefault;
end;

procedure Tfrmlwo.BitBtn11Click(Sender: TObject);
begin
  //QN Sheet like Transit flow 1 but blank if only PPC split QN
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select pqty from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('pqty').isnull then begin

      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from tblshedule where pline=:x1 and seq=:x2';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        open;
      end;
      fty003.Caption:=query3.fieldbyname('tplant').value;
      line003.Caption:=query3.fieldbyname('pline').value;
      jno003.Caption:=query3.fieldbyname('j_no').value;
      cstyle003.Caption:=query3.fieldbyname('cstyle').value;
      job003.Caption:=query3.fieldbyname('j2_job').value;
      if not query3.fieldbyname('cwo').isnull then
      cwo01.Caption:=query3.fieldbyname('cwo').value
      else cwo01.Caption:='';
      rwo003.Caption:=query3.fieldbyname('rwo').value;
      fccs003.Caption:=query3.fieldbyname('fccs').value;
      acol003.Caption:=query3.fieldbyname('acol').value;
      scqty003.Caption:=formatfloat('#,0',query3.fieldbyname('scqty').Value);
      if not query3.fieldbyname('cplan').isnull then
      fdt003.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('cplan').value)
      else fdt003.caption:='    /  /  ';
      if not query3.fieldbyname('cfksrq').isnull then
      cfksrq003.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('cfksrq').value)
      else cfksrq003.Caption:='    /  /  ';
      if not query3.fieldbyname('tzlcrq').isnull then
      tzlcrq003.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('tzlcrq').value)
      else tzlcrq003.Caption:='    /  /  ';
      yqlcrq003.Caption:=formatdatetime('yyyy/MM/dd hh',query3.fieldbyname('yqlcrq').value);
      xc3003.Caption:=query3.fieldbyname('xc3').asstring;
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        commandtext:='select min(yszq) as yszq from cust_exfty where tplant=:x1 and pgrp=:x2';
        params[0].asstring:=query3.fieldbyname('tplant').value;
        params[1].asstring:=copy(query3.fieldbyname('j_no').value,1,4);
        open;
        if not fieldbyname('yszq').isnull then yszq3.Caption:=fieldbyname('yszq').AsString else yszq3.Caption:='0';
      end;
      with query8 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from tbl_lwo where pline=:x1 and seq=:x2 and pqty>0';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        open;
      end;
      ppReport3.Print;

    end else showmessage('Please split LWO first!');
  end;
end;

procedure Tfrmlwo.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport3.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmlwo.DBGridEh1ColumnsAQLEditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(adt1) as dt from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r49 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r49').value=true then begin
      if frmaqltransit=nil then frmaqltransit:=tfrmaqltransit.create(nil);
      frmaqltransit.DBGridEh1.Columns[6].Field:=query1.fieldbyname('aq1');
      frmaqltransit.DBGridEh1.Columns[7].Field:=query1.fieldbyname('aq01');
      frmaqltransit.DBGridEh1.Columns[8].Field:=query1.fieldbyname('aq001');
      if dt>0 then
      frmaqltransit.DateEdit1.date:=dt;
      frmaqltransit.lblcs.Caption:='The first time';
      frmaqltransit.BitBtn1.Enabled:=false;
      frmaqltransit.Show;
      if pos('TAMA',query1.fieldbyname('j_no').value)>0 then frmaqltransit.DBGridEh1.columns[4].Visible:=false
      else frmaqltransit.DBGridEh1.Columns[4].Visible:=true; 
    end else showmessage('You have no right!');
  end;
end;

procedure Tfrmlwo.DBGridEh1ColumnsIPEditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(ipd1) as dt from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r24 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r24').value=true then begin
      if frmigapack=nil then frmigapack:=tfrmigapack.create(nil);
      frmigapack.DBGridEh1.Columns[8].Field:=query1.fieldbyname('ip1');
      if dt>0 then
      frmigapack.dateedit1.date:=dt;
      frmigapack.lblcs.Caption:='The first time';
      frmigapack.BitBtn1.Enabled:=false;
      frmigapack.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tfrmlwo.previewT_1;
begin
    screen.cursor:=crSQLWait;
    tm:=datetimepicker1.datetime;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tblshedule where pline=:x1 and seq=:x2';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
    end;
    fty002.Caption:=query3.fieldbyname('tplant').value;
    line002.Caption:=query3.fieldbyname('pline').value;
    jno002.Caption:=query3.fieldbyname('j_no').value;
    cstyle002.Caption:=query3.fieldbyname('cstyle').value;
    job002.Caption:=query3.fieldbyname('j2_job').value;
    rwo002.Caption:=query3.fieldbyname('rwo').value;
    fccs002.Caption:=query3.fieldbyname('fccs').value;
    acol002.Caption:=query3.fieldbyname('acol').value;
    scqty002.Caption:=formatfloat('#,0',query3.fieldbyname('scqty').Value);
    if not query3.fieldbyname('cplan').isnull then
    fdt002.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('cplan').value)
    else fdt002.caption:='    /  /  ';
    if not query3.fieldbyname('cfksrq').isnull then
    cfksrq002.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('cfksrq').value)
    else cfksrq002.Caption:='    /  /  ';
    if not query3.fieldbyname('tzlcrq').isnull then
    tzlcrq002.Caption:=formatdatetime('yyyy/MM/dd',query3.fieldbyname('tzlcrq').value)
    else tzlcrq002.Caption:='    /  /  ';
    yqlcrq002.Caption:=formatdatetime('yyyy/MM/dd hh',query3.fieldbyname('yqlcrq').value);
    xc3002.Caption:=query3.fieldbyname('xc3').asstring;
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select min(yszq) as yszq from cust_exfty where tplant=:x1 and pgrp=:x2';
      params[0].asstring:=query3.fieldbyname('tplant').value;
      params[1].asstring:=copy(query3.fieldbyname('j_no').value,1,4);
      open;
      if not fieldbyname('yszq').isnull then yszq2.Caption:=fieldbyname('yszq').AsString else yszq2.Caption:='0';
    end;
    with query7 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      //commandtext:='select * from tbl_lwo_01 where pline=:x1 and seq=:x2 and tm=:x3 and tp=:x4 order by did';
      commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdatetime:=tm;
      params[3].asstring:='1';
      open;
    end;
    ppReport2.Print;
    screen.cursor:=crDefault;
end;

procedure Tfrmlwo.previewT_2;
var
  pline,flag4:string;
  seq:integer;
  p2:boolean;
begin
    screen.cursor:=crSQLWait;
    tm:=datetimepicker1.datetime;
    pline:=query1.fieldbyname('pline').value;
    seq:=query1.fieldbyname('seq').value;
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select flag4 from tblshedule where pline=:x1 and seq=:x2';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            open;
            if not fieldbyname('flag4').isnull then flag4:=copy(fieldbyname('flag4').value,1,4)
            else flag4:='';
          end;
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            params.createparam(ftstring,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='select * from tbl_trans_dt where tm=:x1 and pline=:x2 and seq=:x3 and typ=:x4';
            params[0].asdatetime:=frmtransitflow.query1.fieldbyname('tm').value;
            params[1].asstring:=frmtransitflow.query1.fieldbyname('pline').value;
            params[2].asinteger:=frmtransitflow.query1.fieldbyname('seq').value;
            params[3].asstring:=frmtransitflow.query1.fieldbyname('typ').value;
            open;
            if not fieldbyname('dt14').isnull then p2:=true else p2:=false;
          end;
          if frmdailyt2=nil then frmdailyt2:=tfrmdailyt2.create(nil);
          with frmdailyt2.query7 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asdatetime:=tm;
            params[3].asstring:='2';
            open;
          end;
          if (copy(uppercase(flag4),2,1)>='F') and (copy(uppercase(flag4),2,1)<'H') then frmdailyt2.title001.Caption:=' - WIP'
          else if (copy(uppercase(flag4),2,1)>='H') then frmdailyt2.title001.caption:=' - Finished'
          else frmdailyt2.title001.Caption:=' - Planning';
          frmdailyt2.ppReport2.Print;
          if p2 then begin
            if frmdailyt2_1=nil then frmdailyt2_1:=tfrmdailyt2_1.create(nil);
            with frmdailyt2_1.query7 do begin
              close;
              params.clear;
              params.createparam(ftstring,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              params.createparam(ftdatetime,'x3',ptinput);
              params.createparam(ftstring,'x4',ptinput);
              commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
              params[0].asstring:=pline;
              params[1].asinteger:=seq;
              params[2].asdatetime:=tm;
              params[3].asstring:='2';
              open;
            end;
            if (copy(uppercase(flag4),2,1)>='F') and (copy(uppercase(flag4),2,1)<'H') then frmdailyt2_1.title001.Caption:=' - WIP'
            else if (copy(uppercase(flag4),2,1)>='H') then frmdailyt2_1.title001.caption:=' - Finished'
            else frmdailyt2_1.title001.Caption:=' - Planning';
            frmdailyt2_1.ppReport2.Print;
          end;
    screen.cursor:=crDefault;
end;

procedure Tfrmlwo.previewT_3;
var
  pline,flag4:string;
  seq:integer;
begin
    screen.cursor:=crSQLWait;
    tm:=datetimepicker1.datetime;
    pline:=query1.fieldbyname('pline').value;
    seq:=query1.fieldbyname('seq').value;
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select flag4 from tblshedule where pline=:x1 and seq=:x2';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            open;
            if not fieldbyname('flag4').isnull then flag4:=copy(fieldbyname('flag4').value,1,4)
            else flag4:='';
          end;
          if frmdailyt3=nil then frmdailyt3:=tfrmdailyt3.create(nil);
          with frmdailyt3.query7 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asdatetime:=tm;
            params[3].asstring:='3';
            open;
          end;
          if (copy(uppercase(flag4),3,1)>='J') and (copy(uppercase(flag4),3,1)<'L') then frmdailyt3.title001.Caption:=' - WIP'
          else if (copy(uppercase(flag4),3,1)>='L') then frmdailyt3.title001.caption:=' - Finished'
          else frmdailyt3.title001.Caption:=' - Planning';
          frmdailyt3.ppReport2.Print;
    screen.cursor:=crDefault;
end;

procedure Tfrmlwo.previewT_4;
var
  pline,flag4:string;
  seq:integer;
begin
    screen.cursor:=crSQLWait;
    tm:=datetimepicker1.datetime;
    pline:=query1.fieldbyname('pline').value;
    seq:=query1.fieldbyname('seq').value;
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select flag4 from tblshedule where pline=:x1 and seq=:x2';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            open;
            if not fieldbyname('flag4').isnull then flag4:=copy(fieldbyname('flag4').value,1,4)
            else flag4:='';
          end;
          if frmdailyt4=nil then frmdailyt4:=tfrmdailyt4.create(nil);
          with frmdailyt4.query7 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asdatetime:=tm;
            params[3].asstring:='4';
            open;
          end;
          if (copy(uppercase(flag4),4,1)>='M') and (copy(uppercase(flag4),4,1)<'P') then frmdailyt4.title001.Caption:=' - WIP'
          else if (copy(uppercase(flag4),4,1)>='P') then frmdailyt4.title001.caption:=' - Finished'
          else frmdailyt4.title001.Caption:=' - Planning';
          frmdailyt4.ppReport2.Print;
    screen.cursor:=crDefault;
end;

procedure Tfrmlwo.aftersave;
var
  i1,i2,i3,i4,i5,i6,i7,i8:string;
begin
  //update tblshedule.flag4
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_calcflag4_1(:x1,:x2)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select flag4 from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if fieldbyname('flag4').value>='B' then begin
      if copy(fieldbyname('flag4').value,1,1)='c' then begin
        i1:=' c '; i2:='';
      end else if copy(fieldbyname('flag4').value,1,1)='C' then begin
        i1:=' C '; i2:='';
      end else if copy(fieldbyname('flag4').value,1,1)='d' then begin
        i1:=' c '; i2:=' d ';
      end else if copy(fieldbyname('flag4').value,1,1)='D' then begin
        i1:=' C '; i2:= ' D ';
      end else if copy(fieldbyname('flag4').value,1,1)='E' then begin
        i1:=' C '; i2:= ' E ';
      end;

      if copy(fieldbyname('flag4').value,2,1)='f' then begin
        i3:=' f '; i4:='';
      end else if copy(fieldbyname('flag4').value,2,1)='F' then begin
        i3:=' F '; i4:='';
      end else if copy(fieldbyname('flag4').value,2,1)='g' then begin
        i3:=' f '; i4:=' g ';
      end else if copy(fieldbyname('flag4').value,2,1)='G' then begin
        i3:=' F '; i4:= ' G ';
      end else if copy(fieldbyname('flag4').value,2,1)='H' then begin
        i3:=' F '; i4:= ' H ';
      end;

      if copy(fieldbyname('flag4').value,3,1)='j' then begin
        i5:=' j '; i6:='';
      end else if copy(fieldbyname('flag4').value,3,1)='J' then begin
        i5:=' J '; i6:='';
      end else if copy(fieldbyname('flag4').value,3,1)='k' then begin
        i5:=' j '; i6:=' k ';
      end else if copy(fieldbyname('flag4').value,3,1)='K' then begin
        i5:=' J '; i6:= ' K ';
      end else if copy(fieldbyname('flag4').value,3,1)='L' then begin
        i5:=' J '; i6:= ' L ';
      end;

      if copy(fieldbyname('flag4').value,4,1)='m' then begin
        i7:=' m '; i8:='';
      end else if copy(fieldbyname('flag4').value,4,1)='M' then begin
        i7:=' M '; i8:='';
      end else if copy(fieldbyname('flag4').value,4,1)='n' then begin
        i7:=' m '; i8:=' n ';
      end else if copy(fieldbyname('flag4').value,4,1)='N' then begin
        i7:=' M '; i8:= ' N ';
      end else if copy(fieldbyname('flag4').value,4,1)='P' then begin
        i7:=' M '; i8:= ' P ';
      end;
    end else begin
      i1:='';
      i2:='';
      i3:='';
      i4:='';
      i5:='';
      i6:='';
      i7:='';
      i8:='';
    end;
  end;

  if dbgrideh1.Visible=true then begin
    dbgrideh1.Columns[22].Footers[1].Value:=i1;
    dbgrideh1.Columns[23].Footers[1].Value:=i2;
    dbgrideh1.Columns[31].Footers[1].Value:=i3;
    dbgrideh1.Columns[33].Footers[1].Value:=i4;
    dbgrideh1.Columns[35].Footers[1].Value:=i5;
    dbgrideh1.Columns[36].Footers[1].Value:=i6;
    dbgrideh1.Columns[38].Footers[1].Value:=i7;
    dbgrideh1.Columns[39].Footers[1].Value:=i8;
  end;
  }
end;

procedure Tfrmlwo.BitBtn10Click(Sender: TObject);
var
  r18:boolean;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r51 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r51').value=true then r18:=true else r18:=false;
  end;
  if r18 then begin
  if frmexchange=nil then frmexchange:=tfrmexchange.create(nil);
  with frmexchange.Query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    commandtext:='select a.fccs,b.* from tblshedule a,tbl_lwo b where a.pline=b.pline and a.seq=b.seq '
                +'and b.j_no=:x1 and b.j2_job=:x2 and b.acol=:x3 and ((b.pline<>:x4) or (b.seq<>:x5)) and b.rwo=:x6 and b.did is not null';
    params[0].asstring:=query1.fieldbyname('j_no').value;
    params[1].asstring:=query1.fieldbyname('j2_job').value;
    params[2].asstring:=query1.fieldbyname('acol').value;
    params[3].asstring:=query1.fieldbyname('pline').value;
    params[4].asinteger:=query1.fieldbyname('seq').value;
    params[5].asstring:=query1.fieldbyname('rwo').value;
    open;
  end;
  with frmexchange.Query5 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select a.fccs,b.* from tblshedule a,tbl_lwo b where a.pline=b.pline and a.seq=b.seq '
                +'and pline=:x1 and b.seq=:x2';
    //commandtext:='select * from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
  end;
  frmexchange.Show;
  end else showmessage('You have no right!');
end;

procedure Tfrmlwo.DBGridEh1ColumnsT1BEditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
begin
  screen.Cursor:=crSQLWait;
  try
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_lwo_gent1b(:x1,:x2)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(dt01) as dt from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt').isnull then dt:=fieldbyname('dt').value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select r57 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if fieldbyname('r57').value=true then begin
      if frmservedqty=nil then frmservedqty:=tfrmservedqty.create(nil);
      with frmservedqty.Query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from tbl_lwo_t1bqty where pline=:x1 and seq=:x2';
        params[0].asstring:=frmlwo.Query1.fieldbyname('pline').value;
        params[1].asinteger:=frmlwo.Query1.fieldbyname('seq').value;
        open;
      end;
      frmservedqty.DBGridEh1.Columns[6].Field:=frmservedqty.query1.fieldbyname('q01');
      if dt>0 then
      frmservedqty.dateedit1.date:=dt;
      frmservedqty.lblcs.Caption:='The first time';
      frmservedqty.BitBtn1.Enabled:=false;
      frmservedqty.Show;
    end else showmessage('You have no right!');
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmlwo.previewT_2AQL;
var
  pline,flag4:string;
  seq:integer;
  p2:boolean;
begin
    screen.cursor:=crSQLWait;
    tm:=datetimepicker1.datetime;
    pline:=query1.fieldbyname('pline').value;
    seq:=query1.fieldbyname('seq').value;
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select flag4 from tblshedule where pline=:x1 and seq=:x2';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            open;
            if not fieldbyname('flag4').isnull then flag4:=copy(fieldbyname('flag4').value,1,4)
            else flag4:='';
          end;
          {
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            params.createparam(ftstring,'x2',ptinput);
            params.createparam(ftinteger,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='select * from tbl_trans_dt where tm=:x1 and pline=:x2 and seq=:x3 and typ=:x4';
            params[0].asdatetime:=frmtransitflow.query1.fieldbyname('tm').value;
            params[1].asstring:=frmtransitflow.query1.fieldbyname('pline').value;
            params[2].asinteger:=frmtransitflow.query1.fieldbyname('seq').value;
            params[3].asstring:=frmtransitflow.query1.fieldbyname('typ').value;
            open;
            if not fieldbyname('dt14').isnull then p2:=true else p2:=false;
          end;
          }
          //if frmdailyt2=nil then frmdailyt2:=tfrmdailyt2.create(nil);
          //with frmdailyt2.query7 do begin
          if frmflow2report1=nil then frmflow2report1:=tfrmflow2report1.Create(nil);
          with frmflow2report1.Query7 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asdatetime:=tm;
            params[3].asstring:='2';
            open;
          end;
          if (copy(uppercase(flag4),2,1)>='F') and (copy(uppercase(flag4),2,1)<'H') then frmflow2report1.title001.Caption:=' - WIP'
          else if (copy(uppercase(flag4),2,1)>='H') then frmflow2report1.title001.caption:=' - Finished'
          else frmflow2report1.title001.Caption:=' - Planning';
          frmflow2report1.ppReport2.Print;
          {
          if p2 then begin
            if frmdailyt2_1=nil then frmdailyt2_1:=tfrmdailyt2_1.create(nil);
            with frmdailyt2_1.query7 do begin
              close;
              params.clear;
              params.createparam(ftstring,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              params.createparam(ftdatetime,'x3',ptinput);
              params.createparam(ftstring,'x4',ptinput);
              commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
              params[0].asstring:=pline;
              params[1].asinteger:=seq;
              params[2].asdatetime:=tm;
              params[3].asstring:='2';
              open;
            end;
            if (copy(uppercase(flag4),2,1)>='F') and (copy(uppercase(flag4),2,1)<'H') then frmdailyt2_1.title001.Caption:=' - WIP'
            else if (copy(uppercase(flag4),2,1)>='H') then frmdailyt2_1.title001.caption:=' - Finished'
            else frmdailyt2_1.title001.Caption:=' - Planning';
            frmdailyt2_1.ppReport2.Print;
          end;
          }
    screen.cursor:=crDefault;
end;

procedure Tfrmlwo.ppGroupFooterBand3BeforePrint(Sender: TObject);
begin
  //diff001.Caption:=inttostr(ppdbcalc4.Value-ppdbcalc2.Value);
  diff002.Caption:=inttostr(ppdbcalc15.Value-ppdbcalc4.Value);
  diff003.Caption:=inttostr(ppdbcalc23.Value-ppdbcalc15.Value);
  diff004.Caption:=inttostr(ppdbcalc7.Value-ppdbcalc23.Value);
  diff005.Caption:=inttostr(ppdbcalc5.Value-ppdbcalc7.Value);
  diff006.Caption:=inttostr(ppdbcalc22.Value-ppdbcalc5.Value);
  diff007.Caption:=inttostr(ppdbcalc12.Value-ppdbcalc22.Value);
  diff008.Caption:=inttostr(ppdbcalc6.Value-ppdbcalc12.Value);
  diff009.Caption:=inttostr(ppdbcalc21.Value-ppdbcalc6.Value);
  diff010.Caption:=inttostr(ppdbcalc9.Value-ppdbcalc21.Value);
  diff011.Caption:=inttostr(ppdbcalc20.Value-ppdbcalc9.Value);
end;

procedure Tfrmlwo.previewT_4_AQL;
var
  pline,flag4:string;
  seq:integer;
begin
    screen.cursor:=crSQLWait;
    tm:=datetimepicker1.datetime;
    pline:=query1.fieldbyname('pline').value;
    seq:=query1.fieldbyname('seq').value;
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select flag4 from tblshedule where pline=:x1 and seq=:x2';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            open;
            if not fieldbyname('flag4').isnull then flag4:=copy(fieldbyname('flag4').value,1,4)
            else flag4:='';
          end;
          if frmdailyt4_1=nil then frmdailyt4_1:=tfrmdailyt4_1.create(nil);
          with frmdailyt4_1.query7 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='select * from tbl_trans_qty where pline=:x1 and seq=:x2 and tm=:x3 and typ=:x4 order by did';
            params[0].asstring:=pline;
            params[1].asinteger:=seq;
            params[2].asdatetime:=tm;
            params[3].asstring:='4';
            open;
          end;
          if (copy(uppercase(flag4),4,1)>='M') and (copy(uppercase(flag4),4,1)<'P') then frmdailyt4_1.title001.Caption:=' - WIP'
          else if (copy(uppercase(flag4),4,1)>='P') then frmdailyt4_1.title001.caption:=' - Finished'
          else frmdailyt4_1.title001.Caption:=' - Planning';
          frmdailyt4_1.ppReport2.Print;
    screen.cursor:=crDefault;
end;

procedure Tfrmlwo.QueryCMP1Change(Sender: TField);
var
  b1:boolean;
  zt1:integer;
begin
  b1:=query1.fieldbyname('cmp').value;
  if copy(query1.fieldbyname('pline').value,1,2)<>'PS' then begin
  if not b1 then begin
    if query1.fieldbyname('cmp1').value=true then begin
      showmessage('T1 can not be completed!');
      query1.fieldbyname('cmp1').value:=false;
    end;
  end else begin
    if query1.fieldbyname('cmp1').value=true then begin
      zt1:=query1.fieldbyname('ttqty').value;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        params.createparam(ftstring,'x6',ptinput);
        commandtext:='select t1_wr+t1_ls as x1 from tbl_lwo_sample where pline=:x1 and seq=:x2 and j2_job=:x3 and rwo=:x4 and acol=:x5 and psiz=:x6';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asstring:=query1.fieldbyname('j2_job').value;
        params[3].asstring:=query1.fieldbyname('rwo').value;
        params[4].asstring:=query1.fieldbyname('acol').value;
        params[5].asstring:=query1.fieldbyname('psiz').value;
        open;
        if not fieldbyname('x1').isnull then zt1:=zt1+fieldbyname('x1').value;
      end;
      if zt1<>query1.fieldbyname('tqty').value then begin
        showmessage('计沮ぃキ, T1ぃ絋粄ЧΘ!');
        query1.fieldbyname('cmp1').value:=false;
      end;
    end;
  end;
  end;
end;

procedure Tfrmlwo.QueryCMP2Change(Sender: TField);
var
  b1:boolean;
  zt1:integer;
  fty,ws:string;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select tplant,tshop from tblline where pline='''+query1.fieldbyname('pline').value+'''';
    open;
    fty:=fieldbyname('tplant').value;
    ws:=fieldbyname('tshop').value;
  end;
  if (fty<>'SC') and (pos('SC',ws)<0) then begin
    b1:=query1.fieldbyname('cmps').value;
    if copy(query1.fieldbyname('pline').value,1,2)<>'PS' then begin
      if not b1 then begin
        if query1.fieldbyname('cmp2').value=true then begin
          showmessage('T2 can not be completed!');
          query1.fieldbyname('cmp2').value:=false;
        end;
      end else begin
        if query1.fieldbyname('cmp2').value=true then begin
          zt1:=query1.fieldbyname('tpqty').value;
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            params.createparam(ftstring,'x5',ptinput);
            params.createparam(ftstring,'x6',ptinput);
            commandtext:='select s_sp+tst_sp+t2_sp+t2_wr+t2_ls as x1 from tbl_lwo_sample where pline=:x1 and seq=:x2 and j2_job=:x3 and rwo=:x4 and acol=:x5 and psiz=:x6';
            params[0].asstring:=query1.fieldbyname('pline').value;
            params[1].asinteger:=query1.fieldbyname('seq').value;
            params[2].asstring:=query1.fieldbyname('j2_job').value;
            params[3].asstring:=query1.fieldbyname('rwo').value;
            params[4].asstring:=query1.fieldbyname('acol').value;
            params[5].asstring:=query1.fieldbyname('psiz').value;
            open;
            if not fieldbyname('x1').isnull then zt1:=zt1+fieldbyname('x1').value;
          end;
          if zt1<>query1.fieldbyname('tsqty').value then begin
            showmessage('计沮ぃキ, T2ぃ絋粄ЧΘ!');
            query1.fieldbyname('cmp2').value:=false;
          end;
        end;
      end;
    end;
  end;
end;

procedure Tfrmlwo.QueryCMP3Change(Sender: TField);
var
  b1,b2:boolean;
  zt1:integer;
  fty,ws:string;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select tplant,tshop from tblline where pline='''+query1.fieldbyname('pline').value+'''';
    open;
    fty:=fieldbyname('tplant').value;
    ws:=fieldbyname('tshop').value;
  end;
  if (fty<>'SC') and (pos('SC',ws)<0) then begin
  b1:=query1.fieldbyname('cmps').value;
  b2:=query1.fieldbyname('cmp2').value;
  if copy(query1.fieldbyname('pline').value,1,2)<>'PS' then begin
  if (not b1) or (not b2) then begin
    if query1.fieldbyname('cmp3').value=true then begin
      showmessage('T3 can not be completed!');
      query1.fieldbyname('cmp3').value:=false;
    end;
  end else begin
    if query1.fieldbyname('cmp3').value=true then begin
      zt1:=query1.fieldbyname('tfqty').value;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        params.createparam(ftstring,'x6',ptinput);
        commandtext:='select t3_sp+t3_wr+t3_ls as x1 from tbl_lwo_sample where pline=:x1 and seq=:x2 and j2_job=:x3 and rwo=:x4 and acol=:x5 and psiz=:x6';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asstring:=query1.fieldbyname('j2_job').value;
        params[3].asstring:=query1.fieldbyname('rwo').value;
        params[4].asstring:=query1.fieldbyname('acol').value;
        params[5].asstring:=query1.fieldbyname('psiz').value;
        open;
        if not fieldbyname('x1').isnull then zt1:=zt1+fieldbyname('x1').value;
      end;
      if zt1<>query1.fieldbyname('tpqty').value then begin
        showmessage('计沮ぃキ, T3ぃ絋粄ЧΘ!');
        query1.fieldbyname('cmp3').value:=false;
      end;
    end;
  end;
  end;
  end;
end;

procedure Tfrmlwo.QueryCMP4Change(Sender: TField);
var
  b1,b2,b3:boolean;
  fty,ws:string;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select tplant,tshop from tblline where pline='''+query1.fieldbyname('pline').value+'''';
    open;
    fty:=fieldbyname('tplant').value;
    ws:=fieldbyname('tshop').value;
  end;
  if (fty<>'SC') and (pos('SC',ws)<0) then begin
  b1:=query1.fieldbyname('cmps').value;
  b2:=query1.fieldbyname('cmp2').value;
  b3:=query1.fieldbyname('cmp3').value;
  if copy(query1.fieldbyname('pline').value,1,2)<>'PS' then begin
  if (not b1) or (not b2) or (not b3) then begin
    if query1.fieldbyname('cmp4').value=true then begin
      showmessage('Ex-fty can not be completed!');
      query1.fieldbyname('cmp4').value:=false;
    end;
  end;
  end;
  end;
end;

procedure Tfrmlwo.QueryCMPiChange(Sender: TField);
var
  b1,b2,b3,b4:boolean;
begin
  b1:=query1.fieldbyname('cmps').value;
  b2:=query1.fieldbyname('cmp2').value;
  b3:=query1.fieldbyname('cmp3').value;
  b4:=query1.fieldbyname('cmp4').value;
  if copy(query1.fieldbyname('pline').value,1,2)<>'PS' then begin
  if (not b1) or (not b2) or (not b3) or (not b4) then begin
    if query1.fieldbyname('cmpi').value=true then begin
      showmessage('Invoice can not be completed!');
      query1.fieldbyname('cmpi').value:=false;
    end;
  end;
  end;
end;

procedure Tfrmlwo.FormCreate(Sender: TObject);
begin
  //siLang1.Language:=frmmain.ComboBox2.text;
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select max(dseq) as q1 from tbl_logging where seq=:x1';
          params[0].asinteger:=frmmain.SpinEdit1.Value;
          open;
          if not fieldbyname('q1').isnull then logseq:=fieldbyname('q1').value+1
          else logseq:=2;
        end;
        {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.CreateParam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftdatetime,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          commandtext:='insert into tbl_logging(seq,usr,frmid,strdt,ip,dseq) values(:x1,:x2,:x3,:x4,:x5,:x6)';
          params[0].asinteger:=frmmain.spinedit1.Value;
          params[1].AsString:=frmmain.combobox1.text;
          params[2].AsString:='QN Transit';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
        with dataset2 do begin
          close;
          sql.text:='insert into [Sys.Authority].dbo.sysuseinfo(menuid,userid,starttime) values(:x1,:x2,:x3)';
          parameters[0].Value:='LWPM - QN Transit';
          parameters[1].value:=frmmain.combobox1.text;
          parameters[2].Value:=now;
          execsql;
        end;
end;

procedure Tfrmlwo.FormDestroy(Sender: TObject);
begin
  {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='update tbl_logging set enddt=:x1 where seq=:x2 and dseq=:x3';
          params[0].AsDateTime:=now;
          params[1].asinteger:=frmmain.spinedit1.Value;
          params[2].asinteger:=logseq;
          execute;
        end;
  }
end;

procedure Tfrmlwo.SampleQty1Click(Sender: TObject);
begin
  if frmqn_sample=nil then frmqn_sample:=tfrmqn_sample.create(nil);
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_tbllwo_sample(:x1,:x2)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
  with frmqn_sample.query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_lwo_sample where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
  end;
  frmqn_sample.DBText1.DataSource:=dbtext1.DataSource;
  frmqn_sample.DBText2.DataSource:=dbtext2.DataSource;
  frmqn_sample.DBText3.DataSource:=dbtext3.DataSource;
  frmqn_sample.DBText4.DataSource:=dbtext4.DataSource;
  frmqn_sample.DBText5.DataSource:=dbtext5.DataSource;
  frmqn_sample.DBText6.DataSource:=dbtext6.DataSource;
  frmqn_sample.DBText7.DataSource:=dbtext7.DataSource;
  frmqn_sample.DBText8.DataSource:=dbtext8.DataSource;
  frmqn_sample.show;
end;

end.
