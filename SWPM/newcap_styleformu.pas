unit newcap_styleformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppReport, ppStrtch, ppSubRpt, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe, ImgList, DB,
  DBClient, GridsEh, DBGridEh, StdCtrls, Buttons, ComCtrls, Spin, ExtCtrls,
  ppViewr, Mask, rxToolEdit, DateUtils, ppParameter, QExport4,
  QExport4XLS, Menus, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCurrencyEdit, cxGridExportLink;

type
  Tfrmnewcap_style = class(TForm)
    Splitter1: TSplitter;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    SpinEdit1: TSpinEdit;
    TreeView1: TTreeView;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGridEh1: TDBGridEh;
    ClientDataSet2: TClientDataSet;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    Query5: TClientDataSet;
    DataSource3: TDataSource;
    ROQuery1: TClientDataSet;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine3: TppLine;
    ppLabel20: TppLabel;
    ppLabel30: TppLabel;
    ppLine4: TppLine;
    ppLabel40: TppLabel;
    ppLabel50: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel60: TppLabel;
    ppLabel70: TppLabel;
    ppLine7: TppLine;
    ppLabel71: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel72: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    cust001: TppLabel;
    ppLabel22: TppLabel;
    ppDBText3: TppDBText;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
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
    ppDBText33: TppDBText;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
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
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
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
    ppSummaryBand1: TppSummaryBand;
    ppLine14: TppLine;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    xh1: TRadioGroup;
    BitBtn10: TBitBtn;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label8: TLabel;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    DBGridEh2: TDBGridEh;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Label9: TLabel;
    ComboBox3: TComboBox;
    ClientDataSet1: TClientDataSet;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    query6: TClientDataSet;
    XLS1: TQExport4XLS;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    Exportdata1: TMenuItem;
    Refreshwithoutrecalculation1: TMenuItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxView1: TcxGridDBBandedTableView;
    cxView1CUST: TcxGridDBBandedColumn;
    cxView1CSTYLE: TcxGridDBBandedColumn;
    cxView1FLAG6: TcxGridDBBandedColumn;
    cxView1SAH: TcxGridDBBandedColumn;
    cxView1Q01: TcxGridDBBandedColumn;
    cxView1E01: TcxGridDBBandedColumn;
    cxView1E101: TcxGridDBBandedColumn;
    cxView1TSAH01: TcxGridDBBandedColumn;
    cxView1TW01: TcxGridDBBandedColumn;
    cxView1Q02: TcxGridDBBandedColumn;
    cxView1TSAH02: TcxGridDBBandedColumn;
    cxView1TW02: TcxGridDBBandedColumn;
    cxView1Q03: TcxGridDBBandedColumn;
    cxView1TSAH03: TcxGridDBBandedColumn;
    cxView1TW03: TcxGridDBBandedColumn;
    cxView1Q04: TcxGridDBBandedColumn;
    cxView1TSAH04: TcxGridDBBandedColumn;
    cxView1TW04: TcxGridDBBandedColumn;
    cxView1Q05: TcxGridDBBandedColumn;
    cxView1TSAH05: TcxGridDBBandedColumn;
    cxView1TW05: TcxGridDBBandedColumn;
    cxView1Q06: TcxGridDBBandedColumn;
    cxView1TSAH06: TcxGridDBBandedColumn;
    cxView1TW06: TcxGridDBBandedColumn;
    cxView1Q07: TcxGridDBBandedColumn;
    cxView1TSAH07: TcxGridDBBandedColumn;
    cxView1TW07: TcxGridDBBandedColumn;
    cxView1Q08: TcxGridDBBandedColumn;
    cxView1TSAH08: TcxGridDBBandedColumn;
    cxView1TW08: TcxGridDBBandedColumn;
    cxView1Q09: TcxGridDBBandedColumn;
    cxView1TSAH09: TcxGridDBBandedColumn;
    cxView1TW09: TcxGridDBBandedColumn;
    cxView1Q10: TcxGridDBBandedColumn;
    cxView1TSAH10: TcxGridDBBandedColumn;
    cxView1TW10: TcxGridDBBandedColumn;
    cxView1Q11: TcxGridDBBandedColumn;
    cxView1TSAH11: TcxGridDBBandedColumn;
    cxView1TW11: TcxGridDBBandedColumn;
    cxView1Q12: TcxGridDBBandedColumn;
    cxView1TSAH12: TcxGridDBBandedColumn;
    cxView1TW12: TcxGridDBBandedColumn;
    cxView1TQ: TcxGridDBBandedColumn;
    cxView1TSAH: TcxGridDBBandedColumn;
    cxView1TW: TcxGridDBBandedColumn;
    cxView1CU1: TcxGridDBBandedColumn;
    cxView1REF0101: TcxGridDBBandedColumn;
    cxView1REF0102: TcxGridDBBandedColumn;
    cxView1REF0201: TcxGridDBBandedColumn;
    cxView1REF0202: TcxGridDBBandedColumn;
    cxView1REF0301: TcxGridDBBandedColumn;
    cxView1REF0302: TcxGridDBBandedColumn;
    cxView1REF0401: TcxGridDBBandedColumn;
    cxView1REF0402: TcxGridDBBandedColumn;
    cxView1REF0501: TcxGridDBBandedColumn;
    cxView1REF0502: TcxGridDBBandedColumn;
    cxView1REF0601: TcxGridDBBandedColumn;
    cxView1REF0602: TcxGridDBBandedColumn;
    cxView1REF0701: TcxGridDBBandedColumn;
    cxView1REF0702: TcxGridDBBandedColumn;
    cxView1REF0801: TcxGridDBBandedColumn;
    cxView1REF0802: TcxGridDBBandedColumn;
    cxView1REF0901: TcxGridDBBandedColumn;
    cxView1REF0902: TcxGridDBBandedColumn;
    cxView1REF1001: TcxGridDBBandedColumn;
    cxView1REF1002: TcxGridDBBandedColumn;
    cxView1REF1101: TcxGridDBBandedColumn;
    cxView1REF1102: TcxGridDBBandedColumn;
    cxView1REF1201: TcxGridDBBandedColumn;
    cxView1REF1202: TcxGridDBBandedColumn;
    cxView1TTL01: TcxGridDBBandedColumn;
    cxView1TTL02: TcxGridDBBandedColumn;
    cxView1T301: TcxGridDBBandedColumn;
    cxView1T302: TcxGridDBBandedColumn;
    cxView1T303: TcxGridDBBandedColumn;
    cxView1T304: TcxGridDBBandedColumn;
    cxView1T305: TcxGridDBBandedColumn;
    cxView1T306: TcxGridDBBandedColumn;
    cxView1T307: TcxGridDBBandedColumn;
    cxView1T308: TcxGridDBBandedColumn;
    cxView1T309: TcxGridDBBandedColumn;
    cxView1T310: TcxGridDBBandedColumn;
    cxView1T311: TcxGridDBBandedColumn;
    cxView1T312: TcxGridDBBandedColumn;
    cxView1T3TTL: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    BitBtn17: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure querysahchange(Sender: TField);
    procedure querye01change(Sender: TField);
    procedure querysah1change(Sender: TField);
    procedure DBGridEh1Columns10EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns12EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns17EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns22EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns27EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns32EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns37EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns42EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns47EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns52EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns57EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns62EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure databyweek(const i1,i2: integer);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGridEh1Columns8EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BitBtn8Click(Sender: TObject);
    procedure xh1Click(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2Columns12EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns17EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns22EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns27EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns32EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns37EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns42EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns47EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns52EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns57EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns62EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns67EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure SpinEdit1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure DBGridEh2Columns13EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns18EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns23EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns28EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns33EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns38EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns43EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns48EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns53EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns58EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns63EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns68EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns14EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns19EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns24EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns29EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns34EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns39EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns44EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns49EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns54EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns59EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns64EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns69EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns15EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns20EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns25EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns30EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns35EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns40EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns45EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns50EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns55EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns60EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns65EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns70EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns16EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns21EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns26EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns31EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns36EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns41EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns46EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns51EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns56EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns61EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns66EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns71EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns13EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns18EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns23EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns28EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns33EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns38EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns43EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns48EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns53EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns58EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns63EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns68EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns14EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns19EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns24EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns29EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns34EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns39EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns44EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns49EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns54EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns59EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns64EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns69EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns15EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns20EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns25EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns30EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns35EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns40EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns45EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns50EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns55EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns60EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns65EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns70EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns16EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns21EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns26EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns31EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns36EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns41EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns46EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns51EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns56EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns61EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns66EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns71EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Exportdata1Click(Sender: TObject);
    procedure Refreshwithoutrecalculation1Click(Sender: TObject);
    procedure cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure BitBtn17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure show_data;
    procedure show_data1;
    procedure Shownostyledetailform(const m1: integer);
    procedure Showleveloffdetailform(const m1: integer);
    procedure Showrwodetailform(const m1,opt1,opt2: integer);
    procedure updlock(const m1: integer);
  end;

var
  frmnewcap_style: Tfrmnewcap_style;
  strupd:string;

implementation

uses mainformu, newcap_salesformu, newcap_wstyleformu, newcap_refformu,
  newcap_style_wkformu, newcap_custstatusformu, newcap_style_adjformu,
  newcap_nostyle_wkformu, newcap_leveloffformu, newcap_notepadformu,
  newcap_rwodetailformu, CP_ActionlogFormu;

{$R *.dfm}

procedure Tfrmnewcap_style.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_style:=nil;
end;

procedure Tfrmnewcap_style.Query1AfterOpen(DataSet: TDataSet);
var
  lck01,lck02,lck03,lck04,lck05,lck06,lck07,lck08,lck09,lck10,lck11,lck12,fty:string;
begin
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='BD' then fty:='CL' else fty:=combobox1.text;
  query1.FieldByName('sah').onchange:=querysahchange;
  query1.fieldbyname('e01').onchange:=querye01change;
  //query1.FieldByName('e101').onchange:=querysah1change;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck01 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck01=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck01').isnull then lck01:='' else lck01:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck02 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck02=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck02').isnull then lck02:='' else lck02:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck03 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck03=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck03').isnull then lck03:='' else lck03:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck04 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck04=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck04').isnull then lck04:='' else lck04:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck05 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck05=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck05').isnull then lck05:='' else lck05:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck06 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck06=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck06').isnull then lck06:='' else lck06:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck07 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck07=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck07').isnull then lck07:='' else lck07:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck08 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck08=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck08').isnull then lck08:='' else lck08:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck09 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck09=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck09').isnull then lck09:='' else lck09:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck10 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck10=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck10').isnull then lck10:='' else lck10:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck11 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck11=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck11').isnull then lck11:='' else lck11:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lck12 from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and lck12=0';
    //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
    params[0].asstring:=fty;
    params[1].asinteger:=spinedit1.value;
    open;
    if not fieldbyname('lck12').isnull then lck12:='' else lck12:='*';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select distinct m1,min(wkno) as x1,max(wkno) as x2 from tbl_cap_wkno_new where yr=:x1 and wkno>0 group by m1 order by m1';
    params[0].asinteger:=spinedit1.value;
    open;
    first;
    while not eof do begin
      if fieldbyname('m1').value=1 then begin
        cxView1.Bands[3].Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+' | 一月'+lck01;
        dbgrideh1.columns[12].Title.Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck01+'|Del Qty';
        dbgrideh1.columns[13].Title.Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck01+'|T3 Qty   (Std ahead)';
        dbgrideh1.columns[14].Title.Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck01+'|aT3 Qty';
        dbgrideh1.columns[15].Title.Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck01+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh1.columns[16].Title.Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck01+'|Stk-in Qty (T3/aT3)|Come from future';
        dbgrideh2.columns[12].Title.Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck01+'|Del Qty';
        dbgrideh2.columns[13].Title.Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck01+'|T3 Qty   (Std ahead)';
        dbgrideh2.columns[14].Title.Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck01+'|aT3 Qty';
        dbgrideh2.columns[15].Title.Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck01+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh2.columns[16].Title.Caption:='Jan (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck01+'|Stk-in Qty (T3/aT3)|Come from future';
      end else if fieldbyname('m1').value=2 then begin
        cxView1.Bands[7].Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+' | 二月'+lck02;
        dbgrideh1.columns[17].Title.Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck02+'|Del Qty';
        dbgrideh1.columns[18].Title.Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck02+'|T3 Qty   (Std ahead)';
        dbgrideh1.columns[19].Title.Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck02+'|aT3 Qty';
        dbgrideh1.columns[20].Title.Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck02+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh1.columns[21].Title.Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck02+'|Stk-in Qty (T3/aT3)|Come from future';
        dbgrideh2.columns[17].Title.Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck02+'|Del Qty';
        dbgrideh2.columns[18].Title.Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck02+'|T3 Qty   (Std ahead)';
        dbgrideh2.columns[19].Title.Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck02+'|aT3 Qty';
        dbgrideh2.columns[20].Title.Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck02+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh2.columns[21].Title.Caption:='Feb (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck02+'|Stk-in Qty (T3/aT3)|Come from future';
      end else if fieldbyname('m1').value=3 then begin
        cxView1.Bands[11].Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+' | 三月'+lck03;
        dbgrideh1.columns[22].Title.Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck03+'|Del Qty';
        dbgrideh1.columns[23].Title.Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck03+'|T3 Qty   (Std ahead)';
        dbgrideh1.columns[24].Title.Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck03+'|aT3 Qty';
        dbgrideh1.columns[25].Title.Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck03+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh1.columns[26].Title.Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck03+'|Stk-in Qty (T3/aT3)|Come from future';
        dbgrideh2.columns[22].Title.Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck03+'|Del Qty';
        dbgrideh2.columns[23].Title.Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck03+'|T3 Qty   (Std ahead)';
        dbgrideh2.columns[24].Title.Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck03+'|aT3 Qty';
        dbgrideh2.columns[25].Title.Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck03+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh2.columns[26].Title.Caption:='Mar (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck03+'|Stk-in Qty (T3/aT3)|Come from future';
      end else if fieldbyname('m1').value=4 then begin
        cxView1.Bands[15].Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+' | 四月'+lck04;
        dbgrideh1.columns[27].Title.Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck04+'|Del Qty';
        dbgrideh1.columns[28].Title.Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck04+'|T3 Qty   (Std ahead)';
        dbgrideh1.columns[29].Title.Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck04+'|aT3 Qty';
        dbgrideh1.columns[30].Title.Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck04+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh1.columns[31].Title.Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck04+'|Stk-in Qty (T3/aT3)|Come from future';
        dbgrideh2.columns[27].Title.Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck04+'|Del Qty';
        dbgrideh2.columns[28].Title.Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck04+'|T3 Qty   (Std ahead)';
        dbgrideh2.columns[29].Title.Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck04+'|aT3 Qty';
        dbgrideh2.columns[30].Title.Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck04+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh2.columns[31].Title.Caption:='Apr (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck04+'|Stk-in Qty (T3/aT3)|Come from future';
      end else if fieldbyname('m1').value=5 then begin
        cxView1.Bands[19].Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+' | 五月'+lck05;
        dbgrideh1.columns[32].Title.Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck05+'|Del Qty';
        dbgrideh1.columns[33].Title.Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck05+'|T3 Qty   (Std ahead)';
        dbgrideh1.columns[34].Title.Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck05+'|aT3 Qty';
        dbgrideh1.columns[35].Title.Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck05+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh1.columns[36].Title.Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck05+'|Stk-in Qty (T3/aT3)|Come from future';
        dbgrideh2.columns[32].Title.Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck05+'|Del Qty';
        dbgrideh2.columns[33].Title.Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck05+'|T3 Qty   (Std ahead)';
        dbgrideh2.columns[34].Title.Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck05+'|aT3 Qty';
        dbgrideh2.columns[35].Title.Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck05+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh2.columns[36].Title.Caption:='May (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck05+'|Stk-in Qty (T3/aT3)|Come from future';
      end else if fieldbyname('m1').value=6 then begin
        cxView1.Bands[23].Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+' | 六月'+lck06;
        dbgrideh1.columns[37].Title.Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck06+'|Del Qty';
        dbgrideh1.columns[38].Title.Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck06+'|T3 Qty   (Std ahead)';
        dbgrideh1.columns[39].Title.Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck06+'|aT3 Qty';
        dbgrideh1.columns[40].Title.Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck06+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh1.columns[41].Title.Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck06+'|Stk-in Qty (T3/aT3)|Come from future';
        dbgrideh2.columns[37].Title.Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck06+'|Del Qty';
        dbgrideh2.columns[38].Title.Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck06+'|T3 Qty   (Std ahead)';
        dbgrideh2.columns[39].Title.Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck06+'|aT3 Qty';
        dbgrideh2.columns[40].Title.Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck06+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh2.columns[41].Title.Caption:='Jun (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck06+'|Stk-in Qty (T3/aT3)|Come from future';
      end else if fieldbyname('m1').value=7 then begin
        cxView1.Bands[27].Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+' | 七月'+lck07;
        dbgrideh1.columns[42].Title.Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck07+'|Del Qty';
        dbgrideh1.columns[43].Title.Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck07+'|T3 Qty   (Std ahead)';
        dbgrideh1.columns[44].Title.Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck07+'|aT3 Qty';
        dbgrideh1.columns[45].Title.Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck07+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh1.columns[46].Title.Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck07+'|Stk-in Qty (T3/aT3)|Come from future';
        dbgrideh2.columns[42].Title.Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck07+'|Del Qty';
        dbgrideh2.columns[43].Title.Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck07+'|T3 Qty   (Std ahead)';
        dbgrideh2.columns[44].Title.Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck07+'|aT3 Qty';
        dbgrideh2.columns[45].Title.Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck07+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh2.columns[46].Title.Caption:='Jul (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck07+'|Stk-in Qty (T3/aT3)|Come from future';
      end else if fieldbyname('m1').value=8 then begin
        cxView1.Bands[31].Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+' | 八月'+lck08;
        dbgrideh1.columns[47].Title.Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck08+'|Del Qty';
        dbgrideh1.columns[48].Title.Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck08+'|T3 Qty   (Std ahead)';
        dbgrideh1.columns[49].Title.Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck08+'|aT3 Qty';
        dbgrideh1.columns[50].Title.Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck08+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh1.columns[51].Title.Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck08+'|Stk-in Qty (T3/aT3)|Come from future';
        dbgrideh2.columns[47].Title.Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck08+'|Del Qty';
        dbgrideh2.columns[48].Title.Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck08+'|T3 Qty   (Std ahead)';
        dbgrideh2.columns[49].Title.Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck08+'|aT3 Qty';
        dbgrideh2.columns[50].Title.Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck08+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh2.columns[51].Title.Caption:='Aug (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck08+'|Stk-in Qty (T3/aT3)|Come from future';
      end else if fieldbyname('m1').value=9 then begin
        cxView1.Bands[35].Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+' | 九月'+lck09;
        dbgrideh1.columns[52].Title.Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck09+'|Del Qty';
        dbgrideh1.columns[53].Title.Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck09+'|T3 Qty   (Std ahead)';
        dbgrideh1.columns[54].Title.Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck09+'|aT3 Qty';
        dbgrideh1.columns[55].Title.Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck09+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh1.columns[56].Title.Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck09+'|Stk-in Qty (T3/aT3)|Come from future';
        dbgrideh2.columns[52].Title.Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck09+'|Del Qty';
        dbgrideh2.columns[53].Title.Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck09+'|T3 Qty   (Std ahead)';
        dbgrideh2.columns[54].Title.Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck09+'|aT3 Qty';
        dbgrideh2.columns[55].Title.Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck09+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh2.columns[56].Title.Caption:='Sep (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck09+'|Stk-in Qty (T3/aT3)|Come from future';
      end else if fieldbyname('m1').value=10 then begin
        cxView1.Bands[39].Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+' | 十月'+lck10;
        dbgrideh1.columns[57].Title.Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck10+'|Del Qty';
        dbgrideh1.columns[58].Title.Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck10+'|T3 Qty   (Std ahead)';
        dbgrideh1.columns[59].Title.Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck10+'|aT3 Qty';
        dbgrideh1.columns[60].Title.Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck10+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh1.columns[61].Title.Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck10+'|Stk-in Qty (T3/aT3)|Come from future';
        dbgrideh2.columns[57].Title.Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck10+'|Del Qty';
        dbgrideh2.columns[58].Title.Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck10+'|T3 Qty   (Std ahead)';
        dbgrideh2.columns[59].Title.Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck10+'|aT3 Qty';
        dbgrideh2.columns[60].Title.Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck10+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh2.columns[61].Title.Caption:='Oct (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck10+'|Stk-in Qty (T3/aT3)|Come from future';
      end else if fieldbyname('m1').value=11 then begin
        cxView1.Bands[43].Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+' | 十一月'+lck11;
        dbgrideh1.columns[62].Title.Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck11+'|Del Qty';
        dbgrideh1.columns[63].Title.Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck11+'|T3 Qty   (Std ahead)';
        dbgrideh1.columns[64].Title.Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck11+'|aT3 Qty';
        dbgrideh1.columns[65].Title.Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck11+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh1.columns[66].Title.Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck11+'|Stk-in Qty (T3/aT3)|Come from future';
        dbgrideh2.columns[62].Title.Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck11+'|Del Qty';
        dbgrideh2.columns[63].Title.Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck11+'|T3 Qty   (Std ahead)';
        dbgrideh2.columns[64].Title.Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck11+'|aT3 Qty';
        dbgrideh2.columns[65].Title.Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck11+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh2.columns[66].Title.Caption:='Nov (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck11+'|Stk-in Qty (T3/aT3)|Come from future';
      end else if fieldbyname('m1').value=12 then begin
        cxView1.Bands[47].Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+' | 十二月'+lck12;
        dbgrideh1.columns[67].Title.Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck12+'|Del Qty';
        dbgrideh1.columns[68].Title.Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck12+'|T3 Qty   (Std ahead)';
        dbgrideh1.columns[69].Title.Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck12+'|aT3 Qty';
        dbgrideh1.columns[70].Title.Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck12+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh1.columns[71].Title.Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck12+'|Stk-in Qty (T3/aT3)|Come from future';
        dbgrideh2.columns[67].Title.Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck12+'|Del Qty';
        dbgrideh2.columns[68].Title.Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck12+'|T3 Qty   (Std ahead)';
        dbgrideh2.columns[69].Title.Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck12+'|aT3 Qty';
        dbgrideh2.columns[70].Title.Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck12+'|Stk-in Qty (T3/aT3)|Go to previous';
        dbgrideh2.columns[71].Title.Caption:='Dec (wk'+fieldbyname('x1').asstring+'-'+fieldbyname('x2').asstring+')'+lck12+'|Stk-in Qty (T3/aT3)|Come from future';
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  {
  if query1.fieldbyname('cstyle').value='1) Hvn''t Style#' then begin
    dbgrideh1.columns[10].displayformat:='#,0;-#,0;''n.a.''';
    dbgrideh1.columns[11].displayformat:='#,0;-#,0;''n.a.''';
    dbgrideh2.columns[10].displayformat:='#,0;-#,0;''n.a.''';
    dbgrideh2.columns[11].displayformat:='#,0;-#,0;''n.a.''';
  end else if query1.fieldbyname('cstyle').value='2) Hv Style#' then begin
    dbgrideh1.columns[10].displayformat:='#,0;-#,0;''n.a.''';
    dbgrideh1.columns[11].displayformat:='#,0;-#,0;''n.a.''';
    dbgrideh2.columns[10].displayformat:='#,0;-#,0;''n.a.''';
    dbgrideh2.columns[11].displayformat:='#,0;-#,0;''n.a.''';
  end else if query1.fieldbyname('cstyle').value='4) Level off Sale Proj' then begin
    dbgrideh1.columns[10].displayformat:='#,0;-#,0;''--''';
    dbgrideh1.columns[11].displayformat:='#,0;-#,0;''--''';
    dbgrideh2.columns[10].displayformat:='#,0;-#,0;''--''';
    dbgrideh2.columns[11].displayformat:='#,0;-#,0;''--''';
  end else begin
    dbgrideh1.columns[10].displayformat:='#,0;-#,0';
    dbgrideh1.columns[11].displayformat:='#,0;-#,0';
    dbgrideh2.columns[10].displayformat:='#,0;-#,0';
    dbgrideh2.columns[11].displayformat:='#,0;-#,0';
  end;
  }
end;

procedure Tfrmnewcap_style.ComboBox1Change(Sender: TObject);
//begin
  {
  if combobox1.text>'' then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_cap_updoastyleos(:x1,:x2)';
      params[0].asstring:=combobox1.text;
      params[1].asinteger:=spinedit1.value;
      execute;
    end;
  end;
  //combobox3.text:='';
  //show_data;
//end;
{
}
var
  tn1,tn2,tn3:TTreeNode;
  fty:string;
begin
  if combobox1.text>'' then begin
    if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='BD' then fty:='CL' else fty:=combobox1.text;
    treeview1.Items.Clear;
    tn1:=treeview1.Items.add(nil,'ALL');
    tn1.ImageIndex:=0;
    with query3 do begin
      close;
      params.clear;
      commandtext:='select distinct grp as cust from cust_exfty where tplant='''+fty+''' and act=1';
      open;
      first;
      while not eof do begin
        tn3:=treeview1.Items.AddChild(tn1,fieldbyname('cust').value);
        tn3.ImageIndex:=1;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select distinct pgrp as cust from cust_exfty where tplant='''+fty+''' and act=1  and grp='''+tn3.Text+'''';
          open;
          first;
          while not eof do begin
            tn2:=treeview1.Items.AddChild(tn3,fieldbyname('cust').value);
            tn2.ImageIndex:=1;
            application.ProcessMessages;
            next;
          end;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    //treeview1.SetFocus;
    treeview1.FullExpand;
    treeview1.Selected:=treeview1.Items.GetFirstNode;
  end;
//}
end;

procedure Tfrmnewcap_style.FormShow(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  combobox1.text:='CHINA';
  //spinedit1.value:=yearof(date);
  combobox1.OnChange(self);
  with query2 do begin
    close;
    params.clear;
    commandtext:='select * from tbl_cap_date where sel=1 and tplant=''SL''';
    open;
    if not fieldbyname('stdt').isnull then begin
      dateedit1.date:=fieldbyname('stdt').value;
      edit1.text:=fieldbyname('m1').asstring;
    end else begin
      dateedit1.date:=date-1;
      edit1.text:='';
    end;
  end;
  spinedit2.value:=1;
  spinedit3.value:=12;
  cxView1.DataController.Summary.FooterSummaryValues[0]:='TTL';
  //show_data;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_style.show_data;
var
  i:integer;
  m1:array[1..12] of integer;
  fty:string;
begin
  screen.Cursor:=crSQLWait;
  try
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='BD' then fty:='CL' else fty:=combobox1.text;
  if spinedit2.value>1 then begin
    for i:=12 to 71 do begin
      dbgrideh1.Columns[i].Visible:=true;
      dbgrideh2.Columns[i].Visible:=true;
    end;
    for i:=12 to 12+(spinedit2.value-1)*5-1 do begin
      dbgrideh1.Columns[i].Visible:=false;
      dbgrideh2.Columns[i].Visible:=false;
    end;
    if spinedit3.value<12 then begin
      for i:=71-(12-spinedit3.value)*5+1 to 71 do begin
        dbgrideh1.columns[i].visible:=false;
        dbgrideh2.Columns[i].Visible:=false;
      end;
    end;
  end else begin
    for i:=12 to 71 do begin
      dbgrideh1.Columns[i].Visible:=true;
      dbgrideh2.Columns[i].Visible:=true;
    end;
    if spinedit3.value<12 then begin
      for i:=71-(12-spinedit3.value)*5+1 to 71 do begin
        dbgrideh1.columns[i].visible:=false;
        dbgrideh2.Columns[i].Visible:=false;
      end;
    end;
  end;

  //show which month?
  if SpinEdit2.Value=1 then cxView1.Bands[3].Visible:=True
  else if SpinEdit2.Value=2 then begin
    cxView1.Bands[3].Visible:=false;
    cxView1.Bands[7].Visible:=true;
  end else if SpinEdit2.Value=3 then begin
    cxView1.Bands[3].Visible:=false;
    cxView1.Bands[7].Visible:=false;
    cxView1.Bands[11].Visible:=true;
  end else if SpinEdit2.Value=4 then begin
    cxView1.Bands[3].Visible:=false;
    cxView1.Bands[7].Visible:=false;
    cxView1.Bands[11].Visible:=false;
    cxView1.Bands[15].Visible:=true;
  end else if SpinEdit2.Value=5 then begin
    cxView1.Bands[3].Visible:=false;
    cxView1.Bands[7].Visible:=false;
    cxView1.Bands[11].Visible:=false;
    cxView1.Bands[15].Visible:=false;
    cxView1.Bands[19].Visible:=true;
  end else if SpinEdit2.Value=6 then begin
    cxView1.Bands[3].Visible:=false;
    cxView1.Bands[7].Visible:=false;
    cxView1.Bands[11].Visible:=false;
    cxView1.Bands[15].Visible:=false;
    cxView1.Bands[19].Visible:=false;
    cxView1.Bands[23].Visible:=true;
  end else if SpinEdit2.Value=7 then begin
    cxView1.Bands[3].Visible:=false;
    cxView1.Bands[7].Visible:=false;
    cxView1.Bands[11].Visible:=false;
    cxView1.Bands[15].Visible:=false;
    cxView1.Bands[19].Visible:=false;
    cxView1.Bands[23].Visible:=false;
    cxView1.Bands[27].Visible:=true;
  end else if SpinEdit2.Value=8 then begin
    cxView1.Bands[3].Visible:=false;
    cxView1.Bands[7].Visible:=false;
    cxView1.Bands[11].Visible:=false;
    cxView1.Bands[15].Visible:=false;
    cxView1.Bands[19].Visible:=false;
    cxView1.Bands[23].Visible:=false;
    cxView1.Bands[27].Visible:=false;
    cxView1.Bands[31].Visible:=true;
  end else if SpinEdit2.Value=9 then begin
    cxView1.Bands[3].Visible:=false;
    cxView1.Bands[7].Visible:=false;
    cxView1.Bands[11].Visible:=false;
    cxView1.Bands[15].Visible:=false;
    cxView1.Bands[19].Visible:=false;
    cxView1.Bands[23].Visible:=false;
    cxView1.Bands[27].Visible:=false;
    cxView1.Bands[31].Visible:=false;
    cxView1.Bands[35].Visible:=true;
  end else if SpinEdit2.Value=10 then begin
    cxView1.Bands[3].Visible:=false;
    cxView1.Bands[7].Visible:=false;
    cxView1.Bands[11].Visible:=false;
    cxView1.Bands[15].Visible:=false;
    cxView1.Bands[19].Visible:=false;
    cxView1.Bands[23].Visible:=false;
    cxView1.Bands[27].Visible:=false;
    cxView1.Bands[31].Visible:=false;
    cxView1.Bands[35].Visible:=false;
    cxView1.Bands[39].Visible:=true;
  end else if SpinEdit2.Value=11 then begin
    cxView1.Bands[3].Visible:=false;
    cxView1.Bands[7].Visible:=false;
    cxView1.Bands[11].Visible:=false;
    cxView1.Bands[15].Visible:=false;
    cxView1.Bands[19].Visible:=false;
    cxView1.Bands[23].Visible:=false;
    cxView1.Bands[27].Visible:=false;
    cxView1.Bands[31].Visible:=false;
    cxView1.Bands[35].Visible:=false;
    cxView1.Bands[39].Visible:=false;
    cxView1.Bands[43].Visible:=true;
  end else if SpinEdit2.Value=12 then begin
    cxView1.Bands[3].Visible:=false;
    cxView1.Bands[7].Visible:=false;
    cxView1.Bands[11].Visible:=false;
    cxView1.Bands[15].Visible:=false;
    cxView1.Bands[19].Visible:=false;
    cxView1.Bands[23].Visible:=false;
    cxView1.Bands[27].Visible:=false;
    cxView1.Bands[31].Visible:=false;
    cxView1.Bands[35].Visible:=false;
    cxView1.Bands[39].Visible:=false;
    cxView1.Bands[43].Visible:=false;
    cxView1.Bands[47].Visible:=true;
  end;

  if SpinEdit3.Value=12 then cxView1.Bands[47].Visible:=true
  else if SpinEdit3.Value=11 then begin
    cxView1.Bands[47].Visible:=False;
    cxView1.Bands[43].Visible:=true;
  end else if SpinEdit3.Value=10 then begin
    cxView1.Bands[47].Visible:=False;
    cxView1.Bands[43].Visible:=False;
    cxView1.Bands[39].Visible:=true;
  end else if SpinEdit3.Value=9 then begin
    cxView1.Bands[47].Visible:=False;
    cxView1.Bands[43].Visible:=False;
    cxView1.Bands[39].Visible:=False;
    cxView1.Bands[35].Visible:=true;
  end else if SpinEdit3.Value=8 then begin
    cxView1.Bands[47].Visible:=False;
    cxView1.Bands[43].Visible:=False;
    cxView1.Bands[39].Visible:=False;
    cxView1.Bands[35].Visible:=False;
    cxView1.Bands[31].Visible:=true;
  end else if SpinEdit3.Value=7 then begin
    cxView1.Bands[47].Visible:=False;
    cxView1.Bands[43].Visible:=False;
    cxView1.Bands[39].Visible:=False;
    cxView1.Bands[35].Visible:=False;
    cxView1.Bands[31].Visible:=False;
    cxView1.Bands[27].Visible:=true;
  end else if SpinEdit3.Value=6 then begin
    cxView1.Bands[47].Visible:=False;
    cxView1.Bands[43].Visible:=False;
    cxView1.Bands[39].Visible:=False;
    cxView1.Bands[35].Visible:=False;
    cxView1.Bands[31].Visible:=False;
    cxView1.Bands[27].Visible:=False;
    cxView1.Bands[23].Visible:=true;
  end else if SpinEdit3.Value=5 then begin
    cxView1.Bands[47].Visible:=False;
    cxView1.Bands[43].Visible:=False;
    cxView1.Bands[39].Visible:=False;
    cxView1.Bands[35].Visible:=False;
    cxView1.Bands[31].Visible:=False;
    cxView1.Bands[27].Visible:=False;
    cxView1.Bands[23].Visible:=False;
    cxView1.Bands[19].Visible:=true;
  end else if SpinEdit3.Value=4 then begin
    cxView1.Bands[47].Visible:=False;
    cxView1.Bands[43].Visible:=False;
    cxView1.Bands[39].Visible:=False;
    cxView1.Bands[35].Visible:=False;
    cxView1.Bands[31].Visible:=False;
    cxView1.Bands[27].Visible:=False;
    cxView1.Bands[23].Visible:=False;
    cxView1.Bands[19].Visible:=False;
    cxView1.Bands[15].Visible:=true;
  end else if SpinEdit3.Value=3 then begin
    cxView1.Bands[47].Visible:=False;
    cxView1.Bands[43].Visible:=False;
    cxView1.Bands[39].Visible:=False;
    cxView1.Bands[35].Visible:=False;
    cxView1.Bands[31].Visible:=False;
    cxView1.Bands[27].Visible:=False;
    cxView1.Bands[23].Visible:=False;
    cxView1.Bands[19].Visible:=False;
    cxView1.Bands[15].Visible:=False;
    cxView1.Bands[11].Visible:=true;
  end else if SpinEdit3.Value=2 then begin
    cxView1.Bands[47].Visible:=False;
    cxView1.Bands[43].Visible:=False;
    cxView1.Bands[39].Visible:=False;
    cxView1.Bands[35].Visible:=False;
    cxView1.Bands[31].Visible:=False;
    cxView1.Bands[27].Visible:=False;
    cxView1.Bands[23].Visible:=False;
    cxView1.Bands[19].Visible:=False;
    cxView1.Bands[15].Visible:=False;
    cxView1.Bands[11].Visible:=False;
    cxView1.Bands[7].Visible:=true;
  end else if SpinEdit3.Value=1 then begin
    cxView1.Bands[47].Visible:=False;
    cxView1.Bands[43].Visible:=False;
    cxView1.Bands[39].Visible:=False;
    cxView1.Bands[35].Visible:=False;
    cxView1.Bands[31].Visible:=False;
    cxView1.Bands[27].Visible:=False;
    cxView1.Bands[23].Visible:=False;
    cxView1.Bands[19].Visible:=False;
    cxView1.Bands[15].Visible:=False;
    cxView1.Bands[11].Visible:=False;
    cxView1.Bands[7].Visible:=False;
    cxView1.Bands[3].Visible:=true;
  end;

  //{
  for i:=1 to 12 do begin
    m1[i]:=1;
  end;
  if spinedit2.value>1 then begin
    for i:=1 to spinedit2.value-1 do begin
      m1[i]:=0;
    end;
    if spinedit3.value<12 then begin
      for i:=spinedit3.value+1 to 12 do begin
        m1[i]:=0;
      end;
    end;
  end else begin
    if spinedit3.value<12 then begin
      for i:=spinedit3.value+1 to 12 do begin
        m1[i]:=0;
      end;
    end;
  end;
  {
  with query2 do begin
    close;
    params.clear;
    params.CreateParam(ftinteger,'x1',ptinput);
    params.CreateParam(ftinteger,'x2',ptinput);
    params.CreateParam(ftinteger,'x3',ptinput);
    params.CreateParam(ftinteger,'x4',ptinput);
    params.CreateParam(ftinteger,'x5',ptinput);
    params.CreateParam(ftinteger,'x6',ptinput);
    params.CreateParam(ftinteger,'x7',ptinput);
    params.CreateParam(ftinteger,'x8',ptinput);
    params.CreateParam(ftinteger,'x9',ptinput);
    params.CreateParam(ftinteger,'x10',ptinput);
    params.CreateParam(ftinteger,'x11',ptinput);
    params.CreateParam(ftinteger,'x12',ptinput);
    params.CreateParam(ftstring,'x13',ptinput);
    params.CreateParam(ftinteger,'x14',ptinput);
    commandtext:='update tbl_cap_oa_style_new_period set m1=:x1,m2=:x2,m3=:x3,m4=:x4,m5=:x5,m6=:x6,m7=:x7,m8=:x8,m9=:x9,m10=:x10,m11=:x11,m12=:x12 where tplant=:x13 and yr=:x14';
    params[0].asinteger:=m1[1];
    params[1].asinteger:=m1[2];
    params[2].asinteger:=m1[3];
    params[3].asinteger:=m1[4];
    params[4].asinteger:=m1[5];
    params[5].asinteger:=m1[6];
    params[6].asinteger:=m1[7];
    params[7].asinteger:=m1[8];
    params[8].asinteger:=m1[9];
    params[9].asinteger:=m1[10];
    params[10].asinteger:=m1[11];
    params[11].asinteger:=m1[12];
    params[12].asstring:=fty;//query1.fieldbyname('tplant').value;
    params[13].asinteger:=spinedit1.value;//query1.fieldbyname('yr').value;
    execute;
  end;
  }
  strupd:='update tbl_cap_oa_style_new_period set m1='+inttostr(m1[1])+',m2='+inttostr(m1[2])+',m3=';
  strupd:=strupd+inttostr(m1[3])+',m4='+inttostr(m1[4])+',m5='+inttostr(m1[5])+',m6='+inttostr(m1[6])+',m7=';
  strupd:=strupd+inttostr(m1[7])+',m8='+inttostr(m1[8])+',m9='+inttostr(m1[9])+',m10='+inttostr(m1[10]);
  strupd:=strupd+',m11='+inttostr(m1[11])+',m12='+inttostr(m1[12])+' where tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
  if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

  if treeview1.Selected<>nil then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_cap_updoastyleos(:x1,:x2)';
      params[0].asstring:=fty;
      params[1].asinteger:=spinedit1.value;
      execute;
    end;
    if xh1.ItemIndex=1 then begin
      dbgrideh1.Visible:=true;
      dbgrideh2.Visible:=false;
      if treeview1.Selected.Level=2 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new where tplant='''+fty+''' and cust='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value);
          open;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select count(distinct cust) as x1,count(distinct cstyle) as x2,count(distinct flag6) as x3 from tbl_cap_oa_style_new where cstyle<>'''+'Haven"t Style #'+''' and tplant='''+fty+''' and cust='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value);
          open;
          if not fieldbyname('x1').isnull then dbgrideh1.Columns[1].Footer.value:=fieldbyname('x1').value;
          if not fieldbyname('x2').isnull then dbgrideh1.Columns[3].Footer.value:=fieldbyname('x2').value;
          if not fieldbyname('x3').isnull then dbgrideh1.Columns[4].Footer.value:=fieldbyname('x3').value;
        end;
      end else if treeview1.Selected.Level=1 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new where tplant='''+fty+''' and grp='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.value);
          open;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select count(distinct cust) as x1,count(distinct cstyle) as x2,count(distinct flag6) as x3 from tbl_cap_oa_style_new where cstyle<>'''+'Haven"t Style #'+''' and tplant='''+fty+''' and grp='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value);
          open;
          if not fieldbyname('x1').isnull then dbgrideh1.Columns[1].Footer.value:=fieldbyname('x1').value;
          if not fieldbyname('x2').isnull then dbgrideh1.Columns[3].Footer.value:=fieldbyname('x2').value;
          if not fieldbyname('x3').isnull then dbgrideh1.Columns[4].Footer.value:=fieldbyname('x3').value;
        end;
        //dbgrideh1.ReadOnly:=true;
      end else if treeview1.Selected.Level=0 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new where tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
          open;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select count(distinct cust) as x1,count(distinct cstyle) as x2,count(distinct flag6) as x3 from tbl_cap_oa_style_new where cstyle<>'''+'Haven"t Style #'+''' and tplant='''+fty+''' and yr='+inttostr(spinedit1.Value);
          open;
          if not fieldbyname('x1').isnull then dbgrideh1.Columns[1].Footer.value:=fieldbyname('x1').value;
          if not fieldbyname('x2').isnull then dbgrideh1.Columns[3].Footer.value:=fieldbyname('x2').value;
          if not fieldbyname('x3').isnull then dbgrideh1.Columns[4].Footer.value:=fieldbyname('x3').value;
        end;
        //dbgrideh1.ReadOnly:=true;
      end;
    end else begin
      dbgrideh1.Visible:=false;
      dbgrideh2.Visible:=true;
      //with query2 do begin
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_cap_updstyle_sum(:x1,:x2)';
        params[0].asstring:=fty;
        params[1].asinteger:=spinedit1.Value;
        execute;
      end;
      if treeview1.Selected.Level=2 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new_sum where tplant='''+fty+''' and cust='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value);
          open;
        end;
      end else if treeview1.Selected.Level=1 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new_sum where tplant='''+fty+''' and grp='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.value);
          open;
        end;
      end else if treeview1.Selected.Level=0 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new_sum where tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
          open;
        end;
      end;
    end;
  end;
  cxView1.DataController.Summary.FooterSummaryValues[0]:='TTL';
  //}
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_style.TreeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
  //if query1.active then show_data1
  //else
  show_data;
end;

procedure Tfrmnewcap_style.BitBtn1Click(Sender: TObject);
begin
  //dbgrideh1.SetFocus;
  //query1.Append;
  if treeview1.Selected.Level=2 then begin
  //if combobox3.text>'' then begin
    if frmnewcap_custstatus=nil then frmnewcap_custstatus:=tfrmnewcap_custstatus.create(nil);
    frmnewcap_custstatus.ComboBox1.Visible:=false;
    frmnewcap_custstatus.ComboBox2.Visible:=false;
    frmnewcap_custstatus.DBText1.Visible:=true;
    frmnewcap_custstatus.DBText2.Visible:=true;
    with frmnewcap_custstatus.query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select * from tbl_cap_custstatus where tplant=:x1 and cust=:x2';
      params[0].asstring:=query1.fieldbyname('tplant').value;
      params[1].asstring:=query1.fieldbyname('cust').value;
      open;
    end;
    frmnewcap_custstatus.show;
  end;
end;

procedure Tfrmnewcap_style.Query1AfterPost(DataSet: TDataSet);
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select seq from tbl_cap_oa_style_new where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftfloat,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftfloat,'x6',ptinput);
          params.createparam(ftfloat,'x7',ptinput);
          params.createparam(ftfloat,'x8',ptinput);
          params.createparam(ftfloat,'x9',ptinput);
          params.createparam(ftinteger,'x10',ptinput);
          params.createparam(ftfloat,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(ftinteger,'x15',ptinput);
          params.createparam(ftfloat,'x18',ptinput);
          params.createparam(ftfloat,'x19',ptinput);
          params.createparam(ftinteger,'x20',ptinput);
          params.createparam(ftfloat,'x23',ptinput);
          params.createparam(ftfloat,'x24',ptinput);
          params.createparam(ftinteger,'x25',ptinput);
          params.createparam(ftfloat,'x28',ptinput);
          params.createparam(ftfloat,'x29',ptinput);
          params.createparam(ftinteger,'x30',ptinput);
          params.createparam(ftfloat,'x33',ptinput);
          params.createparam(ftfloat,'x34',ptinput);
          params.createparam(ftinteger,'x35',ptinput);
          params.createparam(ftfloat,'x38',ptinput);
          params.createparam(ftfloat,'x39',ptinput);
          params.createparam(ftinteger,'x40',ptinput);
          params.createparam(ftfloat,'x43',ptinput);
          params.createparam(ftfloat,'x44',ptinput);
          params.createparam(ftinteger,'x45',ptinput);
          params.createparam(ftfloat,'x48',ptinput);
          params.createparam(ftfloat,'x49',ptinput);
          params.createparam(ftinteger,'x50',ptinput);
          params.createparam(ftfloat,'x53',ptinput);
          params.createparam(ftfloat,'x54',ptinput);
          params.createparam(ftinteger,'x55',ptinput);
          params.createparam(ftfloat,'x58',ptinput);
          params.createparam(ftfloat,'x59',ptinput);
          params.createparam(ftinteger,'x60',ptinput);
          params.createparam(ftfloat,'x63',ptinput);
          params.createparam(ftfloat,'x64',ptinput);
          params.createparam(ftstring,'x66',ptinput);
          params.createparam(ftinteger,'x65',ptinput);
          commandtext:='update tbl_cap_oa_style_new set cstyle=:x1,flag6=:x2,oldnew=:x3,sah=:x4,q01=:x5,e01=:x6,e101=:x7,tsah01=:x8,tw01=:x9,'
                      +'q02=:x10,tsah02=:x13,tw02=:x14,q03=:x15,tsah03=:x18,tw03=:x19,'
                      +'q04=:x20,tsah04=:x23,tw04=:x24,q05=:x25,tsah05=:x28,tw05=:x29,'
                      +'q06=:x30,tsah06=:x33,tw06=:x34,q07=:x35,tsah07=:x38,tw07=:x39,'
                      +'q08=:x40,tsah08=:x43,tw08=:x44,q09=:x45,tsah09=:x48,tw09=:x49,'
                      +'q10=:x50,tsah10=:x53,tw10=:x54,q11=:x55,tsah11=:x58,tw11=:x59,'
                      +'q12=:x60,tsah12=:x63,tw12=:x64,tostyle=:x66 where seq=:x65';
          if not query1.fieldbyname('cstyle').isnull then
          params[0].asstring:=query1.fieldbyname('cstyle').value
          else params[0].asstring:='';
          if not query1.fieldbyname('flag6').isnull then
          params[1].asstring:=query1.fieldbyname('flag6').value
          else params[1].asstring:='';
          if not query1.fieldbyname('oldnew').isnull then
          params[2].asstring:=query1.fieldbyname('oldnew').value
          else params[2].asstring:='';
          if not query1.fieldbyname('sah').isnull then
          params[3].asfloat:=query1.fieldbyname('sah').value
          else params[3].asfloat:=0;
          params[4].asinteger:=query1.fieldbyname('q01').value;
          if not query1.fieldbyname('e01').isnull then
          params[5].asfloat:=query1.fieldbyname('e01').value
          else params[5].asfloat:=0;
          if not query1.fieldbyname('e101').isnull then
          params[6].asfloat:=query1.fieldbyname('e101').value
          else params[6].asfloat:=0;
          if not query1.fieldbyname('tsah01').isnull then
          params[7].asfloat:=query1.fieldbyname('tsah01').value
          else params[7].asfloat:=0;
          if not query1.fieldbyname('tw01').isnull then
          params[8].asfloat:=query1.fieldbyname('tw01').value
          else params[8].asfloat:=0;
          params[9].asinteger:=query1.fieldbyname('q02').value;
          if not query1.fieldbyname('tsah02').isnull then
          params[10].asfloat:=query1.fieldbyname('tsah02').value
          else params[10].asfloat:=0;
          if not query1.fieldbyname('tw02').isnull then
          params[11].asfloat:=query1.fieldbyname('tw02').value
          else params[11].asfloat:=0;
          params[12].asinteger:=query1.fieldbyname('q03').value;
          if not query1.fieldbyname('tsah03').isnull then
          params[13].asfloat:=query1.fieldbyname('tsah03').value
          else params[13].asfloat:=0;
          if not query1.fieldbyname('tw03').isnull then
          params[14].asfloat:=query1.fieldbyname('tw03').value
          else params[14].asfloat:=0;
          params[15].asinteger:=query1.fieldbyname('q04').value;
          if not query1.fieldbyname('tsah04').isnull then
          params[16].asfloat:=query1.fieldbyname('tsah04').value
          else params[16].asfloat:=0;
          if not query1.fieldbyname('tw04').isnull then
          params[17].asfloat:=query1.fieldbyname('tw04').value
          else params[17].asfloat:=0;
          params[18].asinteger:=query1.fieldbyname('q05').value;
          if not query1.fieldbyname('tsah05').isnull then
          params[19].asfloat:=query1.fieldbyname('tsah05').value
          else params[19].asfloat:=0;
          if not query1.fieldbyname('tw05').isnull then
          params[20].asfloat:=query1.fieldbyname('tw05').value
          else params[20].asfloat:=0;
          params[21].asinteger:=query1.fieldbyname('q06').value;
          if not query1.fieldbyname('tsah06').isnull then
          params[22].asfloat:=query1.fieldbyname('tsah06').value
          else params[22].asfloat:=0;
          if not query1.fieldbyname('tw06').isnull then
          params[23].asfloat:=query1.fieldbyname('tw06').value
          else params[23].asfloat:=0;
          params[24].asinteger:=query1.fieldbyname('q07').value;
          if not query1.fieldbyname('tsah07').isnull then
          params[25].asfloat:=query1.fieldbyname('tsah07').value
          else params[25].asfloat:=0;
          if not query1.fieldbyname('tw07').isnull then
          params[26].asfloat:=query1.fieldbyname('tw07').value
          else params[26].asfloat:=0;
          params[27].asinteger:=query1.fieldbyname('q08').value;
          if not query1.fieldbyname('tsah08').isnull then
          params[28].asfloat:=query1.fieldbyname('tsah08').value
          else params[28].asfloat:=0;
          if not query1.fieldbyname('tw08').isnull then
          params[29].asfloat:=query1.fieldbyname('tw08').value
          else params[29].asfloat:=0;
          params[30].asinteger:=query1.fieldbyname('q09').value;
          if not query1.fieldbyname('tsah09').isnull then
          params[31].asfloat:=query1.fieldbyname('tsah09').value
          else params[31].asfloat:=0;
          if not query1.fieldbyname('tw09').isnull then
          params[32].asfloat:=query1.fieldbyname('tw09').value
          else params[32].asfloat:=0;
          params[33].asinteger:=query1.fieldbyname('q10').value;
          if not query1.fieldbyname('tsah10').isnull then
          params[34].asfloat:=query1.fieldbyname('tsah10').value
          else params[34].asfloat:=0;
          if not query1.fieldbyname('tw10').isnull then
          params[35].asfloat:=query1.fieldbyname('tw10').value
          else params[35].asfloat:=0;
          params[36].asinteger:=query1.fieldbyname('q11').value;
          if not query1.fieldbyname('tsah11').isnull then
          params[37].asfloat:=query1.fieldbyname('tsah11').value
          else params[37].asfloat:=0;
          if not query1.fieldbyname('tw11').isnull then
          params[38].asfloat:=query1.fieldbyname('tw11').value
          else params[38].asfloat:=0;
          params[39].asinteger:=query1.fieldbyname('q12').value;
          if not query1.fieldbyname('tsah12').isnull then
          params[40].asfloat:=query1.fieldbyname('tsah12').value
          else params[40].asfloat:=0;
          if not query1.fieldbyname('tw12').isnull then
          params[41].asfloat:=query1.fieldbyname('tw12').value
          else params[41].asfloat:=0;
          if not query1.fieldbyname('tostyle').isnull then
          params[42].asstring:=query1.fieldbyname('tostyle').value
          else params[42].asstring:='';
          params[43].asinteger:=query1.fieldbyname('seq').value;
          execute;
        end;
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftfloat,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftfloat,'x6',ptinput);
          params.createparam(ftfloat,'x7',ptinput);
          params.createparam(ftfloat,'x8',ptinput);
          params.createparam(ftfloat,'x9',ptinput);
          params.createparam(ftinteger,'x10',ptinput);
          params.createparam(ftfloat,'x13',ptinput);
          params.createparam(ftfloat,'x14',ptinput);
          params.createparam(ftinteger,'x15',ptinput);
          params.createparam(ftfloat,'x18',ptinput);
          params.createparam(ftfloat,'x19',ptinput);
          params.createparam(ftinteger,'x20',ptinput);
          params.createparam(ftfloat,'x23',ptinput);
          params.createparam(ftfloat,'x24',ptinput);
          params.createparam(ftinteger,'x25',ptinput);
          params.createparam(ftfloat,'x28',ptinput);
          params.createparam(ftfloat,'x29',ptinput);
          params.createparam(ftinteger,'x30',ptinput);
          params.createparam(ftfloat,'x33',ptinput);
          params.createparam(ftfloat,'x34',ptinput);
          params.createparam(ftinteger,'x35',ptinput);
          params.createparam(ftfloat,'x38',ptinput);
          params.createparam(ftfloat,'x39',ptinput);
          params.createparam(ftinteger,'x40',ptinput);
          params.createparam(ftfloat,'x43',ptinput);
          params.createparam(ftfloat,'x44',ptinput);
          params.createparam(ftinteger,'x45',ptinput);
          params.createparam(ftfloat,'x48',ptinput);
          params.createparam(ftfloat,'x49',ptinput);
          params.createparam(ftinteger,'x50',ptinput);
          params.createparam(ftfloat,'x53',ptinput);
          params.createparam(ftfloat,'x54',ptinput);
          params.createparam(ftinteger,'x55',ptinput);
          params.createparam(ftfloat,'x58',ptinput);
          params.createparam(ftfloat,'x59',ptinput);
          params.createparam(ftinteger,'x60',ptinput);
          params.createparam(ftfloat,'x63',ptinput);
          params.createparam(ftfloat,'x64',ptinput);
          params.createparam(ftinteger,'x65',ptinput);
          params.createparam(ftstring,'x66',ptinput);
          params.createparam(ftstring,'x67',ptinput);
          params.createparam(ftinteger,'x68',ptinput);
          params.createparam(ftstring,'x69',ptinput);
          commandtext:='insert into tbl_cap_oa_style_new(cstyle,flag6,oldnew,sah,q01,e01,e101,tsah01,tw01,q02,tsah02,tw02,'
                      +'q03,tsah03,tw03,q04,tsah04,tw04,q05,tsah05,tw05,q06,tsah06,tw06,'
                      +'q07,tsah07,tw07,q08,tsah08,tw08,q09,tsah09,tw09,q10,tsah10,tw10,'
                      +'q11,tsah11,tw11,q12,tsah12,tw12,seq,tplant,cust,yr,tostyle) '
                      +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x13,:x14,:x15,:x18,:x19,'
                      +':x20,:x23,:x24,:x25,:x28,:x29,:x30,:x33,:x34,:x35,:x38,:x39,'
                      +':x40,:x43,:x44,:x45,:x48,:x49,:x50,:x53,:x54,:x55,:x58,:x59,'
                      +':x60,:x63,:x64,:x65,:x66,:x67,:x68,:x69)';
          if not query1.fieldbyname('cstyle').isnull then
          params[0].asstring:=query1.fieldbyname('cstyle').value
          else params[0].asstring:='';
          if not query1.fieldbyname('flag6').isnull then
          params[1].asstring:=query1.fieldbyname('flag6').value
          else params[1].asstring:='';
          if not query1.fieldbyname('oldnew').isnull then
          params[2].asstring:=query1.fieldbyname('oldnew').value
          else params[2].asstring:='';
          if not query1.fieldbyname('sah').isnull then
          params[3].asfloat:=query1.fieldbyname('sah').value
          else params[3].asfloat:=0;
          params[4].asinteger:=query1.fieldbyname('q01').value;
          if not query1.fieldbyname('e01').isnull then
          params[5].asfloat:=query1.fieldbyname('e01').value
          else params[5].asfloat:=0;
          if not query1.fieldbyname('e101').isnull then
          params[6].asfloat:=query1.fieldbyname('e101').value
          else params[6].asfloat:=0;
          if not query1.fieldbyname('tsah01').isnull then
          params[7].asfloat:=query1.fieldbyname('tsah01').value
          else params[7].asfloat:=0;
          if not query1.fieldbyname('tw01').isnull then
          params[8].asfloat:=query1.fieldbyname('tw01').value
          else params[8].asfloat:=0;
          params[9].asinteger:=query1.fieldbyname('q02').value;
          if not query1.fieldbyname('tsah02').isnull then
          params[10].asfloat:=query1.fieldbyname('tsah02').value
          else params[10].asfloat:=0;
          if not query1.fieldbyname('tw02').isnull then
          params[11].asfloat:=query1.fieldbyname('tw02').value
          else params[11].asfloat:=0;
          params[12].asinteger:=query1.fieldbyname('q03').value;
          if not query1.fieldbyname('tsah03').isnull then
          params[13].asfloat:=query1.fieldbyname('tsah03').value
          else params[13].asfloat:=0;
          if not query1.fieldbyname('tw03').isnull then
          params[14].asfloat:=query1.fieldbyname('tw03').value
          else params[14].asfloat:=0;
          params[15].asinteger:=query1.fieldbyname('q04').value;
          if not query1.fieldbyname('tsah04').isnull then
          params[16].asfloat:=query1.fieldbyname('tsah04').value
          else params[16].asfloat:=0;
          if not query1.fieldbyname('tw04').isnull then
          params[17].asfloat:=query1.fieldbyname('tw04').value
          else params[17].asfloat:=0;
          params[18].asinteger:=query1.fieldbyname('q05').value;
          if not query1.fieldbyname('tsah05').isnull then
          params[19].asfloat:=query1.fieldbyname('tsah05').value
          else params[19].asfloat:=0;
          if not query1.fieldbyname('tw05').isnull then
          params[20].asfloat:=query1.fieldbyname('tw05').value
          else params[20].asfloat:=0;
          params[21].asinteger:=query1.fieldbyname('q06').value;
          if not query1.fieldbyname('tsah06').isnull then
          params[22].asfloat:=query1.fieldbyname('tsah06').value
          else params[22].asfloat:=0;
          if not query1.fieldbyname('tw06').isnull then
          params[23].asfloat:=query1.fieldbyname('tw06').value
          else params[23].asfloat:=0;
          params[24].asinteger:=query1.fieldbyname('q07').value;
          if not query1.fieldbyname('tsah07').isnull then
          params[25].asfloat:=query1.fieldbyname('tsah07').value
          else params[25].asfloat:=0;
          if not query1.fieldbyname('tw07').isnull then
          params[26].asfloat:=query1.fieldbyname('tw07').value
          else params[26].asfloat:=0;
          params[27].asinteger:=query1.fieldbyname('q08').value;
          if not query1.fieldbyname('tsah08').isnull then
          params[28].asfloat:=query1.fieldbyname('tsah08').value
          else params[28].asfloat:=0;
          if not query1.fieldbyname('tw08').isnull then
          params[29].asfloat:=query1.fieldbyname('tw08').value
          else params[29].asfloat:=0;
          params[30].asinteger:=query1.fieldbyname('q09').value;
          if not query1.fieldbyname('tsah09').isnull then
          params[31].asfloat:=query1.fieldbyname('tsah09').value
          else params[31].asfloat:=0;
          if not query1.fieldbyname('tw09').isnull then
          params[32].asfloat:=query1.fieldbyname('tw09').value
          else params[32].asfloat:=0;
          params[33].asinteger:=query1.fieldbyname('q10').value;
          if not query1.fieldbyname('tsah10').isnull then
          params[34].asfloat:=query1.fieldbyname('tsah10').value
          else params[34].asfloat:=0;
          if not query1.fieldbyname('tw10').isnull then
          params[35].asfloat:=query1.fieldbyname('tw10').value
          else params[35].asfloat:=0;
          params[36].asinteger:=query1.fieldbyname('q11').value;
          if not query1.fieldbyname('tsah11').isnull then
          params[37].asfloat:=query1.fieldbyname('tsah11').value
          else params[37].asfloat:=0;
          if not query1.fieldbyname('tw11').isnull then
          params[38].asfloat:=query1.fieldbyname('tw11').value
          else params[38].asfloat:=0;
          params[39].asinteger:=query1.fieldbyname('q12').value;
          if not query1.fieldbyname('tsah12').isnull then
          params[40].asfloat:=query1.fieldbyname('tsah12').value
          else params[40].asfloat:=0;
          if not query1.fieldbyname('tw12').isnull then
          params[41].asfloat:=query1.fieldbyname('tw12').value
          else params[41].asfloat:=0;
          params[42].asinteger:=query1.fieldbyname('seq').value;
          params[43].asstring:=query1.fieldbyname('tplant').value;
          params[44].asstring:=query1.fieldbyname('cust').value;
          params[45].asinteger:=query1.fieldbyname('yr').value;
          if not query1.fieldbyname('tostyle').isnull then
          params[46].asstring:=query1.fieldbyname('tostyle').value
          else params[46].asstring:='';
          execute;
        end;
      end;
    end;
  end;
  }
end;

procedure Tfrmnewcap_style.Query1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query3 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q from tbl_cap_oa_style_new';
    open;
    if not fieldbyname('q').IsNull then seq:=fieldbyname('q').value+1
    else seq:=1;
  end;
  query1.fieldbyname('seq').value:=seq;
  query1.FieldByName('tplant').value:=combobox1.text;
  query1.fieldbyname('yr').value:=spinedit1.value;
  query1.fieldbyname('cust').value:=treeview1.Selected.Text;
  query1.fieldbyname('sah').value:=0;
  query1.fieldbyname('q01').value:=0;
  query1.fieldbyname('q02').value:=0;
  query1.fieldbyname('q03').value:=0;
  query1.fieldbyname('q04').value:=0;
  query1.fieldbyname('q05').value:=0;
  query1.fieldbyname('q06').value:=0;
  query1.fieldbyname('q07').value:=0;
  query1.fieldbyname('q08').value:=0;
  query1.fieldbyname('q09').value:=0;
  query1.fieldbyname('q10').value:=0;
  query1.fieldbyname('q11').value:=0;
  query1.fieldbyname('q12').value:=0;
end;

procedure Tfrmnewcap_style.BitBtn5Click(Sender: TObject);
begin
  if dbgrideh1.Visible=true then begin
    if pos('1)',query1.fieldbyname('cstyle').value)>0 then begin
      //if application.MessageBox('Confirm to writeoff the balance?','Confirm',mb_iconquestion+mb_okcancel)=idok then begin
      //end;
      if frmnewcap_style_adj=nil then frmnewcap_style_adj:=tfrmnewcap_style_adj.Create(nil);
      frmnewcap_style_adj.SpinEdit1.value:=spinedit1.value;
      if dbgrideh1.SelectedIndex=12 then frmnewcap_style_adj.Label4.caption:='1'
      else if dbgrideh1.selectedindex=17 then frmnewcap_style_adj.Label4.Caption:='2'
      else if dbgrideh1.selectedindex=22 then frmnewcap_style_adj.Label4.Caption:='3'
      else if dbgrideh1.selectedindex=27 then frmnewcap_style_adj.Label4.Caption:='4'
      else if dbgrideh1.selectedindex=32 then frmnewcap_style_adj.Label4.Caption:='5'
      else if dbgrideh1.selectedindex=37 then frmnewcap_style_adj.Label4.Caption:='6'
      else if dbgrideh1.selectedindex=42 then frmnewcap_style_adj.Label4.Caption:='7'
      else if dbgrideh1.selectedindex=47 then frmnewcap_style_adj.Label4.Caption:='8'
      else if dbgrideh1.selectedindex=52 then frmnewcap_style_adj.Label4.Caption:='9'
      else if dbgrideh1.selectedindex=57 then frmnewcap_style_adj.Label4.Caption:='10'
      else if dbgrideh1.selectedindex=62 then frmnewcap_style_adj.Label4.Caption:='11'
      else if dbgrideh1.selectedindex=67 then frmnewcap_style_adj.Label4.Caption:='12';
      frmnewcap_style_adj.Caption:='Sales Projection in Progress Adjust T3';
      frmnewcap_style_adj.cEdit1.Enabled:=true;
      frmnewcap_style_adj.spinEdit1.Enabled:=true;
      frmnewcap_style_adj.spinEdit2.Enabled:=true;
      frmnewcap_style_adj.cEdit2.Enabled:=false;
      frmnewcap_style_adj.show;
    end;
  end else if dbgrideh2.Visible=true then begin
    if pos('1)',query1.fieldbyname('cstyle').value)>0 then begin
      //if application.MessageBox('Confirm to writeoff the balance?','Confirm',mb_iconquestion+mb_okcancel)=idok then begin
      //end;
      if frmnewcap_style_adj=nil then frmnewcap_style_adj:=tfrmnewcap_style_adj.Create(nil);
      frmnewcap_style_adj.SpinEdit1.value:=spinedit1.value;
      if dbgrideh2.SelectedIndex=12 then frmnewcap_style_adj.Label4.caption:='1'
      else if dbgrideh2.selectedindex=17 then frmnewcap_style_adj.Label4.Caption:='2'
      else if dbgrideh2.selectedindex=22 then frmnewcap_style_adj.Label4.Caption:='3'
      else if dbgrideh2.selectedindex=27 then frmnewcap_style_adj.Label4.Caption:='4'
      else if dbgrideh2.selectedindex=32 then frmnewcap_style_adj.Label4.Caption:='5'
      else if dbgrideh2.selectedindex=37 then frmnewcap_style_adj.Label4.Caption:='6'
      else if dbgrideh2.selectedindex=42 then frmnewcap_style_adj.Label4.Caption:='7'
      else if dbgrideh2.selectedindex=47 then frmnewcap_style_adj.Label4.Caption:='8'
      else if dbgrideh2.selectedindex=52 then frmnewcap_style_adj.Label4.Caption:='9'
      else if dbgrideh2.selectedindex=57 then frmnewcap_style_adj.Label4.Caption:='10'
      else if dbgrideh2.selectedindex=62 then frmnewcap_style_adj.Label4.Caption:='11'
      else if dbgrideh2.selectedindex=67 then frmnewcap_style_adj.Label4.Caption:='12';
      frmnewcap_style_adj.Caption:='Sales Projection in Progress Adjust T3';
      frmnewcap_style_adj.cEdit1.Enabled:=true;
      frmnewcap_style_adj.spinEdit1.Enabled:=true;
      frmnewcap_style_adj.spinEdit2.Enabled:=true;
      frmnewcap_style_adj.cEdit2.Enabled:=false;
      frmnewcap_style_adj.show;
    end;
  end;
end;

procedure Tfrmnewcap_style.BitBtn3Click(Sender: TObject);
begin
  dbgrideh1.SetFocus;
  query1.Append;
end;

procedure Tfrmnewcap_style.querysahchange(Sender: TField);
var
  sah:double;
  qty:integer;
begin
  {
  if not query1.fieldbyname('sah').isnull then begin
    query1.fieldbyname('tsah01').value:=query1.fieldbyname('q01').value*query1.fieldbyname('sah').value;
    query1.fieldbyname('tsah02').value:=query1.fieldbyname('q02').value*query1.fieldbyname('sah').value;
    query1.fieldbyname('tsah03').value:=query1.fieldbyname('q03').value*query1.fieldbyname('sah').value;
    query1.fieldbyname('tsah04').value:=query1.fieldbyname('q04').value*query1.fieldbyname('sah').value;
    query1.fieldbyname('tsah05').value:=query1.fieldbyname('q05').value*query1.fieldbyname('sah').value;
    query1.fieldbyname('tsah06').value:=query1.fieldbyname('q06').value*query1.fieldbyname('sah').value;
    query1.fieldbyname('tsah07').value:=query1.fieldbyname('q07').value*query1.fieldbyname('sah').value;
    query1.fieldbyname('tsah08').value:=query1.fieldbyname('q08').value*query1.fieldbyname('sah').value;
    query1.fieldbyname('tsah09').value:=query1.fieldbyname('q09').value*query1.fieldbyname('sah').value;
    query1.fieldbyname('tsah10').value:=query1.fieldbyname('q10').value*query1.fieldbyname('sah').value;
    query1.fieldbyname('tsah11').value:=query1.fieldbyname('q11').value*query1.fieldbyname('sah').value;
    query1.fieldbyname('tsah12').value:=query1.fieldbyname('q12').value*query1.fieldbyname('sah').value;
  end else begin
    query1.fieldbyname('tsah01').value:=0;
    query1.fieldbyname('tsah02').value:=0;
    query1.fieldbyname('tsah03').value:=0;
    query1.fieldbyname('tsah04').value:=0;
    query1.fieldbyname('tsah05').value:=0;
    query1.fieldbyname('tsah06').value:=0;
    query1.fieldbyname('tsah07').value:=0;
    query1.fieldbyname('tsah08').value:=0;
    query1.fieldbyname('tsah09').value:=0;
    query1.fieldbyname('tsah10').value:=0;
    query1.fieldbyname('tsah11').value:=0;
    query1.fieldbyname('tsah12').value:=0;
  end;
  }
end;

procedure Tfrmnewcap_style.Refreshwithoutrecalculation1Click(Sender: TObject);
var
  i:integer;
  m1:array[1..12] of integer;
  fty:string;
begin
  screen.Cursor:=crSQLWait;
  try
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='BD' then fty:='CL' else fty:=combobox1.text;
  if spinedit2.value>1 then begin
    for i:=12 to 71 do begin
      dbgrideh1.Columns[i].Visible:=true;
      dbgrideh2.Columns[i].Visible:=true;
    end;
    for i:=12 to 12+(spinedit2.value-1)*5-1 do begin
      dbgrideh1.Columns[i].Visible:=false;
      dbgrideh2.Columns[i].Visible:=false;
    end;
    if spinedit3.value<12 then begin
      for i:=71-(12-spinedit3.value)*5+1 to 71 do begin
        dbgrideh1.columns[i].visible:=false;
        dbgrideh2.Columns[i].Visible:=false;
      end;
    end;
  end else begin
    for i:=12 to 71 do begin
      dbgrideh1.Columns[i].Visible:=true;
      dbgrideh2.Columns[i].Visible:=true;
    end;
    if spinedit3.value<12 then begin
      for i:=71-(12-spinedit3.value)*5+1 to 71 do begin
        dbgrideh1.columns[i].visible:=false;
        dbgrideh2.Columns[i].Visible:=false;
      end;
    end;
  end;

  for i:=1 to 12 do begin
    m1[i]:=1;
  end;
  if spinedit2.value>1 then begin
    for i:=1 to spinedit2.value-1 do begin
      m1[i]:=0;
    end;
    if spinedit3.value<12 then begin
      for i:=spinedit3.value+1 to 12 do begin
        m1[i]:=0;
      end;
    end;
  end else begin
    if spinedit3.value<12 then begin
      for i:=spinedit3.value+1 to 12 do begin
        m1[i]:=0;
      end;
    end;
  end;

  strupd:='update tbl_cap_oa_style_new_period set m1='+inttostr(m1[1])+',m2='+inttostr(m1[2])+',m3=';
  strupd:=strupd+inttostr(m1[3])+',m4='+inttostr(m1[4])+',m5='+inttostr(m1[5])+',m6='+inttostr(m1[6])+',m7=';
  strupd:=strupd+inttostr(m1[7])+',m8='+inttostr(m1[8])+',m9='+inttostr(m1[9])+',m10='+inttostr(m1[10]);
  strupd:=strupd+',m11='+inttostr(m1[11])+',m12='+inttostr(m1[12])+' where tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
  if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

  if treeview1.Selected<>nil then begin
    if xh1.ItemIndex=1 then begin
      dbgrideh1.Visible:=true;
      dbgrideh2.Visible:=false;
      if treeview1.Selected.Level=2 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new where tplant='''+fty+''' and cust='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value);
          open;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select count(distinct cust) as x1,count(distinct cstyle) as x2,count(distinct flag6) as x3 from tbl_cap_oa_style_new where cstyle<>'''+'Haven"t Style #'+''' and tplant='''+fty+''' and cust='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value);
          open;
          if not fieldbyname('x1').isnull then dbgrideh1.Columns[1].Footer.value:=fieldbyname('x1').value;
          if not fieldbyname('x2').isnull then dbgrideh1.Columns[3].Footer.value:=fieldbyname('x2').value;
          if not fieldbyname('x3').isnull then dbgrideh1.Columns[4].Footer.value:=fieldbyname('x3').value;
        end;
      end else if treeview1.Selected.Level=1 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new where tplant='''+fty+''' and grp='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.value);
          open;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select count(distinct cust) as x1,count(distinct cstyle) as x2,count(distinct flag6) as x3 from tbl_cap_oa_style_new where cstyle<>'''+'Haven"t Style #'+''' and tplant='''+fty+''' and grp='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value);
          open;
          if not fieldbyname('x1').isnull then dbgrideh1.Columns[1].Footer.value:=fieldbyname('x1').value;
          if not fieldbyname('x2').isnull then dbgrideh1.Columns[3].Footer.value:=fieldbyname('x2').value;
          if not fieldbyname('x3').isnull then dbgrideh1.Columns[4].Footer.value:=fieldbyname('x3').value;
        end;
      end else if treeview1.Selected.Level=0 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new where tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
          open;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select count(distinct cust) as x1,count(distinct cstyle) as x2,count(distinct flag6) as x3 from tbl_cap_oa_style_new where cstyle<>'''+'Haven"t Style #'+''' and tplant='''+fty+''' and yr='+inttostr(spinedit1.Value);
          open;
          if not fieldbyname('x1').isnull then dbgrideh1.Columns[1].Footer.value:=fieldbyname('x1').value;
          if not fieldbyname('x2').isnull then dbgrideh1.Columns[3].Footer.value:=fieldbyname('x2').value;
          if not fieldbyname('x3').isnull then dbgrideh1.Columns[4].Footer.value:=fieldbyname('x3').value;
        end;
      end;
    end else begin
      dbgrideh1.Visible:=false;
      dbgrideh2.Visible:=true;
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_cap_updstyle_sum(:x1,:x2)';
        params[0].asstring:=fty;
        params[1].asinteger:=spinedit1.Value;
        execute;
      end;
      if treeview1.Selected.Level=2 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new_sum where tplant='''+fty+''' and cust='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value);
          open;
        end;
      end else if treeview1.Selected.Level=1 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new_sum where tplant='''+fty+''' and grp='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.value);
          open;
        end;
      end else if treeview1.Selected.Level=0 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new_sum where tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
          open;
        end;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_style.DBGridEh1Columns10EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.state=dsinsert then query1.Post;
  //databyweek(query1.fieldbyname('seq').value,1);
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(1,2,1);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns12EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.state=dsinsert then query1.Post;
  //databyweek(query1.fieldbyname('seq').value,2);
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(2,2,1);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns17EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.state=dsinsert then query1.Post;
  //databyweek(query1.fieldbyname('seq').value,3);
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(3,2,1);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns22EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.state=dsinsert then query1.Post;
  //databyweek(query1.fieldbyname('seq').value,4);
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(4,2,1);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns27EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.state=dsinsert then query1.Post;
  //databyweek(query1.fieldbyname('seq').value,5);
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(5,2,1);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns32EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.state=dsinsert then query1.Post;
  //databyweek(query1.fieldbyname('seq').value,6);
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(6,2,1);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns37EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.state=dsinsert then query1.Post;
  //databyweek(query1.fieldbyname('seq').value,7);
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(7,2,1);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns42EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.state=dsinsert then query1.Post;
  //databyweek(query1.fieldbyname('seq').value,8);
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(8,2,1);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns47EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.state=dsinsert then query1.Post;
  //databyweek(query1.fieldbyname('seq').value,9);
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(9,2,1);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns52EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.state=dsinsert then query1.Post;
  //databyweek(query1.fieldbyname('seq').value,10);
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(10,2,1);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns57EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.state=dsinsert then query1.Post;
  //databyweek(query1.fieldbyname('seq').value,11);
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(11,2,1);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns62EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //if query1.state=dsinsert then query1.Post;
  //databyweek(query1.fieldbyname('seq').value,12);
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(12,2,1);
end;

procedure Tfrmnewcap_style.databyweek(const i1, i2: integer);
var
  i:integer;
begin
  screen.Cursor:=crSQLWait;
  try
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_cap_gen_wstyle(:x1,:x2)';
    params[0].asinteger:=i1;
    params[1].asinteger:=i2;
    execute;
  end;
  if frmnewcap_wstyle=nil then frmnewcap_wstyle:=tfrmnewcap_wstyle.Create(nil);
  with frmnewcap_wstyle.Query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_cap_oa_style_new1 where seq=:x1 and m1=:x2';
    params[0].asinteger:=i1;
    params[1].asinteger:=i2;
    open;
  end;
  frmnewcap_wstyle.Show;
  }
  if pos('1)',query1.fieldbyname('cstyle').value)>0 then exit;

  if frmnewcap_style_wk=nil then frmnewcap_style_wk:=tfrmnewcap_style_wk.Create(nil);
  with frmnewcap_style_wk.Query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from tbl_cap_oa_style_new_wk1 where seq=:x1 and m1=:x2 and sel=1';
    params[0].asinteger:=i1;
    params[1].asinteger:=i2;
    open;
  end;
  {
  i:=0;
  with frmnewcap_style_wk.Query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select distinct wkno from tbl_cap_wkno where yr=:x1 and m1=:x2 order by wkno';
    params[0].asinteger:=query1.fieldbyname('yr').value;
    params[1].asinteger:=i2;
    open;
    first;
    while not eof do begin
      i:=i+1;
      if i=1 then frmnewcap_style_wk.Label9.Caption:='Week '+fieldbyname('wkno').asstring
      else if i=2 then frmnewcap_style_wk.Label10.Caption:='Week '+fieldbyname('wkno').asstring
      else if i=3 then frmnewcap_style_wk.Label11.Caption:='Week '+fieldbyname('wkno').asstring
      else if i=4 then frmnewcap_style_wk.Label12.Caption:='Week '+fieldbyname('wkno').asstring
      else if i=5 then frmnewcap_style_wk.Label13.Caption:='Week '+fieldbyname('wkno').asstring
      else if i=6 then frmnewcap_style_wk.Label14.Caption:='Week '+fieldbyname('wkno').asstring;
      application.ProcessMessages;
      next;
    end;
    if i=4 then begin
      frmnewcap_style_wk.Label13.Visible:=false;
      frmnewcap_style_wk.dbdatetimeediteh9.Visible:=false;
      frmnewcap_style_wk.dbedit9.Visible:=false;
      frmnewcap_style_wk.dbdatetimeediteh10.Visible:=false;
      frmnewcap_style_wk.dbedit10.Visible:=false;
      frmnewcap_style_wk.dbcombobox5.Visible:=false;
      frmnewcap_style_wk.Label14.Visible:=false;
      frmnewcap_style_wk.dbdatetimeediteh11.Visible:=false;
      frmnewcap_style_wk.dbedit11.Visible:=false;
      frmnewcap_style_wk.dbdatetimeediteh12.Visible:=false;
      frmnewcap_style_wk.dbedit12.Visible:=false;
      frmnewcap_style_wk.dbcombobox6.Visible:=false;
    end else if i=5 then begin
      frmnewcap_style_wk.Label14.Visible:=false;
      frmnewcap_style_wk.dbdatetimeediteh11.Visible:=false;
      frmnewcap_style_wk.dbedit11.Visible:=false;
      frmnewcap_style_wk.dbdatetimeediteh12.Visible:=false;
      frmnewcap_style_wk.dbedit12.Visible:=false;
      frmnewcap_style_wk.dbcombobox6.Visible:=false;
    end else begin
      frmnewcap_style_wk.Label13.Visible:=true;
      frmnewcap_style_wk.dbdatetimeediteh9.Visible:=true;
      frmnewcap_style_wk.dbedit9.Visible:=true;
      frmnewcap_style_wk.dbdatetimeediteh10.Visible:=true;
      frmnewcap_style_wk.dbedit10.Visible:=true;
      frmnewcap_style_wk.dbcombobox5.Visible:=true;
      frmnewcap_style_wk.Label14.Visible:=true;
      frmnewcap_style_wk.dbdatetimeediteh11.Visible:=true;
      frmnewcap_style_wk.dbedit11.Visible:=true;
      frmnewcap_style_wk.dbdatetimeediteh12.Visible:=true;
      frmnewcap_style_wk.dbedit12.Visible:=true;
      frmnewcap_style_wk.dbcombobox6.Visible:=true;
    end;
  end;
  }
  frmnewcap_style_wk.show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_style.querye01change(Sender: TField);
begin
  if not query1.fieldbyname('e01').isnull then begin
    if not query1.fieldbyname('e101').isnull then begin
      if query1.fieldbyname('e101').value=0 then query1.fieldbyname('e101').value:=query1.fieldbyname('e01').value;
    end else query1.fieldbyname('e101').value:=query1.fieldbyname('e01').value;
  end;
end;

procedure Tfrmnewcap_style.querysah1change(Sender: TField);
begin
  {
  if not query1.fieldbyname('e101').isnull then begin
    query1.fieldbyname('tw01').value:=query1.fieldbyname('q01').value*query1.fieldbyname('e101').value/100.00;
    query1.fieldbyname('tw02').value:=query1.fieldbyname('q02').value*query1.fieldbyname('e102').value/100.00;
    query1.fieldbyname('tw03').value:=query1.fieldbyname('q03').value*query1.fieldbyname('e103').value/100.00;
    query1.fieldbyname('tw04').value:=query1.fieldbyname('q04').value*query1.fieldbyname('e104').value/100.00;
    query1.fieldbyname('tw05').value:=query1.fieldbyname('q05').value*query1.fieldbyname('e105').value/100.00;
    query1.fieldbyname('tw06').value:=query1.fieldbyname('q06').value*query1.fieldbyname('e106').value/100.00;
    query1.fieldbyname('tw07').value:=query1.fieldbyname('q07').value*query1.fieldbyname('e107').value/100.00;
    query1.fieldbyname('tw08').value:=query1.fieldbyname('q08').value*query1.fieldbyname('e108').value/100.00;
    query1.fieldbyname('tw09').value:=query1.fieldbyname('q09').value*query1.fieldbyname('e109').value/100.00;
    query1.fieldbyname('tw10').value:=query1.fieldbyname('q10').value*query1.fieldbyname('e110').value/100.00;
    query1.fieldbyname('tw11').value:=query1.fieldbyname('q11').value*query1.fieldbyname('e111').value/100.00;
    query1.fieldbyname('tw12').value:=query1.fieldbyname('q12').value*query1.fieldbyname('e112').value/100.00;
  end;
  }
end;

procedure Tfrmnewcap_style.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.previewform.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).Zoompercentage:=100;
end;

procedure Tfrmnewcap_style.BitBtn6Click(Sender: TObject);
begin
  if cxView1.GetColumnByFieldName('Q01').Focused then Showleveloffdetailform(1)
  else if cxView1.GetColumnByFieldName('Q02').Focused then Showleveloffdetailform(2)
  else if cxView1.GetColumnByFieldName('Q03').Focused then Showleveloffdetailform(3)
  else if cxView1.GetColumnByFieldName('Q04').Focused then Showleveloffdetailform(4)
  else if cxView1.GetColumnByFieldName('Q05').Focused then Showleveloffdetailform(5)
  else if cxView1.GetColumnByFieldName('Q06').Focused then Showleveloffdetailform(6)
  else if cxView1.GetColumnByFieldName('Q07').Focused then Showleveloffdetailform(7)
  else if cxView1.GetColumnByFieldName('Q08').Focused then Showleveloffdetailform(8)
  else if cxView1.GetColumnByFieldName('Q09').Focused then Showleveloffdetailform(9)
  else if cxView1.GetColumnByFieldName('Q10').Focused then Showleveloffdetailform(10)
  else if cxView1.GetColumnByFieldName('Q11').Focused then Showleveloffdetailform(11)
  else if cxView1.GetColumnByFieldName('Q12').Focused then Showleveloffdetailform(12);

  {
  if dbgrideh1.Visible=true then begin
    if pos('1)',query1.fieldbyname('cstyle').value)>0 then begin
      if dbgrideh1.SelectedIndex=12 then Showleveloffdetailform(1)//frmnewcap_style_adj.Label4.caption:='1'
      else if dbgrideh1.selectedindex=17 then Showleveloffdetailform(2)//frmnewcap_style_adj.Label4.Caption:='2'
      else if dbgrideh1.selectedindex=22 then Showleveloffdetailform(3)//frmnewcap_style_adj.Label4.Caption:='3'
      else if dbgrideh1.selectedindex=27 then Showleveloffdetailform(4)//frmnewcap_style_adj.Label4.Caption:='4'
      else if dbgrideh1.selectedindex=32 then Showleveloffdetailform(5)//frmnewcap_style_adj.Label4.Caption:='5'
      else if dbgrideh1.selectedindex=37 then Showleveloffdetailform(6)//frmnewcap_style_adj.Label4.Caption:='6'
      else if dbgrideh1.selectedindex=42 then Showleveloffdetailform(7)//frmnewcap_style_adj.Label4.Caption:='7'
      else if dbgrideh1.selectedindex=47 then Showleveloffdetailform(8)//frmnewcap_style_adj.Label4.Caption:='8'
      else if dbgrideh1.selectedindex=52 then Showleveloffdetailform(9)//frmnewcap_style_adj.Label4.Caption:='9'
      else if dbgrideh1.selectedindex=57 then Showleveloffdetailform(10)//frmnewcap_style_adj.Label4.Caption:='10'
      else if dbgrideh1.selectedindex=62 then Showleveloffdetailform(11)//frmnewcap_style_adj.Label4.Caption:='11'
      else if dbgrideh1.selectedindex=67 then Showleveloffdetailform(12);//frmnewcap_style_adj.Label4.Caption:='12';
    end;
  end else if dbgrideh2.Visible=true then begin
    if pos('1)',query1.fieldbyname('cstyle').value)>0 then begin
      if dbgrideh2.SelectedIndex=12 then Showleveloffdetailform(1)//frmnewcap_style_adj.Label4.caption:='1'
      else if dbgrideh2.selectedindex=17 then Showleveloffdetailform(2)//frmnewcap_style_adj.Label4.Caption:='2'
      else if dbgrideh2.selectedindex=22 then Showleveloffdetailform(3)//frmnewcap_style_adj.Label4.Caption:='3'
      else if dbgrideh2.selectedindex=27 then Showleveloffdetailform(4)//frmnewcap_style_adj.Label4.Caption:='4'
      else if dbgrideh2.selectedindex=32 then Showleveloffdetailform(5)//frmnewcap_style_adj.Label4.Caption:='5'
      else if dbgrideh2.selectedindex=37 then Showleveloffdetailform(6)//frmnewcap_style_adj.Label4.Caption:='6'
      else if dbgrideh2.selectedindex=42 then Showleveloffdetailform(7)//frmnewcap_style_adj.Label4.Caption:='7'
      else if dbgrideh2.selectedindex=47 then Showleveloffdetailform(8)//frmnewcap_style_adj.Label4.Caption:='8'
      else if dbgrideh2.selectedindex=52 then Showleveloffdetailform(9)//frmnewcap_style_adj.Label4.Caption:='9'
      else if dbgrideh2.selectedindex=57 then Showleveloffdetailform(10)//frmnewcap_style_adj.Label4.Caption:='10'
      else if dbgrideh2.selectedindex=62 then Showleveloffdetailform(11)//frmnewcap_style_adj.Label4.Caption:='11'
      else if dbgrideh2.selectedindex=67 then Showleveloffdetailform(12);//frmnewcap_style_adj.Label4.Caption:='12';
    end;
  end;
  }
end;

procedure Tfrmnewcap_style.DBGridEh1Columns8EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if frmnewcap_ref=nil then frmnewcap_ref:=tfrmnewcap_ref.create(nil);
  frmnewcap_ref.DBText1.DataSource:=datasource1;
  frmnewcap_ref.DBText2.DataSource:=datasource1;
  frmnewcap_ref.DBText3.DataSource:=datasource1;
  frmnewcap_ref.Label2.Visible:=true;
  if not query1.fieldbyname('tostyle').isnull then begin
    if query1.fieldbyname('tostyle').value>'' then begin
      frmnewcap_ref.dbtext2.Visible:=false;
      frmnewcap_ref.dbtext3.Visible:=true;
    end else begin
      frmnewcap_ref.dbtext2.Visible:=true;
      frmnewcap_ref.dbtext3.Visible:=false;
    end;
  end else begin
    frmnewcap_ref.dbtext2.Visible:=true;
    frmnewcap_ref.dbtext3.Visible:=false;
  end;
  frmnewcap_ref.DateEdit1.Date:=date-183;
  frmnewcap_ref.DateEdit2.Date:=date-1;
  frmnewcap_ref.show;
end;

procedure Tfrmnewcap_style.BitBtn7Click(Sender: TObject);
begin
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
end;

procedure Tfrmnewcap_style.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if pos('1)',query1.fieldbyname('cstyle').value)>0 then begin
    dbgrideh1.Canvas.Brush.Color:=$00CDFCFB;//clYellow;
  //end else begin
  //  dbgrideh1.Canvas.Brush.Color:=clWindow;
  end;
  DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrmnewcap_style.BitBtn8Click(Sender: TObject);
begin
  if dbgrideh1.Visible=true then begin
    if pos('1)',query1.fieldbyname('cstyle').value)>0 then begin
      //if application.MessageBox('Confirm to writeoff the balance?','Confirm',mb_iconquestion+mb_okcancel)=idok then begin
      //end;
      if frmnewcap_style_adj=nil then frmnewcap_style_adj:=tfrmnewcap_style_adj.Create(nil);
      frmnewcap_style_adj.SpinEdit1.value:=spinedit1.value;
      if dbgrideh1.SelectedIndex=12 then frmnewcap_style_adj.Label4.caption:='1'
      else if dbgrideh1.selectedindex=17 then frmnewcap_style_adj.Label4.Caption:='2'
      else if dbgrideh1.selectedindex=22 then frmnewcap_style_adj.Label4.Caption:='3'
      else if dbgrideh1.selectedindex=27 then frmnewcap_style_adj.Label4.Caption:='4'
      else if dbgrideh1.selectedindex=32 then frmnewcap_style_adj.Label4.Caption:='5'
      else if dbgrideh1.selectedindex=37 then frmnewcap_style_adj.Label4.Caption:='6'
      else if dbgrideh1.selectedindex=42 then frmnewcap_style_adj.Label4.Caption:='7'
      else if dbgrideh1.selectedindex=47 then frmnewcap_style_adj.Label4.Caption:='8'
      else if dbgrideh1.selectedindex=52 then frmnewcap_style_adj.Label4.Caption:='9'
      else if dbgrideh1.selectedindex=57 then frmnewcap_style_adj.Label4.Caption:='10'
      else if dbgrideh1.selectedindex=62 then frmnewcap_style_adj.Label4.Caption:='11'
      else if dbgrideh1.selectedindex=67 then frmnewcap_style_adj.Label4.Caption:='12';
      frmnewcap_style_adj.show;
    end;
  end else if dbgrideh2.Visible=true then begin
    if pos('1)',query1.fieldbyname('cstyle').value)>0 then begin
      //if application.MessageBox('Confirm to writeoff the balance?','Confirm',mb_iconquestion+mb_okcancel)=idok then begin
      //end;
      if frmnewcap_style_adj=nil then frmnewcap_style_adj:=tfrmnewcap_style_adj.Create(nil);
      frmnewcap_style_adj.SpinEdit1.value:=spinedit1.value;
      if dbgrideh2.SelectedIndex=12 then frmnewcap_style_adj.Label4.caption:='1'
      else if dbgrideh2.selectedindex=17 then frmnewcap_style_adj.Label4.Caption:='2'
      else if dbgrideh2.selectedindex=22 then frmnewcap_style_adj.Label4.Caption:='3'
      else if dbgrideh2.selectedindex=27 then frmnewcap_style_adj.Label4.Caption:='4'
      else if dbgrideh2.selectedindex=32 then frmnewcap_style_adj.Label4.Caption:='5'
      else if dbgrideh2.selectedindex=37 then frmnewcap_style_adj.Label4.Caption:='6'
      else if dbgrideh2.selectedindex=42 then frmnewcap_style_adj.Label4.Caption:='7'
      else if dbgrideh2.selectedindex=47 then frmnewcap_style_adj.Label4.Caption:='8'
      else if dbgrideh2.selectedindex=52 then frmnewcap_style_adj.Label4.Caption:='9'
      else if dbgrideh2.selectedindex=57 then frmnewcap_style_adj.Label4.Caption:='10'
      else if dbgrideh2.selectedindex=62 then frmnewcap_style_adj.Label4.Caption:='11'
      else if dbgrideh2.selectedindex=67 then frmnewcap_style_adj.Label4.Caption:='12';
      frmnewcap_style_adj.show;
    end;
  end;
end;

procedure Tfrmnewcap_style.xh1Click(Sender: TObject);
begin
  show_data;
end;

procedure Tfrmnewcap_style.DataSource1StateChange(Sender: TObject);
var
  fty:string;
begin
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='BD' then fty:='CL' else fty:=combobox1.text;
  if query1.state=dsbrowse then begin
    if xh1.ItemIndex=0 then begin
      dbgrideh2.Columns[7].Footers[1].Value:='0';
      dbgrideh2.Columns[8].Footers[1].Value:='0';
      dbgrideh2.Columns[9].Footers[1].Value:='0';
      dbgrideh2.Columns[10].Footers[1].Value:='0';
      dbgrideh2.Columns[11].Footers[1].Value:='0';
      dbgrideh2.Columns[12].Footers[1].Value:='0';
      dbgrideh2.Columns[13].Footers[1].Value:='0';
      dbgrideh2.Columns[14].Footers[1].Value:='0';
      dbgrideh2.Columns[15].Footers[1].Value:='0';
      dbgrideh2.Columns[16].Footers[1].Value:='0';
      dbgrideh2.Columns[17].Footers[1].Value:='0';
      dbgrideh2.Columns[18].Footers[1].Value:='0';
      dbgrideh2.Columns[19].Footers[1].Value:='0';
      dbgrideh2.Columns[20].Footers[1].Value:='0';
      dbgrideh2.Columns[21].Footers[1].Value:='0';
      dbgrideh2.Columns[22].Footers[1].Value:='0';
      dbgrideh2.Columns[23].Footers[1].Value:='0';
      dbgrideh2.Columns[24].Footers[1].Value:='0';
      dbgrideh2.Columns[25].Footers[1].Value:='0';
      dbgrideh2.Columns[26].Footers[1].Value:='0';
      dbgrideh2.Columns[27].Footers[1].Value:='0';
      dbgrideh2.Columns[28].Footers[1].Value:='0';
      dbgrideh2.Columns[29].Footers[1].Value:='0';
      dbgrideh2.Columns[30].Footers[1].Value:='0';
      dbgrideh2.Columns[31].Footers[1].Value:='0';
      dbgrideh2.Columns[32].Footers[1].Value:='0';
      dbgrideh2.Columns[33].Footers[1].Value:='0';
      dbgrideh2.Columns[34].Footers[1].Value:='0';
      dbgrideh2.Columns[35].Footers[1].Value:='0';
      dbgrideh2.Columns[36].Footers[1].Value:='0';
      dbgrideh2.Columns[37].Footers[1].Value:='0';
      dbgrideh2.Columns[38].Footers[1].Value:='0';
      dbgrideh2.Columns[39].Footers[1].Value:='0';
      dbgrideh2.Columns[40].Footers[1].Value:='0';
      dbgrideh2.Columns[41].Footers[1].Value:='0';
      dbgrideh2.Columns[42].Footers[1].Value:='0';
      dbgrideh2.Columns[43].Footers[1].Value:='0';
      dbgrideh2.Columns[44].Footers[1].Value:='0';
      dbgrideh2.Columns[45].Footers[1].Value:='0';
      dbgrideh2.Columns[46].Footers[1].Value:='0';
      dbgrideh2.Columns[47].Footers[1].Value:='0';
      dbgrideh2.Columns[48].Footers[1].Value:='0';
      dbgrideh2.Columns[49].Footers[1].Value:='0';
      dbgrideh2.Columns[50].Footers[1].Value:='0';
      dbgrideh2.Columns[51].Footers[1].Value:='0';
      dbgrideh2.Columns[52].Footers[1].Value:='0';
      dbgrideh2.Columns[53].Footers[1].Value:='0';
      dbgrideh2.Columns[54].Footers[1].Value:='0';
      dbgrideh2.Columns[55].Footers[1].Value:='0';
      dbgrideh2.Columns[56].Footers[1].Value:='0';
      dbgrideh2.Columns[57].Footers[1].Value:='0';
      dbgrideh2.Columns[58].Footers[1].Value:='0';
      dbgrideh2.Columns[59].Footers[1].Value:='0';
      dbgrideh2.Columns[60].Footers[1].Value:='0';
      dbgrideh2.Columns[61].Footers[1].Value:='0';
      dbgrideh2.Columns[62].Footers[1].Value:='0';
      dbgrideh2.Columns[63].Footers[1].Value:='0';
      dbgrideh2.Columns[64].Footers[1].Value:='0';
      dbgrideh2.Columns[65].Footers[1].Value:='0';
      dbgrideh2.Columns[66].Footers[1].Value:='0';
      dbgrideh2.Columns[67].Footers[1].Value:='0';
      dbgrideh2.Columns[68].Footers[1].Value:='0';
      dbgrideh2.Columns[69].Footers[1].Value:='0';
      dbgrideh2.Columns[70].Footers[1].Value:='0';
      dbgrideh2.Columns[71].Footers[1].Value:='0';
      dbgrideh2.Columns[7].Footers[2].Value:='0';
      dbgrideh2.Columns[8].Footers[2].Value:='0';
      dbgrideh2.Columns[9].Footers[2].Value:='0';
      dbgrideh2.Columns[10].Footers[2].Value:='0';
      dbgrideh2.Columns[11].Footers[2].Value:='0';
      dbgrideh2.Columns[12].Footers[2].Value:='0';
      dbgrideh2.Columns[13].Footers[2].Value:='0';
      dbgrideh2.Columns[14].Footers[2].Value:='0';
      dbgrideh2.Columns[15].Footers[2].Value:='0';
      dbgrideh2.Columns[16].Footers[2].Value:='0';
      dbgrideh2.Columns[17].Footers[2].Value:='0';
      dbgrideh2.Columns[18].Footers[2].Value:='0';
      dbgrideh2.Columns[19].Footers[2].Value:='0';
      dbgrideh2.Columns[20].Footers[2].Value:='0';
      dbgrideh2.Columns[21].Footers[2].Value:='0';
      dbgrideh2.Columns[22].Footers[2].Value:='0';
      dbgrideh2.Columns[23].Footers[2].Value:='0';
      dbgrideh2.Columns[24].Footers[2].Value:='0';
      dbgrideh2.Columns[25].Footers[2].Value:='0';
      dbgrideh2.Columns[26].Footers[2].Value:='0';
      dbgrideh2.Columns[27].Footers[2].Value:='0';
      dbgrideh2.Columns[28].Footers[2].Value:='0';
      dbgrideh2.Columns[29].Footers[2].Value:='0';
      dbgrideh2.Columns[30].Footers[2].Value:='0';
      dbgrideh2.Columns[31].Footers[2].Value:='0';
      dbgrideh2.Columns[32].Footers[2].Value:='0';
      dbgrideh2.Columns[33].Footers[2].Value:='0';
      dbgrideh2.Columns[34].Footers[2].Value:='0';
      dbgrideh2.Columns[35].Footers[2].Value:='0';
      dbgrideh2.Columns[36].Footers[2].Value:='0';
      dbgrideh2.Columns[37].Footers[2].Value:='0';
      dbgrideh2.Columns[38].Footers[2].Value:='0';
      dbgrideh2.Columns[39].Footers[2].Value:='0';
      dbgrideh2.Columns[40].Footers[2].Value:='0';
      dbgrideh2.Columns[41].Footers[2].Value:='0';
      dbgrideh2.Columns[42].Footers[2].Value:='0';
      dbgrideh2.Columns[43].Footers[2].Value:='0';
      dbgrideh2.Columns[44].Footers[2].Value:='0';
      dbgrideh2.Columns[45].Footers[2].Value:='0';
      dbgrideh2.Columns[46].Footers[2].Value:='0';
      dbgrideh2.Columns[47].Footers[2].Value:='0';
      dbgrideh2.Columns[48].Footers[2].Value:='0';
      dbgrideh2.Columns[49].Footers[2].Value:='0';
      dbgrideh2.Columns[50].Footers[2].Value:='0';
      dbgrideh2.Columns[51].Footers[2].Value:='0';
      dbgrideh2.Columns[52].Footers[2].Value:='0';
      dbgrideh2.Columns[53].Footers[2].Value:='0';
      dbgrideh2.Columns[54].Footers[2].Value:='0';
      dbgrideh2.Columns[55].Footers[2].Value:='0';
      dbgrideh2.Columns[56].Footers[2].Value:='0';
      dbgrideh2.Columns[57].Footers[2].Value:='0';
      dbgrideh2.Columns[58].Footers[2].Value:='0';
      dbgrideh2.Columns[59].Footers[2].Value:='0';
      dbgrideh2.Columns[60].Footers[2].Value:='0';
      dbgrideh2.Columns[61].Footers[2].Value:='0';
      dbgrideh2.Columns[62].Footers[2].Value:='0';
      dbgrideh2.Columns[63].Footers[2].Value:='0';
      dbgrideh2.Columns[64].Footers[2].Value:='0';
      dbgrideh2.Columns[65].Footers[2].Value:='0';
      dbgrideh2.Columns[66].Footers[2].Value:='0';
      dbgrideh2.Columns[67].Footers[2].Value:='0';
      dbgrideh2.Columns[68].Footers[2].Value:='0';
      dbgrideh2.Columns[69].Footers[2].Value:='0';
      dbgrideh2.Columns[70].Footers[2].Value:='0';
      dbgrideh2.Columns[71].Footers[2].Value:='0';
      dbgrideh2.Columns[7].footers[3].Value:='0';
      dbgrideh2.Columns[8].footers[3].Value:='0';
      dbgrideh2.Columns[9].footers[3].Value:='0';
      dbgrideh2.Columns[10].footers[3].Value:='0';
      dbgrideh2.Columns[11].footers[3].Value:='0';
      dbgrideh2.Columns[12].footers[3].Value:='0';
      dbgrideh2.Columns[13].footers[3].Value:='0';
      dbgrideh2.Columns[14].footers[3].Value:='0';
      dbgrideh2.Columns[15].footers[3].Value:='0';
      dbgrideh2.Columns[16].footers[3].Value:='0';
      dbgrideh2.Columns[17].footers[3].Value:='0';
      dbgrideh2.Columns[18].footers[3].Value:='0';
      dbgrideh2.Columns[19].footers[3].Value:='0';
      dbgrideh2.Columns[20].footers[3].Value:='0';
      dbgrideh2.Columns[21].footers[3].Value:='0';
      dbgrideh2.Columns[22].footers[3].Value:='0';
      dbgrideh2.Columns[23].footers[3].Value:='0';
      dbgrideh2.Columns[24].footers[3].Value:='0';
      dbgrideh2.Columns[25].footers[3].Value:='0';
      dbgrideh2.Columns[26].footers[3].Value:='0';
      dbgrideh2.Columns[27].footers[3].Value:='0';
      dbgrideh2.Columns[28].footers[3].Value:='0';
      dbgrideh2.Columns[29].footers[3].Value:='0';
      dbgrideh2.Columns[30].footers[3].Value:='0';
      dbgrideh2.Columns[31].footers[3].Value:='0';
      dbgrideh2.Columns[32].footers[3].Value:='0';
      dbgrideh2.Columns[33].footers[3].Value:='0';
      dbgrideh2.Columns[34].footers[3].Value:='0';
      dbgrideh2.Columns[35].footers[3].Value:='0';
      dbgrideh2.Columns[36].footers[3].Value:='0';
      dbgrideh2.Columns[37].footers[3].Value:='0';
      dbgrideh2.Columns[38].footers[3].Value:='0';
      dbgrideh2.Columns[39].footers[3].Value:='0';
      dbgrideh2.Columns[40].footers[3].Value:='0';
      dbgrideh2.Columns[41].footers[3].Value:='0';
      dbgrideh2.Columns[42].footers[3].Value:='0';
      dbgrideh2.Columns[43].footers[3].Value:='0';
      dbgrideh2.Columns[44].footers[3].Value:='0';
      dbgrideh2.Columns[45].footers[3].Value:='0';
      dbgrideh2.Columns[46].footers[3].Value:='0';
      dbgrideh2.Columns[47].footers[3].Value:='0';
      dbgrideh2.Columns[48].footers[3].Value:='0';
      dbgrideh2.Columns[49].footers[3].Value:='0';
      dbgrideh2.Columns[50].footers[3].Value:='0';
      dbgrideh2.Columns[51].footers[3].Value:='0';
      dbgrideh2.Columns[52].footers[3].Value:='0';
      dbgrideh2.Columns[53].footers[3].Value:='0';
      dbgrideh2.Columns[54].footers[3].Value:='0';
      dbgrideh2.Columns[55].footers[3].Value:='0';
      dbgrideh2.Columns[56].footers[3].Value:='0';
      dbgrideh2.Columns[57].footers[3].Value:='0';
      dbgrideh2.Columns[58].footers[3].Value:='0';
      dbgrideh2.Columns[59].footers[3].Value:='0';
      dbgrideh2.Columns[60].footers[3].Value:='0';
      dbgrideh2.Columns[61].footers[3].Value:='0';
      dbgrideh2.Columns[62].footers[3].Value:='0';
      dbgrideh2.Columns[63].footers[3].Value:='0';
      dbgrideh2.Columns[64].footers[3].Value:='0';
      dbgrideh2.Columns[65].footers[3].Value:='0';
      dbgrideh2.Columns[66].footers[3].Value:='0';
      dbgrideh2.Columns[67].footers[3].Value:='0';
      dbgrideh2.Columns[68].footers[3].Value:='0';
      dbgrideh2.Columns[69].footers[3].Value:='0';
      dbgrideh2.Columns[70].footers[3].Value:='0';
      dbgrideh2.Columns[71].footers[3].Value:='0';
      if treeview1.selected<>nil then begin
        with query2 do begin
          close;
          params.clear;
          commandtext:='select distinct flag6,count(distinct cust) as x0,count(distinct cstyle) as x00,sum(tq) as x1,sum(tw) as x2,sum(tsah) as x3,sum(q01) as x4,sum(tw01) as x5,sum(tsah01) as x6,'
                      +'sum(q02) as x7,sum(tw02) as x8,sum(tsah02) as x9,sum(q03) as x10,sum(tw03) as x11,sum(tsah03) as x12,'
                      +'sum(q04) as x13,sum(tw04) as x14,sum(tsah04) as x15,sum(q05) as x16,sum(tw05) as x17,sum(tsah05) as x18,'
                      +'sum(q06) as x19,sum(tw06) as x20,sum(tsah06) as x21,sum(q07) as x22,sum(tw07) as x23,sum(tsah07) as x24,'
                      +'sum(q08) as x25,sum(tw08) as x26,sum(tsah08) as x27,sum(q09) as x28,sum(tw09) as x29,sum(tsah09) as x30,'
                      +'sum(q10) as x31,sum(tw10) as x32,sum(tsah10) as x33,sum(q11) as x34,sum(tw11) as x35,sum(tsah11) as x36,'
                      +'sum(q12) as x37,sum(tw12) as x38,sum(tsah12) as x39,sum(ttl01) as s01,sum(ttl02) as s02,sum(ref0101) as s03,sum(ref0102) as s04,'
                      +'sum(ref0201) as s05,sum(ref0202) as s06,sum(ref0301) as s07,sum(ref0302) as s08,sum(ref0401) as s09,sum(ref0402) as s10,'
                      +'sum(ref0501) as s11,sum(ref0502) as s12,sum(ref0601) as s13,sum(ref0602) as s14,sum(ref0701) as s15,sum(ref0702) as s16,'
                      +'sum(ref0801) as s17,sum(ref0802) as s18,sum(ref0901) as s19,sum(ref0902) as s20,sum(ref1001) as s21,sum(ref1002) as s22,'
                      +'sum(ref1101) as s23,sum(ref1102) as s24,sum(ref1201) as s25,sum(ref1202) as s26 '
                      +'from tbl_cap_oa_style_new_sum where cstyle not in (''4) Level off Sale Proj'',''5) Level off SP'') and tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
          //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
          //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          commandtext:=commandtext+' group by flag6';
          open;
          first;
          while not eof do begin
            if fieldbyname('flag6').value='B' then begin
              dbgrideh2.Columns[7].Footers[0].Value:=formatfloat('#,0',fieldbyname('x1').value);
              dbgrideh2.Columns[8].Footers[0].Value:=formatfloat('#,0',fieldbyname('x2').value);
              dbgrideh2.Columns[9].Footers[0].Value:=formatfloat('#,0',fieldbyname('x3').value);
              dbgrideh2.Columns[10].Footers[0].Value:=formatfloat('#,0',fieldbyname('s01').value);
              dbgrideh2.Columns[11].Footers[0].Value:=formatfloat('#,0',fieldbyname('s02').value);
              dbgrideh2.Columns[12].Footers[0].Value:=formatfloat('#,0',fieldbyname('x4').value);
              dbgrideh2.Columns[13].Footers[0].Value:=formatfloat('#,0',fieldbyname('x5').value);
              dbgrideh2.Columns[14].Footers[0].Value:=formatfloat('#,0',fieldbyname('x6').value);
              dbgrideh2.Columns[15].Footers[0].Value:=formatfloat('#,0',fieldbyname('s03').value);
              dbgrideh2.Columns[16].Footers[0].Value:=formatfloat('#,0',fieldbyname('s04').value);
              dbgrideh2.Columns[17].Footers[0].Value:=formatfloat('#,0',fieldbyname('x7').value);
              dbgrideh2.Columns[18].Footers[0].Value:=formatfloat('#,0',fieldbyname('x8').value);
              dbgrideh2.Columns[19].Footers[0].Value:=formatfloat('#,0',fieldbyname('x9').value);
              dbgrideh2.Columns[20].Footers[0].Value:=formatfloat('#,0',fieldbyname('s05').value);
              dbgrideh2.Columns[21].Footers[0].Value:=formatfloat('#,0',fieldbyname('s06').value);
              dbgrideh2.Columns[22].Footers[0].Value:=formatfloat('#,0',fieldbyname('x10').value);
              dbgrideh2.Columns[23].Footers[0].Value:=formatfloat('#,0',fieldbyname('x11').value);
              dbgrideh2.Columns[24].Footers[0].Value:=formatfloat('#,0',fieldbyname('x12').value);
              dbgrideh2.Columns[25].Footers[0].Value:=formatfloat('#,0',fieldbyname('s07').value);
              dbgrideh2.Columns[26].Footers[0].Value:=formatfloat('#,0',fieldbyname('s08').value);
              dbgrideh2.Columns[27].Footers[0].Value:=formatfloat('#,0',fieldbyname('x13').value);
              dbgrideh2.Columns[28].Footers[0].Value:=formatfloat('#,0',fieldbyname('x14').value);
              dbgrideh2.Columns[29].Footers[0].Value:=formatfloat('#,0',fieldbyname('x15').value);
              dbgrideh2.Columns[30].Footers[0].Value:=formatfloat('#,0',fieldbyname('s09').value);
              dbgrideh2.Columns[31].Footers[0].Value:=formatfloat('#,0',fieldbyname('s10').value);
              dbgrideh2.Columns[32].Footers[0].Value:=formatfloat('#,0',fieldbyname('x16').value);
              dbgrideh2.Columns[33].Footers[0].Value:=formatfloat('#,0',fieldbyname('x17').value);
              dbgrideh2.Columns[34].Footers[0].Value:=formatfloat('#,0',fieldbyname('x18').value);
              dbgrideh2.Columns[35].Footers[0].Value:=formatfloat('#,0',fieldbyname('s11').value);
              dbgrideh2.Columns[36].Footers[0].Value:=formatfloat('#,0',fieldbyname('s12').value);
              dbgrideh2.Columns[37].Footers[0].Value:=formatfloat('#,0',fieldbyname('x19').value);
              dbgrideh2.Columns[38].Footers[0].Value:=formatfloat('#,0',fieldbyname('x20').value);
              dbgrideh2.Columns[39].Footers[0].Value:=formatfloat('#,0',fieldbyname('x21').value);
              dbgrideh2.Columns[40].Footers[0].Value:=formatfloat('#,0',fieldbyname('s13').value);
              dbgrideh2.Columns[41].Footers[0].Value:=formatfloat('#,0',fieldbyname('s14').value);
              dbgrideh2.Columns[42].Footers[0].Value:=formatfloat('#,0',fieldbyname('x22').value);
              dbgrideh2.Columns[43].Footers[0].Value:=formatfloat('#,0',fieldbyname('x23').value);
              dbgrideh2.Columns[44].Footers[0].Value:=formatfloat('#,0',fieldbyname('x24').value);
              dbgrideh2.Columns[45].Footers[0].Value:=formatfloat('#,0',fieldbyname('s15').value);
              dbgrideh2.Columns[46].Footers[0].Value:=formatfloat('#,0',fieldbyname('s16').value);
              dbgrideh2.Columns[47].Footers[0].Value:=formatfloat('#,0',fieldbyname('x25').value);
              dbgrideh2.Columns[48].Footers[0].Value:=formatfloat('#,0',fieldbyname('x26').value);
              dbgrideh2.Columns[49].Footers[0].Value:=formatfloat('#,0',fieldbyname('x27').value);
              dbgrideh2.Columns[50].Footers[0].Value:=formatfloat('#,0',fieldbyname('s17').value);
              dbgrideh2.Columns[51].Footers[0].Value:=formatfloat('#,0',fieldbyname('s18').value);
              dbgrideh2.Columns[52].Footers[0].Value:=formatfloat('#,0',fieldbyname('x28').value);
              dbgrideh2.Columns[53].Footers[0].Value:=formatfloat('#,0',fieldbyname('x29').value);
              dbgrideh2.Columns[54].Footers[0].Value:=formatfloat('#,0',fieldbyname('x30').value);
              dbgrideh2.Columns[55].Footers[0].Value:=formatfloat('#,0',fieldbyname('s19').value);
              dbgrideh2.Columns[56].Footers[0].Value:=formatfloat('#,0',fieldbyname('s20').value);
              dbgrideh2.Columns[57].Footers[0].Value:=formatfloat('#,0',fieldbyname('x31').value);
              dbgrideh2.Columns[58].Footers[0].Value:=formatfloat('#,0',fieldbyname('x32').value);
              dbgrideh2.Columns[59].Footers[0].Value:=formatfloat('#,0',fieldbyname('x33').value);
              dbgrideh2.Columns[60].Footers[0].Value:=formatfloat('#,0',fieldbyname('s21').value);
              dbgrideh2.Columns[61].Footers[0].Value:=formatfloat('#,0',fieldbyname('s22').value);
              dbgrideh2.Columns[62].Footers[0].Value:=formatfloat('#,0',fieldbyname('x34').value);
              dbgrideh2.Columns[63].Footers[0].Value:=formatfloat('#,0',fieldbyname('x35').value);
              dbgrideh2.Columns[64].Footers[0].Value:=formatfloat('#,0',fieldbyname('x36').value);
              dbgrideh2.Columns[65].Footers[0].Value:=formatfloat('#,0',fieldbyname('s23').value);
              dbgrideh2.Columns[66].Footers[0].Value:=formatfloat('#,0',fieldbyname('s24').value);
              dbgrideh2.Columns[67].Footers[0].Value:=formatfloat('#,0',fieldbyname('x37').value);
              dbgrideh2.Columns[68].Footers[0].Value:=formatfloat('#,0',fieldbyname('x38').value);
              dbgrideh2.Columns[69].Footers[0].Value:=formatfloat('#,0',fieldbyname('x39').value);
              dbgrideh2.Columns[70].Footers[0].Value:=formatfloat('#,0',fieldbyname('s25').value);
              dbgrideh2.Columns[71].Footers[0].Value:=formatfloat('#,0',fieldbyname('s26').value);
            end else if fieldbyname('flag6').value='K' then begin
              dbgrideh2.Columns[7].footers[1].Value:=formatfloat('#,0',fieldbyname('x1').value);
              dbgrideh2.Columns[8].footers[1].Value:=formatfloat('#,0',fieldbyname('x2').value);
              dbgrideh2.Columns[9].footers[1].Value:=formatfloat('#,0',fieldbyname('x3').value);
              dbgrideh2.Columns[10].footers[1].Value:=formatfloat('#,0',fieldbyname('s01').value);
              dbgrideh2.Columns[11].footers[1].Value:=formatfloat('#,0',fieldbyname('s02').value);
              dbgrideh2.Columns[12].footers[1].Value:=formatfloat('#,0',fieldbyname('x4').value);
              dbgrideh2.Columns[13].footers[1].Value:=formatfloat('#,0',fieldbyname('x5').value);
              dbgrideh2.Columns[14].footers[1].Value:=formatfloat('#,0',fieldbyname('x6').value);
              dbgrideh2.Columns[15].footers[1].Value:=formatfloat('#,0',fieldbyname('s03').value);
              dbgrideh2.Columns[16].footers[1].Value:=formatfloat('#,0',fieldbyname('s04').value);
              dbgrideh2.Columns[17].footers[1].Value:=formatfloat('#,0',fieldbyname('x7').value);
              dbgrideh2.Columns[18].footers[1].Value:=formatfloat('#,0',fieldbyname('x8').value);
              dbgrideh2.Columns[19].footers[1].Value:=formatfloat('#,0',fieldbyname('x9').value);
              dbgrideh2.Columns[20].footers[1].Value:=formatfloat('#,0',fieldbyname('s05').value);
              dbgrideh2.Columns[21].footers[1].Value:=formatfloat('#,0',fieldbyname('s06').value);
              dbgrideh2.Columns[22].footers[1].Value:=formatfloat('#,0',fieldbyname('x10').value);
              dbgrideh2.Columns[23].footers[1].Value:=formatfloat('#,0',fieldbyname('x11').value);
              dbgrideh2.Columns[24].footers[1].Value:=formatfloat('#,0',fieldbyname('x12').value);
              dbgrideh2.Columns[25].footers[1].Value:=formatfloat('#,0',fieldbyname('s07').value);
              dbgrideh2.Columns[26].footers[1].Value:=formatfloat('#,0',fieldbyname('s08').value);
              dbgrideh2.Columns[27].footers[1].Value:=formatfloat('#,0',fieldbyname('x13').value);
              dbgrideh2.Columns[28].footers[1].Value:=formatfloat('#,0',fieldbyname('x14').value);
              dbgrideh2.Columns[29].footers[1].Value:=formatfloat('#,0',fieldbyname('x15').value);
              dbgrideh2.Columns[30].footers[1].Value:=formatfloat('#,0',fieldbyname('s09').value);
              dbgrideh2.Columns[31].footers[1].Value:=formatfloat('#,0',fieldbyname('s10').value);
              dbgrideh2.Columns[32].footers[1].Value:=formatfloat('#,0',fieldbyname('x16').value);
              dbgrideh2.Columns[33].footers[1].Value:=formatfloat('#,0',fieldbyname('x17').value);
              dbgrideh2.Columns[34].footers[1].Value:=formatfloat('#,0',fieldbyname('x18').value);
              dbgrideh2.Columns[35].footers[1].Value:=formatfloat('#,0',fieldbyname('s11').value);
              dbgrideh2.Columns[36].footers[1].Value:=formatfloat('#,0',fieldbyname('s12').value);
              dbgrideh2.Columns[37].footers[1].Value:=formatfloat('#,0',fieldbyname('x19').value);
              dbgrideh2.Columns[38].footers[1].Value:=formatfloat('#,0',fieldbyname('x20').value);
              dbgrideh2.Columns[39].footers[1].Value:=formatfloat('#,0',fieldbyname('x21').value);
              dbgrideh2.Columns[40].footers[1].Value:=formatfloat('#,0',fieldbyname('s13').value);
              dbgrideh2.Columns[41].footers[1].Value:=formatfloat('#,0',fieldbyname('s14').value);
              dbgrideh2.Columns[42].footers[1].Value:=formatfloat('#,0',fieldbyname('x22').value);
              dbgrideh2.Columns[43].footers[1].Value:=formatfloat('#,0',fieldbyname('x23').value);
              dbgrideh2.Columns[44].footers[1].Value:=formatfloat('#,0',fieldbyname('x24').value);
              dbgrideh2.Columns[45].footers[1].Value:=formatfloat('#,0',fieldbyname('s15').value);
              dbgrideh2.Columns[46].footers[1].Value:=formatfloat('#,0',fieldbyname('s16').value);
              dbgrideh2.Columns[47].footers[1].Value:=formatfloat('#,0',fieldbyname('x25').value);
              dbgrideh2.Columns[48].footers[1].Value:=formatfloat('#,0',fieldbyname('x26').value);
              dbgrideh2.Columns[49].footers[1].Value:=formatfloat('#,0',fieldbyname('x27').value);
              dbgrideh2.Columns[50].footers[1].Value:=formatfloat('#,0',fieldbyname('s17').value);
              dbgrideh2.Columns[51].footers[1].Value:=formatfloat('#,0',fieldbyname('s18').value);
              dbgrideh2.Columns[52].footers[1].Value:=formatfloat('#,0',fieldbyname('x28').value);
              dbgrideh2.Columns[53].footers[1].Value:=formatfloat('#,0',fieldbyname('x29').value);
              dbgrideh2.Columns[54].footers[1].Value:=formatfloat('#,0',fieldbyname('x30').value);
              dbgrideh2.Columns[55].footers[1].Value:=formatfloat('#,0',fieldbyname('s19').value);
              dbgrideh2.Columns[56].footers[1].Value:=formatfloat('#,0',fieldbyname('s20').value);
              dbgrideh2.Columns[57].footers[1].Value:=formatfloat('#,0',fieldbyname('x31').value);
              dbgrideh2.Columns[58].footers[1].Value:=formatfloat('#,0',fieldbyname('x32').value);
              dbgrideh2.Columns[59].footers[1].Value:=formatfloat('#,0',fieldbyname('x33').value);
              dbgrideh2.Columns[60].footers[1].Value:=formatfloat('#,0',fieldbyname('s21').value);
              dbgrideh2.Columns[61].footers[1].Value:=formatfloat('#,0',fieldbyname('s22').value);
              dbgrideh2.Columns[62].footers[1].Value:=formatfloat('#,0',fieldbyname('x34').value);
              dbgrideh2.Columns[63].footers[1].Value:=formatfloat('#,0',fieldbyname('x35').value);
              dbgrideh2.Columns[64].footers[1].Value:=formatfloat('#,0',fieldbyname('x36').value);
              dbgrideh2.Columns[65].footers[1].Value:=formatfloat('#,0',fieldbyname('s23').value);
              dbgrideh2.Columns[66].footers[1].Value:=formatfloat('#,0',fieldbyname('s24').value);
              dbgrideh2.Columns[67].footers[1].Value:=formatfloat('#,0',fieldbyname('x37').value);
              dbgrideh2.Columns[68].footers[1].Value:=formatfloat('#,0',fieldbyname('x38').value);
              dbgrideh2.Columns[69].footers[1].Value:=formatfloat('#,0',fieldbyname('x39').value);
              dbgrideh2.Columns[70].footers[1].Value:=formatfloat('#,0',fieldbyname('s25').value);
              dbgrideh2.Columns[71].footers[1].Value:=formatfloat('#,0',fieldbyname('s26').value);
            end else if fieldbyname('flag6').value='U' then begin
              dbgrideh2.Columns[7].footers[2].Value:=formatfloat('#,0',fieldbyname('x1').value);
              dbgrideh2.Columns[8].footers[2].Value:=formatfloat('#,0',fieldbyname('x2').value);
              dbgrideh2.Columns[9].footers[2].Value:=formatfloat('#,0',fieldbyname('x3').value);
              dbgrideh2.Columns[10].footers[2].Value:=formatfloat('#,0',fieldbyname('s01').value);
              dbgrideh2.Columns[11].footers[2].Value:=formatfloat('#,0',fieldbyname('s02').value);
              dbgrideh2.Columns[12].footers[2].Value:=formatfloat('#,0',fieldbyname('x4').value);
              dbgrideh2.Columns[13].footers[2].Value:=formatfloat('#,0',fieldbyname('x5').value);
              dbgrideh2.Columns[14].footers[2].Value:=formatfloat('#,0',fieldbyname('x6').value);
              dbgrideh2.Columns[15].footers[2].Value:=formatfloat('#,0',fieldbyname('s03').value);
              dbgrideh2.Columns[16].footers[2].Value:=formatfloat('#,0',fieldbyname('s04').value);
              dbgrideh2.Columns[17].footers[2].Value:=formatfloat('#,0',fieldbyname('x7').value);
              dbgrideh2.Columns[18].footers[2].Value:=formatfloat('#,0',fieldbyname('x8').value);
              dbgrideh2.Columns[19].footers[2].Value:=formatfloat('#,0',fieldbyname('x9').value);
              dbgrideh2.Columns[20].footers[2].Value:=formatfloat('#,0',fieldbyname('s05').value);
              dbgrideh2.Columns[21].footers[2].Value:=formatfloat('#,0',fieldbyname('s06').value);
              dbgrideh2.Columns[22].footers[2].Value:=formatfloat('#,0',fieldbyname('x10').value);
              dbgrideh2.Columns[23].footers[2].Value:=formatfloat('#,0',fieldbyname('x11').value);
              dbgrideh2.Columns[24].footers[2].Value:=formatfloat('#,0',fieldbyname('x12').value);
              dbgrideh2.Columns[25].footers[2].Value:=formatfloat('#,0',fieldbyname('s07').value);
              dbgrideh2.Columns[26].footers[2].Value:=formatfloat('#,0',fieldbyname('s08').value);
              dbgrideh2.Columns[27].footers[2].Value:=formatfloat('#,0',fieldbyname('x13').value);
              dbgrideh2.Columns[28].footers[2].Value:=formatfloat('#,0',fieldbyname('x14').value);
              dbgrideh2.Columns[29].footers[2].Value:=formatfloat('#,0',fieldbyname('x15').value);
              dbgrideh2.Columns[30].footers[2].Value:=formatfloat('#,0',fieldbyname('s09').value);
              dbgrideh2.Columns[31].footers[2].Value:=formatfloat('#,0',fieldbyname('s10').value);
              dbgrideh2.Columns[32].footers[2].Value:=formatfloat('#,0',fieldbyname('x16').value);
              dbgrideh2.Columns[33].footers[2].Value:=formatfloat('#,0',fieldbyname('x17').value);
              dbgrideh2.Columns[34].footers[2].Value:=formatfloat('#,0',fieldbyname('x18').value);
              dbgrideh2.Columns[35].footers[2].Value:=formatfloat('#,0',fieldbyname('s11').value);
              dbgrideh2.Columns[36].footers[2].Value:=formatfloat('#,0',fieldbyname('s12').value);
              dbgrideh2.Columns[37].footers[2].Value:=formatfloat('#,0',fieldbyname('x19').value);
              dbgrideh2.Columns[38].footers[2].Value:=formatfloat('#,0',fieldbyname('x20').value);
              dbgrideh2.Columns[39].footers[2].Value:=formatfloat('#,0',fieldbyname('x21').value);
              dbgrideh2.Columns[40].footers[2].Value:=formatfloat('#,0',fieldbyname('s13').value);
              dbgrideh2.Columns[41].footers[2].Value:=formatfloat('#,0',fieldbyname('s14').value);
              dbgrideh2.Columns[42].footers[2].Value:=formatfloat('#,0',fieldbyname('x22').value);
              dbgrideh2.Columns[43].footers[2].Value:=formatfloat('#,0',fieldbyname('x23').value);
              dbgrideh2.Columns[44].footers[2].Value:=formatfloat('#,0',fieldbyname('x24').value);
              dbgrideh2.Columns[45].footers[2].Value:=formatfloat('#,0',fieldbyname('s15').value);
              dbgrideh2.Columns[46].footers[2].Value:=formatfloat('#,0',fieldbyname('s16').value);
              dbgrideh2.Columns[47].footers[2].Value:=formatfloat('#,0',fieldbyname('x25').value);
              dbgrideh2.Columns[48].footers[2].Value:=formatfloat('#,0',fieldbyname('x26').value);
              dbgrideh2.Columns[49].footers[2].Value:=formatfloat('#,0',fieldbyname('x27').value);
              dbgrideh2.Columns[50].footers[2].Value:=formatfloat('#,0',fieldbyname('s17').value);
              dbgrideh2.Columns[51].footers[2].Value:=formatfloat('#,0',fieldbyname('s18').value);
              dbgrideh2.Columns[52].footers[2].Value:=formatfloat('#,0',fieldbyname('x28').value);
              dbgrideh2.Columns[53].footers[2].Value:=formatfloat('#,0',fieldbyname('x29').value);
              dbgrideh2.Columns[54].footers[2].Value:=formatfloat('#,0',fieldbyname('x30').value);
              dbgrideh2.Columns[55].footers[2].Value:=formatfloat('#,0',fieldbyname('s19').value);
              dbgrideh2.Columns[56].footers[2].Value:=formatfloat('#,0',fieldbyname('s20').value);
              dbgrideh2.Columns[57].footers[2].Value:=formatfloat('#,0',fieldbyname('x31').value);
              dbgrideh2.Columns[58].footers[2].Value:=formatfloat('#,0',fieldbyname('x32').value);
              dbgrideh2.Columns[59].footers[2].Value:=formatfloat('#,0',fieldbyname('x33').value);
              dbgrideh2.Columns[60].footers[2].Value:=formatfloat('#,0',fieldbyname('s21').value);
              dbgrideh2.Columns[61].footers[2].Value:=formatfloat('#,0',fieldbyname('s22').value);
              dbgrideh2.Columns[62].footers[2].Value:=formatfloat('#,0',fieldbyname('x34').value);
              dbgrideh2.Columns[63].footers[2].Value:=formatfloat('#,0',fieldbyname('x35').value);
              dbgrideh2.Columns[64].footers[2].Value:=formatfloat('#,0',fieldbyname('x36').value);
              dbgrideh2.Columns[65].footers[2].Value:=formatfloat('#,0',fieldbyname('s23').value);
              dbgrideh2.Columns[66].footers[2].Value:=formatfloat('#,0',fieldbyname('s24').value);
              dbgrideh2.Columns[67].footers[2].Value:=formatfloat('#,0',fieldbyname('x37').value);
              dbgrideh2.Columns[68].footers[2].Value:=formatfloat('#,0',fieldbyname('x38').value);
              dbgrideh2.Columns[69].footers[2].Value:=formatfloat('#,0',fieldbyname('x39').value);
              dbgrideh2.Columns[70].footers[2].Value:=formatfloat('#,0',fieldbyname('s25').value);
              dbgrideh2.Columns[71].footers[2].Value:=formatfloat('#,0',fieldbyname('s26').value);
            end;
            application.ProcessMessages;
            next;
          end;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select count(distinct cust) as x0,count(distinct cstyle) as x00,sum(tq) as x1,sum(tw) as x2,sum(tsah) as x3,sum(q01) as x4,sum(tw01) as x5,sum(tsah01) as x6,'
                      +'sum(q02) as x7,sum(tw02) as x8,sum(tsah02) as x9,sum(q03) as x10,sum(tw03) as x11,sum(tsah03) as x12,'
                      +'sum(q04) as x13,sum(tw04) as x14,sum(tsah04) as x15,sum(q05) as x16,sum(tw05) as x17,sum(tsah05) as x18,'
                      +'sum(q06) as x19,sum(tw06) as x20,sum(tsah06) as x21,sum(q07) as x22,sum(tw07) as x23,sum(tsah07) as x24,'
                      +'sum(q08) as x25,sum(tw08) as x26,sum(tsah08) as x27,sum(q09) as x28,sum(tw09) as x29,sum(tsah09) as x30,'
                      +'sum(q10) as x31,sum(tw10) as x32,sum(tsah10) as x33,sum(q11) as x34,sum(tw11) as x35,sum(tsah11) as x36,'
                      +'sum(q12) as x37,sum(tw12) as x38,sum(tsah12) as x39,sum(ttl01) as s01,sum(ttl02) as s02,sum(ref0101) as s03,sum(ref0102) as s04,'
                      +'sum(ref0201) as s05,sum(ref0202) as s06,sum(ref0301) as s07,sum(ref0302) as s08,sum(ref0401) as s09,sum(ref0402) as s10,'
                      +'sum(ref0501) as s11,sum(ref0502) as s12,sum(ref0601) as s13,sum(ref0602) as s14,sum(ref0701) as s15,sum(ref0702) as s16,'
                      +'sum(ref0801) as s17,sum(ref0802) as s18,sum(ref0901) as s19,sum(ref0902) as s20,sum(ref1001) as s21,sum(ref1002) as s22,'
                      +'sum(ref1101) as s23,sum(ref1102) as s24,sum(ref1201) as s25,sum(ref1202) as s26 '
                      +'from tbl_cap_oa_style_new_sum where cstyle not in (''4) Level off Sale Proj'',''5) Level off SP'') and tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
          //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
          //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          open;
          dbgrideh2.Columns[7].footers[3].Value:=formatfloat('#,0',fieldbyname('x1').value);
          dbgrideh2.Columns[8].footers[3].Value:=formatfloat('#,0',fieldbyname('x2').value);
          dbgrideh2.Columns[9].footers[3].Value:=formatfloat('#,0',fieldbyname('x3').value);
          dbgrideh2.Columns[10].footers[3].Value:=formatfloat('#,0',fieldbyname('s01').value);
          dbgrideh2.Columns[11].footers[3].Value:=formatfloat('#,0',fieldbyname('s02').value);
          dbgrideh2.Columns[12].footers[3].Value:=formatfloat('#,0',fieldbyname('x4').value);
          dbgrideh2.Columns[13].footers[3].Value:=formatfloat('#,0',fieldbyname('x5').value);
          dbgrideh2.Columns[14].footers[3].Value:=formatfloat('#,0',fieldbyname('x6').value);
          dbgrideh2.Columns[15].footers[3].Value:=formatfloat('#,0',fieldbyname('s03').value);
          dbgrideh2.Columns[16].footers[3].Value:=formatfloat('#,0',fieldbyname('s04').value);
          dbgrideh2.Columns[17].footers[3].Value:=formatfloat('#,0',fieldbyname('x7').value);
          dbgrideh2.Columns[18].footers[3].Value:=formatfloat('#,0',fieldbyname('x8').value);
          dbgrideh2.Columns[19].footers[3].Value:=formatfloat('#,0',fieldbyname('x9').value);
          dbgrideh2.Columns[20].footers[3].Value:=formatfloat('#,0',fieldbyname('s05').value);
          dbgrideh2.Columns[21].footers[3].Value:=formatfloat('#,0',fieldbyname('s06').value);
          dbgrideh2.Columns[22].footers[3].Value:=formatfloat('#,0',fieldbyname('x10').value);
          dbgrideh2.Columns[23].footers[3].Value:=formatfloat('#,0',fieldbyname('x11').value);
          dbgrideh2.Columns[24].footers[3].Value:=formatfloat('#,0',fieldbyname('x12').value);
          dbgrideh2.Columns[25].footers[3].Value:=formatfloat('#,0',fieldbyname('s07').value);
          dbgrideh2.Columns[26].footers[3].Value:=formatfloat('#,0',fieldbyname('s08').value);
          dbgrideh2.Columns[27].footers[3].Value:=formatfloat('#,0',fieldbyname('x13').value);
          dbgrideh2.Columns[28].footers[3].Value:=formatfloat('#,0',fieldbyname('x14').value);
          dbgrideh2.Columns[29].footers[3].Value:=formatfloat('#,0',fieldbyname('x15').value);
          dbgrideh2.Columns[30].footers[3].Value:=formatfloat('#,0',fieldbyname('s09').value);
          dbgrideh2.Columns[31].footers[3].Value:=formatfloat('#,0',fieldbyname('s10').value);
          dbgrideh2.Columns[32].footers[3].Value:=formatfloat('#,0',fieldbyname('x16').value);
          dbgrideh2.Columns[33].footers[3].Value:=formatfloat('#,0',fieldbyname('x17').value);
          dbgrideh2.Columns[34].footers[3].Value:=formatfloat('#,0',fieldbyname('x18').value);
          dbgrideh2.Columns[35].footers[3].Value:=formatfloat('#,0',fieldbyname('s11').value);
          dbgrideh2.Columns[36].footers[3].Value:=formatfloat('#,0',fieldbyname('s12').value);
          dbgrideh2.Columns[37].footers[3].Value:=formatfloat('#,0',fieldbyname('x19').value);
          dbgrideh2.Columns[38].footers[3].Value:=formatfloat('#,0',fieldbyname('x20').value);
          dbgrideh2.Columns[39].footers[3].Value:=formatfloat('#,0',fieldbyname('x21').value);
          dbgrideh2.Columns[40].footers[3].Value:=formatfloat('#,0',fieldbyname('s13').value);
          dbgrideh2.Columns[41].footers[3].Value:=formatfloat('#,0',fieldbyname('s14').value);
          dbgrideh2.Columns[42].footers[3].Value:=formatfloat('#,0',fieldbyname('x22').value);
          dbgrideh2.Columns[43].footers[3].Value:=formatfloat('#,0',fieldbyname('x23').value);
          dbgrideh2.Columns[44].footers[3].Value:=formatfloat('#,0',fieldbyname('x24').value);
          dbgrideh2.Columns[45].footers[3].Value:=formatfloat('#,0',fieldbyname('s15').value);
          dbgrideh2.Columns[46].footers[3].Value:=formatfloat('#,0',fieldbyname('s16').value);
          dbgrideh2.Columns[47].footers[3].Value:=formatfloat('#,0',fieldbyname('x25').value);
          dbgrideh2.Columns[48].footers[3].Value:=formatfloat('#,0',fieldbyname('x26').value);
          dbgrideh2.Columns[49].footers[3].Value:=formatfloat('#,0',fieldbyname('x27').value);
          dbgrideh2.Columns[50].footers[3].Value:=formatfloat('#,0',fieldbyname('s17').value);
          dbgrideh2.Columns[51].footers[3].Value:=formatfloat('#,0',fieldbyname('s18').value);
          dbgrideh2.Columns[52].footers[3].Value:=formatfloat('#,0',fieldbyname('x28').value);
          dbgrideh2.Columns[53].footers[3].Value:=formatfloat('#,0',fieldbyname('x29').value);
          dbgrideh2.Columns[54].footers[3].Value:=formatfloat('#,0',fieldbyname('x30').value);
          dbgrideh2.Columns[55].footers[3].Value:=formatfloat('#,0',fieldbyname('s19').value);
          dbgrideh2.Columns[56].footers[3].Value:=formatfloat('#,0',fieldbyname('s20').value);
          dbgrideh2.Columns[57].footers[3].Value:=formatfloat('#,0',fieldbyname('x31').value);
          dbgrideh2.Columns[58].footers[3].Value:=formatfloat('#,0',fieldbyname('x32').value);
          dbgrideh2.Columns[59].footers[3].Value:=formatfloat('#,0',fieldbyname('x33').value);
          dbgrideh2.Columns[60].footers[3].Value:=formatfloat('#,0',fieldbyname('s21').value);
          dbgrideh2.Columns[61].footers[3].Value:=formatfloat('#,0',fieldbyname('s22').value);
          dbgrideh2.Columns[62].footers[3].Value:=formatfloat('#,0',fieldbyname('x34').value);
          dbgrideh2.Columns[63].footers[3].Value:=formatfloat('#,0',fieldbyname('x35').value);
          dbgrideh2.Columns[64].footers[3].Value:=formatfloat('#,0',fieldbyname('x36').value);
          dbgrideh2.Columns[65].footers[3].Value:=formatfloat('#,0',fieldbyname('s23').value);
          dbgrideh2.Columns[66].footers[3].Value:=formatfloat('#,0',fieldbyname('s24').value);
          dbgrideh2.Columns[67].footers[3].Value:=formatfloat('#,0',fieldbyname('x37').value);
          dbgrideh2.Columns[68].footers[3].Value:=formatfloat('#,0',fieldbyname('x38').value);
          dbgrideh2.Columns[69].footers[3].Value:=formatfloat('#,0',fieldbyname('x39').value);
          dbgrideh2.Columns[70].footers[3].Value:=formatfloat('#,0',fieldbyname('s25').value);
          dbgrideh2.Columns[71].footers[3].Value:=formatfloat('#,0',fieldbyname('s26').value);

          cxView1.DataController.Summary.FooterSummaryValues[1]:=formatfloat('#0',fieldbyname('x1').value);
          cxView1.DataController.Summary.FooterSummaryValues[2]:=formatfloat('#0',fieldbyname('x4').value);
          cxView1.DataController.Summary.FooterSummaryValues[3]:=formatfloat('#0',fieldbyname('x7').value);
          cxView1.DataController.Summary.FooterSummaryValues[4]:=formatfloat('#0',fieldbyname('x10').value);
          cxView1.DataController.Summary.FooterSummaryValues[5]:=formatfloat('#0',fieldbyname('x13').value);
          cxView1.DataController.Summary.FooterSummaryValues[6]:=formatfloat('#0',fieldbyname('x16').value);
          cxView1.DataController.Summary.FooterSummaryValues[7]:=formatfloat('#0',fieldbyname('x19').value);
          cxView1.DataController.Summary.FooterSummaryValues[8]:=formatfloat('#0',fieldbyname('x22').value);
          cxView1.DataController.Summary.FooterSummaryValues[9]:=formatfloat('#0',fieldbyname('x25').value);
          cxView1.DataController.Summary.FooterSummaryValues[10]:=formatfloat('#0',fieldbyname('x28').value);
          cxView1.DataController.Summary.FooterSummaryValues[11]:=formatfloat('#0',fieldbyname('x31').value);
          cxView1.DataController.Summary.FooterSummaryValues[12]:=formatfloat('#0',fieldbyname('x34').value);
          cxView1.DataController.Summary.FooterSummaryValues[13]:=formatfloat('#0',fieldbyname('x37').value);
        end;
      end;
    end else begin
      dbgrideh1.Columns[1].Footers[1].Value:='';
      dbgrideh1.Columns[3].Footers[1].Value:='';
      dbgrideh1.Columns[1].Footers[2].Value:='';
      dbgrideh1.Columns[3].Footers[2].Value:='';
      dbgrideh1.Columns[7].Footers[1].Value:='0';
      dbgrideh1.Columns[8].Footers[1].Value:='0';
      dbgrideh1.Columns[9].Footers[1].Value:='0';
      dbgrideh1.Columns[10].Footers[1].Value:='0';
      dbgrideh1.Columns[11].Footers[1].Value:='0';
      dbgrideh1.Columns[12].Footers[1].Value:='0';
      dbgrideh1.Columns[13].Footers[1].Value:='0';
      dbgrideh1.Columns[14].Footers[1].Value:='0';
      dbgrideh1.Columns[15].Footers[1].Value:='0';
      dbgrideh1.Columns[16].Footers[1].Value:='0';
      dbgrideh1.Columns[17].Footers[1].Value:='0';
      dbgrideh1.Columns[18].Footers[1].Value:='0';
      dbgrideh1.Columns[19].Footers[1].Value:='0';
      dbgrideh1.Columns[20].Footers[1].Value:='0';
      dbgrideh1.Columns[21].Footers[1].Value:='0';
      dbgrideh1.Columns[22].Footers[1].Value:='0';
      dbgrideh1.Columns[23].Footers[1].Value:='0';
      dbgrideh1.Columns[24].Footers[1].Value:='0';
      dbgrideh1.Columns[25].Footers[1].Value:='0';
      dbgrideh1.Columns[26].Footers[1].Value:='0';
      dbgrideh1.Columns[27].Footers[1].Value:='0';
      dbgrideh1.Columns[28].Footers[1].Value:='0';
      dbgrideh1.Columns[29].Footers[1].Value:='0';
      dbgrideh1.Columns[30].Footers[1].Value:='0';
      dbgrideh1.Columns[31].Footers[1].Value:='0';
      dbgrideh1.Columns[32].Footers[1].Value:='0';
      dbgrideh1.Columns[33].Footers[1].Value:='0';
      dbgrideh1.Columns[34].Footers[1].Value:='0';
      dbgrideh1.Columns[35].Footers[1].Value:='0';
      dbgrideh1.Columns[36].Footers[1].Value:='0';
      dbgrideh1.Columns[37].Footers[1].Value:='0';
      dbgrideh1.Columns[38].Footers[1].Value:='0';
      dbgrideh1.Columns[39].Footers[1].Value:='0';
      dbgrideh1.Columns[40].Footers[1].Value:='0';
      dbgrideh1.Columns[41].Footers[1].Value:='0';
      dbgrideh1.Columns[42].Footers[1].Value:='0';
      dbgrideh1.Columns[43].Footers[1].Value:='0';
      dbgrideh1.Columns[44].Footers[1].Value:='0';
      dbgrideh1.Columns[45].Footers[1].Value:='0';
      dbgrideh1.Columns[46].Footers[1].Value:='0';
      dbgrideh1.Columns[47].Footers[1].Value:='0';
      dbgrideh1.Columns[48].Footers[1].Value:='0';
      dbgrideh1.Columns[49].Footers[1].Value:='0';
      dbgrideh1.Columns[50].Footers[1].Value:='0';
      dbgrideh1.Columns[51].Footers[1].Value:='0';
      dbgrideh1.Columns[52].Footers[1].Value:='0';
      dbgrideh1.Columns[53].Footers[1].Value:='0';
      dbgrideh1.Columns[54].Footers[1].Value:='0';
      dbgrideh1.Columns[55].Footers[1].Value:='0';
      dbgrideh1.Columns[56].Footers[1].Value:='0';
      dbgrideh1.Columns[57].Footers[1].Value:='0';
      dbgrideh1.Columns[58].Footers[1].Value:='0';
      dbgrideh1.Columns[59].Footers[1].Value:='0';
      dbgrideh1.Columns[60].Footers[1].Value:='0';
      dbgrideh1.Columns[61].Footers[1].Value:='0';
      dbgrideh1.Columns[62].Footers[1].Value:='0';
      dbgrideh1.Columns[63].Footers[1].Value:='0';
      dbgrideh1.Columns[64].Footers[1].Value:='0';
      dbgrideh1.Columns[65].Footers[1].Value:='0';
      dbgrideh1.Columns[66].Footers[1].Value:='0';
      dbgrideh1.Columns[67].Footers[1].Value:='0';
      dbgrideh1.Columns[68].Footers[1].Value:='0';
      dbgrideh1.Columns[69].Footers[1].Value:='0';
      dbgrideh1.Columns[70].Footers[1].Value:='0';
      dbgrideh1.Columns[71].Footers[1].Value:='0';
      dbgrideh1.Columns[7].Footers[2].Value:='0';
      dbgrideh1.Columns[8].Footers[2].Value:='0';
      dbgrideh1.Columns[9].Footers[2].Value:='0';
      dbgrideh1.Columns[10].Footers[2].Value:='0';
      dbgrideh1.Columns[11].Footers[2].Value:='0';
      dbgrideh1.Columns[12].Footers[2].Value:='0';
      dbgrideh1.Columns[13].Footers[2].Value:='0';
      dbgrideh1.Columns[14].Footers[2].Value:='0';
      dbgrideh1.Columns[15].Footers[2].Value:='0';
      dbgrideh1.Columns[16].Footers[2].Value:='0';
      dbgrideh1.Columns[17].Footers[2].Value:='0';
      dbgrideh1.Columns[18].Footers[2].Value:='0';
      dbgrideh1.Columns[19].Footers[2].Value:='0';
      dbgrideh1.Columns[20].Footers[2].Value:='0';
      dbgrideh1.Columns[21].Footers[2].Value:='0';
      dbgrideh1.Columns[22].Footers[2].Value:='0';
      dbgrideh1.Columns[23].Footers[2].Value:='0';
      dbgrideh1.Columns[24].Footers[2].Value:='0';
      dbgrideh1.Columns[25].Footers[2].Value:='0';
      dbgrideh1.Columns[26].Footers[2].Value:='0';
      dbgrideh1.Columns[27].Footers[2].Value:='0';
      dbgrideh1.Columns[28].Footers[2].Value:='0';
      dbgrideh1.Columns[29].Footers[2].Value:='0';
      dbgrideh1.Columns[30].Footers[2].Value:='0';
      dbgrideh1.Columns[31].Footers[2].Value:='0';
      dbgrideh1.Columns[32].Footers[2].Value:='0';
      dbgrideh1.Columns[33].Footers[2].Value:='0';
      dbgrideh1.Columns[34].Footers[2].Value:='0';
      dbgrideh1.Columns[35].Footers[2].Value:='0';
      dbgrideh1.Columns[36].Footers[2].Value:='0';
      dbgrideh1.Columns[37].Footers[2].Value:='0';
      dbgrideh1.Columns[38].Footers[2].Value:='0';
      dbgrideh1.Columns[39].Footers[2].Value:='0';
      dbgrideh1.Columns[40].Footers[2].Value:='0';
      dbgrideh1.Columns[41].Footers[2].Value:='0';
      dbgrideh1.Columns[42].Footers[2].Value:='0';
      dbgrideh1.Columns[43].Footers[2].Value:='0';
      dbgrideh1.Columns[44].Footers[2].Value:='0';
      dbgrideh1.Columns[45].Footers[2].Value:='0';
      dbgrideh1.Columns[46].Footers[2].Value:='0';
      dbgrideh1.Columns[47].Footers[2].Value:='0';
      dbgrideh1.Columns[48].Footers[2].Value:='0';
      dbgrideh1.Columns[49].Footers[2].Value:='0';
      dbgrideh1.Columns[50].Footers[2].Value:='0';
      dbgrideh1.Columns[51].Footers[2].Value:='0';
      dbgrideh1.Columns[52].Footers[2].Value:='0';
      dbgrideh1.Columns[53].Footers[2].Value:='0';
      dbgrideh1.Columns[54].Footers[2].Value:='0';
      dbgrideh1.Columns[55].Footers[2].Value:='0';
      dbgrideh1.Columns[56].Footers[2].Value:='0';
      dbgrideh1.Columns[57].Footers[2].Value:='0';
      dbgrideh1.Columns[58].Footers[2].Value:='0';
      dbgrideh1.Columns[59].Footers[2].Value:='0';
      dbgrideh1.Columns[60].Footers[2].Value:='0';
      dbgrideh1.Columns[61].Footers[2].Value:='0';
      dbgrideh1.Columns[62].Footers[2].Value:='0';
      dbgrideh1.Columns[63].Footers[2].Value:='0';
      dbgrideh1.Columns[64].Footers[2].Value:='0';
      dbgrideh1.Columns[65].Footers[2].Value:='0';
      dbgrideh1.Columns[66].Footers[2].Value:='0';
      dbgrideh1.Columns[67].Footers[2].Value:='0';
      dbgrideh1.Columns[68].Footers[2].Value:='0';
      dbgrideh1.Columns[69].Footers[2].Value:='0';
      dbgrideh1.Columns[70].Footers[2].Value:='0';
      dbgrideh1.Columns[71].Footers[2].Value:='0';
      dbgrideh1.Columns[7].footers[3].Value:='0';
      dbgrideh1.Columns[8].footers[3].Value:='0';
      dbgrideh1.Columns[9].footers[3].Value:='0';
      dbgrideh1.Columns[10].footers[3].Value:='0';
      dbgrideh1.Columns[11].footers[3].Value:='0';
      dbgrideh1.Columns[12].footers[3].Value:='0';
      dbgrideh1.Columns[13].footers[3].Value:='0';
      dbgrideh1.Columns[14].footers[3].Value:='0';
      dbgrideh1.Columns[15].footers[3].Value:='0';
      dbgrideh1.Columns[16].footers[3].Value:='0';
      dbgrideh1.Columns[17].footers[3].Value:='0';
      dbgrideh1.Columns[18].footers[3].Value:='0';
      dbgrideh1.Columns[19].footers[3].Value:='0';
      dbgrideh1.Columns[20].footers[3].Value:='0';
      dbgrideh1.Columns[21].footers[3].Value:='0';
      dbgrideh1.Columns[22].footers[3].Value:='0';
      dbgrideh1.Columns[23].footers[3].Value:='0';
      dbgrideh1.Columns[24].footers[3].Value:='0';
      dbgrideh1.Columns[25].footers[3].Value:='0';
      dbgrideh1.Columns[26].footers[3].Value:='0';
      dbgrideh1.Columns[27].footers[3].Value:='0';
      dbgrideh1.Columns[28].footers[3].Value:='0';
      dbgrideh1.Columns[29].footers[3].Value:='0';
      dbgrideh1.Columns[30].footers[3].Value:='0';
      dbgrideh1.Columns[31].footers[3].Value:='0';
      dbgrideh1.Columns[32].footers[3].Value:='0';
      dbgrideh1.Columns[33].footers[3].Value:='0';
      dbgrideh1.Columns[34].footers[3].Value:='0';
      dbgrideh1.Columns[35].footers[3].Value:='0';
      dbgrideh1.Columns[36].footers[3].Value:='0';
      dbgrideh1.Columns[37].footers[3].Value:='0';
      dbgrideh1.Columns[38].footers[3].Value:='0';
      dbgrideh1.Columns[39].footers[3].Value:='0';
      dbgrideh1.Columns[40].footers[3].Value:='0';
      dbgrideh1.Columns[41].footers[3].Value:='0';
      dbgrideh1.Columns[42].footers[3].Value:='0';
      dbgrideh1.Columns[43].footers[3].Value:='0';
      dbgrideh1.Columns[44].footers[3].Value:='0';
      dbgrideh1.Columns[45].footers[3].Value:='0';
      dbgrideh1.Columns[46].footers[3].Value:='0';
      dbgrideh1.Columns[47].footers[3].Value:='0';
      dbgrideh1.Columns[48].footers[3].Value:='0';
      dbgrideh1.Columns[49].footers[3].Value:='0';
      dbgrideh1.Columns[50].footers[3].Value:='0';
      dbgrideh1.Columns[51].footers[3].Value:='0';
      dbgrideh1.Columns[52].footers[3].Value:='0';
      dbgrideh1.Columns[53].footers[3].Value:='0';
      dbgrideh1.Columns[54].footers[3].Value:='0';
      dbgrideh1.Columns[55].footers[3].Value:='0';
      dbgrideh1.Columns[56].footers[3].Value:='0';
      dbgrideh1.Columns[57].footers[3].Value:='0';
      dbgrideh1.Columns[58].footers[3].Value:='0';
      dbgrideh1.Columns[59].footers[3].Value:='0';
      dbgrideh1.Columns[60].footers[3].Value:='0';
      dbgrideh1.Columns[61].footers[3].Value:='0';
      dbgrideh1.Columns[62].footers[3].Value:='0';
      dbgrideh1.Columns[63].footers[3].Value:='0';
      dbgrideh1.Columns[64].footers[3].Value:='0';
      dbgrideh1.Columns[65].footers[3].Value:='0';
      dbgrideh1.Columns[66].footers[3].Value:='0';
      dbgrideh1.Columns[67].footers[3].Value:='0';
      dbgrideh1.Columns[68].footers[3].Value:='0';
      dbgrideh1.Columns[69].footers[3].Value:='0';
      dbgrideh1.Columns[70].footers[3].Value:='0';
      dbgrideh1.Columns[71].footers[3].Value:='0';
      if treeview1.selected<>nil then begin
        with query2 do begin
          close;
          params.clear;
          commandtext:='select distinct flag6,count(distinct cust) as x0,count(distinct cstyle) as x00,sum(tq) as x1,sum(tw) as x2,sum(tsah) as x3,sum(q01) as x4,sum(tw01) as x5,sum(tsah01) as x6,'
                      +'sum(q02) as x7,sum(tw02) as x8,sum(tsah02) as x9,sum(q03) as x10,sum(tw03) as x11,sum(tsah03) as x12,'
                      +'sum(q04) as x13,sum(tw04) as x14,sum(tsah04) as x15,sum(q05) as x16,sum(tw05) as x17,sum(tsah05) as x18,'
                      +'sum(q06) as x19,sum(tw06) as x20,sum(tsah06) as x21,sum(q07) as x22,sum(tw07) as x23,sum(tsah07) as x24,'
                      +'sum(q08) as x25,sum(tw08) as x26,sum(tsah08) as x27,sum(q09) as x28,sum(tw09) as x29,sum(tsah09) as x30,'
                      +'sum(q10) as x31,sum(tw10) as x32,sum(tsah10) as x33,sum(q11) as x34,sum(tw11) as x35,sum(tsah11) as x36,'
                      +'sum(q12) as x37,sum(tw12) as x38,sum(tsah12) as x39,sum(ttl01) as s01,sum(ttl02) as s02,sum(ref0101) as s03,sum(ref0102) as s04,'
                      +'sum(ref0201) as s05,sum(ref0202) as s06,sum(ref0301) as s07,sum(ref0302) as s08,sum(ref0401) as s09,sum(ref0402) as s10,'
                      +'sum(ref0501) as s11,sum(ref0502) as s12,sum(ref0601) as s13,sum(ref0602) as s14,sum(ref0701) as s15,sum(ref0702) as s16,'
                      +'sum(ref0801) as s17,sum(ref0802) as s18,sum(ref0901) as s19,sum(ref0902) as s20,sum(ref1001) as s21,sum(ref1002) as s22,'
                      +'sum(ref1101) as s23,sum(ref1102) as s24,sum(ref1201) as s25,sum(ref1202) as s26 '
                      +'from tbl_cap_oa_style_new where cstyle not in (''4) Level off Sale Proj'',''5) Level off SP'') and tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
          //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
          //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          commandtext:=commandtext+' group by flag6';
          open;
          first;
          while not eof do begin
            if fieldbyname('flag6').value='B' then begin
              dbgrideh1.columns[1].footers[0].value:=fieldbyname('x0').asstring;
              dbgrideh1.columns[3].footers[0].Value:=inttostr(fieldbyname('x00').value-1);
              dbgrideh1.Columns[7].Footers[0].Value:=formatfloat('#,0',fieldbyname('x1').value);
              dbgrideh1.Columns[8].Footers[0].Value:=formatfloat('#,0',fieldbyname('x2').value);
              dbgrideh1.Columns[9].Footers[0].Value:=formatfloat('#,0',fieldbyname('x3').value);
              dbgrideh1.Columns[10].Footers[0].Value:=formatfloat('#,0',fieldbyname('s01').value);
              dbgrideh1.Columns[11].Footers[0].Value:=formatfloat('#,0',fieldbyname('s02').value);
              dbgrideh1.Columns[12].Footers[0].Value:=formatfloat('#,0',fieldbyname('x4').value);
              dbgrideh1.Columns[13].Footers[0].Value:=formatfloat('#,0',fieldbyname('x5').value);
              dbgrideh1.Columns[14].Footers[0].Value:=formatfloat('#,0',fieldbyname('x6').value);
              dbgrideh1.Columns[15].Footers[0].Value:=formatfloat('#,0',fieldbyname('s03').value);
              dbgrideh1.Columns[16].Footers[0].Value:=formatfloat('#,0',fieldbyname('s04').value);
              dbgrideh1.Columns[17].Footers[0].Value:=formatfloat('#,0',fieldbyname('x7').value);
              dbgrideh1.Columns[18].Footers[0].Value:=formatfloat('#,0',fieldbyname('x8').value);
              dbgrideh1.Columns[19].Footers[0].Value:=formatfloat('#,0',fieldbyname('x9').value);
              dbgrideh1.Columns[20].Footers[0].Value:=formatfloat('#,0',fieldbyname('s05').value);
              dbgrideh1.Columns[21].Footers[0].Value:=formatfloat('#,0',fieldbyname('s06').value);
              dbgrideh1.Columns[22].Footers[0].Value:=formatfloat('#,0',fieldbyname('x10').value);
              dbgrideh1.Columns[23].Footers[0].Value:=formatfloat('#,0',fieldbyname('x11').value);
              dbgrideh1.Columns[24].Footers[0].Value:=formatfloat('#,0',fieldbyname('x12').value);
              dbgrideh1.Columns[25].Footers[0].Value:=formatfloat('#,0',fieldbyname('s07').value);
              dbgrideh1.Columns[26].Footers[0].Value:=formatfloat('#,0',fieldbyname('s08').value);
              dbgrideh1.Columns[27].Footers[0].Value:=formatfloat('#,0',fieldbyname('x13').value);
              dbgrideh1.Columns[28].Footers[0].Value:=formatfloat('#,0',fieldbyname('x14').value);
              dbgrideh1.Columns[29].Footers[0].Value:=formatfloat('#,0',fieldbyname('x15').value);
              dbgrideh1.Columns[30].Footers[0].Value:=formatfloat('#,0',fieldbyname('s09').value);
              dbgrideh1.Columns[31].Footers[0].Value:=formatfloat('#,0',fieldbyname('s10').value);
              dbgrideh1.Columns[32].Footers[0].Value:=formatfloat('#,0',fieldbyname('x16').value);
              dbgrideh1.Columns[33].Footers[0].Value:=formatfloat('#,0',fieldbyname('x17').value);
              dbgrideh1.Columns[34].Footers[0].Value:=formatfloat('#,0',fieldbyname('x18').value);
              dbgrideh1.Columns[35].Footers[0].Value:=formatfloat('#,0',fieldbyname('s11').value);
              dbgrideh1.Columns[36].Footers[0].Value:=formatfloat('#,0',fieldbyname('s12').value);
              dbgrideh1.Columns[37].Footers[0].Value:=formatfloat('#,0',fieldbyname('x19').value);
              dbgrideh1.Columns[38].Footers[0].Value:=formatfloat('#,0',fieldbyname('x20').value);
              dbgrideh1.Columns[39].Footers[0].Value:=formatfloat('#,0',fieldbyname('x21').value);
              dbgrideh1.Columns[40].Footers[0].Value:=formatfloat('#,0',fieldbyname('s13').value);
              dbgrideh1.Columns[41].Footers[0].Value:=formatfloat('#,0',fieldbyname('s14').value);
              dbgrideh1.Columns[42].Footers[0].Value:=formatfloat('#,0',fieldbyname('x22').value);
              dbgrideh1.Columns[43].Footers[0].Value:=formatfloat('#,0',fieldbyname('x23').value);
              dbgrideh1.Columns[44].Footers[0].Value:=formatfloat('#,0',fieldbyname('x24').value);
              dbgrideh1.Columns[45].Footers[0].Value:=formatfloat('#,0',fieldbyname('s15').value);
              dbgrideh1.Columns[46].Footers[0].Value:=formatfloat('#,0',fieldbyname('s16').value);
              dbgrideh1.Columns[47].Footers[0].Value:=formatfloat('#,0',fieldbyname('x25').value);
              dbgrideh1.Columns[48].Footers[0].Value:=formatfloat('#,0',fieldbyname('x26').value);
              dbgrideh1.Columns[49].Footers[0].Value:=formatfloat('#,0',fieldbyname('x27').value);
              dbgrideh1.Columns[50].Footers[0].Value:=formatfloat('#,0',fieldbyname('s17').value);
              dbgrideh1.Columns[51].Footers[0].Value:=formatfloat('#,0',fieldbyname('s18').value);
              dbgrideh1.Columns[52].Footers[0].Value:=formatfloat('#,0',fieldbyname('x28').value);
              dbgrideh1.Columns[53].Footers[0].Value:=formatfloat('#,0',fieldbyname('x29').value);
              dbgrideh1.Columns[54].Footers[0].Value:=formatfloat('#,0',fieldbyname('x30').value);
              dbgrideh1.Columns[55].Footers[0].Value:=formatfloat('#,0',fieldbyname('s19').value);
              dbgrideh1.Columns[56].Footers[0].Value:=formatfloat('#,0',fieldbyname('s20').value);
              dbgrideh1.Columns[57].Footers[0].Value:=formatfloat('#,0',fieldbyname('x31').value);
              dbgrideh1.Columns[58].Footers[0].Value:=formatfloat('#,0',fieldbyname('x32').value);
              dbgrideh1.Columns[59].Footers[0].Value:=formatfloat('#,0',fieldbyname('x33').value);
              dbgrideh1.Columns[60].Footers[0].Value:=formatfloat('#,0',fieldbyname('s21').value);
              dbgrideh1.Columns[61].Footers[0].Value:=formatfloat('#,0',fieldbyname('s22').value);
              dbgrideh1.Columns[62].Footers[0].Value:=formatfloat('#,0',fieldbyname('x34').value);
              dbgrideh1.Columns[63].Footers[0].Value:=formatfloat('#,0',fieldbyname('x35').value);
              dbgrideh1.Columns[64].Footers[0].Value:=formatfloat('#,0',fieldbyname('x36').value);
              dbgrideh1.Columns[65].Footers[0].Value:=formatfloat('#,0',fieldbyname('s23').value);
              dbgrideh1.Columns[66].Footers[0].Value:=formatfloat('#,0',fieldbyname('s24').value);
              dbgrideh1.Columns[67].Footers[0].Value:=formatfloat('#,0',fieldbyname('x37').value);
              dbgrideh1.Columns[68].Footers[0].Value:=formatfloat('#,0',fieldbyname('x38').value);
              dbgrideh1.Columns[69].Footers[0].Value:=formatfloat('#,0',fieldbyname('x39').value);
              dbgrideh1.Columns[70].Footers[0].Value:=formatfloat('#,0',fieldbyname('s25').value);
              dbgrideh1.Columns[71].Footers[0].Value:=formatfloat('#,0',fieldbyname('s26').value);
            end else if fieldbyname('flag6').value='K' then begin
              dbgrideh1.columns[1].footers[1].value:=fieldbyname('x0').asstring;
              dbgrideh1.columns[3].footers[1].Value:=inttostr(fieldbyname('x00').value-1);
              dbgrideh1.Columns[7].footers[1].Value:=formatfloat('#,0',fieldbyname('x1').value);
              dbgrideh1.Columns[8].footers[1].Value:=formatfloat('#,0',fieldbyname('x2').value);
              dbgrideh1.Columns[9].footers[1].Value:=formatfloat('#,0',fieldbyname('x3').value);
              dbgrideh1.Columns[10].footers[1].Value:=formatfloat('#,0',fieldbyname('s01').value);
              dbgrideh1.Columns[11].footers[1].Value:=formatfloat('#,0',fieldbyname('s02').value);
              dbgrideh1.Columns[12].footers[1].Value:=formatfloat('#,0',fieldbyname('x4').value);
              dbgrideh1.Columns[13].footers[1].Value:=formatfloat('#,0',fieldbyname('x5').value);
              dbgrideh1.Columns[14].footers[1].Value:=formatfloat('#,0',fieldbyname('x6').value);
              dbgrideh1.Columns[15].footers[1].Value:=formatfloat('#,0',fieldbyname('s03').value);
              dbgrideh1.Columns[16].footers[1].Value:=formatfloat('#,0',fieldbyname('s04').value);
              dbgrideh1.Columns[17].footers[1].Value:=formatfloat('#,0',fieldbyname('x7').value);
              dbgrideh1.Columns[18].footers[1].Value:=formatfloat('#,0',fieldbyname('x8').value);
              dbgrideh1.Columns[19].footers[1].Value:=formatfloat('#,0',fieldbyname('x9').value);
              dbgrideh1.Columns[20].footers[1].Value:=formatfloat('#,0',fieldbyname('s05').value);
              dbgrideh1.Columns[21].footers[1].Value:=formatfloat('#,0',fieldbyname('s06').value);
              dbgrideh1.Columns[22].footers[1].Value:=formatfloat('#,0',fieldbyname('x10').value);
              dbgrideh1.Columns[23].footers[1].Value:=formatfloat('#,0',fieldbyname('x11').value);
              dbgrideh1.Columns[24].footers[1].Value:=formatfloat('#,0',fieldbyname('x12').value);
              dbgrideh1.Columns[25].footers[1].Value:=formatfloat('#,0',fieldbyname('s07').value);
              dbgrideh1.Columns[26].footers[1].Value:=formatfloat('#,0',fieldbyname('s08').value);
              dbgrideh1.Columns[27].footers[1].Value:=formatfloat('#,0',fieldbyname('x13').value);
              dbgrideh1.Columns[28].footers[1].Value:=formatfloat('#,0',fieldbyname('x14').value);
              dbgrideh1.Columns[29].footers[1].Value:=formatfloat('#,0',fieldbyname('x15').value);
              dbgrideh1.Columns[30].footers[1].Value:=formatfloat('#,0',fieldbyname('s09').value);
              dbgrideh1.Columns[31].footers[1].Value:=formatfloat('#,0',fieldbyname('s10').value);
              dbgrideh1.Columns[32].footers[1].Value:=formatfloat('#,0',fieldbyname('x16').value);
              dbgrideh1.Columns[33].footers[1].Value:=formatfloat('#,0',fieldbyname('x17').value);
              dbgrideh1.Columns[34].footers[1].Value:=formatfloat('#,0',fieldbyname('x18').value);
              dbgrideh1.Columns[35].footers[1].Value:=formatfloat('#,0',fieldbyname('s11').value);
              dbgrideh1.Columns[36].footers[1].Value:=formatfloat('#,0',fieldbyname('s12').value);
              dbgrideh1.Columns[37].footers[1].Value:=formatfloat('#,0',fieldbyname('x19').value);
              dbgrideh1.Columns[38].footers[1].Value:=formatfloat('#,0',fieldbyname('x20').value);
              dbgrideh1.Columns[39].footers[1].Value:=formatfloat('#,0',fieldbyname('x21').value);
              dbgrideh1.Columns[40].footers[1].Value:=formatfloat('#,0',fieldbyname('s13').value);
              dbgrideh1.Columns[41].footers[1].Value:=formatfloat('#,0',fieldbyname('s14').value);
              dbgrideh1.Columns[42].footers[1].Value:=formatfloat('#,0',fieldbyname('x22').value);
              dbgrideh1.Columns[43].footers[1].Value:=formatfloat('#,0',fieldbyname('x23').value);
              dbgrideh1.Columns[44].footers[1].Value:=formatfloat('#,0',fieldbyname('x24').value);
              dbgrideh1.Columns[45].footers[1].Value:=formatfloat('#,0',fieldbyname('s15').value);
              dbgrideh1.Columns[46].footers[1].Value:=formatfloat('#,0',fieldbyname('s16').value);
              dbgrideh1.Columns[47].footers[1].Value:=formatfloat('#,0',fieldbyname('x25').value);
              dbgrideh1.Columns[48].footers[1].Value:=formatfloat('#,0',fieldbyname('x26').value);
              dbgrideh1.Columns[49].footers[1].Value:=formatfloat('#,0',fieldbyname('x27').value);
              dbgrideh1.Columns[50].footers[1].Value:=formatfloat('#,0',fieldbyname('s17').value);
              dbgrideh1.Columns[51].footers[1].Value:=formatfloat('#,0',fieldbyname('s18').value);
              dbgrideh1.Columns[52].footers[1].Value:=formatfloat('#,0',fieldbyname('x28').value);
              dbgrideh1.Columns[53].footers[1].Value:=formatfloat('#,0',fieldbyname('x29').value);
              dbgrideh1.Columns[54].footers[1].Value:=formatfloat('#,0',fieldbyname('x30').value);
              dbgrideh1.Columns[55].footers[1].Value:=formatfloat('#,0',fieldbyname('s19').value);
              dbgrideh1.Columns[56].footers[1].Value:=formatfloat('#,0',fieldbyname('s20').value);
              dbgrideh1.Columns[57].footers[1].Value:=formatfloat('#,0',fieldbyname('x31').value);
              dbgrideh1.Columns[58].footers[1].Value:=formatfloat('#,0',fieldbyname('x32').value);
              dbgrideh1.Columns[59].footers[1].Value:=formatfloat('#,0',fieldbyname('x33').value);
              dbgrideh1.Columns[60].footers[1].Value:=formatfloat('#,0',fieldbyname('s21').value);
              dbgrideh1.Columns[61].footers[1].Value:=formatfloat('#,0',fieldbyname('s22').value);
              dbgrideh1.Columns[62].footers[1].Value:=formatfloat('#,0',fieldbyname('x34').value);
              dbgrideh1.Columns[63].footers[1].Value:=formatfloat('#,0',fieldbyname('x35').value);
              dbgrideh1.Columns[64].footers[1].Value:=formatfloat('#,0',fieldbyname('x36').value);
              dbgrideh1.Columns[65].footers[1].Value:=formatfloat('#,0',fieldbyname('s23').value);
              dbgrideh1.Columns[66].footers[1].Value:=formatfloat('#,0',fieldbyname('s24').value);
              dbgrideh1.Columns[67].footers[1].Value:=formatfloat('#,0',fieldbyname('x37').value);
              dbgrideh1.Columns[68].footers[1].Value:=formatfloat('#,0',fieldbyname('x38').value);
              dbgrideh1.Columns[69].footers[1].Value:=formatfloat('#,0',fieldbyname('x39').value);
              dbgrideh1.Columns[70].footers[1].Value:=formatfloat('#,0',fieldbyname('s25').value);
              dbgrideh1.Columns[71].footers[1].Value:=formatfloat('#,0',fieldbyname('s26').value);
            end else if fieldbyname('flag6').value='U' then begin
              dbgrideh1.columns[1].footers[2].value:=fieldbyname('x0').asstring;
              dbgrideh1.columns[3].footers[2].Value:=inttostr(fieldbyname('x00').value-1);
              dbgrideh1.Columns[7].footers[2].Value:=formatfloat('#,0',fieldbyname('x1').value);
              dbgrideh1.Columns[8].footers[2].Value:=formatfloat('#,0',fieldbyname('x2').value);
              dbgrideh1.Columns[9].footers[2].Value:=formatfloat('#,0',fieldbyname('x3').value);
              dbgrideh1.Columns[10].footers[2].Value:=formatfloat('#,0',fieldbyname('s01').value);
              dbgrideh1.Columns[11].footers[2].Value:=formatfloat('#,0',fieldbyname('s02').value);
              dbgrideh1.Columns[12].footers[2].Value:=formatfloat('#,0',fieldbyname('x4').value);
              dbgrideh1.Columns[13].footers[2].Value:=formatfloat('#,0',fieldbyname('x5').value);
              dbgrideh1.Columns[14].footers[2].Value:=formatfloat('#,0',fieldbyname('x6').value);
              dbgrideh1.Columns[15].footers[2].Value:=formatfloat('#,0',fieldbyname('s03').value);
              dbgrideh1.Columns[16].footers[2].Value:=formatfloat('#,0',fieldbyname('s04').value);
              dbgrideh1.Columns[17].footers[2].Value:=formatfloat('#,0',fieldbyname('x7').value);
              dbgrideh1.Columns[18].footers[2].Value:=formatfloat('#,0',fieldbyname('x8').value);
              dbgrideh1.Columns[19].footers[2].Value:=formatfloat('#,0',fieldbyname('x9').value);
              dbgrideh1.Columns[20].footers[2].Value:=formatfloat('#,0',fieldbyname('s05').value);
              dbgrideh1.Columns[21].footers[2].Value:=formatfloat('#,0',fieldbyname('s06').value);
              dbgrideh1.Columns[22].footers[2].Value:=formatfloat('#,0',fieldbyname('x10').value);
              dbgrideh1.Columns[23].footers[2].Value:=formatfloat('#,0',fieldbyname('x11').value);
              dbgrideh1.Columns[24].footers[2].Value:=formatfloat('#,0',fieldbyname('x12').value);
              dbgrideh1.Columns[25].footers[2].Value:=formatfloat('#,0',fieldbyname('s07').value);
              dbgrideh1.Columns[26].footers[2].Value:=formatfloat('#,0',fieldbyname('s08').value);
              dbgrideh1.Columns[27].footers[2].Value:=formatfloat('#,0',fieldbyname('x13').value);
              dbgrideh1.Columns[28].footers[2].Value:=formatfloat('#,0',fieldbyname('x14').value);
              dbgrideh1.Columns[29].footers[2].Value:=formatfloat('#,0',fieldbyname('x15').value);
              dbgrideh1.Columns[30].footers[2].Value:=formatfloat('#,0',fieldbyname('s09').value);
              dbgrideh1.Columns[31].footers[2].Value:=formatfloat('#,0',fieldbyname('s10').value);
              dbgrideh1.Columns[32].footers[2].Value:=formatfloat('#,0',fieldbyname('x16').value);
              dbgrideh1.Columns[33].footers[2].Value:=formatfloat('#,0',fieldbyname('x17').value);
              dbgrideh1.Columns[34].footers[2].Value:=formatfloat('#,0',fieldbyname('x18').value);
              dbgrideh1.Columns[35].footers[2].Value:=formatfloat('#,0',fieldbyname('s11').value);
              dbgrideh1.Columns[36].footers[2].Value:=formatfloat('#,0',fieldbyname('s12').value);
              dbgrideh1.Columns[37].footers[2].Value:=formatfloat('#,0',fieldbyname('x19').value);
              dbgrideh1.Columns[38].footers[2].Value:=formatfloat('#,0',fieldbyname('x20').value);
              dbgrideh1.Columns[39].footers[2].Value:=formatfloat('#,0',fieldbyname('x21').value);
              dbgrideh1.Columns[40].footers[2].Value:=formatfloat('#,0',fieldbyname('s13').value);
              dbgrideh1.Columns[41].footers[2].Value:=formatfloat('#,0',fieldbyname('s14').value);
              dbgrideh1.Columns[42].footers[2].Value:=formatfloat('#,0',fieldbyname('x22').value);
              dbgrideh1.Columns[43].footers[2].Value:=formatfloat('#,0',fieldbyname('x23').value);
              dbgrideh1.Columns[44].footers[2].Value:=formatfloat('#,0',fieldbyname('x24').value);
              dbgrideh1.Columns[45].footers[2].Value:=formatfloat('#,0',fieldbyname('s15').value);
              dbgrideh1.Columns[46].footers[2].Value:=formatfloat('#,0',fieldbyname('s16').value);
              dbgrideh1.Columns[47].footers[2].Value:=formatfloat('#,0',fieldbyname('x25').value);
              dbgrideh1.Columns[48].footers[2].Value:=formatfloat('#,0',fieldbyname('x26').value);
              dbgrideh1.Columns[49].footers[2].Value:=formatfloat('#,0',fieldbyname('x27').value);
              dbgrideh1.Columns[50].footers[2].Value:=formatfloat('#,0',fieldbyname('s17').value);
              dbgrideh1.Columns[51].footers[2].Value:=formatfloat('#,0',fieldbyname('s18').value);
              dbgrideh1.Columns[52].footers[2].Value:=formatfloat('#,0',fieldbyname('x28').value);
              dbgrideh1.Columns[53].footers[2].Value:=formatfloat('#,0',fieldbyname('x29').value);
              dbgrideh1.Columns[54].footers[2].Value:=formatfloat('#,0',fieldbyname('x30').value);
              dbgrideh1.Columns[55].footers[2].Value:=formatfloat('#,0',fieldbyname('s19').value);
              dbgrideh1.Columns[56].footers[2].Value:=formatfloat('#,0',fieldbyname('s20').value);
              dbgrideh1.Columns[57].footers[2].Value:=formatfloat('#,0',fieldbyname('x31').value);
              dbgrideh1.Columns[58].footers[2].Value:=formatfloat('#,0',fieldbyname('x32').value);
              dbgrideh1.Columns[59].footers[2].Value:=formatfloat('#,0',fieldbyname('x33').value);
              dbgrideh1.Columns[60].footers[2].Value:=formatfloat('#,0',fieldbyname('s21').value);
              dbgrideh1.Columns[61].footers[2].Value:=formatfloat('#,0',fieldbyname('s22').value);
              dbgrideh1.Columns[62].footers[2].Value:=formatfloat('#,0',fieldbyname('x34').value);
              dbgrideh1.Columns[63].footers[2].Value:=formatfloat('#,0',fieldbyname('x35').value);
              dbgrideh1.Columns[64].footers[2].Value:=formatfloat('#,0',fieldbyname('x36').value);
              dbgrideh1.Columns[65].footers[2].Value:=formatfloat('#,0',fieldbyname('s23').value);
              dbgrideh1.Columns[66].footers[2].Value:=formatfloat('#,0',fieldbyname('s24').value);
              dbgrideh1.Columns[67].footers[2].Value:=formatfloat('#,0',fieldbyname('x37').value);
              dbgrideh1.Columns[68].footers[2].Value:=formatfloat('#,0',fieldbyname('x38').value);
              dbgrideh1.Columns[69].footers[2].Value:=formatfloat('#,0',fieldbyname('x39').value);
              dbgrideh1.Columns[70].footers[2].Value:=formatfloat('#,0',fieldbyname('s25').value);
              dbgrideh1.Columns[71].footers[2].Value:=formatfloat('#,0',fieldbyname('s26').value);
            end;
            application.ProcessMessages;
            next;
          end;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select count(distinct cust) as x0,count(distinct cstyle) as x00,sum(tq) as x1,sum(tw) as x2,sum(tsah) as x3,sum(q01) as x4,sum(tw01) as x5,sum(tsah01) as x6,'
                      +'sum(q02) as x7,sum(tw02) as x8,sum(tsah02) as x9,sum(q03) as x10,sum(tw03) as x11,sum(tsah03) as x12,'
                      +'sum(q04) as x13,sum(tw04) as x14,sum(tsah04) as x15,sum(q05) as x16,sum(tw05) as x17,sum(tsah05) as x18,'
                      +'sum(q06) as x19,sum(tw06) as x20,sum(tsah06) as x21,sum(q07) as x22,sum(tw07) as x23,sum(tsah07) as x24,'
                      +'sum(q08) as x25,sum(tw08) as x26,sum(tsah08) as x27,sum(q09) as x28,sum(tw09) as x29,sum(tsah09) as x30,'
                      +'sum(q10) as x31,sum(tw10) as x32,sum(tsah10) as x33,sum(q11) as x34,sum(tw11) as x35,sum(tsah11) as x36,'
                      +'sum(q12) as x37,sum(tw12) as x38,sum(tsah12) as x39,sum(ttl01) as s01,sum(ttl02) as s02,sum(ref0101) as s03,sum(ref0102) as s04,'
                      +'sum(ref0201) as s05,sum(ref0202) as s06,sum(ref0301) as s07,sum(ref0302) as s08,sum(ref0401) as s09,sum(ref0402) as s10,'
                      +'sum(ref0501) as s11,sum(ref0502) as s12,sum(ref0601) as s13,sum(ref0602) as s14,sum(ref0701) as s15,sum(ref0702) as s16,'
                      +'sum(ref0801) as s17,sum(ref0802) as s18,sum(ref0901) as s19,sum(ref0902) as s20,sum(ref1001) as s21,sum(ref1002) as s22,'
                      +'sum(ref1101) as s23,sum(ref1102) as s24,sum(ref1201) as s25,sum(ref1202) as s26 '
                      +'from tbl_cap_oa_style_new where cstyle not in (''4) Level off Sale Proj'',''5) Level off SP'') and tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
          if treeview1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+treeview1.selected.text+''''
          else if treeview1.selected.level=2 then commandtext:=commandtext+' and cust='''+treeview1.selected.text+'''';
          //if combobox2.text>'' then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
          //if combobox3.text>'' then commandtext:=commandtext+' and cust='''+combobox3.text+'''';
          open;
          dbgrideh1.Columns[7].footers[3].Value:=formatfloat('#,0',fieldbyname('x1').value);
          dbgrideh1.Columns[8].footers[3].Value:=formatfloat('#,0',fieldbyname('x2').value);
          dbgrideh1.Columns[9].footers[3].Value:=formatfloat('#,0',fieldbyname('x3').value);
          dbgrideh1.Columns[10].footers[3].Value:=formatfloat('#,0',fieldbyname('s01').value);
          dbgrideh1.Columns[11].footers[3].Value:=formatfloat('#,0',fieldbyname('s02').value);
          dbgrideh1.Columns[12].footers[3].Value:=formatfloat('#,0',fieldbyname('x4').value);
          dbgrideh1.Columns[13].footers[3].Value:=formatfloat('#,0',fieldbyname('x5').value);
          dbgrideh1.Columns[14].footers[3].Value:=formatfloat('#,0',fieldbyname('x6').value);
          dbgrideh1.Columns[15].footers[3].Value:=formatfloat('#,0',fieldbyname('s03').value);
          dbgrideh1.Columns[16].footers[3].Value:=formatfloat('#,0',fieldbyname('s04').value);
          dbgrideh1.Columns[17].footers[3].Value:=formatfloat('#,0',fieldbyname('x7').value);
          dbgrideh1.Columns[18].footers[3].Value:=formatfloat('#,0',fieldbyname('x8').value);
          dbgrideh1.Columns[19].footers[3].Value:=formatfloat('#,0',fieldbyname('x9').value);
          dbgrideh1.Columns[20].footers[3].Value:=formatfloat('#,0',fieldbyname('s05').value);
          dbgrideh1.Columns[21].footers[3].Value:=formatfloat('#,0',fieldbyname('s06').value);
          dbgrideh1.Columns[22].footers[3].Value:=formatfloat('#,0',fieldbyname('x10').value);
          dbgrideh1.Columns[23].footers[3].Value:=formatfloat('#,0',fieldbyname('x11').value);
          dbgrideh1.Columns[24].footers[3].Value:=formatfloat('#,0',fieldbyname('x12').value);
          dbgrideh1.Columns[25].footers[3].Value:=formatfloat('#,0',fieldbyname('s07').value);
          dbgrideh1.Columns[26].footers[3].Value:=formatfloat('#,0',fieldbyname('s08').value);
          dbgrideh1.Columns[27].footers[3].Value:=formatfloat('#,0',fieldbyname('x13').value);
          dbgrideh1.Columns[28].footers[3].Value:=formatfloat('#,0',fieldbyname('x14').value);
          dbgrideh1.Columns[29].footers[3].Value:=formatfloat('#,0',fieldbyname('x15').value);
          dbgrideh1.Columns[30].footers[3].Value:=formatfloat('#,0',fieldbyname('s09').value);
          dbgrideh1.Columns[31].footers[3].Value:=formatfloat('#,0',fieldbyname('s10').value);
          dbgrideh1.Columns[32].footers[3].Value:=formatfloat('#,0',fieldbyname('x16').value);
          dbgrideh1.Columns[33].footers[3].Value:=formatfloat('#,0',fieldbyname('x17').value);
          dbgrideh1.Columns[34].footers[3].Value:=formatfloat('#,0',fieldbyname('x18').value);
          dbgrideh1.Columns[35].footers[3].Value:=formatfloat('#,0',fieldbyname('s11').value);
          dbgrideh1.Columns[36].footers[3].Value:=formatfloat('#,0',fieldbyname('s12').value);
          dbgrideh1.Columns[37].footers[3].Value:=formatfloat('#,0',fieldbyname('x19').value);
          dbgrideh1.Columns[38].footers[3].Value:=formatfloat('#,0',fieldbyname('x20').value);
          dbgrideh1.Columns[39].footers[3].Value:=formatfloat('#,0',fieldbyname('x21').value);
          dbgrideh1.Columns[40].footers[3].Value:=formatfloat('#,0',fieldbyname('s13').value);
          dbgrideh1.Columns[41].footers[3].Value:=formatfloat('#,0',fieldbyname('s14').value);
          dbgrideh1.Columns[42].footers[3].Value:=formatfloat('#,0',fieldbyname('x22').value);
          dbgrideh1.Columns[43].footers[3].Value:=formatfloat('#,0',fieldbyname('x23').value);
          dbgrideh1.Columns[44].footers[3].Value:=formatfloat('#,0',fieldbyname('x24').value);
          dbgrideh1.Columns[45].footers[3].Value:=formatfloat('#,0',fieldbyname('s15').value);
          dbgrideh1.Columns[46].footers[3].Value:=formatfloat('#,0',fieldbyname('s16').value);
          dbgrideh1.Columns[47].footers[3].Value:=formatfloat('#,0',fieldbyname('x25').value);
          dbgrideh1.Columns[48].footers[3].Value:=formatfloat('#,0',fieldbyname('x26').value);
          dbgrideh1.Columns[49].footers[3].Value:=formatfloat('#,0',fieldbyname('x27').value);
          dbgrideh1.Columns[50].footers[3].Value:=formatfloat('#,0',fieldbyname('s17').value);
          dbgrideh1.Columns[51].footers[3].Value:=formatfloat('#,0',fieldbyname('s18').value);
          dbgrideh1.Columns[52].footers[3].Value:=formatfloat('#,0',fieldbyname('x28').value);
          dbgrideh1.Columns[53].footers[3].Value:=formatfloat('#,0',fieldbyname('x29').value);
          dbgrideh1.Columns[54].footers[3].Value:=formatfloat('#,0',fieldbyname('x30').value);
          dbgrideh1.Columns[55].footers[3].Value:=formatfloat('#,0',fieldbyname('s19').value);
          dbgrideh1.Columns[56].footers[3].Value:=formatfloat('#,0',fieldbyname('s20').value);
          dbgrideh1.Columns[57].footers[3].Value:=formatfloat('#,0',fieldbyname('x31').value);
          dbgrideh1.Columns[58].footers[3].Value:=formatfloat('#,0',fieldbyname('x32').value);
          dbgrideh1.Columns[59].footers[3].Value:=formatfloat('#,0',fieldbyname('x33').value);
          dbgrideh1.Columns[60].footers[3].Value:=formatfloat('#,0',fieldbyname('s21').value);
          dbgrideh1.Columns[61].footers[3].Value:=formatfloat('#,0',fieldbyname('s22').value);
          dbgrideh1.Columns[62].footers[3].Value:=formatfloat('#,0',fieldbyname('x34').value);
          dbgrideh1.Columns[63].footers[3].Value:=formatfloat('#,0',fieldbyname('x35').value);
          dbgrideh1.Columns[64].footers[3].Value:=formatfloat('#,0',fieldbyname('x36').value);
          dbgrideh1.Columns[65].footers[3].Value:=formatfloat('#,0',fieldbyname('s23').value);
          dbgrideh1.Columns[66].footers[3].Value:=formatfloat('#,0',fieldbyname('s24').value);
          dbgrideh1.Columns[67].footers[3].Value:=formatfloat('#,0',fieldbyname('x37').value);
          dbgrideh1.Columns[68].footers[3].Value:=formatfloat('#,0',fieldbyname('x38').value);
          dbgrideh1.Columns[69].footers[3].Value:=formatfloat('#,0',fieldbyname('x39').value);
          dbgrideh1.Columns[70].footers[3].Value:=formatfloat('#,0',fieldbyname('s25').value);
          dbgrideh1.Columns[71].footers[3].Value:=formatfloat('#,0',fieldbyname('s26').value);
        end;
      end;
    end;
  end;
end;

procedure Tfrmnewcap_style.BitBtn4Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tbl_cap_oa_style_new1 where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tbl_cap_oa_style_new2 where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tbl_cap_oa_style_new where seq=:x1';
      params[0].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    query1.delete;
  end;
end;

procedure Tfrmnewcap_style.BitBtn9Click(Sender: TObject);
begin
  //save & close
  if (query1.state=dsinsert) or (query1.state=dsedit) then query1.post;
  frmnewcap_style.close;
end;

procedure Tfrmnewcap_style.SpinEdit2Change(Sender: TObject);
var
  i:integer;
  m1:array[1..12] of integer;
begin
  screen.Cursor:=crSQLWait;
  try
  if spinedit2.value>1 then begin
    for i:=12 to 71 do begin
      dbgrideh1.Columns[i].Visible:=true;
      dbgrideh2.Columns[i].Visible:=true;
    end;
    for i:=12 to 12+(spinedit2.value-1)*5-1 do begin
      dbgrideh1.Columns[i].Visible:=false;
      dbgrideh2.Columns[i].Visible:=false;
    end;
    if spinedit3.value<12 then begin
      for i:=71-(12-spinedit3.value)*5+1 to 71 do begin
        dbgrideh1.columns[i].visible:=false;
        dbgrideh2.Columns[i].Visible:=false;
      end;
    end;
  end else begin
    for i:=12 to 71 do begin
      dbgrideh1.Columns[i].Visible:=true;
      dbgrideh2.Columns[i].Visible:=true;
    end;
    if spinedit3.value<12 then begin
      for i:=71-(12-spinedit3.value)*5+1 to 71 do begin
        dbgrideh1.columns[i].visible:=false;
        dbgrideh2.Columns[i].Visible:=false;
      end;
    end;
  end;

  //{
  for i:=1 to 12 do begin
    m1[i]:=1;
  end;
  if spinedit2.value>1 then begin
    for i:=1 to spinedit2.value-1 do begin
      m1[i]:=0;
    end;
    if spinedit3.value<12 then begin
      for i:=spinedit3.value+1 to 12 do begin
        m1[i]:=0;
      end;
    end;
  end else begin
    if spinedit3.value<12 then begin
      for i:=spinedit3.value+1 to 12 do begin
        m1[i]:=0;
      end;
    end;
  end;
  {
  with query2 do begin
    close;
    params.clear;
    params.CreateParam(ftinteger,'x1',ptinput);
    params.CreateParam(ftinteger,'x2',ptinput);
    params.CreateParam(ftinteger,'x3',ptinput);
    params.CreateParam(ftinteger,'x4',ptinput);
    params.CreateParam(ftinteger,'x5',ptinput);
    params.CreateParam(ftinteger,'x6',ptinput);
    params.CreateParam(ftinteger,'x7',ptinput);
    params.CreateParam(ftinteger,'x8',ptinput);
    params.CreateParam(ftinteger,'x9',ptinput);
    params.CreateParam(ftinteger,'x10',ptinput);
    params.CreateParam(ftinteger,'x11',ptinput);
    params.CreateParam(ftinteger,'x12',ptinput);
    params.CreateParam(ftstring,'x13',ptinput);
    params.CreateParam(ftinteger,'x14',ptinput);
    commandtext:='update tbl_cap_oa_style_new_period set m1=:x1,m2=:x2,m3=:x3,m4=:x4,m5=:x5,m6=:x6,m7=:x7,m8=:x8,m9=:x9,m10=:x10,m11=:x11,m12=:x12 where tplant=:x13 and yr=:x14';
    params[0].asinteger:=m1[1];
    params[1].asinteger:=m1[2];
    params[2].asinteger:=m1[3];
    params[3].asinteger:=m1[4];
    params[4].asinteger:=m1[5];
    params[5].asinteger:=m1[6];
    params[6].asinteger:=m1[7];
    params[7].asinteger:=m1[8];
    params[8].asinteger:=m1[9];
    params[9].asinteger:=m1[10];
    params[10].asinteger:=m1[11];
    params[11].asinteger:=m1[12];
    params[12].asstring:=combobox1.text;//query1.fieldbyname('tplant').value;
    params[13].asinteger:=spinedit1.value;//query1.fieldbyname('yr').value;
    execute;
  end;
  }
  strupd:='update tbl_cap_oa_style_new_period set m1='+inttostr(m1[1])+',m2='+inttostr(m1[2])+',m3=';
  strupd:=strupd+inttostr(m1[3])+',m4='+inttostr(m1[4])+',m5='+inttostr(m1[5])+',m6='+inttostr(m1[6])+',m7=';
  strupd:=strupd+inttostr(m1[7])+',m8='+inttostr(m1[8])+',m9='+inttostr(m1[9])+',m10='+inttostr(m1[10]);
  strupd:=strupd+',m11='+inttostr(m1[11])+',m12='+inttostr(m1[12])+' where tplant='''+combobox1.text+''' and yr='+inttostr(spinedit1.value);
  if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

  show_data1;

  {
  with query1 do begin
    first;
    while not eof do begin
      edit;
      fieldbyname('tq').value:=fieldbyname('q01').value*m1[1]+fieldbyname('q02').value*m1[2]+fieldbyname('q03').value*m1[3]+fieldbyname('q04').value*m1[4]+fieldbyname('q05').value*m1[5]+fieldbyname('q06').value*m1[6]+fieldbyname('q07').value*m1[7]+fieldbyname('q08').value*m1[8]+fieldbyname('q09').value*m1[9]+fieldbyname('q10').value*m1[10]+fieldbyname('q11').value*m1[11]+fieldbyname('q12').value*m1[12];
      fieldbyname('tw').value:=fieldbyname('tw01').value*m1[1]+fieldbyname('tw02').value*m1[2]+fieldbyname('tw03').value*m1[3]+fieldbyname('tw04').value*m1[4]+fieldbyname('tw05').value*m1[5]+fieldbyname('tw06').value*m1[6]+fieldbyname('tw07').value*m1[7]+fieldbyname('tw08').value*m1[8]+fieldbyname('tw09').value*m1[9]+fieldbyname('tw10').value*m1[10]+fieldbyname('tw11').value*m1[11]+fieldbyname('tw12').value*m1[12];
      fieldbyname('tsah').value:=fieldbyname('tsah01').value*m1[1]+fieldbyname('tsah02').value*m1[2]+fieldbyname('tsah03').value*m1[3]+fieldbyname('tsah04').value*m1[4]+fieldbyname('tsah05').value*m1[5]+fieldbyname('tsah06').value*m1[6]+fieldbyname('tsah07').value*m1[7]+fieldbyname('tsah08').value*m1[8]+fieldbyname('tsah09').value*m1[9]+fieldbyname('tsah10').value*m1[10]+fieldbyname('tsah11').value*m1[11]+fieldbyname('tsah12').value*m1[12];
      fieldbyname('ttl01').value:=fieldbyname('ref0101').value*m1[1]+fieldbyname('ref0201').value*m1[2]+fieldbyname('ref0301').value*m1[3]+fieldbyname('ref0401').value*m1[4]+fieldbyname('ref0501').value*m1[5]+fieldbyname('ref0601').value*m1[6]+fieldbyname('ref0701').value*m1[7]+fieldbyname('ref0801').value*m1[8]+fieldbyname('ref0901').value*m1[9]+fieldbyname('ref1001').value*m1[10]+fieldbyname('ref1101').value*m1[11]+fieldbyname('ref1201').value*m1[12];
      fieldbyname('ttl02').value:=fieldbyname('ref0102').value*m1[1]+fieldbyname('ref0202').value*m1[2]+fieldbyname('ref0302').value*m1[3]+fieldbyname('ref0402').value*m1[4]+fieldbyname('ref0502').value*m1[5]+fieldbyname('ref0602').value*m1[6]+fieldbyname('ref0702').value*m1[7]+fieldbyname('ref0802').value*m1[8]+fieldbyname('ref0902').value*m1[9]+fieldbyname('ref1002').value*m1[10]+fieldbyname('ref1102').value*m1[11]+fieldbyname('ref1202').value*m1[12];
      post;
      application.ProcessMessages;
      next;
    end;
  end;
  }
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_style.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if pos('Level off',query1.fieldbyname('cstyle').value)>0 then begin
    //dbgrideh2.Canvas.Font.Style:=[fsItalic];
    dbgrideh2.Canvas.Font.Style:=[fsBold];
    //dbgrideh1.Canvas.Brush.Color:=$00CDFCFB;//clYellow;
  end;
  DBGridEh2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrmnewcap_style.Exportdata1Click(Sender: TObject);
var
  fty,sqlstr:string;
begin
  //if savedialog1.Execute then begin
    if treeview1.Selected<>nil then begin
      if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='BD' then fty:='CL' else fty:=combobox1.text;
      //showmessage('0');
      sqlstr:='grp as Div,cust,cstyle as "Cust Style",flag6 as "Prod Code",tq as "Ttl Del Qty",tw as "Ttl T3 Qty",tsah as "Ttl aT3 Qty",ttl01 as "Ttl goto previous",ttl02 as "Ttl come from future",';
      if spinedit2.Value=1 then begin
        if spinedit3.Value=12 then begin
          sqlstr:=sqlstr+'q01 as "Jan Del Qty",tw01 as "Jan T3 Qty",tsah01 as "Jan aT3 Qty",ref0101 as "Jan goto previous",ref0102 as "Jan come from future",';
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future",';
          sqlstr:=sqlstr+'q12 as "Dec Del Qty",tw12 as "Dec T3 Qty",tsah12 as "Dec aT3 Qty",ref1201 as "Dec goto previous",ref1202 as "Dec come from future"';
        end else if spinedit3.Value=11 then begin
          sqlstr:=sqlstr+'q01 as "Jan Del Qty",tw01 as "Jan T3 Qty",tsah01 as "Jan aT3 Qty",ref0101 as "Jan goto previous",ref0102 as "Jan come from future",';
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future"';
        end else if spinedit3.Value=10 then begin
          sqlstr:=sqlstr+'q01 as "Jan Del Qty",tw01 as "Jan T3 Qty",tsah01 as "Jan aT3 Qty",ref0101 as "Jan goto previous",ref0102 as "Jan come from future",';
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future"';
        end else if spinedit3.Value=9 then begin
          sqlstr:=sqlstr+'q01 as "Jan Del Qty",tw01 as "Jan T3 Qty",tsah01 as "Jan aT3 Qty",ref0101 as "Jan goto previous",ref0102 as "Jan come from future",';
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future"';
        end else if spinedit3.Value=8 then begin
          sqlstr:=sqlstr+'q01 as "Jan Del Qty",tw01 as "Jan T3 Qty",tsah01 as "Jan aT3 Qty",ref0101 as "Jan goto previous",ref0102 as "Jan come from future",';
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future"';
        end else if spinedit3.Value=7 then begin
          sqlstr:=sqlstr+'q01 as "Jan Del Qty",tw01 as "Jan T3 Qty",tsah01 as "Jan aT3 Qty",ref0101 as "Jan goto previous",ref0102 as "Jan come from future",';
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future"';
        end else if spinedit3.Value=6 then begin
          sqlstr:=sqlstr+'q01 as "Jan Del Qty",tw01 as "Jan T3 Qty",tsah01 as "Jan aT3 Qty",ref0101 as "Jan goto previous",ref0102 as "Jan come from future",';
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future"';
        end else if spinedit3.Value=5 then begin
          sqlstr:=sqlstr+'q01 as "Jan Del Qty",tw01 as "Jan T3 Qty",tsah01 as "Jan aT3 Qty",ref0101 as "Jan goto previous",ref0102 as "Jan come from future",';
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future"';
        end else if spinedit3.Value=4 then begin
          sqlstr:=sqlstr+'q01 as "Jan Del Qty",tw01 as "Jan T3 Qty",tsah01 as "Jan aT3 Qty",ref0101 as "Jan goto previous",ref0102 as "Jan come from future",';
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future"';
        end else if spinedit3.Value=3 then begin
          sqlstr:=sqlstr+'q01 as "Jan Del Qty",tw01 as "Jan T3 Qty",tsah01 as "Jan aT3 Qty",ref0101 as "Jan goto previous",ref0102 as "Jan come from future",';
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future"';
        end else if spinedit3.Value=2 then begin
          sqlstr:=sqlstr+'q01 as "Jan Del Qty",tw01 as "Jan T3 Qty",tsah01 as "Jan aT3 Qty",ref0101 as "Jan goto previous",ref0102 as "Jan come from future",';
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future"';
        end;
      end else if spinedit2.Value=2 then begin
        if spinedit3.Value=12 then begin
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future",';
          sqlstr:=sqlstr+'q12 as "Dec Del Qty",tw12 as "Dec T3 Qty",tsah12 as "Dec aT3 Qty",ref1201 as "Dec goto previous",ref1202 as "Dec come from future"';
        end else if spinedit3.Value=11 then begin
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future"';
        end else if spinedit3.Value=10 then begin
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future"';
        end else if spinedit3.Value=9 then begin
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future"';
        end else if spinedit3.Value=8 then begin
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future"';
        end else if spinedit3.Value=7 then begin
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future"';
        end else if spinedit3.Value=6 then begin
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future"';
        end else if spinedit3.Value=5 then begin
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future"';
        end else if spinedit3.Value=4 then begin
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future"';
        end else if spinedit3.Value=3 then begin
          sqlstr:=sqlstr+'q02 as "Feb Del Qty",tw02 as "Feb T3 Qty",tsah02 as "Feb aT3 Qty",ref0201 as "Feb goto previous",ref0202 as "Feb come from future",';
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future"';
        end;
      end else if spinedit2.Value=3 then begin
        if spinedit3.Value=12 then begin
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future",';
          sqlstr:=sqlstr+'q12 as "Dec Del Qty",tw12 as "Dec T3 Qty",tsah12 as "Dec aT3 Qty",ref1201 as "Dec goto previous",ref1202 as "Dec come from future"';
        end else if spinedit3.Value=11 then begin
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future"';
        end else if spinedit3.Value=10 then begin
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future"';
        end else if spinedit3.Value=9 then begin
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future"';
        end else if spinedit3.Value=8 then begin
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future"';
        end else if spinedit3.Value=7 then begin
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future"';
        end else if spinedit3.Value=6 then begin
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future"';
        end else if spinedit3.Value=5 then begin
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future"';
        end else if spinedit3.Value=4 then begin
          sqlstr:=sqlstr+'q03 as "Mar Del Qty",tw03 as "Mar T3 Qty",tsah03 as "Mar aT3 Qty",ref0301 as "Mar goto previous",ref0302 as "Mar come from future",';
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future"';
        end;
      end else if spinedit2.Value=4 then begin
        if spinedit3.Value=12 then begin
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future",';
          sqlstr:=sqlstr+'q12 as "Dec Del Qty",tw12 as "Dec T3 Qty",tsah12 as "Dec aT3 Qty",ref1201 as "Dec goto previous",ref1202 as "Dec come from future"';
        end else if spinedit3.Value=11 then begin
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future"';
        end else if spinedit3.Value=10 then begin
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future"';
        end else if spinedit3.Value=9 then begin
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future"';
        end else if spinedit3.Value=8 then begin
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future"';
        end else if spinedit3.Value=7 then begin
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future"';
        end else if spinedit3.Value=6 then begin
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future"';
        end else if spinedit3.Value=5 then begin
          sqlstr:=sqlstr+'q04 as "Apr Del Qty",tw04 as "Apr T3 Qty",tsah04 as "Apr aT3 Qty",ref0401 as "Apr goto previous",ref0402 as "Apr come from future",';
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future"';
        end;
      end else if spinedit2.Value=5 then begin
        if spinedit3.Value=12 then begin
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future",';
          sqlstr:=sqlstr+'q12 as "Dec Del Qty",tw12 as "Dec T3 Qty",tsah12 as "Dec aT3 Qty",ref1201 as "Dec goto previous",ref1202 as "Dec come from future"';
        end else if spinedit3.Value=11 then begin
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future"';
        end else if spinedit3.Value=10 then begin
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future"';
        end else if spinedit3.Value=9 then begin
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future"';
        end else if spinedit3.Value=8 then begin
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future"';
        end else if spinedit3.Value=7 then begin
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future"';
        end else if spinedit3.Value=6 then begin
          sqlstr:=sqlstr+'q05 as "May Del Qty",tw05 as "May T3 Qty",tsah05 as "May aT3 Qty",ref0501 as "May goto previous",ref0502 as "May come from future",';
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future"';
        end;
      end else if spinedit2.Value=6 then begin
        if spinedit3.Value=12 then begin
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future",';
          sqlstr:=sqlstr+'q12 as "Dec Del Qty",tw12 as "Dec T3 Qty",tsah12 as "Dec aT3 Qty",ref1201 as "Dec goto previous",ref1202 as "Dec come from future"';
        end else if spinedit3.Value=11 then begin
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future"';
        end else if spinedit3.Value=10 then begin
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future"';
        end else if spinedit3.Value=9 then begin
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future"';
        end else if spinedit3.Value=8 then begin
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future"';
        end else if spinedit3.Value=7 then begin
          sqlstr:=sqlstr+'q06 as "Jun Del Qty",tw06 as "Jun T3 Qty",tsah06 as "Jun aT3 Qty",ref0601 as "Jun goto previous",ref0602 as "Jun come from future",';
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future"';
        end;
      end else if spinedit2.Value=7 then begin
        if spinedit3.Value=12 then begin
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future",';
          sqlstr:=sqlstr+'q12 as "Dec Del Qty",tw12 as "Dec T3 Qty",tsah12 as "Dec aT3 Qty",ref1201 as "Dec goto previous",ref1202 as "Dec come from future"';
        end else if spinedit3.Value=11 then begin
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future"';
        end else if spinedit3.Value=10 then begin
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future"';
        end else if spinedit3.Value=9 then begin
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future"';
        end else if spinedit3.Value=8 then begin
          sqlstr:=sqlstr+'q07 as "Jul Del Qty",tw07 as "Jul T3 Qty",tsah07 as "Jul aT3 Qty",ref0701 as "Jul goto previous",ref0702 as "Jul come from future",';
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future"';
        end;
      end else if spinedit2.Value=8 then begin
        if spinedit3.Value=12 then begin
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future",';
          sqlstr:=sqlstr+'q12 as "Dec Del Qty",tw12 as "Dec T3 Qty",tsah12 as "Dec aT3 Qty",ref1201 as "Dec goto previous",ref1202 as "Dec come from future"';
        end else if spinedit3.Value=11 then begin
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future"';
        end else if spinedit3.Value=10 then begin
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future"';
        end else if spinedit3.Value=9 then begin
          sqlstr:=sqlstr+'q08 as "Aug Del Qty",tw08 as "Aug T3 Qty",tsah08 as "Aug aT3 Qty",ref0801 as "Aug goto previous",ref0802 as "Aug come from future",';
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future"';
        end;
      end else if spinedit2.Value=9 then begin
        if spinedit3.Value=12 then begin
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future",';
          sqlstr:=sqlstr+'q12 as "Dec Del Qty",tw12 as "Dec T3 Qty",tsah12 as "Dec aT3 Qty",ref1201 as "Dec goto previous",ref1202 as "Dec come from future"';
        end else if spinedit3.Value=11 then begin
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future"';
        end else if spinedit3.Value=10 then begin
          sqlstr:=sqlstr+'q09 as "Sep Del Qty",tw09 as "Sep T3 Qty",tsah09 as "Sep aT3 Qty",ref0901 as "Sep goto previous",ref0902 as "Sep come from future",';
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future"';
        end;
      end else if spinedit2.Value=10 then begin
        if spinedit3.Value=12 then begin
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future",';
          sqlstr:=sqlstr+'q12 as "Dec Del Qty",tw12 as "Dec T3 Qty",tsah12 as "Dec aT3 Qty",ref1201 as "Dec goto previous",ref1202 as "Dec come from future"';
        end else if spinedit3.Value=11 then begin
          sqlstr:=sqlstr+'q10 as "Oct Del Qty",tw10 as "Oct T3 Qty",tsah10 as "Oct aT3 Qty",ref1001 as "Oct goto previous",ref1002 as "Oct come from future",';
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future"';
        end;
      end else if spinedit2.Value=11 then begin
        if spinedit3.Value=12 then begin
          sqlstr:=sqlstr+'q11 as "Nov Del Qty",tw11 as "Nov T3 Qty",tsah11 as "Nov aT3 Qty",ref1101 as "Nov goto previous",ref1102 as "Nov come from future",';
          sqlstr:=sqlstr+'q12 as "Dec Del Qty",tw12 as "Dec T3 Qty",tsah12 as "Dec aT3 Qty",ref1201 as "Dec goto previous",ref1202 as "Dec come from future"';
        end;
      end;
      if treeview1.Selected.Level=2 then begin
        with query6 do begin
          close;
          params.clear;
          commandtext:='select '+sqlstr+' from tbl_cap_oa_style_new_sum where tplant='''+fty+''' and cust='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value)+' order by grp,cust,flag6,cstyle';
          open;
        end;
      end else if treeview1.Selected.Level=1 then begin
        with query6 do begin
          close;
          params.clear;
          commandtext:='select '+sqlstr+' from tbl_cap_oa_style_new_sum where tplant='''+fty+''' and grp='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.value)+' order by grp,cust,flag6,cstyle';
          open;
        end;
      end else if treeview1.Selected.Level=0 then begin
        with query6 do begin
          close;
          params.clear;
          commandtext:='select '+sqlstr+' from tbl_cap_oa_style_new_sum where tplant='''+fty+''' and yr='+inttostr(spinedit1.value)+' order by grp,cust,flag6,cstyle';
          open;
        end;
      end;
    end;
    if not query6.FieldByName('cust').isnull then begin
      //showmessage('2');
      if savedialog1.Execute then begin
        xls1.FileName:=savedialog1.FileName;
        xls1.Execute;
      end;
    end;
  //end;

end;

procedure Tfrmnewcap_style.DBGridEh2Columns12EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //month1
  if pos('1)',query1.fieldbyname('cstyle').value)>0 then
  shownostyledetailform(1)
  else if POS('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(1,1,1);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns17EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //month2
  if pos('1)',query1.fieldbyname('cstyle').value)>0 then
  shownostyledetailform(2)
  else if POS('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(2,1,1);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns22EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //month3
  if pos('1)',query1.fieldbyname('cstyle').value)>0 then
  shownostyledetailform(3)
  else if POS('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(3,1,1);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns27EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //month4
  if pos('1)',query1.fieldbyname('cstyle').value)>0 then
  shownostyledetailform(4)
  else if POS('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(4,1,1);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns32EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //month5
  if pos('1)',query1.fieldbyname('cstyle').value)>0 then
  shownostyledetailform(5)
  else if POS('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(5,1,1);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns37EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //month6
  if pos('1)',query1.fieldbyname('cstyle').value)>0 then
  shownostyledetailform(6)
  else if POS('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(6,1,1);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns42EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //month7
  if pos('1)',query1.fieldbyname('cstyle').value)>0 then
  shownostyledetailform(7)
  else if POS('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(7,1,1);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns47EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //month8
  if pos('1)',query1.fieldbyname('cstyle').value)>0 then
  shownostyledetailform(8)
  else if POS('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(8,1,1);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns52EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //month9
  if pos('1)',query1.fieldbyname('cstyle').value)>0 then
  shownostyledetailform(9)
  else if POS('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(9,1,1);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns57EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //month10
  if pos('1)',query1.fieldbyname('cstyle').value)>0 then
  shownostyledetailform(10)
  else if POS('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(10,1,1);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns62EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //month11
  if pos('1)',query1.fieldbyname('cstyle').value)>0 then
  shownostyledetailform(11)
  else if POS('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(11,1,1);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns67EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  //month12
  if pos('1)',query1.fieldbyname('cstyle').value)>0 then
  shownostyledetailform(12)
  else if POS('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(12,1,1);
end;

procedure Tfrmnewcap_style.Shownostyledetailform(const m1: integer);
var
  tplant:string;
begin
  screen.cursor:=crSQLWait;
  try
    if combobox1.text='CHINA' then tplant:='SL' else if combobox1.text='BD' then tplant:='CL' else tplant:=combobox1.text;
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='execute procedure sp_cap_gen_nostyle_wk(:x1,:x2,:x3)';
      params[0].asstring:=tplant;
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=m1;
      execute;
    end;
    }
    if frmnewcap_nostyle_wk=nil then frmnewcap_nostyle_wk:=tfrmnewcap_nostyle_wk.Create(nil);
    frmnewcap_nostyle_wk.ComboBox1.text:=tplant;
    frmnewcap_nostyle_wk.SpinEdit1.value:=spinedit1.value;
    frmnewcap_nostyle_wk.Label9.Caption:='PROGRESS';
    with frmnewcap_nostyle_wk.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_oa_proj where tplant='''+tplant+''' and yr='+inttostr(spinedit1.value)+' and m1='+inttostr(m1);
      open;
    end;
    frmnewcap_nostyle_wk.show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_style.Showleveloffdetailform(const m1: integer);
var
  tplant:string;
begin
  screen.cursor:=crSQLWait;
  try
    if combobox1.text='CHINA' then tplant:='SL' else if combobox1.text='BD' then tplant:='CL' else tplant:=combobox1.text;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      commandtext:='execute procedure sp_cap_gen_leveloff_wk(:x1,:x2,:x3)';
      params[0].asstring:=tplant;
      params[1].asinteger:=spinedit1.value;
      params[2].asinteger:=m1;
      execute;
    end;
    if frmnewcap_leveloff=nil then frmnewcap_leveloff:=tfrmnewcap_leveloff.Create(nil);
    frmnewcap_leveloff.ComboBox1.text:=tplant;
    frmnewcap_leveloff.SpinEdit1.value:=spinedit1.value;
    frmnewcap_leveloff.lblmn01.caption:=inttostr(m1);
    with frmnewcap_leveloff.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_cap_oa_proj_leveloff where tplant='''+tplant+''' and yr='+inttostr(spinedit1.value)+' and m1='+inttostr(m1);
      if frmnewcap_style.TreeView1.Selected<>nil then begin
        if frmnewcap_style.TreeView1.selected.Level=2 then commandtext:=commandtext+' and cust='''+frmnewcap_style.TreeView1.selected.text+''''
        else if frmnewcap_style.TreeView1.Selected.Level=1 then commandtext:=commandtext+' and grp='''+frmnewcap_style.TreeView1.Selected.Text+'''';
      end;
      open;
    end;
    frmnewcap_leveloff.show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_style.BitBtn10Click(Sender: TObject);
begin
  // refresh
  //SpinEdit2Change(self);
  //bitbtn15click(self);
  show_data;
end;

procedure Tfrmnewcap_style.BitBtn11Click(Sender: TObject);
begin
  //if (query1.state=dsedit) or (query1.state=dsinsert) then query1.post;
  //if not query1.fieldbyname('seq').isnull then begin
  //  if treeview1.Selected.Level=0 then cust001.Caption:='All'
  //  else cust001.Caption:=treeview1.Selected.Text;
  //  ppReport1.Print;
  //end;
end;

procedure Tfrmnewcap_style.BitBtn12Click(Sender: TObject);
begin
  //if frmnewcap_notepad=nil then frmnewcap_notepad:=tfrmnewcap_notepad.create(nil);
  //frmnewcap_notepad.show;
  if frmcarte_requestaction=nil then frmcarte_requestaction:=tfrmcarte_requestaction.create(nil);
  frmcarte_requestaction.show;
end;

procedure Tfrmnewcap_style.ComboBox3Enter(Sender: TObject);
begin
  combobox3.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp as cust from cust_exfty where act=1 and pgrp<>''PVH''';
    if (combobox2.text>'') and (combobox2.text<>'ALL') then commandtext:=commandtext+' and grp='''+combobox2.text+'''';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('cust').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmnewcap_style.cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (Copy(trim(AViewInfo.RecordViewInfo.GridRecord.Values[1]),1,2)='5)') then
  ACanvas.Brush.Color:=$00D1E6FE;
end;

procedure Tfrmnewcap_style.BitBtn13Click(Sender: TObject);
var
  slock:string;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select slock from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if pos(query1.fieldbyname('grp').value,fieldbyname('slock').value)>0 then slock:='1' else slock:='';
  end;
  if slock='1' then begin
    if application.MessageBox('Lock this month?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      if dbgrideh1.Visible=true then begin
        if dbgrideh1.SelectedIndex=12 then updlock(1)//frmnewcap_style_adj.Label4.caption:='1'
        else if dbgrideh1.selectedindex=17 then updlock(2)//frmnewcap_style_adj.Label4.Caption:='2'
        else if dbgrideh1.selectedindex=22 then updlock(3)//frmnewcap_style_adj.Label4.Caption:='3'
        else if dbgrideh1.selectedindex=27 then updlock(4)//frmnewcap_style_adj.Label4.Caption:='4'
        else if dbgrideh1.selectedindex=32 then updlock(5)//frmnewcap_style_adj.Label4.Caption:='5'
        else if dbgrideh1.selectedindex=37 then updlock(6)//frmnewcap_style_adj.Label4.Caption:='6'
        else if dbgrideh1.selectedindex=42 then updlock(7)//frmnewcap_style_adj.Label4.Caption:='7'
        else if dbgrideh1.selectedindex=47 then updlock(8)//frmnewcap_style_adj.Label4.Caption:='8'
        else if dbgrideh1.selectedindex=52 then updlock(9)//frmnewcap_style_adj.Label4.Caption:='9'
        else if dbgrideh1.selectedindex=57 then updlock(10)//frmnewcap_style_adj.Label4.Caption:='10'
        else if dbgrideh1.selectedindex=62 then updlock(11)//frmnewcap_style_adj.Label4.Caption:='11'
        else if dbgrideh1.selectedindex=67 then updlock(12);//frmnewcap_style_adj.Label4.Caption:='12';
      end;
    end;
  end else showmessage('You have not right!');
end;

procedure Tfrmnewcap_style.updlock(const m1: integer);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    if m1=1 then commandtext:='select lck01 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=2 then commandtext:='select lck02 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=3 then commandtext:='select lck03 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=4 then commandtext:='select lck04 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=5 then commandtext:='select lck05 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=6 then commandtext:='select lck06 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=7 then commandtext:='select lck07 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=8 then commandtext:='select lck08 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=9 then commandtext:='select lck09 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=10 then commandtext:='select lck10 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=11 then commandtext:='select lck11 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3'
    else if m1=12 then commandtext:='select lck12 as lck from tbl_cap_oa_lock where tplant=:x1 and yr=:x2 and cust=:x3';
    params[0].asstring:=query1.fieldbyname('tplant').value;
    params[1].asinteger:=query1.fieldbyname('yr').value;
    params[2].asstring:=query1.fieldbyname('cust').value;
    open;
    if fieldbyname('lck').value=true then showmessage('This month already is locked!')
    else begin
      {
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftinteger,'x3',ptinput);
        if m1=1 then commandtext:='update tbl_cap_oa_lock set lck01=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=2 then commandtext:='update tbl_cap_oa_lock set lck02=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=3 then commandtext:='update tbl_cap_oa_lock set lck03=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=4 then commandtext:='update tbl_cap_oa_lock set lck04=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=5 then commandtext:='update tbl_cap_oa_lock set lck05=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=6 then commandtext:='update tbl_cap_oa_lock set lck06=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=7 then commandtext:='update tbl_cap_oa_lock set lck07=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=8 then commandtext:='update tbl_cap_oa_lock set lck08=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=9 then commandtext:='update tbl_cap_oa_lock set lck09=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=10 then commandtext:='update tbl_cap_oa_lock set lck10=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=11 then commandtext:='update tbl_cap_oa_lock set lck11=1 where tplant=:x1 and yr=:x2 and cust=:x3'
        else if m1=12 then commandtext:='update tbl_cap_oa_lock set lck12=1 where tplant=:x1 and yr=:x2 and cust=:x3';
        params[0].asstring:=query1.fieldbyname('tplant').value;
        params[1].asinteger:=query1.fieldbyname('yr').value;
        params[2].asstring:=query1.fieldbyname('cust').value;
        execute;
      end;
      }
        if m1=1 then strupd:='update tbl_cap_oa_lock set lck01=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=2 then strupd:='update tbl_cap_oa_lock set lck02=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=3 then strupd:='update tbl_cap_oa_lock set lck03=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=4 then strupd:='update tbl_cap_oa_lock set lck04=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=5 then strupd:='update tbl_cap_oa_lock set lck05=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=6 then strupd:='update tbl_cap_oa_lock set lck06=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=7 then strupd:='update tbl_cap_oa_lock set lck07=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=8 then strupd:='update tbl_cap_oa_lock set lck08=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=9 then strupd:='update tbl_cap_oa_lock set lck09=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=10 then strupd:='update tbl_cap_oa_lock set lck10=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=11 then strupd:='update tbl_cap_oa_lock set lck11=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+''''
        else if m1=12 then strupd:='update tbl_cap_oa_lock set lck12=1 where tplant='''+query1.fieldbyname('tplant').value+''' and yr='+query1.fieldbyname('yr').asstring+' and cust='''+query1.fieldbyname('cust').value+'''';
        if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');
        
      showmessage('Locked data for this month!');
    end;
  end;
end;

procedure Tfrmnewcap_style.SpinEdit1Click(Sender: TObject);
begin
  show_data;
end;

procedure Tfrmnewcap_style.show_data1;
var
  fty:string;
begin
  screen.cursor:=crSQLWait;
  try
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='BD' then fty:='CL' else fty:=combobox1.text;
  if treeview1.Selected<>nil then begin
    //with query2 do begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_cap_updoastyleos_period(:x1,:x2)';
      params[0].asstring:=fty;
      params[1].asinteger:=spinedit1.value;
      execute;
    end;
    if xh1.ItemIndex=1 then begin
      dbgrideh1.Visible:=true;
      dbgrideh2.Visible:=false;
      if treeview1.Selected.Level=2 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new where tplant='''+fty+''' and cust='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value);
          open;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select count(distinct cust) as x1,count(distinct cstyle) as x2,count(distinct flag6) as x3 from tbl_cap_oa_style_new where cstyle<>'''+'Haven"t Style #'+''' and tplant='''+fty+''' and cust='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value);
          open;
          if not fieldbyname('x1').isnull then dbgrideh1.Columns[1].Footer.value:=fieldbyname('x1').value;
          if not fieldbyname('x2').isnull then dbgrideh1.Columns[3].Footer.value:=fieldbyname('x2').value;
          if not fieldbyname('x3').isnull then dbgrideh1.Columns[4].Footer.value:=fieldbyname('x3').value;
        end;
      end else if treeview1.Selected.Level=1 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new where tplant='''+fty+''' and grp='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.value);
          open;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select count(distinct cust) as x1,count(distinct cstyle) as x2,count(distinct flag6) as x3 from tbl_cap_oa_style_new where cstyle<>'''+'Haven"t Style #'+''' and tplant='''+fty+''' and grp='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value);
          open;
          if not fieldbyname('x1').isnull then dbgrideh1.Columns[1].Footer.value:=fieldbyname('x1').value;
          if not fieldbyname('x2').isnull then dbgrideh1.Columns[3].Footer.value:=fieldbyname('x2').value;
          if not fieldbyname('x3').isnull then dbgrideh1.Columns[4].Footer.value:=fieldbyname('x3').value;
        end;
      end else if treeview1.Selected.Level=0 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new where tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
          open;
        end;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select count(distinct cust) as x1,count(distinct cstyle) as x2,count(distinct flag6) as x3 from tbl_cap_oa_style_new where cstyle<>'''+'Haven"t Style #'+''' and tplant='''+fty+''' and yr='+inttostr(spinedit1.Value);
          open;
          if not fieldbyname('x1').isnull then dbgrideh1.Columns[1].Footer.value:=fieldbyname('x1').value;
          if not fieldbyname('x2').isnull then dbgrideh1.Columns[3].Footer.value:=fieldbyname('x2').value;
          if not fieldbyname('x3').isnull then dbgrideh1.Columns[4].Footer.value:=fieldbyname('x3').value;
        end;
      end;
    end else begin
      dbgrideh1.Visible:=false;
      dbgrideh2.Visible:=true;
      //with query2 do begin
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_cap_updstyle_sum_period(:x1,:x2)';
        params[0].asstring:=fty;
        params[1].asinteger:=spinedit1.Value;
        execute;
      end;
      if treeview1.Selected.Level=2 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new_sum where tplant='''+fty+''' and cust='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.Value);
          open;
        end;
      end else if treeview1.Selected.Level=1 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new_sum where tplant='''+fty+''' and grp='''+treeview1.Selected.Text+''' and yr='+inttostr(spinedit1.value);
          open;
        end;
      end else if treeview1.Selected.Level=0 then begin
        with query1 do begin
          close;
          params.clear;
          commandtext:='select * from tbl_cap_oa_style_new_sum where tplant='''+fty+''' and yr='+inttostr(spinedit1.value);
          open;
        end;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_style.ComboBox2Change(Sender: TObject);
var
  i:integer;
begin
  for i:=0 to treeview1.Items.Count-1 do begin
    if treeview1.Items[i].Text=combobox2.text then begin
      treeview1.selected:=treeview1.Items[i];
      //treeview1.Items[i].Focused:=true;
    end;
  end;
end;

procedure Tfrmnewcap_style.ComboBox3Change(Sender: TObject);
var
  i:integer;
begin
  if combobox3.text>'' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select distinct grp from cust_exfty where act=1 and pgrp='''+combobox3.text+'''';
      open;
      if not fieldbyname('grp').isnull then combobox2.text:=fieldbyname('grp').value;
    end;
    for i:=0 to treeview1.Items.Count-1 do begin
      if treeview1.Items[i].Text=combobox3.text then begin
        treeview1.selected:=treeview1.Items[i];
        //treeview1.Items[i].Focused:=true;
      end;
    end;
  end else combobox2change(self);
end;

procedure Tfrmnewcap_style.BitBtn15Click(Sender: TObject);
begin
  show_data;
end;

procedure Tfrmnewcap_style.BitBtn17Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmnewcap_style.BitBtn14Click(Sender: TObject);
begin
  if xh1.ItemIndex=0 then begin
    xh1.ItemIndex:=1;
    bitbtn14.Caption:='Summary';
  end else if xh1.ItemIndex=1 then begin
    xh1.ItemIndex:=0;
    bitbtn14.Caption:='Styles Qty b/down';
  end;
  bitbtn15click(self);
end;

procedure Tfrmnewcap_style.Showrwodetailform(const m1, opt1,
  opt2: integer);
var
  dt1,dt2,dt3,dt4:tdate;
  fty:string;
begin
  screen.cursor:=crSQLWait;
  try
  if combobox1.text='CHINA' then fty:='SL' else if combobox1.text='BD' then fty:='CL' else fty:=combobox1.text;
  dt1:=encodedate(spinedit1.value,m1,1);
  if m1=12 then dt2:=encodedate(spinedit1.value+1,1,1)
  else dt2:=encodedate(spinedit1.value,m1+1,1);
  if m1=1 then dt3:=encodedate(spinedit1.Value-1,12,1)
  else dt3:=encodedate(spinedit1.value,m1-1,1);
  if m1<11 then dt4:=encodedate(spinedit1.value,m1+2,1)
  else if m1=11 then dt4:=encodedate(spinedit1.value+1,1,1)
  else if m1=12 then dt4:=encodedate(spinedit1.Value+1,2,1);
  if frmnewcap_rwodetail=nil then frmnewcap_rwodetail:=tfrmnewcap_rwodetail.create(nil);
  with frmnewcap_rwodetail.Query1 do begin
    close;
    params.clear;
    if opt2=1 then begin
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
    end else if opt2=2 then begin
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
    end else if opt2=3 then begin
      params.createparam(ftdate,'x5',ptinput);
      params.createparam(ftdate,'x6',ptinput);
    end else if opt2=4 then begin
      params.createparam(ftdate,'x7',ptinput);
      params.createparam(ftdate,'x8',ptinput);
      params.createparam(ftdate,'x9',ptinput);
      params.createparam(ftdate,'x10',ptinput);
    end else if opt2=5 then begin
      params.createparam(ftdate,'x11',ptinput);
      params.createparam(ftdate,'x12',ptinput);
      params.createparam(ftdate,'x13',ptinput);
      params.createparam(ftdate,'x14',ptinput);
    end;
    commandtext:='select * from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+query1.fieldbyname('cust').value+''' and substr(flag6,1,1)='''+query1.fieldbyname('flag6').value+'''';
    if opt1=1 then begin
      if opt2=1 then commandtext:=commandtext+' and ddt>=:x1 and ddt<=:x2 order by ddt,j_no,j2_job,acol,rwo'
      else if opt2=2 then commandtext:=commandtext+' and bt3dt>=:x3 and bt3dt<=:x4 and t3dt=at3dt order by bt3dt,j_no,j2_job,acol,rwo'
      else if opt2=3 then commandtext:=commandtext+' and at3dt>=:x5 and at3dt<=:x6 and t3dt<>at3dt order by at3dt,j_no,j2_job,acol,rwo'
      else if opt2=4 then commandtext:=commandtext+' and ddt>=:x7 and ddt<=:x8 and (at3dt<:x9 or at3dt>:x10) order by ddt,j_no,j2_job,acol,rwo' //((t3dt>=:x9 and t3dt<=:x10) or (at3dt>=:x9 and at3dt<=:x10))'}
      else if opt2=5 then commandtext:=commandtext+' and at3dt>=:x11 and at3dt<=:x12 and (ddt<:x13 or ddt>:x14) order by ddt,j_no,j2_job,acol,rwo';//ddt>=:x11 and ddt<=:x12 and ((t3dt>=:x13 and t3dt<=:x14) or (at3dt>=:x13 and at3dt<=:x14))';
    end else if opt1=2 then begin
      commandtext:=commandtext+' and cstyle='''+query1.fieldbyname('cstyle').value+'''';
      if opt2=1 then commandtext:=commandtext+' and ddt>=:x1 and ddt<=:x2 order by ddt,j_no,j2_job,acol,rwo'
      else if opt2=2 then commandtext:=commandtext+' and bt3dt>=:x3 and bt3dt<=:x4 and t3dt=at3dt order by bt3dt,j_no,j2_job,acol,rwo'
      else if opt2=3 then commandtext:=commandtext+' and at3dt>=:x5 and at3dt<=:x6 and t3dt<>at3dt order by at3dt,j_no,j2_job,acol,rwo'
      else if opt2=4 then commandtext:=commandtext+' and ddt>=:x7 and ddt<=:x8 and (at3dt<:x9 or at3dt>:x10) order by ddt,j_no,j2_job,acol,rwo' //((t3dt>=:x9 and t3dt<=:x10) or (at3dt>=:x9 and at3dt<=:x10))'}
      else if opt2=5 then commandtext:=commandtext+' and at3dt>=:x11 and at3dt<=:x12 and (ddt<:x13 or ddt>:x14) order by ddt,j_no,j2_job,acol,rwo';//ddt>=:x11 and ddt<=:x12 and ((t3dt>=:x13 and t3dt<=:x14) or (at3dt>=:x13 and at3dt<=:x14))';
    end;
    if opt2=1 then begin
      params.ParambyName('x1').asdate:=dt1;
      params.ParamByName('x2').asdate:=dt2-1;
    end else if opt2=2 then begin
      params.ParambyName('x3').asdate:=dt1;
      params.ParamByName('x4').asdate:=dt2-1;
    end else if opt2=3 then begin
      params.ParambyName('x5').asdate:=dt1;
      params.ParamByName('x6').asdate:=dt2-1;
    end else if opt2=4 then begin
      params.ParambyName('x7').asdate:=dt1;
      params.ParamByName('x8').asdate:=dt2-1;
      params.ParambyName('x9').asdate:=dt1;//dt3;
      params.ParamByName('x10').asdate:=dt2-1;//dt1-1;
    end else if opt2=5 then begin
      params.ParambyName('x11').asdate:=dt1;//dt2;
      params.ParamByName('x12').asdate:=dt2-1;//dt4-1;
      params.ParambyName('x13').asdate:=dt1;
      params.ParamByName('x14').asdate:=dt2-1;
    end;
    open;
  end;
  if opt1=1 then begin
    frmnewcap_rwodetail.DBGridEh1.Columns[2].Visible:=true;
    if opt2=2 then begin
      frmnewcap_rwodetail.DBGridEh1.Columns[9].Visible:=false;
      frmnewcap_rwodetail.DBGridEh1.Columns[10].Visible:=false;
    end else begin
      frmnewcap_rwodetail.DBGridEh1.Columns[9].Visible:=true;
      frmnewcap_rwodetail.DBGridEh1.Columns[10].Visible:=true;
    end;
  end else if opt1=2 then begin
    frmnewcap_rwodetail.dbgrideh1.Columns[2].Visible:=false;
    if opt2=2 then begin
      frmnewcap_rwodetail.DBGridEh1.Columns[9].Visible:=false;
      frmnewcap_rwodetail.DBGridEh1.Columns[10].Visible:=false;
    end else begin
      frmnewcap_rwodetail.DBGridEh1.Columns[9].Visible:=true;
      frmnewcap_rwodetail.DBGridEh1.Columns[10].Visible:=true;
    end;
  end;
  frmnewcap_rwodetail.xh1.Checked:=true;
  if opt2=1 then begin
    frmnewcap_rwodetail.DBGridEh1.Columns[6].Title.Caption:='Del Qty';
    frmnewcap_rwodetail.Caption:='Detail Info of CWOs - Del Qty ';
    frmnewcap_rwodetail.xh1.Caption:='Delivery Date';
  end else if opt2=2 then begin
    frmnewcap_rwodetail.DBGridEh1.Columns[6].Title.Caption:='T3 Qty';
    frmnewcap_rwodetail.Caption:='Detail Info of CWOs - T3 Qty';
    frmnewcap_rwodetail.xh1.Caption:='T3 Date';
  end else if opt2=3 then begin
    frmnewcap_rwodetail.DBGridEh1.Columns[6].Title.Caption:='aT3 Qty';
    frmnewcap_rwodetail.Caption:='Detail Info of CWOs - aT3 Qty';
    frmnewcap_rwodetail.xh1.Caption:='aT3 Date';
  end else if opt2=4 then begin
    frmnewcap_rwodetail.DBGridEh1.Columns[6].Title.Caption:='Go to previous Qty';
    frmnewcap_rwodetail.Caption:='Detail Info of CWOs - T3/aT3 Qty go to previous months';
    frmnewcap_rwodetail.xh1.Caption:='Delivery Date';
  end else if opt2=5 then begin
    frmnewcap_rwodetail.DBGridEh1.Columns[6].Title.Caption:='Come fm future Qty';
    frmnewcap_rwodetail.Caption:='Detail Info of CWOs - T3/aT3 Qty come from future months';
    frmnewcap_rwodetail.xh1.Caption:='Delivery Date';
  end;
  frmnewcap_rwodetail.xh1Click(self);
  with frmnewcap_rwodetail.Query2 do begin
    close;
    params.clear;
    if opt2=1 then begin
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
    end else if opt2=2 then begin
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
    end else if opt2=3 then begin
      params.createparam(ftdate,'x5',ptinput);
      params.createparam(ftdate,'x6',ptinput);
    end else if opt2=4 then begin
      params.createparam(ftdate,'x7',ptinput);
      params.createparam(ftdate,'x8',ptinput);
      params.createparam(ftdate,'x9',ptinput);
      params.createparam(ftdate,'x10',ptinput);
    end else if opt2=5 then begin
      params.createparam(ftdate,'x11',ptinput);
      params.createparam(ftdate,'x12',ptinput);
      params.createparam(ftdate,'x13',ptinput);
      params.createparam(ftdate,'x14',ptinput);
    end;
    commandtext:='select count(distinct j_no) as x1,count(distinct cstyle) as x2,count(distinct j2_job) as x3,count(distinct acol) as x4 from tbl_cap_erprwo where tplant='''+fty+''' and substr(j_no,1,4)='''+query1.fieldbyname('cust').value+''' and substr(flag6,1,1)='''+query1.fieldbyname('flag6').value+'''';
    if opt1=1 then begin
      if opt2=1 then commandtext:=commandtext+' and ddt>=:x1 and ddt<=:x2 order by ddt,j_no,j2_job,acol,rwo'
      else if opt2=2 then commandtext:=commandtext+' and bt3dt>=:x3 and bt3dt<=:x4 and t3dt=at3dt order by bt3dt,j_no,j2_job,acol,rwo'
      else if opt2=3 then commandtext:=commandtext+' and at3dt>=:x5 and at3dt<=:x6 and t3dt<>at3dt order by at3dt,j_no,j2_job,acol,rwo'
      else if opt2=4 then commandtext:=commandtext+' and ddt>=:x7 and ddt<=:x8 and (at3dt<:x9 or at3dt>:x10)' //((t3dt>=:x9 and t3dt<=:x10) or (at3dt>=:x9 and at3dt<=:x10))'}
      else if opt2=5 then commandtext:=commandtext+' and at3dt>=:x11 and at3dt<=:x12 and (ddt<:x13 or ddt>:x14)';//ddt>=:x11 and ddt<=:x12 and ((t3dt>=:x13 and t3dt<=:x14) or (at3dt>=:x13 and at3dt<=:x14))';
    end else if opt1=2 then begin
      commandtext:=commandtext+' and cstyle='''+query1.fieldbyname('cstyle').value+'''';
      if opt2=1 then commandtext:=commandtext+' and ddt>=:x1 and ddt<=:x2 order'
      else if opt2=2 then commandtext:=commandtext+' and bt3dt>=:x3 and bt3dt<=:x4 and t3dt=at3dt'
      else if opt2=3 then commandtext:=commandtext+' and at3dt>=:x5 and at3dt<=:x6 and t3dt<>at3dt'
      else if opt2=4 then commandtext:=commandtext+' and ddt>=:x7 and ddt<=:x8 and (at3dt<:x9 or at3dt>:x10)' //((t3dt>=:x9 and t3dt<=:x10) or (at3dt>=:x9 and at3dt<=:x10))'}
      else if opt2=5 then commandtext:=commandtext+' and at3dt>=:x11 and at3dt<=:x12 and (ddt<:x13 or ddt>:x14)';//ddt>=:x11 and ddt<=:x12 and ((t3dt>=:x13 and t3dt<=:x14) or (at3dt>=:x13 and at3dt<=:x14))';
    end;
    if opt2=1 then begin
      params.ParambyName('x1').asdate:=dt1;
      params.ParamByName('x2').asdate:=dt2-1;
    end else if opt2=2 then begin
      params.ParambyName('x3').asdate:=dt1;
      params.ParamByName('x4').asdate:=dt2-1;
    end else if opt2=3 then begin
      params.ParambyName('x5').asdate:=dt1;
      params.ParamByName('x6').asdate:=dt2-1;
    end else if opt2=4 then begin
      params.ParambyName('x7').asdate:=dt1;
      params.ParamByName('x8').asdate:=dt2-1;
      params.ParambyName('x9').asdate:=dt1;//dt3;
      params.ParamByName('x10').asdate:=dt2-1;//dt1-1;
    end else if opt2=5 then begin
      params.ParambyName('x11').asdate:=dt1;//dt2;
      params.ParamByName('x12').asdate:=dt2-1;//dt4-1;
      params.ParambyName('x13').asdate:=dt1;
      params.ParamByName('x14').asdate:=dt2-1;
    end;
    open;
    if not fieldbyname('x1').isnull then begin
      frmnewcap_rwodetail.DBGridEh1.Columns[0].Footer.value:='Total: '+fieldbyname('x1').asstring;
      frmnewcap_rwodetail.DBGridEh1.Columns[2].Footer.value:=fieldbyname('x2').asstring;
      frmnewcap_rwodetail.DBGridEh1.Columns[3].Footer.value:=fieldbyname('x3').asstring;
      frmnewcap_rwodetail.DBGridEh1.Columns[5].Footer.value:=fieldbyname('x4').asstring;
    end else frmnewcap_rwodetail.DBGridEh1.Columns[0].Footer.value:='Total:';
  end;
  frmnewcap_rwodetail.Label1.Caption:=inttostr(m1);
  frmnewcap_rwodetail.Label3.Caption:=inttostr(spinedit1.value);
  frmnewcap_rwodetail.Label4.Caption:=query1.fieldbyname('cust').value;
  frmnewcap_rwodetail.Label5.Caption:=query1.fieldbyname('flag6').value;
  frmnewcap_rwodetail.Show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmnewcap_style.DBGridEh2Columns13EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(1,1,2);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns18EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(2,1,2);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns23EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(3,1,2);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns28EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(4,1,2);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns33EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(5,1,2);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns38EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(6,1,2);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns43EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(7,1,2);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns48EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(8,1,2);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns53EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(9,1,2);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns58EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(10,1,2);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns63EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(11,1,2);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns68EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(12,1,2);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns14EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(1,1,3);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns19EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(2,1,3);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns24EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(3,1,3);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns29EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(4,1,3);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns34EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(5,1,3);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns39EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(6,1,3);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns44EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(7,1,3);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns49EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(8,1,3);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns54EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(9,1,3);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns59EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(10,1,3);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns64EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(11,1,3);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns69EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(12,1,3);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns15EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(1,1,4);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns20EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(2,1,4);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns25EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(3,1,4);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns30EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(4,1,4);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns35EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(5,1,4);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns40EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(6,1,4);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns45EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(7,1,4);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns50EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(8,1,4);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns55EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(9,1,4);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns60EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(10,1,4);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns65EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(11,1,4);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns70EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(12,1,4);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns16EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(1,1,5);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns21EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(2,1,5);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns26EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(3,1,5);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns31EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(4,1,5);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns36EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(5,1,5);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns41EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(6,1,5);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns46EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(7,1,5);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns51EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(8,1,5);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns56EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(9,1,5);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns61EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(10,1,5);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns66EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(11,1,5);
end;

procedure Tfrmnewcap_style.DBGridEh2Columns71EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if pos('CWO',query1.fieldbyname('cstyle').value)>0 then
  showrwodetailform(12,1,5);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns13EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (pos('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(1,2,2);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns18EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(2,2,2);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns23EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(3,2,2);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns28EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(4,2,2);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns33EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(5,2,2);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns38EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(6,2,2);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns43EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(7,2,2);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns48EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(8,2,2);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns53EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(9,2,2);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns58EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(10,2,2);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns63EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(11,2,2);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns68EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(12,2,2);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns14EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(1,2,3);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns19EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(2,2,3);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns24EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(3,2,3);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns29EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(4,2,3);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns34EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(5,2,3);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns39EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(6,2,3);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns44EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(7,2,3);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns49EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(8,2,3);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns54EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(9,2,3);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns59EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(10,2,3);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns64EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(11,2,3);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns69EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(12,2,3);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns15EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(1,2,4);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns20EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(2,2,4);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns25EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(3,2,4);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns30EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(4,2,4);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns35EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(5,2,4);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns40EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(6,2,4);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns45EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(7,2,4);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns50EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(8,2,4);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns55EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(9,2,4);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns60EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(10,2,4);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns65EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(11,2,4);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns70EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(12,2,4);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns16EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(1,2,5);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns21EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(2,2,5);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns26EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(3,2,5);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns31EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(4,2,5);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns36EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(5,2,5);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns41EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(6,2,5);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns46EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(7,2,5);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns51EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(8,2,5);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns56EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(9,2,5);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns61EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(10,2,5);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns66EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(11,2,5);
end;

procedure Tfrmnewcap_style.DBGridEh1Columns71EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (POS('CWO',query1.fieldbyname('cstyle').value)=0) and (query1.fieldbyname('seq1').value=4) then
  showrwodetailform(12,2,5);
end;

end.
