unit loginfoformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, GridsEh, DBGridEh, StdCtrls, Buttons, ppBands,
  ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppViewr, ppStrtch, ppSubRpt, ppRegion,
  ppParameter;

type
  Tfrmloginfo = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query5: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    title002: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine6: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine7: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLine10: TppLine;
    ppLabel40: TppLabel;
    pdn001: TppLabel;
    ppLabel41: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel42: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
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
    ppLabel31: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    v001: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    y001: TppLabel;
    y002: TppLabel;
    y003: TppLabel;
    y004: TppLabel;
    ppLabel38: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLabel39: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    x001: TppLabel;
    x002: TppLabel;
    x003: TppLabel;
    x004: TppLabel;
    ppLabel36: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel32: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel33: TppLabel;
    ppDBText17: TppDBText;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    z001: TppLabel;
    z002: TppLabel;
    z003: TppLabel;
    z004: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    Query6: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    subject002: TppLabel;
    ppLabel43: TppLabel;
    subject001: TppLabel;
    ppShape5: TppShape;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    w001: TppLabel;
    w002: TppLabel;
    w003: TppLabel;
    w004: TppLabel;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLabel45: TppLabel;
    pack001: TppLabel;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLine49: TppLine;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppShape10: TppShape;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    b001: TppLabel;
    b002: TppLabel;
    b003: TppLabel;
    b004: TppLabel;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppDBText30: TppDBText;
    Query7: TClientDataSet;
    DataSource4: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    prd001: TppLabel;
    chk1: TCheckBox;
    ppRegion1: TppRegion;
    BitBtn3: TBitBtn;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel48: TppLabel;
    title001: TppLabel;
    ppLabel50: TppLabel;
    fty001: TppLabel;
    ppLabel49: TppLabel;
    pkm001: TppLabel;
    ppShape11: TppShape;
    ppLabel51: TppLabel;
    ppShape12: TppShape;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLabel52: TppLabel;
    cx001: TppLabel;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLine60: TppLine;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLine61: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLine62: TppLine;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLine63: TppLine;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLine64: TppLine;
    ppSummaryBand4: TppSummaryBand;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    cx002: TppLabel;
    cx003: TppLabel;
    ppLine65: TppLine;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape13: TppShape;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLabel89: TppLabel;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    ppHeaderBand3: TppHeaderBand;
    ppShape15: TppShape;
    ppLabel90: TppLabel;
    subtitle001: TppLabel;
    ppLabel92: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLine73: TppLine;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLine74: TppLine;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLine75: TppLine;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLine76: TppLine;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppShape16: TppShape;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    cy001: TppLabel;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    cy002: TppLabel;
    ppDBText59: TppDBText;
    cy003: TppLabel;
    chk2: TCheckBox;
    ppLabel91: TppLabel;
    ppShape17: TppShape;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
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
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    sdiv001: TppDBText;
    sdiv002: TppDBText;
    ppLabel37: TppLabel;
    ppLabel44: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLine80: TppLine;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText60: TppDBText;
    cx004: TppLabel;
    ppLabel88: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppDBText61: TppDBText;
    cy004: TppLabel;
    ppShape14: TppShape;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppLabel144: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel145: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    wkno001: TppLabel;
    ppLine66: TppLine;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppDBText62: TppDBText;
    cy005: TppLabel;
    ppDBText63: TppDBText;
    cy006: TppLabel;
    ppDBText64: TppDBText;
    cy007: TppLabel;
    cw005: TppLabel;
    cw006: TppLabel;
    cw007: TppLabel;
    cw002: TppLabel;
    cw003: TppLabel;
    cw004: TppLabel;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppLabel153: TppLabel;
    ppTitleBand4: TppTitleBand;
    ppDetailBand6: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    dy001: TppLabel;
    dy002: TppLabel;
    dy003: TppLabel;
    dy004: TppLabel;
    dy005: TppLabel;
    dy006: TppLabel;
    dy007: TppLabel;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppShape18: TppShape;
    dw002: TppLabel;
    dw003: TppLabel;
    dw004: TppLabel;
    dw005: TppLabel;
    dw006: TppLabel;
    dw007: TppLabel;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppLine67: TppLine;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    pb001: TppLabel;
    pk001: TppLabel;
    pu001: TppLabel;
    pb002: TppLabel;
    pk002: TppLabel;
    pu002: TppLabel;
    pb003: TppLabel;
    pk003: TppLabel;
    pu003: TppLabel;
    pb004: TppLabel;
    pk004: TppLabel;
    pu004: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppLine84: TppLine;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLine86: TppLine;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    pb0031: TppLabel;
    pk0031: TppLabel;
    pu0031: TppLabel;
    pb0041: TppLabel;
    pk0041: TppLabel;
    pu0041: TppLabel;
    Query8: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand5BeforePrint(Sender: TObject);
    procedure ppSummaryBand4BeforePrint(Sender: TObject);
    procedure ppSummaryBand5BeforePrint(Sender: TObject);
    procedure ppDetailBand6BeforePrint(Sender: TObject);
    procedure ppSummaryBand6BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloginfo: Tfrmloginfo;

implementation

uses mainformu, pdnpastformu;

{$R *.dfm}

procedure Tfrmloginfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmloginfo:=nil;
end;

procedure Tfrmloginfo.FormShow(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    //commandtext:='select * from tbl_pdn_tollgate';
    commandtext:='select * from tbl_pdn_logisticcost';// order by tplant desc,cust';
    open;
  end;
  {
  if ((frmpdnpast.ComboBox2.text='SARA') or (frmpdnpast.ComboBox2.text='CANA')) then begin
    combobox1.items.clear;
    combobox1.items.add('ALL');
    combobox1.items.add('CRP');
    combobox1.items.add('BP');
  end else if (frmpdnpast.ComboBox2.text='TAMA') then begin
    combobox1.items.clear;
    combobox1.items.add('ALL');
    combobox1.items.add('HP');
    combobox1.items.add('BoxP');
  end else if (frmpdnpast.ComboBox2.text='SALL') then begin
    combobox1.items.clear;
    combobox1.items.add('ALL');
    combobox1.items.add('FP');
    combobox1.items.add('CRP');
  end else begin
    combobox1.items.clear;
    combobox1.items.add('ALL');
    combobox1.items.add('CRP');
    combobox1.items.add('BoxP');
    combobox1.items.add('HP');
  end;
  }
end;

procedure Tfrmloginfo.Query1AfterPost(DataSet: TDataSet);
begin
  if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from seq from tbl_pdn_tollgate where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftfloat,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.createparam(ftfloat,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          commandtext:='update tbl_pdn_tollgate set ctype=:x1,mac=:x2,mic=:x3,coc=:x4 where seq=:x5';
          if not query1.fieldbyname('ctype').isnull then
          params[0].asstring:=query1.fieldbyname('ctype').value
          else params[0].asstring:='';
          if not query1.fieldbyname('mac').isnull then
          params[1].asfloat:=query1.fieldbyname('mac').value
          else params[1].asfloat:=0;
          if not query1.fieldbyname('mic').isnull then
          params[2].asfloat:=query1.fieldbyname('mic').value
          else params[2].asfloat:=0;
          if not query1.fieldbyname('coc').isnull then
          params[3].asfloat:=query1.fieldbyname('coc').value
          else params[3].asfloat:=0;
          params[4].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftfloat,'x2',ptinput);
          params.createparam(ftfloat,'x3',ptinput);
          params.createparam(ftfloat,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          commandtext:='insert into tbl_pdn_tollgate(ctype,mac,mic,coc,seq) values(:x1,:x2,:x3,:x4,:x5)';
          if not query1.fieldbyname('ctype').isnull then
          params[0].asstring:=query1.fieldbyname('ctype').value
          else params[0].asstring:='';
          if not query1.fieldbyname('mac').isnull then
          params[1].asfloat:=query1.fieldbyname('mac').value
          else params[1].asfloat:=0;
          if not query1.fieldbyname('mic').isnull then
          params[2].asfloat:=query1.fieldbyname('mic').value
          else params[2].asfloat:=0;
          if not query1.fieldbyname('coc').isnull then
          params[3].asfloat:=query1.fieldbyname('coc').value
          else params[3].asfloat:=0;
          params[4].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end;
    end;
  end;
end;

procedure Tfrmloginfo.Query1NewRecord(DataSet: TDataSet);
var
  seq1:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq1 from tbl_pdn_tollgate';
    open;
    if not fieldbyname('seq1').isnull then seq1:=fieldbyname('seq1').value+1
    else seq1:=1;
  end;
  query1.fieldbyname('seq').value:=seq1;
  query1.fieldbyname('mac').value:=0;
  query1.fieldbyname('mic').value:=0;
  query1.FieldByName('coc').value:=0;
end;

procedure Tfrmloginfo.BitBtn1Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try;
    //if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftdatetime,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      commandtext:='execute procedure sp_pdn_genloginfo_all(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
      params[0].asstring:=frmpdnpast.combobox1.text;
      params[1].asinteger:=frmpdnpast.spinedit1.value;
      params[2].asinteger:=frmpdnpast.spinedit2.Value;
      params[3].asinteger:=frmpdnpast.spinedit3.Value;
      params[4].asinteger:=frmpdnpast.spinedit4.Value;
      params[5].asdatetime:=tm;
      params[6].asstring:=frmpdnpast.combobox2.text;
      execute;
    end;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_pdn_log_info where tm=:x1';
      if combobox1.text<>'ALL' then commandtext:=commandtext+' and pkm='''+combobox1.text+'''';
      commandtext:=commandtext+' order by pdn,seq1,j_no,custpo';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        if (frmpdnpast.ComboBox2.text='TAMA') then
        title002.Caption:='- M&S (Dispatch Plan)'
        else if (frmpdnpast.ComboBox2.text='SARA') then
        title002.Caption:='- HANS (Vendor Booking)'
        else title002.Caption:='- '+frmpdnpast.ComboBox2.Text+' (Dispatch plan)';
        title002.Caption:=title002.Caption+'   - '+combobox1.text;
        pdn001.Caption:=frmpdnpast.ComboBox1.text;
        if combobox1.Text='HP' then pack001.Caption:='Hanging Pack'
        else if combobox1.Text='BoxP' then pack001.Caption:='Box Pack'
        else if combobox1.Text='CRP' then pack001.Caption:='Customers Ready Pack'
        else if combobox1.Text='BP' then pack001.Caption:='Bulk Pack'
        else if combobox1.Text='FP' then pack001.Caption:='Flat Pack'
        else pack001.Caption:=combobox1.text;//'';

        if chk1.Checked then begin
          ppHeaderBand1.PrintOnFirstPage:=false;
          ppDetailBand1.Visible:=false;
          ppGroupFooterBand1.Visible:=false;
          ppGroupFooterBand2.Visible:=false;
        end else begin
          ppHeaderBand1.PrintOnFirstPage:=true;
          ppDetailBand1.Visible:=true;
          ppGroupFooterBand1.Visible:=true;
          ppGroupFooterBand2.Visible:=true;
        end;

        if chk2.Checked then begin
          subject001.Caption:='By Prod Category: -  ';
          subject002.Caption:='By Prod Code: -  ';
          sdiv001.Visible:=false;
          sdiv002.Visible:=false;
        end else begin
          subject001.Caption:='By Brand Code & Prod Category: -  ';
          subject002.Caption:='By Brand Code & Prod Code: -  ';
          sdiv001.Visible:=true;
          sdiv002.Visible:=true;
        end;

        ppReport1.Print;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmloginfo.ppDetailBand1BeforePrint(Sender: TObject);
begin
  v001.Caption:=formatfloat('#0.00',query5.fieldbyname('xcbm').value*1000000.00/6000.00);
end;

procedure Tfrmloginfo.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  if ppdbcalc2.Value>0 then
  x001.Caption:=formatfloat('#0.00',ppdbcalc1.Value*1.00/ppdbcalc2.Value)
  else x001.Caption:='0.00';
  if ppdbcalc1.Value>0 then begin
    x002.Caption:=formatfloat('#0.00',ppdbcalc4.Value*1000.00/ppdbcalc1.Value*1000000.00/6000.00);
    x003.Caption:=formatfloat('#0.00',ppdbcalc3.Value*1000.00/ppdbcalc1.Value);
    x004.Caption:=formatfloat('#0.00',ppdbcalc4.Value*1000.00/ppdbcalc1.Value);
  end else begin
    x002.Caption:='0.00';
    x003.Caption:='0.00';
    x004.Caption:='0.00';
  end;
end;

procedure Tfrmloginfo.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
  if ppdbcalc6.Value>0 then
  y001.Caption:=formatfloat('#0.00',ppdbcalc5.Value*1.00/ppdbcalc6.Value)
  else y001.Caption:='0.00';
  if ppdbcalc5.Value>0 then begin
    y002.Caption:=formatfloat('#0.00',ppdbcalc8.Value*1000.00/ppdbcalc5.Value*1000000.00/6000.00);
    y003.Caption:=formatfloat('#0.00',ppdbcalc7.Value*1000.00/ppdbcalc5.Value);
    y004.Caption:=formatfloat('#0.00',ppdbcalc8.Value*1000.00/ppdbcalc5.Value);
  end else begin
    y002.Caption:='0.00';
    y003.Caption:='0.00';
    y004.Caption:='0.00';
  end;
end;

procedure Tfrmloginfo.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmloginfo.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  {
  b001.Caption:='';b002.Caption:='';b003.Caption:='';b004.Caption:='';b005.Caption:='';b006.Caption:='';b007.Caption:='';b008.Caption:='';b009.Caption:='';
  k001.Caption:='';k002.Caption:='';k003.Caption:='';k004.Caption:='';k005.Caption:='';k006.Caption:='';k007.Caption:='';k008.Caption:='';k009.Caption:='';
  u001.Caption:='';u002.Caption:='';u003.Caption:='';u004.Caption:='';u005.Caption:='';u006.Caption:='';u007.Caption:='';u008.Caption:='';u009.Caption:='';
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x10',ptinput);
    commandtext:='select distinct flag60,sum(t4qty) as x0,sum(box) as x1,sum(wght) as x2,sum(cbm) as x3 from tbl_pdn_log_info where tm=:x10';
    if combobox1.Text<>'ALL' then commandtext:=commandtext+' and pkm='''+combobox1.text+'''';
    commandtext:=commandtext+' group by flag60 order by flag60';
    params[0].asdatetime:=query5.fieldbyname('tm').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('flag60').value='B' then begin
        b001.Caption:=fieldbyname('flag60').value;;
        b002.Caption:=fieldbyname('x0').asstring;
        b003.Caption:=fieldbyname('x1').asstring;
        b004.Caption:=formatfloat('#0.00',fieldbyname('x2').Value);
        b005.Caption:=formatfloat('#0.00',fieldbyname('x3').value);
        b006.Caption:=formatfloat('#0.00',fieldbyname('x0').value*1.00/fieldbyname('x1').value);
        b007.Caption:=formatfloat('#0.00',fieldbyname('x3').value*1000.00/fieldbyname('x0').value*1000000.00/6000.00);
        b008.Caption:=formatfloat('#0.00',fieldbyname('x2').value*1000.00/fieldbyname('x0').value);
        b009.Caption:=formatfloat('#0.00',fieldbyname('x3').value*1000.00/fieldbyname('x0').value);
      end else if fieldbyname('flag60').value='K' then begin
        k001.Caption:=fieldbyname('flag60').value;;
        k002.Caption:=fieldbyname('x0').asstring;
        k003.Caption:=fieldbyname('x1').asstring;
        k004.Caption:=formatfloat('#0.00',fieldbyname('x2').Value);
        k005.Caption:=formatfloat('#0.00',fieldbyname('x3').value);
        k006.Caption:=formatfloat('#0.00',fieldbyname('x0').value*1.00/fieldbyname('x1').value);
        k007.Caption:=formatfloat('#0.00',fieldbyname('x3').value*1000.00/fieldbyname('x0').value*1000000.00/6000.00);
        k008.Caption:=formatfloat('#0.00',fieldbyname('x2').value*1000.00/fieldbyname('x0').value);
        k009.Caption:=formatfloat('#0.00',fieldbyname('x3').value*1000.00/fieldbyname('x0').value);
      end else if fieldbyname('flag60').value='U' then begin
        u001.Caption:=fieldbyname('flag60').value;;
        u002.Caption:=fieldbyname('x0').asstring;
        u003.Caption:=fieldbyname('x1').asstring;
        u004.Caption:=formatfloat('#0.00',fieldbyname('x2').Value);
        u005.Caption:=formatfloat('#0.00',fieldbyname('x3').value);
        u006.Caption:=formatfloat('#0.00',fieldbyname('x0').value*1.00/fieldbyname('x1').value);
        u007.Caption:=formatfloat('#0.00',fieldbyname('x3').value*1000.00/fieldbyname('x0').value*1000000.00/6000.00);
        u008.Caption:=formatfloat('#0.00',fieldbyname('x2').value*1000.00/fieldbyname('x0').value);
        u009.Caption:=formatfloat('#0.00',fieldbyname('x3').value*1000.00/fieldbyname('x0').value);
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  }
  with query7 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x10',ptinput);
    if chk2.Checked then begin
      commandtext:='select distinct flag60,sum(t4qty) as t4qty,sum(box) as box,sum(wght) as wght,sum(cbm) as cbm,pkm from tbl_pdn_log_info_sum where tm=:x10';
      if combobox1.Text<>'ALL' then commandtext:=commandtext+' and pkm='''+combobox1.text+'''';
      commandtext:=commandtext+' group by flag60,pkm order by flag60,pkm desc';
    end else begin
      commandtext:='select distinct sdiv35,flag60,sum(t4qty) as t4qty,sum(box) as box,sum(wght) as wght,sum(cbm) as cbm,pkm from tbl_pdn_log_info_sum where tm=:x10';
      if combobox1.Text<>'ALL' then commandtext:=commandtext+' and pkm='''+combobox1.text+'''';
      commandtext:=commandtext+' group by sdiv35,flag60,pkm order by sdiv35,flag60,pkm desc';
    end;
    params[0].asdatetime:=query5.fieldbyname('tm').value;
    open;
  end;
end;

procedure Tfrmloginfo.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if query6.Fieldbyname('box').value>0 then
  w001.Caption:=formatfloat('#0.00',query6.fieldbyname('t4qty').value*1.00/query6.fieldbyname('box').value)
  else w001.Caption:='0.00';
  if query6.fieldbyname('t4qty').value>0 then begin
    w002.Caption:=formatfloat('#0.00',query6.fieldbyname('cbm').value*1000.00/query6.fieldbyname('t4qty').value*1000000.00/6000.00);
    w003.Caption:=formatfloat('#0.00',query6.fieldbyname('wght').value*1000.00/query6.fieldbyname('t4qty').value);
    w004.Caption:=formatfloat('#0.00',query6.fieldbyname('cbm').value*1000.00/query6.fieldbyname('t4qty').value);
  end else begin
    w002.Caption:='0.00';
    w003.Caption:='0.00';
    w004.Caption:='0.00';
  end;
end;

procedure Tfrmloginfo.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  if ppdbcalc10.Value>0 then
  z001.Caption:=formatfloat('#0.00',ppdbcalc9.Value*1.00/ppdbcalc10.Value)
  else z001.Caption:='0.00';
  if ppdbcalc9.Value>0 then begin
    z002.Caption:=formatfloat('#0.00',ppdbcalc12.Value*1000.00/ppdbcalc9.Value*1000000.00/6000.00);
    z003.Caption:=formatfloat('#0.00',ppdbcalc11.Value*1000.00/ppdbcalc9.Value);
    z004.Caption:=formatfloat('#0.00',ppdbcalc12.Value*1000.00/ppdbcalc9.Value);
  end else begin
    z002.Caption:='0.00';
    z003.Caption:='0.00';
    z004.Caption:='0.00';
  end;

  prd001.Caption:='(from '+inttostr(frmpdnpast.SpinEdit1.Value)+' week'+inttostr(frmpdnpast.SpinEdit2.Value)+'   to '+inttostr(frmpdnpast.SpinEdit3.Value)+' week'+inttostr(frmpdnpast.SpinEdit4.Value)+')';

  with query6 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x10',ptinput);
    if chk2.Checked then begin
      commandtext:='select distinct flag6,sum(t4qty) as t4qty,sum(box) as box,sum(wght) as wght,sum(cbm) as cbm,pkm from tbl_pdn_log_info_sum where tm=:x10';
      if combobox1.Text<>'ALL' then commandtext:=commandtext+' and pkm='''+combobox1.text+'''';
      commandtext:=commandtext+' group by flag6,pkm order by flag6,pkm desc';
    end else begin
      commandtext:='select distinct sdiv35,flag6,sum(t4qty) as t4qty,sum(box) as box,sum(wght) as wght,sum(cbm) as cbm,pkm from tbl_pdn_log_info_sum where tm=:x10';
      if combobox1.Text<>'ALL' then commandtext:=commandtext+' and pkm='''+combobox1.text+'''';
      commandtext:=commandtext+' group by sdiv35,flag6,pkm order by sdiv35,flag6,pkm desc';
    end;
    //commandtext:='select distinct flag6,sum(t4qty) as t4qty,sum(box) as box,sum(wght) as wght,sum(cbm) as cbm from tbl_pdn_log_info where tm=:x10';
    //commandtext:='select * from tbl_pdn_log_info_sum where tm=:x10';
    //if combobox1.Text<>'ALL' then commandtext:=commandtext+' and pkm='''+combobox1.text+'''';
    //commandtext:=commandtext+' order by flag6,pkm desc';
    params[0].asdatetime:=query5.fieldbyname('tm').value;
    open;
  end;
end;

procedure Tfrmloginfo.ppDetailBand3BeforePrint(Sender: TObject);
begin
  if query7.fieldbyname('box').value>0 then
  b001.Caption:=formatfloat('#0.00',query7.fieldbyname('t4qty').value*1.00/query7.fieldbyname('box').value)
  else b001.Caption:='0.00';
  if query7.fieldbyname('t4qty').value>0 then begin
    b002.Caption:=formatfloat('#0.00',query7.fieldbyname('cbm').value*1000.00/query7.fieldbyname('t4qty').value*1000000.00/6000.00);
    b003.Caption:=formatfloat('#0.00',query7.fieldbyname('wght').value*1000.00/query7.fieldbyname('t4qty').value);
    b004.Caption:=formatfloat('#0.00',query7.fieldbyname('cbm').value*1000.00/query7.fieldbyname('t4qty').value);
  end else begin
    b002.Caption:='0.00';
    b003.Caption:='0.00';
    b004.Caption:='0.00';
  end;
end;

procedure Tfrmloginfo.BitBtn2Click(Sender: TObject);
var
  cust00001:string;
begin
  screen.cursor:=crSQLWait;
  try;
    cust00001:='';
    //if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      commandtext:='select * from sp_pdn_genlogistic_cost(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
      params[0].asstring:=frmpdnpast.combobox1.text;
      params[1].asinteger:=frmpdnpast.spinedit1.value;
      params[2].asinteger:=frmpdnpast.spinedit2.Value;
      params[3].asinteger:=frmpdnpast.spinedit3.Value;
      params[4].asinteger:=frmpdnpast.spinedit4.Value;
      params[5].asstring:=frmpdnpast.combobox2.text;
      params[6].asstring:=combobox1.text;
      open;
      if not fieldbyname('cust1').IsNull then begin
        if fieldbyname('cust1').value='AFGD' then cust00001:='AFGH'
        else if fieldbyname('cust').Value='BD' then cust00001:='BEND/BEMI/PLST/BDBS'
        else if fieldbyname('cust').Value='BS' then cust00001:='BEND/BEMI/PLST/BDBS'
        else if fieldbyname('cust').Value='BZ' then cust00001:='BEND/BEMI/PLST/BDBS'
        else if fieldbyname('cust').Value='ET' then cust00001:='ETAA/ETAM'
        else cust00001:=fieldbyname('cust1').value;
      end;
    end;
    title001.Caption:=' - PDN Code ('+frmpdnpast.ComboBox2.Text+')  -  Customer Code ('+cust00001+')';
    fty001.Caption:=frmpdnpast.ComboBox1.text;
    pkm001.Caption:=combobox1.text;
    wkno001.Caption:='(from '+inttostr(frmpdnpast.SpinEdit1.value)+' week '+inttostr(frmpdnpast.SpinEdit2.Value)+' to '+inttostr(frmpdnpast.SpinEdit3.value)+' week '+inttostr(frmpdnpast.SpinEdit4.Value)+')';
    ppReport2.Print;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmloginfo.ppDetailBand4BeforePrint(Sender: TObject);
begin
  if query5.fieldbyname('box').value>0 then begin
    cx001.Caption:=formatfloat('#0.00',query5.fieldbyname('t4qty').value*1.00/query5.fieldbyname('box').value);
  end else begin
    cx001.Caption:='0.00';
  end;
  {
  if pos('AIR',query5.fieldbyname('shpm').value)>0 then begin
    if query5.fieldbyname('t4qty').value>0 then
    cx002.Caption:=formatfloat('#0.00',query5.fieldbyname('box').value*query5.fieldbyname('acost').value*1.0/query5.fieldbyname('t4qty').value)
    else cx002.Caption:='-';
  end else begin
    cx002.Caption:='-';
  end;
  if pos('BOAT',query5.fieldbyname('shpm').value)>0 then begin
    if query5.fieldbyname('t4qty').value>0 then
    cx003.Caption:=formatfloat('#0.00',query5.fieldbyname('box').value*query5.fieldbyname('bcost').value*1.0/query5.fieldbyname('t4qty').value)
    else cx003.Caption:='-';
  end else begin
    cx003.Caption:='-';
  end;
  }
  if query5.fieldbyname('t4qty').value>0 then begin
    cx002.Caption:=formatfloat('#0.00',query5.fieldbyname('acost1').value);//*query5.fieldbyname('acost').value*1.0/query5.fieldbyname('t4qty').value);
    cx003.Caption:=formatfloat('#0.00',query5.fieldbyname('bcost1').value);//*query5.fieldbyname('bcost').value*1.0/query5.fieldbyname('t4qty').value);
    cx004.Caption:=formatfloat('#0.00',query5.fieldbyname('ocost1').value);//*query5.fieldbyname('ocost').value*1.0/query5.fieldbyname('t4qty').value);
  end else begin
    cx002.Caption:='-';
    cx003.Caption:='-';
    cx004.Caption:='-';
  end;
end;

procedure Tfrmloginfo.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmloginfo.ppDetailBand5BeforePrint(Sender: TObject);
begin
  if query6.fieldbyname('box').value>0 then begin
    cy001.Caption:=formatfloat('#0.00',query6.fieldbyname('t4qty').value*1.00/query6.fieldbyname('box').value);
  end else begin
    cy001.Caption:='0.00';
  end;
  cy005.Caption:=formatfloat('#0.00',query6.fieldbyname('acost').value);
  cy006.Caption:=formatfloat('#0.00',query6.fieldbyname('bcost').value);
  cy007.Caption:=formatfloat('#0.00',query6.fieldbyname('ocost').value);
  if query6.fieldbyname('t4qty').value>0 then begin
    cy002.Caption:=formatfloat('#0.00',query6.fieldbyname('acost1').value);//*query6.fieldbyname('acost').value*1.0/query6.fieldbyname('t4qty').value);
    cy003.Caption:=formatfloat('#0.00',query6.fieldbyname('bcost1').value);//*query6.fieldbyname('bcost').value*1.0/query6.fieldbyname('t4qty').value);
    cy004.Caption:=formatfloat('#0.00',query6.fieldbyname('ocost1').value);//*query6.fieldbyname('ocost').value*1.0/query6.fieldbyname('t4qty').value);
  end else begin
    cy002.Caption:='-';
    cy003.Caption:='-';
    cy004.Caption:='-';
  end;
end;

procedure Tfrmloginfo.ppDetailBand6BeforePrint(Sender: TObject);
begin
  if query7.fieldbyname('box').value>0 then begin
    dy001.Caption:=formatfloat('#0.00',query7.fieldbyname('t4qty').value*1.00/query7.fieldbyname('box').value);
  end else begin
    dy001.Caption:='0.00';
  end;
  dy005.Caption:=formatfloat('#0.00',query7.fieldbyname('acost').value);
  dy006.Caption:=formatfloat('#0.00',query7.fieldbyname('bcost').value);
  dy007.Caption:=formatfloat('#0.00',query7.fieldbyname('ocost').value);
  if query7.fieldbyname('t4qty').value>0 then begin
    dy002.Caption:=formatfloat('#0.00',query7.fieldbyname('acost1').value);//*query7.fieldbyname('acost').value*1.0/query7.fieldbyname('t4qty').value);
    dy003.Caption:=formatfloat('#0.00',query7.fieldbyname('bcost1').value);//*query7.fieldbyname('bcost').value*1.0/query7.fieldbyname('t4qty').value);
    dy004.Caption:=formatfloat('#0.00',query7.fieldbyname('ocost1').value);//*query7.fieldbyname('ocost').value*1.0/query7.fieldbyname('t4qty').value);
  end else begin
    dy002.Caption:='-';
    dy003.Caption:='-';
    dy004.Caption:='-';
  end;
end;

procedure Tfrmloginfo.ppSummaryBand4BeforePrint(Sender: TObject);
begin
  with query6 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    commandtext:='select distinct flag6,shpm,pkm,curr,sum(acost*box)/sum(box) as acost,sum(bcost*box)/sum(box) as bcost,sum(ocost*box)/sum(box) as ocost,'
                +'sum(t4qty) as t4qty,sum(box) as box,sum(wght) as wght,sum(cbm) as cbm,sum(acost1*t4qty)/sum(t4qty) as acost1,sum(bcost1*t4qty)/sum(t4qty) as bcost1,sum(ocost1*t4qty)/sum(t4qty) as ocost1 '
                +'from sp_pdn_genlogistic_cost(:x1,:x2,:x3,:x4,:x5,:x6,:x7) group by flag6,shpm,pkm,curr';
    params[0].asstring:=frmpdnpast.combobox1.text;
    params[1].asinteger:=frmpdnpast.spinedit1.value;
    params[2].asinteger:=frmpdnpast.spinedit2.Value;
    params[3].asinteger:=frmpdnpast.spinedit3.Value;
    params[4].asinteger:=frmpdnpast.spinedit4.Value;
    params[5].asstring:=frmpdnpast.combobox2.text;
    params[6].asstring:=combobox1.text;
    open;
  end;
  subtitle001.Caption:='(from '+inttostr(frmpdnpast.SpinEdit1.value)+' week '+inttostr(frmpdnpast.SpinEdit2.Value)+' to '+inttostr(frmpdnpast.SpinEdit3.value)+' week '+inttostr(frmpdnpast.SpinEdit4.Value)+')';
end;

procedure Tfrmloginfo.ppSummaryBand5BeforePrint(Sender: TObject);
begin
  //
  with query4 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    commandtext:='select sum(acost*box)/sum(box) as acost,sum(bcost*box)/sum(box) as bcost,sum(ocost*box)/sum(box) as ocost,'
                +'sum(t4qty) as t4qty,sum(box) as box,sum(acost1*t4qty)/sum(t4qty) as acost1,sum(bcost1*t4qty)/sum(t4qty) as bcost1,sum(ocost1*t4qty)/sum(t4qty) as ocost1 '
                +'from sp_pdn_genlogistic_cost(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
    params[0].asstring:=frmpdnpast.combobox1.text;
    params[1].asinteger:=frmpdnpast.spinedit1.value;
    params[2].asinteger:=frmpdnpast.spinedit2.Value;
    params[3].asinteger:=frmpdnpast.spinedit3.Value;
    params[4].asinteger:=frmpdnpast.spinedit4.Value;
    params[5].asstring:=frmpdnpast.combobox2.text;
    params[6].asstring:=combobox1.text;
    open;
    //if not fieldbyname('acost').isnull then cw005.Caption:=formatfloat('0.00',fieldbyname('acost').value)
    //else cw005.Caption:='-';
    //if not fieldbyname('bcost').isnull then cw006.Caption:=formatfloat('0.00',fieldbyname('bcost').value)
    //else cw006.Caption:='-';
    if not fieldbyname('ocost').isnull then cw007.Caption:=formatfloat('0.00',fieldbyname('ocost').value)
    else cw007.Caption:='-';
    if fieldbyname('t4qty').value>0 then begin
      //cw002.Caption:=formatfloat('#0.00',fieldbyname('acost1').value);//*fieldbyname('acost').value*1.0/fieldbyname('t4qty').value);
      //cw003.Caption:=formatfloat('#0.00',fieldbyname('bcost1').value);//*fieldbyname('bcost').value*1.0/fieldbyname('t4qty').value);
      cw004.Caption:=formatfloat('#0.00',fieldbyname('ocost1').value);//*fieldbyname('ocost').value*1.0/fieldbyname('t4qty').value);
    end else begin
      //cw002.Caption:='-';
      //cw003.Caption:='-';
      cw004.Caption:='-';
    end;
  end;
  with query4 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    commandtext:='select sum(acost*box)/sum(box) as acost,sum(bcost*box)/sum(box) as bcost,sum(ocost*box)/sum(box) as ocost,'
                +'sum(t4qty) as t4qty,sum(box) as box,sum(acost1*t4qty)/sum(t4qty) as acost1,sum(bcost1*t4qty)/sum(t4qty) as bcost1,sum(ocost1*t4qty)/sum(t4qty) as ocost1 '
                +'from sp_pdn_genlogistic_cost(:x1,:x2,:x3,:x4,:x5,:x6,:x7) where acost>0';
    params[0].asstring:=frmpdnpast.combobox1.text;
    params[1].asinteger:=frmpdnpast.spinedit1.value;
    params[2].asinteger:=frmpdnpast.spinedit2.Value;
    params[3].asinteger:=frmpdnpast.spinedit3.Value;
    params[4].asinteger:=frmpdnpast.spinedit4.Value;
    params[5].asstring:=frmpdnpast.combobox2.text;
    params[6].asstring:=combobox1.text;
    open;
    if not fieldbyname('acost').isnull then cw005.Caption:=formatfloat('0.00',fieldbyname('acost').value)
    else cw005.Caption:='-';
    //if not fieldbyname('bcost').isnull then cw006.Caption:=formatfloat('0.00',fieldbyname('bcost').value)
    //else cw006.Caption:='-';
    //if not fieldbyname('ocost').isnull then cw007.Caption:=formatfloat('0.00',fieldbyname('ocost').value)
    //else cw007.Caption:='-';
    if fieldbyname('t4qty').value>0 then begin
      cw002.Caption:=formatfloat('#0.00',fieldbyname('acost1').value);//*fieldbyname('acost').value*1.0/fieldbyname('t4qty').value);
      //cw003.Caption:=formatfloat('#0.00',fieldbyname('bcost1').value);//*fieldbyname('bcost').value*1.0/fieldbyname('t4qty').value);
      //cw004.Caption:=formatfloat('#0.00',fieldbyname('ocost1').value);//*fieldbyname('ocost').value*1.0/fieldbyname('t4qty').value);
    end else begin
      cw002.Caption:='-';
      //cw003.Caption:='-';
      //cw004.Caption:='-';
    end;
  end;
  with query4 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    commandtext:='select sum(acost*box)/sum(box) as acost,sum(bcost*box)/sum(box) as bcost,sum(ocost*box)/sum(box) as ocost,'
                +'sum(t4qty) as t4qty,sum(box) as box,sum(acost1*t4qty)/sum(t4qty) as acost1,sum(bcost1*t4qty)/sum(t4qty) as bcost1,sum(ocost1*t4qty)/sum(t4qty) as ocost1 '
                +'from sp_pdn_genlogistic_cost(:x1,:x2,:x3,:x4,:x5,:x6,:x7) where bcost>0';
    params[0].asstring:=frmpdnpast.combobox1.text;
    params[1].asinteger:=frmpdnpast.spinedit1.value;
    params[2].asinteger:=frmpdnpast.spinedit2.Value;
    params[3].asinteger:=frmpdnpast.spinedit3.Value;
    params[4].asinteger:=frmpdnpast.spinedit4.Value;
    params[5].asstring:=frmpdnpast.combobox2.text;
    params[6].asstring:=combobox1.text;
    open;
    //if not fieldbyname('acost').isnull then cw005.Caption:=formatfloat('0.00',fieldbyname('acost').value)
    //else cw005.Caption:='-';
    if not fieldbyname('bcost').isnull then cw006.Caption:=formatfloat('0.00',fieldbyname('bcost').value)
    else cw006.Caption:='-';
    //if not fieldbyname('ocost').isnull then cw007.Caption:=formatfloat('0.00',fieldbyname('ocost').value)
    //else cw007.Caption:='-';
    if fieldbyname('t4qty').value>0 then begin
      //cw002.Caption:=formatfloat('#0.00',fieldbyname('acost1').value);//*fieldbyname('acost').value*1.0/fieldbyname('t4qty').value);
      cw003.Caption:=formatfloat('#0.00',fieldbyname('bcost1').value);//*fieldbyname('bcost').value*1.0/fieldbyname('t4qty').value);
      //cw004.Caption:=formatfloat('#0.00',fieldbyname('ocost1').value);//*fieldbyname('ocost').value*1.0/fieldbyname('t4qty').value);
    end else begin
      //cw002.Caption:='-';
      cw003.Caption:='-';
      //cw004.Caption:='-';
    end;
  end;
  with query7 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    commandtext:='select distinct flag60 as flag6,shpm,pkm,curr,sum(acost*box)/sum(box) as acost,sum(bcost*box)/sum(box) as bcost,sum(ocost*box)/sum(box) as ocost,'
                +'sum(t4qty) as t4qty,sum(box) as box,sum(wght) as wght,sum(cbm) as cbm,sum(acost1*t4qty)/sum(t4qty) as acost1,sum(bcost1*t4qty)/sum(t4qty) as bcost1,sum(ocost1*t4qty)/sum(t4qty) as ocost1 '
                +'from sp_pdn_genlogistic_cost(:x1,:x2,:x3,:x4,:x5,:x6,:x7) group by flag60,shpm,pkm,curr';
    params[0].asstring:=frmpdnpast.combobox1.text;
    params[1].asinteger:=frmpdnpast.spinedit1.value;
    params[2].asinteger:=frmpdnpast.spinedit2.Value;
    params[3].asinteger:=frmpdnpast.spinedit3.Value;
    params[4].asinteger:=frmpdnpast.spinedit4.Value;
    params[5].asstring:=frmpdnpast.combobox2.text;
    params[6].asstring:=combobox1.text;
    open;
  end;
end;

procedure Tfrmloginfo.ppSummaryBand6BeforePrint(Sender: TObject);
begin
  //dest001.Caption:=frmpdnpast.combobox2.text+'1';
  with query4 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    commandtext:='select sum(acost*box)/sum(box) as acost,sum(bcost*box)/sum(box) as bcost,sum(ocost*box)/sum(box) as ocost,'
                +'sum(t4qty) as t4qty,sum(box) as box,sum(acost1*t4qty)/sum(t4qty) as acost1,sum(bcost1*t4qty)/sum(t4qty) as bcost1,sum(ocost1*t4qty)/sum(t4qty) as ocost1 '
                +'from sp_pdn_genlogistic_cost(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
    params[0].asstring:=frmpdnpast.combobox1.text;
    params[1].asinteger:=frmpdnpast.spinedit1.value;
    params[2].asinteger:=frmpdnpast.spinedit2.Value;
    params[3].asinteger:=frmpdnpast.spinedit3.Value;
    params[4].asinteger:=frmpdnpast.spinedit4.Value;
    params[5].asstring:=frmpdnpast.combobox2.text;
    params[6].asstring:=combobox1.text;
    open;
    //if not fieldbyname('acost').isnull then dw005.Caption:=formatfloat('0.00',fieldbyname('acost').value)
    //else dw005.Caption:='-';
    //if not fieldbyname('bcost').isnull then dw006.Caption:=formatfloat('0.00',fieldbyname('bcost').value)
    //else dw006.Caption:='-';
    if not fieldbyname('ocost').isnull then dw007.Caption:=formatfloat('0.00',fieldbyname('ocost').value)
    else dw007.Caption:='-';
    if fieldbyname('t4qty').value>0 then begin
      //dw002.Caption:=formatfloat('#0.00',fieldbyname('acost1').value);
      //dw003.Caption:=formatfloat('#0.00',fieldbyname('bcost1').value);
      dw004.Caption:=formatfloat('#0.00',fieldbyname('ocost1').value);
    end else begin
      //dw002.Caption:='-';
      //dw003.Caption:='-';
      dw004.Caption:='-';
    end;
  end;
  with query4 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    commandtext:='select sum(acost*box)/sum(box) as acost,sum(bcost*box)/sum(box) as bcost,sum(ocost*box)/sum(box) as ocost,'
                +'sum(t4qty) as t4qty,sum(box) as box,sum(acost1*t4qty)/sum(t4qty) as acost1,sum(bcost1*t4qty)/sum(t4qty) as bcost1,sum(ocost1*t4qty)/sum(t4qty) as ocost1 '
                +'from sp_pdn_genlogistic_cost(:x1,:x2,:x3,:x4,:x5,:x6,:x7) where acost>0';
    params[0].asstring:=frmpdnpast.combobox1.text;
    params[1].asinteger:=frmpdnpast.spinedit1.value;
    params[2].asinteger:=frmpdnpast.spinedit2.Value;
    params[3].asinteger:=frmpdnpast.spinedit3.Value;
    params[4].asinteger:=frmpdnpast.spinedit4.Value;
    params[5].asstring:=frmpdnpast.combobox2.text;
    params[6].asstring:=combobox1.text;
    open;
    if not fieldbyname('acost').isnull then dw005.Caption:=formatfloat('0.00',fieldbyname('acost').value)
    else dw005.Caption:='-';
    //if not fieldbyname('bcost').isnull then dw006.Caption:=formatfloat('0.00',fieldbyname('bcost').value)
    //else dw006.Caption:='-';
    //if not fieldbyname('ocost').isnull then dw007.Caption:=formatfloat('0.00',fieldbyname('ocost').value)
    //else dw007.Caption:='-';
    if fieldbyname('t4qty').value>0 then begin
      dw002.Caption:=formatfloat('#0.00',fieldbyname('acost1').value);
      //dw003.Caption:=formatfloat('#0.00',fieldbyname('bcost1').value);
      //dw004.Caption:=formatfloat('#0.00',fieldbyname('ocost1').value);
    end else begin
      dw002.Caption:='-';
      //dw003.Caption:='-';
      //dw004.Caption:='-';
    end;
  end;
  with query4 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    commandtext:='select sum(acost*box)/sum(box) as acost,sum(bcost*box)/sum(box) as bcost,sum(ocost*box)/sum(box) as ocost,'
                +'sum(t4qty) as t4qty,sum(box) as box,sum(acost1*t4qty)/sum(t4qty) as acost1,sum(bcost1*t4qty)/sum(t4qty) as bcost1,sum(ocost1*t4qty)/sum(t4qty) as ocost1 '
                +'from sp_pdn_genlogistic_cost(:x1,:x2,:x3,:x4,:x5,:x6,:x7) where bcost>0';
    params[0].asstring:=frmpdnpast.combobox1.text;
    params[1].asinteger:=frmpdnpast.spinedit1.value;
    params[2].asinteger:=frmpdnpast.spinedit2.Value;
    params[3].asinteger:=frmpdnpast.spinedit3.Value;
    params[4].asinteger:=frmpdnpast.spinedit4.Value;
    params[5].asstring:=frmpdnpast.combobox2.text;
    params[6].asstring:=combobox1.text;
    open;
    //if not fieldbyname('acost').isnull then dw005.Caption:=formatfloat('0.00',fieldbyname('acost').value)
    //else dw005.Caption:='-';
    if not fieldbyname('bcost').isnull then dw006.Caption:=formatfloat('0.00',fieldbyname('bcost').value)
    else dw006.Caption:='-';
    //if not fieldbyname('ocost').isnull then dw007.Caption:=formatfloat('0.00',fieldbyname('ocost').value)
    //else dw007.Caption:='-';
    if fieldbyname('t4qty').value>0 then begin
      //dw002.Caption:=formatfloat('#0.00',fieldbyname('acost1').value);
      dw003.Caption:=formatfloat('#0.00',fieldbyname('bcost1').value);
      //dw004.Caption:=formatfloat('#0.00',fieldbyname('ocost1').value);
    end else begin
      //dw002.Caption:='-';
      dw003.Caption:='-';
      //dw004.Caption:='-';
    end;
  end;
  pb001.Caption:=''; pb002.Caption:=''; pb003.Caption:=''; pb004.Caption:=''; pb0031.Caption:=''; pb0041.Caption:='';
  pk001.Caption:=''; pk002.Caption:=''; pk003.Caption:=''; pk004.Caption:=''; pk0031.Caption:=''; pk0041.Caption:='';
  pu001.Caption:=''; pu002.Caption:=''; pu003.Caption:=''; pu004.Caption:=''; pu0031.Caption:=''; pu0041.Caption:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select prod,defshpm,budge,b0,budge+b0 as tbudget,budge1,b1,budge1+b1 as tbudget1,budge2,b2,budge2+b2 as tbudget2,budge3,b3,budge3+b3 as tbudget3 '
                +'from cust_logistic_budget where tplant=:x1 and substr(cust,1,4)=:x2 order by prod';
    params[0].asstring:=frmpdnpast.combobox1.text;
    params[1].asstring:=query5.fieldbyname('cust1').value;//frmpdnpast.combobox2.text;
    open;
    first;
    while not eof do begin
      with query4 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        params.createparam(ftstring,'x6',ptinput);
        params.createparam(ftstring,'x7',ptinput);
        commandtext:='select sum(acost*box)/sum(box) as acost,sum(bcost*box)/sum(box) as bcost,sum(t4qty) as t4qty,sum(box) as box,'
                    +'sum(acost1*t4qty)/sum(t4qty) as acost1,sum(bcost1*t4qty)/sum(t4qty) as bcost1,sum(ocost1*t4qty)/sum(t4qty) as ocost1,'
                    +'sum(acost2*t4qty)/sum(t4qty) as acost2,sum(bcost2*t4qty)/sum(t4qty) as bcost2,sum(tcost)/sum(t4qty) as tcost '
                    +'from sp_pdn_genlogistic_cost(:x1,:x2,:x3,:x4,:x5,:x6,:x7) where flag60='''+query2.fieldbyname('prod').value+'''';
        if pos('AIR',query2.fieldbyname('defshpm').value)>0 then commandtext:=commandtext+' and acost>0'
        else commandtext:=commandtext+' and bcost>0';
        params[0].asstring:=frmpdnpast.combobox1.text;
        params[1].asinteger:=frmpdnpast.spinedit1.value;
        params[2].asinteger:=frmpdnpast.spinedit2.Value;
        params[3].asinteger:=frmpdnpast.spinedit3.Value;
        params[4].asinteger:=frmpdnpast.spinedit4.Value;
        params[5].asstring:=frmpdnpast.combobox2.text;
        params[6].asstring:=combobox1.text;
        open;
      end;
      with query8 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        params.createparam(ftinteger,'x4',ptinput);
        params.createparam(ftinteger,'x5',ptinput);
        params.createparam(ftstring,'x6',ptinput);
        params.createparam(ftstring,'x7',ptinput);
        commandtext:='select sum(tcost)/sum(t4qty) as tcost '
                    +'from sp_pdn_genlogistic_cost(:x1,:x2,:x3,:x4,:x5,:x6,:x7) where flag60='''+query2.fieldbyname('prod').value+'''';
        //if pos('AIR',query2.fieldbyname('defshpm').value)>0 then commandtext:=commandtext+' and acost>0'
        //else commandtext:=commandtext+' and bcost>0';
        params[0].asstring:=frmpdnpast.combobox1.text;
        params[1].asinteger:=frmpdnpast.spinedit1.value;
        params[2].asinteger:=frmpdnpast.spinedit2.Value;
        params[3].asinteger:=frmpdnpast.spinedit3.Value;
        params[4].asinteger:=frmpdnpast.spinedit4.Value;
        params[5].asstring:=frmpdnpast.combobox2.text;
        params[6].asstring:=combobox1.text;
        open;
      end;
      if fieldbyname('prod').value='B' then begin
        pb001.Caption:='B ';
        pb002.Caption:=fieldbyname('defshpm').value;
        if (frmpdnpast.spinedit1.value=2012) or (frmpdnpast.spinedit1.value=2016) or (frmpdnpast.spinedit1.value=2020) then begin
          pb003.Caption:='HKD '+formatfloat('0.00',fieldbyname('budge').value);
          pb0031.Caption:='HKD '+formatfloat('0.00',fieldbyname('b0').value);
          if not query4.FieldByName('acost').isnull then begin
            if pos('AIR',fieldbyname('defshpm').value)>0 then begin
              pb004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('acost2').value+fieldbyname('tbudget').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end else begin
              pb004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('bcost2').value+fieldbyname('tbudget').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end;
          end;
          if not query8.FieldByName('tcost').isnull then
          pb0041.Caption:='HKD '+formatfloat('0.00',-query8.FieldByName('tcost').value+fieldbyname('tbudget').value);
        end else if (frmpdnpast.spinedit1.value=2013) or (frmpdnpast.spinedit1.value=2017) or (frmpdnpast.spinedit1.value=2021) then begin
          pb003.Caption:='HKD '+formatfloat('0.00',fieldbyname('budge1').value);
          pb0031.Caption:='HKD '+formatfloat('0.00',fieldbyname('b1').value);
          if not query4.FieldByName('acost').isnull then begin
            if pos('AIR',fieldbyname('defshpm').value)>0 then begin
              pb004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('acost2').value+fieldbyname('tbudget1').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end else begin
              pb004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('bcost2').value+fieldbyname('tbudget1').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end;
          end;
          if not query8.FieldByName('tcost').isnull then
          pb0041.Caption:='HKD '+formatfloat('0.00',-query8.FieldByName('tcost').value+fieldbyname('tbudget1').value);
        end else if (frmpdnpast.spinedit1.value=2014) or (frmpdnpast.spinedit1.value=2018) or (frmpdnpast.spinedit1.value=2022) then begin
          pb003.Caption:='HKD '+formatfloat('0.00',fieldbyname('budge2').value);
          pb0031.Caption:='HKD '+formatfloat('0.00',fieldbyname('b2').value);
          if not query4.FieldByName('acost').isnull then begin
            if pos('AIR',fieldbyname('defshpm').value)>0 then begin
              pb004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('acost2').value+fieldbyname('tbudget2').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end else begin
              pb004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('bcost2').value+fieldbyname('tbudget2').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end;
          end;
          if not query8.FieldByName('tcost').isnull then
          pb0041.Caption:='HKD '+formatfloat('0.00',-query8.FieldByName('tcost').value+fieldbyname('tbudget2').value);
        end else if (frmpdnpast.spinedit1.value=2015) or (frmpdnpast.spinedit1.value=2019) or (frmpdnpast.spinedit1.value=2023) then begin
          pb003.Caption:='HKD '+formatfloat('0.00',fieldbyname('budge3').value);
          pb0031.Caption:='HKD '+formatfloat('0.00',fieldbyname('b3').value);
          if not query4.FieldByName('acost').isnull then begin
            if pos('AIR',fieldbyname('defshpm').value)>0 then begin
              pb004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('acost2').value+fieldbyname('tbudget3').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end else begin
              pb004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('bcost2').value+fieldbyname('tbudget3').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end;
          end;
          if not query8.FieldByName('tcost').isnull then
          pb0041.Caption:='HKD '+formatfloat('0.00',-query8.FieldByName('tcost').value+fieldbyname('tbudget3').value);
        end;
      end else if fieldbyname('prod').value='K' then begin
        pk001.Caption:='K ';
        pk002.Caption:=fieldbyname('defshpm').value;
        if (frmpdnpast.spinedit1.value=2012) or (frmpdnpast.spinedit1.value=2016) or (frmpdnpast.spinedit1.value=2020) then begin
          pk003.Caption:='HKD '+formatfloat('0.00',fieldbyname('budge').value);
          pk0031.Caption:='HKD '+formatfloat('0.00',fieldbyname('b0').value);
          if not query4.FieldByName('acost').isnull then begin
            if pos('AIR',fieldbyname('defshpm').value)>0 then begin
              pk004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('acost2').value+fieldbyname('tbudget').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end else begin
              pk004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('bcost2').value+fieldbyname('tbudget').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end;
          end;
          if not query8.FieldByName('tcost').isnull then
          pk0041.Caption:='HKD '+formatfloat('0.00',-query8.FieldByName('tcost').value+fieldbyname('tbudget').value);
        end else if (frmpdnpast.spinedit1.value=2013) or (frmpdnpast.spinedit1.value=2017) or (frmpdnpast.spinedit1.value=2021) then begin
          pk003.Caption:='HKD '+formatfloat('0.00',fieldbyname('budge1').value);
          pk0031.Caption:='HKD '+formatfloat('0.00',fieldbyname('b1').value);
          if not query4.FieldByName('acost').isnull then begin
            if pos('AIR',fieldbyname('defshpm').value)>0 then begin
              pk004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('acost2').value+fieldbyname('tbudget1').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end else begin
              pk004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('bcost2').value+fieldbyname('tbudget1').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end;
          end;
          if not query8.FieldByName('tcost').isnull then
          pk0041.Caption:='HKD '+formatfloat('0.00',-query8.FieldByName('tcost').value+fieldbyname('tbudget1').value);
        end else if (frmpdnpast.spinedit1.value=2014) or (frmpdnpast.spinedit1.value=2018) or (frmpdnpast.spinedit1.value=2022) then begin
          pk003.Caption:='HKD '+formatfloat('0.00',fieldbyname('budge2').value);
          pk0031.Caption:='HKD '+formatfloat('0.00',fieldbyname('b2').value);
          if not query4.FieldByName('acost').isnull then begin
            if pos('AIR',fieldbyname('defshpm').value)>0 then begin
              pk004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('acost2').value+fieldbyname('tbudget2').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end else begin
              pk004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('bcost2').value+fieldbyname('tbudget2').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end;
          end;
          if not query8.FieldByName('tcost').isnull then
          pk0041.Caption:='HKD '+formatfloat('0.00',-query8.FieldByName('tcost').value+fieldbyname('tbudget2').value);
        end else if (frmpdnpast.spinedit1.value=2015) or (frmpdnpast.spinedit1.value=2019) or (frmpdnpast.spinedit1.value=2023) then begin
          pk003.Caption:='HKD '+formatfloat('0.00',fieldbyname('budge3').value);
          pk0031.Caption:='HKD '+formatfloat('0.00',fieldbyname('b3').value);
          if not query4.FieldByName('acost').isnull then begin
            if pos('AIR',fieldbyname('defshpm').value)>0 then begin
              pk004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('acost2').value+fieldbyname('tbudget3').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end else begin
              pk004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('bcost2').value+fieldbyname('tbudget3').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end;
          end;
          if not query8.FieldByName('tcost').isnull then
          pk0041.Caption:='HKD '+formatfloat('0.00',-query8.FieldByName('tcost').value+fieldbyname('tbudget3').value);
        end;
      end else if fieldbyname('prod').value='U' then begin
        pu001.Caption:='U ';
        pu002.Caption:=fieldbyname('defshpm').value;
        if (frmpdnpast.spinedit1.value=2012) or (frmpdnpast.spinedit1.value=2016) or (frmpdnpast.spinedit1.value=2020) then begin
          pu003.Caption:='HKD '+formatfloat('0.00',fieldbyname('budge').value);
          pu0031.Caption:='HKD '+formatfloat('0.00',fieldbyname('b0').value);
          if not query4.FieldByName('acost').isnull then begin
            if pos('AIR',fieldbyname('defshpm').value)>0 then begin
              pu004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('acost2').value+fieldbyname('tbudget').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end else begin
              pu004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('bcost2').value+fieldbyname('tbudget').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end;
          end;
          if not query8.FieldByName('tcost').isnull then
          pu0041.Caption:='HKD '+formatfloat('0.00',-query8.FieldByName('tcost').value+fieldbyname('tbudget').value);
        end else if (frmpdnpast.spinedit1.value=2013) or (frmpdnpast.spinedit1.value=2017) or (frmpdnpast.spinedit1.value=2021) then begin
          pu003.Caption:='HKD '+formatfloat('0.00',fieldbyname('budge1').value);
          pu0031.Caption:='HKD '+formatfloat('0.00',fieldbyname('b1').value);
          if not query4.FieldByName('acost').isnull then begin
            if pos('AIR',fieldbyname('defshpm').value)>0 then begin
              pu004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('acost2').value+fieldbyname('tbudget1').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end else begin
              pu004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('bcost2').value+fieldbyname('tbudget1').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end;
          end;
          if not query8.FieldByName('tcost').isnull then
          pu0041.Caption:='HKD '+formatfloat('0.00',-query8.FieldByName('tcost').value+fieldbyname('tbudget1').value);
        end else if (frmpdnpast.spinedit1.value=2014) or (frmpdnpast.spinedit1.value=2018) or (frmpdnpast.spinedit1.value=2022) then begin
          pu003.Caption:='HKD '+formatfloat('0.00',fieldbyname('budge2').value);
          pu0031.Caption:='HKD '+formatfloat('0.00',fieldbyname('b2').value);
          if not query4.FieldByName('acost').isnull then begin
            if pos('AIR',fieldbyname('defshpm').value)>0 then begin
              pu004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('acost2').value+fieldbyname('tbudget2').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end else begin
              pu004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('bcost2').value+fieldbyname('tbudget2').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end;
          end;
          if not query8.FieldByName('tcost').isnull then
          pu0041.Caption:='HKD '+formatfloat('0.00',-query8.FieldByName('tcost').value+fieldbyname('tbudget2').value);
        end else if (frmpdnpast.spinedit1.value=2015) or (frmpdnpast.spinedit1.value=2019) or (frmpdnpast.spinedit1.value=2023) then begin
          pu003.Caption:='HKD '+formatfloat('0.00',fieldbyname('budge3').value);
          pu0031.Caption:='HKD '+formatfloat('0.00',fieldbyname('b3').value);
          if not query4.FieldByName('acost').isnull then begin
            if pos('AIR',fieldbyname('defshpm').value)>0 then begin
              pu004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('acost2').value+fieldbyname('tbudget3').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end else begin
              pu004.Caption:='HKD '+formatfloat('0.00',-query4.FieldByName('bcost2').value+fieldbyname('tbudget3').value);//*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end;
          end;
          if not query8.FieldByName('tcost').isnull then
          pu0041.Caption:='HKD '+formatfloat('0.00',-query8.FieldByName('tcost').value+fieldbyname('tbudget3').value);
        end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  {
  with query4 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    params.createparam(ftinteger,'x4',ptinput);
    params.createparam(ftinteger,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    params.createparam(ftstring,'x7',ptinput);
    commandtext:='select distinct flag60,curr,sum(acost*t4qty+bcost*t4qty)/sum(t4qty) as acost,sum(bcost*t4qty)/sum(t4qty) as bcost,sum(t4qty) as t4qty,sum(box) as box '
                +'from sp_pdn_genlogistic_cost(:x1,:x2,:x3,:x4,:x5,:x6,:x7) group by flag60,curr order by flag60';
    params[0].asstring:=frmpdnpast.combobox1.text;
    params[1].asinteger:=frmpdnpast.spinedit1.value;
    params[2].asinteger:=frmpdnpast.spinedit2.Value;
    params[3].asinteger:=frmpdnpast.spinedit3.Value;
    params[4].asinteger:=frmpdnpast.spinedit4.Value;
    params[5].asstring:=frmpdnpast.combobox2.text;
    params[6].asstring:=combobox1.text;
    open;
    first;
    while not eof do begin
      if fieldbyname('flag60').value='B' then begin
        pb001.Caption:='B ';
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          commandtext:='select defshpm,budge from cust_logistic_budget where tplant=:x1 and substr(cust,1,4)=:x2 and prod=''B''';
          params[0].asstring:=frmpdnpast.combobox1.text;
          params[1].asstring:=frmpdnpast.combobox2.text;
          open;
          if not fieldbyname('defshpm').IsNull then begin
            pb002.Caption:=fieldbyname('defshpm').value;
            pb003.Caption:=query4.FieldByName('curr').value+' '+formatfloat('0.00',fieldbyname('budge').value);
            if pos('AIR',fieldbyname('defshpm').value)>0 then begin
              pb004.Caption:=query4.FieldByName('curr').value+' '+formatfloat('0.00',-query4.FieldByName('acost').value*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end else begin
              pb004.Caption:=query4.FieldByName('curr').value+' '+formatfloat('0.00',-query4.FieldByName('bcost').value*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end;
          end;
        end;
      end else if fieldbyname('flag60').value='K' then begin
        pk001.Caption:='K ';
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          commandtext:='select defshpm,budge from cust_logistic_budget where tplant=:x1 and substr(cust,1,4)=:x2 and prod=''K''';
          params[0].asstring:=frmpdnpast.combobox1.text;
          params[1].asstring:=frmpdnpast.combobox2.text;
          open;
          if not fieldbyname('defshpm').IsNull then begin
            pk002.Caption:=fieldbyname('defshpm').value;
            pk003.Caption:=query4.FieldByName('curr').value+' '+formatfloat('0.00',fieldbyname('budge').value);
            if pos('AIR',fieldbyname('defshpm').value)>0 then begin
              pk004.Caption:=query4.FieldByName('curr').value+' '+formatfloat('0.00',-query4.FieldByName('acost').value*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end else begin
              pk004.Caption:=query4.FieldByName('curr').value+' '+formatfloat('0.00',-query4.FieldByName('bcost').value*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end;
          end;
        end;
      end else begin
        pu001.Caption:='U ';
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          commandtext:='select defshpm,budge from cust_logistic_budget where tplant=:x1 and substr(cust,1,4)=:x2 and prod=''U''';
          params[0].asstring:=frmpdnpast.combobox1.text;
          params[1].asstring:=frmpdnpast.combobox2.text;
          open;
          if not fieldbyname('defshpm').IsNull then begin
            pu002.Caption:=fieldbyname('defshpm').value;
            pu003.Caption:=query4.FieldByName('curr').value+' '+formatfloat('0.00',fieldbyname('budge').value);
            if pos('AIR',fieldbyname('defshpm').value)>0 then begin
              pu004.Caption:=query4.FieldByName('curr').value+' '+formatfloat('0.00',-query4.FieldByName('acost').value*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end else begin
              pu004.Caption:=query4.FieldByName('curr').value+' '+formatfloat('0.00',-query4.FieldByName('bcost').value*query4.FieldByName('box').value/query4.FieldByName('t4qty').value+fieldbyname('budge').value);
            end;
          end;
        end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  }
end;

end.
