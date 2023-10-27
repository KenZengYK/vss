unit swfpoolformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DB, DBClient, Buttons, Grids, DBGridEh, ExtCtrls, ppBands,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppViewr, GridsEh, myChkBox,
  ppStrtch, ppMemo, ppParameter;

type
  Tfrmswfpool = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    Query4: TClientDataSet;
    ComboBox1: TComboBox;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    title001: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    line001: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel13: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    query5: TClientDataSet;
    DataSource2: TDataSource;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Edit1: TEdit;
    ppLabel10: TppLabel;
    ws001: TppLabel;
    ppLabel12: TppLabel;
    line0001: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape2: TppShape;
    ppLabel16: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText8: TppDBText;
    ppLabel17: TppLabel;
    ppDBText9: TppDBText;
    BitBtn9: TBitBtn;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText10: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    title002: TppLabel;
    ppLabel29: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel30: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppShape4: TppShape;
    ppDBPipeline2: TppDBPipeline;
    DataSource3: TDataSource;
    Query6: TClientDataSet;
    ppLabel28: TppLabel;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText21: TppDBText;
    rg1: TRadioGroup;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    Label4: TLabel;
    Edit2: TEdit;
    BitBtn6: TBitBtn;
    Label5: TLabel;
    ComboBox3: TComboBox;
    ppLabel20: TppLabel;
    ppDBText22: TppDBText;
    ppLabel38: TppLabel;
    ppDBText23: TppDBText;
    ppLabel39: TppLabel;
    x01: TppLabel;
    ppLabel40: TppLabel;
    chk01: TmyCheckBox;
    ppLabel41: TppLabel;
    chk02: TmyCheckBox;
    ppLabel42: TppLabel;
    chk03: TmyCheckBox;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText13: TppDBText;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine12: TppLine;
    ppLabel31: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel36: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppDBText14: TppDBText;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDBText15: TppDBText;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel55: TppLabel;
    linex01: TppLabel;
    myDBCheckBox3: TmyDBCheckBox;
    myDBCheckBox4: TmyDBCheckBox;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppShape7: TppShape;
    ppLabel21: TppLabel;
    ppLabel32: TppLabel;
    ppLabel34: TppLabel;
    ppShape8: TppShape;
    ppLine18: TppLine;
    ppLabel37: TppLabel;
    ppLine19: TppLine;
    ppLabel56: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLabel58: TppLabel;
    ppShape9: TppShape;
    ppLine22: TppLine;
    ppLabel59: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
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
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLabel72: TppLabel;
    ppDBText29: TppDBText;
    ppLabel73: TppLabel;
    ppDBText28: TppDBText;
    ppLine17: TppLine;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText30: TppDBText;
    ppLabel77: TppLabel;
    ppDBText31: TppDBText;
    ppLabel78: TppLabel;
    ppDBText32: TppDBText;
    stitle001: TppLabel;
    ppLine44: TppLine;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppShape10: TppShape;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine45: TppLine;
    ppLabel88: TppLabel;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
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
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLabel103: TppLabel;
    Query7: TClientDataSet;
    DataSource4: TDataSource;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppDBText33: TppDBText;
    ppLabel57: TppLabel;
    ppLabel106: TppLabel;
    ppLine1: TppLine;
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
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    sx01: TppLabel;
    sx02: TppLabel;
    sx03: TppLabel;
    mx01: TppLabel;
    mx02: TppLabel;
    mx03: TppLabel;
    fx01: TppLabel;
    fx02: TppLabel;
    fx03: TppLabel;
    sx05: TppLabel;
    sx06: TppLabel;
    ppLabel128: TppLabel;
    sx04: TppLabel;
    ppLabel129: TppLabel;
    sx07: TppLabel;
    ppLabel130: TppLabel;
    mx04: TppLabel;
    ppLabel131: TppLabel;
    fx04: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel132: TppLabel;
    ppDBCalc2: TppDBCalc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure DBGridEh1Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure query5NewRecord(DataSet: TDataSet);
    procedure query5AfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure querychange(Sender: TField);
    procedure querychange1(Sender: TField);
    procedure querychange2(Sender: TField);
    procedure BitBtn8Click(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBGridEh1Columns3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand3BeforePrint(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmswfpool: Tfrmswfpool;

implementation

uses mainformu, swfskillformu, wfprocessformu, swfleaveformu, swfmcformu;

{$R *.dfm}

procedure Tfrmswfpool.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmswfpool:=nil;
end;

procedure Tfrmswfpool.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q1 from tblswfid';
    open;
    if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
  query1.fieldbyname('tplant').value:=combobox1.text;
  query1.fieldbyname('swfdt').value:=date;
  query1.fieldbyname('swfdt1').value:=date;
  query1.fieldbyname('tshop').value:=combobox2.text;
  query1.fieldbyname('pline').value:=edit1.text;
  if rg1.ItemIndex=0 then query1.fieldbyname('smf').value:='1'
  else if rg1.ItemIndex=1 then query1.fieldbyname('smf').value:='2'
  else if rg1.ItemIndex=2 then query1.fieldbyname('smf').value:='5'
  else if rg1.ItemIndex=3 then query1.fieldbyname('smf').value:='3'
  else query1.fieldbyname('smf').value:='1';
  if rg1.ItemIndex=0 then query1.fieldbyname('smf_status').value:='SWF'
  else if rg1.ItemIndex=1 then query1.fieldbyname('smf_status').value:='MWF'
  else if rg1.ItemIndex=2 then query1.fieldbyname('smf_status').value:='FWF'
  else query1.fieldbyname('smf_status').value:='SWF'; 
end;

procedure Tfrmswfpool.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tblswfid where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          params.createparam(ftdate,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          params.createparam(ftstring,'x9',ptinput);
          params.createparam(ftstring,'x10',ptinput);
          params.createparam(ftstring,'x11',ptinput);
          params.createparam(ftstring,'x12',ptinput);
          params.createparam(ftstring,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(ftboolean,'x15',ptinput);
          params.createparam(ftstring,'x16',ptinput);
          params.CreateParam(ftboolean,'x17',ptinput);
          params.createparam(ftdate,'x18',ptinput);
          params.createparam(ftboolean,'x19',ptinput);
          params.createparam(ftstring,'x20',ptinput);
          params.createparam(ftstring,'x21',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          commandtext:='update tblswfid set swfna=:x1,swfdt=:x2,swfdt1=:x3,swfarea=:x4,swfcp=:x5,swfid=:x6,pline=:x8,swfsta=:x9,swfstt=:x10,'
                      +'cline=:x11,tshop=:x12,swftyp=:x13,seniority=:x14,dt1chk=:x15,sex=:x16,inact=:x17,res_dt=:x18,direct=:x19,'
                      +'smf_status=:x20,idpool=:x21 where seq=:x7';
          if not query1.fieldbyname('swfna').isnull then
          params[0].asstring:=query1.fieldbyname('swfna').value
          else params[0].asstring:='';
          if not query1.fieldbyname('swfdt').isnull then
          params[1].asdate:=query1.fieldbyname('swfdt').value;
          if not query1.fieldbyname('swfdt1').isnull then
          params[2].asdate:=query1.fieldbyname('swfdt1').value;
          if not query1.fieldbyname('swfarea').isnull then
          params[3].asstring:=query1.fieldbyname('swfarea').value
          else params[3].asstring:='';
          if not query1.fieldbyname('swfcp').isnull then
          params[4].asstring:=query1.fieldbyname('swfcp').value
          else params[4].asstring:='';
          if not query1.fieldbyname('swfid').isnull then
          params[5].asstring:=query1.fieldbyname('swfid').value
          else params[5].asstring:='';
          if not query1.fieldbyname('pline').isnull then
          params[6].asstring:=query1.fieldbyname('pline').value
          else params[6].asstring:='';
          if not query1.fieldbyname('swfsta').isnull then
          params[7].asstring:=query1.fieldbyname('swfsta').value
          else params[7].asstring:='';
          if not query1.fieldbyname('swfstt').isnull then
          params[8].asstring:=query1.fieldbyname('swfstt').value
          else params[8].asstring:='';
          if not query1.fieldbyname('cline').isnull then
          params[9].asstring:=query1.fieldbyname('cline').value
          else params[9].asstring:='';
          if not query1.fieldbyname('tshop').isnull then
          params[10].asstring:=query1.fieldbyname('tshop').value
          else params[10].asstring:='';
          if not query1.fieldbyname('swftyp').isnull then
          params[11].asstring:=query1.fieldbyname('swftyp').value
          else params[11].asstring:='';
          if not query1.fieldbyname('seniority').isnull then
          params[12].asfloat:=query1.fieldbyname('seniority').value
          else params[12].asfloat:=0;
          if not query1.fieldbyname('dt1chk').isnull then
          params[13].asboolean:=query1.fieldbyname('dt1chk').value
          else params[13].asboolean:=false;
          if not query1.fieldbyname('sex').isnull then
          params[14].asstring:=query1.fieldbyname('sex').value
          else params[14].asstring:='Female';
          if not query1.fieldbyname('inact').isnull then
          params[15].asboolean:=query1.fieldbyname('inact').value
          else params[15].asboolean:=false;
          if not query1.fieldbyname('res_dt').isnull then
          params[16].asdate:=query1.fieldbyname('res_dt').value;
          if not query1.fieldbyname('direct').isnull then
          params[17].asboolean:=query1.fieldbyname('direct').value
          else params[17].asboolean:=true;
          if not query1.fieldbyname('smf_status').isnull then
          params[18].asstring:=query1.fieldbyname('smf_status').value
          else params[18].asstring:='SWF';
          if not query1.fieldbyname('idpool').isnull then
          params[19].asstring:=query1.fieldbyname('idpool').value
          else params[19].asstring:='dWF';
          params[20].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          params.createparam(ftdate,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          params.createparam(ftboolean,'x8',ptinput);
          params.createparam(ftinteger,'x9',ptinput);
          params.createparam(ftstring,'x10',ptinput);
          params.createparam(ftstring,'x11',ptinput);
          params.createparam(ftstring,'x12',ptinput);
          params.createparam(ftstring,'x13',ptinput);
          params.createparam(ftstring,'x14',ptinput);
          params.createparam(ftstring,'x15',ptinput);
          params.createparam(ftfloat,'x16',ptinput);
          params.createparam(ftstring,'x17',ptinput);
          params.createparam(ftboolean,'x18',ptinput);
          params.createparam(ftstring,'x19',ptinput);
          params.createparam(ftdate,'x20',ptinput);
          params.createparam(ftboolean,'21',ptinput);
          params.createparam(ftstring,'x22',ptinput);
          params.createparam(ftstring,'x23',ptinput);
          commandtext:='insert into tblswfid(swfna,swfdt,swfdt1,swfarea,swfcp,swfid,pline,lend,seq,tplant,swfsta,swfstt,cline,tshop,swftyp,seniority,smf,dt1chk,sex,inact,res_dt,direct,smf_status,idpool) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,:x18,:x19,0,:x20,:x21,:x22,:x23)';
          if not query1.fieldbyname('swfna').isnull then
          params[0].asstring:=query1.fieldbyname('swfna').value
          else params[0].asstring:='';
          if not query1.fieldbyname('swfdt').isnull then
          params[1].asdate:=query1.fieldbyname('swfdt').value;
          if not query1.fieldbyname('swfdt1').isnull then
          params[2].asdate:=query1.fieldbyname('swfdt1').value;
          if not query1.fieldbyname('swfarea').isnull then
          params[3].asstring:=query1.fieldbyname('swfarea').value
          else params[3].asstring:='';
          if not query1.fieldbyname('swfcp').isnull then
          params[4].asstring:=query1.fieldbyname('swfcp').value
          else params[4].asstring:='';
          if not query1.fieldbyname('swfid').isnull then
          params[5].asstring:=query1.fieldbyname('swfid').value
          else params[5].asstring:='';
          if not query1.fieldbyname('pline').isnull then
          params[6].asstring:=query1.fieldbyname('pline').value
          else params[6].asstring:='';
          params[7].asboolean:=false;
          params[8].asinteger:=query1.fieldbyname('seq').value;
          params[9].asstring:=query1.fieldbyname('tplant').value;
          if not query1.fieldbyname('swfsta').isnull then
          params[10].asstring:=query1.fieldbyname('swfsta').value
          else params[10].asstring:='';
          if not query1.fieldbyname('swfstt').isnull then
          params[11].asstring:=query1.fieldbyname('swfstt').value
          else params[11].asstring:='';
          if not query1.fieldbyname('cline').isnull then
          params[12].asstring:=query1.fieldbyname('cline').value
          else params[12].asstring:='';
          if not query1.fieldbyname('tshop').isnull then
          params[13].asstring:=query1.fieldbyname('tshop').value
          else params[13].asstring:='';
          if not query1.fieldbyname('swftyp').isnull then
          params[14].asstring:=query1.fieldbyname('swftyp').value
          else params[14].asstring:='';
          if not query1.fieldbyname('seniority').isnull then
          params[15].asfloat:=query1.fieldbyname('seniority').value
          else params[15].asfloat:=0;
          if not query1.fieldbyname('smf').isnull then
          params[16].asstring:=query1.fieldbyname('smf').value
          else params[16].asstring:='1';
          if not query1.fieldbyname('dt1chk').isnull then
          params[17].asboolean:=query1.fieldbyname('dt1chk').value
          else params[17].asboolean:=false;
          if not query1.fieldbyname('sex').isnull then
          params[18].asstring:=query1.fieldbyname('sex').value
          else params[18].asstring:='Female';
          if not query1.fieldbyname('res_dt').isnull then
          params[19].asdate:=query1.fieldbyname('res_dt').value;
          if not query1.fieldbyname('direct').isnull then
          params[20].asboolean:=query1.fieldbyname('direct').value
          else params[20].asboolean:=true;
          if not query1.fieldbyname('smf_status').isnull then
          params[21].asstring:=query1.fieldbyname('smf_status').value
          else params[21].asstring:='SWF';
          if not query1.fieldbyname('idpool').isnull then
          params[22].asstring:=query1.fieldbyname('idpool').value
          else params[22].asstring:='dWF';
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmswfpool.ComboBox1Change(Sender: TObject);
begin
  //if combobox1.text>'' then begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='update tblswfid a set xh=(select xh from tblswftype b where a.tplant=b.tplant and a.swftyp=b.swftyp) '
                +'where exists (select swftyp from tblswftype b where a.tplant=b.tplant and a.swftyp=b.swftyp)';
    execute;
  end;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tblswfid where swfstt<>''1''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox3.text>'' then commandtext:=commandtext+' and swftyp='''+combobox3.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      if rg1.ItemIndex=0 then commandtext:=commandtext+' and smf=''1'''
      else if rg1.ItemIndex=1 then commandtext:=commandtext+' and smf=''2'''
      else if rg1.ItemIndex=2 then commandtext:=commandtext+' and smf=''5'''
      else if rg1.ItemIndex=3 then commandtext:=commandtext+' and smf=''3''';
      open;
    end;
  //end;
end;

procedure Tfrmswfpool.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.Append;
end;

procedure Tfrmswfpool.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Want to delete this workforce?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tblswfid where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    query1.delete;
  end;
end;

procedure Tfrmswfpool.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
end;

procedure Tfrmswfpool.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('pline').onchange:=querychange;
  query1.fieldbyname('swfdt').onchange:=querychange1;
  query1.fieldbyname('smf_status').onchange:=querychange2;
  dbgrideh1.Columns[0].PickList.clear;
  dbgrideh1.Columns[1].PickList.clear;
  dbgrideh1.Columns[2].PickList.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select pline from tblline where tplant='''+combobox1.text+''' and tshop>'''' order by pline';
    open;
    first;
    while not eof do begin
      dbgrideh1.Columns[1].PickList.add(fieldbyname('pline').value);
      dbgrideh1.Columns[2].PickList.add(fieldbyname('pline').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where tplant='''+combobox1.text+''' and tshop>'''' order by tshop';
    open;
    first;
    while not eof do begin
      dbgrideh1.Columns[0].PickList.add(fieldbyname('tshop').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmswfpool.BitBtn4Click(Sender: TObject);
begin
  if query1.Active then begin
    with query7 do begin
      close;
      params.clear;
      commandtext:='select * from tblswfid where swfstt<>''1''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox3.text>'' then commandtext:=commandtext+' and swftyp='''+combobox3.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      if rg1.ItemIndex=0 then commandtext:=commandtext+' and smf=''1'''
      else if rg1.ItemIndex=1 then commandtext:=commandtext+' and smf=''2'''
      else if rg1.ItemIndex=2 then commandtext:=commandtext+' and smf=''5'''
      else if rg1.ItemIndex=3 then commandtext:=commandtext+' and smf=''3''';
      commandtext:=commandtext+' order by tplant,tshop,pline,xh,swfid';
      open;
    end;
    line001.Caption:=query1.fieldbyname('tplant').value;
    ws001.Caption:=combobox2.text;
    line0001.Caption:=edit1.text;
    if rg1.ItemIndex=0 then title001.Caption:='Workforce Pool Profile - Stationed'
    else if rg1.ItemIndex=1 then title001.Caption:='Workforce Pool Profile - Mobile'
    else if rg1.ItemIndex=2 then title001.Caption:='Workforce Pool Profile - Floater'
    else if rg1.ItemIndex=3 then title001.Caption:='Workforce Pool Profile - Other'
    else if rg1.ItemIndex=4 then title001.Caption:='Workforce Pool Profile - All';
    ppReport1.Print;
  end;
end;

procedure Tfrmswfpool.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmswfpool.DBGridEh1Columns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmswfskill=nil then frmswfskill:=tfrmswfskill.Create(nil);
  with query5 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tblswfop where swfseq=:x1';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
  end;
  frmswfskill.Label4.Caption:='SWF';
  frmswfskill.DBText1.DataSource:=datasource1;
  frmswfskill.DBText2.DataSource:=datasource1;
  frmswfskill.DBText3.DataSource:=datasource1;
  frmswfskill.DBGridEh1.DataSource:=datasource2;
  frmswfskill.Show;
end;

procedure Tfrmswfpool.query5NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query3 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as s1 from tblswfop';
    open;
    if not fieldbyname('s1').isnull then seq:=fieldbyname('s1').value+1 else seq:=1;
  end;
  query5.fieldbyname('swfseq').value:=query1.fieldbyname('seq').value;
  query5.fieldbyname('pline').value:=query1.fieldbyname('pline').value;
  query5.fieldbyname('swfid').value:=query1.fieldbyname('swfid').value;
  query5.fieldbyname('seq').value:=seq;
end;

procedure Tfrmswfpool.query5AfterPost(DataSet: TDataSet);
begin
  if query5.ApplyUpdates(-1)>0 then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tblswfop where seq=:x1';
      params[0].asinteger:=query5.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').IsNull then begin
        with query4 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftfloat,'x6',ptinput);
          params.createparam(ftboolean,'x7',ptinput);
          params.createparam(ftboolean,'x8',ptinput);
          params.createparam(ftinteger,'x9',ptinput);
          params.createparam(ftboolean,'x10',ptinput);
          params.createparam(ftstring,'x11',ptinput);
          params.createparam(ftstring,'x12',ptinput);
          params.createparam(ftstring,'x13',ptinput);
          params.createparam(ftstring,'x14',ptinput);
          params.createparam(ftfloat,'x15',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          commandtext:='update tblswfop set swfmc=:x1,swfop=:x2,swfmtm=:x3,swfop1=:x5,sah=:x6,fd=:x7,zx=:x8,sq=:x9,'
                      +'jb=:x10,zhb=:x11,kd=:x12,swfmc1=:x13,swfmc2=:x14,swfmtm1=:x15 where seq=:x4';
          if not query5.fieldbyname('swfmc').isnull then
          params[0].AsString:=query5.fieldbyname('swfmc').value
          else params[0].asstring:='';
          if not query5.fieldbyname('swfop').isnull then
          params[1].asstring:=query5.fieldbyname('swfop').value
          else params[1].asstring:='';
          if not query5.fieldbyname('swfmtm').isnull then
          params[2].asfloat:=query5.fieldbyname('swfmtm').value
          else params[2].asfloat:=0;
          if not query5.fieldbyname('swfop1').isnull then
          params[3].asstring:=query5.fieldbyname('swfop1').value
          else params[3].asstring:='';
          if not query5.fieldbyname('sah').isnull then
          params[4].asfloat:=query5.fieldbyname('sah').value
          else params[4].asfloat:=0;
          if not query5.fieldbyname('fd').isnull then
          params[5].asboolean:=query5.fieldbyname('fd').value
          else params[5].asboolean:=false;
          if not query5.fieldbyname('zx').IsNull then
          params[6].asboolean:=query5.fieldbyname('zx').value
          else params[6].asboolean:=false;
          if not query5.fieldbyname('sq').isnull then
          params[7].asinteger:=query5.fieldbyname('sq').value
          else params[7].asinteger:=0;
          if not query5.fieldbyname('jb').isnull then
          params[8].asboolean:=query5.fieldbyname('jb').value
          else params[8].asboolean:=false;
          if not query5.fieldbyname('hzb').isnull then
          params[9].asstring:=query5.fieldbyname('hzb').value
          else params[9].asstring:='';
          if not query5.fieldbyname('kd').isnull then
          params[10].asstring:=query5.fieldbyname('kd').value
          else params[10].asstring:='';
          if not query5.fieldbyname('swfmc1').isnull then
          params[11].asstring:=query5.fieldbyname('swfmc1').value
          else params[11].asstring:='';
          if not query5.fieldbyname('swfmc2').isnull then
          params[12].asstring:=query5.fieldbyname('swfmc2').value
          else params[12].asstring:='';
          if not query5.fieldbyname('swfmtm1').isnull then
          params[13].asfloat:=query5.fieldbyname('swfmtm1').value
          else params[13].asfloat:=0;
          params[14].asinteger:=query5.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query4 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          params.createparam(ftfloat,'x9',ptinput);
          params.createparam(ftboolean,'x10',ptinput);
          params.createparam(ftboolean,'x11',ptinput);
          params.createparam(ftinteger,'x12',ptinput);
          params.createparam(ftboolean,'x13',ptinput);
          params.createparam(ftstring,'x14',ptinput);
          params.createparam(ftstring,'x15',ptinput);
          params.createparam(ftstring,'x16',ptinput);
          params.createparam(ftstring,'x17',ptinput);
          params.createparam(ftfloat,'x18',ptinput);
          commandtext:='insert into tblswfop(swfmc,swfop,swfmtm,seq,pline,swfid,swfseq,swfop1,sah,fd,zx,sq,jb,zhb,kd,swfmc1,swfmc2,swfmtm1) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,:x14,:x15,:x16,:x17,:x18)';
          if not query5.fieldbyname('swfmc').isnull then
          params[0].AsString:=query5.fieldbyname('swfmc').value
          else params[0].asstring:='';
          if not query5.fieldbyname('swfop').isnull then
          params[1].asstring:=query5.fieldbyname('swfop').value
          else params[1].asstring:='';
          if not query5.fieldbyname('swfmtm').isnull then
          params[2].asfloat:=query5.fieldbyname('swfmtm').value
          else params[2].asfloat:=0;
          params[3].asinteger:=query5.fieldbyname('seq').value;
          params[4].asstring:=query5.fieldbyname('pline').value;
          params[5].asstring:=query5.fieldbyname('swfid').value;
          params[6].asinteger:=query5.fieldbyname('swfseq').value;
          if not query5.fieldbyname('swfop1').isnull then
          params[7].asstring:=query5.fieldbyname('swfop1').value
          else params[7].asstring:='';
          if not query5.fieldbyname('sah').isnull then
          params[8].asfloat:=query5.fieldbyname('sah').value
          else params[8].asfloat:=0;
          if not query5.fieldbyname('fd').isnull then
          params[9].asboolean:=query5.fieldbyname('fd').value
          else params[9].asboolean:=false;
          if not query5.fieldbyname('zx').IsNull then
          params[10].asboolean:=query5.fieldbyname('zx').value
          else params[10].asboolean:=false;
          if not query5.fieldbyname('sq').isnull then
          params[11].asinteger:=query5.fieldbyname('sq').value
          else params[11].asinteger:=0;
          if not query5.fieldbyname('jb').isnull then
          params[12].asboolean:=query5.fieldbyname('jb').value
          else params[12].asboolean:=false;
          if not query5.fieldbyname('hzb').isnull then
          params[13].asstring:=query5.fieldbyname('hzb').value
          else params[13].asstring:='';
          if not query5.fieldbyname('kd').isnull then
          params[14].asstring:=query5.fieldbyname('kd').value
          else params[14].asstring:='';
          if not query5.fieldbyname('swfmc1').isnull then
          params[15].asstring:=query5.fieldbyname('swfmc1').value
          else params[15].asstring:='';
          if not query5.fieldbyname('swfmc2').isnull then
          params[16].asstring:=query5.fieldbyname('swfmc2').value
          else params[16].asstring:='';
          if not query5.fieldbyname('swfmtm1').isnull then
          params[17].asfloat:=query5.fieldbyname('swfmtm1').value
          else params[17].asfloat:=0;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmswfpool.FormShow(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select r50 from tbluser where usr='''+frmmain.ComboBox1.Text+'''';
    open;
    if fieldbyname('r50').value=true then begin
      DBGridEh1.ReadOnly:=false;
      BitBtn1.Enabled:=true;
      BitBtn2.Enabled:=true;
      BitBtn3.Enabled:=true;
      bitbtn5.Enabled:=true;
    end else begin
      DBGridEh1.ReadOnly:=true;
      BitBtn1.Enabled:=false;
      BitBtn2.Enabled:=false;
      BitBtn3.Enabled:=false;
      BitBtn5.Enabled:=false;
    end;
  end;
  combobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where tshop>''''';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('tshop').value);
      application.ProcessMessages;
      next;
    end;
  end;
  combobox3.items.clear;
  dbgrideh1.Columns[13].PickList.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct swftyp from tblswfid where swftyp>''''';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('swftyp').value);
      dbgrideh1.Columns[13].PickList.add(fieldbyname('swftyp').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmswfpool.BitBtn5Click(Sender: TObject);
begin
  if frmwfprocess=nil then frmwfprocess:=tfrmwfprocess.create(nil);
  frmwfprocess.Label2.Caption:='SWF1';
  //frmwfprocess.Caption:='Resign';
  frmwfprocess.Label1.Visible:=false;
  frmwfprocess.ComboBox1.Visible:=false;
  frmwfprocess.DBMemo1.DataSource:=datasource1;
  frmwfprocess.DBText1.DataSource:=datasource1;
  frmwfprocess.DBText2.DataSource:=datasource1;
  frmwfprocess.DBMemo1.DataField:='SWFSTA';
  frmwfprocess.DBText1.DataField:='SWFID';
  frmwfprocess.DBText2.DataField:='SWFNA';
  frmwfprocess.show;
end;

procedure Tfrmswfpool.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  sxa,sxb,sxc,sxd,sxe,sxf,sxg:integer;
begin
  sxa:=0; sxb:=0; sxc:=0; sxd:=0; sxe:=0; sxf:=0; sxg:=0;
  if rg1.ItemIndex=0 then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct swftyp,count(*) as cnt from tblswfid where swfstt<>''1'' and smf=''1''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      commandtext:=commandtext+' group by swftyp order by swftyp';
      open;
      first;
      while not eof do begin
        if fieldbyname('swftyp').value='Sewing Machinist' then sxa:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='Hand Worker' then sxb:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='In-line Inspector' then sxc:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='Line Leader' then sxe:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='QC Leader' then sxf:=fieldbyname('cnt').value
        else sxd:=fieldbyname('cnt').value;
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct direct,count(*) as cnt from tblswfid where swfstt<>''1'' and smf=''1''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      commandtext:=commandtext+' group by direct order by direct';
      open;
      first;
      while not eof do begin
        if fieldbyname('direct').value=true then sxd:=fieldbyname('cnt').value
        else sxg:=fieldbyname('cnt').value;
        application.ProcessMessages;
        next;
      end;
    end;
    sxd:=sxd-sxa-sxb-sxc;
    sxg:=sxg-sxe-sxf;
    sx01.Caption:=inttostr(sxa); sx02.Caption:=inttostr(sxb); sx03.Caption:=inttostr(sxc); sx04.Caption:=inttostr(sxd);
    sx05.Caption:=inttostr(sxe); sx06.Caption:=inttostr(sxf); sx07.Caption:=inttostr(sxg);
    mx01.Caption:='';mx02.Caption:='';mx03.Caption:=''; mx04.Caption:='';
    fx01.Caption:='';fx02.Caption:='';fx03.Caption:=''; fx04.Caption:='';
  end else if rg1.ItemIndex=1 then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct swftyp,count(*) as cnt from tblswfid where swfstt<>''1'' and smf=''2''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      commandtext:=commandtext+' group by swftyp order by swftyp';
      open;
      first;
      while not eof do begin
        if fieldbyname('swftyp').value='Sewing Machinist' then sxa:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='Hand Worker' then sxb:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='In-line Inspector' then sxc:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='Line Leader' then sxe:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='QC Leader' then sxf:=fieldbyname('cnt').value
        else sxd:=fieldbyname('cnt').value;
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select count(*) as cnt from tblswfid where swfstt<>''1'' and smf=''2''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      open;
      sxd:=fieldbyname('cnt').value;
    end;
    sxd:=sxd-sxa-sxb-sxc;
    sx01.Caption:='';sx02.Caption:='';sx03.Caption:='';sx04.Caption:='';
    sx05.Caption:='';sx06.Caption:='';sx07.Caption:='';
    mx01.Caption:=inttostr(sxa); mx02.Caption:=inttostr(sxb); mx03.Caption:=inttostr(sxc); mx04.Caption:=inttostr(sxd);
    fx01.Caption:='';fx02.Caption:='';fx03.Caption:='';fx04.Caption:='';
  end else if rg1.ItemIndex=2 then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct swftyp,count(*) as cnt from tblswfid where swfstt<>''1'' and smf=''5''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      commandtext:=commandtext+' group by swftyp order by swftyp';
      open;
      first;
      while not eof do begin
        if fieldbyname('swftyp').value='Sewing Machinist' then sxa:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='Hand Worker' then sxb:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='In-line Inspector' then sxc:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='Line Leader' then sxe:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='QC Leader' then sxf:=fieldbyname('cnt').value
        else sxd:=fieldbyname('cnt').value;
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select count(*) as cnt from tblswfid where swfstt<>''1'' and smf=''5''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      open;
      sxd:=fieldbyname('cnt').value;
    end;
    sxd:=sxd-sxa-sxb-sxc;
    sx01.Caption:='';sx02.Caption:='';sx03.Caption:='';sx04.Caption:='';
    sx05.Caption:='';sx06.Caption:='';sx07.Caption:='';
    mx01.Caption:='';mx02.Caption:='';mx03.Caption:='';mx04.Caption:='';
    fx01.Caption:=inttostr(sxa); fx02.Caption:=inttostr(sxb); fx03.Caption:=inttostr(sxc); fx04.Caption:=inttostr(sxd);
  end else if rg1.ItemIndex=4 then begin
    sxa:=0; sxb:=0; sxc:=0; sxe:=0; sxf:=0;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct swftyp,count(*) as cnt from tblswfid where swfstt<>''1'' and smf=''1''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      commandtext:=commandtext+' group by swftyp order by swftyp';
      open;
      first;
      while not eof do begin
        if fieldbyname('swftyp').value='Sewing Machinist' then sxa:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='Hand Worker' then sxb:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='In-line Inspector' then sxc:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='Line Leader' then sxe:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='QC Leader' then sxf:=fieldbyname('cnt').value
        else sxd:=fieldbyname('cnt').value;
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct direct,count(*) as cnt from tblswfid where swfstt<>''1'' and smf=''1''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      commandtext:=commandtext+' group by direct order by direct';
      open;
      first;
      while not eof do begin
        if fieldbyname('direct').value=true then sxd:=fieldbyname('cnt').value
        else sxg:=fieldbyname('cnt').value;
        application.ProcessMessages;
        next;
      end;
    end;
    sxd:=sxd-sxa-sxb-sxc;
    sxg:=sxg-sxe-sxf;
    sx01.Caption:=inttostr(sxa); sx02.Caption:=inttostr(sxb); sx03.Caption:=inttostr(sxc); sx04.Caption:=inttostr(sxd);
    sx05.Caption:=inttostr(sxe); sx06.Caption:=inttostr(sxf); sx07.Caption:=inttostr(sxg);

    sxa:=0; sxb:=0; sxc:=0; sxe:=0; sxf:=0;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct swftyp,count(*) as cnt from tblswfid where swfstt<>''1'' and smf=''2''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      commandtext:=commandtext+' group by swftyp order by swftyp';
      open;
      first;
      while not eof do begin
        if fieldbyname('swftyp').value='Sewing Machinist' then sxa:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='Hand Worker' then sxb:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='In-line Inspector' then sxc:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='Line Leader' then sxe:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='QC Leader' then sxf:=fieldbyname('cnt').value
        else sxd:=fieldbyname('cnt').value;
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select count(*) as cnt from tblswfid where swfstt<>''1'' and smf=''2''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      //commandtext:=commandtext+' group by swftyp order by swftyp';
      open;
      sxd:=fieldbyname('cnt').value;
    end;
    sxd:=sxd-sxa-sxb-sxc;
    mx01.Caption:=inttostr(sxa); mx02.Caption:=inttostr(sxb); mx03.Caption:=inttostr(sxc); mx04.Caption:=inttostr(sxd);

    sxa:=0; sxb:=0; sxc:=0; sxe:=0; sxf:=0;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct swftyp,count(*) as cnt from tblswfid where swfstt<>''1'' and smf=''5''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      commandtext:=commandtext+' group by swftyp order by swftyp';
      open;
      first;
      while not eof do begin
        if fieldbyname('swftyp').value='Sewing Machinist' then sxa:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='Hand Worker' then sxb:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='In-line Inspector' then sxc:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='Line Leader' then sxe:=fieldbyname('cnt').value
        else if fieldbyname('swftyp').value='QC Leader' then sxf:=fieldbyname('cnt').value
        else sxd:=fieldbyname('cnt').value;
        application.ProcessMessages;
        next;
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select count(*) as cnt from tblswfid where swfstt<>''1'' and smf=''5''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      //commandtext:=commandtext+' group by swftyp order by swftyp';
      open;
      sxd:=fieldbyname('cnt').value;
    end;
    sxd:=sxd-sxa-sxb-sxc;
    fx01.Caption:=inttostr(sxa); fx02.Caption:=inttostr(sxb); fx03.Caption:=inttostr(sxc); fx04.Caption:=inttostr(sxd);
  end else begin
    sx01.Caption:='';sx02.Caption:='';sx03.Caption:='';sx04.Caption:='';
    sx05.Caption:='';sx06.Caption:='';sx07.Caption:='';
    mx01.Caption:='';mx02.Caption:='';mx03.Caption:='';mx04.Caption:='';
    fx01.Caption:='';fx02.Caption:='';fx03.Caption:='';fx04.Caption:='';
  end;
  {
  shop01.Caption:='';shop02.Caption:='';shop03.Caption:='';shop04.Caption:='';
  shop05.Caption:='';shop06.Caption:='';shop07.Caption:='';shop08.Caption:='';
  shop09.Caption:='';shop10.Caption:='';shop11.Caption:='';shop12.Caption:='';
  wtyp01.Caption:='';wtyp02.Caption:='';wtyp03.Caption:='';wtyp04.Caption:='';
  wtyp05.Caption:='';wtyp06.Caption:='';wtyp07.Caption:='';wtyp08.Caption:='';
  i:=0;
  if (rg1.ItemIndex=0) or (rg1.ItemIndex=3) then begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop,count(*) as cnt from tblswfid where swfstt<>''1'' and tshop>'''' and smf=''1''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
    commandtext:=commandtext+' group by tshop order by tshop';
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then shop01.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=2 then shop02.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=3 then shop03.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=4 then shop04.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=5 then shop05.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=6 then shop06.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=7 then shop07.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=8 then shop08.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=9 then shop09.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=10 then shop10.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring;
      application.ProcessMessages;
      next;
    end;
  end;
  if rg1.ItemIndex=3 then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct pline as tshop,count(*) as cnt from tblswfid where swfstt<>''1'' and ((tshop='''') or (tshop is null)) and smf=''2''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      commandtext:=commandtext+' group by pline order by pline';
      open;
      first;
      while not eof do begin
        i:=i+1;
        if i=1 then shop01.Caption:=fieldbyname('tshop').value+' MWF :  '+fieldbyname('cnt').asstring
        else if i=2 then shop02.Caption:=fieldbyname('tshop').value+' MWF :  '+fieldbyname('cnt').asstring
        else if i=3 then shop03.Caption:=fieldbyname('tshop').value+' MWF :  '+fieldbyname('cnt').asstring
        else if i=4 then shop04.Caption:=fieldbyname('tshop').value+' MWF :  '+fieldbyname('cnt').asstring
        else if i=5 then shop05.Caption:=fieldbyname('tshop').value+' MWF :  '+fieldbyname('cnt').asstring
        else if i=6 then shop06.Caption:=fieldbyname('tshop').value+' MWF :  '+fieldbyname('cnt').asstring
        else if i=7 then shop07.Caption:=fieldbyname('tshop').value+' MWF :  '+fieldbyname('cnt').asstring
        else if i=8 then shop08.Caption:=fieldbyname('tshop').value+' MWF :  '+fieldbyname('cnt').asstring
        else if i=9 then shop09.Caption:=fieldbyname('tshop').value+' MWF :  '+fieldbyname('cnt').asstring
        else if i=10 then shop10.Caption:=fieldbyname('tshop').value+' MWF :  '+fieldbyname('cnt').asstring
        else if i=11 then shop11.Caption:=fieldbyname('tshop').value+' MWF :  '+fieldbyname('cnt').asstring
        else if i=12 then shop12.Caption:=fieldbyname('tshop').value+' MWF :  '+fieldbyname('cnt').asstring;
        application.ProcessMessages;
        next;
      end;
    end;
  end;

  i:=0;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct swftyp as tshop,count(*) as cnt from tblswfid where swfstt<>''1''';
    if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
    if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
    if rg1.ItemIndex=0 then commandtext:=commandtext+' and smf=''1''';
    commandtext:=commandtext+' group by swftyp order by swftyp';
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then wtyp01.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=2 then wtyp02.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=3 then wtyp03.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=4 then wtyp04.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=5 then wtyp05.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=6 then wtyp06.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=7 then wtyp07.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring
      else if i=8 then wtyp08.Caption:=fieldbyname('tshop').value+' :  '+fieldbyname('cnt').asstring;
      application.ProcessMessages;
      next;
    end;
  end;
  end;
  }
end;

procedure Tfrmswfpool.querychange(Sender: TField);
begin
  if not query1.fieldbyname('pline').isnull then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select tshop from tblline where pline='''+query1.fieldbyname('pline').value+'''';
      open;
      if not fieldbyname('tshop').isnull then query1.fieldbyname('tshop').value:=fieldbyname('tshop').value
      else query1.fieldbyname('tshop').value:='';
    end;
  end;
end;

procedure Tfrmswfpool.querychange1(Sender: TField);
var
  y1,m1,d1,y2,m2,d2:word;
begin
  if not query1.fieldbyname('swfdt').isnull then begin
    decodedate(date,y1,m1,d1);
    decodedate(query1.fieldbyname('swfdt').value,y2,m2,d2);
    query1.fieldbyname('seniority').value:=y1-y2;
  end else query1.fieldbyname('seniority').value:=0;
end;

procedure Tfrmswfpool.BitBtn8Click(Sender: TObject);
begin
  with query6 do begin
    close;
    params.clear;
    commandtext:='select * from tblswfid a left join tblswfop b on (a.seq=b.swfseq and a.swfid=b.swfid) where a.direct=1';
    if combobox1.text>'' then commandtext:=commandtext+' and a.tplant='''+combobox1.text+'''';
    if combobox2.Text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
    if edit1.text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
    if rg1.ItemIndex=0 then commandtext:=commandtext+' and a.smf=''1'''
    else if rg1.ItemIndex=1 then commandtext:=commandtext+' and a.smf=''2'''
    else if rg1.ItemIndex=2 then commandtext:=commandtext+' and a.smf=''5''';
    commandtext:=commandtext+' order by a.tplant,a.tshop,a.pline,a.swfid,b.seq';
    open;
    if not fieldbyname('tplant').isnull then begin
      {
      if rg1.ItemIndex=0 then title002.Caption:='Workforce Profile - Stationed'
      else if rg1.ItemIndex=1 then title002.Caption:='Workforce Profile - Mobile'
      else if rg1.ItemIndex=2 then title002.Caption:='Workforce Profile - Floater'
      else if rg1.ItemIndex=3 then title002.Caption:='Workforce Profile - Other'
      else if rg1.ItemIndex=4 then title002.Caption:='Workforce Profile - All';
      fty001.Caption:=combobox1.text;
      wks001.Caption:=combobox2.text;
      pline001.Caption:=edit1.text;
      }
      if rg1.ItemIndex<>3 then begin
        if edit2.text>'' then stitle001.Caption:=' - '+edit2.text
        else if edit1.text>'' then stitle001.Caption:=' - '+edit1.text
        else if combobox3.Text>'' then stitle001.Caption:=' - '+combobox3.text
        else if combobox2.Text>'' then stitle001.Caption:=' - '+combobox2.text
        else if combobox1.text>'' then stitle001.Caption:=' - '+combobox1.text
        else stitle001.Caption:=' - ';
        if (edit1.text='') and (edit2.text='') then begin
          if rg1.ItemIndex=0 then stitle001.Caption:=stitle001.Caption+' / '+'SWF'
          else if rg1.ItemIndex=1 then stitle001.Caption:=stitle001.Caption+' / '+'MWF'
          else if rg1.ItemIndex=2 then stitle001.Caption:=stitle001.Caption+' / '+'FWF'
          else if rg1.ItemIndex=4 then stitle001.Caption:=stitle001.Caption+' / '+'All';
        end;
        ppReport2.Print;
      end;
    end;
  end;
end;

procedure Tfrmswfpool.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmswfpool.Edit2Change(Sender: TObject);
begin
  if edit2.text>'' then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tblswfid where swfid='''+edit2.text+'''';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      open;
    end;
  end;
end;

procedure Tfrmswfpool.BitBtn9Click(Sender: TObject);
begin
  //
end;

procedure Tfrmswfpool.DBGridEh1Columns3EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmswfmc=nil then frmswfmc:=tfrmswfmc.create(nil);
  with frmswfmc.Query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select * from tblswf_log2 where swfid=:x1';
    params[0].asstring:=query1.fieldbyname('swfid').value;
    open;
  end;
  frmswfmc.Show;
end;

procedure Tfrmswfpool.DBGridEh1Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmswfleave=nil then frmswfleave:=tfrmswfleave.create(nil);
  with frmswfleave.Query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select * from tblswf_log1 where swfid=:x1';
    params[0].asstring:=query1.fieldbyname('swfid').value;
    open;
  end;
  frmswfleave.Show;
end;

procedure Tfrmswfpool.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
  x01.Caption:=ppdbcalc1.Value;//-1;
end;

procedure Tfrmswfpool.querychange2(Sender: TField);
begin
  if not query1.fieldbyname('smf_status').isnull then begin
    if query1.fieldbyname('smf_status').value='SWF' then query1.fieldbyname('smf').value:='1'
    else if query1.fieldbyname('smf_status').value='MWF' then query1.fieldbyname('smf').value:='2'
    else if query1.fieldbyname('smf_status').value='FWF' then query1.fieldbyname('smf').value:='5'
    else query1.fieldbyname('smf').value:='3';
  end;
end;

procedure Tfrmswfpool.ppGroupHeaderBand3BeforePrint(Sender: TObject);
begin
  if query6.fieldbyname('smf').value='1' then begin
    chk01.Checked:=true;
    chk02.Checked:=false;
    chk03.Checked:=false;
    if not query6.fieldbyname('pline').isnull then
    linex01.Caption:=query6.fieldbyname('pline').value
    else linex01.Caption:='';
  end else if query6.fieldbyname('smf').value='2' then begin
    chk01.Checked:=false;
    chk02.Checked:=true;
    chk03.Checked:=false;
    linex01.Caption:='';
  end else if query6.fieldbyname('smf').value='5' then begin
    chk01.Checked:=false;
    chk02.Checked:=false;
    chk03.Checked:=true;
    linex01.Caption:='';
  end;
end;

procedure Tfrmswfpool.DBGridEh1DblClick(Sender: TObject);
begin
  if dbgrideh1.SelectedIndex=13 then begin
    //
  end;
end;

end.
 