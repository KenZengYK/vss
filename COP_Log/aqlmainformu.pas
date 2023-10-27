unit aqlmainformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, DBClient, MConnect, SConnect, GridsEh,
  DBGridEh, StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxRichEdit, cxMemo, Buttons, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, Mask,
  DBCtrlsEh, DBCtrls, Menus, ImgList, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppVar, ppCtrls, ppPrnabl, ppBands, ppCache,
  ppViewr, ppRegion, ppStrtch, ppMemo, ExtDlgs, jpeg,
  cxLookAndFeels, cxLookAndFeelPainters, myChkBox, ppParameter, WideStrings,
  DbxDatasnap, SqlExpr, DSConnect, MidasLib, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridExportLink, cxCheckBox, ADODB, DateUtils;
  procedure DataSetAfterPost(DataSet: TDataSet;key1: integer=0;key2: integer=-1;key3: integer=-1;key4: integer=-1;key5: integer=-1;key6: integer=-1);

type
  Tfrmaqlmain = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    SocketConnection1: TSocketConnection;
    qry_rpt1: TClientDataSet;
    DataSource1: TDataSource;
    qry_rpt2: TClientDataSet;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Label3: TLabel;
    DataSource2: TDataSource;
    qry_rpt3: TClientDataSet;
    DataSource3: TDataSource;
    qry_rpt4: TClientDataSet;
    DataSource4: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ClientDataSet: TClientDataSet;
    qry_rpt1SEQ: TIntegerField;
    qry_rpt1QTY1: TIntegerField;
    qry_rpt1QTY2: TIntegerField;
    qry_rpt1QTY: TStringField;
    qry_rpt1SQTY: TIntegerField;
    qry_rpt1AQTY: TIntegerField;
    qry_rpt1RQTY: TIntegerField;
    qry_rpt2SEQ: TIntegerField;
    qry_rpt2PTYP: TStringField;
    qry_rpt2PCD: TStringField;
    qry_rpt2PLO: TStringField;
    qry_rpt2EPLO: TStringField;
    qry_rpt3SEQ: TIntegerField;
    qry_rpt3DCD: TStringField;
    qry_rpt3DEF: TStringField;
    qry_rpt3EDEF: TStringField;
    qry_rpt4SEQ: TIntegerField;
    qry_rpt4CD: TStringField;
    qry_rpt5: TClientDataSet;
    DataSource5: TDataSource;
    qry_rpt5SEQ: TIntegerField;
    qry_rpt5CCD: TStringField;
    qry_rpt5COP: TStringField;
    qry_rpt5ECOP: TStringField;
    Panel4: TPanel;
    Panel5: TPanel;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    DBGridEh5: TDBGridEh;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    BitBtn6: TBitBtn;
    qry_s1: TClientDataSet;
    DataSource6: TDataSource;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    qry_s0: TClientDataSet;
    DataSource7: TDataSource;
    qry_s1SEQ: TIntegerField;
    qry_s1SEQ1: TIntegerField;
    qry_s1SIZ: TStringField;
    qry_s1Q1: TIntegerField;
    qry_s1Q2: TIntegerField;
    qry_s1Q3: TIntegerField;
    qry_s1Q4: TIntegerField;
    qry_s1Q5: TIntegerField;
    qry_s1Q6: TIntegerField;
    qry_s1Q7: TIntegerField;
    qry_s2: TClientDataSet;
    DataSource8: TDataSource;
    qry_s3: TClientDataSet;
    DataSource9: TDataSource;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Panel6: TPanel;
    Panel7: TPanel;
    Splitter4: TSplitter;
    Panel8: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    DBGridEh6: TDBGridEh;
    qry_s4: TClientDataSet;
    DataSource10: TDataSource;
    qry_s5: TClientDataSet;
    DataSource11: TDataSource;
    DBGridEh7: TDBGridEh;
    Label17: TLabel;
    DBEdit2: TDBEdit;
    TabSheet6: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CD: TcxGridDBColumn;
    cxGrid1DBTableView1DESC1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DBGridEh4: TDBGridEh;
    qry_s4SEQ: TIntegerField;
    qry_s4SEQ1: TIntegerField;
    qry_s4SIZ: TStringField;
    qry_s4ACOL: TStringField;
    qry_s4PLO: TStringField;
    qry_s4EPLO: TStringField;
    qry_s4DEF: TStringField;
    qry_s4EDEF: TStringField;
    qry_s4MAJOR: TIntegerField;
    qry_s4MINOR: TIntegerField;
    qry_s4PCD: TStringField;
    qry_s4DCD: TStringField;
    qry_s5SEQ: TIntegerField;
    qry_s5SEQ1: TIntegerField;
    qry_s5SIZ: TStringField;
    qry_s5ACOL: TStringField;
    qry_s5PLO: TStringField;
    qry_s5EPLO: TStringField;
    qry_s5DEF: TStringField;
    qry_s5EDEF: TStringField;
    qry_s5MAJOR: TIntegerField;
    qry_s5PCD: TStringField;
    qry_s5DCD: TStringField;
    qry_rpt3DTYP: TStringField;
    TabSheet7: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    TreeView1: TTreeView;
    qry_rpt3TDEF: TStringField;
    qry_rpt3DTYP1: TStringField;
    qry_rpt3DTYP2: TStringField;
    PopupMenu1: TPopupMenu;
    NewGrouping1: TMenuItem;
    NewSubgrouping1: TMenuItem;
    DeleteGrouping1: TMenuItem;
    AmendGrouping1: TMenuItem;
    Query3: TClientDataSet;
    ImageList1: TImageList;
    qry_s2SEQ: TIntegerField;
    qry_s2SEQ1: TIntegerField;
    qry_s2SIZ: TStringField;
    qry_s2Q1: TFloatField;
    qry_s2Q2: TFloatField;
    qry_s2Q3: TFloatField;
    qry_s2Q4: TFloatField;
    qry_s2Q5: TFloatField;
    qry_s2Q6: TFloatField;
    qry_s2Q7: TFloatField;
    qry_s3SEQ: TIntegerField;
    qry_s3SEQ1: TIntegerField;
    qry_s3SIZ: TStringField;
    qry_s3Q1: TFloatField;
    qry_s3Q2: TFloatField;
    qry_s3Q3: TFloatField;
    qry_s3Q4: TFloatField;
    qry_s3Q5: TFloatField;
    qry_s3Q6: TFloatField;
    qry_s3Q7: TFloatField;
    PopupMenu2: TPopupMenu;
    PopupMenu3: TPopupMenu;
    delete1: TMenuItem;
    DELETE2: TMenuItem;
    Label4: TLabel;
    DBEdit16: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    BitBtn7: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppShape2: TppShape;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel10: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBPipeline2: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel11: TppLabel;
    ppShape3: TppShape;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine11: TppLine;
    ppLabel19: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel20: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppDBMemo1: TppDBMemo;
    ppRegion1: TppRegion;
    ppLine10: TppLine;
    ppDBPipeline3: TppDBPipeline;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel12: TppLabel;
    ppShape4: TppShape;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel24: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel25: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppDetailBand3: TppDetailBand;
    ppShape5: TppShape;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppFooterBand3: TppFooterBand;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Panel9: TPanel;
    Label1: TLabel;
    TreeView2: TTreeView;
    Splitter2: TSplitter;
    Panel10: TPanel;
    Label20: TLabel;
    DBGridEh2: TDBGridEh;
    Label21: TLabel;
    DBComboBox1: TDBComboBox;
    qry_s1Q8: TIntegerField;
    qry_s1Q9: TIntegerField;
    qry_s1Q10: TIntegerField;
    qry_s1Q11: TIntegerField;
    qry_s1Q12: TIntegerField;
    qry_s2Q8: TFloatField;
    qry_s2Q9: TFloatField;
    qry_s2Q10: TFloatField;
    qry_s2Q11: TFloatField;
    qry_s2Q12: TFloatField;
    qry_s3Q8: TFloatField;
    qry_s3Q9: TFloatField;
    qry_s3Q10: TFloatField;
    qry_s3Q11: TFloatField;
    qry_s3Q12: TFloatField;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    Label22: TLabel;
    DBEdit34: TDBEdit;
    Label23: TLabel;
    DBEdit35: TDBEdit;
    Label24: TLabel;
    DBEdit36: TDBEdit;
    Label25: TLabel;
    DBEdit37: TDBEdit;
    BitBtn8: TBitBtn;
    DBCheckBox4: TDBCheckBox;
    Label26: TLabel;
    DBEdit38: TDBEdit;
    Label27: TLabel;
    DBEdit39: TDBEdit;
    qry_rpt2PTYP1: TStringField;
    qry_rpt2PTYP2: TStringField;
    OpenPictureDialog1: TOpenPictureDialog;
    DBCheckBox5: TDBCheckBox;
    ppLabel22: TppLabel;
    ppLine16: TppLine;
    ppLabel23: TppLabel;
    ppLabel26: TppLabel;
    ppLine20: TppLine;
    ppDBText11: TppDBText;
    Label28: TLabel;
    DBEdit40: TDBEdit;
    qry_s1QR: TIntegerField;
    qry_s2QR: TIntegerField;
    qry_s3QR: TIntegerField;
    Label29: TLabel;
    DBEdit41: TDBEdit;
    DBCheckBox6: TDBCheckBox;
    Label30: TLabel;
    DBEdit42: TDBEdit;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    TabSheet8: TTabSheet;
    DBGridEh3: TDBGridEh;
    qry_rpt1_box: TClientDataSet;
    DataSource12: TDataSource;
    qry_rpt1_boxSEQ: TIntegerField;
    qry_rpt1_boxFLAG6: TStringField;
    qry_rpt1_boxQTY1: TIntegerField;
    qry_rpt1_boxQTY2: TIntegerField;
    qry_rpt1_boxACC1: TIntegerField;
    qry_rpt1_boxACC2: TIntegerField;
    qry_rpt1_boxSQTY: TIntegerField;
    DBCheckBox9: TDBCheckBox;
    ppSummaryBand1: TppSummaryBand;
    ppLabel7: TppLabel;
    ppImage1: TppImage;
    ppImage2: TppImage;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    qry_rpt3YZ: TBooleanField;
    qry_rpt3ZY: TBooleanField;
    qry_rpt3CY: TBooleanField;
    ppLabel30: TppLabel;
    ppLine5: TppLine;
    ppLine9: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    myDBCheckBox3: TmyDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    Bevel1: TBevel;
    Label31: TLabel;
    DBEdit43: TDBEdit;
    Label18: TLabel;
    DBEdit44: TDBEdit;
    Label32: TLabel;
    DBEdit45: TDBEdit;
    Label33: TLabel;
    Memo1: TMemo;
    qry_rpt1A1QTY: TIntegerField;
    qry_rpt1MQTY: TIntegerField;
    qry_rpt1AQTY_10: TIntegerField;
    qry_rpt1AQTY_15: TIntegerField;
    qry_rpt1AQTY_65: TIntegerField;
    DBComboBox2: TDBComboBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    Bevel2: TBevel;
    qry_s1RQTY: TIntegerField;
    qry_s1HQTY: TIntegerField;
    qry_s2RQTY: TIntegerField;
    qry_s2HQTY: TIntegerField;
    qry_s3RQTY: TIntegerField;
    qry_s3HQTY: TIntegerField;
    PopupMenu4: TPopupMenu;
    AQLRejectQty1stAudit1: TMenuItem;
    FullAuditQtydefectmorethan51: TMenuItem;
    DBCheckBox14: TDBCheckBox;
    qry_rpt2US1: TBooleanField;
    qry_rpt2US2: TBooleanField;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    myDBCheckBox4: TmyDBCheckBox;
    myDBCheckBox5: TmyDBCheckBox;
    qry_rpt2US3: TBooleanField;
    title003: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLine30: TppLine;
    ppLine31: TppLine;
    myDBCheckBox6: TmyDBCheckBox;
    Query42: TClientDataSet;
    DataSource13: TDataSource;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ttl001: TppLabel;
    ttl002: TppLabel;
    ttl003: TppLabel;
    qry_rpt2POM: TBooleanField;
    qry_rpt2POD: TBooleanField;
    ds_Conn: TSQLConnection;
    dsp_Conn1: TDSProviderConnection;
    qry_s0SEQ: TIntegerField;
    qry_s0PONO: TStringField;
    qry_s0CSTYLE: TStringField;
    qry_s0DT: TDateField;
    qry_s0AUD: TStringField;
    qry_s0FTY: TStringField;
    qry_s0ACOL1: TStringField;
    qry_s0ACOL2: TStringField;
    qry_s0ACOL3: TStringField;
    qry_s0ACOL4: TStringField;
    qry_s0ACOL5: TStringField;
    qry_s0ACOL6: TStringField;
    qry_s0ACOL7: TStringField;
    qry_s0QTY1: TIntegerField;
    qry_s0COL1: TIntegerField;
    qry_s0CASE1: TIntegerField;
    qry_s0SIZE1: TIntegerField;
    qry_s0QTY: TIntegerField;
    qry_s0BRAND: TStringField;
    qry_s0REMARKS: TStringField;
    qry_s0SQTY1: TIntegerField;
    qry_s0RQTY1: TIntegerField;
    qry_s0REMARKS1: TStringField;
    qry_s0AUDIT1: TBooleanField;
    qry_s0AUDIT2: TBooleanField;
    qry_s0AUDIT3: TBooleanField;
    qry_s0MEMO1: TStringField;
    qry_s0ACL1: TStringField;
    qry_s0ACL2: TStringField;
    qry_s0ACL3: TStringField;
    qry_s0ACL4: TStringField;
    qry_s0ACL5: TStringField;
    qry_s0ACL6: TStringField;
    qry_s0ACL7: TStringField;
    qry_s0FLAG6: TStringField;
    qry_s0CUST: TStringField;
    qry_s0WK: TIntegerField;
    qry_s0RPT: TStringField;
    qry_s0ACOL8: TStringField;
    qry_s0ACOL9: TStringField;
    qry_s0ACOL10: TStringField;
    qry_s0ACOL11: TStringField;
    qry_s0ACOL12: TStringField;
    qry_s0ACL8: TStringField;
    qry_s0ACL9: TStringField;
    qry_s0ACL10: TStringField;
    qry_s0ACL11: TStringField;
    qry_s0ACL12: TStringField;
    qry_s0CASE2: TIntegerField;
    qry_s0CQTY: TIntegerField;
    qry_s0J2_JOB: TStringField;
    qry_s0RWO: TStringField;
    qry_s0PLINE: TStringField;
    qry_s0HUN_CHECK: TBooleanField;
    qry_s0RANGE: TStringField;
    qry_s0VER: TStringField;
    qry_s0FLAG60: TStringField;
    qry_s0ENDLINE: TBooleanField;
    qry_s0QR: TIntegerField;
    qry_s0QR1: TIntegerField;
    qry_s0SCQTY: TIntegerField;
    qry_s0J_NO: TStringField;
    qry_s0WS: TStringField;
    qry_s0DAILYAQL: TBooleanField;
    qry_s0AUDIT4: TBooleanField;
    qry_s0AUDIT5: TBooleanField;
    qry_s0AUDITR: TStringField;
    qry_s0DAILYAQL1: TBooleanField;
    qry_s0ACC: TBooleanField;
    qry_s0CUR: TBooleanField;
    qry_s0PST: TBooleanField;
    qry_s0DELLOT: TIntegerField;
    qry_s0MAJR: TIntegerField;
    qry_s0MINR: TIntegerField;
    qry_s0AQL_LEVEL: TStringField;
    qry_s0LOC: TStringField;
    qry_s0MACC: TBooleanField;
    qry_s0ZTP: TBooleanField;
    qry_rpt4DESC1: TStringField;
    ttl005: TppLabel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1PCD: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PLO: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1EPLO: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PTYP1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1US1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1US2: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1US3: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1POM: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1POD: TcxGridDBBandedColumn;
    ExportPOD1: TMenuItem;
    SaveDialog1: TSaveDialog;
    PopupMenu5: TPopupMenu;
    ExportPOD2: TMenuItem;
    cxGrid2DBBandedTableView1PTYP2: TcxGridDBBandedColumn;
    Label34: TLabel;
    qry_s0YR: TIntegerField;
    qry_s0MN: TIntegerField;
    qry_s0CWO: TStringField;
    qry_s0BUNDLES: TStringField;
    DBEdit46: TDBEdit;
    ADODataSet1: TADODataSet;
    cxGrid2DBBandedTableView1BPLO: TcxGridDBBandedColumn;
    ADODataSet2: TADODataSet;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLabel29: TppLabel;
    ppLabel45: TppLabel;
    ppDBMemo2: TppDBMemo;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure qry_rpt1AfterPost(DataSet: TDataSet);
    procedure qry_rpt2AfterPost(DataSet: TDataSet);
    procedure qry_rpt3AfterPost(DataSet: TDataSet);
    procedure qry_rpt4AfterPost(DataSet: TDataSet);
    procedure qry_rpt5AfterPost(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure qry_rpt1NewRecord(DataSet: TDataSet);
    procedure qry_rpt2NewRecord(DataSet: TDataSet);
    procedure qry_rpt3NewRecord(DataSet: TDataSet);
    procedure qry_rpt4NewRecord(DataSet: TDataSet);
    procedure qry_rpt5NewRecord(DataSet: TDataSet);
    procedure qry_s1NewRecord(DataSet: TDataSet);
    procedure qry_s0NewRecord(DataSet: TDataSet);
    procedure qry_s0AfterPost(DataSet: TDataSet);
    procedure qry_s1AfterPost(DataSet: TDataSet);
    procedure BitBtn6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qry_s0AfterOpen(DataSet: TDataSet);
    procedure DataSource7DataChange(Sender: TObject; Field: TField);
    procedure PageControl2Change(Sender: TObject);
    procedure qry_s4NewRecord(DataSet: TDataSet);
    procedure qry_s5NewRecord(DataSet: TDataSet);
    procedure qry_s4AfterPost(DataSet: TDataSet);
    procedure qry_s5AfterPost(DataSet: TDataSet);
    procedure qry_s4PCDChange(Sender: TField);
    procedure qry_s4DCDChange(Sender: TField);
    procedure qry_s5PCDChange(Sender: TField);
    procedure qry_s5DCDChange(Sender: TField);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure NewGrouping1Click(Sender: TObject);
    procedure NewSubgrouping1Click(Sender: TObject);
    procedure DeleteGrouping1Click(Sender: TObject);
    procedure AmendGrouping1Click(Sender: TObject);
    procedure qry_s2AfterPost(DataSet: TDataSet);
    procedure qry_s3AfterPost(DataSet: TDataSet);
    procedure Edit1DblClick(Sender: TObject);
    procedure qry_s0AfterClose(DataSet: TDataSet);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure delete1Click(Sender: TObject);
    procedure DELETE2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure TreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure DBGridEh6Columns2EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh6Columns5EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBGridEh2Columns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBCheckBox4Click(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure qry_rpt1_boxAfterPost(DataSet: TDataSet);
    procedure qry_rpt1_boxNewRecord(DataSet: TDataSet);
    procedure qry_s0DELLOTChange(Sender: TField);
    procedure SocketConnection1BeforeConnect(Sender: TObject);
    procedure qry_s4BeforePost(DataSet: TDataSet);
    procedure AQLRejectQty1stAudit1Click(Sender: TObject);
    procedure FullAuditQtydefectmorethan51Click(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ds_ConnBeforeConnect(Sender: TObject);
    procedure ExportPOD1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure print42(const v1:string);
  end;

var
  frmaqlmain: Tfrmaqlmain;
  siz:string;
  //r1,r2,r3,r4,r5:boolean;

implementation

uses aqlreportformu, aql1formu, aqlpoformu, groupingformu, xtdlformu,
  summaryformu, aqlreport0formu, enquiryformu, aql_rejqtyformu, aql_print3formu,
  servermethods1client, Carte_MainFormu, defectsummaryformu;

{$R *.dfm}

procedure Tfrmaqlmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmxtdl<>nil then frmxtdl:=nil;
  action:=cafree;
  frmaqlmain:=nil;
  //application.Terminate;
end;

procedure Tfrmaqlmain.FormShow(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex:=0;
  pagecontrol2.ActivePageIndex:=0;
end;

procedure Tfrmaqlmain.PageControl1Change(Sender: TObject);
var
  tn1,tn2,tn3:TTreeNode;
begin
  if pagecontrol1.ActivePageIndex=0 then begin
    //with qry_s0 do begin
    //end;
    pagecontrol2.ActivePageIndex:=0;
  end else if pagecontrol1.ActivePageIndex=1 then begin
    if frmxtdl.Query1.fieldbyname('r3').value=true then dbgrideh1.ReadOnly:=false
    else dbgrideh1.ReadOnly:=true;
    with qry_rpt1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_aql_rpt1';
      open;
    end;
  end else if pagecontrol1.ActivePageIndex=4 then begin
    treeview1.Items.clear;
    //Show TreeNodes
    with query1 do begin
      close;
      params.clear;
      commandtext:='select distinct dtyp from tbl_aql_rpt_d order by dtyp desc';
      open;
      first;
      while not eof do begin
        //Level 0:
        tn1:=Treeview1.Items.Add(nil,fieldbyname('dtyp').value);
        tn1.ImageIndex:=0;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select distinct dtyp1 from tbl_aql_rpt_d where dtyp='''+query1.fieldbyname('dtyp').value+''' and dtyp1>''''';
          open;
          first;
          while not eof do begin
            //Level 1:
            tn2:=treeview1.Items.addchild(tn1,fieldbyname('dtyp1').value);
            tn2.ImageIndex:=1;
            with query3 do begin
              close;
              params.clear;
              commandtext:='select distinct dtyp2 from tbl_aql_rpt_d where dtyp='''+query1.fieldbyname('dtyp').value+''' and dtyp1='''+query2.fieldbyname('dtyp1').value+''' and dtyp2>''''';
              open;
              while not eof do begin
                tn3:=treeview1.Items.AddChild(tn2,fieldbyname('dtyp2').value);
                tn3.ImageIndex:=2;
                application.ProcessMessages;
                next;
              end;
            end;
            application.ProcessMessages;
            next;
          end;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    treeview1.SetFocus;
    treeview1.FullExpand;
    treeview1.selected:=treeview1.Items.GetFirstNode;

  end else if pagecontrol1.ActivePageIndex=5 then begin
    with qry_rpt4 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_aql_rpt4';
      open;
    end;
  end else if pagecontrol1.ActivePageIndex=3 then begin
    treeview2.Items.clear;
    //Show TreeNodes
    with query1 do begin
      close;
      params.clear;
      commandtext:='select distinct dtyp from tbl_aql_rpt_d order by dtyp desc';
      open;
      first;
      while not eof do begin
        //Level 0:
        tn1:=Treeview2.Items.Add(nil,fieldbyname('dtyp').value);
        tn1.ImageIndex:=0;
        with query2 do begin
          close;
          params.clear;
          commandtext:='select distinct dtyp1 from tbl_aql_rpt_d where dtyp='''+query1.fieldbyname('dtyp').value+''' and dtyp1>''''';
          open;
          first;
          while not eof do begin
            //Level 1:
            tn2:=treeview2.Items.addchild(tn1,fieldbyname('dtyp1').value);
            tn2.ImageIndex:=1;
            with query3 do begin
              close;
              params.clear;
              commandtext:='select distinct dtyp2 from tbl_aql_rpt_d where dtyp='''+query1.fieldbyname('dtyp').value+''' and dtyp1='''+query2.fieldbyname('dtyp1').value+''' and dtyp2>''''';
              open;
              while not eof do begin
                tn3:=treeview2.Items.AddChild(tn2,fieldbyname('dtyp2').value);
                tn3.ImageIndex:=2;
                application.ProcessMessages;
                next;
              end;
            end;
            application.ProcessMessages;
            next;
          end;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    treeview2.SetFocus;
    treeview2.FullExpand;
    treeview2.selected:=treeview2.Items.GetFirstNode;
    {
    with qry_rpt2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_aql_rpt2';
      open;
    end;
    }
    with adodataset1 do begin
      close;
      commandtext:='select * from phdb..tbl_aql_rpt2';
      open;
    end;
    //
    dbgrideh2.Columns[3].PickList.clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_aql_pomp';
      open;
      first;
      while not eof do begin
        dbgrideh2.columns[3].picklist.add(fieldbyname('plist').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
end;

procedure Tfrmaqlmain.BitBtn1Click(Sender: TObject);
begin
  //
end;

procedure Tfrmaqlmain.BitBtn2Click(Sender: TObject);
var
  seq:integer;
  r2:boolean;
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select r2 from tbl_aql_user where usr='''+frmxtdl.ComboBox1.text+'''';
    open;
    r2:=fieldbyname('r2').value;
  end;
  if pagecontrol1.ActivePageIndex=0 then begin
    if qry_s0.Active then begin
      seq:=qry_s0.fieldbyname('seq').value;
      if r2 then begin
        if application.MessageBox('Delete this Report?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            commandtext:='execute procedure sp_aql_dels(:x1)';
            params[0].asinteger:=seq;
            execute;
          end;
          qry_s0.Close;
        end;
      end;
    end;
  end else if pagecontrol1.activepageindex=2 then begin
      if r2 then begin
        if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            commandtext:='delete from tbl_aql_rpt1_box where seq=:x1';
            params[0].asinteger:=qry_rpt1_box.fieldbyname('seq').value;
            execute;
          end;
          qry_rpt1_box.delete;
        end;
      end;
  end else if pagecontrol1.activepageindex=3 then begin
      if r2 then begin
        if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
          {
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            commandtext:='delete from tbl_aql_rpt2 where seq=:x1';
            params[0].asinteger:=qry_rpt2.fieldbyname('seq').value;
            execute;
          end;
          qry_rpt2.delete;
          }
          adodataset1.Delete;
        end;
      end;
  end else if pagecontrol1.ActivePageIndex=4 then begin
      if r2 then begin
        if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
          with query1 do begin
            close;
            params.clear;
            params.createparam(ftinteger,'x1',ptinput);
            commandtext:='delete from tbl_aql_rpt3 where seq=:x1';
            params[0].asinteger:=qry_rpt3.fieldbyname('seq').value;
            execute;
          end;
          qry_rpt3.delete;
        end;
      end;
  end;
end;

procedure Tfrmaqlmain.BitBtn3Click(Sender: TObject);
begin
  if qry_rpt1.state=dsedit then qry_rpt1.Post;
  //if (qry_rpt2.state=dsinsert) or (qry_rpt2.state=dsedit) then qry_rpt2.Post;
  if (adodataset1.state=dsinsert) or (adodataset1.state=dsedit) then adodataset1.Post;
  if (qry_rpt3.state=dsinsert) or (qry_rpt3.state=dsedit) then qry_rpt3.Post;
  if (qry_rpt4.state=dsinsert) or (qry_rpt4.state=dsedit) then qry_rpt4.Post;
  if (qry_rpt5.state=dsinsert) or (qry_rpt5.state=dsedit) then qry_rpt5.Post;
  if (qry_s0.state=dsinsert) or (qry_s0.state=dsedit) then qry_s0.Post;
  if (qry_s1.state=dsinsert) or (qry_s1.state=dsedit) then qry_s1.Post;
  if (qry_s2.state=dsinsert) or (qry_s2.state=dsedit) then qry_s2.Post;
  if (qry_s3.state=dsinsert) or (qry_s3.state=dsedit) then qry_s3.Post;
  //if qry_s1.state=dsedit then qry_s1.Post;
  //if qry_s2.state=dsedit then qry_s2.Post;
  //if qry_s3.state=dsedit then qry_s3.Post;
  if (qry_s4.state=dsinsert) or (qry_s4.state=dsedit) then qry_s4.Post;
  if (qry_s5.state=dsinsert) or (qry_s5.state=dsedit) then qry_s5.Post;
  if (qry_rpt1_box.state=dsinsert) or (qry_rpt1_box.state=dsedit) then qry_rpt1_box.Post;
  //{
  with query1 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_updaql_wkrpt';
    execute;
  end;
  //}
end;

procedure DataSetAfterPost(DataSet: TDataSet;key1: integer=0;key2: integer=-1;key3: integer=-1;key4: integer=-1;key5: integer=-1;key6: integer=-1);
var
  i,j,temppos: integer;
  str1,str2,strtemp,Table,strwhere: string;
  SavedParams: TParams;
begin
    SavedParams := TParams.Create;
    try
      strtemp:=(DataSet as TClientDataSet).Commandtext;
      strtemp:=copy(strtemp,pos('from',strtemp)+5,length(strtemp));
      temppos:= pos('where',strtemp);
      if temppos>0 then begin
        Table:=copy(strtemp,1,temppos-1);
      end else begin
        Table:=copy(strtemp,1,20);
      end;
      strwhere:='  where ';
      for i:=0 to DataSet.FieldCount-1 do begin
        if (i=key1) or (i=key2) or (i=key3) or (i=key4) or (i=key5) or (i=key6) then begin
          strwhere:=strwhere+DataSet.Fields[i].FieldName+'=:'+DataSet.Fields[i].FieldName+' AND ';
          case DataSet.Fields[i].DataType of
            ftSmallint,ftinteger,ftAutoInc: SavedParams.CreateParam(ftinteger,DataSet.Fields[i].FieldName,ptinput);
            ftstring,ftMemo:                SavedParams.CreateParam(ftstring,DataSet.Fields[i].FieldName,ptinput);
            ftfloat:                        SavedParams.CreateParam(ftfloat,DataSet.Fields[i].FieldName,ptinput);
            ftDate:                         SavedParams.CreateParam(ftDate,DataSet.Fields[i].FieldName,ptinput);
            ftTime:                         SavedParams.CreateParam(ftTime,DataSet.Fields[i].FieldName,ptinput);
            ftDateTime:                     SavedParams.CreateParam(ftDateTime,DataSet.Fields[i].FieldName,ptinput);
            ftBoolean:                      SavedParams.CreateParam(ftboolean,DataSet.Fields[i].FieldName,ptinput);
          else
            showmessage('note: Unknown FieldType!');
          end;
          SavedParams.ParamByName(DataSet.Fields[i].FieldName).value:=DataSet.Fields[i].Value;
        end;
      end;
      setlength(strwhere,length(strwhere)-5);
      Screen.Cursor:=crHourGlass;
      with frmaqlmain.ClientDataSet do begin
        close;
        params.clear;
        commandtext:='select * from '+Table+strwhere;
        params.Assign(SavedParams);
        SavedParams.AssignValues(Params);
        open;
        if Recordcount>0 then begin
          close;
          params.clear;
          str1:='update '+Table+' set ';
          j:=0;
          for i:=0 to DataSet.FieldCount-1 do begin
            if DataSet.Fields[i].FieldKind=fkLookup then continue;
            if (i=key1) or (i=key2) or (i=key3) or (i=key4) or (i=key5) or (i=key6) then
            else begin
              case DataSet.Fields[i].DataType of
                ftSmallint,ftinteger,ftAutoInc: params.CreateParam(ftinteger,DataSet.Fields[i].FieldName,ptinput);
                ftstring,ftMemo:                params.CreateParam(ftstring,DataSet.Fields[i].FieldName,ptinput);
                ftfloat:                        params.CreateParam(ftfloat,DataSet.Fields[i].FieldName,ptinput);
                ftDate:                         params.CreateParam(ftDate,DataSet.Fields[i].FieldName,ptinput);
                ftTime:                         params.CreateParam(ftTime,DataSet.Fields[i].FieldName,ptinput);
                ftDateTime:                     params.CreateParam(ftDateTime,DataSet.Fields[i].FieldName,ptinput);
                ftBoolean:                      params.CreateParam(ftBoolean,DataSet.Fields[i].FieldName,ptinput);
              else
                showmessage('note: Unknown FieldType!');
              end;
              if DataSet.Fields[i].IsNull then begin
                if DataSet.Fields[i].DataType=ftBoolean then params[j].value:=False;
              end else begin
                params[j].value:=DataSet.Fields[i].value;
              end;
              str1:=str1+DataSet.fields[i].fieldname+'=:';
              str1:=str1+DataSet.Fields[i].FieldName+',';
              j:=j+1;
            end;
          end;
          for i:=0 to SavedParams.Count-1 do begin
            params.CreateParam(SavedParams[i].DataType,SavedParams[i].Name,ptinput);
            params[j+i].value:=SavedParams[i].Value;
          end;
          str1:=copy(str1,1,length(str1)-1)+' '+strwhere;
          commandtext:=str1;
          execute;
        end else begin
          close;
          params.clear;
          str1:=' values(';
          str2:='insert into '+ Table+'(';
          for i:=0 to DataSet.FieldCount-1 do begin
            if DataSet.Fields[i].FieldKind=fkLookup then continue;
            case DataSet.Fields[i].DataType of
              ftSmallint,ftinteger,ftAutoInc:   params.createparam(ftinteger,DataSet.Fields[i].FieldName,ptinput);
              ftDate:                           params.createparam(ftDate,DataSet.Fields[i].FieldName,ptinput);
              ftTime:                           params.createparam(ftTime,DataSet.Fields[i].FieldName,ptinput);
              ftDateTime:                       params.createparam(ftDateTime,DataSet.Fields[i].FieldName,ptinput);
              ftstring,ftMemo:                  params.createparam(ftString,DataSet.Fields[i].FieldName,ptinput);
              ftfloat:                          params.createparam(ftFloat,DataSet.Fields[i].FieldName,ptinput);
              ftBoolean:                        params.createparam(ftBoolean,DataSet.Fields[i].FieldName,ptinput);
            else
              showmessage('note: Unknown FieldType!');
            end;
            str1:=str1+':'+DataSet.fields[i].fieldname+',';
            str2:=str2+DataSet.fields[i].fieldname+',';
            if DataSet.Fields[i].IsNull then begin
              if DataSet.Fields[i].DataType=ftBoolean then params.ParamByName(DataSet.Fields[i].FieldName).value:=False
              else if DataSet.Fields[i].DataType=ftString then params.ParamByName(DataSet.Fields[i].FieldName).Value:=' ';
            end else begin
              params.ParamByName(DataSet.Fields[i].FieldName).value:=DataSet.Fields[i].value;
            end;
          end;
          str1:=copy(str1,1,length(str1)-1);
          str2:=copy(str2,1,length(str2)-1);
          commandtext:=str2+')'+str1+')';
          execute;
        end;
      end;
    finally
      SavedParams.Free;
      Screen.Cursor:=crDefault;
    end;
end;

procedure Tfrmaqlmain.qry_rpt1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0);
end;

procedure Tfrmaqlmain.qry_rpt2AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0);
end;

procedure Tfrmaqlmain.qry_rpt3AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0);
end;

procedure Tfrmaqlmain.qry_rpt4AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0);
end;

procedure Tfrmaqlmain.qry_rpt5AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0);
end;

procedure Tfrmaqlmain.BitBtn4Click(Sender: TObject);
var
  r1:integer;
begin
  bitbtn3click(self);
  if pagecontrol1.ActivePageIndex=0 then begin
    if qry_s0.Active then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='execute procedure sp_updaql_wkrpt_single(:x1)';
        params[0].asinteger:=qry_s0.fieldbyname('seq').value;
        execute;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='select distinct seq from tbl_aql_s2 where seq=:x1';
        params[0].asinteger:=qry_s0.fieldbyname('seq').value;
        open;
        if not fieldbyname('seq').isnull then r1:=1 else r1:=0;
      end;
      if r1=0 then begin
        with query1 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'x1',ptinput);
          commandtext:='execute procedure sp_aql_upds(:x1)';
          params[0].asinteger:=qry_s0.fieldbyname('seq').value;
          execute;
        end;
      end;
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='execute procedure sp_aql_calc0_1(:x1)';
        params[0].asinteger:=qry_s0.fieldbyname('seq').value;
        execute;
      end;
      if qry_s0.FieldByName('acol8').value>'' then begin
        if frmaqlreport0=nil then frmaqlreport0:=tfrmaqlreport0.create(nil);
        frmaqlreport0.Show;
      end else begin
        if frmaqlreport=nil then frmaqlreport:=tfrmaqlreport.create(nil);
        frmaqlreport.CheckBox3.Checked:=qry_s0.fieldbyname('hun_check').value;
        frmaqlreport.CheckBox4.Checked:=qry_s0.fieldbyname('endline').value;
        frmaqlreport.CheckBox5.Checked:=qry_s0.fieldbyname('dailyaql').value;
        frmaqlreport.CheckBox6.Checked:=qry_s0.fieldbyname('dailyaql1').value;
        if qry_s0.FieldByName('endline').value=true then begin
          frmaqlreport.CheckBox1.Checked:=false;
          frmaqlreport.CheckBox2.Checked:=true;
        end else begin
          frmaqlreport.CheckBox2.Checked:=false;
          frmaqlreport.CheckBox1.Checked:=true;
        end;
        frmaqlreport.Show;
      end;
    end;
  end else if pagecontrol1.ActivePageIndex=3 then begin
    //if not qry_rpt2.FieldByName('seq').isnull then ppReport3.Print;
    if frmaql_print3=nil then frmaql_print3:=tfrmaql_print3.create(nil);
    frmaql_print3.show;
  end else if pagecontrol1.ActivePageIndex=4 then begin
    //if not qry_rpt3.FieldByName('seq').isnull then ppReport1.Print;
  end else if pagecontrol1.ActivePageIndex=5 then begin
    if not qry_rpt4.FieldByName('seq').isnull then ppReport2.Print;
  end
end;

procedure Tfrmaqlmain.qry_rpt1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query1 do begin
   close;
   params.clear;
   commandtext:='select max(seq) as q1 from tbl_aql_rpt1';
   open;
   if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  qry_rpt1.FieldByName('seq').Value:=seq;
end;

procedure Tfrmaqlmain.qry_rpt2NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query1 do begin
   close;
   params.clear;
   commandtext:='select max(seq) as q1 from tbl_aql_rpt2';
   open;
   if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  qry_rpt2.FieldByName('seq').Value:=seq;
  qry_rpt2.FieldByName('ptyp').value:='GARMENTS';
end;

procedure Tfrmaqlmain.qry_rpt3NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query1 do begin
   close;
   params.clear;
   commandtext:='select max(seq) as q1 from tbl_aql_rpt3';
   open;
   if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  qry_rpt3.FieldByName('seq').Value:=seq;
  if treeview1.Selected<>nil then begin
    if treeview1.Selected.Level=0 then begin
      qry_rpt3.FieldByName('dtyp').Value:=treeview1.Selected.Text;
      qry_rpt3.FieldByName('dtyp1').value:='';
      qry_rpt3.fieldbyname('dtyp2').value:='';
    end else if treeview1.Selected.Level=1 then begin
      qry_rpt3.FieldByName('dtyp').Value:=treeview1.Selected.Parent.Text;
      qry_rpt3.FieldByName('dtyp1').value:=treeview1.Selected.Text;
      qry_rpt3.fieldbyname('dtyp2').value:='';
    end else if treeview1.Selected.Level=2 then begin
      qry_rpt3.FieldByName('dtyp').Value:=treeview1.Selected.Parent.Parent.Text;
      qry_rpt3.FieldByName('dtyp1').value:=treeview1.Selected.Parent.Text;
      qry_rpt3.fieldbyname('dtyp2').value:=treeview1.Selected.Text;
    end;
  end else begin
    qry_rpt3.FieldByName('dtyp').value:='GARMENTS';
    qry_rpt3.FieldByName('dtyp1').value:='';
    qry_rpt3.FieldByName('dtyp2').value:='';
  end;
end;

procedure Tfrmaqlmain.qry_rpt4NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query1 do begin
   close;
   params.clear;
   commandtext:='select max(seq) as q1 from tbl_aql_rpt4';
   open;
   if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  qry_rpt4.FieldByName('seq').Value:=seq;
end;

procedure Tfrmaqlmain.qry_rpt5NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query1 do begin
   close;
   params.clear;
   commandtext:='select max(seq) as q1 from tbl_aql_rpt5';
   open;
   if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  qry_rpt5.FieldByName('seq').Value:=seq;
end;

procedure Tfrmaqlmain.qry_s1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query1 do begin
   close;
   params.clear;
   commandtext:='select max(seq1) as q1 from tbl_aql_s1';
   open;
   if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  qry_s1.FieldByName('seq').Value:=qry_s0.fieldbyname('seq').value;
  qry_s1.FieldByName('seq1').Value:=seq;
end;

procedure Tfrmaqlmain.qry_s0NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query1 do begin
   close;
   params.clear;
   commandtext:='select max(seq) as q1 from tbl_aql_s0';
   open;
   if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  qry_s0.FieldByName('seq').Value:=seq;
  qry_s0.FieldByName('dt').Value:=date;
  qry_s0.FieldByName('fty').Value:='SL';
  qry_s0.fieldbyname('brand').value:='Gilly Hicks';
  qry_s0.fieldbyname('audit1').value:=true;
  qry_s0.FieldByName('audit2').Value:=false;
  qry_s0.fieldbyname('audit3').value:=false;
  qry_s0.FieldByName('remarks').Value:='No Casing Defect Found . All final MEASUREMENT on the AQL sample size have been achieved .';
  qry_s0.FieldByName('memo1').Value:='抽箱檢查沒有發現瑕疵。在AQL抽樣成品的量度，所有尺寸符合規格。';
end;

procedure Tfrmaqlmain.qry_s0AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0);
end;

procedure Tfrmaqlmain.qry_s1AfterPost(DataSet: TDataSet);
var
  q1,q2,q3,q4,q5,q6,q7,qr:integer;
begin
  DataSetAfterPost(DataSet,0,1);
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from sp_aql_calc0(:x1)';
    params[0].asinteger:=qry_s1.fieldbyname('seq').value;
    open;
    if not fieldbyname('qty1').isnull then q1:=fieldbyname('qty1').value
    else q1:=0;
    if not fieldbyname('case1').isnull then q2:=fieldbyname('case1').value
    else q2:=0;
    if not fieldbyname('siz1').isnull then q3:=fieldbyname('siz1').value
    else q3:=0;
    if not fieldbyname('qty').isnull then q4:=fieldbyname('qty').value
    else q4:=0;
    if not fieldbyname('sqty1').isnull then q5:=fieldbyname('sqty1').value
    else q5:=0;
    if not fieldbyname('rqty1').isnull then q6:=fieldbyname('rqty1').value
    else q6:=0;
    if not fieldbyname('col1').isnull then q7:=fieldbyname('col1').value
    else q7:=0;
    if not fieldbyname('qr').isnull then qr:=fieldbyname('qr').value
    else qr:=0;
  end;
  with qry_s0 do begin
    edit;
    fieldbyname('qty').Value:=q4;
    fieldbyname('qty1').value:=q1;
    fieldbyname('case1').value:=q2;
    fieldbyname('size1').value:=q3;
    fieldbyname('sqty1').value:=q5;
    fieldbyname('rqty1').value:=q6;
    fieldbyname('col1').value:=q7;
    fieldbyname('qr').value:=qr;
    fieldbyname('qr1').value:=q4+qr;
    post;
  end;
end;

procedure Tfrmaqlmain.BitBtn6Click(Sender: TObject);
var
  r1:integer;
begin
  if qry_s0.Active then begin
    if (qry_s0.state=dsinsert) or (qry_s0.state=dsedit) then qry_s0.post;
    if (qry_s1.state=dsinsert) or (qry_s1.state=dsedit) then qry_s1.post;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct seq from tbl_aql_s2 where seq=:x1';
      params[0].asinteger:=qry_s0.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then r1:=1 else r1:=0;
    end;
    if r1=0 then begin
      with query1 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'x1',ptinput);
        commandtext:='execute procedure sp_aql_upds(:x1)';
        params[0].asinteger:=qry_s0.fieldbyname('seq').value;
        execute;
      end;
    end;
    with qry_s2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_aql_s2 where seq=:x1';
      params[0].asinteger:=qry_s0.fieldbyname('seq').value;
      open;
    end;
    with qry_s3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_aql_s3 where seq=:x1';
      params[0].asinteger:=qry_s0.fieldbyname('seq').value;
      open;
    end;
    if frmaql1=nil then frmaql1:=tfrmaql1.Create(nil);
    frmaql1.xh1.ItemIndex:=1;
    frmaql1.xh1Click(self);
    with frmaql1.DBGridEh1 do begin
      columns[0].Title.caption:=dbgrideh5.Columns[0].Title.caption;
      columns[1].Title.caption:=dbgrideh5.Columns[1].Title.caption;
      columns[2].Title.caption:=dbgrideh5.Columns[2].Title.caption;
      columns[3].Title.caption:=dbgrideh5.Columns[3].Title.caption;
      columns[4].Title.caption:=dbgrideh5.Columns[4].Title.caption;
      columns[5].Title.caption:=dbgrideh5.Columns[5].Title.caption;
      columns[6].Title.caption:=dbgrideh5.Columns[6].Title.caption;
      columns[7].Title.caption:=dbgrideh5.Columns[7].Title.caption;
      columns[8].Title.caption:=dbgrideh5.Columns[8].Title.caption;
      columns[9].Title.caption:=dbgrideh5.Columns[9].Title.caption;
      columns[10].Title.caption:=dbgrideh5.Columns[10].Title.caption;
      columns[11].Title.caption:=dbgrideh5.Columns[11].Title.caption;
      columns[12].Title.caption:=dbgrideh5.Columns[12].Title.caption;
    end;
    with frmaql1.DBGridEh5 do begin
      columns[0].Title.caption:=dbgrideh5.Columns[0].Title.caption;
      columns[1].Title.caption:=dbgrideh5.Columns[1].Title.caption;
      columns[2].Title.caption:=dbgrideh5.Columns[2].Title.caption;
      columns[3].Title.caption:=dbgrideh5.Columns[3].Title.caption;
      columns[4].Title.caption:=dbgrideh5.Columns[4].Title.caption;
      columns[5].Title.caption:=dbgrideh5.Columns[5].Title.caption;
      columns[6].Title.caption:=dbgrideh5.Columns[6].Title.caption;
      columns[7].Title.caption:=dbgrideh5.Columns[7].Title.caption;
      columns[8].Title.caption:=dbgrideh5.Columns[8].Title.caption;
      columns[9].Title.caption:=dbgrideh5.Columns[9].Title.caption;
      columns[10].Title.caption:=dbgrideh5.Columns[10].Title.caption;
      columns[11].Title.caption:=dbgrideh5.Columns[11].Title.caption;
      columns[12].Title.caption:=dbgrideh5.Columns[12].Title.caption;
    end;
    frmaql1.Show;
  end;
end;

procedure Tfrmaqlmain.SpeedButton1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if frmaqlpo=nil then frmaqlpo:=tfrmaqlpo.create(nil);
  frmaqlpo.show;
  frmaqlpo.pagecontrol1.activepageindex:=0;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmaqlmain.qry_s0AfterOpen(DataSet: TDataSet);
begin
  if qry_s0.fieldbyname('endline').value=true then begin
    bitbtn6.Enabled:=false;
    bitbtn8.Enabled:=false;
    dbcheckbox4.Enabled:=false;
    Label6.Caption:='Inspector (檢查員) : ';
    Label10.Caption:='Sewn Qty being Inspect (通過檢查之縫合數) : ';
    TabSheet5.Caption:='End-line Inspection Result (抽樣檢查結果)';
    DBGridEh5.Columns[13].Title.caption:='Reinspect Qty';
    bevel2.Visible:=false;
    dbcheckbox12.Visible:=false;
    dbcheckbox13.Visible:=false;
  end else begin
    bitbtn6.Enabled:=true;
    bitbtn8.Enabled:=true;
    dbcheckbox4.Enabled:=true;
    Label6.Caption:='Quality Auditor (檢定員) : ';
    Label10.Caption:='Shipment Qty being Audit (通過檢定之出貨數) : ';
    TabSheet5.Caption:='AQL Result (抽樣檢定結果)';
    DBGridEh5.Columns[13].Title.caption:='Re-audit Qty';
    bevel2.Visible:=true;
    dbcheckbox12.Visible:=true;
    dbcheckbox13.Visible:=true;
  end;
  with qry_s1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    commandtext:='select * from tbl_aql_s1 where seq=:x1';
    params[0].asinteger:=qry_s0.fieldbyname('seq').value;
    open;
  end;
  if not qry_s0.FieldByName('acol1').IsNull then dbgrideh5.Columns[1].Title.caption:='Color (顏色)| '+qry_s0.fieldbyname('acol1').value
  else dbgrideh5.Columns[1].Title.caption:='Color (顏色)| ';
  if not qry_s0.FieldByName('acol2').IsNull then dbgrideh5.Columns[2].Title.caption:='Color (顏色)| '+qry_s0.fieldbyname('acol2').value
  else dbgrideh5.Columns[2].Title.caption:='Color (顏色)| ';
  if not qry_s0.FieldByName('acol3').IsNull then dbgrideh5.Columns[3].Title.caption:='Color (顏色)| '+qry_s0.fieldbyname('acol3').value
  else dbgrideh5.Columns[3].Title.caption:='Color (顏色)| ';
  if not qry_s0.FieldByName('acol4').IsNull then dbgrideh5.Columns[4].Title.caption:='Color (顏色)| '+qry_s0.fieldbyname('acol4').value
  else dbgrideh5.Columns[4].Title.caption:='Color (顏色)| ';
  if not qry_s0.FieldByName('acol5').IsNull then dbgrideh5.Columns[5].Title.caption:='Color (顏色)| '+qry_s0.fieldbyname('acol5').value
  else dbgrideh5.Columns[5].Title.caption:='Color (顏色)| ';
  if not qry_s0.FieldByName('acol6').IsNull then dbgrideh5.Columns[6].Title.caption:='Color (顏色)| '+qry_s0.fieldbyname('acol6').value
  else dbgrideh5.Columns[6].Title.caption:='Color (顏色)| ';
  if not qry_s0.FieldByName('acol7').IsNull then dbgrideh5.Columns[7].Title.caption:='Color (顏色)| '+qry_s0.fieldbyname('acol7').value
  else dbgrideh5.Columns[7].Title.caption:='Color (顏色)| ';
  if not qry_s0.FieldByName('acol8').IsNull then dbgrideh5.Columns[8].Title.caption:='Color (顏色)| '+qry_s0.fieldbyname('acol8').value
  else dbgrideh5.Columns[8].Title.caption:='Color (顏色)| ';
  if not qry_s0.FieldByName('acol9').IsNull then dbgrideh5.Columns[9].Title.caption:='Color (顏色)| '+qry_s0.fieldbyname('acol9').value
  else dbgrideh5.Columns[9].Title.caption:='Color (顏色)| ';
  if not qry_s0.FieldByName('acol10').IsNull then dbgrideh5.Columns[10].Title.caption:='Color (顏色)| '+qry_s0.fieldbyname('acol10').value
  else dbgrideh5.Columns[10].Title.caption:='Color (顏色)| ';
  if not qry_s0.FieldByName('acol11').IsNull then dbgrideh5.Columns[11].Title.caption:='Color (顏色)| '+qry_s0.fieldbyname('acol11').value
  else dbgrideh5.Columns[11].Title.caption:='Color (顏色)| ';
  if not qry_s0.FieldByName('acol12').IsNull then dbgrideh5.Columns[12].Title.caption:='Color (顏色)| '+qry_s0.fieldbyname('acol12').value
  else dbgrideh5.Columns[12].Title.caption:='Color (顏色)| ';
end;

procedure Tfrmaqlmain.DataSource7DataChange(Sender: TObject;
  Field: TField);
begin
  edit1.Text:=qry_s0.fieldbyname('pono').value;
end;

procedure Tfrmaqlmain.PageControl2Change(Sender: TObject);
begin
  if pagecontrol2.ActivePageIndex=1 then begin
   if qry_s0.Active then begin
    with qry_s4 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_aql_s4 where seq=:x1';
      params[0].asinteger:=qry_s0.fieldbyname('seq').value;
      open;
    end;
    with qry_s5 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_aql_s5 where seq=:x1';
      params[0].asinteger:=qry_s0.fieldbyname('seq').value;
      open;
    end;

    dbgrideh6.Columns[0].PickList.clear;
    dbgrideh6.Columns[1].PickList.clear;
    dbgrideh6.columns[2].PickList.clear;
    dbgrideh6.Columns[5].PickList.clear;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct siz from tbl_aql_s1 where seq=:x1';
      params[0].asinteger:=qry_s0.fieldbyname('seq').value;
      open;
      first;
      while not eof do begin
        dbgrideh6.Columns[0].PickList.add(fieldbyname('siz').value);
        application.ProcessMessages;
        next;
      end;
    end;
    if qry_s0.FieldByName('acol1').value>'' then dbgrideh6.Columns[1].PickList.add(qry_s0.fieldbyname('acol1').value);
    if qry_s0.FieldByName('acol2').value>'' then dbgrideh6.Columns[1].PickList.add(qry_s0.fieldbyname('acol2').value);
    if qry_s0.FieldByName('acol3').value>'' then dbgrideh6.Columns[1].PickList.add(qry_s0.fieldbyname('acol3').value);
    if qry_s0.FieldByName('acol4').value>'' then dbgrideh6.Columns[1].PickList.add(qry_s0.fieldbyname('acol4').value);
    if qry_s0.FieldByName('acol5').value>'' then dbgrideh6.Columns[1].PickList.add(qry_s0.fieldbyname('acol5').value);
    if qry_s0.FieldByName('acol6').value>'' then dbgrideh6.Columns[1].PickList.add(qry_s0.fieldbyname('acol6').value);
    if qry_s0.FieldByName('acol7').value>'' then dbgrideh6.Columns[1].PickList.add(qry_s0.fieldbyname('acol7').value);
    if qry_s0.FieldByName('acol8').value>'' then dbgrideh6.Columns[1].PickList.add(qry_s0.fieldbyname('acol8').value);
    if qry_s0.FieldByName('acol9').value>'' then dbgrideh6.Columns[1].PickList.add(qry_s0.fieldbyname('acol9').value);
    if qry_s0.FieldByName('acol10').value>'' then dbgrideh6.Columns[1].PickList.add(qry_s0.fieldbyname('acol10').value);
    if qry_s0.FieldByName('acol11').value>'' then dbgrideh6.Columns[1].PickList.add(qry_s0.fieldbyname('acol11').value);
    if qry_s0.FieldByName('acol12').value>'' then dbgrideh6.Columns[1].PickList.add(qry_s0.fieldbyname('acol12').value);
    with query1 do begin
      close;
      params.clear;
      commandtext:='select distinct pcd from tbl_aql_rpt2 where ptyp=''GARMENTS''';
      open;
      first;
      while not eof do begin
        dbgrideh6.Columns[2].PickList.add(fieldbyname('pcd').value);
        application.ProcessMessages;
        next;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select distinct dcd from tbl_aql_rpt3 where dtyp=''GARMENTS''';
      open;
      first;
      while not eof do begin
        dbgrideh6.Columns[5].PickList.add(fieldbyname('dcd').value);
        application.ProcessMessages;
        next;
      end;
    end;

    dbgrideh7.Columns[0].PickList.clear;
    dbgrideh7.Columns[1].PickList.clear;
    dbgrideh7.columns[2].PickList.clear;
    dbgrideh7.Columns[5].PickList.clear;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct siz from tbl_aql_s1 where seq=:x1';
      params[0].asinteger:=qry_s0.fieldbyname('seq').value;
      open;
      first;
      while not eof do begin
        dbgrideh7.Columns[0].PickList.add(fieldbyname('siz').value);
        application.ProcessMessages;
        next;
      end;
    end;
    if qry_s0.FieldByName('acol1').value>'' then dbgrideh7.Columns[1].PickList.add(qry_s0.fieldbyname('acol1').value);
    if qry_s0.FieldByName('acol2').value>'' then dbgrideh7.Columns[1].PickList.add(qry_s0.fieldbyname('acol2').value);
    if qry_s0.FieldByName('acol3').value>'' then dbgrideh7.Columns[1].PickList.add(qry_s0.fieldbyname('acol3').value);
    if qry_s0.FieldByName('acol4').value>'' then dbgrideh7.Columns[1].PickList.add(qry_s0.fieldbyname('acol4').value);
    if qry_s0.FieldByName('acol5').value>'' then dbgrideh7.Columns[1].PickList.add(qry_s0.fieldbyname('acol5').value);
    if qry_s0.FieldByName('acol6').value>'' then dbgrideh7.Columns[1].PickList.add(qry_s0.fieldbyname('acol6').value);
    if qry_s0.FieldByName('acol7').value>'' then dbgrideh7.Columns[1].PickList.add(qry_s0.fieldbyname('acol7').value);
    if qry_s0.FieldByName('acol8').value>'' then dbgrideh7.Columns[1].PickList.add(qry_s0.fieldbyname('acol8').value);
    if qry_s0.FieldByName('acol9').value>'' then dbgrideh7.Columns[1].PickList.add(qry_s0.fieldbyname('acol9').value);
    if qry_s0.FieldByName('acol10').value>'' then dbgrideh7.Columns[1].PickList.add(qry_s0.fieldbyname('acol10').value);
    if qry_s0.FieldByName('acol11').value>'' then dbgrideh7.Columns[1].PickList.add(qry_s0.fieldbyname('acol11').value);
    if qry_s0.FieldByName('acol12').value>'' then dbgrideh7.Columns[1].PickList.add(qry_s0.fieldbyname('acol12').value);
    with query1 do begin
      close;
      params.clear;
      commandtext:='select distinct pcd from tbl_aql_rpt2 where ptyp=''CASING''';
      open;
      first;
      while not eof do begin
        dbgrideh7.Columns[2].PickList.add(fieldbyname('pcd').value);
        application.ProcessMessages;
        next;
      end;
    end;
    with query1 do begin
      close;
      params.clear;
      commandtext:='select distinct dcd from tbl_aql_rpt3 where dtyp=''CASING''';
      open;
      first;
      while not eof do begin
        dbgrideh7.Columns[5].PickList.add(fieldbyname('dcd').value);
        application.ProcessMessages;
        next;
      end;
    end;
   end;
  end;
end;

procedure Tfrmaqlmain.qry_s4NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query1 do begin
   close;
   params.clear;
   commandtext:='select max(seq1) as q1 from tbl_aql_s4';
   open;
   if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  qry_s4.FieldByName('seq').Value:=qry_s0.fieldbyname('seq').value;
  qry_s4.FieldByName('seq1').Value:=seq;
  qry_s4.fieldbyname('major').value:=0;
  qry_s4.fieldbyname('minor').value:=0;
end;

procedure Tfrmaqlmain.qry_s5NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query1 do begin
   close;
   params.clear;
   commandtext:='select max(seq1) as q1 from tbl_aql_s5';
   open;
   if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  qry_s5.FieldByName('seq').Value:=qry_s0.fieldbyname('seq').value;
  qry_s5.FieldByName('seq1').Value:=seq;
  qry_s5.fieldbyname('major').value:=0;
end;

procedure Tfrmaqlmain.qry_s4AfterPost(DataSet: TDataSet);
var
  seq:integer;
begin
  DataSetAfterPost(DataSet,0,1);
  if qry_s0.fieldbyname('hun_check').value=true then begin
    seq:=qry_s0.fieldbyname('seq').value;
    //showmessage(inttostr(seq)+' 1:1 '+siz+'||');
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select sum(major) as x1 from tbl_aql_s4 where seq=:x1 and siz=:x2 and major is not null';
      params[0].asinteger:=qry_s0.fieldbyname('seq').value;
      params[1].asstring:=siz;
      open;
      if not fieldbyname('x1').isnull then begin
        with qry_s1 do begin
          locate('seq;siz',vararrayof([seq,siz]),[loPartialKey]);
          edit;
          fieldbyname('qr').value:=query1.fieldbyname('x1').value;
          post;
        end;
      end;
    end;
    {
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select distinct siz,sum(major) as x1 from tbl_aql_s4 where seq=:x1 and major is not null group by siz order by siz';
      params[0].asinteger:=qry_s0.fieldbyname('seq').value;
      open;
      first;
      while not eof do begin
        siz:=fieldbyname('siz').value;
        showmessage(inttostr(seq)+':'+siz+'||');
        with qry_s1 do begin
          locate('seq;siz',vararrayof([seq,siz]),[loPartialKey]);
          edit;
          fieldbyname('qr').value:=query1.fieldbyname('x1').value;
          post;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    }
  end;
end;

procedure Tfrmaqlmain.qry_s5AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1);
end;

procedure Tfrmaqlmain.qry_s4PCDChange(Sender: TField);
var
  s1,s2:string;
begin
  // PLO & EPLO
  if not qry_s4.FieldByName('pcd').isnull then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_aql_rpt2 where pcd='''+qry_s4.fieldbyname('pcd').value+'''';
      open;
      if not fieldbyname('plo').isnull then s1:=fieldbyname('plo').value else s1:='';
      if not fieldbyname('eplo').isnull then s2:=fieldbyname('eplo').Value else s2:='';
    end;
    qry_s4.fieldbyname('plo').value:=s1;
    qry_s4.FieldByName('eplo').value:=s2;
  end;
end;

procedure Tfrmaqlmain.qry_s4DCDChange(Sender: TField);
var
  s1,s2:string;
begin
  // DEF & EDEF
  if not qry_s4.FieldByName('dcd').isnull then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_aql_rpt3 where dcd='''+qry_s4.fieldbyname('dcd').value+'''';
      open;
      if not fieldbyname('def').isnull then s1:=fieldbyname('def').value else s1:='';
      if not fieldbyname('edef').isnull then s2:=fieldbyname('edef').Value else s2:='';
    end;
    qry_s4.fieldbyname('def').value:=s1;
    qry_s4.FieldByName('edef').value:=s2;
  end;
end;

procedure Tfrmaqlmain.qry_s5PCDChange(Sender: TField);
var
  s1,s2:string;
begin
  // PLO & EPLO
  if not qry_s5.FieldByName('pcd').isnull then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_aql_rpt2 where pcd='''+qry_s5.fieldbyname('pcd').value+'''';
      open;
      if not fieldbyname('plo').isnull then s1:=fieldbyname('plo').value else s1:='';
      if not fieldbyname('eplo').isnull then s2:=fieldbyname('eplo').Value else s2:='';
    end;
    qry_s5.fieldbyname('plo').value:=s1;
    qry_s5.FieldByName('eplo').value:=s2;
  end;
end;

procedure Tfrmaqlmain.qry_s5DCDChange(Sender: TField);
var
  s1,s2:string;
begin
  // DEF & EDEF
  if not qry_s5.FieldByName('dcd').isnull then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_aql_rpt3 where dcd='''+qry_s5.fieldbyname('dcd').value+'''';
      open;
      if not fieldbyname('def').isnull then s1:=fieldbyname('def').value else s1:='';
      if not fieldbyname('edef').isnull then s2:=fieldbyname('edef').Value else s2:='';
    end;
    qry_s5.fieldbyname('def').value:=s1;
    qry_s5.FieldByName('edef').value:=s2;
  end;
end;

procedure Tfrmaqlmain.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  if treeview1.Selected<>nil then begin
    with qry_rpt3 do begin
      close;
      params.clear;
      if treeview1.Selected.Level=0 then
        commandtext:='select * from tbl_aql_rpt3 where dtyp='''+treeview1.Selected.Text+''''
      else if treeview1.Selected.Level=1 then
        commandtext:='select * from tbl_aql_rpt3 where dtyp1='''+treeview1.Selected.Text+'''';
      open;
    end;
  end;
end;

procedure Tfrmaqlmain.NewGrouping1Click(Sender: TObject);
begin
  if treeview1.Selected<>nil then begin
    if treeview1.Selected.Level>0 then begin
      if frmgrouping=nil then frmgrouping:=tfrmgrouping.Create(nil);
      frmgrouping.Label6.Caption:='GROUP';
      frmgrouping.Edit1.ReadOnly:=false;
      if treeview1.Selected.Level=2 then begin
        frmgrouping.Label4.Caption:=treeview1.Selected.Parent.Parent.Text;
        frmgrouping.Label5.Caption:=treeview1.Selected.Parent.Text;
      end else if treeview1.Selected.Level=1 then begin
        frmgrouping.Label4.Caption:=treeview1.Selected.Parent.Text;
        frmgrouping.Label5.Caption:='';
      end;
      frmgrouping.Edit1.Text:='';
      frmgrouping.Edit2.Text:='';
      frmgrouping.Edit3.Text:='';
      frmgrouping.Show;
    end;
  end;
end;

procedure Tfrmaqlmain.NewSubgrouping1Click(Sender: TObject);
begin
  if treeview1.Selected<>nil then begin
    if treeview1.Selected.Level<2 then begin
      if frmgrouping=nil then frmgrouping:=tfrmgrouping.Create(nil);
      frmgrouping.Label6.Caption:='SUBGROUP';
      frmgrouping.Edit1.ReadOnly:=false;
      if treeview1.Selected.Level=1 then begin
        frmgrouping.Label4.Caption:=treeview1.Selected.Parent.Text;
        frmgrouping.Label5.Caption:=treeview1.Selected.Text;
      end else if treeview1.Selected.Level=0 then begin
        frmgrouping.Label4.Caption:=treeview1.Selected.Text;
        frmgrouping.Label5.Caption:='';
      end;
      frmgrouping.Edit1.Text:='';
      frmgrouping.Edit2.Text:='';
      frmgrouping.Edit3.Text:='';
      frmgrouping.Show;
    end else begin
      showmessage('Can not add child level!');
    end;
  end;
end;

procedure Tfrmaqlmain.DeleteGrouping1Click(Sender: TObject);
begin
  if treeview1.Selected<>nil then begin
    if treeview1.Selected.Level>0 then begin
     if application.MessageBox('Delete this code?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
      with query1 do begin
        close;
        params.clear;
        if treeview1.Selected.Level=1 then begin
          commandtext:='select * from tbl_aql_rpt3 where dtyp='''+treeview1.Selected.Parent.Text+''' and dtyp1='''+treeview1.Selected.Text+'''';
          open;
          if not fieldbyname('dtyp').isnull then begin
            showmessage('Can not delete this code!');
          end else begin
            with query2 do begin
              close;
              params.clear;
              commandtext:='delete from tbl_aql_rpt_d where dtyp='''+treeview1.Selected.Parent.Text+''' and dtyp1='''+treeview1.Selected.Text+'''';
              execute;
            end;
            treeview1.selected.Delete;
          end;
        end else if treeview1.Selected.Level=2 then begin
          commandtext:='select * from tbl_aql_rpt3 where dtyp='''+treeview1.Selected.Parent.Parent.Text+''' and dtyp1='''+treeview1.Selected.Parent.text+''' and dtyp2='''+treeview1.Selected.Text+'''';
          open;
          if not fieldbyname('dtyp').isnull then begin
            showmessage('Can not delete this code!');
          end else begin
            with query2 do begin
              close;
              params.clear;
              commandtext:='delete from tbl_aql_rpt_d where dtyp='''+treeview1.Selected.Parent.Parent.Text+''' and dtyp1='''+treeview1.Selected.Parent.text+''' and dtyp2='''+treeview1.Selected.Text+'''';
              execute;
            end;
            treeview1.selected.Delete;
          end;
        end;
      end;
     end;
    end;
  end;
end;

procedure Tfrmaqlmain.ds_ConnBeforeConnect(Sender: TObject);
var
  s1:string;
begin
  memo1.Lines.clear;
  memo1.Lines.LoadFromFile('aqlconip.ini');
  s1:=memo1.Lines.Strings[0];
  if pos(' ',s1)>0 then s1:=copy(s1,1,pos(' ',s1)-1);
  ds_conn.Params[1]:='HostName='+s1;
  //ds_conn.Params[0]:='Port=8213';
  //ds_conn.Params[1]:='HostName=10.2.1.7';
end;

procedure Tfrmaqlmain.AmendGrouping1Click(Sender: TObject);
begin
  if treeview1.Selected<>nil then begin
    if treeview1.Selected.Level>0 then begin
      if frmgrouping=nil then frmgrouping:=tfrmgrouping.Create(nil);
      frmgrouping.Label6.Caption:='AMEND';
      frmgrouping.Edit1.ReadOnly:=true;
      with query1 do begin
        close;
        params.clear;
        if treeview1.Selected.Level=0 then begin
          commandtext:='select * from tbl_aql_rpt_d where dtyp='''+treeview1.Selected.text+'''';
          open;
          frmgrouping.Edit1.Text:=fieldbyname('dtyp').value;
          frmgrouping.Edit2.Text:=fieldbyname('dtypc').value;
          frmgrouping.Edit3.Text:=fieldbyname('dtyps').value;
        end else if treeview1.Selected.Level=1 then begin
          commandtext:='select * from tbl_aql_rpt_d where dtyp='''+treeview1.Selected.Parent.Text+''' and dtyp1='''+treeview1.Selected.Text+'''';
          open;
          frmgrouping.Edit1.Text:=fieldbyname('dtyp1').value;
          frmgrouping.Edit2.Text:=fieldbyname('dtyp1c').value;
          frmgrouping.Edit3.Text:=fieldbyname('dtyp1s').value;
        end else if treeview1.Selected.Level=2 then begin
          commandtext:='select * from tbl_aql_rpt_d where dtyp='''+treeview1.Selected.Parent.Parent.Text+''' and dtyp1='''+treeview1.Selected.Parent.Text+''' and dtyp2='''+treeview1.selected.text+'''';
          open;
          frmgrouping.Edit1.Text:=fieldbyname('dtyp2').value;
          frmgrouping.Edit2.Text:=fieldbyname('dtyp2c').value;
          frmgrouping.Edit3.Text:=fieldbyname('dtyp2s').value;
        end;
      end;
      frmgrouping.Show;
    end;
  end;
end;

procedure Tfrmaqlmain.qry_s2AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1);
end;

procedure Tfrmaqlmain.qry_s3AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1);
end;

procedure Tfrmaqlmain.Edit1DblClick(Sender: TObject);
var
  newpo:string;
begin
  if qry_s0.Active then begin
    newpo:=inputbox('Please input new PO#','New PO:',qry_s0.fieldbyname('pono').value);
    if newpo>'' then begin
      qry_s0.Edit;
      qry_s0.FieldByName('pono').Value:=newpo;
      qry_s0.Post;
    end;
  end;
end;

procedure Tfrmaqlmain.ExportPOD1Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid2,false,true,false,'xls');
  end;
end;

procedure Tfrmaqlmain.qry_s0AfterClose(DataSet: TDataSet);
begin
  edit1.Text:='';
  qry_s1.Close;
  qry_s2.Close;
  qry_s3.Close;
  qry_s4.Close;
  qry_s5.Close;
end;

procedure Tfrmaqlmain.DBEdit4Exit(Sender: TObject);
begin
  dbgrideh5.Columns[1].Title.caption:='Color (顏色)|'+dbedit4.text;
end;

procedure Tfrmaqlmain.DBEdit5Exit(Sender: TObject);
begin
  dbgrideh5.Columns[2].Title.caption:='Color (顏色)|'+dbedit5.text;
end;

procedure Tfrmaqlmain.DBEdit6Exit(Sender: TObject);
begin
  dbgrideh5.Columns[3].Title.caption:='Color (顏色)|'+dbedit6.text;
end;

procedure Tfrmaqlmain.DBEdit7Exit(Sender: TObject);
begin
  dbgrideh5.Columns[4].Title.caption:='Color (顏色)|'+dbedit7.text;
end;

procedure Tfrmaqlmain.DBEdit8Exit(Sender: TObject);
begin
  dbgrideh5.Columns[5].Title.caption:='Color (顏色)|'+dbedit8.text;
end;

procedure Tfrmaqlmain.DBEdit9Exit(Sender: TObject);
begin
  dbgrideh5.Columns[6].Title.caption:='Color (顏色)|'+dbedit9.text;
end;

procedure Tfrmaqlmain.DBEdit10Exit(Sender: TObject);
begin
  dbgrideh5.Columns[7].Title.caption:='Color (顏色)|'+dbedit10.text;
end;

procedure Tfrmaqlmain.delete1Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tbl_aql_s4 where seq1=:x1';
      params[0].asinteger:=qry_s4.fieldbyname('seq1').value;
      execute;
    end;
    qry_s4.Delete;
  end;
end;

procedure Tfrmaqlmain.DELETE2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='delete from tbl_aql_s5 where seq1=:x1';
      params[0].asinteger:=qry_s5.fieldbyname('seq1').value;
      execute;
    end;
    qry_s5.Delete;
  end;
end;

procedure Tfrmaqlmain.FormCreate(Sender: TObject);
begin
  //if frmxtdl=nil then frmxtdl:=tfrmxtdl.Create(nil);
  //frmxtdl.ShowModal;
end;

procedure Tfrmaqlmain.BitBtn5Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  with query1 do begin
    close;
    params.clear;
    commandtext:='delete from tbl_aql_s4 where (def is null) and (edef is null) and seq>=4000';
    execute;
    close;
    params.clear;
    commandtext:='update tbl_aql_s4 set major=0 where (major is null) and seq>=4000';
    execute;
    close;
    params.clear;
    commandtext:='update tbl_aql_s4 set minor=0 where (minor is null) and seq>=4000';
    execute;
  end;
  {
  if frmsummary=nil then frmsummary:=tfrmsummary.create(nil);
  frmsummary.show;
  }
  if frmdefectsummary=nil then frmdefectsummary:=tfrmdefectsummary.create(nil);
  //frmdefectsummary.ComboBox1.Text:=combobox1.text;
  frmdefectsummary.SpinEdit1.Value:=yearof(date);
  frmdefectsummary.SpinEdit2.Value:=weekof(date);
  frmdefectsummary.SpinEdit5.Value:=yearof(date);
  frmdefectsummary.SpinEdit6.Value:=weekof(date);
  frmdefectsummary.SpinEdit7.Value:=yearof(date);
  frmdefectsummary.SpinEdit8.Value:=weekof(date);
  frmdefectsummary.SpinEdit3.Value:=monthof(date);
  {
  if spinedit3.Value in [1,2,3] then
  frmdefectsummary.SpinEdit4.Value:=1
  else if spinedit3.value in [4,5,6] then
  frmdefectsummary.spinedit4.value:=2
  else if spinedit3.Value in [7,8,9] then
  frmdefectsummary.spinedit4.value:=3
  else frmdefectsummary.spinedit4.value:=4;
  }
  frmdefectsummary.Show;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmaqlmain.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).zoompercentage:=100;
end;

procedure Tfrmaqlmain.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).zoompercentage:=100;
end;

procedure Tfrmaqlmain.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport3.PreviewForm.Viewer).zoompercentage:=100;
end;

procedure Tfrmaqlmain.TreeView2Change(Sender: TObject; Node: TTreeNode);
begin
  if treeview2.Selected<>nil then begin
    with qry_rpt2 do begin
      close;
      params.clear;
      if treeview2.Selected.Level=0 then
        commandtext:='select * from tbl_aql_rpt2 where ptyp='''+treeview2.Selected.Text+''''
      else if treeview2.Selected.Level=1 then
        commandtext:='select * from tbl_aql_rpt2 where ptyp1 like ''%'+treeview2.Selected.Text+'%''';
      open;
    end;
  end;
end;

procedure Tfrmaqlmain.TreeView2DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  //if tdbgrideh(source)=dbgrideh2 then begin
  //  showmessage(treeview2.Selected.text);
  //  showmessage(inttostr(treeview2.selected.level));
  //end;
end;

procedure Tfrmaqlmain.DBEdit24Exit(Sender: TObject);
begin
  dbgrideh5.Columns[8].Title.caption:='Color (顏色)|'+dbedit24.text;
end;

procedure Tfrmaqlmain.DBEdit25Exit(Sender: TObject);
begin
  dbgrideh5.Columns[9].Title.caption:='Color (顏色)|'+dbedit25.text;
end;

procedure Tfrmaqlmain.DBEdit26Exit(Sender: TObject);
begin
  dbgrideh5.Columns[10].Title.caption:='Color (顏色)|'+dbedit26.text;
end;

procedure Tfrmaqlmain.DBEdit27Exit(Sender: TObject);
begin
  dbgrideh5.Columns[11].Title.caption:='Color (顏色)|'+dbedit27.text;
end;

procedure Tfrmaqlmain.DBEdit28Exit(Sender: TObject);
begin
  dbgrideh5.Columns[12].Title.caption:='Color (顏色)|'+dbedit28.text;
end;

procedure Tfrmaqlmain.DBGridEh6Columns2EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmenquiry=nil then frmenquiry:=tfrmenquiry.Create(nil);
  with frmenquiry.Query1 do begin
    close;
    params.clear;
    commandtext:='select pcd as cde,eplo as edescription,plo as description from tbl_aql_rpt2 order by pcd';
    open;
  end;
  frmenquiry.Caption:='Location Selection';
  frmenquiry.Show;
end;

procedure Tfrmaqlmain.DBGridEh6Columns5EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmenquiry=nil then frmenquiry:=tfrmenquiry.Create(nil);
  with frmenquiry.Query1 do begin
    close;
    params.clear;
    commandtext:='select dcd as cde,edef as edescription,def as description from tbl_aql_rpt3 order by dcd';
    open;
  end;
  frmenquiry.Caption:='Defect Selection';
  frmenquiry.Show;
end;

procedure Tfrmaqlmain.BitBtn8Click(Sender: TObject);
var
  fseq,tseq:integer;
begin
  fseq:=0; tseq:=0;
  if qry_s0.Active then begin
    fseq:=qry_s0.fieldbyname('seq').value;
  end;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as x1 from tbl_aql_s0';
    open;
    tseq:=fieldbyname('x1').Value+1;
  end;
  if (fseq>0) and (tseq>0) then begin
    with query1 do begin
      close;
      params.Clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_aql_copy(:x1,:x2)';
      params[0].AsInteger:=fseq;
      params[1].asinteger:=tseq;
      execute;
    end;
    with qry_s0 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from tbl_aql_s0 where seq=:x1';
      params[0].asinteger:=tseq;
      open;
    end;
  end else showmessage('Can not copy data!');
end;

procedure Tfrmaqlmain.DBGridEh2Columns4EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if openpicturedialog1.Execute then begin
    qry_rpt2.Edit;
    qry_rpt2ptyp2.Value:=openpicturedialog1.FileName;
  end;
end;

procedure Tfrmaqlmain.DBCheckBox4Click(Sender: TObject);
begin
  //if dbcheckbox4.Checked then dbcheckbox5.Checked:=false;
  if (dbcheckbox5.Checked) or (dbcheckbox6.Checked) or (dbcheckbox9.Checked) then dbcheckbox4.Checked:=false;
end;

procedure Tfrmaqlmain.DBCheckBox5Click(Sender: TObject);
begin
  if dbcheckbox5.Checked then dbcheckbox4.Checked:=false;
end;

procedure Tfrmaqlmain.qry_rpt1_boxAfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0);
end;

procedure Tfrmaqlmain.qry_rpt1_boxNewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query1 do begin
   close;
   params.clear;
   commandtext:='select max(seq) as q1 from tbl_aql_rpt1_box';
   open;
   if not fieldbyname('q1').isnull then seq:=fieldbyname('q1').value+1 else seq:=1;
  end;
  qry_rpt1_box.FieldByName('seq').Value:=seq;
end;

procedure Tfrmaqlmain.qry_s0DELLOTChange(Sender: TField);
var
  dellot,seq:integer;
  pline,j2_job,cstyle,acol1:string;
  dailyaql,dailyaql1,endline,hun_check:boolean;
begin
  if qry_s0.fieldbyname('dailyaql').value=true then begin
    pline:=qry_s0.fieldbyname('pline').value;
    j2_job:=qry_s0.fieldbyname('j2_job').value;
    cstyle:=qry_s0.fieldbyname('cstyle').value;
    acol1:=qry_s0.fieldbyname('acol1').value;
    seq:=qry_s0.fieldbyname('seq').value;
    dailyaql:=qry_s0.fieldbyname('dailyaql').value;
    dailyaql1:=qry_s0.fieldbyname('dailyaql1').value;
    endline:=qry_s0.fieldbyname('endline').value;
    hun_check:=qry_s0.fieldbyname('hun_check').value;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftboolean,'x1',ptinput);
      params.createparam(ftboolean,'x2',ptinput);
      params.createparam(ftboolean,'x3',ptinput);
      params.createparam(ftboolean,'x4',ptinput);
      commandtext:='select max(dellot) as x1 from tbl_aql_s0 where dailyaql=:x1 and dailyaql1=:x2 and endline=:x3 and hun_check=:x4 '
                  +'and seq<>'+inttostr(seq)+' and cstyle='''+cstyle+''' and acol1='''+acol1+'''';
      params[0].asboolean:=dailyaql;
      params[1].asboolean:=dailyaql1;
      params[2].asboolean:=endline;
      params[3].asboolean:=hun_check;
      open;
      if not fieldbyname('x1').isnull then dellot:=fieldbyname('x1').value+1 else dellot:=1;
    end;
    if qry_s0.fieldbyname('audit1').value=true then begin
      if qry_s0.fieldbyname('dellot').value<dellot then qry_s0.fieldbyname('dellot').value:=dellot;
    end else if ((qry_s0.fieldbyname('audit2').value=true) or (qry_s0.fieldbyname('audit3').value=true)) then begin
      if qry_s0.fieldbyname('dellot').value>=dellot then exit;
    end;
  end;
end;

procedure Tfrmaqlmain.SocketConnection1BeforeConnect(Sender: TObject);
var
  s1:string;
begin
  memo1.Lines.clear;
  memo1.Lines.LoadFromFile('aqlconip.ini');
  s1:=memo1.Lines.Strings[0];
  if pos(' ',s1)>0 then s1:=copy(s1,1,pos(' ',s1)-1);
  socketconnection1.Address:=s1;
  socketconnection1.ServerName:=memo1.Lines.Strings[2];
end;

procedure Tfrmaqlmain.qry_s4BeforePost(DataSet: TDataSet);
begin
  if not qry_s4.fieldbyname('siz').isnull then
  siz:=qry_s4.fieldbyname('siz').value else siz:='*';
end;

procedure Tfrmaqlmain.AQLRejectQty1stAudit1Click(Sender: TObject);
begin
  if frmaql_rejqty=nil then frmaql_rejqty:=tfrmaql_rejqty.create(nil);
  frmaql_rejqty.caption:='AQL Reject Qty (1st Audit)';
  frmaql_rejqty.label4.caption:='AQL';
  frmaql_rejqty.show;
end;

procedure Tfrmaqlmain.FullAuditQtydefectmorethan51Click(Sender: TObject);
begin
  if frmaql_rejqty=nil then frmaql_rejqty:=tfrmaql_rejqty.create(nil);
  frmaql_rejqty.caption:='Full Audit Qty (defect% more than 5%)';
  frmaql_rejqty.label4.caption:='FAUDIT';
  frmaql_rejqty.show;
end;

procedure Tfrmaqlmain.print42(const v1: string);
var
  ver:string;
begin
  screen.cursor:=crSQLWait;
  try
  ver:='';
  with query1 do begin
    close;
    params.clear;
    commandtext:='select ver from tbl_aql_podver';
    open;
    ver:=fieldbyname('ver').value;
  end;
  //with query42 do begin
  with adodataset2 do begin
    close;
    //params.clear;
    //commandtext:='select * from tbl_aql_rpt2';
    commandtext:='select * from phdb..tbl_aql_rpt2';
    if v1='2' then commandtext:=commandtext+' where us1=1 and us2=0 and us3=0'
    else if v1='3' then commandtext:=commandtext+' where us2=1 and us1=0 and us3=0'
    else if v1='4' then commandtext:=commandtext+' where us3=1 and us1=0 and us2=0';
    open;
    if not fieldbyname('seq').isnull then begin
      if v1='1' then title003.caption:=''
      else if v1='2' then title003.Caption:='- Measure only 只使用於量度'
      else if v1='3' then title003.caption:='- Operation only 只使用於工序'
      else if v1='4' then title003.caption:='- Casing Only 只使用於裝箱';
      if v1<>'1' then ppSummaryBand1.visible:=false
      else ppSummaryBand1.visible:=true;
      ttl005.caption:=ver;
      ppReport3.Print;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmaqlmain.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  t1,t2,t3:integer;
begin
  t1:=0; t2:=0; t3:=0;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select count(*) as x1 from tbl_aql_rpt2 where us1=1';
    if frmaql_print3.xh2.Checked then commandtext:=commandtext+' and us1=1 and us2=0 and us3=0'
    else if frmaql_print3.xh3.Checked then commandtext:=commandtext+' and us2=1 and us1=0 and us3=0'
    else if frmaql_print3.xh4.Checked then commandtext:=commandtext+' and us3=1 and us1=0 and us2=0';
    open;
    if not fieldbyname('x1').isnull then t1:=fieldbyname('x1').Value;
  end;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select count(*) as x1 from tbl_aql_rpt2 where us2=1';
    if frmaql_print3.xh2.Checked then commandtext:=commandtext+' and us1=1 and us2=0 and us3=0'
    else if frmaql_print3.xh3.Checked then commandtext:=commandtext+' and us2=1 and us1=0 and us3=0'
    else if frmaql_print3.xh4.Checked then commandtext:=commandtext+' and us3=1 and us1=0 and us2=0';
    open;
    if not fieldbyname('x1').isnull then t2:=fieldbyname('x1').Value;
  end;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select count(*) as x1 from tbl_aql_rpt2 where us3=1';
    if frmaql_print3.xh2.Checked then commandtext:=commandtext+' and us1=1 and us2=0 and us3=0'
    else if frmaql_print3.xh3.Checked then commandtext:=commandtext+' and us2=1 and us1=0 and us3=0'
    else if frmaql_print3.xh4.Checked then commandtext:=commandtext+' and us3=1 and us1=0 and us2=0';
    open;
    if not fieldbyname('x1').isnull then t3:=fieldbyname('x1').Value;
  end;
  ttl001.Caption:=inttostr(t1);
  ttl002.Caption:=inttostr(t2);
  ttl003.Caption:=inttostr(t3);
end;

end.

