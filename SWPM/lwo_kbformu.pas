unit lwo_kbformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppStrtch, ppMemo, ppCtrls, myChkBox, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, Menus, ppComm, ppRelatv, ppDB,
  ppDBPipe, DB, DBClient, ComCtrls, Grids, DBGridEh, StdCtrls, Buttons,
  DBCtrls, ExtCtrls, ppViewr, Txcomp, GridsEh;

type
  Tfrmlwo_kb = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
    Panel2: TPanel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    DBGridEh1: TDBGridEh;
    DateTimePicker1: TDateTimePicker;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    PopupMenu1: TPopupMenu;
    Removeall1: TMenuItem;
    CancelConfirm1: TMenuItem;
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
    ppLine116: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel62: TppLabel;
    ppLine117: TppLine;
    ppLine120: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLine123: TppLine;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel77: TppLabel;
    ppLabel79: TppLabel;
    ppLabel81: TppLabel;
    ppLabel83: TppLabel;
    ppLine126: TppLine;
    ppLabel85: TppLabel;
    ppLine128: TppLine;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLine130: TppLine;
    ppLine133: TppLine;
    ppLabel38: TppLabel;
    ppLine135: TppLine;
    ppLabel64: TppLabel;
    ppLabel91: TppLabel;
    myCheckBox1: TmyCheckBox;
    ppLabel123: TppLabel;
    myCheckBox2: TmyCheckBox;
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
    ppLine118: TppLine;
    ppLine121: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine124: TppLine;
    ppDBText10: TppDBText;
    ppLine127: TppLine;
    ppLine129: TppLine;
    ppLine131: TppLine;
    myDBCheckBox7: TmyDBCheckBox;
    myDBCheckBox8: TmyDBCheckBox;
    myDBCheckBox9: TmyDBCheckBox;
    ppLine134: TppLine;
    ppLine136: TppLine;
    myDBCheckBox10: TmyDBCheckBox;
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
    pick01: TppLabel;
    transit101: TppLabel;
    transit201: TppLabel;
    transit301: TppLabel;
    ppShape17: TppShape;
    ppLabel42: TppLabel;
    yszq1: TppLabel;
    ppLabel43: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel49: TppLabel;
    ppLine119: TppLine;
    ppLine122: TppLine;
    ppDBCalc7: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    transit401: TppLabel;
    ppLabel71: TppLabel;
    ppLine125: TppLine;
    ppDBCalc12: TppDBCalc;
    sewn01: TppLabel;
    ppLabel34: TppLabel;
    packed01: TppLabel;
    ppLabel40: TppLabel;
    j01: TppLabel;
    ppLabel32: TppLabel;
    ppLine137: TppLine;
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
    ppLabel109: TppLabel;
    h01: TppLabel;
    m01: TppLabel;
    Query5: TClientDataSet;
    Query6: TClientDataSet;
    DataSource2: TDataSource;
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
    ppLabel66: TppLabel;
    ppLine36: TppLine;
    ppLabel67: TppLabel;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine41: TppLine;
    ppLabel61: TppLabel;
    ppLabel65: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
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
    ppLine100: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    seq11: TppLabel;
    dt11: TppLabel;
    seq12: TppLabel;
    dt12: TppLabel;
    seq13: TppLabel;
    dt13: TppLabel;
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
    ppLine132: TppLine;
    myCheckBox3: TmyCheckBox;
    myCheckBox4: TmyCheckBox;
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
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppDBText6: TppDBText;
    ppDBText13: TppDBText;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
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
    ppLine101: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLine109: TppLine;
    p11: TppLabel;
    t11: TppLabel;
    p12: TppLabel;
    t12: TppLabel;
    p13: TppLabel;
    t13: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
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
    ppShape18: TppShape;
    ppLabel51: TppLabel;
    yszq2: TppLabel;
    ppLabel92: TppLabel;
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
    ppLabel110: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
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
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
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
    b02: TppLabel;
    e02: TppLabel;
    ppLine102: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    sp11: TppLabel;
    st11: TppLabel;
    sp12: TppLabel;
    st12: TppLabel;
    sp13: TppLabel;
    st13: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    Query7: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape19: TppShape;
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
    ppLabel140: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape20: TppShape;
    ppDBText14: TppDBText;
    ppLine177: TppLine;
    ppLine178: TppLine;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLabel120: TppLabel;
    ppLine160: TppLine;
    ppLabel122: TppLabel;
    ppLine161: TppLine;
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
    ppShape27: TppShape;
    ppLine214: TppLine;
    ppLine215: TppLine;
    ppLabel252: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
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
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1Columns5EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure Removeall1Click(Sender: TObject);
    procedure DBGridEh1Columns7EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns8EditButtonClick(Sender: TObject;
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
    procedure DBGridEh1Columns9EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns11EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure DBGridEh1ColumnsIPEditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1ColumnsAQLEditButtonClick(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure previewT1;
    procedure previewT2;
    procedure previewT3;
    procedure previewT4;
  end;

var
  frmlwo_kb: Tfrmlwo_kb;
  tm:tdatetime;

implementation

uses mainformu, worksheet, bundleformu, transitformu, achievingformu,
  transitformu2, transitformu3, note_lwoformu, ptrans2formu, transitformu4,
  sewnformu, ptrans3formu, ptrans4formu, ptrans2_1formu, transitflowformu;

{$R *.dfm}

procedure Tfrmlwo_kb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmptrans2<>nil then frmptrans2:=nil;
  if frmptrans2_1<>nil then frmptrans2_1:=nil;
  if frmptrans3<>nil then frmptrans3:=nil;
  if frmptrans4<>nil then frmptrans4:=nil;
  action:=cafree;
  frmlwo_kb:=nil;
end;

procedure Tfrmlwo_kb.Query1AfterPost(DataSet: TDataSet);
var
  i1,i2,i3,i4,i5,i6,i7,i8:string;
begin
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
                  +'pq3=:x31,pq4=:x32,pq5=:x33,pq6=:x34,cmp2=:x35,tfqty=:x36,fq1=:x37,fq2=:x38,fq3=:x39,'
                  +'cmp3=:x42,teqty=:x43,eq1=:x44,eq2=:x45,eq3=:x46,cmp4=:x52,pq7=:x47,pq8=:x48,pq9=:x49,pq10=:x50,t3diff=:x51,'
                  +'pq11=:x70,pq12=:x71,pq13=:x72,pq14=:x73,pq15=:x74,pq16=:x75,pq17=:x76,pq18=:x77,pq19=:x78,pq20=:x79 '
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
      if not query1.fieldbyname('cmp3').isnull then params[39].asboolean:=query1.fieldbyname('cmp3').value else params[39].asboolean:=false;
      if not query1.fieldbyname('teqty').isnull then params[40].asinteger:=query1.fieldbyname('teqty').value else params[40].asinteger:=0;
      if not query1.fieldbyname('eq1').isnull then params[41].asinteger:=query1.fieldbyname('eq1').value else params[41].asinteger:=0;
      if not query1.fieldbyname('eq2').isnull then params[42].asinteger:=query1.fieldbyname('eq2').value else params[42].asinteger:=0;
      if not query1.fieldbyname('eq3').isnull then params[43].asinteger:=query1.fieldbyname('eq3').value else params[43].asinteger:=0;
      if not query1.fieldbyname('cmp4').isnull then params[44].asboolean:=query1.fieldbyname('cmp4').value else params[44].asboolean:=false;
      if not query1.fieldbyname('pq7').isnull then params[45].asinteger:=query1.fieldbyname('pq7').value else params[45].asinteger:=0;
      if not query1.fieldbyname('pq8').isnull then params[46].asinteger:=query1.fieldbyname('pq8').value else params[46].asinteger:=0;
      if not query1.fieldbyname('pq9').isnull then params[47].asinteger:=query1.fieldbyname('pq9').value else params[47].asinteger:=0;
      if not query1.fieldbyname('pq10').isnull then params[48].asinteger:=query1.fieldbyname('pq10').value else params[48].asinteger:=0;
      if not query1.fieldbyname('t3diff').isnull then params[49].asinteger:=query1.fieldbyname('t3diff').value else params[49].asinteger:=0;
      if not query1.fieldbyname('pq11').isnull then params[50].asinteger:=query1.fieldbyname('pq11').value else params[50].asinteger:=0;
      if not query1.fieldbyname('pq12').isnull then params[51].asinteger:=query1.fieldbyname('pq12').value else params[51].asinteger:=0;
      if not query1.fieldbyname('pq13').isnull then params[52].asinteger:=query1.fieldbyname('pq13').value else params[52].asinteger:=0;
      if not query1.fieldbyname('pq14').isnull then params[53].asinteger:=query1.fieldbyname('pq14').value else params[53].asinteger:=0;
      if not query1.fieldbyname('pq15').isnull then params[54].asinteger:=query1.fieldbyname('pq15').value else params[54].asinteger:=0;
      if not query1.fieldbyname('pq16').isnull then params[55].asinteger:=query1.fieldbyname('pq16').value else params[55].asinteger:=0;
      if not query1.fieldbyname('pq17').isnull then params[56].asinteger:=query1.fieldbyname('pq17').value else params[56].asinteger:=0;
      if not query1.fieldbyname('pq18').isnull then params[57].asinteger:=query1.fieldbyname('pq18').value else params[57].asinteger:=0;
      if not query1.fieldbyname('pq19').isnull then params[58].asinteger:=query1.fieldbyname('pq19').value else params[58].asinteger:=0;
      if not query1.fieldbyname('pq20').isnull then params[59].asinteger:=query1.fieldbyname('pq20').value else params[59].asinteger:=0;
      params[60].asstring:=query1.fieldbyname('pline').value;
      params[61].asinteger:=query1.fieldbyname('seq').value;
      params[62].asstring:=query1.fieldbyname('j_no').value;
      params[63].asinteger:=query1.fieldbyname('ordline').value;
      params[64].asstring:=query1.fieldbyname('j2_job').value;
      params[65].asstring:=query1.fieldbyname('rwo').value;
      params[66].asstring:=query1.fieldbyname('acol').value;
      params[67].asinteger:=query1.fieldbyname('did').value;
      execute;
    end;
  end;

  //
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
{
    if fieldbyname('flag4').value>='B' then begin
      if fieldbyname('flag4').value='b' then i1:=' b '
      else if copy(fieldbyname('flag4').value,1,1)<>'d' then i1:=' B ' else i1:=' b ';
      if uppercase(fieldbyname('flag4').value)>'B' then begin
        i2:=' '+copy(fieldbyname('flag4').value,1,1)+' ';
        if copy(uppercase(fieldbyname('flag4').value),2,1)>='F' then begin
          if copy(fieldbyname('flag4').value,2,1)='f' then begin
            i3:=' f '; i4:='';
          end else if copy(fieldbyname('flag4').value,2,1)='F' then begin
            i3:=' F '; i4:='';
          end else if copy(fieldbyname('flag4').value,2,1)='g' then begin
            i3:=' f '; i4:=' g ';
          end else if copy(fieldbyname('flag4').value,2,1)='G' then begin
            i3:=' F '; i4:=' G ';
          end else if copy(fieldbyname('flag4').value,2,1)='H' then begin
            i3:=' F '; i4:=' H ';
          end;
        end else begin
          i3:='';
          i4:='';
        end;
      end else begin
        i2:='';
        i3:='';
        i4:='';
      end;
    end else begin
      i1:='';
      i2:='';
      i3:='';
      i4:='';
    end;
  end;
}
  dbgrideh1.Columns[14].Footers[1].Value:=i1;
  dbgrideh1.Columns[15].Footers[1].Value:=i2;
  dbgrideh1.Columns[16].Footers[1].Value:=i3;
  dbgrideh1.Columns[18].Footers[1].Value:=i4;
  dbgrideh1.Columns[19].Footers[1].Value:=i5;
  dbgrideh1.Columns[20].Footers[1].Value:=i6;
  dbgrideh1.Columns[22].Footers[1].Value:=i7;
  dbgrideh1.Columns[23].Footers[1].Value:=i8;

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
end;

procedure Tfrmlwo_kb.BitBtn1Click(Sender: TObject);
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

procedure Tfrmlwo_kb.FormShow(Sender: TObject);
var
  i1,i2,i3,i4,i5,i6,i7,i8:string;
begin
  {
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_lwo where pline=:x1 and seq=:x2';
    if label8.caption='GAI' then begin
      params[0].asstring:=frmachieving.query1.fieldbyname('pline').value;
      params[1].asinteger:=frmachieving.query1.fieldbyname('seq').value;
      dbtext1.DataSource:=frmachieving.DataSource1;
      dbtext2.DataSource:=frmachieving.DataSource1;
      dbtext3.DataSource:=frmachieving.DataSource1;
      dbtext4.DataSource:=frmachieving.DataSource1;
      dbtext5.DataSource:=frmachieving.DataSource1;
      dbtext6.DataSource:=frmachieving.DataSource1;
      dbtext7.DataSource:=frmachieving.DataSource1;
    end else begin
      params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
      params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
      dbtext1.DataSource:=worksheet1.DataSource1;
      dbtext2.DataSource:=worksheet1.DataSource1;
      dbtext3.DataSource:=worksheet1.DataSource1;
      dbtext4.DataSource:=worksheet1.DataSource1;
      dbtext5.DataSource:=worksheet1.DataSource1;
      dbtext6.DataSource:=worksheet1.DataSource1;
      dbtext7.DataSource:=worksheet1.DataSource1;
    end;
    open;
  end;
  }
  //
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
{
    if fieldbyname('flag4').value>='B' then begin
      if fieldbyname('flag4').value='b' then i1:=' b '
      else if copy(fieldbyname('flag4').value,1,1)<>'d' then i1:=' B ' else i1:=' b ';
      if uppercase(fieldbyname('flag4').value)>'B' then begin
        i2:=' '+copy(fieldbyname('flag4').value,1,1)+' ';
        if copy(uppercase(fieldbyname('flag4').value),2,1)>='F' then begin
          if copy(fieldbyname('flag4').value,2,1)='f' then begin
            i3:=' f '; i4:='';
          end else if copy(fieldbyname('flag4').value,2,1)='F' then begin
            i3:=' F '; i4:='';
          end else if copy(fieldbyname('flag4').value,2,1)='g' then begin
            i3:=' f '; i4:=' g ';
          end else if copy(fieldbyname('flag4').value,2,1)='G' then begin
            i3:=' F '; i4:=' G ';
          end else if copy(fieldbyname('flag4').value,2,1)='H' then begin
            i3:=' F '; i4:=' H ';
          end;
        end else begin
          i3:='';
          i4:='';
        end;
      end else begin
        i2:='';
        i3:='';
        i4:='';
      end;
    end else begin
      i1:='';
      i2:='';
      i3:='';
      i4:='';
    end;
  end;
}
  dbgrideh1.Columns[14].Footers[1].Value:=i1;
  dbgrideh1.Columns[15].Footers[1].Value:=i2;
  dbgrideh1.Columns[16].Footers[1].Value:=i3;
  dbgrideh1.Columns[18].Footers[1].Value:=i4;
  dbgrideh1.Columns[19].Footers[1].Value:=i5;
  dbgrideh1.Columns[20].Footers[1].Value:=i6;
  dbgrideh1.Columns[22].Footers[1].Value:=i7;
  dbgrideh1.Columns[23].Footers[1].Value:=i8;
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

procedure Tfrmlwo_kb.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  //if dbgrideh1.SelectedIndex=2 then begin
  //  if query1.fieldbyname('tqty').value>0 then key:=#0;
  //end else
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmlwo_kb.BitBtn2Click(Sender: TObject);
begin
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

procedure Tfrmlwo_kb.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting:=zs100percent;
end;

procedure Tfrmlwo_kb.DBGridEh1Columns4EditButtonClick(Sender: TObject;
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

procedure Tfrmlwo_kb.QueryTQ1Change(Sender: TField);
var
  q1,q2,q3,q4,q5,q6,q7,q8,q9,q10:integer;
  tq1,tq2,tq3,tq4,tq5,tq6,tq7,tq8,tq9,tq10:integer;
  pq1,pq2,pq3,pq4,pq5,pq6,pq7,pq8,pq9,pq10,pq11,pq12,pq13,pq14,pq15,pq16,pq17,pq18,pq19,pq20:integer;
  fq1,fq2,fq3:integer;
  eq1,eq2,eq3,eq4,eq5:integer;
  iq1,iq2,iq3:integer;
  tsqty:integer;
begin
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    params.createparam(ftinteger,'x8',ptinput);
    commandtext:='select tsqty from tbl_lwo_sew where pline=:x1 and seq=:x2 and j_no=:x3 and ordline=:x4 and j2_job=:x5 and rwo=:x6 and acol=:x7 and did=:x8';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asstring:=query1.fieldbyname('j_no').value;
    params[3].asinteger:=query1.fieldbyname('ordline').value;
    params[4].asstring:=query1.fieldbyname('j2_job').value;
    params[5].asstring:=query1.fieldbyname('rwo').value;
    params[6].asstring:=query1.fieldbyname('acol').value;
    params[7].asinteger:=query1.fieldbyname('did').value;
    open;
    if not fieldbyname('tsqty').isnull then tsqty:=fieldbyname('tsqty').value else tsqty:=0;
  end;
  }
    if not query1.fieldbyname('tsqty').isnull then tsqty:=query1.fieldbyname('tsqty').value else tsqty:=0;
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
    query1.fieldbyname('tqty').value:=q1+q2+q3+q4+q5+q6+q7+q8+q9+q10;
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
    if (tq1+tq2+tq3+tq4+tq5+tq6+tq7+tq8+tq9+tq10>q1+q2+q3+q4+q5+q6+q7+q8+q9+q10) then begin
      showmessage('T1 Qty > Picked Qty!');
      abort;
    end else query1.fieldbyname('ttqty').value:=tq1+tq2+tq3+tq4+tq5+tq6+tq7+tq8+tq9+tq10;

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
    //if (pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20>tsqty) then begin
    //  showmessage('T2 Qty > Sewn Qty!');
    //  abort;
    //end else begin
      query1.fieldbyname('tpqty').value:=pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20;
      query1.fieldbyname('tsdiff').value:=query1.fieldbyname('tsqty').value-(pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20);
    //end;

    if query1.fieldbyname('fq1').isnull then fq1:=0 else fq1:=query1.fieldbyname('fq1').value;
    if query1.fieldbyname('fq2').isnull then fq2:=0 else fq2:=query1.fieldbyname('fq2').value;
    if query1.fieldbyname('fq3').isnull then fq3:=0 else fq3:=query1.fieldbyname('fq3').value;
    //if (fq1+fq2+fq3>pq1+pq2+pq3+pq4+pq5+pq6+pq7+pq8+pq9+pq10+pq11+pq12+pq13+pq14+pq15+pq16+pq17+pq18+pq19+pq20) then begin
    //  showmessage('T3 Qty > T2 Qty!');
    //  abort;
    //end else
    query1.fieldbyname('tfqty').value:=fq1+fq2+fq3;

    if query1.fieldbyname('eq1').isnull then eq1:=0 else eq1:=query1.fieldbyname('eq1').value;
    if query1.fieldbyname('eq2').isnull then eq2:=0 else eq2:=query1.fieldbyname('eq2').value;
    if query1.fieldbyname('eq3').isnull then eq3:=0 else eq3:=query1.fieldbyname('eq3').value;
    if query1.fieldbyname('eq4').isnull then eq4:=0 else eq4:=query1.fieldbyname('eq4').value;
    if query1.fieldbyname('eq5').isnull then eq5:=0 else eq5:=query1.fieldbyname('eq5').value;
    //if (eq1+eq2+eq3+eq4+eq5>fq1+fq2+fq3) then begin
    //  showmessage('T4 Qty > T3 Qty!');
    //  abort;
    //end else begin
      query1.fieldbyname('teqty').value:=eq1+eq2+eq3+eq4+eq5;
      query1.fieldbyname('t3diff').value:=fq1+fq2+fq3-(eq1+eq2+eq3+eq4+eq5);
    //end;

    if query1.fieldbyname('iq1').isnull then iq1:=0 else iq1:=query1.fieldbyname('iq1').value;
    if query1.fieldbyname('iq2').isnull then iq2:=0 else iq2:=query1.fieldbyname('iq2').value;
    if query1.fieldbyname('iq3').isnull then iq3:=0 else iq3:=query1.fieldbyname('iq3').value;
    query1.fieldbyname('tiqty').value:=iq1+iq2+iq3;
end;

procedure Tfrmlwo_kb.BitBtn3Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  bitbtn1click(self);
  if query1.active then begin
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
    fty001.Caption:=query3.fieldbyname('tplant').value;
    line001.Caption:=query3.fieldbyname('pline').value;
    jno001.Caption:=query3.fieldbyname('j_no').value;
    cstyle001.Caption:=query3.fieldbyname('cstyle').value;
    job001.Caption:=query3.fieldbyname('j2_job').value;
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
  screen.Cursor:=crDefault;
end;

procedure Tfrmlwo_kb.DBGridEh1Columns5EditButtonClick(Sender: TObject;
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

procedure Tfrmlwo_kb.ppSummaryBand1BeforePrint(Sender: TObject);
var
  pk01,pk02,ts101,ts102,ts201,ts202,ts301,ts302,ts401,ts402,s001,s002:string;
  dt1,dt2:tdate;
  c1,c2,c3,c4,c5:integer;
  i1,i2,i3,i4,i5,i6,i7,i8:string;
  tm0:tdatetime;
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
{
    if fieldbyname('flag4').value>='B' then begin
      if fieldbyname('flag4').value='b' then b01.caption:=' b '
      else if copy(fieldbyname('flag4').value,1,1)<>'d' then b01.caption:=' B ' else b01.caption:=' b ';
      if uppercase(fieldbyname('flag4').value)>'B' then begin
        e01.Caption:=' '+copy(fieldbyname('flag4').value,1,1)+' ';
        if copy(uppercase(fieldbyname('flag4').value),2,1)>='F' then begin
          if copy(fieldbyname('flag4').value,2,1)='f' then begin
            f01.Caption:=' f '; g01.Caption:='';
          end else if copy(fieldbyname('flag4').value,2,1)='F' then begin
            f01.Caption:=' F '; g01.Caption:='';
          end else if copy(fieldbyname('flag4').value,2,1)='g' then begin
            f01.Caption:=' f '; g01.Caption:=' g ';
          end else if copy(fieldbyname('flag4').value,2,1)='G' then begin
            f01.Caption:=' F '; g01.Caption:=' G ';
          end else if copy(fieldbyname('flag4').value,2,1)='H' then begin
            f01.Caption:=' F '; g01.Caption:=' H ';
          end;
        end else begin
          f01.Caption:='';
          g01.Caption:='';
        end;
      end else begin
        e01.Caption:='';
        f01.Caption:='';
        g01.Caption:='';
      end;
    end else begin
      b01.Caption:='';
      e01.Caption:='';
      f01.Caption:='';
      g01.Caption:='';
    end;
  end;
  g02.Caption:=g01.Caption;
}
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
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=401 and dseq<=403 and tp=''3'' and dt>:x4';
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
    commandtext:='select min(dt) as dt1,max(dt) as dt2 from tbl_lwo_tmp_dt where pline=:x1 and seq=:x2 and tm=:x3 and dseq>=501 and dseq<=503 and tp=''4'' and dt>:x4';
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
  end else begin
    transit201.Caption:=ts201;transit202.Caption:=ts202;
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

{
  ppmemo1.Lines.Text:='';
  ppmemo1.Lines.Add('Notepad for Diff of Picked / QN Qty : - ');
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_lwo_dt where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('remarks').isnull then ppmemo1.Lines.add(fieldbyname('remarks').value);
  end;
  ppmemo1.Lines.Add('');
  ppmemo1.Lines.Add('Notepad for T2 & T3 : - ');
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_lwo_dt where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('pmemo').isnull then ppmemo1.Lines.add(fieldbyname('pmemo').value);
  end;
}
end;

procedure Tfrmlwo_kb.Removeall1Click(Sender: TObject);
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

procedure Tfrmlwo_kb.DBGridEh1Columns7EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
begin
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

procedure Tfrmlwo_kb.DBGridEh1Columns8EditButtonClick(Sender: TObject;
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
      frmtransit3.Caption:='QN - Packed';
      frmtransit3.Label9.Caption:='Packed Date';
      frmtransit3.DBGridEh1.Columns[6].Title.Caption:='Total Packed Qty';
      frmtransit3.DBGridEh1.Columns[7].Title.Caption:='Packed Qty';
      frmtransit3.DBGridEh1.Columns[7].Field:=query1.fieldbyname('fq1');
      if dt>0 then
      frmtransit3.dateedit1.date:=dt;
      frmtransit3.lblcs.Caption:='The first time';
      frmtransit3.BitBtn1.Enabled:=false;
      frmtransit3.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tfrmlwo_kb.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomSetting:=zs100percent;
end;

procedure Tfrmlwo_kb.BitBtn4Click(Sender: TObject);
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
    frmtransitflow.caption:='Transit Flow 1';
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
    {
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
    }
  end;
  screen.Cursor:=crDefault;
end;

procedure Tfrmlwo_kb.ppDetailBand2BeforePrint(Sender: TObject);
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
    p01.Caption:=frmlwo_kb.query7.fieldbyname('tq01').value;
    t01.Caption:=frmlwo_kb.query7.fieldbyname('ttq01').value;
    if frmlwo_kb.query7.fieldbyname('tq01').value>0 then p01.Font.Style:=[fsBold]
    else p01.Font.Style:=[];
    if frmlwo_kb.query7.fieldbyname('ttq01').value>0 then t01.Font.Style:=[fsBold]
    else t01.Font.Style:=[];
  end;
  if dt02.Caption>'' then begin
    p02.Caption:=frmlwo_kb.query7.fieldbyname('tq02').value;
    t02.Caption:=frmlwo_kb.query7.fieldbyname('ttq02').value;
    if frmlwo_kb.query7.fieldbyname('tq02').value>0 then p02.Font.Style:=[fsBold]
    else p02.Font.Style:=[];
    if frmlwo_kb.query7.fieldbyname('ttq02').value>0 then t02.Font.Style:=[fsBold]
    else t02.Font.Style:=[];
  end;
  if dt03.Caption>'' then begin
    p03.Caption:=frmlwo_kb.query7.fieldbyname('tq03').value;
    t03.Caption:=frmlwo_kb.query7.fieldbyname('ttq03').value;
    if frmlwo_kb.query7.fieldbyname('tq03').value>0 then p03.Font.Style:=[fsBold]
    else p03.Font.Style:=[];
    if frmlwo_kb.query7.fieldbyname('ttq03').value>0 then t03.Font.Style:=[fsBold]
    else t03.Font.Style:=[];
  end;
  if dt04.Caption>'' then begin
    p04.Caption:=frmlwo_kb.query7.fieldbyname('tq04').value;
    t04.Caption:=frmlwo_kb.query7.fieldbyname('ttq04').value;
    if frmlwo_kb.query7.fieldbyname('tq04').value>0 then p04.Font.Style:=[fsBold]
    else p04.Font.Style:=[];
    if frmlwo_kb.query7.fieldbyname('ttq04').value>0 then t04.Font.Style:=[fsBold]
    else t04.Font.Style:=[];
  end;
  if dt05.Caption>'' then begin
    p05.Caption:=frmlwo_kb.query7.fieldbyname('tq05').value;
    t05.Caption:=frmlwo_kb.query7.fieldbyname('ttq05').value;
    if frmlwo_kb.query7.fieldbyname('tq05').value>0 then p05.Font.Style:=[fsBold]
    else p05.Font.Style:=[];
    if frmlwo_kb.query7.fieldbyname('ttq05').value>0 then t05.Font.Style:=[fsBold]
    else t05.Font.Style:=[];
  end;
  if dt06.Caption>'' then begin
    p06.Caption:=frmlwo_kb.query7.fieldbyname('tq06').value;
    t06.Caption:=frmlwo_kb.query7.fieldbyname('ttq06').value;
    if frmlwo_kb.query7.fieldbyname('tq06').value>0 then p06.Font.Style:=[fsBold]
    else p06.Font.Style:=[];
    if frmlwo_kb.query7.fieldbyname('ttq06').value>0 then t06.Font.Style:=[fsBold]
    else t06.Font.Style:=[];
  end;
  if dt07.Caption>'' then begin
    p07.Caption:=frmlwo_kb.query7.fieldbyname('tq07').value;
    t07.Caption:=frmlwo_kb.query7.fieldbyname('ttq07').value;
    if frmlwo_kb.query7.fieldbyname('tq07').value>0 then p07.Font.Style:=[fsBold]
    else p07.Font.Style:=[];
    if frmlwo_kb.query7.fieldbyname('ttq07').value>0 then t07.Font.Style:=[fsBold]
    else t07.Font.Style:=[];
  end;
  if dt08.Caption>'' then begin
    p08.Caption:=frmlwo_kb.query7.fieldbyname('tq08').value;
    t08.Caption:=frmlwo_kb.query7.fieldbyname('ttq08').value;
    if frmlwo_kb.query7.fieldbyname('tq08').value>0 then p08.Font.Style:=[fsBold]
    else p08.Font.Style:=[];
    if frmlwo_kb.query7.fieldbyname('ttq08').value>0 then t08.Font.Style:=[fsBold]
    else t08.Font.Style:=[];
  end;
  if dt09.Caption>'' then begin
    p09.Caption:=frmlwo_kb.query7.fieldbyname('tq09').value;
    t09.Caption:=frmlwo_kb.query7.fieldbyname('ttq09').value;
    if frmlwo_kb.query7.fieldbyname('tq09').value>0 then p09.Font.Style:=[fsBold]
    else p09.Font.Style:=[];
    if frmlwo_kb.query7.fieldbyname('ttq09').value>0 then t09.Font.Style:=[fsBold]
    else t09.Font.Style:=[];
  end;
  if dt10.Caption>'' then begin
    p10.Caption:=frmlwo_kb.query7.fieldbyname('tq10').value;
    t10.Caption:=frmlwo_kb.query7.fieldbyname('ttq10').value;
    if frmlwo_kb.query7.fieldbyname('tq10').value>0 then p10.Font.Style:=[fsBold]
    else p10.Font.Style:=[];
    if frmlwo_kb.query7.fieldbyname('ttq10').value>0 then t10.Font.Style:=[fsBold]
    else t10.Font.Style:=[];
  end;
  if dt11.Caption>'' then begin
    p11.Caption:=frmlwo_kb.query7.fieldbyname('tq11').value;
    t11.Caption:=frmlwo_kb.query7.fieldbyname('ttq11').value;
    if frmlwo_kb.query7.fieldbyname('tq11').value>0 then p11.Font.Style:=[fsBold]
    else p11.Font.Style:=[];
    if frmlwo_kb.query7.fieldbyname('ttq11').value>0 then t11.Font.Style:=[fsBold]
    else t11.Font.Style:=[];
  end;
  if dt12.Caption>'' then begin
    p12.Caption:=frmlwo_kb.query7.fieldbyname('tq12').value;
    t12.Caption:=frmlwo_kb.query7.fieldbyname('ttq12').value;
    if frmlwo_kb.query7.fieldbyname('tq12').value>0 then p12.Font.Style:=[fsBold]
    else p12.Font.Style:=[];
    if frmlwo_kb.query7.fieldbyname('ttq12').value>0 then t12.Font.Style:=[fsBold]
    else t12.Font.Style:=[];
  end;
  if dt13.Caption>'' then begin
    p13.Caption:=frmlwo_kb.query7.fieldbyname('tq13').value;
    t13.Caption:=frmlwo_kb.query7.fieldbyname('ttq13').value;
    if frmlwo_kb.query7.fieldbyname('tq13').value>0 then p13.Font.Style:=[fsBold]
    else p13.Font.Style:=[];
    if frmlwo_kb.query7.fieldbyname('ttq13').value>0 then t13.Font.Style:=[fsBold]
    else t13.Font.Style:=[];
  end;
end;

procedure Tfrmlwo_kb.ppHeaderBand2BeforePrint(Sender: TObject);
var
  i:integer;
begin
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
      seq01.Caption:=fieldbyname('ct01').value;
      dt01.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt01').value);
      x001.Visible:=true;y001.Visible:=true;
    end;
    if not fieldbyname('dt02').isnull then begin
      seq02.Caption:=fieldbyname('ct02').value;
      dt02.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt02').value);
      x002.Visible:=true;y002.Visible:=true;
    end;
    if not fieldbyname('dt03').isnull then begin
      seq03.Caption:=fieldbyname('ct03').value;
      dt03.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt03').value);
      x003.Visible:=true;y003.Visible:=true;
    end;
    if not fieldbyname('dt04').isnull then begin
      seq04.Caption:=fieldbyname('ct04').value;
      dt04.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt04').value);
      x004.Visible:=true;y004.Visible:=true;
    end;
    if not fieldbyname('dt05').isnull then begin
      seq05.Caption:=fieldbyname('ct05').value;
      dt05.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt05').value);
      x005.Visible:=true;y005.Visible:=true;
    end;
    if not fieldbyname('dt06').isnull then begin
      seq06.Caption:=fieldbyname('ct06').value;
      dt06.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt06').value);
      x006.Visible:=true;y006.Visible:=true;
    end;
    if not fieldbyname('dt07').isnull then begin
      seq07.Caption:=fieldbyname('ct07').value;
      dt07.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt07').value);
      x007.Visible:=true;y007.Visible:=true;
    end;
    if not fieldbyname('dt08').isnull then begin
      seq08.Caption:=fieldbyname('ct08').value;
      dt08.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt08').value);
      x008.Visible:=true;y008.Visible:=true;
    end;
    if not fieldbyname('dt09').isnull then begin
      seq09.Caption:=fieldbyname('ct09').value;
      dt09.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt09').value);
      x009.Visible:=true;y009.Visible:=true;
    end;
    if not fieldbyname('dt10').isnull then begin
      seq10.Caption:=fieldbyname('ct10').value;
      dt10.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt10').value);
      x010.Visible:=true;y010.Visible:=true;
    end;
    if not fieldbyname('dt11').isnull then begin
      seq11.Caption:=fieldbyname('ct11').value;
      dt11.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt11').value);
      x011.Visible:=true;y011.Visible:=true;
    end;
    if not fieldbyname('dt12').isnull then begin
      seq12.Caption:=fieldbyname('ct12').value;
      dt12.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt12').value);
      x012.Visible:=true;y012.Visible:=true;
    end;
    if not fieldbyname('dt13').isnull then begin
      seq13.Caption:=fieldbyname('ct13').value;
      dt13.Caption:=formatdatetime('yy/MM/dd',fieldbyname('dt13').value);
      x013.Visible:=true;y013.Visible:=true;
    end;
  end;
end;

procedure Tfrmlwo_kb.ppSummaryBand2BeforePrint(Sender: TObject);
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
{
    if fieldbyname('flag4').value>='B' then begin
      if fieldbyname('flag4').value='b' then b02.caption:=' b '
      else if copy(fieldbyname('flag4').value,1,1)<>'d' then b02.caption:=' B ' else b02.caption:=' b ';
      if uppercase(fieldbyname('flag4').value)>'B' then begin
        e02.Caption:=' '+copy(fieldbyname('flag4').value,1,1)+' ';
      end else begin
        e02.Caption:='';
      end;
    end else begin
      b02.Caption:='';
      e02.Caption:='';
    end;
  end;
}

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

procedure Tfrmlwo_kb.BitBtn6Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  bitbtn1click(self);
  tm:=now;
  datetimepicker1.DateTime:=tm;
  //if frmptrans3=nil then frmptrans3:=tfrmptrans3.create(nil);
  if query1.active then begin
    {
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_lwo_calc_dt(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdatetime:=tm;
      params[3].asstring:='3';
      execute;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_lwo_calc_qty(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdatetime:=tm;
      params[3].asstring:='3';
      execute;
    end;
    }
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
    frmtransitflow.caption:='Transit Flow 3';
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
    {
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
    frmptrans3.ppReport2.Print;
    }
  end;
  screen.Cursor:=crDefault;
end;

procedure Tfrmlwo_kb.BitBtn5Click(Sender: TObject);
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
      commandtext:='execute procedure sp_calc_trans(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asstring:='2';
      params[3].asdatetime:=tm;
      execute;
    end;
    if frmtransitflow=nil then frmtransitflow:=tfrmtransitflow.create(nil);
    frmtransitflow.caption:='Transit Flow 2';
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
    {
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
    if frmptrans2=nil then frmptrans2:=tfrmptrans2.create(nil);
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
    frmptrans2.dtpk1.DateTime:=tm;
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
    }
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmlwo_kb.BitBtn7Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  bitbtn1click(self);
  tm:=now;
  datetimepicker1.DateTime:=tm;
  //if frmptrans4=nil then frmptrans4:=tfrmptrans4.create(nil);
  if query1.active then begin
    {
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_lwo_calc_dt(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdatetime:=tm;
      params[3].asstring:='4';
      execute;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_lwo_calc_qty(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdatetime:=tm;
      params[3].asstring:='4';
      execute;
    end;
    }
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
      params[2].asstring:='4';
      params[3].asdatetime:=tm;
      execute;
    end;
    if frmtransitflow=nil then frmtransitflow:=tfrmtransitflow.create(nil);
    frmtransitflow.caption:='Transit Flow 4';
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
    {
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
      if not fieldbyname('yszq').isnull then frmptrans4.yszq2.Caption:=fieldbyname('yszq').AsString else frmptrans3.yszq2.Caption:='0';
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
    //frmptrans3.Label1.Caption:=datetimetostr(tm);
    frmptrans4.dtpk1.DateTime:=tm;
    frmptrans4.ppReport2.Print;
    }
  end;
  screen.Cursor:=crDefault;
end;

procedure Tfrmlwo_kb.Query6AfterPost(DataSet: TDataSet);
begin
  if query6.ApplyUpdates(-1)>0 then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x0',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='update tbl_lwo_dt set remarks=:x1,pmemo=:x0,t4memo=:x4,t2memo=:x5 where pline=:x2 and seq=:x3';
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
      params[4].asstring:=query1.fieldbyname('pline').value;
      params[5].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
  end;
end;

procedure Tfrmlwo_kb.CancelConfirm1Click(Sender: TObject);
begin
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
end;

procedure Tfrmlwo_kb.DBGridEh1Columns10EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt:tdate;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(ted1) as dt from tbl_lwo where pline=:x1 and seq=:x2';
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
      if frmtransit4=nil then frmtransit4:=tfrmtransit4.create(nil);
      frmtransit4.DBGridEh1.Columns[7].Field:=query1.fieldbyname('eq1');
      if dt>0 then
      frmtransit4.dateedit1.date:=dt;
      frmtransit4.lblcs.Caption:='The first time';
      frmtransit4.BitBtn1.Enabled:=false;
      frmtransit4.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tfrmlwo_kb.Query1AfterOpen(DataSet: TDataSet);
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
  query1.fieldbyname('eq1').onchange:=querytq1change;
  query1.fieldbyname('eq2').onchange:=querytq1change;
  query1.fieldbyname('eq3').onchange:=querytq1change;
  query1.fieldbyname('eq4').onchange:=querytq1change;
  query1.fieldbyname('eq5').onchange:=querytq1change;
  query1.fieldbyname('iq1').onchange:=querytq1change;
  query1.fieldbyname('iq2').onchange:=querytq1change;
  query1.fieldbyname('iq3').onchange:=querytq1change;
end;

procedure Tfrmlwo_kb.BitBtn8Click(Sender: TObject);
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
    commandtext:='select r18,r24,r23,r25 from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.Text;
    open;
    if (fieldbyname('r18').value=true) or (fieldbyname('r24').value=true) or (fieldbyname('r23').value=true) or (fieldbyname('r25').value=true) then begin
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
      if fieldbyname('r18').value=true then
      frmnote_lwo.DBMemo1.DataField:='REMARKS'
      else if fieldbyname('r24').value=true then frmnote_lwo.DBMemo1.DataField:='PMEMO'
      else if fieldbyname('r23').value=true then frmnote_lwo.DBMemo1.DataField:='T4MEMO'
      else if fieldbyname('r25').value=true then frmnote_lwo.DBMemo1.DataField:='T2MEMO';
      frmnote_lwo.Show;
    end;
  end;
end;

procedure Tfrmlwo_kb.BitBtn9Click(Sender: TObject);
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
              params[0].asfloat:=strtoint(dbgrideh1.Columns[4].Footers[0].Value);
              params[1].asstring:=query1.fieldbyname('pline').value;
              params[2].asinteger:=query1.fieldbyname('seq').value;
              execute;
            end;
            showmessage('Confirmed OK!');
           end;
          end;
        end else begin
        end;
      end;
    end;
  end;
end;

procedure Tfrmlwo_kb.DBGridEh1Columns6EditButtonClick(Sender: TObject;
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

procedure Tfrmlwo_kb.DBGridEh1Columns9EditButtonClick(Sender: TObject;
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

procedure Tfrmlwo_kb.DBGridEh1Columns11EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  //
end;

procedure Tfrmlwo_kb.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  //st101.Caption:=inttostr(ppDBCalc11.Value-ppDBCalc10.Value);
  //st102.Caption:=inttostr(ppDBCalc10.Value-ppDBCalc8.Value);
end;

procedure Tfrmlwo_kb.previewT1;
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

procedure Tfrmlwo_kb.previewT2;
var
  tplant,pline,j_no,cstyle,j2_job,rwo,fccs,acol,scqty,cplan,cfksrq,tzlcrq,yqlcrq,xc3:string;
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

procedure Tfrmlwo_kb.previewT3;
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
    frmptrans3.ppReport2.Print;
    screen.cursor:=crDefault;
end;

procedure Tfrmlwo_kb.previewT4;
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
    frmptrans4.ppReport2.Print;
    screen.Cursor:=crDefault;
end;

procedure Tfrmlwo_kb.BitBtn11Click(Sender: TObject);
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
      ppReport3.Print;

    end else showmessage('Please split QN first!');
  end;
end;

procedure Tfrmlwo_kb.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport3.PreviewForm.Viewer).ZoomSetting:=zs100percent;
end;

procedure Tfrmlwo_kb.DBGridEh1ColumnsAQLEditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  //
end;

procedure Tfrmlwo_kb.DBGridEh1ColumnsIPEditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  //
end;

end.
 