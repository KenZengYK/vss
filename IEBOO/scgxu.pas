unit scgxu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBTables, Db,
  Menus, QuickRpt, QrExport, ADODB, DBClient,
  QExport3, QExport3XLS, filectrl, GridsEh, DBGridEh, DBCtrlsEh, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppViewr, Txcomp, DBGridEHImpExp, DBGridEh2Excel_Joe;

type
  Tfrmscgx = class(TForm)
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    PopupMenu1: TPopupMenu;
    AddNew1: TMenuItem;
    Delete1: TMenuItem;
    Save1: TMenuItem;
    updatedata1: TMenuItem;
    Copy2CostRoute1: TMenuItem;
    zygx1: TClientDataSet;
    zygx: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    FloatField1: TFloatField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    FloatField2: TFloatField;
    IntegerField5: TIntegerField;
    FloatField3: TFloatField;
    zygxBzzsj: TFloatField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    StringField6: TStringField;
    FloatField4: TFloatField;
    IntegerField13: TIntegerField;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    Query5: TClientDataSet;
    Query6: TClientDataSet;
    Query7: TClientDataSet;
    zygxVer: TStringField;
    zygxSjzrs: TIntegerField;
    zygxGsd: TBooleanField;
    zygxbjtmu: TFloatField;
    zygxzdj: TFloatField;
    zygxRq: TDateTimeField;
    zygxzdj1: TFloatField;
    zygxzdj2: TFloatField;
    zygxbzzsj1: TFloatField;
    zygxbzzsj2: TFloatField;
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label6: TLabel;
    Label27: TLabel;
    Label24: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    DBEdit21: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit10: TDBEdit;
    zygxyczs: TFloatField;
    zygxlsteff: TFloatField;
    BitBtn5: TBitBtn;
    zygxsizr: TStringField;
    zygxtplant: TStringField;
    zygxflag2: TStringField;
    Label29: TLabel;
    DBEdit24: TDBEdit;
    DBGridEh1: TDBGridEh;
    zygxbsiz: TStringField;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    zygxbkh: TStringField;
    Label26: TLabel;
    DBEdit20: TDBEdit;
    zygxsqs: TStringField;
    Label31: TLabel;
    DBEdit26: TDBEdit;
    zygxbzdj: TFloatField;
    zygxSrz: TIntegerField;
    zygxSkc: TIntegerField;
    zygxSzc: TIntegerField;
    zygxShc: TIntegerField;
    Label36: TLabel;
    DBEdit31: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    zygxactiv: TBooleanField;
    Label37: TLabel;
    DBEdit32: TDBEdit;
    Label38: TLabel;
    DBEdit33: TDBEdit;
    Label39: TLabel;
    DBEdit34: TDBEdit;
    GroupBox2: TGroupBox;
    Label51: TLabel;
    Label53: TLabel;
    DBEdit46: TDBEdit;
    DBEdit48: TDBEdit;
    GroupBox3: TGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    zygxsjzrs01: TIntegerField;
    zygxyczs01: TIntegerField;
    zygxlsteff01: TFloatField;
    zygxsdz01: TIntegerField;
    zygxssz01: TIntegerField;
    zygxssb01: TIntegerField;
    zygxsjg01: TIntegerField;
    zygxsdc01: TIntegerField;
    zygxsrs01: TIntegerField;
    zygxsrz01: TIntegerField;
    zygxskc01: TIntegerField;
    zygxszc01: TIntegerField;
    zygxshc01: TIntegerField;
    zygxsqt01: TIntegerField;
    zygxsjzrs02: TIntegerField;
    zygxyczs02: TIntegerField;
    zygxlsteff02: TFloatField;
    zygxsdz02: TIntegerField;
    zygxssz02: TIntegerField;
    zygxssb02: TIntegerField;
    zygxsjg02: TIntegerField;
    zygxsdc02: TIntegerField;
    zygxsrs02: TIntegerField;
    zygxsrz02: TIntegerField;
    zygxskc02: TIntegerField;
    zygxszc02: TIntegerField;
    zygxshc02: TIntegerField;
    zygxsqt02: TIntegerField;
    zygxxz01: TBooleanField;
    zygxxz02: TBooleanField;
    zygxxz03: TBooleanField;
    zygxxz04: TBooleanField;
    BitBtn13: TBitBtn;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBEdit3: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label8: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    zygxbzzsj3: TFloatField;
    zygxzdj3: TFloatField;
    zygxxzr: TStringField;
    Label9: TLabel;
    GroupBox5: TGroupBox;
    Label13: TLabel;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    zygxlenz: TStringField;
    Label11: TLabel;
    DBComboBox1: TDBComboBox;
    DBCheckBox2: TDBCheckBox;
    zygxappr: TStringField;
    zygxappdt: TDateTimeField;
    zygxappr1: TStringField;
    zygxappdt1: TDateTimeField;
    zygxappr2: TStringField;
    zygxappdt2: TDateTimeField;
    Label10: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBComboBox2: TDBComboBox;
    BitBtn8: TBitBtn;
    BitBtn12: TBitBtn;
    QExport3XLS1: TQExport3XLS;
    Label12: TLabel;
    ComboBox1: TComboBox;
    GroupBox6: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit12: TDBEdit;
    zygxsjzrs03: TIntegerField;
    zygxyczs03: TIntegerField;
    zygxlsteff03: TFloatField;
    DBEdit19: TDBEdit;
    DBEdit22: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label18: TLabel;
    Label28: TLabel;
    Label19: TLabel;
    Label30: TLabel;
    DBEdit23: TDBEdit;
    DBEdit25: TDBEdit;
    zygxsgt: TIntegerField;
    zygxsgt01: TIntegerField;
    zygxsgt02: TIntegerField;
    zygxsgt03: TIntegerField;
    DBCheckBox3: TDBCheckBox;
    zygxplus_size: TBooleanField;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit27: TDBEdit;
    Label40: TLabel;
    DBEdit28: TDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    DBEdit29: TDBEdit;
    Label43: TLabel;
    DBEdit30: TDBEdit;
    zygxdmjz: TStringField;
    zygxdmsz: TStringField;
    zygxcmjz: TStringField;
    zygxcmsz: TStringField;
    Label44: TLabel;
    Edit3: TEdit;
    SpeedButton4: TSpeedButton;
    zygxkh1: TStringField;
    Label45: TLabel;
    DBEdit35: TDBEdit;
    Export2Excel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    zygxzd1: TStringField;
    DBEdit36: TDBEdit;
    Edit4: TEdit;
    Export4RFID1: TMenuItem;
    zygxcust: TStringField;
    zygxbrand: TStringField;
    zygxgsdkh: TStringField;
    zygxflag6: TStringField;
    zygxkdc: TBooleanField;
    DBCheckBox4: TDBCheckBox;
    Label46: TLabel;
    BitBtn14: TBitBtn;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    zygxZd2: TStringField;
    zygxZd3: TStringField;
    zygxZd4: TStringField;
    zygxZd5: TStringField;
    zygxbzdj_b: TFloatField;
    zygxbzdj_c: TFloatField;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    SpeedButton5: TSpeedButton;
    zygx1Seq: TIntegerField;
    zygx1Kh: TStringField;
    zygx1Gxh: TIntegerField;
    zygx1Rid: TIntegerField;
    zygx1Gxdh: TStringField;
    zygx1Gxm: TStringField;
    zygx1Sj: TFloatField;
    zygx1Dj: TFloatField;
    zygx1Scjs: TIntegerField;
    zygx1Yczl: TStringField;
    zygx1Zh: TStringField;
    zygx1Sxrs: TFloatField;
    zygx1Dz: TFloatField;
    zygx1Sz: TFloatField;
    zygx1Rz: TFloatField;
    zygx1Snz: TFloatField;
    zygx1Jg: TFloatField;
    zygx1Rs: TFloatField;
    zygx1Qt: TFloatField;
    zygx1Mx: TStringField;
    zygx1Dx: TStringField;
    zygx1Yzjb: TStringField;
    zygx1Zj: TStringField;
    zygx1Zf: TStringField;
    zygx1Zkcc: TStringField;
    zygx1Cfyq: TStringField;
    zygx1Zb: TStringField;
    zygx1Egxm: TStringField;
    zygx1Eyczl: TStringField;
    zygx1Ecfyq: TStringField;
    zygx1Eyzjb: TStringField;
    zygx1Yclj: TStringField;
    zygx1Tyczl: TStringField;
    zygx1Tyzjb: TStringField;
    zygx1Ycdh: TStringField;
    zygx1Fyl: TFloatField;
    zygx1Bzsj: TFloatField;
    zygx1Bzsj1: TFloatField;
    zygx1Cw1: TStringField;
    zygx1Cw2: TStringField;
    zygx1Jhl: TFloatField;
    zygx1Sjdj: TFloatField;
    zygx1sjdj1: TFloatField;
    zygx1dfgx: TStringField;
    zygx1sjrs: TIntegerField;
    zygx1sjsj: TFloatField;
    zygx1lst: TFloatField;
    zygx1trmoff: TStringField;
    zygx1ycfj: TStringField;
    zygx1jscl: TFloatField;
    zygx1cjqr: TBooleanField;
    zygx1xz01: TBooleanField;
    zygx1xz02: TBooleanField;
    zygx1xz03: TBooleanField;
    zygx1xz04: TBooleanField;
    zygx1xz05: TBooleanField;
    zygx1xz06: TBooleanField;
    zygx1xz07: TBooleanField;
    zygx1jscl1: TFloatField;
    zygx1bzsj2: TFloatField;
    zygx1sjdj2: TFloatField;
    zygx1xz30: TBooleanField;
    zygx1xz31: TBooleanField;
    zygx1xz40: TBooleanField;
    zygx1xz41: TBooleanField;
    zygx1msc: TStringField;
    zygx1ycdm: TStringField;
    zygx1cjqr1: TStringField;
    zygx1brust: TIntegerField;
    zygx1arche: TStringField;
    zygx1length: TStringField;
    zygx1xz08: TBooleanField;
    zygx1xz09: TBooleanField;
    zygx1xz42: TBooleanField;
    zygx1jb: TBooleanField;
    zygx1hzb: TStringField;
    zygx1kd: TStringField;
    zygx1ycsd: TStringField;
    zygx1dmjtmu: TFloatField;
    zygx1dmstmu: TFloatField;
    zygx1cmjtmu: TFloatField;
    zygx1cmstmu: TFloatField;
    zygx1dmjdj: TFloatField;
    zygx1dmsdj: TFloatField;
    zygx1cmjdj: TFloatField;
    zygx1cmsdj: TFloatField;
    zygx1dmjcl: TFloatField;
    zygx1dmscl: TFloatField;
    zygx1cmjcl: TFloatField;
    zygx1cmscl: TFloatField;
    zygx1pmsqr: TStringField;
    zygx1dmjqr: TStringField;
    zygx1dmsqr: TStringField;
    zygx1cmjqr: TStringField;
    zygx1cmsqr: TStringField;
    zygx1pmscd: TStringField;
    zygx1dmjcd: TStringField;
    zygx1dmscd: TStringField;
    zygx1cmjcd: TStringField;
    zygx1cmscd: TStringField;
    zygx1pmssq: TIntegerField;
    zygx1dmjsq: TIntegerField;
    zygx1dmssq: TIntegerField;
    zygx1cmjsq: TIntegerField;
    zygx1cmssq: TIntegerField;
    zygx1gxtype: TStringField;
    zygx1x1: TFloatField;
    zygx1x2: TFloatField;
    zygx1zbdesc_cn: TStringField;
    zygx1zbdesc_en: TStringField;
    zygx1nyd: TStringField;
    zygx1opt_type: TStringField;
    zygx1opt_seq: TStringField;
    zygx1opt_fe: TStringField;
    zygx1opt_sc: TStringField;
    zygx1opt_float: TStringField;
    zygx1opt_move: TStringField;
    BitBtn15: TBitBtn;
    ieboo2: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel7: TppLabel;
    ppLine7: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel14: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine29: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine1: TppLine;
    ppLine28: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppShape2: TppShape;
    ppLine40: TppLine;
    ppLine2: TppLine;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLine41: TppLine;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLine42: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLabel41: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLabel42: TppLabel;
    ppDBText24: TppDBText;
    ppLine47: TppLine;
    ppLabel43: TppLabel;
    ppShape3: TppShape;
    ppLabel31: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    Label47: TLabel;
    DBComboBox3: TDBComboBox;
    zygxstatu: TStringField;
    Label48: TLabel;
    DBComboBox4: TDBComboBox;
    zygx1sah_opt: TStringField;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine33: TppLine;
    ppLabel48: TppLabel;
    ppDBText9: TppDBText;
    ppLine48: TppLine;
    zygx1parts_d: TStringField;
    zygx1parts_d1: TStringField;
    zygx1parts_m: TBooleanField;
    zygx1parts_c: TBooleanField;
    BitBtn16: TBitBtn;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape4: TppShape;
    ppLabel2: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLine4: TppLine;
    ppLabel53: TppLabel;
    ppLine8: TppLine;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLine9: TppLine;
    ppLabel60: TppLabel;
    ppLine39: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLine55: TppLine;
    ppLabel66: TppLabel;
    ppLine56: TppLine;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLine60: TppLine;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLine63: TppLine;
    ppLabel82: TppLabel;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText38: TppDBText;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
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
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppDBText41: TppDBText;
    ppLine83: TppLine;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape5: TppShape;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLine86: TppLine;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel89: TppLabel;
    ppDBText48: TppDBText;
    ppShape6: TppShape;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLine87: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLine88: TppLine;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel95: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    zygxcls: TStringField;
    Label49: TLabel;
    DBComboBox5: TDBComboBox;
    zygx1guid_plate: TStringField;
    zygx1tps_q: TStringField;
    zygx1tps_c: TStringField;
    zygx1seam_t: TStringField;
    zygx1seam_w: TStringField;
    zygx1csid: TStringField;
    ExportBOO1: TMenuItem;
    zygx1trtpt: TBooleanField;
    zygx1gxh_n: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure AddNew1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure zygx1_SjChange(Sender: TField);
    procedure zygx1_YczlChange(Sender: TField);
    procedure zygxMbChange(Sender: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure zygx1AfterPost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure zygx1_GxmChange(Sender: TField);
    procedure zygxZrsChange(Sender: TField);
    procedure zygxAfterPost(DataSet: TDataSet);
    procedure zygx1_GxdhChange(Sender: TField);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure zygx1AfterDelete(DataSet: TDataSet);
    procedure zygxNewRecord(DataSet: TDataSet);
    procedure zygx1NewRecord(DataSet: TDataSet);
    procedure zygx1_FylChange(Sender: TField);
    procedure updatedata1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Copy2CostRoute1Click(Sender: TObject);
    procedure zygxAfterScroll(DataSet: TDataSet);
    procedure zygx1BeforeDelete(DataSet: TDataSet);
    procedure zygx1_Bzsj1Change(Sender: TField);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure zygx1_YzjbChange(Sender: TField);
    procedure zygx1_SjdjChange(Sender: TField);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure zygxbzdjChange(Sender: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure zygx1_bzsj2Change(Sender: TField);
    procedure zygxAfterOpen(DataSet: TDataSet);
    procedure zygxBeforeDelete(DataSet: TDataSet);
    procedure zygxBeforeEdit(DataSet: TDataSet);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure p_updzygx1(const s1:string);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Export2Excel1Click(Sender: TObject);
    procedure Export4RFID1Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure DBGridEh1ColEnter(Sender: TObject);
    procedure zygx1_zbdesc_enChange(Sender: TField);
    procedure DBEdit26DblClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure zygx1_sjdj2Change(Sender: TField);
    procedure zygx1AfterOpen(DataSet: TDataSet);
    procedure BitBtn15Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure DBGridEh1TitleClick(Column: TColumnEh);
    procedure BitBtn16Click(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure DBGridEh1Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure zygx1ZbChange(Sender: TField);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure DataSource2StateChange(Sender: TObject);
    procedure ExportBOO1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function getzsj(const seq: integer; const kh: string; const rid: integer):double;
    function getzsl(const seq: integer; const kh: string; const rid: integer):integer;
    procedure calc_rs(const seq: integer; const kh: string; const maxsl: integer);
    procedure zldc(const zd,zd1,zd2,zd3,zd4,zd5,kh,kh1:string; const kdc,dj:string);
  end;

var
  frmscgx: Tfrmscgx;
  gsj:double;

implementation

uses xzgxu, xggxxhu, scgxdyu, cpyscgxu, printlinebanace, xzcbgxu, dlu,
  dfgxlyu, dfgxly1u, cggxdyu, zhsdformu, lbxhformu, zldcformu, qtgxbformu,
  dfgxly2u, scgx_gsjformu, zhxzformu, iewsformu;

{$R *.DFM}

procedure Tfrmscgx.BitBtn1Click(Sender: TObject);
var
  vn:integer;
  r20:boolean;
begin
  r20:=false;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select * from ie_qx where nam=:x1';
    params[0].asstring:=frmxtdl.ComboBox1.text;
    open;
    r20:=fieldbyname('r20').value;
  end;
  //if uppercase(frmxtdl.combobox1.text)<>'LIMIN' then exit;
  //if (frmxtdl.ComboBox1.Text<>'LIMIN') and (frmxtdl.ComboBox1.Text<>'ADMIN') then exit;
  if not r20 then exit;
  if zygx.recordcount>0 then
  begin
      if application.messagebox('要刪除此款號嗎?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
      begin
        vn:=zygx.fieldbyname('seq').asinteger;
        query1.close;
        query1.params.clear;
        query1.Params.CreateParam(ftinteger,'seq',ptinput);
        query1.commandtext:='delete from IE_zygx1 where seq=:seq';
        query1.params[0].value:=vn;
        query1.execute;
        query1.close;
        query1.params.clear;
        query1.Params.CreateParam(ftinteger,'seq',ptinput);
        query1.commandtext:='delete from IE_zygx where seq=:seq';
        query1.params[0].value:=vn;
        query1.execute;
        zygx.Delete;
      end;
  end;
end;

procedure Tfrmscgx.AddNew1Click(Sender: TObject);
begin
  zygx1.append;
  dbgrideh1.selectedindex:=0;
end;

procedure Tfrmscgx.Delete1Click(Sender: TObject);
var
  vn:integer;
begin
  if zygx1.recordcount>0 then
  begin
    if not dbgrideh1.fields[1].isnull then
    begin
      if application.messagebox('要刪除此工序嗎?','Confirmation',mb_iconquestion+mb_okcancel)=idok then
      begin
        vn:=zygx1.fieldbyname('Rid').value;
        query1.close;
        query1.params.clear;
        query1.Params.CreateParam(ftinteger,'Rid',ptinput);
        query1.commandtext:='delete from IE_zygx1 where rid=:rid';
        query1.params[0].value:=vn;
        query1.execute;
        zygx1.delete;
      end;
    end;
  end;
end;

procedure Tfrmscgx.Save1Click(Sender: TObject);
begin
  if not dbgrideh1.fields[1].isnull then
  begin
    if (zygx1.state=dsedit) or (zygx1.state=dsinsert) then
    begin
      zygx1.post;
    end;
  end;
end;

procedure Tfrmscgx.FormShow(Sender: TObject);
var
  r15:boolean;
begin
  r15:=false;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select * from ie_qx where nam=:x1';
    params[0].asstring:=frmxtdl.ComboBox1.text;
    open;
    r15:=fieldbyname('r15').value;
  end;
  if r15 then begin
    dbedit4.ReadOnly:=false;
    dbedit36.ReadOnly:=false;
    dbedit37.ReadOnly:=false;
    dbedit38.ReadOnly:=false;
    dbedit39.ReadOnly:=false;
    dbedit40.ReadOnly:=false;
    dbedit5.ReadOnly:=false;
    dbedit35.ReadOnly:=false;
    dbedit20.ReadOnly:=false;
    dbedit26.ReadOnly:=false;
    dbedit41.ReadOnly:=false;
    dbedit42.ReadOnly:=false;
    dbcombobox4.ReadOnly:=false;
    dbcombobox5.ReadOnly:=false;
    combobox1.Enabled:=true;
  end else begin
    dbedit4.ReadOnly:=true;
    dbedit36.ReadOnly:=true;
    dbedit37.ReadOnly:=true;
    dbedit38.ReadOnly:=true;
    dbedit39.ReadOnly:=true;
    dbedit40.ReadOnly:=true;
    dbedit5.ReadOnly:=true;
    dbedit35.ReadOnly:=true;
    dbedit20.ReadOnly:=true;
    dbedit26.ReadOnly:=true;
    dbedit41.ReadOnly:=true;
    dbedit42.ReadOnly:=true;
    dbcombobox4.ReadOnly:=true;
    dbcombobox5.ReadOnly:=true;
    combobox1.Enabled:=false;
  end;
  edit1.text:='';
  edit2.text:='';
  zygx1.Close;
  zygx.close;
  edit1.setfocus;
  //zygx.open;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select bzdj from ie_bzdj where sxrq=(select max(sxrq) from ie_bzdj)';
    open;
    if not fieldbyname('bzdj').isnull then gsj:=fieldbyname('bzdj').value else gsj:=5.00;
  end;
end;

procedure Tfrmscgx.zygx1_SjChange(Sender: TField);
var
  sj,bzdj,bzdj_b,bzdj_c,price:double;
  nyd,fty,fae,prodcode:string;
  r15:boolean;
begin
  r15:=false;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select * from ie_qx where nam=:x1';
    params[0].asstring:=frmxtdl.ComboBox1.text;
    open;
    r15:=fieldbyname('r15').value;
  end;
  if r15 then begin
    if not zygx.fieldbyname('bzdj').isnull then bzdj:=zygx.fieldbyname('bzdj').value else bzdj:=gsj;
    if not zygx.fieldbyname('bzdj_b').isnull then bzdj_b:=zygx.fieldbyname('bzdj_b').value else bzdj_b:=gsj;
    if not zygx.fieldbyname('bzdj_c').isnull then bzdj_c:=zygx.fieldbyname('bzdj_c').value else bzdj_c:=gsj;
  end;
  if not zygx.fieldbyname('tplant').isnull then fty:=zygx.fieldbyname('tplant').value else fty:='';
  if not zygx.fieldbyname('spmc').isnull then prodcode:=zygx.fieldbyname('spmc').value else prodcode:='';
  if not zygx1.fieldbyname('zb').isnull then fae:=zygx1.fieldbyname('zb').value else fae:='';
  if not zygx1.fieldbyname('nyd').isnull then nyd:=zygx1.fieldbyname('nyd').value else nyd:='';
  if not zygx1.fieldbyname('sj').IsNull then sj:=zygx1.fieldbyname('sj').value else sj:=0;
  if sj>0 then begin
    if r15 then begin
      if nyd='A' then
        zygx1.FieldByName('sjdj').Value:=sj*bzdj
      else if nyd='B' then
        zygx1.FieldByName('sjdj').Value:=sj*bzdj_b
      else if nyd='C' then
        zygx1.FieldByName('sjdj').Value:=sj*bzdj_c
      else zygx1.FieldByName('sjdj').Value:=sj*bzdj;
    end else begin
      with query1 do begin
        close;
        params.clear;
        commandtext:='select price from ie_price_master where fty='''+fty+''' and prodcode='''+prodcode+''' and fae='''+fae+''' and difficulty='''+nyd+'''';
        open;
        if not fieldbyname('price').isnull then price:=fieldbyname('price').value else price:=0;
      end;
      zygx1.fieldbyname('sjdj').value:=sj*price;
    end;
    zygx1.fieldbyname('jscl').value:=0.5/sj;
  end else begin
    zygx1.fieldbyname('sjdj').value:=0;
    zygx1.FieldByName('jscl').Value:=0;
  end;
end;

procedure Tfrmscgx.zygx1_YczlChange(Sender: TField);
begin
  if not zygx1.fieldbyname('yczl').isnull then
  begin
    {
    if zygx1.fieldbyname('yczl').value='單針' then begin
      zygx1.fieldbyname('ycdm').value:='SN';
      zygx1.fieldbyname('eyczl').value:='SN';
    end else if zygx1.fieldbyname('yczl').value='單針刀車' then begin
      zygx1.fieldbyname('ycdm').value:='SNSC';
      zygx1.fieldbyname('eyczl').value:='SNSC';
    end else if zygx1.fieldbyname('yczl').value='雙針' then begin
      zygx1.fieldbyname('ycdm').value:='DN';
      zygx1.fieldbyname('eyczl').value:='DN';
    end else if zygx1.fieldbyname('yczl').value='雙針刀車' then begin
      zygx1.fieldbyname('ycdm').value:='DNSC';
      zygx1.fieldbyname('eyczl').value:='DNSC';
    end else if zygx1.fieldbyname('yczl').value='人字' then begin
      zygx1.fieldbyname('ycdm').value:='ZZ';
      zygx1.fieldbyname('eyczl').value:='ZZ';
    end else if zygx1.fieldbyname('yczl').value='三步' then begin
      zygx1.fieldbyname('ycdm').value:='3ZZ';
      zygx1.fieldbyname('eyczl').value:='3ZZ';
    end else if zygx1.fieldbyname('yczl').value='鈒骨' then begin
      zygx1.fieldbyname('ycdm').value:='OL';
      zygx1.fieldbyname('eyczl').value:='OL';
    end else if zygx1.fieldbyname('yczl').value='仚車' then begin
      zygx1.fieldbyname('ycdm').value:='CS';
      zygx1.fieldbyname('eyczl').value:='CS';
    end else if zygx1.fieldbyname('yczl').value='打棗' then begin
      zygx1.fieldbyname('ycdm').value:='BT';
      zygx1.fieldbyname('eyczl').value:='BT';
    end else if zygx1.fieldbyname('yczl').value='打花' then begin
      zygx1.fieldbyname('ycdm').value:='ST';
      zygx1.fieldbyname('eyczl').value:='ST';
    end else if zygx1.fieldbyname('yczl').value='粘縫' then begin
      zygx1.fieldbyname('ycdm').value:='BD';
      zygx1.fieldbyname('eyczl').value:='BD';
    end else if zygx1.fieldbyname('yczl').value='超聲波' then begin
      zygx1.fieldbyname('ycdm').value:='UT';
      zygx1.fieldbyname('eyczl').value:='UT';
    end else if zygx1.fieldbyname('yczl').value='壓燙機' then begin
      zygx1.fieldbyname('ycdm').value:='PS';
      zygx1.fieldbyname('eyczl').value:='PS';
    end else if zygx1.fieldbyname('yczl').value='移印機' then begin
      zygx1.fieldbyname('ycdm').value:='PP';
      zygx1.fieldbyname('eyczl').value:='PP';
    end else if zygx1.fieldbyname('yczl').value='魚網' then begin
      zygx1.fieldbyname('ycdm').value:='FG';
      zygx1.fieldbyname('eyczl').value:='FG';
    end else if zygx1.fieldbyname('yczl').value='人手' then begin
      zygx1.fieldbyname('ycdm').value:='HD';
      zygx1.fieldbyname('eyczl').value:='HD';
    end;
    }
    if copy(zygx1.fieldbyname('yczl').value,1,4)='單針' then
    begin
      zygx1.fieldbyname('dz').value:=zygx1.fieldbyname('sxrs').value;
      zygx1.fieldbyname('sz').value:=0.00;
      zygx1.fieldbyname('snz').value:=0.00;
      zygx1.fieldbyname('rz').value:=0.00;
      zygx1.fieldbyname('jg').value:=0.00;
      zygx1.fieldbyname('rs').value:=0.00;
      zygx1.fieldbyname('qt').value:=0.00;
    end
    else
    begin
      if copy(zygx1.fieldbyname('yczl').value,1,4)='雙針' then
      begin
        zygx1.fieldbyname('sz').value:=zygx1.fieldbyname('sxrs').value;
        zygx1.fieldbyname('dz').value:=0.00;
        zygx1.fieldbyname('snz').value:=0.00;
        zygx1.fieldbyname('rz').value:=0.00;
        zygx1.fieldbyname('jg').value:=0.00;
        zygx1.fieldbyname('rs').value:=0.00;
        zygx1.fieldbyname('qt').value:=0.00;
      end
      else
      begin
        if (copy(zygx1.fieldbyname('yczl').value,1,4)='人字') or (copy(zygx1.fieldbyname('yczl').value,1,4)='三步') then
        begin
          zygx1.fieldbyname('rz').value:=zygx1.fieldbyname('sxrs').value;
          zygx1.fieldbyname('dz').value:=0.00;
          zygx1.fieldbyname('sz').value:=0.00;
          zygx1.fieldbyname('snz').value:=0.00;
          zygx1.fieldbyname('jg').value:=0.00;
          zygx1.fieldbyname('rs').value:=0.00;
          zygx1.fieldbyname('qt').value:=0.00;
        end
        else
        begin
          if (copy(zygx1.fieldbyname('yczl').value,1,4)='刀車') or (copy(zygx1.fieldbyname('yczl').value,1,4)='仚車') then
          begin
            zygx1.fieldbyname('snz').value:=zygx1.fieldbyname('sxrs').value;
            zygx1.fieldbyname('dz').value:=0.00;
            zygx1.fieldbyname('sz').value:=0.00;
            zygx1.fieldbyname('rz').value:=0.00;
            zygx1.fieldbyname('jg').value:=0.00;
            zygx1.fieldbyname('rs').value:=0.00;
            zygx1.fieldbyname('qt').value:=0.00;
          end
          else
          begin
            if copy(zygx1.fieldbyname('yczl').value,1,4)='鈒骨' then
            begin
              zygx1.fieldbyname('jg').value:=zygx1.fieldbyname('sxrs').value;
              zygx1.fieldbyname('dz').value:=0.00;
              zygx1.fieldbyname('sz').value:=0.00;
              zygx1.fieldbyname('rz').value:=0.00;
              zygx1.fieldbyname('snz').value:=0.00;
              zygx1.fieldbyname('rs').value:=0.00;
              zygx1.fieldbyname('qt').value:=0.00;
            end
            else
            begin
              if copy(zygx1.fieldbyname('yczl').value,1,4)='人手' then
              begin
                zygx1.fieldbyname('rs').value:=zygx1.fieldbyname('sxrs').value;
                zygx1.fieldbyname('dz').value:=0.00;
                zygx1.fieldbyname('sz').value:=0.00;
                zygx1.fieldbyname('rz').value:=0.00;
                zygx1.fieldbyname('snz').value:=0.00;
                zygx1.fieldbyname('jg').value:=0.00;
                zygx1.fieldbyname('qt').value:=0.00;
              end
              else
              begin
                zygx1.fieldbyname('qt').value:=zygx1.fieldbyname('sxrs').value;
                zygx1.fieldbyname('dz').value:=0.00;
                zygx1.fieldbyname('sz').value:=0.00;
                zygx1.fieldbyname('rz').value:=0.00;
                zygx1.fieldbyname('snz').value:=0.00;
                zygx1.fieldbyname('jg').value:=0.00;
                zygx1.fieldbyname('rs').value:=0.00;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure Tfrmscgx.zygxMbChange(Sender: TField);
begin
  {
  if not zygx.fieldbyname('mb').isnull then
  begin
    zygx.fieldbyname('mbxs').asinteger:=strtoint(formatfloat('#####0',zygx.fieldbyname('mb').asinteger/16));
    if zygx.fieldbyname('mb').asinteger>0 then
    begin
      zygx.fieldbyname('wcqj').asfloat:=zygx.fieldbyname('zsl').asinteger/zygx.fieldbyname('mb').asinteger;
      if (zygx1.state<>dsinsert) and (zygx1.state<>dsedit) then
      begin
       zygx1.DisableControls;
       zygx1.first;
       while not zygx1.eof do
       begin
        zygx1.edit;
        if zygx1.fieldbyname('scjs').asinteger>0 then
         zygx1.fieldbyname('sxrs').asfloat:=zygx.fieldbyname('mb').asinteger/zygx1.fieldbyname('scjs').asinteger
        else zygx1.fieldbyname('sxrs').asfloat:=0.00;
        if not zygx1.fieldbyname('yczl').isnull then
        begin
          if copy(zygx1.fieldbyname('yczl').value,1,4)='單針' then
          begin
            zygx1.fieldbyname('dz').value:=zygx1.fieldbyname('sxrs').value;
            zygx1.fieldbyname('sz').value:=0.00;
            zygx1.fieldbyname('snz').value:=0.00;
            zygx1.fieldbyname('rz').value:=0.00;
            zygx1.fieldbyname('jg').value:=0.00;
            zygx1.fieldbyname('rs').value:=0.00;
            zygx1.fieldbyname('qt').value:=0.00;
          end
          else
          begin
            if copy(zygx1.fieldbyname('yczl').value,1,4)='雙針' then
            begin
              zygx1.fieldbyname('sz').value:=zygx1.fieldbyname('sxrs').value;
              zygx1.fieldbyname('dz').value:=0.00;
              zygx1.fieldbyname('snz').value:=0.00;
              zygx1.fieldbyname('rz').value:=0.00;
              zygx1.fieldbyname('jg').value:=0.00;
              zygx1.fieldbyname('rs').value:=0.00;
              zygx1.fieldbyname('qt').value:=0.00;
            end
            else
            begin
              if (copy(zygx1.fieldbyname('yczl').value,1,4)='人字') or (copy(zygx1.fieldbyname('yczl').value,1,4)='三步') then
              begin
                zygx1.fieldbyname('rz').value:=zygx1.fieldbyname('sxrs').value;
                zygx1.fieldbyname('dz').value:=0.00;
                zygx1.fieldbyname('sz').value:=0.00;
                zygx1.fieldbyname('snz').value:=0.00;
                zygx1.fieldbyname('jg').value:=0.00;
                zygx1.fieldbyname('rs').value:=0.00;
                zygx1.fieldbyname('qt').value:=0.00;
              end
              else
              begin
                if (copy(zygx1.fieldbyname('yczl').value,1,4)='刀車') or (copy(zygx1.fieldbyname('yczl').value,1,4)='仚車') then
                begin
                  zygx1.fieldbyname('snz').value:=zygx1.fieldbyname('sxrs').value;
                  zygx1.fieldbyname('dz').value:=0.00;
                  zygx1.fieldbyname('sz').value:=0.00;
                  zygx1.fieldbyname('rz').value:=0.00;
                  zygx1.fieldbyname('jg').value:=0.00;
                  zygx1.fieldbyname('rs').value:=0.00;
                  zygx1.fieldbyname('qt').value:=0.00;
                end
                else
                begin
                  if copy(zygx1.fieldbyname('yczl').value,1,4)='鈒骨' then
                  begin
                    zygx1.fieldbyname('jg').value:=zygx1.fieldbyname('sxrs').value;
                    zygx1.fieldbyname('dz').value:=0.00;
                    zygx1.fieldbyname('sz').value:=0.00;
                    zygx1.fieldbyname('rz').value:=0.00;
                    zygx1.fieldbyname('snz').value:=0.00;
                    zygx1.fieldbyname('rs').value:=0.00;
                    zygx1.fieldbyname('qt').value:=0.00;
                  end
                  else
                  begin
                    if copy(zygx1.fieldbyname('yczl').value,1,4)='人手' then
                    begin
                      zygx1.fieldbyname('rs').value:=zygx1.fieldbyname('sxrs').value;
                      zygx1.fieldbyname('dz').value:=0.00;
                      zygx1.fieldbyname('sz').value:=0.00;
                      zygx1.fieldbyname('rz').value:=0.00;
                      zygx1.fieldbyname('snz').value:=0.00;
                      zygx1.fieldbyname('jg').value:=0.00;
                      zygx1.fieldbyname('qt').value:=0.00;
                    end
                    else
                    begin
                      zygx1.fieldbyname('qt').value:=zygx1.fieldbyname('sxrs').value;
                      zygx1.fieldbyname('dz').value:=0.00;
                      zygx1.fieldbyname('sz').value:=0.00;
                      zygx1.fieldbyname('rz').value:=0.00;
                      zygx1.fieldbyname('snz').value:=0.00;
                      zygx1.fieldbyname('jg').value:=0.00;
                      zygx1.fieldbyname('rs').value:=0.00;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
        zygx1.post;
        zygx1.next;
       end;
       zygx1.first;
       zygx1.EnableControls;
      end;
    end;
  end;
  }
end;

procedure Tfrmscgx.BitBtn2Click(Sender: TObject);
begin
  if (zygx.state=dsedit) or (zygx.state=dsinsert) then zygx.post;
  if not zygx.fieldbyname('seq').isnull then begin
    with query4 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='update ie_zygx1 set zb=''S-AL'' where seq=:x1 and zb=''A''';
      params[0].asinteger:=zygx.fieldbyname('seq').value;
      execute;
    end;
    if frmzhxz=nil then frmzhxz:=tfrmzhxz.create(nil);
    frmzhxz.caption:='組合類別選擇  -  一步 (規格和重點要求)';
    frmzhxz.label1.caption:='fst';
    frmzhxz.show;
  end;
  {
  if zygx.recordcount>0 then
  begin
    if dbedit5.text<>'' then
    begin
      with query6 do begin
        close;
        params.clear;
        params.CreateParam(ftinteger,'seq',ptinput);
        params.CreateParam(ftstring,'var1',ptinput);
        params.CreateParam(ftstring,'var2',ptinput);
        params.CreateParam(ftstring,'var3',ptinput);
        commandtext:='update IE_zygx1 set zj=NULL where seq=:seq and zj in(:var1,:var2,:var3)';
        params[0].value:=zygx.fieldbyname('seq').value;
        params[1].value:='0';
        params[2].value:='0.0';
        params[3].value:='0.00';
        execute;
        close;
        params.clear;
        params.CreateParam(ftinteger,'seq',ptinput);
        params.CreateParam(ftstring,'var1',ptinput);
        params.CreateParam(ftstring,'var2',ptinput);
        params.CreateParam(ftstring,'var3',ptinput);
        commandtext:='update IE_zygx1 set zf=NULL where seq=:seq and zf in(:var1,:var2,:var3)';
        params[0].value:=zygx.fieldbyname('seq').value;
        params[1].value:='0';
        params[2].value:='0.0';
        params[3].value:='0.00';
        execute;
        close;
        params.clear;
        params.CreateParam(ftinteger,'seq',ptinput);
        params.CreateParam(ftstring,'var1',ptinput);
        params.CreateParam(ftstring,'var2',ptinput);
        params.CreateParam(ftstring,'var3',ptinput);
        commandtext:='update IE_zygx1 set zkcc=NULL where seq=:seq and zkcc in(:var1,:var2,:var3)';
        params[0].value:=zygx.fieldbyname('seq').value;
        params[1].value:='0';
        params[2].value:='0.0';
        params[3].value:='0.00';
        execute;
      end;
      if frmscgxdy=nil then frmscgxdy:=tfrmscgxdy.create(self);
      frmscgxdy.Label1.Caption:='scgx';
      frmscgxdy.show;
    end;
  end;
  }
end;

procedure Tfrmscgx.zygx1AfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet,0,1,2);
end;

procedure Tfrmscgx.BitBtn3Click(Sender: TObject);
var
  r20:boolean;
begin
  r20:=false;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select * from ie_qx where nam=:x1';
    params[0].asstring:=frmxtdl.ComboBox1.text;
    open;
    r20:=fieldbyname('r20').value;
  end;
  //if uppercase(frmxtdl.combobox1.text)<>'LIMIN' then exit;
  //if (frmxtdl.ComboBox1.Text<>'LIMIN') and (frmxtdl.ComboBox1.Text<>'ADMIN') and (frmxtdl.ComboBox1.Text<>'ERIC') then exit;
  if not r20 then exit;
  if frmxzgx=nil then frmxzgx:=tfrmxzgx.create(self);
  {
  frmxzgx.DBEdit1.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit2.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit3.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit4.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit5.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit6.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit7.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit15.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit16.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit17.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit18.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit19.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit20.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit21.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit22.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit23.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit24.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit25.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit26.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit27.datasource:=frmscgx.datasource2;
  frmxzgx.dbcombobox1.DataSource:=frmscgx.datasource2;
  frmxzgx.DBNavigator1.DataSource:=frmscgx.datasource2;
  }
  frmxzgx.label29.caption:='scgx';
  frmxzgx.show;
  query2.close;
  query2.params.clear;
  Query2.Params.CreateParam(ftinteger,'seq',ptinput);
  query2.commandtext:='select max(gxh) as seq from IE_zygx1 where seq=:seq';
  query2.params[0].value:=zygx.fieldbyname('seq').asInteger;
  query2.open;
  if query2.fieldbyname('seq').isnull then
  begin
    zygx1.append;
    zygx1.fieldbyname('kh').value:=dbedit5.text;
    zygx1.fieldbyname('gxh').value:=5;
    zygx1.post;
  end
  else
  begin
    //query2.last;
    zygx1.append;
    zygx1.fieldbyname('kh').value:=dbedit5.text;
    zygx1.fieldbyname('gxh').value:=query2.fieldbyname('seq').value+5;//(query2.fieldbyname('seq').value div 10)*10+10;//query2.recordcount+1;
    zygx1.post;
  end;
end;

procedure Tfrmscgx.DBGrid1DblClick(Sender: TObject);
var
  r20:boolean;
begin
  r20:=false;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select * from ie_qx where nam=:x1';
    params[0].asstring:=frmxtdl.ComboBox1.text;
    open;
    r20:=fieldbyname('r20').value;
  end;
  //if uppercase(frmxtdl.combobox1.text)<>'LIMIN' then exit;
  //if (frmxtdl.ComboBox1.Text<>'LIMIN') and (frmxtdl.ComboBox1.Text<>'ADMIN') and (frmxtdl.ComboBox1.Text<>'ERIC') then exit;
  if not r20 then exit;
  if frmxzgx=nil then frmxzgx:=tfrmxzgx.create(self);
  {
  frmxzgx.DBEdit1.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit2.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit3.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit4.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit5.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit6.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit7.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit15.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit16.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit17.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit18.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit19.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit20.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit21.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit22.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit23.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit24.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit25.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit26.datasource:=frmscgx.datasource2;
  frmxzgx.DBEdit27.datasource:=frmscgx.datasource2;
  frmxzgx.dbcombobox1.DataSource:=frmscgx.datasource2;
  frmxzgx.DBNavigator1.DataSource:=frmscgx.datasource2;
  }
  frmxzgx.show;
end;

procedure Tfrmscgx.zygx1_GxmChange(Sender: TField);
var
  ndxs,plxs,sj,bzdj:double;
  rid1:integer;
begin
  ndxs:=1.00;plxs:=1.00;
  if not zygx1.fieldbyname('gxm').isnull then
  begin
    query3.close;
    query3.params.clear;
    Query3.Params.CreateParam(ftstring,'mc',ptinput);
    query3.commandtext:='select * from IE_bzgx1 where mc=:mc';
    query3.params[0].value:=frmxzgx.DBComboBox1.text;
    query3.open;
    if not query3.fieldbyname('dh').isnull then
    begin
      if (zygx1.fieldbyname('gxdh').IsNull) or (copy(zygx1.fieldbyname('gxdh').value,1,4)<>copy(query3.fieldbyname('dh').value,1,4)) then
      //if zygx1gxdh.isnull then
      zygx1.fieldbyname('gxdh').value:=query3.fieldbyname('dh').value;
      if not frmscgx.zygx1.fieldbyname('gxdh').isnull then begin
        query2.Close;
        query2.Params.Clear;
        query2.Params.CreateParam(ftstring,'gxdh',ptinput);
        query2.Params.CreateParam(ftstring,'seq',ptinput);
        query2.commandtext:='select max(Rid) as Rid1 from IE_zygx1 where gxdh=:gxdh and seq=:seq';
        query2.params[0].value:=query3.fieldbyname('dh').value;
        query2.params[1].value:=frmscgx.zygx.fieldbyname('seq').value;
        query2.open;
        if not query2.fieldbyname('rid1').isnull then rid1:=query2.fieldbyname('rid1').value else rid1:=1;
        if ((frmscgx.zygx1.State=dsedit) and (rid1>frmscgx.zygx1.FieldByName('Rid').value)) or ((frmscgx.zygx1.State=dsinsert) and (query2.FieldByName('Rid1').value>=frmscgx.zygx1.FieldByName('Rid').value)) then begin
          showmessage('此工序代號已經存在﹗');
          zygx1.Cancel;
          exit;
        end;
      end;
        if not query3.fieldbyname('sj').isnull then sj:=query3.fieldbyname('sj').value;
        if not query3.fieldbyname('bzdj').isnull then bzdj:=query3.fieldbyname('bzdj').value else bzdj:=0;
        frmscgx.zygx1.fieldbyname('sj').value:=sj*ndxs*plxs;
        frmscgx.zygx1.fieldbyname('dj').value:=sj*ndxs*plxs*bzdj;
        if not query3.fieldbyname('czxh').isnull then
          frmscgx.zygx1.fieldbyname('zh').value:=query3.fieldbyname('czxh').value
        else frmscgx.zygx1.fieldbyname('zh').value:='';
        if not query3.fieldbyname('mx').isnull then
        frmscgx.zygx1.fieldbyname('mx').value:=query3.fieldbyname('mx').value
        else frmscgx.zygx1.fieldbyname('mx').value:='';
        if not query3.fieldbyname('dx').isnull then
        frmscgx.zygx1.fieldbyname('dx').value:=query3.fieldbyname('dx').value
        else frmscgx.zygx1.fieldbyname('dx').value:='';
        if not query3.fieldbyname('yzjzb').isnull then
        frmscgx.zygx1.fieldbyname('yzjb').value:=query3.fieldbyname('yzjzb').value
        else frmscgx.zygx1.fieldbyname('yzjb').value:='';
        if not query3.fieldbyname('zj').isnull then
        frmscgx.zygx1.fieldbyname('zj').value:=query3.fieldbyname('zj').value
        else frmscgx.zygx1.fieldbyname('zj').value:='';
        if not query3.fieldbyname('zf').isnull then
        frmscgx.zygx1.fieldbyname('zf').value:=query3.fieldbyname('zf').value
        else frmscgx.zygx1.fieldbyname('zf').value:='';
        if not query3.fieldbyname('fryd').isnull then
        frmscgx.zygx1.fieldbyname('cfyq').value:=query3.fieldbyname('fryd').value
        else frmscgx.zygx1.fieldbyname('cfyq').value:='';
        {
        if copy(frmscgx.zygx1.fieldbyname('gxm').value,1,4)='單針' then
          frmscgx.zygx1.fieldbyname('yczl').value:='單針'
        else
        begin
          if copy(frmscgx.zygx1.fieldbyname('gxm').value,1,4)='雙針' then
            frmscgx.zygx1.fieldbyname('yczl').value:='雙針'
          else
          begin
            if copy(frmscgx.zygx1.fieldbyname('gxm').value,1,4)='三步' then
              frmscgx.zygx1.fieldbyname('yczl').value:='三步'
            else
            begin
              if copy(frmscgx.zygx1.fieldbyname('gxm').value,1,4)='人字' then
                frmscgx.zygx1.fieldbyname('yczl').value:='人字'
              else
              begin
                if copy(frmscgx.zygx1.fieldbyname('gxm').value,1,4)='鈒骨' then
                  frmscgx.zygx1.fieldbyname('yczl').value:='鈒骨'
                else
                begin
                  if copy(frmscgx.zygx1.fieldbyname('gxm').value,1,4)='人手' then begin
                    //if frmscgx.zygx1.fieldbyname('yczl').isnull then
                    //frmscgx.zygx1.fieldbyname('yczl').value:='人手'
                    //else if (frmscgx.zygx1.fieldbyname('yczl').value='') then
                    //frmscgx.zygx1.fieldbyname('yczl').value:='人手';
                  end else
                  begin
                    if copy(frmscgx.zygx1.fieldbyname('gxm').value,1,4)='打棗' then
                      frmscgx.zygx1.fieldbyname('yczl').value:='打棗'
                    else
                    begin
                      if copy(frmscgx.zygx1.fieldbyname('gxm').value,1,4)='打花' then
                        frmscgx.zygx1.fieldbyname('yczl').value:='打花'
                      else
                      begin
                        if copy(frmscgx.zygx1.fieldbyname('gxm').value,1,4)='魚網' then
                          frmscgx.zygx1.fieldbyname('yczl').value:='魚網'
                        else
                        begin
                          if copy(frmscgx.zygx1.fieldbyname('gxm').value,1,4)='刀車' then
                            frmscgx.zygx1.fieldbyname('yczl').value:='刀車'
                          else
                          begin
                            if copy(frmscgx.zygx1.fieldbyname('gxm').value,1,4)='仚車' then
                              frmscgx.zygx1.fieldbyname('yczl').value:='仚車'
                            else
                            begin
                              if copy(frmscgx.zygx1.fieldbyname('gxm').value,1,4)='萬能' then
                                frmscgx.zygx1.fieldbyname('yczl').value:='萬能車'
                              else begin
                                if not query3.fieldbyname('czms').isnull then
                                frmscgx.zygx1.fieldbyname('yczl').value:=query3.fieldbyname('czms').value
                                else frmscgx.zygx1.fieldbyname('yczl').value:='';
                              end;
                            end;
                          end;
                        end;
                      end;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
        }
      end
      else
      begin
       query3.close;
       query3.params.clear;
       Query3.Params.CreateParam(ftstring,'mc',ptinput);
       query3.commandtext:='select * from IE_bzgx where mc=:mc';
       query3.params[0].value:=zygx1.fieldbyname('gxm').value;
       query3.open;
       if query3.recordcount>0 then
       begin
        showmessage('10');
        if (zygx1.fieldbyname('gxdh').IsNull) or (copy(zygx1.fieldbyname('gxdh').value,1,4)<>copy(query3.fieldbyname('dh').value,1,4)) then
        zygx1.fieldbyname('gxdh').value:=query3.fieldbyname('dh').value;
        if not query3.fieldbyname('sj').isnull then sj:=query3.fieldbyname('sj').value else sj:=0;
        if not query3.fieldbyname('bzdj').isnull then bzdj:=query3.fieldbyname('bzdj').value else bzdj:=0;
        frmscgx.zygx1.fieldbyname('sj').value:=sj*ndxs*plxs;
        frmscgx.zygx1.fieldbyname('dj').value:=sj*ndxs*plxs*bzdj;
        if not query3.fieldbyname('cz').isnull then
        frmscgx.zygx1.fieldbyname('yczl').value:=query3.fieldbyname('cz').value
        else frmscgx.zygx1.fieldbyname('yczl').value:='';
        if not query3.fieldbyname('czxh').isnull then
        frmscgx.zygx1.fieldbyname('zh').value:=query3.fieldbyname('czxh').value
        else frmscgx.zygx1.fieldbyname('zh').value:='';
        if not query3.fieldbyname('mx').isnull then
        frmscgx.zygx1.fieldbyname('mx').value:=query3.fieldbyname('mx').value
        else frmscgx.zygx1.fieldbyname('mx').value:='';
        if not query3.fieldbyname('dx').isnull then
        frmscgx.zygx1.fieldbyname('dx').value:=query3.fieldbyname('dx').value
        else frmscgx.zygx1.fieldbyname('dx').value:='';
        if not query3.fieldbyname('yzjzb').isnull then
        frmscgx.zygx1.fieldbyname('yzjb').value:=query3.fieldbyname('yzjzb').value
        else frmscgx.zygx1.fieldbyname('yzjb').value:='';
        if not query3.fieldbyname('zj').isnull then
        frmscgx.zygx1.fieldbyname('zj').value:=query3.fieldbyname('zj').value
        else frmscgx.zygx1.fieldbyname('zj').value:='';
        if not query3.fieldbyname('zf').isnull then
        frmscgx.zygx1.fieldbyname('zf').value:=query3.fieldbyname('zf').value
        else frmscgx.zygx1.fieldbyname('zf').value:='';
        if not query3.fieldbyname('fryd').isnull then
        frmscgx.zygx1.fieldbyname('cfyq').value:=query3.fieldbyname('fryd').value
        else frmscgx.zygx1.fieldbyname('cfyq').value:='';
       end;
      end;
  end;
end;

procedure Tfrmscgx.zygxZrsChange(Sender: TField);
begin
  query1.close;
  query1.params.clear;
  Query1.Params.CreateParam(ftinteger,'Seq',ptinput);
  query1.commandtext:='select sum(sj) as zsj from IE_zygx1 where seq=:seq';
  query1.params[0].value:=zygx.fieldbyname('seq').asinteger;
  query1.open;
  if query1.recordcount>0 then
  begin
    if (not query1.fieldbyname('zsj').isnull) and (query1.fieldbyname('zsj').asfloat>0.00) then
    begin
      zygx.FieldByName('mb').asinteger:=round(zygx.fieldbyname('zrs').value*8*zygx.fieldbyname('gzxl').value/query1.fieldbyname('zsj').value/zygx.fieldbyname('kyl').value);
    end;
  end;
end;

procedure Tfrmscgx.zygxAfterPost(DataSet: TDataSet);
begin
  DataSetAfterPost(DataSet);
end;

procedure Tfrmscgx.zygx1_GxdhChange(Sender: TField);
begin
  if not zygx1.fieldbyname('gxdh').IsNull then
  begin
      query6.close;
      query6.params.clear;
      Query6.Params.CreateParam(ftstring,'dh',ptinput);
      query6.commandtext:='select mc from IE_bzgx1 where dh=:dh';
      query6.params[0].value:=copy(zygx1.fieldbyname('gxdh').value,1,4)+'00';
      query6.open;
      if query6.recordcount>0 then
      begin
        zygx1.fieldbyname('gxm').value:=query6.fieldbyname('mc').value;
        zygx1_gxmchange(zygx1.fieldbyname('gxm'));
      end;
  end;
end;

procedure Tfrmscgx.FormActivate(Sender: TObject);
begin
 if (zygx1.state=dsinsert) or (zygx1.state=dsedit) then zygx1.post;
end;

procedure Tfrmscgx.BitBtn6Click(Sender: TObject);
var
  r20:boolean;
begin
  r20:=false;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select * from ie_qx where nam=:x1';
    params[0].asstring:=frmxtdl.ComboBox1.text;
    open;
    r20:=fieldbyname('r20').value;
  end;
  //if uppercase(frmxtdl.combobox1.text)='LIMIN' then begin
  //if (frmxtdl.ComboBox1.Text<>'LIMIN') and (frmxtdl.ComboBox1.Text<>'ADMIN') and (frmxtdl.ComboBox1.Text<>'ERIC') then exit
  if not r20 then exit
  else begin
    if frmxggxxh=nil then frmxggxxh:=tfrmxggxxh.create(self);
    frmxggxxh.DBGridEh1.DataSource:=datasource2;
    frmxggxxh.Label1.Caption:='scgx';
    frmxggxxh.show;
  end;
end;

procedure Tfrmscgx.BitBtn7Click(Sender: TObject);
var
  r20:boolean;
begin
  r20:=false;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select * from ie_qx where nam=:x1';
    params[0].asstring:=frmxtdl.ComboBox1.text;
    open;
    r20:=fieldbyname('r20').value;
  end;
  //if uppercase(frmxtdl.combobox1.text)='LIMIN' then begin
  //if (frmxtdl.ComboBox1.Text<>'LIMIN') and (frmxtdl.ComboBox1.Text<>'ADMIN') and (frmxtdl.ComboBox1.Text<>'ERIC') then exit
  if not r20 then exit
  else begin
    if frmcpyscgx=nil then frmcpyscgx:=tfrmcpyscgx.create(self);
    frmcpyscgx.edit1.text:=zygx.fieldbyname('kh').value;
    frmcpyscgx.edit2.text:='';
    frmcpyscgx.Label3.caption:='scgx';
    frmcpyscgx.show;
  end;
end;

procedure Tfrmscgx.zygx1AfterDelete(DataSet: TDataSet);
begin
  query1.close;
  query1.params.clear;
  Query1.Params.CreateParam(ftinteger,'seq',ptinput);
  query1.commandtext:='select sum(sj) as zsj from IE_zygx1 where seq=:seq';
  query1.params[0].value:=zygx.fieldbyname('seq').asinteger;
  query1.open;
  if query1.recordcount>0 then
  begin
    zygx.edit;
    zygx.FieldByName('zsj').asfloat:=query1.fieldbyname('zsj').asfloat;
    if query1.fieldbyname('zsj').asfloat>0.00 then
    zygx.fieldbyname('mb').asinteger:=round(zygx.fieldbyname('zrs').asinteger*8*zygx.fieldbyname('gzxl').value/(zygx.fieldbyname('kyl').value*query1.fieldbyname('zsj').asfloat));
    zygx.post;
  end;
end;

procedure Tfrmscgx.zygxNewRecord(DataSet: TDataSet);
begin
  zygx.fieldbyname('seq').value:=GetSeq('ie_zygx','seq');
  zygx.fieldbyname('gzxl').value:=0.9;
  zygx.fieldbyname('kyl').value:=1.2;
  zygx.fieldbyname('bzdj').value:=gsj;//4.016;
  //zygx.fieldbyname('tplant').value:='SL';
  zygx.fieldbyname('flag2').value:='4';
  zygx.fieldbyname('lenz').value:='3CM';
  zygx.fieldbyname('activ').value:=true;
  zygx.FieldByName('xz01').value:=false;
  zygx.fieldbyname('statu').value:='Active';
  zygx.fieldbyname('rq').value:=date;
end;

procedure Tfrmscgx.zygx1NewRecord(DataSet: TDataSet);
begin
  zygx1.FieldByName('Rid').value:=GetSeq('ie_zygx1','Rid');
  zygx1.FieldByName('seq').value:=zygx.fieldbyname('seq').value;
  zygx1.fieldbyname('fyl').value:=1;
  zygx1.fieldbyname('xz01').value:=false;
  zygx1.fieldbyname('xz03').value:=false;
  zygx1.fieldbyname('xz05').value:=false;
  zygx1.fieldbyname('xz06').value:=false;
  zygx1.fieldbyname('xz07').value:=false;
  zygx1.fieldbyname('cjqr').value:=false;
  zygx1.fieldbyname('parts_m').value:=false;
  zygx1.fieldbyname('parts_c').value:=false;
  zygx1.fieldbyname('gxh_n').value:=0;
end;

procedure Tfrmscgx.zygx1_FylChange(Sender: TField);
var
  bzdj:double;
begin
  if not zygx1.fieldbyname('fyl').isnull then begin
    if not ((zygx1.fieldbyname('sj').isnull) or (zygx1.fieldbyname('sj').value=0)) then begin
      //
      if not zygx.FieldByName('bzdj').isnull then bzdj:=zygx.fieldbyname('bzdj').value else bzdj:=gsj;//4.016;
      //
      zygx1.fieldbyname('bzsj').value:=zygx1.fieldbyname('sj').value*zygx1.fieldbyname('fyl').value;
      zygx1.fieldbyname('sjdj').value:=zygx1.fieldbyname('sj').value*zygx1.fieldbyname('fyl').value*bzdj;//4.016;      
      if zygx1.fieldbyname('bzsj').value<>0 then zygx1.fieldbyname('scjs').asinteger:=round(8/zygx1.fieldbyname('bzsj').value);
      if zygx1.fieldbyname('scjs').value>0 then
        zygx1.fieldbyname('sxrs').value:=zygx.fieldbyname('mb').value/zygx1.fieldbyname('scjs').value
      else zygx1.fieldbyname('sxrs').value:=0.00;
      zygx1.fieldbyname('bzsj1').value:=zygx1.fieldbyname('bzsj').value*60;
    end
    else begin
      zygx1.fieldbyname('bzsj').value:=0;
      zygx1.fieldbyname('scjs').asinteger:=0;
      zygx1.fieldbyname('sxrs').value:=0.00;
      zygx1.fieldbyname('bzsj1').value:=0;
    end;
  end;
end;

procedure Tfrmscgx.updatedata1Click(Sender: TObject);
begin
  screen.cursor:=crhourglass;
  with query1 do begin
    close;
    params.clear;
    commandtext:='update IE_zygx1 set bzsj=sj*fyl,bzsj1=sj*fyl*60 where fyl>0.00';
    execute;
  end;
  screen.cursor:=crdefault;
end;

procedure Tfrmscgx.BitBtn9Click(Sender: TObject);
var
  bzzsj,bzzsj2,bzzsj1,bzzsj3,zdj,zdj2,zdj1,zdj3,bn:double;
  zrs,sgt:integer;
begin
  Screen.Cursor:=crHourGlass;
  zrs:=0; sgt:=0;

  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'seq',ptinput);
    commandtext:='update ie_zygx1 set eyczl=ycdm where eyczl<>ycdm and ycdm>'''' and eyczl=''HD'' and seq=:seq';
    params[0].asinteger:=zygx.fieldbyname('seq').value;
    execute;
  end;

  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'seq',ptinput);
    commandtext:='select sum(isnull(sj,0)) as zsj,isnull(sum(bzsj2),0) as zsj1,isnull(sum(sjdj),0) as zdj,isnull(sum(sjdj2),0) as zdj1,count(*) as zrs,max(isnull(sj,0)) as bn from ie_zygx1 where seq=:seq';// and zb in (''A'',''B'',''C'',''O'',''CT'',''BD'',''PP'',''E'',''F'',''P'')';
    params[0].asinteger:=zygx.fieldbyname('seq').value;
    open;
    bzzsj:=fieldbyname('zsj').value;
    bzzsj2:=fieldbyname('zsj1').value;
    zdj:=fieldbyname('zdj').value;
    zdj2:=fieldbyname('zdj1').value;
    zrs:=fieldbyname('zrs').value;
    bn:=fieldbyname('bn').value;

    close;
    params.clear;
    params.createparam(ftinteger,'seq',ptinput);
    commandtext:='select count(*) as sgt from ie_zygx1 where seq=:seq and gxdh like ''HD%''';// and zb in (''A'',''B'',''C'',''O'',''CT'',''BD'',''PP'',''E'',''F'',''P'')';
    params[0].asinteger:=zygx.fieldbyname('seq').value;
    open;
    if not fieldbyname('sgt').isnull then sgt:=fieldbyname('sgt').value;

    close;
    params.clear;
    params.createparam(ftinteger,'seq',ptinput);
    commandtext:='select isnull(sum(sj),0) as zsj,isnull(sum(bzsj2),0) as zsj1,isnull(sum(sjdj),0) as zdj,isnull(sum(sjdj2),0) as zdj1 from ie_zygx1 where seq=:seq and zb in (''AL'',''S-AL'')';
    params[0].asinteger:=zygx.fieldbyname('seq').value;
    open;
    bzzsj1:=fieldbyname('zsj').value;
    bzzsj3:=fieldbyname('zsj1').value;
    zdj1:=fieldbyname('zdj').value;
    zdj3:=fieldbyname('zdj1').value;
  end;
  {
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'dfgx',ptinput);
    params.createparam(ftinteger,'seq',ptinput);
    commandtext:='update ie_zygx1 set dfgx=:dfgx where (dfgx is null) and seq=:seq';
    params[0].asstring:='';
    params[1].asinteger:=zygx.fieldbyname('seq').value;
    execute;
  end;
  query1.close;
  query1.params.clear;
  Query1.Params.CreateParam(ftinteger,'Seq',ptinput);
  query1.commandtext:='select isnull(sum(sj),0) as zsj1,isnull(sum(bzsj2),0) as zsj,isnull(sum(sjdj),0) as zdj,isnull(sum(sjdj2),0) as zdj1 from IE_zygx1 where seq=:seq';
  query1.params[0].value:=zygx.fieldbyname('seq').asinteger;
  query1.open;
  if not query1.fieldbyname('zsj1').isnull then zsj1:=query1.fieldbyname('zsj1').value else zsj1:=0;
  if not query1.fieldbyname('zsj').isnull then zsj:=query1.fieldbyname('zsj').value else zsj:=0;
  if not query1.fieldbyname('zdj').isnull then zdj:=query1.fieldbyname('zdj').value else zdj:=0;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'seq',ptinput);
    params.createparam(ftstring,'dfgx',ptinput);
    commandtext:='select sum(bzsj) as zsj,isnull(sum(sjdj),0) as zdj from ie_zygx1 where seq=:seq and dfgx=:dfgx';
    params[0].asinteger:=zygx.fieldbyname('seq').value;
    params[1].AsString:='1';
    open;
    if not query1.fieldbyname('zsj').isnull then bzzsj1:=query1.fieldbyname('zsj').value else bzzsj1:=0;
    if not query1.fieldbyname('zdj').isnull then zdj1:=query1.fieldbyname('zdj').value else zdj1:=0;
    close;
    params.clear;
    params.createparam(ftinteger,'seq',ptinput);
    params.createparam(ftstring,'dfgx',ptinput);
    commandtext:='select sum(bzsj) as zsj,isnull(sum(sjdj),0) as zdj from ie_zygx1 where seq=:seq and dfgx<>:dfgx';
    params[0].asinteger:=zygx.fieldbyname('seq').value;
    params[1].AsString:='1';
    open;
    if not query1.fieldbyname('zsj').isnull then bzzsj2:=query1.fieldbyname('zsj').value else bzzsj2:=0;
    if not query1.fieldbyname('zdj').isnull then zdj2:=query1.fieldbyname('zdj').value else zdj2:=0;
  end;
  zygx.edit;
  zygx.FieldByName('zsj').asfloat:=zsj1;
  if zsj>0.00 then begin
    zygx.fieldbyname('bzzsj').value:=round(zsj*10000)/10000;
    zygx.fieldbyname('zdj').value:=round(zdj*10000)/10000;
    zygx.fieldbyname('mb').asinteger:=round(zygx.fieldbyname('zrs').asinteger*8/zsj);
  end;
  zygx.fieldbyname('bzzsj1').value:=round(bzzsj2*10000)/10000;
  zygx.fieldbyname('bzzsj2').value:=round(bzzsj1*10000)/10000;
  zygx.fieldbyname('zdj1').value:=round(zdj2*10000)/10000;
  zygx.fieldbyname('zdj2').value:=round(zdj1*10000)/10000;
  zygx.post;
  }
  with zygx do begin
    edit;
    fieldbyname('bzzsj').value:=bzzsj;
    fieldbyname('bzzsj1').value:=bzzsj1;
    fieldbyname('bzzsj2').value:=bzzsj2;
    fieldbyname('bzzsj3').value:=bzzsj3;
    fieldbyname('zdj').value:=zdj;
    fieldbyname('zdj1').value:=zdj1;
    fieldbyname('zdj2').value:=zdj2;
    fieldbyname('zdj3').value:=zdj3;
    fieldbyname('zrs').value:=zrs;
    fieldbyname('sgt').value:=sgt;
    fieldbyname('yczs').value:=zrs-sgt;
    if (zrs*bn>0) then
    fieldbyname('lsteff').value:=bzzsj*100.00/(zrs*bn);
    post;
  end;
  zygx.AfterScroll(nil);
  Screen.Cursor:=crDefault;
end;

procedure Tfrmscgx.BitBtn10Click(Sender: TObject);
var
  i,j:integer;
begin
  screen.cursor:=crHourglass;
  with query1 do begin
    close;
    params.clear;
    params.CreateParam(ftinteger,'Seq',ptinput);
    commandtext:='select gxh,rid from IE_zygx1 where seq=:seq order by gxh,rid';
    params[0].value:=zygx.fieldbyname('seq').value;
    open;
    last;
    j:=recordcount;
    first;
    for i:=1 to j do begin
      with query2 do begin
        close;
        params.clear;
        params.CreateParam(ftstring,'gxh',ptinput);
        params.CreateParam(ftinteger,'seq',ptinput);
        params.CreateParam(ftstring,'gxh1',ptinput);
        params.CreateParam(ftinteger,'Rid',ptinput);
        commandtext:='update IE_zygx1 set gxh=:gxh where seq=:seq and gxh=:gxh1 and rid=:rid';
        params[0].value:=i*10;
        params[1].value:=zygx.fieldbyname('seq').value;
        params[2].value:=query1.fieldbyname('gxh').value;
        params[3].value:=query1.fieldbyname('rid').value;
        execute;
      end;
      application.ProcessMessages;
      next;
    end;
  end;
  zygx.AfterScroll(nil);
  screen.cursor:=crDefault;
end;

procedure Tfrmscgx.SpeedButton1Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmxzcbgx=nil then frmxzcbgx:=tfrmxzcbgx.create(self);
  {
  with frmxzcbgx.query1 do begin
    close;
    params.clear;
    commandtext:='select distinct seq,kh,kh1,zd,flag2,tplant,activ,zd1 from IE_zygx where statu=''Active''';
    open;
  end;
  }
  frmxzcbgx.xh2.Checked:=true;
  frmxzcbgx.edit1.text:='';
  frmxzcbgx.Edit2.text:='';
  frmxzcbgx.Edit3.text:='';
  frmxzcbgx.Label3.Caption:='KH';
  frmxzcbgx.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmscgx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with zygx do begin
    if (state=dsedit) or (state=dsinsert) then post;
  end;
  with zygx1 do begin
    if (state=dsedit) or (state=dsinsert) then post;
  end;
  //action:=cafree;
  //frmscgx:=nil;
end;

procedure Tfrmscgx.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
var
  r20:boolean;
begin
  r20:=false;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select * from ie_qx where nam=:x1';
    params[0].asstring:=frmxtdl.ComboBox1.text;
    open;
    r20:=fieldbyname('r20').value;
  end;
  //if uppercase(frmxtdl.combobox1.text)='LIMIN' then begin
  //if (frmxtdl.ComboBox1.Text<>'LIMIN') and (frmxtdl.ComboBox1.Text<>'ADMIN') and (frmxtdl.ComboBox1.Text<>'ERIC') then begin
  if not r20 then begin
    if button=nbinsert then exit;
  end;
  //end
  //else begin
  //  if button=nbinsert then exit;
  //end;
end;

procedure Tfrmscgx.Copy2CostRoute1Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  with query1 do begin
    close;
    params.clear;
    params.CreateParam(ftstring,'kh',ptinput);
    commandtext:='select * from IE_zygxn where kh=:kh';
    params[0].value:=zygx.fieldbyname('kh').value;
    open;
    if recordcount=0 then begin
      with query2 do begin
        close;
        params.clear;
        params.CreateParam(ftinteger,'Seq',ptinput);
        commandtext:='Execute IE_CbgxGetData :seq';
        params[0].value:=zygx.fieldbyname('seq').value;
        execute;
      end;
      showmessage('OK!');
    end
    else begin
      showmessage('此款已存在!');
    end;
  end;
  screen.cursor:=crDefault;
end;

procedure Tfrmscgx.zygxAfterScroll(DataSet: TDataSet);
begin
  with zygx1 do begin
    close;
    params.Clear;
    params.CreateParam(ftinteger,'Seq',ptinput);
    commandtext:='select * from ie_zygx1 where seq=:seq';
    params[0].AsInteger:=zygx.fieldbyname('seq').value;
    open;
  end;
end;

procedure Tfrmscgx.zygx1BeforeDelete(DataSet: TDataSet);
begin
  if not zygx.fieldbyname('appr1').IsNull then begin
    if zygx.FieldByName('appr1').value>'0' then begin
      showmessage('此款工序已經确認﹐不能刪除明細!');
      abort;
    end else begin
      with frmxtdl.ClientDataSet do begin
        close;
        params.clear;
        params.CreateParam(ftinteger,'Rid',ptinput);
        params.CreateParam(ftinteger,'Seq',ptinput);
        commandtext:='delete from ie_zygx1 where Rid=:Rid and seq=:seq';
        params[0].AsInteger:=zygx1.fieldbyname('Rid').value;
        params[1].AsInteger:=zygx1.fieldbyname('seq').value;
        execute;
      end;
    end;
  end else begin
    with frmxtdl.ClientDataSet do begin
      close;
      params.clear;
      params.CreateParam(ftinteger,'Rid',ptinput);
      params.CreateParam(ftinteger,'Seq',ptinput);
      commandtext:='delete from ie_zygx1 where Rid=:Rid and seq=:seq';
      params[0].AsInteger:=zygx1.fieldbyname('Rid').value;
      params[1].AsInteger:=zygx1.fieldbyname('seq').value;
      execute;
    end;
  end;
end;

procedure Tfrmscgx.zygx1_Bzsj1Change(Sender: TField);
begin
  if not zygx1.fieldbyname('bzsj1').isnull then begin
    zygx1.FieldByName('bzsj').value:=zygx1.FieldByName('bzsj1').value/60;
    if zygx1.fieldbyname('fyl').value<>0 then zygx1.fieldbyname('sj').value:=zygx1.fieldbyname('bzsj1').value/60/zygx1.fieldbyname('fyl').value;
  end;
end;

procedure Tfrmscgx.DBEdit5Exit(Sender: TObject);
var
  Stylno:string;
begin
  if zygx.State=dsinsert then begin
    Stylno:=DBEdit5.Text;
    with Query7 do begin
      close;
      params.clear;
      params.CreateParam(ftstring,'kh',ptinput);
      commandtext:='select * from ie_zygx where kh=:kh';
      params[0].AsString:=stylno;
      open;
      if RecordCount>0 then begin
        MessageDlg('該款已經存在﹗',mtInformation,[mbOk], 0);
        zygx.Cancel;
        Edit2.Text:=Stylno;
      end
      else begin
        zygx.Post;
      end;
    end;
  end;
end;


procedure Tfrmscgx.DataSource1StateChange(Sender: TObject);
begin
  if DataSource1.State=dsinsert then DBEdit5.ReadOnly:=false
  else DBEdit5.ReadOnly:=True;
end;

procedure Tfrmscgx.BitBtn11Click(Sender: TObject);
begin
  if application.MessageBox('按照FAE打印?','Confirmation',mb_iconquestion+mb_yesno)=idno then begin
    if frmdfgxly=nil then frmdfgxly:=tfrmdfgxly.create(self);
    with frmdfgxly.zygx do begin
      close;
      params.clear;
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq order by a.kh,b.gxh';
      params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
      open;
    end;
    if label46.Caption='No price' then begin
      frmdfgxly.zdj01.Visible:=false;
      frmdfgxly.zdj02.Visible:=false;
      frmdfgxly.zdj03.Visible:=false;
      frmdfgxly.zdj04.Visible:=false;
      frmdfgxly.ppdbtext24.Visible:=false;
      frmdfgxly.ppdbtext25.Visible:=false;
      frmdfgxly.ppdbtext26.Visible:=false;
      frmdfgxly.ppdbtext27.Visible:=false;
      frmdfgxly.ppdbtext28.Visible:=false;
      frmdfgxly.ppdbtext29.Visible:=false;
      frmdfgxly.ppdbcalc7.Visible:=false;
      frmdfgxly.ppdbcalc8.Visible:=false;
      frmdfgxly.ppdbcalc9.Visible:=false;
      frmdfgxly.ppdbcalc10.Visible:=false;
      frmdfgxly.ppdbcalc11.Visible:=false;
      frmdfgxly.ppdbcalc12.Visible:=false;
      frmdfgxly.zsj01.Visible:=false;
      frmdfgxly.zsj02.Visible:=false;
      frmdfgxly.zsj03.Visible:=false;
      frmdfgxly.zsj04.Visible:=false;
      frmdfgxly.ppdbtext4.Visible:=false;
      frmdfgxly.ppdbtext10.Visible:=false;
      frmdfgxly.ppdbtext11.Visible:=false;
      frmdfgxly.ppdbtext21.Visible:=false;
      frmdfgxly.ppdbtext22.Visible:=false;
      frmdfgxly.ppdbtext23.Visible:=false;
      frmdfgxly.ppdbcalc1.Visible:=false;
      frmdfgxly.ppdbcalc2.Visible:=false;
      frmdfgxly.ppdbcalc3.Visible:=false;
      frmdfgxly.ppdbcalc4.Visible:=false;
      frmdfgxly.ppdbcalc5.Visible:=false;
      frmdfgxly.ppdbcalc6.Visible:=false;
    end else begin
      if application.MessageBox('顯示單价?','Confirmation',mb_iconquestion+mb_yesno)=idyes then begin
        if application.MessageBox('顯示SAH?','Confirmation',mb_iconquestion+mb_yesno)=idyes then begin
          frmdfgxly.zdj01.Visible:=false;
          frmdfgxly.zdj02.Visible:=true;
          frmdfgxly.zdj03.Visible:=false;
          frmdfgxly.zdj04.Visible:=true;
          frmdfgxly.ppdbtext24.Visible:=false;
          frmdfgxly.ppdbtext25.Visible:=true;
          frmdfgxly.ppdbtext26.Visible:=true;
          frmdfgxly.ppdbtext27.Visible:=true;
          frmdfgxly.ppdbtext28.Visible:=true;
          frmdfgxly.ppdbtext29.Visible:=true;
          frmdfgxly.ppdbcalc7.Visible:=false;
          frmdfgxly.ppdbcalc8.Visible:=true;
          frmdfgxly.ppdbcalc9.Visible:=true;
          frmdfgxly.ppdbcalc10.Visible:=true;
          frmdfgxly.ppdbcalc11.Visible:=true;
          frmdfgxly.ppdbcalc12.Visible:=true;
          frmdfgxly.zsj01.Visible:=true;
          frmdfgxly.zsj02.Visible:=true;
          frmdfgxly.zsj03.Visible:=true;
          frmdfgxly.zsj04.Visible:=true;
          frmdfgxly.ppdbtext4.Visible:=true;
          frmdfgxly.ppdbtext10.Visible:=true;
          frmdfgxly.ppdbtext11.Visible:=true;
          frmdfgxly.ppdbtext21.Visible:=true;
          frmdfgxly.ppdbtext22.Visible:=true;
          frmdfgxly.ppdbtext23.Visible:=true;
          frmdfgxly.ppdbcalc1.Visible:=true;
          frmdfgxly.ppdbcalc2.Visible:=true;
          frmdfgxly.ppdbcalc3.Visible:=true;
          frmdfgxly.ppdbcalc4.Visible:=true;
          frmdfgxly.ppdbcalc5.Visible:=true;
          frmdfgxly.ppdbcalc6.Visible:=true;
        end else begin
          frmdfgxly.zdj01.Visible:=false;
          frmdfgxly.zdj02.Visible:=true;
          frmdfgxly.zdj03.Visible:=false;
          frmdfgxly.zdj04.Visible:=true;
          frmdfgxly.ppdbtext24.Visible:=false;
          frmdfgxly.ppdbtext25.Visible:=true;
          frmdfgxly.ppdbtext26.Visible:=true;
          frmdfgxly.ppdbtext27.Visible:=true;
          frmdfgxly.ppdbtext28.Visible:=true;
          frmdfgxly.ppdbtext29.Visible:=true;
          frmdfgxly.ppdbcalc7.Visible:=false;
          frmdfgxly.ppdbcalc8.Visible:=true;
          frmdfgxly.ppdbcalc9.Visible:=true;
          frmdfgxly.ppdbcalc10.Visible:=true;
          frmdfgxly.ppdbcalc11.Visible:=true;
          frmdfgxly.ppdbcalc12.Visible:=true;
          frmdfgxly.zsj01.Visible:=false;
          frmdfgxly.zsj02.Visible:=false;
          frmdfgxly.zsj03.Visible:=false;
          frmdfgxly.zsj04.Visible:=false;
          frmdfgxly.ppdbtext4.Visible:=false;
          frmdfgxly.ppdbtext10.Visible:=false;
          frmdfgxly.ppdbtext11.Visible:=false;
          frmdfgxly.ppdbtext21.Visible:=false;
          frmdfgxly.ppdbtext22.Visible:=false;
          frmdfgxly.ppdbtext23.Visible:=false;
          frmdfgxly.ppdbcalc1.Visible:=false;
          frmdfgxly.ppdbcalc2.Visible:=false;
          frmdfgxly.ppdbcalc3.Visible:=false;
          frmdfgxly.ppdbcalc4.Visible:=false;
          frmdfgxly.ppdbcalc5.Visible:=false;
          frmdfgxly.ppdbcalc6.Visible:=false;
        end;
      end else begin
        if application.MessageBox('顯示SAH?','Confirmation',mb_iconquestion+mb_yesno)=idyes then begin
          frmdfgxly.zdj01.Visible:=false;
          frmdfgxly.zdj02.Visible:=false;
          frmdfgxly.zdj03.Visible:=false;
          frmdfgxly.zdj04.Visible:=false;
          frmdfgxly.ppdbtext24.Visible:=false;
          frmdfgxly.ppdbtext25.Visible:=false;
          frmdfgxly.ppdbtext26.Visible:=false;
          frmdfgxly.ppdbtext27.Visible:=false;
          frmdfgxly.ppdbtext28.Visible:=false;
          frmdfgxly.ppdbtext29.Visible:=false;
          frmdfgxly.ppdbcalc7.Visible:=false;
          frmdfgxly.ppdbcalc8.Visible:=false;
          frmdfgxly.ppdbcalc9.Visible:=false;
          frmdfgxly.ppdbcalc10.Visible:=false;
          frmdfgxly.ppdbcalc11.Visible:=false;
          frmdfgxly.ppdbcalc12.Visible:=false;
          frmdfgxly.zsj01.Visible:=true;
          frmdfgxly.zsj02.Visible:=true;
          frmdfgxly.zsj03.Visible:=true;
          frmdfgxly.zsj04.Visible:=true;
          frmdfgxly.ppdbtext4.Visible:=true;
          frmdfgxly.ppdbtext10.Visible:=true;
          frmdfgxly.ppdbtext11.Visible:=true;
          frmdfgxly.ppdbtext21.Visible:=true;
          frmdfgxly.ppdbtext22.Visible:=true;
          frmdfgxly.ppdbtext23.Visible:=true;
          frmdfgxly.ppdbcalc1.Visible:=true;
          frmdfgxly.ppdbcalc2.Visible:=true;
          frmdfgxly.ppdbcalc3.Visible:=true;
          frmdfgxly.ppdbcalc4.Visible:=true;
          frmdfgxly.ppdbcalc5.Visible:=true;
          frmdfgxly.ppdbcalc6.Visible:=true;
        end else begin
          frmdfgxly.zdj01.Visible:=false;
          frmdfgxly.zdj02.Visible:=false;
          frmdfgxly.zdj03.Visible:=false;
          frmdfgxly.zdj04.Visible:=false;
          frmdfgxly.ppdbtext24.Visible:=false;
          frmdfgxly.ppdbtext25.Visible:=false;
          frmdfgxly.ppdbtext26.Visible:=false;
          frmdfgxly.ppdbtext27.Visible:=false;
          frmdfgxly.ppdbtext28.Visible:=false;
          frmdfgxly.ppdbtext29.Visible:=false;
          frmdfgxly.ppdbcalc7.Visible:=false;
          frmdfgxly.ppdbcalc8.Visible:=false;
          frmdfgxly.ppdbcalc9.Visible:=false;
          frmdfgxly.ppdbcalc10.Visible:=false;
          frmdfgxly.ppdbcalc11.Visible:=false;
          frmdfgxly.ppdbcalc12.Visible:=false;
          frmdfgxly.zsj01.Visible:=false;
          frmdfgxly.zsj02.Visible:=false;
          frmdfgxly.zsj03.Visible:=false;
          frmdfgxly.zsj04.Visible:=false;
          frmdfgxly.ppdbtext4.Visible:=false;
          frmdfgxly.ppdbtext10.Visible:=false;
          frmdfgxly.ppdbtext11.Visible:=false;
          frmdfgxly.ppdbtext21.Visible:=false;
          frmdfgxly.ppdbtext22.Visible:=false;
          frmdfgxly.ppdbtext23.Visible:=false;
          frmdfgxly.ppdbcalc1.Visible:=false;
          frmdfgxly.ppdbcalc2.Visible:=false;
          frmdfgxly.ppdbcalc3.Visible:=false;
          frmdfgxly.ppdbcalc4.Visible:=false;
          frmdfgxly.ppdbcalc5.Visible:=false;
          frmdfgxly.ppdbcalc6.Visible:=false;
        end;
      end;
    end;
    frmdfgxly.ppreport1.print;
  end else begin
    if frmdfgxly2=nil then frmdfgxly2:=tfrmdfgxly2.create(self);
    with frmdfgxly2.zygx do begin
      close;
      params.clear;
      params.createparam(ftinteger,'seq',ptinput);
      commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq order by a.kh,b.gxh';
      params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
      open;
    end;
    if label46.Caption='No price' then begin
      frmdfgxly2.zdj01.Visible:=false;
      frmdfgxly2.zdj02.Visible:=false;
      frmdfgxly2.zdj03.Visible:=false;
      frmdfgxly2.zdj04.Visible:=false;
      frmdfgxly2.ppdbtext24.Visible:=false;
      frmdfgxly2.ppdbtext25.Visible:=false;
      frmdfgxly2.ppdbtext26.Visible:=false;
      frmdfgxly2.ppdbtext27.Visible:=false;
      frmdfgxly2.ppdbtext28.Visible:=false;
      frmdfgxly2.ppdbtext29.Visible:=false;
      frmdfgxly2.ppdbcalc7.Visible:=false;
      frmdfgxly2.ppdbcalc8.Visible:=false;
      frmdfgxly2.ppdbcalc9.Visible:=false;
      frmdfgxly2.ppdbcalc10.Visible:=false;
      frmdfgxly2.ppdbcalc11.Visible:=false;
      frmdfgxly2.ppdbcalc12.Visible:=false;
      frmdfgxly2.zsj01.Visible:=false;
      frmdfgxly2.zsj02.Visible:=false;
      frmdfgxly2.zsj03.Visible:=false;
      frmdfgxly2.zsj04.Visible:=false;
      frmdfgxly2.ppdbtext4.Visible:=false;
      frmdfgxly2.ppdbtext10.Visible:=false;
      frmdfgxly2.ppdbtext11.Visible:=false;
      frmdfgxly2.ppdbtext21.Visible:=false;
      frmdfgxly2.ppdbtext22.Visible:=false;
      frmdfgxly2.ppdbtext23.Visible:=false;
      frmdfgxly2.ppdbcalc1.Visible:=false;
      frmdfgxly2.ppdbcalc2.Visible:=false;
      frmdfgxly2.ppdbcalc3.Visible:=false;
      frmdfgxly2.ppdbcalc4.Visible:=false;
      frmdfgxly2.ppdbcalc5.Visible:=false;
      frmdfgxly2.ppdbcalc6.Visible:=false;
    end else begin
      if application.MessageBox('顯示單价?','Confirmation',mb_iconquestion+mb_yesno)=idyes then begin
        if application.MessageBox('顯示SAH?','Confirmation',mb_iconquestion+mb_yesno)=idyes then begin
          frmdfgxly2.zdj01.Visible:=false;
          frmdfgxly2.zdj02.Visible:=true;
          frmdfgxly2.zdj03.Visible:=false;
          frmdfgxly2.zdj04.Visible:=true;
          frmdfgxly2.ppdbtext24.Visible:=false;
          frmdfgxly2.ppdbtext25.Visible:=true;
          frmdfgxly2.ppdbtext26.Visible:=true;
          frmdfgxly2.ppdbtext27.Visible:=true;
          frmdfgxly2.ppdbtext28.Visible:=true;
          frmdfgxly2.ppdbtext29.Visible:=true;
          frmdfgxly2.ppdbcalc7.Visible:=false;
          frmdfgxly2.ppdbcalc8.Visible:=true;
          frmdfgxly2.ppdbcalc9.Visible:=true;
          frmdfgxly2.ppdbcalc10.Visible:=true;
          frmdfgxly2.ppdbcalc11.Visible:=true;
          frmdfgxly2.ppdbcalc12.Visible:=true;
          frmdfgxly2.zsj01.Visible:=true;
          frmdfgxly2.zsj02.Visible:=true;
          frmdfgxly2.zsj03.Visible:=true;
          frmdfgxly2.zsj04.Visible:=true;
          frmdfgxly2.ppdbtext4.Visible:=true;
          frmdfgxly2.ppdbtext10.Visible:=true;
          frmdfgxly2.ppdbtext11.Visible:=true;
          frmdfgxly2.ppdbtext21.Visible:=true;
          frmdfgxly2.ppdbtext22.Visible:=true;
          frmdfgxly2.ppdbtext23.Visible:=true;
          frmdfgxly2.ppdbcalc1.Visible:=true;
          frmdfgxly2.ppdbcalc2.Visible:=true;
          frmdfgxly2.ppdbcalc3.Visible:=true;
          frmdfgxly2.ppdbcalc4.Visible:=true;
          frmdfgxly2.ppdbcalc5.Visible:=true;
          frmdfgxly2.ppdbcalc6.Visible:=true;
        end else begin
          frmdfgxly2.zdj01.Visible:=false;
          frmdfgxly2.zdj02.Visible:=true;
          frmdfgxly2.zdj03.Visible:=false;
          frmdfgxly2.zdj04.Visible:=true;
          frmdfgxly2.ppdbtext24.Visible:=false;
          frmdfgxly2.ppdbtext25.Visible:=true;
          frmdfgxly2.ppdbtext26.Visible:=true;
          frmdfgxly2.ppdbtext27.Visible:=true;
          frmdfgxly2.ppdbtext28.Visible:=true;
          frmdfgxly2.ppdbtext29.Visible:=true;
          frmdfgxly2.ppdbcalc7.Visible:=false;
          frmdfgxly2.ppdbcalc8.Visible:=true;
          frmdfgxly2.ppdbcalc9.Visible:=true;
          frmdfgxly2.ppdbcalc10.Visible:=true;
          frmdfgxly2.ppdbcalc11.Visible:=true;
          frmdfgxly2.ppdbcalc12.Visible:=true;
          frmdfgxly2.zsj01.Visible:=false;
          frmdfgxly2.zsj02.Visible:=false;
          frmdfgxly2.zsj03.Visible:=false;
          frmdfgxly2.zsj04.Visible:=false;
          frmdfgxly2.ppdbtext4.Visible:=false;
          frmdfgxly2.ppdbtext10.Visible:=false;
          frmdfgxly2.ppdbtext11.Visible:=false;
          frmdfgxly2.ppdbtext21.Visible:=false;
          frmdfgxly2.ppdbtext22.Visible:=false;
          frmdfgxly2.ppdbtext23.Visible:=false;
          frmdfgxly2.ppdbcalc1.Visible:=false;
          frmdfgxly2.ppdbcalc2.Visible:=false;
          frmdfgxly2.ppdbcalc3.Visible:=false;
          frmdfgxly2.ppdbcalc4.Visible:=false;
          frmdfgxly2.ppdbcalc5.Visible:=false;
          frmdfgxly2.ppdbcalc6.Visible:=false;
        end;
      end else begin
        if application.MessageBox('顯示SAH?','Confirmation',mb_iconquestion+mb_yesno)=idyes then begin
          frmdfgxly2.zdj01.Visible:=false;
          frmdfgxly2.zdj02.Visible:=false;
          frmdfgxly2.zdj03.Visible:=false;
          frmdfgxly2.zdj04.Visible:=false;
          frmdfgxly2.ppdbtext24.Visible:=false;
          frmdfgxly2.ppdbtext25.Visible:=false;
          frmdfgxly2.ppdbtext26.Visible:=false;
          frmdfgxly2.ppdbtext27.Visible:=false;
          frmdfgxly2.ppdbtext28.Visible:=false;
          frmdfgxly2.ppdbtext29.Visible:=false;
          frmdfgxly2.ppdbcalc7.Visible:=false;
          frmdfgxly2.ppdbcalc8.Visible:=false;
          frmdfgxly2.ppdbcalc9.Visible:=false;
          frmdfgxly2.ppdbcalc10.Visible:=false;
          frmdfgxly2.ppdbcalc11.Visible:=false;
          frmdfgxly2.ppdbcalc12.Visible:=false;
          frmdfgxly2.zsj01.Visible:=true;
          frmdfgxly2.zsj02.Visible:=true;
          frmdfgxly2.zsj03.Visible:=true;
          frmdfgxly2.zsj04.Visible:=true;
          frmdfgxly2.ppdbtext4.Visible:=true;
          frmdfgxly2.ppdbtext10.Visible:=true;
          frmdfgxly2.ppdbtext11.Visible:=true;
          frmdfgxly2.ppdbtext21.Visible:=true;
          frmdfgxly2.ppdbtext22.Visible:=true;
          frmdfgxly2.ppdbtext23.Visible:=true;
          frmdfgxly2.ppdbcalc1.Visible:=true;
          frmdfgxly2.ppdbcalc2.Visible:=true;
          frmdfgxly2.ppdbcalc3.Visible:=true;
          frmdfgxly2.ppdbcalc4.Visible:=true;
          frmdfgxly2.ppdbcalc5.Visible:=true;
          frmdfgxly2.ppdbcalc6.Visible:=true;
        end
        else begin
          frmdfgxly2.zdj01.Visible:=false;
          frmdfgxly2.zdj02.Visible:=false;
          frmdfgxly2.zdj03.Visible:=false;
          frmdfgxly2.zdj04.Visible:=false;
          frmdfgxly2.ppdbtext24.Visible:=false;
          frmdfgxly2.ppdbtext25.Visible:=false;
          frmdfgxly2.ppdbtext26.Visible:=false;
          frmdfgxly2.ppdbtext27.Visible:=false;
          frmdfgxly2.ppdbtext28.Visible:=false;
          frmdfgxly2.ppdbtext29.Visible:=false;
          frmdfgxly2.ppdbcalc7.Visible:=false;
          frmdfgxly2.ppdbcalc8.Visible:=false;
          frmdfgxly2.ppdbcalc9.Visible:=false;
          frmdfgxly2.ppdbcalc10.Visible:=false;
          frmdfgxly2.ppdbcalc11.Visible:=false;
          frmdfgxly2.ppdbcalc12.Visible:=false;
          frmdfgxly2.zsj01.Visible:=false;
          frmdfgxly2.zsj02.Visible:=false;
          frmdfgxly2.zsj03.Visible:=false;
          frmdfgxly2.zsj04.Visible:=false;
          frmdfgxly2.ppdbtext4.Visible:=false;
          frmdfgxly2.ppdbtext10.Visible:=false;
          frmdfgxly2.ppdbtext11.Visible:=false;
          frmdfgxly2.ppdbtext21.Visible:=false;
          frmdfgxly2.ppdbtext22.Visible:=false;
          frmdfgxly2.ppdbtext23.Visible:=false;
          frmdfgxly2.ppdbcalc1.Visible:=false;
          frmdfgxly2.ppdbcalc2.Visible:=false;
          frmdfgxly2.ppdbcalc3.Visible:=false;
          frmdfgxly2.ppdbcalc4.Visible:=false;
          frmdfgxly2.ppdbcalc5.Visible:=false;
          frmdfgxly2.ppdbcalc6.Visible:=false;
        end;
      end;
    end;
    frmdfgxly2.ppreport1.print;
  end;
end;

procedure Tfrmscgx.zygx1_YzjbChange(Sender: TField);
begin
  zygx1.fieldbyname('eyzjb').Value:=zygx1.fieldbyname('yzjb').Value;
end;

procedure Tfrmscgx.zygx1_SjdjChange(Sender: TField);
begin
  if not zygx1.fieldbyname('sjdj').isnull then zygx1.fieldbyname('sjdj1').Value:=round(zygx1.fieldbyname('sjdj').Value*1000)/1000*12;
end;

function Tfrmscgx.getzsj(const seq: integer; const kh: string;
  const rid: integer): double;
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select sum(sj) as zsj from ie_zygx1 where seq=:x1 and kh=:x2 and rid<>:x3';
    params[0].asinteger:=seq;
    params[1].asstring:=kh;
    params[2].asinteger:=rid;
    open;
    if not fieldbyname('zsj').isnull then result:=fieldbyname('zsj').value else result:=0;
  end;
end;

function Tfrmscgx.getzsl(const seq: integer; const kh: string;
  const rid: integer): integer;
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftinteger,'x3',ptinput);
    commandtext:='select count(*) as zsj from ie_zygx1 where seq=:x1 and kh=:x2 and rid<>:x3';
    params[0].asinteger:=seq;
    params[1].asstring:=kh;
    params[2].asinteger:=rid;
    open;
    if not fieldbyname('zsj').isnull then result:=fieldbyname('zsj').value else result:=0;
  end;
end;

procedure Tfrmscgx.calc_rs(const seq: integer; const kh: string;
  const maxsl: integer);
begin
  with query1 do begin
    close;
    params.clear;
    commandtext:='exec ie_calcsjrs :x1,:x2,:x3';
    params[0].asinteger:=seq;
    params[1].asstring:=kh;
    params[2].asinteger:=maxsl;
    execute;
  end;
end;

procedure Tfrmscgx.BitBtn5Click(Sender: TObject);
begin
  screen.Cursor:=crHourglass;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='exec sp_genielb :x1,:x2';
    params[0].asstring:=zygx.fieldbyname('kh').value;
    params[1].asinteger:=zygx.fieldbyname('seq').value;
    execute;
  end;
  if frmlbxh=nil then frmlbxh:=tfrmlbxh.create(nil);
  frmlbxh.show;
  screen.Cursor:=crDefault;
end;

procedure Tfrmscgx.BitBtn4Click(Sender: TObject);
var
  r14,r15,r16:boolean;
begin
  r14:=false;r15:=false;r16:=false;
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select * from ie_qx where nam=:x1';
    params[0].asstring:=frmxtdl.ComboBox1.text;
    open;
    r14:=fieldbyname('r14').value;
    r15:=fieldbyname('r15').value;
    r16:=fieldbyname('r16').value;
  end;
  if zygx.fieldbyname('appr1').isnull then begin
    if r14 then begin
        with zygx do begin
          edit;
          fieldbyname('appr1').value:=frmxtdl.ComboBox1.text;
          fieldbyname('appdt1').value:=date;
          post;
        end;
    end else begin
      showmessage('你沒有權限确認!');
    end;
  end else begin
    if not zygx.fieldbyname('appr2').isnull then begin
      if not zygx.fieldbyname('appr').isnull then begin
        showmessage('此款已經車間确認!');
      end else begin
        if r16 then begin
          with zygx do begin
            edit;
            fieldbyname('appr').value:=frmxtdl.ComboBox1.text;
            fieldbyname('appdt').value:=date;
            post;
          end;
        end else begin
          showmessage('你沒有權限确認!');
        end;
      end;
    end else begin
      if r15 then begin
        with zygx do begin
          edit;
          fieldbyname('appr2').value:=frmxtdl.ComboBox1.text;
          fieldbyname('appdt2').value:=date;
          post;
        end;
      end else begin
        showmessage('你沒有權限确認!');
      end;
    end;
  end;
end;

procedure Tfrmscgx.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then sendmessage(dbgrideh1.handle,wm_keydown,vk_tab,0);
end;

procedure Tfrmscgx.zygxbzdjChange(Sender: TField);
var
  bzdj,bzzsj1:double;
begin
  if not zygx.fieldbyname('bzdj').isnull then bzdj:=zygx.fieldbyname('bzdj').value else bzdj:=gsj;//4.016;
  if not zygx.fieldbyname('bzzsj1').isnull then bzzsj1:=zygx.fieldbyname('bzzsj1').value else bzzsj1:=0;
  zygx.fieldbyname('zdj1').value:=bzdj*bzzsj1; 
end;

procedure Tfrmscgx.SpeedButton2Click(Sender: TObject);
begin
  if frmzhsd=nil then frmzhsd:=tfrmzhsd.create(nil);
  with frmzhsd.query1 do begin
    close;
    params.clear;
    commandtext:='select * from ie_grouping';
    open;
  end;
  frmzhsd.show;
end;

procedure Tfrmscgx.SpeedButton3Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmxzcbgx=nil then frmxzcbgx:=tfrmxzcbgx.create(self);
  with frmxzcbgx.query1 do begin
    close;
    params.clear;
    commandtext:='select distinct seq,kh,kh1,zd,flag2,tplant,activ,zd1 from IE_zygx where activ=1';
    open;
  end;
  frmxzcbgx.edit1.text:='';
  frmxzcbgx.Edit2.text:='';
  frmxzcbgx.Edit3.Text:='';
  frmxzcbgx.Label3.Caption:='ZD';
  frmxzcbgx.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmscgx.zygx1_bzsj2Change(Sender: TField);
var
  sj:double;
begin
  if not zygx1.fieldbyname('bzsj2').IsNull then sj:=zygx1.fieldbyname('bzsj2').value else sj:=0;
  if sj>0 then begin
    zygx1.FieldByName('sjdj2').Value:=sj*zygx.fieldbyname('bzdj').value;
    zygx1.fieldbyname('jscl1').value:=0.5/sj;
  end else begin
    zygx1.fieldbyname('sjdj2').value:=0;
    zygx1.FieldByName('jscl1').Value:=0;
  end;
end;

procedure Tfrmscgx.zygxAfterOpen(DataSet: TDataSet);
var
  i:integer;
begin
  (zygx.fieldbyname('zsj') as tfloatfield).displayformat:='0.0000';
  (zygx.fieldbyname('bzzsj') as tfloatfield).displayformat:='0.0000';
  (zygx.fieldbyname('bzzsj1') as tfloatfield).displayformat:='0.0000';
  (zygx.fieldbyname('bzzsj2') as tfloatfield).displayformat:='0.0000';
  (zygx.fieldbyname('bzzsj3') as tfloatfield).displayformat:='0.0000';
  (zygx.fieldbyname('zdj') as tfloatfield).displayformat:='0.0000';
  (zygx.fieldbyname('zdj1') as tfloatfield).displayformat:='0.0000';
  (zygx.fieldbyname('zdj2') as tfloatfield).displayformat:='0.0000';
  (zygx.fieldbyname('zdj3') as tfloatfield).displayformat:='0.0000';
  (zygx1.fieldbyname('sj') as tfloatfield).displayformat:='0.0000';
  (zygx1.fieldbyname('sxrs') as tfloatfield).displayformat:='0.00';
  (zygx1.fieldbyname('dz') as tfloatfield).displayformat:='0.00';
  (zygx1.fieldbyname('sz') as tfloatfield).displayformat:='0.00';
  (zygx1.fieldbyname('rz') as tfloatfield).displayformat:='0.00';
  (zygx1.fieldbyname('snz') as tfloatfield).displayformat:='0.00';
  (zygx1.fieldbyname('jg') as tfloatfield).displayformat:='0.00';
  (zygx1.fieldbyname('rs') as tfloatfield).displayformat:='0.00';
  (zygx1.fieldbyname('qt') as tfloatfield).displayformat:='0.00';
  (zygx1.fieldbyname('fyl') as tfloatfield).displayformat:='0.00';
  (zygx1.fieldbyname('bzsj') as tfloatfield).displayformat:='0.0000';
  (zygx1.fieldbyname('jhl') as tfloatfield).displayformat:='0.00';
  (zygx1.fieldbyname('bzsj1') as tfloatfield).displayformat:='0.0000';
  (zygx1.fieldbyname('bzsj2') as tfloatfield).displayformat:='0.0000';
  (zygx1.fieldbyname('sjdj') as tfloatfield).DisplayFormat:='0.0000';
  (zygx1.fieldbyname('sjdj1') as tfloatfield).DisplayFormat:='0.0000';
  (zygx1.fieldbyname('sjdj2') as tfloatfield).DisplayFormat:='0.0000';
  (zygx1.fieldbyname('jscl') as tfloatfield).DisplayFormat:='0.00';
  (zygx1.fieldbyname('jscl1') as tfloatfield).DisplayFormat:='0.00';
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select * from ie_yh where nam=:x1';
    params[0].asstring:=frmxtdl.ComboBox1.text;
    open;
    if fieldbyname('r10').value=false then begin
      //dbgrideh1.ReadOnly:=true;
      bitbtn1.Enabled:=false;
      bitbtn3.Enabled:=false;
      //bitbtn4.Enabled:=false;
      bitbtn7.Enabled:=false;
      //dbgrideh1.Columns[11].ReadOnly:=true;
      //dbgrideh1.Columns[12].ReadOnly:=true;
      dbgrideh1.Columns[14].ReadOnly:=true;
      dbgrideh1.Columns[15].ReadOnly:=true;
      dbgrideh1.columns[16].ReadOnly:=true;
      dbgrideh1.Columns[17].ReadOnly:=true;
      dbcombobox1.enabled:=false;
      bitbtn11.visible:=false;
      bitbtn14.Visible:=false;
    end else begin
      //DBGrideh1.ReadOnly:=false;
      BitBtn1.Enabled:=True;
      BitBtn3.Enabled:=True;
      BitBtn7.Enabled:=True;
      //dbgrideh1.Columns[11].ReadOnly:=false;
      //dbgrideh1.Columns[12].ReadOnly:=false;
      dbgrideh1.Columns[14].ReadOnly:=false;
      dbgrideh1.Columns[15].ReadOnly:=false;
      dbgrideh1.columns[16].ReadOnly:=false;
      dbgrideh1.Columns[17].ReadOnly:=false;
      bitbtn11.visible:=true;
      bitbtn14.Visible:=true;
    end;
    if fieldbyname('r11').value=true then begin
        dbcombobox1.Enabled:=true;
        dbedit4.Readonly:=false;
        dbedit5.Readonly:=false;
        dbedit35.ReadOnly:=false;
        dbedit36.ReadOnly:=false;
    end else begin
        dbcombobox1.Enabled:=false;
        dbedit4.readonly:=true;
        dbedit5.readonly:=true;
        dbedit35.ReadOnly:=true;
        dbedit36.ReadOnly:=true;
    end;
      if fieldbyname('r14').value=true then begin
        //dbgrideh1.columns[0].ReadOnly:=false;
        dbgrideh1.columns[1].ReadOnly:=false;
        dbgrideh1.columns[2].ReadOnly:=false;
        dbgrideh1.columns[3].ReadOnly:=false;
        dbgrideh1.columns[4].ReadOnly:=false;
        dbgrideh1.columns[5].ReadOnly:=false;
        dbgrideh1.columns[6].ReadOnly:=false;
        dbgrideh1.columns[7].ReadOnly:=false;
        dbgrideh1.columns[8].ReadOnly:=false;
        dbgrideh1.columns[9].ReadOnly:=false;
        dbgrideh1.columns[10].ReadOnly:=false;
        dbgrideh1.columns[11].ReadOnly:=false;
        dbgrideh1.columns[12].ReadOnly:=false;
        dbgrideh1.columns[13].ReadOnly:=false;
      end else begin
        //dbgrideh1.columns[0].ReadOnly:=true;
        dbgrideh1.columns[1].ReadOnly:=true;
        dbgrideh1.columns[2].ReadOnly:=true;
        dbgrideh1.columns[3].ReadOnly:=true;
        dbgrideh1.columns[4].ReadOnly:=true;
        dbgrideh1.columns[5].ReadOnly:=true;
        dbgrideh1.columns[6].ReadOnly:=true;
        dbgrideh1.columns[7].ReadOnly:=true;
        dbgrideh1.columns[8].ReadOnly:=true;
        dbgrideh1.columns[9].ReadOnly:=true;
        dbgrideh1.columns[10].ReadOnly:=true;
        dbgrideh1.columns[11].ReadOnly:=true;
        dbgrideh1.columns[12].ReadOnly:=true;
        dbgrideh1.columns[13].ReadOnly:=true;
        for i:=14 to 74 do begin
           dbgrideh1.Columns[i].readonly:=true;
        end;
      end;
      if fieldbyname('r12').value=true then begin
        //bitbtn4.Enabled:=true;
        dbgrideh1.Columns[18].ReadOnly:=false;
        dbcombobox1.Enabled:=true;
      end else begin
        //bitbtn4.Enabled:=false;
        dbgrideh1.Columns[18].ReadOnly:=true;
        dbcombobox1.Enabled:=false;
      end;
      if fieldbyname('r16').value=false then begin
        zygx.ReadOnly:=true;
        zygx1.ReadOnly:=true;
        bitbtn1.Enabled:=false;
        bitbtn2.Enabled:=false;
        bitbtn3.Enabled:=false;
        bitbtn5.Enabled:=false;
        bitbtn6.Enabled:=false;
        bitbtn7.Enabled:=false;
        bitbtn8.Enabled:=false;
        bitbtn9.Enabled:=false;
        dbnavigator1.Enabled:=false;
        label46.Caption:='No price';
      end;
  end;
end;

procedure Tfrmscgx.zygxBeforeDelete(DataSet: TDataSet);
begin
  if not zygx.fieldbyname('appr1').IsNull then begin
    if zygx.fieldbyname('appr1').value>'0' then begin
      showmessage('此款已經确認﹐不能刪除!');
      abort;
    end;
  end;
end;

procedure Tfrmscgx.zygxBeforeEdit(DataSet: TDataSet);
begin
  if not zygx.fieldbyname('appr').IsNull then begin
    if zygx.fieldbyname('appr').value>'0' then begin
      showmessage('此款已經确認﹐不能修改!');
      abort;
    end;
  end;
end;

procedure Tfrmscgx.DataSource1DataChange(Sender: TObject; Field: TField);
var
  i:integer;
begin
  if zygx.State=dsbrowse then begin
    if zygx.FieldByName('appr').IsNull then begin
      if zygx.fieldbyname('appr2').isnull then begin
        if zygx.fieldbyname('appr1').isnull then
          label10.Caption:=''
        else begin
          if zygx.fieldbyname('appr1').value>'0' then
          label10.Caption:='IE部已經由 '+zygx.fieldbyname('appr1').value+' 确認'
          else label10.caption:='';
        end;
      end else if zygx.fieldbyname('appr2').value>'0' then begin
        label10.Caption:='已經由IE經理 '+zygx.fieldbyname('appr2').value+' 确認';
      end;
    end else if zygx.fieldbyname('appr').value>'0' then begin
      label10.Caption:='車間已經由 '+zygx.fieldbyname('appr').value+' 确認';
    end;
    for i:=3 to 14 do begin
      dbgrideh1.Columns[i].Visible:=true;
      dbgrideh1.Columns[i].Width:=23;
    end;
    dbgrideh1.FrozenCols:=15;
    dbgrideh1.Columns[17].Width:=16;
    if not zygx.fieldbyname('cls').isnull then begin
      if ((zygx.fieldbyname('cls').value='1A') or (zygx.fieldbyname('cls').value='1')) then begin
        for i:=4 to 14 do begin
          dbgrideh1.columns[i].Visible:=false;
        end;
        dbgrideh1.Columns[3].Width:=138;
        dbgrideh1.FrozenCols:=4;
      end else if zygx.fieldbyname('cls').value='2A' then begin
        dbgrideh1.columns[3].Visible:=false;
        for i:=5 to 14 do begin
          dbgrideh1.Columns[i].Visible:=false;
        end;
        for i:=4 to 4 do begin
          dbgrideh1.columns[i].Width:=138;
        end;
        dbgrideh1.FrozenCols:=4;
      end else if zygx.fieldbyname('cls').value='2B' then begin
        dbgrideh1.columns[3].Visible:=false;
        dbgrideh1.columns[4].Visible:=false;
        for i:=6 to 14 do begin
          dbgrideh1.Columns[i].Visible:=false;
        end;
        for i:=5 to 5 do begin
          dbgrideh1.columns[i].Width:=138;
        end;
        dbgrideh1.FrozenCols:=4;
      end else if ((zygx.fieldbyname('cls').value='2A-B') or (zygx.fieldbyname('cls').value='2')) then begin
        dbgrideh1.columns[3].Visible:=false;
        for i:=6 to 14 do begin
          dbgrideh1.Columns[i].Visible:=false;
        end;
        for i:=4 to 5 do begin
          dbgrideh1.columns[i].Width:=69;
        end;
        dbgrideh1.FrozenCols:=5;
      end else if zygx.fieldbyname('cls').value='3A-B' then begin
        for i:=3 to 5 do begin
          dbgrideh1.Columns[i].Visible:=false;
        end;
        for i:=8 to 14 do begin
          dbgrideh1.Columns[i].Visible:=false;
        end;
        for i:=6 to 7 do begin
          dbgrideh1.columns[i].Width:=69;
        end;
        dbgrideh1.FrozenCols:=5;
      end else if ((zygx.fieldbyname('cls').value='3A-C') or (zygx.fieldbyname('cls').value='3')) then begin
        for i:=3 to 5 do begin
          dbgrideh1.Columns[i].Visible:=false;
        end;
        for i:=9 to 14 do begin
          dbgrideh1.Columns[i].Visible:=false;
        end;
        for i:=6 to 8 do begin
          dbgrideh1.columns[i].Width:=46;
        end;
        dbgrideh1.FrozenCols:=6;
      end else if zygx.fieldbyname('cls').value='4A-D' then begin
        for i:=3 to 8 do begin
          dbgrideh1.Columns[i].Visible:=false;
        end;
        for i:=9 to 12 do begin
          dbgrideh1.columns[i].Width:=35;
        end;
        for i:=13 to 14 do begin
          dbgrideh1.Columns[i].Visible:=false;
        end;
        dbgrideh1.FrozenCols:=7;
      end else if ((zygx.fieldbyname('cls').value='4A-F') or (zygx.fieldbyname('cls').value='4')) then begin
        for i:=3 to 8 do begin
          dbgrideh1.Columns[i].Visible:=false;
        end;
        for i:=9 to 14 do begin
          dbgrideh1.columns[i].Width:=23;
        end;
        dbgrideh1.FrozenCols:=9;
      end;
    end;
  end else label10.Caption:='';
end;

procedure Tfrmscgx.BitBtn12Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmscgx.BitBtn8Click(Sender: TObject);
//var
//  kh:string;
//  str1:string;
begin
  {
  kh:=inputbox('導出工序','請輸入款號',zygx.fieldbyname('kh1').value);
  if savedialog1.Execute then str1:=savedialog1.FileName;
  with query7 do begin
    close;
    params.clear;
    commandtext:='select distinct a.zd as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,b.sjdj*12 as [單價/打],b.sj*60 as SAM,b.sjdj as [單價] from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.kh1>''''';
    if kh>'' then commandtext:=commandtext+' and a.kh1='''+kh+'''';
    commandtext:=commandtext+' order by a.kh1,b.gxh';
    open;
    qexport3xls1.FileName:=str1;
    qexport3xls1.ShowFile:=true;
    qexport3xls1.Execute;
  end;
  }
  if frmzldc=nil then frmzldc:=tfrmzldc.create(nil);

  frmzldc.show;
end;

procedure Tfrmscgx.ComboBox1Change(Sender: TObject);
begin
  //工序未分類 xz07
  //色碼獨立  xz04
  //中普倚靠  xz01
  //中大倚靠  xz06
  //淺普倚靠  xz03
  //淺大倚靠  xz05
  //中色倚靠  xz30
  //淺色倚靠  xz31
  //普碼倚靠  xz40
  //大碼倚靠  xz41
  if combobox1.Text>'' then begin
    if combobox1.text='工序未分類' then p_updzygx1('xz07')
    else if combobox1.text='色碼不倚靠' then p_updzygx1('xz04')
    else if combobox1.text='中普倚靠' then p_updzygx1('xz01')
    else if combobox1.text='中大倚靠' then p_updzygx1('xz06')
    else if combobox1.text='淺普倚靠' then p_updzygx1('xz03')
    else if combobox1.text='淺大倚靠' then p_updzygx1('xz05')
    else if combobox1.text='中色倚靠' then p_updzygx1('xz30')
    else if combobox1.text='淺色倚靠' then p_updzygx1('xz31')
    else if combobox1.text='普碼倚靠' then p_updzygx1('xz40')
    else if combobox1.text='大碼倚靠' then p_updzygx1('xz41');
  end;
end;

procedure Tfrmscgx.p_updzygx1(const s1: string);
begin
  with zygx1 do begin
    first;
    while not eof do begin
      edit;
      fieldbyname(s1).Value:=true;
      post;
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tfrmscgx.SpeedButton4Click(Sender: TObject);
begin
  screen.cursor:=crHourglass;
  if frmxzcbgx=nil then frmxzcbgx:=tfrmxzcbgx.create(self);
  {
  with frmxzcbgx.query1 do begin
    close;
    params.clear;
    commandtext:='select distinct seq,kh,kh1,zd,flag2,tplant,activ,zd1 from IE_zygx where statu=''Active''';
    open;
  end;
  }
  frmxzcbgx.xh2.Checked:=true;
  frmxzcbgx.edit1.text:='';
  frmxzcbgx.Edit2.text:='';
  frmxzcbgx.edit3.text:='';
  frmxzcbgx.Label3.Caption:='KH1';
  frmxzcbgx.show;
  screen.cursor:=crDefault;
end;

procedure Tfrmscgx.Export2Excel1Click(Sender: TObject);
var
  kh,str1:string;
begin
  screen.Cursor:=crSQLWait;
  try
  kh:=inputbox('請輸入款號:','空白代表所有','');
  if savedialog1.Execute then str1:=savedialog1.FileName;

  with query7 do begin
    close;
    params.clear;
    commandtext:='select a.kh as [款號],a.zd as [客戶款號],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.sj as SAH,b.sjdj*12 as [單價/打],b.sj*60 as SAM '
                +'from ie_zygx a,ie_zygx1 b where a.seq=b.seq';
    if kh>'' then commandtext:=commandtext+' and a.kh='''+kh+'''';
    commandtext:=commandtext+' order by a.kh,b.gxh';
    open;
    qexport3xls1.FileName:=str1;//savedialog1.FileName;
    qexport3xls1.ShowFile:=true;
    qexport3xls1.Execute;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmscgx.Export4RFID1Click(Sender: TObject);
var
  kh,str1:string;
begin
  screen.Cursor:=crSQLWait;
  try
  kh:=zygx.fieldbyname('kh').value;
  if savedialog1.Execute then str1:=savedialog1.FileName;
  with query7 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='exec sp_export_rfid :x1';
    params[0].asstring:=kh;
    execute;
  end;
  with query7 do begin
    close;
    params.clear;
    commandtext:='select zd as [工程流程號],gxh as [工序號],fgxh as [副工序],bj as [部件],gxm as [副工序名稱],';//yczl as [機種],sah as [SAH],yh as [Usercode],';
    commandtext:=commandtext+'dj as [價格],sam as [SAM],x1 as [是否最后工序],x2 as [是否工序組最后工序],';
    commandtext:=commandtext+'x3 as [是否生產最后工序],x4 as [是否車縫],x5 as [檢查點] from ie_exprfid where kh='''+kh+'''';
    open;
    qexport3xls1.FileName:=str1;
    qexport3xls1.ShowFile:=true;
    qexport3xls1.Execute;
  end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tfrmscgx.zldc(const zd, zd1, zd2, zd3, zd4, zd5, kh, kh1, kdc, dj: string);
var
  str1:string;
begin
  if savedialog1.Execute then str1:=savedialog1.FileName;
  if kdc<>'2' then begin
    with query7 do begin
      close;
      params.clear;
      if dj='0' then
      commandtext:='select distinct a.seq as [SEQ],a.zd as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [FAE組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,b.sjdj*12 as [單價/打],'
                  +'b.sj*60 as SAM,b.sjdj as [單價] from ie_zygx a,ie_zygx1 b where a.seq=b.seq '
      else if dj='1' then
      commandtext:='select distinct a.seq as [SEQ],a.zd as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [FAE組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,b.sjdj2*12 as [單價/打],'
                  +'b.sj*60 as SAM,b.sjdj2 as [單價] from ie_zygx a,ie_zygx1 b where a.seq=b.seq ';
      if zd>'' then commandtext:=commandtext+' and a.zd='''+zd+'''';
      if zd1>'' then commandtext:=commandtext+' and a.zd1='''+zd1+'''';
      if zd2>'' then commandtext:=commandtext+' and a.zd2='''+zd2+'''';
      if zd3>'' then commandtext:=commandtext+' and a.zd3='''+zd3+'''';
      if zd4>'' then commandtext:=commandtext+' and a.zd4='''+zd4+'''';
      if zd5>'' then commandtext:=commandtext+' and a.zd5='''+zd5+'''';
      if kh>'' then commandtext:=commandtext+' and a.kh='''+kh+'''';
      if kh1>'' then commandtext:=commandtext+' and a.kh1='''+kh1+'''';
      if kdc='1' then commandtext:=commandtext+' and a.kdc=1';
      if dj='0' then
      commandtext:=commandtext+' union select distinct a.seq as [SEQ],a.zd1 as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,'
                  +'b.sjdj*12 as [單價/打],b.sj*60 as SAM,b.sjdj as [單價] from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.zd1>'''' '
      else if dj='1' then
      commandtext:=commandtext+' union select distinct a.seq as [SEQ],a.zd1 as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,'
                  +'b.sjdj2*12 as [單價/打],b.sj*60 as SAM,b.sjdj2 as [單價] from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.zd1>'''' ';
      if zd>'' then commandtext:=commandtext+' and a.zd='''+zd+'''';
      if zd1>'' then commandtext:=commandtext+' and a.zd1='''+zd1+'''';
      if zd2>'' then commandtext:=commandtext+' and a.zd2='''+zd2+'''';
      if zd3>'' then commandtext:=commandtext+' and a.zd3='''+zd3+'''';
      if zd4>'' then commandtext:=commandtext+' and a.zd4='''+zd4+'''';
      if zd5>'' then commandtext:=commandtext+' and a.zd5='''+zd5+'''';
      if kh>'' then commandtext:=commandtext+' and a.kh='''+kh+'''';
      if kh1>'' then commandtext:=commandtext+' and a.kh1='''+kh1+'''';
      if kdc='1' then commandtext:=commandtext+' and a.kdc=1';
      if dj='0' then
      commandtext:=commandtext+' union select distinct a.seq as [SEQ],a.zd2 as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,'
                  +'b.sjdj*12 as [單價/打],b.sj*60 as SAM,b.sjdj as [單價] from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.zd2>'''' '
      else if dj='1' then
      commandtext:=commandtext+' union select distinct a.seq as [SEQ],a.zd2 as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,'
                  +'b.sjdj2*12 as [單價/打],b.sj*60 as SAM,b.sjdj2 as [單價] from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.zd2>'''' ';
      if zd>'' then commandtext:=commandtext+' and a.zd='''+zd+'''';
      if zd1>'' then commandtext:=commandtext+' and a.zd1='''+zd1+'''';
      if zd2>'' then commandtext:=commandtext+' and a.zd2='''+zd2+'''';
      if zd3>'' then commandtext:=commandtext+' and a.zd3='''+zd3+'''';
      if zd4>'' then commandtext:=commandtext+' and a.zd4='''+zd4+'''';
      if zd5>'' then commandtext:=commandtext+' and a.zd5='''+zd5+'''';
      if kh>'' then commandtext:=commandtext+' and a.kh='''+kh+'''';
      if kh1>'' then commandtext:=commandtext+' and a.kh1='''+kh1+'''';
      if kdc='1' then commandtext:=commandtext+' and a.kdc=1';
      if dj='0' then
      commandtext:=commandtext+' union select distinct a.seq as [SEQ],a.zd3 as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,'
                  +'b.sjdj*12 as [單價/打],b.sj*60 as SAM,b.sjdj as [單價] from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.zd3>'''' '
      else if dj='1' then
      commandtext:=commandtext+' union select distinct a.seq as [SEQ],a.zd3 as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,'
                  +'b.sjdj2*12 as [單價/打],b.sj*60 as SAM,b.sjdj2 as [單價] from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.zd3>'''' ';
      if zd>'' then commandtext:=commandtext+' and a.zd='''+zd+'''';
      if zd1>'' then commandtext:=commandtext+' and a.zd1='''+zd1+'''';
      if zd2>'' then commandtext:=commandtext+' and a.zd2='''+zd2+'''';
      if zd3>'' then commandtext:=commandtext+' and a.zd3='''+zd3+'''';
      if zd4>'' then commandtext:=commandtext+' and a.zd4='''+zd4+'''';
      if zd5>'' then commandtext:=commandtext+' and a.zd5='''+zd5+'''';
      if kh>'' then commandtext:=commandtext+' and a.kh='''+kh+'''';
      if kh1>'' then commandtext:=commandtext+' and a.kh1='''+kh1+'''';
      if kdc='1' then commandtext:=commandtext+' and a.kdc=1';
      if dj='0' then
      commandtext:=commandtext+' union select distinct a.seq as [SEQ],a.zd4 as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,'
                  +'b.sjdj*12 as [單價/打],b.sj*60 as SAM,b.sjdj as [單價] from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.zd4>'''' '
      else if dj='1' then
      commandtext:=commandtext+' union select distinct a.seq as [SEQ],a.zd4 as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,'
                  +'b.sjdj2*12 as [單價/打],b.sj*60 as SAM,b.sjdj2 as [單價] from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.zd4>'''' ';
      if zd>'' then commandtext:=commandtext+' and a.zd='''+zd+'''';
      if zd1>'' then commandtext:=commandtext+' and a.zd1='''+zd1+'''';
      if zd2>'' then commandtext:=commandtext+' and a.zd2='''+zd2+'''';
      if zd3>'' then commandtext:=commandtext+' and a.zd3='''+zd3+'''';
      if zd4>'' then commandtext:=commandtext+' and a.zd4='''+zd4+'''';
      if zd5>'' then commandtext:=commandtext+' and a.zd5='''+zd5+'''';
      if kh>'' then commandtext:=commandtext+' and a.kh='''+kh+'''';
      if kh1>'' then commandtext:=commandtext+' and a.kh1='''+kh1+'''';
      if kdc='1' then commandtext:=commandtext+' and a.kdc=1';
      if dj='0' then
      commandtext:=commandtext+' union select distinct a.seq as [SEQ],a.zd5 as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,'
                  +'b.sjdj*12 as [單價/打],b.sj*60 as SAM,b.sjdj as [單價] from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.zd5>'''' '
      else if dj='1' then
      commandtext:=commandtext+' union select distinct a.seq as [SEQ],a.zd5 as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,'
                  +'b.sjdj2*12 as [單價/打],b.sj*60 as SAM,b.sjdj2 as [單價] from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.zd5>'''' ';
      if zd>'' then commandtext:=commandtext+' and a.zd='''+zd+'''';
      if zd1>'' then commandtext:=commandtext+' and a.zd1='''+zd1+'''';
      if zd2>'' then commandtext:=commandtext+' and a.zd2='''+zd2+'''';
      if zd3>'' then commandtext:=commandtext+' and a.zd3='''+zd3+'''';
      if zd4>'' then commandtext:=commandtext+' and a.zd4='''+zd4+'''';
      if zd5>'' then commandtext:=commandtext+' and a.zd5='''+zd5+'''';
      if kh>'' then commandtext:=commandtext+' and a.kh='''+kh+'''';
      if kh1>'' then commandtext:=commandtext+' and a.kh1='''+kh1+'''';
      if kdc='1' then commandtext:=commandtext+' and a.kdc=1';
      commandtext:=commandtext+' order by [SEQ] desc,[客款號],[PH款號],[序號]';
      open;
      qexport3xls1.FileName:=str1;
      qexport3xls1.ShowFile:=true;
      qexport3xls1.Execute;
    end;
  end else begin
    with query7 do begin
      close;
      params.clear;
      if dj='0' then begin
      commandtext:='select distinct a.seq as [SEQ],a.zd as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,b.sjdj*12 as [單價/打],'
                  +'b.sj*60 as SAM,b.sjdj as [單價] from ie_zygx a,ie_zygx1 b,ie_tmpkh c where a.seq=b.seq and a.zd=c.khkh ';
      commandtext:=commandtext+' union select distinct a.seq as [SEQ],a.zd1 as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,'
                  +'b.sjdj*12 as [單價/打],b.sj*60 as SAM,b.sjdj as [單價] from ie_zygx a,ie_zygx1 b,ie_tmpkh c where a.seq=b.seq and a.zd1>'''' and a.zd1=c.khkh ';
      commandtext:=commandtext+' order by [SEQ] desc,[客款號],[PH款號],[序號]';
      end else if dj='1' then begin
      commandtext:='select distinct a.seq as [SEQ],a.zd as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,b.sjdj2*12 as [單價/打],'
                  +'b.sj*60 as SAM,b.sjdj2 as [單價] from ie_zygx a,ie_zygx1 b,ie_tmpkh c where a.seq=b.seq and a.zd=c.khkh ';
      commandtext:=commandtext+' union select distinct a.seq as [SEQ],a.zd1 as [客款號],a.kh as [PH款號],a.kh1 as [PH新款號],b.zb as [組別],b.gxh as [序號],b.gxdh as [代號],b.gxm as [工序名稱],b.yczl as [衣車种類],b.sj as SAH,'
                  +'b.sjdj2*12 as [單價/打],b.sj*60 as SAM,b.sjdj2 as [單價] from ie_zygx a,ie_zygx1 b,ie_tmpkh c where a.seq=b.seq and a.zd1>'''' and a.zd1=c.khkh ';
      commandtext:=commandtext+' order by [SEQ] desc,[客款號],[PH款號],[序號]';
      end;
      open;
      qexport3xls1.FileName:=str1;
      qexport3xls1.ShowFile:=true;
      qexport3xls1.Execute;
    end;
  end;
end;

procedure Tfrmscgx.BitBtn14Click(Sender: TObject);
begin
  // 1. Front Phase Stitching
        if frmqtgxb=nil then frmqtgxb:=tfrmqtgxb.create(self);
        with frmqtgxb.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq and b.zbdesc_en in (''PP.1) Front Phase Stitching Team'',''Stitching Ws - Front phase'') order by a.kh,b.zb,b.gxh';
          params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
          open;
        end;
        frmqtgxb.title001.caption:='Front Phase Stitching Team';
        frmqtgxb.ppreport1.print;
  // 2. Front Phase Bonding
        if frmqtgxb=nil then frmqtgxb:=tfrmqtgxb.create(self);
        with frmqtgxb.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq and ((b.zbdesc_en like ''PP.2) Front Phase Bonding Team%'') or (b.zbdesc_en=''Bonding Ws'')) order by a.kh,b.zb,b.gxh';
          params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
          open;
        end;
        frmqtgxb.title001.caption:='Front Phase Bonding Team';
        frmqtgxb.ppreport1.print;
  // 3. Parts Making (Strap making, Pad print, Welding)
        if frmqtgxb=nil then frmqtgxb:=tfrmqtgxb.create(self);
        with frmqtgxb.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq and b.zbdesc_en in (''PP.3) Strap making Team'',''PP.4) Pad Print and Welding Team'',''Parts Making Ws'') order by a.kh,b.zb,b.gxh';
          params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
          open;
        end;
        frmqtgxb.title001.caption:='Strap making Team';
        frmqtgxb.ppreport1.print;
  // 4. Assembly Line
        if frmqtgxb=nil then frmqtgxb:=tfrmqtgxb.create(self);
        with frmqtgxb.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq and b.zbdesc_en in (''A&E.1) Assembly Stitching Team'',''Stitching Ws - Assembly line'') order by a.kh,b.zb,b.gxh';
          params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
          open;
        end;
        frmqtgxb.title001.caption:='Assembly Stitching Team';
        frmqtgxb.ppreport1.print;
  // 5. End Phase Stitching
        if frmqtgxb=nil then frmqtgxb:=tfrmqtgxb.create(self);
        with frmqtgxb.zygx do begin
          close;
          params.clear;
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from ie_zygx a,ie_zygx1 b where a.seq=b.seq and a.seq=:seq and b.zbdesc_en in (''A&E.2) End Phase Stitching Team'',''Stitching Ws - End phase'') order by a.kh,b.zb,b.gxh';
          params[0].asinteger:=frmscgx.zygx.fieldbyname('seq').value;
          open;
        end;
        frmqtgxb.title001.caption:='End Phase Stitching Team';
        frmqtgxb.ppreport1.print;
end;

procedure Tfrmscgx.DBGridEh1ColEnter(Sender: TObject);
begin
  if dbgrideh1.SelectedIndex=1 then begin
    //dbgrideh1.Columns[1].PickList.clear;
    dbgrideh1.FieldColumns['zbdesc_en'].PickList.Clear;
    with query2 do begin
      close;
      params.clear;
      commandtext:='select * from ie_teams';
      open;
      first;
      while not eof do begin
        dbgrideh1.FieldColumns['zbdesc_en'].PickList.add(fieldbyname('iezb').value);
        application.ProcessMessages;
        next;
      end;
    end;
  end;
end;

procedure Tfrmscgx.zygx1_zbdesc_enChange(Sender: TField);
begin
  {
  if not zygx1.fieldbyname('zbdesc_en').isnull then begin
    if pos('PP.1',zygx1.fieldbyname('zbdesc_en').Value)>0 then
      zygx1.FieldByName('zb').value:='F'
    else if (pos('PP.3',zygx1.fieldbyname('zbdesc_en').value)>0) or (pos('PP.4',zygx1.fieldbyname('zbdesc_en').value)>0) then
      zygx1.fieldbyname('zb').value:='PP'
    else if (pos('PP.2',zygx1.fieldbyname('zbdesc_en').value)>0) then begin
      if pos('- P',zygx1.fieldbyname('zbdesc_en').value)>0 then
        zygx1.FieldByName('zb').value:='P'
      else if pos('- A',zygx1.fieldbyname('zbdesc_en').value)>0 then
        zygx1.FieldByName('zb').value:='AL'
    end else if (pos('A&E.1',zygx1.fieldbyname('zbdesc_en').value)>0) then
      zygx1.fieldbyname('zb').value:='AL'
    else if (pos('A&E.2',zygx1.fieldbyname('zbdesc_en').value)>0) then
      zygx1.fieldbyname('zb').value:='E';
  end;
  }
end;

procedure Tfrmscgx.DBEdit26DblClick(Sender: TObject);
begin
  if frmscgx_gsj=nil then frmscgx_gsj:=tfrmscgx_gsj.create(nil);
  frmscgx_gsj.show;
end;

procedure Tfrmscgx.SpeedButton5Click(Sender: TObject);
begin
  if frmscgx_gsj=nil then frmscgx_gsj:=tfrmscgx_gsj.create(nil);
  frmscgx_gsj.show;
end;

procedure Tfrmscgx.zygx1_sjdj2Change(Sender: TField);
var
  nyd,fty,fae,prodcode:string;
  price,sjdj2:double;
begin
  if not zygx.fieldbyname('tplant').isnull then fty:=zygx.fieldbyname('tplant').value else fty:='';
  if not zygx.fieldbyname('spmc').isnull then prodcode:=zygx.fieldbyname('spmc').value else prodcode:='';
  if not zygx1.fieldbyname('zb').isnull then fae:=zygx1.fieldbyname('zb').value else fae:='';
  if not zygx1.fieldbyname('nyd').isnull then nyd:=zygx1.fieldbyname('nyd').value else nyd:='';
  //
  with query1 do begin
    close;
    params.clear;
    commandtext:='select price from ie_price_master where fty='''+fty+''' and prodcode='''+prodcode+''' and fae='''+fae+''' and difficulty='''+nyd+'''';
    open;
    if not fieldbyname('price').isnull then price:=fieldbyname('price').value else price:=0;
  end;
  if not zygx1.fieldbyname('sjdj2').IsNull then sjdj2:=zygx1.fieldbyname('sjdj2').value else sjdj2:=0;
  if price>0 then zygx1.fieldbyname('bzsj2').value:=sjdj2/price;
end;

procedure Tfrmscgx.zygx1AfterOpen(DataSet: TDataSet);
begin
  //zygx1.FieldByName('sj').OnChange:=zygx1_sjchange;
  //zygx1.FieldByName('nyd').OnChange:=zygx1_sjchange;
  //zygx1.FieldByName('yczl').OnChange:=zygx1_yczlchange;
  //zygx1.FieldByName('yzjb').OnChange:=zygx1_yzjbchange;
  //zygx1.FieldByName('fyl').OnChange:=zygx1_fylchange;
  //zygx1.FieldByName('bzsj1').OnChange:=zygx1_bzsj1change;
  //zygx1.FieldByName('sjdj').OnChange:=zygx1_sjdjchange;
  //zygx1.FieldByName('sjdj2').OnChange:=zygx1_sjdj2change;
  //zygx1.FieldByName('zbdesc_en').OnChange:=zygx1_zbdesc_enchange;
end;

procedure Tfrmscgx.BitBtn15Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if not zygx.fieldbyname('seq').isnull then begin
    if frmzhxz=nil then frmzhxz:=tfrmzhxz.create(nil);
    frmzhxz.caption:='組合類別選擇  -  二步 (工場分配和重點要求)';
    frmzhxz.label1.caption:='snd';
    frmzhxz.show;
  end;  
  {
  if not zygx.fieldbyname('seq').isnull then begin
    with ieboo2 do begin
      close;
      params.Clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='exec sp_ieboo_step2 :x1';
      params[0].asinteger:=zygx.fieldbyname('seq').value;
      open;
      if not fieldbyname('cstyle').isnull then begin
        ppreport1.print;
      end;
    end;
  end;
  }
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmscgx.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmscgx.DBGridEh1TitleClick(Column: TColumnEh);
var
  tsah,csah:double;
  csahp:string;
begin
  if (zygx1.state=dsedit) or (zygx1.state=dsinsert) then zygx1.post;
  if column=dbgrideh1.columns[83] then begin
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select sum(sj) as tsah from ie_zygx1 where seq=:x1';
      params[0].asinteger:=zygx.fieldbyname('seq').value;
      open;
      if not fieldbyname('tsah').isnull then tsah:=fieldbyname('tsah').value else tsah:=0;
    end;
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select sum(sj) as csah from ie_zygx1 where seq=:x1 and sah_opt>''''';
      params[0].asinteger:=zygx.fieldbyname('seq').value;
      open;
      if not fieldbyname('csah').isnull then csah:=fieldbyname('csah').value else csah:=0;
    end;
    if csah>0 then begin
      csahp:='整款SAH: '+formatfloat('0.0000',tsah)+'  核心工序SAH: '+formatfloat('0.0000',csah)+'  佔比: '+formatfloat('0.00%',csah*100.00/tsah);
      showmessage(csahp);
    end;
  end;
  if column=dbgrideh1.columns[0] then begin
    if dbgrideh1.columns[0].width<80 then
    dbgrideh1.columns[0].Width:=80
    else dbgrideh1.columns[0].Width:=45;
  end;
end;

procedure Tfrmscgx.BitBtn16Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if not zygx.fieldbyname('seq').isnull then begin
    if frmzhxz=nil then frmzhxz:=tfrmzhxz.create(nil);
    frmzhxz.caption:='組合類別選擇  -  組件報表 (單一/合成)';
    frmzhxz.label1.caption:='parts';
    frmzhxz.show;
  end;  
  {
  if not zygx.fieldbyname('seq').isnull then begin
    with ieboo2 do begin
      close;
      params.Clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='exec sp_ieboo_step2 :x1';
      params[0].asinteger:=zygx.fieldbyname('seq').value;
      open;
      if not fieldbyname('cstyle').isnull then begin
        ppreport1.print;
      end;
    end;
  end;
  }
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tfrmscgx.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmscgx.DBGridEh1Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmie_iews=nil then frmie_iews:=tfrmie_iews.create(nil);
  with frmie_iews.query1 do begin
    close;
    params.clear;
    commandtext:='select * from ie_zbdesc';
    open;
  end;
  frmie_iews.show;
end;

procedure Tfrmscgx.zygx1ZbChange(Sender: TField);
begin
  if not zygx1.fieldbyname('zb').isnull then begin
    with query4 do begin
      close;
      params.clear;
      commandtext:='select seq,zbdesc_en from ie_zbdesc where zb='''+zygx1.fieldbyname('zb').value+'''';
      open;
      if not fieldbyname('zbdesc_en').isnull then begin
        zygx1.fieldbyname('zbdesc_en').value:=fieldbyname('zbdesc_en').value;
        zygx1.fieldbyname('gxh_n').value:=fieldbyname('seq').value;
      end else begin
        zygx1.fieldbyname('zbdesc_en').value:='';
        zygx1.fieldbyname('gxh_n').value:=0;
      end
    end;
  end;
end;

procedure Tfrmscgx.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
  //if not zygx.Active then zygx.Open;
  if edit2.text>'' then begin
  //{
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx';
      open;
    end;
  //}
  {
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where kh like '''+edit2.text+'%''';
      open;
    end;
  }
  zygx.locate('kh',edit2.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
  end;
end;

procedure Tfrmscgx.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
  //if not zygx.Active then zygx.Open;
  if edit3.text>'' then begin
  with zygx do begin
    close;
    params.clear;
    commandtext:='select * from ie_zygx';
    open;
  end;
  {
  if edit3.text>'' then begin
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where kh1 like '''+edit3.text+'%''';
      open;
    end;
  end;
  }
  zygx.locate('kh1',edit3.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
  end;
end;

procedure Tfrmscgx.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
  //if not zygx.Active then zygx.Open;
  if edit1.text>'' then begin
  //{
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx';
      open;
    end;
  //}
  {
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where zd like '''+edit1.text+'%''';
      open;
    end;
  }
  zygx.locate('zd',edit1.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
  end;
end;

procedure Tfrmscgx.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
  //if not zygx.Active then zygx.Open;
  if edit4.text>'' then begin
  with zygx do begin
    close;
    params.clear;
    commandtext:='select * from ie_zygx';
    open;
  end;
  {
  if edit4.text>'' then begin
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where zd1 like '''+edit4.text+'%''';
      open;
    end;
  end;
  }
  zygx.locate('zd1',edit4.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
  end;
end;

procedure Tfrmscgx.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
  //if not zygx.Active then zygx.Open;
  if edit5.text>'' then begin
  with zygx do begin
    close;
    params.clear;
    commandtext:='select * from ie_zygx';
    open;
  end;
  {
  if edit5.text>'' then begin
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where zd2 like '''+edit5.text+'%''';
      open;
    end;
  end;
  }
  zygx.locate('zd2',edit5.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
  end;
end;

procedure Tfrmscgx.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
  //if not zygx.Active then zygx.Open;
  if edit6.text>'' then begin
  with zygx do begin
    close;
    params.clear;
    commandtext:='select * from ie_zygx';
    open;
  end;
  {
  if edit6.text>'' then begin
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where zd3 like '''+edit6.text+'%''';
      open;
    end;
  end;
  }
  zygx.locate('zd3',edit6.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
  end;
end;

procedure Tfrmscgx.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
  //if not zygx.Active then zygx.Open;
  if edit7.text>'' then begin
  with zygx do begin
    close;
    params.clear;
    commandtext:='select * from ie_zygx';
    open;
  end;
  {
  if edit7.text>'' then begin
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where zd4 like '''+edit7.text+'%''';
      open;
    end;
  end;
  }
  zygx.locate('zd4',edit7.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
  end;
end;

procedure Tfrmscgx.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
  //if not zygx.Active then zygx.Open;
  if edit8.text>'' then begin
  with zygx do begin
    close;
    params.clear;
    commandtext:='select * from ie_zygx';
    open;
  end;
  {
  if edit8.text>'' then begin
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where zd5 like '''+edit8.text+'%''';
      open;
    end;
  end;
  }
  zygx.locate('zd5',edit8.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
  end;
end;

procedure Tfrmscgx.Edit1Change(Sender: TObject);
begin
  //if not zygx.Active then zygx.Open;
  if edit1.text>'' then begin
  with zygx do begin
    close;
    params.clear;
    commandtext:='select * from ie_zygx';
    open;
  end;
  {
  if edit1.text>'' then begin
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where zd like '''+edit1.text+'%''';
      open;
    end;
  end;
  }
  zygx.locate('zd',edit1.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
end;

procedure Tfrmscgx.Edit2Change(Sender: TObject);
begin
  //if not zygx.Active then zygx.Open;
  if edit2.text>'' then begin
  with zygx do begin
    close;
    params.clear;
    commandtext:='select * from ie_zygx';
    open;
  end;
  {
  if edit2.text>'' then begin
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where kh like '''+edit2.text+'%''';
      open;
    end;
  end;
  }
  zygx.locate('kh',edit2.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
end;

procedure Tfrmscgx.Edit3Change(Sender: TObject);
begin
  //if not zygx.Active then zygx.Open;
  if edit3.text>'' then begin
  with zygx do begin
    close;
    params.clear;
    commandtext:='select * from ie_zygx';
    open;
  end;
  {
  if edit3.text>'' then begin
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where kh1 like '''+edit3.text+'%''';
      open;
    end;
  end;
  }
  zygx.locate('kh1',edit3.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
end;

procedure Tfrmscgx.Edit4Change(Sender: TObject);
begin
  //if not zygx.Active then zygx.Open;
  if edit4.text>'' then begin
  with zygx do begin
    close;
    params.clear;
    commandtext:='select * from ie_zygx';
    open;
  end;
  {
  if edit4.text>'' then begin
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where zd1 like '''+edit4.text+'%''';
      open;
    end;
  end;
  }
  zygx.locate('zd1',edit4.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
end;

procedure Tfrmscgx.Edit5Change(Sender: TObject);
begin
  //if not zygx.Active then zygx.Open;
  if edit5.text>'' then begin
  with zygx do begin
    close;
    params.clear;
    commandtext:='select * from ie_zygx';
    open;
  end;
  {
  if edit5.text>'' then begin
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where zd2 like '''+edit5.text+'%''';
      open;
    end;
  end;
  }
  zygx.locate('zd2',edit5.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
end;

procedure Tfrmscgx.Edit6Change(Sender: TObject);
begin
  //if not zygx.Active then zygx.Open;
  if edit6.text>'' then begin
  with zygx do begin
    close;
    params.clear;
    commandtext:='select * from ie_zygx';
    open;
  end;
  {
  if edit6.text>'' then begin
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where zd3 like '''+edit6.text+'%''';
      open;
    end;
  end;
  }
  zygx.locate('zd3',edit6.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
end;

procedure Tfrmscgx.Edit7Change(Sender: TObject);
begin
  //if not zygx.Active then zygx.Open;
  if edit7.text>'' then begin
  with zygx do begin
    close;
    params.clear;
    commandtext:='select * from ie_zygx';
    open;
  end;
  {
  if edit7.text>'' then begin
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where zd4 like '''+edit7.text+'%''';
      open;
    end;
  end;
  }
  zygx.locate('zd4',edit7.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
end;

procedure Tfrmscgx.Edit8Change(Sender: TObject);
begin
  //if not zygx.Active then zygx.Open;
  if edit8.text>'' then begin
  with zygx do begin
    close;
    params.clear;
    commandtext:='select * from ie_zygx';
    open;
  end;
  {
  if edit8.text>'' then begin
    with zygx do begin
      close;
      params.clear;
      commandtext:='select * from ie_zygx where zd5 like '''+edit8.text+'%''';
      open;
    end;
  end;
  }
  zygx.locate('zd5',edit8.text,[lopartialkey]);
  zygx.AfterScroll(nil);
  end;
end;

procedure Tfrmscgx.DataSource2StateChange(Sender: TObject);
begin
  if zygx1.state=dsbrowse then begin
    with query4 do begin
      close;
      params.clear;
      commandtext:='select sum(sj) as sah,count(*) as opts from ie_zygx1 where xz04=1 and seq='+zygx.fieldbyname('seq').asstring;
      open;
      if not fieldbyname('sah').isnull then begin
        //dbgrideh1.Columns[3].Footer.value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.columns[3].footers[0].value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.Columns[3].Footers[1].value:=fieldbyname('opts').asstring;
      end;
      close;
      params.clear;
      commandtext:='select sum(sj) as sah,count(*) as opts from ie_zygx1 where xz30=1 and seq='+zygx.fieldbyname('seq').asstring;
      open;
      if not fieldbyname('sah').isnull then begin
        //dbgrideh1.Columns[4].Footer.value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.columns[4].footers[0].value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.Columns[4].Footers[1].value:=fieldbyname('opts').asstring;
      end;
      close;
      params.clear;
      commandtext:='select sum(sj) as sah,count(*) as opts from ie_zygx1 where xz31=1 and seq='+zygx.fieldbyname('seq').asstring;
      open;
      if not fieldbyname('sah').isnull then begin
        //dbgrideh1.Columns[5].Footer.value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.columns[5].footers[0].value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.Columns[5].Footers[1].value:=fieldbyname('opts').asstring;
      end;
      close;
      params.clear;
      commandtext:='select sum(sj) as sah,count(*) as opts from ie_zygx1 where xz40=1 and seq='+zygx.fieldbyname('seq').asstring;
      open;
      if not fieldbyname('sah').isnull then begin
        //dbgrideh1.Columns[6].Footer.value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.columns[6].footers[0].value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.Columns[6].Footers[1].value:=fieldbyname('opts').asstring;
      end;
      close;
      params.clear;
      commandtext:='select sum(sj) as sah,count(*) as opts from ie_zygx1 where xz41=1 and seq='+zygx.fieldbyname('seq').asstring;
      open;
      if not fieldbyname('sah').isnull then begin
        //dbgrideh1.Columns[7].Footer.value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.columns[7].footers[0].value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.Columns[7].Footers[1].value:=fieldbyname('opts').asstring;
      end;
      close;
      params.clear;
      commandtext:='select sum(sj) as sah,count(*) as opts from ie_zygx1 where xz42=1 and seq='+zygx.fieldbyname('seq').asstring;
      open;
      if not fieldbyname('sah').isnull then begin
        //dbgrideh1.Columns[8].Footer.value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.columns[8].footers[0].value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.Columns[8].Footers[1].value:=fieldbyname('opts').asstring;
      end;
      close;
      params.clear;
      commandtext:='select sum(sj) as sah,count(*) as opts from ie_zygx1 where xz01=1 and seq='+zygx.fieldbyname('seq').asstring;
      open;
      if not fieldbyname('sah').isnull then begin
        //dbgrideh1.Columns[9].Footer.value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.columns[9].footers[0].value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.Columns[9].Footers[1].value:=fieldbyname('opts').asstring;
      end;
      close;
      params.clear;
      commandtext:='select sum(sj) as sah,count(*) as opts from ie_zygx1 where xz03=1 and seq='+zygx.fieldbyname('seq').asstring;
      open;
      if not fieldbyname('sah').isnull then begin
        //dbgrideh1.Columns[10].Footer.value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.columns[10].footers[0].value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.Columns[10].Footers[1].value:=fieldbyname('opts').asstring;
      end;
      close;
      params.clear;
      commandtext:='select sum(sj) as sah,count(*) as opts from ie_zygx1 where xz06=1 and seq='+zygx.fieldbyname('seq').asstring;
      open;
      if not fieldbyname('sah').isnull then begin
        //dbgrideh1.Columns[11].Footer.value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.columns[11].footers[0].value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.Columns[11].Footers[1].value:=fieldbyname('opts').asstring;
      end;
      close;
      params.clear;
      commandtext:='select sum(sj) as sah,count(*) as opts from ie_zygx1 where xz05=1 and seq='+zygx.fieldbyname('seq').asstring;
      open;
      if not fieldbyname('sah').isnull then begin
        //dbgrideh1.Columns[12].Footer.value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.columns[12].footers[0].value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.Columns[12].Footers[1].value:=fieldbyname('opts').asstring;
      end;
      close;
      params.clear;
      commandtext:='select sum(sj) as sah,count(*) as opts from ie_zygx1 where xz08=1 and seq='+zygx.fieldbyname('seq').asstring;
      open;
      if not fieldbyname('sah').isnull then begin
        //dbgrideh1.Columns[13].Footer.value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.columns[13].footers[0].value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.Columns[13].Footers[1].value:=fieldbyname('opts').asstring;
      end;
      close;
      params.clear;
      commandtext:='select sum(sj) as sah,count(*) as opts from ie_zygx1 where xz09=1 and seq='+zygx.fieldbyname('seq').asstring;
      open;
      if not fieldbyname('sah').isnull then begin
        //dbgrideh1.Columns[14].Footer.value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.columns[14].footers[0].value:=formatfloat('0.0000',fieldbyname('sah').value);
        dbgrideh1.Columns[14].Footers[1].value:=fieldbyname('opts').asstring;
      end;
    end;
  end;
end;

procedure Tfrmscgx.ExportBOO1Click(Sender: TObject);
begin
  try
  if savedialog1.execute then begin
    if ExptoExcel(DBGridEh1,'IEBOO','')=true then showmessage('OK');
  end;
  finally
  end;
end;

end.
