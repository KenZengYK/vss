unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmBase, cxStyles, DB, DBClient, cxGridLevel, cxClasses, uTools,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxEdit, cxGroupBox, StdCtrls,
  cxButtons, ExtCtrls, RM_E_llPDF, RM_Common, RM_Class, RM_e_main, ComObj,
  RM_e_Xls, RM_Dataset, RM_GridReport, RM_DsgGridReport, cxTextEdit,
  cxCurrencyEdit, RzTabs, cxNavigator, cxDBNavigator, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxMemo, cxButtonEdit, cxSpinEdit, cxTimeEdit, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxDBLabel,
  cxLookAndFeels, ImgList, ADODB, RM_AsBarView, cxLookAndFeelPainters,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCheckBox;

type
  TfrmMain = class(TfrmBase)
    Panel1: TPanel;
    RMDBDataSet1: TRMDBDataSet;
    RMXLSExport1: TRMXLSExport;
    RMllPDFExport1: TRMllPDFExport;
    RMGridReportDesigner1: TRMGridReportDesigner;
    RzPageControl1: TRzPageControl;
    TabSheet_Issue: TRzTabSheet;
    TabSheet_IDO: TRzTabSheet;
    cxGroupBox1: TcxGroupBox;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1SOP: TcxGridDBColumn;
    cxGrid1DBTableView1PROJECT_NO: TcxGridDBColumn;
    cxGrid1DBTableView1IDO: TcxGridDBColumn;
    cxGrid1DBTableView1WORK_ORDER: TcxGridDBColumn;
    cxGrid1DBTableView1LOT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1ISSUE_QTY: TcxGridDBColumn;
    cxGrid1DBTableView1GATEPASS: TcxGridDBColumn;
    cxGrid1DBTableView1UID: TcxGridDBColumn;
    cxGrid1DBTableView1ISSUED_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1UOM: TcxGridDBColumn;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    Panel4: TPanel;
    btnAdd: TcxButton;
    btnSelectMaterial: TcxButton;
    btnDeleteIDO: TcxButton;
    btnQuery: TcxButton;
    btnPrint: TcxButton;
    btnAffirm: TcxButton;
    btnFirst: TcxButton;
    btnPrior: TcxButton;
    btnNext: TcxButton;
    btnLast: TcxButton;
    cxGroupBox4: TcxGroupBox;
    Label1: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxGroupBox3: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    Panel5: TPanel;
    Panel6: TPanel;
    ClientDataSet_ido1: TClientDataSet;
    dsIDO1: TDataSource;
    ClientDataSet_ido2: TClientDataSet;
    dsIDO2: TDataSource;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Bh: TcxGridDBColumn;
    cxGrid2DBTableView1Oper: TcxGridDBColumn;
    cxGrid2DBTableView1Idno: TcxGridDBColumn;
    cxGrid2DBTableView1Zdh: TcxGridDBColumn;
    cxGrid2DBTableView1Wl: TcxGridDBColumn;
    cxGrid2DBTableView1Uwidth: TcxGridDBColumn;
    cxGrid2DBTableView1Sh: TcxGridDBColumn;
    cxGrid2DBTableView1Sz: TcxGridDBColumn;
    cxGrid2DBTableView1Qaresult: TcxGridDBColumn;
    cxGrid2DBTableView1Cd: TcxGridDBColumn;
    cxGrid2DBTableView1Ufd: TcxGridDBColumn;
    cxGrid2DBTableView1Mfd: TcxGridDBColumn;
    cxGrid2DBTableView1Qty: TcxGridDBColumn;
    cxGrid2DBTableView1Uom: TcxGridDBColumn;
    cxGrid2DBTableView1Wz: TcxGridDBColumn;
    cxGrid2DBTableView1Opdesc: TcxGridDBColumn;
    cxGrid2DBTableView1Sy: TcxGridDBColumn;
    cxGrid2DBTableView1Gh: TcxGridDBColumn;
    cxGrid2DBTableView1Aqty: TcxGridDBColumn;
    cxGrid2DBTableView1Status: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    ClientDataSet_ido4: TClientDataSet;
    dsIDO4: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    ClientDataSet3: TClientDataSet;
    DataSource3: TDataSource;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    btnDeleteIDODetail: TcxButton;
    btnLocate: TcxButton;
    cxStyle6: TcxStyle;
    ClientDataSet_Temp2: TClientDataSet;
    RMDBDataSet2: TRMDBDataSet;
    cxTextEdit_Date: TcxTextEdit;
    cxTextEdit_Time: TcxTextEdit;
    Label14: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxGrid1DBTableView1COMPANY: TcxGridDBColumn;
    cxGrid2DBTableView1COMPANY: TcxGridDBColumn;
    Label16: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxTextEdit_cono: TcxTextEdit;
    cxTextEdit_prjno: TcxTextEdit;
    cxTextEdit_worder: TcxTextEdit;
    cxGrid2DBTableView1StockRoom: TcxGridDBColumn;
    cxGrid1DBTableView1Stockroom: TcxGridDBColumn;
    cxGroupBox5: TcxGroupBox;
    cxButtonEdit_IDO: TcxButtonEdit;
    pnl_select: TPanel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1IDO: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxGrid1DBTableView1ERPSuccess: TcxGridDBColumn;
    ADOQuery1: TADOQuery;
    btnClearAll: TcxButton;
    Panel7: TPanel;
    btnToHandHeld: TcxButton;
    btnFromHandHeld: TcxButton;
    btnToSystem21: TcxButton;
    btnDelete: TcxButton;
    btnReport: TcxButton;
    btnRefreshUploadtoERPStatus: TcxButton;
    Panel_ColorTips: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    ClientDataSet_IDO1_Temp: TClientDataSet;
    ClientDataSet_IDO2_Temp: TClientDataSet;
    btnPrintLabel: TcxButton;
    cxGrid1DBTableView1LOT_ID_Sub: TcxGridDBColumn;
    cxGrid2DBTableView1pgmn: TcxGridDBColumn;
    cxGrid1DBTableView1Location: TcxGridDBColumn;
    cxGrid1DBTableView1PGMN: TcxGridDBColumn;
    cxGrid3DBTableView1bSelect: TcxGridDBColumn;
    Label15: TLabel;
    RMGridReport1: TRMGridReport;
    cdsPrintLabel: TClientDataSet;
    cdsReport_Temp: TClientDataSet;
    RMAsBarCodeObject1: TRMAsBarCodeObject;
    btnManualAction: TcxButton;
    cxGrid2DBTableView1PHISM: TcxGridDBColumn;
    ADOQuery2: TADOQuery;
    btnGetPHISM: TcxButton;
    cxGrid1DBTableView1PHISM: TcxGridDBColumn;
    btnIDO2Post: TcxButton;
    btnUnAction: TcxButton;
    cxGrid1DBTableView1ColorShade: TcxGridDBColumn;
    btnQueryIssue: TcxButton;
    ADOQuery3: TADOQuery;
    cxGrid2DBTableView1SuppBatch: TcxGridDBColumn;
    btnSplitIDList: TcxButton;
    btnIDOReport: TcxButton;
    btnChangToYellow: TcxButton;
    ADOQuery4: TADOQuery;
    Panel8: TPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    cxDBLabel1: TcxDBLabel;
    cxButtonEdit_BH: TcxButtonEdit;
    Label2: TLabel;
    cxGrid2DBTableView1ActualQty: TcxGridDBColumn;
    ADOQuery_UpdateIDO: TADOQuery;
    ClientDataSet_IDOERP: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure btnFromHandHeldClick(Sender: TObject);
    procedure btnToHandHeldClick(Sender: TObject);
    procedure btnToSystem21Click(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure cxGrid1DBTableView1StatusGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure btnUpdateCountClick(Sender: TObject);
    procedure UpdateDBState(Sender: TObject);
    procedure ClientDataSet_ido1AfterScroll(DataSet: TDataSet);
    procedure ClientDataSet_ido1AfterDelete(DataSet: TDataSet);
    procedure ClientDataSet_ido1AfterCancel(DataSet: TDataSet);
    procedure ClientDataSet_ido1AfterInsert(DataSet: TDataSet);
    procedure cxLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelectMaterialClick(Sender: TObject);
    procedure btnAffirmClick(Sender: TObject);
    procedure btnDeleteIDOClick(Sender: TObject);
    procedure btnDeleteIDODetailClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure btnLocateClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid2DBTableView1StatusGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxLookupComboBox1PropertiesInitPopup(Sender: TObject);
    procedure cxGrid2DBTableView1COMPANYGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGrid2DBTableView1CdGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGrid1DBTableView1ISSUED_DATEGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGrid2DBTableView1QtyPropertiesEditValueChanged(
      Sender: TObject);
    procedure ClientDataSet_ido2AfterPost(DataSet: TDataSet);
    procedure ClientDataSet_ido2BeforePost(DataSet: TDataSet);
    procedure ClientDataSet_ido1BeforePost(DataSet: TDataSet);
    procedure ClientDataSet_ido1AfterPost(DataSet: TDataSet);
    procedure cxGrid2DBTableView1StatusGetFilterDisplayText(
      Sender: TcxCustomGridTableItem; const AValue: Variant;
      var ADisplayText: string);
    procedure cxGrid1DBTableView1StatusGetFilterDisplayText(
      Sender: TcxCustomGridTableItem; const AValue: Variant;
      var ADisplayText: string);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure cxGrid3DBTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxButtonEdit_IDOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClientDataSet1AfterOpen(DataSet: TDataSet);
    procedure ClientDataSet1AfterClose(DataSet: TDataSet);
    procedure ClientDataSet_ido2AfterScroll(DataSet: TDataSet);
    procedure cxGrid1DBTableView1ERPSuccessGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure btnRefreshUploadtoERPStatusClick(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure ClientDataSet_ido2BeforeEdit(DataSet: TDataSet);
    procedure btnIDO2PostClick(Sender: TObject);
    procedure cxGrid2Exit(Sender: TObject);
    procedure btnPrintLabelClick(Sender: TObject);
    procedure btnManualActionClick(Sender: TObject);
    procedure ClientDataSet1AfterScroll(DataSet: TDataSet);
    procedure btnGetPHISMClick(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure btnUnActionClick(Sender: TObject);
    procedure btnSplitIDListClick(Sender: TObject);
    procedure btnIDOReportClick(Sender: TObject);
    procedure btnChangToYellowClick(Sender: TObject);
    procedure cxButtonEdit_BHKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEdit_BHPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
    FSelectIDONo: string;
    FSelectMaterial: boolean;
    FIDOUserRight: TUserRights;
    FIDO1_State, FIDO2_State: boolean;
    FCanDbClick: boolean;
    FManualActionLogin: boolean;
    FBanFang: string;
    //    FSuccess, FError: string;
    FShowIDOReport: boolean;

    procedure DoApplyUpdateData(bISSUED: boolean = False);
    procedure DoApplyUpdateIssueErpSuccess(conoi, wordi, trdti, istri, compi, locni, IDO: string; bErpSuccess: boolean);
    procedure DoApplyUpdateIssueSubLotNo(conoi, trdti, istri, compi, locni, SubLot: string);
    procedure DoAppend;
    procedure GetIDOUserRights;
    //    function GenerateFile: boolean;
    procedure FilterIssueData(AIDO: string);
    //function GetWhereSQL(DataSet: TClientDataSet; AIDO: string; bGetDistinct: boolean = False): string;
    procedure SetBtnEnable(bEnable: boolean);
    function CheckIDO2HasConfirmRecord(BH: string): boolean;
    procedure SetBKColor;
    //procedure GetNewCurrQtyOfPrintLabel(var vParams: Variant);
    //function GetUpdatedQty(DataSet: TDataSet; ACount: Integer): Variant;
    function GetCurrQtyOfArray(cono, LotNo, ItemCode, ST: string): double; overload;
    function GetCurrQtyOfArray(cono, LotNo, ItemCode, ST: string; var HDO: string): double; overload;
    function GetNewUpdatedQty(): boolean; overload;
    function GetNewUpdatedQty(DT: Integer; TM: string): boolean; overload;

    procedure DoToHandHeld(DataSet: TDataSet);
    procedure PHPrintLabel;
    procedure InsertToERPTemp(DataSet: TDataSet; DT: Integer; TM: string);
    procedure InsertToERPTemp_Refresh(DataSet: TDataSet; DT: Integer; TM: string);

    function GetMaxIDO: string;
    function GetPHISM(ACONO, AItemCode, AStockRoom: string): string;
    function GetORIGQTYFromFinalLabel(CompanyNo, Barcode, SKU, STOCKROOM, HDONO: string): Double;

    procedure WHPrintIDOReport(IDO: string);
    procedure DoShowBtnChangeToYellow();
    function GetIDOFullString(AIDO: string): string;
    function CheckCanComfirm(IDO: string; var worder: string): boolean;
    function WorderStatusIsRelease(cono, Worder: string): boolean;
    function LocateBH(bh: string): boolean;
  public
    { Public declarations }
//    FNew, FSystem21, FToHandHeld, FFromHandHeld, FIDOCompleted, FUnKnown: string;
    FProgressed, FUnKnown, FIDOCompleted {, FIDOAffirm}: string;
    FsNew, FsSystem21, FsPrintLabel, FsToHandHeld, FsFromHandHeld, FsIDOConfirmed: string;
    FsErpUpload, FsToErpBlank, FsToErpFail, FsToErpSuccess: string;
    procedure SetLanguageStr; override;
    procedure DoApplyUpdateData_IDO1(bInsert: boolean);
    procedure DoApplyUpdateData_IDO2(bInsert: boolean);
    procedure UpdateIDOs2AS400(ACONO, AIDO, ALotID, AWord, AStatus: string);
    procedure IDOs2AS400ErrorLog(ACONO, AIDO, ALotID, AWord, AStatus: string);
  end;

var
  frmMain: TfrmMain;
function DoInsertFromHandHeldData_PK(AFileName: string): boolean;
function DoGenerateHandHeldFile_PK(AFileName: string): Integer;

implementation

uses ufrmDialog, ufrmIDO;

{$R *.dfm}

function DoInsertFromHandHeldData_PK(AFileName: string): boolean;
var
  F: TextFile;
  LotNumber: string[15];
  IDO, oldIDO: string[11];
  //  I: Integer;
    //  AFilter: string;
begin
  result := False;
  if not FileExists(AFileName) then exit;

  AssignFile(F, AFileName);
  ReSet(F);
  with frmMain.ClientDataSet1 do
  begin
    DisableControls;
    try
      oldIDO := '';
      while not System.Eof(F) do
      begin
        Readln(F, IDO, LotNumber);
        //IDO := (IDO); //Trim
        if oldIDO <> IDO then
        begin
          frmMain.FilterIssueData(IDO);
          oldIDO := IDO;
        end;
        //====Peter 2005.10.18  兼容PHIS 12位 add -00
        if Length(Trim(LotNumber)) < 15 then
          LotNumber := LotNumber + '-00';

        if Locate('IDO;LOT_ID',
          VarArrayOf([IDO, LotNumber]), []) then
        begin
          Edit;
          if FieldByName('STATUS').AsInteger <> Ord(bcsToSystem21) then
          begin
            FieldByName('STATUS').AsInteger := Ord(bcsFromHandHeld);
            FieldByName('ISSUED_DATE').AsDateTime := Date;
          end;
          Post;
          frmMain.DoApplyUpdateData(True);
        end;
        //        Inc(I);
      end; // while
      result := True;
    finally // wrap up
      EnableControls;
      CloseFile(F);
    end; // try/finally
  end; // with
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  FManualActionLogin := False;
  ClientDataSet_ido1.RemoteServer := SCN;
  ClientDataSet_ido2.RemoteServer := SCN;
  ClientDataSet_ido4.RemoteServer := SCN;
  ClientDataSet_Temp2.RemoteServer := SCN;
  cdsReport_Temp.RemoteServer := SCN;
  ClientDataSet_IDO1_Temp.RemoteServer := SCN;
  ClientDataSet_IDO2_Temp.RemoteServer := SCN;
  ClientDataSet3.RemoteServer := SCN;
  ClientDataSet_IDOERP.RemoteServer := SCN;

  ADOQuery1.Connection := ZPHLIB;
  ADOQuery2.Connection := ZPHLIB;
  ADOQuery3.Connection := ZPHLIB;
  ADOQuery4.Connection := ZPHLIB;
  ADOQuery_UpdateIDO.Connection := ZPHLIB;
  cdsPrintLabel.RemoteServer := SCN;
  //  cdsUpdatedIdo1.RemoteServer := SCN;
  //  cdsUpdatedIdo2.RemoteServer := SCN;
  //  ClientDataSet_IDO_Temp1.RemoteServer := SCN;
  //  ClientDataSet_IDO_Temp2.RemoteServer := SCN;
  ClientDataSet_ido1.AfterScroll := nil;

  GetIDOUserRights;
  TabSheet_IDO.TabEnabled := (urAdmin in FIDOUserRight) or (urBrowse in FIDOUserRight);
  TabSheet_Issue.TabEnabled := (urAdmin in UserRights) or (urBrowse in UserRights);

  if not TabSheet_IDO.TabEnabled then
    RzPageControl1.ActivePage := TabSheet_Issue
  else
    RzPageControl1.ActivePage := TabSheet_IDO;

  SetLanguageStr;
  SetBtnEnable(ClientDataSet1.Active);
  SetBKColor;
  //  with ClientDataSet1 do
  //  begin
  //    Close;
  //    Params.Clear;
  //    CommandText := 'select * from PB_GATEPASS   order by IDO';
  //    Open;
  //  end; // with
  //  if TabSheet2.TabEnabled then
  //  begin
  with ClientDataSet_ido4 do
  begin
    close;
    params.clear;
    commandtext := 'select distinct wdesc from ido4';
    open;
  end;
  with ClientDataSet_ido1 do
  begin
    Close;
    Params.Clear;
    if (urAdmin in FIDOUserRight) or (urBrowseAllIDO in FIDOUserRight) then
      CommandText := 'select * from ido1 where cono=''A1'' order by bh'
    else
      CommandText := 'select * from ido1 where jlr=' + QuotedStr(UID) + ' order by bh';
    Open;
    First;
  end; // with
  ClientDataSet_ido1.AfterScroll := ClientDataSet_ido1AfterScroll;
  if not ClientDataSet_ido1.IsEmpty then
    ClientDataSet_ido1AfterScroll(ClientDataSet_ido1);
  //  end;
  FSelectMaterial := False;
end;

procedure TfrmMain.SetBKColor;
begin
  cxLabel1.Style.Color := clbcNew;
  cxLabel3.Style.Color := clbcPrintLabel;
  cxLabel5.Style.Color := clbcToHandHeld;
  cxLabel7.Style.Color := clbcFromHandHeld;
  cxLabel9.Style.Color := clbcIDOAffirm;
  cxLabel11.Style.Color := clbcToSystem21_Blank;
  cxLabel13.Style.Color := clbcToSystem21_Fail;
  cxLabel15.Style.Color := clbcToSystem21_Success;
  cxLabel17.Style.Color := clRecordSelected;
end;

procedure TfrmMain.SetLanguageStr;
begin
  inherited;
  RUnit := 'Picking';
  btnToSystem21.Caption := GetLanguagesStr(51, 'System 21', True);
  btnToSystem21.Hint := GetLanguagesStr(41, 'Transfer data To System 21', True);
  btnDelete.Caption := GetLanguagesStr(2, 'Delete', True) + '..';
  btnReport.Caption := GetLanguagesStr(3, 'Report', True);
  btnIDOReport.Caption := 'IDO ' + btnReport.Caption + '...';
  btnToHandHeld.Caption := GetLanguagesStr(103, 'to HandHeld', True);
  btnToHandHeld.Hint := GetLanguagesStr(43, 'Transfer data To HandHeld', True);
  btnFromHandHeld.Caption := GetLanguagesStr(104, 'from HandHeld', True);
  btnFromHandHeld.Hint := GetLanguagesStr(42, 'Transfer data From HandHeld', True);
  //btnUpdateCount.Caption := GetLanguagesStr(22, 'Update Qty');

  //  btnImportIDO.Caption := GetLanguagesStr(1, 'Import IDO');

  cxGrid1DBTableView1UOM.Caption := GetLanguagesStr(15, 'UOM', True);
  cxGrid1DBTableView1SOP.Caption := GetLanguagesStr(4, 'SOP');
  cxGrid1DBTableView1PROJECT_NO.Caption := GetLanguagesStr(5, 'PROJECT No.');
  cxGrid1DBTableView1IDO.Caption := GetLanguagesStr(6, 'IDO No.');
  cxGroupBox5.Caption := GetLanguagesStr(6, 'IDO No.');
  cxGrid3DBTableView1IDO.Caption := GetLanguagesStr(6, 'IDO No.');
  cxGrid1DBTableView1WORK_ORDER.Caption := GetLanguagesStr(7, 'WORK ORDER No.');
  cxGrid1DBTableView1LOT_ID.Caption := GetLanguagesStr(14, 'LOT Number', True);
  cxGrid1DBTableView1ISSUE_QTY.Caption := GetLanguagesStr(9, 'Issue Quantity');
  cxGrid1DBTableView1GATEPASS.Caption := GetLanguagesStr(10, 'GATEPASS');
  cxGrid1DBTableView1UID.Caption := GetLanguagesStr(30, 'UserName', True);
  cxGrid1DBTableView1ISSUED_DATE.Caption := GetLanguagesStr(12, 'Issue Date');
  cxGrid1DBTableView1ITEM_CODE.Caption := GetLanguagesStr(13, 'ITEM CODE', True);
  cxGrid1DBTableView1Status.Caption := GetLanguagesStr(12, 'Status', True);
  cxGrid1DBTableView1COMPANY.Caption := GetLanguagesStr(17, 'COMPANY', True);
  cxGrid1DBTableView1Stockroom.Caption := GetLanguagesStr(16, 'StockRoom', True);
  cxGrid1DBTableView1LOT_ID_Sub.Caption := GetLanguagesStr(83, 'Sub Lot No.');
  cxGrid1DBTableView1pgmn.Caption := GetLanguagesStr(84, 'Material Type');
  cxGrid1DBTableView1Location.Caption := GetLanguagesStr(58, 'Location');

  btnRefreshUploadtoERPStatus.Caption := GetLanguagesStr(67, 'Refresh Upload to', True) + #10#13 + GetLanguagesStr(68, ' ERP Status', True);
  cxGrid1DBTableView1ERPSuccess.Caption := GetLanguagesStr(69, 'Upload ERP', True);
  //  FSuccess := GetLanguagesStr(66, 'Success', True);
  //  FError := GetLanguagesStr(63, 'Fail', True);

  //  FNew := GetLanguagesStr(100, 'New', True);
  //  FSystem21 := GetLanguagesStr(101, '>>>System21', True);
  //  FToHandHeld := GetLanguagesStr(103, '>>>HandHeld', True);
  //  FFromHandHeld := GetLanguagesStr(104, 'HandHeld>>>', True);
  FIDOCompleted := GetLanguagesStr(116, 'IDO Completed', True);
  FUnKnown := GetLanguagesStr(105, 'IDO Completed', True);
  FProgressed := 'IDO ' + GetLanguagesStr(118, 'Progressed', True);
  //  FIDOAffirm := GetLanguagesStr(121, 'IDO Affirmed', True);
  FBanFang := GetLanguagesStr(77, '板房', True);

  FsNew := GetLanguagesStr(100, 'New', True);
  FsSystem21 := GetLanguagesStr(101, 'To ERP', True);
  FsPrintLabel := GetLanguagesStr(102, 'Print Label', True);
  FsToHandHeld := GetLanguagesStr(103, 'To HandHeld', True);
  FsFromHandHeld := GetLanguagesStr(104, 'From HandHeld', True);
  FsIDOConfirmed := GetLanguagesStr(121, 'IDO Confirmed', True);
  FsToErpBlank := GetLanguagesStr(70, 'Blank', True);
  FsToErpFail := GetLanguagesStr(63, 'Fail', True);
  FsToErpSuccess := GetLanguagesStr(66, 'Success', True);
  FsErpUpload := GetLanguagesStr(71, 'ERP Upload', True);

  cxLabel16.Caption := FsErpUpload + '-' + FsToErpSuccess;
  cxLabel14.Caption := FsErpUpload + '-' + FsToErpFail;
  cxLabel12.Caption := FsSystem21;
  cxLabel10.Caption := FsIDOConfirmed;
  cxLabel8.Caption := FsFromHandHeld;
  cxLabel6.Caption := FsToHandHeld;
  cxLabel4.Caption := FsPrintLabel;
  cxLabel2.Caption := FsNew;
  cxLabel18.Caption := GetLanguagesStr(72, 'Row Selection', True);

  pnl_Title.Caption := GetLanguagesStr(1000 + Self.Tag, RUnit, True);
  Caption := pnl_Title.Caption;
  TabSheet_Issue.Caption := '      ' + pnl_Title.Caption + '      ';
  TabSheet_IDO.Caption := '      ' + GetLanguagesStr(24, 'IDO') + '      ';

  btnFirst.Hint := GetLanguagesStr(25, 'First Record');
  btnPrior.Hint := GetLanguagesStr(26, 'Prior Record');
  btnNext.Hint := GetLanguagesStr(27, 'Next Record');
  btnLast.Hint := GetLanguagesStr(28, 'Last Record');
  btnSelectMaterial.Caption := GetLanguagesStr(29, 'Select Material');
  btnQuery.Caption := GetLanguagesStr(30, 'Query');
  btnQueryIssue.Caption := btnQuery.Caption;
  btnAffirm.Caption := GetLanguagesStr(31, 'Affirm');
  btnDeleteIDO.Caption := GetLanguagesStr(32, 'Delete IDO');
  btnDeleteIDODetail.Caption := GetLanguagesStr(33, 'Delete IDO Detail');
  btnDeleteIDODetail.Hint := GetLanguagesStr(73, 'Delete IDO Detail of Current Datail');
  cxGroupBox4.Caption := GetLanguagesStr(34, 'Locate');
  btnLocate.Caption := cxGroupBox4.Caption;
  cxGrid2DBTableView1Gh.Caption := GetLanguagesStr(35, 'Gh');
  Label4.Caption := GetLanguagesStr(36, 'Recorder');
  Label5.Caption := GetLanguagesStr(37, 'Project No.');
  Label6.Caption := GetLanguagesStr(38, 'Worder');
  cxGrid2DBTableView1Sy.Caption := GetLanguagesStr(39, 'Sy');
  Label8.Caption := GetLanguagesStr(40, 'Picking Dept.');
  cxGrid2DBTableView1Opdesc.Caption := GetLanguagesStr(41, 'Opdesc');
  Label10.Caption := GetLanguagesStr(42, 'Consignee Dept.');
  Label11.Caption := GetLanguagesStr(43, 'Consignee');
  Label12.Caption := GetLanguagesStr(44, 'production line');
  Label13.Caption := GetLanguagesStr(45, 'Remark');
  cxGrid2DBTableView1Aqty.Caption := GetLanguagesStr(46, 'Allocate Qty');
  cxGrid2DBTableView1Oper.Caption := GetLanguagesStr(47, 'Oper');
  cxGrid2DBTableView1Idno.Caption := GetLanguagesStr(14, 'LOT Number', True);
  cxGrid2DBTableView1Zdh.Caption := GetLanguagesStr(49, 'WorkOrder');
  cxGrid2DBTableView1Wl.Caption := GetLanguagesStr(50, 'Material');
  cxGrid2DBTableView1PHISM.Caption := GetLanguagesStr(79, 'Supp Refer No.', True);
  cxGrid2DBTableView1Uwidth.Caption := GetLanguagesStr(51, 'Uwidth');
  cxGrid2DBTableView1Sh.Caption := GetLanguagesStr(52, 'Color');
  cxGrid2DBTableView1Sz.Caption := GetLanguagesStr(53, 'Color Shade');
  cxGrid1DBTableView1ColorShade.Caption := GetLanguagesStr(53, 'Color Shade');
  cxGrid2DBTableView1Qaresult.Caption := GetLanguagesStr(54, 'Qaresult');
  cxGrid2DBTableView1Cd.Caption := GetLanguagesStr(55, 'CD');
  cxGrid2DBTableView1Ufd.Caption := GetLanguagesStr(56, 'Ufd');
  cxGrid2DBTableView1Mfd.Caption := GetLanguagesStr(57, 'Mfd');
  cxGrid2DBTableView1Wz.Caption := GetLanguagesStr(58, 'Wz');
  cxGrid2DBTableView1COMPANY.Caption := GetLanguagesStr(17, 'COMPANY', True);
  cxGrid2DBTableView1StockRoom.Caption := GetLanguagesStr(16, 'StockRoom', True);
  cxGrid2DBTableView1pgmn.Caption := GetLanguagesStr(84, 'Material Type');
  cxGrid2DBTableView1SuppBatch.Caption := GetLanguagesStr(82, 'Supp Batch', True);
  cxGrid2DBTableView1ActualQty.Caption := GetLanguagesStr(93, 'Actual Qty');

  Label3.Caption := GetLanguagesStr(59, 'IDO');
  Label1.Caption := GetLanguagesStr(17, 'COMPANY', True);
  Label14.Caption := GetLanguagesStr(17, 'COMPANY', True);
  Label2.Caption := Label3.Caption;
  //  Label15.Caption := GetLanguagesStr(49, 'Site', True);
  Label16.Caption := GetLanguagesStr(48, 'SOP No.');

  Label9.Caption := GetLanguagesStr(38, 'Time', True);
  Label7.Caption := GetLanguagesStr(23, 'Date', True);
  btnPrint.Caption := GetLanguagesStr(3, 'Report', True);
  btnAdd.Caption := GetLanguagesStr(28, 'Add', True);
  cxGrid2DBTableView1Qty.Caption := GetLanguagesStr(9, 'Issue Quantity');
  cxGrid2DBTableView1Uom.Caption := GetLanguagesStr(15, 'Uom', True);
  cxGrid2DBTableView1Status.Caption := GetLanguagesStr(12, 'Status', True);
  btnIDO2Post.Caption := GetLanguagesStr(27, 'Save', True);
  btnIDO2Post.Hint := GetLanguagesStr(27, 'Save', True) + ' ' + GetLanguagesStr(9, 'Issue Quantity');
  btnGetPHISM.Caption := GetLanguagesStr(80, 'Update Supp Refer No.', True);

  cxButton1.Caption := GetLanguagesStr(39, 'Select', True);
  cxButton3.Caption := GetLanguagesStr(11, 'Cancel', True);
  btnClearAll.Caption := GetLanguagesStr(60, 'Clear All', True);
  btnManualAction.Caption := GetLanguagesStr(86, 'Manual Action (All)');
  btnUnAction.Caption := GetLanguagesStr(87, 'Un-Action(Single)');
  btnSplitIDList.Caption := GetLanguagesStr(90, 'Split ID List');

  btnPrintLabel.Caption := GetLanguagesStr(82, 'Reprint Label');
end;

function DoGenerateHandHeldFile_PK(AFileName: string): Integer;
var
  F: TextFile;
  LotNumber: string[15];
  IDO: string[11];
  //  STATUS: Integer;
begin
  //  result := -1; // -1 -- fail, 0 -- not data, 1 -- have data
  //  AFileName := 'MPicking.txt';
  //  AFileName := cHandHeldPath + AFileName;
  with frmMain.ClientDataSet_Temp do
  begin
    Close;
    params.clear;
    CommandText := 'select  STATUS,IDO,LOT_ID  from PB_GATEPASS where ' + (frmMain.FSelectIDONo)
      + ' and (STATUS=' + IntToStr(Ord(bcsNew)) + ' or STATUS=' + IntToStr(Ord(bcsToHandHeld)) + ') order by IDO';
    Open;
    if RecordCount = 0 then
    begin
      result := 0;
      exit;
    end;
    //  with frmMain.ClientDataSet1 do
    //  begin
    //    DisableControls;
    AssignFile(F, AFileName);
    ReWrite(F);
    try
      First;
      while not EOF do
      begin
        //        STATUS := FieldByName('STATUS').AsInteger;
        //        if (STATUS = Ord(bcsNew)) or (STATUS = Ord(bcsToHandHeld)) then
        begin
          IDO := bcGetStringstr(FieldByName('IDO').AsString, 11);
          LotNumber := bcGetStringstr(FieldByName('LOT_ID').AsString, 15);
          Writeln(F, IDO, LotNumber);
        end;
        Next;
      end; // while
      result := 1;
      //        end;
    finally // wrap up
      CloseFile(F);
      //      EnableControls;
    end; // try/finally
  end; // with

end;

procedure TfrmMain.btnToHandHeldClick(Sender: TObject);
begin
  inherited;
  if not CheckUserRight(cUrToHandHeld, TButton(Sender).Caption, UserRights) then exit;
  //  with ClientDataSet2 do
  //  begin
  //    Close;
  //    Params.Clear;
  //    CommandText := 'select distinct IDO from PB_GATEPASS ' + bcGetWhereSQL(ClientDataSet1.CommandText, 'IDO', '', True) + ' order by IDO';
  //    Open;
  //  end; // with

  pnl_select.Left := btnToHandHeld.Left;
  pnl_select.Top := btnToHandHeld.Top + btnToHandHeld.Height + 2;
  cxGrid3DBTableView1bSelect.Visible := True;
  pnl_select.Visible := True;
  pnl_select.Tag := 1;
  //  SetBtnEnable(False);
  Panel7.Visible := False;
  cxGroupBox5.Visible := False;
  btnClearAll.Visible := False;
  Label15.Caption := btnToHandHeld.Caption;

  Screen.Cursor := crSQLWait;
  cxGrid3DBTableView1.DataController.DataSource := nil;
  Application.ProcessMessages;
  try
    with ClientDataSet2 do
    begin
      Close;
      Params.Clear;
      CommandText := 'select a.IDO,b.ErpSuccess as bSelect from '
        + ' (select distinct IDO from PB_GATEPASS ' + bcGetWhereSQL(ClientDataSet1.CommandText, 'IDO', '', True) + ') a'
        + ' Left join (select IDO,ErpSuccess from PB_GATEPASS where 1=2) b'
        + ' on (a.IDO=b.IDO) order by a.IDO';
      Open;
    end; // with
    cxGrid3DBTableView1.DataController.DataSource := DataSource2;
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

procedure TfrmMain.DoToHandHeld(DataSet: TDataSet);

  function GetSelectIDO(DataSet: TDataSet): string;
  var
    AIDO: string;
  begin
    result := '';
    DataSet.First;
    while not DataSet.Eof do
    begin
      if DataSet.FieldByName('bSelect').AsBoolean then
      begin
        AIDO := DataSet.FieldByName('IDO').AsString;
        result := result + 'OR (IDO=' + QuotedStr(AIDO) + ')';
      end;
      DataSet.Next;
    end; // while
    if result <> '' then
    begin
      result := '(' + Trim(Copy(result, 3, MaxInt)) + ')';
    end;
  end;

  function UpdateState(AIDONo: string): boolean;
  var
    STATUS: Integer;
  begin
    with ClientDataSet1 do
    begin
      Screen.Cursor := crSQLWait;
      DisableControls;
      Filtered := False;
      Filter := AIDONo; // 'IDO=' + QuotedStr(AIDONo); //+ ' and STATUS=' + IntToStr(Ord(bcsNew));
      Filtered := True;
      try
        First;
        while not EOF do
        begin
          STATUS := FieldByName('STATUS').AsInteger;
          if (STATUS = Ord(bcsNew)) then
          begin
            Edit;
            FieldByName('STATUS').AsInteger := Ord(bcsToHandHeld);
            DoApplyUpdateData();
            Post;
          end;
          Next;
        end; // while
        result := True;
      finally // wrap up
        Filtered := False;
        Filter := '';
        EnableControls;
        Screen.Cursor := crDefault;
      end; // try/finally
    end; // with
  end;
var
  AFileName: string;
  iRet: Integer;
begin
  //  if not DoSelectIDONo(FSelectIDONo) then exit;
  FSelectIDONo := GetSelectIDO(DataSet);
  if FSelectIDONo = '' then exit;

  Screen.Cursor := crSQLWait;
  try
    //upload data to HandHeld
    AFileName := 'MPicking.txt';
    iRet := ToHandHeld(AFileName, ComPort, @DoGenerateHandHeldFile_PK);
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally

  case iRet of //
    0:
      Application.MessageBox(PChar(GetLanguagesStr(44, 'No Data', True)),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
    1:
      begin
        //  update state
        UpdateState(FSelectIDONo);
        Application.MessageBox(PChar('[' + GetLanguagesStr(43, 'Transfer data To HandHeld', True) + '] ' + GetLanguagesStr(20, 'Finish', True)),
          PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation)
      end;
    2:
      Application.MessageBox(PChar(GetLanguagesStr(34, 'HandHeld is not ready,plese check the HandHeld.', True)),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
  end;
end;

procedure TfrmMain.DoApplyUpdateData(bISSUED: boolean);
begin
  with ClientDataSet_Temp do
  begin
    Close;
    Params.Clear;
    Params.CreateParam(ftString, '@IDO', ptInput);
    Params.CreateParam(ftString, '@LOT_ID', ptInput);
    Params.CreateParam(ftInteger, '@Status', ptInput);
    Params.CreateParam(ftDateTime, '@ISSUED_DATE', ptInput);
    Params.CreateParam(ftInteger, '@State', ptOutput);
    CommandText := 'exec sp_pb_IssueUpdate :@IDO,:@LOT_ID,:@Status,:@ISSUED_DATE,:@State';
    Params.ParamByName('@IDO').AsString := ClientDataSet1.FieldByName('IDO').AsString;
    Params.ParamByName('@LOT_ID').AsString := ClientDataSet1.FieldByName('LOT_ID').AsString;
    Params.ParamByName('@Status').AsInteger := ClientDataSet1.FieldByName('Status').AsInteger;
    if not bISSUED then
      Params.ParamByName('@ISSUED_DATE').AsInteger := 0
    else
      Params.ParamByName('@ISSUED_DATE').AsDateTime := ClientDataSet1.FieldByName('ISSUED_DATE').AsDateTime;
    Params.ParamByName('@State').AsInteger := -1;
    Execute;
  end; // with
end;

procedure TfrmMain.ClientDataSet_ido1AfterScroll(DataSet: TDataSet);
begin
  inherited;
  cxTextEdit_Date.Text := FormatDateTime('yyyy''/''m''/''d', DataSet.FieldByName('RQ').AsDateTime);
  cxTextEdit_Time.Text := FormatDateTime('h:nn:ss', DataSet.FieldByName('SJ').AsDateTime);
  cxTextEdit_cono.Text := DataSet.FieldByName('cono').AsString;
  cxTextEdit_prjno.Text := DataSet.FieldByName('prjno').AsString;
  cxTextEdit_worder.Text := DataSet.FieldByName('worder').AsString;
  cxButtonEdit_BH.Text := DataSet.FieldByName('BH').AsString;

  ClientDataSet_ido2.AfterScroll := nil;
  try
    if not DataSet.fieldbyname('bh').IsNull then
      with ClientDataSet_ido2 do
      begin
        close;
        params.clear;
        params.createparam(ftString, 'bh', ptinput);
        commandtext := 'select a.*,a.Qty*Cd/100 AS ActualQty from ido2 a where a.bh=:bh';
        params[0].asstring := DataSet.fieldbyname('bh').asstring;
        open;
      end;
  finally // wrap up
    ClientDataSet_ido2.AfterScroll := ClientDataSet_ido2AfterScroll;
    ClientDataSet_ido2AfterScroll(ClientDataSet_ido2);
  end; // try/finally
  UpdateDBState(nil);
end;

function TfrmMain.CheckIDO2HasConfirmRecord(BH: string): boolean;
begin
  with ClientDataSet_IDO2_Temp do
  begin
    close;
    params.clear;
    commandtext := 'select Count(*) from ido2'
      + ' where bh=' + QuotedStr(BH) + ' and status=' + IntToStr(Ord(bcsIDOAffirm));
    open;
    result := Fields[0].AsInteger > 0;
  end;
end;

procedure TfrmMain.btnFromHandHeldClick(Sender: TObject);
var
  AFileName: string;
  iResult: Integer;
begin
  inherited;
  if not CheckUserRight(cUrFromHandHeld, TButton(Sender).Caption, UserRights) then exit;

  if (Application.MessageBox(PChar(GetLanguagesStr(6, 'Are you sure to transfer data From HandHeld?', True)),
    PChar(GetLanguagesStr(5, 'Tips', True)), MB_YESNO + MB_ICONInformation) = IDNO) then exit;
  Screen.Cursor := crSQLWait;
  try
    //get data from HandHeld
    AFileName := 'Picking.dat';
    iResult := FromHandHeld(AFileName, ComPort, @DoInsertFromHandHeldData_PK);
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally

  case iResult of //
    0: ; //load dll fail
    1:
      Application.MessageBox(PChar('[' + GetLanguagesStr(42, 'Transfer data From HandHeld', True) + '] ' + GetLanguagesStr(20, 'Finish', True)),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
    2:
      Application.MessageBox(PChar(GetLanguagesStr(34, 'HandHeld is not ready,plese check the HandHeld.', True)),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK);
  end; // case
end;

procedure TfrmMain.btnToSystem21Click(Sender: TObject);
var
  vParam, bFinish: Variant;
  AIDONo: string;
begin
  inherited;
  if not CheckUserRight(cUrToERP, TButton(Sender).Caption, UserRights) then exit;

  with ClientDataSet2 do
  begin
    Close;
    Params.Clear;
    //    CommandText := 'select distinct IDO from PB_GATEPASS where status=' + IntToStr(Ord(bcsFromHandHeld))
    //      + '  and IDO in (select  IDO from PB_GATEPASS ' + bcGetWhereSQL(ClientDataSet1.CommandText, 'IDO', '', True) + ')' + '  order by IDO';
    CommandText := 'select distinct IDO from PB_GATEPASS where (status=' + IntToStr(Ord(bcsFromHandHeld))
      + ' or (status=' + IntToStr(Ord(bcsToSystem21)) + ' and ERPSuccess=0))'
      + '  and IDO in (select  IDO from PB_GATEPASS '
      + bcGetWhereSQL(ClientDataSet1.CommandText, 'IDO', '', True) + ')' + '  order by IDO';
    Open;
  end; // with
  if not DoSelectIDONo(AIDONo) then exit;

  Screen.Cursor := crSQLWait;
  ClientDataSet1.Close;
  try
    vParam := VarArrayCreate([0, 0], varVariant);
    vParam[0] := AIDONo;
    SCN.AppServer.UpdateDataToERP(ord(ftIDO), vParam, bFinish);
  finally // wrap up
    ClientDataSet1.Open;
    if bFinish = -1 then
      Application.MessageBox(PChar('[' + GetLanguagesStr(41, 'Transfer data To System 21', True) + '] ' + GetLanguagesStr(63, 'Fail', True)
        + #10#13 + GetLanguagesStr(64, 'Reason', True) + ':' + GetLanguagesStr(65, 'FTP Connect unsuccessful', True)),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONError)
    else
      Application.MessageBox(PChar('[' + GetLanguagesStr(41, 'Transfer data To System 21', True) + '] ' + GetLanguagesStr(20, 'Finish', True)),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
    Screen.Cursor := crDefault;
  end; // try/finally
end;

procedure TfrmMain.btnDeleteClick(Sender: TObject);
var
  AIDONo: string;
begin
  inherited;
  if not CheckUserRight(cUrDelete, TButton(Sender).Caption, UserRights) then exit;

  with ClientDataSet2 do
  begin
    Close;
    Params.Clear;
    CommandText := 'select distinct IDO from PB_GATEPASS '
      + ' where ((status=' + IntToStr(Ord(bcsToSystem21)) + ' and ERPSuccess=0) '
      + ' or status<>' + IntToStr(Ord(bcsToSystem21)) + ')'
      //      + ' and IDO not in (select IDO from PB_GATEPASS where status=' + IntToStr(Ord(bcsToSystem21)) + ')'
    + ' and IDO in (select IDO from PB_GATEPASS ' + bcGetWhereSQL(ClientDataSet1.CommandText, 'IDO', '', True) + ')' + '  order by IDO';
    Open;
  end; // with
  if DoSelectIDONo(AIDONo) then
  begin
    Screen.Cursor := crSQLWait;
    ClientDataSet_IDO1.AfterPost := nil;
    ClientDataSet_IDO2.AfterPost := nil;
    ClientDataSet_ido1.AfterScroll := nil;
    try
      with ClientDataSet_IDO2_Temp do
      begin
        Close;
        Params.Clear;
        Params.CreateParam(ftString, '@BH', ptInput);
        Params.CreateParam(ftString, '@UID', ptInput);
        Params.CreateParam(ftString, '@DT', ptInput);
        CommandText := 'exec sp_pb_CancelPickingIDO :@BH,:@UID,:@DT';
        Params.ParamByName('@BH').AsString := AIDONo;
        Params.ParamByName('@UID').AsString := UID;
        Params.ParamByName('@DT').AsString := FormatDateTime('yyyymmdd ', now);
        Execute;
      end; // with

      with ClientDataSet1 do
      begin
        // delete from PB_GATEPASS where IDO=@BH
        //    and  ((status=1 and ERPSuccess=0) or status<>1)
        First;
        while not EOF do
        begin
          if (AIDONo = FieldByName('IDO').AsString)
            and (((FieldByName('status').AsInteger = Ord(bcsToSystem21)) and not (FieldByName('ERPSuccess').AsBoolean))
            or (FieldByName('status').AsInteger <> Ord(bcsToSystem21))) then
          begin
            UpdateIDOs2AS400(
              FieldByName('COMPANY').AsString,
              FieldByName('IDO').AsString,
              FieldByName('LOT_ID').AsString,
              FieldByName('WORK_ORDER').AsString,
              'A');
          end;

          Next;
        end;
      end;
      {
      //1.update IDO2
      with ClientDataSet_IDO2_Temp do
      begin
        Close;
        Params.Clear;
        CommandText := 'Update  IDO2 set status=' + IntToStr(Ord(bcsNew))
          + ',FUser=IsNull(FUser,'''')+'+QuotedStr('_'+UID+'('+FormatDateTime('yyyymmdd ',now)+')')
          + '  from IDo2 a,PB_GATEPASS b'
          + ' where  a.bh=' + QuotedStr(AIDONo)
          + ' and a.bh=b.IDO and ((b.ERPSuccess=0 and b.status=' + IntToStr(Ord(bcsToSystem21))
          + ') or b.status<>' + IntToStr(Ord(bcsToSystem21)) + ') and a.idno=b.Lot_ID';
        Execute;
      end; // with
      //2.update IDO1
      with ClientDataSet_IDO2_Temp do
      begin
        Close;
        Params.Clear;
        CommandText := 'Update IDO1 set ydc=0 where bh=' + QuotedStr(AIDONo);
        Execute;
      end; // with
      //3.delete Issue
      with ClientDataSet_Temp2 do
      begin
        Close;
        params.clear;
        CommandText := 'delete from PB_GATEPASS where IDO=' + QuotedStr(AIDONo)
          + ' and  ((status=' + IntToStr(Ord(bcsToSystem21)) + ' and ERPSuccess=0) or status<>' + IntToStr(Ord(bcsToSystem21)) + ')';
        // + ' and status<>' + IntToStr(Ord(bcsToSystem21));
        Execute;
      end; // with
      }
      ClientDataSet1.Close;
      ClientDataSet1.Open;
      //4.if find,then update ido1.ydc and refresh ido2
      with ClientDataSet_ido1 do
      begin
        if Locate('bh', AIDONo, []) then
        begin
          if not (State in [dsEdit]) then Edit;
          fieldbyname('ydc').AsBoolean := False;
          Post;
          ClientDataSet_ido1.AfterScroll := ClientDataSet_ido1AfterScroll;
          ClientDataSet_ido1AfterScroll(ClientDataSet_ido1);
        end;
      end; // with

    finally // wrap up
      ClientDataSet_IDO1.AfterPost := ClientDataSet_IDO1AfterPost;
      ClientDataSet_IDO2.AfterPost := ClientDataSet_IDO2AfterPost;
      ClientDataSet_ido1.AfterScroll := ClientDataSet_ido1AfterScroll;
      Screen.Cursor := crDefault;
    end; // try/finally
  end;
end;

procedure TfrmMain.btnReportClick(Sender: TObject);
var
  AStatus, ACase: string;
  APrintType: Integer;
  //  vParam: Variant;
  //  aCURR_QTY, IssueQty: Double;
    //  SavePlace: TBookMark;
begin
  inherited;
  if not CheckUserRight(cUrReport, TButton(Sender).Caption, UserRights) then exit;
  with ClientDataSet2 do
  begin
    Close;
    Params.Clear;
    CommandText := 'select distinct status from PB_GATEPASS ' + bcGetWhereSQL(ClientDataSet1.CommandText, 'IDO', '', True) + ' order by status';
    Open;
  end; // with

  if not DoSelectPrintNo(AStatus, APrintType) then exit;
  if (APrintType = 1) and (AStatus = '') then exit;

  //SavePlace := ClientDataSet1.GetBookmark;
  Screen.Cursor := crHourGlass;
  ClientDataSet1.DisableControls;
  try
    with RMGridReport1 do
    begin
      //LoadFromFile(ExtractFilePath(Application.ExeName) + 'PK.rls');
      LoadFromResourceName(hInstance, 'PK');
      Dictionary.Clear;
      Dictionary.Variables.Insert(0, ' Global');
      Dictionary.Variables['NewRecord'] := FsNew;
      Dictionary.Variables['System21'] := FsSystem21;
      Dictionary.Variables['ToHandHeld'] := FsToHandHeld;
      Dictionary.Variables['FromHandHeld'] := FsFromHandHeld;
      Dictionary.Variables['IDOCompleted'] := FIDOCompleted;
      Dictionary.Variables['FUnKnown'] := FUnKnown;
      Dictionary.Variables['FToErpSuccess'] := FsToErpSuccess;
      Dictionary.Variables['FToErpFail'] := FsToErpFail;
      Dictionary.Variables.AsString['FERPStatus'] := GetLanguagesStr(68, 'Upload Status', True);

      Dictionary.Variables['ASite'] := FsNew;
      Dictionary.Variables['ARQ'] := FsNew;
      Dictionary.Variables['ASHR'] := FsNew;
      Dictionary.Variables['AJLR'] := FsNew;
      Dictionary.Variables['ABM'] := FsNew;

      Dictionary.Variables.AsString['FReportTitle'] := GetLanguagesStr(69, 'PH Garment: Issue Material Report');
      Dictionary.Variables.AsString['FDate'] := GetLanguagesStr(23, 'Date', True);
      Dictionary.Variables.AsString['FTime'] := GetLanguagesStr(38, 'Time', True);
      Dictionary.Variables.AsString['FPage'] := GetLanguagesStr(47, 'Page', True);
      Dictionary.Variables.AsString['FStatus'] := GetLanguagesStr(12, 'Status', True);
      Dictionary.Variables.AsString['FItemCode'] := GetLanguagesStr(13, 'Item Code', True);
      Dictionary.Variables.AsString['FLotNumber'] := GetLanguagesStr(14, 'Lot Number', True);
      Dictionary.Variables.AsString['FUOM'] := GetLanguagesStr(15, 'UOM', True);
      Dictionary.Variables.AsString['FStockRoom'] := GetLanguagesStr(16, 'Stock Room', True);
      Dictionary.Variables.AsString['FCompany'] := GetLanguagesStr(17, 'Company', True);

      Dictionary.Variables.AsString['FSOP'] := GetLanguagesStr(4, 'SOP');
      Dictionary.Variables.AsString['FProjectNo'] := GetLanguagesStr(5, 'PROJECT No.');
      Dictionary.Variables.AsString['FIDONo'] := GetLanguagesStr(6, 'IDO No.');
      Dictionary.Variables.AsString['FWorkOrderNo'] := GetLanguagesStr(7, 'WORK ORDER No.');
      Dictionary.Variables.AsString['FQuantity'] := GetLanguagesStr(9, 'Issue Quantity');
      Dictionary.Variables.AsString['FCurQty'] := GetLanguagesStr(75, 'Current Qty', True);
      Dictionary.Variables.AsString['FGATEPASS'] := GetLanguagesStr(10, 'GATEPASS');
      Dictionary.Variables.AsString['FUserName'] := GetLanguagesStr(30, 'UserName', True);
      Dictionary.Variables.AsString['FIssueDate'] := GetLanguagesStr(12, 'Issue Date');

      Dictionary.Variables.AsString['FProcessFtyNo'] := GetLanguagesStr(71, 'Process Fty No.');
      Dictionary.Variables.AsString['FDeliveryDate'] := GetLanguagesStr(72, 'Stock/Process Delivery Date');
      Dictionary.Variables.AsString['FConsignee'] := GetLanguagesStr(43, 'Consignee');
      Dictionary.Variables.AsString['FRecorder'] := GetLanguagesStr(36, 'Recorder');
      Dictionary.Variables.AsString['FPickingDept'] := GetLanguagesStr(40, 'Picking Dept');
      Dictionary.Variables.AsString['FSubLotID'] := GetLanguagesStr(83, 'Sub Lot No.');
      Dictionary.Variables.AsString['FLocation'] := GetLanguagesStr(73, 'Location', True);
      Dictionary.Variables.AsString['FPGMN'] := GetLanguagesStr(84, 'Material Type');
      Dictionary.Variables.AsString['FColorShade'] := GetLanguagesStr(53, 'Sz');

      SetReportCanDesign(RMGridReport1);
      with ClientDataSet_Temp do
      begin
        Close;
        params.clear;
        ACase := 'ISSUE_QTY as CurQty,Stockroom as Split,UploadERP= case when ERPSuccess is null then -1 else  ERPSuccess end ';

        if APrintType = 0 then
          CommandText := 'select *,' + ACase + ' from PB_GATEPASS  ' + bcGetWhereSQL(ClientDataSet1.CommandText, 'IDO', '', True)
        else if APrintType = 1 then
          CommandText := 'select *,' + ACase + ' from (select * from PB_GATEPASS  ' + bcGetWhereSQL(ClientDataSet1.CommandText, 'IDO', '', True) + ') a where  status=' + AStatus
        else //if APrintType=2 then
          CommandText := 'select *,' + ACase + ' from (select * from PB_GATEPASS  ' + bcGetWhereSQL(ClientDataSet1.CommandText, 'IDO', '', True) + ') a where  ERPSuccess=1';
        Open;
        if RecordCount = 0 then
        begin
          Application.MessageBox(PChar(GetLanguagesStr(44, 'No Data', True)),
            PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
          exit;
        end;
        //get the select record's curQty from ERP
//        vParam := GetUpdatedQty(ClientDataSet_Temp, RecordCount);

//        First;
//        while not Eof do
//        begin
//          CompanyNo := FieldByName('COMPANY').AsString;
//          STOCKROOM := FieldByName('STOCKROOM').AsString;
//          LOT_ID := FieldByName('LOT_ID').AsString;
//          IssueQty := FieldByName('ISSUE_QTY').AsFloat;
//          aCURR_QTY := GetCurrQtyOfArray(CompanyNo, LOT_ID, STOCKROOM, vParam);
//          Edit;
//          FieldByName('CurQty').AsFloat := aCURR_QTY;
//          if IssueQty <> aCURR_QTY then
//            FieldByName('Split').AsString := '*';
//          Post;
//          Next;
//        end; // while

        RMDBDataSet1.DataSet := ClientDataSet_Temp;
      end; // with
      with ClientDataSet_IDO1_Temp do
      begin
        Close;
        Params.Clear;
        CommandText := 'select a.Site,a.rq,a.shr,a.jlr,a.bm,a.bh from ido1 a ';
        Open;
      end; // with
      RMDBDataSet2.DataSet := ClientDataSet_IDO1_Temp;
      //      OnGetValue := GetValue_IDO;
      ShowReport;
    end; // with
    //ClientDataSet1.GotoBookmark(SavePlace);
  finally
    //ClientDataSet1.FreeBookmark(SavePlace);
    Screen.Cursor := crDefault;
    ClientDataSet1.EnableControls;
  end;
end;

procedure TfrmMain.cxGrid1DBTableView1StatusGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AInt: Integer;
begin
  inherited;
  AInt := StrToIntDef(AText, -1);
  case TbcStatus(AInt) of //
    bcsNew: AText := FsNew;
    bcsToSystem21: AText := FsSystem21;
    bcsToHandHeld: AText := FsToHandHeld;
    bcsFromHandHeld: AText := FsFromHandHeld;
    bcsIDOCompleted: AText := FIDOCompleted;
  else
    AText := FUnKnown;
  end; // case
end;

procedure TfrmMain.btnUpdateCountClick(Sender: TObject);
begin
  inherited;
  //  if (Application.MessageBox(PChar(GetLanguagesStr(26, 'Are you sure to Update Qty?', True)),
  //    PChar(GetLanguagesStr(5, 'Tips', True)), MB_YESNO + MB_ICONInformation) = IDNO) then exit;
  //
  //  if not (ClientDataSet1.State in [dsInsert, dsEdit]) then ClientDataSet1.Edit;
  //  ClientDataSet1.FieldByName('ISSUE_QTY').AsFloat := edtUpdateQty.EditValue;
  //  ClientDataSet1.Post;
  //  //if ClientDataSet1.ApplyUpdates(-1) > 0 then DoApplyUpdateData();
  //
  //  Application.MessageBox(PChar('[' + GetLanguagesStr(22, 'Update Qty') + '] ' + GetLanguagesStr(20, 'Finish', True)),
  //    PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation)
end;

procedure TfrmMain.DoAppend;
var
  AIDO: string;
begin
  screen.cursor := crHourglass;
  with clientdataset_ido1 do
  begin
    AfterScroll := nil;
    AfterPost := nil;
    try
      if state in [dsEdit, dsInsert] then
      begin
        post;
        DoApplyUpdateData_IDO1(FIDO1_State);
      end;
      if clientdataset_ido2.state in [dsEdit, dsInsert] then clientdataset_ido2.post;

      AIDO := GetMaxIDO;
      Append;
      fieldbyname('cono').value := uppercase(cxTextEdit1.text);
      fieldbyname('bh').value := AIDO;
      fieldbyname('rq').value := date;
      fieldbyname('sj').value := Now;
      fieldbyname('site').value := site;
      fieldbyname('jlr').value := UID;
      fieldbyname('ydc').value := False;
      //fieldbyname('St').value := site;
      post;
      DoApplyUpdateData_IDO1(FIDO1_State);
    finally
      AfterPost := ClientDataSet_ido1AfterPost;
      AfterScroll := ClientDataSet_ido1AfterScroll;
      ClientDataSet_ido1AfterScroll(ClientDataSet_ido1);
      screen.cursor := crDefault;
    end;
  end; // with
end;

function TfrmMain.GetMaxIDO: string;
var
  AIDO: Integer;
  sIDO: string;
begin //IDO-0000021
  with ClientDataSet_IDO1_Temp do
  begin
    close;
    params.clear;
    commandtext := 'exec sp_GetMaxIDO'; //'select IDO from ido_max';
    open;
    AIDO := FieldByName('FID').AsInteger;
    //sIDO := Copy(Trim(FieldByName('IDO').AsString), 5, MaxInt);
    //AIDO := StrToIntDef(sIDO, 0) + 1;
    result := 'IDO-' + FormatFloat('0000000', AIDO);
  end;
end;

procedure TfrmMain.DoApplyUpdateData_IDO1(bInsert: boolean);
var
  //  bInsert: boolean;
  bm, AShr, Bm1, Bmscx, Mem, ASQL: string;
  cono, bh, Prjno, Worder, sopno: string;
  ydc: integer;
begin

  Bm1 := ClientDataSet_ido1.FieldByName('Bm1').AsString;
  Bm := ClientDataSet_ido1.FieldByName('Bm').AsString;
  AShr := ClientDataSet_ido1.FieldByName('Shr').AsString;
  Bmscx := ClientDataSet_ido1.FieldByName('Bmscx').AsString;
  Mem := ClientDataSet_ido1.FieldByName('Mem').AsString;

  cono := ClientDataSet_ido1.FieldByName('cono').AsString;
  Prjno := ClientDataSet_ido1.FieldByName('Prjno').AsString;
  Worder := ClientDataSet_ido1.FieldByName('Worder').AsString;
  sopno := ClientDataSet_ido1.FieldByName('sopno').AsString;
  ydc := Ord(ClientDataSet_ido1.FieldByName('ydc').AsBoolean);
  bh := ClientDataSet_ido1.FieldByName('bh').AsString;
  //  if ClientDataSet_ido1.ApplyUpdates(-1) = 0 then exit;
  //   ClientDataSet_ido1.CancelUpdates;
  if bInsert then
  begin
    with ClientDataSet_Temp do
    begin
      Close;
      params.clear;
      params.createparam(ftString, 'cono', ptinput);
      params.createparam(ftString, 'bh', ptinput);
      params.createparam(ftDate, 'rq', ptinput);
      params.createparam(ftDateTime, 'sj', ptinput);
      params.createparam(ftString, 'site', ptinput);
      params.createparam(ftString, 'jlr', ptinput);
      params.createparam(ftBoolean, 'ydc', ptinput);
      CommandText := ' Insert into  IDO1(cono,bh,rq,sj,site,jlr,ydc) values(:cono,:bh,:rq,:sj,:site,:jlr,:ydc)';
      Params.ParamByName('cono').AsString := ClientDataSet_ido1.FieldByName('cono').AsString;
      Params.ParamByName('bh').AsString := ClientDataSet_ido1.FieldByName('bh').AsString;
      Params.ParamByName('rq').AsDate := ClientDataSet_ido1.FieldByName('rq').AsDateTime;
      Params.ParamByName('sj').AsDateTime := ClientDataSet_ido1.FieldByName('sj').AsDateTime;
      Params.ParamByName('site').AsString := ClientDataSet_ido1.FieldByName('site').AsString;
      Params.ParamByName('jlr').AsString := ClientDataSet_ido1.FieldByName('jlr').AsString;
      Params.ParamByName('ydc').AsBoolean := ClientDataSet_ido1.FieldByName('ydc').AsBoolean;
      Execute;

      //Close;
      //Params.clear;
      //CommandText := 'Update ido_max Set IDO=' + QuotedStr(ClientDataSet_ido1.FieldByName('bh').AsString);
      //Execute;
    end; // with
  end
  else
  begin
    with ClientDataSet_IDO1_Temp do
    begin

      Close;
      params.clear; {
      params.createparam(ftString, 'cono', ptinput);
      params.createparam(ftString, 'Prjno', ptinput);
      params.createparam(ftString, 'Worder', ptinput);
      params.createparam(ftString, 'sopno', ptinput);
      //        params.createparam(ftString, 'Jlr', ptinput);
      //params.createparam(ftString, 'Bm', ptinput);
      //params.createparam(ftString, 'Shr', ptinput);
      //params.createparam(ftString, 'Bmscx', ptinput);
      //params.createparam(ftString, 'Mem', ptinput);
      params.createparam(ftBoolean, 'ydc', ptinput);
      params.createparam(ftString, 'bh', ptinput);  }
      ASQL := 'Update IDO1 set';
      ASQL := ASQL + ' cono=' + QuotedStr(cono) + ',Prjno=' + QuotedStr(Prjno) + ',Worder=' + QuotedStr(Worder) + ',sopno=' + QuotedStr(sopno) + ',';
      ASQL := ASQL + 'Bm=' + QuotedStr(Bm) + ',Shr=' + QuotedStr(AShr) + ',Bmscx=' + QuotedStr(Bmscx) + ',Mem=' + QuotedStr(Mem)
        + ',ydc=' + IntToStr(ydc) + ',Bm1=' + QuotedStr(Bm1);
      ASQL := ASQL + ' where bh=' + QuotedStr(bh);
      //ASQL := 'Update IDO1 set';
      //ASQL := ASQL + ' cono=:cono,Prjno=:Prjno,Worder=:Worder,sopno=:sopno,';
      //ASQL := ASQL + 'Bm=' + QuotedStr(Bm) + ',Shr=' + QuotedStr(AShr) + ',Bmscx=' + QuotedStr(Bmscx) + ',Mem=' + QuotedStr(Mem) + ',ydc=:ydc,Bm1=' + QuotedStr(Bm1);
      //ASQL := ASQL + ' where bh=:bh';

      CommandText := ASQL; {
      Params.ParamByName('cono').AsString := ClientDataSet_ido1.FieldByName('cono').AsString;
      Params.ParamByName('Prjno').AsString := ClientDataSet_ido1.FieldByName('Prjno').AsString;
      Params.ParamByName('Worder').AsString := ClientDataSet_ido1.FieldByName('Worder').AsString;
      Params.ParamByName('sopno').AsString := ClientDataSet_ido1.FieldByName('sopno').AsString;
      Params.ParamByName('ydc').AsBoolean := ClientDataSet_ido1.FieldByName('ydc').AsBoolean;
      Params.ParamByName('bh').AsString := ClientDataSet_ido1.FieldByName('bh').AsString; }
      Execute;
    end; // with
  end;
  //  end;
end;

procedure TfrmMain.DoApplyUpdateData_IDO2(bInsert: boolean);
begin
  //if (ClientDataSet_ido2.ApplyUpdates(-1) = 0) then exit;
  with ClientDataSet_Temp do
  begin
    if not bInsert then
    begin
      close;
      params.clear;
      params.createparam(ftfloat, 'qty', ptinput);
      params.createparam(ftInteger, 'Status', ptinput);
      params.createparam(ftString, 'bh', ptinput);
      params.createparam(ftString, 'idno', ptinput);
      params.createparam(ftString, 'PHISM', ptinput);
      params.createparam(ftString, 'zdh', ptinput);
      commandtext := 'update ido2 set qty=:qty,Status=:Status,PHISM=:PHISM where bh=:bh and idno=:idno and zdh=:zdh';
      if not ClientDataSet_ido2.fieldbyname('qty').isnull then
        params[0].asfloat := ClientDataSet_ido2.fieldbyname('qty').value
      else
        params[0].asfloat := 0;
      params[1].asInteger := ClientDataSet_ido2.fieldbyname('Status').value;
      params[2].asstring := ClientDataSet_ido2.fieldbyname('PHISM').asstring;
      params[3].asstring := ClientDataSet_ido2.fieldbyname('bh').value;
      params[4].asstring := ClientDataSet_ido2.fieldbyname('idno').value;
      params[5].asstring := ClientDataSet_ido2.fieldbyname('zdh').value;

      execute;
    end
    else
    begin
      close;
      params.clear;
      params.createparam(ftString, 'bh', ptinput);
      params.createparam(ftinteger, 'oper', ptinput);
      params.createparam(ftString, 'idno', ptinput);
      params.createparam(ftString, 'zdh', ptinput);
      params.createparam(ftString, 'wl', ptinput);
      params.createparam(ftString, 'sh', ptinput);
      params.createparam(ftString, 'sz', ptinput);
      params.createparam(ftString, 'qaresult', ptinput);
      params.createparam(ftfloat, 'cd', ptinput);
      params.createparam(ftString, 'ufd', ptinput);
      params.createparam(ftString, 'mfd', ptinput);
      params.createparam(ftfloat, 'qty', ptinput);
      params.createparam(ftString, 'uom', ptinput);
      params.createparam(ftString, 'wz', ptinput);
      params.createparam(ftString, 'opdesc', ptinput);
      params.createparam(ftfloat, 'aqty', ptinput);
      params.createparam(ftString, 'StockRoom', ptinput);
      params.createparam(ftInteger, 'Status', ptinput);
      commandtext := 'insert into ido2(bh,oper,idno,zdh,wl,sh,sz,qaresult,cd,ufd,mfd,qty,uom,wz,opdesc,aqty,StockRoom,Status) '
        + 'values(:bh,:oper,:idno,:zdh,:wl,:sh,:sz,:qaresult,:cd,:ufd,:mfd,:qty,:uom,:wz,:opdesc,:aqty,:StockRoom,:Status)';
      params[0].asstring := ClientDataSet_ido2.fieldbyname('bh').value;
      params[1].asinteger := ClientDataSet_ido2.fieldbyname('oper').value;
      params[2].asstring := ClientDataSet_ido2.fieldbyname('idno').value;
      params[3].asstring := ClientDataSet_ido2.fieldbyname('zdh').value;
      params[4].asstring := ClientDataSet_ido2.fieldbyname('wl').value;
      params[5].asstring := ClientDataSet_ido2.fieldbyname('sh').value;
      params[6].asstring := ClientDataSet_ido2.fieldbyname('sz').value;
      params[7].asstring := ClientDataSet_ido2.fieldbyname('qaresult').value;
      params[8].asfloat := ClientDataSet_ido2.fieldbyname('cd').value;
      params[9].asstring := ClientDataSet_ido2.fieldbyname('ufd').value;
      params[10].asstring := ClientDataSet_ido2.fieldbyname('mfd').value;
      params[11].asfloat := ClientDataSet_ido2.fieldbyname('qty').value;
      params[12].asstring := ClientDataSet_ido2.fieldbyname('uom').value;
      params[13].asstring := ClientDataSet_ido2.fieldbyname('wz').value;
      params[14].asstring := ClientDataSet_ido2.fieldbyname('opdesc').value;
      params[15].asfloat := ClientDataSet_ido2.fieldbyname('aqty').value;
      params[16].asstring := ClientDataSet_ido2.fieldbyname('StockRoom').value;
      params[17].asInteger := ClientDataSet_ido2.fieldbyname('Status').value;
      execute;
    end;
  end;
end;

type
  TXXXcxCustomEdit = class(TcxCustomEdit)
  end;

procedure TfrmMain.UpdateDBState(Sender: TObject);
  procedure SetcxEditReadOnly(cxEdit: TcxCustomEdit; bReadOnly: boolean);
  begin
    TcxCustomEditProperties(TXXXcxCustomEdit(cxEdit).Properties).ReadOnly := bReadOnly;
    if bReadOnly then
      cxEdit.Style.Color := clInfoBk
    else
      cxEdit.Style.Color := clWindow;
  end;

var
  AYDC, bHasIDO2Confirm: boolean;
begin
  //  if ClientDataSet_IDO1.state in [dsEdit, dsInsert] then ClientDataSet_IDO1.post;
  //  if ClientDataSet_IDO2.state in [dsEdit, dsInsert] then ClientDataSet_IDO2.post;
  with ClientDataSet_ido1 do
  begin
    if assigned(Sender) then
    begin
      case TControl(Sender).Tag of //
        0: First;
        1: Prior;
        2: Next;
        3: Last;
        //        4: Cancel;
        //        5: Post;
        6:
          begin
            if not CheckUserRight(cUrAdd, TButton(Sender).Caption, FIDOUserRight) then exit;
            DoAppend;
          end;
      end; // case
    end
    else
    begin
      AYDC := fieldbyname('ydc').AsBoolean;
      bHasIDO2Confirm := CheckIDO2HasConfirmRecord(fieldbyname('bh').asstring);

      //    SetcxEditReadOnly(cxDBTextEdit2, AYDC);
      SetcxEditReadOnly(cxDBTextEdit3, AYDC);
      SetcxEditReadOnly(cxDBTextEdit4, AYDC);
      SetcxEditReadOnly(cxDBTextEdit6, AYDC);
      SetcxEditReadOnly(cxDBTextEdit7, AYDC);
      SetcxEditReadOnly(cxDBTextEdit8, AYDC);
      SetcxEditReadOnly(cxDBTextEdit9, AYDC);
      SetcxEditReadOnly(cxDBLookupComboBox1, AYDC);
      SetcxEditReadOnly(cxDBMemo1, AYDC);

      SetcxEditReadOnly(cxTextEdit_cono, AYDC or ((not AYDC) and (bHasIDO2Confirm)));
      SetcxEditReadOnly(cxTextEdit_prjno, AYDC or ((not AYDC) and (bHasIDO2Confirm)));
      SetcxEditReadOnly(cxTextEdit_worder, AYDC or ((not AYDC) and (bHasIDO2Confirm)));

      btnSelectMaterial.Enabled := not AYDC;
      btnAffirm.Enabled := not AYDC;
      //btnPrint.Enabled :=  AYDC;
      btnDeleteIDO.Enabled := (not AYDC) and (not bHasIDO2Confirm);
      //    btnDeleteIDODetail.Enabled := not AYDC;
      //    cxGrid2DBTableView1Qty.Options.Editing := not AYDC;

      //    if AYDC then
      //      cxGrid2DBTableView1Qty.Styles.Content := cxStyle6
      //    else
      //      cxGrid2DBTableView1Qty.Styles.Content := cxStyle4;

      btnFirst.Enabled := not Bof;
      btnPrior.Enabled := not Bof;
      btnNext.Enabled := not Eof;
      btnLast.Enabled := not Eof;
      btnAdd.Enabled := not (State in [dsInsert, dsEdit]);
      //    btnCancel.Enabled := (State in [dsInsert, dsEdit]);
      //    btnSave.Enabled := State in [dsInsert, dsEdit];
    end;
  end; // with
end;

procedure TfrmMain.ClientDataSet_ido1AfterDelete(DataSet: TDataSet);
begin
  inherited;
  // UpdateDBState(nil);
end;

procedure TfrmMain.ClientDataSet_ido1AfterCancel(DataSet: TDataSet);
begin
  inherited;
  UpdateDBState(nil);
end;

procedure TfrmMain.ClientDataSet_ido1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  //UpdateDBState(nil);
end;

procedure TfrmMain.cxLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    btnLocateClick(nil);
  end;
end;

procedure TfrmMain.btnSelectMaterialClick(Sender: TObject);
var
  ACONO, AProjectNo, AWorder: string;
  //  bIgnoreDecimal:boolean;
begin
  inherited;
  if not CheckUserRight(cUrSelectMaterial, TButton(Sender).Caption, FIDOUserRight) then exit;

  FSelectMaterial := True;
  try
    ACONO := Trim(cxTextEdit_cono.Text);
    AProjectNo := Trim(cxTextEdit_prjno.Text);
    AWorder := Trim(cxTextEdit_worder.Text);
    //bIgnoreDecimal :=  ClientDataSet_ido1.fieldbyname('bm1').AsString<>FBanFang;
    if (AProjectNo <> '') or (AWorder <> '') then
    begin
      DoSelectMaterial(ACONO, AProjectNo, AWorder, (urAdmin in FIDOUserRight));//not btnDeleteIDO.Enabled
    end
    else
    begin
      Application.MessageBox(PChar(GetLanguagesStr(62, 'Please Enter Project No. or Worder!')),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);

      //    application.MessageBox('请输入工程号或制单号!', 'IDO 提示信息', mb_iconinformation + mb_ok);
      cxTextEdit_prjno.setfocus;
    end;
  finally // wrap up
    FSelectMaterial := False;
  end; // try/finally
end;

function TfrmMain.CheckCanComfirm(IDO: string; var worder: string): boolean;
var
  cono: string;
begin
  with ClientDataSet_Temp2 do
  begin
    Close;
    Params.Clear;
    CommandText := 'select distinct b.zdh,a.cono from ido1 a, ido2 b where a.bh=b.bh and a.bh=' + QuotedStr(IDO)
      + ' and b.Status<>' + IntToStr(Ord(bcsIDOAffirm));
    Open;
    First;
    while not eof do
    begin
      Worder := FieldByName('zdh').AsString;
      cono := FieldByName('cono').AsString;
      result := WorderStatusIsRelease(cono, Worder);
      if not result then exit;
      Next;
    end;
  end;
end;

function TfrmMain.WorderStatusIsRelease(cono, Worder: string): boolean;
begin
  with ADOQuery4 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select WSTA40 from ault5f1.msp40 where cono40=' + QuotedStr(cono) + ' and word40=' + QuotedStr(Worder));
    Open;
    result := FieldByName('WSTA40').AsString >= '3';
  end;
end;

procedure TfrmMain.btnAffirmClick(Sender: TObject);
var
  //  SOP, PROJECT_NO, IDO, WORK_ORDER, LOT_ID, GATEPASS: string;
  //  UOM, ITEM_CODE, COMPANY, StockRoom,
  BH, worder: string;
  //  ISSUE_QTY: Double;
begin
  inherited;
  //1.User Right
  if not CheckUserRight(cUrConfirm, TButton(Sender).Caption, FIDOUserRight) then exit;

  if Application.MessageBox(PChar(GetLanguagesStr(78, 'Are you sure to Confirm this IDO?')),
    PChar(GetLanguagesStr(5, 'Tips', True)), MB_YESNO + MB_ICONInformation) = IDNO then exit;

  screen.cursor := crSQLWait;
  try
    //2. Consignee Dept. Can not Empty
    if ClientDataSet_IDO1.fieldbyname('bm1').isnull then
    begin
      Application.MessageBox(PChar(GetLanguagesStr(63, 'Consignee Dept. Can not Empty!')),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
      cxDBLookupComboBox1.setfocus;
    end
    else
    begin
      //3.if Modified,then post
      if ClientDataSet_IDO1.state in [dsEdit, dsInsert] then
        ClientDataSet_IDO1.post;
      if ClientDataSet_IDO2.state in [dsEdit, dsInsert] then
        ClientDataSet_IDO2.POST;

      if not ClientDataSet_IDO1.fieldbyname('ydc').AsBoolean then
      begin
        BH := ClientDataSet_IDO1.fieldbyname('bh').AsString;
        //If worder not release, can not comfirmed
        if not CheckCanComfirm(BH, worder) then
        begin
          Application.MessageBox(PChar(GetLanguagesStr(49, 'WorkOrder') + ' [' + worder + '] ' + GetLanguagesStr(85, 'not', true) + ' release, ' + GetLanguagesStr(86, 'cannot confirm.', true)),
            PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
          exit;
        end;

        if ClientDataSet_IDO2.recordcount > 0 then
        begin
          //          btnSelectMaterial.enabled := false;
          //          btnAffirm.enabled := false;

          ClientDataSet_IDO1.AfterPost := nil;
          ClientDataSet_IDO2.AfterPost := nil;
          ClientDataSet_ido1.AfterScroll := nil;
          ClientDataSet_ido2.AfterScroll := nil;
          ClientDataSet_IDO1.DisableControls;
          ClientDataSet_IDO2.DisableControls;
          try
            //4.invoke SQLserver2000 procedure to update data really
            with ClientDataSet_Temp2 do
            begin
              Close;
              Params.Clear;
              Params.CreateParam(ftString, '@IDO', ptInput);
              Params.CreateParam(ftString, '@UID', ptInput);
              Params.CreateParam(ftInteger, '@Status_Issue', ptInput);
              Params.CreateParam(ftInteger, '@Status_ido2', ptInput);
              Params.CreateParam(ftBoolean, '@ydc', ptInput);
              Params.CreateParam(ftInteger, '@State', ptOutput);
              CommandText := 'exec sp_pb_IDOConfirm :@IDO,:@UID,:@Status_Issue,:@Status_ido2,:@ydc,:@State';
              Params.ParamByName('@IDO').AsString := BH;
              Params.ParamByName('@UID').AsString := UID;
              Params.ParamByName('@Status_Issue').AsInteger := Ord(bcsNew);
              Params.ParamByName('@Status_ido2').AsInteger := Ord(bcsIDOAffirm);
              Params.ParamByName('@ydc').AsBoolean := True;
              Params.ParamByName('@State').AsInteger := -1;
              Execute;
              if Params.ParamByName('@State').AsInteger <> 0 then
              begin
                Application.MessageBox(PChar(GetLanguagesStr(79, 'IDO Confirm Fail!')),
                  PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
                exit;
              end;
            end; // with

            FilterIssueData(BH);
            //5.change ido2 status
            with ClientDataSet_IDO2 do
            begin
              First;
              while not eof do
              begin
                if FieldByName('Status').AsInteger <> Ord(bcsIDOAffirm) then
                begin
                  Edit;
                  FieldByName('Status').AsInteger := Ord(bcsIDOAffirm);
                  Post;
                  { UpdateIDOs2AS400(
                     ClientDataSet_IDO1.FieldByName('CONO').AsString,
                     ClientDataSet_IDO1.FieldByName('BH').AsString,
                     ClientDataSet_IDO2.FieldByName('Idno').AsString,
                     ClientDataSet_IDO2.FieldByName('Zdh').AsString,
                     'A');  }
                end;
                Next;
              end; // while
            end; // with
            //6.set ido1 ydc is true
            with ClientDataSet_IDO1 do
            begin
              if not (state in [dsEdit, dsInsert]) then
                Edit;
              fieldbyname('ydc').AsBoolean := True;
              Post;
            end; // with

          finally // wrap up
            ClientDataSet_IDO1.AfterPost := ClientDataSet_IDO1AfterPost;
            ClientDataSet_IDO2.AfterPost := ClientDataSet_IDO2AfterPost;
            ClientDataSet_ido1.AfterScroll := ClientDataSet_ido1AfterScroll;
            ClientDataSet_ido2.AfterScroll := ClientDataSet_ido2AfterScroll;
            ClientDataSet_IDO1.EnableControls;
            ClientDataSet_IDO2.EnableControls;
            ClientDataSet_ido2AfterScroll(ClientDataSet_ido2);
            UpdateDBState(nil);
          end; // try/finally

          Application.MessageBox(PChar(GetLanguagesStr(64, 'IDO Confirmed Success!')),
            PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
        end
        else
        begin
          Application.MessageBox(PChar(GetLanguagesStr(65, 'Must Have IDO Detail!')),
            PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
        end;
      end
      else
      begin
        Application.MessageBox(PChar(GetLanguagesStr(66, 'IDO Has Confirmed !')),
          PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
      end;
    end;
  finally
    screen.cursor := crDefault;
  end;
end;

procedure TfrmMain.btnDeleteIDOClick(Sender: TObject);
begin
  inherited;
  if not CheckUserRight(cUrDeleteIDO, TButton(Sender).Caption, FIDOUserRight) then exit;

  if ClientDataSet_IDO1.state in [dsEdit, dsInsert] then
  begin
    ClientDataSet_IDO1.post;
    //DoApplyUpdateData_IDO1(False);
  end;
  if ClientDataSet_IDO2.state in [dsEdit, dsInsert] then ClientDataSet_IDO2.post;
  if ClientDataSet_IDO1.recordcount = 0 then exit;
  //  if application.messagebox('要删除此IDO吗?', 'IDO 提示信息', mb_iconquestion + mb_okcancel) = idCancel then exit;
  if Application.MessageBox(PChar(GetLanguagesStr(67, 'Sure to delete this IDO record?')),
    PChar(GetLanguagesStr(9, 'Question', True)), MB_YESNO + MB_ICONInformation) = idNO then exit;
  with ClientDataSet_IDO2_Temp do
  begin
    close;
    params.clear;
    params.createparam(ftString, 'bh', ptinput);
    commandtext := 'delete from ido2 where bh=:bh';
    params[0].asstring := ClientDataSet_IDO1.fieldbyname('bh').value;
    execute;
  end;
  with ClientDataSet_IDO2 do
  begin
    first;
    while not eof do
    begin
      UpdateIDOs2AS400(
        ClientDataSet_IDO1.FieldByName('CONO').AsString,
        ClientDataSet_IDO1.FieldByName('BH').AsString,
        ClientDataSet_IDO2.FieldByName('Idno').AsString,
        ClientDataSet_IDO2.FieldByName('Zdh').AsString,
        'D');
      next;
    end;
  end;
  //  begin
  with ClientDataSet_IDO1_Temp do
  begin
    close;
    params.clear;
    params.createparam(ftString, 'bh', ptinput);
    commandtext := 'delete from ido1 where bh=:bh';
    params[0].asstring := ClientDataSet_IDO1.fieldbyname('bh').value;
    execute;
  end;
  try
    ClientDataSet_IDO1.delete;
  except
  end; // try/except
  //  end; //=0
end;

procedure TfrmMain.btnDeleteIDODetailClick(Sender: TObject);
begin
  inherited;
  if not CheckUserRight(cUrDeleteIDODetail, TButton(Sender).Caption, FIDOUserRight) then exit;
  if ClientDataSet_IDO2.recordcount > 0 then
  begin
    if Application.MessageBox(PChar(GetLanguagesStr(68, 'Sure to delete this IDO Detail record?')),
      PChar(GetLanguagesStr(9, 'Question', True)), MB_YESNO + MB_ICONInformation) = idYES then
      //    if application.messagebox('要删除此物料吗?', 'IDO 提示信息', mb_iconquestion + mb_okcancel) = idok then
    begin
      with ClientDataSet_IDO2_Temp do
      begin
        close;
        params.clear;
        params.createparam(ftString, 'bh', ptinput);
        params.createparam(ftString, 'idno', ptinput);
        params.createparam(ftString, 'Zdh', ptinput);
        params.createparam(ftString, 'wl', ptinput);
        commandtext := 'delete from ido2 where bh=:bh  and idno=:idno and Zdh=:Zdh and wl=:wl';
        params[0].asstring := ClientDataSet_IDO2.fieldbyname('bh').value;
        params[1].asstring := ClientDataSet_IDO2.fieldbyname('idno').value;
        params[2].asstring := ClientDataSet_IDO2.fieldbyname('Zdh').value;
        params[3].asstring := ClientDataSet_IDO2.fieldbyname('wl').value;
        execute;
      end;
      try
        UpdateIDOs2AS400(
          ClientDataSet_IDO1.FieldByName('CONO').AsString,
          ClientDataSet_IDO1.FieldByName('BH').AsString,
          ClientDataSet_IDO2.FieldByName('Idno').AsString,
          ClientDataSet_IDO2.FieldByName('Zdh').AsString,
          'D');

        ClientDataSet_IDO2.delete;
      except
      end; // try/except
    end;
  end;
end;

procedure TfrmMain.btnPrintClick(Sender: TObject);
var
  //  vParam: Variant;
  aCURR_QTY, IssueQty: Double;
  LOT_ID, ItemCode, CompanyNo, StockRoom: string;
  bHaveCurrQty: boolean;
begin
  inherited;
  if not CheckUserRight(cUrReport, TButton(Sender).Caption, FIDOUserRight) then exit;
  //if not (ClientDataSet_ido1.FieldByName('YDC').AsBoolean) then
  //begin
  //  Application.MessageBox(PChar('this IDO has not been confirmed,cannot print report.'),
  //    PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
  //  exit;
  //end;

  if ClientDataSet_IDO1.IsEmpty then
  begin
    Application.MessageBox(PChar(GetLanguagesStr(44, 'No Data', True)),
      PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
    exit;
  end;
  if ClientDataSet_IDO1.state in [dsEdit, dsInsert] then
  begin
    ClientDataSet_IDO1.post;
    //DoApplyUpdateData_IDO1(False);
  end;
  if ClientDataSet_IDO2.state in [dsEdit, dsInsert] then ClientDataSet_IDO2.post;
  with ClientDataSet_Temp2 do
  begin
    Screen.Cursor := crHourGlass;
    try
      close;
      params.clear;
      params.createparam(ftString, 'bh', ptinput); //ISSUE_QTY as CurQty,Stockroom as Split,
      commandtext := 'select a.*,b.*,a.cono as COMPANY,b.idno as LOT_ID,Qty as CurQty,Stockroom as Split,b.wl as ITEM_CODE'
        + '  from ido1 a,ido2 b where b.bh=a.bh and a.bh=:bh order by b.wl,b.oper,b.idno';
      params[0].asstring := ClientDataSet_IDO1.fieldbyname('bh').asstring;
      open;

      //get the select record's curQty from ERP
      //vParam := GetUpdatedQty(ClientDataSet_Temp2, RecordCount);
      bHaveCurrQty := GetNewUpdatedQty();
      First;
      while not Eof do
      begin
        CompanyNo := FieldByName('COMPANY').AsString;
        STOCKROOM := FieldByName('STOCKROOM').AsString;
        LOT_ID := FieldByName('LOT_ID').AsString;
        ItemCode := FieldByName('ITEM_CODE').AsString;
        IssueQty := FieldByName('QTY').AsFloat;
        if bHaveCurrQty then
          aCURR_QTY := GetCurrQtyOfArray(CompanyNo, LOT_ID, ItemCode, STOCKROOM)
        else aCURR_QTY := IssueQty;

        Edit;
        FieldByName('CurQty').AsFloat := aCURR_QTY;
        if IssueQty <> aCURR_QTY then
          FieldByName('Split').AsString := '*'
        else
          FieldByName('Split').Clear;
        Post;
        Next;
      end; // while
    finally
      Screen.Cursor := crDefault;
    end;
  end;

  with RMGridReport1 do
  begin
    //LoadFromFile(ExtractFilePath(Application.ExeName) + 'IDO.rls');
    LoadFromResourceName(hInstance, 'IDO');
    Dictionary.Clear;
    Dictionary.Variables.Insert(0, ' Global');
    Dictionary.Variables['NewRecord'] := FsNew;
    Dictionary.Variables['System21'] := FsSystem21;
    Dictionary.Variables['ToHandHeld'] := FsToHandHeld;
    Dictionary.Variables['FromHandHeld'] := FsFromHandHeld;
    Dictionary.Variables['IDOCompleted'] := FIDOCompleted;
    Dictionary.Variables['FUnKnown'] := FUnKnown;

    Dictionary.Variables.AsString['FReportTitle'] := GetLanguagesStr(70, 'Issue Material Listing Report');
    Dictionary.Variables.AsString['FDate'] := GetLanguagesStr(23, 'Date', True);
    Dictionary.Variables.AsString['FTime'] := GetLanguagesStr(38, 'Time', True);
    Dictionary.Variables.AsString['FPage'] := GetLanguagesStr(47, 'Page', True);
    Dictionary.Variables.AsString['FStatus'] := GetLanguagesStr(12, 'Status', True);
    Dictionary.Variables.AsString['FItemCode'] := GetLanguagesStr(13, 'Item Code', True);
    Dictionary.Variables.AsString['FLotNumber'] := GetLanguagesStr(14, 'Lot Number', True);
    Dictionary.Variables.AsString['FUOM'] := GetLanguagesStr(15, 'UOM', True);
    Dictionary.Variables.AsString['FStockRoom'] := GetLanguagesStr(16, 'Stock Room', True);
    Dictionary.Variables.AsString['FCompany'] := GetLanguagesStr(17, 'Company', True);

    Dictionary.Variables.AsString['FRecorder'] := GetLanguagesStr(36, 'Recorder');
    Dictionary.Variables.AsString['FOpdesc'] := GetLanguagesStr(41, 'Opdesc');
    Dictionary.Variables.AsString['FConsigneeDept'] := GetLanguagesStr(42, 'Consignee Dept.');
    Dictionary.Variables.AsString['FProductLine'] := GetLanguagesStr(44, 'production line');
    Dictionary.Variables.AsString['FOper'] := GetLanguagesStr(47, 'Oper');
    Dictionary.Variables.AsString['FID_No'] := GetLanguagesStr(14, 'LOT Number', True);
    Dictionary.Variables.AsString['FZdh'] := GetLanguagesStr(49, 'Zdh');
    Dictionary.Variables.AsString['FMaterial'] := GetLanguagesStr(50, 'Material');
    Dictionary.Variables.AsString['FSh'] := GetLanguagesStr(52, 'Sh');
    Dictionary.Variables.AsString['FSz'] := GetLanguagesStr(53, 'Sz');
    Dictionary.Variables.AsString['FCD'] := GetLanguagesStr(55, 'CD');
    Dictionary.Variables.AsString['FUfd'] := GetLanguagesStr(56, 'Ufd');
    Dictionary.Variables.AsString['FMfd'] := GetLanguagesStr(57, 'Mfd');
    Dictionary.Variables.AsString['FWz'] := GetLanguagesStr(58, 'Wz');

    Dictionary.Variables.AsString['FSOP'] := GetLanguagesStr(4, 'SOP');
    Dictionary.Variables.AsString['FProjectNo'] := GetLanguagesStr(5, 'PROJECT No.');
    Dictionary.Variables.AsString['FIDONo'] := GetLanguagesStr(6, 'IDO No.');
    Dictionary.Variables.AsString['FWorkOrderNo'] := GetLanguagesStr(7, 'WORK ORDER No.');
    Dictionary.Variables.AsString['FQuantity'] := GetLanguagesStr(9, 'Issue Quantity');
    Dictionary.Variables.AsString['FCurQty'] := GetLanguagesStr(75, 'Current Qty', True);
    Dictionary.Variables.AsString['FGATEPASS'] := GetLanguagesStr(10, 'GATEPASS');
    Dictionary.Variables.AsString['FUserName'] := GetLanguagesStr(30, 'UserName', True);

    Dictionary.Variables.AsString['FConsignee'] := GetLanguagesStr(43, 'Consignee');
    Dictionary.Variables.AsString['FPickingDept'] := GetLanguagesStr(40, 'Picking Dept');
    Dictionary.Variables.AsString['FSite'] := GetLanguagesStr(49, 'Site', True);
    Dictionary.Variables.AsString['FTotal'] := GetLanguagesStr(48, 'Total', True);
    Dictionary.Variables.AsString['FSubTotal'] := GetLanguagesStr(87, 'SubTotal', True);
    Dictionary.Variables.AsString['FLocation'] := GetLanguagesStr(73, 'Location', True);
    Dictionary.Variables.AsString['FPGMN'] := GetLanguagesStr(84, 'Material Type');
    Dictionary.Variables.AsString['FSuppBatch'] := GetLanguagesStr(82, 'Supp Batch', True);

    SetReportCanDesign(RMGridReport1);
    OnGetValue := nil;
    RMDBDataSet1.DataSet := ClientDataSet_Temp2;
    RMDBDataSet2.DataSet := nil;
    ShowReport;
  end;
end;

procedure TfrmMain.btnQueryClick(Sender: TObject);
begin
  inherited;
  if RzPageControl1.ActivePageIndex = 0 then
  begin
    if not CheckUserRight(cUrQuery, TButton(Sender).Caption, FIDOUserRight) then exit;
  end
  else
  begin
    if not CheckUserRight(cUrQuery, TButton(Sender).Caption, UserRights) then exit;
  end;
  DoIDOQuery(RzPageControl1.ActivePageIndex = 0);
end;

procedure TfrmMain.btnLocateClick(Sender: TObject);
begin
  inherited;
  if cxLookupComboBox1.Text <> '' then
  begin
    ClientDataSet_IDO1.Locate('BH;CONO', VarArrayOf([cxLookupComboBox1.Text, cxTextEdit1.Text]), []);
  end;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if ClientDataSet_IDO1.state in [dsEdit, dsInsert] then
  begin
    ClientDataSet_IDO1.post;
    //DoApplyUpdateData_IDO1(False);
  end;
  if ClientDataSet_IDO2.state in [dsEdit, dsInsert] then ClientDataSet_IDO2.post;
end;

procedure TfrmMain.cxGrid2DBTableView1StatusGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AInt: Integer;
begin
  inherited;
  AInt := StrToIntDef(AText, -1);
  case TbcStatus(AInt) of //
    bcsNew: AText := FsNew;
    bcsToSystem21: AText := FsSystem21;
    bcsToHandHeld: AText := FsToHandHeld;
    bcsFromHandHeld: AText := FsFromHandHeld;
    bcsIDOCompleted: AText := FIDOCompleted;
    bcsProgressed: AText := FProgressed;
    bcsIDOAffirm: AText := FsIDOConfirmed;
  else
    AText := FUnKnown;
  end; // case
end;

procedure TfrmMain.cxLookupComboBox1PropertiesInitPopup(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  try
    with ClientDataSet3 do
    begin
      Close;
      Params.Clear;
      if (urAdmin in FIDOUserRight) or (urBrowseAllIDO in FIDOUserRight) then
        CommandText := 'select distinct Bh from ido1 where cono=' + QuotedStr(UpperCase(cxTextEdit1.Text)) + ' order by bh'
      else
        CommandText := 'select distinct Bh from ido1 where cono=' + QuotedStr(UpperCase(cxTextEdit1.Text)) + 'and jlr=' + QuotedStr(UID) + ' order by bh';

      Open;
    end; // with
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

procedure TfrmMain.cxGrid2DBTableView1COMPANYGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := cxDBTextEdit7.Text;
end;

procedure TfrmMain.cxGrid2DBTableView1CdGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := AText + ' %'
end;

procedure TfrmMain.cxGrid1DBTableView1ISSUED_DATEGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  ADT: TDateTime;
begin
  inherited;
  if AText = '' then exit;
  ADT := StrToDateTimeDef(AText, -700000);
  //  if ADT <> Null then
  AText := FormatDateTime('yyyy''/''mm''/''dd', ADT);
end;

procedure TfrmMain.GetIDOUserRights;
var
  FID: Integer;
begin
  FIDOUserRight := [];
  if (urAdmin in UserRights) then FIDOUserRight := [urAdmin];

  with ClientDataSet_Temp2 do
  begin
    Close;
    params.clear;
    CommandText := 'select b.FID from PB_Power a,PB_ModuleFunc b where a.UID=' + QuotedStr(UID)
      + ' and a.Enable=1 and a.RID=b.RID and b.MID=0';
    Open;
    First;
    while not Eof do
    begin // while 2
      FID := FieldByName('FID').AsInteger;
      FIDOUserRight := FIDOUserRight + [TUserRight(FID)];
      Next;
    end; // while 2
  end; // with
end;

procedure TfrmMain.cxGrid2DBTableView1QtyPropertiesEditValueChanged(
  Sender: TObject);
var
  AQTY, QTY: Real;
begin
  inherited;
  with ClientDataSet_IDO2 do
  begin
    AQTY := FieldByName('AQTY').AsFloat;
    if not VarIsNull(TcxCustomEdit(Sender).EditValue) then
    begin
      QTY := TcxCustomEdit(Sender).EditValue;
      if QTY > AQTY then
      begin
        if not (state in [dsEdit, dsInsert]) then Edit;
        FieldByName('QTY').value := FieldByName('AQTY').value;
      end;
    end
    else
    begin
      if not (state in [dsEdit, dsInsert]) then Edit;
      FieldByName('QTY').value := FieldByName('AQTY').value;
    end;
  end; // with
end;

procedure TfrmMain.ClientDataSet_ido2AfterPost(DataSet: TDataSet);
begin
  inherited;
  DoApplyUpdateData_IDO2(FIDO2_State);
  //btnIDO2Post.Enabled := False;
end;

procedure TfrmMain.ClientDataSet_ido2BeforePost(DataSet: TDataSet);
begin
  inherited;
  FIDO2_State := DataSet.State in [dsInsert];
end;

procedure TfrmMain.ClientDataSet_ido1BeforePost(DataSet: TDataSet);
begin
  inherited;
  FIDO1_State := DataSet.State in [dsInsert];
end;

procedure TfrmMain.ClientDataSet_ido1AfterPost(DataSet: TDataSet);
begin
  inherited;
  DoApplyUpdateData_IDO1(FIDO1_State);
  UpdateDBState(nil);
end;

procedure TfrmMain.cxGrid2DBTableView1StatusGetFilterDisplayText(
  Sender: TcxCustomGridTableItem; const AValue: Variant;
  var ADisplayText: string);
var
  AInt: Integer;
begin
  inherited;
  if VarIsNull(AValue) then exit;

  AInt := AValue;
  case TbcStatus(AInt) of //
    bcsNew: ADisplayText := FsNew;
    bcsToSystem21: ADisplayText := FsSystem21;
    bcsToHandHeld: ADisplayText := FsToHandHeld;
    bcsFromHandHeld: ADisplayText := FsFromHandHeld;
    bcsIDOCompleted: ADisplayText := FIDOCompleted;
    bcsProgressed: ADisplayText := FProgressed;
    bcsIDOAffirm: ADisplayText := FsIDOConfirmed;
  end; // case
end;

procedure TfrmMain.cxGrid1DBTableView1StatusGetFilterDisplayText(
  Sender: TcxCustomGridTableItem; const AValue: Variant;
  var ADisplayText: string);
var
  AInt: Integer;
begin
  inherited;
  if VarIsNull(AValue) then exit;

  AInt := AValue;
  case TbcStatus(AInt) of //
    bcsNew: ADisplayText := FsNew;
    bcsToSystem21: ADisplayText := FsSystem21;
    bcsToHandHeld: ADisplayText := FsToHandHeld;
    bcsFromHandHeld: ADisplayText := FsFromHandHeld;
    bcsIDOCompleted: ADisplayText := FIDOCompleted;
  end; // case
end;

procedure TfrmMain.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  FShowIDOReport := False;
  pnl_select.Left := btnToHandHeld.Left;
  pnl_select.Top := cxGroupBox1.Top;
  cxGrid3DBTableView1bSelect.Visible := False;
  pnl_select.Visible := True;
  pnl_select.Tag := 0;
  //  SetBtnEnable(False);
  Panel7.Visible := False;
  Label15.Caption := '';
  Screen.Cursor := crSQLWait;
  cxGrid3DBTableView1.DataController.DataSource := nil;
  Application.ProcessMessages;
  try
    with ClientDataSet2 do
    begin
      Close;
      Params.Clear;
      CommandText := 'select a.IDO,b.ErpSuccess as bSelect from '
        + ' (select distinct IDO from PB_GATEPASS where COMPANY=''A1'') a Left join (select IDO,ErpSuccess from PB_GATEPASS where 1=2) b'
        + ' on (a.IDO=b.IDO) order by a.IDO';
      Open;
    end; // with
    cxGrid3DBTableView1.DataController.DataSource := DataSource2;
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

procedure TfrmMain.cxButton1Click(Sender: TObject);
var
  AText: string;
begin
  if FShowIDOReport then
  begin
    pnl_select.Visible := False;
    cxGrid3DBTableView1.DataController.DataSource := nil;
    Panel7.Visible := True;
    btnClearAll.Visible := True;
    cxGroupBox5.Visible := True;

    FShowIDOReport := False;
    AText := ClientDataSet2.FieldByName('IDO').AsString;
    WHPrintIDOReport(AText);
  end
  else
  begin
    pnl_select.Visible := False;
    if pnl_select.Tag = 0 then
    begin
      AText := ClientDataSet2.FieldByName('IDO').AsString;
      cxButtonEdit_IDO.Text := AText;
      cxButtonEdit_IDO.SetFocus;

      FilterIssueData(AText);
      //  SetBtnEnable(ClientDataSet1.Active);
    end
    else //if pnl_select.Tag=1 then
    begin
      DoToHandHeld(ClientDataSet2);
    end;
    cxGrid3DBTableView1.DataController.DataSource := nil;
    Panel7.Visible := True;
    btnClearAll.Visible := True;
    cxGroupBox5.Visible := True;
  end;
end;

procedure TfrmMain.cxButton3Click(Sender: TObject);
begin
  FShowIDOReport := False;
  pnl_select.Visible := False;
  if pnl_select.Tag = 0 then
  begin
    if cxButtonEdit_IDO.CanFocus then
      cxButtonEdit_IDO.SetFocus;
  end;
  cxGrid3DBTableView1.DataController.DataSource := nil;
  //  SetBtnEnable(ClientDataSet1.Active);
  Panel7.Visible := True;
  btnClearAll.Visible := True;
  cxGroupBox5.Visible := True;
end;

procedure TfrmMain.cxGrid3DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if FCanDbClick then
  begin
    cxButton1Click(Sender);
  end;
end;

procedure TfrmMain.cxGrid3DBTableView1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  //see help ---Grid View Elements--
  FCanDbClick := (Button = mbLeft) and
    (TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y).HitTestCode in [htCell]); //, htIndicator
end;

procedure TfrmMain.FilterIssueData(AIDO: string);
var
  aSQL, sWhere: string;
begin
  with ClientDataSet1 do
  begin
    Filtered := False;
    Filter := '';
    DisableControls;
    Screen.Cursor := crSQLWait;
    Application.ProcessMessages;
    try
      //1.get sql
      sWhere := bcGetWhereSQL(ClientDataSet1.CommandText, 'IDO', (AIDO));
      //2.show data
      Close;
      aSQL := 'SELECT * FROM PB_GatePass';
      aSQL := aSQL + ' ' + sWhere;
      aSQL := aSQL + ' ORDER BY IDO';
      CommandText := aSQL;
      Open;
    finally // wrap up
      EnableControls;
      Screen.Cursor := crDefault;
    end; // try/finally
  end; // with
end;

//function TfrmMain.GetWhereSQL(DataSet: TClientDataSet;
//  AIDO: string; bGetDistinct: boolean): string;
//var
//  aSQL: string;
//  iPos: Integer;
//  bHasExists: boolean;
//begin
//  aSQL := '';
//  //if DataSet has Open ,then get the SQL
////  if DataSet.Active then
//  begin
//    aSQL := UpperCase(DataSet.CommandText);
//    // whether 'where' is Exists
//    iPos := Pos('WHERE', aSQL);
//    if iPos > 0 then
//    begin
//      aSQL := Trim(Copy(aSQL, iPos, MaxInt));
//        //whether 'Order by' is Exists
//      iPos := Pos('ORDER BY', aSQL);
//      if iPos > 0 then aSQL := Trim(Copy(aSQL, 1, iPos - 1));
//    end
//    else
//      aSQL := '';
//  end;
//  if bGetDistinct then
//  begin
//    if aSQL = '' then
//      aSQL := 'where 1=2';
//    result := aSQL;
//    exit;
//  end;
//  if aSQL = '' then
//    aSQL := 'WHERE (IDO=' + QuotedStr(AIDO) + ')'
//  else
//  begin
//      //whether the new condition is Exists
//    bHasExists := Pos('IDO=' + QuotedStr(AIDO), aSQL) > 0;
//    //if the new condition is not Exists
//    if not bHasExists then
//      aSQL := aSQL + ' OR (IDO=' + QuotedStr(AIDO) + ')';
//  end;
//  result := aSQL;
//end;
//

procedure TfrmMain.cxButtonEdit_IDOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  AIDO: string;
begin
  inherited;
  if (Key = VK_RETURN) and (Shift = []) then
  begin
    AIDO := cxButtonEdit_IDO.Text;
    cxButtonEdit_IDO.Text := '';

    if AIDO = '***' then
      DoShowBtnChangeToYellow()
    else if AIDO = '---' then
      btnClearAllClick(nil)
    else
    begin
      AIDO := GetIDOFullString(AIDO);
      cxButtonEdit_IDO.Text := AIDO;
      FilterIssueData(AIDO);
    end;
  end;
end;

function TfrmMain.GetIDOFullString(AIDO: string): string;
var
  sTemp: string;
begin
  result := AIDO; //IDO-0000026
  sTemp := AIDO;
  if Copy(AIDO, 1, 4) = 'IDO-' then sTemp := Copy(AIDO, 5, MaxInt)
  else if Copy(AIDO, 1, 3) = 'IDO' then sTemp := Copy(AIDO, 4, MaxInt);
  sTemp := '0000000' + sTemp;
  sTemp := Copy(sTemp, Length(sTemp) - 6, 7);
  result := 'IDO-' + sTemp;
end;

procedure TfrmMain.DoShowBtnChangeToYellow();
begin
  cxButtonEdit_IDO.Text := '';
  btnChangToYellow.Visible := not btnChangToYellow.Visible;
end;

procedure TfrmMain.ClientDataSet1AfterOpen(DataSet: TDataSet);
begin
  inherited;
  SetBtnEnable(True);
end;

procedure TfrmMain.ClientDataSet1AfterClose(DataSet: TDataSet);
begin
  inherited;
  SetBtnEnable(False);
end;

procedure TfrmMain.SetBtnEnable(bEnable: boolean);
begin
  btnToHandHeld.Enabled := bEnable;
  btnManualAction.Enabled := bEnable;
  btnUnAction.Enabled := bEnable;
  //  btnFromHandHeld.Enabled := bEnable;
  btnToSystem21.Enabled := bEnable;
  btnDelete.Enabled := bEnable;
  btnReport.Enabled := bEnable;
  btnRefreshUploadtoERPStatus.Enabled := bEnable;
  btnPrintLabel.Enabled := bEnable;
  //btnQueryIssue.Enabled:= bEnable ;
end;

procedure TfrmMain.ClientDataSet_ido2AfterScroll(DataSet: TDataSet);
begin
  inherited;
  btnDeleteIDODetail.Enabled := (not ClientDataSet_ido1.FieldByName('ydc').AsBoolean)
    and (DataSet.FieldByName('status').AsInteger <> Ord(bcsIDOAffirm));
  //cxGrid2DBTableView1Qty.Options.Editing := (not ClientDataSet_ido1.FieldByName('ydc').AsBoolean)
  //  and (DataSet.FieldByName('status').AsInteger <> Ord(bcsIDOAffirm));
end;

procedure TfrmMain.cxGrid1DBTableView1ERPSuccessGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  AText := UpperCase(AText);
  if (AText = 'TRUE') then
    AText := FsToErpSuccess
  else if (AText = 'FALSE') then
    AText := FsToErpFail
  else
    AText := '';
end;

procedure TfrmMain.btnRefreshUploadtoERPStatusClick(Sender: TObject);
var
  ASQL, conoi, wordi, trdti, istri, compi, locni, errfi: string;
  ASQL_Sub, SubLot: string;
  bErpSuccess: boolean;

  procedure _DoIssueErpSuccess;
  var
    DT: Integer;
    TM: string;
    IDO: string;
  begin
    with ClientDataSet1 do
    begin
      Screen.Cursor := crSQLWait;
      DisableControls;
      Filtered := False;
      Filter := 'STATUS=' + IntToStr(Ord(bcsToSystem21)) + ' and (ERPSuccess=0 or ERPSuccess is null)';
      Filtered := True;
      ASQL := '';
      try
        if RecordCount = 0 then exit;

        DT := StrToInt(FormatDateTime('yyyymmdd', Now));
        TM := FormatDateTime('hhnnsszzz', Now);
        InsertToERPTemp_Refresh(ClientDataSet1, DT, TM);

        with ADOQuery1 do
        begin
          //1--update ErpSuccess
          Close;
          SQL.Clear;
          SQL.Add('select a.*,b.IDO from ault4f1.appi3ue a,zphlib_aul.IDOIssueTemp b');
          SQL.Add('where b.dt=' + IntToStr(DT) + ' and b.tm=' + QuotedStr(TM));
          SQL.Add('and b.cono=conoi3 and  b.LOTID=locni3 and b.ItemCode=compi3');
          SQL.Add('and b.StockRoom=istri3 and b.worder=wordi3 and b.FDate=trdti3');
          //Parameters.ParamByName('DT').Value := DT;
          //Parameters.ParamByName('TM').Value := TM;
          Open;
          if RecordCount = 0 then exit;
          First;
          while not Eof do
          begin
            conoi := FieldByName('conoi3').AsString;
            wordi := FieldByName('wordi3').AsString;
            trdti := FieldByName('trdti3').AsString;
            istri := FieldByName('istri3').AsString;
            compi := FieldByName('compi3').AsString;
            locni := FieldByName('locni3').AsString;
            errfi := Trim(FieldByName('errfi3').AsString);
            IDO := FieldByName('IDO').AsString;
            bErpSuccess := StrToIntDef(errfi, 1) = 0; // = '00000000000000000000';
            DoApplyUpdateIssueErpSuccess(conoi, wordi, trdti, istri, compi, locni, IDO, bErpSuccess);
            if bErpSuccess then
              UpdateIDOs2AS400(conoi, IDO, locni, wordi, 'C');

            Next;
          end; // while
        end; // with

      finally // wrap up
        Filtered := False;
        Filter := '';
        Close;
        Open;
        EnableControls;
        Screen.Cursor := crDefault;
      end; // try/finally
    end; // with
  end;
  procedure _DoIssueSubLotNo;
  var
    aCURR_QTY, aIssueQty: Double;
    DT: Integer;
    TM, IDO: string;
  begin
    with ClientDataSet1 do
    begin
      Screen.Cursor := crSQLWait;
      DisableControls;
      Filtered := False;
      Filter := 'ERPSuccess<>0 and (LOT_ID_Sub is null or LOT_ID_Sub='''')';
      Filtered := True;
      ASQL_Sub := '';
      try
        if RecordCount = 0 then exit;

        DT := StrToInt(FormatDateTime('yyyymmdd', Now));
        TM := FormatDateTime('hhnnsszzz', Now);
        InsertToERPTemp_Refresh(ClientDataSet1, DT, TM);

        //2--get Sub Lot No.
        with ADOQuery3 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select a.cono80,a.SDAT80,a.strc80,a.Pnum80,a.locn80,SubStr(a.locn80,1,12) as locn80_1,Max(a.STIM80),b.IDO');
          SQL.Add('from  ault2f1.inp80 a,zphlib_aul.IDOIssueTemp b');
          SQL.Add('where b.dt=' + IntToStr(DT) + ' and b.tm=' + QuotedStr(TM));
          SQL.Add('and b.cono=cono80 and  b.ItemCode=Pnum80');
          SQL.Add('and b.StockRoom=strc80 and b.FDate=SDAT80');
          SQL.Add('and locn80 like substr(b.LOTID,1,12)||''%'' and locn80<>b.LOTID');
          SQL.Add('Group by a.cono80,a.SDAT80,a.strc80,a.Pnum80,a.locn80,SubStr(a.locn80,1,12),b.IDO');
          //Parameters.ParamByName('DT').Value := DT;
          //Parameters.ParamByName('TM').Value := TM;
          Open;
          if RecordCount = 0 then exit;
        end; //with

        with ClientDataSet_Temp do
        begin
          Close;
          Params.Clear;
          CommandText := 'select distinct COMPANY,LOT_ID,LOT_ID_Sub,ITEM_CODE,STOCKROOM from PB_GatePass '
            + bcGetWhereSQL(ClientDataSet1.CommandText, 'IDO', '', True)
            + ' and ERPSuccess=1 and status=' + IntToStr(Ord(bcsToSystem21));
          Open;
        end; // with

        DT := StrToInt(FormatDateTime('yyyymmdd', Now));
        TM := FormatDateTime('hhnnsszzz', Now);
        InsertToERPTemp(ClientDataSet_Temp, DT, TM);
        GetNewUpdatedQty(DT, TM);

        First;
        while not Eof do
        begin
          conoi := bcGetStringstr(FieldByName('COMPANY').AsString, 2);
          wordi := bcGetStringstr(FieldByName('WORK_ORDER').AsString, 7);
          trdti := bcGetDateStr(FieldByName('ISSUED_DATE').AsDateTime);
          istri := bcGetStringstr(FieldByName('Stockroom').AsString, 2);
          compi := bcGetStringstr(FieldByName('ITEM_CODE').AsString, 15);
          locni := bcGetStringstr(FieldByName('LOT_ID').AsString, 15);
          if ADOQuery3.Locate('cono80;SDAT80;strc80;Pnum80;locn80_1',
            VarArrayOf([conoi, trdti, istri, compi, Copy(locni, 1, 12)]), []) then
          begin
            SubLot := ADOQuery3.FieldByName('locn80').AsString;
            aIssueQty := FieldByName('ISSUE_QTY').AsFloat;

            aCURR_QTY := GetCurrQtyOfArray(conoi, locni, compi, istri);
            if (aCURR_QTY > 0) and (aCURR_QTY <> aIssueQty) then
              DoApplyUpdateIssueSubLotNo(conoi, trdti, istri, compi, locni, SubLot);
          end;
          Next;
        end; // while
      finally // wrap up
        Filtered := False;
        Filter := '';
        Close;
        Open;
        EnableControls;
        Screen.Cursor := crDefault;
      end; // try/finally
    end; //with
  end;
begin
  inherited;
  if not CheckUserRight(cUrRefreshUploadToERP, TButton(Sender).Caption, UserRights) then exit;

  _DoIssueErpSuccess;
  _DoIssueSubLotNo;
end;

procedure TfrmMain.DoApplyUpdateIssueErpSuccess(conoi, wordi, trdti, istri, compi, locni, IDO: string; bErpSuccess: boolean);
var
  sDT: string;
begin
  sDT := FormatDateTime('yyyy''-''mm''-''dd', bcGetStrDate(trdti));
  with ClientDataSet_Temp do
  begin
    Close;
    Params.Clear;
    Params.CreateParam(ftString, '@COMPANY', ptInput);
    Params.CreateParam(ftString, '@WORK_ORDER', ptInput);
    Params.CreateParam(ftString, '@DATE', ptInput);
    Params.CreateParam(ftString, '@Stockroom', ptInput);
    Params.CreateParam(ftString, '@ITEM_CODE', ptInput);
    Params.CreateParam(ftString, '@LOT_ID', ptInput);
    Params.CreateParam(ftBoolean, '@ErpSuccess', ptInput);
    Params.CreateParam(ftInteger, '@Type', ptInput);
    Params.CreateParam(ftString, '@IDO', ptInput);
    CommandText := 'exec sp_pb_Update_ErpSuccess :@COMPANY,:@WORK_ORDER,:@DATE,:@Stockroom,:@ITEM_CODE,:@LOT_ID,:@ErpSuccess,:@Type,:@IDO';
    Params.ParamByName('@COMPANY').AsString := conoi;
    Params.ParamByName('@WORK_ORDER').AsString := wordi;
    Params.ParamByName('@DATE').AsString := sDT;
    Params.ParamByName('@Stockroom').AsString := istri;
    Params.ParamByName('@ITEM_CODE').AsString := compi;
    Params.ParamByName('@LOT_ID').AsString := locni;
    Params.ParamByName('@ErpSuccess').AsBoolean := bErpSuccess;
    Params.ParamByName('@Type').AsInteger := 1;
    Params.ParamByName('@IDO').AsString := IDO;
    Execute;
  end; // with
end;

procedure TfrmMain.DoApplyUpdateIssueSubLotNo(conoi, trdti, istri, compi, locni, SubLot: string);
begin
  with ClientDataSet_Temp do
  begin
    Close;
    Params.Clear;
    Params.CreateParam(ftString, '@COMPANY', ptInput);
    Params.CreateParam(ftDateTime, '@DATE', ptInput);
    Params.CreateParam(ftString, '@Stockroom', ptInput);
    Params.CreateParam(ftString, '@ITEM_CODE', ptInput);
    Params.CreateParam(ftString, '@LOT_ID', ptInput);
    Params.CreateParam(ftString, '@LOT_ID_Sub', ptInput);
    CommandText := 'exec sp_pb_Update_IssueSubLotNo :@COMPANY,:@DATE,:@Stockroom,:@ITEM_CODE,:@LOT_ID,:@LOT_ID_Sub';
    Params.ParamByName('@COMPANY').AsString := conoi;
    Params.ParamByName('@DATE').AsDateTime := bcGetStrDate(trdti);
    Params.ParamByName('@Stockroom').AsString := istri;
    Params.ParamByName('@ITEM_CODE').AsString := compi;
    Params.ParamByName('@LOT_ID').AsString := locni;
    Params.ParamByName('@LOT_ID_Sub').AsString := SubLot;
    Execute;
  end; // with
end;

procedure TfrmMain.btnClearAllClick(Sender: TObject);
begin
  inherited;
  ClientDataSet1.Close;
  ClientDataSet1.CommandText := '';
end;

procedure TfrmMain.Panel1Resize(Sender: TObject);
begin
  inherited;
  Panel_ColorTips.Left := TPanel(Sender).Width - Panel_ColorTips.Width - 10;
end;

procedure TfrmMain.RzPageControl1Change(Sender: TObject);
begin
  inherited;
  case TRzPageControl(Sender).ActivePageIndex of //
    0:
      begin
        cxLabel16.Visible := False;
        cxLabel14.Visible := False;
        cxLabel12.Visible := False;
        cxLabel10.Visible := True;
        cxLabel8.Visible := False;
        cxLabel6.Visible := False;
        cxLabel4.Visible := False;
        cxLabel2.Visible := True;
        //        cxLabel18.Visible := True;

        cxLabel1.Visible := True;
        cxLabel3.Visible := False;
        cxLabel5.Visible := False;
        cxLabel7.Visible := False;
        cxLabel9.Visible := True;
        cxLabel11.Visible := False;
        cxLabel13.Visible := False;
        cxLabel15.Visible := False;
        //        cxLabel17.Visible := True;
        btnClearAll.Visible := False;
        //       btnGetPHISM.Visible := True;
        btnIDO2Post.Visible := True;
      end;
    1:
      begin
        cxLabel16.Visible := True;
        cxLabel14.Visible := True;
        cxLabel12.Visible := True;
        cxLabel10.Visible := False;
        cxLabel8.Visible := True;
        cxLabel6.Visible := True;
        cxLabel4.Visible := False;
        cxLabel2.Visible := True;
        //        cxLabel18.Visible := True;

        cxLabel1.Visible := True;
        cxLabel3.Visible := False;
        cxLabel5.Visible := True;
        cxLabel7.Visible := True;
        cxLabel9.Visible := False;
        cxLabel11.Visible := True;
        cxLabel13.Visible := True;
        cxLabel15.Visible := True;
        //        cxLabel17.Visible := True;
        btnClearAll.Visible := True;
        //       btnGetPHISM.Visible := False;
        btnIDO2Post.Visible := False;
      end;
  end; // case

end;

procedure TfrmMain.ClientDataSet_ido2BeforeEdit(DataSet: TDataSet);
begin
  inherited;
  //btnIDO2Post.Enabled := True;
end;

procedure TfrmMain.btnIDO2PostClick(Sender: TObject);
begin
  inherited;
  if clientdataset_ido2.state in [dsEdit, dsInsert] then clientdataset_ido2.post;
  //btnIDO2Post.Enabled := False;
end;

procedure TfrmMain.cxGrid2Exit(Sender: TObject);
begin
  inherited;
  if clientdataset_ido2.state in [dsEdit, dsInsert] then clientdataset_ido2.post;
end;

procedure TfrmMain.btnPrintLabelClick(Sender: TObject);
begin
  inherited;
  if not CheckUserRight(cUrPrintLabel, TButton(Sender).Caption, UserRights) then exit;

  PHPrintLabel;
end;

procedure TfrmMain.PHPrintLabel;
var
  //  vParam: Variant;
  bcPrinter: string;
  SKU, HDONO, CompanyNo, STOCKROOM, Barcode, UOM, SubLot, PGMN, Location, PHISM, ColorShade: string;
  aCURR_QTY, aORIG_QTY, aIssueQty: Double;
  iCopies: Integer;
  bCollateCopies, bHaveCurrQty: boolean;
  DT: Integer;
  TM: string;
begin
  if not DoSelectPrinter(bcPrinter, iCopies, bCollateCopies) then exit;

  with cdsPrintLabel do
  begin
    Close;
    Params.Clear;
    CommandText := 'select * from PB_FINALID where 1=2';
    Open;
  end; // with

  DT := StrToInt(FormatDateTime('yyyymmdd', Now));
  TM := FormatDateTime('hhnnsszzz', Now);

  with ClientDataSet_Temp do
  begin
    Close;
    Params.Clear;
    CommandText := 'select distinct COMPANY,LOT_ID,LOT_ID_Sub,ITEM_CODE,STOCKROOM from PB_GatePass '
      + bcGetWhereSQL(ClientDataSet1.CommandText, 'IDO', '', True)
      + ' and ERPSuccess=1 and status=' + IntToStr(Ord(bcsToSystem21));
    //      CommandText := 'select a.*,b.ISSUE_QTY,b.LOT_ID_Sub,b.Location As Location1,b.PGMN as PGMN1 from PB_FINALID a, '
    //        + ' (select * from PB_GatePass ' + bcGetWhereSQL(ClientDataSet1.CommandText, 'IDO', '', True) + ') b'
    //        + ' where b.Item_Code=a.Item_Code  and b.LOT_ID=a.LOT_ID and b.STOCKROOM=a.STOCKROOM and b.Company=a.Company'
    //        + ' and b.ERPSuccess=1 and b.status=' + IntToStr(Ord(bcsToSystem21));
    Open;
    if RecordCount = 0 then
    begin
      Application.MessageBox(PChar(GetLanguagesStr(44, 'No Data', True)),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
      exit;
    end;
  end; // with

  with ClientDataSet1 do
  begin
    Screen.Cursor := crSQLWait;
    DisableControls();
    try
      InsertToERPTemp(ClientDataSet_Temp, DT, TM);
      //1.get the select record's curQty from ERP
      //vParam := GetUpdatedQty(ClientDataSet_Temp, RecordCount);
      bHaveCurrQty := GetNewUpdatedQty(DT, TM);
      //2.get Value to print label
      First;
      while not Eof do
      begin
        if not ((FieldByName('ERPSuccess').AsBoolean) and (FieldByName('status').AsInteger = Ord(bcsToSystem21))) then
        begin
          Next;
          Continue;
        end;
        HDONO := '';
        aORIG_QTY := 0;
        UOM := bcGetStringStr(FieldByName('UOM').AsString, 2);
        SKU := FieldByName('ITEM_CODE').AsString;
        Barcode := FieldByName('LOT_ID').AsString;
        //HDONO := FieldByName('HDO_NO').AsString;
        CompanyNo := FieldByName('COMPANY').AsString;
        STOCKROOM := FieldByName('STOCKROOM').AsString;
        //ORIG_QTY := FormatFloat('#,##0.000', FieldByName('ORG_QTY').AsFloat);
        if bHaveCurrQty then
        begin
          aCURR_QTY := GetCurrQtyOfArray(CompanyNo, Barcode, SKU, STOCKROOM, HDONO);
          if HDONO <> '' then
          begin
            aORIG_QTY := GetORIGQTYFromFinalLabel(CompanyNo, Barcode, SKU, STOCKROOM, HDONO);
            if aORIG_QTY = 0 then aORIG_QTY := aCURR_QTY;
          end
          else aORIG_QTY := aCURR_QTY;
        end
        else aCURR_QTY := 0;

        //ORIG_QTY := FormatFloat('#,##0.000', aORIG_QTY);
        //CURR_QTY := FormatFloat('#,##0.000', aCURR_QTY);
        SubLot := FieldByName('LOT_ID_Sub').AsString;
        aIssueQty := FieldByName('ISSUE_QTY').AsFloat;
        //IssueQty := FormatFloat('#,##0.000', aIssueQty);
        PGMN := FieldByName('PGMN').AsString;
        Location := FieldByName('Location').AsString;
        PHISM := FieldByName('PHISM').AsString;
        ColorShade := FieldByName('ColorShade').AsString;

        with cdsPrintLabel do
        begin
          if aCURR_QTY <> 0 then
          begin
            Append;
            FieldByName('HDO_NO').AsString := HDONO;
            FieldByName('ITEM_CODE').AsString := SKU;
            FieldByName('LOT_ID').AsString := Barcode;
            FieldByName('ORG_QTY').AsFloat := aORIG_QTY;
            FieldByName('CUR_BAL').AsFloat := aCURR_QTY;
            FieldByName('UOM').AsString := UOM;
            FieldByName('STOCKROOM').AsString := STOCKROOM;
            FieldByName('COMPANY').AsString := CompanyNo;
            FieldByName('NO_OF_ROLLS').AsInteger := 1;
            FieldByName('STATUS').AsInteger := 1;
            FieldByName('RECORD_CREATED_DATE').AsDateTime := Now;
            FieldByName('pgmn').AsString := PGMN;
            FieldByName('Location').AsString := Location;
            FieldByName('PHISM').AsString := PHISM;
            FieldByName('ColorShade').AsString := ColorShade;
            Post;
          end;

          if Trim(SubLot) <> '' then
          begin
            Append;
            FieldByName('HDO_NO').AsString := HDONO;
            FieldByName('ITEM_CODE').AsString := SKU;
            FieldByName('LOT_ID').AsString := SubLot;
            FieldByName('ORG_QTY').AsFloat := aORIG_QTY;
            FieldByName('CUR_BAL').AsFloat := aIssueQty;
            FieldByName('UOM').AsString := UOM;
            FieldByName('STOCKROOM').AsString := STOCKROOM;
            FieldByName('COMPANY').AsString := CompanyNo;
            FieldByName('NO_OF_ROLLS').AsInteger := 1;
            FieldByName('STATUS').AsInteger := 1;
            FieldByName('RECORD_CREATED_DATE').AsDateTime := Now;
            FieldByName('pgmn').AsString := PGMN;
            FieldByName('Location').AsString := Location;
            FieldByName('PHISM').AsString := PHISM;
            FieldByName('ColorShade').AsString := ColorShade;
            Post;
          end;
        end;

        Next;
      end; // while
      //cdsPrintLabel.SaveToFile('C:\temp\label.xml');
      WriteToSocketStream(iCopies, bCollateCopies, bcPrinter, cdsPrintLabel, BarcodePrint);
    finally // wrap up
      Screen.Cursor := crDefault;
      EnableControls();
    end; // try/finally
  end; // with
end;

function TfrmMain.GetORIGQTYFromFinalLabel(CompanyNo, Barcode, SKU, STOCKROOM, HDONO: string): Double;
var
  LOTID: string;
begin
  if (HDONO = '') then
  begin
    result := 0;
    exit;
  end;
  LOTID := Copy(Barcode, 1, 13) + '00';
  with ClientDataSet_Temp do
  begin
    Close;
    Params.Clear;
    Params.CreateParam(ftString, 'HDO_NO', ptInput);
    Params.CreateParam(ftString, 'Item_Code', ptInput);
    Params.CreateParam(ftString, 'LOT_ID', ptInput);
    Params.CreateParam(ftString, 'STOCKROOM', ptInput);
    Params.CreateParam(ftString, 'Company', ptInput);
    CommandText := 'select ORG_QTY from PB_FINALID '
      + ' where HDO_NO=:HDO_NO and Item_Code=:Item_Code  and LOT_ID=:LOT_ID and STOCKROOM=:STOCKROOM and Company=:Company';
    Params.ParamByName('HDO_NO').AsString := HDONO;
    Params.ParamByName('Item_Code').AsString := SKU;
    Params.ParamByName('LOT_ID').AsString := LOTID;
    Params.ParamByName('STOCKROOM').AsString := STOCKROOM;
    Params.ParamByName('Company').AsString := CompanyNo;
    Open;
    result := FieldByName('ORG_QTY').AsFloat;
  end; // with

end;

procedure TfrmMain.InsertToERPTemp(DataSet: TDataSet; DT: Integer; TM: string);
var
  COMPANY, LOT_ID, ITEM_CODE, STOCKROOM: string;
begin
  with DataSet do
  begin
    First;
    while not Eof do
    begin
      COMPANY := DataSet.FieldByName('COMPANY').AsString;
      LOT_ID := DataSet.FieldByName('LOT_ID').AsString;
      ITEM_CODE := DataSet.FieldByName('ITEM_CODE').AsString;
      STOCKROOM := DataSet.FieldByName('STOCKROOM').AsString;

      with ADOQuery2 do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'Call ZPHLIB_AUL.sp_IDOIssueTemp (' + IntToStr(DT) + ',' + QuotedStr(TM) + ',' + QuotedStr(COMPANY)
          + ',' + QuotedStr(LOT_ID) + ',' + QuotedStr(ITEM_CODE) + ',' + QuotedStr(StockRoom) + ')';
        {Parameters.ParamByName('DT').Value := DT;
        Parameters.ParamByName('TM').Value := TM;
        Parameters.ParamByName('CONO').Value := COMPANY;
        Parameters.ParamByName('LOT_ID').Value := LOT_ID;
        Parameters.ParamByName('ItemCode').Value := ITEM_CODE;
        Parameters.ParamByName('StockRoom').Value := STOCKROOM; }
        ExecSQL;
      end; // with

      Next;
    end; // while
  end; // with
end;

procedure TfrmMain.InsertToERPTemp_Refresh(DataSet: TDataSet; DT: Integer; TM: string);
var
  COMPANY, LOT_ID, ITEM_CODE, STOCKROOM, Worder, IDO: string;
  ADate: Integer;
begin
  with DataSet do
  begin
    First;
    while not Eof do
    begin
      COMPANY := DataSet.FieldByName('COMPANY').AsString;
      LOT_ID := DataSet.FieldByName('LOT_ID').AsString;
      ITEM_CODE := DataSet.FieldByName('ITEM_CODE').AsString;
      STOCKROOM := DataSet.FieldByName('STOCKROOM').AsString;
      Worder := DataSet.FieldByName('WORK_ORDER').AsString;
      IDO := DataSet.FieldByName('IDO').AsString;
      ADate := StrToIntDef(FormatDateTime('YYYYMMDD', DataSet.FieldByName('ISSUED_DATE').AsDateTime), 19000000) - 19000000;

      with ADOQuery2 do
      begin
        Close;
        SQL.Clear;
        //SQL.Text := 'Call ZPHLIB_AUL.sp_RefreshUploadToERP (:DT,:TM,:CONO,:LOT_ID,:ItemCode,:StockRoom,:Worder,:FDate,:IDO)';
        SQL.Text := 'Call ZPHLIB_AUL.sp_RefreshUploadToERP (' + IntToStr(DT) + ',' + QuotedStr(TM) + ','
          + QuotedStr(COMPANY) + ',' + QuotedStr(LOT_ID) + ',' + QuotedStr(ITEM_CODE) + ',' + QuotedStr(StockRoom) + ','
          + QuotedStr(Worder) + ',' + IntToStr(ADate) + ',' + QuotedStr(IDO) + ')';
        {Parameters.ParamByName('DT').Value := DT;
        Parameters.ParamByName('TM').Value := TM;
        Parameters.ParamByName('CONO').Value := COMPANY;
        Parameters.ParamByName('LOT_ID').Value := LOT_ID;
        Parameters.ParamByName('ItemCode').Value := ITEM_CODE;
        Parameters.ParamByName('StockRoom').Value := STOCKROOM;
        Parameters.ParamByName('Worder').Value := Worder;
        Parameters.ParamByName('FDate').Value := ADate;
        Parameters.ParamByName('IDO').Value := IDO;}
        ExecSQL;
      end; // with

      Next;
    end; // while
  end; // with
end;

function TfrmMain.GetNewUpdatedQty(DT: Integer; TM: string): boolean;
begin
  with ADOQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'Call ZPHLIB_AUL.sp_GetNewUpdatedQty (' + IntToStr(DT) + ',' + QuotedStr(TM) + ')';
    //Parameters.ParamByName('DT').Value := DT;
    //Parameters.ParamByName('TM').Value := TM;
    Open;
    result := RecordCount <> 0;
  end; // with
end;

function TfrmMain.GetNewUpdatedQty(): boolean;
var
  ACONO, HDO, AHDOs: string;
begin
  with cdsReport_Temp do
  begin
    Close;
    Params.Clear;
    CommandText := 'select distinct a.HDO_NO,a.COMPANY from PB_FINALID a, '
      + ' (select * from PB_GatePass ' + bcGetWhereSQL(ClientDataSet1.CommandText, 'IDO', '', True) + ') b'
      + ' where b.Item_Code=a.Item_Code  and b.LOT_ID=a.LOT_ID and b.STOCKROOM=a.STOCKROOM and b.Company=a.Company'
      + ' and b.ERPSuccess=1 and b.status=' + IntToStr(Ord(bcsToSystem21));
    Open;
    AHDOs := '';
    First;
    while not Eof do
    begin
      HDO := Fields[0].AsString;
      ACONO := Fields[1].AsString;
      AHDOs := AHDOs + ' OR (CH1T84=' + QuotedStr(HDO) + 'and CONO84=' + QuotedStr(ACONO) + ')';
      Next;
    end; // while
    result := AHDOs <> '';

    if not result then exit;

    AHDOs := Trim(AHDOs);
    AHDOs := 'and (' + Trim(Copy(AHDOs, 3, MaxInt)) + ')';
  end; // with

  with ADOQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select cono80 as cono,strc80 as stockroom,locn80 as LotNo,pnum80 as ItemCode,sphy80 as CurrQty,CH1T84 as HDO');
    SQL.Add('from ault2f1.inp80,ault4f1.app84');
    SQL.Add('where cono80=cono84 and pnum80=pnum84 and locn80=lotn84 ' + AHDOs);
    Open;
    result := RecordCount <> 0;
  end;
end;

function TfrmMain.GetCurrQtyOfArray(cono, LotNo, ItemCode, ST: string): double;
begin
  result := 0;
  if ADOQuery1.Locate('cono;LotNo;ItemCode;STOCKROOM', VarArrayOf([cono, LotNo, ItemCode, ST]), []) then
    result := ADOQuery1.FieldByName('CurrQty').AsFloat;
end;

function TfrmMain.GetCurrQtyOfArray(cono, LotNo, ItemCode, ST: string; var HDO: string): double;
begin
  result := 0;
  if ADOQuery1.Locate('cono;LotNo;ItemCode;STOCKROOM', VarArrayOf([cono, LotNo, ItemCode, ST]), []) then
  begin
    HDO := ADOQuery1.FieldByName('HDO').AsString;
    result := ADOQuery1.FieldByName('CurrQty').AsFloat;
  end;
end;

procedure TfrmMain.btnManualActionClick(Sender: TObject);
begin
  inherited;
  if not CheckUserRight(cUrManualFromHandHeld, TButton(Sender).Caption, UserRights) then exit;

  with ClientDataSet1 do
  begin
    Screen.Cursor := crSQLWait;
    DisableControls;
    try
      First;
      while not Eof do
      begin
        if FieldByName('STATUS').AsInteger <> Ord(bcsToSystem21) then
        begin
          Edit;
          FieldByName('STATUS').AsInteger := Ord(bcsFromHandHeld);
          FieldByName('ISSUED_DATE').AsDateTime := Date;
          Post;
          DoApplyUpdateData(True);
        end;
        Next;
      end; // while
    finally // wrap up
      EnableControls;
      Screen.Cursor := crDefault;
    end; // try/finally
  end; // with

end;

procedure TfrmMain.ClientDataSet1AfterScroll(DataSet: TDataSet);
begin
  inherited;
  btnUnAction.Enabled := DataSet.FieldByName('STATUS').AsInteger = Ord(bcsFromHandHeld);
  //btnManualAction.Enabled := DataSet.FieldByName('STATUS').AsInteger <> Ord(bcsToSystem21);
end;

procedure TfrmMain.btnGetPHISMClick(Sender: TObject);
var
  ACONO, AItemCode, AStockRoom, PHISM: string;
begin
  inherited;
  with ClientDataSet_ido2 do
  begin
    if (not Active) and (IsEmpty) then exit;

    DisableControls;
    Screen.Cursor := crSQLWait;
    try
      First;
      while not EOF do
      begin
        ACONO := ClientDataSet_ido1.FieldByName('CONO').AsString;
        AItemCode := FieldByName('Wl').AsString;
        AStockRoom := FieldByName('StockRoom').AsString;
        PHISM := GetPHISM(ACONO, AItemCode, AStockRoom);
        if (PHISM <> FieldByName('PHISM').AsString) then
        begin
          Edit;
          FieldByName('PHISM').AsString := PHISM;
          Post;
        end;
        Next;
      end; // while

    finally // wrap up
      EnableControls;
      Screen.Cursor := crDefault;
    end; // try/finally
  end; // with
end;

function TfrmMain.GetPHISM(ACONO, AItemCode, AStockRoom: string): string;
begin
  with ADOQuery2 do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'Call ZPHLIB_AUL.sp_GetPHISMaterial (' + QuotedStr(ACONO) + ',' + QuotedStr(AItemCode) + ',' + QuotedStr(AStockRoom) + ')';
    {Parameters.ParamByName('CONO').Value := ACONO;
    Parameters.ParamByName('ItemCode').Value := AItemCode;
    Parameters.ParamByName('StockRoom').Value := AStockRoom; }
    Open;
    result := FieldByName('PHISM').AsString;
  end; // with
end;

procedure TfrmMain.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  btnLocateClick(btnLocate);
end;

procedure TfrmMain.btnUnActionClick(Sender: TObject);
begin
  inherited;
  if not CheckUserRight(cUrManualFromHandHeld, TButton(Sender).Caption, UserRights) then exit;

  with ClientDataSet1 do
  begin
    if FieldByName('STATUS').AsInteger <> Ord(bcsToSystem21) then
    begin
      Edit;
      FieldByName('STATUS').AsInteger := Ord(bcsNew);
      FieldByName('ISSUED_DATE').Clear;
      Post;
      DoApplyUpdateData(False);
    end;
  end; // with
end;

procedure TfrmMain.btnSplitIDListClick(Sender: TObject);
begin
  inherited;
  if not CheckUserRight(cUrPrintLabel, TButton(Sender).Caption, UserRights) then exit;
  DoSplitIDList();
end;

procedure TfrmMain.btnIDOReportClick(Sender: TObject);
begin
  inherited;
  if not CheckUserRight(cUrReport, TButton(Sender).Caption, UserRights) then exit;
  FShowIDOReport := True;

  pnl_select.Left := btnIDOReport.Left + btnIDOReport.Width - pnl_select.Width;
  pnl_select.Top := btnIDOReport.Top;
  cxGrid3DBTableView1bSelect.Visible := False;
  pnl_select.Visible := True;
  pnl_select.Tag := 0;
  //  SetBtnEnable(False);
  Panel7.Visible := False;
  cxGroupBox5.Visible := False;
  Label15.Caption := '';
  Screen.Cursor := crSQLWait;
  cxGrid3DBTableView1.DataController.DataSource := nil;
  Application.ProcessMessages;
  try
    with ClientDataSet2 do
    begin
      Close;
      Params.Clear;
      CommandText := 'select BH AS IDO from IDO1 order by BH';
      Open;
    end; // with
    cxGrid3DBTableView1.DataController.DataSource := DataSource2;
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

procedure TfrmMain.WHPrintIDOReport(IDO: string);
var
  aCURR_QTY, IssueQty: Double;
  LOT_ID, ItemCode, CompanyNo, StockRoom: string;
  bHaveCurrQty: boolean;
begin
  with ClientDataSet_Temp2 do
  begin
    Screen.Cursor := crHourGlass;
    try
      close;
      params.clear;
      params.createparam(ftString, 'bh', ptinput); //ISSUE_QTY as CurQty,Stockroom as Split,
      commandtext := 'select a.*,b.*,a.cono as COMPANY,b.idno as LOT_ID,Qty as CurQty,Stockroom as Split,b.wl as ITEM_CODE'
        + '  from ido1 a,ido2 b where b.bh=a.bh and a.bh=:bh order by b.wl,b.oper,b.idno';
      params[0].asstring := IDO;
      open;

      //get the select record's curQty from ERP
      //vParam := GetUpdatedQty(ClientDataSet_Temp2, RecordCount);
      bHaveCurrQty := GetNewUpdatedQty();
      First;
      while not Eof do
      begin
        CompanyNo := FieldByName('COMPANY').AsString;
        STOCKROOM := FieldByName('STOCKROOM').AsString;
        LOT_ID := FieldByName('LOT_ID').AsString;
        ItemCode := FieldByName('ITEM_CODE').AsString;
        IssueQty := FieldByName('QTY').AsFloat;
        if bHaveCurrQty then
          aCURR_QTY := GetCurrQtyOfArray(CompanyNo, LOT_ID, ItemCode, STOCKROOM)
        else aCURR_QTY := IssueQty;

        Edit;
        FieldByName('CurQty').AsFloat := aCURR_QTY;
        if IssueQty <> aCURR_QTY then
          FieldByName('Split').AsString := '*'
        else
          FieldByName('Split').Clear;
        Post;
        Next;
      end; // while
    finally
      Screen.Cursor := crDefault;
    end;
  end;

  with RMGridReport1 do
  begin
    //LoadFromFile(ExtractFilePath(Application.ExeName) + 'IDO.rls');
    LoadFromResourceName(hInstance, 'IDO');
    Dictionary.Clear;
    Dictionary.Variables.Insert(0, ' Global');
    Dictionary.Variables['NewRecord'] := FsNew;
    Dictionary.Variables['System21'] := FsSystem21;
    Dictionary.Variables['ToHandHeld'] := FsToHandHeld;
    Dictionary.Variables['FromHandHeld'] := FsFromHandHeld;
    Dictionary.Variables['IDOCompleted'] := FIDOCompleted;
    Dictionary.Variables['FUnKnown'] := FUnKnown;

    Dictionary.Variables.AsString['FReportTitle'] := GetLanguagesStr(70, 'Issue Material Listing Report');
    Dictionary.Variables.AsString['FDate'] := GetLanguagesStr(23, 'Date', True);
    Dictionary.Variables.AsString['FTime'] := GetLanguagesStr(38, 'Time', True);
    Dictionary.Variables.AsString['FPage'] := GetLanguagesStr(47, 'Page', True);
    Dictionary.Variables.AsString['FStatus'] := GetLanguagesStr(12, 'Status', True);
    Dictionary.Variables.AsString['FItemCode'] := GetLanguagesStr(13, 'Item Code', True);
    Dictionary.Variables.AsString['FLotNumber'] := GetLanguagesStr(14, 'Lot Number', True);
    Dictionary.Variables.AsString['FUOM'] := GetLanguagesStr(15, 'UOM', True);
    Dictionary.Variables.AsString['FStockRoom'] := GetLanguagesStr(16, 'Stock Room', True);
    Dictionary.Variables.AsString['FCompany'] := GetLanguagesStr(17, 'Company', True);

    Dictionary.Variables.AsString['FRecorder'] := GetLanguagesStr(36, 'Recorder');
    Dictionary.Variables.AsString['FOpdesc'] := GetLanguagesStr(41, 'Opdesc');
    Dictionary.Variables.AsString['FConsigneeDept'] := GetLanguagesStr(42, 'Consignee Dept.');
    Dictionary.Variables.AsString['FProductLine'] := GetLanguagesStr(44, 'production line');
    Dictionary.Variables.AsString['FOper'] := GetLanguagesStr(47, 'Oper');
    Dictionary.Variables.AsString['FID_No'] := GetLanguagesStr(14, 'LOT Number', True);
    Dictionary.Variables.AsString['FZdh'] := GetLanguagesStr(49, 'Zdh');
    Dictionary.Variables.AsString['FMaterial'] := GetLanguagesStr(50, 'Material');
    Dictionary.Variables.AsString['FSh'] := GetLanguagesStr(52, 'Sh');
    Dictionary.Variables.AsString['FSz'] := GetLanguagesStr(53, 'Sz');
    Dictionary.Variables.AsString['FCD'] := GetLanguagesStr(55, 'CD');
    Dictionary.Variables.AsString['FUfd'] := GetLanguagesStr(56, 'Ufd');
    Dictionary.Variables.AsString['FMfd'] := GetLanguagesStr(57, 'Mfd');
    Dictionary.Variables.AsString['FWz'] := GetLanguagesStr(58, 'Wz');

    Dictionary.Variables.AsString['FSOP'] := GetLanguagesStr(4, 'SOP');
    Dictionary.Variables.AsString['FProjectNo'] := GetLanguagesStr(5, 'PROJECT No.');
    Dictionary.Variables.AsString['FIDONo'] := GetLanguagesStr(6, 'IDO No.');
    Dictionary.Variables.AsString['FWorkOrderNo'] := GetLanguagesStr(7, 'WORK ORDER No.');
    Dictionary.Variables.AsString['FQuantity'] := GetLanguagesStr(9, 'Issue Quantity');
    Dictionary.Variables.AsString['FCurQty'] := GetLanguagesStr(75, 'Current Qty', True);
    Dictionary.Variables.AsString['FGATEPASS'] := GetLanguagesStr(10, 'GATEPASS');
    Dictionary.Variables.AsString['FUserName'] := GetLanguagesStr(30, 'UserName', True);

    Dictionary.Variables.AsString['FConsignee'] := GetLanguagesStr(43, 'Consignee');
    Dictionary.Variables.AsString['FPickingDept'] := GetLanguagesStr(40, 'Picking Dept');
    Dictionary.Variables.AsString['FSite'] := GetLanguagesStr(49, 'Site', True);
    Dictionary.Variables.AsString['FTotal'] := GetLanguagesStr(48, 'Total', True);
    Dictionary.Variables.AsString['FLocation'] := GetLanguagesStr(73, 'Location', True);
    Dictionary.Variables.AsString['FPGMN'] := GetLanguagesStr(84, 'Material Type');
    Dictionary.Variables.AsString['FSuppBatch'] := GetLanguagesStr(82, 'Supp Batch', True);

    SetReportCanDesign(RMGridReport1);
    OnGetValue := nil;
    RMDBDataSet1.DataSet := ClientDataSet_Temp2;
    RMDBDataSet2.DataSet := nil;
    ShowReport;
  end;
end;

procedure TfrmMain.btnChangToYellowClick(Sender: TObject);
  procedure _UpdateToSQL;
  begin
    with ClientDataSet_Temp do
    begin
      Close;
      Params.Clear;
      Params.CreateParam(ftInteger, '@Status', ptInput);
      Params.CreateParam(ftString, '@ISSUED_DATE', ptInput);
      Params.CreateParam(ftString, '@IDO', ptInput);
      Params.CreateParam(ftString, '@LOT_ID', ptInput);
      CommandText := 'update PB_GATEPASS set Status=:@Status, ISSUED_DATE=:@ISSUED_DATE,ERPSuccess=null where IDO=:@IDO  and LOT_ID=:@LOT_ID';
      Params.ParamByName('@Status').AsInteger := ClientDataSet1.FieldByName('Status').AsInteger;
      Params.ParamByName('@ISSUED_DATE').AsString := FormatDateTime('yyyy''-''mm''-''dd', Date);
      Params.ParamByName('@IDO').AsString := ClientDataSet1.FieldByName('IDO').AsString;
      Params.ParamByName('@LOT_ID').AsString := ClientDataSet1.FieldByName('LOT_ID').AsString;
      Execute;
    end; // with
  end;

begin
  inherited;
  if not CheckUserRight(cUrDelete, TButton(Sender).Caption, UserRights) then exit;

  with ClientDataSet1 do
  begin
    Screen.Cursor := crSQLWait;
    DisableControls;
    try
      First;
      while not Eof do
      begin
        if (FieldByName('STATUS').AsInteger <> Ord(bcsToSystem21))
          or ((FieldByName('STATUS').AsInteger = Ord(bcsToSystem21)) and (not FieldByName('ERPSuccess').AsBoolean)) then
        begin
          Edit;
          FieldByName('STATUS').AsInteger := Ord(bcsFromHandHeld);
          FieldByName('ERPSuccess').Clear;
          FieldByName('ISSUED_DATE').AsDateTime := Date;
          Post;
          _UpdateToSQL;
        end;
        Next;
      end; // while
    finally // wrap up
      EnableControls;
      Screen.Cursor := crDefault;
    end; // try/finally
  end; // with

end;

procedure TfrmMain.cxButtonEdit_BHKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  AIDO: string;
begin
  inherited;
  if (Key = VK_RETURN) and (Shift = []) then
  begin
    AIDO := cxButtonEdit_BH.Text;
    cxButtonEdit_BH.Text := '';

    AIDO := GetIDOFullString(AIDO);
    if LocateBH(AIDO) then cxButtonEdit_BH.Text := AIDO;
  end;

end;

procedure TfrmMain.cxButtonEdit_BHPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  cxGrid3DBTableView1bSelect.Visible := False;
  Panel8.Visible := True;
  Screen.Cursor := crSQLWait;
  cxGridDBTableView1.DataController.DataSource := nil;
  Application.ProcessMessages;
  try
    ClientDataSet3.CloneCursor(ClientDataSet_IDO1, true, false);

    //    with ClientDataSet3 do
    //    begin
    //      Close;
    //      Params.Clear;
    //      if (urAdmin in FIDOUserRight) or (urBrowseAllIDO in FIDOUserRight) then
    //        CommandText := 'select distinct Bh from ido1 '
    //      else
    //        CommandText := 'select distinct Bh from ido1 where  jlr=' + QuotedStr(UID) + ' order by bh';
    //
    //      Open;
    //    end; // with
    cxGridDBTableView1.DataController.DataSource := DataSource3;
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

procedure TfrmMain.cxGridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if FCanDbClick then
  begin
    cxButton2Click(Sender);
  end;
end;

procedure TfrmMain.cxButton2Click(Sender: TObject);
var
  AText: string;
begin
  Panel8.Visible := False;
  AText := ClientDataSet3.FieldByName('Bh').AsString;
  cxButtonEdit_BH.Text := AText;
  cxButtonEdit_BH.SetFocus;
  if not LocateBH(AText) then cxButtonEdit_BH.Text := '';
  cxGridDBTableView1.DataController.DataSource := nil;
end;

procedure TfrmMain.cxButton4Click(Sender: TObject);
begin
  Panel8.Visible := False;
  if cxButtonEdit_BH.CanFocus then
    cxButtonEdit_BH.SetFocus;
  cxGridDBTableView1.DataController.DataSource := nil;
end;

function TfrmMain.LocateBH(bh: string): boolean;
begin
  result := ClientDataSet_IDO1.Locate('BH', bh, []);
end;

procedure TfrmMain.UpdateIDOs2AS400(ACONO, AIDO, ALotID, AWord, AStatus: string);
begin
  try
    with ADOQuery_UpdateIDO do
    begin
      Close;
      SQL.Clear;
      //IN i_cono varchar(2),IN i_IDO varchar(12),IN i_LOTID varchar(15),IN i_Word varchar(7),IN i_Status varchar(1)
      SQL.Add('call ZPHLIB_AUL.sp_UpdateIDOs2AS400_Test ('
        + QuotedStr(ACONO) + ','
        + QuotedStr(AIDO) + ','
        + QuotedStr(ALotID) + ','
        + QuotedStr(AWord) + ','
        + QuotedStr(AStatus) + ')'
        );
      ExecSQL;
    end;
  except
    IDOs2AS400ErrorLog(ACONO, AIDO, ALotID, AWord, AStatus);
  end;
end;

procedure TfrmMain.IDOs2AS400ErrorLog(ACONO, AIDO, ALotID, AWord, AStatus: string);
begin
  try
    with ClientDataSet_IDOERP do
    begin
      Close;
      Params.Clear;
      CommandText := 'Insert into PB_IDO2ERPError (CONO,IDO,IDNO,WorkOrder,Status,FDT)'
        + ' values ('
        + QuotedStr(ACONO) + ','
        + QuotedStr(AIDO) + ','
        + QuotedStr(ALotID) + ','
        + QuotedStr(AWord) + ','
        + QuotedStr(AStatus) + ','
        + 'GetDate()'
        + ')';
    end;
  except
  end;
end;

end.

