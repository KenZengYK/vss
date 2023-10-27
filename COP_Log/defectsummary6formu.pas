unit defectsummary6formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppMemo, ppCtrls, ppReport, ppStrtch, ppSubRpt,
  ppVar, ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  DBClient, StdCtrls, Buttons, Spin, ppViewr, ppParameter;

type
  Tfrmdefectsummary6 = class(TForm)
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    SpinEdit1: TSpinEdit;
    ComboBox1: TComboBox;
    rb1: TRadioButton;
    SpinEdit2: TSpinEdit;
    rb2: TRadioButton;
    SpinEdit3: TSpinEdit;
    rb3: TRadioButton;
    SpinEdit4: TSpinEdit;
    rb4: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit1: TEdit;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    Query5: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape19: TppShape;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape5: TppShape;
    sub001: TppLabel;
    ppLine85: TppLine;
    ppLabel84: TppLabel;
    ppLine86: TppLine;
    def0001: TppLabel;
    def0002: TppLabel;
    ppLine87: TppLine;
    def0003: TppLabel;
    ppLine88: TppLine;
    def0004: TppLabel;
    ppLine89: TppLine;
    ppLine90: TppLine;
    def0005: TppLabel;
    ppLine91: TppLine;
    def0006: TppLabel;
    ppLine92: TppLine;
    def0007: TppLabel;
    ppLine93: TppLine;
    def0008: TppLabel;
    def0009: TppLabel;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    qty0001: TppLabel;
    qty0002: TppLabel;
    qty0003: TppLabel;
    qty0004: TppLabel;
    qty0005: TppLabel;
    qty0006: TppLabel;
    qty0008: TppLabel;
    qty0009: TppLabel;
    qty0007: TppLabel;
    style001: TppLabel;
    ppLabel3: TppLabel;
    ppLine16: TppLine;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    style002: TppLabel;
    ppLabel13: TppLabel;
    ppLabel12: TppLabel;
    sub002: TppLabel;
    ppLine44: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine59: TppLine;
    code0001: TppLabel;
    code0002: TppLabel;
    code0003: TppLabel;
    code0004: TppLabel;
    code0005: TppLabel;
    code0006: TppLabel;
    code0007: TppLabel;
    code0008: TppLabel;
    code0009: TppLabel;
    ppLine74: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine133: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    ppLabel37: TppLabel;
    cust001: TppLabel;
    styles001: TppLabel;
    pos001: TppLabel;
    shp001: TppLabel;
    sample001: TppLabel;
    line001: TppLabel;
    cust002: TppLabel;
    styles002: TppLabel;
    pos002: TppLabel;
    shp002: TppLabel;
    samp002: TppLabel;
    line002: TppLabel;
    wk001: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel20: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    fty001: TppLabel;
    ws001: TppLabel;
    ppLabel61: TppLabel;
    sx01: TppLabel;
    sx02: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLine169: TppLine;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel21: TppLabel;
    ppLine75: TppLine;
    sx04: TppLabel;
    ppLabel34: TppLabel;
    ppLabel26: TppLabel;
    ppLabel36: TppLabel;
    ppLine188: TppLine;
    ppLine189: TppLine;
    ppLine190: TppLine;
    ppLabel24: TppLabel;
    sx03: TppLabel;
    def0010: TppLabel;
    def0011: TppLabel;
    ppLine13: TppLine;
    ppLine41: TppLine;
    code0010: TppLabel;
    code0011: TppLabel;
    qty0010: TppLabel;
    qty0011: TppLabel;
    ppLabel23: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine142: TppLine;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape1: TppShape;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText15: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine76: TppLine;
    ppDBText32: TppDBText;
    ppLine134: TppLine;
    ppDBText14: TppDBText;
    ppDBText13: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLine170: TppLine;
    ppDBText16: TppDBText;
    p001: TppLabel;
    ppDBText82: TppDBText;
    ppLine191: TppLine;
    ppLine56: TppLine;
    ppLine79: TppLine;
    ppDBText49: TppDBText;
    ppLabel22: TppLabel;
    ppDBText50: TppDBText;
    ppDBText75: TppDBText;
    ppLabel25: TppLabel;
    ppDBText76: TppDBText;
    ppLine143: TppLine;
    g001: TppLabel;
    ppFooterBand3: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    yn01: TppLabel;
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdefectsummary6: Tfrmdefectsummary6;

implementation

uses aqlmainformu;

{$R *.dfm}

procedure Tfrmdefectsummary6.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport3.PreviewForm.Viewer).Zoompercentage:=100;
end;

procedure Tfrmdefectsummary6.ppDetailBand3BeforePrint(Sender: TObject);
var
  grade:double;
begin
  grade:=query1.fieldbyname('tqty').value*100.00/query1.fieldbyname('qty').value;
  p001.caption:=formatfloat('0.00',grade);
  if grade<1.0 then g001.Caption:='A'
  else if grade<2.0 then g001.Caption:='B'
  else if grade<3.0 then g001.Caption:='C'
  else if grade<=5.0 then g001.Caption:='F'
  else g001.Caption:='U';
  yn01.caption:=query1.fieldbyname('yr').asstring+'-'+query1.fieldbyname('m1').asstring;
end;

procedure Tfrmdefectsummary6.ppGroupHeaderBand2BeforePrint(
  Sender: TObject);
begin
  code0001.Caption:=''; code0002.caption:=''; code0003.Caption:=''; code0004.Caption:='';
  code0005.Caption:=''; code0006.caption:=''; code0007.Caption:=''; code0008.Caption:='';
  code0009.Caption:=''; code0010.Caption:=''; code0011.Caption:='';
  def0001.Caption:=''; def0002.caption:=''; def0003.Caption:=''; def0004.Caption:='';
  def0005.Caption:=''; def0006.caption:=''; def0007.Caption:=''; def0008.Caption:='';
  def0009.Caption:=''; def0010.Caption:=''; def0011.Caption:='';
  qty0001.Caption:=''; qty0002.caption:=''; qty0003.Caption:=''; qty0004.Caption:='';
  qty0005.Caption:=''; qty0006.caption:=''; qty0007.Caption:=''; qty0008.Caption:='';
  qty0009.Caption:=''; qty0010.Caption:=''; qty0011.Caption:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select * from tbl_aql_defectsummary1_cmp where tm=:x1 and yr=:x2 and m1=:x3 order by ln';
    params[0].asdatetime:=query1.fieldbyname('tm').value;
    params[1].asinteger:=query1.fieldbyname('yr').value;
    params[2].asinteger:=query1.fieldbyname('m1').value;
    open;
    first;
    while not eof do begin
      if fieldbyname('ln').value=1 then begin
        if not fieldbyname('def1').isnull then def0001.Caption:=fieldbyname('def1').value
        else def0001.caption:='';
        if not fieldbyname('def2').isnull then def0002.Caption:=fieldbyname('def2').value
        else def0002.caption:='';
        if not fieldbyname('def3').isnull then def0003.Caption:=fieldbyname('def3').value
        else def0003.caption:='';
        if not fieldbyname('def4').isnull then def0004.Caption:=fieldbyname('def4').value
        else def0004.caption:='';
        if not fieldbyname('def5').isnull then def0005.Caption:=fieldbyname('def5').value
        else def0005.caption:='';
        if not fieldbyname('def6').isnull then def0006.Caption:=fieldbyname('def6').value
        else def0006.caption:='';
        if not fieldbyname('def7').isnull then def0007.Caption:=fieldbyname('def7').value
        else def0007.caption:='';
        if not fieldbyname('def8').isnull then def0008.Caption:=fieldbyname('def8').value
        else def0008.caption:='';
        if not fieldbyname('def9').isnull then def0009.Caption:=fieldbyname('def9').value
        else def0009.caption:='';
        if not fieldbyname('def10').isnull then def0010.Caption:=fieldbyname('def10').value
        else def0010.caption:='';
        if not fieldbyname('def11').isnull then def0011.Caption:=fieldbyname('def11').value
        else def0011.caption:='';
      end else if fieldbyname('ln').value=2 then begin
        if not fieldbyname('def1').isnull then qty0001.Caption:=fieldbyname('def1').value
        else qty0001.caption:='';
        if not fieldbyname('def2').isnull then qty0002.Caption:=fieldbyname('def2').value
        else qty0002.caption:='';
        if not fieldbyname('def3').isnull then qty0003.Caption:=fieldbyname('def3').value
        else qty0003.caption:='';
        if not fieldbyname('def4').isnull then qty0004.Caption:=fieldbyname('def4').value
        else qty0004.caption:='';
        if not fieldbyname('def5').isnull then qty0005.Caption:=fieldbyname('def5').value
        else qty0005.caption:='';
        if not fieldbyname('def6').isnull then qty0006.Caption:=fieldbyname('def6').value
        else qty0006.caption:='';
        if not fieldbyname('def7').isnull then qty0007.Caption:=fieldbyname('def7').value
        else qty0007.caption:='';
        if not fieldbyname('def8').isnull then qty0008.Caption:=fieldbyname('def8').value
        else qty0008.caption:='';
        if not fieldbyname('def9').isnull then qty0009.Caption:=fieldbyname('def9').value
        else qty0009.caption:='';
        if not fieldbyname('def10').isnull then qty0010.Caption:=fieldbyname('def10').value
        else qty0010.caption:='';
        if not fieldbyname('def11').isnull then qty0011.Caption:=fieldbyname('def11').value
        else qty0011.caption:='';
      end else if fieldbyname('ln').value=3 then begin
        if not fieldbyname('def1').isnull then code0001.Caption:=fieldbyname('def1').value
        else code0001.caption:='';
        if not fieldbyname('def2').isnull then code0002.Caption:=fieldbyname('def2').value
        else code0002.caption:='';
        if not fieldbyname('def3').isnull then code0003.Caption:=fieldbyname('def3').value
        else code0003.caption:='';
        if not fieldbyname('def4').isnull then code0004.Caption:=fieldbyname('def4').value
        else code0004.caption:='';
        if not fieldbyname('def5').isnull then code0005.Caption:=fieldbyname('def5').value
        else code0005.caption:='';
        if not fieldbyname('def6').isnull then code0006.Caption:=fieldbyname('def6').value
        else code0006.caption:='';
        if not fieldbyname('def7').isnull then code0007.Caption:=fieldbyname('def7').value
        else code0007.caption:='';
        if not fieldbyname('def8').isnull then code0008.Caption:=fieldbyname('def8').value
        else code0008.caption:='';
        if not fieldbyname('def9').isnull then code0009.Caption:=fieldbyname('def9').value
        else code0009.caption:='';
        if not fieldbyname('def10').isnull then code0010.Caption:=fieldbyname('def10').value
        else code0010.caption:='';
        if not fieldbyname('def11').isnull then code0011.Caption:=fieldbyname('def11').value
        else code0011.caption:='';
      end;
      application.ProcessMessages;
      next;
    end;
  end;
end;

end.
 