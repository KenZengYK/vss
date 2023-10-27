unit zktdformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ExtCtrls, DB, DBClient, StdCtrls, Buttons,
  DBCtrls, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppCtrls, ppBands, ppVar, ppPrnabl, ppCache, ppViewr, ppStrtch,
  ppMemo, Menus, ppRichTx, myChkBox, GridsEh, Math, siComp, ppParameter,
  DBGridEh2Excel_Joe;

type
  Tfrmzktd = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel45: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel81: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel15: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine22: TppLine;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
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
    avg001: TppLabel;
    avg002: TppLabel;
    avg003: TppLabel;
    avg004: TppLabel;
    avg005: TppLabel;
    avg006: TppLabel;
    avg007: TppLabel;
    avg008: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLabel3: TppLabel;
    ppDBText29: TppDBText;
    ppLabel84: TppLabel;
    ppDBText30: TppDBText;
    ppLine9: TppLine;
    ppLabel7: TppLabel;
    ppLabel85: TppLabel;
    ppDBText2: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppDBText31: TppDBText;
    ppDBCalc12: TppDBCalc;
    title001: TppLabel;
    ppLine3: TppLine;
    ppLine26: TppLine;
    ppDBText32: TppDBText;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    ppLabel24: TppLabel;
    ppDBText33: TppDBText;
    ppShape3: TppShape;
    ppShape11: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape8: TppShape;
    ppShape10: TppShape;
    ppDBText34: TppDBText;
    ppMemo1: TppMemo;
    ppMemo2: TppMemo;
    ppMemo3: TppMemo;
    ppLabel28: TppLabel;
    ppLabel32: TppLabel;
    ppLabel39: TppLabel;
    ppDBText35: TppDBText;
    PopupMenu1: TPopupMenu;
    Cancel1: TMenuItem;
    ppLabel42: TppLabel;
    ppMemo4: TppMemo;
    Label7: TLabel;
    DBText7: TDBText;
    Label8: TLabel;
    DBText8: TDBText;
    ppLabel49: TppLabel;
    ppDBText36: TppDBText;
    CancelFLAG11: TMenuItem;
    ppLabel53: TppLabel;
    ppMemo5: TppMemo;
    ppLabel14: TppLabel;
    ppDBText37: TppDBText;
    ppDBCalc13: TppDBCalc;
    ppLabel13: TppLabel;
    ppLabel62: TppLabel;
    dbxl01: TppLabel;
    dbxl02: TppLabel;
    ppLabel63: TppLabel;
    tst01: TppLabel;
    title002: TppLabel;
    ppLine21: TppLine;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppLabel73: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    chase001: TppLabel;
    ppShape7: TppShape;
    ppShape9: TppShape;
    ppLabel91: TppLabel;
    ppLine27: TppLine;
    ppLabel92: TppLabel;
    chase002: TppLabel;
    ppLine28: TppLine;
    ppLabel93: TppLabel;
    chase003: TppLabel;
    ppLine30: TppLine;
    ppLabel94: TppLabel;
    chase004: TppLabel;
    ppLabel95: TppLabel;
    chase005: TppLabel;
    ppLine31: TppLine;
    ppLabel96: TppLabel;
    next001: TppLabel;
    ppLabel67: TppLabel;
    next002: TppLabel;
    ppLabel72: TppLabel;
    next004: TppLabel;
    Query4: TClientDataSet;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    chase006: TppLabel;
    ppLine20: TppLine;
    ppLine29: TppLine;
    ppLabel76: TppLabel;
    ppLabel97: TppLabel;
    diff001: TppLabel;
    diff002: TppLabel;
    ppShape12: TppShape;
    tdiff001: TppLabel;
    tdiff002: TppLabel;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppRichText1: TppRichText;
    ppMemo6: TppRichText;
    ppLabel20: TppLabel;
    qnorg001: TppLabel;
    ppLabel99: TppLabel;
    rwo001: TppLabel;
    ppLabel98: TppLabel;
    ct001: TppLabel;
    ppLabel100: TppLabel;
    ppLine23: TppLine;
    ppLabel101: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel80: TppLabel;
    as001: TppLabel;
    ppLabel90: TppLabel;
    as002: TppLabel;
    psect01: TppLabel;
    shjs01: TppLabel;
    pqty01: TppLabel;
    wdiff01: TppLabel;
    mdiff01: TppLabel;
    wdiff02: TppLabel;
    mdiff02: TppLabel;
    ppLine32: TppLine;
    ppLabel48: TppLabel;
    ppLabel50: TppLabel;
    ppLabel55: TppLabel;
    prj001: TppLabel;
    ppLabel59: TppLabel;
    proj002: TppLabel;
    aproj002: TppLabel;
    ppLine33: TppLine;
    ppLabel41: TppLabel;
    ppLabel102: TppLabel;
    proj003: TppLabel;
    tproj003: TppLabel;
    ClientDataSet2: TClientDataSet;
    ROQuery1: TClientDataSet;
    lbl850: TLabel;
    Query1PLINE: TWideStringField;
    Query1SEQ: TIntegerField;
    Query1DSEQ: TIntegerField;
    Query1DATE1: TDateField;
    Query1SHJS: TFloatField;
    Query1ZKTD: TFloatField;
    Query1SCLHJS: TFloatField;
    Query1QYJS: TFloatField;
    Query1FLAG: TWideStringField;
    Query1SJRS: TFloatField;
    Query1SJYC: TFloatField;
    Query1SJRS1: TFloatField;
    Query1SJRS2: TFloatField;
    Query1PQTY: TFloatField;
    Query1AQTY: TFloatField;
    Query1DIFF: TFloatField;
    Query1AQTY1: TFloatField;
    Query1EOT: TFloatField;
    Query1EFF1: TFloatField;
    Query1EFF2: TFloatField;
    Query1XJS: TFloatField;
    Query1PSECT: TFloatField;
    Query1CSTYLE: TWideStringField;
    Query1J2_JOB: TWideStringField;
    Query1RWO: TWideStringField;
    Query1LSTR: TFloatField;
    Query1KSJS: TFloatField;
    Query1ZHJS: TFloatField;
    Query1LFLAG: TWideStringField;
    Query1TPLANT: TWideStringField;
    Query1TSHOP: TWideStringField;
    Query1DT1: TDateField;
    Query1CSECT: TFloatField;
    Query1DBXL: TFloatField;
    Query1J_NO: TWideStringField;
    Query1FCCS: TWideStringField;
    Query1ACOL: TWideStringField;
    Query1SCQTY: TIntegerField;
    Query1FLAG3: TWideStringField;
    Query1FLAG6: TWideStringField;
    Query1FLAGS: TWideStringField;
    Query1CFM: TBooleanField;
    Query1LST: TWideStringField;
    Query1DFLAG: TWideStringField;
    Query1MARKS: TWideStringField;
    Query1DSECT: TFloatField;
    Query1LFLAG1: TFloatField;
    Query1TRS: TFloatField;
    Query1CEOT: TFloatField;
    Query1PQTY1: TFloatField;
    Query1MPSECT: TFloatField;
    Query1PEFF: TFloatField;
    Query1LST1: TWideStringField;
    Query1KSJS1: TFloatField;
    Query1MWFLB: TFloatField;
    Query1MWFS: TFloatField;
    Query1MWFA: TFloatField;
    Query1MWFAC: TFloatField;
    Query1MWFBN: TFloatField;
    Query1GSDMBN: TFloatField;
    Query1RFIDP: TWideStringField;
    Query1MWFSC: TFloatField;
    Query1MWFLBC: TFloatField;
    Query1MWFBNC: TFloatField;
    Query1PRJ1: TFloatField;
    Query1PRJ2: TFloatField;
    Query1PRJ3: TFloatField;
    Query1PRJ4: TFloatField;
    Query1AQTY_SP: TFloatField;
    Query1AQTY1_SP: TFloatField;
    Query1DIFF_SP: TFloatField;
    Query1DBXL_SP: TFloatField;
    Query1EFF2_SP: TFloatField;
    Query1SJRS3: TFloatField;
    Query1CSECT_SP: TFloatField;
    Query1CEOT_SP: TFloatField;
    Query1MANTBL: TIntegerField;
    Query1AWF: TFloatField;
    Query1EWF: TFloatField;
    Query1ASAH: TFloatField;
    Query1ESAH: TFloatField;
    Query1GZW: TIntegerField;
    Query1SGT: TIntegerField;
    Query1ACT_POSTBOX: TIntegerField;
    ExporttoExcel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Query1YHBH: TWideStringField;
    Query1TTL_JS: TFloatField;
    Query1CSECT_DIFF: TFloatField;
    Query1YH1: TFloatField;
    Query1BH1: TFloatField;
    Query1BH2: TFloatField;
    Query1BH3: TFloatField;
    Query1ALXJS: TFloatField;
    Query1EXJS: TFloatField;
    Query1CWO: TWideStringField;
    Query1QNF: TWideStringField;
    Query1QNPC: TWideStringField;
    Query1QNC: TWideStringField;
    Query1XLBX: TFloatField;
    Query1XLBX_LJ: TFloatField;
    Query1YCBX: TFloatField;
    Query1YCBX_LJ: TFloatField;
    Query1DBL: TFloatField;
    Query1IECLS: TWideStringField;
    Query1TMU: TFloatField;
    Query1PFSAH: TFloatField;
    Query1PFXJS: TFloatField;
    Query1RSXC: TFloatField;
    Query1DSZJ_RS: TFloatField;
    Query1DSZJ_SJ: TFloatField;
    Query1SDT: TDateField;
    Query1ZDT: TDateField;
    Query1XLBX_LJ1: TFloatField;
    Query1YCBX_LJ1: TFloatField;
    Query1PPCCFM: TBooleanField;
    Query1SJSHL: TFloatField;
    Query1MPSECT_SP: TFloatField;
    Query1PQTY0: TIntegerField;
    Query1ZYCBX: TFloatField;
    Query1ZYCBX_LJ: TFloatField;
    Query1ZYCBX_LJ1: TFloatField;
    Query1EOT_SP: TFloatField;
    Query1PRJ1_SP: TFloatField;
    Query1DBL_SP: TFloatField;
    Query1MARKS_SP: TWideStringField;
    Query1GSL1: TFloatField;
    Query1GSL1_SP: TFloatField;
    Query1TBU: TFloatField;
    Query1EFF3_SP: TFloatField;
    Query1EFF3: TFloatField;
    Query1XLBX_SP: TFloatField;
    Query1XLBX_LJ_SP: TFloatField;
    Query1XLBX_LJ1_SP: TFloatField;
    Query1YCBX_SP: TFloatField;
    Query1YCBX_LJ_SP: TFloatField;
    Query1YCBX_LJ1_SP: TFloatField;
    Query1ZYCBX_SP: TFloatField;
    Query1ZYCBX_LJ_SP: TFloatField;
    Query1ZYCBX_LJ1_SP: TFloatField;
    Query1CFM1: TBooleanField;
    Query1ALRS: TFloatField;
    Query1marks_sp_wip: TBooleanField;
    Query1marks_sp_cmp: TBooleanField;
    Query1muser: TWideStringField;
    N1: TMenuItem;
    siLang1: TsiLang;
    FixQNGAIdd1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure QuerySCLHJSChange(Sender: TField);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1SJRS1Change(Sender: TField);
    procedure Query1AQTYChange(Sender: TField);
    procedure DBGridEh1Columns13EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns11EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure DBGridEh1TitleClick(Column: TColumnEh);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1Columns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Cancel1Click(Sender: TObject);
    procedure CancelFLAG11Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure DBGridEh1Columns24EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Query1MWFLBChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ExporttoExcel1Click(Sender: TObject);
    procedure Query1AQTY_SPChange(Sender: TField);
    procedure Query1ALRSChange(Sender: TField);
    procedure N1Click(Sender: TObject);
    procedure Query1BeforePost(DataSet: TDataSet);
    procedure FixQNGAIdd1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure prd_QNtracking;
  end;

var
  frmzktd: Tfrmzktd;
  logseq:integer;

implementation

uses mainformu, worksheet, absentformu, mmachineformu, flagformu, ganoteformu,
  ttlcshformu, esewnformu, rsycformu, qnwkfformu, ganotepadformu,
  ganotepad_engformu, gai_notepad_chnformu, gai_notepad_engformu, zktd_wfformu;

{$R *.dfm}

procedure Tfrmzktd.FixQNGAIdd1Click(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_swpm_fixqndseq(:x1,:x2)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
  showmessage('OK!');
end;

procedure Tfrmzktd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if query1.state=dsedit then query1.post;
  action:=cafree;
  frmzktd:=nil;
end;

procedure Tfrmzktd.Query1AfterPost(DataSet: TDataSet);
var
  bs,lh,xl,bb,yb,wb:double;
  x1,x2,x3,x4,x5,x6,s1,s2:double;
  ors,oyc,ers,pfrs,ttlrs:double;
  dt1:tdate;
  pstr:string;
  str1:string;
begin
  screen.cursor:=crSQLWait;
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'x1',ptinput);
      params.createparam(ftfloat,'x2',ptinput);
      params.createparam(ftfloat,'x6',ptinput);
      params.createparam(ftfloat,'x7',ptinput);
      params.createparam(ftfloat,'x8',ptinput);
      params.createparam(ftfloat,'x9',ptinput);
      params.createparam(ftfloat,'x10',ptinput);
      params.createparam(ftfloat,'x11',ptinput);
      params.createparam(ftfloat,'x12',ptinput);
      params.createparam(ftfloat,'x13',ptinput);
      params.createparam(ftfloat,'x14',ptinput);
      params.createparam(ftfloat,'x15',ptinput);
      params.createparam(ftfloat,'x16',ptinput);
      params.createparam(ftfloat,'x17',ptinput);
      params.createparam(ftfloat,'x18',ptinput);
      params.createparam(ftfloat,'x19',ptinput);
      params.createparam(ftdate,'x20',ptinput);
      params.createparam(ftfloat,'x21',ptinput);
      params.createparam(ftboolean,'x22',ptinput);
      params.createparam(ftstring,'x23',ptinput);
      //params.createparam(ftstring,'x24',ptinput);
      params.createparam(ftfloat,'x25',ptinput);
      params.createparam(ftfloat,'x26',ptinput);
      params.createparam(ftfloat,'x27',ptinput);
      params.createparam(ftfloat,'x28',ptinput);
      params.createparam(ftfloat,'x29',ptinput);
      params.createparam(ftfloat,'x30',ptinput);
      params.createparam(ftfloat,'x31',ptinput);
      params.createparam(ftfloat,'x32',ptinput);
      params.createparam(ftfloat,'x33',ptinput);
      params.createparam(ftfloat,'x34',ptinput);
      params.createparam(ftfloat,'x35',ptinput);
      params.createparam(ftfloat,'x36',ptinput);
      params.createparam(ftfloat,'x37',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='update line_shjs set zktd=:x1,sclhjs=:x2,qyjs=:x6,sjrs1=:x7,sjrs2=:x8,sjrs=:x9,sjyc=:x10,pqty=:x11,aqty=:x12,diff=:x13,'
                  +'eot=:x14,aqty1=:x15,eff1=:x16,eff2=:x17,zhjs=:x18,dbxl=:x19,dt1=:x20,csect=:x21,cfm=:x22,dflag=:x23,ceot=:x25,'//marks=:x24,ceot=:x25,'
                  +'mwflb=:x26,mwfs=:x27,mwfa=:x28,mwfac=:x29,mwfbn=:x30,gsdmbn=:x31,aqty_sp=:x32,aqty1_sp=:x33,diff_sp=:x34,dbxl_sp=:x35,eff2_sp=:x36,sjrs3=:x37 '
                  +'where pline=:x3 and seq=:x4 and dseq=:x5';

      if not query1.fieldbyname('zktd').isnull then
      params[0].asfloat:=query1.fieldbyname('zktd').value
      else params[0].asfloat:=0;
      if not query1.fieldbyname('sclhjs').isnull then
      params[1].asfloat:=query1.fieldbyname('sclhjs').value
      else params[1].asfloat:=0;
      if not query1.fieldbyname('qyjs').IsNull then
      params[2].asfloat:=query1.fieldbyname('qyjs').value
      else params[2].asfloat:=0;
      params[3].asfloat:=query1.fieldbyname('sjrs1').value;
      params[4].asfloat:=query1.fieldbyname('sjrs2').value;
      params[5].asfloat:=query1.fieldbyname('sjrs').value;
      params[6].asfloat:=query1.fieldbyname('sjyc').value;
      params[7].asfloat:=query1.fieldbyname('pqty').value;
      params[8].asfloat:=query1.fieldbyname('aqty').value;
      params[9].asfloat:=query1.fieldbyname('diff').value;
      if not query1.fieldbyname('eot').isnull then
      params[10].asfloat:=query1.fieldbyname('eot').value
      else params[10].asfloat:=0;
      if not query1.fieldbyname('aqty1').isnull then
      params[11].asfloat:=query1.fieldbyname('aqty1').value
      else params[11].asfloat:=0;
      params[12].asfloat:=query1.fieldbyname('eff1').value;
      params[13].asfloat:=query1.fieldbyname('eff2').value;
      if not query1.fieldbyname('zhjs').isnull then
      params[14].asfloat:=query1.fieldbyname('zhjs').value
      else params[14].asfloat:=0;
      if not query1.fieldbyname('dbxl').isnull then
      params[15].asfloat:=query1.fieldbyname('dbxl').value
      else params[15].asfloat:=0;
      if not query1.fieldbyname('dt1').isnull then
      params[16].asdate:=query1.fieldbyname('dt1').value;
      if not query1.fieldbyname('csect').isnull then
      params[17].asfloat:=query1.fieldbyname('csect').value
      else params[17].asfloat:=0;
      if not query1.fieldbyname('cfm').isnull then
      params[18].asboolean:=query1.fieldbyname('cfm').value
      else params[18].asboolean:=false;
      if not query1.fieldbyname('dflag').isnull then
      params[19].asstring:=query1.fieldbyname('dflag').value
      else params[19].asstring:='';
      if not query1.fieldbyname('ceot').isnull then
      params[20].asfloat:=query1.fieldbyname('ceot').value
      else params[20].asfloat:=0;
      if not query1.fieldbyname('mwflb').isnull then
      params[21].asfloat:=query1.fieldbyname('mwflb').value
      else params[21].asfloat:=0;
      if not query1.fieldbyname('mwfs').isnull then
      params[22].asfloat:=query1.fieldbyname('mwfs').value
      else params[22].asfloat:=0;
      if not query1.fieldbyname('mwfa').isnull then
      params[23].asfloat:=query1.fieldbyname('mwfa').value
      else params[23].asfloat:=0;
      if not query1.fieldbyname('mwfac').isnull then
      params[24].asfloat:=query1.fieldbyname('mwfac').value
      else params[24].asfloat:=0;
      if not query1.fieldbyname('mwfbn').isnull then
      params[25].asfloat:=query1.fieldbyname('mwfbn').value
      else params[25].asfloat:=0;
      if not query1.fieldbyname('gsdmbn').isnull then
      params[26].asfloat:=query1.fieldbyname('gsdmbn').value
      else params[26].asfloat:=0;
      if not query1.fieldbyname('aqty_sp').isnull then
      params[27].asfloat:=query1.fieldbyname('aqty_sp').value
      else params[27].asfloat:=0;
      if not query1.fieldbyname('aqty1_sp').isnull then
      params[28].asfloat:=query1.fieldbyname('aqty1_sp').value
      else params[28].asfloat:=0;
      if not query1.fieldbyname('diff_sp').isnull then
      params[29].asfloat:=query1.fieldbyname('diff_sp').value
      else params[29].asfloat:=0;
      if not query1.fieldbyname('dbxl_sp').isnull then
      params[30].asfloat:=query1.fieldbyname('dbxl_sp').value
      else params[30].asfloat:=0;
      if not query1.fieldbyname('eff2_sp').isnull then
      params[31].asfloat:=query1.fieldbyname('eff2_sp').value
      else params[31].asfloat:=0;
      if not query1.fieldbyname('sjrs3').isnull then
      params[32].asfloat:=query1.fieldbyname('sjrs3').value
      else params[32].asfloat:=0;
      params[33].asstring:=query1.fieldbyname('pline').value;
      params[34].asinteger:=query1.fieldbyname('seq').value;
      params[35].asinteger:=query1.fieldbyname('dseq').value;
      execute;
    end;
  end;
  }

  str1:='update line_shjs set ';
  if not query1.fieldbyname('zktd').isnull then
  str1:=str1+'zktd='+query1.fieldbyname('zktd').asstring+','
  else str1:=str1+'zktd=0,';
  if not query1.fieldbyname('sclhjs').isnull then
  str1:=str1+'sclhjs='+query1.fieldbyname('sclhjs').asstring+','
  else str1:=str1+'sclhjs=0,';
  if not query1.fieldbyname('qyjs').IsNull then
  str1:=str1+'qyjs='+query1.fieldbyname('qyjs').asstring+','
  else str1:=str1+'qyjs=0,';
  str1:=str1+'sjrs1='+query1.fieldbyname('sjrs1').asstring+',';
  str1:=str1+'sjrs2='+query1.fieldbyname('sjrs2').asstring+',';
  str1:=str1+'sjrs3='+query1.fieldbyname('sjrs3').asstring+',';
  str1:=str1+'sjrs='+query1.fieldbyname('sjrs').asstring+',';
  str1:=str1+'sjyc='+query1.fieldbyname('sjyc').asstring+',';
  str1:=str1+'pqty='+query1.fieldbyname('pqty').asstring+',';
  str1:=str1+'aqty='+query1.fieldbyname('aqty').asstring+',';
  str1:=str1+'diff='+query1.fieldbyname('diff').asstring+',';
  if not query1.fieldbyname('xlbx').isnull then
  str1:=str1+'xlbx='+query1.fieldbyname('xlbx').asstring+','
  else str1:=str1+'xlbx=0,';
  if not query1.fieldbyname('ycbx').isnull then
  str1:=str1+'ycbx='+query1.fieldbyname('ycbx').asstring+','
  else str1:=str1+'ycbx=0,';
  if not query1.fieldbyname('xlbx_sp').isnull then
  str1:=str1+'xlbx_sp='+query1.fieldbyname('xlbx_sp').asstring+','
  else str1:=str1+'xlbx_sp=0,';
  if not query1.fieldbyname('ycbx_sp').isnull then
  str1:=str1+'ycbx_sp='+query1.fieldbyname('ycbx_sp').asstring+','
  else str1:=str1+'ycbx_sp=0,';
  if not query1.fieldbyname('muser').isnull then
  str1:=str1+'muser='''+query1.fieldbyname('muser').value+''','
  else str1:=str1+'muser='''',';
  if not query1.fieldbyname('aqty1').isnull then
  str1:=str1+'aqty1='+query1.fieldbyname('aqty1').asstring+','
  else str1:=str1+'aqty1=0,';
  if not query1.fieldbyname('alrs').isnull then
  str1:=str1+'alrs='+query1.fieldbyname('alrs').asstring+','
  else str1:=str1+'alrs=0,';
  if not query1.fieldbyname('rsxc').isnull then
  str1:=str1+'rsxc='+query1.fieldbyname('rsxc').asstring+','
  else str1:=str1+'rsxc=0,';
  if not query1.fieldbyname('eff3').isnull then
  str1:=str1+'eff3='+query1.fieldbyname('eff3').asstring+','
  else str1:=str1+'eff3=0,';
  if not query1.fieldbyname('eff3_sp').isnull then
  str1:=str1+'eff3_sp='+query1.fieldbyname('eff3_sp').asstring+','
  else str1:=str1+'eff3_sp=0,';
  str1:=str1+'eff1='+query1.fieldbyname('eff1').asstring+',';
  str1:=str1+'eff2='+query1.fieldbyname('eff2').asstring+',';
  if not query1.fieldbyname('zhjs').isnull then
  str1:=str1+'zhjs='+query1.fieldbyname('zhjs').asstring+','
  else str1:=str1+'zhjs=0,';
  if not query1.fieldbyname('dbxl').isnull then
  str1:=str1+'dbxl='+query1.fieldbyname('dbxl').asstring+','
  else str1:=str1+'dbxl=0,';
  if not query1.fieldbyname('dt1').isnull then
  str1:=str1+'dt1='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('dt1').value)+''','
  else str1:=str1+'dt1=null,';
  if not query1.fieldbyname('csect').isnull then
  str1:=str1+'csect='+query1.fieldbyname('csect').asstring+','
  else str1:=str1+'csect=0,';
  if not query1.fieldbyname('cfm').isnull then begin
    if query1.fieldbyname('cfm').value=true then
    str1:=str1+'cfm=1,' else str1:=str1+'cfm=0,';
  end else str1:=str1+'cfm=0,';
  if not query1.fieldbyname('marks_sp_wip').isnull then begin
    if query1.fieldbyname('marks_sp_wip').value=true then
    str1:=str1+'marks_sp_wip=1,' else str1:=str1+'marks_sp_wip=0,';
  end else str1:=str1+'marks_sp_wip=0,';
  if not query1.fieldbyname('marks_sp_cmp').isnull then begin
    if query1.fieldbyname('marks_sp_cmp').value=true then
    str1:=str1+'marks_sp_cmp=1,' else str1:=str1+'marks_sp_cmp=0,';
  end else str1:=str1+'marks_sp_cmp=0,';
  if not query1.fieldbyname('dflag').isnull then
  str1:=str1+'dflag='''+query1.fieldbyname('dflag').value+''','
  else str1:=str1+'dflag='''',';
  if not query1.fieldbyname('ceot').isnull then
  str1:=str1+'ceot='+query1.fieldbyname('ceot').asstring+','
  else str1:=str1+'ceot=0,';
  if not query1.fieldbyname('mwflb').isnull then
  str1:=str1+'mwflb='+query1.fieldbyname('mwflb').asstring+','
  else str1:=str1+'mwflb=0,';
  if not query1.fieldbyname('mwfs').isnull then
  str1:=str1+'mwfs='+query1.fieldbyname('mwfs').asstring+','
  else str1:=str1+'mwfs=0,';
  if not query1.fieldbyname('mwfa').isnull then
  str1:=str1+'mwfa='+query1.fieldbyname('mwfa').asstring+','
  else str1:=str1+'mwfa=0,';
  if not query1.fieldbyname('mwfac').isnull then
  str1:=str1+'mwfac='+query1.fieldbyname('mwfac').asstring+','
  else str1:=str1+'mwfac=0,';
  if not query1.fieldbyname('mwfbn').isnull then
  str1:=str1+'mwfbn='+query1.fieldbyname('mwfbn').asstring+','
  else str1:=str1+'mwfbn=0,';
  if not query1.fieldbyname('dszj_rs').isnull then
  str1:=str1+'dszj_rs='+query1.fieldbyname('dszj_rs').asstring+','
  else str1:=str1+'dszj_rs=0,';
  if not query1.fieldbyname('dszj_sj').isnull then
  str1:=str1+'dszj_sj='+query1.fieldbyname('dszj_sj').asstring+','
  else str1:=str1+'dszj_sj=0,';
  if not query1.fieldbyname('gsdmbn').isnull then
  str1:=str1+'gsdmbn='+query1.fieldbyname('gsdmbn').asstring+','
  else str1:=str1+'gsdmbn=0,';
  if not query1.fieldbyname('aqty_sp').isnull then
  str1:=str1+'aqty_sp='+query1.fieldbyname('aqty_sp').asstring+','
  else str1:=str1+'aqty_sp=0,';
  if not query1.fieldbyname('aqty1_sp').isnull then
  str1:=str1+'aqty1_sp='+query1.fieldbyname('aqty1_sp').asstring+','
  else str1:=str1+'aqty1_sp=0,';
  if not query1.fieldbyname('diff_sp').isnull then
  str1:=str1+'diff_sp='+query1.fieldbyname('diff_sp').asstring+','
  else str1:=str1+'diff_sp=0,';
  if not query1.fieldbyname('dbxl_sp').isnull then
  str1:=str1+'dbxl_sp='+query1.fieldbyname('dbxl_sp').asstring+','
  else str1:=str1+'dbxl_sp=0,';
  if not query1.fieldbyname('eff2_sp').isnull then
  str1:=str1+'eff2_sp='+query1.fieldbyname('eff2_sp').asstring+','
  else str1:=str1+'eff2_sp=0,';
  if not query1.fieldbyname('csect_sp').isnull then
  str1:=str1+'csect_sp='+query1.fieldbyname('csect_sp').asstring+','
  else str1:=str1+'csect_sp=0,';
  if not query1.fieldbyname('ceot_sp').isnull then
  str1:=str1+'ceot_sp='+query1.fieldbyname('ceot_sp').asstring+','
  else str1:=str1+'ceot_sp=0,';
  if not query1.fieldbyname('mantbl').isnull then
  str1:=str1+'mantbl='+query1.fieldbyname('mantbl').asstring+','
  else str1:=str1+'mantbl=0,';
  if not query1.fieldbyname('act_postbox').isnull then
  str1:=str1+'act_postbox='+query1.fieldbyname('act_postbox').asstring+','
  else str1:=str1+'act_postbox=0,';
  if not query1.fieldbyname('sjrs3').isnull then
  str1:=str1+'sjrs3='+query1.fieldbyname('sjrs3').asstring+' '
  else str1:=str1+'sjrs3=0 ';
  str1:=str1+'where pline='''+query1.fieldbyname('pline').value+''' ';
  str1:=str1+'and seq='+query1.fieldbyname('seq').asstring+' ';
  str1:=str1+'and dseq='+query1.fieldbyname('dseq').asstring;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'pline',ptinput);
    params.createparam(ftinteger,'seq',ptinput);
    commandtext:='select sum(zktd) as x1,sum(sclhjs) as x2,sum(qyjs) as x3,sum(zhjs) as x4,sum(ceot) as x5 from line_shjs where pline=:pline and seq=:seq and flag=''0''';
    //commandtext:='select sum(shjs+zktd) as x1,sum(sclhjs) as x2,sum(qyjs) as x3,sum(zhjs) as x4,sum(eot) as x5 from line_shjs where pline=:pline and seq=:seq and flag=''0''';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('x1').isnull then x1:=fieldbyname('x1').value else x1:=0;
    if not fieldbyname('x2').isnull then x2:=fieldbyname('x2').value else x2:=0;
    if not fieldbyname('x3').isnull then x3:=fieldbyname('x3').value else x3:=0;
    if not fieldbyname('x4').isnull then x4:=fieldbyname('x4').value else x4:=0;
    if not fieldbyname('x5').isnull then x5:=fieldbyname('x5').value else x5:=0;
  end;
  // Re-calculate average
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(alrs*csect_sp)/sum(csect_sp) as s1,sum(sjrs2*csect_sp)/sum(csect_sp) as s2,sum((alrs+sjrs3+dszj_rs)*csect_sp)/sum(csect_sp) as s3,'
                +'sum(sjyc*csect_sp)/sum(csect_sp) as s4,sum(eff1*csect_sp)/sum(csect_sp) as s5,sum(eff2*csect_sp)/sum(csect_sp) as s6,'
                +'sum(peff*csect_sp)/sum(csect_sp) as s7,sum(eff2_sp*csect_sp)/sum(csect_sp) as s8,sum(sjrs3*csect_sp)/sum(csect_sp) as s9,sum(dszj_rs*csect_sp)/sum(csect_sp) as s10 '
                +'from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and csect_sp>0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('s1').isnull then begin
      dbgrideh1.Columns[20].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s1').value);
      dbgrideh1.Columns[21].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s2').value);
      dbgrideh1.Columns[22].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s3').value);
      dbgrideh1.Columns[23].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s4').value);
      dbgrideh1.Columns[32].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s5').value);
      if not fieldbyname('s7').isnull then
      dbgrideh1.Columns[33].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s7').value)
      else dbgrideh1.Columns[33].Footers[0].Value:='0.00';
      if lbl850.Caption='SPE' then
      dbgrideh1.Columns[34].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s8').value)
      else dbgrideh1.Columns[34].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s6').value);
      ors:=fieldbyname('s1').value;
      //ers:=fieldbyname('s9').value;
      ttlrs:=fieldbyname('s3').value;
      oyc:=fieldbyname('s4').value;
      x6:=fieldbyname('s8').value;
      pfrs:=fieldbyname('s10').value;
    end else begin
      dbgrideh1.Columns[20].Footers[0].Value:='0.00';
      dbgrideh1.Columns[21].Footers[0].Value:='0.00';
      dbgrideh1.Columns[22].Footers[0].Value:='0.00';
      dbgrideh1.Columns[23].Footers[0].Value:='0.00';
      dbgrideh1.Columns[31].Footers[0].Value:='0.00';
      dbgrideh1.Columns[32].Footers[0].Value:='0.00';
      dbgrideh1.Columns[33].Footers[0].Value:='0.00';
      dbgrideh1.Columns[34].Footers[0].Value:='0.00';
      ors:=0;
      //ers:=0;
      ttlrs:=0;
      oyc:=0;
      x6:=0;
      pfrs:=0;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(sjrs3*csect)/sum(csect) as s9 '
                +'from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and csect>0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('s9').isnull then begin
      ers:=fieldbyname('s9').value;
    end else ers:=0;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(dbxl*csect)/sum(csect) as s1,sum(dbxl_sp*csect)/sum(csect) as s2 from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and csect>0 and dbxl>0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if lbl850.Caption='SPE' then begin
      if not fieldbyname('s2').isnull then dbgrideh1.Columns[31].Footers[0].Value:=formatfloat('0.00',fieldbyname('s2').value)
      else dbgrideh1.Columns[31].Footers[0].Value:='0.00';
    end else begin
      if not fieldbyname('s1').isnull then dbgrideh1.Columns[31].Footers[0].Value:=formatfloat('0.00',fieldbyname('s1').value)
      else dbgrideh1.Columns[31].Footers[0].Value:='0.00';
    end;
  end;
  if worksheet1<>nil then begin
    with worksheet1.tblshedule do begin
      edit;
      fieldbyname('zktd').value:=x1;
      fieldbyname('sclhjs').value:=x2;
      fieldbyname('qyjs').value:=x3;
      fieldbyname('zhjs').value:=x4;
      fieldbyname('bcjs').value:=x5;
      fieldbyname('sjrs').value:=ors;
      fieldbyname('sjyc').value:=oyc;
      fieldbyname('jhl').value:=x6;
      post;
    end;
  end else begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'x1',ptinput);
      params.createparam(ftfloat,'x2',ptinput);
      params.createparam(ftfloat,'x3',ptinput);
      params.createparam(ftfloat,'x4',ptinput);
      params.createparam(ftfloat,'x5',ptinput);
      params.createparam(ftfloat,'x6',ptinput);
      params.createparam(ftfloat,'x7',ptinput);
      params.createparam(ftfloat,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      commandtext:='update tblshedule set zktd=:x1,sclhjs=:x2,qyjs=:x3,zhjs=:x4,bcjs=:x5,sjrs=:x6,sjyc=:x7,jhl=:x8 where pline=:x9 and seq=:x10';
      params[0].asfloat:=x1;
      params[1].asfloat:=x2;
      params[2].asfloat:=x3;
      params[3].asfloat:=x4;
      params[4].asfloat:=x5;
      params[5].asfloat:=ors;
      params[6].asfloat:=oyc;
      params[7].asfloat:=x6;
      params[8].asstring:=query1.fieldbyname('pline').value;
      params[9].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    }
    str1:='update tblshedule set zktd='+floattostr(x1)+',sclhjs='+floattostr(x2)+',qyjs='+floattostr(x3)+',zhjs='+floattostr(x4)+',bcjs='+floattostr(x5)+',pfrs='+floattostr(pfrs);
    str1:=str1+',sjrs='+floattostr(ors)+',sjyc='+floattostr(oyc)+',ers='+floattostr(ers)+',ttlrs='+floattostr(ttlrs)+',jhl='+floattostr(x6)+' where pline='''+query1.FieldByName('pline').Value+''' and seq='+query1.FieldByName('seq').AsString;
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from sp_lwpm_updsclh_qn1(:x1,:x2)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('o_sclhbs').isnull then bs:=fieldbyname('o_sclhbs').value else bs:=0;
    if not fieldbyname('o_sclhlh').isnull then lh:=fieldbyname('o_sclhlh').value else lh:=0;
    if not fieldbyname('o_xlbx').isnull then xl:=fieldbyname('o_xlbx').value else xl:=0;
    if not fieldbyname('o_ycbx').isnull then bb:=fieldbyname('o_ycbx').value else bb:=0;
    if not fieldbyname('o_yb').isnull then yb:=fieldbyname('o_yb').value else yb:=0;
    if not fieldbyname('o_wb').isnull then wb:=fieldbyname('o_wb').value else wb:=0;
  end;
    str1:='update tblshedule set sclh_bs=yszjs+'+floattostr(xl+bb)+',sclh_lh='+floattostr(lh)+',sclh_xl='+floattostr(xl)+',sclh_bb='+floattostr(bb)+',sclh_yb='+floattostr(yb)+',sclh_wb='+floattostr(wb);
    str1:=str1+' where pline='''+query1.FieldByName('pline').Value+''' and seq='+query1.FieldByName('seq').AsString;
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  screen.Cursor:=crDefault;
    {
    pstr:='10 '+query1.fieldbyname('pline').value+' '+query1.fieldbyname('seq').asstring;
    if pos('test',lowercase(application.ExeName))>0 then
    winexec(pchar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
    else winexec(pchar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
    }
end;

procedure Tfrmzktd.Query1ALRSChange(Sender: TField);
var
  alrs,sjrs3:double;
begin
  if not query1.fieldbyname('alrs').isnull then
  alrs:=query1.fieldbyname('alrs').value else alrs:=0;

  if not query1.fieldbyname('sjrs3').isnull then
  sjrs3:=query1.fieldbyname('sjrs3').value else sjrs3:=0;
  query1.fieldbyname('sjrs').value:=alrs+sjrs3;

  query1.fieldbyname('sjrs1').value:=alrs;
  query1.fieldbyname('sjrs2').value:=0;

  if alrs>0 then begin
    query1.fieldbyname('rsxc').value:=alrs-query1.fieldbyname('awf').value;
    query1.fieldbyname('mwflbc').value:=alrs-query1.fieldbyname('mwfsc').value;
    query1.fieldbyname('eff3').value:=query1.fieldbyname('eff2').value*query1.fieldbyname('awf').value/alrs;
    query1.fieldbyname('eff3_sp').value:=query1.fieldbyname('eff2_sp').value*query1.fieldbyname('awf').value/alrs;
  end else begin
    query1.fieldbyname('rsxc').value:=0;
    query1.fieldbyname('mwflbc').value:=0;
  end;
end;

procedure Tfrmzktd.BitBtn1Click(Sender: TObject);
var
  bs,lh,xl,bb,yb,wb:double;
  str1:string;
begin
  if query1.state=dsedit then query1.post;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from sp_lwpm_updsclh_qn1(:x1,:x2)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('o_sclhbs').isnull then bs:=fieldbyname('o_sclhbs').value else bs:=0;
    if not fieldbyname('o_sclhlh').isnull then lh:=fieldbyname('o_sclhlh').value else lh:=0;
    if not fieldbyname('o_xlbx').isnull then xl:=fieldbyname('o_xlbx').value else xl:=0;
    if not fieldbyname('o_ycbx').isnull then bb:=fieldbyname('o_ycbx').value else bb:=0;
    if not fieldbyname('o_yb').isnull then yb:=fieldbyname('o_yb').value else yb:=0;
    if not fieldbyname('o_wb').isnull then wb:=fieldbyname('o_wb').value else wb:=0;
  end;
  str1:='update tblshedule set sclh_bs='+floattostr(bs)+',sclh_lh='+floattostr(lh)+',sclh_xl='+floattostr(xl)+',sclh_bb='+floattostr(bb)+',sclh_yb='+floattostr(yb)+',sclh_wb='+floattostr(wb);
  str1:=str1+' where pline='''+query1.FieldByName('pline').Value+''' and seq='+query1.FieldByName('seq').AsString;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

procedure Tfrmzktd.QuerySCLHJSChange(Sender: TField);
var
  i1,i2:double;
begin
  if not query1.fieldbyname('sclhjs').isnull then i1:=query1.fieldbyname('sclhjs').value
  else i1:=0;
  if not query1.fieldbyname('qyjs').isnull then i2:=query1.fieldbyname('qyjs').value
  else i2:=0;
  query1.fieldbyname('zktd').value:=i1+i2;
end;

procedure Tfrmzktd.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('sclhjs').OnChange:=querysclhjschange;
  query1.fieldbyname('qyjs').OnChange:=querysclhjschange;
  (query1.fieldbyname('ksjs') as tfloatfield).DisplayFormat:='0.0;;''';
  (query1.fieldbyname('dbxl') as tfloatfield).displayformat:='0.00;;''';
  (query1.fieldbyname('csect') as tfloatfield).displayformat:='0.00;;''';
end;

procedure Tfrmzktd.Query1SJRS1Change(Sender: TField);
var
  sjrs1,sjrs2,sjrs3:double;
begin
  if not query1.fieldbyname('sjrs1').isnull then
  sjrs1:=query1.fieldbyname('sjrs1').value else sjrs1:=0;
  if not query1.fieldbyname('sjrs2').isnull then
  sjrs2:=query1.fieldbyname('sjrs2').value else sjrs2:=0;
  if not query1.fieldbyname('sjrs3').isnull then
  sjrs3:=query1.fieldbyname('sjrs3').value else sjrs3:=0;
  query1.fieldbyname('sjrs').value:=sjrs1+sjrs2+sjrs3;
  query1.fieldbyname('alrs').value:=sjrs1+sjrs2;
  if (sjrs1+sjrs2)>0 then begin
    query1.fieldbyname('rsxc').value:=sjrs1+sjrs2-query1.fieldbyname('awf').value;
    query1.fieldbyname('eff3').value:=query1.fieldbyname('eff2').value*query1.fieldbyname('awf').value/(sjrs1+sjrs2);
    query1.fieldbyname('eff3_sp').value:=query1.fieldbyname('eff2_sp').value*query1.fieldbyname('awf').value/(sjrs1+sjrs2);
  end else query1.fieldbyname('rsxc').value:=0;
end;

procedure Tfrmzktd.Query1AQTYChange(Sender: TField);
var
  pqty,aqty,aqty1,js0,js1,js2,xxx001,xlbx,ycbx,cttl,ksjs:double;
  i1:integer;
  dt1:tdate;
  s1:string;
begin
  if not query1.fieldbyname('pqty').isnull then
  pqty:=query1.fieldbyname('pqty').value else pqty:=0;
  if not query1.fieldbyname('aqty').isnull then begin
    if query1.fieldbyname('aqty').value=0 then aqty:=0.01
    else aqty:=query1.fieldbyname('aqty').value;
  end else aqty:=0.01;
  if not query1.fieldbyname('aqty1').isnull then
  aqty1:=query1.fieldbyname('aqty1').value else aqty1:=0;
  query1.fieldbyname('diff').value:=aqty+aqty1;
  if not query1.fieldbyname('csect').isnull then
  cttl:=query1.fieldbyname('csect').value else cttl:=0;
  if query1.fieldbyname('dseq').value=1 then ksjs:=query1.fieldbyname('ksjs').value else ksjs:=0;

    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select arr_ky as ttl from week52 where line=:x1 and date1=:x2';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asdate:=query1.fieldbyname('dt1').value;
      open;
      if not fieldbyname('ttl').isnull then js0:=fieldbyname('ttl').value else js0:=0;
    end;
  if js0-ksjs>=cttl then ycbx:=js0-cttl-ksjs else ycbx:=0;
  if cttl>0 then xlbx:=cttl-aqty/query1.fieldbyname('xjs').value*query1.fieldbyname('eff2').value/query1.fieldbyname('eff1').value else xlbx:=0;

  query1.fieldbyname('xlbx').value:=xlbx;
  query1.fieldbyname('ycbx').value:=ycbx;

  if not query1.fieldbyname('csect').isnull then begin
    if query1.fieldbyname('csect').value>0 then begin
      if query1.fieldbyname('exjs').value>0 then begin
        query1.fieldbyname('eff2').value:=query1.fieldbyname('aqty').value*100.0/(query1.fieldbyname('csect').value*query1.fieldbyname('exjs').value);
        query1.fieldbyname('prj1').value:=query1.fieldbyname('csect').value*query1.fieldbyname('exjs').value*query1.fieldbyname('eff1').value/100.00;
      end else begin
        query1.fieldbyname('eff2').value:=query1.fieldbyname('aqty').value*100.0/(query1.fieldbyname('csect').value*query1.fieldbyname('xjs').value);
        query1.fieldbyname('prj1').value:=query1.fieldbyname('csect').value*query1.fieldbyname('xjs').value*query1.fieldbyname('eff1').value/100.00;
      end;
    end else begin
      query1.fieldbyname('eff2').value:=0;
    end;
  end;
  {
  query1.fieldbyname('zhjs').value:=(-1.0)*aqty1/query1.fieldbyname('xjs').value*100.0/query1.fieldbyname('eff1').value;
  if not query1.fieldbyname('ceot').isnull then begin
    if query1.fieldbyname('ceot').value>0 then begin
      query1.fieldbyname('dbxl').value:=query1.fieldbyname('aqty1').value*100.00/(query1.fieldbyname('ceot').value*query1.fieldbyname('xjs').value);
    end else begin
      query1.fieldbyname('dbxl').value:=0;
    end;
  end;
  if not query1.fieldbyname('ceot_sp').isnull then begin
    if query1.fieldbyname('ceot_sp').value>0 then begin
      query1.fieldbyname('dbxl_sp').value:=query1.fieldbyname('aqty1_sp').value*100.00/(query1.fieldbyname('ceot_sp').value*query1.fieldbyname('xjs').value);
    end else begin
      query1.fieldbyname('dbxl_sp').value:=0;
    end;
  end;
  if query1.fieldbyname('dt1').isnull then query1.FieldByName('dt1').value:=query1.fieldbyname('date1').value;
  }
end;

procedure Tfrmzktd.Query1AQTY_SPChange(Sender: TField);
var
  js0,js1,js2,xxx001,ksjs,ksjs0,ksjs1:double;
  xlbx_sp,ycbx_sp,cttl_sp:double;
  aqty_sp,aqty1_sp:double;
  i1:integer;
  dt1:tdate;
  s1:string;
  q1,q2:double;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cfksjs,cfwcrq,cfwcjs,scqty from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('cfksjs').isnull then ksjs0:=fieldbyname('cfksjs').value else ksjs0:=0;
    if not fieldbyname('cfwcjs').isnull then ksjs1:=fieldbyname('cfwcjs').value else ksjs1:=0;
    if not fieldbyname('cfwcrq').isnull then dt1:=fieldbyname('cfwcrq').value;
    q1:=fieldbyname('scqty').value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(tsqty) as q2 from tbl_lwo_sew_sp where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('q2').isnull then q2:=fieldbyname('q2').value else q2:=0;
  end;
  if not query1.fieldbyname('aqty_sp').isnull then
  aqty_sp:=query1.fieldbyname('aqty_sp').value else aqty_sp:=0;
  if not query1.fieldbyname('aqty1_sp').isnull then
  aqty1_sp:=query1.fieldbyname('aqty1_sp').value else aqty1_sp:=0;
  query1.fieldbyname('diff_sp').value:=aqty_sp+aqty1_sp;
  if not query1.fieldbyname('csect_sp').isnull then
  cttl_sp:=query1.fieldbyname('csect_sp').value else cttl_sp:=0;
  if query1.fieldbyname('dseq').value=1 then ksjs:=ksjs0 else ksjs:=0;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select arr_ky as ttl from week52 where line=:x1 and date1=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asdate:=query1.fieldbyname('dt1').value;
    open;
    if not fieldbyname('ttl').isnull then js0:=fieldbyname('ttl').value else js0:=0;
  end;

  if query1.fieldbyname('dseq').value=1 then begin
    if js0-ksjs>=cttl_sp then ycbx_sp:=js0-cttl_sp-ksjs else ycbx_sp:=0;
    if ycbx_sp>0 then begin
      if query1.fieldbyname('dt1').value=dt1 then begin
        ycbx_sp:=ksjs1-ksjs-cttl_sp;
      end;
      if ycbx_sp<0 then ycbx_sp:=0;
    end;
  end else begin
    if js0>=cttl_sp then ycbx_sp:=js0-cttl_sp else ycbx_sp:=0;
    if ycbx_sp>0 then begin
      if query1.fieldbyname('dt1').value=dt1 then begin
        if (q1<=q2) then
        ycbx_sp:=ksjs1-cttl_sp;
      end;
      if ycbx_sp<0 then ycbx_sp:=0;
    end;
  end;

  if not query1.fieldbyname('csect_sp').isnull then begin
    if query1.fieldbyname('csect_sp').value>0 then begin
      query1.fieldbyname('eff2_sp').value:=query1.fieldbyname('aqty_sp').value*100.0/(query1.fieldbyname('csect_sp').value*query1.fieldbyname('alxjs').value);
      query1.fieldbyname('prj1_sp').value:=query1.fieldbyname('csect_sp').value*query1.fieldbyname('alxjs').value*query1.fieldbyname('eff1').value/100.00;
    end else begin
      query1.fieldbyname('eff2_sp').value:=0;
    end;
  end;
  if cttl_sp>0 then begin
    if query1.fieldbyname('eff2_sp').value>0 then
    xlbx_sp:=cttl_sp-cttl_sp*query1.fieldbyname('eff2_sp').value/query1.fieldbyname('eff1').value//cttl_sp-aqty_sp*100.00/query1.fieldbyname('alxjs').value/query1.fieldbyname('eff2_sp').value cttl_sp-cttl_sp*query1.fieldbyname('eff2_sp').value/query1.fieldbyname('eff1').value
    else xlbx_sp:=cttl_sp;
  end else xlbx_sp:=0;

  if query1.fieldbyname('aqty_sp').value=0 then begin
    xlbx_sp:=0; ycbx_sp:=0;
  end;

  query1.fieldbyname('xlbx_sp').value:=xlbx_sp;
  query1.fieldbyname('ycbx_sp').value:=ycbx_sp;
  if ycbx_sp+xlbx_sp>=0 then begin
    query1.fieldbyname('sclhjs').value:=ycbx_sp+xlbx_sp;
    query1.fieldbyname('qyjs').value:=0.0;
  end else begin
    query1.fieldbyname('sclhjs').value:=0.0;
    query1.fieldbyname('qyjs').value:=ycbx_sp+xlbx_sp;
  end;
end;

procedure Tfrmzktd.Query1BeforePost(DataSet: TDataSet);
var
  csect_sp,csect_sp1:Double;
begin
  csect_sp1:=query1.fieldbyname('csect_sp').value;
  with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select csect_sp from line_shjs where pline=:x1 and seq=:x2 and dt1=:x3';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdate:=query1.fieldbyname('dt1').value;
      open;
      if not fieldbyname('csect_sp').isnull then csect_sp:=fieldbyname('csect_sp').value else csect_sp:=0;
  end;
  if (csect_sp<>csect_sp1) then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdatetime,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftdate,'x6',ptinput);
      commandtext:='insert into tbl_lineaqty(pline,seq,aqty_usr,tm,reasons,dt1) values(:x1,:x2,:x3,:x4,:x5,:x6)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asstring:=frmmain.combobox1.text;
      params[3].asdatetime:=now;
      params[4].asstring:='Sects';
      params[5].asdate:=query1.fieldbyname('dt1').value;
      execute;
    end;
  end;
end;

procedure Tfrmzktd.DBGridEh1Columns13EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  {
    if frmmmachine=nil then frmmmachine:=tfrmmmachine.create(nil);
    with frmmmachine.Query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='select * from line_shjs3 where pline=:x1 and seq=:x2 and dseq=:x3';
      params[0].asstring:=frmzktd.query1.fieldbyname('pline').value;
      params[1].asstring:=frmzktd.query1.fieldbyname('seq').value;
      params[2].asstring:=frmzktd.query1.fieldbyname('dseq').value;
      open;
    end;
    frmmmachine.Show;
  }
  if frmrsyc=nil then frmrsyc:=tfrmrsyc.create(nil);
  frmrsyc.DBText1.DataSource:=datasource1;
  frmrsyc.DBText2.DataSource:=datasource1;
  frmrsyc.DBText3.DataSource:=datasource1;
  frmrsyc.DBText4.DataSource:=datasource1;
  frmrsyc.DBText5.DataSource:=datasource1;
  frmrsyc.DBText6.DataSource:=datasource1;
  frmrsyc.DBText7.DataSource:=datasource1;
  frmrsyc.DBText8.DataSource:=datasource1;
  frmrsyc.DBGridEh1.DataSource:=datasource1;
  frmrsyc.Show;
end;

procedure Tfrmzktd.DBGridEh1Columns11EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  //{
  if frmrsyc=nil then frmrsyc:=tfrmrsyc.create(nil);
  frmrsyc.DBText1.DataSource:=datasource1;
  frmrsyc.DBText2.DataSource:=datasource1;
  frmrsyc.DBText3.DataSource:=datasource1;
  frmrsyc.DBText4.DataSource:=datasource1;
  frmrsyc.DBText5.DataSource:=datasource1;
  frmrsyc.DBText6.DataSource:=datasource1;
  frmrsyc.DBText7.DataSource:=datasource1;
  frmrsyc.DBGridEh1.DataSource:=datasource1;
  frmrsyc.DataSource1.DataSet:=query1;
  frmrsyc.Show;
  //}
  {
  if frmzktd_wf=nil then frmzktd_wf:=tfrmzktd_wf.create(nil);
  frmzktd_wf.DBText1.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText2.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText3.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText4.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText5.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText6.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText7.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText8.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText9.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText10.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText11.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText12.DataSource:=datasource1;//nil;
  frmzktd_wf.DBEdit1.DataSource:=datasource1;//nil;
  //frmrsyc.DBGridEh1.DataSource:=datasource1;
  frmzktd_wf.Show;
  }

  {
  if frmqnwkf=nil then frmqnwkf:=tfrmqnwkf.Create(nil);
  frmqnwkf.Label1.caption:='ZKTD';
  frmqnwkf.Show;
  }
end;

procedure Tfrmzktd.FormShow(Sender: TObject);
var
  dt1:tdate;
begin
  if frmmain.combobox2.text='English' then begin
    dbgrideh1.columns[1].title.caption:='Sewing Date|WIP';
    dbgrideh1.columns[2].title.caption:='Output/Sect (based on 100% eff)';
    dbgrideh1.columns[3].title.caption:='In-line Sect|Def.';
    dbgrideh1.columns[4].title.caption:='In-line Sect|Adj.';
    dbgrideh1.columns[5].title.caption:='In-line Sect|Actual';
    dbgrideh1.columns[6].title.caption:='Loss Sect|PLC';
    dbgrideh1.columns[7].title.caption:='Loss Sect| ';
    dbgrideh1.columns[8].title.caption:='1st Sect Start Time|Code';
    dbgrideh1.columns[9].title.caption:='1st Sect Start Time| ';
    dbgrideh1.columns[10].title.caption:='1st Sect Start Time| ';
    dbgrideh1.columns[11].title.caption:='Last Sect End Time| ';
    dbgrideh1.columns[12].title.caption:='Last Sect End Time| ';
    dbgrideh1.columns[13].title.caption:='Performance|Loss Sect';
    dbgrideh1.columns[14].title.caption:='Performance|Behind Sect';
    dbgrideh1.columns[15].title.caption:='Performance|Advanced Sect';
    dbgrideh1.columns[16].title.caption:='Direct WF (AL Ws)|Def';
    dbgrideh1.columns[17].title.caption:='Direct WF (AL Ws)|Def';
    dbgrideh1.columns[18].title.caption:='Direct WF (AL Ws)|Def';
    dbgrideh1.columns[19].title.caption:='Direct WF (AL Ws)|Def';
    dbgrideh1.columns[20].title.caption:='Direct WF (AL Ws)|Def';
    dbgrideh1.columns[21].title.caption:='Direct WF (AL Ws)|Def';
    dbgrideh1.columns[22].title.caption:='Direct WF (AL Ws)|Actual';
    dbgrideh1.columns[24].title.caption:='Output (Index)|As at Date|Plan|Def.';
    dbgrideh1.columns[25].title.caption:='Output (Index)|As at Date|Plan|Adj.';
    dbgrideh1.columns[26].title.caption:='Output (Index)|As at Date|Actual';
    dbgrideh1.columns[32].title.caption:='Line Eff|Plan';
    dbgrideh1.columns[33].title.caption:='Line Eff|Adj.';
    dbgrideh1.columns[34].title.caption:='Line Eff|Actual';
  end;

  with query2 do begin
    close;
    commandtext:='select rdt1 from tbluser where usr='''+frmmain.combobox1.text+'''';
    open;
    dbgrideh1.Columns[1].ReadOnly:=not fieldbyname('rdt1').Value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    //params.createparam(ftdate,'x3',ptinput);
    if lbl850.caption<>'SPE' then begin
    commandtext:='select sum(sjrs1*csect)/sum(csect) as s1,sum(sjrs2*csect)/sum(csect) as s2,'
                +'sum(sjrs*csect)/sum(csect) as s3,'
                +'sum(sjyc*csect)/sum(csect) as s4,sum(eff1*csect)/sum(csect) as s5,'
                +'sum(eff2*csect)/sum(csect) as s6,sum(peff*csect)/sum(csect) as s7,sum(eff2_sp*csect)/sum(csect) as s8 '
                +'from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and csect>0';
    end else begin
    commandtext:='select sum(sjrs1*csect_sp)/sum(csect_sp) as s1,sum(sjrs2*csect_sp)/sum(csect_sp) as s2,'
                +'sum(sjrs*csect_sp)/sum(csect_sp) as s3,'
                +'sum(sjyc*csect_sp)/sum(csect_sp) as s4,sum(eff1*csect_sp)/sum(csect_sp) as s5,'
                +'sum(eff2*csect_sp)/sum(csect_sp) as s6,sum(peff*csect_sp)/sum(csect_sp) as s7,sum(eff2_sp*csect_sp)/sum(csect_sp) as s8 '
                +'from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and csect_sp>0';
    end;
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    //params[2].asdate:=dt1;//date-1;
    open;

    if not fieldbyname('s1').isnull then begin
      dbgrideh1.Columns[20].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s1').value);
      dbgrideh1.Columns[21].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s2').value);
      dbgrideh1.Columns[22].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s3').value);
      dbgrideh1.Columns[23].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s4').value);
      //dbgrideh1.Columns[28].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s7').value);
      dbgrideh1.Columns[32].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s5').value);
      if not fieldbyname('s7').isnull then
      dbgrideh1.Columns[33].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s7').value)
      else dbgrideh1.Columns[33].Footers[0].Value:='0.00';
      if lbl850.Caption='SPE' then
      dbgrideh1.Columns[34].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s8').value)
      else dbgrideh1.Columns[34].Footers[0].Value:=formatfloat('#0.00',fieldbyname('s6').value);
    end else begin
      dbgrideh1.Columns[20].Footers[0].Value:='0.00';
      dbgrideh1.Columns[21].Footers[0].Value:='0.00';
      dbgrideh1.Columns[22].Footers[0].Value:='0.00';
      dbgrideh1.Columns[23].Footers[0].Value:='0.00';
      dbgrideh1.Columns[31].Footers[0].Value:='0.00';
      dbgrideh1.Columns[32].Footers[0].Value:='0.00';
      dbgrideh1.Columns[33].Footers[0].Value:='0.00';
      dbgrideh1.Columns[34].Footers[0].Value:='0.00';
    end;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    if lbl850.caption<>'SPE' then
    commandtext:='select sum(dbxl*csect)/sum(csect) as s1,sum(dbxl_sp*csect)/sum(csect) as s2 from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and csect>0 and dbxl>0'
    else
    commandtext:='select sum(dbxl*csect_sp)/sum(csect_sp) as s1,sum(dbxl_sp*csect_sp)/sum(csect_sp) as s2 from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and csect_sp>0 and dbxl_sp>0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if lbl850.Caption='SPE' then begin
      if not fieldbyname('s2').isnull then dbgrideh1.Columns[31].Footers[0].Value:=formatfloat('0.00',fieldbyname('s2').value)
      else dbgrideh1.Columns[31].Footers[0].Value:='0.00';
    end else begin
      if not fieldbyname('s1').isnull then dbgrideh1.Columns[31].Footers[0].Value:=formatfloat('0.00',fieldbyname('s1').value)
      else dbgrideh1.Columns[31].Footers[0].Value:='0.00';
    end;
  end;
  if lbl850.caption<>'SPE' then
  frmzktd.Caption:=frmzktd.Caption+' - E Ws'
  else frmzktd.Caption:=frmzktd.Caption+' - AL';
end;

procedure Tfrmzktd.N1Click(Sender: TObject);
var
  am:string;
  am1:double;
begin
  screen.cursor:=crSQLWait;
  try
  am:=InputBox('加減節數:','加減節數','');
  if am>'' then begin
    am1:=strtofloat(am);
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'x1',ptinput);
      params.createparam(ftfloat,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='update line_shjs set zktd=zktd+:x1,qyjs=qyjs+:x2 where pline=:x3 and seq=:x4 and dseq=:x5 and qyjs<0';
      params[0].asfloat:=am1;
      params[1].asfloat:=am1;
      params[2].asstring:=query1.fieldbyname('pline').value;
      params[3].asinteger:=query1.fieldbyname('seq').value;
      params[4].asinteger:=query1.fieldbyname('dseq').value;
      execute;
      close;
      params.clear;
      params.createparam(ftfloat,'x1',ptinput);
      params.createparam(ftfloat,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='update line_shjs set zktd=zktd+:x1,sclhjs=sclhjs+:x2 where pline=:x3 and seq=:x4 and dseq=:x5 and sclhjs>0';
      params[0].asfloat:=am1;
      params[1].asfloat:=am1;
      params[2].asstring:=query1.fieldbyname('pline').value;
      params[3].asinteger:=query1.fieldbyname('seq').value;
      params[4].asinteger:=query1.fieldbyname('dseq').value;
      execute;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmzktd.ppSummaryBand1BeforePrint(Sender: TObject);
var
  dt1,mindt,maxdt:tdate;
  q1,q2:double;
  flag3:string;
  ksrq,owcrq,m3:tdate;
  ksjs,owcjs,ksjs1:double;
  tm:tdatetime;
  d1,d2,d3:double;
begin
  tm:=now;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    if lbl850.caption<>'SPE' then begin
    commandtext:='select sum(sjrs1*csect)/sum(csect) as s1,sum(sjrs2*csect)/sum(csect) as s2,sum(sjrs*csect)/sum(csect) as s3,'
                +'sum(sjyc*csect)/sum(csect) as s4,sum(eff1*csect)/sum(csect) as s5,sum(eff2*csect)/sum(csect) as s6,sum(lstr*csect)/sum(csect) as s7,'
                +'sum(trs*csect)/sum(csect) as s8,sum((sjrs-lstr)*csect)/sum(csect) as s9,sum((sjyc-trs)*csect)/sum(csect) as s10,'
                +'sum(shjs) as s11,sum(psect) as s12,sum(pqty) as s13,sum(eff2_sp*csect)/sum(csect) as s16 from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and csect>0';
    end else begin
    commandtext:='select sum(sjrs1*csect_sp)/sum(csect_sp) as s1,sum(sjrs2*csect_sp)/sum(csect_sp) as s2,sum(sjrs*csect_sp)/sum(csect_sp) as s3,'
                +'sum(sjyc*csect_sp)/sum(csect_sp) as s4,sum(eff1*csect_sp)/sum(csect_sp) as s5,sum(eff2*csect_sp)/sum(csect_sp) as s6,sum(lstr*csect_sp)/sum(csect_sp) as s7,'
                +'sum(trs*csect_sp)/sum(csect_sp) as s8,sum((sjrs-lstr)*csect_sp)/sum(csect_sp) as s9,sum((sjyc-trs)*csect_sp)/sum(csect_sp) as s10,'
                +'sum(shjs) as s11,sum(psect_sp) as s12,sum(pqty) as s13,sum(eff2_sp*csect_sp)/sum(csect_sp) as s16 from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and csect>0';
    end;
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('s7').isnull then begin
      avg001.caption:=formatfloat('0.00',fieldbyname('s7').value);
      avg002.caption:=formatfloat('0.00',fieldbyname('s8').value);
    end else begin
       avg001.Caption:='0.00';
       avg002.Caption:='0.00';
    end;
    if not fieldbyname('s1').isnull then
    avg003.Caption:=formatfloat('0.00',fieldbyname('s1').value) else avg003.Caption:='0.00';
    if not fieldbyname('s2').isnull then
    avg004.Caption:=formatfloat('0.00',fieldbyname('s2').value) else avg004.Caption:='0.00';
    if not fieldbyname('s3').isnull then
    avg005.Caption:=formatfloat('0.00',fieldbyname('s3').value) else avg005.Caption:='0.00';
    if not fieldbyname('s4').isnull then
    avg006.Caption:=formatfloat('0.00',fieldbyname('s4').value) else avg006.Caption:='0.00';
    if not fieldbyname('s5').isnull then
    avg007.Caption:=formatfloat('0.00',fieldbyname('s5').value) else avg007.Caption:='0.00';
    if lbl850.Caption='SPE' then begin
      if not fieldbyname('s16').isnull then
      avg008.Caption:=formatfloat('0.00',fieldbyname('s16').value) else avg008.Caption:='0.00';
    end else begin
      if not fieldbyname('s6').isnull then
      avg008.Caption:=formatfloat('0.00',fieldbyname('s6').value) else avg008.Caption:='0.00';
    end;
    if not fieldbyname('s9').isnull then wdiff02.Caption:=formatfloat('0.00',fieldbyname('s9').value) else wdiff02.caption:='0.00';
    if not fieldbyname('s10').isnull then mdiff02.Caption:=formatfloat('0.00',fieldbyname('s10').value) else mdiff02.caption:='0.00';
    if not fieldbyname('s12').isnull then psect01.Caption:=formatfloat('0.0',fieldbyname('s12').value) else psect01.Caption:='0.0';
    if not fieldbyname('s11').isnull then shjs01.Caption:=formatfloat('0.00',fieldbyname('s11').value) else shjs01.Caption:='0.00';
    if not fieldbyname('s13').isnull then pqty01.Caption:=formatfloat('#,0',fieldbyname('s13').value) else pqty01.Caption:='0';
  end;
  ppmemo1.Lines.Clear;
  ppmemo2.Lines.Clear;
  ppmemo3.Lines.Clear;
  ppmemo4.Lines.clear;
  ppmemo5.Lines.clear;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select distinct dt,rm from tbl_notepad where j_no=:x1 and rwo is null order by dt';
    params[0].asstring:=query1.fieldbyname('j_no').value;
    open;
    first;
    while not eof do begin
      ppmemo1.Lines.Add(fieldbyname('dt').asstring+' ---  '+fieldbyname('rm').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select distinct dt,rm from tbl_notepad where j_no=:x1 and j2_job=:x2 and rwo=:x3 and pline is null order by dt';
    params[0].asstring:=query1.fieldbyname('j_no').value;
    params[1].asstring:=query1.fieldbyname('j2_job').value;
    params[2].asstring:=query1.fieldbyname('rwo').value;
    open;
    first;
    while not eof do begin
      ppmemo2.Lines.Add(fieldbyname('dt').asstring+' ---  '+fieldbyname('rm').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct dt,rm from tbl_notepad where pline=:x1 and pseq=:x2 order by dt';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    first;
    while not eof do begin
      ppmemo3.Lines.Add(fieldbyname('dt').asstring+' ---  '+fieldbyname('rm').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct dt1,marks from line_shjs where pline=:x1 and seq=:x2 and marks>'''' and flag=''0''';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    first;
    while not eof do begin
      ppmemo4.Lines.Add(fieldbyname('dt1').asstring+'  '+fieldbyname('marks').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select distinct updt,rson from tbl_rwofdt where j_no=:x1 and j2_job=:x2 and rwo=:x3 and rson>''''';
    params[0].asstring:=query1.fieldbyname('j_no').value;
    params[1].asstring:=query1.fieldbyname('j2_job').value;
    params[2].asstring:=query1.fieldbyname('rwo').value;
    open;
    first;
    while not eof do begin
      ppmemo5.Lines.Add(fieldbyname('updt').asstring+'  '+fieldbyname('rson').value);
      application.ProcessMessages;
      next;
    end;
  end;
  if ppdbcalc9.Value>ppdbcalc6.Value then ppdbcalc9.Font.Color:=clRed
  else ppdbcalc9.Font.Color:=clBlack;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    if lbl850.Caption<>'SPE' then
    commandtext:='select sum(dbxl*csect)/sum(csect) as s1,sum(dbxl_sp*csect)/sum(csect) as s11 from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and csect>0'
    else
    commandtext:='select sum(dbxl*csect_sp)/sum(csect_sp) as s1,sum(dbxl_sp*csect_sp)/sum(csect_sp) as s11 from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and csect_sp>0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if lbl850.Caption='SPE' then begin
      if not fieldbyname('s11').isnull then
        dbxl02.caption:=formatfloat('0.00',fieldbyname('s11').value)
      else dbxl02.Caption:='0.00';
    end else begin
      if not fieldbyname('s1').isnull then
        dbxl02.caption:=formatfloat('0.00',fieldbyname('s1').value)
      else dbxl02.Caption:='0.00';
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select flag3 from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('flag3').isnull then flag3:=fieldbyname('flag3').value else flag3:='';
  end;
  if copy(flag3,1,1)<>'x' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select sum(pqty) as q1,sum(aqty) as q2 from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and (csect>0 or aqty>0 or aqty1>0)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('q1').isnull then q1:=fieldbyname('q1').value else q1:=0;
      if not fieldbyname('q2').isnull then q2:=fieldbyname('q2').value else q2:=0;
    end;
    if abs(q1-q2)>=1 then begin
      with query2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdate,'x3',ptinput);
            commandtext:='select * from sp_gai_projected_1(:x1,:x2,:x3)';
            params[0].asstring:=query1.fieldbyname('pline').value;
            params[1].asinteger:=query1.fieldbyname('seq').value;
            params[2].asdate:=query1.fieldbyname('dt1').value;
            open;
        owcrq:=fieldbyname('o_enddt').value;
        owcjs:=fieldbyname('o_endtm').value;
      end;
      chase003.Caption:='c  '+formatfloat('0.0',owcjs)+'  /  '+formatdatetime('yyyy/MM/dd',owcrq);
    end else begin
      chase001.Caption:='--';
      chase002.Caption:='--';
      chase003.Caption:='--';
    end;
  end else begin
    chase001.Caption:='--';
    chase002.Caption:='--';
    chase003.Caption:='--';
  end;
  //clRed or clGreen
  //
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select min(dt1) as m1,max(dt1) as m2 from line_shjs where csect>0 and pline=:x1 and seq=:x2 and flag=''0''';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('m1').isnull then mindt:=fieldbyname('m1').value else mindt:=encodedate(1899,12,30);
    if not fieldbyname('m2').isnull then maxdt:=fieldbyname('m2').value else maxdt:=encodedate(1899,12,30);
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select max(date1) as m3 from line_shjs where pline=:x1 and seq=:x2 and flag=''0''';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('m3').isnull then m3:=fieldbyname('m3').value else m3:=encodedate(1899,12,30);
  end;
  if maxdt>encodedate(1899,12,30) then begin
    as001.Caption:='As at '+formatdatetime('yyyy/MM/dd',maxdt);
    as002.Caption:='As at '+formatdatetime('yyyy/MM/dd',maxdt);
  end else begin
    as001.Caption:='';
    as002.Caption:='';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select ksjs1 from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and date1=:x3';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdate:=m3;
    open;
    if not fieldbyname('ksjs1').isnull then ksjs1:=fieldbyname('ksjs1').value else ksjs1:=0;
  end;
  if m3<owcrq then begin
    chase003.Font.Color:=clRed;
  end else if m3=owcrq then begin
    if ksjs1<owcjs then chase003.Font.Color:=clRed
    else if ksjs1=owcjs then chase003.Font.Color:=clBlack
    else chase003.Font.Color:=clGreen;
  end else begin
    chase003.Font.Color:=clGreen;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(psect) as s1,sum(csect) as s2 from line_shjs where pline=:x1 and seq=:x2 and csect>=0 and psect>0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('s1').isnull then begin
      chase006.Caption:=formatfloat('0.0',fieldbyname('s1').value-fieldbyname('s2').value)+' ('+formatfloat('0.0',fieldbyname('s1').value)+'-'+formatfloat('0.0',fieldbyname('s2').value)+')';
    end else chase006.Caption:='0.0';
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='execute procedure sp_gennextga(:x1,:x2,:x3)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm;
    execute;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    commandtext:='select * from tbl_next_gai where pline=:x1 and seq=:x2 and tm=:x3';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm;
    open;
    if not fieldbyname('pline').isnull then begin
      next001.Caption:=formatfloat('0.00',fieldbyname('pqty').value);
      next002.Caption:=formatfloat('0.00',fieldbyname('aqty1').value);
      //next003.Caption:=formatfloat('0.00',fieldbyname('ct1').value);
      next004.Caption:=formatfloat('0.00',fieldbyname('ct2').value)+' ('+formatfloat('0.00 %',fieldbyname('eff1').value)+')';
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select sum(pqty) as s1,sum(aqty) as s2,sum(diff) as s3 from line_shjs where pline=:x1 and seq=:x2 and (pqty>0 or aqty>0 or aqty1>0) and flag=''0'' and csect is not null';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('s1').isnull then begin
      d1:=roundto(fieldbyname('s1').value,0);
      d2:=roundto(fieldbyname('s2').value,0);
      d3:=roundto(fieldbyname('s3').value,0);
      tdiff001.Caption:=formatfloat('#0',d1-d2);//fieldbyname('s1').value-fieldbyname('s2').value);
      tdiff002.Caption:=formatfloat('#0',d1-d3);//fieldbyname('s1').value-fieldbyname('s3').value);
    end else begin
      tdiff001.Caption:='';
      tdiff002.Caption:='';
    end;
  end;

  //---- ppMemo6 for transit flow flag ----//
  prd_QNtracking;
  ppRichText1.SelAttributes.Style:=[fsBold];
end;

procedure Tfrmzktd.BitBtn2Click(Sender: TObject);
var
  owcrq,dt1:tdate;
  owcjs:double;
  scqty,tqty,q1,q2,q3:double;
begin
  screen.Cursor:=crSQLWait;
  if query1.state=dsedit then query1.post;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from calc_wcrq(:x1,:x2)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('o_wcrq').isnull then owcrq:=fieldbyname('o_wcrq').value;
    if not fieldbyname('o_wcjs').isnull then owcjs:=fieldbyname('o_wcjs').value-1;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    if lbl850.caption='SPE' then
    commandtext:='select distinct scqty,sum(aqty_sp+aqty1_sp) as tqty,max(dt1) as dt from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' group by scqty'
    else commandtext:='select distinct scqty,sum(aqty+aqty1) as tqty,max(dt1) as dt from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' group by scqty';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('scqty').isnull then scqty:=fieldbyname('scqty').value else scqty:=0;
    if not fieldbyname('tqty').isnull then tqty:=fieldbyname('tqty').value else tqty:=0;
    if not fieldbyname('dt').isnull then dt1:=fieldbyname('dt').value;
  end;
  if (scqty<=tqty) and (scqty>0) then owcrq:=dt1;
  if query1.active then begin
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
        if fieldbyname('cfmd').value=true then q1:=1 else q1:=0;
      end else q1:=0;
    end;
    if q1=1 then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select sum(tqty) as q2,sum(pqty) as q3 from tbl_lwo where pline=:x1 and seq=:x2';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        open;
        if not fieldbyname('q2').isnull then q2:=fieldbyname('q2').value else q2:=0;
        if not fieldbyname('q3').isnull then q3:=fieldbyname('q3').value else q3:=0;
      end;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select scqty,acol,flag5,qrxc,rqxc,tzlcrq,tz_w,yqlcrq,yq_w,cfwcrq,cfksrq from tblshedule where pline=:x1 and seq=:x2';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
    end;
    if q2>0 then
    title002.Caption:='QN Qty = '+formatfloat('0,0',q2)+' pcs (picked and cfmd)'
    else title002.Caption:='QN Qty =     pcs (picked and cfmd)';
    if q1=0 then
    title001.Caption:='QN Qty = '+formatfloat('0,0',query3.fieldbyname('scqty').asfloat)+' pcs (planned)'
    else title001.Caption:='QN Qty = '+formatfloat('0,0',q3)+' pcs (planned)';
    title001.Caption:=title001.Caption+'   Clr Code = '+query3.fieldbyname('acol').value;
    if not query3.fieldbyname('rqxc').isnull then begin
      //if query3.fieldbyname('rqxc').value>0.00 then
      chase004.Caption:=query3.fieldbyname('rqxc').asstring
      //else chase004.Caption:='--';
    end else chase004.Caption:='--';
    {
    if not query3.fieldbyname('qrxc').isnull then begin
      if query3.fieldbyname('qrxc').value>0.00 then
      chase005.Caption:=query3.fieldbyname('qrxc').asstring
      else chase005.Caption:='--';
    end else chase005.Caption:='--';
    }
    if not query3.fieldbyname('qrxc').isnull then begin
      if not query3.fieldbyname('flag5').isnull then begin
        if query3.fieldbyname('flag5').value>'' then begin
          chase005.Caption:=query3.fieldbyname('flag5').value+' '+query3.fieldbyname('qrxc').asstring;
        end else begin
          if query3.fieldbyname('qrxc').value>0.00 then
          chase005.Caption:=query3.fieldbyname('qrxc').asstring
          else chase005.Caption:='--';
        end;
      end else begin
        if query3.fieldbyname('qrxc').value>0.00 then
        chase005.Caption:=query3.fieldbyname('qrxc').asstring
        else chase005.Caption:='--';
      end;
    end else chase005.Caption:='--';
    if not query3.fieldbyname('tzlcrq').isnull then
      qnorg001.Caption:=formatdatetime('yy/MM/dd',query3.fieldbyname('tzlcrq').value)+' '+query3.fieldbyname('tz_w').value
    else qnorg001.Caption:='--';
    if not query3.fieldbyname('yqlcrq').isnull then
      rwo001.Caption:=formatdatetime('yy/MM/dd',query3.fieldbyname('yqlcrq').value)+' '+query3.fieldbyname('yq_w').value
    else rwo001.Caption:='--';
    //if not query3.fieldbyname('xc2').isnull then ct001.Caption:=formatfloat('0.0',query3.fieldbyname('xc2').value)
    //else ct001.Caption:='0.0';
    ct001.Caption:=formatfloat('0.0',trunc(query3.fieldbyname('cfwcrq').value)-trunc(query3.fieldbyname('cfksrq').value)+1);
    if pos('test',application.ExeName)>0 then tst01.Caption:='-Test' else tst01.Caption:='';
    if lbl850.Caption='SPE' then begin
      ppDBText20.DataField:='AQTY_SP';
      ppDBCalc7.DataField:='AQTY_SP';
      ppDBText21.DataField:='AQTY1_SP';
      ppDBCalc8.DataField:='AQTY1_SP';
      ppDBText22.DataField:='DIFF_SP';
      ppDBCalc9.DataField:='DIFF_SP';
      ppDBText26.DataField:='EFF2_SP';
      ppDBText31.DataField:='CSECT_SP';
      ppDBCalc12.DataField:='CSECT_SP';
      ppDBText37.DataField:='CEOT_SP';
      ppDBCalc13.DataField:='CEOT_SP';
    end else begin
      ppDBText20.DataField:='AQTY';
      ppDBCalc7.DataField:='AQTY';
      ppDBText21.DataField:='AQTY1';
      ppDBCalc8.DataField:='AQTY1';
      ppDBText22.DataField:='DIFF';
      ppDBCalc9.DataField:='DIFF';
      ppDBText26.DataField:='EFF2';
      ppDBText31.DataField:='CSECT';
      ppDBCalc12.DataField:='CSECT';
      ppDBText37.DataField:='CEOT';
      ppDBCalc13.DataField:='CEOT';
    end;
    ppReport1.Print;
  end;
  screen.Cursor:=crDefault;
end;

procedure Tfrmzktd.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmzktd.DBGridEh1TitleClick(Column: TColumnEh);
var
  r26,r27,r28,r29,r30,r31,r32,r33,r34:boolean;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select r26,r27,r28,r29,r30,r31,r32,r33,r34 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    r26:=fieldbyname('r26').value;
    r27:=fieldbyname('r27').value;
    r28:=fieldbyname('r28').value;
    r29:=fieldbyname('r29').value;
    r30:=fieldbyname('r30').value;
    r31:=fieldbyname('r31').value;
    r32:=fieldbyname('r32').value;
    r33:=fieldbyname('r33').value;
    r34:=fieldbyname('r34').value;
  end;
  if column=dbgrideh1.Columns[6] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='4';
    frmflag.Caption:='標幟 - Arranged phase of line eff as at date(opt perf)/安排當日段拉效率(制作中表現)';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=4';
      open;
    end;
    if r31 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if column=dbgrideh1.Columns[8] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='3';
    frmflag.Caption:='標幟 - QN/SQN Dynamic Process at workshop / 數頁/游數頁動力流程-車間';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=3';
      open;
    end;
    if r32 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else begin
    //Frozen columns
    if dbgrideh1.FrozenCols=0 then dbgrideh1.FrozenCols:=column.Index+1
    else dbgrideh1.FrozenCols:=0;
  end;
end;

procedure Tfrmzktd.ExporttoExcel1Click(Sender: TObject);
begin
  try
  if savedialog1.execute then begin
    //SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,DBGridEh1,SaveDialog1.FileName,true);
    if ExptoExcel(DBGridEh1,'','')=true then showmessage('OK');
  end;
  finally
    //showmessage('succeeded!');
  end;
end;

procedure Tfrmzktd.DBGridEh1DblClick(Sender: TObject);
var
  dif:string;
begin
  if dbgrideh1.SelectedIndex=26 then begin
    dif:='1';
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      if lbl850.caption='SPE' then
      commandtext:='select seq from line_shjs_remarks1_sp where pline=:x1 and seq=:x2 and dt1=:x3'
      else commandtext:='select seq from line_shjs_remarks1 where pline=:x1 and seq=:x2 and dt1=:x3';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdate:=query1.fieldbyname('dt1').value;
      open;
      if not fieldbyname('seq').isnull then dif:='1' else dif:='2';
    end;
    if lbl850.caption='SPE' then begin
      if not query1.fieldbyname('marks_sp').isnull then begin
        if query1.fieldbyname('marks_sp').value>'' then dif:='2'
        else dif:='1';
      end else dif:='1';
    end else begin
      if not query1.fieldbyname('marks').isnull then begin
        if query1.fieldbyname('marks').value>'' then dif:='2'
        else dif:='1';
      end else dif:='1';
    end;
    if dif='2' then begin
      if frmganote=nil then frmganote:=tfrmganote.Create(nil);
      frmganote.DBText1.DataSource:=frmzktd.datasource1;
      frmganote.DBText2.DataSource:=frmzktd.datasource1;
      frmganote.DBText3.DataSource:=frmzktd.datasource1;
      frmganote.DBText4.DataSource:=frmzktd.datasource1;
      frmganote.DBText5.DataSource:=frmzktd.datasource1;
      frmganote.DBMemo1.DataBinding.DataSource:=frmzktd.datasource1;
      if lbl850.caption='SPE' then
      frmganote.DBMemo1.DataBinding.DataField:='MARKS_SP'
      else frmganote.DBMemo1.DataBinding.DataField:='MARKS';
      frmganote.Label6.Caption:='ZKTD';
      frmganote.lbl850.caption:=lbl850.caption;
      frmganote.Show;
    end else if dif='1' then begin
      if frmgai_notepad_chn=nil then frmgai_notepad_chn:=tfrmgai_notepad_chn.Create(nil);
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        if lbl850.caption='SPE' then
        commandtext:='execute procedure sp_line_shjs_remarks_new_sp(:x1,:x2,:x3)'
        else commandtext:='execute procedure sp_line_shjs_remarks_new(:x1,:x2,:x3)';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asdate:=query1.fieldbyname('dt1').value;
        execute;
      end;
      frmgai_notepad_chn.Label41.Caption:='ZKTD';
      frmgai_notepad_chn.lbl850.caption:=lbl850.caption;
      frmgai_notepad_chn.Show;
    end;
  end;
end;

procedure Tfrmzktd.DBGridEh1Columns4EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if lbl850.caption='SPE' then begin
  if frmttlcsh=nil then frmttlcsh:=tfrmttlcsh.Create(nil);
  frmttlcsh.DBText1.DataSource:=frmzktd.DataSource1;
  frmttlcsh.DBText2.DataSource:=frmzktd.DataSource1;
  frmttlcsh.DBText3.DataSource:=frmzktd.DataSource1;
  frmttlcsh.DBText4.DataSource:=frmzktd.DataSource1;
  frmttlcsh.DBText5.DataSource:=frmzktd.DataSource1;
  frmttlcsh.DBText6.DataSource:=frmzktd.DataSource1;
  frmttlcsh.DateEdit1.Date:=frmzktd.query1.fieldbyname('dt1').value;
  frmttlcsh.Label4.Caption:='ZKTD';
  if pos('F',query1.fieldbyname('pline').value)>0 then begin
    frmttlcsh.Label31.Visible:=true;
    frmttlcsh.Edit1.Visible:=true;
  end else begin
    frmttlcsh.Label31.Visible:=false;
    frmttlcsh.Edit1.Visible:=false;
  end;
  with Query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='execute procedure sp_genqncalendar(:x1,:x2,:x3)';
    params[0].asstring:=frmzktd.query1.fieldbyname('pline').value;
    params[1].asinteger:=frmzktd.query1.fieldbyname('seq').value;
    params[2].asdate:=frmzktd.query1.fieldbyname('dt1').value;
    execute;
  end;
  frmttlcsh.qns001.caption:='1/1';
  with Query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select flag3 from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=frmzktd.query1.fieldbyname('pline').value;
    params[1].asinteger:=frmzktd.query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('flag3').isnull then begin
      if pos('s',fieldbyname('flag3').value)>0 then begin
        frmttlcsh.qns001.caption:='1/'+copy(fieldbyname('flag3').value,1,pos('s',fieldbyname('flag3').value)-1);
      end;
    end;
  end;
  frmttlcsh.speedbutton1.visible:=false;
  frmttlcsh.Show;
  end;
end;

procedure Tfrmzktd.Cancel1Click(Sender: TObject);
var
  can_del:string;
begin
  can_del:='1';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select aqty_sp,diff_sp,aqty,diff from line_shjs where pline=:x1 and seq=:x2 and dseq=:x3';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asinteger:=query1.fieldbyname('dseq').value;
    open;
    if fieldbyname('aqty_sp').value>=1.00 then can_del:='0';
    if fieldbyname('diff_sp').value>=1.00 then can_del:='0';
    if fieldbyname('aqty').value>=1.00 then can_del:='0';
    if fieldbyname('diff').value>=1.00 then can_del:='0';
  end;
  if can_del='1' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='delete from line_shjs where pline=:x1 and seq=:x2 and dseq=:x3';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asinteger:=query1.fieldbyname('dseq').value;
      execute;
    end;
    query1.delete;
  end else begin
    showmessage('Can not delete this row because there is actual data!');
  end;
end;

procedure Tfrmzktd.CancelFLAG11Click(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='delete from line_shjs where pline=:x1 and seq=:x2 and flag=''1''';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
end;

procedure Tfrmzktd.ppDetailBand1BeforePrint(Sender: TObject);
var
  d1,d2,d3:double;
  x000:double;
  dt1:tdate;
begin
  if lbl850.Caption='SPE' then begin
    if not query1.fieldbyname('dbxl_sp').isnull then begin
      if query1.fieldbyname('dbxl_sp').value=0 then dbxl01.caption:='--'
      else dbxl01.Caption:=formatfloat('0.00',query1.fieldbyname('dbxl').value);
    end else dbxl01.Caption:='--';
    if not query1.fieldbyname('csect_sp').isnull then begin
      if not query1.fieldbyname('aqty_sp').isnull then begin
        d1:=roundto(query1.fieldbyname('pqty').value,0);
        d2:=roundto(query1.fieldbyname('aqty_sp').value,0);
        d3:=roundto(query1.fieldbyname('diff_sp').value,0);
        diff001.Caption:=formatfloat('#0',d1-d2);
        diff002.Caption:=formatfloat('#0',d1-d3);
      end else begin
        diff001.caption:='--';
        diff002.Caption:='--';
      end;
      wdiff01.Caption:=formatfloat('0.00',query1.fieldbyname('sjrs').value-query1.fieldbyname('lstr').value);
      mdiff01.Caption:=formatfloat('0.00',query1.fieldbyname('sjyc').value-query1.fieldbyname('trs').value);
    end else begin
      diff001.caption:='--';
      diff002.Caption:='--';
      wdiff01.caption:='';
      mdiff01.caption:='';
    end;
  end else begin
    if not query1.fieldbyname('dbxl').isnull then begin
      if query1.fieldbyname('dbxl').value=0 then dbxl01.caption:='--'
      else dbxl01.Caption:=formatfloat('0.00',query1.fieldbyname('dbxl').value);
    end else dbxl01.Caption:='--';
    if not query1.fieldbyname('csect').isnull then begin
      if not query1.fieldbyname('aqty').isnull then begin
        d1:=roundto(query1.fieldbyname('pqty').value,0);
        d2:=roundto(query1.fieldbyname('aqty').value,0);
        d3:=roundto(query1.fieldbyname('diff').value,0);
        diff001.Caption:=formatfloat('#0',d1-d2);
        diff002.Caption:=formatfloat('#0',d1-d3);
      end else begin
        diff001.caption:='--';
        diff002.Caption:='--';
      end;
      wdiff01.Caption:=formatfloat('0.00',query1.fieldbyname('sjrs').value-query1.fieldbyname('lstr').value);
      mdiff01.Caption:=formatfloat('0.00',query1.fieldbyname('sjyc').value-query1.fieldbyname('trs').value);
    end else begin
      diff001.caption:='--';
      diff002.Caption:='--';
      wdiff01.caption:='';
      mdiff01.caption:='';
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select min(dt1) as dt1 from line_shjs where flag=''0'' and pline=:x1 and seq=:x2 and dt1 is not null';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    dt1:=fieldbyname('dt1').value;
  end;
  if not query1.fieldbyname('dt1').isnull then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select * from sp_gai_projected_1(:x1,:x2,:x3)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdate:=query1.fieldbyname('dt1').value;
      open;
      if not fieldbyname('o_pqty').isnull then prj001.Caption:=formatfloat('#0',fieldbyname('o_pqty').value)
      else prj001.Caption:=formatfloat('#0',query1.fieldbyname('pqty').value);
      if not fieldbyname('o_eff').isnull then proj002.caption:=formatfloat('0.00',fieldbyname('o_eff').value)
      else proj002.Caption:=formatfloat('0.00',query1.fieldbyname('eff1').value);
    end;
  end;
end;

procedure Tfrmzktd.DBGridEh1Columns24EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dseq:integer;
  tm:tdatetime;
  pstr:string;
begin
  screen.Cursor:=crSQLWait;
  try
  tm:=now;
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_lwo_gensew(:x1,:x2)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_lwo_calc_sewdt_new(:x1,:x2,:x3,:x4)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm;
    params[3].asdate:=query1.fieldbyname('dt1').value;
    open;
    if not fieldbyname('dseq').isnull then dseq:=fieldbyname('dseq').value else dseq:=601;
  end;
  if frmesewn=nil then frmesewn:=tfrmesewn.create(nil);
  frmesewn.Label8.Caption:='ZKTD';
  with frmesewn.Query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    if lbl850.Caption='SPE' then
    commandtext:='select * from tbl_lwo_sew_sp where pline=:x1 and seq=:x2'
    else commandtext:='select * from tbl_lwo_sew where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
  end;
  frmesewn.dbgrideh1.Columns[6].Field:=frmesewn.query1.fieldbyname('aq'+inttostr(dseq-600)+'');
  frmesewn.dbgrideh1.Columns[7].Field:=frmesewn.query1.fieldbyname('a'+inttostr(dseq-600)+'01');
  frmesewn.dbgrideh1.Columns[8].Field:=frmesewn.query1.fieldbyname('a'+inttostr(dseq-600)+'02');
  frmesewn.dbgrideh1.Columns[9].Field:=frmesewn.query1.fieldbyname('a'+inttostr(dseq-600)+'03');
  frmesewn.dbgrideh1.Columns[10].Field:=frmesewn.query1.fieldbyname('cq'+inttostr(dseq-600)+'');
  frmesewn.dbtext1.DataSource:=DataSource1;
  frmesewn.dbtext2.DataSource:=DataSource1;
  frmesewn.dbtext3.DataSource:=DataSource1;
  frmesewn.dbtext4.DataSource:=DataSource1;
  frmesewn.dbtext5.DataSource:=DataSource1;
  frmesewn.dbtext6.DataSource:=DataSource1;
  frmesewn.dbtext7.DataSource:=DataSource1;
  frmesewn.dbtext8.DataSource:=DataSource1;
  frmesewn.dbtext9.DataSource:=DataSource1;
  frmesewn.label12.caption:=worksheet1.tblshedule.fieldbyname('j2_job').value+'-'+worksheet1.tblshedule.fieldbyname('cwo').value+'-'+worksheet1.tblshedule.fieldbyname('rwo').value+'-'+worksheet1.tblshedule.fieldbyname('fccs').value;
  if lbl850.caption='SPE' then begin
    frmesewn.Caption:=frmesewn.Caption+' - AL';
    frmesewn.lbl850.Caption:='SPE';
    frmesewn.dbgrideh1.columns[5].Title.caption:='850 Sewn|Ttl';
    frmesewn.dbgrideh1.columns[6].Title.caption:='850 Sewn|NoT|Today Qty';
    frmesewn.dbgrideh1.columns[7].Title.caption:='850 Sewn|NoT|N1';
    frmesewn.dbgrideh1.columns[8].Title.caption:='850 Sewn|NoT|N2';
    frmesewn.dbgrideh1.columns[9].Title.caption:='850 Sewn|NoT|OT';
  end else begin
    frmesewn.Caption:=frmesewn.Caption+' - EWs';
    frmesewn.lbl850.Caption:='';
    frmesewn.dbgrideh1.columns[5].Title.caption:='915 Sewn|Ttl';
    frmesewn.dbgrideh1.columns[6].Title.caption:='915 Sewn|NoT|Today Qty';
    frmesewn.dbgrideh1.columns[7].Title.caption:='915 Sewn|NoT|N1';
    frmesewn.dbgrideh1.columns[8].Title.caption:='915 Sewn|NoT|N2';
    frmesewn.dbgrideh1.columns[9].Title.caption:='915 Sewn|NoT|OT';
  end;
  frmesewn.Show;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmzktd.prd_QNtracking;
var
  pk01,pk02,ts101,ts102,ts201,ts202,ts301,ts302,ts401,ts402,s001,s002:string;
  dt1,dt2:tdate;
  c1,c2,c3,c4,c5:integer;
  i1,i2,i3,i4,i5,i6,i7,i8:string;
  tm0:tdatetime;
  pd1,pd2,t1d1,t1d2,sd1,sd2,t2d1,t2d2,t3d1,t3d2,t4d1,t4d2:tdate;
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16:string;
  lc1,lc2,lc3,lc4,lc5,lc6,lc7:integer;
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
      // Flow 1
      if copy(fieldbyname('flag4').value,1,1)='b' then begin
        i1:='b'; i2:='';
      end else if copy(fieldbyname('flag4').value,1,1)='B' then begin
        i1:='B'; i2:='';
      end else if copy(fieldbyname('flag4').value,1,1)='d' then begin
        i1:='b'; i2:='d';
      end else if copy(fieldbyname('flag4').value,1,1)='D' then begin
        i1:='B'; i2:='D';
      end else if copy(fieldbyname('flag4').value,1,1)='E' then begin
        i1:='B'; i2:='E';
      end;
      // Flow 2
      if copy(fieldbyname('flag4').value,2,1)='f' then begin
        i3:='f'; i4:='';
      end else if copy(fieldbyname('flag4').value,2,1)='F' then begin
        i3:='F'; i4:='';
      end else if copy(fieldbyname('flag4').value,2,1)='g' then begin
        i3:='f'; i4:='g';
      end else if copy(fieldbyname('flag4').value,2,1)='G' then begin
        i3:='F'; i4:='G';
      end else if copy(fieldbyname('flag4').value,2,1)='H' then begin
        i3:='F'; i4:='H';
      end;
      {
      // Flow 3
      if copy(fieldbyname('flag4').value,3,1)='j' then begin
        i5:='j'; i6:='';
      end else if copy(fieldbyname('flag4').value,3,1)='J' then begin
        i5:='J'; i6:='';
      end else if copy(fieldbyname('flag4').value,3,1)='k' then begin
        i5:='j'; i6:='k';
      end else if copy(fieldbyname('flag4').value,3,1)='K' then begin
        i5:='J'; i6:='K';
      end else if copy(fieldbyname('flag4').value,3,1)='L' then begin
        i5:='J'; i6:='L';
      end;
      // Flow 4
      if copy(fieldbyname('flag4').value,4,1)='m' then begin
        i7:='m'; i8:='';
      end else if copy(fieldbyname('flag4').value,4,1)='M' then begin
        i7:='M'; i8:='';
      end else if copy(fieldbyname('flag4').value,4,1)='n' then begin
        i7:='m'; i8:='n';
      end else if copy(fieldbyname('flag4').value,4,1)='N' then begin
        i7:='M'; i8:='N';
      end else if copy(fieldbyname('flag4').value,4,1)='P' then begin
        i7:='M'; i8:='P';
      end;
      }
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
  end;
  with Query3 do begin
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
      pd1:=fieldbyname('dt1').value;
    end else begin
      pk01:='';
      pd1:=encodedate(1899,12,30);
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then pk02:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else pk02:='';
      pd2:=fieldbyname('dt2').value;
    end else begin
      pk02:='';
      pd2:=encodedate(1899,12,30);
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
      t1d1:=fieldbyname('dt1').value;
    end else begin
      ts101:='';
      t1d1:=encodedate(1899,12,30);
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then ts102:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else ts102:='';
      t1d2:=fieldbyname('dt2').value;
    end else begin
      ts102:='';
      t1d2:=encodedate(1899,12,30);
    end;
  end;

  with query3 do begin
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
      sd1:=fieldbyname('dt1').value;
    end else begin
      s001:='';
      sd1:=encodedate(1899,12,30);
    end;
    if not fieldbyname('dt2').isnull then begin
      if (fieldbyname('dt2').value>encodedate(1899,12,30)) and (fieldbyname('dt2').value<date) then s002:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else s002:='';
      sd2:=fieldbyname('dt2').value;
    end else begin
      s002:='';
      sd2:=encodedate(1899,12,30);
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
  end;
  with query3 do begin
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
      t2d1:=fieldbyname('dt1').value;
    end else begin
      ts201:='';
      t2d1:=encodedate(1899,12,30);
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then ts202:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else ts202:='';
      t2d2:=fieldbyname('dt2').value;
    end else begin
      ts202:='';
      t2d2:=encodedate(1899,12,30);
    end;
  end;
  {
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
      t3d1:=fieldbyname('dt1').value;
    end else begin
      ts301:='';
      t3d1:=encodedate(1899,12,30);
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then ts302:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else ts302:='';
      t3d2:=fieldbyname('dt2').value;
    end else begin
      ts302:='';
      t3d2:=encodedate(1899,12,30);
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
      t4d1:=fieldbyname('dt1').value;
    end else begin
      ts401:='';
      t4d1:=encodedate(1899,12,30);
    end;
    if not fieldbyname('dt2').isnull then begin
      if fieldbyname('dt2').value>encodedate(1899,12,30) then ts402:=formatdatetime('yy/MM/dd',fieldbyname('dt2').value)
      else ts402:='';
      t4d2:=fieldbyname('dt2').value;
    end else begin
      ts402:='';
      t4d2:=encodedate(1899,12,30);
    end;
  end;
  }
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
    {
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
    }
  end;

  if c1=1 then begin
    if pk01>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd1;
        params[4].asstring:=i1;
        execute;
      end;
    end;
    if ts101>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t1d1;
        params[4].asstring:=i2;
        execute;
      end;
    end;
    if s001>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd1;
        params[4].asstring:=i3;
        execute;
      end;
    end;
    if ts201>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:=i4;
        execute;
      end;
    end;
    {
    if ts301>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d1;
        params[4].asstring:=i5;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d1;
        params[4].asstring:=i6;
        execute;
      end;
    end;
    if ts401>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t4d1;
        params[4].asstring:=i7;
        execute;
      end;
    end;
    }
  end else if c2=1 then begin
    if pk01>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd1;
        params[4].asstring:='b';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd2;
        params[4].asstring:=i1;
        execute;
      end;
    end;
    if ts101>'' then begin
     if pk02>ts101 then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t1d1;
        params[4].asstring:='d';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd2;
        params[4].asstring:=i2;
        execute;
      end;
     end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t1d1;
        params[4].asstring:=i2;
        execute;
      end;
     end;
    end;
    if s001>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd1;
        params[4].asstring:=i3;
        execute;
      end;
    end;
    if ts201>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:=i4;
        execute;
      end;
    end;
    {
    if ts301>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d1;
        params[4].asstring:=i5;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d1;
        params[4].asstring:=i6;
        execute;
      end;
    end;
    if ts401>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t4d1;
        params[4].asstring:=i7;
        execute;
      end;
    end;
    }
  end else if c3=1 then begin
    if pk01>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd1;
        params[4].asstring:='b';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd2;
        params[4].asstring:=i1;
        execute;
      end;
    end;
    if ts101>'' then begin
     if pk02>ts101 then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t1d1;
        params[4].asstring:='d';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd2;
        params[4].asstring:='D';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t1d2;
        params[4].asstring:=i2;
        execute;
      end;
     end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t1d1;
        params[4].asstring:='D';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:=i2;
        execute;
      end;
     end;
    end;
    if s002>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd1;
        params[4].asstring:='f';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd2;
        params[4].asstring:=i3;
        execute;
      end;
     if sd2>t2d1 then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:='g';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd2;
        params[4].asstring:='G';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d2;
        params[4].asstring:=i4;
        execute;
      end;
     end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:='g';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d2;
        params[4].asstring:=i4;
        execute;
      end;
     end;
    end else begin
     if s001>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd1;
        params[4].asstring:=i3;
        execute;
      end;
     end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:='g';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d2;
        params[4].asstring:=i4;
        execute;
      end;
    end;
    {
    if ts301>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d1;
        params[4].asstring:=i5;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d1;
        params[4].asstring:=i6;
        execute;
      end;
    end;
    if ts401>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t4d1;
        params[4].asstring:=i7;
        execute;
      end;
    end;
    }
  end else if c4=1 then begin
    if pk01>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd1;
        params[4].asstring:='b';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd2;
        params[4].asstring:=i1;
        execute;
      end;
    end;
    if ts101>'' then begin
     if pk02>ts101 then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t1d1;
        params[4].asstring:='d';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd2;
        params[4].asstring:='D';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t1d2;
        params[4].asstring:=i2;
        execute;
      end;
     end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t1d1;
        params[4].asstring:='D';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:=i2;
        execute;
      end;
     end;
    end;
    if s002>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd1;
        params[4].asstring:='f';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd2;
        params[4].asstring:=i3;
        execute;
      end;
     if sd2>t2d1 then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:='g';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd2;
        params[4].asstring:='G';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d2;
        params[4].asstring:=i4;
        execute;
      end;
     end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:='g';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d2;
        params[4].asstring:=i4;
        execute;
      end;
     end;
    end else begin
     if s001>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd1;
        params[4].asstring:=i3;
        execute;
      end;
     end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:='g';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d2;
        params[4].asstring:=i4;
        execute;
      end;
    end;
    {
    if ts301>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d1;
        params[4].asstring:=i5;
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d1;
        params[4].asstring:=i6;
        execute;
      end;
    end;
    if ts401>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t4d1;
        params[4].asstring:=i7;
        execute;
      end;
    end;
    }
  end else if c5=1 then begin
    if pk01>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd1;
        params[4].asstring:='b';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd2;
        params[4].asstring:=i1;
        execute;
      end;
    end;
    if ts101>'' then begin
     if pk02>ts101 then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t1d1;
        params[4].asstring:='d';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd2;
        params[4].asstring:='D';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t1d2;
        params[4].asstring:=i2;
        execute;
      end;
     end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t1d1;
        params[4].asstring:='D';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:=i2;
        execute;
      end;
     end;
    end;
    if s002>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd1;
        params[4].asstring:='f';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd2;
        params[4].asstring:=i3;
        execute;
      end;
     if sd2>t2d1 then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:='g';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd2;
        params[4].asstring:='G';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d2;
        params[4].asstring:=i4;
        execute;
      end;
     end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:='g';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d2;
        params[4].asstring:=i4;
        execute;
      end;
     end;
    end else begin
     if s001>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd1;
        params[4].asstring:=i3;
        execute;
      end;
     end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:='g';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d2;
        params[4].asstring:=i4;
        execute;
      end;
    end;
    {
    if ts301>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d1;
        params[4].asstring:='j';
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d1;
        params[4].asstring:='k';
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d2;
        params[4].asstring:='J';
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d2;
        params[4].asstring:='K';
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d2;
        params[4].asstring:='L';
        execute;
      end;
    end;
    if ts401>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t4d1;
        params[4].asstring:=i7;
        execute;
      end;
    end;
    }
  end else begin
    if pk01>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd1;
        params[4].asstring:='b';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd2;
        params[4].asstring:=i1;
        execute;
      end;
    end;
    if ts101>'' then begin
     if pk02>ts101 then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t1d1;
        params[4].asstring:='d';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=pd2;
        params[4].asstring:='D';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t1d2;
        params[4].asstring:=i2;
        execute;
      end;
     end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t1d1;
        params[4].asstring:='D';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:=i2;
        execute;
      end;
     end;
    end;
    if s002>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd1;
        params[4].asstring:='f';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd2;
        params[4].asstring:=i3;
        execute;
      end;
     if sd2>t2d1 then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:='g';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd2;
        params[4].asstring:='G';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d2;
        params[4].asstring:=i4;
        execute;
      end;
     end else begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:='g';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d2;
        params[4].asstring:=i4;
        execute;
      end;
     end;
    end else begin
     if s001>'' then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=sd1;
        params[4].asstring:=i3;
        execute;
      end;
     end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d1;
        params[4].asstring:='g';
        execute;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t2d2;
        params[4].asstring:=i4;
        execute;
      end;
    end;
    {
    if ts301>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d1;
        params[4].asstring:='j';
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d1;
        params[4].asstring:='k';
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d2;
        params[4].asstring:='J';
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d2;
        params[4].asstring:='K';
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t3d2;
        params[4].asstring:='L';
        execute;
      end;
    end;
    if ts402>'' then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t4d1;
        params[4].asstring:='m';
        execute;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftdate,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        commandtext:='execute procedure sp_updqntrack(:x1,:x2,:x3,:x4,:x5)';
        params[0].asdatetime:=tm0;
        params[1].asstring:=query1.fieldbyname('pline').value;
        params[2].asinteger:=query1.fieldbyname('seq').value;
        params[3].asdate:=t4d2;
        params[4].asstring:='M';
        execute;
      end;
    end;
    }
  end;
  s1:='';s9:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select * from tbl_qntrack where tm=:x1 and pline=:x2 and seq=:x3 and xh<=6 order by dt,xh';
    params[0].asdatetime:=tm0;
    params[1].asstring:=query1.fieldbyname('pline').value;
    params[2].asinteger:=query1.fieldbyname('seq').value;
    open;
    last;
    if recordcount>1 then begin
      first;
      s1:=formatdatetime('yy/MM/dd',fieldbyname('dt').value)+' '+fieldbyname('flg').value;
      last;
      s1:=s1+'     '+formatdatetime('yy/MM/dd',fieldbyname('dt').value)+' '+fieldbyname('flg').value;
    end else if recordcount=1 then begin
      s1:=formatdatetime('yy/MM/dd',fieldbyname('dt').value)+' '+fieldbyname('flg').value;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select * from tbl_qntrack where tm=:x1 and pline=:x2 and seq=:x3 and xh>6 and xh<=12 order by dt,xh';
    params[0].asdatetime:=tm0;
    params[1].asstring:=query1.fieldbyname('pline').value;
    params[2].asinteger:=query1.fieldbyname('seq').value;
    open;
    last;
    if recordcount>1 then begin
      first;
      s9:=formatdatetime('yy/MM/dd',fieldbyname('dt').value)+' '+fieldbyname('flg').value;
      last;
      s9:=s9+'     '+formatdatetime('yy/MM/dd',fieldbyname('dt').value)+' '+fieldbyname('flg').value;
    end else if recordcount=1 then begin
      s9:=formatdatetime('yy/MM/dd',fieldbyname('dt').value)+' '+fieldbyname('flg').value;
    end;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select flag4 from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('flag4').isnull then s2:=fieldbyname('flag4').value else s2:='';
  end;

  //ppMemo6.Lines.clear;
  //ppMemo6.Lines.add('QN Transit Process - Time/Status Records : -             FLAG CODE:  '+s2);
  //ppMemo6.Lines.Add(s1);
  //ppMemo6.Lines.Add(s9);
  s2:='QN Transit Process - Time/Status Records : -             FLAG CODE:  '+s2;
  s2:=s2+char(13)+char(10)+'Flow 1:  '+s1+' '+char(13)+char(10)+'Flow 2:  '+s9+' ';
  ppMemo6.RichText:=s2+char(13)+char(10);
  //ppMemo6.RichText:=ppMemo6.RichText+s1+char(13)+char(10);
  //ppMemo6.RichText:=ppMemo6.RichText+s9+char(13)+char(10);
  {
  lc1:=pos(' f ',s2);lc2:=pos(' g ',s2);lc3:=pos(' F ',s2);lc4:=pos(' G ',s2);lc5:=pos(' H ',s2);lc6:=pos(' m ',s2);lc7:=pos(' M ',s2);
  if lc1>0 then begin
    ppMemo6.SelStart:=lc1-10;
    ppMemo6.SelLength:=12;
    ppMemo6.SelAttributes.Style:=[fsBold];
  end;
  if lc2>0 then begin
    ppMemo6.SelStart:=lc2-10;
    ppMemo6.SelLength:=12;
    ppMemo6.SelAttributes.Style:=[fsBold];
  end;
  if lc3>0 then begin
    ppMemo6.SelStart:=lc3-10;
    ppMemo6.SelLength:=12;
    ppMemo6.SelAttributes.Style:=[fsBold];
  end;
  if lc4>0 then begin
    ppMemo6.SelStart:=lc4-10;
    ppMemo6.SelLength:=12;
    ppMemo6.SelAttributes.Style:=[fsBold];
  end;
  if lc5>0 then begin
    ppMemo6.SelStart:=lc5-10;
    ppMemo6.SelLength:=12;
    ppMemo6.SelAttributes.Style:=[fsBold];
  end;
  if lc6>0 then begin
    ppMemo6.SelStart:=lc6-10;
    ppMemo6.SelLength:=12;
    ppMemo6.SelAttributes.Style:=[fsBold];
  end;
  if lc7>0 then begin
    ppMemo6.SelStart:=lc7-10;
    ppMemo6.SelLength:=12;
    ppMemo6.SelAttributes.Style:=[fsBold];
  end;
  }
end;

procedure Tfrmzktd.Query1MWFLBChange(Sender: TField);
var
  s1,s2,s3,s4:double;
begin
  if not query1.fieldbyname('mwflb').isnull then s1:=query1.fieldbyname('mwflb').value else s1:=0;
  if not query1.fieldbyname('mwfa').isnull then s2:=query1.fieldbyname('mwfa').value else s2:=0;
  //if not query1.fieldbyname('mwfac').isnull then s3:=query1.fieldbyname('mwfac').value else s3:=0;
  if not query1.fieldbyname('mwfs').isnull then s4:=query1.fieldbyname('mwfs').value else s4:=0;
  query1.fieldbyname('sjrs2').value:=s1+s2+s4;
end;

procedure Tfrmzktd.FormCreate(Sender: TObject);
begin
  //siLang1.LoadAllFromFile(extractfilepath(application.ExeName)+'LWPM_LANGUAGE.sil',false);
  siLang1.Language:=frmmain.ComboBox2.text;
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
          params[2].AsString:='QN GAI';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
end;

procedure Tfrmzktd.FormDestroy(Sender: TObject);
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

end.
