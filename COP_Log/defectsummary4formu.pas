unit defectsummary4formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppRegion, ppMemo, ppCtrls, ppReport, ppStrtch,
  ppSubRpt, ppVar, ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB,
  ppDBPipe, DB, DBClient, StdCtrls, Buttons, Spin, ppViewr, ppRichTx,
  ppParameter, jpeg;

type
  Tfrmdefectsummary4 = class(TForm)
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
    shp003: TppLabel;
    sx01: TppLabel;
    sx02: TppLabel;
    shp004: TppLabel;
    ppLabel65: TppLabel;
    ppLabel21: TppLabel;
    ppLine75: TppLine;
    sx04: TppLabel;
    ppLine188: TppLine;
    ppDetailBand3: TppDetailBand;
    ppShape1: TppShape;
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
    ppDBText15: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
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
    ppLine30: TppLine;
    ppDBText17: TppDBText;
    ppLine45: TppLine;
    ppDBText18: TppDBText;
    ppLine76: TppLine;
    ppDBText32: TppDBText;
    ppLine134: TppLine;
    ppDBText48: TppDBText;
    ppDBText14: TppDBText;
    ppLine170: TppLine;
    ppDBText16: TppDBText;
    p001: TppLabel;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppLine60: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppShape9: TppShape;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppDBText47: TppDBText;
    p006: TppLabel;
    wsttl003: TppLabel;
    ppLine139: TppLine;
    ppLine156: TppLine;
    ppDBText44: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppShape2: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppLabel4: TppLabel;
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
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine83: TppLine;
    ppDBCalc42: TppDBCalc;
    p005: TppLabel;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppLine132: TppLine;
    ppSummaryBand4: TppSummaryBand;
    shape01: TppShape;
    lbl01: TppLabel;
    lbl02: TppLabel;
    ppLabel1: TppLabel;
    ppLabel14: TppLabel;
    memo01: TppMemo;
    ppLine140: TppLine;
    ppLine157: TppLine;
    ppDBCalc53: TppDBCalc;
    ppShape10: TppShape;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppLabel29: TppLabel;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppLine120: TppLine;
    ppLine121: TppLine;
    ppLine122: TppLine;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLine126: TppLine;
    ppLine127: TppLine;
    ppLine128: TppLine;
    ppLine130: TppLine;
    ppDBCalc56: TppDBCalc;
    p007: TppLabel;
    ppLine138: TppLine;
    ppDBCalc37: TppDBCalc;
    ppLine182: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape6: TppShape;
    wsttl002: TppLabel;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText30: TppDBText;
    ppLine82: TppLine;
    ppDBText33: TppDBText;
    p004: TppLabel;
    ppLine137: TppLine;
    ppDBText29: TppDBText;
    ppLine181: TppLine;
    ppDBText31: TppDBText;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape3: TppShape;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    wsttl001: TppLabel;
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
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine78: TppLine;
    ppDBCalc41: TppDBCalc;
    p003: TppLabel;
    ppLine136: TppLine;
    ppDBCalc24: TppDBCalc;
    ppLine172: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape4: TppShape;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppLabel19: TppLabel;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine77: TppLine;
    ppDBCalc40: TppDBCalc;
    p002: TppLabel;
    ppLine135: TppLine;
    ppDBCalc11: TppDBCalc;
    ppLine171: TppLine;
    ppLabel24: TppLabel;
    sx03: TppLabel;
    def0010: TppLabel;
    ppLine13: TppLine;
    ppLine41: TppLine;
    code0010: TppLabel;
    qty0010: TppLabel;
    ppLine56: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine100: TppLine;
    ppLine141: TppLine;
    ppDBText49: TppDBText;
    ppDBCalc89: TppDBCalc;
    ppDBCalc91: TppDBCalc;
    ppLine73: TppLine;
    ppLine84: TppLine;
    ppLine129: TppLine;
    ppLine131: TppLine;
    ppDBText77: TppDBText;
    ppDBCalc93: TppDBCalc;
    ppLine27: TppLine;
    ppLine101: TppLine;
    ppLine112: TppLine;
    ppLine116: TppLine;
    ppDBText80: TppDBText;
    ppDBCalc95: TppDBCalc;
    ppLine142: TppLine;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppLine149: TppLine;
    g006: TppLabel;
    g005: TppLabel;
    g004: TppLabel;
    g007: TppLabel;
    g001: TppLabel;
    g002: TppLabel;
    g003: TppLabel;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    ppLine150: TppLine;
    ppMemo1: TppMemo;
    ppShape11: TppShape;
    ppLabel22: TppLabel;
    code1001: TppLabel;
    p101: TppLabel;
    p103: TppLabel;
    p102: TppLabel;
    p104: TppLabel;
    p107: TppLabel;
    p106: TppLabel;
    p105: TppLabel;
    ppLabel25: TppLabel;
    ppLabel23: TppLabel;
    ppLabel26: TppLabel;
    ppImage1: TppImage;
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdefectsummary4: Tfrmdefectsummary4;

implementation

  uses aqlmainformu, defectsummaryformu;

{$R *.dfm}

{ TForm1 }

procedure Tfrmdefectsummary4.ppDetailBand2BeforePrint(Sender: TObject);
var
  grade:double;
begin
  wsttl003.Caption:='Customer Sub-total / 客戶小計 ('+query5.fieldbyname('cust').value+'): ';
  grade:=query5.fieldbyname('tqty').value*100.00/query5.fieldbyname('qty').value;
  p006.caption:=formatfloat('0.00',grade);
  p106.caption:=formatfloat('0.00',query5.fieldbyname('qty1').value*100.00/query5.fieldbyname('qty').value);
  if grade<1.0 then g006.Caption:='A'
  else if grade<2.0 then g006.Caption:='B'
  else if grade<3.0 then g006.Caption:='C'
  else if grade<=5.0 then g006.Caption:='F'
  else g006.Caption:='U';
end;

procedure Tfrmdefectsummary4.ppDetailBand3BeforePrint(Sender: TObject);
var
  grade:double;
begin
  grade:=query1.fieldbyname('tqty').value*100.00/query1.fieldbyname('qty').value;
  p001.caption:=formatfloat('0.00',grade);
  p101.caption:=formatfloat('0.00',query1.fieldbyname('qty1').value*100.00/query1.fieldbyname('qty').value);
  if grade<1.0 then g001.Caption:='A'
  else if grade<2.0 then g001.Caption:='B'
  else if grade<3.0 then g001.Caption:='C'
  else if grade<=5.0 then g001.Caption:='F'
  else g001.Caption:='U';
  //less than 1% -> A
  //less than 2% -> B
  //less than 3% -> C
  //3-5% - > F
  //Unclassify over 5% -> U
end;

procedure Tfrmdefectsummary4.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  grade:double;
begin
  wsttl001.Caption:='Ws Sub-total / 組裝工場小計 ('+query1.fieldbyname('ws').value+'): ';
  grade:=ppdbcalc26.Value*100.00/ppdbcalc41.value;
  p003.caption:=formatfloat('0.00',grade);
  p103.caption:=formatfloat('0.00',ppdbcalc14.Value*100.00/ppdbcalc41.value);
  if grade<1.0 then g003.Caption:='A'
  else if grade<2.0 then g003.Caption:='B'
  else if grade<3.0 then g003.Caption:='C'
  else if grade<=5.0 then g003.Caption:='F'
  else g003.Caption:='U';
end;

procedure Tfrmdefectsummary4.ppGroupFooterBand2BeforePrint(Sender: TObject);
var
  grade:double;
begin
  grade:=ppdbcalc39.Value*100.00/ppdbcalc40.value;
  p002.caption:=formatfloat('0.00',grade);
  p102.caption:=formatfloat('0.00',ppdbcalc27.Value*100.00/ppdbcalc40.value);
  if grade<1.0 then g002.Caption:='A'
  else if grade<2.0 then g002.Caption:='B'
  else if grade<3.0 then g002.Caption:='C'
  else if grade<=5.0 then g002.Caption:='F'
  else g002.Caption:='U';
end;

procedure Tfrmdefectsummary4.ppGroupFooterBand3BeforePrint(Sender: TObject);
var
  grade:double;
begin
  wsttl002.Caption:='Ws Sub-total / 組裝工場小計 ('+query4.fieldbyname('ws').value+'): ';
  grade:=query4.fieldbyname('tqty').value*100.00/query4.fieldbyname('qty').value;
  p004.caption:=formatfloat('0.00',grade);
  p104.caption:=formatfloat('0.00',query4.fieldbyname('qty1').value*100.00/query4.fieldbyname('qty').value);
  if grade<1.0 then g004.Caption:='A'
  else if grade<2.0 then g004.Caption:='B'
  else if grade<3.0 then g004.Caption:='C'
  else if grade<=5.0 then g004.Caption:='F'
  else g004.Caption:='U';
end;

procedure Tfrmdefectsummary4.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport3.PreviewForm.Viewer).Zoompercentage:=100;
end;

procedure Tfrmdefectsummary4.ppSummaryBand2BeforePrint(Sender: TObject);
var
  grade:double;
begin
  grade:=ppdbcalc55.Value*100.00/ppdbcalc56.value;
  p007.caption:=formatfloat('0.00',grade);
  p107.caption:=formatfloat('0.00',ppdbcalc43.Value*100.00/ppdbcalc56.value);
  if grade<1.0 then g007.Caption:='A'
  else if grade<2.0 then g007.Caption:='B'
  else if grade<3.0 then g007.Caption:='C'
  else if grade<=5.0 then g007.Caption:='F'
  else g007.Caption:='U';
end;

procedure Tfrmdefectsummary4.ppSummaryBand3BeforePrint(Sender: TObject);
var
  grade:double;
begin
  grade:=ppdbcalc13.Value*100.00/ppdbcalc42.value;
  p005.caption:=formatfloat('0.00',grade);
  p105.caption:=formatfloat('0.00',ppdbcalc1.Value*100.00/ppdbcalc42.value);
  if grade<1.0 then g005.Caption:='A'
  else if grade<2.0 then g005.Caption:='B'
  else if grade<3.0 then g005.Caption:='C'
  else if grade<=5.0 then g005.Caption:='F'
  else g005.Caption:='U';
end;

end.
 