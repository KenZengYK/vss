unit Carte_OrdprocessingFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, RzBckgnd,
  cxGridBandedTableView, cxGridDBBandedTableView, ADODB, cxButtonEdit, StdCtrls,
  Buttons, cxCalendar, cxGridExportLink, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppParameter, ppProd, ppClass, ppReport, ppBands,
  ppCache, ppPrnabl, ppCtrls, ppViewr, ppVar, ppStrtch,
  ppMemo, cxDropDownEdit, Mask, rxToolEdit, RXSpin, RzPanel, ppSubRpt, ppRichTx,
  cxContainer, cxTextEdit, cxMaskEdit, cxCheckComboBox, Menus, ShellApi, cxMemo,
  siComp, cxCurrencyEdit, cxCheckBox, DateUtils;

type
  TfrmCarte_Ordprocessing = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    RzBackground1: TRzBackground;
    RzBackground2: TRzBackground;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    cxGrid1BandedTableView1: TcxGridBandedTableView;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1keycode: TcxGridDBBandedColumn;
    cxGrid1projectno: TcxGridDBBandedColumn;
    cxGrid1custpo: TcxGridDBBandedColumn;
    cxGrid1custstyle: TcxGridDBBandedColumn;
    cxGrid1custcolor: TcxGridDBBandedColumn;
    cxGrid1qty: TcxGridDBBandedColumn;
    cxGrid1ct_he1: TcxGridDBBandedColumn;
    cxGrid1ct_pp1: TcxGridDBBandedColumn;
    cxGrid1m_start: TcxGridDBBandedColumn;
    cxGrid1m_end: TcxGridDBBandedColumn;
    cxGrid1fwdt_o: TcxGridDBBandedColumn;
    cxGrid1fwdt_a: TcxGridDBBandedColumn;
    cxGrid1ex_o: TcxGridDBBandedColumn;
    cxGrid1ex_r: TcxGridDBBandedColumn;
    cxGrid1ex_l: TcxGridDBBandedColumn;
    cxGrid1mex_os: TcxGridDBBandedColumn;
    cxGrid1mex_rs: TcxGridDBBandedColumn;
    cxGrid1act_item: TcxGridDBBandedColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    ComboBox4: TComboBox;
    Label6: TLabel;
    ComboBox6: TComboBox;
    chk3: TCheckBox;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    cxGrid1workorderno: TcxGridDBBandedColumn;
    cxGrid1phcolor: TcxGridDBBandedColumn;
    cxGrid1ct_raw1: TcxGridDBBandedColumn;
    cxGrid1prod_site: TcxGridDBBandedColumn;
    cxGrid1qty1: TcxGridDBBandedColumn;
    cxGrid1mex_ls: TcxGridDBBandedColumn;
    cxGrid1mex_oe: TcxGridDBBandedColumn;
    cxGrid1mex_re: TcxGridDBBandedColumn;
    cxGrid1mex_le: TcxGridDBBandedColumn;
    ppDBPipeline2: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    mex100: TppLabel;
    ppLabel33: TppLabel;
    ppLabel37: TppLabel;
    mex101: TppLabel;
    ppLabel50: TppLabel;
    mex102: TppLabel;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    mex104: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    mex108: TppLabel;
    ppLabel61: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    mex107: TppLabel;
    ppLabel67: TppLabel;
    ppLabel71: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLine29: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine39: TppLine;
    ppLine53: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine64: TppLine;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    mex1001: TppShape;
    ppSystemVariable3: TppSystemVariable;
    ppLine59: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLine60: TppLine;
    ppLabel72: TppLabel;
    ppLine61: TppLine;
    ppLabel75: TppLabel;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel74: TppLabel;
    ppLabel76: TppLabel;
    ppLine65: TppLine;
    ppLabel77: TppLabel;
    ppLine66: TppLine;
    ppShape18: TppShape;
    ppLine68: TppLine;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLine69: TppLine;
    ppLabel87: TppLabel;
    ppLabel89: TppLabel;
    ppShape20: TppShape;
    ppLabel90: TppLabel;
    ppLabel92: TppLabel;
    ppLabel94: TppLabel;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLabel95: TppLabel;
    ppLine73: TppLine;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel99: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    oskey001: TppDBText;
    ppLine76: TppLine;
    ppDBText15: TppDBText;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLabel34: TppLabel;
    ppLine80: TppLine;
    ppShape19: TppShape;
    ppLabel53: TppLabel;
    ppLabel88: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppDBText12: TppDBText;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine94: TppLine;
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
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText22: TppDBText;
    ppDBText24: TppDBText;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText34: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    mexd103: TppDBText;
    mexd106: TppDBText;
    cxGrid1sp_app2: TcxGridDBBandedColumn;
    cxGrid1rwo_wo: TcxGridDBBandedColumn;
    ppLine105: TppLine;
    ppLine106: TppLine;
    he001: TppLabel;
    pp001: TppLabel;
    ppShape27: TppShape;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppDBText25: TppDBText;
    Label3: TLabel;
    ComboBox3: TComboBox;
    Label5: TLabel;
    ComboBox5: TComboBox;
    Label7: TLabel;
    DateEdit1: TDateEdit;
    Label8: TLabel;
    DateEdit2: TDateEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    cxGrid1ex_a: TcxGridDBBandedColumn;
    cxGrid1qty1_sp: TcxGridDBBandedColumn;
    ppLine109: TppLine;
    ppDBText46: TppDBText;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ex_adt03: TppDBText;
    ex_adt01: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLine113: TppLine;
    ppLine114: TppLine;
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
    ppLine134: TppLine;
    ppLine135: TppLine;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppLine142: TppLine;
    ppShape29: TppShape;
    ppDBCalc1: TppDBCalc;
    prj001: TppLabel;
    custpo001: TppLabel;
    wo001: TppLabel;
    custstyle001: TppLabel;
    sp_app001: TppLabel;
    custcolor001: TppLabel;
    phcolor001: TppLabel;
    ppDBCalc3: TppDBCalc;
    m_start001: TppLabel;
    fwdt_o001: TppLabel;
    fwdt_a001: TppLabel;
    ex_o001: TppLabel;
    act_item001: TppLabel;
    ppLabel12: TppLabel;
    ADOQuery3: TADOQuery;
    prod_site001: TppLabel;
    RzStatusBar1: TRzStatusBar;
    cxGrid1ddt: TcxGridDBBandedColumn;
    cxGrid1act_cmpdt: TcxGridDBBandedColumn;
    ppLabel91: TppLabel;
    ex_adt02: TppLabel;
    ppLine143: TppLine;
    cxGrid1mex_od: TcxGridDBBandedColumn;
    cxGrid1mex_rd: TcxGridDBBandedColumn;
    cxGrid1mex_ld: TcxGridDBBandedColumn;
    md001: TppLabel;
    ppLine144: TppLine;
    ppLabel1: TppLabel;
    ppLine145: TppLine;
    ppDBText9: TppDBText;
    ppLine146: TppLine;
    title002: TppLabel;
    ADOQuery4: TADOQuery;
    DataSource3: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppHeaderBand3: TppHeaderBand;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppDBText1: TppDBText;
    ppDBText27: TppDBText;
    ppDBText47: TppDBText;
    ppLabel98: TppLabel;
    ppShape31: TppShape;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppShape32: TppShape;
    ppLine168: TppLine;
    ppLine169: TppLine;
    ppLine170: TppLine;
    ppLine171: TppLine;
    ComboBox7: TComboBox;
    Label11: TLabel;
    cxGrid1div: TcxGridDBBandedColumn;
    Label12: TLabel;
    ComboBox8: TComboBox;
    chk5: TCheckBox;
    cxGrid1ord_cancel1: TcxGridDBBandedColumn;
    BitBtn7: TBitBtn;
    title201: TppRichText;
    BitBtn8: TBitBtn;
    cxComboBox1: TcxCheckComboBox;
    cxGrid1custpo_dt: TcxGridDBBandedColumn;
    Label14: TLabel;
    DateEdit3: TDateEdit;
    Label15: TLabel;
    chk1: TCheckBox;
    cxGrid1line_tno: TcxGridDBBandedColumn;
    ppLabel14: TppLabel;
    ppLabel17: TppLabel;
    ppLine172: TppLine;
    ppLabel21: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    ppLine173: TppLine;
    ppDBText5: TppDBText;
    ppReport3: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppShape38: TppShape;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppShape44: TppShape;
    ppShape45: TppShape;
    ppShape46: TppShape;
    ppLabel31: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel32: TppLabel;
    ppLabel42: TppLabel;
    ppLabel51: TppLabel;
    ppLabel55: TppLabel;
    ppLine175: TppLine;
    ppLine180: TppLine;
    ppLine181: TppLine;
    ppLine182: TppLine;
    ppLabel62: TppLabel;
    ppLine183: TppLine;
    ppLabel66: TppLabel;
    ppLabel116: TppLabel;
    ppLine184: TppLine;
    ppLabel118: TppLabel;
    ppLine185: TppLine;
    ppLine189: TppLine;
    ppLine190: TppLine;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    title0002: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLine196: TppLine;
    ppLine197: TppLine;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLine198: TppLine;
    ppLabel147: TppLabel;
    ppLabel150: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLine199: TppLine;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLine200: TppLine;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppRichText2: TppRichText;
    ppLine201: TppLine;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLine202: TppLine;
    ppDetailBand4: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText14: TppDBText;
    ppDBText41: TppDBText;
    ppLine205: TppLine;
    ppLine206: TppLine;
    ppLine210: TppLine;
    ppLine211: TppLine;
    ppLine212: TppLine;
    ppLine213: TppLine;
    ppLine214: TppLine;
    ppLine215: TppLine;
    ppDBText45: TppDBText;
    ppLine219: TppLine;
    ppDBText49: TppDBText;
    ppLine220: TppLine;
    ppDBText50: TppDBText;
    ppLine221: TppLine;
    ppLine222: TppLine;
    ppDBText51: TppDBText;
    ppDBText54: TppDBText;
    ppLine225: TppLine;
    ppDBText56: TppDBText;
    ppLine226: TppLine;
    ppDBText57: TppDBText;
    ppLine227: TppLine;
    ppLine228: TppLine;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppShape47: TppShape;
    ppLine229: TppLine;
    ppLine230: TppLine;
    ppLine231: TppLine;
    ppLine232: TppLine;
    ppLine233: TppLine;
    ppLine234: TppLine;
    ppLine238: TppLine;
    ppLine240: TppLine;
    ppLine242: TppLine;
    ppLine244: TppLine;
    ppLabel164: TppLabel;
    ppLine248: TppLine;
    projectno003: TppLabel;
    custpo003: TppLabel;
    custstyle003: TppLabel;
    custcolor003: TppLabel;
    ppLine249: TppLine;
    keycode003: TppLabel;
    ppLine250: TppLine;
    ppParameterList3: TppParameterList;
    ppLabel137: TppLabel;
    ppShape39: TppShape;
    ppLine204: TppLine;
    ppLabel175: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel189: TppLabel;
    ppLabel192: TppLabel;
    ppLine194: TppLine;
    ppLine217: TppLine;
    ppLine223: TppLine;
    ppLine251: TppLine;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLabel200: TppLabel;
    ppLabel206: TppLabel;
    ppLabel209: TppLabel;
    ppLine252: TppLine;
    ppLine254: TppLine;
    ppLine255: TppLine;
    ppLabel212: TppLabel;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppLabel215: TppLabel;
    ppLine257: TppLine;
    ppLabel216: TppLabel;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLabel219: TppLabel;
    ppLine259: TppLine;
    ppLine261: TppLine;
    qnx001: TppDBText;
    ppLine263: TppLine;
    ppLine256: TppLine;
    ppLine266: TppLine;
    ppLine267: TppLine;
    ppLine269: TppLine;
    ppLine270: TppLine;
    ppLine271: TppLine;
    ppLine272: TppLine;
    ppLine273: TppLine;
    ppLine275: TppLine;
    ppLine276: TppLine;
    ppLine277: TppLine;
    ppLine279: TppLine;
    ppLine280: TppLine;
    ppLine281: TppLine;
    ppLine283: TppLine;
    ppLine285: TppLine;
    ppLine286: TppLine;
    ppLine290: TppLine;
    ppLine291: TppLine;
    ppDBText44: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    q1dt1001: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppLine188: TppLine;
    ppLine207: TppLine;
    ppLine235: TppLine;
    ppLine236: TppLine;
    ppLine237: TppLine;
    ppLine258: TppLine;
    ppLabel65: TppLabel;
    ppLine260: TppLine;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppDBText11: TppDBText;
    ppShape53: TppShape;
    qnqty001: TppLabel;
    qnqty002: TppLabel;
    cxGrid1m_ddt: TcxGridDBBandedColumn;
    bqty001: TppLabel;
    cxGrid1qty_short: TcxGridDBBandedColumn;
    ppLine72: TppLine;
    ppLine93: TppLine;
    ppLine136: TppLine;
    ppLabel151: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLine292: TppLine;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    m_ddt001: TppLabel;
    m_end001: TppLabel;
    ex_or001: TppLabel;
    mex_or001: TppLabel;
    mex103: TppLabel;
    mex_or002: TppLabel;
    ppLine38: TppLine;
    ppLine67: TppLine;
    ppLabel58: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel176: TppLabel;
    ppDBText29: TppDBText;
    ppLabel15: TppLabel;
    ppLabel25: TppLabel;
    ppDBText10: TppDBText;
    ppDBText32: TppDBText;
    ppLine19: TppLine;
    ppLine24: TppLine;
    ppLine31: TppLine;
    ppLabel49: TppLabel;
    ppShape51: TppShape;
    workorder003: TppLabel;
    ppLabel60: TppLabel;
    ppLabel119: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppDBText33: TppDBText;
    ppLine32: TppLine;
    ppLine90: TppLine;
    ppLine130: TppLine;
    ppLine133: TppLine;
    ppLabel131: TppLabel;
    ppLine153: TppLine;
    ppLine157: TppLine;
    ppLine186: TppLine;
    ppLine187: TppLine;
    ppLine191: TppLine;
    ppLine193: TppLine;
    ppLabel59: TppLabel;
    ppLabel134: TppLabel;
    ppLabel172: TppLabel;
    ppLine195: TppLine;
    ppLine203: TppLine;
    ppLine208: TppLine;
    ppLine216: TppLine;
    ppLabel177: TppLabel;
    ppLabel184: TppLabel;
    ppLine218: TppLine;
    ppLine224: TppLine;
    ppDBText43: TppDBText;
    q_tqty001: TppLabel;
    mex_or2001: TppLabel;
    mex_or2002: TppLabel;
    m_ddt2001: TppLabel;
    ppShape55: TppShape;
    ppShape56: TppShape;
    Label16: TLabel;
    DateEdit4: TDateEdit;
    Label17: TLabel;
    DateEdit5: TDateEdit;
    Bevel1: TBevel;
    BitBtn9: TBitBtn;
    cxGrid1act_cmpdt0: TcxGridDBBandedColumn;
    ex_adt003: TppLabel;
    PopupMenu1: TPopupMenu;
    BitBtn10: TBitBtn;
    ppReport4: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppShape57: TppShape;
    ppShape58: TppShape;
    ppShape62: TppShape;
    ppShape65: TppShape;
    ppShape66: TppShape;
    ppShape68: TppShape;
    ppShape69: TppShape;
    ppShape70: TppShape;
    ppShape71: TppShape;
    ppShape72: TppShape;
    ppShape73: TppShape;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppLabel190: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel205: TppLabel;
    ppLabel211: TppLabel;
    ppLabel220: TppLabel;
    ppLabel221: TppLabel;
    ppLabel222: TppLabel;
    ppLabel223: TppLabel;
    ppLabel224: TppLabel;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppLine241: TppLine;
    ppLine245: TppLine;
    ppLine246: TppLine;
    ppLine262: TppLine;
    ppLine274: TppLine;
    ppLine284: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppLabel228: TppLabel;
    ppLabel229: TppLabel;
    ppLabel235: TppLabel;
    ppLine297: TppLine;
    ppLine298: TppLine;
    ppLabel236: TppLabel;
    ppLabel237: TppLabel;
    ppLine299: TppLine;
    ppLabel238: TppLabel;
    ppLabel239: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLine300: TppLine;
    ppLine301: TppLine;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppLine304: TppLine;
    ppLine305: TppLine;
    ppLabel250: TppLabel;
    ppLine306: TppLine;
    ppLabel251: TppLabel;
    ppLine307: TppLine;
    ppLabel257: TppLabel;
    ppLabel258: TppLabel;
    ppLabel259: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLine309: TppLine;
    ppLabel263: TppLabel;
    ppRichText3: TppRichText;
    ppLine311: TppLine;
    ppLabel272: TppLabel;
    ppLabel273: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppShape74: TppShape;
    ppDBText62: TppDBText;
    ppLine314: TppLine;
    ppDBText63: TppDBText;
    ppLine315: TppLine;
    ppLine316: TppLine;
    ppDBText64: TppDBText;
    ppLine317: TppLine;
    ppLine318: TppLine;
    ppLine320: TppLine;
    ppLine321: TppLine;
    ppLine323: TppLine;
    ppLine324: TppLine;
    ppLine326: TppLine;
    ppLine328: TppLine;
    ppLine329: TppLine;
    ppLine330: TppLine;
    ppLine331: TppLine;
    ppLine333: TppLine;
    ppLine334: TppLine;
    ppLine335: TppLine;
    ppLine337: TppLine;
    ppDBText65: TppDBText;
    ppDBText69: TppDBText;
    ppDBText75: TppDBText;
    ppDBText78: TppDBText;
    ppDBText83: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppLine338: TppLine;
    ppDBText90: TppDBText;
    ppLine341: TppLine;
    ppLine343: TppLine;
    ex_or4001: TppLabel;
    ppLine344: TppLine;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppShape75: TppShape;
    ppLine346: TppLine;
    ppLine347: TppLine;
    ppLine349: TppLine;
    ppLine350: TppLine;
    ppLine353: TppLine;
    ppLine354: TppLine;
    ppLine355: TppLine;
    ppLine356: TppLine;
    ppLine357: TppLine;
    ppLine359: TppLine;
    ppLine360: TppLine;
    ppLine362: TppLine;
    ppLine363: TppLine;
    ppLine365: TppLine;
    ppLine368: TppLine;
    ppLine369: TppLine;
    ppLine370: TppLine;
    prj4001: TppLabel;
    custpo4001: TppLabel;
    wo4001: TppLabel;
    custstyle4001: TppLabel;
    custcolor4001: TppLabel;
    phcolor4001: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppLine373: TppLine;
    ppLine379: TppLine;
    ppLine380: TppLine;
    ppParameterList4: TppParameterList;
    ADODataSet2: TADODataSet;
    DataSource4: TDataSource;
    ppDBPipeline4: TppDBPipeline;
    projectno001: TppLabel;
    ppLabel240: TppLabel;
    ppLabel243: TppLabel;
    ppLabel252: TppLabel;
    ppShape59: TppShape;
    ppLine253: TppLine;
    ppLine302: TppLine;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    mddt001: TppLabel;
    m_ddt002: TppLabel;
    m_end002: TppLabel;
    ppLabel255: TppLabel;
    ppLabel262: TppLabel;
    ppLabel270: TppLabel;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppLine312: TppLine;
    ppLine319: TppLine;
    ppLine327: TppLine;
    ppShape63: TppShape;
    ppLabel22: TppLabel;
    Label19: TLabel;
    ppLabel271: TppLabel;
    ppDBText79: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBText80: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppDBText81: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppDBText82: TppDBText;
    ppDBText84: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppLine115: TppLine;
    ppLine116: TppLine;
    ppLine129: TppLine;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppLine174: TppLine;
    ppLine243: TppLine;
    ppDBText88: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppDBText89: TppDBText;
    ppDBCalc8: TppDBCalc;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel191: TppLabel;
    ppLabel199: TppLabel;
    cxGrid1ddt0: TcxGridDBBandedColumn;
    cxGrid1m_ddt0: TcxGridDBBandedColumn;
    cxGrid1mcup_ddt: TcxGridDBBandedColumn;
    cxGrid1mcup_ddt0: TcxGridDBBandedColumn;
    cxGrid1mcup_mddt: TcxGridDBBandedColumn;
    cxGrid1mcup_mddt0: TcxGridDBBandedColumn;
    cxGrid1mcup_mstart: TcxGridDBBandedColumn;
    cxGrid1mcup_mend: TcxGridDBBandedColumn;
    ppDBText104: TppDBText;
    ppLine264: TppLine;
    ppDBText105: TppDBText;
    ppLine265: TppLine;
    ppDBCalc15: TppDBCalc;
    ppLine268: TppLine;
    ppLine278: TppLine;
    ppLine288: TppLine;
    ppLine289: TppLine;
    ppLine293: TppLine;
    ppLine294: TppLine;
    ppLine295: TppLine;
    ppLabel201: TppLabel;
    ppLabel202: TppLabel;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppDBText108: TppDBText;
    ppDBCalc17: TppDBCalc;
    dt001: TppLabel;
    dt002: TppLabel;
    dt011: TppLabel;
    dt012: TppLabel;
    dt021: TppLabel;
    dt031: TppLabel;
    dt022: TppLabel;
    dt032: TppLabel;
    dt041: TppLabel;
    dt051: TppLabel;
    dt061: TppLabel;
    dt071: TppLabel;
    dt042: TppLabel;
    dt052: TppLabel;
    dt062: TppLabel;
    dt072: TppLabel;
    dt081: TppLabel;
    dt082: TppLabel;
    ComboBox2: TcxCheckComboBox;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    cxGrid1mex_od0: TcxGridDBBandedColumn;
    cxGrid1ds_wa_1: TcxGridDBBandedColumn;
    cxGrid1mex_ld0: TcxGridDBBandedColumn;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppLabel210: TppLabel;
    ppShape17: TppShape;
    ADODataSet3: TADODataSet;
    DataSource5: TDataSource;
    ppDBPipeline5: TppDBPipeline;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand6: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    ex_or4002: TppLabel;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    ppDBText115: TppDBText;
    keycode4002: TppDBText;
    ppDBText117: TppDBText;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppDBText124: TppDBText;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppLine87: TppLine;
    ppLine296: TppLine;
    ppLine303: TppLine;
    ppLine308: TppLine;
    ppLine310: TppLine;
    ppLine313: TppLine;
    ppLine322: TppLine;
    ppLine325: TppLine;
    ppLine332: TppLine;
    ppLine336: TppLine;
    ppLine339: TppLine;
    ppLine340: TppLine;
    ppLine342: TppLine;
    ppLine345: TppLine;
    ppLine348: TppLine;
    ppLine351: TppLine;
    ppLine352: TppLine;
    ppLine358: TppLine;
    ppLine361: TppLine;
    ppLine364: TppLine;
    ppLine366: TppLine;
    ppLine367: TppLine;
    ppLine371: TppLine;
    ppLine372: TppLine;
    ppLine374: TppLine;
    ppLine375: TppLine;
    ppLine376: TppLine;
    ppShape60: TppShape;
    ppHeaderBand6: TppHeaderBand;
    custcolor4002: TppLabel;
    custpo4002: TppLabel;
    custstyle4002: TppLabel;
    phcolor4002: TppLabel;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppLabel234: TppLabel;
    ppLabel256: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppLine377: TppLine;
    ppLine378: TppLine;
    ppLine381: TppLine;
    ppLine382: TppLine;
    ppLine383: TppLine;
    ppLine384: TppLine;
    ppLine385: TppLine;
    ppLine386: TppLine;
    ppLine387: TppLine;
    ppLine388: TppLine;
    ppLine389: TppLine;
    ppLine390: TppLine;
    ppLine391: TppLine;
    ppLine392: TppLine;
    ppLine393: TppLine;
    ppLine394: TppLine;
    ppLine395: TppLine;
    ppLine396: TppLine;
    ppLine397: TppLine;
    ppLine398: TppLine;
    ppLine399: TppLine;
    ppLine400: TppLine;
    ppLine401: TppLine;
    ppLine402: TppLine;
    ppShape61: TppShape;
    prj4002: TppLabel;
    wo4002: TppLabel;
    ppLabel230: TppLabel;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppDBText106: TppDBText;
    ppDBCalc16: TppDBCalc;
    ppDBText107: TppDBText;
    ppDBCalc24: TppDBCalc;
    ppLabel233: TppLabel;
    percent4001: TppLabel;
    ppLine403: TppLine;
    percent4002: TppLabel;
    ppLine404: TppLine;
    percent4003: TppLabel;
    ppLine405: TppLine;
    percent4004: TppLabel;
    ppLine406: TppLine;
    ppReport5: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppShape64: TppShape;
    ppShape67: TppShape;
    ppShape76: TppShape;
    ppShape77: TppShape;
    ppShape78: TppShape;
    ppShape79: TppShape;
    ppShape80: TppShape;
    ppShape81: TppShape;
    ppShape82: TppShape;
    ppShape83: TppShape;
    ppShape84: TppShape;
    ppShape85: TppShape;
    ppShape86: TppShape;
    ppShape87: TppShape;
    ppShape88: TppShape;
    ppShape89: TppShape;
    ppShape90: TppShape;
    ppLabel227: TppLabel;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppLabel266: TppLabel;
    ppLabel267: TppLabel;
    ppLabel268: TppLabel;
    ppLabel269: TppLabel;
    ppLabel274: TppLabel;
    ppLabel277: TppLabel;
    ppLabel278: TppLabel;
    ppLabel279: TppLabel;
    ppLabel280: TppLabel;
    ppLabel281: TppLabel;
    ppLabel282: TppLabel;
    ppLabel283: TppLabel;
    ppLabel284: TppLabel;
    ppLabel285: TppLabel;
    ppLabel286: TppLabel;
    ppLabel287: TppLabel;
    ppLabel288: TppLabel;
    ppLabel289: TppLabel;
    ppLabel290: TppLabel;
    ppLabel291: TppLabel;
    ppLabel292: TppLabel;
    ppLabel293: TppLabel;
    ppLine407: TppLine;
    ppLine408: TppLine;
    ppLine409: TppLine;
    ppLine410: TppLine;
    ppLine411: TppLine;
    ppLine412: TppLine;
    ppLine413: TppLine;
    ppLine414: TppLine;
    ppLine415: TppLine;
    ppLine416: TppLine;
    ppLine417: TppLine;
    ppLine418: TppLine;
    ppSystemVariable9: TppSystemVariable;
    ppLine419: TppLine;
    ppLabel294: TppLabel;
    ppLabel295: TppLabel;
    ppLabel296: TppLabel;
    ppLine420: TppLine;
    ppLine421: TppLine;
    ppLabel301: TppLabel;
    ppLine422: TppLine;
    ppLine423: TppLine;
    ppLabel302: TppLabel;
    ppLabel303: TppLabel;
    ppLine424: TppLine;
    ppLabel304: TppLabel;
    ppLine425: TppLine;
    ppLine426: TppLine;
    ppLabel305: TppLabel;
    ppLabel306: TppLabel;
    ppLine427: TppLine;
    ppLabel307: TppLabel;
    ppLabel308: TppLabel;
    ppLabel309: TppLabel;
    ppLine428: TppLine;
    ppLine429: TppLine;
    ppLabel312: TppLabel;
    ppLine430: TppLine;
    ppLabel313: TppLabel;
    ppLabel315: TppLabel;
    ppLabel316: TppLabel;
    ppLabel317: TppLabel;
    ppLine431: TppLine;
    ppLine432: TppLine;
    ppLine433: TppLine;
    ppLabel319: TppLabel;
    ppLine434: TppLine;
    ppLabel320: TppLabel;
    ppLabel321: TppLabel;
    ppLabel322: TppLabel;
    ppLabel323: TppLabel;
    ppLabel325: TppLabel;
    ppLine435: TppLine;
    ppLabel326: TppLabel;
    ppLabel327: TppLabel;
    ppLabel328: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppLine437: TppLine;
    ppLabel331: TppLabel;
    title005: TppLabel;
    ppRichText1: TppRichText;
    ppLabel333: TppLabel;
    ppLabel334: TppLabel;
    ppLine438: TppLine;
    ppLabel335: TppLabel;
    ppLabel336: TppLabel;
    ppLabel337: TppLabel;
    ppLabel338: TppLabel;
    ppLine439: TppLine;
    ppLabel339: TppLabel;
    ppLabel340: TppLabel;
    ppLabel341: TppLabel;
    ppLine440: TppLine;
    ppLabel342: TppLabel;
    ppLabel344: TppLabel;
    ppLabel346: TppLabel;
    ppLine441: TppLine;
    ppLabel347: TppLabel;
    ppLabel348: TppLabel;
    ppLabel349: TppLabel;
    ppLabel350: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppShape91: TppShape;
    ppDBText114: TppDBText;
    ppLine442: TppLine;
    ppDBText116: TppDBText;
    ppLine443: TppLine;
    ppLine444: TppLine;
    ppDBText136: TppDBText;
    ppLine445: TppLine;
    ppLine446: TppLine;
    ppLine447: TppLine;
    ppLine448: TppLine;
    ppLine449: TppLine;
    ppLine450: TppLine;
    ppLine451: TppLine;
    ppLine452: TppLine;
    ppLine453: TppLine;
    ppLine454: TppLine;
    ppLine455: TppLine;
    ppLine456: TppLine;
    ppLine457: TppLine;
    ppLine458: TppLine;
    ppLine459: TppLine;
    ppLine460: TppLine;
    ppLine461: TppLine;
    ppLine462: TppLine;
    ppLine463: TppLine;
    ppLine464: TppLine;
    ppLine465: TppLine;
    ppDBText137: TppDBText;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppDBText145: TppDBText;
    ppDBText146: TppDBText;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppDBText150: TppDBText;
    ppDBText151: TppDBText;
    ppLine466: TppLine;
    he5001: TppLabel;
    pp5001: TppLabel;
    ppDBText152: TppDBText;
    ppLine467: TppLine;
    ppDBText153: TppDBText;
    ppLine469: TppLine;
    ppDBText155: TppDBText;
    ppLine470: TppLine;
    ppDBText156: TppDBText;
    ppLine471: TppLine;
    ddtx5001: TppLabel;
    ddt0x5001: TppLabel;
    ppLine472: TppLine;
    ppDBText157: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppSummaryBand7: TppSummaryBand;
    ppShape92: TppShape;
    ppLine473: TppLine;
    ppLine474: TppLine;
    ppLine475: TppLine;
    ppLine476: TppLine;
    ppLine477: TppLine;
    ppLine479: TppLine;
    ppLine480: TppLine;
    ppLine481: TppLine;
    ppLine482: TppLine;
    ppLine483: TppLine;
    ppLine484: TppLine;
    ppLine485: TppLine;
    ppLine486: TppLine;
    ppLine488: TppLine;
    ppLine489: TppLine;
    ppLine490: TppLine;
    ppLine491: TppLine;
    ppLine493: TppLine;
    ppLine494: TppLine;
    ppDBCalc33: TppDBCalc;
    prj5001: TppLabel;
    custpo5001: TppLabel;
    wo5001: TppLabel;
    custstyle5001: TppLabel;
    sp_app5001: TppLabel;
    custcolor5001: TppLabel;
    phcolor5001: TppLabel;
    ppDBCalc34: TppDBCalc;
    x05001: TppLabel;
    fwdto5001: TppLabel;
    exo5001: TppLabel;
    actitem5001: TppLabel;
    ppLabel372: TppLabel;
    prodsite5001: TppLabel;
    ppLabel374: TppLabel;
    ppLine495: TppLine;
    ppLine496: TppLine;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppHeaderBand8: TppHeaderBand;
    ppLabel375: TppLabel;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppShape93: TppShape;
    ppLabel376: TppLabel;
    ppLabel377: TppLabel;
    ppLabel378: TppLabel;
    ppLine497: TppLine;
    ppLine498: TppLine;
    ppDetailBand8: TppDetailBand;
    ppShape94: TppShape;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppLine499: TppLine;
    ppLine500: TppLine;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppSummaryBand8: TppSummaryBand;
    ppLine501: TppLine;
    ppLabel379: TppLabel;
    ppLabel380: TppLabel;
    ddt5001: TppLabel;
    ddt15001: TppLabel;
    ppLabel386: TppLabel;
    ppLabel387: TppLabel;
    ppLabel388: TppLabel;
    ppLabel389: TppLabel;
    ppLabel390: TppLabel;
    ppLabel391: TppLabel;
    ppParameterList5: TppParameterList;
    ppLabel314: TppLabel;
    ppLabel329: TppLabel;
    ppDBText144: TppDBText;
    ppDBText154: TppDBText;
    ppDBText161: TppDBText;
    ppLabel318: TppLabel;
    ppLine468: TppLine;
    ppLine436: TppLine;
    ppLabel330: TppLabel;
    ppLabel332: TppLabel;
    ppLabel343: TppLabel;
    ppLabel345: TppLabel;
    ppLabel351: TppLabel;
    ppLabel357: TppLabel;
    ppLine478: TppLine;
    ppLine502: TppLine;
    ppLine503: TppLine;
    ppLabel310: TppLabel;
    ppLabel311: TppLabel;
    ppLine504: TppLine;
    ppLine505: TppLine;
    ppLine506: TppLine;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    mddtx5001: TppLabel;
    mddt0x5001: TppLabel;
    mx05001: TppLabel;
    mddt5001: TppLabel;
    mddt15001: TppLabel;
    ppLine492: TppLine;
    ppLine507: TppLine;
    ppDBText164: TppDBText;
    cxGrid1ct_md1: TcxGridDBBandedColumn;
    ppLine508: TppLine;
    ppLine509: TppLine;
    ppLabel73: TppLabel;
    ppDBText165: TppDBText;
    ppLabel109: TppLabel;
    ppLabel297: TppLabel;
    ppLabel300: TppLabel;
    ppLabel352: TppLabel;
    ppLabel353: TppLabel;
    ppLine510: TppLine;
    ppLine511: TppLine;
    md5001: TppLabel;
    ppLabel354: TppLabel;
    ppLabel355: TppLabel;
    ppLine512: TppLine;
    x25001: TppLabel;
    ppLine513: TppLine;
    mx25001: TppLabel;
    cxGrid1booking: TcxGridDBBandedColumn;
    Label20: TLabel;
    cxComboBox2: TcxCheckComboBox;
    cxGrid1cust: TcxGridDBBandedColumn;
    cxGrid1prodcode: TcxGridDBBandedColumn;
    cxGrid1qn_tno: TcxGridDBBandedColumn;
    title2001: TppLabel;
    title3001: TppLabel;
    title4001: TppLabel;
    title5x001: TppLabel;
    p1line001: TppLabel;
    ImportData1: TMenuItem;
    ppLabel254: TppLabel;
    ppLabel356: TppLabel;
    ppLabel358: TppLabel;
    ppLabel359: TppLabel;
    cxGrid1seqno1: TcxGridDBBandedColumn;
    cxGrid1etam_bdc: TcxGridDBBandedColumn;
    cxGrid1etam_pak: TcxGridDBBandedColumn;
    cxGrid1pvh_dest: TcxGridDBBandedColumn;
    cxGrid1custpo_qty: TcxGridDBBandedColumn;
    ppLabel361: TppLabel;
    ppLabel362: TppLabel;
    cxGrid1bdc_qty: TcxGridDBBandedColumn;
    UpdateSewingfacility1: TMenuItem;
    UpdateLastPDNDate1: TMenuItem;
    ppLabel363: TppLabel;
    cxGrid1mtono: TcxGridDBBandedColumn;
    cxGrid1numberofline: TcxGridDBBandedColumn;
    cxGrid1sp_qty: TcxGridDBBandedColumn;
    cxGrid1prod_site1: TcxGridDBBandedColumn;
    cxGrid1fwdt_rq: TcxGridDBBandedColumn;
    cxGrid1fwdt_r: TcxGridDBBandedColumn;
    cxGrid1ex_rq: TcxGridDBBandedColumn;
    cxGrid1exdiff: TcxGridDBBandedColumn;
    BitBtn11: TBitBtn;
    ppLabel364: TppLabel;
    ppLabel365: TppLabel;
    ppLabel366: TppLabel;
    ppLabel369: TppLabel;
    ppLabel370: TppLabel;
    Insertintotransfer1: TMenuItem;
    Moveoutfromtransfer1: TMenuItem;
    cxGrid1phstyle: TcxGridDBBandedColumn;
    cxGrid1dest_qty: TcxGridDBBandedColumn;
    cxGrid1sp_appdt_o: TcxGridDBBandedColumn;
    cxGrid1sp_appdt_r: TcxGridDBBandedColumn;
    cxGrid1sp_appdt_a: TcxGridDBBandedColumn;
    ppLabel108: TppLabel;
    ppLabel371: TppLabel;
    ppLabel324: TppLabel;
    ppLabel373: TppLabel;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    bqtyd001: TppLabel;
    custcolord003: TppLabel;
    custpod003: TppLabel;
    custstyled003: TppLabel;
    keycoded003: TppLabel;
    p1lined001: TppLabel;
    ppLabel393: TppLabel;
    ppLine487: TppLine;
    ppLine514: TppLine;
    ppLine515: TppLine;
    ppLine518: TppLine;
    ppLine519: TppLine;
    ppLine520: TppLine;
    ppLine521: TppLine;
    ppLine522: TppLine;
    ppLine523: TppLine;
    ppLine524: TppLine;
    ppLine525: TppLine;
    ppLine526: TppLine;
    ppLine528: TppLine;
    ppLine529: TppLine;
    ppLine530: TppLine;
    ppLine532: TppLine;
    ppLine533: TppLine;
    ppLine534: TppLine;
    ppLine535: TppLine;
    ppLine536: TppLine;
    ppLine537: TppLine;
    ppLine538: TppLine;
    ppLine540: TppLine;
    ppLine541: TppLine;
    ppLine542: TppLine;
    ppLine544: TppLine;
    ppLine545: TppLine;
    ppLine546: TppLine;
    ppShape95: TppShape;
    projectnod003: TppLabel;
    q_tqtyd001: TppLabel;
    qnqtyd001: TppLabel;
    qnqtyd002: TppLabel;
    workorderd003: TppLabel;
    ppDBText166: TppDBText;
    ppLabel381: TppLabel;
    fwdt_or001: TppLabel;
    ppLine547: TppLine;
    ppLabel382: TppLabel;
    ppLine548: TppLine;
    ppLabel383: TppLabel;
    q2line001: TppLabel;
    q2qty001: TppLabel;
    q2dt1001: TppLabel;
    q2dt2001: TppLabel;
    q2dt4001: TppLabel;
    q2dt3001: TppLabel;
    ppLabel384: TppLabel;
    ppLabel385: TppLabel;
    ppLine549: TppLine;
    ppLine550: TppLine;
    ppLine551: TppLine;
    ppLabel392: TppLabel;
    ppLabel394: TppLabel;
    ppLine552: TppLine;
    ppLabel395: TppLabel;
    ppLabel396: TppLabel;
    ppLine553: TppLine;
    ppLine554: TppLine;
    ppLine555: TppLine;
    ppLine556: TppLine;
    ppLabel397: TppLabel;
    ppLabel398: TppLabel;
    ppLabel399: TppLabel;
    ppLabel400: TppLabel;
    ppLabel401: TppLabel;
    ppLabel402: TppLabel;
    ppLabel403: TppLabel;
    ppLabel404: TppLabel;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLabel405: TppLabel;
    ppLabel406: TppLabel;
    ppLabel407: TppLabel;
    ppLabel408: TppLabel;
    ppLabel409: TppLabel;
    ppLabel410: TppLabel;
    ppLabel411: TppLabel;
    ppLabel412: TppLabel;
    ppLabel413: TppLabel;
    ppLabel414: TppLabel;
    ppLabel415: TppLabel;
    ppLabel416: TppLabel;
    ppLabel417: TppLabel;
    ppLabel418: TppLabel;
    ppLabel419: TppLabel;
    ppLabel420: TppLabel;
    ppLabel421: TppLabel;
    ppLabel422: TppLabel;
    ppLabel423: TppLabel;
    ppLabel424: TppLabel;
    ppLabel425: TppLabel;
    ppLabel426: TppLabel;
    ppLabel427: TppLabel;
    ppLabel428: TppLabel;
    ppLabel429: TppLabel;
    ppLabel430: TppLabel;
    m_startd001: TppLabel;
    m_endd001: TppLabel;
    fwdt_od001: TppLabel;
    fwdt_ad001: TppLabel;
    fwdt_oxd001: TppLabel;
    prod_sited001: TppLabel;
    prod_site1d001: TppLabel;
    line_tnod001: TppLabel;
    qn_tnod001: TppLabel;
    qn_tnoxd001: TppLabel;
    m_starta001: TppLabel;
    m_enda001: TppLabel;
    fwdt_oa001: TppLabel;
    fwdt_aa001: TppLabel;
    prod_sitea001: TppLabel;
    prod_site1a001: TppLabel;
    line_tnoa001: TppLabel;
    qn_tnoa001: TppLabel;
    qn_tnoxa001: TppLabel;
    fwdt_oxa001: TppLabel;
    q1_dt1d001: TppLabel;
    q1_dt2d001: TppLabel;
    q1_dt1xd001: TppLabel;
    q2_dt1d001: TppLabel;
    q2_dt1xd001: TppLabel;
    q2_dt2d001: TppLabel;
    q1_dt1a001: TppLabel;
    q1_dt1xa001: TppLabel;
    q1_dt2a001: TppLabel;
    q2_dt1a001: TppLabel;
    q2_dt1xa001: TppLabel;
    q2_dt2a001: TppLabel;
    ppLabel431: TppLabel;
    ppLine192: TppLine;
    ppLabel432: TppLabel;
    ppLine209: TppLine;
    ppLabel433: TppLabel;
    ppLine239: TppLine;
    ppLabel434: TppLabel;
    ppLine247: TppLine;
    ppLabel435: TppLabel;
    custpod001: TppLabel;
    custpoa001: TppLabel;
    ppLabel437: TppLabel;
    prodsite001: TppLabel;
    prodsite1001: TppLabel;
    ppLabel436: TppLabel;
    ppShape37: TppShape;
    cxGrid1globalsplit: TcxGridDBBandedColumn;
    cxGrid1sp_app1: TcxGridDBBandedColumn;
    ppLabel445: TppLabel;
    custx001: TppLabel;
    cxGrid1grp_act: TcxGridDBBandedColumn;
    ppLine527: TppLine;
    fwdt_oxa1001: TppLabel;
    ppLabel447: TppLabel;
    ppLabel448: TppLabel;
    ppLabel449: TppLabel;
    ppLabel450: TppLabel;
    ppLabel451: TppLabel;
    ppLabel452: TppLabel;
    q1_dt1xa1001: TppLabel;
    q2_dt1xa1001: TppLabel;
    ppLabel455: TppLabel;
    ppLine531: TppLine;
    ppLabel446: TppLabel;
    ppLabel453: TppLabel;
    fwdt_oxd1001: TppLabel;
    ppLabel456: TppLabel;
    ppLabel457: TppLabel;
    q1_dt1xd1001: TppLabel;
    ppLabel459: TppLabel;
    ppLabel460: TppLabel;
    q2_dt1xd1001: TppLabel;
    ppLabel462: TppLabel;
    cxGrid1pvh_aa: TcxGridDBBandedColumn;
    cxGrid1aa_qty: TcxGridDBBandedColumn;
    cxGrid1pvh_drop: TcxGridDBBandedColumn;
    cxGrid1drop_qty: TcxGridDBBandedColumn;
    cxGrid1pvh_bcd: TcxGridDBBandedColumn;
    ppLine539: TppLine;
    ppLine543: TppLine;
    ppLine557: TppLine;
    ppLine558: TppLine;
    ppRichText4: TppRichText;
    cxGrid1at3dt: TcxGridDBBandedColumn;
    cxGrid1t3dt: TcxGridDBBandedColumn;
    cxGrid1t3dt_r: TcxGridDBBandedColumn;
    ppLabel454: TppLabel;
    cxGrid1phstyleseq: TcxGridDBBandedColumn;
    ppLabel171: TppLabel;
    ppShape104: TppShape;
    cxGrid1pvh_costco: TcxGridDBBandedColumn;
    cxGrid1custpo_new: TcxGridDBBandedColumn;
    cxGrid1qty1_new: TcxGridDBBandedColumn;
    cxGrid1phstyleno: TcxGridDBBandedColumn;
    cxGrid1ex_o_wk: TcxGridDBBandedColumn;
    cxGrid1ex_r_wk: TcxGridDBBandedColumn;
    BitBtn12: TBitBtn;
    cxGrid1fw_diff1: TcxGridDBBandedColumn;
    ppLabel126: TppLabel;
    ppLabel144: TppLabel;
    cxGrid1in_ord: TcxGridDBBandedColumn;
    cxGrid1custpo_qty_new: TcxGridDBBandedColumn;
    ppLabel520: TppLabel;
    ppLabel537: TppLabel;
    cxGrid1wo_custpoqty: TcxGridDBBandedColumn;
    EnquerylogswithWarningmessage1: TMenuItem;
    cxGrid1tc_seqno: TcxGridDBBandedColumn;
    cxGrid1pvh_moa: TcxGridDBBandedColumn;
    cxGrid1pvh_mtodt: TcxGridDBBandedColumn;
    cxGrid1pvh_bpdt: TcxGridDBBandedColumn;
    N1: TMenuItem;
    cxGrid1pvh_brand: TcxGridDBBandedColumn;
    cxGrid1pvh_pak1: TcxGridDBBandedColumn;
    cxGrid1pvh_iq1: TcxGridDBBandedColumn;
    cxGrid1pvh_iq2: TcxGridDBBandedColumn;
    cxGrid1pvh_iq3: TcxGridDBBandedColumn;
    cxGrid1pvh_iq4: TcxGridDBBandedColumn;
    cxGrid1pvh_iq5: TcxGridDBBandedColumn;
    cxGrid1pvh_iq6: TcxGridDBBandedColumn;
    cxGrid1pvh_cq1: TcxGridDBBandedColumn;
    cxGrid1pvh_cq2: TcxGridDBBandedColumn;
    cxGrid1pvh_cq3: TcxGridDBBandedColumn;
    cxGrid1pvh_cq4: TcxGridDBBandedColumn;
    cxGrid1pvh_cq5: TcxGridDBBandedColumn;
    cxGrid1pvh_cq6: TcxGridDBBandedColumn;
    PVHReportlayoutdependentonUSCAHK1: TMenuItem;
    checkenquerySQLscript1: TMenuItem;
    ppReport7: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppShape107: TppShape;
    ppShape123: TppShape;
    ppLabel539: TppLabel;
    ppLabel542: TppLabel;
    ppLabel544: TppLabel;
    ppLabel545: TppLabel;
    ppLabel551: TppLabel;
    ppLabel555: TppLabel;
    ppLabel556: TppLabel;
    ppLabel557: TppLabel;
    ppLabel558: TppLabel;
    ppLabel559: TppLabel;
    ppLabel560: TppLabel;
    ppLabel561: TppLabel;
    ppLabel562: TppLabel;
    ppLine645: TppLine;
    ppLine647: TppLine;
    ppLine648: TppLine;
    ppLine654: TppLine;
    ppLine656: TppLine;
    ppSystemVariable13: TppSystemVariable;
    ppLine657: TppLine;
    ppLabel565: TppLabel;
    ppLine658: TppLine;
    ppLine662: TppLine;
    ppLabel570: TppLabel;
    ppLine663: TppLine;
    ppLine664: TppLine;
    ppLabel571: TppLabel;
    ppLabel572: TppLabel;
    ppLine665: TppLine;
    ppLabel573: TppLabel;
    ppLabel574: TppLabel;
    ppLine666: TppLine;
    ppLabel578: TppLabel;
    ppLine668: TppLine;
    ppLabel579: TppLabel;
    ppLabel581: TppLabel;
    ppLabel582: TppLabel;
    ppLabel583: TppLabel;
    ppLine669: TppLine;
    ppLine670: TppLine;
    ppLine671: TppLine;
    ppLabel585: TppLabel;
    ppLine672: TppLine;
    ppLabel586: TppLabel;
    ppLabel587: TppLabel;
    ppLabel588: TppLabel;
    ppLabel589: TppLabel;
    ppLine673: TppLine;
    ppLabel590: TppLabel;
    ppLabel591: TppLabel;
    ppLabel592: TppLabel;
    ppLine674: TppLine;
    ppSystemVariable14: TppSystemVariable;
    ppLabel596: TppLabel;
    ppRichText6: TppRichText;
    ppLabel621: TppLabel;
    ppLabel622: TppLabel;
    ppLabel623: TppLabel;
    ppLabel624: TppLabel;
    ppLabel625: TppLabel;
    ppDetailBand10: TppDetailBand;
    ppDBText179: TppDBText;
    ppLine681: TppLine;
    ppDBText180: TppDBText;
    ppLine682: TppLine;
    ppLine683: TppLine;
    ppDBText181: TppDBText;
    ppLine684: TppLine;
    ppLine685: TppLine;
    ppLine687: TppLine;
    ppLine688: TppLine;
    ppLine692: TppLine;
    ppLine693: TppLine;
    ppLine694: TppLine;
    ppLine695: TppLine;
    ppLine698: TppLine;
    ppLine699: TppLine;
    ppLine700: TppLine;
    ppLine701: TppLine;
    ppLine704: TppLine;
    ppDBText182: TppDBText;
    ppDBText183: TppDBText;
    ppDBText184: TppDBText;
    ppDBText185: TppDBText;
    ppDBText186: TppDBText;
    ppDBText192: TppDBText;
    ppDBText193: TppDBText;
    ppDBText194: TppDBText;
    ppLine705: TppLine;
    ppDBText197: TppDBText;
    ppLine706: TppLine;
    ppDBText198: TppDBText;
    ex_2001: TppLabel;
    ppFooterBand7: TppFooterBand;
    ppLabel634: TppLabel;
    ppSummaryBand10: TppSummaryBand;
    ppParameterList7: TppParameterList;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    N2: TMenuItem;
    ppLabel538: TppLabel;
    ppLabel540: TppLabel;
    ppLabel541: TppLabel;
    ppDBText187: TppDBText;
    ppDBText189: TppDBText;
    ppLabel543: TppLabel;
    ppLabel546: TppLabel;
    ppLine649: TppLine;
    ppLine651: TppLine;
    ppDBText190: TppDBText;
    ppLabel547: TppLabel;
    ppLabel548: TppLabel;
    ppLine652: TppLine;
    ppLine653: TppLine;
    ppLabel549: TppLabel;
    ppLabel550: TppLabel;
    ppLabel552: TppLabel;
    ppLine655: TppLine;
    ppLine659: TppLine;
    ppDBText191: TppDBText;
    ppLabel553: TppLabel;
    ppLabel554: TppLabel;
    ppLabel563: TppLabel;
    ppLabel566: TppLabel;
    ppLabel567: TppLabel;
    ppDBText195: TppDBText;
    ppLine660: TppLine;
    ppLine661: TppLine;
    ppLabel568: TppLabel;
    ppLabel569: TppLabel;
    ppLabel575: TppLabel;
    fwdt_2001: TppLabel;
    ppDBText188: TppDBText;
    ppLine667: TppLine;
    ppLabel564: TppLabel;
    ppLabel577: TppLabel;
    ppLine646: TppLine;
    ppLine675: TppLine;
    s_2001: TppLabel;
    ppLabel584: TppLabel;
    ppLabel593: TppLabel;
    ppLabel594: TppLabel;
    ppLine676: TppLine;
    ppLine677: TppLine;
    ppLabel595: TppLabel;
    ppLabel597: TppLabel;
    ppLabel598: TppLabel;
    ppLabel599: TppLabel;
    ppLabel600: TppLabel;
    ppLabel601: TppLabel;
    ppLabel602: TppLabel;
    ppLabel603: TppLabel;
    ppLabel604: TppLabel;
    ppLabel605: TppLabel;
    ppLabel606: TppLabel;
    ppDBText196: TppDBText;
    iq_2002: TppDBText;
    iq_2003: TppDBText;
    iq_2004: TppDBText;
    iq_2005: TppDBText;
    iq_2006: TppDBText;
    ppDBText204: TppDBText;
    cq_2002: TppDBText;
    cq_2003: TppDBText;
    cq_2004: TppDBText;
    cq_2005: TppDBText;
    cq_2006: TppDBText;
    s_2002: TppLabel;
    s_2003: TppLabel;
    s_2004: TppLabel;
    s_2005: TppLabel;
    s_2006: TppLabel;
    ppLine678: TppLine;
    ppLine679: TppLine;
    ppLine680: TppLine;
    ppLine686: TppLine;
    ppDBText210: TppDBText;
    ppDBText211: TppDBText;
    ppLabel612: TppLabel;
    ppLabel613: TppLabel;
    ppLabel614: TppLabel;
    ppLabel615: TppLabel;
    ppLabel616: TppLabel;
    ppLabel617: TppLabel;
    ppLabel618: TppLabel;
    ppLabel619: TppLabel;
    ppLabel620: TppLabel;
    ppLine689: TppLine;
    ppLine690: TppLine;
    ppLine691: TppLine;
    ppLine696: TppLine;
    ppLine697: TppLine;
    ppLine702: TppLine;
    ppLine703: TppLine;
    ppLine707: TppLine;
    ppDBText214: TppDBText;
    ppLabel626: TppLabel;
    ppLabel627: TppLabel;
    ppLabel628: TppLabel;
    ppLabel629: TppLabel;
    ppDBText215: TppDBText;
    ppDBText216: TppDBText;
    ppLine708: TppLine;
    ppLine709: TppLine;
    ppLine710: TppLine;
    ppLine711: TppLine;
    ppLine650: TppLine;
    ipo_qty001: TppDBText;
    ppLabel630: TppLabel;
    ppLabel632: TppLabel;
    ppLabel633: TppLabel;
    ppLabel635: TppLabel;
    ppLabel636: TppLabel;
    ppLine712: TppLine;
    i_2001: TppLabel;
    d_2001: TppLabel;
    ppShape108: TppShape;
    ppShape109: TppShape;
    i_2002: TppLabel;
    d_2002: TppLabel;
    i_2003: TppLabel;
    d_2003: TppLabel;
    i_2004: TppLabel;
    d_2004: TppLabel;
    i_2005: TppLabel;
    d_2005: TppLabel;
    i_2006: TppLabel;
    d_2006: TppLabel;
    ppLine713: TppLine;
    ADODataSet4: TADODataSet;
    DataSource6: TDataSource;
    ppDBPipeline6: TppDBPipeline;
    l_2002: TppLine;
    l_2003: TppLine;
    l_2004: TppLine;
    l_2005: TppLine;
    l_2006: TppLine;
    ppLabel576: TppLabel;
    ppLabel580: TppLabel;
    ppLine714: TppLine;
    ppLine715: TppLine;
    ppDBText199: TppDBText;
    ppLabel607: TppLabel;
    ppLabel608: TppLabel;
    ppLabel609: TppLabel;
    ppLabel610: TppLabel;
    ppShape110: TppShape;
    custcolor_2001: TppLabel;
    custpo_2001: TppLabel;
    custstyle_2001: TppLabel;
    phcolor_2001: TppLabel;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppLabel640: TppLabel;
    ppLabel643: TppLabel;
    ppLabel644: TppLabel;
    ppLine717: TppLine;
    ppLine718: TppLine;
    ppLine719: TppLine;
    ppLine720: TppLine;
    ppLine721: TppLine;
    ppLine722: TppLine;
    ppLine723: TppLine;
    ppLine724: TppLine;
    ppLine725: TppLine;
    ppLine726: TppLine;
    ppLine727: TppLine;
    ppShape111: TppShape;
    prj_2001: TppLabel;
    wo_2001: TppLabel;
    ppLine728: TppLine;
    ppLabel611: TppLabel;
    ppDBCalc41: TppDBCalc;
    ppLabel641: TppLabel;
    Label21: TLabel;
    ComboBox1: TComboBox;
    cxGrid1shpm: TcxGridDBBandedColumn;
    cxGrid1shpm_r: TcxGridDBBandedColumn;
    cxGrid1ex_s: TcxGridDBBandedColumn;
    cxGrid1lwdt: TcxGridDBBandedColumn;
    cxGrid1lwdt_r: TcxGridDBBandedColumn;
    cxGrid1cgrp: TcxGridDBBandedColumn;
    cxGrid1lwdt_act: TcxGridDBBandedColumn;
    cxGrid1lwdt_c: TcxGridDBBandedColumn;
    cxGrid1lwdt_s: TcxGridDBBandedColumn;
    cxGrid1lwdt_p: TcxGridDBBandedColumn;
    cxGrid1lwdiff_r: TcxGridDBBandedColumn;
    cxGrid1q1_dt1: TcxGridDBBandedColumn;
    cxGrid1q1_dt4: TcxGridDBBandedColumn;
    cxGrid1q1_dtdiff: TcxGridDBBandedColumn;
    cxGrid1lwdt_r2: TcxGridDBBandedColumn;
    BitBtn13: TBitBtn;
    Label22: TLabel;
    Edit3: TEdit;
    Label23: TLabel;
    Edit4: TEdit;
    Label24: TLabel;
    Edit5: TEdit;
    Label25: TLabel;
    Edit6: TEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    siLang1: TsiLang;
    cxGrid1ex_a_wk: TcxGridDBBandedColumn;
    cxGrid1cq1: TcxGridDBBandedColumn;
    cxGrid1cq2: TcxGridDBBandedColumn;
    cxGrid1cq3: TcxGridDBBandedColumn;
    cxGrid1cq4: TcxGridDBBandedColumn;
    cxGrid1cq5: TcxGridDBBandedColumn;
    cxGrid1cq6: TcxGridDBBandedColumn;
    cxGrid1cqn1: TcxGridDBBandedColumn;
    cxGrid1cqn2: TcxGridDBBandedColumn;
    cxGrid1cqn3: TcxGridDBBandedColumn;
    cxGrid1cqn4: TcxGridDBBandedColumn;
    cxGrid1cqn5: TcxGridDBBandedColumn;
    cxStyle3: TcxStyle;
    RefreshdatafromRWO1: TMenuItem;
    cxStyle4: TcxStyle;
    cxGrid1sp_app: TcxGridDBBandedColumn;
    cxGrid1ct_he: TcxGridDBBandedColumn;
    UpdateT2T3date1: TMenuItem;
    cxGrid1urgent_o: TcxGridDBBandedColumn;
    cxGrid1problem_o: TcxGridDBBandedColumn;
    cxGrid1ct_raw: TcxGridDBBandedColumn;
    cxGrid1pdn_diff: TcxGridDBBandedColumn;
    cxGrid1ex_diff: TcxGridDBBandedColumn;
    cxGrid1rpt_app: TcxGridDBBandedColumn;
    Label26: TLabel;
    ComboBox11: TComboBox;
    cxGrid1t3window: TcxGridDBBandedColumn;
    cxGrid1prod_site_r: TcxGridDBBandedColumn;
    cxGrid1prod_site1_r: TcxGridDBBandedColumn;
    cxGrid11stwindow: TcxGridDBBandedColumn;
    cxGrid1dt3_wa: TcxGridDBBandedColumn;
    cxGrid1wo_opt: TcxGridDBBandedColumn;
    cxGrid1t2_w: TcxGridDBBandedColumn;
    cxGrid1t2_wa: TcxGridDBBandedColumn;
    cxGrid1sw_1w: TcxGridDBBandedColumn;
    cxGrid1sw_pkw: TcxGridDBBandedColumn;
    cxGrid1t3_sdt: TcxGridDBBandedColumn;
    cxGrid1fw_agree: TcxGridDBBandedColumn;
    cxGrid1wo_w: TcxGridDBBandedColumn;
    cxGrid1fst_dt: TcxGridDBBandedColumn;
    cxGrid1fst_wa: TcxGridDBBandedColumn;
    cxGrid1fst_wr: TcxGridDBBandedColumn;
    cxGrid1fst_w1: TcxGridDBBandedColumn;
    cxGrid1t2_w1: TcxGridDBBandedColumn;
    cxGrid1diff_lbl: TcxGridDBBandedColumn;
    cxGrid1wo_cfmdt: TcxGridDBBandedColumn;
    cxGrid1fyfs: TcxGridDBBandedColumn;
    cxGrid1jhrs: TcxGridDBBandedColumn;
    cxGrid1wcr: TcxGridDBBandedColumn;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxGrid1ad_t2: TcxGridDBBandedColumn;
    cxGrid1ad_t3: TcxGridDBBandedColumn;
    cxGrid1ad_pk: TcxGridDBBandedColumn;
    cxGrid1ad_qc: TcxGridDBBandedColumn;
    cxGrid1ad_t1: TcxGridDBBandedColumn;
    cxGrid1q1_sa: TcxGridDBBandedColumn;
    cxGrid1sw_opt3: TcxGridDBBandedColumn;
    cxGrid1ttl_ovlap: TcxGridDBBandedColumn;
    cxGrid1t1_gap: TcxGridDBBandedColumn;
    cxgrdbndclmnt1_ef: TcxGridDBBandedColumn;
    grp1: TGroupBox;
    Label13: TLabel;
    cbb1: TComboBox;
    Label18: TLabel;
    cbb2: TComboBox;
    chk11: TCheckBox;
    chk4: TCheckBox;
    chk6: TCheckBox;
    grp2: TGroupBox;
    chk2: TCheckBox;
    chk9: TCheckBox;
    chk7: TCheckBox;
    chk10: TCheckBox;
    chk8: TCheckBox;
    chk12: TCheckBox;
    chk13: TCheckBox;
    ShowHideHIJ1: TMenuItem;
    chk14: TCheckBox;
    cxgrdbndclmnq1_dt2: TcxGridDBBandedColumn;
    cxgrdbndclmnq1_dt2f: TcxGridDBBandedColumn;
    chk15: TCheckBox;
    ShowHideCHK151: TMenuItem;
    chk16: TCheckBox;
    cxGrid1add_corder: TcxGridDBBandedColumn;
    cxGrid1add_rwono: TcxGridDBBandedColumn;
    cxGrid1add_posm: TcxGridDBBandedColumn;
    cxGrid1add_wono: TcxGridDBBandedColumn;
    cxGrid1add_wocno: TcxGridDBBandedColumn;
    memo2: TMemo;
    cxGrid1add_px: TcxGridDBBandedColumn;
    cxGrid1add_pxcx: TcxGridDBBandedColumn;
    cxGrid1add_shpt: TcxGridDBBandedColumn;
    cxGrid1add_shptcx: TcxGridDBBandedColumn;
    cxGrid1add_bom: TcxGridDBBandedColumn;
    cxGrid1add_bomcx: TcxGridDBBandedColumn;
    cxGrid1add_boo: TcxGridDBBandedColumn;
    cxGrid1add_boocx: TcxGridDBBandedColumn;
    cxGrid1add_chosen: TcxGridDBBandedColumn;
    cxGrid1add_clrcx: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1pvh_shop: TcxGridDBBandedColumn;
    RefreshDSeg1: TMenuItem;
    cxGrid1add_wono_c: TcxGridDBBandedColumn;
    cxGrid1add_wono_a: TcxGridDBBandedColumn;
    cxStyle7: TcxStyle;
    cxGrid1smpl_beh: TcxGridDBBandedColumn;
    cxGrid1smpl_valid: TcxGridDBBandedColumn;
    cxView1Grid1nonday: TcxGridDBBandedColumn;
    cxGrid1fw_csm: TcxGridDBBandedColumn;
    cxGrid1fw_cddt: TcxGridDBBandedColumn;
    cxGrid1fw_cdiff: TcxGridDBBandedColumn;
    cxGrid1add_boo2: TcxGridDBBandedColumn;
    cxGrid1add_px2: TcxGridDBBandedColumn;
    cxGrid1add_px21: TcxGridDBBandedColumn;
    cxGrid1add_wo2: TcxGridDBBandedColumn;
    cxGrid1add_wo3: TcxGridDBBandedColumn;
    cxGrid1so_stt: TcxGridDBBandedColumn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape9: TppShape;
    ppShape2: TppShape;
    ppShape28: TppShape;
    ppShape3: TppShape;
    ppShape35: TppShape;
    ppShape7: TppShape;
    ppShape1: TppShape;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel3: TppLabel;
    sub002: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    title1001: TppLabel;
    ppLabel253: TppLabel;
    ppLabel637: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel24: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel125: TppLabel;
    ppLabel45: TppLabel;
    ppLabel438: TppLabel;
    ppLabel439: TppLabel;
    ppLabel440: TppLabel;
    ppLabel441: TppLabel;
    ppLabel442: TppLabel;
    ppLabel443: TppLabel;
    ppLabel444: TppLabel;
    ppLabel468: TppLabel;
    ppLabel93: TppLabel;
    ppLabel495: TppLabel;
    ppLabel496: TppLabel;
    ppLabel360: TppLabel;
    ppLabel505: TppLabel;
    ppLabel506: TppLabel;
    ppLabel467: TppLabel;
    ppLabel528: TppLabel;
    ppLabel530: TppLabel;
    ppLabel531: TppLabel;
    ppLabel532: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLine10: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine23: TppLine;
    ppLine40: TppLine;
    ppLine42: TppLine;
    ppLine44: TppLine;
    ppLine46: TppLine;
    ppLine48: TppLine;
    ppLine50: TppLine;
    ppLine52: TppLine;
    ppLine107: TppLine;
    ppLine154: TppLine;
    ppLine161: TppLine;
    ppLine176: TppLine;
    ppLine282: TppLine;
    ppLine517: TppLine;
    ppLine4: TppLine;
    ppLabel638: TppLabel;
    fty2001: TppLabel;
    ppLabel647: TppLabel;
    ppLabel648: TppLabel;
    ppLabel649: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape113: TppShape;
    ppLine47: TppLine;
    oskey002: TppDBText;
    ppLine9: TppLine;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLine11: TppLine;
    ppDBText21: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppLine12: TppLine;
    ppLine17: TppLine;
    ppLine33: TppLine;
    ppLine41: TppLine;
    ppLine45: TppLine;
    ppLine51: TppLine;
    ppLine54: TppLine;
    ppDBText2: TppDBText;
    ppLine13: TppLine;
    ppDBText3: TppDBText;
    ppLine7: TppLine;
    ppDBText4: TppDBText;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText23: TppDBText;
    ppLine22: TppLine;
    ppLine28: TppLine;
    ppLine108: TppLine;
    ppDBText35: TppDBText;
    ppLine112: TppLine;
    ppDBText48: TppDBText;
    ppLine177: TppLine;
    ppDBText52: TppDBText;
    ppLine49: TppLine;
    ppDBText53: TppDBText;
    actitem002: TppDBText;
    ppLine287: TppLine;
    ppDBText13: TppDBText;
    ppLine160: TppLine;
    ppDBText18: TppDBText;
    ppDBText174: TppDBText;
    ppLine15: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppDBText55: TppDBText;
    ppDBText61: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel642: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppShape30: TppShape;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLine151: TppLine;
    ppLine152: TppLine;
    ppLine156: TppLine;
    ppLine158: TppLine;
    ppLine163: TppLine;
    ppLabel529: TppLabel;
    ppLine167: TppLine;
    projectno002: TppLabel;
    custpo002: TppLabel;
    custstyle002: TppLabel;
    custcolor002: TppLabel;
    ppLine178: TppLine;
    keycode002: TppLabel;
    qty002: TppLabel;
    ppLine162: TppLine;
    sp_qty002: TppLabel;
    ppLine516: TppLine;
    itemx3001: TppLabel;
    itemx3002: TppLabel;
    ppLine25: TppLine;
    ppLine30: TppLine;
    ppLine159: TppLine;
    ppLabel536: TppLabel;
    ppLabel533: TppLabel;
    ppLabel534: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine8: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape106: TppShape;
    ppLine620: TppLine;
    category002: TppLabel;
    ppLabel639: TppLabel;
    ppLine43: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppParameterList1: TppParameterList;
    ppReport6: TppReport;
    ppHeaderBand9: TppHeaderBand;
    ppLabel117: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppLabel458: TppLabel;
    sub6001: TppLabel;
    ppSystemVariable12: TppSystemVariable;
    title6001: TppLabel;
    ppLabel507: TppLabel;
    rpt_title001: TppLabel;
    ppShape6: TppShape;
    ppShape8: TppShape;
    ppShape36: TppShape;
    ppShape48: TppShape;
    ppShape49: TppShape;
    ppShape50: TppShape;
    ppShape52: TppShape;
    ppShape54: TppShape;
    ppShape96: TppShape;
    ppLabel23: TppLabel;
    ppLabel30: TppLabel;
    ppLine6: TppLine;
    ppLine155: TppLine;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppLabel124: TppLabel;
    ppLabel461: TppLabel;
    ppLine179: TppLine;
    ppLine559: TppLine;
    ppLine560: TppLine;
    ppLine561: TppLine;
    ppLine562: TppLine;
    ppLabel463: TppLabel;
    ppLabel464: TppLabel;
    ppLabel465: TppLabel;
    ppLine564: TppLine;
    ppLine565: TppLine;
    ppLabel466: TppLabel;
    ppLine567: TppLine;
    ppLine568: TppLine;
    ppLabel469: TppLabel;
    ppLine569: TppLine;
    ppLabel470: TppLabel;
    ppLabel471: TppLabel;
    ppLabel472: TppLabel;
    ppLine570: TppLine;
    ppLabel473: TppLabel;
    ppLine571: TppLine;
    ppLine572: TppLine;
    ppLine573: TppLine;
    ppLine574: TppLine;
    ppLabel475: TppLabel;
    ppLabel476: TppLabel;
    ppLabel477: TppLabel;
    ppLine575: TppLine;
    ppLabel478: TppLabel;
    ppLabel479: TppLabel;
    ppLabel480: TppLabel;
    ppLabel481: TppLabel;
    ppLabel482: TppLabel;
    ppLabel483: TppLabel;
    ppLabel484: TppLabel;
    ppLabel485: TppLabel;
    ppLabel486: TppLabel;
    ppLabel487: TppLabel;
    ppLabel488: TppLabel;
    ppLabel489: TppLabel;
    ppLabel490: TppLabel;
    ppLabel492: TppLabel;
    ppLabel493: TppLabel;
    ppLabel494: TppLabel;
    ppLabel497: TppLabel;
    ppLabel498: TppLabel;
    ppLabel499: TppLabel;
    ppLabel500: TppLabel;
    ppLabel501: TppLabel;
    ppLabel503: TppLabel;
    ppLabel508: TppLabel;
    ppLabel509: TppLabel;
    ppLabel510: TppLabel;
    ppLabel511: TppLabel;
    ppLabel512: TppLabel;
    ppLine576: TppLine;
    ppLabel513: TppLabel;
    ppLabel514: TppLabel;
    ppLabel515: TppLabel;
    ppLabel517: TppLabel;
    ppLabel522: TppLabel;
    ppLabel523: TppLabel;
    ppLabel524: TppLabel;
    ppLine577: TppLine;
    ppLabel525: TppLabel;
    ppLabel526: TppLabel;
    ppLabel504: TppLabel;
    ppLabel368: TppLabel;
    ppLabel518: TppLabel;
    ppLabel645: TppLabel;
    fty6001: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppShape112: TppShape;
    ppDBMemo4: TppDBMemo;
    ppDBText40: TppDBText;
    ppLine583: TppLine;
    ppDBText68: TppDBText;
    ppDBText72: TppDBText;
    ppLine584: TppLine;
    ppDBText73: TppDBText;
    ppLine585: TppLine;
    ppLine590: TppLine;
    ppLine591: TppLine;
    ppLine592: TppLine;
    ppLine593: TppLine;
    ppLine594: TppLine;
    ppLine595: TppLine;
    ppDBText74: TppDBText;
    ppLine597: TppLine;
    ppDBText76: TppDBText;
    ppLine598: TppLine;
    ppDBText77: TppDBText;
    ppLine599: TppLine;
    ppLine600: TppLine;
    ppDBText167: TppDBText;
    ppDBText168: TppDBText;
    ppDBText169: TppDBText;
    ppLine601: TppLine;
    ppLine603: TppLine;
    ppDBText170: TppDBText;
    ppLine604: TppLine;
    ppDBText171: TppDBText;
    ppLine605: TppLine;
    ppDBText172: TppDBText;
    ppLine606: TppLine;
    ppDBText173: TppDBText;
    actitem001: TppDBText;
    ppLine607: TppLine;
    ppDBText177: TppDBText;
    ppLine166: TppLine;
    ppDBText42: TppDBText;
    ppDBText58: TppDBText;
    ppLine633: TppLine;
    ppDBText175: TppDBText;
    ppLine578: TppLine;
    ppDBText176: TppDBText;
    ppLine579: TppLine;
    ppLine580: TppLine;
    ppLine581: TppLine;
    ppFooterBand6: TppFooterBand;
    ppLabel491: TppLabel;
    ppSummaryBand9: TppSummaryBand;
    ppShape103: TppShape;
    ppLine608: TppLine;
    ppLine609: TppLine;
    ppLine610: TppLine;
    ppLine611: TppLine;
    ppLine613: TppLine;
    ppLine616: TppLine;
    ppLine617: TppLine;
    ppLine621: TppLine;
    ppLabel519: TppLabel;
    ppLine625: TppLine;
    projectno6002: TppLabel;
    custpo6002: TppLabel;
    custstyle6002: TppLabel;
    custcolor6002: TppLabel;
    ppLine626: TppLine;
    keycode6002: TppLabel;
    qty6002: TppLabel;
    ppLine627: TppLine;
    sp_qty6002: TppLabel;
    ppLine628: TppLine;
    item001: TppLabel;
    ppLine18: TppLine;
    ppLine563: TppLine;
    itemx001: TppLabel;
    itemx002: TppLabel;
    ppLine619: TppLine;
    ppLine635: TppLine;
    ppLabel535: TppLabel;
    ppLabel502: TppLabel;
    ppLabel516: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLine629: TppLine;
    ppDBText178: TppDBText;
    ppLabel521: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape105: TppShape;
    ppLine630: TppLine;
    custcolorx6002: TppLabel;
    custpox6002: TppLabel;
    custstylex6002: TppLabel;
    keycodex6002: TppLabel;
    ppLine566: TppLine;
    ppLine582: TppLine;
    ppLine587: TppLine;
    ppLine589: TppLine;
    ppLine614: TppLine;
    ppLine631: TppLine;
    ppLine632: TppLine;
    ppLine636: TppLine;
    ppLine639: TppLine;
    ppLine641: TppLine;
    projectnox6002: TppLabel;
    qtyx6002: TppLabel;
    sp_qtyx6002: TppLabel;
    ppLine618: TppLine;
    category001: TppLabel;
    ppLine634: TppLine;
    ppLabel527: TppLabel;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLine596: TppLine;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppParameterList6: TppParameterList;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxGrid1shpm_c_r: TcxGridDBBandedColumn;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxGrid1FII_S: TcxGridDBBandedColumn;
    cxGrid1FII_E: TcxGridDBBandedColumn;
    cxGrid1T1_EDT: TcxGridDBBandedColumn;
    chk17: TCheckBox;
    chk18: TCheckBox;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    ppLabel646: TppLabel;
    ppLabel367: TppLabel;
    ppLabel650: TppLabel;
    ppLabel4: TppLabel;
    cxGrid1Shpt_Bal: TcxGridDBBandedColumn;
    cxGrid1Flow1_V: TcxGridDBBandedColumn;
    cxGrid1T1Gap_V: TcxGridDBBandedColumn;
    cxGrid1Flow23_V: TcxGridDBBandedColumn;
    cxGrid1T2_WA1: TcxGridDBBandedColumn;
    cxGrid1Shpt_BP: TcxGridDBBandedColumn;
    cxGrid1act_grpg: TcxGridDBBandedColumn;
    cxGrid1act_cmpdt3g_r: TcxGridDBBandedColumn;
    ShowBoldRedvedata1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1act_itemPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure ADODataSet1NewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cxGrid1act_itemHeaderClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure ComboBox4Enter(Sender: TObject);
    procedure ComboBox6Enter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ADODataSet1AfterOpen(DataSet: TDataSet);
    procedure ADODataSetMSTARTChange(Sender: TField);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure ComboBox5Enter(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawIndicatorCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ComboBox7Enter(Sender: TObject);
    procedure cbb1Enter(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1line_noPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure LINENOChange(Sender: TField);
    procedure QNNOChange(Sender: TField);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand4BeforePrint(Sender: TObject);
    procedure QtyshortChange(Sender: TField);
    procedure cxGrid1qty_shortPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure cbb2Enter(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure cxGrid1act_cmpdtPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ppDetailBand5BeforePrint(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ppReport4PreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand6BeforePrint(Sender: TObject);
    procedure ppSummaryBand6BeforePrint(Sender: TObject);
    procedure ppSummaryBand7BeforePrint(Sender: TObject);
    procedure ppDetailBand7BeforePrint(Sender: TObject);
    procedure ppReport5PreviewFormCreate(Sender: TObject);
    procedure ComboBox8Enter(Sender: TObject);
    procedure ImportData1Click(Sender: TObject);
    procedure UpdateSewingfacility1Click(Sender: TObject);
    procedure UpdateLastPDNDate1Click(Sender: TObject);
    procedure cxComboBox1Enter(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure cxComboBox2Enter(Sender: TObject);
    procedure cxGrid1workordernoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BitBtn10Click(Sender: TObject);
    procedure Insertintotransfer1Click(Sender: TObject);
    procedure Moveoutfromtransfer1Click(Sender: TObject);
    procedure chk11Click(Sender: TObject);
    procedure ppGroupFooterBand5BeforePrint(Sender: TObject);
    procedure ADODataSetspapp2change(Sender: TField);
    procedure cxGrid1custpoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid1grp_actPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ppReport6PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand9BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand4BeforePrint(Sender: TObject);
    procedure adodatasetpvh_costcochange(Sender: TField);
    procedure ppDetailBand9BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure EnquerylogswithWarningmessage1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure PVHReportlayoutdependentonUSCAHK1Click(Sender: TObject);
    procedure checkenquerySQLscript1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ppDetailBand10BeforePrint(Sender: TObject);
    procedure ppReport7PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand10BeforePrint(Sender: TObject);
    procedure cxGrid1lwdt_actPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BitBtn12Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ADODataSetcq2change(Sender: TField);
    procedure RefreshdatafromRWO1Click(Sender: TObject);
    procedure ADODataSetcmpdtchange(Sender: TField);
    procedure UpdateT2T3date1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1Bands5HeaderClick(Sender: TObject);
    procedure cxGrid1DBBandedTableView1Bands4HeaderClick(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(
      Sender: TObject);
    procedure ComboBox11Enter(Sender: TObject);
    procedure cxGrid1DBBandedTableView1Bands3HeaderClick(Sender: TObject);
    procedure chk4Click(Sender: TObject);
    procedure chk6Click(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure chk9Click(Sender: TObject);
    procedure chk7Click(Sender: TObject);
    procedure chk8Click(Sender: TObject);
    procedure chk10Click(Sender: TObject);
    procedure chk12Click(Sender: TObject);
    procedure chk13Click(Sender: TObject);
    procedure ShowHideHIJ1Click(Sender: TObject);
    procedure chk14Click(Sender: TObject);
    procedure ShowHideCHK151Click(Sender: TObject);
    procedure chk15Click(Sender: TObject);
    procedure chk16Click(Sender: TObject);
    procedure cxGrid1add_wonoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid1add_rwonoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid1add_corderPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RefreshDSeg1Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure SHPMRChange(Sender: TField);
    procedure PRODRChange(Sender: TField);
    procedure chk17Click(Sender: TObject);
    procedure chk18Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1SelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure ShowBoldRedvedata1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure printshipmentbyproject(const projectno:string);
    procedure calc_somettl;
  end;

var
  frmCarte_Ordprocessing: TfrmCarte_Ordprocessing;
  FontRedStyle: TCxStyle;
  FontBoldRedStyle: TCxStyle;

implementation

uses Carte_MainFormu, Carte_RequestactionFormu, Carte_ReportsFormu,
  Carte_SewingfacilityFormu, Carte_ShortFormu, Carte_LogisticsflowFormu,
  Carte_PDNDateFormu, Carte_SplitFormu, Carte_ShipmentbyprojectFormu,
  Carte_ImportrwodataFormu, Carte_TimechangeFormu, Carte_CustpoqtyFormu,
  Carte_GroupactionFormu, Carte_WO2Formu, Carte_EnquirywarningFormu,
  Carte_PVHIPOFormu, Carte_Timechange1Formu, Carte_OpttimemanagementFormu,
  POcriteriaFormu;

{$R *.dfm}

procedure TfrmCarte_Ordprocessing.ADODataSet1AfterOpen(DataSet: TDataSet);
begin
  (adodataset1.FieldByName('fst_dt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('t1_edt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('t3_sdt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('rpt_app') as tdatetimefield).DisplayFormat:='yyyy/mm/dd';
  (adodataset1.FieldByName('fw_cddt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('m_start') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('m_end') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('mcup_mstart') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('mcup_mend') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('fwdt_o') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('fwdt_r') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('fwdt_a') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('ex_o') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('ex_r') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('ex_r_wk') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('ex_l') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('ex_a') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('act_start') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('t3dt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('t3dt_r') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('at3dt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('act_cmpdt0') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('act_cmpdt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('ct_he') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('ddt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('m_ddt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('ddt0') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('m_ddt0') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('mcup_ddt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('mcup_mddt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('mcup_ddt0') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('mcup_mddt0') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('custpo_dt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('wo_cfmdt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('sp_appdt_o') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('sp_appdt_r') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('sp_appdt_a') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('sp_app') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('pvh_mtodt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('pvh_bpdt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('lwdt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('lwdt_c') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('lwdt_s') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('lwdt_r') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('lwdt_r1') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('lwdt_r2') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('lwdt_p') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('q1_dt1') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('q1_dt2') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('q1_dt4') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('act_cmpdt3g_r') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.fieldbyname('add_wono_c1') as tintegerfield).displayformat:='+#;-#;0';
  (adodataset1.fieldbyname('add_wo3') as tintegerfield).displayformat:='+#;-#;0';
  (adodataset1.fieldbyname('ttl_s2') as tfloatfield).displayformat:='#0.00;-#0.00;0.00';
  adodataset1.FieldByName('ddt').OnChange:=adodatasetmstartchange;
  adodataset1.FieldByName('m_ddt').OnChange:=adodatasetmstartchange;
  adodataset1.FieldByName('m_ddt0').OnChange:=adodatasetmstartchange;
  adodataset1.FieldByName('m_start').OnChange:=adodatasetmstartchange;
  adodataset1.FieldByName('m_end').OnChange:=adodatasetmstartchange;
  adodataset1.FieldByName('ex_o').OnChange:=adodatasetmstartchange;
  adodataset1.FieldByName('ex_r').OnChange:=adodatasetmstartchange;
  adodataset1.FieldByName('ex_l').OnChange:=adodatasetmstartchange;
  adodataset1.FieldByName('line_no').OnChange:=linenochange;
  adodataset1.FieldByName('line_no1').OnChange:=linenochange;
  adodataset1.FieldByName('qn_no').OnChange:=qnnochange;
  adodataset1.FieldByName('qn_no1').OnChange:=qnnochange;
  adodataset1.FieldByName('qty_cutless').OnChange:=qtyshortchange;
  adodataset1.FieldByName('qty_sample').OnChange:=qtyshortchange;
  adodataset1.FieldByName('qty_defect').OnChange:=qtyshortchange;
  adodataset1.FieldByName('qty_lost').OnChange:=qtyshortchange;
  adodataset1.FieldByName('qty_rep').OnChange:=qtyshortchange;
  adodataset1.FieldByName('qty_delay').OnChange:=qtyshortchange;
  adodataset1.FieldByName('sp_app2').OnChange:=adodatasetspapp2change;
  adodataset1.FieldByName('pvh_costco').onchange:=adodatasetpvh_costcochange;
  adodataset1.FieldByName('c_q2').onchange:=adodatasetcq2change;
  adodataset1.FieldByName('c_q3').onchange:=adodatasetcq2change;
  adodataset1.FieldByName('c_q4').onchange:=adodatasetcq2change;
  adodataset1.FieldByName('c_q5').onchange:=adodatasetcq2change;
  adodataset1.FieldByName('c_q6').onchange:=adodatasetcq2change;
  //adodataset1.FieldByName('act_cmpdt').OnChange:=adodatasetcmpdtchange;
  adodataset1.FieldByName('act_cmpdt0').OnChange:=adodatasetcmpdtchange;
  adodataset1.FieldByName('ct_he').OnChange:=adodatasetcmpdtchange;
  //
  calc_somettl;
end;

procedure TfrmCarte_Ordprocessing.ADODataSet1NewRecord(DataSet: TDataSet);
var
  seq:integer;
begin
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select max(seq) as x1 from tbl_carte_sopc1';
    open;
    if not fieldbyname('x1').isnull then seq:=fieldbyname('x1').Value+1
    else seq:=1;
  end;
  adodataset1.FieldByName('seq').Value:=seq;
  adodataset1.fieldbyname('urgent_o').value:=false;
  adodataset1.fieldbyname('problem_o').value:=false;
  adodataset1.fieldbyname('act_cmp').value:=false;
  adodataset1.fieldbyname('ord_cancel').value:=false;
  //adodataset1.fieldbyname('ct_raw').value:=false;
  //adodataset1.fieldbyname('dis_internal').value:=false;
  //adodataset1.fieldbyname('dis_external').value:=true;
end;

procedure TfrmCarte_Ordprocessing.ADODataSetcmpdtchange(Sender: TField);
begin
  //if (not adodataset1.FieldByName('act_cmpdt0').IsNull) and (not adodataset1.FieldByName('act_cmpdt').IsNull) then
  //adodataset1.FieldByName('qty1_sp').Value:=adodataset1.FieldByName('act_cmpdt').Value-adodataset1.FieldByName('act_cmpdt0').Value
  //else adodataset1.fieldbyname('qty1_sp').value:=null;
  if (not adodataset1.FieldByName('ct_he').IsNull) and (not adodataset1.FieldByName('act_cmpdt0').IsNull) then
  adodataset1.FieldByName('qty1_sp').Value:=adodataset1.FieldByName('ct_he').Value-adodataset1.FieldByName('act_cmpdt0').Value;
end;

procedure TfrmCarte_Ordprocessing.ADODataSetcq2change(Sender: TField);
var
  q1,q2,q3,q4,q5:Integer;
begin
  q1:=0; q2:=0; q3:=0; q4:=0; q5:=0;
  if not adodataset1.fieldbyname('c_q2').isnull then q1:=adodataset1.fieldbyname('c_q2').value;
  if not adodataset1.fieldbyname('c_q3').isnull then q2:=adodataset1.fieldbyname('c_q3').value;
  if not adodataset1.fieldbyname('c_q4').isnull then q3:=adodataset1.fieldbyname('c_q4').value;
  if not adodataset1.fieldbyname('c_q5').isnull then q4:=adodataset1.fieldbyname('c_q5').value;
  if not adodataset1.fieldbyname('c_q6').isnull then q5:=adodataset1.fieldbyname('c_q6').value;
  adodataset1.fieldbyname('c_q1').value:=adodataset1.fieldbyname('qty1').value-q1-q2-q3-q4-q5;
end;

procedure TfrmCarte_Ordprocessing.ADODataSetMSTARTChange(Sender: TField);
begin
  //if not adodataset1.fieldbyname('ddt0').isnull then begin
  if (not adodataset1.FieldByName('ddt').IsNull) and (not adodataset1.FieldByName('ex_o').IsNull) then
  adodataset1.FieldByName('mex_od').Value:=adodataset1.FieldByName('ex_o').Value-adodataset1.FieldByName('ddt').Value
  else adodataset1.fieldbyname('mex_od').value:=null;
  if (not adodataset1.FieldByName('ddt').IsNull) and (not adodataset1.FieldByName('ex_r').IsNull) then
  adodataset1.FieldByName('mex_rd').Value:=adodataset1.FieldByName('ex_r').Value-adodataset1.FieldByName('ddt').Value
  else adodataset1.fieldbyname('mex_rd').value:=null;
  if (not adodataset1.FieldByName('ddt').IsNull) and (not adodataset1.FieldByName('ex_l').IsNull) then
  adodataset1.FieldByName('mex_ld').Value:=adodataset1.FieldByName('ex_l').Value-adodataset1.FieldByName('ddt').Value
  else adodataset1.fieldbyname('mex_ld').value:=null;

  if (not adodataset1.FieldByName('m_ddt').IsNull) and (not adodataset1.FieldByName('ex_o').IsNull) then
  adodataset1.FieldByName('mex_od0').Value:=adodataset1.FieldByName('ex_o').Value-adodataset1.FieldByName('m_ddt').Value
  else adodataset1.fieldbyname('mex_od0').value:=null;
  if (not adodataset1.FieldByName('m_ddt').IsNull) and (not adodataset1.FieldByName('ex_r').IsNull) then
  adodataset1.FieldByName('mex_rd0').Value:=adodataset1.FieldByName('ex_r').Value-adodataset1.FieldByName('m_ddt').Value
  else adodataset1.fieldbyname('mex_rd0').value:=null;
  if (not adodataset1.FieldByName('m_ddt').IsNull) and (not adodataset1.FieldByName('ex_l').IsNull) then
  adodataset1.FieldByName('mex_ld0').Value:=adodataset1.FieldByName('ex_l').Value-adodataset1.FieldByName('m_ddt').Value
  else adodataset1.fieldbyname('mex_ld0').value:=null;

  if (not adodataset1.FieldByName('m_ddt0').IsNull) and (not adodataset1.FieldByName('ex_o').IsNull) then
  adodataset1.FieldByName('mex_od0').Value:=adodataset1.FieldByName('ex_o').Value-adodataset1.FieldByName('m_ddt0').Value
  else adodataset1.fieldbyname('mex_od0').value:=null;
  if (not adodataset1.FieldByName('m_ddt0').IsNull) and (not adodataset1.FieldByName('ex_r').IsNull) then
  adodataset1.FieldByName('mex_rd0').Value:=adodataset1.FieldByName('ex_r').Value-adodataset1.FieldByName('m_ddt0').Value
  else adodataset1.fieldbyname('mex_rd0').value:=null;
  if (not adodataset1.FieldByName('m_ddt0').IsNull) and (not adodataset1.FieldByName('ex_l').IsNull) then
  adodataset1.FieldByName('mex_ld0').Value:=adodataset1.FieldByName('ex_l').Value-adodataset1.FieldByName('m_ddt0').Value
  else adodataset1.fieldbyname('mex_ld0').value:=null;

  if (not adodataset1.FieldByName('m_start').IsNull) and (not adodataset1.FieldByName('ex_o').IsNull) then
  adodataset1.FieldByName('mex_os').Value:=adodataset1.FieldByName('ex_o').Value-adodataset1.FieldByName('m_start').Value
  else adodataset1.fieldbyname('mex_os').value:=null;
  if (not adodataset1.FieldByName('m_start').IsNull) and (not adodataset1.FieldByName('ex_r').IsNull) then
  adodataset1.FieldByName('mex_rs').Value:=adodataset1.FieldByName('ex_r').Value-adodataset1.FieldByName('m_start').Value
  else adodataset1.fieldbyname('mex_rs').value:=null;
  if (not adodataset1.FieldByName('m_start').IsNull) and (not adodataset1.FieldByName('ex_l').IsNull) then
  adodataset1.FieldByName('mex_ls').Value:=adodataset1.FieldByName('ex_l').Value-adodataset1.FieldByName('m_start').Value
  else adodataset1.fieldbyname('mex_ls').value:=null;

  if (not adodataset1.FieldByName('m_end').IsNull) and (not adodataset1.FieldByName('ex_o').IsNull) then
  adodataset1.FieldByName('mex_oe').Value:=adodataset1.FieldByName('ex_o').Value-adodataset1.FieldByName('m_end').Value
  else adodataset1.fieldbyname('mex_oe').value:=null;
  if (not adodataset1.FieldByName('m_end').IsNull) and (not adodataset1.FieldByName('ex_r').IsNull) then
  adodataset1.FieldByName('mex_re').Value:=adodataset1.FieldByName('ex_r').Value-adodataset1.FieldByName('m_end').Value
  else adodataset1.fieldbyname('mex_re').value:=null;
  if (not adodataset1.FieldByName('m_end').IsNull) and (not adodataset1.FieldByName('ex_l').IsNull) then
  adodataset1.FieldByName('mex_le').Value:=adodataset1.FieldByName('ex_l').Value-adodataset1.FieldByName('m_end').Value
  else adodataset1.fieldbyname('mex_le').value:=null;
end;

procedure TfrmCarte_Ordprocessing.adodatasetpvh_costcochange(Sender: TField);
begin
  if not adodataset1.fieldbyname('pvh_costco').isnull then begin
    if adodataset1.FieldByName('pvh_costco').value='C' then
    adodataset1.FieldByName('pvh_costco_seq').Value:='2';
  end;
end;

procedure TfrmCarte_Ordprocessing.ADODataSetspapp2change(Sender: TField);
begin
  if not adodataset1.fieldbyname('sp_app2').isnull then begin
    if (adodataset1.fieldbyname('sp_app2').value='F') or (adodataset1.fieldbyname('sp_app2').value='R') then begin
      with adoquery3 do begin
        close;
        sql.text:='select max(sp_appdt_a) as x1 from tbl_carte_sopc1 where custstyle='''+adodataset1.fieldbyname('custstyle').value+''' and phcolor='''+adodataset1.fieldbyname('phcolor').value+''' and keycode<>'''+adodataset1.fieldbyname('keycode').value+'''';
        open;
        if not fieldbyname('x1').isnull then adodataset1.fieldbyname('sp_appdt_a').value:=fieldbyname('x1').value;
      end;
      if (adodataset1.fieldbyname('sp_app2').value='F') then begin
        adodataset1.fieldbyname('sp_app1').value:='N';
      end else if (adodataset1.fieldbyname('sp_app2').value='R') then begin
        adodataset1.fieldbyname('mtono').value:='N';
      end;
    //end else if (adodataset1.fieldbyname('sp_app2').value='R') then begin
    //  adodataset1.fieldbyname('sp_app').value:=encodedate(2000,1,1);
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.BitBtn10Click(Sender: TObject);
var
  tc:boolean;
begin
  if adodataset1.active then begin
    if (adodataset1.FieldByName('tc_seqno').isnull) then begin
      if (cxGrid1DBBandedTableView1.DataController.filteredrecordcount<=20) then begin
        if application.MessageBox('確定選擇這些Log做時限調整?','確定',mb_iconquestion+mb_yesno)=idyes then tc:=true else tc:=false;
      end else begin
        showmessage('請先選擇好需要做時限調整的Log!');
        tc:=false;
      end;
      if tc then begin
        if not adodataset1.fieldbyname('seq').isnull then begin
          if frmCarte_Timechange=nil then frmCarte_Timechange:=tfrmCarte_Timechange.create(nil);
          with frmCarte_Timechange.ADODataSet3 do begin
            close;
            commandtext:='select * from tbl_carte_sopc3_grp where tc_seq3g=''0''';
            open;
            append;
          end;
          //PMC
          frmCarte_Timechange.cxgrid1sp_appdt_rq.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1ddt_rq.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1m_ddt_rq.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1fwdt_rq.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange.cxgrid1ex_rq.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          //frmCarte_Timechange.cxgrid1lwdiff_rq.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange.cxgrid1at3diff_rq.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange.cxgrid1clos_rq.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1clos_fl.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          //MM
          frmCarte_Timechange.cxgrid1sp_appdt_rq1.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1ddt_rq1.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1m_ddt_rq1.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1fwdt_rq1.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange.cxgrid1ex_rq1.options.editing:=frmCarte_Main.checkbox12.checked;
          //frmCarte_Timechange.cxgrid1lwdiff_rq1.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange.cxgrid1at3diff_rq1.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange.cxgrid1clos_rq1.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1ex_s.options.editing:=frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1shpm_nlr.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1shpm.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1shpm_r.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          //Confirm
          frmCarte_Timechange.bitbtn1.enabled:=frmCarte_Main.checkbox18.checked;
          frmCarte_Timechange.show;
        end;
      end;
    end else begin
          if frmCarte_Timechange=nil then frmCarte_Timechange:=tfrmCarte_Timechange.create(nil);
          with frmCarte_Timechange.ADODataSet3 do begin
            close;
            commandtext:='select * from tbl_carte_sopc3_grp where charindex(tc_seq3g,'''+adodataset1.FieldByName('tc_seqno').value+''')>0';//tc_seq3g=:x1';
            open;
          end;
          //PMC
          frmCarte_Timechange.cxgrid1sp_appdt_rq.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1ddt_rq.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1m_ddt_rq.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1fwdt_rq.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange.cxgrid1ex_rq.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          //frmCarte_Timechange.cxgrid1lwdiff_rq.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange.cxgrid1at3diff_rq.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange.cxgrid1clos_rq.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1clos_fl.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          //MM
          frmCarte_Timechange.cxgrid1sp_appdt_rq1.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1ddt_rq1.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1m_ddt_rq1.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1fwdt_rq1.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange.cxgrid1ex_rq1.options.editing:=frmCarte_Main.checkbox12.checked;
          //frmCarte_Timechange.cxgrid1lwdiff_rq1.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange.cxgrid1at3diff_rq1.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange.cxgrid1clos_rq1.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1ex_s.options.editing:=frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1shpm_nlr.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1shpm.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          frmCarte_Timechange.cxgrid1shpm_r.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox12.checked;
          //Confirm
          frmCarte_Timechange.bitbtn1.enabled:=frmCarte_Main.checkbox18.checked;
          frmCarte_Timechange.show;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.BitBtn11Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
  //if combobox4.text='PVH' then begin
    with adoquery3 do begin
      close;
      sql.text:='exec sp_carte_genwo2';
      execsql;
    end;
    if frmCarte_WO2=nil then frmCarte_WO2:=tfrmCarte_WO2.create(nil);
    with frmCarte_WO2.adodataset1 do begin
      close;
      commandtext:='select * from tbl_carte_sopc8';
      open;
    end;
    frmCarte_WO2.Show;
  //end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure TfrmCarte_Ordprocessing.BitBtn12Click(Sender: TObject);
var
  sqlstr2000:string;
begin
  screen.cursor:=crSQLWait;
  try
  if adodataset1.active then begin
    if not adodataset1.fieldbyname('seq').isnull then begin

      sqlstr2000:=adodataset1.commandtext;
      if cxgrid1dbbandedtableview1.DataController.Filter.FilterText>'' then
      sqlstr2000:=sqlstr2000+' and '+cxgrid1dbbandedtableview1.DataController.Filter.FilterText;

      with adoquery1 do begin
        close;
        sql.text:='exec sp_carte_gensopc401 :x1';//''+sqlstr2000+'''';
        parameters[0].value:=sqlstr2000;
        execsql;
      end;

      if frmCarte_Opttimemanagement=nil then frmCarte_Opttimemanagement:=tfrmCarte_Opttimemanagement.create(nil);
      with frmCarte_Opttimemanagement.ADODataSet1 do begin
        close;
        commandtext:='select * from tbl_carte_sopc401 b where b.seq in (select seq from tbl_carte_sopc1 a where 1=1';
        if combobox1.text>'' then commandtext:=commandtext+' and cgrp='''+combobox1.text+'''';
        if cxcombobox1.text>'' then commandtext:=commandtext+' and charindex(keycode,'''+cxcombobox1.text+''')>0';
        if combobox2.text>'' then commandtext:=commandtext+' and charindex(projectno,'''+combobox2.text+''')>0';
        if cxcombobox2.text>'' then commandtext:=commandtext+' and charindex(booking,'''+cxcombobox2.text+''')>0';
        if combobox4.text>'' then begin
          if combobox4.text<>'All' then
          commandtext:=commandtext+' and cust='''+combobox4.text+'''';
        end;
        if combobox5.text>'' then commandtext:=commandtext+' and qty1_sp='''+combobox5.text+'''';
        if combobox6.text>'' then commandtext:=commandtext+' and custstyle='''+combobox6.text+'''';
        if combobox3.text>'' then begin
           if combobox3.text='未開制單' then commandtext:=commandtext+' and ((workorderno is null) or (workorderno=''''))'
           else commandtext:=commandtext+' and workorderno='''+combobox3.text+'''';
        end;
        if combobox7.text>'' then begin
          if (combobox7.text<>'All') and (combobox7.text<>'CN') and (combobox7.text<>'RX+GG') and (combobox7.text<>'SL+SLPP') then
            commandtext:=commandtext+' and case when prod_site_r is not null then prod_site_r else prod_site end='''+combobox7.text+''''
          //else if (combobox7.text='All') then
          //  commandtext:=commandtext+' and case when prod_site_r is not null then prod_site_r else prod_site end in (''SL'',''CL'',''GG'',''RX'',''SLPP'')'
          else if (combobox7.text='CN') then
            commandtext:=commandtext+' and case when prod_site_r is not null then prod_site_r else prod_site end in (''SL'',''GG'',''RX'',''SLPP'')'
          else if (combobox7.text='RX+GG') then
            commandtext:=commandtext+' and case when prod_site_r is not null then prod_site_r else prod_site end in (''GG'',''RX'')'
          else if (combobox7.text='SL+SLPP') then
            commandtext:=commandtext+' and case when prod_site_r is not null then prod_site_r else prod_site end in (''SL'',''SLPP'')';
        end;
        if combobox8.text>'' then commandtext:=commandtext+' and div like '''+combobox8.text+'%''';
        if cbb1.text>'' then begin
          if pos('*',cbb1.text)>0 then
            commandtext:=commandtext+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=1 and act_item3='''+copy(cbb1.text,1,3)+''')'
                        +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=1 and act_item3g='''+copy(cbb1.text,1,3)+'''))'
          else commandtext:=commandtext+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0 and act_item3='''+cbb1.text+''')'
                           +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_item3g='''+copy(cbb1.text,1,3)+'''))';
        end;
        if cbb2.text>'' then commandtext:=commandtext+' and (exists (select b.seq from tbl_carte_sopc2 b,tbl_carte_sopc3 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and c.act_cmp3=0 and b.act_cnt=1 and act_issue='''+cbb2.text+''')'
                                               +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+cbb2.text+'''))';
        if dateedit1.date>0 then commandtext:=commandtext+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',dateedit1.date)+'''';
        if dateedit2.date>0 then commandtext:=commandtext+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',dateedit2.date+1)+'''';
        if dateedit3.date>0 then commandtext:=commandtext+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',dateedit3.date)+''')';
        if edit1.text>'' then commandtext:=commandtext+' and mex_oe>='+edit1.text;
        if edit2.text>'' then commandtext:=commandtext+' and mex_oe<='+edit2.text;
        if (dateedit4.date>0) or (dateedit5.date>0) then begin
          if dateedit4.date>0 then commandtext:=commandtext+' and act_cmpdt>='''+formatdatetime('yyyy-mm-dd',dateedit4.date)+'''';
          if dateedit5.date>0 then commandtext:=commandtext+' and act_cmpdt<='''+formatdatetime('yyyy-mm-dd',dateedit5.date)+'''';
        end else begin
          if chk3.checked then commandtext:=commandtext+' and /*ex_a is not null*/act_exfty=1'
          else commandtext:=commandtext+' and /*ex_a is null*/act_exfty=0';
        end;
        if chk4.checked then commandtext:=commandtext+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0)';
        if chk6.checked then commandtext:=commandtext+' and ((exists (select seq from tbl_carte_sopc3_grp c where charindex(c.grp_act3g,a.grp_act)>0 and act_cmp3g=0)))';
        if chk5.checked then begin
          commandtext:=commandtext+' and ord_cancel1=''Y''';
          if chk1.checked then commandtext:=commandtext+' and ((workorderno is null) or (workorderno=''''))';
        end else begin
          commandtext:=commandtext+' and ((ord_cancel1='''') or (ord_cancel1 is null))';
          if chk1.checked then commandtext:=commandtext+' and ((workorderno is null) or (workorderno=''''))'
          else commandtext:=commandtext+' and workorderno>''''';
        end;
        if cxgrid1dbbandedtableview1.DataController.Filter.FilterText>'' then
        commandtext:=commandtext+' and '+cxgrid1dbbandedtableview1.DataController.Filter.FilterText;
        commandtext:=commandtext+')';
        open;
      end;
      frmCarte_Opttimemanagement.show;
      //WH
      frmCarte_Opttimemanagement.cxgrid1wh_mat.options.editing:=frmCarte_Main.checkbox23.checked;
      frmCarte_Opttimemanagement.cxgrid1wh_issdt_o1.options.editing:=frmCarte_Main.checkbox23.checked;
      frmCarte_Opttimemanagement.cxgrid1wh_issdt_o2.options.editing:=frmCarte_Main.checkbox23.checked;
      frmCarte_Opttimemanagement.cxgrid1wh_issdt_r1.options.editing:=frmCarte_Main.checkbox23.checked;
      frmCarte_Opttimemanagement.cxgrid1wh_issdt_r2.options.editing:=frmCarte_Main.checkbox23.checked;
      frmCarte_Opttimemanagement.cxgrid1wh_issdt_po1.options.editing:=frmCarte_Main.checkbox23.checked;
      frmCarte_Opttimemanagement.cxgrid1wh_issdt_po2.options.editing:=frmCarte_Main.checkbox23.checked;
      frmCarte_Opttimemanagement.cxgrid1wh_issdt_pr1.options.editing:=frmCarte_Main.checkbox23.checked;
      frmCarte_Opttimemanagement.cxgrid1wh_issdt_pr2.options.editing:=frmCarte_Main.checkbox23.checked;
      frmCarte_Opttimemanagement.cxgrid1wh_issdt_a1.options.editing:=frmCarte_Main.checkbox23.checked;
      frmCarte_Opttimemanagement.cxgrid1wh_issdt_a2.options.editing:=frmCarte_Main.checkbox23.checked;
      //cutting
      frmCarte_Opttimemanagement.cxgrid1cut_cs1.options.editing:=frmCarte_Main.checkbox21.checked;
      frmCarte_Opttimemanagement.cxgrid1cut_o1.options.editing:=frmCarte_Main.checkbox21.checked;
      frmCarte_Opttimemanagement.cxgrid1cut_o2.options.editing:=frmCarte_Main.checkbox21.checked;
      frmCarte_Opttimemanagement.cxgrid1cut_r1.options.editing:=frmCarte_Main.checkbox21.checked;
      frmCarte_Opttimemanagement.cxgrid1cut_r2.options.editing:=frmCarte_Main.checkbox21.checked;
      frmCarte_Opttimemanagement.cxgrid1cut_cs2.options.editing:=frmCarte_Main.checkbox21.checked;
      frmCarte_Opttimemanagement.cxgrid1cut_po1.options.editing:=frmCarte_Main.checkbox21.checked;
      frmCarte_Opttimemanagement.cxgrid1cut_po2.options.editing:=frmCarte_Main.checkbox21.checked;
      frmCarte_Opttimemanagement.cxgrid1cut_pr1.options.editing:=frmCarte_Main.checkbox21.checked;
      frmCarte_Opttimemanagement.cxgrid1cut_pr2.options.editing:=frmCarte_Main.checkbox21.checked;
      frmCarte_Opttimemanagement.cxgrid1cut_cs3.options.editing:=frmCarte_Main.checkbox21.checked;
      frmCarte_Opttimemanagement.cxgrid1cut_a1.options.editing:=frmCarte_Main.checkbox21.checked;
      frmCarte_Opttimemanagement.cxgrid1cut_a2.options.editing:=frmCarte_Main.checkbox21.checked;
      //sub
      frmCarte_Opttimemanagement.cxgrid1sub_need.options.editing:=frmCarte_Main.checkbox24.checked;
      frmCarte_Opttimemanagement.cxgrid1sub_o1.options.editing:=frmCarte_Main.checkbox24.checked;
      frmCarte_Opttimemanagement.cxgrid1sub_o2.options.editing:=frmCarte_Main.checkbox24.checked;
      frmCarte_Opttimemanagement.cxgrid1sub_r1.options.editing:=frmCarte_Main.checkbox24.checked;
      frmCarte_Opttimemanagement.cxgrid1sub_r2.options.editing:=frmCarte_Main.checkbox24.checked;
      frmCarte_Opttimemanagement.cxgrid1sub_po1.options.editing:=frmCarte_Main.checkbox24.checked;
      frmCarte_Opttimemanagement.cxgrid1sub_po2.options.editing:=frmCarte_Main.checkbox24.checked;
      frmCarte_Opttimemanagement.cxgrid1sub_pr1.options.editing:=frmCarte_Main.checkbox24.checked;
      frmCarte_Opttimemanagement.cxgrid1sub_pr2.options.editing:=frmCarte_Main.checkbox24.checked;
      frmCarte_Opttimemanagement.cxgrid1sub_a1.options.editing:=frmCarte_Main.checkbox24.checked;
      frmCarte_Opttimemanagement.cxgrid1sub_a2.options.editing:=frmCarte_Main.checkbox24.checked;
      //sub1
      frmCarte_Opttimemanagement.cxgrid1sub1_need.options.editing:=frmCarte_Main.checkbox25.checked;
      frmCarte_Opttimemanagement.cxgrid1sub1_o1.options.editing:=frmCarte_Main.checkbox25.checked;
      frmCarte_Opttimemanagement.cxgrid1sub1_o2.options.editing:=frmCarte_Main.checkbox25.checked;
      frmCarte_Opttimemanagement.cxgrid1sub1_r1.options.editing:=frmCarte_Main.checkbox25.checked;
      frmCarte_Opttimemanagement.cxgrid1sub1_r2.options.editing:=frmCarte_Main.checkbox25.checked;
      frmCarte_Opttimemanagement.cxgrid1sub1_po1.options.editing:=frmCarte_Main.checkbox25.checked;
      frmCarte_Opttimemanagement.cxgrid1sub1_po2.options.editing:=frmCarte_Main.checkbox25.checked;
      frmCarte_Opttimemanagement.cxgrid1sub1_pr1.options.editing:=frmCarte_Main.checkbox25.checked;
      frmCarte_Opttimemanagement.cxgrid1sub1_pr2.options.editing:=frmCarte_Main.checkbox25.checked;
      frmCarte_Opttimemanagement.cxgrid1sub1_a1.options.editing:=frmCarte_Main.checkbox25.checked;
      frmCarte_Opttimemanagement.cxgrid1sub1_a2.options.editing:=frmCarte_Main.checkbox25.checked;
      //molding
      frmCarte_Opttimemanagement.cxgrid1mold_need.options.editing:=frmCarte_Main.checkbox26.checked;
      frmCarte_Opttimemanagement.cxgrid1mold_need1.options.editing:=frmCarte_Main.checkbox26.checked;
      frmCarte_Opttimemanagement.cxgrid1mold_o1.options.editing:=frmCarte_Main.checkbox26.checked;
      frmCarte_Opttimemanagement.cxgrid1mold_o2.options.editing:=frmCarte_Main.checkbox26.checked;
      frmCarte_Opttimemanagement.cxgrid1mold_r1.options.editing:=frmCarte_Main.checkbox26.checked;
      frmCarte_Opttimemanagement.cxgrid1mold_r2.options.editing:=frmCarte_Main.checkbox26.checked;
      frmCarte_Opttimemanagement.cxgrid1mold_po1.options.editing:=frmCarte_Main.checkbox26.checked;
      frmCarte_Opttimemanagement.cxgrid1mold_po2.options.editing:=frmCarte_Main.checkbox26.checked;
      frmCarte_Opttimemanagement.cxgrid1mold_pr1.options.editing:=frmCarte_Main.checkbox26.checked;
      frmCarte_Opttimemanagement.cxgrid1mold_pr2.options.editing:=frmCarte_Main.checkbox26.checked;
      frmCarte_Opttimemanagement.cxgrid1mold_a1.options.editing:=frmCarte_Main.checkbox26.checked;
      frmCarte_Opttimemanagement.cxgrid1mold_a2.options.editing:=frmCarte_Main.checkbox26.checked;
      //pi
      frmCarte_Opttimemanagement.cxgrid1pi_o1.options.editing:=frmCarte_Main.checkbox27.checked;
      frmCarte_Opttimemanagement.cxgrid1pi_o2.options.editing:=frmCarte_Main.checkbox27.checked;
      frmCarte_Opttimemanagement.cxgrid1pi_r1.options.editing:=frmCarte_Main.checkbox27.checked;
      frmCarte_Opttimemanagement.cxgrid1pi_r2.options.editing:=frmCarte_Main.checkbox27.checked;
      frmCarte_Opttimemanagement.cxgrid1pi_po1.options.editing:=frmCarte_Main.checkbox27.checked;
      frmCarte_Opttimemanagement.cxgrid1pi_po2.options.editing:=frmCarte_Main.checkbox27.checked;
      frmCarte_Opttimemanagement.cxgrid1pi_pr1.options.editing:=frmCarte_Main.checkbox27.checked;
      frmCarte_Opttimemanagement.cxgrid1pi_pr2.options.editing:=frmCarte_Main.checkbox27.checked;
      frmCarte_Opttimemanagement.cxgrid1pi_a1.options.editing:=frmCarte_Main.checkbox27.checked;
      frmCarte_Opttimemanagement.cxgrid1pi_a2.options.editing:=frmCarte_Main.checkbox27.checked;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmCarte_Ordprocessing.BitBtn1Click(Sender: TObject);
begin
  cxgrid1.SetFocus;
  adodataset1.append;
end;

procedure TfrmCarte_Ordprocessing.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Delete this record?','Confirmation',mb_iconquestion+mb_okcancel)=idok then begin
    with adoquery1 do begin
      close;
      parameters.clear;
      sql.text:='delete from tbl_carte_sopc2 where seq=:x1';
      parameters[0].value:=adodataset1.fieldbyname('seq').value;
      execsql;
    end;
    with adoquery1 do begin
      close;
      parameters.clear;
      sql.text:='delete from tbl_carte_sopc3 where seq=:x1';
      parameters[0].value:=adodataset1.fieldbyname('seq').value;
      execsql;
    end;
    with adoquery1 do begin
      close;
      parameters.clear;
      sql.text:='delete from tbl_carte_sopc4 where seq=:x1';
      parameters[0].value:=adodataset1.fieldbyname('seq').value;
      execsql;
    end;
    with adoquery1 do begin
      close;
      parameters.clear;
      sql.text:='delete from tbl_carte_sopc5 where seq=:x1';
      parameters[0].value:=adodataset1.fieldbyname('seq').value;
      execsql;
    end;
    adodataset1.Delete;
  end;
end;

procedure TfrmCarte_Ordprocessing.BitBtn3Click(Sender: TObject);
begin
  if (adodataset1.State=dsEdit) or (adodataset1.State=dsInsert) then adodataset1.Post;
end;

procedure TfrmCarte_Ordprocessing.BitBtn4Click(Sender: TObject);
begin
  //if adodataset1.active then begin
  if combobox7.text>'' then begin
    with adoquery4 do begin
      close;
      sql.text:='select * from tbl_carte_actitem order by act_grp,code';
      open;
    end;
    if frmCarte_Reports=nil then frmCarte_Reports:=tfrmCarte_Reports.create(nil);
    frmCarte_Reports.bringtofront;
    if (dateedit4.date>0) and (dateedit5.date>0) then begin
      frmCarte_Reports.checkbox5.enabled:=true;
    end else begin
      frmCarte_Reports.checkbox5.enabled:=false;
      frmCarte_Reports.checkbox5.checked:=false;
    end;
    if cxcombobox2.text>'' then frmCarte_Reports.checkbox6.enabled:=true
    else frmCarte_Reports.checkbox6.enabled:=false;
    frmCarte_Reports.show;
  end;
end;

procedure TfrmCarte_Ordprocessing.BitBtn5Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure TfrmCarte_Ordprocessing.BitBtn6Click(Sender: TObject);
begin
  if frmCarte_Split=nil then frmCarte_Split:=tfrmCarte_Split.create(nil);
  if not adodataset1.fieldbyname('ddt').isnull then
  frmCarte_Split.dateedit1.date:=adodataset1.fieldbyname('ddt').value;
  if not adodataset1.fieldbyname('m_ddt').isnull then
  frmCarte_Split.dateedit2.date:=adodataset1.fieldbyname('m_ddt').value;
  if not adodataset1.fieldbyname('m_start').isnull then
  frmCarte_Split.dateedit3.date:=adodataset1.fieldbyname('m_start').value;
  if not adodataset1.fieldbyname('m_end').isnull then
  frmCarte_Split.dateedit4.date:=adodataset1.fieldbyname('m_end').value;
  if not adodataset1.fieldbyname('fwdt_o').isnull then
  frmCarte_Split.dateedit5.date:=adodataset1.fieldbyname('fwdt_o').value;
  if not adodataset1.fieldbyname('fwdt_a').isnull then
  frmCarte_Split.dateedit6.date:=adodataset1.fieldbyname('fwdt_a').value;
  if not adodataset1.fieldbyname('ex_o').isnull then
  frmCarte_Split.dateedit7.date:=adodataset1.fieldbyname('ex_o').value;
  if not adodataset1.fieldbyname('ex_r').isnull then
  frmCarte_Split.dateedit8.date:=adodataset1.fieldbyname('ex_r').value;
  if not adodataset1.fieldbyname('ex_l').isnull then
  frmCarte_Split.dateedit9.date:=adodataset1.fieldbyname('ex_l').value;
  frmCarte_Split.show;
end;

procedure TfrmCarte_Ordprocessing.BitBtn7Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
  //false
  if combobox4.text='' then combobox4.text:='All';
  if combobox4.text='' then showmessage('Please choose a customer code!')
  else begin
    cxgrid1dbbandedtableview1.bands[83].visible:=false;
    cxgrid1dbbandedtableview1.bands[84].visible:=false;

      cxgrid1dbbandedtableview1.bands[115].visible:=false;
      cxgrid1dbbandedtableview1.bands[136].visible:=true;
      cxgrid1dbbandedtableview1.bands[48].visible:=true;
      cxgrid1dbbandedtableview1.bands[49].visible:=true;
      cxGrid1phstyleno.visible:=true;
      cxGrid1pdn_diff.visible:=true;
      cxGrid1ex_a_wk.visible:=true;
      cxGrid1ex_a.visible:=true;
      cxGrid1qty_short.visible:=true;
      cxGrid1ex_s.visible:=true;
      cxGrid1shpm_c_r.visible:=true;

    //{
    if (chk2.checked) or (chk7.checked) or (chk8.checked) or (chk9.checked) or (chk10.checked) or (chk17.checked) or (chk18.checked) then begin
      cxgrid1dbbandedtableview1.bands[3].visible:=false;
      //cxgrid1dbbandedtableview1.bands[5].visible:=false;
      cxgrid1dbbandedtableview1.bands[7].visible:=false;

      cxgrid1dbbandedtableview1.bands[8].visible:=true;
      cxgrid1dbbandedtableview1.bands[9].visible:=true;
      cxgrid1dbbandedtableview1.bands[10].visible:=true;
      cxgrid1dbbandedtableview1.bands[11].visible:=true;
      cxgrid1dbbandedtableview1.bands[12].visible:=true;
      cxgrid1dbbandedtableview1.bands[13].visible:=true;

      //cxgrid1dbbandedtableview1.bands[15].visible:=false;
      cxgrid1dbbandedtableview1.bands[21].visible:=false;
      cxgrid1dbbandedtableview1.bands[80].visible:=false;
      //cxgrid1dbbandedtableview1.bands[38].visible:=false;
      cxgrid1dbbandedtableview1.bands[43].visible:=false;

      //cxgrid1dbbandedtableview1.bands[115].visible:=false;
      cxgrid1dbbandedtableview1.bands[136].visible:=false;
      cxGrid1phstyleno.visible:=false;
      cxGrid1pdn_diff.visible:=false;
      cxGrid1ex_a_wk.visible:=false;
      cxGrid1ex_a.visible:=false;
      cxGrid1qty_short.visible:=false;
      cxGrid1ex_s.visible:=false;
      cxGrid1shpm_c_r.visible:=false;
    end else
    //}
    if (chk14.checked) then begin
      cxgrid1dbbandedtableview1.bands[3].visible:=false;
      cxgrid1dbbandedtableview1.bands[5].visible:=false;
      cxgrid1dbbandedtableview1.bands[7].visible:=false;
      cxgrid1dbbandedtableview1.bands[8].visible:=false;
      cxgrid1dbbandedtableview1.bands[11].visible:=true;
      cxgrid1dbbandedtableview1.bands[9].visible:=true;
      cxgrid1dbbandedtableview1.bands[10].visible:=true;
      cxgrid1dbbandedtableview1.bands[12].visible:=false;
      cxgrid1dbbandedtableview1.bands[13].visible:=true;
      //cxgrid1dbbandedtableview1.bands[15].visible:=false;
      cxgrid1dbbandedtableview1.bands[21].visible:=false;
      cxgrid1dbbandedtableview1.bands[80].visible:=false;
      //cxgrid1dbbandedtableview1.bands[38].visible:=false;
      cxgrid1dbbandedtableview1.bands[43].visible:=false;
    end else if (chk12.checked) or (chk13.checked) then begin
      cxgrid1dbbandedtableview1.bands[3].visible:=true;
      cxgrid1dbbandedtableview1.bands[5].visible:=true;
      cxgrid1dbbandedtableview1.bands[7].visible:=true;
      cxgrid1dbbandedtableview1.bands[8].visible:=true;
      cxgrid1dbbandedtableview1.bands[11].visible:=false;
      cxgrid1dbbandedtableview1.bands[9].visible:=true;
      cxgrid1dbbandedtableview1.bands[10].visible:=true;
      cxgrid1dbbandedtableview1.bands[12].visible:=false;
      cxgrid1dbbandedtableview1.bands[13].visible:=true;
      //cxgrid1dbbandedtableview1.bands[15].visible:=false;
      cxgrid1dbbandedtableview1.bands[21].visible:=false;
      cxgrid1dbbandedtableview1.bands[80].visible:=false;
      //cxgrid1dbbandedtableview1.bands[38].visible:=true;
      cxgrid1dbbandedtableview1.bands[43].visible:=false;
    end else if (chk16.checked) then begin
      cxgrid1dbbandedtableview1.bands[3].visible:=false;
      cxgrid1dbbandedtableview1.bands[5].visible:=true;
      cxgrid1dbbandedtableview1.bands[7].visible:=false;
      cxgrid1dbbandedtableview1.bands[8].visible:=true;
      cxgrid1dbbandedtableview1.bands[11].visible:=false;
      cxgrid1dbbandedtableview1.bands[9].visible:=true;
      cxgrid1dbbandedtableview1.bands[10].visible:=true;
      cxgrid1dbbandedtableview1.bands[12].visible:=true;
      cxgrid1dbbandedtableview1.bands[13].visible:=true;
      //cxgrid1dbbandedtableview1.bands[15].visible:=false;
      cxgrid1dbbandedtableview1.bands[21].visible:=false;
      cxgrid1dbbandedtableview1.bands[80].visible:=false;
      //cxgrid1dbbandedtableview1.bands[38].visible:=false;

      cxgrid1dbbandedtableview1.bands[43].visible:=true;
      cxgrid1pvh_brand.visible:=false;
      cxgrid1diff_lbl.visible:=false;
      cxgrid1pvh_pak1.visible:=false;
      cxgrid1etam_pak.visible:=false;
      cxgrid1pvh_shop.visible:=false;
      cxgrid1dest_qty.visible:=false;

      //cxgrid1dbbandedtableview1.bands[115].visible:=false;
      cxgrid1dbbandedtableview1.bands[48].visible:=false;
      cxgrid1dbbandedtableview1.bands[49].visible:=false;
      cxGrid1phstyleno.visible:=false;
    end else begin
      cxgrid1dbbandedtableview1.bands[3].visible:=true;
      cxgrid1dbbandedtableview1.bands[5].visible:=true;
      cxgrid1dbbandedtableview1.bands[7].visible:=true;
      cxgrid1dbbandedtableview1.bands[8].visible:=true;
      cxgrid1dbbandedtableview1.bands[11].visible:=true;
      cxgrid1dbbandedtableview1.bands[9].visible:=true;
      cxgrid1dbbandedtableview1.bands[10].visible:=true;
      cxgrid1dbbandedtableview1.bands[12].visible:=true;
      cxgrid1dbbandedtableview1.bands[13].visible:=true;
      //cxgrid1dbbandedtableview1.bands[15].visible:=true;
      //cxgrid1dbbandedtableview1.bands[21].visible:=true;
      cxgrid1dbbandedtableview1.bands[80].visible:=true;
      //cxgrid1dbbandedtableview1.bands[38].visible:=true;
      cxgrid1dbbandedtableview1.bands[43].visible:=true;
      cxgrid1pvh_brand.visible:=true;
      cxgrid1diff_lbl.visible:=true;
      cxgrid1pvh_pak1.visible:=true;
      cxgrid1etam_pak.visible:=true;
      cxgrid1pvh_shop.visible:=true;
      cxgrid1dest_qty.visible:=true;
      if combobox4.text='PVH' then begin
        cxgrid1dbbandedtableview1.bands[84].visible:=true;
        cxgrid1dbbandedtableview1.bands[83].visible:=true;
        cxgrid1cqn3.visible:=true;
        cxgrid1cq4.visible:=true;
        cxgrid1cqn4.visible:=true;
        cxgrid1cq5.visible:=true;
        cxgrid1cqn5.visible:=true;
        cxgrid1cq6.visible:=true;
        cxgrid1cqn1.caption:='1st PO# / Zone seq.';
        cxgrid1cqn2.caption:='2nd PO# / Zone seq.';
        cxgrid1cqn3.caption:='3rd PO# / Zone seq.';
        if frmcarte_main.combobox2.text='Traditional Chinese' then
        cxgrid1dbbandedtableview1.bands[89].caption:='Y1 - 適用於WARN 02 (亞洲HK) 和 10 (歐洲) - 採購單和倉庫區依靠 (最多5個區)'
        else cxgrid1dbbandedtableview1.bands[89].caption:='Y1 - apply to WARN02 (Asia HK) & 10 (Europe) - PO & whse zone dependent (max. 5 zones)';
      end;

      if (combobox4.text='AP') or (combobox4.text='DBHS') then begin
        cxgrid1dbbandedtableview1.bands[83].visible:=true;
        cxgrid1cqn3.visible:=true;
        cxgrid1cq4.visible:=true;
        cxgrid1cqn4.visible:=false;
        cxgrid1cq5.visible:=false;
        cxgrid1cqn5.visible:=false;
        cxgrid1cq6.visible:=false;
        cxgrid1cqn1.caption:='1st PO# / Region';
        cxgrid1cqn2.caption:='2nd PO# / Region';
        cxgrid1cqn3.caption:='3rd PO# / Region';
        if frmcarte_main.combobox2.text='Traditional Chinese' then begin
          if (combobox4.text='AP') then
            cxgrid1dbbandedtableview1.bands[89].caption:='Y2a - 適用於AP - 採購單和地區依靠 (最多3個地區)'
          else cxgrid1dbbandedtableview1.bands[89].caption:='Y2b - 適用於DBHS - 採購單和地區依靠 (最多3個地區)';
        end else begin
          if (combobox4.text='AP') then
            cxgrid1dbbandedtableview1.bands[89].caption:='Y2a - apply to AP - PO & region dependent (max. 3 regions)'
          else  cxgrid1dbbandedtableview1.bands[89].caption:='Y2b - apply to DBHS - PO & region dependent (max. 3 regions)';
        end;
      end;

      if (combobox4.text='ETAM') then begin
        cxgrid1dbbandedtableview1.bands[83].visible:=true;
        cxgrid1cqn3.visible:=false;
        cxgrid1cq4.visible:=false;
        cxgrid1cqn4.visible:=false;
        cxgrid1cq5.visible:=false;
        cxgrid1cqn5.visible:=false;
        cxgrid1cq6.visible:=false;
        cxgrid1cqn1.caption:='1st PO# / Cup Sz';
        cxgrid1cqn2.caption:='2nd PO# / Cup Sz';
        if frmcarte_main.combobox2.text='Traditional Chinese' then
        cxgrid1dbbandedtableview1.bands[89].caption:='Y3 - 適用於ETAA (胸圍項) - 採購單和杯晒士依靠 (最多2項杯晒士)'
        else cxgrid1dbbandedtableview1.bands[89].caption:='Y3 - apply to ETAA (bras item) - PO & Cup Size dependent (max. 2 items of cup size)';
      end;
    end;

    if ((cbb1.text>'') or (cbb2.text>'') or (chk4.checked) or (chk6.checked) or (chk11.checked)) then begin
      cxgrid1dbbandedtableview1.bands[3].visible:=false;
      cxgrid1dbbandedtableview1.bands[7].visible:=false;
      cxgrid1dbbandedtableview1.bands[12].visible:=false;

      //cxgrid1dbbandedtableview1.bands[13].visible:=false;
      cxgrid1dbbandedtableview1.bands[48].visible:=false;
      cxgrid1dbbandedtableview1.bands[49].visible:=false;
      //cxgrid1dbbandedtableview1.bands[115].visible:=false;
      cxgrid1prod_site_r.visible:=false;

      cxgrid1dbbandedtableview1.bands[43].visible:=false;
      cxgrid1dbbandedtableview1.bands[76].visible:=false;
      cxgrid1dbbandedtableview1.bands[97].visible:=false;
      cxgrid1dbbandedtableview1.bands[102].visible:=false;
      cxgrid1dbbandedtableview1.bands[104].visible:=false;
      cxgrid1dbbandedtableview1.bands[131].visible:=false;
      cxgrid1dbbandedtableview1.bands[153].visible:=false;
      cxgrid1dbbandedtableview1.bands[156].visible:=false;
      cxgrid1dbbandedtableview1.bands[116].visible:=false;
      cxgrid1dbbandedtableview1.bands[20].visible:=false;
      cxgrid1dbbandedtableview1.bands[136].visible:=false;
      cxgrid1dbbandedtableview1.bands[137].visible:=false;
      cxgrid1ex_a_wk.visible:=false;
      cxgrid1ex_a.visible:=false;
      cxgrid1fst_wr.visible:=false;
      cxgrid1cgrp.visible:=false;
      cxgrid1DBBandedTableView1Column1.visible:=false;
      cxgrid1urgent_o.visible:=false;
      cxgrid1wo_cfmdt.visible:=false;
      cxgrid1custstyle.visible:=false;
      cxgrid1custcolor.visible:=false;
      cxView1Grid1nonday.visible:=false;
      cxgrid1q1_dtdiff.visible:=false;
      cxgrid1ex_diff.visible:=false;
      cxgrid1act_cmpdt.visible:=false;
      cxgrid1pdn_diff.visible:=false;
      cxgrid1qty_short.visible:=false;
      cxgrid1Shpt_Bal.visible:=false;
      cxgrid1Shpt_BP.visible:=false;
      cxgrid1ct_md1.visible:=false;
      cxgrid1fst_wa.visible:=false;
      cxgrid1exdiff.visible:=false;
      cxgrid1fw_agree.visible:=false;
      cxgrid1t2_wa.visible:=false;
      cxgrid1DBBandedTableView1Column2.visible:=false;
    end else begin
      cxgrid1dbbandedtableview1.bands[3].visible:=true;
      cxgrid1dbbandedtableview1.bands[7].visible:=true;
      cxgrid1dbbandedtableview1.bands[12].visible:=true;

      //cxgrid1dbbandedtableview1.bands[13].visible:=true;
      cxgrid1dbbandedtableview1.bands[48].visible:=true;
      cxgrid1dbbandedtableview1.bands[49].visible:=true;
      //cxgrid1dbbandedtableview1.bands[115].visible:=true;
      cxgrid1prod_site_r.visible:=true;

      cxgrid1dbbandedtableview1.bands[43].visible:=true;
      cxgrid1dbbandedtableview1.bands[76].visible:=true;
      cxgrid1dbbandedtableview1.bands[97].visible:=true;
      cxgrid1dbbandedtableview1.bands[102].visible:=true;
      cxgrid1dbbandedtableview1.bands[104].visible:=true;
      cxgrid1dbbandedtableview1.bands[131].visible:=true;
      cxgrid1dbbandedtableview1.bands[153].visible:=true;
      cxgrid1dbbandedtableview1.bands[156].visible:=true;
      cxgrid1dbbandedtableview1.bands[116].visible:=true;
      cxgrid1dbbandedtableview1.bands[20].visible:=true;
      cxgrid1dbbandedtableview1.bands[136].visible:=true;
      cxgrid1dbbandedtableview1.bands[137].visible:=true;
      cxgrid1ex_a_wk.visible:=true;
      cxgrid1ex_a.visible:=true;
      cxgrid1fst_wr.visible:=true;
      cxgrid1cgrp.visible:=true;
      cxgrid1DBBandedTableView1Column1.visible:=true;
      cxgrid1urgent_o.visible:=true;
      cxgrid1wo_cfmdt.visible:=true;
      cxgrid1custstyle.visible:=true;
      cxgrid1custcolor.visible:=true;
      cxView1Grid1nonday.visible:=true;
      cxgrid1q1_dtdiff.visible:=true;
      cxgrid1ex_diff.visible:=true;
      cxgrid1act_cmpdt.visible:=true;
      cxgrid1pdn_diff.visible:=true;
      cxgrid1qty_short.visible:=true;
      cxgrid1Shpt_Bal.visible:=true;
      cxgrid1Shpt_BP.visible:=true;
      cxgrid1ct_md1.visible:=true;
      cxgrid1fst_wa.visible:=true;
      cxgrid1exdiff.visible:=true;
      cxgrid1fw_agree.visible:=true;
      cxgrid1t2_wa.visible:=true;
      cxgrid1DBBandedTableView1Column2.visible:=true;
    end;

    with adoquery1 do begin
      close;
      sql.text:='exec sp_carte_opendata_bycust :x1';
      parameters[0].value:=combobox4.text;
      execsql;
    end;
    adodataset1.indexfieldnames:='cgrp;cust;div;projectno;custpo;custstyle;phstyleno;phcolor;workorderno;rwo_wo;keycode';
    with adodataset1 do begin
      close;
      //parameters.clear;
      commandtext:='select * from tbl_carte_sopc1 a where 1=1';
      if combobox1.text>'' then commandtext:=commandtext+' and cgrp='''+combobox1.text+'''';
      if cxcombobox1.text>'' then commandtext:=commandtext+' and charindex(keycode,'''+cxcombobox1.text+''')>0';
      if combobox2.text>'' then commandtext:=commandtext+' and charindex(projectno,'''+combobox2.text+''')>0';
      if cxcombobox2.text>'' then commandtext:=commandtext+' and charindex(booking,'''+cxcombobox2.text+''')>0';
      if combobox4.text>'' then begin
        if combobox4.text<>'All' then
        commandtext:=commandtext+' and cust='''+combobox4.text+'''';
      end;
      if combobox5.text>'' then commandtext:=commandtext+' and qty1_sp='''+combobox5.text+'''';
      if combobox6.text>'' then commandtext:=commandtext+' and custstyle='''+combobox6.text+'''';
      //if combobox3.text>'' then commandtext:=commandtext+' and workorderno='''+combobox3.text+'''';
      if combobox3.text>'' then begin
         if combobox3.text='未開制單' then commandtext:=commandtext+' and ((workorderno is null) or (workorderno=''''))'
         else commandtext:=commandtext+' and workorderno='''+combobox3.text+'''';
      end;
      //if combobox7.text>'' then commandtext:=commandtext+' and prod_site='''+combobox7.text+'''';
      if combobox7.text>'' then begin
        if (combobox7.text<>'All') and (combobox7.text<>'CN') and (combobox7.text<>'RX+GG') and (combobox7.text<>'SL+SLPP') then
          commandtext:=commandtext+' and case when prod_site_r is not null then prod_site_r else prod_site end='''+combobox7.text+''''
        //else if (combobox7.text='All') then
        //  commandtext:=commandtext+' and case when prod_site_r is not null then prod_site_r else prod_site end in (''SL'',''CL'',''GG'',''RX'',''SLPP'')'
        else if (combobox7.text='CN') then
          commandtext:=commandtext+' and case when prod_site_r is not null then prod_site_r else prod_site end in (''SL'',''GG'',''RX'',''SLPP'')'
        else if (combobox7.text='RX+GG') then
          commandtext:=commandtext+' and case when prod_site_r is not null then prod_site_r else prod_site end in (''GG'',''RX'')'
        else if (combobox7.text='SL+SLPP') then
          commandtext:=commandtext+' and case when prod_site_r is not null then prod_site_r else prod_site end in (''SL'',''SLPP'')';
      end;
      if combobox11.text>'' then commandtext:=commandtext+' and (prod_site='''+combobox11.text+''' or prod_site1='''+combobox11.text+''')';
      if combobox8.text>'' then commandtext:=commandtext+' and div like '''+combobox8.text+'%''';
      if cbb1.text>'' then begin
        //if pos('*',cbb1.text)>0 then
        //  commandtext:=commandtext+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=1 and act_item3='''+copy(cbb1.text,1,3)+''')'
        //              +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=1 and act_item3g='''+copy(cbb1.text,1,3)+'''))'
        //else commandtext:=commandtext+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0 and act_item3='''+cbb1.text+''')'
        //                 +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_item3g='''+copy(cbb1.text,1,3)+'''))';
        commandtext:=commandtext+' and (exists (select grp_act3g from tbl_carte_sopc_al b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_item3g='''+cbb1.text+'''))';
      end;
      if cbb2.text>'' then begin
        if cbb2.text<>'All' then begin
          //commandtext:=commandtext+' and (exists (select b.seq from tbl_carte_sopc2 b,tbl_carte_sopc3 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and c.act_cmp3=0 and b.act_cnt=1 and act_issue='''+cbb2.text+''')'
          //            +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+cbb2.text+'''))';
          commandtext:=commandtext+' and (exists (select grp_act3g from tbl_carte_sopc_al b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+cbb2.text+'''))';
        end else begin
          //commandtext:=commandtext+' and (exists (select b.seq from tbl_carte_sopc2 b,tbl_carte_sopc3 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and c.act_cmp3=0 and b.act_cnt=1)'
          //            +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0))';
          commandtext:=commandtext+' and (exists (select grp_act3g from tbl_carte_sopc_al b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0))';
        end;
      end;
      if dateedit1.date>0 then commandtext:=commandtext+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',dateedit1.date)+'''';
      if dateedit2.date>0 then commandtext:=commandtext+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',dateedit2.date+1)+'''';
      if dateedit3.date>0 then commandtext:=commandtext+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',dateedit3.date)+''')'
                                                       +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and b.act_cmp3g=0 and b.act_cmpdt3g<='''+formatdatetime('yyyy-mm-dd',dateedit3.date)+'''))';
      if edit1.text>'' then commandtext:=commandtext+' and (case when mex_re>0 then mex_re when mex_oe>0 then mex_oe when mex_rd0>0 then mex_rd0 else mex_od0 end)>='+edit1.text;
      if edit2.text>'' then commandtext:=commandtext+' and (case when mex_re>0 then mex_re when mex_oe>0 then mex_oe when mex_rd0>0 then mex_rd0 else mex_od0 end)<='+edit2.text;
      if (dateedit4.date>0) or (dateedit5.date>0) then begin
        if dateedit4.date>0 then commandtext:=commandtext+' and act_cmpdt>='''+formatdatetime('yyyy-mm-dd',dateedit4.date)+'''';
        if dateedit5.date>0 then commandtext:=commandtext+' and act_cmpdt<='''+formatdatetime('yyyy-mm-dd',dateedit5.date)+'''';
      end else begin
        if not chk16.checked then begin
          if chk3.checked then commandtext:=commandtext+' and /*ex_a is not null*/act_exfty=1'
          else commandtext:=commandtext+' and /*ex_a is null*/act_exfty=0';
        end;
      end;

      if chk2.checked then begin
        commandtext:=commandtext+' and ((fst_wr<sw_1w and (ct_md1 is null or ct_md1<>''^'')))';
      end;
      if chk9.checked then begin
        commandtext:=commandtext+' and ((t1_gap<0 and t1_gap is not null) and (t1_ef is null or t1_ef<>''^''))';
      end;
      if chk10.checked then begin
        commandtext:=commandtext+' and ((t2_wa<t2_w1)) and ex_a is null';
      end;
      if chk7.checked then begin
        //commandtext:=commandtext+' and (ds_wa<sw_opt3 and sw_opt3 is not null and (fw_agree is null or fw_agree<>''^''))';
        commandtext:=commandtext+' and ((ds_wa_1<sw_opt3 and sw_opt3 is not null and (fw_agree is null or fw_agree<>''^'')) or (ds_wa<=0))';
      end;
      if chk17.checked then begin
        commandtext:=commandtext+' and (((fst_wr<sw_1w and (ct_md1 is null or ct_md1<>''^'')) and fst_wr<0)'
                   +' or (((ds_wa_1<sw_opt3 and sw_opt3 is not null and (fw_agree is null or fw_agree<>''^'')) or (ds_wa<=0)) and ds_wa<0)'
                   +' or (t2_wa<0)) and ex_a is null';
      end;
      if chk18.checked then begin
        commandtext:=commandtext+' and (((fst_wr<sw_1w and (ct_md1 is null or ct_md1<>''^'')))'
                   +' or (((ds_wa_1<sw_opt3 and sw_opt3 is not null and (fw_agree is null or fw_agree<>''^'')) or (ds_wa<=0)))'
                   +' or (t2_wa<2)) and ex_a is null';
      end;


      if chk8.checked then begin
        commandtext:=commandtext+' and (ct_pp1<0) and ex_a is null';
      end;
      if chk13.checked then begin
        commandtext:=commandtext+' and workorderno not like ''W%''';
      end;
      if chk12.checked then begin
        //commandtext:=commandtext+' and ((substring(sp_app2,1,1)=''I'' and sp_appdt_a is null and case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end<'''+formatdatetime('yyyy/MM/dd',date)+''') or (sp_app2 in (''F'',''R'') and sp_app>=''2020-01-01'' and rpt_app is null))';
        commandtext:=commandtext+' and (smpl_beh is not null and smpl_beh<0 and sp_appdt_a is null)';
      end;
      if chk14.checked then begin
        //commandtext:=commandtext+' and (at3dt is null and case when t3dt_r is not null then t3dt_r else t3dt end<'''+formatdatetime('yyyy/MM/dd',date)+''')';
        commandtext:=commandtext+' and (at3dt is null and case when t3dt_r is not null then t3dt_r else t3dt end>case when ex_r is not null then ex_r else ex_o end and case when t3dt_r is not null then t3dt_r else t3dt end<'''+formatdatetime('yyyy/MM/dd',date)+''')';
      end;
      if chk16.checked then begin
        commandtext:=commandtext+' and (right(rtrim(keycode),1) in (''a'',''b'',''c'',''d'',''e'',''f''))';
        commandtext:=commandtext+' and (exists (select seq from tbl_carte_sopc1 b where a.workorderno=b.workorderno and a.phcolor=b.phcolor and b./*ex_a is null*/act_exfty=0 and right(rtrim(b.keycode),1) in (''a'',''b'',''c'',''d'',''e'',''f'')))';
      end;
      if chk15.checked then begin
        if (chk2.checked) or (chk7.checked) or (chk8.checked) or (chk9.checked) or (chk10.checked) or (chk12.checked) or (chk14.checked) then
        commandtext:=commandtext+' and workorderno like ''W%''';
      end else begin
        if (chk2.checked) or (chk7.checked) or (chk8.checked) or (chk9.checked) or (chk10.checked) or (chk12.checked) or (chk14.checked) then
        commandtext:=commandtext+' and workorderno not like ''W%''';
      end;

      //if chk4.checked then commandtext:=commandtext+' and ((exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0)))';
      if chk4.checked then commandtext:=commandtext+' and ((exists (select seq from tbl_carte_sopc_al c where charindex(c.grp_act3g,a.grp_act)>0 and a.seq=c.seq and act_cmp3g=0 and grpg=''S'')))';
      if chk6.checked then commandtext:=commandtext+' and ((exists (select seq from tbl_carte_sopc_al c where charindex(c.grp_act3g,a.grp_act)>0 and a.seq=c.seq and act_cmp3g=0 and grpg=''G'')))';

      if chk11.checked then commandtext:=commandtext+' and ((exists (select seq from tbl_carte_sopc_al c where charindex(c.grp_act3g,a.grp_act)>0 and a.seq=c.seq and act_cmp3g=0 and case when c.act_cmpdt3g_r is not null then c.act_cmpdt3g_r else c.act_cmpdt3g end<getdate())))';

      if chk5.checked then begin
        commandtext:=commandtext+' and ord_cancel1=''Y''';
        if chk1.checked then commandtext:=commandtext+' and ((workorderno is null) or (workorderno not like ''W%''))';
      end else begin
        commandtext:=commandtext+' and ((ord_cancel1='''') or (ord_cancel1 is null))';
        if chk1.checked then commandtext:=commandtext+' and ((workorderno is null) or (workorderno not like ''W%''))'
        else commandtext:=commandtext+' and workorderno>''''';
      end;
      if edit3.text>'' then commandtext:=commandtext+' and grp_act like ''%'+edit3.text+'%''';
      if edit4.text>'' then commandtext:=commandtext+' and seqno1 like ''%'+edit4.text+'%''';
      if edit5.text>'' then commandtext:=commandtext+' and tc_seqno like ''%'+edit5.text+'%''';
      if edit6.text>'' then commandtext:=commandtext+' and lwdt_act like ''%'+edit6.text+'%''';
      open;
      //showmessage(commandtext);
      //indexfieldnames:='cgrp;cust;div;projectno;phstyleno;phcolor;rwo;keycode';
    end;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure TfrmCarte_Ordprocessing.BitBtn8Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if combobox4.text='' then showmessage('Please choose a customer code!')
  else begin
    if frmCarte_Logisticsflow=nil then frmCarte_Logisticsflow:=tfrmCarte_Logisticsflow.create(nil);
    frmCarte_Logisticsflow.windowstate:=wsMaximized;
    frmCarte_Logisticsflow.bringtofront;
    if (dateedit4.date>0) and (dateedit5.date>0) then begin
      frmCarte_Logisticsflow.dateedit4.date:=dateedit4.date;
      frmCarte_Logisticsflow.dateedit5.date:=dateedit5.date;
      with frmCarte_Logisticsflow.adoquery1 do begin
        close;
        sql.text:='exec sp_carte_logisticsflow_bycust :x0,:x1,:x2';
        parameters[0].value:=combobox4.text;
        parameters[1].value:=dateedit4.date;
        parameters[2].value:=dateedit5.date;
        execsql;
      end;
      with frmCarte_Logisticsflow.adodataset1 do begin
        close;
        commandtext:='select * from tbl_carte_sopc5 where 1=1';
        if combobox7.text>'' then begin
          if (combobox7.text<>'All') and (combobox7.text<>'CN') and (combobox7.text<>'RX+GG') and (combobox7.text<>'SL+SLPP') then
            commandtext:=commandtext+' and prod_site5='''+combobox7.text+''''
          //else if (combobox7.text='All') then
          //  commandtext:=commandtext+' and prod_site5 in (''SL'',''CL'',''GG'',''RX'',''SLPP'')'
          else if (combobox7.text='CN') then
            commandtext:=commandtext+' and prod_site5 in (''SL'',''GG'',''RX'',''SLPP'')'
          else if (combobox7.text='RX+GG') then
            commandtext:=commandtext+' and prod_site5 in (''GG'',''RX'')'
          else if (combobox7.text='SL+SLPP') then
            commandtext:=commandtext+' and prod_site5 in (''SL'',''SLPP'')';
        end;
        commandtext:=commandtext+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2';
        if combobox4.text>'' then begin
          if combobox4.text<>'All' then commandtext:=commandtext+' and cust5='''+combobox4.text+'''';
        end;
        parameters[0].value:=dateedit4.date;
        parameters[1].value:=dateedit5.date;
        open;
      end;
    end;
    frmCarte_Logisticsflow.cxgrid1wkday.options.editing:=frmCarte_Main.checkbox11.checked;
    frmCarte_Logisticsflow.cxgrid1org_o.options.editing:=frmCarte_Main.checkbox11.checked;
    frmCarte_Logisticsflow.cxgrid1org_a.options.editing:=frmCarte_Main.checkbox11.checked;// or frmCarte_Main.checkbox15.checked or frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.bitbtn1.enabled:=frmCarte_Main.checkbox11.checked;
    frmCarte_Logisticsflow.bitbtn9.enabled:=frmCarte_Main.checkbox11.checked;

    frmCarte_Logisticsflow.cxgrid1wkday1.options.editing:=frmCarte_Main.checkbox15.checked or frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.cxgrid1aql_p1.options.editing:=frmCarte_Main.checkbox15.checked or frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.cxgrid1aql_p01.options.editing:=frmCarte_Main.checkbox15.checked or frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.cxgrid1aql_f1.options.editing:=frmCarte_Main.checkbox15.checked or frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.cxgrid1aql_f01.options.editing:=frmCarte_Main.checkbox15.checked or frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.cxgrid1aql_p2.options.editing:=frmCarte_Main.checkbox15.checked or frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.cxgrid1aql_p02.options.editing:=frmCarte_Main.checkbox15.checked or frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.cxgrid1aql_f2.options.editing:=frmCarte_Main.checkbox15.checked or frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.cxgrid1aql_f02.options.editing:=frmCarte_Main.checkbox15.checked or frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.cxgrid1aql_no.options.editing:=frmCarte_Main.checkbox15.checked or frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.cxgrid1aql_no1.options.editing:=frmCarte_Main.checkbox15.checked or frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.cxgrid1aduit.options.editing:=frmCarte_Main.checkbox15.checked or frmCarte_Main.checkbox16.checked;

    frmCarte_Logisticsflow.cxgrid1pak_del.options.editing:=frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.cxgrid1pak_no.options.editing:=frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.cxgrid1pak_no1.options.editing:=frmCarte_Main.checkbox16.checked;

    frmCarte_Logisticsflow.cxgrid1shp_del1.options.editing:=frmCarte_Main.checkbox10.checked or frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.cxgrid1shp_del2.options.editing:=frmCarte_Main.checkbox10.checked or frmCarte_Main.checkbox16.checked;
    frmCarte_Logisticsflow.cxgrid1shp_del3.options.editing:=frmCarte_Main.checkbox10.checked or frmCarte_Main.checkbox16.checked;

    frmCarte_Logisticsflow.show;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmCarte_Ordprocessing.BitBtn9Click(Sender: TObject);
begin
  if frmCarte_Shipmentbyproject=nil then frmCarte_Shipmentbyproject:=tfrmCarte_Shipmentbyproject.create(nil);
  frmCarte_Shipmentbyproject.combobox1.items.clear;
  with adoquery1 do begin
    close;
    sql.text:='select distinct projectno from tbl_carte_sopc1';
    open;
    first;
    while not eof do begin
      frmCarte_Shipmentbyproject.combobox1.items.add(fieldbyname('projectno').value);
      application.processmessages;
      next;
    end;
  end;
  if adodataset1.active then begin
    if not adodataset1.fieldbyname('projectno').isnull then
    frmCarte_Shipmentbyproject.combobox1.text:=adodataset1.fieldbyname('projectno').value;
  end;
  frmCarte_Shipmentbyproject.show;
end;

procedure TfrmCarte_Ordprocessing.calc_somettl;
begin
  with adoquery1 do begin
    close;
    sql.text:='select count(distinct div) as c1,count(distinct custpo_dt) as c2,count(distinct projectno) as c3,count(distinct workorderno) as c4,count(distinct phstyleno) as c5,'
             +'count(distinct phcolor) as c6,count(distinct workorderno+problem_o) as c7,count(distinct workorderno+problem_o+rwo_wo) as c8,count(distinct phstyleseq) as c9 from tbl_carte_sopc1 a where 1=1';
    if combobox1.text>'' then sql.text:=sql.text+' and cgrp='''+combobox1.text+'''';
    if cxcombobox1.text>'' then sql.text:=sql.text+' and charindex(keycode,'''+cxcombobox1.text+''')>0';
    if combobox2.text>'' then sql.text:=sql.text+' and charindex(projectno,'''+combobox2.text+''')>0';
    if cxcombobox2.text>'' then sql.text:=sql.text+' and charindex(booking,'''+cxcombobox2.text+''')>0';
    if combobox4.text>'' then begin
      if combobox4.text<>'All' then
      sql.text:=sql.text+' and cust='''+combobox4.text+'''';
    end;
    if combobox5.text>'' then sql.text:=sql.text+' and qty1_sp='''+combobox5.text+'''';
    if combobox6.text>'' then sql.text:=sql.text+' and custstyle='''+combobox6.text+'''';
    //if combobox3.text>'' then sql.text:=sql.text+' and workorderno='''+combobox3.text+'''';
    if combobox3.text>'' then begin
       if combobox3.text='未開制單' then sql.text:=sql.text+' and ((workorderno is null) or (workorderno=''''))'
       else sql.text:=sql.text+' and workorderno='''+combobox3.text+'''';
    end;
    //if combobox7.text>'' then sql.text:=sql.text+' and prod_site='''+combobox7.text+'''';
    if combobox7.text>'' then begin
      if (combobox7.text<>'All') and (combobox7.text<>'CN') and (combobox7.text<>'RX+GG') and (combobox7.text<>'SL+SLPP') then
        sql.text:=sql.text+' and case when prod_site_r is not null then prod_site_r else prod_site end='''+combobox7.text+''''
      //else if (combobox7.text='All') then
      //  sql.text:=sql.text+' and case when prod_site_r is not null then prod_site_r else prod_site end in (''SL'',''CL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='CN') then
        sql.text:=sql.text+' and case when prod_site_r is not null then prod_site_r else prod_site end in (''SL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='RX+GG') then
        sql.text:=sql.text+' and case when prod_site_r is not null then prod_site_r else prod_site end in (''GG'',''RX'')'
      else if (combobox7.text='SL+SLPP') then
        sql.text:=sql.text+' and case when prod_site_r is not null then prod_site_r else prod_site end in (''SL'',''SLPP'')';
    end;
    if combobox11.text>'' then sql.text:=sql.text+' and (prod_site='''+combobox11.text+''' or prod_site1='''+combobox11.text+''')';
    if combobox8.text>'' then sql.text:=sql.text+' and div like '''+combobox8.text+'%''';
    if cbb1.text>'' then begin
      //if pos('*',cbb1.text)>0 then
      //  sql.text:=sql.text+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=1 and act_item3='''+copy(cbb1.text,1,3)+''')'
      //              +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=1 and act_item3g='''+copy(cbb1.text,1,3)+'''))'
      //else sql.text:=sql.text+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0 and act_item3='''+cbb1.text+''')'
      //                 +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_item3g='''+copy(cbb1.text,1,3)+'''))';
      sql.text:=sql.text+' and (exists (select grp_act3g from tbl_carte_sopc_al b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_item3g='''+cbb1.text+'''))';
    end;
    //if combobox10.text>'' then sql.text:=sql.text+' and (exists (select b.seq from tbl_carte_sopc2 b,tbl_carte_sopc3 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and c.act_cmp3=0 and b.act_cnt=1 and act_issue='''+combobox10.text+''')'
    //                                       +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+combobox10.text+'''))';
    if cbb2.text>'' then begin
      if cbb2.text<>'All' then begin
        //sql.text:=sql.text+' and (exists (select b.seq from tbl_carte_sopc2 b,tbl_carte_sopc3 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and c.act_cmp3=0 and b.act_cnt=1 and act_issue='''+cbb2.text+''')'
        //            +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+cbb2.text+'''))';
        sql.text:=sql.text+' and (exists (select grp_act3g from tbl_carte_sopc_al b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+cbb2.text+'''))';
      end else begin
        //sql.text:=sql.text+' and (exists (select b.seq from tbl_carte_sopc2 b,tbl_carte_sopc3 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and c.act_cmp3=0 and b.act_cnt=1)'
        //            +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0))';
        sql.text:=sql.text+' and (exists (select grp_act3g from tbl_carte_sopc_al b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0))';
      end;
    end;
    if dateedit1.date>0 then sql.text:=sql.text+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',dateedit1.date)+'''';
    if dateedit2.date>0 then sql.text:=sql.text+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',dateedit2.date+1)+'''';
    //if dateedit3.date>0 then sql.text:=sql.text+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',dateedit3.date)+''')';
    if dateedit3.date>0 then sql.text:=sql.text+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',dateedit3.date)+''')'
                                         +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and b.act_cmp3g=0 and b.act_cmpdt3g<='''+formatdatetime('yyyy-mm-dd',dateedit3.date)+'''))';
    if edit1.text>'' then sql.text:=sql.text+' and (case when mex_re>0 then mex_re when mex_oe>0 then mex_oe when mex_rd0>0 then mex_rd0 else mex_od0 end)>='+edit1.text;
    if edit2.text>'' then sql.text:=sql.text+' and (case when mex_re>0 then mex_re when mex_oe>0 then mex_oe when mex_rd0>0 then mex_rd0 else mex_od0 end)<='+edit2.text;
    if (dateedit4.date>0) or (dateedit5.date>0) then begin
      if dateedit4.date>0 then sql.text:=sql.text+' and act_cmpdt>='''+formatdatetime('yyyy-mm-dd',dateedit4.date)+'''';
      if dateedit5.date>0 then sql.text:=sql.text+' and act_cmpdt<='''+formatdatetime('yyyy-mm-dd',dateedit5.date)+'''';
    end else begin
      if chk3.checked then sql.text:=sql.text+' and /*ex_a is not null*/act_exfty=1'
      else sql.text:=sql.text+' and /*ex_a is null*/act_exfty=0';
    end;

    //if chk2.checked then begin
    //  sql.text:=sql.text+' and workorderno like ''W%'' and ((fst_wr<sw_1w and (ct_md1 is null or ct_md1<>''^'')) or ((t1_gap<0 and t1_gap is not null) and (t1_ef is null or t1_ef<>''^'')) or (t2_wa<t2_w1))';
    //end;
    if chk2.checked then begin
      sql.text:=sql.text+' and ((fst_wr<sw_1w and (ct_md1 is null or ct_md1<>''^'')))';
    end;
    if chk9.checked then begin
      sql.text:=sql.text+' and ((t1_gap<0 and t1_gap is not null) and (t1_ef is null or t1_ef<>''^''))';
    end;
    if chk10.checked then begin
      sql.text:=sql.text+' and ((t2_wa<t2_w1)) and ex_a is null';
    end;
    if chk7.checked then begin
      //sql.text:=sql.text+' and (ds_wa<sw_opt3 and sw_opt3 is not null and (fw_agree is null or fw_agree<>''^''))';
      sql.text:=sql.text+' and (ds_wa_1<sw_opt3 and sw_opt3 is not null and (fw_agree is null or fw_agree<>''^''))';
    end;
    if chk8.checked then begin
      sql.text:=sql.text+' and (ct_pp1<0) and ex_a is null';
    end;
    if chk13.checked then begin
      sql.text:=sql.text+' and workorderno not like ''W%''';
    end;
    if chk12.checked then begin
      //sql.text:=sql.text+' and ((substring(sp_app2,1,1)=''I'' and sp_appdt_a is null and case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end<'''+formatdatetime('yyyy/MM/dd',date)+''') or (sp_app2 in (''F'',''R'') and sp_app>=''2020-01-01'' and rpt_app is null))';
        sql.text:=sql.text+' and (smpl_beh is not null and smpl_beh<0 and sp_appdt_a is null)';
    end;
    if chk14.checked then begin
      //sql.text:=sql.text+' and (at3dt is null and case when t3dt_r is not null then t3dt_r else t3dt end<'''+formatdatetime('yyyy/MM/dd',date)+''')';
      sql.text:=sql.text+' and (at3dt is null and case when t3dt_r is not null then t3dt_r else t3dt end>case when ex_r is not null then ex_r else ex_o end and case when t3dt_r is not null then t3dt_r else t3dt end<'''+formatdatetime('yyyy/MM/dd',date)+''')';
    end;
    if chk16.checked then begin
      sql.text:=sql.text+' and (right(rtrim(keycode),1) in (''a'',''b'',''c'',''d'',''e''))';
    end;
    if chk15.checked then begin
      if (chk2.checked) or (chk7.checked) or (chk8.checked) or (chk9.checked) or (chk10.checked) or (chk12.checked) or (chk14.checked) then
      sql.text:=sql.text+' and workorderno like ''W%''';
    end else begin
      if (chk2.checked) or (chk7.checked) or (chk8.checked) or (chk9.checked) or (chk10.checked) or (chk12.checked) or (chk14.checked) then
      sql.text:=sql.text+' and workorderno not like ''W%''';
    end;

    if chk17.checked then begin
      sql.text:=sql.text+' and (((fst_wr<sw_1w and (ct_md1 is null or ct_md1<>''^'')) and fst_wr<0)'
                 +' or (((ds_wa_1<sw_opt3 and sw_opt3 is not null and (fw_agree is null or fw_agree<>''^'')) or (ds_wa<=0)) and ds_wa<0)'
                 +' or (t2_wa<0)) and ex_a is null';
    end;
    if chk18.checked then begin
      sql.text:=sql.text+' and (((fst_wr<sw_1w and (ct_md1 is null or ct_md1<>''^'')))'
                 +' or (((ds_wa_1<sw_opt3 and sw_opt3 is not null and (fw_agree is null or fw_agree<>''^'')) or (ds_wa<=0)))'
                 +' or (t2_wa<2)) and ex_a is null';
    end;


    //if chk4.checked then sql.text:=sql.text+' and ((exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0)))';
    if chk4.checked then sql.text:=sql.text+' and ((exists (select seq from tbl_carte_sopc_al c where charindex(c.grp_act3g,a.grp_act)>0 and a.seq=c.seq and act_cmp3g=0 and grpg=''S'')))';
    if chk6.checked then sql.text:=sql.text+' and ((exists (select seq from tbl_carte_sopc_al c where charindex(c.grp_act3g,a.grp_act)>0 and a.seq=c.seq and act_cmp3g=0 and grpg=''G'')))';

    if chk11.checked then sql.text:=sql.text+' and ((exists (select seq from tbl_carte_sopc_al c where charindex(c.grp_act3g,a.grp_act)>0 and a.seq=c.seq and act_cmp3g=0 and case when c.act_cmpdt3g_r is not null then c.act_cmpdt3g_r else c.act_cmpdt3g end<getdate())))';

    if chk5.checked then begin
      sql.text:=sql.text+' and ord_cancel1=''Y''';
      if chk1.checked then sql.text:=sql.text+' and ((workorderno is null) or (workorderno not like ''W%''))';
    end else begin
      sql.text:=sql.text+' and ((ord_cancel1='''') or (ord_cancel1 is null))';
      if chk1.checked then sql.text:=sql.text+' and ((workorderno is null) or (workorderno not like ''W%''))'
      else sql.text:=sql.text+' and workorderno>''''';
    end;
    if edit3.text>'' then sql.text:=sql.text+' and grp_act like ''%'+edit3.text+'%''';
    if edit4.text>'' then sql.text:=sql.text+' and seqno1 like ''%'+edit4.text+'%''';
    if edit5.text>'' then sql.text:=sql.text+' and tc_seqno like ''%'+edit5.text+'%''';
    if edit6.text>'' then sql.text:=sql.text+' and lwdt_act like ''%'+edit6.text+'%''';
    if cxgrid1dbbandedtableview1.DataController.Filter.FilterText>'' then
    sql.text:=sql.text+' and '+cxgrid1dbbandedtableview1.DataController.Filter.FilterText;
    open;
    if not fieldbyname('c1').isnull then
      cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[4]:=fieldbyname('c1').asstring;
    if not fieldbyname('c2').isnull then
      cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[5]:=fieldbyname('c2').asstring;
    if not fieldbyname('c3').isnull then
      cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[6]:=fieldbyname('c3').asstring;
    if not fieldbyname('c4').isnull then
      cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[7]:=fieldbyname('c4').asstring;
    if not fieldbyname('c5').isnull then
      cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[8]:=fieldbyname('c5').asstring;
    if not fieldbyname('c6').isnull then
      cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[9]:=fieldbyname('c6').asstring;
    if not fieldbyname('c7').isnull then
      cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[10]:=fieldbyname('c7').asstring;
    if not fieldbyname('c8').isnull then begin
      cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[11]:=fieldbyname('c8').asstring;
      //cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[13]:=fieldbyname('c8').asstring;
    end;
    if not fieldbyname('c9').isnull then
      cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryValues[12]:=fieldbyname('c9').asstring;
  end;
end;

procedure TfrmCarte_Ordprocessing.chk11Click(Sender: TObject);
begin
  //if chk11.checked then dateedit3.date:=date
  //else if chk11.checked=false then dateedit3.date:=0;
end;

procedure TfrmCarte_Ordprocessing.chk12Click(Sender: TObject);
begin
  if chk12.checked then begin
    chk7.checked:=false;
    chk8.checked:=false;
    chk2.checked:=false;
    chk10.checked:=false;
    chk9.checked:=false;
    chk13.checked:=false;
    chk14.checked:=false;
    chk16.checked:=false;
    chk17.checked:=false;
    chk18.checked:=false;
  end;
end;

procedure TfrmCarte_Ordprocessing.chk13Click(Sender: TObject);
begin
  if chk13.checked then begin
    chk7.checked:=false;
    chk8.checked:=false;
    chk2.checked:=false;
    chk10.checked:=false;
    chk12.checked:=false;
    chk9.checked:=false;
    chk14.checked:=false;
    chk16.checked:=false;
    chk17.checked:=false;
    chk18.checked:=false;
  end;
end;

procedure TfrmCarte_Ordprocessing.chk14Click(Sender: TObject);
begin
  if chk14.checked then begin
    chk7.checked:=false;
    chk8.checked:=false;
    chk2.checked:=false;
    chk10.checked:=false;
    chk12.checked:=false;
    chk9.checked:=false;
    chk13.checked:=false;
    chk16.checked:=false;
    chk17.checked:=false;
    chk18.checked:=false;
  end;
end;

procedure TfrmCarte_Ordprocessing.chk15Click(Sender: TObject);
begin
  if chk15.checked then chk15.caption:='Only for confirmed WOs'
  else chk15.caption:='Only for not yet confirmed WOs';
end;

procedure TfrmCarte_Ordprocessing.chk16Click(Sender: TObject);
begin
  if chk16.checked then begin
    chk7.checked:=false;
    chk8.checked:=false;
    chk2.checked:=false;
    chk10.checked:=false;
    chk12.checked:=false;
    chk9.checked:=false;
    chk13.checked:=false;
    chk14.checked:=false;
    chk17.checked:=false;
    chk18.checked:=false;
  end;
end;

procedure TfrmCarte_Ordprocessing.chk17Click(Sender: TObject);
begin
  if chk17.checked then begin
    chk7.checked:=false;
    chk8.checked:=false;
    chk2.checked:=false;
    chk10.checked:=false;
    chk9.checked:=false;
    chk13.checked:=false;
    chk14.checked:=false;
    chk16.checked:=false;
    chk12.checked:=false;
    chk18.checked:=false;
  end;
end;

procedure TfrmCarte_Ordprocessing.chk18Click(Sender: TObject);
begin
  if chk18.checked then begin
    chk7.checked:=false;
    chk8.checked:=false;
    chk2.checked:=false;
    chk10.checked:=false;
    chk9.checked:=false;
    chk13.checked:=false;
    chk14.checked:=false;
    chk16.checked:=false;
    chk17.checked:=false;
    chk12.checked:=false;
  end;
end;

procedure TfrmCarte_Ordprocessing.checkenquerySQLscript1Click(Sender: TObject);
var
  sql1:string;
begin
  sql1:=adodataset1.commandtext;
  showmessage(sql1);
  if cxgrid1dbbandedtableview1.DataController.Filter.FilterText>'' then
  sql1:=sql1+' and '+cxgrid1dbbandedtableview1.DataController.Filter.FilterText;
  showmessage(sql1);
end;

procedure TfrmCarte_Ordprocessing.chk10Click(Sender: TObject);
begin
  if chk10.checked then begin
    chk7.checked:=false;
    chk8.checked:=false;
    chk9.checked:=false;
    chk2.checked:=false;
    chk12.checked:=false;
    chk13.checked:=false;
    chk14.checked:=false;
    chk16.checked:=false;
    chk17.checked:=false;
    chk18.checked:=false;
  end;
end;

procedure TfrmCarte_Ordprocessing.chk2Click(Sender: TObject);
begin
  if chk2.checked then begin
    chk7.checked:=false;
    chk8.checked:=false;
    chk9.checked:=false;
    chk10.checked:=false;
    chk12.checked:=false;
    chk13.checked:=false;
    chk14.checked:=false;
    chk16.checked:=false;
  end;
end;

procedure TfrmCarte_Ordprocessing.chk4Click(Sender: TObject);
begin
  if chk4.checked then chk6.checked:=false;
end;

procedure TfrmCarte_Ordprocessing.chk6Click(Sender: TObject);
begin
  if chk6.checked then chk4.checked:=false;
end;

procedure TfrmCarte_Ordprocessing.chk7Click(Sender: TObject);
begin
  if chk7.checked then begin
    chk2.checked:=false;
    chk8.checked:=false;
    chk9.checked:=false;
    chk10.checked:=false;
    chk12.checked:=false;
    chk13.checked:=false;
    chk14.checked:=false;
    chk16.checked:=false;
  end;
end;

procedure TfrmCarte_Ordprocessing.chk8Click(Sender: TObject);
begin
  if chk8.checked then begin
    chk7.checked:=false;
    chk2.checked:=false;
    chk9.checked:=false;
    chk10.checked:=false;
    chk12.checked:=false;
    chk13.checked:=false;
    chk14.checked:=false;
    chk16.checked:=false;
    chk17.checked:=false;
    chk18.checked:=false;
  end;
end;

procedure TfrmCarte_Ordprocessing.chk9Click(Sender: TObject);
begin
  if chk9.checked then begin
    chk7.checked:=false;
    chk8.checked:=false;
    chk2.checked:=false;
    chk10.checked:=false;
    chk12.checked:=false;
    chk13.checked:=false;
    chk14.checked:=false;
    chk16.checked:=false;
  end;
end;

procedure TfrmCarte_Ordprocessing.cbb2Enter(Sender: TObject);
begin
  cbb2.items.clear;
  cbb2.items.add('All');
  with adoquery1 do begin
    close;
    //sql.text:='select distinct act_issue from tbl_carte_sopc2 a where act_cnt=1 and act_issue is not null and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and a.seq_i=b.seq_i and b.act_cmp3=0) '
    //         +'and exists (select seq from tbl_carte_sopc1 c where a.seq=c.seq and c./*ex_a is null*/act_exfty=0)';
    //sql.text:=sql.text+' union select distinct act_issue3g as act_issue from tbl_carte_sopc3_grp d where act_cmp3g=0 and grp_act3g>'''' '
    //         +'and exists (select seq from tbl_carte_sopc1 e where charindex(d.grp_act3g,e.grp_act)>0 and e./*ex_a is null*/act_exfty=0)';
    sql.text:='select distinct act_issue3g from tbl_carte_sopc_al a where act_item3g>=''a'' and act_cmp3g=0';
    open;
    first;
    while not eof do begin
      cbb2.items.add(fieldbyname('act_issue3g').value);
      application.processmessages;
      next;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.ComboBox11Enter(Sender: TObject);
begin
  combobox11.items.clear;
  combobox11.items.add('');
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select distinct prod_site from tbl_carte_sopc1 where prod_site>''-'' and prod_site not in (''SL'',''CL'',''RX'',''GG'') and /*ex_a is null*/act_exfty=0 and ((ord_cancel1='''') or (ord_cancel1 is null))';
    sql.text:=sql.text+'union select distinct prod_site1 from tbl_carte_sopc1 where prod_site1>''-'' and prod_site1 not in (''SL'',''CL'',''RX'',''GG'') and /*ex_a is null*/act_exfty=0 and ((ord_cancel1='''') or (ord_cancel1 is null))';
    open;
    first;
    while not eof do begin
      combobox11.items.add(fieldbyname('prod_site').value);
      application.processmessages;
      next;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.ComboBox2Enter(Sender: TObject);
begin
  combobox2.properties.items.clear;
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select distinct projectno from tbl_carte_sopc1 where projectno is not null and /*ex_a is null*/act_exfty=0 and ((ord_cancel1='''') or (ord_cancel1 is null))';
    if combobox4.text>'' then begin
      //if combobox4.text<>'All' then
      sql.text:=sql.text+' and cust='''+combobox4.text+'''';
    end;
    if combobox8.text>'' then sql.text:=sql.text+' and div='''+combobox8.text+'''';
    open;
    first;
    while not eof do begin
      combobox2.properties.items.Add.Description:=fieldbyname('projectno').Value;
      application.processmessages;
      next;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.ComboBox3Enter(Sender: TObject);
begin
  combobox3.items.clear;
  combobox3.items.add('');
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select distinct workorderno from tbl_carte_sopc1 where workorderno>''''';
    //if combobox2.text<>'' then sql.text:=sql.text+' and projectno='''+combobox2.text+'''';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('workorderno').value);
      application.processmessages;
      next;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.ComboBox4Enter(Sender: TObject);
begin
  combobox4.items.clear;
  combobox4.items.add('All');
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select distinct cust from tbl_carte_sopc1 where cust is not null and /*ex_a is null*/act_exfty=0 and ((ord_cancel1='''') or (ord_cancel1 is null)) order by cust';
    open;
    first;
    while not eof do begin
      combobox4.items.add(fieldbyname('cust').value);
      application.processmessages;
      next;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.ComboBox5Enter(Sender: TObject);
begin
  combobox5.items.clear;
  combobox5.items.add('');
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select distinct qty1_sp from tbl_carte_sopc1 where qty1_sp is not null';
    //if combobox2.text<>'' then sql.text:=sql.text+' and projectno='''+combobox2.text+'''';
    if combobox3.text<>'' then sql.text:=sql.text+' and workorderno='''+combobox3.text+'''';
    open;
    first;
    while not eof do begin
      combobox5.items.add(fieldbyname('qty1_sp').value);
      application.processmessages;
      next;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.ComboBox6Enter(Sender: TObject);
begin
  combobox6.items.clear;
  combobox6.items.add('');
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select distinct custstyle from tbl_carte_sopc1 where custstyle is not null';
    open;
    first;
    while not eof do begin
      combobox6.items.add(fieldbyname('custstyle').value);
      application.processmessages;
      next;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.ComboBox7Enter(Sender: TObject);
begin
  combobox7.items.clear;
  combobox7.items.add('');
  combobox7.items.add('All');
  combobox7.items.add('SL+SLPP');
  combobox7.items.add('RX+GG');
  //combobox7.items.add('SLPP');
  combobox7.items.add('CL');
  //combobox7.items.add('RX');
  //combobox7.items.add('GG');
  {
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select distinct prod_site from tbl_carte_sopc1 where prod_site>''a'' and ex_a is null and ((ord_cancel1='''') or (ord_cancel1 is null))';
    open;
    first;
    while not eof do begin
      combobox7.items.add(fieldbyname('prod_site').value);
      application.processmessages;
      next;
    end;
  end;
  }
  //combobox7.items.add('GD (SL/PP/PP2/-)');
  //combobox7.items.add('GX (GG/RX)');
end;

procedure TfrmCarte_Ordprocessing.ComboBox8Enter(Sender: TObject);
begin
  combobox8.items.clear;
  combobox8.items.add('');
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select distinct div from tbl_carte_sopc1 where div is not null and /*ex_a is null*/act_exfty=0 and ((ord_cancel1='''') or (ord_cancel1 is null))';
    if combobox4.text>'' then begin
      if combobox4.text<>'All' then
      sql.text:=sql.text+' and cust='''+combobox4.text+'''';
    end;
    sql.text:=sql.text+' order by div';
    open;
    first;
    while not eof do begin
      combobox8.items.add(fieldbyname('div').value);
      application.processmessages;
      next;
    end;
  end;
  if combobox4.text='CRTE' then begin
    combobox8.items.add('DA');
    combobox8.items.add('DB');
  end;
end;

procedure TfrmCarte_Ordprocessing.cbb1Enter(Sender: TObject);
begin
  cbb1.items.clear;
  cbb1.items.add('');
  with adoquery1 do begin
    close;
    //parameters.clear;
    //sql.text:='select distinct act_item3,act_cmp3 from tbl_carte_sopc3 a where act_item3>=''a'' and exists (select seq from tbl_carte_sopc1 b where a.seq=b.seq and b./*ex_a is null*/act_exfty=0)';
    //sql.text:=sql.text+' union select distinct act_item3g as act_item3,act_cmp3g as act_cmp3 from tbl_carte_sopc3_grp c where act_item3g>=''a'' '
    //         +'and exists (select seq from tbl_carte_sopc1 d where charindex(c.grp_act3g,d.grp_act)>0 and d./*ex_a is null*/act_exfty=0)';
    sql.text:='select distinct act_item3g,act_cmp3g from tbl_carte_sopc_al a where act_item3g>=''a'' and act_cmp3g=0';
    open;
    first;
    while not eof do begin
      if fieldbyname('act_cmp3g').value=true then
        cbb1.items.add(fieldbyname('act_item3g').value+'*')
      else cbb1.items.add(fieldbyname('act_item3g').value);
      application.processmessages;
      next;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.cxComboBox1Enter(Sender: TObject);
begin
  cxcombobox1.properties.items.clear;
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select distinct keycode from tbl_carte_sopc1 where keycode is not null';
    if combobox4.text>'' then begin
      if combobox4.text<>'All' then
      sql.text:=sql.text+' and cust='''+combobox4.text+'''';
    end;
    open;
    first;
    while not eof do begin
      cxcombobox1.properties.items.Add.Description:=fieldbyname('keycode').Value;
      application.processmessages;
      next;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.cxComboBox2Enter(Sender: TObject);
begin
  cxcombobox2.properties.items.clear;
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select distinct booking from tbl_carte_sopc1 where booking>''''';
    if combobox4.text>'' then begin
      if combobox4.text<>'All' then
      sql.text:=sql.text+' and cust='''+combobox4.text+'''';
    end;
    open;
    first;
    while not eof do begin
      cxcombobox2.properties.items.Add.Description:=fieldbyname('booking').Value;
      application.processmessages;
      next;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.cxGrid1act_cmpdtPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if frmCarte_PDNDate=nil then frmCarte_PDNDate:=tfrmCarte_PDNDate.create(nil);
  if not adodataset1.fieldbyname('act_cmpdt').isnull then
  frmCarte_PDNDate.dateedit1.date:=adodataset1.fieldbyname('act_cmpdt').value;
  frmCarte_PDNDate.dateedit2.date:=0;
  frmCarte_PDNDate.dateedit2.readonly:=not frmCarte_Main.checkbox11.checked;
  frmCarte_PDNDate.show;
end;

procedure TfrmCarte_Ordprocessing.cxGrid1act_itemHeaderClick(
  Sender: TObject);
begin
  if frmCarte_Requestaction=nil then frmCarte_Requestaction:=tfrmCarte_Requestaction.create(nil);
  frmCarte_Requestaction.windowstate:=wsMaximized;
  frmCarte_Requestaction.bringtofront;
  with frmCarte_Requestaction.adodataset1 do begin
    close;
    //parameters.clear;
    commandtext:='select * from tbl_carte_sopc2 where seq=:x1';
    parameters[0].value:=adodataset1.fieldbyname('seq').value;
    open;
  end;
  frmCarte_Requestaction.show;
end;

procedure TfrmCarte_Ordprocessing.cxGrid1add_corderPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if frmpocriteria=nil then frmpocriteria:=tfrmpocriteria.create(nil);
  frmpocriteria.show;
end;

procedure TfrmCarte_Ordprocessing.cxGrid1add_rwonoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  str1,str2:string;
begin
    str1:=Memo2.lines.strings[0];
    //if tblshedule.FieldByName('tplant').value='KB' then str2:='"Joew" "123" "TH" "PH.RWO.UI3.0.dll" "PH.RWO.UI.Report.ExReport" "PH.RWO.BackEnd3.0.dll,PH.RWO.BackEnd.ReportJob.JobRWOReport,'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+copy(tblshedule.fieldbyname('rwo').value,1,pos('/',tblshedule.fieldbyname('rwo').value)-1)+'"'
    //else
    str2:='"Joew" "123" "EN" "PH.RWO.UI3.0.dll" "PH.RWO.UI.Report.ExReport" "PH.RWO.BackEnd3.0.dll,PH.RWO.BackEnd.ReportJob.JobRWOReport,'+adodataset1.fieldbyname('workorderno').value+';'+adodataset1.fieldbyname('phcolor').value+';'+copy(adodataset1.fieldbyname('rwo_wo').value,1,pos('/',adodataset1.fieldbyname('rwo_wo').value)-1)+'"';
    shellexecute(0,'open',pchar('PH.Platform.PHWinApp.exe'),pchar(str2),pchar(str1),sw_show);
end;

procedure TfrmCarte_Ordprocessing.cxGrid1add_wonoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  str1,str2:string;
begin
    str1:=Memo2.lines.strings[0];
    //if tblshedule.FieldByName('tplant').value='KB' then str2:='"Joew" "123" "TH" "PH.RWO.UI3.0.dll" "PH.RWO.UI.Report.ExReport" "PH.RWO.BackEnd3.0.dll,PH.RWO.BackEnd.ReportJob.JobWOReport,'+tblshedule.fieldbyname('j2_job').value+'"'
    //else
    str2:='"Joew" "123" "EN" "PH.RWO.UI3.0.dll" "PH.RWO.UI.Report.ExReport" "PH.RWO.BackEnd3.0.dll,PH.RWO.BackEnd.ReportJob.JobWOReport,'+adodataset1.fieldbyname('workorderno').value+'"';
    shellexecute(0,'open',pchar('PH.Platform.PHWinApp.exe'),pchar(str2),pchar(str1),sw_show);
end;

procedure TfrmCarte_Ordprocessing.cxGrid1custpoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  {
  if not adodataset1.fieldbyname('custpo_qty').isnull then begin
    if adodataset1.fieldbyname('custpo_qty').value>=2 then begin
      if frmCarte_Custpoqty=nil then frmCarte_Custpoqty:=tfrmCarte_Custpoqty.create(nil);
      with frmCarte_Custpoqty.adodataset1 do begin
        close;
        commandtext:='select * from tbl_carte_sopc7 where seq7=:x1';
        parameters[0].value:=adodataset1.fieldbyname('seq').value;
        open;
      end;
      frmCarte_Custpoqty.dbgrideh1.readonly:=not frmCarte_Main.checkbox12.checked;
      frmCarte_Custpoqty.bitbtn1.enabled:=frmCarte_Main.checkbox12.checked;
      frmCarte_Custpoqty.bitbtn2.enabled:=frmCarte_Main.checkbox12.checked;
      frmCarte_Custpoqty.bitbtn3.enabled:=frmCarte_Main.checkbox12.checked;
      frmCarte_Custpoqty.show;
    end;
  end;
  }
  if adodataset1.fieldbyname('cust').value='PVH' then bitbtn11click(self);
end;

procedure TfrmCarte_Ordprocessing.cxGrid1DBBandedTableView1act_itemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  act_lg:string;
begin
  if adodataset1.active then begin
    act_lg:='CN';
    if copy(adodataset1.fieldbyname('projectno').value,length(adodataset1.fieldbyname('projectno').value),1)='O'
    then act_lg:='EN';
    if copy(adodataset1.fieldbyname('projectno').value,length(adodataset1.fieldbyname('projectno').value),1)='Z'
    then act_lg:='EN';
    if frmCarte_Requestaction=nil then frmCarte_Requestaction:=tfrmCarte_Requestaction.create(nil);
    frmCarte_Requestaction.windowstate:=wsMaximized;
    frmCarte_Requestaction.bringtofront;
    frmcarte_requestaction.label9.caption:=act_lg;
    with frmCarte_Requestaction.adodataset2 do begin
      close;
      //parameters.clear;
      commandtext:='select * from tbl_carte_sopc3 where seq=:x1';
      if (frmCarte_Main.checkbox5.checked=false) then commandtext:=commandtext+' and act_external=1 and act_internal=0';
      parameters[0].value:=adodataset1.fieldbyname('seq').value;
      open;
    end;
    frmCarte_Requestaction.bitbtn1.enabled:=frmCarte_Main.checkbox3.checked;
    frmCarte_Requestaction.bitbtn2.enabled:=frmCarte_Main.checkbox3.checked;
    frmCarte_Requestaction.bitbtn4.enabled:=frmCarte_Main.checkbox3.checked;
    frmCarte_Requestaction.bitbtn5.enabled:=frmCarte_Main.checkbox3.checked;
    frmCarte_Requestaction.bitbtn9.visible:=frmCarte_Main.checkbox7.checked;
    frmCarte_Requestaction.dbgrideh2.readonly:=not frmCarte_Main.checkbox3.checked;
    frmCarte_Requestaction.cxgrid1dbtableview1.Optionsdata.editing:=frmCarte_Main.checkbox3.checked;
    frmCarte_Requestaction.bitbtn2.enabled:=frmCarte_Main.checkbox6.checked;
    frmCarte_Requestaction.bitbtn4.enabled:=frmCarte_Main.checkbox6.checked;
    frmCarte_Requestaction.bitbtn5.enabled:=frmCarte_Main.checkbox6.checked;
    frmCarte_Requestaction.dbgrideh2.readonly:=not frmCarte_Main.checkbox6.checked;
    frmCarte_Requestaction.dbgrideh2.columns[9].readonly:=not frmCarte_Main.checkbox17.checked;
    frmCarte_Requestaction.dbgrideh2.columns[10].readonly:=not frmCarte_Main.checkbox17.checked;
    frmCarte_Requestaction.show;
  end;
end;

procedure TfrmCarte_Ordprocessing.cxGrid1DBBandedTableView1Bands3HeaderClick(
  Sender: TObject);
begin
  if cxgrid1dbbandedtableview1.bands[3].fixedkind=fkleft then begin
    cxgrid1dbbandedtableview1.bands[3].fixedkind:=fknone;
    if cxgrid1dbbandedtableview1.bands[4].fixedkind=fkleft then
    cxgrid1dbbandedtableview1.bands[4].fixedkind:=fknone;
    if cxgrid1dbbandedtableview1.bands[5].fixedkind=fkleft then
    cxgrid1dbbandedtableview1.bands[5].fixedkind:=fknone;
  end else begin
    cxgrid1dbbandedtableview1.bands[3].fixedkind:=fkleft;
    //cxgrid1dbbandedtableview1.bands[4].fixedkind:=fkleft;
    //cxgrid1dbbandedtableview1.bands[5].fixedkind:=fkleft;
  end;
end;

procedure TfrmCarte_Ordprocessing.cxGrid1DBBandedTableView1Bands4HeaderClick(
  Sender: TObject);
begin
  if cxgrid1dbbandedtableview1.bands[4].fixedkind=fkleft then begin
    cxgrid1dbbandedtableview1.bands[3].fixedkind:=fknone;
    cxgrid1dbbandedtableview1.bands[4].fixedkind:=fknone;
    if cxgrid1dbbandedtableview1.bands[5].fixedkind=fkleft then
    cxgrid1dbbandedtableview1.bands[5].fixedkind:=fknone;
  end else begin
    cxgrid1dbbandedtableview1.bands[3].fixedkind:=fkleft;
    cxgrid1dbbandedtableview1.bands[4].fixedkind:=fkleft;
    //cxgrid1dbbandedtableview1.bands[5].fixedkind:=fkleft;
  end;
end;

procedure TfrmCarte_Ordprocessing.cxGrid1DBBandedTableView1Bands5HeaderClick(
  Sender: TObject);
begin
  if cxgrid1dbbandedtableview1.bands[5].fixedkind=fkleft then begin
    cxgrid1dbbandedtableview1.bands[3].fixedkind:=fknone;
    cxgrid1dbbandedtableview1.bands[4].fixedkind:=fknone;
    cxgrid1dbbandedtableview1.bands[5].fixedkind:=fknone;
  end else begin
    cxgrid1dbbandedtableview1.bands[3].fixedkind:=fkleft;
    cxgrid1dbbandedtableview1.bands[4].fixedkind:=fkleft;
    cxgrid1dbbandedtableview1.bands[5].fixedkind:=fkleft;
  end;
end;

procedure TfrmCarte_Ordprocessing.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  str,str1,str2,str3:string;
  ARec: TRect;
begin
  //
  {
  str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGrid1ct_he1.Index],   varString));
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1ct_pp1.Index],   varString));
  if (AViewInfo.Item = cxGrid1ct_pp1) then begin
    if str='' then str:='0';
    if strtoint(str)<strtoint(str1) then ACanvas.canvas.Font.Color   :=   clRed;
    //else if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen
    //else if strtoint(str)=0 then ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;
  }
  //

  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1so_stt.Index],   varString));
  if (AViewInfo.Item = cxgrid1so_stt) then begin
    //if str='' then str:='0';
    if str='commit' then ACanvas.canvas.Font.Color   :=   clRed
    else if str='firmed' then ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;

  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGrid1fw_cdiff.Index],   varString));
  if (AViewInfo.Item = cxGrid1fw_cdiff) then begin
    if str='' then str:='0';
    if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clRed
    //else if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen
    else if strtoint(str)<=0 then ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;

  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGrid1mcup_ddt.Index],   varString));
  if (AViewInfo.Item = cxGrid1rpt_app) then begin
    if str='' then str:='10';
    if strtoint(str)<=0 then ACanvas.canvas.Font.Color   :=   clRed
    //else if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen
    else if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;

  //cxGrid1mcup_ddt
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGrid1fw_diff1.Index],   varString));
  if (AViewInfo.Item = cxGrid1m_end) then begin
    if str='' then str:='0';
    if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clRed
    //else if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen
    else if strtoint(str)<=0 then ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;

  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1ord_cancel1.Index],   varString));
  if (AViewInfo.Item = cxGrid1wo_cfmdt) then begin
    if str='' then str:='9999';
    if strtoint(str)<=0 then ACanvas.canvas.Font.Color   :=   clRed
    //else if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen
    else if strtoint(str)=0 then ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;

  //
  {
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1add_wo3.Index],   varString));
  if (AViewInfo.Item = cxgrid1add_wo3) then begin
    if str='' then str:='0';
    if strtoint(str)<>0 then ACanvas.canvas.Font.Color   :=   clRed
    else if strtoint(str)=0 then ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;

  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGrid1add_wono_c.Index],   varString));
  if (AViewInfo.Item = cxGrid1add_wono_c) then begin
    if str='' then str:='0';
    if strtoint(str)<>0 then ACanvas.canvas.Font.Color   :=   clRed
    else if strtoint(str)=0 then ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;
  }
  //

  //
  {
  //mtono
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1mtono.Index],   varString));
  if (AViewInfo.Item = cxGrid1mtono) then begin
    if str='' then str:='Y';
    if str='N' then ACanvas.canvas.Font.Color   :=   clRed;
    //else if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen
    //else if strtoint(str)=0 then ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;
  }
  //

  //
  {
  //smpl_beh
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1smpl_beh.Index],   varString));
  if (AViewInfo.Item = cxGrid1smpl_beh) then begin
    if str='' then str:='0';
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed;
    //else if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen
    //else if strtoint(str)=0 then ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;
  }
  //

  //
  {
  //fst_wa1
  str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1fst_wr.Index],   varString));
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1fst_wa.Index],   varString));
  if (AViewInfo.Item = cxGrid1fst_wa) then begin
    if str='' then str:='0';
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed;
    //else if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen
    //else if strtoint(str)=0 then ACanvas.canvas.Font.Color   :=   clBlack;
    if str1='' then str1:='0';
    if strtoint(str1)<0 then ACanvas.canvas.Font.style:=[fsBold];
    ACanvas.FillRect(ARec);
  end;
  }
  //

  //T1_gap
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1t1_gap.Index],   varString));
  if (AViewInfo.Item = cxGrid1t1_gap) then begin
    if str='' then str:='0';
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed;
    //else if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen
    //else if strtoint(str)=0 then ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;

  //
  {
  //adT1
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1ad_t1.Index],   varString));
  if (AViewInfo.Item = cxGrid1ad_t1) then begin
    if str='' then str:='0';
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed;
    //else if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen
    //else if strtoint(str)=0 then ACanvas.canvas.Font.Color   :=   clBlack;
    if strtoint(str)<0 then ACanvas.canvas.Font.style:=[fsBold];
    ACanvas.FillRect(ARec);
  end;
  }
  //

  //adT2
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1ad_t2.Index],   varString));
  if (AViewInfo.Item = cxGrid1ad_t2) then begin
    if str='' then str:='0';
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed;
    //else if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen
    //else if strtoint(str)=0 then ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;

  //adT3
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1ad_t3.Index],   varString));
  if (AViewInfo.Item = cxGrid1ad_t3) then begin
    if str='' then str:='0';
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed;
    //else if strtoint(str)>0 then ACanvas.canvas.Font.Color   :=   clGreen
    //else if strtoint(str)=0 then ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;

  //
  {
  //adT3window
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1t3window.Index],   varString));
  if (AViewInfo.Item = cxGrid1t3window) then begin
    if str='' then str:='0';
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed;
    ACanvas.FillRect(ARec);
  end;
  }
  //

  {
  //adjustFW
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1mex_od0.Index],   varString));
  if (AViewInfo.Item = cxGrid1mex_od0) then begin
    if str='' then str:='0';
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed;
    ACanvas.FillRect(ARec);
  end;

  //adjustEX
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1mex_ld0.Index],   varString));
  if (AViewInfo.Item = cxGrid1mex_ld0) then begin
    if str='' then str:='0';
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed;
    ACanvas.FillRect(ARec);
  end;
  }

  //
  {
  str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1sw_1w.Index],   varString));
  //Flow1curr
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1fst_wr.Index],   varString));
  if (AViewInfo.Item = cxGrid1fst_wr) then begin
    if str='' then str:='0';
    //if strtoint(str)<=0 then ACanvas.canvas.Font.Color   :=   clRed;
    if strtoint(str)<strtoint(str1) then ACanvas.canvas.Font.Color   :=   clRed;
    if strtoint(str)<0 then ACanvas.canvas.Font.style:=[fsBold];
    ACanvas.FillRect(ARec);
  end;
  }
  //

  {
  //Flow1act
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1fst_wa.Index],   varString));
  if (AViewInfo.Item = cxGrid1fst_wa) then begin
    if str='' then str:='0';
    //if strtoint(str)<=0 then ACanvas.canvas.Font.Color   :=   clRed;
    if strtoint(str)<strtoint(str1) then ACanvas.canvas.Font.Color   :=   clRed;
    ACanvas.FillRect(ARec);
  end;
  }

  //Flow2def
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1ex_o_wk.Index],   varString));
  if (AViewInfo.Item = cxGrid1ex_o_wk) then begin
    if str='' then str:='0';
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed;
    ACanvas.FillRect(ARec);
  end;

  //
  {
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGrid1ex_diff.Index],   varString));
  if (AViewInfo.Item = cxGrid1ex_diff) then begin
    if str='' then str:='0';
    if strtoint(str)<0 then ACanvas.canvas.Font.Color   :=   clRed;
    ACanvas.FillRect(ARec);
  end;
  }
  //

  //
  {
  str2:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1sw_opt3.Index],   varString));
  //Flow2curr      cxgrid1ds_wa_1
  str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1exdiff.Index],   varString));
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1ds_wa_1.Index],   varString));
  if (AViewInfo.Item = cxGrid1exdiff) then begin
    if str='' then str:='0';
    if str1='' then str1:='0';
    if str2='' then str2:='0';
    //if strtoint(str)<=0 then ACanvas.canvas.Font.Color   :=   clRed;
    if (strtoint(str)<strtoint(str2)) or (strtoint(str1)<0) then ACanvas.canvas.Font.Color   :=   clRed;
    if strtoint(str1)<0 then ACanvas.canvas.Font.style:=[fsBold];
    ACanvas.FillRect(ARec);
  end;
  }
  //

  //
  {
  str3:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1t2_w1.Index],   varString));
  //Flow4curr
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1t2_wa.Index],   varString));
  if (AViewInfo.Item = cxGrid1t2_wa) then begin
    if str='' then str:='0';
    //if strtoint(str)<=0 then ACanvas.canvas.Font.Color   :=   clRed;
    if strtoint(str)<strtoint(str3) then ACanvas.canvas.Font.Color   :=   clRed;
    if strtoint(str)<2 then ACanvas.canvas.Font.style:=[fsBold];
    ACanvas.FillRect(ARec);
  end;
  }
  //

  //
  {
  //cxgrid1wo_opt
  str3:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1workorderno.Index],   varString));
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1wo_opt.Index],   varString));
  if (AViewInfo.Item = cxgrid1wo_opt) then begin
    if str='' then str:='0';
    if copy(str3,1,1)='W' then begin
      if strtoint(str)<=1 then ACanvas.canvas.Font.Color   :=   clRed
      else Acanvas.canvas.font.color := clBlack;
      //if strtoint(str)<strtoint(str3) then ACanvas.canvas.Font.Color   :=   clRed;
    end else Acanvas.canvas.font.color := clBlack;
    ACanvas.FillRect(ARec);
  end;
  }
  //

  //
  {
  if not (AViewInfo.RecordViewInfo.GridRecord.Values[cxgrid1mex_re.Index]=null) then
  str2:=trim(inttostr(AViewInfo.RecordViewInfo.GridRecord.Values[cxgrid1mex_re.Index]))
  else str2:='';
  str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrid1mex_oe.Index],   varString));
  if (AViewInfo.Item = cxGrid1mex_oe) then begin
    if str2='' then
    ACanvas.canvas.Font.Style:=[fsBold]
    else ACanvas.canvas.Font.Style:=[];
    ACanvas.FillRect(ARec);
  end;
  }
  //

end;

procedure TfrmCarte_Ordprocessing.cxGrid1DBBandedTableView1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  AIndicatorViewInfo: TcxGridIndicatorRowItemViewInfo;
  ATextRect: TRect;
  aCV:TcxCanvas;
begin
  //
  if not (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
    Exit;
  aCV:=ACanvas ;
  ATextRect := AViewInfo.ContentBounds;
  AIndicatorViewInfo := AViewInfo as TcxGridIndicatorRowItemViewInfo;
  InflateRect(ATextRect, -2, -1);
  Sender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds,
    ATextRect, [], cxBordersAll, cxbsNormal, taCenter, vaCenter,
    False, False, IntToStr(AIndicatorViewInfo.GridRecord.Index + 1),
  acv.Font,acv.font.Color,acv.Brush.color );

  ADone := True;

end;

procedure TfrmCarte_Ordprocessing.cxGrid1DBBandedTableView1DataControllerFilterChanged(
  Sender: TObject);
begin
  //
  calc_somettl;
end;

procedure TfrmCarte_Ordprocessing.cxGrid1DBBandedTableView1SelectionChanged(
  Sender: TcxCustomGridTableView);
var
  i:integer;
begin
  For i:= 0 To cxGrid1DBTableView1.Controller.SelectedRowCount -1 DO Begin
    showmessage(inttostr(i));
    showmessage(cxGrid1DBTableView1.Controller.SelectedRows[i].Values[0]);
  End;
end;

procedure TfrmCarte_Ordprocessing.cxGrid1DBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  str,str1:string;
begin
  //WO Ttl diff
  if (AItem<>nil) and (AItem.ID=14) then begin
    if ARecord.DisplayTexts[14]='' then str:='0' else str:=ARecord.DisplayTexts[14];
    if (strtoint(str)<>0) then AStyle := FontRedStyle;
  end;
  //Px Ttl diff
  if (AItem<>nil) and (AItem.ID=13) then begin
    if ARecord.DisplayTexts[13]='' then str:='0' else str:=ARecord.DisplayTexts[13];
    if (strtoint(str)<>0) then AStyle := FontRedStyle;
  end;
  //Smpl need to make
  if (AItem<>nil) and (AItem.ID=12) then begin
    if ARecord.DisplayTexts[12]='' then str:='Y' else str:=ARecord.DisplayTexts[12];
    if (str='N') then AStyle := FontRedStyle;
  end;
  //Smpl appv day diff
  if (AItem<>nil) and (AItem.ID=11) then begin
    if ARecord.DisplayTexts[11]='' then str:='0' else str:=ARecord.DisplayTexts[11];
    if (strtoint(str)<0) then AStyle := FontRedStyle;
  end;
  //dT3/aT3 day diff
  if (AItem<>nil) and (AItem.ID=10) then begin
    if ARecord.DisplayTexts[10]='' then str:='0' else str:=ARecord.DisplayTexts[10];
    if (strtoint(str)<0) then AStyle := FontRedStyle;
  end;
  //ex_r extention
  if (AItem<>nil) and (AItem.ID=9) then begin
    if ARecord.DisplayTexts[9]='' then str:='0' else str:=ARecord.DisplayTexts[9];
    if (strtoint(str)<0) then AStyle := FontRedStyle;
  end;
  //wo_opt
  if (AItem<>nil) and (AItem.ID=7) then begin
    if ARecord.DisplayTexts[7]='' then str:='0' else str:=ARecord.DisplayTexts[7];
    if ARecord.DisplayTexts[8]='' then str1:='0' else str1:=ARecord.DisplayTexts[8];
    if copy(str1,1,1)='W' then begin
      if (strtoint(str)<2) then AStyle := FontRedStyle;
    end;
  end;
  //rev ttl
  if (AItem<>nil) and (AItem.ID=5) then begin
    if ARecord.DisplayTexts[5]='' then str:='0' else str:=ARecord.DisplayTexts[5];
    if ARecord.DisplayTexts[6]='' then str1:='0' else str1:=ARecord.DisplayTexts[6];
    if (strtoint(str)<strtoint(str1)) then AStyle := FontRedStyle;
  end;
  //flow 1 -1
  if (AItem<>nil) and (AItem.ID=0) then begin
    if ARecord.DisplayTexts[1]='' then str:='0' else str:=ARecord.DisplayTexts[1];
    if (strtoint(str)<0) then AStyle := FontBoldRedStyle;
  end;
  if (AItem<>nil) and (AItem.ID=15) then begin
    if ARecord.DisplayTexts[1]='' then str:='0' else str:=ARecord.DisplayTexts[1];
    if (strtoint(str)<0) then AStyle := FontBoldRedStyle;
  end;
  //flow 1 -2
  if (AItem<>nil) and (AItem.ID=1) then begin
    if ARecord.DisplayTexts[1]='' then str:='0' else str:=ARecord.DisplayTexts[1];
    if (strtoint(str)<0) then AStyle := FontRedStyle;
  end;
  //flow 2+3 -1
  if (AItem<>nil) and (AItem.ID=2) then begin
    if ARecord.DisplayTexts[3]='' then str:='0' else str:=ARecord.DisplayTexts[3];
    if (strtoint(str)<0) then AStyle := FontBoldRedStyle;
    if ARecord.DisplayTexts[2]='' then str1:='0' else str1:=ARecord.DisplayTexts[2];
    if strtoint(str1)<=0 then AStyle := FontBoldRedStyle;
  end;
  if (AItem<>nil) and (AItem.ID=17) then begin
    if ARecord.DisplayTexts[3]='' then str:='0' else str:=ARecord.DisplayTexts[3];
    if (strtoint(str)<0) then AStyle := FontBoldRedStyle;
    if ARecord.DisplayTexts[2]='' then str1:='0' else str1:=ARecord.DisplayTexts[2];
    if strtoint(str1)<0 then AStyle := FontBoldRedStyle;
  end;
  //flow 2+3 -2
  if (AItem<>nil) and (AItem.ID=3) then begin
    if ARecord.DisplayTexts[3]='' then str:='0' else str:=ARecord.DisplayTexts[3];
    if strtoint(str)<0 then AStyle := FontBoldRedStyle;
  end;
  //flow 4
  if (AItem<>nil) and (AItem.ID=4) then begin
    if ARecord.DisplayTexts[4]='' then str:='0' else str:=ARecord.DisplayTexts[4];
    if (strtoint(str)<3) and (strtoint(str)>=2) then AStyle := FontRedStyle
    else if strtoint(str)<2 then AStyle := FontBoldRedStyle;
  end;
  if (AItem<>nil) and (AItem.ID=18) then begin
    if ARecord.DisplayTexts[4]='' then str:='0' else str:=ARecord.DisplayTexts[4];
    if (strtoint(str)<3) and (strtoint(str)>=2) then AStyle := FontRedStyle
    else if strtoint(str)<2 then AStyle := FontBoldRedStyle;
  end;
end;

procedure TfrmCarte_Ordprocessing.cxGrid1grp_actPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  actgrp:boolean;
  actgrp_lg:string;
  y,m,sq:integer;
  tm1:string;
  act_grpg,act_issue:string;
  act_stage:integer;
  seq1:integer;
  grpact:string;
begin
  if adodataset1.active then begin
    if (adodataset1.FieldByName('grp_act').isnull) or (adodataset1.FieldByName('grp_act').value='') then begin
      if (cxGrid1DBBandedTableView1.DataController.filteredrecordcount>=1) {and (cxGrid1DBBandedTableView1.DataController.filteredrecordcount<=20)} then begin
        tm1:=formatdatetime('yyyy-mm-dd hh:nn:ss.zzz',now);
        y:=yearof(date);
        m:=monthof(date);
        with adoquery1 do begin
          close;
          sql.text:='select max(grp_act_seq) as q from tbl_carte_sopc_al where grp_act_y=:x1 and grp_act_m=:x2';
          parameters[0].value:=y;
          parameters[1].value:=m;
          open;
          if not fieldbyname('q').isnull then sq:=fieldbyname('q').value+1
          else sq:=1;
        end;
        if application.messagebox('Create a single action log?','Confirmation',mb_iconquestion+mb_yesno)=idyes then begin
          act_grpg:='S';
          act_issue:=frmcarte_main.lbluser.caption;
          act_stage:=0;
          seq1:=adodataset1.fieldbyname('seq').value;
          with adoquery1 do begin
            close;
            sql.text:='insert into tbl_carte_sopc_tmpseq(tm,seq,act_stage,act_issue,act_grpg,act_y,act_m,act_seq) '
                     +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
            parameters[0].value:=tm1;
            parameters[1].value:=seq1;
            parameters[2].value:=act_stage;
            parameters[3].value:=act_issue;
            parameters[4].value:=act_grpg;
            parameters[5].value:=y;
            parameters[6].value:=m;
            parameters[7].value:=sq;
            execsql;
          end;
          with adoquery1 do begin
            close;
            sql.text:='exec sp_carte_newactionlog :x1';
            parameters[0].value:=tm1;
            execsql;
          end;
          if frmCarte_Groupaction=nil then frmCarte_Groupaction:=tfrmCarte_Groupaction.Create(nil);
          frmcarte_groupaction.label6.caption:=actgrp_lg;
          with frmCarte_Groupaction.ADODataSet5 do begin
            close;
            commandtext:='select * from tbl_carte_sopc_al where grp_act_y='+inttostr(y)+' and grp_act_m='+inttostr(m)+' and grp_act_seq='+inttostr(sq);
            open;
          end;
          frmCarte_Groupaction.show;
          frmCarte_Groupaction.calc_somettl(y,m,sq);
        end else if application.messagebox('Create a group action log?','Confirmation',mb_iconquestion+mb_yesno)=idyes then begin
          act_grpg:='G';
          act_issue:=frmcarte_main.lbluser.caption;
          act_stage:=0;
          with adoquery1 do begin
            close;
            sql.text:='select max(grp_act) as s from tbl_carte_sopc1 where ex_a is null';
            if cxgrid1dbbandedtableview1.DataController.Filter.FilterText>'' then
            sql.text:=sql.text+' and '+cxgrid1dbbandedtableview1.DataController.Filter.FilterText;
            open;
            if fieldbyname('s').isnull then grpact:='' else grpact:=fieldbyname('s').value;
          end;
          if grpact='' then begin
            with adoquery1 do begin
              close;
              sql.text:='select distinct seq from tbl_carte_sopc1 where ex_a is null';

              if combobox1.text>'' then sql.text:=sql.text+' and cgrp='''+combobox1.text+'''';
              if cxcombobox1.text>'' then sql.text:=sql.text+' and charindex(keycode,'''+cxcombobox1.text+''')>0';
              if combobox2.text>'' then sql.text:=sql.text+' and charindex(projectno,'''+combobox2.text+''')>0';
              if cxcombobox2.text>'' then sql.text:=sql.text+' and charindex(booking,'''+cxcombobox2.text+''')>0';
              if combobox4.text>'' then begin
                if combobox4.text<>'All' then
                sql.text:=sql.text+' and cust='''+combobox4.text+'''';
              end;
              if combobox5.text>'' then sql.text:=sql.text+' and qty1_sp='''+combobox5.text+'''';
              if combobox6.text>'' then sql.text:=sql.text+' and custstyle='''+combobox6.text+'''';
              if combobox3.text>'' then begin
                 if combobox3.text='未開制單' then sql.text:=sql.text+' and ((workorderno is null) or (workorderno=''''))'
                 else sql.text:=sql.text+' and workorderno='''+combobox3.text+'''';
              end;
              if combobox7.text>'' then begin
                if (combobox7.text<>'All') and (combobox7.text<>'CN') and (combobox7.text<>'RX+GG') and (combobox7.text<>'SL+SLPP') then
                  sql.text:=sql.text+' and case when prod_site_r is not null then prod_site_r else prod_site end='''+combobox7.text+''''
                else if (combobox7.text='CN') then
                  sql.text:=sql.text+' and case when prod_site_r is not null then prod_site_r else prod_site end in (''SL'',''GG'',''RX'',''SLPP'')'
                else if (combobox7.text='RX+GG') then
                  sql.text:=sql.text+' and case when prod_site_r is not null then prod_site_r else prod_site end in (''GG'',''RX'')'
                else if (combobox7.text='SL+SLPP') then
                  sql.text:=sql.text+' and case when prod_site_r is not null then prod_site_r else prod_site end in (''SL'',''SLPP'')';
              end;
              if combobox11.text>'' then sql.text:=sql.text+' and (prod_site='''+combobox11.text+''' or prod_site1='''+combobox11.text+''')';
              if combobox8.text>'' then sql.text:=sql.text+' and div like '''+combobox8.text+'%''';

              if cxgrid1dbbandedtableview1.DataController.Filter.FilterText>'' then
              sql.text:=sql.text+' and '+cxgrid1dbbandedtableview1.DataController.Filter.FilterText;
              open;
              first;
              while not eof do begin
                with adoquery4 do begin
                  close;
                  sql.text:='insert into tbl_carte_sopc_tmpseq(tm,seq,act_stage,act_issue,act_grpg,act_y,act_m,act_seq) '
                           +'values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8)';
                  parameters[0].value:=tm1;
                  parameters[1].value:=adoquery1.fieldbyname('seq').value;
                  parameters[2].value:=act_stage;
                  parameters[3].value:=act_issue;
                  parameters[4].value:=act_grpg;
                  parameters[5].value:=y;
                  parameters[6].value:=m;
                  parameters[7].value:=sq;
                  execsql;
                end;
                application.ProcessMessages;
                next;
              end;
            end;
            with adoquery1 do begin
              close;
              sql.text:='exec sp_carte_newactionlog :x1';
              parameters[0].value:=tm1;
              execsql;
            end;
            if frmCarte_Groupaction=nil then frmCarte_Groupaction:=tfrmCarte_Groupaction.Create(nil);
            frmcarte_groupaction.label6.caption:=actgrp_lg;
            with frmCarte_Groupaction.ADODataSet5 do begin
              close;
              commandtext:='select * from tbl_carte_sopc_al where grp_act_y='+inttostr(y)+' and grp_act_m='+inttostr(m)+' and grp_act_seq='+inttostr(sq);
              open;
            end;
            frmCarte_Groupaction.show;
            frmCarte_Groupaction.calc_somettl(y,m,sq);
          end else showmessage('Pls do not choose the cop log(s) with action log seq!');
        end;
      end;
    end else begin
      if frmCarte_Groupaction=nil then frmCarte_Groupaction:=tfrmCarte_Groupaction.Create(nil);
      frmcarte_groupaction.label6.caption:=actgrp_lg;
      with frmCarte_Groupaction.ADODataSet2 do begin
        close;
        commandtext:='select * from tbl_carte_sopc3_grp where charindex(grp_act3g,'''+adodataset1.FieldByName('grp_act').value+''')>0';//=:x1';
        open;
      end;
      //
      with adoquery1 do begin
        close;
        sql.text:='select distinct grp_act_y,grp_act_m,grp_act_seq from tbl_carte_sopc_al where charindex(grp_act3g,'''+adodataset1.FieldByName('grp_act').value+''')>0';
        open;
        if not fieldbyname('grp_act_y').isnull then y:=fieldbyname('grp_act_y').value else y:=0;
        if not fieldbyname('grp_act_m').isnull then m:=fieldbyname('grp_act_m').value else m:=0;
        if not fieldbyname('grp_act_seq').isnull then sq:=fieldbyname('grp_act_seq').value else sq:=0;
      end;
      with frmCarte_Groupaction.ADODataSet5 do begin
        close;
        commandtext:='select * from tbl_carte_sopc_al where grp_act_y='+inttostr(y)+' and grp_act_m='+inttostr(m)+' and grp_act_seq='+inttostr(sq);//charindex(grp_act3g,'''+adodataset1.FieldByName('grp_act').value+''')>0';//=:x1';
        open;
      end;
      frmCarte_Groupaction.show;
      frmCarte_Groupaction.calc_somettl(y,m,sq);
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.cxGrid1line_noPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if frmcarte_main.checkbox14.checked then begin
    if frmCarte_Sewingfacility=nil then frmCarte_Sewingfacility:=tfrmCarte_Sewingfacility.create(nil);
    frmCarte_Sewingfacility.dbedit1.readonly:=not frmCarte_Main.checkbox14.checked;
    frmCarte_Sewingfacility.dbedit2.readonly:=not frmCarte_Main.checkbox14.checked;
    frmCarte_Sewingfacility.dbedit3.readonly:=not frmCarte_Main.checkbox14.checked;
    frmCarte_Sewingfacility.dbedit4.readonly:=not frmCarte_Main.checkbox14.checked;
    frmCarte_Sewingfacility.dbgrideh1.readonly:=not frmCarte_Main.checkbox14.checked;
    frmCarte_Sewingfacility.show;
  end;
end;

procedure TfrmCarte_Ordprocessing.cxGrid1lwdt_actPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  tc:boolean;
  r1:string;
begin
  if adodataset1.active then begin
    if (adodataset1.FieldByName('lwdt_act').isnull) then begin
      if application.messagebox('只針對當前Log做生產配合行動誌?','確定',mb_iconquestion+mb_yesno)=idyes then begin
        tc:=true; r1:='1';
      end else begin
        if (cxGrid1DBBandedTableView1.DataController.filteredrecordcount<=20) then begin
          if application.MessageBox('確定選擇這些Log做生產配合行動誌?','確定',mb_iconquestion+mb_yesno)=idyes then begin
            tc:=true; r1:='0';
          end else tc:=false;
        end else begin
          showmessage('請先選擇好需要做生產配合行動誌的Log!');
          tc:=false;
        end;
      end;
      if tc then begin
        if not adodataset1.fieldbyname('seq').isnull then begin
          if frmCarte_Timechange1=nil then frmCarte_Timechange1:=tfrmCarte_Timechange1.create(nil);
          frmCarte_Timechange1.label8.caption:=r1;
          with frmCarte_Timechange1.ADODataSet3 do begin
            close;
            commandtext:='select * from tbl_carte_sopc3_grp where lwdt_act3g=''0''';
            open;
            append;
          end;
          //PMC
          frmCarte_Timechange1.cxgrid1lwdt_r.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange1.cxgrid1lwdt_r1.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange1.cxgrid1lwdt_r2.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange1.cxgrid1lwdt_yn1.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox21.checked or frmCarte_Main.checkbox22.checked;
          frmCarte_Timechange1.cxgrid1lwdt_p.options.editing:=frmCarte_Main.checkbox11.checked;

          //Cutting
          frmCarte_Timechange1.cxgrid1lwdt_c.options.editing:=frmCarte_Main.checkbox21.checked;

          //Sewing
          frmCarte_Timechange1.cxgrid1lwdt_s.options.editing:=frmCarte_Main.checkbox22.checked;

          frmCarte_Timechange1.cxgrid1lwdt_marks.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox21.checked or frmCarte_Main.checkbox22.checked;
          frmCarte_Timechange1.show;
        end;
      end;
    end else begin
          if frmCarte_Timechange1=nil then frmCarte_Timechange1:=tfrmCarte_Timechange1.create(nil);
          with frmCarte_Timechange1.ADODataSet3 do begin
            close;
            commandtext:='select * from tbl_carte_sopc3_grp where charindex(lwdt_act3g,'''+adodataset1.FieldByName('lwdt_act').value+''')>0';
            open;
          end;
          //PMC
          frmCarte_Timechange1.cxgrid1lwdt_r.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange1.cxgrid1lwdt_r1.options.editing:=frmCarte_Main.checkbox11.checked;
          frmCarte_Timechange1.cxgrid1lwdt_p.options.editing:=frmCarte_Main.checkbox11.checked;

          //Cutting
          frmCarte_Timechange1.cxgrid1lwdt_c.options.editing:=frmCarte_Main.checkbox21.checked;

          //Sewing
          frmCarte_Timechange1.cxgrid1lwdt_s.options.editing:=frmCarte_Main.checkbox22.checked;

          frmCarte_Timechange1.cxgrid1lwdt_marks.options.editing:=frmCarte_Main.checkbox11.checked or frmCarte_Main.checkbox21.checked or frmCarte_Main.checkbox22.checked;
          frmCarte_Timechange1.show;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.cxGrid1qty_shortPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if frmCarte_Short=nil then frmCarte_Short:=tfrmCarte_Short.create(nil);
  frmCarte_Short.dbedit1.readonly:=not frmCarte_Main.checkbox11.checked;
  frmCarte_Short.dbedit2.readonly:=not frmCarte_Main.checkbox11.checked;
  frmCarte_Short.dbedit3.readonly:=not frmCarte_Main.checkbox11.checked;
  frmCarte_Short.dbedit4.readonly:=not frmCarte_Main.checkbox11.checked;
  frmCarte_Short.dbedit6.readonly:=not frmCarte_Main.checkbox11.checked;
  frmCarte_Short.dbedit7.readonly:=not frmCarte_Main.checkbox11.checked;
  frmCarte_Short.show;
end;

procedure TfrmCarte_Ordprocessing.cxGrid1workordernoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  str1,str2:string;
begin
  str1:=extractfilepath(application.exename)+'schedule\dotnet';
  str2:='"Joew" "123" "EN" "PH.RWO.UI3.0.dll" "PH.RWO.UI.Report.ExReport" "PH.RWO.BackEnd3.0.dll,PH.RWO.BackEnd.ReportJob.JobWOReport,'+adodataset1.fieldbyname('workorderno').value+'"';
  shellexecute(0,'open',pchar('PH.Platform.PHWinApp.exe'),pchar(str2),pchar(str1),sw_show);
end;

procedure TfrmCarte_Ordprocessing.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key<>#13) and ((key<#48) or (key>#58)) and (key<>#43) and (key<>#45) and (key<>#8) and (key<>#127) then key:=#0;
end;

procedure TfrmCarte_Ordprocessing.EnquerylogswithWarningmessage1Click(
  Sender: TObject);
begin
  if frmCarte_Enquirywarning=nil then frmCarte_Enquirywarning:=tfrmCarte_Enquirywarning.create(nil);
  frmCarte_Enquirywarning.show;
end;

procedure TfrmCarte_Ordprocessing.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Ordprocessing:=nil;
end;

procedure TfrmCarte_Ordprocessing.FormCreate(Sender: TObject);
begin
  //siLang1.LoadAllFromFile(extractfilepath(application.ExeName)+'COP_LOG_MultiLANG.sil',false);
  //siLang1.Language:=frmCarte_Main.ComboBox2.text;
  memo2.Lines.Clear;
  memo2.Lines.LoadFromFile(extractfilepath(application.ExeName)+'phplatformpath.ini');
  FontRedStyle := TCxStyle.Create(Self);
  FontRedStyle.TextColor := clRed;
  FontBoldRedStyle := TCxStyle.Create(Self);
  FontBoldRedStyle.TextColor := clRed;
  FontBoldRedStyle.Font.Style := [fsbold];
end;

procedure TfrmCarte_Ordprocessing.FormShow(Sender: TObject);
begin
  siLang1.LoadAllFromFile(extractfilepath(application.ExeName)+'COP_LOG_MultiLANG.sil',false);
  siLang1.Language:=frmCarte_Main.ComboBox2.text;
  screen.cursor:=crSQLWait;
  try
  chk17.visible:=false;
  //cxgrid1dbbandedtableview1.bands[8].visible:=false;
  cxgrid1dbbandedtableview1.bands[21].visible:=false;
  cxgrid1dbbandedtableview1.bands[71].visible:=false;
  cxgrid1dbbandedtableview1.bands[79].visible:=false;
  cxgrid1dbbandedtableview1.bands[83].visible:=false;
  cxgrid1dbbandedtableview1.bands[84].visible:=false;
  cxgrid1dbbandedtableview1.bands[121].visible:=false;
  cxgrid1dbbandedtableview1.bands[134].visible:=false;
  cxgrid1dbbandedtableview1.bands[90].visible:=false;
  cxgrid1dbbandedtableview1.bands[115].visible:=false;
  cxgrid1dbbandedtableview1.bands[38].visible:=false;
  cxgrid1dbbandedtableview1.bands[75].visible:=false;
  //cxgrid1dbbandedtableview1.bands[97].visible:=false;
  //cxgrid1dbbandedtableview1.bands[116].visible:=false;
  //cxgrid1dbbandedtableview1.bands[86].visible:=true;

  cxgrid1ex_l.visible:=false;
  cxgrid1mex_ld.visible:=false;
  cxgrid1mex_ls.visible:=false;
  cxgrid1mex_le.visible:=false;
  cxgrid1workorderno.visible:=false;
  cxgrid1problem_o.visible:=false;
  cxgrid1rwo_wo.visible:=false;
  cxgrid1fst_dt.visible:=false;
  cxgrid1dbbandedtableview1.bands[27].visible:=false;
  cxgrid1dbbandedtableview1.bands[36].visible:=false;

  //2020-06-16 amend the following columns' visible
  cxgrid1ord_cancel1.visible:=false;
  cxgrid1dbbandedtableview1.bands[35].visible:=false;
  cxgrid1dbbandedtableview1.bands[148].visible:=false;
  //cxgrid1fw_agree.visible:=false;
  //cxgrid1ct_md1.visible:=false;
  cxgrid1seqno1.visible:=false;
  cxgrid1tc_seqno.visible:=false;
  cxgrid1lwdt_act.visible:=false;
  cxgrid1ad_pk.options.editing:=frmcarte_main.checkbox16.checked;
  cxgrid1ad_qc.options.editing:=frmcarte_main.checkbox15.checked;
  cxgrid1ds_wa_1.visible:=false;
  //cxgrid1fst_wa.visible:=false;
  cxgrid1fw_cdiff.visible:=false;

  combobox4.items.clear;
  combobox4.items.add('All');
  with adoquery1 do begin
    close;
    sql.text:='select distinct cust from tbl_carte_sopc1 where cust is not null and /*ex_a is null*/act_exfty=0 and ((ord_cancel1='''') or (ord_cancel1 is null)) order by cust';
    open;
    first;
    while not eof do begin
      combobox4.items.add(fieldbyname('cust').value);
      application.processmessages;
      next;
    end;
  end;
  finally
    combobox4.text:='All';
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmCarte_Ordprocessing.ImportData1Click(Sender: TObject);
begin
  if frmCarte_Importrwodata=nil then frmCarte_Importrwodata:=tfrmCarte_Importrwodata.create(nil);
  frmCarte_Importrwodata.show;
end;

procedure TfrmCarte_Ordprocessing.Insertintotransfer1Click(Sender: TObject);
begin
  //Add into transfer
  if application.messagebox('加入歷史記錄？','確定',mb_iconquestion+mb_okcancel)=idok then begin
    with adoquery1 do begin
      close;
      //parameters.clear;
      sql.text:='insert into tbl_carte_sopc5_transfer(keycode5,projectno5,custpo5,workorderno5,rwo_wo5,custstyle5,phcolor5,custcolor5,qty5,qty15,prod_site5,wpdn_ttl,act_cmpdt5,cust5) '
               +'select keycode,projectno,custpo,workorderno,rwo_wo,custstyle,phcolor,custcolor,qty,qty1,prod_site,qty1,act_cmpdt,cust from tbl_carte_sopc1 where keycode=:x1';
      parameters[0].value:=adodataset1.fieldbyname('keycode').value;
      execsql;
    end;
    showmessage('已加入歷史記錄！');
  end;
end;

procedure TfrmCarte_Ordprocessing.LINENOChange(Sender: TField);
var
  qn_no,qn_no1:integer;
begin
  qn_no:=0; qn_no1:=0;
  if not adodataset1.fieldbyname('line_no').isnull then qn_no:=adodataset1.fieldbyname('line_no').value;
  if not adodataset1.fieldbyname('line_no1').isnull then qn_no1:=adodataset1.fieldbyname('line_no1').value;
  adodataset1.fieldbyname('line_tno').value:=qn_no+qn_no1;
end;

procedure TfrmCarte_Ordprocessing.Moveoutfromtransfer1Click(Sender: TObject);
begin
  //Delete from transfer
  if application.messagebox('取消歷史記錄？','確定',mb_iconquestion+mb_okcancel)=idok then begin
    with adoquery1 do begin
      close;
      //parameters.clear;
      sql.text:='delete from tbl_carte_sopc5_transfer where keycode5=:x1';
      parameters[0].value:=adodataset1.fieldbyname('keycode').value;
      execsql;
    end;
    {
    with adoquery1 do begin
      close;
      //parameters.clear;
      sql.text:='delete from tbl_carte_sopc5_transfer_marks where keycode5=:x1';
      parameters[0].value:=adodataset1.fieldbyname('keycode').value;
      execsql;
    end;
    }
    showmessage('已取消歷史記錄！');
  end;
end;

procedure TfrmCarte_Ordprocessing.N1Click(Sender: TObject);
begin
  if (combobox4.text='PVH') or (combobox4.text='AP') or (combobox4.text='BDON') or (combobox4.text='PPTT') or (combobox4.text='TGTA') then begin
    if frmCarte_PVHIPO=nil then frmCarte_PVHIPO:=tfrmCarte_PVHIPO.create(nil);
    frmCarte_PVHIPO.label1.caption:='CUSTPO';
    frmCarte_PVHIPO.show;
  end else showmessage('只有AP/BDON/PPTT/PVH/TGTA才能查詢！');
end;

procedure TfrmCarte_Ordprocessing.N2Click(Sender: TObject);
begin
  if (combobox4.text='PVH') or (combobox4.text='AP') or (combobox4.text='BDON') or (combobox4.text='PPTT') or (combobox4.text='TGTA') then begin
    if frmCarte_PVHIPO=nil then frmCarte_PVHIPO:=tfrmCarte_PVHIPO.create(nil);
    frmCarte_PVHIPO.label1.caption:='WO';
    frmCarte_PVHIPO.show;
  end else showmessage('只有AP/BDON/PPTT/PVH/TGTA才能查詢！');
end;

procedure TfrmCarte_Ordprocessing.ppDetailBand10BeforePrint(Sender: TObject);
begin
  fwdt_2001.caption:='';
  if not adodataset4.fieldbyname('fwdt_r').isnull then
  fwdt_2001.caption:=formatdatetime('mm/dd',adodataset4.fieldbyname('fwdt_r').value)+'*'
  else if not adodataset4.fieldbyname('fwdt_o').isnull then
  fwdt_2001.caption:=formatdatetime('mm/dd',adodataset4.fieldbyname('fwdt_o').value);
  ex_2001.caption:='';
  if not adodataset4.fieldbyname('ex_r').isnull then
  ex_2001.caption:=formatdatetime('mm/dd',adodataset4.fieldbyname('ex_r').value)+'*'
  else if not adodataset4.fieldbyname('ex_o').isnull then
  ex_2001.caption:=formatdatetime('mm/dd',adodataset4.fieldbyname('ex_o').value);
  if not adodataset4.fieldbyname('custpo_qty').isnull then begin
    if adodataset4.fieldbyname('custpo_qty').value>1 then
      ipo_qty001.font.color:=clRed else ipo_qty001.font.color:=clBlack;
  end else ipo_qty001.font.color:=clBlack;

  with adoquery1 do begin
    close;
    sql.text:='select ipo1,ipo_2,ipo_3,ipo_4,ipo_5,ipo_6,bdc_1,bdc_2,bdc_3,bdc_4,bdc_5,bdc_6 from tbl_carte_pvh_ipo where cust=''PVH'' and seq='+adodataset4.fieldbyname('seq').asstring;
    open;
    if not fieldbyname('ipo1').isnull then i_2001.caption:=fieldbyname('ipo1').value else i_2001.caption:='';
    if not fieldbyname('ipo_2').isnull then i_2002.caption:=fieldbyname('ipo_2').value else i_2002.caption:='';
    if not fieldbyname('ipo_3').isnull then i_2003.caption:=fieldbyname('ipo_3').value else i_2003.caption:='';
    if not fieldbyname('ipo_4').isnull then i_2004.caption:=fieldbyname('ipo_4').value else i_2004.caption:='';
    if not fieldbyname('ipo_5').isnull then i_2005.caption:=fieldbyname('ipo_5').value else i_2005.caption:='';
    if not fieldbyname('ipo_6').isnull then i_2006.caption:=fieldbyname('ipo_6').value else i_2006.caption:='';
    if not fieldbyname('bdc_1').isnull then d_2001.caption:=fieldbyname('bdc_1').value else d_2001.caption:='';
    if not fieldbyname('bdc_2').isnull then d_2002.caption:=fieldbyname('bdc_2').value else d_2002.caption:='';
    if not fieldbyname('bdc_3').isnull then d_2003.caption:=fieldbyname('bdc_3').value else d_2003.caption:='';
    if not fieldbyname('bdc_4').isnull then d_2004.caption:=fieldbyname('bdc_4').value else d_2004.caption:='';
    if not fieldbyname('bdc_5').isnull then d_2005.caption:=fieldbyname('bdc_5').value else d_2005.caption:='';
    if not fieldbyname('bdc_6').isnull then d_2006.caption:=fieldbyname('bdc_6').value else d_2006.caption:='';
  end;
  s_2002.Visible:=false; s_2003.Visible:=false; s_2004.Visible:=false; s_2005.Visible:=false; s_2006.Visible:=false;
  i_2002.Visible:=false; i_2003.Visible:=false; i_2004.Visible:=false; i_2005.Visible:=false; i_2006.Visible:=false;
  iq_2002.Visible:=false; iq_2003.Visible:=false; iq_2004.Visible:=false; iq_2005.Visible:=false; iq_2006.Visible:=false;
  d_2002.Visible:=false; d_2003.Visible:=false; d_2004.Visible:=false; d_2005.Visible:=false; d_2006.Visible:=false;
  cq_2002.Visible:=false; cq_2003.Visible:=false; cq_2004.Visible:=false; cq_2005.Visible:=false; cq_2006.Visible:=false;
  l_2002.visible:=false;  l_2003.visible:=false;  l_2004.visible:=false;  l_2005.visible:=false;  l_2006.visible:=false;
  if adodataset4.fieldbyname('custpo_qty').value=6 then begin
    s_2002.Visible:=true; s_2003.Visible:=true; s_2004.Visible:=true; s_2005.Visible:=true; s_2006.Visible:=true;
    i_2002.Visible:=true; i_2003.Visible:=true; i_2004.Visible:=true; i_2005.Visible:=true; i_2006.Visible:=true;
    iq_2002.Visible:=true; iq_2003.Visible:=true; iq_2004.Visible:=true; iq_2005.Visible:=true; iq_2006.Visible:=true;
    d_2002.Visible:=true; d_2003.Visible:=true; d_2004.Visible:=true; d_2005.Visible:=true; d_2006.Visible:=true;
    cq_2002.Visible:=true; cq_2003.Visible:=true; cq_2004.Visible:=true; cq_2005.Visible:=true; cq_2006.Visible:=true;
    l_2002.visible:=true;  l_2003.visible:=true;  l_2004.visible:=true;  l_2005.visible:=true;  l_2006.visible:=true;
  end else if adodataset4.fieldbyname('custpo_qty').value=5 then begin
    s_2002.Visible:=true; s_2003.Visible:=true; s_2004.Visible:=true; s_2005.Visible:=true; s_2006.Visible:=false;
    i_2002.Visible:=true; i_2003.Visible:=true; i_2004.Visible:=true; i_2005.Visible:=true; i_2006.Visible:=false;
    iq_2002.Visible:=true; iq_2003.Visible:=true; iq_2004.Visible:=true; iq_2005.Visible:=true; iq_2006.Visible:=false;
    d_2002.Visible:=true; d_2003.Visible:=true; d_2004.Visible:=true; d_2005.Visible:=true; d_2006.Visible:=false;
    cq_2002.Visible:=true; cq_2003.Visible:=true; cq_2004.Visible:=true; cq_2005.Visible:=true; cq_2006.Visible:=false;
    l_2002.visible:=true;  l_2003.visible:=true;  l_2004.visible:=true;  l_2005.visible:=true;
  end else if adodataset4.fieldbyname('custpo_qty').value=4 then begin
    s_2002.Visible:=true; s_2003.Visible:=true; s_2004.Visible:=true; s_2005.Visible:=false; s_2006.Visible:=false;
    i_2002.Visible:=true; i_2003.Visible:=true; i_2004.Visible:=true; i_2005.Visible:=false; i_2006.Visible:=false;
    iq_2002.Visible:=true; iq_2003.Visible:=true; iq_2004.Visible:=true; iq_2005.Visible:=false; iq_2006.Visible:=false;
    d_2002.Visible:=true; d_2003.Visible:=true; d_2004.Visible:=true; d_2005.Visible:=false; d_2006.Visible:=false;
    cq_2002.Visible:=true; cq_2003.Visible:=true; cq_2004.Visible:=true; cq_2005.Visible:=false; cq_2006.Visible:=false;
    l_2002.visible:=true;  l_2003.visible:=true;  l_2004.visible:=true;
  end else if adodataset4.fieldbyname('custpo_qty').value=3 then begin
    s_2002.Visible:=true; s_2003.Visible:=true; s_2004.Visible:=false; s_2005.Visible:=false; s_2006.Visible:=false;
    i_2002.Visible:=true; i_2003.Visible:=true; i_2004.Visible:=false; i_2005.Visible:=false; i_2006.Visible:=false;
    iq_2002.Visible:=true; iq_2003.Visible:=true; iq_2004.Visible:=false; iq_2005.Visible:=false; iq_2006.Visible:=false;
    d_2002.Visible:=true; d_2003.Visible:=true; d_2004.Visible:=false; d_2005.Visible:=false; d_2006.Visible:=false;
    cq_2002.Visible:=true; cq_2003.Visible:=true; cq_2004.Visible:=false; cq_2005.Visible:=false; cq_2006.Visible:=false;
    l_2002.visible:=true;  l_2003.visible:=true;
  end else if adodataset4.fieldbyname('custpo_qty').value=2 then begin
    s_2002.Visible:=true; s_2003.Visible:=false; s_2004.Visible:=false; s_2005.Visible:=false; s_2006.Visible:=false;
    i_2002.Visible:=true; i_2003.Visible:=false; i_2004.Visible:=false; i_2005.Visible:=false; i_2006.Visible:=false;
    iq_2002.Visible:=true; iq_2003.Visible:=false; iq_2004.Visible:=false; iq_2005.Visible:=false; iq_2006.Visible:=false;
    d_2002.Visible:=true; d_2003.Visible:=false; d_2004.Visible:=false; d_2005.Visible:=false; d_2006.Visible:=false;
    cq_2002.Visible:=true; cq_2003.Visible:=false; cq_2004.Visible:=false; cq_2005.Visible:=false; cq_2006.Visible:=false;
    l_2002.visible:=true;
  end;
end;

procedure TfrmCarte_Ordprocessing.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if not adoquery2.fieldbyname('act_cmpdt3').isnull then begin
    if adoquery2.fieldbyname('act_cmpdt3').value<=date-2 then begin
      actitem002.font.Color:=clRed;
      actitem002.font.Style:=[fsBold];
    end else if (adoquery2.fieldbyname('act_cmpdt3').value>date-2) and (adoquery2.fieldbyname('act_cmpdt3').value<=date+1) then begin
      actitem002.font.Color:=clRed;
      actitem002.font.Style:=[];
    end else begin
      actitem002.font.Color:=clBlack;
      actitem002.font.Style:=[];
    end;
  end else begin
    actitem002.font.Color:=clBlack;
    actitem002.font.Style:=[];
  end;
  if (adoquery2.fieldbyname('act_cnt').value mod 2 = 1) then begin
    ppshape113.visible:=true;
  end else begin
    ppshape113.visible:=false;
  end;
end;

procedure TfrmCarte_Ordprocessing.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if adodataset1.fieldbyname('ct_md1').isnull then md001.caption:='n.a.'
  else md001.caption:=adodataset1.fieldbyname('ct_md1').value;
  if adodataset1.fieldbyname('ct_he1').isnull then he001.caption:='n.a.'
  else he001.caption:=adodataset1.fieldbyname('ct_he1').value;
  if adodataset1.fieldbyname('ct_pp1').isnull then pp001.caption:='n.a.'
  else pp001.caption:=adodataset1.fieldbyname('ct_pp1').value;
  if adodataset1.fieldbyname('act_item').value>'' then
  oskey001.font.style:=[fsBold] else oskey001.font.style:=[];
  if not adodataset1.fieldbyname('m_ddt').isnull then
    m_ddt001.caption:=formatfloat('+#0;-#0',trunc(adodataset1.fieldbyname('m_ddt').value)-trunc(adodataset1.fieldbyname('ddt').value))
  else m_ddt001.caption:='';
  if not adodataset1.fieldbyname('m_end').isnull then
    m_end001.caption:=formatfloat('+#0;-#0',trunc(adodataset1.fieldbyname('m_end').value)-trunc(adodataset1.fieldbyname('m_start').value))
  else m_end001.caption:='';
  if not adodataset1.fieldbyname('ex_r').isnull then
    ex_or001.caption:=formatdatetime('mm/dd',adodataset1.fieldbyname('ex_r').value)+'*'
  else ex_or001.caption:=formatdatetime('mm/dd',adodataset1.fieldbyname('ex_o').value);
  mex_or001.caption:=''; mex_or002.caption:='';
  if not adodataset1.fieldbyname('mex_rs').isnull then
    mex_or001.caption:=adodataset1.fieldbyname('mex_rs').asstring+'*'
  else begin
    if not adodataset1.fieldbyname('mex_os').isnull then
    mex_or001.caption:=adodataset1.fieldbyname('mex_os').asstring;
  end;
  if not adodataset1.fieldbyname('mex_re').isnull then
    mex_or002.caption:=adodataset1.fieldbyname('mex_re').asstring+'*'
  else begin
    if not adodataset1.fieldbyname('mex_oe').isnull then
    mex_or002.caption:=adodataset1.fieldbyname('mex_oe').asstring;
  end;
end;

procedure TfrmCarte_Ordprocessing.ppDetailBand4BeforePrint(Sender: TObject);
begin
  if adoquery2.fieldbyname('qty1').value>0 then begin
    if not adoquery2.fieldbyname('prod_site').isnull then
    prodsite001.caption:=adoquery2.fieldbyname('prod_site').value;
  end else prodsite001.caption:='-';
  if adoquery2.fieldbyname('sp_qty').value>0 then begin
    if not adoquery2.fieldbyname('prod_site1').isnull then
    prodsite1001.caption:=adoquery2.fieldbyname('prod_site1').value;
  end else prodsite1001.caption:='-';
  mex_or2001.caption:=''; mex_or2002.caption:='';
  if not adoquery2.fieldbyname('mex_rs').isnull then
    mex_or2001.caption:=adoquery2.fieldbyname('mex_rs').asstring+'*'
  else begin
    if not adoquery2.fieldbyname('mex_os').isnull then
    mex_or2001.caption:=adoquery2.fieldbyname('mex_os').asstring;
  end;
  if not adoquery2.fieldbyname('mex_re').isnull then
    mex_or2002.caption:=adoquery2.fieldbyname('mex_re').asstring+'*'
  else begin
    if not adoquery2.fieldbyname('mex_oe').isnull then
    mex_or2002.caption:=adoquery2.fieldbyname('mex_oe').asstring;
  end;

  if not adoquery2.fieldbyname('fwdt_r').isnull then begin
    fwdt_or001.caption:=formatdatetime('mm/dd',adoquery2.fieldbyname('fwdt_r').value)+'*';
    if adoquery2.fieldbyname('fwdt_a').isnull then begin
      if adoquery2.fieldbyname('fwdt_r').value<=date+7 then begin
        fwdt_or001.font.color:=clRed;
        if adoquery2.fieldbyname('fwdt_r').value<=date then
        fwdt_or001.font.style:=[fsbold] else fwdt_or001.font.style:=[];
      end else begin
        fwdt_or001.font.color:=clBlack;
        fwdt_or001.font.style:=[];
      end;
    end else begin
      fwdt_or001.font.color:=clBlack;
      fwdt_or001.font.style:=[];
    end;
  end else begin
    if not adoquery2.fieldbyname('fwdt_o').isnull then begin
      fwdt_or001.caption:=formatdatetime('mm/dd',adoquery2.fieldbyname('fwdt_o').value);
      if adoquery2.fieldbyname('fwdt_a').isnull then begin
        if adoquery2.fieldbyname('fwdt_o').value<=date+7 then begin
          fwdt_or001.font.color:=clRed;
          if adoquery2.fieldbyname('fwdt_o').value<=date then
          fwdt_or001.font.style:=[fsbold] else fwdt_or001.font.style:=[];
        end else begin
          fwdt_or001.font.color:=clBlack;
          fwdt_or001.font.style:=[];
        end;
      end else begin
        fwdt_or001.font.color:=clBlack;
        fwdt_or001.font.style:=[];
      end;
    end;
  end;
  if not adoquery2.fieldbyname('m_end').isnull then begin
    if not adoquery2.fieldbyname('m_start').isnull then
    m_ddt2001.caption:=formatfloat('#0;-#0',trunc(adoquery2.fieldbyname('m_end').value)-trunc(adoquery2.fieldbyname('m_start').value))
    else m_ddt2001.caption:='';
  end else m_ddt2001.caption:='';
  q2line001.caption:='';
  q2qty001.caption:='';
  q2dt1001.caption:='';
  q2dt2001.caption:='';
  q2dt4001.caption:='';
  q2dt3001.caption:='';
  qnx001.font.color:=clBlack;
  qnx001.Font.Style:=[];
  if adoquery2.fieldbyname('qn_tno').value=1 then begin
    q2line001.caption:='- -';
    q2qty001.caption:='- -';
    q2dt1001.caption:='- -';
    q2dt2001.caption:='- -';
    q2dt4001.caption:='- -';
    q2dt3001.caption:='- -';
    if adoquery2.fieldbyname('q1_dt1').isnull then begin
      qnx001.font.color:=clRed;
      qnx001.Font.Style:=[fsbold];
    end;
  end else if adoquery2.fieldbyname('qn_tno').value>=2 then begin
    if not adoquery2.fieldbyname('q2_line').isnull then
    q2line001.caption:=adoquery2.fieldbyname('q2_line').value;
    if not adoquery2.fieldbyname('q2_qty').isnull then begin
      if adoquery2.fieldbyname('q2_qty').value>0 then
      q2qty001.caption:=adoquery2.fieldbyname('q2_qty').asstring;
    end;
    if not adoquery2.fieldbyname('q2_dt1').isnull then
    q2dt1001.caption:=formatdatetime('mm/dd',adoquery2.fieldbyname('q2_dt1').value);
    if not adoquery2.fieldbyname('q2_dt2').isnull then
    q2dt2001.caption:=formatdatetime('mm/dd',adoquery2.fieldbyname('q2_dt2').value);
    if not adoquery2.fieldbyname('q2_dt4').isnull then
    q2dt4001.caption:=formatdatetime('mm/dd',adoquery2.fieldbyname('q2_dt4').value);
    if not adoquery2.fieldbyname('q2_dt3').isnull then
    q2dt3001.caption:=formatdatetime('mm/dd',adoquery2.fieldbyname('q2_dt3').value);
    if (adoquery2.fieldbyname('q1_dt1').isnull) or (adoquery2.fieldbyname('q2_dt1').isnull) then begin
      qnx001.font.color:=clRed;
      qnx001.Font.Style:=[fsbold];
    end;
  end;
  if not adoquery2.fieldbyname('q1_dt1').isnull then begin
    if adoquery2.fieldbyname('q1_dt4').isnull then begin
      if adoquery2.fieldbyname('q1_dt1').value<=date+7 then begin
        q1dt1001.font.color:=clRed;
        if adoquery2.fieldbyname('q1_dt1').value<=date then
        q1dt1001.font.style:=[fsbold] else q1dt1001.font.style:=[];
      end else begin
        q1dt1001.font.color:=clBlack;
        q1dt1001.font.style:=[];
      end;
    end else begin
      q1dt1001.font.color:=clBlack;
      q1dt1001.font.style:=[];
    end;
  end;
  if adoquery2.fieldbyname('qn_tno').value>=2 then begin
    if not adoquery2.fieldbyname('q2_dt1').isnull then begin
      if adoquery2.fieldbyname('q2_dt4').isnull then begin
        if adoquery2.fieldbyname('q2_dt1').value<=date+7 then begin
          q2dt1001.font.color:=clRed;
          if adoquery2.fieldbyname('q2_dt1').value<=date then
          q2dt1001.font.style:=[fsbold] else q2dt1001.font.style:=[];
        end else begin
          q2dt1001.font.color:=clBlack;
          q2dt1001.font.style:=[];
        end;
      end else begin
        q2dt1001.font.color:=clBlack;
        q2dt1001.font.style:=[];
      end;
    end;
  end else begin
    q2dt1001.font.color:=clBlack;
    q2dt1001.font.style:=[];
  end;
end;

procedure TfrmCarte_Ordprocessing.ppDetailBand5BeforePrint(Sender: TObject);
begin
  if not adodataset2.fieldbyname('ex_r').isnull then ex_or4001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('ex_r').value)+'*'
  else begin
    if not adodataset2.fieldbyname('ex_o').isnull then
    ex_or4001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('ex_o').value);
  end;
end;

procedure TfrmCarte_Ordprocessing.ppDetailBand6BeforePrint(Sender: TObject);
begin
  if not adodataset3.fieldbyname('ex_r').isnull then ex_or4002.caption:=formatdatetime('mm/dd',adodataset3.fieldbyname('ex_r').value)+'*'
  else begin
    if not adodataset3.fieldbyname('ex_o').isnull then
    ex_or4002.caption:=formatdatetime('mm/dd',adodataset3.fieldbyname('ex_o').value);
  end;
  if adodataset3.fieldbyname('flag1').value='b' then keycode4002.font.style:=[fsBold]
  else keycode4002.font.style:=[];
end;

procedure TfrmCarte_Ordprocessing.ppDetailBand7BeforePrint(Sender: TObject);
begin
  if adodataset1.fieldbyname('ct_md1').isnull then md5001.caption:='n.a.'
  else md5001.caption:=adodataset1.fieldbyname('ct_md1').value;
  if adodataset1.fieldbyname('ct_he1').isnull then he5001.caption:='n.a.'
  else he5001.caption:=adodataset1.fieldbyname('ct_he1').value;
  if adodataset1.fieldbyname('ct_pp1').isnull then pp5001.caption:='n.a.'
  else pp5001.caption:=adodataset1.fieldbyname('ct_pp1').value;
  if not adodataset1.fieldbyname('m_ddt').isnull then
    ddtx5001.caption:=formatfloat('+#0;-#0',trunc(adodataset1.fieldbyname('m_ddt').value)-trunc(adodataset1.fieldbyname('ddt').value))
  else ddtx5001.caption:='';
  if not adodataset1.fieldbyname('m_ddt0').isnull then
    ddt0x5001.caption:=formatfloat('+#0;-#0',trunc(adodataset1.fieldbyname('m_ddt0').value)-trunc(adodataset1.fieldbyname('ddt0').value))
  else ddt0x5001.caption:='';
  if not adodataset1.fieldbyname('mcup_mddt').isnull then
    mddtx5001.caption:=formatfloat('+#0;-#0',trunc(adodataset1.fieldbyname('mcup_mddt').value)-trunc(adodataset1.fieldbyname('mcup_ddt').value))
  else mddtx5001.caption:='';
  if not adodataset1.fieldbyname('mcup_mddt0').isnull then
    mddt0x5001.caption:=formatfloat('+#0;-#0',trunc(adodataset1.fieldbyname('mcup_mddt0').value)-trunc(adodataset1.fieldbyname('mcup_ddt0').value))
  else mddt0x5001.caption:='';
end;

procedure TfrmCarte_Ordprocessing.ppDetailBand9BeforePrint(Sender: TObject);
begin
  if not adoquery2.fieldbyname('act_cmpdt3g').isnull then begin
    if adoquery2.fieldbyname('act_cmpdt3g').value<=date-2 then begin
      actitem001.font.color:=clRed;
      actitem001.font.style:=[fsBold];
    end else if (adoquery2.fieldbyname('act_cmpdt3g').value<=date+1) and (adoquery2.fieldbyname('act_cmpdt3g').value>date-2) then begin
      actitem001.font.color:=clRed;
      actitem001.font.style:=[];
    end else begin
      actitem001.font.color:=clBlack;
      actitem001.font.style:=[];
    end;
  end else begin
    actitem001.font.color:=clBlack;
    actitem001.font.style:=[];
  end;
  if (adoquery2.fieldbyname('act_cnt3g').value mod 2 = 1) then begin
    //ppdbmemo4.color:= $00FAFAFA;
    ppshape112.visible:=true;
  end else begin
    //ppdbmemo4.color:= clWhite;
    ppshape112.visible:=false;
  end;
  //cwo001.caption:=adoquery2.fieldbyname('problem_o').value+'-'+adoquery2.fieldbyname('rwo_wo').value;
end;

procedure TfrmCarte_Ordprocessing.ppGroupFooterBand1BeforePrint(
  Sender: TObject);
begin
  category002.Caption:='';
  with adoquery3 do begin
    close;
    sql.Text:='select a.act_item3,b.act_item,b.act_item_e from tbl_carte_sopc3 a,tbl_carte_actitem b where a.act_item3=b.code and a.seq='+adoquery2.FieldByName('seq').asstring;
    if frmCarte_Reports.checkbox3.checked=false then sql.text:=sql.text+' and act_cmp3=0';
    open;
    first;
    while not eof do begin
      if category002.caption>'' then
        category002.Caption:=category002.Caption+'   '+fieldbyname('act_item3').Value+' = '+fieldbyname('act_item_e').Value+' / '+fieldbyname('act_item').Value
      else category002.Caption:=category002.Caption+fieldbyname('act_item3').Value+' = '+fieldbyname('act_item_e').Value+' / '+fieldbyname('act_item').Value;
      next;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.ppGroupFooterBand3BeforePrint(
  Sender: TObject);
begin
  with adoquery1 do begin
    close;
    sql.text:='select count(distinct projectno) as x1,count(distinct custpo) as x2,count(distinct workorderno) as x3,count(distinct custstyle) as x4,count(distinct custcolor) as x5,count(distinct phcolor) as x6 '
             +'from tbl_carte_sopc1 where projectno=:x1';
    parameters[0].value:=adodataset2.fieldbyname('projectno').value;
    open;
    if not fieldbyname('x1').isnull then begin
      prj4001.caption:=fieldbyname('x1').asstring;
      custpo4001.caption:=fieldbyname('x2').asstring;
      wo4001.caption:=fieldbyname('x3').asstring;
      custstyle4001.caption:=fieldbyname('x4').asstring;
      custcolor4001.caption:=fieldbyname('x5').asstring;
      phcolor4001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  percent4001.caption:=formatfloat('#0.00%',ppdbcalc17.value*100.00/ppdbcalc2.value);
  percent4003.caption:=formatfloat('#0.00%',ppdbcalc5.value*(-100.00)/ppdbcalc2.value);
end;

procedure TfrmCarte_Ordprocessing.ppGroupFooterBand4BeforePrint(
  Sender: TObject);
var
  qty1,sp_qty:integer;
  sqlstr1:string;
begin
  sqlstr1:='';
    if combobox1.text>'' then sqlstr1:=sqlstr1+' and a.cgrp='''+combobox1.text+'''';
    if cxcombobox1.text>'' then sqlstr1:=sqlstr1+' and charindex(a.keycode,'''+cxcombobox1.text+''')>0';
    if combobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(a.projectno,'''+combobox2.text+''')>0';
    if cxcombobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(a.booking,'''+cxcombobox2.text+''')>0';
    if combobox4.text>'' then begin
      if combobox4.text<>'All' then
      sqlstr1:=sqlstr1+' and a.cust='''+combobox4.text+'''';
    end;
    if combobox5.text>'' then sqlstr1:=sqlstr1+' and a.qty1_sp='''+combobox5.text+'''';
    if combobox6.text>'' then sqlstr1:=sqlstr1+' and a.custstyle='''+combobox6.text+'''';
    if combobox3.text>'' then begin
       if combobox3.text='未開制單' then sqlstr1:=sqlstr1+' and ((a.workorderno is null) or (a.workorderno=''''))'
       else sqlstr1:=sqlstr1+' and a.workorderno='''+combobox3.text+'''';
    end;
    if combobox7.text>'' then begin
      if (combobox7.text<>'All') and (combobox7.text<>'CN') and (combobox7.text<>'RX+GG') and (combobox7.text<>'SL+SLPP') then
        sqlstr1:=sqlstr1+' and a.prod_site='''+combobox7.text+''''
      //else if (combobox7.text='All') then
      //  sqlstr1:=sqlstr1+' and a.prod_site in (''SL'',''CL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='CN') then
        sqlstr1:=sqlstr1+' and a.prod_site in (''SL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='RX+GG') then
        sqlstr1:=sqlstr1+' and a.prod_site in (''GG'',''RX'')'
      else if (combobox7.text='SL+SLPP') then
        sqlstr1:=sqlstr1+' and a.prod_site in (''SL'',''SLPP'')';
    end;
    if combobox8.text>'' then sqlstr1:=sqlstr1+' and a.div like '''+combobox8.text+'%''';
    if cbb1.text>'' then begin
      if pos('*',cbb1.text)>0 then
        sqlstr1:=sqlstr1+' and b.act_cmp3g=1 and b.act_item3g='''+copy(cbb1.text,1,3)+''''
      else sqlstr1:=sqlstr1+' and b.act_item3g='''+cbb1.text+'''';
    end;
    if dateedit1.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',dateedit1.date)+'''';
    if dateedit2.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',dateedit2.date+1)+'''';
    if dateedit3.date>0 then sqlstr1:=sqlstr1+' and b.act_cmp3g=0 and b.act_cmpdt3g<='''+formatdatetime('yyyy-mm-dd',dateedit3.date)+'''';
    if edit1.text>'' then sqlstr1:=sqlstr1+' and a.mex_oe>='+edit1.text;
    if edit2.text>'' then sqlstr1:=sqlstr1+' and a.mex_oe<='+edit2.text;
    if (dateedit4.date>0) or (dateedit5.date>0) then begin
      if dateedit4.date>0 then sqlstr1:=sqlstr1+' and a.act_cmpdt>='''+formatdatetime('yyyy-mm-dd',dateedit4.date)+'''';
      if dateedit5.date>0 then sqlstr1:=sqlstr1+' and a.act_cmpdt<='''+formatdatetime('yyyy-mm-dd',dateedit5.date)+'''';
    end else begin
      if chk3.checked then sqlstr1:=sqlstr1+' and a./*ex_a is not null*/act_exfty=1'
      else sqlstr1:=sqlstr1+' and a./*ex_a is null*/act_exfty=0';
    end;
    if chk5.checked then begin
      sqlstr1:=sqlstr1+' and a.ord_cancel1=''Y''';
      if chk1.checked then sqlstr1:=sqlstr1+' and ((a.workorderno='''') or (a.workorderno is null))';
    end else begin
      sqlstr1:=sqlstr1+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
      if chk1.checked then sqlstr1:=sqlstr1+' and ((a.workorderno='''') or (a.workorderno is null))'
      else sqlstr1:=sqlstr1+' and a.workorderno>''''';
    end;
    if not frmCarte_Reports.checkbox3.checked then sqlstr1:=sqlstr1+' and b.act_cmp3g=0';


  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.keycode) as x0,count(distinct a.projectno) as x1,count(distinct a.custpo) as x3,count(distinct a.custstyle) as x4,'
             +'count(distinct a.custcolor) as x6 from tbl_carte_sopc1 a,tbl_carte_sopc_al b left join tbl_carte_sopc2_grp c on (b.seq3g=c.seq3g) '
             +'where charindex(b.grp_act3g,a.grp_act)>0 and b.grp_act3g='''+adoquery2.FieldByName('grp_act').value+'''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      keycodex6002.caption:=fieldbyname('x0').asstring;
      projectnox6002.caption:=fieldbyname('x1').asstring;
      //custpo002.caption:=fieldbyname('x3').asstring;
      custstylex6002.caption:=fieldbyname('x4').asstring;
      //custcolor002.caption:=fieldbyname('x6').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.custpo) as x3 from tbl_carte_sopc1 a,tbl_carte_sopc_al b left join tbl_carte_sopc2_grp c on (b.seq3g=c.seq3g) '
             +'where a.custpo>'''' and charindex(b.grp_act3g,a.grp_act)>0 and b.grp_act3g='''+adoquery2.FieldByName('grp_act').value+'''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x3').isnull then begin
      custpox6002.caption:=fieldbyname('x3').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.custcolor) as x6 from tbl_carte_sopc1 a,tbl_carte_sopc_al b left join tbl_carte_sopc2_grp c on (b.seq3g=c.seq3g) '
             +'where a.custcolor>'''' and charindex(b.grp_act3g,a.grp_act)>0 and b.grp_act3g='''+adoquery2.FieldByName('grp_act').value+'''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      custcolorx6002.caption:=fieldbyname('x6').asstring;
    end;
  end;

  qty1:=0; sp_qty:=0;
  with adoquery3 do begin
    close;
    sql.text:='select distinct a.keycode,a.qty1,a.sp_qty from tbl_carte_sopc1 a,tbl_carte_sopc_al b left join tbl_carte_sopc2_grp c on (b.seq3g=c.seq3g) '
             +'where charindex(b.grp_act3g,a.grp_act)>0 and b.grp_act3g='''+adoquery2.FieldByName('grp_act').value+'''';
    sql.text:=sql.text+sqlstr1;
    open;
    first;
    while not eof do begin
      qty1:=qty1+fieldbyname('qty1').value;
      sp_qty:=sp_qty+fieldbyname('sp_qty').value;
      application.processmessages;
      next;
    end;
    qtyx6002.caption:=inttostr(qty1);
    sp_qtyx6002.caption:=inttostr(sp_qty);
  end;

  with adoquery3 do begin
    close;
    sql.Text:='select a.act_item3g,b.act_item,b.act_item_e from tbl_carte_sopc_al a,tbl_carte_actitem b where a.act_item3g=b.code and a.grp_act3g='''+adoquery2.FieldByName('grp_act').value+'''';
    open;
    if not fieldbyname('act_item3g').isnull then begin
      category001.Caption:=fieldbyname('act_item3g').Value+' = '+fieldbyname('act_item_e').Value+' / '+fieldbyname('act_item').Value;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.ppGroupFooterBand5BeforePrint(
  Sender: TObject);
var
  qty1,qn_qty1:integer;
  qn_qty2,qn_qty3:double;
  sqlstr1:string;
begin
  sqlstr1:='';
    if combobox1.text>'' then sqlstr1:=sqlstr1+' and a.cgrp='''+combobox1.text+'''';
    if cxcombobox1.text>'' then sqlstr1:=sqlstr1+' and charindex(a.keycode,'''+cxcombobox1.text+''')>0';
    if combobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(a.projectno,'''+combobox2.text+''')>0';
    if cxcombobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(a.booking,'''+cxcombobox2.text+''')>0';
    sqlstr1:=sqlstr1+' and a.cust='''+adoquery2.fieldbyname('cust').value+'''';
    if combobox5.text>'' then sqlstr1:=sqlstr1+' and a.qty1_sp='''+combobox5.text+'''';
    if combobox6.text>'' then sqlstr1:=sqlstr1+' and a.custstyle='''+combobox6.text+'''';
    if combobox3.text>'' then begin
       if combobox3.text='未開制單' then sqlstr1:=sqlstr1+' and ((a.workorderno is null) or (a.workorderno=''''))'
       else sqlstr1:=sqlstr1+' and a.workorderno='''+combobox3.text+'''';
    end;
    if combobox7.text>'' then begin
      if (combobox7.text<>'All') and (combobox7.text<>'CN') and (combobox7.text<>'RX+GG') and (combobox7.text<>'SL+SLPP') then
        sqlstr1:=sqlstr1+' and a.prod_site='''+combobox7.text+''''
      //else if (combobox7.text='All') then
      //  sqlstr1:=sqlstr1+' and a.prod_site in (''SL'',''CL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='CN') then
        sqlstr1:=sqlstr1+' and a.prod_site in (''SL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='RX+GG') then
        sqlstr1:=sqlstr1+' and a.prod_site in (''GG'',''RX'')'
      else if (combobox7.text='SL+SLPP') then
        sqlstr1:=sqlstr1+' and a.prod_site in (''SL'',''SLPP'')';
    end;
    if combobox8.text>'' then sqlstr1:=sqlstr1+' and a.div like '''+combobox8.text+'%''';
    if dateedit1.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',dateedit1.date)+'''';
    if dateedit2.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',dateedit2.date+1)+'''';
    if dateedit3.date>0 then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=0 and c.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',dateedit3.date)+''')';
    if edit1.text>'' then sqlstr1:=sqlstr1+' and a.mex_oe>='+edit1.text;
    if edit2.text>'' then sqlstr1:=sqlstr1+' and a.mex_oe<='+edit2.text;
    if (dateedit4.date>0) or (dateedit5.date>0) then begin
      if dateedit4.date>0 then sqlstr1:=sqlstr1+' and a.act_cmpdt>='''+formatdatetime('yyyy-mm-dd',dateedit4.date)+'''';
      if dateedit5.date>0 then sqlstr1:=sqlstr1+' and a.act_cmpdt<='''+formatdatetime('yyyy-mm-dd',dateedit5.date)+'''';
    end else begin
      if chk3.checked then sqlstr1:=sqlstr1+' and a./*ex_a is not null*/act_exfty=1'
      else sqlstr1:=sqlstr1+' and a./*ex_a is null*/act_exfty=0';
    end;
    if chk5.checked then begin
      sqlstr1:=sqlstr1+' and a.ord_cancel1=''Y''';
      if chk1.checked then sqlstr1:=sqlstr1+' and ((a.workorderno='''') or (a.workorderno is null))';
    end else begin
      sqlstr1:=sqlstr1+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
      if chk1.checked then sqlstr1:=sqlstr1+' and ((a.workorderno='''') or (a.workorderno is null))'
      else sqlstr1:=sqlstr1+' and a.workorderno>''''';
    end;
    if cbb1.text>'' then begin
      if pos('*',cbb1.text)>0 then
        sqlstr1:=sqlstr1+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=1 and c.act_item3='''+copy(cbb1.text,1,3)+''')'
                 +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=1 and act_item3g='''+copy(cbb1.text,1,3)+'''))'
      else sqlstr1:=sqlstr1+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=0 and c.act_item3='''+cbb1.text+''')'
                    +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+cbb1.text+'''))';
    end;
    if cbb2.text>'' then sqlstr1:=sqlstr1+' and (exists (select c.seq from tbl_carte_sopc3 c,tbl_carte_sopc2 d '
                                                               +'where a.seq=c.seq and a.seq=d.seq and c.seq_i=d.seq_i and c.act_cmp3=0 and d.act_cnt=1 and d.act_issue='''+cbb2.text+''')'
                                                               +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+cbb2.text+'''))';


  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.keycode) as x0,count(distinct a.projectno) as x1,count(distinct a.custpo) as x3,count(distinct a.custstyle) as x4,'
             +'count(distinct a.custcolor) as x6,sum(b.bqty) as x7,count(distinct a.workorderno) as x8,sum(b.q_tqty) as x9,count(distinct b.q1_line) as x10 '
             +'from tbl_carte_sopc1 a left join tbl_carte_sopc4 b on (a.seq=b.seq) where 0=0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      keycoded003.caption:=fieldbyname('x0').asstring;
      projectnod003.caption:=fieldbyname('x1').asstring;
      //custpod003.caption:=fieldbyname('x3').asstring;
      custstyled003.caption:=fieldbyname('x4').asstring;
      //custcolord003.caption:=fieldbyname('x6').asstring;
      bqtyd001.caption:=fieldbyname('x7').asstring;
      workorderd003.caption:=fieldbyname('x8').asstring;
      q_tqtyd001.caption:=fieldbyname('x9').asstring;
      p1lined001.caption:=fieldbyname('x10').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.custpo) as x6 '
             +'from tbl_carte_sopc1 a left join tbl_carte_sopc4 b on (a.seq=b.seq) where a.custpo>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      custpod003.caption:=fieldbyname('x6').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.custcolor) as x6 '
             +'from tbl_carte_sopc1 a left join tbl_carte_sopc4 b on (a.seq=b.seq) where a.custcolor>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      custcolord003.caption:=fieldbyname('x6').asstring;
    end;
  end;

  //showmessage('1');
  qty1:=0; qn_qty1:=0; qn_qty2:=0; qn_qty3:=0;
  with adoquery3 do begin
    close;
    sql.text:='select distinct a.keycode,a.qty1,b.q1_qty,b.q2_qty,b.q3_qty from tbl_carte_sopc1 a left join tbl_carte_sopc4 b on (a.seq=b.seq) where 0=0';
    sql.text:=sql.text+sqlstr1;
    open;
    first;
    while not eof do begin
      if not fieldbyname('qty1').isnull then
      qty1:=qty1+fieldbyname('qty1').value;
      if not fieldbyname('q1_qty').isnull then
      qn_qty1:=qn_qty1+fieldbyname('q1_qty').value;
      if not fieldbyname('q2_qty').isnull then
      qn_qty2:=qn_qty2+fieldbyname('q2_qty').value;
      if not fieldbyname('q3_qty').isnull then
      qn_qty3:=qn_qty3+fieldbyname('q3_qty').value;
      application.processmessages;
      next;
    end;
    //qty1d003.caption:=inttostr(qty1);
    qnqtyd001.caption:=inttostr(qn_qty1);
    qnqtyd002.caption:=formatfloat('#0;-#0;''''',qn_qty2);
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where m_start is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      m_startd001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where m_end is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      m_endd001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where fwdt_o is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      fwdt_od001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where fwdt_a is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      fwdt_ad001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where ((prod_site='''') or (prod_site is null)) and qty1>0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      prod_sited001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where ((prod_site1='''') or (prod_site1 is null)) and sp_qty>0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      prod_site1d001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where ((line_tno=0) or (line_tno is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      line_tnod001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where ((custpo='''') or (custpo is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      custpod001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where ((qn_tno=0) or (qn_tno is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      qn_tnod001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<='''+formatdatetime('yyyy-mm-dd',date+7)+''') and (case when fwdt_r is not null then fwdt_r else fwdt_o end>'''+formatdatetime('yyyy-mm-dd',date)+''') and fwdt_a is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    //parameters[1].value:=date;
    open;
    if not fieldbyname('x6').isnull then begin
      fwdt_oxd001.caption:=fieldbyname('x6').asstring;
      if fieldbyname('x6').value>0 then fwdt_oxd001.font.color:=clRed
      else fwdt_oxd001.font.color:=clBlack;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<='''+formatdatetime('yyyy/MM/dd',date)+''') and fwdt_a is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date;
    open;
    if not fieldbyname('x6').isnull then begin
      fwdt_oxd1001.caption:=fieldbyname('x6').asstring;
      if fieldbyname('x6').value>0 then fwdt_oxd1001.font.color:=clRed
      else fwdt_oxd1001.font.color:=clBlack;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=1 and b.q1_dt1 is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      qn_tnoxd001.caption:=fieldbyname('x6').asstring;
      if fieldbyname('x6').value>0 then qn_tnoxd001.font.color:=clRed
      else qn_tnoxd001.font.color:=clBlack;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=1 and b.q1_dt1 is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      q1_dt1d001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=1 and b.q1_dt2 is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      q1_dt2d001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=2 and b.q2_dt1 is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      q2_dt1d001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=2 and b.q2_dt2 is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      q2_dt2d001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=1 and b.q1_dt1<='''+formatdatetime('yyyy-mm-dd',date+7)+''' and b.q1_dt1>'''+formatdatetime('yyyy-mm-dd',date)+''' and b.q1_dt4 is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    //parameters[1].value:=date;
    open;
    if not fieldbyname('x6').isnull then begin
      q1_dt1xd001.caption:=fieldbyname('x6').asstring;
      if fieldbyname('x6').value>0 then q1_dt1xd001.font.color:=clRed
      else q1_dt1xd001.font.color:=clBlack;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=1 and b.q1_dt1<='''+formatdatetime('yyyy-mm-dd',date)+''' and b.q1_dt4 is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date;
    open;
    if not fieldbyname('x6').isnull then begin
      q1_dt1xd1001.caption:=fieldbyname('x6').asstring;
      if fieldbyname('x6').value>0 then q1_dt1xd1001.font.color:=clRed
      else q1_dt1xd1001.font.color:=clBlack;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=2 and b.q2_dt1<='''+formatdatetime('yyyy-mm-dd',date+7)+''' and b.q2_dt1>'''+formatdatetime('yyyy-mm-dd',date)+''' and b.q2_dt4 is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    //parameters[1].value:=date;
    open;
    if not fieldbyname('x6').isnull then begin
      q2_dt1xd001.caption:=fieldbyname('x6').asstring;
      if fieldbyname('x6').value>0 then q2_dt1xd001.font.color:=clRed
      else q2_dt1xd001.font.color:=clBlack;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=2 and b.q2_dt1<='''+formatdatetime('yyyy-mm-dd',date)+''' and b.q2_dt4 is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date;
    open;
    if not fieldbyname('x6').isnull then begin
      q2_dt1xd1001.caption:=fieldbyname('x6').asstring;
      if fieldbyname('x6').value>0 then q2_dt1xd1001.font.color:=clRed
      else q2_dt1xd1001.font.color:=clBlack;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.ppGroupHeaderBand3BeforePrint(
  Sender: TObject);
begin
  projectno001.caption:=adodataset2.fieldbyname('projectno').value;
  if not adodataset2.fieldbyname('d001').isnull then
    dt001.caption:='('+formatdatetime('mm/dd',adodataset2.fieldbyname('d001').value)+'-'
  else dt001.caption:='';
  if not adodataset2.fieldbyname('d002').isnull then
    dt002.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('d002').value)+')'
  else dt002.caption:='';
  if not adodataset2.fieldbyname('d011').isnull then
    dt011.caption:='('+formatdatetime('mm/dd',adodataset2.fieldbyname('d011').value)+'-'
  else dt011.caption:='';
  if not adodataset2.fieldbyname('d012').isnull then
    dt012.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('d012').value)+')'
  else dt012.caption:='';
  if not adodataset2.fieldbyname('d021').isnull then
    dt021.caption:='('+formatdatetime('mm/dd',adodataset2.fieldbyname('d021').value)+'-'
  else dt021.caption:='';
  if not adodataset2.fieldbyname('d022').isnull then
    dt022.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('d022').value)+')'
  else dt022.caption:='';
  if not adodataset2.fieldbyname('d031').isnull then
    dt031.caption:='('+formatdatetime('mm/dd',adodataset2.fieldbyname('d031').value)+'-'
  else dt031.caption:='';
  if not adodataset2.fieldbyname('d032').isnull then
    dt032.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('d032').value)+')'
  else dt032.caption:='';
  if not adodataset2.fieldbyname('d041').isnull then
    dt041.caption:='('+formatdatetime('mm/dd',adodataset2.fieldbyname('d041').value)+'-'
  else dt041.caption:='';
  if not adodataset2.fieldbyname('d042').isnull then
    dt042.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('d042').value)+')'
  else dt042.caption:='';
  if not adodataset2.fieldbyname('d051').isnull then
    dt051.caption:='('+formatdatetime('mm/dd',adodataset2.fieldbyname('d051').value)+'-'
  else dt051.caption:='';
  if not adodataset2.fieldbyname('d052').isnull then
    dt052.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('d052').value)+')'
  else dt052.caption:='';
  if not adodataset2.fieldbyname('d061').isnull then
    dt061.caption:='('+formatdatetime('mm/dd',adodataset2.fieldbyname('d061').value)+'-'
  else dt061.caption:='';
  if not adodataset2.fieldbyname('d062').isnull then
    dt062.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('d062').value)+')'
  else dt062.caption:='';
  if not adodataset2.fieldbyname('d071').isnull then
    dt071.caption:='('+formatdatetime('mm/dd',adodataset2.fieldbyname('d071').value)+'-'
  else dt071.caption:='';
  if not adodataset2.fieldbyname('d072').isnull then
    dt072.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('d072').value)+')'
  else dt072.caption:='';
  if not adodataset2.fieldbyname('d081').isnull then
    dt081.caption:='('+formatdatetime('mm/dd',adodataset2.fieldbyname('d081').value)+'-'
  else dt081.caption:='';
  if not adodataset2.fieldbyname('d082').isnull then
    dt082.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('d082').value)+')'
  else dt082.caption:='';
end;

procedure TfrmCarte_Ordprocessing.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Ordprocessing.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Ordprocessing.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport3.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Ordprocessing.ppReport4PreviewFormCreate(Sender: TObject);
begin
  ppReport4.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport4.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Ordprocessing.ppReport5PreviewFormCreate(Sender: TObject);
begin
  ppReport5.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport5.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Ordprocessing.ppReport6PreviewFormCreate(Sender: TObject);
begin
  ppReport6.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport6.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Ordprocessing.ppReport7PreviewFormCreate(Sender: TObject);
begin
  ppReport7.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport7.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Ordprocessing.ppSummaryBand10BeforePrint(Sender: TObject);
begin
  prj_2001.caption:=''; custpo_2001.caption:=''; wo_2001.caption:='';
  custstyle_2001.caption:=''; custcolor_2001.caption:=''; phcolor_2001.caption:='';
  with adoquery1 do begin
    close;
    sql.text:='select count(distinct projectno) as x1,count(distinct custpo) as x2,count(distinct workorderno) as x3,'
             +'count(distinct custstyle) as x4,count(distinct custcolor) as x5,count(distinct phcolor) as x6 from tbl_carte_sopc1';
    sql.text:=sql.text+' where cust='''+combobox4.text+''' and /*ex_a is null*/act_exfty=0 and ((ord_cancel1='''') or (ord_cancel1 is null)) and pvh_dest in (''US'',''CA'',''HK'')';
    if cxgrid1dbbandedtableview1.DataController.Filter.FilterText>'' then
    sql.text:=sql.text+' and '+cxgrid1dbbandedtableview1.DataController.Filter.FilterText;
    open;
    if not fieldbyname('x1').isnull then prj_2001.caption:=fieldbyname('x1').asstring;
    if not fieldbyname('x2').isnull then custpo_2001.caption:=fieldbyname('x2').asstring;
    if not fieldbyname('x3').isnull then wo_2001.caption:=fieldbyname('x3').asstring;
    if not fieldbyname('x4').isnull then custstyle_2001.caption:=fieldbyname('x4').asstring;
    if not fieldbyname('x5').isnull then custcolor_2001.caption:=fieldbyname('x5').asstring;
    if not fieldbyname('x6').isnull then phcolor_2001.caption:=fieldbyname('x6').asstring;
  end;
end;

procedure TfrmCarte_Ordprocessing.ppSummaryBand1BeforePrint(Sender: TObject);
var
  sqlstr1:string;
begin
  sqlstr1:='';
    if combobox1.text>'' then sqlstr1:=sqlstr1+' and cgrp='''+combobox1.text+'''';
    if cxcombobox1.text>'' then sqlstr1:=sqlstr1+' and charindex(keycode,'''+cxcombobox1.text+''')>0';
    if combobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(projectno,'''+combobox2.text+''')>0';
    if cxcombobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(booking,'''+cxcombobox2.text+''')>0';
    if combobox4.text>'' then begin
      if combobox4.text<>'All' then
      sqlstr1:=sqlstr1+' and cust='''+combobox4.text+'''';
    end;
    if combobox5.text>'' then sqlstr1:=sqlstr1+' and a.qty1_sp='''+combobox5.text+'''';
    if combobox6.text>'' then sqlstr1:=sqlstr1+' and custstyle='''+combobox6.text+'''';
    if combobox3.text>'' then begin
       if combobox3.text='未開制單' then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))'
       else sqlstr1:=sqlstr1+' and workorderno='''+combobox3.text+'''';
    end;
    if combobox7.text>'' then begin
      if (combobox7.text<>'All') and (combobox7.text<>'CN') and (combobox7.text<>'RX+GG') and (combobox7.text<>'SL+SLPP') then
        sqlstr1:=sqlstr1+' and prod_site='''+combobox7.text+''''
      //else if (combobox7.text='All') then
      //  sqlstr1:=sqlstr1+' and prod_site in (''SL'',''CL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='CN') then
        sqlstr1:=sqlstr1+' and prod_site in (''SL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='RX+GG') then
        sqlstr1:=sqlstr1+' and prod_site in (''GG'',''RX'')'
      else if (combobox7.text='SL+SLPP') then
        sqlstr1:=sqlstr1+' and prod_site in (''SL'',''SLPP'')';
    end;
    if combobox8.text>'' then sqlstr1:=sqlstr1+' and div like '''+combobox8.text+'%''';
    if cbb1.text>'' then begin
      if pos('*',cbb1.text)>0 then
        sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=1 and act_item3='''+copy(cbb1.text,1,3)+''')'
      else sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0 and act_item3='''+cbb1.text+''')';
    end;
    if cbb2.text>'' then sqlstr1:=sqlstr1+' and exists (select b.seq from tbl_carte_sopc2 b,tbl_carte_sopc3 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and c.act_cmp3=0 and b.act_cnt=1 and act_issue='''+cbb2.text+''')';
    if dateedit1.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',dateedit1.date)+'''';
    if dateedit2.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',dateedit2.date+1)+'''';
    if dateedit3.date>0 then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',dateedit3.date)+''')';
    if edit1.text>'' then sqlstr1:=sqlstr1+' and mex_oe>='+edit1.text;
    if edit2.text>'' then sqlstr1:=sqlstr1+' and mex_oe<='+edit2.text;
    if (dateedit4.date>0) or (dateedit5.date>0) then begin
      if dateedit4.date>0 then sqlstr1:=sqlstr1+' and act_cmpdt>='''+formatdatetime('yyyy-mm-dd',dateedit4.date)+'''';
      if dateedit5.date>0 then sqlstr1:=sqlstr1+' and act_cmpdt<='''+formatdatetime('yyyy-mm-dd',dateedit5.date)+'''';
    end else begin
      if chk3.checked then sqlstr1:=sqlstr1+' and /*ex_a is not null*/act_exfty=1'
      else sqlstr1:=sqlstr1+' and /*ex_a is null*/act_exfty=0';
    end;
    if chk4.checked then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0)';
    if chk6.checked then sqlstr1:=sqlstr1+' and ((exists (select seq from tbl_carte_sopc3_grp c where charindex(c.grp_act3g,a.grp_act)>0 and act_cmp3g=0)))';
    if chk5.checked then begin
      sqlstr1:=sqlstr1+' and a.ord_cancel1=''Y''';
      if chk1.checked then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))';
    end else begin
      sqlstr1:=sqlstr1+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
      if chk1.checked then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))'
      else sqlstr1:=sqlstr1+' and workorderno>''''';
    end;


  with adoquery3 do begin
    close;
    sql.text:='select count(distinct projectno) as x1,count(distinct workorderno) as x2,count(distinct custpo) as x3,count(distinct custstyle) as x4,'
             +'count(distinct phcolor) as x5 from tbl_carte_sopc1 a where 1=1';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prj001.caption:=fieldbyname('x1').asstring;
      wo001.caption:=fieldbyname('x2').asstring;
      //custpo001.caption:=fieldbyname('x3').asstring;
      custstyle001.caption:=fieldbyname('x4').asstring;
      phcolor001.caption:=fieldbyname('x5').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct custpo) as x1 from tbl_carte_sopc1 a where custpo>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custpo001.caption:=fieldbyname('x1').asstring;
    end else custpo001.caption:='0';
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct custcolor) as x1 from tbl_carte_sopc1 a where custcolor>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custcolor001.caption:=fieldbyname('x1').asstring;
    end else custcolor001.caption:='0';
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((sp_app1='''') or (sp_app1 is null) or (sp_app1=''N''))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      sp_app001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mddt001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_ddt002.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_start is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_start001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_end is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      m_end002.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (fwdt_o is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_o001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (fwdt_a is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdt_a001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (ex_o is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      ex_o001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((prod_site='''') or (prod_site is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prod_site001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where act_item>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      act_item001.caption:=fieldbyname('x1').asstring;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.ppSummaryBand2BeforePrint(Sender: TObject);
var
  qty1,sp_qty:integer;
  sqlstr1:string;
begin
  sqlstr1:='';
    if frmCarte_Reports.chk1.checked then sqlstr1:=sqlstr1+' and b.act_external=1 and b.act_internal=0 and c.act_pra=1'
    else if frmCarte_Reports.chk2.checked then sqlstr1:=sqlstr1+' and b.act_external=1 and b.act_internal=0'
    else if frmCarte_Reports.chk3.checked then sqlstr1:=sqlstr1+' and b.act_internal=1 and b.act_external=0'
    else if frmCarte_Reports.chk4.checked then sqlstr1:=sqlstr1+' and 1=1';
    if combobox1.text>'' then sqlstr1:=sqlstr1+' and a.cgrp='''+combobox1.text+'''';
    if cxcombobox1.text>'' then sqlstr1:=sqlstr1+' and charindex(a.keycode,'''+cxcombobox1.text+''')>0';
    if combobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(a.projectno,'''+combobox2.text+''')>0';
    if cxcombobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(a.booking,'''+cxcombobox2.text+''')>0';
    if combobox4.text>'' then begin
      if combobox4.text<>'All' then
      sqlstr1:=sqlstr1+' and a.cust='''+combobox4.text+'''';
    end;
    if combobox5.text>'' then sqlstr1:=sqlstr1+' and a.qty1_sp='''+combobox5.text+'''';
    if combobox6.text>'' then sqlstr1:=sqlstr1+' and a.custstyle='''+combobox6.text+'''';
    if combobox3.text>'' then begin
       if combobox3.text='未開制單' then sqlstr1:=sqlstr1+' and ((a.workorderno is null) or (a.workorderno=''''))'
       else sqlstr1:=sqlstr1+' and a.workorderno='''+combobox3.text+'''';
    end;
    if combobox7.text>'' then begin
      if (combobox7.text<>'All') and (combobox7.text<>'CN') and (combobox7.text<>'RX+GG') and (combobox7.text<>'SL+SLPP') then
        sqlstr1:=sqlstr1+' and a.prod_site='''+combobox7.text+''''
      //else if (combobox7.text='All') then
      //  sqlstr1:=sqlstr1+' and a.prod_site in (''SL'',''CL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='CN') then
        sqlstr1:=sqlstr1+' and a.prod_site in (''SL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='RX+GG') then
        sqlstr1:=sqlstr1+' and a.prod_site in (''GG'',''RX'')'
      else if (combobox7.text='SL+SLPP') then
        sqlstr1:=sqlstr1+' and a.prod_site in (''SL'',''SLPP'')';
    end;
    if combobox8.text>'' then sqlstr1:=sqlstr1+' and a.div like '''+combobox8.text+'%''';
    if cbb1.text>'' then begin
      if pos('*',cbb1.text)>0 then
        sqlstr1:=sqlstr1+' and b.act_cmp3=1 and b.act_item3='''+copy(cbb1.text,1,3)+''''
      else sqlstr1:=sqlstr1+' and b.act_item3='''+cbb1.text+'''';
    end;
    if cbb2.text>'' then sqlstr1:=sqlstr1+' and b.act_cmp3=0 and exists (select seq from tbl_carte_sopc2 d where a.seq=d.seq and b.seq_i=d.seq_i and d.act_cnt=1 and d.act_issue='''+cbb2.text+''')';
    if dateedit1.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',dateedit1.date)+'''';
    if dateedit2.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',dateedit2.date+1)+'''';
    if dateedit3.date>0 then sqlstr1:=sqlstr1+' and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',dateedit3.date)+'''';
    if edit1.text>'' then sqlstr1:=sqlstr1+' and a.mex_oe>='+edit1.text;
    if edit2.text>'' then sqlstr1:=sqlstr1+' and a.mex_oe<='+edit2.text;
    if (dateedit4.date>0) or (dateedit5.date>0) then begin
      if dateedit4.date>0 then sqlstr1:=sqlstr1+' and a.act_cmpdt>='''+formatdatetime('yyyy-mm-dd',dateedit4.date)+'''';
      if dateedit5.date>0 then sqlstr1:=sqlstr1+' and a.act_cmpdt<='''+formatdatetime('yyyy-mm-dd',dateedit5.date)+'''';
    end else begin
      if chk3.checked then sqlstr1:=sqlstr1+' and a./*ex_a is not null*/act_exfty=1'
      else sqlstr1:=sqlstr1+' and a./*ex_a is null*/act_exfty=0';
    end;
    if chk5.checked then begin
      sqlstr1:=sqlstr1+' and a.ord_cancel1=''Y''';
      if chk1.checked then sqlstr1:=sqlstr1+' and ((a.workorderno='''') or (a.workorderno is null))';
    end else begin
      sqlstr1:=sqlstr1+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
      if chk1.checked then sqlstr1:=sqlstr1+' and ((a.workorderno='''') or (a.workorderno is null))'
      else sqlstr1:=sqlstr1+' and a.workorderno>''''';
    end;
    if not frmCarte_Reports.checkbox3.checked then sqlstr1:=sqlstr1+' and b.act_cmp3=0';


  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.keycode) as x0,count(distinct a.projectno) as x1,count(distinct a.custpo) as x3,count(distinct a.custstyle) as x4,'
             +'count(distinct a.custcolor) as x6 from tbl_carte_sopc1 a,tbl_carte_sopc3 b left join tbl_carte_sopc2 c on (b.seq=c.seq and b.seq_i=c.seq_i) where a.seq=b.seq';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      keycode002.caption:=fieldbyname('x0').asstring;
      projectno002.caption:=fieldbyname('x1').asstring;
      //custpo002.caption:=fieldbyname('x3').asstring;
      custstyle002.caption:=fieldbyname('x4').asstring;
      //custcolor002.caption:=fieldbyname('x6').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.custpo) as x3 from tbl_carte_sopc1 a,tbl_carte_sopc3 b left join tbl_carte_sopc2 c on (b.seq=c.seq and b.seq_i=c.seq_i) where a.seq=b.seq and a.custpo>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x3').isnull then begin
      custpo002.caption:=fieldbyname('x3').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.custcolor) as x6 from tbl_carte_sopc1 a,tbl_carte_sopc3 b left join tbl_carte_sopc2 c on (b.seq=c.seq and b.seq_i=c.seq_i) where a.seq=b.seq and a.custcolor>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      custcolor002.caption:=fieldbyname('x6').asstring;
    end;
  end;

  qty1:=0; sp_qty:=0;
  with adoquery3 do begin
    close;
    sql.text:='select distinct a.keycode,a.qty1,a.sp_qty from tbl_carte_sopc1 a,tbl_carte_sopc3 b left join tbl_carte_sopc2 c on (b.seq=c.seq and b.seq_i=c.seq_i) where a.seq=b.seq';
    sql.text:=sql.text+sqlstr1;
    open;
    first;
    while not eof do begin
      qty1:=qty1+fieldbyname('qty1').value;
      sp_qty:=sp_qty+fieldbyname('sp_qty').value;
      application.processmessages;
      next;
    end;
    qty002.caption:=inttostr(qty1);
    sp_qty002.caption:=inttostr(sp_qty);
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.keycode) as x1 from tbl_carte_sopc1 a,tbl_carte_sopc3 b left join tbl_carte_sopc2 c on (b.seq=c.seq and b.seq_i=c.seq_i) '
             +'where a.seq=b.seq and b.act_cmpdt3>'''+formatdatetime('yyyy/mm/dd',date-2)+''' and b.act_cmpdt3<='''+formatdatetime('yyyy/mm/dd',date+1)+'''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      itemx3001.Caption:=fieldbyname('x1').AsString;
      if fieldbyname('x1').Value>0 then
      itemx3001.Font.Color:=clRed else itemx3001.Font.Color:=clBlack;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.keycode) as x1 from tbl_carte_sopc1 a,tbl_carte_sopc3 b left join tbl_carte_sopc2 c on (b.seq=c.seq and b.seq_i=c.seq_i) '
             +'where a.seq=b.seq and  b.act_cmpdt3<='''+formatdatetime('yyyy/mm/dd',date-2)+'''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      itemx3002.Caption:=fieldbyname('x1').AsString;
      if fieldbyname('x1').Value>0 then
      itemx3002.Font.Color:=clRed else itemx3002.Font.Color:=clBlack;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.ppSummaryBand4BeforePrint(Sender: TObject);
var
  qty1,qn_qty1:integer;
  qn_qty2,qn_qty3:double;
  sqlstr1:string;
begin
  sqlstr1:='';
    if combobox1.text>'' then sqlstr1:=sqlstr1+' and a.cgrp='''+combobox1.text+'''';
    if cxcombobox1.text>'' then sqlstr1:=sqlstr1+' and charindex(a.keycode,'''+cxcombobox1.text+''')>0';
    if combobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(a.projectno,'''+combobox2.text+''')>0';
    if cxcombobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(a.booking,'''+cxcombobox2.text+''')>0';
    if combobox4.text>'' then begin
      if combobox4.text<>'All' then
      sqlstr1:=sqlstr1+' and a.cust='''+combobox4.text+'''';
    end;
    if combobox5.text>'' then sqlstr1:=sqlstr1+' and a.qty1_sp='''+combobox5.text+'''';
    if combobox6.text>'' then sqlstr1:=sqlstr1+' and a.custstyle='''+combobox6.text+'''';
    if combobox3.text>'' then begin
       if combobox3.text='未開制單' then sqlstr1:=sqlstr1+' and ((a.workorderno is null) or (a.workorderno=''''))'
       else sqlstr1:=sqlstr1+' and a.workorderno='''+combobox3.text+'''';
    end;
    if combobox7.text>'' then begin
      if (combobox7.text<>'All') and (combobox7.text<>'CN') and (combobox7.text<>'RX+GG') and (combobox7.text<>'SL+SLPP') then
        sqlstr1:=sqlstr1+' and a.prod_site='''+combobox7.text+''''
      //else if (combobox7.text='All') then
      //  sqlstr1:=sqlstr1+' and a.prod_site in (''SL'',''CL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='CN') then
        sqlstr1:=sqlstr1+' and a.prod_site in (''SL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='RX+GG') then
        sqlstr1:=sqlstr1+' and a.prod_site in (''GG'',''RX'')'
      else if (combobox7.text='SL+SLPP') then
        sqlstr1:=sqlstr1+' and a.prod_site in (''SL'',''SLPP'')';
    end;
    if combobox8.text>'' then sqlstr1:=sqlstr1+' and a.div like '''+combobox8.text+'%''';
    if dateedit1.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',dateedit1.date)+'''';
    if dateedit2.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',dateedit2.date+1)+'''';
    if dateedit3.date>0 then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=0 and c.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',dateedit3.date)+''')';
    if edit1.text>'' then sqlstr1:=sqlstr1+' and a.mex_oe>='+edit1.text;
    if edit2.text>'' then sqlstr1:=sqlstr1+' and a.mex_oe<='+edit2.text;
    if (dateedit4.date>0) or (dateedit5.date>0) then begin
      if dateedit4.date>0 then sqlstr1:=sqlstr1+' and a.act_cmpdt>='''+formatdatetime('yyyy-mm-dd',dateedit4.date)+'''';
      if dateedit5.date>0 then sqlstr1:=sqlstr1+' and a.act_cmpdt<='''+formatdatetime('yyyy-mm-dd',dateedit5.date)+'''';
    end else begin
      if chk3.checked then sqlstr1:=sqlstr1+' and a./*ex_a is not null*/act_exfty=1'
      else sqlstr1:=sqlstr1+' and a./*ex_a is null*/act_exfty=0';
    end;
    if chk5.checked then begin
      sqlstr1:=sqlstr1+' and a.ord_cancel1=''Y''';
      if chk1.checked then sqlstr1:=sqlstr1+' and ((a.workorderno='''') or (a.workorderno is null))';
    end else begin
      sqlstr1:=sqlstr1+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
      if chk1.checked then sqlstr1:=sqlstr1+' and ((a.workorderno='''') or (a.workorderno is null))'
      else sqlstr1:=sqlstr1+' and a.workorderno>''''';
    end;
    if cbb1.text>'' then begin
      if pos('*',cbb1.text)>0 then
        sqlstr1:=sqlstr1+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=1 and c.act_item3='''+copy(cbb1.text,1,3)+''')'
                 +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=1 and act_item3g='''+copy(cbb1.text,1,3)+'''))'
      else sqlstr1:=sqlstr1+' and (exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=0 and c.act_item3='''+cbb1.text+''')'
                    +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+cbb1.text+'''))';
    end;
    if cbb2.text>'' then sqlstr1:=sqlstr1+' and (exists (select c.seq from tbl_carte_sopc3 c,tbl_carte_sopc2 d '
                                                               +'where a.seq=c.seq and a.seq=d.seq and c.seq_i=d.seq_i and c.act_cmp3=0 and d.act_cnt=1 and d.act_issue='''+cbb2.text+''')'
                                                               +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+cbb2.text+'''))';
    {
    if combobox9.text>'' then begin
      if pos('*',combobox9.text)>0 then
        sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=1 and c.act_item3='''+copy(combobox9.text,1,3)+''')'
      else sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 c where a.seq=c.seq and c.act_cmp3=0 and c.act_item3='''+combobox9.text+''')';
    end;
    if combobox10.text>'' then sqlstr1:=sqlstr1+' and exists (select c.seq from tbl_carte_sopc3 c,tbl_carte_sopc2 d '
                                                               +'where a.seq=c.seq and a.seq=d.seq and c.seq_i=d.seq_i and c.act_cmp3=0 and d.act_cnt=1 and d.act_issue='''+combobox10.text+''')';
    }
  custx001.caption:=combobox4.text;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.keycode) as x0,count(distinct a.projectno) as x1,count(distinct a.custpo) as x3,count(distinct a.custstyle) as x4,'
             +'count(distinct a.custcolor) as x6,sum(b.bqty) as x7,count(distinct a.workorderno) as x8,sum(b.q_tqty) as x9,count(distinct b.q1_line) as x10 '
             +'from tbl_carte_sopc1 a left join tbl_carte_sopc4 b on (a.seq=b.seq) where 0=0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      keycode003.caption:=fieldbyname('x0').asstring;
      projectno003.caption:=fieldbyname('x1').asstring;
      //custpo003.caption:=fieldbyname('x3').asstring;
      custstyle003.caption:=fieldbyname('x4').asstring;
      //custcolor003.caption:=fieldbyname('x6').asstring;
      bqty001.caption:=fieldbyname('x7').asstring;
      workorder003.caption:=fieldbyname('x8').asstring;
      q_tqty001.caption:=fieldbyname('x9').asstring;
      p1line001.caption:=fieldbyname('x10').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.custpo) as x6 '
             +'from tbl_carte_sopc1 a left join tbl_carte_sopc4 b on (a.seq=b.seq) where a.custpo>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      custpo003.caption:=fieldbyname('x6').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.custcolor) as x6 '
             +'from tbl_carte_sopc1 a left join tbl_carte_sopc4 b on (a.seq=b.seq) where a.custcolor>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      custcolor003.caption:=fieldbyname('x6').asstring;
    end;
  end;

  //showmessage('1');
  qty1:=0; qn_qty1:=0; qn_qty2:=0; qn_qty3:=0;
  with adoquery3 do begin
    close;
    sql.text:='select distinct a.keycode,a.qty1,b.q1_qty,b.q2_qty,b.q3_qty from tbl_carte_sopc1 a left join tbl_carte_sopc4 b on (a.seq=b.seq) where 0=0';
    sql.text:=sql.text+sqlstr1;
    open;
    first;
    while not eof do begin
      if not fieldbyname('qty1').isnull then
      qty1:=qty1+fieldbyname('qty1').value;
      if not fieldbyname('q1_qty').isnull then
      qn_qty1:=qn_qty1+fieldbyname('q1_qty').value;
      if not fieldbyname('q2_qty').isnull then
      qn_qty2:=qn_qty2+fieldbyname('q2_qty').value;
      if not fieldbyname('q3_qty').isnull then
      qn_qty3:=qn_qty3+fieldbyname('q3_qty').value;
      application.processmessages;
      next;
    end;
    //qty1003.caption:=inttostr(qty1);
    qnqty001.caption:=inttostr(qn_qty1);
    qnqty002.caption:=formatfloat('#0;-#0;''''',qn_qty2);
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where m_start is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      m_starta001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where m_end is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      m_enda001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where fwdt_o is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      fwdt_oa001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where fwdt_a is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      fwdt_aa001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where ((prod_site='''') or (prod_site is null)) and qty1>0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      prod_sitea001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where ((prod_site1='''') or (prod_site1 is null)) and sp_qty>0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      prod_site1a001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where ((line_tno=0) or (line_tno is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      line_tnoa001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where ((custpo='''') or (custpo is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      custpoa001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a where ((qn_tno=0) or (qn_tno is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      qn_tnoa001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<='''+formatdatetime('yyyy/MM/dd',date+7)+''') and fwdt_a is null';
    sql.text:=sql.text+' and (case when fwdt_r is not null then fwdt_r else fwdt_o end>'''+formatdatetime('yyyy/MM/dd',date)+''')';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      fwdt_oxa001.caption:=fieldbyname('x6').asstring;
      if fieldbyname('x6').value>0 then fwdt_oxa001.font.color:=clRed
      else fwdt_oxa001.font.color:=clBlack;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 from tbl_carte_sopc1 a where (case when fwdt_r is not null then fwdt_r else fwdt_o end<='''+formatdatetime('yyyy/MM/dd',date)+''') and fwdt_a is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      fwdt_oxa1001.caption:=fieldbyname('x6').asstring;
      if fieldbyname('x6').value>0 then fwdt_oxa1001.font.color:=clRed
      else fwdt_oxa1001.font.color:=clBlack;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=1 and b.q1_dt1 is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      qn_tnoxa001.caption:=fieldbyname('x6').asstring;
      if fieldbyname('x6').value>0 then qn_tnoxa001.font.color:=clRed
      else qn_tnoxa001.font.color:=clBlack;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=1 and b.q1_dt1 is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      q1_dt1a001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=1 and b.q1_dt2 is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      q1_dt2a001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=2 and b.q2_dt1 is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      q2_dt1a001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=2 and b.q2_dt2 is null';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      q2_dt2a001.caption:=fieldbyname('x6').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=1 and b.q1_dt1<='''+formatdatetime('yyyy-mm-dd',date+7)+''' and b.q1_dt1>'''+formatdatetime('yyyy-mm-dd',date)+''' and b.q1_dt4 is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    //parameters[1].value:=date;
    open;
    if not fieldbyname('x6').isnull then begin
      q1_dt1xa001.caption:=fieldbyname('x6').asstring;
      if fieldbyname('x6').value>0 then q1_dt1xa001.font.color:=clRed
      else q1_dt1xa001.font.color:=clBlack;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=1 and b.q1_dt1<='''+formatdatetime('yyyy-mm-dd',date)+''' and b.q1_dt4 is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date;
    open;
    if not fieldbyname('x6').isnull then begin
      q1_dt1xa1001.caption:=fieldbyname('x6').asstring;
      if fieldbyname('x6').value>0 then q1_dt1xa1001.font.color:=clRed
      else q1_dt1xa1001.font.color:=clBlack;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=2 and b.q2_dt1<='''+formatdatetime('yyyy-mm-dd',date+7)+''' and b.q2_dt1>'''+formatdatetime('yyyy-mm-dd',date)+''' and b.q2_dt4 is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date+7;
    //parameters[1].value:=date;
    open;
    if not fieldbyname('x6').isnull then begin
      q2_dt1xa001.caption:=fieldbyname('x6').asstring;
      if fieldbyname('x6').value>0 then q2_dt1xa001.font.color:=clRed
      else q2_dt1xa001.font.color:=clBlack;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x6 '
             +'from tbl_carte_sopc1 a,tbl_carte_sopc4 b where a.seq=b.seq and a.qn_tno>=2 and b.q2_dt1<='''+formatdatetime('yyyy-mm-dd',date)+''' and b.q2_dt4 is null';
    sql.text:=sql.text+sqlstr1;
    //parameters[0].value:=date;
    open;
    if not fieldbyname('x6').isnull then begin
      q2_dt1xa1001.caption:=fieldbyname('x6').asstring;
      if fieldbyname('x6').value>0 then q2_dt1xa1001.font.color:=clRed
      else q2_dt1xa1001.font.color:=clBlack;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.ppSummaryBand6BeforePrint(Sender: TObject);
begin
  with adoquery1 do begin
    close;
    sql.text:='select count(distinct projectno) as x1,count(distinct custpo) as x2,count(distinct workorderno) as x3,count(distinct custstyle) as x4,count(distinct custcolor) as x5,count(distinct phcolor) as x6 '
             +'from tbl_carte_sopc1 where projectno=:x1';
    parameters[0].value:=adodataset3.fieldbyname('projectno').value;
    open;
    if not fieldbyname('x1').isnull then begin
      prj4002.caption:=fieldbyname('x1').asstring;
      custpo4002.caption:=fieldbyname('x2').asstring;
      wo4002.caption:=fieldbyname('x3').asstring;
      custstyle4002.caption:=fieldbyname('x4').asstring;
      custcolor4002.caption:=fieldbyname('x5').asstring;
      phcolor4002.caption:=fieldbyname('x6').asstring;
    end;
  end;
  percent4002.caption:=formatfloat('#0.00%',ppdbcalc25.value*100.00/ppdbcalc26.value);
  percent4004.caption:=formatfloat('#0.00%',ppdbcalc28.value*(-100.00)/ppdbcalc26.value);
end;

procedure TfrmCarte_Ordprocessing.ppSummaryBand7BeforePrint(Sender: TObject);
var
  sqlstr1:string;
begin
  sqlstr1:='';
    if combobox1.text>'' then sqlstr1:=sqlstr1+' and cgrp='''+combobox1.text+'''';
    if cxcombobox1.text>'' then sqlstr1:=sqlstr1+' and charindex(keycode,'''+cxcombobox1.text+''')>0';
    if combobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(projectno,'''+combobox2.text+''')>0';
    if cxcombobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(booking,'''+cxcombobox2.text+''')>0';
    if combobox4.text>'' then begin
      if combobox4.text<>'All' then
      sqlstr1:=sqlstr1+' and cust='''+combobox4.text+'''';
    end;
    if combobox5.text>'' then sqlstr1:=sqlstr1+' and a.qty1_sp='''+combobox5.text+'''';
    if combobox6.text>'' then sqlstr1:=sqlstr1+' and custstyle='''+combobox6.text+'''';
    if combobox3.text>'' then begin
       if combobox3.text='未開制單' then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))'
       else sqlstr1:=sqlstr1+' and workorderno='''+combobox3.text+'''';
    end;
    if combobox7.text>'' then begin
      if (combobox7.text<>'All') and (combobox7.text<>'CN') and (combobox7.text<>'RX+GG') and (combobox7.text<>'SL+SLPP') then
        sqlstr1:=sqlstr1+' and prod_site='''+combobox7.text+''''
      //else if (combobox7.text='All') then
      //  sqlstr1:=sqlstr1+' and prod_site in (''SL'',''CL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='CN') then
        sqlstr1:=sqlstr1+' and prod_site in (''SL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='RX+GG') then
        sqlstr1:=sqlstr1+' and prod_site in (''GG'',''RX'')'
      else if (combobox7.text='SL+SLPP') then
        sqlstr1:=sqlstr1+' and prod_site in (''SL'',''SLPP'')';
    end;
    if combobox8.text>'' then sqlstr1:=sqlstr1+' and div like '''+combobox8.text+'%''';
    if cbb1.text>'' then begin
      if pos('*',cbb1.text)>0 then
        sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=1 and act_item3='''+copy(cbb1.text,1,3)+''')'
      else sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0 and act_item3='''+cbb1.text+''')';
    end;
    if cbb2.text>'' then sqlstr1:=sqlstr1+' and exists (select b.seq from tbl_carte_sopc2 b,tbl_carte_sopc3 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and c.act_cmp3=0 and b.act_cnt=1 and act_issue='''+cbb2.text+''')';
    if dateedit1.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',dateedit1.date)+'''';
    if dateedit2.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',dateedit2.date+1)+'''';
    if dateedit3.date>0 then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',dateedit3.date)+''')';
    if edit1.text>'' then sqlstr1:=sqlstr1+' and mex_oe>='+edit1.text;
    if edit2.text>'' then sqlstr1:=sqlstr1+' and mex_oe<='+edit2.text;
    if (dateedit4.date>0) or (dateedit5.date>0) then begin
      if dateedit4.date>0 then sqlstr1:=sqlstr1+' and act_cmpdt>='''+formatdatetime('yyyy-mm-dd',dateedit4.date)+'''';
      if dateedit5.date>0 then sqlstr1:=sqlstr1+' and act_cmpdt<='''+formatdatetime('yyyy-mm-dd',dateedit5.date)+'''';
    end else begin
      if chk3.checked then sqlstr1:=sqlstr1+' and /*ex_a is not null*/act_exfty=1'
      else sqlstr1:=sqlstr1+' and /*ex_a is null*/act_exfty=0';
    end;
    if chk4.checked then sqlstr1:=sqlstr1+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0)';
    if chk6.checked then sqlstr1:=sqlstr1+' and ((exists (select seq from tbl_carte_sopc3_grp c where charindex(c.grp_act3g,a.grp_act)>0 and act_cmp3g=0)))';
    if chk5.checked then begin
      sqlstr1:=sqlstr1+' and a.ord_cancel1=''Y''';
      if chk1.checked then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))';
    end else begin
      sqlstr1:=sqlstr1+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
      if chk1.checked then sqlstr1:=sqlstr1+' and ((workorderno is null) or (workorderno=''''))'
      else sqlstr1:=sqlstr1+' and workorderno>''''';
    end;


  with adoquery3 do begin
    close;
    sql.text:='select count(distinct projectno) as x1,count(distinct workorderno) as x2,count(distinct custpo) as x3,count(distinct custstyle) as x4,'
             +'count(distinct phcolor) as x5 from tbl_carte_sopc1 a where 1=1';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prj5001.caption:=fieldbyname('x1').asstring;
      wo5001.caption:=fieldbyname('x2').asstring;
      //custpo5001.caption:=fieldbyname('x3').asstring;
      custstyle5001.caption:=fieldbyname('x4').asstring;
      phcolor5001.caption:=fieldbyname('x5').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct custpo) as x1 from tbl_carte_sopc1 a where custpo>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custpo5001.caption:=fieldbyname('x1').asstring;
    end else custpo5001.caption:='0';
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct custcolor) as x1 from tbl_carte_sopc1 a where custcolor>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      custcolor5001.caption:=fieldbyname('x1').asstring;
    end else custcolor5001.caption:='0';
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((sp_app1='''') or (sp_app1=''N'') or (sp_app1 is null))';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      sp_app5001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      ddt5001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (m_ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      ddt15001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (mcup_ddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mddt5001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (mcup_mddt is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      mddt15001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (fwdt_o is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      fwdto5001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where (ex_o is null)';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      exo5001.caption:=fieldbyname('x1').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where ((prod_site='''') or (prod_site is null)) and qty1>0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      prodsite5001.caption:=fieldbyname('x1').asstring;
    end;
  end;
  with adoquery3 do begin
    close;
    sql.text:='select count(*) as x1 from tbl_carte_sopc1 a where act_item>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      actitem5001.caption:=fieldbyname('x1').asstring;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.ppSummaryBand9BeforePrint(Sender: TObject);
var
  qty1,sp_qty:integer;
  sqlstr1:string;
begin
  sqlstr1:='';
    if combobox1.text>'' then sqlstr1:=sqlstr1+' and a.cgrp='''+combobox1.text+'''';
    if cxcombobox1.text>'' then sqlstr1:=sqlstr1+' and charindex(a.keycode,'''+cxcombobox1.text+''')>0';
    if combobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(a.projectno,'''+combobox2.text+''')>0';
    if cxcombobox2.text>'' then sqlstr1:=sqlstr1+' and charindex(a.booking,'''+cxcombobox2.text+''')>0';
    if combobox4.text>'' then begin
      if combobox4.text<>'All' then
      sqlstr1:=sqlstr1+' and a.cust='''+combobox4.text+'''';
    end;
    if combobox5.text>'' then sqlstr1:=sqlstr1+' and a.qty1_sp='''+combobox5.text+'''';
    if combobox6.text>'' then sqlstr1:=sqlstr1+' and a.custstyle='''+combobox6.text+'''';
    if combobox3.text>'' then begin
       if combobox3.text='未開制單' then sqlstr1:=sqlstr1+' and ((a.workorderno is null) or (a.workorderno=''''))'
       else sqlstr1:=sqlstr1+' and a.workorderno='''+combobox3.text+'''';
    end;
    if combobox7.text>'' then begin
      if (combobox7.text<>'All') and (combobox7.text<>'CN') and (combobox7.text<>'RX+GG') and (combobox7.text<>'SL+SLPP') then
        sqlstr1:=sqlstr1+' and a.prod_site='''+combobox7.text+''''
      //else if (combobox7.text='All') then
      //  sqlstr1:=sqlstr1+' and a.prod_site in (''SL'',''CL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='CN') then
        sqlstr1:=sqlstr1+' and a.prod_site in (''SL'',''GG'',''RX'',''SLPP'')'
      else if (combobox7.text='RX+GG') then
        sqlstr1:=sqlstr1+' and a.prod_site in (''GG'',''RX'')'
      else if (combobox7.text='SL+SLPP') then
        sqlstr1:=sqlstr1+' and a.prod_site in (''SL'',''SLPP'')';
    end;
    if combobox8.text>'' then sqlstr1:=sqlstr1+' and a.div like '''+combobox8.text+'%''';
    if cbb1.text>'' then begin
      if pos('*',cbb1.text)>0 then
        sqlstr1:=sqlstr1+' and b.act_cmp3g=1 and b.act_item3g='''+copy(cbb1.text,1,3)+''''
      else sqlstr1:=sqlstr1+' and b.act_item3g='''+cbb1.text+'''';
    end;
    if pos('Group',rpt_title001.caption)>0 then sqlstr1:=sqlstr1+' and b.grpg=''G'''
    else sqlstr1:=sqlstr1+' and b.grpg=''S''';
    if (cbb2.text>'') and (cbb2.text<>'All') then sqlstr1:=sqlstr1+' and b.act_cmp3g=0 and b.act_issue3g='''+cbb2.text+'''';
    if dateedit1.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',dateedit1.date)+'''';
    if dateedit2.date>0 then sqlstr1:=sqlstr1+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',dateedit2.date+1)+'''';
    if dateedit3.date>0 then sqlstr1:=sqlstr1+' and b.act_cmp3g=0 and b.act_cmpdt3g<='''+formatdatetime('yyyy-mm-dd',dateedit3.date)+'''';
    if edit1.text>'' then sqlstr1:=sqlstr1+' and a.mex_oe>='+edit1.text;
    if edit2.text>'' then sqlstr1:=sqlstr1+' and a.mex_oe<='+edit2.text;
    if (dateedit4.date>0) or (dateedit5.date>0) then begin
      if dateedit4.date>0 then sqlstr1:=sqlstr1+' and a.act_cmpdt>='''+formatdatetime('yyyy-mm-dd',dateedit4.date)+'''';
      if dateedit5.date>0 then sqlstr1:=sqlstr1+' and a.act_cmpdt<='''+formatdatetime('yyyy-mm-dd',dateedit5.date)+'''';
    end else begin
      if chk3.checked then sqlstr1:=sqlstr1+' and a./*ex_a is not null*/act_exfty=1'
      else sqlstr1:=sqlstr1+' and a./*ex_a is null*/act_exfty=0';
    end;
    if chk5.checked then begin
      sqlstr1:=sqlstr1+' and a.ord_cancel1=''Y''';
      if chk1.checked then sqlstr1:=sqlstr1+' and ((a.workorderno='''') or (a.workorderno is null))';
    end else begin
      sqlstr1:=sqlstr1+' and ((a.ord_cancel1='''') or (a.ord_cancel1 is null))';
      if chk1.checked then sqlstr1:=sqlstr1+' and ((a.workorderno='''') or (a.workorderno is null))'
      else sqlstr1:=sqlstr1+' and a.workorderno>''''';
    end;
    if not frmCarte_Reports.checkbox3.checked then sqlstr1:=sqlstr1+' and b.act_cmp3g=0';


  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.keycode) as x0,count(distinct a.projectno) as x1,count(distinct a.custpo) as x3,count(distinct a.custstyle) as x4,'
             +'count(distinct a.custcolor) as x6,count(distinct b.grp_act3g) as x7 from tbl_carte_sopc1 a,tbl_carte_sopc_al b left join tbl_carte_sopc2_grp c on (b.seq3g=c.seq3g) where charindex(b.grp_act3g,a.grp_act)>0';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      keycode6002.caption:=fieldbyname('x0').asstring;
      projectno6002.caption:=fieldbyname('x1').asstring;
      //custpo002.caption:=fieldbyname('x3').asstring;
      custstyle6002.caption:=fieldbyname('x4').asstring;
      //custcolor002.caption:=fieldbyname('x6').asstring;
      item001.caption:=fieldbyname('x7').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.custpo) as x3 from tbl_carte_sopc1 a,tbl_carte_sopc_al b left join tbl_carte_sopc2_grp c on (b.seq3g=c.seq3g) where charindex(b.grp_act3g,a.grp_act)>0 and a.custpo>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x3').isnull then begin
      custpo6002.caption:=fieldbyname('x3').asstring;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct a.custcolor) as x6 from tbl_carte_sopc1 a,tbl_carte_sopc_al b left join tbl_carte_sopc2_grp c on (b.seq3g=c.seq3g) where charindex(b.grp_act3g,a.grp_act)>0 and a.custcolor>''''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x6').isnull then begin
      custcolor6002.caption:=fieldbyname('x6').asstring;
    end;
  end;

  qty1:=0; sp_qty:=0;
  with adoquery3 do begin
    close;
    sql.text:='select distinct a.keycode,a.qty1,a.sp_qty from tbl_carte_sopc1 a,tbl_carte_sopc_al b left join tbl_carte_sopc2_grp c on (b.seq3g=c.seq3g) where charindex(b.grp_act3g,a.grp_act)>0';
    sql.text:=sql.text+sqlstr1;
    open;
    first;
    while not eof do begin
      qty1:=qty1+fieldbyname('qty1').value;
      sp_qty:=sp_qty+fieldbyname('sp_qty').value;
      application.processmessages;
      next;
    end;
    qty6002.caption:=inttostr(qty1);
    sp_qty6002.caption:=inttostr(sp_qty);
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct b.grp_act3g) as x1 from tbl_carte_sopc1 a,tbl_carte_sopc_al b left join tbl_carte_sopc2_grp c on (b.seq3g=c.seq3g) where charindex(b.grp_act3g,a.grp_act)>0 '
             +'and b.act_cmpdt3g<='''+formatdatetime('yyyy/mm/dd',date+1)+''' and b.act_cmpdt3g>'''+formatdatetime('yyyy/mm/dd',date-2)+'''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      itemx001.Caption:=fieldbyname('x1').AsString;
      if fieldbyname('x1').Value>0 then
      itemx001.Font.color:=clRed else itemx001.Font.Color:=clBlack;
    end;
  end;

  with adoquery3 do begin
    close;
    sql.text:='select count(distinct b.grp_act3g) as x1 from tbl_carte_sopc1 a,tbl_carte_sopc_al b left join tbl_carte_sopc2_grp c on (b.seq3g=c.seq3g) where charindex(b.grp_act3g,a.grp_act)>0 '
             +'and b.act_cmpdt3g<='''+formatdatetime('yyyy/mm/dd',date-2)+'''';
    sql.text:=sql.text+sqlstr1;
    open;
    if not fieldbyname('x1').isnull then begin
      itemx002.Caption:=fieldbyname('x1').AsString;
      if fieldbyname('x1').Value>0 then
      itemx002.Font.color:=clRed else itemx002.Font.Color:=clBlack;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.printshipmentbyproject(
  const projectno: string);
begin
  screen.cursor:=crSQLWait;
  try
    with adodataset3 do begin
      close;
      commandtext:='exec sp_carte_logisticsflowdetail_summary :x1';
      parameters[0].value:=projectno;
      open;
    end;
    with adodataset2 do begin
      close;
      commandtext:='exec sp_carte_logisticsflowdetail :x1';
      parameters[0].value:=projectno;
      open;
      if combobox4.text='CRTE' then title4001.caption:='CARTE '
      else title4001.caption:=combobox4.text+' ';
      ppReport4.print;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmCarte_Ordprocessing.PRODRChange(Sender: TField);
begin
  if not adodataset1.fieldbyname('prod_site_r').isnull then begin
    if adodataset1.fieldbyname('prod_site_r').value>'' then begin
      if ((adodataset1.fieldbyname('prod_site').isnull) or (adodataset1.fieldbyname('prod_site').value='')) then begin
        adodataset1.fieldbyname('prod_site').value:=adodataset1.fieldbyname('prod_site_r').value;
      end else begin
        if adodataset1.fieldbyname('prod_site').value<>adodataset1.fieldbyname('prod_site_r').value then begin
          adodataset1.fieldbyname('prod_site_r0').value:='*';
        end;
      end;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.PVHReportlayoutdependentonUSCAHK1Click(
  Sender: TObject);
begin
  if combobox4.text='PVH' then begin
    if adodataset1.active then begin
      with adodataset4 do begin
        close;
        commandtext:=adodataset1.CommandText+' and pvh_dest in (''US'',''CA'',''HK'')';
        if cxgrid1dbbandedtableview1.DataController.Filter.FilterText>'' then
        commandtext:=commandtext+' and '+cxgrid1dbbandedtableview1.DataController.Filter.FilterText;
        open;
        if not fieldbyname('seq').isnull then ppReport7.print;
      end;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.QNNOChange(Sender: TField);
var
  qn_no,qn_no1:integer;
begin
  qn_no:=0; qn_no1:=0;
  if not adodataset1.fieldbyname('qn_no').isnull then qn_no:=adodataset1.fieldbyname('qn_no').value;
  if not adodataset1.fieldbyname('qn_no1').isnull then qn_no1:=adodataset1.fieldbyname('qn_no1').value;
  adodataset1.fieldbyname('qn_tno').value:=qn_no+qn_no1;
end;

procedure TfrmCarte_Ordprocessing.QtyshortChange(Sender: TField);
var
  q_c,q_s,q_d,q_l,q_r,q_d1:integer;
begin
  q_c:=0; q_s:=0; q_d:=0; q_l:=0; q_r:=0; q_d1:=0;
  if not adodataset1.fieldbyname('qty_cutless').isnull then q_c:=adodataset1.fieldbyname('qty_cutless').value;
  if not adodataset1.fieldbyname('qty_sample').isnull then q_s:=adodataset1.fieldbyname('qty_sample').value;
  if not adodataset1.fieldbyname('qty_defect').isnull then q_d:=adodataset1.fieldbyname('qty_defect').value;
  if not adodataset1.fieldbyname('qty_lost').isnull then q_l:=adodataset1.fieldbyname('qty_lost').value;
  if not adodataset1.fieldbyname('qty_rep').isnull then q_r:=adodataset1.fieldbyname('qty_rep').value;
  if not adodataset1.fieldbyname('qty_delay').isnull then q_d1:=adodataset1.fieldbyname('qty_delay').value;
  adodataset1.fieldbyname('qty_short').value:=q_c+q_s+q_d+q_l+q_r+q_d1;
end;

procedure TfrmCarte_Ordprocessing.RefreshdatafromRWO1Click(Sender: TObject);
begin
  //if combobox4.text>'' then begin
  screen.cursor:=crSQLWait;
  try
    with adoquery1 do begin
      close;
      parameters.clear;
      sql.text:='exec sp_carte_refreshdatafmRWO';
      execsql;
    end;
    showmessage('Completed, press Confirm button to refresh/更新完成，請按確定按鈕刷新！');
  finally
    screen.cursor:=crDefault;
  end;
  //end else showmessage('請選擇客戶！');
end;

procedure TfrmCarte_Ordprocessing.RefreshDSeg1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    with adoquery1 do begin
      close;
      parameters.clear;
      sql.text:='exec sp_carte_updaddcriteria ''All''';
      execsql;
    end;
    showmessage('Completed, press Confirm button to refresh/更新完成，請按確定按鈕刷新！');
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmCarte_Ordprocessing.ShowBoldRedvedata1Click(Sender: TObject);
begin
  if chk17.visible=true then chk17.visible:=false
  else if chk17.visible=false then chk17.visible:=true;
end;

procedure TfrmCarte_Ordprocessing.ShowHideCHK151Click(Sender: TObject);
begin
  chk15.visible:=not chk15.visible;
  if (chk15.visible=false) then chk15.checked:=true;
end;

procedure TfrmCarte_Ordprocessing.ShowHideHIJ1Click(Sender: TObject);
begin
  if (chk2.checked) or (chk7.checked) or (chk8.checked) or (chk9.checked) or (chk10.checked) then begin
    cxgrid1dbbandedtableview1.bands[7].visible:=not cxgrid1dbbandedtableview1.bands[7].visible;
    cxgrid1dbbandedtableview1.bands[8].visible:=not cxgrid1dbbandedtableview1.bands[8].visible;
    cxgrid1dbbandedtableview1.bands[9].visible:=not cxgrid1dbbandedtableview1.bands[9].visible;
    cxgrid1dbbandedtableview1.bands[10].visible:=not cxgrid1dbbandedtableview1.bands[10].visible;
  end;
end;

procedure TfrmCarte_Ordprocessing.SHPMRChange(Sender: TField);
begin
  if not adodataset1.fieldbyname('shpm_r').isnull then begin
    if adodataset1.fieldbyname('shpm_r').value>'' then begin
      if adodataset1.fieldbyname('shpm_r').value<>adodataset1.fieldbyname('shpm').value then begin
        adodataset1.fieldbyname('shpm_r0').value:='*';
      end;
    end;
  end;
end;

procedure TfrmCarte_Ordprocessing.UpdateLastPDNDate1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if combobox4.text>'' then begin
    with adoquery1 do begin
      close;
      parameters.clear;
      sql.text:='exec sp_carte_updpdndt_bycust :x1';
      parameters[0].value:='All';//combobox4.text;
      execsql;
    end;
    showmessage('Completed, press confirm button to refresh/更新完成，請按確定按鈕刷新！');
  end else showmessage('Please choose customer/請選擇客戶！');
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmCarte_Ordprocessing.UpdateSewingfacility1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if combobox4.text>'' then begin
    with adoquery1 do begin
      close;
      parameters.clear;
      sql.text:='exec sp_carte_updlineqn_tno_bycust :x1';
      parameters[0].value:=combobox4.text;
      execsql;
    end;
    showmessage('Completed, press Confirm button to refresh/更新完成，請按確定按鈕刷新！');
  end else showmessage('Please choose cusotmer code/請選擇客戶！');
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmCarte_Ordprocessing.UpdateT2T3date1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if adodataset1.active then begin
    with adoquery1 do begin
      close;
      //parameters.clear;
      sql.text:='exec sp_carte_updt2t3dt :x1';
      parameters[0].value:=adodataset1.fieldbyname('projectno').value;//combobox4.text;
      execsql;
    end;
    showmessage('Completed, press Confirm button to refresh/更新完成，請按確定按鈕刷新！');
  end else showmessage('Please choose project#/請選擇工程號！');
  finally
    screen.cursor:=crDefault;
  end;
end;

end.
