unit ftylearnformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, myChkBox, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient,
  GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, ppViewr, ppParameter, siComp;

type
  Tfrmftylearn = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine5: TppLine;
    ppLabel6: TppLabel;
    ppLine7: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText15: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    ppLabel9: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel28: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppDBText5: TppDBText;
    ppLabel1: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel30: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ppSummaryBand1: TppSummaryBand;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Query1TPLANT: TWideStringField;
    Query1SEQ: TIntegerField;
    Query1CUST: TWideStringField;
    Query1PTYP: TWideStringField;
    Query1LR1: TFloatField;
    Query1LR2: TFloatField;
    Query1LR3: TFloatField;
    Query1LR4: TFloatField;
    Query1LR5: TFloatField;
    Query1LR6: TFloatField;
    Query1LE1: TFloatField;
    Query1LE2: TFloatField;
    Query1LE3: TFloatField;
    Query1LE4: TFloatField;
    Query1LE5: TFloatField;
    Query1LE6: TFloatField;
    Query1LE: TFloatField;
    Query1LE7: TFloatField;
    Query1LE8: TFloatField;
    Query1LR7: TFloatField;
    Query1LR8: TFloatField;
    Query1RGRP: TWideStringField;
    Query1EGRP: TWideStringField;
    Query1FLR: TIntegerField;
    Query1TR: TFloatField;
    Query1LE9: TFloatField;
    Query1LE10: TFloatField;
    Query1LR9: TFloatField;
    Query1LR10: TFloatField;
    Query1EDT: TDateField;
    title002: TppLabel;
    Query1SR: TIntegerField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDBText31: TppDBText;
    sr001: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine19: TppLine;
    lr001: TppLabel;
    lr002: TppLabel;
    lr003: TppLabel;
    lr004: TppLabel;
    lr005: TppLabel;
    lr006: TppLabel;
    lr007: TppLabel;
    lr008: TppLabel;
    lr009: TppLabel;
    lr010: TppLabel;
    BitBtn4: TBitBtn;
    Query1RANK: TWideStringField;
    Query1TLR: TFloatField;
    BitBtn8: TBitBtn;
    ppLabel5: TppLabel;
    ppLabel29: TppLabel;
    ppLabel15: TppLabel;
    ppDBText3: TppDBText;
    ppLine15: TppLine;
    le001: TppLabel;
    le002: TppLabel;
    le003: TppLabel;
    le004: TppLabel;
    le005: TppLabel;
    le006: TppLabel;
    le007: TppLabel;
    le008: TppLabel;
    le009: TppLabel;
    le010: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLine16: TppLine;
    ppLine20: TppLine;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppDBText4: TppDBText;
    Query1GRADE: TIntegerField;
    ppLine23: TppLine;
    ppLabel31: TppLabel;
    ppLine24: TppLine;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    siLang1: TsiLang;
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Query1LR1Change(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure Query1RGRPChange(Sender: TField);
    procedure Query1EGRPChange(Sender: TField);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure Query1PTYPChange(Sender: TField);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1TPLANTChange(Sender: TField);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmftylearn: Tfrmftylearn;

implementation

uses mainformu, fprofileformu, phselformu, plc_combformu, plcnewplanformu,
  xknydformu;

{$R *.dfm}

procedure Tfrmftylearn.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq1 from tblplant_learn';
    open;
    if not fieldbyname('seq1').isnull then seq:=fieldbyname('seq1').value+1
    else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
  query1.fieldbyname('tplant').value:=combobox1.text;//frmfprofile.Query1.fieldbyname('tplant').value;
  query1.fieldbyname('ptyp').value:='B';
  query1.fieldbyname('rgrp').value:='SL';
  query1.fieldbyname('flr').value:=1;
  query1.fieldbyname('tlr').value:=10;
  query1.fieldbyname('edt').value:=date;
  {
  query1.fieldbyname('lr1').value:=frmfprofile.query1.fieldbyname('lr1').value;
  query1.fieldbyname('lr2').value:=frmfprofile.query1.fieldbyname('lr2').value;
  query1.FieldByName('lr3').value:=frmfprofile.query1.fieldbyname('lr3').value;
  query1.fieldbyname('lr4').value:=frmfprofile.query1.fieldbyname('lr4').value;
  query1.fieldbyname('lr5').value:=frmfprofile.query1.fieldbyname('lr5').value;
  query1.fieldbyname('lr6').value:=frmfprofile.query1.fieldbyname('lr6').value;
  query1.fieldbyname('lr7').value:=frmfprofile.query1.fieldbyname('lr7').value;
  query1.fieldbyname('lr8').value:=frmfprofile.query1.fieldbyname('lr8').value;
  query1.fieldbyname('le1').value:=frmfprofile.query1.fieldbyname('le1').value;
  query1.fieldbyname('le2').value:=frmfprofile.query1.fieldbyname('le2').value;
  query1.fieldbyname('le3').value:=frmfprofile.query1.fieldbyname('le3').value;
  query1.fieldbyname('le4').value:=frmfprofile.query1.fieldbyname('le4').value;
  query1.fieldbyname('le5').value:=frmfprofile.query1.fieldbyname('le5').value;
  query1.fieldbyname('le6').value:=frmfprofile.query1.fieldbyname('le6').value;
  query1.fieldbyname('le7').value:=frmfprofile.query1.fieldbyname('le7').value;
  query1.fieldbyname('le8').value:=frmfprofile.query1.fieldbyname('le8').value;
  query1.fieldbyname('le').value:=frmfprofile.query1.fieldbyname('le').value;
  }
end;

procedure Tfrmftylearn.Query1PTYPChange(Sender: TField);
var
  r1,r2,r3,r4,r5,r6,r7,r8,r9,r10:double;
begin
  if not query1.fieldbyname('ptyp').isnull then begin
    if query1.fieldbyname('ptyp').value='B' then query1.fieldbyname('sr').value:=1
    else if query1.fieldbyname('ptyp').value='K' then query1.fieldbyname('sr').value:=2
    else if query1.fieldbyname('ptyp').value='U' then query1.fieldbyname('sr').value:=3
    else query1.fieldbyname('sr').value:=4;
    query1.fieldbyname('egrp').value:=query1.fieldbyname('ptyp').value;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_plc_02 where grp='''+query1.fieldbyname('ptyp').value+'''';
      open;
      if not fieldbyname('le1').isnull then r1:=fieldbyname('le1').value else r1:=0;
      if not fieldbyname('le2').isnull then r2:=fieldbyname('le2').value else r2:=0;
      if not fieldbyname('le3').isnull then r3:=fieldbyname('le3').value else r3:=0;
      if not fieldbyname('le4').isnull then r4:=fieldbyname('le4').value else r4:=0;
      if not fieldbyname('le5').isnull then r5:=fieldbyname('le5').value else r5:=0;
      if not fieldbyname('le6').isnull then r6:=fieldbyname('le6').value else r6:=0;
      if not fieldbyname('le7').isnull then r7:=fieldbyname('le7').value else r7:=0;
      if not fieldbyname('le8').isnull then r8:=fieldbyname('le8').value else r8:=0;
      if not fieldbyname('le9').isnull then r9:=fieldbyname('le9').value else r9:=0;
      if not fieldbyname('le10').isnull then r10:=fieldbyname('le10').value else r10:=0;
    end;
    query1.fieldbyname('le1').value:=r1;
    query1.fieldbyname('le2').value:=r2;
    query1.fieldbyname('le3').value:=r3;
    query1.fieldbyname('le4').value:=r4;
    query1.fieldbyname('le5').value:=r5;
    query1.fieldbyname('le6').value:=r6;
    query1.fieldbyname('le7').value:=r7;
    query1.fieldbyname('le8').value:=r8;
    query1.fieldbyname('le9').value:=r9;
    query1.fieldbyname('le10').value:=r10;
  end;
end;

procedure Tfrmftylearn.Query1AfterOpen(DataSet: TDataSet);
begin
  dbgrideh1.columns[1].PickList.clear;
  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp from cust_exfty';
    open;
    first;
    while not eof do begin
      dbgrideh1.Columns[1].PickList.add(fieldbyname('pgrp').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmftylearn.Query1AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  //if query1.applyupdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tblplant_learn where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        {
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          params.createparam(ftinteger,'x8',ptinput);
          params.createparam(ftinteger,'x9',ptinput);
          params.createparam(ftfloat,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(ftfloat,'x12',ptinput);
          params.createparam(ftfloat,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(ftfloat,'x15',ptinput);
          params.createparam(ftfloat,'x16',ptinput);
          params.createparam(ftfloat,'x18',ptinput);
          params.createparam(ftfloat,'x19',ptinput);
          params.createparam(ftfloat,'x20',ptinput);
          params.createparam(ftfloat,'x21',ptinput);
          params.createparam(ftstring,'x22',ptinput);
          params.createparam(ftstring,'x23',ptinput);
          params.createparam(ftinteger,'x24',ptinput);
          params.createparam(ftinteger,'x25',ptinput);
          params.createparam(ftfloat,'x26',ptinput);
          params.createparam(ftinteger,'x27',ptinput);
          params.createparam(ftinteger,'x28',ptinput);
          params.createparam(ftfloat,'x29',ptinput);
          params.createparam(ftfloat,'x30',ptinput);
          params.createparam(ftinteger,'x17',ptinput);
          commandtext:='update tblplant_learn set tplant=:x1,cust=:x2,ptyp=:x3,'
                      +'lr1=:x4,lr2=:x5,lr3=:x6,lr4=:x7,lr5=:x8,lr6=:x9,'
                      +'le1=:x10,le2=:x11,le3=:x12,le4=:x13,le5=:x14,le6=:x15,le=:x16,'
                      +'lr7=:x18,lr8=:x19,le7=:x20,le8=:x21,rgrp=:x22,egrp=:x23,flr=:x24,tlr=:x25,tr=:x26,'
                      +'lr9=:x27,lr10=:x28,le9=:x29,le10=:x30 where seq=:x17';

          params[0].asstring:=query1.fieldbyname('tplant').value;
          if not query1.fieldbyname('cust').isnull then
          params[1].asstring:=query1.fieldbyname('cust').value
          else params[1].asstring:='';
          if not query1.fieldbyname('ptyp').isnull then
          params[2].asstring:=query1.fieldbyname('ptyp').value
          else params[2].asstring:='';
          if not query1.fieldbyname('lr1').isnull then
          params[3].asinteger:=query1.fieldbyname('lr1').value
          else params[3].asinteger:=0;
          if not query1.fieldbyname('lr2').isnull then
          params[4].asinteger:=query1.fieldbyname('lr2').value
          else params[4].asinteger:=0;
          if not query1.fieldbyname('lr3').isnull then
          params[5].asinteger:=query1.fieldbyname('lr3').value
          else params[5].asinteger:=0;
          if not query1.fieldbyname('lr4').isnull then
          params[6].asinteger:=query1.fieldbyname('lr4').value
          else params[6].asinteger:=0;
          if not query1.fieldbyname('lr5').isnull then
          params[7].asinteger:=query1.fieldbyname('lr5').value
          else params[7].asinteger:=0;
          if not query1.fieldbyname('lr6').isnull then
          params[8].asinteger:=query1.fieldbyname('lr6').value
          else params[8].asinteger:=0;
          if not query1.fieldbyname('le1').isnull then
          params[9].asfloat:=query1.fieldbyname('le1').value
          else params[9].asfloat:=0;
          if not query1.fieldbyname('le2').isnull then
          params[10].asfloat:=query1.fieldbyname('le2').value
          else params[10].asfloat:=0;
          if not query1.fieldbyname('le3').isnull then
          params[11].asfloat:=query1.fieldbyname('le3').value
          else params[11].asfloat:=0;
          if not query1.fieldbyname('le4').isnull then
          params[12].asfloat:=query1.fieldbyname('le4').value
          else params[12].asfloat:=0;
          if not query1.fieldbyname('le5').isnull then
          params[13].asfloat:=query1.fieldbyname('le5').value
          else params[13].asfloat:=0;
          if not query1.fieldbyname('le6').isnull then
          params[14].asfloat:=query1.fieldbyname('le6').value
          else params[14].asfloat:=0;
          if not query1.fieldbyname('le').isnull then
          params[15].asfloat:=query1.fieldbyname('le').value
          else params[15].asfloat:=0;
          if not query1.fieldbyname('lr7').isnull then
          params[16].asinteger:=query1.fieldbyname('lr7').value
          else params[16].asinteger:=0;
          if not query1.fieldbyname('lr8').isnull then
          params[17].asinteger:=query1.fieldbyname('lr8').value
          else params[17].asinteger:=0;
          if not query1.fieldbyname('le7').isnull then
          params[18].asfloat:=query1.fieldbyname('le7').value
          else params[18].asfloat:=0;
          if not query1.fieldbyname('le8').isnull then
          params[19].asfloat:=query1.fieldbyname('le8').value
          else params[19].asfloat:=0;
          if not query1.fieldbyname('rgrp').isnull then
          params[20].asstring:=query1.fieldbyname('rgrp').value
          else params[20].asstring:='';
          if not query1.fieldbyname('egrp').isnull then
          params[21].asstring:=query1.fieldbyname('egrp').value
          else params[21].asstring:='';
          if not query1.fieldbyname('flr').isnull then
          params[22].asinteger:=query1.fieldbyname('flr').value
          else params[22].asinteger:=1;
          if not query1.fieldbyname('tlr').isnull then
          params[23].asinteger:=query1.fieldbyname('tlr').value
          else params[23].asinteger:=8;
          if not query1.fieldbyname('tr').isnull then
          params[24].asfloat:=query1.fieldbyname('tr').value
          else params[24].asfloat:=0;
          if not query1.fieldbyname('lr9').isnull then
          params[25].asinteger:=query1.fieldbyname('lr9').value
          else params[25].asinteger:=0;
          if not query1.fieldbyname('lr10').isnull then
          params[26].asinteger:=query1.fieldbyname('lr10').value
          else params[26].asinteger:=0;
          if not query1.fieldbyname('le9').isnull then
          params[27].asfloat:=query1.fieldbyname('le9').value
          else params[27].asfloat:=0;
          if not query1.fieldbyname('le10').isnull then
          params[28].asfloat:=query1.fieldbyname('le10').value
          else params[28].asfloat:=0;
          params[29].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
        }
          str1:='update tblplant_learn set ';
          str1:=str1+'tplant='''+query1.fieldbyname('tplant').value+''',';
          if not query1.fieldbyname('cust').isnull then
          str1:=str1+'cust='''+query1.fieldbyname('cust').value+''','
          else str1:=str1+'cust='''',';
          if not query1.fieldbyname('ptyp').isnull then
          str1:=str1+'ptyp='''+query1.fieldbyname('ptyp').value+''','
          else str1:=str1+'ptyp='''',';
          if not query1.fieldbyname('rank').isnull then
          str1:=str1+'rank='''+query1.fieldbyname('rank').value+''','
          else str1:=str1+'rank='''',';
          if not query1.fieldbyname('sr').isnull then
          str1:=str1+'sr='+query1.fieldbyname('sr').asstring+','
          else str1:=str1+'sr=0,';
          if not query1.fieldbyname('grade').isnull then
          str1:=str1+'grade='+query1.fieldbyname('grade').asstring+','
          else str1:=str1+'grade=0,';
          if not query1.fieldbyname('lr1').isnull then
          str1:=str1+'lr1='+query1.fieldbyname('lr1').asstring+','
          else str1:=str1+'lr1=0,';
          if not query1.fieldbyname('lr2').isnull then
          str1:=str1+'lr2='+query1.fieldbyname('lr2').asstring+','
          else str1:=str1+'lr2=0,';
          if not query1.fieldbyname('lr3').isnull then
          str1:=str1+'lr3='+query1.fieldbyname('lr3').asstring+','
          else str1:=str1+'lr3=0,';
          if not query1.fieldbyname('lr4').isnull then
          str1:=str1+'lr4='+query1.fieldbyname('lr4').asstring+','
          else str1:=str1+'lr4=0,';
          if not query1.fieldbyname('lr5').isnull then
          str1:=str1+'lr5='+query1.fieldbyname('lr5').asstring+','
          else str1:=str1+'lr5=0,';
          if not query1.fieldbyname('lr6').isnull then
          str1:=str1+'lr6='+query1.fieldbyname('lr6').asstring+','
          else str1:=str1+'lr6=0,';
          if not query1.fieldbyname('le1').isnull then
          str1:=str1+'le1='+query1.fieldbyname('le1').asstring+','
          else str1:=str1+'le1=0,';
          if not query1.fieldbyname('le2').isnull then
          str1:=str1+'le2='+query1.fieldbyname('le2').asstring+','
          else str1:=str1+'le2=0,';
          if not query1.fieldbyname('le3').isnull then
          str1:=str1+'le3='+query1.fieldbyname('le3').asstring+','
          else str1:=str1+'le3=0,';
          if not query1.fieldbyname('le4').isnull then
          str1:=str1+'le4='+query1.fieldbyname('le4').asstring+','
          else str1:=str1+'le4=0,';
          if not query1.fieldbyname('le5').isnull then
          str1:=str1+'le5='+query1.fieldbyname('le5').asstring+','
          else str1:=str1+'le5=0,';
          if not query1.fieldbyname('le6').isnull then
          str1:=str1+'le6='+query1.fieldbyname('le6').asstring+','
          else str1:=str1+'le6=0,';
          if not query1.fieldbyname('le').isnull then
          str1:=str1+'le='+query1.fieldbyname('le').asstring+','
          else str1:=str1+'le=0,';
          if not query1.fieldbyname('lr7').isnull then
          str1:=str1+'lr7='+query1.fieldbyname('lr7').asstring+','
          else str1:=str1+'lr7=0,';
          if not query1.fieldbyname('lr8').isnull then
          str1:=str1+'lr8='+query1.fieldbyname('lr8').asstring+','
          else str1:=str1+'lr8=0,';
          if not query1.fieldbyname('le7').isnull then
          str1:=str1+'le7='+query1.fieldbyname('le7').asstring+','
          else str1:=str1+'le7=0,';
          if not query1.fieldbyname('le8').isnull then
          str1:=str1+'le8='+query1.fieldbyname('le8').asstring+','
          else str1:=str1+'le8=0,';
          if not query1.fieldbyname('rgrp').isnull then
          str1:=str1+'rgrp='''+query1.fieldbyname('rgrp').value+''','
          else str1:=str1+'rgrp='''',';
          if not query1.fieldbyname('egrp').isnull then
          str1:=str1+'egrp='''+query1.fieldbyname('egrp').value+''','
          else str1:=str1+'egrp='''',';
          if not query1.fieldbyname('flr').isnull then
          str1:=str1+'flr='+query1.fieldbyname('flr').asstring+','
          else str1:=str1+'flr=1,';
          if not query1.fieldbyname('tlr').isnull then
          str1:=str1+'tlr='+query1.fieldbyname('tlr').asstring+','
          else str1:=str1+'tlr=10,';
          if not query1.fieldbyname('tr').isnull then
          str1:=str1+'tr='+query1.fieldbyname('tr').asstring+','
          else str1:=str1+'tr=0,';
          if not query1.fieldbyname('lr9').isnull then
          str1:=str1+'lr9='+query1.fieldbyname('lr9').asstring+','
          else str1:=str1+'lr9=0,';
          if not query1.fieldbyname('lr10').isnull then
          str1:=str1+'lr10='+query1.fieldbyname('lr10').asstring+','
          else str1:=str1+'lr10=0,';
          if not query1.fieldbyname('le9').isnull then
          str1:=str1+'le9='+query1.fieldbyname('le9').asstring+','
          else str1:=str1+'le9=0,';
          if not query1.fieldbyname('edt').isnull then
          str1:=str1+'edt='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('edt').value)+''','
          else str1:=str1+'edt=null,';
          if not query1.fieldbyname('le10').isnull then
          str1:=str1+'le10='+query1.fieldbyname('le10').asstring+' '
          else str1:=str1+'le10=0 ';
          str1:=str1+'where seq='+query1.fieldbyname('seq').asstring;
          //showmessage(str1);
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
          
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftinteger,'x6',ptinput);
          params.createparam(ftinteger,'x7',ptinput);
          params.createparam(ftinteger,'x8',ptinput);
          params.createparam(ftinteger,'x9',ptinput);
          params.createparam(ftfloat,'x10',ptinput);
          params.createparam(ftfloat,'x11',ptinput);
          params.createparam(ftfloat,'x12',ptinput);
          params.createparam(ftfloat,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(ftfloat,'x15',ptinput);
          params.createparam(ftfloat,'x16',ptinput);
          params.createparam(ftinteger,'x17',ptinput);
          params.createparam(ftfloat,'x18',ptinput);
          params.createparam(ftfloat,'x19',ptinput);
          params.createparam(ftfloat,'x20',ptinput);
          params.createparam(ftfloat,'x21',ptinput);
          params.createparam(ftstring,'x22',ptinput);
          params.createparam(ftstring,'x23',ptinput);
          params.createparam(ftinteger,'x24',ptinput);
          params.createparam(ftinteger,'x25',ptinput);
          params.createparam(ftfloat,'x26',ptinput);
          params.createparam(ftinteger,'x27',ptinput);
          params.createparam(ftinteger,'x28',ptinput);
          params.createparam(ftfloat,'x29',ptinput);
          params.createparam(ftfloat,'x30',ptinput);
          params.createparam(ftdate,'x31',ptinput);
          params.createparam(ftstring,'x32',ptinput);
          params.createparam(ftinteger,'x33',ptinput);
          commandtext:='insert into tblplant_learn(tplant,cust,ptyp,lr1,lr2,lr3,lr4,lr5,lr6,'
                      +'le1,le2,le3,le4,le5,le6,le,seq,lr7,lr8,le7,le8,rgrp,egrp,flr,tlr,tr,lr9,lr10,le9,le10,edt,rank,sr) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13,'
                      +':x14,:x15,:x16,:x17,:x18,:x19,:x20,:x21,:x22,:x23,:x24,:x25,:x26,:x27,:x28,:x29,:x30,:x31,:x32,:x33)';
          params[0].asstring:=query1.fieldbyname('tplant').value;
          if not query1.fieldbyname('cust').isnull then
          params[1].asstring:=query1.fieldbyname('cust').value
          else params[1].asstring:='';
          if not query1.fieldbyname('ptyp').isnull then
          params[2].asstring:=query1.fieldbyname('ptyp').value
          else params[2].asstring:='';
          if not query1.fieldbyname('lr1').isnull then
          params[3].asinteger:=query1.fieldbyname('lr1').value
          else params[3].asinteger:=0;
          if not query1.fieldbyname('lr2').isnull then
          params[4].asinteger:=query1.fieldbyname('lr2').value
          else params[4].asinteger:=0;
          if not query1.fieldbyname('lr3').isnull then
          params[5].asinteger:=query1.fieldbyname('lr3').value
          else params[5].asinteger:=0;
          if not query1.fieldbyname('lr4').isnull then
          params[6].asinteger:=query1.fieldbyname('lr4').value
          else params[6].asinteger:=0;
          if not query1.fieldbyname('lr5').isnull then
          params[7].asinteger:=query1.fieldbyname('lr5').value
          else params[7].asinteger:=0;
          if not query1.fieldbyname('lr6').isnull then
          params[8].asinteger:=query1.fieldbyname('lr6').value
          else params[8].asinteger:=0;
          if not query1.fieldbyname('le1').isnull then
          params[9].asfloat:=query1.fieldbyname('le1').value
          else params[9].asfloat:=0;
          if not query1.fieldbyname('le2').isnull then
          params[10].asfloat:=query1.fieldbyname('le2').value
          else params[10].asfloat:=0;
          if not query1.fieldbyname('le3').isnull then
          params[11].asfloat:=query1.fieldbyname('le3').value
          else params[11].asfloat:=0;
          if not query1.fieldbyname('le4').isnull then
          params[12].asfloat:=query1.fieldbyname('le4').value
          else params[12].asfloat:=0;
          if not query1.fieldbyname('le5').isnull then
          params[13].asfloat:=query1.fieldbyname('le5').value
          else params[13].asfloat:=0;
          if not query1.fieldbyname('le6').isnull then
          params[14].asfloat:=query1.fieldbyname('le6').value
          else params[14].asfloat:=0;
          if not query1.fieldbyname('le').isnull then
          params[15].asfloat:=query1.fieldbyname('le').value
          else params[15].asfloat:=0;
          params[16].asinteger:=query1.fieldbyname('seq').value;
          if not query1.fieldbyname('lr7').isnull then
          params[17].asinteger:=query1.fieldbyname('lr7').value
          else params[17].asinteger:=0;
          if not query1.fieldbyname('lr8').isnull then
          params[18].asinteger:=query1.fieldbyname('lr8').value
          else params[18].asinteger:=0;
          if not query1.fieldbyname('le7').isnull then
          params[19].asfloat:=query1.fieldbyname('le7').value
          else params[19].asfloat:=0;
          if not query1.fieldbyname('le8').isnull then
          params[20].asfloat:=query1.fieldbyname('le8').value
          else params[20].asfloat:=0;
          if not query1.fieldbyname('rgrp').isnull then
          params[21].asstring:=query1.fieldbyname('rgrp').value
          else params[21].asstring:='';
          if not query1.fieldbyname('egrp').isnull then
          params[22].asstring:=query1.fieldbyname('egrp').value
          else params[22].asstring:='';
          if not query1.fieldbyname('flr').isnull then
          params[23].asinteger:=query1.fieldbyname('flr').value
          else params[23].asinteger:=1;
          if not query1.fieldbyname('tlr').isnull then
          params[24].asinteger:=query1.fieldbyname('tlr').value
          else params[24].asinteger:=8;
          if not query1.fieldbyname('tr').isnull then
          params[25].asfloat:=query1.fieldbyname('tr').value
          else params[25].asfloat:=0;
          if not query1.fieldbyname('lr9').isnull then
          params[26].asinteger:=query1.fieldbyname('lr9').value
          else params[26].asinteger:=0;
          if not query1.fieldbyname('lr10').isnull then
          params[27].asinteger:=query1.fieldbyname('lr10').value
          else params[27].asinteger:=0;
          if not query1.fieldbyname('le9').isnull then
          params[28].asfloat:=query1.fieldbyname('le9').value
          else params[28].asfloat:=0;
          if not query1.fieldbyname('le10').isnull then
          params[29].asfloat:=query1.fieldbyname('le10').value
          else params[29].asfloat:=0;
          if not query1.fieldbyname('edt').isnull then
          params[30].asdate:=query1.fieldbyname('edt').value
          else params[30].asdate:=date;
          if not query1.fieldbyname('rank').isnull then
          params[31].asstring:=query1.fieldbyname('rank').value
          else params[31].asstring:='';
          if not query1.fieldbyname('sr').isnull then
          params[32].asinteger:=query1.fieldbyname('sr').value
          else params[32].asinteger:=0;
          execute;
        end;
      end;
    end;
  //end;
end;

procedure Tfrmftylearn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmftylearn:=nil;
end;

procedure Tfrmftylearn.FormCreate(Sender: TObject);
begin
  siLang1.Language:=frmmain.ComboBox2.text;
end;

procedure Tfrmftylearn.BitBtn1Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  dbgrideh1.SelectedIndex:=0;
  query1.Append;
end;

procedure Tfrmftylearn.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tblplant_learn where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    query1.Delete;
  end;
end;

procedure Tfrmftylearn.BitBtn3Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
end;

procedure Tfrmftylearn.BitBtn4Click(Sender: TObject);
begin
  if frmplc_comb=nil then frmplc_comb:=tfrmplc_comb.create(nil);
  frmplc_comb.show;
end;

procedure Tfrmftylearn.Query1LR1Change(Sender: TField);
var
  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10:integer;
  f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,tlr:double;
  i01,i02:integer;
begin
  if not query1.fieldbyname('lr1').isnull then
  i1:=query1.fieldbyname('lr1').value else i1:=20;
  if not query1.fieldbyname('lr2').isnull then
  i2:=query1.fieldbyname('lr2').value else i2:=60;
  if not query1.fieldbyname('lr3').isnull then
  i3:=query1.fieldbyname('lr3').value else i3:=80;
  if not query1.fieldbyname('lr4').isnull then
  i4:=query1.fieldbyname('lr4').value else i4:=100;
  if not query1.fieldbyname('lr5').isnull then
  i5:=query1.fieldbyname('lr5').value else i5:=100;
  if not query1.fieldbyname('lr6').isnull then
  i6:=query1.fieldbyname('lr6').value else i6:=120;
  if not query1.fieldbyname('lr7').isnull then
  i7:=query1.fieldbyname('lr7').value else i7:=120;
  if not query1.fieldbyname('lr8').isnull then
  i8:=query1.fieldbyname('lr8').value else i8:=120;
  if not query1.fieldbyname('lr9').isnull then
  i9:=query1.fieldbyname('lr9').value else i9:=120;
  if not query1.fieldbyname('lr10').isnull then
  i10:=query1.fieldbyname('lr10').value else i10:=120;

  if not query1.fieldbyname('le1').isnull then
  f1:=query1.fieldbyname('le1').value else f1:=60;
  if not query1.fieldbyname('le2').isnull then
  f2:=query1.fieldbyname('le2').value else f2:=80;
  if not query1.fieldbyname('le3').isnull then
  f3:=query1.fieldbyname('le3').value else f3:=90;
  if not query1.fieldbyname('le4').isnull then
  f4:=query1.fieldbyname('le4').value else f4:=100;
  if not query1.fieldbyname('le5').isnull then
  f5:=query1.fieldbyname('le5').value else f5:=100;
  if not query1.fieldbyname('le6').isnull then
  f6:=query1.fieldbyname('le6').value else f6:=100;
  if not query1.fieldbyname('le7').isnull then
  f7:=query1.fieldbyname('le7').value else f7:=100;
  if not query1.fieldbyname('le8').isnull then
  f8:=query1.fieldbyname('le8').value else f8:=100;
  if not query1.fieldbyname('le9').isnull then
  f9:=query1.fieldbyname('le9').value else f9:=100;
  if not query1.fieldbyname('le10').isnull then
  f10:=query1.fieldbyname('le10').value else f10:=100;

  if not query1.fieldbyname('flr').isnull then
  i01:=query1.fieldbyname('flr').value else i01:=1;
  if not query1.fieldbyname('tr').isnull then
  i02:=query1.fieldbyname('tr').value else i02:=0;
  if i01=2 then begin
    i1:=0;
  end else if i01=3 then begin
    i1:=0;i2:=0;
  end else if i01=4 then begin
    i1:=0;i2:=0;i3:=0;
  end else if i01=5 then begin
    i1:=0;i2:=0;i3:=0;i4:=0;
  end else if i01=6 then begin
    i1:=0;i2:=0;i3:=0;i4:=0;i5:=0;
  end else if i01=7 then begin
    i1:=0;i2:=0;i3:=0;i4:=0;i5:=0;i6:=0;
  end else if i01=8 then begin
    i1:=0;i2:=0;i3:=0;i4:=0;i5:=0;i6:=0;i7:=0;
  end else if i01=9 then begin
    i1:=0;i2:=0;i3:=0;i4:=0;i5:=0;i6:=0;i7:=0;i8:=0;
  end else if i01=10 then begin
    i1:=0;i2:=0;i3:=0;i4:=0;i5:=0;i6:=0;i7:=0;i8:=0;i9:=0;
  end;

  if i02>0 then begin
    if i1>0 then begin
      if i02>i1 then begin
        i02:=i02-i1;
        if i02>i2 then begin
          i02:=i02-i2;
          if i02>i3 then begin
            i02:=i02-i3;
            if i02>i4 then begin
              i02:=i02-i4;
              if i02>i5 then begin
                i02:=i02-i5;
                if i02>i6 then begin
                  i02:=i02-i6;
                  if i02>i7 then begin
                    i02:=i02-i7;
                    if i02>i8 then begin
                      i02:=i02-i8;
                      if i02>i9 then begin
                        tlr:=10.00+i02*1.00/(i10*1.00);
                        i10:=i02-i9;
                      end else begin
                        if i02=i9 then tlr:=9.99 else tlr:=9.00+i02*1.00/(i9*1.00);
                        i9:=i02; i10:=0;
                      end;
                    end else begin
                      if i02=i8 then tlr:=8.99 else tlr:=8.00+i02*1.00/(i8*1.00);
                      i8:=i02; i9:=0; i10:=0;
                    end;
                  end else begin
                    if i02=i7 then tlr:=7.99 else tlr:=7.00+i02*1.00/(i7*1.00);
                    i7:=i02; i8:=0; i9:=0; i10:=0;
                  end;
                end else begin
                  if i02=i6 then tlr:=6.99 else tlr:=6.00+i02*1.00/(i6*1.00);
                  i6:=i02; i7:=0; i8:=0; i9:=0; i10:=0;
                end;
              end else begin
                if i02=i5 then tlr:=5.99 else tlr:=5.00+i02*1.00/(i5*1.00);
                i5:=i02; i6:=0; i7:=0; i8:=0; i9:=0; i10:=0;
              end;
            end else begin
              if i02=i4 then tlr:=4.99 else tlr:=4.00+i02*1.00/(i4*1.00);
              i4:=i02; i5:=0; i6:=0; i7:=0; i8:=0; i9:=0; i10:=0;
            end;
          end else begin
            if i02=i3 then tlr:=3.99 else tlr:=3.00+i02*1.00/(i3*1.00);
            i3:=i02; i4:=0; i5:=0; i6:=0; i7:=0; i8:=0; i9:=0; i10:=0;
          end;
        end else begin
          if i02=i2 then tlr:=2.99 else tlr:=2.00+i02*1.00/(i2*1.00);
          i2:=i02; i3:=0; i4:=0; i5:=0; i6:=0; i7:=0; i8:=0; i9:=0; i10:=0;
        end;
      end else begin
        if i02=i1 then tlr:=1.99 else tlr:=1.00+i02*1.00/(i1*1.00);
        i1:=i02; i2:=0; i3:=0; i4:=0; i5:=0; i6:=0; i7:=0; i8:=0; i9:=0; i10:=0;
      end;
    end else if i2>0 then begin
      if i02>i2 then begin
        i02:=i02-i2;
        if i02>i3 then begin
          i02:=i02-i3;
          if i02>i4 then begin
            i02:=i02-i4;
            if i02>i5 then begin
              i02:=i02-i5;
              if i02>i6 then begin
                i02:=i02-i6;
                if i02>i7 then begin
                  i02:=i02-i7;
                  if i02>i8 then begin
                    i02:=i02-i8;
                    if i02>i9 then begin
                      tlr:=10.00+i02*1.00/(i10*1.00);
                      i10:=i02-i9;
                    end else begin
                      if i02=i9 then tlr:=9.99 else tlr:=9.00+i02*1.00/(i9*1.00);
                      i9:=i02; i10:=0;
                    end;
                  end else begin
                    if i02=i8 then tlr:=8.99 else tlr:=8.00+i02*1.00/(i8*1.00);
                    i8:=i02; i9:=0; i10:=0;
                  end;
                end else begin
                  if i02=i7 then tlr:=7.99 else tlr:=7.00+i02*1.00/(i7*1.00);
                  i7:=i02; i8:=0; i9:=0; i10:=0;
                end;
              end else begin
                if i02=i6 then tlr:=6.99 else tlr:=6.00+i02*1.00/(i6*1.00);
                i6:=i02; i7:=0; i8:=0; i9:=0; i10:=0;
              end;
            end else begin
              if i02=i5 then tlr:=5.99 else tlr:=5.00+i02*1.00/(i5*1.00);
              i5:=i02; i6:=0; i7:=0; i8:=0; i9:=0; i10:=0;
            end;
          end else begin
            if i02=i4 then tlr:=4.99 else tlr:=4.00+i02*1.00/(i4*1.00);
            i4:=i02; i5:=0; i6:=0; i7:=0; i8:=0; i9:=0; i10:=0;
          end;
        end else begin
          if i02=i3 then tlr:=3.99 else tlr:=3.00+i02*1.00/(i3*1.00);
          i3:=i02; i4:=0; i5:=0; i6:=0; i7:=0; i8:=0; i9:=0; i10:=0;
        end;
      end else begin
        if i02=i2 then tlr:=2.99 else tlr:=2.00+i02*1.00/(i2*1.00);
        i2:=i02; i3:=0; i4:=0; i5:=0; i6:=0; i7:=0; i8:=0; i9:=0; i10:=0;
      end;
    end else if i3>0 then begin
      if i02>i3 then begin
        i02:=i02-i3;
        if i02>i4 then begin
          i02:=i02-i4;
          if i02>i5 then begin
            i02:=i02-i5;
            if i02>i6 then begin
              i02:=i02-i6;
              if i02>i7 then begin
                i02:=i02-i7;
                if i02>i8 then begin
                  i02:=i02-i8;
                  if i02>i9 then begin
                    tlr:=10.00+i02*1.00/(i10*1.00);
                    i10:=i02-i9;
                  end else begin
                    if i02=i9 then tlr:=9.99 else tlr:=9.00+i02*1.00/(i9*1.00);
                    i9:=i02; i10:=0;
                  end;
                end else begin
                  if i02=i8 then tlr:=8.99 else tlr:=8.00+i02*1.00/(i8*1.00);
                  i8:=i02; i9:=0; i10:=0;
                end;
              end else begin
                if i02=i7 then tlr:=7.99 else tlr:=7.00+i02*1.00/(i7*1.00);
                i7:=i02; i8:=0; i9:=0; i10:=0;
              end;
            end else begin
              if i02=i6 then tlr:=6.99 else tlr:=6.00+i02*1.00/(i6*1.00);
              i6:=i02; i7:=0; i8:=0; i9:=0; i10:=0;
            end;
          end else begin
            if i02=i5 then tlr:=5.99 else tlr:=5.00+i02*1.00/(i5*1.00);
            i5:=i02; i6:=0; i7:=0; i8:=0; i9:=0; i10:=0;
          end;
        end else begin
          if i02=i4 then tlr:=4.99 else tlr:=4.00+i02*1.00/(i4*1.00);
          i4:=i02; i5:=0; i6:=0; i7:=0; i8:=0; i9:=0; i10:=0;
        end;
      end else begin
        if i02=i3 then tlr:=3.99 else tlr:=3.00+i02*1.00/(i3*1.00);
        i3:=i02; i4:=0; i5:=0; i6:=0; i7:=0; i8:=0; i9:=0; i10:=0;
      end;
    end else if i4>0 then begin
      if i02>i4 then begin
        i02:=i02-i4;
        if i02>i5 then begin
          i02:=i02-i5;
          if i02>i6 then begin
            i02:=i02-i6;
            if i02>i7 then begin
              i02:=i02-i7;
              if i02>i8 then begin
                i02:=i02-i8;
                if i02>i9 then begin
                  tlr:=10.00+i02*1.00/(i10*1.00);
                  i10:=i02-i9;
                end else begin
                  if i02=i9 then tlr:=9.99 else tlr:=9.00+i02*1.00/(i9*1.00);
                  i9:=i02; i10:=0;
                end;
              end else begin
                if i02=i8 then tlr:=8.99 else tlr:=8.00+i02*1.00/(i8*1.00);
                i8:=i02; i9:=0; i10:=0;
              end;
            end else begin
              if i02=i7 then tlr:=7.99 else tlr:=7.00+i02*1.00/(i7*1.00);
              i7:=i02; i8:=0; i9:=0; i10:=0;
            end;
          end else begin
            if i02=i6 then tlr:=6.99 else tlr:=6.00+i02*1.00/(i6*1.00);
            i6:=i02; i7:=0; i8:=0; i9:=0; i10:=0;
          end;
        end else begin
          if i02=i5 then tlr:=5.99 else tlr:=5.00+i02*1.00/(i5*1.00);
          i5:=i02; i6:=0; i7:=0; i8:=0; i9:=0; i10:=0;
        end;
      end else begin
        if i02=i4 then tlr:=4.99 else tlr:=4.00+i02*1.00/(i4*1.00);
        i4:=i02; i5:=0; i6:=0; i7:=0; i8:=0; i9:=0; i10:=0;
      end;
    end else if i5>0 then begin
      if i02>i5 then begin
        i02:=i02-i5;
        if i02>i6 then begin
          i02:=i02-i6;
          if i02>i7 then begin
            i02:=i02-i7;
            if i02>i8 then begin
              i02:=i02-i8;
              if i02>i9 then begin
                tlr:=10.00+i02*1.00/(i10*1.00);
                i10:=i02-i9;
              end else begin
                if i02=i9 then tlr:=9.99 else tlr:=9.00+i02*1.00/(i9*1.00);
                i9:=i02; i10:=0;
              end;
            end else begin
              if i02=i8 then tlr:=8.99 else tlr:=8.00+i02*1.00/(i8*1.00);
              i8:=i02; i9:=0; i10:=0;
            end;
          end else begin
            if i02=i7 then tlr:=7.99 else tlr:=7.00+i02*1.00/(i7*1.00);
            i7:=i02; i8:=0; i9:=0; i10:=0;
          end;
        end else begin
          if i02=i6 then tlr:=6.99 else tlr:=6.00+i02*1.00/(i6*1.00);
          i6:=i02; i7:=0; i8:=0; i9:=0; i10:=0;
        end;
      end else begin
        if i02=i5 then tlr:=5.99 else tlr:=5.00+i02*1.00/(i5*1.00);
        i5:=i02; i6:=0; i7:=0; i8:=0; i9:=0; i10:=0;
      end;
    end else if i6>0 then begin
      if i02>i6 then begin
        i02:=i02-i6;
        if i02>i7 then begin
          i02:=i02-i7;
          if i02>i8 then begin
            i02:=i02-i8;
            if i02>i9 then begin
              tlr:=10.00+i02*1.00/(i10*1.00);
              i10:=i02-i9;
            end else begin
              if i02=i9 then tlr:=9.99 else tlr:=9.00+i02*1.00/(i9*1.00);
              i9:=i02; i10:=0;
            end;
          end else begin
            if i02=i8 then tlr:=8.99 else tlr:=8.00+i02*1.00/(i8*1.00);
            i8:=i02; i9:=0; i10:=0;
          end;
        end else begin
          if i02=i7 then tlr:=7.99 else tlr:=7.00+i02*1.00/(i7*1.00);
          i7:=i02; i8:=0; i9:=0; i10:=0;
        end;
      end else begin
        if i02=i6 then tlr:=6.99 else tlr:=6.00+i02*1.00/(i6*1.00);
        i6:=i02; i7:=0; i8:=0; i9:=0; i10:=0;
      end;
    end else if i7>0 then begin
      if i02>i7 then begin
        i02:=i02-i7;
        if i02>i8 then begin
          i02:=i02-i8;
          if i02>i9 then begin
            tlr:=10.00+i02*1.00/(i10*1.00);
            i10:=i02-i9;
          end else begin
            if i02=i9 then tlr:=9.99 else tlr:=9.00+i02*1.00/(i9*1.00);
            i9:=i02; i10:=0;
          end;
        end else begin
          if i02=i8 then tlr:=8.99 else tlr:=8.00+i02*1.00/(i8*1.00);
          i8:=i02; i9:=0; i10:=0;
        end;
      end else begin
        if i02=i7 then tlr:=7.99 else tlr:=7.00+i02*1.00/(i7*1.00);
        i7:=i02; i8:=0; i9:=0; i10:=0;
      end;
    end else if i8>0 then begin
      if i02>i8 then begin
        i02:=i02-i8;
        if i02>i9 then begin
          tlr:=10.00+i02*1.00/(i10*1.00);
          i10:=i02-i9;
        end else begin
          if i02=i9 then tlr:=9.99 else tlr:=9.00+i02*1.00/(i9*1.00);
          i9:=i02; i10:=0;
        end;
      end else begin
        if i02=i8 then tlr:=8.99 else tlr:=8.00+i02*1.00/(i8*1.00);
        i8:=i02; i9:=0; i10:=0;
      end;
    end else if i9>0 then begin
      if i02>i9 then begin
        tlr:=10.00+i02*1.00/(i10*1.00);
        i10:=i02-i9;
      end else begin
        if i02=i9 then tlr:=9.99 else tlr:=9.00+i02*1.00/(i9*1.00);
        i9:=i02; i10:=0;
      end;
    end else if i10>0 then begin
      tlr:=10.00+i02*1.00/(i10*1.00);
      i10:=i02;
    end;
  end;

  if i1+i2+i3+i4+i5+i6+i7+i8+i9+i10>0 then begin
    query1.fieldbyname('le').value:=(i1*f1+i2*f2+i3*f3+i4*f4+i5*f5+i6*f6+i7*f7+i8*f8+i9*f9+i10*f10)/(i1+i2+i3+i4+i5+i6+i7+i8+i9+i10);
    query1.fieldbyname('tlr').value:=tlr;
  end else begin
    query1.fieldbyname('le').value:=0;
    query1.fieldbyname('tlr').value:=0;
  end;
end;

procedure Tfrmftylearn.FormShow(Sender: TObject);
begin
  dbgrideh1.columns[1].PickList.clear;
  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp from cust_exfty';
    open;
    first;
    while not eof do begin
      dbgrideh1.Columns[1].PickList.add(fieldbyname('pgrp').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmftylearn.Query1RGRPChange(Sender: TField);
var
  r1,r2,r3,r4,r5,r6,r7,r8,r9,r10:integer;
begin
  if not query1.fieldbyname('rgrp').isnull then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_plc_01 where grp='''+query1.fieldbyname('rgrp').value+'''';
      open;
      if not fieldbyname('lr1').isnull then r1:=fieldbyname('lr1').value else r1:=0;
      if not fieldbyname('lr2').isnull then r2:=fieldbyname('lr2').value else r2:=0;
      if not fieldbyname('lr3').isnull then r3:=fieldbyname('lr3').value else r3:=0;
      if not fieldbyname('lr4').isnull then r4:=fieldbyname('lr4').value else r4:=0;
      if not fieldbyname('lr5').isnull then r5:=fieldbyname('lr5').value else r5:=0;
      if not fieldbyname('lr6').isnull then r6:=fieldbyname('lr6').value else r6:=0;
      if not fieldbyname('lr7').isnull then r7:=fieldbyname('lr7').value else r7:=0;
      if not fieldbyname('lr8').isnull then r8:=fieldbyname('lr8').value else r8:=0;
      if not fieldbyname('lr9').isnull then r9:=fieldbyname('lr9').value else r9:=0;
      if not fieldbyname('lr10').isnull then r10:=fieldbyname('lr10').value else r10:=0;
    end;
    query1.fieldbyname('lr1').value:=r1;
    query1.fieldbyname('lr2').value:=r2;
    query1.fieldbyname('lr3').value:=r3;
    query1.fieldbyname('lr4').value:=r4;
    query1.fieldbyname('lr5').value:=r5;
    query1.fieldbyname('lr6').value:=r6;
    query1.fieldbyname('lr7').value:=r7;
    query1.fieldbyname('lr8').value:=r8;
    query1.fieldbyname('lr9').value:=r9;
    query1.fieldbyname('lr10').value:=r10;
  end;
end;

procedure Tfrmftylearn.Query1TPLANTChange(Sender: TField);
var
  r1,r2,r3,r4,r5,r6,r7,r8,r9,r10:integer;
begin
  if not query1.fieldbyname('tplant').isnull then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_plc_01 where grp='''+query1.fieldbyname('tplant').value+'''';
      open;
      if not fieldbyname('lr1').isnull then r1:=fieldbyname('lr1').value else r1:=0;
      if not fieldbyname('lr2').isnull then r2:=fieldbyname('lr2').value else r2:=0;
      if not fieldbyname('lr3').isnull then r3:=fieldbyname('lr3').value else r3:=0;
      if not fieldbyname('lr4').isnull then r4:=fieldbyname('lr4').value else r4:=0;
      if not fieldbyname('lr5').isnull then r5:=fieldbyname('lr5').value else r5:=0;
      if not fieldbyname('lr6').isnull then r6:=fieldbyname('lr6').value else r6:=0;
      if not fieldbyname('lr7').isnull then r7:=fieldbyname('lr7').value else r7:=0;
      if not fieldbyname('lr8').isnull then r8:=fieldbyname('lr8').value else r8:=0;
      if not fieldbyname('lr9').isnull then r9:=fieldbyname('lr9').value else r9:=0;
      if not fieldbyname('lr10').isnull then r10:=fieldbyname('lr10').value else r10:=0;
    end;
    query1.fieldbyname('lr1').value:=r1;
    query1.fieldbyname('lr2').value:=r2;
    query1.fieldbyname('lr3').value:=r3;
    query1.fieldbyname('lr4').value:=r4;
    query1.fieldbyname('lr5').value:=r5;
    query1.fieldbyname('lr6').value:=r6;
    query1.fieldbyname('lr7').value:=r7;
    query1.fieldbyname('lr8').value:=r8;
    query1.fieldbyname('lr9').value:=r9;
    query1.fieldbyname('lr10').value:=r10;
  end;
end;

procedure Tfrmftylearn.Query1EGRPChange(Sender: TField);
var
  r1,r2,r3,r4,r5,r6,r7,r8,r9,r10:double;
begin
  if not query1.fieldbyname('egrp').isnull then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_plc_02 where grp='''+query1.fieldbyname('egrp').value+'''';
      open;
      if not fieldbyname('le1').isnull then r1:=fieldbyname('le1').value else r1:=0;
      if not fieldbyname('le2').isnull then r2:=fieldbyname('le2').value else r2:=0;
      if not fieldbyname('le3').isnull then r3:=fieldbyname('le3').value else r3:=0;
      if not fieldbyname('le4').isnull then r4:=fieldbyname('le4').value else r4:=0;
      if not fieldbyname('le5').isnull then r5:=fieldbyname('le5').value else r5:=0;
      if not fieldbyname('le6').isnull then r6:=fieldbyname('le6').value else r6:=0;
      if not fieldbyname('le7').isnull then r7:=fieldbyname('le7').value else r7:=0;
      if not fieldbyname('le8').isnull then r8:=fieldbyname('le8').value else r8:=0;
      if not fieldbyname('le9').isnull then r9:=fieldbyname('le9').value else r9:=0;
      if not fieldbyname('le10').isnull then r10:=fieldbyname('le10').value else r10:=0;
    end;
    query1.fieldbyname('le1').value:=r1;
    query1.fieldbyname('le2').value:=r2;
    query1.fieldbyname('le3').value:=r3;
    query1.fieldbyname('le4').value:=r4;
    query1.fieldbyname('le5').value:=r5;
    query1.fieldbyname('le6').value:=r6;
    query1.fieldbyname('le7').value:=r7;
    query1.fieldbyname('le8').value:=r8;
    query1.fieldbyname('le9').value:=r9;
    query1.fieldbyname('le10').value:=r10;
  end;
end;

procedure Tfrmftylearn.ppDetailBand1BeforePrint(Sender: TObject);
var
  flr001,tlr001,tr001,ys001:integer;
begin
  flr001:=query1.fieldbyname('flr').value;
  tlr001:=strtoint(formatfloat('#0',int(query1.fieldbyname('tlr').value)));
  tr001:=query1.fieldbyname('tr').value;

  lr001.caption:=''; lr002.caption:=''; lr003.caption:=''; lr004.caption:=''; lr005.caption:='';
  lr006.caption:=''; lr007.caption:=''; lr008.caption:=''; lr009.caption:=''; lr010.caption:='';
  le001.caption:=''; le002.caption:=''; le003.caption:=''; le004.caption:=''; le005.caption:='';
  le006.caption:=''; le007.caption:=''; le008.caption:=''; le009.caption:=''; le010.caption:='';
  if flr001=1 then begin
    if tlr001=1 then begin
      lr001.caption:=inttostr(tr001);
      le001.caption:=formatfloat('#.00',query1.fieldbyname('le1').value);
    end else if tlr001=2 then begin
      lr001.caption:=query1.fieldbyname('lr1').asstring;
      le001.caption:=formatfloat('#.00',query1.fieldbyname('le1').value);
      lr002.caption:=inttostr(tr001-query1.fieldbyname('lr1').value);
      le002.caption:=formatfloat('#.00',query1.fieldbyname('le2').value);
    end else if tlr001=3 then begin
      lr001.caption:=query1.fieldbyname('lr1').asstring;
      le001.caption:=formatfloat('#.00',query1.fieldbyname('le1').value);
      lr002.caption:=query1.fieldbyname('lr2').asstring;
      le002.caption:=formatfloat('#.00',query1.fieldbyname('le2').value);
      lr003.caption:=inttostr(tr001-query1.fieldbyname('lr1').value-query1.fieldbyname('lr2').value);
      le003.caption:=formatfloat('#.00',query1.fieldbyname('le3').value);
    end else if tlr001=4 then begin
      lr001.caption:=query1.fieldbyname('lr1').asstring;
      le001.caption:=formatfloat('#.00',query1.fieldbyname('le1').value);
      lr002.caption:=query1.fieldbyname('lr2').asstring;
      le002.caption:=formatfloat('#.00',query1.fieldbyname('le2').value);
      lr003.caption:=query1.fieldbyname('lr3').asstring;
      le003.caption:=formatfloat('#.00',query1.fieldbyname('le3').value);
      lr004.caption:=inttostr(tr001-query1.fieldbyname('lr1').value-query1.fieldbyname('lr2').value-query1.fieldbyname('lr3').value);
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
    end else if tlr001=5 then begin
      lr001.caption:=query1.fieldbyname('lr1').asstring;
      le001.caption:=formatfloat('#.00',query1.fieldbyname('le1').value);
      lr002.caption:=query1.fieldbyname('lr2').asstring;
      le002.caption:=formatfloat('#.00',query1.fieldbyname('le2').value);
      lr003.caption:=query1.fieldbyname('lr3').asstring;
      le003.caption:=formatfloat('#.00',query1.fieldbyname('le3').value);
      lr004.caption:=query1.fieldbyname('lr4').asstring;
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
      lr005.caption:=inttostr(tr001-query1.fieldbyname('lr1').value-query1.fieldbyname('lr2').value-query1.fieldbyname('lr3').value-query1.fieldbyname('lr4').value);
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
    end else if tlr001=6 then begin
      lr001.caption:=query1.fieldbyname('lr1').asstring;
      le001.caption:=formatfloat('#.00',query1.fieldbyname('le1').value);
      lr002.caption:=query1.fieldbyname('lr2').asstring;
      le002.caption:=formatfloat('#.00',query1.fieldbyname('le2').value);
      lr003.caption:=query1.fieldbyname('lr3').asstring;
      le003.caption:=formatfloat('#.00',query1.fieldbyname('le3').value);
      lr004.caption:=query1.fieldbyname('lr4').asstring;
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
      lr005.caption:=query1.fieldbyname('lr5').asstring;
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
      lr006.caption:=inttostr(tr001-query1.fieldbyname('lr1').value-query1.fieldbyname('lr2').value-query1.fieldbyname('lr3').value-query1.fieldbyname('lr4').value-query1.fieldbyname('lr5').value);
      le006.caption:=formatfloat('#.00',query1.fieldbyname('le6').value);
    end else if tlr001=7 then begin
      lr001.caption:=query1.fieldbyname('lr1').asstring;
      le001.caption:=formatfloat('#.00',query1.fieldbyname('le1').value);
      lr002.caption:=query1.fieldbyname('lr2').asstring;
      le002.caption:=formatfloat('#.00',query1.fieldbyname('le2').value);
      lr003.caption:=query1.fieldbyname('lr3').asstring;
      le003.caption:=formatfloat('#.00',query1.fieldbyname('le3').value);
      lr004.caption:=query1.fieldbyname('lr4').asstring;
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
      lr005.caption:=query1.fieldbyname('lr5').asstring;
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
      lr006.caption:=query1.fieldbyname('lr6').asstring;
      le006.caption:=formatfloat('#.00',query1.fieldbyname('le6').value);
      lr007.caption:=inttostr(tr001-query1.fieldbyname('lr1').value-query1.fieldbyname('lr2').value-query1.fieldbyname('lr3').value-query1.fieldbyname('lr4').value-query1.fieldbyname('lr5').value-query1.fieldbyname('lr6').value);
      le007.caption:=formatfloat('#.00',query1.fieldbyname('le7').value);
    end;
  end else if flr001=2 then begin
    if tlr001=2 then begin
      lr002.caption:=inttostr(tr001);
      le002.caption:=formatfloat('#.00',query1.fieldbyname('le2').value);
    end else if tlr001=3 then begin
      lr002.caption:=query1.fieldbyname('lr2').asstring;
      le002.caption:=formatfloat('#.00',query1.fieldbyname('le2').value);
      lr003.caption:=inttostr(tr001-query1.fieldbyname('lr2').value);
      le003.caption:=formatfloat('#.00',query1.fieldbyname('le3').value);
    end else if tlr001=4 then begin
      lr002.caption:=query1.fieldbyname('lr2').asstring;
      le002.caption:=formatfloat('#.00',query1.fieldbyname('le2').value);
      lr003.caption:=query1.fieldbyname('lr3').asstring;
      le003.caption:=formatfloat('#.00',query1.fieldbyname('le3').value);
      lr004.caption:=inttostr(tr001-query1.fieldbyname('lr2').value-query1.fieldbyname('lr3').value);
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
    end else if tlr001=5 then begin
      lr002.caption:=query1.fieldbyname('lr2').asstring;
      le002.caption:=formatfloat('#.00',query1.fieldbyname('le2').value);
      lr003.caption:=query1.fieldbyname('lr3').asstring;
      le003.caption:=formatfloat('#.00',query1.fieldbyname('le3').value);
      lr004.caption:=query1.fieldbyname('lr4').asstring;
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
      lr005.caption:=inttostr(tr001-query1.fieldbyname('lr2').value-query1.fieldbyname('lr3').value-query1.fieldbyname('lr4').value);
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
    end else if tlr001=6 then begin
      lr002.caption:=query1.fieldbyname('lr2').asstring;
      le002.caption:=formatfloat('#.00',query1.fieldbyname('le2').value);
      lr003.caption:=query1.fieldbyname('lr3').asstring;
      le003.caption:=formatfloat('#.00',query1.fieldbyname('le3').value);
      lr004.caption:=query1.fieldbyname('lr4').asstring;
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
      lr005.caption:=query1.fieldbyname('lr5').asstring;
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
      lr006.caption:=inttostr(tr001-query1.fieldbyname('lr2').value-query1.fieldbyname('lr3').value-query1.fieldbyname('lr4').value-query1.fieldbyname('lr5').value);
      le006.caption:=formatfloat('#.00',query1.fieldbyname('le6').value);
    end else if tlr001=7 then begin
      lr002.caption:=query1.fieldbyname('lr2').asstring;
      le002.caption:=formatfloat('#.00',query1.fieldbyname('le2').value);
      lr003.caption:=query1.fieldbyname('lr3').asstring;
      le003.caption:=formatfloat('#.00',query1.fieldbyname('le3').value);
      lr004.caption:=query1.fieldbyname('lr4').asstring;
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
      lr005.caption:=query1.fieldbyname('lr5').asstring;
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
      lr006.caption:=query1.fieldbyname('lr6').asstring;
      le006.caption:=formatfloat('#.00',query1.fieldbyname('le6').value);
      lr007.caption:=inttostr(tr001-query1.fieldbyname('lr2').value-query1.fieldbyname('lr3').value-query1.fieldbyname('lr4').value-query1.fieldbyname('lr5').value-query1.fieldbyname('lr6').value);
      le007.caption:=formatfloat('#.00',query1.fieldbyname('le7').value);
    end;
  end else if flr001=3 then begin
    if tlr001=3 then begin
      lr003.caption:=inttostr(tr001);
      le003.caption:=formatfloat('#.00',query1.fieldbyname('le3').value);
    end else if tlr001=4 then begin
      lr003.caption:=query1.fieldbyname('lr3').asstring;
      le003.caption:=formatfloat('#.00',query1.fieldbyname('le3').value);
      lr004.caption:=inttostr(tr001-query1.fieldbyname('lr3').value);
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
    end else if tlr001=5 then begin
      lr003.caption:=query1.fieldbyname('lr3').asstring;
      le003.caption:=formatfloat('#.00',query1.fieldbyname('le3').value);
      lr004.caption:=query1.fieldbyname('lr4').asstring;
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
      lr005.caption:=inttostr(tr001-query1.fieldbyname('lr3').value-query1.fieldbyname('lr4').value);
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
    end else if tlr001=6 then begin
      lr003.caption:=query1.fieldbyname('lr3').asstring;
      le003.caption:=formatfloat('#.00',query1.fieldbyname('le3').value);
      lr004.caption:=query1.fieldbyname('lr4').asstring;
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
      lr005.caption:=query1.fieldbyname('lr5').asstring;
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
      lr006.caption:=inttostr(tr001-query1.fieldbyname('lr3').value-query1.fieldbyname('lr4').value-query1.fieldbyname('lr5').value);
      le006.caption:=formatfloat('#.00',query1.fieldbyname('le6').value);
    end else if tlr001=7 then begin
      lr003.caption:=query1.fieldbyname('lr3').asstring;
      le003.caption:=formatfloat('#.00',query1.fieldbyname('le3').value);
      lr004.caption:=query1.fieldbyname('lr4').asstring;
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
      lr005.caption:=query1.fieldbyname('lr5').asstring;
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
      lr006.caption:=query1.fieldbyname('lr6').asstring;
      le006.caption:=formatfloat('#.00',query1.fieldbyname('le6').value);
      lr007.caption:=inttostr(tr001-query1.fieldbyname('lr3').value-query1.fieldbyname('lr4').value-query1.fieldbyname('lr5').value-query1.fieldbyname('lr6').value);
      le007.caption:=formatfloat('#.00',query1.fieldbyname('le7').value);
    end;
  end else if flr001=4 then begin
    if tlr001=4 then begin
      lr004.caption:=inttostr(tr001);
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
    end else if tlr001=5 then begin
      lr004.caption:=query1.fieldbyname('lr4').asstring;
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
      lr005.caption:=inttostr(tr001-query1.fieldbyname('lr4').value);
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
    end else if tlr001=6 then begin
      lr004.caption:=query1.fieldbyname('lr4').asstring;
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
      lr005.caption:=query1.fieldbyname('lr5').asstring;
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
      lr006.caption:=inttostr(tr001-query1.fieldbyname('lr4').value-query1.fieldbyname('lr5').value);
      le006.caption:=formatfloat('#.00',query1.fieldbyname('le6').value);
    end else if tlr001=7 then begin
      lr004.caption:=query1.fieldbyname('lr4').asstring;
      le004.caption:=formatfloat('#.00',query1.fieldbyname('le4').value);
      lr005.caption:=query1.fieldbyname('lr5').asstring;
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
      lr006.caption:=query1.fieldbyname('lr6').asstring;
      le006.caption:=formatfloat('#.00',query1.fieldbyname('le6').value);
      lr007.caption:=inttostr(tr001-query1.fieldbyname('lr4').value-query1.fieldbyname('lr5').value-query1.fieldbyname('lr6').value);
      le007.caption:=formatfloat('#.00',query1.fieldbyname('le7').value);
    end;
  end else if flr001=5 then begin
    if tlr001=5 then begin
      lr005.caption:=inttostr(tr001);
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
    end else if tlr001=6 then begin
      lr005.caption:=query1.fieldbyname('lr5').asstring;
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
      lr006.caption:=inttostr(tr001-query1.fieldbyname('lr5').value);
      le006.caption:=formatfloat('#.00',query1.fieldbyname('le6').value);
    end else if tlr001=7 then begin
      lr005.caption:=query1.fieldbyname('lr5').asstring;
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
      lr006.caption:=query1.fieldbyname('lr6').asstring;
      le006.caption:=formatfloat('#.00',query1.fieldbyname('le6').value);
      lr007.caption:=inttostr(tr001-query1.fieldbyname('lr5').value-query1.fieldbyname('lr6').value);
      le007.caption:=formatfloat('#.00',query1.fieldbyname('le7').value);
    end else if tlr001=8 then begin
      lr005.caption:=query1.fieldbyname('lr5').asstring;
      le005.caption:=formatfloat('#.00',query1.fieldbyname('le5').value);
      lr006.caption:=query1.fieldbyname('lr6').asstring;
      le006.caption:=formatfloat('#.00',query1.fieldbyname('le6').value);
      lr007.caption:=query1.fieldbyname('lr7').asstring;
      le007.caption:=formatfloat('#.00',query1.fieldbyname('le7').value);
      lr008.caption:=inttostr(tr001-query1.fieldbyname('lr5').value-query1.fieldbyname('lr6').value-query1.fieldbyname('lr7').value);
      le008.caption:=formatfloat('#.00',query1.fieldbyname('le8').value);
    end;
  end else if flr001=6 then begin
    if tlr001=6 then begin
      lr006.caption:=inttostr(tr001);
      le006.caption:=formatfloat('#.00',query1.fieldbyname('le6').value);
    end else if tlr001=7 then begin
      lr006.caption:=query1.fieldbyname('lr6').asstring;
      le006.caption:=formatfloat('#.00',query1.fieldbyname('le6').value);
      lr007.caption:=inttostr(tr001-query1.fieldbyname('lr6').value);
      le007.caption:=formatfloat('#.00',query1.fieldbyname('le7').value);
    end else if tlr001=8 then begin
      lr006.caption:=query1.fieldbyname('lr6').asstring;
      le006.caption:=formatfloat('#.00',query1.fieldbyname('le6').value);
      lr007.caption:=query1.fieldbyname('lr7').asstring;
      le007.caption:=formatfloat('#.00',query1.fieldbyname('le7').value);
      lr008.caption:=inttostr(tr001-query1.fieldbyname('lr6').value-query1.fieldbyname('lr7').value);
      le008.caption:=formatfloat('#.00',query1.fieldbyname('le8').value);
    end;
  end;
end;

procedure Tfrmftylearn.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  if not query1.fieldbyname('sr').isnull then begin
    if query1.fieldbyname('sr').value=1 then sr001.caption:='Bras'
    else if query1.fieldbyname('sr').value=2 then sr001.caption:='Knickers'
    else if query1.fieldbyname('sr').value=3 then sr001.caption:='Underwears'
    else if query1.fieldbyname('sr').value=4 then sr001.caption:='Swimwears'
    else sr001.caption:='Underwears/Swimwears';
  end else sr001.caption:='';
end;

procedure Tfrmftylearn.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmftylearn.BitBtn6Click(Sender: TObject);
begin
  if query1.Active then begin
    if not query1.fieldbyname('tplant').isnull then begin
      if (query1.fieldbyname('tplant').value='SL') or (query1.fieldbyname('tplant').value='CS') then
      title002.caption:='(GD)' else title002.caption:='(GX)';
      ppReport1.Print;
    end;
  end;
end;

procedure Tfrmftylearn.BitBtn8Click(Sender: TObject);
begin
  if frmxknyd=nil then frmxknyd:=tfrmxknyd.create(nil);
  frmxknyd.show;
end;

procedure Tfrmftylearn.BitBtn5Click(Sender: TObject);
begin
  if frmphsel=nil then frmphsel:=tfrmphsel.create(nil);
  if not query1.fieldbyname('flr').isnull then
  frmphsel.spinedit1.value:=query1.fieldbyname('flr').value
  else frmphsel.SpinEdit1.Value:=1;
  if not query1.fieldbyname('tlr').isnull then
  frmphsel.SpinEdit2.Value:=query1.fieldbyname('tlr').value
  else frmphsel.spinedit2.value:=10;
  frmphsel.show;
end;

procedure Tfrmftylearn.ComboBox1Change(Sender: TObject);
begin
  if combobox1.text>'' then begin
    with query1 do begin
      close;
      params.clear;
      //params.createparam(ftdate,'x1',ptinput);
      commandtext:='select * from tblplant_learn where tplant='''+combobox1.text+'''';
      //params[0].asdate:=date;
      open;
    end;
  end;
end;

procedure Tfrmftylearn.SpeedButton1Click(Sender: TObject);
begin
  //current version
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select * from tblplant_learn where tplant='''+combobox1.text+''' and edt in '
                +'(select max(edt) from tblplant_learn where tplant='''+combobox1.text+''' and edt<=:x1)';
    params[0].asdate:=date;
    open;
  end;
  speedbutton1.Enabled:=false;
  speedbutton2.Enabled:=true;
end;

procedure Tfrmftylearn.SpeedButton2Click(Sender: TObject);
begin
  // new version
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select distinct edt from tblplant_learn where tplant=:x1 and edt>:x2';
    params[0].asstring:=combobox1.text;
    params[1].asdate:=date;
    open;
    if fieldbyname('edt').isnull then begin
      if application.MessageBox('There is not new plan record, create it now?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
        //EXECUTE PROCEDURE SP_NEWTPLANT_LEARN(FACTORY,EffectiveDate4Newplan,EffectiveDate4Currentversion)
        if frmplcnewplan=nil then frmplcnewplan:=tfrmplcnewplan.Create(nil);
        frmplcnewplan.Show;
      end;
    end else begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        commandtext:='select * from tblplant_learn where tplant='''+combobox1.text+''' and edt>:x1';
        params[0].asdate:=date;
        open;
      end;
      speedbutton1.Enabled:=true;
      speedbutton2.Enabled:=false;
    end;
  end;
end;

end.
 