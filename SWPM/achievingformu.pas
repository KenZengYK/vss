unit achievingformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DB, DBClient, Grids, DBGridEh, StdCtrls, Buttons, ppCtrls,
  ppVar, ppPrnabl, ppBands, ppCache, ppViewr, Mask, rxToolEdit,
  myChkBox, ppStrtch, ppSubRpt, ppMemo, Menus, GridsEh, dateutils, ADODB,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxControls,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, siComp, ppParameter,
  DBGridEHImpExp, DBGridEh2Excel_Joe, frxClass, frxDBSet, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCheckComboBox;

type
  Tfrmachieving = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    Label4: TLabel;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ComboBox1: TComboBox;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    ComboBox02: TComboBox;
    DBGridEh1: TDBGridEh;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    title01: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel45: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel61: TppLabel;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel81: TppLabel;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLine7: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine22: TppLine;
    ppLabel3: TppLabel;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine3: TppLine;
    ppLine26: TppLine;
    ppLine23: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel20: TppLabel;
    fty001: TppLabel;
    shop001: TppLabel;
    ppLabel24: TppLabel;
    date001: TppLabel;
    ppLabel32: TppLabel;
    ppLine29: TppLine;
    ppLabel49: TppLabel;
    ppLabel53: TppLabel;
    ppLine30: TppLine;
    ppLabel67: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLabel72: TppLabel;
    ppLabel75: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    r01: TppDBText;
    j01: TppDBText;
    r02: TppDBText;
    j02: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText31: TppDBText;
    ppDBText23: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppLabel15: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText32: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    total001: TppLabel;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    opt1: TRadioGroup;
    ppLabel93: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    x002: TppLabel;
    x003: TppLabel;
    title001: TppLabel;
    ppLabel6: TppLabel;
    ppShape10: TppShape;
    ppShape8: TppShape;
    ppShape6: TppShape;
    ppShape12: TppShape;
    ppShape11: TppShape;
    ppShape3: TppShape;
    ppShape13: TppShape;
    ppLine8: TppLine;
    ppLabel85: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLine9: TppLine;
    ppLabel88: TppLabel;
    ppLine34: TppLine;
    ppShape14: TppShape;
    ppDBText1: TppDBText;
    Query4: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppLine35: TppLine;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText36: TppDBText;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppLabel94: TppLabel;
    eff2002: TppLabel;
    ppLabel95: TppLabel;
    Query5: TClientDataSet;
    date1001: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel14: TppLabel;
    ppLine20: TppLine;
    ppLabel28: TppLabel;
    ppLabel71: TppLabel;
    ppDBText2: TppDBText;
    ppDBCalc19: TppDBCalc;
    ppLabel13: TppLabel;
    ppLabel63: TppLabel;
    dbxl01: TppLabel;
    dbxl02: TppLabel;
    ppLabel73: TppLabel;
    lstr01: TppLabel;
    trs01: TppLabel;
    sjrs101: TppLabel;
    sjrs201: TppLabel;
    sjrs01: TppLabel;
    sjyc01: TppLabel;
    ppDBText24: TppDBText;
    ppLine1: TppLine;
    ppDBText26: TppDBText;
    ppDBText38: TppDBText;
    ppLabel74: TppLabel;
    ppLabel76: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    BitBtn5: TBitBtn;
    Query6: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    ppShape7: TppShape;
    ppMemo1: TppMemo;
    ppLine21: TppLine;
    ppLabel99: TppLabel;
    pcflag1: TppLabel;
    scqty01: TppLabel;
    bal001: TppLabel;
    ppLine36: TppLine;
    BitBtn6: TBitBtn;
    Query7: TClientDataSet;
    DataSource4: TDataSource;
    ppDBPipeline4: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    imgtitle001: TppLabel;
    ppLabel101: TppLabel;
    tplant002: TppLabel;
    y01: TppLabel;
    tshop002: TppLabel;
    ppLabel103: TppLabel;
    date002: TppLabel;
    ppLabel104: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel105: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppShape9: TppShape;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppImage1: TppImage;
    ppDBText33: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppImage2: TppImage;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    PopupMenu1: TPopupMenu;
    WIPStylesImageIllustration1: TMenuItem;
    ppDBMemo1: TppDBMemo;
    ppLine11: TppLine;
    ppLabel7: TppLabel;
    ppLabel43: TppLabel;
    ppDBText15: TppDBText;
    ppLabel44: TppLabel;
    ppLine13: TppLine;
    ppLine37: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ttl002: TppLabel;
    peff001: TppLabel;
    ppShape4: TppShape;
    ppMemo2: TppMemo;
    BitBtn7: TBitBtn;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape5: TppShape;
    ppMemo3: TppMemo;
    phase001: TppLabel;
    ppShape15: TppShape;
    y0001: TppLabel;
    y0002: TppDBText;
    ppLabel48: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel50: TppLabel;
    ppLabel80: TppLabel;
    tplant003: TppLabel;
    ppLabel116: TppLabel;
    date003: TppLabel;
    ppLabel118: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel119: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppShape16: TppShape;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText37: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppDBText50: TppDBText;
    ppImage4: TppImage;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppLabel100: TppLabel;
    ppDBText16: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ttlqty001: TppLabel;
    ppShape17: TppShape;
    ttl001: TppLabel;
    ppShape18: TppShape;
    ppSummaryBand4: TppSummaryBand;
    ppShape19: TppShape;
    ttl003: TppLabel;
    ppShape20: TppShape;
    ppMemo4: TppMemo;
    ppShape21: TppShape;
    ppMemo5: TppMemo;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLabel89: TppLabel;
    ppDBText45: TppDBText;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLine60: TppLine;
    ppLine54: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppImage3: TppImage;
    lflag01: TppLabel;
    ppImage5: TppImage;
    BitBtn8: TBitBtn;
    ppLabel98: TppLabel;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    x0001: TppLabel;
    x0002: TppLabel;
    Query8: TClientDataSet;
    DataSource5: TDataSource;
    ksjs1001: TppLabel;
    lst1001: TppLabel;
    ppLine55: TppLine;
    ppLine61: TppLine;
    ppLabel29: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    prj001: TppLabel;
    prj002: TppLabel;
    xttl02: TppLabel;
    ppLine5: TppLine;
    ppLabel30: TppLabel;
    prj003: TppLabel;
    ppShape23: TppShape;
    ppLabel31: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    lflag1001: TppLabel;
    lflag1002: TppLabel;
    lflag1003: TppLabel;
    ppDBText7: TppDBText;
    x005: TppLabel;
    ppLabel39: TppLabel;
    lflag1004: TppLabel;
    ppLabel42: TppLabel;
    wkno01: TppLabel;
    ppLabel90: TppLabel;
    ppLabel62: TppLabel;
    Label3: TLabel;
    linex01: TppLabel;
    line001: TppLabel;
    DateEdit2: TDateEdit;
    Edit2: TEdit;
    Query10: TClientDataSet;
    PDFFILES1: TMenuItem;
    ClientDataSet2: TClientDataSet;
    DataSet2: TADOQuery;
    conf001: TppLabel;
    ReviewWAveLineEff1: TMenuItem;
    ROQuery1: TClientDataSet;
    BitBtn9: TBitBtn;
    lbl850: TLabel;
    Query1PLINE: TWideStringField;
    Query1SEQ: TIntegerField;
    Query1DSEQ: TIntegerField;
    Query1DATE1: TDateField;
    Query1SHJS: TFloatField;
    Query1ZKTD: TFloatField;
    Query1SCLHJS: TFloatField;
    Query1QYJS: TFloatField;
    Query1FLAG: TWideStringField;
    Query1SJRS: TFloatField;
    Query1SJYC: TFloatField;
    Query1SJRS1: TFloatField;
    Query1SJRS2: TFloatField;
    Query1PQTY: TFloatField;
    Query1AQTY: TFloatField;
    Query1DIFF: TFloatField;
    Query1AQTY1: TFloatField;
    Query1EOT: TFloatField;
    Query1EFF1: TFloatField;
    Query1EFF2: TFloatField;
    Query1XJS: TFloatField;
    Query1PSECT: TFloatField;
    Query1CSTYLE: TWideStringField;
    Query1J2_JOB: TWideStringField;
    Query1RWO: TWideStringField;
    Query1LSTR: TFloatField;
    Query1KSJS: TFloatField;
    Query1ZHJS: TFloatField;
    Query1LFLAG: TWideStringField;
    Query1TPLANT: TWideStringField;
    Query1TSHOP: TWideStringField;
    Query1DT1: TDateField;
    Query1CSECT: TFloatField;
    Query1DBXL: TFloatField;
    Query1J_NO: TWideStringField;
    Query1FCCS: TWideStringField;
    Query1ACOL: TWideStringField;
    Query1SCQTY: TIntegerField;
    Query1FLAG3: TWideStringField;
    Query1FLAG6: TWideStringField;
    Query1FLAGS: TWideStringField;
    Query1CFM: TBooleanField;
    Query1LST: TWideStringField;
    Query1DFLAG: TWideStringField;
    Query1MARKS: TWideStringField;
    Query1DSECT: TFloatField;
    Query1LFLAG1: TFloatField;
    Query1TRS: TFloatField;
    Query1CEOT: TFloatField;
    Query1PQTY1: TFloatField;
    Query1MPSECT: TFloatField;
    Query1PEFF: TFloatField;
    Query1LST1: TWideStringField;
    Query1KSJS1: TFloatField;
    Query1MWFLB: TFloatField;
    Query1MWFS: TFloatField;
    Query1MWFA: TFloatField;
    Query1MWFAC: TFloatField;
    Query1MWFBN: TFloatField;
    Query1GSDMBN: TFloatField;
    Query1RFIDP: TWideStringField;
    Query1MWFSC: TFloatField;
    Query1MWFLBC: TFloatField;
    Query1MWFBNC: TFloatField;
    Query1PRJ1: TFloatField;
    Query1PRJ2: TFloatField;
    Query1PRJ3: TFloatField;
    Query1PRJ4: TFloatField;
    Query1AQTY_SP: TFloatField;
    Query1AQTY1_SP: TFloatField;
    Query1DIFF_SP: TFloatField;
    Query1DBXL_SP: TFloatField;
    Query1EFF2_SP: TFloatField;
    Query1SJRS3: TFloatField;
    Query1CSECT_SP: TFloatField;
    Query1CEOT_SP: TFloatField;
    Edit1: TComboBox;
    Query1MANTBL: TIntegerField;
    Query1AWF: TFloatField;
    Query1EWF: TFloatField;
    Query1ASAH: TFloatField;
    Query1ESAH: TFloatField;
    Query1GZW: TIntegerField;
    Query1SGT: TIntegerField;
    ExporttoExcel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Query1ACT_POSTBOX: TIntegerField;
    Query1YHBH: TWideStringField;
    Query1TTL_JS: TFloatField;
    Query1CSECT_DIFF: TFloatField;
    Query1YH1: TFloatField;
    Query1BH1: TFloatField;
    Query1BH2: TFloatField;
    Query1BH3: TFloatField;
    Query1ALXJS: TFloatField;
    Query1EXJS: TFloatField;
    Query1CWO: TWideStringField;
    Query1QNF: TWideStringField;
    Query1QNPC: TWideStringField;
    Query1QNC: TWideStringField;
    Query1XLBX: TFloatField;
    Query1XLBX_LJ: TFloatField;
    Query1YCBX: TFloatField;
    Query1YCBX_LJ: TFloatField;
    Query1DBL: TFloatField;
    Query1IECLS: TWideStringField;
    Query1TMU: TFloatField;
    Query1PFSAH: TFloatField;
    Query1PFXJS: TFloatField;
    Query1RSXC: TFloatField;
    Query1DSZJ_RS: TFloatField;
    Query1DSZJ_SJ: TFloatField;
    Query1SDT: TDateField;
    Query1ZDT: TDateField;
    Query1XLBX_LJ1: TFloatField;
    Query1YCBX_LJ1: TFloatField;
    RefreshGAI1: TMenuItem;
    Query1PPCCFM: TBooleanField;
    Label6: TLabel;
    Label7: TLabel;
    Query1SJSHL: TFloatField;
    Query1MPSECT_SP: TFloatField;
    Query1PQTY0: TIntegerField;
    Query1ZYCBX: TFloatField;
    Query1ZYCBX_LJ: TFloatField;
    Query1ZYCBX_LJ1: TFloatField;
    Query1EOT_SP: TFloatField;
    Query1PRJ1_SP: TFloatField;
    Query1DBL_SP: TFloatField;
    Query1MARKS_SP: TWideStringField;
    Query1GSL1: TFloatField;
    Query1GSL1_SP: TFloatField;
    Query1TBU: TFloatField;
    Query1EFF3_SP: TFloatField;
    Query1EFF3: TFloatField;
    Query1XLBX_SP: TFloatField;
    Query1XLBX_LJ_SP: TFloatField;
    Query1XLBX_LJ1_SP: TFloatField;
    Query1YCBX_SP: TFloatField;
    Query1YCBX_LJ_SP: TFloatField;
    Query1YCBX_LJ1_SP: TFloatField;
    Query1ZYCBX_SP: TFloatField;
    Query1ZYCBX_LJ_SP: TFloatField;
    Query1ZYCBX_LJ1_SP: TFloatField;
    Query1CFM1: TBooleanField;
    GroupBox1: TGroupBox;
    xh0: TRadioButton;
    xh3: TRadioButton;
    xh1: TRadioButton;
    xh2: TRadioButton;
    ppReport4: TppReport;
    ppDBPipeline5: TppDBPipeline;
    ppParameterList4: TppParameterList;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    title_001: TppLabel;
    ppLabel60: TppLabel;
    ppLabel65: TppLabel;
    ppLabel68: TppLabel;
    ppDBText12: TppDBText;
    ppLabel102: TppLabel;
    wk001: TppLabel;
    ppLabel117: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel122: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppShape22: TppShape;
    ppLabel127: TppLabel;
    ppDBText13: TppDBText;
    ppLabel129: TppLabel;
    ppDBText11: TppDBText;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppDBText14: TppDBText;
    ppShape24: TppShape;
    ppLabel132: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine6: TppLine;
    ppLine40: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine69: TppLine;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLine70: TppLine;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppDBText48: TppDBText;
    ppLine81: TppLine;
    ws001: TppLabel;
    ppLabel148: TppLabel;
    ppLabel151: TppLabel;
    ppLine82: TppLine;
    ppDBText49: TppDBText;
    ppLine83: TppLine;
    ppLabel153: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLine85: TppLine;
    ppDBText51: TppDBText;
    ppLabel159: TppLabel;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppDBText53: TppDBText;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppDBText54: TppDBText;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppDBText55: TppDBText;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppDBText56: TppDBText;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppSummaryBand5: TppSummaryBand;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLine97: TppLine;
    ppLabel177: TppLabel;
    ppDBText58: TppDBText;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLabel178: TppLabel;
    ppLine103: TppLine;
    ppDBText59: TppDBText;
    ppLine104: TppLine;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppDBText60: TppDBText;
    ppLine105: TppLine;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppDBText61: TppDBText;
    ppLine108: TppLine;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppDBText62: TppDBText;
    ppLine109: TppLine;
    ppLabel190: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLine110: TppLine;
    ppDBText63: TppDBText;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppDBText64: TppDBText;
    ppLine114: TppLine;
    ppLine115: TppLine;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppLine120: TppLine;
    ppLine121: TppLine;
    ppLine122: TppLine;
    ppLabel199: TppLabel;
    ppLabel202: TppLabel;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppLine123: TppLine;
    ppLine128: TppLine;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppLabel209: TppLabel;
    ppDBText70: TppDBText;
    ppLine129: TppLine;
    ppLine130: TppLine;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel213: TppLabel;
    ppDBText72: TppDBText;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLine136: TppLine;
    ppLabel214: TppLabel;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppDBText57: TppDBText;
    ppLabel176: TppLabel;
    ppLine102: TppLine;
    ppLabel218: TppLabel;
    ppLabel219: TppLabel;
    dbl001: TppDBText;
    ppLine135: TppLine;
    ppLine139: TppLine;
    ppLabel220: TppLabel;
    ppLabel221: TppLabel;
    ppLine140: TppLine;
    ppLabel222: TppLabel;
    ppLabel223: TppLabel;
    ppLabel226: TppLabel;
    ppLine141: TppLine;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    myDBCheckBox3: TmyDBCheckBox;
    ppLine142: TppLine;
    ppLabel229: TppLabel;
    ppLine143: TppLine;
    ppLine144: TppLine;
    ppLabel230: TppLabel;
    ppLine145: TppLine;
    myDBCheckBox4: TmyDBCheckBox;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppLabel235: TppLabel;
    ppLabel236: TppLabel;
    ppDBText74: TppDBText;
    sjrs001: TppDBText;
    sjrs002: TppDBText;
    ppLabel238: TppLabel;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppLine148: TppLine;
    ppLine150: TppLine;
    ppLine152: TppLine;
    ppLabel239: TppLabel;
    ppLabel241: TppLabel;
    ppLabel243: TppLabel;
    ppLabel244: TppLabel;
    ppLabel212: TppLabel;
    ppLabel215: TppLabel;
    ppLine155: TppLine;
    ppDBText71: TppDBText;
    ppLabel216: TppLabel;
    ppShape25: TppShape;
    ppLine98: TppLine;
    zl001: TppLabel;
    zpj001: TppLabel;
    ppLine134: TppLine;
    zjb001: TppLabel;
    zqn001: TppLabel;
    zstyle001: TppLabel;
    zm001: TppLabel;
    zp001: TppLabel;
    zsqty001: TppLabel;
    zpqty001: TppLabel;
    zmqty001: TppLabel;
    zeot001: TppLabel;
    zcsect001: TppLabel;
    zsjsh001: TppLabel;
    zr001: TppLabel;
    zx001: TppLabel;
    zprj001: TppLabel;
    zaqty001: TppLabel;
    zawf001: TppLabel;
    zsjrs001: TppLabel;
    ppLine156: TppLine;
    ppLine157: TppLine;
    ppLine158: TppLine;
    ppLine159: TppLine;
    ppLine160: TppLine;
    ppLabel217: TppLabel;
    ppLine161: TppLine;
    ppLine162: TppLine;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppLabel245: TppLabel;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLabel246: TppLabel;
    zppc001: TppLabel;
    zswd001: TppLabel;
    zws001: TppLabel;
    plant001: TppLabel;
    zdbl001: TppLabel;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppShape29: TppShape;
    Query1ALRS: TFloatField;
    ppReport5: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppShape30: TppShape;
    title_002: TppLabel;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppDBText8: TppDBText;
    ppLabel251: TppLabel;
    wk002: TppLabel;
    ppLabel253: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppLabel254: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppLabel258: TppLabel;
    ppLine168: TppLine;
    ppLine177: TppLine;
    ws002: TppLabel;
    ppLine179: TppLine;
    ppLine185: TppLine;
    plant002: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppShape35: TppShape;
    ppFooterBand5: TppFooterBand;
    ppSummaryBand6: TppSummaryBand;
    ppLabel373: TppLabel;
    ppLabel374: TppLabel;
    ppLabel375: TppLabel;
    ppLine263: TppLine;
    ppLine264: TppLine;
    ppLine265: TppLine;
    ppLine269: TppLine;
    ppParameterList5: TppParameterList;
    ppLabel252: TppLabel;
    ppLabel255: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppLine166: TppLine;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppLine167: TppLine;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppLabel266: TppLabel;
    ppLine169: TppLine;
    ppLabel267: TppLabel;
    ppLabel268: TppLabel;
    ppLabel269: TppLabel;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppLabel272: TppLabel;
    ppLabel273: TppLabel;
    ppLine170: TppLine;
    ppLabel274: TppLabel;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    ppLabel277: TppLabel;
    ppLabel278: TppLabel;
    ppLabel279: TppLabel;
    ppLabel280: TppLabel;
    ppLine171: TppLine;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppLabel259: TppLabel;
    ppLine165: TppLine;
    ppLine172: TppLine;
    ppLine173: TppLine;
    ppLine174: TppLine;
    ppLine175: TppLine;
    ppLine176: TppLine;
    ppLabel281: TppLabel;
    ppLabel282: TppLabel;
    ppLabel283: TppLabel;
    ppLine178: TppLine;
    ppLabel284: TppLabel;
    ppLabel285: TppLabel;
    ppLabel286: TppLabel;
    ppLabel287: TppLabel;
    ppLine180: TppLine;
    ppLabel288: TppLabel;
    ppLabel289: TppLabel;
    ppLabel290: TppLabel;
    ppLine181: TppLine;
    ppLabel291: TppLabel;
    ppLabel293: TppLabel;
    ppLabel294: TppLabel;
    ppLabel295: TppLabel;
    ppLine182: TppLine;
    ppLabel292: TppLabel;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppLine183: TppLine;
    ppLine184: TppLine;
    ppLine186: TppLine;
    ppLine187: TppLine;
    ppLine188: TppLine;
    ppLine189: TppLine;
    ppLine190: TppLine;
    ppLine191: TppLine;
    ppLine192: TppLine;
    ppLine193: TppLine;
    ppLine194: TppLine;
    ppLine195: TppLine;
    ppLine196: TppLine;
    ppLine197: TppLine;
    ppLine198: TppLine;
    ppLine199: TppLine;
    ppLine200: TppLine;
    ppLine201: TppLine;
    ppLine202: TppLine;
    ppLine203: TppLine;
    ppLine204: TppLine;
    ppLine205: TppLine;
    ppLine206: TppLine;
    ppLine207: TppLine;
    ppLine208: TppLine;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppLabel300: TppLabel;
    ppLabel301: TppLabel;
    ppLabel302: TppLabel;
    ppLabel303: TppLabel;
    ppLabel304: TppLabel;
    ppLabel305: TppLabel;
    ppLabel306: TppLabel;
    ppLabel307: TppLabel;
    ppLine209: TppLine;
    ppLine210: TppLine;
    ppLine211: TppLine;
    ppLabel308: TppLabel;
    ppLine212: TppLine;
    ppLine213: TppLine;
    ppLine214: TppLine;
    ppLine215: TppLine;
    ppLabel310: TppLabel;
    ppLabel312: TppLabel;
    ppLine217: TppLine;
    ppLine218: TppLine;
    ppLine219: TppLine;
    ppLine220: TppLine;
    ppDBText99: TppDBText;
    BitBtn10: TBitBtn;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppLine222: TppLine;
    ppLine223: TppLine;
    ppLine224: TppLine;
    ppLine225: TppLine;
    ppLabel313: TppLabel;
    ppLabel315: TppLabel;
    ppLabel316: TppLabel;
    ppLabel317: TppLabel;
    ppLabel318: TppLabel;
    ppLabel328: TppLabel;
    ppLine228: TppLine;
    ppLine229: TppLine;
    ppLine230: TppLine;
    ppLine231: TppLine;
    ppLine232: TppLine;
    ppLine236: TppLine;
    ppLine237: TppLine;
    ppLine238: TppLine;
    ppLabel329: TppLabel;
    ppLine239: TppLine;
    ppLine240: TppLine;
    ppDBText113: TppDBText;
    ppShape31: TppShape;
    zjb002: TppLabel;
    zl002: TppLabel;
    zpj002: TppLabel;
    zr002: TppLabel;
    zeff1002: TppLabel;
    zstyle002: TppLabel;
    zprj4002: TppLabel;
    zeff2002: TppLabel;
    zeff3002: TppLabel;
    ppLabel330: TppLabel;
    ppLine216: TppLine;
    ppDBText104: TppDBText;
    ppDBText114: TppDBText;
    ppLabel309: TppLabel;
    ppLabel311: TppLabel;
    ppLabel331: TppLabel;
    ppLabel332: TppLabel;
    ppLabel333: TppLabel;
    ppLine221: TppLine;
    ppLine241: TppLine;
    ppLine242: TppLine;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppLabel334: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand7: TppDetailBand;
    ppSummaryBand7: TppSummaryBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand8: TppDetailBand;
    ppSummaryBand8: TppSummaryBand;
    ppDBPipeline7: TppDBPipeline;
    ppLine243: TppLine;
    ppMemo6: TppMemo;
    ppShape36: TppShape;
    ppDBText115: TppDBText;
    ppLabel335: TppLabel;
    ppDBText116: TppDBText;
    Query1QNSEQ1: TWideStringField;
    ppColumnHeaderBand3: TppColumnHeaderBand;
    ppColumnFooterBand3: TppColumnFooterBand;
    ppDBMemo2: TppDBMemo;
    ppLine244: TppLine;
    ppLine245: TppLine;
    ppLabel336: TppLabel;
    ppLabel337: TppLabel;
    ppDBText117: TppDBText;
    Query1marks_sp_wip: TBooleanField;
    Query1marks_sp_cmp: TBooleanField;
    Query1muser: TWideStringField;
    tawf001: TppLabel;
    tsjrs001: TppLabel;
    ComboBox2: TcxCheckComboBox;
    Query9: TClientDataSet;
    DataSource6: TDataSource;
    ppDBPipeline6: TppDBPipeline;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand9: TppDetailBand;
    ppSummaryBand9: TppSummaryBand;
    ppLabel338: TppLabel;
    ppColumnHeaderBand4: TppColumnHeaderBand;
    ppColumnFooterBand4: TppColumnFooterBand;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    GAISummaryforAnalysis1: TMenuItem;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ppLabel339: TppLabel;
    ppLabel340: TppLabel;
    xc001: TppLabel;
    xc002: TppLabel;
    siLang1: TsiLang;
    lflag1_01: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLabel205: TppLabel;
    ppLabel206: TppLabel;
    Query1CWO_N: TWideStringField;
    ppLabel128: TppLabel;
    Label12: TLabel;
    Query1SAH_B: TFloatField;
    Query1SAH_BQ: TFloatField;
    ppDBText52: TppDBText;
    ppDBText73: TppDBText;
    Label13: TLabel;
    Label14: TLabel;
    Query1SJSHL1: TWideStringField;
    Query1QNSEQ: TWideStringField;
    Query1D_SECT: TFloatField;
    Query1D_SECT_SP: TFloatField;
    ppLabel1: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure QuerySCLHJSChange(Sender: TField);
    procedure ComboBox1Change(Sender: TObject);
    procedure Query1SJRS1Change(Sender: TField);
    procedure Query1AQTYChange(Sender: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure DBGridEh1TitleClick(Column: TColumnEh);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1Columns13EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns21EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns8EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure WIPStylesImageIllustration1Click(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure DBGridEh1Columns35EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BitBtn6Click(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand4BeforePrint(Sender: TObject);
    procedure ppReport3PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppSummaryBand4BeforePrint(Sender: TObject);
    procedure DBGridEh1Columns32EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure Query1MWFLBChange(Sender: TField);
    procedure BitBtn8Click(Sender: TObject);
    procedure temp_flag;
    procedure temp_flag1;
    procedure PDFFILES1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Query1CFMChange(Sender: TField);
    procedure ReviewWAveLineEff1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ComboBox02Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ComboBox02Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure ExporttoExcel1Click(Sender: TObject);
    procedure RefreshGAI1Click(Sender: TObject);
    procedure DBGridEh1Columns39EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure ppReport4PreviewFormCreate(Sender: TObject);
    procedure Query1AQTY_SPChange(Sender: TField);
    procedure ppSummaryBand5BeforePrint(Sender: TObject);
    procedure ppReport5PreviewFormCreate(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure ppTitleBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand7BeforePrint(Sender: TObject);
    procedure ComboBox2Enter(Sender: TObject);
    procedure ComboBox2PropertiesChange(Sender: TObject);
    procedure ppSummaryBand6BeforePrint(Sender: TObject);
    procedure GAISummaryforAnalysis1Click(Sender: TObject);
    procedure Query1ALRSChange(Sender: TField);
    procedure Query1BeforePost(DataSet: TDataSet);
    procedure ppDetailBand5BeforePrint(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetCorrectDate(const Fty: string; DT: TDateTime);
  end;

var
  frmachieving: Tfrmachieving;
  vcol,vstyle:string;
  tm1:tdatetime;
  logseq:integer;

implementation

uses mainformu, flagformu, ganoteformu, ttlcshformu, zktdformu, lwoformu,
  trsummaryformu, nextdayformu, wipimgformu, esewnformu, wnoteformu,
  fgaiformu, fstyleimgformu, rsycformu, qnwkfformu, pdfgaiformu,
  ganotepadformu, ganotepad_engformu, qneffformu, gai_notepad_chnformu,
  gai_notepad_engformu, zktd_wfformu, ttlcsh1formu, gaisummaryformu, achieving_enformu,
  GAI_ActionlogFormu;

{$R *.dfm}

procedure Tfrmachieving.Query1AfterPost(DataSet: TDataSet);
var
  x1,x2,x3,x4,x5,x6,bs,lh,xl,bb,yb,wb:double;
  ors,oyc,ers,ttlrs,pfrs:double;
  dt1:tdate;
  pstr:string;
  str1:string;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftfloat,'x1',ptinput);
      params.createparam(ftfloat,'x2',ptinput);
      params.createparam(ftfloat,'x6',ptinput);
      params.createparam(ftfloat,'x7',ptinput);
      params.createparam(ftfloat,'x8',ptinput);
      params.createparam(ftfloat,'x9',ptinput);
      params.createparam(ftfloat,'x10',ptinput);
      params.createparam(ftfloat,'x11',ptinput);
      params.createparam(ftfloat,'x12',ptinput);
      params.createparam(ftfloat,'x13',ptinput);
      params.createparam(ftfloat,'x14',ptinput);
      params.createparam(ftfloat,'x15',ptinput);
      params.createparam(ftfloat,'x16',ptinput);
      params.createparam(ftfloat,'x17',ptinput);
      params.createparam(ftfloat,'x18',ptinput);
      params.createparam(ftfloat,'x19',ptinput);
      params.createparam(ftdate,'x20',ptinput);
      params.createparam(ftfloat,'x21',ptinput);
      params.createparam(ftboolean,'x22',ptinput);
      params.createparam(ftstring,'x23',ptinput);
      params.createparam(ftfloat,'x25',ptinput);
      params.createparam(ftfloat,'x26',ptinput);
      params.createparam(ftfloat,'x27',ptinput);
      params.createparam(ftfloat,'x28',ptinput);
      params.createparam(ftfloat,'x29',ptinput);
      params.createparam(ftfloat,'x30',ptinput);
      params.createparam(ftfloat,'x31',ptinput);
      params.createparam(ftfloat,'x32',ptinput);
      params.createparam(ftfloat,'x33',ptinput);
      params.createparam(ftfloat,'x34',ptinput);
      params.createparam(ftfloat,'x35',ptinput);
      params.createparam(ftfloat,'x36',ptinput);
      params.createparam(ftfloat,'x37',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      commandtext:='update line_shjs set zktd=:x1,sclhjs=:x2,qyjs=:x6,sjrs1=:x7,sjrs2=:x8,sjrs=:x9,sjyc=:x10,pqty=:x11,aqty=:x12,diff=:x13,'
                  +'eot=:x14,aqty1=:x15,eff1=:x16,eff2=:x17,zhjs=:x18,dbxl=:x19,dt1=:x20,csect=:x21,cfm=:x22,dflag=:x23,ceot=:x25,'//marks=:x24,ceot=:x25,'
                  +'mwflb=:x26,mwfs=:x27,mwfa=:x28,mwfac=:x29,mwfbn=:x30,gsdmbn=:x31,aqty_sp=:x32,aqty1_sp=:x33,diff_sp=:x34,dbxl_sp=:x35,eff2_sp=:x36,sjrs3=:x37 '
                  +'where pline=:x3 and seq=:x4 and dseq=:x5';
      if not query1.fieldbyname('zktd').isnull then
      params[0].asfloat:=query1.fieldbyname('zktd').value
      else params[0].asfloat:=0;
      if not query1.fieldbyname('sclhjs').isnull then
      params[1].asfloat:=query1.fieldbyname('sclhjs').value
      else params[1].asfloat:=0;
      if not query1.fieldbyname('qyjs').IsNull then
      params[2].asfloat:=query1.fieldbyname('qyjs').value
      else params[2].asfloat:=0;
      params[3].asfloat:=query1.fieldbyname('sjrs1').value;
      params[4].asfloat:=query1.fieldbyname('sjrs2').value;
      params[5].asfloat:=query1.fieldbyname('sjrs').value;
      params[6].asfloat:=query1.fieldbyname('sjyc').value;
      params[7].asfloat:=query1.fieldbyname('pqty').value;
      params[8].asfloat:=query1.fieldbyname('aqty').value;
      params[9].asfloat:=query1.fieldbyname('diff').value;
      if not query1.fieldbyname('eot').isnull then
      params[10].asfloat:=query1.fieldbyname('eot').value
      else params[10].asfloat:=0;
      if not query1.fieldbyname('aqty1').isnull then
      params[11].asfloat:=query1.fieldbyname('aqty1').value
      else params[11].asfloat:=0;
      params[12].asfloat:=query1.fieldbyname('eff1').value;
      params[13].asfloat:=query1.fieldbyname('eff2').value;
      if not query1.fieldbyname('zhjs').isnull then
      params[14].asfloat:=query1.fieldbyname('zhjs').value
      else params[14].asfloat:=0;
      if not query1.fieldbyname('dbxl').isnull then
      params[15].asfloat:=query1.fieldbyname('dbxl').value
      else params[15].asfloat:=0;
      if not query1.fieldbyname('dt1').isnull then
      params[16].asdate:=query1.fieldbyname('dt1').value;
      if not query1.fieldbyname('csect').isnull then
      params[17].asfloat:=query1.fieldbyname('csect').value
      else params[17].asfloat:=0;
      if not query1.fieldbyname('cfm').isnull then
      params[18].asboolean:=query1.fieldbyname('cfm').value
      else params[18].asboolean:=false;
      if not query1.fieldbyname('dflag').isnull then
      params[19].asstring:=query1.fieldbyname('dflag').value
      else params[19].asstring:='';
      if not query1.fieldbyname('ceot').isnull then
      params[20].asfloat:=query1.fieldbyname('ceot').value
      else params[20].asfloat:=0;
      if not query1.fieldbyname('mwflb').isnull then
      params[21].asfloat:=query1.fieldbyname('mwflb').value
      else params[21].asfloat:=0;
      if not query1.fieldbyname('mwfs').isnull then
      params[22].asfloat:=query1.fieldbyname('mwfs').value
      else params[22].asfloat:=0;
      if not query1.fieldbyname('mwfa').isnull then
      params[23].asfloat:=query1.fieldbyname('mwfa').value
      else params[23].asfloat:=0;
      if not query1.fieldbyname('mwfac').isnull then
      params[24].asfloat:=query1.fieldbyname('mwfac').value
      else params[24].asfloat:=0;
      if not query1.fieldbyname('mwfbn').isnull then
      params[25].asfloat:=query1.fieldbyname('mwfbn').value
      else params[25].asfloat:=0;
      if not query1.fieldbyname('gsdmbn').isnull then
      params[26].asfloat:=query1.fieldbyname('gsdmbn').value
      else params[26].asfloat:=0;
      if not query1.fieldbyname('aqty_sp').isnull then
      params[27].asfloat:=query1.fieldbyname('aqty_sp').value
      else params[27].asfloat:=0;
      if not query1.fieldbyname('aqty1_sp').isnull then
      params[28].asfloat:=query1.fieldbyname('aqty1_sp').value
      else params[28].asfloat:=0;
      if not query1.fieldbyname('diff_sp').isnull then
      params[29].asfloat:=query1.fieldbyname('diff_sp').value
      else params[29].asfloat:=0;
      if not query1.fieldbyname('dbxl_sp').isnull then
      params[30].asfloat:=query1.fieldbyname('dbxl_sp').value
      else params[30].asfloat:=0;
      if not query1.fieldbyname('eff2_sp').isnull then
      params[31].asfloat:=query1.fieldbyname('eff2_sp').value
      else params[31].asfloat:=0;
      if not query1.fieldbyname('sjrs3').isnull then
      params[32].asfloat:=query1.fieldbyname('sjrs3').value
      else params[32].asfloat:=0;
      params[33].asstring:=query1.fieldbyname('pline').value;
      params[34].asinteger:=query1.fieldbyname('seq').value;
      params[35].asinteger:=query1.fieldbyname('dseq').value;
      execute;
    end;
  end;
  }
      str1:='update line_shjs set ';
      if not query1.fieldbyname('zktd').isnull then
      str1:=str1+'zktd='+query1.fieldbyname('zktd').asstring+','
      else str1:=str1+'zktd=0,';
      if not query1.fieldbyname('sclhjs').isnull then
      str1:=str1+'sclhjs='+query1.fieldbyname('sclhjs').asstring+','
      else str1:=str1+'sclhjs=0,';
      if not query1.fieldbyname('qyjs').IsNull then
      str1:=str1+'qyjs='+query1.fieldbyname('qyjs').asstring+','
      else str1:=str1+'qyjs=0,';
      str1:=str1+'sjrs1='+query1.fieldbyname('sjrs1').asstring+',';
      str1:=str1+'sjrs2='+query1.fieldbyname('sjrs2').asstring+',';
      str1:=str1+'sjrs='+query1.fieldbyname('sjrs').asstring+',';
      str1:=str1+'sjyc='+query1.fieldbyname('sjyc').asstring+',';
      str1:=str1+'pqty='+query1.fieldbyname('pqty').asstring+',';
      str1:=str1+'aqty='+query1.fieldbyname('aqty').asstring+',';
      str1:=str1+'diff='+query1.fieldbyname('diff').asstring+',';
      if not query1.fieldbyname('xlbx').isnull then
      str1:=str1+'xlbx='+query1.fieldbyname('xlbx').asstring+','
      else str1:=str1+'xlbx=0,';
      if not query1.fieldbyname('ycbx').isnull then
      str1:=str1+'ycbx='+query1.fieldbyname('ycbx').asstring+','
      else str1:=str1+'ycbx=0,';
      if not query1.fieldbyname('xlbx_sp').isnull then
      str1:=str1+'xlbx_sp='+query1.fieldbyname('xlbx_sp').asstring+','
      else str1:=str1+'xlbx_sp=0,';
      if not query1.fieldbyname('ycbx_sp').isnull then
      str1:=str1+'ycbx_sp='+query1.fieldbyname('ycbx_sp').asstring+','
      else str1:=str1+'ycbx_sp=0,';
      if not query1.fieldbyname('muser').isnull then
      str1:=str1+'muser='''+query1.fieldbyname('muser').value+''','
      else str1:=str1+'muser='''',';
      if not query1.fieldbyname('qnf').isnull then
      str1:=str1+'qnf='''+query1.fieldbyname('qnf').value+''','
      else str1:=str1+'qnf='''',';
      //if not query1.fieldbyname('eot').isnull then
      //str1:=str1+'eot='+query1.fieldbyname('eot').asstring+','
      //else str1:=str1+'eot=0,';
      if not query1.fieldbyname('aqty1').isnull then
      str1:=str1+'aqty1='+query1.fieldbyname('aqty1').asstring+','
      else str1:=str1+'aqty1=0,';
      if not query1.fieldbyname('alrs').isnull then
      str1:=str1+'alrs='+query1.fieldbyname('alrs').asstring+','
      else str1:=str1+'alrs=0,';
      if not query1.fieldbyname('rsxc').isnull then
      str1:=str1+'rsxc='+query1.fieldbyname('rsxc').asstring+','
      else str1:=str1+'rsxc=0,';
      if not query1.fieldbyname('eff3').isnull then
      str1:=str1+'eff3='+query1.fieldbyname('eff3').asstring+','
      else str1:=str1+'eff3=0,';
      if not query1.fieldbyname('eff3_sp').isnull then
      str1:=str1+'eff3_sp='+query1.fieldbyname('eff3_sp').asstring+','
      else str1:=str1+'eff3_sp=0,';
      str1:=str1+'eff1='+query1.fieldbyname('eff1').asstring+',';
      str1:=str1+'eff2='+query1.fieldbyname('eff2').asstring+',';
      if not query1.fieldbyname('zhjs').isnull then
      str1:=str1+'zhjs='+query1.fieldbyname('zhjs').asstring+','
      else str1:=str1+'zhjs=0,';
      if not query1.fieldbyname('dbxl').isnull then
      str1:=str1+'dbxl='+query1.fieldbyname('dbxl').asstring+','
      else str1:=str1+'dbxl=0,';
      if not query1.fieldbyname('dt1').isnull then
      str1:=str1+'dt1='''+formatdatetime('yyyy-MM-dd',query1.fieldbyname('dt1').value)+''','
      else str1:=str1+'dt1=null,';
      if not query1.fieldbyname('csect').isnull then
      str1:=str1+'csect='+query1.fieldbyname('csect').asstring+','
      else str1:=str1+'csect=0,';
      if not query1.fieldbyname('cfm').isnull then begin
        if query1.fieldbyname('cfm').value=true then
        str1:=str1+'cfm=1,' else str1:=str1+'cfm=0,';
      end else str1:=str1+'cfm=0,';
      if not query1.fieldbyname('cfm1').isnull then begin
        if query1.fieldbyname('cfm1').value=true then
        str1:=str1+'cfm1=1,' else str1:=str1+'cfm1=0,';
      end else str1:=str1+'cfm1=0,';
      if not query1.fieldbyname('ppccfm').isnull then begin
        if query1.fieldbyname('ppccfm').value=true then
        str1:=str1+'ppccfm=1,' else str1:=str1+'ppccfm=0,';
      end else str1:=str1+'ppccfm=0,';
      if not query1.fieldbyname('marks_sp_wip').isnull then begin
        if query1.fieldbyname('marks_sp_wip').value=true then
        str1:=str1+'marks_sp_wip=1,' else str1:=str1+'marks_sp_wip=0,';
      end else str1:=str1+'marks_sp_wip=0,';
      if not query1.fieldbyname('marks_sp_cmp').isnull then begin
        if query1.fieldbyname('marks_sp_cmp').value=true then
        str1:=str1+'marks_sp_cmp=1,' else str1:=str1+'marks_sp_cmp=0,';
      end else str1:=str1+'marks_sp_cmp=0,';
      if not query1.fieldbyname('dflag').isnull then
      str1:=str1+'dflag='''+query1.fieldbyname('dflag').value+''','
      else str1:=str1+'dflag='''',';
      if not query1.fieldbyname('ceot').isnull then
      str1:=str1+'ceot='+query1.fieldbyname('ceot').asstring+','
      else str1:=str1+'ceot=0,';
      if not query1.fieldbyname('mwflb').isnull then
      str1:=str1+'mwflb='+query1.fieldbyname('mwflb').asstring+','
      else str1:=str1+'mwflb=0,';
      if not query1.fieldbyname('mwfs').isnull then
      str1:=str1+'mwfs='+query1.fieldbyname('mwfs').asstring+','
      else str1:=str1+'mwfs=0,';
      if not query1.fieldbyname('mwfa').isnull then
      str1:=str1+'mwfa='+query1.fieldbyname('mwfa').asstring+','
      else str1:=str1+'mwfa=0,';
      if not query1.fieldbyname('mwfac').isnull then
      str1:=str1+'mwfac='+query1.fieldbyname('mwfac').asstring+','
      else str1:=str1+'mwfac=0,';
      if not query1.fieldbyname('mwfbn').isnull then
      str1:=str1+'mwfbn='+query1.fieldbyname('mwfbn').asstring+','
      else str1:=str1+'mwfbn=0,';
      if not query1.fieldbyname('dszj_rs').isnull then
      str1:=str1+'dszj_rs='+query1.fieldbyname('dszj_rs').asstring+','
      else str1:=str1+'dszj_rs=0,';
      if not query1.fieldbyname('dszj_sj').isnull then
      str1:=str1+'dszj_sj='+query1.fieldbyname('dszj_sj').asstring+','
      else str1:=str1+'dszj_sj=0,';
      if not query1.fieldbyname('gsdmbn').isnull then
      str1:=str1+'gsdmbn='+query1.fieldbyname('gsdmbn').asstring+','
      else str1:=str1+'gsdmbn=0,';
      if not query1.fieldbyname('aqty_sp').isnull then
      str1:=str1+'aqty_sp='+query1.fieldbyname('aqty_sp').asstring+','
      else str1:=str1+'aqty_sp=0,';
      if not query1.fieldbyname('aqty1_sp').isnull then
      str1:=str1+'aqty1_sp='+query1.fieldbyname('aqty1_sp').asstring+','
      else str1:=str1+'aqty1_sp=0,';
      if not query1.fieldbyname('diff_sp').isnull then
      str1:=str1+'diff_sp='+query1.fieldbyname('diff_sp').asstring+','
      else str1:=str1+'diff_sp=0,';
      if not query1.fieldbyname('dbxl_sp').isnull then
      str1:=str1+'dbxl_sp='+query1.fieldbyname('dbxl_sp').asstring+','
      else str1:=str1+'dbxl_sp=0,';
      if not query1.fieldbyname('eff2_sp').isnull then
      str1:=str1+'eff2_sp='+query1.fieldbyname('eff2_sp').asstring+','
      else str1:=str1+'eff2_sp=0,';
      if not query1.fieldbyname('csect_sp').isnull then
      str1:=str1+'csect_sp='+query1.fieldbyname('csect_sp').asstring+','
      else str1:=str1+'csect_sp=0,';
      if not query1.fieldbyname('ceot_sp').isnull then
      str1:=str1+'ceot_sp='+query1.fieldbyname('ceot_sp').asstring+','
      else str1:=str1+'ceot_sp=0,';
      if not query1.fieldbyname('mantbl').isnull then
      str1:=str1+'mantbl='+query1.fieldbyname('mantbl').asstring+','
      else str1:=str1+'mantbl=0,';
      if not query1.fieldbyname('act_postbox').isnull then
      str1:=str1+'act_postbox='+query1.fieldbyname('act_postbox').asstring+','
      else str1:=str1+'act_postbox=0,';
      if not query1.fieldbyname('sjrs3').isnull then
      str1:=str1+'sjrs3='+query1.fieldbyname('sjrs3').asstring+' '
      else str1:=str1+'sjrs3=0 ';
      str1:=str1+'where pline='''+query1.fieldbyname('pline').value+''' ';
      str1:=str1+'and seq='+query1.fieldbyname('seq').asstring+' ';
      str1:=str1+'and dseq='+query1.fieldbyname('dseq').asstring;
      //showmessage(str1);
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
      
  {
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select max(date1) as dt from line_shjs where pline=:x1 and seq=:x2 and (aqty>0 or aqty1>0)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('dt').isnull then dt1:=fieldbyname('dt').value
    else dt1:=encodedate(1899,12,30);
  end;
  }
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'pline',ptinput);
    params.createparam(ftinteger,'seq',ptinput);
    commandtext:='select sum(zktd) as x1,sum(sclhjs) as x2,sum(qyjs) as x3,sum(zhjs) as x4,sum(eot) as x5 from line_shjs where pline=:pline and seq=:seq and flag=''0''';
    //commandtext:='select sum(shjs+zktd) as x1,sum(sclhjs) as x2,sum(qyjs) as x3,sum(zhjs) as x4,sum(eot) as x5 from line_shjs where pline=:pline and seq=:seq and flag=''0''';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('x1').isnull then x1:=fieldbyname('x1').value else x1:=0;
    if not fieldbyname('x2').isnull then x2:=fieldbyname('x2').value else x2:=0;
    if not fieldbyname('x3').isnull then x3:=fieldbyname('x3').value else x3:=0;
    if not fieldbyname('x4').isnull then x4:=fieldbyname('x4').value else x4:=0;
    if not fieldbyname('x5').isnull then x5:=fieldbyname('x5').value else x5:=0;
  end;
  // Re-calculate average
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(alrs*csect_sp)/sum(csect_sp) as s3,sum(sjyc*csect_sp)/sum(csect_sp) as s4,sum(eff2_sp*csect_sp)/sum(csect_sp) as s6,'
                +'sum((alrs+sjrs3+dszj_rs)*csect_sp)/sum(csect_sp) as s8,sum(dszj_rs*csect_sp)/sum(csect_sp) as s9 '
                +'from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and csect_sp>0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('s3').isnull then begin
      ors:=fieldbyname('s3').value;
      oyc:=fieldbyname('s4').value;
      x6:=fieldbyname('s6').value;
      //ers:=fieldbyname('s7').value;
      ttlrs:=fieldbyname('s8').value;
      pfrs:=fieldbyname('s9').value;
    end else begin
      ors:=0;
      oyc:=0;
      x6:=0;
      //ers:=0;
      ttlrs:=0;
      pfrs:=0;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(sjrs3*csect)/sum(csect) as s7 '
                +'from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and csect>0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('s7').isnull then begin
      ers:=fieldbyname('s7').value;
    end else begin
      ers:=0;
    end;
  end;

  str1:='update tblshedule set zktd='+floattostr(x1+x4)+',sclhjs='+floattostr(x2)+',qyjs='+floattostr(x3)+',zhjs='+floattostr(x4)+',bcjs='+floattostr(x5)+',pfrs='+floattostr(pfrs);
  str1:=str1+',sjrs='+floattostr(ors)+',sjyc='+floattostr(oyc)+',ers='+floattostr(ers)+',ttlrs='+floattostr(ttlrs)+',jhl='+floattostr(x6)+' where pline='''+query1.FieldByName('pline').Value+''' and seq='+query1.FieldByName('seq').AsString;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from sp_lwpm_updsclh_qn1(:x1,:x2)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('o_sclhbs').isnull then bs:=fieldbyname('o_sclhbs').value else bs:=0;
    if not fieldbyname('o_sclhlh').isnull then lh:=fieldbyname('o_sclhlh').value else lh:=0;
    if not fieldbyname('o_xlbx').isnull then xl:=fieldbyname('o_xlbx').value else xl:=0;
    if not fieldbyname('o_ycbx').isnull then bb:=fieldbyname('o_ycbx').value else bb:=0;
    if not fieldbyname('o_yb').isnull then yb:=fieldbyname('o_yb').value else yb:=0;
    if not fieldbyname('o_wb').isnull then wb:=fieldbyname('o_wb').value else wb:=0;
  end;
    str1:='update tblshedule set sclh_bs='+floattostr(xl+bb)+',sclh_lh='+floattostr(lh)+',sclh_xl='+floattostr(xl)+',sclh_bb='+floattostr(bb)+',sclh_yb='+floattostr(yb)+',sclh_wb='+floattostr(wb);
    str1:=str1+' where pline='''+query1.FieldByName('pline').Value+''' and seq='+query1.FieldByName('seq').AsString;
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

    {
    pstr:='10 '+query1.fieldbyname('pline').value+' '+query1.fieldbyname('seq').asstring+' '+query1.fieldbyname('dseq').asstring;
    if pos('test',lowercase(application.ExeName))>0 then
    winexec(pchar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
    else winexec(pchar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
    }
end;

procedure Tfrmachieving.Query1ALRSChange(Sender: TField);
var
  alrs,sjrs3:double;
begin
  if not query1.fieldbyname('alrs').isnull then
  alrs:=query1.fieldbyname('alrs').value else alrs:=0;

  if not query1.fieldbyname('sjrs3').isnull then
  sjrs3:=query1.fieldbyname('sjrs3').value else sjrs3:=0;
  query1.fieldbyname('sjrs').value:=alrs+sjrs3;

  query1.fieldbyname('sjrs1').value:=alrs;
  query1.fieldbyname('sjrs2').value:=0;

  if alrs>0 then begin
    query1.fieldbyname('rsxc').value:=alrs-query1.fieldbyname('awf').value;
    query1.fieldbyname('mwflbc').value:=alrs-query1.fieldbyname('mwfsc').value;
    query1.fieldbyname('eff3').value:=query1.fieldbyname('eff2').value*query1.fieldbyname('awf').value/alrs;
    query1.fieldbyname('eff3_sp').value:=query1.fieldbyname('eff2_sp').value*query1.fieldbyname('awf').value/alrs;
  end else begin
    query1.fieldbyname('rsxc').value:=0;
    query1.fieldbyname('mwflbc').value:=0;
  end;
end;

procedure Tfrmachieving.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmnextday<>nil then frmnextday:=nil;
  if frmwipimg<>nil then frmwipimg:=nil;
  if frmfgai<>nil then frmfgai:=nil;
  if frmfstyleimg<>nil then frmfstyleimg:=nil;
  if frmachieving_en<>nil then frmachieving_en:=nil;
  if query1.state=dsedit then query1.post;
  action:=cafree;
  frmachieving:=nil;
end;

procedure Tfrmachieving.BitBtn10Click(Sender: TObject);
begin
  //
end;

procedure Tfrmachieving.BitBtn1Click(Sender: TObject);
var
  bs,lh:double;
  str1:string;
begin
  if query1.state=dsedit then query1.post;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select * from sp_lwpm_updsclh_qn(:x1,:x2)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('o_sclhbs').isnull then bs:=fieldbyname('o_sclhbs').value else bs:=0;
    if not fieldbyname('o_sclhlh').isnull then lh:=fieldbyname('o_sclhlh').value else lh:=0;
  end;
    str1:='update tblshedule set sclh_bs='+floattostr(bs)+',sclh_lh='+floattostr(lh)+' where pline='''+query1.FieldByName('pline').Value+''' and seq='+query1.FieldByName('seq').AsString;
    if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
end;

procedure Tfrmachieving.Query1AfterOpen(DataSet: TDataSet);
begin
  query1.fieldbyname('sclhjs').OnChange:=querysclhjschange;
  query1.fieldbyname('qyjs').OnChange:=querysclhjschange;
  (query1.fieldbyname('dbxl') as tfloatfield).displayformat:='0.00;;''';
  (query1.fieldbyname('pqty1') as tfloatfield).displayformat:='#0;;''';
  (query1.fieldbyname('csect') as tfloatfield).displayformat:='0.00;;''';
end;

procedure Tfrmachieving.QuerySCLHJSChange(Sender: TField);
var
  i1,i2:double;
begin
  if not query1.fieldbyname('sclhjs').isnull then i1:=query1.fieldbyname('sclhjs').value
  else i1:=0;
  if not query1.fieldbyname('qyjs').isnull then i2:=query1.fieldbyname('qyjs').value
  else i2:=0;
  query1.fieldbyname('zktd').value:=i1+i2;
end;

procedure Tfrmachieving.ComboBox1Change(Sender: TObject);
var
  rcnt:integer;
  tplant,tshop:string;
begin
  //{
  screen.cursor:=crSQLWait;
  try
  tm1:=now;
  //if (combobox1.text='CN') or (combobox1.text='GX') then tplant:=''
  //else
  if combobox1.text='GD' then tplant:='SL' else tplant:=combobox1.text;

  //label8.caption:=formatdatetime('hh:nn:ss.zzz',now);

  if (dateedit1.date>0) and ((combobox1.text>'') or (combobox2.text>'') or (edit1.text>'')) then begin
    if pos(';',combobox2.text)>0 then tshop:='1' else tshop:='0';
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_updlineshjs_lst_pline(:x1,:x2,:x3,:x4)';
      params[0].asdate:=dateedit1.date;
      params[1].asstring:=tplant;
      if tshop='1' then params[2].asstring:=''
      else params[2].asstring:=combobox2.text;
      params[3].asstring:=edit1.text;
      execute;
    end;
    //showmessage('1');
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdate,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='execute procedure sp_tbl_lineshjs_pline(:x1,:x2,:x3,:x4,:x5)';
      params[0].asdatetime:=tm1;
      params[1].asstring:=tplant;
      if tshop='1' then params[2].asstring:=''
      else params[2].asstring:=combobox2.text;
      params[3].asdate:=dateedit1.date;
      params[4].asstring:=edit1.text;
      execute;
    end;
  //end;
  //}

  //label9.caption:=formatdatetime('hh:nn:ss.zzz',now);

  with query1 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if xh0.checked then
      commandtext:='select * from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0'
      else if xh1.checked then
      commandtext:='select * from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0'
      else if xh3.checked then
      commandtext:='select * from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0'
      else if xh2.checked then
      commandtext:='select * from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1''';
      if combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if label12.caption='0' then commandtext:=commandtext+' and a.tshop<>''PPW''';
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(a.tshop,'''+combobox2.text+''')>=0';
      if edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=dateedit1.date;
      open;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if xh0.checked then
      commandtext:='select count(distinct pline) as lcnt,count(distinct j_no) as jcnt,count(distinct j2_job) as jbcnt,count(distinct cstyle) as ccnt,count(*) as rcnt,'
                  +'sum(eot_sp)/count(distinct pline) as xeot,sum(csect_sp)/count(distinct pline) as xcset,sum(scqty) as sqty,sum(pqty0) as qty0,avg(eff1) as eff1,avg(prj4) as prj4,'
                  +'sum(mpsect) as bq1,sum(mpsect_sp) as bq2,avg(sjshl) as sjsh,sum(prj1) as prj1,sum(prj1_sp) as prj2,avg(awf) as awf,sum(aqty) as aqty1,sum(aqty_sp) as aqty2 '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0'
      else if xh1.checked then
      commandtext:='select count(distinct pline) as lcnt,count(distinct j_no) as jcnt,count(distinct j2_job) as jbcnt,count(distinct cstyle) as ccnt,count(*) as rcnt,'
                  +'sum(eot_sp)/count(distinct pline) as xeot,sum(csect_sp)/count(distinct pline) as xcset,sum(scqty) as sqty,sum(pqty0) as qty0,avg(eff1) as eff1,avg(prj4) as prj4,'
                  +'sum(mpsect) as bq1,sum(mpsect_sp) as bq2,avg(sjshl) as sjsh,sum(prj1) as prj1,sum(prj1_sp) as prj2,avg(awf) as awf,sum(aqty) as aqty1,sum(aqty_sp) as aqty2 '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0'
      else if xh3.checked then
      commandtext:='select count(distinct pline) as lcnt,count(distinct j_no) as jcnt,count(distinct j2_job) as jbcnt,count(distinct cstyle) as ccnt,count(*) as rcnt,'
                  +'sum(eot_sp)/count(distinct pline) as xeot,sum(csect_sp)/count(distinct pline) as xcset,sum(scqty) as sqty,sum(pqty0) as qty0,avg(eff1) as eff1,avg(prj4) as prj4,'
                  +'sum(mpsect) as bq1,sum(mpsect_sp) as bq2,avg(sjshl) as sjsh,sum(prj1) as prj1,sum(prj1_sp) as prj2,avg(awf) as awf,sum(aqty) as aqty1,sum(aqty_sp) as aqty2 '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0'
      else if xh2.checked then
      commandtext:='select count(distinct pline) as lcnt,count(distinct j_no) as jcnt,count(distinct j2_job) as jbcnt,count(distinct cstyle) as ccnt,count(*) as rcnt,'
                  +'sum(eot_sp)/count(distinct pline) as xeot,sum(csect_sp)/count(distinct pline) as xcset,sum(scqty) as sqty,sum(pqty0) as qty0,avg(eff1) as eff1,avg(prj4) as prj4,'
                  +'sum(mpsect) as bq1,sum(mpsect_sp) as bq2,avg(sjshl) as sjsh,sum(prj1) as prj1,sum(prj1_sp) as prj2,avg(awf) as awf,sum(aqty) as aqty1,sum(aqty_sp) as aqty2 '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1''';
      if combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      if label12.caption='0' then commandtext:=commandtext+' and a.tshop<>''PPW''';
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(a.tshop,'''+combobox2.text+''')>=0';
      if edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('lcnt').isnull then dbgrideh1.columns[1].footers[0].value:=fieldbyname('lcnt').asstring;
      if not fieldbyname('jcnt').isnull then dbgrideh1.columns[2].footers[0].value:=fieldbyname('jcnt').asstring;
      if not fieldbyname('jbcnt').isnull then dbgrideh1.columns[3].footers[0].value:=fieldbyname('jbcnt').asstring;
      //if not fieldbyname('rcnt').isnull then dbgrideh1.columns[6].footers[0].value:=fieldbyname('rcnt').asstring;
      if not fieldbyname('rcnt').isnull then dbgrideh1.columns[5].footers[0].value:=fieldbyname('rcnt').asstring;
      if not fieldbyname('ccnt').isnull then dbgrideh1.columns[8].footers[0].value:=fieldbyname('ccnt').asstring;
      if not fieldbyname('sqty').isnull then dbgrideh1.columns[13].footers[0].value:=fieldbyname('sqty').asstring;
      if not fieldbyname('qty0').isnull then dbgrideh1.columns[14].footers[0].value:=fieldbyname('qty0').asstring;
      if lbl850.caption='SPE' then begin
        if not fieldbyname('bq2').isnull then dbgrideh1.columns[15].footers[0].value:=fieldbyname('bq2').asstring;
        if not fieldbyname('prj2').isnull then dbgrideh1.columns[34].footers[0].value:=formatfloat('#0',fieldbyname('prj2').value);
        if not fieldbyname('aqty2').isnull then dbgrideh1.columns[35].footers[0].value:=formatfloat('#0',fieldbyname('aqty2').value);
      end else begin
        if not fieldbyname('bq1').isnull then dbgrideh1.columns[15].footers[0].value:=fieldbyname('bq1').asstring;
        if not fieldbyname('prj1').isnull then dbgrideh1.columns[34].footers[0].value:=formatfloat('#0',fieldbyname('prj1').value);
        if not fieldbyname('aqty1').isnull then dbgrideh1.columns[35].footers[0].value:=formatfloat('#0',fieldbyname('aqty1').value);
      end;
      if not fieldbyname('xeot').isnull then dbgrideh1.columns[19].footers[1].value:=formatfloat('0.00',fieldbyname('xeot').value);
      if not fieldbyname('xcset').isnull then dbgrideh1.columns[20].footers[1].value:=formatfloat('0.00',fieldbyname('xcset').value);
      if not fieldbyname('sjsh').isnull then dbgrideh1.columns[21].footers[1].value:=formatfloat('0.00',fieldbyname('sjsh').value)
      else dbgrideh1.columns[21].footers[1].value:='';
      if not fieldbyname('awf').isnull then dbgrideh1.columns[37].footers[1].value:=formatfloat('0.00',fieldbyname('awf').value);
      //if not fieldbyname('mwfsc').isnull then dbgrideh1.columns[38].footers[1].value:=formatfloat('0.00',fieldbyname('mwfsc').value);
      if not fieldbyname('eff1').isnull then dbgrideh1.columns[69].footers[1].value:=formatfloat('0.00',fieldbyname('eff1').value);
      if not fieldbyname('prj4').isnull then dbgrideh1.columns[70].footers[1].value:=formatfloat('0.00',fieldbyname('prj4').value);
      if not fieldbyname('rcnt').isnull then rcnt:=fieldbyname('rcnt').value else rcnt:=0;
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if xh0.checked then
      commandtext:='select count(*) as fcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and qnf=''m'' and ppccfm=0'
      else if xh1.checked then
      commandtext:='select count(*) as fcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and qnf=''m'' and cfm=0'
      else if xh3.checked then
      commandtext:='select count(*) as fcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and qnf=''m'' and cfm1=0'
      else if xh2.checked then
      commandtext:='select count(*) as fcnt '
                       +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and qnf=''m''';
      if combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      if label12.caption='0' then commandtext:=commandtext+' and a.tshop<>''PPW''';
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(a.tshop,'''+combobox2.text+''')>=0';
      if edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('fcnt').isnull then dbgrideh1.columns[11].footers[0].value:=fieldbyname('fcnt').asstring+'m';
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if xh0.checked then
      commandtext:='select count(*) as pcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and qnpc=''p'' and ppccfm=0'
      else if xh1.checked then
      commandtext:='select count(*) as pcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and qnpc=''p'' and cfm=0'
      else if xh3.checked then
      commandtext:='select count(*) as pcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and qnpc=''p'' and cfm1=0'
      else if xh2.checked then
      commandtext:='select count(*) as pcnt '
                       +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and qnpc=''p''';
      if combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      if label12.caption='0' then commandtext:=commandtext+' and a.tshop<>''PPW''';
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(a.tshop,'''+combobox2.text+''')>=0';
      if edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('pcnt').isnull then dbgrideh1.columns[12].footers[0].value:=fieldbyname('pcnt').asstring+'p';
    end;
  end;

  //label10.caption:=formatdatetime('hh:nn:ss.zzz',now);

  with query2 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if xh0.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0 and ppccfm=1'
      else if xh1.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0 and ppccfm=1'
      else if xh3.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0 and ppccfm=1'
      else if xh2.checked then
      commandtext:='select count(*) as xcnt '
                       +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=1';
      if combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      if label12.caption='0' then commandtext:=commandtext+' and a.tshop<>''PPW''';
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(a.tshop,'''+combobox2.text+''')>=0';
      if edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('xcnt').isnull then dbgrideh1.columns[44].footers[0].value:=fieldbyname('xcnt').asstring+'/-'+inttostr(rcnt-fieldbyname('xcnt').value);
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if xh0.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0 and cfm1=1'
      else if xh1.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0 and cfm1=1'
      else if xh3.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0 and cfm1=1'
      else if xh2.checked then
      commandtext:='select count(*) as xcnt '
                       +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=1';
      if combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      if label12.caption='0' then commandtext:=commandtext+' and a.tshop<>''PPW''';
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(a.tshop,'''+combobox2.text+''')>=0';
      if edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('xcnt').isnull then dbgrideh1.columns[45].footers[0].value:=fieldbyname('xcnt').asstring+'/-'+inttostr(rcnt-fieldbyname('xcnt').value);
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if xh0.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0 and cfm=1'
      else if xh1.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0 and cfm=1'
      else if xh3.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0 and cfm=1'
      else if xh2.checked then
      commandtext:='select count(*) as xcnt '
                       +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=1';
      if combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      if label12.caption='0' then commandtext:=commandtext+' and a.tshop<>''PPW''';
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(a.tshop,'''+combobox2.text+''')>=0';
      if edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('xcnt').isnull then dbgrideh1.columns[46].footers[0].value:=fieldbyname('xcnt').asstring+'/-'+inttostr(rcnt-fieldbyname('xcnt').value);
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if xh0.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0 and lst=''r'''
      else if xh1.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0 and lst=''r'''
      else if xh3.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0 and lst=''r'''
      else if xh2.checked then
      commandtext:='select count(*) as xcnt '
                       +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and lst=''r''';
      if combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      if label12.caption='0' then commandtext:=commandtext+' and a.tshop<>''PPW''';
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(a.tshop,'''+combobox2.text+''')>=0';
      if edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('xcnt').isnull then dbgrideh1.columns[24].footers[0].value:=fieldbyname('xcnt').asstring+'r'
      else dbgrideh1.columns[24].footers[0].value:='';
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if xh0.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0 and lst1=''x'''
      else if xh1.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0 and lst1=''x'''
      else if xh3.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0 and lst1=''x'''
      else if xh2.checked then
      commandtext:='select count(*) as xcnt '
                       +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and lst1=''x''';
      if combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      if label12.caption='0' then commandtext:=commandtext+' and a.tshop<>''PPW''';
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(a.tshop,'''+combobox2.text+''')>=0';
      if edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('xcnt').isnull then dbgrideh1.columns[27].footers[0].value:=fieldbyname('xcnt').asstring+'x'
      else dbgrideh1.columns[27].footers[0].value:='';
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if lbl850.caption='SPE' then begin
        if xh0.checked then
        commandtext:='select /*sum(eff2_sp*csect_sp)/sum(csect_sp)*/avg(eff2_sp) as eff0,sum(dbl_sp*csect_sp)/sum(csect_sp) as dbl0,sum(alrs*csect_sp)/sum(csect_sp) as rs0,sum(eff3_sp*csect_sp)/sum(csect_sp) as rs1,'
                    +'sum(rsxc*csect_sp)/sum(csect_sp) as xc1,sum(mwflbc*csect_sp)/sum(csect_sp) as xc2,sum(mwfsc*csect_sp)/sum(csect_sp) as mwfsc '
                    +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and csect_sp>0 and ppccfm=0'
        else if xh1.checked then
        commandtext:='select /*sum(eff2_sp*csect_sp)/sum(csect_sp)*/avg(eff2_sp) as eff0,sum(dbl_sp*csect_sp)/sum(csect_sp) as dbl0,sum(alrs*csect_sp)/sum(csect_sp) as rs0,sum(eff3_sp*csect_sp)/sum(csect_sp) as rs1,'
                    +'sum(rsxc*csect_sp)/sum(csect_sp) as xc1,sum(mwflbc*csect_sp)/sum(csect_sp) as xc2,sum(mwfsc*csect_sp)/sum(csect_sp) as mwfsc '
                    +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and csect_sp>0 and cfm=0'
        else if xh3.checked then
        commandtext:='select /*sum(eff2_sp*csect_sp)/sum(csect_sp)*/avg(eff2_sp) as eff0,sum(dbl_sp*csect_sp)/sum(csect_sp) as dbl0,sum(alrs*csect_sp)/sum(csect_sp) as rs0,sum(eff3_sp*csect_sp)/sum(csect_sp) as rs1,'
                    +'sum(rsxc*csect_sp)/sum(csect_sp) as xc1,sum(mwflbc*csect_sp)/sum(csect_sp) as xc2,sum(mwfsc*csect_sp)/sum(csect_sp) as mwfsc '
                    +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and csect_sp>0 and cfm1=0'
        else if xh2.checked then
        commandtext:='select /*sum(eff2_sp*csect_sp)/sum(csect_sp)*/avg(eff2_sp) as eff0,sum(dbl_sp*csect_sp)/sum(csect_sp) as dbl0,sum(alrs*csect_sp)/sum(csect_sp) as rs0,sum(eff3_sp*csect_sp)/sum(csect_sp) as rs1,'
                    +'sum(rsxc*csect_sp)/sum(csect_sp) as xc1,sum(mwflbc*csect_sp)/sum(csect_sp) as xc2,sum(mwfsc*csect_sp)/sum(csect_sp) as mwfsc '
                    +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and csect_sp>0';
      end else begin
        if xh0.checked then
        commandtext:='select sum(eff2*csect)/sum(csect) as eff0,sum(dbl*csect)/sum(csect) as dbl0,sum(alrs*csect)/sum(csect) as rs0,sum(eff3*csect)/sum(csect) as rs1,sum(rsxc*csect)/sum(csect) as xc1,sum(mwflbc*csect)/sum(csect) as xc2 '
                    +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and csect>0 and ppccfm=0'
        else if xh1.checked then
        commandtext:='select sum(eff2*csect)/sum(csect) as eff0,sum(dbl*csect)/sum(csect) as dbl0,sum(alrs*csect)/sum(csect) as rs0,sum(eff3*csect)/sum(csect) as rs1,sum(rsxc*csect)/sum(csect) as xc1,sum(mwflbc*csect)/sum(csect) as xc2 '
                    +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and csect>0 and cfm=0'
        else if xh3.checked then
        commandtext:='select sum(eff2*csect)/sum(csect) as eff0,sum(dbl*csect)/sum(csect) as dbl0,sum(alrs*csect)/sum(csect) as rs0,sum(eff3*csect)/sum(csect) as rs1,sum(rsxc*csect)/sum(csect) as xc1,sum(mwflbc*csect)/sum(csect) as xc2 '
                    +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and csect>0 and cfm1=0'
        else if xh2.checked then
        commandtext:='select sum(eff2*csect)/sum(csect) as eff0,sum(dbl*csect)/sum(csect) as dbl0,sum(alrs*csect)/sum(csect) as rs0,sum(eff3*csect)/sum(csect) as rs1,sum(rsxc*csect)/sum(csect) as xc1,sum(mwflbc*csect)/sum(csect) as xc2 '
                         +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and csect>0';
      end;
      if combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      if label12.caption='0' then commandtext:=commandtext+' and a.tshop<>''PPW''';
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(a.tshop,'''+combobox2.text+''')>=0';
      if edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('eff0').isnull then dbgrideh1.columns[71].footers[1].value:=formatfloat('0.00',fieldbyname('eff0').value)
      else dbgrideh1.columns[71].footers[1].value:='';
      if not fieldbyname('dbl0').isnull then dbgrideh1.columns[36].footers[1].value:=formatfloat('0.00',fieldbyname('dbl0').value)
      else dbgrideh1.columns[36].footers[1].value:='';
      if lbl850.caption='SPE' then begin
        if not fieldbyname('mwfsc').isnull then dbgrideh1.columns[38].footers[1].value:=formatfloat('0.00',fieldbyname('mwfsc').value)
        else dbgrideh1.columns[38].footers[1].value:='';
      end else dbgrideh1.columns[38].footers[1].value:='';
      if not fieldbyname('rs0').isnull then dbgrideh1.columns[39].footers[1].value:=formatfloat('0.00',fieldbyname('rs0').value)
      else dbgrideh1.columns[39].footers[1].value:='';
      if not fieldbyname('xc1').isnull then dbgrideh1.columns[40].footers[1].value:=formatfloat('0.00',fieldbyname('xc1').value)
      else dbgrideh1.columns[40].footers[1].value:='';
      if not fieldbyname('xc2').isnull then dbgrideh1.columns[41].footers[1].value:=formatfloat('0.00',fieldbyname('xc2').value)
      else dbgrideh1.columns[41].footers[1].value:='';
      if not fieldbyname('rs1').isnull then dbgrideh1.columns[73].footers[1].value:=formatfloat('0.00',fieldbyname('rs1').value)
      else dbgrideh1.columns[73].footers[1].value:='';
    end;
  end;
  end;

  //label11.caption:=formatdatetime('hh:nn:ss.zzz',now);

  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmachieving.ComboBox2Enter(Sender: TObject);
var
  tplant:string;
begin
  combobox2.properties.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where tshop is not null and lactive=1 and substr(pline,1,1) in (''T'',''P'')';
    if combobox1.text>'' then begin
      if combobox1.text<>'CN' then begin
        if combobox1.text='GX' then commandtext:=commandtext+' and tplant in (''GG'',''RX'')'
        else if combobox1.text='GD' then commandtext:=commandtext+' and tplant=''SL'''
        else commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
      if label12.caption='0' then commandtext:=commandtext+' and tshop<>''PPW''';
    end;
    open;
    first;
    while not eof do begin
      combobox2.properties.items.Add.Description:=fieldbyname('tshop').value;
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmachieving.ComboBox2PropertiesChange(Sender: TObject);
begin
  if combobox2.text>'' then begin
    //if combobox1.text='' then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='select distinct tplant from tblline where f_substr(tshop,'''+combobox2.text+''')>=0';
        open;
        if not fieldbyname('tplant').isnull then
        combobox1.text:=fieldbyname('tplant').value;
      end;
    //end;
  end;
end;

procedure Tfrmachieving.Query1SJRS1Change(Sender: TField);
var
  sjrs1,sjrs2,sjrs3:double;
begin
  if not query1.fieldbyname('sjrs1').isnull then
  sjrs1:=query1.fieldbyname('sjrs1').value else sjrs1:=0;
  if not query1.fieldbyname('sjrs2').isnull then
  sjrs2:=query1.fieldbyname('sjrs2').value else sjrs2:=0;
  if not query1.fieldbyname('sjrs3').isnull then
  sjrs3:=query1.fieldbyname('sjrs3').value else sjrs3:=0;
  query1.fieldbyname('sjrs').value:=sjrs1+sjrs2+sjrs3;
  query1.fieldbyname('alrs').value:=sjrs1+sjrs2;
  if (sjrs1+sjrs2)>0 then begin
    query1.fieldbyname('rsxc').value:=sjrs1+sjrs2-query1.fieldbyname('awf').value;
    query1.fieldbyname('eff3').value:=query1.fieldbyname('eff2').value*query1.fieldbyname('awf').value/(sjrs1+sjrs2);
    query1.fieldbyname('eff3_sp').value:=query1.fieldbyname('eff2_sp').value*query1.fieldbyname('awf').value/(sjrs1+sjrs2);
  end else query1.fieldbyname('rsxc').value:=0;
end;

procedure Tfrmachieving.Query1AQTYChange(Sender: TField);
var
  pqty,aqty,aqty1,js0,js1,js2,xxx001,xlbx,ycbx,cttl,ksjs:double;
  i1:integer;
  dt1:tdate;
  s1:string;
begin
  if not query1.fieldbyname('pqty').isnull then
  pqty:=query1.fieldbyname('pqty').value else pqty:=0;
  if not query1.fieldbyname('aqty').isnull then begin
    if query1.fieldbyname('aqty').value=0 then aqty:=0.01
    else aqty:=query1.fieldbyname('aqty').value;
  end else aqty:=0.01;
  if not query1.fieldbyname('aqty1').isnull then
  aqty1:=query1.fieldbyname('aqty1').value else aqty1:=0;
  query1.fieldbyname('diff').value:=aqty+aqty1;
  if not query1.fieldbyname('csect').isnull then
  cttl:=query1.fieldbyname('csect').value else cttl:=0;
  if query1.fieldbyname('dseq').value=1 then ksjs:=query1.fieldbyname('ksjs').value else ksjs:=0;

    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select arr_ky as ttl from week52 where line=:x1 and date1=:x2';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asdate:=query1.fieldbyname('dt1').value;
      open;
      if not fieldbyname('ttl').isnull then js0:=fieldbyname('ttl').value else js0:=0;
    end;
  if js0-ksjs>=cttl then ycbx:=js0-cttl-ksjs else ycbx:=0;
  if cttl>0 then xlbx:=cttl-aqty/query1.fieldbyname('xjs').value*query1.fieldbyname('eff2').value/query1.fieldbyname('eff1').value else xlbx:=0;

  query1.fieldbyname('xlbx').value:=xlbx;
  query1.fieldbyname('ycbx').value:=ycbx;

  if not query1.fieldbyname('csect').isnull then begin
    if query1.fieldbyname('csect').value>0 then begin
      query1.fieldbyname('eff2').value:=query1.fieldbyname('aqty').value*100.0/(query1.fieldbyname('csect').value*query1.fieldbyname('xjs').value);
      query1.fieldbyname('prj1').value:=query1.fieldbyname('csect').value*query1.fieldbyname('xjs').value*query1.fieldbyname('eff1').value/100.00;
    end else begin
      query1.fieldbyname('eff2').value:=0;
    end;
  end;
  {
  query1.fieldbyname('zhjs').value:=(-1.0)*aqty1/query1.fieldbyname('xjs').value*100.0/query1.fieldbyname('eff1').value;
  if not query1.fieldbyname('ceot').isnull then begin
    if query1.fieldbyname('ceot').value>0 then begin
      query1.fieldbyname('dbxl').value:=query1.fieldbyname('aqty1').value*100.00/(query1.fieldbyname('ceot').value*query1.fieldbyname('xjs').value);
    end else begin
      query1.fieldbyname('dbxl').value:=0;
    end;
  end;
  if not query1.fieldbyname('ceot_sp').isnull then begin
    if query1.fieldbyname('ceot_sp').value>0 then begin
      query1.fieldbyname('dbxl_sp').value:=query1.fieldbyname('aqty1_sp').value*100.00/(query1.fieldbyname('ceot_sp').value*query1.fieldbyname('xjs').value);
    end else begin
      query1.fieldbyname('dbxl_sp').value:=0;
    end;
  end;
  if query1.fieldbyname('dt1').isnull then query1.FieldByName('dt1').value:=query1.fieldbyname('date1').value;
  }
end;

procedure Tfrmachieving.Query1AQTY_SPChange(Sender: TField);
var
  js0,js1,js2,xxx001,ksjs,ksjs0,ksjs1:double;
  xlbx_sp,ycbx_sp,cttl_sp:double;
  aqty_sp,aqty1_sp:double;
  i1:integer;
  dt1:tdate;
  s1:string;
  q1,q2:double;
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cfksjs,cfwcrq,cfwcjs,scqty from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('cfksjs').isnull then ksjs0:=fieldbyname('cfksjs').value else ksjs0:=0;
    if not fieldbyname('cfwcjs').isnull then ksjs1:=fieldbyname('cfwcjs').value else ksjs1:=0;
    if not fieldbyname('cfwcrq').isnull then dt1:=fieldbyname('cfwcrq').value;
    q1:=fieldbyname('scqty').value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(tsqty) as q2 from tbl_lwo_sew_sp where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('q2').isnull then q2:=fieldbyname('q2').value else q2:=0;
  end;
  if not query1.fieldbyname('aqty_sp').isnull then
  aqty_sp:=query1.fieldbyname('aqty_sp').value else aqty_sp:=0;
  if not query1.fieldbyname('aqty1_sp').isnull then
  aqty1_sp:=query1.fieldbyname('aqty1_sp').value else aqty1_sp:=0;
  query1.fieldbyname('diff_sp').value:=aqty_sp+aqty1_sp;
  if not query1.fieldbyname('csect_sp').isnull then
  cttl_sp:=query1.fieldbyname('csect_sp').value else cttl_sp:=0;
  if query1.fieldbyname('dseq').value=1 then ksjs:=ksjs0 else ksjs:=0;

    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      commandtext:='select arr_ky as ttl from week52 where line=:x1 and date1=:x2';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asdate:=query1.fieldbyname('dt1').value;
      open;
      if not fieldbyname('ttl').isnull then js0:=fieldbyname('ttl').value else js0:=0;
    end;

  if query1.fieldbyname('dseq').value=1 then begin
    if js0-ksjs>=cttl_sp then ycbx_sp:=js0-cttl_sp-ksjs else ycbx_sp:=0;
    if ycbx_sp>0 then begin
      if query1.fieldbyname('dt1').value=dt1 then ycbx_sp:=ksjs1-ksjs-cttl_sp;
      if ycbx_sp<0 then ycbx_sp:=0;
    end;
  end else begin
    if js0>=cttl_sp then ycbx_sp:=js0-cttl_sp else ycbx_sp:=0;
    if ycbx_sp>0 then begin
      if query1.fieldbyname('dt1').value=dt1 then begin
        if (q1<=q2) then
        ycbx_sp:=ksjs1-cttl_sp;
      end;
      //if query1.fieldbyname('dt1').value=dt1 then ycbx_sp:=ksjs1-cttl_sp;
      if ycbx_sp<0 then ycbx_sp:=0;
    end;
  end;
  if not query1.fieldbyname('csect_sp').isnull then begin
    if query1.fieldbyname('csect_sp').value>0 then begin
      query1.fieldbyname('eff2_sp').value:=query1.fieldbyname('aqty_sp').value*100.0/(query1.fieldbyname('csect_sp').value*query1.fieldbyname('alxjs').value);
      query1.fieldbyname('prj1_sp').value:=query1.fieldbyname('csect_sp').value*query1.fieldbyname('alxjs').value*query1.fieldbyname('eff1').value/100.00;
    end else begin
      query1.fieldbyname('eff2_sp').value:=0;
    end;
  end;
  if cttl_sp>0 then begin
    if query1.fieldbyname('eff2_sp').value>0 then
    xlbx_sp:=cttl_sp-cttl_sp*query1.fieldbyname('eff2_sp').value/query1.fieldbyname('eff1').value//cttl_sp-aqty_sp*100.00/query1.fieldbyname('alxjs').value/query1.fieldbyname('eff2_sp').value cttl_sp-cttl_sp*query1.fieldbyname('eff2_sp').value/query1.fieldbyname('eff1').value
    else xlbx_sp:=cttl_sp;
  end else xlbx_sp:=0;

  if query1.fieldbyname('aqty_sp').value=0 then begin
    xlbx_sp:=0; ycbx_sp:=0;
  end;

  query1.fieldbyname('xlbx_sp').value:=xlbx_sp;
  query1.fieldbyname('ycbx_sp').value:=ycbx_sp;
  if ycbx_sp+xlbx_sp>=0 then begin
    query1.fieldbyname('sclhjs').value:=ycbx_sp+xlbx_sp;
    query1.fieldbyname('qyjs').value:=0.0;
  end else begin
    query1.fieldbyname('sclhjs').value:=0.0;
    query1.fieldbyname('qyjs').value:=ycbx_sp+xlbx_sp;
  end;
end;

procedure Tfrmachieving.Query1BeforePost(DataSet: TDataSet);
var
  csect_sp,csect_sp1:Double;
begin
  csect_sp1:=query1.fieldbyname('csect_sp').value;
  with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      commandtext:='select csect_sp from line_shjs where pline=:x1 and seq=:x2 and dt1=:x3';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdate:=query1.fieldbyname('dt1').value;
      open;
      if not fieldbyname('csect_sp').isnull then csect_sp:=fieldbyname('csect_sp').value else csect_sp:=0;
  end;
  if (csect_sp<>csect_sp1) then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdatetime,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftdate,'x6',ptinput);
      commandtext:='insert into tbl_lineaqty(pline,seq,aqty_usr,tm,reasons,dt1) values(:x1,:x2,:x3,:x4,:x5,:x6)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asstring:=frmmain.combobox1.text;
      params[3].asdatetime:=now;
      params[4].asstring:='Sects';
      params[5].asdate:=query1.fieldbyname('dt1').value;
      execute;
    end;
  end;
end;

procedure Tfrmachieving.BitBtn2Click(Sender: TObject);
var
  cfm:boolean;
  cnf,tplant,lbl338:string;
begin
  screen.Cursor:=crSQLWait;
  try
  if query1.state=dsedit then query1.post;
  if query1.active then begin
    {
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='execute procedure sp_swpm_updwk52_fsx(:x1)';
      params[0].asdate:=dateedit1.date;
      execute;
    end;
    }
    if (combobox1.text='CN') or (combobox1.text='GX') then tplant:=''
    else if combobox1.text='GD' then tplant:='SL' else tplant:=combobox1.text;
    with query9 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='select distinct tplant,tshop,line,fsx from week52 where date1=:x1 and fsx>''''';
      if tplant>'' then commandtext:=commandtext+' and tplant='''+tplant+''''
      else if combobox1.text='GX' then begin
        commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
      end else if combobox1.text='CN' then begin
        commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
      end;
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
      if edit1.text>'' then commandtext:=commandtext+' and line='''+edit1.text+'''';
      commandtext:=commandtext+' order by tplant,tshop,line';
      params[0].asdate:=dateedit1.date;
      open;
    end;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select a32s1 from tbl_swpm_gainotepad';
      open;
      lbl338:=fieldbyname('a32s1').value;
    end;
    if frmmain.combobox2.text='English' then begin
      if frmachieving_en=nil then frmachieving_en:=tfrmachieving_en.create(nil);
      if lbl850.caption='SPE' then begin
        frmachieving_en.plant001.caption:=combobox1.text;
        frmachieving_en.ws001.caption:=combobox2.text;
        frmachieving_en.wk001.caption:='Week#: '+inttostr(weekof(dateedit1.date));
        frmachieving_en.zl001.caption:=dbgrideh1.columns[1].footers[0].value;
        frmachieving_en.zpj001.caption:=dbgrideh1.columns[2].footers[0].value;
        frmachieving_en.zjb001.caption:=dbgrideh1.columns[3].footers[0].value;
        frmachieving_en.zqn001.caption:=dbgrideh1.columns[6].footers[0].value;
        frmachieving_en.zstyle001.caption:=dbgrideh1.columns[8].footers[0].value;
        frmachieving_en.zm001.caption:=dbgrideh1.columns[11].footers[0].value;
        frmachieving_en.zp001.caption:=dbgrideh1.columns[12].footers[0].value;
        frmachieving_en.zsqty001.caption:=dbgrideh1.columns[13].footers[0].value;
        frmachieving_en.zpqty001.caption:=dbgrideh1.columns[14].footers[0].value;
        frmachieving_en.zmqty001.caption:=dbgrideh1.columns[15].footers[0].value;
        frmachieving_en.zeot001.caption:=dbgrideh1.columns[19].footers[1].value;
        frmachieving_en.zcsect001.caption:=dbgrideh1.columns[20].footers[1].value;
        frmachieving_en.zsjsh001.caption:=dbgrideh1.columns[21].footers[1].value;
        frmachieving_en.zr001.caption:=dbgrideh1.columns[24].footers[0].value;
        frmachieving_en.zx001.caption:=dbgrideh1.columns[27].footers[0].value;
        frmachieving_en.zprj001.caption:=dbgrideh1.columns[34].footers[0].value;
        frmachieving_en.zaqty001.caption:=dbgrideh1.columns[35].footers[0].value;
        frmachieving_en.zdbl001.caption:=dbgrideh1.columns[36].footers[1].value;
        frmachieving_en.zawf001.caption:=dbgrideh1.columns[38].footers[1].value;
        frmachieving_en.zsjrs001.caption:=dbgrideh1.columns[39].footers[1].value;
        frmachieving_en.xc001.caption:=dbgrideh1.columns[40].footers[1].value;
        frmachieving_en.xc002.caption:=dbgrideh1.columns[41].footers[1].value;
        if dateedit1.date<date then
        frmachieving_en.title_001.caption:='SWPM - Daily 850 GAI & WF Deployment Report **** Review Accomplished Result'
        else frmachieving_en.title_001.caption:='SWPM - Daily 850 GAI & WF Deployment Report **** Today Arrangement';
        frmachieving_en.ppReport4.print;
        frmachieving_en.plant002.caption:=combobox1.text;
        frmachieving_en.ws002.caption:=combobox2.text;
        frmachieving_en.wk002.caption:='Week# '+inttostr(weekof(dateedit1.date));
        frmachieving_en.zl002.caption:=dbgrideh1.columns[1].footers[0].value;
        frmachieving_en.zpj002.caption:=dbgrideh1.columns[2].footers[0].value;
        frmachieving_en.zjb002.caption:=dbgrideh1.columns[3].footers[0].value;
        frmachieving_en.zr002.caption:=dbgrideh1.columns[6].footers[0].value;
        frmachieving_en.zstyle002.caption:=dbgrideh1.columns[8].footers[0].value;
        frmachieving_en.zeff1002.caption:=dbgrideh1.columns[69].footers[1].value;
        frmachieving_en.zprj4002.caption:=dbgrideh1.columns[70].footers[1].value;
        frmachieving_en.zeff2002.caption:=dbgrideh1.columns[71].footers[1].value;
        frmachieving_en.zeff3002.caption:=dbgrideh1.columns[73].footers[1].value;
        frmachieving_en.pplabel338.caption:=lbl338;
        if dateedit1.date<date then
        frmachieving_en.title_002.caption:='SWPM - Daily 850 GAI & WF Deployment Report **** Review Accomplished Result'
        else frmachieving_en.title_002.caption:='SWPM - Daily 850 GAI & WF Deployment Report **** Today Arrangement';
        frmachieving_en.ppReport5.print;
      end;
    end else begin
      if lbl850.caption='SPE' then begin
        plant001.caption:=combobox1.text;
        ws001.caption:=combobox2.text;
        wk001.caption:='第 '+inttostr(weekof(dateedit1.date))+' 週';
        zl001.caption:=dbgrideh1.columns[1].footers[0].value;
        zpj001.caption:=dbgrideh1.columns[2].footers[0].value;
        zjb001.caption:=dbgrideh1.columns[3].footers[0].value;
        zqn001.caption:=dbgrideh1.columns[6].footers[0].value;
        zstyle001.caption:=dbgrideh1.columns[8].footers[0].value;
        zm001.caption:=dbgrideh1.columns[11].footers[0].value;
        zp001.caption:=dbgrideh1.columns[12].footers[0].value;
        zsqty001.caption:=dbgrideh1.columns[13].footers[0].value;
        zpqty001.caption:=dbgrideh1.columns[14].footers[0].value;
        zmqty001.caption:=dbgrideh1.columns[15].footers[0].value;
        zeot001.caption:=dbgrideh1.columns[19].footers[1].value;
        zcsect001.caption:=dbgrideh1.columns[20].footers[1].value;
        zsjsh001.caption:=dbgrideh1.columns[21].footers[1].value;
        zr001.caption:=dbgrideh1.columns[24].footers[0].value;
        zx001.caption:=dbgrideh1.columns[27].footers[0].value;
        zprj001.caption:=dbgrideh1.columns[34].footers[0].value;
        zaqty001.caption:=dbgrideh1.columns[35].footers[0].value;
        zdbl001.caption:=dbgrideh1.columns[36].footers[1].value;
        zawf001.caption:=dbgrideh1.columns[38].footers[1].value;
        zsjrs001.caption:=dbgrideh1.columns[39].footers[1].value;
        xc001.caption:=dbgrideh1.columns[40].footers[1].value;
        xc002.caption:=dbgrideh1.columns[41].footers[1].value;
        if dateedit1.date<date then
        title_001.caption:='SWPM - 每天850產量達標指針和工人調配報告 **** 回顧達成結果'
        else title_001.caption:='SWPM - 每天850產量達標指針和工人調配報告 **** 今天安排';
        ppReport4.print;
        plant002.caption:=combobox1.text;
        ws002.caption:=combobox2.text;
        wk002.caption:='第 '+inttostr(weekof(dateedit1.date))+' 週';
        zl002.caption:=dbgrideh1.columns[1].footers[0].value;
        zpj002.caption:=dbgrideh1.columns[2].footers[0].value;
        zjb002.caption:=dbgrideh1.columns[3].footers[0].value;
        zr002.caption:=dbgrideh1.columns[6].footers[0].value;
        zstyle002.caption:=dbgrideh1.columns[8].footers[0].value;
        zeff1002.caption:=dbgrideh1.columns[69].footers[1].value;
        zprj4002.caption:=dbgrideh1.columns[70].footers[1].value;
        zeff2002.caption:=dbgrideh1.columns[71].footers[1].value;
        zeff3002.caption:=dbgrideh1.columns[73].footers[1].value;
        pplabel338.caption:=lbl338;
        if dateedit1.date<date then
        title_002.caption:='SWPM - 每天850產量達標指針和工人調配報告 **** 回顧達成結果'
        else title_002.caption:='SWPM - 每天850產量達標指針和工人調配報告 **** 今天安排';
        ppReport5.print;
      end;
    end;
  end;
  {
  with query8 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      if opt1.ItemIndex=0 then
      commandtext:='select distinct a.*,b.psect as p1,b.eot as e1,b.tm as tm1,b.prj1,b.prj2,b.prj3,b.prj4 from line_shjs a,tbl_line_shjs b where a.flag=''0'' and a.dt1<=:x1 and a.dt1=:x2 and (a.flag3 is null) '
                  +'and (a.aqty=0 and a.aqty1=0 and (a.csect>0 or a.csect is null)) and a.pline=b.pline and a.seq=b.seq and a.dseq=b.dseq and b.tm=:x3'
      else commandtext:='select distinct a.*,b.psect as p1,b.eot as e1,b.tm as tm1,b.prj1,b.prj2,b.prj3,b.prj4 from line_shjs a,tbl_line_shjs b '
                       +'where a.flag=''0'' and a.dt1<=:x1 and a.dt1=:x2 and (a.flag6 is not null) and a.pline=b.pline and a.seq=b.seq and a.dseq=b.dseq and b.tm=:x3';
      if combobox1.text>'' then begin
        if combobox1.text<>'KBT' then
        commandtext:=commandtext+' and a.tplant='''+combobox1.text+''''
        else commandtext:=commandtext+' and a.tplant=''KB''';
      end;
      if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
      params[0].asdate:=date;
      params[1].asdate:=dateedit1.date;
      params[2].asdatetime:=tm1;
      open;
    end;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if opt1.ItemIndex=0 then
      commandtext:='select cfm from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null)) and cfm=0'
      else commandtext:='select cfm from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and cfm=0';
    end;
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
    if dateedit1.date>0 then begin
      params[0].asdate:=date;
      params[1].asdate:=dateedit1.date;
      open;
      if not fieldbyname('cfm').isnull then cfm:=fieldbyname('cfm').value else cfm:=true;
    end;
  end;
  if query1.Active then begin
   if (combobox2.text>'') or (edit1.text>'') then begin
    with query3 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='select usr1 from tbl_wksremarks where dt1=:x1 and tshop=:x2';
      params[0].asdate:=dateedit1.date;
      params[1].asstring:=combobox2.text;
      open;
      if not fieldbyname('usr1').isnull then cnf:=fieldbyname('usr1').value
      else cnf:='';
    end;
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      if dateedit1.date>0 then begin
        params.createparam(ftdate,'x2',ptinput);
        if opt1.ItemIndex=0 then
        commandtext:='select distinct pline,marks from line_shjs where flag=''0'' and marks>'''' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null))'
        else commandtext:='select distinct pline,marks from line_shjs where flag=''0'' and marks>'''' and dt1<=:x1 and dt1=:x2 and (flag6 is not null)';
      end;
      if combobox1.text>'' then begin
        if combobox1.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox1.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      if dateedit1.date>0 then begin
        params[0].asdate:=date;
        params[1].asdate:=dateedit1.date;
        open;
      end;
    end;
    if combobox1.text>'' then
    fty001.Caption:=combobox1.text
    else fty001.Caption:=query1.fieldbyname('tplant').value;
    shop001.Caption:=combobox2.Text;
    if dateedit1.date>0 then begin
      date001.Caption:=formatdatetime('yyyy/MM/dd',dateedit1.date);
      wkno01.Caption:=inttostr(weekof(dateedit1.date));
    end else begin
      date001.Caption:='    /  /  ';
      wkno01.Caption:='';
    end;
    if opt1.ItemIndex=0 then
    title001.Caption:='('+opt1.Items[0]+')'
    else begin
      if cfm=false then title001.Caption:='* Confirmation - incomplete *'
      else title001.Caption:='* Confirmed *';
    end;
    if pos('test',application.ExeName)>0 then title001.Caption:=title001.Caption+'  - Test';
    if edit1.text>'' then begin
      linex01.Visible:=true;
      line001.Caption:=edit1.text;
      title01.Caption:='LWPM  ----  Line Daily Output Goal Achievement Indicator - Actual index ';
    end else begin
      linex01.Visible:=false;
      line001.Caption:='';
      title01.Caption:='LWPM  ----  Workshop Daily Output Goal Achievement Indicator - Actual index ';
    end;
    if cfm=true then begin
      if cnf>'' then
      conf001.Caption:='Confirmed by:  '+cnf
      else conf001.Caption:='';
    end else conf001.caption:='';
    if lbl850.Caption='SPE' then begin
      ppDBText20.DataField:='AQTY_SP';
      ppDBCalc5.DataField:='AQTY_SP';
      ppDBText21.DataField:='AQTY1_SP';
      ppDBCalc6.DataField:='AQTY1_SP';
      ppDBText22.DataField:='DIFF_SP';
      ppDBCalc7.DataField:='DIFF_SP';
      //ppDBText26.DataField:='EFF2_SP';
      ppDBText31.DataField:='CSECT_SP';
      ppDBCalc11.DataField:='CSECT_SP';
      ppDBText2.DataField:='CEOT_SP';
      ppDBCalc19.DataField:='CEOT_SP';
    end else begin
      ppDBText20.DataField:='AQTY';
      ppDBCalc5.DataField:='AQTY';
      ppDBText21.DataField:='AQTY1';
      ppDBCalc6.DataField:='AQTY1';
      ppDBText22.DataField:='DIFF';
      ppDBCalc7.DataField:='DIFF';
      //ppDBText26.DataField:='EFF2';
      ppDBText31.DataField:='CSECT';
      ppDBCalc11.DataField:='CSECT';
      ppDBText2.DataField:='CEOT';
      ppDBCalc19.DataField:='CEOT';
    end;
    ppReport1.Print;
   end else if combobox1.text>'' then begin
     if frmfgai=nil then frmfgai:=tfrmfgai.Create(nil);
     if combobox1.text<>'KBT' then
     frmfgai.ComboBox1.text:=combobox1.text
     else frmfgai.combobox1.text:='KB';
     frmfgai.DateEdit1.Date:=dateedit1.date;
     frmfgai.DateEdit2.Date:=dateedit1.date;
     with frmfgai.query1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      if dateedit1.date>0 then begin
        params.createparam(ftdate,'x2',ptinput);
        params.createparam(ftdatetime,'x3',ptinput);
        if opt1.ItemIndex=0 then
        commandtext:='select a.*,b.psect as p1,b.eot as e1,b.tm as tm1,b.prj1,b.prj2,b.prj3,b.prj4 from line_shjs a,tbl_line_shjs b where a.flag=''0'' and a.dt1<=:x1 and a.dt1=:x2 and (a.flag3 is null) '
                    +'and (a.aqty=0 and a.aqty1=0 and (a.csect>0 or a.csect is null)) and a.pline=b.pline and a.seq=b.seq and a.dseq=b.dseq and b.tm=:x3'
        else commandtext:='select a.*,b.psect as p1,b.eot as e1,b.tm as tm1,b.prj1,b.prj2,b.prj3,b.prj4 from line_shjs a,tbl_line_shjs b where a.flag=''0'' and a.dt1<=:x1 and a.dt1=:x2 and (a.flag6 is not null) and a.pline=b.pline and a.seq=b.seq and a.dseq=b.dseq and b.tm=:x3';
        if combobox1.text>'' then begin
          if combobox1.text<>'KBT' then
          commandtext:=commandtext+' and a.tplant='''+combobox1.text+''''
          else commandtext:=commandtext+' and a.tplant=''KB''';
        end;
        commandtext:=commandtext+' order by a.tshop,a.tplant';
        params[0].asdate:=date;
        params[1].asdate:=dateedit1.date;
        params[2].asdatetime:=tm1;
        open;
      end;
     end;
     frmfgai.BitBtn1click(self);
   end;
  end;
  }
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmachieving.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmachieving.FormShow(Sender: TObject);
begin
  //combobox2.text:='';
  combobox2.properties.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where tshop is not null and lactive=1';
    open;
    first;
    while not eof do begin
      combobox2.properties.items.Add.Description:=fieldbyname('tshop').value;
      application.ProcessMessages;
      next;
    end;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select rppccfm,r40,rcfm1,r_ppw from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.text;
    open;
    if fieldbyname('rppccfm').value=true then begin
      dbgrideh1.Columns[44].ReadOnly:=false;
    end else begin
      dbgrideh1.columns[44].ReadOnly:=true;
    end;
    if fieldbyname('rcfm1').value=true then begin
      dbgrideh1.Columns[45].ReadOnly:=false;
    end else begin
      dbgrideh1.columns[45].ReadOnly:=true;
    end;
    if fieldbyname('r40').value=true then begin
      dbgrideh1.Columns[46].ReadOnly:=false;
      bitbtn6.Enabled:=true;
    end else begin
      dbgrideh1.columns[46].ReadOnly:=true;
      bitbtn6.Enabled:=false;
    end;
    if fieldbyname('r_ppw').value=true then label12.caption:='1' else label12.caption:='0';
  end;
  vcol:='';
  vstyle:='';
  if lbl850.caption<>'SPE' then
  frmachieving.Caption:=frmachieving.Caption+' - 915 GAI'
  else frmachieving.Caption:=frmachieving.Caption+' - 850 GAI';
end;

procedure Tfrmachieving.GAISummaryforAnalysis1Click(Sender: TObject);
begin
  if frmgaisummary=nil then frmgaisummary:=tfrmgaisummary.create(nil);
  frmgaisummary.show;
end;

procedure Tfrmachieving.GetCorrectDate(const Fty: string; DT: TDateTime);
begin
  if Fty='CL' then begin
    if dayofweek(DT)=2 then begin
      frmGAI_Actionlog.sdt01.date:=DT-2;
      frmGAI_Actionlog.sdt02.date:=DT+4;
    end else if dayofweek(DT)=3 then begin
      frmGAI_Actionlog.sdt01.date:=DT-3;
      frmGAI_Actionlog.sdt02.date:=DT+3;
    end else if dayofweek(DT)=4 then begin
      frmGAI_Actionlog.sdt01.date:=DT-4;
      frmGAI_Actionlog.sdt02.date:=DT+2;
    end else if dayofweek(DT)=5 then begin
      frmGAI_Actionlog.sdt01.date:=DT-5;
      frmGAI_Actionlog.sdt02.date:=DT+1;
    end else if dayofweek(DT)=6 then begin
      frmGAI_Actionlog.sdt01.date:=DT-6;
      frmGAI_Actionlog.sdt02.date:=DT;
    end else if dayofweek(DT)=7 then begin
      frmGAI_Actionlog.sdt01.date:=DT;
      frmGAI_Actionlog.sdt02.date:=DT+6;
    end else if dayofweek(DT)=1 then begin
      frmGAI_Actionlog.sdt01.date:=DT-1;
      frmGAI_Actionlog.sdt02.date:=DT+5;
    end;
  end else begin
    if dayofweek(DT)=2 then begin
      frmGAI_Actionlog.sdt01.date:=DT;
      frmGAI_Actionlog.sdt02.date:=DT+6;
    end else if dayofweek(DT)=3 then begin
      frmGAI_Actionlog.sdt01.date:=DT-1;
      frmGAI_Actionlog.sdt02.date:=DT+5;
    end else if dayofweek(DT)=4 then begin
      frmGAI_Actionlog.sdt01.date:=DT-2;
      frmGAI_Actionlog.sdt02.date:=DT+4;
    end else if dayofweek(DT)=5 then begin
      frmGAI_Actionlog.sdt01.date:=DT-3;
      frmGAI_Actionlog.sdt02.date:=DT+3;
    end else if dayofweek(DT)=6 then begin
      frmGAI_Actionlog.sdt01.date:=DT-4;
      frmGAI_Actionlog.sdt02.date:=DT+2;
    end else if dayofweek(DT)=7 then begin
      frmGAI_Actionlog.sdt01.date:=DT-5;
      frmGAI_Actionlog.sdt02.date:=DT+1;
    end else if dayofweek(DT)=1 then begin
      frmGAI_Actionlog.sdt01.date:=DT-6;
      frmGAI_Actionlog.sdt02.date:=DT;
    end;
  end;
end;

procedure Tfrmachieving.ppDetailBand1BeforePrint(Sender: TObject);
var
  pc001:string;
  sc001,ba001:double;
begin
  if lbl850.Caption='SPE' then begin
    if query8.fieldbyname('eff2_sp').value>0 then eff2002.Caption:=formatfloat('0.00',query8.fieldbyname('eff2_sp').value)
    else eff2002.Caption:='--';
    if not query8.fieldbyname('date1').isnull then date1001.Caption:=formatdatetime('yy/MM/dd',query8.fieldbyname('date1').value)
    else date1001.Caption:='--';

    if query8.fieldbyname('dbxl_sp').value=0 then dbxl01.Caption:='--'
    else dbxl01.caption:=formatfloat('0.00',query8.fieldbyname('dbxl_sp').value);
  end else begin
    if query8.fieldbyname('eff2').value>0 then eff2002.Caption:=formatfloat('0.00',query8.fieldbyname('eff2').value)
    else eff2002.Caption:='--';
    if not query8.fieldbyname('date1').isnull then date1001.Caption:=formatdatetime('yy/MM/dd',query8.fieldbyname('date1').value)
    else date1001.Caption:='--';

    if query8.fieldbyname('dbxl').value=0 then dbxl01.Caption:='--'
    else dbxl01.caption:=formatfloat('0.00',query8.fieldbyname('dbxl').value);
  end;
  with frmachieving.Query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select lbact,rfidp from tblline where pline=:x1';
    params[0].asstring:=frmachieving.Query8.fieldbyname('pline').value;
    open;
    if fieldbyname('lbact').value=false then ppDBText29.Font.Style:=[fsBold]
    else ppDBText29.Font.Style:=[];
    if not fieldbyname('rfidp').isnull then phase001.Caption:=fieldbyname('rfidp').value
    else phase001.Caption:='0';
  end;
  //pcflag1 & scqty1 & bal001
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select cfmd from tbl_lwo_dt where pline=:x1 and seq=:x2';
    params[0].asstring:=frmachieving.Query8.fieldbyname('pline').value;
    params[1].asinteger:=frmachieving.Query8.fieldbyname('seq').value;
    open;
    if fieldbyname('cfmd').isnull then pc001:='0'
    else if fieldbyname('cfmd').value=true then pc001:='1'
    else pc001:='0';
 end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(pqty) as q1,sum(tqty) as q2 from tbl_lwo where pline=:x1 and seq=:x2';
    params[0].asstring:=frmachieving.Query8.fieldbyname('pline').value;
    params[1].asinteger:=frmachieving.Query8.fieldbyname('seq').value;
    open;
    if not fieldbyname('q1').isnull then begin
      if pc001='0' then sc001:=fieldbyname('q1').value
      else sc001:=fieldbyname('q2').value;
    end else sc001:=query1.fieldbyname('scqty').value;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='select sum(diff) as q3 from line_shjs where pline=:x1 and seq=:x2 and dt1<=:x3 and flag=''0''';
    params[0].asstring:=frmachieving.Query8.fieldbyname('pline').value;
    params[1].asinteger:=frmachieving.Query8.fieldbyname('seq').value;
    params[2].asdate:=frmachieving.Query8.fieldbyname('dt1').value;
    open;
    if not fieldbyname('q3').isnull then ba001:=fieldbyname('q3').value
    else ba001:=0; 
  end;
  if pc001='0' then pcflag1.Caption:='p'
  else pcflag1.Caption:='C';
  scqty01.Caption:=formatfloat('#0',sc001);
  bal001.Caption:=formatfloat('#0',sc001-ba001);
  application.ProcessMessages;
  if not query8.fieldbyname('lst1').isnull then begin
    if query8.fieldbyname('lst1').value<>'z' then begin
      lst1001.Caption:=query8.fieldbyname('lst1').value;
      ksjs1001.Caption:=formatfloat('0.0',query8.fieldbyname('ksjs1').value);
    end else begin
      lst1001.Caption:='';
      ksjs1001.Caption:='';
    end;
  end else begin
    lst1001.Caption:='';
    ksjs1001.Caption:='';
  end;

  prj001.Caption:=formatfloat('#0',frmachieving.Query8.fieldbyname('prj1').value);
  prj002.Caption:=formatfloat('#0.00',frmachieving.Query8.fieldbyname('prj2').value);
  prj003.Caption:=formatfloat('#0.0',frmachieving.Query8.fieldbyname('prj3').value);
  if frmachieving.Query8.fieldbyname('lstr').value>frmachieving.Query8.fieldbyname('sjrs').value then r02.Font.Color:=clRed
  else if frmachieving.Query8.fieldbyname('lstr').value<frmachieving.Query8.fieldbyname('sjrs').value then r02.Font.color:=clGreen
  else r02.Font.Color:=clBlack;
  if frmachieving.Query8.fieldbyname('trs').value>frmachieving.Query8.fieldbyname('sjyc').value then j02.Font.Color:=clRed
  else if frmachieving.Query8.fieldbyname('trs').value<frmachieving.Query8.fieldbyname('sjyc').value then j02.Font.color:=clGreen
  else j02.Font.Color:=clBlack;
  if frmachieving.Query8.fieldbyname('lflag1').value>frmachieving.Query8.fieldbyname('prj3').value then begin
    prj001.Font.Color:=clRed;
    prj002.Font.Color:=clRed;
    prj003.Font.Color:=clRed;
  end else if frmachieving.Query8.fieldbyname('lflag1').value<frmachieving.Query8.fieldbyname('prj3').value then begin
    prj001.Font.Color:=clGreen;
    prj002.Font.Color:=clGreen;
    prj003.Font.Color:=clGreen;
  end else begin
    prj001.Font.Color:=clBlack;
    prj002.Font.Color:=clBlack;
    prj003.Font.Color:=clBlack;
  end;
  if frmachieving.Query8.fieldbyname('pqty').value=0 then begin
    prj001.Font.Color:=clBlack;
    prj002.Font.Color:=clBlack;
    prj003.Font.Color:=clBlack;
    lflag1001.Caption:='--';
    lflag1002.Caption:='--';
    lflag1003.Caption:='--';
    lflag1004.Caption:='--';
  end else begin
    lflag1001.Caption:=formatfloat('0.0',frmachieving.Query8.fieldbyname('lflag1').value);
    lflag1002.Caption:=formatfloat('#0',frmachieving.Query8.fieldbyname('pqty').value);
    lflag1003.Caption:=formatfloat('0.00',frmachieving.Query8.fieldbyname('shjs').value);
    lflag1004.Caption:=formatfloat('0.00',frmachieving.Query8.fieldbyname('eff1').value);
  end;
end;

procedure Tfrmachieving.BitBtn3Click(Sender: TObject);
begin
  if query1.Active then begin
    if not query1.fieldbyname('pline').isnull then begin
      if frmtrsummary=nil then frmtrsummary:=tfrmtrsummary.Create(nil);
      frmtrsummary.Edit1.Text:=query1.fieldbyname('j_no').value;
      frmtrsummary.Edit2.Text:=query1.fieldbyname('j2_job').value;
      frmtrsummary.Edit3.Text:=query1.fieldbyname('rwo').value;
      frmtrsummary.Show;
    end;
  end;
end;

procedure Tfrmachieving.ppSummaryBand1BeforePrint(Sender: TObject);
var
  s1,s2,s3,s4,s5:string;
begin
  s1:='';s2:='';s3:='';s4:='';s5:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if opt1.ItemIndex=0 then
      commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4,count(distinct acol) as s5 '
                  +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (csect>0 or csect is null)) and (flag3 is null)'
      else
      commandtext:='select count(distinct cstyle) as c1,count(distinct pline) as p1,count(distinct j_no) as p2,count(*) as s4,count(distinct acol) as s5 '
                  +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null)';
    end;
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
    params[0].asdate:=date;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('p2').isnull then s1:='project :  '+fieldbyname('p2').asstring+'    ';
    if not fieldbyname('c1').IsNull then s2:='cust style :  '+fieldbyname('c1').asstring+'    ';
    if not fieldbyname('p1').isnull then s3:='line :  '+fieldbyname('p1').asstring+'    ';
    if not fieldbyname('s4').isnull then s4:='QN :  '+fieldbyname('s4').asstring+'    ';
    if not fieldbyname('s5').isnull then s5:='Clr :  '+fieldbyname('s5').asstring+'    ';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if opt1.ItemIndex=0 then
      commandtext:='select sum(eff2*(csect+ceot))/sum(csect+ceot) as s2 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (csect+ceot>0 or csect is null)) and (flag3 is null) and csect+ceot>0'
      else
      commandtext:='select sum(eff2*(csect+ceot))/sum(csect+ceot) as s2 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect+ceot>0';
    end;
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
    params[0].asdate:=date;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s2').isnull then x003.Caption:=formatfloat('0.00',fieldbyname('s2').value)
    else x003.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if opt1.ItemIndex=0 then
      commandtext:='select sum(eff1*(csect+ceot))/sum(csect+ceot) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (csect+ceot>0 or csect is null)) and (flag3 is null) and csect+ceot>0 and pqty>0'
      else
      commandtext:='select sum(eff1*(csect+ceot))/sum(csect+ceot) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect+ceot>0 and pqty>0';
    end;
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
    params[0].asdate:=date;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s1').isnull then x002.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else x002.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftdatetime,'x3',ptinput);
      if opt1.ItemIndex=0 then
      commandtext:='select sum(b.prj4*(a.csect+a.ceot))/sum(a.csect+a.ceot) as s1 from line_shjs a,tbl_line_shjs b where a.flag=''0'' and a.dt1<=:x1 and a.dt1=:x2 '
                  +'and (a.aqty=0 and a.aqty1=0 and (a.csect+a.ceot>0 or a.csect is null)) and (a.flag3 is null) and a.csect+a.ceot>0 and a.pline=b.pline and a.seq=b.seq and a.dseq=b.dseq and b.tm=:x3'
      else
      commandtext:='select sum(b.prj4*(a.csect+a.ceot))/sum(a.csect+a.ceot) as s1 from line_shjs a,tbl_line_shjs b where a.flag=''0'' and a.dt1<=:x1 and a.dt1=:x2 '
                  +'and (a.flag6 is not null) and a.csect+a.ceot>0 and a.pline=b.pline and a.seq=b.seq and a.dseq=b.dseq and b.tm=:x3';
    end;
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and a.tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and a.tplant=''KB''';
    end;
    //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    if edit1.text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
    params[0].asdate:=date;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    params[2].asdatetime:=frmachieving.Query8.fieldbyname('tm1').value;
    open;
    if not fieldbyname('s1').isnull then x005.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else x005.Caption:='0.00';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if opt1.ItemIndex=0 then
      commandtext:='select sum(dbxl*(ceot+csect))/sum(ceot+csect) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (ceot>0 or csect is null)) and (flag3 is null) and (ceot+csect)>0 and dbxl>0'
      else
      commandtext:='select sum(dbxl*(ceot+csect))/sum(ceot+csect) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (ceot+csect)>0 and dbxl>0';
    end;
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
    params[0].asdate:=date;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s1').isnull then dbxl02.Caption:=formatfloat('0.00',fieldbyname('s1').value)
    else dbxl02.Caption:='0.00';
  end;
  total001.Caption:=s1+s2+s3+s4+s5;
end;

procedure Tfrmachieving.DBGridEh1TitleClick(Column: TColumnEh);
var
  r26,r27,r28,r29,r30,r31,r32,r33,r34,r41,r43:boolean;
  ci,cj:integer;
begin
  with query2 do begin
    close;
    params.clear;
    commandtext:='select r26,r27,r28,r29,r30,r31,r32,r33,r34,r41,r43 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    r26:=fieldbyname('r26').value;
    r27:=fieldbyname('r27').value;
    r28:=fieldbyname('r28').value;
    r29:=fieldbyname('r29').value;
    r30:=fieldbyname('r30').value;
    r31:=fieldbyname('r31').value;
    r32:=fieldbyname('r32').value;
    r33:=fieldbyname('r33').value;
    r34:=fieldbyname('r34').value;
    r41:=fieldbyname('r41').value;
    r43:=fieldbyname('r43').value;
  end;
  if column=dbgrideh1.Columns[7] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='6';
    frmflag.Caption:='標幟 - Product Category/產品種類';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      //params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=6';
      open;
    end;
    if r27 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if column=dbgrideh1.Columns[68] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='11';
    //frmflag.Caption:='Flag Explanation - Scheduling ahead or behind / 排程前移或落后';
    frmflag.Caption:='標幟 - Impact Code/衝擊顯示';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      //params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=11';
      open;
    end;
    if r34 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  {
  end else if column=dbgrideh1.Columns[60] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='2';
    frmflag.Caption:='標幟 - Define this QN''s SAH with LB or not/確定此數頁之SAH是否要設定拉平衡';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      params[0].asinteger:=2;
      open;
    end;
    if r30 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  }
  end else if column=dbgrideh1.Columns[30] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='4';
    frmflag.Caption:='標幟 - Arranged phase of line eff as at date(on-std)/安排當日段拉效率(制作中規範)';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      //params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=4';
      open;
    end;
    if r31 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if column=dbgrideh1.Columns[23] then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='3';
    frmflag.Caption:='標幟 - QN/SQN Process at workshop[As at Date]/數頁/游數頁流程-車間[當日]';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      //params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=3';
      open;
    end;
    if r32 then begin
      frmflag.DBGridEh1.ReadOnly:=false;
      frmflag.DBMemo1.ReadOnly:=false;
      frmflag.BitBtn1.Enabled:=true;
      frmflag.BitBtn2.Enabled:=true;
    end else begin
      frmflag.DBGridEh1.ReadOnly:=true;
      frmflag.DBMemo1.ReadOnly:=true;
      frmflag.BitBtn1.Enabled:=false;
      frmflag.BitBtn2.Enabled:=false;
    end;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else begin
    ci:=column.index+1;
    for cj:=0 to column.index do begin
      if dbgrideh1.columns[cj].visible=false then ci:=ci-1;
    end;
    if dbgrideh1.frozencols=0 then dbgrideh1.frozencols:=ci//column.index+1
    else dbgrideh1.frozencols:=0;
  end;
end;

procedure Tfrmachieving.DBGridEh1DblClick(Sender: TObject);
var
  dif:string;
  flg_al:string;
  sdt01,sdt02:tdatetime;
  fty:string;
begin
  if dbgrideh1.SelectedIndex=35 then begin
    fty:=Query1.FieldByName('tplant').Value;
    dif:='1';
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      if lbl850.caption='SPE' then
      commandtext:='select seq from line_shjs_remarks1_sp where pline=:x1 and seq=:x2 and dt1=:x3'
      else commandtext:='select seq from line_shjs_remarks1 where pline=:x1 and seq=:x2 and dt1=:x3';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asdate:=query1.fieldbyname('dt1').value;
      open;
      if not fieldbyname('seq').isnull then dif:='1' else dif:='2';
    end;
    if lbl850.caption='SPE' then begin
      if not query1.fieldbyname('marks_sp').isnull then begin
        if query1.fieldbyname('marks_sp').value>'' then dif:='2'
        else dif:='1';
      end else dif:='1';
    end else begin
      if not query1.fieldbyname('marks').isnull then begin
        if query1.fieldbyname('marks').value>'' then dif:='2'
        else dif:='1';
      end else dif:='1';
    end;

    //'0': old - notepad; '1': new - action log
    flg_al:='0';
    //{
    with query2 do begin
      close;
      params.clear;
      commandtext:='select flg_al from tbl_gaiactionlog_flag1 where tplant='''+fty+'''';
      open;
      if not fieldbyname('flg_al').isnull then flg_al:=fieldbyname('flg_al').value
      else flg_al:='0';
    end;
    //}
    //flg_al:='1';  //test only

    if flg_al='1' then begin
      //Enter into actoin log screen:
      if frmGAI_Actionlog=nil then frmGAI_Actionlog:=tfrmGAI_Actionlog.Create(nil);
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        if lbl850.caption='SPE' then
        commandtext:='execute procedure sp_line_shjs_remarks_new_sp(:x1,:x2,:x3)'
        else commandtext:='execute procedure sp_line_shjs_remarks_new(:x1,:x2,:x3)';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asdate:=query1.fieldbyname('dt1').value;
        execute;
      end;
      //ShowMessage('0');
      Getcorrectdate(combobox1.text,dateedit1.date);
      //ShowMessage('1');
      frmGAI_Actionlog.Label9.Caption:='850GAI';
      frmGAI_Actionlog.Label10.Caption:=query1.fieldbyname('seq').asstring;
      frmGAI_Actionlog.lblfty.caption:=query1.fieldbyname('tplant').value;
      frmGAI_Actionlog.lblws.caption:=query1.fieldbyname('tshop').value;
      frmGAI_Actionlog.lblline.caption:=query1.fieldbyname('pline').value;
      frmGAI_Actionlog.lblqn.caption:=query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('cwo_n').value+'-'+query1.fieldbyname('fccs').value;
      frmGAI_Actionlog.dateedit1.date:=query1.fieldbyname('dt1').value;
      frmGAI_Actionlog.pgc1.activepage:=frmGAI_Actionlog.ts1;
      //ShowMessage('2');
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select cstyle,acol,scqty,case when at3 is not null then at3 else dt3 end as t3dd from tblshedule where pline=:x1 and seq=:x2';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        open;
        if not fieldbyname('cstyle').isnull then frmGAI_Actionlog.lblcstyle.caption:=fieldbyname('cstyle').value;
        if not fieldbyname('acol').isnull then frmGAI_Actionlog.lblclr.caption:=fieldbyname('acol').value;
        if not fieldbyname('scqty').isnull then frmGAI_Actionlog.lblqty.caption:=fieldbyname('scqty').asstring;
        if not fieldbyname('t3dd').isnull then frmGAI_Actionlog.lblt3dt.caption:=formatdatetime('MM/DD',fieldbyname('t3dd').value);
      end;
      //ShowMessage(FormatDateTime('yyyy/mm/dd',query1.FieldByName('dt1').Value));
      //ShowMessage('3');
      with frmGAI_Actionlog.Query4 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        commandtext:='select * from line_shjs_remarks_new1 where pline=:x1 and seq=:x2 and dt1=:x3 and chk=1 and spe=''SPE''';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        Params[2].AsDate:=frmGAI_Actionlog.dateedit1.date;//query1.FieldByName('dt1').Value;
        open;
      end;
      //ShowMessage('4');
      frmGAI_Actionlog.Show;
      //ShowMessage('5');
    end else if flg_al='0' then begin
      if dif='2' then begin
        if frmganote=nil then frmganote:=tfrmganote.Create(nil);
        frmganote.DBText1.DataSource:=frmachieving.datasource1;
        frmganote.DBText2.DataSource:=frmachieving.datasource1;
        frmganote.DBText3.DataSource:=frmachieving.datasource1;
        frmganote.DBText4.DataSource:=frmachieving.datasource1;
        frmganote.DBText5.DataSource:=frmachieving.datasource1;
        frmganote.DBMemo1.DataBinding.DataSource:=frmachieving.datasource1;
        if lbl850.caption='SPE' then
        frmganote.DBMemo1.DataBinding.DataField:='MARKS_SP'
        else frmganote.DBMemo1.DataBinding.DataField:='MARKS';
        frmganote.Label6.caption:='ACHI';
        frmganote.lbl850.caption:=lbl850.caption;
        frmganote.Show;
      end else if dif='1' then begin
        if frmgai_notepad_chn=nil then frmgai_notepad_chn:=tfrmgai_notepad_chn.Create(nil);
        with ROQuery1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftdate,'x3',ptinput);
          if lbl850.caption='SPE' then
          commandtext:='execute procedure sp_line_shjs_remarks_new_sp(:x1,:x2,:x3)'
          else commandtext:='execute procedure sp_line_shjs_remarks_new(:x1,:x2,:x3)';
          params[0].asstring:=query1.fieldbyname('pline').value;
          params[1].asinteger:=query1.fieldbyname('seq').value;
          params[2].asdate:=query1.fieldbyname('dt1').value;
          execute;
        end;
        frmgai_notepad_chn.Label41.Caption:='ACHI';
        frmgai_notepad_chn.lbl850.caption:=lbl850.caption;
        frmgai_notepad_chn.Show;
      end;
    end;
  end;
end;

procedure Tfrmachieving.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if column.fieldname='DBL_SP' then begin
    if (query1.fieldbyname('dbl_sp').value>0.00) and (query1.fieldbyname('dbl_sp').value<99.995) then
    DBGridEh1.canvas.font.color:=clRed
    else DBGridEh1.canvas.font.color:=clBlack;
  end;
  if column.fieldname='ALRS' then begin
    if (query1.fieldbyname('alrs').value<query1.fieldbyname('mwfsc').value) and (query1.fieldbyname('alrs').value>0.00) then
    DBGridEh1.canvas.font.color:=clRed
    else DBGridEh1.canvas.font.color:=clBlack;
  end;
  DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrmachieving.DBGridEh1Columns13EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  {
  if frmttlcsh=nil then frmttlcsh:=tfrmttlcsh.Create(nil);
  frmttlcsh.DBText1.DataSource:=frmachieving.DataSource1;
  frmttlcsh.DBText2.DataSource:=frmachieving.DataSource1;
  frmttlcsh.DBText3.DataSource:=frmachieving.DataSource1;
  frmttlcsh.DBText4.DataSource:=frmachieving.DataSource1;
  frmttlcsh.DBText5.DataSource:=frmachieving.DataSource1;
  frmttlcsh.DBText6.DataSource:=frmachieving.DataSource1;
  frmttlcsh.DateEdit1.Date:=frmachieving.query1.fieldbyname('dt1').value;
  frmttlcsh.Label4.Caption:='ACHIEVE';
  if pos('F',query1.fieldbyname('pline').value)>0 then begin
    frmttlcsh.Label31.Visible:=true;
    frmttlcsh.Edit1.Visible:=true;
  end else begin
    frmttlcsh.Label31.Visible:=false;
    frmttlcsh.Edit1.Visible:=false;
  end;
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='execute procedure sp_genqncalendar(:x1,:x2,:x3)';
    params[0].asstring:=frmachieving.query1.fieldbyname('pline').value;
    params[1].asinteger:=frmachieving.query1.fieldbyname('seq').value;
    params[2].asdate:=frmachieving.query1.fieldbyname('dt1').value;
    execute;
  end;
  frmttlcsh.qns001.caption:='1';
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(*) as cnt from line_shjs where pline=:x1 and dt1=:x2 and mpsect_sp>0 and flag=''0''';
    params[0].asstring:=frmachieving.query1.fieldbyname('pline').value;
    params[1].asdate:=frmachieving.query1.fieldbyname('dt1').value;
    open;
    if not fieldbyname('cnt').isnull then begin
      frmttlcsh.qns001.caption:=fieldbyname('cnt').asstring;
    end;
  end;
  frmttlcsh.speedbutton1.visible:=true;
  frmttlcsh.Show;
  }
  if lbl850.caption='SPE' then begin
  if frmttlcsh1=nil then frmttlcsh1:=tfrmttlcsh1.Create(nil);
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x3',ptinput);
    commandtext:='execute procedure sp_genqncalendar_line(:x1,:x3)';
    params[0].asstring:=frmachieving.query1.fieldbyname('pline').value;
    params[1].asdate:=frmachieving.query1.fieldbyname('dt1').value;
    execute;
  end;
  frmttlcsh1.qns001.caption:='1';
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select count(*) as cnt from line_shjs where pline=:x1 and dt1=:x2 and mpsect_sp>0 and flag=''0''';
    params[0].asstring:=frmachieving.query1.fieldbyname('pline').value;
    params[1].asdate:=frmachieving.query1.fieldbyname('dt1').value;
    open;
    if not fieldbyname('cnt').isnull then begin
      frmttlcsh1.qns001.caption:=fieldbyname('cnt').asstring;
    end;
  end;
  with frmttlcsh1.query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from qn_calendar where pline=:x1 and dt1=:x2';
    params[0].asstring:=frmachieving.query1.fieldbyname('pline').value;
    params[1].asdate:=frmachieving.query1.fieldbyname('dt1').value;
    open;
  end;
  with frmttlcsh1.week52 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select * from week52 where line=:x1 and date1=:x2';
    params[0].asstring:=frmachieving.query1.fieldbyname('pline').value;
    params[1].asdate:=frmachieving.query1.fieldbyname('dt1').value;
    open;
  end;
  if frmttlcsh1.qns001.caption='1' then
  frmttlcsh1.speedbutton1.visible:=false
  else frmttlcsh1.speedbutton1.visible:=true;
  frmttlcsh1.Show;
  end;
end;

procedure Tfrmachieving.DBGridEh1Columns21EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dt1:tdate;
  pline:string;
  seq:integer;
  tm:tdatetime;
  r12:boolean;
  pstr:string;
  flag3:string;
begin
  pline:=query1.fieldbyname('pline').value;
  seq:=query1.fieldbyname('seq').value;
  with query3 do begin
    close;
    params.clear;
    PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
    PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
    commandtext:='select flag3 from tblshedule where pline=:x1 and seq=:x2';
    PARAMS[0].ASSTRING:=pline;
    PARAMS[1].ASINTEGER:=seq;
    open;
    if not fieldbyname('flag3').isnull then flag3:=fieldbyname('flag3').value else flag3:='';
  end;
  tm:=now;
  with query3 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if not fieldbyname('r12').isnull then r12:=fieldbyname('r12').value else r12:=false;
  end;
    if r12=true then begin
      if ((flag3>'')) then begin
        WITH ROQuery1 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          params.createparam(ftdatetime,'x3',ptinput);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_DIVIDEDSHJS(:X1,:X2,:x3)';
          PARAMS[0].ASSTRING:=pline;
          PARAMS[1].ASINTEGER:=seq;
          params[2].asdatetime:=tm;
          EXECUTE;
        END;
        WITH ROQuery1 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_updlineshjs_001(:X1,:X2)';
          PARAMS[0].ASSTRING:=pline;
          PARAMS[1].ASINTEGER:=seq;
          EXECUTE;
        END;
      end;
        WITH ROQuery1 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_updlineshjslst(:X1,:X2)';
          PARAMS[0].ASSTRING:=pline;
          PARAMS[1].ASINTEGER:=seq;
          EXECUTE;
        END;
        with query3 do begin
          close;
          params.clear;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          commandtext:='select min(dt1) as dt from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and ksjs>0 order by dt1';
          PARAMS[0].ASSTRING:=pline;
          PARAMS[1].ASINTEGER:=seq;
          open;
          if not fieldbyname('dt').isnull then dt1:=fieldbyname('dt').value else dt1:=encodedate(1899,12,30);
        end;
      //end;
        {
    pstr:='5 '+query1.fieldbyname('pline').value+' '+query1.fieldbyname('seq').asstring;
    if pos('test',lowercase(application.ExeName))>0 then
    winexec(pchar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
    else winexec(pchar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
    }
    end;
        if frmzktd=nil then frmzktd:=tfrmzktd.create(nil);
        frmzktd.lbl850.Caption:=lbl850.Caption;
        if lbl850.Caption='SPE' then begin
          frmzktd.DBGridEh1.columns[26].FieldName:='AQTY_SP';
          frmzktd.DBGridEh1.columns[27].FieldName:='AQTY1_SP';
          frmzktd.DBGridEh1.columns[28].FieldName:='DIFF_SP';
          frmzktd.DBGridEh1.columns[31].FieldName:='DBXL_SP';
          frmzktd.DBGridEh1.columns[34].FieldName:='EFF2_SP';
          frmzktd.DBGridEh1.columns[5].FieldName:='csect_SP';
          frmzktd.DBGridEh1.columns[30].FieldName:='ceot_SP';
        end else begin
          frmzktd.DBGridEh1.columns[26].FieldName:='AQTY';
          frmzktd.DBGridEh1.columns[27].FieldName:='AQTY1';
          frmzktd.DBGridEh1.columns[28].FieldName:='DIFF';
          frmzktd.DBGridEh1.columns[31].FieldName:='DBXL';
          frmzktd.DBGridEh1.columns[34].FieldName:='EFF2';
          frmzktd.DBGridEh1.columns[5].FieldName:='csect';
          frmzktd.DBGridEh1.columns[30].FieldName:='ceot';
        end;
        with frmzktd.query1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'pline',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from line_shjs where pline=:x1 and seq=:x2 AND FLAG=''0''';
          params[0].asstring:=pline;
          params[1].asinteger:=seq;
          open;
        end;
        frmzktd.DBText1.DataSource:=datasource1;
        frmzktd.DBText2.DataSource:=datasource1;
        frmzktd.DBText3.DataSource:=datasource1;
        frmzktd.DBText4.DataSource:=datasource1;
        frmzktd.DBText5.DataSource:=datasource1;
        frmzktd.DBText6.DataSource:=datasource1;
        frmzktd.DBText7.DataSource:=datasource1;
        frmzktd.DBText8.DataSource:=datasource1;
        frmzktd.Show;
end;

procedure Tfrmachieving.DBGridEh1Columns8EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
    //create or view LWO
    if frmlwo=nil then frmlwo:=tfrmlwo.create(nil);
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_tbllwo(:x1,:x2)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      execute;
    end;
    frmlwo.Label8.Caption:='GAI';
    with frmlwo.Query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tbl_lwo where pline=:x1 and seq=:x2';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      open;
    end;
    frmlwo.dbtext1.DataSource:=DataSource1;
    frmlwo.dbtext2.DataSource:=DataSource1;
    frmlwo.dbtext3.DataSource:=DataSource1;
    frmlwo.dbtext4.DataSource:=DataSource1;
    frmlwo.dbtext5.DataSource:=DataSource1;
    frmlwo.dbtext6.DataSource:=DataSource1;
    frmlwo.dbtext7.DataSource:=DataSource1;
    frmlwo.dbtext9.DataSource:=DataSource1;
    frmlwo.show;
end;

procedure Tfrmachieving.ppGroupFooterBand1BeforePrint(Sender: TObject);
var
  f01,f02,f03,f04,f05,f06,f07,f08,f09,f10,f11,p1,p2,p3:double;
  str1,str2:string;
  s1,s2,s3,s4:string;
  lt1,p4,p5:double;
  w1,w2:double;
begin
  f01:=0;f02:=0;f03:=0;f04:=0;f05:=0;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if opt1.ItemIndex=0 then
      commandtext:='select distinct pline,lstr,trs,sjrs1,sjrs2,sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null))'
      else commandtext:='select distinct pline,lstr,trs,sjrs1,sjrs2,sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null)';
      if combobox1.text>'' then begin
        if combobox1.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox1.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      params[0].asdate:=date;
      params[1].asdate:=dateedit1.date;
      open;
      first;
      while not eof do begin
        f01:=f01+fieldbyname('lstr').value;
        //f02:=f02+fieldbyname('trs').value;
        f03:=f03+fieldbyname('sjrs1').value;
        f04:=f04+fieldbyname('sjrs2').value;
        //f05:=f05+fieldbyname('sjyc').value;
        application.ProcessMessages;
        next;
      end;
    end;
  end;

  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if opt1.ItemIndex=0 then
      commandtext:='select distinct pline,trs,sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null)) and csect=0'
      else commandtext:='select distinct pline,trs,sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect=0';
      if combobox1.text>'' then begin
        if combobox1.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox1.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      params[0].asdate:=date;
      params[1].asdate:=dateedit1.date;
      open;
      first;
      while not eof do begin
        f02:=f02+fieldbyname('trs').value;
        f05:=f05+fieldbyname('sjyc').value;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  f01:=0;f03:=0;f04:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if lbl850.caption='SPE' then begin
        if opt1.ItemIndex=0 then
        commandtext:='select distinct pline,sum(trs*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as trs,sum(sjyc*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as sjyc,'
                    +'sum(lstr*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s1,sum(sjrs1*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s2,sum(sjrs2*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s3 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty_sp=0 and aqty1_sp=0 and (csect_sp>0 or csect_sp is null)) and (csect_sp+ceot_sp)>0'
        else
        commandtext:='select distinct pline,sum(trs*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as trs,sum(sjyc*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as sjyc,'
                    +'sum(lstr*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s1,sum(sjrs1*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s2,sum(sjrs2*(csect_sp+ceot_sp))/sum(csect_sp+ceot_sp) as s3 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (csect_sp+ceot_sp)>0';
      end else begin
        if opt1.ItemIndex=0 then
        commandtext:='select distinct pline,sum(trs*(csect+ceot))/sum(csect+ceot) as trs,sum(sjyc*(csect+ceot))/sum(csect+ceot) as sjyc,'
                    +'sum(lstr*(csect+ceot))/sum(csect+ceot) as s1,sum(sjrs1*(csect+ceot))/sum(csect+ceot) as s2,sum(sjrs2*(csect+ceot))/sum(csect+ceot) as s3 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null)) and (csect+ceot)>0'
        else
        commandtext:='select distinct pline,sum(trs*(csect+ceot))/sum(csect+ceot) as trs,sum(sjyc*(csect+ceot))/sum(csect+ceot) as sjyc,'
                    +'sum(lstr*(csect+ceot))/sum(csect+ceot) as s1,sum(sjrs1*(csect+ceot))/sum(csect+ceot) as s2,sum(sjrs2*(csect+ceot))/sum(csect+ceot) as s3 '
                    +'from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (csect+ceot)>0';
      end;
      if combobox1.text>'' then begin
        if combobox1.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox1.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      commandtext:=commandtext+' group by pline';
      params[0].asdate:=date;
      params[1].asdate:=dateedit1.date;
      open;
      first;
      while not eof do begin
        f01:=f01+fieldbyname('s1').value;
        f03:=f03+fieldbyname('s2').value;
        f04:=f04+fieldbyname('s3').value;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  f02:=0;f05:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if lbl850.caption='SPE' then begin
        if opt1.ItemIndex=0 then
        commandtext:='select distinct pline,sum(trs*csect_sp)/sum(csect_sp) as trs,sum(sjyc*csect_sp)/sum(csect_sp) as sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) '
                    +'and (aqty_sp=0 and aqty1_sp=0 and (csect_sp>0 or csect_sp is null)) and csect_sp>0'
        else commandtext:='select distinct pline,sum(trs*csect_sp)/sum(csect_sp) as trs,sum(sjyc*csect_sp)/sum(csect_sp) as sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect_sp>0';
      end else begin
        if opt1.ItemIndex=0 then
        commandtext:='select distinct pline,sum(trs*csect)/sum(csect) as trs,sum(sjyc*csect)/sum(csect) as sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null)) and csect>0'
        else commandtext:='select distinct pline,sum(trs*csect)/sum(csect) as trs,sum(sjyc*csect)/sum(csect) as sjyc from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and csect>0';
      end;
      if combobox1.text>'' then begin
        if combobox1.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox1.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      commandtext:=commandtext+' group by pline';
      params[0].asdate:=date;
      params[1].asdate:=dateedit1.date;
      open;
      first;
      while not eof do begin
        f02:=f02+fieldbyname('trs').value;
        f05:=f05+fieldbyname('sjyc').value;
        application.ProcessMessages;
        next;
      end;
    end;
  end;

  lstr01.Caption:=formatfloat('0.0',f01);
  trs01.Caption:=formatfloat('0.0',f02);
  sjrs101.Caption:=formatfloat('0.0',f03);
  sjrs201.Caption:=formatfloat('0.0',f04);
  sjrs01.Caption:=formatfloat('0.0',f03+f04);
  sjyc01.Caption:=formatfloat('0.0',f05);

  ppMemo1.Lines.Clear;
  ppMemo1.Lines.add('Linkage Time(LT):'+'      as at  '+copy(date001.Caption,3,15));
  lt1:=0;
  p5:=0;
  with query3 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    commandtext:='select csect from week52 where line=:x1 and date1=:x2';
    params[0].asstring:=query8.fieldbyname('pline').value;
    params[1].asdate:=query8.fieldbyname('dt1').value;
    open;
    if not fieldbyname('csect').isnull then p5:=fieldbyname('csect').value else p5:=0;
  end;
  //try
  with frmachieving.query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x0',ptinput);
    params.createparam(ftdate,'x1',ptinput);
    params.createparam(ftdate,'x2',ptinput);
    params.createparam(ftfloat,'x3',ptinput);
    commandtext:='select distinct pline,seq from tblshedule where ltc_ksrq=:x0';
    if frmachieving.combobox1.text>'' then begin
      if frmachieving.combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+frmachieving.combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    //if frmachieving.combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+frmachieving.combobox2.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    if frmachieving.edit1.text>'' then commandtext:=commandtext+' and pline='''+frmachieving.edit1.text+'''';
    commandtext:=commandtext+' union select distinct pline,max(seq) as seq from tblshedule b where ((cfwcrq=:x1) or (ltc_ksrq=:x2)) and cfwcjs<:x3';
    if frmachieving.combobox1.text>'' then begin
      if frmachieving.combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+frmachieving.combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    //if frmachieving.combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+frmachieving.combobox2.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    if frmachieving.edit1.text>'' then commandtext:=commandtext+' and pline='''+frmachieving.edit1.text+'''';
    commandtext:=commandtext+' and (ltc_ksrq is not null) group by pline';
    params[0].asdate:=frmachieving.Query8.fieldbyname('dt1').value;//frmachieving.dateedit1.Date+1;
    params[1].asdate:=frmachieving.Query8.fieldbyname('dt1').value;//frmachieving.dateedit1.date+1;
    params[2].asdate:=frmachieving.Query8.fieldbyname('dt1').value;//frmachieving.dateedit1.date+1;
    params[3].asfloat:=p5;
    open;
    first;
    while not eof do begin
      with frmachieving.Query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.Createparam(ftdate,'x3',ptinput);
        commandtext:='select a.ltc_d,a.cfwcrq,a.cfwcjs,a.ltc_ksrq,a.ltc_ksjs,a.flag3,b.lst1 from tblshedule a,line_shjs b '
                    +'where a.pline=b.pline and a.seq=b.seq and a.pline=:x1 and seq=:x2 and b.flag=''0'' '
                    +'and b.dt1<=:x3 and ((a.ltc_ksrq=b.dt1) or (a.ltc_ksrq>b.dt1 and b.lst1=''x''))';//and a.cfwcrq=b.dt1))';
        params[0].asstring:=frmachieving.query2.fieldbyname('pline').value;
        params[1].asinteger:=frmachieving.query2.fieldbyname('seq').value;
        params[2].asdate:=frmachieving.Query8.fieldbyname('dt1').value;
        open;
        if not fieldbyname('lst1').isnull then str2:=fieldbyname('lst1').value else str2:='c';
        if not fieldbyname('flag3').isnull then begin
          if pos('x',fieldbyname('flag3').value)>0 then str2:='x';
        end;
        if not fieldbyname('ltc_d').isnull then begin
          if (str2='x') and (fieldbyname('ltc_d').value<15) and (fieldbyname('ltc_d').value>=0) then begin
            if fieldbyname('cfwcrq').value>fieldbyname('ltc_ksrq').value then
            str1:=frmachieving.query2.fieldbyname('pline').value+':  LT'+str2+' = '+formatfloat('0.0',0)+' sect hr'
            else str1:=frmachieving.query2.fieldbyname('pline').value+':  LT'+str2+' = '+formatfloat('0.0',fieldbyname('ltc_d').value)+' sect hr';
            str1:=str1+'  (from '+formatdatetime('yy/MM/dd',fieldbyname('cfwcrq').value)+'  '+formatfloat('0.0',fieldbyname('cfwcjs').value)+' sect hr';
            str1:=str1+'  to '+formatdatetime('yy/MM/dd',fieldbyname('ltc_ksrq').value)+'  '+formatfloat('0.0',fieldbyname('ltc_ksjs').value)+' sect hr)';
            if fieldbyname('cfwcrq').value>fieldbyname('ltc_ksrq').value then lt1:=lt1+0
            else begin
              if fieldbyname('ltc_d').value<=fieldbyname('ltc_ksjs').value then
              lt1:=lt1+fieldbyname('ltc_d').value
              else lt1:=lt1+fieldbyname('ltc_ksjs').value;
            end;
            ppmemo1.Lines.add(str1);
          end;
        end;
      end;
      application.ProcessMessages;
      next;
    end;
  end;

  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if lbl850.caption='SPE' then begin
      commandtext:='select sum(eff2_sp*csect_sp)/sum(csect_sp) as s1,sum(csect_sp) as s2 from line_shjs where dt1=:x1 and csect_sp>0 and flag=''0''';
    end else begin
      commandtext:='select sum(eff2*csect)/sum(csect) as s1,sum(csect) as s2 from line_shjs where dt1=:x1 and csect>0 and flag=''0''';
    end;
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
    params[0].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s1').isnull then p1:=fieldbyname('s1').value else p1:=0;
    if not fieldbyname('s2').isnull then p2:=fieldbyname('s2').value else p2:=0;
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if lbl850.caption='SPE' then begin
      commandtext:='select sum(csect_sp) as s2 from line_shjs where dt1=:x1 and flag=''0''';
    end else begin
      commandtext:='select sum(csect) as s2 from line_shjs where dt1=:x1 and flag=''0''';
    end;
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
    params[0].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s2').isnull then p4:=fieldbyname('s2').value else p4:=0;
  end;

  w1:=0;w2:=0;
  with query2 do begin
    close;
    params.clear;
    //params.createparam(ftdatetime,'x1',ptinput);
    //commandtext:='select distinct pline,psect,eot from tbl_line_shjs where tm=:x1';
    //params[0].asdatetime:=tm1;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select distinct line,csect,ttl from week52 where date1=:x1';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    if edit1.text>'' then commandtext:=commandtext+' and line='''+edit1.text+'''';
    params[0].asdatetime:=dateedit1.date;
    open;
    first;
    while not eof do begin
      w1:=w1+fieldbyname('csect').value;
      w2:=w2+fieldbyname('ttl').value;
      application.ProcessMessages;
      next;
    end;
  end;
  x0001.Caption:=formatfloat('0.0',w1);
  x0002.Caption:=formatfloat('0.0',w2);

  p3:=0;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select distinct line,csect from week52 where date1=:x1 and tplant>'''' and tshop>''''';
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    if edit1.text>'' then commandtext:=commandtext+' and line='''+edit1.text+'''';
    params[0].asdate:=dateedit1.date;
    open;
    first;
    while not eof do begin
      p3:=p3+fieldbyname('csect').value;
      application.ProcessMessages;
      next;
    end;
  end;
  if p3>0 then peff001.Caption:='Productivity eff %: '+formatfloat('0.00',p1*p2/p3) else peff001.Caption:='Productivity eff %: 0.00';
  if p3>0 then
  //ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',w2-p4)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  '+formatfloat('0.00',p2*100.0/p3)
  //else ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',w2-p4)+'    Default ttl sect hr from current line work calendar = '+formatfloat('0.0',p3)+'    Capacity Utilization %:  0.00';
  ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p3-p4)+'    Total Linkage Time(sect hr) = '+formatfloat('0.0',lt1)+'    Capacity Utilization %:  '+formatfloat('0.00',p2*100.0/p3)
  else ttl002.Caption:='Total on-hold sect hr = '+formatfloat('0.0',p3-p4)+'    Total Linkage Time(sect hr) = '+formatfloat('0.0',lt1)+'    Capacity Utilization %:  0.00';
  ppmemo1.Lines.add('Total Linkage Time(sect hr) = '+formatfloat('0.0',lt1));//+'        as at  '+copy(date001.Caption,3,15));
  x0001.Caption:=formatfloat('0.0',p3);
  x0002.Caption:=formatfloat('0.0',p3);
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if lbl850.caption='SPE' then begin
        if opt1.ItemIndex=0 then
        commandtext:='select sum(floor(lflag1)*(ceot_sp+csect_sp))/sum(ceot_sp+csect_sp) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty_sp=0 and aqty1_sp=0 and (ceot_sp>0 or csect_sp is null)) '
                    +'and (flag3 is null) and (ceot_sp+csect_sp)>0'
        else
        commandtext:='select sum(floor(lflag1)*(ceot_sp+csect_sp))/sum(ceot_sp+csect_sp) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (ceot_sp+csect_sp)>0';
      end else begin
        if opt1.ItemIndex=0 then
        commandtext:='select sum(floor(lflag1)*(ceot+csect))/sum(ceot+csect) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (aqty=0 and aqty1=0 and (ceot>0 or csect is null)) and (flag3 is null) and (ceot+csect)>0'
        else
        commandtext:='select sum(floor(lflag1)*(ceot+csect))/sum(ceot+csect) as s1 from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and (ceot+csect)>0';
      end;
    end;
    if combobox1.text>'' then begin
      if combobox1.text<>'KBT' then
      commandtext:=commandtext+' and tplant='''+combobox1.text+''''
      else commandtext:=commandtext+' and tplant=''KB''';
    end;
    //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
    params[0].asdate:=date;
    if dateedit1.date>0 then params[1].asdate:=dateedit1.date;
    open;
    if not fieldbyname('s1').isnull then lflag01.Caption:=formatfloat('0.0',fieldbyname('s1').value)
    else lflag01.Caption:='0.0';
  end;
  ttl002.Caption:=ttl002.Caption+'    Current phase of line efficiency: '+lflag01.Caption;//+'    Curr LWs Date is as at that date';
  xttl02.Caption:='Curr LWs Date is as at  '+copy(date001.Caption,3,15);
end;

procedure Tfrmachieving.BitBtn4Click(Sender: TObject);
var
  tm:tdatetime;
  dt:tdate;
  cfm:boolean;
begin
  screen.Cursor:=crSQLWait;
  try
    tm:=now;
    if (combobox2.text>'') and (dateedit1.date>0) then begin
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        if dateedit1.date>0 then begin
          params.createparam(ftdate,'x2',ptinput);
          if opt1.ItemIndex=0 then
          commandtext:='select cfm from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null)) and cfm=0'
          else commandtext:='select cfm from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and cfm=0';
        end;
        if combobox1.text>'' then begin
          if combobox1.text<>'KBT' then
          commandtext:=commandtext+' and tplant='''+combobox1.text+''''
          else commandtext:=commandtext+' and tplant=''KB''';
        end;
        //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
        if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
        if dateedit1.date>0 then begin
          params[0].asdate:=date;
          params[1].asdate:=dateedit1.date;
          open;
          if not fieldbyname('cfm').isnull then cfm:=fieldbyname('cfm').value else cfm:=true;
        end;
      end;
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        commandtext:='select min(dt1) as dt from line_shjs where dt1>:x1';
        if combobox1.text>'' then begin
          if combobox1.text<>'KBT' then
          commandtext:=commandtext+' and tplant='''+combobox1.text+''''
          else commandtext:=commandtext+' and tplant=''KB''';
        end;
        //if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
        if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
        params[0].asdate:=dateedit1.date;
        open;
        if not fieldbyname('dt').IsNull then dt:=fieldbyname('dt').value else dt:=dateedit1.date+1;
      end;
      //'s'
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        commandtext:='select distinct a.pline,a.seq from tblshedule a,line_shjs b where a.pline=b.pline and a.seq=b.seq and b.dt1=:x1';
        if combobox1.text>'' then begin
          if combobox1.text<>'KBT' then
          commandtext:=commandtext+' and b.tplant='''+combobox1.text+''''
          else commandtext:=commandtext+' and b.tplant=''KB''';
        end;
        //if combobox2.Text>'' then commandtext:=commandtext+' and b.tshop='''+combobox2.text+'''';
        if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
        params[0].asdate:=dt;//dateedit1.Date+1;
        open;
        first;
        while not eof do begin
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            params.createparam(ftdate,'x4',ptinput);
            //commandtext:='execute procedure sp_gennextga(:x1,:x2,:x3)';
            commandtext:='execute procedure sp_gen_line_next_1(:x1,:x2,:x3,:x4)';
            params[0].asstring:=query2.fieldbyname('pline').value;
            params[1].asinteger:=query2.fieldbyname('seq').value;
            params[2].asdatetime:=tm;
            params[3].asdate:=dateedit1.date;
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
      //not 's'
      with query2 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        commandtext:='select distinct pline,seq from tblshedule where cfksrq<=:x1 and ((flag3='''') or (flag3 is null)) and yzh=0';
        if combobox1.text>'' then begin
          if combobox1.text<>'KBT' then
          commandtext:=commandtext+' and tplant='''+combobox1.text+''''
          else commandtext:=commandtext+' and tplant=''KB''';
        end;
        //if combobox2.Text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
        if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
        params[0].asdate:=dt;
        open;
        first;
        while not eof do begin
          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            commandtext:='execute procedure sp_dividedshjs_01(:x1,:x2,:x3)';
            params[0].asstring:=query2.fieldbyname('pline').value;
            params[1].asinteger:=query2.fieldbyname('seq').value;
            params[2].asdatetime:=tm;
            execute;
          end;

          with query3 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            params.createparam(ftdatetime,'x3',ptinput);
            params.createparam(ftdate,'x4',ptinput);
            commandtext:='execute procedure sp_gen_line_next_01(:x1,:x2,:x3,:x4)';
            params[0].asstring:=query2.fieldbyname('pline').value;
            params[1].asinteger:=query2.fieldbyname('seq').value;
            params[2].asdatetime:=tm;
            params[3].asdate:=dt;
            execute;
          end;
          application.ProcessMessages;
          next;
        end;
      end;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='execute procedure sp_gen_linenext_1(:x1)';
        params[0].AsDateTime:=tm;
        execute;
      end;
      with query6 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from line_shjs_next where tm=:x1 order by pline,seq,dseq';// and dt1>=:x2';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('pline').isnull then begin
          if frmnextday=nil then frmnextday:=tfrmnextday.Create(nil);
          frmnextday.fty001.Caption:=combobox1.text;
          frmnextday.shop001.Caption:=combobox2.Text;
          if dateedit1.date>0 then
          frmnextday.date001.Caption:=formatdatetime('yyyy/MM/dd',dt)
          else frmnextday.date001.Caption:='    /  /  ';
          if cfm=false then frmnextday.title001.Caption:='* Confirmation - incomplete *'
          else frmnextday.title001.Caption:='* Confirmed *';
          if pos('test',application.ExeName)>0 then frmnextday.title001.Caption:=frmnextday.title001.Caption+' -Test';
          frmnextday.ppReport1.Print;
        end;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmachieving.BitBtn5Click(Sender: TObject);
var
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  try
    if ((combobox1.text>'') or (combobox2.text>'')) and (dateedit1.Date>0) then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftdate,'x3',ptinput);
        params.createparam(ftdatetime,'x4',ptinput);
        commandtext:='execute procedure sp_genftystyleimg(:x1,:x2,:x3,:x4)';
        if combobox1.text<>'KBT' then
        params[0].asstring:=combobox1.text
        else params[0].asstring:='KB';
        params[1].asstring:=combobox2.text;
        params[2].asdate:=dateedit1.date;
        params[3].asdatetime:=tm;
        execute;
      end;
      if combobox2.text>'' then begin
      with query7 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_op_styleimg where tm=:x1 order by cust,cstyle,acol,pline,seq';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('pline').isnull then begin
          if combobox2.text>'' then begin
            //imgtitle001.Caption:='WIP Styles Image Illustration - Workshop';
            y01.Visible:=true;
            //y001.Visible:=false;
            //y002.Visible:=false;
          end else if combobox1.Text>'' then begin
            //imgtitle001.Caption:='WIP Styles Image Illustration - Factory';
            y01.Visible:=false;
            //y001.Visible:=true;
            //y002.Visible:=true;
          end;
          if combobox1.text>'' then
          tplant002.Caption:=combobox1.text
          else tplant002.Caption:=query7.fieldbyname('tplant').value;
          tshop002.Caption:=combobox2.text;
          date002.Caption:=dateedit1.Text;
          ppReport2.Print;
        end;
      end;
      end else if combobox1.text>'' then begin
      if frmfstyleimg=nil then frmfstyleimg:=tfrmfstyleimg.create(nil);
      with frmfstyleimg.query7 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_op_styleimg_2 where tm=:x1 order by cust,cstyle';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tplant').isnull then begin
          frmfstyleimg.tplant003.Caption:=combobox1.text;
          frmfstyleimg.date003.Caption:=dateedit1.Text;
          frmfstyleimg.ppReport3.Print;
        end;
      end;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmachieving.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmachieving.ppDetailBand3BeforePrint(Sender: TObject);
begin
  ppimage2.Picture:=nil;
  if query7.fieldbyname('cstyle').value<>vstyle then begin
    if not query7.fieldbyname('colimg').isnull then begin
      if fileexists(query7.fieldbyname('colimg').value) then ppimage2.Picture.LoadFromFile(query7.fieldbyname('colimg').value)
      else ppimage2.Picture:=nil;
    end else ppimage2.Picture:=nil;
  end else begin
    if query7.fieldbyname('acol').value<>vcol then begin
      vcol:=query7.fieldbyname('acol').value;
      if not query7.fieldbyname('colimg').isnull then begin
        if fileexists(query7.fieldbyname('colimg').value) then ppimage2.Picture.LoadFromFile(query7.fieldbyname('colimg').value)
      end else ppimage2.Picture:=nil;
    end else ppimage2.Picture:=nil;
  end;
    vstyle:=query7.fieldbyname('cstyle').value;
end;

procedure Tfrmachieving.ppDetailBand5BeforePrint(Sender: TObject);
begin
  {
  if query1.fieldbyname('lflag1').value=1.0 then lflag1_01.caption:='1.0'
  else if (query1.fieldbyname('lflag1').value>1.0) and (query1.fieldbyname('lflag1').value<2.0) then lflag1_01.caption:='1.0-2.0'
  else if query1.fieldbyname('lflag1').value=2.0 then lflag1_01.caption:='2.0'
  else if (query1.fieldbyname('lflag1').value>2.0) and (query1.fieldbyname('lflag1').value<3.0) then lflag1_01.caption:='2.0-3.0'
  else if query1.fieldbyname('lflag1').value=3.0 then lflag1_01.caption:='3.0'
  else if (query1.fieldbyname('lflag1').value>3.0) and (query1.fieldbyname('lflag1').value<4.0) then lflag1_01.caption:='3.0-4.0'
  else if query1.fieldbyname('lflag1').value=4.0 then lflag1_01.caption:='4.0'
  else if (query1.fieldbyname('lflag1').value>4.0) and (query1.fieldbyname('lflag1').value<5.0) then lflag1_01.caption:='4.0-5.0'
  else if query1.fieldbyname('lflag1').value=5.0 then lflag1_01.caption:='5.0'
  else if (query1.fieldbyname('lflag1').value>5.0) and (query1.fieldbyname('lflag1').value<6.0) then lflag1_01.caption:='5.0-6.0'
  else if query1.fieldbyname('lflag1').value=6.0 then lflag1_01.caption:='6.0'
  else if (query1.fieldbyname('lflag1').value>6.0) and (query1.fieldbyname('lflag1').value<7.0) then lflag1_01.caption:='6.0-7.0'
  else if query1.fieldbyname('lflag1').value=7.0 then lflag1_01.caption:='7.0'
  else if (query1.fieldbyname('lflag1').value>7.0) and (query1.fieldbyname('lflag1').value<8.0) then lflag1_01.caption:='7.0-8.0'
  else if query1.fieldbyname('lflag1').value=8.0 then lflag1_01.caption:='8.0'
  else if (query1.fieldbyname('lflag1').value>8.0) and (query1.fieldbyname('lflag1').value<9.0) then lflag1_01.caption:='8.0-9.0'
  else if query1.fieldbyname('lflag1').value=9.0 then lflag1_01.caption:='9.0'
  else if (query1.fieldbyname('lflag1').value>9.0) and (query1.fieldbyname('lflag1').value<10.0) then lflag1_01.caption:='9.0-10.0'
  else if query1.fieldbyname('lflag1').value=10.0 then lflag1_01.caption:='10.0';
  }
  if not query1.fieldbyname('mwflbc').isnull then begin
    if query1.fieldbyname('mwflbc').value<0 then begin
      sjrs001.font.color:=clRed;
      sjrs002.font.color:=clRed;
    end else begin
      sjrs001.font.color:=clBlack;
      sjrs002.font.color:=clBlack;
    end;
  end;
  if not query1.fieldbyname('dbl_sp').isnull then begin
    if (query1.fieldbyname('dbl_sp').value>0.00) and (query1.fieldbyname('dbl_sp').value<100.00) then
      dbl001.font.color:=clRed
    else dbl001.font.color:=clBlack;
  end;
  with query10 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select lflag from tblshedule where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    Open;
    if not fieldbyname('lflag').isnull then lflag1_01.caption:=fieldbyname('lflag').value+'.0'
    else lflag1_01.caption:='1.0';
  end;
end;

procedure Tfrmachieving.WIPStylesImageIllustration1Click(Sender: TObject);
var
  tm:tdatetime;
  cust:string;
begin
  screen.Cursor:=crSQLWait;
  tm:=now;
  //cust:=inputbox('Customer:','Please input customer code:','TAMA');
  cust:=edit2.text;
  if cust>'' then begin
  try
    if ((combobox1.text>'') or (combobox2.text>'')) then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftdatetime,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftdate,'x5',ptinput);
        params.createparam(ftdate,'x6',ptinput);
        commandtext:='execute procedure sp_genftystyleimg_01(:x1,:x2,:x3,:x4,:x5,:x6)';
        if combobox1.text<>'KBT' then
        params[0].asstring:=combobox1.text
        else params[0].asstring:='KB';
        params[1].asstring:=combobox2.text;
        params[2].asdatetime:=tm;
        params[3].asstring:=uppercase(cust);
        params[4].asdate:=dateedit1.Date;
        params[5].AsDate:=dateedit2.Date;
        execute;
      end;
      {
      if frmwipimg=nil then frmwipimg:=tfrmwipimg.Create(nil);
      with frmwipimg.query7 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_op_styleimg where tm=:x1 order by cstyle,pline,seq';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('pline').isnull then begin
          if combobox2.text>'' then begin
            frmwipimg.title001.Caption:='Workshop WIP - Styles Image Illustration  - ('+uppercase(cust)+')';
            frmwipimg.y01.Visible:=true;
            frmwipimg.y001.Visible:=false;
            frmwipimg.y002.Visible:=false;
          end else if combobox1.text>'' then begin
            frmwipimg.title001.Caption:='Factory WIP - Styles Image Illustration  - ('+uppercase(cust)+')';
            frmwipimg.y01.Visible:=false;
            frmwipimg.y001.Visible:=true;
            frmwipimg.y002.Visible:=true;
          end;
          frmwipimg.tplant002.Caption:=combobox1.text;
          frmwipimg.tshop002.Caption:=combobox2.text;
          frmwipimg.ppReport2.Print;
        end;
      end;
      }
      if frmfstyleimg=nil then frmfstyleimg:=tfrmfstyleimg.create(nil);
      with frmfstyleimg.query7 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_op_styleimg_2 where tm=:x1 order by cust,cstyle';
        params[0].asdatetime:=tm;
        open;
        if not fieldbyname('tplant').isnull then begin
          frmfstyleimg.tplant003.Caption:=combobox1.text+'   Customer: '+edit2.text;
          frmfstyleimg.dt001.Caption:='Date Range From : '+dateedit1.Text+'  To : '+dateedit2.text;
          //frmfstyleimg.date003.Caption:=dateedit1.Text;
          frmfstyleimg.ppReport3.Print;
        end;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
  end;
end;

procedure Tfrmachieving.ppGroupHeaderBand2BeforePrint(Sender: TObject);
begin
  ppimage1.Picture:=nil;
  try
    if not query7.fieldbyname('chartp').isnull then begin
      if fileexists(query7.fieldbyname('chartp').value) then ppimage1.Picture.LoadFromFile(query7.fieldbyname('chartp').value)
      else ppimage1.Picture:=nil;
    end else ppimage1.Picture:=nil;
    if not query7.fieldbyname('chart1p').isnull then begin
      if fileexists(query7.fieldbyname('chart1p').value) then ppimage5.Picture.LoadFromFile(query7.fieldbyname('chart1p').value)
      else ppimage5.Picture:=nil;
    end else ppimage5.Picture:=nil;
  except
  end;
end;

procedure Tfrmachieving.DBGridEh1Columns35EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  dseq:integer;
  tm:tdatetime;
begin
  screen.Cursor:=crSQLWait;
  try
  tm:=now;
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_lwo_gensew(:x1,:x2)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    execute;
  end;
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftdatetime,'x3',ptinput);
    params.createparam(ftdate,'x4',ptinput);
    commandtext:='select * from sp_lwo_calc_sewdt_new(:x1,:x2,:x3,:x4)';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asdatetime:=tm;
    params[3].asdate:=query1.fieldbyname('dt1').value;
    open;
    if not fieldbyname('dseq').isnull then dseq:=fieldbyname('dseq').value else dseq:=601;
  end;
  if frmesewn=nil then frmesewn:=tfrmesewn.create(nil);
  frmesewn.Label8.Caption:='ACHIEVING';
  with frmesewn.Query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    if lbl850.Caption='SPE' then
    commandtext:='select * from tbl_lwo_sew_sp where pline=:x1 and seq=:x2'
    else commandtext:='select * from tbl_lwo_sew where pline=:x1 and seq=:x2';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
  end;
  frmesewn.dbgrideh1.Columns[6].Field:=frmesewn.query1.fieldbyname('aq'+inttostr(dseq-600)+'');
  frmesewn.dbgrideh1.Columns[7].Field:=frmesewn.query1.fieldbyname('a'+inttostr(dseq-600)+'01');
  frmesewn.dbgrideh1.Columns[8].Field:=frmesewn.query1.fieldbyname('a'+inttostr(dseq-600)+'02');
  frmesewn.dbgrideh1.Columns[9].Field:=frmesewn.query1.fieldbyname('a'+inttostr(dseq-600)+'03');
  frmesewn.dbgrideh1.Columns[10].Field:=frmesewn.query1.fieldbyname('cq'+inttostr(dseq-600)+'');
  frmesewn.dbtext1.DataSource:=DataSource1;
  frmesewn.dbtext2.DataSource:=DataSource1;
  frmesewn.dbtext3.DataSource:=DataSource1;
  frmesewn.dbtext4.DataSource:=DataSource1;
  frmesewn.dbtext5.DataSource:=DataSource1;
  frmesewn.dbtext6.DataSource:=DataSource1;
  frmesewn.dbtext7.DataSource:=DataSource1;
  frmesewn.dbtext8.DataSource:=DataSource1;
  frmesewn.dbtext9.DataSource:=DataSource1;
  frmesewn.label12.caption:=query1.fieldbyname('j2_job').value+'-'+query1.fieldbyname('cwo').value+'-'+query1.fieldbyname('rwo').value+'-'+query1.fieldbyname('fccs').value;
  if lbl850.caption='SPE' then begin
    frmesewn.Caption:=frmesewn.Caption+' - AL';
    frmesewn.lbl850.Caption:='SPE';
  end else begin
    frmesewn.Caption:=frmesewn.Caption+' - EWs';
    frmesewn.lbl850.Caption:='';
  end;
  frmesewn.Show;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmachieving.DBGridEh1Columns39EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  //
end;

procedure Tfrmachieving.BitBtn6Click(Sender: TObject);
begin
  if query1.Active then begin
    if (combobox2.text>'') and (pos(';',combobox2.text)=0) then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='select tshop from tbl_wksremarks where dt1=:x1 and tshop=:x2 and spe=:x3';
        params[0].asdate:=dateedit1.date;
        params[1].asstring:=combobox2.text;
        params[2].asstring:=lbl850.caption;
        open;
        if fieldbyname('tshop').isnull then begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftdate,'x1',ptinput);
            params.createparam(ftstring,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='insert into tbl_wksremarks(dt1,tplant,tshop,spe) values(:x1,:x2,:x3,:x4)';
            params[0].asdate:=dateedit1.date;
            params[1].asstring:=query1.fieldbyname('tplant').value;
            params[2].asstring:=query1.fieldbyname('tshop').value;
            params[3].asstring:=lbl850.caption;
            execute;
          end;
        end;
      end;
      if frmwnote=nil then frmwnote:=tfrmwnote.Create(nil);
      with frmwnote.Query1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        commandtext:='select * from tbl_wksremarks where dt1=:x1 and tshop=:x2 and spe=:x3';
        params[0].asdate:=dateedit1.date;
        params[1].asstring:=combobox2.text;
        params[2].asstring:=lbl850.caption;
        open;
      end;
      frmwnote.show;
    end;
  end;
end;

procedure Tfrmachieving.ppGroupFooterBand3BeforePrint(Sender: TObject);
var
  str1:string;
begin
  if query8.fieldbyname('tplant').value='KB' then str1:='Senior Factory Manager Notepad : - '
  else str1:='Factory Manager - Operations'' Notepad : - ';
  ppMemo3.Lines.clear;
  ppMemo3.Lines.Add(str1);

    with query2 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='select distinct tshop,remarks from tbl_wksremarks where dt1=:x1';
      if combobox1.text>'' then begin
        if combobox1.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox1.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
      commandtext:=commandtext+' order by tshop';
      params[0].asdate:=dateedit1.date;
      open;
      first;
      while not eof do begin
        if not fieldbyname('remarks').isnull then ppMemo3.Lines.Add(fieldbyname('tshop').value+' :  '+fieldbyname('remarks').value);
        application.ProcessMessages;
        next;
      end;
    end;
  ppMemo3.Lines.Add('');
end;

procedure Tfrmachieving.ppGroupHeaderBand4BeforePrint(Sender: TObject);
begin
  try
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='select sum(scqty) as s1 from tbl_op_styleimg where tm=:x1 and cstyle=:x2 and cust='''+query7.fieldbyname('cust').value+'''';
    params[0].asdatetime:=query7.fieldbyname('tm').value;
    params[1].asstring:=query7.fieldbyname('cstyle').value;
    open;
    if not fieldbyname('s1').isnull then ttlqty001.Caption:=fieldbyname('s1').asstring else ttlqty001.caption:='0';
  end;
    if not query7.fieldbyname('chartp').isnull then ppimage4.Picture.LoadFromFile(query7.fieldbyname('chartp').value)
    else ppimage4.Picture:=nil;
  except
  end;
end;

procedure Tfrmachieving.ppReport3PreviewFormCreate(Sender: TObject);
begin
  ppReport3.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport3.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmachieving.ppReport4PreviewFormCreate(Sender: TObject);
begin
  ppReport4.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport4.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmachieving.ppReport5PreviewFormCreate(Sender: TObject);
begin
  ppReport5.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport5.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmachieving.ppSummaryBand3BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,count(distinct tshop) as s2,count(distinct pline) as s3,count(distinct acol) as s4,count(distinct cust) as s5 from tbl_op_styleimg where tm=:x1';
    params[0].asdatetime:=query7.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      ttl001.Caption:='TTL      # of cust style:  '+fieldbyname('s1').asstring+'     # of clr:  '+fieldbyname('s4').asstring+'     # of workshop:  '+fieldbyname('s2').asstring+'     # of line:  '+fieldbyname('s3').asstring+'     # of cust:  '+fieldbyname('s5').asstring+'     ';
    end else ttl001.Caption:='';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(b.ttqty-b.tfqty) as s5 from tbl_op_styleimg a,tbl_lwo b where a.pline=b.pline and a.seq=b.seq and a.tm=:x1';
    params[0].asdatetime:=query7.fieldbyname('tm').value;
    open;
    if not fieldbyname('s5').isnull then ttl003.Caption:=ttl003.Caption+'WIP Quantity:  '+fieldbyname('s5').asstring;
  end;
end;

procedure Tfrmachieving.ppSummaryBand4BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select count(distinct cstyle) as s1,count(distinct pline) as s3,count(distinct acol) as s4,count(distinct cust) as s5 from tbl_op_styleimg where tm=:x1';
    params[0].asdatetime:=query7.fieldbyname('tm').value;
    open;
    if not fieldbyname('s1').isnull then begin
      ttl003.Caption:='TTL      # of cust style:  '+fieldbyname('s1').asstring+'     # of clr:  '+fieldbyname('s4').asstring+'     # of line:  '+fieldbyname('s3').asstring+'     # of cust:  '+fieldbyname('s5').asstring+'     ';
    end else ttl003.Caption:='';
  end;
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftdatetime,'x1',ptinput);
    commandtext:='select sum(b.ttqty-b.tfqty) as s5 from tbl_op_styleimg a,tbl_lwo b where a.pline=b.pline and a.seq=b.seq and a.tm=:x1';
    params[0].asdatetime:=query7.fieldbyname('tm').value;
    open;
    if not fieldbyname('s5').isnull then ttl003.Caption:=ttl003.Caption+'WIP Quantity:  '+fieldbyname('s5').asstring;
  end;
end;

procedure Tfrmachieving.ppSummaryBand5BeforePrint(Sender: TObject);
var
  tplant:string;
  tq1,tq2:double;
begin
  //zppc001, zswd001, zws001
  if combobox1.text>'' then begin
    if (combobox1.text='CN') or (combobox1.text='GX') then tplant:=''
    else if combobox1.text='GD' then tplant:='SL' else tplant:=combobox1.text;
  end else tplant:='';
  with query2 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if xh0.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0 and ppccfm=0'
      else if xh1.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0 and ppccfm=0'
      else if xh3.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0 and ppccfm=0'
      else if xh2.checked then
      commandtext:='select count(*) as xcnt '
                       +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0';
      if combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
      if edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('xcnt').isnull then zppc001.caption:=fieldbyname('xcnt').asstring else zppc001.caption:='0';
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if xh0.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0 and cfm1=0'
      else if xh1.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0 and cfm1=0'
      else if xh3.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0 and cfm1=0'
      else if xh2.checked then
      commandtext:='select count(*) as xcnt '
                       +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0';
      if combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
      if edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('xcnt').isnull then zswd001.caption:=fieldbyname('xcnt').asstring else zswd001.caption:='0';
    end;
  end;
  with query2 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if xh0.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0 and cfm=0'
      else if xh1.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0 and cfm=0'
      else if xh3.checked then
      commandtext:='select count(*) as xcnt '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0 and cfm=0'
      else if xh2.checked then
      commandtext:='select count(*) as xcnt '
                       +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0';
      if combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
      if edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      params[0].asdate:=dateedit1.date;
      open;
      if not fieldbyname('xcnt').isnull then zws001.caption:=fieldbyname('xcnt').asstring else zws001.caption:='0';
    end;
  end;
  //tawf001, tsjrs001
  tq1:=0; tq2:=0;
  with query2 do begin
    close;
    params.clear;
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if xh0.checked then
      commandtext:='select distinct pline,sum(mwfsc*csect_sp)/sum(csect_sp) as q1,sum(alrs*csect_sp)/sum(csect_sp) as q2 '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and ppccfm=0 and csect_sp>0'
      else if xh1.checked then
      commandtext:='select distinct pline,sum(mwfsc*csect_sp)/sum(csect_sp) as q1,sum(alrs*csect_sp)/sum(csect_sp) as q2 '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm=0 and csect_sp>0'
      else if xh3.checked then
      commandtext:='select distinct pline,sum(mwfsc*csect_sp)/sum(csect_sp) as q1,sum(alrs*csect_sp)/sum(csect_sp) as q2 '
                  +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and cfm1=0 and csect_sp>0'
      else if xh2.checked then
      commandtext:='select distinct pline,sum(mwfsc*csect_sp)/sum(csect_sp) as q1,sum(alrs*csect_sp)/sum(csect_sp) as q2 '
                       +'from line_shjs a where a.flag=''0'' and a.dt1=:x2 and (a.flag6 is not null) and tshop<>''SC1'' and csect_sp>0';
      if combobox1.text='GX' then
        commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')'
      else if combobox1.text='CN' then
        commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')'
      else begin
        if tplant>'' then
        commandtext:=commandtext+' and a.tplant='''+tplant+'''';
      end;
      //if combobox2.text>'' then commandtext:=commandtext+' and a.tshop='''+combobox2.text+'''';
      if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
      if edit1.Text>'' then commandtext:=commandtext+' and a.pline='''+edit1.text+'''';
      if frmachieving.lbl850.Caption='SPE' then commandtext:=commandtext+' and a.mpsect_sp>0'
      else commandtext:=commandtext+' and a.mpsect>0';
      commandtext:=commandtext+' group by pline';
      params[0].asdate:=dateedit1.date;
      open;
      first;
      while not eof do begin
        tq1:=tq1+fieldbyname('q1').value;
        tq2:=tq2+fieldbyname('q2').value;
        application.processmessages;
        next;
      end;
      //if not fieldbyname('xcnt').isnull then zws001.caption:=fieldbyname('xcnt').asstring else zws001.caption:='0';
    end;
  end;
  if dateedit1.date>=date then begin
    tq1:=0; tq2:=0;
  end;
  if tq1>0 then tawf001.caption:=formatfloat('0.00',tq1) else tawf001.caption:='';
  if tq2>0 then tsjrs001.caption:=formatfloat('0.00',tq2) else tsjrs001.caption:='';
  //if dateedit1.date>=date then ppSubReport2.visible:=false
  //else ppSubReport2.visible:=true;
end;

procedure Tfrmachieving.ppSummaryBand6BeforePrint(Sender: TObject);
var
  tplant:string;
begin
  {
  if (combobox1.text='CN') or (combobox1.text='GX') then tplant:=''
  else if combobox1.text='GD' then tplant:='SL' else tplant:=combobox1.text;
  with query9 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select distinct tplant,tshop,line,fsx from week52 where date1=:x1 and fsx>''''';
    if tplant>'' then commandtext:=commandtext+' and tplant='''+tplant+''''
    else if combobox1.text='GX' then begin
      commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
    end;
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    if edit1.text>'' then commandtext:=commandtext+' and line='''+edit1.text+'''';
    commandtext:=commandtext+' order by tplant,tshop,line';
    params[0].asdate:=dateedit1.date;
    open;
  end;
  }
  //if dateedit1.date>=date then ppSubReport4.visible:=false
  //else ppSubReport4.visible:=true;
end;

procedure Tfrmachieving.ppSummaryBand7BeforePrint(Sender: TObject);
var
  tplant:string;
begin
  if (combobox1.text='CN') or (combobox1.text='GX') then tplant:=''
  else if combobox1.text='GD' then tplant:='SL' else tplant:=combobox1.text;
  with query8 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select distinct tplant,tshop,pline,seq,qnseq,marks_sp from line_shjs where dt1=:x1 and mpsect_sp>0 and tshop<>''SC1''';
    if tplant>'' then commandtext:=commandtext+' and tplant='''+tplant+''''
    else if combobox1.text='GX' then begin
      commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
    end else if combobox1.text='CN' then begin
      commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
    end;
    //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if frmachieving.lbl850.caption='SPE' then commandtext:=commandtext+' and ((diff_sp>0.00 and diff_sp<1.00 and csect_sp>=0.20) or (diff_sp=0.00) or (diff_sp>=1.00) or (diff_sp is null))';
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
    commandtext:=commandtext+' order by tplant,tshop,pline,seq';
    params[0].asdate:=dateedit1.date;
    open;
  end;
end;

procedure Tfrmachieving.ppTitleBand2BeforePrint(Sender: TObject);
var
  tplant:string;
begin
  if (combobox1.text='CN') or (combobox1.text='GX') then tplant:=''
  else if combobox1.text='GD' then tplant:='SL' else tplant:=combobox1.text;
  ppMemo6.lines.clear;
  ppMemo6.lines.add('AL工場備注: - ');
  with query6 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    commandtext:='select distinct tshop,remarks from tbl_wksremarks where dt1=:x1 and spe=''SPE''';
    if tplant>'' then commandtext:=commandtext+' and tplant='''+tplant+''''
    else if combobox1.text='GX' then begin
      commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
    end else if combobox1.text='CN' then begin
      commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
    end;
    //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    commandtext:=commandtext+' order by tplant,tshop';
    params[0].asdate:=dateedit1.date;
    open;
    first;
    while not eof do begin
      if not fieldbyname('remarks').isnull then
      ppMemo6.lines.add('   '+fieldbyname('tshop').value+': '+fieldbyname('remarks').value);
      application.processmessages;
      next;
    end;
  end;
  ppMemo6.lines.add('  ');
end;

procedure Tfrmachieving.DBGridEh1Columns32EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  //{
  if frmrsyc=nil then frmrsyc:=tfrmrsyc.create(nil);
  frmrsyc.DBText1.DataSource:=datasource1;//nil;
  frmrsyc.DBText2.DataSource:=datasource1;//nil;
  frmrsyc.DBText3.DataSource:=datasource1;//nil;
  frmrsyc.DBText4.DataSource:=datasource1;//nil;
  frmrsyc.DBText5.DataSource:=datasource1;//nil;
  frmrsyc.DBText6.DataSource:=datasource1;//nil;
  frmrsyc.DBText7.DataSource:=datasource1;//nil;
  frmrsyc.DBText8.DataSource:=datasource1;//nil;
  frmrsyc.DBGridEh1.DataSource:=datasource1;
  frmrsyc.DataSource1.DataSet:=query1;
  frmrsyc.Show;
  //}
  {
  if frmzktd_wf=nil then frmzktd_wf:=tfrmzktd_wf.create(nil);
  frmzktd_wf.DBText1.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText2.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText3.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText4.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText5.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText6.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText7.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText8.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText9.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText10.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText11.DataSource:=datasource1;//nil;
  frmzktd_wf.DBText12.DataSource:=datasource1;//nil;
  frmzktd_wf.DBEdit1.DataSource:=datasource1;//nil;
  //frmrsyc.DBGridEh1.DataSource:=datasource1;
  frmzktd_wf.Show;
  }

  {
  if frmqnwkf=nil then frmqnwkf:=tfrmqnwkf.Create(nil);
  frmqnwkf.Label1.caption:='ACHIEVING';
  frmqnwkf.Show;
  }
end;

procedure Tfrmachieving.Query1MWFLBChange(Sender: TField);
var
  s1,s2,s3,s4:double;
begin
  if not query1.fieldbyname('mwflb').isnull then s1:=query1.fieldbyname('mwflb').value else s1:=0;
  if not query1.fieldbyname('mwfa').isnull then s2:=query1.fieldbyname('mwfa').value else s2:=0;
  //if not query1.fieldbyname('mwfac').isnull then s3:=query1.fieldbyname('mwfac').value else s3:=0;
  if not query1.fieldbyname('mwfs').isnull then s4:=query1.fieldbyname('mwfs').value else s4:=0;
  query1.fieldbyname('sjrs2').value:=s1+s2+s4;
end;

procedure Tfrmachieving.BitBtn8Click(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftdate,'x1',ptinput);
    if dateedit1.date>0 then begin
      params.createparam(ftdate,'x2',ptinput);
      if opt1.ItemIndex=0 then
      commandtext:='select * from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag3 is null) and (aqty=0 and aqty1=0 and (csect>0 or csect is null))'
      else commandtext:='select * from line_shjs where flag=''0'' and dt1<=:x1 and dt1=:x2 and (flag6 is not null) and tshop<>''SC1''';
      if combobox1.text>'' then begin
        if combobox1.text<>'KBT' then
        commandtext:=commandtext+' and tplant='''+combobox1.text+''''
        else commandtext:=commandtext+' and tplant=''KB''';
      end;
      //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
      if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
      if edit1.text>'' then commandtext:=commandtext+' and pline='''+edit1.text+'''';
      params[0].asdate:=date;
      params[1].asdate:=dateedit1.date;
      open;
    end;
  end;
end;

procedure Tfrmachieving.temp_flag;
begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='13';
    frmflag.Caption:='Flag Explanation - RFID''s Status';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=13';
      open;
    end;
    with frmflag.query4 do begin
      close;
      params.clear;
      commandtext:='select * from flag_memo where fseq=13';
      open;
    end;
    frmflag.BitBtn3click(self);

    frmflag.Label1.caption:='6';
    frmflag.Caption:='Flag Explanation - Product Category/產品種類';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=6';
      open;
    end;
    with frmflag.query4 do begin
      close;
      params.clear;
      commandtext:='select * from flag_memo where fseq=6';
      open;
    end;
    frmflag.BitBtn3click(self);

    frmflag.Label1.caption:='11';
    //frmflag.Caption:='Flag Explanation - Scheduling ahead or behind / 排程前移或落后';
    frmflag.Caption:='Flag Explanation - Impact Code/衝擊顯示';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=11';
      open;
    end;
    with frmflag.query4 do begin
      close;
      params.clear;
      commandtext:='select * from flag_memo where fseq=11';
      open;
    end;
    frmflag.BitBtn3click(self);

    frmflag.Label1.caption:='4';
    frmflag.Caption:='Flag Explanation - Default phase of line eff as at date(opt perf)/預設當日段拉效率(制作中表現)';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=4';
      open;
    end;
    with frmflag.query4 do begin
      close;
      params.clear;
      commandtext:='select * from flag_memo where fseq=4';
      open;
    end;
    frmflag.BitBtn3click(self);

    frmflag.Label1.caption:='3';
    frmflag.Caption:='Flag Explanation - QN/SQN Dynamic Process at workshop[As at Date]/數頁/游數頁動力流程-車間[當日]';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=3';
      open;
    end;
    with frmflag.query4 do begin
      close;
      params.clear;
      commandtext:='select * from flag_memo where fseq=3';
      open;
    end;
    frmflag.BitBtn3click(self);

    frmflag.Label1.caption:='15';
    frmflag.Caption:='Flag Explanation - Current phase of line eff as at date(opt perf) /現況當日段拉效率 (制作中表現)';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=15';
      open;
    end;
    with frmflag.query4 do begin
      close;
      params.clear;
      commandtext:='select * from flag_memo where fseq=15';
      open;
    end;
    frmflag.BitBtn3click(self);

    frmflag.Label1.caption:='5';
    frmflag.Caption:='Flag Explanation - Locked Diff Process/鎖定差距流程';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from flag_marks where fseq=5';
      open;
    end;
    with frmflag.query4 do begin
      close;
      params.clear;
      commandtext:='select * from flag_memo where fseq=5';
      open;
    end;
    frmflag.BitBtn3click(self);
    if frmflag<>nil then frmflag:=nil;
end;

procedure Tfrmachieving.temp_flag1;
begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='5';
    frmflag.Caption:='Flag Explanation - Locked Diff Process/鎖定差距流程';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from flag_marks where fseq=5';
      open;
    end;
    with frmflag.query4 do begin
      close;
      params.clear;
      commandtext:='select * from flag_memo where fseq=5';
      open;
    end;
    frmflag.BitBtn3click(self);
    if frmflag<>nil then frmflag:=nil;
end;

procedure Tfrmachieving.PDFFILES1Click(Sender: TObject);
begin
  //
  if frmpdfgai=nil then frmpdfgai:=tfrmpdfgai.Create(nil);
  frmpdfgai.ComboBox1.Text:='SL';
  frmpdfgai.DateEdit1.date:=date;
  frmpdfgai.DateEdit2.date:=date;
  frmpdfgai.Show;
end;

procedure Tfrmachieving.FormCreate(Sender: TObject);
begin
  //siLang1.LoadAllFromFile(extractfilepath(application.ExeName)+'LWPM_LANGUAGE.sil',false);
  siLang1.Language:=frmmain.ComboBox2.text;
  {
  if lbl850.Caption='SPE' then begin
    dbgrideh1.Columns[38].FieldName:='AQTY_SP';
    dbgrideh1.Columns[39].FieldName:='AQTY1_SP';
    dbgrideh1.Columns[40].FieldName:='DIFF_SP';
    dbgrideh1.Columns[43].FieldName:='DBXL_SP';
    dbgrideh1.Columns[47].FieldName:='EFF2_SP';
  end else begin
    dbgrideh1.Columns[38].FieldName:='AQTY';
    dbgrideh1.Columns[39].FieldName:='AQTY1';
    dbgrideh1.Columns[40].FieldName:='DIFF';
    dbgrideh1.Columns[43].FieldName:='DBXL';
    dbgrideh1.Columns[47].FieldName:='EFF2';
  end;
  }
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
          params[2].AsString:='GAI';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
        with dataset2 do begin
          close;
          sql.text:='insert into [Sys.Authority].dbo.sysuseinfo(menuid,userid,starttime) values(:x1,:x2,:x3)';
          parameters[0].Value:='LWPM - GAI';
          parameters[1].value:=frmmain.combobox1.text;
          parameters[2].Value:=now;
          execsql;
        end;
end;

procedure Tfrmachieving.FormDestroy(Sender: TObject);
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

procedure Tfrmachieving.Query1CFMChange(Sender: TField);
begin
  if query1.fieldbyname('cfm').value=true then begin
    if (combobox2.text>'') and (pos(';',combobox2.text)=0) then begin
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        commandtext:='select * from tbl_wksremarks where dt1=:x1 and tshop=:x2';
        params[0].asdate:=dateedit1.date;
        params[1].asstring:=combobox2.text;
        open;
        if fieldbyname('tshop').isnull then begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftdate,'x1',ptinput);
            params.createparam(ftstring,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftstring,'x4',ptinput);
            commandtext:='insert into tbl_wksremarks(dt1,tplant,tshop,usr1) values(:x1,:x2,:x3,:x4)';
            params[0].asdate:=dateedit1.date;
            params[1].asstring:=query1.fieldbyname('tplant').value;
            params[2].asstring:=query1.fieldbyname('tshop').value;
            params[3].asstring:=frmmain.ComboBox1.text;
            execute;
          end;
        end else if fieldbyname('usr1').isnull then begin
          {
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftdate,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            commandtext:='update tbl_wksremarks set usr1=:x1 where dt1=:x2 and tshop=:x3';
            params[0].asstring:=frmmain.ComboBox1.text;
            params[1].asdate:=dateedit1.date;
            params[2].asstring:=query1.fieldbyname('tshop').value;
            execute;
          end;
          }
          strupd:='update tbl_wksremarks set usr1='''+frmmain.ComboBox1.text+''' where dt1='''+formatdatetime('yyyy-MM-dd',dateedit1.Date)+''' and tshop='''+query1.fieldbyname('tshop').value+'''';
          if frmmain.PHService.UpdateLWPM(strupd)=0 then showmessage('Can not save!');

        end;
      end;
    end;
  end;
end;

procedure Tfrmachieving.RefreshGAI1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select rgai_new from tbluser where usr=:x1';
    params[0].asstring:=frmmain.ComboBox1.text;
    open;
    if fieldbyname('rgai_new').value=true then begin
      //label6.caption:=formatdatetime('hh:nn:ss.zzz',now);
      if (combobox1.text='SL') or (combobox1.text='GG') or (combobox1.text='RX') or (combobox1.text='CL') then begin
        if (dateedit1.date=date) then begin
          with query2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftstring,'x2',ptinput);
            params.createparam(ftstring,'x3',ptinput);
            params.createparam(ftdate,'x4',ptinput);
            commandtext:='execute procedure sp_swpm_regenerategai_new(:x1,:x2,:x3,:x4)';
            params[0].asstring:=combobox1.text;
            params[1].asstring:='';//combobox2.text;
            params[2].asstring:=edit1.text;
            params[3].asdate:=dateedit1.date;
            execute;
          end;
        end;
        //showmessage('資料刷新完成!')
      end else showmessage('請選擇工廠!');
      //label7.caption:=formatdatetime('hh:nn:ss.zzz',now);
    end;// else showmessage('沒有權限!');
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmachieving.ReviewWAveLineEff1Click(Sender: TObject);
begin
  //
  if frmqneff=nil then frmqneff:=tfrmqneff.create(nil);
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select sum(eff1*csect)/sum(csect) as s5,sum(eff2*csect)/sum(csect) as s6 '//,sum(peff*csect)/sum(csect) as s7 '
                +'from line_shjs where pline=:x1 and seq=:x2 and flag=''0'' and csect>0';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    open;
    if not fieldbyname('s5').IsNull then frmqneff.Label3.Caption:=formatfloat('0.00',fieldbyname('s5').value)
    else frmqneff.Label3.Caption:='0.00';
    if not fieldbyname('s6').isnull then frmqneff.Label4.Caption:=formatfloat('0.00',fieldbyname('s6').value)
    else frmqneff.Label4.Caption:='0.00';
  end;
  frmqneff.show;
end;

procedure Tfrmachieving.BitBtn9Click(Sender: TObject);
begin
  combobox1change(self);
end;

procedure Tfrmachieving.ComboBox02Change(Sender: TObject);
begin
  if combobox2.text>'' then begin
    //if combobox1.text='' then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='select distinct tplant from tblline where tshop='''+combobox2.text+'''';
        open;
        if not fieldbyname('tplant').isnull then
        combobox1.text:=fieldbyname('tplant').value;
      end;
    //end;
  end;
end;

procedure Tfrmachieving.ComboBox02Enter(Sender: TObject);
var
  tplant:string;
begin
  combobox02.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct tshop from tblline where tshop is not null and lactive=1';
    if combobox1.text>'' then begin
      if combobox1.text<>'CN' then begin
        if combobox1.text='GX' then commandtext:=commandtext+' and tplant in (''GG'',''RX'')'
        else if combobox1.text='GD' then commandtext:=commandtext+' and tplant=''SL'''
        else commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
    end;
    open;
    first;
    while not eof do begin
      combobox02.items.add(fieldbyname('tshop').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmachieving.Edit1Change(Sender: TObject);
begin
  if edit1.text>'' then begin
    //if (combobox1.text='') or (combobox2.text='') then begin
      with query2 do begin
        close;
        params.clear;
        commandtext:='select distinct tplant,tshop from tblline where pline='''+edit1.text+'''';
        open;
        if not fieldbyname('tplant').isnull then
        combobox1.text:=fieldbyname('tplant').value;
        if not fieldbyname('tshop').isnull then
        combobox2.text:=fieldbyname('tshop').value;
      end;
    //end;
  end;
end;

procedure Tfrmachieving.Edit1Enter(Sender: TObject);
begin
  Edit1.items.clear;
  with query2 do begin
    close;
    params.clear;
    commandtext:='select distinct pline from tblline where pline is not null and lactive=1 and substr(pline,1,1) in (''T'',''P'')';
    if combobox1.text>'' then begin
      if combobox1.text<>'CN' then begin
        if combobox1.text='GX' then commandtext:=commandtext+' and tplant in (''GG'',''RX'')'
        else if combobox1.text='GD' then commandtext:=commandtext+' and tplant=''SL'''
        else commandtext:=commandtext+' and tplant='''+combobox1.text+'''';
      end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
    end;
    if label12.caption='0' then commandtext:=commandtext+' and tshop<>''PPW''';
    //if combobox2.text>'' then commandtext:=commandtext+' and tshop='''+combobox2.text+'''';
    if combobox2.text>'' then commandtext:=commandtext+' and f_substr(tshop,'''+combobox2.text+''')>=0';
    open;
    first;
    while not eof do begin
      Edit1.items.add(fieldbyname('pline').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmachieving.ExporttoExcel1Click(Sender: TObject);
begin
  try
  if savedialog1.execute then begin
    //SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,DBGridEh1,SaveDialog1.FileName,true);
    if ExptoExcel(DBGridEh1,'Daily GAI','')=true then showmessage('OK');
  end;
  finally
    //showmessage('succeeded!');
  end;
end;

end.
