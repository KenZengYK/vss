unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmBase, cxStyles, DB, DBClient, uTools, ExtCtrls, cxContainer,
  cxEdit, cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, RM_E_llPDF, RM_Common, RM_Class, RM_e_main, Math,
  RM_e_Xls, RM_Dataset, RM_DsgGridReport, RM_GridReport, ADODB, ShellAPI,
  cxLookAndFeels, cxTextEdit, cxMaskEdit, cxButtonEdit, cxLabel,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCurrencyEdit, cxCheckBox, cxLookAndFeelPainters;

type
  TfrmMain = class(TfrmBase)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1COUNT_NO: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1LOT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1COMPUTER_QTY: TcxGridDBColumn;
    cxGrid1DBTableView1COUNTED_QTY: TcxGridDBColumn;
    cxGrid1DBTableView1UOM: TcxGridDBColumn;
    cxGrid1DBTableView1STOCKROOM: TcxGridDBColumn;
    cxGrid1DBTableView1COMPANY: TcxGridDBColumn;
    cxGrid1DBTableView1COUNT_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1RANDOM_TAKE: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1RECORD_CREATED_DATE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    Panel1: TPanel;
    btnUpdateQty: TcxButton;
    RMGridReportDesigner1: TRMGridReportDesigner;
    RMDBDataSet1: TRMDBDataSet;
    RMXLSExport1: TRMXLSExport;
    RMllPDFExport1: TRMllPDFExport;
    cxStyle4: TcxStyle;
    ADOQuery1: TADOQuery;
    dsZphlib: TDataSource;
    cxGrid1DBTableView1ERPSuccess: TcxGridDBColumn;
    cxGroupBox5: TcxGroupBox;
    cxButtonEdit_CountNo: TcxButtonEdit;
    pnl_select: TPanel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1Count_NO: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    Panel2: TPanel;
    btnFromSystem21: TcxButton;
    btnToHandHeld: TcxButton;
    btnFromHandHeld: TcxButton;
    btnToSystem21: TcxButton;
    btnReport: TcxButton;
    btnDelete: TcxButton;
    btnRefreshUploadtoERPStatus: TcxButton;
    btnClearAll: TcxButton;
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
    RMGridReport1: TRMGridReport;
    btnPHISFromHandHeld: TcxButton;
    cdsPHIS: TClientDataSet;
    ADOQuery2: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure btnFromSystem21Click(Sender: TObject);
    procedure btnToSystem21Click(Sender: TObject);
    procedure btnToHandHeldClick(Sender: TObject);
    procedure btnFromHandHeldClick(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnUpdateQtyClick(Sender: TObject);
    procedure cxGrid1DBTableView1STATUSGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure ClientDataSet1AfterScroll(DataSet: TDataSet);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure ClientDataSet2AfterPost(DataSet: TDataSet);
    procedure cxGrid1DBTableView1COUNT_DATEGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGrid1DBTableView1STATUSGetFilterDisplayText(
      Sender: TcxCustomGridTableItem; const AValue: Variant;
      var ADisplayText: string);
    procedure cxGrid1DBTableView1ERPSuccessGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure btnRefreshUploadtoERPStatusClick(Sender: TObject);
    procedure cxButtonEdit_CountNoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure cxGrid3DBTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure ClientDataSet1AfterOpen(DataSet: TDataSet);
    procedure ClientDataSet1AfterClose(DataSet: TDataSet);
    procedure cxButtonEdit_CountNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel1Resize(Sender: TObject);
    procedure btnPHISFromHandHeldClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    {FNew, FToHandHeld, FFromHandHeld, FSystem21,}FRandomChecked, FYes, FNO: string;
    //    FSuccess, FError: string;
    FsNew, FsSystem21, FsPrintLabel, FsToHandHeld, FsFromHandHeld, FsIDOConfirmed: string;
    FsErpUpload, FsToErpBlank, FsToErpFail, FsToErpSuccess: string;
    FUpdatePHIS_Success, FUpdatePHIS_NotSuccess, FUpdatePHIS_HaveUpdated, FUpdatePHIS_NotExists, FUpdatePHIS_HaveToERP: TStringList;

    FCanDbClick: boolean;
    procedure DoApplyUpdateData(DataSet: TDataSet);
    procedure DoApplyUpdateStockTakeErpSuccess(conoi, istri, compi, locni,COUNT_NO: string; bErpSuccess: boolean);
    procedure FilterCountData(ACount_NO: string);
    procedure SetBtnEnable(bEnable: boolean);
    procedure SetBKColor;
    function UpdatePHISID(LotNumber: string; PHIS_LotNumber: string): boolean;
    procedure FreeUpdatePHISList;
    procedure CreateUpdatePHISList;
    procedure ShowUpdatePHISIDInfor;
    procedure InsertToERPTemp_Refresh(DataSet: TDataSet; DT: Integer; TM: string);
  public
    { Public declarations }
    procedure SetLanguageStr; override;
  end;

var
  frmMain: TfrmMain;
function DoGenerateHandHeldFile_ST(AFileName: string): Integer;
function DoInsertFromHandHeldData_ST(AFileName: string): boolean;
function DoInsertFromPHISHandHeldData_ST(AFileName: string): boolean;

implementation

uses ufrmDialog;

{$R *.dfm}

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  SetLanguageStr;
  SetBKColor;
  //  with ClientDataSet1 do
  //  begin
  //    Close;
  //    CommandText := 'select * from PB_COUNT';
  //    Open;
  //  end; // with
  ADOQuery1.Connection := ZPHLIB;
  ADOQuery2.Connection := ZPHLIB;
  cdsPHIS.RemoteServer := SCN;
  SetBtnEnable(False);
  //  cxGrid1DBTableView1RANDOM_TAKE.Options.Editing := urAdmin in UserRights;
  //  if (urAdmin in UserRights) then
  //    cxGrid1DBTableView1RANDOM_TAKE.Styles.Content := cxStyle4;
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
  RUnit := 'Stock Take';
  cxGrid1DBTableView1COUNT_NO.Caption := GetLanguagesStr(1, 'Count No.');
  cxGroupBox5.Caption := GetLanguagesStr(1, 'Count No.');
  cxGrid3DBTableView1Count_NO.Caption := GetLanguagesStr(1, 'Count No.');
  cxGrid1DBTableView1COUNTED_QTY.Caption := GetLanguagesStr(2, 'Counted QTY');
  cxGrid1DBTableView1RANDOM_TAKE.Caption := GetLanguagesStr(3, 'Random Check') + '?';
  //  btnRandomCheck.Caption := GetLanguagesStr(3, 'Random Check');
  btnUpdateQty.Caption := GetLanguagesStr(4, 'Update Qty');

  cxGrid1DBTableView1ITEM_CODE.Caption := GetLanguagesStr(13, 'Item Code', True);
  cxGrid1DBTableView1LOT_ID.Caption := GetLanguagesStr(14, 'Lot Number', True);
  cxGrid1DBTableView1COMPUTER_QTY.Caption := GetLanguagesStr(22, 'Quantity', True);
  cxGrid1DBTableView1UOM.Caption := GetLanguagesStr(15, 'UOM', True);
  cxGrid1DBTableView1STOCKROOM.Caption := GetLanguagesStr(16, 'Stockroom', True);
  cxGrid1DBTableView1COMPANY.Caption := GetLanguagesStr(17, 'Company', True);
  cxGrid1DBTableView1COUNT_DATE.Caption := GetLanguagesStr(10, 'Stock Take Date');
  cxGrid1DBTableView1STATUS.Caption := GetLanguagesStr(12, 'Status', True);
  cxGrid1DBTableView1Location.Caption := GetLanguagesStr(73, 'Location', True);

  btnFromSystem21.Caption := GetLanguagesStr(1, 'System 21', True);
  btnFromSystem21.Hint := GetLanguagesStr(40, 'Transfer data From System 21', True);
  btnToHandHeld.Caption := GetLanguagesStr(103, 'HandHeld', True);
  btnToHandHeld.Hint := GetLanguagesStr(43, 'Transfer data to HandHeld', True);
  btnFromHandHeld.Caption := GetLanguagesStr(104, 'HandHeld', True);
  btnFromHandHeld.Hint := GetLanguagesStr(42, 'Transfer data From HandHeld', True);

  btnPHISFromHandHeld.Caption := GetLanguagesStr(124, 'PHIS HandHeld', True);
  btnPHISFromHandHeld.Hint := GetLanguagesStr(125, 'Transfer data From PHIS HandHeld', True);

  btnToSystem21.Caption := GetLanguagesStr(51, 'System 21', True);
  btnToSystem21.Hint := GetLanguagesStr(41, 'Transfer data To System 21', True);
  btnReport.Caption := GetLanguagesStr(3, 'Report', True);
  btnDelete.Caption := GetLanguagesStr(2, 'Delete', True) + '..';

  //  FNew := GetLanguagesStr(100, 'New', True);
  //  FToHandHeld := GetLanguagesStr(103, '>>HandHeld', True);
  //  FFromHandHeld := GetLanguagesStr(104, 'HandHeld>>', True);
  //  FSystem21 := GetLanguagesStr(101, '>>System21', True);
  FRandomChecked := GetLanguagesStr(112, 'Random Checked', True);
  FYes := GetLanguagesStr(24, 'YES', True);
  FNO := GetLanguagesStr(25, 'NO', True);
  cxButton1.Caption := GetLanguagesStr(39, 'Select', True);
  cxButton3.Caption := GetLanguagesStr(11, 'Cancel', True);
  btnClearAll.Caption := GetLanguagesStr(60, 'Clear All', True);

  btnRefreshUploadtoERPStatus.Caption := GetLanguagesStr(67, 'Refresh Upload to', True) + #10#13 + GetLanguagesStr(68, ' ERP Status', True);
  cxGrid1DBTableView1ERPSuccess.Caption := GetLanguagesStr(69, 'Upload ERP', True);
  //  FSuccess := GetLanguagesStr(66, 'Success', True);
  //  FError := GetLanguagesStr(63, 'Fail', True);

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
end;

procedure TfrmMain.btnFromSystem21Click(Sender: TObject);
var
  vData, vParam: Variant;
  CountNO, CONO, AStr: string;
  I: Integer;
begin
  inherited;
  if not CheckUserRight(cUrFromERP, TButton(Sender).Caption, UserRights) then exit;

  if not DoSelectCountNOData(CountNO, CONO) then exit;

  Screen.Cursor := crSQLWait;
  //  ClientDataSet1.Close;
  try
    with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      //      SQL.Add('select distinct strc58,pnum77,ltno77,sphy80,sunt35');
      //      SQL.Add('from ault2f1.inp58,ault2f1.inp77,ault2f1.inp80,ault2f1.inp35');
      //      SQL.Add('where cono58=cono77 and ctno58=ctno77 and strc58=strc77 and cono58=cono80 and strc58=strc80');
      //      SQL.Add('and pnum77=pnum80 and ltno77=locn80 and cono58=cono35 and pnum77=pnum35 '); //and strc77=strc35
      //      SQL.Add('and Upper(cono58)=' + QuotedStr(CONO) + ' and ctno58=' + CountNO);
      SQL.Add('select distinct strc58,pnum77,ltno77,sphy80,sunt35,ch9t84 as Location');
      SQL.Add('from ault2f1.inp58,ault2f1.inp77,ault2f1.inp80,ault2f1.inp35,ault4f1.app84');
      SQL.Add('where cono58=cono77 and ctno58=ctno77 and strc58=strc77 and cono58=cono80 and strc58=strc80');
      SQL.Add('and pnum77=pnum80 and ltno77=locn80 and cono58=cono35 and pnum77=pnum35 '); //and strc77=strc35
      SQL.Add('and cono84=cono80 and lotn84=locn80  and pnum84=pnum80');
      SQL.Add('and Upper(cono58)=' + QuotedStr(CONO) + ' and ctno58=' + CountNO);

      Open;
      if RecordCount = 0 then exit;
      vData := VarArrayCreate([0, RecordCount - 1], varVariant);
      I := 0;
      First;
      while not eof do
      begin
        vData[I] := VarArrayOf([
          Fields[0].AsString,
            Fields[1].AsString,
            Fields[2].AsString,
            Fields[3].AsString,
            Fields[4].AsString,
            Fields[5].AsString]);
        Inc(I);
        Next;
      end; // while
    end; //with
    vParam := VarArrayCreate([0, 1], varVariant);
    vParam[0] := CountNO;
    vParam[1] := CONO;

    SCN.AppServer.GetDataFromERP(ord(ftPB_COUNTSheet), vParam, vData);
    if (vParam[0] = 0) and (vParam[1] = 0) then
      AStr := GetLanguagesStr(44, 'No Data', True)
    else if (vParam[0] <> 0) or (vParam[1] <> 0) then
    begin
      AStr := '[' + GetLanguagesStr(40, 'Transfer data From System 21', True) + '] ' + GetLanguagesStr(20, 'Finish', True);
      //      if vParam[0] <> 0 then AStr := AStr + #13#10 + GetLanguagesStr(45, 'Updated : ', True) + IntToStr(vParam[0]);
      //      if vParam[1] <> 0 then AStr := AStr + #13#10 + GetLanguagesStr(46, 'Inserted: ', True) + IntToStr(vParam[1]);
    end;
  finally // wrap up
    //    ClientDataSet1.Open;
    FilterCountData(CountNO);
    Screen.Cursor := crDefault;
    if AStr <> '' then
      Application.MessageBox(PChar(AStr),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation)
        //    else
//      ShowMessage('Not Find File');
  end; // try/finally
end;

procedure TfrmMain.btnToSystem21Click(Sender: TObject);
var
  vParam, bFinish: Variant;
  CountNo: string;
begin
  inherited;
  if not CheckUserRight(cUrToERP, TButton(Sender).Caption, UserRights) then exit;
  with ClientDataSet2 do
  begin
    Close;
    CommandText := 'select distinct COUNT_NO from PB_COUNT ' + bcGetWhereSQL(ClientDataSet1.CommandText, '', '', True)
      + '  order by COUNT_NO';
    //    CommandText := 'select distinct COUNT_NO from PB_COUNT where Status=' + IntToStr(Ord(bcsFromHandHeld))
    //      + ' and COUNTED_QTY>0  order by COUNT_NO';
    Open;
  end; // with
  if not DoSelectCountNo(CountNo) then exit;

  //  if (Application.MessageBox(PChar(GetLanguagesStr(18, 'Are you sure to Transfer data to System 21?', True)),
  //    PChar(GetLanguagesStr(5, 'Tips', True)), MB_YESNO + MB_ICONInformation) = IDNO) then exit;

  Screen.Cursor := crSQLWait;
  //  ClientDataSet1.Close;
  try
    vParam := VarArrayCreate([0, 0], varVariant);
    vParam[0] := CountNo;

    SCN.AppServer.UpdateDataToERP(ord(ftPB_COUNTDetail), vParam, bFinish);
  finally // wrap up
    //    ClientDataSet1.Open;
    FilterCountData(CountNo);
    Screen.Cursor := crDefault;
    if bFinish = -1 then
      Application.MessageBox(PChar('[' + GetLanguagesStr(41, 'Transfer data To System 21', True) + '] ' + GetLanguagesStr(63, 'Fail', True)
        + #10#13 + GetLanguagesStr(64, 'Reason', True) + ':' + GetLanguagesStr(65, 'FTP Connect unsuccessful', True)),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONError)
    else
      Application.MessageBox(PChar('[' + GetLanguagesStr(41, 'Transfer data To System 21', True) + '] ' + GetLanguagesStr(20, 'Finish', True)),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
  end; // try/finally
end;

function DoGenerateHandHeldFile_ST(AFileName: string): Integer;
var
  F: TextFile;
  LotNumber: string[15];
  CountNo7: string[7];
  STATUS: Integer;
begin
  //  result := -1; // -1 -- fail, 0 -- not data, 1 -- have data
  AssignFile(F, AFileName);
  ReWrite(F);
  try
    with frmMain.ClientDataSet2 do
    begin
      First;
      while not EOF do
      begin
        STATUS := FieldByName('STATUS').AsInteger;
        if (STATUS = Ord(bcsNew)) or (STATUS = Ord(bcsToHandHeld)) then
        begin
          CountNo7 := bcGetStringStr(FieldByName('COUNT_NO').AsString, 7);
          LotNumber := bcGetStringStr(FieldByName('LOT_ID').AsString, 15);
          Writeln(F, CountNo7, LotNumber);
        end;
        Next;
      end; // while
    end; // with
    result := 1;
  finally // wrap up
    CloseFile(F);
  end; // try/finally
end;

procedure TfrmMain.btnToHandHeldClick(Sender: TObject);

  function UpdateState: boolean;
  begin
    //    ClientDataSet1.Close;
    try
      with ClientDataSet2 do
      begin
        First;
        while not EOF do
        begin
          Edit;
          FieldByName('STATUS').AsInteger := Ord(bcsToHandHeld);
          //FieldByName('COUNT_DATE').AsDateTime := Now;
          Post;
          //if ApplyUpdates(-1) > 0 then DoApplyUpdateData(ClientDataSet2);
          Next;
        end; // while
      end; // with
    finally // wrap up
      //      ClientDataSet1.Open;
    end; // try/finally
  end;

var
  AFileName, ACountNo: string;
  iRet: Integer;
begin
  inherited;
  if not CheckUserRight(cUrToHandHeld, TButton(Sender).Caption, UserRights) then exit;
  //select a Count No.
  with ClientDataSet2 do
  begin
    Close;
    CommandText := 'select distinct COUNT_NO from PB_COUNT '
      + bcGetWhereSQL(ClientDataSet1.CommandText, '', '', True) + '  order by COUNT_NO';
    //    CommandText := 'select distinct COUNT_NO from PB_COUNT where Status=' + IntToStr(Ord(bcsNew))
    //      + ' Or Status=' + IntToStr(Ord(bcsToHandHeld))
    //      + '  order by COUNT_NO';
    Open;
  end; // with
  if not DoSelectCountNo(ACountNo) then exit;
  //sure to..
//  if (Application.MessageBox(PChar(GetLanguagesStr(4, 'Are you sure to transfer data to HandHeld?', True)
//    + #13#10#13#10 + GetLanguagesStr(33, 'Tip : Only New Or >>HandHeld record can be transferred', True)),
//    PChar(GetLanguagesStr(5, 'Tips', True)), MB_YESNO + MB_ICONInformation) = IDNO) then exit;
  Screen.Cursor := crSQLWait;
  try
    //get the sent to HandHeld data
    with ClientDataSet2 do
    begin
      Close;
      CommandText := 'select * from PB_COUNT where COUNT_NO=' + QuotedStr(ACountNo) + ' and (Status=' + IntToStr(Ord(bcsNew))
        + ' Or Status=' + IntToStr(Ord(bcsToHandHeld)) + ')'
        + '  order by COUNT_NO';
      Open;
      if RecordCount = 0 then
        exit;
    end; // with

    //upload data to HandHeld
    AFileName := 'MSTKTAKE.txt';
    iRet := ToHandHeld(AFileName, ComPort, @DoGenerateHandHeldFile_ST);
  finally
    Screen.Cursor := crDefault;
  end;
  case iRet of //
    0: ; //ShowMessage('Error');
    1:
      begin
        //  update state
        UpdateState;
        FilterCountData(ACountNo);
        Application.MessageBox(PChar('[' + GetLanguagesStr(43, 'Transfer data to HandHeld', True) + '] ' + GetLanguagesStr(20, 'Finish', True)),
          PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation)
      end;
    2:
      Application.MessageBox(PChar(GetLanguagesStr(34, 'HandHeld is not ready,plese check the HandHeld.', True)),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
  end;

end;

procedure TfrmMain.DoApplyUpdateData(DataSet: TDataSet);
begin
  with ClientDataSet_Temp do
  begin
    Close;
    params.clear;
    params.createparam(ftInteger, 'Status', ptinput);
    //    if not DataSet.FieldByName('COUNT_DATE').IsNull then
    params.createparam(ftDate, 'COUNT_DATE', ptinput);
    params.createparam(ftFloat, 'COUNTED_QTY', ptinput);
    //    params.createparam(ftBoolean, 'RANDOM_TAKE', ptinput);
    params.createparam(ftstring, 'COUNT_NO', ptinput);
    params.createparam(ftstring, 'ITEM_CODE', ptinput);
    params.createparam(ftstring, 'LOT_ID', ptinput);
    params.createparam(ftstring, 'STOCKROOM', ptinput);
    params.createparam(ftstring, 'COMPANY', ptinput);
    //    if not DataSet.FieldByName('COUNT_DATE').IsNull then
    CommandText := ' Update PB_COUNT Set Status=:Status,COUNT_DATE=:COUNT_DATE,COUNTED_QTY=:COUNTED_QTY'
      + ' where COUNT_NO=:COUNT_NO and  ITEM_CODE=:ITEM_CODE and  LOT_ID=:LOT_ID and STOCKROOM=:STOCKROOM  and COMPANY=:COMPANY ';
    //    else
    //      CommandText := ' Update PB_GATEPASS Set Status=:Status,COUNTED_QTY=:COUNTED_QTY'
    //        + ' where COUNT_NO=:COUNT_NO and  ITEM_CODE=:ITEM_CODE and  LOT_ID=:LOT_ID and STOCKROOM=:STOCKROOM  and COMPANY=:COMPANY ';

    Params.ParamByName('Status').AsInteger := DataSet.FieldByName('Status').AsInteger;
    //    if not DataSet.FieldByName('COUNT_DATE').IsNull then
    Params.ParamByName('COUNT_DATE').Value := DataSet.FieldByName('COUNT_DATE').Value;
    //    else
    //      Params.ParamByName('COUNT_DATE').Clear;
    Params.ParamByName('COUNTED_QTY').AsFloat := RoundTo(DataSet.FieldByName('COUNTED_QTY').AsFloat, -3);
    //    Params.ParamByName('RANDOM_TAKE').AsBoolean := DataSet.FieldByName('RANDOM_TAKE').AsBoolean;

    Params.ParamByName('COUNT_NO').AsString := DataSet.FieldByName('COUNT_NO').AsString;
    Params.ParamByName('ITEM_CODE').AsString := DataSet.FieldByName('ITEM_CODE').AsString;
    Params.ParamByName('LOT_ID').AsString := DataSet.FieldByName('LOT_ID').AsString;
    Params.ParamByName('STOCKROOM').AsString := DataSet.FieldByName('STOCKROOM').AsString;
    Params.ParamByName('COMPANY').AsString := DataSet.FieldByName('COMPANY').AsString;
    Execute;
  end; // with
end;

function DoInsertFromHandHeldData_ST(AFileName: string): boolean;
var
  F: TextFile;
  LotNumber: string[15];
  CountNo: string[7];
  AFilter, ACountNo_Temp: string;
begin
  result := False;
  if not FileExists(AFileName) then exit;

  AssignFile(F, AFileName);
  ReSet(F);
  with frmMain.ClientDataSet1 do
  begin
    DisableControls;
    AFilter := Filter;
    Filtered := False;
    try
      ACountNo_Temp := '';
      while not System.EOF(F) do
      begin
        Readln(F, CountNo, LotNumber);
        CountNo := Trim(CountNo);
        //LotNumber := (LotNumber);
        if ACountNo_Temp <> CountNo then
        begin
          frmMain.FilterCountData(CountNo);
          ACountNo_Temp := CountNo;
        end;
        if Locate('COUNT_NO;LOT_ID',
          VarArrayOf([CountNo, LotNumber]), []) then
        begin
          Edit;
          FieldByName('STATUS').AsInteger := Ord(bcsFromHandHeld);
          FieldByName('COUNT_DATE').AsDateTime := Date;
          Post;
          //if ApplyUpdates(-1) > 0 then frmMain.DoApplyUpdateData(frmMain.ClientDataSet1);
        end;
      end; // while
    finally // wrap up
      if AFilter <> '' then
      begin
        Filtered := False;
        Filter := AFilter;
        Filtered := True;
      end;
      EnableControls;
      CloseFile(F);
    end; // try/finally
  end; // with
end;

function DoInsertFromPHISHandHeldData_ST(AFileName: string): boolean;
var
  F: TextFile;
  PHIS_LotNumber: string[12];
  LotNumber: string[15];
begin
  result := False;
  if not FileExists(AFileName) then exit;

  AssignFile(F, AFileName);
  ReSet(F);
  with frmMain.ClientDataSet1 do
  begin
    DisableControls;
    try
      while not System.EOF(F) do
      begin
        Readln(F, PHIS_LotNumber);
        //if Length(PHIS_LotNumber) < 15 then
        LotNumber := PHIS_LotNumber + '-00';
        if Locate('LOT_ID', LotNumber, []) then
        begin
          if (FieldByName('STATUS').AsInteger = Ord(bcsToHandHeld))
            or (FieldByName('STATUS').AsInteger = Ord(bcsNew)) then
          begin
            Edit;
            FieldByName('STATUS').AsInteger := Ord(bcsFromHandHeld);
            FieldByName('COUNT_DATE').AsDateTime := Date;
            Post;
          end;
        end
        else
        begin
          frmMain.FUpdatePHIS_NotExists.Add(LotNumber); //不存在
        end;
        //frmMain.UpdatePHISID(LotNumber, PHIS_LotNumber);
      end; // while
    finally // wrap up
      EnableControls;
      CloseFile(F);
    end; // try/finally
  end;
end;

function TfrmMain.UpdatePHISID(LotNumber: string; PHIS_LotNumber: string): boolean;
var
  iSuccess: Integer;
begin
  with cdsPHIS do
  begin
    Close;
    Params.Clear;
    Params.CreateParam(ftString, '@LOT_ID', ptInput);
    CommandText := 'exec sp_pb_StockTake_PHISID :@LOT_ID';
    Params.ParamByName('@LOT_ID').AsString := LotNumber;
    Open;
    iSuccess := Fields[0].AsInteger;
    case iSuccess of //
      -1: FUpdatePHIS_NotSuccess.Add(PHIS_LotNumber); //更新不成功
      0: FUpdatePHIS_HaveToERP.Add(PHIS_LotNumber); //不能更新,已经上传至ERP
      1: FUpdatePHIS_Success.Add(PHIS_LotNumber); //更新成功
      2: FUpdatePHIS_HaveUpdated.Add(PHIS_LotNumber); //已经更新过
      3: FUpdatePHIS_NotExists.Add(PHIS_LotNumber); //不存在
    end; // case
  end; // with
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
    AFileName := 'Stktake.dat';
    iResult := FromHandHeld(AFileName, ComPort, @DoInsertFromHandHeldData_ST);
  finally
    Screen.Cursor := crDefault;
  end;

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

procedure TfrmMain.btnReportClick(Sender: TObject);
var
  ACountNo, ASQL, ACase: string;
begin
  inherited;
  if not CheckUserRight(cUrReport, TButton(Sender).Caption, UserRights) then exit;
  with ClientDataSet2 do
  begin
    Close;
    CommandText := 'select distinct COUNT_NO from PB_COUNT ' + bcGetWhereSQL(ClientDataSet1.CommandText, '', '', True) + ' order by COUNT_NO';
    Open;
  end; // with
  if not DoSelectCountNo(ACountNo) then exit;

  with RMGridReport1 do
  begin
    //LoadFromFile(ExtractFilePath(Application.ExeName) + 'ST.rls');
    LoadFromResourceName(hInstance, 'ST');
    Dictionary.Clear;
    Dictionary.Variables.Insert(0, ' Global');
    Dictionary.Variables['NewRecord'] := FsNew;
    Dictionary.Variables['System21'] := FsSystem21;
    Dictionary.Variables['ToHandHeld'] := FsToHandHeld;
    Dictionary.Variables['FromHandHeld'] := FsFromHandHeld;
    Dictionary.Variables['RandomChecked'] := FRandomChecked;
    Dictionary.Variables['FYES'] := FYES;
    Dictionary.Variables['FNO'] := FNO;
    Dictionary.Variables['FToErpSuccess'] := FsToErpSuccess;
    Dictionary.Variables['FToErpFail'] := FsToErpFail;
    Dictionary.Variables.AsString['FERPStatus'] := GetLanguagesStr(68, 'Upload Status', True);
    Dictionary.Variables.AsString['FLocation'] := GetLanguagesStr(73, 'Location', True);

    Dictionary.Variables.AsString['FReportTitle'] := GetLanguagesStr(8, 'PH Garment: Stock Take Report');
    Dictionary.Variables.AsString['FDate'] := GetLanguagesStr(23, 'Date', True);
    Dictionary.Variables.AsString['FTime'] := GetLanguagesStr(38, 'Time', True);
    Dictionary.Variables.AsString['FPage'] := GetLanguagesStr(47, 'Page', True);
    Dictionary.Variables.AsString['FStatus'] := GetLanguagesStr(12, 'Status', True);
    Dictionary.Variables.AsString['FItemCode'] := GetLanguagesStr(13, 'Item Code', True);
    Dictionary.Variables.AsString['FLotNumber'] := GetLanguagesStr(14, 'Lot Number', True);
    Dictionary.Variables.AsString['FUOM'] := GetLanguagesStr(15, 'UOM', True);
    Dictionary.Variables.AsString['FStockRoom'] := GetLanguagesStr(16, 'Stock Room', True);
    Dictionary.Variables.AsString['FCompany'] := GetLanguagesStr(17, 'Company', True);
    Dictionary.Variables.AsString['FComputerQty'] := GetLanguagesStr(22, 'Quantity', True);
    Dictionary.Variables.AsString['FCountedQty'] := GetLanguagesStr(2, 'Counted Qty');
    Dictionary.Variables.AsString['FDiscrepercy'] := GetLanguagesStr(9, 'Discrepercy');
    Dictionary.Variables.AsString['FRandomCheck'] := GetLanguagesStr(3, 'Random Check');
    Dictionary.Variables.AsString['FStockTakeDate'] := GetLanguagesStr(10, 'Stock Take Date');
    Dictionary.Variables.AsString['FCountNo'] := GetLanguagesStr(1, 'Count No.');

    SetReportCanDesign(RMGridReport1);
    with ClientDataSet_Temp do
    begin
      Close;
      Params.Clear;
      ACase := 'UploadERP= case when ERPSuccess is null then -1 else  ERPSuccess end ';
      ASQL := ' select *,' + ACase + ' from PB_COUNT where COUNT_NO=' + QuotedStr(ACountNo);
      ASQL := ASQL + ' order by COUNT_DATE';
      CommandText := ASQL;
      Open;
      RMDBDataSet1.DataSet := ClientDataSet_Temp;
    end; // with

    ShowReport;
  end; // with
end;

procedure TfrmMain.btnDeleteClick(Sender: TObject);
var
  ACountNo: string;
begin
  inherited;
  if not CheckUserRight(cUrDelete, TButton(Sender).Caption, UserRights) then exit;
  //  if urAdmin in UserRights then
  //  begin
  with ClientDataSet2 do
  begin
    Close;
    CommandText := 'select distinct COUNT_NO from PB_COUNT ' + bcGetWhereSQL(ClientDataSet1.CommandText, '', '', True)
      + '  order by COUNT_NO';
    //    CommandText := 'select distinct COUNT_NO from PB_COUNT where Status=' + IntToStr(Ord(bcsFromHandHeld))
    //      + ' and COUNTED_QTY>0  order by COUNT_NO';
    Open;
  end; // with
  //  with ClientDataSet2 do
  //  begin
  //    Close;
  //    CommandText := 'select distinct COUNT_NO from PB_COUNT order by COUNT_NO';
  //    Open;
  //  end; // with
  if not DoSelectCountNo(ACountNo) then exit;

  //    if Application.MessageBox(PChar(GetLanguagesStr(7, 'Can you sure to delete this Count No.: ') + ACountNo + ' ?'),
  //      PChar(GetLanguagesStr(9, 'Question', True)), MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES then
  begin
    Screen.Cursor := crSQLWait;
    try
      ClientDataSet_Temp.Close;
      ClientDataSet_Temp.params.clear;
      ClientDataSet_Temp.CommandText := 'delete from PB_COUNT where COUNT_NO=' + QuotedStr(ACountNo)
        + ' and ((Status=' + IntToStr(Ord(bcsToSystem21)) + ' and ErpSuccess=0) or (Status<>' + IntToStr(Ord(bcsToSystem21)) + '))';
      ClientDataSet_Temp.Execute;

      //      ClientDataSet1.Close;
      //      ClientDataSet1.Open;
    finally // wrap up
      FilterCountData(ACountNo);
      Screen.Cursor := crDefault;
    end; // try/finally
  end;
  //  end
  //  else
  //    Application.MessageBox(PChar(GetLanguagesStr(8, 'Only the Adminstrator can Delete!', True)),
  //      PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
end;

procedure TfrmMain.btnUpdateQtyClick(Sender: TObject);
var
  CountedQty: real;
begin
  inherited;
  if not CheckUserRight(cUrUpdateQty, TButton(Sender).Caption, UserRights) then exit;
  with ClientDataSet1 do
  begin
    if RecordCount = 0 then exit;
    CountedQty := FieldByName('COUNTED_QTY').AsFloat;
    if not DoUpdateCountedQty(CountedQty) then exit;

    if not (State in [dsInsert, dsEdit]) then Edit;
    FieldByName('COUNTED_QTY').AsFloat := CountedQty;
    if CountedQty > 0 then
      FieldByName('Status').AsInteger := Ord(bcsRandomChecked);
    Post;
    //  if ClientDataSet1.ApplyUpdates(-1) > 0 then DoApplyUpdateData(ClientDataSet1);
  end; // with
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
    bcsToSystem21: AText := FsSystem21;
    bcsToHandHeld: AText := FsToHandHeld;
    bcsFromHandHeld: AText := FsFromHandHeld;
    bcsRandomChecked: AText := FRandomChecked;
  end; // case
end;

procedure TfrmMain.ClientDataSet1AfterScroll(DataSet: TDataSet);
begin
  inherited;
  //  btnUpdateQty.Enabled := (DataSet.FieldByName('Status').AsInteger = Ord(bcsFromHandHeld));
      //and (DataSet.FieldByName('RANDOM_TAKE').AsBoolean);
  cxGrid1DBTableView1COUNTED_QTY.Options.Editing := (DataSet.FieldByName('Status').AsInteger = Ord(bcsFromHandHeld));
end;

procedure TfrmMain.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  inherited;
  //if ClientDataSet1.ApplyUpdates(-1) > 0 then
  DoApplyUpdateData(DataSet);
end;

procedure TfrmMain.ClientDataSet2AfterPost(DataSet: TDataSet);
begin
  inherited;
  //if ClientDataSet2.ApplyUpdates(-1) > 0 then
  DoApplyUpdateData(DataSet);
end;

procedure TfrmMain.cxGrid1DBTableView1COUNT_DATEGetDisplayText(
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
    bcsToSystem21: ADisplayText := FsSystem21;
    bcsToHandHeld: ADisplayText := FsToHandHeld;
    bcsFromHandHeld: ADisplayText := FsFromHandHeld;
    bcsRandomChecked: ADisplayText := FRandomChecked;
  end; // case
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
procedure TfrmMain.InsertToERPTemp_Refresh(DataSet: TDataSet; DT: Integer; TM: string);
var
  COMPANY, LOT_ID, ITEM_CODE, STOCKROOM, Worder,COUNT_NO: string;
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
      COUNT_NO := DataSet.FieldByName('COUNT_NO').AsString;
      //ADate := StrToIntDef(FormatDateTime('YYYYMMDD', DataSet.FieldByName('RETURN_DATE').AsDateTime), 19000000) - 19000000;

      with ADOQuery2 do
      begin
        Close;
        SQL.Clear;
        //SQL.Text := 'Call ZPHLIB_AUL.sp_RefreshUploadToERP (:DT,:TM,:CONO,:LOT_ID,:ItemCode,:StockRoom,:Worder,:FDate,:COUNT_NO)';
        SQL.Text := 'Call ZPHLIB_AUL.sp_RefreshUploadToERP ('+IntToStr(DT)+','+QuotedStr(TM)+','
           +QuotedStr(COMPANY)+','+QuotedStr(LOT_ID)+','+QuotedStr(ITEM_CODE)+','+QuotedStr(StockRoom)+','
           +QuotedStr('')+','+IntToStr(0)+','+QuotedStr(COUNT_NO)+')';
        {Parameters.ParamByName('DT').Value := DT;
        Parameters.ParamByName('TM').Value := TM;
        Parameters.ParamByName('CONO').Value := COMPANY;
        Parameters.ParamByName('LOT_ID').Value := LOT_ID;
        Parameters.ParamByName('ItemCode').Value := ITEM_CODE;
        Parameters.ParamByName('StockRoom').Value := STOCKROOM;
        Parameters.ParamByName('Worder').Value := '';
        Parameters.ParamByName('FDate').Value := 0;
        Parameters.ParamByName('COUNT_NO').Value := COUNT_NO; }
        ExecSQL;
      end; // with

      Next;
    end; // while
  end; // with
end;

procedure TfrmMain.btnRefreshUploadtoERPStatusClick(Sender: TObject);
var
  DT: Integer;
  TM: string;
  ASQL, conoi, istri, compi, locni, errfi,COUNT_NO: string;
  bErpSuccess: boolean;
begin
  inherited;
  if not CheckUserRight(cUrRefreshUploadToERP, TButton(Sender).Caption, UserRights) then exit;
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
     {
      First;
      while not Eof do
      begin
        conoi := bcGetStringstr(FieldByName('COMPANY').AsString, 2);
        //        wordi := bcGetStringstr(FieldByName('WORK_ORDER').AsString, 7);
        //        trdti := bcGetDateStr(FieldByName('RETURN_DATE').AsDateTime);
        istri := bcGetStringstr(FieldByName('Stockroom').AsString, 2);
        compi := bcGetStringstr(FieldByName('ITEM_CODE').AsString, 15);
        locni := bcGetStringstr(FieldByName('LOT_ID').AsString, 15);
        ASQL := ASQL + 'or (conoi6=' + QuotedStr(conoi) + ' and strci6=' + QuotedStr(istri)
          + ' and Pnumi6=' + QuotedStr(compi) + ' and locni6=' + QuotedStr(locni) + ') ';
        Next;
      end; // while

      ASQL := 'where ' + Trim(Copy(ASQL, 3, MaxInt));
      }
      with ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select a.*,b.IDO as COUNT_NO from ault4f1.appi6ue a,zphlib_aul.IDOIssueTemp b');
        SQL.Add('where b.dt='+IntToStr(DT)+' and b.tm='+QuotedStr(TM));
        SQL.Add('and b.cono=conoi6 and  b.LOTID=locni6 and b.ItemCode=Pnumi6');
        SQL.Add('and b.StockRoom=strci6 ');
        //Parameters.ParamByName('DT').Value := DT;
        //Parameters.ParamByName('TM').Value := TM;
        Open;
//        Close;
//        SQL.Clear;
//        SQL.Add('select * from ault4f1.appi6ue');
//        SQL.Add(ASQL);
//        Open;
        if RecordCount = 0 then exit;
        First;
        while not Eof do
        begin
          conoi := FieldByName('conoi6').AsString;
          //wordi := FieldByName('wordi4').AsString;
          //trdti := FieldByName('trdti4').AsString;
          istri := FieldByName('strci6').AsString;
          compi := FieldByName('Pnumi6').AsString;
          locni := FieldByName('locni6').AsString;
          errfi := Trim(FieldByName('errfi6').AsString);
          COUNT_NO  := FieldByName('COUNT_NO').AsString;
          bErpSuccess := StrToIntDef(errfi, 1) = 0; //= '0000000000000000000000';
          DoApplyUpdateStockTakeErpSuccess(conoi, istri, compi, locni,COUNT_NO, bErpSuccess);
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
  end;
end;

procedure TfrmMain.DoApplyUpdateStockTakeErpSuccess(conoi, istri, compi, locni,COUNT_NO: string; bErpSuccess: boolean);
begin
  with ClientDataSet_Temp do
  begin
    Close;
    Params.Clear;
    Params.CreateParam(ftString, '@COMPANY', ptInput);
    Params.CreateParam(ftString, '@WORK_ORDER', ptInput);
    Params.CreateParam(ftDateTime, '@DATE', ptInput);
    Params.CreateParam(ftString, '@Stockroom', ptInput);
    Params.CreateParam(ftString, '@ITEM_CODE', ptInput);
    Params.CreateParam(ftString, '@LOT_ID', ptInput);
    Params.CreateParam(ftBoolean, '@ErpSuccess', ptInput);
    Params.CreateParam(ftInteger, '@Type', ptInput);
    Params.CreateParam(ftString, '@COUNT_NO', ptInput);
    CommandText := 'exec sp_pb_Update_ErpSuccess :@COMPANY,:@WORK_ORDER,:@DATE,:@Stockroom,:@ITEM_CODE,:@LOT_ID,:@ErpSuccess,:@Type,:@COUNT_NO';
    Params.ParamByName('@COMPANY').AsString := conoi;
    Params.ParamByName('@WORK_ORDER').AsString := '';
    Params.ParamByName('@DATE').AsDateTime := Date;
    Params.ParamByName('@Stockroom').AsString := istri;
    Params.ParamByName('@ITEM_CODE').AsString := compi;
    Params.ParamByName('@LOT_ID').AsString := locni;
    Params.ParamByName('@ErpSuccess').AsBoolean := bErpSuccess;
    Params.ParamByName('@Type').AsInteger := 2;
    Params.ParamByName('@COUNT_NO').AsString :=COUNT_NO;
    Execute;
  end; // with
end;

procedure TfrmMain.cxButtonEdit_CountNoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  pnl_select.Left := cxGroupBox5.Left + cxGroupBox5.Width + 10;
  pnl_select.Top := cxGroupBox1.Top;
  pnl_select.Visible := True;
  Panel2.Visible := False;
  cxGrid3DBTableView1.DataController.DataSource := nil;
  Application.ProcessMessages;
  Screen.Cursor := crSQLWait;
  try
    with ClientDataSet2 do
    begin
      Close;
      CommandText := 'select Distinct COUNT_NO from PB_COUNT order by COUNT_NO';
      Open;
    end; // with
    cxGrid3DBTableView1.DataController.DataSource := DataSource2;
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
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

procedure TfrmMain.cxButton1Click(Sender: TObject);
var
  AText: string;
begin
  pnl_select.Visible := False;
  AText := ClientDataSet2.Fields[0].AsString;
  cxButtonEdit_CountNo.Text := AText;
  cxButtonEdit_CountNo.SetFocus;

  cxGrid3DBTableView1.DataController.DataSource := nil;
  FilterCountData(AText);
  Panel2.Visible := True;
end;

procedure TfrmMain.cxButton3Click(Sender: TObject);
begin
  inherited;
  pnl_select.Visible := False;
  cxButtonEdit_CountNo.SetFocus;
  cxGrid3DBTableView1.DataController.DataSource := nil;
  Panel2.Visible := True;
end;

procedure TfrmMain.FilterCountData(ACount_NO: string);
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
      sWhere := bcGetWhereSQL(ClientDataSet1.CommandText, 'COUNT_NO', ACount_NO);
      //2.show data
      Close;
      aSQL := 'SELECT * FROM PB_COUNT';
      aSQL := aSQL + ' ' + sWhere;
      aSQL := aSQL + ' ORDER BY COUNT_NO';
      CommandText := aSQL;
      Open;
    finally // wrap up
      EnableControls;
      Screen.Cursor := crDefault;
    end; // try/finally
  end; // with
end;

procedure TfrmMain.btnClearAllClick(Sender: TObject);
begin
  inherited;
  ClientDataSet1.Close;
  ClientDataSet1.CommandText := '';
end;

procedure TfrmMain.SetBtnEnable(bEnable: boolean);
begin
  btnToHandHeld.Enabled := bEnable;
  btnToSystem21.Enabled := bEnable;
  btnReport.Enabled := bEnable;
  btnDelete.Enabled := bEnable;
  btnRefreshUploadtoERPStatus.Enabled := bEnable;
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

procedure TfrmMain.cxButtonEdit_CountNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
    FilterCountData(TcxButtonEdit(Sender).Text);
  end;
end;

procedure TfrmMain.Panel1Resize(Sender: TObject);
begin
  inherited;
  Panel_ColorTips.Left := TPanel(Sender).Width - Panel_ColorTips.Width - 10;
end;

procedure TfrmMain.FreeUpdatePHISList;
begin
  FreeAndNil(FUpdatePHIS_Success);
  FreeAndNil(FUpdatePHIS_NotSuccess);
  FreeAndNil(FUpdatePHIS_HaveUpdated);
  FreeAndNil(FUpdatePHIS_NotExists);
  FreeAndNil(FUpdatePHIS_HaveToERP);
end;

procedure TfrmMain.CreateUpdatePHISList;
begin
  FUpdatePHIS_Success := TStringList.Create;
  FUpdatePHIS_NotSuccess := TStringList.Create;
  FUpdatePHIS_HaveUpdated := TStringList.Create;
  FUpdatePHIS_NotExists := TStringList.Create;
  FUpdatePHIS_HaveToERP := TStringList.Create;
end;

procedure TfrmMain.btnPHISFromHandHeldClick(Sender: TObject);
var
  AFileName: string;
  iResult: Integer;
begin
  inherited;
  if not CheckUserRight(cUrFromHandHeld, TButton(Sender).Caption, UserRights) then exit;
  if (not ClientDataSet1.Active) or (ClientDataSet1.IsEmpty) then
  begin
    Application.MessageBox(PChar(GetLanguagesStr(127, 'No Data,Please Select a Count No.', True)),
      PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
    exit;
  end;

  if (Application.MessageBox(PChar(GetLanguagesStr(126, 'Are you sure to transfer data From PHIS HandHeld?', True)),
    PChar(GetLanguagesStr(5, 'Tips', True)), MB_YESNO + MB_ICONInformation) = IDNO) then exit;
  Screen.Cursor := crSQLWait;
  try
    FreeUpdatePHISList;
    CreateUpdatePHISList;
    //get data from HandHeld
    AFileName := 'stocktak.dat';
    iResult := FromHandHeld(AFileName, ComPort, @DoInsertFromPHISHandHeldData_ST);
  finally
    Screen.Cursor := crDefault;
  end;

  case iResult of //
    0: ; //load dll fail
    1:
      begin
        //ClientDataSet1.Close;
        //ClientDataSet1.CommandText := '';
        Application.MessageBox(PChar('[' + GetLanguagesStr(42, 'Transfer data From HandHeld', True) + '] ' + GetLanguagesStr(20, 'Finish', True)),
          PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
        ShowUpdatePHISIDInfor;
      end;
    2:
      Application.MessageBox(PChar('PHIS ' + GetLanguagesStr(34, 'HandHeld is not ready,plese check the HandHeld.', True)),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK);
  end; // case
end;

procedure TfrmMain.ShowUpdatePHISIDInfor;
var
  AList: TStringList;
  aFileName: string;
  J: Integer;

  procedure WriteInfor(PHISList: TStringList; AStr: string);
  var
    I: Integer;
  begin
    if PHISList.Count > 0 then
    begin
      Inc(J);
      AList.Add('');
      AList.Add(IntToStr(J) + AStr);
      for I := 0 to PHISList.Count - 1 do // Iterate
      begin
        AList.Add('    ' + PHISList.Strings[I]);
      end; // for
    end;
  end;
begin
  AList := TStringList.Create;
  try
    //    AList.Add(UID + ' 盘点信息(' + FormatDateTime('YYYY''/''MM''/''DD hh:nn:ss', Now) + '):');
    //    J:=0;
    //    WriteInfor(FUpdatePHIS_NotSuccess,   '.盘点不成功:');
    //    WriteInfor(FUpdatePHIS_HaveToERP,'.不能进行盘点,已经上传至ERP:');
    //    WriteInfor(FUpdatePHIS_HaveUpdated,'.已经盘点过:');
    //    WriteInfor(FUpdatePHIS_NotExists,'.盘点ID不存在:');
    //    WriteInfor(FUpdatePHIS_Success,'.盘点成功:');

    AList.Add(UID + ' 絃翴獺(' + FormatDateTime('YYYY''/''MM''/''DD hh:nn:ss', Now) + '):');
    J := 0;
    //    WriteInfor(FUpdatePHIS_NotSuccess, '.絃翴ぃΘ:');
    //    WriteInfor(FUpdatePHIS_HaveToERP, '.ぃ秈︽絃翴,竒肚ERP:');
    //    WriteInfor(FUpdatePHIS_HaveUpdated, '.竒絃翴筁:');
    WriteInfor(FUpdatePHIS_NotExists, '.絃翴IDぃ:');
    //    WriteInfor(FUpdatePHIS_Success, '.絃翴Θ:');
    if FUpdatePHIS_NotExists.Count <> 0 then
    begin
      aFileName := UID + '_ST.txt';
      AList.SaveToFile('C:\temp\' + aFileName);
      ShellExecute(Handle, PChar('OPEN'), PChar('C:\temp\' + aFileName), nil, nil, SW_SHOWMAXIMIZED);
    end;
  finally // wrap up
    FreeAndNil(AList);
    FreeUpdatePHISList;
  end; // try/finally
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeUpdatePHISList;
end;

end.

