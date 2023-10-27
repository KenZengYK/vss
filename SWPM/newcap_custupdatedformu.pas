unit newcap_custupdatedformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, DateUtils, DB, DBClient, ExtCtrls,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppViewr,
  ppCtrls, ppPrnabl, ppBands, ppCache, ppVar, ppStrtch, ppSubRpt, ppParameter;

type
  Tfrmnewcap_custupdated = class(TForm)
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query2: TClientDataSet;
    Query1: TClientDataSet;
    rg1: TRadioGroup;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
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
    title001: TppLabel;
    lbl001: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel18: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
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
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel19: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    lbl002: TppLabel;
    lbl003: TppLabel;
    yr001: TppLabel;
    ppLabel20: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel21: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine17: TppLine;
    ppLine18: TppLine;
    Query3: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    Query4: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine24: TppLine;
    ppLine25: TppLine;
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
    ppDBText30: TppDBText;
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
    ppLabel22: TppLabel;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppLine40: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLabel23: TppLabel;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
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
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppLine49: TppLine;
    ppLabel24: TppLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel25: TppLabel;
    ppDBText31: TppDBText;
    ppLine43: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppShape2: TppShape;
    ppDBText32: TppDBText;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    line02: TppLine;
    line03: TppLine;
    line04: TppLine;
    line08: TppLine;
    line05: TppLine;
    line06: TppLine;
    line07: TppLine;
    line01: TppLine;
    gttl001: TppLabel;
    x001: TppLabel;
    x002: TppLabel;
    x006: TppLabel;
    x007: TppLabel;
    x009: TppLabel;
    x008: TppLabel;
    x010: TppLabel;
    x011: TppLabel;
    x012: TppLabel;
    x013: TppLabel;
    x003: TppLabel;
    x004: TppLabel;
    x005: TppLabel;
    Query5: TClientDataSet;
    ppShape3: TppShape;
    ppLabel26: TppLabel;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    a001: TppLabel;
    a002: TppLabel;
    a003: TppLabel;
    a004: TppLabel;
    a005: TppLabel;
    a006: TppLabel;
    a007: TppLabel;
    a008: TppLabel;
    a009: TppLabel;
    a010: TppLabel;
    a011: TppLabel;
    a012: TppLabel;
    a013: TppLabel;
    b001: TppLabel;
    b002: TppLabel;
    b003: TppLabel;
    b004: TppLabel;
    b005: TppLabel;
    b006: TppLabel;
    b007: TppLabel;
    b008: TppLabel;
    b009: TppLabel;
    b010: TppLabel;
    b011: TppLabel;
    b012: TppLabel;
    b013: TppLabel;
    c001: TppLabel;
    e001: TppLabel;
    e002: TppLabel;
    c002: TppLabel;
    e003: TppLabel;
    c003: TppLabel;
    e004: TppLabel;
    c004: TppLabel;
    e005: TppLabel;
    c005: TppLabel;
    e006: TppLabel;
    c006: TppLabel;
    e007: TppLabel;
    c007: TppLabel;
    e008: TppLabel;
    c008: TppLabel;
    e009: TppLabel;
    c009: TppLabel;
    e010: TppLabel;
    c010: TppLabel;
    e011: TppLabel;
    c011: TppLabel;
    e012: TppLabel;
    c012: TppLabel;
    e013: TppLabel;
    c013: TppLabel;
    tips001: TppLabel;
    pt001: TppLabel;
    a014: TppLabel;
    b014: TppLabel;
    c014: TppLabel;
    e014: TppLabel;
    x014: TppLabel;
    pt002: TppLabel;
    GroupBox1: TGroupBox;
    xh1: TRadioGroup;
    xh2: TRadioGroup;
    GroupBox2: TGroupBox;
    xh3: TRadioGroup;
    xh4: TRadioGroup;
    title002: TppLabel;
    title003: TppLabel;
    line09: TppLine;
    pttl001: TppLabel;
    p001: TppLabel;
    p002: TppLabel;
    p003: TppLabel;
    p004: TppLabel;
    p005: TppLabel;
    p006: TppLabel;
    p007: TppLabel;
    p008: TppLabel;
    p009: TppLabel;
    p010: TppLabel;
    p011: TppLabel;
    p012: TppLabel;
    p013: TppLabel;
    title004: TppLabel;
    line10: TppLine;
    line11: TppLine;
    line12: TppLine;
    line13: TppLine;
    line14: TppLine;
    line15: TppLine;
    tips002: TppLabel;
    GroupBox3: TGroupBox;
    xh5: TRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    bking: TppLabel;
    bk001: TppLabel;
    bk002: TppLabel;
    bk003: TppLabel;
    bk004: TppLabel;
    bk005: TppLabel;
    bk006: TppLabel;
    bk007: TppLabel;
    bk008: TppLabel;
    bk009: TppLabel;
    bk010: TppLabel;
    bk011: TppLabel;
    bk012: TppLabel;
    bking0: TppLabel;
    bk0001: TppLabel;
    bk0002: TppLabel;
    bk0003: TppLabel;
    bk0004: TppLabel;
    bk0005: TppLabel;
    bk0006: TppLabel;
    bk0007: TppLabel;
    bk0008: TppLabel;
    bk0009: TppLabel;
    bk0010: TppLabel;
    bk0011: TppLabel;
    bk0012: TppLabel;
    Label5: TLabel;
    ComboBox2: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand4BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure xh2Click(Sender: TObject);
    procedure xh3Click(Sender: TObject);
    procedure xh4Click(Sender: TObject);
    procedure xh5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure printreportbysp(const dt: string);
    procedure printreportbyrwo(const dt: string);
    procedure printreportbyall(const dt: string);
    procedure printleveloff(const flg: string);
  end;

var
  frmnewcap_custupdated: Tfrmnewcap_custupdated;
  tm:tdatetime;
  t01,c01:array[1..12] of integer;

implementation

uses mainformu, newcap_custupdated_rwoformu, newcap_custupdated_spformu,
  newcap_custupdated_allformu, newcap_custupdated1formu,
  newcap_custupdated2formu, newcap_custupdated3formu, newcap_leveloffprintformu;

{$R *.dfm}

procedure Tfrmnewcap_custupdated.FormShow(Sender: TObject);
begin
  spinedit1.Value:=yearof(date);
  combobox2.text:='CHINA';
end;

procedure Tfrmnewcap_custupdated.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmnewcap_custupdated1<>nil then frmnewcap_custupdated1:=nil;
  if frmnewcap_custupdated2<>nil then frmnewcap_custupdated2:=nil;
  if frmnewcap_custupdated3<>nil then frmnewcap_custupdated3:=nil;
  action:=cafree;
  frmnewcap_custupdated:=nil;
end;

procedure Tfrmnewcap_custupdated.BitBtn1Click(Sender: TObject);
var
  fty:string;
begin
  tm:=now;
  screen.cursor:=crSQLWait;
  try
   if ComboBox2.Text>'' then begin
     if ComboBox2.Text='CHINA' then fty:='SL'
     else fty:='CL';
   end else fty:='';
   label3.caption:=''; label4.caption:='';
   if xh5.ItemIndex<0 then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.CreateParam(ftstring,'x3',ptinput);
      if (combobox1.text>'') and (combobox1.text<>'ALL') then begin
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure sp_cap_gencustqty_new(:x1,:x2,:x3,:x4)';
      end else begin
        if xh1.ItemIndex=3 then commandtext:='execute procedure sp_cap_gencustqty_1(:x1,:x2,:x3)'
        else if xh1.ItemIndex=0 then commandtext:='execute procedure sp_cap_gencustqty_2(:x1,:x2,:x3)'
        else if xh1.ItemIndex=1 then commandtext:='execute procedure sp_cap_gencustqty_3(:x1,:x2,:x3)'
        else if xh2.ItemIndex=0 then commandtext:='execute procedure sp_cap_gencustqty_4(:x1,:x2,:x3)'   // o/s projection & SO qty
        else if xh2.ItemIndex=1 then commandtext:='execute procedure sp_cap_gencustvalue_4(:x1,:x2,:x3)' // o/s projection & SO value
        else if xh3.ItemIndex=5 then commandtext:='execute procedure sp_cap_gencustqty_8(:x1,:x2,:x3)'  //5
        else if xh3.ItemIndex=0 then commandtext:='execute procedure sp_cap_gencustqty_6(:x1,:x2,:x3)'
        else if xh3.ItemIndex=1 then commandtext:='execute procedure sp_cap_gencustqty_7(:x1,:x2,:x3)'
        else if xh3.ItemIndex=4 then commandtext:='execute procedure sp_cap_gencustqty_10(:x1,:x2,:x3)'   //8
        else if xh4.ItemIndex=0 then commandtext:='execute procedure sp_cap_gencustqty_9(:x1,:x2,:x3)'
        else if xh3.ItemIndex=3 then commandtext:='execute procedure sp_cap_gencustqty_5(:x1,:x2,:x3)'   //10
        else if xh1.ItemIndex=2 then commandtext:='execute procedure sp_cap_gencustqty_11(:x1,:x2,:x3)'
        else if xh3.ItemIndex=2 then commandtext:='execute procedure sp_cap_gencustqty_12_lvl(:x1,:x2,:x3)';
      end;
      params[0].asdatetime:=tm;
      params[1].asinteger:=spinedit1.Value;
      if xh1.ItemIndex=3 then params[2].asstring:='1'
      else if xh1.ItemIndex=0 then params[2].asstring:='2'
      else if xh1.ItemIndex=1 then params[2].asstring:='3'
      else if xh2.ItemIndex=0 then params[2].asstring:='4'
      else if xh2.ItemIndex=1 then params[2].asstring:='4'
      else if xh3.ItemIndex=5 then params[2].asstring:='8'//'5'
      else if xh3.ItemIndex=0 then params[2].asstring:='6'
      else if xh3.ItemIndex=1 then params[2].asstring:='7'
      else if xh3.ItemIndex=4 then params[2].asstring:='10'//'8'
      else if xh4.ItemIndex=0 then params[2].asstring:='9'
      else if xh3.ItemIndex=3 then params[2].asstring:='5'//'10'
      else if xh1.ItemIndex=2 then params[2].asstring:='11'
      else if xh3.ItemIndex=2 then params[2].asstring:='12';
      if (combobox1.text>'') and (combobox1.text<>'ALL') then
      params[3].asstring:=combobox1.text;
      execute;
    end;

    if (xh2.ItemIndex>=0) or (xh4.ItemIndex>=0) then begin
      if frmnewcap_custupdated3=nil then frmnewcap_custupdated3:=tfrmnewcap_custupdated3.Create(nil);
      frmnewcap_custupdated3.SpinEdit1.Value:=spinedit1.Value;
      frmnewcap_custupdated3.ComboBox1.Text:=combobox1.text;
      frmnewcap_custupdated3.xh1.ItemIndex:=xh1.ItemIndex;
      frmnewcap_custupdated3.xh2.ItemIndex:=xh2.ItemIndex;
      frmnewcap_custupdated3.xh3.ItemIndex:=xh3.ItemIndex;
      frmnewcap_custupdated3.xh4.ItemIndex:=xh4.ItemIndex;
      frmnewcap_custupdated3.xh5.ItemIndex:=xh5.ItemIndex;
      with frmnewcap_custupdated3.query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct tplant,flag6,flag6s,sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                    +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from tbl_cap_custqty where tm=:x1 and ttl>0 ';
        //if combobox2.text>'' then commandtext:=commandtext+'and tplant='''+combobox2.text+''' ';
        if fty>'' then commandtext:=commandtext+'and tplant='''+fty+''' ';
        commandtext:=commandtext+'group by tplant,flag6,flag6s order by tplant desc,flag6s';
        params[0].asdatetime:=tm;
        open;
      end;
      with frmnewcap_custupdated3.query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_cap_custqty where tm=:x1 and ttl>0 ';
        //if combobox2.text>'' then commandtext:=commandtext+'and tplant='''+combobox2.text+''' ';
        if fty>'' then commandtext:=commandtext+'and tplant='''+fty+''' ';
        commandtext:=commandtext+'order by grp,cust1,tplant,flag6s';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          frmnewcap_custupdated3.title001.Caption:='Customer Sales Order Summary ';
          if (xh1.ItemIndex>=0) or (xh2.ItemIndex>=0) then begin
            frmnewcap_custupdated3.title004.Caption:='(Group Time''s A)';
            frmnewcap_custupdated3.title002.Caption:=' - Time is based on Delivery date of CP''s Sales Projection and CWO (customer dependent)';
            //frmnewcap_custupdated3.gttl001.Caption:='Qty Diff Vs T3 (std ahead) & aT3 ';
          end else if (xh3.ItemIndex>=0) or (xh4.ItemIndex>=0) then begin
            frmnewcap_custupdated3.title004.Caption:='(Group Time''s B)';
            frmnewcap_custupdated3.title002.Caption:=' - Time is based on T3 (std ahead) & aT3 date of CP''s Sales Projection and CWO (customer dependent)';
            //if xh3.ItemIndex=3 then frmnewcap_custupdated3.gttl001.Caption:=''
            //else if xh3.ItemIndex=4 then frmnewcap_custupdated3.gttl001.Caption:=''
            //else frmnewcap_custupdated3.gttl001.Caption:='Qty Diff Vs Delivery date ';
          end;
          if (xh1.ItemIndex>=0) or (xh3.ItemIndex>=0) then frmnewcap_custupdated3.title003.Caption:='Partly  '
          else frmnewcap_custupdated3.title003.Caption:='';
          if xh1.ItemIndex>-1 then frmnewcap_custupdated3.lbl001.Caption:=' - '+xh1.Items[xh1.ItemIndex]
          else if xh3.ItemIndex>-1 then frmnewcap_custupdated3.lbl001.Caption:=' - '+xh3.Items[xh3.ItemIndex]
          else if xh2.ItemIndex=0 then frmnewcap_custupdated3.lbl001.Caption:=' - Qty is based on Sales Projection''s outstanding & CWO'
          else if xh2.ItemIndex=1 then frmnewcap_custupdated3.lbl001.Caption:=' - Value is based on Sales Projection''s outstanding & CWO (HK$)'
          else if xh4.ItemIndex=0 then frmnewcap_custupdated3.lbl001.Caption:=' - Qty is based on Sales Projection''s outstanding & CWO';
          frmnewcap_custupdated3.yr001.Caption:='Year '+ inttostr(spinedit1.value);
          if xh2.itemindex=1 then frmnewcap_custupdated3.ppSummaryBand2.visible:=false
          else frmnewcap_custupdated3.ppSummaryBand2.visible:=true;
          frmnewcap_custupdated3.ppReport1.print;
        end else showmessage('There is not any data for this report!');
      end;
    end else begin
     //if (xh3.ItemIndex=2) then begin
     //  if frmnewcap_leveloffprint=nil then frmnewcap_leveloffprint:=tfrmnewcap_leveloffprint.Create(nil);
     //  frmnewcap_leveloffprint.Show;
     //end else begin
      t01[1]:=0; t01[2]:=0; t01[3]:=0; t01[4]:=0; t01[5]:=0; t01[6]:=0;
      t01[7]:=0; t01[8]:=0; t01[9]:=0; t01[10]:=0; t01[11]:=0; t01[12]:=0;
      c01[1]:=0; c01[2]:=0; c01[3]:=0; c01[4]:=0; c01[5]:=0; c01[6]:=0;
      c01[7]:=0; c01[8]:=0; c01[9]:=0; c01[10]:=0; c01[11]:=0; c01[12]:=0;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct tplant,flag6,flag6s,sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                    +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from ';
        if (xh3.ItemIndex=2) then commandtext:=commandtext+'tbl_cap_custqty_lvl' else commandtext:=commandtext+'tbl_cap_custqty';
        commandtext:=commandtext+' where tm=:x1 ';
        //if combobox2.text>'' then commandtext:=commandtext+'and tplant='''+combobox2.text+''' ';
        if fty>'' then commandtext:=commandtext+'and tplant='''+fty+''' ';
        commandtext:=commandtext+'group by tplant,flag6,flag6s order by tplant desc,flag6s';
        params[0].asdatetime:=tm;     //and ttl<>0
        open;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from ';
        if (xh3.ItemIndex=2) then commandtext:=commandtext+'tbl_cap_custqty_lvl' else commandtext:=commandtext+'tbl_cap_custqty';
        commandtext:=commandtext+' where tm=:x1 ';
        //if combobox2.text>'' then commandtext:=commandtext+'and tplant='''+combobox2.text+''' ';
        if fty>'' then commandtext:=commandtext+'and tplant='''+fty+''' ';
        commandtext:=commandtext+'order by grp,cust1,tplant,flag6s';
        params[0].asdatetime:=tm; // and ttl<>0
        open;
        if not fieldbyname('tm').isnull then begin
          title001.Caption:='Customer Sales Order Summary ';
          if (xh1.ItemIndex>=0) or (xh2.ItemIndex>=0) then begin
            title004.Caption:='(Group Time''s A)';
            title002.Caption:=' - Time is based on Delivery date of CP''s Sales Projection and CWO (customer dependent)';
            gttl001.Caption:='Qty Diff Vs T3 (std ahead) & aT3 ';
          end else if (xh3.ItemIndex>=0) or (xh4.ItemIndex>=0) then begin
            title004.Caption:='(Group Time''s B)';
            title002.Caption:=' - Time is based on T3 (std ahead) & aT3 date of CP''s Sales Projection and CWO (customer dependent)';
            if xh3.ItemIndex=2 then gttl001.Caption:=''
            else if xh3.ItemIndex=4 then gttl001.Caption:=''
            else gttl001.Caption:='Qty Diff Vs Delivery date ';
          end;
          if (xh1.ItemIndex>=0) or (xh3.ItemIndex>=0) then title003.Caption:='Partly  '
          else title003.Caption:='';
          if xh1.ItemIndex>-1 then lbl001.Caption:=' - '+xh1.Items[xh1.ItemIndex]
          else if xh3.ItemIndex>-1 then lbl001.Caption:=' - '+xh3.Items[xh3.ItemIndex]
          else if xh2.ItemIndex=0 then lbl001.Caption:=' - Qty is based on Sales Projection''s outstanding & CWO'
          else if xh4.ItemIndex=0 then lbl001.Caption:=' - Qty is based on Sales Projection''s outstanding & CWO';
          yr001.Caption:='Year '+ inttostr(spinedit1.value);
          if (xh1.ItemIndex=3) or (xh3.ItemIndex=3) then
            tips002.Caption:='PS: -  Sales Projection should incl. Level-off qty, Sales Projection = Level-off Qty + CWO + Projection''s outstanding '
          else tips002.Caption:='';
          if (xh3.ItemIndex=2) then begin
            ppGroupFooterBand4.Height:=0.4063;
            bking.Visible:=true; bk001.Visible:=true; bk002.Visible:=true; bk003.Visible:=true; bk004.Visible:=true;
            bk005.Visible:=true; bk006.Visible:=true; bk007.Visible:=true; bk008.Visible:=true;
            bk009.Visible:=true; bk010.Visible:=true; bk011.Visible:=true; bk012.Visible:=true;
            bking0.Visible:=true; bk001.Visible:=true; bk0002.Visible:=true; bk0003.Visible:=true; bk0004.Visible:=true;
            bk0005.Visible:=true; bk0006.Visible:=true; bk0007.Visible:=true; bk0008.Visible:=true;
            bk0009.Visible:=true; bk0010.Visible:=true; bk0011.Visible:=true; bk0012.Visible:=true;
          end else begin
            ppGroupFooterBand4.Height:=0.2604;
            bking.Visible:=false; bk001.Visible:=false; bk002.Visible:=false; bk003.Visible:=false; bk004.Visible:=false;
            bk005.Visible:=false; bk006.Visible:=false; bk007.Visible:=false; bk008.Visible:=false;
            bk009.Visible:=false; bk010.Visible:=false; bk011.Visible:=false; bk012.Visible:=false;
            bking0.Visible:=false; bk0001.Visible:=false; bk0002.Visible:=false; bk0003.Visible:=false; bk0004.Visible:=false;
            bk0005.Visible:=false; bk0006.Visible:=false; bk0007.Visible:=false; bk0008.Visible:=false;
            bk0009.Visible:=false; bk0010.Visible:=false; bk0011.Visible:=false; bk0012.Visible:=false;
          end;
          ppReport1.print;
        end else showmessage('There is not any data for this report!');
      end;
     //end;
    end;
   end else begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.CreateParam(ftstring,'x3',ptinput);
        commandtext:='execute procedure sp_cap_gencustqty_fw(:x1,:x2,:x3)';
        params[0].asdatetime:=tm;
        params[1].asinteger:=spinedit1.Value;
        params[2].asstring:='13';
        execute;
      end;
      if frmnewcap_custupdated2=nil then frmnewcap_custupdated2:=tfrmnewcap_custupdated2.Create(nil);
      frmnewcap_custupdated2.SpinEdit1.Value:=spinedit1.Value;
      frmnewcap_custupdated2.ComboBox1.Text:=combobox1.text;
      frmnewcap_custupdated2.xh1.ItemIndex:=xh1.ItemIndex;
      frmnewcap_custupdated2.xh2.ItemIndex:=xh2.ItemIndex;
      frmnewcap_custupdated2.xh3.ItemIndex:=xh3.ItemIndex;
      frmnewcap_custupdated2.xh4.ItemIndex:=xh4.ItemIndex;
      frmnewcap_custupdated2.xh5.ItemIndex:=xh5.ItemIndex;
      with frmnewcap_custupdated2.query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct tplant,flag6,flag6s,sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                    +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from tbl_cap_custqty where tm=:x1 ';
        //if combobox2.text>'' then commandtext:=commandtext+'and tplant='''+combobox2.text+''' ';
        if fty>'' then commandtext:=commandtext+'and tplant='''+fty+''' ';
        commandtext:=commandtext+'group by tplant,flag6,flag6s order by tplant desc,flag6s';
        params[0].asdatetime:=tm;
        open;
      end;
      with frmnewcap_custupdated2.query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_cap_custqty where tm=:x1 ';
        //if combobox2.text>'' then commandtext:=commandtext+'and tplant='''+combobox2.text+''' ';
        if fty>'' then commandtext:=commandtext+'and tplant='''+fty+''' ';
        commandtext:=commandtext+'order by grp,cust1,tplant,flag6s';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          frmnewcap_custupdated2.title001.Caption:='Customer Sales Order Summary for CP ';
          frmnewcap_custupdated2.title004.Caption:='(Group Time''s C)';
          frmnewcap_custupdated2.title002.Caption:=' - Time is based on Factory Work (FW) start date of CP''s Sales Projection and CWO (customer dependent)';
          //title002.Caption:=' - Time is based on fty work start date of RWO (customer dependnet) ';
          frmnewcap_custupdated2.title003.Caption:='';
          frmnewcap_custupdated2.lbl001.Caption:=' - Qty is based on Sales Projection''s outstanding & CWO ';
          frmnewcap_custupdated2.yr001.Caption:='Year '+ inttostr(spinedit1.value);
          //frmnewcap_custupdated2.tips002.Caption:='';
          frmnewcap_custupdated2.ppReport1.print;
        end else showmessage('There is not any data for this report!');
      end;
   end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_custupdated.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmnewcap_custupdated.ppGroupFooterBand1BeforePrint(
  Sender: TObject);
var
  ttl:integer;
begin
  //lbl002 & lbl003
  ttl:=0;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    if (xh3.itemindex=2) then
    commandtext:='select sum(ttl) as x1 from tbl_cap_custqty_lvl where tm=:x1 and tplant='''+query2.fieldbyname('tplant').value+''''
    else commandtext:='select sum(ttl) as x1 from tbl_cap_custqty where tm=:x1 and tplant='''+query2.fieldbyname('tplant').value+'''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then ttl:=fieldbyname('x1').value;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    if (xh3.itemindex=2) then
    commandtext:='select sum(ttl) as x1 from tbl_cap_custqty_lvl where tm=:x1 and cust='''+query2.fieldbyname('cust').value+''' and tplant='''+query2.fieldbyname('tplant').value+''''
    else commandtext:='select sum(ttl) as x1 from tbl_cap_custqty where tm=:x1 and cust='''+query2.fieldbyname('cust').value+''' and tplant='''+query2.fieldbyname('tplant').value+'''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then begin
      lbl002.Caption:=formatfloat('#,0',fieldbyname('x1').value);
      lbl003.Caption:=formatfloat('#0.00',fieldbyname('x1').value*100.00/ttl);
    end else begin
      lbl002.Caption:='0';
      lbl003.Caption:='0.00';
    end;
  end;
end;

procedure Tfrmnewcap_custupdated.printreportbyrwo(const dt: string);
begin
  tm:=now;
  screen.cursor:=crSQLWait;
  try
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.CreateParam(ftstring,'x3',ptinput);
      if dt='1' then begin
        if combobox1.text>'' then begin
          params.createparam(ftstring,'x4',ptinput);
          commandtext:='execute procedure sp_cap_gencustqty_new(:x1,:x2,:x3,:x4)';
        end else commandtext:='execute procedure sp_cap_gencustqty(:x1,:x2,:x3)';
      end else if dt='2' then begin
        if combobox1.text>'' then begin
          params.createparam(ftstring,'x4',ptinput);
          commandtext:='execute procedure sp_cap_gencustqty_new_t3(:x1,:x2,:x3,:x4)';
        end else commandtext:='execute procedure sp_cap_gencustqty_t3(:x1,:x2,:x3)';
      end else if dt='3' then begin
      
      end;
      params[0].asdatetime:=tm;
      params[1].asinteger:=spinedit1.Value;
      params[2].asstring:=rg1.Items[rg1.itemindex];
      if combobox1.text>'' then
      params[3].asstring:=combobox1.text;
      execute;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct tplant,flag6,flag6s,sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                  +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from tbl_cap_custqty where tm=:x1 ';
      if combobox2.text>'' then commandtext:=commandtext+'and tplant='''+combobox2.text+''' ';
      commandtext:=commandtext+'group by tplant,flag6,flag6s order by tplant desc,flag6s';
      params[0].asdatetime:=tm;
      open;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_cap_custqty where tm=:x1 ';
      if combobox2.text>'' then commandtext:=commandtext+'and tplant='''+combobox2.text+''' ';
      commandtext:=commandtext+'order by grp,cust1,tplant,flag6s';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        title001.Caption:='Customer Sales Order Summary - Confirmed ';
        if dt='1' then
        lbl001.Caption:=' - Qty is based on SO''s Delivery Date in RWO '
        else if dt='2' then lbl001.Caption:=' - Qty is based on RWO''s T3 (std ahead) + aT3 ';
        yr001.Caption:='Year '+ inttostr(spinedit1.value);
        if dt='1' then
        gttl001.Caption:='Qty Diff Vs T3 (std ahead) + aT3 '
        else if dt='2' then gttl001.Caption:='Qty Diff Vs SO''s Delivery Date ';
        ppReport1.print;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_custupdated.ppSummaryBand2BeforePrint(
  Sender: TObject);
var
  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13:double;
  y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13:double;
  z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13:double;
  ttl:integer;
  pts01,ptk01:double;
begin
  ttl:=0;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    if (xh3.itemindex=2) then
    commandtext:='select sum(ttl) as x1 from tbl_cap_custqty_lvl where tm=:x1 and tplant='''+query2.fieldbyname('tplant').value+''''
    else commandtext:='select sum(ttl) as x1 from tbl_cap_custqty where tm=:x1 and tplant='''+query2.fieldbyname('tplant').value+'''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then ttl:=fieldbyname('x1').value;
  end;
  if (xh3.itemindex=2) then begin
    bk0001.Caption:=''; bk0002.Caption:=''; bk0003.Caption:=''; bk0004.Caption:='';
    bk0005.Caption:=''; bk0006.Caption:=''; bk0007.Caption:=''; bk0008.Caption:='';
    bk0009.Caption:=''; bk0010.Caption:=''; bk0011.Caption:=''; bk0012.Caption:='';
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asinteger:=query2.fieldbyname('yr').value;
      params[2].asinteger:=1;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk0001.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk0001.font.Color:=clRed
          else bk0001.font.Color:=clGreen;
        end else bk0001.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asinteger:=query2.fieldbyname('yr').value;
      params[2].asinteger:=2;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk0002.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk0002.font.Color:=clRed
          else bk0002.font.Color:=clGreen;
        end else bk0002.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asinteger:=query2.fieldbyname('yr').value;
      params[2].asinteger:=3;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk0003.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk0003.font.Color:=clRed
          else bk0003.font.Color:=clGreen;
        end else bk0003.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asinteger:=query2.fieldbyname('yr').value;
      params[2].asinteger:=4;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk0004.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk0004.font.Color:=clRed
          else bk0004.font.Color:=clGreen;
        end else bk0004.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asinteger:=query2.fieldbyname('yr').value;
      params[2].asinteger:=5;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk0005.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk0005.font.Color:=clRed
          else bk0005.font.Color:=clGreen;
        end else bk0005.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asinteger:=query2.fieldbyname('yr').value;
      params[2].asinteger:=6;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk0006.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk0006.font.Color:=clRed
          else bk0006.font.Color:=clGreen;
        end else bk0006.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asinteger:=query2.fieldbyname('yr').value;
      params[2].asinteger:=7;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk0007.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk0007.font.Color:=clRed
          else bk0007.font.Color:=clGreen;
        end else bk0007.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asinteger:=query2.fieldbyname('yr').value;
      params[2].asinteger:=8;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk0008.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk0008.font.Color:=clRed
          else bk0008.font.Color:=clGreen;
        end else bk0008.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asinteger:=query2.fieldbyname('yr').value;
      params[2].asinteger:=9;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk0009.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk0009.font.Color:=clRed
          else bk0009.font.Color:=clGreen;
        end else bk0009.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asinteger:=query2.fieldbyname('yr').value;
      params[2].asinteger:=10;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk0010.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk0010.font.Color:=clRed
          else bk0010.font.Color:=clGreen;
        end else bk0010.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asinteger:=query2.fieldbyname('yr').value;
      params[2].asinteger:=11;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk0011.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk0011.font.Color:=clRed
          else bk0011.font.Color:=clGreen;
        end else bk0011.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking_sum(:x1,:x2,:x3)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asinteger:=query2.fieldbyname('yr').value;
      params[2].asinteger:=12;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk0012.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk0012.font.Color:=clRed
          else bk0012.font.Color:=clGreen;
        end else bk0012.font.Color:=clBlack;
      end;
    end;
  end;
  //--
  {
  line09.Visible:=false; line10.Visible:=false; line11.Visible:=false; line12.Visible:=false;
  line13.Visible:=false; line14.Visible:=false; line15.Visible:=false; pttl001.Visible:=false;
  p001.Caption:='--'; p002.Caption:='--'; p003.Caption:='--'; p004.Caption:='--'; p005.Caption:='--';
  p006.Caption:='--'; p007.Caption:='--'; p008.Caption:='--'; p009.Caption:='--'; p010.Caption:='--';
  p011.Caption:='--'; p012.Caption:='--'; p013.Caption:='';
  p001.Visible:=false; p002.Visible:=false; p003.Visible:=false; p004.Visible:=false; p005.Visible:=false; p006.Visible:=false;
  p007.Visible:=false; p008.Visible:=false; p009.Visible:=false; p010.Visible:=false; p011.Visible:=false; p012.Visible:=false;

  line01.Visible:=false; line02.Visible:=false; line03.Visible:=false; line04.Visible:=false;
  line05.Visible:=false; line06.Visible:=false; line07.Visible:=false; line08.Visible:=false;
  x001.Caption:=''; x002.Caption:=''; x003.Caption:=''; x004.Caption:=''; x005.Caption:='';
  x006.Caption:=''; x007.Caption:=''; x008.Caption:=''; x009.Caption:=''; x010.Caption:='';
  x011.Caption:=''; x012.Caption:=''; x013.Caption:=''; x014.Caption:='';
  }
  tips001.Caption:='Notepad: -  ';
  //if rg1.ItemIndex=1 then begin
  if ((xh1.ItemIndex>=0) or (xh2.ItemIndex>=0) or ((xh3.ItemIndex>=0) and (xh3.ItemIndex<>4) and (xh3.ItemIndex<>5)) or (xh4.ItemIndex>=0)) then begin
    if ((combobox1.text='') or (combobox1.text='ALL')) then begin
      {
      line01.Visible:=true; line02.Visible:=true; line03.Visible:=true; line04.Visible:=true;
      line05.Visible:=true; line06.Visible:=true; line07.Visible:=true; line08.Visible:=true;
      with query5 do begin
        close;
        params.clear;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                  +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from tbl_cap_custqty_vs where tm=:x1';
        params[0].asdatetime:=query2.fieldbyname('tm').value;
        open;
        if not fieldbyname('m1').isnull then x1:=fieldbyname('m1').value;
        if not fieldbyname('m2').isnull then x2:=fieldbyname('m2').value;
        if not fieldbyname('m3').isnull then x3:=fieldbyname('m3').value;
        if not fieldbyname('m4').isnull then x4:=fieldbyname('m4').value;
        if not fieldbyname('m5').isnull then x5:=fieldbyname('m5').value;
        if not fieldbyname('m6').isnull then x6:=fieldbyname('m6').value;
        if not fieldbyname('m7').isnull then x7:=fieldbyname('m7').value;
        if not fieldbyname('m8').isnull then x8:=fieldbyname('m8').value;
        if not fieldbyname('m9').isnull then x9:=fieldbyname('m9').value;
        if not fieldbyname('m10').isnull then x10:=fieldbyname('m10').value;
        if not fieldbyname('m11').isnull then x11:=fieldbyname('m11').value;
        if not fieldbyname('m12').isnull then x12:=fieldbyname('m12').value;
        if not fieldbyname('ttl').isnull then x13:=fieldbyname('ttl').value;
      end;
      with query5 do begin
        close;
        params.clear;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                  +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from tbl_cap_custqty where tm=:x1';
        params[0].asdatetime:=query2.fieldbyname('tm').value;
        open;
        if not fieldbyname('m1').isnull then y1:=fieldbyname('m1').value;
        if not fieldbyname('m2').isnull then y2:=fieldbyname('m2').value;
        if not fieldbyname('m3').isnull then y3:=fieldbyname('m3').value;
        if not fieldbyname('m4').isnull then y4:=fieldbyname('m4').value;
        if not fieldbyname('m5').isnull then y5:=fieldbyname('m5').value;
        if not fieldbyname('m6').isnull then y6:=fieldbyname('m6').value;
        if not fieldbyname('m7').isnull then y7:=fieldbyname('m7').value;
        if not fieldbyname('m8').isnull then y8:=fieldbyname('m8').value;
        if not fieldbyname('m9').isnull then y9:=fieldbyname('m9').value;
        if not fieldbyname('m10').isnull then y10:=fieldbyname('m10').value;
        if not fieldbyname('m11').isnull then y11:=fieldbyname('m11').value;
        if not fieldbyname('m12').isnull then y12:=fieldbyname('m12').value;
        if not fieldbyname('ttl').isnull then y13:=fieldbyname('ttl').value;
      end;
      x001.Caption:=formatfloat('#,0',y1-x1);
      x002.Caption:=formatfloat('#,0',y2-x2);
      x003.Caption:=formatfloat('#,0',y3-x3);
      x004.Caption:=formatfloat('#,0',y4-x4);
      x005.Caption:=formatfloat('#,0',y5-x5);
      x006.Caption:=formatfloat('#,0',y6-x6);
      x007.Caption:=formatfloat('#,0',y7-x7);
      x008.Caption:=formatfloat('#,0',y8-x8);
      x009.Caption:=formatfloat('#,0',y9-x9);
      x010.Caption:=formatfloat('#,0',y10-x10);
      x011.Caption:=formatfloat('#,0',y11-x11);
      x012.Caption:=formatfloat('#,0',y12-x12);
      x013.Caption:=formatfloat('#,0',y13-x13);
      x014.Caption:=formatfloat('#,0.00',(y13-x13)*100.00/ttl);
      if (xh3.ItemIndex=1) or (xh4.ItemIndex=0) then begin
        z1:=0; z2:=0; z3:=0; z4:=0; z5:=0; z6:=0; z7:=0; z8:=0; z9:=0; z10:=0; z11:=0; z12:=0; z13:=0;
        line09.Visible:=true; line10.Visible:=true; line11.Visible:=true; line12.Visible:=true;
        line13.Visible:=true; line14.Visible:=true; line15.Visible:=true; pttl001.Visible:=true;
        p001.Visible:=true; p002.Visible:=true; p003.Visible:=true; p004.Visible:=true; p005.Visible:=true; p006.Visible:=true;
        p007.Visible:=true; p008.Visible:=true; p009.Visible:=true; p010.Visible:=true; p011.Visible:=true; p012.Visible:=true;
        with query5 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select distinct mn,sum(diff) as x1 from view_actperf where yr=:x1 and mn<:x2 group by mn order by mn';
          params[0].asinteger:=spinedit1.value;
          params[1].asinteger:=monthof(date);
          open;
          first;
          while not eof do begin
            //x14:=x14+fieldbyname('x1').value;
            if fieldbyname('mn').value=1 then z1:=fieldbyname('x1').value
            else if fieldbyname('mn').value=2 then z2:=fieldbyname('x1').value
            else if fieldbyname('mn').value=3 then z3:=fieldbyname('x1').value
            else if fieldbyname('mn').value=4 then z4:=fieldbyname('x1').value
            else if fieldbyname('mn').value=5 then z5:=fieldbyname('x1').value
            else if fieldbyname('mn').value=6 then z6:=fieldbyname('x1').value
            else if fieldbyname('mn').value=7 then z7:=fieldbyname('x1').value
            else if fieldbyname('mn').value=8 then z8:=fieldbyname('x1').value
            else if fieldbyname('mn').value=9 then z9:=fieldbyname('x1').value
            else if fieldbyname('mn').value=10 then z10:=fieldbyname('x1').value
            else if fieldbyname('mn').value=11 then z11:=fieldbyname('x1').value
            else if fieldbyname('mn').value=12 then z12:=fieldbyname('x1').value;
            application.ProcessMessages;
            next;
          end;
        end;
        if z1>0 then begin
          z13:=z13+y1-z1;
          p001.Caption:=formatfloat('#,0',y1-z1);
          if y1>z1 then p001.Font.Color:=clGreen
          else if y1<z1 then p001.Font.Color:=clRed
          else p001.Font.Color:=clBlack;
        end else p001.Font.Color:=clBlack;
        if z2>0 then begin
          z13:=z13+y2-z2;
          p002.Caption:=formatfloat('#,0',y2-z2);
          if y2>z2 then p002.Font.Color:=clGreen
          else if y2<z2 then p002.Font.Color:=clRed
          else p002.Font.Color:=clBlack;
        end else p002.Font.Color:=clBlack;
        if z3>0 then begin
          z13:=z13+y3-z3;
          p003.Caption:=formatfloat('#,0',y3-z3);
          if y3>z3 then p003.Font.Color:=clGreen
          else if y3<z3 then p003.Font.Color:=clRed
          else p003.Font.Color:=clBlack;
        end else p003.Font.Color:=clBlack;
        if z4>0 then begin
          z13:=z13+y4-z4;
          p004.Caption:=formatfloat('#,0',y4-z4);
          if y4>z4 then p004.Font.Color:=clGreen
          else if y4<z4 then p004.Font.Color:=clRed
          else p004.Font.Color:=clBlack;
        end else p004.Font.Color:=clBlack;
        if z5>0 then begin
          z13:=z13+y5-z5;
          p005.Caption:=formatfloat('#,0',y5-z5);
          if y5>z5 then p005.Font.Color:=clGreen
          else if y5<z5 then p005.Font.Color:=clRed
          else p005.Font.Color:=clBlack;
        end else p005.Font.Color:=clBlack;
        if z6>0 then begin
          z13:=z13+y6-z6;
          p006.Caption:=formatfloat('#,0',y6-z6);
          if y6>z6 then p006.Font.Color:=clGreen
          else if y6<z6 then p006.Font.Color:=clRed
          else p006.Font.Color:=clBlack;
        end else p006.Font.Color:=clBlack;
        if z7>0 then begin
          z13:=z13+y7-z7;
          p007.Caption:=formatfloat('#,0',y7-z7);
          if y7>z7 then p007.Font.Color:=clGreen
          else if y7<z7 then p007.Font.Color:=clRed
          else p007.Font.Color:=clBlack;
        end else p007.Font.Color:=clBlack;
        if z8>0 then begin
          z13:=z13+y8-z8;
          p008.Caption:=formatfloat('#,0',y8-z8);
          if y8>z8 then p008.Font.Color:=clGreen
          else if y8<z8 then p008.Font.Color:=clRed
          else p008.Font.Color:=clBlack;
        end else p008.Font.Color:=clBlack;
        if z9>0 then begin
          z13:=z13+y9-z9;
          p009.Caption:=formatfloat('#,0',y9-z9);
          if y9>z9 then p009.Font.Color:=clGreen
          else if y9<z9 then p009.Font.Color:=clRed
          else p009.Font.Color:=clBlack;
        end else p009.Font.Color:=clBlack;
        if z10>0 then begin
          z13:=z13+y10-z10;
          p010.Caption:=formatfloat('#,0',y10-z10);
          if y10>z10 then p010.Font.Color:=clGreen
          else if y10<z10 then p010.Font.Color:=clRed
          else p010.Font.Color:=clBlack;
        end else p010.Font.Color:=clBlack;
        if z11>0 then begin
          z13:=z13+y11-z11;
          p011.Caption:=formatfloat('#,0',y11-z11);
          if y11>z11 then p011.Font.Color:=clGreen
          else if y11<z11 then p011.Font.Color:=clRed
          else p011.Font.Color:=clBlack;
        end else p011.Font.Color:=clBlack;
        if z12>0 then begin
          z13:=z13+y12-z12;
          p012.Caption:=formatfloat('#,0',y12-z12);
          if y12>z12 then p012.Font.Color:=clGreen
          else if y12<z12 then p012.Font.Color:=clRed
          else p012.Font.Color:=clBlack;
        end else p012.Font.Color:=clBlack;
        p013.Caption:=formatfloat('#,0',z13);
        if z13>0 then p013.Font.Color:=clGreen
        else if z13<0 then p013.Font.Color:=clRed
        else p013.Font.Color:=clBlack;
      end;
      }
      if ((xh1.ItemIndex=1) or (xh3.ItemIndex=1)) then begin
        with query5 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='select sum(qty) as x1 from tbl_cap_erprwo where dtyr=:x1 and ((t3dt<>at3dt and at3yr<:x2) or (t3dt=at3dt and bt3yr<:x3)) and tplant='''+query2.fieldbyname('tplant').value+'''';
          params[0].asinteger:=spinedit1.Value;
          params[1].asinteger:=spinedit1.Value;
          params[2].asinteger:=spinedit1.Value;
          open;
          if not fieldbyname('x1').isnull then tips001.Caption:=tips001.Caption+'  Go to previous year: '+formatfloat('#,0',fieldbyname('x1').value)+' pcs';
        end;
        with query5 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          commandtext:='select sum(qty) as x1 from tbl_cap_erprwo where dtyr=:x1 and ((t3dt<>at3dt and at3yr>:x2) or (t3dt=at3dt and bt3yr>:x3)) and tplant='''+query2.fieldbyname('tplant').value+'''';
          params[0].asinteger:=spinedit1.Value;
          params[1].asinteger:=spinedit1.Value;
          params[2].asinteger:=spinedit1.Value;
          open;
          if not fieldbyname('x1').isnull then tips001.Caption:=tips001.caption+'  go to future: '+formatfloat('#,0',fieldbyname('x1').value)+' pcs';
        end;
      end;
    end;
  end;
  a001.Caption:=''; a002.Caption:=''; a003.Caption:=''; a004.Caption:=''; a005.Caption:=''; a006.Caption:=''; a007.Caption:='';
  a008.Caption:=''; a009.Caption:=''; a010.Caption:=''; a011.Caption:=''; a012.Caption:=''; a013.Caption:=''; a014.Caption:='';
  b001.Caption:=''; b002.Caption:=''; b003.Caption:=''; b004.Caption:=''; b005.Caption:=''; b006.Caption:=''; b007.Caption:='';
  b008.Caption:=''; b009.Caption:=''; b010.Caption:=''; b011.Caption:=''; b012.Caption:=''; b013.Caption:=''; b014.Caption:='';
  c001.Caption:=''; c002.Caption:=''; c003.Caption:=''; c004.Caption:=''; c005.Caption:=''; c006.Caption:=''; c007.Caption:='';
  c008.Caption:=''; c009.Caption:=''; c010.Caption:=''; c011.Caption:=''; c012.Caption:=''; c013.Caption:=''; c014.Caption:='';
  e001.Caption:=''; e002.Caption:=''; e003.Caption:=''; e004.Caption:=''; e005.Caption:=''; e006.Caption:=''; e007.Caption:='';
  e008.Caption:=''; e009.Caption:=''; e010.Caption:=''; e011.Caption:=''; e012.Caption:=''; e013.Caption:=''; e014.Caption:='';
  //if ((combobox1.text='') or (combobox1.text='ALL')) then begin
    with query5 do begin
      close;
      params.clear;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      if (xh3.itemindex=2) then
      commandtext:='select distinct grp,sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from tbl_cap_custqty_lvl where tm=:x1 group by grp order by grp'
      else commandtext:='select distinct grp,sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from tbl_cap_custqty where tm=:x1 and tplant='''+query2.fieldbyname('tplant').value+''' group by grp order by grp';
      params[0].asdatetime:=query2.fieldbyname('tm').value;
      open;
      first;
      while not eof do begin
        if fieldbyname('grp').value='A' then begin
          a001.Caption:=formatfloat('#,0',fieldbyname('m1').value);
          a002.Caption:=formatfloat('#,0',fieldbyname('m2').value);
          a003.Caption:=formatfloat('#,0',fieldbyname('m3').value);
          a004.Caption:=formatfloat('#,0',fieldbyname('m4').value);
          a005.Caption:=formatfloat('#,0',fieldbyname('m5').value);
          a006.Caption:=formatfloat('#,0',fieldbyname('m6').value);
          a007.Caption:=formatfloat('#,0',fieldbyname('m7').value);
          a008.Caption:=formatfloat('#,0',fieldbyname('m8').value);
          a009.Caption:=formatfloat('#,0',fieldbyname('m9').value);
          a010.Caption:=formatfloat('#,0',fieldbyname('m10').value);
          a011.Caption:=formatfloat('#,0',fieldbyname('m11').value);
          a012.Caption:=formatfloat('#,0',fieldbyname('m12').value);
          a013.Caption:=formatfloat('#,0',fieldbyname('ttl').value);
          a014.Caption:=formatfloat('#,0.00',fieldbyname('ttl').value*100.00/ttl);
        end else if fieldbyname('grp').value='B' then begin
          b001.Caption:=formatfloat('#,0',fieldbyname('m1').value);
          b002.Caption:=formatfloat('#,0',fieldbyname('m2').value);
          b003.Caption:=formatfloat('#,0',fieldbyname('m3').value);
          b004.Caption:=formatfloat('#,0',fieldbyname('m4').value);
          b005.Caption:=formatfloat('#,0',fieldbyname('m5').value);
          b006.Caption:=formatfloat('#,0',fieldbyname('m6').value);
          b007.Caption:=formatfloat('#,0',fieldbyname('m7').value);
          b008.Caption:=formatfloat('#,0',fieldbyname('m8').value);
          b009.Caption:=formatfloat('#,0',fieldbyname('m9').value);
          b010.Caption:=formatfloat('#,0',fieldbyname('m10').value);
          b011.Caption:=formatfloat('#,0',fieldbyname('m11').value);
          b012.Caption:=formatfloat('#,0',fieldbyname('m12').value);
          b013.Caption:=formatfloat('#,0',fieldbyname('ttl').value);
          b014.Caption:=formatfloat('#,0.00',fieldbyname('ttl').value*100.00/ttl);
        end else if fieldbyname('grp').value='C' then begin
          c001.Caption:=formatfloat('#,0',fieldbyname('m1').value);
          c002.Caption:=formatfloat('#,0',fieldbyname('m2').value);
          c003.Caption:=formatfloat('#,0',fieldbyname('m3').value);
          c004.Caption:=formatfloat('#,0',fieldbyname('m4').value);
          c005.Caption:=formatfloat('#,0',fieldbyname('m5').value);
          c006.Caption:=formatfloat('#,0',fieldbyname('m6').value);
          c007.Caption:=formatfloat('#,0',fieldbyname('m7').value);
          c008.Caption:=formatfloat('#,0',fieldbyname('m8').value);
          c009.Caption:=formatfloat('#,0',fieldbyname('m9').value);
          c010.Caption:=formatfloat('#,0',fieldbyname('m10').value);
          c011.Caption:=formatfloat('#,0',fieldbyname('m11').value);
          c012.Caption:=formatfloat('#,0',fieldbyname('m12').value);
          c013.Caption:=formatfloat('#,0',fieldbyname('ttl').value);
          c014.Caption:=formatfloat('#,0.00',fieldbyname('ttl').value*100.00/ttl);
        end else if fieldbyname('grp').value='D' then begin
          e001.Caption:=formatfloat('#,0',fieldbyname('m1').value);
          e002.Caption:=formatfloat('#,0',fieldbyname('m2').value);
          e003.Caption:=formatfloat('#,0',fieldbyname('m3').value);
          e004.Caption:=formatfloat('#,0',fieldbyname('m4').value);
          e005.Caption:=formatfloat('#,0',fieldbyname('m5').value);
          e006.Caption:=formatfloat('#,0',fieldbyname('m6').value);
          e007.Caption:=formatfloat('#,0',fieldbyname('m7').value);
          e008.Caption:=formatfloat('#,0',fieldbyname('m8').value);
          e009.Caption:=formatfloat('#,0',fieldbyname('m9').value);
          e010.Caption:=formatfloat('#,0',fieldbyname('m10').value);
          e011.Caption:=formatfloat('#,0',fieldbyname('m11').value);
          e012.Caption:=formatfloat('#,0',fieldbyname('m12').value);
          e013.Caption:=formatfloat('#,0',fieldbyname('ttl').value);
          e014.Caption:=formatfloat('#,0.00',fieldbyname('ttl').value*100.00/ttl);
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  //end;
  with query5 do begin
    close;
    params.clear;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    if (xh3.itemindex=2) then
    commandtext:='select distinct tplant,sum(ttl) as ttl from tbl_cap_custqty_lvl where tm=:x1 and tplant='''+query2.fieldbyname('tplant').value+''' group by tplant'
    else commandtext:='select distinct tplant,sum(ttl) as ttl from tbl_cap_custqty where tm=:x1 and tplant='''+query2.fieldbyname('tplant').value+''' group by tplant';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('tplant').value='SL' then pts01:=fieldbyname('ttl').value*100.00/ttl
      else if fieldbyname('tplant').value='KB' then ptk01:=fieldbyname('ttl').value*100.00/ttl;
      application.ProcessMessages;
      next;
    end;
  end;
  tips001.Caption:=tips001.Caption+'      Factory''s Order Balancing of year '+inttostr(spinedit1.value)+':- SL Vs KB = '+formatfloat('#,0.00%',pts01)+' Vs '+formatfloat('#,0.00%',ptk01);
end;

procedure Tfrmnewcap_custupdated.ppGroupFooterBand4BeforePrint(
  Sender: TObject);
var
  ttl:integer;
begin
  ttl:=0;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    if (xh3.itemindex=2) then
    commandtext:='select sum(ttl) as x1 from tbl_cap_custqty_lvl where tm=:x1 and tplant='''+query2.fieldbyname('tplant').value+''''
    else commandtext:='select sum(ttl) as x1 from tbl_cap_custqty where tm=:x1 and tplant='''+query2.fieldbyname('tplant').value+'''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then ttl:=fieldbyname('x1').value;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    if (xh3.itemindex=2) then
    commandtext:='select sum(ttl) as x1 from tbl_cap_custqty_lvl where tm=:x1 and grp='''+query2.fieldbyname('grp').value+''' and tplant='''+query2.fieldbyname('tplant').value+''''
    else commandtext:='select sum(ttl) as x1 from tbl_cap_custqty where tm=:x1 and grp='''+query2.fieldbyname('grp').value+''' and tplant='''+query2.fieldbyname('tplant').value+'''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then begin
      pt001.Caption:=formatfloat('#0.00',fieldbyname('x1').value*100.00/ttl);
    end else begin
      pt001.Caption:='0.00';
    end;
  end;
  if (xh3.itemindex=2) then begin
    bk001.Caption:=''; bk002.Caption:=''; bk003.Caption:=''; bk004.Caption:='';
    bk005.Caption:=''; bk006.Caption:=''; bk007.Caption:=''; bk008.Caption:='';
    bk009.Caption:=''; bk010.Caption:=''; bk011.Caption:=''; bk012.Caption:='';
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asstring:=query2.fieldbyname('grp').value;
      params[2].asinteger:=query2.fieldbyname('yr').value;
      params[3].asinteger:=1;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk001.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk001.font.Color:=clRed
          else bk001.font.Color:=clGreen;
        end else bk001.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asstring:=query2.fieldbyname('grp').value;
      params[2].asinteger:=query2.fieldbyname('yr').value;
      params[3].asinteger:=2;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk002.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk002.font.Color:=clRed
          else bk002.font.Color:=clGreen;
        end else bk002.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asstring:=query2.fieldbyname('grp').value;
      params[2].asinteger:=query2.fieldbyname('yr').value;
      params[3].asinteger:=3;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk003.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk003.font.Color:=clRed
          else bk003.font.Color:=clGreen;
        end else bk003.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asstring:=query2.fieldbyname('grp').value;
      params[2].asinteger:=query2.fieldbyname('yr').value;
      params[3].asinteger:=4;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk004.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk004.font.Color:=clRed
          else bk004.font.Color:=clGreen;
        end else bk004.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asstring:=query2.fieldbyname('grp').value;
      params[2].asinteger:=query2.fieldbyname('yr').value;
      params[3].asinteger:=5;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk005.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk005.font.Color:=clRed
          else bk005.font.Color:=clGreen;
        end else bk005.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asstring:=query2.fieldbyname('grp').value;
      params[2].asinteger:=query2.fieldbyname('yr').value;
      params[3].asinteger:=6;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk006.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk006.font.Color:=clRed
          else bk006.font.Color:=clGreen;
        end else bk006.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asstring:=query2.fieldbyname('grp').value;
      params[2].asinteger:=query2.fieldbyname('yr').value;
      params[3].asinteger:=7;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk007.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk007.font.Color:=clRed
          else bk007.font.Color:=clGreen;
        end else bk007.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asstring:=query2.fieldbyname('grp').value;
      params[2].asinteger:=query2.fieldbyname('yr').value;
      params[3].asinteger:=8;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk008.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk008.font.Color:=clRed
          else bk008.font.Color:=clGreen;
        end else bk008.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asstring:=query2.fieldbyname('grp').value;
      params[2].asinteger:=query2.fieldbyname('yr').value;
      params[3].asinteger:=9;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk009.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk009.font.Color:=clRed
          else bk009.font.Color:=clGreen;
        end else bk009.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asstring:=query2.fieldbyname('grp').value;
      params[2].asinteger:=query2.fieldbyname('yr').value;
      params[3].asinteger:=10;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk010.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk010.font.Color:=clRed
          else bk010.font.Color:=clGreen;
        end else bk010.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asstring:=query2.fieldbyname('grp').value;
      params[2].asinteger:=query2.fieldbyname('yr').value;
      params[3].asinteger:=11;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk011.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk011.font.Color:=clRed
          else bk011.font.Color:=clGreen;
        end else bk011.font.Color:=clBlack;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='select * from sp_cap_getlvloffbybooking(:x1,:x2,:x3,:x4)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asstring:=query2.fieldbyname('grp').value;
      params[2].asinteger:=query2.fieldbyname('yr').value;
      params[3].asinteger:=12;
      open;
      if not fieldbyname('ttl').isnull then begin
        bk012.Caption:=fieldbyname('ttl').AsString+'/'+fieldbyname('cfmd').AsString;
        if fieldbyname('cfmd').value>0 then begin
          if fieldbyname('ttl').value>fieldbyname('cfmd').value then
          bk012.font.Color:=clRed
          else bk012.font.Color:=clGreen;
        end else bk012.font.Color:=clBlack;
      end;
    end;
  end;
end;

procedure Tfrmnewcap_custupdated.ppGroupFooterBand3BeforePrint(
  Sender: TObject);
var
  ttl:integer;
begin
  ttl:=0;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    if (xh3.itemindex=2) then
    commandtext:='select sum(ttl) as x1 from tbl_cap_custqty_lvl where tm=:x1 and tplant='''+query2.fieldbyname('tplant').value+''''
    else commandtext:='select sum(ttl) as x1 from tbl_cap_custqty where tm=:x1 and tplant='''+query2.fieldbyname('tplant').value+'''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then ttl:=fieldbyname('x1').value;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    if (xh3.itemindex=2) then
    commandtext:='select sum(ttl) as x1 from tbl_cap_custqty_lvl where tm=:x1 and tplant='''+query3.fieldbyname('tplant').value+''''
    else commandtext:='select sum(ttl) as x1 from tbl_cap_custqty where tm=:x1 and tplant='''+query3.fieldbyname('tplant').value+'''';
    params[0].asdatetime:=query2.fieldbyname('tm').value;
    open;
    if not fieldbyname('x1').isnull then begin
      pt002.Caption:=formatfloat('#0.00',fieldbyname('x1').value*100.00/ttl);
    end else begin
      pt002.Caption:='0.00';
    end;
  end;
end;

procedure Tfrmnewcap_custupdated.printleveloff(const flg: string);
begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct tplant,flag6,flag6s,sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                    +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from tbl_cap_custqty_lvl_2 ';
        commandtext:=commandtext+'where tm=:x1 and flg='''+flg+''' and ttl<>0 ';
        if combobox2.text>'' then commandtext:=commandtext+'and tplant='''+combobox2.text+''' ';
        commandtext:=commandtext+'group by tplant,flag6,flag6s order by tplant desc,flag6s';
        params[0].asdatetime:=tm;
        open;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_cap_custqty_lvl_2 ';
        commandtext:=commandtext+' where tm=:x1 and flg='''+flg+''' and ttl<>0 ';
        if combobox2.text>'' then commandtext:=commandtext+'and tplant='''+combobox2.text+''' ';
        commandtext:=commandtext+'order by grp,cust1,tplant,flag6s';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          title001.Caption:='Customer Sales Order Summary for CP ';
          if (xh1.ItemIndex>=0) or (xh2.ItemIndex>=0) then begin
            title004.Caption:='(Group Time''s A)';
            title002.Caption:=' - Time is based on Delivery date of CP''s Sales Projection and RWO (customer dependent)';
            gttl001.Caption:='Qty Diff Vs T3 (std ahead) & aT3 ';
          end else if (xh3.ItemIndex>=0) or (xh4.ItemIndex>=0) then begin
            title004.Caption:='(Group Time''s B)';
            title002.Caption:=' - Time is based on T3 (std ahead) & aT3 date of CP''s Sales Projection and RWO (customer dependent)';
            if xh3.ItemIndex=2 then gttl001.Caption:=''
            else if xh3.ItemIndex=4 then gttl001.Caption:=''
            else gttl001.Caption:='Qty Diff Vs Delivery date ';
          end;
          if (xh1.ItemIndex>=0) or (xh3.ItemIndex>=0) then title003.Caption:='Partly  '
          else title003.Caption:='';
          if xh1.ItemIndex>-1 then lbl001.Caption:=' - '+xh1.Items[xh1.ItemIndex]
          else if xh3.ItemIndex>-1 then lbl001.Caption:=' - '+xh3.Items[xh3.ItemIndex]+'    ['+label3.caption+'] '
          else if xh2.ItemIndex=0 then lbl001.Caption:=' - Qty is based on Sales Projection''s outstanding & RWO'
          else if xh4.ItemIndex=0 then lbl001.Caption:=' - Qty is based on Sales Projection''s outstanding & RWO';
          yr001.Caption:='Year '+ inttostr(spinedit1.value);
          if (xh1.ItemIndex=3) or (xh3.ItemIndex=3) then
            tips002.Caption:='PS: -  Sales Projection should incl. Level-off qty, Sales Projection = Level-off Qty + RWO + Projection''s outstanding '
          else tips002.Caption:='';
          ppReport1.print;
        end else showmessage('There is not any data for this report!');
      end;
end;

procedure Tfrmnewcap_custupdated.printreportbyall(const dt: string);
begin
  tm:=now;
  screen.cursor:=crSQLWait;
  try
    if dt='1' then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.CreateParam(ftstring,'x3',ptinput);
        if combobox1.text>'' then begin
          params.createparam(ftstring,'x4',ptinput);
          commandtext:='execute procedure sp_cap_gencustqty_new(:x1,:x2,:x3,:x4)';
        end else commandtext:='execute procedure sp_cap_gencustqty(:x1,:x2,:x3)';
        params[0].asdatetime:=tm;
        params[1].asinteger:=spinedit1.Value;
        params[2].asstring:='SP';
        if combobox1.text>'' then
        params[3].asstring:=combobox1.text;
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct tplant,flag6,flag6s,sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                    +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from tbl_cap_custqty where tm=:x1 ';
        if combobox2.text>'' then commandtext:=commandtext+'and tplant='''+combobox2.text+''' ';
        commandtext:=commandtext+'group by tplant,flag6,flag6s order by tplant desc,flag6s';
        params[0].asdatetime:=tm;
        open;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_cap_custqty where tm=:x1 ';
        if combobox2.text>'' then commandtext:=commandtext+'and tplant='''+combobox2.text+''' ';
        commandtext:=commandtext+'order by grp,cust1,tplant,flag6s';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          title001.Caption:='Customer Sales Order Summary - Confirmed & Projection''s outstanding ';
          lbl001.Caption:=' - Qty is based on SO''s Del date in RWO & Projection''s Del date';
          yr001.Caption:='Year '+ inttostr(spinedit1.value);
          gttl001.Caption:='';
          ppReport1.print;
        end;
      end;
    end else if dt='2' then begin

    end else if dt='3' then begin

    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_custupdated.printreportbysp(const dt: string);
begin
  tm:=now;
  screen.cursor:=crSQLWait;
  try
    if dt='1' then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.CreateParam(ftstring,'x3',ptinput);
        if combobox1.text>'' then begin
          params.createparam(ftstring,'x4',ptinput);
          commandtext:='execute procedure sp_cap_gencustqty_new(:x1,:x2,:x3,:x4)';
        end else commandtext:='execute procedure sp_cap_gencustqty(:x1,:x2,:x3)';
        params[0].asdatetime:=tm;
        params[1].asinteger:=spinedit1.Value;
        params[2].asstring:='ALL';
        if combobox1.text>'' then
        params[3].asstring:=combobox1.text;
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct tplant,flag6,flag6s,sum(m1) as m1,sum(m2) as m2,sum(m3) as m3,sum(m4) as m4,sum(m5) as m5,sum(m6) as m6,sum(m7) as m7,sum(m8) as m8,'
                    +'sum(m9) as m9,sum(m10) as m10,sum(m11) as m11,sum(m12) as m12,sum(ttl) as ttl from tbl_cap_custqty where tm=:x1 ';
        if combobox2.text>'' then commandtext:=commandtext+'and tplant='''+combobox2.text+''' ';
        commandtext:=commandtext+'group by tplant,flag6,flag6s order by tplant desc,flag6s';
        params[0].asdatetime:=tm;
        open;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_cap_custqty where tm=:x1 ';
        if combobox2.text>'' then commandtext:=commandtext+'and tplant='''+combobox2.text+''' ';
        commandtext:=commandtext+'order by grp,cust1,tplant,flag6s';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          title001.Caption:='Customer Sales Order Summary - Projection and Planning ';
          lbl001.Caption:=' - Qty is based on Del date';
          yr001.Caption:='Year '+ inttostr(spinedit1.value);
          gttl001.Caption:='';
          ppReport1.print;
        end;
      end;
    end else if dt='2' then begin
    end else if dt='3' then begin
    end else if dt='4' then begin
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_custupdated.xh1Click(Sender: TObject);
begin
  if xh1.ItemIndex>-1 then begin
    xh2.ItemIndex:=-1;
    xh3.ItemIndex:=-1;
    xh4.ItemIndex:=-1;
    xh5.ItemIndex:=-1;
  end;
end;

procedure Tfrmnewcap_custupdated.xh2Click(Sender: TObject);
begin
  if xh2.ItemIndex>-1 then begin
    xh1.ItemIndex:=-1;
    xh3.ItemIndex:=-1;
    xh4.ItemIndex:=-1;
    xh5.ItemIndex:=-1;
  end;
end;

procedure Tfrmnewcap_custupdated.xh3Click(Sender: TObject);
begin
  if xh3.ItemIndex>-1 then begin
    xh1.ItemIndex:=-1;
    xh2.ItemIndex:=-1;
    xh4.ItemIndex:=-1;
    xh5.ItemIndex:=-1;
  end;
end;

procedure Tfrmnewcap_custupdated.xh4Click(Sender: TObject);
begin
  if xh4.ItemIndex>-1 then begin
    xh1.ItemIndex:=-1;
    xh2.ItemIndex:=-1;
    xh3.ItemIndex:=-1;
    xh5.ItemIndex:=-1;
  end;
end;

procedure Tfrmnewcap_custupdated.xh5Click(Sender: TObject);
begin
  if xh5.ItemIndex>-1 then begin
    xh1.ItemIndex:=-1;
    xh2.ItemIndex:=-1;
    xh3.ItemIndex:=-1;
    xh4.ItemIndex:=-1;
  end;
end;

end.
