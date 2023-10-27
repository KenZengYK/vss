﻿unit worksheet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, rxToolEdit, Db, DBTables, Grids, DBGridEh, Buttons, Menus,
  DBClient, MConnect, SConnect, ComCtrls, ExtCtrls, DBCtrls, Spin, filectrl,
  Variants, shellapi, DateUtils,GridsEh, QExport4, QExport4XLS, ADODB, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxButtonEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxDropDownEdit, siComp, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxGridExportLink, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB,
  ppParameter, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppVar, ppViewr,
  cxCheckBox, cxCurrencyEdit, RzButton;

  function Calcdays(var year,month,day:word):integer;
  function ceiling(var double1:double):integer;
  function calcwkno(var dt1:tdatetime):integer;
  function calcdiffday(var dt1,dt2:tdatetime):integer;

type
  Tworksheet1 = class(TForm)
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    ClientDataSet1: TClientDataSet;
    tblshedule: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    N1: TMenuItem;
    N2: TMenuItem;
    ClientDataSet5: TClientDataSet;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel3: TPanel;
    GetTMU1: TMenuItem;
    BitBtn5: TBitBtn;
    DataSource2: TDataSource;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Label4: TLabel;
    ComboBox4: TComboBox;
    Query1: TClientDataSet;
    BitBtn10: TBitBtn;
    ClientDataSet4: TClientDataSet;
    Cancelx1: TMenuItem;
    Cancels1: TMenuItem;
    chk3: TCheckBox;
    chk4: TCheckBox;
    WIPTransit1: TMenuItem;
    Label14: TLabel;
    Edit8: TEdit;
    DataSet2: TADOQuery;
    GanttChart1: TMenuItem;
    BitBtn12: TBitBtn;
    cxGrid1: TcxGrid;
    cxView1: TcxGridDBBandedTableView;
    cxView1PLINE: TcxGridDBBandedColumn;
    cxView1FLAG1: TcxGridDBBandedColumn;
    cxView1J_NO: TcxGridDBBandedColumn;
    cxView1J2_JOB: TcxGridDBBandedColumn;
    cxView1CWO: TcxGridDBBandedColumn;
    cxView1RWO: TcxGridDBBandedColumn;
    cxView1FCCS: TcxGridDBBandedColumn;
    cxView1FLAG6: TcxGridDBBandedColumn;
    cxView1CSTYLE: TcxGridDBBandedColumn;
    cxView1JHRS: TcxGridDBBandedColumn;
    cxView1QTY: TcxGridDBBandedColumn;
    cxView1ACOL: TcxGridDBBandedColumn;
    cxView1FLAG4: TcxGridDBBandedColumn;
    cxView1SCQTY: TcxGridDBBandedColumn;
    cxView1LSTRS: TcxGridDBBandedColumn;
    cxView1SJRS: TcxGridDBBandedColumn;
    cxView1TRS: TcxGridDBBandedColumn;
    cxView1SJYC: TcxGridDBBandedColumn;
    cxView1TBU: TcxGridDBBandedColumn;
    cxView1FLAG2: TcxGridDBBandedColumn;
    cxView1TMU: TcxGridDBBandedColumn;
    cxView1JXJS: TcxGridDBBandedColumn;
    cxView1PHISZJS: TcxGridDBBandedColumn;
    cxView1LFLAG: TcxGridDBBandedColumn;
    cxView1FLAG7: TcxGridDBBandedColumn;
    cxView1SHJS: TcxGridDBBandedColumn;
    cxView1ZJS: TcxGridDBBandedColumn;
    cxView1PLAN_DATE: TcxGridDBBandedColumn;
    cxView1CPLAN: TcxGridDBBandedColumn;
    cxView1XC4: TcxGridDBBandedColumn;
    cxView1FYFS: TcxGridDBBandedColumn;
    cxView1UNBAL: TcxGridDBBandedColumn;
    cxView1XC1: TcxGridDBBandedColumn;
    cxView1WEEK: TcxGridDBBandedColumn;
    cxView1FLAG3: TcxGridDBBandedColumn;
    cxView1A_KSRQ1: TcxGridDBBandedColumn;
    cxView1A_KSJS1: TcxGridDBBandedColumn;
    cxView1ZKTD: TcxGridDBBandedColumn;
    cxView1SCLH_LH: TcxGridDBBandedColumn;
    cxView1QYJS: TcxGridDBBandedColumn;
    cxView1ZHJS: TcxGridDBBandedColumn;
    cxView1BCJS: TcxGridDBBandedColumn;
    cxView1A_AKSRQ: TcxGridDBBandedColumn;
    cxView1A_AWCRQ: TcxGridDBBandedColumn;
    cxView1NSHJS: TcxGridDBBandedColumn;
    cxView1KDJS: TcxGridDBBandedColumn;
    cxView1BZJS: TcxGridDBBandedColumn;
    cxView1TZLCRQ: TcxGridDBBandedColumn;
    cxView1YQLCRQ: TcxGridDBBandedColumn;
    cxView1RQXC: TcxGridDBBandedColumn;
    cxView1FLAG5: TcxGridDBBandedColumn;
    cxView1QRXC: TcxGridDBBandedColumn;
    cxView1XC2: TcxGridDBBandedColumn;
    cxView1XC3: TcxGridDBBandedColumn;
    cxView1YSJHL: TcxGridDBBandedColumn;
    cxView1JHL: TcxGridDBBandedColumn;
    cxView1YZH: TcxGridDBBandedColumn;
    cxView1PD8: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle4: TcxStyle;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle5: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxGridPopupMenu1: TcxGridPopupMenu;
    ExpandAll1: TMenuItem;
    CollapseAll1: TMenuItem;
    ClearSorting1: TMenuItem;
    N3: TMenuItem;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    StartTime1: TMenuItem;
    ExportGAIData1: TMenuItem;
    transitFlow1: TMenuItem;
    AllSewingQNs1: TMenuItem;
    cxView1KHZL1: TcxGridDBBandedColumn;
    PrintTicketforFJ1: TMenuItem;
    RecalculateQN1: TMenuItem;
    cxView1IECLS: TcxGridDBBandedColumn;
    cxView1IECLS1: TcxGridDBBandedColumn;
    ClassbySize1: TMenuItem;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    GroupBox2: TGroupBox;
    chk9: TCheckBox;
    chk10: TCheckBox;
    ROQuery1: TClientDataSet;
    UPDIEGRPandCLS1: TMenuItem;
    lbl850: TLabel;
    UpdateIEdataforQNGAI1: TMenuItem;
    tblshedulePLINE: TWideStringField;
    tblsheduleSEQ: TIntegerField;
    tblsheduleCFKSRQ: TDateField;
    tblsheduleCFKSJS: TFloatField;
    tblsheduleJ_NO: TWideStringField;
    tblsheduleJ2_JOB: TWideStringField;
    tblsheduleARTNO: TWideStringField;
    tblsheduleACOL: TWideStringField;
    tblsheduleWEEK: TIntegerField;
    tblshedulePLAN_DATE: TDateField;
    tblsheduleKHZL: TWideStringField;
    tblsheduleOKHRQ: TDateField;
    tblsheduleSCQTY: TIntegerField;
    tblsheduleTMU: TFloatField;
    tblsheduleTRS: TIntegerField;
    tblsheduleFYL: TFloatField;
    tblsheduleXJS: TIntegerField;
    tblsheduleJXJS: TFloatField;
    tblsheduleZJS: TFloatField;
    tblsheduleJHL: TFloatField;
    tblsheduleCFWCRQ: TDateField;
    tblsheduleYQLCRQ: TDateTimeField;
    tblsheduleSCTD: TIntegerField;
    tblshedulePHISZJS: TFloatField;
    tblsheduleZHJS: TFloatField;
    tblsheduleBCJS: TIntegerField;
    tblshedulePD4: TDateField;
    tblsheduleSCLHJS: TFloatField;
    tblsheduleZKTD: TFloatField;
    tblsheduleJHRS: TWideStringField;
    tblsheduleYSJHL: TFloatField;
    tblsheduleDBXL: TFloatField;
    tblshedulePD8: TDateField;
    tblsheduleBZJS: TIntegerField;
    tblsheduleTZLCRQ: TDateField;
    tblsheduleFLAG1: TWideStringField;
    tblsheduleFLAG2: TWideStringField;
    tblsheduleFLAG3: TWideStringField;
    tblsheduleFLAG4: TWideStringField;
    tblsheduleRQXC: TIntegerField;
    tblsheduleQRLCRQ: TDateField;
    tblsheduleKDJS: TIntegerField;
    tblsheduleWEEK1: TIntegerField;
    tblsheduleORDLINE: TIntegerField;
    tblsheduleFYFS: TWideStringField;
    tblsheduleCFWCJS: TFloatField;
    tblsheduleSOPNO: TWideStringField;
    tblsheduleFLAG5: TWideStringField;
    tblsheduleCKTS: TIntegerField;
    tblsheduleYZH: TBooleanField;
    tblsheduleXS: TIntegerField;
    tblsheduleTSHOP: TWideStringField;
    tblshedulePFLAG1: TWideStringField;
    tblsheduleCSTYLE: TWideStringField;
    tblsheduleDBZS: TWideStringField;
    tblsheduleFLAG6: TWideStringField;
    tblsheduleFCCS: TWideStringField;
    tblsheduleLSTRS: TFloatField;
    tblsheduleTPLANT: TWideStringField;
    tblsheduleSHJS: TFloatField;
    tblsheduleQYJS: TFloatField;
    tblshedulePLAN_W: TWideStringField;
    tblsheduleYQ_W: TWideStringField;
    tblsheduleTZ_W: TWideStringField;
    tblsheduleRWO: TWideStringField;
    tblsheduleRID: TIntegerField;
    tblsheduleHC: TIntegerField;
    tblsheduleLEARN: TFloatField;
    tblsheduleLFLAG: TWideStringField;
    tblsheduleNSHJS: TIntegerField;
    tblsheduleUNBAL: TFloatField;
    tblsheduleXC1: TIntegerField;
    tblsheduleXC2: TIntegerField;
    tblsheduleXC3: TIntegerField;
    tblsheduleSJRS: TFloatField;
    tblsheduleSJYC: TFloatField;
    tblsheduleCKJS: TFloatField;
    tblsheduleGRP: TWideStringField;
    tblsheduleRQXC1: TIntegerField;
    tblsheduleQTY: TIntegerField;
    tblsheduleTBU: TFloatField;
    tblsheduleCPLAN: TDateField;
    tblsheduleXC4: TIntegerField;
    tblsheduleLTC_D: TFloatField;
    tblsheduleLTC_R: TFloatField;
    tblsheduleLTC_A: TFloatField;
    tblsheduleLTC_RM: TWideStringField;
    tblsheduleLTC_KSRQ: TDateField;
    tblsheduleLTC_KSJS: TFloatField;
    tblsheduleDSQN: TWideStringField;
    tblsheduleFLAG7: TWideStringField;
    tblsheduleCWO: TWideStringField;
    tblsheduleIECLS: TWideStringField;
    tblsheduleIECLS1: TWideStringField;
    PLCnotcompleted1: TMenuItem;
    ExporttoExcel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    title001: TppLabel;
    ppShape1: TppShape;
    fty001: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
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
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    title002: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel1: TppLabel;
    ppLabel9: TppLabel;
    ppDBText17: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText18: TppDBText;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText19: TppDBText;
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
    lw001: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel22: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel23: TppLabel;
    ppDBText20: TppDBText;
    ppLine16: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine17: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    tblsheduleWL_JHDT: TDateField;
    tblsheduleWL_JHP: TFloatField;
    tblsheduleWL_WC: TBooleanField;
    tblsheduleWL_WCP: TFloatField;
    tblshedulePB_JHDT: TDateField;
    tblshedulePB_WC: TBooleanField;
    tblsheduleKHZL1: TBooleanField;
    ppLabel24: TppLabel;
    ppLine18: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    BitBtn13: TBitBtn;
    PforSC1: TMenuItem;
    tblsheduleAFLAG: TWideStringField;
    tblsheduleAWF: TFloatField;
    tblsheduleEWF: TFloatField;
    tblsheduleASAH: TFloatField;
    tblsheduleESAH: TFloatField;
    tblsheduleMANTBL: TIntegerField;
    tblsheduleGZW: TIntegerField;
    SampleChecking1: TMenuItem;
    WaitingforpackingwithoutPDN1: TMenuItem;
    chk12: TCheckBox;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    cxView1lbling: TcxGridDBBandedColumn;
    tblsheduleLBLING: TWideStringField;
    cxView1tshop: TcxGridDBBandedColumn;
    cxView1pfoptqty: TcxGridDBBandedColumn;
    cxView1sjrs_a: TcxGridDBBandedColumn;
    cxView1sjyc_a: TcxGridDBBandedColumn;
    cxView1yszjs: TcxGridDBBandedColumn;
    cxView1ct1: TcxGridDBBandedColumn;
    cxView1lockcfks: TcxGridDBBandedColumn;
    cxView1ct3: TcxGridDBBandedColumn;
    cxView1sclh_bs: TcxGridDBBandedColumn;
    cxView1ct2_1: TcxGridDBBandedColumn;
    cxView1ct2_2: TcxGridDBBandedColumn;
    tblsheduleYSZJS: TFloatField;
    tblsheduleSCLH_BS: TFloatField;
    cxView1at3_a: TcxGridDBBandedColumn;
    cxView1pdn_a: TcxGridDBBandedColumn;
    tblsheduleSCLH_LH: TFloatField;
    cxView1pfsah: TcxGridDBBandedColumn;
    cxView1asah: TcxGridDBBandedColumn;
    cxView1esah: TcxGridDBBandedColumn;
    cxView1pfxjs: TcxGridDBBandedColumn;
    cxView1alxjs: TcxGridDBBandedColumn;
    cxView1exjs: TcxGridDBBandedColumn;
    cxView1pfeff1: TcxGridDBBandedColumn;
    cxView1pfeff2: TcxGridDBBandedColumn;
    cxView1eeff1: TcxGridDBBandedColumn;
    cxView1eeff2: TcxGridDBBandedColumn;
    cxView1aloptqty: TcxGridDBBandedColumn;
    cxView1eoptqty: TcxGridDBBandedColumn;
    cxView1toptqty: TcxGridDBBandedColumn;
    cxView1pws: TcxGridDBBandedColumn;
    cxView1fws: TcxGridDBBandedColumn;
    cxView1ews: TcxGridDBBandedColumn;
    cxView1pzb: TcxGridDBBandedColumn;
    cxView1fzb: TcxGridDBBandedColumn;
    cxView1ezb: TcxGridDBBandedColumn;
    cxView1pfrs_a: TcxGridDBBandedColumn;
    cxView1pfrs_a1: TcxGridDBBandedColumn;
    cxView1pfrs: TcxGridDBBandedColumn;
    cxView1ewf: TcxGridDBBandedColumn;
    cxView1ers_a1: TcxGridDBBandedColumn;
    cxView1ers: TcxGridDBBandedColumn;
    cxView1ttlrs_a: TcxGridDBBandedColumn;
    cxView1ttlrs_a1: TcxGridDBBandedColumn;
    cxView1ttlrs: TcxGridDBBandedColumn;
    cxView1pfyc_a: TcxGridDBBandedColumn;
    cxView1pfyc_a1: TcxGridDBBandedColumn;
    cxView1pfyc: TcxGridDBBandedColumn;
    cxView1eyc_a: TcxGridDBBandedColumn;
    cxView1eyc_a1: TcxGridDBBandedColumn;
    cxView1eyc: TcxGridDBBandedColumn;
    cxView1ttlyc_a: TcxGridDBBandedColumn;
    cxView1ttlyc_a1: TcxGridDBBandedColumn;
    cxView1ttlyc: TcxGridDBBandedColumn;
    cxView1ysdx: TcxGridDBBandedColumn;
    cxView1ysxl: TcxGridDBBandedColumn;
    cxView1rjxl_a: TcxGridDBBandedColumn;
    cxView1rjxl: TcxGridDBBandedColumn;
    cxView1f_ksrq1: TcxGridDBBandedColumn;
    cxView1f_ksjs: TcxGridDBBandedColumn;
    cxView1e_wcrq1: TcxGridDBBandedColumn;
    cxView1e_awcjs: TcxGridDBBandedColumn;
    cxView1f_ksrq: TcxGridDBBandedColumn;
    cxView1f_wcrq: TcxGridDBBandedColumn;
    cxView1e_aksrq: TcxGridDBBandedColumn;
    cxView1e_awcrq: TcxGridDBBandedColumn;
    cxView1sclh_yb: TcxGridDBBandedColumn;
    cxView1sclh_wb: TcxGridDBBandedColumn;
    cxView1sclh_bb: TcxGridDBBandedColumn;
    cxView1sclh_xl: TcxGridDBBandedColumn;
    cxView1lockcfwc: TcxGridDBBandedColumn;
    tblsheduleSJRS_A: TFloatField;
    tblsheduleSJYC_A: TFloatField;
    tblsheduleLOCKCFKS: TBooleanField;
    tblsheduleCT1: TFloatField;
    tblsheduleCT3: TFloatField;
    tblsheduleCT2_1: TFloatField;
    tblsheduleCT2_2: TFloatField;
    tblsheduleAT3_A: TDateField;
    tblshedulePDN_A: TDateField;
    tblshedulePFSAH: TFloatField;
    tblshedulePFXJS: TFloatField;
    tblsheduleALXJS: TFloatField;
    tblsheduleEXJS: TFloatField;
    tblshedulePFEFF1: TFloatField;
    tblshedulePFEFF2: TFloatField;
    tblsheduleEEFF1: TFloatField;
    tblsheduleEEFF2: TFloatField;
    tblshedulePFOPTQTY: TIntegerField;
    tblsheduleALOPTQTY: TIntegerField;
    tblsheduleEOPTQTY: TIntegerField;
    tblsheduleTOPTQTY: TIntegerField;
    tblshedulePWS: TWideStringField;
    tblsheduleFWS: TWideStringField;
    tblsheduleEWS: TWideStringField;
    tblshedulePZB: TWideStringField;
    tblsheduleFZB: TWideStringField;
    tblsheduleEZB: TWideStringField;
    tblshedulePFRS_A: TFloatField;
    tblshedulePFRS_A1: TFloatField;
    tblshedulePFRS: TFloatField;
    tblsheduleERS_A1: TFloatField;
    tblsheduleERS: TFloatField;
    tblsheduleTTLRS_A: TFloatField;
    tblsheduleTTLRS_A1: TFloatField;
    tblsheduleTTLRS: TFloatField;
    tblshedulePFYC_A: TFloatField;
    tblshedulePFYC_A1: TFloatField;
    tblshedulePFYC: TFloatField;
    tblsheduleEYC_A: TFloatField;
    tblsheduleEYC_A1: TFloatField;
    tblsheduleEYC: TFloatField;
    tblsheduleTTLYC_A: TFloatField;
    tblsheduleTTLYC_A1: TFloatField;
    tblsheduleTTLYC: TFloatField;
    tblsheduleYSDX: TFloatField;
    tblsheduleYSXL: TFloatField;
    tblsheduleRJXL_A: TFloatField;
    tblsheduleRJXL: TFloatField;
    tblshedulePF_KSRQ: TDateField;
    tblshedulePF_KSJS: TFloatField;
    tblsheduleE_KSRQ: TDateField;
    tblsheduleE_KSJS: TFloatField;
    tblshedulePF_WCRQ: TDateField;
    tblshedulePF_WCJS: TFloatField;
    tblsheduleE_WCRQ: TDateField;
    tblsheduleE_WCJS: TFloatField;
    tblsheduleSCLH_YB: TFloatField;
    tblsheduleSCLH_WB: TFloatField;
    tblsheduleSCLH_BB: TFloatField;
    tblsheduleSCLH_XL: TFloatField;
    tblsheduleLOCKCFWC: TBooleanField;
    cxView1bzl: TcxGridDBBandedColumn;
    cxView1jjl: TcxGridDBBandedColumn;
    tblsheduleBZL: TFloatField;
    tblsheduleJJL: TFloatField;
    tblsheduleFLAG31P: TWideStringField;
    tblsheduleFLAG31A: TWideStringField;
    tblsheduleFLAG31E: TWideStringField;
    tblsheduleFLAG32P: TWideStringField;
    tblsheduleFLAG32A: TWideStringField;
    tblsheduleFLAG32E: TWideStringField;
    cxView1flag31p: TcxGridDBBandedColumn;
    cxView1flag31a: TcxGridDBBandedColumn;
    cxView1flag31e: TcxGridDBBandedColumn;
    cxView1flag32p: TcxGridDBBandedColumn;
    cxView1flag32a: TcxGridDBBandedColumn;
    cxView1flag32e: TcxGridDBBandedColumn;
    N4: TMenuItem;
    showhidecls11: TMenuItem;
    cxView1scqty1: TcxGridDBBandedColumn;
    cxView1piqty: TcxGridDBBandedColumn;
    cxView1pfqty: TcxGridDBBandedColumn;
    cxView1sqty1: TcxGridDBBandedColumn;
    cxView1sqty: TcxGridDBBandedColumn;
    cxView1bqty: TcxGridDBBandedColumn;
    cxView1bqty1: TcxGridDBBandedColumn;
    tblshedulePIQTY: TIntegerField;
    tblshedulePFQTY: TIntegerField;
    tblsheduleSQTY1: TIntegerField;
    tblsheduleSQTY: TIntegerField;
    tblsheduleBQTY: TIntegerField;
    tblsheduleBQTY1: TWideStringField;
    cxView1qnf: TcxGridDBBandedColumn;
    tblsheduleAL_WCRQ: TDateField;
    tblsheduleAL_WCJS: TFloatField;
    tblsheduleQNF: TWideStringField;
    tblsheduleFLAG401: TWideStringField;
    tblsheduleYQLCRQ1: TDateField;
    cxView1yqlcrq1: TcxGridDBBandedColumn;
    cxView1dta: TcxGridDBBandedColumn;
    tblsheduleDTA: TWideStringField;
    tblsheduleQRXC: TFloatField;
    tblsheduleDTA1: TWideStringField;
    cxView1dta1: TcxGridDBBandedColumn;
    GroupBox3: TGroupBox;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit1: TEdit;
    Edit5: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit7: TEdit;
    Edit3: TEdit;
    ComboBox5: TComboBox;
    GroupBox1: TGroupBox;
    chk5: TCheckBox;
    chk7: TCheckBox;
    chk1: TCheckBox;
    chk8: TCheckBox;
    chk6: TCheckBox;
    chk2: TCheckBox;
    chk11: TCheckBox;
    chk13: TCheckBox;
    Edit9: TEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    ComboBox6: TComboBox;
    Edit6: TComboBox;
    Edit4: TComboBox;
    Edit2: TComboBox;
    speedbutton1: TBitBtn;
    cxView1Column1: TcxGridDBBandedColumn;
    cxView1Column2: TcxGridDBBandedColumn;
    cxView1Column3: TcxGridDBBandedColumn;
    cxView1Column4: TcxGridDBBandedColumn;
    cxView1Column5: TcxGridDBBandedColumn;
    cxView1Column6: TcxGridDBBandedColumn;
    Label19: TLabel;
    ComboBox7: TComboBox;
    tblsheduleRSXC1: TFloatField;
    tblsheduleRSXC2: TFloatField;
    tblsheduleYCXC1: TFloatField;
    tblsheduleYCXC2: TFloatField;
    cxView1RSXC1: TcxGridDBBandedColumn;
    cxView1RSXC2: TcxGridDBBandedColumn;
    cxView1YCXC1: TcxGridDBBandedColumn;
    cxView1YCXC2: TcxGridDBBandedColumn;
    updateRAP41: TMenuItem;
    UpdateJKcolumns1: TMenuItem;
    CancelEs1: TMenuItem;
    CancelEx1: TMenuItem;
    ALE1: TMenuItem;
    N5: TMenuItem;
    QNGAI1: TMenuItem;
    CancelPFS1: TMenuItem;
    CancelPFX1: TMenuItem;
    N6: TMenuItem;
    tblshedulePRTWO: TBooleanField;
    QN1: TMenuItem;
    tblshedulepf_sb: TWideStringField;
    cxView1pf_sb: TcxGridDBBandedColumn;
    EnquiryWF1: TMenuItem;
    UpdateLB4n51: TMenuItem;
    siLang1: TsiLang;
    tblshedulePF_BQTY: TIntegerField;
    tblshedulePF_FQTY: TIntegerField;
    tblsheduleT2QTY: TIntegerField;
    tblsheduleLBL_PT: TWideStringField;
    tblsheduleLBL_PDT: TDateField;
    tblsheduleLBL_SDT: TDateField;
    tblsheduleLBL_DIFF: TIntegerField;
    tblsheduleLBL_ADT: TDateField;
    cxView1lbl_pdt: TcxGridDBBandedColumn;
    cxView1lbl_sdt: TcxGridDBBandedColumn;
    cxView1lbl_diff: TcxGridDBBandedColumn;
    cxView1lbl_adt: TcxGridDBBandedColumn;
    cxView1lflag1: TcxGridDBBandedColumn;
    cxView1flag71: TcxGridDBBandedColumn;
    cxView1dt3: TcxGridDBBandedColumn;
    cxView1at_q: TcxGridDBBandedColumn;
    cxView1at3_w: TcxGridDBBandedColumn;
    cxView1at3: TcxGridDBBandedColumn;
    cxView1t3_a: TcxGridDBBandedColumn;
    cxView1bat3: TcxGridDBBandedColumn;
    cxView1bt3: TcxGridDBBandedColumn;
    cxView1fcl_a1: TcxGridDBBandedColumn;
    cxView1fcl_a2: TcxGridDBBandedColumn;
    cxView1pdn_x: TcxGridDBBandedColumn;
    chk_exit: TCheckBox;
    tblsheduleDT3: TDateField;
    tblsheduleAT_A: TWideStringField;
    tblsheduleAT3_W: TIntegerField;
    tblsheduleAT3: TDateField;
    tblsheduleT3_A: TWideStringField;
    tblsheduleBAT3: TIntegerField;
    tblsheduleBT3: TIntegerField;
    tblsheduleFCL_A1: TWideStringField;
    tblsheduleFCL_A2: TIntegerField;
    tblshedulePDN_X: TWideStringField;
    cxView1b_flag31: TcxGridDBBandedColumn;
    cxView1b_ksrq1: TcxGridDBBandedColumn;
    cxView1b_ksjs: TcxGridDBBandedColumn;
    cxView1b_ksrq: TcxGridDBBandedColumn;
    cxView1b_wcrq: TcxGridDBBandedColumn;
    showFinishedcolumns1: TMenuItem;
    RefreshdatafromCOPlog1: TMenuItem;
    cxView1Column12: TcxGridDBBandedColumn;
    cxView1A_WCRQ1: TcxGridDBBandedColumn;
    cxView1A_AKSJS: TcxGridDBBandedColumn;
    cxView1A_AWCJS: TcxGridDBBandedColumn;
    cxView1e_wcjs1: TcxGridDBBandedColumn;
    tblsheduleB_KSRQ1: TDateField;
    tblsheduleB_FLAG31: TWideStringField;
    tblsheduleB_KSRQ: TDateField;
    tblsheduleB_KSJS: TFloatField;
    tblsheduleB_WCRQ: TDateField;
    tblsheduleF_KSRQ1: TDateField;
    tblsheduleF_KSRQ: TDateField;
    tblsheduleF_KSJS: TFloatField;
    tblsheduleF_WCRQ: TDateField;
    tblsheduleA_KSWK: TIntegerField;
    tblsheduleA_KSRQ1: TDateField;
    tblsheduleA_KSJS1: TFloatField;
    tblsheduleA_WCRQ1: TDateField;
    tblsheduleA_AKSRQ: TDateField;
    tblsheduleA_AKSJS: TFloatField;
    tblsheduleA_AWCRQ: TDateField;
    tblsheduleA_AWCJS: TFloatField;
    tblsheduleE_WCRQ1: TDateField;
    tblsheduleE_WCJS1: TFloatField;
    tblsheduleE_AKSRQ: TDateField;
    tblsheduleE_AWCRQ: TDateField;
    tblsheduleE_AWCJS: TFloatField;
    cxView1Column7: TcxGridDBBandedColumn;
    cxView1Column8: TcxGridDBBandedColumn;
    cxView1Column9: TcxGridDBBandedColumn;
    cxView1Column10: TcxGridDBBandedColumn;
    cxView1Column11: TcxGridDBBandedColumn;
    cxView1Column13: TcxGridDBBandedColumn;
    cxView1Column14: TcxGridDBBandedColumn;
    cxView1Column15: TcxGridDBBandedColumn;
    cxView1Column16: TcxGridDBBandedColumn;
    cxView1Column17: TcxGridDBBandedColumn;
    cxView1Column18: TcxGridDBBandedColumn;
    cxView1Column19: TcxGridDBBandedColumn;
    cxView1Column20: TcxGridDBBandedColumn;
    cxView1Column21: TcxGridDBBandedColumn;
    cxView1Column22: TcxGridDBBandedColumn;
    tblsheduleI_NO: TIntegerField;
    tblsheduleITEM_NO: TWideStringField;
    tblsheduleITEM_LDT: TDateField;
    tblsheduleITEM_RDT: TDateField;
    tblsheduleITEM_ADT: TDateField;
    tblsheduleITEM_LDIFF: TIntegerField;
    tblsheduleITEM_VDIFF: TIntegerField;
    tblsheduleA_LDT: TDateField;
    tblsheduleE_FLAG31: TWideStringField;
    tblsheduleITEM_EDIFF: TIntegerField;
    tblsheduleLAST_TTL: TIntegerField;
    tblsheduleITEM_FM: TWideStringField;
    tblsheduleITEM_DT: TDateField;
    tblsheduleSAH_TTL: TFloatField;
    tblsheduleSAH_TTLW: TIntegerField;
    tblsheduleSAH_TTLQ: TFloatField;
    tblsheduleSAH_B: TFloatField;
    tblsheduleSAH_BW: TIntegerField;
    tblsheduleSAH_BQ: TFloatField;
    cxView1Column23: TcxGridDBBandedColumn;
    cxView1Column24: TcxGridDBBandedColumn;
    tblsheduleDIFF_LBL: TWideStringField;
    tblsheduleDEST_QTY: TIntegerField;
    tblsheduleLOCK_DT: TDateField;
    tblsheduleLOCK_GAP: TIntegerField;
    BitBtn6: TBitBtn;
    cxView1Column25: TcxGridDBBandedColumn;
    BitBtn9: TBitBtn;
    AccessSampleQty1: TMenuItem;
    tblsheduleDIFF_M: TIntegerField;
    tblsheduleDIFF_S: TIntegerField;
    tblsheduleEX_AP: TIntegerField;
    cxView1diff_m: TcxGridDBBandedColumn;
    cxView1diff_s: TcxGridDBBandedColumn;
    Printticketforbulksample1: TMenuItem;
    chk14: TCheckBox;
    memo2: TMemo;
    tblsheduleIECLS_N: TWideStringField;
    cxgrdbndclmniecls_n: TcxGridDBBandedColumn;
    chk15: TCheckBox;
    cxgrdbndclmnView1Column26: TcxGridDBBandedColumn;
    cxgrdbndclmnView1Column27: TcxGridDBBandedColumn;
    cxgrdbndclmnView1Column28: TcxGridDBBandedColumn;
    tblsheduleDIFF_PAK: TWideStringField;
    tblsheduleDIFF_REG: TWideStringField;
    tblsheduleDIFF_DDT: TIntegerField;
    cxGrid1View1Column26: TcxGridDBBandedColumn;
    BitBtn11: TBitBtn;
    cxGrid1View1Column27: TcxGridDBBandedColumn;
    pm1: TPopupMenu;
    ERPWO1: TMenuItem;
    CopWO1: TMenuItem;
    LineWO1: TMenuItem;
    tblshedulefw_wdn: TIntegerField;
    cxView1fw_wdn: TcxGridDBBandedColumn;
    tblsheduleWL_F: TWideStringField;
    tblsheduleSP_F: TWideStringField;
    tblsheduleSP_ST: TWideStringField;
    cxGrid1View1Column29: TcxGridDBBandedColumn;
    cxGrid1View1Column30: TcxGridDBBandedColumn;
    cxGrid1View1Column31: TcxGridDBBandedColumn;
    tblsheduleCWONO1: TWideStringField;
    tblsheduleLINE_SEQ: TWideStringField;
    cxView1Column26: TcxGridDBBandedColumn;
    cxStyle8: TcxStyle;
    tblsheduleLK_S1: TFloatField;
    tblsheduleB_S1: TFloatField;
    tblsheduleF_S1: TFloatField;
    tblsheduleE_S1: TFloatField;
    tblsheduleTTL_S1: TFloatField;
    tblsheduleTTL_S2: TFloatField;
    chk16: TCheckBox;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    tblsheduleCWO_N: TWideStringField;
    chk17: TCheckBox;
    N915GAI1: TMenuItem;
    ransitSummary1: TMenuItem;
    FixQN1: TMenuItem;
    FixQNGAIdd1: TMenuItem;
    tblsheduleSHPT_BAL: TIntegerField;
    cxView1Column27: TcxGridDBBandedColumn;
    cxView1Column28: TcxGridDBBandedColumn;
    cxView1Column29: TcxGridDBBandedColumn;
    cxView1Column30: TcxGridDBBandedColumn;
    tblsheduleSHPT_B1: TIntegerField;
    tblsheduleSHPT_B2: TIntegerField;
    tblsheduleSHPT_BP: TFloatField;
    cxView1LTC_RM: TcxGridDBBandedColumn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure tblsheduleTmuChange(Sender: TField);
    procedure tblsheduleAfterPost(DataSet: TDataSet);
    procedure tblsheduleFlag5Change(Sender: TField);
    procedure tblsheduleFlag3Change(Sender: TField);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure tblsheduleCfksrqChange(Sender: TField);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ClientDataSet1ReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ExecCalc(var pline: String; var seq: Integer);
    procedure tblsheduleAfterOpen(DataSet: TDataSet);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure tblsheduleLFLAGChange(Sender: TField);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure ComboBox3Enter(Sender: TObject);
    procedure ComboBox4Enter(Sender: TObject);
    procedure DBGridEh1Columns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns26EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns8EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1ColumnsFLAG3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns20EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure chk2Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Cancelx1Click(Sender: TObject);
    procedure Cancels1Click(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure tblsheduleYzhChange(Sender: TField);
    procedure DBGridEh1Columns30EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure chk4Click(Sender: TObject);
    procedure WIPTransit1Click(Sender: TObject);
    procedure chk5Click(Sender: TObject);
    procedure chk6Click(Sender: TObject);
    procedure tblsheduleBeforeEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure GanttChart1Click(Sender: TObject);
    procedure cxView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxView1CSTYLEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxView1ACOLPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxView1SCQTYPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxView1SJRSPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxView1TMUPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxView1CPLANPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxView1FLAG3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxView1J2_JOBPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ExpandAll1Click(Sender: TObject);
    procedure CollapseAll1Click(Sender: TObject);
    procedure ClearSorting1Click(Sender: TObject);
    procedure StartTime1Click(Sender: TObject);
    procedure cxView1QRXCPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ExportGAIData1Click(Sender: TObject);
    procedure transitFlow1Click(Sender: TObject);
    procedure AllSewingQNs1Click(Sender: TObject);
    procedure cxView1RWOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxView1FCCSPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure PrintTicketforFJ1Click(Sender: TObject);
    procedure RecalculateQN1Click(Sender: TObject);
    procedure cxView1IECLS1GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure ClassbySize1Click(Sender: TObject);
    procedure tblsheduleIECLSChange(Sender: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure chk7Click(Sender: TObject);
    procedure chk8Click(Sender: TObject);
    procedure chk9Click(Sender: TObject);
    procedure chk10Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure UPDIEGRPandCLS1Click(Sender: TObject);
    procedure UpdateIEdataforQNGAI1Click(Sender: TObject);
    procedure PLCnotcompleted1Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure cxView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BitBtn13Click(Sender: TObject);
    procedure PforSC1Click(Sender: TObject);
    procedure SampleChecking1Click(Sender: TObject);
    procedure chk11Click(Sender: TObject);
    procedure WaitingforpackingwithoutPDN1Click(Sender: TObject);
    procedure chk12Click(Sender: TObject);
    procedure cxView1CustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure ComboBox5Enter(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Panel2DblClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure tblsheduleLOCKCFKSChange(Sender: TField);
    procedure showhidecls11Click(Sender: TObject);
    procedure cxView1Bands88HeaderClick(Sender: TObject);
    procedure chk13Click(Sender: TObject);
    procedure cxView1flag31pPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxView1flag31ePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tblsheduleYQLCRQ1Change(Sender: TField);
    procedure cxView1Bands84HeaderClick(Sender: TObject);
    procedure cxView1Bands86HeaderClick(Sender: TObject);
    procedure cxView1Bands89HeaderClick(Sender: TObject);
    procedure cxView1Bands139HeaderClick(Sender: TObject);
    procedure cxView1Bands163HeaderClick(Sender: TObject);
    procedure cxView1Bands144HeaderClick(Sender: TObject);
    procedure cxView1Bands34HeaderClick(Sender: TObject);
    procedure cxView1Bands99HeaderClick(Sender: TObject);
    procedure cxView1Bands20HeaderClick(Sender: TObject);
    procedure cxView1dtaGetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure ExporttoExcel1Click(Sender: TObject);
    procedure updateRAP41Click(Sender: TObject);
    procedure UpdateJKcolumns1Click(Sender: TObject);
    procedure CancelEx1Click(Sender: TObject);
    procedure CancelEs1Click(Sender: TObject);
    procedure ALE1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure QNGAI1Click(Sender: TObject);
    procedure CancelPFS1Click(Sender: TObject);
    procedure CancelPFX1Click(Sender: TObject);
    procedure QN1Click(Sender: TObject);
    procedure EnquiryWF1Click(Sender: TObject);
    procedure UpdateLB4n51Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure cxView1Bands1HeaderClick(Sender: TObject);
    procedure showFinishedcolumns1Click(Sender: TObject);
    procedure cxView1DataControllerFilterChanged(Sender: TObject);
    procedure RefreshdatafromCOPlog1Click(Sender: TObject);
    procedure cxView1Column7PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tblsheduleITEM_LDTChange(Sender: TField);
    procedure cxView1Column8PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxView1Bands267HeaderClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure cxView1Column25PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BitBtn9Click(Sender: TObject);
    procedure AccessSampleQty1Click(Sender: TObject);
    procedure cxView1eycPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Printticketforbulksample1Click(Sender: TObject);
    procedure chk14Click(Sender: TObject);
    procedure chk15Click(Sender: TObject);
    procedure tblsheduleCalcFields(DataSet: TDataSet);
    procedure BitBtn12Click(Sender: TObject);
    procedure ERPWO1Click(Sender: TObject);
    procedure CopWO1Click(Sender: TObject);
    procedure LineWO1Click(Sender: TObject);
    procedure cxView1Bands105HeaderClick(Sender: TObject);
    procedure chk16Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure chk17Click(Sender: TObject);
    procedure N915GAI1Click(Sender: TObject);
    procedure FixQN1Click(Sender: TObject);
    procedure FixQNGAIdd1Click(Sender: TObject);
    procedure cxView1StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure cxView1LTC_RMPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxView1Column23PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure printweeklysewingdata1;
    procedure calc_somettl;
    function cvtcwono(sf: string): string;
  end;

var
  worksheet1: Tworksheet1;
  flag1:boolean;
  flflag:string;
  xglflag:string;
  logseq:integer;
  ARedStyle: TcxStyle;
  AGreenStyle: TcxStyle;
  ABlackStyle: TcxStyle;
  FontRedStyle: TCxStyle;
  FontBoldRedStyle: TCxStyle;

implementation

uses mainformu, printschedule1u, loginu, memformu, memform1u, prejhlu,
  planprintu, matchform, chartu, kdfxu, tblmemu, tblmem1u, scbbformu,
  zktdformu, sublineformu, printscheduleu, printform2u, rsycformu,
  lastorderformu, noteformu, styleimageformu, lwoformu, currstartformu,
  lwstartformu, flagformu, cpreportformu, colimgformu, sellwsformu,
  currcalformu, scgxdyu, trsummaryformu, mcalformu, cstylegrpformu,
  rwotransformu, wipprintformu, printform5u,
  setbeginendformu, rwoftystartdateformu, exportgaiformu,
  transit_tempformu, printfjticketformu, ieclassformu, QNPIIformu,
  approvalprocessingformu, wl_pbformu, weeklysewindataformu, tp4scformu,
  rwosampleqtyformu, waitingforpackingformu, lockcfksformu, sewflow1formu,
  enquiry_wfformu, qnqty_detailformu, SAH_P2formu, Specmatformu,
  Specmat_conductformu, Capacitygapformu, lockedqnformu, sampleqtyformu,
  Prdprogressformu, EWsGAIFormu, achievingformu, sT3_Reasonformu, ItemstgFormu;
  
{$R *.DFM}

procedure Tworksheet1.SampleChecking1Click(Sender: TObject);
begin
  //
  if frmrwosampleqty=nil then frmrwosampleqty:=tfrmrwosampleqty.create(nil);
  frmrwosampleqty.show;
end;

procedure Tworksheet1.showFinishedcolumns1Click(Sender: TObject);
begin
  if cxview1.bands[41].visible=false then
    cxview1.bands[41].visible:=true
  else cxview1.bands[41].visible:=false;
end;

procedure Tworksheet1.showhidecls11Click(Sender: TObject);
begin
  if cxview1iecls1.visible=false then cxview1iecls1.visible:=true
  else cxview1iecls1.visible:=false;
end;

procedure Tworksheet1.SpeedButton1Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant,r_ppw:string;
  si:integer;
begin
  if chk_exit.checked then speedbutton4click(self)
  else begin
  screen.cursor:=crSQLWait;
  try
    try
    if edit6.text>'' then begin

      if chk11.checked then begin
        cxview1.bands[292].visible:=true;
        cxview1.bands[287].visible:=false;
      end else begin
        cxview1.bands[292].visible:=false;
        cxview1.bands[287].visible:=true;
      end;

    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select r_cls1,r_ppw from tbluser where usr='''+frmmain.combobox1.text+'''';
      open;
      if fieldbyname('r_cls1').value=true then begin
        //cxview1.bands[12].width:=66;
        cxview1.bands[15].visible:=true;
        cxview1iecls.options.editing:=true;
        cxview1iecls1.visible:=true;
        //cxview1dta.options.editing:=true;
      end else begin
        //cxview1.bands[12].width:=33;
        cxview1.bands[15].visible:=false;
        cxview1iecls.options.editing:=false;
        cxview1iecls1.visible:=false;
        //cxview1dta.options.editing:=false;
      end;
      if not fieldbyname('r_ppw').isnull then begin
        if fieldbyname('r_ppw').value=true then r_ppw:='1' else r_ppw:='0';
      end else r_ppw:='0';
    end;
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='execute procedure sp_calcflag4_fty(:x1,:x2,:x3)';
      if (edit6.text>'') and (edit6.text<>'CN') and (edit6.text<>'ALL') and (edit6.text<>'GX') then
      params[0].asstring:=edit6.text
      else params[0].asstring:='';
      params[1].asstring:=edit4.text;
      params[2].asstring:=edit2.text;
      execute;
    end;
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_lwpm_updpb';
      execute;
    end;

    if chk6.Checked then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_multqns_enddt(:x1)';
        params[0].asstring:=edit6.text;
        execute;
      end;
    end;

    //if cxView1.SortedItemCount>0 then
    for si:=0 to cxView1.SortedItemCount-1 do begin
      cxView1.SortedItems[si].SortOrder:=soNone;
    end;

    if tblshedule.state=dsedit then tblshedule.post;
    cust:=edit1.text;
    pline:=edit2.text;
    tshop:=edit4.text;
    cstyle:=edit5.text;
    tplant:=edit6.text;

    with tblshedule do begin
      close;
      params.clear;
      if chk7.Checked then params.createparam(ftdate,'x1',ptinput);
      commandtext:='select * from tblshedule where 1=1';//yzh=0';
      if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
      if cust>'' then commandtext:=commandtext+' and j_no='''+cust+'''';
      if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
      if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
      if tplant>'' then begin
        if tplant<>'ALL' then begin
          if tplant<>'CN' then begin
            if tplant<>'GX' then
            commandtext:=commandtext+' and tplant='''+tplant+''''
            else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
          end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
        end;
      end;
      if r_ppw='0' then commandtext:=commandtext+' and tshop<>''PPW''';
      if combobox1.text>'' then commandtext:=commandtext+' and grp='''+combobox1.text+'''';
      if edit7.text>'' then commandtext:=commandtext+' and j_no like '''+edit7.text+'%''';
      if combobox2.text>'' then commandtext:=commandtext+' and flag6 like '''+combobox2.text+'%''';
      if combobox3.text>'' then commandtext:=commandtext+' and flag6='''+combobox3.text+'''';
      if combobox4.text>'' then commandtext:=commandtext+' and dbzs='''+combobox4.text+'''';
      if edit3.text>'' then commandtext:=commandtext+' and acol='''+edit3.text+'''';
      if edit9.text>'' then commandtext:=commandtext+' and j2_job='''+edit9.text+'''';
      if combobox5.text>'' then commandtext:=commandtext+' and flag2='''+combobox5.text+'''';
      if chk1.Checked then commandtext:=commandtext+' and ((substr(lflag,1,1) in (''!''))) and (substr(pline,1,2) not in (''SG'',''PS'',''NSS'',''RSS'',''SB'')) '
                                       +'and ((fccs not like ''%u%'') and (fccs not like ''%d%'') and (fccs not like ''%D%''))';
      if chk2.Checked then commandtext:=commandtext+' and ((fccs like ''%u%'') or (fccs like ''%d%'') or (fccs like ''%D%''))';
      if chk7.Checked then commandtext:=commandtext+' and flag4 in (''a'') and tshop not in (''NSB'',''RSB'',''PPW'',''SLSIM'',''RXSIM'',''GGSIM'',''CLSIM'') and cfksrq>:x1';//+formatdatetime('yyyy-MM-dd',date+20);
      if chk13.Checked then commandtext:=commandtext+' and flag4 in (''A'') and tshop not in (''NSB'',''RSB'',''PPW'',''SLSIM'',''RXSIM'',''GGSIM'',''CLSIM'')';//+formatdatetime('yyyy-MM-dd',date+20);
      if chk8.Checked then commandtext:=commandtext+' and yzh=1';
      if chk_exit.checked then commandtext:=commandtext+' and yzh=1' else commandtext:=commandtext+' and yzh=0';
      if chk5.Checked then commandtext:=commandtext+' and (pline like ''%OS%'')';
      if chk6.Checked then commandtext:=commandtext+' and flag3 like ''%s%'' and flag3<>''1s'' and substr(qnf,1,1)=''m''';
      if edit8.text>'' then commandtext:=commandtext+' and upper(jhrs) like '''+edit8.text+'%''';
      if (chk1.Checked or chk2.Checked or chk4.Checked) then commandtext:=commandtext+' and pline not in (''T056F'',''T057F'')';
      if dateedit1.date>0 then commandtext:=commandtext+' and cfwcrq>='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+'''';
      if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<='''+formatdatetime('yyyy-MM-dd',dateedit2.date)+'''';
      if combobox6.text>'' then commandtext:=commandtext+' and flag1='''+combobox6.text+'''';
      //if chk11.checked then commandtext:=commandtext+' and ((rqxc<qrxc and rqxc<0) or (rqxc>qrxc and rqxc>0 and ((rqxc>=15 and qrxc<=0) or (qrxc>0)))) and pline like ''T%''';
      if chk11.checked then commandtext:=commandtext+' and ((rqxc<0/* and bt3<0*/) or (/*bt3>15 and */rqxc>30)) and pline like ''T%''';
      if chk16.checked then commandtext:=commandtext+' and ((bt3<0) or (bt3>21)) and pline like ''T%''';
      if chk14.checked then commandtext:=commandtext+' and ((diff_m<9) or (diff_s<6)) and pline like ''T%''';
      if combobox7.text>'' then commandtext:=commandtext+' and qrxc'+combobox7.text;
      if chk15.Checked then commandtext:=commandtext+' and ((fccs not like ''%1/1%'') and (fccs not like ''%u%'') and (fccs not like ''%d%''))';
      if chk17.Checked then commandtext:=commandtext+' and ((pline like ''%SIM%'') or (pline like ''%RSP%''))';
      if chk7.Checked then params[0].asdate:=date;
      open;
    end;
    end else showmessage('Please choose factory!');
    except
      screen.cursor:=crdefault;
    end;
  finally
    screen.cursor:=crdefault;
  end;
  end;
end;

procedure Tworksheet1.BitBtn2Click(Sender: TObject);
begin
  if tblshedule.state=dsedit then tblshedule.post;
end;

procedure Tworksheet1.BitBtn4Click(Sender: TObject);
var
  str1,str2,str3,str4,str5,str00:string;
  dt1:tdatetime;
begin
  screen.cursor:=crhourglass;
  dt1:=date;
    str1:=' order by a.pline,a.seq,a.j_no,a.j2_job,a.artno,a.acol';
    str1:=' order by hc';
    with ROQuery1 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_updweekday';
      execute;
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftdate,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='execute procedure sp_genzzz(:x1,:x2,:x3,:x4)';
      params[0].asstring:=edit2.text;
      params[1].asstring:=edit6.text;
      params[2].asdate:=dt1;
      params[3].asstring:=edit4.text;
      execute;
    end;
      with ROQuery1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='execute procedure sp_updhc(:x1)';
        params[0].asstring:='1';
        execute;
      end;
      with clientdataset1 do begin
        close;
        params.clear;
        //commandtext:='select distinct a.*,substr(a.j_no,1,4) as cust,b.qty from tempshedule1 a,tbl_ERPSOP1 b where a.j_no=b.J_no and a.ORDLINE=B.ORDLINE and yzh=0 and b.qty>0'+str1;
        commandtext:='select distinct a.*,substr(a.j_no,1,4) as cust from tempshedule1 a where yzh=0'+str1;
        open;
      end;
    if Edit6.text>'' then str2:=' / '+Edit6.text else str2:='';

    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='select count(distinct cstyle) as cnt1,count(distinct pline) as cnt2,'
                  +'count(distinct substr(j_no,1,4)) as cnt3,count(distinct j_no) as cnt4 from tempshedule1 where yzh=0';
      open;
      if not fieldbyname('cnt1').isnull then str3:='Ttl # of styles: '+fieldbyname('cnt1').asstring
      else str3:='';
      if not fieldbyname('cnt2').isnull then str4:='Ttl # of lines: '+fieldbyname('cnt2').asstring
      else str4:='';
      if not fieldbyname('cnt3').isnull then str5:='Ttl # of customers: '+fieldbyname('cnt3').asstring+'      Ttl # of projects: '+fieldbyname('cnt4').asstring
      else str5:='';
    end;

    str00:='';

    if frmprint2=nil then frmprint2:=tfrmprint2.create(nil);
    frmprint2.wks003.Caption:=edit4.text;
    frmprint2.ppBDEPipeline1.DataSource:=datasource2;
    frmprint2.project1.text:=uppercase(edit1.text);
    frmprint2.pline.text:=edit2.text;
    frmprint2.artno2.Caption:='Cust Style';
    frmprint2.artno1.DataField:='cstyle';
    frmprint2.xdhq.Visible:=true;
    frmprint2.xdhq.Caption:=str00+'(Line Work Start Date'+str2+')';
    frmprint2.pttl1.Caption:=str4;
    frmprint2.pttl2.Caption:=str3;
    frmprint2.pttl3.Caption:=str5;
    frmprint2.ppreport1.print;
  //end;
  screen.Cursor:=crDefault;
end;

procedure Tworksheet1.BitBtn3Click(Sender: TObject);
var
  pline,cust,styleno,tshop,cstyle,tplant:string;
  tm:tdatetime;
  str1,wk,wk1:string;
  y1,y2,wday:integer;
begin
  screen.cursor:=crhourglass;
  if tblshedule.active=true then begin
    if tblshedule.fieldbyname('pline').isnull then showmessage('No any outstanding record!') else begin
    wk:='1'; wk1:='2';
    if (dateedit1.Date>0) and (dateedit2.Date>0) then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.CreateParam(ftdate,'x1',ptinput);
        commandtext:='select wkno from tplant_wk52 where tplant=''SL'' and opt_c=1 and date1=:x1';
        params[0].AsDate:=dateedit1.Date;
        open;
        wk:=fieldbyname('wkno').asstring;
        open;
      end;
      with clientdataset2 do begin
        close;
        params.clear;
        params.CreateParam(ftdate,'x1',ptinput);
        commandtext:='select wkno from tplant_wk52 where tplant=''SL'' and opt_c=1 and date1=:x1';
        params[0].AsDate:=dateedit2.Date;
        open;
        wk1:=fieldbyname('wkno').asstring;
      end;
    end;
    if wk<>wk1 then begin
      if yearof(dateedit1.Date)<>yearof(dateedit2.date) then begin
        if trunc(dateedit2.date)-trunc(dateedit1.date)<=6 then wk1:=wk;
      end;
    end;
    if wk=wk1 then begin
      if frmweeklysewingdata=nil then frmweeklysewingdata:=tfrmweeklysewingdata.create(nil);
      frmweeklysewingdata.label1.caption:='週 '+wk;
      frmweeklysewingdata.Caption:='週 '+wk+' 縫合生產之計劃和執控表';
      frmweeklysewingdata.xh1.Caption:='週 '+wk+' 縫合生產之計劃和執控表';
      frmweeklysewingdata.xh2.Caption:='附件1: 週 '+wk+' 縫合生產之計劃和執控表 - 數頁縫合數據明細表';
      frmweeklysewingdata.xh3.Caption:='附件2: 週 '+wk+' 縫合生產之計劃和執控表 - 時間元素明細表';
      frmweeklysewingdata.xh4.Caption:='附件3: 週 '+wk+' 縫合生產之計劃和執控表 - 數頁勞動力和衣車數據明細表';
      if dateedit2.date<date then frmweeklysewingdata.chk2.caption:='實積'
      else frmweeklysewingdata.chk2.caption:='現況';
      frmweeklysewingdata.show;
    end else begin
      tm:=now;
      if tblshedule.state=dsedit then tblshedule.post;
      if tblshedule.recordcount>0 then begin
        if chk2.Checked then begin
          with clientdataset2 do begin
            close;
            params.clear;
            commandtext:='delete from tblshedule_plc where tm<current_timestamp-0.5';
            execute;
          end;
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='insert into tblshedule_plc select a.*,''0'',:x1 from tblshedule a where yzh=0 and ((fccs like ''%u'') or (fccs like ''%d%'') or (fccs like ''%D'')) and pline not in (''T056F'',''T057F'')';
            if edit2.text>'' then commandtext:=commandtext+' and upper(pline)='''+edit2.text+'''';
            if edit1.text>'' then commandtext:=commandtext+' and j_no='''+edit1.text+'''';
            if edit4.text>'' then commandtext:=commandtext+' and (tshop like '''+edit4.text+'%'')';
            if edit5.text>'' then commandtext:=commandtext+' and (cstyle like '''+edit5.text+'%'')';
            if edit6.text>'' then begin
              if edit6.text<>'ALL' then begin
                if edit6.text<>'CN' then begin
                  if edit6.text<>'GX' then
                    commandtext:=commandtext+' and tplant='''+edit6.text+''''
                  else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
                end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
              end;
            end;
            if combobox1.text>'' then commandtext:=commandtext+' and grp='''+combobox1.text+'''';
            if edit7.text>'' then commandtext:=commandtext+' and j_no like '''+edit7.text+'%''';
            if combobox2.text>'' then commandtext:=commandtext+' and flag6 like '''+combobox2.text+'%''';
            if combobox3.text>'' then commandtext:=commandtext+' and flag6='''+combobox3.text+'''';
            if combobox4.text>'' then commandtext:=commandtext+' and dbzs='''+combobox4.text+'''';
            if edit3.text>'' then commandtext:=commandtext+' and acol='''+edit3.text+'''';
            if combobox5.text>'' then commandtext:=commandtext+' and flag2='''+combobox5.text+'''';
            commandtext:=commandtext+' and pline not in (select pline from tblschedule_hide where hide=1)';
            params[0].asdatetime:=tm;
            execute;
          end;

          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select * from tblshedule_plc where tm=:x1';
            commandtext:=commandtext+' order by plc,tplant,tshop,pline,seq';
            params[0].asdatetime:=tm;
            open;
            if not fieldbyname('pline').isnull then begin
              if frmprint5=nil then frmprint5:=tfrmprint5.create(nil);
              frmprint5.pplabel59.caption:='---- 分游數頁提示';
              frmprint5.xdhq.Caption:='全部數頁(不含實際已離廠)(拉/縫合開始日期/--/'+edit6.text+')';
              frmprint5.ppReport1.print;
            end;
          end;
        end else if chk6.Checked then begin
          with clientdataset2 do begin
            close;
            params.clear;
            commandtext:='delete from tblshedule_plc where tm<current_timestamp-0.5';
            execute;
          end;
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='insert into tblshedule_plc select a.*,''0'',:x1 from tblshedule a where yzh=0 and substr(flag3,1,2)>=''2s'' and substr(flag3,1,2)<=''9s'' and pline not in (''T056F'',''T057F'')';
            if edit2.text>'' then commandtext:=commandtext+' and upper(pline)='''+edit2.text+'''';
            if edit1.text>'' then commandtext:=commandtext+' and j_no='''+edit1.text+'''';
            if edit4.text>'' then commandtext:=commandtext+' and (tshop like '''+edit4.text+'%'')';
            if edit5.text>'' then commandtext:=commandtext+' and (cstyle like '''+edit5.text+'%'')';
            if edit6.text>'' then begin
              if edit6.text<>'ALL' then begin
                if edit6.text<>'CN' then begin
                  if edit6.text<>'GX' then
                    commandtext:=commandtext+' and tplant='''+edit6.text+''''
                  else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
                end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
              end;
            end;
            if combobox1.text>'' then commandtext:=commandtext+' and grp='''+combobox1.text+'''';
            if edit7.text>'' then commandtext:=commandtext+' and j_no like '''+edit7.text+'%''';
            if combobox2.text>'' then commandtext:=commandtext+' and flag6 like '''+combobox2.text+'%''';
            if combobox3.text>'' then commandtext:=commandtext+' and flag6='''+combobox3.text+'''';
            if combobox4.text>'' then commandtext:=commandtext+' and dbzs='''+combobox4.text+'''';
            if edit3.text>'' then commandtext:=commandtext+' and acol='''+edit3.text+'''';
            if combobox5.text>'' then commandtext:=commandtext+' and flag2='''+combobox5.text+'''';
            commandtext:=commandtext+' and pline not in (select pline from tblschedule_hide where hide=1)';
            params[0].asdatetime:=tm;
            execute;
          end;

          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select * from tblshedule_plc where tm=:x1';
            commandtext:=commandtext+' order by plc,tplant,tshop,pline,seq';
            params[0].asdatetime:=tm;
            open;
            if not fieldbyname('pline').isnull then begin
              if frmprint5=nil then frmprint5:=tfrmprint5.create(nil);
              frmprint5.pplabel59.caption:='---- 夾數頁提示';
              frmprint5.xdhq.Caption:='全部數頁(不含實際已離廠)(拉/縫合開始日期/--/'+edit6.text+')';
              frmprint5.ppReport1.print;
            end;
          end;
        end else if (chk1.Checked) or (chk9.checked) then begin
          with clientdataset2 do begin
            close;
            params.clear;
            commandtext:='delete from tblshedule_plc where tm<current_timestamp-0.5';
            execute;
          end;
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='insert into tblshedule_plc select a.*,''0'',:x1 from tblshedule a where yzh=0';
            if chk1.Checked then commandtext:=commandtext+' and ((substr(lflag,1,1) in (''!''))) and (substr(pline,1,2) not in (''SG'',''PS'',''NS'',''RS'',''SB'')) '
                                       +'and ((fccs not like ''%u%'') and (fccs not like ''%d%'') and (fccs not like ''%D%'')) and pline not in (''T056F'',''T057F'')';
            if edit2.text>'' then commandtext:=commandtext+' and upper(pline)='''+edit2.text+'''';
            if edit1.text>'' then commandtext:=commandtext+' and j_no='''+edit1.text+'''';
            if edit4.text>'' then commandtext:=commandtext+' and (tshop like '''+edit4.text+'%'')';
            if edit5.text>'' then commandtext:=commandtext+' and (cstyle like '''+edit5.text+'%'')';
            if edit6.text>'' then begin
              if edit6.text<>'ALL' then begin
                if edit6.text<>'CN' then begin
                  if edit6.text<>'GX' then
                    commandtext:=commandtext+' and tplant='''+edit6.text+''''
                  else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
                end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
              end;
            end;
            if combobox1.text>'' then commandtext:=commandtext+' and grp='''+combobox1.text+'''';
            if edit7.text>'' then commandtext:=commandtext+' and j_no like '''+edit7.text+'%''';
            if combobox2.text>'' then commandtext:=commandtext+' and flag6 like '''+combobox2.text+'%''';
            if combobox3.text>'' then commandtext:=commandtext+' and flag6='''+combobox3.text+'''';
            if combobox4.text>'' then commandtext:=commandtext+' and dbzs='''+combobox4.text+'''';
            if edit3.text>'' then commandtext:=commandtext+' and acol='''+edit3.text+'''';
            if combobox5.text>'' then commandtext:=commandtext+' and flag2='''+combobox5.text+'''';
            commandtext:=commandtext+' and pline not in (select pline from tblschedule_hide where hide=1)';
            params[0].asdatetime:=tm;
            execute;
          end;
          str1:='update tblshedule_plc set plc=''!'' where lflag like ''%!%''';
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');


          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select * from tblshedule_plc where tm=:x1';
            commandtext:=commandtext+' order by plc,tplant,tshop,pline,seq';
            params[0].asdatetime:=tm;
            open;
            if not fieldbyname('pline').isnull then begin
              if frmprint5=nil then frmprint5:=tfrmprint5.create(nil);
              if chk1.Checked then
              frmprint5.pplabel59.caption:=' ----  數頁重排或轉移 (待落實段學提示)'
              else if chk9.Checked then
              frmprint5.pplabel59.caption:=' ----  數頁重排或轉移 (待落實段學提示)';
              frmprint5.xdhq.Caption:='全部數頁(不含實際已離廠)(拉/縫合開始日期/--/'+edit6.text+')';
              frmprint5.ppReport1.print;
            end;
          end;
        end else if chk4.Checked then begin
          with clientdataset2 do begin
            close;
            params.clear;
            commandtext:='delete from tblshedule_plc where tm<current_timestamp-0.5';
            execute;
          end;
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='insert into tblshedule_plc select a.*,''0'',:x1 from tblshedule a where yzh=0';
            if edit2.text>'' then commandtext:=commandtext+' and upper(pline)='''+edit2.text+'''';
            if edit1.text>'' then commandtext:=commandtext+' and j_no='''+edit1.text+'''';
            if edit4.text>'' then commandtext:=commandtext+' and (tshop like '''+edit4.text+'%'')';
            if edit5.text>'' then commandtext:=commandtext+' and (cstyle like '''+edit5.text+'%'')';
            if edit6.text>'' then begin
              if edit6.text<>'ALL' then begin
                if edit6.text<>'CN' then begin
                  if edit6.text<>'GX' then
                    commandtext:=commandtext+' and tplant='''+edit6.text+''''
                  else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
                end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
              end;
            end;
            if combobox1.text>'' then commandtext:=commandtext+' and grp='''+combobox1.text+'''';
            if edit7.text>'' then commandtext:=commandtext+' and j_no like '''+edit7.text+'%''';
            if combobox2.text>'' then commandtext:=commandtext+' and flag6 like '''+combobox2.text+'%''';
            if combobox3.text>'' then commandtext:=commandtext+' and flag6='''+combobox3.text+'''';
            if combobox4.text>'' then commandtext:=commandtext+' and dbzs='''+combobox4.text+'''';
            if edit3.text>'' then commandtext:=commandtext+' and acol='''+edit3.text+'''';
            if combobox5.text>'' then commandtext:=commandtext+' and flag2='''+combobox5.text+'''';
            commandtext:=commandtext+' and pline not in (select pline from tblschedule_hide where hide=1)';
            params[0].asdatetime:=tm;
            execute;
          end;
          str1:='update tblshedule_plc set plc=''!'' where lflag like ''%!%''';
          if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

          with clientdataset1 do begin
            close;
            params.clear;
            params.createparam(ftdatetime,'x1',ptinput);
            commandtext:='select * from tblshedule_plc where tm=:x1';
            commandtext:=commandtext+' order by tplant,tshop,pline,seq';
            params[0].asdatetime:=tm;
            open;
            if not fieldbyname('pline').isnull then begin
              if frmprint5=nil then frmprint5:=tfrmprint5.create(nil);
              frmprint5.pplabel59.caption:=' ----  QN/DSQN SKU exchange Dashboard - DTA';
              frmprint5.xdhq.Caption:='All excluding actual ex-fty(Line/QN start date/--/'+edit6.text+')';
              frmprint5.ppReport1.print;
            end;
          end;
        end else begin
          if frmprintschedule=nil then frmprintschedule:=tfrmprintschedule.create(nil);
          frmprintschedule.Edit1.Text:=edit1.text;
          frmprintschedule.Edit2.text:=edit2.text;
          frmprintschedule.Edit3.Text:=edit3.text;
          frmprintschedule.Edit4.text:=edit4.text;
          frmprintschedule.Edit5.Text:=edit5.text;
          frmprintschedule.Edit6.text:=edit6.text;
          frmprintschedule.Edit7.Text:=edit7.text;
          frmprintschedule.Edit8.text:=edit8.text;
          frmprintschedule.ComboBox2.Text:=combobox1.text;
          frmprintschedule.ComboBox3.Text:=combobox2.text;
          frmprintschedule.ComboBox4.Text:=combobox3.text;
          frmprintschedule.ComboBox5.Text:=combobox4.text;
          frmprintschedule.ComboBox6.Text:=combobox5.text;
          frmprintschedule.CheckBox5.Checked:=chk5.Checked;
          frmprintschedule.CheckBox6.Checked:=chk6.Checked;
          frmprintschedule.CheckBox7.Checked:=chk7.Checked;
          frmprintschedule.CheckBox10.Checked:=chk10.Checked;
          frmprintschedule.Chk11.Checked:=chk11.Checked;
          frmprintschedule.Chk12.Checked:=chk12.Checked;
          if (chk1.Checked or chk4.Checked or chk5.Checked or chk6.Checked or chk7.Checked or chk10.checked or chk11.checked or chk12.checked) then begin
            chk12.checked:=false;
            frmprintschedule.BitBtn1Click(self);
          end else frmprintschedule.show;
        end;
      end;
    end;
    end;
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.BitBtn1Click(Sender: TObject);
var
  pline:string;
  seq:integer;
begin
  screen.cursor:=crhourglass;
  if tblshedule.state=dsedit then tblshedule.post;
  pline:=tblshedule.fieldbyname('pline').value;
  seq:=tblshedule.fieldbyname('seq').value;
  {
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'pline',ptinput);
    params.createparam(ftinteger,'seq',ptinput);
    commandtext:='execute procedure calc_schedule(:pline,:seq)';
    params[0].asstring:=pline;
    params[1].asinteger:=seq;
    execute;
  end;
  }
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    commandtext:='execute procedure sp_calcschedule(:x1,:x2)';
    params[0].asstring:='';
    params[1].asstring:=pline;
    execute;
  end;
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='execute procedure sp_calcltc(:x1,:x2,:x3)';
    params[0].asstring:='';
    params[1].asstring:=pline;
    params[2].asstring:='';
    execute;
  end;
  //ExecCalc(pline,seq);
  with tblshedule do begin
    close;
    params.clear;
    params.createparam(ftstring,'pline',ptinput);
    commandtext:='select * from tblshedule where pline=:pline and yzh=0';
    params[0].asstring:=pline;
    open;
    locate('seq',seq,[lopartialkey]);
  end;
  UpdateLB4n51Click(self);
  screen.cursor:=crdefault;
  //calc_somettl;
end;

function Calcdays(var year,month,day:word):integer;
begin
  if isleapyear(year) then begin
    if month=1 then result:=day
    else if month=2 then result:=31+day
    else if month=3 then result:=60+day
    else if month=4 then result:=91+day
    else if month=5 then result:=121+day
    else if month=6 then result:=152+day
    else if month=7 then result:=182+day
    else if month=8 then result:=213+day
    else if month=9 then result:=244+day
    else if month=10 then result:=274+day
    else if month=11 then result:=305+day
    else if month=12 then result:=335+day;
  end
  else begin
    if month=1 then result:=day
    else if month=2 then result:=31+day
    else if month=3 then result:=59+day
    else if month=4 then result:=90+day
    else if month=5 then result:=120+day
    else if month=6 then result:=151+day
    else if month=7 then result:=181+day
    else if month=8 then result:=212+day
    else if month=9 then result:=243+day
    else if month=10 then result:=273+day
    else if month=11 then result:=304+day
    else if month=12 then result:=334+day;
  end;
end;

function ceiling(var double1: double): integer;
begin
  if int(double1)=double1 then result:=round(int(double1))
  else result:=round(int(double1))+1;
end;

function calcwkno(var dt1:tdatetime):integer;
var
  year1,month1,day1:word;
  int1:integer;
begin
  decodedate(dt1,year1,month1,day1);
  int1:=calcdays(year1,month1,day1);
  if dayofweek(encodedate(year1,1,1))=1 then
    result:=(int1+6) div 7
  else if dayofweek(encodedate(year1,1,1))=2 then
    result:=(int1+7) div 7
  else if dayofweek(encodedate(year1,1,1))=3 then
    result:=(int1+8) div 7
  else if dayofweek(encodedate(year1,1,1))=4 then
    result:=(int1+9) div 7
  else if dayofweek(encodedate(year1,1,1))=5 then
    result:=(int1+10) div 7
  else if dayofweek(encodedate(year1,1,1))=6 then
    result:=(int1+11) div 7
  else result:=(int1+12) div 7;
end;

function calcdiffday(var dt1,dt2:tdatetime):integer;
var
  year1,month1,day1,year2,month2,day2:word;
  days1,days2:integer;
begin
  decodedate(dt1,year1,month1,day1);
  decodedate(dt2,year2,month2,day2);
  days1:=calcdays(year1,month1,day1);
  days2:=calcdays(year2,month2,day2);
  if year1=year2 then begin
    result:=days1-days2;
  end
  else begin
    if year1>year2 then begin
      if isleapyear(year2) then begin
        result:=days1+366-days2;
      end
      else begin
        result:=days1+365-days2;
      end;
    end
    else begin
      if isleapyear(year1) then begin
        result:=days1-366-days2;
      end
      else begin
        result:=days1-365-days2;
      end;
    end;
  end;
end;

procedure Tworksheet1.SpeedButton5Click(Sender: TObject);
begin
  close;
end;

procedure Tworksheet1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then begin
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select distinct j_no,j2_job,rwo,acol from tblshedule where j_no='''+edit1.text+'''';
      open;
      first;
      while not eof do begin
        with ROQuery1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          commandtext:='execute procedure sp_updfccs_rwo_new(:x1,:x2,:x3,:x4)';
          params[0].asstring:=clientdataset1.fieldbyname('j_no').value;
          params[1].asstring:=clientdataset1.fieldbyname('j2_job').value;
          params[2].asstring:=clientdataset1.fieldbyname('rwo').value;
          params[3].asstring:=clientdataset1.fieldbyname('acol').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    if worksheet1.Caption='Shipped Records' then speedbutton4click(self)
    else speedbutton1click(self);
  end;
end;

procedure Tworksheet1.Edit2Change(Sender: TObject);
begin
  if edit2.text>'' then begin
    //if (combobox1.text='') or (combobox2.text='') then begin
      with clientdataset1 do begin
        close;
        params.clear;
        commandtext:='select distinct tplant,tshop from tblline where pline='''+edit2.text+'''';
        open;
        if not fieldbyname('tplant').isnull then
        edit6.text:=fieldbyname('tplant').value;
        if not fieldbyname('tshop').isnull then
        edit4.text:=fieldbyname('tshop').value;
      end;
    //end;
  end;
end;

procedure Tworksheet1.Edit2Enter(Sender: TObject);
var
  r_ppw:string;
begin
  edit2.items.clear;
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select r_ppw from tbluser where usr='''+frmmain.combobox1.text+'''';
      open;
      if not fieldbyname('r_ppw').isnull then begin
        if fieldbyname('r_ppw').value=true then r_ppw:='1' else r_ppw:='0';
      end else r_ppw:='0';
    end;
  with clientdataset1 do begin
    close;
    params.clear;
    //commandtext:='select distinct pline from tblshedule where yzh=0';
    commandtext:='select distinct pline from tblline where pline is not null and ((lactive=1) or (sim_line=1))';
    if edit6.text>'' then begin
      if edit6.text<>'ALL' then begin
        if edit6.text<>'CN' then begin
          if edit6.text<>'GX' then
            commandtext:=commandtext+' and tplant='''+edit6.text+''''
          else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
        end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
      end;
    end;
    //if not frmmain.clientdataset1.fieldbyname('r_ppw').isnull then begin
      if r_ppw='0' then
      commandtext:=commandtext+' and tshop<>''PPW''';
    //end;
    if edit4.text>'' then commandtext:=commandtext+' and tshop='''+edit4.text+'''';
    open;
    first;
    while not eof do begin
      edit2.items.add(fieldbyname('pline').value);
      application.processmessages;
      next;
    end;
  end;
end;

procedure Tworksheet1.Edit4Enter(Sender: TObject);
var
  fty,r_ppw:string;
begin
  edit4.items.clear;
  //if edit6.text='CN' then fty:='' else
  fty:=edit6.text;
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select r_ppw from tbluser where usr='''+frmmain.combobox1.text+'''';
      open;
      if not fieldbyname('r_ppw').isnull then begin
        if fieldbyname('r_ppw').value=true then r_ppw:='1' else r_ppw:='0';
      end else r_ppw:='0';
    end;
  with clientdataset1 do begin
    close;
    params.clear;
    //commandtext:='select distinct tshop from tblshedule where yzh=0';
    commandtext:='select distinct tshop from tblline where tshop is not null and ((lactive=1) or (sim_line=1))';
    if fty>'' then begin
      if edit6.text<>'ALL' then begin
        if edit6.text<>'CN' then begin
          if edit6.text<>'GX' then
            commandtext:=commandtext+' and tplant='''+edit6.text+''''
          else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
        end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
      end;
      //if not frmmain.clientdataset1.fieldbyname('r_ppw').isnull then begin
        if r_ppw='0' then
        commandtext:=commandtext+' and tshop<>''PPW''';
      //end;
    end;
    open;
    first;
    while not eof do begin
      edit4.items.add(fieldbyname('tshop').value);
      application.processmessages;
      next;
    end;
  end;
end;

procedure Tworksheet1.tblsheduleTmuChange(Sender: TField);
var
  pline:string;
  tmu,fyl,float1,float2,ysjhl,float3,lstrs,tbu,awf:double;
  trs,bzjs,cfksjs,cfwcjs,kdjs,scqty,bcjs,seq:integer;
  phiszjs,zktd,sclhjs,shjs,qyjs,zhjs,learn,ubal,asah:double;
  cfksrq,cfwcrq,tzlcrq,yqlcrq:tdatetime;
  calcwc:string;
begin
  pline:=tblshedule.fieldbyname('pline').value;
  seq:=tblshedule.fieldbyname('seq').value;
  if not tblshedule.fieldbyname('tmu').isnull then tmu:=tblshedule.fieldbyname('tmu').value
  else tmu:=0;
  if not tblshedule.fieldbyname('asah').isnull then asah:=tblshedule.fieldbyname('asah').value
  else asah:=0;
  if not tblshedule.fieldbyname('ysjhl').isnull then ysjhl:=tblshedule.fieldbyname('ysjhl').value
  else ysjhl:=100.0;
  //if not tblshedule.fieldbyname('fyl').isnull then fyl:=tblshedule.fieldbyname('fyl').value
  //else fyl:=1;
  fyl:=1;
  if not tblshedule.fieldbyname('trs').isnull then trs:=tblshedule.fieldbyname('trs').value
  else trs:=25;
  if not tblshedule.fieldbyname('scqty').isnull then scqty:=tblshedule.fieldbyname('scqty').value
  else scqty:=0;
  if not tblshedule.fieldbyname('learn').isnull then learn:=tblshedule.fieldbyname('learn').value
  else learn:=0;
  if not tblshedule.fieldbyname('bcjs').isnull then bcjs:=tblshedule.fieldbyname('bcjs').value
  else bcjs:=0;
  if not tblshedule.fieldbyname('lstrs').isnull then lstrs:=tblshedule.fieldbyname('lstrs').value
  else lstrs:=trs;
  if not tblshedule.fieldbyname('awf').isnull then awf:=tblshedule.fieldbyname('awf').value
  else awf:=trs;

  tbu:=100.0;
  if lstrs<=0 then lstrs:=25;
  if ysjhl<=0 then ysjhl:=100;
  if asah*fyl>0 then begin
    float1:=0.5*awf/asah/fyl;
    tblshedule.fieldbyname('phiszjs').value:=scqty*1.00/float1;
    tblshedule.fieldbyname('shjs').value:=scqty*100.00/float1/ysjhl-scqty*1.00/float1;
  end;
  if tmu>0 then begin
    tblshedule.fieldbyname('jxjs').value:=0.5*lstrs/tmu/fyl;
    tblshedule.fieldbyname('xjs').value:=0.5*lstrs/tmu/fyl;
  end;
  if not tblshedule.fieldbyname('phiszjs').isnull then phiszjs:=tblshedule.fieldbyname('phiszjs').value
  else phiszjs:=0;
  if not tblshedule.fieldbyname('sclhjs').isnull then sclhjs:=tblshedule.fieldbyname('sclhjs').value
  else sclhjs:=0;
  if not tblshedule.fieldbyname('shjs').isnull then shjs:=tblshedule.fieldbyname('shjs').value
  else shjs:=0;
  if not tblshedule.fieldbyname('qyjs').isnull then qyjs:=tblshedule.fieldbyname('qyjs').value
  else qyjs:=0;
  if not tblshedule.fieldbyname('zhjs').isnull then zhjs:=tblshedule.fieldbyname('zhjs').value
  else zhjs:=0;
  if zhjs<0 then zhjs:=zhjs*(-1.0);
  tblshedule.fieldbyname('yszjs').value:=phiszjs+shjs;
  tblshedule.fieldbyname('zjs').value:=phiszjs+sclhjs+shjs+qyjs-zhjs;//+learn;//+ubal;
  tblshedule.fieldbyname('zktd').value:=sclhjs+qyjs-zhjs;//+learn;//+ubal;

  if bcjs>0 then tblshedule.fieldbyname('dbxl').value:=zhjs*100.0/bcjs else tblshedule.fieldbyname('dbxl').value:=0;

  if not tblshedule.fieldbyname('cfksrq').isnull then begin
    cfksrq:=tblshedule.fieldbyname('cfksrq').value;
    cfksjs:=tblshedule.fieldbyname('cfksjs').value;
    float1:=phiszjs+shjs+sclhjs+qyjs-zhjs+learn;//+ubal;
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftfloat,'x3',ptinput);
      params.createparam(ftfloat,'x4',ptinput);
      params.createparam(ftfloat,'x5',ptinput);
      params.createparam(ftfloat,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      commandtext:='select * from prd_wcrq_1(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
      params[0].asstring:=pline;
      params[1].asdate:=cfksrq;
      params[2].asfloat:=cfksjs;
      params[3].asfloat:=float1;
      params[4].asfloat:=0;
      params[5].asfloat:=0;
      params[6].asinteger:=seq;
      open;
      if not fieldbyname('o_wcrq').isnull then begin
        cfwcrq:=fieldbyname('o_wcrq').value;
        cfwcjs:=fieldbyname('o_wcjs').value;

        tzlcrq:=cfwcrq+1;
        tblshedule.fieldbyname('cfwcrq').value:=cfwcrq;
        tblshedule.fieldbyname('cfwcjs').value:=cfwcjs;
        tblshedule.fieldbyname('tzlcrq').value:=tzlcrq;
        if not tblshedule.fieldbyname('yqlcrq1').isnull then begin
          yqlcrq:=tblshedule.fieldbyname('yqlcrq1').value;
          tblshedule.fieldbyname('rqxc').value:=trunc(yqlcrq)-trunc(tzlcrq);
        end else if not tblshedule.fieldbyname('yqlcrq').isnull then begin
          yqlcrq:=tblshedule.fieldbyname('yqlcrq').value;
          tblshedule.fieldbyname('rqxc').value:=trunc(yqlcrq)-trunc(tzlcrq);
        end;
      end;
    end;
  end;
end;

procedure Tworksheet1.tblsheduleAfterPost(DataSet: TDataSet);
var
  pstr:string;
  upd:string;
  str1,str2:string;
begin
      str1:='update tblshedule set ';
      if not tblshedule.fieldbyname('flag1').isnull then
      str1:=str1+'flag1='''+tblshedule.fieldbyname('flag1').value+''','
      else str1:=str1+'flag1=''2'',';
      if not tblshedule.fieldbyname('khzl').isnull then
      str1:=str1+'khzl='''+tblshedule.fieldbyname('khzl').value+''','
      else str1:=str1+'khzl='''',';
      if not tblshedule.fieldbyname('flag2').isnull then
      str1:=str1+'flag2='''+tblshedule.fieldbyname('flag2').value+''','
      else str1:=str1+'flag2='''',';
      str1:=str1+'tmu='+tblshedule.fieldbyname('tmu').asstring+',';
      str1:=str1+'fyl='+tblshedule.fieldbyname('fyl').asstring+',';
      str1:=str1+'trs='+tblshedule.fieldbyname('trs').asstring+',';
      str1:=str1+'ysjhl='+tblshedule.fieldbyname('ysjhl').asstring+',';
      str1:=str1+'kdjs='+tblshedule.fieldbyname('kdjs').asstring+',';
      str1:=str1+'zktd='+tblshedule.fieldbyname('zktd').asstring+',';
      if not tblshedule.fieldbyname('flag3').isnull then
      str1:=str1+'flag3='''+tblshedule.fieldbyname('flag3').value+''','
      else str1:=str1+'flag3='''',';
      str1:=str1+'sctd='+tblshedule.fieldbyname('sctd').asstring+',';
      str1:=str1+'sclhjs='+tblshedule.fieldbyname('sclhjs').asstring+',';
      str1:=str1+'zhjs='+tblshedule.fieldbyname('zhjs').asstring+',';
      str1:=str1+'bcjs='+tblshedule.fieldbyname('bcjs').asstring+',';
      str1:=str1+'bzjs='+tblshedule.fieldbyname('bzjs').asstring+',';
      if not tblshedule.fieldbyname('flag4').isnull then
      str1:=str1+'flag4='''+tblshedule.fieldbyname('flag4').value+''','
      else str1:=str1+'flag4='''',';
      if not tblshedule.fieldbyname('flag401').isnull then
      str1:=str1+'flag401='''+tblshedule.fieldbyname('flag401').value+''','
      else str1:=str1+'flag401='''',';
      if not tblshedule.fieldbyname('flag5').isnull then
      str1:=str1+'flag5='''+tblshedule.fieldbyname('flag5').value+''','
      else str1:=str1+'flag5='''',';
      if not tblshedule.fieldbyname('qrlcrq').isnull then
      str1:=str1+'qrlcrq='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('qrlcrq').value)+''','
      else str1:=str1+'qrlcrq=null,';
      if not tblshedule.fieldbyname('yqlcrq1').isnull then
      str1:=str1+'yqlcrq1='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('yqlcrq1').value)+''','
      else str1:=str1+'yqlcrq1=null,';
      if not tblshedule.fieldbyname('fyfs').isnull then
      str1:=str1+'fyfs='''+tblshedule.fieldbyname('fyfs').value+''','
      else str1:=str1+'fyfs='''',';
      if tblshedule.fieldbyname('yzh').value=true then
      str1:=str1+'yzh=1,' else str1:=str1+'yzh=0,';
      str1:=str1+'xjs='+tblshedule.fieldbyname('xjs').asstring+',';
      if not tblshedule.fieldbyname('phiszjs').isnull then
      str1:=str1+'phiszjs='+tblshedule.fieldbyname('phiszjs').asstring+','
      else str1:=str1+'phiszjs=0,';
      if not tblshedule.fieldbyname('zjs').isnull then
      str1:=str1+'zjs='+tblshedule.fieldbyname('zjs').asstring+','
      else str1:=str1+'zjs=0,';
      if not tblshedule.fieldbyname('jhl').isnull then
      str1:=str1+'jhl='+tblshedule.fieldbyname('jhl').asstring+','
      else str1:=str1+'jhl=0,';
      if not tblshedule.fieldbyname('cfksrq').isnull then
      str1:=str1+'cfksrq='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('cfksrq').value)+''','
      else str1:=str1+'cfksrq=null,';
      if not tblshedule.fieldbyname('cfksjs').isnull then
      str1:=str1+'cfksjs='+tblshedule.fieldbyname('cfksjs').asstring+','
      else str1:=str1+'cfksjs=0,';
      if not tblshedule.fieldbyname('week').isnull then
      str1:=str1+'week='+tblshedule.fieldbyname('week').asstring+','
      else str1:=str1+'week=0,';
      if not tblshedule.fieldbyname('cfwcrq').isnull then
      str1:=str1+'cfwcrq='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('cfwcrq').value)+''','
      else str1:=str1+'cfwcrq=null,';
      if not tblshedule.fieldbyname('cfwcjs').isnull then
      str1:=str1+'cfwcjs='+tblshedule.fieldbyname('cfwcjs').asstring+','
      else str1:=str1+'cfwcjs=0,';
      if not tblshedule.fieldbyname('tzlcrq').isnull then
      str1:=str1+'tzlcrq='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('tzlcrq').value)+''','
      else str1:=str1+'tzlcrq=null,';
      if not tblshedule.fieldbyname('qrxc').isnull then
      str1:=str1+'qrxc='+tblshedule.fieldbyname('qrxc').asstring+','
      else str1:=str1+'qrxc=0,';
      if not tblshedule.fieldbyname('rqxc').isnull then
      str1:=str1+'rqxc='+tblshedule.fieldbyname('rqxc').asstring+','
      else str1:=str1+'rqxc=0,';
      str1:=str1+'scqty='+TBLSHEDULE.FIELDBYNAME('SCQTY').asstring+',';
      if not tblshedule.fieldbyname('xs').isnull then
      str1:=str1+'xs='+tblshedule.fieldbyname('xs').asstring+','
      else str1:=str1+'xs=1,';
      if not tblshedule.fieldbyname('pflag1').isnull then
      str1:=str1+'pflag1='''+tblshedule.fieldbyname('pflag1').value+''','
      else str1:=str1+'pflag1=''1'',';
      if not tblshedule.fieldbyname('dbzs').isnull then
      str1:=str1+'dbzs='''+tblshedule.fieldbyname('dbzs').value+''','
      else str1:=str1+'dbzs='''',';
      if not tblshedule.fieldbyname('flag6').isnull then
      str1:=str1+'flag6='''+tblshedule.fieldbyname('flag6').value+''','
      else str1:=str1+'flag6='''',';
      if not tblshedule.fieldbyname('lstrs').isnull then
      str1:=str1+'lstrs='+tblshedule.fieldbyname('lstrs').asstring+','
      else str1:=str1+'lstrs=0,';
      if not tblshedule.fieldbyname('shjs').isnull then
      str1:=str1+'shjs='+tblshedule.fieldbyname('shjs').asstring+','
      else str1:=str1+'shjs=0,';
      if not tblshedule.fieldbyname('yszjs').isnull then
      str1:=str1+'yszjs='+tblshedule.fieldbyname('yszjs').asstring+','
      else str1:=str1+'yszjs=0,';
      if not tblshedule.fieldbyname('sclh_bs').isnull then
      str1:=str1+'sclh_bs='+tblshedule.fieldbyname('sclh_bs').asstring+','
      else str1:=str1+'sclh_bs=0,';
      if not tblshedule.fieldbyname('sclh_lh').isnull then
      str1:=str1+'sclh_lh='+tblshedule.fieldbyname('sclh_lh').asstring+','
      else str1:=str1+'sclh_lh=0,';
      if not tblshedule.fieldbyname('qyjs').isnull then
      str1:=str1+'qyjs='+tblshedule.fieldbyname('qyjs').asstring+','
      else str1:=str1+'qyjs=0,';
      if not tblshedule.fieldbyname('jhrs').isnull then
      str1:=str1+'jhrs='''+tblshedule.fieldbyname('jhrs').value+''','
      else str1:=str1+'jhrs='''',';
      if not tblshedule.fieldbyname('dta').isnull then
      str1:=str1+'dta='''+tblshedule.fieldbyname('dta').value+''','
      else str1:=str1+'dta='''',';
      if not tblshedule.fieldbyname('dta1').isnull then
      str1:=str1+'dta1='''+tblshedule.fieldbyname('dta1').value+''','
      else str1:=str1+'dta1='''',';
      if not tblshedule.fieldbyname('plan_date').isnull then
      str1:=str1+'plan_date='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('plan_date').value)+''','
      else str1:=str1+'plan_date=null,';
      if not tblshedule.fieldbyname('pd8').isnull then
      str1:=str1+'pd8='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('pd8').value)+''','
      else str1:=str1+'pd8=null,';
      if not tblshedule.fieldbyname('lflag').isnull then begin
        if flflag<>'' then begin
          if (copy(tblshedule.fieldbyname('lflag').value,1,1)='!') or (copy(tblshedule.fieldbyname('lflag').value,1,1)='^') then
          str1:=str1+'lflag='''+tblshedule.fieldbyname('lflag').value+''','
          else str1:=str1+'lflag='''+flflag+trim(tblshedule.fieldbyname('lflag').value)+''',';
        end else str1:=str1+'lflag='''+tblshedule.fieldbyname('lflag').value+''',';
      end else str1:=str1+'lflag=''!1'',';
      if not tblshedule.fieldbyname('learn').isnull then
      str1:=str1+'learn='+tblshedule.fieldbyname('learn').asstring+','
      else str1:=str1+'learn=0,';
      if not tblshedule.fieldbyname('jxjs').isnull then
      str1:=str1+'jxjs='+tblshedule.fieldbyname('jxjs').asstring+','
      else str1:=str1+'jxjs=0,';
      if not tblshedule.fieldbyname('ckjs').isnull then
      str1:=str1+'ckjs='+tblshedule.fieldbyname('ckjs').asstring+','
      else str1:=str1+'ckjs=0,';
      if not tblshedule.fieldbyname('sjrs').isnull then
      str1:=str1+'sjrs='+tblshedule.fieldbyname('sjrs').asstring+','
      else str1:=str1+'sjrs=0,';
      if not tblshedule.fieldbyname('sjyc').isnull then
      str1:=str1+'sjyc='+tblshedule.fieldbyname('sjyc').asstring+','
      else str1:=str1+'sjyc=0,';
      if not tblshedule.fieldbyname('tbu').isnull then
      str1:=str1+'tbu='+tblshedule.fieldbyname('tbu').asstring+','
      else str1:=str1+'tbu=100,';
      if not tblshedule.fieldbyname('cplan').isnull then
      str1:=str1+'cplan='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('cplan').value)+''','
      else str1:=str1+'cplan=null,';
      if not tblshedule.fieldbyname('xc4').isnull then
      str1:=str1+'xc4='+tblshedule.fieldbyname('xc4').asstring+','
      else str1:=str1+'xc4=0,';
      if not tblshedule.fieldbyname('fccs').isnull then
      str1:=str1+'fccs='''+tblshedule.fieldbyname('fccs').value+''','
      else str1:=str1+'fccs=''1/1'',';
      if not tblshedule.fieldbyname('unbal').isnull then
      str1:=str1+'unbal='+tblshedule.fieldbyname('unbal').asstring+','
      else str1:=str1+'unbal=0,';
      if not tblshedule.fieldbyname('iecls').isnull then
      str1:=str1+'iecls='''+tblshedule.fieldbyname('iecls').value+''','
      else str1:=str1+'iecls='''',';
      if not tblshedule.fieldbyname('wl_jhdt').isnull then
      str1:=str1+'wl_jhdt='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('wl_jhdt').value)+''','
      else str1:=str1+'wl_jhdt=null,';
      if not tblshedule.fieldbyname('wl_jhp').isnull then
      str1:=str1+'wl_jhp='+tblshedule.fieldbyname('wl_jhp').asstring+','
      else str1:=str1+'wl_jhp=0,';
      if tblshedule.fieldbyname('wl_wc').value=true then
      str1:=str1+'wl_wc=1,'  else str1:=str1+'wl_wc=0,';
      if not tblshedule.fieldbyname('wl_wcp').isnull then
      str1:=str1+'wl_wcp='+tblshedule.fieldbyname('wl_wcp').asstring+','
      else str1:=str1+'wl_wcp=0,';
      if not tblshedule.fieldbyname('pb_jhdt').isnull then
      str1:=str1+'pb_jhdt='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('pb_jhdt').value)+''','
      else str1:=str1+'pb_jhdt=null,';
      if tblshedule.fieldbyname('pb_wc').value=true then
      str1:=str1+'pb_wc=1,'  else str1:=str1+'pb_wc=0,';
      if tblshedule.fieldbyname('khzl1').value=true then
      str1:=str1+'khzl1=1,'  else str1:=str1+'khzl1=0,';
      if tblshedule.fieldbyname('prtwo').value=true then
      str1:=str1+'prtwo=1,'  else str1:=str1+'prtwo=0,';

      if not tblshedule.fieldbyname('sjrs_a').isnull then
      str1:=str1+'sjrs_a='+tblshedule.fieldbyname('sjrs_a').asstring+','
      else str1:=str1+'sjrs_a=0,';
      if not tblshedule.fieldbyname('sjyc_a').isnull then
      str1:=str1+'sjyc_a='+tblshedule.fieldbyname('sjyc_a').asstring+','
      else str1:=str1+'sjyc_a=0,';
      if tblshedule.fieldbyname('lockcfks').value=true then
      str1:=str1+'lockcfks=1,'  else str1:=str1+'lockcfks=0,';
      if not tblshedule.fieldbyname('ct1').isnull then
      str1:=str1+'ct1='+tblshedule.fieldbyname('ct1').asstring+','
      else str1:=str1+'ct1=0,';
      if not tblshedule.fieldbyname('ct3').isnull then
      str1:=str1+'ct3='+tblshedule.fieldbyname('ct3').asstring+','
      else str1:=str1+'ct3=0,';
      if not tblshedule.fieldbyname('ct2_1').isnull then
      str1:=str1+'ct2_1='+tblshedule.fieldbyname('ct2_1').asstring+','
      else str1:=str1+'ct2_1=0,';
      if not tblshedule.fieldbyname('ct2_2').isnull then
      str1:=str1+'ct2_2='+tblshedule.fieldbyname('ct2_2').asstring+','
      else str1:=str1+'ct2_2=0,';
      if not tblshedule.fieldbyname('at3_a').isnull then
      str1:=str1+'at3_a='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('at3_a').value)+''','
      else str1:=str1+'at3_a=null,';
      if not tblshedule.fieldbyname('pdn_a').isnull then
      str1:=str1+'pdn_a='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('pdn_a').value)+''','
      else str1:=str1+'pdn_a=null,';
      if not tblshedule.fieldbyname('pfsah').isnull then
      str1:=str1+'pfsah='+tblshedule.fieldbyname('pfsah').asstring+','
      else str1:=str1+'pfsah=0,';
      if not tblshedule.fieldbyname('asah').isnull then
      str1:=str1+'asah='+tblshedule.fieldbyname('asah').asstring+','
      else str1:=str1+'asah=0,';
      if not tblshedule.fieldbyname('esah').isnull then
      str1:=str1+'esah='+tblshedule.fieldbyname('esah').asstring+','
      else str1:=str1+'esah=0,';
      if not tblshedule.fieldbyname('pfxjs').isnull then
      str1:=str1+'pfxjs='+tblshedule.fieldbyname('pfxjs').asstring+','
      else str1:=str1+'pfxjs=0,';
      if not tblshedule.fieldbyname('alxjs').isnull then
      str1:=str1+'alxjs='+tblshedule.fieldbyname('alxjs').asstring+','
      else str1:=str1+'alxjs=0,';
      if not tblshedule.fieldbyname('exjs').isnull then
      str1:=str1+'exjs='+tblshedule.fieldbyname('exjs').asstring+','
      else str1:=str1+'exjs=0,';
      if not tblshedule.fieldbyname('pfeff1').isnull then
      str1:=str1+'pfeff1='+tblshedule.fieldbyname('pfeff1').asstring+','
      else str1:=str1+'pfeff1=0,';
      if not tblshedule.fieldbyname('pfeff2').isnull then
      str1:=str1+'pfeff2='+tblshedule.fieldbyname('pfeff2').asstring+','
      else str1:=str1+'pfeff2=0,';
      if not tblshedule.fieldbyname('eeff1').isnull then
      str1:=str1+'eeff1='+tblshedule.fieldbyname('eeff1').asstring+','
      else str1:=str1+'eeff1=0,';
      if not tblshedule.fieldbyname('eeff2').isnull then
      str1:=str1+'eeff2='+tblshedule.fieldbyname('eeff2').asstring+','
      else str1:=str1+'eeff2=0,';
      if not tblshedule.fieldbyname('pfoptqty').isnull then
      str1:=str1+'pfoptqty='+tblshedule.fieldbyname('pfoptqty').asstring+','
      else str1:=str1+'pfoptqty=0,';
      if not tblshedule.fieldbyname('aloptqty').isnull then
      str1:=str1+'aloptqty='+tblshedule.fieldbyname('aloptqty').asstring+','
      else str1:=str1+'aloptqty=0,';
      if not tblshedule.fieldbyname('eoptqty').isnull then
      str1:=str1+'eoptqty='+tblshedule.fieldbyname('eoptqty').asstring+','
      else str1:=str1+'eoptqty=0,';
      if not tblshedule.fieldbyname('toptqty').isnull then
      str1:=str1+'toptqty='+tblshedule.fieldbyname('toptqty').asstring+','
      else str1:=str1+'toptqty=0,';
      if not tblshedule.fieldbyname('pws').isnull then
      str1:=str1+'pws='''+tblshedule.fieldbyname('pws').value+''','
      else str1:=str1+'pws='''',';
      if not tblshedule.fieldbyname('fws').isnull then
      str1:=str1+'fws='''+tblshedule.fieldbyname('fws').value+''','
      else str1:=str1+'fws='''',';
      if not tblshedule.fieldbyname('ews').isnull then
      str1:=str1+'ews='''+tblshedule.fieldbyname('ews').value+''','
      else str1:=str1+'ews='''',';
      if not tblshedule.fieldbyname('pzb').isnull then
      str1:=str1+'pzb='''+tblshedule.fieldbyname('pzb').value+''','
      else str1:=str1+'pzb='''',';
      if not tblshedule.fieldbyname('fzb').isnull then
      str1:=str1+'fzb='''+tblshedule.fieldbyname('fzb').value+''','
      else str1:=str1+'fzb='''',';
      if not tblshedule.fieldbyname('ezb').isnull then
      str1:=str1+'ezb='''+tblshedule.fieldbyname('ezb').value+''','
      else str1:=str1+'ezb='''',';
      if not tblshedule.fieldbyname('pfrs_a').isnull then
      str1:=str1+'pfrs_a='+tblshedule.fieldbyname('pfrs_a').asstring+','
      else str1:=str1+'pfrs_a=0,';
      if not tblshedule.fieldbyname('pfrs_a1').isnull then
      str1:=str1+'pfrs_a1='+tblshedule.fieldbyname('pfrs_a1').asstring+','
      else str1:=str1+'pfrs_a1=0,';
      if not tblshedule.fieldbyname('pfrs').isnull then
      str1:=str1+'pfrs='+tblshedule.fieldbyname('pfrs').asstring+','
      else str1:=str1+'pfrs=0,';
      if not tblshedule.fieldbyname('awf').isnull then
      str1:=str1+'awf='+tblshedule.fieldbyname('awf').asstring+','
      else str1:=str1+'awf=0,';
      if not tblshedule.fieldbyname('ewf').isnull then
      str1:=str1+'ewf='+tblshedule.fieldbyname('ewf').asstring+','
      else str1:=str1+'ewf=0,';
      if not tblshedule.fieldbyname('ers_a1').isnull then
      str1:=str1+'ers_a1='+tblshedule.fieldbyname('ers_a1').asstring+','
      else str1:=str1+'ers_a1=0,';
      if not tblshedule.fieldbyname('ers').isnull then
      str1:=str1+'ers='+tblshedule.fieldbyname('ers').asstring+','
      else str1:=str1+'ers=0,';
      if not tblshedule.fieldbyname('ttlrs_a').isnull then
      str1:=str1+'ttlrs_a='+tblshedule.fieldbyname('ttlrs_a').asstring+','
      else str1:=str1+'ttlrs_a=0,';
      if not tblshedule.fieldbyname('ttlrs_a1').isnull then
      str1:=str1+'ttlrs_a1='+tblshedule.fieldbyname('ttlrs_a1').asstring+','
      else str1:=str1+'ttlrs_a1=0,';
      if not tblshedule.fieldbyname('ttlrs').isnull then
      str1:=str1+'ttlrs='+tblshedule.fieldbyname('ttlrs').asstring+','
      else str1:=str1+'ttlrs=0,';
      if not tblshedule.fieldbyname('pfyc_a').isnull then
      str1:=str1+'pfyc_a='+tblshedule.fieldbyname('pfyc_a').asstring+','
      else str1:=str1+'pfyc_a=0,';
      if not tblshedule.fieldbyname('pfyc_a1').isnull then
      str1:=str1+'pfyc_a1='+tblshedule.fieldbyname('pfyc_a1').asstring+','
      else str1:=str1+'pfyc_a1=0,';
      if not tblshedule.fieldbyname('pfyc').isnull then
      str1:=str1+'pfyc='+tblshedule.fieldbyname('pfyc').asstring+','
      else str1:=str1+'pfyc=0,';
      if not tblshedule.fieldbyname('eyc_a').isnull then
      str1:=str1+'eyc_a='+tblshedule.fieldbyname('eyc_a').asstring+','
      else str1:=str1+'eyc_a=0,';
      if not tblshedule.fieldbyname('eyc_a1').isnull then
      str1:=str1+'eyc_a1='+tblshedule.fieldbyname('eyc_a1').asstring+','
      else str1:=str1+'eyc_a1=0,';
      if not tblshedule.fieldbyname('eyc').isnull then
      str1:=str1+'eyc='+tblshedule.fieldbyname('eyc').asstring+','
      else str1:=str1+'eyc=0,';
      if not tblshedule.fieldbyname('ttlyc_a').isnull then
      str1:=str1+'ttlyc_a='+tblshedule.fieldbyname('ttlyc_a').asstring+','
      else str1:=str1+'ttlyc_a=0,';
      if not tblshedule.fieldbyname('ttlyc_a1').isnull then
      str1:=str1+'ttlyc_a1='+tblshedule.fieldbyname('ttlyc_a1').asstring+','
      else str1:=str1+'ttlyc_a1=0,';
      if not tblshedule.fieldbyname('ttlyc').isnull then
      str1:=str1+'ttlyc='+tblshedule.fieldbyname('ttlyc').asstring+','
      else str1:=str1+'ttlyc=0,';
      if not tblshedule.fieldbyname('ysdx').isnull then
      str1:=str1+'ysdx='+tblshedule.fieldbyname('ysdx').asstring+','
      else str1:=str1+'ysdx=0,';
      if not tblshedule.fieldbyname('ysxl').isnull then
      str1:=str1+'ysxl='+tblshedule.fieldbyname('ysxl').asstring+','
      else str1:=str1+'ysxl=0,';
      if not tblshedule.fieldbyname('rjxl_a').isnull then
      str1:=str1+'rjxl_a='+tblshedule.fieldbyname('rjxl_a').asstring+','
      else str1:=str1+'rjxl_a=0,';
      if not tblshedule.fieldbyname('rjxl').isnull then
      str1:=str1+'rjxl='+tblshedule.fieldbyname('rjxl').asstring+','
      else str1:=str1+'rjxl=0,';
      if not tblshedule.fieldbyname('pf_ksrq').isnull then
      str1:=str1+'pf_ksrq='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('pf_ksrq').value)+''','
      else str1:=str1+'pf_ksrq=null,';
      if not tblshedule.fieldbyname('pf_ksjs').isnull then
      str1:=str1+'pf_ksjs='+tblshedule.fieldbyname('pf_ksjs').asstring+','
      else str1:=str1+'pf_ksjs=0,';
      if not tblshedule.fieldbyname('e_ksrq').isnull then
      str1:=str1+'e_ksrq='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('e_ksrq').value)+''','
      else str1:=str1+'e_ksrq=null,';
      if not tblshedule.fieldbyname('e_ksjs').isnull then
      str1:=str1+'e_ksjs='+tblshedule.fieldbyname('e_ksjs').asstring+','
      else str1:=str1+'e_ksjs=0,';
      if not tblshedule.fieldbyname('pf_wcrq').isnull then
      str1:=str1+'pf_wcrq='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('pf_wcrq').value)+''','
      else str1:=str1+'pf_wcrq=null,';
      if not tblshedule.fieldbyname('pf_wcjs').isnull then
      str1:=str1+'pf_wcjs='+tblshedule.fieldbyname('pf_wcjs').asstring+','
      else str1:=str1+'pf_wcjs=0,';
      if not tblshedule.fieldbyname('e_wcrq').isnull then
      str1:=str1+'e_wcrq='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('e_wcrq').value)+''','
      else str1:=str1+'e_wcrq=null,';
      if not tblshedule.fieldbyname('e_wcjs').isnull then
      str1:=str1+'e_wcjs='+tblshedule.fieldbyname('e_wcjs').asstring+','
      else str1:=str1+'e_wcjs=0,';
      if not tblshedule.fieldbyname('sclh_yb').isnull then
      str1:=str1+'sclh_yb='+tblshedule.fieldbyname('sclh_yb').asstring+','
      else str1:=str1+'sclh_yb=0,';
      if not tblshedule.fieldbyname('sclh_wb').isnull then
      str1:=str1+'sclh_wb='+tblshedule.fieldbyname('sclh_wb').asstring+','
      else str1:=str1+'sclh_wb=0,';
      if not tblshedule.fieldbyname('sclh_bb').isnull then
      str1:=str1+'sclh_bb='+tblshedule.fieldbyname('sclh_bb').asstring+','
      else str1:=str1+'sclh_bb=0,';
      if not tblshedule.fieldbyname('sclh_xl').isnull then
      str1:=str1+'sclh_xl='+tblshedule.fieldbyname('sclh_xl').asstring+','
      else str1:=str1+'sclh_xl=0,';
      if tblshedule.fieldbyname('lockcfwc').value=true then
      str1:=str1+'lockcfwc=1,'  else str1:=str1+'lockcfwc=0,';
      if not tblshedule.fieldbyname('bzl').isnull then
      str1:=str1+'bzl='+tblshedule.fieldbyname('bzl').asstring+','
      else str1:=str1+'bzl=0,';
      if not tblshedule.fieldbyname('jjl').isnull then
      str1:=str1+'jjl='+tblshedule.fieldbyname('jjl').asstring+','
      else str1:=str1+'jjl=0,';
      if not tblshedule.fieldbyname('flag31p').isnull then
      str1:=str1+'flag31p='''+tblshedule.fieldbyname('flag31p').value+''','
      else str1:=str1+'flag31p='''',';
      if not tblshedule.fieldbyname('flag31e').isnull then
      str1:=str1+'flag31e='''+tblshedule.fieldbyname('flag31e').value+''','
      else str1:=str1+'flag31e='''',';
      if not tblshedule.fieldbyname('flag31a').isnull then
      str1:=str1+'flag31a='''+tblshedule.fieldbyname('flag31a').value+''','
      else str1:=str1+'flag31a='''',';
      if not tblshedule.fieldbyname('flag32p').isnull then
      str1:=str1+'flag32p='''+tblshedule.fieldbyname('flag32p').value+''','
      else str1:=str1+'flag32p='''',';
      if not tblshedule.fieldbyname('flag32a').isnull then
      str1:=str1+'flag32a='''+tblshedule.fieldbyname('flag32a').value+''','
      else str1:=str1+'flag32a='''',';
      if not tblshedule.fieldbyname('flag32e').isnull then
      str1:=str1+'flag32e='''+tblshedule.fieldbyname('flag32e').value+''','
      else str1:=str1+'flag32e='''',';
      if not tblshedule.fieldbyname('lbling').isnull then
      str1:=str1+'lbling='''+tblshedule.fieldbyname('lbling').value+''','
      else str1:=str1+'lbling='''',';
      if not tblshedule.fieldbyname('qnf').isnull then
      str1:=str1+'qnf='''+tblshedule.fieldbyname('qnf').value+''','
      else str1:=str1+'qnf='''',';
      if not tblshedule.fieldbyname('pf_sb').isnull then
      str1:=str1+'pf_sb='''+tblshedule.fieldbyname('pf_sb').value+''','
      else str1:=str1+'pf_sb='''',';

      if not tblshedule.fieldbyname('ltc_rm').isnull then
      str1:=str1+'ltc_rm='''+tblshedule.fieldbyname('ltc_rm').value+''','
      else str1:=str1+'ltc_rm='''',';

      if not tblshedule.fieldbyname('fcl_a1').isnull then
      str1:=str1+'fcl_a1='''+tblshedule.fieldbyname('fcl_a1').value+''','
      else str1:=str1+'fcl_a1='''',';
      if not tblshedule.fieldbyname('fcl_a2').isnull then
      str1:=str1+'fcl_a2='+tblshedule.fieldbyname('fcl_a2').asstring+','
      else str1:=str1+'fcl_a2=null,';

      if not tblshedule.fieldbyname('item_fm').isnull then
      str1:=str1+'item_fm='''+tblshedule.fieldbyname('item_fm').value+''','
      else str1:=str1+'item_fm=null,';
      if not tblshedule.fieldbyname('item_no').isnull then
      str1:=str1+'item_no='''+tblshedule.fieldbyname('item_no').value+''','
      else str1:=str1+'item_no='''',';
      if not tblshedule.fieldbyname('i_no').isnull then begin
        if tblshedule.fieldbyname('i_no').value>0 then
        str1:=str1+'i_no='+tblshedule.fieldbyname('i_no').asstring+','
        else str1:=str1+'i_no=null,';
      end else str1:=str1+'i_no=null,';

      if not tblshedule.fieldbyname('lbl_pt').isnull then
      str1:=str1+'lbl_pt='''+tblshedule.fieldbyname('lbl_pt').value+''','
      else str1:=str1+'lbl_pt='''',';
      if not tblshedule.fieldbyname('lbl_pdt').isnull then
      str1:=str1+'lbl_pdt='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('lbl_pdt').value)+''','
      else str1:=str1+'lbl_pdt=null,';
      if not tblshedule.fieldbyname('lbl_sdt').isnull then
      str1:=str1+'lbl_sdt='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('lbl_sdt').value)+''','
      else str1:=str1+'lbl_sdt=null,';
      if not tblshedule.fieldbyname('lbl_diff').isnull then
      str1:=str1+'lbl_diff='+tblshedule.fieldbyname('lbl_diff').asstring+','
      else str1:=str1+'lbl_diff=null,';
      if not tblshedule.fieldbyname('lbl_adt').isnull then
      str1:=str1+'lbl_adt='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('lbl_adt').value)+''','
      else str1:=str1+'lbl_adt=null,';
      if not tblshedule.fieldbyname('item_ldt').isnull then
      str1:=str1+'item_ldt='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('item_ldt').value)+''','
      else str1:=str1+'item_ldt=null,';
      if not tblshedule.fieldbyname('item_rdt').isnull then
      str1:=str1+'item_rdt='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('item_rdt').value)+''','
      else str1:=str1+'item_rdt=null,';
      if not tblshedule.fieldbyname('item_adt').isnull then
      str1:=str1+'item_adt='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('item_adt').value)+''','
      else str1:=str1+'item_adt=null,';
      if not tblshedule.fieldbyname('a_ldt').isnull then
      str1:=str1+'a_ldt='''+formatdatetime('yyyy-MM-dd',tblshedule.fieldbyname('a_ldt').value)+''','
      else str1:=str1+'a_ldt=null,';

      //if not tblshedule.fieldbyname('diff_pak').isnull then
      //str1:=str1+'diff_pak='''+tblshedule.fieldbyname('diff_pak').value+''','
      //else str1:=str1+'diff_pak='''',';
      //if not tblshedule.fieldbyname('diff_ddt').isnull then
      //str1:=str1+'diff_ddt='''+tblshedule.fieldbyname('diff_ddt').value+''','
      //else str1:=str1+'diff_ddt='''',';
      //if not tblshedule.fieldbyname('diff_reg').isnull then
      //str1:=str1+'diff_reg='''+tblshedule.fieldbyname('diff_reg').value+''','
      //else str1:=str1+'diff_reg='''',';
      if not tblshedule.fieldbyname('iecls1').isnull then
      str1:=str1+'iecls1='''+tblshedule.fieldbyname('iecls1').value+''' '
      else str1:=str1+'iecls1='''' ';
      str1:=str1+'where pline='''+tblshedule.fieldbyname('pline').value+''' ';
      str1:=str1+'and seq='+tblshedule.fieldbyname('seq').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');      


  if xglflag='1' then begin
    with ROQuery1 do begin
      close;
      params.clear;
      params.CreateParam(ftstring,'x1',ptinput);
      params.CreateParam(ftinteger,'x2',ptinput);
      params.CreateParam(ftstring,'x3',ptinput);
      commandtext:='execute procedure sp_upd_lineplc(:x1,:x2,:x3)';
      params[0].asstring:=tblshedule.fieldbyname('pline').value;
      params[1].asinteger:=tblshedule.fieldbyname('seq').value;
      params[2].asstring:=tblshedule.fieldbyname('cstyle').value;
      execute;
    end;
    xglflag:='0';
  end;

  upd:='0';
  if tblshedule.fieldbyname('flag3').isnull then upd:='1'
  else begin
    if pos('s',tblshedule.fieldbyname('flag3').value)>0 then upd:='1'
    else if pos('h1',tblshedule.fieldbyname('flag3').value)>0 then upd:='1'
    else if tblshedule.fieldbyname('flag3').value='' then upd:='1';
  end;
  if upd='1' then begin
    if (not tblshedule.fieldbyname('cfksrq').isnull) and (not tblshedule.fieldbyname('cfwcrq').isnull) then begin
      with frmmain.ADOQuery1 do begin
        close;
        sql.Clear;
        sql.Text:='exec [ph.lwpm.wp].dbo.getlwpm :x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12';
        parameters[0].Value:=tblshedule.fieldbyname('tplant').value;
        parameters[1].Value:=tblshedule.fieldbyname('pline').value;
        parameters[2].Value:=tblshedule.fieldbyname('j_no').value;
        parameters[3].Value:=tblshedule.fieldbyname('j2_job').value;
        parameters[4].Value:=tblshedule.fieldbyname('rwo').value;
        parameters[5].Value:=tblshedule.fieldbyname('fccs').value;
        parameters[6].Value:=tblshedule.fieldbyname('acol').value;
        parameters[7].Value:=tblshedule.fieldbyname('flag3').value;
        parameters[8].Value:=tblshedule.fieldbyname('seq').value;
        parameters[9].Value:=tblshedule.fieldbyname('tshop').value;
        parameters[10].Value:=tblshedule.fieldbyname('cfksrq').value;
        parameters[11].Value:=tblshedule.fieldbyname('cfwcrq').value;
        execsql;
      end;
    end;
  end;
end;

procedure Tworksheet1.tblsheduleFlag5Change(Sender: TField);
begin
  //if not tblshedule.fieldbyname('flag5').isnull then begin
    //if tblshedule.fieldbyname('flag5').value>'' then tblsheduleqrxc.displayformat:='#0;-#0;+0'
    //else tblsheduleqrxc.displayformat:='#0;-#0;''''';
    {
    if (tblshedule.fieldbyname('flag5').value='1') or (tblshedule.fieldbyname('flag5').value='2') then begin
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'pline',ptinput);
        params.createparam(ftstring,'j_no',ptinput);
        params.createparam(ftstring,'j2_job',ptinput);
        params.createparam(ftstring,'artno',ptinput);
        params.createparam(ftstring,'acol',ptinput);
        params.createparam(ftinteger,'seq',ptinput);
        params.createparam(ftdatetime,'dt',ptinput);
        params.createparam(ftstring,'usr',ptinput);
        PARAMS.CREATEPARAM(FTDATEtime,'YQLCRQ',PTINPUT);
        PARAMS.CREATEPARAM(FTDATE,'QRLCRQ',PTINPUT);
        commandtext:='insert into tblmem(pline,j_no,j2_job,artno,acol,seq,dt,usr,YQLCRQ,QRLCRQ) values(:pline,:j_no,:j2_job,:artno,:acol,:seq,:dt,:usr,:YQLCRQ,:QRLCRQ)';
        params[0].asstring:=tblshedule.fieldbyname('pline').value;
        params[1].asstring:=tblshedule.fieldbyname('j_no').value;
        params[2].asstring:=tblshedule.fieldbyname('j2_job').value;
        params[3].asstring:=tblshedule.fieldbyname('artno').value;
        params[4].asstring:=tblshedule.fieldbyname('acol').value;
        params[5].asinteger:=tblshedule.fieldbyname('seq').value;
        params[6].asdatetime:=now;
        params[7].asstring:=frmmain.combobox1.text;
        if not tblshedule.fieldbyname('yqlcrq').isnull then
        PARAMS[8].ASDATEtime:=TBLSHEDULE.FIELDBYNAME('YQLCRQ').VALUE;
        if not tblshedule.fieldbyname('qrlcrq').isnull then
        PARAMS[9].ASDATE:=TBLSHEDULE.FIELDBYNAME('QRLCRQ').VALUE;
        execute;
      end;
    end;
    }
  //end else tblsheduleqrxc.displayformat:='#0;-#0;''''';
end;

procedure Tworksheet1.tblsheduleFlag3Change(Sender: TField);
begin
  if tblshedule.fieldbyname('flag3').isnull then begin
    if tblshedule.fieldbyname('flag3').value='3' then begin
      if tblshedule.fieldbyname('okhrq').isnull then begin
        if not tblshedule.fieldbyname('cfksrq').isnull then
          tblshedule.fieldbyname('okhrq').value:=tblshedule.fieldbyname('cfksrq').value
        else tblshedule.fieldbyname('okhrq').value:=date;
      end;
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'pline',ptinput);
        params.createparam(ftstring,'j_no',ptinput);
        params.createparam(ftstring,'j2_job',ptinput);
        params.createparam(ftstring,'artno',ptinput);
        params.createparam(ftstring,'acol',ptinput);
        params.createparam(ftinteger,'seq',ptinput);
        params.createparam(ftdate,'okhrq',ptinput);
        params.createparam(ftdate,'nkhrq',ptinput);
        params.createparam(ftdatetime,'dt',ptinput);
        params.createparam(ftinteger,'ckts',ptinput);
        commandtext:='insert into tblmem1(pline,j_no,j2_job,artno,acol,seq,okhrq,nkhrq,dt,ckts) values(:pline,:j_no,:j2_job,:artno,:acol,:seq,:okhrq,:nkhrq,:dt,:ckts)';
        params[0].asstring:=tblshedule.fieldbyname('pline').value;
        params[1].asstring:=tblshedule.fieldbyname('j_no').value;
        params[2].asstring:=tblshedule.fieldbyname('j2_job').value;
        params[3].asstring:=tblshedule.fieldbyname('artno').value;
        params[4].asstring:=tblshedule.fieldbyname('acol').value;
        params[5].asinteger:=tblshedule.fieldbyname('seq').value;
        params[6].asdate:=tblshedule.fieldbyname('okhrq').value;
        params[7].asdate:=tblshedule.fieldbyname('cfksrq').value;
        params[8].asdatetime:=now;
        params[9].asinteger:=trunc(tblshedule.fieldbyname('okhrq').value)-trunc(tblshedule.fieldbyname('cfksrq').value);
        execute;
      end;
    end;
  end;
end;

procedure Tworksheet1.N1Click(Sender: TObject);
begin
  screen.cursor:=crhourglass;
  if frmtblmem=nil then frmtblmem:=tfrmtblmem.create(self);
  with frmtblmem.clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tblmem order by pline,j_no,j2_job,artno,acol,seq';
    open;
  end;
  frmtblmem.ppreport1.print;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.N2Click(Sender: TObject);
begin
  screen.cursor:=crhourglass;
  if frmtblmem1=nil then frmtblmem1:=tfrmtblmem1.create(self);
  with frmtblmem1.clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tblmem1 order by pline,j_no,j2_job,artno,acol';
    open;
  end;
  frmtblmem1.ppreport1.print;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.N4Click(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'usr',ptinput);
    commandtext:='select r18 from tbluser where upper(usr)=:usr';
    params[0].asstring:=frmmain.combobox1.text;
    open;
    if fieldbyname('r18').value=true then begin
      if not tblshedule.fieldbyname('flag4').isnull then begin
        if tblshedule.fieldbyname('flag4').value='A' then begin
          tblshedule.edit;
          tblshedule.fieldbyname('flag4').value:='B';
          tblshedule.fieldbyname('flag401').value:='B';
          tblshedule.post;
        end else if tblshedule.fieldbyname('flag4').value='a' then
          showmessage('未確定尺碼分配，不能發放生產嘜架！')
        else showmessage('已發放生產嘜架！');
      end;
    end else showmessage('沒有權限！');
  end;
end;

procedure Tworksheet1.N5Click(Sender: TObject);
var
  jjl:double;
  str1:string;
begin
  screen.cursor:=crSQLWait;
  try
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='select distinct tplant,pline,j_no,j2_job,rwo,acol,fccs from tblshedule where yzh=0 and cfksrq<=:x1 /*and (jjl=0)*/';
      params[0].asdate:=date+15;
      open;
      first;
      while not eof do begin
        with frmmain.adoquery1 do begin
          close;
          sql.text:='select balance_lb4 from [ph.lwpm.wp]..vw_balanceinfo where factory=:x1 and linecode=:x2 and j2_job=:x3 and rwo=:x4 and qn=:x5 and bcolor=:x6';
          parameters[0].Value:=clientdataset1.FieldByName('tplant').value;
          parameters[1].Value:=clientdataset1.FieldByName('pline').value;
          parameters[2].Value:=clientdataset1.FieldByName('j2_job').value;
          parameters[3].Value:=clientdataset1.FieldByName('rwo').value;
          parameters[4].Value:=clientdataset1.FieldByName('fccs').value;
          parameters[5].Value:=clientdataset1.FieldByName('acol').value;
          open;
          if not fieldbyname('balance_lb4').isnull then jjl:=fieldbyname('balance_lb4').value
          else jjl:=0;
        end;
        {
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftfloat,'x1',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          commandtext:='update tblshedule set jjl=:x1 where tplant=:x3 and pline=:x4 and j2_job=:x5 and rwo=:x6 and acol=:x7 and fccs=:x8 and yzh=0';
          params[0].asfloat:=jjl;
          params[1].Value:=clientdataset1.FieldByName('tplant').value;
          params[2].Value:=clientdataset1.FieldByName('pline').value;
          params[3].Value:=clientdataset1.FieldByName('j2_job').value;
          params[4].Value:=clientdataset1.FieldByName('rwo').value;
          params[5].Value:=clientdataset1.FieldByName('acol').value;
          params[6].Value:=clientdataset1.FieldByName('fccs').value;
          execute;
        end;
        }
        str1:='update tblshedule set jjl='+floattostr(jjl)+' where tplant='''+clientdataset1.fieldbyname('tplant').value+''' ';
        str1:=str1+'and pline='''+clientdataset1.fieldbyname('pline').value+''' ';
        str1:=str1+'and j2_job='''+clientdataset1.fieldbyname('j2_job').value+''' ';
        str1:=str1+'and rwo='''+clientdataset1.fieldbyname('rwo').value+''' ';
        str1:=str1+'and acol='''+clientdataset1.fieldbyname('acol').value+''' ';
        str1:=str1+'and fccs='''+clientdataset1.fieldbyname('fccs').value+'''';
        if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
        application.ProcessMessages;
        next;
      end;
    end;
    {
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_swpm_reupd_sclh';
      execute;
    end;
    }
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tworksheet1.N915GAI1Click(Sender: TObject);
begin
  if frmachieving=nil then frmachieving:=tfrmachieving.create(application);
  {
  if (frmmain.eng_chn01.ItemIndex=1) then begin
    frmachieving.opt1.Items.Clear;
    with query10 do begin
      close;
      params.Clear;
      commandtext:='select * from tbl_ver_engchn where f_mod=''GAI'' and f_frm=''WGAI'' order by f_lbl_grd,f_xh';
      open;
      first;
      while not eof do begin
        if (fieldbyname('f_lbl_grd').value='LABEL') then begin
          if fieldbyname('f_xh').value=0 then frmachieving.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=1 then frmachieving.label4.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=2 then frmachieving.label1.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=3 then frmachieving.label3.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=4 then frmachieving.label2.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=5 then frmachieving.opt1.items.add(fieldbyname('f_chn').value)
          else if fieldbyname('f_xh').value=6 then frmachieving.opt1.items.add(fieldbyname('f_chn').value)
          else if fieldbyname('f_xh').value=7 then frmachieving.bitbtn1.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=8 then frmachieving.bitbtn2.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=9 then frmachieving.bitbtn3.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=10 then frmachieving.bitbtn4.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=11 then frmachieving.bitbtn5.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=12 then frmachieving.bitbtn6.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=13 then frmachieving.bitbtn7.Caption:=fieldbyname('f_chn').value;
        end else if (fieldbyname('f_lbl_grd').value='GRID') then begin
          if fieldbyname('f_xh').value=1 then frmachieving.DBGridEh1.Columns[0].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=2 then frmachieving.DBGridEh1.Columns[1].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=3 then frmachieving.DBGridEh1.Columns[2].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=4 then frmachieving.DBGridEh1.Columns[3].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=5 then frmachieving.DBGridEh1.Columns[4].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=6 then frmachieving.DBGridEh1.Columns[5].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=7 then frmachieving.DBGridEh1.Columns[6].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=8 then frmachieving.DBGridEh1.Columns[7].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=9 then frmachieving.DBGridEh1.Columns[8].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=10 then frmachieving.DBGridEh1.Columns[9].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=11 then frmachieving.DBGridEh1.Columns[10].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=12 then frmachieving.DBGridEh1.Columns[11].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=13 then frmachieving.DBGridEh1.Columns[12].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=14 then frmachieving.DBGridEh1.Columns[13].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=15 then frmachieving.DBGridEh1.Columns[14].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=16 then frmachieving.DBGridEh1.Columns[15].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=17 then frmachieving.DBGridEh1.Columns[16].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=18 then frmachieving.DBGridEh1.Columns[17].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=19 then frmachieving.DBGridEh1.Columns[18].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=20 then frmachieving.DBGridEh1.Columns[19].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=21 then frmachieving.DBGridEh1.Columns[20].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=22 then frmachieving.DBGridEh1.Columns[21].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=23 then frmachieving.DBGridEh1.Columns[22].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=24 then frmachieving.DBGridEh1.Columns[23].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=25 then frmachieving.DBGridEh1.Columns[24].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=26 then frmachieving.DBGridEh1.Columns[25].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=27 then frmachieving.DBGridEh1.Columns[26].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=28 then frmachieving.DBGridEh1.Columns[27].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=29 then frmachieving.DBGridEh1.Columns[28].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=30 then frmachieving.DBGridEh1.Columns[29].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=31 then frmachieving.DBGridEh1.Columns[30].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=32 then frmachieving.DBGridEh1.Columns[31].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=33 then frmachieving.DBGridEh1.Columns[32].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=34 then frmachieving.DBGridEh1.Columns[35].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=35 then frmachieving.DBGridEh1.Columns[36].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=36 then frmachieving.DBGridEh1.Columns[37].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=37 then frmachieving.DBGridEh1.Columns[38].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=38 then frmachieving.DBGridEh1.Columns[39].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=39 then frmachieving.DBGridEh1.Columns[40].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=40 then frmachieving.DBGridEh1.Columns[41].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=41 then frmachieving.DBGridEh1.Columns[42].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=42 then frmachieving.DBGridEh1.Columns[43].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=43 then frmachieving.DBGridEh1.Columns[44].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=44 then frmachieving.DBGridEh1.Columns[45].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=45 then frmachieving.DBGridEh1.Columns[46].Title.caption:=fieldbyname('f_chn').value+' '
          else if fieldbyname('f_xh').value=46 then frmachieving.DBGridEh1.Columns[47].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=47 then frmachieving.DBGridEh1.Columns[48].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=48 then frmachieving.DBGridEh1.Columns[49].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=49 then frmachieving.DBGridEh1.Columns[50].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=50 then frmachieving.DBGridEh1.Columns[33].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=51 then frmachieving.DBGridEh1.Columns[34].Title.caption:=fieldbyname('f_chn').value;
        end;
        //application.ProcessMessages;
        next;
      end;
    end;
  end;
  }
  //frmachieving.opt1.ItemIndex:=0;
  frmachieving.bringtofront;
  frmachieving.WindowState:=wsMaximized;
  //if pos('test',application.ExeName)>0 then frmachieving.Caption:=frmachieving.Caption+' - Test';
  frmachieving.lbl850.Caption:='';
  frmachieving.Caption:='915 GAI - EWs';//'達標 (GA) - 應用程式';
  frmachieving.dbgrideh1.Columns[15].FieldName:='MPSECT';
  frmachieving.dbgrideh1.Columns[19].FieldName:='EOT';
  frmachieving.dbgrideh1.Columns[20].FieldName:='CSECT';
  frmachieving.dbgrideh1.Columns[22].FieldName:='GSL1';
  frmachieving.dbgrideh1.Columns[34].FieldName:='PRJ1';
  frmachieving.dbgrideh1.Columns[35].FieldName:='AQTY';
  frmachieving.dbgrideh1.Columns[36].FieldName:='DBL';
  frmachieving.dbgrideh1.Columns[49].FieldName:='XLBX';
  frmachieving.dbgrideh1.Columns[50].FieldName:='XLBX_LJ1';
  frmachieving.dbgrideh1.Columns[51].FieldName:='XLBX_LJ';
  frmachieving.dbgrideh1.Columns[52].FieldName:='YCBX';
  frmachieving.dbgrideh1.Columns[53].FieldName:='YCBX_LJ1';
  frmachieving.dbgrideh1.Columns[54].FieldName:='YCBX_LJ';
  frmachieving.dbgrideh1.Columns[55].FieldName:='ZYCBX';
  frmachieving.dbgrideh1.Columns[56].FieldName:='ZYCBX_LJ1';
  frmachieving.dbgrideh1.Columns[57].FieldName:='ZYCBX_LJ';
  frmachieving.dbgrideh1.Columns[71].FieldName:='EFF2';
  frmachieving.dbgrideh1.Columns[73].FieldName:='EFF3';
end;

procedure Tworksheet1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmmain.tbn7.Visible:=false;
  frmmain.tbn8.Visible:=false;
  frmmain.tbn9.Visible:=false;
  frmmain.tbn10.Visible:=false;
  frmmain.tbn11.Visible:=false;
  frmmain.tbs3.visible:=false;
  if frmprint5<>nil then frmprint5:=nil;
  action:=cafree;
  worksheet1:=nil;
end;

procedure Tworksheet1.FixQN1Click(Sender: TObject);
var
  s1:string;
begin
  s1:=inputbox('Need to amend the QN#?','Please input new QN#:','');
  if s1>'' then begin
    with tblshedule do begin
      edit;
      fieldbyname('fccs').value:=s1;
      post;
    end;
  end;
end;

procedure Tworksheet1.FixQNGAIdd1Click(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_swpm_fixqndseq(:x1,:x2)';
    params[0].asstring:=tblshedule.fieldbyname('pline').value;
    params[1].asinteger:=tblshedule.fieldbyname('seq').value;
    execute;
  end;
  showmessage('OK!');
end;

procedure Tworksheet1.FormActivate(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'usr',ptinput);
    commandtext:='select r7,r39,r77,rmp,r_lbl from tbluser where upper(usr)=:usr';
    params[0].asstring:=frmmain.combobox1.text;
    open;
    if fieldbyname('r7').value=true then begin
      frmmain.tbn7.Visible:=true;
      frmmain.tbn8.Visible:=true;
      frmmain.tbn9.Visible:=true;
      frmmain.tbn10.Visible:=false;
      frmmain.tbs3.visible:=true;
      bitbtn1.Enabled:=true;
      bitbtn2.Enabled:=true;
      tblshedule.ReadOnly:=false;
      if fieldbyname('r39').value=true then begin
        cxView1yzh.Options.Editing:=true;
        cxView1pd8.Options.Editing:=true;
      end else begin
        cxView1yzh.Options.Editing:=false;
        cxView1pd8.Options.Editing:=false;
      end;
      if fieldbyname('r77').value=true then
        frmmain.tbn11.visible:=true
      else frmmain.tbn11.Visible:=false;
      if fieldbyname('rmp').value=true then begin
        cancelx1.visible:=true;
        cancels1.visible:=true;
        cancelex1.visible:=true;
        canceles1.visible:=true;
        classbysize1.visible:=true;
        updaterap41.visible:=true;
        updatejkcolumns1.visible:=true;
        ale1.visible:=true;
        n5.visible:=true;
        cancelpfs1.visible:=true;
        cancelpfx1.visible:=true;
      end else begin
        cancelx1.visible:=false;
        cancels1.visible:=false;
        cancelex1.visible:=false;
        canceles1.visible:=false;
        classbysize1.visible:=false;
        updaterap41.visible:=false;
        updatejkcolumns1.visible:=false;
        ale1.visible:=false;
        n5.visible:=false;
        cancelpfs1.visible:=false;
        cancelpfx1.visible:=false;
      end;
    //end else if fieldbyname('r_lbl').value=true then begin
    //  cxview1lbl_adt.Options.Editing:=true;
    end else begin
      frmmain.tbn7.Visible:=false;
      frmmain.tbn8.Visible:=false;
      frmmain.tbn9.Visible:=false;
      frmmain.tbn10.Visible:=false;
      frmmain.tbn11.Visible:=false;
      frmmain.tbs3.visible:=false;
      bitbtn1.Enabled:=false;
      bitbtn2.Enabled:=false;
      tblshedule.ReadOnly:=true;
    end;
  end;
end;

procedure Tworksheet1.tblsheduleCalcFields(DataSet: TDataSet);
begin
  //{
  //tblshedule.fieldbyname('cwono').value:=tblshedule.fieldbyname('j2_job').value+'-'+tblshedule.fieldbyname('cwo').value+'-'+tblshedule.fieldbyname('rwo').value+'-'+tblshedule.fieldbyname('fccs').value;
  if (copy(tblshedule.fieldbyname('flag6').value,1,2)='B1') or (copy(tblshedule.fieldbyname('flag6').value,1,2)='B2')
  or (copy(tblshedule.fieldbyname('flag6').value,1,2)='B3') or (copy(tblshedule.fieldbyname('flag6').value,1,2)='B4')
  or (copy(tblshedule.fieldbyname('flag6').value,1,2)='B8') then
  tblshedule.fieldbyname('fw_wdn').value:=9 else tblshedule.fieldbyname('fw_wdn').value:=6;
  {
  with frmmain.adoquery1 do begin
    close;
    sql.text:='select max(sp_app2) as smpl_st from phdb..tbl_carte_sopc1 where workorderno='''+tblshedule.fieldbyname('j2_job').value+''' and phcolor='''+tblshedule.fieldbyname('acol').value+'''';
    open;
    if not fieldbyname('smpl_st').isnull then tblshedule.fieldbyname('smpl_st').value:=fieldbyname('smpl_st').value;
  end;
  }

end;

procedure Tworksheet1.tblsheduleCfksrqChange(Sender: TField);
var
  cfksrq,cfwcrq:tdatetime;
  cfksjs,cfwcjs,week1:integer;
  phiszjs,zktd,zhjs,float1,shjs:double;
  calcwc:string;
begin
  if (not tblshedule.fieldbyname('cfksrq').isnull) and  (not tblshedule.fieldbyname('cfksjs').isnull) then begin
    cfksrq:=tblshedule.fieldbyname('cfksrq').value;
    week1:=calcwkno(cfksrq);
    if not tblshedule.fieldbyname('cfksjs').isnull then
    cfksjs:=tblshedule.fieldbyname('cfksjs').value else cfksjs:=0;
    if tblshedule.fieldbyname('phiszjs').isnull then
    phiszjs:=tblshedule.fieldbyname('phiszjs').value else phiszjs:=0;
    if tblshedule.fieldbyname('shjs').isnull then
    shjs:=tblshedule.fieldbyname('shjs').value else shjs:=0;
    if tblshedule.fieldbyname('zktd').isnull then
    zktd:=tblshedule.fieldbyname('zktd').value else zktd:=0;
    if not tblshedule.fieldbyname('zhjs').isnull then
    zhjs:=tblshedule.fieldbyname('zhjs').value else zhjs:=0;
    if zhjs<0 then zhjs:=(-1.0)*zhjs;
    float1:=phiszjs+zktd-zhjs+shjs;
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
      params.createparam(ftfloat,'x3',ptinput);
      params.createparam(ftfloat,'x4',ptinput);
      params.createparam(ftfloat,'x5',ptinput);
      params.createparam(ftfloat,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      commandtext:='select * from prd_wcrq_1(:x1,:x2,:x3,:x4,:x5,:x6,:x7)';
      params[0].asstring:=tblshedule.fieldbyname('pline').value;
      params[1].asdate:=cfksrq;
      params[2].asfloat:=cfksjs;
      params[3].asfloat:=float1;
      params[4].asfloat:=0;
      params[5].asfloat:=0;
      params[6].asinteger:=tblshedule.fieldbyname('seq').value;
      open;
      cfwcrq:=fieldbyname('o_wcrq').value;
      cfwcjs:=fieldbyname('o_wcjs').value;
    end;
    tblshedule.fieldbyname('week').value:=week1;
    tblshedule.fieldbyname('cfwcrq').value:=cfwcrq;
    tblshedule.fieldbyname('cfwcjs').value:=cfwcjs;
    tblshedule.fieldbyname('tzlcrq').value:=cfwcrq+1;
  end;
end;

procedure Tworksheet1.FormDeactivate(Sender: TObject);
begin
  label3.caption:='';
end;

procedure Tworksheet1.FormShow(Sender: TObject);
begin
  //showmessage(memo2.lines.strings[0]);
  flflag:='';
  xglflag:='0';
  label3.caption:='';
  combobox3.items.clear;
  combobox4.items.clear;
  combobox5.Items.Clear;

  cxview1.bands[6].visible:=false;


  cxview1.bands[74].visible:=false;
  cxview1.bands[33].visible:=false;
  cxview1.bands[11].visible:=false;
  cxview1.bands[12].visible:=false;
  cxview1.bands[13].visible:=false;
  cxview1.bands[35].visible:=false;
  cxview1.bands[48].visible:=false;
  cxview1.bands[50].visible:=false;

  //cxview1.bands[270].visible:=false;

  cxview1.bands[268].visible:=false;

  cxview1.bands[279].visible:=false;

  cxview1.bands[280].visible:=false;
  cxview1.bands[281].visible:=false;
  cxview1.bands[285].visible:=false;
  cxview1.bands[282].visible:=false;

  cxview1.bands[201].visible:=false;
  cxview1.bands[37].visible:=false;
  cxview1.bands[15].visible:=false;

  cxview1.bands[292].visible:=false;


  //測試:
  {
  cxview1.bands[221].visible:=false;
  cxview1.bands[224].visible:=false;
  cxview1.bands[226].visible:=false;
  cxview1.bands[229].visible:=false;
  cxview1.bands[30].visible:=false;
  cxview1.bands[141].visible:=false;
  cxview1.bands[143].visible:=false;
  cxview1.bands[145].visible:=false;
  cxview1.bands[234].visible:=false;
  }
  cxview1.bands[243].visible:=false;
  cxview1.bands[245].visible:=false;

  cxview1.bands[101].visible:=false;
  cxview1.bands[103].visible:=false;

  //cxview1.bands[113].visible:=false;
  cxview1.bands[125].visible:=false;
  cxview1.bands[211].visible:=false;
  cxview1.bands[217].visible:=false;
  //cxview1.bands[169].visible:=false;
  {
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct dbzs from tblshedule where yzh=0 and (dbzs is not null)';
    open;
    first;
    while not eof do begin
      combobox4.items.add(fieldbyname('dbzs').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct flag6 from tblshedule where yzh=0 and (flag6 is not null)';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('flag6').value);
      application.ProcessMessages;
      next;
    end;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct flag2 from tblshedule where yzh=0 and (flag2 is not null)';
    open;
    first;
    while not eof do begin
      combobox5.items.add(fieldbyname('flag2').value);
      application.ProcessMessages;
      next;
    end;
  end;
  }
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    {
    if fieldbyname('qncpy').value=true then begin
      chk6.Visible:=true;
      chk2.Visible:=true;
      //chk4.Visible:=true;
    end else begin
      chk6.Visible:=false;
      chk2.Visible:=false;
      //chk4.Visible:=false;
    end;
    }
    if fieldbyname('r_wf').value=true then begin
      cxview1.bands[113].visible:=true;
      cxview1.bands[114].visible:=true;
    end else begin
      cxview1.bands[113].visible:=false;
      cxview1.bands[114].visible:=false;
    end;
    if fieldbyname('r37').value=true then begin
      cancelx1.Visible:=true;
      cancels1.Visible:=true;
      if fieldbyname('r38').value=true then transitflow1.Visible:=true
      else transitflow1.Visible:=false;
    end else begin
      cancelx1.Visible:=false;
      cancels1.Visible:=false;
      transitflow1.Visible:=false;
    end;
    if fieldbyname('printfj').value=true then printticketforfj1.Visible:=true
    else printticketforfj1.Visible:=false;
    if fieldbyname('r_fixqn').value=true then begin
      fixqn1.Visible:=true;
      fixqngaidd1.Visible:=true;
    end else begin
      fixqn1.Visible:=false;
      fixqngaidd1.Visible:=false;
    end;
    if fieldbyname('r7').value=false then begin
      //dbgrideh1.ReadOnly:=true;
      tblshedule.ReadOnly:=true;
      frmmain.tbn7.Visible:=false;
      frmmain.tbn9.Visible:=false;
      frmmain.tbn10.Visible:=false;
      frmmain.tbn11.Visible:=false;
    end else begin
      tblshedule.ReadOnly:=false;
      if fieldbyname('r9').value=false then cxview1qty.Options.Editing:=false;//ReadOnly:=true;
      if fieldbyname('r10').value=false then begin
        cxview1lstrs.Options.Editing:=false;//ReadOnly:=true;
        cxview1trs.Options.Editing:=false;//ReadOnly:=true;
        cxview1sjyc.Options.Editing:=false;//ReadOnly:=true;
        cxview1tbu.Options.Editing:=false;//ReadOnly:=true;
        cxview1flag2.Options.Editing:=false;//Readonly:=true;
        cxview1iecls.Options.Editing:=false;//ReadOnly:=true;
        cxview1iecls1.Options.Editing:=false;//Readonly:=true;
        cxview1tmu.Options.Editing:=false;//Readonly:=true;
        cxview1dta.options.editing:=false;
      end;
      if fieldbyname('r11').value=false then cxview1flag5.Options.Editing:=false;//ReadOnly:=true;
      if fieldbyname('r15').value=false then cxview1flag1.Options.Editing:=false;//ReadOnly:=true;
      if fieldbyname('r16').value=false then cxview1rwo.Options.Editing:=false;//ReadOnly:=true;
      if fieldbyname('r17').value=false then cxview1lflag.Options.Editing:=false;//ReadOnly:=true;
      if fieldbyname('r35').value=false then begin
        cxview1xc4.Options.Editing:=false;//ReadOnly:=true;
        cxview1fyfs.Options.Editing:=false;//ReadOnly:=true;
      end;
      if fieldbyname('r_lbl').value=false then cxview1lbl_adt.Options.Editing:=false
      else cxview1lbl_adt.Options.Editing:=true;
      if fieldbyname('r_defwf').value=false then cxview1lstrs.Options.Editing:=false
      else cxview1lstrs.Options.Editing:=true;
    end;
  end;
  if lbl850.caption<>'SPE' then
  worksheet1.Caption:=worksheet1.Caption+' - EWs'
  else worksheet1.Caption:=worksheet1.Caption+' - AL';
end;

procedure Tworksheet1.ClientDataSet1ReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  showmessage(e.message);
end;

procedure Tworksheet1.ExecCalc(var pline: String; var seq: Integer);
var
  float1:double;
  dt1,cfwcrq,tzlcrq,yqlcrq,qrlcrq:tdatetime;
  wkno1,rqxc,qrxc:integer;
  str1:string;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'pline',ptinput);
    params.createparam(ftinteger,'seq',ptinput);
    commandtext:='select * from tblshedule where pline=:pline and seq>=:seq and yzh=false';
    params[0].asstring:=pline;
    params[1].asinteger:=seq;
    open;
    first;
    while not eof do begin
      float1:=fieldbyname('bzjs').value/20;
      if not fieldbyname('cfksrq').isnull then begin
        dt1:=fieldbyname('cfksrq').value;
        wkno1:=calcwkno(dt1);
      end
      else wkno1:=0;
      if not fieldbyname('cfwcrq').isnull then begin
        cfwcrq:=fieldbyname('cfwcrq').value;
        tzlcrq:=cfwcrq+ceiling(float1);
      end
      else tzlcrq:=0;
      if not fieldbyname('yqlcrq1').isnull then begin
        yqlcrq:=fieldbyname('yqlcrq1').value;
        rqxc:=trunc(yqlcrq)-trunc(tzlcrq);
      end else if not fieldbyname('yqlcrq').isnull then begin
        yqlcrq:=fieldbyname('yqlcrq').value;
        rqxc:=trunc(yqlcrq)-trunc(tzlcrq);
      end
      else rqxc:=0;
      {
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftinteger,'week',ptinput);
        params.createparam(ftdate,'tzlcrq',ptinput);
        params.createparam(ftinteger,'rqxc',ptinput);
        params.createparam(ftstring,'pline',ptinput);
        params.createparam(ftinteger,'seq',ptinput);
        commandtext:='update tblshedule set week=:week,tzlcrq=:tzlcrq,rqxc=:rqxc where pline=:pline and seq=:seq';
        if wkno1>0 then
        params[0].asinteger:=wkno1;
        if tzlcrq>0 then
        params[1].asdate:=tzlcrq;
        params[2].asinteger:=rqxc;
        params[3].asstring:=pline;
        params[4].asinteger:=clientdataset1.fieldbyname('seq').value;
        execute;
      end;
      }
      str1:='update tblshedule set ';
      if wkno1>0 then str1:=str1+'week='+inttostr(wkno1)+','
      else str1:=str1+'week=0,';
      if tzlcrq>0 then str1:=str1+'tzlcrq='+formatdatetime('yyyy-MM-dd',tzlcrq)+','
      else str1:=str1+'tzlcrq=null,';
      str1:=str1+'rqxc='+inttostr(rqxc)+' where pline='''+pline+''' and seq='+clientdataset1.fieldbyname('seq').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');      

      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tworksheet1.tblsheduleAfterOpen(DataSet: TDataSet);
begin
  //(tblshedule.fieldbyname('lstrs') as tfloatfield).DisplayFormat:='#0.00;;0.00';
  (tblshedule.fieldbyname('phiszjs') as tfloatfield).DisplayFormat:='#0.00;;0.00';
  (tblshedule.fieldbyname('zjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('zktd') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('sclhjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('shjs') as tfloatfield).DisplayFormat:='#0.00;;0.00';
  (tblshedule.fieldbyname('qyjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('zhjs') as tfloatfield).DisplayFormat:='#0.0;;0.0';
  (tblshedule.fieldbyname('jxjs') as tfloatfield).DisplayFormat:='#0.00;;0.00';
  (tblshedule.fieldbyname('sjrs') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('sjyc') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('tbu') as tfloatfield).displayformat:='#0.00';
  (tblshedule.fieldbyname('bzl') as tfloatfield).displayformat:='#0.00';
  (tblshedule.fieldbyname('jjl') as tfloatfield).displayformat:='#0.00';
  (tblshedule.fieldbyname('jhl') as tfloatfield).DisplayFormat:='#0.00;;''';
  (tblshedule.fieldbyname('ckjs') as tfloatfield).DisplayFormat:='#0.0;;''';
  (tblshedule.fieldbyname('ysjhl') as tfloatfield).DisplayFormat:='#0.00;;''';
  (tblshedule.fieldbyname('tmu') as tfloatfield).DisplayFormat:='#0.0000;;''';
  (tblshedule.fieldbyname('cfksjs') as tfloatfield).DisplayFormat:='#0.0';
  (tblshedule.fieldbyname('yszjs') as tfloatfield).DisplayFormat:='#0.00';
  (tblshedule.fieldbyname('sclh_bs') as tfloatfield).DisplayFormat:='#0.00';
  (tblshedule.fieldbyname('sclh_lh') as tfloatfield).DisplayFormat:='#0.00';
  (tblshedule.fieldbyname('pfrs_a') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('pfrs_a1') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('pfrs') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('awf') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('ers_a1') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('ers') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('ttlrs_a') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('ttlrs_a1') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('ttlrs') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('rsxc1') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('rsxc2') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('ttlyc_a') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('ttlyc_a1') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('ttlyc') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('ycxc1') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('ycxc2') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('pfxjs') as tfloatfield).DisplayFormat:='#0.00;;0.00';
  (tblshedule.fieldbyname('alxjs') as tfloatfield).DisplayFormat:='#0.00;;0.00';
  (tblshedule.fieldbyname('exjs') as tfloatfield).DisplayFormat:='#0.00;;0.00';
  (tblshedule.fieldbyname('sjrs_a') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('sjyc_a') as tfloatfield).displayformat:='#0.0;;0.0';
  (tblshedule.fieldbyname('pfsah') as tfloatfield).DisplayFormat:='#0.0000;;''';
  (tblshedule.fieldbyname('asah') as tfloatfield).DisplayFormat:='#0.0000;;''';
  (tblshedule.fieldbyname('esah') as tfloatfield).DisplayFormat:='#0.0000;;''';
  (tblshedule.fieldbyname('pfeff1') as tfloatfield).DisplayFormat:='#0.00;;''';
  (tblshedule.fieldbyname('pfeff2') as tfloatfield).DisplayFormat:='#0.00;;''';
  (tblshedule.fieldbyname('eeff1') as tfloatfield).DisplayFormat:='#0.00;;''';
  (tblshedule.fieldbyname('eeff2') as tfloatfield).DisplayFormat:='#0.00;;''';
  (tblshedule.fieldbyname('ysdx') as tfloatfield).DisplayFormat:='#0;;''';
  (tblshedule.fieldbyname('ysxl') as tfloatfield).DisplayFormat:='#0.00;;''';
  (tblshedule.fieldbyname('rjxl_a') as tfloatfield).DisplayFormat:='#0.00;;''';
  (tblshedule.fieldbyname('rjxl') as tfloatfield).DisplayFormat:='#0.00;;''';
  (tblshedule.fieldbyname('pf_ksjs') as tfloatfield).DisplayFormat:='#0.0';
  (tblshedule.fieldbyname('pf_wcjs') as tfloatfield).DisplayFormat:='#0.0';
  (tblshedule.fieldbyname('e_ksjs') as tfloatfield).DisplayFormat:='#0.0';
  (tblshedule.fieldbyname('e_wcjs') as tfloatfield).DisplayFormat:='#0.0';
  (tblshedule.fieldbyname('sclh_yb') as tfloatfield).DisplayFormat:='#0.00';
  (tblshedule.fieldbyname('sclh_wb') as tfloatfield).DisplayFormat:='#0.00';
  (tblshedule.fieldbyname('sclh_bb') as tfloatfield).DisplayFormat:='#0.00';
  (tblshedule.fieldbyname('sclh_xl') as tfloatfield).DisplayFormat:='#0.00';
  (tblshedule.fieldbyname('pfyc') as tfloatfield).displayformat:='#0';
  (tblshedule.fieldbyname('eyc') as tfloatfield).displayformat:='#0';
  tblsheduleqrxc.displayformat:='+#0;-#0;#0';
  (tblshedule.fieldbyname('wl_jhp') as tfloatfield).DisplayFormat:='#0.00;;''';
  (tblshedule.fieldbyname('wl_wcp') as tfloatfield).DisplayFormat:='#0.00;;''';
  //(tblshedule.fieldbyname('ex_ap') as tfloatfield).displayformat:='#0';
  //if not tblshedule.fieldbyname('flag5').isnull then begin
  //  if tblshedule.fieldbyname('flag5').value>'' then tblsheduleqrxc.displayformat:='+#0;-#0;+0'
  //  else tblsheduleqrxc.displayformat:='+#0;-#0;#0';
  //end else tblsheduleqrxc.displayformat:='+#0;-#0;#0';
  calc_somettl;
end;

procedure Tworksheet1.DBGridEh1DblClick(Sender: TObject);
var
  pstr:string;
  rpur,rmc:boolean;
begin
  screen.Cursor:=crSQLWait;
  try
  {
  //for child line (column 35 double click)
  if dbgrideh1.SelectedIndex=35 then begin
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='execute procedure sp_subline(:x1)';
      params[0].asstring:=tblshedule.fieldbyname('pline').value;
      execute;
    end;
    if frmchildline=nil then frmchildline:=tfrmchildline.Create(nil);
    with frmchildline.Query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='select * from tblsubline where pline=:x1';
      params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
      open;
    end;
    frmchildline.Show;
  end else if dbgrideh1.SelectedIndex=2 then begin
    //by Project
    if frmnote=nil then frmnote:=tfrmnote.Create(nil);
    frmnote.Caption:='Notepad for LWPM - Project';
    frmnote.Label6.Caption:='1';
    with frmnote.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_notepad where j_no='''+tblshedule.fieldbyname('j_no').value+'''';
      open;
    end;
    frmnote.Edit1.text:=tblshedule.fieldbyname('j_no').value;
    frmnote.Show;
  end else if dbgrideh1.SelectedIndex=3 then begin
    //by WO
    if frmnote=nil then frmnote:=tfrmnote.Create(nil);
    frmnote.Caption:='Notepad for LWPM - WO';
    frmnote.Label6.Caption:='2';
    with frmnote.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_notepad where j_no='''+tblshedule.fieldbyname('j_no').value+''' and j2_job='''+tblshedule.fieldbyname('j2_job').value+'''';
      open;
    end;
    frmnote.Edit1.text:=tblshedule.fieldbyname('j_no').value;
    frmnote.Edit2.text:=tblshedule.fieldbyname('j2_job').value;
    frmnote.Show;
  end else if dbgrideh1.SelectedIndex=5 then begin
    //by RWO
    if frmnote=nil then frmnote:=tfrmnote.Create(nil);
    frmnote.Caption:='Notepad for LWPM - RWO/Factory Start Date';
    frmnote.Label6.Caption:='4';
    with frmnote.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_notepad where j_no='''+tblshedule.fieldbyname('j_no').value+''' and j2_job='''+tblshedule.fieldbyname('j2_job').value+'''';
      commandtext:=commandtext+' and cstyle='''+tblshedule.fieldbyname('cstyle').value+'''';
      open;
    end;
    frmnote.Edit1.text:=tblshedule.fieldbyname('j_no').value;
    frmnote.Edit2.text:=tblshedule.fieldbyname('j2_job').value;
    frmnote.edit3.text:=tblshedule.fieldbyname('rwo').value;
    frmnote.Show;
  end else if dbgrideh1.SelectedIndex=8 then begin
    //by Cust style
    if frmnote=nil then frmnote:=tfrmnote.Create(nil);
    frmnote.Caption:='Notepad for LWPM - Cust Style';
    frmnote.Label6.Caption:='3';
    with frmnote.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_notepad where j_no='''+tblshedule.fieldbyname('j_no').value+''' and j2_job='''+tblshedule.fieldbyname('j2_job').value+'''';
      commandtext:=commandtext+' and cstyle='''+tblshedule.fieldbyname('cstyle').value+'''';// and rwo='''+tblshedule.fieldbyname('rwo').value+'''';
      open;
    end;
    frmnote.Edit1.text:=tblshedule.fieldbyname('j_no').value;
    frmnote.Edit2.text:=tblshedule.fieldbyname('j2_job').value;
    //frmnote.edit3.text:=tblshedule.fieldbyname('rwo').value;
    frmnote.Show;
  end else if dbgrideh1.SelectedIndex=6 then begin
    //by LW
    if frmnote=nil then frmnote:=tfrmnote.Create(nil);
    frmnote.Caption:='Notepad for LWPM - QN';
    frmnote.Label6.Caption:='5';
    with frmnote.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_notepad where j_no='''+tblshedule.fieldbyname('j_no').value+''' and j2_job='''+tblshedule.fieldbyname('j2_job').value+'''';
      commandtext:=commandtext+' and cstyle='''+tblshedule.fieldbyname('cstyle').value+''' and rwo='''+tblshedule.fieldbyname('rwo').value+'''';
      commandtext:=commandtext+' and pline='''+tblshedule.fieldbyname('pline').value+''' and pseq='+tblshedule.fieldbyname('seq').asstring;
      open;
    end;
    frmnote.Edit1.text:=tblshedule.fieldbyname('j_no').value;
    frmnote.Edit2.text:=tblshedule.fieldbyname('j2_job').value;
    frmnote.edit3.text:=tblshedule.fieldbyname('rwo').value;
    frmnote.edit4.text:=tblshedule.fieldbyname('fccs').value;
    frmnote.Show;
  end else if dbgrideh1.SelectedIndex=29 then begin
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
      open;
      if not fieldbyname('rmc').isnull then rmc:=fieldbyname('rmc').value;
      if not fieldbyname('rpur').isnull then rpur:=fieldbyname('rpur').value;
    end;
    if (rmc or rpur) then begin
    if frmcurrstart=nil then frmcurrstart:=tfrmcurrstart.Create(nil);
    with frmcurrstart.Query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from tbl_rwofdt where j_no=:x1 and j2_job=:x2 and rwo=:x3 and acol=:x4';
      params[0].asstring:=tblshedule.fieldbyname('j_no').value;
      params[1].asstring:=tblshedule.fieldbyname('j2_job').value;
      params[2].asstring:=tblshedule.fieldbyname('rwo').value;
      params[3].asstring:=tblshedule.fieldbyname('acol').value;
      open;
      if not fieldbyname('sby').isnull then frmcurrstart.CEdit1.Value:=fieldbyname('sby').value
      else frmcurrstart.CEdit1.Value:=0;
      if not fieldbyname('cfddt').isnull then frmcurrstart.DateEdit1.Date:=fieldbyname('cfddt').value
      else frmcurrstart.DateEdit1.Text:='';
      if not fieldbyname('knote').isnull then frmcurrstart.Memo1.Lines.Add(fieldbyname('knote').value)
      else frmcurrstart.Memo1.Lines.clear;
    end;
    if rmc then begin
      frmcurrstart.CEdit1.ReadOnly:=false;
      frmcurrstart.DateEdit1.ReadOnly:=false;
      frmcurrstart.Memo1.ReadOnly:=false;
      frmcurrstart.DBGridEh1.ReadOnly:=true;
      frmcurrstart.bitbtn1.Enabled:=false;
    end else begin
      frmcurrstart.CEdit1.ReadOnly:=true;
      frmcurrstart.DateEdit1.ReadOnly:=true;
      frmcurrstart.Memo1.ReadOnly:=true;
      frmcurrstart.DBGridEh1.ReadOnly:=false;
      frmcurrstart.bitbtn1.Enabled:=true;
    end;
    frmcurrstart.Show;
    end;
  end else if dbgrideh1.SelectedIndex=101 then begin
    if frmlwstart=nil then frmlwstart:=tfrmlwstart.Create(nil);
    with frmlwstart.Query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      commandtext:='select * from tbl_astable where j_no=:x1 and j2_job=:x2 and rwo=:x3';
      params[0].asstring:=tblshedule.fieldbyname('j_no').value;
      params[1].asstring:=tblshedule.fieldbyname('j2_job').value;
      params[2].asstring:=tblshedule.fieldbyname('rwo').value;
      open;
    end;
    frmlwstart.Show;
  end else if dbgrideh1.SelectedIndex=14 then begin
    if frmlwo=nil then frmlwo:=tfrmlwo.create(nil);
    with query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_tbllwo(:x1,:x2)';
      params[0].asstring:=tblshedule.fieldbyname('pline').value;
      params[1].asinteger:=tblshedule.fieldbyname('seq').value;
      execute;
    end;
    with frmlwo.Query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tbl_lwo where pline=:x1 and seq=:x2';
      params[0].asstring:=tblshedule.fieldbyname('pline').value;
      params[1].asinteger:=tblshedule.fieldbyname('seq').value;
      open;
    end;
    frmlwo.dbtext1.DataSource:=DataSource1;
    frmlwo.dbtext2.DataSource:=DataSource1;
    frmlwo.dbtext3.DataSource:=DataSource1;
    frmlwo.dbtext4.DataSource:=DataSource1;
    frmlwo.dbtext5.DataSource:=DataSource1;
    frmlwo.dbtext6.DataSource:=DataSource1;
    frmlwo.dbtext7.DataSource:=DataSource1;
    frmlwo.show;
  end else if dbgrideh1.SelectedIndex=10 then begin
   if frmrwotrans=nil then frmrwotrans:=tfrmrwotrans.create(nil);
   with clientdataset1 do begin
     close;
     params.clear;
     params.createparam(ftstring,'x1',ptinput);
     params.createparam(ftstring,'x2',ptinput);
     params.createparam(ftstring,'x3',ptinput);
     params.createparam(ftstring,'x4',ptinput);
     commandtext:='execute procedure sp_rtrs1(:x1,:x2,:x3,:x4)';
     params[0].asstring:=tblshedule.fieldbyname('tplant').value;
     params[1].asstring:=tblshedule.fieldbyname('j_no').value;
     params[2].asstring:=tblshedule.fieldbyname('j2_job').value;
     params[3].asstring:=tblshedule.fieldbyname('rwo').value;
     execute;
   end;
   with frmrwotrans.Query1 do begin
     close;
     params.clear;
     params.createparam(ftstring,'x1',ptinput);
     params.createparam(ftstring,'x2',ptinput);
     params.createparam(ftstring,'x3',ptinput);
     params.createparam(ftstring,'x4',ptinput);
     commandtext:='select * from tbl_rtrs1 where tplant=:x1 and j_no=:x2 and j2_job=:x3 and rwo=:x4';
     params[0].asstring:=tblshedule.fieldbyname('tplant').value;
     params[1].asstring:=tblshedule.fieldbyname('j_no').value;
     params[2].asstring:=tblshedule.fieldbyname('j2_job').value;
     params[3].asstring:=tblshedule.fieldbyname('rwo').value;
     open;
   end;
    frmrwotrans.dbtext1.DataSource:=DataSource1;
    frmrwotrans.dbtext2.DataSource:=DataSource1;
    frmrwotrans.dbtext3.DataSource:=DataSource1;
    frmrwotrans.dbtext4.DataSource:=DataSource1;
    frmrwotrans.dbtext5.DataSource:=DataSource1;
    frmrwotrans.show;
  end;
  }
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tworksheet1.tblsheduleLFLAGChange(Sender: TField);
var
  pline,lflag:string;
  seq:integer;
  oysjhl:double;
begin
  //if (copy(tblshedule.fieldbyname('pline').value,1,1)='T') or (tblshedule.fieldbyname('pline').value='PPWS') then begin
  if (copy(tblshedule.fieldbyname('pline').value,1,4)<>'S.OS') and (copy(tblshedule.fieldbyname('pline').value,1,3)<>'RSB') then begin
    if not tblshedule.fieldbyname('lflag').isnull then begin
      if (copy(tblshedule.fieldbyname('lflag').value,1,1)='!') or (copy(tblshedule.fieldbyname('lflag').value,1,1)='^') then flflag:='';
      lflag:=flflag+tblshedule.fieldbyname('lflag').value;
      if ((copy(lflag,1,1)='!') or (copy(lflag,1,1)='^')) then lflag:=copy(lflag,2,5);
      if lflag>'0' then begin
        pline:=tblshedule.fieldbyname('pline').value;
        seq:=tblshedule.fieldbyname('seq').value;
        with ROQuery1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftinteger,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          if pos('S.T',pline)>0 then
          commandtext:='select * from sp_jsdxl_sim(:x1,:x2,:x3)'
          else commandtext:='select * from sp_jsdxl(:x1,:x2,:x3)';
          params[0].asstring:=pline;
          params[1].asinteger:=seq;
          params[2].asstring:=lflag;
          open;
          oysjhl:=fieldbyname('o_ysjhl').value;
        end;
        tblshedule.fieldbyname('ysjhl').value:=oysjhl;
        tblshedule.fieldbyname('ysjhl').onchange:=tblsheduletmuchange;
      end;
      if xglflag='0' then xglflag:='1';
    end;
  end;
end;

procedure Tworksheet1.tblsheduleLOCKCFKSChange(Sender: TField);
begin
  if tblshedule.fieldbyname('a_aksrq').isnull then begin
    if tblshedule.fieldbyname('lockcfks').value=true then begin
      if frmlockcfks=nil then frmlockcfks:=tfrmlockcfks.create(nil);
      frmlockcfks.show;
    end;
  end;
end;

procedure Tworksheet1.BitBtn5Click(Sender: TObject);
begin
  screen.cursor:=crhourglass;
  if frmlastorders=nil then frmlastorders:=tfrmlastorders.Create(nil);
  frmlastorders.Caption:='Last Order(s) Print';
  frmlastorders.Label1.Caption:='Last Order(s)';
  frmlastorders.Show;
  screen.Cursor:=crDefault;
end;

procedure Tworksheet1.BitBtn6Click(Sender: TObject);
var
  tm:tdatetime;
begin
  tm:=now;
  if edit6.text>'' then begin
    if (edit6.text<>'ALL') and (edit6.text<>'CN') and (edit6.text<>'GX') then begin
      if pos('SIM',edit4.text)>0 then exit;
      if frmcapacitygap=nil then frmcapacitygap:=tfrmcapacitygap.create(nil);
      with frmcapacitygap.query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        commandtext:='execute procedure sp_swpm_simws(:x1,:x2,:x3,:x4)';
        params[0].asdatetime:=tm;
        params[1].asstring:=edit6.text;
        params[2].asstring:=edit4.text;
        params[3].asstring:='';
        execute;
      end;
      frmcapacitygap.show;
      with frmcapacitygap.query1 do begin
        close;
        params.clear;
        params.createparam(ftdatetime,'x1',ptinput);
        commandtext:='select * from tbl_simws where tm=:x1 order by seq';
        params[0].asdatetime:=tm;
        open;
      end;
    end else showmessage('Please choose a single factory!');
  end;
end;

procedure Tworksheet1.BitBtn8Click(Sender: TObject);
begin
  screen.cursor:=crhourglass;
  if frmlastorders=nil then frmlastorders:=tfrmlastorders.Create(nil);
  frmlastorders.Caption:='Preparing for Next Order(s) Print';
  frmlastorders.Label1.Caption:='Next Order(s)';
  frmlastorders.Show;
  screen.Cursor:=crDefault;
end;

procedure Tworksheet1.BitBtn9Click(Sender: TObject);
var
  tm:tdatetime;
begin
  tm:=now;
  if edit2.text>'' then begin
    if pos('.',edit2.text)>0 then exit;
    if frmlockedqn=nil then frmlockedqn:=tfrmlockedqn.create(nil);
    with frmlockedqn.query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='execute procedure sp_swpm_lockqn(:x1,:x2)';
      params[0].asdatetime:=tm;
      params[1].asstring:=edit2.text;
      execute;
    end;
    frmlockedqn.show;
    with frmlockedqn.query1 do begin
      close;
      params.clear;
      params.createparam(ftdatetime,'x1',ptinput);
      commandtext:='select * from tbl_lockqn where tm=:x1 order by seq';
      params[0].asdatetime:=tm;
      open;
    end;
  end else showmessage('Please choose a AL# with locked QN(s)!');
  //showmessage('Under development!');
end;

procedure Tworksheet1.calc_somettl;
var
  cust,pline,tshop,cstyle,tplant,sfilter1:string;
begin
    cust:=edit1.text;
    pline:=edit2.text;
    tshop:=edit4.text;
    cstyle:=edit5.text;
    tplant:=edit6.text;
    //showmessage(cxview1.DataController.Filter.FilterText);
    with clientdataset2 do begin
      close;
      params.clear;
      if chk7.Checked then params.createparam(ftdate,'x1',ptinput);
      commandtext:='select count(distinct j_no) as c1,count(distinct j2_job) as c2,count(distinct cstyle) as c3,count(distinct pline) as c4,count(distinct acol) as c5 from tblshedule where 1=1';
      if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
      if cust>'' then commandtext:=commandtext+' and j_no='''+cust+'''';
      if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
      if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
      if tplant>'' then begin
        if tplant<>'ALL' then begin
          if edit6.text<>'CN' then begin
            if edit6.text<>'GX' then
              commandtext:=commandtext+' and tplant='''+edit6.text+''''
            else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
          end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
        end;
      end;
      if combobox1.text>'' then commandtext:=commandtext+' and grp='''+combobox1.text+'''';
      if edit7.text>'' then commandtext:=commandtext+' and j_no like '''+edit7.text+'%''';
      if combobox2.text>'' then commandtext:=commandtext+' and flag6 like '''+combobox2.text+'%''';
      if combobox3.text>'' then commandtext:=commandtext+' and flag6='''+combobox3.text+'''';
      if combobox4.text>'' then commandtext:=commandtext+' and dbzs='''+combobox4.text+'''';
      if edit3.text>'' then commandtext:=commandtext+' and acol='''+edit3.text+'''';
      if edit9.text>'' then commandtext:=commandtext+' and j2_job='''+edit9.text+'''';
      if combobox5.text>'' then commandtext:=commandtext+' and flag2='''+combobox5.text+'''';
      if chk1.Checked then commandtext:=commandtext+' and ((substr(lflag,1,1) in (''!''))) and (substr(pline,1,2) not in (''SG'',''PS'',''NSS'',''RSS'',''SB'')) '
                                       +'and ((fccs not like ''%u%'') and (fccs not like ''%d%'') and (fccs not like ''%D%''))';
      if chk2.Checked then commandtext:=commandtext+' and ((fccs like ''%u%'') or (fccs like ''%d%'') or (fccs like ''%D%''))';
      if chk7.Checked then commandtext:=commandtext+' and flag4 in (''a'') and tshop not in (''NSB'',''RSB'',''PPW'',''SLSIM'',''RXSIM'',''GGSIM'',''CLSIM'') and cfksrq>:x1';//+formatdatetime('yyyy-MM-dd',date+20);
      if chk13.Checked then commandtext:=commandtext+' and flag4 in (''A'') and tshop not in (''NSB'',''RSB'',''PPW'',''SLSIM'',''RXSIM'',''GGSIM'',''CLSIM'')';//+formatdatetime('yyyy-MM-dd',date+20);
      //if chk_exit.Checked then commandtext:=commandtext+' and yzh=1';
      if chk8.Checked then commandtext:=commandtext+' and yzh=1';
      if chk5.Checked then commandtext:=commandtext+' and (pline like ''%OS%'')';
      if chk6.Checked then commandtext:=commandtext+' and flag3 like ''%s%'' and flag3<>''1s'' and substr(qnf,1,1)=''m''';
      if edit8.text>'' then commandtext:=commandtext+' and upper(jhrs) like '''+edit8.text+'%''';
      if (chk1.Checked or chk2.Checked or chk4.Checked) then commandtext:=commandtext+' and pline not in (''T056F'',''T057F'')';
      if dateedit1.date>0 then commandtext:=commandtext+' and cfwcrq>='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+'''';
      if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<='''+formatdatetime('yyyy-MM-dd',dateedit2.date)+'''';
      if combobox6.text>'' then commandtext:=commandtext+' and flag1='''+combobox6.text+'''';
      //if chk11.checked then commandtext:=commandtext+' and ((rqxc<qrxc and rqxc<0) or (rqxc>qrxc and rqxc>0 and ((rqxc>=15 and qrxc<=0) or (qrxc>0)))) and pline like ''T%''';
      if chk11.checked then commandtext:=commandtext+' and ((rqxc<0/* and bt3<0*/) or (/*bt3>=15 and */rqxc>30)) and pline like ''T%''';
      if chk16.checked then commandtext:=commandtext+' and ((bt3<0) or (bt3>21)) and pline like ''T%''';
      //if chk17.Checked then commandtext:=commandtext+' and (pline like ''%SIM%'')';
      if chk17.Checked then commandtext:=commandtext+' and ((pline like ''%SIM%'') or (pline like ''%RSP%''))';
      if combobox7.text>'' then commandtext:=commandtext+' and qrxc'+combobox7.text;
      if chk_exit.checked then commandtext:=commandtext+' and yzh=1' else commandtext:=commandtext+' and yzh=0';
      if cxview1.DataController.Filter.FilterText>'' then begin
        sfilter1:=stringreplace(cxview1.DataController.Filter.FilterText,'= NULL','IS NULL',[rfReplaceAll]);
        commandtext:=commandtext+' and '+sfilter1;//cxview1.DataController.Filter.FilterText;
        //showmessage(sfilter1);
        //showmessage(cvtcwono(sfilter1));
      end;
      if chk7.Checked then params[0].asdate:=date;
      open;
      if not fieldbyname('c1').isnull then
        cxView1.DataController.Summary.FooterSummaryValues[8]:=fieldbyname('c1').asstring;
      if not fieldbyname('c2').isnull then
        cxView1.DataController.Summary.FooterSummaryValues[9]:=fieldbyname('c2').asstring;
      if not fieldbyname('c3').isnull then
        cxView1.DataController.Summary.FooterSummaryValues[10]:=fieldbyname('c3').asstring;
      if not fieldbyname('c4').isnull then
        cxView1.DataController.Summary.FooterSummaryValues[11]:=fieldbyname('c4').asstring;
      if not fieldbyname('c5').isnull then
        cxView1.DataController.Summary.FooterSummaryValues[12]:=fieldbyname('c5').asstring;
    end;
end;

procedure Tworksheet1.ComboBox3Enter(Sender: TObject);
begin
  combobox3.items.clear;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct flag6 from tblshedule where yzh=0 and flag6>''''';
    open;
    first;
    while not eof do begin
      combobox3.items.add(fieldbyname('flag6').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tworksheet1.ComboBox4Enter(Sender: TObject);
begin
  combobox4.items.clear;
  with query1 do begin
    close;
    params.clear;
    commandtext:='select distinct dbzs from tblshedule where yzh=0 and dbzs>''''';
    open;
    first;
    while not eof do begin
      combobox4.items.add(fieldbyname('dbzs').value);
      application.ProcessMessages;
      next;
    end;
  end;
end;

procedure Tworksheet1.ComboBox5Enter(Sender: TObject);
begin
  combobox5.items.clear;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct flag2 from tblshedule where flag2>'''' and yzh=0';
    open;
    first;
    while not eof do begin
      combobox5.items.add(fieldbyname('flag2').value);
      application.processmessages;
      next;
    end;
  end;
end;

procedure Tworksheet1.CopWO1Click(Sender: TObject);
var
  str1,str2:string;
begin
    str1:=Memo2.lines.strings[0];
    if tblshedule.FieldByName('tplant').value='KB' then str2:='"Joew" "123" "TH" "PH.RWO.UI3.0.dll" "PH.RWO.UI.Report.ExReport" "PH.RWO.BackEnd3.0.dll,PH.RWO.BackEnd.ReportJob.JobRWOReport,'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+copy(tblshedule.fieldbyname('rwo').value,1,pos('/',tblshedule.fieldbyname('rwo').value)-1)+'"'
    else str2:='"Joew" "123" "EN" "PH.RWO.UI3.0.dll" "PH.RWO.UI.Report.ExReport" "PH.RWO.BackEnd3.0.dll,PH.RWO.BackEnd.ReportJob.JobRWOReport,'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+copy(tblshedule.fieldbyname('rwo').value,1,pos('/',tblshedule.fieldbyname('rwo').value)-1)+'"';
    shellexecute(0,'open',pchar('PH.Platform.PHWinApp.exe'),pchar(str2),pchar(str1),sw_show);
end;

procedure Tworksheet1.DBGridEh1Columns4EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  str1:string;
begin
  str1:='P1 '+tblshedule.fieldbyname('j_no').value+' '+tblshedule.fieldbyname('ordline').asstring+' '+tblshedule.fieldbyname('rwo').value;
  str1:=str1+' '+frmmain.tcpchannel.Host;
  shellexecute(0,'open','c:\temp\rwoprint.exe',pchar(str1),'c:\temp',sw_show);
end;

procedure Tworksheet1.DBGridEh1Columns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select cstyle from tbl_stylechart where cstyle=:x1';
    params[0].asstring:=tblshedule.fieldbyname('cstyle').value;
    open;
    if fieldbyname('cstyle').isnull then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        commandtext:='insert into tbl_stylechart(cstyle,artno) values(:x1,:x2)';
        params[0].asstring:=tblshedule.fieldbyname('cstyle').value;
        params[1].asstring:=tblshedule.fieldbyname('artno').value;
        execute;
      end;
    end;
  end;
  if frmstyleimage=nil then frmstyleimage:=tfrmstyleimage.create(nil);
  frmstyleimage.Label1.Caption:=tblshedule.fieldbyname('cstyle').value;
  frmstyleimage.Show;
end;

procedure Tworksheet1.DBGridEh1Columns26EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
    if frmrwoftystartdate=nil then frmrwoftystartdate:=tfrmrwoftystartdate.Create(nil);
    frmrwoftystartdate.show;
end;

procedure Tworksheet1.DBGridEh1Columns8EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select acol from tbl_colchart where acol=:x1';
    params[0].asstring:=tblshedule.fieldbyname('acol').value;
    open;
    if fieldbyname('acol').isnull then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='insert into tbl_colchart(acol) values(:x1)';
        params[0].asstring:=tblshedule.fieldbyname('acol').value;
        execute;
      end;
    end;
  end;
  if frmcolimg=nil then frmcolimg:=tfrmcolimg.create(nil);
  frmcolimg.Label1.Caption:=tblshedule.fieldbyname('acol').value;
  frmcolimg.Show;
end;

procedure Tworksheet1.DBGridEh1ColumnsFLAG3EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if pos('SB',tblshedule.fieldbyname('pline').value)>0 then exit;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r12').value=true then begin
      if frmsellws=nil then frmsellws:=tfrmsellws.Create(nil);
      if not tblshedule.fieldbyname('flag3').isnull then begin
        if (tblshedule.fieldbyname('flag3').value>='1') and (tblshedule.Fieldbyname('flag3').value<='9s') then begin
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select dt1,sect1,dt2,sect2 from tbl_schstatus where pline=:x1 and seq=:x2';
            params[0].asstring:=tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=tblshedule.fieldbyname('seq').value;
            open;
          end;
          if not clientdataset2.fieldbyname('dt1').isnull then begin
            frmsellws.DateEdit1.Date:=clientdataset2.fieldbyname('dt1').value;
            if not clientdataset2.FieldByName('sect1').isnull then frmsellws.Edit1.Value:=clientdataset2.fieldbyname('sect1').value;
            frmsellws.xh3.Checked:=true;
            frmsellws.xh2.ItemIndex:=-1;
          end else begin
            if not clientdataset2.fieldbyname('dt2').isnull then frmsellws.DateEdit1.Date:=clientdataset2.fieldbyname('dt2').value;
            if not clientdataset2.fieldbyname('sect2').isnull then frmsellws.Edit1.Value:=clientdataset2.fieldbyname('sect2').value;
            frmsellws.xh1.Checked:=true;
            frmsellws.xh2.itemindex:=-1;
          end;
        end else if tblshedule.fieldbyname('flag3').value='w' then begin
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select dt3,sect3,sta3 from tbl_schstatus where pline=:x1 and seq=:x2';
            params[0].asstring:=tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=tblshedule.fieldbyname('seq').value;
            open;
          end;
          if not clientdataset2.fieldbyname('dt3').isnull then frmsellws.DateEdit1.Date:=clientdataset2.fieldbyname('dt3').value;
          if not clientdataset2.fieldbyname('sect3').isnull then frmsellws.Edit1.Value:=clientdataset2.fieldbyname('sect3').value;
          if (clientdataset2.fieldbyname('sta3').value='Halt') or (clientdataset2.fieldbyname('sta3').value='H1') then
          frmsellws.xh2.ItemIndex:=0
          else if clientdataset2.fieldbyname('sta3').value='H2' then frmsellws.xh2.ItemIndex:=1
          else if clientdataset2.fieldbyname('sta3').value='H3' then frmsellws.xh2.ItemIndex:=2
          else if clientdataset2.fieldbyname('sta3').value='H4' then frmsellws.xh2.ItemIndex:=3;
        end else if (copy(tblshedule.FieldByName('flag3').value,1,1)='x') or (tblshedule.fieldbyname('flag3').value='z') then begin
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select dt4,sect4 from tbl_schstatus where pline=:x1 and seq=:x2';
            params[0].asstring:=tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=tblshedule.fieldbyname('seq').value;
            open;
          end;
          if not clientdataset2.fieldbyname('dt4').isnull then frmsellws.DateEdit1.Date:=clientdataset2.fieldbyname('dt4').value;
          if not clientdataset2.fieldbyname('sect4').isnull then frmsellws.Edit1.Value:=clientdataset2.fieldbyname('sect4').value;
          frmsellws.xh4.Checked:=true;
          frmsellws.xh2.ItemIndex:=-1;
        end;
      end ;
      frmsellws.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tworksheet1.DBGridEh1Columns20EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if frmscgxdy=nil then frmscgxdy:=tfrmscgxdy.create(nil);
  frmscgxdy.show;
end;

procedure Tworksheet1.chk2Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
begin
  screen.Cursor:=crSQLWait;
  if chk2.Checked then begin
    if chk1.Checked then chk1.Checked:=false;
    if chk7.Checked then chk7.Checked:=false;
    if chk5.Checked then chk5.Checked:=false;
    if chk6.Checked then chk6.Checked:=false;
    if chk11.Checked then chk11.Checked:=false;
    if chk13.Checked then chk13.Checked:=false;
    if chk14.Checked then chk14.Checked:=false;
    chk15.Checked:=false;
    chk16.Checked:=false;
    chk17.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.chk1Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
  str1:string;
begin
  screen.Cursor:=crSQLWait;
  if chk1.Checked then begin
    if chk7.Checked then chk7.Checked:=false;
    if chk2.Checked then chk2.Checked:=false;
    if chk6.Checked then chk6.Checked:=false;
    if chk5.Checked then chk5.Checked:=false;
    if chk11.Checked then chk11.Checked:=false;
    if chk13.Checked then chk13.Checked:=false;
    if chk14.Checked then chk14.Checked:=false;
    chk15.Checked:=false;
    chk16.Checked:=false;
    chk17.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.BitBtn7Click(Sender: TObject);
begin
  if tblshedule.Active then begin
    if not tblshedule.fieldbyname('pline').isnull then begin
      if frmtrsummary=nil then frmtrsummary:=tfrmtrsummary.Create(nil);
      frmtrsummary.Edit1.Text:=tblshedule.fieldbyname('j_no').value;
      frmtrsummary.Edit2.Text:=tblshedule.fieldbyname('j2_job').value;
      frmtrsummary.Edit3.Text:=tblshedule.fieldbyname('rwo').value;
      frmtrsummary.Edit4.Text:=tblshedule.fieldbyname('acol').value;
      frmtrsummary.Show;
    end;
  end;
end;

procedure Tworksheet1.Cancelx1Click(Sender: TObject);
var
  str1:string;
begin
  str1:='update tbl_schstatus set dt4=null,sect4=0,sta4='''' where pline='''+tblshedule.FieldByName('pline').Value+''' and seq='+tblshedule.FieldByName('seq').AsString;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='delete from tblshedule_stime where pline=:x1 and seq=:x2';
    params[0].asstring:=tblshedule.fieldbyname('pline').value;
    params[1].asinteger:=tblshedule.Fieldbyname('seq').value;
    execute;
  end;
  with tblshedule do begin
    edit;
    fieldbyname('flag3').value:='';
    fieldbyname('flag31a').value:='';
    fieldbyname('flag32a').value:='';
    fieldbyname('ckjs').value:=0;
    post;
  end;
end;

procedure Tworksheet1.CancelEs1Click(Sender: TObject);
var
  str1:string;
begin
  str1:='update tbl_schstatus set edt1=null,esect1=0,esta1='''' where pline='''+tblshedule.FieldByName('pline').Value+''' and seq='+tblshedule.FieldByName('seq').AsString;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  with tblshedule do begin
    edit;
    fieldbyname('flag31e').value:='';
    post;
  end;
end;

procedure Tworksheet1.CancelEx1Click(Sender: TObject);
var
  str1:string;
begin
  str1:='update tbl_schstatus set edt2=null,esect2=0,esta2='''' where pline='''+tblshedule.FieldByName('pline').Value+''' and seq='+tblshedule.FieldByName('seq').AsString;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  with tblshedule do begin
    edit;
    fieldbyname('flag32e').value:='';
    post;
  end;
end;

procedure Tworksheet1.CancelPFS1Click(Sender: TObject);
var
  str1:string;
begin
  str1:='update tbl_schstatus set pfdt1=null,pfsect1=0,pfsta1='''' where pline='''+tblshedule.FieldByName('pline').Value+''' and seq='+tblshedule.FieldByName('seq').AsString;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  with tblshedule do begin
    edit;
    fieldbyname('flag31p').value:='';
    post;
  end;
end;

procedure Tworksheet1.CancelPFX1Click(Sender: TObject);
var
  str1:string;
begin
  str1:='update tbl_schstatus set pfdt2=null,pfsect2=0,pfsta2='''' where pline='''+tblshedule.FieldByName('pline').Value+''' and seq='+tblshedule.FieldByName('seq').AsString;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  with tblshedule do begin
    edit;
    fieldbyname('flag32p').value:='';
    post;
  end;
end;

procedure Tworksheet1.Cancels1Click(Sender: TObject);
var
  str1:string;
begin
  str1:='update tbl_schstatus set dt1=null,sect1=0,sta1='''',dt2=null,sect2=0,sta2='''' where pline='''+tblshedule.FieldByName('pline').Value+''' and seq='+tblshedule.FieldByName('seq').AsString;
  if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');

  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='delete from tblshedule_stime where pline=:x1 and seq=:x2';
    params[0].asstring:=tblshedule.fieldbyname('pline').value;
    params[1].asinteger:=tblshedule.Fieldbyname('seq').value;
    execute;
  end;
  with tblshedule do begin
    edit;
    fieldbyname('flag3').value:='';
    fieldbyname('flag31a').value:='';
    fieldbyname('flag32a').value:='';
    post;
  end;
end;

procedure Tworksheet1.chk3Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
begin
  screen.Cursor:=crSQLWait;
  if tblshedule.state=dsedit then tblshedule.post;
  if chk3.Checked then begin
    if chk1.Checked then chk1.Checked:=false;
    if chk2.Checked then chk2.Checked:=false;
    if chk4.Checked then chk4.Checked:=false;
    if chk5.Checked then chk5.Checked:=false;
    if chk6.Checked then chk6.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.tblsheduleYQLCRQ1Change(Sender: TField);
var
  yqlcrq,tzlcrq:tdatetime;
begin
  if not tblshedule.fieldbyname('tzlcrq').isnull then begin
    tzlcrq:=tblshedule.fieldbyname('tzlcrq').value;
    if not tblshedule.fieldbyname('yqlcrq1').isnull then begin
      yqlcrq:=tblshedule.fieldbyname('yqlcrq1').value;
      tblshedule.fieldbyname('rqxc').value:=trunc(yqlcrq)-trunc(tzlcrq);
    end else if not tblshedule.fieldbyname('yqlcrq').isnull then begin
      yqlcrq:=tblshedule.fieldbyname('yqlcrq').value;
      tblshedule.fieldbyname('rqxc').value:=trunc(yqlcrq)-trunc(tzlcrq);
    end;
  end;
end;

procedure Tworksheet1.tblsheduleYzhChange(Sender: TField);
begin
  if tblshedule.fieldbyname('yzh').value=true then tblshedule.fieldbyname('pd8').value:=date;
end;

procedure Tworksheet1.DBGridEh1Columns30EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  mouse1:Tmouse;
  dt:tdate;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r35').value=true then begin
      handled:=true;
    end else handled:=false;
  end;
  if handled then begin
    if not tblshedule.FieldByName('cplan').isnull then dt:=tblshedule.fieldbyname('cplan').value
    else dt:=tblshedule.fieldbyname('plan_date').value;
    mouse1:=tmouse.Create;
    try
      if frmmcal=nil then frmmcal:=tfrmmcal.create(nil);
      frmmcal.Label1.Caption:='V';
      frmmcal.MonthCalendar1.CalendarDate:=dt-tblshedule.fieldbyname('unbal').value;
      frmmcal.Left:=mouse1.CursorPos.X-100;
      frmmcal.Top:=mouse1.CursorPos.Y;
      frmmcal.Show;
    finally
      mouse1.Free;
    end;
  end;
end;

procedure Tworksheet1.chk4Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
begin
  screen.Cursor:=crSQLWait;
  if chk4.Checked then begin
    if chk1.Checked then chk1.Checked:=false;
    if chk2.Checked then chk2.Checked:=false;
    if chk3.Checked then chk3.Checked:=false;
    if chk5.Checked then chk5.Checked:=false;
    if chk6.Checked then chk6.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.BitBtn12Click(Sender: TObject);
var
  Pt: TPoint;
begin
  GetCursorPos(Pt);
  Pm1.Popup(Pt.X, Pt.Y);
end;

procedure Tworksheet1.BitBtn13Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure Tworksheet1.BitBtn14Click(Sender: TObject);
begin
  if frmprdprogress=nil then frmprdprogress:=tfrmprdprogress.create(nil);
  frmprdprogress.show;
end;

procedure Tworksheet1.BitBtn15Click(Sender: TObject);
begin
  if frmewsgai=nil then frmewsgai:=tfrmewsgai.create(nil);
  frmewsgai.show;
end;

procedure Tworksheet1.WaitingforpackingwithoutPDN1Click(Sender: TObject);
begin
  if frmwaitingforpacking=nil then frmwaitingforpacking:=tfrmwaitingforpacking.create(self);
  frmwaitingforpacking.show;
end;

procedure Tworksheet1.WIPTransit1Click(Sender: TObject);
begin
  if frmprintwip=nil then frmprintwip:=tfrmprintwip.create(nil);
  frmprintwip.show;
end;

procedure Tworksheet1.chk5Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
begin
  screen.Cursor:=crSQLWait;
  if tblshedule.state=dsedit then tblshedule.post;
  if chk5.Checked then begin
    if chk1.Checked then chk1.Checked:=false;
    if chk7.Checked then chk7.Checked:=false;
    if chk2.Checked then chk2.Checked:=false;
    if chk6.Checked then chk6.Checked:=false;
    if chk11.Checked then chk11.Checked:=false;
    if chk13.Checked then chk13.Checked:=false;
    if chk14.Checked then chk14.Checked:=false;
    chk15.Checked:=false;
    chk16.Checked:=false;
    chk17.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.chk6Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
begin
  screen.Cursor:=crSQLWait;
  if tblshedule.state=dsedit then tblshedule.post;
  if chk6.Checked then begin
    if chk1.Checked then chk1.Checked:=false;
    if chk2.Checked then chk2.Checked:=false;
    if chk7.Checked then chk7.Checked:=false;
    if chk5.Checked then chk5.Checked:=false;
    if chk11.Checked then chk11.Checked:=false;
    if chk13.Checked then chk13.Checked:=false;
    if chk14.Checked then chk14.Checked:=false;
    chk15.Checked:=false;
    chk16.Checked:=false;
    chk17.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.tblsheduleBeforeEdit(DataSet: TDataSet);
begin
  //if copy(tblshedule.fieldbyname('lflag').value,1,1)='!' then flflag:='^' else flflag:='';
end;

procedure Tworksheet1.FormCreate(Sender: TObject);
begin
  //siLang1.LoadAllFromFile(extractfilepath(application.ExeName)+'LWPM_LANGUAGE.sil',false);
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
          params[2].AsString:='Planning & Scheduling';
          params[3].AsDateTime:=now;
          params[4].asstring:=frmmain.tcp1.LocalIP;
          params[5].AsInteger:=logseq;
          execute;
        end;
        }
        with dataset2 do begin
          close;
          sql.text:='insert into [Sys.Authority].dbo.sysuseinfo(menuid,userid,starttime) values(:x1,:x2,:x3)';
          parameters[0].Value:='LWPM - Planning & Scheduling';
          parameters[1].value:=frmmain.combobox1.text;
          parameters[2].Value:=now;
          execsql;
        end;
        ARedStyle := TcxStyle.Create(Self);
        ARedStyle.TextColor := clRed;
        AGreenStyle := TcxStyle.Create(Self);
        AGreenStyle.TextColor := clGreen;
        ABlackStyle := TcxStyle.Create(Self);
        ABlackStyle.TextColor := clBlack;

  FontRedStyle := TCxStyle.Create(Self);
  FontRedStyle.TextColor := clRed;
  FontBoldRedStyle := TCxStyle.Create(Self);
  FontBoldRedStyle.TextColor := clRed;
  FontBoldRedStyle.Font.Style := [fsbold];


  memo2.Lines.Clear;
  memo2.Lines.LoadFromFile(extractfilepath(application.ExeName)+'phplatformpath.ini');
end;

procedure Tworksheet1.FormDestroy(Sender: TObject);
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

procedure Tworksheet1.GanttChart1Click(Sender: TObject);
begin
  //if tblshedule.Active then begin
  //  if not tblshedule.fieldbyname('pline').isnull then begin
  //    if frmstartrange=nil then frmstartrange:=tfrmstartrange.create(nil);
  //    frmstartrange.show;
  //  end;
  //end;
end;

procedure Tworksheet1.LineWO1Click(Sender: TObject);
var
  str1,str2,usr1,usr2,usr3,a1,c1,b1,wwip,ct,sp,bd,cust0:string;
  ksrq:tdate;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_clearshedule_ws';
    execute;
  end;
  wwip:='false';
  if not tblshedule.fieldbyname('flag3').isnull then begin
    if pos('s',tblshedule.fieldbyname('flag3').value)>0 then wwip:='true'
    else if pos('x',tblshedule.fieldbyname('flag3').value)>0 then wwip:='true';
  end;
  cust0:=copy(tblshedule.fieldbyname('j_no').value,1,4);
  if not tblshedule.fieldbyname('cfksrq').isnull then ksrq:=tblshedule.fieldbyname('cfksrq').value
  else ksrq:=date+90;
  with clientdataset1 do begin
    close;
    params.clear;
    if tblshedule.fieldbyname('tplant').value='SL' then
    commandtext:='select distinct user1,user2,user3 from tbl_qncfmd_new where tplant='''+tblshedule.fieldbyname('tplant').value+''' and cust='''+cust0+''''
    else commandtext:='select distinct user1,user2,user3 from tbl_qncfmd_new where tplant='''+tblshedule.fieldbyname('tplant').value+'''';
    open;
    if not fieldbyname('user1').isnull then usr1:=fieldbyname('user1').value else usr1:='';
    if not fieldbyname('user2').isnull then usr2:=fieldbyname('user2').value else usr2:='';
    if not fieldbyname('user3').isnull then usr3:=fieldbyname('user3').value else usr3:='';
  end;
  if usr1='' then begin
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select distinct user1,user2,user3 from tbl_qncfmd_new where tplant='''+tblshedule.fieldbyname('tplant').value+''' and cust=''''';
      open;
      if not fieldbyname('user1').isnull then usr1:=fieldbyname('user1').value else usr1:='';
      if not fieldbyname('user2').isnull then usr2:=fieldbyname('user2').value else usr2:='';
      if not fieldbyname('user3').isnull then usr3:=fieldbyname('user3').value else usr3:='';
    end;
  end;

  str1:=Memo2.lines.strings[0];
  if ksrq<=date+60 then begin
    str2:='"Joew" "123" "EN" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.QNv4,0;'+tblshedule.fieldbyname('pline').value+';'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+tblshedule.fieldbyname('rwo').value+';'+tblshedule.fieldbyname('fccs').value+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-30)+';';
    str2:=str2+formatdatetime('yyyy-MM-dd',ksrq-15)+';2"';
    shellexecute(0,'open',pchar('PH.Platform.PHWinApp.exe'),pchar(str2),pchar(str1),sw_show);
  end;
end;

procedure Tworksheet1.EnquiryWF1Click(Sender: TObject);
begin
  if frmenquiry_wf=nil then frmenquiry_wf:=tfrmenquiry_wf.create(self);
  frmenquiry_wf.show;
end;

procedure Tworksheet1.ERPWO1Click(Sender: TObject);
var
  str1,str2:string;
begin
    str1:=Memo2.lines.strings[0];
    if tblshedule.FieldByName('tplant').value='KB' then str2:='"Joew" "123" "TH" "PH.RWO.UI3.0.dll" "PH.RWO.UI.Report.ExReport" "PH.RWO.BackEnd3.0.dll,PH.RWO.BackEnd.ReportJob.JobWOReport,'+tblshedule.fieldbyname('j2_job').value+'"'
    else str2:='"Joew" "123" "EN" "PH.RWO.UI3.0.dll" "PH.RWO.UI.Report.ExReport" "PH.RWO.BackEnd3.0.dll,PH.RWO.BackEnd.ReportJob.JobWOReport,'+tblshedule.fieldbyname('j2_job').value+'"';
    shellexecute(0,'open',pchar('PH.Platform.PHWinApp.exe'),pchar(str2),pchar(str1),sw_show);
end;

procedure Tworksheet1.cxView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  oseq,nseq:integer;
  pline:string;
  pstr:string;
begin
  if (label3.caption<>'') and (edit2.text>'') then begin
    AHandled:=true;
    screen.cursor:=crhourglass;
    try
    pline:=tblshedule.fieldbyname('pline').value;
    oseq:=strtoint(label3.caption);
    nseq:=tblshedule.fieldbyname('seq').value;
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'pline',ptinput);
      params.createparam(ftinteger,'oseq',ptinput);
      params.createparam(ftinteger,'nseq',ptinput);
      commandtext:='execute procedure calc_seq(:pline,:oseq,:nseq)';
      params[0].asstring:=pline;
      params[1].asinteger:=oseq;
      params[2].asinteger:=nseq;
      execute;
    end;
    with tblshedule do begin
      close;
      params.clear;
      params.createparam(ftstring,'pline',ptinput);
      commandtext:='select * from tblshedule where pline=:pline and yzh=0';
      params[0].asstring:=pline;
      open;
      locate('pline;seq',vararrayof([pline,nseq]),[]);
    end;
    label3.caption:='';
    finally
      screen.cursor:=crdefault;
    end;
  end;
end;

procedure Tworksheet1.cxView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if ACellViewInfo.Text='Start Instruction' then begin
    Showmessage('Double Click me!');
  end;
end;

procedure Tworksheet1.cxView1KeyPress(Sender: TObject; var Key: Char);
begin
  if key<>#13 then begin
    if not tblshedule.fieldbyname('flag3').isnull then begin
      if (uppercase(copy(tblshedule.fieldbyname('flag3').value,1,1))='X') or ((tblshedule.fieldbyname('flag3').value>='1') and (tblshedule.fieldbyname('flag3').value<='99s')) then begin
        with clientdataset1 do begin
          close;
          params.clear;
          commandtext:='select r36 from tbluser where usr='''+frmmain.ComboBox1.Text+'''';
          open;
          if fieldbyname('r36').value=0 then key:=#0;
        end;
      end;
    end;
  end;
end;

procedure Tworksheet1.cxView1LTC_RMPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if frmst3_reason=nil then frmst3_reason:=tfrmst3_reason.create(nil);
  frmsT3_Reason.show;
end;

procedure Tworksheet1.cxView1Column23PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if frmItems_Stdby=nil then frmItems_Stdby:=tfrmItems_Stdby.create(nil);
  frmItems_Stdby.show;
end;

procedure Tworksheet1.cxView1Column25PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if not tblshedule.fieldbyname('lbl_diff').isnull then begin
    if tblshedule.fieldbyname('lbl_diff').value=0 then exit;
    if tblshedule.fieldbyname('lbl_diff').value>0 then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_swpm_gensample(:x1,:x2)';
        params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
        params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
        execute;
      end;
      if frmsampleqty=nil then frmsampleqty:=tfrmsampleqty.create(nil);
      frmsampleqty.label6.caption:='PP';
      frmsampleqty.show;
      with frmsampleqty.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from tblshedule_sample where pline=:x1 and seq=:x2 and s_swo like ''PP%''';
        params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
        params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
        open;
      end;
    end;
  end;
  //showmessage('Under development!');
end;

procedure Tworksheet1.cxView1Column7PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if pos('SB',tblshedule.fieldbyname('pline').value)>0 then exit;
  if pos('S.',tblshedule.fieldbyname('pline').value)>0 then exit;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r12').value=true then begin
      if frmsewflow1=nil then frmsewflow1:=tfrmsewflow1.Create(nil);
      if not tblshedule.fieldbyname('b_flag31').isnull then begin
        if (copy(tblshedule.FieldByName('b_flag31').value,1,1)='x') then begin
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select bsta2,bdt2,bsect2 from tbl_schstatus where pline=:x1 and seq=:x2';
            params[0].asstring:=tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=tblshedule.fieldbyname('seq').value;
            open;
            frmsewflow1.DateEdit1.Date:=clientdataset2.fieldbyname('bdt2').value;
            if not clientdataset2.FieldByName('bsect2').isnull then frmsewflow1.Edit1.Value:=clientdataset2.fieldbyname('bsect2').value;
            frmsewflow1.xh2.Checked:=true;
          end;
        end else if (pos('s',tblshedule.fieldbyname('b_flag31').value)>0) then begin
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select bsta1,bdt1,bsect1 from tbl_schstatus where pline=:x1 and seq=:x2';
            params[0].asstring:=tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=tblshedule.fieldbyname('seq').value;
            open;
            if not clientdataset2.fieldbyname('bdt1').isnull then frmsewflow1.DateEdit1.Date:=clientdataset2.fieldbyname('bdt1').value;
            if not clientdataset2.fieldbyname('bsect1').isnull then frmsewflow1.Edit1.Value:=clientdataset2.fieldbyname('bsect1').value;
            frmsewflow1.xh1.Checked:=true;
          end;
        end;
      end else begin
        frmsewflow1.DateEdit1.Date:=0;
        frmsewflow1.Edit1.Value:=0.0;
        frmsewflow1.xh1.Checked:=false;
        frmsewflow1.xh2.Checked:=false;
      end ;
      frmsewflow1.label3.caption:='b';
      frmsewflow1.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tworksheet1.cxView1Column8PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if frmspecmat=nil then frmspecmat:=tfrmspecmat.create(nil);
  frmspecmat.show;
end;

procedure Tworksheet1.cxView1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
var
  pline:string;
  seq:integer;
  r26,r27,r28,r29,r30,r31,r32,r33,r34,r35:boolean;
begin
  try
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select r26,r27,r28,r29,r30,r31,r32,r33,r34,r35 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
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
    r35:=fieldbyname('r35').value;
  end;
  if AColumn=cxView1flag1 then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='1';
    frmflag.Caption:='標幟 - Project Process/工程流程';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if Acolumn=cxView1flag1 then
      params[0].asinteger:=1
      else if AColumn=cxView1flag2 then params[0].asinteger:=2
      else if AColumn=cxView1flag3 then params[0].asinteger:=3
      else if AColumn=cxView1lflag then params[0].AsInteger:=4
      else if AColumn=cxView1flag5 then params[0].asinteger:=5
      else if AColumn=cxView1flag6 then params[0].asinteger:=6
      else if AColumn=cxView1fyfs then params[0].asinteger:=12
      else if AColumn=cxView1flag4 then params[0].asinteger:=10;
      open;
    end;
    if r26 then begin
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
  end else if AColumn=cxView1flag6 then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='6';
    frmflag.Caption:='標幟 - Style nr prefix:- Product Categories / 款號前綴:- 產品種類';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if Acolumn=cxView1flag1 then
      params[0].asinteger:=1
      else if AColumn=cxView1flag2 then params[0].asinteger:=2
      else if AColumn=cxView1flag3 then params[0].asinteger:=3
      else if AColumn=cxView1lflag then params[0].AsInteger:=4
      else if AColumn=cxView1flag5 then params[0].asinteger:=5
      else if AColumn=cxView1flag6 then params[0].asinteger:=6
      else if AColumn=cxView1fyfs then params[0].asinteger:=12
      else if AColumn=cxView1flag4 then params[0].asinteger:=10;
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
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if AColumn=cxView1flag4 then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='10';
    frmflag.Caption:='標幟 - QN QTY Transit Process/數頁件數之交收流程';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if Acolumn=cxView1flag1 then
      params[0].asinteger:=1
      else if AColumn=cxView1flag2 then params[0].asinteger:=2
      else if AColumn=cxView1flag3 then params[0].asinteger:=3
      else if AColumn=cxView1lflag then params[0].AsInteger:=4
      else if AColumn=cxView1flag5 then params[0].asinteger:=5
      else if AColumn=cxView1flag6 then params[0].asinteger:=6
      else if AColumn=cxView1fyfs then params[0].asinteger:=12
      else if AColumn=cxView1flag4 then params[0].asinteger:=10;
      open;
    end;
    if r29 then begin
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
  end else if AColumn=cxView1flag2 then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='2';
    frmflag.Caption:='標幟 - Define this QN''s SAH with LB or not/確定此數頁之SAH是否要設定拉平衡';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if Acolumn=cxView1flag1 then
      params[0].asinteger:=1
      else if AColumn=cxView1flag2 then params[0].asinteger:=2
      else if AColumn=cxView1flag3 then params[0].asinteger:=3
      else if AColumn=cxView1lflag then params[0].AsInteger:=4
      else if AColumn=cxView1flag5 then params[0].asinteger:=5
      else if AColumn=cxView1flag6 then params[0].asinteger:=6
      else if AColumn=cxView1fyfs then params[0].asinteger:=12
      else if AColumn=cxView1flag4 then params[0].asinteger:=10;
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
    //1: flag1, 7: flag6,  9:  , 12:  ,  13: flag4, 20: flag2, 24: , 25: lflag,
    //31:  fyfs, 35: flag3
    //52: flag5

  end else if AColumn=cxView1lflag then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='4';
    frmflag.Caption:='標幟 - Choose the start point of Phase of Learning Curve/選擇段學曲線之開始段落';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if Acolumn=cxView1flag1 then
      params[0].asinteger:=1
      else if AColumn=cxView1flag2 then params[0].asinteger:=2
      else if AColumn=cxView1flag3 then params[0].asinteger:=3
      else if AColumn=cxView1lflag then params[0].AsInteger:=4
      else if AColumn=cxView1flag5 then params[0].asinteger:=5
      else if AColumn=cxView1flag6 then params[0].asinteger:=6
      else if AColumn=cxView1fyfs then params[0].asinteger:=12
      else if AColumn=cxView1flag4 then params[0].asinteger:=10;
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
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if AColumn=cxView1fyfs then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='12';
    frmflag.Caption:='標幟 - CWO Fty Start Date(Locked Diff Process)/輪製單廠開始日期(鎖定差距流程)';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if Acolumn=cxView1flag1 then
      params[0].asinteger:=1
      else if AColumn=cxView1flag2 then params[0].asinteger:=2
      else if AColumn=cxView1flag3 then params[0].asinteger:=3
      else if AColumn=cxView1lflag then params[0].AsInteger:=4
      else if AColumn=cxView1flag5 then params[0].asinteger:=5
      else if AColumn=cxView1flag6 then params[0].asinteger:=6
      else if AColumn=cxView1fyfs then params[0].asinteger:=12
      else if AColumn=cxView1flag4 then params[0].asinteger:=10;
      open;
    end;
    if r35 then begin
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
  end else if (AColumn=cxView1flag3) or (AColumn=cxView1flag31p) or (AColumn=cxView1flag31a) or (AColumn=cxView1flag31e) or (AColumn=cxView1flag32p) or (AColumn=cxView1flag32a) or (AColumn=cxView1flag32e) then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='3';
    frmflag.Caption:='標幟 - QN/SQN Dynamic Process at workshop / 數頁/游數頁動力流程-車間';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if Acolumn=cxView1flag1 then
      params[0].asinteger:=1
      else if AColumn=cxView1flag2 then params[0].asinteger:=2
      else if (AColumn=cxView1flag3) or (AColumn=cxView1flag31p) or (AColumn=cxView1flag31a) or (AColumn=cxView1flag31e) or (AColumn=cxView1flag32p) or (AColumn=cxView1flag32a) or (AColumn=cxView1flag32e) then params[0].asinteger:=3
      else if AColumn=cxView1lflag then params[0].AsInteger:=4
      else if AColumn=cxView1flag5 then params[0].asinteger:=5
      else if AColumn=cxView1flag6 then params[0].asinteger:=6
      else if AColumn=cxView1fyfs then params[0].asinteger:=12
      else if AColumn=cxView1flag4 then params[0].asinteger:=10;
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
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else if AColumn=cxView1flag5 then begin
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='5';
    frmflag.Caption:='標幟 - Locked Diff Process/鎖定差距流程';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      if Acolumn=cxView1flag1 then
      params[0].asinteger:=1
      else if AColumn=cxView1flag2 then params[0].asinteger:=2
      else if AColumn=cxView1flag3 then params[0].asinteger:=3
      else if AColumn=cxView1lflag then params[0].AsInteger:=4
      else if AColumn=cxView1flag5 then params[0].asinteger:=5
      else if AColumn=cxView1flag6 then params[0].asinteger:=6
      else if AColumn=cxView1fyfs then params[0].asinteger:=12
      else if AColumn=cxView1flag4 then params[0].asinteger:=10;
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
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  end else begin
  end;
  except
    abort;
  end;
end;

procedure Tworksheet1.cxView1CSTYLEPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select cstyle from tbl_stylechart where cstyle=:x1';
    params[0].asstring:=tblshedule.fieldbyname('cstyle').value;
    open;
    if fieldbyname('cstyle').isnull then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftstring,'x2',ptinput);
        commandtext:='insert into tbl_stylechart(cstyle,artno) values(:x1,:x2)';
        params[0].asstring:=tblshedule.fieldbyname('cstyle').value;
        params[1].asstring:=tblshedule.fieldbyname('artno').value;
        execute;
      end;
    end;
  end;
  if frmstyleimage=nil then frmstyleimage:=tfrmstyleimage.create(nil);
  frmstyleimage.Label1.Caption:=tblshedule.fieldbyname('cstyle').value;
  frmstyleimage.Show;
end;

function Tworksheet1.cvtcwono(sf: string): string;
var
  s1,s2:string;
  p1,p2:integer;
begin
  s1:=sf;
  if pos('CWONO',s1)>0 then begin
    p1:=pos('CWONO',s1);
    p2:=p1+pos(')',copy(s1,p1,p1+35))-4;
  end;
  s2:=copy(s1,p1,p2);
  result:=s2;
end;

procedure Tworksheet1.cxView1ACOLPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    commandtext:='select acol from tbl_colchart where acol=:x1';
    params[0].asstring:=tblshedule.fieldbyname('acol').value;
    open;
    if fieldbyname('acol').isnull then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        commandtext:='insert into tbl_colchart(acol) values(:x1)';
        params[0].asstring:=tblshedule.fieldbyname('acol').value;
        execute;
      end;
    end;
  end;
  if frmcolimg=nil then frmcolimg:=tfrmcolimg.create(nil);
  frmcolimg.Label1.Caption:=tblshedule.fieldbyname('acol').value;
  frmcolimg.Show;
end;

procedure Tworksheet1.cxView1Bands105HeaderClick(Sender: TObject);
begin
  if frmsah_p2=nil then frmsah_p2:=tfrmsah_p2.create(nil);
  frmsah_p2.windowstate:=wsMaximized;
  frmsah_p2.show;
  if cxview1.DataController.Filter.FilterText>'' then
  frmsah_p2.cxview1.DataController.Filter.FilterText:=cxview1.DataController.Filter.FilterText;
  //if cxview1.DataController.Filter.FilterText>'' then
  //frmqnqty_detail.cxview1.DataController.Filter.FilterText:=cxview1.DataController.Filter.FilterText;
end;

procedure Tworksheet1.cxView1Bands139HeaderClick(Sender: TObject);
var
  pline:string;
  seq:integer;
  r26,r27,r28,r29,r30,r31,r32,r33,r34,r35:boolean;
begin
  try
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select r26,r27,r28,r29,r30,r31,r32,r33,r34,r35 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
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
    r35:=fieldbyname('r35').value;
  end;
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='12';
    frmflag.Caption:='標幟 - CWO Fty Start Date(Locked Diff Process)/定色製單廠開始日期(鎖定差距流程)';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      params[0].asinteger:=12;
      open;
    end;
    if r35 then begin
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
  except
    abort;
  end;
end;

procedure Tworksheet1.cxView1Bands144HeaderClick(Sender: TObject);
var
  pline:string;
  seq:integer;
  r26,r27,r28,r29,r30,r31,r32,r33,r34,r35:boolean;
begin
  try
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select r26,r27,r28,r29,r30,r31,r32,r33,r34,r35 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
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
    r35:=fieldbyname('r35').value;
  end;
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='5';
    frmflag.Caption:='標幟 - Locked Diff Process/鎖定差距流程';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      params[0].asinteger:=5;
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
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  except
    abort;
  end;
end;

procedure Tworksheet1.cxView1Bands163HeaderClick(Sender: TObject);
var
  pline:string;
  seq:integer;
  r26,r27,r28,r29,r30,r31,r32,r33,r34,r35:boolean;
begin
  try
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select r26,r27,r28,r29,r30,r31,r32,r33,r34,r35 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
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
    r35:=fieldbyname('r35').value;
  end;
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='3';
    frmflag.Caption:='標幟 - QN/SQN Process at workshop / 拉制單/游拉制單流程-車間';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      params[0].asinteger:=3;
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
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  except
    abort;
  end;
end;

procedure Tworksheet1.cxView1Bands1HeaderClick(Sender: TObject);
begin
  if cxview1.bands[1].fixedkind=fknone then
    cxview1.bands[1].fixedkind:=fkleft
  else cxview1.bands[1].fixedkind:=fknone;
end;

procedure Tworksheet1.cxView1Bands20HeaderClick(Sender: TObject);
begin
  if frmwl_pb=nil then frmwl_pb:=tfrmwl_pb.create(nil);
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select rpmc,rkh,r_prtwo from tbluser where usr='''+frmmain.combobox1.text+'''';
    open;
    if fieldbyname('rpmc').value=true then begin
      frmwl_pb.dbgrideh1.columns[10].readonly:=false;
      frmwl_pb.dbgrideh1.columns[11].readonly:=false;
      frmwl_pb.dbgrideh1.columns[12].readonly:=false;
      frmwl_pb.dbgrideh1.columns[13].readonly:=false;
      frmwl_pb.dbgrideh1.columns[15].readonly:=false;
      frmwl_pb.dbgrideh1.columns[16].readonly:=false;
      frmwl_pb.dbgrideh1.columns[17].readonly:=false;
      frmwl_pb.dbgrideh1.columns[18].readonly:=false;
      frmwl_pb.dbgrideh1.columns[19].readonly:=false;
      //
      frmwl_pb.cxview1wl_jhdt.options.editing:=true;
      frmwl_pb.cxview1wl_jhp.options.editing:=true;
      frmwl_pb.cxview1wl_wc.options.editing:=true;
      frmwl_pb.cxview1wl_wcp.options.editing:=true;
      frmwl_pb.cxview1fyfs.options.editing:=true;
      frmwl_pb.cxview1jhrs.options.editing:=true;
      frmwl_pb.cxview1pb_jhdt.options.editing:=true;
      frmwl_pb.cxview1lbl_sdt.options.editing:=true;
      frmwl_pb.cxview1lbl_adt.options.editing:=true;
    end else begin
      frmwl_pb.dbgrideh1.columns[10].readonly:=true;
      frmwl_pb.dbgrideh1.columns[11].readonly:=true;
      frmwl_pb.dbgrideh1.columns[12].readonly:=true;
      frmwl_pb.dbgrideh1.columns[13].readonly:=true;
      frmwl_pb.dbgrideh1.columns[15].readonly:=true;
      frmwl_pb.dbgrideh1.columns[16].readonly:=true;
      frmwl_pb.dbgrideh1.columns[17].readonly:=true;
      frmwl_pb.dbgrideh1.columns[18].readonly:=true;
      frmwl_pb.dbgrideh1.columns[19].readonly:=true;
      //
      frmwl_pb.cxview1wl_jhdt.options.editing:=false;
      frmwl_pb.cxview1wl_jhp.options.editing:=false;
      frmwl_pb.cxview1wl_wc.options.editing:=false;
      frmwl_pb.cxview1wl_wcp.options.editing:=false;
      frmwl_pb.cxview1fyfs.options.editing:=false;
      frmwl_pb.cxview1jhrs.options.editing:=false;
      frmwl_pb.cxview1pb_jhdt.options.editing:=false;
      frmwl_pb.cxview1lbl_sdt.options.editing:=false;
      frmwl_pb.cxview1lbl_adt.options.editing:=false;
    end;
    if fieldbyname('rkh').value=true then begin
      frmwl_pb.dbgrideh1.columns[20].readonly:=false;
      frmwl_pb.cxview1khzl1.options.editing:=true;
    end else begin
      frmwl_pb.dbgrideh1.columns[20].readonly:=true;
      frmwl_pb.cxview1khzl1.options.editing:=false;
    end;
    if fieldbyname('r_prtwo').value=true then begin
      frmwl_pb.bitbtn4.visible:=true;
      frmwl_pb.bitbtn5.visible:=true;
      frmwl_pb.dbgrideh1.columns[21].visible:=true;
      frmwl_pb.cxview1.bands[15].visible:=true;
    end else begin
      frmwl_pb.bitbtn4.visible:=false;
      frmwl_pb.bitbtn5.visible:=false;
      frmwl_pb.dbgrideh1.columns[21].visible:=false;
      frmwl_pb.cxview1.bands[15].visible:=false;
    end;
  end;
  frmwl_pb.show;
end;

procedure Tworksheet1.cxView1Bands267HeaderClick(Sender: TObject);
begin
  if frmspecmat_conduct=nil then frmspecmat_conduct:=tfrmspecmat_conduct.create(nil);
  frmspecmat_conduct.show;
  //if cxview1.DataController.Filter.FilterText>'' then
  //  frmspecmat_conduct.cxview1.DataController.Filter.FilterText:=cxview1.DataController.Filter.FilterText+' and (item_fm=''M'')'
  //else frmspecmat_conduct.cxview1.DataController.Filter.FilterText:='(item_fm=''M'')';
end;

procedure Tworksheet1.cxView1Bands34HeaderClick(Sender: TObject);
var
  pline:string;
  seq:integer;
  r26,r27,r28,r29,r30,r31,r32,r33,r34,r35:boolean;
begin
  try
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select r26,r27,r28,r29,r30,r31,r32,r33,r34,r35 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
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
    r35:=fieldbyname('r35').value;
  end;
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
  except
    abort;
  end;
end;

procedure Tworksheet1.cxView1Bands84HeaderClick(Sender: TObject);
var
  pline:string;
  seq:integer;
  r26,r27,r28,r29,r30,r31,r32,r33,r34,r35:boolean;
begin
  try
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select r26,r27,r28,r29,r30,r31,r32,r33,r34,r35 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
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
      r35:=fieldbyname('r35').value;
    end;
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='1';
    frmflag.Caption:='標幟 - WO Process/製單流程';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      params[0].asinteger:=1;
      open;
    end;
    if r26 then begin
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
  except
    abort;
  end;
end;

procedure Tworksheet1.cxView1Bands86HeaderClick(Sender: TObject);
var
  pline:string;
  seq:integer;
  r26,r27,r28,r29,r30,r31,r32,r33,r34,r35:boolean;
begin
  try
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select r26,r27,r28,r29,r30,r31,r32,r33,r34,r35 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
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
      r35:=fieldbyname('r35').value;
    end;
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='6';
    frmflag.Caption:='標幟 - Style nr prefix:- Product Categories / 款號前綴:- 產品種類';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      params[0].asinteger:=6;
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
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  except
    abort;
  end;
end;

procedure Tworksheet1.cxView1Bands88HeaderClick(Sender: TObject);
begin
  //if cxview1.bands[169].visible=true then cxview1.bands[169].visible:=false
  //else cxview1.bands[169].visible:=true;
  if frmqnqty_detail=nil then frmqnqty_detail:=tfrmqnqty_detail.create(nil);
  frmqnqty_detail.show;
  if cxview1.DataController.Filter.FilterText>'' then
  frmqnqty_detail.cxview1.DataController.Filter.FilterText:=cxview1.DataController.Filter.FilterText;
  //frmqnqty_detail.cxView1.DataController.UpdateData;
end;

procedure Tworksheet1.cxView1Bands89HeaderClick(Sender: TObject);
var
  pline:string;
  seq:integer;
  r26,r27,r28,r29,r30,r31,r32,r33,r34,r35:boolean;
begin
  try
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select r26,r27,r28,r29,r30,r31,r32,r33,r34,r35 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
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
    r35:=fieldbyname('r35').value;
  end;
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='10';
    frmflag.Caption:='標幟 - QN QTY Transit Process/數頁件數之交收流程';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      params[0].asinteger:=10;
      open;
    end;
    if r29 then begin
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
  except
    abort;
  end;
end;

procedure Tworksheet1.cxView1Bands99HeaderClick(Sender: TObject);
var
  pline:string;
  seq:integer;
  r26,r27,r28,r29,r30,r31,r32,r33,r34,r35:boolean;
begin
  try
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select r26,r27,r28,r29,r30,r31,r32,r33,r34,r35 from tbluser where usr='''+frmmain.ComboBox1.text+'''';
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
    r35:=fieldbyname('r35').value;
  end;
    if frmflag=nil then frmflag:=tfrmflag.create(nil);
    frmflag.Label1.caption:='4';
    frmflag.Caption:='標幟 - Choose the start point of Phase of Learning Curve/選擇段學曲線之開始段落';
    if pos('test',application.ExeName)>0 then frmflag.caption:=frmflag.caption+' - Test';
    with frmflag.Query1 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      commandtext:='select * from flag_marks where fseq=:x1';
      params[0].AsInteger:=4;
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
    frmflag.Panel2.Visible:=false;
    frmflag.Show;
    frmflag.DBGridEh1.SetFocus;
  except
    abort;
  end;
end;

procedure Tworksheet1.cxView1SCQTYPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  screen.Cursor:=crSQLWait;
  try
    if pos('S.',tblshedule.fieldbyname('pline').value)=0 then begin
    if frmlwo=nil then frmlwo:=tfrmlwo.create(nil);
    with ROQuery1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='execute procedure sp_tbllwo(:x1,:x2)';
      params[0].asstring:=tblshedule.fieldbyname('pline').value;
      params[1].asinteger:=tblshedule.fieldbyname('seq').value;
      execute;
    end;
    with frmlwo.Query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      commandtext:='select * from tbl_lwo where pline=:x1 and seq=:x2';
      params[0].asstring:=tblshedule.fieldbyname('pline').value;
      params[1].asinteger:=tblshedule.fieldbyname('seq').value;
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
    frmlwo.dbtext10.DataSource:=DataSource1;
    frmlwo.dbtext11.DataSource:=DataSource1;
    frmlwo.dbtext12.DataSource:=DataSource1;
    frmlwo.show;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tworksheet1.cxView1SJRSPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  dt1:tdate;
  tm:tdatetime;
  r12,r36:boolean;
  pstr:string;
begin
  if pos('S.',tblshedule.fieldbyname('pline').value)=0 then begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r12').isnull then r12:=false else r12:=fieldbyname('r12').value;
    if fieldbyname('r36').isnull then r36:=false else r36:=fieldbyname('r36').value;
  end;
  if r36=true then begin
      tm:=now;

    if not tblshedule.fieldbyname('cfwcrq').isnull then begin
      //if ((tblshedule.fieldbyname('flag3').isnull) or (tblshedule.FieldByName('flag3').value<'x')) then begin
        WITH ROQuery1 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          params.createparam(ftdatetime,'x3',ptinput);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_DIVIDEDSHJS(:X1,:X2,:x3)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          params[2].asdatetime:=tm;
          EXECUTE;
        END;
        WITH ROQuery1 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_updlineshjs_001(:X1,:X2)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          EXECUTE;
        END;
      //end;
        WITH ROQuery1 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_updlineshjslst(:X1,:X2)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          EXECUTE;
        END;
    end;
        if frmzktd=nil then frmzktd:=tfrmzktd.create(nil);
        frmzktd.lbl850.Caption:=lbl850.Caption;
        //{
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
        //}
        {
        if lbl850.Caption='SPE' then begin
          frmzktd.DBGridEh1.columns[35].FieldName:='AQTY_SP';
          frmzktd.DBGridEh1.columns[36].FieldName:='AQTY1_SP';
          frmzktd.DBGridEh1.columns[34].FieldName:='DIFF_SP';
          frmzktd.DBGridEh1.columns[38].FieldName:='DBXL_SP';
          frmzktd.DBGridEh1.columns[40].FieldName:='EFF2_SP';
          frmzktd.DBGridEh1.columns[10].FieldName:='csect_SP';
          frmzktd.DBGridEh1.columns[11].FieldName:='ceot_SP';
        end else begin
          frmzktd.DBGridEh1.columns[35].FieldName:='AQTY';
          frmzktd.DBGridEh1.columns[36].FieldName:='AQTY1';
          frmzktd.DBGridEh1.columns[34].FieldName:='DIFF';
          frmzktd.DBGridEh1.columns[38].FieldName:='DBXL';
          frmzktd.DBGridEh1.columns[40].FieldName:='EFF2';
          frmzktd.DBGridEh1.columns[10].FieldName:='csect';
          frmzktd.DBGridEh1.columns[11].FieldName:='ceot';
        end;
        }
        with frmzktd.query1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'pline',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from line_shjs where pline=:x1 and seq=:x2 AND FLAG=''0''';
          params[0].asstring:=tblshedule.fieldbyname('pline').value;
          params[1].asinteger:=tblshedule.fieldbyname('seq').value;
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
    {
    pstr:='5 '+tblshedule.fieldbyname('pline').value+' '+tblshedule.fieldbyname('seq').asstring;
    if pos('test',lowercase(application.ExeName))>0 then
    winexec(pchar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
    else winexec(pchar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
    }
  end else begin

  if not tblshedule.fieldbyname('flag3').isnull then begin
      tm:=now;

    if ((tblshedule.fieldbyname('flag3').value<'x') and (tblshedule.fieldbyname('flag3').value>'')) then begin
      if not tblshedule.fieldbyname('cfwcrq').isnull then begin
        if r12=true then begin
        WITH ROQuery1 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          params.createparam(ftdatetime,'x3',ptinput);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_DIVIDEDSHJS(:X1,:X2,:x3)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          params[2].asdatetime:=tm;
          EXECUTE;
        END;
        WITH ROQuery1 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_updlineshjs_001(:X1,:X2)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          EXECUTE;
        END;
        WITH ROQuery1 DO BEGIN
          CLOSE;
          PARAMS.CLEAR;
          PARAMS.CREATEPARAM(FTSTRING,'X1',PTINPUT);
          PARAMS.CREATEPARAM(FTINTEGER,'X2',PTINPUT);
          COMMANDTEXT:='EXECUTE PROCEDURE SP_updlineshjslst(:X1,:X2)';
          PARAMS[0].ASSTRING:=TBLSHEDULE.FIELDBYNAME('PLINE').VALUE;
          PARAMS[1].ASINTEGER:=TBLSHEDULE.FIELDBYNAME('SEQ').VALUE;
          EXECUTE;
        END;
        end;
      end;
    end;
        {
    pstr:='5 '+tblshedule.fieldbyname('pline').value+' '+tblshedule.fieldbyname('seq').asstring;
    if pos('test',lowercase(application.ExeName))>0 then
    winexec(pchar(extractfilepath(application.exename)+'lwpm_replication_test.exe '+pstr),sw_hide)
    else winexec(pchar(extractfilepath(application.exename)+'lwpm_replication.exe '+pstr),sw_hide);
    }

        if frmzktd=nil then frmzktd:=tfrmzktd.create(nil);
        frmzktd.lbl850.Caption:=lbl850.Caption;
        //{
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
        //}
        {
        if lbl850.Caption='SPE' then begin
          frmzktd.DBGridEh1.columns[35].FieldName:='AQTY_SP';
          frmzktd.DBGridEh1.columns[36].FieldName:='AQTY1_SP';
          frmzktd.DBGridEh1.columns[34].FieldName:='DIFF_SP';
          frmzktd.DBGridEh1.columns[38].FieldName:='DBXL_SP';
          frmzktd.DBGridEh1.columns[40].FieldName:='EFF2_SP';
          frmzktd.DBGridEh1.columns[10].FieldName:='csect_SP';
          frmzktd.DBGridEh1.columns[11].FieldName:='ceot_SP';
        end else begin
          frmzktd.DBGridEh1.columns[35].FieldName:='AQTY';
          frmzktd.DBGridEh1.columns[36].FieldName:='AQTY1';
          frmzktd.DBGridEh1.columns[34].FieldName:='DIFF';
          frmzktd.DBGridEh1.columns[40].FieldName:='DBXL';
          frmzktd.DBGridEh1.columns[38].FieldName:='EFF2';
          frmzktd.DBGridEh1.columns[10].FieldName:='csect';
          frmzktd.DBGridEh1.columns[11].FieldName:='ceot';
        end;
        }
        with frmzktd.query1 do begin
          close;
          params.clear;
          params.createparam(ftstring,'pline',ptinput);
          params.createparam(ftinteger,'seq',ptinput);
          commandtext:='select * from line_shjs where pline=:x1 and seq=:x2 AND FLAG=''0''';
          params[0].asstring:=tblshedule.fieldbyname('pline').value;
          params[1].asinteger:=tblshedule.fieldbyname('seq').value;
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

  end;
  end;
end;

procedure Tworksheet1.cxView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  str,str1:string;
begin
  //
  //if AItem.DataBinding.FieldName='RQXC' then showmessage(inttostr(AItem.ID))
  //else if AItem.DataBinding.Fieldname='BT3' then showmessage(inttostr(AItem.ID));
  //sT3 undue days limit{
  if (AItem<>nil) and (AItem.ID=48) then begin
    if ARecord.DisplayTexts[48]='' then str:='0' else str:=ARecord.DisplayTexts[48];
    if (strtoint(str)<0) then AStyle := FontBoldRedStyle;
    if (strtoint(str)>30) then AStyle := FontRedStyle;
  end;
  //}
  //aT3 undue days limit
  //{
  if (AItem<>nil) and (AItem.ID=171) then begin
    if ARecord.DisplayTexts[171]='' then str:='0' else str:=ARecord.DisplayTexts[171];
    if (strtoint(str)<0) then AStyle := FontBoldRedStyle;
    if (strtoint(str)>21) then AStyle := FontRedStyle;
  end;
  //}
end;

procedure Tworksheet1.cxView1TMUPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if frmscgxdy=nil then frmscgxdy:=tfrmscgxdy.create(nil);
  frmscgxdy.show;
end;

procedure Tworksheet1.cxView1CPLANPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  rmc,rpur:boolean;
begin
    //if frmrwoftystartdate=nil then frmrwoftystartdate:=tfrmrwoftystartdate.Create(nil);
    //frmrwoftystartdate.show;
    //{
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
      open;
      if not fieldbyname('rmc').isnull then rmc:=fieldbyname('rmc').value;
      if not fieldbyname('rpur').isnull then rpur:=fieldbyname('rpur').value;
    end;
    if (rmc or rpur) then begin
    if frmcurrstart=nil then frmcurrstart:=tfrmcurrstart.Create(nil);
    with frmcurrstart.Query1 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      commandtext:='select * from tbl_rwofdt where j_no=:x1 and j2_job=:x2 and rwo=:x3 and acol=:x4';
      params[0].asstring:=tblshedule.fieldbyname('j_no').value;
      params[1].asstring:=tblshedule.fieldbyname('j2_job').value;
      params[2].asstring:=tblshedule.fieldbyname('rwo').value;
      params[3].asstring:=tblshedule.fieldbyname('acol').value;
      open;
      if not fieldbyname('sby').isnull then frmcurrstart.CEdit1.Value:=fieldbyname('sby').value
      else frmcurrstart.CEdit1.Value:=0;
      if not fieldbyname('cfddt').isnull then frmcurrstart.DateEdit1.Date:=fieldbyname('cfddt').value
      else frmcurrstart.DateEdit1.Text:='';
      if not fieldbyname('knote').isnull then frmcurrstart.Memo1.Lines.Add(fieldbyname('knote').value)
      else frmcurrstart.Memo1.Lines.clear;
    end;
    if rmc then begin
      frmcurrstart.CEdit1.ReadOnly:=false;
      frmcurrstart.DateEdit1.ReadOnly:=false;
      frmcurrstart.Memo1.ReadOnly:=false;
      frmcurrstart.DBGridEh1.ReadOnly:=true;
      frmcurrstart.bitbtn1.Enabled:=false;
    end else begin
      frmcurrstart.CEdit1.ReadOnly:=true;
      frmcurrstart.DateEdit1.ReadOnly:=true;
      frmcurrstart.Memo1.ReadOnly:=true;
      frmcurrstart.DBGridEh1.ReadOnly:=false;
      frmcurrstart.bitbtn1.Enabled:=true;
    end;
    frmcurrstart.Show;
    end;
    //}
end;

procedure Tworksheet1.cxView1FLAG3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if pos('SB',tblshedule.fieldbyname('pline').value)>0 then exit;
  if pos('S.',tblshedule.fieldbyname('pline').value)>0 then exit;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r12').value=true then begin
      if frmsellws=nil then frmsellws:=tfrmsellws.Create(nil);
      if not tblshedule.fieldbyname('flag3').isnull then begin
        if (tblshedule.fieldbyname('flag3').value>='1') and (tblshedule.Fieldbyname('flag3').value<='9s') then begin
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select dt1,sect1,dt2,sect2 from tbl_schstatus where pline=:x1 and seq=:x2';
            params[0].asstring:=tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=tblshedule.fieldbyname('seq').value;
            open;
          end;
          if not clientdataset2.fieldbyname('dt1').isnull then begin
            frmsellws.DateEdit1.Date:=clientdataset2.fieldbyname('dt1').value;
            if not clientdataset2.FieldByName('sect1').isnull then frmsellws.Edit1.Value:=clientdataset2.fieldbyname('sect1').value;
            frmsellws.xh3.Checked:=true;
            frmsellws.xh2.ItemIndex:=-1;
          end else begin
            if not clientdataset2.fieldbyname('dt2').isnull then frmsellws.DateEdit1.Date:=clientdataset2.fieldbyname('dt2').value;
            if not clientdataset2.fieldbyname('sect2').isnull then frmsellws.Edit1.Value:=clientdataset2.fieldbyname('sect2').value;
            frmsellws.xh1.Checked:=true;
            frmsellws.xh2.itemindex:=-1;
          end;
        end else if tblshedule.fieldbyname('flag3').value='w' then begin
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select dt3,sect3,sta3 from tbl_schstatus where pline=:x1 and seq=:x2';
            params[0].asstring:=tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=tblshedule.fieldbyname('seq').value;
            open;
          end;
          if not clientdataset2.fieldbyname('dt3').isnull then frmsellws.DateEdit1.Date:=clientdataset2.fieldbyname('dt3').value;
          if not clientdataset2.fieldbyname('sect3').isnull then frmsellws.Edit1.Value:=clientdataset2.fieldbyname('sect3').value;
          if (clientdataset2.fieldbyname('sta3').value='Halt') or (clientdataset2.fieldbyname('sta3').value='H1') then
          frmsellws.xh2.ItemIndex:=0
          else if clientdataset2.fieldbyname('sta3').value='H2' then frmsellws.xh2.ItemIndex:=1
          else if clientdataset2.fieldbyname('sta3').value='H3' then frmsellws.xh2.ItemIndex:=2
          else if clientdataset2.fieldbyname('sta3').value='H4' then frmsellws.xh2.ItemIndex:=3;
        end else if (copy(tblshedule.FieldByName('flag3').value,1,1)='x') or (tblshedule.fieldbyname('flag3').value='z') then begin
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select dt4,sect4 from tbl_schstatus where pline=:x1 and seq=:x2';
            params[0].asstring:=tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=tblshedule.fieldbyname('seq').value;
            open;
          end;
          if not clientdataset2.fieldbyname('dt4').isnull then frmsellws.DateEdit1.Date:=clientdataset2.fieldbyname('dt4').value;
          if not clientdataset2.fieldbyname('sect4').isnull then frmsellws.Edit1.Value:=clientdataset2.fieldbyname('sect4').value;
          frmsellws.xh4.Checked:=true;
          frmsellws.xh2.ItemIndex:=-1;
        end;
      end ;
      frmsellws.xh1.Enabled:=true;
      frmsellws.xh3.Enabled:=true;
      frmsellws.xh4.Enabled:=true;
      frmsellws.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tworksheet1.cxView1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  str,str1:string;
  ARec: TRect;
begin
  str:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1diff_m.Index],   varString));
  str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1fw_wdn.Index],   varString));
  if (AViewInfo.Item = cxview1diff_m) then begin
    if str='' then str:='0';
    if strtoint(str)<strtoint(str1) then ACanvas.canvas.Font.Color   :=   clRed
    else ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;
  //
  str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1diff_s.Index],   varString));
  if (AViewInfo.Item = cxview1diff_s) then begin
    if str1='' then str1:='0';
    if strtoint(str1)<6 then ACanvas.canvas.Font.Color   :=   clRed
    else ACanvas.canvas.Font.Color   :=   clBlack;
    ACanvas.FillRect(ARec);
  end;

  {
  str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1bt3.Index],   varString));
  if (AViewInfo.Item = cxview1bt3) then begin
    if str1='' then str1:='0';
    if strtoint(str1)<0 then begin
      ACanvas.canvas.Font.Color   :=   clRed;
      ACanvas.Canvas.Font.Style   :=   [fsBold];
    end else if strtoint(str1)>21 then begin
      ACanvas.canvas.Font.Color   :=   clRed;
      ACanvas.Canvas.Font.Style   :=   [];
    end else begin
      ACanvas.canvas.Font.Color   :=   clBlack;
      ACanvas.Canvas.Font.Style   :=   [];
    end;
    ACanvas.FillRect(ARec);
  end;

  str1:=trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxview1rqxc.Index],   varString));
  if (AViewInfo.Item = cxview1rqxc) then begin
    if str1='' then str1:='0';
    if strtoint(str1)<0 then begin
      ACanvas.canvas.Font.Color   :=   clRed;
      ACanvas.Canvas.Font.Style   :=   [fsBold];
    end else if strtoint(str1)>30 then begin
      ACanvas.canvas.Font.Color   :=   clRed;
      ACanvas.Canvas.Font.Style   :=   [];
    end else begin
      ACanvas.canvas.Font.Color   :=   clBlack;
      ACanvas.Canvas.Font.Style   :=   [];
    end;
    ACanvas.FillRect(ARec);
  end;
  }
end;

procedure Tworksheet1.cxView1CustomDrawIndicatorCell(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
  var ADone: Boolean);
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

procedure Tworksheet1.cxView1DataControllerFilterChanged(Sender: TObject);
begin
  calc_somettl;
end;

procedure Tworksheet1.cxView1dtaGetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText:='Code FP = F, P, AL, E [主要做bonding圍(B)和衭仔(K)]';
  AHintText:=AHintText+chr(13)+chr(20)+'Code PF = P, F, AL, E [主要做針缝圍(B)]';
  AHintText:=AHintText+chr(13)+chr(20)+'Code PAL = P, AL, E [無F, 主要做針缝衭仔(K)]';
  AHintText:=AHintText+chr(13)+chr(20)+'Code FAL = F, AL, E [無P, 主要做針缝圍(B)]';
  AHintText:=AHintText+chr(13)+chr(20)+'Code PE = P, E (無F和AL, 主要做bonding衭仔(K)';
  AHintText:=AHintText+chr(13)+chr(20)+'Code ALE = AL, E [無F和P, 主要做針缝衭仔(K)]';
  AHintText:=AHintText+chr(13)+chr(20)+'Code PPP = P, PP (F+AL+E都結合在PP工場做)';
  AHintText:=AHintText+chr(13)+chr(20)+'Code PP = PP (所有工序都在PP工場做)';
  AHintTextRect.Left:=AHintTextRect.Left-50;
  AHintTextRect.Top:=AHintTextRect.Top+20;
  AHintTextRect.Right:=AHintTextRect.Right+250;
  AIsHintMultiLine:=True;
end;

procedure Tworksheet1.cxView1eycPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if not tblshedule.fieldbyname('eyc').isnull then begin
    if tblshedule.fieldbyname('eyc').value=0 then exit;
    if tblshedule.fieldbyname('eyc').value>0 then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_swpm_gensample(:x1,:x2)';
        params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
        params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
        execute;
      end;
      if frmsampleqty=nil then frmsampleqty:=tfrmsampleqty.create(nil);
      frmsampleqty.label6.caption:='SEW';
      frmsampleqty.show;
      with frmsampleqty.query1 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='select * from tblshedule_sample where pline=:x1 and seq=:x2 and ((s_swo like ''PW%'') or (s_swo like ''DW%''))';
        params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
        params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
        open;
      end;
    end;
  end;
  //showmessage('Under development!');
end;

procedure Tworksheet1.cxView1J2_JOBPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  str1,str2:string;
begin
  {
    if frmnote=nil then frmnote:=tfrmnote.Create(nil);
    frmnote.Caption:='Notepad for LWPM - WO';
    frmnote.Label6.Caption:='2';
    with frmnote.Query1 do begin
      close;
      params.clear;
      commandtext:='select * from tbl_notepad where j_no='''+tblshedule.fieldbyname('j_no').value+''' and j2_job='''+tblshedule.fieldbyname('j2_job').value+'''';
      open;
    end;
    frmnote.Edit1.text:=tblshedule.fieldbyname('j_no').value;
    frmnote.Edit2.text:=tblshedule.fieldbyname('j2_job').value;
    frmnote.Show;
  }
  //
    //str1:=extractfiledir(application.exename);
    //str1:=frmmain.Memo2.lines.strings[0];
    str1:=Memo2.lines.strings[0];
    if tblshedule.FieldByName('tplant').value='KB' then str2:='"Joew" "123" "TH" "PH.RWO.UI3.0.dll" "PH.RWO.UI.Report.ExReport" "PH.RWO.BackEnd3.0.dll,PH.RWO.BackEnd.ReportJob.JobWOReport,'+tblshedule.fieldbyname('j2_job').value+'"'
    else str2:='"Joew" "123" "EN" "PH.RWO.UI3.0.dll" "PH.RWO.UI.Report.ExReport" "PH.RWO.BackEnd3.0.dll,PH.RWO.BackEnd.ReportJob.JobWOReport,'+tblshedule.fieldbyname('j2_job').value+'"';
    shellexecute(0,'open',pchar('PH.Platform.PHWinApp.exe'),pchar(str2),pchar(str1),sw_show);
end;

procedure Tworksheet1.ExpandAll1Click(Sender: TObject);
begin
  cxView1.ViewData.Expand(True);
end;

procedure Tworksheet1.CollapseAll1Click(Sender: TObject);
begin
  cxView1.ViewData.Collapse(True);
end;

procedure Tworksheet1.ClearSorting1Click(Sender: TObject);
begin
  if cxView1.SortedItemCount>0 then
    cxView1.SortedItems[0].SortOrder:=soNone;
end;

procedure Tworksheet1.StartTime1Click(Sender: TObject);
var
  usr:string;
begin
  with query1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select usr,stime from tblshedule_stime where pline=:x1 and seq=:x2';
    params[0].asstring:=tblshedule.fieldbyname('pline').value;
    params[1].asinteger:=tblshedule.fieldbyname('seq').value;
    open;
    if not fieldbyname('usr').isnull then usr:=fieldbyname('usr').value else usr:='';
    if not fieldbyname('stime').isnull then showmessage('User: '+usr+' Marked AL "s" at: '+formatdatetime('yy-MM-dd hh:nn:ss',fieldbyname('stime').value));
  end;
end;

procedure Tworksheet1.cxView1QRXCPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  mouse1:Tmouse;
  y,m,d:word;
  dt:tdate;
  r11:boolean;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r11').value=true then begin
      r11:=true;
    end else r11:=false;
  end;
  if r11 then begin
    decodedate(tblshedule.fieldbyname('yqlcrq').value,y,m,d);
    dt:=encodedate(y,m,d);
    mouse1:=tmouse.Create;
    try
      if frmmcal=nil then frmmcal:=tfrmmcal.create(nil);
      frmmcal.Label1.Caption:='AQ';
      frmmcal.MonthCalendar1.CalendarDate:=dt-tblshedule.fieldbyname('qrxc').value;
      frmmcal.Left:=mouse1.CursorPos.X-100;
      frmmcal.Top:=mouse1.CursorPos.Y;
      frmmcal.Show;
    finally
      mouse1.Free;
    end;
  end;
end;

procedure Tworksheet1.ExportGAIData1Click(Sender: TObject);
begin
  if frmexportgai=nil then frmexportgai:=tfrmexportgai.create(nil);
  frmexportgai.show;
end;

procedure Tworksheet1.ExporttoExcel1Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
  si:integer;
begin
  //if cxView1.SortedItemCount>0 then
  for si:=0 to cxView1.SortedItemCount-1 do begin
    cxView1.SortedItems[si].SortOrder:=soNone;
  end;

  if tblshedule.state=dsedit then tblshedule.post;
  cust:=edit1.text;
  pline:=edit2.text;
  //styleno:=edit3.text;
  tshop:=edit4.text;
  cstyle:=edit5.text;
  //if edit6.text<>'CN' then
  //tplant:=edit6.text else tplant:='';
  tplant:=edit6.text;
  with tblshedule do begin
    close;
    params.clear;
    commandtext:='select * from tblshedule where yzh=0';
    if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
    if cust>'' then commandtext:=commandtext+' and j_no='''+cust+'''';
    if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
    if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
    if tplant>'' then begin
      if tplant<>'ALL' then begin
        if edit6.text<>'CN' then begin
          if edit6.text<>'GX' then
            commandtext:=commandtext+' and tplant='''+edit6.text+''''
          else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
        end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and grp='''+combobox1.text+'''';
    if edit7.text>'' then commandtext:=commandtext+' and j_no like '''+edit7.text+'%''';
    if combobox2.text>'' then commandtext:=commandtext+' and flag6 like '''+combobox2.text+'%''';
    if combobox3.text>'' then commandtext:=commandtext+' and flag6='''+combobox3.text+'''';
    if combobox4.text>'' then commandtext:=commandtext+' and dbzs='''+combobox4.text+'''';
    if edit3.text>'' then commandtext:=commandtext+' and acol='''+edit3.text+'''';
    if combobox5.text>'' then commandtext:=commandtext+' and flag2='''+combobox5.text+'''';
    if chk1.Checked then commandtext:=commandtext+' and ((substr(lflag,1,1) in (''!'',''^''))) and (substr(pline,1,2) not in (''SG'',''PS'',''NS'',''RS'',''SB'')) '
                                     +'and ((fccs not like ''%u%'') and (fccs not like ''%d%'') and (fccs not like ''%D%''))';
    if chk2.Checked then commandtext:=commandtext+' and ((fccs like ''%u%'') or (fccs like ''%d%'') or (fccs like ''%D%''))';
    if chk3.Checked then commandtext:=commandtext+' and plan_date is null';
    if chk5.Checked then commandtext:=commandtext+' and pline like ''%SB%''';
    if chk6.Checked then commandtext:=commandtext+' and flag3 like ''%s%'' and flag3<>''1s'' and qnf=''m''';
    if edit8.text>'' then commandtext:=commandtext+' and upper(jhrs) like '''+edit8.text+'%''';
    if (chk1.Checked or chk2.Checked or chk4.Checked) then commandtext:=commandtext+' and pline not in (''T056F'',''T057F'')';
    //commandtext:=commandtext+' and substr(flag3,1,2) in (''1s'',''2s'',''3s'',''4s'',''5s'',''6s'',''7s'',''8s'',''9s'',''10'',''11'',''12'',''13'',''14'',''15'')';
    //commandtext:=commandtext+' and flag3 like ''%s%''';
    commandtext:=commandtext+' and ((flag3 like ''%s%'') or (flag3 like ''%x%'' and sqty<scqty))';
    open;
    editkey;
    if (chk1.Checked or chk2.Checked or chk4.Checked) then indexname:='idx7'
    else indexname:='idx1';
    setkey;
    first;
  end;
end;

procedure Tworksheet1.transitFlow1Click(Sender: TObject);
begin
  if frmtransit_temp=nil then frmtransit_temp:=tfrmtransit_temp.Create(nil);
  frmtransit_temp.DateEdit1.date:=date;
  frmtransit_temp.DateEdit2.Date:=date;
  frmtransit_temp.Show;
end;

procedure Tworksheet1.AccessSampleQty1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_rwo_sample_new';
      execute;
    end;
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_rwo_qty';
      execute;
    end;
    with frmmain.adoquery1 do begin
      close;
      {
      sql.text:='elect a.workorderno,a.colorcode,rtrim(b.custsize)+rtrim(b.custcup) as psize,isnull(b.sizeorder,0) as sizeorder,isnull(b.cuporder,0) as cuporder,'
                 +'a.sampletype,a.workshop,isnull(a.sampleqty,0) as sampleqty,a.sampledespatchdate '
                 +'from [ph.rwo1]..workordersample a,[ph.rwo1]..view_woc_rwo b where a.salesorderno=b.salesorderno and a.workorderno=b.workorderno '
                 +'and a.colorcode=b.colorcode and a.size=b.size and a.cup=b.cup and isnull(a.sampleqty,0)>0 and a.workshop is not null and b.deliverydate>=''2018-01-01'' and b.workorderno like ''W%''';
      }
      sql.text:='exec phdb..sp_getwosampleqty';
      open;
      first;
      while not eof do begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftinteger,'x4',ptinput);
          params.createparam(ftinteger,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          params.createparam(ftinteger,'x8',ptinput);
          params.createparam(ftdate,'x9',ptinput);
          params.createparam(ftstring,'x10',ptinput);
          params.createparam(ftstring,'x11',ptinput);
          params.createparam(ftstring,'x12',ptinput);
          commandtext:='insert into tbl_rwo_sample_new(j2_job,acol,psiz,s_order,c_order,s_type,s_ws,s_qty,s_ddt,s_add,s_fun,j_no) values(:x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12)';
          if not frmmain.adoquery1.fieldbyname('j2_job').isnull then
          params[0].asstring:=frmmain.adoquery1.fieldbyname('j2_job').value else params[0].asstring:='';
          if not frmmain.adoquery1.fieldbyname('acol').isnull then
          params[1].asstring:=frmmain.adoquery1.fieldbyname('acol').value else params[1].asstring:='';
          if not frmmain.adoquery1.fieldbyname('psiz').isnull then
          params[2].asstring:=frmmain.adoquery1.fieldbyname('psiz').value else params[2].asstring:='';
          if not frmmain.adoquery1.fieldbyname('s_order').isnull then
          params[3].asinteger:=frmmain.adoquery1.fieldbyname('s_order').value else params[3].asinteger:=0;
          if not frmmain.adoquery1.fieldbyname('c_order').isnull then
          params[4].asinteger:=frmmain.adoquery1.fieldbyname('c_order').value else params[4].asinteger:=0;
          if not frmmain.adoquery1.fieldbyname('s_type').isnull then
          params[5].asstring:=frmmain.adoquery1.fieldbyname('s_type').value else params[5].asstring:='';
          if not frmmain.adoquery1.fieldbyname('s_ws').isnull then
          params[6].asstring:=frmmain.adoquery1.fieldbyname('s_ws').value else params[6].asstring:='';
          if not frmmain.adoquery1.fieldbyname('s_qty').isnull then
          params[7].asinteger:=frmmain.adoquery1.fieldbyname('s_qty').value else params[7].asinteger:=0;
          if not frmmain.adoquery1.fieldbyname('s_ddt').isnull then
          params[8].asdate:=frmmain.adoquery1.fieldbyname('s_ddt').value
          else params[8].asdate:=encodedate(1988,8,8);
          if not frmmain.adoquery1.fieldbyname('s_add').isnull then
          params[9].asstring:=frmmain.adoquery1.fieldbyname('s_add').value else params[9].asstring:='';
          if not frmmain.adoquery1.fieldbyname('s_fun').isnull then
          params[10].asstring:=frmmain.adoquery1.fieldbyname('s_fun').value else params[10].asstring:='';
          if not frmmain.adoquery1.fieldbyname('j_no').isnull then
          params[11].asstring:=frmmain.adoquery1.fieldbyname('j_no').value else params[11].asstring:='';
          execute;
        end;
        application.processmessages;
        next;
      end;
    end;
    with frmmain.adoquery1 do begin
      close;
      sql.text:='select projectno,workorderno,colorcode,sum(bulkqty+isnull(originalsampleqty,0)) as qty '
                 +'from [ph.rwo1]..view_woc_rwo where deliverydate>=''2019-05-01'' and workorderno like ''W%'' group by projectno,workorderno,colorcode';
      open;
      first;
      while not eof do begin
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftstring,'x1',ptinput);
          params.createparam(ftstring,'x2',ptinput);
          params.createparam(ftinteger,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          commandtext:='insert into tbl_rwo_qty(j2_job,acol,qty,j_no) values(:x1,:x2,:x3,:x4)';
          if not frmmain.adoquery1.fieldbyname('workorderno').isnull then
          params[0].asstring:=frmmain.adoquery1.fieldbyname('workorderno').value else params[0].asstring:='';
          if not frmmain.adoquery1.fieldbyname('colorcode').isnull then
          params[1].asstring:=frmmain.adoquery1.fieldbyname('colorcode').value else params[1].asstring:='';
          if not frmmain.adoquery1.fieldbyname('qty').isnull then
          params[2].asinteger:=frmmain.adoquery1.fieldbyname('qty').value else params[2].asinteger:=0;
          if not frmmain.adoquery1.fieldbyname('projectno').isnull then
          params[3].asstring:=frmmain.adoquery1.fieldbyname('projectno').value else params[3].asstring:='';
          execute;
        end;
        application.processmessages;
        next;
      end;
    end;
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_swpm_updsmpl';
      execute;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tworksheet1.ALE1Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  try
    with ROQuery1 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_swpm_updsewn';
      execute;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tworksheet1.AllSewingQNs1Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
  si:integer;
begin
  //if cxView1.SortedItemCount>0 then
  for si:=0 to cxView1.SortedItemCount-1 do begin
    cxView1.SortedItems[si].SortOrder:=soNone;
  end;

  if tblshedule.state=dsedit then tblshedule.post;
  cust:=edit1.text;
  pline:=edit2.text;
  //styleno:=edit3.text;
  tshop:=edit4.text;
  cstyle:=edit5.text;
  //if edit6.text<>'CN' then
  //tplant:=edit6.text else tplant:='';
  tplant:=edit6.text;
  with tblshedule do begin
    close;
    params.clear;
    commandtext:='select * from tblshedule where yzh=0';
    if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
    if cust>'' then commandtext:=commandtext+' and j_no='''+cust+'''';
    if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
    if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
    if tplant>'' then begin
      if tplant<>'ALL' then begin
        if edit6.text<>'CN' then begin
          if edit6.text<>'GX' then
            commandtext:=commandtext+' and tplant='''+edit6.text+''''
          else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
        end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and grp='''+combobox1.text+'''';
    if edit7.text>'' then commandtext:=commandtext+' and j_no like '''+edit7.text+'%''';
    if combobox2.text>'' then commandtext:=commandtext+' and flag6 like '''+combobox2.text+'%''';
    if combobox3.text>'' then commandtext:=commandtext+' and flag6='''+combobox3.text+'''';
    if combobox4.text>'' then commandtext:=commandtext+' and dbzs='''+combobox4.text+'''';
    if edit3.text>'' then commandtext:=commandtext+' and acol='''+edit3.text+'''';
    if combobox5.text>'' then commandtext:=commandtext+' and flag2='''+combobox5.text+'''';
    if chk1.Checked then commandtext:=commandtext+' and ((substr(lflag,1,1) in (''!'',''^''))) and (substr(pline,1,2) not in (''SG'',''PS'',''NS'',''RS'',''SB'')) '
                                     +'and ((fccs not like ''%u%'') and (fccs not like ''%d%'') and (fccs not like ''%D%''))';
    if chk2.Checked then commandtext:=commandtext+' and ((fccs like ''%u%'') or (fccs like ''%d%'') or (fccs like ''%D%''))';
    if chk3.Checked then commandtext:=commandtext+' and plan_date is null';
    if chk5.Checked then commandtext:=commandtext+' and pline like ''%SB%''';
    if chk6.Checked then commandtext:=commandtext+' and flag3 like ''%s%'' and flag3<>''1s'' and qnf=''m''';
    if edit8.text>'' then commandtext:=commandtext+' and upper(jhrs) like '''+edit8.text+'%''';
    if (chk1.Checked or chk2.Checked or chk4.Checked) then commandtext:=commandtext+' and pline not in (''T056F'',''T057F'')';
    //commandtext:=commandtext+' and substr(flag3,1,2) in (''1s'',''2s'',''3s'',''4s'',''5s'',''6s'',''7s'',''8s'',''9s'',''10'',''11'',''12'',''13'',''14'',''15'')';
    commandtext:=commandtext+' and flag3 like ''%s%''';
    open;
    editkey;
    if (chk1.Checked or chk2.Checked or chk4.Checked) then indexname:='idx7'
    else indexname:='idx1';
    setkey;
    first;
  end;
end;

procedure Tworksheet1.cxView1RWOPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  str1,str2:string;
begin
    //str1:=extractfiledir(application.exename);
    //str1:=frmmain.Memo2.lines.strings[0];
    str1:=Memo2.lines.strings[0];
    if tblshedule.FieldByName('tplant').value='KB' then str2:='"Joew" "123" "TH" "PH.RWO.UI3.0.dll" "PH.RWO.UI.Report.ExReport" "PH.RWO.BackEnd3.0.dll,PH.RWO.BackEnd.ReportJob.JobRWOReport,'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+copy(tblshedule.fieldbyname('rwo').value,1,pos('/',tblshedule.fieldbyname('rwo').value)-1)+'"'
    else str2:='"Joew" "123" "EN" "PH.RWO.UI3.0.dll" "PH.RWO.UI.Report.ExReport" "PH.RWO.BackEnd3.0.dll,PH.RWO.BackEnd.ReportJob.JobRWOReport,'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+copy(tblshedule.fieldbyname('rwo').value,1,pos('/',tblshedule.fieldbyname('rwo').value)-1)+'"';
    //str2:=str2+' '+tblshedule.fieldbyname('j2_job').value+' '+tblshedule.fieldbyname('acol').value+' '+copy(tblshedule.fieldbyname('rwo').value,1,pos('/',tblshedule.fieldbyname('rwo').value)-1);
    shellexecute(0,'open',pchar('PH.Platform.PHWinApp.exe'),pchar(str2),pchar(str1),sw_show);
end;

procedure Tworksheet1.cxView1FCCSPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  str1,str2,usr1,usr2,usr3,a1,c1,b1,wwip,ct,sp,bd,cust0:string;
  ksrq:tdate;
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_clearshedule_ws';
    execute;
  end;
  wwip:='false';
  if not tblshedule.fieldbyname('flag3').isnull then begin
    if pos('s',tblshedule.fieldbyname('flag3').value)>0 then wwip:='true'
    else if pos('x',tblshedule.fieldbyname('flag3').value)>0 then wwip:='true';
  end;
  cust0:=copy(tblshedule.fieldbyname('j_no').value,1,4);
  if not tblshedule.fieldbyname('cfksrq').isnull then ksrq:=tblshedule.fieldbyname('cfksrq').value
  else ksrq:=date+90;
  with clientdataset1 do begin
    close;
    params.clear;
    //commandtext:='select distinct user1,user2,user3 from tbl_qncfmd where tplant='''+tblshedule.fieldbyname('tplant').value+'''';
    if tblshedule.fieldbyname('tplant').value='SL' then
    commandtext:='select distinct user1,user2,user3 from tbl_qncfmd_new where tplant='''+tblshedule.fieldbyname('tplant').value+''' and cust='''+cust0+''''
    else commandtext:='select distinct user1,user2,user3 from tbl_qncfmd_new where tplant='''+tblshedule.fieldbyname('tplant').value+'''';
    open;
    if not fieldbyname('user1').isnull then usr1:=fieldbyname('user1').value else usr1:='';
    if not fieldbyname('user2').isnull then usr2:=fieldbyname('user2').value else usr2:='';
    if not fieldbyname('user3').isnull then usr3:=fieldbyname('user3').value else usr3:='';
  end;
  if usr1='' then begin
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select distinct user1,user2,user3 from tbl_qncfmd_new where tplant='''+tblshedule.fieldbyname('tplant').value+''' and cust=''''';
      open;
      if not fieldbyname('user1').isnull then usr1:=fieldbyname('user1').value else usr1:='';
      if not fieldbyname('user2').isnull then usr2:=fieldbyname('user2').value else usr2:='';
      if not fieldbyname('user3').isnull then usr3:=fieldbyname('user3').value else usr3:='';
    end;
  end;
  //str1:=frmmain.Memo2.lines.strings[0];
  str1:=Memo2.lines.strings[0];
  if ksrq<=date+60 then begin
    str2:='"Joew" "123" "EN" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.QNv4,0;'+tblshedule.fieldbyname('pline').value+';'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+tblshedule.fieldbyname('rwo').value+';'+tblshedule.fieldbyname('fccs').value+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-30)+';';
    str2:=str2+formatdatetime('yyyy-MM-dd',ksrq-15)+';2"';
    //showmessage(str1);
    //showmessage(str2);
    shellexecute(0,'open',pchar('PH.Platform.PHWinApp.exe'),pchar(str2),pchar(str1),sw_show);
  end;
  //

{
var
  str1,str2,usr1,usr2,usr3,a1,c1,b1,wwip,ct,sp,bd,cust0:string;
  cqn:integer;
  sqn:string;
  ksrq:tdate;
begin
  //str1:=extractfiledir(application.exename);
  wwip:='false';
  if not tblshedule.fieldbyname('flag3').isnull then begin
    if pos('s',tblshedule.fieldbyname('flag3').value)>0 then wwip:='true'
    else if pos('x',tblshedule.fieldbyname('flag3').value)>0 then wwip:='true';
  end;
  cust0:=copy(tblshedule.fieldbyname('j_no').value,1,4);
  if not tblshedule.fieldbyname('cfksrq').isnull then ksrq:=tblshedule.fieldbyname('cfksrq').value
  else ksrq:=date+90;
  with clientdataset1 do begin
    close;
    params.clear;
    //commandtext:='select distinct user1,user2,user3 from tbl_qncfmd where tplant='''+tblshedule.fieldbyname('tplant').value+'''';
    if tblshedule.fieldbyname('tplant').value='SL' then
    commandtext:='select distinct user1,user2,user3 from tbl_qncfmd_new where tplant='''+tblshedule.fieldbyname('tplant').value+''' and cust='''+cust0+''''
    else commandtext:='select distinct user1,user2,user3 from tbl_qncfmd_new where tplant='''+tblshedule.fieldbyname('tplant').value+'''';
    open;
    if not fieldbyname('user1').isnull then usr1:=fieldbyname('user1').value else usr1:='';
    if not fieldbyname('user2').isnull then usr2:=fieldbyname('user2').value else usr2:='';
    if not fieldbyname('user3').isnull then usr3:=fieldbyname('user3').value else usr3:='';
  end;
  if usr1='' then begin
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select distinct user1,user2,user3 from tbl_qncfmd_new where tplant='''+tblshedule.fieldbyname('tplant').value+''' and cust=''''';
      open;
      if not fieldbyname('user1').isnull then usr1:=fieldbyname('user1').value else usr1:='';
      if not fieldbyname('user2').isnull then usr2:=fieldbyname('user2').value else usr2:='';
      if not fieldbyname('user3').isnull then usr3:=fieldbyname('user3').value else usr3:='';
    end;
  end;
  str1:=frmmain.Memo2.lines.strings[0];
  if chk10.Checked then begin
    //cQN
    if chk6.Checked then begin
    //if (copy(tblshedule.fieldbyname('flag3').value,1,2)>='2s') and (copy(tblshedule.fieldbyname('flag3').value,1,2)<='9s') then begin
      with clientdataset1 do begin
        close;
        params.clear;
        commandtext:='select count(distinct cstyle) as x1,count(distinct acol) as x2 from tblshedule where pline='''+tblshedule.fieldbyname('pline').value+''' and yzh=0 and flag3 like ''%s%''';
        open;
        if fieldbyname('x1').value>1 then begin
          if fieldbyname('x2').value=1 then begin
            if (pos('AFGH',tblshedule.fieldbyname('j_no').value)>0) or (pos('ANFF',tblshedule.fieldbyname('j_no').value)>0) or (pos('SALL',tblshedule.fieldbyname('j_no').value)>0) then cqn:=3
            else cqn:=2;
          end else cqn:=2;
        end else if fieldbyname('x2').value>1 then cqn:=2
        else cqn:=1;
        //if ((fieldbyname('x1').value>1) or (fieldbyname('x2').value>1)) then cqn:=2 else cqn:=1;
      end;
      if (cqn=1) then begin
        if tblshedule.FieldByName('tplant').value='KB' then str2:='"Joew" "123" "TH" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.cQN3,'+tblshedule.fieldbyname('tplant').value+';'+tblshedule.fieldbyname('pline').value+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-30)+';'
        else str2:='"Joew" "123" "EN" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.cQN3,'+tblshedule.fieldbyname('tplant').value+';'+tblshedule.fieldbyname('pline').value+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-30)+';';
        str2:=str2+formatdatetime('yyyy-MM-dd',ksrq-20)+';1;'+usr1+';'+formatdatetime('yyyy-MM-dd',ksrq-16)+';'+usr2+';'
        +formatdatetime('yyyy-MM-dd',ksrq-16)+';'+usr3+';'+formatdatetime('yyyy-MM-dd',ksrq-16)+'"';
      end else if (cqn=2) then begin
        if tblshedule.FieldByName('tplant').value='KB' then str2:='"Joew" "123" "TH" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.cQN1,'+tblshedule.fieldbyname('tplant').value+';'+tblshedule.fieldbyname('pline').value+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-30)+';'
        else str2:='"Joew" "123" "EN" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.cQN1,'+tblshedule.fieldbyname('tplant').value+';'+tblshedule.fieldbyname('pline').value+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-30)+';';
        str2:=str2+formatdatetime('yyyy-MM-dd',ksrq-20)+';1;'+usr1+';'+formatdatetime('yyyy-MM-dd',ksrq-16)+';'+usr2+';'
        +formatdatetime('yyyy-MM-dd',ksrq-16)+';'+usr3+';'+formatdatetime('yyyy-MM-dd',ksrq-16)+'"';
      end else if (cqn=3) then begin
        if tblshedule.FieldByName('tplant').value='KB' then str2:='"Joew" "123" "TH" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.cQN1,'+tblshedule.fieldbyname('tplant').value+';'+tblshedule.fieldbyname('pline').value+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-30)+';'
        else str2:='"Joew" "123" "EN" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.cQN2,'+tblshedule.fieldbyname('tplant').value+';'+tblshedule.fieldbyname('pline').value+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-30)+';';
        str2:=str2+formatdatetime('yyyy-MM-dd',ksrq-20)+';1;'+usr1+';'+formatdatetime('yyyy-MM-dd',ksrq-16)+';'+usr2+';'
        +formatdatetime('yyyy-MM-dd',ksrq-16)+';'+usr3+';'+formatdatetime('yyyy-MM-dd',ksrq-16)+'"';
      end;
    //sQN
    end else if chk2.Checked then begin
    //end else if (pos('u',tblshedule.fieldbyname('fccs').value)>0) or (pos('d',tblshedule.fieldbyname('fccs').value)>0) then begin
      sqn:=tblshedule.fieldbyname('fccs').value;
      if pos('u',sqn)>0 then sqn:=copy(sqn,1,length(sqn)-1)
      else sqn:=copy(sqn,1,pos('d',sqn)-1);
      with clientdataset1 do begin
        close;
        params.clear;
        commandtext:='select seq,flag3 from tblshedule where pline<>'''+tblshedule.fieldbyname('pline').value+''' and j2_job='''+tblshedule.fieldbyname('j2_job').value+''' and acol='''+tblshedule.fieldbyname('acol').value+''' and rwo='''+tblshedule.fieldbyname('rwo').value+''' and ((fccs like '''+sqn+'%u'') or (fccs like +'''+sqn+'%d%'')) and yzh=0';// and flag3 like ''%s%''';
        open;
        //if not fieldbyname('seq').isnull then cqn:=1 else cqn:=0;
        if fieldbyname('seq').isnull then cqn:=0 else begin
          if not fieldbyname('flag3').isnull then begin
            if pos('s',fieldbyname('flag3').value)>0 then cqn:=2
            else if pos('x',fieldbyname('flag3').value)>0 then cqn:=2
            else cqn:=1;
          end else cqn:=1;
        end;
      end;
      if cqn=0 then begin
        if tblshedule.FieldByName('tplant').value='KB' then str2:='"Joew" "123" "TH" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.bQN1,'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+tblshedule.fieldbyname('rwo').value+';'+sqn+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-40)+';'
        else str2:='"Joew" "123" "EN" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.bQN1,'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+tblshedule.fieldbyname('rwo').value+';'+sqn+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-40)+';';
        str2:=str2+formatdatetime('yyyy-MM-dd',ksrq-30)+';1;'+usr1+';'+formatdatetime('yyyy-MM-dd',ksrq-26)+';'+usr2+';'
        +formatdatetime('yyyy-MM-dd',ksrq-26)+';'+usr3+';'+formatdatetime('yyyy-MM-dd',ksrq-26)+'"';
      end else if cqn=1 then begin
        if tblshedule.FieldByName('tplant').value='KB' then str2:='"Joew" "123" "TH" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.bQN1,'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+tblshedule.fieldbyname('rwo').value+';'+sqn+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-40)+';'
        else str2:='"Joew" "123" "EN" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.bQN2,'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+tblshedule.fieldbyname('rwo').value+';'+sqn+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-40)+';';
        str2:=str2+formatdatetime('yyyy-MM-dd',ksrq-30)+';1;'+usr1+';'+formatdatetime('yyyy-MM-dd',ksrq-26)+';'+usr2+';'
        +formatdatetime('yyyy-MM-dd',ksrq-26)+';'+usr3+';'+formatdatetime('yyyy-MM-dd',ksrq-26)+'"';
      end else if cqn=2 then begin
        if tblshedule.FieldByName('tplant').value='KB' then str2:='"Joew" "123" "TH" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.sQN,'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+tblshedule.fieldbyname('rwo').value+';'+sqn+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-40)+';'
        else str2:='"Joew" "123" "EN" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.sQN,'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+tblshedule.fieldbyname('rwo').value+';'+sqn+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-40)+';';
        str2:=str2+formatdatetime('yyyy-MM-dd',ksrq-30)+';1;'+usr1+';'+formatdatetime('yyyy-MM-dd',ksrq-26)+';'+usr2+';'
        +formatdatetime('yyyy-MM-dd',ksrq-26)+';'+usr3+';'+formatdatetime('yyyy-MM-dd',ksrq-26)+'"';
      end;
    //eQN
    end else if chk4.Checked then begin
    //end else if (tblshedule.fieldbyname('dta').value='3') or (tblshedule.fieldbyname('dta').value='4') then begin
      if tblshedule.FieldByName('tplant').value='KB' then str2:='"Joew" "123" "TH" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.eQN,'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+tblshedule.fieldbyname('rwo').value+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-20)+';'
      else str2:='"Joew" "123" "EN" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.eQN,'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+tblshedule.fieldbyname('rwo').value+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-20)+';';
      str2:=str2+formatdatetime('yyyy-MM-dd',ksrq-10)+';1;'+usr1+';'+formatdatetime('yyyy-MM-dd',ksrq-6)+';'+usr2+';'
      +formatdatetime('yyyy-MM-dd',ksrq-6)+';'+usr3+';'+formatdatetime('yyyy-MM-dd',ksrq-6)+'"';
    end;
    shellexecute(0,'open',pchar('PH.Platform.PHWinApp.exe'),PChar(str2),pchar(str1),sw_show);
  //single QN
  end else begin
    ct:='0.0000'; bd:='0.0000'; sp:='0.0000';
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='select distinct ct,bd,sp from ppc_zygx where cstyle='''+tblshedule.fieldbyname('cstyle').value+'''';
      open;
      if not fieldbyname('ct').isnull then ct:=formatfloat('0.0000',fieldbyname('ct').value);
      if not fieldbyname('bd').isnull then bd:=formatfloat('0.0000',fieldbyname('bd').value);
      if not fieldbyname('sp').isnull then sp:=formatfloat('0.0000',fieldbyname('sp').value);
    end;
    if ksrq<=date+60 then begin
      if tblshedule.FieldByName('tplant').value='KB' then begin
        str2:='"Joew" "123" "TH" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.QNForm,0;'+tblshedule.fieldbyname('pline').value+';'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+tblshedule.fieldbyname('rwo').value+';'+tblshedule.fieldbyname('fccs').value+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-60)+';';
        str2:=str2+formatdatetime('yyyy-MM-dd',ksrq-40)+';2;'+usr1+';'+formatdatetime('yyyy-MM-dd',ksrq-26)+';'+usr2+';'
        +formatdatetime('yyyy-MM-dd',ksrq-26)+';'+usr3+';'+formatdatetime('yyyy-MM-dd',ksrq-26)+';'+ct+';'+sp+';'+bd+'"';
        shellexecute(0,'open',pchar('PH.Platform.PHWinApp.exe'),PChar(str2),pchar(str1),sw_show);
      end else begin
        str2:='"Joew" "123" "EN" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.QNForm,0;'+tblshedule.fieldbyname('pline').value+';'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+tblshedule.fieldbyname('rwo').value+';'+tblshedule.fieldbyname('fccs').value+';'+wwip+';'+formatdatetime('yyyy-MM-dd',ksrq-60)+';';
        str2:=str2+formatdatetime('yyyy-MM-dd',ksrq-40)+';2;'+usr1+';'+formatdatetime('yyyy-MM-dd',ksrq-26)+';'+usr2+';'
        +formatdatetime('yyyy-MM-dd',ksrq-26)+';'+usr3+';'+formatdatetime('yyyy-MM-dd',ksrq-26)+';'+ct+';'+sp+';'+bd+'"';
        shellexecute(0,'open',pchar('PH.Platform.PHWinApp.exe'),PChar(str2),pchar(str1),sw_show);
      end;
    end else begin
      if tblshedule.FieldByName('tplant').value='KB' then begin
        str2:='"Joew" "123" "TH" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.QNForm,0;'+tblshedule.fieldbyname('pline').value+';'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+tblshedule.fieldbyname('rwo').value+';'+tblshedule.fieldbyname('fccs').value+';'+wwip+';'+ct+';'+sp+';'+bd+'"';
      end else begin
        str2:='"Joew" "123" "EN" "PH.QNReport.UI.dll" "PH.QNReport.UI.ExReport" "PH.QNReport.BackEnd.dll,PH.QNReport.BackEnd.Job.QNForm,0;'+tblshedule.fieldbyname('pline').value+';'+tblshedule.fieldbyname('j2_job').value+';'+tblshedule.fieldbyname('acol').value+';'+tblshedule.fieldbyname('rwo').value+';'+tblshedule.fieldbyname('fccs').value+';'+wwip+';'+ct+';'+sp+';'+bd+'"';
      end;
      shellexecute(0,'open',pchar('PH.Platform.PHWinApp.exe'),PChar(str2),pchar(str1),sw_show);
    end;
  end;
  //showmessage(str2);
}
end;

procedure Tworksheet1.cxView1flag31ePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if pos('SB',tblshedule.fieldbyname('pline').value)>0 then exit;
  if pos('S.',tblshedule.fieldbyname('pline').value)>0 then exit;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r12').value=true then begin
      if frmsewflow1=nil then frmsewflow1:=tfrmsewflow1.Create(nil);
      if not tblshedule.fieldbyname('flag31e').isnull then begin
        if (copy(tblshedule.FieldByName('flag32e').value,1,1)='x') then begin
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select esta2,edt2,esect2 from tbl_schstatus where pline=:x1 and seq=:x2';
            params[0].asstring:=tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=tblshedule.fieldbyname('seq').value;
            open;
            frmsewflow1.DateEdit1.Date:=clientdataset2.fieldbyname('edt2').value;
            if not clientdataset2.FieldByName('esect2').isnull then frmsewflow1.Edit1.Value:=clientdataset2.fieldbyname('esect2').value;
            frmsewflow1.xh2.Checked:=true;
          end;
        end else if (pos('s',tblshedule.fieldbyname('flag31e').value)>0) then begin
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select esta1,edt1,esect1 from tbl_schstatus where pline=:x1 and seq=:x2';
            params[0].asstring:=tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=tblshedule.fieldbyname('seq').value;
            open;
            if not clientdataset2.fieldbyname('edt1').isnull then frmsewflow1.DateEdit1.Date:=clientdataset2.fieldbyname('edt1').value;
            if not clientdataset2.fieldbyname('esect1').isnull then frmsewflow1.Edit1.Value:=clientdataset2.fieldbyname('esect1').value;
            frmsewflow1.xh1.Checked:=true;
          end;
        end;
      end else begin
        frmsewflow1.DateEdit1.Date:=0;
        frmsewflow1.Edit1.Value:=0.0;
        frmsewflow1.xh1.Checked:=false;
        frmsewflow1.xh2.Checked:=false;
      end ;
      frmsewflow1.label3.caption:='e';
      frmsewflow1.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tworksheet1.cxView1flag31pPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if pos('SB',tblshedule.fieldbyname('pline').value)>0 then exit;
  if pos('S.',tblshedule.fieldbyname('pline').value)>0 then exit;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r12').value=true then begin
      if frmsewflow1=nil then frmsewflow1:=tfrmsewflow1.Create(nil);
      if not tblshedule.fieldbyname('flag31p').isnull then begin
        if (copy(tblshedule.FieldByName('flag32p').value,1,1)='x') then begin
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select pfsta2,pfdt2,pfsect2 from tbl_schstatus where pline=:x1 and seq=:x2';
            params[0].asstring:=tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=tblshedule.fieldbyname('seq').value;
            open;
            frmsewflow1.DateEdit1.Date:=clientdataset2.fieldbyname('pfdt2').value;
            if not clientdataset2.FieldByName('pfsect2').isnull then frmsewflow1.Edit1.Value:=clientdataset2.fieldbyname('pfsect2').value;
            frmsewflow1.xh2.Checked:=true;
          end;
        end else if (pos('s',tblshedule.fieldbyname('flag31p').value)>0) then begin
          with clientdataset2 do begin
            close;
            params.clear;
            params.createparam(ftstring,'x1',ptinput);
            params.createparam(ftinteger,'x2',ptinput);
            commandtext:='select pfsta1,pfdt1,pfsect1 from tbl_schstatus where pline=:x1 and seq=:x2';
            params[0].asstring:=tblshedule.fieldbyname('pline').value;
            params[1].asinteger:=tblshedule.fieldbyname('seq').value;
            open;
            if not clientdataset2.fieldbyname('pfdt1').isnull then frmsewflow1.DateEdit1.Date:=clientdataset2.fieldbyname('pfdt1').value;
            if not clientdataset2.fieldbyname('pfsect1').isnull then frmsewflow1.Edit1.Value:=clientdataset2.fieldbyname('pfsect1').value;
            frmsewflow1.xh1.Checked:=true;
          end;
        end;
      end else begin
        frmsewflow1.DateEdit1.Date:=0;
        frmsewflow1.Edit1.Value:=0.0;
        frmsewflow1.xh1.Checked:=false;
        frmsewflow1.xh2.Checked:=false;
      end ;
      frmsewflow1.label3.caption:='pf';
      frmsewflow1.Show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tworksheet1.Panel2DblClick(Sender: TObject);
var
  i:integer;
begin
  for i:=0 to cxview1.ColumnCount-1 do begin
    showmessage('columns '+inttostr(i)+':'+cxview1.Columns[i].Caption);
  end;
end;

procedure Tworksheet1.PforSC1Click(Sender: TObject);
begin
  //TP for SC
  if frmtp4sc=nil then frmtp4sc:=tfrmtp4sc.create(nil);
  frmtp4sc.show;
end;

procedure Tworksheet1.PLCnotcompleted1Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
  si:integer;
begin
  //if cxView1.SortedItemCount>0 then
  for si:=0 to cxView1.SortedItemCount-1 do begin
    cxView1.SortedItems[si].SortOrder:=soNone;
  end;

  if tblshedule.state=dsedit then tblshedule.post;
  cust:=edit1.text;
  pline:=edit2.text;
  //styleno:=edit3.text;
  tshop:=edit4.text;
  cstyle:=edit5.text;
  tplant:=edit6.text;
  with tblshedule do begin
    close;
    params.clear;
    commandtext:='select * from tblshedule where yzh=0';
    if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
    if cust>'' then commandtext:=commandtext+' and j_no='''+cust+'''';
    if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
    if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
    if tplant>'' then begin
      if tplant<>'ALL' then begin
        if edit6.text<>'CN' then begin
          if edit6.text<>'GX' then
            commandtext:=commandtext+' and tplant='''+edit6.text+''''
          else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
        end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and grp='''+combobox1.text+'''';
    if edit7.text>'' then commandtext:=commandtext+' and j_no like '''+edit7.text+'%''';
    if combobox2.text>'' then commandtext:=commandtext+' and flag6 like '''+combobox2.text+'%''';
    if combobox3.text>'' then commandtext:=commandtext+' and flag6='''+combobox3.text+'''';
    if combobox4.text>'' then commandtext:=commandtext+' and dbzs='''+combobox4.text+'''';
    if edit3.text>'' then commandtext:=commandtext+' and acol='''+edit3.text+'''';
    if combobox5.text>'' then commandtext:=commandtext+' and flag2='''+combobox5.text+'''';
    if chk1.Checked then commandtext:=commandtext+' and ((substr(lflag,1,1) in (''!'',''^''))) and (substr(pline,1,2) not in (''SG'',''PS'',''NS'',''RS'',''SB'')) '
                                     +'and ((fccs not like ''%u%'') and (fccs not like ''%d%'') and (fccs not like ''%D%''))';
    if chk2.Checked then commandtext:=commandtext+' and ((fccs like ''%u%'') or (fccs like ''%d%'') or (fccs like ''%D%''))';
    if chk3.Checked then commandtext:=commandtext+' and plan_date is null';
    if chk5.Checked then commandtext:=commandtext+' and pline like ''%SB%''';
    if chk6.Checked then commandtext:=commandtext+' and flag3 like ''%s%'' and flag3<>''1s'' and qnf=''m''';
    if edit8.text>'' then commandtext:=commandtext+' and upper(jhrs) like '''+edit8.text+'%''';
    if (chk1.Checked or chk2.Checked or chk4.Checked) then commandtext:=commandtext+' and pline not in (''T056F'',''T057F'')';
    commandtext:=commandtext+' and substr(lflag,1,1) in (''!'',''^'') and substr(pline,1,2) not in (''SG'',''PS'',''NS'',''RS'',''SB'')';
    open;
    editkey;
    if (chk1.Checked or chk2.Checked or chk4.Checked) then indexname:='idx7'
    else indexname:='idx1';
    setkey;
    first;
  end;
end;

procedure Tworksheet1.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tworksheet1.Printticketforbulksample1Click(Sender: TObject);
begin
  //
  if not tblshedule.fieldbyname('eyc').isnull then begin
    if tblshedule.fieldbyname('eyc').value=0 then exit;
    if tblshedule.fieldbyname('eyc').value>0 then begin
      with clientdataset2 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        commandtext:='execute procedure sp_swpm_gensample(:x1,:x2)';
        params[0].asstring:=worksheet1.tblshedule.fieldbyname('pline').value;
        params[1].asinteger:=worksheet1.tblshedule.fieldbyname('seq').value;
        execute;
      end;

      if (tblshedule.FieldByName('tplant').value<>'KB') then begin
        if frmprintfjticket=nil then frmprintfjticket:=tfrmprintfjticket.Create(nil);
        frmprintfjticket.label9.caption:='SMPL';
        frmprintfjticket.Show;
      end;
    end;
  end;
end;

procedure Tworksheet1.PrintTicketforFJ1Click(Sender: TObject);
begin
  if (tblshedule.FieldByName('tplant').value<>'KB') then begin
    if frmprintfjticket=nil then frmprintfjticket:=tfrmprintfjticket.Create(nil);
    frmprintfjticket.label9.caption:='QN';
    frmprintfjticket.Show;
  end;
end;

procedure Tworksheet1.printweeklysewingdata1;
var
  wk,wk1:integer;
  cust,pline,styleno,tshop,cstyle,tplant:string;
  si:integer;
begin
      cust:=edit1.text;
      pline:=edit2.text;
      tshop:=edit4.text;
      cstyle:=edit5.text;
      tplant:=edit6.text;
      with clientdataset2 do begin
        close;
        params.Clear;
        commandtext:='select wkno from tplant_wk52 where tplant=''SL'' and opt_c=1 and date1='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+'''';
        open;
        wk:=fieldbyname('wkno').value;
      end;
      if wk>2 then wk1:=wk-2
      else if wk=1 then wk1:=51 else wk1:=52;
      with clientdataset1 do begin
        close;
        params.clear;
        params.createparam(ftdate,'x1',ptinput);
        params.createparam(ftdate,'x2',ptinput);
        commandtext:='select a.*,b.*,a.j2_job||''-''||a.cwo||''-''||a.rwo||''-''||a.fccs as qn from tblshedule a,sp_qnsupplement_new(:x1,:x2) b where a.pline=b.line and a.seq=b.seq1 and a.yzh=0';
        if pline>'' then commandtext:=commandtext+' and upper(a.pline)='''+pline+'''';
        {if cust>'' then commandtext:=commandtext+' and j_no='''+cust+'''';
        if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
        if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';}
        if tplant>'' then begin
          if tplant<>'ALL' then begin
            if edit6.text<>'CN' then begin
              if edit6.text<>'GX' then
                commandtext:=commandtext+' and a.tplant='''+edit6.text+''''
              else commandtext:=commandtext+' and a.tplant in (''GG'',''RX'')';
            end else commandtext:=commandtext+' and a.tplant in (''SL'',''GG'',''RX'')';
          end;
        end;
        {if combobox1.text>'' then commandtext:=commandtext+' and grp='''+combobox1.text+'''';
        if edit7.text>'' then commandtext:=commandtext+' and j_no like '''+edit7.text+'%''';
        if combobox2.text>'' then commandtext:=commandtext+' and flag6 like '''+combobox2.text+'%''';
        if combobox3.text>'' then commandtext:=commandtext+' and flag6='''+combobox3.text+'''';
        if combobox4.text>'' then commandtext:=commandtext+' and dbzs='''+combobox4.text+'''';
        if edit3.text>'' then commandtext:=commandtext+' and acol='''+edit3.text+'''';
        if edit9.text>'' then commandtext:=commandtext+' and j2_job='''+edit9.text+'''';}
        commandtext:=commandtext+' order by a.tshop,a.pline,a.seq';
        params[0].asdate:=dateedit1.date;
        params[1].asdate:=dateedit2.date;
        open;
        if not fieldbyname('qn').isnull then begin
          frmweeklysewingdata.title001.caption:='週 '+inttostr(wk)+' 縫合生產之計劃和執控表';
          frmweeklysewingdata.ppReport1.Print;
        end;
      end;
      {
      fty001.Caption:='Factory: '+edit6.Text;
      lw001.Caption:='QN Start Date from: '+formatdatetime('yyyy/MM/dd',dateedit1.date)+'  to: '+formatdatetime('yyyy/MM/dd',dateedit2.date);
      title001.Caption:='Weekly QNs Summary for Week '+inttostr(wk)+' Opts';
      title002.Caption:='(submission must be on week '+inttostr(wk1)+')';
      ppReport1.Print;
      }
end;

procedure Tworksheet1.QN1Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
  si:integer;
begin
  screen.cursor:=crSQLWait;
  try
  for si:=0 to cxView1.SortedItemCount-1 do begin
    cxView1.SortedItems[si].SortOrder:=soNone;
  end;

  if tblshedule.state=dsedit then tblshedule.post;
  cust:=edit1.text;
  pline:=edit2.text;
  tshop:=edit4.text;
  cstyle:=edit5.text;
  //if edit6.text<>'CN' then
  //tplant:=edit6.text else tplant:='';
  tplant:=edit6.text;
  with tblshedule do begin
    close;
    params.clear;
    commandtext:='select * from tblshedule a where yzh=0';
    if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
    if cust>'' then commandtext:=commandtext+' and j_no='''+cust+'''';
    if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
    if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
    if tplant>'' then begin
      if tplant<>'ALL' then begin
        if edit6.text<>'CN' then begin
          if edit6.text<>'GX' then
            commandtext:=commandtext+' and tplant='''+edit6.text+''''
          else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
        end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and grp='''+combobox1.text+'''';
    if edit7.text>'' then commandtext:=commandtext+' and j_no like '''+edit7.text+'%''';
    if combobox2.text>'' then commandtext:=commandtext+' and flag6 like '''+combobox2.text+'%''';
    if combobox3.text>'' then commandtext:=commandtext+' and flag6='''+combobox3.text+'''';
    if combobox4.text>'' then commandtext:=commandtext+' and dbzs='''+combobox4.text+'''';
    if edit3.text>'' then commandtext:=commandtext+' and acol='''+edit3.text+'''';
    if combobox5.text>'' then commandtext:=commandtext+' and flag2='''+combobox5.text+'''';
    if chk1.Checked then commandtext:=commandtext+' and ((substr(lflag,1,1) in (''!'',''^''))) and (substr(pline,1,2) not in (''SG'',''PS'',''NS'',''RS'',''SB'')) '
                                     +'and ((fccs not like ''%u%'') and (fccs not like ''%d%'') and (fccs not like ''%D%''))';
    if chk2.Checked then commandtext:=commandtext+' and ((fccs like ''%u%'') or (fccs like ''%d%'') or (fccs like ''%D%''))';
    if chk3.Checked then commandtext:=commandtext+' and plan_date is null';
    if chk5.Checked then commandtext:=commandtext+' and pline like ''%SB%''';
    if chk6.Checked then commandtext:=commandtext+' and flag3 like ''%s%'' and flag3<>''1s'' and qnf=''m''';
    if edit8.text>'' then commandtext:=commandtext+' and upper(jhrs) like '''+edit8.text+'%''';
    if (chk1.Checked or chk2.Checked or chk4.Checked) then commandtext:=commandtext+' and pline not in (''T056F'',''T057F'')';
    commandtext:=commandtext+' and flag3 like ''%s%'' and cfksrq<>(select min(dt1) from line_shjs b where a.pline=b.pline and a.seq=b.seq and b.flag=''0'')';
    open;
    editkey;
    if (chk1.Checked or chk2.Checked or chk4.Checked) then indexname:='idx7'
    else indexname:='idx1';
    setkey;
    first;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tworksheet1.QNGAI1Click(Sender: TObject);
begin
  if frmmain.combobox1.text<>'ADMIN' then begin
    if (pos('s',tblshedule.fieldbyname('flag3').value)>0) or (pos('x',tblshedule.fieldbyname('flag3').value)>0) then exit;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='delete from line_shjs where pline=:x1 and seq=:x2';
    params[0].asstring:=tblshedule.fieldbyname('pline').value;
    params[1].asinteger:=tblshedule.fieldbyname('seq').value;
    execute;
    showmessage('已清除QN GAI!');
  end;
end;

procedure Tworksheet1.RecalculateQN1Click(Sender: TObject);
begin
  with ROQuery1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftstring,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    params.createparam(ftstring,'x4',ptinput);
    commandtext:='execute procedure sp_updfccs_rwo_new(:x1,:x2,:x3,:x4)';
    params[0].asstring:=tblshedule.fieldbyname('j_no').value;
    params[1].asstring:=tblshedule.fieldbyname('j2_job').value;
    params[2].asstring:=tblshedule.fieldbyname('rwo').value;
    params[3].asstring:=tblshedule.fieldbyname('acol').value;
    execute;
  end;
end;

procedure Tworksheet1.RefreshdatafromCOPlog1Click(Sender: TObject);
var
  job,acol:string;
  dt0,dt1,dt2,q3,q4:string;
begin
  screen.cursor:=crSQLWait;
  try
    {
    with clientdataset2 do begin
      close;
      params.clear;
      CommandText:='select distinct j2_job,acol from tblshedule where yzh=0';
      if edit6.text>'' then begin
        if edit6.text<>'ALL' then begin
          if edit6.text='CN' then
          commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')'
          else commandtext:=commandtext+' and tplant='''+edit6.text+'''';
        end;
      end;
      open;
      first;
      while not eof do begin
        job:=fieldbyname('j2_job').value;
        acol:=fieldbyname('acol').value;
        dt0:='1999/01/01';
        dt1:='1999/01/01';
        dt2:='1999/01/01';
        q3:='';
        q4:='1';
        with frmmain.ADOQuery1 do begin
          close;
          sql.text:='select max(m_ddt) as q0,max(m_ddt0) as q1,max(m_end) as q2,max(diff_lbl) as q3,max(dest_qty) as q4 from phdb..tbl_carte_sopc1 where workorderno='''+job+''' and phcolor='''+acol+'''';
          open;
          if not fieldbyname('q0').isnull then dt0:=formatdatetime('yyyy-mm-dd',fieldbyname('q0').value);
          if not fieldbyname('q1').isnull then dt1:=formatdatetime('yyyy-mm-dd',fieldbyname('q1').value);
          if not fieldbyname('q2').isnull then dt2:=formatdatetime('yyyy-mm-dd',fieldbyname('q2').value);
          if not fieldbyname('q3').isnull then q3:=fieldbyname('q3').value;
          if not fieldbyname('q4').isnull then q4:=fieldbyname('q4').asstring;
        end;
        with ClientDataSet3 do begin
          close;
          params.clear;
          commandtext:='execute procedure sp_swpm_updfwdt('''+job+''','''+acol+''','''+dt1+''','''+dt2+''','''+q3+''','''+q4+''','''+dt0+''')';
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    }
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='delete from tbl_exfty';
      execute;
    end;
    with frmmain.adoquery1 do begin
      close;
      sql.text:='exec phdb..sp_getcopdata_exfty';
      execsql;
    end;
    with clientdataset2 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_swpm_updexfty';
      execute;
    end;
    if (tblshedule.active=true) then speedbutton1click(self);
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tworksheet1.cxView1IECLS1GetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  AHintText:='Code 0 = GSD SAH is equal to line SAH';
  AHintText:=AHintText+chr(13)+chr(20)+'Code 1 = Line SAH (exclude miscellaneous parts making, like shoulder straps making, pad print label and transfer flock label, etc.)';
  AHintText:=AHintText+chr(13)+chr(20)+'Code 2 = Line SAH (same as code 1 plus core tech)';
  AHintText:=AHintText+chr(13)+chr(20)+'Code 3 = Line SAH (same as code 1 plus bonding)';
  AHintText:=AHintText+chr(13)+chr(20)+'Code 4 = Line SAH (same as code 2 plus bonding)';
  AHintText:=AHintText+chr(13)+chr(20)+'Code 5 = Line SAH (exclude core tech only)';
  AHintText:=AHintText+chr(13)+chr(20)+'Code 6 = Line SAH (exclude bonding only)';
  AHintTextRect.Left:=AHintTextRect.Left-50;
  AHintTextRect.Top:=AHintTextRect.Top+20;
  AHintTextRect.Right:=AHintTextRect.Right+250;
  AIsHintMultiLine:=True;
end;

procedure Tworksheet1.ClassbySize1Click(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select distinct cls,psiz from ppc_zygx_sz where cstyle='''+tblshedule.fieldbyname('cstyle').value+'''';
    open;
    if not fieldbyname('cls').isnull then begin
      if frmieclass=nil then frmieclass:=tfrmieclass.Create(nil);
      frmieclass.pagecontrol1.ActivePageIndex:=0;
      with frmieclass.ClientDataSet1 do begin
        close;
        params.clear;
        commandtext:='select distinct cls,acol as psiz from ppc_zygx_clr where cstyle='''+tblshedule.fieldbyname('cstyle').value+'''';
        open;
      end;
      frmieclass.Show;
    end else showmessage('There is no records for this style!');
  end;
end;

procedure Tworksheet1.tblsheduleIECLSChange(Sender: TField);
var
  sah,sah1,sah2,sah3:double;
begin
  if not tblshedule.fieldbyname('iecls').isnull then begin
    if not tblshedule.fieldbyname('iecls1').isnull then begin
      with clientdataset1 do begin
        close;
        params.clear;
        if (length(trim(tblshedule.fieldbyname('iecls1').value))=2)
        and (copy(trim(tblshedule.fieldbyname('iecls1').value),length(trim(tblshedule.fieldbyname('iecls1').value)),1)='+') then
        commandtext:='select lstrs,a_mc as trs,tmu,flag2,tbu,suf_a,suf_b,suf_c,sp,sp_wf,mantbl,a_sah,ct as pfsah,ct_wf as pfrs_a,a_wf,'
                    +'ct_opt as pfopt,a_opt,sp_opt,dta,bd_opt+ct_opt+a_opt+sp_opt as topt,bd_mc+ct_mc as pfyc,sp_mc,'
                    +'bd_mc+ct_mc+a_mc+sp_mc as tyc,bzl '
                    +'from ppc_zygx where cstyle='''+tblshedule.fieldbyname('cstyle').value+''' and cls='''+tblshedule.fieldbyname('iecls').value+''' and cls1='''+copy(tblshedule.fieldbyname('iecls1').value,1,2)+''''
        else commandtext:='select lstrs,a_mc as trs,tmu,flag2,tbu,suf_a,suf_b,suf_c,sp,sp_wf,mantbl,a_sah,ct as pfsah,ct_wf as pfrs_a,a_wf,'
                         +'ct_opt as pfopt,a_opt,sp_opt,dta,bd_opt+ct_opt+a_opt+sp_opt as topt,ct_mc as pfyc,sp_mc,'
                         +'bd_mc+ct_mc+a_mc+sp_mc as tyc,bzl '
                         +'from ppc_zygx where cstyle='''+tblshedule.fieldbyname('cstyle').value+''' and cls='''+tblshedule.fieldbyname('iecls').value+''' and cls1='''+copy(tblshedule.fieldbyname('iecls1').value,1,1)+'''';
        open;
        if not fieldbyname('lstrs').isnull then begin
          tblshedule.fieldbyname('lstrs').value:=clientdataset1.fieldbyname('lstrs').value;
          tblshedule.fieldbyname('trs').value:=clientdataset1.fieldbyname('trs').value;
          tblshedule.fieldbyname('flag2').value:=clientdataset1.fieldbyname('flag2').value;
          tblshedule.fieldbyname('bzl').value:=clientdataset1.fieldbyname('bzl').value;
          tblshedule.fieldbyname('tbu').value:=clientdataset1.fieldbyname('tbu').value;
          tblshedule.fieldbyname('awf').value:=clientdataset1.fieldbyname('a_wf').value;
          tblshedule.fieldbyname('ewf').value:=clientdataset1.fieldbyname('sp_wf').value;
          //tblshedule.fieldbyname('asah').value:=clientdataset1.fieldbyname('tmu').value-clientdataset1.fieldbyname('sp').value;
          if not clientdataset1.fieldbyname('pfrs_a').isnull then
          tblshedule.fieldbyname('pfrs_a').value:=clientdataset1.fieldbyname('pfrs_a').value;
          tblshedule.fieldbyname('ttlrs_a').value:=clientdataset1.fieldbyname('pfrs_a').value+clientdataset1.fieldbyname('a_wf').value+clientdataset1.fieldbyname('sp_wf').value;
          if not clientdataset1.fieldbyname('pfopt').isnull then
          tblshedule.fieldbyname('pfoptqty').value:=clientdataset1.fieldbyname('pfopt').value;
          if not clientdataset1.fieldbyname('a_opt').isnull then
          tblshedule.fieldbyname('aloptqty').value:=clientdataset1.fieldbyname('a_opt').value;
          if not clientdataset1.fieldbyname('sp_opt').isnull then
          tblshedule.fieldbyname('eoptqty').value:=clientdataset1.fieldbyname('sp_opt').value;
          if not clientdataset1.fieldbyname('topt').isnull then
          tblshedule.fieldbyname('toptqty').value:=clientdataset1.fieldbyname('topt').value;
          if not clientdataset1.fieldbyname('pfyc').isnull then
          tblshedule.fieldbyname('pfyc_a').value:=clientdataset1.fieldbyname('pfyc').value;
          if not clientdataset1.fieldbyname('sp_mc').isnull then
          tblshedule.fieldbyname('eyc_a').value:=clientdataset1.fieldbyname('sp_mc').value;
          if not clientdataset1.fieldbyname('tyc').isnull then
          tblshedule.fieldbyname('ttlyc_a').value:=clientdataset1.fieldbyname('tyc').value;
          if not clientdataset1.fieldbyname('pfsah').isnull then begin
            tblshedule.fieldbyname('pfsah').value:=clientdataset1.fieldbyname('pfsah').value;
            if clientdataset1.fieldbyname('pfsah').value>0 then
            tblshedule.fieldbyname('pfxjs').value:=0.5*clientdataset1.fieldbyname('pfrs_a').value/clientdataset1.fieldbyname('pfsah').value;
          end;
          if not clientdataset1.fieldbyname('a_sah').isnull then begin
            tblshedule.fieldbyname('asah').value:=clientdataset1.fieldbyname('a_sah').value;
            if clientdataset1.fieldbyname('a_sah').value>0 then
            tblshedule.fieldbyname('alxjs').value:=0.5*clientdataset1.fieldbyname('a_wf').value/clientdataset1.fieldbyname('a_sah').value;
          end;
          if not clientdataset1.fieldbyname('sp').isnull then begin
            tblshedule.fieldbyname('esah').value:=clientdataset1.fieldbyname('sp').value;
            if clientdataset1.fieldbyname('sp').value>0 then
            tblshedule.fieldbyname('exjs').value:=0.5*clientdataset1.fieldbyname('sp_wf').value/clientdataset1.fieldbyname('sp').value;
          end;
          tblshedule.fieldbyname('mantbl').value:=clientdataset1.fieldbyname('mantbl').value;
          tblshedule.fieldbyname('gzw').value:=clientdataset1.fieldbyname('trs').value+clientdataset1.fieldbyname('mantbl').value;
          if not clientdataset1.fieldbyname('dta').isnull then begin
            if clientdataset1.fieldbyname('dta').value>'' then
              tblshedule.fieldbyname('dta').value:=clientdataset1.fieldbyname('dta').value;
              tblshedule.fieldbyname('dta1').value:=clientdataset1.fieldbyname('dta').value;
          end;
          if (length(trim(tblshedule.fieldbyname('iecls1').value))=2) then begin
            if uppercase(copy(trim(tblshedule.fieldbyname('iecls1').value),length(trim(tblshedule.fieldbyname('iecls1').value)),1))='A' then
            tblshedule.fieldbyname('tmu').value:=clientdataset1.fieldbyname('tmu').value-clientdataset1.fieldbyname('suf_a').value
            else if uppercase(copy(trim(tblshedule.fieldbyname('iecls1').value),length(trim(tblshedule.fieldbyname('iecls1').value)),1))='B' then
            tblshedule.fieldbyname('tmu').value:=clientdataset1.fieldbyname('tmu').value+clientdataset1.fieldbyname('suf_b').value
            else if uppercase(copy(trim(tblshedule.fieldbyname('iecls1').value),length(trim(tblshedule.fieldbyname('iecls1').value)),1))='C' then
            tblshedule.fieldbyname('tmu').value:=clientdataset1.fieldbyname('tmu').value+clientdataset1.fieldbyname('suf_c').value
            else if copy(trim(tblshedule.fieldbyname('iecls1').value),length(trim(tblshedule.fieldbyname('iecls1').value)),1)='+' then
            tblshedule.fieldbyname('tmu').value:=clientdataset1.fieldbyname('tmu').value;
          end else if (length(trim(tblshedule.fieldbyname('iecls1').value))=3) then begin
            sah:=clientdataset1.fieldbyname('tmu').value;
            if uppercase(copy(trim(tblshedule.fieldbyname('iecls1').value),length(trim(tblshedule.fieldbyname('iecls1').value))-1,1))='A' then
            sah1:=clientdataset1.fieldbyname('suf_a').value
            else if uppercase(copy(trim(tblshedule.fieldbyname('iecls1').value),length(trim(tblshedule.fieldbyname('iecls1').value))-1,1))='B' then
            sah1:=clientdataset1.fieldbyname('suf_b').value*(-1.00)
            else if uppercase(copy(trim(tblshedule.fieldbyname('iecls1').value),length(trim(tblshedule.fieldbyname('iecls1').value))-1,1))='C' then
            sah1:=clientdataset1.fieldbyname('suf_c').value*(-1.00);
            if uppercase(copy(trim(tblshedule.fieldbyname('iecls1').value),length(trim(tblshedule.fieldbyname('iecls1').value)),1))='B' then
            sah2:=clientdataset1.fieldbyname('suf_b').value*(-1.00)
            else if uppercase(copy(trim(tblshedule.fieldbyname('iecls1').value),length(trim(tblshedule.fieldbyname('iecls1').value)),1))='C' then
            sah2:=clientdataset1.fieldbyname('suf_c').value*(-1.00);
            tblshedule.fieldbyname('tmu').value:=sah-sah1-sah2;
          end else if (length(trim(tblshedule.fieldbyname('iecls1').value))=4) then begin
            sah:=clientdataset1.fieldbyname('tmu').value;
            if uppercase(copy(trim(tblshedule.fieldbyname('iecls1').value),length(trim(tblshedule.fieldbyname('iecls1').value))-2,1))='A' then
            sah1:=clientdataset1.fieldbyname('suf_a').value
            else if uppercase(copy(trim(tblshedule.fieldbyname('iecls1').value),length(trim(tblshedule.fieldbyname('iecls1').value))-2,1))='B' then
            sah1:=clientdataset1.fieldbyname('suf_b').value*(-1.00)
            else if uppercase(copy(trim(tblshedule.fieldbyname('iecls1').value),length(trim(tblshedule.fieldbyname('iecls1').value))-2,1))='C' then
            sah1:=clientdataset1.fieldbyname('suf_c').value*(-1.00);
            if uppercase(copy(trim(tblshedule.fieldbyname('iecls1').value),length(trim(tblshedule.fieldbyname('iecls1').value))-1,1))='B' then
            sah2:=clientdataset1.fieldbyname('suf_b').value*(-1.00)
            else if uppercase(copy(trim(tblshedule.fieldbyname('iecls1').value),length(trim(tblshedule.fieldbyname('iecls1').value))-1,1))='C' then
            sah2:=clientdataset1.fieldbyname('suf_c').value*(-1.00);
            sah3:=clientdataset1.fieldbyname('suf_c').value*(-1.00);
            tblshedule.fieldbyname('tmu').value:=sah-sah1-sah2-sah3;
          end else tblshedule.fieldbyname('tmu').value:=clientdataset1.fieldbyname('tmu').value;
          //tblshedule.fieldbyname('asah').value:=tblshedule.fieldbyname('tmu').value-clientdataset1.fieldbyname('sp').value;
        end;
      end;
    end;
  end;
end;

procedure Tworksheet1.tblsheduleITEM_LDTChange(Sender: TField);
begin
  if not tblsheduleitem_ldt.isnull then begin
    //if tblshedulea_ldt.isnull then
    tblshedulea_ldt.value:=tblshedule.fieldbyname('cfwcrq').value;
  end;
end;

procedure Tworksheet1.SpeedButton2Click(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='select * from tbluser where usr='''+frmmain.ComboBox1.text+'''';
    open;
    if fieldbyname('r12').value=true then begin
      if frmqnpii=nil then frmqnpii:=tfrmqnpii.create(nil);
      frmqnpii.show;
    end else showmessage('You have no right!');
  end;
end;

procedure Tworksheet1.SpeedButton3Click(Sender: TObject);
begin
  if frmapprovalprocessing=nil then frmapprovalprocessing:=tfrmapprovalprocessing.Create(nil);
  frmapprovalprocessing.show;
end;

procedure Tworksheet1.chk7Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
begin
  screen.Cursor:=crSQLWait;
  if tblshedule.state=dsedit then tblshedule.post;
  if chk7.Checked then begin
    if chk1.Checked then chk1.Checked:=false;
    if chk2.Checked then chk2.Checked:=false;
    if chk6.Checked then chk6.Checked:=false;
    if chk5.Checked then chk5.Checked:=false;
    if chk11.checked then chk11.checked:=false;
    if chk13.checked then chk13.checked:=false;
    if chk14.Checked then chk14.Checked:=false;
    chk15.Checked:=false;
    chk16.Checked:=false;
    chk17.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.chk8Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
begin
  screen.Cursor:=crSQLWait;
  if tblshedule.state=dsedit then tblshedule.post;
  if chk8.Checked then begin
    if chk1.Checked then chk1.Checked:=false;
    if chk2.Checked then chk2.Checked:=false;
    if chk4.Checked then chk4.Checked:=false;
    if chk6.Checked then chk6.Checked:=false;
    if chk7.Checked then chk7.Checked:=false;
    if chk5.Checked then chk5.Checked:=false;
    if chk9.Checked then chk9.Checked:=false;
    if chk10.Checked then chk10.Checked:=false;
    if chk11.checked then chk11.checked:=false;
    if chk14.Checked then chk14.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.chk9Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
begin
  screen.Cursor:=crSQLWait;
  if tblshedule.state=dsedit then tblshedule.post;
  if chk9.Checked then begin
    if chk1.Checked then chk1.Checked:=false;
    if chk2.Checked then chk2.Checked:=false;
    if chk4.Checked then chk4.Checked:=false;
    if chk6.Checked then chk6.Checked:=false;
    if chk7.Checked then chk7.Checked:=false;
    if chk8.Checked then chk8.Checked:=false;
    if chk5.Checked then chk5.Checked:=false;
    if chk10.Checked then chk10.Checked:=false;
    if chk11.checked then chk11.checked:=false;
    if chk14.Checked then chk14.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.chk10Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
begin
  screen.Cursor:=crSQLWait;
  if tblshedule.state=dsedit then tblshedule.post;
  if chk10.Checked then begin
    if chk1.Checked then chk1.Checked:=false;
    if chk2.Checked then chk2.Checked:=false;
    if chk4.Checked then chk4.Checked:=false;
    if chk6.Checked then chk6.Checked:=false;
    if chk7.Checked then chk7.Checked:=false;
    if chk8.Checked then chk8.Checked:=false;
    if chk9.Checked then chk9.Checked:=false;
    if chk5.Checked then chk5.Checked:=false;
    if chk11.checked then chk11.checked:=false;
    if chk14.Checked then chk14.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.chk11Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  if tblshedule.state=dsedit then tblshedule.post;
  if chk11.Checked then begin
    if chk1.Checked then chk1.Checked:=false;
    if chk2.Checked then chk2.Checked:=false;
    if chk6.Checked then chk6.Checked:=false;
    if chk7.Checked then chk7.Checked:=false;
    if chk5.Checked then chk5.Checked:=false;
    if chk13.Checked then chk13.Checked:=false;
    if chk14.Checked then chk14.Checked:=false;
    chk15.Checked:=false;
    chk16.Checked:=false;
    chk17.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.chk12Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
  si:integer;
begin
  screen.cursor:=crSQLWait;
  if chk12.checked then begin

  for si:=0 to cxView1.SortedItemCount-1 do begin
    cxView1.SortedItems[si].SortOrder:=soNone;
  end;

  if tblshedule.state=dsedit then tblshedule.post;
  cust:=edit1.text;
  pline:=edit2.text;
  tshop:=edit4.text;
  cstyle:=edit5.text;
  tplant:=edit6.text;

  with tblshedule do begin
    close;
    params.clear;
    if chk12.Checked then begin
      params.createparam(ftdate,'x1',ptinput);
      params.createparam(ftdate,'x2',ptinput);
    end;
    commandtext:='select * from tblshedule a where yzh=0';
    if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
    if cust>'' then commandtext:=commandtext+' and j_no='''+cust+'''';
    if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
    if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
    if tplant>'' then begin
      if tplant<>'ALL' then begin
        if edit6.text<>'CN' then begin
          if edit6.text<>'GX' then
            commandtext:=commandtext+' and tplant='''+edit6.text+''''
          else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
        end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and grp='''+combobox1.text+'''';
    if edit7.text>'' then commandtext:=commandtext+' and j_no like '''+edit7.text+'%''';
    if combobox2.text>'' then commandtext:=commandtext+' and flag6 like '''+combobox2.text+'%''';
    if combobox3.text>'' then commandtext:=commandtext+' and flag6='''+combobox3.text+'''';
    if combobox4.text>'' then commandtext:=commandtext+' and dbzs='''+combobox4.text+'''';
    if edit3.text>'' then commandtext:=commandtext+' and acol='''+edit3.text+'''';
    if edit9.text>'' then commandtext:=commandtext+' and j2_job='''+edit9.text+'''';
    if combobox5.text>'' then commandtext:=commandtext+' and flag2='''+combobox5.text+'''';
    if chk12.checked then commandtext:=commandtext+' and (rqxc>0) and (tzlcrq>=:x1) and (tzlcrq<=:x2) and not exists (select j2_job from tbl_pdn_rwo b where a.j2_job=b.j2_job and a.rwo=b.rwo and a.acol=b.acol)';
    if edit8.text>'' then commandtext:=commandtext+' and upper(jhrs) like '''+edit8.text+'%''';
    if dateedit1.date>0 then commandtext:=commandtext+' and cfwcrq>='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+'''';
    if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<='''+formatdatetime('yyyy-MM-dd',dateedit2.date)+'''';
    if combobox6.text>'' then commandtext:=commandtext+' and flag1='''+combobox6.text+'''';
    if chk12.Checked then begin
      params[0].asdate:=dateedit3.date;
      params[1].asdate:=dateedit4.date;
    end;
    open;
    editkey;
    if (dateedit1.date>0) and (dateedit2.date>0) then
      indexname:='idx8'
    else begin
      if (chk1.Checked or chk2.Checked or chk4.Checked) then indexname:='idx7'
      else indexname:='idx1';
    end;
    setkey;
    first;
  end;
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.chk13Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
begin
  screen.Cursor:=crSQLWait;
  if tblshedule.state=dsedit then tblshedule.post;
  if chk13.Checked then begin
    if chk1.Checked then chk1.Checked:=false;
    if chk2.Checked then chk2.Checked:=false;
    if chk6.Checked then chk6.Checked:=false;
    if chk5.Checked then chk5.Checked:=false;
    if chk11.checked then chk11.checked:=false;
    if chk7.checked then chk7.checked:=false;
    if chk14.checked then chk14.checked:=false;
    chk15.Checked:=false;
    chk16.Checked:=false;
    chk17.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.chk14Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  if tblshedule.state=dsedit then tblshedule.post;
  if chk14.Checked then begin
    if chk1.Checked then chk1.Checked:=false;
    if chk2.Checked then chk2.Checked:=false;
    if chk6.Checked then chk6.Checked:=false;
    if chk7.Checked then chk7.Checked:=false;
    if chk5.Checked then chk5.Checked:=false;
    if chk13.Checked then chk13.Checked:=false;
    if chk11.Checked then chk11.Checked:=false;
    chk15.Checked:=false;
    chk16.Checked:=false;
    chk17.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.chk15Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  if tblshedule.state=dsedit then tblshedule.post;
  if chk15.Checked then begin
    if chk1.Checked then chk1.Checked:=false;
    if chk2.Checked then chk2.Checked:=false;
    if chk6.Checked then chk6.Checked:=false;
    if chk7.Checked then chk7.Checked:=false;
    if chk5.Checked then chk5.Checked:=false;
    if chk13.Checked then chk13.Checked:=false;
    if chk11.Checked then chk11.Checked:=false;
    chk14.checked:=false;
    chk16.Checked:=false;
    chk17.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.chk16Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  if tblshedule.state=dsedit then tblshedule.post;
  if chk16.Checked then begin
    if chk1.Checked then chk1.Checked:=false;
    if chk2.Checked then chk2.Checked:=false;
    if chk6.Checked then chk6.Checked:=false;
    if chk7.Checked then chk7.Checked:=false;
    if chk5.Checked then chk5.Checked:=false;
    if chk13.Checked then chk13.Checked:=false;
    if chk14.Checked then chk14.Checked:=false;
    chk15.Checked:=false;
    chk11.Checked:=false;
    chk17.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.chk17Click(Sender: TObject);
begin
  screen.Cursor:=crSQLWait;
  if tblshedule.state=dsedit then tblshedule.post;
  if chk17.Checked then begin
    if chk1.Checked then chk1.Checked:=false;
    if chk2.Checked then chk2.Checked:=false;
    if chk6.Checked then chk6.Checked:=false;
    if chk7.Checked then chk7.Checked:=false;
    if chk5.Checked then chk5.Checked:=false;
    if chk13.Checked then chk13.Checked:=false;
    if chk11.Checked then chk11.Checked:=false;
    chk15.Checked:=false;
    chk16.Checked:=false;
    chk14.Checked:=false;
    speedbutton1click(self);
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.SpeedButton4Click(Sender: TObject);
var
  cust,pline,styleno,tshop,cstyle,tplant:string;
  si:integer;
begin
  screen.cursor:=crSQLWait;
  {
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_calcflag4';
    execute;
  end;

  if chk6.Checked then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      commandtext:='execute procedure sp_multqns_enddt(:x1)';
      params[0].asstring:=edit6.text;
      execute;
    end;
  end;
  }
  //if cxView1.SortedItemCount>0 then
  for si:=0 to cxView1.SortedItemCount-1 do begin
    cxView1.SortedItems[si].SortOrder:=soNone;
  end;

  if tblshedule.state=dsedit then tblshedule.post;
  cust:=edit1.text;
  pline:=edit2.text;
  //styleno:=edit3.text;
  tshop:=edit4.text;
  cstyle:=edit5.text;
  //if edit6.text<>'CN' then
  //tplant:=edit6.text else tplant:='';
  tplant:=edit6.text;
  {
  if (tshop>'') or (tplant>'') then begin
    with clientdataset2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftstring,'x2',ptinput);
      commandtext:='execute procedure upd_tshop(:x1,:x2)';
      params[0].asstring:=tshop;
      params[1].asstring:=tplant;
      execute;
    end;
  end;
  }
  with tblshedule do begin
    close;
    params.clear;
    if chk7.Checked then params.createparam(ftdate,'x1',ptinput);
    commandtext:='select * from tblshedule where yzh=1';
    if pline>'' then commandtext:=commandtext+' and upper(pline)='''+pline+'''';
    if cust>'' then commandtext:=commandtext+' and j_no='''+cust+'''';
    if tshop>'' then commandtext:=commandtext+' and (tshop like '''+tshop+'%'')';
    if cstyle>'' then commandtext:=commandtext+' and (cstyle like '''+cstyle+'%'')';
    if edit6.text>'' then begin
      if edit6.text<>'ALL' then begin
        if edit6.text<>'CN' then begin
          if edit6.text<>'GX' then
            commandtext:=commandtext+' and tplant='''+edit6.text+''''
          else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
        end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
      end;
    end;
    if combobox1.text>'' then commandtext:=commandtext+' and grp='''+combobox1.text+'''';
    if edit7.text>'' then commandtext:=commandtext+' and j_no like '''+edit7.text+'%''';
    if combobox2.text>'' then commandtext:=commandtext+' and flag6 like '''+combobox2.text+'%''';
    if combobox3.text>'' then commandtext:=commandtext+' and flag6='''+combobox3.text+'''';
    if combobox4.text>'' then commandtext:=commandtext+' and dbzs='''+combobox4.text+'''';
    if edit3.text>'' then commandtext:=commandtext+' and acol='''+edit3.text+'''';
    if edit8.text>'' then commandtext:=commandtext+' and jhrs='''+edit8.text+'''';
    if edit9.text>'' then commandtext:=commandtext+' and j2_job='''+edit9.text+'''';
    if combobox5.text>'' then commandtext:=commandtext+' and flag2='''+combobox5.text+'''';
    if chk1.Checked then commandtext:=commandtext+' and ((substr(lflag,1,1) in (''!''))) and (substr(pline,1,2) not in (''SG'',''PS'',''NS'',''RS'',''SB'')) '
                                     +'and ((fccs not like ''%u%'') and (fccs not like ''%d%'') and (fccs not like ''%D%''))';
    if chk2.Checked then commandtext:=commandtext+' and ((fccs like ''%u%'') or (fccs like ''%d%'') or (fccs like ''%D%''))';
    if chk7.Checked then commandtext:=commandtext+' and tshop in (''3A'',''3B'',''3D'',''3G'',''4A'',''4B'',''4C'',''4D'',''KB1A'',''KB1B'',''KB2'') and flag4 in (''a'') and cfksrq>:x1';//+formatdatetime('yyyy-MM-dd',date+20);
    //if chk3.Checked then commandtext:=commandtext+' and plan_date is null';
    if chk8.Checked then commandtext:=commandtext+' and yzh=1';
    if chk5.Checked then commandtext:=commandtext+' and pline like ''%SB%''';
    if chk6.Checked then commandtext:=commandtext+' and flag3 like ''%s%'' and flag3<>''1s'' and qnf=''m''';
    if (chk1.Checked or chk2.Checked or chk4.Checked) then commandtext:=commandtext+' and pline not in (''T056F'',''T057F'')';
    if combobox6.text>'' then commandtext:=commandtext+' and flag1='''+combobox6.text+'''';
    if combobox7.text>'' then commandtext:=commandtext+' and qrxc'+combobox7.text;
    if dateedit1.date>0 then commandtext:=commandtext+' and cfwcrq>='''+formatdatetime('yyyy-MM-dd',dateedit1.date)+'''';
    if dateedit2.date>0 then commandtext:=commandtext+' and cfksrq<='''+formatdatetime('yyyy-MM-dd',dateedit2.date)+'''';
    if chk15.Checked then commandtext:=commandtext+' and ((fccs not like ''%1/1%'') and (fccs not like ''%u%'') and (fccs not like ''%d%''))';
    if chk7.Checked then params[0].asdate:=date+60;
    open;
    editkey;
    if (chk1.Checked or chk2.Checked or chk4.Checked) then indexname:='idx7'
    else indexname:='idx1';
    setkey;
    first;
  end;
  screen.cursor:=crdefault;
end;

procedure Tworksheet1.UPDIEGRPandCLS1Click(Sender: TObject);
begin
  //
  screen.cursor:=crSQLWait;
  try
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_updiecls_cls1';
    execute;
  end;
  with clientdataset1 do begin
    close;
    params.clear;
    commandtext:='execute procedure sp_updierelated';
    execute;
  end;
  speedbutton1click(self);
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tworksheet1.UpdateIEdataforQNGAI1Click(Sender: TObject);
begin
  with clientdataset1 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='execute procedure sp_updline_shjs_ie(:x1,:x2)';
    params[0].asstring:=tblshedule.fieldbyname('pline').value;
    params[1].asinteger:=tblshedule.fieldbyname('seq').value;
    execute;
  end;
  showmessage('OK!');
end;

procedure Tworksheet1.UpdateJKcolumns1Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  with clientdataset1 do begin
    close;
    commandtext:='execute procedure sp_swpm_reupd_sclh';
    execute;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure Tworksheet1.UpdateLB4n51Click(Sender: TObject);
begin
  Screen.Cursor:=crSQLWait;
  try
    with clientdataset3 do begin
      close;
      params.Clear;
      //params.createparam(ftdate,'x1',ptinput);
      commandtext:='select * from tblshedule where yzh=0';//((yzh=0) or (yzh=1 and cfksrq>=:x1))';
      if edit6.text>'' then begin
        if edit6.text<>'ALL' then begin
          if edit6.text<>'CN' then begin
            if edit6.text<>'GX' then
              commandtext:=commandtext+' and tplant='''+edit6.text+''''
            else commandtext:=commandtext+' and tplant in (''GG'',''RX'')';
          end else commandtext:=commandtext+' and tplant in (''SL'',''GG'',''RX'')';
        end;
      end;
      if edit4.text>'' then commandtext:=commandtext+' and tshop='''+edit4.text+'''';
      if edit2.text>'' then commandtext:=commandtext+' and pline='''+edit2.text+'''';
      //params[0].asdate:=date-30;
      open;
      first;
      while not eof do begin
        if (not fieldbyname('cfksrq').isnull) and (not fieldbyname('cfwcrq').isnull) then begin
          with frmmain.ADOQuery1 do begin
            close;
            sql.Clear;
            sql.Text:='exec [ph.lwpm.wp].dbo.getlwpm :x1,:x2,:x3,:x4,:x5,:x6,:x7,:x8,:x9,:x10,:x11,:x12,:x13';
            parameters[0].Value:=clientdataset3.fieldbyname('tplant').value;
            parameters[1].Value:=clientdataset3.fieldbyname('pline').value;
            parameters[2].Value:=clientdataset3.fieldbyname('j_no').value;
            parameters[3].Value:=clientdataset3.fieldbyname('j2_job').value;
            parameters[4].Value:=clientdataset3.fieldbyname('rwo').value;
            parameters[5].Value:=clientdataset3.fieldbyname('fccs').value;
            parameters[6].Value:=clientdataset3.fieldbyname('acol').value;
            parameters[7].Value:=clientdataset3.fieldbyname('flag3').value;
            parameters[8].Value:=clientdataset3.fieldbyname('seq').value;
            parameters[9].Value:=clientdataset3.fieldbyname('tshop').value;
            parameters[10].Value:=clientdataset3.fieldbyname('cfksrq').value;
            parameters[11].Value:=clientdataset3.fieldbyname('cfwcrq').value;
            parameters[12].Value:=clientdataset3.fieldbyname('cfksjs').value;
            execsql;
          end;
        end;
        application.processmessages;
        next;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
  end;
end;

procedure Tworksheet1.updateRAP41Click(Sender: TObject);
var
  sjrs_a,sjyc_a,jjl:double;
begin
  screen.cursor:=crSQLWait;
  try
    with clientdataset1 do begin
      close;
      params.clear;
      params.createparam(ftdate,'x1',ptinput);
      commandtext:='select distinct tplant,pline,j_no,j2_job,rwo,acol,fccs from tblshedule where yzh=0 and cfksrq<=:x1 and ((ttlrs_a1=0) or (ttlyc_a1=0))';
      params[0].asdate:=date+15;
      open;
      first;
      while not eof do begin
        with frmmain.adoquery1 do begin
          close;
          sql.text:='select workertotal,machinetotal,balance_lb4 from [ph.lwpm.wp]..vw_balanceinfo where factory=:x1 and linecode=:x2 and j2_job=:x3 and rwo=:x4 and qn=:x5 and bcolor=:x6';
          parameters[0].Value:=clientdataset1.FieldByName('tplant').value;
          parameters[1].Value:=clientdataset1.FieldByName('pline').value;
          parameters[2].Value:=clientdataset1.FieldByName('j2_job').value;
          parameters[3].Value:=clientdataset1.FieldByName('rwo').value;
          parameters[4].Value:=clientdataset1.FieldByName('fccs').value;
          parameters[5].Value:=clientdataset1.FieldByName('acol').value;
          open;
          if not fieldbyname('workertotal').isnull then sjrs_a:=fieldbyname('workertotal').value
          else sjrs_a:=0;
          if not fieldbyname('machinetotal').isnull then sjyc_a:=fieldbyname('machinetotal').value
          else sjyc_a:=0;
          if not fieldbyname('balance_lb4').isnull then jjl:=fieldbyname('balance_lb4').value
          else jjl:=0;
        end;
        with clientdataset2 do begin
          close;
          params.clear;
          params.createparam(ftfloat,'x1',ptinput);
          params.createparam(ftfloat,'x2',ptinput);
          params.createparam(ftfloat,'x03',ptinput);
          params.createparam(ftstring,'x3',ptinput);
          params.createparam(ftstring,'x4',ptinput);
          params.createparam(ftstring,'x5',ptinput);
          params.createparam(ftstring,'x6',ptinput);
          params.createparam(ftstring,'x7',ptinput);
          params.createparam(ftstring,'x8',ptinput);
          commandtext:='update tblshedule set sjrs_a=:x1,sjyc_a=:x2,jjl=:x03 where tplant=:x3 and pline=:x4 and j2_job=:x5 and rwo=:x6 and acol=:x7 and fccs=:x8 and yzh=0';
          params[0].asfloat:=sjrs_a;
          params[1].asfloat:=sjrs_a;
          params[2].asfloat:=jjl;
          params[3].Value:=clientdataset1.FieldByName('tplant').value;
          params[4].Value:=clientdataset1.FieldByName('pline').value;
          params[5].Value:=clientdataset1.FieldByName('j2_job').value;
          params[6].Value:=clientdataset1.FieldByName('rwo').value;
          params[7].Value:=clientdataset1.FieldByName('acol').value;
          params[8].Value:=clientdataset1.FieldByName('fccs').value;
          execute;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
    with clientdataset1 do begin
      close;
      params.clear;
      commandtext:='execute procedure sp_swpm_reupd_sclh';
      execute;
    end;
  finally
    screen.cursor:=crDefault;
  end;
end;

end.
