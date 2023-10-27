unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmBase, Grids, DBGrids, DB, DBClient, StdCtrls, ExtCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxStyles, cxContainer, cxEdit, cxGroupBox, cxButtons, cxPC, cxLabel,
  cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCurrencyEdit, cxRadioGroup, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, RM_Dataset, RM_E_llPDF, RM_Common, RM_Class,
  RM_e_main, RM_e_Xls, RM_DsgGridReport, RM_GridReport, cxLookAndFeels,
  ADODB, cxButtonEdit, cxCustomData, cxGraphics, cxFilter, cxData, Math,
  cxDataStorage, cxDBData, cxLookAndFeelPainters, cxMemo;

type
  TPHEditMeterialReturn = (emrNone, emrEdit, emrAdd, emrDelete, emrPost, emrCancel);

  TfrmMain = class(TfrmBase)
    cxGroupBox1: TcxGroupBox;
    Panel2: TPanel;
    Panel3: TPanel;
    cxPageControl: TcxPageControl;
    cxTabSheet_Grid: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1RETURN_NO: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1WORK_ORDER: TcxGridDBColumn;
    cxGrid1DBTableView1LOT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1RETURN_QTY: TcxGridDBColumn;
    cxGrid1DBTableView1UOM: TcxGridDBColumn;
    cxGrid1DBTableView1RETURN_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1STOCKROOM: TcxGridDBColumn;
    cxGrid1DBTableView1COMPANY: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1RECORD_CREATED_DATE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet_EditData: TcxTabSheet;
    cxLabel_Tips: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxGroupBox3: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxLabel_RETURN_NO: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxGroupBox4: TcxGroupBox;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    RMGridReportDesigner1: TRMGridReportDesigner;
    RMXLSExport1: TRMXLSExport;
    RMllPDFExport1: TRMllPDFExport;
    RMDBDataSet1: TRMDBDataSet;
    cxLabel_Tips1: TcxLabel;
    ADOQuery1: TADOQuery;
    cxGrid1DBTableView1ERPSuccess: TcxGridDBColumn;
    cxGroupBox5: TcxGroupBox;
    cxButtonEdit_ReturnNo: TcxButtonEdit;
    pnl_select: TPanel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1RETURN_NO: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    Panel1: TPanel;
    btnAdd: TcxButton;
    btnModify: TcxButton;
    btnDelete: TcxButton;
    btnFromHandHeld: TcxButton;
    btnReport: TcxButton;
    btnToSystem21: TcxButton;
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
    ADOQuery2: TADOQuery;
    cxStyle4: TcxStyle;
    ADOQuery3: TADOQuery;
    btnAutoGetData: TcxButton;
    cxGroupBox6: TcxGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    editFloor_From: TcxTextEdit;
    editFloor_To: TcxTextEdit;
    editRack_From: TcxTextEdit;
    editRack_To: TcxTextEdit;
    editStatus1_From: TcxTextEdit;
    editStatus2_From: TcxTextEdit;
    editStatus3_From: TcxTextEdit;
    editStatus1_To: TcxTextEdit;
    editStatus2_To: TcxTextEdit;
    editStatus3_To: TcxTextEdit;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    ADOQuery4: TADOQuery;
    ClientDataSet_ServerDate: TClientDataSet;
    Label17: TLabel;
    cxDBMemo1: TcxDBMemo;
    cxGrid1DBTableView1Reason: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1STATUSGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure ClientDataSet1AfterScroll(DataSet: TDataSet);
    procedure btnReportClick(Sender: TObject);
    procedure btnFromHandHeldClick(Sender: TObject);
    procedure btnToSystem21Click(Sender: TObject);
    procedure cxGrid1DBTableView1RETURN_DATEGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGrid1DBTableView1STATUSGetFilterDisplayText(
      Sender: TcxCustomGridTableItem; const AValue: Variant;
      var ADisplayText: string);
    procedure cxGrid1DBTableView1ERPSuccessGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure btnRefreshUploadtoERPStatusClick(Sender: TObject);
    procedure cxButtonEdit_HDOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure cxGrid3DBTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButtonEdit_ReturnNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClientDataSet1AfterOpen(DataSet: TDataSet);
    procedure cxPageControlChange(Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure Panel2Resize(Sender: TObject);
    procedure btnAutoGetDataClick(Sender: TObject);
  private
    { Private declarations }
    FRETURN_NO: string;
    tRETURN_NO, tITEM_CODE, tWORK_ORDER, tLOT_ID, tSTOCKROOM, tCOMPANY: string;

    FsNew, FsSystem21, FsPrintLabel, FsToHandHeld, FsFromHandHeld, FsIDOConfirmed: string;
    FsErpUpload, FsToErpBlank, FsToErpFail, FsToErpSuccess: string;

    //FSuccess, FError: string;
    FCanDbClick: boolean;
    SelectHandHeldBatchNo, SelectHandHeldCono, SelectHandHeldStockRoom: string;
    procedure DoReturnMeterialData(EMR: TPHEditMeterialReturn);
    procedure SetRETURN_NO(Value: string);
    procedure FilterReturnData(ARETURN_NO: string);
    procedure InsertToERPTemp_Refresh(DataSet: TDataSet; DT: Integer; TM: string);

    procedure DoApplyUpdateData(bAdd: boolean);
    function CheckLotIDCompanyRepeat(ABatchNo, ALotNo, ACono, oldLotNo, oldCono: string; bInsert: boolean): boolean;
    function GetITEMCODE_WORKORDER(ALotNo, ACono: string; var AITEM_CODE, AWORK_ORDER, AUOM: string): boolean;
    function AutoGetDatabyID(ALotNo, ACono: string; var AITEM_CODE, AWORK_ORDER, AUOM, Location, STOCKROOM: string; var Qty: Double; isHandheld: boolean): boolean;
    procedure DoApplyUpdateReturnErpSuccess(conoi, wordi, trdti, istri, compi, locni, RETURN_NO: string; bErpSuccess: boolean);
    procedure SetBKColor;
    function GetLocationFromS21(ALotNo, ACono: string): string;
    function GetIDHasReturnQty(ID, CONO: string): double;
    function ValiateLocation(ACono, ALocation: string): boolean;
    function GetNewLocation(cono: string; sku: string; lotid: string): string;
    procedure UpdateLocation(cono: string; sku: string; lotid: string; ido: string; Location: string);

    procedure DoLocationSplit(fromLoc: string; toLoc: string);
    function GetToLocation(): string;
  public
    { Public declarations }
    property RETURN_NO: string read FRETURN_NO write SetRETURN_NO;
    procedure SetLanguageStr; override;
    function GetMaxRETURN_NO(bSystem: boolean): string;
  published

  end;

var
  frmMain: TfrmMain;

function DoInsertFromHandHeldData_MR(AFileName: string): boolean;
function GetServerDateTime: TDateTime;

implementation

uses ufrmDialog, uTools, ufrmSelectReturnData;

{$R *.dfm}
//bSystem  True:select from PB_FTPIP ; False:from PB_RETURN

function GetServerDateTime: TDateTime;
begin
  with frmMain.ClientDataSet_ServerDate do
  begin
    Close;
    params.clear;
    CommandText := 'select top 1 getdate() as ServerDateTime from IDO4';
    Open;

    result := FieldByName('ServerDateTime').AsDateTime;
  end; // with
end;

function TfrmMain.GetMaxRETURN_NO(bSystem: boolean): string;
var
  sRETURN_NO: string;
  iRETURN_NO: Integer;
begin
  with ClientDataSet_Temp do
  begin
    if bSystem then
    begin
      Close;
      params.clear;
      CommandText := 'select NEXT_RETURN_NO from PB_FTPIP';
      Open;
      if Fields[0].IsNull then
        result := '000000001'
      else
        result := Fields[0].AsString;
    end
    else
    begin
      Close;
      CommandText := 'select Max(RETURN_NO) from PB_RETURN';
      Open;
      if Fields[0].IsNull then
        result := '000000001'
      else
      begin
        sRETURN_NO := Fields[0].AsString;
        iRETURN_NO := StrToIntDef(sRETURN_NO, -1);
        if iRETURN_NO = -1 then
          result := '000000001'
        else
        begin
          result := FormatFloat('000000000', iRETURN_NO + 1);
          //result := Copy(sRETURN_NO, Length(sRETURN_NO) - 8, 9);
        end;
      end;
      //      Close;
      //      CommandText := 'Update  PB_FTPIP set NEXT_RETURN_NO=' + QuotedStr(result);
      //      Execute;
    end;
    RETURN_NO := result;
  end; // with
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  SetLanguageStr;
  SetBKColor;
  cxPageControl.ActivePageIndex := 0;
  cxPageControl.HideTabs := True;
  ADOQuery1.Connection := ZPHLIB;
  ADOQuery2.Connection := ZPHLIB;
  ADOQuery3.Connection := ZPHLIB;
  ADOQuery4.Connection := ZPHLIB;
  Screen.Cursor := crSQLWait;
  try
    with ClientDataSet1 do
    begin
      Close;
      CommandText := 'select * from PB_RETURN where (1=2) order by RETURN_NO,RETURN_DATE';
      Open;
    end; // with
    //RETURN_NO := GetMaxRETURN_NO(False);
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
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

procedure TfrmMain.cxRadioButton1Click(Sender: TObject);
var
  ATag: Integer;
begin
  inherited;
  ATag := TcxRadioButton(Sender).Tag;
  cxLookupComboBox1.Enabled := ATag = 1;
  cxLabel_RETURN_NO.Enabled := ATag = 0;
  if ClientDataSet1.State in [dsInsert] then
  begin
    case ATag of //
      0: ClientDataSet1.FieldByName('RETURN_NO').AsString := RETURN_NO;
      1: if cxLookupComboBox1.Text <> '' then
          ClientDataSet1.FieldByName('RETURN_NO').AsString := cxLookupComboBox1.Text
        else
          ClientDataSet1.FieldByName('RETURN_NO').Clear;
    end; // case
  end;
end;

procedure TfrmMain.DoLocationSplit(fromLoc: string; toLoc: string);
begin
  editFloor_From.Text := Copy(fromLoc, 1, 1);
  editRack_From.Text := Copy(fromLoc, 2, 4);
  editStatus1_From.Text := Copy(fromLoc, 6, 2);
  editStatus2_From.Text := Copy(fromLoc, 8, 1);
  editStatus3_From.Text := Copy(fromLoc, 9, 1);

  editFloor_To.Text := Copy(toLoc, 1, 1);
  editRack_To.Text := Copy(toLoc, 2, 4);
  editStatus1_To.Text := 'OZ'; //Copy(toLoc,6,2);
  editStatus2_To.Text := Copy(toLoc, 8, 1);
  editStatus3_To.Text := Copy(toLoc, 9, 1);
end;

function TfrmMain.GetToLocation(): string;
var
  floor, rack, status1, status2, status3: string;
begin
  floor := editFloor_To.Text;
  rack := editRack_To.Text;
  status2 := editStatus2_To.Text;
  status3 := editStatus3_To.Text;

  floor := Format('%-1s', [floor]); //1
  rack := Format('%-4s', [rack]); //2-5
  status1 := 'OZ'; //6-7
  status2 := Format('%-1s', [status2]); //8
  status3 := Format('%-1s', [status3]); //9

  result := floor + rack + status1 + status2 + status3;
end;

procedure TfrmMain.DoReturnMeterialData(EMR: TPHEditMeterialReturn);
var
  bAdd: boolean;
  ABatchNo: string;
  ALotNo, ACono, ACono_new, ARETURN_NO, AITEM_CODE, AWORK_ORDER, ASTOCKROOM, AUOM, ALocation, fromLoc, toLoc, reason: string;
  //  AStr :PAnsiChar ;
begin
  if (EMR = emrEdit) or (EMR = emrAdd) or (EMR = emrDelete) then
    with ClientDataSet2 do
    begin
      Close;
      if (EMR = emrEdit) or (EMR = emrAdd) then
        CommandText := 'select Distinct RETURN_NO from PB_RETURN  order by RETURN_NO'
      else if (EMR = emrDelete) then
        CommandText := 'select Distinct RETURN_NO from PB_RETURN '
          + bcGetWhereSQL(ClientDataSet1.CommandText, '', '', True) + ' order by RETURN_NO';
      Open;
    end; // with
  case EMR of //
    emrNone: ;
    emrEdit:
      begin
        cxGroupBox4.Visible := True;
        cxGroupBox1.Visible := False;
        cxPageControl.ActivePageIndex := 1;
        //cxLabel_Tips.Caption := GetLanguagesStr(25, ' Modify Return Meterial ');
        cxLabel_Tips.Visible := True;
        cxLabel_Tips1.Visible := not cxLabel_Tips.Visible;
        cxGroupBox3.Visible := False;
        Label3.Visible := True;
        cxDBTextEdit3.Visible := True;
        ClientDataSet1.Edit;
        ClientDataSet1.FieldByName('Status').AsInteger := Ord(bcsNew);
        ClientDataSet1.FieldByName('ErpSuccess').Clear;
        tRETURN_NO := ClientDataSet1.FieldByName('RETURN_NO').AsString;
        tITEM_CODE := ClientDataSet1.FieldByName('ITEM_CODE').AsString;
        tWORK_ORDER := ClientDataSet1.FieldByName('WORK_ORDER').AsString;
        tLOT_ID := ClientDataSet1.FieldByName('LOT_ID').AsString;
        tSTOCKROOM := ClientDataSet1.FieldByName('STOCKROOM').AsString;
        tCOMPANY := ClientDataSet1.FieldByName('COMPANY').AsString;
        fromLoc := ClientDataSet1.FieldByName('Location').AsString;
        toLoc := ClientDataSet1.FieldByName('ToLocation').AsString;
        DoLocationSplit(fromLoc, toLoc);
      end;
    emrAdd:
      begin
        cxGroupBox4.Visible := True;
        cxGroupBox1.Visible := False;
        cxPageControl.ActivePageIndex := 1;
        cxLabel_Tips.Visible := False;
        cxLabel_Tips1.Visible := not cxLabel_Tips.Visible;
        cxGroupBox3.Visible := True;
        Label3.Visible := False;
        cxDBTextEdit3.Visible := False;
        cxRadioButton1.Checked := True;
        RETURN_NO := GetMaxRETURN_NO(False);
        ClientDataSet1.Append;
        ClientDataSet1.FieldByName('RETURN_NO').AsString := RETURN_NO;
        ClientDataSet1.FieldByName('COMPANY').AsString := 'P1';
        ClientDataSet1.FieldByName('STATUS').AsInteger := Ord(bcsNew);
        ClientDataSet1.FieldByName('RECORD_CREATED_DATE').AsDateTime := GetServerDateTime;
        //ClientDataSet1.FieldByName('RETURN_DATE').AsDateTime := Date;
        ClientDataSet1.FieldByName('RETURN_DATE').AsDateTime := GetServerDateTime;

        DoLocationSplit('', '');
      end;
    emrDelete:
      begin
        if DoDeleteData(ABatchNo) then
        begin
          Screen.Cursor := crSQLWait;
          try
            if ABatchNo = '' then
            begin
              if (ClientDataSet1.FieldByName('Status').AsInteger = Ord(bcsToSystem21))
                and (ClientDataSet1.FieldByName('ErpSuccess').AsBoolean or ClientDataSet1.FieldByName('ErpSuccess').IsNull) then
              begin
                Screen.Cursor := crDefault;
                ShowMessage(GetLanguagesStr(49, 'Can not delete this Record.'));
                exit;
              end;
              ALotNo := ClientDataSet1.FieldByName('LOT_ID').AsString;
              ACono := ClientDataSet1.FieldByName('Company').AsString;
              ARETURN_NO := ClientDataSet1.FieldByName('RETURN_NO').AsString;
              AITEM_CODE := ClientDataSet1.FieldByName('ITEM_CODE').AsString;
              AWORK_ORDER := ClientDataSet1.FieldByName('WORK_ORDER').AsString;
              ASTOCKROOM := ClientDataSet1.FieldByName('STOCKROOM').AsString;
              with ClientDataSet_Temp do
              begin
                Close;
                params.clear;
                CommandText := 'delete from PB_RETURN'
                  + ' where LOT_ID=' + QuotedStr(ALotNo) + ' and Company=' + QuotedStr(ACono)
                  + ' and RETURN_NO=' + QuotedStr(ARETURN_NO);
                Execute;
              end; // with

              FilterReturnData(ARETURN_NO);
            end
            else
            begin
              with ClientDataSet_Temp do
              begin
                Close;
                params.clear;
                CommandText := 'delete from PB_RETURN where RETURN_NO=' + QuotedStr(ABatchNo)
                  + ' and ((status=' + IntToStr(Ord(bcsToSystem21)) + ' and ErpSuccess=0) or (status<>' + IntToStr(Ord(bcsToSystem21)) + '))';
                Execute;
              end; // with
              FilterReturnData(ABatchNo);
            end;
          finally // wrap up
            Screen.Cursor := crDefault;
          end; // try/finally
        end;
      end;
    emrPost:
      begin
        //        bOK := False;
        if ClientDataSet1.Modified then
        begin //1
          if ClientDataSet1.FieldByName('RETURN_NO').IsNull then
            ShowMessage(GetLanguagesStr(29, 'Please Select a Batch No.'))
          else if ClientDataSet1.FieldByName('LOT_ID').IsNull then
            ShowMessage(GetLanguagesStr(32, 'Please Enter LOT ID'))
          else if ClientDataSet1.FieldByName('COMPANY').IsNull then
            ShowMessage(GetLanguagesStr(46, 'Please Enter COMPANY'))
              //          else if ClientDataSet1.FieldByName('WORK_ORDER').IsNull then
//            ShowMessage(GetLanguagesStr(30, 'Please Enter WORK ORDER NO.'))
//          else if ClientDataSet1.FieldByName('ITEM_CODE').IsNull then
//            ShowMessage(GetLanguagesStr(31, 'Please Enter ITEM CODE'))
//          else if ClientDataSet1.FieldByName('STOCKROOM').IsNull then
//            ShowMessage(GetLanguagesStr(45, 'Please Enter STOCKROOM'))
          else
          begin
            bAdd := ClientDataSet1.State in [dsInsert];
            tRETURN_NO := ClientDataSet1.FieldByName('RETURN_NO').AsString;
            tITEM_CODE := ClientDataSet1.FieldByName('ITEM_CODE').AsString;
            tWORK_ORDER := ClientDataSet1.FieldByName('WORK_ORDER').AsString;
            tLOT_ID := (ClientDataSet1.FieldByName('LOT_ID').AsString);
            tSTOCKROOM := ClientDataSet1.FieldByName('STOCKROOM').AsString;
            tCOMPANY := (ClientDataSet1.FieldByName('COMPANY').AsString);
            ALotNo := (ClientDataSet1.FieldByName('LOT_ID').OldValue);
            ACono := (ClientDataSet1.FieldByName('COMPANY').OldValue);
            ALocation := ClientDataSet1.FieldByName('Location').AsString;
            toLoc := GetToLocation();
            ClientDataSet1.FieldByName('ToLocation').AsString := toLoc;
            reason := ClientDataSet1.FieldByName('Remark').AsString;

            ACono_new := ClientDataSet1.FieldByName('COMPANY').AsString;
            if not (ValiateLocation(ACono_new, toLoc)) then
            begin
              Application.MessageBox(PChar(ACono_new + ', ' + toLoc + ':' + #13#10 + GetLanguagesStr(94, 'this Location is invalid !', true)),
                PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
              //cxDBTextEdit8.SetFocus;
              exit;
            end;

            if CheckLotIDCompanyRepeat(tRETURN_NO, tLOT_ID, tCOMPANY, ALotNo, ACono, bAdd) then
            begin
              exit;
            end;
            AUOM := ClientDataSet1.FieldByName('UOM').AsString;
            //if (tITEM_CODE = '') or (tWORK_ORDER = '') or (AUOM = '') then
            begin
              //GetITEMCODE_WORKORDER(tLOT_ID, tCOMPANY, tITEM_CODE, tWORK_ORDER, AUOM);
              //AutoGetDatabyID(tLOT_ID, tCOMPANY, tITEM_CODE, tWORK_ORDER, AUOM,AStockRoom,Location,Qty);
              //ClientDataSet1.FieldByName('ITEM_CODE').AsString := tITEM_CODE;
              //ClientDataSet1.FieldByName('WORK_ORDER').AsString := tWORK_ORDER;
              //ClientDataSet1.FieldByName('UOM').AsString := AUOM;
            end;
            // if ClientDataSet1.FieldByName('Location').AsString = '' then
            //   ClientDataSet1.FieldByName('Location').AsString := GetLocationFromS21(tLOT_ID, tCOMPANY);

            cxGroupBox4.Visible := False;
            cxGroupBox1.Visible := True;
            cxPageControl.ActivePageIndex := 0;
            ClientDataSet1.Post;
            {if ClientDataSet1.ApplyUpdates(-1) > 0 then}DoApplyUpdateData(bAdd);

            FilterReturnData(tRETURN_NO);

            //RETURN_NO := GetMaxRETURN_NO(False);
          end;
        end //1
        else
        begin
          cxGroupBox4.Visible := False;
          cxGroupBox1.Visible := True;
          cxPageControl.ActivePageIndex := 0;
          ClientDataSet1.Cancel;
        end;
      end;
    emrCancel:
      begin
        cxGroupBox4.Visible := False;
        cxGroupBox1.Visible := True;
        ClientDataSet1.Cancel;
        cxPageControl.ActivePageIndex := 0;
      end;
  end; // case
end;

function TfrmMain.ValiateLocation(ACono, ALocation: string): boolean;
var
  floor, rack, s1, s2, s3: string;
begin
  result := False;

  floor := Copy(ALocation, 1, 1);
  rack := Copy(ALocation, 2, 4);
  s1 := Copy(ALocation, 6, 2); //OC    TYPE91=1
  s2 := Copy(ALocation, 8, 1); //TYPE91=2
  s3 := Copy(ALocation, 9, 1); //TYPE91=3

  with ADOQuery1 do
  begin
    close;
    sql.clear;
    sql.add('select Count(*) from AULT4f1.PHP90 ');
    sql.add('where cono90=' + QuotedStr(ACono) + ' and FLOR90=' + QuotedStr(floor) + ' and RACK90=' + QuotedStr(rack));
    open;
    result := fields[0].AsInteger > 0;
    if (not result) then exit;

    close;
    sql.clear;
    sql.add('select Count(*) from AULT4f1.PHP91 ');
    sql.add('where cono91=' + QuotedStr(ACono) + ' and TYPE91=1 and STAT91=' + QuotedStr(s1));
    open;
    result := fields[0].AsInteger > 0;
    if (not result) then exit;

    if (trim(s2) = '') then exit;
    close;
    sql.clear;
    sql.add('select Count(*) from AULT4f1.PHP91 ');
    sql.add('where cono91=' + QuotedStr(ACono) + ' and TYPE91=2 and STAT91=' + QuotedStr(s2));
    open;
    result := fields[0].AsInteger > 0;
    if (not result) then exit;

    if (trim(s3) = '') then exit;
    close;
    sql.clear;
    sql.add('select Count(*) from AULT4f1.PHP91 ');
    sql.add('where cono91=' + QuotedStr(ACono) + ' and TYPE91=3 and STAT91=' + QuotedStr(s3));
    open;
    result := fields[0].AsInteger > 0;
  end;

end;

function TfrmMain.CheckLotIDCompanyRepeat(ABatchNo, ALotNo, ACono, oldLotNo, oldCono: string; bInsert: boolean): boolean;
begin
  if (not bInsert) and ((ALotNo = oldLotNo) and (ACono = oldCono)) then
  begin
    result := False;
    exit;
  end;
  with ClientDataSet_Temp do
  begin
    Close;
    Params.Clear;
    CommandText := 'select count(*) from PB_RETURN where RETURN_NO=' + QuotedStr(ABatchNo) + ' and LOT_ID=' + QuotedStr(ALotNo) + ' and Company=' + QuotedStr(ACono);
    Open;
    if (Fields[0].AsInteger > 0) then
    begin
      result := True;
      Application.MessageBox(PChar(GetLanguagesStr(48, 'Batch No. Lot No. and Company is Exists,Please Select another!')),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
      if cxDBTextEdit5.CanFocus then
        cxDBTextEdit5.SetFocus;
    end
    else
      result := False;
  end; // with
end;

procedure TfrmMain.DoApplyUpdateData(bAdd: boolean);
var
  sSQL: string;
  remark,returnno,lotno,companyno: string;
begin
  with ClientDataSet_Temp do
  begin
    close;
    params.clear;
    params.createparam(ftstring, 'RETURN_NO', ptinput);
    params.createparam(ftstring, 'ITEM_CODE', ptinput);
    params.createparam(ftstring, 'WORK_ORDER', ptinput);
    params.createparam(ftstring, 'LOT_ID', ptinput);
    params.createparam(ftFloat, 'RETURN_QTY', ptinput);
    params.createparam(ftstring, 'UOM', ptinput);
    params.createparam(ftdatetime, 'RETURN_DATE', ptinput);
    params.createparam(ftstring, 'STOCKROOM', ptinput);
    params.createparam(ftstring, 'COMPANY', ptinput);
    params.createparam(ftinteger, 'STATUS', ptinput);
    params.createparam(ftString, 'Location', ptinput);
    params.createparam(ftString, 'ToLocation', ptinput);
    params.createparam(ftBoolean, 'ErpSuccess', ptinput);
    //params.createparam(ftWideString, 'Remark', ptinput);
    if bAdd then
    begin
      params.createparam(ftdatetime, 'RECORD_CREATED_DATE', ptinput);
    end
    else
    begin
      params.createparam(ftstring, 'RETURN_NO1', ptinput);
      //      params.createparam(ftstring, 'ITEM_CODE1', ptinput);
      params.createparam(ftstring, 'LOT_ID1', ptinput);
      params.createparam(ftstring, 'COMPANY1', ptinput);
    end;

    if bAdd then
    begin
      sSQL := 'Insert into PB_RETURN (RETURN_NO,ITEM_CODE,WORK_ORDER,LOT_ID,RETURN_QTY,UOM,RETURN_DATE,STOCKROOM,COMPANY,STATUS,Location,ToLocation,RECORD_CREATED_DATE,ErpSuccess)'
        + ' Values(:RETURN_NO,:ITEM_CODE,:WORK_ORDER,:LOT_ID,:RETURN_QTY,:UOM,:RETURN_DATE,:STOCKROOM,:COMPANY,:STATUS,:Location,:ToLocation,:RECORD_CREATED_DATE,:ErpSuccess)'
    end
    else
    begin
      sSQL := 'update PB_RETURN set RETURN_NO=:RETURN_NO,ITEM_CODE=:ITEM_CODE,'
        + 'WORK_ORDER=:WORK_ORDER,LOT_ID=:LOT_ID,RETURN_QTY=:RETURN_QTY,UOM=:UOM,RETURN_DATE=:RETURN_DATE,'
        + 'STOCKROOM=:STOCKROOM,COMPANY=:COMPANY,STATUS=:STATUS,Location=:Location,ToLocation=:ToLocation,ErpSuccess=:ErpSuccess';
      sSQL := sSQL + ' where RETURN_NO=:RETURN_NO1  and LOT_ID=:LOT_ID1 and COMPANY=:COMPANY1';
    end;
    commandtext := sSQL;
    Params.ParamByName('RETURN_NO').AsString := tRETURN_NO;
    Params.ParamByName('ITEM_CODE').AsString := bcGetStringstr(tITEM_CODE, 15);
    Params.ParamByName('WORK_ORDER').AsString := bcGetStringstr(tWORK_ORDER, 7);
    Params.ParamByName('LOT_ID').AsString := bcGetStringstr(tLOT_ID, 15);
    Params.ParamByName('RETURN_QTY').AsFloat := ClientDataSet1.FieldByName('RETURN_QTY').AsFloat;
    Params.ParamByName('UOM').AsString := bcGetStringstr(ClientDataSet1.FieldByName('UOM').AsString, 2);
    Params.ParamByName('RETURN_DATE').AsDate := ClientDataSet1.FieldByName('RETURN_DATE').AsDateTime;
    Params.ParamByName('STOCKROOM').AsString := bcGetStringstr(tSTOCKROOM, 2);
    Params.ParamByName('COMPANY').AsString := bcGetStringstr(tCOMPANY, 2);
    Params.ParamByName('STATUS').AsInteger := ClientDataSet1.FieldByName('STATUS').AsInteger;
    Params.ParamByName('Location').AsString := ClientDataSet1.FieldByName('Location').AsString;
    Params.ParamByName('ToLocation').AsString := ClientDataSet1.FieldByName('ToLocation').AsString;
    Params.ParamByName('ErpSuccess').Value := ClientDataSet1.FieldByName('ErpSuccess').Value;
    //Params.ParamByName('Remark').Value := ClientDataSet1.FieldByName('Remark').AsString;
    if bAdd then
    begin
      Params.ParamByName('RECORD_CREATED_DATE').AsDate := ClientDataSet1.FieldByName('RECORD_CREATED_DATE').AsDateTime;
    end
    else
    begin
      Params.ParamByName('RETURN_NO1').Value := ClientDataSet1.FieldByName('RETURN_NO').OldValue;
      //      Params.ParamByName('ITEM_CODE1').AsString := tITEM_CODE;
      //      Params.ParamByName('WORK_ORDER1').AsString := tWORK_ORDER;
      Params.ParamByName('LOT_ID1').Value := ClientDataSet1.FieldByName('LOT_ID').OldValue;
      //      Params.ParamByName('STOCKROOM1').AsString := tSTOCKROOM;
      Params.ParamByName('COMPANY1').Value := ClientDataSet1.FieldByName('COMPANY').OldValue;
      //      if ClientDataSet1.FieldByName('ErpSuccess').IsNull then
      //        Params.ParamByName('ErpSuccess').Clear
      //      else
    end;
    execute;
  end;

  with ClientDataSet_Temp do
  begin
    close;
    params.clear;
    remark:=   ClientDataSet1.FieldByName('Remark').AsString;
    //returnno:= ClientDataSet1.FieldByName('RETURN_NO').OldValue;
    //lotno:= ClientDataSet1.FieldByName('LOT_ID').OldValue;
    //companyno  := ClientDataSet1.FieldByName('COMPANY').OldValue;
    sSQL:='update a set a.remark='+QuotedStr(remark)+' from PB_RETURN a '
    +' where a.RETURN_NO='+QuotedStr(tRETURN_NO)+'  and a.LOT_ID='+QuotedStr(bcGetStringstr(tLOT_ID, 15))+' and a.COMPANY='+QuotedStr(bcGetStringstr(tCOMPANY, 2));
    commandtext := sSQL;
    execute;
  end;

end;

procedure TfrmMain.btnModifyClick(Sender: TObject);
begin
  inherited;
  if not CheckUserRight(cUrModify, TButton(Sender).Caption, UserRights) then exit;
  if ClientDataSet1.Active and (not ClientDataSet1.IsEmpty) and (ClientDataSet1.RecordCount > 0) then
  begin
    DoReturnMeterialData(emrEdit);
  end;
end;

procedure TfrmMain.btnSaveClick(Sender: TObject);
begin
  inherited;
  DoReturnMeterialData(emrPost);
end;

procedure TfrmMain.btnCancelClick(Sender: TObject);
begin
  inherited;
  DoReturnMeterialData(emrCancel);
end;

procedure TfrmMain.btnAddClick(Sender: TObject);
begin
  inherited;
  if not CheckUserRight(cUrAdd, TButton(Sender).Caption, UserRights) then exit;
  DoReturnMeterialData(emrAdd);
end;

procedure TfrmMain.btnDeleteClick(Sender: TObject);
begin
  inherited;
  if not CheckUserRight(cUrDelete, TButton(Sender).Caption, UserRights) then exit;
  if ClientDataSet1.Active and (not ClientDataSet1.IsEmpty) and (ClientDataSet1.RecordCount > 0) then
  begin
    begin
      DoReturnMeterialData(emrDelete);
    end;
  end;
end;

procedure TfrmMain.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  if ClientDataSet1.State in [dsInsert] then
  begin
    if cxLookupComboBox1.Text <> '' then
      ClientDataSet1.FieldByName('RETURN_NO').AsString := cxLookupComboBox1.Text
    else
      ClientDataSet1.FieldByName('RETURN_NO').Clear;
  end;
end;

procedure TfrmMain.cxGrid1DBTableView1STATUSGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AInt: Integer;
begin
  inherited;
  //GetLanguagesStr(8, 'Only the Adminstrator can Delete!', True)
  AInt := StrToIntDef(AText, -1);
  case TbcStatus(AInt) of //
    bcsNew: AText := FsNew;
    bcsToSystem21: AText := FsSystem21;
  end; // case
end;

procedure TfrmMain.SetRETURN_NO(Value: string);
begin
  if FRETURN_NO <> Value then
  begin
    FRETURN_NO := Value;
    cxLabel_RETURN_NO.Caption := FRETURN_NO;
  end;
end;

procedure TfrmMain.ClientDataSet1AfterScroll(DataSet: TDataSet);
begin
  inherited;
  btnModify.Enabled := (DataSet.FieldByName('STATUS').AsInteger = Ord(bcsNew))
    or ((DataSet.FieldByName('STATUS').AsInteger = Ord(bcsToSystem21))
    and (not DataSet.FieldByName('ErpSuccess').AsBoolean) and (not DataSet.FieldByName('ErpSuccess').IsNull));
  //  btnDelete.Enabled :=not DataSet.FieldByName('ERPSuccess').AsBoolean;
  btnReport.Enabled := True;
  btnToSystem21.Enabled := True;
  btnDelete.Enabled := True;
  btnRefreshUploadtoERPStatus.Enabled := True;
end;

procedure TfrmMain.btnReportClick(Sender: TObject);
var
  ABatchNo, ASQL, ACase: string;
  bPrintAll: boolean;
begin
  inherited;
  if not CheckUserRight(cUrReport, TButton(Sender).Caption, UserRights) then exit;
  with ClientDataSet2 do
  begin
    Close;
    CommandText := 'select Distinct RETURN_NO from PB_RETURN '
      + bcGetWhereSQL(ClientDataSet1.CommandText, '', '', True) + ' order by RETURN_NO';
    Open;
  end; // with
  if not DoSelectPrintNo(ABatchNo, bPrintAll) then exit;

  with RMGridReport1 do
  begin
    //LoadFromFile(ExtractFilePath(Application.ExeName) + 'MR.rls');
    LoadFromResourceName(hInstance, 'MR');
    Dictionary.Clear;
    Dictionary.Variables.Insert(0, ' Global');
    Dictionary.Variables.AsString['NewRecord'] := FsNew;
    Dictionary.Variables.AsString['System21'] := FsSystem21;
    Dictionary.Variables['FToErpSuccess'] := FsToErpSuccess;
    Dictionary.Variables['FToErpFail'] := FsToErpFail;
    Dictionary.Variables.AsString['FERPStatus'] := GetLanguagesStr(68, 'Upload Status', True);

    Dictionary.Variables.AsString['FReportTitle'] := GetLanguagesStr(44, 'PH Garment: Return Material Report');
    Dictionary.Variables.AsString['FDate'] := GetLanguagesStr(23, 'Date', True);
    Dictionary.Variables.AsString['FTime'] := GetLanguagesStr(38, 'Time', True);
    Dictionary.Variables.AsString['FPage'] := GetLanguagesStr(47, 'Page', True);
    Dictionary.Variables.AsString['FStatus'] := GetLanguagesStr(12, 'Status', True);
    Dictionary.Variables.AsString['FItemCode'] := GetLanguagesStr(13, 'Item Code', True);
    Dictionary.Variables.AsString['FLotNumber'] := GetLanguagesStr(14, 'Lot Number', True);
    Dictionary.Variables.AsString['FUOM'] := GetLanguagesStr(15, 'UOM', True);
    Dictionary.Variables.AsString['FStockRoom'] := GetLanguagesStr(16, 'Stock Room', True);
    Dictionary.Variables.AsString['FCompanyCode'] := GetLanguagesStr(17, 'Company Code', True);
    Dictionary.Variables.AsString['FProjectNo'] := GetLanguagesStr(129, 'Project No.', True);
    Dictionary.Variables.AsString['FLocation'] := GetLanguagesStr(73, 'Location', True);

    Dictionary.Variables.AsString['FBatchNo'] := GetLanguagesStr(9, 'Batch No.');
    Dictionary.Variables.AsString['FWorkOrderNo'] := GetLanguagesStr(11, 'Work Order No.');
    Dictionary.Variables.AsString['FReturnQty'] := GetLanguagesStr(13, 'Return Qty');
    Dictionary.Variables.AsString['FReturnDate'] := GetLanguagesStr(39, 'Return Date');

    SetReportCanDesign(RMGridReport1);

    with ClientDataSet_Temp do
    begin
      Close;
      params.clear;
      ACase := 'UploadERP= case when a.ERPSuccess is null then -1 else  a.ERPSuccess end ';
      ASQL := 'select a.*,b.[SalesOrderNo],c.[ProjectNo],' + ACase
        + ' from PB_RETURN a'
        + ' left join [ph.rwo1].dbo.workorder b on a.[Company]=b.[Company] and a.[WORK_ORDER]=b.[WorkOrderNo]'
        + ' left join [ph.rwo1].dbo.Project c on c.[Company]=b.[Company] and c.[SalesOrderNo]=b.[SalesOrderNo]';
      if not bPrintAll then
        ASQL := ASQL + ' Where RETURN_NO=' + QuotedStr(ABatchNo);
      ASQL := ASQL + ' order by RETURN_NO,RETURN_DATE';
      CommandText := ASQL;
      Open;
    end; // with
    RMDBDataSet1.DataSet := ClientDataSet_Temp;

    ShowReport;
  end; // with
end;

procedure TfrmMain.SetLanguageStr;
var
  AStr: string;
begin
  inherited;
  RUnit := 'Return Material';
  btnAdd.Caption := GetLanguagesStr(28, 'Add', True);
  btnModify.Caption := GetLanguagesStr(29, 'Modify', True);
  btnDelete.Caption := GetLanguagesStr(2, 'Delete', True) + '..';
  btnFromHandHeld.Caption := GetLanguagesStr(104, 'From HandHeld', True);
  btnFromHandHeld.Hint := GetLanguagesStr(42, 'Transfer data From HandHeld', True);
  btnReport.Caption := GetLanguagesStr(3, 'Report', True);
  btnToSystem21.Caption := GetLanguagesStr(51, 'to System 21', True);
  btnToSystem21.Hint := GetLanguagesStr(41, 'Transfer data To System 21', True);
  btnSave.Caption := GetLanguagesStr(27, 'Save', True);
  btnCancel.Caption := GetLanguagesStr(11, 'Cancel', True);

  AStr := GetLanguagesStr(9, 'Batch No.');
  cxGrid1DBTableView1RETURN_NO.Caption := AStr;
  Label3.Caption := AStr + ' :';
  cxGroupBox5.Caption := AStr;
  cxGrid3DBTableView1RETURN_NO.Caption := AStr;

  AStr := GetLanguagesStr(13, 'Item Code', True);
  cxGrid1DBTableView1ITEM_CODE.Caption := AStr;
  Label2.Caption := AStr + ' :';

  AStr := GetLanguagesStr(11, 'Work Order No.');
  cxGrid1DBTableView1WORK_ORDER.Caption := AStr;
  Label1.Caption := AStr + ' :';

  AStr := GetLanguagesStr(14, 'Lot No.', True);
  cxGrid1DBTableView1LOT_ID.Caption := AStr;
  Label5.Caption := AStr + ' :';

  AStr := GetLanguagesStr(13, 'Return Qty');
  cxGrid1DBTableView1RETURN_QTY.Caption := AStr;
  Label4.Caption := AStr + ' :';

  AStr := GetLanguagesStr(15, 'Uom', True);
  cxGrid1DBTableView1UOM.Caption := AStr;
  Label7.Caption := AStr + ' :';

  AStr := GetLanguagesStr(39, 'Return Date');
  cxGrid1DBTableView1RETURN_DATE.Caption := AStr;
  Label8.Caption := AStr + ' :';

  AStr := GetLanguagesStr(16, 'StockRoom', True);
  cxGrid1DBTableView1STOCKROOM.Caption := AStr;
  Label6.Caption := AStr + ' :';

  AStr := GetLanguagesStr(73, 'Location', True);
  //cxGrid1DBTableView1Location.Caption := AStr;
  //Label10.Caption := AStr + ' :';

  AStr := GetLanguagesStr(17, 'Company', True);
  cxGrid1DBTableView1COMPANY.Caption := AStr;
  Label9.Caption := AStr + ' :';

  cxGrid1DBTableView1STATUS.Caption := GetLanguagesStr(12, 'Status', True);
  cxGrid1DBTableView1RECORD_CREATED_DATE.Caption := GetLanguagesStr(18, 'Create Date');
  cxGroupBox2.Caption := GetLanguagesStr(19, 'Please enter details :');
  cxGroupBox3.Caption := GetLanguagesStr(20, ' Batch No. ');
  cxRadioButton1.Caption := GetLanguagesStr(21, 'New Batch No. :');
  cxRadioButton2.Caption := GetLanguagesStr(22, 'Exists Batch No.,Please select one :');
  cxLabel_Tips.Caption := GetLanguagesStr(25, ' Modify Return Meterial ');
  cxLabel_Tips1.Caption := GetLanguagesStr(26, ' Add Return Meterial ');
  btnClearAll.Caption := GetLanguagesStr(60, 'Clear All', True);
  cxButton1.Caption := GetLanguagesStr(39, 'Select', True);
  cxButton3.Caption := GetLanguagesStr(11, 'Cancel', True);

  btnRefreshUploadtoERPStatus.Caption := GetLanguagesStr(67, 'Refresh', True) + #10#13 + GetLanguagesStr(68, 'Upload Status', True);
  cxGrid1DBTableView1ERPSuccess.Caption := GetLanguagesStr(69, 'Upload ERP', True);

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
  btnAutoGetData.Caption := GetLanguagesStr(93, 'Auto Get Data', True);

  Label12.Caption := GetLanguagesStr(53, 'Floor') + '(1)';
  Label13.Caption := GetLanguagesStr(54, 'Rack') + '(2-5)';
  Label14.Caption := GetLanguagesStr(12, 'Status', True) + '1 (6-7)';
  Label15.Caption := GetLanguagesStr(12, 'Status', True) + '2 (8)';
  Label16.Caption := GetLanguagesStr(12, 'Status', True) + '3 (9)';

  Label17.Caption := GetLanguagesStr(64, 'Reason', True);
  cxGrid1DBTableView1Reason.Caption := Label17.Caption;

  pnl_Title.Caption := GetLanguagesStr(1000 + Self.Tag, RUnit, True);
  Caption := pnl_Title.Caption;
end;

function TfrmMain.AutoGetDatabyID(ALotNo, ACono: string; var AITEM_CODE, AWORK_ORDER, AUOM, Location, STOCKROOM: string;
  var Qty: Double; isHandheld: boolean): boolean;
var
  Qtyed: double;
  ACount: Integer;
  ASQL, ASQL1, ASQL2, IDO, Location1, fields: string;
  ADateSet: TDataSet;
begin
  result := False;
  fields := '[SOP] ,[PROJECT_NO] ,[IDO] ,[WORK_ORDER] ,[LOT_ID] ,[ISSUE_QTY] ,[GATEPASS] ,[UID]'
    + ',[ITEM_CODE] ,[COMPANY] ,[Stockroom] ,[ISSUED_DATE] ,[UOM] ,[Location] ,[pgmn] ,[STATUS]'
    + ',[ERPSuccess] ,[LOT_ID_Sub] ,[RECORD_CREATED_DATE] ,[PHISM] ,[ColorShade] ,[InspectedFlag]'
    + ',[OrigQTY] ,[reserveMaterial] ,[FERROR] ,[MOVR] ,[PARENTWO]';
  ASQL1 := 'select ' + fields + ' from PB_GatePass where LOT_ID=' + QuotedStr(ALotNo) + ' and Company=' + QuotedStr(ACono) + ' and (ERPSuccess=1 and status=1)';
  ASQL2 := 'select ' + fields + ' from PB_GATEPASS_Unplanned where LOT_ID=' + QuotedStr(ALotNo) + ' and Company=' + QuotedStr(ACono) + ' and (ERPSuccess=1 and status=1)';
  if isHandheld then ASQL1 := ASQL1 + ' and STOCKROOM=' + QuotedStr(STOCKROOM);
  if isHandheld then ASQL2 := ASQL2 + ' and STOCKROOM=' + QuotedStr(STOCKROOM);

  ASQL := ASQL1 + ' UNION ALL ' + ASQL2;

  with ClientDataSet_Temp do
  begin
    Close;
    Params.Clear;
    CommandText := ASQL;
    Open;
    ACount := RecordCount;
    ADateSet := ClientDataSet_Temp;
    if (ACount = 0) then
    begin
      with ADOQuery4 do
      begin
        ASQL := 'select '''' as IDO,compi3 as ITEM_CODE,wordi3 as WORK_ORDER,istri3 as STOCKROOM,'''' as Location,iunti3 as UOM,coisi3 as ISSUE_QTY, conoi3 as Company,locni3 as LOT_ID  '
          + ' from ault4f1.appi3ue where conoi3=' + QuotedStr(ACono)
          + ' and locni3=' + QuotedStr(ALotNo)
          + ' and (errfi3=''00000000000000000000'' or errfi3=''000000000000000000000000000000'')';
        if isHandheld then ASQL := ASQL + ' and istri3=' + QuotedStr(STOCKROOM);
        Close;
        SQL.Clear;
        SQL.Text := ASQL;
        Open;
        ACount := RecordCount;
        ADateSet := ADOQuery4;

        if (ACount = 0) then exit;
      end;
    end;
  end;
  result := True;

  if (not isHandheld) and (ACount > 1) then
    if not (DoSelectData(ADateSet)) then exit;

  with ADateSet do
  begin

    IDO := FieldByName('IDO').AsString;
    AITEM_CODE := FieldByName('ITEM_CODE').AsString;
    AWORK_ORDER := FieldByName('WORK_ORDER').AsString;
    STOCKROOM := FieldByName('STOCKROOM').AsString;
    Location1 := FieldByName('Location').AsString;
    AUOM := FieldByName('UOM').AsString;
    Qty := FieldByName('ISSUE_QTY').AsFloat;

    Location := Trim(GetNewLocation(ACono, AITEM_CODE, ALotNo));
    if (Location = '') then Location := Location1;

    if (Location1 <> Location) then
      UpdateLocation(ACono, AITEM_CODE, ALotNo, IDO, Location);
    //Qtyed  :=GetIDHasReturnQty(ALotNo,ACono);
    //Qty:= Max(Qty-Qtyed,0);
  end; //with
end;

function TfrmMain.GetNewLocation(cono: string; sku: string; lotid: string): string;
var
  sSQL: string;
  location: string;
begin
  with ADOQuery3 do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select CH9T84 FROM AULT4f1.app84 where CONO84=' + QuotedStr(cono) + ' and PNUM84=' + QuotedStr(sku) + ' and LOTN84=' + QuotedStr(lotid);
    Open;
    result := FieldByName('CH9T84').AsString;
  end; // with
end;

procedure TfrmMain.UpdateLocation(cono: string; sku: string; lotid: string; ido: string; Location: string);
begin
  with ClientDataSet_Temp do
  begin
    Close;
    Params.Clear;
    Params.CreateParam(ftString, '@COMPANY', ptInput);
    Params.CreateParam(ftString, '@ITEM_CODE', ptInput);
    Params.CreateParam(ftString, '@LOT_ID', ptInput);
    Params.CreateParam(ftString, '@IDO', ptInput);
    Params.CreateParam(ftString, '@Location', ptInput);
    CommandText := 'exec sp_pb_Update_Location :@COMPANY,:@ITEM_CODE,:@LOT_ID,:@IDO,:@Location';
    Params.ParamByName('@COMPANY').AsString := cono;
    Params.ParamByName('@ITEM_CODE').AsString := sku;
    Params.ParamByName('@LOT_ID').AsString := lotid;
    Params.ParamByName('@IDO').AsString := ido;
    Params.ParamByName('@Location').AsString := Location;
    Execute;
  end; // with
end;

function TfrmMain.GetITEMCODE_WORKORDER(ALotNo, ACono: string; var AITEM_CODE, AWORK_ORDER, AUOM: string): boolean;
begin
  with ClientDataSet_Temp do
  begin
    Close;
    Params.Clear;
    CommandText := 'select wl as Item_Code,zdh as Work_Order,UOM from IDO2 where idno=' + QuotedStr(ALotNo);
    Open;
    if RecordCount > 0 then
    begin
      result := True;
      AITEM_CODE := FieldByName('Item_Code').AsString;
      AWORK_ORDER := FieldByName('Work_Order').AsString;
      AUOM := FieldByName('UOM').AsString;
    end
    else
    begin
      with ADOQuery1 do
      begin
        Close;
        SQL.Text := 'Select pnum80 as Item_Code,WUOM80 as uom from AULT2f1.inp80 where cono80=' + QuotedStr(ACono)
          + ' and Locn80=' + QuotedStr(ALotNo);
        Open;
        if RecordCount > 0 then
        begin
          result := True;
          AITEM_CODE := FieldByName('Item_Code').AsString;
          AUOM := FieldByName('UOM').AsString;
        end
        else
        begin
          result := False;
        end;
      end; // with
    end;
  end; // with
end;

function FromToLocation(loc: string): string;
var
  floor, rack, status1, status2, status3: string;
begin
  if (trim(loc) = '') then
  begin
    result := '';
    exit;
  end;
  floor := Copy(loc, 1, 1);
  rack := Copy(loc, 2, 4);
  status2 := Copy(loc, 8, 1);
  status3 := Copy(loc, 9, 1);

  floor := Format('%-1s', [floor]); //1
  rack := Format('%-4s', [rack]); //2-5
  status1 := 'OC'; //6-7
  status2 := Format('%-1s', [status2]); //8
  status3 := Format('%-1s', [status3]); //9

  result := floor + rack + status1 + status2 + status3;
end;

function DoInsertFromHandHeldData_MR(AFileName: string): boolean;
var
  F: TextFile;
  LotNumber: string[15];
  ABatchNo, ACono, AStockRoom, AITEM_CODE, AWORK_ORDER, AUOM, Location: string;
  I: Integer;
  Qty: double;
begin
  result := False;
  if FileExists(AFileName) then
  begin
    AssignFile(F, AFileName);
    Reset(F);
    ABatchNo := frmMain.SelectHandHeldBatchNo;
    ACono := frmMain.SelectHandHeldCono;
    AStockRoom := frmMain.SelectHandHeldStockRoom;
    try
      I := 0;
      while not EOF(F) do
      begin
        Readln(F, LotNumber);
        LotNumber := (LotNumber); //Trim
        with frmMain.ClientDataSet1 do
        begin
          if I = 0 then frmMain.FilterReturnData(ABatchNo);

          if not Locate('RETURN_NO;LOT_ID;COMPANY',
            VarArrayOf([ABatchNo, LotNumber, ACono]), []) then
          begin
            AITEM_CODE := '';
            AWORK_ORDER := '';
            AUOM := '';
            Location := '';
            //frmMain.GetITEMCODE_WORKORDER(LotNumber, ACono, AITEM_CODE, AWORK_ORDER, AUOM);
            frmMain.AutoGetDatabyID(LotNumber, ACono, AITEM_CODE, AWORK_ORDER, AUOM, Location, AStockRoom, Qty, True);
            Append;
            FieldByName('RETURN_NO').AsString := ABatchNo;
            FieldByName('COMPANY').AsString := ACono;
            FieldByName('STATUS').AsInteger := Ord(bcsNew);
            FieldByName('RECORD_CREATED_DATE').AsDateTime := GetServerDateTime;
            FieldByName('RETURN_DATE').AsDateTime := GetServerDateTime;
            FieldByName('RETURN_QTY').AsFloat := 0; // Qty;
            FieldByName('ITEM_CODE').AsString := AITEM_CODE;
            FieldByName('WORK_ORDER').AsString := AWORK_ORDER;
            FieldByName('LOT_ID').AsString := LotNumber;
            FieldByName('STOCKROOM').AsString := AStockRoom;
            FieldByName('UOM').AsString := AUOM;
            FieldByName('Location').AsString := Location; // frmMain.GetLocationFromS21(LotNumber, ACono);
            FieldByName('ToLocation').AsString := FromToLocation(Location);

            with frmMain do
            begin
              tRETURN_NO := ABatchNo;
              tITEM_CODE := AITEM_CODE;
              tWORK_ORDER := AWORK_ORDER;
              tLOT_ID := LotNumber;
              tSTOCKROOM := AStockRoom;
              tCOMPANY := ACono;
            end; // with
            Post;
            {if ApplyUpdates(-1) > 0 then}frmMain.DoApplyUpdateData(True);
          end;
        end; // with
        Inc(I);
      end; // while
      result := True;
      //frmMain.RETURN_NO := frmMain.GetMaxRETURN_NO(False);
    finally // wrap up
      CloseFile(F);
    end; // try/finally
  end;
end;

procedure TfrmMain.btnFromHandHeldClick(Sender: TObject);
var
  AFileName: string;
  iResult: Integer;
begin
  inherited;
  if not CheckUserRight(cUrFromHandHeld, TButton(Sender).Caption, UserRights) then exit;
  with ClientDataSet2 do
  begin
    Close;
    CommandText := 'select Distinct RETURN_NO from PB_RETURN order by RETURN_NO';
    Open;
  end; // with
  SelectHandHeldBatchNo := GetMaxRETURN_NO(False);
  //select a batch no.
  if not DoSelectHandHeldNo(SelectHandHeldBatchNo, SelectHandHeldCono, SelectHandHeldStockRoom) then exit;

  AFileName := 'MAT_RET.DAT';

  Screen.Cursor := crSQLWait;
  try
    //get data from HandHeld
    iResult := FromHandHeld(AFileName, ComPort, @DoInsertFromHandHeldData_MR);
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
  ABatchNo: string;
  bPrintAll: boolean;
begin
  inherited;
  if not CheckUserRight(cUrToERP, TButton(Sender).Caption, UserRights) then exit;
  with ClientDataSet2 do
  begin
    Close;
    CommandText := 'select Distinct RETURN_NO from PB_RETURN '
      + bcGetWhereSQL(ClientDataSet1.CommandText, '', '', True) + ' order by RETURN_NO';
    Open;
  end; // with
  if not DoSelectPrintNo(ABatchNo, bPrintAll) then exit;

  with ClientDataSet2 do
  begin
    Close;
    CommandText := 'select Count(*) from PB_RETURN  where RETURN_NO='
      + QuotedStr(ABatchNo) + ' and (RETURN_QTY=0 or RETURN_QTY is null)';
    Open;
    if Fields[0].AsInteger <> 0 then
    begin
      Application.MessageBox(PChar(GetLanguagesStr(13, 'Return Qty') + ' ' + GetLanguagesStr(50, 'Must greater than 0 ,Please Check!')),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);

      exit;
    end;
  end; // with

  Screen.Cursor := crSQLWait;
  ClientDataSet1.Close;
  try
    if bPrintAll then ABatchNo := '';
    vParam := VarArrayCreate([0, 0], varVariant);
    vParam[0] := ABatchNo;
    SCN.AppServer.UpdateDataToERP(ord(ftPB_RETURN), vParam, bFinish);
  finally // wrap up
    ClientDataSet1.Open;
    Screen.Cursor := crDefault;
    if bFinish = -1 then
      Application.MessageBox(PChar('[' + GetLanguagesStr(41, 'Transfer data To System 21', True) + '] ' + GetLanguagesStr(63, 'Fail', True)
        + #10#13 + GetLanguagesStr(64, 'Reason', True) + ':' + GetLanguagesStr(65, 'FTP Connect unsuccessful', True)),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONError)
    else
      Application.MessageBox(PChar('[' + GetLanguagesStr(41, 'Transfer data To System 21', True) + '] ' + GetLanguagesStr(20, 'Finish', True)),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
  end; // try/finally
  //if bFinish=1 then  ShowMessage('Finish');
end;

procedure TfrmMain.cxGrid1DBTableView1RETURN_DATEGetDisplayText(
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
  COMPANY, LOT_ID, ITEM_CODE, STOCKROOM, Worder, RETURN_NO: string;
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
      RETURN_NO := DataSet.FieldByName('RETURN_NO').AsString;
      ADate := StrToIntDef(FormatDateTime('YYYYMMDD', DataSet.FieldByName('RETURN_DATE').AsDateTime), 19000000) - 19000000;

      with ADOQuery2 do
      begin
        Close;
        SQL.Clear;
        //SQL.Text := 'Call ZPHLIB_AUL.sp_RefreshUploadToERP (:DT,:TM,:CONO,:LOT_ID,:ItemCode,:StockRoom,:Worder,:FDate,:RETURN_NO)';
        SQL.Text := 'Call ZPHLIB_AUL.sp_RefreshUploadToERP (' + IntToStr(DT) + ',' + QuotedStr(TM) + ','
          + QuotedStr(COMPANY) + ',' + QuotedStr(LOT_ID) + ',' + QuotedStr(ITEM_CODE) + ',' + QuotedStr(StockRoom) + ','
          + QuotedStr(Worder) + ',' + IntToStr(ADate) + ',' + QuotedStr(RETURN_NO) + ')';
        { Parameters.ParamByName('DT').Value := DT;
         Parameters.ParamByName('TM').Value := TM;
         Parameters.ParamByName('CONO').Value := COMPANY;
         Parameters.ParamByName('LOT_ID').Value := LOT_ID;
         Parameters.ParamByName('ItemCode').Value := ITEM_CODE;
         Parameters.ParamByName('StockRoom').Value := STOCKROOM;
         Parameters.ParamByName('Worder').Value := Worder;
         Parameters.ParamByName('FDate').Value := ADate;
         Parameters.ParamByName('RETURN_NO').Value := RETURN_NO; }
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
  ASQL, conoi, wordi, trdti, istri, compi, locni, errfi: string;
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

      //      First;
      //      while not Eof do
      //      begin
      //        conoi := bcGetStringstr(FieldByName('COMPANY').AsString, 2);
      //        wordi := bcGetStringstr(FieldByName('WORK_ORDER').AsString, 7);
      //        trdti := bcGetDateStr(FieldByName('RETURN_DATE').AsDateTime);
      //        istri := bcGetStringstr(FieldByName('Stockroom').AsString, 2);
      //        compi := bcGetStringstr(FieldByName('ITEM_CODE').AsString, 15);
      //        locni := bcGetStringstr(FieldByName('LOT_ID').AsString, 15);
      //        ASQL := ASQL + 'or (conoi4=' + QuotedStr(conoi) + ' and wordi4=' + QuotedStr(wordi) + ' and trdti4=' + trdti
      //          + ' and istri4=' + QuotedStr(istri) + ' and compi4=' + QuotedStr(compi) + ' and locni4=' + QuotedStr(locni) + ') ';
      //        Next;
      //      end; // while
      //
      //      ASQL := 'where ' + Trim(Copy(ASQL, 3, MaxInt));

      with ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select a.*,b.IDO as RETURN_NO from AULT4f1.appi4ue a,zphlib_aul.IDOIssueTemp b');
        SQL.Add('where b.dt=' + IntToStr(DT) + ' and b.tm=' + QuotedStr(TM));
        SQL.Add('and b.cono=conoi4 and  b.LOTID=locni4 and b.ItemCode=compi4');
        SQL.Add('and b.StockRoom=istri4 and b.worder=wordi4 and b.FDate=trdti4');
        //Parameters.ParamByName('DT').Value := DT;
        //Parameters.ParamByName('TM').Value := TM;
        Open;
        //        Close;
        //        SQL.Clear;
        //        SQL.Add('select * from AULT4f1.appi4ue');
        //        SQL.Add(ASQL);
        //        Open;
        if RecordCount = 0 then exit;
        First;
        while not Eof do
        begin
          conoi := FieldByName('conoi4').AsString;
          wordi := FieldByName('wordi4').AsString;
          trdti := FieldByName('trdti4').AsString;
          istri := FieldByName('istri4').AsString;
          compi := FieldByName('compi4').AsString;
          locni := FieldByName('locni4').AsString;
          errfi := Trim(FieldByName('errfi4').AsString);
          RETURN_NO := FieldByName('RETURN_NO').AsString;
          bErpSuccess := StrToIntDef(errfi, 1) = 0; //= '0000000000000000000000';
          DoApplyUpdateReturnErpSuccess(conoi, wordi, trdti, istri, compi, locni, RETURN_NO, bErpSuccess);
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

procedure TfrmMain.DoApplyUpdateReturnErpSuccess(conoi, wordi, trdti, istri, compi, locni, RETURN_NO: string; bErpSuccess: boolean);
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
    Params.CreateParam(ftString, '@RETURN_NO', ptInput);
    CommandText := 'exec sp_pb_Update_ErpSuccess :@COMPANY,:@WORK_ORDER,:@DATE,:@Stockroom,:@ITEM_CODE,:@LOT_ID,:@ErpSuccess,:@Type,:@RETURN_NO';
    Params.ParamByName('@COMPANY').AsString := conoi;
    Params.ParamByName('@WORK_ORDER').AsString := wordi;
    Params.ParamByName('@DATE').AsDateTime := bcGetStrDate(trdti);
    Params.ParamByName('@Stockroom').AsString := istri;
    Params.ParamByName('@ITEM_CODE').AsString := compi;
    Params.ParamByName('@LOT_ID').AsString := locni;
    Params.ParamByName('@ErpSuccess').AsBoolean := bErpSuccess;
    Params.ParamByName('@Type').AsInteger := 0;
    Params.ParamByName('@RETURN_NO').AsString := RETURN_NO;
    Execute;
  end; // with
end;

procedure TfrmMain.cxButtonEdit_HDOPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  pnl_select.Left := cxGroupBox5.Left + cxGroupBox5.Width + 10;
  pnl_select.Top := cxGroupBox1.Top;
  pnl_select.Visible := True;
  Panel1.Visible := False;
  cxGrid3DBTableView1.DataController.DataSource := nil;
  Application.ProcessMessages;
  Screen.Cursor := crSQLWait;
  try
    with ClientDataSet2 do
    begin
      Close;
      CommandText := 'select Distinct RETURN_NO from PB_RETURN  where company =''P1'' order by RETURN_NO';
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
  cxButtonEdit_ReturnNo.Text := AText;
  cxButtonEdit_ReturnNo.SetFocus;

  cxGrid3DBTableView1.DataController.DataSource := nil;
  FilterReturnData(AText);
  Panel1.Visible := True;
end;

procedure TfrmMain.cxButton3Click(Sender: TObject);
begin
  inherited;
  pnl_select.Visible := False;
  cxButtonEdit_ReturnNo.SetFocus;
  cxGrid3DBTableView1.DataController.DataSource := nil;
  Panel1.Visible := True;
end;

procedure TfrmMain.cxButtonEdit_ReturnNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) and (Shift = []) then
  begin
    FilterReturnData(cxButtonEdit_ReturnNo.Text);
  end;
end;

procedure TfrmMain.FilterReturnData(ARETURN_NO: string);
var
  aSQL, sWhere: string;
begin
  with ClientDataSet1 do
  begin
    Filtered := False;
    Filter := '';
    //DisableControls;
    Screen.Cursor := crSQLWait;
    Application.ProcessMessages;
    try
      //1.get sql
      sWhere := bcGetWhereSQL(ClientDataSet1.CommandText, 'RETURN_NO', ARETURN_NO);
      //2.show data
      Close;
      aSQL := 'SELECT * FROM PB_Return';
      aSQL := aSQL + ' ' + sWhere;
      aSQL := aSQL + ' ORDER BY RETURN_NO,RETURN_DATE';
      CommandText := aSQL;
      Open;
    finally // wrap up
      //EnableControls;
      Screen.Cursor := crDefault;
    end; // try/finally
  end; // with
end;

procedure TfrmMain.ClientDataSet1AfterOpen(DataSet: TDataSet);
begin
  inherited;
  btnModify.Enabled := DataSet.RecordCount > 0;
  btnReport.Enabled := btnModify.Enabled;
  btnToSystem21.Enabled := btnModify.Enabled;
  btnDelete.Enabled := btnModify.Enabled;
  btnRefreshUploadtoERPStatus.Enabled := btnModify.Enabled;
  if btnModify.Enabled then
    ClientDataSet1AfterScroll(DataSet);
end;

procedure TfrmMain.cxPageControlChange(Sender: TObject);
begin
  inherited;
  btnClearAll.Visible := cxPageControl.ActivePageIndex = 0;
  Panel_ColorTips.Visible := cxPageControl.ActivePageIndex = 0;
end;

procedure TfrmMain.btnClearAllClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  try
    with ClientDataSet1 do
    begin
      Close;
      CommandText := 'select * from PB_RETURN where (1=2) order by RETURN_NO,RETURN_DATE';
      Open;
    end; // with
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

procedure TfrmMain.Panel2Resize(Sender: TObject);
begin
  inherited;
  Panel_ColorTips.Left := TPanel(Sender).Width - Panel_ColorTips.Width - 10;
end;

function TfrmMain.GetLocationFromS21(ALotNo, ACono: string): string;
begin
  with ADOQuery1 do
  begin
    close;
    sql.clear;
    sql.add('select ch9t84 from AULT4f1.app84 ');
    sql.add('where cono84=' + QuotedStr(ACono) + ' and lotn84=' + QuotedStr(ALotNo));
    open;
    result := fieldbyname('ch9t84').AsString; //location
  end;
end;

procedure TfrmMain.btnAutoGetDataClick(Sender: TObject);
var
  LotNumber, ACono, AITEM_CODE, AWORK_ORDER, AUOM, Location, AStockRoom: string;
  Qty: double;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  try
    with ClientDataSet1 do
    begin
      LotNumber := FieldByName('LOT_ID').AsString;
      ACono := FieldByName('COMPANY').AsString;

      if (not AutoGetDatabyID(LotNumber, ACono, AITEM_CODE, AWORK_ORDER, AUOM, Location, AStockRoom, Qty, False)) then
      begin
        Application.MessageBox(PChar(GetLanguagesStr(44, 'No Data!', True)),
          PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
        Exit;
      end;

      if not (State in [dsInsert, dsEdit]) then Edit;
      FieldByName('RETURN_QTY').AsFloat := 0; //Qty
      FieldByName('ITEM_CODE').AsString := AITEM_CODE;
      FieldByName('WORK_ORDER').AsString := AWORK_ORDER;
      FieldByName('STOCKROOM').AsString := AStockRoom;
      FieldByName('UOM').AsString := AUOM;
      FieldByName('Location').AsString := Location;
      DoLocationSplit(Location, Location);
    end;
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

function TfrmMain.GetIDHasReturnQty(ID, CONO: string): double;
begin
  with ClientDataSet_Temp do
  begin
    Close;
    Params.Clear;
    CommandText := 'select Sum(RETURN_QTY) from PB_RETURN where LOT_ID=' + QuotedStr(ID) + ' and COMPANY=' + QuotedStr(CONO);
    Open;
    Result := Fields[0].AsFloat;
  end;
end;

end.

