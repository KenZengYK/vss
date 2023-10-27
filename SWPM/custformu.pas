unit custformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Grids, DBGridEh, DB, DBClient, StdCtrls,
  Buttons, ppVar, ppCtrls, ppPrnabl, ppClass, ppDB, ppBands, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppViewr, ppStrtch,
  ppMemo, myChkBox, Mask, rxToolEdit, GridsEh, ADODB, ppSubRpt, ppRichTx,
  Menus, ppParameter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridExportLink, DateUtils;

type
  Tfrmcustomer = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    Panel4: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DataSource2: TDataSource;
    BitBtn5: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel4: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel9: TppLabel;
    ppDBText5: TppDBText;
    ppLabel32: TppLabel;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Label1: TLabel;
    ComboBox1: TComboBox;
    DataSource3: TDataSource;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel10: TppLabel;
    ppDBText6: TppDBText;
    ppLine1: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
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
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppLabel11: TppLabel;
    cust01: TppLabel;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel12: TppLabel;
    ppLabel48: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel49: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    cust02: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
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
    ppDBText92: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppShape3: TppShape;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel59: TppLabel;
    ppLine2: TppLine;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
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
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
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
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppLabel52: TppLabel;
    ppLabel58: TppLabel;
    ppDBCalc21: TppDBCalc;
    ppShape4: TppShape;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    BitBtn6: TBitBtn;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel13: TppLabel;
    ppShape2: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel30: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel31: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel62: TppLabel;
    cust03: TppLabel;
    ppLabel38: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
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
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel74: TppLabel;
    ppLabel44: TppLabel;
    ppLine19: TppLine;
    ppLabel47: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel78: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLine20: TppLine;
    ppLabel46: TppLabel;
    ppLabel86: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText69: TppDBText;
    ppDBText91: TppDBText;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppDBText22: TppDBText;
    ppDBText118: TppDBText;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText123: TppDBText;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppDBMemo3: TppDBMemo;
    ppDBMemo4: TppDBMemo;
    ppFooterBand2: TppFooterBand;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel81: TppLabel;
    ppLabel45: TppLabel;
    ppLabel85: TppLabel;
    ppLabel87: TppLabel;
    Label3: TLabel;
    ComboBox3: TComboBox;
    ppLabel93: TppLabel;
    ppLabel111: TppLabel;
    ppLine18: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel108: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppDBText16: TppDBText;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppDBText13: TppDBText;
    ppDBText119: TppDBText;
    ppLabel122: TppLabel;
    tplant01: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    Label4: TLabel;
    ComboBox4: TComboBox;
    ppLabel125: TppLabel;
    team01: TppLabel;
    BitBtn7: TBitBtn;
    ppLine23: TppLine;
    ppLabel70: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLine24: TppLine;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppDBText122: TppDBText;
    ppDBText124: TppDBText;
    ppReport4: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel140: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    cust04: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppDBText137: TppDBText;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppDBText146: TppDBText;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppDBText150: TppDBText;
    ppDBText151: TppDBText;
    ppDBText152: TppDBText;
    ppDBText153: TppDBText;
    ppDBText154: TppDBText;
    ppDBText155: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppShape5: TppShape;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLine25: TppLine;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppDBText161: TppDBText;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    ppDBText164: TppDBText;
    ppDBText165: TppDBText;
    ppDBText166: TppDBText;
    ppDBText167: TppDBText;
    ppDBText168: TppDBText;
    ppDBText169: TppDBText;
    ppDBText170: TppDBText;
    ppDBText171: TppDBText;
    ppDBText172: TppDBText;
    ppDBText173: TppDBText;
    ppDBText174: TppDBText;
    ppDBText175: TppDBText;
    ppDBText176: TppDBText;
    ppDBText177: TppDBText;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppReport5: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppLabel155: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    cust05: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText178: TppDBText;
    ppDBText179: TppDBText;
    ppDBText180: TppDBText;
    ppDBText181: TppDBText;
    ppDBText182: TppDBText;
    p001: TppDBText;
    p002: TppDBText;
    p003: TppDBText;
    p004: TppDBText;
    p005: TppDBText;
    p006: TppDBText;
    p007: TppDBText;
    p008: TppDBText;
    p009: TppDBText;
    p010: TppDBText;
    p021: TppDBText;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppFooterBand5: TppFooterBand;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppShape6: TppShape;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLine26: TppLine;
    ppDBText204: TppDBText;
    ppDBText205: TppDBText;
    ppDBText206: TppDBText;
    ppDBText207: TppDBText;
    ppDBText208: TppDBText;
    ppDBText209: TppDBText;
    ppDBText210: TppDBText;
    ppDBText211: TppDBText;
    ppDBText212: TppDBText;
    ppDBText213: TppDBText;
    ppLabel167: TppLabel;
    ppGroupFooterBand12: TppGroupFooterBand;
    ppShape7: TppShape;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppLabel168: TppLabel;
    ppDBCalc42: TppDBCalc;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppDBText224: TppDBText;
    ppLabel143: TppLabel;
    ppLabel172: TppLabel;
    ppDBText225: TppDBText;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppGroupFooterBand13: TppGroupFooterBand;
    ppGroup14: TppGroup;
    ppGroupHeaderBand14: TppGroupHeaderBand;
    ppGroupFooterBand14: TppGroupFooterBand;
    ppLine14: TppLine;
    ppLabel33: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppSummaryBand1: TppSummaryBand;
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
    ppShape8: TppShape;
    ppShape9: TppShape;
    Label5: TLabel;
    DateEdit1: TDateEdit;
    Label6: TLabel;
    DateEdit2: TDateEdit;
    dtrange1: TppLabel;
    ppGroup15: TppGroup;
    ppGroupHeaderBand15: TppGroupHeaderBand;
    ppGroupFooterBand15: TppGroupFooterBand;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppDBText127: TppDBText;
    xh1: TRadioGroup;
    ppDBText226: TppDBText;
    ppDBText227: TppDBText;
    ppDBText228: TppDBText;
    ppDBText229: TppDBText;
    ppDBText230: TppDBText;
    ppDBText231: TppDBText;
    ppDBText232: TppDBText;
    ppDBText233: TppDBText;
    ppDBText234: TppDBText;
    ppDBText235: TppDBText;
    ppDBText246: TppDBText;
    ppLabel102: TppLabel;
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
    ppLabel107: TppLabel;
    ppDBCalc63: TppDBCalc;
    ppDBText247: TppDBText;
    ppDBText248: TppDBText;
    ppDBText249: TppDBText;
    ppDBText250: TppDBText;
    ppDBText251: TppDBText;
    ppDBText252: TppDBText;
    ppDBText253: TppDBText;
    ppDBText254: TppDBText;
    ppDBText255: TppDBText;
    ppDBText256: TppDBText;
    ppDBText257: TppDBText;
    ppDBText258: TppDBText;
    ppDBText259: TppDBText;
    ppDBText260: TppDBText;
    ppDBText261: TppDBText;
    ppDBText262: TppDBText;
    ppDBText263: TppDBText;
    ppDBText264: TppDBText;
    ppDBText265: TppDBText;
    ppDBText266: TppDBText;
    ppDBText267: TppDBText;
    ppDBText268: TppDBText;
    ppLabel126: TppLabel;
    ppLabel131: TppLabel;
    dtrange4: TppLabel;
    BitBtn8: TBitBtn;
    Query6: TClientDataSet;
    Query7: TClientDataSet;
    DataSource4: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppReport6: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppLabel158: TppLabel;
    ppLabel173: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppLabel174: TppLabel;
    ppSystemVariable12: TppSystemVariable;
    ppLabel175: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppFooterBand6: TppFooterBand;
    ppLabel176: TppLabel;
    cust001: TppLabel;
    ppLabel177: TppLabel;
    dt001: TppLabel;
    ppLabel178: TppLabel;
    dt002: TppLabel;
    ppDBText269: TppDBText;
    BitBtn9: TBitBtn;
    ClientDataSet2: TClientDataSet;
    DataSet2: TADOQuery;
    ppLine42: TppLine;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppDBText275: TppDBText;
    ppReport7: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppLabel198: TppLabel;
    ppShape11: TppShape;
    ppLabel199: TppLabel;
    ppLabel201: TppLabel;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLabel206: TppLabel;
    ppLabel212: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppLabel213: TppLabel;
    ppSystemVariable14: TppSystemVariable;
    ppLabel214: TppLabel;
    ppLabel224: TppLabel;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppLabel229: TppLabel;
    ppLabel230: TppLabel;
    ppLine43: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine58: TppLine;
    ppLabel271: TppLabel;
    ppLabel272: TppLabel;
    ppLine61: TppLine;
    ppLabel284: TppLabel;
    ppLabel286: TppLabel;
    ppLabel288: TppLabel;
    ppLine62: TppLine;
    ppLabel291: TppLabel;
    ppLabel292: TppLabel;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLabel304: TppLabel;
    ppLabel306: TppLabel;
    ppLabel309: TppLabel;
    ppLabel310: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppShape12: TppShape;
    ppDBText276: TppDBText;
    pptext6: TppDBText;
    pptext7: TppDBText;
    ppDBText285: TppDBText;
    ppDBText286: TppDBText;
    cs002: TppDBText;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine75: TppLine;
    ppLine77: TppLine;
    pptext8: TppDBText;
    ppFooterBand7: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine78: TppLine;
    ppLine48: TppLine;
    ppLine50: TppLine;
    ppLine57: TppLine;
    ppLine66: TppLine;
    ppLabel200: TppLabel;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppLabel209: TppLabel;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLine79: TppLine;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLabel219: TppLabel;
    ppLabel220: TppLabel;
    ppLabel221: TppLabel;
    ppLabel222: TppLabel;
    ppLabel223: TppLabel;
    ppLabel225: TppLabel;
    pptext9: TppDBText;
    ppLine80: TppLine;
    ppLabel202: TppLabel;
    ppLabel205: TppLabel;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLabel234: TppLabel;
    ppLabel235: TppLabel;
    ppLabel236: TppLabel;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppLabel239: TppLabel;
    ppLine59: TppLine;
    ppLine74: TppLine;
    pptext13: TppDBText;
    pptext14: TppDBText;
    ppLine81: TppLine;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLabel243: TppLabel;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLine82: TppLine;
    ppLine83: TppLine;
    pptext1: TppDBText;
    pptext2: TppDBText;
    pptext3: TppDBText;
    pptext4: TppDBText;
    pptext5: TppDBText;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppLabel251: TppLabel;
    ppLabel252: TppLabel;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    pptext12: TppDBText;
    ppShape14: TppShape;
    ppLabel259: TppLabel;
    ppLine87: TppLine;
    ppDBText284: TppDBText;
    ppDBText293: TppDBText;
    ppLabel226: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppLabel262: TppLabel;
    ppDBText294: TppDBText;
    ppLabel263: TppLabel;
    ppLabel264: TppLabel;
    ppDBText295: TppDBText;
    ppLine44: TppLine;
    ppLine91: TppLine;
    ppLabel265: TppLabel;
    ppLabel266: TppLabel;
    ppLabel267: TppLabel;
    pptext15: TppDBText;
    ppLine92: TppLine;
    ppLine93: TppLine;
    xtitle001: TppLabel;
    Query8: TClientDataSet;
    ppLabel268: TppLabel;
    ppLabel269: TppLabel;
    ppLabel270: TppLabel;
    ppLabel274: TppLabel;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLabel275: TppLabel;
    ppLine96: TppLine;
    ppLabel276: TppLabel;
    ppLabel278: TppLabel;
    ppLabel280: TppLabel;
    ppLabel285: TppLabel;
    ppLabel289: TppLabel;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppGroup16: TppGroup;
    ppGroupHeaderBand16: TppGroupHeaderBand;
    ppGroupFooterBand16: TppGroupFooterBand;
    ppGroup17: TppGroup;
    ppGroupHeaderBand17: TppGroupHeaderBand;
    ppGroupFooterBand17: TppGroupFooterBand;
    ppShape15: TppShape;
    ppLabel295: TppLabel;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppLabel300: TppLabel;
    ppLine99: TppLine;
    ppDBText183: TppDBText;
    ppDBText184: TppDBText;
    ppDBText185: TppDBText;
    ppDBText186: TppDBText;
    ppDBText187: TppDBText;
    ppDBText188: TppDBText;
    ppDBText189: TppDBText;
    ppDBText190: TppDBText;
    ppDBText191: TppDBText;
    ppDBText192: TppDBText;
    ppLabel302: TppLabel;
    ppLabel303: TppLabel;
    ppLabel305: TppLabel;
    ppLine100: TppLine;
    ppLine101: TppLine;
    xtitle0002: TppLabel;
    ppLabel308: TppLabel;
    ppLabel311: TppLabel;
    xtitle0001: TppLabel;
    ppLine102: TppLine;
    ppLine103: TppLine;
    a0001: TppLabel;
    a0002: TppLabel;
    a0003: TppLabel;
    a0004: TppLabel;
    a0005: TppLabel;
    a0006: TppLabel;
    a0007: TppLabel;
    a0008: TppLabel;
    a0009: TppLabel;
    a0010: TppLabel;
    ppShape16: TppShape;
    ppDBCalc64: TppDBCalc;
    ppDBCalc65: TppDBCalc;
    ppDBCalc66: TppDBCalc;
    ppDBCalc67: TppDBCalc;
    ppDBCalc68: TppDBCalc;
    ppDBCalc69: TppDBCalc;
    ppDBCalc70: TppDBCalc;
    ppDBCalc71: TppDBCalc;
    ppDBCalc72: TppDBCalc;
    ppDBCalc73: TppDBCalc;
    ppLabel307: TppLabel;
    ppDBCalc84: TppDBCalc;
    ppLabel312: TppLabel;
    ppDBCalc85: TppDBCalc;
    ppDBCalc86: TppDBCalc;
    ppDBCalc87: TppDBCalc;
    ppDBCalc88: TppDBCalc;
    ppDBCalc89: TppDBCalc;
    ppDBCalc90: TppDBCalc;
    ppDBCalc91: TppDBCalc;
    ppDBCalc92: TppDBCalc;
    ppDBCalc93: TppDBCalc;
    ppDBCalc94: TppDBCalc;
    ppLabel313: TppLabel;
    ppDBCalc105: TppDBCalc;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppLabel314: TppLabel;
    ppLabel315: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppShape10: TppShape;
    ppLabel181: TppLabel;
    ppLabel183: TppLabel;
    ppLabel185: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLine40: TppLine;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppDBText193: TppDBText;
    ppDBText194: TppDBText;
    ppDBText195: TppDBText;
    ppLabel189: TppLabel;
    ppLine120: TppLine;
    ppLabel190: TppLabel;
    x501: TppLabel;
    ppLabel317: TppLabel;
    ppLabel318: TppLabel;
    ppLine121: TppLine;
    ppLabel319: TppLabel;
    ppLabel321: TppLabel;
    ppLine122: TppLine;
    ppLabel322: TppLabel;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLine126: TppLine;
    x502: TppLabel;
    x503: TppLabel;
    x504: TppLabel;
    ppGroup18: TppGroup;
    ppGroupHeaderBand18: TppGroupHeaderBand;
    ppGroupFooterBand18: TppGroupFooterBand;
    ppGroup19: TppGroup;
    ppGroupHeaderBand19: TppGroupHeaderBand;
    ppGroupFooterBand19: TppGroupFooterBand;
    ppGroup20: TppGroup;
    ppGroupHeaderBand20: TppGroupHeaderBand;
    ppGroupFooterBand20: TppGroupFooterBand;
    Query9: TClientDataSet;
    Label7: TLabel;
    ComboBox5: TComboBox;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    Query10: TClientDataSet;
    DataSource5: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    ppSummaryBand3: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand8: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel343: TppLabel;
    ppDBText196: TppDBText;
    ppDBText197: TppDBText;
    ppHeaderBand8: TppHeaderBand;
    ppShape24: TppShape;
    ppLine144: TppLine;
    ppLabel345: TppLabel;
    ppShape21: TppShape;
    ppLine127: TppLine;
    ppLine128: TppLine;
    ppLine129: TppLine;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppLabel329: TppLabel;
    ppLabel330: TppLabel;
    ppLabel331: TppLabel;
    ppLabel335: TppLabel;
    ppLabel339: TppLabel;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLabel316: TppLabel;
    ppLabel324: TppLabel;
    ppLabel325: TppLabel;
    ppLine137: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppDBText198: TppDBText;
    ppDBText199: TppDBText;
    ppDBText200: TppDBText;
    ppDBText201: TppDBText;
    ppDBText202: TppDBText;
    ppLabel326: TppLabel;
    country001: TppLabel;
    ppLine130: TppLine;
    ppLabel327: TppLabel;
    ppLabel328: TppLabel;
    ppLabel332: TppLabel;
    ppLine131: TppLine;
    sz001: TppLabel;
    ppSummaryBand5: TppSummaryBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape22: TppShape;
    ppLabel333: TppLabel;
    ppLabel334: TppLabel;
    ppLine132: TppLine;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppLine138: TppLine;
    ppLine141: TppLine;
    ppLabel337: TppLabel;
    ppLabel338: TppLabel;
    ppLabel341: TppLabel;
    ppLabel342: TppLabel;
    ppLabel347: TppLabel;
    ppLine142: TppLine;
    ppLine143: TppLine;
    ppLabel349: TppLabel;
    ppLabel350: TppLabel;
    ppLabel351: TppLabel;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLabel353: TppLabel;
    ppLabel354: TppLabel;
    ppLabel355: TppLabel;
    ppHeaderBand9: TppHeaderBand;
    ppDetailBand9: TppDetailBand;
    ppShape23: TppShape;
    ppDBText203: TppDBText;
    ppDBText214: TppDBText;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppLine155: TppLine;
    ppLine156: TppLine;
    ppLine157: TppLine;
    ppLine158: TppLine;
    ppLine159: TppLine;
    ppDBText215: TppDBText;
    ppDBText216: TppDBText;
    ppDBText217: TppDBText;
    ppDBText218: TppDBText;
    ppDBText219: TppDBText;
    ppLine160: TppLine;
    sz002: TppLabel;
    ppSummaryBand6: TppSummaryBand;
    ppGroup21: TppGroup;
    ppGroupHeaderBand21: TppGroupHeaderBand;
    ppGroupFooterBand21: TppGroupFooterBand;
    ppGroup22: TppGroup;
    ppGroupHeaderBand22: TppGroupHeaderBand;
    ppGroupFooterBand22: TppGroupFooterBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand10: TppDetailBand;
    ppSummaryBand7: TppSummaryBand;
    Query11: TClientDataSet;
    DataSource6: TDataSource;
    ppDBPipeline4: TppDBPipeline;
    Query12: TClientDataSet;
    DataSource7: TDataSource;
    ppDBPipeline5: TppDBPipeline;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppLabel356: TppLabel;
    ppHeaderBand10: TppHeaderBand;
    ppShape25: TppShape;
    ppLabel357: TppLabel;
    ppLabel359: TppLabel;
    ppLabel361: TppLabel;
    ppLabel363: TppLabel;
    ppLabel364: TppLabel;
    ppLine161: TppLine;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppLine166: TppLine;
    ppLine168: TppLine;
    ppDBText220: TppDBText;
    ppDBText222: TppDBText;
    ppDBText223: TppDBText;
    ppDBText236: TppDBText;
    ppTitleBand4: TppTitleBand;
    ppDetailBand11: TppDetailBand;
    ppSummaryBand8: TppSummaryBand;
    ppLabel365: TppLabel;
    ppShape26: TppShape;
    ppLabel366: TppLabel;
    ppLabel377: TppLabel;
    ppLabel378: TppLabel;
    ppLine170: TppLine;
    ppLine172: TppLine;
    ppLine176: TppLine;
    ppLine178: TppLine;
    ppDBText240: TppDBText;
    ppDBText244: TppDBText;
    ppHeaderBand11: TppHeaderBand;
    Label8: TLabel;
    ComboBox6: TComboBox;
    ppLabel368: TppLabel;
    fty001: TppLabel;
    ppLabel369: TppLabel;
    fty002: TppLabel;
    ppLine174: TppLine;
    ppLine175: TppLine;
    ppLabel384: TppLabel;
    ppLine181: TppLine;
    ppLabel385: TppLabel;
    ppLabel323: TppLabel;
    ppLine184: TppLine;
    ppLine187: TppLine;
    Query13: TClientDataSet;
    DataSource8: TDataSource;
    ppDBPipeline6: TppDBPipeline;
    ppGroup23: TppGroup;
    ppGroupHeaderBand23: TppGroupHeaderBand;
    ppGroupFooterBand23: TppGroupFooterBand;
    ppSubReport5: TppSubReport;
    ppChildReport5: TppChildReport;
    ppLine189: TppLine;
    ppLabel391: TppLabel;
    ppLabel393: TppLabel;
    ppLine190: TppLine;
    ppTitleBand5: TppTitleBand;
    ppDetailBand12: TppDetailBand;
    ppSummaryBand9: TppSummaryBand;
    ppHeaderBand12: TppHeaderBand;
    ppShape27: TppShape;
    ppLabel392: TppLabel;
    ppLabel394: TppLabel;
    ppLabel397: TppLabel;
    ppLabel398: TppLabel;
    ppLine192: TppLine;
    ppLine194: TppLine;
    ppLine195: TppLine;
    ppLine197: TppLine;
    ppLabel406: TppLabel;
    ppLine202: TppLine;
    ppDBText237: TppDBText;
    ppDBText239: TppDBText;
    ppLabel407: TppLabel;
    ppLabel408: TppLabel;
    ppLine204: TppLine;
    ppLabel409: TppLabel;
    ppLabel411: TppLabel;
    ppLabel412: TppLabel;
    ppLabel414: TppLabel;
    ppLabel388: TppLabel;
    ppLabel416: TppLabel;
    ppLabel417: TppLabel;
    ppLabel418: TppLabel;
    ppLabel419: TppLabel;
    ppLabel420: TppLabel;
    ppLine213: TppLine;
    ppLabel399: TppLabel;
    ppLabel370: TppLabel;
    ppLine198: TppLine;
    ppLabel449: TppLabel;
    ppLabel380: TppLabel;
    ppLine203: TppLine;
    ppLabel404: TppLabel;
    ppLabel413: TppLabel;
    ppLabel415: TppLabel;
    ppLine199: TppLine;
    ppLabel320: TppLabel;
    ppLabel410: TppLabel;
    ppLabel431: TppLabel;
    ppLabel435: TppLabel;
    ppLabel422: TppLabel;
    ppLabel430: TppLabel;
    ppLabel443: TppLabel;
    ppLabel452: TppLabel;
    ppLabel372: TppLabel;
    ppLabel403: TppLabel;
    ppLabel453: TppLabel;
    ppLabel457: TppLabel;
    ppLine200: TppLine;
    ppLabel463: TppLabel;
    ppLabel464: TppLabel;
    ppLabel465: TppLabel;
    ppLabel466: TppLabel;
    ppLine201: TppLine;
    ppLabel467: TppLabel;
    ppLabel468: TppLabel;
    ppLine205: TppLine;
    ppLabel469: TppLabel;
    ppLabel470: TppLabel;
    ppLine206: TppLine;
    ppMemo2: TppMemo;
    ppLabel375: TppLabel;
    ppLine207: TppLine;
    ppLabel471: TppLabel;
    ppLine214: TppLine;
    ppLabel472: TppLabel;
    ppLabel473: TppLabel;
    ppLabel474: TppLabel;
    ppLabel475: TppLabel;
    ppLabel476: TppLabel;
    ppLine215: TppLine;
    ppLabel421: TppLabel;
    ppLabel423: TppLabel;
    ppLine196: TppLine;
    ppLabel424: TppLabel;
    ppLine208: TppLine;
    ppLine209: TppLine;
    ppLabel425: TppLabel;
    ppLabel426: TppLabel;
    ppLine210: TppLine;
    ppLine211: TppLine;
    ppLabel427: TppLabel;
    ppLabel428: TppLabel;
    ppLabel432: TppLabel;
    ppLabel433: TppLabel;
    ppLabel434: TppLabel;
    ppLabel436: TppLabel;
    ppLabel437: TppLabel;
    ppLabel438: TppLabel;
    ppLabel439: TppLabel;
    ppLabel440: TppLabel;
    ppLine212: TppLine;
    ppLine216: TppLine;
    ppLabel477: TppLabel;
    ppLine217: TppLine;
    ppLabel478: TppLabel;
    ppLabel479: TppLabel;
    ppLabel480: TppLabel;
    ppLabel481: TppLabel;
    ppLabel482: TppLabel;
    ppLine218: TppLine;
    ppLabel371: TppLabel;
    ppLabel373: TppLabel;
    ppLine167: TppLine;
    ppLabel374: TppLabel;
    ppLine169: TppLine;
    ppLine173: TppLine;
    ppLabel386: TppLabel;
    ppLabel389: TppLabel;
    ppLine182: TppLine;
    ppLine185: TppLine;
    ppLabel400: TppLabel;
    ppLabel401: TppLabel;
    ppLabel405: TppLabel;
    ppLabel441: TppLabel;
    ppLabel442: TppLabel;
    ppLabel444: TppLabel;
    ppLabel445: TppLabel;
    ppLabel446: TppLabel;
    ppLabel447: TppLabel;
    ppLabel448: TppLabel;
    ppLine188: TppLine;
    ppLine219: TppLine;
    ppLabel483: TppLabel;
    ppLine220: TppLine;
    ppLabel484: TppLabel;
    ppLabel485: TppLabel;
    ppLabel486: TppLabel;
    ppLabel487: TppLabel;
    ppLabel488: TppLabel;
    ppLine221: TppLine;
    ppLabel379: TppLabel;
    ppLabel381: TppLabel;
    ppLine177: TppLine;
    ppLabel382: TppLabel;
    ppLine179: TppLine;
    ppLine180: TppLine;
    ppLabel383: TppLabel;
    ppLabel387: TppLabel;
    ppLine183: TppLine;
    ppLine186: TppLine;
    ppLabel390: TppLabel;
    ppLabel450: TppLabel;
    ppLabel454: TppLabel;
    ppLabel455: TppLabel;
    ppLabel456: TppLabel;
    ppLabel458: TppLabel;
    ppLabel459: TppLabel;
    ppLabel460: TppLabel;
    ppLabel461: TppLabel;
    ppLabel462: TppLabel;
    ppLine191: TppLine;
    ppLine222: TppLine;
    ppLabel489: TppLabel;
    ppLine223: TppLine;
    ppLabel490: TppLabel;
    ppLabel491: TppLabel;
    ppLabel492: TppLabel;
    ppLabel493: TppLabel;
    ppLabel494: TppLabel;
    ppLine224: TppLine;
    ppReport8: TppReport;
    ppHeaderBand13: TppHeaderBand;
    ppLabel495: TppLabel;
    ppLabel496: TppLabel;
    ppSystemVariable15: TppSystemVariable;
    ppLabel497: TppLabel;
    ppSystemVariable16: TppSystemVariable;
    ppLabel498: TppLabel;
    ppLabel501: TppLabel;
    dt018: TppLabel;
    ppLabel503: TppLabel;
    dt028: TppLabel;
    ppLabel505: TppLabel;
    ppLabel506: TppLabel;
    ppShape28: TppShape;
    ppLabel507: TppLabel;
    ppLabel512: TppLabel;
    ppLine225: TppLine;
    ppLine226: TppLine;
    ppLabel519: TppLabel;
    ppLine232: TppLine;
    ppLabel520: TppLabel;
    ppLabel521: TppLabel;
    ppLine233: TppLine;
    ppLabel522: TppLabel;
    ppLine237: TppLine;
    ppLabel523: TppLabel;
    fty008: TppLabel;
    ppLine238: TppLine;
    ppLabel525: TppLabel;
    ppLabel526: TppLabel;
    ppLine239: TppLine;
    ppLine240: TppLine;
    ppLabel527: TppLabel;
    ppLabel528: TppLabel;
    ppLine241: TppLine;
    ppLabel529: TppLabel;
    ppLabel530: TppLabel;
    ppLabel531: TppLabel;
    ppLabel532: TppLabel;
    ppLabel533: TppLabel;
    ppLabel534: TppLabel;
    ppLabel535: TppLabel;
    ppLabel536: TppLabel;
    ppLabel537: TppLabel;
    ppLabel538: TppLabel;
    ppLine242: TppLine;
    ppLabel539: TppLabel;
    ppLabel540: TppLabel;
    ppLabel541: TppLabel;
    ppLabel542: TppLabel;
    ppLine243: TppLine;
    ppLabel543: TppLabel;
    ppLabel544: TppLabel;
    ppLine244: TppLine;
    ppLabel546: TppLabel;
    ppLine245: TppLine;
    ppLabel547: TppLabel;
    ppLabel548: TppLabel;
    ppLabel549: TppLabel;
    ppLabel550: TppLabel;
    ppLabel551: TppLabel;
    ppLine246: TppLine;
    ppDetailBand13: TppDetailBand;
    ppDBText242: TppDBText;
    ppDBText272: TppDBText;
    ppFooterBand8: TppFooterBand;
    ppSummaryBand10: TppSummaryBand;
    ppGroup24: TppGroup;
    ppGroupHeaderBand24: TppGroupHeaderBand;
    ppGroupFooterBand24: TppGroupFooterBand;
    ppGroup29: TppGroup;
    ppGroupHeaderBand29: TppGroupHeaderBand;
    ppGroupFooterBand29: TppGroupFooterBand;
    ptyp001: TppLabel;
    ppDBText245: TppDBText;
    ppLine227: TppLine;
    ppDBText271: TppDBText;
    ppDBText273: TppDBText;
    ppDBText243: TppDBText;
    ppDBText274: TppDBText;
    ppDBText277: TppDBText;
    ppDBText278: TppDBText;
    ppDBText279: TppDBText;
    ppDBText280: TppDBText;
    ppDBText281: TppDBText;
    ppDBText282: TppDBText;
    ppDBText283: TppDBText;
    ppLabel499: TppLabel;
    ppLabel500: TppLabel;
    ppLine228: TppLine;
    ppLine229: TppLine;
    ppLabel502: TppLabel;
    ppLabel504: TppLabel;
    ppLabel508: TppLabel;
    ppDBText288: TppDBText;
    ppDBText289: TppDBText;
    ppLine230: TppLine;
    ppLabel509: TppLabel;
    ppLabel510: TppLabel;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    sah000: TppLabel;
    ppLine231: TppLine;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppLine234: TppLine;
    ppLine235: TppLine;
    ppLine236: TppLine;
    ppLine247: TppLine;
    ppLine248: TppLine;
    ppLine249: TppLine;
    ppLine250: TppLine;
    ppLine251: TppLine;
    ppLine252: TppLine;
    sah001: TppLabel;
    sah004: TppLabel;
    sah002: TppLabel;
    eff001: TppLabel;
    eff002: TppLabel;
    eff003: TppLabel;
    diff001: TppLabel;
    sah003: TppLabel;
    eff004: TppLabel;
    eff000: TppLabel;
    ppSubReport6: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppDetailBand14: TppDetailBand;
    ppSummaryBand11: TppSummaryBand;
    ppHeaderBand14: TppHeaderBand;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppLabel511: TppLabel;
    ppLabel513: TppLabel;
    ppSystemVariable17: TppSystemVariable;
    ppLabel514: TppLabel;
    ppLabel515: TppLabel;
    ppLabel516: TppLabel;
    dt038: TppLabel;
    ppLabel518: TppLabel;
    dt048: TppLabel;
    ppLabel545: TppLabel;
    ppLabel552: TppLabel;
    ppLabel553: TppLabel;
    ppLabel554: TppLabel;
    ppLine253: TppLine;
    ppLine254: TppLine;
    ppLabel555: TppLabel;
    ppLine255: TppLine;
    ppLabel556: TppLabel;
    ppLabel557: TppLabel;
    ppLine256: TppLine;
    ppLabel558: TppLabel;
    ppLine257: TppLine;
    ppLabel559: TppLabel;
    fty018: TppLabel;
    ppLine258: TppLine;
    ppLabel561: TppLabel;
    ppLabel562: TppLabel;
    ppLine259: TppLine;
    ppLine260: TppLine;
    ppLabel563: TppLabel;
    ppLabel564: TppLabel;
    ppLine261: TppLine;
    ppLabel565: TppLabel;
    ppLabel566: TppLabel;
    ppLabel567: TppLabel;
    ppLabel568: TppLabel;
    ppLabel569: TppLabel;
    ppLabel570: TppLabel;
    ppLabel571: TppLabel;
    ppLabel572: TppLabel;
    ppLabel573: TppLabel;
    ppLabel574: TppLabel;
    ppLine262: TppLine;
    ppLabel575: TppLabel;
    ppLabel576: TppLabel;
    ppLabel577: TppLabel;
    ppLabel578: TppLabel;
    ppLine263: TppLine;
    ppLabel579: TppLabel;
    ppLabel580: TppLabel;
    ppLine264: TppLine;
    ppLabel581: TppLabel;
    ppLine265: TppLine;
    ppLabel582: TppLabel;
    ppLabel583: TppLabel;
    ppLabel584: TppLabel;
    ppLabel585: TppLabel;
    ppLabel586: TppLabel;
    ppLine266: TppLine;
    ppLine267: TppLine;
    ppLabel587: TppLabel;
    ppLabel588: TppLabel;
    ppLine268: TppLine;
    ppLine269: TppLine;
    ppLabel589: TppLabel;
    ppLabel590: TppLabel;
    ppLabel591: TppLabel;
    ppGroup25: TppGroup;
    ppGroupHeaderBand25: TppGroupHeaderBand;
    ppGroupFooterBand25: TppGroupFooterBand;
    ppGroup26: TppGroup;
    ppGroupHeaderBand26: TppGroupHeaderBand;
    ppGroupFooterBand26: TppGroupFooterBand;
    ppDBText290: TppDBText;
    ptyp002: TppLabel;
    ppLine270: TppLine;
    ppDBText291: TppDBText;
    ppDBText292: TppDBText;
    ppDBText296: TppDBText;
    ppDBText297: TppDBText;
    ppDBText298: TppDBText;
    ppDBText299: TppDBText;
    ppDBText300: TppDBText;
    ppDBText302: TppDBText;
    ppDBText303: TppDBText;
    ppDBText304: TppDBText;
    ppDBText305: TppDBText;
    ppDBText306: TppDBText;
    ppDBText307: TppDBText;
    ppDBText308: TppDBText;
    ppDBText309: TppDBText;
    ppLine271: TppLine;
    ppLine272: TppLine;
    ppLine273: TppLine;
    ppLine274: TppLine;
    ppLine275: TppLine;
    ppLine276: TppLine;
    ppLine277: TppLine;
    ppLine278: TppLine;
    ppLine279: TppLine;
    ppLine280: TppLine;
    ppLabel524: TppLabel;
    ppLabel560: TppLabel;
    sah0: TppLabel;
    sah1: TppLabel;
    sah4: TppLabel;
    sah2: TppLabel;
    eff1: TppLabel;
    eff2: TppLabel;
    eff3: TppLabel;
    diff1: TppLabel;
    sah3: TppLabel;
    eff4: TppLabel;
    eff0: TppLabel;
    ppLabel603: TppLabel;
    qty1: TppLabel;
    qty2: TppLabel;
    ps01: TppShape;
    ps02: TppShape;
    ppGroup27: TppGroup;
    ppGroupHeaderBand27: TppGroupHeaderBand;
    ppGroupFooterBand27: TppGroupFooterBand;
    pc01: TppSystemVariable;
    pg001: TppLabel;
    ppLine41: TppLine;
    ppLabel182: TppLabel;
    ppLabel186: TppLabel;
    ppLabel517: TppLabel;
    ppLabel592: TppLabel;
    ppLabel593: TppLabel;
    ppLine281: TppLine;
    ppLabel395: TppLabel;
    ppLabel396: TppLabel;
    ppLine193: TppLine;
    ppLabel594: TppLabel;
    ppLabel595: TppLabel;
    ppLabel596: TppLabel;
    ppLine282: TppLine;
    ppLabel358: TppLabel;
    ppLabel362: TppLabel;
    ppLine162: TppLine;
    ppLabel597: TppLabel;
    ppLabel598: TppLabel;
    ppLabel599: TppLabel;
    ppLabel367: TppLabel;
    ppLabel376: TppLabel;
    ppLine171: TppLine;
    ppLabel600: TppLabel;
    ppLabel601: TppLabel;
    ppLabel602: TppLabel;
    ppLine283: TppLine;
    ppDBText221: TppDBText;
    ppDBCalc34: TppDBCalc;
    ppDBText238: TppDBText;
    ppDBCalc35: TppDBCalc;
    ppDBText241: TppDBText;
    ppDBText270: TppDBText;
    ppDBText310: TppDBText;
    ppDBText311: TppDBText;
    s003: TppDBText;
    ppDBText313: TppDBText;
    ppDBText314: TppDBText;
    ppDBText315: TppDBText;
    ppDBText316: TppDBText;
    ppDBText317: TppDBText;
    d003: TppDBText;
    ppDBText319: TppDBText;
    ppDBText320: TppDBText;
    ppDBText321: TppDBText;
    ppDBText322: TppDBText;
    ppDBText323: TppDBText;
    ppDBText324: TppDBText;
    s013: TppDBText;
    ppDBText326: TppDBText;
    ppDBText327: TppDBText;
    ppDBText328: TppDBText;
    ppDBText329: TppDBText;
    ppDBText330: TppDBText;
    d013: TppDBText;
    ppDBText332: TppDBText;
    ppDBText333: TppDBText;
    ppDBText334: TppDBText;
    ppDBText335: TppDBText;
    ppDBText336: TppDBText;
    ppDBText337: TppDBText;
    s023: TppDBText;
    ppDBText339: TppDBText;
    ppDBText340: TppDBText;
    ppDBText341: TppDBText;
    ppDBText342: TppDBText;
    ppDBText343: TppDBText;
    d023: TppDBText;
    ppDBText345: TppDBText;
    ppDBText346: TppDBText;
    ppDBText347: TppDBText;
    ppDBText348: TppDBText;
    ppDBText349: TppDBText;
    ppDBText350: TppDBText;
    s033: TppDBText;
    ppDBText352: TppDBText;
    ppDBText353: TppDBText;
    ppDBText354: TppDBText;
    ppDBText355: TppDBText;
    ppDBText356: TppDBText;
    d033: TppDBText;
    grd001: TppLabel;
    grd002: TppLabel;
    grd101: TppLabel;
    grd102: TppLabel;
    BitBtn10: TBitBtn;
    ppRichText1: TppRichText;
    ppDBText312: TppDBText;
    ppDBText318: TppDBText;
    ppSubReport7: TppSubReport;
    ppChildReport7: TppChildReport;
    ppTitleBand7: TppTitleBand;
    ppDetailBand15: TppDetailBand;
    ppSummaryBand12: TppSummaryBand;
    ppMemo1: TppMemo;
    ppLabel258: TppLabel;
    ppLabel344: TppLabel;
    ppLabel346: TppLabel;
    ppLabel348: TppLabel;
    ppDBText325: TppDBText;
    ppDBText331: TppDBText;
    ppDBText338: TppDBText;
    ppShape34: TppShape;
    ppMemo3: TppMemo;
    ppRichText2: TppRichText;
    ppGroup28: TppGroup;
    ppGroupHeaderBand28: TppGroupHeaderBand;
    ppGroupFooterBand28: TppGroupFooterBand;
    ppSubReport8: TppSubReport;
    ppChildReport8: TppChildReport;
    ppTitleBand8: TppTitleBand;
    ppDetailBand16: TppDetailBand;
    ppSummaryBand13: TppSummaryBand;
    ppHeaderBand15: TppHeaderBand;
    ppShape35: TppShape;
    ppLabel336: TppLabel;
    ppLabel340: TppLabel;
    ppLine284: TppLine;
    ppLine287: TppLine;
    ppLabel605: TppLabel;
    ppLine288: TppLine;
    ppLabel606: TppLabel;
    ppLabel607: TppLabel;
    ppLine289: TppLine;
    ppLabel608: TppLabel;
    ppLabel609: TppLabel;
    ppLabel610: TppLabel;
    ppLabel611: TppLabel;
    ppLabel612: TppLabel;
    ppLine290: TppLine;
    ppLabel613: TppLabel;
    ppLabel614: TppLabel;
    ppLine291: TppLine;
    ppLabel615: TppLabel;
    ppLine292: TppLine;
    ppLine293: TppLine;
    ppLabel616: TppLabel;
    ppLabel617: TppLabel;
    ppLine294: TppLine;
    ppLine295: TppLine;
    ppLabel618: TppLabel;
    ppLabel619: TppLabel;
    ppLabel621: TppLabel;
    ppLabel622: TppLabel;
    ppLabel623: TppLabel;
    ppLabel624: TppLabel;
    ppLabel625: TppLabel;
    ppLabel626: TppLabel;
    ppLabel627: TppLabel;
    ppLabel628: TppLabel;
    ppLine296: TppLine;
    ppLine297: TppLine;
    ppLabel629: TppLabel;
    ppLine298: TppLine;
    ppLabel630: TppLabel;
    ppLabel631: TppLabel;
    ppLabel632: TppLabel;
    ppLabel633: TppLabel;
    ppLabel634: TppLabel;
    ppLine299: TppLine;
    ppLabel635: TppLabel;
    ppLabel636: TppLabel;
    ppLine300: TppLine;
    ppLabel637: TppLabel;
    ppLabel638: TppLabel;
    ppLabel639: TppLabel;
    ppLine301: TppLine;
    ppDBText344: TppDBText;
    ppDBText351: TppDBText;
    ppDBText357: TppDBText;
    ppDBText358: TppDBText;
    ppDBText359: TppDBText;
    ppDBText360: TppDBText;
    ppDBText361: TppDBText;
    s043: TppDBText;
    ppDBText363: TppDBText;
    ppDBText364: TppDBText;
    ppDBText365: TppDBText;
    ppDBText366: TppDBText;
    ppDBText367: TppDBText;
    d043: TppDBText;
    Query14: TClientDataSet;
    DataSource9: TDataSource;
    ppDBPipeline7: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    PopupMenu1: TPopupMenu;
    SHVbyCustStyles1: TMenuItem;
    BitBtn11: TBitBtn;
    ppLabel352: TppLabel;
    ppLabel184: TppLabel;
    ppLabel360: TppLabel;
    ppLabel604: TppLabel;
    ppLabel640: TppLabel;
    ppLabel641: TppLabel;
    ppLabel642: TppLabel;
    ppLabel643: TppLabel;
    ppLabel644: TppLabel;
    ppLabel645: TppLabel;
    ppLabel646: TppLabel;
    ppLabel647: TppLabel;
    ppLabel648: TppLabel;
    ppLabel649: TppLabel;
    ppLabel650: TppLabel;
    ppLabel651: TppLabel;
    ppReport9: TppReport;
    ppHeaderBand16: TppHeaderBand;
    ppDetailBand17: TppDetailBand;
    ppFooterBand9: TppFooterBand;
    ppGroup30: TppGroup;
    ppGroupHeaderBand30: TppGroupHeaderBand;
    ppGroupFooterBand30: TppGroupFooterBand;
    ppGroup31: TppGroup;
    ppGroupHeaderBand31: TppGroupHeaderBand;
    ppGroupFooterBand31: TppGroupFooterBand;
    ppLabel652: TppLabel;
    ppLabel653: TppLabel;
    ppSystemVariable18: TppSystemVariable;
    ppLabel654: TppLabel;
    ppLabel655: TppLabel;
    ppLabel658: TppLabel;
    dt00001: TppLabel;
    ppLabel660: TppLabel;
    dt00002: TppLabel;
    ppLabel662: TppLabel;
    ppLabel663: TppLabel;
    ppLabel664: TppLabel;
    ppLabel666: TppLabel;
    ppShape36: TppShape;
    ppLabel656: TppLabel;
    ppLabel657: TppLabel;
    ppLabel667: TppLabel;
    ppLine285: TppLine;
    ppLine286: TppLine;
    ppLine302: TppLine;
    ppLabel668: TppLabel;
    ppLine303: TppLine;
    ppLabel669: TppLabel;
    ppLabel670: TppLabel;
    ppLabel671: TppLabel;
    ppLabel672: TppLabel;
    ppLabel673: TppLabel;
    ppLabel674: TppLabel;
    ppLabel675: TppLabel;
    ppLabel676: TppLabel;
    ppLabel677: TppLabel;
    ppLabel678: TppLabel;
    ppLabel680: TppLabel;
    ppLine304: TppLine;
    ppLine305: TppLine;
    ppLine306: TppLine;
    ppLine307: TppLine;
    ppLabel681: TppLabel;
    ppLine308: TppLine;
    ppLabel682: TppLabel;
    ppLabel683: TppLabel;
    ppLine309: TppLine;
    ppLine310: TppLine;
    ppLine311: TppLine;
    ppLine312: TppLine;
    ppLabel684: TppLabel;
    ppLine313: TppLine;
    ppLine314: TppLine;
    ppLine315: TppLine;
    ppLabel685: TppLabel;
    ppLabel686: TppLabel;
    ppLine316: TppLine;
    ppLabel687: TppLabel;
    ppLabel688: TppLabel;
    ppLabel689: TppLabel;
    ppLabel690: TppLabel;
    ppLine317: TppLine;
    ppLabel691: TppLabel;
    ppLabel692: TppLabel;
    ppLine318: TppLine;
    ppLine319: TppLine;
    ppLine320: TppLine;
    ppLabel693: TppLabel;
    ppLine321: TppLine;
    ppLabel694: TppLabel;
    ppLine322: TppLine;
    ppLine323: TppLine;
    ppLabel695: TppLabel;
    ppLabel696: TppLabel;
    ppLabel697: TppLabel;
    ppLine324: TppLine;
    ppLabel698: TppLabel;
    ppLabel699: TppLabel;
    ppLabel700: TppLabel;
    ppLine325: TppLine;
    ppLabel701: TppLabel;
    ppLabel702: TppLabel;
    ppLine326: TppLine;
    ppLine327: TppLine;
    ppLabel703: TppLabel;
    ppLabel704: TppLabel;
    ppLabel705: TppLabel;
    ppLabel706: TppLabel;
    ppLabel707: TppLabel;
    ppLabel708: TppLabel;
    ppLabel709: TppLabel;
    ppLabel710: TppLabel;
    ppLabel711: TppLabel;
    ppLabel712: TppLabel;
    ppLabel713: TppLabel;
    ppLabel714: TppLabel;
    ppLabel715: TppLabel;
    ppLabel716: TppLabel;
    ppLine328: TppLine;
    ppLabel717: TppLabel;
    ppLabel718: TppLabel;
    ppLabel719: TppLabel;
    ppLabel720: TppLabel;
    ppLabel721: TppLabel;
    ppLabel722: TppLabel;
    ppLabel723: TppLabel;
    ppLabel724: TppLabel;
    ppLabel725: TppLabel;
    ppLabel726: TppLabel;
    ppLabel727: TppLabel;
    ppLabel728: TppLabel;
    ppLabel729: TppLabel;
    ppLabel730: TppLabel;
    ppShape37: TppShape;
    ppDBText362: TppDBText;
    ppDBText368: TppDBText;
    d0003: TppDBText;
    ppDBText370: TppDBText;
    ppDBText371: TppDBText;
    ppDBText372: TppDBText;
    ppDBText373: TppDBText;
    ppLine329: TppLine;
    ppLine330: TppLine;
    ppDBText374: TppDBText;
    ppDBText375: TppDBText;
    ppDBText376: TppDBText;
    ppDBText377: TppDBText;
    ppDBText378: TppDBText;
    ppDBText379: TppDBText;
    ppDBText380: TppDBText;
    ppDBText381: TppDBText;
    ppDBText382: TppDBText;
    ppDBText383: TppDBText;
    ppDBText384: TppDBText;
    ppDBText385: TppDBText;
    ppDBText386: TppDBText;
    ppDBText387: TppDBText;
    ppDBText388: TppDBText;
    lb43wf04: TppLabel;
    plus004: TppLabel;
    ppDBText389: TppDBText;
    ppDBText390: TppDBText;
    ppDBText391: TppDBText;
    ppSystemVariable19: TppSystemVariable;
    ppLine331: TppLine;
    ppLine332: TppLine;
    ppLine333: TppLine;
    ppLine334: TppLine;
    ppLabel659: TppLabel;
    ppSubReport9: TppSubReport;
    ppChildReport9: TppChildReport;
    ppTitleBand9: TppTitleBand;
    ppDetailBand18: TppDetailBand;
    ppSummaryBand14: TppSummaryBand;
    ppDBText369: TppDBText;
    ppDBText392: TppDBText;
    d0033: TppDBText;
    ppDBText394: TppDBText;
    ppDBText395: TppDBText;
    ppDBText396: TppDBText;
    ppDBText397: TppDBText;
    ppLine335: TppLine;
    ppLine336: TppLine;
    ppDBText398: TppDBText;
    ppDBText399: TppDBText;
    ppDBText400: TppDBText;
    ppDBText401: TppDBText;
    ppDBText402: TppDBText;
    ppDBText403: TppDBText;
    ppDBText404: TppDBText;
    ppDBText405: TppDBText;
    ppDBText406: TppDBText;
    ppDBText407: TppDBText;
    ppDBText408: TppDBText;
    ppDBText409: TppDBText;
    ppDBText410: TppDBText;
    ppDBText411: TppDBText;
    lb43wf001: TppLabel;
    plus001: TppLabel;
    ppDBText412: TppDBText;
    ppDBText413: TppDBText;
    ppShape38: TppShape;
    ppLine337: TppLine;
    ppLine338: TppLine;
    ppLabel661: TppLabel;
    ppLabel665: TppLabel;
    ppDBText393: TppDBText;
    d0034: TppDBText;
    ppDBText415: TppDBText;
    ppDBText416: TppDBText;
    ppDBText417: TppDBText;
    ppDBText418: TppDBText;
    ppDBText419: TppDBText;
    ppDBText420: TppDBText;
    ppDBText421: TppDBText;
    ppDBText422: TppDBText;
    ppDBText423: TppDBText;
    ppDBText424: TppDBText;
    ppDBText425: TppDBText;
    ppDBText426: TppDBText;
    ppDBText427: TppDBText;
    ppDBText428: TppDBText;
    ppDBText429: TppDBText;
    ppDBText430: TppDBText;
    lb43wf002: TppLabel;
    plus002: TppLabel;
    ppDBText431: TppDBText;
    ppDBText432: TppDBText;
    ppDBText433: TppDBText;
    ppDBText434: TppDBText;
    ppLabel731: TppLabel;
    ppLabel732: TppLabel;
    ppLabel733: TppLabel;
    ppLabel402: TppLabel;
    ppLabel429: TppLabel;
    ppLabel451: TppLabel;
    ppLabel734: TppLabel;
    ppLabel620: TppLabel;
    ppLabel735: TppLabel;
    ppLabel736: TppLabel;
    ppLabel737: TppLabel;
    ppLabel738: TppLabel;
    BitBtn12: TBitBtn;
    ppLine339: TppLine;
    ppLine340: TppLine;
    ppLabel679: TppLabel;
    ROQuery1: TClientDataSet;
    Label9: TLabel;
    ComboBox7: TComboBox;
    title001: TppLabel;
    ppLabel273: TppLabel;
    cs001: TppDBText;
    cs003: TppDBText;
    cs004: TppDBText;
    ppShape13: TppShape;
    ppLine49: TppLine;
    ppLabel231: TppLabel;
    ppLine60: TppLine;
    ppDBText435: TppDBText;
    ppDBText436: TppDBText;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
    ppLabel253: TppLabel;
    ppDBText437: TppDBText;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    Copy1: TMenuItem;
    BitBtn15: TBitBtn;
    cs005: TppDBText;
    ppLabel254: TppLabel;
    TabSheet3: TTabSheet;
    qry_details: TClientDataSet;
    DataSource10: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel5: TPanel;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1GRP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SALES: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PGRP: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FCUST: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AGT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ADDR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CONT1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CONT2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CONT3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ADDR1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ADDR2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CELL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TEL1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TEL2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FAX: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AETD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ETD: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CRTDT: TcxGridDBBandedColumn;
    BitBtn21: TBitBtn;
    SaveDialog1: TSaveDialog;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2View1: TcxGridDBBandedTableView;
    cxGrid2View1CUST: TcxGridDBBandedColumn;
    cxGrid2View1LST2: TcxGridDBBandedColumn;
    cxGrid2View1LST2D: TcxGridDBBandedColumn;
    cxGrid2View1TPLANT: TcxGridDBBandedColumn;
    cxGrid2View1FRST: TcxGridDBBandedColumn;
    cxGrid2View1EXFWK: TcxGridDBBandedColumn;
    cxGrid2View1EXFTM: TcxGridDBBandedColumn;
    cxGrid2View1EXFDAY: TcxGridDBBandedColumn;
    cxGrid2View1LSTR: TcxGridDBBandedColumn;
    cxGrid2View1BZJS: TcxGridDBBandedColumn;
    cxGrid2View1PMTH: TcxGridDBBandedColumn;
    cxGrid2View1CJSWK: TcxGridDBBandedColumn;
    cxGrid2View1CJSSJ: TcxGridDBBandedColumn;
    cxGrid2View1AEXFWK: TcxGridDBBandedColumn;
    cxGrid2View1AEXFTM: TcxGridDBBandedColumn;
    cxGrid2View1ACJSWK: TcxGridDBBandedColumn;
    cxGrid2View1ACJSSJ: TcxGridDBBandedColumn;
    cxGrid2View1LPORT: TcxGridDBBandedColumn;
    cxGrid2View1ALPORT: TcxGridDBBandedColumn;
    cxGrid2View1FCUST: TcxGridDBBandedColumn;
    cxGrid2View1PGRP: TcxGridDBBandedColumn;
    cxGrid2View1AGT: TcxGridDBBandedColumn;
    cxGrid2View1ADDR: TcxGridDBBandedColumn;
    cxGrid2View1PORTL: TcxGridDBBandedColumn;
    cxGrid2View1LMTH: TcxGridDBBandedColumn;
    cxGrid2View1SDUE: TcxGridDBBandedColumn;
    cxGrid2View1IRATIO: TcxGridDBBandedColumn;
    cxGrid2View1TTIME: TcxGridDBBandedColumn;
    cxGrid2View1ITIME: TcxGridDBBandedColumn;
    cxGrid2View1ATTIME: TcxGridDBBandedColumn;
    cxGrid2View1ETD: TcxGridDBBandedColumn;
    cxGrid2View1AETD: TcxGridDBBandedColumn;
    cxGrid2View1GRP: TcxGridDBBandedColumn;
    cxGrid2View1RQTY: TcxGridDBBandedColumn;
    cxGrid2View1BZNY: TcxGridDBBandedColumn;
    cxGrid2View1ACT: TcxGridDBBandedColumn;
    cxGrid2View1RLINE: TcxGridDBBandedColumn;
    cxGrid2View1RQTY1: TcxGridDBBandedColumn;
    cxGrid2View1CGRP: TcxGridDBBandedColumn;
    cxGrid2View1YSZQ1: TcxGridDBBandedColumn;
    cxGrid2View1ORDDAY: TcxGridDBBandedColumn;
    cxGrid2View1PSP1: TcxGridDBBandedColumn;
    cxGrid2View1PSP2: TcxGridDBBandedColumn;
    cxGrid2View1MPUR1: TcxGridDBBandedColumn;
    cxGrid2View1MPUR2: TcxGridDBBandedColumn;
    cxGrid2View1YSZQ01: TcxGridDBBandedColumn;
    cxGrid2View1SP1: TcxGridDBBandedColumn;
    cxGrid2View1TCT1: TcxGridDBBandedColumn;
    cxGrid2View1TCT2: TcxGridDBBandedColumn;
    cxGrid2View1AB2: TcxGridDBBandedColumn;
    cxGrid2View1AB3: TcxGridDBBandedColumn;
    cxGrid2View1ORDDAY_R: TcxGridDBBandedColumn;
    cxGrid2View1PSP1_R: TcxGridDBBandedColumn;
    cxGrid2View1PSP2_R: TcxGridDBBandedColumn;
    cxGrid2View1MPUR1_R: TcxGridDBBandedColumn;
    cxGrid2View1MPUR2_R: TcxGridDBBandedColumn;
    cxGrid2View1FRST_R: TcxGridDBBandedColumn;
    cxGrid2View1LSTR_R: TcxGridDBBandedColumn;
    cxGrid2View1YSZQ1_R: TcxGridDBBandedColumn;
    cxGrid2View1YSZQ01_R: TcxGridDBBandedColumn;
    cxGrid2View1SP1_R: TcxGridDBBandedColumn;
    cxGrid2View1TCT1_R: TcxGridDBBandedColumn;
    cxGrid2View1TCT2_R: TcxGridDBBandedColumn;
    cxGrid2View1EXFWK1: TcxGridDBBandedColumn;
    cxGrid2View1EXFTM1: TcxGridDBBandedColumn;
    cxGrid2View1CJSWK1: TcxGridDBBandedColumn;
    cxGrid2View1CJSSJ1: TcxGridDBBandedColumn;
    cxGrid2View1ETD1: TcxGridDBBandedColumn;
    cxGrid2View1TTIME1: TcxGridDBBandedColumn;
    cxGrid2View1ETD1_2: TcxGridDBBandedColumn;
    cxGrid2View1ATTIME1: TcxGridDBBandedColumn;
    cxGrid2View1T3CT: TcxGridDBBandedColumn;
    cxGrid2View1SEWBOND: TcxGridDBBandedColumn;
    cxGrid2View1OSP: TcxGridDBBandedColumn;
    cxGrid2View1ITDT: TcxGridDBBandedColumn;
    cxGrid2View1ACDT: TcxGridDBBandedColumn;
    cxGrid2View1DTDIFF: TcxGridDBBandedColumn;
    cxGrid2View1DSEQ: TcxGridDBBandedColumn;
    cxGrid2View1PORTL1: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query2AfterPost(DataSet: TDataSet);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Query2NewRecord(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ppReport4PreviewFormCreate(Sender: TObject);
    procedure ppReport5PreviewFormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport6PreviewFormCreate(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure querypspchange(Sender: TField);
    procedure ppReport7PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand5BeforePrint(Sender: TObject);
    procedure ppDetailBand7BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand16BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand17BeforePrint(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure ppDetailBand6BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand17BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand16BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand8BeforePrint(Sender: TObject);
    procedure ppDetailBand9BeforePrint(Sender: TObject);
    procedure ppDetailBand10BeforePrint(Sender: TObject);
    procedure ppDetailBand11BeforePrint(Sender: TObject);
    procedure ppDetailBand12BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand29BeforePrint(Sender: TObject);
    procedure ppReport8PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand13BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand29BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand25BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand25BeforePrint(Sender: TObject);
    procedure ppDetailBand14BeforePrint(Sender: TObject);
    procedure ppTitleBand6BeforePrint(Sender: TObject);
    procedure ppDetailBand16BeforePrint(Sender: TObject);
    procedure SHVbyCustStyles1Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ppTitleBand3BeforePrint(Sender: TObject);
    procedure ppReport9PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand17BeforePrint(Sender: TObject);
    procedure ppDetailBand18BeforePrint(Sender: TObject);
    procedure ppSummaryBand14BeforePrint(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure qry_detailsAfterPost(DataSet: TDataSet);
    procedure qry_detailsNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure previewformat1;
    procedure previewformat1_1;
    procedure previewformat2(Const str: string);
  end;

var
  frmcustomer: Tfrmcustomer;
  logseq:integer;
  tqty:integer;
  withstyle:string;

implementation

uses mainformu, custprintformu, shv_custformu, custctformu, custprint002formu,
  shvplusgaiformu, custstyleshvformu, custstyleshv1formu, projeff_custformu,
  cust_budgeformu, cust_matindexformu, cust_qtyratioformu;

{$R *.dfm}

procedure Tfrmcustomer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmshvplusgai<>nil then frmshvplusgai:=nil;
  if frmcuststyleshv1<>nil then frmcuststyleshv1:=nil;
  action:=cafree;
  frmcustomer:=nil;
end;

procedure Tfrmcustomer.Query2AfterPost(DataSet: TDataSet);
var
  str1:string;
begin
  //if query2.applyupdates(-1)>0 then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='select seq from cust_exfty where seq=:seq';
      params[0].asinteger:=query2.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        {
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'cust',ptinput);
          params.createparam(ftstring,'fcust',ptinput);
          params.createparam(ftstring,'pgrp',ptinput);
          params.createparam(ftstring,'addr',ptinput);
          params.createparam(ftstring,'agt',ptinput);
          params.createparam(ftstring,'lst2',ptinput);
          params.createparam(ftstring,'lst2d',ptinput);
          params.createparam(ftstring,'tplant',ptinput);
          params.createparam(ftstring,'portl',ptinput);
          params.createparam(ftfloat,'frst',ptinput);
          params.createparam(ftfloat,'lstr',ptinput);
          params.createparam(ftstring,'iratio',ptinput);
          params.createparam(ftstring,'lport',ptinput);
          params.createparam(ftstring,'lmth',ptinput);
          params.createparam(ftstring,'exfwk',ptinput);
          params.createparam(ftstring,'exftm',ptinput);
          params.createparam(ftstring,'cjswk',ptinput);
          params.createparam(ftstring,'cjssj',ptinput);
          params.createparam(ftfloat,'ttime',ptinput);
          params.createparam(ftstring,'alport',ptinput);
          params.createparam(ftstring,'aexfwk',ptinput);
          params.createparam(ftstring,'aexftm',ptinput);
          params.createparam(ftstring,'acjswk',ptinput);
          params.createparam(ftstring,'acjssj',ptinput);
          params.createparam(ftfloat,'attime',ptinput);
          params.createparam(ftstring,'sdue',ptinput);
          params.createparam(ftfloat,'exfday',ptinput);
          params.createparam(ftstring,'pmth',ptinput);
          params.createparam(ftfloat,'bzjs',ptinput);
          params.createparam(ftfloat,'itime',ptinput);
          params.createparam(ftstring,'etd',ptinput);
          params.createparam(ftstring,'aetd',ptinput);
          params.createparam(ftstring,'grp',ptinput);
          params.createparam(ftfloat,'yszq',ptinput);
          params.createparam(ftboolean,'act',ptinput);
          params.createparam(ftinteger,'rline',ptinput);
          params.createparam(ftinteger,'rqty',ptinput);
          params.createparam(ftfloat,'bzny',ptinput);
          params.createparam(ftinteger,'rqty1',ptinput);
          params.createparam(ftstring,'cgrp',ptinput);
          params.createparam(ftfloat,'yszq1',ptinput);
          params.createparam(ftfloat,'ordday',ptinput);
          params.createparam(ftfloat,'psp1',ptinput);
          params.createparam(ftfloat,'psp2',ptinput);
          params.createparam(ftfloat,'mpur1',ptinput);
          params.createparam(ftfloat,'mpur2',ptinput);
          params.createparam(ftfloat,'yszq01',ptinput);
          params.createparam(ftfloat,'yszq0',ptinput);
          params.createparam(ftfloat,'sp1',ptinput);
          params.createparam(ftfloat,'tct1',ptinput);
          params.createparam(ftfloat,'tct2',ptinput);
          params.createparam(ftboolean,'ab2',ptinput);
          params.createparam(ftboolean,'ab3',ptinput);
          params.createparam(ftfloat,'ordday_r',ptinput);
          params.createparam(ftfloat,'psp1_r',ptinput);
          params.createparam(ftfloat,'psp2_r',ptinput);
          params.createparam(ftfloat,'mpur1_r',ptinput);
          params.createparam(ftfloat,'mpur2_r',ptinput);
          params.createparam(ftfloat,'frst_r',ptinput);
          params.createparam(ftfloat,'lstr_r',ptinput);
          params.createparam(ftfloat,'yszq_r',ptinput);
          params.createparam(ftfloat,'yszq0_r',ptinput);
          params.createparam(ftfloat,'yszq1_r',ptinput);
          params.createparam(ftfloat,'yszq01_r',ptinput);
          params.createparam(ftfloat,'sp1_r',ptinput);
          params.createparam(ftfloat,'tct1_r',ptinput);
          params.createparam(ftfloat,'tct2_r',ptinput);

          params.createparam(ftstring,'exfwk1',ptinput);
          params.createparam(ftstring,'exftm1',ptinput);
          params.createparam(ftstring,'cjswk1',ptinput);
          params.createparam(ftstring,'cjssj1',ptinput);
          params.createparam(ftstring,'etd1',ptinput);
          params.createparam(ftfloat,'ttime1',ptinput);
          params.createparam(ftstring,'alport1',ptinput);
          params.createparam(ftstring,'aexfwk1',ptinput);
          params.createparam(ftstring,'aexftm1',ptinput);
          params.createparam(ftstring,'acjswk1',ptinput);
          params.createparam(ftstring,'acjssj1',ptinput);
          params.createparam(ftstring,'aetd1',ptinput);
          params.createparam(ftfloat,'attime1',ptinput);
          params.createparam(ftinteger,'t3ct',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='update cust_exfty set cust=:cust,fcust=:fcust,pgrp=:pgrp,addr=:addr,agt=:agt,lst2=:lst2,'
                      +'lst2d=:lst2d,tplant=:tplant,portl=:portl,frst=:frst,lstr=:lstr,iratio=:iratio,lport=:lport,'
                      +'lmth=:lmth,exfwk=:exfwk,exftm=:exftm,cjswk=:cjswk,cjssj=:cjssj,ttime=:ttime,'
                      +'alport=:alport,aexfwk=:aexfwk,aexftm=:aexftm,acjswk=:acjswk,acjssj=:acjssj,attime=:attime,'
                      +'sdue=:sdue,exfday=:exfday,pmth=:pmth,bzjs=:bzjs,itime=:itime,etd=:etd,aetd=:aetd,'
                      +'grp=:grp,yszq=:yszq,act=:act,rline=:rline,rqty=:rqty,bzny=:bzny,rqty1=:rqty1,cgrp=:cgrp,yszq1=:yszq1,'
                      +'ordday=:ordday,psp1=:psp1,psp2=:psp2,mpur1=:mpur1,mpur2=:mpur2,yszq01=:yszq01,yszq0=:yszq0,'
                      +'sp1=:sp1,tct1=:tct1,tct2=:tct2,ab2=:ab2,ab3=:ab3,ordday_r=:ordday_r,psp1_r=:psp1_r,psp2_r=:psp2_r,'
                      +'mpur1_r=:mpur1_r,mpur2_r=:mpur2_r,frst_r=:frst_r,lstr_r=:lstr_r,yszq_r=:yszq_r,yszq0_r=:yszq0_r,'
                      +'yszq1_r=:yszq1_r,yszq01_r=:yszq01_r,sp1_r=:sp1_r,tct1_r=:tct1_r,tct2_r=:tct2_r,exfwk1=:exfwk1,'
                      +'exftm1=:exftm1,cjswk1=:cjswk1,cjssj1=:cjssj1,etd1=:etd1,ttime1=:ttime1,alport1=:alport1,aexfwk1=:aexfwk1,'
                      +'aexftm1=:aexftm1,acjswk1=:acjswk1,acjssj1=:acjssj1,aetd1=:aetd1,attime1=:attime1,t3ct=:t3ct where seq=:seq';

          params[0].asstring:=query2.fieldbyname('cust').value;
          if not query2.fieldbyname('fcust').isnull then
          params[1].asstring:=query2.fieldbyname('fcust').value
          else params[1].asstring:=' ';
          if not query2.fieldbyname('pgrp').isnull then
          params[2].asstring:=query2.fieldbyname('pgrp').value
          else params[2].asstring:=' ';
          if not query2.fieldbyname('addr').isnull then
          params[3].asstring:=query2.fieldbyname('addr').value
          else params[3].asstring:=' ';
          if not query2.fieldbyname('agt').isnull then
          params[4].asstring:=query2.fieldbyname('agt').value
          else params[4].asstring:=' ';
          params[5].asstring:=query2.fieldbyname('lst2').value;
          params[6].asstring:=query2.fieldbyname('lst2d').value;
          params[7].asstring:=query2.fieldbyname('tplant').value;
          if not query2.fieldbyname('portl').isnull then
          params[8].asstring:=query2.fieldbyname('portl').value
          else params[8].asstring:=' ';
          if not query2.fieldbyname('frst').isnull then
          params[9].asfloat:=query2.fieldbyname('frst').value
          else params[9].asfloat:=0;
          if not query2.fieldbyname('lstr').isnull then
          params[10].asfloat:=query2.fieldbyname('lstr').value
          else params[10].asfloat:=0;
          if not query2.fieldbyname('iratio').isnull then
          params[11].asstring:=query2.fieldbyname('iratio').value
          else params[11].asstring:=' ';
          if not query2.fieldbyname('lport').isnull then
          params[12].asstring:=query2.fieldbyname('lport').value
          else params[12].asstring:=' ';
          if not query2.fieldbyname('lmth').isnull then
          params[13].asstring:=query2.fieldbyname('lmth').value
          else params[13].asstring:=' ';
          if not query2.fieldbyname('exfwk').isnull then
          params[14].asstring:=query2.fieldbyname('exfwk').value
          else params[14].asstring:=' ';
          if not query2.fieldbyname('exftm').isnull then
          params[15].asstring:=query2.fieldbyname('exftm').value
          else params[15].asstring:=' ';
          if not query2.fieldbyname('cjswk').isnull then
          params[16].asstring:=query2.fieldbyname('cjswk').value
          else params[16].asstring:=' ';
          if not query2.fieldbyname('cjssj').isnull then
          params[17].asstring:=query2.fieldbyname('cjssj').value
          else params[17].asstring:=' ';
          if not query2.fieldbyname('ttime').isnull then
          params[18].asfloat:=query2.fieldbyname('ttime').value
          else params[18].asfloat:=0;
          if not query2.fieldbyname('alport').isnull then
          params[19].asstring:=query2.fieldbyname('alport').value
          else params[19].asstring:=' ';
          if not query2.fieldbyname('aexfwk').isnull then
          params[20].asstring:=query2.fieldbyname('aexfwk').value
          else params[20].asstring:=' ';
          if not query2.fieldbyname('aexftm').isnull then
          params[21].asstring:=query2.fieldbyname('aexftm').value
          else params[21].asstring:=' ';
          if not query2.fieldbyname('acjswk').isnull then
          params[22].asstring:=query2.fieldbyname('acjswk').value
          else params[22].asstring:=' ';
          if not query2.fieldbyname('acjssj').isnull then
          params[23].asstring:=query2.fieldbyname('acjssj').value
          else params[23].asstring:=' ';
          if not query2.fieldbyname('attime').isnull then
          params[24].asfloat:=query2.fieldbyname('attime').value
          else params[24].asfloat:=0;
          if not query2.fieldbyname('sdue').isnull then
          params[25].asstring:=query2.fieldbyname('sdue').value
          else params[25].asstring:=' ';
          if not query2.fieldbyname('exfday').isnull then
          params[26].asfloat:=query2.fieldbyname('exfday').value
          else params[26].asfloat:=0;
          params[27].asstring:=query2.fieldbyname('pmth').value;
          if not query2.fieldbyname('bzjs').isnull then
          params[28].asfloat:=query2.fieldbyname('bzjs').value
          else params[28].asfloat:=12;
          if not query2.fieldbyname('itime').isnull then
          params[29].asfloat:=query2.fieldbyname('itime').value
          else params[29].asfloat:=0;
          if not query2.fieldbyname('etd').isnull then
          params[30].asstring:=query2.fieldbyname('etd').value
          else params[30].asstring:=' ';
          if not query2.fieldbyname('aetd').isnull then
          params[31].asstring:=query2.fieldbyname('aetd').value
          else params[31].asstring:=' ';
          if not query2.fieldbyname('grp').isnull then
          params[32].asstring:=query2.fieldbyname('grp').value
          else params[32].asstring:=' ';
          if not query2.fieldbyname('yszq').isnull then
          params[33].asfloat:=query2.fieldbyname('yszq').value
          else params[33].asfloat:=0;
          if not query2.fieldbyname('act').isnull then
          params[34].asboolean:=query2.fieldbyname('act').value
          else params[34].asboolean:=false;
          if not query2.fieldbyname('rline').isnull then
          params[35].asinteger:=query2.fieldbyname('rline').value
          else params[35].asinteger:=1;
          if not query2.fieldbyname('rqty').isnull then
          params[36].asinteger:=query2.fieldbyname('rqty').value
          else params[36].asinteger:=0;
          if not query2.fieldbyname('bzny').isnull then
          params[37].asfloat:=query2.fieldbyname('bzny').value
          else params[37].asfloat:=0;
          if not query2.fieldbyname('rqty1').isnull then
          params[38].asinteger:=query2.fieldbyname('rqty1').value
          else params[38].asinteger:=0;
          if not query2.fieldbyname('cgrp').IsNull then
          params[39].asstring:=query2.fieldbyname('cgrp').value
          else params[39].asstring:='Category 3';
          if not query2.fieldbyname('yszq1').isnull then
          params[40].asfloat:=query2.fieldbyname('yszq1').value
          else params[40].asfloat:=0;
          if not query2.fieldbyname('ordday').isnull then
          params[41].asfloat:=query2.fieldbyname('ordday').value
          else params[41].asfloat:=0;
          if not query2.fieldbyname('psp1').isnull then
          params[42].asfloat:=query2.fieldbyname('psp1').value
          else params[42].asfloat:=0;
          if not query2.fieldbyname('psp2').isnull then
          params[43].asfloat:=query2.fieldbyname('psp2').value
          else params[43].asfloat:=0;
          if not query2.fieldbyname('mpur1').isnull then
          params[44].asfloat:=query2.fieldbyname('mpur1').value
          else params[44].asfloat:=0;
          if not query2.fieldbyname('mpur2').isnull then
          params[45].asfloat:=query2.fieldbyname('mpur2').value
          else params[45].asfloat:=0;
          if not query2.fieldbyname('yszq01').isnull then
          params[46].asfloat:=query2.fieldbyname('yszq01').value
          else params[46].asfloat:=0;
          if not query2.fieldbyname('yszq0').isnull then
          params[47].asfloat:=query2.fieldbyname('yszq0').value
          else params[47].asfloat:=0;
          if not query2.fieldbyname('sp1').isnull then
          params[48].asfloat:=query2.fieldbyname('sp1').value
          else params[48].asfloat:=0;
          if not query2.fieldbyname('tct1').isnull then
          params[49].asfloat:=query2.fieldbyname('tct1').value
          else params[49].asfloat:=0;
          if not query2.fieldbyname('tct2').isnull then
          params[50].asfloat:=query2.fieldbyname('tct2').value
          else params[50].asfloat:=0;
          if not query2.fieldbyname('ab2').isnull then
          params[51].asboolean:=query2.fieldbyname('ab2').value
          else params[51].asboolean:=true;
          if not query2.fieldbyname('ab3').isnull then
          params[52].asboolean:=query2.fieldbyname('ab3').value
          else params[52].asboolean:=true;
          if not query2.fieldbyname('ordday_r').isnull then
          params[53].asfloat:=query2.fieldbyname('ordday_r').value
          else params[53].asfloat:=0;
          if not query2.fieldbyname('psp1_r').isnull then
          params[54].asfloat:=query2.fieldbyname('psp1_r').value
          else params[54].asfloat:=0;
          if not query2.fieldbyname('psp2_r').isnull then
          params[55].asfloat:=query2.fieldbyname('psp2_r').value
          else params[55].asfloat:=0;
          if not query2.fieldbyname('mpur1_r').isnull then
          params[56].asfloat:=query2.fieldbyname('mpur1_r').value
          else params[56].asfloat:=0;
          if not query2.fieldbyname('mpur2_r').isnull then
          params[57].asfloat:=query2.fieldbyname('mpur2_r').value
          else params[57].asfloat:=0;
          if not query2.fieldbyname('frst_r').isnull then
          params[58].asfloat:=query2.fieldbyname('frst_r').value
          else params[58].asfloat:=0;
          if not query2.fieldbyname('lstr_r').isnull then
          params[59].asfloat:=query2.fieldbyname('lstr_r').value
          else params[59].asfloat:=0;
          if not query2.fieldbyname('yszq_r').isnull then
          params[60].asfloat:=query2.fieldbyname('yszq_r').value
          else params[60].asfloat:=0;
          if not query2.fieldbyname('yszq0_r').isnull then
          params[61].asfloat:=query2.fieldbyname('yszq0_r').value
          else params[61].asfloat:=0;
          if not query2.fieldbyname('yszq1_r').isnull then
          params[62].asfloat:=query2.fieldbyname('yszq1_r').value
          else params[62].asfloat:=0;
          if not query2.fieldbyname('yszq01_r').isnull then
          params[63].asfloat:=query2.fieldbyname('yszq01_r').value
          else params[63].asfloat:=0;
          if not query2.fieldbyname('sp1_r').isnull then
          params[64].asfloat:=query2.fieldbyname('sp1_r').value
          else params[64].asfloat:=0;
          if not query2.fieldbyname('tct1_r').isnull then
          params[65].asfloat:=query2.fieldbyname('tct1_r').value
          else params[65].asfloat:=0;
          if not query2.fieldbyname('tct2_r').isnull then
          params[66].asfloat:=query2.fieldbyname('tct2_r').value
          else params[66].asfloat:=0;
          if not query2.fieldbyname('exfwk1').isnull then
          params[67].asstring:=query2.fieldbyname('exfwk1').value
          else params[67].asstring:='';
          if not query2.fieldbyname('exftm1').isnull then
          params[68].asstring:=query2.fieldbyname('exftm1').value
          else params[68].asstring:='';
          if not query2.fieldbyname('cjswk1').isnull then
          params[69].asstring:=query2.fieldbyname('cjswk1').value
          else params[69].asstring:='';
          if not query2.fieldbyname('cjssj1').isnull then
          params[70].asstring:=query2.fieldbyname('cjssj1').value
          else params[70].asstring:='';
          if not query2.fieldbyname('etd1').isnull then
          params[71].asstring:=query2.fieldbyname('etd1').value
          else params[71].asstring:='';
          if not query2.fieldbyname('ttime1').isnull then
          params[72].asfloat:=query2.fieldbyname('ttime1').value
          else params[72].asfloat:=0;
          if not query2.fieldbyname('alport1').isnull then
          params[73].asstring:=query2.fieldbyname('alport1').value
          else params[73].asstring:='';
          if not query2.fieldbyname('aexfwk1').isnull then
          params[74].asstring:=query2.fieldbyname('aexfwk1').value
          else params[74].asstring:='';
          if not query2.fieldbyname('aexftm1').isnull then
          params[75].asstring:=query2.fieldbyname('aexftm1').value
          else params[75].asstring:='';
          if not query2.fieldbyname('acjswk1').isnull then
          params[76].asstring:=query2.fieldbyname('acjswk1').value
          else params[76].asstring:='';
          if not query2.fieldbyname('acjssj1').isnull then
          params[77].asstring:=query2.fieldbyname('acjssj1').value
          else params[77].asstring:='';
          if not query2.fieldbyname('aetd1').isnull then
          params[78].asstring:=query2.fieldbyname('aetd1').value
          else params[78].asstring:='';
          if not query2.fieldbyname('attime1').isnull then
          params[79].asfloat:=query2.fieldbyname('attime1').value
          else params[79].asfloat:=0;
          if not query2.fieldbyname('t3ct').isnull then
          params[80].asinteger:=query2.fieldbyname('t3ct').value
          else params[80].asinteger:=0;
          params[81].asinteger:=query2.fieldbyname('seq').value;
          execute;
        end;
        }
          str1:='update cust_exfty set ';
          str1:=str1+'cust='''+query2.fieldbyname('cust').value+''',';
          if not query2.fieldbyname('fcust').isnull then
          str1:=str1+'fcust='''+query2.fieldbyname('fcust').value+''','
          else str1:=str1+'fcust='''',';
          if not query2.fieldbyname('pgrp').isnull then
          str1:=str1+'pgrp='''+query2.fieldbyname('pgrp').value+''','
          else str1:=str1+'pgrp='''',';
          if not query2.fieldbyname('addr').isnull then
          str1:=str1+'addr='''+query2.fieldbyname('addr').value+''','
          else str1:=str1+'addr='''',';
          if not query2.fieldbyname('sewbond').isnull then
          str1:=str1+'sewbond='''+query2.fieldbyname('sewbond').value+''','
          else str1:=str1+'sewbond='''',';
          if not query2.fieldbyname('agt').isnull then
          str1:=str1+'agt='''+query2.fieldbyname('agt').value+''','
          else str1:=str1+'agt='''',';
          str1:=str1+'lst2='''+query2.fieldbyname('lst2').value+''',';
          str1:=str1+'lst2d='''+query2.fieldbyname('lst2d').value+''',';
          str1:=str1+'tplant='''+query2.fieldbyname('tplant').value+''',';
          if not query2.fieldbyname('portl').isnull then
          str1:=str1+'portl='''+query2.fieldbyname('portl').value+''','
          else str1:=str1+'portl='''',';
          if not query2.fieldbyname('portl1').isnull then
          str1:=str1+'portl1='''+query2.fieldbyname('portl1').value+''','
          else str1:=str1+'portl1='''',';
          if not query2.fieldbyname('frst').isnull then
          str1:=str1+'frst='+query2.fieldbyname('frst').asstring+','
          else str1:=str1+'frst=0,';
          if not query2.fieldbyname('lstr').isnull then
          str1:=str1+'lstr='+query2.fieldbyname('lstr').asstring+','
          else str1:=str1+'lstr=0,';
          if not query2.fieldbyname('iratio').isnull then
          str1:=str1+'iratio='''+query2.fieldbyname('iratio').value+''','
          else str1:=str1+'iratio='''',';
          if not query2.fieldbyname('lport').isnull then
          str1:=str1+'lport='''+query2.fieldbyname('lport').value+''','
          else str1:=str1+'lport='''',';
          if not query2.fieldbyname('lmth').isnull then
          str1:=str1+'lmth='''+query2.fieldbyname('lmth').value+''','
          else str1:=str1+'lmth='''',';
          if not query2.fieldbyname('exfwk').isnull then
          str1:=str1+'exfwk='''+query2.fieldbyname('exfwk').value+''','
          else str1:=str1+'exfwk='''',';
          if not query2.fieldbyname('exftm').isnull then
          str1:=str1+'exftm='''+query2.fieldbyname('exftm').value+''','
          else str1:=str1+'exftm='''',';
          if not query2.fieldbyname('cjswk').isnull then
          str1:=str1+'cjswk='''+query2.fieldbyname('cjswk').value+''','
          else str1:=str1+'cjswk='''',';
          if not query2.fieldbyname('cjssj').isnull then
          str1:=str1+'cjssj='''+query2.fieldbyname('cjssj').value+''','
          else str1:=str1+'cjssj='''',';
          if not query2.fieldbyname('ttime').isnull then
          str1:=str1+'ttime='+query2.fieldbyname('ttime').asstring+','
          else str1:=str1+'ttime=0,';
          if not query2.fieldbyname('alport').isnull then
          str1:=str1+'alport='''+query2.fieldbyname('alport').value+''','
          else str1:=str1+'alport='''',';
          if not query2.fieldbyname('aexfwk').isnull then
          str1:=str1+'aexfwk='''+query2.fieldbyname('aexfwk').value+''','
          else str1:=str1+'aexfwk='''',';
          if not query2.fieldbyname('aexftm').isnull then
          str1:=str1+'aexftm='''+query2.fieldbyname('aexftm').value+''','
          else str1:=str1+'aexftm='''',';
          if not query2.fieldbyname('acjswk').isnull then
          str1:=str1+'acjswk='''+query2.fieldbyname('acjswk').value+''','
          else str1:=str1+'acjswk='''',';
          if not query2.fieldbyname('acjssj').isnull then
          str1:=str1+'acjssj='''+query2.fieldbyname('acjssj').value+''','
          else str1:=str1+'acjssj='''',';
          if not query2.fieldbyname('attime').isnull then
          str1:=str1+'attime='+query2.fieldbyname('attime').asstring+','
          else str1:=str1+'attime=0,';
          if not query2.fieldbyname('sdue').isnull then
          str1:=str1+'sdue='''+query2.fieldbyname('sdue').value+''','
          else str1:=str1+'sdue='''',';
          if not query2.fieldbyname('exfday').isnull then
          str1:=str1+'exfday='+query2.fieldbyname('exfday').asstring+','
          else str1:=str1+'exfday=0,';
          str1:=str1+'pmth='''+query2.fieldbyname('pmth').value+''',';
          if not query2.fieldbyname('bzjs').isnull then
          str1:=str1+'bzjs='+query2.fieldbyname('bzjs').asstring+','
          else str1:=str1+'bzjs=12,';
          if not query2.fieldbyname('itime').isnull then
          str1:=str1+'itime='+query2.fieldbyname('itime').asstring+','
          else str1:=str1+'itime=0,';
          if not query2.fieldbyname('etd').isnull then
          str1:=str1+'etd='''+query2.fieldbyname('etd').value+''','
          else str1:=str1+'etd='''',';
          if not query2.fieldbyname('aetd').isnull then
          str1:=str1+'aetd='''+query2.fieldbyname('aetd').value+''','
          else str1:=str1+'aetd='''',';
          if not query2.fieldbyname('grp').isnull then
          str1:=str1+'grp='''+query2.fieldbyname('grp').value+''','
          else str1:=str1+'grp='''',';
          if not query2.fieldbyname('yszq').isnull then
          str1:=str1+'yszq='+query2.fieldbyname('yszq').asstring+','
          else str1:=str1+'yszq=0,';
          if not query2.fieldbyname('act').isnull then begin
            if query2.fieldbyname('act').value=true then str1:=str1+'act=1,'
            else str1:=str1+'act=0,';
          end else str1:=str1+'act=0,';
          if not query2.fieldbyname('itdt').isnull then begin
            if query2.fieldbyname('itdt').value=true then str1:=str1+'itdt=1,'
            else str1:=str1+'itdt=0,';
          end else str1:=str1+'itdt=0,';
          if not query2.fieldbyname('acdt').isnull then begin
            if query2.fieldbyname('acdt').value=true then str1:=str1+'acdt=1,'
            else str1:=str1+'acdt=0,';
          end else str1:=str1+'acdt=0,';
          if not query2.fieldbyname('rline').isnull then
          str1:=str1+'rline='+query2.fieldbyname('rline').asstring+','
          else str1:=str1+'rline=1,';
          if not query2.fieldbyname('rqty').isnull then
          str1:=str1+'rqty='+query2.fieldbyname('rqty').asstring+','
          else str1:=str1+'rqty=0,';
          if not query2.fieldbyname('bzny').isnull then
          str1:=str1+'bzny='+query2.fieldbyname('bzny').asstring+','
          else str1:=str1+'bzny=0,';
          if not query2.fieldbyname('rqty1').isnull then
          str1:=str1+'rqty1='+query2.fieldbyname('rqty1').asstring+','
          else str1:=str1+'rqty1=0,';
          if not query2.fieldbyname('cgrp').IsNull then
          str1:=str1+'cgrp='''+query2.fieldbyname('cgrp').value+''','
          else str1:=str1+'cgrp=''Category 3'',';
          if not query2.fieldbyname('yszq1').isnull then
          str1:=str1+'yszq1='+query2.fieldbyname('yszq1').asstring+','
          else str1:=str1+'yszq1=0,';
          if not query2.fieldbyname('ordday').isnull then
          str1:=str1+'ordday='+query2.fieldbyname('ordday').asstring+','
          else str1:=str1+'ordday=0,';
          if not query2.fieldbyname('psp1').isnull then
          str1:=str1+'psp1='+query2.fieldbyname('psp1').asstring+','
          else str1:=str1+'psp1=0,';
          if not query2.fieldbyname('psp2').isnull then
          str1:=str1+'psp2='+query2.fieldbyname('psp2').asstring+','
          else str1:=str1+'psp2=0,';
          if not query2.fieldbyname('mpur1').isnull then
          str1:=str1+'mpur1='+query2.fieldbyname('mpur1').asstring+','
          else str1:=str1+'mpur1=0,';
          if not query2.fieldbyname('mpur2').isnull then
          str1:=str1+'mpur2='+query2.fieldbyname('mpur2').asstring+','
          else str1:=str1+'mpur2=0,';
          if not query2.fieldbyname('yszq01').isnull then
          str1:=str1+'yszq01='+query2.fieldbyname('yszq01').asstring+','
          else str1:=str1+'yszq01=0,';
          if not query2.fieldbyname('yszq0').isnull then
          str1:=str1+'yszq0='+query2.fieldbyname('yszq0').asstring+','
          else str1:=str1+'yszq0=0,';
          if not query2.fieldbyname('sp1').isnull then
          str1:=str1+'sp1='+query2.fieldbyname('sp1').asstring+','
          else str1:=str1+'sp1=0,';
          if not query2.fieldbyname('tct1').isnull then
          str1:=str1+'tct1='+query2.fieldbyname('tct1').asstring+','
          else str1:=str1+'tct1=0,';
          if not query2.fieldbyname('tct2').isnull then
          str1:=str1+'tct2='+query2.fieldbyname('tct2').asstring+','
          else str1:=str1+'tct2=0,';
          if not query2.fieldbyname('ab2').isnull then begin
            if query2.fieldbyname('ab2').value=true then str1:=str1+'ab2=1,'
            else str1:=str1+'ab2=0,';
          end else str1:=str1+'ab2=0,';
          if not query2.fieldbyname('ab3').isnull then begin
            if query2.fieldbyname('ab3').value=true then str1:=str1+'ab3=1,'
            else str1:=str1+'ab3=0,';
          end else str1:=str1+'ab3=0,';
          if not query2.fieldbyname('ordday_r').isnull then
          str1:=str1+'ordday_r='+query2.fieldbyname('ordday_r').asstring+','
          else str1:=str1+'ordday_r=0,';
          if not query2.fieldbyname('psp1_r').isnull then
          str1:=str1+'psp1_r='+query2.fieldbyname('psp1_r').asstring+','
          else str1:=str1+'psp1_r=0,';
          if not query2.fieldbyname('psp2_r').isnull then
          str1:=str1+'psp2_r='+query2.fieldbyname('psp2_r').asstring+','
          else str1:=str1+'psp2_r=0,';
          if not query2.fieldbyname('mpur1_r').isnull then
          str1:=str1+'mpur1_r='+query2.fieldbyname('mpur1_r').asstring+','
          else str1:=str1+'mpur1_r=0,';
          if not query2.fieldbyname('mpur2_r').isnull then
          str1:=str1+'mpur2_r='+query2.fieldbyname('mpur2_r').asstring+','
          else str1:=str1+'mpur2_r=0,';
          if not query2.fieldbyname('frst_r').isnull then
          str1:=str1+'frst_r='+query2.fieldbyname('frst_r').asstring+','
          else str1:=str1+'frst_r=0,';
          if not query2.fieldbyname('lstr_r').isnull then
          str1:=str1+'lstr_r='+query2.fieldbyname('lstr_r').asstring+','
          else str1:=str1+'lstr_r=0,';
          if not query2.fieldbyname('yszq_r').isnull then
          str1:=str1+'yszq_r='+query2.fieldbyname('yszq_r').asstring+','
          else str1:=str1+'yszq_r=0,';
          if not query2.fieldbyname('yszq0_r').isnull then
          str1:=str1+'yszq0_r='+query2.fieldbyname('yszq0_r').asstring+','
          else str1:=str1+'yszq0_r=0,';
          if not query2.fieldbyname('yszq1_r').isnull then
          str1:=str1+'yszq1_r='+query2.fieldbyname('yszq1_r').asstring+','
          else str1:=str1+'yszq1_r=0,';
          if not query2.fieldbyname('yszq01_r').isnull then
          str1:=str1+'yszq01_r='+query2.fieldbyname('yszq01_r').asstring+','
          else str1:=str1+'yszq01_r=0,';
          if not query2.fieldbyname('sp1_r').isnull then
          str1:=str1+'sp1_r='+query2.fieldbyname('sp1_r').asstring+','
          else str1:=str1+'sp1_r=0,';
          if not query2.fieldbyname('tct1_r').isnull then
          str1:=str1+'tct1_r='+query2.fieldbyname('tct1_r').asstring+','
          else str1:=str1+'tct1_r=0,';
          if not query2.fieldbyname('tct2_r').isnull then
          str1:=str1+'tct2_r='+query2.fieldbyname('tct2_r').asstring+','
          else str1:=str1+'tct2_r=0,';
          if not query2.fieldbyname('exfwk1').isnull then
          str1:=str1+'exfwk1='''+query2.fieldbyname('exfwk1').value+''','
          else str1:=str1+'exfwk1='''',';
          if not query2.fieldbyname('exftm1').isnull then
          str1:=str1+'exftm1='''+query2.fieldbyname('exftm1').value+''','
          else str1:=str1+'exftm1='''',';
          if not query2.fieldbyname('cjswk1').isnull then
          str1:=str1+'cjswk1='''+query2.fieldbyname('cjswk1').value+''','
          else str1:=str1+'cjswk1='''',';
          if not query2.fieldbyname('cjssj1').isnull then
          str1:=str1+'cjssj1='''+query2.fieldbyname('cjssj1').value+''','
          else str1:=str1+'cjssj1='''',';
          if not query2.fieldbyname('etd1').isnull then
          str1:=str1+'etd1='''+query2.fieldbyname('etd1').value+''','
          else str1:=str1+'etd1='''',';
          if not query2.fieldbyname('ttime1').isnull then
          str1:=str1+'ttime1='+query2.fieldbyname('ttime1').asstring+','
          else str1:=str1+'ttime1=0,';
          if not query2.fieldbyname('alport1').isnull then
          str1:=str1+'alport1='''+query2.fieldbyname('alport1').value+''','
          else str1:=str1+'alport1='''',';
          if not query2.fieldbyname('aexfwk1').isnull then
          str1:=str1+'aexfwk1='''+query2.fieldbyname('aexfwk1').value+''','
          else str1:=str1+'aexfwk1='''',';
          if not query2.fieldbyname('aexftm1').isnull then
          str1:=str1+'aexftm1='''+query2.fieldbyname('aexftm1').value+''','
          else str1:=str1+'aexftm1='''',';
          if not query2.fieldbyname('acjswk1').isnull then
          str1:=str1+'acjswk1='''+query2.fieldbyname('acjswk1').value+''','
          else str1:=str1+'acjswk1='''',';
          if not query2.fieldbyname('acjssj1').isnull then
          str1:=str1+'acjssj1='''+query2.fieldbyname('acjssj1').value+''','
          else str1:=str1+'acjssj1='''',';
          if not query2.fieldbyname('aetd1').isnull then
          str1:=str1+'aetd1='''+query2.fieldbyname('aetd1').value+''','
          else str1:=str1+'aetd1='''',';
          if not query2.fieldbyname('attime1').isnull then
          str1:=str1+'attime1='+query2.fieldbyname('attime1').asstring+','
          else str1:=str1+'attime1=0,';
          if not query2.fieldbyname('osp').isnull then
          str1:=str1+'osp='''+query2.fieldbyname('osp').asstring+''','
          else str1:=str1+'osp='''',';
          if not query2.fieldbyname('dtdiff').isnull then
          str1:=str1+'dtdiff='+query2.fieldbyname('dtdiff').asstring+','
          else str1:=str1+'dtdiff=0,';
          if not query2.fieldbyname('dseq').isnull then
          str1:=str1+'dseq='''+query2.fieldbyname('dseq').asstring+''','
          else str1:=str1+'dseq='''',';
          if not query2.fieldbyname('t3ct').isnull then
          str1:=str1+'t3ct='+query2.fieldbyname('t3ct').asstring+' '
          else str1:=str1+'t3ct=0 ';
          str1:=str1+'where seq='+query2.fieldbyname('seq').asstring;
          //showmessage(str1);
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftstring,'cust',ptinput);
          params.createparam(ftstring,'fcust',ptinput);
          params.createparam(ftstring,'pgrp',ptinput);
          params.createparam(ftstring,'addr',ptinput);
          params.createparam(ftstring,'agt',ptinput);
          params.createparam(ftstring,'lst2',ptinput);
          params.createparam(ftstring,'lst2d',ptinput);
          params.createparam(ftstring,'tplant',ptinput);
          params.createparam(ftstring,'portl',ptinput);
          params.createparam(ftfloat,'frst',ptinput);
          params.createparam(ftfloat,'lstr',ptinput);
          params.createparam(ftstring,'iratio',ptinput);
          params.createparam(ftstring,'lport',ptinput);
          params.createparam(ftstring,'lmth',ptinput);
          params.createparam(ftstring,'exfwk',ptinput);
          params.createparam(ftstring,'exftm',ptinput);
          params.createparam(ftstring,'cjswk',ptinput);
          params.createparam(ftstring,'cjssj',ptinput);
          params.createparam(ftfloat,'ttime',ptinput);
          params.createparam(ftstring,'alport',ptinput);
          params.createparam(ftstring,'aexfwk',ptinput);
          params.createparam(ftstring,'aexftm',ptinput);
          params.createparam(ftstring,'acjswk',ptinput);
          params.createparam(ftstring,'acjssj',ptinput);
          params.createparam(ftfloat,'attime',ptinput);
          params.createparam(ftstring,'sdue',ptinput);
          params.createparam(ftfloat,'exfday',ptinput);
          params.createparam(ftstring,'pmth',ptinput);
          params.createparam(ftfloat,'bzjs',ptinput);
          params.createparam(ftfloat,'itime',ptinput);
          params.createparam(ftstring,'etd',ptinput);
          params.createparam(ftstring,'aetd',ptinput);
          params.createparam(ftstring,'grp',ptinput);
          params.createparam(ftfloat,'yszq',ptinput);
          params.createparam(ftboolean,'act',ptinput);
          params.createparam(ftinteger,'rline',ptinput);
          params.createparam(ftinteger,'rqty',ptinput);
          params.createparam(ftfloat,'bzny',ptinput);
          params.createparam(ftinteger,'rqty1',ptinput);
          params.createparam(ftstring,'cgrp',ptinput);
          params.createparam(ftfloat,'yszq1',ptinput);
          params.createparam(ftfloat,'ordday',ptinput);
          params.createparam(ftfloat,'psp1',ptinput);
          params.createparam(ftfloat,'psp2',ptinput);
          params.createparam(ftfloat,'mpur1',ptinput);
          params.createparam(ftfloat,'mpur2',ptinput);
          params.createparam(ftfloat,'yszq01',ptinput);
          params.createparam(ftfloat,'yszq0',ptinput);
          params.createparam(ftfloat,'sp1',ptinput);
          params.createparam(ftfloat,'tct1',ptinput);
          params.createparam(ftfloat,'tct2',ptinput);
          params.createparam(ftboolean,'ab2',ptinput);
          params.createparam(ftboolean,'ab3',ptinput);
          params.createparam(ftfloat,'ordday_r',ptinput);
          params.createparam(ftfloat,'psp1_r',ptinput);
          params.createparam(ftfloat,'psp2_r',ptinput);
          params.createparam(ftfloat,'mpur1_r',ptinput);
          params.createparam(ftfloat,'mpur2_r',ptinput);
          params.createparam(ftfloat,'frst_r',ptinput);
          params.createparam(ftfloat,'lstr_r',ptinput);
          params.createparam(ftfloat,'yszq_r',ptinput);
          params.createparam(ftfloat,'yszq0_r',ptinput);
          params.createparam(ftfloat,'yszq1_r',ptinput);
          params.createparam(ftfloat,'yszq01_r',ptinput);
          params.createparam(ftfloat,'sp1_r',ptinput);
          params.createparam(ftfloat,'tct1_r',ptinput);
          params.createparam(ftfloat,'tct2_r',ptinput);
          params.createparam(ftstring,'exfwk1',ptinput);
          params.createparam(ftstring,'exftm1',ptinput);
          params.createparam(ftstring,'cjswk1',ptinput);
          params.createparam(ftstring,'cjssj1',ptinput);
          params.createparam(ftstring,'etd1',ptinput);
          params.createparam(ftfloat,'ttime1',ptinput);
          params.createparam(ftstring,'alport1',ptinput);
          params.createparam(ftstring,'aexfwk1',ptinput);
          params.createparam(ftstring,'aexftm1',ptinput);
          params.createparam(ftstring,'acjswk1',ptinput);
          params.createparam(ftstring,'acjssj1',ptinput);
          params.createparam(ftstring,'aetd1',ptinput);
          params.createparam(ftfloat,'attime1',ptinput);
          params.createparam(ftinteger,'t3ct',ptinput);
          params.createparam(ftstring,'sewbond',ptinput);
          params.createparam(ftstring,'osp',ptinput);
          params.createparam(ftboolean,'itdt',ptinput);
          params.createparam(ftboolean,'acdt',ptinput);
          params.createparam(ftinteger,'dtdiff',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          params.createparam(ftstring,'dseq',ptinput);
          commandtext:='insert into cust_exfty(cust,fcust,pgrp,addr,agt,lst2,lst2d,tplant,portl,frst,lstr,iratio,lport,lmth,'
                      +'exfwk,exftm,cjswk,cjssj,ttime,alport,aexfwk,aexftm,acjswk,acjssj,attime,sdue,exfday,'
                      +'pmth,bzjs,itime,etd,aetd,grp,yszq,act,rline,rqty,bzny,rqty1,cgrp,yszq1,'
                      +'ordday,psp1,psp2,mpur1,mpur2,yszq01,yszq0,sp1,tct1,tct2,ab2,ab3,ordday_r,psp1_r,psp2_r,'
                      +'mpur1_r,mpur2_r,frst_r,lstr_r,yszq_r,yszq0_r,yszq1_r,yszq01_r,sp1_r,tct1_r,tct2_r,exfwk1,exftm1,'
                      +'cjswk1,cjssj1,etd1,ttime1,alport1,aexfwk1,aexftm1,acjswk1,acjssj1,aetd1,attime1,t3ct,sewbond,osp,itdt,acdt,dtdiff,seq,dseq,portl1) '
                      +'values(:cust,:fcust,:pgrp,:addr,:agt,:lst2,:lst2d,:tplant,:portl,:frst,:lstr,:iratio,:lport,:lmth,'
                      +':exfwk,:exftm,:cjswk,:cjssj,:ttime,:alport,:aexfwk,:aexftm,:acjswk,:acjssj,:attime,:sdue,:exfday,'
                      +':pmth,:bzjs,:itime,:etd,:aetd,:grp,:yszq,:act,:rline,:rqty,:bzny,:rqty1,:cgrp,:yszq1,:ordday,:psp1,'
                      +':psp2,:mpur1,:mpur2,:yszq01,:yszp0,:sp1,:tct1,:tct2,:ab2,:ab3,:ordday_r,:psp1_r,:psp2_r,:mpur1_r,'
                      +':mpur2_r,:frst_r,:lstr_r,:yszq_r,:yszq0_r,:yszq1_r,:yszq01_r,:sp1_r,:tct1_r,:tct2_r,:exfwk1,:exftm1,'
                      +':cjswk1,:cjssj1,:etd1,:ttime1,:alport1,:aexfwk1,:aexftm1,:acjswk1,:acjssj1,:aetd1,:attime1,:t3ct,:sewbond,:osp,:itdt,:acdt,:dtdiff,:seq,:dseq,:portl1)';
          params[0].asstring:=query2.fieldbyname('cust').value;
          if not query2.fieldbyname('fcust').isnull then
          params[1].asstring:=query2.fieldbyname('fcust').value
          else params[1].asstring:=' ';
          if not query2.fieldbyname('pgrp').isnull then
          params[2].asstring:=query2.fieldbyname('pgrp').value
          else params[2].asstring:=' ';
          if not query2.fieldbyname('addr').isnull then
          params[3].asstring:=query2.fieldbyname('addr').value
          else params[3].asstring:=' ';
          if not query2.fieldbyname('agt').isnull then
          params[4].asstring:=query2.fieldbyname('agt').value
          else params[4].asstring:=' ';
          params[5].asstring:=query2.fieldbyname('lst2').value;
          params[6].asstring:=query2.fieldbyname('lst2d').value;
          params[7].asstring:=query2.fieldbyname('tplant').value;
          if not query2.fieldbyname('portl').isnull then
          params[8].asstring:=query2.fieldbyname('portl').value
          else params[8].asstring:=' ';
          if not query2.fieldbyname('frst').isnull then
          params[9].asfloat:=query2.fieldbyname('frst').value
          else params[9].asfloat:=0;
          if not query2.fieldbyname('lstr').isnull then
          params[10].asfloat:=query2.fieldbyname('lstr').value
          else params[10].asfloat:=0;
          if not query2.fieldbyname('iratio').isnull then
          params[11].asstring:=query2.fieldbyname('iratio').value
          else params[11].asstring:=' ';
          if not query2.fieldbyname('lport').isnull then
          params[12].asstring:=query2.fieldbyname('lport').value
          else params[12].asstring:=' ';
          if not query2.fieldbyname('lmth').isnull then
          params[13].asstring:=query2.fieldbyname('lmth').value
          else params[13].asstring:=' ';
          if not query2.fieldbyname('exfwk').isnull then
          params[14].asstring:=query2.fieldbyname('exfwk').value
          else params[14].asstring:=' ';
          if not query2.fieldbyname('exftm').isnull then
          params[15].asstring:=query2.fieldbyname('exftm').value
          else params[15].asstring:=' ';
          if not query2.fieldbyname('cjswk').isnull then
          params[16].asstring:=query2.fieldbyname('cjswk').value
          else params[16].asstring:=' ';
          if not query2.fieldbyname('cjssj').isnull then
          params[17].asstring:=query2.fieldbyname('cjssj').value
          else params[17].asstring:=' ';
          if not query2.fieldbyname('ttime').isnull then
          params[18].asfloat:=query2.fieldbyname('ttime').value
          else params[18].asfloat:=0;
          if not query2.fieldbyname('alport').isnull then
          params[19].asstring:=query2.fieldbyname('alport').value
          else params[19].asstring:=' ';
          if not query2.fieldbyname('aexfwk').isnull then
          params[20].asstring:=query2.fieldbyname('aexfwk').value
          else params[20].asstring:=' ';
          if not query2.fieldbyname('aexftm').isnull then
          params[21].asstring:=query2.fieldbyname('aexftm').value
          else params[21].asstring:=' ';
          if not query2.fieldbyname('acjswk').isnull then
          params[22].asstring:=query2.fieldbyname('acjswk').value
          else params[22].asstring:=' ';
          if not query2.fieldbyname('acjssj').isnull then
          params[23].asstring:=query2.fieldbyname('acjssj').value
          else params[23].asstring:=' ';
          if not query2.fieldbyname('attime').isnull then
          params[24].asfloat:=query2.fieldbyname('attime').value
          else params[24].asfloat:=0;
          if not query2.fieldbyname('sdue').isnull then
          params[25].asstring:=query2.fieldbyname('sdue').value
          else params[25].asstring:=' ';
          if not query2.fieldbyname('exfday').isnull then
          params[26].asfloat:=query2.fieldbyname('exfday').value
          else params[26].asfloat:=0;
          params[27].asstring:=query2.fieldbyname('pmth').value;
          if not query2.fieldbyname('bzjs').isnull then
          params[28].asfloat:=query2.fieldbyname('bzjs').value
          else params[28].asfloat:=12;
          if not query2.fieldbyname('itime').isnull then
          params[29].asfloat:=query2.fieldbyname('itime').value
          else params[29].asfloat:=0;
          if not query2.fieldbyname('etd').isnull then
          params[30].asstring:=query2.fieldbyname('etd').value
          else params[30].asstring:=' ';
          if not query2.fieldbyname('aetd').isnull then
          params[31].asstring:=query2.fieldbyname('aetd').value
          else params[31].asstring:=' ';
          if not query2.fieldbyname('grp').isnull then
          params[32].asstring:=query2.fieldbyname('grp').value
          else params[32].asstring:=' ';
          if not query2.fieldbyname('yszq').isnull then
          params[33].asfloat:=query2.fieldbyname('yszq').value
          else params[33].asfloat:=0;
          if not query2.fieldbyname('act').isnull then
          params[34].asboolean:=query2.fieldbyname('act').value
          else params[34].asboolean:=false;
          if not query2.fieldbyname('rline').IsNull then
          params[35].asinteger:=query2.fieldbyname('rline').value
          else params[35].asinteger:=1;
          if not query2.fieldbyname('rqty').isnull then
          params[36].asinteger:=query2.fieldbyname('rqty').value
          else params[36].asinteger:=0;
          if not query2.fieldbyname('bzny').isnull then
          params[37].asfloat:=query2.fieldbyname('bzny').value
          else params[37].asfloat:=0;
          if not query2.fieldbyname('rqty1').isnull then
          params[38].asinteger:=query2.fieldbyname('rqty1').value
          else params[38].asinteger:=0;
          if not query2.fieldbyname('cgrp').IsNull then
          params[39].asstring:=query2.fieldbyname('cgrp').value
          else params[39].asstring:='Category 3';
          if not query2.fieldbyname('yszq1').isnull then
          params[40].asfloat:=query2.fieldbyname('yszq1').value
          else params[40].asfloat:=0;
          if not query2.fieldbyname('ordday').isnull then
          params[41].asfloat:=query2.fieldbyname('ordday').value
          else params[41].asfloat:=0;
          if not query2.fieldbyname('psp1').isnull then
          params[42].asfloat:=query2.fieldbyname('psp1').value
          else params[42].asfloat:=0;
          if not query2.fieldbyname('psp2').isnull then
          params[43].asfloat:=query2.fieldbyname('psp2').value
          else params[43].asfloat:=0;
          if not query2.fieldbyname('mpur1').isnull then
          params[44].asfloat:=query2.fieldbyname('mpur1').value
          else params[44].asfloat:=0;
          if not query2.fieldbyname('mpur2').isnull then
          params[45].asfloat:=query2.fieldbyname('mpur2').value
          else params[45].asfloat:=0;
          if not query2.fieldbyname('yszq01').isnull then
          params[46].asfloat:=query2.fieldbyname('yszq01').value
          else params[46].asfloat:=0;
          if not query2.fieldbyname('yszq0').isnull then
          params[47].asfloat:=query2.fieldbyname('yszq0').value
          else params[47].asfloat:=0;
          if not query2.fieldbyname('sp1').isnull then
          params[48].asfloat:=query2.fieldbyname('sp1').value
          else params[48].asfloat:=0;
          if not query2.fieldbyname('tct1').isnull then
          params[49].asfloat:=query2.fieldbyname('tct1').value
          else params[49].asfloat:=0;
          if not query2.fieldbyname('tct2').isnull then
          params[50].asfloat:=query2.fieldbyname('tct2').value
          else params[50].asfloat:=0;
          if not query2.fieldbyname('ab2').isnull then
          params[51].asboolean:=query2.fieldbyname('ab2').value
          else params[51].asboolean:=true;
          if not query2.fieldbyname('ab3').isnull then
          params[52].asboolean:=query2.fieldbyname('ab3').value
          else params[52].asboolean:=true;
          if not query2.fieldbyname('ordday_r').isnull then
          params[53].asfloat:=query2.fieldbyname('ordday_r').value
          else params[53].asfloat:=0;
          if not query2.fieldbyname('psp1_r').isnull then
          params[54].asfloat:=query2.fieldbyname('psp1_r').value
          else params[54].asfloat:=0;
          if not query2.fieldbyname('psp2_r').isnull then
          params[55].asfloat:=query2.fieldbyname('psp2_r').value
          else params[55].asfloat:=0;
          if not query2.fieldbyname('mpur1_r').isnull then
          params[56].asfloat:=query2.fieldbyname('mpur1_r').value
          else params[56].asfloat:=0;
          if not query2.fieldbyname('mpur2_r').isnull then
          params[57].asfloat:=query2.fieldbyname('mpur2_r').value
          else params[57].asfloat:=0;
          if not query2.fieldbyname('frst_r').isnull then
          params[58].asfloat:=query2.fieldbyname('frst_r').value
          else params[58].asfloat:=0;
          if not query2.fieldbyname('lstr_r').isnull then
          params[59].asfloat:=query2.fieldbyname('lstr_r').value
          else params[59].asfloat:=0;
          if not query2.fieldbyname('yszq_r').isnull then
          params[60].asfloat:=query2.fieldbyname('yszq_r').value
          else params[60].asfloat:=0;
          if not query2.fieldbyname('yszq0_r').isnull then
          params[61].asfloat:=query2.fieldbyname('yszq0_r').value
          else params[61].asfloat:=0;
          if not query2.fieldbyname('yszq1_r').isnull then
          params[62].asfloat:=query2.fieldbyname('yszq1_r').value
          else params[62].asfloat:=0;
          if not query2.fieldbyname('yszq01_r').isnull then
          params[63].asfloat:=query2.fieldbyname('yszq01_r').value
          else params[63].asfloat:=0;
          if not query2.fieldbyname('sp1_r').isnull then
          params[64].asfloat:=query2.fieldbyname('sp1_r').value
          else params[64].asfloat:=0;
          if not query2.fieldbyname('tct1_r').isnull then
          params[65].asfloat:=query2.fieldbyname('tct1_r').value
          else params[65].asfloat:=0;
          if not query2.fieldbyname('tct2_r').isnull then
          params[66].asfloat:=query2.fieldbyname('tct2_r').value
          else params[66].asfloat:=0;
          if not query2.fieldbyname('exfwk1').isnull then
          params[67].asstring:=query2.fieldbyname('exfwk1').value
          else params[67].asstring:='';
          if not query2.fieldbyname('exftm1').isnull then
          params[68].asstring:=query2.fieldbyname('exftm1').value
          else params[68].asstring:='';
          if not query2.fieldbyname('cjswk1').isnull then
          params[69].asstring:=query2.fieldbyname('cjswk1').value
          else params[69].asstring:='';
          if not query2.fieldbyname('cjssj1').isnull then
          params[70].asstring:=query2.fieldbyname('cjssj1').value
          else params[70].asstring:='';
          if not query2.fieldbyname('etd1').isnull then
          params[71].asstring:=query2.fieldbyname('etd1').value
          else params[71].asstring:='';
          if not query2.fieldbyname('ttime1').isnull then
          params[72].asfloat:=query2.fieldbyname('ttime1').value
          else params[72].asfloat:=0;
          if not query2.fieldbyname('alport1').isnull then
          params[73].asstring:=query2.fieldbyname('alport1').value
          else params[73].asstring:='';
          if not query2.fieldbyname('aexfwk1').isnull then
          params[74].asstring:=query2.fieldbyname('aexfwk1').value
          else params[74].asstring:='';
          if not query2.fieldbyname('aexftm1').isnull then
          params[75].asstring:=query2.fieldbyname('aexftm1').value
          else params[75].asstring:='';
          if not query2.fieldbyname('acjswk1').isnull then
          params[76].asstring:=query2.fieldbyname('acjswk1').value
          else params[76].asstring:='';
          if not query2.fieldbyname('acjssj1').isnull then
          params[77].asstring:=query2.fieldbyname('acjssj1').value
          else params[77].asstring:='';
          if not query2.fieldbyname('aetd1').isnull then
          params[78].asstring:=query2.fieldbyname('aetd1').value
          else params[78].asstring:='';
          if not query2.fieldbyname('attime1').isnull then
          params[79].asfloat:=query2.fieldbyname('attime1').value
          else params[79].asfloat:=0;
          if not query2.fieldbyname('t3ct').isnull then
          params[80].asinteger:=query2.fieldbyname('t3ct').value
          else params[80].asinteger:=0;
          if not query2.fieldbyname('sewbond').isnull then
          params[81].asstring:=query2.fieldbyname('sewbond').value
          else params[81].asstring:='';
          if not query2.fieldbyname('osp').isnull then
          params[82].asstring:=query2.fieldbyname('osp').value
          else params[82].asstring:='';
          if not query2.fieldbyname('itdt').isnull then
          params[83].asboolean:=query2.fieldbyname('itdt').value
          else params[83].asboolean:=false;
          if not query2.fieldbyname('acdt').isnull then
          params[84].asboolean:=query2.fieldbyname('acdt').value
          else params[84].asboolean:=false;
          if not query2.fieldbyname('dtdiff').isnull then
          params[85].asinteger:=query2.fieldbyname('dtdiff').value
          else params[85].asinteger:=0;
          params[86].asinteger:=query2.fieldbyname('seq').value;
          if not query2.fieldbyname('dseq').isnull then
          params[87].asstring:=query2.fieldbyname('dseq').value
          else params[87].asstring:='';
          if not query2.fieldbyname('portl1').isnull then
          params[88].asstring:=query2.fieldbyname('portl1').value
          else params[88].asstring:=' ';
          execute;
        end;
      end;
    end;
  //end;
end;

procedure Tfrmcustomer.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcustomer.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcustomer.BitBtn1Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmcustprint=nil then frmcustprint:=tfrmcustprint.create(nil);
  frmcustprint.ComboBox1.Items.clear;
  with query3 do begin
    close;
    params.clear;
    //commandtext:='select distinct cust from cust_sku';
    commandtext:='select distinct cust from cust_exfty where cust not in (''ANFF1'',''SALL1'')';
    open;
    first;
    while not eof do begin
      frmcustprint.ComboBox1.Items.add(fieldbyname('cust').value);
      application.ProcessMessages;
      next;
    end;
  end;
  //frmcustprint.ComboBox1.Items.Add('SALL1');
  frmcustprint.combobox1.text:=combobox1.text;
  frmcustprint.show;
  {
  if query1.Active then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='execute procedure sp_printcust(:x1)';
      params[0].asstring:=combobox1.text;
      execute;
    end;
    with query4 do begin
      close;
      params.clear;
      commandtext:='select * from cust_sku1 a,cust_sku2 b where a.cust=b.cust and a.ptyp=b.ptyp and a.lst2=b.lst2 order by a.cust,a.ptyp,a.lst2,b.pcol,b.fits';
      open;
      ppdbpipeline1.DataSource:=datasource3;
      cust01.Caption:=combobox1.text;
      ppReport1.Print;
    end;
    with query4 do begin
      close;
      params.clear;
      commandtext:='select * from cust_sku1 a,cust_sku02 b where a.cust=b.cust and a.ptyp=b.ptyp and a.lst2=b.lst2 order by a.cust,a.ptyp,a.lst2,b.fits';
      open;
      ppdbpipeline1.DataSource:=datasource3;
      cust02.Caption:=combobox1.text;
      ppReport3.Print;
    end;
  end;
  }
  screen.cursor:=crDefault;
end;

procedure Tfrmcustomer.BitBtn4Click(Sender: TObject);
begin
  if query2.Active then begin
    if query2.State=dsedit then query2.post;
    ppdbpipeline1.DataSource:=datasource2;
    if frmcustct=nil then frmcustct:=tfrmcustct.create(nil);
    frmcustct.Show;
    {
    cust03.Caption:=combobox2.text;
    tplant01.Caption:=combobox3.text;
    team01.Caption:=combobox4.Text;
    if xh1.ItemIndex=0 then ppLabel13.Caption:='Customer Profile - Cycle Time  - All'
    else if xh1.ItemIndex=1 then ppLabel13.Caption:='Customer Profile - Cycle Time  - Active'
    else if xh1.ItemIndex=2 then ppLabel13.Caption:='Customer Profile - Cycle Time  - Inactive';
    ppReport2.Print;
    }
  end;
end;

procedure Tfrmcustomer.ComboBox1Change(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='select * from cust_sku where cust='''+combobox1.text+'''';
    open;
  end;
end;

procedure Tfrmcustomer.FormShow(Sender: TObject);
begin
  combobox1.items.clear;
  combobox2.items.clear;
  combobox5.items.clear;
  combobox7.items.clear;
  with query3 do begin
    close;
    params.clear;
    //commandtext:='select distinct cust from cust_sku';
    commandtext:='select distinct cust from cust_exfty where act=1';// where cust not in (''ANFF1'',''SALL1'')';
    open;
    first;
    while not eof do begin
      combobox1.items.add(fieldbyname('cust').value);
      combobox2.items.Add(fieldbyname('cust').value);
      //combobox2.items.add(fieldbyname('cust').value);
      application.ProcessMessages;
      next;
    end;
  end;
  {
  combobox1.items.add('SALL1');
  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct cust from cust_exfty';
    open;
    first;
    while not eof do begin
      //combobox1.items.add(fieldbyname('cust').value);
      combobox2.items.add(fieldbyname('cust').value);
      application.ProcessMessages;
      next;
    end;
  end;
  }
  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct pgrp from cust_exfty';
    open;
    first;
    while not eof do begin
      combobox5.items.add(fieldbyname('pgrp').value);
      application.ProcessMessages;
      next;
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    commandtext:='select distinct fcust from cust_exfty';
    open;
    first;
    while not eof do begin
      combobox7.items.add(fieldbyname('fcust').value);
      application.ProcessMessages;
      next;
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r5').value=false then begin
      dbgrideh2.ReadOnly:=true;
      bitbtn5.Enabled:=false;
      bitbtn6.Enabled:=false;
      bitbtn19.Enabled:=false;
      bitbtn20.Enabled:=false;
      qry_details.ReadOnly:=true;
    end;
  end;
end;

procedure Tfrmcustomer.PageControl1Change(Sender: TObject);
begin
  if pagecontrol1.activepage=tabsheet1 then begin
    with query1 do begin
      close;
      params.clear;
      commandtext:='select * from cust_sku order by cust,ptyp,lst2,pcol,fits,sizs';
      open;
    end;
  end else if pagecontrol1.activepage=tabsheet3 then begin
    with qry_details do begin
      close;
      params.clear;
      commandtext:='select * from cust_detail';
      open;
    end;
  end;
end;

procedure Tfrmcustomer.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport3.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcustomer.ComboBox2Change(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    if xh1.ItemIndex=0 then
    commandtext:='select * from cust_exfty where 0=0'
    else if xh1.ItemIndex=1 then
    commandtext:='select * from cust_exfty where act=1'
    else if xh1.ItemIndex=2 then
    commandtext:='select * from cust_exfty where act=0';
    if combobox2.text>'' then commandtext:=commandtext+' and cust='''+combobox2.text+'''';
    if combobox3.text>'' then begin
      if combobox3.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox3.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox4.text>'' then commandtext:=commandtext+' and grp='''+combobox4.text+'''';
    if combobox5.text>'' then commandtext:=commandtext+' and pgrp='''+combobox5.text+'''';
    if combobox7.text>'' then commandtext:=commandtext+' and fcust='''+combobox7.text+'''';
    open;
  end;
end;

procedure Tfrmcustomer.Copy1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_customercopy(:x1,:x2)';
      params[0].asstring:=query2.fieldbyname('tplant').value;
      params[1].asinteger:=query2.fieldbyname('seq').value;
      execute;
    end;
    combobox2change(self);
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmcustomer.Query2NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query3 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as seq1 from cust_exfty';
    open;
    if not fieldbyname('seq1').isnull then seq:=fieldbyname('seq1').value+1
    else seq:=1;
  end;
  query2.fieldbyname('seq').value:=seq;
  query2.fieldbyname('cust').value:=' ';
  query2.fieldbyname('lst2').value:=' ';
  query2.fieldbyname('lst2d').value:=' ';
  query2.fieldbyname('pmth').value:='SOLID';
  query2.fieldbyname('tplant').value:='SL';
  query2.fieldbyname('rline').value:=1;
  query2.fieldbyname('itdt').value:=0;
  query2.fieldbyname('acdt').value:=0;
  query2.fieldbyname('dtdiff').value:=0;
end;

procedure Tfrmcustomer.BitBtn3Click(Sender: TObject);
begin
  if (query2.state=dsedit) or (query2.state=dsinsert) then query2.post;
end;

procedure Tfrmcustomer.BitBtn5Click(Sender: TObject);
var
  cust,fcust,pgrp,addr,agt,lst2,lst2d,tplant,portl,iratio,lport,lmth,exfwk,exftm,cjswk,cjssj:string;
  frst,lstr,ttime,attime,exfday,bzjs,itime,yszq:double;
  alport,aexfwk,aexftm,acjswk,acjssj,sdue,pmth,etd,aetd,grp:string;
  cact,cab2,cab3:boolean;
  remk,cgrp,lport1,exfwk1,exftm1,cjswk1,cjssj1,etd1,alport1,aexfwk1,aexftm1,acjswk1,acjssj1,aetd1,sewbond,osp,dseq:string;
  rqty,rline,rqty1,t3ct,dtdiff:integer;
  bzny,yszq1,orddqy,psp1,psp2,mpur1,mpur2,yszq01,yszq0,sp1,tct1,tct2,ordday_r,psp1_r,psp2_r,mpur1_r,mpur2_r,frst_r,lstr_r,
  yszq_r,yszq1_r,yszq0_r,yszq01_r,sp1_r,tct1_r,tct2_r,ttime1,attime1:double;
  act,ab2,ab3,itdt,acdt:boolean;
begin
          if not query2.fieldbyname('remk').isnull then
          remk:=query2.fieldbyname('remk').value
          else remk:=' ';


          cust:=query2.fieldbyname('cust').value;
          if not query2.fieldbyname('fcust').isnull then
          fcust:=query2.fieldbyname('fcust').value
          else fcust:=' ';
          if not query2.fieldbyname('pgrp').isnull then
          pgrp:=query2.fieldbyname('pgrp').value
          else pgrp:=' ';
          if not query2.fieldbyname('addr').isnull then
          addr:=query2.fieldbyname('addr').value
          else addr:=' ';
          if not query2.fieldbyname('agt').isnull then
          agt:=query2.fieldbyname('agt').value
          else agt:=' ';
          lst2:=query2.fieldbyname('lst2').value;
          lst2d:=query2.fieldbyname('lst2d').value;
          tplant:=query2.fieldbyname('tplant').value;
          if not query2.fieldbyname('portl').isnull then
          portl:=query2.fieldbyname('portl').value
          else portl:=' ';
          if not query2.fieldbyname('frst').isnull then
          frst:=query2.fieldbyname('frst').value
          else frst:=0;
          if not query2.fieldbyname('lstr').isnull then
          lstr:=query2.fieldbyname('lstr').value
          else lstr:=0;
          if not query2.fieldbyname('iratio').isnull then
          iratio:=query2.fieldbyname('iratio').value
          else iratio:=' ';
          if not query2.fieldbyname('lport').isnull then
          lport:=query2.fieldbyname('lport').value
          else lport:=' ';
          if not query2.fieldbyname('lmth').isnull then
          lmth:=query2.fieldbyname('lmth').value
          else lmth:=' ';
          if not query2.fieldbyname('exfwk').isnull then
          exfwk:=query2.fieldbyname('exfwk').value
          else exfwk:=' ';
          if not query2.fieldbyname('exftm').isnull then
          exftm:=query2.fieldbyname('exftm').value
          else exftm:=' ';
          if not query2.fieldbyname('cjswk').isnull then
          cjswk:=query2.fieldbyname('cjswk').value
          else cjswk:=' ';
          if not query2.fieldbyname('cjssj').isnull then
          cjssj:=query2.fieldbyname('cjssj').value
          else cjssj:=' ';
          if not query2.fieldbyname('ttime').isnull then
          ttime:=query2.fieldbyname('ttime').value
          else ttime:=0;
          if not query2.fieldbyname('alport').isnull then
          alport:=query2.fieldbyname('alport').value
          else alport:=' ';
          if not query2.fieldbyname('aexfwk').isnull then
          aexfwk:=query2.fieldbyname('aexfwk').value
          else aexfwk:=' ';
          if not query2.fieldbyname('aexftm').isnull then
          aexftm:=query2.fieldbyname('aexftm').value
          else aexftm:=' ';
          if not query2.fieldbyname('acjswk').isnull then
          acjswk:=query2.fieldbyname('acjswk').value
          else acjswk:=' ';
          if not query2.fieldbyname('acjssj').isnull then
          acjssj:=query2.fieldbyname('acjssj').value
          else acjssj:=' ';
          if not query2.fieldbyname('attime').isnull then
          attime:=query2.fieldbyname('attime').value
          else attime:=0;
          if not query2.fieldbyname('sdue').isnull then
          sdue:=query2.fieldbyname('sdue').value
          else sdue:=' ';
          if not query2.fieldbyname('exfday').isnull then
          exfday:=query2.fieldbyname('exfday').value
          else exfday:=0;
          pmth:=query2.fieldbyname('pmth').value;
          if not query2.fieldbyname('bzjs').isnull then
          bzjs:=query2.fieldbyname('bzjs').value
          else bzjs:=12;
          if not query2.fieldbyname('itime').isnull then
          itime:=query2.fieldbyname('itime').value
          else itime:=0;
          if not query2.fieldbyname('etd').isnull then
          etd:=query2.fieldbyname('etd').value
          else etd:=' ';
          if not query2.fieldbyname('aetd').isnull then
          aetd:=query2.fieldbyname('aetd').value
          else aetd:=' ';
          if not query2.fieldbyname('grp').isnull then
          grp:=query2.fieldbyname('grp').value
          else grp:=' ';
          if not query2.fieldbyname('yszq').isnull then
          yszq:=query2.fieldbyname('yszq').value
          else yszq:=0;
          cact:=query2.fieldbyname('act').value;
          cab2:=query2.fieldbyname('ab2').value;
          cab3:=query2.fieldbyname('ab3').value;
        with query2 do begin
          append;
          fieldbyname('cust').value:=cust;
          fieldbyname('fcust').value:=fcust;
          fieldbyname('pgrp').value:=pgrp;
          fieldbyname('addr').value:=addr;
          fieldbyname('agt').value:=agt;
          fieldbyname('lst2').value:=lst2;
          fieldbyname('lst2d').value:=lst2d;
          fieldbyname('tplant').value:=tplant;
          fieldbyname('portl').value:=portl;
          fieldbyname('frst').value:=frst;
          fieldbyname('lstr').value:=lstr;
          fieldbyname('iratio').value:=iratio;
          fieldbyname('lport').value:=lport;
          fieldbyname('lmth').value:=lmth;
          fieldbyname('exfwk').value:=exfwk;
          fieldbyname('exftm').value:=exftm;
          fieldbyname('cjswk').value:=cjswk;
          fieldbyname('cjssj').value:=cjssj;
          fieldbyname('ttime').value:=ttime;
          fieldbyname('alport').value:=alport;
          fieldbyname('aexfwk').value:=aexfwk;
          fieldbyname('aexftm').value:=aexftm;
          fieldbyname('acjswk').value:=acjswk;
          fieldbyname('acjssj').value:=acjssj;
          fieldbyname('attime').value:=attime;
          fieldbyname('sdue').value:=sdue;
          fieldbyname('exfday').value:=exfday;
          fieldbyname('pmth').value:=pmth;
          fieldbyname('bzjs').value:=bzjs;
          fieldbyname('itime').value:=itime;
          fieldbyname('etd').value:=etd;
          fieldbyname('aetd').value:=aetd;
          fieldbyname('grp').value:=grp;
          fieldbyname('yszq').value:=yszq;
          fieldbyname('act').value:=cact;
          fieldbyname('ab2').value:=cab2;
          fieldbyname('ab3').value:=cab3;
          post;
        end;
end;

procedure Tfrmcustomer.BitBtn6Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='delete from cust_exfty where seq=:seq';
      params[0].asinteger:=query2.fieldbyname('seq').value;
      execute;
    end;
    query2.Delete;
  end;
end;

procedure Tfrmcustomer.ppReport4PreviewFormCreate(Sender: TObject);
begin
  ppReport4.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport4.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcustomer.ppReport5PreviewFormCreate(Sender: TObject);
begin
  ppReport5.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport5.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcustomer.BitBtn20Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='delete from cust_detail where seq=:seq';
      params[0].asinteger:=qry_details.fieldbyname('seq').value;
      execute;
    end;
    qry_details.Delete;
  end;
end;

procedure Tfrmcustomer.BitBtn2Click(Sender: TObject);
var
  tm:tdatetime;
  dt1,dt2:tdate;
  cust:string;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  withstyle:='0';
  try
    if DateEdit1.date>0 then dt1:=DateEdit1.date
    else dt1:=encodedate(2005,1,1);
    if DateEdit2.Date>0 then dt2:=DateEdit2.date
    else dt2:=encodedate(2020,12,31);
  if (combobox1.text>'') then begin
    if (dateedit1.Date>0) and (dateedit2.date>0) then begin
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure SP_GENTEMPPRJBD_RPT_STYLE_BYCUST(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        if combobox6.text<>'KBT' then
        params[2].asstring:=frmcustomer.combobox6.text
        else params[2].asstring:='KB';
        params[3].asstring:=frmcustomer.combobox1.text;
        execute;
      end;
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure sp_tempprjbd_style(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=frmcustomer.combobox1.text;
        if combobox6.text<>'KBT' then
        params[3].asstring:=frmcustomer.combobox6.text
        else params[3].asstring:='KB';
        execute;
      end;
      tqty:=0;
      if frmcuststyleshv1=nil then frmcuststyleshv1:=tfrmcuststyleshv1.create(nil);
      with frmcuststyleshv1.query10 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_tempprjbd_clr order by flag,seq';
        open;
      end;
      with frmcuststyleshv1.query11 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_2_1(:x1,:x2,:x3,:x4) order by cust,flag6,lst2,lst2d';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        if combobox6.text<>'KBT' then
        params[2].asstring:=frmcustomer.combobox6.text
        else params[2].asstring:='KB';
        params[3].asstring:=frmcustomer.combobox1.text;
        open;
      end;
      with frmcuststyleshv1.query14 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_4_1(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        if combobox6.text<>'KBT' then
        params[2].asstring:=frmcustomer.combobox6.text
        else params[2].asstring:='KB';
        params[3].asstring:=frmcustomer.combobox1.text;
        open;
      end;
      with frmcuststyleshv1.query12 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_3_1(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        if combobox6.text<>'KBT' then
        params[2].asstring:=frmcustomer.combobox6.text
        else params[2].asstring:='KB';
        params[3].asstring:=frmcustomer.combobox1.text;
        open;
      end;
      with frmcuststyleshv1.query13 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_1_01(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        if combobox6.text<>'KBT' then
        params[2].asstring:=frmcustomer.combobox6.text
        else params[2].asstring:='KB';
        params[3].asstring:=frmcustomer.combobox1.text;
        open;
      end;
      with frmcuststyleshv1.query7 do begin
        close;
        params.clear;
        {
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='select * from TEMP_PRJBD_RPT1 where cust=:x1';
        if frmcustomer.combobox6.text>'' then commandtext:=commandtext+' and tplant='''+frmcustomer.combobox6.text+''''
        else commandtext:=commandtext+' and tplant=''All''';
        commandtext:=commandtext+' order by cust,ptyp,lst2,lst2d,flag6';
        params[0].asstring:=frmcustomer.combobox1.text;
        }
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_0_1(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        if combobox6.text<>'KBT' then
        params[2].asstring:=frmcustomer.combobox6.text
        else params[2].asstring:='KB';
        params[3].asstring:=frmcustomer.combobox1.text;
        open;
        if not fieldbyname('cust').isnull then begin
          frmcuststyleshv1.pplabel180.Caption:=' / Product Category & Brand/Customer dependent ';
          frmcuststyleshv1.cust001.Caption:=frmcustomer.combobox1.text;
          frmcuststyleshv1.dt001.Caption:=frmcustomer.dateedit1.Text;
          frmcuststyleshv1.dt002.Caption:=frmcustomer.dateedit2.Text;
          if frmcustomer.combobox6.text>'' then
          frmcuststyleshv1.fty001.Caption:=frmcustomer.combobox6.text
          else frmcuststyleshv1.fty001.Caption:='All';
          frmcuststyleshv1.pplabel185.Caption:='Name';
          frmcuststyleshv1.pplabel175.Caption:='Version   3.1.1';
          frmcuststyleshv1.pplabel7.caption:='vs Line';
          frmcuststyleshv1.pplabel10.caption:='vs Line';
          frmcuststyleshv1.pplabel474.caption:='vs Line';
          frmcuststyleshv1.pplabel8.caption:='GSD';
          frmcuststyleshv1.pplabel11.caption:='GSD';
          frmcuststyleshv1.pplabel475.caption:='GSD';
          frmcuststyleshv1.pplabel78.caption:='vs Line';
          frmcuststyleshv1.pplabel81.caption:='vs Line';
          frmcuststyleshv1.pplabel111.caption:='vs Line';
          frmcuststyleshv1.pplabel79.caption:='GSD';
          frmcuststyleshv1.pplabel82.caption:='GSD';
          frmcuststyleshv1.pplabel110.caption:='GSD';
          frmcuststyleshv1.pplabel143.caption:='vs Line';
          frmcuststyleshv1.pplabel146.caption:='vs Line';
          frmcuststyleshv1.pplabel194.caption:='vs Line';
          frmcuststyleshv1.pplabel144.caption:='GSD';
          frmcuststyleshv1.pplabel147.caption:='GSD';
          frmcuststyleshv1.pplabel193.caption:='GSD';
          frmcuststyleshv1.pplabel232.caption:='vs Line';
          frmcuststyleshv1.pplabel235.caption:='vs Line';
          frmcuststyleshv1.pplabel265.caption:='vs Line';
          frmcuststyleshv1.pplabel233.caption:='GSD';
          frmcuststyleshv1.pplabel236.caption:='GSD';
          frmcuststyleshv1.pplabel264.caption:='GSD';
          frmcuststyleshv1.pplabel297.caption:='vs Line';
          frmcuststyleshv1.pplabel300.caption:='vs Line';
          frmcuststyleshv1.pplabel343.caption:='vs Line';
          frmcuststyleshv1.pplabel298.caption:='GSD';
          frmcuststyleshv1.pplabel301.caption:='GSD';
          frmcuststyleshv1.pplabel340.caption:='GSD';
          frmcuststyleshv1.ppReport6.Print;
        end;
      end;
      {
      with Query3 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        //commandtext:='execute procedure SP_GENTEMPPRJBD_RPT(:x1,:x2,:x3,:x4)';
        commandtext:='execute procedure SP_GENTEMPPRJBD_RPT_STYLE_BYCUST_1(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=combobox6.text;
        params[3].asstring:=combobox1.text;
        execute;
      end;
      with Query3 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure sp_tempprjbd(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=combobox1.text;
        params[3].asstring:=combobox6.text;
        execute;
      end;
      tqty:=0;
      with query10 do begin
        close;
        params.clear;
        commandtext:='select * from tbl_tempprjbd_clr order by flag,seq';
        open;
      end;
      with query11 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_2(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=combobox6.text;
        params[3].asstring:=combobox1.text;
        open;
      end;
      with query14 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_4(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=combobox6.text;
        params[3].asstring:=combobox1.text;
        open;
      end;
      with query12 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_3(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=combobox6.text;
        params[3].asstring:=combobox1.text;
        open;
      end;
      with query13 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_1(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        params[2].asstring:=combobox6.text;
        params[3].asstring:=combobox1.text;
        open;
      end;
      with query7 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='select * from TEMP_PRJBD_RPT1 where cust=:x1';
        if combobox6.text>'' then commandtext:=commandtext+' and tplant='''+combobox6.text+''''
        else commandtext:=commandtext+' and tplant=''All''';
        commandtext:=commandtext+' order by cust,ptyp,lst2,flag6';
        params[0].asstring:=combobox1.text;
        open;
        if not fieldbyname('cust').isnull then begin
          pplabel180.Caption:=' / Product Category & Brand dependent ';
          cust001.Caption:=combobox1.text;
          dt001.Caption:=dateedit1.Text;
          dt002.Caption:=dateedit2.Text;
          if combobox6.text>'' then
          fty001.Caption:=combobox6.text
          else fty001.Caption:='All';
          pplabel185.Caption:='Name';
          ppReport6.Print;
        end;
      end;
      }
    end;
  end else begin
    //{
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='Execute PROCEDURE SP_GENTEMPPRJBD_SUMMARY(:x1,:x2,:x3)';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
      if combobox6.text<>'KBT' then
      params[2].asstring:=combobox6.text
      else params[2].asstring:='KB';
      execute;
    end;
    //}
    with query10 do begin
      close;
      params.clear;
      commandtext:='select * from temp_prjbd_summary a where exists (select cust from temp_prjbd_summary b where tplant=''All'' and a.cust=b.cust and a.flag6=b.flag6)';
      if combobox6.text>'' then begin
        if combobox6.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox6.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      commandtext:=commandtext+' order by flag6,cusn40,tplant desc';
      open;
    end;
    with query7 do begin
      close;
      params.clear;
      commandtext:='select * from temp_prjbd_summary where tplant<>''All''';
      if combobox6.text>'' then begin
        if combobox6.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox6.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      commandtext:=commandtext+' order by flag6,cusn40,tplant desc';
      open;
      if not fieldbyname('cusn40').isnull then begin
        if combobox6.text>'' then fty008.Caption:=combobox6.text else fty008.Caption:='All';
        if combobox6.Text>'' then begin
          ppGroupFooterBand27.Visible:=true;
          ppSummaryBand10.Visible:=false;
        end else begin
          ppGroupFooterBand27.Visible:=false;
          ppSummaryBand10.Visible:=true;
          fty018.Caption:='All';
          dt038.Caption:=formatdatetime('yyyy-MM-dd',dateedit1.date);
          dt048.Caption:=formatdatetime('yyyy-MM-dd',dateedit2.date);
        end;
        //ppsummaryband10.Visible:=false;
        dt018.Caption:=formatdatetime('yyyy-MM-dd',dateedit1.date);
        dt028.Caption:=formatdatetime('yyyy-MM-dd',dateedit2.date);
        ppReport8.Print;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmcustomer.ppReport6PreviewFormCreate(Sender: TObject);
begin
  ppReport6.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport6.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcustomer.BitBtn7Click(Sender: TObject);
begin
  if frmshv_cust=nil then frmshv_cust:=tfrmshv_cust.create(nil);
  with frmshv_cust.Query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='select * from cust_exfty_shv where cust=:x1 and lst2=:x2 and tplant=:x3 and lst2d=:x4';
    params[0].asstring:=query2.fieldbyname('cust').value;
    params[1].asstring:=query2.fieldbyname('lst2').value;
    params[2].asstring:=query2.fieldbyname('tplant').value;
    params[3].asstring:=query2.fieldbyname('lst2d').value;
    open;
  end;
  frmshv_cust.show;
end;

procedure Tfrmcustomer.FormCreate(Sender: TObject);
begin
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
          params[2].AsString:='Customer Profile';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
        with dataset2 do begin
          close;
          sql.text:='insert into [Sys.Authority].dbo.sysuseinfo(menuid,userid,starttime) values(:x1,:x2,:x3)';
          parameters[0].Value:='LWPM - Customer Profile';
          parameters[1].value:=frmmain.combobox1.text;
          parameters[2].Value:=now;
          execsql;
        end;
end;

procedure Tfrmcustomer.FormDestroy(Sender: TObject);
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

procedure Tfrmcustomer.Query2AfterOpen(DataSet: TDataSet);
begin
  query2.fieldbyname('ordday').OnChange:=querypspchange;
  query2.fieldbyname('psp1').OnChange:=querypspchange;
  query2.fieldbyname('psp2').OnChange:=querypspchange;
  query2.fieldbyname('frst').OnChange:=querypspchange;
  query2.fieldbyname('yszq1').OnChange:=querypspchange;
  query2.fieldbyname('yszq01').OnChange:=querypspchange;
  query2.fieldbyname('ab2').onchange:=querypspchange;
  query2.fieldbyname('ab3').onchange:=querypspchange;
  query2.fieldbyname('ordday_r').OnChange:=querypspchange;
  query2.fieldbyname('psp1_r').OnChange:=querypspchange;
  query2.fieldbyname('psp2_r').OnChange:=querypspchange;
  query2.fieldbyname('frst_r').OnChange:=querypspchange;
  query2.fieldbyname('yszq1_r').OnChange:=querypspchange;
  query2.fieldbyname('yszq01_r').OnChange:=querypspchange;
end;

procedure Tfrmcustomer.querypspchange(Sender: TField);
var
  ordday,psp1,psp2,mpur1,mpur2,frst,yszq1,yszq01:double;
  ordday_r,psp1_r,psp2_r,mpur1_r,mpur2_r,frst_r,yszq1_r,yszq01_r:double;
begin
  if not query2.fieldbyname('ordday').isnull then
  ordday:=query2.fieldbyname('ordday').value else ordday:=0;
  if not query2.fieldbyname('psp1').isnull then
  psp1:=query2.fieldbyname('psp1').value else psp1:=0;
  if not query2.fieldbyname('psp2').isnull then
  psp2:=query2.fieldbyname('psp2').value else psp2:=0;
  if not query2.fieldbyname('mpur1').isnull then
  mpur1:=query2.fieldbyname('mpur1').value else mpur1:=0;
  if not query2.fieldbyname('mpur2').isnull then
  mpur2:=query2.fieldbyname('mpur2').value else mpur2:=0;
  if not query2.fieldbyname('frst').isnull then
  frst:=query2.fieldbyname('frst').value else frst:=0;
  if not query2.fieldbyname('yszq1').isnull then
  yszq1:=query2.fieldbyname('yszq1').value else yszq1:=0;
  if not query2.fieldbyname('yszq01').isnull then
  yszq01:=query2.fieldbyname('yszq01').value else yszq01:=0;
  if not query2.fieldbyname('ordday_r').isnull then
  ordday_r:=query2.fieldbyname('ordday_r').value else ordday_r:=0;
  if not query2.fieldbyname('psp1_r').isnull then
  psp1_r:=query2.fieldbyname('psp1_r').value else psp1_r:=0;
  if not query2.fieldbyname('psp2_r').isnull then
  psp2_r:=query2.fieldbyname('psp2_r').value else psp2_r:=0;
  if not query2.fieldbyname('mpur1_r').isnull then
  mpur1_r:=query2.fieldbyname('mpur1_r').value else mpur1_r:=0;
  if not query2.fieldbyname('mpur2_r').isnull then
  mpur2_r:=query2.fieldbyname('mpur2_r').value else mpur2_r:=0;
  if not query2.fieldbyname('frst_r').isnull then
  frst_r:=query2.fieldbyname('frst_r').value else frst_r:=0;
  if not query2.fieldbyname('yszq1_r').isnull then
  yszq1_r:=query2.fieldbyname('yszq1_r').value else yszq1_r:=0;
  if not query2.fieldbyname('yszq01_r').isnull then
  yszq01_r:=query2.fieldbyname('yszq01_r').value else yszq01_r:=0;
  if query2.fieldbyname('ab3').value=true then begin
    if query2.fieldbyname('ab2').value=false then begin
      psp1:=mpur1;
      psp2:=mpur2;
      psp1_r:=mpur1_r;
      psp2_r:=mpur2_r;
    end;
  end;
  query2.fieldbyname('tct1').value:=ordday+psp1+frst+yszq1;
  query2.fieldbyname('tct2').value:=ordday+psp2+frst+yszq01;
  query2.fieldbyname('tct1_r').value:=ordday_r+psp1_r+frst_r+yszq1_r;
  query2.fieldbyname('tct2_r').value:=ordday_r+psp2_r+frst_r+yszq01_r;
end;

procedure Tfrmcustomer.ppReport7PreviewFormCreate(Sender: TObject);
begin
  ppReport7.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport7.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcustomer.previewformat1;
begin
    cust03.Caption:=combobox2.text;
    if combobox3.text<>'KBT' then tplant01.Caption:=combobox3.text else tplant01.caption:='KB';
    team01.Caption:=combobox4.Text;
    if xh1.ItemIndex=0 then ppLabel13.Caption:='Customer Profile - Cycle Time (LCL)  - All'
    else if xh1.ItemIndex=1 then ppLabel13.Caption:='Customer Profile - Cycle Time (LCL)  - Active'
    else if xh1.ItemIndex=2 then ppLabel13.Caption:='Customer Profile - Cycle Time (LCL)  - Inactive';
    ppReport2.Print;
end;

procedure Tfrmcustomer.previewformat2(Const str: string);
begin
  //showmessage('0');
  with query10 do begin
    close;
    params.clear;
    if xh1.ItemIndex=0 then
    commandtext:='select distinct a.grp as team,b.* from cust_exfty a,cust_marks b where a.cust=b.cust'
    else if xh1.ItemIndex=1 then
    commandtext:='select distinct a.grp as team,b.* from cust_exfty a,cust_marks b where a.cust=b.cust and a.act=1'
    else if xh1.ItemIndex=2 then
    commandtext:='select distinct a.grp as team,b.* from cust_exfty a,cust_marks b where a.cust=b.cust and a.act=0';
    if combobox2.text>'' then commandtext:=commandtext+' and a.cust='''+combobox2.text+'''';
    if combobox3.text>'' then begin
      if combobox3.text<>'KBT' then
      commandtext:=commandtext+' and a.tplant='''+combobox3.text+''''
      else commandtext:=commandtext+' and a.tplant=''KB''';
    end;
    if combobox4.text>'' then commandtext:=commandtext+' and a.grp='''+combobox4.text+'''';
    if combobox5.text>'' then commandtext:=commandtext+' and a.pgrp='''+combobox5.text+'''';
    open;
  end;
  //showmessage('1');
    //cust003.Caption:=combobox2.text;
    //tplant003.Caption:=combobox3.text;
    //team003.Caption:=combobox4.Text;
    //if combobox2.text>'' then begin
    //  if not query2.fieldbyname('fcust').isnull then
    //  fcust001.Caption:=query2.fieldbyname('fcust').value
    //  else fcust001.Caption:='';
    //end else fcust001.Caption:='';
    if xh1.ItemIndex=0 then title001.Caption:='- Division '+query2.fieldbyname('grp').value+' / Status: All'
    else if xh1.ItemIndex=1 then title001.Caption:='- Division '+query2.fieldbyname('grp').value+' / Status: Active'
    else if xh1.ItemIndex=2 then title001.Caption:='- Division '+query2.fieldbyname('grp').value+' / Status: Inactive';
    //if str='1' then begin
      {
      if xh1.ItemIndex=0 then ppLabel198.Caption:='Customer Profile - Total Cycle time of Order Processing and Operation Control - All (initial)'
      else if xh1.ItemIndex=1 then ppLabel198.Caption:='Customer Profile - Total Cycle time of Order Processing and Operation Control - Active (initial)'
      else if xh1.ItemIndex=2 then ppLabel198.Caption:='Customer Profile - Total Cycle time of Order Processing and Operation Control - Inactive (initial)';
      pptext1.DataField:='ordday';
      pptext2.DataField:='psp1';
      pptext3.DataField:='psp2';
      pptext4.DataField:='mpur1';
      pptext5.DataField:='mpur2';
      pptext6.DataField:='frst';
      pptext7.DataField:='lstr';
      pptext8.DataField:='yszq1';
      pptext9.DataField:='yszq01';
      pptext10.DataField:='yszq';
      pptext11.DataField:='yszq0';
      pptext12.DataField:='sp1';
      pptext13.DataField:='tct1';
      pptext14.DataField:='tct2';
      pptext15.DataField:='rqty';
      }
    {
    end else if str='2' then begin
      if xh1.ItemIndex=0 then ppLabel198.Caption:='Customer Profile - Total Cycle time of Order Processing and Operation Control - All (flow/repeat)'
      else if xh1.ItemIndex=1 then ppLabel198.Caption:='Customer Profile - Total Cycle time of Order Processing and Operation Control - Active (flow/repeat)'
      else if xh1.ItemIndex=2 then ppLabel198.Caption:='Customer Profile - Total Cycle time of Order Processing and Operation Control - Inactive (flow/repeat)';
      pptext1.DataField:='ordday_r';
      pptext2.DataField:='psp1_r';
      pptext3.DataField:='psp2_r';
      pptext4.DataField:='mpur1_r';
      pptext5.DataField:='mpur2_r';
      pptext6.DataField:='frst_r';
      pptext7.DataField:='lstr_r';
      pptext8.DataField:='yszq1_r';
      pptext9.DataField:='yszq01_r';
      pptext10.DataField:='yszq_r';
      pptext11.DataField:='yszq0_r';
      pptext12.DataField:='sp1_r';
      pptext13.DataField:='tct1_r';
      pptext14.DataField:='tct2_r';
      pptext15.DataField:='rqty_r';
    end else if str='3' then begin
    end;
    }
  //showmessage('2');
    if combobox7.Text>'' then begin
      cs001.Visible:=true;
      cs002.Visible:=true;
      cs003.Visible:=true;
      cs004.Visible:=true;
      cs005.Visible:=true;
    end else begin
      cs001.Visible:=false;
      cs002.Visible:=false;
      cs003.Visible:=false;
      cs004.Visible:=false;
      cs005.Visible:=false;
    end;
  //showmessage('3');
    ppReport7.Print;
end;

procedure Tfrmcustomer.qry_detailsAfterPost(DataSet: TDataSet);
var
  str1:string;
begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='select seq from cust_detail where seq=:seq';
      params[0].asinteger:=qry_details.fieldbyname('seq').value;
      open;
      if not fieldbyname('seq').isnull then begin
        str1:='update cust_detail set ';
        if not qry_details.fieldbyname('grp').isnull then
        str1:=str1+'grp='''+qry_details.fieldbyname('grp').value+''','
        else str1:=str1+'grp='''',';
        if not qry_details.fieldbyname('sales').isnull then
        str1:=str1+'sales='''+qry_details.fieldbyname('sales').value+''','
        else str1:=str1+'sales='''',';
        if not qry_details.fieldbyname('pgrp').isnull then
        str1:=str1+'pgrp='''+qry_details.fieldbyname('pgrp').value+''','
        else str1:=str1+'pgrp='''',';
        if not qry_details.fieldbyname('fcust').isnull then
        str1:=str1+'fcust='''+qry_details.fieldbyname('fcust').value+''','
        else str1:=str1+'fcust='''',';
        if not qry_details.fieldbyname('agt').isnull then
        str1:=str1+'agt='''+qry_details.fieldbyname('agt').value+''','
        else str1:=str1+'agt='''',';
        if not qry_details.fieldbyname('addr').isnull then
        str1:=str1+'addr='''+qry_details.fieldbyname('addr').value+''','
        else str1:=str1+'addr='''',';
        if not qry_details.fieldbyname('cont1').isnull then
        str1:=str1+'cont1='''+qry_details.fieldbyname('cont1').value+''','
        else str1:=str1+'cont1='''',';
        if not qry_details.fieldbyname('cont2').isnull then
        str1:=str1+'cont2='''+qry_details.fieldbyname('cont2').value+''','
        else str1:=str1+'cont2='''',';
        if not qry_details.fieldbyname('cont3').isnull then
        str1:=str1+'cont3='''+qry_details.fieldbyname('cont3').value+''','
        else str1:=str1+'cont3='''',';
        if not qry_details.fieldbyname('addr1').isnull then
        str1:=str1+'addr1='''+qry_details.fieldbyname('addr1').value+''','
        else str1:=str1+'addr1='''',';
        if not qry_details.fieldbyname('addr2').isnull then
        str1:=str1+'addr2='''+qry_details.fieldbyname('addr2').value+''','
        else str1:=str1+'addr2='''',';
        if not qry_details.fieldbyname('cell').isnull then
        str1:=str1+'cell='''+qry_details.fieldbyname('cell').value+''','
        else str1:=str1+'cell='''',';
        if not qry_details.fieldbyname('tel1').isnull then
        str1:=str1+'tel1='''+qry_details.fieldbyname('tel1').value+''','
        else str1:=str1+'tel1='''',';
        if not qry_details.fieldbyname('tel2').isnull then
        str1:=str1+'tel2='''+qry_details.fieldbyname('tel2').value+''','
        else str1:=str1+'tel2='''',';
        if not qry_details.fieldbyname('fax').isnull then
        str1:=str1+'fax='''+qry_details.fieldbyname('fax').value+''','
        else str1:=str1+'fax='''',';
        if not qry_details.fieldbyname('aetd').isnull then
        str1:=str1+'aetd='''+qry_details.fieldbyname('aetd').value+''','
        else str1:=str1+'aetd='''',';
        if not qry_details.fieldbyname('etd').isnull then
        str1:=str1+'etd='''+qry_details.fieldbyname('etd').value+''','
        else str1:=str1+'etd='''',';
        if not qry_details.fieldbyname('crtdt').isnull then
        str1:=str1+'crtdt='''+formatdatetime('yyyy-MM-dd',qry_details.fieldbyname('crtdt').value)+''' '
        else str1:=str1+'crtdt=null ';
        str1:=str1+'where seq='+qry_details.fieldbyname('seq').asstring;
        if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
      end else begin
        with query3 do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          params.createparam(ftstring,'grp',ptinput);
          params.createparam(ftstring,'sales',ptinput);
          params.createparam(ftstring,'pgrp',ptinput);
          params.createparam(ftstring,'fcust',ptinput);
          params.createparam(ftstring,'agt',ptinput);
          params.createparam(ftstring,'addr',ptinput);
          params.createparam(ftstring,'cont1',ptinput);
          params.createparam(ftstring,'cont2',ptinput);
          params.createparam(ftstring,'cont3',ptinput);
          params.createparam(ftstring,'addr1',ptinput);
          params.createparam(ftstring,'addr2',ptinput);
          params.createparam(ftstring,'cell',ptinput);
          params.createparam(ftstring,'tel1',ptinput);
          params.createparam(ftstring,'tel2',ptinput);
          params.createparam(ftstring,'fax',ptinput);
          params.createparam(ftstring,'aetd',ptinput);
          params.createparam(ftstring,'etd',ptinput);
          params.createparam(ftdate,'crtdt',ptinput);
          commandtext:='insert into cust_detail(seq,grp,sales,pgrp,fcust,agt,addr,cont1,cont2,cont3,addr1,addr2,cell,tel1,tel2,fax,aetd,etd,crtdt) '
                      +'values(:seq,:grp,:sales,:pgrp,:fcust,:agt,:addr,:cont1,:cont2,:cont3,:addr1,:addr2,:cell,:tel1,:tel2,:fax,:aetd,:etd,:crtdt)';
          params[0].asinteger:=qry_details.fieldbyname('seq').value;
          if not qry_details.fieldbyname('grp').isnull then
          params[1].asstring:=qry_details.fieldbyname('grp').value
          else params[1].asstring:=' ';
          if not qry_details.fieldbyname('sales').isnull then
          params[2].asstring:=qry_details.fieldbyname('sales').value
          else params[2].asstring:=' ';
          if not qry_details.fieldbyname('pgrp').isnull then
          params[3].asstring:=qry_details.fieldbyname('pgrp').value
          else params[3].asstring:=' ';
          if not qry_details.fieldbyname('fcust').isnull then
          params[4].asstring:=qry_details.fieldbyname('fcust').value
          else params[4].asstring:=' ';
          if not qry_details.fieldbyname('agt').isnull then
          params[5].asstring:=qry_details.fieldbyname('agt').value
          else params[5].asstring:=' ';
          if not qry_details.fieldbyname('addr').isnull then
          params[6].asstring:=qry_details.fieldbyname('addr').value
          else params[6].asstring:=' ';
          if not qry_details.fieldbyname('cont1').isnull then
          params[7].asstring:=qry_details.fieldbyname('cont1').value
          else params[7].asstring:=' ';
          if not qry_details.fieldbyname('cont2').isnull then
          params[8].asstring:=qry_details.fieldbyname('cont2').value
          else params[8].asstring:=' ';
          if not qry_details.fieldbyname('cont3').isnull then
          params[9].asstring:=qry_details.fieldbyname('cont3').value
          else params[9].asstring:=' ';
          if not qry_details.fieldbyname('addr1').isnull then
          params[10].asstring:=qry_details.fieldbyname('addr1').value
          else params[10].asstring:=' ';
          if not qry_details.fieldbyname('addr2').isnull then
          params[11].asstring:=qry_details.fieldbyname('addr2').value
          else params[11].asstring:=' ';
          if not qry_details.fieldbyname('cell').isnull then
          params[12].asstring:=qry_details.fieldbyname('cell').value
          else params[12].asstring:=' ';
          if not qry_details.fieldbyname('tel1').isnull then
          params[13].asstring:=qry_details.fieldbyname('tel1').value
          else params[13].asstring:=' ';
          if not qry_details.fieldbyname('tel2').isnull then
          params[14].asstring:=qry_details.fieldbyname('tel2').value
          else params[14].asstring:=' ';
          if not qry_details.fieldbyname('fax').isnull then
          params[15].asstring:=qry_details.fieldbyname('fax').value
          else params[15].asstring:=' ';
          if not qry_details.fieldbyname('aetd').isnull then
          params[16].asstring:=qry_details.fieldbyname('aetd').value
          else params[16].asstring:=' ';
          if not qry_details.fieldbyname('etd').isnull then
          params[17].asstring:=qry_details.fieldbyname('etd').value
          else params[17].asstring:=' ';
          if not qry_details.fieldbyname('crtdt').isnull then
          params[18].asdate:=qry_details.fieldbyname('crtdt').value;
          execute;
        end;
      end;
    end;
  //
end;

procedure Tfrmcustomer.qry_detailsNewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with query3 do begin
    close;
    params.clear;
    commandtext:='select max(seq) as q from cust_detail';
    open;
    if not fieldbyname('q').isnull then seq:=fieldbyname('q').value+1
    else seq:=1;
  end;
  qry_details.fieldbyname('seq').value:=seq;
end;

procedure Tfrmcustomer.ppDetailBand5BeforePrint(Sender: TObject);
var
  l01,l02,l03,l04,l05,l06,l07,l08,l09,l10,l12,l13,l21,l11,x11:integer;
begin
  //
  with query8 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    commandtext:='select max(q01) as x1,max(q02) as x2,max(q03) as x3,max(q04) as x4,max(q05) as x5,max(q06) as x6,max(q07) as x7,'
                +'max(q08) as x8,max(q09) as x9,max(q10) as x10,max(q11) as x11,max(q12) as x12,max(q21) as x21 from cust_sku02 where cust=:x1 '
                +'and ptyp=:x2 and lst2=:x3 and flag6=:x4 and lst2d=:x5 and seq=:x6';
    params[0].asstring:=query4.fieldbyname('cust').value;
    params[1].asstring:=query4.fieldbyname('ptyp').value;
    params[2].asstring:=query4.fieldbyname('lst2').value;
    params[3].asstring:=query4.fieldbyname('flag6').value;
    params[4].asstring:=query4.fieldbyname('lst2d').value;
    params[5].asinteger:=query4.fieldbyname('seq').value;
    open;
    l01:=fieldbyname('x1').value;
    l02:=fieldbyname('x2').value;
    l03:=fieldbyname('x3').value;
    l04:=fieldbyname('x4').value;
    l05:=fieldbyname('x5').value;
    l06:=fieldbyname('x6').value;
    l07:=fieldbyname('x7').value;
    l08:=fieldbyname('x8').value;
    l09:=fieldbyname('x9').value;
    l10:=fieldbyname('x10').value;
    l12:=fieldbyname('x11').value;
    l13:=fieldbyname('x12').value;
    l21:=fieldbyname('x21').value;
  end;
  l11:=l01; x11:=1;
  if l11<=l02 then begin
    l11:=l02; x11:=2;
  end;
  if l11<=l03 then begin
    l11:=l03; x11:=3;
  end;
  if l11<=l04 then begin
    l11:=l04; x11:=4;
  end;
  if l11<=l05 then begin
    l11:=l05; x11:=5;
  end;
  if l11<=l06 then begin
    l11:=l06; x11:=6;
  end;
  if l11<=l07 then begin
    l11:=l07; x11:=7;
  end;
  if l11<=l08 then begin
    l11:=l08; x11:=8;
  end;
  if l11<=l09 then begin
    l11:=l09; x11:=9;
  end;
  if l11<=l10 then begin
    l11:=l10; x11:=10;
  end;
  if l11<=l12 then begin
    l11:=l12; x11:=11;
  end;
  if l11<=l13 then begin
    l11:=l13; x11:=12;
  end;
  if query4.fieldbyname('q01').value=l11 then p001.Font.Color:=clRed
  else p001.Font.Color:=clBlack;
  if query4.fieldbyname('q02').value=l11 then p002.Font.Color:=clRed
  else p002.Font.Color:=clBlack;
  if query4.fieldbyname('q03').value=l11 then p003.Font.Color:=clRed
  else p003.Font.Color:=clBlack;
  if query4.fieldbyname('q04').value=l11 then p004.Font.Color:=clRed
  else p004.Font.Color:=clBlack;
  if query4.fieldbyname('q05').value=l11 then p005.Font.Color:=clRed
  else p005.Font.Color:=clBlack;
  if query4.fieldbyname('q06').value=l11 then p006.Font.Color:=clRed
  else p006.Font.Color:=clBlack;
  if query4.fieldbyname('q07').value=l11 then p007.Font.Color:=clRed
  else p007.Font.Color:=clBlack;
  if query4.fieldbyname('q08').value=l11 then p008.Font.Color:=clRed
  else p008.Font.Color:=clBlack;
  if query4.fieldbyname('q09').value=l11 then p009.Font.Color:=clRed
  else p009.Font.Color:=clBlack;
  if query4.fieldbyname('q10').value=l11 then p010.Font.Color:=clRed
  else p010.Font.Color:=clBlack;
  {
  if query4.fieldbyname('q11').value=l11 then p011.Font.Color:=clRed
  else p011.Font.Color:=clBlack;
  if query4.fieldbyname('q12').value=l11 then p012.Font.Color:=clRed
  else p012.Font.Color:=clBlack;
  }
  if query4.fieldbyname('q21').value=l21 then p021.Font.Color:=clRed
  else p021.Font.Color:=clBlack;
end;

procedure Tfrmcustomer.ppDetailBand7BeforePrint(Sender: TObject);
var
  yszq,yszq1,yszq0,yszq01:double;
begin
  {
  if pptext8.DataField='yszq1' then begin
    if not query2.fieldbyname('yszq').IsNull then yszq:=query2.fieldbyname('yszq').value else yszq:=0;
    if not query2.fieldbyname('yszq1').IsNull then yszq1:=query2.fieldbyname('yszq1').value else yszq1:=0;
    if not query2.fieldbyname('yszq0').IsNull then yszq0:=query2.fieldbyname('yszq0').value else yszq0:=0;
    if not query2.fieldbyname('yszq01').IsNull then yszq01:=query2.fieldbyname('yszq01').value else yszq01:=0;
  end else begin
    if not query2.fieldbyname('yszq_r').IsNull then yszq:=query2.fieldbyname('yszq_r').value else yszq:=0;
    if not query2.fieldbyname('yszq1_r').IsNull then yszq1:=query2.fieldbyname('yszq1_r').value else yszq1:=0;
    if not query2.fieldbyname('yszq0_r').IsNull then yszq0:=query2.fieldbyname('yszq0_r').value else yszq0:=0;
    if not query2.fieldbyname('yszq01_r').IsNull then yszq01:=query2.fieldbyname('yszq01_r').value else yszq01:=0;
  end;
  x001.Caption:=formatfloat('0.0',yszq1-yszq);
  x002.Caption:=formatfloat('0.0',yszq01-yszq0);
  }
end;

procedure Tfrmcustomer.ppGroupHeaderBand16BeforePrint(Sender: TObject);
var
  rs,cs:string;
begin
  if pos('/',query4.fieldbyname('s01').value)>0 then begin
    rs:=copy(query4.fieldbyname('s01').value,1,pos('/',query4.fieldbyname('s01').value)-1);
    rs:=copy('00'+rs,length('00'+rs)-2,3);
  end else if pos('-',query4.fieldbyname('s01').value)>0 then begin
    rs:=copy(query4.fieldbyname('s01').value,1,pos('-',query4.fieldbyname('s01').value)-1);
    rs:=copy('00'+rs,length('00'+rs)-2,3);
  //end else if (pos('T',query4.fieldbyname('s01').value)>0) or (pos('SIZE',query4.fieldbyname('s01').value)>0) then begin
  //  rs:=query4.fieldbyname('s01').value;
  end else rs:=copy('00'+query4.fieldbyname('s01').value,length('00'+query4.fieldbyname('s01').value)-2,3);
  cs:=copy(query4.fieldbyname('cust').value,1,4);
  if (cs='SARA') or (cs='CALD') or (cs='CANA') or (cs='CMYR') or (cs='MAST') //or (cs='DAXO')
  or (cs='SALL') or (cs='EMPR') or (cs='FIGL') or (cs='FOSC') or (cs='LAUS') or (cs='LOVE')
  or (cs='MEXX') or (cs='OCTA') or (cs='PASA') or (cs='PLAY') or (cs='TAIL') or (cs='WARN')
  or (cs='TAMA')
  then begin
    if query4.fieldbyname('seq').value=0 then begin
      if (rs>='004') and (rs<='026') and (rs<>'00S') and (rs<>'00M') and (rs<>'00L') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Size (Bras as number code system)'
        else xtitle001.Caption:='Size (Underwear as number code system)';
      end else if (rs>='028') and (rs<'060') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Size (Bras as British system)'
        else xtitle001.Caption:='Size (Underwear as British system)';
      end else if (rs>='060') and (rs<'150') and (rs<>'0XS') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Size (Bras as metric system)'
        else xtitle001.Caption:='Size (Underwear as metric system)';
      end;
    end else if query4.fieldbyname('seq').value=1 then begin
      if (rs>='004') and (rs<='026') and (rs<>'00S') and (rs<>'00M') and (rs<>'00L') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Size (Bras as number code system)'
        else xtitle001.Caption:='Size (Underwear as number code system)';
      end else if (rs>='028') and (rs<'060') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Size (Bras as British system)'
        else xtitle001.Caption:='Size (Underwear as British system)';
      end else if (rs>='060') and (rs<'150') and (rs<>'0XS') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Size (Bras as metric system)'
        else xtitle001.Caption:='Size (Underwear as metric system)';
      end else if (rs>='00L') and (rs<='2XL') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Size (Bras as SML code system)'
        else xtitle001.Caption:='Size (Underwear as SML code system)';
      end;
    end else if query4.fieldbyname('seq').value=7 then begin
      if copy(query4.fieldbyname('s01').value,1,2)<'60' then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Size (Bras as British system)'
        else xtitle001.Caption:='Size (Underwear as British system)';
      end else begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Size (Bras as metric system)'
        else xtitle001.Caption:='Size (Underwear as metric system)';
      end;
    end else if query4.fieldbyname('seq').value=8 then begin
      if copy(query4.fieldbyname('flag6').value,1,1)='B' then
      xtitle001.Caption:='Size (Bras as SML code system)'
      else xtitle001.Caption:='Size (Underwear as SML code system)';
    end else if query4.fieldbyname('seq').value=9 then begin
      if (rs>='004') and (rs<='056') and (rs<>'00S') and (rs<>'00M') and (rs<>'00L') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Dual Size (Bras as British system)'
        else xtitle001.Caption:='Dual Size (Underwear as British system)';
      end else begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Dual Size (Bras as SML code system)'
        else xtitle001.Caption:='Dual Size (Underwear as SML code system)';
        //xtitle001.Caption:='Size (Bras as SML (jump size) code system)'
        //else xtitle001.Caption:='Size (Underwear as SML (jump size) code system)';
      end;
    end;
  end else if (query4.fieldbyname('cust').value='ETAA1') or (query4.fieldbyname('cust').value='ETAM1')
  or (query4.fieldbyname('cust').value='LARD1') or (query4.fieldbyname('cust').value='MONO1')
  or (query4.fieldbyname('cust').value='DAXO1') or (query4.fieldbyname('cust').value='CANN1')
  or (query4.fieldbyname('cust').value='PPTT1') or (query4.fieldbyname('cust').value='TAIL1') then begin
    if query4.fieldbyname('seq').value=0 then begin
      if (rs>='004') and (rs<='026') and (rs<>'00S') and (rs<>'00M') and (rs<>'00L') then begin
        xtitle001.Caption:='Size (Underwear as number code system)';
      end else if (rs>='028') and (rs<'060') then begin
        xtitle001.Caption:='Size (Underwear as British system)';
      end else if (rs>='060') and (rs<'150') and (rs<>'0XS') then begin
        xtitle001.Caption:='Size (Underwear as metric system)';
      end else if (rs>='00L') and (rs<='2XL') then begin
        xtitle001.Caption:='Size (Underwear as SML code system)';
      end;
    end else if query4.fieldbyname('seq').value=1 then begin
      if (rs>='004') and (rs<='026') and (rs<>'00S') and (rs<>'00M') and (rs<>'00L') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Size (Bras as number code system)'
        else xtitle001.Caption:='Size (Underwear as number code system)';
      end else if (rs>='028') and (rs<'060') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Size (Bras as British system)'
        else xtitle001.Caption:='Size (Underwear as British system)';
      end else if (rs>='060') and (rs<'150') and (rs<>'0XS') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Size (Bras as metric system)'
        else xtitle001.Caption:='Size (Underwear as metric system)';
      end else if (rs>='00L') and (rs<='2XL') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Size (Bras as SML code system)'
        else xtitle001.Caption:='Size (Underwear as SML code system)';
      end;
    end else if query4.fieldbyname('seq').value=7 then begin
      if copy(query4.fieldbyname('s01').value,1,2)<'60' then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Size (Bras as British system)'
        else xtitle001.Caption:='Size (Underwear as British system)';
      end else begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Size (Bras as metric system)'
        else xtitle001.Caption:='Size (Underwear as metric system)';
      end;
    end else if query4.fieldbyname('seq').value=8 then begin
      if copy(query4.fieldbyname('flag6').value,1,1)='B' then
      xtitle001.Caption:='Size (Bras as SML code system)'
      else xtitle001.Caption:='Size (Underwear as SML code system)';
    end else if query4.fieldbyname('seq').value=9 then begin
      if (rs>='004') and (rs<='056') and (rs<>'00S') and (rs<>'00M') and (rs<>'00L') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Dual Size (Bras as British system)'
        else xtitle001.Caption:='Dual Size (Underwear as British system)';
      end else begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then
        xtitle001.Caption:='Dual Size (Bras as SML code system)'
        else xtitle001.Caption:='Dual Size (Underwear as SML code system)';
      end;
    end;
  end;
end;

procedure Tfrmcustomer.ppGroupHeaderBand17BeforePrint(Sender: TObject);
var
  rs:string;
begin
  if pos('/',query4.fieldbyname('s01').value)>0 then begin
    rs:=copy(query4.fieldbyname('s01').value,1,pos('/',query4.fieldbyname('s01').value)-1);
    rs:=copy('00'+rs,length('00'+rs)-2,3);
  end else if pos('-',query4.fieldbyname('s01').value)>0 then begin
    rs:=copy(query4.fieldbyname('s01').value,1,pos('-',query4.fieldbyname('s01').value)-1);
    rs:=copy('00'+rs,length('00'+rs)-2,3);
  end else if (pos('T',query4.fieldbyname('s01').value)>0) or (pos('SIZE',query4.fieldbyname('s01').value)>0) then begin
    rs:=query4.fieldbyname('s01').value;
  end else rs:=copy('00'+query4.fieldbyname('s01').value,length('00'+query4.fieldbyname('s01').value)-2,3);
  if (query4.fieldbyname('cust').value='ETAA1') or (query4.fieldbyname('cust').value='ETAM1')
  or (query4.fieldbyname('cust').value='LARD1') or (query4.fieldbyname('cust').value='MONO1')
  or (query4.fieldbyname('cust').value='DAXO1') or (query4.fieldbyname('cust').value='CANN1')
  or (query4.fieldbyname('cust').value='PPTT1') or (query4.fieldbyname('cust').value='TAIL1') then begin
    if query4.fieldbyname('seq').value=0 then begin
      if (rs>='004') and (rs<='026') and (rs<>'00S') and (rs<>'00M') and (rs<>'00L') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then begin
          xtitle0001.Caption:='Size (Bras as number code system)';
          xtitle0002.Caption:='Size (Bras as number code system for reference only)';
        end else begin
          xtitle0001.Caption:='Size (Underwear as number code system)';
          xtitle0002.Caption:='Size (Underwear as number code system for reference only)';
        end;
      end else if (rs>='028') and (rs<'060') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then begin
          xtitle0001.Caption:='Size (Bras as British system)';
          xtitle0002.Caption:='Size (Bras as British system for reference only)';
        end else begin
          xtitle0001.Caption:='Size (Underwear as British system)';
          xtitle0002.Caption:='Size (Underwear as British system for reference only)';
        end;
        if query4.fieldbyname('s01').value>'' then
        a0001.Caption:='F'+query4.fieldbyname('s01').value
        else a0001.Caption:='';
        if query4.fieldbyname('s02').value>'' then
        a0002.Caption:='F'+query4.fieldbyname('s02').value
        else a0002.Caption:='';
        if query4.fieldbyname('s03').value>'' then
        a0003.Caption:='F'+query4.fieldbyname('s03').value
        else a0003.Caption:='';
        if query4.fieldbyname('s04').value>'' then
        a0004.Caption:='F'+query4.fieldbyname('s04').value
        else a0004.Caption:='';
        if query4.fieldbyname('s05').value>'' then
        a0005.Caption:='F'+query4.fieldbyname('s05').value
        else a0005.Caption:='';
        if query4.fieldbyname('s06').value>'' then
        a0006.Caption:='F'+query4.fieldbyname('s06').value
        else a0006.Caption:='';
        if query4.fieldbyname('s07').value>'' then
        a0007.Caption:='F'+query4.fieldbyname('s07').value
        else a0007.Caption:='';
        if query4.fieldbyname('s08').value>'' then
        a0008.Caption:='F'+query4.fieldbyname('s08').value
        else a0008.Caption:='';
        if query4.fieldbyname('s09').value>'' then
        a0009.Caption:='F'+query4.fieldbyname('s09').value
        else a0009.Caption:='';
        if query4.fieldbyname('s10').value>'' then
        a0010.Caption:='F'+query4.fieldbyname('s10').value
        else a0010.Caption:='';
      end else if (rs>='060') and (rs<'150') and (rs<>'0XS') then begin
        if copy(query4.fieldbyname('flag6').value,1,1)='B' then begin
          xtitle0001.Caption:='Size (Bras as French metric system)';
          xtitle0002.Caption:='Size (Bras as French metric system for reference only)';
        end else begin
          xtitle0001.Caption:='Size (Underwear as French metric system)';
          xtitle0002.Caption:='Size (Underwear as French metric system for reference only)';
        end;
        if query4.fieldbyname('s01').value>'' then
        a0001.Caption:='F'+inttostr(strtoint(query4.fieldbyname('s01').value)+15)
        else a0001.Caption:='';
        if query4.fieldbyname('s02').value>'' then
        a0002.Caption:='F'+inttostr(strtoint(query4.fieldbyname('s02').value)+15)
        else a0002.Caption:='';
        if query4.fieldbyname('s03').value>'' then
        a0003.Caption:='F'+inttostr(strtoint(query4.fieldbyname('s03').value)+15)
        else a0003.Caption:='';
        if query4.fieldbyname('s04').value>'' then
        a0004.Caption:='F'+inttostr(strtoint(query4.fieldbyname('s04').value)+15)
        else a0004.Caption:='';
        if query4.fieldbyname('s05').value>'' then
        a0005.Caption:='F'+inttostr(strtoint(query4.fieldbyname('s05').value)+15)
        else a0005.Caption:='';
        if query4.fieldbyname('s06').value>'' then
        a0006.Caption:='F'+inttostr(strtoint(query4.fieldbyname('s06').value)+15)
        else a0006.Caption:='';
        if query4.fieldbyname('s07').value>'' then
        a0007.Caption:='F'+inttostr(strtoint(query4.fieldbyname('s07').value)+15)
        else a0007.Caption:='';
        if query4.fieldbyname('s08').value>'' then
        a0008.Caption:='F'+inttostr(strtoint(query4.fieldbyname('s08').value)+15)
        else a0008.Caption:='';
        if query4.fieldbyname('s09').value>'' then
        a0009.Caption:='F'+inttostr(strtoint(query4.fieldbyname('s09').value)+15)
        else a0009.Caption:='';
        if query4.fieldbyname('s10').value>'' then
        a0010.Caption:='F'+inttostr(strtoint(query4.fieldbyname('s10').value)+15)
        else a0010.Caption:='';
      end else begin
        xtitle0001.Caption:=' ';
        xtitle0002.Caption:=' ';
        if query4.fieldbyname('s01').value>'' then
        a0001.Caption:=query4.fieldbyname('s01').value//'F'+inttostr(strtoint(query4.fieldbyname('s01').value)+15)
        else a0001.Caption:='';
        if query4.fieldbyname('s02').value>'' then
        a0002.Caption:=query4.fieldbyname('s02').value//'F'+inttostr(strtoint(query4.fieldbyname('s02').value)+15)
        else a0002.Caption:='';
        if query4.fieldbyname('s03').value>'' then
        a0003.Caption:=query4.fieldbyname('s03').value//'F'+inttostr(strtoint(query4.fieldbyname('s03').value)+15)
        else a0003.Caption:='';
        if query4.fieldbyname('s04').value>'' then
        a0004.Caption:=query4.fieldbyname('s04').value//'F'+inttostr(strtoint(query4.fieldbyname('s04').value)+15)
        else a0004.Caption:='';
        if query4.fieldbyname('s05').value>'' then
        a0005.Caption:=query4.fieldbyname('s05').value//'F'+inttostr(strtoint(query4.fieldbyname('s05').value)+15)
        else a0005.Caption:='';
        if query4.fieldbyname('s06').value>'' then
        a0006.Caption:=query4.fieldbyname('s06').value//'F'+inttostr(strtoint(query4.fieldbyname('s06').value)+15)
        else a0006.Caption:='';
        if query4.fieldbyname('s07').value>'' then
        a0007.Caption:=query4.fieldbyname('s07').value//'F'+inttostr(strtoint(query4.fieldbyname('s07').value)+15)
        else a0007.Caption:='';
        if query4.fieldbyname('s08').value>'' then
        a0008.Caption:=query4.fieldbyname('s08').value//'F'+inttostr(strtoint(query4.fieldbyname('s08').value)+15)
        else a0008.Caption:='';
        if query4.fieldbyname('s09').value>'' then
        a0009.Caption:=query4.fieldbyname('s09').value//'F'+inttostr(strtoint(query4.fieldbyname('s09').value)+15)
        else a0009.Caption:='';
        if query4.fieldbyname('s10').value>'' then
        a0010.Caption:=query4.fieldbyname('s10').value//'F'+inttostr(strtoint(query4.fieldbyname('s10').value)+15)
        else a0010.Caption:='';
      end;
    end;
  end;
end;

procedure Tfrmcustomer.DataSource3DataChange(Sender: TObject;
  Field: TField);
begin
  if query4.Active then begin
  if (query4.fieldbyname('cust').value='ETAA1') or (query4.fieldbyname('cust').value='ETAM1')
  or (query4.fieldbyname('cust').value='LARD1') or (query4.fieldbyname('cust').value='MONO1')
  or (query4.fieldbyname('cust').value='DAXO1') or (query4.fieldbyname('cust').value='CANN1')
  or (query4.fieldbyname('cust').value='PPTT1') or (query4.fieldbyname('cust').value='TAIL1') then begin
    if (query4.fieldbyname('seq').value=0) and (copy(query4.fieldbyname('flag6').value,1,1)='B') then begin
      ppGroupHeaderBand16.Visible:=false;
      ppGroupFooterBand16.Visible:=false;
      ppGroupHeaderBand17.Visible:=true;
      ppGroupFooterBand17.Visible:=true;
    end else begin
      ppGroupHeaderBand16.Visible:=true;
      ppGroupFooterBand16.Visible:=true;
      ppGroupHeaderBand17.Visible:=false;
      ppGroupFooterBand17.Visible:=false;
    end;
  end else begin
    ppGroupHeaderBand16.Visible:=true;
    ppGroupFooterBand16.Visible:=true;
    ppGroupHeaderBand17.Visible:=false;
    ppGroupFooterBand17.Visible:=false;
  end;
  end;
  if frmcustprint.opt1.checked then begin
    ppGroupFooterBand16.visible:=false;
    ppGroupFooterBand17.visible:=false;
  end;
end;

procedure Tfrmcustomer.ppDetailBand6BeforePrint(Sender: TObject);
var
  pfit,xsz,sz:string;
  lmax,ttl:integer;
begin
  //key size on highest ratio
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftstring,'x5',ptinput);
    params.createparam(ftstring,'x6',ptinput);
    if withstyle='0' then
    commandtext:='select * from sp_tempprj_shv(:x1,:x2,:x3,:x4,:x5,:x6)'
    else begin
      params.createparam(ftstring,'x7',ptinput);
      commandtext:='select * from sp_tempprj_shv_style(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
    end;
    params[0].asdate:=dateedit1.Date;
    params[1].asdate:=dateedit2.date;
    if combobox6.text<>'KBT' then
    params[2].asstring:=combobox6.text
    else params[2].asstring:='KB';
    params[3].asstring:=combobox1.text;
    params[4].asstring:=query7.fieldbyname('lst2').value;
    params[5].asstring:=query7.fieldbyname('flag6').value;
    if withstyle='1' then
    params[6].asstring:=query7.fieldbyname('pstl52').value;
    open;
    if not fieldbyname('qty').isnull then begin
      x502.Caption:=fieldbyname('pfit').value+fieldbyname('psize').value;
      x503.Caption:=fieldbyname('qty').asstring;
      x504.Caption:=formatfloat('0.00%',fieldbyname('qty').value*100.00/fieldbyname('sewn').value);
      //x505.Caption:=fieldbyname('sewn').value;
    end else begin
      x502.Caption:='';
      x503.Caption:='0';
      x504.Caption:='0.00%';
      //x505.Caption:='0';
    end;
  end;
  if query7.fieldbyname('sah3').value>query7.fieldbyname('sah4').value then s003.Font.Color:=clRed
  else if query7.fieldbyname('sah3').value<query7.fieldbyname('sah4').value then s003.Font.Color:=clGreen
  else s003.Font.Color:=clBlack;
  if query7.fieldbyname('diff').value>0 then d003.Font.Color:=clGreen
  else if query7.fieldbyname('diff').value<0 then d003.Font.Color:=clRed
  else d003.Font.Color:=clBlack;
end;

procedure Tfrmcustomer.previewformat1_1;
begin
  if frmcustprint002=nil then frmcustprint002:=tfrmcustprint002.Create(nil);
  with frmcustprint002.query2 do begin
    close;
    params.clear;
    if xh1.ItemIndex=0 then
    commandtext:='select * from cust_exfty where 0=0'
    else if xh1.ItemIndex=1 then
    commandtext:='select * from cust_exfty where act=1'
    else if xh1.ItemIndex=2 then
    commandtext:='select * from cust_exfty where act=0';
    if combobox2.text>'' then commandtext:=commandtext+' and cust='''+combobox2.text+'''';
    if combobox3.text>'' then begin
      if combobox3.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox3.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox4.text>'' then commandtext:=commandtext+' and grp='''+combobox4.text+'''';
    if combobox5.text>'' then commandtext:=commandtext+' and pgrp='''+combobox5.text+'''';
    if combobox7.text>'' then commandtext:=commandtext+' and fcust='''+combobox7.text+'''';
    open;
    if not fieldbyname('cust').isnull then begin
      //frmcustprint002.cust03.Caption:=combobox2.text;
      //frmcustprint002.tplant01.Caption:=combobox3.text;
      //frmcustprint002.team01.Caption:=combobox4.Text;
      //if xh1.ItemIndex=0 then frmcustprint002.ppLabel13.Caption:='Customer Profile - Cycle Time (FCL)  - All'
      //else if xh1.ItemIndex=1 then frmcustprint002.ppLabel13.Caption:='Customer Profile - Cycle Time (FCL)  - Active'
      //else if xh1.ItemIndex=2 then frmcustprint002.ppLabel13.Caption:='Customer Profile - Cycle Time (FCL)   - Inactive';
      frmcustprint002.cust03.Caption:=combobox7.text;
      frmcustprint002.title001.Caption:=' - Division '+fieldbyname('grp').value+' / Status: ';
      if xh1.ItemIndex=0 then frmcustprint002.title001.Caption:=frmcustprint002.title001.Caption+'All'
      else if xh1.ItemIndex=1 then frmcustprint002.title001.Caption:=frmcustprint002.title001.Caption+'Active'
      else if xh1.ItemIndex=2 then frmcustprint002.title001.Caption:=frmcustprint002.title001.Caption+'Inactive';
      if combobox7.Text>'' then begin
        frmcustprint002.cust03.Visible:=true;
        frmcustprint002.ppDBText16.Visible:=true;
        frmcustprint002.ppDBText20.Visible:=true;
        frmcustprint002.ppDBText21.Visible:=true;
        frmcustprint002.ppDBText5.Visible:=true;
      end else begin
        frmcustprint002.cust03.Visible:=false;
        frmcustprint002.ppDBText16.Visible:=false;
        frmcustprint002.ppDBText20.Visible:=false;
        frmcustprint002.ppDBText21.Visible:=false;
        frmcustprint002.ppDBText5.Visible:=false;
      end;
      frmcustprint002.ppReport2.Print;
    end;
  end;
end;

procedure Tfrmcustomer.ppGroupFooterBand17BeforePrint(Sender: TObject);
begin
  //sz001,clr001,sku001,sz0001,clr0001,sku0001
  {
  with query8 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    commandtext:='select min(clr) as x1,max(clr) as x2,min(siz) as y1,max(siz) as y2,sum(clr*qtor*1.0)/sum(qtor*1.0) as d1,sum(siz*qtor*1.0)/sum(qtor*1.0) as d2 '
                +'from v_tempprjbd where cust=:x1 and lst2=:x2 and flag6=:x3 and lst2d=:x4 and seq=:x5';
    params[0].asstring:=query4.fieldbyname('cust').value;
    params[1].asstring:=query4.fieldbyname('lst2').value;
    params[2].asstring:=query4.fieldbyname('flag6').value;
    params[3].asstring:=query4.fieldbyname('lst2d').value;
    params[4].asinteger:=query4.fieldbyname('seq').value;
    open;
  end;
  sz001.Caption:=query8.fieldbyname('y1').asstring+' - '+query8.fieldbyname('y2').asstring;
  clr001.Caption:=query8.fieldbyname('x1').asstring+' - '+query8.fieldbyname('x2').asstring;
  sku001.Caption:=inttostr(query8.fieldbyname('x1').value*query8.fieldbyname('y1').value)+' - '+inttostr(query8.fieldbyname('x2').value*query8.fieldbyname('y2').value);
  sz0001.Caption:=formatfloat('#0',round(query8.fieldbyname('d2').value+0.49));
  clr0001.Caption:=formatfloat('#0',round(query8.fieldbyname('d1').value+0.49));
  sku0001.Caption:=formatfloat('#0',round(query8.fieldbyname('d2').value+0.49)*round(query8.fieldbyname('d1').value+0.49));
  }
end;

procedure Tfrmcustomer.ppGroupFooterBand16BeforePrint(Sender: TObject);
begin
  //sz002,clr002,sku002,sz0002,clr0002,sku0002
  {
  with query8 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    params.createparam(ftinteger,'x6',ptinput);
    commandtext:='select min(clr) as x1,max(clr) as x2,min(siz) as y1,max(siz) as y2,sum(clr*qtor*1.0)/sum(qtor*1.0) as d1,sum(siz*qtor*1.0)/sum(qtor*1.0) as d2 '
                +'from v_tempprjbd where cust=:x1 and lst2=:x2 and flag6=:x3 and lst2d=:x4 and seq=:x5';
    params[0].asstring:=query4.fieldbyname('cust').value;
    params[1].asstring:=query4.fieldbyname('lst2').value;
    params[2].asstring:=query4.fieldbyname('flag6').value;
    params[3].asstring:=query4.fieldbyname('lst2d').value;
    params[4].asinteger:=query4.fieldbyname('seq').value;
    open;
  end;
  sz002.Caption:=query8.fieldbyname('y1').asstring+' - '+query8.fieldbyname('y2').asstring;
  clr002.Caption:=query8.fieldbyname('x1').asstring+' - '+query8.fieldbyname('x2').asstring;
  sku002.Caption:=inttostr(query8.fieldbyname('x1').value*query8.fieldbyname('y1').value)+' - '+inttostr(query8.fieldbyname('x2').value*query8.fieldbyname('y2').value);
  sz0002.Caption:=formatfloat('#0',round(query8.fieldbyname('d2').value+0.49));
  clr0002.Caption:=formatfloat('#0',round(query8.fieldbyname('d1').value+0.49));
  sku0002.Caption:=formatfloat('#0',round(query8.fieldbyname('d2').value+0.49)*round(query8.fieldbyname('d1').value+0.49));
  }
end;

procedure Tfrmcustomer.ppSummaryBand3BeforePrint(Sender: TObject);
var
  dt1,dt2:tdate;
begin
  if dateedit1.Date>0 then dt1:=dateedit1.date else dt1:=encodedate(1988,8,8);
  if dateedit2.date>0 then dt2:=dateedit2.date else dt1:=encodedate(2020,12,31);
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='execute procedure sp_tempprjbd(:x1,:x2,:x3)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=combobox1.text;
      open;
    end;
end;

procedure Tfrmcustomer.ppDetailBand8BeforePrint(Sender: TObject);
begin
  if query10.fieldbyname('seq').value=9 then sz001.Caption:='dual'
  else sz001.Caption:='single';
end;

procedure Tfrmcustomer.ppDetailBand9BeforePrint(Sender: TObject);
begin
  if query10.fieldbyname('seq').value=9 then sz002.Caption:='dual'
  else sz002.Caption:='single';
end;

procedure Tfrmcustomer.ppDetailBand10BeforePrint(Sender: TObject);
begin
  //key size on highest ratio
  {
  ttl:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(qtor52) as q1 from temp_prjbd where dtdr52>=:x1 and dtdr52<=:x2 and sdiv35='''+query11.fieldbyname('lst2').value+'''';// and substr(flag6,1,1)='''+query11.fieldbyname('flag6').value+'''';
    if combobox6.text>'' then commandtext:=commandtext+' and tplant='''+combobox6.text+'''';
    if length(combobox1.text)=4 then commandtext:=commandtext+' and cusn40 like '''+combobox1.text+'%'''
    else if length(combobox1.text)>=5 then commandtext:=commandtext+' and cusn40='''+combobox1.text+'''';
    if query11.fieldbyname('ptyp').value='BRA' then commandtext:=commandtext+' and substr(flag6,1,1)=''B'''
    else if query11.fieldbyname('ptyp').value='KNICKER' then commandtext:=commandtext+' and substr(flag6,1,1)=''K'''
    else commandtext:=commandtext+' and substr(flag6,1,1)=''U''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('q1').isnull then y05.Caption:=fieldbyname('q1').asstring
    else y05.caption:='0';
  end;
  if not query11.fieldbyname('sah1').isnull then y01.Caption:=formatfloat('0.0000',query11.fieldbyname('sah1').value)
  else y01.Caption:='0.0000';
  if not query11.fieldbyname('sah0').isnull then c001.Caption:=formatfloat('0.0000',query11.fieldbyname('sah0').value)
  else c001.Caption:='0.0000';
  if not query11.fieldbyname('sah2').isnull then y02.Caption:=formatfloat('0.0000',query11.fieldbyname('sah2').value)
  else y02.Caption:='0.0000';
  if not query11.fieldbyname('sah3').isnull then x510.Caption:=formatfloat('0.0000',query11.fieldbyname('sah3').value)
  else x510.Caption:='0.0000';
  if not query11.fieldbyname('eff').isnull then y06.Caption:=formatfloat('0.00',query11.fieldbyname('eff').value)
  else y06.Caption:='0.00';
  //if strtofloat(y01.caption)>strtofloat(x510.caption) then x510.Font.Color:=clGreen
  //else if strtofloat(y01.caption)<strtofloat(x510.caption) then x510.Font.Color:=clRed
  //else x510.Font.Color:=clBlack;
  if strtofloat(x510.Caption)>strtofloat(y02.caption) then y02.Font.Color:=clGreen
  else if strtofloat(x510.Caption)<strtofloat(y02.Caption) then y02.Font.Color:=clRed
  else y02.Font.Color:=clBlack;
  if y02.caption>'0.0000' then begin
    y03.Caption:=formatfloat('0.00',query11.fieldbyname('sah0').value*100.0/query11.fieldbyname('sah3').value);
    y04.Caption:=formatfloat('0.00',query11.fieldbyname('sah3').value*100.0/query11.fieldbyname('sah2').value);
    by003.Caption:=formatfloat('0.00',query11.fieldbyname('sah0').value*100.0/query11.fieldbyname('sah2').value);
  end else begin
    y03.Caption:='0.00';
    y04.Caption:='0.00';
    by003.Caption:='0.00';
  end;
  dy003.Caption:=formatfloat('0.00',strtofloat(y06.caption)-strtofloat(by003.caption));
  if strtofloat(y06.caption)<strtofloat(by003.caption) then dy003.Font.Color:=clRed
  else if strtofloat(y06.caption)>strtofloat(by003.caption) then dy003.Font.Color:=clGreen
  else dy003.Font.Color:=clBlack;
  with query9 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(b.diff) as q1 from tbl_erpstylecat c,tblshedule a,line_shjs b,tbl_erpsop d '
                +'where a.pline=b.pline and a.seq=b.seq and a.artno=c.artno and d.ddt>=:x1 and d.ddt<=:x2 '
                +'and b.flag=''0'' and a.j_no=d.j_no and a.ordline=d.ordline and a.acol=d.acol and b.diff>=1';
    if combobox6.Text>'' then commandtext:=commandtext+' and a.tplant='''+combobox6.text+'''';
    if length(combobox1.text)=4 then commandtext:=commandtext+' and a.j_no like '''+combobox1.text+'%'''
    else if length(combobox1.text)>=5 then commandtext:=commandtext+' and d.customer='''+combobox1.Text+'''';
    commandtext:=commandtext+' and c.brand='''+query11.fieldbyname('lst2').value+'''';
    if query11.fieldbyname('ptyp').value='BRA' then commandtext:=commandtext+' and c.flag6 like ''B%'''
    else if query11.fieldbyname('ptyp').value='KNICKER' then commandtext:=commandtext+' and c.flag6 like ''K%'''
    else commandtext:=commandtext+' and c.flag6 like ''U%''';
    params[0].asdate:=dateedit1.Date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('q1').isnull then sew004.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else sew004.Caption:='0';
  end;
  }
  if query11.fieldbyname('sah3').value>query11.fieldbyname('sah4').value then s023.Font.Color:=clRed
  else if query11.fieldbyname('sah3').value<query11.fieldbyname('sah4').value then s023.Font.Color:=clGreen
  else s023.Font.Color:=clBlack;
  if query11.fieldbyname('diff').value>0 then d023.Font.Color:=clGreen
  else if query11.fieldbyname('diff').value<0 then d023.Font.Color:=clRed
  else d023.Font.Color:=clBlack;
end;

procedure Tfrmcustomer.ppDetailBand11BeforePrint(Sender: TObject);
begin
  //key size on highest ratio
  {
  ttl:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(qtor52) as q1 from temp_prjbd where dtdr52>=:x1 and dtdr52<=:x2';
    if combobox6.text>'' then commandtext:=commandtext+' and tplant='''+combobox6.text+'''';
    if length(combobox1.text)=4 then commandtext:=commandtext+' and cusn40 like '''+combobox1.text+'%'''
    else if length(combobox1.text)>=5 then commandtext:=commandtext+' and cusn40='''+combobox1.text+'''';
    if query12.fieldbyname('ptyp').value='BRA' then commandtext:=commandtext+' and substr(flag6,1,1)=''B'''
    else if query12.fieldbyname('ptyp').value='KNICKER' then commandtext:=commandtext+' and substr(flag6,1,1)=''K'''
    else commandtext:=commandtext+' and substr(flag6,1,1)=''U''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('q1').isnull then z05.Caption:=fieldbyname('q1').asstring
    else z05.caption:='0';
  end;
  if not query12.fieldbyname('sah1').isnull then z01.Caption:=formatfloat('0.0000',query12.fieldbyname('sah1').value)
  else z01.Caption:='0.0000';
  if not query12.fieldbyname('sah0').isnull then d001.Caption:=formatfloat('0.0000',query12.fieldbyname('sah0').value)
  else d001.Caption:='0.0000';
  if not query12.fieldbyname('sah2').isnull then z02.Caption:=formatfloat('0.0000',query12.fieldbyname('sah2').value)
  else z02.Caption:='0.0000';
  if not query12.fieldbyname('sah3').isnull then x511.Caption:=formatfloat('0.0000',query12.fieldbyname('sah3').value)
  else x511.Caption:='0.0000';
  if not query12.fieldbyname('eff').isnull then z06.Caption:=formatfloat('0.00',query12.fieldbyname('eff').value)
  else z06.Caption:='0.00';
  //if strtofloat(z01.caption)>strtofloat(x511.caption) then x511.Font.Color:=clGreen
  //else if strtofloat(z01.caption)<strtofloat(x511.caption) then x511.Font.Color:=clRed
  //else x511.Font.Color:=clBlack;
  if strtofloat(x511.Caption)>strtofloat(z02.caption) then z02.Font.Color:=clGreen
  else if strtofloat(x511.Caption)<strtofloat(z02.Caption) then z02.Font.Color:=clRed
  else z02.Font.Color:=clBlack;
  if z02.caption>'0.0000' then begin
    z03.Caption:=formatfloat('0.00',query12.fieldbyname('sah0').value*100.0/query12.fieldbyname('sah3').value);
    z04.Caption:=formatfloat('0.00',query12.fieldbyname('sah3').value*100.0/query12.fieldbyname('sah2').value);
    by004.Caption:=formatfloat('0.00',query12.fieldbyname('sah0').value*100.0/query12.fieldbyname('sah2').value);
  end else begin
    z03.Caption:='0.00';
    z04.Caption:='0.00';
    by004.Caption:='0.00';
  end;
  dy004.Caption:=formatfloat('0.00',strtofloat(z06.caption)-strtofloat(by004.caption));
  if strtofloat(z06.caption)<strtofloat(by004.caption) then dy004.Font.Color:=clRed
  else if strtofloat(z06.caption)>strtofloat(by004.caption) then dy004.Font.Color:=clGreen
  else dy004.Font.Color:=clBlack;
  with query9 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(b.diff) as q1 from tbl_erpstylecat c,tblshedule a,line_shjs b,tbl_erpsop d '
                +'where a.pline=b.pline and a.seq=b.seq and a.artno=c.artno and d.ddt>=:x1 and d.ddt<=:x2 '
                +'and b.flag=''0'' and a.j_no=d.j_no and a.ordline=d.ordline and a.acol=d.acol and b.diff>=1';
    if combobox6.Text>'' then commandtext:=commandtext+' and a.tplant='''+combobox6.text+'''';
    if length(combobox1.text)=4 then commandtext:=commandtext+' and a.j_no like '''+combobox1.text+'%'''
    else if length(combobox1.text)>=5 then commandtext:=commandtext+' and d.customer='''+combobox1.Text+'''';
    if query12.fieldbyname('ptyp').value='BRA' then commandtext:=commandtext+' and c.flag6 like ''B%'''
    else if query12.fieldbyname('ptyp').value='KNICKER' then commandtext:=commandtext+' and c.flag6 like ''K%'''
    else commandtext:=commandtext+' and c.flag6 like ''U%''';
    params[0].asdate:=dateedit1.Date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('q1').isnull then sew005.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else sew005.Caption:='0';
  end;
  }
  if query12.fieldbyname('sah3').value>query12.fieldbyname('sah4').value then s033.Font.Color:=clRed
  else if query12.fieldbyname('sah3').value<query12.fieldbyname('sah4').value then s033.Font.Color:=clGreen
  else s033.Font.Color:=clBlack;
  if query12.fieldbyname('diff').value>0 then d033.Font.Color:=clGreen
  else if query12.fieldbyname('diff').value<0 then d033.Font.Color:=clRed
  else d033.Font.Color:=clBlack;
end;

procedure Tfrmcustomer.ppDetailBand12BeforePrint(Sender: TObject);
begin
  //key size on highest ratio
  {
  ttl:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(qtor52) as q1 from temp_prjbd where dtdr52>=:x1 and dtdr52<=:x2 and flag6='''+query13.fieldbyname('flag6').value+'''';
    if combobox6.text>'' then commandtext:=commandtext+' and tplant='''+combobox6.text+'''';
    if length(combobox1.text)=4 then commandtext:=commandtext+' and cusn40 like '''+combobox1.text+'%'''
    else if length(combobox1.text)>=5 then commandtext:=commandtext+' and cusn40='''+combobox1.text+'''';
    params[0].asdate:=dateedit1.date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('q1').isnull then w05.Caption:=fieldbyname('q1').asstring
    else w05.caption:='0';
  end;
  if not query13.fieldbyname('sah1').isnull then w01.Caption:=formatfloat('0.0000',query13.fieldbyname('sah1').value)
  else w01.Caption:='0.0000';
  if not query13.fieldbyname('sah0').isnull then b001.Caption:=formatfloat('0.0000',query13.fieldbyname('sah0').value)
  else b001.Caption:='0.0000';
  if not query13.fieldbyname('sah2').isnull then w02.Caption:=formatfloat('0.0000',query13.fieldbyname('sah2').value)
  else w02.Caption:='0.0000';
  if not query13.fieldbyname('sah3').isnull then x512.Caption:=formatfloat('0.0000',query13.fieldbyname('sah3').value)
  else x512.Caption:='0.0000';
  if not query13.fieldbyname('eff').isnull then w06.Caption:=formatfloat('0.00',query13.fieldbyname('eff').value)
  else w06.Caption:='0.00';
  //if strtofloat(w01.caption)>strtofloat(x512.caption) then x512.Font.Color:=clGreen
  //else if strtofloat(w01.caption)<strtofloat(x512.caption) then x512.Font.Color:=clRed
  //else x512.Font.Color:=clBlack;
  if strtofloat(x512.Caption)>strtofloat(w02.caption) then w02.Font.Color:=clGreen
  else if strtofloat(x512.Caption)<strtofloat(w02.Caption) then w02.Font.Color:=clRed
  else w02.Font.Color:=clBlack;
  if w02.caption>'0.0000' then begin
    w03.Caption:=formatfloat('0.00',query13.fieldbyname('sah0').value*100.0/query13.fieldbyname('sah3').value);
    w04.Caption:=formatfloat('0.00',query13.fieldbyname('sah3').value*100.0/query13.fieldbyname('sah2').value);
    by002.Caption:=formatfloat('0.00',query13.fieldbyname('sah0').value*100.0/query13.fieldbyname('sah2').value);
  end else begin
    w03.Caption:='0.00';
    w04.Caption:='0.00';
    by002.Caption:='0.00';
  end;
  dy002.Caption:=formatfloat('0.00',strtofloat(w06.caption)-strtofloat(by002.caption));
  if strtofloat(w06.caption)<strtofloat(by002.caption) then dy002.Font.Color:=clRed
  else if strtofloat(w06.caption)>strtofloat(by002.caption) then dy002.Font.Color:=clGreen
  else dy002.font.color:=clBlack;
  with query9 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select sum(b.diff) as q1 from tbl_erpstylecat c,tblshedule a,line_shjs b,tbl_erpsop d '
                +'where a.pline=b.pline and a.seq=b.seq and a.artno=c.artno and d.ddt>=:x1 and d.ddt<=:x2 '
                +'and b.flag=''0'' and a.j_no=d.j_no and a.ordline=d.ordline and a.acol=d.acol and b.diff>=1';
    if combobox6.Text>'' then commandtext:=commandtext+' and a.tplant='''+combobox6.text+'''';
    if length(combobox1.text)=4 then commandtext:=commandtext+' and a.j_no like '''+combobox1.text+'%'''
    else if length(combobox1.text)>=5 then commandtext:=commandtext+' and d.customer='''+combobox1.Text+'''';
    commandtext:=commandtext+' and c.flag6='''+query13.fieldbyname('flag6').value+'''';
    params[0].asdate:=dateedit1.Date;
    params[1].asdate:=dateedit2.date;
    open;
    if not fieldbyname('q1').isnull then sew003.Caption:=formatfloat('#0',fieldbyname('q1').value)
    else sew003.Caption:='0';
  end;
  }
  if query13.fieldbyname('sah3').value>query13.fieldbyname('sah4').value then s013.Font.Color:=clRed
  else if query13.fieldbyname('sah3').value<query13.fieldbyname('sah4').value then s013.Font.Color:=clGreen
  else s013.Font.Color:=clBlack;
  if query13.fieldbyname('diff').value>0 then d013.Font.Color:=clGreen
  else if query13.fieldbyname('diff').value<0 then d013.Font.Color:=clRed
  else d013.Font.Color:=clBlack;
end;

procedure Tfrmcustomer.ppGroupHeaderBand29BeforePrint(Sender: TObject);
begin
  if query7.fieldbyname('flag6').value='B' then ptyp001.caption:='Product Type / Code:   BRA / B :- '
  else if query7.fieldbyname('flag6').value='K' then ptyp001.Caption:='Product Type / Code:   KNICKER / K :- '
  else ptyp001.Caption:='Product Type / Code:   UNDERWEAR / U :- ';
end;

procedure Tfrmcustomer.ppReport8PreviewFormCreate(Sender: TObject);
begin
  ppReport8.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport8.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcustomer.ppDetailBand13BeforePrint(Sender: TObject);
begin
  if query7.fieldbyname('diff').value>0 then ppdbtext283.Font.Color:=clGreen
  else if query7.fieldbyname('diff').value<0 then ppdbtext283.Font.color:=clRed
  else ppdbtext283.Font.Color:=clBlack;
  if query7.fieldbyname('sah3').value>query7.fieldbyname('sah2').value then
  ppdbtext278.font.Color:=clRed
  else if query7.fieldbyname('sah3').value<query7.fieldbyname('sah2').value then
  ppdbtext278.Font.Color:=clGreen else ppdbtext278.Font.Color:=clBlack;
  if query7.fieldbyname('tplant').value='KB' then ps01.Visible:=true
  else ps01.Visible:=false;
  if query7.fieldbyname('eff3').value>90.0 then begin
    grd001.Caption:=' A'; grd001.Font.Color:=clGreen;
  end else if query7.fieldbyname('eff3').value>80 then begin
    grd001.Caption:=' B'; grd001.Font.Color:=clGreen;
  end else if query7.FieldByName('eff3').value>70 then begin
    grd001.Caption:=' C'; grd001.Font.Color:=clBlack;
  end else if query7.FieldByName('eff3').value>60 then begin
    grd001.caption:=' D'; grd001.Font.Color:=clBlack;
  end else if query7.fieldbyname('eff3').value>30 then begin
    grd001.Caption:=' F'; grd001.Font.Color:=clRed;
  end else begin
    grd001.Caption:=' U'; grd001.Font.Color:=clRed;
  end;
end;

procedure Tfrmcustomer.ppGroupFooterBand29BeforePrint(Sender: TObject);
begin
  with query3 do begin
      close;
      params.clear;
      commandtext:='select sum(sah0*qty2)/sum(qty2) as s0,sum(sah1*qty2)/sum(qty2) as s1,sum(sah2*qty2)/sum(qty2) as s2,'
                  +'sum(sah3*qty2)/sum(qty2) as s3,sum(sah4*qty2)/sum(qty2) as s4,sum(eff3*qty2)/sum(qty2) as e3 '
                  +'from temp_prjbd_summary where flag6='''+query7.fieldbyname('flag6').value+'''';
      if combobox6.text>'' then begin
        if combobox6.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox6.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      open;
      if not fieldbyname('s0').isnull then sah000.Caption:=formatfloat('0.0000',fieldbyname('s0').value)
      else sah000.Caption:='0.0000';
      if not fieldbyname('s1').isnull then sah001.Caption:=formatfloat('0.0000',fieldbyname('s1').value)
      else sah001.Caption:='0.0000';
      if not fieldbyname('s2').isnull then sah002.Caption:=formatfloat('0.0000',fieldbyname('s2').value)
      else sah002.Caption:='0.0000';
      if not fieldbyname('s3').isnull then sah003.Caption:=formatfloat('0.0000',fieldbyname('s3').value)
      else sah003.Caption:='0.0000';
      if not fieldbyname('s4').isnull then sah004.Caption:=formatfloat('0.0000',fieldbyname('s4').value)
      else sah004.Caption:='0.0000';
      if not fieldbyname('e3').isnull then eff003.Caption:=formatfloat('0.00',fieldbyname('e3').value)
      else eff003.Caption:='0.00';
      if fieldbyname('e3').value>90.0 then begin
        grd101.Caption:=' A'; grd101.Font.Color:=clGreen;
      end else if fieldbyname('e3').value>80 then begin
        grd101.Caption:=' B'; grd101.Font.Color:=clGreen;
      end else if FieldByName('e3').value>70 then begin
        grd101.Caption:=' C'; grd101.Font.Color:=clBlack;
      end else if FieldByName('e3').value>60 then begin
        grd101.caption:=' D'; grd101.Font.Color:=clBlack;
      end else if fieldbyname('e3').value>30 then begin
        grd101.Caption:=' F'; grd101.Font.Color:=clRed;
      end else begin
        grd101.Caption:=' U'; grd101.Font.Color:=clRed;
      end;
      if fieldbyname('s2').value>0 then begin
        eff000.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s2').value);
        eff004.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s2').value);
      end else begin
        eff000.Caption:='0.00';
        eff004.Caption:='0.00';
      end;
      if fieldbyname('s3').value>0 then begin
        eff001.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s3').value);
        eff002.Caption:=formatfloat('0.00',fieldbyname('s2').value*100.00/fieldbyname('s3').value);
      end else begin
        eff001.Caption:='0.00';
        eff002.Caption:='0.00';
      end;
      if fieldbyname('s3').value<fieldbyname('s2').value then sah003.Font.Color:=clGreen
      else if fieldbyname('s3').value>fieldbyname('s2').value then sah003.Font.Color:=clRed
      else sah003.Font.Color:=clBlack;
  end;
      diff001.Caption:=formatfloat('0.00',strtofloat(eff003.Caption)-strtofloat(eff001.Caption));
      if strtofloat(eff003.Caption)>strtofloat(eff001.Caption) then diff001.Font.Color:=clGreen
      else if strtofloat(eff003.Caption)<strtofloat(eff001.Caption) then diff001.Font.Color:=clRed
      else diff001.Font.Color:=clBlack;
end;

procedure Tfrmcustomer.ppGroupFooterBand25BeforePrint(Sender: TObject);
begin
  with query3 do begin
      close;
      params.clear;
      commandtext:='select sum(qty1) as q1,sum(qty2) as q2,sum(sah0*qty2)/sum(qty2) as s0,sum(sah1*qty2)/sum(qty2) as s1,sum(sah2*qty2)/sum(qty2) as s2,'
                  +'sum(sah3*qty2)/sum(qty2) as s3,sum(sah4*qty2)/sum(qty2) as s4,sum(eff3*qty2)/sum(qty2) as e3 '
                  +'from temp_prjbd_summary where flag6='''+query10.fieldbyname('flag6').value+''' and tplant=''All''';
      if combobox6.text>'' then begin
        if combobox6.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox6.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      open;
      if not fieldbyname('q1').isnull then qty1.Caption:=fieldbyname('q1').AsString else qty1.Caption:='0';
      if not fieldbyname('q2').isnull then qty2.Caption:=fieldbyname('q2').AsString else qty2.Caption:='0';
      if not fieldbyname('s0').isnull then sah0.Caption:=formatfloat('0.0000',fieldbyname('s0').value)
      else sah0.Caption:='0.0000';
      if not fieldbyname('s1').isnull then sah1.Caption:=formatfloat('0.0000',fieldbyname('s1').value)
      else sah1.Caption:='0.0000';
      if not fieldbyname('s2').isnull then sah2.Caption:=formatfloat('0.0000',fieldbyname('s2').value)
      else sah2.Caption:='0.0000';
      if not fieldbyname('s3').isnull then sah3.Caption:=formatfloat('0.0000',fieldbyname('s3').value)
      else sah3.Caption:='0.0000';
      if not fieldbyname('s4').isnull then sah4.Caption:=formatfloat('0.0000',fieldbyname('s4').value)
      else sah4.Caption:='0.0000';
      if not fieldbyname('e3').isnull then eff3.Caption:=formatfloat('0.00',fieldbyname('e3').value)
      else eff3.Caption:='0.00';
      if fieldbyname('e3').value>90.0 then begin
        grd102.Caption:=' A'; grd102.Font.Color:=clGreen;
      end else if fieldbyname('e3').value>80 then begin
        grd102.Caption:=' B'; grd102.Font.Color:=clGreen;
      end else if FieldByName('e3').value>70 then begin
        grd102.Caption:=' C'; grd102.Font.Color:=clBlack;
      end else if FieldByName('e3').value>60 then begin
        grd102.caption:=' D'; grd102.Font.Color:=clBlack;
      end else if fieldbyname('e3').value>30 then begin
        grd102.Caption:=' F'; grd102.Font.Color:=clRed;
      end else begin
        grd102.Caption:=' U'; grd102.Font.Color:=clRed;
      end;
      if fieldbyname('s2').value>0 then begin
        eff0.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s2').value);
        eff4.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s2').value);
      end else begin
        eff0.Caption:='0.00';
        eff4.Caption:='0.00';
      end;
      if fieldbyname('s3').value>0 then begin
        eff1.Caption:=formatfloat('0.00',fieldbyname('s1').value*100.00/fieldbyname('s3').value);
        eff2.Caption:=formatfloat('0.00',fieldbyname('s2').value*100.00/fieldbyname('s3').value);
      end else begin
        eff1.Caption:='0.00';
        eff2.Caption:='0.00';
      end;
      if fieldbyname('s3').value<fieldbyname('s2').value then sah3.Font.Color:=clGreen
      else if fieldbyname('s3').value>fieldbyname('s2').value then sah3.Font.Color:=clRed
      else sah3.Font.Color:=clBlack;
  end;
      diff1.Caption:=formatfloat('0.00',strtofloat(eff3.Caption)-strtofloat(eff1.Caption));
      if strtofloat(eff3.Caption)>strtofloat(eff1.Caption) then diff1.Font.Color:=clGreen
      else if strtofloat(eff3.Caption)<strtofloat(eff1.Caption) then diff1.Font.Color:=clRed
      else diff1.Font.Color:=clBlack;
end;

procedure Tfrmcustomer.ppGroupHeaderBand25BeforePrint(Sender: TObject);
begin
  if query10.fieldbyname('flag6').value='B' then ptyp002.caption:='Product Type / Code:   BRA / B :- '
  else if query10.fieldbyname('flag6').value='K' then ptyp002.Caption:='Product Type / Code:   KNICKER / K :- '
  else ptyp002.Caption:='Product Type / Code:   UNDERWEAR / U :- ';
end;

procedure Tfrmcustomer.ppDetailBand14BeforePrint(Sender: TObject);
begin
  if query10.fieldbyname('diff').value>0 then ppdbtext307.Font.Color:=clGreen
  else if query10.fieldbyname('diff').value<0 then ppdbtext307.Font.color:=clRed
  else ppdbtext307.Font.Color:=clBlack;
  if query10.fieldbyname('sah3').value>query10.fieldbyname('sah2').value then
  ppdbtext302.font.Color:=clRed
  else if query10.fieldbyname('sah3').value<query10.fieldbyname('sah2').value then
  ppdbtext302.Font.Color:=clGreen else ppdbtext302.Font.Color:=clBlack;
  if query10.fieldbyname('tplant').value='KB' then ps02.Visible:=true
  else ps02.Visible:=false;
  if query10.fieldbyname('eff3').value>90.0 then begin
    grd002.Caption:=' A'; grd002.Font.Color:=clGreen;
  end else if query10.fieldbyname('eff3').value>80 then begin
    grd002.Caption:=' B'; grd002.Font.Color:=clGreen;
  end else if query10.FieldByName('eff3').value>70 then begin
    grd002.Caption:=' C'; grd002.Font.Color:=clBlack;
  end else if query10.FieldByName('eff3').value>60 then begin
    grd002.caption:=' D'; grd002.Font.Color:=clBlack;
  end else if query10.fieldbyname('eff3').value>30 then begin
    grd002.Caption:=' F'; grd002.Font.Color:=clRed;
  end else begin
    grd002.Caption:=' U'; grd002.Font.Color:=clRed;
  end;
end;

procedure Tfrmcustomer.ppTitleBand6BeforePrint(Sender: TObject);
begin
  pg001.Caption:=pc01.Text+' of '+pc01.Text;
end;

procedure Tfrmcustomer.ppDetailBand16BeforePrint(Sender: TObject);
begin
  if query14.fieldbyname('sah3').value>query14.fieldbyname('sah4').value then s043.Font.Color:=clRed
  else if query14.fieldbyname('sah3').value<query14.fieldbyname('sah4').value then s043.Font.Color:=clGreen
  else s043.Font.Color:=clBlack;
  if query14.fieldbyname('diff').value>0 then d043.Font.Color:=clGreen
  else if query14.fieldbyname('diff').value<0 then d043.Font.Color:=clRed
  else d043.Font.Color:=clBlack;
end;

procedure Tfrmcustomer.SHVbyCustStyles1Click(Sender: TObject);
var
  tm:tdatetime;
  dt1,dt2:tdate;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  withstyle:='1';
  try
    if DateEdit1.date>0 then dt1:=DateEdit1.date
    else dt1:=encodedate(2005,1,1);
    if DateEdit2.Date>0 then dt2:=DateEdit2.date
    else dt2:=encodedate(2020,12,31);
  if (combobox1.text>'') then begin
    if (dateedit1.Date>0) and (dateedit2.date>0) then begin
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure SP_GENTEMPPRJBD_RPT_STYLE(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      if combobox6.text<>'KBT' then
      params[2].asstring:=combobox6.text
      else params[2].asstring:='KB';
      params[3].asstring:=combobox1.text;
      execute;
    end;
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_tempprjbd_style(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      params[2].asstring:=combobox1.text;
      if combobox6.text<>'KBT' then
      params[3].asstring:=combobox6.text
      else params[3].asstring:='KB';
      execute;
    end;
    tqty:=0;
    with query10 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_tempprjbd_clr order by flag,seq';
      open;
    end;
    with query11 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_2(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      if combobox6.text<>'KBT' then
      params[2].asstring:=combobox6.text
      else params[2].asstring:='KB';
      params[3].asstring:=combobox1.text;
      open;
    end;
    with query14 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_4(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      if combobox6.text<>'KBT' then
      params[2].asstring:=combobox6.text
      else params[2].asstring:='KB';
      params[3].asstring:=combobox1.text;
      open;
    end;
    with query12 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from SP_GENTEMPPRJBD_RPT_3(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dt1;
      params[1].asdate:=dt2;
      if combobox6.text<>'KBT' then
      params[2].asstring:=combobox6.text
      else params[2].asstring:='KB';
      params[3].asstring:=combobox1.text;
      open;
    end;
      with query13 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_1(:x1,:x2,:x3,:x4)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        if combobox6.text<>'KBT' then
        params[2].asstring:=combobox6.text
        else params[2].asstring:='KB';
        params[3].asstring:=combobox1.text;
        open;
      end;
      with query7 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='select * from TEMP_PRJBD_RPT1 where cust=:x1';
        if combobox6.text>'' then begin
          if combobox6.text<>'KBT' then
          commandtext:=commandtext+' and tplant='''+combobox6.text+''''
          else commandtext:=commandtext+' and tplant=''KB''';
        end
        else commandtext:=commandtext+' and tplant=''All''';
        commandtext:=commandtext+' order by cust,ptyp,lst2,flag6';
        params[0].asstring:=combobox1.text;
        open;
        if not fieldbyname('cust').isnull then begin
          pplabel180.Caption:=' / Product Category & Style dependent ';
          cust001.Caption:=combobox1.text;
          dt001.Caption:=dateedit1.Text;
          dt002.Caption:=dateedit2.Text;
          if combobox6.text>'' then
          fty001.Caption:=combobox6.text
          else fty001.Caption:='All';
          pplabel185.Caption:='Name / Style#';
          ppReport6.Print;
        end;
      end;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmcustomer.BitBtn10Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
  if combobox1.text='' then begin
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='Execute PROCEDURE SP_GENTEMPPRJBD_SUMMARY(:x1,:x2,:x3)';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
      if combobox6.text<>'KBT' then
      params[2].asstring:=combobox6.text
      else params[2].asstring:='KB';
      execute;
    end;
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='Execute PROCEDURE SP_GENTEMPPRJBD_SUMMARY_RK(:x1,:x2,:x3)';
      params[0].asdate:=dateedit1.date;
      params[1].asdate:=dateedit2.date;
      if combobox6.text<>'KBT' then
      params[2].asstring:=combobox6.text
      else params[2].asstring:='KB';
      execute;
    end;
    if frmshvplusgai=nil then frmshvplusgai:=tfrmshvplusgai.Create(nil);
    with frmshvplusgai.query10 do begin
      close;
      params.clear;
      commandtext:='select * from temp_prjbd_summary a where exists (select cust from temp_prjbd_summary b where tplant=''All'' and a.cust=b.cust and a.flag6=b.flag6)';
      if combobox6.text>'' then begin
        if combobox6.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox6.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      commandtext:=commandtext+' order by flag6,cusn40,tplant desc';
      open;
    end;
    with frmshvplusgai.query7 do begin
      close;
      params.clear;
      commandtext:='select * from temp_prjbd_summary where tplant<>''All''';
      if combobox6.text>'' then begin
        if combobox6.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox6.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      commandtext:=commandtext+' order by flag6,cusn40,tplant desc';
      open;
      if not fieldbyname('cusn40').isnull then begin
        if combobox6.text>'' then frmshvplusgai.fty008.Caption:=combobox6.text else frmshvplusgai.fty008.Caption:='SL+KB';
        if combobox6.Text>'' then begin
          frmshvplusgai.ppGroupFooterBand27.Visible:=true;
          frmshvplusgai.ppSummaryBand10.Visible:=false;
        end else begin
          frmshvplusgai.ppGroupFooterBand27.Visible:=false;
          frmshvplusgai.ppSummaryBand10.Visible:=true;
          frmshvplusgai.fty018.Caption:='SL+KB';
          frmshvplusgai.dt038.Caption:=formatdatetime('yyyy-MM-dd',dateedit1.date);
          frmshvplusgai.dt048.Caption:=formatdatetime('yyyy-MM-dd',dateedit2.date);
        end;
        //ppsummaryband10.Visible:=false;
        frmshvplusgai.dt018.Caption:=formatdatetime('yyyy-MM-dd',dateedit1.date);
        frmshvplusgai.dt028.Caption:=formatdatetime('yyyy-MM-dd',dateedit2.date);
        frmshvplusgai.ppReport8.Print;
      end;
    end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmcustomer.BitBtn8Click(Sender: TObject);
var
  dt1,dt2:tdate;
begin
  screen.Cursor:=crSQLWait;
  try
    if DateEdit1.date>0 then dt1:=DateEdit1.date
    else dt1:=encodedate(2005,1,1);
    if DateEdit2.Date>0 then dt2:=DateEdit2.date
    else dt2:=encodedate(2020,12,31);
    if combobox1.text>'' then begin
      if frmcuststyleshv=nil then frmcuststyleshv:=tfrmcuststyleshv.create(nil);
      frmcuststyleshv.show;
    end else begin
      //summary report
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='execute procedure SP_GENTEMPPRJBD_RPT_STYLE_SUMMARY(:x1,:x2,:x3)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        if combobox6.text<>'KBT' then
        params[2].asstring:=combobox6.text
        else params[2].asstring:='KB';
        execute;
      end;
      with query13 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_3_1_SUMMARY_1(:x1,:x2,:x3)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        if combobox6.text<>'KBT' then
        params[2].asstring:=combobox6.text
        else params[2].asstring:='KB';
        open;
      end;
      with query14 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_3_1_SUMMARY_2(:x1,:x2,:x3)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        if combobox6.text<>'KBT' then
        params[2].asstring:=combobox6.text
        else params[2].asstring:='KB';
        open;
      end;
      with query12 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='select * from SP_GENTEMPPRJBD_RPT_3_1_SUMMARY(:x1,:x2,:x3)';
        params[0].asdate:=dt1;
        params[1].asdate:=dt2;
        if combobox6.text<>'KBT' then
        params[2].asstring:=combobox6.text
        else params[2].asstring:='KB';
        open;
        if not fieldbyname('tplant').isnull then begin
          dt00001.Caption:=formatdatetime('yyyy-MM-dd',dt1);
          dt00002.Caption:=formatdatetime('yyyy-MM-dd',dt2);
          ppReport9.Print;
        end;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmcustomer.BitBtn9Click(Sender: TObject);
begin
  if frmcust_budge=nil then frmcust_budge:=tfrmcust_budge.create(nil);
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='execute procedure sp_get_custbudge(:x1,:x2)';
    params[0].asstring:=query2.FieldByName('tplant').value;
    params[1].asstring:=query2.FieldByName('cust').value;
    execute;
  end;
  with query3 do begin
    close;
    params.clear;
    commandtext:='select * from cust_logistic_budge';
    open;
    frmcust_budge.dbgrideh1.columns[4].title.caption:='Budgeted Logistic Cost|'+FieldByName('y1').asstring+'| ';
    frmcust_budge.dbgrideh1.columns[5].title.caption:='Budgeted Logistic Cost|'+FieldByName('y1').asstring+'|Extra Inland Cost';
    frmcust_budge.dbgrideh1.columns[6].title.caption:='Budgeted Logistic Cost|'+FieldByName('y2').asstring+'| ';
    frmcust_budge.dbgrideh1.columns[7].title.caption:='Budgeted Logistic Cost|'+FieldByName('y2').asstring+'|Extra Inland Cost';
    frmcust_budge.dbgrideh1.columns[8].title.caption:='Budgeted Logistic Cost|'+FieldByName('y3').asstring+'| ';
    frmcust_budge.dbgrideh1.columns[9].title.caption:='Budgeted Logistic Cost|'+FieldByName('y3').asstring+'|Extra Inland Cost';
    frmcust_budge.dbgrideh1.columns[10].title.caption:='Budgeted Logistic Cost|'+FieldByName('y4').asstring+'| ';
    frmcust_budge.dbgrideh1.columns[11].title.caption:='Budgeted Logistic Cost|'+FieldByName('y4').asstring+'|Extra Inland Cost';
  end;
  with frmcust_budge.Query1 do begin
    close;
    params.Clear;
    commandtext:='select * from cust_logistic_budget where tplant='''+query2.FieldByName('tplant').value+''' and cust='''+query2.FieldByName('cust').value+'''';
    open;
  end;
  frmcust_budge.Show;
end;

procedure Tfrmcustomer.ppTitleBand3BeforePrint(Sender: TObject);
begin
  if withstyle='0' then pplabel361.Caption:='Name'
  else if withstyle='1' then pplabel361.Caption:='Name / Style#';
end;

procedure Tfrmcustomer.ppReport9PreviewFormCreate(Sender: TObject);
begin
  ppReport9.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport9.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmcustomer.ppDetailBand17BeforePrint(Sender: TObject);
begin
  //
  if query12.fieldbyname('sah1').value>query12.fieldbyname('lb6shv').value then ppdbtext386.Font.Color:=clGreen
  else if query12.fieldbyname('sah1').value<query12.fieldbyname('lb6shv').value then ppdbtext386.Font.Color:=clRed
  else ppdbtext386.Font.Color:=clBlack;
  if query12.fieldbyname('eff3').value>100.00 then ppdbtext389.Font.color:=clGreen
  else if query12.fieldbyname('eff3').value<100.00 then ppdbtext389.Font.Color:=clRed
  else ppdbtext389.Font.Color:=clBlack;
  if query12.fieldbyname('diff').value<0 then d0003.Font.Color:=clGreen
  else if query12.fieldbyname('diff').value>0 then d0003.Font.Color:=clRed
  else d0003.Font.Color:=clBlack;
  lb43wf04.Caption:=formatfloat('0.0',query12.fieldbyname('lb4wf').value-query12.fieldbyname('lb3wf').value);
  if query12.fieldbyname('lb4wf').value<query12.fieldbyname('lb3wf').value then
    lb43wf04.Font.Color:=clGreen
  else if query12.fieldbyname('lb4wf').value>query12.fieldbyname('lb3wf').value then
    lb43wf04.Font.Color:=clRed
  else lb43wf04.Font.Color:=clBlack;
  if query12.fieldbyname('eff2').value>0 then begin
    if query12.fieldbyname('lb6shv').value>0 then
    plus004.Caption:=formatfloat('0.00',(query12.fieldbyname('eff2').value-query12.fieldbyname('lb6shv').value)*100.00/query12.fieldbyname('lb6shv').value)
    else plus004.caption:='0.00';
  end else plus004.Caption:='';
  if query12.fieldbyname('eff2').value>query12.fieldbyname('lb6shv').value then
    plus004.Font.Color:=clRed
  else if query12.fieldbyname('eff2').value<query12.fieldbyname('lb6shv').value then
    plus004.Font.Color:=clGreen
  else plus004.Font.Color:=clBlack;
end;

procedure Tfrmcustomer.ppDetailBand18BeforePrint(Sender: TObject);
begin
  if query13.fieldbyname('sah1').value>query13.fieldbyname('lb6shv').value then ppdbtext409.Font.Color:=clGreen
  else if query13.fieldbyname('sah1').value<query13.fieldbyname('lb6shv').value then ppdbtext409.Font.Color:=clRed
  else ppdbtext409.Font.Color:=clBlack;
  if query13.fieldbyname('eff3').value>100.00 then ppdbtext412.Font.color:=clGreen
  else if query13.fieldbyname('eff3').value<100.00 then ppdbtext412.Font.Color:=clRed
  else ppdbtext412.Font.Color:=clBlack;
  if query13.fieldbyname('diff').value<0 then d0033.Font.Color:=clGreen
  else if query13.fieldbyname('diff').value>0 then d0033.Font.Color:=clRed
  else d0033.Font.Color:=clBlack;
  lb43wf001.Caption:=formatfloat('0.0',query13.fieldbyname('lb4wf').value-query13.fieldbyname('lb3wf').value);
  if query13.fieldbyname('lb4wf').value<query13.fieldbyname('lb3wf').value then
    lb43wf001.Font.Color:=clGreen
  else if query13.fieldbyname('lb4wf').value>query13.fieldbyname('lb3wf').value then
    lb43wf001.Font.Color:=clRed
  else lb43wf001.Font.Color:=clBlack;
  if query13.fieldbyname('eff2').value>0 then begin
    if query13.fieldbyname('lb6shv').value>0 then
    plus001.Caption:=formatfloat('0.00',(query13.fieldbyname('eff2').value-query13.fieldbyname('lb6shv').value)*100.00/query13.fieldbyname('lb6shv').value)
    else plus001.caption:='0.00';
  end else plus001.Caption:='';
  if query13.fieldbyname('eff2').value>query13.fieldbyname('lb6shv').value then
    plus001.Font.Color:=clRed
  else if query13.fieldbyname('eff2').value<query13.fieldbyname('lb6shv').value then
    plus001.Font.Color:=clGreen
  else plus001.Font.Color:=clBlack;
end;

procedure Tfrmcustomer.ppSummaryBand14BeforePrint(Sender: TObject);
begin
  if query14.fieldbyname('sah1').value>query14.fieldbyname('lb6shv').value then ppdbtext428.Font.Color:=clGreen
  else if query14.fieldbyname('sah1').value<query14.fieldbyname('lb6shv').value then ppdbtext428.Font.Color:=clRed
  else ppdbtext428.Font.Color:=clBlack;
  if query14.fieldbyname('eff3').value>100.00 then ppdbtext431.Font.color:=clGreen
  else if query14.fieldbyname('eff3').value<100.00 then ppdbtext431.Font.Color:=clRed
  else ppdbtext431.Font.Color:=clBlack;
  if query14.fieldbyname('diff').value<0 then d0034.Font.Color:=clGreen
  else if query14.fieldbyname('diff').value>0 then d0034.Font.Color:=clRed
  else d0034.Font.Color:=clBlack;
  lb43wf002.Caption:=formatfloat('0.0',query14.fieldbyname('lb4wf').value-query14.fieldbyname('lb3wf').value);
  if query14.fieldbyname('lb4wf').value<query14.fieldbyname('lb3wf').value then
    lb43wf002.Font.Color:=clGreen
  else if query14.fieldbyname('lb4wf').value>query14.fieldbyname('lb3wf').value then
    lb43wf002.Font.Color:=clRed
  else lb43wf002.Font.Color:=clBlack;
  if query14.fieldbyname('eff2').value>0 then begin
    if query14.fieldbyname('lb6shv').value>0 then
    plus002.Caption:=formatfloat('0.00',(query14.fieldbyname('eff2').value-query14.fieldbyname('lb6shv').value)*100.00/query14.fieldbyname('lb6shv').value)
    else plus002.caption:='0.00';
  end else plus002.Caption:='';
  if query14.fieldbyname('eff2').value>query14.fieldbyname('sah0').value then
    plus002.Font.Color:=clRed
  else if query14.fieldbyname('eff2').value<query14.fieldbyname('lb6shv').value then
    plus002.Font.Color:=clGreen
  else plus002.Font.Color:=clBlack;
end;

procedure Tfrmcustomer.BitBtn11Click(Sender: TObject);
var
  tplant:string;
begin
  if combobox6.text<>'KBT' then tplant:=combobox6.text else tplant:='KB';
  if frmprojeff_cust=nil then frmprojeff_cust:=tfrmprojeff_cust.Create(nil);
  with frmprojeff_cust.Query1 do begin
    close;
    params.clear;
    commandtext:='select * from cust_projeff where tplant='''+tplant+'''';
    if combobox1.text>'' then commandtext:=commandtext+' and cusn40='''+combobox1.text+'''';
    open;
  end;
  frmprojeff_cust.Show;
end;

procedure Tfrmcustomer.BitBtn13Click(Sender: TObject);
var
  yrstk:integer;
begin
  yrstk:=yearof(date);
  if frmcust_matindex=nil then frmcust_matindex:=tfrmcust_matindex.create(nil);
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='execute procedure sp_get_matindex(:x1,:x2)';
    params[0].asstring:=query2.FieldByName('tplant').value;
    params[1].asstring:=query2.FieldByName('cust').value;
    execute;
  end;
  frmcust_matindex.dbgrideh1.columns[2].title.caption:='Year '+inttostr(yrstk-3)+' and before';
  frmcust_matindex.dbgrideh1.columns[3].title.caption:='Year '+inttostr(yrstk-2);//2020';
  frmcust_matindex.dbgrideh1.columns[4].title.caption:='Year '+inttostr(yrstk-1);//2021';
  frmcust_matindex.dbgrideh1.columns[5].title.caption:='Year '+inttostr(yrstk);//2022';
  with frmcust_matindex.Query1 do begin
    close;
    params.Clear;
    commandtext:='select * from cust_mat_index where tplant='''+query2.FieldByName('tplant').value+''' and cust='''+query2.FieldByName('cust').value+'''';
    open;
  end;
  frmcust_matindex.Show;
end;

procedure Tfrmcustomer.BitBtn14Click(Sender: TObject);
begin
  if frmcust_qtyratio=nil then frmcust_qtyratio:=tfrmcust_qtyratio.create(nil);
  with frmcust_qtyratio.Query1 do begin
    close;
    params.Clear;
    commandtext:='select * from cust_exfty_qtyratio where tplant='''+query2.FieldByName('tplant').value+''' and cust='''+query2.FieldByName('pgrp').value+'''';
    open;
  end;
  frmcust_qtyratio.Show;
end;

procedure Tfrmcustomer.BitBtn16Click(Sender: TObject);
begin
  if (qry_details.state=dsedit) or (qry_details.state=dsinsert) then qry_details.post;
end;

procedure Tfrmcustomer.BitBtn18Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tfrmcustomer.BitBtn19Click(Sender: TObject);
begin
  qry_details.append;
  cxGrid1.setfocus;
end;

end.
