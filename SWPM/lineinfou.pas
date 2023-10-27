unit lineinfou;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, Grids, DBGridEh, ExtCtrls, DBCtrls, Buttons, ComCtrls,
  StdCtrls, Mask, DBCtrlsEh, ppCtrls, myChkBox,
  ppPrnabl, ppClass, ppDB, ppBands, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, ppDBBDE, ppVar, ppViewr, GridsEh, Menus,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxClasses, cxGridLevel, cxGrid,
  cxDBData, cxGridDBBandedTableView, cxCurrencyEdit, cxDropDownEdit,
  cxGridCustomPopupMenu, cxGridPopupMenu, ppParameter, cxLookAndFeels,
  cxLookAndFeelPainters, cxGridDBTableView, siComp;

type
  Tfrmlineinfo = class(TForm)
    tblline: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBNavigator1: TDBNavigator;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label32: TLabel;
    Edit1: TEdit;
    Label33: TLabel;
    Edit2: TEdit;
    SpeedButton6: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    GroupBox3: TGroupBox;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    GroupBox4: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    DataSource2: TDataSource;
    ClientDataSet3: TClientDataSet;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppLabel9: TppLabel;
    ppDBText10: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel10: TppLabel;
    ppShape1: TppShape;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel18: TppLabel;
    ppDBText16: TppDBText;
    ppLabel19: TppLabel;
    ppDBText17: TppDBText;
    ppLabel20: TppLabel;
    ppShape3: TppShape;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText19: TppDBText;
    ppLabel23: TppLabel;
    ppDBText20: TppDBText;
    ppLabel24: TppLabel;
    ppDBText21: TppDBText;
    ppLabel25: TppLabel;
    ppDBText22: TppDBText;
    ppLabel26: TppLabel;
    ppDBText23: TppDBText;
    ppLabel27: TppLabel;
    ppDBText24: TppDBText;
    ppLabel28: TppLabel;
    ppDBText25: TppDBText;
    ppShape4: TppShape;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText26: TppDBText;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel43: TppLabel;
    x001: TppLabel;
    ppLabel52: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel53: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    d01: TppLabel;
    d02: TppLabel;
    d03: TppLabel;
    d05: TppLabel;
    d06: TppLabel;
    d07: TppLabel;
    s01: TppLabel;
    s02: TppLabel;
    ppLabel56: TppLabel;
    ppLine2: TppLine;
    ppLabel57: TppLabel;
    ppLine3: TppLine;
    Label42: TLabel;
    Edit3: TEdit;
    Label43: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit30: TDBEdit;
    x09: TppLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    ppLabel60: TppLabel;
    ppDBText44: TppDBText;
    DBCheckBox2: TDBCheckBox;
    Label44: TLabel;
    DBEdit31: TDBEdit;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel61: TppLabel;
    ppDBText45: TppDBText;
    ppLabel62: TppLabel;
    Label30: TLabel;
    DBEdit32: TDBEdit;
    ppDBText46: TppDBText;
    SpeedButton9: TSpeedButton;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    fty001: TppLabel;
    ppLabel65: TppLabel;
    shop001: TppLabel;
    ppLabel66: TppLabel;
    line001: TppLabel;
    ppShape11: TppShape;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppDBText47: TppDBText;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel72: TppLabel;
    line002: TppLabel;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label31: TLabel;
    DBEdit33: TDBEdit;
    Label34: TLabel;
    DBEdit34: TDBEdit;
    GroupBox6: TGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    ppShape12: TppShape;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppShape13: TppShape;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    GroupBox9: TGroupBox;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    Label10: TLabel;
    Label41: TLabel;
    ppShape14: TppShape;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppShape15: TppShape;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppLabel84: TppLabel;
    ppShape16: TppShape;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppLabel88: TppLabel;
    ppDBText62: TppDBText;
    Label46: TLabel;
    DBEdit10: TDBEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label40: TLabel;
    DBEdit40: TDBEdit;
    Label45: TLabel;
    DBEdit43: TDBEdit;
    Label47: TLabel;
    DBEdit44: TDBEdit;
    Label48: TLabel;
    DBEdit45: TDBEdit;
    Label49: TLabel;
    DBEdit46: TDBEdit;
    ppShape17: TppShape;
    ppLabel81: TppLabel;
    ppLabel85: TppLabel;
    ppShape18: TppShape;
    ppLabel89: TppLabel;
    ppShape19: TppShape;
    ppLabel90: TppLabel;
    ppDBText56: TppDBText;
    ppLabel91: TppLabel;
    ppDBText61: TppDBText;
    ppLabel92: TppLabel;
    ppDBText63: TppDBText;
    ppLabel93: TppLabel;
    ppDBText64: TppDBText;
    ppLabel94: TppLabel;
    ppDBText65: TppDBText;
    ppLabel95: TppLabel;
    ppDBText66: TppDBText;
    ppLabel96: TppLabel;
    ppDBText67: TppDBText;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    title001: TppLabel;
    ppLabel98: TppLabel;
    ppShape20: TppShape;
    ppLabel99: TppLabel;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppLabel102: TppLabel;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppDBText77: TppDBText;
    ppLabel107: TppLabel;
    ppDBText78: TppDBText;
    ppShape21: TppShape;
    ppLabel108: TppLabel;
    ppDBText79: TppDBText;
    ppLabel109: TppLabel;
    ppDBText80: TppDBText;
    ppLabel110: TppLabel;
    ppDBText81: TppDBText;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppDBText82: TppDBText;
    ltime001: TppLabel;
    n1001: TppLabel;
    n2001: TppLabel;
    ot1001: TppLabel;
    ot2001: TppLabel;
    ppLabel97: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ttlwks01: TppLabel;
    ttlwks02: TppLabel;
    ttlfty01: TppLabel;
    ttlfty02: TppLabel;
    ttlline01: TppLabel;
    ttlline02: TppLabel;
    ppLabel114: TppLabel;
    dinn001: TppLabel;
    ppLabel118: TppLabel;
    ppDBText35: TppDBText;
    ppLabel119: TppLabel;
    ppDBText36: TppDBText;
    ppLabel120: TppLabel;
    ppDBText37: TppDBText;
    ppLabel121: TppLabel;
    ppDBText38: TppDBText;
    ppLabel122: TppLabel;
    ppDBText39: TppDBText;
    ppLabel123: TppLabel;
    ppDBText40: TppDBText;
    ppLabel124: TppLabel;
    ppDBText41: TppDBText;
    ppLabel125: TppLabel;
    ppDBText68: TppDBText;
    DBCheckBox3: TDBCheckBox;
    DBDateTimeEditEh4: TDBDateTimeEditEh;
    ppLabel126: TppLabel;
    ppDBText69: TppDBText;
    myDBCheckBox3: TmyDBCheckBox;
    Label56: TLabel;
    DBComboBox2: TDBComboBox;
    ppLabel127: TppLabel;
    ppDBText75: TppDBText;
    Label50: TLabel;
    DBEdit47: TDBEdit;
    Bevel3: TBevel;
    Label51: TLabel;
    Label52: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    Label60: TLabel;
    DBEdit54: TDBEdit;
    Label61: TLabel;
    Label62: TLabel;
    SpeedButton12: TSpeedButton;
    ppSummaryBand2: TppSummaryBand;
    wfty01: TppLabel;
    wshop01: TppLabel;
    ppLabel15: TppLabel;
    dkb01: TppLabel;
    dsl01: TppLabel;
    ppLabel16: TppLabel;
    ppDBText13: TppDBText;
    ppLabel17: TppLabel;
    ppLabel115: TppLabel;
    Label11: TLabel;
    lsl01: TLabel;
    lkb01: TLabel;
    myDBCheckBox4: TmyDBCheckBox;
    myDBCheckBox5: TmyDBCheckBox;
    myDBCheckBox6: TmyDBCheckBox;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    l01: TppLabel;
    dt01: TppLabel;
    l02: TppLabel;
    dt02: TppLabel;
    x01: TppLabel;
    x02: TppLabel;
    ppLabel5: TppLabel;
    ppLabel135: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ex01: TppLabel;
    ex02: TppLabel;
    ex03: TppLabel;
    ppLabel7: TppLabel;
    ppLabel133: TppLabel;
    x003: TppLabel;
    ppLabel136: TppLabel;
    ppLabel45: TppLabel;
    ppShape2: TppShape;
    ppLabel51: TppLabel;
    ppLabel14: TppLabel;
    ltime002: TppLabel;
    n1002: TppLabel;
    n2002: TppLabel;
    ot1002: TppLabel;
    ot2002: TppLabel;
    dinn002: TppLabel;
    ppLabel48: TppLabel;
    ltime003: TppLabel;
    n1003: TppLabel;
    n2003: TppLabel;
    ot1003: TppLabel;
    ot2003: TppLabel;
    dinn003: TppLabel;
    ppLabel141: TppLabel;
    ltime004: TppLabel;
    n1004: TppLabel;
    n2004: TppLabel;
    ot1004: TppLabel;
    ot2004: TppLabel;
    dinn004: TppLabel;
    ppLabel148: TppLabel;
    ltime005: TppLabel;
    n1005: TppLabel;
    n2005: TppLabel;
    ot1005: TppLabel;
    ot2005: TppLabel;
    dinn005: TppLabel;
    ppLabel155: TppLabel;
    ltime006: TppLabel;
    n1006: TppLabel;
    n2006: TppLabel;
    ot1006: TppLabel;
    ot2006: TppLabel;
    dinn006: TppLabel;
    ppLabel162: TppLabel;
    ltime007: TppLabel;
    n1007: TppLabel;
    n2007: TppLabel;
    ot1007: TppLabel;
    ot2007: TppLabel;
    dinn007: TppLabel;
    ppShape5: TppShape;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel58: TppLabel;
    ppLabel128: TppLabel;
    p01: TppLabel;
    p05: TppLabel;
    p06: TppLabel;
    p02: TppLabel;
    p07: TppLabel;
    p03: TppLabel;
    ppLabel134: TppLabel;
    ppLabel139: TppLabel;
    ppDBText8: TppDBText;
    ppDBText14: TppDBText;
    tx01: TppLabel;
    tx02: TppLabel;
    ppLabel140: TppLabel;
    ppLabel142: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    line0002: TppLabel;
    PopupMenu1: TPopupMenu;
    ChangeLine1: TMenuItem;
    Label53: TLabel;
    DBEdit12: TDBEdit;
    Label54: TLabel;
    DBEdit13: TDBEdit;
    ppLabel59: TppLabel;
    ppDBText15: TppDBText;
    ppLabel143: TppLabel;
    ppDBText18: TppDBText;
    Label55: TLabel;
    Label63: TLabel;
    DBEdit50: TDBEdit;
    DBEdit55: TDBEdit;
    Label64: TLabel;
    Label65: TLabel;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    ppLabel144: TppLabel;
    ppDBText34: TppDBText;
    ppLabel145: TppLabel;
    ppDBText42: TppDBText;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppDBText43: TppDBText;
    ppDBText76: TppDBText;
    d04: TppLabel;
    d08: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    p08: TppLabel;
    p04: TppLabel;
    Label66: TLabel;
    DBEdit58: TDBEdit;
    Label67: TLabel;
    DBEdit59: TDBEdit;
    ppLabel149: TppLabel;
    ppDBText83: TppDBText;
    ppLabel150: TppLabel;
    ppDBText84: TppDBText;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Label68: TLabel;
    Label69: TLabel;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    Label70: TLabel;
    Label71: TLabel;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    ClientDataSet4: TClientDataSet;
    ClientDataSet5: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppLabel154: TppLabel;
    ppLabel156: TppLabel;
    ppShape6: TppShape;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppShape7: TppShape;
    ppLine6: TppLine;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
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
    ppLine7: TppLine;
    ppLabel161: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppLabel166: TppLabel;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    factory001: TppLabel;
    ppLabel167: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel168: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    cxStyle2: TcxStyle;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxGridPopupMenu1: TcxGridPopupMenu;
    GridBandedTableViewStyleSheetDevExpress: TcxGridBandedTableViewStyleSheet;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    SpeedButton15: TSpeedButton;
    usr1: TppLabel;
    usr2: TppLabel;
    DBGridEh1: TDBGridEh;
    tbllinePLINE: TWideStringField;
    tbllineYSJHL: TFloatField;
    tbllineGY: TFloatField;
    tbllineFYL: TFloatField;
    tbllineWORKERO: TIntegerField;
    tbllineWORKERT: TIntegerField;
    tbllineLDESC: TWideStringField;
    tbllineTEFF: TFloatField;
    tbllineTSHOP: TWideStringField;
    tbllineTPLANT: TWideStringField;
    tbllineTHEAD: TWideStringField;
    tbllineTTYPE: TWideStringField;
    tbllineLDATE: TDateField;
    tbllineWORKERI: TWideStringField;
    tbllineTTYPE1: TWideStringField;
    tbllineLDESC1: TWideStringField;
    tbllineSECTO: TIntegerField;
    tbllineSECTT: TIntegerField;
    tbllineSECTOX: TIntegerField;
    tbllineLXDATE: TDateField;
    tbllineLACTIVE: TBooleanField;
    tbllineLEARN1: TIntegerField;
    tbllineLEARN2: TIntegerField;
    tbllineLEARN3: TIntegerField;
    tbllineLEARN4: TIntegerField;
    tbllineLEFF1: TFloatField;
    tbllineLEFF2: TFloatField;
    tbllineLEFF3: TFloatField;
    tbllineLEFF4: TFloatField;
    tbllineLEFFT: TFloatField;
    tbllineLAEFF: TFloatField;
    tbllineSBSJ: TWideStringField;
    tbllineSJ1: TTimeField;
    tbllineSJ2: TTimeField;
    tbllineSJ3: TTimeField;
    tbllineSJ4: TTimeField;
    tbllineLEARN5: TIntegerField;
    tbllineLEARN6: TIntegerField;
    tbllineLEFF5: TFloatField;
    tbllineLEFF6: TFloatField;
    tbllineSJ5: TTimeField;
    tbllineSJ6: TTimeField;
    tbllineSJ7: TTimeField;
    tbllineSJ8: TTimeField;
    tbllineSJ9: TTimeField;
    tbllineSJ10: TTimeField;
    tbllineSHF: TWideStringField;
    tbllineSFTC: TWideStringField;
    tbllineLTYPE: TWideStringField;
    tbllineLBDT: TDateField;
    tbllineSHPMGR: TWideStringField;
    tbllineLBACT: TBooleanField;
    tbllineWF1: TIntegerField;
    tbllineWF2: TIntegerField;
    tbllineWF3: TIntegerField;
    tbllineWF4: TIntegerField;
    tbllineWF5: TFloatField;
    tbllineWF6: TFloatField;
    tbllineWF7: TFloatField;
    tbllineWF8: TFloatField;
    tbllineWF9: TFloatField;
    tbllineWF10: TFloatField;
    tbllineWF11: TFloatField;
    tbllineWF12: TFloatField;
    tbllineWF13: TFloatField;
    tbllineWF14: TFloatField;
    tbllineWF15: TFloatField;
    tbllineWF16: TFloatField;
    tbllineWF17: TFloatField;
    tbllineWF18: TFloatField;
    tbllineWF19: TFloatField;
    tbllineWF20: TFloatField;
    tbllineWF21: TFloatField;
    tbllineWF22: TFloatField;
    tbllineWF23: TFloatField;
    tbllineWF24: TFloatField;
    tbllineWF25: TFloatField;
    tbllineWF26: TFloatField;
    tbllineWF27: TFloatField;
    tbllineWF28: TFloatField;
    tbllineWF29: TFloatField;
    tbllineSECTT1: TFloatField;
    tbllineWF41: TFloatField;
    tbllineWF42: TFloatField;
    tbllineWF43: TFloatField;
    tbllineWF44: TFloatField;
    tbllineWF45: TFloatField;
    tbllineWF46: TFloatField;
    tbllineWF47: TFloatField;
    tbllineWF48: TFloatField;
    tbllineRFIDS: TBooleanField;
    tbllineRFIDD: TDateField;
    tbllineRFIDP: TWideStringField;
    tbllineGRD: TWideStringField;
    tbllineO1: TBooleanField;
    tbllineB1: TBooleanField;
    tbllineR1: TBooleanField;
    tbllineWF_CODE: TWideStringField;
    tbllineSTB: TFloatField;
    tbllineADPT: TFloatField;
    tbllineLEARN7: TIntegerField;
    tbllineLEARN8: TIntegerField;
    tbllineLEFF7: TFloatField;
    tbllineLEFF8: TFloatField;
    tbllineLEARN9: TIntegerField;
    tbllineLEARN10: TIntegerField;
    tbllineLEFF9: TFloatField;
    tbllineLEFF10: TFloatField;
    SpeedButton16: TSpeedButton;
    tbllineNEED_MP: TBooleanField;
    rg01: TRadioGroup;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    d09: TppLabel;
    d10: TppLabel;
    p09: TppLabel;
    p10: TppLabel;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    tbllinePCUST1: TWideStringField;
    tbllineC1R: TFloatField;
    tbllineC1P: TFloatField;
    tbllinePCUST2: TWideStringField;
    tbllineC2R: TFloatField;
    tbllineC2P: TFloatField;
    tbllinePCUST3: TWideStringField;
    tbllineC3R: TFloatField;
    tbllineC3P: TFloatField;
    tbllinePCUST4: TWideStringField;
    tbllineC4R: TFloatField;
    tbllineC4P: TFloatField;
    tbllinePCUST5: TWideStringField;
    tbllineC5R: TFloatField;
    tbllineC5P: TFloatField;
    BitBtn1: TBitBtn;
    TabSheet3: TTabSheet;
    tblline_wf: TClientDataSet;
    DataSource4: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1FTY: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PROD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1P01: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1P02: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1P03: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1P04: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PTTL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1F01: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1F02: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1F03: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1F04: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FTTL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1A01: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1A02: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1A03: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1A04: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ATTL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1E01: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1E02: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1E03: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1E04: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ETTL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1T01: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1T02: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1T03: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1T04: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TTL: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    tbllineFALE: TBooleanField;
    siLang1: TsiLang;
    tbllineSIM_LINE: TBooleanField;
    tbllineLINE_SEQ: TWideStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure tbllineAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure tbllineNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure tbllineLEARN1Change(Sender: TField);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure tbllineSFTCChange(Sender: TField);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure tbllineWORKEROChange(Sender: TField);
    procedure SpeedButton9Click(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure tbllineWF5Change(Sender: TField);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure tbllineBeforeDelete(DataSet: TDataSet);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ChangeLine1Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tbllineWF7Change(Sender: TField);
    procedure SpeedButton15Click(Sender: TObject);
    procedure ppFooterBand1BeforePrint(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure SpeedButton16Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tblline_wfAfterOpen(DataSet: TDataSet);
    procedure tblline_wfq01change(Sender: TField);
    procedure tblline_wfAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlineinfo: Tfrmlineinfo;
  logseq:integer;

implementation

uses mainformu, scxdyformu, learnformu, calcformu, fprofileformu, wprofileformu,
  swf_profileformu, lineactiveformu, changelineformu, ftylearnformu,
  simfactoryformu, line_mappingformu, line_wfformu;

{$R *.DFM}

procedure Tfrmlineinfo.SpeedButton1Click(Sender: TObject);
begin
  if (tblline.state=dsinsert) or (tblline.state=dsedit) then tblline.post;
  if tblline_wf.state=dsedit then tblline_wf.post;
end;

procedure Tfrmlineinfo.SpeedButton2Click(Sender: TObject);
var
  tt01,xy01:integer;
  st01,lts01,st02,lts02,st03,st04:string;
begin
  screen.cursor:=crHourglass;
  if (tblline.state=dsinsert) or (tblline.state=dsedit) then tblline.post;
  if pagecontrol1.ActivePageIndex=0 then begin
    if frmscxdy=nil then frmscxdy:=tfrmscxdy.Create(nil);
    frmscxdy.show;
  end else begin
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select st01,et01,lts01,lte01,st02,et02,lts02,lte02,st03,et03,st04,et04 from tbl_shift where sftc='''+tblline.fieldbyname('sftc').value+'''';
      open;
      if not fieldbyname('st01').isnull then st01:=formatdatetime('hh:nn',fieldbyname('st01').value) else st01:='';
      if not fieldbyname('et01').isnull then st01:=st01+' - '+formatdatetime('hh:nn',fieldbyname('et01').value) else st01:=st01+' - ';
      if not fieldbyname('lts01').isnull then lts01:=formatdatetime('hh:nn',fieldbyname('lts01').value) else lts01:='';
      if not fieldbyname('lte01').isnull then lts01:=lts01+' - '+formatdatetime('hh:nn',fieldbyname('lte01').value) else lts01:=lts01+' - ';
      if not fieldbyname('st02').isnull then st02:=formatdatetime('hh:nn',fieldbyname('st02').value) else st02:='';
      if not fieldbyname('et02').isnull then st02:=st02+' - '+formatdatetime('hh:nn',fieldbyname('et02').value) else st02:=st02+' - ';
      if not fieldbyname('lts02').isnull then lts02:=formatdatetime('hh:nn',fieldbyname('lts02').value) else lts02:='';
      if not fieldbyname('lte02').isnull then lts02:=lts02+' - '+formatdatetime('hh:nn',fieldbyname('lte02').value) else lts02:=lts02+' - ';
      if not fieldbyname('st03').isnull then st03:=formatdatetime('hh:nn',fieldbyname('st03').value) else st03:='';
      if not fieldbyname('et03').isnull then st03:=st03+' - '+formatdatetime('hh:nn',fieldbyname('et03').value) else st03:=st03+' - ';
      if not fieldbyname('st04').isnull then st04:=formatdatetime('hh:nn',fieldbyname('st04').value) else st04:='';
      if not fieldbyname('et04').isnull then st04:=st04+' - '+formatdatetime('hh:nn',fieldbyname('et04').value) else st04:=st04+' - ';
    end;
    xy01:=20;
    with clientdataset3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='select * from tblline where pline=:x1';
      params[0].asstring:=tblline.fieldbyname('pline').value;
      open;
      tt01:=fieldbyname('learn1').value+fieldbyname('learn2').value+fieldbyname('learn3').value+fieldbyname('learn4').value+fieldbyname('learn5').value+fieldbyname('learn6').value+fieldbyname('learn7').value+fieldbyname('learn8').value+fieldbyname('learn9').value+fieldbyname('learn10').value;
      if fieldbyname('tplant').value='KB' then xy01:=20 else xy01:=24;
      d01.Caption:=' / '+formatfloat('#0.0',fieldbyname('learn1').Value/xy01);
      p01.Caption:='('+formatfloat('#0.0',fieldbyname('learn1').Value/xy01)+'-'+formatfloat('#0.0',fieldbyname('learn1').Value/xy01)+')';
      d02.Caption:=' / '+formatfloat('#0.0',fieldbyname('learn2').Value/xy01);
      p02.Caption:='('+formatfloat('#0.0',(fieldbyname('learn1').Value)/xy01)+'-'
      +formatfloat('#0.0',(fieldbyname('learn1').value+fieldbyname('learn2').Value)/xy01)+')';
      d03.Caption:=' / '+formatfloat('#0.0',fieldbyname('learn3').Value/xy01);
      p03.Caption:='('+formatfloat('#0.0',(fieldbyname('learn2').Value+fieldbyname('learn1').value)/xy01)+'-'
      +formatfloat('#0.0',(fieldbyname('learn1').value+fieldbyname('learn2').value+fieldbyname('learn3').Value)/xy01)+')';
      d04.Caption:=' / '+formatfloat('#0.0',fieldbyname('learn4').Value/xy01);
      p04.Caption:='('+formatfloat('#0.0',(fieldbyname('learn3').Value+fieldbyname('learn2').value+fieldbyname('learn1').value)/xy01)+'-'
      +formatfloat('#0.0',(fieldbyname('learn1').value+fieldbyname('learn2').value+fieldbyname('learn3').Value+fieldbyname('learn4').Value)/xy01)+')';
      d05.Caption:=' / '+formatfloat('#0.0',fieldbyname('learn5').Value/xy01);
      p05.Caption:='('+formatfloat('#0.0',(fieldbyname('learn4').Value+fieldbyname('learn3').value+fieldbyname('learn2').value+fieldbyname('learn1').value)/xy01)+'-'
      +formatfloat('#0.0',(fieldbyname('learn1').value+fieldbyname('learn2').value+fieldbyname('learn3').Value+fieldbyname('learn4').Value+fieldbyname('learn5').Value)/xy01)+')';
      d06.Caption:=' / '+formatfloat('#0.0',fieldbyname('learn6').Value/xy01);
      p06.Caption:='('+formatfloat('#0.0',(fieldbyname('learn5').Value+fieldbyname('learn4').value+fieldbyname('learn3').value+fieldbyname('learn2').value+fieldbyname('learn1').value)/xy01)+'-'
      +formatfloat('#0.0',(fieldbyname('learn1').value+fieldbyname('learn2').value+fieldbyname('learn3').Value+fieldbyname('learn4').Value+fieldbyname('learn5').Value+fieldbyname('learn6').Value)/xy01)+')';

      d07.Caption:=' / '+formatfloat('#0.0',fieldbyname('learn7').Value/xy01);
      p07.Caption:='('+formatfloat('#0.0',(fieldbyname('learn6').value+fieldbyname('learn5').Value+fieldbyname('learn4').value+fieldbyname('learn3').value+fieldbyname('learn2').value+fieldbyname('learn1').value)/xy01)+'-'
      +formatfloat('#0.0',(fieldbyname('learn1').value+fieldbyname('learn2').value+fieldbyname('learn3').Value+fieldbyname('learn4').Value+fieldbyname('learn5').Value+fieldbyname('learn6').Value+fieldbyname('learn7').value)/xy01)+')';

      d08.Caption:=' / '+formatfloat('#0.0',fieldbyname('learn8').Value/xy01);
      p08.Caption:='('+formatfloat('#0.0',(fieldbyname('learn7').value+fieldbyname('learn6').value+fieldbyname('learn5').Value+fieldbyname('learn4').value+fieldbyname('learn3').value+fieldbyname('learn2').value+fieldbyname('learn1').value)/xy01)+'-'
      +formatfloat('#0.0',(fieldbyname('learn1').value+fieldbyname('learn2').value+fieldbyname('learn3').Value+fieldbyname('learn4').Value+fieldbyname('learn5').Value+fieldbyname('learn6').Value+fieldbyname('learn7').value+fieldbyname('learn8').value)/xy01)+')';

      d09.Caption:=' / '+formatfloat('#0.0',fieldbyname('learn9').Value/xy01);
      p09.Caption:='('+formatfloat('#0.0',(fieldbyname('learn8').value+fieldbyname('learn7').value+fieldbyname('learn6').value+fieldbyname('learn5').Value+fieldbyname('learn4').value+fieldbyname('learn3').value+fieldbyname('learn2').value+fieldbyname('learn1').value)/xy01)+'-'
      +formatfloat('#0.0',(fieldbyname('learn1').value+fieldbyname('learn2').value+fieldbyname('learn3').Value+fieldbyname('learn4').Value+fieldbyname('learn5').Value+fieldbyname('learn6').Value+fieldbyname('learn7').value+fieldbyname('learn8').value+fieldbyname('learn9').value)/xy01)+')';

      d10.Caption:=' / '+formatfloat('#0.0',fieldbyname('learn10').Value/xy01);
      p10.Caption:='('+formatfloat('#0.0',(fieldbyname('learn9').value+fieldbyname('learn8').value+fieldbyname('learn7').value+fieldbyname('learn6').value+fieldbyname('learn5').Value+fieldbyname('learn4').value+fieldbyname('learn3').value+fieldbyname('learn2').value+fieldbyname('learn1').value)/xy01)+'-'
      +formatfloat('#0.0',(fieldbyname('learn1').value+fieldbyname('learn2').value+fieldbyname('learn3').Value+fieldbyname('learn4').Value+fieldbyname('learn5').Value+fieldbyname('learn6').Value+fieldbyname('learn7').value+fieldbyname('learn8').value+fieldbyname('learn9').value+fieldbyname('learn10').value)/xy01)+')';

      s01.Caption:=inttostr(tt01);
      s02.Caption:=' / Total Working Days: '+formatfloat('#0.0',tt01/xy01);
      title001.Caption:='-  '+fieldbyname('pline').value;
      x09.Caption:='(from 1st phase / '+s01.Caption+' sect hr)';

      n1001.Caption:=st01;
      ltime001.Caption:=lts01;
      n2001.Caption:=st02;
      dinn001.Caption:=lts02;
      ot1001.Caption:=st03;
      ot2001.Caption:=st04;
      n1002.Caption:=st01;
      ltime002.Caption:=lts01;
      n2002.Caption:=st02;
      dinn002.Caption:=lts02;
      ot1002.Caption:=st03;
      ot2002.Caption:=st04;
      n1003.Caption:=st01;
      ltime003.Caption:=lts01;
      n2003.Caption:=st02;
      dinn003.Caption:=lts02;
      ot1003.Caption:=st03;
      ot2003.Caption:=st04;
      n1004.Caption:=st01;
      ltime004.Caption:=lts01;
      n2004.Caption:=st02;
      dinn004.Caption:=lts02;
      ot1004.Caption:=st03;
      ot2004.Caption:=st04;
      n1005.Caption:=st01;
      ltime005.Caption:=lts01;
      n2005.Caption:=st02;
      dinn005.Caption:=lts02;
      ot1005.Caption:=st03;
      ot2005.Caption:=st04;
      n1006.Caption:=st01;
      ltime006.Caption:=lts01;
      n2006.Caption:=st02;
      dinn006.Caption:='';
      ot1006.Caption:='';
      ot2006.Caption:='';
      n1007.Caption:='n.a.';
      ltime007.Caption:='n.a.';
      n2007.Caption:='n.a.';
      dinn007.Caption:='n.a.';
      ot1007.Caption:='n.a.';
      ot2007.Caption:='n.a.';

      x003.Caption:=inttostr(xy01);
      if tblline.FieldByName('tplant').value='KB' then begin
        dkb01.Visible:=true;
        dsl01.Visible:=false;
      end else begin
        dsl01.Visible:=true;
        dkb01.Visible:=false;
      end;
      ppReport1.Print;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmlineinfo.tbllineAfterPost(DataSet: TDataSet);
var
  pline,ldesc,tshop,thead,ttype,ttype1,ldesc1,tplant,workeri,sftc,shf:string;
  ysjhl,gy,fyl,teff,lefft,leff1,leff2,leff3,leff4,leff5,leff6,leff7,leff8,leff9,leff10,laeff:double;
  workero,workert,sectt,secto,sectox,learn1,learn2,learn3,learn4,learn5,learn6,learn7,learn8,learn9,learn10:integer;
  ldate,lxdate,sj1,sj2,sj3,sj4,sj5,sj6,sj7,sj8,sj9,sj10:tdatetime;
  lactive,fale:boolean;
  str1:string;
begin
  //if tblline.ApplyUpdates(-1)>0 then begin
    if not tblline.fieldbyname('tplant').isnull then tplant:=tblline.fieldbyname('tplant').value
    else tplant:=' ';
    if not tblline.fieldbyname('ldesc').isnull then ldesc:=tblline.fieldbyname('ldesc').value
    else ldesc:=' ';
    if not tblline.fieldbyname('ldesc1').isnull then ldesc1:=tblline.fieldbyname('ldesc1').value
    else ldesc1:=' ';
    if not tblline.fieldbyname('ttype').isnull then ttype:=tblline.fieldbyname('ttype').value
    else ttype:=' ';
    if not tblline.fieldbyname('ttype1').isnull then ttype1:=tblline.fieldbyname('ttype1').value
    else ttype1:=' ';
    if not tblline.fieldbyname('ldate').isnull then ldate:=tblline.fieldbyname('ldate').value
    else ldate:=encodedate(1899,12,30);
    if not tblline.fieldbyname('lactive').isnull then lactive:=tblline.fieldbyname('lactive').value
    else lactive:=true;
    if not tblline.fieldbyname('fale').isnull then fale:=tblline.fieldbyname('fale').value
    else fale:=false;
    if not tblline.fieldbyname('pline').isnull then pline:=tblline.fieldbyname('pline').value
    else pline:=' ';
    if not tblline.fieldbyname('thead').isnull then thead:=tblline.fieldbyname('thead').value
    else thead:=' ';
    if not tblline.fieldbyname('lxdate').isnull then lxdate:=tblline.fieldbyname('lxdate').value
    else lxdate:=encodedate(1899,12,30);
    if not tblline.fieldbyname('workero').isnull then workero:=tblline.fieldbyname('workero').value
    else workero:=25;
    if not tblline.fieldbyname('workert').isnull then workert:=tblline.fieldbyname('workert').value
    else workert:=25;
    if not tblline.fieldbyname('workeri').isnull then workeri:=tblline.fieldbyname('workeri').value
    else workeri:=' ';
    if not tblline.fieldbyname('sectt').IsNull then sectt:=tblline.fieldbyname('sectt').value
    else sectt:=0;
    if not tblline.fieldbyname('secto').IsNull then secto:=tblline.fieldbyname('secto').value
    else secto:=0;
    if not tblline.fieldbyname('sectox').IsNull then sectox:=tblline.fieldbyname('sectox').value
    else sectox:=0;
    if not tblline.fieldbyname('ysjhl').isnull then ysjhl:=tblline.fieldbyname('ysjhl').value
    else ysjhl:=100;
    if not tblline.fieldbyname('gy').isnull then gy:=tblline.fieldbyname('gy').value else gy:=0;
    //gy:=1;
    fyl:=1;
    if not tblline.fieldbyname('teff').isnull then teff:=tblline.fieldbyname('teff').value
    else teff:=100;
    if not tblline.fieldbyname('tshop').isnull then tshop:=tblline.fieldbyname('tshop').value
    else tshop:=' ';
    if not tblline.fieldbyname('learn1').IsNull then learn1:=tblline.fieldbyname('learn1').value
    else learn1:=44;
    if not tblline.fieldbyname('learn2').IsNull then learn2:=tblline.fieldbyname('learn2').value
    else learn2:=88;
    if not tblline.fieldbyname('learn3').IsNull then learn3:=tblline.fieldbyname('learn3').value
    else learn3:=88;
    if not tblline.fieldbyname('learn4').IsNull then learn4:=tblline.fieldbyname('learn4').value
    else learn4:=110;
    if not tblline.fieldbyname('learn5').IsNull then learn5:=tblline.fieldbyname('learn5').value
    else learn5:=0;
    if not tblline.fieldbyname('learn6').IsNull then learn6:=tblline.fieldbyname('learn6').value
    else learn6:=0;
    if not tblline.fieldbyname('learn7').IsNull then learn7:=tblline.fieldbyname('learn7').value
    else learn7:=0;
    if not tblline.fieldbyname('learn8').IsNull then learn8:=tblline.fieldbyname('learn8').value
    else learn8:=0;
    if not tblline.fieldbyname('learn9').IsNull then learn9:=tblline.fieldbyname('learn9').value
    else learn9:=0;
    if not tblline.fieldbyname('learn10').IsNull then learn10:=tblline.fieldbyname('learn10').value
    else learn10:=0;
    if not tblline.fieldbyname('lefft').isnull then lefft:=tblline.fieldbyname('lefft').value
    else lefft:=100;
    if not tblline.fieldbyname('leff1').isnull then leff1:=tblline.fieldbyname('leff1').value
    else leff1:=60;
    if not tblline.fieldbyname('leff2').isnull then leff2:=tblline.fieldbyname('leff2').value
    else leff2:=80;
    if not tblline.fieldbyname('leff3').isnull then leff3:=tblline.fieldbyname('leff3').value
    else leff3:=90;
    if not tblline.fieldbyname('leff4').isnull then leff4:=tblline.fieldbyname('leff4').value
    else leff4:=100;
    if not tblline.fieldbyname('leff5').isnull then leff5:=tblline.fieldbyname('leff5').value
    else leff5:=0;
    if not tblline.fieldbyname('leff6').isnull then leff6:=tblline.fieldbyname('leff6').value
    else leff6:=0;
    if not tblline.fieldbyname('leff7').isnull then leff7:=tblline.fieldbyname('leff7').value
    else leff7:=0;
    if not tblline.fieldbyname('leff8').isnull then leff8:=tblline.fieldbyname('leff8').value
    else leff8:=0;
    if not tblline.fieldbyname('leff9').isnull then leff9:=tblline.fieldbyname('leff9').value
    else leff9:=0;
    if not tblline.fieldbyname('leff10').isnull then leff10:=tblline.fieldbyname('leff10').value
    else leff10:=0;
    if not tblline.fieldbyname('laeff').isnull then laeff:=tblline.fieldbyname('laeff').value
    else laeff:=80;
    if not tblline.fieldbyname('sj1').isnull then sj1:=tblline.fieldbyname('sj1').value;
    if not tblline.fieldbyname('sj2').isnull then sj2:=tblline.fieldbyname('sj2').value;
    if not tblline.fieldbyname('sj3').isnull then sj3:=tblline.fieldbyname('sj3').value;
    if not tblline.fieldbyname('sj4').isnull then sj4:=tblline.fieldbyname('sj4').value;
    if not tblline.fieldbyname('sj5').isnull then sj5:=tblline.fieldbyname('sj5').value;
    if not tblline.fieldbyname('sj6').isnull then sj6:=tblline.fieldbyname('sj6').value;
    if not tblline.fieldbyname('sj7').isnull then sj7:=tblline.fieldbyname('sj7').value;
    if not tblline.fieldbyname('sj8').isnull then sj8:=tblline.fieldbyname('sj8').value;
    if not tblline.fieldbyname('sj9').isnull then sj9:=tblline.fieldbyname('sj9').value;
    if not tblline.fieldbyname('sj10').isnull then sj10:=tblline.fieldbyname('sj10').value;
    if not tblline.fieldbyname('sftc').isnull then sftc:=tblline.fieldbyname('sftc').value
    else sftc:='';
    if not tblline.fieldbyname('shf').isnull then shf:=tblline.fieldbyname('shf').value
    else shf:='';
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'pline',ptinput);
      commandtext:='select pline from tblline where pline=:pline';
      params[0].asstring:=pline;
      open;
      if not fieldbyname('pline').isnull then begin
        {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'tplant',ptinput);
          params.createparam(ftstring,'ldesc',ptinput);
          params.createparam(ftstring,'ldesc1',ptinput);
          params.createparam(ftstring,'ttype',ptinput);
          params.createparam(ftstring,'ttype1',ptinput);
          params.createparam(ftdate,'ldate',ptinput);
          params.createparam(ftboolean,'lactive',ptinput);
          params.createparam(ftstring,'thead',ptinput);
          params.createparam(ftdate,'lxdate',ptinput);
          params.createparam(ftinteger,'workero',ptinput);
          params.createparam(ftinteger,'workert',ptinput);
          params.createparam(ftstring,'workeri',ptinput);
          params.createparam(ftinteger,'sectt',ptinput);
          params.createparam(ftinteger,'secto',ptinput);
          params.createparam(ftinteger,'sectox',ptinput);
          params.createparam(ftfloat,'ysjhl',ptinput);
          params.createparam(ftfloat,'gy',ptinput);
          params.createparam(ftfloat,'fyl',ptinput);
          params.createparam(ftfloat,'teff',ptinput);
          params.createparam(ftstring,'tshop',ptinput);
          params.createparam(ftinteger,'learn1',ptinput);
          params.createparam(ftinteger,'learn2',ptinput);
          params.createparam(ftinteger,'learn3',ptinput);
          params.createparam(ftinteger,'learn4',ptinput);
          params.createparam(ftfloat,'lefft',ptinput);
          params.createparam(ftfloat,'leff1',ptinput);
          params.createparam(ftfloat,'leff2',ptinput);
          params.createparam(ftfloat,'leff3',ptinput);
          params.createparam(ftfloat,'leff4',ptinput);
          params.createparam(ftfloat,'laeff',ptinput);
          params.createparam(ftstring,'sbsj',ptinput);
          params.createparam(ftinteger,'learn5',ptinput);
          params.createparam(ftinteger,'learn6',ptinput);
          params.createparam(ftfloat,'leff5',ptinput);
          params.createparam(ftfloat,'leff6',ptinput);
          params.createparam(fttime,'sj1',ptinput);
          params.createparam(fttime,'sj2',ptinput);
          params.createparam(fttime,'sj3',ptinput);
          params.createparam(fttime,'sj4',ptinput);
          params.createparam(fttime,'sj5',ptinput);
          params.createparam(fttime,'sj6',ptinput);
          params.createparam(fttime,'sj7',ptinput);
          params.createparam(fttime,'sj8',ptinput);
          params.createparam(fttime,'sj9',ptinput);
          params.createparam(fttime,'sj10',ptinput);
          params.createparam(ftstring,'sftc',ptinput);
          params.createparam(ftstring,'shf',ptinput);
          params.createparam(ftdate,'lbdt',ptinput);
          params.createparam(ftboolean,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftinteger,'f1',ptinput);
          params.createparam(ftinteger,'f2',ptinput);
          params.createparam(ftinteger,'f3',ptinput);
          params.createparam(ftinteger,'f4',ptinput);
          params.createparam(ftfloat,'f5',ptinput);
          params.createparam(ftfloat,'f6',ptinput);
          params.createparam(ftfloat,'f7',ptinput);
          params.createparam(ftfloat,'f8',ptinput);
          params.createparam(ftfloat,'f9',ptinput);
          params.createparam(ftfloat,'f10',ptinput);
          params.createparam(ftfloat,'f11',ptinput);
          params.createparam(ftfloat,'f12',ptinput);
          params.createparam(ftfloat,'f13',ptinput);
          params.createparam(ftfloat,'f14',ptinput);
          params.createparam(ftfloat,'f15',ptinput);
          params.createparam(ftfloat,'f16',ptinput);
          params.createparam(ftfloat,'f17',ptinput);
          params.createparam(ftfloat,'f18',ptinput);
          params.createparam(ftfloat,'f19',ptinput);
          params.createparam(ftfloat,'f20',ptinput);
          params.createparam(ftfloat,'f21',ptinput);
          params.createparam(ftfloat,'f22',ptinput);
          params.createparam(ftfloat,'f23',ptinput);
          params.createparam(ftfloat,'f24',ptinput);
          params.createparam(ftfloat,'f25',ptinput);
          params.createparam(ftfloat,'f26',ptinput);
          params.createparam(ftfloat,'f27',ptinput);
          params.createparam(ftfloat,'f28',ptinput);
          params.createparam(ftfloat,'f29',ptinput);
          params.createparam(ftfloat,'sectt1',ptinput);
          params.createparam(ftboolean,'rfids',ptinput);
          params.createparam(ftdate,'rfidd',ptinput);
          params.createparam(ftstring,'rfidp',ptinput);
          params.createparam(ftstring,'grd',ptinput);
          params.createparam(ftboolean,'o1',ptinput);
          params.createparam(ftboolean,'b1',ptinput);
          params.createparam(ftboolean,'r1',ptinput);
          params.createparam(ftfloat,'stb',ptinput);
          params.createparam(ftfloat,'adpt',ptinput);
          params.createparam(ftinteger,'lr7',ptinput);
          params.createparam(ftinteger,'lr8',ptinput);
          params.createparam(ftfloat,'le7',ptinput);
          params.createparam(ftfloat,'le8',ptinput);
          params.createparam(ftinteger,'lr9',ptinput);
          params.createparam(ftinteger,'lr10',ptinput);
          params.createparam(ftfloat,'le9',ptinput);
          params.createparam(ftfloat,'le10',ptinput);
          params.createparam(ftstring,'pline',ptinput);
          commandtext:='update tblline set tplant=:tplant,ldesc=:ldesc,ldesc1=:ldesc1,ttype=:ttype,ttype1=:ttype1,'
                      +'ldate=:ldate,lactive=:lactive,thead=:thead,lxdate=:lxdate,workero=:workero,workert=:workert,'
                      +'workeri=:workeri,sectt=:sectt,secto=:secto,sectox=:sectox,ysjhl=:ysjhl,gy=:gy,fyl=:fyl,'
                      +'teff=:teff,tshop=:tshop,learn1=:learn1,learn2=:learn2,learn3=:learn3,learn4=:learn4,'
                      +'lefft=:lefft,leff1=:leff1,leff2=:leff2,leff3=:leff3,leff4=:leff4,laeff=:laeff,sbsj=:sbsj,'
                      +'learn5=:learn5,learn6=:learn6,leff5=:leff5,leff6=:leff6,sj1=:sj1,sj2=:sj2,sj3=:sj3,sj4=:sj4,'
                      +'sj5=:sj5,sj6=:sj6,sj7=:sj7,sj8=:sj8,sj9=:sj9,sj10=:sj10,sftc=:sftc,shf=:shf,lbdt=:lbdt,'
                      +'lbact=:x1,shpmgr=:x2,wf1=:f1,wf2=:f2,wf3=:f3,wf4=:f4,wf5=:f5,wf6=:f6,wf7=:f7,wf8=:f8,wf9=:f9,wf10=:f10,'
                      +'wf11=:f11,wf12=:f12,wf13=:f13,wf14=:f14,wf15=:f15,wf16=:f16,wf17=:f17,wf18=:f18,wf19=:f19,wf20=:f20,'
                      +'wf21=:f21,wf22=:f22,wf23=:f23,wf24=:f24,wf25=:f25,wf26=:f26,wf27=:f27,wf28=:f28,wf29=:f29,'
                      +'sectt1=:sectt1,rfids=:rfids,rfidd=:rfidd,rfidp=:rfidp,grd=:grd,o1=:o1,b1=:b1,r1=:r1,stb=:stb,adpt=:adpt,'
                      +'learn7=:lr7,learn8=:lr8,leff7=:le7,leff8=:le8,learn9=:lr9,learn10=:lr10,leff9=:le9,leff10=:le10 where pline=:pline';
          str1:='update tblline set ';
          str1:=str1+'tplant='''+tplant+''',';
          str1:=str1+'ldesc='''+ldesc+''',';
          str1:=str1+'ldesc1='''+ldesc1+''',';
          str1:=str1+'ttype='''+ttype+''',';
          str1:=str1+'ttype1='''+ttype1+''',';
          str1:=str1+'ldate='''+formatdatetime('yyyy-MM-dd',ldate)+''',';
          if lactive=true then str1:=str1+'lactive=1,'
          else str1:=str1+'lactive=0,';
          str1:=str1+'thead='''+thead+''',';
          str1:=str1+'lxdate='''+formatdatetime('yyyy-MM-dd',lxdate)+''',';
          str1:=str1+'workero='+inttostr(workero)+',';
          str1:=str1+'workert='+workert+',';
          str1:=str1+'workeri='''+workeri+''',';
          str1:=str1+'sectt='+inttostr(sectt)+',';
          str1:=str1+'secto='+inttostr(secto)+',';
          str1:=str1+'sectox='+inttostr(sectox)+',';
          str1:=str1+'ysjhl='+floattostr(ysjhl)+',';
          str1:=str1+'gy='+floattostr(gy)+',';
          str1:=str1+'fyl='+floattostr(fyl)+',';
          str1:=str1+'teff='+floattostr(teff)+',';
          str1:=str1+'tshop='''+tshop+''',';
          str1:=str1+'learn1='+inttostr(learn1)+',';
          str1:=str1+'learn2='+inttostr(learn2)+',';
          str1:=str1+'learn3='+inttostr(learn3)+',';
          str1:=str1+'learn4='+inttostr(learn4)+',';
          str1:=str1+'lefft='+floattostr(lefft)+',';
          str1:=str1+'leff1='+floattostr(leff1)+',';
          str1:=str1+'leff2='+floattostr(leff2)+',';
          str1:=str1+'leff3='+floattostr(leff3)+',';
          str1:=str1+'leff4='+floattostr(leff4)+',';
          str1:=str1+'laeff='+floattostr(laeff)+',';
          if not tblline.FieldByName('sbsj').isnull then
          str1:=str1+'sbsj='''+tblline.fieldbyname('sbsj').value+''','
          else str1:=str1+'sbsj='''',';
          str1:=str1+'learn5='+inttostr(learn5)+',';
          str1:=str1+'learn6='+inttostr(learn6)+',';
          str1:=str1+'leff5='+floattostr(leff5)+',';
          str1:=str1+'leff6='+floattostr(leff6)+',';
          str1:=str1+'sj1='''+formatdatetime('hh:nn:ss',sj1)+''',';
          str1:=str1+'sj2='''+formatdatetime('hh:nn:ss',sj2)+''',';
          str1:=str1+'sj3='''+formatdatetime('hh:nn:ss',sj3)+''',';
          str1:=str1+'sj4='''+formatdatetime('hh:nn:ss',sj4)+''',';
          str1:=str1+'sj5='''+formatdatetime('hh:nn:ss',sj5)+''',';
          str1:=str1+'sj6='''+formatdatetime('hh:nn:ss',sj6)+''',';
          str1:=str1+'sj7='''+formatdatetime('hh:nn:ss',sj7)+''',';
          str1:=str1+'sj8='''+formatdatetime('hh:nn:ss',sj8)+''',';
          str1:=str1+'sj9='''+formatdatetime('hh:nn:ss',sj9)+''',';
          str1:=str1+'sj10='''+formatdatetime('hh:nn:ss',sj10)+''',';
          str1:=str1+'sftc='''+sftc+''',';
          str1:=str1+'shf='''+shf+''',';
          if not tblline.FieldByName('lbdt').isnull then
          str1:=str1+'lbdt='''+formatdatetime('yyyy-MM-dd',tblline.fieldbyname('lbdt').value)+''','
          else str1:=str1+'lbdt=null,';
          if not tblline.fieldbyname('lbact').isnull then begin
            if tblline.fieldbyname('lbact').value=true then str1:=str1+'lbact=1,'
            else str1:=str1+'lbact=0,';
          end else str1:=str1+'lbact=0,';
          if not tblline.fieldbyname('shpmgr').isnull then
          str1:=str1+'shpmgr='''+tblline.fieldbyname('shpmgr').value+''','
          else str1:=str1+'shpmgr='''',';
          if not tblline.FieldByName('wf1').IsNull then
          str1:=str1+'wf1='+tblline.fieldbyname('wf1').asstring+','
          else str1:=str1+'wf1=0,';
          if not tblline.FieldByName('wf2').IsNull then
          str1:=str1+'wf2='+tblline.fieldbyname('wf2').asstring+','
          else str1:=str1+'wf2=0,';
          if not tblline.FieldByName('wf3').IsNull then
          str1:=str1+'wf3='+tblline.fieldbyname('wf3').asstring+','
          else str1:=str1+'wf3=0,';
          if not tblline.FieldByName('wf4').IsNull then
          str1:=str1+'wf4='+tblline.fieldbyname('wf4').asstring+','
          else str1:=str1+'wf4=0,';
          if not tblline.FieldByName('wf5').IsNull then
          str1:=str1+'wf5='+tblline.fieldbyname('wf5').asstring+','
          else str1:=str1+'wf5=0,';
          if not tblline.FieldByName('wf6').IsNull then
          str1:=str1+'wf6='+tblline.fieldbyname('wf6').asstring+','
          else str1:=str1+'wf6=0,';
          if not tblline.FieldByName('wf7').IsNull then
          str1:=str1+'wf7='+tblline.fieldbyname('wf7').asstring+','
          else str1:=str1+'wf7=0,';
          if not tblline.FieldByName('wf8').IsNull then
          str1:=str1+'wf8='+tblline.fieldbyname('wf8').asstring+','
          else str1:=str1+'wf8=0,';
          if not tblline.FieldByName('wf9').IsNull then
          str1:=str1+'wf9='+tblline.fieldbyname('wf9').asstring+','
          else str1:=str1+'wf9=0,';
          if not tblline.FieldByName('wf10').IsNull then
          str1:=str1+'wf10='+tblline.fieldbyname('wf10').asstring+','
          else str1:=str1+'wf10=0,';
          if not tblline.FieldByName('wf11').IsNull then
          str1:=str1+'wf11='+tblline.fieldbyname('wf11').asstring+','
          else str1:=str1+'wf11=0,';
          if not tblline.FieldByName('wf12').IsNull then
          str1:=str1+'wf12='+tblline.fieldbyname('wf12').asstring+','
          else str1:=str1+'wf12=0,';
          if not tblline.FieldByName('wf13').IsNull then
          str1:=str1+'wf13='+tblline.fieldbyname('wf13').asstring+','
          else str1:=str1+'wf13=0,';
          if not tblline.FieldByName('wf14').IsNull then
          str1:=str1+'wf14='+tblline.fieldbyname('wf14').asstring+','
          else str1:=str1+'wf14=0,';
          if not tblline.FieldByName('wf15').IsNull then
          str1:=str1+'wf15='+tblline.fieldbyname('wf15').asstring+','
          else str1:=str1+'wf15=0,';
          if not tblline.FieldByName('wf16').IsNull then
          str1:=str1+'wf16='+tblline.fieldbyname('wf16').asstring+','
          else str1:=str1+'wf16=0,';
          if not tblline.FieldByName('wf17').IsNull then
          str1:=str1+'wf17='+tblline.fieldbyname('wf17').asstring+','
          else str1:=str1+'wf17=0,';
          if not tblline.FieldByName('wf18').IsNull then
          str1:=str1+'wf18='+tblline.fieldbyname('wf18').asstring+','
          else str1:=str1+'wf18=0,';
          if not tblline.FieldByName('wf19').IsNull then
          str1:=str1+'wf19='+tblline.fieldbyname('wf19').asstring+','
          else str1:=str1+'wf19=0,';
          if not tblline.FieldByName('wf20').IsNull then
          str1:=str1+'wf20='+tblline.fieldbyname('wf20').asstring+','
          else str1:=str1+'wf20=0,';
          if not tblline.FieldByName('wf21').IsNull then
          str1:=str1+'wf21='+tblline.fieldbyname('wf21').asstring+','
          else str1:=str1+'wf21=0,';
          if not tblline.FieldByName('wf22').IsNull then
          str1:=str1+'wf22='+tblline.fieldbyname('wf22').asstring+','
          else str1:=str1+'wf22=0,';
          if not tblline.FieldByName('wf23').IsNull then
          str1:=str1+'wf23='+tblline.fieldbyname('wf23').asstring+','
          else str1:=str1+'wf23=0,';
          if not tblline.FieldByName('wf24').IsNull then
          str1:=str1+'wf24='+tblline.fieldbyname('wf24').asstring+','
          else str1:=str1+'wf24=0,';
          if not tblline.FieldByName('wf25').IsNull then
          str1:=str1+'wf25='+tblline.fieldbyname('wf25').asstring+','
          else str1:=str1+'wf25=0,';
          if not tblline.FieldByName('wf26').IsNull then
          str1:=str1+'wf26='+tblline.fieldbyname('wf26').asstring+','
          else str1:=str1+'wf26=0,';
          if not tblline.FieldByName('wf27').IsNull then
          str1:=str1+'wf27='+tblline.fieldbyname('wf27').asstring+','
          else str1:=str1+'wf27=0,';
          if not tblline.FieldByName('wf28').IsNull then
          str1:=str1+'wf28='+tblline.fieldbyname('wf28').asstring+','
          else str1:=str1+'wf28=0,';
          if not tblline.FieldByName('wf29').IsNull then
          str1:=str1+'wf29='+tblline.fieldbyname('wf29').asstring+','
          else str1:=str1+'wf29=0,';
          if not tblline.fieldbyname('sectt1').isnull then
          str1:=str1+'sectt1='+tblline.fieldbyname('sectt1').asstring+','
          else str1:=str1+'sectt1=0,';
          if not tblline.fieldbyname('rfids').isnull then begin
            if tblline.fieldbyname('rfids').value=true then str1:=str1+'rfids=1,'
            else str1:=str1+'rfids=0,';
          end else str1:=str1+'rfids=0,';
          if not tblline.fieldbyname('rfidd').isnull then
          str1:=str1+'rfidd='''+formatdatetime('yyyy-MM-dd',tblline.fieldbyname('rfidd').value)+''','
          else str1:=str1+'rfidd=null,';
          if not tblline.fieldbyname('rfidp').isnull then
          str1:=str1+'rfidp='''+tblline.fieldbyname('rfidp').value+''','
          else str1:=str1+'rfidp=''0'',';
          if not tblline.fieldbyname('grd').isnull then
          str1:=str1+'grd='''+tblline.fieldbyname('grd').value+''','
          else str1:=str1+'grd='''',';
          if not tblline.fieldbyname('o1').isnull then begin
            if tblline.fieldbyname('o1').value=true then str1:=str1+'o1=1,'
            else str1:=str1+'o1=0,';
          end else str1:=str1+'o1=0,';
          if not tblline.fieldbyname('b1').isnull then begin
            if tblline.fieldbyname('b1').value=true then str1:=str1+'b1=1,'
            else str1:=str1+'b1=0,';
          end else str1:=str1+'b1=0,';
          if not tblline.fieldbyname('r1').isnull then begin
            if tblline.fieldbyname('r1').value=true then str1:=str1+'r1=1,'
            else str1:=str1+'r1=0,';
          end else str1:=str1+'r1=0,';
          if not tblline.fieldbyname('stb').isnull then
          str1:=str1+'stb='+floattostr(tblline.fieldbyname('stb').value)+','
          else str1:=str1+'stb=100,';
          if not tblline.fieldbyname('adpt').isnull then
          str1:=str1+'adpt='+floattostr(tblline.fieldbyname('adpt').value)+','
          else str1:=str1+'adpt=100,';
          str1:=str1+'learn7='+inttostr(learn7)+',';
          str1:=str1+'learn8='+inttostr(learn8)+',';
          str1:=str1+'leff7='+floattostr(leff7)+',';
          str1:=str1+'leff8='+floattostr(leff8)+',';
          str1:=str1+'learn9='+inttostr(learn9)+',';
          str1:=str1+'learn10='+inttostr(learn10)+',';
          str1:=str1+'leff9='+floattostr(leff9)+',';
          str1:=str1+'leff10='+floattostr(leff10)+' ';
          str1:=str1+'where pline='''+pline+'''';

          params[0].asstring:=tplant;
          params[1].asstring:=ldesc;
          params[2].asstring:=ldesc1;
          params[3].asstring:=ttype;
          params[4].asstring:=ttype1;
          params[5].asdate:=ldate;
          params[6].asboolean:=lactive;
          params[7].asstring:=thead;
          params[8].asdate:=lxdate;
          params[9].asinteger:=workero;
          params[10].asinteger:=workert;
          params[11].asstring:=workeri;
          params[12].asinteger:=sectt;
          params[13].asinteger:=secto;
          params[14].asinteger:=sectox;
          params[15].asfloat:=ysjhl;
          params[16].asfloat:=gy;
          params[17].asfloat:=fyl;
          params[18].asfloat:=teff;
          params[19].asstring:=tshop;
          params[20].asinteger:=learn1;
          params[21].asinteger:=learn2;
          params[22].asinteger:=learn3;
          params[23].asinteger:=learn4;
          params[24].asfloat:=lefft;
          params[25].asfloat:=leff1;
          params[26].asfloat:=leff2;
          params[27].asfloat:=leff3;
          params[28].asfloat:=leff4;
          params[29].asfloat:=laeff;
          if not tblline.FieldByName('sbsj').isnull then
          params[30].asstring:=tblline.fieldbyname('sbsj').value
          else params[30].asstring:=' ';
          params[31].asinteger:=learn5;
          params[32].asinteger:=learn6;
          params[33].asfloat:=leff5;
          params[34].asfloat:=leff6;
          params[35].astime:=sj1;
          params[36].astime:=sj2;
          params[37].astime:=sj3;
          params[38].astime:=sj4;
          params[39].astime:=sj5;
          params[40].astime:=sj6;
          params[41].astime:=sj7;
          params[42].astime:=sj8;
          params[43].astime:=sj9;
          params[44].astime:=sj10;
          params[45].asstring:=sftc;
          params[46].asstring:=shf;
          if not tblline.FieldByName('lbdt').isnull then
          params[47].asdate:=tblline.fieldbyname('lbdt').value;
          if not tblline.fieldbyname('lbact').isnull then
          params[48].asboolean:=tblline.fieldbyname('lbact').value
          else params[48].asboolean:=false;
          if not tblline.fieldbyname('shpmgr').isnull then
          params[49].asstring:=tblline.fieldbyname('shpmgr').value
          else params[49].asstring:='';
          if not tblline.FieldByName('wf1').IsNull then
          params[50].asinteger:=tblline.fieldbyname('wf1').value
          else params[50].asinteger:=0;
          if not tblline.FieldByName('wf2').IsNull then
          params[51].asinteger:=tblline.fieldbyname('wf2').value
          else params[51].asinteger:=0;
          if not tblline.FieldByName('wf3').IsNull then
          params[52].asinteger:=tblline.fieldbyname('wf3').value
          else params[52].asinteger:=0;
          if not tblline.FieldByName('wf4').IsNull then
          params[53].asinteger:=tblline.fieldbyname('wf4').value
          else params[53].asinteger:=0;
          if not tblline.FieldByName('wf5').IsNull then
          params[54].asfloat:=tblline.fieldbyname('wf5').value
          else params[54].asfloat:=0;
          if not tblline.FieldByName('wf6').IsNull then
          params[55].asfloat:=tblline.fieldbyname('wf6').value
          else params[55].asfloat:=0;
          if not tblline.FieldByName('wf7').IsNull then
          params[56].asfloat:=tblline.fieldbyname('wf7').value
          else params[56].asfloat:=0;
          if not tblline.FieldByName('wf8').IsNull then
          params[57].asfloat:=tblline.fieldbyname('wf8').value
          else params[57].asfloat:=0;
          if not tblline.FieldByName('wf9').IsNull then
          params[58].asfloat:=tblline.fieldbyname('wf9').value
          else params[58].asfloat:=0;
          if not tblline.FieldByName('wf10').IsNull then
          params[59].asfloat:=tblline.fieldbyname('wf10').value
          else params[59].asfloat:=0;
          if not tblline.FieldByName('wf11').IsNull then
          params[60].asfloat:=tblline.fieldbyname('wf11').value
          else params[60].asfloat:=0;
          if not tblline.FieldByName('wf12').IsNull then
          params[61].asfloat:=tblline.fieldbyname('wf12').value
          else params[61].asfloat:=0;
          if not tblline.FieldByName('wf13').IsNull then
          params[62].asfloat:=tblline.fieldbyname('wf13').value
          else params[62].asfloat:=0;
          if not tblline.FieldByName('wf14').IsNull then
          params[63].asfloat:=tblline.fieldbyname('wf14').value
          else params[63].asfloat:=0;
          if not tblline.FieldByName('wf15').IsNull then
          params[64].asfloat:=tblline.fieldbyname('wf15').value
          else params[64].asfloat:=0;
          if not tblline.FieldByName('wf16').IsNull then
          params[65].asfloat:=tblline.fieldbyname('wf16').value
          else params[65].asfloat:=0;
          if not tblline.FieldByName('wf17').IsNull then
          params[66].asfloat:=tblline.fieldbyname('wf17').value
          else params[66].asfloat:=0;
          if not tblline.FieldByName('wf18').IsNull then
          params[67].asfloat:=tblline.fieldbyname('wf18').value
          else params[67].asfloat:=0;
          if not tblline.FieldByName('wf19').IsNull then
          params[68].asfloat:=tblline.fieldbyname('wf19').value
          else params[68].asfloat:=0;
          if not tblline.FieldByName('wf20').IsNull then
          params[69].asfloat:=tblline.fieldbyname('wf20').value
          else params[69].asfloat:=0;
          if not tblline.FieldByName('wf21').IsNull then
          params[70].asfloat:=tblline.fieldbyname('wf21').value
          else params[70].asfloat:=0;
          if not tblline.FieldByName('wf22').IsNull then
          params[71].asfloat:=tblline.fieldbyname('wf22').value
          else params[71].asfloat:=0;
          if not tblline.FieldByName('wf23').IsNull then
          params[72].asfloat:=tblline.fieldbyname('wf23').value
          else params[72].asfloat:=0;
          if not tblline.FieldByName('wf24').IsNull then
          params[73].asfloat:=tblline.fieldbyname('wf24').value
          else params[73].asfloat:=0;
          if not tblline.FieldByName('wf25').IsNull then
          params[74].asfloat:=tblline.fieldbyname('wf25').value
          else params[74].asfloat:=0;
          if not tblline.FieldByName('wf26').IsNull then
          params[75].asfloat:=tblline.fieldbyname('wf26').value
          else params[75].asfloat:=0;
          if not tblline.FieldByName('wf27').IsNull then
          params[76].asfloat:=tblline.fieldbyname('wf27').value
          else params[76].asfloat:=0;
          if not tblline.FieldByName('wf28').IsNull then
          params[77].asfloat:=tblline.fieldbyname('wf28').value
          else params[77].asfloat:=0;
          if not tblline.FieldByName('wf29').IsNull then
          params[78].asfloat:=tblline.fieldbyname('wf29').value
          else params[78].asfloat:=0;
          if not tblline.fieldbyname('sectt1').isnull then
          params[79].asfloat:=tblline.fieldbyname('sectt1').value
          else params[79].asfloat:=0;
          if not tblline.fieldbyname('rfids').isnull then
          params[80].asboolean:=tblline.fieldbyname('rfids').value
          else params[80].asboolean:=false;
          if not tblline.fieldbyname('rfidd').isnull then
          params[81].asdate:=tblline.fieldbyname('rfidd').value;
          if not tblline.fieldbyname('rfidp').isnull then
          params[82].asstring:=tblline.fieldbyname('rfidp').value
          else params[82].asstring:='0';
          if not tblline.fieldbyname('grd').isnull then
          params[83].asstring:=tblline.fieldbyname('grd').value
          else params[83].asstring:='';
          if not tblline.fieldbyname('o1').isnull then
          params[84].asboolean:=tblline.fieldbyname('o1').value
          else params[84].asboolean:=false;
          if not tblline.fieldbyname('b1').isnull then
          params[85].asboolean:=tblline.fieldbyname('b1').value
          else params[85].asboolean:=false;
          if not tblline.fieldbyname('r1').isnull then
          params[86].asboolean:=tblline.fieldbyname('r1').value
          else params[86].asboolean:=false;
          if not tblline.fieldbyname('stb').isnull then
          params[87].asfloat:=tblline.fieldbyname('stb').value
          else params[87].asfloat:=100;
          if not tblline.fieldbyname('adpt').isnull then
          params[88].asfloat:=tblline.fieldbyname('adpt').value
          else params[88].asfloat:=100;
          params[89].asinteger:=learn7;
          params[90].asinteger:=learn8;
          params[91].asfloat:=leff7;
          params[92].asfloat:=leff8;
          params[93].asinteger:=learn9;
          params[94].asinteger:=learn10;
          params[95].asfloat:=leff9;
          params[96].asfloat:=leff10;
          params[97].asstring:=pline;
          execute;
        end;
        }
          str1:='update tblline set ';
          str1:=str1+'tplant='''+tplant+''',';
          str1:=str1+'ldesc='''+ldesc+''',';
          str1:=str1+'ldesc1='''+ldesc1+''',';
          str1:=str1+'ttype='''+ttype+''',';
          str1:=str1+'ttype1='''+ttype1+''',';
          if tblline.fieldbyname('ldate').isnull then str1:=str1+'ldate=null,'
          else str1:=str1+'ldate='''+formatdatetime('yyyy-MM-dd',ldate)+''',';
          if lactive=true then str1:=str1+'lactive=1,'
          else str1:=str1+'lactive=0,';
          if fale=true then str1:=str1+'fale=1,'
          else str1:=str1+'fale=0,';
          str1:=str1+'thead='''+thead+''',';
          if tblline.fieldbyname('lxdate').isnull then str1:=str1+'lxdate=null,'
          else str1:=str1+'lxdate='''+formatdatetime('yyyy-MM-dd',lxdate)+''',';
          str1:=str1+'workero='+inttostr(workero)+',';
          str1:=str1+'workert='+inttostr(workert)+',';
          str1:=str1+'workeri='''+workeri+''',';
          str1:=str1+'sectt='+inttostr(sectt)+',';
          str1:=str1+'secto='+inttostr(secto)+',';
          str1:=str1+'sectox='+inttostr(sectox)+',';
          str1:=str1+'ysjhl='+floattostr(ysjhl)+',';
          str1:=str1+'gy='+floattostr(gy)+',';
          str1:=str1+'fyl='+floattostr(fyl)+',';
          str1:=str1+'teff='+floattostr(teff)+',';
          str1:=str1+'tshop='''+tshop+''',';
          str1:=str1+'learn1='+inttostr(learn1)+',';
          str1:=str1+'learn2='+inttostr(learn2)+',';
          str1:=str1+'learn3='+inttostr(learn3)+',';
          str1:=str1+'learn4='+inttostr(learn4)+',';
          str1:=str1+'lefft='+floattostr(lefft)+',';
          str1:=str1+'leff1='+floattostr(leff1)+',';
          str1:=str1+'leff2='+floattostr(leff2)+',';
          str1:=str1+'leff3='+floattostr(leff3)+',';
          str1:=str1+'leff4='+floattostr(leff4)+',';
          str1:=str1+'laeff='+floattostr(laeff)+',';
          if not tblline.FieldByName('sbsj').isnull then
          str1:=str1+'sbsj='''+tblline.fieldbyname('sbsj').value+''','
          else str1:=str1+'sbsj='''',';
          str1:=str1+'learn5='+inttostr(learn5)+',';
          str1:=str1+'learn6='+inttostr(learn6)+',';
          str1:=str1+'leff5='+floattostr(leff5)+',';
          str1:=str1+'leff6='+floattostr(leff6)+',';
          str1:=str1+'sj1='''+formatdatetime('hh:nn:ss',sj1)+''',';
          str1:=str1+'sj2='''+formatdatetime('hh:nn:ss',sj2)+''',';
          str1:=str1+'sj3='''+formatdatetime('hh:nn:ss',sj3)+''',';
          str1:=str1+'sj4='''+formatdatetime('hh:nn:ss',sj4)+''',';
          str1:=str1+'sj5='''+formatdatetime('hh:nn:ss',sj5)+''',';
          str1:=str1+'sj6='''+formatdatetime('hh:nn:ss',sj6)+''',';
          str1:=str1+'sj7='''+formatdatetime('hh:nn:ss',sj7)+''',';
          str1:=str1+'sj8='''+formatdatetime('hh:nn:ss',sj8)+''',';
          str1:=str1+'sj9='''+formatdatetime('hh:nn:ss',sj9)+''',';
          str1:=str1+'sj10='''+formatdatetime('hh:nn:ss',sj10)+''',';
          str1:=str1+'sftc='''+sftc+''',';
          str1:=str1+'shf='''+shf+''',';
          if not tblline.FieldByName('lbdt').isnull then
          str1:=str1+'lbdt='''+formatdatetime('yyyy-MM-dd',tblline.fieldbyname('lbdt').value)+''','
          else str1:=str1+'lbdt=null,';
          if not tblline.fieldbyname('lbact').isnull then begin
            if tblline.fieldbyname('lbact').value=true then str1:=str1+'lbact=1,'
            else str1:=str1+'lbact=0,';
          end else str1:=str1+'lbact=0,';
          if not tblline.fieldbyname('shpmgr').isnull then
          str1:=str1+'shpmgr='''+tblline.fieldbyname('shpmgr').value+''','
          else str1:=str1+'shpmgr='''',';
          if not tblline.fieldbyname('line_seq').isnull then
          str1:=str1+'line_seq='''+tblline.fieldbyname('line_seq').value+''','
          else str1:=str1+'line_seq='''',';
          if not tblline.FieldByName('wf1').IsNull then
          str1:=str1+'wf1='+tblline.fieldbyname('wf1').asstring+','
          else str1:=str1+'wf1=0,';
          if not tblline.FieldByName('wf2').IsNull then
          str1:=str1+'wf2='+tblline.fieldbyname('wf2').asstring+','
          else str1:=str1+'wf2=0,';
          if not tblline.FieldByName('wf3').IsNull then
          str1:=str1+'wf3='+tblline.fieldbyname('wf3').asstring+','
          else str1:=str1+'wf3=0,';
          if not tblline.FieldByName('wf4').IsNull then
          str1:=str1+'wf4='+tblline.fieldbyname('wf4').asstring+','
          else str1:=str1+'wf4=0,';
          if not tblline.FieldByName('wf5').IsNull then
          str1:=str1+'wf5='+tblline.fieldbyname('wf5').asstring+','
          else str1:=str1+'wf5=0,';
          if not tblline.FieldByName('wf6').IsNull then
          str1:=str1+'wf6='+tblline.fieldbyname('wf6').asstring+','
          else str1:=str1+'wf6=0,';
          if not tblline.FieldByName('wf7').IsNull then
          str1:=str1+'wf7='+tblline.fieldbyname('wf7').asstring+','
          else str1:=str1+'wf7=0,';
          if not tblline.FieldByName('wf8').IsNull then
          str1:=str1+'wf8='+tblline.fieldbyname('wf8').asstring+','
          else str1:=str1+'wf8=0,';
          if not tblline.FieldByName('wf9').IsNull then
          str1:=str1+'wf9='+tblline.fieldbyname('wf9').asstring+','
          else str1:=str1+'wf9=0,';
          if not tblline.FieldByName('wf10').IsNull then
          str1:=str1+'wf10='+tblline.fieldbyname('wf10').asstring+','
          else str1:=str1+'wf10=0,';
          if not tblline.FieldByName('wf11').IsNull then
          str1:=str1+'wf11='+tblline.fieldbyname('wf11').asstring+','
          else str1:=str1+'wf11=0,';
          if not tblline.FieldByName('wf12').IsNull then
          str1:=str1+'wf12='+tblline.fieldbyname('wf12').asstring+','
          else str1:=str1+'wf12=0,';
          if not tblline.FieldByName('wf13').IsNull then
          str1:=str1+'wf13='+tblline.fieldbyname('wf13').asstring+','
          else str1:=str1+'wf13=0,';
          if not tblline.FieldByName('wf14').IsNull then
          str1:=str1+'wf14='+tblline.fieldbyname('wf14').asstring+','
          else str1:=str1+'wf14=0,';
          if not tblline.FieldByName('wf15').IsNull then
          str1:=str1+'wf15='+tblline.fieldbyname('wf15').asstring+','
          else str1:=str1+'wf15=0,';
          if not tblline.FieldByName('wf16').IsNull then
          str1:=str1+'wf16='+tblline.fieldbyname('wf16').asstring+','
          else str1:=str1+'wf16=0,';
          if not tblline.FieldByName('wf17').IsNull then
          str1:=str1+'wf17='+tblline.fieldbyname('wf17').asstring+','
          else str1:=str1+'wf17=0,';
          if not tblline.FieldByName('wf18').IsNull then
          str1:=str1+'wf18='+tblline.fieldbyname('wf18').asstring+','
          else str1:=str1+'wf18=0,';
          if not tblline.FieldByName('wf19').IsNull then
          str1:=str1+'wf19='+tblline.fieldbyname('wf19').asstring+','
          else str1:=str1+'wf19=0,';
          if not tblline.FieldByName('wf20').IsNull then
          str1:=str1+'wf20='+tblline.fieldbyname('wf20').asstring+','
          else str1:=str1+'wf20=0,';
          if not tblline.FieldByName('wf21').IsNull then
          str1:=str1+'wf21='+tblline.fieldbyname('wf21').asstring+','
          else str1:=str1+'wf21=0,';
          if not tblline.FieldByName('wf22').IsNull then
          str1:=str1+'wf22='+tblline.fieldbyname('wf22').asstring+','
          else str1:=str1+'wf22=0,';
          if not tblline.FieldByName('wf23').IsNull then
          str1:=str1+'wf23='+tblline.fieldbyname('wf23').asstring+','
          else str1:=str1+'wf23=0,';
          if not tblline.FieldByName('wf24').IsNull then
          str1:=str1+'wf24='+tblline.fieldbyname('wf24').asstring+','
          else str1:=str1+'wf24=0,';
          if not tblline.FieldByName('wf25').IsNull then
          str1:=str1+'wf25='+tblline.fieldbyname('wf25').asstring+','
          else str1:=str1+'wf25=0,';
          if not tblline.FieldByName('wf26').IsNull then
          str1:=str1+'wf26='+tblline.fieldbyname('wf26').asstring+','
          else str1:=str1+'wf26=0,';
          if not tblline.FieldByName('wf27').IsNull then
          str1:=str1+'wf27='+tblline.fieldbyname('wf27').asstring+','
          else str1:=str1+'wf27=0,';
          if not tblline.FieldByName('wf28').IsNull then
          str1:=str1+'wf28='+tblline.fieldbyname('wf28').asstring+','
          else str1:=str1+'wf28=0,';
          if not tblline.FieldByName('wf29').IsNull then
          str1:=str1+'wf29='+tblline.fieldbyname('wf29').asstring+','
          else str1:=str1+'wf29=0,';
          if not tblline.fieldbyname('sectt1').isnull then
          str1:=str1+'sectt1='+tblline.fieldbyname('sectt1').asstring+','
          else str1:=str1+'sectt1=0,';
          if not tblline.fieldbyname('rfids').isnull then begin
            if tblline.fieldbyname('rfids').value=true then str1:=str1+'rfids=1,'
            else str1:=str1+'rfids=0,';
          end else str1:=str1+'rfids=0,';
          if not tblline.fieldbyname('rfidd').isnull then
          str1:=str1+'rfidd='''+formatdatetime('yyyy-MM-dd',tblline.fieldbyname('rfidd').value)+''','
          else str1:=str1+'rfidd=null,';
          if not tblline.fieldbyname('rfidp').isnull then
          str1:=str1+'rfidp='''+tblline.fieldbyname('rfidp').value+''','
          else str1:=str1+'rfidp=''0'',';
          if not tblline.fieldbyname('grd').isnull then
          str1:=str1+'grd='''+tblline.fieldbyname('grd').value+''','
          else str1:=str1+'grd='''',';
          if not tblline.fieldbyname('o1').isnull then begin
            if tblline.fieldbyname('o1').value=true then str1:=str1+'o1=1,'
            else str1:=str1+'o1=0,';
          end else str1:=str1+'o1=0,';
          if not tblline.fieldbyname('b1').isnull then begin
            if tblline.fieldbyname('b1').value=true then str1:=str1+'b1=1,'
            else str1:=str1+'b1=0,';
          end else str1:=str1+'b1=0,';
          if not tblline.fieldbyname('r1').isnull then begin
            if tblline.fieldbyname('r1').value=true then str1:=str1+'r1=1,'
            else str1:=str1+'r1=0,';
          end else str1:=str1+'r1=0,';
          if not tblline.fieldbyname('stb').isnull then
          str1:=str1+'stb='+floattostr(tblline.fieldbyname('stb').value)+','
          else str1:=str1+'stb=100,';
          if not tblline.fieldbyname('adpt').isnull then
          str1:=str1+'adpt='+floattostr(tblline.fieldbyname('adpt').value)+','
          else str1:=str1+'adpt=100,';

          if not tblline.fieldbyname('pcust1').isnull then
          str1:=str1+'pcust1='''+tblline.fieldbyname('pcust1').value+''','
          else str1:=str1+'pcust1='''',';
          if not tblline.fieldbyname('c1r').isnull then
          str1:=str1+'c1r='+floattostr(tblline.fieldbyname('c1r').value)+','
          else str1:=str1+'c1r=0,';
          if not tblline.fieldbyname('c1p').isnull then
          str1:=str1+'c1p='+floattostr(tblline.fieldbyname('c1p').value)+','
          else str1:=str1+'c1p=0,';
          if not tblline.fieldbyname('pcust2').isnull then
          str1:=str1+'pcust2='''+tblline.fieldbyname('pcust2').value+''','
          else str1:=str1+'pcust2='''',';
          if not tblline.fieldbyname('c2r').isnull then
          str1:=str1+'c2r='+floattostr(tblline.fieldbyname('c2r').value)+','
          else str1:=str1+'c2r=0,';
          if not tblline.fieldbyname('c2p').isnull then
          str1:=str1+'c2p='+floattostr(tblline.fieldbyname('c2p').value)+','
          else str1:=str1+'c2p=0,';
          if not tblline.fieldbyname('pcust3').isnull then
          str1:=str1+'pcust3='''+tblline.fieldbyname('pcust3').value+''','
          else str1:=str1+'pcust3='''',';
          if not tblline.fieldbyname('c3r').isnull then
          str1:=str1+'c3r='+floattostr(tblline.fieldbyname('c3r').value)+','
          else str1:=str1+'c3r=0,';
          if not tblline.fieldbyname('c3p').isnull then
          str1:=str1+'c3p='+floattostr(tblline.fieldbyname('c3p').value)+','
          else str1:=str1+'c3p=0,';
          if not tblline.fieldbyname('pcust4').isnull then
          str1:=str1+'pcust4='''+tblline.fieldbyname('pcust4').value+''','
          else str1:=str1+'pcust4='''',';
          if not tblline.fieldbyname('c4r').isnull then
          str1:=str1+'c4r='+floattostr(tblline.fieldbyname('c4r').value)+','
          else str1:=str1+'c4r=0,';
          if not tblline.fieldbyname('c4p').isnull then
          str1:=str1+'c4p='+floattostr(tblline.fieldbyname('c4p').value)+','
          else str1:=str1+'c4p=0,';
          if not tblline.fieldbyname('pcust5').isnull then
          str1:=str1+'pcust5='''+tblline.fieldbyname('pcust5').value+''','
          else str1:=str1+'pcust5='''',';
          if not tblline.fieldbyname('c5r').isnull then
          str1:=str1+'c5r='+floattostr(tblline.fieldbyname('c5r').value)+','
          else str1:=str1+'c5r=0,';
          if not tblline.fieldbyname('c5p').isnull then
          str1:=str1+'c5p='+floattostr(tblline.fieldbyname('c5p').value)+','
          else str1:=str1+'c5p=0,';


          str1:=str1+'learn7='+inttostr(learn7)+',';
          str1:=str1+'learn8='+inttostr(learn8)+',';
          str1:=str1+'leff7='+floattostr(leff7)+',';
          str1:=str1+'leff8='+floattostr(leff8)+',';
          str1:=str1+'learn9='+inttostr(learn9)+',';
          str1:=str1+'learn10='+inttostr(learn10)+',';
          str1:=str1+'leff9='+floattostr(leff9)+',';
          str1:=str1+'leff10='+floattostr(leff10)+' ';
          str1:=str1+'where pline='''+pline+'''';
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
          
      end
      else begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'tplant',ptinput);
          params.createparam(ftstring,'ldesc',ptinput);
          params.createparam(ftstring,'ldesc1',ptinput);
          params.createparam(ftstring,'ttype',ptinput);
          params.createparam(ftstring,'ttype1',ptinput);
          params.createparam(ftdate,'ldate',ptinput);
          params.createparam(ftboolean,'lactive',ptinput);
          params.createparam(ftstring,'thead',ptinput);
          params.createparam(ftdate,'lxdate',ptinput);
          params.createparam(ftinteger,'workero',ptinput);
          params.createparam(ftinteger,'workert',ptinput);
          params.createparam(ftstring,'workeri',ptinput);
          params.createparam(ftinteger,'sectt',ptinput);
          params.createparam(ftinteger,'secto',ptinput);
          params.createparam(ftinteger,'sectox',ptinput);
          params.createparam(ftfloat,'ysjhl',ptinput);
          params.createparam(ftfloat,'gy',ptinput);
          params.createparam(ftfloat,'fyl',ptinput);
          params.createparam(ftfloat,'teff',ptinput);
          params.createparam(ftstring,'tshop',ptinput);
          params.createparam(ftinteger,'learn1',ptinput);
          params.createparam(ftinteger,'learn2',ptinput);
          params.createparam(ftinteger,'learn3',ptinput);
          params.createparam(ftinteger,'learn4',ptinput);
          params.createparam(ftfloat,'lefft',ptinput);
          params.createparam(ftfloat,'leff1',ptinput);
          params.createparam(ftfloat,'leff2',ptinput);
          params.createparam(ftfloat,'leff3',ptinput);
          params.createparam(ftfloat,'leff4',ptinput);
          params.createparam(ftfloat,'laeff',ptinput);
          params.createparam(ftstring,'sbsj',ptinput);
          params.createparam(ftinteger,'learn5',ptinput);
          params.createparam(ftinteger,'learn6',ptinput);
          params.createparam(ftfloat,'leff5',ptinput);
          params.createparam(ftfloat,'leff6',ptinput);
          params.createparam(fttime,'sj1',ptinput);
          params.createparam(fttime,'sj2',ptinput);
          params.createparam(fttime,'sj3',ptinput);
          params.createparam(fttime,'sj4',ptinput);
          params.createparam(fttime,'sj5',ptinput);
          params.createparam(fttime,'sj6',ptinput);
          params.createparam(fttime,'sj7',ptinput);
          params.createparam(fttime,'sj8',ptinput);
          params.createparam(fttime,'sj9',ptinput);
          params.createparam(fttime,'sj10',ptinput);
          params.createparam(ftstring,'sftc',ptinput);
          params.createparam(ftstring,'shf',ptinput);
          params.createparam(ftstring,'pline',ptinput);
          params.CreateParam(ftdate,'lbdt',ptinput);
          params.createparam(ftboolean,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftinteger,'f1',ptinput);
          params.createparam(ftinteger,'f2',ptinput);
          params.createparam(ftinteger,'f3',ptinput);
          params.createparam(ftinteger,'f4',ptinput);
          params.createparam(ftfloat,'f5',ptinput);
          params.createparam(ftfloat,'f6',ptinput);
          params.createparam(ftfloat,'f7',ptinput);
          params.createparam(ftfloat,'f8',ptinput);
          params.createparam(ftfloat,'f9',ptinput);
          params.createparam(ftfloat,'f10',ptinput);
          params.createparam(ftfloat,'f11',ptinput);
          params.createparam(ftfloat,'f12',ptinput);
          params.createparam(ftfloat,'f13',ptinput);
          params.createparam(ftfloat,'f14',ptinput);
          params.createparam(ftfloat,'f15',ptinput);
          params.createparam(ftfloat,'f16',ptinput);
          params.createparam(ftfloat,'f17',ptinput);
          params.createparam(ftfloat,'f18',ptinput);
          params.createparam(ftfloat,'f19',ptinput);
          params.createparam(ftfloat,'f20',ptinput);
          params.createparam(ftfloat,'f21',ptinput);
          params.createparam(ftfloat,'f22',ptinput);
          params.createparam(ftfloat,'f23',ptinput);
          params.createparam(ftfloat,'f24',ptinput);
          params.createparam(ftfloat,'f25',ptinput);
          params.createparam(ftfloat,'f26',ptinput);
          params.createparam(ftfloat,'f27',ptinput);
          params.createparam(ftfloat,'f28',ptinput);
          params.createparam(ftfloat,'f29',ptinput);
          params.createparam(ftfloat,'sectt1',ptinput);
          params.createparam(ftboolean,'rfids',ptinput);
          params.createparam(ftdate,'rfidd',ptinput);
          params.createparam(ftstring,'rfidp',ptinput);
          params.createparam(ftstring,'grd',ptinput);
          params.createparam(ftboolean,'o1',ptinput);
          params.createparam(ftboolean,'b1',ptinput);
          params.createparam(ftboolean,'r1',ptinput);
          params.createparam(ftfloat,'stb',ptinput);
          params.createparam(ftfloat,'adpt',ptinput);
          params.createparam(ftinteger,'lr7',ptinput);
          params.createparam(ftinteger,'lr8',ptinput);
          params.createparam(ftfloat,'le7',ptinput);
          params.createparam(ftfloat,'le8',ptinput);
          params.createparam(ftinteger,'lr9',ptinput);
          params.createparam(ftinteger,'lr10',ptinput);
          params.createparam(ftfloat,'le9',ptinput);
          params.createparam(ftfloat,'le10',ptinput);
          params.createparam(ftstring,'pcust1',ptinput);
          params.createparam(ftfloat,'c1r',ptinput);
          params.createparam(ftfloat,'c1p',ptinput);
          params.createparam(ftstring,'pcust2',ptinput);
          params.createparam(ftfloat,'c2r',ptinput);
          params.createparam(ftfloat,'c2p',ptinput);
          params.createparam(ftstring,'pcust3',ptinput);
          params.createparam(ftfloat,'c3r',ptinput);
          params.createparam(ftfloat,'c3p',ptinput);
          params.createparam(ftstring,'pcust4',ptinput);
          params.createparam(ftfloat,'c4r',ptinput);
          params.createparam(ftfloat,'c4p',ptinput);
          params.createparam(ftstring,'pcust5',ptinput);
          params.createparam(ftfloat,'c5r',ptinput);
          params.createparam(ftfloat,'c5p',ptinput);
          params.createparam(ftboolean,'fale',ptinput);
          commandtext:='insert into tblline(tplant,ldesc,ldesc1,ttype,ttype1,'
                      +'ldate,lactive,thead,lxdate,workero,workert,'
                      +'workeri,sectt,secto,sectox,ysjhl,gy,fyl,'
                      +'teff,tshop,learn1,learn2,learn3,learn4,lefft,leff1,leff2,leff3,leff4,laeff,sbsj,'
                      +'learn5,learn6,leff5,leff6,sj1,sj2,sj3,sj4,sj5,sj6,sj7,sj8,sj9,sj10,sftc,shf,pline,lbdt,lbact,shpmgr,'
                      +'wf1,wf2,wf3,wf4,wf5,wf6,wf7,wf8,wf9,wf10,wf11,wf12,wf13,wf14,wf15,wf16,wf17,wf18,wf19,wf20,'
                      +'wf21,wf22,wf23,wf24,wf25,wf26,wf27,wf28,wf29,sectt1,rfids,rfidd,rfidp,grd,o1,b1,r1,stb,adpt,learn7,learn8,leff7,leff8,learn9,learn10,leff9,leff10,'
                      +'pcust1,c1r,c1p,pcust2,c2r,c2p,pcust3,c3r,c3p,pcust4,c4r,c4p,pcust5,c5r,c5p,fale) '
                      +'values(:tplant,:ldesc,:ldesc1,:ttype,:ttype1,'
                      +':ldate,:lactive,:thead,:lxdate,:workero,:workert,'
                      +':workeri,:sectt,:secto,:sectox,:ysjhl,:gy,:fyl,'
                      +':teff,:tshop,:learn1,:learn2,:learn3,:learn4,:lefft,:leff1,:leff2,:leff3,:leff4,:laeff,:sbsj,'
                      +':learn5,:learn6,:leff5,:leff6,:sj1,:sj2,:sj3,:sj4,:sj5,:sj6,:sj7,:sj8,:sj9,:sj10,:sftc,:shf,:pline,:lbdt,:x1,:x2,'
                      +':f1,:f2,:f3,:f4,:f5,:f6,:f7,:f8,:f9,:f10,:f11,:f12,:f13,:f14,:f15,:f16,:f17,:f18,:f19,:f20,'
                      +':f21,:f22,:f23,:f24,:f25,:f26,:f27,:f28,:f29,:sectt1,:rfids,:rfidd,:rfidp,:grd,:o1,:b1,:r1,:stb,:adpt,:lr7,:lr8,:le7,:le8,:lr9,:lr10,:le9,:le10,'
                      +':pcust1,:c1r,:c1p,:pcust2,:c2r,:c2p,:pcust3,:c3r,:c3p,:pcust4,:c4r,:c4p,:pcust5,:c5r,:c5p,:fale)';
          params[0].asstring:=tplant;
          params[1].asstring:=ldesc;
          params[2].asstring:=ldesc1;
          params[3].asstring:=ttype;
          params[4].asstring:=ttype1;
          if not tblline.fieldbyname('ldate').isnull then
          params[5].asdate:=ldate;
          params[6].asboolean:=lactive;
          params[7].asstring:=thead;
          if not tblline.fieldbyname('lxdate').isnull then
          params[8].asdate:=lxdate;
          params[9].asinteger:=workero;
          params[10].asinteger:=workert;
          params[11].asstring:=workeri;
          params[12].asinteger:=sectt;
          params[13].asinteger:=secto;
          params[14].asinteger:=sectox;
          params[15].asfloat:=ysjhl;
          params[16].asfloat:=gy;
          params[17].asfloat:=fyl;
          params[18].asfloat:=teff;
          params[19].asstring:=tshop;
          params[20].asinteger:=learn1;
          params[21].asinteger:=learn2;
          params[22].asinteger:=learn3;
          params[23].asinteger:=learn4;
          params[24].asfloat:=lefft;
          params[25].asfloat:=leff1;
          params[26].asfloat:=leff2;
          params[27].asfloat:=leff3;
          params[28].asfloat:=leff4;
          params[29].asfloat:=laeff;
          if not tblline.FieldByName('sbsj').isnull then
          params[30].asstring:=tblline.fieldbyname('sbsj').value
          else params[30].asstring:=' ';
          params[31].asinteger:=learn5;
          params[32].asinteger:=learn6;
          params[33].asfloat:=leff5;
          params[34].asfloat:=leff6;
          params[35].astime:=sj1;
          params[36].astime:=sj2;
          params[37].astime:=sj3;
          params[38].astime:=sj4;
          params[39].astime:=sj5;
          params[40].astime:=sj6;
          params[41].astime:=sj7;
          params[42].astime:=sj8;
          params[43].astime:=sj9;
          params[44].astime:=sj10;
          params[45].asstring:=sftc;
          params[46].asstring:=shf;
          params[47].asstring:=pline;
          if not tblline.FieldByName('lbdt').IsNull then
          params[48].asdate:=tblline.fieldbyname('lbdt').value;
          if not tblline.fieldbyname('lbact').isnull then
          params[49].asboolean:=tblline.fieldbyname('lbact').value
          else params[49].asboolean:=false;
          if not tblline.fieldbyname('shpmgr').isnull then
          params[50].asstring:=tblline.fieldbyname('shpmgr').value
          else params[50].asstring:='';
          if not tblline.fieldbyname('wf1').isnull then
          params[51].asinteger:=tblline.fieldbyname('wf1').value
          else params[51].asinteger:=0;
          if not tblline.fieldbyname('wf2').isnull then
          params[52].asinteger:=tblline.fieldbyname('wf2').value
          else params[52].asinteger:=0;
          if not tblline.fieldbyname('wf3').isnull then
          params[53].asinteger:=tblline.fieldbyname('wf3').value
          else params[53].asinteger:=0;
          if not tblline.fieldbyname('wf4').isnull then
          params[54].asinteger:=tblline.fieldbyname('wf4').value
          else params[54].asinteger:=0;
          if not tblline.FieldByName('wf5').IsNull then
          params[55].asfloat:=tblline.fieldbyname('wf5').value
          else params[55].asfloat:=0;
          if not tblline.FieldByName('wf6').IsNull then
          params[56].asfloat:=tblline.fieldbyname('wf6').value
          else params[56].asfloat:=0;
          if not tblline.FieldByName('wf7').IsNull then
          params[57].asfloat:=tblline.fieldbyname('wf7').value
          else params[57].asfloat:=0;
          if not tblline.FieldByName('wf8').IsNull then
          params[58].asfloat:=tblline.fieldbyname('wf8').value
          else params[58].asfloat:=0;
          if not tblline.FieldByName('wf9').IsNull then
          params[59].asfloat:=tblline.fieldbyname('wf9').value
          else params[59].asfloat:=0;
          if not tblline.FieldByName('wf10').IsNull then
          params[60].asfloat:=tblline.fieldbyname('wf10').value
          else params[60].asfloat:=0;
          if not tblline.FieldByName('wf11').IsNull then
          params[61].asfloat:=tblline.fieldbyname('wf11').value
          else params[61].asfloat:=0;
          if not tblline.FieldByName('wf12').IsNull then
          params[62].asfloat:=tblline.fieldbyname('wf12').value
          else params[62].asfloat:=0;
          if not tblline.FieldByName('wf13').IsNull then
          params[63].asfloat:=tblline.fieldbyname('wf13').value
          else params[63].asfloat:=0;
          if not tblline.FieldByName('wf14').IsNull then
          params[64].asfloat:=tblline.fieldbyname('wf14').value
          else params[64].asfloat:=0;
          if not tblline.FieldByName('wf15').IsNull then
          params[65].asfloat:=tblline.fieldbyname('wf15').value
          else params[65].asfloat:=0;
          if not tblline.FieldByName('wf16').IsNull then
          params[66].asfloat:=tblline.fieldbyname('wf16').value
          else params[66].asfloat:=0;
          if not tblline.FieldByName('wf17').IsNull then
          params[67].asfloat:=tblline.fieldbyname('wf17').value
          else params[67].asfloat:=0;
          if not tblline.FieldByName('wf18').IsNull then
          params[68].asfloat:=tblline.fieldbyname('wf18').value
          else params[68].asfloat:=0;
          if not tblline.FieldByName('wf19').IsNull then
          params[69].asfloat:=tblline.fieldbyname('wf19').value
          else params[69].asfloat:=0;
          if not tblline.FieldByName('wf20').IsNull then
          params[70].asfloat:=tblline.fieldbyname('wf20').value
          else params[70].asfloat:=0;
          if not tblline.FieldByName('wf21').IsNull then
          params[71].asfloat:=tblline.fieldbyname('wf21').value
          else params[71].asfloat:=0;
          if not tblline.FieldByName('wf22').IsNull then
          params[72].asfloat:=tblline.fieldbyname('wf22').value
          else params[72].asfloat:=0;
          if not tblline.FieldByName('wf23').IsNull then
          params[73].asfloat:=tblline.fieldbyname('wf23').value
          else params[73].asfloat:=0;
          if not tblline.FieldByName('wf24').IsNull then
          params[74].asfloat:=tblline.fieldbyname('wf24').value
          else params[74].asfloat:=0;
          if not tblline.FieldByName('wf25').IsNull then
          params[75].asfloat:=tblline.fieldbyname('wf25').value
          else params[75].asfloat:=0;
          if not tblline.FieldByName('wf26').IsNull then
          params[76].asfloat:=tblline.fieldbyname('wf26').value
          else params[76].asfloat:=0;
          if not tblline.FieldByName('wf27').IsNull then
          params[77].asfloat:=tblline.fieldbyname('wf27').value
          else params[77].asfloat:=0;
          if not tblline.FieldByName('wf28').IsNull then
          params[78].asfloat:=tblline.fieldbyname('wf28').value
          else params[78].asfloat:=0;
          if not tblline.FieldByName('wf29').IsNull then
          params[79].asfloat:=tblline.fieldbyname('wf29').value
          else params[79].asfloat:=0;
          if not tblline.FieldByName('sectt1').IsNull then
          params[80].asfloat:=tblline.fieldbyname('sectt1').value
          else params[80].asfloat:=0;
          if not tblline.fieldbyname('rfids').isnull then
          params[81].asboolean:=tblline.fieldbyname('rfids').value
          else params[81].asboolean:=false;
          if not tblline.fieldbyname('rfidd').isnull then
          params[82].asdate:=tblline.fieldbyname('rfidd').value;
          if not tblline.fieldbyname('rfidp').isnull then
          params[83].asstring:=tblline.fieldbyname('rfidp').value
          else params[83].asstring:='0';
          if not tblline.fieldbyname('grd').isnull then
          params[84].asstring:=tblline.fieldbyname('grd').value
          else params[84].asstring:='';
          if not tblline.fieldbyname('o1').isnull then
          params[85].asboolean:=tblline.fieldbyname('o1').value
          else params[85].asboolean:=false;
          if not tblline.fieldbyname('b1').isnull then
          params[86].asboolean:=tblline.fieldbyname('b1').value
          else params[86].asboolean:=false;
          if not tblline.fieldbyname('r1').isnull then
          params[87].asboolean:=tblline.fieldbyname('r1').value
          else params[87].asboolean:=false;
          if not tblline.fieldbyname('stb').isnull then
          params[88].asfloat:=tblline.fieldbyname('stb').value
          else params[88].asfloat:=100;
          if not tblline.fieldbyname('adpt').isnull then
          params[89].asfloat:=tblline.fieldbyname('adpt').value
          else params[89].asfloat:=100;
          params[90].asinteger:=learn7;
          params[91].asinteger:=learn8;
          params[92].asfloat:=leff7;
          params[93].asfloat:=leff8;
          params[94].asinteger:=learn9;
          params[95].asinteger:=learn10;
          params[96].asfloat:=leff9;
          params[97].asfloat:=leff10;
          if not tblline.fieldbyname('pcust1').isnull then
          params[98].asstring:=tblline.fieldbyname('pcust1').value
          else params[98].asstring:='';
          if not tblline.fieldbyname('c1r').isnull then
          params[99].asfloat:=tblline.fieldbyname('c1r').value
          else params[99].asfloat:=0;
          if not tblline.fieldbyname('c1p').isnull then
          params[100].asfloat:=tblline.fieldbyname('c1p').value
          else params[100].asfloat:=0;
          if not tblline.fieldbyname('pcust2').isnull then
          params[101].asstring:=tblline.fieldbyname('pcust2').value
          else params[101].asstring:='';
          if not tblline.fieldbyname('c2r').isnull then
          params[102].asfloat:=tblline.fieldbyname('c2r').value
          else params[102].asfloat:=0;
          if not tblline.fieldbyname('c2p').isnull then
          params[103].asfloat:=tblline.fieldbyname('c2p').value
          else params[103].asfloat:=0;
          if not tblline.fieldbyname('pcust3').isnull then
          params[104].asstring:=tblline.fieldbyname('pcust3').value
          else params[104].asstring:='';
          if not tblline.fieldbyname('c3r').isnull then
          params[105].asfloat:=tblline.fieldbyname('c3r').value
          else params[105].asfloat:=0;
          if not tblline.fieldbyname('c3p').isnull then
          params[106].asfloat:=tblline.fieldbyname('c3p').value
          else params[106].asfloat:=0;
          if not tblline.fieldbyname('pcust4').isnull then
          params[107].asstring:=tblline.fieldbyname('pcust4').value
          else params[107].asstring:='';
          if not tblline.fieldbyname('c4r').isnull then
          params[108].asfloat:=tblline.fieldbyname('c4r').value
          else params[108].asfloat:=0;
          if not tblline.fieldbyname('c4p').isnull then
          params[109].asfloat:=tblline.fieldbyname('c4p').value
          else params[109].asfloat:=0;
          if not tblline.fieldbyname('pcust5').isnull then
          params[110].asstring:=tblline.fieldbyname('pcust5').value
          else params[110].asstring:='';
          if not tblline.fieldbyname('c5r').isnull then
          params[111].asfloat:=tblline.fieldbyname('c5r').value
          else params[111].asfloat:=0;
          if not tblline.fieldbyname('c5p').isnull then
          params[112].asfloat:=tblline.fieldbyname('c5p').value
          else params[112].asfloat:=0;
          params[113].asboolean:=fale;
          execute;
        end;
      end;
    end;
  //end;
end;

procedure Tfrmlineinfo.FormShow(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex:=0;
  edit1.SetFocus;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_tmp_swfid';
    execute;
  end;
  with tblline do begin
    close;
    params.clear;
    commandtext:='select * from tblline';
    if rg01.itemindex=0 then commandtext:=commandtext+' where lactive=1';
    open;
    (fieldbyname('ysjhl') as tfloatfield).displayformat:='#0.00';
    (fieldbyname('teff') as tfloatfield).displayformat:='#0.00';
    (fieldbyname('leff1') as tfloatfield).displayformat:='#0.00';
    (fieldbyname('leff2') as tfloatfield).displayformat:='#0.00';
    (fieldbyname('leff3') as tfloatfield).displayformat:='#0.00';
    (fieldbyname('leff4') as tfloatfield).displayformat:='#0.00';
    (fieldbyname('leff5') as tfloatfield).displayformat:='#0.00';
    (fieldbyname('leff6') as tfloatfield).displayformat:='#0.00';
    (fieldbyname('leff7') as tfloatfield).displayformat:='#0.00';
    (fieldbyname('leff8') as tfloatfield).displayformat:='#0.00';
    (fieldbyname('lefft') as tfloatfield).displayformat:='#0.00';
    (fieldbyname('laeff') as tfloatfield).displayformat:='#0.00';
  end;
  //TcxComboBoxProperties(cxGrid1View1SFTC.Properties).Items.clear;
  //{
  dbgrideh1.Columns[43].PickList.clear;
  //dbcombobox1.items.clear;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct sftc from tbl_shift';
    open;
    first;
    while not eof do begin
      if not fieldbyname('sftc').isnull then begin
        dbgrideh1.Columns[43].PickList.add(fieldbyname('sftc').value);
        dbcombobox1.items.add(fieldbyname('sftc').value);
        //TcxComboBoxProperties(cxGrid1View1SFTC.Properties).Items.add(fieldbyname('sftc').value);
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  //}
  {
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r1').value=false then begin
      //dbgrideh1.ReadOnly:=true;
      cxGrid1View1.OptionsData.Editing:=false;
      speedbutton4.Enabled:=false;
      speedbutton5.Enabled:=false;
      tabsheet2.Enabled:=false;
    end;
  end;
  }
end;

procedure Tfrmlineinfo.tbllineNewRecord(DataSet: TDataSet);
begin
  tblline.fieldbyname('ysjhl').value:=100;
  tblline.FieldByName('teff').value:=100;
  tblline.fieldbyname('wf1').value:=20;
  tblline.fieldbyname('wf2').value:=5;
  tblline.fieldbyname('fyl').value:=1;
  tblline.fieldbyname('workero').value:=25;
  tblline.fieldbyname('workert').value:=25;
end;

procedure Tfrmlineinfo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (tblline.state=dsinsert) or (tblline.state=dsedit) then tblline.post;
  action:=cafree;
  frmlineinfo:=nil;
end;

procedure Tfrmlineinfo.SpeedButton4Click(Sender: TObject);
begin
  //dbgrideh1.SelectedIndex:=0;
  tblline.Append;
end;

procedure Tfrmlineinfo.SpeedButton5Click(Sender: TObject);
begin
  if application.MessageBox('Delete this line?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'pline',ptinput);
      commandtext:='delete from tblline where pline=:pline';
      params[0].asstring:=tblline.fieldbyname('pline').value;
      execute;
    end;
    tblline.Delete;
  end;
end;

procedure Tfrmlineinfo.tbllineLEARN1Change(Sender: TField);
var
  i1,i2,i3,i4,i5,i6,i7,i8,i9,i10:integer;
  f1,f2,f3,f4,f5,f6,f7,f8,f9,f10:double;
begin
  if not tblline.fieldbyname('learn1').isnull then
  i1:=tblline.fieldbyname('learn1').value else i1:=44;
  if not tblline.fieldbyname('learn2').isnull then
  i2:=tblline.fieldbyname('learn2').value else i2:=88;
  if not tblline.fieldbyname('learn3').isnull then
  i3:=tblline.fieldbyname('learn3').value else i3:=88;
  if not tblline.fieldbyname('learn4').isnull then
  i4:=tblline.fieldbyname('learn4').value else i4:=110;
  if not tblline.fieldbyname('learn5').isnull then
  i5:=tblline.fieldbyname('learn5').value else i5:=88;
  if not tblline.fieldbyname('learn6').isnull then
  i6:=tblline.fieldbyname('learn6').value else i6:=110;
  if not tblline.fieldbyname('learn7').isnull then
  i7:=tblline.fieldbyname('learn7').value else i7:=110;
  if not tblline.fieldbyname('learn8').isnull then
  i8:=tblline.fieldbyname('learn8').value else i8:=110;
  if not tblline.fieldbyname('learn9').isnull then
  i9:=tblline.fieldbyname('learn9').value else i9:=110;
  if not tblline.fieldbyname('learn10').isnull then
  i10:=tblline.fieldbyname('learn10').value else i10:=110;

  if not tblline.fieldbyname('leff1').isnull then
  f1:=tblline.fieldbyname('leff1').value else f1:=60;
  if not tblline.fieldbyname('leff2').isnull then
  f2:=tblline.fieldbyname('leff2').value else f2:=80;
  if not tblline.fieldbyname('leff3').isnull then
  f3:=tblline.fieldbyname('leff3').value else f3:=90;
  if not tblline.fieldbyname('leff4').isnull then
  f4:=tblline.fieldbyname('leff4').value else f4:=100;
  if not tblline.fieldbyname('leff5').isnull then
  f5:=tblline.fieldbyname('leff5').value else f5:=90;
  if not tblline.fieldbyname('leff6').isnull then
  f6:=tblline.fieldbyname('leff6').value else f6:=100;
  if not tblline.fieldbyname('leff7').isnull then
  f7:=tblline.fieldbyname('leff7').value else f7:=100;
  if not tblline.fieldbyname('leff8').isnull then
  f8:=tblline.fieldbyname('leff8').value else f8:=100;
  if not tblline.fieldbyname('leff9').isnull then
  f9:=tblline.fieldbyname('leff9').value else f9:=100;
  if not tblline.fieldbyname('leff10').isnull then
  f10:=tblline.fieldbyname('leff10').value else f10:=100;

  if (i1+i2+i3+i4+i5+i6+i7+i8+i9+i10)>0 then
    tblline.fieldbyname('laeff').value:=(i1*f1+i2*f2+i3*f3+i4*f4+i5*f5+i6*f6+i7*f7+i8*f8+i9*f9+i10*f10)/(i1+i2+i3+i4+i5+i6+i7+i8+i9+i10)
  else tblline.fieldbyname('laeff').value:=0;
end;

procedure Tfrmlineinfo.SpeedButton6Click(Sender: TObject);
begin
  with tblline do begin
    close;
    params.clear;
    commandtext:='select * from tblline where 0=0';
    if rg01.itemindex=0 then commandtext:=commandtext+' and lactive=1'
    else if rg01.itemindex=1 then commandtext:=commandtext+' and lactive=0';
    if edit1.text>'' then commandtext:=commandtext+' and tplant='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and tshop='''+edit2.text+'''';
    if edit3.text>'' then commandtext:=commandtext+' and pline='''+edit3.text+'''';
    open;
  end;
end;

procedure Tfrmlineinfo.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsmaximized;
  tppViewer(ppreport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmlineinfo.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then speedbutton6click(self);
end;

procedure Tfrmlineinfo.tbllineSFTCChange(Sender: TField);
begin
  if not tblline.fieldbyname('sftc').isnull then begin
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_shift where sftc='''+tblline.fieldbyname('sftc').value+'''';
      open;
      if not fieldbyname('sft').isnull then tblline.fieldbyname('shf').value:=fieldbyname('sft').value
      else tblline.fieldbyname('shf').value:='';
    end;
  end;
end;

procedure Tfrmlineinfo.SpeedButton3Click(Sender: TObject);
begin
  if frmlearn=nil then frmlearn:=tfrmlearn.create(nil);
  frmlearn.Edit1.text:=tblline.fieldbyname('pline').value;
  frmlearn.Show;
end;

procedure Tfrmlineinfo.SpeedButton8Click(Sender: TObject);
begin
  //if frmcalc=nil then frmcalc:=tfrmcalc.create(nil);
  //frmcalc.show;
  //if frmftylearn=nil then frmftylearn:=tfrmftylearn.create(nil);
  //frmftylearn.show;
end;

procedure Tfrmlineinfo.tbllineWORKEROChange(Sender: TField);
var
  f1,f2,f3,f4,f5,f6:integer;
begin
  if not tblline.fieldbyname('wf1').isnull then f1:=tblline.fieldbyname('wf1').value else f1:=0;
  if not tblline.fieldbyname('wf2').isnull then f2:=tblline.fieldbyname('wf2').value else f2:=0;
  if not tblline.fieldbyname('wf3').isnull then f3:=tblline.fieldbyname('wf3').value else f3:=0;
  if not tblline.fieldbyname('wf4').isnull then f4:=tblline.fieldbyname('wf4').value else f4:=0;
  if not tblline.fieldbyname('wf5').isnull then f5:=tblline.fieldbyname('wf5').value else f5:=0;
  if not tblline.fieldbyname('wf6').isnull then f6:=tblline.fieldbyname('wf6').value else f6:=0;
  tblline.fieldbyname('workert').value:=f1+f2+f5;
  tblline.fieldbyname('workero').value:=f3+f4+f6;
  tblline.fieldbyname('gy').value:=f3+f4+f6-f1-f2-f5;
end;

procedure Tfrmlineinfo.tblline_wfAfterOpen(DataSet: TDataSet);
begin
  (tblline_wf.fieldbyname('p01') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('p02') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('p03') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('p04') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('pttl') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('f01') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('f02') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('f03') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('f04') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('fttl') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('a01') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('a02') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('a03') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('a04') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('attl') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('e01') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('e02') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('e03') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('e04') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('ettl') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('t01') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('t02') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('t03') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('t04') as tfloatfield).displayformat:='0.0';
  (tblline_wf.fieldbyname('ttl') as tfloatfield).displayformat:='0.0';
  tblline_wf.fieldbyname('p01').onchange:=tblline_wfq01change;
  tblline_wf.fieldbyname('p02').onchange:=tblline_wfq01change;
  tblline_wf.fieldbyname('p03').onchange:=tblline_wfq01change;
  tblline_wf.fieldbyname('p04').onchange:=tblline_wfq01change;
  tblline_wf.fieldbyname('f01').onchange:=tblline_wfq01change;
  tblline_wf.fieldbyname('f02').onchange:=tblline_wfq01change;
  tblline_wf.fieldbyname('f03').onchange:=tblline_wfq01change;
  tblline_wf.fieldbyname('f04').onchange:=tblline_wfq01change;
  tblline_wf.fieldbyname('a01').onchange:=tblline_wfq01change;
  tblline_wf.fieldbyname('a02').onchange:=tblline_wfq01change;
  tblline_wf.fieldbyname('a03').onchange:=tblline_wfq01change;
  tblline_wf.fieldbyname('a04').onchange:=tblline_wfq01change;
  tblline_wf.fieldbyname('e01').onchange:=tblline_wfq01change;
  tblline_wf.fieldbyname('e02').onchange:=tblline_wfq01change;
  tblline_wf.fieldbyname('e03').onchange:=tblline_wfq01change;
  tblline_wf.fieldbyname('e04').onchange:=tblline_wfq01change;
end;

procedure Tfrmlineinfo.tblline_wfAfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  str1:='update tbl_line_wf set ';
  if not tblline_wf.fieldbyname('p01').isnull then
  str1:=str1+'p01='+floattostr(tblline_wf.fieldbyname('p01').value)+','
  else str1:=str1+'p01=0,';
  if not tblline_wf.fieldbyname('p02').isnull then
  str1:=str1+'p02='+floattostr(tblline_wf.fieldbyname('p02').value)+','
  else str1:=str1+'p02=0,';
  if not tblline_wf.fieldbyname('p03').isnull then
  str1:=str1+'p03='+floattostr(tblline_wf.fieldbyname('p03').value)+','
  else str1:=str1+'p03=0,';
  if not tblline_wf.fieldbyname('p04').isnull then
  str1:=str1+'p04='+floattostr(tblline_wf.fieldbyname('p04').value)+','
  else str1:=str1+'p04=0,';
  if not tblline_wf.fieldbyname('pttl').isnull then
  str1:=str1+'pttl='+floattostr(tblline_wf.fieldbyname('pttl').value)+','
  else str1:=str1+'pttl=0,';
  if not tblline_wf.fieldbyname('f01').isnull then
  str1:=str1+'f01='+floattostr(tblline_wf.fieldbyname('f01').value)+','
  else str1:=str1+'f01=0,';
  if not tblline_wf.fieldbyname('f02').isnull then
  str1:=str1+'f02='+floattostr(tblline_wf.fieldbyname('f02').value)+','
  else str1:=str1+'f02=0,';
  if not tblline_wf.fieldbyname('f03').isnull then
  str1:=str1+'f03='+floattostr(tblline_wf.fieldbyname('f03').value)+','
  else str1:=str1+'f03=0,';
  if not tblline_wf.fieldbyname('f04').isnull then
  str1:=str1+'f04='+floattostr(tblline_wf.fieldbyname('f04').value)+','
  else str1:=str1+'f04=0,';
  if not tblline_wf.fieldbyname('fttl').isnull then
  str1:=str1+'fttl='+floattostr(tblline_wf.fieldbyname('fttl').value)+','
  else str1:=str1+'fttl=0,';
  if not tblline_wf.fieldbyname('a01').isnull then
  str1:=str1+'a01='+floattostr(tblline_wf.fieldbyname('a01').value)+','
  else str1:=str1+'a01=0,';
  if not tblline_wf.fieldbyname('a02').isnull then
  str1:=str1+'a02='+floattostr(tblline_wf.fieldbyname('a02').value)+','
  else str1:=str1+'a02=0,';
  if not tblline_wf.fieldbyname('a03').isnull then
  str1:=str1+'a03='+floattostr(tblline_wf.fieldbyname('a03').value)+','
  else str1:=str1+'a03=0,';
  if not tblline_wf.fieldbyname('a04').isnull then
  str1:=str1+'a04='+floattostr(tblline_wf.fieldbyname('a04').value)+','
  else str1:=str1+'a04=0,';
  if not tblline_wf.fieldbyname('attl').isnull then
  str1:=str1+'attl='+floattostr(tblline_wf.fieldbyname('attl').value)+','
  else str1:=str1+'attl=0,';
  if not tblline_wf.fieldbyname('e01').isnull then
  str1:=str1+'e01='+floattostr(tblline_wf.fieldbyname('e01').value)+','
  else str1:=str1+'e01=0,';
  if not tblline_wf.fieldbyname('e02').isnull then
  str1:=str1+'e02='+floattostr(tblline_wf.fieldbyname('e02').value)+','
  else str1:=str1+'e02=0,';
  if not tblline_wf.fieldbyname('e03').isnull then
  str1:=str1+'e03='+floattostr(tblline_wf.fieldbyname('e03').value)+','
  else str1:=str1+'e03=0,';
  if not tblline_wf.fieldbyname('e04').isnull then
  str1:=str1+'e04='+floattostr(tblline_wf.fieldbyname('e04').value)+','
  else str1:=str1+'e04=0,';
  if not tblline_wf.fieldbyname('ettl').isnull then
  str1:=str1+'ettl='+floattostr(tblline_wf.fieldbyname('ettl').value)+','
  else str1:=str1+'ettl=0,';
  if not tblline_wf.fieldbyname('t01').isnull then
  str1:=str1+'t01='+floattostr(tblline_wf.fieldbyname('t01').value)+','
  else str1:=str1+'t01=0,';
  if not tblline_wf.fieldbyname('t02').isnull then
  str1:=str1+'t02='+floattostr(tblline_wf.fieldbyname('t02').value)+','
  else str1:=str1+'t02=0,';
  if not tblline_wf.fieldbyname('t03').isnull then
  str1:=str1+'t03='+floattostr(tblline_wf.fieldbyname('t03').value)+','
  else str1:=str1+'t03=0,';
  if not tblline_wf.fieldbyname('t04').isnull then
  str1:=str1+'t04='+floattostr(tblline_wf.fieldbyname('t04').value)+','
  else str1:=str1+'t04=0,';
  if not tblline_wf.fieldbyname('ttl').isnull then
  str1:=str1+'ttl='+floattostr(tblline_wf.fieldbyname('ttl').value)+' '
  else str1:=str1+'ttl=0 ';
  str1:=str1+'where seq='+tblline_wf.fieldbyname('seq').asstring;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

procedure Tfrmlineinfo.tblline_wfq01change(Sender: TField);
var
  p01,p02,p03,p04,f01,f02,f03,f04,a01,a02,a03,a04,e01,e02,e03,e04:double;
begin
  p01:=0; p02:=0; p03:=0; p04:=0;
  f01:=0; f02:=0; f03:=0; f04:=0;
  a01:=0; a02:=0; a03:=0; a04:=0;
  e01:=0; e02:=0; e03:=0; e04:=0;
  if not tblline_wf.fieldbyname('p01').isnull then p01:=tblline_wf.fieldbyname('p01').value;
  if not tblline_wf.fieldbyname('p02').isnull then p02:=tblline_wf.fieldbyname('p02').value;
  if not tblline_wf.fieldbyname('p03').isnull then p03:=tblline_wf.fieldbyname('p03').value;
  if not tblline_wf.fieldbyname('p04').isnull then p04:=tblline_wf.fieldbyname('p04').value;
  if not tblline_wf.fieldbyname('f01').isnull then f01:=tblline_wf.fieldbyname('f01').value;
  if not tblline_wf.fieldbyname('f02').isnull then f02:=tblline_wf.fieldbyname('f02').value;
  if not tblline_wf.fieldbyname('f03').isnull then f03:=tblline_wf.fieldbyname('f03').value;
  if not tblline_wf.fieldbyname('f04').isnull then f04:=tblline_wf.fieldbyname('f04').value;
  if not tblline_wf.fieldbyname('a01').isnull then a01:=tblline_wf.fieldbyname('a01').value;
  if not tblline_wf.fieldbyname('a02').isnull then a02:=tblline_wf.fieldbyname('a02').value;
  if not tblline_wf.fieldbyname('a03').isnull then a03:=tblline_wf.fieldbyname('a03').value;
  if not tblline_wf.fieldbyname('a04').isnull then a04:=tblline_wf.fieldbyname('a04').value;
  if not tblline_wf.fieldbyname('e01').isnull then e01:=tblline_wf.fieldbyname('e01').value;
  if not tblline_wf.fieldbyname('e02').isnull then e02:=tblline_wf.fieldbyname('e02').value;
  if not tblline_wf.fieldbyname('e03').isnull then e03:=tblline_wf.fieldbyname('e03').value;
  if not tblline_wf.fieldbyname('e04').isnull then e04:=tblline_wf.fieldbyname('e04').value;
  tblline_wf.fieldbyname('pttl').value:=p01+p02+p03+p04;
  tblline_wf.fieldbyname('fttl').value:=f01+f02+f03+f04;
  tblline_wf.fieldbyname('attl').value:=a01+a02+a03+a04;
  tblline_wf.fieldbyname('ettl').value:=e01+e02+e03+e04;
  tblline_wf.fieldbyname('t01').value:=p01+f01+a01+e01;
  tblline_wf.fieldbyname('t02').value:=p02+f02+a02+e02;
  tblline_wf.fieldbyname('t03').value:=p03+f03+a03+e03;
  tblline_wf.fieldbyname('t04').value:=p04+f04+a04+e04;
  tblline_wf.fieldbyname('ttl').value:=p01+f01+a01+e01+p02+f02+a02+e02+p03+f03+a03+e03+p04+f04+a04+e04;
end;

procedure Tfrmlineinfo.SpeedButton9Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if (tblline.state=dsinsert) or (tblline.state=dsedit) then tblline.post;
  with clientdataset3 do begin
    close;
    params.clear;
    commandtext:='select distinct tplant,tshop,pline,workert,workero,gy,ltype from tblline where lactive=1';
    if edit1.text>'' then commandtext:=commandtext+' and tplant='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and tshop='''+edit2.text+'''';
    if edit3.text>'' then commandtext:=commandtext+' and pline='''+edit3.text+'''';
    commandtext:=commandtext+' order by tplant,ltype,tshop,pline';
    open;
    if not fieldbyname('tplant').isnull then begin
      if edit1.text>'' then fty001.Caption:=edit1.Text
      else if (edit2.Text>'') or (edit3.text>'') then fty001.Caption:=fieldbyname('tplant').value
      else fty001.Caption:='';
      if edit2.text>'' then shop001.Caption:=edit2.text
      else if edit3.text>'' then shop001.Caption:=fieldbyname('tshop').value
      else shop001.Caption:='';
      line001.Caption:=edit3.text;
      ppReport2.Print;
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmlineinfo.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select count(*) as c1,sum(workert) as s1,sum(workero) as s2,sum(gy) as s3 from tblline where lactive=1';
    if edit1.text>'' then commandtext:=commandtext+' and tplant='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and tshop='''+edit2.text+'''';
    if edit3.text>'' then commandtext:=commandtext+' and pline='''+edit3.text+'''';
    open;
    if not fieldbyname('c1').isnull then begin
      line002.Caption:='# of lines: '+fieldbyname('c1').asstring;
      line002.Caption:=line002.Caption+'    ttl default dSWF: '+fieldbyname('s1').asstring;
      line002.Caption:=line002.Caption+'    ttl current dSWF: '+fieldbyname('s2').asstring;
      line002.Caption:=line002.Caption+'    ttl over/shortage: '+formatfloat('+#,0;-#,0',fieldbyname('s3').asfloat);
    end else line002.Caption:='';
  end;
end;

procedure Tfrmlineinfo.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmlineinfo.tbllineWF5Change(Sender: TField);
//var
//  f5,f6,f8,f9:double;
begin
  {
  if not tblline.fieldbyname('wf5').IsNull then f5:=tblline.fieldbyname('wf5').value else f5:=0;
  if not tblline.fieldbyname('wf6').IsNull then f6:=tblline.fieldbyname('wf6').value else f6:=0;
  if not tblline.fieldbyname('wf8').IsNull then f8:=tblline.fieldbyname('wf8').value else f8:=0;
  if not tblline.fieldbyname('wf9').IsNull then f9:=tblline.fieldbyname('wf9').value else f9:=0;
  tblline.fieldbyname('wf11').value:=f8+f9-f5-f6;
  }
end;

procedure Tfrmlineinfo.SpeedButton11Click(Sender: TObject);
begin
  if frmswf_profile=nil then frmswf_profile:=tfrmswf_profile.Create(nil);
  frmswf_profile.Show;
end;

procedure Tfrmlineinfo.SpeedButton7Click(Sender: TObject);
begin
  if frmfprofile=nil then frmfprofile:=tfrmfprofile.create(nil);
  with frmfprofile.query1 do begin
    close;
    params.clear;
    commandtext:='select * from tblplant';// where tplant='''+tblline.fieldbyname('tplant').value+'''';
    open;
    locate('tplant',tblline.fieldbyname('tplant').value,[lopartialkey]);
  end;
  frmfprofile.show;
end;

procedure Tfrmlineinfo.SpeedButton10Click(Sender: TObject);
begin
  if frmwprofile=nil then frmwprofile:=tfrmwprofile.create(nil);
  with frmwprofile.query1 do begin
    close;
    params.clear;
    commandtext:='select * from tblwks';// where tshop='''+tblline.fieldbyname('tshop').value+'''';
    open;
    locate('tshop',tblline.fieldbyname('tshop').value,[lopartialkey]);
  end;
  frmwprofile.show;
end;

procedure Tfrmlineinfo.ppHeaderBand1BeforePrint(Sender: TObject);
var
  s1,s2,s3,s4,s6:double;
  x1,x2,x3,x4:double;
begin
  s1:=clientdataset3.fieldbyname('wf7').value+clientdataset3.fieldbyname('wf10').value;
  s2:=clientdataset3.fieldbyname('wf8').value+clientdataset3.fieldbyname('wf9').value;
  s3:=clientdataset3.fieldbyname('wf12').value+clientdataset3.fieldbyname('wf13').value+clientdataset3.fieldbyname('wf14').value+clientdataset3.fieldbyname('wf15').value+clientdataset3.fieldbyname('wf16').value+clientdataset3.fieldbyname('wf26').value;
  s4:=clientdataset3.fieldbyname('wf17').value+clientdataset3.fieldbyname('wf18').value+clientdataset3.fieldbyname('wf19').value+clientdataset3.fieldbyname('wf20').value+clientdataset3.fieldbyname('wf21').value+clientdataset3.fieldbyname('wf27').value;
  s6:=clientdataset3.fieldbyname('wf23').value+clientdataset3.fieldbyname('wf24').value+clientdataset3.fieldbyname('wf25').value+clientdataset3.fieldbyname('wf45').value+clientdataset3.fieldbyname('wf46').value+clientdataset3.fieldbyname('wf47').value+clientdataset3.fieldbyname('wf48').value;
  ttlline01.Caption:='TTL: '+formatfloat('#0',s1);
  ttlline02.Caption:='TTL: '+formatfloat('#0',s2);
  ttlwks01.Caption:='TTL: '+formatfloat('#0',s3);
  ttlwks02.Caption:='TTL: '+formatfloat('#0',s4);
  ttlfty02.Caption:='TTL: '+formatfloat('#0',s6);
  dt01.Caption:='';dt02.Caption:='';
  if clientdataset3.fieldbyname('lactive').value=true then begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select * from sp_line_date(:x1)';
    params[0].asstring:=clientdataset3.fieldbyname('pline').value;
    open;
    if ((fieldbyname('o_ksrq').value<date) and (fieldbyname('o_ksrq').value>encodedate(1899,12,30))) then begin
      l01.Caption:='Actual start date/sect hr ';
      dt01.Caption:=formatdatetime('yyyy-MM-dd',fieldbyname('o_ksrq').value)+'/'+formatfloat('0.0',fieldbyname('o_ksjs').value);
    end;
    if (fieldbyname('o_wcrq').value<date) and (fieldbyname('o_wcrq').value>encodedate(1899,12,30)) then begin
      l02.Caption:='Projected end date/sect hr ';
      dt02.Caption:=formatdatetime('yyyy-MM-dd',fieldbyname('o_wcrq').value)+'/'+formatfloat('0.0',fieldbyname('o_wcjs').value);
    end;
  end;
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select * from tblline_log where pline='''+clientdataset3.fieldbyname('pline').value+'''';
      open;
      if not fieldbyname('aen').isnull then begin
        l02.Caption:='Actual end date/sect hr ';
        dt02.Caption:=formatdatetime('yyyy-MM-dd',fieldbyname('aen').value)+'/'+formatfloat('0.0',fieldbyname('aen1').value);
      end else if not fieldbyname('pen').isnull then begin
        l02.Caption:='Projected end date/sect hr ';
        dt02.Caption:=formatdatetime('yyyy-MM-dd',fieldbyname('pen').value)+'/'+formatfloat('0.0',fieldbyname('pen1').value);
      end else begin
        l02.Caption:='Projected end date/sect hr ';
        dt02.Caption:='';
      end;
    end;
  end else begin
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select * from tblline_log where pline='''+clientdataset3.fieldbyname('pline').value+'''';
      open;
      if not fieldbyname('ast').isnull then begin
        l01.Caption:='Actual start date/sect hr ';
        dt01.Caption:=formatdatetime('yyyy-MM-dd',fieldbyname('ast').value)+'/'+formatfloat('0.0',fieldbyname('ast1').value);
      end else if not fieldbyname('pst').isnull then begin
        l01.Caption:='Planning start date/sect hr ';
        dt01.Caption:=formatdatetime('yyyy-MM-dd',fieldbyname('pst').value)+'/'+formatfloat('0.0',fieldbyname('pst1').value);
      end else begin
        l01.Caption:='Planning start date/sect hr ';
        dt01.Caption:='';
      end;
      if not fieldbyname('aen').isnull then begin
        l02.Caption:='Actual end date/sect hr ';
        dt02.Caption:=formatdatetime('yyyy-MM-dd',fieldbyname('aen').value)+'/'+formatfloat('0.0',fieldbyname('aen1').value);
      end else if not fieldbyname('pen').isnull then begin
        l02.Caption:='Projected end date/sect hr ';
        dt02.Caption:=formatdatetime('yyyy-MM-dd',fieldbyname('pen').value)+'/'+formatfloat('0.0',fieldbyname('pen1').value);
      end else begin
        l02.Caption:='Projected end date/sect hr ';
        dt02.Caption:='';
      end;
    end;
  end;

  if clientdataset3.fieldbyname('tplant').value='KB' then x1:=clientdataset3.fieldbyname('workert').value*100.0/95.0*0.01
  else x1:=clientdataset3.fieldbyname('workert').value*100.0/92.0*0.01;
  if clientdataset3.fieldbyname('tplant').value='KB' then x2:=clientdataset3.fieldbyname('workert').value*100.0/95.0*0.04
  else x2:=clientdataset3.fieldbyname('workert').value*100.0/92.0*0.07;
  if clientdataset3.fieldbyname('tplant').value='KB' then x3:=clientdataset3.fieldbyname('workert').value*100.0/95.0*0.07
  else x3:=clientdataset3.fieldbyname('workert').value*100.0/92.0*0.06;
  x4:=clientdataset3.fieldbyname('workert').value+x1+x2+x3;
  x01.Caption:=' + '+formatfloat('#0.00',x1)+' + '+formatfloat('#0.00',x2)+' + '+formatfloat('#0.00',x3)+' = ';
  tx01.caption:=formatfloat('0.00',x4);
  if clientdataset3.fieldbyname('tplant').value='KB' then x1:=clientdataset3.fieldbyname('workero').value*100.0/95.0*0.01
  else x1:=clientdataset3.fieldbyname('workero').value*100.0/92.0*0.02;
  if clientdataset3.fieldbyname('tplant').value='KB' then x2:=clientdataset3.fieldbyname('workero').value*100.0/95.0*0.04
  else x2:=clientdataset3.fieldbyname('workero').value*100.0/92.0*0.06;
  if clientdataset3.fieldbyname('tplant').value='KB' then x3:=clientdataset3.fieldbyname('workero').value*100.0/95.0*0.07
  else x3:=clientdataset3.fieldbyname('workero').value*100.0/92.0*0.06;
  x4:=clientdataset3.fieldbyname('workero').value+x1+x2+x3;
  x02.Caption:=' + '+formatfloat('#0.00',x1)+' + '+formatfloat('#0.00',x2)+' + '+formatfloat('#0.00',x3)+' = ';
  tx02.caption:=formatfloat('0.00',x4);
  ex03.Caption:=formatfloat('0.00',clientdataset3.fieldbyname('ysjhl').value*0.97);
  //calculation ex01 & ex02
  ex01.Caption:='0.00';
  ex02.Caption:='0.00';
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(eff1*(csect+ceot))/sum(csect+ceot) as e1,sum(eff2*(csect+ceot))/sum(csect+ceot) as e2 from line_shjs '
                +'where pline='''+clientdataset3.fieldbyname('pline').value+''' and flag=''0'' and dt1>=:x1 and dt1<=:x2 and csect+ceot>0';
    params[0].asdate:=date-90;
    params[1].asdate:=date;
    open;
    if not fieldbyname('e1').isnull then ex01.Caption:=formatfloat('0.00',fieldbyname('e1').value);
    if not fieldbyname('e2').isnull then ex02.Caption:=formatfloat('0.00',fieldbyname('e2').value);
  end;
  if clientdataset3.FieldByName('tplant').value='KB' then begin
    x001.Visible:=false;ot2001.Visible:=false;ot2002.Visible:=false;ot2003.Visible:=false;ot2004.Visible:=false;ot2005.Visible:=false;ot2006.Visible:=false;ot2007.Visible:=false;
  end else begin
    x001.Visible:=true;ot2001.Visible:=true;ot2002.Visible:=true;ot2003.Visible:=true;ot2004.Visible:=true;ot2005.Visible:=true;ot2006.Visible:=true;ot2007.Visible:=true;
  end;
end;

procedure Tfrmlineinfo.SpeedButton12Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    with clientdataset4 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='execute procedure sp_gen_lcadpt(:x1,:x2)';
      params[0].asdatetime:=tm;
      params[1].asstring:=tblline.fieldbyname('tplant').value;
      execute;
    end;
    with clientdataset5 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_lc_adpt where tm=:x1 order by cust,ptyp';
      params[0].asdatetime:=tm;
      open;
      if not fieldbyname('tm').isnull then begin
        factory001.Caption:=tblline.fieldbyname('tplant').value;
        ppReport3.Print;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmlineinfo.ppSummaryBand2BeforePrint(Sender: TObject);
var
  l01,l02:integer;
  wf23,wf24,wf25,wf47,wf48:double;
  wf17,wf20,wf27,wf19,wf18,wf21:double;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select count(*) as cnt from tblline where tplant='''+clientdataset3.fieldbyname('tplant').value+''' and tshop>'''' and lactive=1';
    open;
    if not fieldbyname('cnt').isnull then l01:=fieldbyname('cnt').value else l01:=0;
    close;
    params.clear;
    commandtext:='select count(*) as cnt from tblline where tplant='''+clientdataset3.fieldbyname('tplant').value+''' and tshop='''+clientdataset3.fieldbyname('tshop').value+''' and lactive=1';
    open;
    if not fieldbyname('cnt').isnull then l02:=fieldbyname('cnt').value else l02:=0;
  end;
  wf23:=clientdataset3.fieldbyname('wf23').value;wf24:=clientdataset3.fieldbyname('wf24').value;wf25:=clientdataset3.fieldbyname('wf25').value;
  wf47:=clientdataset3.fieldbyname('wf47').value;wf48:=clientdataset3.fieldbyname('wf48').value;
  if clientdataset3.fieldbyname('tplant').value='KB' then wfty01.Caption:='This Factory(incl 3 workshops):  '
  else wfty01.Caption:='This Factory(incl 7 workshops):  ';
  wfty01.Caption:=wfty01.caption+'IE office: '+formatfloat('#0.00',wf23/l01)+'  QC office: '+formatfloat('#0.00',wf24/l01)+'  Products technician: '+formatfloat('#0.00',wf25/l01);
  wfty01.caption:=wfty01.caption+'  On-site IE: '+formatfloat('#0.00',wf47/l01)+'  Sample QC: '+formatfloat('#0.00',wf48/l01)+'  ';
  wf17:=clientdataset3.fieldbyname('wf17').value;wf20:=clientdataset3.fieldbyname('wf20').value;wf27:=clientdataset3.fieldbyname('wf27').value;
  wf19:=clientdataset3.fieldbyname('wf19').value;wf18:=clientdataset3.fieldbyname('wf18').value;wf21:=clientdataset3.fieldbyname('wf21').value;
  wshop01.Caption:='This Workshop(incl '+inttostr(l02)+' lines):  ';
  wshop01.Caption:=wshop01.caption+'Supervisor: '+formatfloat('#0.00',wf17/l02)+'  Assistant Supervisor: '+formatfloat('#0.00',wf20/l02);
  wshop01.Caption:=wshop01.caption+'  Line QC - leader (products): '+formatfloat('#0.00',wf27/l02)+'  Mobile QC (wip): '+formatfloat('#0.00',wf19/l02);
  wshop01.Caption:=wshop01.caption+'  Sewing Mc Mechanic: '+formatfloat('#0.00',wf18/l02)+'  Operator Assistant: '+formatfloat('#0.00',wf21/l02);
end;

procedure Tfrmlineinfo.tbllineBeforeDelete(DataSet: TDataSet);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select pline from tblshedule where pline='''+tblline.fieldbyname('pline').value+'''';
    open;
    if not fieldbyname('pline').isnull then begin
      showmessage('Can not delete this line!');
      abort;
    end;
  end;
end;

procedure Tfrmlineinfo.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if tblline.State=dsbrowse then begin
    if (tblline.fieldbyname('need_mp').value=true) then
    SpeedButton16.Visible:=true else SpeedButton16.Visible:=false;
  end;
end;

procedure Tfrmlineinfo.DBCheckBox1Click(Sender: TObject);
begin
  if (tblline.State=dsedit) or (tblline.State=dsinsert) then tblline.Post;
  if frmlineactive=nil then frmlineactive:=tfrmlineactive.Create(nil);
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select pline from tblline_log where pline='''+tblline.fieldbyname('pline').value+'''';
    open;
    if fieldbyname('pline').isnull then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftboolean,'x2',ptinput);
        commandtext:='insert into tblline_log(pline,lactive) values(:x1,:x2)';
        params[0].asstring:=tblline.fieldbyname('pline').value;
        params[1].asboolean:=tblline.fieldbyname('lactive').value;
        execute;
      end;
    end;
  end;
  frmlineactive.Show;
end;

procedure Tfrmlineinfo.PageControl1Change(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex=1 then begin
    if tblline.FieldByName('tplant').value='KB' then begin
      lkb01.Visible:=true;
      lsl01.Visible:=false;
    end else begin
      lsl01.Visible:=true;
      lkb01.Visible:=false;
    end;
  end else if pagecontrol1.activepageindex=2 then begin
    with tblline_wf do begin
      close;
      open;
    end;
  end;
end;

procedure Tfrmlineinfo.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select count(*) as c1,sum(workert) as s1,sum(workero) as s2,sum(gy) as s3 from tblline where lactive=1 and ltype='''+clientdataset3.fieldbyname('ltype').value+'''';
    if edit1.text>'' then commandtext:=commandtext+' and tplant='''+edit1.text+'''';
    if edit2.text>'' then commandtext:=commandtext+' and tshop='''+edit2.text+'''';
    if edit3.text>'' then commandtext:=commandtext+' and pline='''+edit3.text+'''';
    open;
    if not fieldbyname('c1').isnull then begin
      line0002.Caption:='Sub-total  # of lines:'+fieldbyname('c1').asstring;
      line0002.Caption:=line0002.Caption+'  ttl default dSWF: '+fieldbyname('s1').asstring;
      line0002.Caption:=line0002.Caption+'  ttl current dSWF: '+fieldbyname('s2').asstring;
      line0002.Caption:=line0002.Caption+'  ttl over/shortage: '+formatfloat('+#,0;-#,0',fieldbyname('s3').asfloat);
    end else line0002.Caption:='';
  end;
end;

procedure Tfrmlineinfo.BitBtn1Click(Sender: TObject);
begin
  if frmline_wf=nil then frmline_wf:=tfrmline_wf.create(nil);
  frmline_wf.windowstate:=wsMaximized;
  frmline_wf.show;
end;

procedure Tfrmlineinfo.ChangeLine1Click(Sender: TObject);
begin
  if frmchangeline=nil then frmchangeline:=tfrmchangeline.create(nil);
  frmchangeline.edit1.text:=tblline.fieldbyname('pline').value;
  frmchangeline.show;
end;

procedure Tfrmlineinfo.SpeedButton13Click(Sender: TObject);
begin
  if frmsimfactory=nil then frmsimfactory:=tfrmsimfactory.Create(nil);
  frmsimfactory.ComboBox1.text:=tblline.fieldbyname('tplant').value;
  frmsimfactory.show;
end;

procedure Tfrmlineinfo.SpeedButton14Click(Sender: TObject);
begin
  if application.MessageBox('Approve the data for this production line','Confrimation',mb_iconquestion+mb_okcancel)=idok then
    showmessage('Approved!'); 
end;

procedure Tfrmlineinfo.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport3.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmlineinfo.FormCreate(Sender: TObject);
begin
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
          params[2].AsString:='Line Profile';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
end;

procedure Tfrmlineinfo.FormDestroy(Sender: TObject);
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

procedure Tfrmlineinfo.tbllineWF7Change(Sender: TField);
var
  f5,f6,f8,f9:double;
begin

  if not tblline.fieldbyname('wf7').IsNull then f5:=tblline.fieldbyname('wf7').value else f5:=0;
  if not tblline.fieldbyname('wf10').IsNull then f6:=tblline.fieldbyname('wf10').value else f6:=0;
  if not tblline.fieldbyname('wf8').IsNull then f8:=tblline.fieldbyname('wf8').value else f8:=0;
  if not tblline.fieldbyname('wf9').IsNull then f9:=tblline.fieldbyname('wf9').value else f9:=0;
  tblline.fieldbyname('wf11').value:=f8+f9-f5-f6;

end;

procedure Tfrmlineinfo.SpeedButton15Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlineinfo.SpeedButton16Click(Sender: TObject);
begin
  if frmline_mapping=nil then frmline_mapping:=tfrmline_mapping.Create(nil);
  with frmline_mapping.query1 do begin
    close;
    params.clear;
    commandtext:='select * from tblline_mapping where tplant='''+tblline.fieldbyname('tplant').value+''' and pline='''+tblline.fieldbyname('pline').value+'''';
    open;
  end;
  frmline_mapping.show;
end;

procedure Tfrmlineinfo.ppFooterBand1BeforePrint(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select usr1,usr2 from line_approval where tplant='''+tblline.fieldbyname('tplant').value+'''';
    open;
    if not fieldbyname('usr1').isnull then usr1.Caption:=fieldbyname('usr1').value else usr1.Caption:='';
    if not fieldbyname('usr2').isnull then usr2.Caption:=fieldbyname('usr2').value else usr2.Caption:='';
  end;
end;

end.
