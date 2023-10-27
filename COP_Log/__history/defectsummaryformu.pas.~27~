unit defectsummaryformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, ppDB, ppDBPipe, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, DB,
  DBClient, ppViewr, ppStrtch, ppMemo, Mask, rxToolEdit, ppSubRpt,
  ppRegion, DateUtils, ppRichTx, ppVar, ComCtrls, RzEdit, Menus,
  GridsEh, DBGridEh, DBGridEhImpExp, QExport4, QExport4XLS,
  ppParameter;

type
  Tfrmdefectsummary = class(TForm)
    Label3: TLabel;
    Label5: TLabel;
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
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    sub001: TppLabel;
    ppShape19: TppShape;
    ppLine85: TppLine;
    cust001: TppLabel;
    styles001: TppLabel;
    pos001: TppLabel;
    shp001: TppLabel;
    sample001: TppLabel;
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
    def0010: TppLabel;
    ppLine95: TppLine;
    ppLine96: TppLine;
    def0011: TppLabel;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLabel101: TppLabel;
    qty0001: TppLabel;
    qty0002: TppLabel;
    qty0003: TppLabel;
    qty0004: TppLabel;
    qty0005: TppLabel;
    qty0006: TppLabel;
    qty0008: TppLabel;
    qty0009: TppLabel;
    qty0010: TppLabel;
    qty0011: TppLabel;
    qty0007: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppDBPipeline1: TppDBPipeline;
    ppLabel1: TppLabel;
    style001: TppLabel;
    ppLabel3: TppLabel;
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
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppSummaryBand1: TppSummaryBand;
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
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    shape01: TppShape;
    lbl01: TppLabel;
    memo01: TppMemo;
    lbl02: TppLabel;
    ppLine16: TppLine;
    ppLine30: TppLine;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppDBText17: TppDBText;
    CheckBox2: TCheckBox;
    Label7: TLabel;
    Edit1: TEdit;
    line001: TppLabel;
    Label1: TLabel;
    ComboBox2: TComboBox;
    rb5: TRadioButton;
    DateEdit1: TDateEdit;
    BitBtn3: TBitBtn;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel6: TppLabel;
    ppDBText18: TppDBText;
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
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppLabel7: TppLabel;
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
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLabel12: TppLabel;
    p001: TppLabel;
    p002: TppLabel;
    ppDBText19: TppDBText;
    ppDBCalc27: TppDBCalc;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
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
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
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
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine47: TppLine;
    ppLine51: TppLine;
    p003: TppLabel;
    ppDBCalc28: TppDBCalc;
    ppShape4: TppShape;
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
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
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
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    p004: TppLabel;
    ppDBText33: TppDBText;
    wsttl001: TppLabel;
    CheckBox3: TCheckBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    SpinEdit5: TSpinEdit;
    Label4: TLabel;
    Label6: TLabel;
    SpinEdit6: TSpinEdit;
    Label8: TLabel;
    Label9: TLabel;
    SpinEdit7: TSpinEdit;
    Label10: TLabel;
    SpinEdit8: TSpinEdit;
    rb6: TRadioButton;
    Label11: TLabel;
    ComboBox3: TComboBox;
    dt001: TppLabel;
    ppLabel13: TppLabel;
    ppShape5: TppShape;
    s001: TppLabel;
    s002: TppLabel;
    s003: TppLabel;
    ppShape6: TppShape;
    r001: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppShape7: TppShape;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    p006: TppLabel;
    ppDBText47: TppDBText;
    wsttl002: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppShape8: TppShape;
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
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppLabel16: TppLabel;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine101: TppLine;
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
    ppLine112: TppLine;
    p005: TppLabel;
    ppDBCalc42: TppDBCalc;
    Query5: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    ComboBox4: TComboBox;
    BitBtn4: TBitBtn;
    CheckBox4: TCheckBox;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape9: TppShape;
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
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppLabel18: TppLabel;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppLine116: TppLine;
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
    p007: TppLabel;
    ppDBCalc56: TppDBCalc;
    ppLine128: TppLine;
    code0001: TppLabel;
    code0002: TppLabel;
    code0003: TppLabel;
    code0004: TppLabel;
    code0005: TppLabel;
    code0006: TppLabel;
    code0007: TppLabel;
    code0008: TppLabel;
    code0009: TppLabel;
    code0010: TppLabel;
    code0011: TppLabel;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    Edit2: TEdit;
    Label12: TLabel;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DateEdit2: TDateEdit;
    DateEdit3: TDateEdit;
    Label16: TLabel;
    Label17: TLabel;
    SpinEdit9: TSpinEdit;
    Label18: TLabel;
    SpinEdit10: TSpinEdit;
    Label19: TLabel;
    Label20: TLabel;
    SpinEdit11: TSpinEdit;
    Label21: TLabel;
    SpinEdit12: TSpinEdit;
    Label22: TLabel;
    Label23: TLabel;
    SpinEdit13: TSpinEdit;
    Label24: TLabel;
    SpinEdit14: TSpinEdit;
    Label25: TLabel;
    Label26: TLabel;
    SpinEdit15: TSpinEdit;
    Label27: TLabel;
    SpinEdit16: TSpinEdit;
    Label28: TLabel;
    Label29: TLabel;
    SpinEdit17: TSpinEdit;
    Label30: TLabel;
    Label31: TLabel;
    SpinEdit18: TSpinEdit;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    title001: TppLabel;
    ppShape14: TppShape;
    ppDetailBand6: TppDetailBand;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppFooterBand1: TppFooterBand;
    offlinerst001: TppRichText;
    fullinsprst001: TppRichText;
    title002: TppLabel;
    ppSummaryBand4: TppSummaryBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppShape15: TppShape;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppLine129: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    subject01: TppLabel;
    subject001: TppLabel;
    subject02: TppLabel;
    ppLabel39: TppLabel;
    subject002: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine130: TppLine;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppLine142: TppLine;
    ppLine143: TppLine;
    ppLabel44: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel45: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    FontDialog1: TFontDialog;
    FontDialog2: TFontDialog;
    rememo1: TRzRichEdit;
    BitBtn5: TBitBtn;
    SaveDialog1: TSaveDialog;
    ppRegion1: TppRegion;
    ppLine144: TppLine;
    ppShape16: TppShape;
    ppLine156: TppLine;
    ppLine147: TppLine;
    ppLine150: TppLine;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLine155: TppLine;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    PopupMenu1: TPopupMenu;
    DefectSummary1: TMenuItem;
    SaveDialog2: TSaveDialog;
    DBGridEh1: TDBGridEh;
    Label32: TLabel;
    ComboBox5: TComboBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    BitBtn6: TBitBtn;
    Query6: TClientDataSet;
    Label33: TLabel;
    Label34: TLabel;
    XLS1: TQExport4XLS;
    BitBtn7: TBitBtn;
    Label35: TLabel;
    Edit3: TEdit;
    Label36: TLabel;
    Edit4: TEdit;
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rb5Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb3Click(Sender: TObject);
    procedure rb4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure rb6Click(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppDetailBand6BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure DefectSummary1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBox15Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function maxdatebymonth(const dt:tdatetime):tdatetime;
  end;

var
  frmdefectsummary: Tfrmdefectsummary;

implementation

uses aqlmainformu, summaryformu, defectsummary1formu, defectsummary2formu,
  dailynotepadformu, dailyaqlnotepadformu, aql_notepadformu,
  defectsummary3formu, defectsummary4formu, defectsummary5formu,
  defectsummary6formu, threedefectsformu;

{$R *.dfm}

procedure Tfrmdefectsummary.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport3.PreviewForm.Viewer).Zoompercentage:=100;
end;

procedure Tfrmdefectsummary.BitBtn1Click(Sender: TObject);
var
  i:integer;
  dt1,dt2,tm,dt3,dt4:tdatetime;
  cusn,s1,s2:string;
  rptno:integer;
begin
  tm:=now;
  screen.cursor:=crSQLWait;
  try
  if combobox1.text>'' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select cusn from tbl_aql_cust where cust='''+combobox1.text+'''';
      open;
      cusn:=fieldbyname('cusn').value;
    end;
  end else cusn:='';
  if rb1.Checked then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select min(date1) as x1,max(date1) as x2 from tplant_wk52 where tplant=''SL'' and opt_c=1 and wkyr=:x1 and yrwk=:x2';//f_year(date1)=:x1 and wkno=:x2';
      params[0].asinteger:=spinedit1.value;
      params[1].asinteger:=spinedit2.value;
      open;
      dt1:=fieldbyname('x1').value;
      dt2:=fieldbyname('x2').value;
    end;
  end else if rb2.Checked then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select min(date1) as x1,max(date1) as x2 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_month(date1)=:x2';
      params[0].asinteger:=spinedit1.value;
      params[1].asinteger:=spinedit3.value;
      open;
      dt1:=fieldbyname('x1').value;
      dt2:=fieldbyname('x2').value;
    end;
  end else if rb3.Checked then begin
    if spinedit3.value=1 then begin
      dt1:=strtodate(inttostr(spinedit1.value)+'01-01');
      dt2:=strtodate(inttostr(spinedit1.value)+'03-31');
    end else if spinedit3.value=2 then begin
      dt1:=strtodate(inttostr(spinedit1.value)+'04-01');
      dt2:=strtodate(inttostr(spinedit1.value)+'06-30');
    end else if spinedit3.value=3 then begin
      dt1:=strtodate(inttostr(spinedit1.value)+'07-01');
      dt2:=strtodate(inttostr(spinedit1.value)+'09-30');
    end else begin
      dt1:=strtodate(inttostr(spinedit1.value)+'10-01');
      dt2:=strtodate(inttostr(spinedit1.value)+'12-31');
    end;
  end else if rb4.Checked then begin
    dt1:=strtodate(inttostr(spinedit1.value)+'-01-01');
    dt2:=strtodate(inttostr(spinedit1.value)+'-12-31');
  end else if rb5.Checked then begin
    dt1:=dateedit1.date;
    dt2:=dateedit1.date;
  end else if rb6.Checked then begin
    if checkbox5.Checked then begin
      dt1:=dateedit2.Date;
      dt2:=dateedit3.Date;
    end else if checkbox6.Checked then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select min(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and wkno=:x2';
        params[0].asinteger:=spinedit5.value;
        params[1].asinteger:=spinedit6.value;
        open;
        dt1:=fieldbyname('x1').value;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select max(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and wkno=:x2';
        params[0].asinteger:=spinedit7.value;
        params[1].asinteger:=spinedit8.value;
        open;
        dt2:=fieldbyname('x1').value;
      end;
    end else if checkbox7.Checked then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select min(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_month(date1)=:x2';
        params[0].asinteger:=spinedit9.value;
        params[1].asinteger:=spinedit10.value;
        open;
        dt1:=fieldbyname('x1').value;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select max(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_month(date1)=:x2';
        params[0].asinteger:=spinedit11.value;
        params[1].asinteger:=spinedit12.value;
        open;
        dt2:=fieldbyname('x1').value;
      end;
    end else if checkbox8.Checked then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select min(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_quarter(date1)=:x2';
        params[0].asinteger:=spinedit13.value;
        params[1].asinteger:=spinedit14.value;
        open;
        dt1:=fieldbyname('x1').value;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select max(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_quarter(date1)=:x2';
        params[0].asinteger:=spinedit15.value;
        params[1].asinteger:=spinedit16.value;
        open;
        dt2:=fieldbyname('x1').value;
      end;
    end else if checkbox9.Checked then begin
      dt1:=encodedate(spinedit17.Value,1,1);
      dt2:=encodedate(spinedit18.Value,12,31);
    end else if checkbox10.Checked then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='select min(dt) as x1,max(dt) asa x2 from tbl_aql_s0 where 1=1';
        if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
        if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
        if combobox3.text>'' then commandtext:=commandtext+' and ws='''+combobox3.text+'''';
        if checkbox1.Checked then commandtext:=commandtext+' and hun_check<>0';
        if checkbox2.checked then commandtext:=commandtext+' and endline<>0';
        if checkbox3.Checked then commandtext:=commandtext+' and dailyaql<>0';
        if checkbox4.Checked then commandtext:=commandtext+' and dailyaql1<>0';
        open;
        if not fieldbyname('x1').isnull then dt1:=fieldbyname('x1').value else dt1:=date;
        if not fieldbyname('x2').isnull then dt2:=fieldbyname('x2').value else dt2:=date;
      end;
    end;
  end;
 if (checkbox11.Checked) or (checkbox12.Checked) or (checkbox13.Checked) then bitbtn2click(self)
 else if (checkbox14.Checked) or (checkbox15.Checked) then bitbtn6click(self)
 else if (checkbox1.Checked) or (checkbox2.Checked) then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select min(dt) as x1,max(dt) as x2 from tbl_aql_s0 where dt>=:x1 and dt<=:x2';
      if checkbox1.Checked then commandtext:=commandtext+' and hun_check<>0'
      else if checkbox2.Checked then commandtext:=commandtext+' and endline<>0';
      if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
      if combobox5.visible=true then commandtext:=commandtext+' and loc='''+combobox5.text+'''';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      open;
      if not fieldbyname('x1').isnull then dt3:=fieldbyname('x1').value;
      if not fieldbyname('x2').isnull then dt4:=fieldbyname('x2').value;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      params.createparam(ftdatetime,'x8',ptinput);
      if (checkbox2.checked) or (combobox5.visible=true) then
      params.createparam(ftstring,'x9',ptinput)
      else if checkbox1.checked then
      params.createparam(ftstring,'x9',ptinput);
      if checkbox1.checked then begin
        if combobox5.Visible=true then
        commandtext:='execute procedure sp_aql_defectsummary_new_fullaudit_loc(:x1,:x2,:x4,:x5,:x8,:x9)'
        //else commandtext:='execute procedure sp_aql_defectsummary_new_fullaudit(:x1,:x2,:x4,:x5,:x8)';
        else begin
          params.createparam(ftstring,'x10',ptinput);
          commandtext:='execute procedure sp_aql_defectsummary_new_fullaudit_ws_wo(:x1,:x2,:x4,:x5,:x8,:x9,:x10)';
        end;
      end else if checkbox2.Checked then begin
        params.createparam(ftstring,'x10',ptinput);
        params.createparam(ftstring,'x11',ptinput);
        if edit4.text='' then
        commandtext:='execute procedure sp_aql_defectsummary_new_fullinspection_ws_wo(:x1,:x2,:x4,:x5,:x8,:x9,:x10,:x11)'
        else begin
          params.createparam(ftstring,'x12',ptinput);
          commandtext:='execute procedure sp_aql_defectsummary_new_fullinspection_ws_wo_hide(:x1,:x2,:x4,:x5,:x8,:x9,:x10,:x11,:x12)';
        end;
      end;
      params[0].asstring:=combobox2.text;
      params[1].asstring:=combobox1.text;
      params[2].asdate:=dt1;
      params[3].asdate:=dt2;
      params[4].asdatetime:=tm;
      if (checkbox1.Checked) and (combobox5.Visible=true) then
      params[5].asstring:=combobox5.text
      else if checkbox1.checked then begin
        params[5].asstring:=combobox3.text;
        if combobox5.visible=false then
        params[6].asstring:=edit3.Text;
      end else if checkbox2.checked then begin
        params[5].asstring:=combobox3.text;
        params[6].asstring:=edit2.Text;
        params[7].asstring:=edit3.Text;
        if edit4.text>'' then params[8].asstring:=edit4.text;
      end;
      execute;
    end;
      if frmdefectsummary4=nil then frmdefectsummary4:=tfrmdefectsummary4.Create(nil);
      frmdefectsummary4.def0001.Caption:=''; frmdefectsummary4.def0002.caption:=''; frmdefectsummary4.def0003.Caption:=''; frmdefectsummary4.def0004.Caption:='';
      frmdefectsummary4.def0005.Caption:=''; frmdefectsummary4.def0006.caption:=''; frmdefectsummary4.def0007.Caption:=''; frmdefectsummary4.def0008.Caption:='';
      frmdefectsummary4.def0009.Caption:=''; frmdefectsummary4.def0010.caption:=''; //frmdefectsummary4.def0011.Caption:=''; //frmdefectsummary4.def0012.Caption:='';
      frmdefectsummary4.qty0001.Caption:=''; frmdefectsummary4.qty0002.caption:=''; frmdefectsummary4.qty0003.Caption:=''; frmdefectsummary4.qty0004.Caption:='';
      frmdefectsummary4.qty0005.Caption:=''; frmdefectsummary4.qty0006.caption:=''; frmdefectsummary4.qty0007.Caption:=''; frmdefectsummary4.qty0008.Caption:='';
      frmdefectsummary4.qty0009.Caption:=''; frmdefectsummary4.qty0010.caption:=''; //frmdefectsummary4.qty0011.Caption:=''; //frmdefectsummary4.qty0012.Caption:='';
      frmdefectsummary4.code0001.Caption:=''; frmdefectsummary4.code0002.caption:=''; frmdefectsummary4.code0003.Caption:=''; frmdefectsummary4.code0004.Caption:='';
      frmdefectsummary4.code0005.Caption:=''; frmdefectsummary4.code0006.caption:=''; frmdefectsummary4.code0007.Caption:=''; frmdefectsummary4.code0008.Caption:='';
      frmdefectsummary4.code0009.Caption:=''; frmdefectsummary4.code0010.caption:=''; //frmdefectsummary4.code0011.Caption:='';// frmdefectsummary4.code0012.Caption:='';
      with frmdefectsummary4.query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct fty,ws,sum(qty1) as qty1,sum(qty2) as qty2,sum(qty3) as qty3,sum(qty4) as qty4,sum(qty5) as qty5,sum(qty6) as qty6,sum(qty7) as qty7,sum(qty8) as qty8,'
                    +'sum(qty9) as qty9,sum(qty10) as qty10,sum(qty11) as qty11,sum(oqty) as oqty,sum(tqty) as tqty,sum(qty) as qty,sum(sqty1) as sqty1,sum(mq1) as mq1,sum(mq2) as mq2,sum(mq3) as mq3,'
                    +'sum(mq4) as mq4,sum(mq5) as mq5,sum(mq6) as mq6,sum(mq7) as mq7,sum(mq8) as mq8,sum(mq9) as mq9,sum(mq10) as mq10,sum(moq) as moq '
                    +'from tbl_aql_defectsummary2 where tm=:x1 group by fty,ws order by fty desc,ws';
        params[0].asdatetime:=tm;
        open;
      end;
      with frmdefectsummary4.query5 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct cust,sum(qty1) as qty1,sum(qty2) as qty2,sum(qty3) as qty3,sum(qty4) as qty4,sum(qty5) as qty5,sum(qty6) as qty6,sum(qty7) as qty7,sum(qty8) as qty8,'
                    +'sum(qty9) as qty9,sum(qty10) as qty10,sum(qty11) as qty11,sum(oqty) as oqty,sum(tqty) as tqty,sum(qty) as qty,sum(sqty1) as sqty1,sum(mq1) as mq1,sum(mq2) as mq2,sum(mq3) as mq3,'
                    +'sum(mq4) as mq4,sum(mq5) as mq5,sum(mq6) as mq6,sum(mq7) as mq7,sum(mq8) as mq8,sum(mq9) as mq9,sum(mq10) as mq10,sum(moq) as moq '
                    +'from tbl_aql_defectsummary2 where tm=:x1 group by cust order by cust';
        params[0].asdatetime:=tm;
        open;
      end;
      with frmdefectsummary4.query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_aql_defectsummary2 where tm=:x1 order by fty desc,ws,pdn,wk,cstyle';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('wk').isnull then begin
          if combobox2.text>'' then frmdefectsummary4.fty001.caption:='Factory / 工廠: '+combobox2.text
          else frmdefectsummary4.fty001.Caption:='China Region / 中國區 ';
          if rb1.Checked then
            frmdefectsummary4.wk001.Caption:='[Week/週 '+inttostr(spinedit2.value)+' (Date from/日期 從  '+formatdatetime('yyyy/MM/dd',dt1)+'  to/到  '+formatdatetime('yyyy/MM/dd',dt2)+')]'
          else if rb6.checked then begin
            if checkbox5.Checked then
              frmdefectsummary4.wk001.Caption:='[Periodic/定期 (Date from/日期 從  '+formatdatetime('yyyy/MM/dd',dateedit2.date)+'  to/到  '+formatdatetime('yyyy/MM/dd',dateedit3.date)+')]'
            else if checkbox6.checked then
              frmdefectsummary4.wk001.Caption:='[Periodic/定期 (Week from/週 從  '+inttostr(spinedit5.value)+'-'+inttostr(spinedit6.value)+'  to/到  '+inttostr(spinedit7.value)+'-'+inttostr(spinedit8.value)+')]'
            else if checkbox7.Checked then begin
              if (spinedit9.value=spinedit11.value) and (spinedit10.value=spinedit12.value) then
                frmdefectsummary4.wk001.caption:='[Month/月 '+inttostr(spinedit9.value)+'-'+inttostr(spinedit10.value)+']'
              else frmdefectsummary4.wk001.Caption:='[Periodic/定期 (Month from/月 從  '+inttostr(spinedit9.value)+'-'+inttostr(spinedit10.value)+'  to/到  '+inttostr(spinedit11.value)+'-'+inttostr(spinedit12.value)+')]'
            end else if checkbox8.Checked then begin
              if (spinedit13.value=spinedit15.value) and (spinedit14.value=spinedit16.value) then
                frmdefectsummary4.wk001.caption:='[Quarter/季 '+inttostr(spinedit13.value)+'-'+inttostr(spinedit14.value)+']'
              else frmdefectsummary4.wk001.Caption:='[Periodic/定期 (Quarter from/季 從  '+inttostr(spinedit13.value)+'-'+inttostr(spinedit14.value)+'  to/到  '+inttostr(spinedit15.value)+'-'+inttostr(spinedit16.value)+')]'
            end else if checkbox9.Checked then begin
              if (spinedit17.value=spinedit18.value) then
                frmdefectsummary4.wk001.caption:='[Year/年 '+inttostr(spinedit17.value)+']'
              else frmdefectsummary4.wk001.Caption:='[Periodic/定期 (Year from/年 從  '+inttostr(spinedit17.value)+'  to/到  '+inttostr(spinedit18.value)+')]'
            end else if checkbox10.Checked then
              frmdefectsummary4.wk001.Caption:='[Periodic/定期 (Date from/日期 從  '+formatdatetime('yyyy/MM/dd',dt1)+'  to/到  '+formatdatetime('yyyy/MM/dd',dt2)+')]'
          end else if rb5.Checked then begin
            if checkbox1.checked then
              frmdefectsummary4.wk001.Caption:='[AQL Audit Date/檢定日期: '+formatdatetime('yyyy/MM/dd',dt1)+']'
            else if checkbox2.checked then
              frmdefectsummary4.wk001.Caption:='[Full Inspection Date/審查日期: '+formatdatetime('yyyy/MM/dd',dt1)+']';
          end;
          if rb1.Checked then begin
            frmdefectsummary4.ppGroupFooterBand1.Visible:=true;
            frmdefectsummary4.ppGroupFooterBand2.Visible:=true;
            if checkbox1.Checked then begin
              frmdefectsummary4.sub001.Caption:=cusn+' - Weekly Off-line Full Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Performance Grade';
              frmdefectsummary4.sub002.caption:='每週離線全檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和表現級數';
            end else if checkbox2.Checked then begin
              frmdefectsummary4.sub001.Caption:=cusn+' - Weekly In-line Full Inspection Quality Performance - Defect Points List';
              frmdefectsummary4.sub002.caption:='每週上線全審查品質表現 - 疵點明細表';
            end;
            frmdefectsummary4.shape01.Visible:=true;
            frmdefectsummary4.lbl01.Visible:=true;
            frmdefectsummary4.lbl02.Visible:=true;
            frmdefectsummary4.memo01.Visible:=true;
            frmdefectsummary4.style001.Caption:='Cust Style No ';
            frmdefectsummary4.style002.caption:='客戶款號 ';
            frmdefectsummary4.ppGroup1.NewPage:=true;
            s1:='';
            if checkbox2.checked then begin
              with frmdefectsummary4.query2 do begin
                close;
                params.clear;
                params.createparam(ftdate,'x1',ptinput);
                params.createparam(ftdate,'x2',ptinput);
                commandtext:='select distinct dt,notepad,f_month(dt) as m1,f_dayofmonth(dt) as d1 from tbl_aql_dailynotepad where dt>=:x1 and dt<=:x2 and notepad>'''' ';
                if combobox2.text>'' then commandtext:=commandtext+'and fty='''+combobox2.text+''' ';
                commandtext:=commandtext+'order by dt';
                params[0].asdate:=dt1;
                params[1].asdate:=dt2;
                open;
                first;
                while not eof do begin
                  s2:='';
                  with frmdefectsummary4.Query3 do begin
                    close;
                    params.clear;
                    params.createparam(ftdate,'x1',ptinput);
                    params.createparam(ftstring,'x2',ptinput);
                    //commandtext:='select distinct pline from tbl_aql_dailynotepad where dt=:x1 and notepad=:x2';
                    commandtext:='select distinct pline from tbl_aql_dailynotepad where dt='''+formatdatetime('yyyy-mm-dd',frmdefectsummary4.Query2.fieldbyname('dt').value)+''' and notepad='''+frmdefectsummary4.Query2.fieldbyname('notepad').value+'''';
                    if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
                    //if combobox3.text>'' then commandtext:=commandtext+' and ws='''+combobox3.text+'''';
                    //params[0].asdate:=frmdefectsummary4.Query2.fieldbyname('dt').value;
                    //params[1].asstring:=frmdefectsummary4.Query2.fieldbyname('notepad').value;
                    open;
                    first;
                    while not eof do begin
                      if s2>'' then s2:=s2+'/'+fieldbyname('pline').value else s2:=fieldbyname('pline').value;
                      application.ProcessMessages;
                      next;
                    end;
                  end;
                  if s1>'' then s1:=s1+';  '+fieldbyname('m1').asstring+'月'+fieldbyname('d1').asstring+'日, '+s2+' - '+fieldbyname('notepad').value
                  else s1:=fieldbyname('m1').asstring+'月'+fieldbyname('d1').asstring+'日, '+s2+' - '+fieldbyname('notepad').value;
                  application.ProcessMessages;
                  next;
                end;
              end;
              frmdefectsummary4.memo01.Text:=s1;
            end else if checkbox1.Checked then begin
              with frmdefectsummary4.query2 do begin
                close;
                params.clear;
                params.createparam(ftinteger,'x1',ptinput);
                params.createparam(ftinteger,'x1',ptinput);
                commandtext:='select remarks from tbl_aql_marks_wk where yr=:x1 and wk=:x2 and remarks>'''' and hun_check<>0';
                if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+''''
                else commandtext:=commandtext+' and ((cust='''') or (cust is null))';
                if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
                //if combobox3.text>'' then commandtext:=commandtext+' and ws='''+combobox3.text+'''';
                params[0].asinteger:=spinedit1.value;
                params[1].asinteger:=spinedit2.value;
                open;
                first;
                while not eof do begin
                  if s1>'' then s1:=s1+chr(13)+chr(20)+fieldbyname('remarks').value
                  else s1:=fieldbyname('remarks').value;
                  application.ProcessMessages;
                  next;
                end;
              end;
              frmdefectsummary4.memo01.Text:=s1;
            end;
          end else if rb2.Checked then begin
            frmdefectsummary4.sub001.Caption:=cusn+' - Monthly Major Defects (Top 11) on Garments AQL Summary';
            frmdefectsummary4.shape01.Visible:=false;
            frmdefectsummary4.lbl01.Visible:=false;
            frmdefectsummary4.lbl02.Visible:=false;
            frmdefectsummary4.memo01.Visible:=false;
            frmdefectsummary4.style001.Caption:='No of Style No. ';
            frmdefectsummary4.style002.Caption:='款號數 ';
          end else if rb3.Checked then begin
            frmdefectsummary4.sub001.Caption:=cusn+' - Seasonal Major Defects (Top 11) on Garments AQL Summary';
            frmdefectsummary4.shape01.Visible:=false;
            frmdefectsummary4.lbl01.Visible:=false;
            frmdefectsummary4.lbl02.Visible:=false;
            frmdefectsummary4.memo01.Visible:=false;
            frmdefectsummary4.style001.Caption:='No of Style No. ';
            frmdefectsummary4.style002.Caption:='款號數 ';
          end else if rb4.Checked then begin
            frmdefectsummary4.sub001.Caption:=cusn+' - Yearly Major Defects (Top 11) on Garments AQL Summary';
            frmdefectsummary4.shape01.Visible:=false;
            frmdefectsummary4.lbl01.Visible:=false;
            frmdefectsummary4.lbl02.Visible:=false;
            frmdefectsummary4.memo01.Visible:=false;
            frmdefectsummary4.style001.Caption:='No of Style No. ';
            frmdefectsummary4.style002.Caption:='款號數 ';
          end else if rb5.Checked then begin
            frmdefectsummary4.ppGroupFooterBand1.Visible:=true;
            frmdefectsummary4.ppGroupFooterBand2.Visible:=false;
            if checkbox1.Checked then begin
              frmdefectsummary4.sub001.Caption:=cusn+' - Daily Off-line Full Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Performance Grade';
              frmdefectsummary4.sub002.caption:='每日離線全檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和表現級數';
            end else if checkbox2.Checked then begin
              frmdefectsummary4.sub001.Caption:=cusn+' - Daily In-line Full Inspection Quality Performance - Defect Points List';
              frmdefectsummary4.sub002.caption:='每日上線全審查品質表現 - 疵點明細表';
            end;
            frmdefectsummary4.shape01.Visible:=true;
            frmdefectsummary4.lbl01.Visible:=true;
            frmdefectsummary4.lbl02.Visible:=true;
            frmdefectsummary4.memo01.Visible:=true;
            frmdefectsummary4.style001.Caption:='Cust Style No ';
            frmdefectsummary4.style002.caption:='客戶款號 ';
            frmdefectsummary4.ppGroup1.NewPage:=false;
            s1:='';
            if checkbox2.Checked then begin
              with frmdefectsummary4.query2 do begin
                close;
                params.clear;
                params.createparam(ftdate,'x1',ptinput);
                commandtext:='select distinct pline,notepad from tbl_aql_dailynotepad where dt=:x1 and notepad>''''';
                if combobox2.text='CN' then commandtext:=commandtext+' and fty in (''SL'',''GG'',''RX'')'
                else if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
                //if combobox3.text>'' then commandtext:=commandtext+' and ws='''+combobox3.text+'''';
                params[0].asdate:=dateedit1.date;
                open;
                first;
                while not eof do begin
                  if s1>'' then s1:=s1+';  '+fieldbyname('pline').value+' - '+fieldbyname('notepad').value
                  else s1:=fieldbyname('pline').value+' - '+fieldbyname('notepad').value;
                  application.ProcessMessages;
                  next;
                end;
              end;
              frmdefectsummary4.memo01.Text:=s1;
              s1:='';
              with frmdefectsummary4.query2 do begin
                close;
                params.clear;
                params.createparam(ftdate,'x1',ptinput);
                commandtext:='select remarks from tbl_aql_dailyaqlnotepad where dt=:x1 and remarks>'''' and aql_type=''Full Inspection''';
                if combobox2.text='CN' then commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')'
                else if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
                //if combobox3.text>'' then commandtext:=commandtext+' and ws='''+combobox3.text+'''';
                params[0].asdate:=dateedit1.date;
                open;
                first;
                while not eof do begin
                  if s1>'' then s1:=s1+chr(13)+chr(20)+' - '+fieldbyname('remarks').value
                  else s1:=fieldbyname('remarks').value;
                  application.ProcessMessages;
                  next;
                end;
              end;
              frmdefectsummary4.memo01.Lines.add(s1);
            end else if checkbox1.Checked then begin
              with frmdefectsummary4.query2 do begin
                close;
                params.clear;
                params.createparam(ftdate,'x1',ptinput);
                commandtext:='select remarks from tbl_aql_dailyaqlnotepad where dt=:x1 and remarks>'''' and aql_type=''Full Audit''';
                if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
                if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
                //if combobox3.text>'' then commandtext:=commandtext+' and ws='''+combobox3.text+'''';
                params[0].asdate:=dateedit1.date;
                open;
                first;
                while not eof do begin
                  if s1>'' then s1:=s1+chr(13)+chr(20)+fieldbyname('remarks').value
                  else s1:=fieldbyname('remarks').value;
                  application.ProcessMessages;
                  next;
                end;
              end;
              frmdefectsummary4.memo01.Text:=s1;
            end;
          end else if rb6.Checked then begin
            frmdefectsummary4.ppGroupFooterBand1.Visible:=true;
            frmdefectsummary4.ppGroupFooterBand2.Visible:=true;
            if checkbox1.Checked then begin
              if (checkbox7.Checked and (spinedit9.value=spinedit11.Value) and (spinedit10.value=spinedit12.value)) then begin
                frmdefectsummary4.sub001.Caption:=cusn+' - Monthly Off-line Full Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Performance Grade';
                frmdefectsummary4.sub002.caption:='每月離線全檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和表現級數';
              end else if (checkbox8.Checked and (spinedit13.value=spinedit15.Value) and (spinedit14.value=spinedit16.Value)) then begin
                frmdefectsummary4.sub001.Caption:=cusn+' - Quarterly Off-line Full Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Performance Grade';
                frmdefectsummary4.sub002.caption:='每季離線全檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和表現級數';
              end else if (checkbox9.Checked and (spinedit17.Value=spinedit18.value)) then begin
                frmdefectsummary4.sub001.Caption:=cusn+' - Yearly Off-line Full Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Performance Grade';
                frmdefectsummary4.sub002.caption:='每年離線全檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和表現級數';
              end else begin
                frmdefectsummary4.sub001.Caption:=cusn+' - Periodic Off-line Full Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Performance Grade';
                frmdefectsummary4.sub002.caption:='定期離線全檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和表現級數';
              end;
            end else if checkbox2.Checked then begin
              if (checkbox7.Checked and (spinedit9.value=spinedit11.Value) and (spinedit10.value=spinedit12.value)) then begin
                frmdefectsummary4.sub001.Caption:=cusn+' - Monthly In-line Full Inspection Quality Performance - Defect Points List';
                frmdefectsummary4.sub002.caption:='每月上線全審查品質表現 - 疵點明細表';
              end else if (checkbox8.Checked and (spinedit13.value=spinedit15.Value) and (spinedit14.value=spinedit16.Value)) then begin
                frmdefectsummary4.sub001.Caption:=cusn+' - Quarterly In-line Full Inspection Quality Performance - Defect Points List';
                frmdefectsummary4.sub002.caption:='每季上線全審查品質表現 - 疵點明細表';
              end else if (checkbox9.Checked and (spinedit17.Value=spinedit18.value)) then begin
                frmdefectsummary4.sub001.Caption:=cusn+' - Yearly In-line Full Inspection Quality Performance - Defect Points List';
                frmdefectsummary4.sub002.caption:='每年上線全審查品質表現 - 疵點明細表';
              end else begin
                frmdefectsummary4.sub001.Caption:=cusn+' - Periodic In-line Full Inspection Quality Performance - Defect Points List';
                frmdefectsummary4.sub002.caption:='定期上線全審查品質表現 - 疵點明細表';
              end;
            end;
            frmdefectsummary4.shape01.Visible:=true;
            frmdefectsummary4.lbl01.Visible:=true;
            frmdefectsummary4.lbl02.Visible:=true;
            frmdefectsummary4.memo01.Visible:=true;
            frmdefectsummary4.style001.Caption:='Cust Style No ';
            frmdefectsummary4.style002.caption:='客戶款號 ';
            frmdefectsummary4.ppGroup1.NewPage:=true;
            s1:='';
            frmdefectsummary4.memo01.Text:=s1;
          end;
          with frmdefectsummary4.query2 do begin
            close;
            params.clear;
            params.createparam(ftdate,'x1',ptinput);
            params.createparam(ftdate,'x2',ptinput);
            commandtext:='select count(distinct cust) as c1,count(distinct pline) as p1,count(distinct cstyle) as x1,count(distinct pono) as x2,sum(qty) as x3,sum(qty1) as x4,sum(qty+qr) as x5,count(distinct ws) as x6,count(*) as x7 '
                        +'from tbl_aql_s0 where dt>=:x1 and dt<=:x2 ';
            if checkbox1.checked then commandtext:=commandtext+' and hun_check<>0'
            else if checkbox2.Checked then commandtext:=commandtext+' and endline<>0';
            if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
            if combobox2.text='CN' then commandtext:=commandtext+' and fty in (''SL'',''GG'',''RX'')'
            else if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
            if combobox3.text>'' then commandtext:=commandtext+' and ws='''+combobox3.text+'''';
            if combobox5.visible=true then commandtext:=commandtext+' and loc='''+combobox5.text+'''';
            if edit2.text>'' then commandtext:=commandtext+' and cstyle='''+edit2.text+'''';
            if edit3.text>'' then commandtext:=commandtext+' and j2_job='''+edit3.text+'''';
            if edit4.text>'' then commandtext:=commandtext+' and cust not like '''+edit4.text+'%''';
            params[0].asdate:=dt1;
            params[1].asdate:=dt2;
            open;
            if not fieldbyname('x1').isnull then begin
              frmdefectsummary4.cust001.Caption:='No of Customer(s): '+fieldbyname('c1').asstring;
              frmdefectsummary4.cust002.caption:='客戶數 ';
              frmdefectsummary4.line001.Caption:='No of Assembly line(s) / 組裝線數: '+fieldbyname('p1').asstring;
              frmdefectsummary4.styles001.Caption:='No of style(s): '+fieldbyname('x1').asstring;
              frmdefectsummary4.styles002.Caption:='款號數 ';
              frmdefectsummary4.pos001.Caption:='No of PO(s): '+fieldbyname('x2').asstring;
              frmdefectsummary4.pos002.Caption:='PO 數 ';
              frmdefectsummary4.ws001.caption:='No of Ws / 組裝工場數: '+fieldbyname('x6').asstring;
              if checkbox1.checked then begin
                frmdefectsummary4.shp001.Caption:='Shpt Qty being Audit: '+fieldbyname('x3').asstring;
                frmdefectsummary4.sample001.Caption:='Sample Garments (Full Audit): '+fieldbyname('x5').asstring;
                frmdefectsummary4.samp002.Caption:='成衣樣板數量 (全檢定)';
                frmdefectsummary4.shp002.Caption:='已檢定之待出貨成衣數量 ';
                frmdefectsummary4.shp003.Caption:='Shpt Qty';
                frmdefectsummary4.shp004.Caption:='待出貨成衣數量';
                frmdefectsummary4.sx01.Caption:='Audit';
                frmdefectsummary4.sx02.Caption:='已檢定之';
                frmdefectsummary4.sx03.Caption:='(Full Audit)';
                frmdefectsummary4.sx04.Caption:='(全檢定)';
              end else if checkbox2.Checked then begin
                frmdefectsummary4.shp001.Caption:='Sewn Qty being Inspect: '+fieldbyname('x3').asstring;
                frmdefectsummary4.sample001.Caption:='Sample Garments (Full Inspect): '+fieldbyname('x5').asstring;
                frmdefectsummary4.samp002.Caption:='成衣樣板數量 (全審查)';
                frmdefectsummary4.shp002.Caption:='已審查之縫合成衣數量 ';
                frmdefectsummary4.shp003.Caption:='Sewn Qty';
                frmdefectsummary4.shp004.Caption:='縫合成衣數量';
                frmdefectsummary4.sx01.Caption:='Inspect';
                frmdefectsummary4.sx02.Caption:='已審查之';
                frmdefectsummary4.sx03.Caption:='(Full Inspect)';
                frmdefectsummary4.sx04.Caption:='(全審查)';
              end;
            end else begin
              frmdefectsummary4.styles001.Caption:='0';
              frmdefectsummary4.pos001.Caption:='0';
              frmdefectsummary4.shp001.Caption:='0';
              frmdefectsummary4.sample001.Caption:='0';
            end;
          end;
          if edit3.text>'' then frmdefectsummary4.sub002.caption:=frmdefectsummary4.sub002.caption+' ['+edit3.text+']';
          with frmdefectsummary4.query2 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select * from tbl_aql_defectsummary1 where tm=:x1 order by ln';
            params[0].asdatetime:=tm;
            open;
            first;
            while not eof do begin
              if fieldbyname('ln').value=1 then begin
                if not fieldbyname('def1').isnull then frmdefectsummary4.def0001.Caption:=fieldbyname('def1').value;
                if not fieldbyname('def2').isnull then frmdefectsummary4.def0002.Caption:=fieldbyname('def2').value;
                if not fieldbyname('def3').isnull then frmdefectsummary4.def0003.Caption:=fieldbyname('def3').value;
                if not fieldbyname('def4').isnull then frmdefectsummary4.def0004.Caption:=fieldbyname('def4').value;
                if not fieldbyname('def5').isnull then frmdefectsummary4.def0005.Caption:=fieldbyname('def5').value;
                if not fieldbyname('def6').isnull then frmdefectsummary4.def0006.Caption:=fieldbyname('def6').value;
                if not fieldbyname('def7').isnull then frmdefectsummary4.def0007.Caption:=fieldbyname('def7').value;
                if not fieldbyname('def8').isnull then frmdefectsummary4.def0008.Caption:=fieldbyname('def8').value;
                if not fieldbyname('def9').isnull then frmdefectsummary4.def0009.Caption:=fieldbyname('def9').value;
                if not fieldbyname('def10').isnull then frmdefectsummary4.def0010.Caption:=fieldbyname('def10').value;
                //if not fieldbyname('def11').isnull then frmdefectsummary4.def0011.Caption:=fieldbyname('def11').value;
              end else if fieldbyname('ln').value=2 then begin
                if not fieldbyname('def1').isnull then frmdefectsummary4.qty0001.Caption:=fieldbyname('def1').value;
                if not fieldbyname('def2').isnull then frmdefectsummary4.qty0002.Caption:=fieldbyname('def2').value;
                if not fieldbyname('def3').isnull then frmdefectsummary4.qty0003.Caption:=fieldbyname('def3').value;
                if not fieldbyname('def4').isnull then frmdefectsummary4.qty0004.Caption:=fieldbyname('def4').value;
                if not fieldbyname('def5').isnull then frmdefectsummary4.qty0005.Caption:=fieldbyname('def5').value;
                if not fieldbyname('def6').isnull then frmdefectsummary4.qty0006.Caption:=fieldbyname('def6').value;
                if not fieldbyname('def7').isnull then frmdefectsummary4.qty0007.Caption:=fieldbyname('def7').value;
                if not fieldbyname('def8').isnull then frmdefectsummary4.qty0008.Caption:=fieldbyname('def8').value;
                if not fieldbyname('def9').isnull then frmdefectsummary4.qty0009.Caption:=fieldbyname('def9').value;
                if not fieldbyname('def10').isnull then frmdefectsummary4.qty0010.Caption:=fieldbyname('def10').value;
                //if not fieldbyname('def11').isnull then frmdefectsummary4.qty0011.Caption:=fieldbyname('def11').value;
              end else if fieldbyname('ln').value=3 then begin
                if not fieldbyname('def1').isnull then frmdefectsummary4.code0001.Caption:=fieldbyname('def1').value;
                if not fieldbyname('def1').isnull then frmdefectsummary4.code1001.Caption:='('+fieldbyname('def1').value+')';
                if not fieldbyname('def2').isnull then frmdefectsummary4.code0002.Caption:=fieldbyname('def2').value;
                if not fieldbyname('def3').isnull then frmdefectsummary4.code0003.Caption:=fieldbyname('def3').value;
                if not fieldbyname('def4').isnull then frmdefectsummary4.code0004.Caption:=fieldbyname('def4').value;
                if not fieldbyname('def5').isnull then frmdefectsummary4.code0005.Caption:=fieldbyname('def5').value;
                if not fieldbyname('def6').isnull then frmdefectsummary4.code0006.Caption:=fieldbyname('def6').value;
                if not fieldbyname('def7').isnull then frmdefectsummary4.code0007.Caption:=fieldbyname('def7').value;
                if not fieldbyname('def8').isnull then frmdefectsummary4.code0008.Caption:=fieldbyname('def8').value;
                if not fieldbyname('def9').isnull then frmdefectsummary4.code0009.Caption:=fieldbyname('def9').value;
                if not fieldbyname('def10').isnull then frmdefectsummary4.code0010.Caption:=fieldbyname('def10').value;
                //if not fieldbyname('def11').isnull then frmdefectsummary4.code0011.Caption:=fieldbyname('def11').value;
              end;
              application.ProcessMessages;
              next;
            end;
          end;
          if cusn='' then frmdefectsummary4.sub001.Caption:=copy(frmdefectsummary4.sub001.Caption,3,500);
          frmdefectsummary4.ppReport3.Print;
        end;
      end;

 end else if (checkbox3.Checked) or (checkbox4.Checked) then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select min(dt) as x1,max(dt) as x2 from tbl_aql_s0 where dt>=:x1 and dt<=:x2';
      if checkbox3.Checked then commandtext:=commandtext+' and dailyaql<>0'
      else if checkbox4.Checked then commandtext:=commandtext+' and dailyaql1<>0';
      if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      open;
      if not fieldbyname('x1').isnull then dt3:=fieldbyname('x1').value;
      if not fieldbyname('x2').isnull then dt4:=fieldbyname('x2').value;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      params.createparam(ftdatetime,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      if checkbox3.checked then begin
        params.createparam(ftstring,'x10',ptinput);
        params.createparam(ftstring,'x11',ptinput);
        //commandtext:='execute procedure sp_aql_defectsummary_new_dailyaql_ws_style(:x1,:x2,:x4,:x5,:x8,:x9,:x10)';
        commandtext:='execute procedure sp_aql_defectsummary_new_dailyaql_ws_wo(:x1,:x2,:x4,:x5,:x8,:x9,:x10,:x11)';
      end else if checkbox4.Checked then
        commandtext:='execute procedure sp_aql_defectsummary_new_dailyaql1_ws(:x1,:x2,:x4,:x5,:x8,:x9)';
      params[0].asstring:=combobox2.text;
      params[1].asstring:=combobox1.text;
      params[2].asdate:=dt1;
      params[3].asdate:=dt2;
      params[4].asdatetime:=tm;
      params[5].asstring:=combobox3.text;
      if checkbox3.checked then begin
        params[6].AsString:=edit2.text;
        params[7].AsString:=edit3.text;
      end;
      execute;
    end;
      if frmdefectsummary3=nil then frmdefectsummary3:=tfrmdefectsummary3.Create(nil);
      frmdefectsummary3.def0001.Caption:=''; frmdefectsummary3.def0002.caption:=''; frmdefectsummary3.def0003.Caption:=''; frmdefectsummary3.def0004.Caption:='';
      frmdefectsummary3.def0005.Caption:=''; frmdefectsummary3.def0006.caption:=''; frmdefectsummary3.def0007.Caption:=''; frmdefectsummary3.def0008.Caption:='';
      frmdefectsummary3.def0009.Caption:=''; //frmdefectsummary3.def0010.caption:=''; //frmdefectsummary3.def0011.Caption:=''; //frmdefectsummary3.def0012.Caption:='';
      frmdefectsummary3.qty0001.Caption:=''; frmdefectsummary3.qty0002.caption:=''; frmdefectsummary3.qty0003.Caption:=''; frmdefectsummary3.qty0004.Caption:='';
      frmdefectsummary3.qty0005.Caption:=''; frmdefectsummary3.qty0006.caption:=''; frmdefectsummary3.qty0007.Caption:=''; frmdefectsummary3.qty0008.Caption:='';
      frmdefectsummary3.qty0009.Caption:=''; //frmdefectsummary3.qty0010.caption:=''; //frmdefectsummary3.qty0011.Caption:=''; //frmdefectsummary3.qty0012.Caption:='';
      frmdefectsummary3.code0001.Caption:=''; frmdefectsummary3.code0002.caption:=''; frmdefectsummary3.code0003.Caption:=''; frmdefectsummary3.code0004.Caption:='';
      frmdefectsummary3.code0005.Caption:=''; frmdefectsummary3.code0006.caption:=''; frmdefectsummary3.code0007.Caption:=''; frmdefectsummary3.code0008.Caption:='';
      frmdefectsummary3.code0009.Caption:=''; //frmdefectsummary3.code0010.caption:='';// frmdefectsummary3.code0011.Caption:='';// frmdefectsummary3.code0012.Caption:='';
      with frmdefectsummary3.query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct fty,ws,sum(qty1) as qty1,sum(qty2) as qty2,sum(qty3) as qty3,sum(qty4) as qty4,sum(qty5) as qty5,sum(qty6) as qty6,sum(qty7) as qty7,sum(qty8) as qty8,'
                    +'sum(qty9) as qty9,sum(qty10) as qty10,sum(qty11) as qty11,sum(oqty) as oqty,sum(tqty) as tqty,sum(qty) as qty,sum(sqty1) as sqty1,sum(mq1) as mq1,sum(mq2) as mq2,sum(mq3) as mq3,'
                    +'sum(mq4) as mq4,sum(mq5) as mq5,sum(mq6) as mq6,sum(mq7) as mq7,sum(mq8) as mq8,sum(mq9) as mq9,sum(mq10) as mq10,sum(majr) as majr,sum(minr) as minr,sum(moq) as moq '
                    +'from tbl_aql_defectsummary2 where tm=:x1 group by fty,ws order by fty desc,ws';
        params[0].asdatetime:=tm;
        open;
      end;
      with frmdefectsummary3.query5 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct cust,sum(qty1) as qty1,sum(qty2) as qty2,sum(qty3) as qty3,sum(qty4) as qty4,sum(qty5) as qty5,sum(qty6) as qty6,sum(qty7) as qty7,sum(qty8) as qty8,'
                    +'sum(qty9) as qty9,sum(qty10) as qty10,sum(qty11) as qty11,sum(oqty) as oqty,sum(tqty) as tqty,sum(qty) as qty,sum(sqty1) as sqty1,sum(mq1) as mq1,sum(mq2) as mq2,sum(mq3) as mq3,'
                    +'sum(mq4) as mq4,sum(mq5) as mq5,sum(mq6) as mq6,sum(mq7) as mq7,sum(mq8) as mq8,sum(mq9) as mq9,sum(mq10) as mq10,sum(majr) as majr,sum(minr) as minr,sum(moq) as moq '
                    +'from tbl_aql_defectsummary2 where tm=:x1 group by cust order by cust';
        params[0].asdatetime:=tm;
        open;
      end;
      with frmdefectsummary3.query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_aql_defectsummary2 where tm=:x1 order by fty desc,ws,pdn,wk,dellot,cstyle,audit';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('wk').isnull then begin
          if combobox2.text>'' then frmdefectsummary3.fty001.caption:='Factory / 工廠: '+combobox2.text
          else frmdefectsummary3.fty001.Caption:='China Region / 中國區 ';
          if rb1.Checked then
            frmdefectsummary3.wk001.Caption:='[Week/週 '+inttostr(spinedit2.value)+' (Date from/日期 從  '+formatdatetime('yyyy/MM/dd',dt3)+'  to/到  '+formatdatetime('yyyy/MM/dd',dt4)+')]'
          else if rb6.checked then begin
            if checkbox5.Checked then
              frmdefectsummary3.wk001.Caption:='[Periodic/定期 (Date from/日期 從  '+formatdatetime('yyyy/MM/dd',dateedit2.date)+'  to/到  '+formatdatetime('yyyy/MM/dd',dateedit3.date)+')]'
            else if checkbox6.checked then
              frmdefectsummary3.wk001.Caption:='[Periodic/定期 (Week from/週 從  '+inttostr(spinedit5.value)+'-'+inttostr(spinedit6.value)+'  to/到  '+inttostr(spinedit7.value)+'-'+inttostr(spinedit8.value)+')]'
            else if checkbox7.Checked then begin
              if (spinedit9.value=spinedit11.value) and (spinedit10.value=spinedit12.value) then
                frmdefectsummary3.wk001.caption:='[Month/月 '+inttostr(spinedit9.value)+'-'+inttostr(spinedit10.value)+']'
              else frmdefectsummary3.wk001.Caption:='[Periodic/定期 (Month from/月 從  '+inttostr(spinedit9.value)+'-'+inttostr(spinedit10.value)+'  to/到  '+inttostr(spinedit11.value)+'-'+inttostr(spinedit12.value)+')]'
            end else if checkbox8.Checked then begin
              if (spinedit13.value=spinedit15.value) and (spinedit14.value=spinedit16.value) then
                frmdefectsummary3.wk001.caption:='[Quarter/季 '+inttostr(spinedit13.value)+'-'+inttostr(spinedit14.value)+']'
              else frmdefectsummary3.wk001.Caption:='[Periodic/定期 (Quarter from/季 從  '+inttostr(spinedit13.value)+'-'+inttostr(spinedit14.value)+'  to/到  '+inttostr(spinedit15.value)+'-'+inttostr(spinedit16.value)+')]'
            end else if checkbox9.Checked then begin
              if (spinedit17.value=spinedit18.value) then
                frmdefectsummary3.wk001.caption:='[Year/年 '+inttostr(spinedit17.value)+']'
              else frmdefectsummary3.wk001.Caption:='[Periodic/定期 (Year from/年 從  '+inttostr(spinedit17.value)+'  to/到  '+inttostr(spinedit18.value)+')]'
            end else if checkbox10.Checked then
              frmdefectsummary3.wk001.Caption:='[Periodic/定期 (Date from/日期 從  '+formatdatetime('yyyy/MM/dd',dt1)+'  to/到  '+formatdatetime('yyyy/MM/dd',dt2)+')]'
          end else if rb5.Checked then
            frmdefectsummary3.wk001.Caption:='[AQL Audit Date/檢定日期: '+formatdatetime('yyyy/MM/dd',dt1)+']';
          if rb1.Checked then begin
            frmdefectsummary3.ppGroupFooterBand1.Visible:=true;
            frmdefectsummary3.ppGroupFooterBand2.Visible:=true;
            if checkbox3.Checked then begin
              frmdefectsummary3.sub001.Caption:=cusn+' - Weekly Off-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
              frmdefectsummary3.sub002.caption:='每週離線AQL檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和檢定結果';
            end else if checkbox4.Checked then begin
              frmdefectsummary3.sub001.Caption:=cusn+' - Weekly In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
              frmdefectsummary3.sub002.caption:='每週上線AQL檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和檢定結果';
            end;
            frmdefectsummary3.shape01.Visible:=true;
            frmdefectsummary3.lbl01.Visible:=true;
            frmdefectsummary3.lbl02.Visible:=true;
            frmdefectsummary3.memo01.Visible:=true;
            frmdefectsummary3.memo02.Visible:=true;
            frmdefectsummary3.style001.Caption:='Cust Style No ';
            frmdefectsummary3.style002.caption:='客戶款號 ';
            frmdefectsummary3.ppGroup1.NewPage:=true;
            s1:='';
            with frmdefectsummary3.query2 do begin
              close;
              params.clear;
              params.createparam(ftinteger,'x1',ptinput);
              params.createparam(ftinteger,'x2',ptinput);
              commandtext:='select remarks from tbl_aql_marks_wk where dailyaql<>0 and wk=:x1 and yr=:x2';
              if combobox3.text>'' then commandtext:=commandtext+' and ws='''+combobox3.text+'''';
              if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
              if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+''''
              else commandtext:=commandtext+' and ((cust='''') or (cust is null))';
              params[0].asinteger:=spinedit2.value;
              params[1].asinteger:=spinedit1.value;
              open;
              //if not fieldbyname('remarks').isnull then memo01.Text:=fieldbyname('remarks').value
              //else memo01.Text:='';
              first;
              while not eof do begin
                if s1>'' then s1:=s1+chr(13)+chr(20)+fieldbyname('remarks').value
                else s1:=fieldbyname('remarks').value;
                application.ProcessMessages;
                next;
              end;
            end;
            frmdefectsummary3.memo01.Text:=s1;
            frmdefectsummary3.memo01.Lines.add(' ');
            frmdefectsummary3.memo02.Text:='';
          end else if rb2.Checked then begin
            frmdefectsummary3.sub001.Caption:=cusn+' - Monthly Major Defects (Top 11) on Garments AQL Summary';
            frmdefectsummary3.shape01.Visible:=false;
            frmdefectsummary3.lbl01.Visible:=false;
            frmdefectsummary3.lbl02.Visible:=false;
            frmdefectsummary3.memo01.Visible:=false;
            frmdefectsummary3.memo02.Visible:=false;
            frmdefectsummary3.style001.Caption:='No of Style No. ';
            frmdefectsummary3.style002.Caption:='款號數 ';
          end else if rb3.Checked then begin
            frmdefectsummary3.sub001.Caption:=cusn+' - Seasonal Major Defects (Top 11) on Garments AQL Summary';
            frmdefectsummary3.shape01.Visible:=false;
            frmdefectsummary3.lbl01.Visible:=false;
            frmdefectsummary3.lbl02.Visible:=false;
            frmdefectsummary3.memo01.Visible:=false;
            frmdefectsummary3.memo02.Visible:=false;
            frmdefectsummary3.style001.Caption:='No of Style No. ';
            frmdefectsummary3.style002.Caption:='款號數 ';
          end else if rb4.Checked then begin
            frmdefectsummary3.sub001.Caption:=cusn+' - Yearly Major Defects (Top 11) on Garments AQL Summary';
            frmdefectsummary3.shape01.Visible:=false;
            frmdefectsummary3.lbl01.Visible:=false;
            frmdefectsummary3.lbl02.Visible:=false;
            frmdefectsummary3.memo01.Visible:=false;
            frmdefectsummary3.memo02.Visible:=false;
            frmdefectsummary3.style001.Caption:='No of Style No. ';
            frmdefectsummary3.style002.Caption:='款號數 ';
          end else if rb5.Checked then begin
            frmdefectsummary3.ppGroupFooterBand1.Visible:=true;
            frmdefectsummary3.ppGroupFooterBand2.Visible:=false;
            if checkbox3.Checked then begin
              frmdefectsummary3.sub001.Caption:=cusn+' - Daily Off-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
              frmdefectsummary3.sub002.caption:='每日離線AQL檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和檢定結果';
            end else if checkbox4.Checked then begin
              frmdefectsummary3.sub001.Caption:=cusn+' - Daily In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
              frmdefectsummary3.sub002.caption:='每日上線AQL檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和檢定結果';
            end;
            frmdefectsummary3.shape01.Visible:=true;
            frmdefectsummary3.lbl01.Visible:=true;
            frmdefectsummary3.lbl02.Visible:=true;
            frmdefectsummary3.memo01.Visible:=true;
            frmdefectsummary3.memo02.Visible:=true;
            frmdefectsummary3.style001.Caption:='Cust Style No ';
            frmdefectsummary3.style002.caption:='客戶款號 ';
            frmdefectsummary3.ppGroup1.NewPage:=false;
            s1:='';
            s2:='';
            with frmdefectsummary3.query2 do begin
              close;
              params.clear;
              params.createparam(ftdate,'x1',ptinput);
              commandtext:='select distinct tplant,remarks,failreason from tbl_aql_dailyaqlnotepad where dt=:x1 and remarks>'''' ';
              if checkbox3.checked then commandtext:=commandtext+' and aql_type=''Off-line AQL'''
              else if checkbox4.checked then commandtext:=commandtext+' and aql_type=''In-line AQL''';
              if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
              //if combobox3.text>'' then commandtext:=commandtext+' and ws='''+combobox3.text+'''';
              params[0].asdate:=dateedit1.date;
              open;
              first;
              while not eof do begin
                if s1>'' then s1:=s1+chr(13)+chr(20)+fieldbyname('tplant').value+' - '+fieldbyname('remarks').value
                else s1:=fieldbyname('tplant').value+' - '+fieldbyname('remarks').value;
                if not fieldbyname('failreason').isnull then begin
                  if s2>'' then s2:=s1+chr(13)+chr(20)+fieldbyname('tplant').value+' - '+fieldbyname('failreason').value
                  else s2:=fieldbyname('tplant').value+' - '+fieldbyname('failreason').value;
                end;
                application.ProcessMessages;
                next;
              end;
            end;
            frmdefectsummary3.memo01.Text:=s1;
            frmdefectsummary3.memo01.Lines.Add(' ');
            frmdefectsummary3.memo02.Text:=s2;
            frmdefectsummary3.memo02.Lines.Add(' ');
          end else if rb6.Checked then begin
            frmdefectsummary3.ppGroupFooterBand1.Visible:=true;
            frmdefectsummary3.ppGroupFooterBand2.Visible:=true;
            if checkbox3.Checked then begin
              if (checkbox7.Checked and (spinedit9.value=spinedit11.Value) and (spinedit10.value=spinedit12.value)) then begin
                frmdefectsummary3.sub001.Caption:=cusn+' - Monthly Off-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
                frmdefectsummary3.sub002.caption:='每月離線AQL檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和檢定結果';
              end else if (checkbox8.Checked and (spinedit13.value=spinedit15.Value) and (spinedit14.value=spinedit16.Value)) then begin
                frmdefectsummary3.sub001.Caption:=cusn+' - Quarterly Off-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
                frmdefectsummary3.sub002.caption:='每季離線AQL檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和檢定結果';
              end else if (checkbox9.Checked and (spinedit17.Value=spinedit18.value)) then begin
                frmdefectsummary3.sub001.Caption:=cusn+' - Yearly Off-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
                frmdefectsummary3.sub002.caption:='每年離線AQL檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和檢定結果';
              end else begin
                frmdefectsummary3.sub001.Caption:=cusn+' - Periodic Off-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
                frmdefectsummary3.sub002.caption:='定期離線AQL檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和檢定結果';
              end;
            end else if checkbox4.Checked then begin
              if (checkbox7.Checked and (spinedit9.value=spinedit11.Value) and (spinedit10.value=spinedit12.value)) then begin
                frmdefectsummary3.sub001.Caption:=cusn+' - Monthly In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
                frmdefectsummary3.sub002.caption:='每月上線AQL檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和檢定結果';
              end else if (checkbox8.Checked and (spinedit13.value=spinedit15.Value) and (spinedit14.value=spinedit16.Value)) then begin
                frmdefectsummary3.sub001.Caption:=cusn+' - Quarterly In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
                frmdefectsummary3.sub002.caption:='每季上線AQL檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和檢定結果';
              end else if (checkbox9.Checked and (spinedit17.Value=spinedit18.value)) then begin
                frmdefectsummary3.sub001.Caption:=cusn+' - Yearly In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
                frmdefectsummary3.sub002.caption:='每年上線AQL檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和檢定結果';
              end else begin
                frmdefectsummary3.sub001.Caption:=cusn+' - Periodic In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
                frmdefectsummary3.sub002.caption:='定期上線AQL檢定品質表現報告摘要 - 成衣(主要/次要)瑕疵和檢定結果';
              end;
            end;
            frmdefectsummary3.shape01.Visible:=true;
            frmdefectsummary3.lbl01.Visible:=true;
            frmdefectsummary3.lbl02.Visible:=true;
            frmdefectsummary3.memo01.Visible:=true;
            frmdefectsummary3.memo02.Visible:=true;
            frmdefectsummary3.style001.Caption:='Cust Style No ';
            frmdefectsummary3.style002.caption:='客戶款號 ';
            frmdefectsummary3.ppGroup1.NewPage:=true;
            s1:='';
            frmdefectsummary3.memo01.Text:=s1;
            frmdefectsummary3.memo02.Text:=s1;
          end;
          if edit3.text>'' then frmdefectsummary3.sub002.caption:=frmdefectsummary3.sub002.caption+' ['+edit3.text+']';
          with frmdefectsummary3.query2 do begin
            close;
            params.clear;
            params.createparam(ftdate,'x1',ptinput);
            params.createparam(ftdate,'x2',ptinput);
            commandtext:='select count(distinct cust) as c1,count(distinct pline) as p1,count(distinct cstyle) as x1,count(distinct pono) as x2,sum(qty) as x3,sum(qty1) as x4,sum(qty+qr) as x5,count(distinct ws) as x6,count(*) as x7 '
                        +'from tbl_aql_s0 where dt>=:x1 and dt<=:x2 ';
            if checkbox3.checked then commandtext:=commandtext+' and dailyaql<>0'
            else if checkbox4.Checked then commandtext:=commandtext+' and dailyaql1<>0';
            if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
            if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
            if combobox3.text>'' then commandtext:=commandtext+' and ws='''+combobox3.text+'''';
            if edit2.text>'' then commandtext:=commandtext+' and cstyle='''+edit2.text+'''';
            if edit3.text>'' then commandtext:=commandtext+' and j2_job='''+edit3.text+'''';
            params[0].asdate:=dt1;
            params[1].asdate:=dt2;
            open;
            if not fieldbyname('x1').isnull then begin
              frmdefectsummary3.cust001.Caption:='No of Customer(s): '+fieldbyname('c1').asstring;
              frmdefectsummary3.cust002.caption:='客戶數 ';
              frmdefectsummary3.line001.Caption:='No of Assembly line(s) / 組裝線數: '+fieldbyname('p1').asstring;
              frmdefectsummary3.styles001.Caption:='No of style(s): '+fieldbyname('x1').asstring;
              frmdefectsummary3.styles002.Caption:='款號數 ';
              frmdefectsummary3.pos001.Caption:='No of PO(s): '+fieldbyname('x2').asstring;
              frmdefectsummary3.pos002.Caption:='PO 數 ';
              frmdefectsummary3.ws001.caption:='No of Ws / 組裝工場數: '+fieldbyname('x6').asstring;
              frmdefectsummary3.shp001.Caption:='Shpt Qty being Audit: '+fieldbyname('x3').asstring;
              frmdefectsummary3.sample001.Caption:='Sample Gmts: '+fieldbyname('x4').asstring;
              frmdefectsummary3.samp002.Caption:='成衣樣板數量 ';
              frmdefectsummary3.shp002.Caption:='已檢定之待出貨數量 ';
            end else begin
              frmdefectsummary3.styles001.Caption:='0';
              frmdefectsummary3.pos001.Caption:='0';
              frmdefectsummary3.shp001.Caption:='0';
              frmdefectsummary3.sample001.Caption:='0';
            end;
          end;
          with frmdefectsummary3.query2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftstring,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            params.createparam(ftdate,'x5',ptinput);
            params.createparam(ftdate,'x6',ptinput);
            params.createparam(ftstring,'x7',ptinput);
            params.createparam(ftstring,'x8',ptinput);
            params.createparam(ftstring,'x9',ptinput);
            commandtext:='select * from SP_AQL_RESULT_WO(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9)';
            params[0].asstring:=combobox2.text;
            params[1].asstring:=combobox3.text;
            params[2].asstring:=combobox1.text;
            params[3].asstring:=edit2.text;
            params[4].asdate:=dt1;
            params[5].asdate:=dt2;
            params[6].asstring:='4';
            if checkbox3.checked then
            params[7].asstring:='AQL'
            else if checkbox4.checked then
            params[7].asstring:='INAQL';
            params[8].asstring:=edit3.text;
            open;
            if not fieldbyname('acc1').IsNull then frmdefectsummary3.acc001.Caption:=fieldbyname('acc1').asstring;
            if not fieldbyname('acc01').IsNull then frmdefectsummary3.macc001.Caption:=fieldbyname('acc01').asstring;
            if not fieldbyname('rej1').IsNull then frmdefectsummary3.rej001.Caption:=fieldbyname('rej1').asstring;
            if not fieldbyname('acc2').IsNull then frmdefectsummary3.acc002.Caption:=fieldbyname('acc2').asstring;
            if not fieldbyname('acc02').IsNull then frmdefectsummary3.macc002.Caption:=fieldbyname('acc02').asstring;
            if not fieldbyname('rej2').IsNull then frmdefectsummary3.rej002.Caption:=fieldbyname('rej2').asstring;
            if not fieldbyname('acc3').IsNull then frmdefectsummary3.acc003.Caption:=fieldbyname('acc3').asstring;
            if not fieldbyname('acc03').IsNull then frmdefectsummary3.macc003.Caption:=fieldbyname('acc03').asstring;
            if not fieldbyname('rej3').IsNull then frmdefectsummary3.rej003.Caption:=fieldbyname('rej3').asstring;
            if not fieldbyname('acc4').IsNull then frmdefectsummary3.acc004.Caption:=fieldbyname('acc4').asstring;
            if not fieldbyname('acc04').IsNull then frmdefectsummary3.macc004.Caption:=fieldbyname('acc04').asstring;
            if not fieldbyname('rej4').IsNull then frmdefectsummary3.rej004.Caption:=fieldbyname('rej4').asstring;
            if not fieldbyname('acc5').IsNull then frmdefectsummary3.acc005.Caption:=fieldbyname('acc5').asstring;
            if not fieldbyname('acc05').IsNull then frmdefectsummary3.macc005.Caption:=fieldbyname('acc05').asstring;
            if not fieldbyname('rej5').IsNull then frmdefectsummary3.rej005.Caption:=fieldbyname('rej5').asstring;
            if not fieldbyname('ttl').IsNull then frmdefectsummary3.adt001.Caption:=fieldbyname('ttl').asstring;
          end;
          with frmdefectsummary3.query2 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select * from tbl_aql_defectsummary1 where tm=:x1 order by ln';
            params[0].asdatetime:=tm;
            open;
            first;
            while not eof do begin
              if fieldbyname('ln').value=1 then begin
                if not fieldbyname('def1').isnull then frmdefectsummary3.def0001.Caption:=fieldbyname('def1').value;
                if not fieldbyname('def2').isnull then frmdefectsummary3.def0002.Caption:=fieldbyname('def2').value;
                if not fieldbyname('def3').isnull then frmdefectsummary3.def0003.Caption:=fieldbyname('def3').value;
                if not fieldbyname('def4').isnull then frmdefectsummary3.def0004.Caption:=fieldbyname('def4').value;
                if not fieldbyname('def5').isnull then frmdefectsummary3.def0005.Caption:=fieldbyname('def5').value;
                if not fieldbyname('def6').isnull then frmdefectsummary3.def0006.Caption:=fieldbyname('def6').value;
                if not fieldbyname('def7').isnull then frmdefectsummary3.def0007.Caption:=fieldbyname('def7').value;
                if not fieldbyname('def8').isnull then frmdefectsummary3.def0008.Caption:=fieldbyname('def8').value;
                if not fieldbyname('def9').isnull then frmdefectsummary3.def0009.Caption:=fieldbyname('def9').value;
                //if not fieldbyname('def10').isnull then frmdefectsummary3.def0010.Caption:=fieldbyname('def10').value;
              end else if fieldbyname('ln').value=2 then begin
                if not fieldbyname('def1').isnull then frmdefectsummary3.qty0001.Caption:=fieldbyname('def1').value;
                if not fieldbyname('def2').isnull then frmdefectsummary3.qty0002.Caption:=fieldbyname('def2').value;
                if not fieldbyname('def3').isnull then frmdefectsummary3.qty0003.Caption:=fieldbyname('def3').value;
                if not fieldbyname('def4').isnull then frmdefectsummary3.qty0004.Caption:=fieldbyname('def4').value;
                if not fieldbyname('def5').isnull then frmdefectsummary3.qty0005.Caption:=fieldbyname('def5').value;
                if not fieldbyname('def6').isnull then frmdefectsummary3.qty0006.Caption:=fieldbyname('def6').value;
                if not fieldbyname('def7').isnull then frmdefectsummary3.qty0007.Caption:=fieldbyname('def7').value;
                if not fieldbyname('def8').isnull then frmdefectsummary3.qty0008.Caption:=fieldbyname('def8').value;
                if not fieldbyname('def9').isnull then frmdefectsummary3.qty0009.Caption:=fieldbyname('def9').value;
                //if not fieldbyname('def10').isnull then frmdefectsummary3.qty0010.Caption:=fieldbyname('def10').value;
              end else if fieldbyname('ln').value=3 then begin
                if not fieldbyname('def1').isnull then frmdefectsummary3.code0001.Caption:=fieldbyname('def1').value;
                if not fieldbyname('def2').isnull then frmdefectsummary3.code0002.Caption:=fieldbyname('def2').value;
                if not fieldbyname('def3').isnull then frmdefectsummary3.code0003.Caption:=fieldbyname('def3').value;
                if not fieldbyname('def4').isnull then frmdefectsummary3.code0004.Caption:=fieldbyname('def4').value;
                if not fieldbyname('def5').isnull then frmdefectsummary3.code0005.Caption:=fieldbyname('def5').value;
                if not fieldbyname('def6').isnull then frmdefectsummary3.code0006.Caption:=fieldbyname('def6').value;
                if not fieldbyname('def7').isnull then frmdefectsummary3.code0007.Caption:=fieldbyname('def7').value;
                if not fieldbyname('def8').isnull then frmdefectsummary3.code0008.Caption:=fieldbyname('def8').value;
                if not fieldbyname('def9').isnull then frmdefectsummary3.code0009.Caption:=fieldbyname('def9').value;
                //if not fieldbyname('def10').isnull then frmdefectsummary3.code0010.Caption:=fieldbyname('def10').value;
              end;
              application.ProcessMessages;
              next;
            end;
          end;
          if cusn='' then frmdefectsummary3.sub001.Caption:=copy(frmdefectsummary3.sub001.Caption,3,500);
          frmdefectsummary3.ppReport3.Print;
        end;
      end;

 end else begin
  if checkbox2.Checked then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select min(dt) as x1,max(dt) as x2 from tbl_aql_s0 where dt>=:x1 and dt<=:x2 and endline<>0';
      if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      open;
      if not fieldbyname('x1').isnull then dt3:=fieldbyname('x1').value;
      if not fieldbyname('x2').isnull then dt4:=fieldbyname('x2').value;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      params.createparam(ftboolean,'x6',ptinput);
      params.createparam(ftboolean,'x7',ptinput);
      params.createparam(ftdatetime,'x8',ptinput);
      params.createparam(ftstring,'x9',ptinput);
      params.createparam(ftstring,'x10',ptinput);
      params.createparam(ftstring,'x11',ptinput);
      //if edit2.text>'' then params.createparam(ftstring,'x10',ptinput);
      //if edit2.text>'' then
      //commandtext:='execute procedure sp_aql_defectsummary_new_line_style(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10)'
      //else commandtext:='execute procedure sp_aql_defectsummary_new_line(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9)';
      commandtext:='execute procedure sp_aql_defectsummary_new_line_wo(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11)';
      params[0].asstring:='SL';
      params[1].asstring:=combobox1.text;
      if (rb1.checked) or (rb5.Checked) or (rb6.checked) then params[2].AsString:='0'
      else params[2].asstring:='1';
      params[3].asdate:=dt1;
      params[4].asdate:=dt2;
      params[5].asboolean:=checkbox1.Checked;
      params[6].asboolean:=checkbox2.Checked;
      params[7].asdatetime:=tm;
      params[8].asstring:=combobox2.text;//edit1.text;
      //if edit2.text>'' then
      params[9].asstring:=edit2.text;
      params[10].asstring:=edit3.text;
      execute;
    end;
    if combobox1.text>'' then begin
      if frmdefectsummary1=nil then frmdefectsummary1:=tfrmdefectsummary1.Create(nil);
      frmdefectsummary1.def0001.Caption:=''; frmdefectsummary1.def0002.caption:=''; frmdefectsummary1.def0003.Caption:=''; frmdefectsummary1.def0004.Caption:='';
      frmdefectsummary1.def0005.Caption:=''; frmdefectsummary1.def0006.caption:=''; frmdefectsummary1.def0007.Caption:=''; frmdefectsummary1.def0008.Caption:='';
      frmdefectsummary1.def0009.Caption:=''; frmdefectsummary1.def0010.caption:=''; def0011.Caption:=''; //frmdefectsummary1.def0012.Caption:='';
      frmdefectsummary1.qty0001.Caption:=''; frmdefectsummary1.qty0002.caption:=''; frmdefectsummary1.qty0003.Caption:=''; frmdefectsummary1.qty0004.Caption:='';
      frmdefectsummary1.qty0005.Caption:=''; frmdefectsummary1.qty0006.caption:=''; frmdefectsummary1.qty0007.Caption:=''; frmdefectsummary1.qty0008.Caption:='';
      frmdefectsummary1.qty0009.Caption:=''; frmdefectsummary1.qty0010.caption:=''; frmdefectsummary1.qty0011.Caption:=''; //frmdefectsummary1.qty0012.Caption:='';
      frmdefectsummary1.code0001.Caption:=''; frmdefectsummary1.code0002.caption:=''; frmdefectsummary1.code0003.Caption:=''; frmdefectsummary1.code0004.Caption:='';
      frmdefectsummary1.code0005.Caption:=''; frmdefectsummary1.code0006.caption:=''; frmdefectsummary1.code0007.Caption:=''; frmdefectsummary1.code0008.Caption:='';
      frmdefectsummary1.code0009.Caption:=''; frmdefectsummary1.code0010.caption:=''; frmdefectsummary1.code0011.Caption:=''; //frmdefectsummary1.code0012.Caption:='';
      with frmdefectsummary1.query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct fty,ws,sum(qty1) as qty1,sum(qty2) as qty2,sum(qty3) as qty3,sum(qty4) as qty4,sum(qty5) as qty5,sum(qty6) as qty6,sum(qty7) as qty7,sum(qty8) as qty8,'
                    +'sum(qty9) as qty9,sum(qty10) as qty10,sum(qty11) as qty11,sum(oqty) as oqty,sum(tqty) as tqty,sum(qty) as qty from tbl_aql_defectsummary2 where tm=:x1 group by fty,ws order by fty desc,ws';
        params[0].asdatetime:=tm;
        open;
      end;
      with frmdefectsummary1.query5 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct cust,sum(qty1) as qty1,sum(qty2) as qty2,sum(qty3) as qty3,sum(qty4) as qty4,sum(qty5) as qty5,sum(qty6) as qty6,sum(qty7) as qty7,sum(qty8) as qty8,'
                    +'sum(qty9) as qty9,sum(qty10) as qty10,sum(qty11) as qty11,sum(oqty) as oqty,sum(tqty) as tqty,sum(qty) as qty from tbl_aql_defectsummary2 where tm=:x1 group by cust order by cust';
        params[0].asdatetime:=tm;
        open;
      end;
      with frmdefectsummary1.query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_aql_defectsummary2 where tm=:x1 order by ws,pdn,wk';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('wk').isnull then begin
          frmdefectsummary1.cust001.Caption:='Customer code: '+combobox1.text;
          if combobox2.text>'' then frmdefectsummary1.fty001.caption:='Factory / 工廠: '+combobox2.text
          else frmdefectsummary1.fty001.Caption:='China Region / 中國區 ';
          frmdefectsummary1.cust002.caption:='客戶代號 ';
          if rb1.Checked then
            frmdefectsummary1.wk001.Caption:='[Week/週 '+inttostr(spinedit2.value)+' (Date from/日期 從  '+formatdatetime('yyyy/MM/dd',dt3)+'  to/到  '+formatdatetime('yyyy/MM/dd',dt4)+')]'
          else if rb6.checked then
            frmdefectsummary1.wk001.Caption:='[Periodic/定期 (Week from/週 從  '+inttostr(spinedit5.value)+'-'+inttostr(spinedit6.value)+'  to/到  '+inttostr(spinedit7.value)+'-'+inttostr(spinedit8.value)+')]'
          else if rb5.Checked then
            frmdefectsummary1.wk001.Caption:='[Full Inspection Date/審查日期: '+formatdatetime('yyyy/MM/dd',dt1)+']';
          if rb1.Checked then begin
            frmdefectsummary1.ppGroupFooterBand1.Visible:=true;
            frmdefectsummary1.ppGroupFooterBand2.Visible:=true;
            if checkbox1.Checked then frmdefectsummary1.sub001.Caption:=cusn+' - Weekly Off-line Full Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result'
            else if checkbox2.Checked then frmdefectsummary1.sub001.Caption:=cusn+' - Weekly In-line Full Inspection Quality Performance Summary - Gmts'' (Major/Minor) Defects'
            else frmdefectsummary1.sub001.Caption:=cusn+' - Weekly In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
            frmdefectsummary1.sub002.caption:=cusn+' - 每週上線全審查品質表現報告摘要 - 成衣(主要/次要)瑕疵';
            frmdefectsummary1.shape01.Visible:=true;
            frmdefectsummary1.lbl01.Visible:=true;
            frmdefectsummary1.lbl02.Visible:=true;
            frmdefectsummary1.memo01.Visible:=true;
            frmdefectsummary1.style001.Caption:='Cust Style No ';
            frmdefectsummary1.style002.caption:='客戶款號 ';
            frmdefectsummary1.ppGroup1.NewPage:=true;
            s1:='';
            with frmdefectsummary1.query2 do begin
              close;
              params.clear;
              params.createparam(ftdate,'x1',ptinput);
              params.createparam(ftdate,'x2',ptinput);
              commandtext:='select distinct dt,pline,notepad,f_month(dt) as m1,f_dayofmonth(dt) as d1 from tbl_aql_dailynotepad where dt>=:x1 and dt<=:x2 and notepad>'''' ';
              if combobox2.text>'' then commandtext:=commandtext+'and fty='''+combobox2.text+''' ';
              commandtext:=commandtext+'order by dt,pline';
              params[0].asdate:=dt1;
              params[1].asdate:=dt2;
              open;
              first;
              while not eof do begin
                s2:='';
                with frmdefectsummary1.Query3 do begin
                  close;
                  params.clear;
                  params.createparam(ftdate,'x1',ptinput);
                  params.createparam(ftstring,'x2',ptinput);
                  commandtext:='select distinct pline from tbl_aql_dailynotepad where dt=:x1 and notepad=:x2';
                  if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
                  params[0].asdate:=frmdefectsummary1.Query2.fieldbyname('dt').value;
                  params[1].asstring:=frmdefectsummary1.Query2.fieldbyname('notepad').value;
                  open;
                  first;
                  while not eof do begin
                    if s2>'' then s2:=s2+'/'+fieldbyname('pline').value else s2:=fieldbyname('pline').value;
                    application.ProcessMessages;
                    next;
                  end;
                end;
                if s1>'' then s1:=s1+';  '+fieldbyname('m1').asstring+'月'+fieldbyname('d1').asstring+'日, '+s2+' - '+fieldbyname('notepad').value
                else s1:=fieldbyname('m1').asstring+'月'+fieldbyname('d1').asstring+'日, '+s2+' - '+fieldbyname('notepad').value;
                application.ProcessMessages;
                next;
              end;
            end;
            frmdefectsummary1.memo01.Text:=s1;
          end else if rb2.Checked then begin
            if checkbox1.Checked then frmdefectsummary1.sub001.Caption:=cusn+' - Monthly Major Defects (Top 11) on Garments Full Audit Summary'
            else if checkbox2.Checked then frmdefectsummary1.sub001.Caption:=cusn+' - Monthly Major Defects (Top 11) on Garments Full Inspection Summary'
            else frmdefectsummary1.sub001.Caption:=cusn+' - Monthly Major Defects (Top 11) on Garments AQL Summary';
            frmdefectsummary1.shape01.Visible:=false;
            frmdefectsummary1.lbl01.Visible:=false;
            frmdefectsummary1.lbl02.Visible:=false;
            frmdefectsummary1.memo01.Visible:=false;
            frmdefectsummary1.style001.Caption:='No of Style No. ';
            frmdefectsummary1.style002.Caption:='款號數 ';
          end else if rb3.Checked then begin
            if checkbox1.Checked then frmdefectsummary1.sub001.Caption:=cusn+' - Seasonal Major Defects (Top 11) on Garments Full Audit Summary'
            else if checkbox2.Checked then frmdefectsummary1.sub001.Caption:=cusn+' - Seasonal Major Defects (Top 11) on Garments Full Inspection Summary'
            else frmdefectsummary1.sub001.Caption:=cusn+' - Seasonal Major Defects (Top 11) on Garments AQL Summary';
            frmdefectsummary1.shape01.Visible:=false;
            frmdefectsummary1.lbl01.Visible:=false;
            frmdefectsummary1.lbl02.Visible:=false;
            frmdefectsummary1.memo01.Visible:=false;
            frmdefectsummary1.style001.Caption:='No of Style No. ';
            frmdefectsummary1.style002.Caption:='款號數 ';
          end else if rb4.Checked then begin
            if checkbox1.Checked then frmdefectsummary1.sub001.Caption:=cusn+' - Yearly Major Defects (Top 11) on Garments Full Audit Summary'
            else if checkbox2.Checked then frmdefectsummary1.sub001.Caption:=cusn+' - Yearly Major Defects (Top 11) on Garments Full Inspection Summary'
            else frmdefectsummary1.sub001.Caption:=cusn+' - Yearly Major Defects (Top 11) on Garments AQL Summary';
            frmdefectsummary1.shape01.Visible:=false;
            frmdefectsummary1.lbl01.Visible:=false;
            frmdefectsummary1.lbl02.Visible:=false;
            frmdefectsummary1.memo01.Visible:=false;
            frmdefectsummary1.style001.Caption:='No of Style No. ';
            frmdefectsummary1.style002.Caption:='款號數 ';
          end else if rb5.Checked then begin
            frmdefectsummary1.ppGroupFooterBand1.Visible:=false;
            frmdefectsummary1.ppGroupFooterBand2.Visible:=true;
            if checkbox1.Checked then frmdefectsummary1.sub001.Caption:=cusn+' - Daily Off-line Full Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result'
            else if checkbox2.Checked then frmdefectsummary1.sub001.Caption:=cusn+' - Daily In-line Full Inspection Quality Performance Summary - Gmts'' (Major/Minor) Defects'
            else frmdefectsummary1.sub001.Caption:=cusn+' - Daily In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
            frmdefectsummary1.sub002.caption:=cusn+' - 每日上線全審查品質表現報告摘要 - 成衣(主要/次要)瑕疵';
            frmdefectsummary1.shape01.Visible:=true;
            frmdefectsummary1.lbl01.Visible:=true;
            frmdefectsummary1.lbl02.Visible:=true;
            frmdefectsummary1.memo01.Visible:=true;
            frmdefectsummary1.style001.Caption:='Cust Style No ';
            frmdefectsummary1.style002.caption:='客戶款號 ';
            frmdefectsummary1.ppGroup1.NewPage:=false;
            s1:='';
            with frmdefectsummary1.query2 do begin
              close;
              params.clear;
              params.createparam(ftdate,'x1',ptinput);
              commandtext:='select distinct pline,notepad from tbl_aql_dailynotepad where dt=:x1 and notepad>''''';
              if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
              params[0].asdate:=dateedit1.date;
              open;
              first;
              while not eof do begin
                if s1>'' then s1:=s1+';  '+fieldbyname('pline').value+' - '+fieldbyname('notepad').value
                else s1:=fieldbyname('pline').value+' - '+fieldbyname('notepad').value;
                application.ProcessMessages;
                next;
              end;
            end;
            frmdefectsummary1.memo01.Text:=s1;
            s1:='';
            with frmdefectsummary1.query2 do begin
              close;
              params.clear;
              params.createparam(ftdate,'x1',ptinput);
              commandtext:='select distinct tplant,remarks from tbl_aql_dailyaqlnotepad where dt=:x1 and remarks>'''' and aql_type=''Full Inspection''';
              if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
              params[0].asdate:=dateedit1.date;
              open;
              first;
              while not eof do begin
                if s1>'' then s1:=s1+chr(13)+chr(20)+fieldbyname('tplant').value+' - '+fieldbyname('remarks').value
                else s1:=fieldbyname('tplant').value+' - '+fieldbyname('remarks').value;
                application.ProcessMessages;
                next;
              end;
            end;
            frmdefectsummary1.memo01.Lines.add(s1);
          end else if rb6.Checked then begin
            frmdefectsummary1.ppGroupFooterBand1.Visible:=true;
            frmdefectsummary1.ppGroupFooterBand2.Visible:=true;
            if checkbox1.Checked then frmdefectsummary1.sub001.Caption:=cusn+' - Periodic Off-line Full Audit Summary - Gmts'' (Major/Minor) Defects & Audit Result'
            else if checkbox2.Checked then frmdefectsummary1.sub001.Caption:=cusn+' - Periodic In-line Full Inspection Summary - Gmts'' (Major/Minor) Defects'
            else frmdefectsummary1.sub001.Caption:=cusn+' - Periodic In-line AQL Audit Summary - Gmts'' (Major/Minor) Defects & Audit Result';
            frmdefectsummary1.sub002.caption:=cusn+' - 定期上線全審查品質報告表現摘要 - 成衣(主要/次要)瑕疵';
            frmdefectsummary1.shape01.Visible:=true;
            frmdefectsummary1.lbl01.Visible:=true;
            frmdefectsummary1.lbl02.Visible:=true;
            frmdefectsummary1.memo01.Visible:=true;
            frmdefectsummary1.style001.Caption:='Cust Style No ';
            frmdefectsummary1.style002.caption:='客戶款號 ';
            frmdefectsummary1.ppGroup1.NewPage:=true;
            s1:='';
            with frmdefectsummary1.query2 do begin
              close;
              params.clear;
              params.createparam(ftdate,'x1',ptinput);
              params.createparam(ftdate,'x2',ptinput);
              commandtext:='select distinct dt,pline,notepad,f_month(dt) as m1,f_dayofmonth(dt) as d1 from tbl_aql_dailynotepad where dt>=:x1 and dt<=:x2 and notepad>'''' ';
              if combobox2.text>'' then commandtext:=commandtext+'and fty='''+combobox2.text+''' ';
              commandtext:=commandtext+'order by dt,pline';
              params[0].asdate:=dt1;
              params[1].asdate:=dt2;
              open;
              first;
              while not eof do begin
                s2:='';
                with frmdefectsummary1.Query3 do begin
                  close;
                  params.clear;
                  params.createparam(ftdate,'x1',ptinput);
                  params.createparam(ftstring,'x2',ptinput);
                  commandtext:='select distinct pline from tbl_aql_dailynotepad where dt=:x1 and notepad=:x2';
                  if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
                  params[0].asdate:=frmdefectsummary1.Query2.fieldbyname('dt').value;
                  params[1].asstring:=frmdefectsummary1.Query2.fieldbyname('notepad').value;
                  open;
                  first;
                  while not eof do begin
                    if s2>'' then s2:=s2+'/'+fieldbyname('pline').value else s2:=fieldbyname('pline').value;
                    application.ProcessMessages;
                    next;
                  end;
                end;
                if s1>'' then s1:=s1+';  '+fieldbyname('m1').asstring+'月'+fieldbyname('d1').asstring+'日, '+s2+' - '+fieldbyname('notepad').value
                else s1:=fieldbyname('m1').asstring+'月'+fieldbyname('d1').asstring+'日, '+s2+' - '+fieldbyname('notepad').value;
                application.ProcessMessages;
                next;
              end;
            end;
            frmdefectsummary1.memo01.Text:=s1;
          end;
          with frmdefectsummary1.query2 do begin
            close;
            params.clear;
            params.createparam(ftdate,'x1',ptinput);
            params.createparam(ftdate,'x2',ptinput);
            commandtext:='select count(distinct pline) as p1,count(distinct cstyle) as x1,count(distinct pono) as x2,sum(qty) as x3,sum(qty1) as x4,sum(qty+qr) as x5,count(distinct ws) as x6 '
                        +'from tbl_aql_s0 where dt>=:x1 and dt<=:x2';
            if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
            if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
            if checkbox1.Checked then commandtext:=commandtext+' and hun_check<>0' else commandtext:=commandtext+' and hun_check=0';
            if checkbox2.Checked then commandtext:=commandtext+' and endline<>0' else commandtext:=commandtext+' and endline=0';
            if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
            if edit2.text>'' then commandtext:=commandtext+' and cstyle like '''+edit2.text+'%''';
            if edit3.text>'' then commandtext:=commandtext+' and j2_job='''+edit3.text+'''';
            params[0].asdate:=dt1;
            params[1].asdate:=dt2;
            open;
            if not fieldbyname('x1').isnull then begin
              frmdefectsummary1.styles001.Caption:='No of style(s): '+fieldbyname('x1').asstring;
              frmdefectsummary1.styles002.Caption:='款號數 ';
              frmdefectsummary1.line001.Caption:='No of Assembly line(s) / 組裝線數: '+fieldbyname('p1').asstring;
              //frmdefectsummary1.line002.caption:='組裝線數 ';
              frmdefectsummary1.pos001.Caption:='No of PO(s): '+fieldbyname('x2').asstring;
              frmdefectsummary1.pos002.Caption:='PO 數 ';
              frmdefectsummary1.ws001.caption:='No of Ws / 組裝工場數: '+fieldbyname('x6').asstring;
              if (checkbox1.Checked) or (checkbox2.Checked) then begin
                if checkbox1.Checked then begin
                  frmdefectsummary1.sample001.Caption:='Sample Garments (Full Audit): '+fieldbyname('x5').asstring;
                  frmdefectsummary1.shp001.Caption:='Sewn Qty being Audit: '+fieldbyname('x3').asstring;
                end else if checkbox2.Checked then begin
                  frmdefectsummary1.sample001.Caption:='Sample Garments (Full Inspect): '+fieldbyname('x5').asstring;
                  frmdefectsummary1.samp002.Caption:='樣板成衣數量 (全審查) ';
                  frmdefectsummary1.shp001.Caption:='Sewn Qty being Inspect: '+fieldbyname('x3').asstring;
                  frmdefectsummary1.shp002.Caption:='已審查之縫合成品數量 ';
                end;
              end else begin
                frmdefectsummary1.shp001.Caption:='Shipment Qty being Audit: '+fieldbyname('x3').asstring;
                frmdefectsummary1.sample001.Caption:='Sample Garments: '+fieldbyname('x4').asstring;
              end;
            end else begin
              frmdefectsummary1.styles001.Caption:='0';
              frmdefectsummary1.pos001.Caption:='0';
              frmdefectsummary1.shp001.Caption:='0';
              frmdefectsummary1.sample001.Caption:='0';
            end;
          end;
          if edit3.text>'' then frmdefectsummary1.sub002.caption:=frmdefectsummary1.sub002.caption+' ['+edit3.text+']';
          with frmdefectsummary1.query2 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select * from tbl_aql_defectsummary1 where tm=:x1 order by ln';
            params[0].asdatetime:=tm;
            open;
            first;
            while not eof do begin
              if fieldbyname('ln').value=1 then begin
                if not fieldbyname('def1').isnull then frmdefectsummary1.def0001.Caption:=fieldbyname('def1').value;
                if not fieldbyname('def2').isnull then frmdefectsummary1.def0002.Caption:=fieldbyname('def2').value;
                if not fieldbyname('def3').isnull then frmdefectsummary1.def0003.Caption:=fieldbyname('def3').value;
                if not fieldbyname('def4').isnull then frmdefectsummary1.def0004.Caption:=fieldbyname('def4').value;
                if not fieldbyname('def5').isnull then frmdefectsummary1.def0005.Caption:=fieldbyname('def5').value;
                if not fieldbyname('def6').isnull then frmdefectsummary1.def0006.Caption:=fieldbyname('def6').value;
                if not fieldbyname('def7').isnull then frmdefectsummary1.def0007.Caption:=fieldbyname('def7').value;
                if not fieldbyname('def8').isnull then frmdefectsummary1.def0008.Caption:=fieldbyname('def8').value;
                if not fieldbyname('def9').isnull then frmdefectsummary1.def0009.Caption:=fieldbyname('def9').value;
                if not fieldbyname('def10').isnull then frmdefectsummary1.def0010.Caption:=fieldbyname('def10').value;
                if not fieldbyname('def11').isnull then frmdefectsummary1.def0011.Caption:=fieldbyname('def11').value;
                //if not fieldbyname('def12').isnull then frmdefectsummary1.def0012.Caption:=fieldbyname('def12').value;
              end else if fieldbyname('ln').value=2 then begin
                if not fieldbyname('def1').isnull then frmdefectsummary1.qty0001.Caption:=fieldbyname('def1').value;
                if not fieldbyname('def2').isnull then frmdefectsummary1.qty0002.Caption:=fieldbyname('def2').value;
                if not fieldbyname('def3').isnull then frmdefectsummary1.qty0003.Caption:=fieldbyname('def3').value;
                if not fieldbyname('def4').isnull then frmdefectsummary1.qty0004.Caption:=fieldbyname('def4').value;
                if not fieldbyname('def5').isnull then frmdefectsummary1.qty0005.Caption:=fieldbyname('def5').value;
                if not fieldbyname('def6').isnull then frmdefectsummary1.qty0006.Caption:=fieldbyname('def6').value;
                if not fieldbyname('def7').isnull then frmdefectsummary1.qty0007.Caption:=fieldbyname('def7').value;
                if not fieldbyname('def8').isnull then frmdefectsummary1.qty0008.Caption:=fieldbyname('def8').value;
                if not fieldbyname('def9').isnull then frmdefectsummary1.qty0009.Caption:=fieldbyname('def9').value;
                if not fieldbyname('def10').isnull then frmdefectsummary1.qty0010.Caption:=fieldbyname('def10').value;
                if not fieldbyname('def11').isnull then frmdefectsummary1.qty0011.Caption:=fieldbyname('def11').value;
                //if not fieldbyname('def12').isnull then frmdefectsummary1.qty0012.Caption:=fieldbyname('def12').value;
              end else if fieldbyname('ln').value=3 then begin
                if not fieldbyname('def1').isnull then frmdefectsummary1.code0001.Caption:=fieldbyname('def1').value;
                if not fieldbyname('def2').isnull then frmdefectsummary1.code0002.Caption:=fieldbyname('def2').value;
                if not fieldbyname('def3').isnull then frmdefectsummary1.code0003.Caption:=fieldbyname('def3').value;
                if not fieldbyname('def4').isnull then frmdefectsummary1.code0004.Caption:=fieldbyname('def4').value;
                if not fieldbyname('def5').isnull then frmdefectsummary1.code0005.Caption:=fieldbyname('def5').value;
                if not fieldbyname('def6').isnull then frmdefectsummary1.code0006.Caption:=fieldbyname('def6').value;
                if not fieldbyname('def7').isnull then frmdefectsummary1.code0007.Caption:=fieldbyname('def7').value;
                if not fieldbyname('def8').isnull then frmdefectsummary1.code0008.Caption:=fieldbyname('def8').value;
                if not fieldbyname('def9').isnull then frmdefectsummary1.code0009.Caption:=fieldbyname('def9').value;
                if not fieldbyname('def10').isnull then frmdefectsummary1.code0010.Caption:=fieldbyname('def10').value;
                if not fieldbyname('def11').isnull then frmdefectsummary1.code0011.Caption:=fieldbyname('def11').value;
                //if not fieldbyname('def12').isnull then frmdefectsummary1.code0012.Caption:=fieldbyname('def12').value;
              end;
              application.ProcessMessages;
              next;
            end;
          end;
          if cusn='' then frmdefectsummary1.sub001.Caption:=copy(frmdefectsummary1.sub001.Caption,3,500);
          frmdefectsummary1.ppReport3.Print;
        end;
      end;
    end else begin
      if frmdefectsummary2=nil then frmdefectsummary2:=tfrmdefectsummary2.Create(nil);
      frmdefectsummary2.def0001.Caption:=''; frmdefectsummary2.def0002.caption:=''; frmdefectsummary2.def0003.Caption:=''; frmdefectsummary2.def0004.Caption:='';
      frmdefectsummary2.def0005.Caption:=''; frmdefectsummary2.def0006.caption:=''; frmdefectsummary2.def0007.Caption:=''; frmdefectsummary2.def0008.Caption:='';
      frmdefectsummary2.def0009.Caption:=''; frmdefectsummary2.def0010.caption:=''; def0011.Caption:=''; //frmdefectsummary2.def0012.Caption:='';
      frmdefectsummary2.qty0001.Caption:=''; frmdefectsummary2.qty0002.caption:=''; frmdefectsummary2.qty0003.Caption:=''; frmdefectsummary2.qty0004.Caption:='';
      frmdefectsummary2.qty0005.Caption:=''; frmdefectsummary2.qty0006.caption:=''; frmdefectsummary2.qty0007.Caption:=''; frmdefectsummary2.qty0008.Caption:='';
      frmdefectsummary2.qty0009.Caption:=''; frmdefectsummary2.qty0010.caption:=''; frmdefectsummary2.qty0011.Caption:=''; //frmdefectsummary2.qty0012.Caption:='';
      frmdefectsummary2.code0001.Caption:=''; frmdefectsummary2.code0002.caption:=''; frmdefectsummary2.code0003.Caption:=''; frmdefectsummary2.code0004.Caption:='';
      frmdefectsummary2.code0005.Caption:=''; frmdefectsummary2.code0006.caption:=''; frmdefectsummary2.code0007.Caption:=''; frmdefectsummary2.code0008.Caption:='';
      frmdefectsummary2.code0009.Caption:=''; frmdefectsummary2.code0010.caption:=''; frmdefectsummary2.code0011.Caption:='';// frmdefectsummary2.code0012.Caption:='';
      with frmdefectsummary2.query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct fty,ws,sum(qty1) as qty1,sum(qty2) as qty2,sum(qty3) as qty3,sum(qty4) as qty4,sum(qty5) as qty5,sum(qty6) as qty6,sum(qty7) as qty7,sum(qty8) as qty8,'
                    +'sum(qty9) as qty9,sum(qty10) as qty10,sum(qty11) as qty11,sum(oqty) as oqty,sum(tqty) as tqty,sum(qty) as qty from tbl_aql_defectsummary2 where tm=:x1 group by fty,ws order by fty desc,ws';
        params[0].asdatetime:=tm;
        open;
      end;
      with frmdefectsummary2.query5 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select distinct cust,sum(qty1) as qty1,sum(qty2) as qty2,sum(qty3) as qty3,sum(qty4) as qty4,sum(qty5) as qty5,sum(qty6) as qty6,sum(qty7) as qty7,sum(qty8) as qty8,'
                    +'sum(qty9) as qty9,sum(qty10) as qty10,sum(qty11) as qty11,sum(oqty) as oqty,sum(tqty) as tqty,sum(qty) as qty from tbl_aql_defectsummary2 where tm=:x1 group by cust order by cust';
        params[0].asdatetime:=tm;
        open;
      end;
      with frmdefectsummary2.query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_aql_defectsummary2 where tm=:x1 order by fty desc,ws,pdn,wk';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('wk').isnull then begin
          if combobox2.text>'' then frmdefectsummary2.fty001.caption:='Factory / 工廠: '+combobox2.text
          else frmdefectsummary2.fty001.Caption:='China Region / 中國區 ';
          if rb1.Checked then
            frmdefectsummary2.wk001.Caption:='[Week/週 '+inttostr(spinedit2.value)+' (Date from/日期 從  '+formatdatetime('yyyy/MM/dd',dt3)+'  to/到  '+formatdatetime('yyyy/MM/dd',dt4)+')]'
          else if rb6.checked then
            frmdefectsummary2.wk001.Caption:='[Periodic/定期 (Week from/週 從  '+inttostr(spinedit5.value)+'-'+inttostr(spinedit6.value)+'  to/到  '+inttostr(spinedit7.value)+'-'+inttostr(spinedit8.value)+')]'
          else if rb5.Checked then
            frmdefectsummary2.wk001.Caption:='[Full Inspection Date/全審查日期: '+formatdatetime('yyyy/MM/dd',dt1)+']';
          //frmdefectsummary2.wk001.Caption:='[Week/週 '+inttostr(spinedit2.value)+' (Date from/日期 從  '+formatdatetime('yyyy/MM/dd',dt3)+'  to/到  '+formatdatetime('yyyy/MM/dd',dt4)+')]';
          if rb1.Checked then begin
            frmdefectsummary2.ppGroupFooterBand1.Visible:=true;
            frmdefectsummary2.ppGroupFooterBand2.Visible:=true;
            if checkbox1.Checked then frmdefectsummary2.sub001.Caption:=cusn+' - Weekly Off-line Full Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result'
            else if checkbox2.Checked then frmdefectsummary2.sub001.Caption:=cusn+' - Weekly In-line Full Inspection Quality Performance Summary - Gmts'' (Major/Minor) Defects'
            else frmdefectsummary2.sub001.Caption:=cusn+' - Weekly In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
            frmdefectsummary2.sub002.caption:='每週上線全審查品質表現報告摘要 - 成衣(主要/次要)瑕疵';
            frmdefectsummary2.shape01.Visible:=true;
            frmdefectsummary2.lbl01.Visible:=true;
            frmdefectsummary2.lbl02.Visible:=true;
            frmdefectsummary2.memo01.Visible:=true;
            frmdefectsummary2.style001.Caption:='Cust Style No ';
            frmdefectsummary2.style002.caption:='客戶款號 ';
            frmdefectsummary2.ppGroup1.NewPage:=true;
            s1:='';
            with frmdefectsummary2.query2 do begin
              close;
              params.clear;
              params.createparam(ftdate,'x1',ptinput);
              params.createparam(ftdate,'x2',ptinput);
              commandtext:='select distinct dt,notepad,f_month(dt) as m1,f_dayofmonth(dt) as d1 from tbl_aql_dailynotepad where dt>=:x1 and dt<=:x2 and notepad>'''' ';
              if combobox2.text>'' then commandtext:=commandtext+'and fty='''+combobox2.text+''' ';
              commandtext:=commandtext+'order by dt';
              params[0].asdate:=dt1;
              params[1].asdate:=dt2;
              open;
              first;
              while not eof do begin
                s2:='';
                with frmdefectsummary2.Query3 do begin
                  close;
                  params.clear;
                  params.createparam(ftdate,'x1',ptinput);
                  params.createparam(ftstring,'x2',ptinput);
                  commandtext:='select distinct pline from tbl_aql_dailynotepad where dt=:x1 and notepad=:x2';
                  if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
                  params[0].asdate:=frmdefectsummary2.Query2.fieldbyname('dt').value;
                  params[1].asstring:=frmdefectsummary2.Query2.fieldbyname('notepad').value;
                  open;
                  first;
                  while not eof do begin
                    if s2>'' then s2:=s2+'/'+fieldbyname('pline').value else s2:=fieldbyname('pline').value;
                    application.ProcessMessages;
                    next;
                  end;
                end;
                if s1>'' then s1:=s1+';  '+fieldbyname('m1').asstring+'月'+fieldbyname('d1').asstring+'日, '+s2+' - '+fieldbyname('notepad').value
                else s1:=fieldbyname('m1').asstring+'月'+fieldbyname('d1').asstring+'日, '+s2+' - '+fieldbyname('notepad').value;
                application.ProcessMessages;
                next;
              end;
            end;
            frmdefectsummary2.memo01.Text:=s1;
          end else if rb2.Checked then begin
            if checkbox1.Checked then frmdefectsummary2.sub001.Caption:=cusn+' - Monthly Major Defects (Top 11) on Garments Full Audit Summary'
            else if checkbox2.Checked then frmdefectsummary2.sub001.Caption:=cusn+' - Monthly Major Defects (Top 11) on Garments Full Inspection Summary'
            else frmdefectsummary2.sub001.Caption:=cusn+' - Monthly Major Defects (Top 11) on Garments AQL Summary';
            frmdefectsummary2.shape01.Visible:=false;
            frmdefectsummary2.lbl01.Visible:=false;
            frmdefectsummary2.lbl02.Visible:=false;
            frmdefectsummary2.memo01.Visible:=false;
            frmdefectsummary2.style001.Caption:='No of Style No. ';
            frmdefectsummary2.style002.Caption:='款號數 ';
          end else if rb3.Checked then begin
            if checkbox1.Checked then frmdefectsummary2.sub001.Caption:=cusn+' - Seasonal Major Defects (Top 11) on Garments Full Audit Summary'
            else if checkbox2.Checked then frmdefectsummary2.sub001.Caption:=cusn+' - Seasonal Major Defects (Top 11) on Garments Full Inspection Summary'
            else frmdefectsummary2.sub001.Caption:=cusn+' - Seasonal Major Defects (Top 11) on Garments AQL Summary';
            frmdefectsummary2.shape01.Visible:=false;
            frmdefectsummary2.lbl01.Visible:=false;
            frmdefectsummary2.lbl02.Visible:=false;
            frmdefectsummary2.memo01.Visible:=false;
            frmdefectsummary2.style001.Caption:='No of Style No. ';
            frmdefectsummary2.style002.Caption:='款號數 ';
          end else if rb4.Checked then begin
            if checkbox1.Checked then frmdefectsummary2.sub001.Caption:=cusn+' - Yearly Major Defects (Top 11) on Garments Full Audit Summary'
            else if checkbox2.Checked then frmdefectsummary2.sub001.Caption:=cusn+' - Yearly Major Defects (Top 11) on Garments Full Inspection Summary'
            else frmdefectsummary2.sub001.Caption:=cusn+' - Yearly Major Defects (Top 11) on Garments AQL Summary';
            frmdefectsummary2.shape01.Visible:=false;
            frmdefectsummary2.lbl01.Visible:=false;
            frmdefectsummary2.lbl02.Visible:=false;
            frmdefectsummary2.memo01.Visible:=false;
            frmdefectsummary2.style001.Caption:='No of Style No. ';
            frmdefectsummary2.style002.Caption:='款號數 ';
          end else if rb5.Checked then begin
            frmdefectsummary2.ppGroupFooterBand1.Visible:=true;
            frmdefectsummary2.ppGroupFooterBand2.Visible:=false;
            if checkbox1.Checked then frmdefectsummary2.sub001.Caption:=cusn+' - Daily Off-line Full Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result'
            else if checkbox2.Checked then frmdefectsummary2.sub001.Caption:=cusn+' - Daily In-line Full Inspection Quality Performance Summary - Gmts'' (Major/Minor) Defects'
            else frmdefectsummary2.sub001.Caption:=cusn+' - Daily In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
            frmdefectsummary2.sub002.caption:='每日上線全審查品質表現報告摘要 - 成衣(主要/次要)瑕疵';
            frmdefectsummary2.shape01.Visible:=true;
            frmdefectsummary2.lbl01.Visible:=true;
            frmdefectsummary2.lbl02.Visible:=true;
            frmdefectsummary2.memo01.Visible:=true;
            frmdefectsummary2.style001.Caption:='Cust Style No ';
            frmdefectsummary2.style002.caption:='客戶款號 ';
            frmdefectsummary2.ppGroup1.NewPage:=false;
            s1:='';
            with frmdefectsummary2.query2 do begin
              close;
              params.clear;
              params.createparam(ftdate,'x1',ptinput);
              commandtext:='select distinct pline,notepad from tbl_aql_dailynotepad where dt=:x1 and notepad>''''';
              if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
              params[0].asdate:=dateedit1.date;
              open;
              first;
              while not eof do begin
                if s1>'' then s1:=s1+';  '+fieldbyname('pline').value+' - '+fieldbyname('notepad').value
                else s1:=fieldbyname('pline').value+' - '+fieldbyname('notepad').value;
                application.ProcessMessages;
                next;
              end;
            end;
            frmdefectsummary2.memo01.Text:=s1;
            s1:='';
            with frmdefectsummary2.query2 do begin
              close;
              params.clear;
              params.createparam(ftdate,'x1',ptinput);
              commandtext:='select distinct tplant,remarks from tbl_aql_dailyaqlnotepad where dt=:x1 and remarks>'''' and aql_type=''Full Inspection''';
              if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
              params[0].asdate:=dateedit1.date;
              open;
              first;
              while not eof do begin
                if s1>'' then s1:=s1+chr(13)+chr(20)+fieldbyname('tplant').value+' - '+fieldbyname('remarks').value
                else s1:=fieldbyname('tplant').value+' - '+fieldbyname('remarks').value;
                application.ProcessMessages;
                next;
              end;
            end;
            frmdefectsummary2.memo01.Lines.add(s1);
          end else if rb6.Checked then begin
            frmdefectsummary2.ppGroupFooterBand1.Visible:=true;
            frmdefectsummary2.ppGroupFooterBand2.Visible:=true;
            if checkbox1.Checked then frmdefectsummary2.sub001.Caption:=cusn+' - Periodic Major Defects (Top 11) on Garments Off-line Full Audit Summary'
            else if checkbox2.Checked then frmdefectsummary2.sub001.Caption:=cusn+' - Periodic Major Defects (Top 11) on Garments In-line Full Inspection Summary'
            else frmdefectsummary2.sub001.Caption:=cusn+' - Periodic Major Defects (Top 11) on Garments In-line AQL Audit Summary';
            frmdefectsummary2.sub002.caption:='定期成衣上線全審查報告主要品質瑕疵摘要';
            frmdefectsummary2.shape01.Visible:=true;
            frmdefectsummary2.lbl01.Visible:=true;
            frmdefectsummary2.lbl02.Visible:=true;
            frmdefectsummary2.memo01.Visible:=true;
            frmdefectsummary2.style001.Caption:='Cust Style No ';
            frmdefectsummary2.style002.caption:='客戶款號 ';
            frmdefectsummary2.ppGroup1.NewPage:=true;
            s1:='';
            with frmdefectsummary2.query2 do begin
              close;
              params.clear;
              params.createparam(ftdate,'x1',ptinput);
              params.createparam(ftdate,'x2',ptinput);
              commandtext:='select distinct dt,notepad,f_month(dt) as m1,f_dayofmonth(dt) as d1 from tbl_aql_dailynotepad where dt>=:x1 and dt<=:x2 and notepad>'''' ';
              if combobox2.text>'' then commandtext:=commandtext+'and fty='''+combobox2.text+''' ';
              commandtext:=commandtext+'order by dt';
              params[0].asdate:=dt1;
              params[1].asdate:=dt2;
              open;
              first;
              while not eof do begin
                s2:='';
                with frmdefectsummary2.Query3 do begin
                  close;
                  params.clear;
                  params.createparam(ftdate,'x1',ptinput);
                  params.createparam(ftstring,'x2',ptinput);
                  commandtext:='select distinct pline from tbl_aql_dailynotepad where dt=:x1 and notepad=:x2';
                  if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
                  params[0].asdate:=frmdefectsummary2.Query2.fieldbyname('dt').value;
                  params[1].asstring:=frmdefectsummary2.Query2.fieldbyname('notepad').value;
                  open;
                  first;
                  while not eof do begin
                    if s2>'' then s2:=s2+'/'+fieldbyname('pline').value else s2:=fieldbyname('pline').value;
                    application.ProcessMessages;
                    next;
                  end;
                end;
                if s1>'' then s1:=s1+';  '+fieldbyname('m1').asstring+'月'+fieldbyname('d1').asstring+'日, '+s2+' - '+fieldbyname('notepad').value
                else s1:=fieldbyname('m1').asstring+'月'+fieldbyname('d1').asstring+'日, '+s2+' - '+fieldbyname('notepad').value;
                application.ProcessMessages;
                next;
              end;
            end;
            frmdefectsummary2.memo01.Text:=s1;
          end;
          with frmdefectsummary2.query2 do begin
            close;
            params.clear;
            params.createparam(ftdate,'x1',ptinput);
            params.createparam(ftdate,'x2',ptinput);
            commandtext:='select count(distinct cust) as c1,count(distinct pline) as p1,count(distinct cstyle) as x1,count(distinct pono) as x2,sum(qty) as x3,sum(qty1) as x4,sum(qty+qr) as x5,count(distinct ws) as x6 '
                        +'from tbl_aql_s0 where dt>=:x1 and dt<=:x2';
            if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
            if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
            if checkbox1.Checked then commandtext:=commandtext+' and hun_check<>0' else commandtext:=commandtext+' and hun_check=0';
            if checkbox2.Checked then commandtext:=commandtext+' and endline<>0' else commandtext:=commandtext+' and endline=0';
            if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
            if edit2.text>'' then commandtext:=commandtext+' and cstyle like '''+edit2.text+'%''';
            if edit3.text>'' then commandtext:=commandtext+' and j2_job='''+edit3.text+'''';
            params[0].asdate:=dt1;
            params[1].asdate:=dt2;
            open;
            if not fieldbyname('x1').isnull then begin
              frmdefectsummary2.cust001.Caption:='No of Customer(s): '+fieldbyname('c1').asstring;
              frmdefectsummary2.cust002.caption:='客戶數 ';
              frmdefectsummary2.line001.Caption:='No of Assembly line(s) / 組裝線數: '+fieldbyname('p1').asstring;
              //frmdefectsummary2.line002.caption:='組裝線數 ';
              frmdefectsummary2.styles001.Caption:='No of style(s): '+fieldbyname('x1').asstring;
              frmdefectsummary2.styles002.Caption:='款號數 ';
              frmdefectsummary2.pos001.Caption:='No of PO(s): '+fieldbyname('x2').asstring;
              frmdefectsummary2.pos002.Caption:='PO 數 ';
              frmdefectsummary2.ws001.caption:='No of Ws / 組裝工場數: '+fieldbyname('x6').asstring;
              if (checkbox1.Checked) or (checkbox2.Checked) then begin
                if checkbox1.Checked then begin
                  frmdefectsummary2.sample001.Caption:='Sample Garments (Full Audit): '+fieldbyname('x5').asstring;
                  frmdefectsummary2.shp001.Caption:='Sewn Qty being Audit: '+fieldbyname('x3').asstring;
                end else if checkbox2.Checked then begin
                  frmdefectsummary2.sample001.Caption:='Sample Garments (Full Inspect): '+fieldbyname('x5').asstring;
                  frmdefectsummary2.samp002.Caption:='樣板成衣數量 (全審查) ';
                  frmdefectsummary2.shp001.Caption:='Sewn Qty being Inspect: '+fieldbyname('x3').asstring;
                  frmdefectsummary2.shp002.Caption:='已審查之縫合成品數量 ';
                end;
              end else begin
                frmdefectsummary2.shp001.Caption:='Shipment Qty being Audit: '+fieldbyname('x3').asstring;
                frmdefectsummary2.sample001.Caption:='Sample Garments: '+fieldbyname('x4').asstring;
              end;
            end else begin
              frmdefectsummary2.styles001.Caption:='0';
              frmdefectsummary2.pos001.Caption:='0';
              frmdefectsummary2.shp001.Caption:='0';
              frmdefectsummary2.sample001.Caption:='0';
            end;
          end;
          if edit3.text>'' then frmdefectsummary2.sub002.caption:=frmdefectsummary2.sub002.caption+' ['+edit3.text+']';
          with frmdefectsummary2.query2 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select * from tbl_aql_defectsummary1 where tm=:x1 order by ln';
            params[0].asdatetime:=tm;
            open;
            first;
            while not eof do begin
              if fieldbyname('ln').value=1 then begin
                if not fieldbyname('def1').isnull then frmdefectsummary2.def0001.Caption:=fieldbyname('def1').value;
                if not fieldbyname('def2').isnull then frmdefectsummary2.def0002.Caption:=fieldbyname('def2').value;
                if not fieldbyname('def3').isnull then frmdefectsummary2.def0003.Caption:=fieldbyname('def3').value;
                if not fieldbyname('def4').isnull then frmdefectsummary2.def0004.Caption:=fieldbyname('def4').value;
                if not fieldbyname('def5').isnull then frmdefectsummary2.def0005.Caption:=fieldbyname('def5').value;
                if not fieldbyname('def6').isnull then frmdefectsummary2.def0006.Caption:=fieldbyname('def6').value;
                if not fieldbyname('def7').isnull then frmdefectsummary2.def0007.Caption:=fieldbyname('def7').value;
                if not fieldbyname('def8').isnull then frmdefectsummary2.def0008.Caption:=fieldbyname('def8').value;
                if not fieldbyname('def9').isnull then frmdefectsummary2.def0009.Caption:=fieldbyname('def9').value;
                if not fieldbyname('def10').isnull then frmdefectsummary2.def0010.Caption:=fieldbyname('def10').value;
                if not fieldbyname('def11').isnull then frmdefectsummary2.def0011.Caption:=fieldbyname('def11').value;
                //if not fieldbyname('def12').isnull then frmdefectsummary2.def0012.Caption:=fieldbyname('def12').value;
              end else if fieldbyname('ln').value=2 then begin
                if not fieldbyname('def1').isnull then frmdefectsummary2.qty0001.Caption:=fieldbyname('def1').value;
                if not fieldbyname('def2').isnull then frmdefectsummary2.qty0002.Caption:=fieldbyname('def2').value;
                if not fieldbyname('def3').isnull then frmdefectsummary2.qty0003.Caption:=fieldbyname('def3').value;
                if not fieldbyname('def4').isnull then frmdefectsummary2.qty0004.Caption:=fieldbyname('def4').value;
                if not fieldbyname('def5').isnull then frmdefectsummary2.qty0005.Caption:=fieldbyname('def5').value;
                if not fieldbyname('def6').isnull then frmdefectsummary2.qty0006.Caption:=fieldbyname('def6').value;
                if not fieldbyname('def7').isnull then frmdefectsummary2.qty0007.Caption:=fieldbyname('def7').value;
                if not fieldbyname('def8').isnull then frmdefectsummary2.qty0008.Caption:=fieldbyname('def8').value;
                if not fieldbyname('def9').isnull then frmdefectsummary2.qty0009.Caption:=fieldbyname('def9').value;
                if not fieldbyname('def10').isnull then frmdefectsummary2.qty0010.Caption:=fieldbyname('def10').value;
                if not fieldbyname('def11').isnull then frmdefectsummary2.qty0011.Caption:=fieldbyname('def11').value;
                //if not fieldbyname('def12').isnull then frmdefectsummary2.qty0012.Caption:=fieldbyname('def12').value;
              end else if fieldbyname('ln').value=3 then begin
                if not fieldbyname('def1').isnull then frmdefectsummary2.code0001.Caption:=fieldbyname('def1').value;
                if not fieldbyname('def2').isnull then frmdefectsummary2.code0002.Caption:=fieldbyname('def2').value;
                if not fieldbyname('def3').isnull then frmdefectsummary2.code0003.Caption:=fieldbyname('def3').value;
                if not fieldbyname('def4').isnull then frmdefectsummary2.code0004.Caption:=fieldbyname('def4').value;
                if not fieldbyname('def5').isnull then frmdefectsummary2.code0005.Caption:=fieldbyname('def5').value;
                if not fieldbyname('def6').isnull then frmdefectsummary2.code0006.Caption:=fieldbyname('def6').value;
                if not fieldbyname('def7').isnull then frmdefectsummary2.code0007.Caption:=fieldbyname('def7').value;
                if not fieldbyname('def8').isnull then frmdefectsummary2.code0008.Caption:=fieldbyname('def8').value;
                if not fieldbyname('def9').isnull then frmdefectsummary2.code0009.Caption:=fieldbyname('def9').value;
                if not fieldbyname('def10').isnull then frmdefectsummary2.code0010.Caption:=fieldbyname('def10').value;
                if not fieldbyname('def11').isnull then frmdefectsummary2.code0011.Caption:=fieldbyname('def11').value;
                //if not fieldbyname('def12').isnull then frmdefectsummary2.code0012.Caption:=fieldbyname('def12').value;
              end;
              application.ProcessMessages;
              next;
            end;
          end;
          if cusn='' then frmdefectsummary2.sub001.Caption:=copy(frmdefectsummary2.sub001.Caption,3,500);
          frmdefectsummary2.ppReport3.Print;
        end;
      end;
    end;
  end else begin
    code0001.Caption:=''; code0002.caption:=''; code0003.Caption:=''; code0004.Caption:='';
    code0005.Caption:=''; code0006.caption:=''; code0007.Caption:=''; code0008.Caption:='';
    code0009.Caption:=''; code0010.caption:=''; code0011.Caption:=''; //code0012.Caption:='';
    def0001.Caption:=''; def0002.caption:=''; def0003.Caption:=''; def0004.Caption:='';
    def0005.Caption:=''; def0006.caption:=''; def0007.Caption:=''; def0008.Caption:='';
    def0009.Caption:=''; def0010.caption:=''; def0011.Caption:=''; //def0012.Caption:='';
    qty0001.Caption:=''; qty0002.caption:=''; qty0003.Caption:=''; qty0004.Caption:='';
    qty0005.Caption:=''; qty0006.caption:=''; qty0007.Caption:=''; qty0008.Caption:='';
    qty0009.Caption:=''; qty0010.caption:=''; qty0011.Caption:=''; //qty0012.Caption:='';
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      params.createparam(ftboolean,'x6',ptinput);
      params.createparam(ftboolean,'x7',ptinput);
      params.createparam(ftdatetime,'x8',ptinput);
      if (checkbox3.Checked) or (checkbox4.Checked) then
      params.createparam(ftstring,'x9',ptinput);
      if edit2.text>'' then params.createparam(ftstring,'x10',ptinput);
      if edit2.text>'' then begin
        if checkbox4.Checked then
        commandtext:='execute procedure sp_aql_defectsummary_new_daily1_style(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10)'
        else commandtext:='execute procedure sp_aql_defectsummary_new_style(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x10)';
      end else begin
        if checkbox4.Checked then
        commandtext:='execute procedure sp_aql_defectsummary_new_daily1(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9)'
        else commandtext:='execute procedure sp_aql_defectsummary_new(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
      end;
      params[0].asstring:=combobox2.text;
      params[1].asstring:=combobox1.text;
      //if rb1.checked then
      params[2].AsString:='0';
      //else params[2].asstring:='1';
      params[3].asdate:=dt1;
      params[4].asdate:=dt2;
      params[5].asboolean:=checkbox1.Checked;
      if checkbox3.checked then
      params[6].asboolean:=checkbox3.Checked
      else if checkbox4.Checked then
      params[6].asboolean:=checkbox4.Checked
      else params[6].asboolean:=false;
      params[7].asdatetime:=tm;
      if checkbox3.Checked then
      params[8].asstring:=combobox4.text
      else if checkbox4.Checked then
      params[8].AsString:='1st - 5th Audit';
      if edit2.text>'' then begin
        if (checkbox3.checked) or (checkbox4.Checked) then
        params[9].asstring:=edit2.text
        else params[8].asstring:=edit2.text;
      end;
      execute;
    end;
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct cust,sum(qty1) as qty1,sum(qty2) as qty2,sum(qty3) as qty3,sum(qty4) as qty4,sum(qty5) as qty5,sum(qty6) as qty6,sum(qty7) as qty7,sum(qty8) as qty8,'
                  +'sum(qty9) as qty9,sum(qty10) as qty10,sum(qty11) as qty11,sum(qty12) as qty12,sum(tqty) as tqty,sum(qty) as qty,sum(oqty) as oqty from tbl_aql_defectsummary2 where tm=:x1 group by cust order by cust';
      params[0].asdatetime:=tm;
      open;
    end;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct ws,sum(qty1) as qty1,sum(qty2) as qty2,sum(qty3) as qty3,sum(qty4) as qty4,sum(qty5) as qty5,sum(qty6) as qty6,sum(qty7) as qty7,sum(qty8) as qty8,'
                  +'sum(qty9) as qty9,sum(qty10) as qty10,sum(qty11) as qty11,sum(qty12) as qty12,sum(tqty) as tqty,sum(qty) as qty,sum(oqty) as oqty from tbl_aql_defectsummary2 where tm=:x1 group by ws order by ws';
      params[0].asdatetime:=tm;
      open;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_aql_defectsummary2 where tm=:x1 order by ws,pdn,wk';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('wk').isnull then begin
        cust001.Caption:='Customer: '+combobox1.text;
        if combobox2.text>'' then
        line001.Caption:='Factory: '+combobox2.text
        else line001.Caption:='China Region ';
        ppshape5.Visible:=false;
        ppshape6.Visible:=false;
        ppshape13.Visible:=false;
        s001.Visible:=false;
        s002.Visible:=false;
        s003.Visible:=false;
        r001.Visible:=false;
        if rb1.Checked then begin
          if cusn>'' then begin
            if checkbox1.Checked then sub001.Caption:=cusn+' - Weekly Off-line Full Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects'
            else if checkbox3.Checked then sub001.Caption:=cusn+' - Weekly Off-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result'
            else if checkbox4.Checked then sub001.Caption:=cusn+' - Weekly In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result'
            else sub001.Caption:=cusn+' - Weekly In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
          end else begin
            if checkbox1.Checked then sub001.Caption:='Weekly Off-line Full Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects'
            else if checkbox3.Checked then sub001.Caption:='Weekly Off-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result'
            else if checkbox4.Checked then sub001.Caption:='Weekly In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result'
            else sub001.Caption:='Weekly In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
          end;
          shape01.Visible:=true;
          lbl01.Visible:=true;
          lbl02.Visible:=true;
          memo01.Visible:=true;
          style001.Caption:='Cust Style No.';
          dt001.Caption:='[Week '+inttostr(spinedit2.value)+' (Date from  '+formatdatetime('yyyy/MM/dd',dt1)+'  to  '+formatdatetime('yyyy/MM/dd',dt2)+')]';

          if (checkbox3.checked) or (checkbox4.Checked) then begin
            pplabel84.Caption:='Assembly';
            pplabel13.Caption:='Line';
          end else begin
            pplabel84.Caption:='PDN #';
            pplabel13.Caption:='';
          end;
        end else if rb2.Checked then begin
          if checkbox1.Checked then sub001.Caption:=cusn+' - Monthly Major Defects (Top 11) on Garments Off-line Full Audit Summary'
          else if checkbox3.Checked then sub001.Caption:=cusn+' - Monthly Major Defects (Top 11) on Garments Off-line AQL Audit Summary'
          else if checkbox4.Checked then sub001.Caption:=cusn+' - Monthly Major Defects (Top 11) on Garments In-line AQL Audit Summary'
          else sub001.Caption:=cusn+' - Monthly Major Defects (Top 11) on Garments AQL Summary';
          shape01.Visible:=false;
          lbl01.Visible:=false;
          lbl02.Visible:=false;
          memo01.Visible:=false;
          style001.Caption:='# of Style No.';
        end else if rb3.Checked then begin
          if checkbox1.Checked then sub001.Caption:=cusn+' - Seasonal Major Defects (Top 12) on Garments Full Audit Summary'
          else if checkbox2.Checked then sub001.Caption:=cusn+' - Seasonal Major Defects (Top 12) on Garments Full Inspection Summary'
          else sub001.Caption:=cusn+' - Seasonal Major Defects (Top 12) on Garments AQL Summary';
          shape01.Visible:=false;
          lbl01.Visible:=false;
          lbl02.Visible:=false;
          memo01.Visible:=false;
          style001.Caption:='# of Style No.';
        end else if rb4.Checked then begin
          if checkbox1.Checked then sub001.Caption:=cusn+' - Yearly Major Defects (Top 12) on Garments Full Audit Summary'
          else if checkbox2.Checked then sub001.Caption:=cusn+' - Yearly Major Defects (Top 12) on Garments Full Inspection Summary'
          else sub001.Caption:=cusn+' - Yearly Major Defects (Top 12) on Garments AQL Summary';
          shape01.Visible:=false;
          lbl01.Visible:=false;
          lbl02.Visible:=false;
          memo01.Visible:=false;
          style001.Caption:='# of Style No.';
        end else if rb5.Checked then begin
          if (checkbox3.Checked) or (checkbox4.Checked) then begin
            if checkbox3.checked then begin
              if cusn>'' then
              sub001.Caption:=cusn+' - Daily Major Defects (Top 11) on Garments Off-line AQL Audit Quality Performance Summary'
              else sub001.Caption:='Daily Major Defects (Top 11) on Garments Off-line AQL Audit Quality Performance Summary';
            end else if checkbox4.checked then begin
              if cusn>'' then
              sub001.Caption:=cusn+' - Daily Major Defects (Top 11) on Garments In-line AQL Audit Quality Performance Summary'
              else sub001.Caption:='Daily Major Defects (Top 11) on Garments In-line AQL Audit Quality Performance Summary';
            end;
            shape01.Visible:=true;
            lbl01.Visible:=true;
            lbl02.Visible:=true;
            memo01.Visible:=true;
            style001.Caption:='Cust Style No.';
            dt001.Caption:='[Audit date: '+formatdatetime('yyyy-MM-dd',dateedit1.date)+' ]';

            pplabel84.Caption:='Assembly';
            pplabel13.Caption:='Line';
            ppshape5.Visible:=true;
            ppshape6.Visible:=true;
            ppshape13.Visible:=true;
            s001.Visible:=true;
            s002.Visible:=true;
            s003.Visible:=true;
            r001.Visible:=true;
            s1:='';
            with query2 do begin
              close;
              params.clear;
              params.createparam(ftdate,'x1',ptinput);
              commandtext:='select remarks from tbl_aql_dailyaqlnotepad where dt=:x1 and remarks>'''' and ws='''+query1.fieldbyname('ws').value+'''';
              if combobox2.text>'' then commandtext:=commandtext+' and tplant='''+combobox2.text+'''';
              if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
              if checkbox3.Checked then commandtext:=commandtext+' and aql_type=''Off-line AQL'''
              else if checkbox4.Checked then commandtext:=commandtext+' and aql_type=''In-line AQL''';
              params[0].asdate:=dateedit1.date;
              open;
              first;
              while not eof do begin
                if s1>'' then s1:=s1+';  '+fieldbyname('remarks').value
                else s1:=fieldbyname('remarks').value;
                application.ProcessMessages;
                next;
              end;
            end;
            memo01.Text:=s1;
          end else begin
            dt001.caption:='';
            pplabel84.Caption:='PDN #';
            pplabel13.Caption:='';
          end;
        end else if rb6.Checked then begin
          if cusn>'' then begin
            if checkbox1.Checked then sub001.Caption:=cusn+' - Periodic Off-line Full Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects'
            else if checkbox3.Checked then sub001.Caption:=cusn+' - Periodic Off-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result'
            else if checkbox4.Checked then sub001.Caption:=cusn+' - Periodic In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result'
            else sub001.Caption:=cusn+' - Periodic In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
          end else begin
            if checkbox1.Checked then sub001.Caption:='Periodic Off-line Full Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects'
            else if checkbox3.Checked then sub001.Caption:='Periodic Off-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result'
            else if checkbox4.Checked then sub001.Caption:='PeriodicIn-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result'
            else sub001.Caption:='Periodic In-line AQL Audit Quality Performance Summary - Gmts'' (Major/Minor) Defects & Audit Result';
          end;
          shape01.Visible:=true;
          lbl01.Visible:=true;
          lbl02.Visible:=true;
          memo01.Visible:=true;
          style001.Caption:='Cust Style No.';
          dt001.Caption:='[Periodic (Week from  '+inttostr(spinedit5.value)+'-'+inttostr(spinedit6.value)+'  to  '+inttostr(spinedit7.value)+'-'+inttostr(spinedit8.value)+')]';

          if (checkbox3.checked) or (checkbox4.Checked) then begin
            pplabel84.Caption:='Assembly';
            pplabel13.Caption:='Line';
          end else begin
            pplabel84.Caption:='PDN #';
            pplabel13.Caption:='';
          end;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftdate,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          commandtext:='select count(distinct cstyle) as x1,count(distinct pono) as x2,sum(qty) as x3,sum(qty1) as x4,sum(qty+qr) as x5,count(*) as x6 '
                      +'from tbl_aql_s0 where dt>=:x1 and dt<=:x2';
          if checkbox1.Checked then commandtext:=commandtext+' and hun_check<>0' else commandtext:=commandtext+' and hun_check=0';
          if checkbox2.Checked then commandtext:=commandtext+' and endline<>0' else commandtext:=commandtext+' and endline=0';
          if checkbox3.Checked then commandtext:=commandtext+' and dailyaql<>0' else commandtext:=commandtext+' and dailyaql=0';
          if checkbox4.Checked then commandtext:=commandtext+' and dailyaql1<>0' else commandtext:=commandtext+' and dailyaql1=0';
          if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
          if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
          if checkbox3.checked then begin
            if combobox4.text='1st Audit' then commandtext:=commandtext+' and audit1=1'
            else if combobox4.text='2nd Audit' then commandtext:=commandtext+' and audit2=1'
            else if combobox4.text='3rd Audit' then commandtext:=commandtext+' and audit3=1'
            else if combobox4.text='4th Audit' then commandtext:=commandtext+' and audit4=1'
            else if combobox4.text='5th Audit' then commandtext:=commandtext+' and audit5=1';
          end;
          if edit2.text>'' then commandtext:=commandtext+' and cstyle like '''+edit2.text+'%''';
          params[0].asdate:=dt1;
          params[1].asdate:=dt2;
          open;
          if not fieldbyname('x1').isnull then begin
            rptno:=fieldbyname('x6').value;
            styles001.Caption:='Styles: '+fieldbyname('x1').asstring;
            pos001.Caption:='PO: '+fieldbyname('x2').asstring;
            if (checkbox1.Checked) or (checkbox2.Checked) then begin
              if checkbox1.Checked then begin
                sample001.Caption:='Sample Garments (audited ttl): '+fieldbyname('x5').asstring;
                shp001.Caption:='Sewn Qty being Audit: '+fieldbyname('x3').asstring;
                pplabel14.Caption:='Sewn';
                pplabel10.Visible:=true;
              end else if checkbox2.Checked then begin
                sample001.Caption:='Sample Garments (inspected ttl): '+fieldbyname('x5').asstring;
                shp001.Caption:='Sewn Qty being Inspect: '+fieldbyname('x3').asstring;
              end;
            end else begin
              shp001.Caption:='Shipment Qty being Audit: '+fieldbyname('x3').asstring;
              sample001.Caption:='Sample Garments: '+fieldbyname('x4').asstring;
              pplabel14.Caption:='Shipment';
              pplabel10.Visible:=false;
            end;
          end else begin
            styles001.Caption:='0';
            pos001.Caption:='0';
            shp001.Caption:='0';
            sample001.Caption:='0';
          end;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          commandtext:='select * from tbl_aql_defectsummary1 where tm=:x1 order by ln';
          params[0].asdatetime:=tm;
          open;
          first;
          while not eof do begin
            if fieldbyname('ln').value=1 then begin
              if not fieldbyname('def1').isnull then def0001.Caption:=fieldbyname('def1').value;
              if not fieldbyname('def2').isnull then def0002.Caption:=fieldbyname('def2').value;
              if not fieldbyname('def3').isnull then def0003.Caption:=fieldbyname('def3').value;
              if not fieldbyname('def4').isnull then def0004.Caption:=fieldbyname('def4').value;
              if not fieldbyname('def5').isnull then def0005.Caption:=fieldbyname('def5').value;
              if not fieldbyname('def6').isnull then def0006.Caption:=fieldbyname('def6').value;
              if not fieldbyname('def7').isnull then def0007.Caption:=fieldbyname('def7').value;
              if not fieldbyname('def8').isnull then def0008.Caption:=fieldbyname('def8').value;
              if not fieldbyname('def9').isnull then def0009.Caption:=fieldbyname('def9').value;
              if not fieldbyname('def10').isnull then def0010.Caption:=fieldbyname('def10').value;
              if not fieldbyname('def11').isnull then def0011.Caption:=fieldbyname('def11').value;
              //if not fieldbyname('def12').isnull then def0012.Caption:=fieldbyname('def12').value;
            end else if fieldbyname('ln').value=2 then begin
              if not fieldbyname('def1').isnull then qty0001.Caption:=fieldbyname('def1').value;
              if not fieldbyname('def2').isnull then qty0002.Caption:=fieldbyname('def2').value;
              if not fieldbyname('def3').isnull then qty0003.Caption:=fieldbyname('def3').value;
              if not fieldbyname('def4').isnull then qty0004.Caption:=fieldbyname('def4').value;
              if not fieldbyname('def5').isnull then qty0005.Caption:=fieldbyname('def5').value;
              if not fieldbyname('def6').isnull then qty0006.Caption:=fieldbyname('def6').value;
              if not fieldbyname('def7').isnull then qty0007.Caption:=fieldbyname('def7').value;
              if not fieldbyname('def8').isnull then qty0008.Caption:=fieldbyname('def8').value;
              if not fieldbyname('def9').isnull then qty0009.Caption:=fieldbyname('def9').value;
              if not fieldbyname('def10').isnull then qty0010.Caption:=fieldbyname('def10').value;
              if not fieldbyname('def11').isnull then qty0011.Caption:=fieldbyname('def11').value;
              //if not fieldbyname('def12').isnull then qty0012.Caption:=fieldbyname('def12').value;
            end else if fieldbyname('ln').value=3 then begin
              if not fieldbyname('def1').isnull then code0001.Caption:=fieldbyname('def1').value;
              if not fieldbyname('def2').isnull then code0002.Caption:=fieldbyname('def2').value;
              if not fieldbyname('def3').isnull then code0003.Caption:=fieldbyname('def3').value;
              if not fieldbyname('def4').isnull then code0004.Caption:=fieldbyname('def4').value;
              if not fieldbyname('def5').isnull then code0005.Caption:=fieldbyname('def5').value;
              if not fieldbyname('def6').isnull then code0006.Caption:=fieldbyname('def6').value;
              if not fieldbyname('def7').isnull then code0007.Caption:=fieldbyname('def7').value;
              if not fieldbyname('def8').isnull then code0008.Caption:=fieldbyname('def8').value;
              if not fieldbyname('def9').isnull then code0009.Caption:=fieldbyname('def9').value;
              if not fieldbyname('def10').isnull then code0010.Caption:=fieldbyname('def10').value;
              if not fieldbyname('def11').isnull then code0011.Caption:=fieldbyname('def11').value;
            end;
            application.ProcessMessages;
            next;
          end;
        end;
        if (checkbox3.Checked) or (checkbox4.Checked) then ppgroupfooterband2.Visible:=true
        else ppgroupfooterband2.Visible:=false;
        ppReport3.Print;
      end;
    end;
  end;
 end;
 finally
   screen.cursor:=crDefault;
 end;
end;

procedure Tfrmdefectsummary.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.Checked then begin
    edit1.Enabled:=true;
    checkbox1.Checked:=false;
    checkbox3.Checked:=false;
    checkbox4.Checked:=false;
    combobox4.Enabled:=false;
    checkbox11.Checked:=false;
    checkbox12.Checked:=false;
    checkbox13.Checked:=false;
    checkbox14.Checked:=false;
    checkbox15.Checked:=false;
    label32.Visible:=false;
    combobox5.Visible:=false;
  end else begin
    edit1.Enabled:=false;
    edit1.text:='';
  end;
end;

procedure Tfrmdefectsummary.FormShow(Sender: TObject);
begin
  edit1.Enabled:=false;
  groupbox1.Enabled:=false;
  edit1.Text:='';
  bitbtn3.Enabled:=false;
  combobox4.Enabled:=false;
  combobox2.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct fty from tbl_aql_s0 where fty>''''';
    open;
    first;
    while not eof do begin
      combobox2.items.add(fieldbyname('fty').value);
      application.ProcessMessages;
      next;
    end;
  end;
  combobox2.items.add('CN');
  spinedit9.Value:=yearof(date);
  spinedit10.Value:=monthof(date);
  spinedit11.Value:=yearof(date);
  spinedit12.Value:=monthof(date);
  spinedit13.Value:=yearof(date);
  spinedit14.Value:=1;
  spinedit15.Value:=yearof(date);
  spinedit16.Value:=1;
  spinedit17.Value:=yearof(date);
  spinedit18.Value:=yearof(date);
  label32.Visible:=false;
  combobox5.Visible:=false;
end;

function Tfrmdefectsummary.maxdatebymonth(const dt: tdatetime): tdatetime;
var
  y,m,d:word;
  dt1:tdatetime;
begin
  dt1:=dt+31;
  decodedate(dt1,y,m,d);
  result:=encodedate(y,m,1)-1;
end;

procedure Tfrmdefectsummary.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked then begin
    checkbox2.Checked:=false;
    checkbox3.Checked:=false;
    checkbox4.Checked:=false;
    edit1.Enabled:=false;
    edit1.Text:='';
    combobox4.Enabled:=false;
    checkbox11.Checked:=false;
    checkbox12.Checked:=false;
    checkbox13.Checked:=false;
    checkbox14.Checked:=false;
    checkbox15.Checked:=false;
    if combobox2.Text='GG' then begin
      label32.Visible:=true;
      combobox5.Visible:=true;
    end else begin
      label32.Visible:=false;
      combobox5.Visible:=false;
    end;
  end;
end;

procedure Tfrmdefectsummary.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmdefectsummary1<>nil then frmdefectsummary1:=nil;
  if frmdefectsummary2<>nil then frmdefectsummary2:=nil;
  if frmdefectsummary3<>nil then frmdefectsummary3:=nil;
  if frmdefectsummary4<>nil then frmdefectsummary4:=nil;
  if frmdefectsummary5<>nil then frmdefectsummary5:=nil;
  if frmdefectsummary6<>nil then frmdefectsummary6:=nil;
  action:=cafree;
  frmdefectsummary:=nil;
end;

procedure Tfrmdefectsummary.rb5Click(Sender: TObject);
begin
  if rb5.Checked then begin
    dateedit1.Enabled:=true;
    bitbtn3.Enabled:=true;
    groupbox1.Enabled:=false;
  end;
end;

procedure Tfrmdefectsummary.rb1Click(Sender: TObject);
begin
  if rb1.Checked then begin
    dateedit1.Enabled:=false;
    bitbtn3.Enabled:=false;
    groupbox1.Enabled:=false;
  end;
end;

procedure Tfrmdefectsummary.rb2Click(Sender: TObject);
begin
  if rb2.Checked then begin
    dateedit1.Enabled:=false;
    bitbtn3.Enabled:=false;
  end;
end;

procedure Tfrmdefectsummary.rb3Click(Sender: TObject);
begin
  if rb3.Checked then begin
    dateedit1.Enabled:=false;
    bitbtn3.Enabled:=false;
  end;
end;

procedure Tfrmdefectsummary.rb4Click(Sender: TObject);
begin
  if rb4.Checked then begin
    dateedit1.Enabled:=false;
    bitbtn3.Enabled:=false;
  end;
end;

procedure Tfrmdefectsummary.BitBtn3Click(Sender: TObject);
begin
  if (combobox2.text>'') and (dateedit1.date>0) then begin
    if (checkbox2.Checked) then begin
      if frmdailynotepad=nil then frmdailynotepad:=tfrmdailynotepad.Create(nil);
      with frmdailynotepad.query4 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        commandtext:='select * from tbl_aql_dailyaqlnotepad where tplant='''+combobox2.text+''' and dt=:x1 and aql_type=''Full Inspection''';
        params[0].asdate:=dateedit1.date;
        open;
        if fieldbyname('tplant').isnull then begin
          append;
          fieldbyname('cust').value:='';
          fieldbyname('tplant').value:=combobox2.text;
          fieldbyname('dt').value:=dateedit1.date;
          fieldbyname('ws').value:='';
          fieldbyname('aql_type').value:='Full Inspection';
        end;
      end;
      frmdailynotepad.Show;
    end else if (checkbox3.Checked) or (checkbox4.checked) or (checkbox1.checked) then begin
      //if combobox3.text>'' then begin
        if frmaql_notepad=nil then frmaql_notepad:=tfrmaql_notepad.create(nil);
        with frmaql_notepad.query1 do begin
          close;
          params.clear;
          params.createparam(ftdate,'x1',ptinput);
          commandtext:='select * from tbl_aql_dailyaqlnotepad where tplant='''+combobox2.text+''' and cust='''+combobox1.text+''' and dt=:x1 and ws='''+combobox3.text+'''';
          if checkbox3.checked then commandtext:=commandtext+' and aql_type=''Off-line AQL'''
          else if checkbox4.Checked then commandtext:=commandtext+' and aql_type=''In-line AQL'''
          else if checkbox1.checked then commandtext:=commandtext+' and aql_type=''Full Audit''';
          params[0].asdate:=dateedit1.date;
          open;
          if fieldbyname('tplant').isnull then begin
            append;
            fieldbyname('cust').value:=combobox1.text;
            fieldbyname('tplant').value:=combobox2.text;
            fieldbyname('dt').value:=dateedit1.date;
            fieldbyname('ws').value:=combobox3.text;
            if checkbox3.Checked then
            fieldbyname('aql_type').value:='Off-line AQL'
            else if checkbox4.Checked then
            fieldbyname('aql_type').value:='In-line AQL'
            else if checkbox1.checked then
            fieldbyname('aql_type').value:='Full Audit';
          end;
        end;
        if checkbox3.checked then begin
          frmaql_notepad.Caption:='Off-line AQL Notepad';
          frmaql_notepad.DBMemo2.Enabled:=true;
          frmaql_notepad.SpeedButton1.Enabled:=true;
        end else if checkbox4.checked then begin
          frmaql_notepad.Caption:='In-line AQL Notepad';
          frmaql_notepad.DBMemo2.Enabled:=true;
          frmaql_notepad.SpeedButton1.Enabled:=true;
        end else if checkbox1.Checked then begin
          frmaql_notepad.Caption:='Full Audit Notepad';
          frmaql_notepad.DBMemo2.Enabled:=false;
          frmaql_notepad.SpeedButton1.Enabled:=false;
        end;
        frmaql_notepad.show;
      //end;
    end;
  end else showmessage('請選擇工廠和日期!');
end;

procedure Tfrmdefectsummary.BitBtn4Click(Sender: TObject);
begin
  if frm3defects=nil then frm3defects:=tfrm3defects.create(nil);
  frm3defects.show;
end;

procedure Tfrmdefectsummary.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  if (checkbox3.checked) and (rb5.checked) then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='select remarks from tbl_aql_dailyaqlnotepad where dt=:x1';
      commandtext:=commandtext+' and ws='''+query1.fieldbyname('ws').value+'''';
      commandtext:=commandtext+' and tplant='''+query1.fieldbyname('fty').value+'''';
      if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('remarks').isnull then memo01.Text:=fieldbyname('remarks').value
      else memo01.Text:='';
    end;
  end else begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftboolean,'x1',ptinput);
      params.createparam(ftboolean,'x2',ptinput);
      params.createparam(ftboolean,'x3',ptinput);
      commandtext:='select remarks from tbl_aql_marks_wk where hun_check=:x1 and endline=:x2 and dailyaql=:x3 and cust='''+combobox1.text+''' and yr='+inttostr(spinedit1.Value)+' and wk='+inttostr(spinedit2.value);
      commandtext:=commandtext+' and ws='''+query1.fieldbyname('ws').value+'''';
      commandtext:=commandtext+' and tplant='''+query1.fieldbyname('fty').value+'''';
      params[0].asboolean:=checkbox1.Checked;
      params[1].asboolean:=checkbox2.Checked;
      params[2].asboolean:=checkbox3.Checked;
      open;
      if not fieldbyname('remarks').isnull then memo01.Text:=fieldbyname('remarks').value
      else memo01.Text:='';
    end;
  end;
  if ppdbcalc27.value>0 then
  p002.caption:=formatfloat('0.00',ppdbcalc26.Value*100.00/ppdbcalc27.value);
end;

procedure Tfrmdefectsummary.ppDetailBand3BeforePrint(Sender: TObject);
begin
  if query1.fieldbyname('qty').value>0 then
  p001.caption:=formatfloat('0.00',query1.fieldbyname('tqty').value*100.00/query1.fieldbyname('qty').value);
  if not query1.fieldbyname('sqty1').IsNull then
  if query1.fieldbyname('sqty1').value>=query1.fieldbyname('tqty').value then r001.caption:='Acc' else r001.caption:='Rej';
end;

procedure Tfrmdefectsummary.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  if ppdbcalc28.value>0 then
  p003.caption:=formatfloat('0.00',ppdbcalc13.Value*100.00/ppdbcalc28.value);
end;

procedure Tfrmdefectsummary.ppDetailBand1BeforePrint(Sender: TObject);
begin
  wsttl001.Caption:='Ws Sub-total ('+query5.fieldbyname('ws').value+'): ';
  if query5.fieldbyname('qty').value>0 then
  p004.caption:=formatfloat('0.00',query5.fieldbyname('tqty').value*100.00/query5.fieldbyname('qty').value);
end;

procedure Tfrmdefectsummary.rb6Click(Sender: TObject);
begin
  if rb6.Checked then begin
    groupbox1.Enabled:=true;
    dateedit1.Enabled:=false;
    bitbtn3.Enabled:=false;
  end;
end;

procedure Tfrmdefectsummary.ppSummaryBand3BeforePrint(Sender: TObject);
begin
  if ppdbcalc42.value>0 then
  p005.caption:=formatfloat('0.00',ppdbcalc41.Value*100.00/ppdbcalc42.value);
end;

procedure Tfrmdefectsummary.ppDetailBand2BeforePrint(Sender: TObject);
begin
  wsttl002.Caption:='Customer Sub-total ('+query4.fieldbyname('cust').value+'): ';
  if query4.fieldbyname('qty').value>0 then
  p006.caption:=formatfloat('0.00',query4.fieldbyname('tqty').value*100.00/query4.fieldbyname('qty').value);
end;

procedure Tfrmdefectsummary.CheckBox3Click(Sender: TObject);
begin
  if checkbox3.Checked then begin
    checkbox1.Checked:=false;
    checkbox2.Checked:=false;
    checkbox4.Checked:=false;
    combobox4.Enabled:=true;
    checkbox11.Checked:=false;
    checkbox12.Checked:=false;
    checkbox13.Checked:=false;
    checkbox14.Checked:=false;
    checkbox15.Checked:=false;
    label32.Visible:=false;
    combobox5.Visible:=false;
  end else combobox4.Enabled:=false;
end;

procedure Tfrmdefectsummary.CheckBox4Click(Sender: TObject);
begin
  if checkbox4.Checked then begin
    checkbox1.Checked:=false;
    checkbox2.Checked:=false;
    checkbox3.Checked:=false;
    checkbox11.Checked:=false;
    checkbox12.Checked:=false;
    checkbox13.Checked:=false;
    checkbox14.Checked:=false;
    checkbox15.Checked:=false;
    label32.Visible:=false;
    combobox5.Visible:=false;
  end;
end;

procedure Tfrmdefectsummary.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
  if ppdbcalc56.value>0 then
  p007.caption:=formatfloat('0.00',ppdbcalc55.Value*100.00/ppdbcalc56.value);
end;

procedure Tfrmdefectsummary.CheckBox5Click(Sender: TObject);
begin
  if checkbox5.Checked then begin
    checkbox6.Checked:=false;
    checkbox7.Checked:=false;
    checkbox8.Checked:=false;
    checkbox9.Checked:=false;
    checkbox10.Checked:=false;
  end;
end;

procedure Tfrmdefectsummary.CheckBox6Click(Sender: TObject);
begin
  if checkbox6.Checked then begin
    checkbox5.Checked:=false;
    checkbox7.Checked:=false;
    checkbox8.Checked:=false;
    checkbox9.Checked:=false;
    checkbox10.Checked:=false;
  end;
end;

procedure Tfrmdefectsummary.CheckBox7Click(Sender: TObject);
begin
  if checkbox7.Checked then begin
    checkbox6.Checked:=false;
    checkbox5.Checked:=false;
    checkbox8.Checked:=false;
    checkbox9.Checked:=false;
    checkbox10.Checked:=false;
  end;
end;

procedure Tfrmdefectsummary.CheckBox8Click(Sender: TObject);
begin
  if checkbox8.Checked then begin
    checkbox6.Checked:=false;
    checkbox7.Checked:=false;
    checkbox5.Checked:=false;
    checkbox9.Checked:=false;
    checkbox10.Checked:=false;
  end;
end;

procedure Tfrmdefectsummary.CheckBox9Click(Sender: TObject);
begin
  if checkbox9.Checked then begin
    checkbox6.Checked:=false;
    checkbox7.Checked:=false;
    checkbox8.Checked:=false;
    checkbox5.Checked:=false;
    checkbox10.Checked:=false;
  end;
end;

procedure Tfrmdefectsummary.CheckBox10Click(Sender: TObject);
begin
  if checkbox10.Checked then begin
    checkbox6.Checked:=false;
    checkbox7.Checked:=false;
    checkbox8.Checked:=false;
    checkbox9.Checked:=false;
    checkbox5.Checked:=false;
  end;
end;

procedure Tfrmdefectsummary.BitBtn2Click(Sender: TObject);
var
  tm,dt1,dt2:tdatetime;
  s1,s2,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10:string;
  i:integer;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try
  if (checkbox11.Checked) or (checkbox12.Checked) or (checkbox13.Checked) then begin
    if checkbox12.Checked then if combobox2.text<>'GG' then exit;
    if rb1.Checked then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select min(date1) as x1,max(date1) as x2 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and wkno=:x2';
        params[0].asinteger:=spinedit1.value;
        params[1].asinteger:=spinedit2.value;
        open;
        dt1:=fieldbyname('x1').value;
        dt2:=fieldbyname('x2').value;
      end;
    end else if rb5.Checked then begin
      dt1:=dateedit1.date;
      dt2:=dateedit1.date;
    end else if rb6.Checked then begin
      if checkbox5.Checked then begin
        dt1:=dateedit2.Date;
        dt2:=dateedit3.Date;
      end else if checkbox6.Checked then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select min(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and wkno=:x2';
          params[0].asinteger:=spinedit5.value;
          params[1].asinteger:=spinedit6.value;
          open;
          dt1:=fieldbyname('x1').value;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select max(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and wkno=:x2';
          params[0].asinteger:=spinedit7.value;
          params[1].asinteger:=spinedit8.value;
          open;
          dt2:=fieldbyname('x1').value;
        end;
      end else if checkbox7.Checked then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select min(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_month(date1)=:x2';
          params[0].asinteger:=spinedit9.value;
          params[1].asinteger:=spinedit10.value;
          open;
          dt1:=fieldbyname('x1').value;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select max(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_month(date1)=:x2';
          params[0].asinteger:=spinedit11.value;
          params[1].asinteger:=spinedit12.value;
          open;
          dt2:=fieldbyname('x1').value;
        end;
      end else if checkbox8.Checked then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select min(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_quarter(date1)=:x2';
          params[0].asinteger:=spinedit13.value;
          params[1].asinteger:=spinedit14.value;
          open;
          dt1:=fieldbyname('x1').value;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select max(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_quarter(date1)=:x2';
          params[0].asinteger:=spinedit15.value;
          params[1].asinteger:=spinedit16.value;
          open;
          dt2:=fieldbyname('x1').value;
        end;
      end else if checkbox9.Checked then begin
        dt1:=encodedate(spinedit17.Value,1,1);
        dt2:=encodedate(spinedit18.Value,12,31);
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftstring,'x6',ptinput);
      params.createparam(ftstring,'x7',ptinput);
      if checkbox11.Checked then
        commandtext:='execute PROCEDURE SP_AQL_CMP1_style(:x1,:x2,:x3,:x4,:x5,:x6,:x7)'
      else if (checkbox12.Checked) and ((combobox2.text='GG') or (combobox3.text='1H') or (combobox3.text='RX')) then
        commandtext:='execute PROCEDURE SP_AQL_CMP2_style(:x1,:x2,:x3,:x4,:x5,:x6,:x7)'
      else if checkbox13.Checked then
        commandtext:='execute PROCEDURE SP_AQL_CMP3_Style(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
      params[0].asdatetime:=tm;
      params[1].asdate:=dt1;
      params[2].asdate:=dt2;
      params[3].asstring:=combobox2.text;
      params[4].AsString:=combobox3.text;
      params[5].asstring:=combobox1.text;
      params[6].asstring:=edit2.Text;
      execute;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_aql_insp_offline_cmp where tm=:x1';
      params[0].asdatetime:=tm;
      open;
      first;
      while not eof do begin
        s1:='';
        with query3 do begin
          close;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          if checkbox11.Checked then begin
            commandtext:='select distinct dcd,sum(major) as x1 from v_aql_fullinsp_ttl where pline=:x1 and j2_job=:x2 and acol=:x3 and rwo=:x4 '
                        +'group by dcd order by x1 desc';
          end else if checkbox12.Checked then begin
            commandtext:='select distinct dcd,sum(major) as x1 from v_aql_offline_ttl2 where pline=:x1 and j2_job=:x2 and acol=:x3 and rwo=:x4 '
                        +'group by dcd order by x1 desc';
          end else if checkbox13.Checked then begin
          end;
          params[0].asstring:=query2.fieldbyname('pline').value;
          params[1].asstring:=query2.fieldbyname('j2_job').value;
          params[2].asstring:=query2.fieldbyname('acol').value;
          params[3].asstring:=query2.fieldbyname('rwo').value;
          open;
          first;
          while not eof do begin
            if s1>'' then s1:=trim(s1)+', '+fieldbyname('dcd').value+'('+fieldbyname('x1').asstring+'/'+formatfloat('0.00',fieldbyname('x1').value*100.00/query2.fieldbyname('insp_qty').Value)+')'
            else s1:=fieldbyname('dcd').value+'('+fieldbyname('x1').asstring+'/'+formatfloat('0.00',fieldbyname('x1').value*100.00/query2.fieldbyname('insp_qty').Value)+')';
            application.ProcessMessages;
            next;
          end;
        end;
        s2:='';
        with query3 do begin
          close;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftdate,'x5',ptinput);
          params.createparam(ftdate,'x6',ptinput);
          if checkbox11.Checked then begin
            if combobox2.text<>'GG' then
            commandtext:='select distinct dcd,sum(major) as x1 from v_aql_offline_ttl1 where pline=:x1 and j2_job=:x2 and acol=:x3 and rwo=:x4 and dt>=:x5 and dt<=:x6 '
                        +'group by dcd order by x1 desc'
            else
            commandtext:='select distinct dcd,sum(major) as x1 from v_aql_offline_ttl2 where pline=:x1 and j2_job=:x2 and acol=:x3 and rwo=:x4 and dt>=:x5 and dt<=:x6 '
                        +'group by dcd order by x1 desc';
          end else if checkbox12.Checked then begin
            commandtext:='select distinct dcd,sum(major) as x1 from v_aql_offline_ttl1 where pline=:x1 and j2_job=:x2 and acol=:x3 and rwo=:x4 and dt>=:x5 and dt<=:x6 '
                        +'group by dcd order by x1 desc';
          end else if checkbox13.Checked then begin
          end;
          params[0].asstring:=query2.fieldbyname('pline').value;
          params[1].asstring:=query2.fieldbyname('j2_job').value;
          params[2].asstring:=query2.fieldbyname('acol').value;
          params[3].asstring:=query2.fieldbyname('rwo').value;
          params[4].asdate:=dt1;
          params[5].asdate:=dt2;
          open;
          first;
          while not eof do begin
            if s2>'' then s2:=trim(s2)+', '+fieldbyname('dcd').value+'('+fieldbyname('x1').asstring+'/'+formatfloat('0.00',fieldbyname('x1').value*100.00/query2.fieldbyname('offline_sqty').Value)+')'
            else s2:=fieldbyname('dcd').value+'('+fieldbyname('x1').asstring+'/'+formatfloat('0.00',fieldbyname('x1').value*100.00/query2.fieldbyname('offline_sqty').Value)+')';
            application.ProcessMessages;
            next;
          end;
        end;

        d1:=''; d2:=''; d3:=''; d4:=''; d5:=''; d6:=''; d7:=''; d8:=''; d9:=''; d10:='';
        i:=0;
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftdate,'x4',ptinput);
          params.createparam(ftdate,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          params.createparam(ftstring,'x9',ptinput);
          if checkbox11.Checked then
            //commandtext:='select distinct dcd from SP_AQL_DEFECTCMP1(:x1,:x2,:x3,:x4,:x5) where pline=:x6 and j2_job=:x7 and acol=:x8 and rwo=:x9'
            commandtext:='select distinct dcd from SP_AQL_DEFECTCMP1_rwo(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9) where dcd is not null'
          else if checkbox12.Checked then
            //commandtext:='select distinct dcd from SP_AQL_DEFECTCMP2(:x1,:x2,:x3,:x4,:x5) where pline=:x6 and j2_job=:x7 and acol=:x8 and rwo=:x9'
            commandtext:='select distinct dcd from SP_AQL_DEFECTCMP2_rwo(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9) where dcd is not null'
          else if checkbox13.Checked then
            commandtext:='select distinct dcd from SP_AQL_DEFECTCMP3(:x1,:x2,:x3,:x4,:x5) where pline=:x6 and j2_job=:x7 and acol=:x8 and rwo=:x9';
          params[0].asstring:=combobox2.text;
          params[1].asstring:=combobox3.text;
          params[2].asstring:=combobox1.text;
          params[3].asdate:=dt1;
          params[4].asdate:=dt2;
          params[5].asstring:=query2.fieldbyname('pline').value;
          params[6].asstring:=query2.fieldbyname('j2_job').value;
          params[7].asstring:=query2.fieldbyname('acol').value;
          params[8].asstring:=query2.fieldbyname('rwo').value;
          open;
          first;
          while not eof do begin
            i:=i+1;
            if i=1 then d1:=fieldbyname('dcd').value
            else if i=2 then d2:=fieldbyname('dcd').value
            else if i=3 then d3:=fieldbyname('dcd').value
            else if i=4 then d4:=fieldbyname('dcd').value
            else if i=5 then d5:=fieldbyname('dcd').value
            else if i=6 then d6:=fieldbyname('dcd').value
            else if i=7 then d7:=fieldbyname('dcd').value
            else if i=8 then d8:=fieldbyname('dcd').value
            else if i=9 then d9:=fieldbyname('dcd').value
            else if i=10 then d10:=fieldbyname('dcd').value;
            application.ProcessMessages;
            next;
          end;
        end;

        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'d1',ptinput);
          params.createparam(ftstring,'d2',ptinput);
          params.createparam(ftstring,'d3',ptinput);
          params.createparam(ftstring,'d4',ptinput);
          params.createparam(ftstring,'d5',ptinput);
          params.createparam(ftstring,'d6',ptinput);
          params.createparam(ftstring,'d7',ptinput);
          params.createparam(ftstring,'d8',ptinput);
          params.createparam(ftstring,'d9',ptinput);
          params.createparam(ftstring,'d10',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftdatetime,'x7',ptinput);
          commandtext:='update tbl_aql_insp_offline_cmp set insp_rst=:x1,offline_rst=:x2,def1=:d1,def2=:d2,def3=:d3,def4=:d4,def5=:d5,def6=:d6,def7=:d7,def8=:d8,def9=:d9,def10=:d10 '
                      +'where pline=:x3 and j2_job=:x4 and acol=:x5 and rwo=:x6 and tm=:x7';
          params[0].asstring:=s1;
          params[1].asstring:=s2;
          params[2].asstring:=d1;
          params[3].asstring:=d2;
          params[4].asstring:=d3;
          params[5].asstring:=d4;
          params[6].asstring:=d5;
          params[7].asstring:=d6;
          params[8].asstring:=d7;
          params[9].asstring:=d8;
          params[10].asstring:=d9;
          params[11].asstring:=d10;
          params[12].asstring:=query2.fieldbyname('pline').value;
          params[13].asstring:=query2.fieldbyname('j2_job').value;
          params[14].asstring:=query2.fieldbyname('acol').value;
          params[15].asstring:=query2.fieldbyname('rwo').value;
          params[16].asdatetime:=tm;
          execute;
        end;

        application.ProcessMessages;
        next;
      end;
    end;

    with query4 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      if checkbox11.Checked then begin
        if combobox2.text<>'GG' then
          commandtext:='select distinct dcd,def from view_aql_defect_new1_style where dt>=:x1 and dt<=:x2'
        else
          commandtext:='select distinct dcd,def from view_aql_defect_new2_style where dt>=:x1 and dt<=:x2';
      end else if checkbox12.Checked then begin
        commandtext:='select distinct dcd,def from view_aql_defect_new1_style where dt>=:x1 and dt<=:x2 and ((dailyaql<>0) or (hun_check<>0))';
        if combobox1.Text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
        if combobox2.Text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
        if combobox3.Text>'' then commandtext:=commandtext+' and ws='''+combobox3.text+'''';
        if edit2.text>'' then commandtext:=commandtext+' and cstyle like '''+edit2.text+'%''';
        commandtext:=commandtext+' union select distinct dcd,def from view_aql_defect_new2_style where dt>=:x1 and dt<=:x2';
      end else if checkbox13.Checked then begin
      end;
      if combobox1.Text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
      if combobox2.Text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
      if combobox3.Text>'' then commandtext:=commandtext+' and ws='''+combobox3.text+'''';
      if edit2.text>'' then commandtext:=commandtext+' and cstyle like '''+edit2.text+'%''';
      params[0].asdate:=dt1;
      params[1].AsDate:=dt2;
      open;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_aql_insp_offline_cmp where tm=:x1 order by fty,ws,pline,j_no,j2_job,acol,rwo';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        if checkbox11.Checked then begin
          title001.Caption:='Defect Points comparison report between In-line Full Inspection & Off-line AQL/Full Audit';
          subject01.Caption:='Inspected';
          subject02.Caption:='Qty';
          subject001.Caption:='In-line Full Inspection';
          subject002.Caption:='Off-line AQL/Full Audit';
        end else if checkbox12.Checked then begin
          title001.Caption:='Defect Points comparison report between Off-line AQL/Full Audit at GX (GG/RX) & GD (SL)';
          subject01.Caption:='Sample';
          subject02.Caption:='Gmts';
          subject001.Caption:='Off-line AQL/Full Audit at GX (GG/RX)';
          subject002.Caption:='Off-line AQL/Full Audit at GD (SL)';
        end else if checkbox13.Checked then begin
          title001.Caption:='Defect Points comparison report between Off-line Full Audit & In-line AQL Audit';
          subject01.Caption:='Sample';
          subject02.Caption:='Gmts';
          subject001.Caption:='Off-line Full Audit';
          subject002.Caption:='In-line AQL Audit';
        end;
        
        if rb1.Checked then title001.Caption:='Weekly '+title001.Caption
        else if rb5.Checked then title001.Caption:='Daily '+title001.Caption
        else if rb6.Checked then begin
          if checkbox7.Checked then begin
            if (spinedit9.value=spinedit11.Value) and (spinedit10.value=spinedit12.Value) then
            title001.Caption:='Monthly '+title001.Caption;
          end else title001.Caption:='Periodic '+title001.Caption;
        end;
        if rb1.checked then title002.Caption:='[Week '+inttostr(spinedit1.Value)+'-'+inttostr(spinedit2.Value)+']'
        else if rb5.Checked then title002.Caption:='[Day '+formatdatetime('yyyy/MM/dd',dateedit1.date)+']'
        else if rb6.checked then begin
          if checkbox5.Checked then
          title002.Caption:='[Periodic (Day from '+formatdatetime('yyyy/MM/dd',dt1)+' to '+formatdatetime('yyyy/MM/dd',dt2)+')]'
          else if checkbox6.Checked then
          title002.Caption:='[Periodic (Week from '+inttostr(spinedit5.value)+'-'+inttostr(spinedit6.value)+' to '+inttostr(spinedit7.value)+'-'+inttostr(spinedit8.value)+')]'
          else if checkbox7.Checked then begin
            if (spinedit9.value=spinedit11.Value) and (spinedit10.value=spinedit12.Value) then begin
              title002.Caption:='[Month '+inttostr(spinedit9.value)+'-'+inttostr(spinedit10.value)+']';
            end else title002.Caption:='[Periodic (month from '+inttostr(spinedit9.value)+'-'+inttostr(spinedit10.value)+' to '+inttostr(spinedit11.value)+'-'+inttostr(spinedit12.value)+')]';
          end;
        end;
        ppReport1.Print;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmdefectsummary.ppDetailBand6BeforePrint(Sender: TObject);
var
  s:string;
  c1,c2,c3,c4,c5,c6,c7,c8,c9,c10:integer;
  rtf1:string;
  crtdir:boolean;
begin
  s:=query1.fieldbyname('offline_rst').value;
  fullinsprst001.RichText:=query1.fieldbyname('insp_rst').value;
  offlinerst001.RichText:=s;
  fullinsprst001.SelStart:=0;
  fullinsprst001.SelLength:=length(query1.fieldbyname('insp_rst').value);
  fullinsprst001.SelAttributes.Assign(FontDialog2.Font);
  offlinerst001.SelStart:=0;
  offlinerst001.SelLength:=length(s);
  offlinerst001.SelAttributes.Assign(FontDialog2.Font);
  c1:=0; c2:=0; c3:=0; c4:=0; c5:=0; c6:=0; c7:=0; c8:=0; c9:=0; c10:=0;
  if query1.fieldbyname('def1').value>'' then c1:=pos(query1.fieldbyname('def1').value,s);
  if query1.fieldbyname('def2').value>'' then c2:=pos(query1.fieldbyname('def2').value,s);
  if query1.fieldbyname('def3').value>'' then c3:=pos(query1.fieldbyname('def3').value,s);
  if query1.fieldbyname('def4').value>'' then c4:=pos(query1.fieldbyname('def4').value,s);
  if query1.fieldbyname('def5').value>'' then c5:=pos(query1.fieldbyname('def5').value,s);
  if query1.fieldbyname('def6').value>'' then c6:=pos(query1.fieldbyname('def6').value,s);
  if query1.fieldbyname('def7').value>'' then c7:=pos(query1.fieldbyname('def7').value,s);
  if query1.fieldbyname('def8').value>'' then c8:=pos(query1.fieldbyname('def8').value,s);
  if query1.fieldbyname('def9').value>'' then c9:=pos(query1.fieldbyname('def9').value,s);
  if query1.fieldbyname('def10').value>'' then c10:=pos(query1.fieldbyname('def10').value,s);

  rememo1.Lines.Text:=query1.fieldbyname('offline_rst').value;
  if c1>0 then begin
    rememo1.selstart:=c1-1;
    rememo1.SelLength:=5;
    rememo1.SelAttributes.Assign(fontdialog1.Font);
  end;
  if c2>0 then begin
    rememo1.selstart:=c2-1;
    rememo1.SelLength:=5;
    rememo1.SelAttributes.Assign(fontdialog1.Font);
  end;
  if c3>0 then begin
    rememo1.selstart:=c3-1;
    rememo1.SelLength:=5;
    rememo1.SelAttributes.Assign(fontdialog1.Font);
  end;
  if c4>0 then begin
    rememo1.selstart:=c4-1;
    rememo1.SelLength:=5;
    rememo1.SelAttributes.Assign(fontdialog1.Font);
  end;
  if c5>0 then begin
    rememo1.selstart:=c5-1;
    rememo1.SelLength:=5;
    rememo1.SelAttributes.Assign(fontdialog1.Font);
  end;
  if c6>0 then begin
    rememo1.selstart:=c6-1;
    rememo1.SelLength:=5;
    rememo1.SelAttributes.Assign(fontdialog1.Font);
  end;
  //rtf1:=extractfilepath(application.ExeName)+formatdatetime('hhnnsszzz',now)+'.rtf';
  crtdir:=false;
  if not directoryexists('c:\temp') then crtdir:=createdir('c:\temp') else crtdir:=true;
  if crtdir=true then
  rtf1:='c:\temp\'+formatdatetime('hhnnsszzz',now)+'.rtf'
  else rtf1:='d:\'+formatdatetime('hhnnsszzz',now)+'.rtf';
  rememo1.Lines.SaveToFile(rtf1);

  offlinerst001.LoadFromFile(rtf1);
  deletefile(rtf1);
end;

procedure Tfrmdefectsummary.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport1.PreviewForm.Viewer).Zoompercentage:=100;
end;

procedure Tfrmdefectsummary.BitBtn5Click(Sender: TObject);
begin
  if rememo1.sellength>0 then begin
    rememo1.SelAttributes.Assign(fontdialog1.font);
  end;
end;

procedure Tfrmdefectsummary.CheckBox11Click(Sender: TObject);
begin
  if checkbox11.Checked then begin
    checkbox1.Checked:=false;
    checkbox2.Checked:=false;
    checkbox3.Checked:=false;
    checkbox4.Checked:=false;
    checkbox12.Checked:=false;
    checkbox13.Checked:=false;
    checkbox14.Checked:=false;
    checkbox15.Checked:=false;
    label32.Visible:=false;
    combobox5.Visible:=false;
  end;
end;

procedure Tfrmdefectsummary.CheckBox12Click(Sender: TObject);
begin
  if checkbox12.Checked then begin
    checkbox1.Checked:=false;
    checkbox2.Checked:=false;
    checkbox3.Checked:=false;
    checkbox4.Checked:=false;
    checkbox11.Checked:=false;
    checkbox13.Checked:=false;
    checkbox14.Checked:=false;
    checkbox15.Checked:=false;
    label32.Visible:=false;
    combobox5.Visible:=false;
  end;
end;

procedure Tfrmdefectsummary.CheckBox13Click(Sender: TObject);
begin
  if checkbox13.Checked then begin
    checkbox1.Checked:=false;
    checkbox2.Checked:=false;
    checkbox3.Checked:=false;
    checkbox4.Checked:=false;
    checkbox12.Checked:=false;
    checkbox11.Checked:=false;
    checkbox14.Checked:=false;
    checkbox15.Checked:=false;
    label32.Visible:=false;
    combobox5.Visible:=false;
  end;
end;

procedure Tfrmdefectsummary.DefectSummary1Click(Sender: TObject);
var
  tm,dt1,dt2:tdatetime;
  s1,files:string;
  ttlmaj,i:integer;
  maj:double;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try
    if rb1.Checked then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select min(date1) as x1,max(date1) as x2 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and wkno=:x2';
        params[0].asinteger:=spinedit1.value;
        params[1].asinteger:=spinedit2.value;
        open;
        dt1:=fieldbyname('x1').value;
        dt2:=fieldbyname('x2').value;
      end;
    end else if rb5.Checked then begin
      dt1:=dateedit1.date;
      dt2:=dateedit1.date;
    end else if rb6.Checked then begin
      if checkbox5.Checked then begin
        dt1:=dateedit2.Date;
        dt2:=dateedit3.Date;
      end else if checkbox6.Checked then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select min(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and wkno=:x2';
          params[0].asinteger:=spinedit5.value;
          params[1].asinteger:=spinedit6.value;
          open;
          dt1:=fieldbyname('x1').value;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select max(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and wkno=:x2';
          params[0].asinteger:=spinedit7.value;
          params[1].asinteger:=spinedit8.value;
          open;
          dt2:=fieldbyname('x1').value;
        end;
      end else if checkbox7.Checked then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select min(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_month(date1)=:x2';
          params[0].asinteger:=spinedit9.value;
          params[1].asinteger:=spinedit10.value;
          open;
          dt1:=fieldbyname('x1').value;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select max(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_month(date1)=:x2';
          params[0].asinteger:=spinedit11.value;
          params[1].asinteger:=spinedit12.value;
          open;
          dt2:=fieldbyname('x1').value;
        end;
      end else if checkbox8.Checked then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select min(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_quarter(date1)=:x2';
          params[0].asinteger:=spinedit13.value;
          params[1].asinteger:=spinedit14.value;
          open;
          dt1:=fieldbyname('x1').value;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select max(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_quarter(date1)=:x2';
          params[0].asinteger:=spinedit15.value;
          params[1].asinteger:=spinedit16.value;
          open;
          dt2:=fieldbyname('x1').value;
        end;
      end else if checkbox9.Checked then begin
        dt1:=encodedate(spinedit17.Value,1,1);
        dt2:=encodedate(spinedit18.Value,12,31);
      end;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftdate,'x5',ptinput);
      params.createparam(ftdate,'x6',ptinput);
      commandtext:='execute procedure sp_aql_offlineaql_defectsum(:x1,:x2,:x3,:x4,:x5,:x6)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox2.text;
      params[2].asstring:=combobox3.text;
      params[3].asstring:=combobox1.text;
      params[4].AsDate:=dt1;
      params[5].asdate:=dt2;
      execute;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select fty,ws,pline from tbl_aql_offlineaql_sum where tm=:x1';
      params[0].asdatetime:=tm;
      open;
      first;
      while not eof do begin
        s1:='';
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftdate,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          commandtext:='select sum(b.major) as x1 from tbl_aql_s0 a,tbl_aql_s4 b where a.seq=b.seq and a.dailyaql<>0 and a.acc=0 '
                      +'and a.fty='''+query2.fieldbyname('fty').value+''' and a.ws='''+query2.fieldbyname('ws').value+''' '
                      +'and a.pline='''+query2.fieldbyname('pline').value+''' and a.dt>=:x1 and a.dt<=:x2';
          params[0].asdate:=dt1;
          params[1].asdate:=dt2;
          open;
          if not fieldbyname('x1').isnull then ttlmaj:=fieldbyname('x1').value else ttlmaj:=0;
        end;

        i:=0; maj:=0;
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftdate,'x1',ptinput);
          params.createparam(ftdate,'x2',ptinput);
          commandtext:='select distinct b.def,sum(b.major) as x1 from tbl_aql_s0 a,tbl_aql_s4 b where a.seq=b.seq and a.dailyaql<>0 and a.acc=0 '
                      +'and a.fty='''+query2.fieldbyname('fty').value+''' and a.ws='''+query2.fieldbyname('ws').value+''' '
                      +'and a.pline='''+query2.fieldbyname('pline').value+''' and a.dt>=:x1 and a.dt<=:x2 and b.major>0 '
                      +'group by b.def order by x1 desc';
          params[0].asdate:=dt1;
          params[1].asdate:=dt2;
          open;
          first;
          while not eof do begin
            i:=i+1;
            if i<=5 then begin
              maj:=maj+fieldbyname('x1').value*100.00/ttlmaj;
              if s1>'' then s1:=trim(s1)+'; '+fieldbyname('def').value+'('+formatfloat('0.00%',fieldbyname('x1').value*100.00/ttlmaj)+')'
              else s1:=fieldbyname('def').value+'('+formatfloat('0.00%',fieldbyname('x1').value*100.00/ttlmaj)+')';
            end else if i=6 then begin
              s1:=trim(s1)+'; 其它('+formatfloat('0.00%',100.00-maj)+')';
            end;
            application.ProcessMessages;
            next;
          end;
        end;

        with query3 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          commandtext:='update tbl_aql_offlineaql_sum set rej_reason='''+s1+''' where tm=:x1 and fty='''+query2.fieldbyname('fty').value+''' and ws='''+query2.fieldbyname('ws').value+''' and pline='''+query2.fieldbyname('pline').value+'''';
          params[0].asdatetime:=tm;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    //showmessage('OK!');
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select fty as "工廠",ws as "車間",pline as "拉名",rpt_cnt as "抽查次數",rej_cnt as "拒收次數",rej_per as "拒收%",rej_reason as "拒收原因" from tbl_aql_offlineaql_sum where tm=:x1';
      commandtext:='select * from tbl_aql_offlineaql_sum where tm=:x1';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        //if savedialog2.Execute then files:=savedialog2.FileName;
        //xls1.FileName:=files;
        //xls1.ShowFile:=true;
        //xls1.Execute;
        if savedialog2.execute then
        savedbgridehtoexportfile(TDBGridEhExportAsXLS,DBGridEh1,SaveDialog2.FileName,True);
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmdefectsummary.Edit2KeyPress(Sender: TObject; var Key: Char);
var
  y,m,d:word;
  dt,dt1,dt2:tdatetime;
begin
  screen.cursor:=crSQLWait;
  try
  decodedate(date,y,m,d);
  dt1:=encodedate(y,m,1);
  if edit2.text>'' then begin
    if key=#13 then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='select max(dt) as dt from tbl_aql_s0 where cstyle='''+edit2.text+''' and dt<'''+formatdatetime('yyyy-mm-dd',dt1)+'''';
        open;
        if not fieldbyname('dt').isnull then begin
          dt:=fieldbyname('dt').value;
          close;
          params.clear;
          commandtext:='select max(fty) as fty from tbl_aql_s0 where cstyle='''+edit2.text+''' and dt='''+formatdatetime('yyyy-mm-dd',dt)+'''';
          open;
          decodedate(dt,y,m,d);
          dt2:=encodedate(y,m,1);
          combobox2.text:=fieldbyname('fty').value;
          rb6.checked:=true; checkbox5.checked:=true; dateedit2.date:=dt2; dateedit3.date:=dt1-1;
        end else begin
          combobox2.text:='SL';
          rb6.checked:=true; checkbox5.checked:=true; dateedit2.date:=0; dateedit3.date:=0;
        end;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmdefectsummary.Edit3KeyPress(Sender: TObject; var Key: Char);
var
  y,m,d:word;
  dt,dt1,dt2:tdatetime;
begin
  screen.cursor:=crSQLWait;
  try
  decodedate(date,y,m,d);
  dt1:=encodedate(y,m,1);
  if edit3.text>'' then begin
    if key=#13 then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='select max(dt) as dt from tbl_aql_s0 where j2_job='''+edit3.text+''' and dt<'''+formatdatetime('yyyy-mm-dd',dt1)+'''';
        open;
        if not fieldbyname('dt').isnull then begin
          dt:=fieldbyname('dt').value;
          close;
          params.clear;
          commandtext:='select max(fty) as fty from tbl_aql_s0 where j2_job='''+edit3.text+''' and dt='''+formatdatetime('yyyy-mm-dd',dt)+'''';
          open;
          decodedate(dt,y,m,d);
          dt2:=encodedate(y,m,1);
          combobox2.text:=fieldbyname('fty').value;
          rb6.checked:=true; checkbox5.checked:=true; dateedit2.date:=dt2; dateedit3.date:=dt1-1;
        end else begin
          combobox2.text:='SL';
          rb6.checked:=true; checkbox5.checked:=true; dateedit2.date:=0; dateedit3.date:=0;
        end;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmdefectsummary.ComboBox2Change(Sender: TObject);
begin
  if combobox2.text<>'GG' then begin
    label32.Visible:=false;
    combobox5.Visible:=false;
  end else begin
    if checkbox1.Checked then begin
      label32.Visible:=true;
      combobox5.Visible:=true;
    end else begin
      label32.Visible:=false;
      combobox5.Visible:=false;
    end;
  end
end;

procedure Tfrmdefectsummary.CheckBox14Click(Sender: TObject);
begin
  if checkbox14.Checked then begin
    checkbox1.Checked:=false;
    checkbox2.Checked:=false;
    checkbox3.Checked:=false;
    checkbox4.Checked:=false;
    checkbox12.Checked:=false;
    checkbox11.Checked:=false;
    checkbox13.Checked:=false;
    checkbox15.Checked:=false;
    label32.Visible:=false;
    combobox5.Visible:=false;
  end;
end;

procedure Tfrmdefectsummary.CheckBox15Click(Sender: TObject);
begin
  if checkbox15.Checked then begin
    checkbox1.Checked:=false;
    checkbox2.Checked:=false;
    checkbox3.Checked:=false;
    checkbox4.Checked:=false;
    checkbox12.Checked:=false;
    checkbox11.Checked:=false;
    checkbox14.Checked:=false;
    checkbox13.Checked:=false;
    label32.Visible:=false;
    combobox5.Visible:=false;
  end;
end;

procedure Tfrmdefectsummary.BitBtn6Click(Sender: TObject);
var
  tm:tdatetime;
  dt1,dt2:tdatetime;
  cusn:string;
begin
  tm:=now;
  screen.cursor:=crSQLWait;
  label33.Caption:=formatdatetime('hh:nn:ss.zzz',now);
  try
    if combobox1.text>'' then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='select cusn from tbl_aql_cust where cust='''+combobox1.text+'''';
        open;
        cusn:=fieldbyname('cusn').value;
      end;
    end else cusn:='';
    if rb6.checked then begin
      if checkbox7.checked then begin
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select min(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_month(date1)=:x2';
          params[0].asinteger:=spinedit9.value;
          params[1].asinteger:=spinedit10.value;
          open;
          dt1:=fieldbyname('x1').value;
        end;
        with query2 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='select max(date1) as x1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and f_year(date1)=:x1 and f_month(date1)=:x2';
          params[0].asinteger:=spinedit11.value;
          params[1].asinteger:=spinedit12.value;
          open;
          dt2:=fieldbyname('x1').value;
        end;
        if checkbox15.checked then begin
          with query6 do begin
            close;
            params.clear;
            params.createparam(ftdate,'x1',ptinput);
            params.createparam(ftdate,'x2',ptinput);
            commandtext:='select distinct f_year(date1) as yr,f_month(date1) as m1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and date1>=:x1 and date1<=:x2 order by yr,m1';
            params[0].asdate:=dt1;
            params[1].asdate:=dt2;
            open;
            first;
            while not eof do begin
              with query2 do begin
                close;
                params.clear;
                params.createparam(ftstring,'x1',ptinput);
                params.createparam(ftstring,'x2',ptinput);
                params.createparam(ftinteger,'x4',ptinput);
                params.createparam(ftinteger,'x5',ptinput);
                params.createparam(ftdatetime,'x8',ptinput);
                params.createparam(ftstring,'x9',ptinput);
                params.createparam(ftstring,'x10',ptinput);
                commandtext:='execute procedure sp_aql_defectsummary_new_dailyaql_ws_style_cmp(:x1,:x2,:x4,:x5,:x8,:x9,:x10)';
                params[0].asstring:=combobox2.text;
                params[1].asstring:=combobox1.text;
                params[2].asinteger:=query6.fieldbyname('yr').value;
                params[3].asinteger:=query6.fieldbyname('m1').value;
                params[4].asdatetime:=tm;
                params[5].asstring:=combobox3.text;
                params[6].AsString:=edit2.text;
                execute;
              end;
              application.ProcessMessages;
              next;
            end;
          end;
          if frmdefectsummary5=nil then frmdefectsummary5:=tfrmdefectsummary5.create(nil);
          with frmdefectsummary5.query1 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select distinct tm,yr,m1,sum(qty1) as qty1,sum(qty2) as qty2,sum(qty3) as qty3,sum(qty4) as qty4,sum(qty5) as qty5,sum(qty6) as qty6,'
                        +'sum(qty7) as qty7,sum(qty8) as qty8,sum(qty9) as qty9,sum(mq1) as mq1,sum(mq2) as mq2,sum(mq3) as mq3,sum(mq4) as mq4,sum(mq5) as mq5,'
                        +'sum(mq6) as mq6,sum(mq7) as mq7,sum(mq8) as mq8,sum(mq9) as mq9,sum(oqty) as oqty,sum(moq) as moq,sum(tqty) as tqty,sum(sqty1) as sqty1,'
                        +'sum(qty) as qty,sum(majr) as majr,sum(minr) as minr from tbl_aql_defectsummary2_cmp where tm=:x1 group by tm,yr,m1 order by yr,m1';
            params[0].asdatetime:=tm;
            open;
            if not fieldbyname('tm').isnull then begin
              //

              if combobox2.text>'' then frmdefectsummary5.fty001.caption:='Factory / 工廠: '+combobox2.text
              else frmdefectsummary5.fty001.Caption:='China Region / 中國區 ';

              if (spinedit9.value=spinedit11.value) and (spinedit10.value=spinedit12.value) then
                frmdefectsummary5.wk001.caption:='[Month/月 '+inttostr(spinedit9.value)+'-'+inttostr(spinedit10.value)+']'
              else frmdefectsummary5.wk001.Caption:='[Periodic/定期 (Month from/月 從  '+inttostr(spinedit9.value)+'-'+inttostr(spinedit10.value)+'  to/到  '+inttostr(spinedit11.value)+'-'+inttostr(spinedit12.value)+')]';

              frmdefectsummary5.sub001.Caption:=cusn+' - Periodic Off-line AQL Audit Quality Performance Comprison per month Analysis Report';
              frmdefectsummary5.sub002.caption:='定期離線AQL檢定品質表現比較每月之分析報告';
              frmdefectsummary5.style001.Caption:='Cust Style No ';
              frmdefectsummary5.style002.caption:='客戶款號 ';

              with frmdefectsummary5.query2 do begin
                close;
                params.clear;
                params.createparam(ftdate,'x1',ptinput);
                params.createparam(ftdate,'x2',ptinput);
                commandtext:='select count(distinct cust) as c1,count(distinct pline) as p1,count(distinct cstyle) as x1,count(distinct pono) as x2,sum(qty) as x3,sum(qty1) as x4,sum(qty+qr) as x5,count(distinct ws) as x6,count(*) as x7 '
                            +'from tbl_aql_s0 where dt>=:x1 and dt<=:x2 ';
                if checkbox3.checked then commandtext:=commandtext+' and dailyaql<>0'
                else if checkbox4.Checked then commandtext:=commandtext+' and dailyaql1<>0';
                if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
                if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
                if combobox3.text>'' then commandtext:=commandtext+' and ws='''+combobox3.text+'''';
                if edit2.text>'' then commandtext:=commandtext+' and cstyle='''+edit2.text+'''';
                params[0].asdate:=dt1;
                params[1].asdate:=dt2;
                open;
                if not fieldbyname('x1').isnull then begin
                  frmdefectsummary5.cust001.Caption:='No of Customer(s): '+fieldbyname('c1').asstring;
                  frmdefectsummary5.cust002.caption:='客戶數 ';
                  frmdefectsummary5.line001.Caption:='No of Assembly line(s) / 組裝線數: '+fieldbyname('p1').asstring;
                  frmdefectsummary5.styles001.Caption:='No of style(s): '+fieldbyname('x1').asstring;
                  frmdefectsummary5.styles002.Caption:='款號數 ';
                  frmdefectsummary5.pos001.Caption:='No of PO(s): '+fieldbyname('x2').asstring;
                  frmdefectsummary5.pos002.Caption:='PO 數 ';
                  frmdefectsummary5.ws001.caption:='No of Ws / 組裝工場數: '+fieldbyname('x6').asstring;
                  frmdefectsummary5.shp001.Caption:='Shpt Qty being Audit: '+fieldbyname('x3').asstring;
                  frmdefectsummary5.sample001.Caption:='Sample Gmts: '+fieldbyname('x4').asstring;
                  frmdefectsummary5.samp002.Caption:='成衣樣板數量 ';
                  frmdefectsummary5.shp002.Caption:='已檢定之待出貨數量 ';
                end else begin
                  frmdefectsummary5.styles001.Caption:='0';
                  frmdefectsummary5.pos001.Caption:='0';
                  frmdefectsummary5.shp001.Caption:='0';
                  frmdefectsummary5.sample001.Caption:='0';
                end;
              end;
              with frmdefectsummary5.query2 do begin
                close;
                params.clear;
                params.createparam(ftstring,'x1',ptinput);
                params.createparam(ftstring,'x2',ptinput);
                params.createparam(ftstring,'x3',ptinput);
                params.createparam(ftstring,'x4',ptinput);
                params.createparam(ftdate,'x5',ptinput);
                params.createparam(ftdate,'x6',ptinput);
                params.createparam(ftstring,'x7',ptinput);
                params.createparam(ftstring,'x8',ptinput);
                commandtext:='select * from SP_AQL_RESULT(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
                params[0].asstring:=combobox2.text;
                params[1].asstring:=combobox3.text;
                params[2].asstring:=combobox1.text;
                params[3].asstring:=edit2.text;
                params[4].asdate:=dt1;
                params[5].asdate:=dt2;
                params[6].asstring:='4';
                params[7].asstring:='AQL';
                open;
                if not fieldbyname('acc1').IsNull then frmdefectsummary5.acc001.Caption:=fieldbyname('acc1').asstring;
                if not fieldbyname('acc01').IsNull then frmdefectsummary5.macc001.Caption:=fieldbyname('acc01').asstring;
                if not fieldbyname('rej1').IsNull then frmdefectsummary5.rej001.Caption:=fieldbyname('rej1').asstring;
                if not fieldbyname('acc2').IsNull then frmdefectsummary5.acc002.Caption:=fieldbyname('acc2').asstring;
                if not fieldbyname('acc02').IsNull then frmdefectsummary5.macc002.Caption:=fieldbyname('acc02').asstring;
                if not fieldbyname('rej2').IsNull then frmdefectsummary5.rej002.Caption:=fieldbyname('rej2').asstring;
                if not fieldbyname('acc3').IsNull then frmdefectsummary5.acc003.Caption:=fieldbyname('acc3').asstring;
                if not fieldbyname('acc03').IsNull then frmdefectsummary5.macc003.Caption:=fieldbyname('acc03').asstring;
                if not fieldbyname('rej3').IsNull then frmdefectsummary5.rej003.Caption:=fieldbyname('rej3').asstring;
                if not fieldbyname('acc4').IsNull then frmdefectsummary5.acc004.Caption:=fieldbyname('acc4').asstring;
                if not fieldbyname('acc04').IsNull then frmdefectsummary5.macc004.Caption:=fieldbyname('acc04').asstring;
                if not fieldbyname('rej4').IsNull then frmdefectsummary5.rej004.Caption:=fieldbyname('rej4').asstring;
                if not fieldbyname('acc5').IsNull then frmdefectsummary5.acc005.Caption:=fieldbyname('acc5').asstring;
                if not fieldbyname('acc05').IsNull then frmdefectsummary5.macc005.Caption:=fieldbyname('acc05').asstring;
                if not fieldbyname('rej5').IsNull then frmdefectsummary5.rej005.Caption:=fieldbyname('rej5').asstring;
                if not fieldbyname('ttl').IsNull then frmdefectsummary5.adt001.Caption:=fieldbyname('ttl').asstring;
              end;
              frmdefectsummary5.ppReport3.print;
            end;
          end;
        end else if checkbox14.checked then begin
          with query6 do begin
            close;
            params.clear;
            params.createparam(ftdate,'x1',ptinput);
            params.createparam(ftdate,'x2',ptinput);
            commandtext:='select distinct f_year(date1) as yr,f_month(date1) as m1 from tplant_wk52 where tplant=''SL'' and opt_c=1 and date1>=:x1 and date1<=:x2 order by yr,m1';
            params[0].asdate:=dt1;
            params[1].asdate:=dt2;
            open;
            first;
            while not eof do begin
              with query2 do begin
                close;
                params.clear;
                params.createparam(ftstring,'x1',ptinput);
                params.createparam(ftstring,'x2',ptinput);
                params.createparam(ftinteger,'x4',ptinput);
                params.createparam(ftinteger,'x5',ptinput);
                params.createparam(ftdatetime,'x8',ptinput);
                params.createparam(ftstring,'x9',ptinput);
                params.createparam(ftstring,'x10',ptinput);
                commandtext:='execute procedure sp_aql_defectsummary_new_fullinspection_ws_style_cmp(:x1,:x2,:x4,:x5,:x8,:x9,:x10)';
                params[0].asstring:=combobox2.text;
                params[1].asstring:=combobox1.text;
                params[2].asinteger:=query6.fieldbyname('yr').value;
                params[3].asinteger:=query6.fieldbyname('m1').value;
                params[4].asdatetime:=tm;
                params[5].asstring:=combobox3.text;
                params[6].asstring:=edit2.Text;
                execute;
              end;
              application.ProcessMessages;
              next;
            end;
          end;
          if frmdefectsummary6=nil then frmdefectsummary6:=tfrmdefectsummary6.create(nil);
          with frmdefectsummary6.query1 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select distinct tm,yr,m1,sum(qty1) as qty1,sum(qty2) as qty2,sum(qty3) as qty3,sum(qty4) as qty4,sum(qty5) as qty5,sum(qty6) as qty6,'
                        +'sum(qty7) as qty7,sum(qty8) as qty8,sum(qty9) as qty9,sum(mq1) as mq1,sum(mq2) as mq2,sum(mq3) as mq3,sum(mq4) as mq4,sum(mq5) as mq5,'
                        +'sum(mq6) as mq6,sum(mq7) as mq7,sum(mq8) as mq8,sum(mq9) as mq9,sum(oqty) as oqty,sum(moq) as moq,sum(tqty) as tqty,sum(sqty1) as sqty1,'
                        +'sum(qty) as qty,sum(majr) as majr,sum(minr) as minr from tbl_aql_defectsummary2_cmp where tm=:x1 group by tm,yr,m1 order by yr,m1';
            params[0].asdatetime:=tm;
            open;
            if not fieldbyname('tm').isnull then begin
              if combobox2.text>'' then frmdefectsummary6.fty001.caption:='Factory / 工廠: '+combobox2.text
              else frmdefectsummary6.fty001.Caption:='China Region / 中國區 ';
              if (spinedit9.value=spinedit11.value) and (spinedit10.value=spinedit12.value) then
                frmdefectsummary6.wk001.caption:='[Month/月 '+inttostr(spinedit9.value)+'-'+inttostr(spinedit10.value)+']'
              else frmdefectsummary6.wk001.Caption:='[Periodic/定期 (Month from/月 從  '+inttostr(spinedit9.value)+'-'+inttostr(spinedit10.value)+'  to/到  '+inttostr(spinedit11.value)+'-'+inttostr(spinedit12.value)+')]';

              frmdefectsummary6.sub001.Caption:=cusn+' - Periodic In-line Full Inspection Quality Performance Comprison per month Analysis Report';
              frmdefectsummary6.sub002.caption:='定期上線全審查品質表現比較每月之分析報告';
              frmdefectsummary6.style001.Caption:='Cust Style No ';
              frmdefectsummary6.style002.caption:='客戶款號 ';

              with frmdefectsummary6.query2 do begin
                close;
                params.clear;
                params.createparam(ftdate,'x1',ptinput);
                params.createparam(ftdate,'x2',ptinput);
                commandtext:='select count(distinct cust) as c1,count(distinct pline) as p1,count(distinct cstyle) as x1,count(distinct pono) as x2,sum(qty) as x3,sum(qty1) as x4,sum(qty+qr) as x5,count(distinct ws) as x6,count(*) as x7 '
                            +'from tbl_aql_s0 where dt>=:x1 and dt<=:x2 ';
                if checkbox1.checked then commandtext:=commandtext+' and hun_check<>0'
                else if checkbox2.Checked then commandtext:=commandtext+' and endline<>0';
                if combobox1.text>'' then commandtext:=commandtext+' and cust='''+combobox1.text+'''';
                if combobox2.text>'' then commandtext:=commandtext+' and fty='''+combobox2.text+'''';
                if combobox3.text>'' then commandtext:=commandtext+' and ws='''+combobox3.text+'''';
                if combobox5.visible=true then commandtext:=commandtext+' and loc='''+combobox5.text+'''';
                if edit2.text>'' then commandtext:=commandtext+' and cstyle='''+edit2.text+'''';
                params[0].asdate:=dt1;
                params[1].asdate:=dt2;
                open;
                if not fieldbyname('x1').isnull then begin
                  frmdefectsummary6.cust001.Caption:='No of Customer(s): '+fieldbyname('c1').asstring;
                  frmdefectsummary6.cust002.caption:='客戶數 ';
                  frmdefectsummary6.line001.Caption:='No of Assembly line(s) / 組裝線數: '+fieldbyname('p1').asstring;
                  frmdefectsummary6.styles001.Caption:='No of style(s): '+fieldbyname('x1').asstring;
                  frmdefectsummary6.styles002.Caption:='款號數 ';
                  frmdefectsummary6.pos001.Caption:='No of PO(s): '+fieldbyname('x2').asstring;
                  frmdefectsummary6.pos002.Caption:='PO 數 ';
                  frmdefectsummary6.ws001.caption:='No of Ws / 組裝工場數: '+fieldbyname('x6').asstring;
                  if checkbox1.checked then begin
                    frmdefectsummary6.shp001.Caption:='Sewn Qty being Audit: '+fieldbyname('x3').asstring;
                    frmdefectsummary6.sample001.Caption:='Sample Garments (Full Audit (ttl)): '+fieldbyname('x5').asstring;
                    frmdefectsummary6.samp002.Caption:='成衣樣板數量 (全檢定(總數))';
                    frmdefectsummary6.shp002.Caption:='已檢定之縫合成衣數量 ';
                    frmdefectsummary6.sx01.Caption:='Audit';
                    frmdefectsummary6.sx02.Caption:='已檢定之';
                    frmdefectsummary6.sx03.Caption:='(Full Audit (ttl))';
                    frmdefectsummary6.sx04.Caption:='(全檢定(總數))';
                  end else if checkbox2.Checked then begin
                    frmdefectsummary6.shp001.Caption:='Sewn Qty being Inspect: '+fieldbyname('x3').asstring;
                    frmdefectsummary6.sample001.Caption:='Sample Garments (Inspected ttl): '+fieldbyname('x5').asstring;
                    frmdefectsummary6.samp002.Caption:='成衣樣板數量 (全審查數)';
                    frmdefectsummary6.shp002.Caption:='已審查之縫合成衣數量 ';
                    frmdefectsummary6.sx01.Caption:='Inspect';
                    frmdefectsummary6.sx02.Caption:='已審查之';
                    frmdefectsummary6.sx03.Caption:='(Inspected ttl)';
                    frmdefectsummary6.sx04.Caption:='(全審查數)';
                  end;
                end else begin
                  frmdefectsummary6.styles001.Caption:='0';
                  frmdefectsummary6.pos001.Caption:='0';
                  frmdefectsummary6.shp001.Caption:='0';
                  frmdefectsummary6.sample001.Caption:='0';
                end;
              end;
              frmdefectsummary6.ppReport3.print;
            end;
          end;
        end;

      end;
    end;
  finally
    label34.Caption:=formatdatetime('hh:nn:ss.zzz',now);
    screen.cursor:=crDefault;
  end;
end;

end.
