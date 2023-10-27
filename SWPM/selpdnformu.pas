unit selpdnformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGridEh, Buttons, DB, DBClient, GridsEh, Spin,
  DateUtils, ppParameter, ppMemo, ppCtrls, ppBands, ppClass, myChkBox, ppReport,
  ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppViewr, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxSSheet, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxLabel;

type
  Tfrmselpdn = class(TForm)
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    yEdit1: TSpinEdit;
    Label4: TLabel;
    wEdit1: TSpinEdit;
    BitBtn3: TBitBtn;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    ROQuery1: TClientDataSet;
    ClientDataSet1: TClientDataSet;
    BitBtn9: TBitBtn;
    DataSource2: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    title001: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    exfty001: TppLabel;
    ppLabel21: TppLabel;
    week01: TppLabel;
    ppLabel27: TppLabel;
    fty001: TppLabel;
    from001: TppLabel;
    exfty002: TppLabel;
    to001: TppLabel;
    ppLabel37: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel38: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    sdd01: TppDBText;
    sdp01: TppLabel;
    cstyle001: TppDBText;
    ppDBText20: TppDBText;
    ppDBText28: TppDBText;
    ppDBText19: TppDBText;
    ppDBText30: TppDBText;
    oth001: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel26: TppLabel;
    ppLabel54: TppLabel;
    ppLabel76: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel30: TppLabel;
    ppMemo1: TppMemo;
    ppLabel31: TppLabel;
    ppMemo2: TppMemo;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape3: TppShape;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel25: TppLabel;
    ppLabel33: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel47: TppLabel;
    srwo01: TppLabel;
    ss101: TppLabel;
    ss103: TppLabel;
    ss104: TppLabel;
    ss106: TppLabel;
    ss107: TppLabel;
    ss108: TppLabel;
    ss111: TppLabel;
    ss113: TppLabel;
    ss114: TppLabel;
    ss116: TppLabel;
    ss118: TppLabel;
    ppLabel19: TppLabel;
    ppLabel53: TppLabel;
    ppLabel57: TppLabel;
    ppLine5: TppLine;
    ppLabel1: TppLabel;
    ppLine6: TppLine;
    ppLabel29: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel65: TppLabel;
    ppLabel128: TppLabel;
    ppLabel71: TppLabel;
    ppLabel64: TppLabel;
    ppLabel143: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel44: TppLabel;
    ppLabel61: TppLabel;
    ppLabel69: TppLabel;
    ppLabel144: TppLabel;
    ppLabel150: TppLabel;
    ppLabel63: TppLabel;
    ppLabel68: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel49: TppLabel;
    ppLabel62: TppLabel;
    ppLabel70: TppLabel;
    ppLabel112: TppLabel;
    ppLabel131: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel149: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLine26: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape4: TppShape;
    ppLabel96: TppLabel;
    sbq01: TppDBCalc;
    sbd01: TppDBCalc;
    sb103: TppDBCalc;
    sb104: TppDBCalc;
    sb106: TppDBCalc;
    sb108: TppDBCalc;
    sb101: TppDBCalc;
    sbp01: TppLabel;
    sb107: TppDBCalc;
    sb102: TppDBCalc;
    ttl001: TppLabel;
    sb010: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    oth003: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppParameterList1: TppParameterList;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel2: TppLabel;
    ppDBText4: TppDBText;
    ppLabel3: TppLabel;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBText16: TppDBText;
    shpm001: TppLabel;
    ppDBText5: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    BitBtn8: TBitBtn;
    cxSheet1: TcxSpreadSheet;
    SaveDialog1: TSaveDialog;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    chk1: TCheckBox;
    Label1: TLabel;
    wEdit2: TSpinEdit;
    BitBtn10: TBitBtn;
    Query7: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    Query8: TClientDataSet;
    DataSource4: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    Query9: TClientDataSet;
    DataSource5: TDataSource;
    ppDBPipeline4: TppDBPipeline;
    ppReport2: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppDBText31: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel6: TppLabel;
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
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine7: TppLine;
    ppLabel9: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel28: TppLabel;
    ppLabel32: TppLabel;
    ppLabel39: TppLabel;
    ppLabel45: TppLabel;
    ppLabel48: TppLabel;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel56: TppLabel;
    ppLabel74: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel80: TppLabel;
    ppLabel82: TppLabel;
    ppLabel84: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine27: TppLine;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel93: TppLabel;
    ppLabel95: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel101: TppLabel;
    ppLabel103: TppLabel;
    ppLabel105: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel110: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel123: TppLabel;
    ppLabel125: TppLabel;
    ppLabel127: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
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
    ppLine41: TppLine;
    ppFooterBand3: TppFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppHeaderBand3: TppHeaderBand;
    ppLine67: TppLine;
    ppLine69: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine76: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppHeaderBand4: TppHeaderBand;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText99: TppDBText;
    ppShape8: TppShape;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppLabel210: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel211: TppLabel;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape19: TppShape;
    ppLine42: TppLine;
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
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel34: TppLabel;
    ppLabel43: TppLabel;
    ppLabel46: TppLabel;
    ppLabel50: TppLabel;
    ppLabel55: TppLabel;
    ppLabel58: TppLabel;
    ppLabel75: TppLabel;
    ppLabel79: TppLabel;
    ppLabel81: TppLabel;
    ppLabel83: TppLabel;
    ppLabel85: TppLabel;
    ppLabel92: TppLabel;
    ppLabel94: TppLabel;
    ppLabel97: TppLabel;
    ppLabel102: TppLabel;
    ppLabel104: TppLabel;
    ppLabel106: TppLabel;
    ppLabel109: TppLabel;
    ppLabel111: TppLabel;
    ppLabel116: TppLabel;
    ppLabel119: TppLabel;
    ppLabel122: TppLabel;
    ppLabel124: TppLabel;
    ppLabel126: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
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
    ppLine68: TppLine;
    ppLine70: TppLine;
    ppLine75: TppLine;
    ppLine77: TppLine;
    ppLine94: TppLine;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
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
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
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
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppLine120: TppLine;
    ppLine121: TppLine;
    ppLine122: TppLine;
    ppShape18: TppShape;
    ppShape7: TppShape;
    ppLabel100: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLine126: TppLine;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLabel199: TppLabel;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    ppLine127: TppLine;
    ppLine128: TppLine;
    ppLine129: TppLine;
    ppLine130: TppLine;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppDBText122: TppDBText;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppShape17: TppShape;
    ppLabel200: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
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
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselpdn: Tfrmselpdn;

implementation

uses mainformu, pdnformu, pdnrpt5formu, pdnrpt6formu, shpadviceformu,
  pdnlogcstformu, pdn_deadstockformu;

{$R *.dfm}

procedure Tfrmselpdn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmpdnrpt5<>nil then frmpdnrpt5:=nil;
  if frmpdnrpt6<>nil then frmpdnrpt6:=nil;
  action:=cafree;
  frmselpdn:=nil;
end;

procedure Tfrmselpdn.FormShow(Sender: TObject);
var
  fty:string;
begin
  if frmpdn=nil then combobox1.text:='SL'
  else begin
    if frmpdn.combobox1.text>'' then
    combobox1.text:=frmpdn.combobox1.text
    else combobox1.text:='SL';
  end;
  if combobox1.text='PHSL' then fty:='SL' else fty:=combobox1.text;
  yEdit1.Value:=yearof(date);
  if frmpdn=nil then wEdit1.Value:=frmmain.weekno(date) //weekof(date)
  else wEdit1.Value:=frmpdn.wEdit1.value;
  if frmpdn=nil then wEdit2.Value:=frmmain.weekno(date) //weekof(date)
  else wEdit2.Value:=frmpdn.wEdit1.value;
  if (pos('CARTE',frmpdn.caption)>0) or (pos('OCEN',frmpdn.caption)>0) then bitbtn10.visible:=true else bitbtn10.visible:=false;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_pdn_m where tplant='''+fty+''' and wk='+inttostr(wEdit1.value)+' and f_year(exfty)='+inttostr(yEdit1.value);
    if pos('CARTE',frmpdn.caption)>0 then commandtext:=commandtext+' and cust=''CT'''
    else if pos('OCEN',frmpdn.caption)>0 then commandtext:=commandtext+' and ((cust=''OC'') or (cust=''ON''))'
    else commandtext:=commandtext+' and cust<>''CT'' and cust<>''OC'' and cust<>''ON''';
    commandtext:=commandtext+' order by wk,cust,exfty,tplant';
    open;
  end;
end;

procedure Tfrmselpdn.ppDetailBand1BeforePrint(Sender: TObject);
begin
  oth001.caption:=inttostr(query5.fieldbyname('spqty').value+query5.fieldbyname('writeoff').value+query5.fieldbyname('lstqty').value);
  sdp01.caption:='('+formatfloat('0.00',query5.fieldbyname('diff').value*100.00/query5.fieldbyname('sqty').value)+')';
end;

procedure Tfrmselpdn.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  oth003.caption:=inttostr(ppdbcalc4.value+ppdbcalc6.value+ppdbcalc1.value);
  sbp01.caption:='('+formatfloat('0.00',sbd01.value*100.00/sbq01.value)+')';
  ttl001.caption:='';
end;

procedure Tfrmselpdn.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select shpm from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query5.fieldbyname('seq').value;
    params[1].asinteger:=query5.fieldbyname('seq1').value;
    open;
    if not fieldbyname('shpm').isnull then shpm001.caption:=fieldbyname('shpm').value
    else shpm001.caption:='';
  end;
end;

procedure Tfrmselpdn.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select min(exfty) as x1,max(exfty) as x2 from tbl_pdn_voyage_tmp where tm=:x1';
    params[0].asdatetime:=query5.fieldbyname('tm').value;
    open;
    exfty001.caption:=formatdatetime('yyyy-MM-dd',fieldbyname('x1').value);
    exfty002.caption:=formatdatetime('yyyy-MM-dd',fieldbyname('x2').value);
  end;
end;

procedure Tfrmselpdn.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmselpdn.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmselpdn.BitBtn10Click(Sender: TObject);
var
  tm0:tdatetime;
begin
  tm0:=now;
  screen.cursor:=crSQLWait;
  try
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='execute procedure sp_pdn_cartereport(:x1,:x2)';
      params[0].asdatetime:=tm0;
      params[1].asdate:=date;
      execute;
    end;
    with query8 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_pdn_ctrpt1 where tm=:x1 order by seq,seq1';
      params[0].asdatetime:=tm0;
      open;
    end;
    with query9 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_pdn_ctrpt3 where tm=:x1 order by seq';
      params[0].asdatetime:=tm0;
      open;
    end;
    with query7 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_pdn_ctrpt where tm=:x1 order by seq,seq1';
      params[0].asdatetime:=tm0;
      open;
      if not fieldbyname('tm').isnull then begin
        ppReport2.print;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmselpdn.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if not query1.fieldbyname('pdn').isnull then begin
    frmpdn.Edit1.text:=query1.fieldbyname('pdn').value;
    frmpdn.ComboBox1.text:=query1.fieldbyname('tplant').value;
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='execute procedure sp_pdn_updrwosqty(:x1)';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    with frmpdn.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_pdn_m where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
    end;
    frmpdn.opentable(query1.fieldbyname('seq').value);
    if frmpdn.query4.active=false then frmpdn.combobox1change(self)
    else if frmpdn.query4.fieldbyname('fty').value<>query1.fieldbyname('tplant').value then
    frmpdn.combobox1change(self);
  end;
  frmselpdn.close;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmselpdn.ComboBox1Change(Sender: TObject);
var
  fty:string;
begin
  if combobox1.text>'' then begin
    if combobox1.text='PHSL' then fty:='SL' else fty:=combobox1.text;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_pdn_m where wk>='+inttostr(wEdit1.value)+' and wk<='+inttostr(wEdit2.value);
      if wEdit1.Value>=1 then commandtext:=commandtext+' and f_year(exfty)='+inttostr(yEdit1.value)
      else commandtext:=commandtext+' and ((f_month(exfty)=12 and f_year(exfty)='+inttostr(yEdit1.value-1)+') or (f_month(exfty)=1 and f_year(exfty)='+inttostr(yEdit1.Value)+'))';
      if pos('CARTE',frmpdn.caption)>0 then commandtext:=commandtext+' and cust=''CT'''
      else if pos('OCEN',frmpdn.caption)>0 then commandtext:=commandtext+' and ((cust=''OC'') or (cust=''ON''))'
      else commandtext:=commandtext+' and cust<>''CT'' and cust<>''OC'' and cust<>''ON''';
      if combobox1.text<>'GX' then commandtext:=commandtext+' and tplant='''+fty+''''
      else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
      commandtext:=commandtext+' order by wk,cust,exfty,tplant';
      open;
    end;
  end else begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_pdn_m where wk>='+inttostr(wEdit1.value)+' and wk<='+inttostr(wEdit2.value);
      if wEdit1.Value>=1 then commandtext:=commandtext+' and f_year(exfty)='+inttostr(yEdit1.value)
      else commandtext:=commandtext+' and ((f_month(exfty)=12 and f_year(exfty)='+inttostr(yEdit1.value-1)+') or (f_month(exfty)=1 and f_year(exfty)='+inttostr(yEdit1.Value)+'))';
      if pos('CARTE',frmpdn.caption)>0 then commandtext:=commandtext+' and cust=''CT'''
      else if pos('OCEN',frmpdn.caption)>0 then commandtext:=commandtext+' and ((cust=''OC'') or (cust=''ON''))'
      else commandtext:=commandtext+' and cust<>''CT'' and cust<>''OC'' and cust<>''ON''';
      commandtext:=commandtext+' order by wk,cust,exfty,tplant';
      open;
    end;
  end;
end;

procedure Tfrmselpdn.BitBtn2Click(Sender: TObject);
var
  tm:tdatetime;
  seq1:integer;
  d1,d2,tmc:string;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  tmc:=formatdatetime('yyyyMMdd hhnnsszzz',tm);
  try
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_pdn_salesplan(:x1,:x2,:x3,:x4)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      params[2].asinteger:=yedit1.Value;
      params[3].asinteger:=wedit1.Value;
      execute;
    end;
    }
    with query2 do begin
      close;
      params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select distinct seq from tbl_pdn_m where wk=:x1 and f_year(exfty)=:x2';//'+inttostr(wEdit1.value)+' and f_year(exfty)='+inttostr(yEdit1.value)+'';
        //if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        if combobox1.text='GX' then commandtext:=commandtext+' and tplant in (''GG'',''RX'')'
        else if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
        if pos('CARTE',frmpdn.caption)>0 then commandtext:=commandtext+' and cust=''CT'''
        else if pos('OCEN',frmpdn.caption)>0 then commandtext:=commandtext+' and ((cust=''OC'') or (cust=''ON''))'
        else commandtext:=commandtext+' and cust<>''CT'' and cust<>''OC'' and cust<>''ON''';
        params[0].asinteger:=wedit1.Value;
        params[1].asinteger:=yedit1.Value;
      open;
      first;
      while not eof do begin
        //with query3 do begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select seq1 from tbl_pdn_voyage_m where seq=:x1';
          params[0].asinteger:=query2.fieldbyname('seq').value;
          open;
          if not fieldbyname('seq1').isnull then seq1:=1 else seq1:=0;
        end;
        with clientdataset1 do begin
        //with roquery1 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          if chk1.checked then begin
            if seq1=0 then
            commandtext:='execute procedure sp_pdn_wksum_new_minusshp(:x1,:x2,:x3)'
            else commandtext:='execute procedure sp_pdn_wksum_1_new_minusshp(:x1,:x2,:x3)';
          end else begin
            if seq1=0 then
            commandtext:='execute procedure sp_pdn_wksum_new(:x1,:x2,:x3)'
            else commandtext:='execute procedure sp_pdn_wksum_1_new(:x1,:x2,:x3)';
          end;
          params[0].asdatetime:=tm;
          params[1].asinteger:=query2.fieldbyname('seq').value;
          params[2].asstring:=tmc;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    if frmpdnrpt5=nil then frmpdnrpt5:=tfrmpdnrpt5.create(nil);
    with frmpdnrpt5.Query2 do begin
      close;
      params.clear;
      //params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select min(exfty) as d1,max(exfty) as d2 from tbl_pdn_wksum where tm=:x1';
      //params[0].asdatetime:=tm;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='select min(exfty) as d1,max(exfty) as d2 from tbl_pdn_wksum where tmc=:x1';
      params[0].asstring:=tmc;
      open;
          if not frmpdnrpt5.Query2.fieldbyname('d1').isnull then
            d1:=formatdatetime('yyyy/MM/dd',frmpdnrpt5.Query2.fieldbyname('d1').value)
          else d1:='';
          if not frmpdnrpt5.Query2.fieldbyname('d2').isnull then
            d2:=formatdatetime('yyyy/MM/dd',frmpdnrpt5.Query2.fieldbyname('d2').value)
          else d2:='';

    end;
    if wedit1.Value>1 then begin
      with frmpdnrpt5.query1 do begin
        close;
        params.clear;
        //params.createparam(ftdatetime,'x1',ptinput);
        //commandtext:='select * from tbl_pdn_wksum where tm=:x1 order by wk,cust,tplant,pdn,memo1,seq1,exfty';
        //params[0].asdatetime:=tm;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='select * from tbl_pdn_wksum where tmc=:x1 order by wk,cust,tplant,pdn,seq1,memo1,exfty';
        params[0].asstring:=tmc;
        open;
        if not fieldbyname('tm').isnull then begin
          frmpdnrpt5.fty001.Caption:=combobox1.text;
          frmpdnrpt5.week01.Caption:=inttostr(wEdit1.value);
          {
          if not frmpdnrpt5.Query2.fieldbyname('d1').isnull then
            frmpdnrpt5.exfty001.Caption:=formatdatetime('yyyy/MM/dd',frmpdnrpt5.Query2.fieldbyname('d1').value)
          else frmpdnrpt5.exfty001.Caption:='';
          if not frmpdnrpt5.Query2.fieldbyname('d2').isnull then
            frmpdnrpt5.exfty002.Caption:=formatdatetime('yyyy/MM/dd',frmpdnrpt5.Query2.fieldbyname('d2').value)
          else frmpdnrpt5.exfty002.Caption:='';
          }
          frmpdnrpt5.exfty001.Caption:=d1;
          frmpdnrpt5.exfty002.Caption:=d2;
          if pos('CARTE',frmpdn.caption)>0 then
          frmpdnrpt5.title001.caption:='PDN Summarized Dashboard - CWO - CARTE '
          else if pos('OCEN',frmpdn.caption)>0 then
          frmpdnrpt5.title001.caption:='PDN Summarized Dashboard - CWO - OCEN '
          else frmpdnrpt5.title001.caption:='PDN Summarized Dashboard - CWO  ';
          if wEdit1.Value=53 then begin
            if yEdit1.value=2008 then
              frmpdnrpt5.title002.Caption:=' -  Sim Week 53 [which is same as Week 1 of Yr 07-08 at 2007]'
            else if yEdit1.Value=2009 then
              frmpdnrpt5.title002.Caption:=' -  Sim Week 53 [which is same as Week 1 of Yr 08-09 at 2008]';
          end else frmpdnrpt5.title002.caption:='';
          if combobox1.text='CL' then begin
            frmpdnrpt5.pplabel105.caption:='CL';
            frmpdnrpt5.pplabel110.caption:='CL';
            frmpdnrpt5.pplabel106.visible:=false;
            frmpdnrpt5.pplabel111.visible:=false;
            //frmpdnrpt5.pplabel91.visible:=false;
            //frmpdnrpt5.pplabel92.visible:=false;
            //frmpdnrpt5.pplabel93.visible:=false;
            frmpdnrpt5.ppdbtext4.visible:=false;
            frmpdnrpt5.ppdbtext16.visible:=false;
            frmpdnrpt5.ppdbtext18.visible:=false;
            frmpdnrpt5.ppdbcalc8.visible:=false;
            frmpdnrpt5.ppdbcalc14.visible:=false;
            frmpdnrpt5.ppdbcalc15.visible:=false;
            frmpdnrpt5.ppGroupFooterBand5.Visible:=false;
            frmpdnrpt5.ppGroupFooterBand7.Visible:=true;
          end else begin
            frmpdnrpt5.pplabel105.caption:='SL';
            frmpdnrpt5.pplabel110.caption:='SL';
            frmpdnrpt5.pplabel106.visible:=true;
            frmpdnrpt5.pplabel111.visible:=true;
            //frmpdnrpt5.pplabel91.visible:=true;
            //frmpdnrpt5.pplabel92.visible:=true;
            //frmpdnrpt5.pplabel93.visible:=true;
            frmpdnrpt5.ppdbtext4.visible:=true;
            frmpdnrpt5.ppdbtext16.visible:=true;
            frmpdnrpt5.ppdbtext18.visible:=true;
            frmpdnrpt5.ppdbcalc8.visible:=true;
            frmpdnrpt5.ppdbcalc14.visible:=true;
            frmpdnrpt5.ppdbcalc15.visible:=true;
            frmpdnrpt5.ppGroupFooterBand5.Visible:=false;//true;
            frmpdnrpt5.ppGroupFooterBand7.Visible:=true;
          end;
          frmpdnrpt5.ppReport1.Print;
        end;
      end;
    end else begin
      {
      with frmpdnrpt5.query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_pdn_wksum where tm=:x1 and f_month(exfty)=12 order by wk,cust,tplant,memo1,seq1,exfty';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          frmpdnrpt5.fty001.Caption:=combobox1.text;
          frmpdnrpt5.week01.Caption:=inttostr(wEdit1.value);
          frmpdnrpt5.exfty001.Caption:=d1;
          frmpdnrpt5.exfty002.Caption:=d2;
          frmpdnrpt5.title002.Caption:=' -  Week 1 of Yr 07-08 at 2007';
          frmpdnrpt5.ppReport1.Print;
        end;
      end;
      }
      with frmpdnrpt5.query1 do begin
        close;
        params.clear;
        //params.createparam(ftdatetime,'x1',ptinput);
        //commandtext:='select * from tbl_pdn_wksum where tm=:x1 and f_month(exfty)=1 order by wk,cust,tplant,pdn,memo1,seq1,exfty';
        //params[0].asdatetime:=tm;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='select * from tbl_pdn_wksum where tmc=:x1 and f_month(exfty)=1 order by wk,cust,tplant,pdn,seq1,memo1,exfty';
        params[0].asstring:=tmc;
        open;
        if not fieldbyname('tm').isnull then begin
          frmpdnrpt5.fty001.Caption:=combobox1.text;
          frmpdnrpt5.week01.Caption:=inttostr(wEdit1.value);
          {
          if not frmpdnrpt5.Query2.fieldbyname('d1').isnull then
            frmpdnrpt5.exfty001.Caption:=formatdatetime('yyyy/MM/dd',frmpdnrpt5.Query2.fieldbyname('d1').value)
          else frmpdnrpt5.exfty001.Caption:='';
          if not frmpdnrpt5.Query2.fieldbyname('d2').isnull then
            frmpdnrpt5.exfty002.Caption:=formatdatetime('yyyy/MM/dd',frmpdnrpt5.Query2.fieldbyname('d2').value)
          else frmpdnrpt5.exfty002.Caption:='';
          }
          frmpdnrpt5.exfty001.Caption:=d1;
          frmpdnrpt5.exfty002.Caption:=d2;
          if pos('CARTE',frmpdn.caption)>0 then
          frmpdnrpt5.title001.caption:='PDN Summarized Dashboard - CWO - CARTE '
          else if pos('OCEN',frmpdn.caption)>0 then
          frmpdnrpt5.title001.caption:='PDN Summarized Dashboard - CWO - OCEN '
          else frmpdnrpt5.title001.caption:='PDN Summarized Dashboard - CWO  ';
          //frmpdnrpt5.title001.caption:='PDN Summary Dashboard - RWO (by Color)  ';
          if yEdit1.Value=2008 then
          frmpdnrpt5.title002.Caption:=' -  Week 1 of Yr 07-08 at 2008'
          else if yEdit1.Value=2009 then
          frmpdnrpt5.title002.Caption:=' -  Week 1 of Yr 08-09 at 2009'
          else frmpdnrpt5.title002.Caption:='';
          if combobox1.text='CL' then begin
            frmpdnrpt5.pplabel105.caption:='CL';
            frmpdnrpt5.pplabel110.caption:='CL';
          end else begin
            frmpdnrpt5.pplabel105.caption:='SL';
            frmpdnrpt5.pplabel110.caption:='SL';
          end;
          frmpdnrpt5.ppGroupFooterBand5.Visible:=false;//true;
          frmpdnrpt5.ppGroupFooterBand7.Visible:=true;
          frmpdnrpt5.ppReport1.Print;
        end;
      end;
    end;
    {
    with frmpdnrpt5.query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_pdn_wksum where tm=:x1 order by wk,cust,tplant,memo1,seq1,exfty';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        frmpdnrpt5.fty001.Caption:=combobox1.text;
        frmpdnrpt5.week01.Caption:=inttostr(wEdit1.value);
        if not frmpdnrpt5.Query2.fieldbyname('d1').isnull then
          frmpdnrpt5.exfty001.Caption:=formatdatetime('yyyy/MM/dd',frmpdnrpt5.Query2.fieldbyname('d1').value)
        else frmpdnrpt5.exfty001.Caption:='';
        if not frmpdnrpt5.Query2.fieldbyname('d2').isnull then
          frmpdnrpt5.exfty002.Caption:=formatdatetime('yyyy/MM/dd',frmpdnrpt5.Query2.fieldbyname('d2').value)
        else frmpdnrpt5.exfty002.Caption:='';
        if wedit1.Value=1 then begin
          if yedit1.Value=2007 then frmpdnrpt5.title002.Caption:=' -  Week 1 of Yr 07-08 at 2007'
          else frmpdnrpt5.title002.Caption:=' -  Week 1 of Yr 07-08 at 2008';
        end else frmpdnrpt5.title002.caption:='';
        frmpdnrpt5.ppReport1.Print;
      end;
    end;
    }
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select distinct seq from tbl_pdn_m where wk=:x1 and f_year(exfty)=:x2';//'+inttostr(wEdit1.value)+' and f_year(exfty)='+inttostr(yEdit1.value)+'';
      if combobox1.text>'' then commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      params[0].asinteger:=wedit1.Value;
      params[1].asinteger:=yedit1.Value;
      open;
      first;
      while not eof do begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='execute procedure sp_pdn_rsummary(:x1,:x2)';
          params[0].asdatetime:=tm;
          params[1].asinteger:=query2.fieldbyname('seq').value;
          execute;
        end;
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='execute procedure sp_pdn_summary_tmp(:x1,:x2)';
          params[0].asdatetime:=tm;
          params[1].asinteger:=Query2.fieldbyname('seq').value;
          execute;
        end;
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          commandtext:='execute procedure sp_pdn_wsummary(:x1,:x2)';
          params[0].asdatetime:=tm;
          params[1].asinteger:=query2.fieldbyname('seq').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
      if frmpdnrpt5=nil then frmpdnrpt5:=tfrmpdnrpt5.create(nil);
      with frmpdnrpt5.query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x2',ptinput);
        commandtext:='select * from tbl_pdn_r_tmp_sum where tm=:x2 order by j_no,j2_job,acol';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          frmpdnrpt5.week01.Caption:=inttostr(wEdit1.value);
          frmpdnrpt5.fty001.Caption:=combobox1.text;
          frmpdnrpt5.ppReport1.print;
        end;
      end;
      if frmpdnrpt6=nil then frmpdnrpt6:=tfrmpdnrpt6.create(nil);
      with frmpdnrpt6.query4 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x2',ptinput);
        commandtext:='select * from tbl_pdn_d_tmp where tm=:x2 order by j_no,j2_job,rwo,acol';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tm').isnull then begin
          frmpdnrpt6.week01.Caption:=inttostr(wEdit1.value);
          frmpdnrpt6.fty001.Caption:=combobox1.text;
          frmpdnrpt6.ppReport1.print;
        end;
      end;
      }
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmselpdn.BitBtn3Click(Sender: TObject);
var
  tm:tdatetime;
  seq1:integer;
  d1,d2,tmc:string;
  cust:string;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  tmc:=formatdatetime('yyyyMMdd hhnnsszzz',tm);
  try
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      commandtext:='execute procedure sp_pdn_salesplan(:x1,:x2,:x3,:x4)';
      params[0].asdatetime:=tm;
      params[1].asstring:=combobox1.text;
      params[2].asinteger:=yedit1.Value;
      params[3].asinteger:=wedit1.Value;
      execute;
    end;
    }
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='select seq1 from tbl_pdn_voyage_m where seq=:x1';
          params[0].asinteger:=query1.fieldbyname('seq').value;
          open;
          if not fieldbyname('seq1').isnull then seq1:=1 else seq1:=0;
        end;
        with clientdataset1 do begin
        //with roquery1 do begin
          close;
          params.clear;
          params.createparam(ftdatetime,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          if chk1.checked then begin
            if seq1=0 then
            commandtext:='execute procedure sp_pdn_wksum_new_minusshp(:x1,:x2,:x3)'
            else commandtext:='execute procedure sp_pdn_wksum_1_new_minusshp(:x1,:x2,:x3)';
          end else begin
            if seq1=0 then
            commandtext:='execute procedure sp_pdn_wksum_new(:x1,:x2,:x3)'
            else commandtext:='execute procedure sp_pdn_wksum_1_new(:x1,:x2,:x3)';
          end;
          params[0].asdatetime:=tm;
          params[1].asinteger:=query1.fieldbyname('seq').value;
          params[2].asstring:=tmc;
          execute;
        end;
    if frmpdnrpt5=nil then frmpdnrpt5:=tfrmpdnrpt5.create(nil);
    with frmpdnrpt5.Query2 do begin
      close;
      params.clear;
      //params.createparam(ftdatetime,'x1',ptinput);
      //commandtext:='select min(exfty) as d1,max(exfty) as d2 from tbl_pdn_wksum where tm=:x1';
      //params[0].asdatetime:=tm;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='select min(exfty) as d1,max(exfty) as d2 from tbl_pdn_wksum where tmc=:x1';
      params[0].asstring:=tmc;
      open;
          if not frmpdnrpt5.Query2.fieldbyname('d1').isnull then
            d1:=formatdatetime('yyyy/MM/dd',frmpdnrpt5.Query2.fieldbyname('d1').value)
          else d1:='';
          if not frmpdnrpt5.Query2.fieldbyname('d2').isnull then
            d2:=formatdatetime('yyyy/MM/dd',frmpdnrpt5.Query2.fieldbyname('d2').value)
          else d2:='';

    end;

    if not query1.fieldbyname('customer').isnull then
    cust:=query1.fieldbyname('customer').value else cust:='';
    {
    if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='AF' then cust:='ANFF'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='SA' then cust:='SARA'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='TM' then cust:='TAMA'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='TL' then cust:='TAIL'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='ES' then cust:='ESSE'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='ET' then cust:='ETAM'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='WN' then cust:='WARN'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='GP' then cust:='GAPA'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='MO' then cust:='MONO'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='MX' then cust:='MEXX'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='DA' then cust:='DAXO'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='CA' then cust:='CANA'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='LA' then cust:='LARD'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='TD' then cust:='TORD'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='CM' then cust:='CMYR'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='SL' then cust:='SALL'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='PL' then cust:='PLUK'
    else if copy(query1.fieldbyname('pdn').value,length(query1.fieldbyname('pdn').value)-1,2)='NE' then cust:='NEXT';
    }
      with frmpdnrpt5.query1 do begin
        close;
        params.clear;
        //params.createparam(ftdatetime,'x1',ptinput);
        //commandtext:='select * from tbl_pdn_wksum where tm=:x1 order by wk,cust,tplant,memo1,seq1,exfty';
        //params[0].asdatetime:=tm;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='select * from tbl_pdn_wksum where tmc=:x1 order by wk,cust,tplant,seq1,memo1,exfty';
        params[0].asstring:=tmc;
        open;
        if not fieldbyname('tm').isnull then begin
          frmpdnrpt5.fty001.Caption:=combobox1.text;
          frmpdnrpt5.week01.Caption:=inttostr(wEdit1.value);
          frmpdnrpt5.exfty001.Caption:=d1;
          frmpdnrpt5.exfty002.Caption:=d2;
          frmpdnrpt5.title001.caption:='PDN Dashboard - CWO  ';
          frmpdnrpt5.title002.Caption:=' -  '+cust;
          if combobox1.text='CL' then begin
            frmpdnrpt5.pplabel105.caption:='CL';
            frmpdnrpt5.pplabel110.caption:='CL';
            frmpdnrpt5.pplabel106.visible:=false;
            frmpdnrpt5.pplabel111.visible:=false;
            //frmpdnrpt5.pplabel91.visible:=false;
            //frmpdnrpt5.pplabel92.visible:=false;
            //frmpdnrpt5.pplabel93.visible:=false;
            frmpdnrpt5.ppdbtext4.visible:=false;
            frmpdnrpt5.ppdbtext16.visible:=false;
            frmpdnrpt5.ppdbtext18.visible:=false;
            frmpdnrpt5.ppdbcalc8.visible:=false;
            frmpdnrpt5.ppdbcalc14.visible:=false;
            frmpdnrpt5.ppdbcalc15.visible:=false;
          end else begin
            frmpdnrpt5.pplabel105.caption:='SL';
            frmpdnrpt5.pplabel110.caption:='SL';
            frmpdnrpt5.pplabel106.visible:=true;
            frmpdnrpt5.pplabel111.visible:=true;
            //frmpdnrpt5.pplabel91.visible:=true;
            //frmpdnrpt5.pplabel92.visible:=true;
            //frmpdnrpt5.pplabel93.visible:=true;
            frmpdnrpt5.ppdbtext4.visible:=true;
            frmpdnrpt5.ppdbtext16.visible:=true;
            frmpdnrpt5.ppdbtext18.visible:=true;
            frmpdnrpt5.ppdbcalc8.visible:=true;
            frmpdnrpt5.ppdbcalc14.visible:=true;
            frmpdnrpt5.ppdbcalc15.visible:=true;
          end;
          frmpdnrpt5.ppGroupFooterBand5.Visible:=false;
          frmpdnrpt5.ppGroupFooterBand7.Visible:=false;
          frmpdnrpt5.ppReport1.Print;
        end;
      end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmselpdn.BitBtn4Click(Sender: TObject);
var
  r23:boolean;
begin
  if frmshpadvice=nil then frmshpadvice:=tfrmshpadvice.Create(nil);
  if combobox1.text='PHSL' then frmshpadvice.combobox1.text:='SL'
  else frmshpadvice.ComboBox1.Text:=combobox1.text;
  frmshpadvice.yEdit1.Value:=yEdit1.Value;
  frmshpadvice.wEdit1.Value:=wEdit1.Value;
  frmshpadvice.BitBtn1.Visible:=true;
  frmshpadvice.BitBtn2.Visible:=true;
  frmshpadvice.BitBtn3.Visible:=true;
  frmshpadvice.BitBtn4.Visible:=false;
  frmshpadvice.BitBtn5.Visible:=false;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select pdnemail as r58 from tbluser where usr='''+frmmain.combobox1.text+'''';
    open;
    if fieldbyname('r58').value=true then begin
      frmshpadvice.dbgrideh1.readonly:=false;
      frmshpadvice.bitbtn1.enabled:=true;
    end else begin
      frmshpadvice.dbgrideh1.readonly:=true;
      frmshpadvice.bitbtn1.enabled:=false;
    end;
  end;
  frmshpadvice.Show;
end;

procedure Tfrmselpdn.BitBtn6Click(Sender: TObject);
begin
  if not query1.fieldbyname('seq').isnull then begin
    if frmpdnlogcst=nil then frmpdnlogcst:=tfrmpdnlogcst.create(nil);
    with frmpdnlogcst.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_pdn_pack where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
    end;
    if query1.fieldbyname('tplant').value='FJ' then frmpdnlogcst.DBGridEh1.columns[13].Visible:=true
    else frmpdnlogcst.DBGridEh1.Columns[13].Visible:=false;
    frmpdnlogcst.show;
  end;
end;

procedure Tfrmselpdn.BitBtn7Click(Sender: TObject);
begin
  if frmpdn_deadstock=nil then frmpdn_deadstock:=tfrmpdn_deadstock.create(nil);
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='update tbl_pdn_writeoff set amt=writeoff*upx where seq=:x1 and writeoff>0';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
  with frmpdn_deadstock.query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_pdn_writeoff where seq=:x1 and writeoff>0';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    open;
  end;
  with frmpdn_deadstock.query2 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.combobox1.text+'''';
    open;
    if fieldbyname('ds_pmc').value=true then frmpdn_deadstock.bitbtn2.enabled:=true
    else frmpdn_deadstock.bitbtn2.enabled:=false;
    if fieldbyname('ds_qa').value=true then frmpdn_deadstock.bitbtn3.enabled:=true
    else frmpdn_deadstock.bitbtn3.enabled:=false;
    if fieldbyname('ds_fgm').value=true then frmpdn_deadstock.bitbtn4.enabled:=true
    else frmpdn_deadstock.bitbtn4.enabled:=false;
    if fieldbyname('ds_hkoa').value=true then frmpdn_deadstock.bitbtn5.enabled:=true
    else frmpdn_deadstock.bitbtn5.enabled:=false;
    if fieldbyname('ds_hkgm').value=true then frmpdn_deadstock.bitbtn6.enabled:=true
    else frmpdn_deadstock.bitbtn6.enabled:=false;
    if fieldbyname('ds_ceo').value=true then frmpdn_deadstock.bitbtn7.enabled:=true
    else frmpdn_deadstock.bitbtn7.enabled:=false;
  end;
  frmpdn_deadstock.show;
end;

procedure Tfrmselpdn.BitBtn8Click(Sender: TObject);
var
  tm:tdatetime;
  fty:string;
  cobject: TcxSSCellObject;
  i:integer;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try
    cxSheet1.LoadFromFile(extractfilepath(application.ExeName)+'PDN_Manifest_Detail.xls');
    if combobox1.text='PHSL' then fty:='SL' else fty:=combobox1.text;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      if chk1.checked then
      commandtext:='execute procedure sp_pdn_updvoyagetmp_minusshp(:x1,:x2,:x3,:x4)'
      else commandtext:='execute procedure sp_pdn_updvoyagetmp(:x1,:x2,:x3,:x4)';
      params[0].asdatetime:=tm;
      params[1].asstring:=fty;
      params[2].asinteger:=yedit1.value;
      params[3].asinteger:=wedit1.value;
      execute;
    end;
    i:=0;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct tm,seq,seq1,tplant,pdn,voyn,j_no,j2_job,cstyle,rwo,acol,shpm,sum(qty) as qty,sum(sqty) as sqty,'
                  +'sum(pqty) as pqty,sum(t1qty) as t1qty,sum(sqtysl+sqtygg) as sqtysl,sum(sqtysc) as sqtysc,sum(tsqty) as tsqty,'
                  +'sum(t2qtysl) as t2qtysl,sum(t2qtygg) as t2qtygg,sum(t2qtysc) as t2qtysc,sum(tt2qty) as tt2qty,sum(t3qty) as t3qty,'
                  +'sum(aqqty) as aqqty,sum(t4qty) as t4qty,custpo,bdc,sum(shpqty) as shpqty,sum(spqty) as spqty,sum(lstqty) as lstqty,'
                  +'sum(writeoff) as writeoff,sum(bal) as bal,sum(diff) as diff,exfty,extm,fqcdt,pt2dt from tbl_pdn_voyage_tmp where tm=:x1 ';
      if pos('CARTE',frmpdn.caption)>0 then
      commandtext:=commandtext+'and j_no like ''CRTE%'' '
      else if pos('OCEN',frmpdn.caption)>0 then
      commandtext:=commandtext+'and j_no like ''OCEN%'' '
      else commandtext:=commandtext+'and j_no not like ''CRTE%'' and j_no not like ''OCEN%'' ';
      commandtext:=commandtext+'group by tm,seq,seq1,tplant,pdn,voyn,j_no,j2_job,cstyle,rwo,acol,shpm,custpo,bdc,exfty,extm,fqcdt,pt2dt ';
      commandtext:=commandtext+'order by seq,seq1,j_no,j2_job,rwo';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        //fty001.caption:=fty;
        //week01.caption:=inttostr(wedit1.value);
        //ppReport1.print;
        //export to excel:
        cobject:=cxSheet1.Sheet.GetCellObject(1,2);
        cobject.Text:=fieldbyname('tplant').asstring;
        //cobject:=cxSheet1.Sheet.GetCellObject(34,6);
        //cobject.Text:='Final QC Date';
        first;
        while not eof do begin
          cobject:=cxSheet1.Sheet.GetCellObject(0,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('pdn').IsNull then
          cobject.text:=fieldbyname('pdn').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(1,7+i);
          cobject.Style.Font.Size:=7;
          cobject.style.Format:=1;
          if not fieldbyname('voyn').IsNull then
          cobject.text:=fieldbyname('voyn').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(2,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('shpm').IsNull then
          cobject.text:=fieldbyname('shpm').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(3,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('exfty').IsNull then begin
            if not fieldbyname('extm').isnull then
              cobject.text:=formatdatetime('yyyy-MM-dd',fieldbyname('exfty').value)+'/'+formatdatetime('hh:nn',fieldbyname('extm').value)
            else cobject.text:=formatdatetime('yyyy-MM-dd',fieldbyname('exfty').value);
          end else begin
            cobject.Text:='';
          end;
          cobject:=cxSheet1.Sheet.GetCellObject(4,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('j_no').IsNull then
          cobject.text:=fieldbyname('j_no').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(5,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('j2_job').IsNull then
          cobject.text:=fieldbyname('j2_job').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(6,7+i);
          cobject.Style.Font.Size:=7;
          cobject.style.Format:=1;
          if not fieldbyname('rwo').IsNull then
          cobject.text:=fieldbyname('rwo').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(7,7+i);
          cobject.Style.Font.Size:=7;
          cobject.style.Format:=1;
          if not fieldbyname('cstyle').IsNull then
          cobject.text:=fieldbyname('cstyle').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(8,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('acol').IsNull then
          cobject.text:=fieldbyname('acol').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(9,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('qty').IsNull then
          cobject.text:=fieldbyname('qty').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(10,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('sqty').IsNull then
          cobject.text:=fieldbyname('sqty').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(11,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('qty').IsNull then
          cobject.text:=fieldbyname('qty').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(12,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('pqty').IsNull then
          cobject.text:=fieldbyname('pqty').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(13,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('t1qty').IsNull then
          cobject.text:=fieldbyname('t1qty').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(14,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('sqtysl').IsNull then
          cobject.text:=fieldbyname('sqtysl').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(15,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('sqtysc').IsNull then
          cobject.text:=fieldbyname('sqtysc').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(16,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('tsqty').IsNull then
          cobject.text:=fieldbyname('tsqty').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(17,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('t2qtysl').IsNull then
          cobject.text:=fieldbyname('t2qtysl').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(18,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('t2qtygg').IsNull then
          cobject.text:=fieldbyname('t2qtygg').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(19,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('t2qtysc').IsNull then
          cobject.text:=fieldbyname('t2qtysc').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(20,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('tt2qty').IsNull then
          cobject.text:=fieldbyname('tt2qty').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(21,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('t3qty').IsNull then
          cobject.text:=fieldbyname('t3qty').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(22,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('aqqty').IsNull then
          cobject.text:=fieldbyname('aqqty').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(23,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('t4qty').IsNull then
          cobject.text:=fieldbyname('t4qty').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(24,7+i);
          cobject.Style.Font.Size:=7;
          cobject.style.Format:=1;
          if not fieldbyname('custpo').IsNull then
          cobject.text:=fieldbyname('custpo').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(25,7+i);
          cobject.Style.Font.Size:=7;
          cobject.style.Format:=1;
          if not fieldbyname('bdc').IsNull then
          cobject.text:=fieldbyname('bdc').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(26,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('shpqty').IsNull then
          cobject.text:=fieldbyname('shpqty').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(27,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('spqty').IsNull then
          cobject.text:=fieldbyname('spqty').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(28,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('writeoff').IsNull then
          cobject.text:=fieldbyname('writeoff').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(29,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('lstqty').IsNull then
          cobject.text:=fieldbyname('lstqty').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(30,7+i);
          cobject.Style.Font.Size:=7;
          cobject.text:=inttostr(fieldbyname('spqty').value+fieldbyname('writeoff').value+fieldbyname('lstqty').value);
          cobject:=cxSheet1.Sheet.GetCellObject(31,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('bal').IsNull then
          cobject.text:=fieldbyname('bal').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(32,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('diff').IsNull then
          cobject.text:=fieldbyname('diff').asstring
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(33,7+i);
          cobject.Style.Font.Size:=7;
          cobject.text:=formatfloat('0.00',fieldbyname('diff').value*100.00/fieldbyname('sqty').value);
          cobject:=cxSheet1.Sheet.GetCellObject(34,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('fqcdt').IsNull then
          cobject.text:=formatdatetime('yyyy-MM-dd',fieldbyname('fqcdt').value)
          else cobject.Text:='';
          cobject:=cxSheet1.Sheet.GetCellObject(35,7+i);
          cobject.Style.Font.Size:=7;
          if not fieldbyname('pt2dt').IsNull then
          cobject.text:=formatdatetime('yyyy-MM-dd',fieldbyname('pt2dt').value)
          else cobject.Text:='';

          i:=i+1;
          application.processmessages;
          next;
        end;
        savedialog1.Execute;
        if pos('XLS',uppercase(savedialog1.FileName))>0 then
        cxSheet1.savetofile(savedialog1.FileName)
        else cxSheet1.SaveToFile(savedialog1.FileName+'.xls');
      end;
    end;
  finally
    cobject.Free;
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmselpdn.BitBtn9Click(Sender: TObject);
var
  tm:tdatetime;
  fty:string;
begin
  screen.cursor:=crSQLWait;
  tm:=now;
  try
    if combobox1.text='PHSL' then fty:='SL' else fty:=combobox1.text;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      if chk1.checked then
      commandtext:='execute procedure sp_pdn_updvoyagetmp_minusshp(:x1,:x2,:x3,:x4)'
      else commandtext:='execute procedure sp_pdn_updvoyagetmp(:x1,:x2,:x3,:x4)';
      params[0].asdatetime:=tm;
      params[1].asstring:=fty;
      params[2].asinteger:=yedit1.value;
      params[3].asinteger:=wedit1.value;
      execute;
    end;
    with query5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select distinct tm,seq,seq1,tplant,pdn,voyn,j_no,j2_job,cstyle,rwo,acol,sum(qty) as qty,sum(sqty) as sqty,'
                  +'sum(pqty) as pqty,sum(t1qty) as t1qty,sum(sqtysl+sqtygg) as sqtysl,sum(sqtysc) as sqtysc,sum(tsqty) as tsqty,'
                  +'sum(t2qtysl) as t2qtysl,sum(t2qtygg) as t2qtygg,sum(t2qtysc) as t2qtysc,sum(tt2qty) as tt2qty,sum(t3qty) as t3qty,'
                  +'sum(aqqty) as aqqty,sum(t4qty) as t4qty,custpo,bdc,sum(shpqty) as shpqty,sum(spqty) as spqty,sum(lstqty) as lstqty,'
                  +'sum(writeoff) as writeoff,sum(bal) as bal,sum(diff) as diff,exfty,extm from tbl_pdn_voyage_tmp where tm=:x1 ';
      if pos('CARTE',frmpdn.caption)>0 then
      commandtext:=commandtext+'and j_no like ''CRTE%'' '
      else commandtext:=commandtext+'and j_no not like ''CRTE%'' ';
      commandtext:=commandtext+'group by tm,seq,seq1,tplant,pdn,voyn,j_no,j2_job,cstyle,rwo,acol,custpo,bdc,exfty,extm ';
      commandtext:=commandtext+'order by seq,seq1,j_no,j2_job,rwo';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        if pos('CARTE',frmpdn.caption)>0 then
        title001.Caption:='PDN Manifest - RWO (by Color) - CARTE '
        else title001.Caption:='PDN Manifest - RWO (by Color) ';
        fty001.caption:=fty;
        week01.caption:=inttostr(wedit1.value);
        ppReport1.print;
      end;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

end.
