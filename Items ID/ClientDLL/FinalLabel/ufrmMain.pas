unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmBase, cxStyles, DB, DBClient, uTools, cxControls, ComObj,
  cxContainer, cxEdit, cxGroupBox, StdCtrls, cxButtons, ExtCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, RM_Class, RM_DsgGridReport,
  RM_E_llPDF, RM_Common, RM_e_main, RM_e_Xls, RM_Dataset, RM_GridReport,
  ADODB, cxLookAndFeels, cxTextEdit, cxMaskEdit, cxButtonEdit, cxLabel,
  cxCheckBox, cxLookAndFeelPainters, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxCurrencyEdit, cxCalendar;

type
  TfrmMain = class(TfrmBase)
    cxGroupBox1: TcxGroupBox;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1HDO_NO: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1LOT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1ORG_QTY: TcxGridDBColumn;
    cxGrid1DBTableView1CUR_BAL: TcxGridDBColumn;
    cxGrid1DBTableView1UOM: TcxGridDBColumn;
    cxGrid1DBTableView1STOCKROOM: TcxGridDBColumn;
    cxGrid1DBTableView1COMPANY: TcxGridDBColumn;
    cxGrid1DBTableView1NO_OF_COPIES: TcxGridDBColumn;
    cxGrid1DBTableView1NO_OF_ROLLS: TcxGridDBColumn;
    cxGrid1DBTableView1MARKER_WIDTH: TcxGridDBColumn;
    cxGrid1DBTableView1PURCHASE_UOM: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1RECORD_CREATED_DATE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RMDBDataSet1: TRMDBDataSet;
    RMXLSExport1: TRMXLSExport;
    RMllPDFExport1: TRMllPDFExport;
    RMGridReportDesigner1: TRMGridReportDesigner;
    ADOQuery1: TADOQuery;
    dsADO: TDataSource;
    cxGrid1DBTableView1IsCheck: TcxGridDBColumn;
    pnl_select: TPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1HDO_NO: TcxGridDBColumn;
    btnSelect: TcxButton;
    btnCancel: TcxButton;
    btnSelectAll: TcxButton;
    btnSelectNone: TcxButton;
    btnClearAll: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxButtonEdit_HDO: TcxButtonEdit;
    Panel2: TPanel;
    btnFromSystem21: TcxButton;
    btnPrintLabel: TcxButton;
    btnReport: TcxButton;
    btnDelete: TcxButton;
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
    cxGrid1DBTableView1Location: TcxGridDBColumn;
    cxGrid1DBTableView1pgmn: TcxGridDBColumn;
    RMGridReport1: TRMGridReport;
    cdsPrintLabel: TClientDataSet;
    cxCheckBox1: TcxCheckBox;
    cxGrid1DBTableView1PHISM: TcxGridDBColumn;
    cxGrid1DBTableView1ColorShade: TcxGridDBColumn;
    cxGrid1DBTableView1PO: TcxGridDBColumn;
    cxGrid1DBTableView1Project: TcxGridDBColumn;
    btnDefaultSelect: TcxButton;
    ADOQuery5: TADOQuery;
    cxGrid1DBTableView1Dept: TcxGridDBColumn;
    cxGrid1DBTableView1WO: TcxGridDBColumn;
    cxGrid1DBTableView1GarmentColor: TcxGridDBColumn;
    cxGrid1DBTableView1CustStyleNo: TcxGridDBColumn;
    cxGrid1DBTableView1POLine: TcxGridDBColumn;
    cxGrid1DBTableView1BuyerSizeCup: TcxGridDBColumn;
    cxGrid1DBTableView1BuyerSizeCups: TcxGridDBColumn;
    cxGrid1DBTableView1PrintDate: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnFromSystem21Click(Sender: TObject);
    procedure btnPrintLabelClick(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure cxGrid1DBTableView1STATUSGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxGrid2DBTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cxButtonEdit_HDOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit_HDOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClientDataSet1AfterOpen(DataSet: TDataSet);
    procedure ClientDataSet1AfterClose(DataSet: TDataSet);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnSelectNoneClick(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure cxGrid1DBTableView1IsCheckPropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGrid1DBTableView1STATUSGetFilterDisplayText(
      Sender: TcxCustomGridTableItem; const AValue: Variant;
      var ADisplayText: string);
    procedure Panel1Resize(Sender: TObject);
    procedure btnDefaultSelectClick(Sender: TObject);
    //procedure cxGrid1DBTableView1CustomDrawCell(
    //  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
    //  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
//    FNew, FPrintLabel: string;
    FsNew, FsSystem21, FsPrintLabel, FsToHandHeld, FsFromHandHeld, FsIDOConfirmed: string;
    FsErpUpload, FsToErpBlank, FsToErpFail, FsToErpSuccess: string;
    FCanDbClick: boolean;
    FSelectRowCount: Integer;
    procedure DoApplyUpdateData;
    procedure FilterFINALIDData(HDO_NO: string; bUpdate: boolean = True);
    //    function GetWhereSQL(DataSet: TClientDataSet; HDO_NO: string): string;
    procedure SetSelectRowCount(Value: Integer);
    procedure DoSelectRecord(bAll: boolean);
    function GetNewUpdatedQty(): boolean;
    //    function GetUpdatedQty(DataSet: TDataSet; ACount: Integer): Variant;
    function GetCurrQtyOfArray(cono, LotNo, ItemCode, ST: string): double;
    //    procedure GetNewCurrQtyOfPrintLabel(var vParams: Variant);
    procedure SetBKColor;
    procedure PHPrintLabel;
    function GetPOInfor(cono, lotid, itemcode: string): string;
    procedure DoApplyUpdateStatus;
    procedure DoApplyUpdateStatus1(hdo, sql: string);
    procedure GetFromAS400(HDO, CONO: string);
    procedure GetEachRowValue(bcPrinter: string; iCopies: Integer; bCollateCopies: boolean);
  public
    { Public declarations }
    property SelectRowCount: Integer read FSelectRowCount write SetSelectRowCount;
    procedure SetLanguageStr; override;
  end;

var
  frmMain: TfrmMain;

implementation

uses ufrmDialog;

{$R *.dfm}
var
  Fpono, FbuyerSizeCup, FbuyerSizeCups, FgarmentColor, FendCustStyle, Fdept, FworkOrderNo, FProjectNo: string;
  Fpoline: string;
  fHDO: string;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  ADOQuery1.Connection := ZPHLIB;
  ADOQuery5.Connection := ZPHLIB;
  cdsPrintLabel.RemoteServer := SCN;

  SetLanguageStr;
  FSelectRowCount := 0;
  SetBKColor;
  fHDO := '';
  //  with ClientDataSet1 do
  //  begin
  //    Close;
  //    CommandText := 'select * from PB_FINALID where 1=2 ORDER BY HDO_NO';
  //    Open;
  //  end; // with
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
  //  inherited;
  RUnit := 'Final Label';
  btnFromSystem21.Caption := GetLanguagesStr(1, 'from ERP', True);
  btnFromSystem21.Hint := GetLanguagesStr(40, 'Transfer data From ERP', True);
  btnPrintLabel.Caption := GetLanguagesStr(1, 'Print Label');
  //btnPrintLabel.Hint := GetLanguagesStr(50, 'Print the Label of Current Record', True);
  btnReport.Caption := GetLanguagesStr(3, 'Report', True);
  btnDelete.Caption := GetLanguagesStr(2, 'Delete', True) + '..';
  btnSelect.Caption := GetLanguagesStr(39, 'Select', True);
  btnCancel.Caption := GetLanguagesStr(11, 'Cancel', True);
  btnSelectAll.Caption := GetLanguagesStr(58, 'Cancel', True);
  btnSelectNone.Caption := GetLanguagesStr(59, 'Cancel', True);
  btnClearAll.Caption := GetLanguagesStr(60, 'Cancel', True);
  btnDefaultSelect.Caption := GetLanguagesStr(84, 'Select have not Printed', True);

  cxGrid1DBTableView1STATUS.Caption := GetLanguagesStr(12, 'Status', True);
  cxGrid1DBTableView1ITEM_CODE.Caption := GetLanguagesStr(13, 'Item Code', True);
  cxGrid1DBTableView1LOT_ID.Caption := GetLanguagesStr(14, 'Lot Number', True);
  cxGrid1DBTableView1UOM.Caption := GetLanguagesStr(15, 'UOM', True);
  cxGrid1DBTableView1STOCKROOM.Caption := GetLanguagesStr(16, 'Stock Room', True);
  cxGrid1DBTableView1COMPANY.Caption := GetLanguagesStr(17, 'Company Code', True);
  cxGrid1DBTableView1IsCheck.Caption := GetLanguagesStr(39, 'Select', True);

  cxGrid1DBTableView1HDO_NO.Caption := GetLanguagesStr(2, 'HDO Number');
  cxGrid1DBTableView1ORG_QTY.Caption := GetLanguagesStr(3, 'Original Qty');
  cxGrid1DBTableView1CUR_BAL.Caption := GetLanguagesStr(4, 'Current Balance');
  cxGrid1DBTableView1NO_OF_COPIES.Caption := GetLanguagesStr(5, 'No of Copies');
  cxGrid1DBTableView1NO_OF_ROLLS.Caption := GetLanguagesStr(6, 'No of Rolls');
  cxGrid1DBTableView1MARKER_WIDTH.Caption := GetLanguagesStr(7, 'Marker Width');
  cxGrid1DBTableView1PURCHASE_UOM.Caption := GetLanguagesStr(8, 'Purchase Uom');
  cxGrid1DBTableView1Location.Caption := GetLanguagesStr(73, 'Location', True);
  cxGrid1DBTableView1Pgmn.Caption := GetLanguagesStr(15, 'Material Type');
  cxGrid1DBTableView1PHISM.Caption := GetLanguagesStr(79, 'Supp Refer No.', True);
  cxGrid1DBTableView1ColorShade.Caption := GetLanguagesStr(81, 'Color Shade', True);
  cxGrid1DBTableView1Project.Caption := GetLanguagesStr(129, 'Project No.', True);
  cxGrid1DBTableView1PO.Caption := GetLanguagesStr(130, 'PO No.', True);
  cxGrid1DBTableView1Dept.Caption := GetLanguagesStr(131, 'Dept', True);
  cxGrid1DBTableView1WO.Caption := GetLanguagesStr(132, 'WO', True);
  cxGrid1DBTableView1GarmentColor.Caption := GetLanguagesStr(133, 'Garment Color', True);
  cxGrid1DBTableView1CustStyleNo.Caption := GetLanguagesStr(134, 'End Cust Style', True);
  cxGrid1DBTableView1BuyerSizeCups.Caption := GetLanguagesStr(135, 'Buyer Size/Cup', True);
  cxGrid1DBTableView1PrintDate.Caption := GetLanguagesStr(137, 'Print Date', True);

  cxGrid2DBTableView1HDO_NO.Caption := GetLanguagesStr(2, 'HDO Number');
  //  Label1.Caption := GetLanguagesStr(2, 'HDO Number');
  cxGroupBox2.Caption := GetLanguagesStr(2, 'HDO Number');

  //  FNew := GetLanguagesStr(100, 'New', True);
  //  FPrintLabel := GetLanguagesStr(102, 'Print Label', True);
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

  cxCheckBox1.Caption := GetLanguagesStr(16, 'Update Curr Qty at the same time');

  pnl_Title.Caption := GetLanguagesStr(1000 + Self.Tag, RUnit, True);
  Caption := pnl_Title.Caption;

end;

procedure TfrmMain.btnFromSystem21Click(Sender: TObject);
var
  //vData, vParam: OleVariant;
  HDO, CONO: string;
  //AStr: string;
  //I: Integer;
begin
  inherited;
  if not CheckUserRight(cUrFromERP, TButton(Sender).Caption, UserRights) then exit;

  if not DoSelectHDOData(HDO, CONO) then exit;

  GetFromAS400(HDO, CONO);
  //  if (Application.MessageBox(PChar(GetLanguagesStr(19, 'Are you sure to Transfer data From System 21?', True)),
  //    PChar(GetLanguagesStr(5, 'Tips', True)), MB_YESNO + MB_ICONInformation) = IDNO) then exit;
end;

procedure TfrmMain.GetFromAS400(HDO, CONO: string);
var
  vData, vParam: OleVariant;
  AStr: string;
  I: Integer;
begin

  Screen.Cursor := crSQLWait;
  //  ClientDataSet1.Close;
  try
    with ADOQuery1 do
    begin
      //2:
      Close;
      SQL.Clear;
      SQL.Add('call ZPHLIB_AUL.sp_FinalLabel (' + QuotedStr(CONO) + ',' + QuotedStr(HDO) + ')');
      //Parameters.ParamByName('cono').Value := CONO;
      //Parameters.ParamByName('HDO').Value := HDO;
      Open;

      //      SQL.Clear;//                 0                1                 2               3
      //      SQL.Add('select strc80 as whse65,pnum80 as item65,locn80 as duml65,sphy80 as oqty65,');
      //      //                   4            5      6                 7                8
      //      SQL.Add('sunt35 as ruom65,1 as roll65,spc235,ch9t84 as Location,pgmn35 as pgmn');
      //      SQL.Add('from ault4f1.app84,ault2f1.inp80,ault2f1.inp35');
      //      sql.add('where cono84=cono80 and lotn84=locn80 and cono84=cono35 and pnum84=pnum35 and pnum84=pnum80 ');
      //      SQL.Add('and Upper(cono80)=' + QuotedStr(CONO) + ' and ch1t84=' + QuotedStr(HDO));
      //      Open;
      if RecordCount = 0 then exit;
      vData := VarArrayCreate([0, RecordCount - 1], varVariant);
      I := 0;
      First;
      while not eof do
      begin
        vData[I] := VarArrayOf([
          Fields[0].AsString, //Stockroom
          Fields[1].AsString, //ItemCode
          Fields[2].AsString, //LotNumber
          Fields[3].AsString, //OriginalReceiptQty
          Fields[4].AsString, //UoM
          Fields[5].AsString, //NumberOfRolls
          Fields[6].AsString, //MarkerWidth
          Fields[7].AsString, //Location
          Fields[8].AsString, //pgmn
          Fields[9].AsString, //PHISM
          Fields[10].AsString, //ColorShade
          Fields[11].AsString, //PO
          Fields[12].AsString, //Project
          Fields[13].AsString //PO Line
          ]);
        Inc(I);
        Next;
      end; // while
    end; //with
    //get data from ERP and Update Pb_Final
    vParam := VarArrayCreate([0, 1], varVariant);
    vParam[0] := HDO;
    vParam[1] := CONO;

    SCN.AppServer.GetDataFromERP(ord(ftPB_FINALID), vParam, vData);
    AStr := '';
    if (vParam[0] = 0) and (vParam[1] = 0) then
      AStr := GetLanguagesStr(44, 'No Data', True);
    //    else if (vParam[0] <> 0) or (vParam[1] <> 0) then
    //    begin
    //      AStr := '[' + GetLanguagesStr(40, 'Transfer data From System 21', True) + '] ' + GetLanguagesStr(20, 'Finish', True);
    //      if vParam[0] <> 0 then AStr := AStr + #13#10 + GetLanguagesStr(61, 'Have Existed', True)+': ' + IntToStr(vParam[0]);
    //      if vParam[1] <> 0 then AStr := AStr + #13#10 + GetLanguagesStr(46, 'Inserted: ', True) + IntToStr(vParam[1]);
    //    end;
  finally // wrap up
    FilterFINALIDData(HDO, false);
    //    ClientDataSet1.Open;
    Screen.Cursor := crDefault;
    //    if bFinish=1 then
    if AStr <> '' then
    begin
      Application.MessageBox(PChar(AStr),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation)
    end;
    //    else
    //      ShowMessage('Not Find File');
  end; // try/finally

end;

function TfrmMain.GetCurrQtyOfArray(cono, LotNo, ItemCode, ST: string): double;
//var
//  I: Integer;
begin
  result := 0;
  if ADOQuery1.Locate('cono;LotNo;ItemCode;STOCKROOM', VarArrayOf([cono, LotNo, ItemCode, ST]), []) then
    result := ADOQuery1.FieldByName('CurrQty').AsFloat;
  //  if (VarIsArray(vArray)) then
  //    for I := VarArrayLowBound(vArray, 1) to VarArrayHighBound(vArray, 1) do // Iterate
  //    begin
  //      if ((vArray[I][0]) = (cono)) and ((vArray[I][1]) = (LotNo))
  //        and ((vArray[I][2]) = (ItemCode)) and ((vArray[I][3]) = (ST)) then
  //      begin
  //        if VarIsFloat(vArray[I][4]) then
  //          result := vArray[I][4];
  //        Break;
  //      end;
  //    end; // for
end;

procedure TfrmMain.btnPrintLabelClick(Sender: TObject);
begin
  inherited;
  if not CheckUserRight(cUrPrintLabel, TButton(Sender).Caption, UserRights) then exit;

  PHPrintLabel;
end;

procedure TfrmMain.PHPrintLabel;
var
  bcPrinter, ALotNo: string;
  CompanyNo, STOCKROOM, Barcode, ItemCode, ColorShade, Project, PO: string;
  aCURR_QTY: Double;
  iCopies: Integer;
  bCollateCopies, bHaveCurrQty: boolean;
  // ARecordIndex, AItemIndex: Integer;
  isCheck: boolean;
begin
  if not DoSelectPrinter(bcPrinter, iCopies, bCollateCopies) then exit;

  with cdsPrintLabel do
  begin
    Close;
    Params.Clear;
    //CommandText := 'select * from PB_FINALID where 1=2';
    CommandText := 'select a.* from PB_PrintLabel a where 1=2 order by LOT_ID';
    Open;
  end; // with

  GetEachRowValue(bcPrinter, iCopies, bCollateCopies);
  //WriteToSocketStream(iCopies, bCollateCopies, bcPrinter, cdsPrintLabel, BarcodePrint);
  //DoApplyUpdateStatus;

  exit;
  {
  //----------------------------------------------------------------------------------------------------------------------------------------
  with cdsPrintLabel do
  begin

    for ARecordIndex := 0 to cxGrid1DBTableView1.DataController.RecordCount - 1 do
    begin
      cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1HDO_NO.Index] := ARecordIndex;

      cxGrid1DBTableView1HDO_NO: TcxGridDBColumn;
      cxGrid1DBTableView1ITEM_CODE: TcxGridDBColumn;
      cxGrid1DBTableView1LOT_ID: TcxGridDBColumn;
      cxGrid1DBTableView1ORG_QTY: TcxGridDBColumn;
      cxGrid1DBTableView1CUR_BAL: TcxGridDBColumn;
      cxGrid1DBTableView1UOM: TcxGridDBColumn;
      cxGrid1DBTableView1STOCKROOM: TcxGridDBColumn;
      cxGrid1DBTableView1COMPANY: TcxGridDBColumn;
      cxGrid1DBTableView1NO_OF_COPIES: TcxGridDBColumn;
      cxGrid1DBTableView1NO_OF_ROLLS: TcxGridDBColumn;
      cxGrid1DBTableView1MARKER_WIDTH: TcxGridDBColumn;
      cxGrid1DBTableView1PURCHASE_UOM: TcxGridDBColumn;
      cxGrid1DBTableView1STATUS: TcxGridDBColumn;
      cxGrid1DBTableView1Location: TcxGridDBColumn;
      cxGrid1DBTableView1pgmn: TcxGridDBColumn;
      cxGrid1DBTableView1PHISM: TcxGridDBColumn;
      cxGrid1DBTableView1ColorShade: TcxGridDBColumn;
      cxGrid1DBTableView1PO: TcxGridDBColumn;
      cxGrid1DBTableView1Project: TcxGridDBColumn;
      cxGrid1DBTableView1Dept: TcxGridDBColumn;
      cxGrid1DBTableView1WO: TcxGridDBColumn;
      cxGrid1DBTableView1GarmentColor: TcxGridDBColumn;
      cxGrid1DBTableView1CustStyleNo: TcxGridDBColumn;
      cxGrid1DBTableView1POLine: TcxGridDBColumn;
      cxGrid1DBTableView1BuyerSizeCup: TcxGridDBColumn;
      cxGrid1DBTableView1BuyerSizeCups: TcxGridDBColumn;
      cxGrid1DBTableView1PrintDate: TcxGridDBColumn;

      Append;
      FieldByName('HDO_NO').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1HDO_NO.Index];
      FieldByName('ITEM_CODE').Value :=cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1HDO_NO.Index];
      FieldByName('LOT_ID').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1HDO_NO.Index];
      FieldByName('ORG_QTY').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1HDO_NO.Index];
      FieldByName('CUR_BAL').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1HDO_NO.Index]; // aCURR_QTY;
      FieldByName('UOM').Value := bcGetStringStr(ClientDataSet1.FieldByName('UOM').AsString, 2);
      FieldByName('STOCKROOM').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1HDO_NO.Index];
      FieldByName('COMPANY').Value :=cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1HDO_NO.Index];
      FieldByName('NO_OF_ROLLS').Value :=cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1HDO_NO.Index];
      FieldByName('STATUS').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1HDO_NO.Index];
      FieldByName('RECORD_CREATED_DATE').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1HDO_NO.Index];
      FieldByName('pgmn').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1HDO_NO.Index];
      FieldByName('Location').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1.Index];
      FieldByName('PHISM').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1.Index];
      FieldByName('ColorShade').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1.Index];
      FieldByName('Project').Value :=cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1.Index];
      FieldByName('PO').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1.Index];

      FieldByName('Dept').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1.Index];
      FieldByName('WorkOrderNo').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1.Index];
      FieldByName('GarmentColor').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1.Index];
      FieldByName('CustStyleNo').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1.Index];
      FieldByName('BuyerSizeCups').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1.Index];
      FieldByName('BuyerSizeCup').Value := cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1.Index];
      FieldByName('SuppColor').Value := Copy(ItemCode, 10, 3);
      FieldByName('MARKER_WIDTH').Value :=cxGrid1DBTableView1.DataController.Values[ARecordIndex, cxGrid1DBTableView1.Index];
      Post;
    end;

    Edit;
    FieldByName('Status').AsInteger := Ord(bcsPrintLabel);
    FieldByName('PrintDate').AsDateTime := Now;
    //FieldByName('CUR_BAL').AsFloat := aCURR_QTY;
    Post;
    //DoApplyUpdateData;

  end; //for
  }
  //----------------------------------------------------------------------------------------------------------------------------------------
  {
  with ClientDataSet1 do
  begin
    DisableControls;
    ALotNo := FieldByName('LOT_ID').AsString;
    Screen.Cursor := crHourGlass;
    try
      //filter the Recod which has Checked
      //Filtered := False;
      //Filter := 'IsCheck=1';
      //Filtered := True;

      //1.get the select record's curQty from ERP
     // vParam := GetUpdatedQty(ClientDataSet1, SelectRowCount);

      ////bHaveCurrQty := GetNewUpdatedQty();

      //2.get Value to print label
      First;
      while not Eof do
      begin
        isCheck := FieldByName('IsCheck').AsBoolean;
        if (not isCheck) then
        begin
          Next;
          continue;
        end;
        CompanyNo := FieldByName('COMPANY').AsString;
        STOCKROOM := FieldByName('STOCKROOM').AsString;
        Barcode := FieldByName('LOT_ID').AsString;
        ItemCode := FieldByName('ITEM_CODE').AsString;
        //if bHaveCurrQty then
        //  aCURR_QTY := GetCurrQtyOfArray(CompanyNo, Barcode, ItemCode, STOCKROOM)
        //else aCURR_QTY := 0;

        //GetPOInfor(CompanyNo, Barcode, ItemCode);

        with cdsPrintLabel do
        begin
          Append;
          FieldByName('HDO_NO').AsString := ClientDataSet1.FieldByName('HDO_NO').AsString;
          FieldByName('ITEM_CODE').AsString := ClientDataSet1.FieldByName('ITEM_CODE').AsString;
          FieldByName('LOT_ID').AsString := ClientDataSet1.FieldByName('LOT_ID').AsString;
          FieldByName('ORG_QTY').AsFloat := ClientDataSet1.FieldByName('ORG_QTY').AsFloat;
          FieldByName('CUR_BAL').AsFloat := ClientDataSet1.FieldByName('CUR_BAL').AsFloat; // aCURR_QTY;
          FieldByName('UOM').AsString := bcGetStringStr(ClientDataSet1.FieldByName('UOM').AsString, 2);
          FieldByName('STOCKROOM').AsString := ClientDataSet1.FieldByName('STOCKROOM').AsString;
          FieldByName('COMPANY').AsString := ClientDataSet1.FieldByName('COMPANY').AsString;
          FieldByName('NO_OF_ROLLS').AsInteger := ClientDataSet1.FieldByName('NO_OF_ROLLS').AsInteger;
          FieldByName('STATUS').AsInteger := ClientDataSet1.FieldByName('STATUS').AsInteger;
          FieldByName('RECORD_CREATED_DATE').AsDateTime := ClientDataSet1.FieldByName('RECORD_CREATED_DATE').AsDateTime;
          FieldByName('pgmn').AsString := ClientDataSet1.FieldByName('pgmn').AsString;
          FieldByName('Location').AsString := ClientDataSet1.FieldByName('Location').AsString;
          FieldByName('PHISM').AsString := ClientDataSet1.FieldByName('PHISM').AsString;
          FieldByName('ColorShade').AsString := ClientDataSet1.FieldByName('ColorShade').AsString;
          FieldByName('Project').AsString := ClientDataSet1.FieldByName('Project').AsString;
          FieldByName('PO').AsString := ClientDataSet1.FieldByName('PO').AsString;

          FieldByName('Dept').AsString := ClientDataSet1.FieldByName('Dept').AsString;
          FieldByName('WorkOrderNo').AsString := ClientDataSet1.FieldByName('WorkOrderNo').AsString;
          FieldByName('GarmentColor').AsString := ClientDataSet1.FieldByName('GarmentColor').AsString;
          FieldByName('CustStyleNo').AsString := ClientDataSet1.FieldByName('CustStyleNo').AsString;
          FieldByName('BuyerSizeCups').AsString := ClientDataSet1.FieldByName('BuyerSizeCups').AsString;
          FieldByName('BuyerSizeCup').AsString := ClientDataSet1.FieldByName('BuyerSizeCup').AsString;
          FieldByName('SuppColor').AsString := Copy(ItemCode, 10, 3);
          FieldByName('MARKER_WIDTH').AsFloat := ClientDataSet1.FieldByName('MARKER_WIDTH').AsFloat;
          Post;
        end;

        Edit;
        FieldByName('Status').AsInteger := Ord(bcsPrintLabel);
        FieldByName('PrintDate').AsDateTime := Now;
        //FieldByName('CUR_BAL').AsFloat := aCURR_QTY;
        Post;
        //DoApplyUpdateData;

        Next;
      end; // while

      //index
      //cdsPrintLabel.IndexDefs.Update;
      //cdsPrintLabel.IndexDefs.Clear;
      //cdsPrintLabel.AddIndex('IDLabelIndex', 'LOT_ID', [ixCaseInsensitive], '', '', 0);
      //cdsPrintLabel.IndexName := 'IDLabelIndex';
      //cdsPrintLabel.First;
      //cdsPrintLabel.IndexFieldNames:='LOT_ID';

      WriteToSocketStream(iCopies, bCollateCopies, bcPrinter, cdsPrintLabel, BarcodePrint);

      DoApplyUpdateStatus;

      //Application.MessageBox('Send Completed',
      //  PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
      //=======RM============
//      with RMGridReport1 do
//      begin
//        //LoadFromFile(ExtractFilePath(Application.ExeName) + 'PLabel.rls');
//        LoadFromResourceName(hInstance, 'PLabel');
//
//        SetReportCanDesign(RMGridReport1); //show design button
//        RMDBDataSet1.DataSet := cdsPrintLabel;
//        ShowReport;
//      end; // with
    finally // wrap up
      //Filtered := False;
      //Filter := '';
      Locate('LOT_ID', ALotNo, []);
      EnableControls;
      Screen.Cursor := crDefault;
    end; // try/finally
  end; // with   }
end;

procedure TfrmMain.GetEachRowValue(bcPrinter: string; iCopies: Integer; bCollateCopies: boolean);
var
  isCheck,getLast: boolean;
  ALotNo: string;
  CompanyNo, STOCKROOM, Barcode, ItemCode, ColorShade, Project, PO: string;
begin
  with ClientDataSet1 do
  begin
    //DisableControls;
    cxGrid1DBTableView1.BeginUpdate;
    ALotNo := FieldByName('LOT_ID').AsString;
    Screen.Cursor := crHourGlass;
    try

      getLast:=false;
      //2.get Value to print label
      cxGrid1DBTableView1.DataController.GotoFirst;
      while (not getLast) do
      begin
        if (cxGrid1DBTableView1.DataController.IsEOF) then  getLast:=true;

        isCheck := FieldByName('IsCheck').AsBoolean;
        if (not isCheck) then
        begin
          cxGrid1DBTableView1.DataController.GotoNext;
          continue;
        end;

        CompanyNo := FieldByName('COMPANY').AsString;
        STOCKROOM := FieldByName('STOCKROOM').AsString;
        Barcode := FieldByName('LOT_ID').AsString;
        ItemCode := FieldByName('ITEM_CODE').AsString;

        with cdsPrintLabel do
        begin
          Append;
          FieldByName('HDO_NO').AsString := ClientDataSet1.FieldByName('HDO_NO').AsString;
          FieldByName('ITEM_CODE').AsString := ClientDataSet1.FieldByName('ITEM_CODE').AsString;
          FieldByName('LOT_ID').AsString := ClientDataSet1.FieldByName('LOT_ID').AsString;
          FieldByName('ORG_QTY').AsFloat := ClientDataSet1.FieldByName('ORG_QTY').AsFloat;
          FieldByName('CUR_BAL').AsFloat := ClientDataSet1.FieldByName('CUR_BAL').AsFloat; // aCURR_QTY;
          FieldByName('UOM').AsString := bcGetStringStr(ClientDataSet1.FieldByName('UOM').AsString, 2);
          FieldByName('STOCKROOM').AsString := ClientDataSet1.FieldByName('STOCKROOM').AsString;
          FieldByName('COMPANY').AsString := ClientDataSet1.FieldByName('COMPANY').AsString;
          FieldByName('NO_OF_ROLLS').AsInteger := ClientDataSet1.FieldByName('NO_OF_ROLLS').AsInteger;
          FieldByName('STATUS').AsInteger := ClientDataSet1.FieldByName('STATUS').AsInteger;
          FieldByName('RECORD_CREATED_DATE').AsDateTime := ClientDataSet1.FieldByName('RECORD_CREATED_DATE').AsDateTime;
          FieldByName('pgmn').AsString := ClientDataSet1.FieldByName('pgmn').AsString;
          FieldByName('Location').AsString := ClientDataSet1.FieldByName('Location').AsString;
          FieldByName('PHISM').AsString := ClientDataSet1.FieldByName('PHISM').AsString;
          FieldByName('ColorShade').AsString := ClientDataSet1.FieldByName('ColorShade').AsString;
          FieldByName('Project').AsString := ClientDataSet1.FieldByName('Project').AsString;
          FieldByName('PO').AsString := ClientDataSet1.FieldByName('PO').AsString;

          FieldByName('Dept').AsString := ClientDataSet1.FieldByName('Dept').AsString;
          FieldByName('WorkOrderNo').AsString := ClientDataSet1.FieldByName('WorkOrderNo').AsString;
          FieldByName('GarmentColor').AsString := ClientDataSet1.FieldByName('GarmentColor').AsString;
          FieldByName('CustStyleNo').AsString := ClientDataSet1.FieldByName('CustStyleNo').AsString;
          FieldByName('BuyerSizeCups').AsString := ClientDataSet1.FieldByName('BuyerSizeCups').AsString;
          FieldByName('BuyerSizeCup').AsString := ClientDataSet1.FieldByName('BuyerSizeCup').AsString;
          FieldByName('SuppColor').AsString := Copy(ItemCode, 10, 3);
          FieldByName('MARKER_WIDTH').AsFloat := ClientDataSet1.FieldByName('MARKER_WIDTH').AsFloat;
          Post;
        end;

        Edit;
        FieldByName('Status').AsInteger := Ord(bcsPrintLabel);
        FieldByName('PrintDate').AsDateTime := Now;
        //FieldByName('CUR_BAL').AsFloat := aCURR_QTY;
        Post;
        //DoApplyUpdateData;

        cxGrid1DBTableView1.DataController.GotoNext;
      end; // while

      WriteToSocketStream(iCopies, bCollateCopies, bcPrinter, cdsPrintLabel, BarcodePrint);

      DoApplyUpdateStatus;

    finally // wrap up
      //Filtered := False;
      //Filter := '';
      Locate('LOT_ID', ALotNo, []);
      //EnableControls;
      cxGrid1DBTableView1.EndUpdate;
      Screen.Cursor := crDefault;
    end; // try/finally
  end; // with

end;

procedure TfrmMain.DoApplyUpdateStatus;
var
  ALotNo, sql, hdo, Barcode: string;
  i: integer;
  isCheck: boolean;
begin
  if ClientDataSet1.ApplyUpdates(-1) = 0 then exit;

  with ClientDataSet1 do
  begin
    //DisableControls;
    //ALotNo := FieldByName('LOT_ID').AsString;
    //Screen.Cursor := crHourGlass;
    try
      //filter the Recod which has Checked
      //Filtered := False;
      //Filter := 'IsCheck=1';
      //Filtered := True;

      i := 0;
      sql := '';
      First;
      hdo := FieldByName('HDO_NO').AsString;
      while not Eof do
      begin
        isCheck := FieldByName('IsCheck').AsBoolean;
        if (not isCheck) then
        begin
          Next;
          continue;
        end;

        i := i + 1;
        Barcode := FieldByName('LOT_ID').AsString;
        sql := sql + ',' + QuotedStr(Barcode);

        if (i = 400) then
        begin
          sql := Copy(sql, 2, maxint);
          DoApplyUpdateStatus1(hdo, sql);

          sql := '';
          i := 0;
        end;

        Next;
      end; // while

      if (sql <> '') then
      begin
        sql := Copy(sql, 2, maxint);
        DoApplyUpdateStatus1(hdo, sql);
      end;
    finally // wrap up
      //Filtered := False;
      //Filter := '';
      //Locate('LOT_ID', ALotNo, []);
      //EnableControls;
      //Screen.Cursor := crDefault;
    end; // try/finally
  end; // with

end;

procedure TfrmMain.DoApplyUpdateStatus1(hdo, sql: string);
begin
  with ClientDataSet_Temp do
  begin
    Close;
    params.clear;
    CommandText := 'Update PB_FINALID Set Status=' + IntToStr(Ord(bcsPrintLabel))
      + ', PrintDate = getdate()'
      + ' where HDO_NO=' + QuotedStr(hdo) + ' and LOT_ID in (' + sql + ') ';
    Execute;
  end; // with
end;

function TfrmMain.GetPOInfor(cono, lotid, itemcode: string): string;
var
  sql1, sql2: string;
begin
  Fpono := '';
  Fpoline := '';
  FbuyerSizeCup := '';
  FbuyerSizeCups := '';
  FgarmentColor := '';
  FendCustStyle := '';
  Fdept := '';
  FworkOrderNo := '';
  FProjectNo := '';
  with ADOQuery5 do //cdsReport_Temp
  begin
    Close;
    SQL.Clear;
    SQL.Add('select SubString(CH2T84,1,7) as PO,SubString(CH2T84,8,3) as POLine');
    SQL.Add('from ault4f1.app84');
    SQL.Add('where cono84=' + QuotedStr(cono) + ' and lotn84= ' + QuotedStr(lotid) + ' and PNUM84=' + QuotedStr(itemcode));
    Open;
    Fpono := FieldByName('PO').AsString;
    Fpoline := FieldByName('POLine').AsString;
  end;
  if (trim(Fpono) = '') or (trim(Fpoline) = '') then
  begin
    exit;
  end;

  sql1 := ' SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED'
    + ' select a.Company,a.Dept,b.WorkOrderNo,c.GarmentColor,c.CustStyleNo,b.OrderLine,c.SKU,a.PONO,b.ProjectNo,'
    + ' [PH.POPC].dbo.[GetBuyerSizeCup](a.Company,a.PONO,c.SKU,b.OrderLine) as BuyerSizeCup, '
    + ' [PH.POPC].dbo.[GetBuyerSizeCups](a.Company,a.PONO,c.SKU,b.OrderLine) as BuyerSizeCups '
    + ' FROM       [PH.POPC].[dbo].POHeader          AS a '
    + ' INNER JOIN [PH.POPC].[dbo].PODetail          AS b ON a.Company = b.Company AND a.PONO = b.PONO AND a.Version = b.Version AND a.AmendmentNo = b.AmendmentNo'
    + ' INNER JOIN [PH.POPC].[dbo].POColorSizeDetail AS c ON b.Company = c.Company AND b.PONO = c.PONO AND b.Version = c.Version AND b.AmendmentNo = c.AmendmentNo  And  b.OrderLine=c.OrderLine'
    + ' LEFT JOIN [PH.MIDc].[dbo].Detail AS d ON d.SuppRef=c.SupplierReference '
    + ' where a.VersionFlag=1 '
    + ' and  a.Company=' + QuotedStr(cono) + ' and a.pono=' + QuotedStr(Fpono) + ' and c.SKU=' + QuotedStr(itemcode) + ' and b.OrderLine=' + Fpoline;
  //showmessage(sql1);
  with ClientDataSet_Temp do
  begin
    Close;
    Params.Clear;
    CommandText := sql1;
    Open;
    //Coalesce(b.BuyerSizeCup,substring(a.ITEM_CODE,13,3))

    FbuyerSizeCup := FieldByName('BuyerSizeCup').AsString;
    FbuyerSizeCups := FieldByName('BuyerSizeCups').AsString;
    if (FbuyerSizeCup = '') then
    begin
      FbuyerSizeCup := Copy(itemcode, 13, 3);
      FbuyerSizeCups := FbuyerSizeCup;
    end;
    FgarmentColor := FieldByName('GarmentColor').AsString;
    FendCustStyle := FieldByName('CustStyleNo').AsString;
    Fdept := FieldByName('Dept').AsString;
    FworkOrderNo := FieldByName('WorkOrderNo').AsString;
    FProjectNo := FieldByName('ProjectNo').AsString;
  end; // with

  result := Fpono;
end;

procedure TfrmMain.DoApplyUpdateData;
begin
  if ClientDataSet1.ApplyUpdates(-1) = 0 then exit;
  with ClientDataSet_Temp do
  begin
    Close;
    params.clear;
    params.createparam(ftInteger, 'Status', ptinput);
    params.createparam(ftFloat, 'CUR_BAL', ptinput);
    params.createparam(ftstring, 'HDO_NO', ptinput);
    params.createparam(ftstring, 'ITEM_CODE', ptinput);
    params.createparam(ftstring, 'LOT_ID', ptinput);
    params.createparam(ftstring, 'STOCKROOM', ptinput);
    params.createparam(ftstring, 'COMPANY', ptinput);
    CommandText := ' Update PB_FINALID Set Status=:Status,CUR_BAL=:CUR_BAL'
      + ' where HDO_NO=:HDO_NO and ITEM_CODE=:ITEM_CODE and LOT_ID=:LOT_ID and STOCKROOM=:STOCKROOM and  COMPANY=:COMPANY ';
    Params.ParamByName('Status').AsInteger := ClientDataSet1.FieldByName('Status').AsInteger;
    Params.ParamByName('CUR_BAL').AsFloat := ClientDataSet1.FieldByName('CUR_BAL').AsFloat;
    Params.ParamByName('HDO_NO').AsString := ClientDataSet1.FieldByName('HDO_NO').AsString;
    Params.ParamByName('ITEM_CODE').AsString := ClientDataSet1.FieldByName('ITEM_CODE').AsString;
    Params.ParamByName('LOT_ID').AsString := ClientDataSet1.FieldByName('LOT_ID').AsString;
    Params.ParamByName('STOCKROOM').AsString := ClientDataSet1.FieldByName('STOCKROOM').AsString;
    Params.ParamByName('COMPANY').AsString := ClientDataSet1.FieldByName('COMPANY').AsString;
    Execute;
  end; // with
end;

procedure TfrmMain.btnReportClick(Sender: TObject);
var
  SavePlace: TBookMark;
begin
  inherited;
  if not CheckUserRight(cUrReport, TButton(Sender).Caption, UserRights) then exit;

  SavePlace := ClientDataSet1.GetBookmark;
  ClientDataSet1.DisableControls;
  try
    with RMGridReport1 do
    begin
      //LoadFromFile(ExtractFilePath(Application.ExeName) + 'FL.rls');
      LoadFromResourceName(hInstance, 'FL');
      //add Dictionary
      Dictionary.Clear;
      Dictionary.Variables.Insert(0, ' Global');
      Dictionary.Variables['NewRecord'] := FsNew;
      Dictionary.Variables['PrintLabel'] := FsPrintLabel;

      Dictionary.Variables.AsString['FReportTitle'] := GetLanguagesStr(13, 'PH Garment: Final Label Printing Report');
      Dictionary.Variables.AsString['FDate'] := GetLanguagesStr(23, 'Date', True);
      Dictionary.Variables.AsString['FTime'] := GetLanguagesStr(38, 'Time', True);
      Dictionary.Variables.AsString['FPage'] := GetLanguagesStr(47, 'Page', True);
      Dictionary.Variables.AsString['FStatus'] := GetLanguagesStr(12, 'Status', True);
      Dictionary.Variables.AsString['FItemCode'] := GetLanguagesStr(13, 'Item Code', True);
      Dictionary.Variables.AsString['FLotNumber'] := GetLanguagesStr(14, 'Lot Number', True);
      Dictionary.Variables.AsString['FUOM'] := GetLanguagesStr(15, 'UOM', True);
      Dictionary.Variables.AsString['FStockRoom'] := GetLanguagesStr(16, 'Stock Room', True);
      Dictionary.Variables.AsString['FCompanyCode'] := GetLanguagesStr(17, 'Company Code', True);
      Dictionary.Variables.AsString['FHDONumber'] := GetLanguagesStr(2, 'HDO Number');
      Dictionary.Variables.AsString['FOriginalQty'] := GetLanguagesStr(3, 'Original Qty');
      Dictionary.Variables.AsString['FCurrentBalance'] := GetLanguagesStr(4, 'Current Balance');
      Dictionary.Variables.AsString['FCopies'] := GetLanguagesStr(5, 'No of Copies');
      Dictionary.Variables.AsString['FRolls'] := GetLanguagesStr(6, 'No of Rolls');
      Dictionary.Variables.AsString['FMarkerWidth'] := GetLanguagesStr(7, 'Marker Width');
      Dictionary.Variables.AsString['FPurchaseUom'] := GetLanguagesStr(8, 'Purchase Uom');
      Dictionary.Variables.AsString['FLocation'] := GetLanguagesStr(73, 'Location', True);
      Dictionary.Variables.AsString['FPGMN'] := GetLanguagesStr(15, 'Material Type');

      SetReportCanDesign(RMGridReport1); //show design button
      RMDBDataSet1.DataSet := ClientDataSet1;
      ShowReport;
    end; // with
    ClientDataSet1.GotoBookmark(SavePlace);
  finally
    ClientDataSet1.FreeBookmark(SavePlace);
    ClientDataSet1.EnableControls;
  end;
end;

procedure TfrmMain.cxGrid1DBTableView1STATUSGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AInt: Integer;
begin
  inherited;
  AInt := StrToIntDef(AText, -1);
  case TbcStatus(AInt) of //
    bcsNew: AText := FsNew;
    bcsPrintLabel: AText := FsPrintLabel;
  end; // case
end;

procedure TfrmMain.btnDeleteClick(Sender: TObject);
var
  AHDONo: string;
begin
  inherited;
  if not CheckUserRight(cUrDelete, TButton(Sender).Caption, UserRights) then exit;

  //  if urAdmin in UserRights then
  //  begin
     //delete by a hdo_no
  with ClientDataSet2 do
  begin
    Close;
    CommandText := 'select distinct HDO_NO from PB_FINALID ORDER BY HDO_NO';
    Open;
  end; // with
  if DoDeleteData(AHDONo) then
  begin
    //      if Application.MessageBox(PChar(GetLanguagesStr(11, 'Can you sure to delete this HDO No.: ') + AHDONo + ' ?'),
    //        PChar(GetLanguagesStr(9, 'Question', True)), MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES then
    //      begin
    Screen.Cursor := crSQLWait;
    try
      ClientDataSet_Temp.Close;
      ClientDataSet_Temp.params.clear;
      ClientDataSet_Temp.CommandText := 'delete from PB_FINALID where HDO_NO=' + QuotedStr(AHDONo);
      ClientDataSet_Temp.Execute;

      ClientDataSet1.Close;
      ClientDataSet1.Open;
    finally // wrap up
      Screen.Cursor := crDefault;
    end; // try/finally
    //      end;
  end;
  //  end
  //  else //not have power to delete
  //    Application.MessageBox(PChar(GetLanguagesStr(8, 'Only the Adminstrator can Delete!', True)),
  //      PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
end;

procedure TfrmMain.cxGrid2DBTableView1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  //see help ---Grid View Elements--
  FCanDbClick := (Button = mbLeft) and
    (TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y).HitTestCode in [htCell]); //, htIndicator
end;

procedure TfrmMain.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if FCanDbClick then
  begin
    btnSelectClick(Sender);
  end;
end;

procedure TfrmMain.btnSelectClick(Sender: TObject);
begin
  inherited;
  pnl_select.Visible := False;
  Panel2.Visible := True;
  fHDO := ClientDataSet_Temp.FindField('HDO_NO').AsString;
  cxButtonEdit_HDO.Text := fHDO;
  cxButtonEdit_HDO.SetFocus;
  cxGrid2DBTableView1.DataController.DataSource := nil;
  if (cxCheckBox1.Checked) then
    GetFromAS400(fHDO, 'P1')
  else
    FilterFINALIDData(fHDO, cxCheckBox1.Checked);
end;

function TfrmMain.GetNewUpdatedQty(): boolean;
var
  ACONO, HDO, AHDOs: string;
begin
  with ClientDataSet_Temp do
  begin
    Close;
    Params.Clear;
    CommandText := 'SELECT distinct a.HDO_NO,a.COMPANY FROM PB_FINALID a where HDO_NO=' + QuotedStr(fHDO); //+ bcGetWhereSQL(ClientDataSet1.CommandText, '', '', True);
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
    SQL.Add('select cono80 as cono,strc80 as stockroom,locn80 as LotNo,pnum80 as ItemCode,sphy80 as CurrQty');
    SQL.Add(',SubString(CH2T84,1,7) as PO,CH3T84 as Project,SubString(CH2T84,8,3) as POLine');
    SQL.Add('from ault2f1.inp80,ault4f1.app84');
    SQL.Add('where cono80=cono84 and pnum80=pnum84 and locn80=lotn84 ' + AHDOs);
    Open;
    result := RecordCount <> 0;
  end;
end;

procedure TfrmMain.FilterFINALIDData(HDO_NO: string; bUpdate: boolean);
var
  aSQL, sWhere: string;
  aCURR_QTY: Double;
  CompanyNo, Barcode, ItemCode, ST: string;
  //  vParam: Variant;
  poline: integer;
begin
  fHDO := HDO_NO;
  with ClientDataSet1 do
  begin
    Filtered := False;
    Filter := '';
    DisableControls;
    Screen.Cursor := crSQLWait;
    Application.ProcessMessages;
    try
      //1.get sql
      sWhere := ' WHERE (a.HDO_NO=' + QuotedStr((HDO_NO)) + ')'; // bcGetWhereSQL(ClientDataSet1.CommandText, 'a.HDO_NO', HDO_NO);
      if bUpdate then
      begin
        //get the new CUR_BAL from erp
        Close;
        CommandText := 'SELECT * FROM PB_FINALID a WHERE (a.HDO_NO=' + QuotedStr((HDO_NO)) + ')';
        Open;
        if RecordCount <> 0 then //if1
        begin
          //vParam := GetUpdatedQty(ClientDataSet1, RecordCount);
          if GetNewUpdatedQty then //if2
          begin
            First;
            while not Eof do
            begin
              CompanyNo := FieldByName('COMPANY').AsString;
              Barcode := FieldByName('LOT_ID').AsString;
              ItemCode := FieldByName('ITEM_CODE').AsString;
              ST := FieldByName('StockRoom').AsString;

              aCURR_QTY := 0;
              if ADOQuery1.Locate('cono;LotNo;ItemCode;STOCKROOM', VarArrayOf([CompanyNo, Barcode, ItemCode, ST]), []) then
              begin
                aCURR_QTY := ADOQuery1.FieldByName('CurrQty').AsFloat;
                //aCURR_QTY := GetCurrQtyOfArray(CompanyNo, Barcode, ItemCode, ST);
                Edit;
                FieldByName('Project').AsString := ADOQuery1.FieldByName('Project').AsString;
                FieldByName('PO').AsString := ADOQuery1.FieldByName('PO').AsString;
                poline := StrToIntDef(ADOQuery1.FieldByName('POLine').AsString, 0);
                if (poline <> 0) then
                  FieldByName('POLine').AsInteger := poline;
                if FieldByName('CUR_BAL').AsFloat <> aCURR_QTY then
                begin
                  FieldByName('CUR_BAL').AsFloat := aCURR_QTY;
                end;

                Post;
                DoApplyUpdateData;
              end;

              Next;
            end; // while
          end; //if2
        end; //if1
      end;
      //3.show data
      Close;
      //aSQL := 'SELECT * FROM PB_FINALID a';
      //aSQL := aSQL + ' ' + sWhere;
      //aSQL := aSQL + ' ORDER BY a.HDO_NO';

      aSQL := ' SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED'
        + ' select  a.*,b.Dept,b.WorkOrderNo,b.GarmentColor,b.CustStyleNo,b.OrderLine,'
        + 'Coalesce(b.BuyerSizeCup,substring(a.ITEM_CODE,13,3)) as BuyerSizeCup,'
        + 'Coalesce(b.BuyerSizeCups,substring(a.ITEM_CODE,13,3)) as BuyerSizeCups';
      aSQL := aSQL + ' from PB_FINALID a left join ('
        + ' select a.Company,a.Dept,b.WorkOrderNo,c.GarmentColor,c.CustStyleNo,b.OrderLine,c.SKU,a.PONO,'
        + ' [PH.POPC].dbo.[GetBuyerSizeCup](a.Company,a.PONO,c.SKU,b.OrderLine) as BuyerSizeCup, '
        + ' [PH.POPC].dbo.[GetBuyerSizeCups](a.Company,a.PONO,c.SKU,b.OrderLine) as BuyerSizeCups ';
      aSQL := aSQL + ' FROM       [PH.POPC].[dbo].POHeader          AS a '
        + ' INNER JOIN [PH.POPC].[dbo].PODetail          AS b '
        + ' ON a.Company = b.Company AND a.PONO = b.PONO AND a.Version = b.Version AND a.AmendmentNo = b.AmendmentNo'
        + ' INNER JOIN [PH.POPC].[dbo].POColorSizeDetail AS c '
        + ' ON b.Company = c.Company AND b.PONO = c.PONO AND b.Version = c.Version AND b.AmendmentNo = c.AmendmentNo'
        + ' And  b.OrderLine=c.OrderLine'
        + ' LEFT JOIN [PH.MIDc].[dbo].Detail AS d ON d.SuppRef=c.SupplierReference ';
      aSQL := aSQL + ' where a.VersionFlag=1) b '
        + ' ON  b.Company=a.Company and b.pono=a.PO and b.SKU=a.ITEM_CODE and b.OrderLine=a.POLine'
        + ' where (a.HDO_NO=' + QuotedStr(HDO_NO) + ')'
        + ' ORDER BY a.HDO_NO,a.ITEM_CODE,a.LOT_ID';

      CommandText := aSQL;
      Open;
    finally // wrap up
      EnableControls;
      Screen.Cursor := crDefault;
    end; // try/finally
    DoSelectRecord(False);
  end; // with
end;

procedure TfrmMain.btnCancelClick(Sender: TObject);
begin
  inherited;
  pnl_select.Visible := False;
  Panel2.Visible := True;
  cxButtonEdit_HDO.SetFocus;
  cxGrid2DBTableView1.DataController.DataSource := nil;
end;

procedure TfrmMain.cxButtonEdit_HDOPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  pnl_select.Visible := True;
  pnl_select.Top := cxGroupBox1.Top + 5;
  pnl_select.Left := cxGroupBox2.Left + cxGroupBox2.Width + 5;
  Panel2.Visible := False;
  Application.ProcessMessages;
  Screen.Cursor := crSQLWait;
  try
    with ClientDataSet_Temp do
    begin
      Close;
      params.clear;
      CommandText := 'select distinct HDO_NO from PB_FINALID  ORDER BY HDO_NO';
      Open;
      cxGrid2DBTableView1.DataController.DataSource := DataSource_Temp;
    end; // with
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

procedure TfrmMain.cxButtonEdit_HDOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) and (Shift = []) then
  begin
    FilterFINALIDData(cxButtonEdit_HDO.Text, false);
  end;
end;

procedure TfrmMain.ClientDataSet1AfterOpen(DataSet: TDataSet);
begin
  inherited;
  btnPrintLabel.Enabled := False;
  btnReport.Enabled := True;
  btnSelectAll.Enabled := True;
  btnSelectNone.Enabled := True;
  btnClearAll.Enabled := True;
  btnDefaultSelect.Enabled := True;
end;

procedure TfrmMain.ClientDataSet1AfterClose(DataSet: TDataSet);
begin
  inherited;
  //  btnPrintLabel.Enabled := False;
  btnReport.Enabled := False;
  btnSelectAll.Enabled := False;
  btnSelectNone.Enabled := False;
  btnClearAll.Enabled := False;
  btnDefaultSelect.Enabled := False;
  SelectRowCount := 0;
end;

procedure TfrmMain.SetSelectRowCount(Value: Integer);
begin
  FSelectRowCount := Value;
  btnPrintLabel.Enabled := FSelectRowCount > 0;
end;

procedure TfrmMain.DoSelectRecord(bAll: boolean);
var
  SavePlace: TBookMark;
  I, itemIndex, recordIndex: Integer;
begin
  inherited;
  with ClientDataSet1 do
  begin
    DisableControls;
    SavePlace := GetBookmark;
    try
      First;
      while not Eof do
      begin
        //        if bAll then
        //        begin
        //          if not FieldByName('IsCheck').AsBoolean then
        //            Inc(FSelectRowCount)
        //        end
        //        else
        //        begin
        //          if FieldByName('IsCheck').AsBoolean then
        //            Dec(FSelectRowCount);
        //        end;
        if FieldByName('IsCheck').AsBoolean <> bAll then
        begin
          Edit;
          FieldByName('IsCheck').AsBoolean := bAll;
          Post;
        end;
        Next;
      end; // while
    finally // wrap up
      if bAll then
        SelectRowCount := RecordCount
      else
        SelectRowCount := 0;
      GotoBookmark(SavePlace);
      FreeBookmark(SavePlace);
      EnableControls;
    end; // try/finally
  end; // with
end;

procedure TfrmMain.btnSelectAllClick(Sender: TObject);
begin
  inherited;
  DoSelectRecord(True);
end;

procedure TfrmMain.btnSelectNoneClick(Sender: TObject);
begin
  inherited;
  DoSelectRecord(False);
end;

procedure TfrmMain.btnClearAllClick(Sender: TObject);
begin
  inherited;
  ClientDataSet1.Close;
  ClientDataSet1.CommandText := '';
  //  FSelectRowCount := 0;
end;

procedure TfrmMain.cxGrid1DBTableView1IsCheckPropertiesEditValueChanged(
  Sender: TObject);
begin
  //inherited;
  if ClientDataSet1.FieldByName('IsCheck').AsBoolean then
    Inc(FSelectRowCount)
  else
    Dec(FSelectRowCount);
  SelectRowCount := FSelectRowCount;
end;

procedure TfrmMain.cxGrid1DBTableView1STATUSGetFilterDisplayText(
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
    bcsPrintLabel: ADisplayText := FsPrintLabel;
  end; // case
end;

procedure TfrmMain.Panel1Resize(Sender: TObject);
begin
  inherited;
  Panel_ColorTips.Left := TPanel(Sender).Width - Panel_ColorTips.Width - 10;
end;

procedure TfrmMain.btnDefaultSelectClick(Sender: TObject);
begin
  inherited;
  with ClientDataSet1 do
  begin
    DoSelectRecord(False);
    DisableControls;
    try
      Filtered := False;
      Filter := 'STATUS=0';
      Filtered := True;
      First;
      while not eof do
      begin
        Edit;
        FieldByName('IsCheck').AsBoolean := True;
        Post;
        Next;
      end;
      SelectRowCount := RecordCount;
    finally // wrap up
      First;
      Filtered := False;
      Filter := '';
      EnableControls;
    end; // try/finally
  end; //withend;

end;

{
procedure TfrmMain.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARec: TRect;
  ATextToDraw: string;
  IsPrint, IsPrint_Index: Integer;
  AColor: TColor;

  procedure SetTextToDraw;
  begin
    ATextToDraw := AViewInfo.GridRecord.DisplayTexts[AViewInfo.Item.Index];
  end;
begin
  inherited;
  //1---Bounds
  SetTextToDraw;
  ARec := AViewInfo.Bounds;

  //2--get Column Index
  IsPrint_Index := TcxGridDBTableView(Sender).GetColumnByFieldName('Status').Index;
  //  ACanvas.Canvas.Brush.Style := bsSolid;
  if VarIsNull(AViewInfo.GridRecord.Values[IsPrint_Index]) then
    IsPrint := 0
  else
    IsPrint := VarAsType(AViewInfo.GridRecord.Values[IsPrint_Index], varInteger);
  //3--set color
  case IsPrint of //
    0: AColor := clbcNew;
    2: AColor := clbcPrintLabel;
  else
    AColor := clbcNew;
  end; // case

  ACanvas.Canvas.Font.Color := clWindowText;
  //  end;
    //4--set canvas
  ACanvas.Canvas.Brush.Color := AColor;
  ACanvas.Canvas.FillRect(ARec);
  //5--draw
  SetBkMode(ACanvas.Canvas.Handle, TRANSPARENT);
  ACanvas.DrawText(ATextToDraw, AViewInfo.Bounds, 0);
end;
}
end.

