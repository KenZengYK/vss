unit ordersummary_02formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppReport, ppSubRpt, ppBands, ppClass, ppMemo, ppStrtch,
  ppRegion, ppVar, ppPrnabl, ppCache, ppProd, ADODB, ppDB, ppComm,
  ppRelatv, ppDBPipe, DB, DBClient, StdCtrls, ExtCtrls, Buttons, ppViewr,
  ppParameter;

type
  Tfrmordersummary_02 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    rg01: TRadioGroup;
    ComboBox3: TComboBox;
    BitBtn3: TBitBtn;
    xh1: TRadioGroup;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    ppDBPipeline1ppField3: TppField;
    ppDBPipeline1ppField4: TppField;
    ppDBPipeline2: TppDBPipeline;
    ClientDataSet2: TClientDataSet;
    DataSet2: TADOQuery;
    ppReport1: TppReport;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand1: TppHeaderBand;
    title001: TppLabel;
    ppLabel21: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel22: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    subtitle001: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText9: TppDBText;
    ppRegion1: TppRegion;
    ck003: TppMemo;
    x06: TppMemo;
    ppDBText5: TppDBText;
    x0001: TppLabel;
    x01: TppLabel;
    ra01: TppLabel;
    x02: TppLabel;
    ppDBText6: TppDBText;
    x03: TppLabel;
    ra02: TppLabel;
    x04: TppLabel;
    ppDBText7: TppDBText;
    c01: TppLabel;
    c02: TppLabel;
    x05: TppMemo;
    ppLine34: TppLine;
    ra03: TppMemo;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
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
    ppLine14: TppLine;
    ppDBText10: TppDBText;
    ppLine17: TppLine;
    ppDBText11: TppDBText;
    ppLine109: TppLine;
    ppLine114: TppLine;
    ck001: TppLabel;
    ck002: TppLabel;
    sc002: TppLabel;
    rpt003: TppMemo;
    ppLine150: TppLine;
    rpt001: TppLabel;
    rpt002: TppLabel;
    rnc003: TppMemo;
    rvs003: TppMemo;
    rnc002: TppLabel;
    rvs002: TppLabel;
    ppLine187: TppLine;
    rnc001: TppLabel;
    rvs001: TppLabel;
    ppLine194: TppLine;
    ppLine190: TppLine;
    ppLine185: TppLine;
    ppLine153: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppMemo1: TppMemo;
    ppLabel54: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ox01: TppLabel;
    ox02: TppLabel;
    ox03: TppLabel;
    ppLabel105: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppRegion2: TppRegion;
    ppShape10: TppShape;
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
    ppLine138: TppLine;
    ppLine139: TppLine;
    s009: TppLabel;
    adc009: TppLabel;
    s010: TppLabel;
    adc010: TppLabel;
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
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
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
    ppLine41: TppLine;
    ppLabel4: TppLabel;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLabel47: TppLabel;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLine37: TppLine;
    ppLabel30: TppLabel;
    ppLabel52: TppLabel;
    ppLine47: TppLine;
    ppLine50: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLine51: TppLine;
    ppLabel77: TppLabel;
    ppLine117: TppLine;
    ppLabel78: TppLabel;
    ppLine118: TppLine;
    ppLine141: TppLine;
    ppLabel6: TppLabel;
    ppLine144: TppLine;
    ppLabel19: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppLine166: TppLine;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLine171: TppLine;
    ppLine172: TppLine;
    ppLine173: TppLine;
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
    r001: TppLabel;
    r002: TppLabel;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    c001: TppLabel;
    c002: TppLabel;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine45: TppLine;
    ppLine52: TppLine;
    chk001: TppLabel;
    chk002: TppLabel;
    sc001: TppLabel;
    ppLine142: TppLine;
    ppLine145: TppLine;
    rp001: TppLabel;
    rp002: TppLabel;
    ppLine167: TppLine;
    ppLine168: TppLine;
    rn001: TppLabel;
    rv001: TppLabel;
    ppLine174: TppLine;
    ppLine175: TppLine;
    rn002: TppLabel;
    rv002: TppLabel;
    stt1: TppLabel;
    stt2: TppLabel;
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
    r003: TppLabel;
    r004: TppLabel;
    c003: TppLabel;
    c004: TppLabel;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLine46: TppLine;
    ppLine67: TppLine;
    chk003: TppLabel;
    chk004: TppLabel;
    ppLine143: TppLine;
    ppLine146: TppLine;
    rp003: TppLabel;
    rp004: TppLabel;
    ppLine169: TppLine;
    ppLine170: TppLine;
    ppLine176: TppLine;
    ppLine177: TppLine;
    rn003: TppLabel;
    rv003: TppLabel;
    rn004: TppLabel;
    rv004: TppLabel;
    stt3: TppLabel;
    stt4: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape12: TppShape;
    ppShape7: TppShape;
    ppShape13: TppShape;
    ppShape8: TppShape;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel12: TppLabel;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel15: TppLabel;
    ppLabel18: TppLabel;
    x002: TppLabel;
    x003: TppLabel;
    x004: TppLabel;
    x005: TppLabel;
    x006: TppLabel;
    x007: TppLabel;
    ppLabel20: TppLabel;
    ppDBCalc9: TppDBCalc;
    x009: TppLabel;
    ppLine35: TppLine;
    ppLabel42: TppLabel;
    ppLine36: TppLine;
    ra06: TppLabel;
    ra07: TppLabel;
    ra08: TppLabel;
    ppLine69: TppLine;
    ppLine105: TppLine;
    ppLabel66: TppLabel;
    ck006: TppLabel;
    ck007: TppLabel;
    ck008: TppLabel;
    ppShape9: TppShape;
    ppMemo2: TppMemo;
    ppLine155: TppLine;
    ppLine156: TppLine;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    rpt006: TppLabel;
    rpt007: TppLabel;
    rpt008: TppLabel;
    ppLine178: TppLine;
    ppLine179: TppLine;
    ppLine180: TppLine;
    ppLine181: TppLine;
    ppLabel122: TppLabel;
    rnc006: TppLabel;
    rnc007: TppLabel;
    rnc008: TppLabel;
    ppLabel128: TppLabel;
    rvs006: TppLabel;
    rvs007: TppLabel;
    rvs008: TppLabel;
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
    ttl002: TppLabel;
    ppLine116: TppLine;
    ppLine148: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLine196: TppLine;
    ppLine197: TppLine;
    ppLine198: TppLine;
    ppLine199: TppLine;
    ppLine200: TppLine;
    ppLine201: TppLine;
    ppLine202: TppLine;
    ppLine203: TppLine;
    ppLine204: TppLine;
    xt01: TppLabel;
    xt001: TppLabel;
    xt02: TppLabel;
    xt002: TppLabel;
    xt03: TppLabel;
    xt003: TppLabel;
    ppLine205: TppLine;
    ppImage1: TppImage;
    ppImage2: TppImage;
    ppImage3: TppImage;
    ppLine206: TppLine;
    ppLine207: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape4: TppShape;
    ppLine42: TppLine;
    rx001: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine16: TppLine;
    ppLabel10: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel25: TppLabel;
    ppLabel34: TppLabel;
    ppLine33: TppLine;
    ppLabel41: TppLabel;
    ppLabel63: TppLabel;
    ppLabel65: TppLabel;
    ppLine32: TppLine;
    ppLabel9: TppLabel;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine53: TppLine;
    ppLine66: TppLine;
    ppLine68: TppLine;
    ppLabel45: TppLabel;
    ppLabel33: TppLabel;
    ppLabel46: TppLabel;
    ppLine90: TppLine;
    ppLabel48: TppLabel;
    ppLine13: TppLine;
    dx001: TppLabel;
    dx002: TppLabel;
    ppLine15: TppLine;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine28: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLine108: TppLine;
    ppLine111: TppLine;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLine119: TppLine;
    ppLine120: TppLine;
    dx003: TppLabel;
    ppLine147: TppLine;
    ppLabel55: TppLabel;
    ppLine149: TppLine;
    ppLine152: TppLine;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLine159: TppLine;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel111: TppLabel;
    ppLabel107: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLine182: TppLine;
    ppLine183: TppLine;
    ppLine184: TppLine;
    ppLabel132: TppLabel;
    ppLabel134: TppLabel;
    ppLabel133: TppLabel;
    ppLabel135: TppLabel;
    ppLine189: TppLine;
    ppLine192: TppLine;
    ppLine193: TppLine;
    ppLabel51: TppLabel;
    ppLine94: TppLine;
    z001: TppLabel;
    z002: TppLabel;
    z003: TppLabel;
    z004: TppLabel;
    z005: TppLabel;
    z006: TppLabel;
    z007: TppLabel;
    ppLabel104: TppLabel;
    ppLabel108: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel11: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    rx002: TppLabel;
    x008: TppLabel;
    x07: TppLabel;
    x08: TppLabel;
    x09: TppLabel;
    x10: TppLabel;
    ra04: TppLabel;
    ra05: TppLabel;
    c03: TppLabel;
    c04: TppLabel;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    new001: TppLabel;
    dcd001: TppLabel;
    ppLine110: TppLine;
    ppLine115: TppLine;
    ck004: TppLabel;
    ck005: TppLabel;
    ppLine121: TppLine;
    ttl001: TppLabel;
    ppLine151: TppLine;
    ppLine154: TppLine;
    rpt004: TppLabel;
    rpt005: TppLabel;
    rnc005: TppLabel;
    rvs005: TppLabel;
    ppLine186: TppLine;
    ppLine188: TppLine;
    ppLine191: TppLine;
    ppLine195: TppLine;
    rnc004: TppLabel;
    rvs004: TppLabel;
    ppLabel106: TppLabel;
    ppLine208: TppLine;
    ppLine209: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppDBText2: TppDBText;
    ppLine210: TppLine;
    tover001: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmordersummary_02: Tfrmordersummary_02;

implementation

uses mainformu, ordersummaryformu, ordersummary_01formu;

{$R *.dfm}

procedure Tfrmordersummary_02.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmordersummary_02:=nil;
end;

procedure Tfrmordersummary_02.BitBtn1Click(Sender: TObject);
var
  tm,tm1:tdatetime;
  s1,s2,s3,s4,s5:string;
  str1:string;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
   if xh1.ItemIndex=0 then begin
    if combobox2.text='SARA' then begin
      if combobox3.Text<>'ALL' then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          commandtext:='execute procedure sp_gen_tmpordsummary_fty(:x1,:x2,:x3,:x4,:x5)';
          params[0].asdatetime:=tm;
          params[1].asstring:=combobox2.text;
          params[2].asstring:=combobox1.text;
          params[3].asstring:=combobox3.text;
          params[4].asstring:=rg01.Items[rg01.itemindex];
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          commandtext:='execute procedure sp_gen_tmpordsummary_all(:x1,:x2,:x3,:x4)';
          params[0].asdatetime:=tm;
          params[1].asstring:=combobox2.text;
          params[2].asstring:=combobox1.text;
          params[3].asstring:=rg01.Items[rg01.itemindex];
          execute;
        end;
      end;
    end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='execute procedure sp_gen_tmpordsummary(:x1,:x2,:x3)';
        params[0].asdatetime:=tm;
        params[1].asstring:=combobox2.text;
        params[2].asstring:=combobox1.text;
        execute;
      end;
    end;

    with query3 do begin
      close;
      params.clear;
      commandtext:='select min(season) as s4,min(seq) as s5 from tbl_tmp_ordsummary_01 where jcpo=''PJ''';
      open;
      if not fieldbyname('s4').isnull then s4:=fieldbyname('s4').value else s4:='';
      if not fieldbyname('s5').isnull then s5:=fieldbyname('s5').value else s5:='99';
    end;

    if (((combobox1.Text<s5) and (combobox1.text<>s4) and ((combobox2.text='SALL') or (combobox2.text='AFGH'))) or (combobox2.text<>'SALL')) then begin
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct cstyle,flag6,fmarks1 from tbl_tmp_ordsummary where tm=:x1';
      params[0].asdatetime:=tm;
      open;
      first;
      while not eof do begin
        s1:=trim(copy(fieldbyname('fmarks1').value,1,pos(':',fieldbyname('fmarks1').value)-1));
        s2:=trim(copy(fieldbyname('fmarks1').value,pos(':',fieldbyname('fmarks1').value)+1,pos('-',fieldbyname('fmarks1').value)-1-pos(':',fieldbyname('fmarks1').value)));
        if copy(fieldbyname('flag6').value,1,1)='B' then s3:=s1+' Bra'
        else if copy(fieldbyname('flag6').value,1,1)='K' then s3:=s1+' Knicker'
        else if copy(fieldbyname('flag6').value,1,1)='U' then s3:=s1+' Undies(Cami)';
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftdatetime,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          commandtext:='update tbl_tmp_ordsummary set jhrs1=:x1,jhrs2=:x2 where tm=:x3 and cstyle=:x4 and flag6=:x5';
          params[0].asstring:=s3;
          params[1].asstring:=s2;
          params[2].asdatetime:=tm;
          params[3].asstring:=query4.fieldbyname('cstyle').value;
          params[4].asstring:=query4.fieldbyname('flag6').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    end;

    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='execute procedure sp_gen_tmpordsummary_01(:x1,:x2,:x3)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox2.text;
      params[2].asstring:=combobox1.text;
      execute;
    end;

    //update tbl_tmp_ordsummary_ttl_base
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure SP_UPD_ORDSUMMARY_TTL_BASE(:x1,:x2,:x3,:x4)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox3.text;
      params[2].asstring:=combobox2.text;
      params[3].asstring:=combobox1.text;
      execute;
    end;
    //
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftdatetime,'x2',ptinput);
      commandtext:='select distinct tm,jhrs1 from tbl_tmp_ordsummary where tm=:x1 '
                  +'union select tm,jhrs1 from tbl_tmp_ordsummary_05 where tm=:x2';
      params[0].asdatetime:=tm;
      params[1].asdatetime:=tm;
      open;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct tm,xh,jhrs2 as jhrs1,fc,dcdate,duedt,shpm,count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 group by tm,xh,jhrs2,fc,dcdate,duedt,shpm order by tm,xh';
      params[0].asdatetime:=tm;
      open;
    end;
    str1:='';
    with query3 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_tmp_ordsummary_03 where cust='''+combobox2.text+''' and season='''+combobox1.text+'''';
      open;
      if not fieldbyname('dsc').isnull then str1:=fieldbyname('dsc').value;
    end;
    if (combobox2.text='SALL') or (combobox2.text='AFGH') then begin
      title001.Caption:=str1+' Order Summary (Quantity) - '+combobox2.text;
      dx001.Caption:='DC ';
      dx002.Caption:='date ';
      dx003.Caption:=' ';
      ppGroupFooterBand3.Visible:=true;
    end else begin
     if combobox2.text='SARA' then begin
      if combobox3.text>'' then
      title001.Caption:=str1+' Order Summary (Quantity) - HBI - ('+combobox3.text+')'
      else title001.Caption:=str1+' Order Summary (Quantity) - HBI';
      dx001.Caption:='SO ';
      if combobox3.text<>'ALL' then begin
        dx002.Caption:='Del ';
        dx003.Caption:='date ';
      end else begin
        dx002.Caption:='Season ';
        dx003.Caption:=' ';
      end;
      ppGroupFooterBand3.Visible:=false;
     end else begin
      title001.Caption:=str1+' Order Summary (Quantity) - '+combobox2.text;
      dx001.Caption:='SO ';
      dx002.Caption:='Del ';
      dx003.Caption:='date ';
      ppGroupFooterBand3.Visible:=true;
     end;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select pjc1,jcpo from tbl_tmp_ordsummary_01 where cust=:x1 and season=:x2';
      params[0].asstring:=combobox2.text;
      params[1].asstring:=combobox1.text;
      open;
      if not fieldbyname('pjc1').isnull then subtitle001.Caption:='('+fieldbyname('pjc1').value+')'
      else subtitle001.Caption:='('+rg01.Items[rg01.ItemIndex]+')';
      if not fieldbyname('jcpo').isnull then jcpo:=fieldbyname('jcpo').value else jcpo:='PO';
    end;

    if combobox2.text='SARA' then begin
      rx001.Caption:='Brand Name';
      rx002.Caption:='brand';
    end else begin
      rx001.Caption:='Range(Collection)';
      rx002.Caption:='range';
    end;
    ppReport1.Print;
   end else if xh1.ItemIndex=1 then begin
    tm1:=now;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='execute procedure sp_gen_tmpordsummary_out(:x1,:x2,:x3)';
      params[0].asdatetime:=tm1;
      params[1].asstring:=combobox2.text;
      params[2].asstring:=combobox1.text;
      execute;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='execute procedure sp_gen_tmpordsummary_01(:x1,:x2,:x3)';
      params[0].asdatetime:=tm1;
      params[1].asstring:=combobox2.text;
      params[2].asstring:=combobox1.text;
      execute;
    end;
    if frmordersummary_01=nil then frmordersummary_01:=tfrmordersummary_01.create(nil);
    with frmordersummary_01.query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct tm,jhrs1,count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 group by tm,jhrs1';
      params[0].asdatetime:=tm1;
      open;
    end;
    with frmordersummary_01.query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct tm,xh,jhrs2 as jhrs1,fc,dcdate,duedt,shpm,count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 group by tm,xh,jhrs2,fc,dcdate,duedt,shpm order by tm,xh';
      params[0].asdatetime:=tm1;
      open;
    end;
    str1:='';
    with query3 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_tmp_ordsummary_03 where cust='''+combobox2.text+''' and season='''+combobox1.text+'''';
      open;
      if not fieldbyname('dsc').isnull then str1:=fieldbyname('dsc').value;
    end;
    if not frmordersummary_01.Query1.fieldbyname('tm').isnull then begin
      if combobox2.text<>'SARA' then begin
        frmordersummary_01.title001.Caption:=str1+' Order Summary - '+combobox2.text;
        frmordersummary_01.dx001.Caption:='DC ';
        frmordersummary_01.dx002.Caption:='date ';
        frmordersummary_01.dx003.Caption:=' ';
      end else begin
        frmordersummary_01.title001.Caption:=str1+' Order Summary - HBI';
        frmordersummary_01.dx001.Caption:='SO ';
        frmordersummary_01.dx002.Caption:='Del ';
        frmordersummary_01.dx003.Caption:='date ';
      end;
      frmordersummary_01.subtitle001.Caption:='(ORDER OUT)';
      if combobox2.text='SARA' then begin
        frmordersummary_01.rx001.Caption:='Brand Name';
        frmordersummary_01.rx002.Caption:='brand';
      end else begin
        frmordersummary_01.rx001.Caption:='Range(Collection)';
        frmordersummary_01.rx002.Caption:='range';
      end;
      frmordersummary_01.ppReport1.Print;
    end;
   end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmordersummary_02.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmordersummary_02.ppDetailBand1BeforePrint(Sender: TObject);
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
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select distinct bku,cstyle,pjc1 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''O'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')^'//s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')^';//s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //x05.Lines.add(s1);
  //s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select distinct bku,cstyle,pjc1 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''R'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')*'//s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')*';//s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //ra03.Lines.Add(s1);
  //s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select distinct bku,cstyle,pjc1 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''P'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')!'//s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')!';//s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //rpt003.Lines.Add(s1);
  //s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select distinct bku,cstyle,pjc1 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''Q'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')^'//s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')^';//s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //rnc003.Lines.Add(s1);
  //s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select distinct bku,cstyle,pjc1 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''T'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')*'//s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')*';//s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //rvs003.Lines.Add(s1);
  //s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select distinct bku,cstyle,pjc1 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''G'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
    open;
    first;
    while not eof do begin
      if not fieldbyname('cstyle').isnull then begin
        if s1>'' then s1:=s1+' / '+fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')!'//s2
        else s1:=fieldbyname('bku').value+'-'+fieldbyname('cstyle').value+'('+fieldbyname('pjc1').value+')!';//s2;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //ck003.Lines.Add(s1);
  rpt003.Lines.Add(s1);
  s1:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select distinct bku,cstyle,pjc1 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''N'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
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
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''O'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
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
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''N'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
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
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''R'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
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
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''P'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
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
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''Q'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
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
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''T'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
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
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and onr=''G'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
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
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and con=''O'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
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
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and ((con=''O'') or (con=''N'')) and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
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
    params.createparam(ftstring,'x5',ptinput);
    commandtext:='select count(distinct acol) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs2=:x2 and con=''N'' and fc=:x3 and dcdate=:x4 and duedt=:x5';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    params[1].asstring:=query2.fieldbyname('jhrs1').value;
    params[2].asstring:=query2.fieldbyname('fc').value;
    params[3].asstring:=query2.fieldbyname('dcdate').value;
    params[4].asstring:=query2.fieldbyname('duedt').value;
    open;
    if not fieldbyname('s2').IsNull then c02.Caption:=fieldbyname('s2').asstring else c02.Caption:='0';
  end;
  x0001.Caption:=query2.fieldbyname('fc').value;
end;

procedure Tfrmordersummary_02.ppDetailBand2BeforePrint(Sender: TObject);
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr in (''O'',''Q'')';     //Q
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
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr in (''R'')'; //T
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
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2 and onr in (''G'',''P'')'; //P
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
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and jhrs1=:x2'; //P
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

procedure Tfrmordersummary_02.ppSummaryBand1BeforePrint(Sender: TObject);
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
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr in (''O'',''Q'')';  //Q
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
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr in (''R'')';  //T
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
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2 from tbl_tmp_ordsummary where tm=:x1 and onr in (''G'',''P'')'; //P
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then chk003.Caption:=fieldbyname('s1').AsString else chk003.Caption:='0';
    if not fieldbyname('s2').IsNull then chk004.Caption:=fieldbyname('s2').asstring else chk004.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,sum(scqty) as s2,sum(tprc) as s3 from tbl_tmp_ordsummary where tm=:x1'; //P
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then stt3.Caption:=fieldbyname('s1').AsString else stt3.Caption:='0';
    if not fieldbyname('s2').IsNull then stt4.Caption:=fieldbyname('s2').asstring else stt4.Caption:='0';
    if not fieldbyname('s3').isnull then tover001.Caption:='Turnover(HKD): '+formatfloat('0.00',fieldbyname('s3').value)
    else tover001.Caption:='Turnover(HKD): 0.00';
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

procedure Tfrmordersummary_02.ppSummaryBand2BeforePrint(Sender: TObject);
var
  s1:string;
  s0,s00:integer;
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

  with query3 do begin
    close;
    params.clear;
    commandtext:='select count(distinct jhrs1) as x1,count(distinct cstyle) as x2 from tbl_ord_prj where jhrs='''+combobox1.text+''' and tout=1';
    open;
    if not fieldbyname('x1').isnull then s0:=fieldbyname('x1').value else s0:=0;
    if not fieldbyname('x2').isnull then s00:=fieldbyname('x2').value else s00:=0;
  end;
  // Ranges - Out
  //if s0>0 then
  ppLabel94.Caption:='Range(s) - Out : '+inttostr(s0);
  //else ppLabel94.Caption:='Range(s) - Out :  N/A ';
  // Style - Out
  //if s00>0 then
  ppLabel95.Caption:='Style(s) - Out : '+inttostr(s00);
  //else ppLabel95.Caption:='Style(s) - Out :  N/A ';
  // Color - Out
  ppLabel96.Caption:='Color(s) - Out :  N/A ';
end;

procedure Tfrmordersummary_02.ppGroupFooterBand1BeforePrint(
  Sender: TObject);
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
  if ppdbcalc9.Value>0 then begin
    x010.Caption:=formatfloat('#0.00%',strtoint(x003.Caption)*100.0/ppdbcalc9.Value);
    x011.Caption:=formatfloat('#0.00%',strtoint(x006.Caption)*100.0/ppdbcalc9.Value);
    ra09.Caption:=formatfloat('#0.00%',strtoint(ra07.Caption)*100.0/ppdbcalc9.Value);
    rpt009.Caption:=formatfloat('#0.00%',strtoint(rpt007.Caption)*100.0/ppdbcalc9.Value);
    rnc009.Caption:=formatfloat('#0.00%',strtoint(rnc007.Caption)*100.0/ppdbcalc9.Value);
    rvs009.Caption:=formatfloat('#0.00%',strtoint(rvs007.Caption)*100.0/ppdbcalc9.Value);
    ck009.Caption:=formatfloat('#0.00%',strtoint(ck007.Caption)*100.0/ppdbcalc9.Value);
  end else begin
    x010.Caption:='0.00%';
    x011.Caption:='0.00%';
    ra09.Caption:='0.00%';
    rpt009.Caption:='0.00%';
    rnc009.Caption:='0.00%';
    rvs009.Caption:='0.00%';
    ck009.Caption:='0.00%';
  end;
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
  if i1+i2>0 then begin
    if f01.Caption>'' then
    f01.Caption:=f01.Caption+' ('+formatfloat('0.00%',i1*100.0/(i1+i2))+')';
    if f02.Caption>'' then
    f02.Caption:=f02.Caption+' ('+formatfloat('0.00%',i2*100.0/(i1+i2))+')';
  end else begin
    if f01.Caption>'' then
    f01.Caption:=f01.Caption+' (0.00%)';
    if f02.Caption>'' then
    f02.Caption:=f02.Caption+' (0.00%)';
  end;
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
  if i1+i2+i3>0 then begin
    if b01.Caption>'' then
    b01.Caption:=b01.Caption+' ('+formatfloat('0.00%',i1*100.0/(i1+i2+i3))+')';
    if b02.Caption>'' then
    b02.Caption:=b02.Caption+' ('+formatfloat('0.00%',i2*100.0/(i1+i2+i3))+')';
    if b03.Caption>'' then
    b03.Caption:=b03.Caption+' ('+formatfloat('0.00%',i3*100.0/(i1+i2+i3))+')';
  end else begin
    if b01.Caption>'' then
    b01.Caption:=b01.Caption+' (0.00%)';
    if b02.Caption>'' then
    b02.Caption:=b02.Caption+' (0.00%)';
    if b03.Caption>'' then
    b03.Caption:=b03.Caption+' (0.00%)';
  end;
{
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
}
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct jhrs2) as s1 from tbl_tmp_ordsummary where tm=:x1';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then new001.Caption:=fieldbyname('s1').asstring
    else new001.Caption:='0';
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct jhrs2) as s1 from tbl_tmp_ordsummary where tm=:x1 and f_right(rtrim(jhrs2),1)<>'')''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then new001.Caption:=new001.caption+'  (Initial '+fieldbyname('s1').asstring+')'
    else new001.Caption:=new001.caption+'  (Initial 0)';
  end;

  xt01.Caption:=inttostr(strtoint(rpt007.Caption)+strtoint(rnc007.Caption)+strtoint(rvs007.Caption));
  xt001.Caption:=inttostr(strtoint(rpt008.Caption)+strtoint(rnc008.Caption)+strtoint(rvs008.Caption));
  xt02.Caption:=inttostr(strtoint(ck007.Caption)+strtoint(x003.Caption)+strtoint(ra07.Caption));
  xt002.Caption:=inttostr(strtoint(ck008.Caption)+strtoint(x004.Caption)+strtoint(ra08.Caption));
  xt03.Caption:=x006.Caption;
  xt003.Caption:=x007.Caption;
end;

procedure Tfrmordersummary_02.ppGroupFooterBand3BeforePrint(
  Sender: TObject);
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
        if fieldbyname('pjc1').value='DC' then pdt001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt').value)
        else if fieldbyname('pjc1').value='PJ' then ed01.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt').value)
        else if fieldbyname('pjc1').value='C1' then ed02.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt').value)
        else if fieldbyname('pjc1').value='C2' then ed03.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt').value)
        else if fieldbyname('pjc1').value='PO' then ed04.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt').value);
      end;
      if not fieldbyname('sdt1').isnull then begin
        if fieldbyname('pjc1').value='PJ' then sd01.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt1').value)
        else if fieldbyname('pjc1').value='C1' then sd02.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt1').value)
        else if fieldbyname('pjc1').value='C2' then sd03.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt1').value)
        else if fieldbyname('pjc1').value='PO' then sd04.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt1').value);
      end;
      if not fieldbyname('sdt2').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d1001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt2').value)
        else if fieldbyname('pjc1').value='C1' then d1002.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt2').value)
        else if fieldbyname('pjc1').value='C2' then d1003.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt2').value)
        else if fieldbyname('pjc1').value='PO' then d1004.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt2').value);
      end;
      if not fieldbyname('sdt3').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d2001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt3').value)
        else if fieldbyname('pjc1').value='C1' then d2002.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt3').value)
        else if fieldbyname('pjc1').value='C2' then d2003.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt3').value)
        else if fieldbyname('pjc1').value='PO' then d2004.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt3').value);
      end;
      if not fieldbyname('sdt4').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d3001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt4').value)
        else if fieldbyname('pjc1').value='C1' then d3002.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt4').value)
        else if fieldbyname('pjc1').value='C2' then d3003.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt4').value)
        else if fieldbyname('pjc1').value='PO' then d3004.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt4').value);
      end;
      if not fieldbyname('sdt5').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d4001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt5').value)
        else if fieldbyname('pjc1').value='C1' then d4002.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt5').value)
        else if fieldbyname('pjc1').value='C2' then d4003.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt5').value)
        else if fieldbyname('pjc1').value='PO' then d4004.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt5').value);
      end;
      if not fieldbyname('sdt6').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d5001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt6').value)
        else if fieldbyname('pjc1').value='C1' then d5002.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt6').value)
        else if fieldbyname('pjc1').value='C2' then d5003.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt6').value)
        else if fieldbyname('pjc1').value='PO' then d5004.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt6').value);
      end;
      if not fieldbyname('sdt7').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d6001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt7').value)
        else if fieldbyname('pjc1').value='C1' then d6002.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt7').value)
        else if fieldbyname('pjc1').value='C2' then d6003.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt7').value)
        else if fieldbyname('pjc1').value='PO' then d6004.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt7').value);
      end;
      if not fieldbyname('sdt8').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d7001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt8').value)
        else if fieldbyname('pjc1').value='C1' then d7002.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt8').value)
        else if fieldbyname('pjc1').value='C2' then d7003.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt8').value)
        else if fieldbyname('pjc1').value='PO' then d7004.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt8').value);
      end;
      if not fieldbyname('sdt9').isnull then begin
        if fieldbyname('pjc1').value='PJ' then d8001.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt9').value)
        else if fieldbyname('pjc1').value='C1' then d8002.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt9').value)
        else if fieldbyname('pjc1').value='C2' then d8003.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt9').value)
        else if fieldbyname('pjc1').value='PO' then d8004.Caption:=formatdatetime('yy-MM-dd',fieldbyname('sdt9').value);
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

procedure Tfrmordersummary_02.ppGroupHeaderBand2BeforePrint(
  Sender: TObject);
begin
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1 from tbl_tmp_ordsummary where tm=:x1 and onr=''O''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then z005.Caption:=fieldbyname('s1').AsString else z005.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1 from tbl_tmp_ordsummary where tm=:x1 and onr=''N''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then z007.Caption:=fieldbyname('s1').AsString else z007.Caption:='0';
  end;
  y002.Caption:=copy(query1.fieldbyname('jhrs1').value,1,1);
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1 from tbl_tmp_ordsummary where tm=:x1 and onr=''R''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then z006.Caption:=fieldbyname('s1').AsString else z006.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1 from tbl_tmp_ordsummary where tm=:x1 and onr=''P''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then z001.Caption:=fieldbyname('s1').AsString else z001.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1 from tbl_tmp_ordsummary where tm=:x1 and onr=''Q''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then z002.Caption:=fieldbyname('s1').AsString else z002.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1 from tbl_tmp_ordsummary where tm=:x1 and onr=''T''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then z003.Caption:=fieldbyname('s1').AsString else z003.Caption:='0';
  end;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1 from tbl_tmp_ordsummary where tm=:x1 and onr=''G''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then z004.Caption:=fieldbyname('s1').AsString else z004.Caption:='0';
  end;
end;

end.
