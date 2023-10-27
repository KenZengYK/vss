unit ordersummaryformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands, ppStrtch, ppSubRpt,
  ppPrnabl, ppCache, ppViewr, ppVar, ppMemo, ExtCtrls, ppRegion,
  ADODB, ppParameter;

type
  Tfrmordersummary = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline2: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    title001: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppShape4: TppShape;
    rx001: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppTitleBand2: TppTitleBand;
    ppLine16: TppLine;
    ppLabel10: TppLabel;
    ppShape6: TppShape;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel11: TppLabel;
    ppShape7: TppShape;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBCalc5: TppDBCalc;
    x002: TppLabel;
    x003: TppLabel;
    x004: TppLabel;
    x005: TppLabel;
    x006: TppLabel;
    x007: TppLabel;
    ppDBCalc7: TppDBCalc;
    rx002: TppLabel;
    ppLabel20: TppLabel;
    ppDBCalc9: TppDBCalc;
    x008: TppLabel;
    x009: TppLabel;
    ppLabel21: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel22: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    x01: TppLabel;
    x02: TppLabel;
    x03: TppLabel;
    x04: TppLabel;
    ppLabel25: TppLabel;
    x07: TppLabel;
    x08: TppLabel;
    x09: TppLabel;
    x10: TppLabel;
    ppLabel34: TppLabel;
    ppLine33: TppLine;
    ppLabel41: TppLabel;
    ppLine34: TppLine;
    x0001: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine35: TppLine;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLine36: TppLine;
    ra06: TppLabel;
    ra07: TppLabel;
    ra08: TppLabel;
    ppLabel51: TppLabel;
    ppLabel63: TppLabel;
    ppLabel65: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel26: TppLabel;
    ppLine29: TppLine;
    ppLabel39: TppLabel;
    ppLabel64: TppLabel;
    ppLabel35: TppLabel;
    ppLabel37: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    y01: TppLabel;
    y02: TppLabel;
    y03: TppLabel;
    y04: TppLabel;
    ppLine30: TppLine;
    y002: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel5: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    y001: TppLabel;
    y05: TppLabel;
    y06: TppLabel;
    y07: TppLabel;
    y08: TppLabel;
    ppLine31: TppLine;
    ppMemo2: TppMemo;
    ppShape9: TppShape;
    rg01: TRadioGroup;
    r001: TppLabel;
    r002: TppLabel;
    r003: TppLabel;
    r004: TppLabel;
    ra01: TppLabel;
    ra02: TppLabel;
    ra04: TppLabel;
    ra05: TppLabel;
    ppLine32: TppLine;
    ppLine41: TppLine;
    ppLabel4: TppLabel;
    ppLabel9: TppLabel;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
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
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    c01: TppLabel;
    c02: TppLabel;
    c03: TppLabel;
    c04: TppLabel;
    ppLine66: TppLine;
    ppLine68: TppLine;
    c001: TppLabel;
    c002: TppLabel;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    c003: TppLabel;
    c004: TppLabel;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
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
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel45: TppLabel;
    ppLabel33: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLine90: TppLine;
    ppLabel48: TppLabel;
    new001: TppLabel;
    ppDBText9: TppDBText;
    ppMemo1: TppMemo;
    ppLabel54: TppLabel;
    subtitle001: TppLabel;
    ppRegion1: TppRegion;
    x05: TppMemo;
    ra03: TppMemo;
    x06: TppMemo;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine13: TppLine;
    dx001: TppLabel;
    dx002: TppLabel;
    ppLine14: TppLine;
    ppDBText10: TppDBText;
    ppLine15: TppLine;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine17: TppLine;
    ppDBText11: TppDBText;
    ppLine28: TppLine;
    ppLine37: TppLine;
    ppLabel30: TppLabel;
    ppLabel52: TppLabel;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine50: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine67: TppLine;
    ppLine69: TppLine;
    ppLine105: TppLine;
    ppLabel66: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    dcd001: TppLabel;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLine116: TppLine;
    ppLabel77: TppLabel;
    ppLine117: TppLine;
    ppLabel78: TppLabel;
    ppLine118: TppLine;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLine119: TppLine;
    ppLine120: TppLine;
    ck003: TppMemo;
    ck001: TppLabel;
    ck002: TppLabel;
    ck004: TppLabel;
    ck005: TppLabel;
    ck006: TppLabel;
    ck007: TppLabel;
    ck008: TppLabel;
    chk001: TppLabel;
    chk002: TppLabel;
    chk003: TppLabel;
    chk004: TppLabel;
    ppLine121: TppLine;
    ppRegion2: TppRegion;
    ppLine122: TppLine;
    ppLine127: TppLine;
    ppLabel62: TppLabel;
    ppLabel81: TppLabel;
    ppLine128: TppLine;
    ppLine129: TppLine;
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
    sd01: TppLabel;
    sd02: TppLabel;
    sd03: TppLabel;
    sd04: TppLabel;
    ed01: TppLabel;
    ed02: TppLabel;
    ed03: TppLabel;
    ed04: TppLabel;
    sc001: TppLabel;
    sc002: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ox01: TppLabel;
    ox02: TppLabel;
    ox03: TppLabel;
    ppLine130: TppLine;
    ppLine123: TppLine;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLine126: TppLine;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppLine137: TppLine;
    ppLine140: TppLine;
    ppLabel93: TppLabel;
    s001: TppLabel;
    s002: TppLabel;
    s003: TppLabel;
    s004: TppLabel;
    s005: TppLabel;
    s006: TppLabel;
    s007: TppLabel;
    s008: TppLabel;
    pdt001: TppLabel;
    adc001: TppLabel;
    adc002: TppLabel;
    adc003: TppLabel;
    adc004: TppLabel;
    adc005: TppLabel;
    adc006: TppLabel;
    adc007: TppLabel;
    adc008: TppLabel;
    ttl001: TppLabel;
    ppLine138: TppLine;
    ppLine139: TppLine;
    s009: TppLabel;
    adc009: TppLabel;
    s010: TppLabel;
    adc010: TppLabel;
    Label3: TLabel;
    ComboBox3: TComboBox;
    dx003: TppLabel;
    ppLine141: TppLine;
    ppLabel6: TppLabel;
    ppLine142: TppLine;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppLabel19: TppLabel;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppLabel55: TppLabel;
    rpt003: TppMemo;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    rpt001: TppLabel;
    rpt002: TppLabel;
    ppLine155: TppLine;
    ppLine156: TppLine;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    rpt004: TppLabel;
    rpt005: TppLabel;
    rpt006: TppLabel;
    rpt007: TppLabel;
    rpt008: TppLabel;
    rp001: TppLabel;
    rp002: TppLabel;
    rp003: TppLabel;
    rp004: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    rnc003: TppMemo;
    rvs003: TppMemo;
    ppLabel106: TppLabel;
    ppLine159: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppLine166: TppLine;
    ppLine167: TppLine;
    ppLine168: TppLine;
    ppLine169: TppLine;
    ppLine170: TppLine;
    rn001: TppLabel;
    rv001: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLine171: TppLine;
    ppLine172: TppLine;
    ppLine173: TppLine;
    ppLine174: TppLine;
    ppLine175: TppLine;
    ppLine176: TppLine;
    ppLine177: TppLine;
    rn002: TppLabel;
    rv002: TppLabel;
    rn003: TppLabel;
    rv003: TppLabel;
    rn004: TppLabel;
    rv004: TppLabel;
    ppLine178: TppLine;
    ppLine179: TppLine;
    ppLine180: TppLine;
    ppLine181: TppLine;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    rnc006: TppLabel;
    rnc007: TppLabel;
    rnc008: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    rvs006: TppLabel;
    rvs007: TppLabel;
    rvs008: TppLabel;
    rnc002: TppLabel;
    rnc005: TppLabel;
    rvs002: TppLabel;
    rvs005: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLine182: TppLine;
    ppLine183: TppLine;
    ppLine184: TppLine;
    ppLine185: TppLine;
    ppLine186: TppLine;
    ppLine187: TppLine;
    ppLine188: TppLine;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLine189: TppLine;
    ppLine190: TppLine;
    ppLine191: TppLine;
    ppLine192: TppLine;
    ppLine193: TppLine;
    ppLine194: TppLine;
    ppLine195: TppLine;
    rnc001: TppLabel;
    rnc004: TppLabel;
    rvs001: TppLabel;
    rvs004: TppLabel;
    d1004: TppLabel;
    d1003: TppLabel;
    d1002: TppLabel;
    d1001: TppLabel;
    d2004: TppLabel;
    d2003: TppLabel;
    d2002: TppLabel;
    d2001: TppLabel;
    d3004: TppLabel;
    d3003: TppLabel;
    d3002: TppLabel;
    d3001: TppLabel;
    d4001: TppLabel;
    d4002: TppLabel;
    d4003: TppLabel;
    d4004: TppLabel;
    d5004: TppLabel;
    d6004: TppLabel;
    d5003: TppLabel;
    d6003: TppLabel;
    d5002: TppLabel;
    d6002: TppLabel;
    d5001: TppLabel;
    d6001: TppLabel;
    d7001: TppLabel;
    d8001: TppLabel;
    d8002: TppLabel;
    d8003: TppLabel;
    d8004: TppLabel;
    d7004: TppLabel;
    d7003: TppLabel;
    d7002: TppLabel;
    BitBtn3: TBitBtn;
    xh1: TRadioGroup;
    ClientDataSet2: TClientDataSet;
    ppShape5: TppShape;
    ppShape10: TppShape;
    ppShape8: TppShape;
    ppLabel40: TppLabel;
    x010: TppLabel;
    x011: TppLabel;
    ra09: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLine38: TppLine;
    ppLabel53: TppLabel;
    ppLine39: TppLine;
    f01: TppLabel;
    f02: TppLabel;
    b01: TppLabel;
    b02: TppLabel;
    b03: TppLabel;
    ppLine40: TppLine;
    ppLabel61: TppLabel;
    ck009: TppLabel;
    ppLabel56: TppLabel;
    rpt009: TppLabel;
    ppLine157: TppLine;
    ppLine158: TppLine;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel131: TppLabel;
    rnc009: TppLabel;
    rvs009: TppLabel;
    DataSet2: TADOQuery;
    ttl002: TppLabel;
    stt1: TppLabel;
    stt2: TppLabel;
    stt3: TppLabel;
    stt4: TppLabel;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    fty001: TppLabel;
    ppLabel143: TppLabel;
    season001: TppLabel;
    ppShape11: TppShape;
    ppLabel142: TppLabel;
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
    ppLine196: TppLine;
    ppLine197: TppLine;
    ppLine198: TppLine;
    ppLine199: TppLine;
    ppLine200: TppLine;
    ppLine201: TppLine;
    ppLine202: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText8: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    out001: TppLabel;
    out002: TppLabel;
    out003: TppLabel;
    ppLabel163: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel164: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmordersummary: Tfrmordersummary;
  jcpo:string;
  logseq:integer;

implementation

uses mainformu, analysisformu, ordersummary1formu, ordersummary2formu,
  ordersummary_02formu, ordersummary_01formu, ordersummary_03formu;

{$R *.dfm}

procedure Tfrmordersummary.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmordersummary1<>nil then frmordersummary1:=nil;
  if frmordersummary2<>nil then frmordersummary2:=nil;
  if frmordersummary_02<>nil then frmordersummary_02:=nil;
  if frmordersummary_01<>nil then frmordersummary_01:=nil;
  if frmordersummary_03<>nil then frmordersummary_03:=nil;
  action:=cafree;
  frmordersummary:=nil;
end;

procedure Tfrmordersummary.BitBtn1Click(Sender: TObject);
var
  tm,tm1:tdatetime;
  s1,s2,s3,s4:string;
  str1:string;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
   if (combobox2.text='SALL') or (combobox2.text='AFGH') then begin
     if frmordersummary_02=nil then frmordersummary_02:=tfrmordersummary_02.Create(nil);
     frmordersummary_02.ComboBox1.text:=combobox1.text;
     frmordersummary_02.ComboBox2.text:=combobox2.text;
     frmordersummary_02.ComboBox3.Text:=combobox3.text;
     frmordersummary_02.rg01.ItemIndex:=rg01.ItemIndex;
     frmordersummary_02.xh1.ItemIndex:=xh1.ItemIndex;
     frmordersummary_02.BitBtn1click(self);
   end else if ((combobox2.text<>'SALL1') and (combobox2.text>'')) then begin
     if frmordersummary_03=nil then frmordersummary_03:=tfrmordersummary_03.Create(nil);
     frmordersummary_03.ComboBox1.text:=combobox1.text;
     frmordersummary_03.ComboBox2.text:=combobox2.text;
     frmordersummary_03.ComboBox3.Text:=combobox3.text;
     frmordersummary_03.rg01.ItemIndex:=rg01.ItemIndex;
     frmordersummary_03.xh1.ItemIndex:=xh1.ItemIndex;
     frmordersummary_03.BitBtn1click(self);
   end else if combobox2.text='' then begin
     //per customer
     with query1 do begin
       close;
       params.clear;
       commandtext:='select * from tbl_tmp_ordsummary_ttl_base where tplant='''+combobox3.text+''' and season='''+combobox1.text+''' and tprc>0 order by grp,cust';
       open;
       if not fieldbyname('tplant').isnull then begin
         fty001.Caption:=combobox3.text;
         season001.Caption:=combobox1.text;
         ppReport2.Print;
       end;
     end;
   end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmordersummary.ppDetailBand1BeforePrint(Sender: TObject);
var
  s1,s2:string;
begin
  s1:='';
  s2:='('+jcpo+')';
  x05.Lines.Clear;
  ra03.Lines.Clear;
  x06.Lines.Clear;
  rpt003.Lines.Clear;
  rnc003.Lines.clear;
  rvs003.Lines.clear;
  ck003.Lines.clear;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bku,cstyle,pjc1 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''O'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')'//s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')';//s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //x05.Caption:=s1;
  x05.Lines.add(s1);
  s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bku,cstyle,pjc1 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''N'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')'//s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')';//s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //x06.Caption:=s1;
  x06.Lines.add(s1);
  s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bku,cstyle,pjc1 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''R'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')'//s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')';//s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //ra03.Caption:=s1;
  ra03.Lines.Add(s1);
  s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bku,cstyle,pjc1 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''P'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')'//s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')';//s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  rpt003.Lines.Add(s1);
  s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bku,cstyle,pjc1 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''Q'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')'//s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')';//s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  rnc003.Lines.Add(s1);
  s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bku,cstyle,pjc1 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''T'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')'//s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')';//s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  rvs003.Lines.Add(s1);
  s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select distinct bku,cstyle,pjc1 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''G'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')'//s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')';//s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  ck003.Lines.Add(s1);
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''O'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s1').isnull then x01.Caption:=fieldbyname('s1').AsString else x01.Caption:='0';
    if not fieldbyname('s2').IsNull then x03.Caption:=fieldbyname('s2').asstring else x03.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''N'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s1').isnull then x02.Caption:=fieldbyname('s1').AsString else x02.Caption:='0';
    if not fieldbyname('s2').IsNull then x04.Caption:=fieldbyname('s2').asstring else x04.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''R'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s1').isnull then ra01.Caption:=fieldbyname('s1').AsString else ra01.Caption:='0';
    if not fieldbyname('s2').IsNull then ra02.Caption:=fieldbyname('s2').asstring else ra02.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''P'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s1').isnull then rpt001.Caption:=fieldbyname('s1').AsString else rpt001.Caption:='0';
    if not fieldbyname('s2').IsNull then rpt002.Caption:=fieldbyname('s2').asstring else rpt002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''Q'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s1').isnull then rnc001.Caption:=fieldbyname('s1').AsString else rnc001.Caption:='0';
    if not fieldbyname('s2').IsNull then rnc002.Caption:=fieldbyname('s2').asstring else rnc002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''T'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s1').isnull then rvs001.Caption:=fieldbyname('s1').AsString else rvs001.Caption:='0';
    if not fieldbyname('s2').IsNull then rvs002.Caption:=fieldbyname('s2').asstring else rvs002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''G'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s1').isnull then ck001.Caption:=fieldbyname('s1').AsString else ck001.Caption:='0';
    if not fieldbyname('s2').IsNull then ck002.Caption:=fieldbyname('s2').asstring else ck002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and con=''O'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s2').IsNull then c01.Caption:=fieldbyname('s2').asstring else c01.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and ((con=''O'') or (con=''N'')) and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s2').IsNull then sc002.Caption:=fieldbyname('s2').asstring else sc002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and con=''N'' and fc=:x3 and dcdate=:x4';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    open;
    if not fieldbyname('s2').IsNull then c02.Caption:=fieldbyname('s2').asstring else c02.Caption:='0';
  end;
  x0001.Caption:=query2.fieldbyname('fc').value;

  //
  //ck001.Caption:='0';
  //ck002.Caption:='0';
  //ck003.Caption:='';
end;

procedure Tfrmordersummary.ppSummaryBand2BeforePrint(Sender: TObject);
var
  s1:string;
begin
  s1:='';
  ppMemo1.Lines.Clear;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct jhrs2,bku,cstyle,rvs from tbl_tmp_ordsummary where tm=:x1 and cstyle>'''' and rvs>''''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      ppMemo1.Lines.Add(trim(fieldbyname('jhrs2').value+'  :  '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+' : '+fieldbyname('rvs').value));
      application.ProcessMessages;
      next;
    end;
  end;
  // Ranges - Out
  ppLabel94.Caption:='Range(s) - Out :  N/A ';
  // Style - Out
  ppLabel95.Caption:='Style(s) - Out :  N/A ';
  // Color - Out
  ppLabel96.Caption:='Color(s) - Out :  N/A ';
end;

procedure Tfrmordersummary.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmordersummary.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct acol) as s3 from tbl_tmp_ordsummary where tm=:x1 and ((con=''O'') or (con=''N''))';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s3').isnull then begin
      y001.Caption:=fieldbyname('s3').asstring;
    end else begin
      y001.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr=''O''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then y05.Caption:=fieldbyname('s1').AsString else y05.Caption:='0';
    if not fieldbyname('s2').IsNull then y07.Caption:=fieldbyname('s2').asstring else y07.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr=''N''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then y06.Caption:=fieldbyname('s1').AsString else y06.Caption:='0';
    if not fieldbyname('s2').IsNull then y08.Caption:=fieldbyname('s2').asstring else y08.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr=''R''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then r003.Caption:=fieldbyname('s1').AsString else r003.Caption:='0';
    if not fieldbyname('s2').IsNull then r004.Caption:=fieldbyname('s2').asstring else r004.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr=''P''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then rp003.Caption:=fieldbyname('s1').AsString else rp003.Caption:='0';
    if not fieldbyname('s2').IsNull then rp004.Caption:=fieldbyname('s2').asstring else rp004.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr=''Q''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then rn003.Caption:=fieldbyname('s1').AsString else rn003.Caption:='0';
    if not fieldbyname('s2').IsNull then rn004.Caption:=fieldbyname('s2').asstring else rn004.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr=''T''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then rv003.Caption:=fieldbyname('s1').AsString else rv003.Caption:='0';
    if not fieldbyname('s2').IsNull then rv004.Caption:=fieldbyname('s2').asstring else rv004.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr=''G''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then chk003.Caption:=fieldbyname('s1').AsString else chk003.Caption:='0';
    if not fieldbyname('s2').IsNull then chk004.Caption:=fieldbyname('s2').asstring else chk004.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then stt3.Caption:=fieldbyname('s1').AsString else stt3.Caption:='0';
    if not fieldbyname('s2').IsNull then stt4.Caption:=fieldbyname('s2').asstring else stt4.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and con=''O''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s2').IsNull then c003.Caption:=fieldbyname('s2').asstring else c003.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and con=''N''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s2').IsNull then c004.Caption:=fieldbyname('s2').asstring else c004.Caption:='0';
  end;

  //chk003.Caption:='0';
  //chk004.Caption:='0';
end;

procedure Tfrmordersummary.ppDetailBand2BeforePrint(Sender: TObject);
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr=''O''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s1').isnull then y01.Caption:=fieldbyname('s1').AsString else y01.Caption:='0';
    if not fieldbyname('s2').IsNull then y03.Caption:=fieldbyname('s2').asstring else y03.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr=''N''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s1').isnull then y02.Caption:=fieldbyname('s1').AsString else y02.Caption:='0';
    if not fieldbyname('s2').IsNull then y04.Caption:=fieldbyname('s2').asstring else y04.Caption:='0';
  end;
  y002.Caption:=copy(query1.fieldbyname('jhrs1').value,1,1);
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr=''R''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s1').isnull then r001.Caption:=fieldbyname('s1').AsString else r001.Caption:='0';
    if not fieldbyname('s2').IsNull then r002.Caption:=fieldbyname('s2').asstring else r002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr=''P''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s1').isnull then rp001.Caption:=fieldbyname('s1').AsString else rp001.Caption:='0';
    if not fieldbyname('s2').IsNull then rp002.Caption:=fieldbyname('s2').asstring else rp002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr=''Q''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s1').isnull then rn001.Caption:=fieldbyname('s1').AsString else rn001.Caption:='0';
    if not fieldbyname('s2').IsNull then rn002.Caption:=fieldbyname('s2').asstring else rn002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr=''T''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s1').isnull then rv001.Caption:=fieldbyname('s1').AsString else rv001.Caption:='0';
    if not fieldbyname('s2').IsNull then rv002.Caption:=fieldbyname('s2').asstring else rv002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr=''G''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s1').isnull then chk001.Caption:=fieldbyname('s1').AsString else chk001.Caption:='0';
    if not fieldbyname('s2').IsNull then chk002.Caption:=fieldbyname('s2').asstring else chk002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s1').isnull then stt1.Caption:=fieldbyname('s1').AsString else stt1.Caption:='0';
    if not fieldbyname('s2').IsNull then stt2.Caption:=fieldbyname('s2').asstring else stt2.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and ((con=''O'') or (con=''N''))';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s2').IsNull then sc001.Caption:=fieldbyname('s2').asstring else sc001.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and con=''O''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s2').IsNull then c001.Caption:=fieldbyname('s2').asstring else c001.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and con=''N''';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asstring:=query1.fieldbyname('jhrs1').value;
    open;
    if not fieldbyname('s2').IsNull then c002.Caption:=fieldbyname('s2').asstring else c002.Caption:='0';
  end;

  //chk001.Caption:='0';
  //chk002.Caption:='0';
end;

procedure Tfrmordersummary.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  i1,i2,i3:integer;
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct dcdate) as s3 from tbl_tmp_ordsummary where tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if dx001.Caption='DC ' then begin
      if not fieldbyname('s3').isnull then dcd001.Caption:='# of DC date = '+fieldbyname('s3').asstring else dcd001.Caption:='# of DC date = 0';
    end else begin
      if dx002.Caption='Del ' then begin
        if not fieldbyname('s3').isnull then dcd001.Caption:='# of SO Del date = '+fieldbyname('s3').asstring else dcd001.Caption:='# of SO Del date = 0';
      end else begin
        if not fieldbyname('s3').isnull then dcd001.Caption:='# of SO Season = '+fieldbyname('s3').asstring else dcd001.Caption:='# of SO Season = 0';
      end;
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2,count(distinct acol) as s3 from tbl_tmp_ordsummary where onr=''O'' and tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      x002.Caption:=fieldbyname('s1').asstring;
      x07.Caption:=fieldbyname('s1').AsString;
    end else begin
      x002.Caption:='0';
      x07.Caption:='0';
    end;
    if not fieldbyname('s2').isnull then begin
      x003.Caption:=fieldbyname('s2').asstring;
      x09.Caption:=fieldbyname('s2').asstring;
    end else begin
      x003.Caption:='0';
      x09.Caption:='0';
    end;
    if ((jcpo='PJ') or (jcpo='C1')) then x004.Caption:='0'
    else begin
      if not fieldbyname('s3').isnull then x004.Caption:=fieldbyname('s3').asstring else x004.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2,count(distinct acol) as s3 from tbl_tmp_ordsummary where onr=''N'' and tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      x005.Caption:=fieldbyname('s1').asstring;
      x08.Caption:=fieldbyname('s1').asstring;
    end else begin
      x005.Caption:='0';
      x08.Caption:='0';
    end;
    if not fieldbyname('s2').isnull then begin
      x006.Caption:=fieldbyname('s2').asstring;
      x10.Caption:=fieldbyname('s2').asstring;
    end else begin
      x006.Caption:='0';
      x10.Caption:='0';
    end;
    if ((jcpo='PJ') or (jcpo='C1')) then x007.Caption:='0'
    else begin
      if not fieldbyname('s3').isnull then x007.Caption:=fieldbyname('s3').asstring else x007.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2,count(distinct acol) as s3 from tbl_tmp_ordsummary where onr=''R'' and tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      ra04.Caption:=fieldbyname('s1').asstring;
      ra06.Caption:=fieldbyname('s1').asstring;
    end else begin
      ra04.Caption:='0';
      ra06.Caption:='0';
    end;
    if not fieldbyname('s2').isnull then begin
      ra05.Caption:=fieldbyname('s2').asstring;
      ra07.Caption:=fieldbyname('s2').asstring;
    end else begin
      ra05.Caption:='0';
      ra07.Caption:='0';
    end;
    if ((jcpo='PJ') or (jcpo='C1')) then ra08.Caption:='0'
    else begin
      if not fieldbyname('s3').isnull then ra08.Caption:=fieldbyname('s3').asstring else ra08.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2,count(distinct acol) as s3 from tbl_tmp_ordsummary where onr=''P'' and tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      rpt006.Caption:=fieldbyname('s1').asstring;
      rpt004.Caption:=fieldbyname('s1').asstring;
    end else begin
      rpt006.Caption:='0';
      rpt004.Caption:='0';
    end;
    if not fieldbyname('s2').isnull then begin
      rpt007.Caption:=fieldbyname('s2').asstring;
      rpt005.Caption:=fieldbyname('s2').asstring;
    end else begin
      rpt007.Caption:='0';
      rpt005.Caption:='0';
    end;
    if ((jcpo='PJ') or (jcpo='C1')) then rpt008.Caption:='0'
    else begin
      if not fieldbyname('s3').isnull then rpt008.Caption:=fieldbyname('s3').asstring else rpt008.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2,count(distinct acol) as s3 from tbl_tmp_ordsummary where onr=''Q'' and tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      rnc006.Caption:=fieldbyname('s1').asstring;
      rnc004.Caption:=fieldbyname('s1').asstring;
    end else begin
      rnc006.Caption:='0';
      rnc004.Caption:='0';
    end;
    if not fieldbyname('s2').isnull then begin
      rnc007.Caption:=fieldbyname('s2').asstring;
      rnc005.Caption:=fieldbyname('s2').asstring;
    end else begin
      rnc007.Caption:='0';
      rnc005.Caption:='0';
    end;
    if ((jcpo='PJ') or (jcpo='C1')) then rnc008.Caption:='0'
    else begin
      if not fieldbyname('s3').isnull then rnc008.Caption:=fieldbyname('s3').asstring else rnc008.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2,count(distinct acol) as s3 from tbl_tmp_ordsummary where onr=''T'' and tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      rvs006.Caption:=fieldbyname('s1').asstring;
      rvs004.Caption:=fieldbyname('s1').asstring;
    end else begin
      rvs006.Caption:='0';
      rvs004.Caption:='0';
    end;
    if not fieldbyname('s2').isnull then begin
      rvs007.Caption:=fieldbyname('s2').asstring;
      rvs005.Caption:=fieldbyname('s2').asstring;
    end else begin
      rvs007.Caption:='0';
      rvs005.Caption:='0';
    end;
    if ((jcpo='PJ') or (jcpo='C1')) then rvs008.Caption:='0'
    else begin
      if not fieldbyname('s3').isnull then rvs008.Caption:=fieldbyname('s3').asstring else rvs008.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2,count(distinct acol) as s3 from tbl_tmp_ordsummary where onr=''G'' and tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      ck006.Caption:=fieldbyname('s1').asstring;
      ck004.Caption:=fieldbyname('s1').asstring;
    end else begin
      ck006.Caption:='0';
      ck004.Caption:='0';
    end;
    if not fieldbyname('s2').isnull then begin
      ck007.Caption:=fieldbyname('s2').asstring;
      ck005.Caption:=fieldbyname('s2').asstring;
    end else begin
      ck007.Caption:='0';
      ck005.Caption:='0';
    end;
    if ((jcpo='PJ') or (jcpo='C1')) then ck008.Caption:='0'
    else begin
      if not fieldbyname('s3').isnull then ck008.Caption:=fieldbyname('s3').asstring else ck008.Caption:='0';
    end;
  end;
  ttl001.Caption:=inttostr(strtoint(x07.Caption)+strtoint(x08.Caption)+strtoint(ra04.Caption)+strtoint(ck004.Caption)+strtoint(rpt004.Caption)+strtoint(rnc004.Caption)+strtoint(rvs004.Caption));
  ttl002.Caption:=ttl001.Caption;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct acol) as s3 from tbl_tmp_ordsummary where tm=:x1 and ((con=''O'') or (con=''N''))';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s3').isnull then begin
      x008.Caption:=fieldbyname('s3').asstring;
      x009.Caption:=fieldbyname('s3').asstring;
    end else begin
      x008.Caption:='0';
      x009.Caption:='0';
    end;
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct acol) as s3 from tbl_tmp_ordsummary where tm=:x1 and con=''O''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s3').isnull then c03.Caption:=fieldbyname('s3').asstring else c03.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct acol) as s3 from tbl_tmp_ordsummary where tm=:x1 and con=''N''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s3').isnull then c04.Caption:=fieldbyname('s3').asstring else c04.Caption:='0';
  end;
  x010.Caption:=formatfloat('#0.00%',strtoint(x003.Caption)*100.0/ppdbcalc9.Value);
  x011.Caption:=formatfloat('#0.00%',strtoint(x006.Caption)*100.0/ppdbcalc9.Value);
  ra09.Caption:=formatfloat('#0.00%',strtoint(ra07.Caption)*100.0/ppdbcalc9.Value);
  rpt009.Caption:=formatfloat('#0.00%',strtoint(rpt007.Caption)*100.0/ppdbcalc9.Value);
  rnc009.Caption:=formatfloat('#0.00%',strtoint(rnc007.Caption)*100.0/ppdbcalc9.Value);
  rvs009.Caption:=formatfloat('#0.00%',strtoint(rvs007.Caption)*100.0/ppdbcalc9.Value);
  ck009.Caption:=formatfloat('#0.00%',strtoint(ck007.Caption)*100.0/ppdbcalc9.Value);
  i1:=0;i2:=0;
  f01.Caption:='';f02.Caption:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct fc,sum(scqty) as s1 from tbl_tmp_ordsummary where tm=:x1 group by fc';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('fc').value='F' then begin
        i2:=fieldbyname('s1').value;
        f02.Caption:='Fashion: '+fieldbyname('s1').asstring;
      end else if fieldbyname('fc').value='C' then begin
        i1:=fieldbyname('s1').value;
        f01.Caption:='Core: '+fieldbyname('s1').asstring;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  if f01.Caption>'' then
  f01.Caption:=f01.Caption+' ('+formatfloat('0.00%',i1*100.0/(i1+i2))+')';
  if f02.Caption>'' then
  f02.Caption:=f02.Caption+' ('+formatfloat('0.00%',i2*100.0/(i1+i2))+')';
  i1:=0;i2:=0;i3:=0;
  b01.Caption:='';b02.Caption:='';b03.Caption:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct bku,sum(scqty) as s1 from tbl_tmp_ordsummary where tm=:x1 group by bku';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('bku').value='B' then begin
        i1:=fieldbyname('s1').value;
        b01.Caption:='B: '+fieldbyname('s1').asstring;
      end else if fieldbyname('bku').value='K' then begin
        i2:=fieldbyname('s1').value;
        b02.Caption:='K: '+fieldbyname('s1').asstring;
      end else if fieldbyname('bku').value='U' then begin
        i3:=fieldbyname('s1').value;
        b03.Caption:='U: '+fieldbyname('s1').asstring;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  if b01.Caption>'' then
  b01.Caption:=b01.Caption+' ('+formatfloat('0.00%',i1*100.0/(i1+i2+i3))+')';
  if b02.Caption>'' then
  b02.Caption:=b02.Caption+' ('+formatfloat('0.00%',i2*100.0/(i1+i2+i3))+')';
  if b03.Caption>'' then
  b03.Caption:=b03.Caption+' ('+formatfloat('0.00%',i3*100.0/(i1+i2+i3))+')';

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct jhrs2) as s1 from tbl_tmp_ordsummary where tm=:x1 and f_right(rtrim(jhrs2),1)<>'')''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then new001.Caption:='(New  '+fieldbyname('s1').asstring+')'
    else new001.Caption:='(New  0)';
  end;
//
end;

procedure Tfrmordersummary.ComboBox2Change(Sender: TObject);
begin
  if (combobox2.text='SARA') or (combobox2.text='HBIU') then begin
    combobox1.items.clear;
    if combobox3.text='ALL' then begin
      combobox1.Items.add('81');
      combobox1.Items.add('82');
      combobox1.Items.add('83');
      combobox1.Items.add('84');
      combobox1.Items.add('91');
      combobox1.Items.add('92');
      combobox1.Items.add('93');
      combobox1.Items.add('94');
      combobox1.Items.add('01');
      combobox1.Items.add('02');
      combobox1.Items.add('03');
      combobox1.Items.add('04');
      combobox1.Items.add('11');
      combobox1.Items.add('12');
      combobox1.Items.add('13');
      combobox1.Items.add('14');
      combobox1.Items.add('21');
      combobox1.Items.add('22');
      combobox1.Items.add('23');
      combobox1.Items.add('24');
      combobox1.Items.add('31');
      combobox1.Items.add('32');
      combobox1.Items.add('33');
      combobox1.Items.add('34');
      combobox1.Items.add('41');
      combobox1.Items.add('42');
      combobox1.Items.add('43');
      combobox1.Items.add('44');
    end else begin
      combobox1.Items.add('8a');
      combobox1.Items.add('8b');
      combobox1.Items.add('8c');
      combobox1.Items.add('8d');
      combobox1.Items.add('8e');
      combobox1.Items.add('8f');
      combobox1.Items.add('8g');
      combobox1.Items.add('8h');
      combobox1.Items.add('8i');
      combobox1.Items.add('8j');
      combobox1.Items.add('8k');
      combobox1.Items.add('8l');
      combobox1.Items.add('9a');
      combobox1.Items.add('9b');
      combobox1.Items.add('9c');
      combobox1.Items.add('9d');
      combobox1.Items.add('9e');
      combobox1.Items.add('9f');
      combobox1.Items.add('9g');
      combobox1.Items.add('9h');
      combobox1.Items.add('9i');
      combobox1.Items.add('9j');
      combobox1.Items.add('9k');
      combobox1.Items.add('9l');
      combobox1.Items.add('0a');
      combobox1.Items.add('0b');
      combobox1.Items.add('0c');
      combobox1.Items.add('0d');
      combobox1.Items.add('0e');
      combobox1.Items.add('0f');
      combobox1.Items.add('0g');
      combobox1.Items.add('0h');
      combobox1.Items.add('0i');
      combobox1.Items.add('0j');
      combobox1.Items.add('0k');
      combobox1.Items.add('0l');
      combobox1.Items.add('1a');
      combobox1.Items.add('1b');
      combobox1.Items.add('1c');
      combobox1.Items.add('1d');
      combobox1.Items.add('1e');
      combobox1.Items.add('1f');
      combobox1.Items.add('1g');
      combobox1.Items.add('1h');
      combobox1.Items.add('1i');
      combobox1.Items.add('1j');
      combobox1.Items.add('1k');
      combobox1.Items.add('1l');
      combobox1.Items.add('2a');
      combobox1.Items.add('2b');
      combobox1.Items.add('2c');
      combobox1.Items.add('2d');
      combobox1.Items.add('2e');
      combobox1.Items.add('2f');
      combobox1.Items.add('2g');
      combobox1.Items.add('2h');
      combobox1.Items.add('2i');
      combobox1.Items.add('2j');
      combobox1.Items.add('2k');
      combobox1.Items.add('2l');
      combobox1.Items.add('3a');
      combobox1.Items.add('3b');
      combobox1.Items.add('3c');
      combobox1.Items.add('3d');
      combobox1.Items.add('3e');
      combobox1.Items.add('3f');
      combobox1.Items.add('3g');
      combobox1.Items.add('3h');
      combobox1.Items.add('3i');
      combobox1.Items.add('3j');
      combobox1.Items.add('3k');
      combobox1.Items.add('3l');
      combobox1.Items.add('4a');
      combobox1.Items.add('4b');
      combobox1.Items.add('4c');
      combobox1.Items.add('4d');
      combobox1.Items.add('4e');
      combobox1.Items.add('4f');
      combobox1.Items.add('4g');
      combobox1.Items.add('4h');
      combobox1.Items.add('4i');
      combobox1.Items.add('4j');
      combobox1.Items.add('4k');
      combobox1.Items.add('4l');
    end;
  end else begin
    combobox1.items.clear;
    combobox1.Items.add('81');
    combobox1.Items.add('82');
    combobox1.Items.add('83');
    combobox1.Items.add('84');
    combobox1.Items.add('91');
    combobox1.Items.add('92');
    combobox1.Items.add('93');
    combobox1.Items.add('94');
    combobox1.Items.add('01');
    combobox1.Items.add('02');
    combobox1.Items.add('03');
    combobox1.Items.add('04');
    combobox1.Items.add('11');
    combobox1.Items.add('12');
    combobox1.Items.add('13');
    combobox1.Items.add('14');
    combobox1.Items.add('21');
    combobox1.Items.add('22');
    combobox1.Items.add('23');
    combobox1.Items.add('24');
    combobox1.Items.add('31');
    combobox1.Items.add('32');
    combobox1.Items.add('33');
    combobox1.Items.add('34');
    combobox1.Items.add('41');
    combobox1.Items.add('42');
    combobox1.Items.add('43');
    combobox1.Items.add('44');
  end;
end;

procedure Tfrmordersummary.ppGroupFooterBand3BeforePrint(Sender: TObject);
var
  i1:integer;
begin
  sd01.caption:='';sd02.caption:='';sd03.caption:='';sd04.caption:='';
  ed01.Caption:='';ed02.Caption:='';ed03.Caption:='';ed04.Caption:='';
  d1001.Caption:='';d1002.Caption:='';d1003.Caption:='';d1004.Caption:='';
  d2001.Caption:='';d2002.Caption:='';d2003.Caption:='';d2004.Caption:='';
  d3001.Caption:='';d3002.Caption:='';d3003.Caption:='';d3004.Caption:='';
  d4001.Caption:='';d4002.Caption:='';d4003.Caption:='';d4004.Caption:='';
  d5001.Caption:='';d5002.Caption:='';d5003.Caption:='';d5004.Caption:='';
  d6001.Caption:='';d6002.Caption:='';d6003.Caption:='';d6004.Caption:='';
  d7001.Caption:='';d7002.Caption:='';d7003.Caption:='';d7004.Caption:='';
  d8001.Caption:='';d8002.Caption:='';d8003.Caption:='';d8004.Caption:='';

  s001.caption:='1 / (0)';s002.caption:='2 / (0)';s003.caption:='3 / (0)';s004.caption:='4 / (0)';
  s005.caption:='5 / (0)';s006.caption:='6 / (0)';s007.caption:='7 / (0)';s008.caption:='8 / (0)';
  s009.Caption:='9 / (0)';s010.Caption:='10 / (0)';
  adc001.Caption:='';adc002.Caption:='';adc003.Caption:='';adc004.Caption:='';adc005.Caption:='';
  adc006.Caption:='';adc007.Caption:='';adc008.Caption:='';adc009.Caption:='';adc010.Caption:='';

  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct pjc1,sdt,sdt1,sdt2,sdt3,sdt4,sdt5,sdt6,sdt7,sdt8,sdt9 from tbl_tmp_ordsummary_02 where cust='''+combobox2.text+''' and season='''+combobox1.text+'''';
    open;
    first;
    while not eof do begin
      if not fieldbyname('sdt').isnull then begin
        if fieldbyname('pjc1').value='DC' then pdt001.Caption:=fieldbyname('sdt').asstring
        else if fieldbyname('pjc1').value='PJ' then ed01.Caption:=fieldbyname('sdt').asstring
        else if fieldbyname('pjc1').value='C1' then ed02.Caption:=fieldbyname('sdt').asstring
        else if fieldbyname('pjc1').value='C2' then ed03.Caption:=fieldbyname('sdt').AsString
        else if fieldbyname('pjc1').value='PO' then ed04.Caption:=fieldbyname('sdt').asstring;
      end;
      if not fieldbyname('sdt1').isnull then begin
        if fieldbyname('pjc1').value='PJ' then sd01.Caption:=fieldbyname('sdt1').asstring
        else if fieldbyname('pjc1').value='C1' then sd02.Caption:=fieldbyname('sdt1').asstring
        else if fieldbyname('pjc1').value='C2' then sd03.Caption:=fieldbyname('sdt1').AsString
        else if fieldbyname('pjc1').value='PO' then sd04.Caption:=fieldbyname('sdt1').asstring;
      end;
      if not fieldbyname('sdt2').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d1001.Caption:=fieldbyname('sdt2').asstring
        else if fieldbyname('pjc1').value='C1' then d1002.Caption:=fieldbyname('sdt2').asstring
        else if fieldbyname('pjc1').value='C2' then d1003.Caption:=fieldbyname('sdt2').AsString
        else if fieldbyname('pjc1').value='PO' then d1004.Caption:=fieldbyname('sdt2').asstring;
      end;
      if not fieldbyname('sdt3').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d2001.Caption:=fieldbyname('sdt3').asstring
        else if fieldbyname('pjc1').value='C1' then d2002.Caption:=fieldbyname('sdt3').asstring
        else if fieldbyname('pjc1').value='C2' then d2003.Caption:=fieldbyname('sdt3').AsString
        else if fieldbyname('pjc1').value='PO' then d2004.Caption:=fieldbyname('sdt3').asstring;
      end;
      if not fieldbyname('sdt4').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d3001.Caption:=fieldbyname('sdt4').asstring
        else if fieldbyname('pjc1').value='C1' then d3002.Caption:=fieldbyname('sdt4').asstring
        else if fieldbyname('pjc1').value='C2' then d3003.Caption:=fieldbyname('sdt4').AsString
        else if fieldbyname('pjc1').value='PO' then d3004.Caption:=fieldbyname('sdt4').asstring;
      end;
      if not fieldbyname('sdt5').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d4001.Caption:=fieldbyname('sdt5').asstring
        else if fieldbyname('pjc1').value='C1' then d4002.Caption:=fieldbyname('sdt5').asstring
        else if fieldbyname('pjc1').value='C2' then d4003.Caption:=fieldbyname('sdt5').AsString
        else if fieldbyname('pjc1').value='PO' then d4004.Caption:=fieldbyname('sdt5').asstring;
      end;
      if not fieldbyname('sdt6').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d5001.Caption:=fieldbyname('sdt6').asstring
        else if fieldbyname('pjc1').value='C1' then d5002.Caption:=fieldbyname('sdt6').asstring
        else if fieldbyname('pjc1').value='C2' then d5003.Caption:=fieldbyname('sdt6').AsString
        else if fieldbyname('pjc1').value='PO' then d5004.Caption:=fieldbyname('sdt6').asstring;
      end;
      if not fieldbyname('sdt7').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d6001.Caption:=fieldbyname('sdt7').asstring
        else if fieldbyname('pjc1').value='C1' then d6002.Caption:=fieldbyname('sdt7').asstring
        else if fieldbyname('pjc1').value='C2' then d6003.Caption:=fieldbyname('sdt7').AsString
        else if fieldbyname('pjc1').value='PO' then d6004.Caption:=fieldbyname('sdt7').asstring;
      end;
      if not fieldbyname('sdt8').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d7001.Caption:=fieldbyname('sdt8').asstring
        else if fieldbyname('pjc1').value='C1' then d7002.Caption:=fieldbyname('sdt8').asstring
        else if fieldbyname('pjc1').value='C2' then d7003.Caption:=fieldbyname('sdt8').AsString
        else if fieldbyname('pjc1').value='PO' then d7004.Caption:=fieldbyname('sdt8').asstring;
      end;
      if not fieldbyname('sdt9').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d8001.Caption:=fieldbyname('sdt9').asstring
        else if fieldbyname('pjc1').value='C1' then d8002.Caption:=fieldbyname('sdt9').asstring
        else if fieldbyname('pjc1').value='C2' then d8003.Caption:=fieldbyname('sdt9').AsString
        else if fieldbyname('pjc1').value='PO' then d8004.Caption:=fieldbyname('sdt9').asstring;
      end;
      application.ProcessMessages;
      next;
    end;
  end;

  i1:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select distinct dcdate1,count(distinct jhrs) as cnt from tbl_tmp_ordsummary where tm=:x1 group by dcdate1 order by dcdate1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('dcdate1').isnull then begin
        i1:=i1+1;
        if i1=1 then begin
          adc001.Caption:=fieldbyname('dcdate1').value;
          s001.caption:='1 / ('+fieldbyname('cnt').asstring+')';
          {
          if ed04.Caption>'' then begin
            sd04.Caption:=datetostr(strtodate(ed04.Caption)+7);
          end;
          if ed03.Caption>'' then begin
            sd03.Caption:=datetostr(strtodate(ed03.Caption)+7);
          end;
          if ed02.Caption>'' then begin
            sd02.Caption:=datetostr(strtodate(ed02.Caption)+7);
          end;
          if ed01.Caption>'' then begin
            sd01.Caption:=datetostr(strtodate(ed01.Caption)+7);
          end;
          }
        end else if i1=2 then begin
          adc002.Caption:=fieldbyname('dcdate1').value;
          s002.caption:='2 / ('+fieldbyname('cnt').asstring+')';
          {
          if ed04.Caption>'' then begin
            d1004.Caption:=datetostr(strtodate(ed04.Caption)+14);
          end;
          if ed03.Caption>'' then begin
            d1003.Caption:=datetostr(strtodate(ed03.Caption)+14);
          end;
          if ed02.Caption>'' then begin
            d1002.Caption:=datetostr(strtodate(ed02.Caption)+14);
          end;
          if ed01.Caption>'' then begin
            d1001.Caption:=datetostr(strtodate(ed01.Caption)+14);
          end;
          }
        end else if i1=3 then begin
          adc003.Caption:=fieldbyname('dcdate1').value;
          s003.caption:='3 / ('+fieldbyname('cnt').asstring+')';
          {
          if ed04.Caption>'' then begin
            d2004.Caption:=datetostr(strtodate(ed04.Caption)+21);
          end;
          if ed03.Caption>'' then begin
            d2003.Caption:=datetostr(strtodate(ed03.Caption)+21);
          end;
          if ed02.Caption>'' then begin
            d2002.Caption:=datetostr(strtodate(ed02.Caption)+21);
          end;
          if ed01.Caption>'' then begin
            d2001.Caption:=datetostr(strtodate(ed01.Caption)+21);
          end;
          }
        end else if i1=4 then begin
          adc004.Caption:=fieldbyname('dcdate1').value;
          s004.caption:='4 / ('+fieldbyname('cnt').asstring+')';
          {
          if ed04.Caption>'' then begin
            d3004.Caption:=datetostr(strtodate(ed04.Caption)+28);
          end;
          if ed03.Caption>'' then begin
            d3003.Caption:=datetostr(strtodate(ed03.Caption)+28);
          end;
          if ed02.Caption>'' then begin
            d3002.Caption:=datetostr(strtodate(ed02.Caption)+28);
          end;
          if ed01.Caption>'' then begin
            d3001.Caption:=datetostr(strtodate(ed01.Caption)+28);
          end;
          }
        end else if i1=5 then begin
          adc005.Caption:=fieldbyname('dcdate1').value;
          s005.caption:='5 / ('+fieldbyname('cnt').asstring+')';
          {
          if ed04.Caption>'' then begin
            d4004.Caption:=datetostr(strtodate(ed04.Caption)+35);
          end;
          if ed03.Caption>'' then begin
            d4003.Caption:=datetostr(strtodate(ed03.Caption)+35);
          end;
          if ed02.Caption>'' then begin
            d4002.Caption:=datetostr(strtodate(ed02.Caption)+35);
          end;
          if ed01.Caption>'' then begin
            d4001.Caption:=datetostr(strtodate(ed01.Caption)+35);
          end;
          }
        end else if i1=6 then begin
          adc006.Caption:=fieldbyname('dcdate1').value;
          s006.caption:='6 / ('+fieldbyname('cnt').asstring+')';
        end else if i1=7 then begin
          adc007.Caption:=fieldbyname('dcdate1').value;
          s007.caption:='7 / ('+fieldbyname('cnt').asstring+')';
        end else if i1=8 then begin
          adc008.Caption:=fieldbyname('dcdate1').value;
          s008.caption:='8 / ('+fieldbyname('cnt').asstring+')';
        end else if i1=9 then begin
          adc009.Caption:=fieldbyname('dcdate1').value;
          s009.caption:='9 / ('+fieldbyname('cnt').asstring+')';
        end else if i1=10 then begin
          adc010.Caption:=fieldbyname('dcdate1').value;
          s010.caption:='10 / ('+fieldbyname('cnt').asstring+')';
        end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmordersummary.BitBtn2Click(Sender: TObject);
begin
  if frmordersummary2=nil then frmordersummary2:=tfrmordersummary2.Create(nil);
  frmordersummary2.ComboBox3.Text:='SALL';
  frmordersummary2.ComboBox1.text:='81';
  frmordersummary2.ComboBox2.text:='94';
  frmordersummary2.Show;
end;

procedure Tfrmordersummary.FormCreate(Sender: TObject);
begin
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
          params[2].AsString:='Order Summary';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
        with dataset2 do begin
          close;
          sql.text:='insert into [Sys.Authority].dbo.sysuseinfo(menuid,userid,starttime) values(:x1,:x2,:x3)';
          parameters[0].Value:='LWPM - Order Summary';
          parameters[1].value:=frmmain.combobox1.text;
          parameters[2].Value:=now;
          execsql;
        end;
end;

procedure Tfrmordersummary.FormDestroy(Sender: TObject);
begin
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
end;

procedure Tfrmordersummary.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmordersummary.ppDetailBand3BeforePrint(Sender: TObject);
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select qty1,qty2,tqty from tbl_tmp_ordsummary_ttl_base where cust=:x1 and season='''+combobox1.text+''' and tout=1';
    params[0].asstring:=query1.fieldbyname('cust').value;
    open;
    if not fieldbyname('qty1').isnull then begin
      out001.Caption:=fieldbyname('qty1').asstring;
      out002.Caption:=fieldbyname('qty2').asstring;
      out003.Caption:=fieldbyname('tqty').AsString;
    end else begin
      out001.Caption:='0';
      out002.Caption:='0';
      out003.Caption:='0';
    end;
  end;
end;

end.
