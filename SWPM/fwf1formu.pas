unit fwf1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppClass, ppStrtch, ppMemo, myChkBox, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  DB, DBClient, Spin, StdCtrls, Mask, rxToolEdit, Buttons, ppViewr,
  ppParameter;

type
  Tfrmfwf1 = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    xh1: TRadioButton;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    xh2: TRadioButton;
    Edit1: TSpinEdit;
    Edit2: TSpinEdit;
    Edit3: TSpinEdit;
    Edit4: TSpinEdit;
    xh3: TRadioButton;
    Edit5: TSpinEdit;
    Edit6: TSpinEdit;
    Edit7: TSpinEdit;
    Edit8: TSpinEdit;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    fty001: TppLabel;
    ppLabel3: TppLabel;
    dt001: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel21: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine22: TppLine;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppLine46: TppLine;
    ppLabel17: TppLabel;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine50: TppLine;
    ppLabel50: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLine58: TppLine;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLine60: TppLine;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel11: TppLabel;
    ppLabel68: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel19: TppLabel;
    dt002: TppLabel;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLine12: TppLine;
    ppLabel51: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLine14: TppLine;
    ppLine36: TppLine;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLine70: TppLine;
    ppLine72: TppLine;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel55: TppLabel;
    ppLine9: TppLine;
    ppLine29: TppLine;
    ppLabel57: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLine74: TppLine;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel14: TppLabel;
    ppLabel92: TppLabel;
    ppLabel43: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel95: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLine26: TppLine;
    ppLabel8: TppLabel;
    ppLabel98: TppLabel;
    ppLabel27: TppLabel;
    ppLine35: TppLine;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel5: TppLabel;
    ppLabel73: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    mychk01: TmyCheckBox;
    ppLabel7: TppLabel;
    wk001: TppLabel;
    ppLabel47: TppLabel;
    wk002: TppLabel;
    mychk02: TmyCheckBox;
    ppLabel18: TppLabel;
    mon001: TppLabel;
    ppLabel70: TppLabel;
    mon002: TppLabel;
    mychk03: TmyCheckBox;
    ppDetailBand1: TppDetailBand;
    ppShape10: TppShape;
    ppShape9: TppShape;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape14: TppShape;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine34: TppLine;
    ppLine37: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLine47: TppLine;
    ppLine51: TppLine;
    ppLine57: TppLine;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLine61: TppLine;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLine64: TppLine;
    ppDBText27: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText24: TppDBText;
    ppDBText28: TppDBText;
    ppDBText6: TppDBText;
    ppDBText29: TppDBText;
    ppLine71: TppLine;
    ppDBText7: TppDBText;
    ppDBText35: TppDBText;
    ppLine73: TppLine;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText36: TppDBText;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppDBText11: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLine38: TppLine;
    ppDBText39: TppDBText;
    ppDBText1: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppMemo2: TppMemo;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    lwf0001: TppLabel;
    swf0001: TppLabel;
    swf0002: TppLabel;
    swf0003: TppLabel;
    swf0004: TppLabel;
    swf0005: TppLabel;
    mwf0001: TppLabel;
    mwf0002: TppLabel;
    mwf0003: TppLabel;
    mwf0004: TppLabel;
    avg0001: TppLabel;
    avg0002: TppLabel;
    avg0003: TppLabel;
    avg0004: TppLabel;
    avg0005: TppLabel;
    ppDBCalc22: TppDBCalc;
    mwf0005: TppLabel;
    swf0006: TppLabel;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    cwf0001: TppLabel;
    cwf0002: TppLabel;
    mc0001: TppLabel;
    mc0002: TppLabel;
    mc0003: TppLabel;
    ppDBCalc25: TppDBCalc;
    swf0007: TppLabel;
    avg0006: TppLabel;
    avg0007: TppLabel;
    ppDBCalc26: TppDBCalc;
    mwf0006: TppLabel;
    mc0004: TppLabel;
    tlwf0001: TppLabel;
    tcwf0001: TppLabel;
    tcwf0002: TppLabel;
    tswf0001: TppLabel;
    tswf0002: TppLabel;
    tswf0006: TppLabel;
    tswf0003: TppLabel;
    tswf0004: TppLabel;
    tmc0001: TppLabel;
    tmc0003: TppLabel;
    tmc0004: TppLabel;
    ttl0001: TppLabel;
    ppDBCalc27: TppDBCalc;
    peff0001: TppLabel;
    ttl0002: TppLabel;
    ppDBCalc28: TppDBCalc;
    ppDBText41: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape4: TppShape;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    lwf001: TppLabel;
    swf001: TppLabel;
    swf002: TppLabel;
    swf003: TppLabel;
    swf004: TppLabel;
    swf005: TppLabel;
    mwf001: TppLabel;
    mwf002: TppLabel;
    mwf003: TppLabel;
    mwf004: TppLabel;
    avg001: TppLabel;
    avg002: TppLabel;
    avg003: TppLabel;
    avg004: TppLabel;
    avg005: TppLabel;
    ppDBCalc15: TppDBCalc;
    mwf005: TppLabel;
    swf006: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    cwf001: TppLabel;
    cwf002: TppLabel;
    mc001: TppLabel;
    mc002: TppLabel;
    mc003: TppLabel;
    ppDBCalc4: TppDBCalc;
    swf007: TppLabel;
    avg006: TppLabel;
    avg007: TppLabel;
    ppDBCalc5: TppDBCalc;
    mwf006: TppLabel;
    mc004: TppLabel;
    tlwf001: TppLabel;
    tcwf001: TppLabel;
    tcwf002: TppLabel;
    tswf001: TppLabel;
    tswf002: TppLabel;
    tswf006: TppLabel;
    tswf003: TppLabel;
    tswf004: TppLabel;
    tmc001: TppLabel;
    tmc003: TppLabel;
    tmc004: TppLabel;
    ttl001: TppLabel;
    ppDBCalc3: TppDBCalc;
    peff001: TppLabel;
    ttl002: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBText40: TppDBText;
    ppLabel69: TppLabel;
    workshop001: TppLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfwf1: Tfrmfwf1;
  dt1,dt2:tdate;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmfwf1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmfwf1:=nil;
end;

procedure Tfrmfwf1.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,p1,p2,p3:double;
  s1,s2,s3,s4:string;
  lt1,p4:double;
begin
  s1:='';s2:='';s3:='';s4:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null)';
    commandtext:=commandtext+' and pline='''+query1.fieldbyname('pline').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('p2').isnull then s1:='project:  '+fieldbyname('p2').asstring+'    ';
    if not fieldbyname('c1').IsNull then s2:='cust style:  '+fieldbyname('c1').asstring+'    ';
    if not fieldbyname('p1').isnull then s3:='line:  '+fieldbyname('p1').asstring+'    ';
    if not fieldbyname('s4').isnull then s4:='QN:  '+fieldbyname('s4').asstring+'    ';
  end;
  ttl001.Caption:=s1+s2+s3+s4;
  f01:=0;f02:=0;f03:=0;f04:=0;f05:=0;f06:=0;f07:=0;f08:=0;f09:=0;f10:=0;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,gsdtrs,cwfttl,cwfdiff,bwf,bwfs,bwfn,bwfa,bwfttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2';
    commandtext:=commandtext+' and pline='''+query1.fieldbyname('pline').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f01:=f01+fieldbyname('gsdtrs').value;
      f02:=f02+fieldbyname('cwfttl').value;
      f03:=f03+fieldbyname('cwfdiff').value;
      f04:=f04+fieldbyname('bwf').value;
      f05:=f05+fieldbyname('bwfs').value;
      f06:=f06+fieldbyname('bwfn').value;
      f07:=f07+fieldbyname('bwfa').value;
      f08:=f08+fieldbyname('bwfttl').value;
      application.ProcessMessages;
      next;
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,sum(gsdm*asect)/sum(asect) as gsdm,sum(gsdmttl*asect)/sum(asect) as gsdmttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    commandtext:=commandtext+' and pline='''+query1.fieldbyname('pline').value+'''';
    commandtext:=commandtext+' group by pline';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f09:=f09+fieldbyname('gsdm').value;
      f10:=f10+fieldbyname('gsdmttl').value;
      application.ProcessMessages;
      next;
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,gsdm,gsdmttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect=0';
    commandtext:=commandtext+' and pline='''+query1.fieldbyname('pline').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f09:=f09+fieldbyname('gsdm').value;
      f10:=f10+fieldbyname('gsdmttl').value;
      application.ProcessMessages;
      next;
    end;
  end;

  tlwf001.Caption:=formatfloat('#0.0',f01);
  tcwf001.Caption:=formatfloat('#0.0',f02);
  tcwf002.Caption:=formatfloat('#0.0',f03);
  tswf001.Caption:=formatfloat('#0.0',f04);
  tswf002.Caption:=formatfloat('+#0.0;-#0.0',f05);
  tswf006.Caption:=formatfloat('#0.0',f06);
  tswf003.Caption:=formatfloat('#0.0',f07);
  tswf004.Caption:=formatfloat('#0.0',f08);
  tmc001.Caption:=formatfloat('#0.0',f09);
  tmc003.Caption:=formatfloat('#0.0',f10);
  tmc004.Caption:=formatfloat('+#0.0;-#0.0',f10-f09);

  lt1:=0;
  with Query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(a.ltc_d) as ltc_d1 from tblshedule a,line_shjs b where a.pline=b.pline and a.seq=b.seq and b.flag=''0'' and b.dt1>=:x1 and b.dt1<=:x2 and ((a.ltc_ksrq>=b.dt1 and a.ltc_ksrq<=b.dt1) or (a.ltc_ksrq<b.dt1 and a.cfwcrq=b.dt1))';
    commandtext:=commandtext+' and b.pline='''+query1.fieldbyname('pline').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('ltc_d1').isnull then lt1:=fieldbyname('ltc_d1').value;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(gsdtrs*(asect))/sum(asect) as lwf1,sum(gsdbn*(asect))/sum(asect) as lwf2,'
                +'sum(gsdttl*(asect))/sum(asect) as lwf3,sum(bwf*(asect))/sum(asect) as swf1,sum(bwfs*(asect))/sum(asect) as swf2,'
                +'sum(bwfa*(asect))/sum(asect) as swf3,sum(bwfttl*(asect))/sum(asect) as swf4,sum(bwfa1*(asect))/sum(asect) as swf5,'
                +'sum(mwflb*(asect))/sum(asect) as mwf1,sum(mwfa*(asect))/sum(asect) as mwf2,sum(mwfbn*(asect))/sum(asect) as mwf3,'
                +'sum(mwfttl*(asect))/sum(asect) as mwf4,sum(lbwf1*(asect))/sum(asect) as avg1,sum(lbwf2*(asect))/sum(asect) as avg2,'
                +'sum(eff1*(asect))/sum(asect) as avg3,sum(eff2*(asect))/sum(asect) as avg4,sum(dbxl*(asect))/sum(asect) as avg5,'
                +'sum(bwfn*(asect))/sum(asect) as swf6,sum(mwfs*(asect))/sum(asect) as mwf5,sum(cwfttl*(asect))/sum(asect) as cwf1,'
                +'sum(cwfdiff*(asect))/sum(asect) as cwf2,sum(ulb*(asect))/sum(asect) as avg6,sum(gsdm*(asect))/sum(asect) as mc1,'
                +'sum(gsdmbn*(asect))/sum(asect) as mc2,sum(gsdmttl*(asect))/sum(asect) as mc3,sum(bwfac*(asect))/sum(asect) as swf7,'
                +'sum(mwfac*(asect))/sum(asect) as mwf6,sum(ulbac*(asect))/sum(asect) as avg7,sum(gsdmdiff*(asect))/sum(asect) as mc4 '
                +'from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    commandtext:=commandtext+' and pline='''+query1.fieldbyname('pline').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('lwf1').isnull then lwf001.Caption:=formatfloat('0.00',fieldbyname('lwf1').value) else lwf001.Caption:='0.00';
    if not fieldbyname('swf1').isnull then swf001.Caption:=formatfloat('0.00',fieldbyname('swf1').value) else swf001.Caption:='0.00';
    if not fieldbyname('swf2').isnull then swf002.Caption:=formatfloat('0.00',fieldbyname('swf2').value) else swf002.Caption:='0.00';
    if not fieldbyname('swf3').isnull then swf003.Caption:=formatfloat('0.00',fieldbyname('swf3').value) else swf003.Caption:='0.00';
    if not fieldbyname('swf4').isnull then swf004.Caption:=formatfloat('0.00',fieldbyname('swf4').value) else swf004.Caption:='0.00';
    if not fieldbyname('swf5').isnull then swf005.Caption:=formatfloat('0.00',fieldbyname('swf5').value) else swf005.Caption:='0.00';
    if not fieldbyname('swf6').isnull then swf006.Caption:=formatfloat('0.00',fieldbyname('swf6').value) else swf006.Caption:='0.00';
    if not fieldbyname('swf7').isnull then swf007.Caption:=formatfloat('0.00',fieldbyname('swf7').value) else swf007.Caption:='0.00';
    if not fieldbyname('mwf1').isnull then mwf001.Caption:=formatfloat('0.00',fieldbyname('mwf1').value) else mwf001.Caption:='0.00';
    if not fieldbyname('mwf2').isnull then mwf002.Caption:=formatfloat('0.00',fieldbyname('mwf2').value) else mwf002.Caption:='0.00';
    if not fieldbyname('mwf3').isnull then mwf003.Caption:=formatfloat('0.00',fieldbyname('mwf3').value) else mwf003.Caption:='0.00';
    if not fieldbyname('mwf4').isnull then mwf004.Caption:=formatfloat('0.00',fieldbyname('mwf4').value) else mwf004.Caption:='0.00';
    if not fieldbyname('mwf5').isnull then mwf005.Caption:=formatfloat('0.00',fieldbyname('mwf5').value) else mwf005.Caption:='0.00';
    if not fieldbyname('mwf6').isnull then mwf006.Caption:=formatfloat('0.00',fieldbyname('mwf6').value) else mwf006.Caption:='0.00';
    if not fieldbyname('cwf1').isnull then cwf001.Caption:=formatfloat('0.00',fieldbyname('cwf1').value) else cwf001.Caption:='0.00';
    if not fieldbyname('cwf2').isnull then cwf002.Caption:=formatfloat('0.00',fieldbyname('cwf2').value) else cwf002.Caption:='0.00';
    if not fieldbyname('avg1').isnull then avg001.Caption:=formatfloat('0.00',fieldbyname('avg1').value) else avg001.Caption:='0.00';
    if not fieldbyname('avg2').isnull then avg002.Caption:=formatfloat('0.00',fieldbyname('avg2').value) else avg002.Caption:='0.00';
    if not fieldbyname('avg3').isnull then avg003.Caption:=formatfloat('0.00',fieldbyname('avg3').value) else avg003.Caption:='0.00';
    if not fieldbyname('avg4').isnull then avg004.Caption:=formatfloat('0.00',fieldbyname('avg4').value) else avg004.Caption:='0.00';
    //if not fieldbyname('avg5').isnull then avg005.Caption:=formatfloat('0.00',fieldbyname('avg5').value) else avg005.Caption:='0.00';
    if not fieldbyname('avg6').isnull then avg006.Caption:=formatfloat('0.00',fieldbyname('avg6').value) else avg006.Caption:='0.00';
    if not fieldbyname('avg7').isnull then avg007.Caption:=formatfloat('0.00',fieldbyname('avg7').value) else avg007.Caption:='0.00';
    if not fieldbyname('mc1').isnull then mc001.Caption:=formatfloat('0.00',fieldbyname('mc1').value) else mc001.Caption:='0.00';
    if not fieldbyname('mc2').isnull then mc002.Caption:=formatfloat('0.00',fieldbyname('mc2').value) else mc002.Caption:='0.00';
    if not fieldbyname('mc3').isnull then mc003.Caption:=formatfloat('0.00',fieldbyname('mc3').value) else mc003.Caption:='0.00';
    if not fieldbyname('mc4').isnull then mc004.Caption:=formatfloat('0.00',fieldbyname('mc4').value) else mc004.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(dbxl*(csect))/sum(csect) as avg5 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and csect>0';
    commandtext:=commandtext+' and pline='''+query1.fieldbyname('pline').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('avg5').isnull then avg005.Caption:=formatfloat('0.00',fieldbyname('avg5').value) else avg005.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(eff2*asect)/sum(asect) as s1,sum(asect) as s2 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    commandtext:=commandtext+' and pline='''+query1.fieldbyname('pline').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('s1').isnull then p1:=fieldbyname('s1').value else p1:=0;
    if not fieldbyname('s2').isnull then p2:=fieldbyname('s2').value else p2:=0;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(msect-asect) as s2 from tbl_qnwf where dt1>=:x1 and dt1<=:x2';
    commandtext:=commandtext+' and pline='''+query1.fieldbyname('pline').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('s2').isnull then p4:=fieldbyname('s2').value else p4:=0;
  end;
  p3:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,tsect,dt1 from tbl_qnwf where dt1>=:x1 and dt1<=:x2';
    commandtext:=commandtext+' and pline='''+query1.fieldbyname('pline').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      p3:=p3+fieldbyname('tsect').value;
      application.ProcessMessages;
      next;
    end;
  end;
  if p3>0 then peff001.Caption:='Productivity eff %: '+formatfloat('0.00',p1*p2/p3) else peff001.Caption:='Productivity eff %: 0.00';
  if p3>0 then
  ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p4)+'    Total Linkage Time = '+formatfloat('0.0',lt1)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  '+formatfloat('0.00',p2*100.0/p3)
  else ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p4)+'    Total Linkage Time = '+formatfloat('0.0',lt1)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  0.00';
end;

procedure Tfrmfwf1.ppGroupFooterBand2BeforePrint(Sender: TObject);
var
  f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,p1,p2,p3:double;
  s1,s2,s3,s4:string;
  lt1,p4:double;
begin
  s1:='';s2:='';s3:='';s4:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4 from line_shjs where flag=''0'' and dt1>=:x1 and dt1<=:x2 and (flag6 is not null)';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('p2').isnull then s1:='project:  '+fieldbyname('p2').asstring+'    ';
    if not fieldbyname('c1').IsNull then s2:='cust style:  '+fieldbyname('c1').asstring+'    ';
    if not fieldbyname('p1').isnull then s3:='line:  '+fieldbyname('p1').asstring+'    ';
    if not fieldbyname('s4').isnull then s4:='QN:  '+fieldbyname('s4').asstring+'    ';
  end;
  ttl001.Caption:=s1+s2+s3+s4;
  f01:=0;f02:=0;f03:=0;f04:=0;f05:=0;f06:=0;f07:=0;f08:=0;f09:=0;f10:=0;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,gsdtrs,cwfttl,cwfdiff,bwf,bwfs,bwfn,bwfa,bwfttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f01:=f01+fieldbyname('gsdtrs').value;
      f02:=f02+fieldbyname('cwfttl').value;
      f03:=f03+fieldbyname('cwfdiff').value;
      f04:=f04+fieldbyname('bwf').value;
      f05:=f05+fieldbyname('bwfs').value;
      f06:=f06+fieldbyname('bwfn').value;
      f07:=f07+fieldbyname('bwfa').value;
      f08:=f08+fieldbyname('bwfttl').value;
      application.ProcessMessages;
      next;
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,sum(gsdm*asect)/sum(asect) as gsdm,sum(gsdmttl*asect)/sum(asect) as gsdmttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    commandtext:=commandtext+' group by pline';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f09:=f09+fieldbyname('gsdm').value;
      f10:=f10+fieldbyname('gsdmttl').value;
      application.ProcessMessages;
      next;
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,gsdm,gsdmttl from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect=0';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      f09:=f09+fieldbyname('gsdm').value;
      f10:=f10+fieldbyname('gsdmttl').value;
      application.ProcessMessages;
      next;
    end;
  end;

  tlwf0001.Caption:=formatfloat('#0.0',f01);
  tcwf0001.Caption:=formatfloat('#0.0',f02);
  tcwf0002.Caption:=formatfloat('#0.0',f03);
  tswf0001.Caption:=formatfloat('#0.0',f04);
  tswf0002.Caption:=formatfloat('+#0.0;-#0.0',f05);
  tswf0006.Caption:=formatfloat('#0.0',f06);
  tswf0003.Caption:=formatfloat('#0.0',f07);
  tswf0004.Caption:=formatfloat('#0.0',f08);
  tmc0001.Caption:=formatfloat('#0.0',f09);
  tmc0003.Caption:=formatfloat('#0.0',f10);
  tmc0004.Caption:=formatfloat('+#0.0;-#0.0',f10-f09);

  lt1:=0;
  with Query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(a.ltc_d) as ltc_d1 from tblshedule a,line_shjs b where a.pline=b.pline and a.seq=b.seq and b.flag=''0'' and b.dt1>=:x1 and b.dt1<=:x2 and ((a.ltc_ksrq>=b.dt1 and a.ltc_ksrq<=b.dt1) or (a.ltc_ksrq<b.dt1 and a.cfwcrq=b.dt1))';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('ltc_d1').isnull then lt1:=fieldbyname('ltc_d1').value;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(gsdtrs*(asect))/sum(asect) as lwf1,sum(gsdbn*(asect))/sum(asect) as lwf2,'
                +'sum(gsdttl*(asect))/sum(asect) as lwf3,sum(bwf*(asect))/sum(asect) as swf1,sum(bwfs*(asect))/sum(asect) as swf2,'
                +'sum(bwfa*(asect))/sum(asect) as swf3,sum(bwfttl*(asect))/sum(asect) as swf4,sum(bwfa1*(asect))/sum(asect) as swf5,'
                +'sum(mwflb*(asect))/sum(asect) as mwf1,sum(mwfa*(asect))/sum(asect) as mwf2,sum(mwfbn*(asect))/sum(asect) as mwf3,'
                +'sum(mwfttl*(asect))/sum(asect) as mwf4,sum(lbwf1*(asect))/sum(asect) as avg1,sum(lbwf2*(asect))/sum(asect) as avg2,'
                +'sum(eff1*(asect))/sum(asect) as avg3,sum(eff2*(asect))/sum(asect) as avg4,sum(dbxl*(asect))/sum(asect) as avg5,'
                +'sum(bwfn*(asect))/sum(asect) as swf6,sum(mwfs*(asect))/sum(asect) as mwf5,sum(cwfttl*(asect))/sum(asect) as cwf1,'
                +'sum(cwfdiff*(asect))/sum(asect) as cwf2,sum(ulb*(asect))/sum(asect) as avg6,sum(gsdm*(asect))/sum(asect) as mc1,'
                +'sum(gsdmbn*(asect))/sum(asect) as mc2,sum(gsdmttl*(asect))/sum(asect) as mc3,sum(bwfac*(asect))/sum(asect) as swf7,'
                +'sum(mwfac*(asect))/sum(asect) as mwf6,sum(ulbac*(asect))/sum(asect) as avg7,sum(gsdmdiff*(asect))/sum(asect) as mc4 '
                +'from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('lwf1').isnull then lwf0001.Caption:=formatfloat('0.00',fieldbyname('lwf1').value) else lwf0001.Caption:='0.00';
    if not fieldbyname('swf1').isnull then swf0001.Caption:=formatfloat('0.00',fieldbyname('swf1').value) else swf0001.Caption:='0.00';
    if not fieldbyname('swf2').isnull then swf0002.Caption:=formatfloat('0.00',fieldbyname('swf2').value) else swf0002.Caption:='0.00';
    if not fieldbyname('swf3').isnull then swf0003.Caption:=formatfloat('0.00',fieldbyname('swf3').value) else swf0003.Caption:='0.00';
    if not fieldbyname('swf4').isnull then swf0004.Caption:=formatfloat('0.00',fieldbyname('swf4').value) else swf0004.Caption:='0.00';
    if not fieldbyname('swf5').isnull then swf0005.Caption:=formatfloat('0.00',fieldbyname('swf5').value) else swf0005.Caption:='0.00';
    if not fieldbyname('swf6').isnull then swf0006.Caption:=formatfloat('0.00',fieldbyname('swf6').value) else swf0006.Caption:='0.00';
    if not fieldbyname('swf7').isnull then swf0007.Caption:=formatfloat('0.00',fieldbyname('swf7').value) else swf0007.Caption:='0.00';
    if not fieldbyname('mwf1').isnull then mwf0001.Caption:=formatfloat('0.00',fieldbyname('mwf1').value) else mwf0001.Caption:='0.00';
    if not fieldbyname('mwf2').isnull then mwf0002.Caption:=formatfloat('0.00',fieldbyname('mwf2').value) else mwf0002.Caption:='0.00';
    if not fieldbyname('mwf3').isnull then mwf0003.Caption:=formatfloat('0.00',fieldbyname('mwf3').value) else mwf0003.Caption:='0.00';
    if not fieldbyname('mwf4').isnull then mwf0004.Caption:=formatfloat('0.00',fieldbyname('mwf4').value) else mwf0004.Caption:='0.00';
    if not fieldbyname('mwf5').isnull then mwf0005.Caption:=formatfloat('0.00',fieldbyname('mwf5').value) else mwf0005.Caption:='0.00';
    if not fieldbyname('mwf6').isnull then mwf0006.Caption:=formatfloat('0.00',fieldbyname('mwf6').value) else mwf0006.Caption:='0.00';
    if not fieldbyname('cwf1').isnull then cwf0001.Caption:=formatfloat('0.00',fieldbyname('cwf1').value) else cwf0001.Caption:='0.00';
    if not fieldbyname('cwf2').isnull then cwf0002.Caption:=formatfloat('0.00',fieldbyname('cwf2').value) else cwf0002.Caption:='0.00';
    if not fieldbyname('avg1').isnull then avg0001.Caption:=formatfloat('0.00',fieldbyname('avg1').value) else avg0001.Caption:='0.00';
    if not fieldbyname('avg2').isnull then avg0002.Caption:=formatfloat('0.00',fieldbyname('avg2').value) else avg0002.Caption:='0.00';
    if not fieldbyname('avg3').isnull then avg0003.Caption:=formatfloat('0.00',fieldbyname('avg3').value) else avg0003.Caption:='0.00';
    if not fieldbyname('avg4').isnull then avg0004.Caption:=formatfloat('0.00',fieldbyname('avg4').value) else avg0004.Caption:='0.00';
    //if not fieldbyname('avg5').isnull then avg0005.Caption:=formatfloat('0.00',fieldbyname('avg5').value) else avg0005.Caption:='0.00';
    if not fieldbyname('avg6').isnull then avg0006.Caption:=formatfloat('0.00',fieldbyname('avg6').value) else avg0006.Caption:='0.00';
    if not fieldbyname('avg7').isnull then avg0007.Caption:=formatfloat('0.00',fieldbyname('avg7').value) else avg0007.Caption:='0.00';
    if not fieldbyname('mc1').isnull then mc0001.Caption:=formatfloat('0.00',fieldbyname('mc1').value) else mc0001.Caption:='0.00';
    if not fieldbyname('mc2').isnull then mc0002.Caption:=formatfloat('0.00',fieldbyname('mc2').value) else mc0002.Caption:='0.00';
    if not fieldbyname('mc3').isnull then mc0003.Caption:=formatfloat('0.00',fieldbyname('mc3').value) else mc0003.Caption:='0.00';
    if not fieldbyname('mc4').isnull then mc0004.Caption:=formatfloat('0.00',fieldbyname('mc4').value) else mc0004.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct sum(dbxl*(csect))/sum(csect) as avg5 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and csect>0';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('avg5').isnull then avg0005.Caption:=formatfloat('0.00',fieldbyname('avg5').value) else avg0005.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(eff2*asect)/sum(asect) as s1,sum(asect) as s2 from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and asect>0';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('s1').isnull then p1:=fieldbyname('s1').value else p1:=0;
    if not fieldbyname('s2').isnull then p2:=fieldbyname('s2').value else p2:=0;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(msect-asect) as s2 from tbl_qnwf where dt1>=:x1 and dt1<=:x2';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('s2').isnull then p4:=fieldbyname('s2').value else p4:=0;
  end;
  p3:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct pline,tsect,dt1 from tbl_qnwf where dt1>=:x1 and dt1<=:x2';
    commandtext:=commandtext+' and tshop='''+query1.fieldbyname('tshop').value+'''';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    first;
    while not eof do begin
      p3:=p3+fieldbyname('tsect').value;
      application.ProcessMessages;
      next;
    end;
  end;
  if p3>0 then peff0001.Caption:='Productivity eff %: '+formatfloat('0.00',p1*p2/p3) else peff0001.Caption:='Productivity eff %: 0.00';
  if p3>0 then
  ttl0002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p4)+'    Total Linkage Time = '+formatfloat('0.0',lt1)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  '+formatfloat('0.00',p2*100.0/p3)
  else ttl0002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p4)+'    Total Linkage Time = '+formatfloat('0.0',lt1)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  0.00';
end;

procedure Tfrmfwf1.BitBtn1Click(Sender: TObject);
begin
  if xh1.Checked then begin
    if dateedit1.date>0 then dt1:=dateedit1.date else dt1:=date;
    if dateedit2.date>0 then dt2:=dateedit2.date else dt2:=date;
  end else if xh2.Checked then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select min(date1) as dt1 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and wkno=:x2';
      params[0].asinteger:=edit1.Value;
      params[1].asinteger:=edit2.value;
      open;
      dt1:=fieldbyname('dt1').value;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(date1) as dt2 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and wkno=:x2';
      params[0].asinteger:=edit3.Value;
      params[1].asinteger:=edit4.value;
      open;
      dt2:=fieldbyname('dt2').value;
    end;
  end else if xh3.Checked then begin
    dt1:=encodedate(edit5.value,edit6.value,1);
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select max(date1) as dt2 from week52 where tplant>'''' and tshop>'''' and line>'''' and f_year(date1)=:x1 and f_month(date1)=:x2';
      params[0].asinteger:=edit7.Value;
      params[1].asinteger:=edit8.value;
      open;
      dt2:=fieldbyname('dt2').value;
    end;
  end;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from tbl_qnwf where dt1>=:x1 and dt1<=:x2 and tshop>''''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    commandtext:=commandtext+' order by pline,tshop,tplant';
    params[0].asdate:=dt1;
    params[1].asdate:=dt2;
    open;
    if not fieldbyname('tshop').isnull then begin
      if combobox1.text>'' then
      fty001.Caption:=combobox1.text
      else fty001.Caption:=fieldbyname('tplant').value;
      if combobox2.Text>'' then
      workshop001.Caption:=combobox2.text
      else workshop001.Caption:='';
      if xh1.Checked then begin
        mychk01.Checked:=true;
        dt001.Caption:=dateedit1.Text;
        dt002.Caption:=dateedit2.Text;
      end else begin
        mychk01.Checked:=false;
        dt001.Caption:='';
        dt002.Caption:='';
      end;
      if xh2.Checked then begin
        mychk02.Checked:=true;
        wk001.Caption:=inttostr(edit1.value)+'-'+inttostr(edit2.value);
        wk002.Caption:=inttostr(edit3.Value)+'-'+inttostr(edit4.value);
      end else begin
        mychk02.Checked:=false;
        wk001.Caption:='';
        wk002.Caption:='';
      end;
      if xh3.Checked then begin
        mychk03.Checked:=true;
        mon001.Caption:=inttostr(edit5.value)+'-'+inttostr(edit6.value);
        mon002.Caption:=inttostr(edit7.Value)+'-'+inttostr(edit8.value);
      end else begin
        mychk03.Checked:=false;
        mon001.Caption:='';
        mon002.Caption:='';
      end;
      ppReport1.Print;
    end;
  end;
end;

procedure Tfrmfwf1.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
 