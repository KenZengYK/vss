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
  cxLookAndFeelPainters, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxCheckBox, cxCurrencyEdit;

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
    cxGrid1DBTableView1PHISM: TcxGridDBColumn;
    ADOQuery5: TADOQuery;
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
  private
    { Private declarations }
//    FNew, FPrintLabel: string;
    FsNew, FsSystem21, FsPrintLabel, FsToHandHeld, FsFromHandHeld, FsIDOConfirmed: string;
    FsErpUpload, FsToErpBlank, FsToErpFail, FsToErpSuccess: string;
    FCanDbClick: boolean;
    FSelectRowCount: Integer;
    //procedure DoApplyUpdateData;
    procedure FilterFINALIDData(HDO_NO: string);
    //    function GetWhereSQL(DataSet: TClientDataSet; HDO_NO: string): string;
    procedure SetSelectRowCount(Value: Integer);
    procedure DoSelectRecord(bAll: boolean);
    //    function GetUpdatedQty(DataSet: TDataSet; ACount: Integer): Variant;
    //    function GetCurrQtyOfArray(cono, LotNo,ItemCode, ST: string; vArray: Variant): double;
    //    procedure GetNewCurrQtyOfPrintLabel(var vParams: Variant);
    procedure SetBKColor;
    procedure PHPrintLabel;
    function GetPOInfor(cono, lotid, itemcode: string): string;
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
  Fpono, FbuyerSizeCup, FbuyerSizeCups, FgarmentColor, FendCustStyle, Fdept, FworkOrderNo,FProjectNo: string;
  Fpoline: string;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  ADOQuery1.Connection := ZPHLIB;
  cdsPrintLabel.RemoteServer := SCN;

  SetLanguageStr;
  FSelectRowCount := 0;
  SetBKColor;
  //  with ClientDataSet1 do
  //  begin
  //    Close;
  //    CommandText := 'select * from PB_HDO where 1=2 ORDER BY HDO_NO';
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

  pnl_Title.Caption := GetLanguagesStr(1000 + Self.Tag, RUnit, True);
  Caption := pnl_Title.Caption;

end;

procedure TfrmMain.btnFromSystem21Click(Sender: TObject);
var
  vData, vParam: OleVariant;
  HDO, CONO: string;
  AStr: string;
  I: Integer;
begin
  inherited;
  if not CheckUserRight(cUrFromERP, TButton(Sender).Caption, UserRights) then exit;

  if not DoSelectHDOData(HDO, CONO) then exit;

  //  if (Application.MessageBox(PChar(GetLanguagesStr(19, 'Are you sure to Transfer data From System 21?', True)),
  //    PChar(GetLanguagesStr(5, 'Tips', True)), MB_YESNO + MB_ICONInformation) = IDNO) then exit;

  Screen.Cursor := crSQLWait;
  //  ClientDataSet1.Close;
  try
    with ADOQuery1 do
    begin
      //2:
      Close;
      SQL.Clear;
      SQL.Add('call ZPHLIB_AUL.sp_InitLabel (' + QuotedStr(CONO) + ',' + QuotedStr(HDO) + ')');
      //Parameters.ParamByName('cono').Value := CONO;
      //Parameters.ParamByName('HDO').Value := HDO;
      Open;
      //      SQL.Add('select WHSEI1,ITEMI1,LOCNI1,SPHYI1,IUNTI1,NROLI1,SPC2I1');
      //      SQL.Add('from ault4f1.APPI1U');
      //      sql.add('where CONOI1=' + QuotedStr(CONO) + ' and HDONI1=' + QuotedStr(HDO));
      //      Open;
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
            Fields[5].AsString,
            Fields[6].AsString,
            Fields[7].AsString //PHISM
          // Fields[7].AsString, //Location
         //Fields[8].AsString //pgmn
          ]);
        Inc(I);
        Next;
      end; // while
    end; //with
    //get data from ERP and Update Pb_Final
    vParam := VarArrayCreate([0, 1], varVariant);
    vParam[0] := HDO;
    vParam[1] := CONO;

    SCN.AppServer.GetDataFromERP(ord(ftPB_HDO), vParam, vData);
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
    FilterFINALIDData(HDO);
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

//function TfrmMain.GetCurrQtyOfArray(cono, LotNo,ItemCode, ST: string; vArray: Variant): double;
//var
//  I: Integer;
//begin
//  result := 0;
//  if (VarIsArray(vArray)) then
//    for I := VarArrayLowBound(vArray, 1) to VarArrayHighBound(vArray, 1) do // Iterate
//    begin
//      if ((vArray[I][0]) = (cono)) and ((vArray[I][1]) = (LotNo))
//      and ((vArray[I][2]) = (ItemCode)) and ((vArray[I][3]) = (ST)) then
//      begin
//        if VarIsFloat(vArray[I][4]) then
//          result := vArray[I][4];
//        Break;
//      end;
//    end; // for
//end;
//

procedure TfrmMain.btnPrintLabelClick(Sender: TObject);
begin
  inherited;
  if not CheckUserRight(cUrPrintLabel, TButton(Sender).Caption, UserRights) then exit;

  PHPrintLabel;
end;

procedure TfrmMain.PHPrintLabel;
var
  bcPrinter, ALotNo: string;
  CompanyNo, STOCKROOM, Barcode, ItemCode: string;
  aCURR_QTY: Double;
  iCopies: Integer;
  bCollateCopies: boolean;
begin
  if not DoSelectPrinter(bcPrinter, iCopies, bCollateCopies) then exit;

  with cdsPrintLabel do
  begin
    Close;
    Params.Clear;
    //CommandText := 'select * from PB_FINALID where 1=2';
    CommandText := 'select a.* from PB_PrintLabel a where 1=2';
    Open;
  end; // with

  with ClientDataSet1 do
  begin
    DisableControls;
    ALotNo := FieldByName('LOT_ID').AsString;
    Screen.Cursor := crHourGlass;
    try
      //filter the Recod which has Checked
      Filtered := False;
      Filter := 'IsCheck=1';
      Filtered := True;

      //1.get the select record's curQty from ERP
     // vParam := GetUpdatedQty(ClientDataSet1, SelectRowCount);
      //GetNewUpdatedQty();
      //2.get Value to print label
      First;
      while not Eof do
      begin
        CompanyNo := FieldByName('COMPANY').AsString;
        //STOCKROOM := FieldByName('STOCKROOM').AsString;
        Barcode := FieldByName('LOT_ID').AsString;
        ItemCode := FieldByName('ITEM_CODE').AsString;
        //aCURR_QTY := GetCurrQtyOfArray(CompanyNo, Barcode, ItemCode, STOCKROOM);
        GetPOInfor(CompanyNo, Barcode, ItemCode);

        with cdsPrintLabel do
        begin
          Append;
          FieldByName('HDO_NO').AsString := ClientDataSet1.FieldByName('HDO_NO').AsString;
          FieldByName('ITEM_CODE').AsString := ClientDataSet1.FieldByName('ITEM_CODE').AsString;
          FieldByName('LOT_ID').AsString := ClientDataSet1.FieldByName('LOT_ID').AsString;
          FieldByName('ORG_QTY').AsFloat := ClientDataSet1.FieldByName('ORG_QTY').AsFloat;
          FieldByName('CUR_BAL').AsFloat := ClientDataSet1.FieldByName('CUR_BAL').AsFloat;
          FieldByName('UOM').AsString := bcGetStringStr(ClientDataSet1.FieldByName('UOM').AsString, 2);
          FieldByName('STOCKROOM').AsString := ClientDataSet1.FieldByName('STOCKROOM').AsString;
          FieldByName('COMPANY').AsString := ClientDataSet1.FieldByName('COMPANY').AsString;
          FieldByName('NO_OF_ROLLS').AsInteger := ClientDataSet1.FieldByName('NO_OF_ROLLS').AsInteger;
          FieldByName('STATUS').AsInteger := ClientDataSet1.FieldByName('STATUS').AsInteger;
          FieldByName('RECORD_CREATED_DATE').AsDateTime := ClientDataSet1.FieldByName('RECORD_CREATED_DATE').AsDateTime;
          FieldByName('pgmn').AsString := ClientDataSet1.FieldByName('pgmn').AsString;
          FieldByName('Location').AsString := ClientDataSet1.FieldByName('Location').AsString;
          FieldByName('PHISM').AsString := ClientDataSet1.FieldByName('PHISM').AsString;

          //FieldByName('ColorShade').AsString := ClientDataSet1.FieldByName('ColorShade').AsString;
          FieldByName('Project').AsString := FProjectNo;
          FieldByName('PO').AsString := Fpono;
          FieldByName('Dept').AsString := FDept;
          FieldByName('WorkOrderNo').AsString := Fworkorderno;
          FieldByName('GarmentColor').AsString := FgarmentColor;
          FieldByName('CustStyleNo').AsString := FendCustStyle;
          FieldByName('BuyerSizeCups').AsString := FbuyerSizeCups;
          FieldByName('BuyerSizeCup').AsString := FbuyerSizeCup;
          FieldByName('SuppColor').AsString := Copy(ItemCode, 10, 3);
          //FieldByName('MARKER_WIDTH').AsFloat := 0;

          Post;
        end;

        //        Edit;
        //        FieldByName('Status').AsInteger := Ord(bcsPrintLabel);
        //        FieldByName('CUR_BAL').AsFloat := aCURR_QTY;
        //        Post;
        //        DoApplyUpdateData;

        Next;
      end; // while

      WriteToSocketStream(iCopies, bCollateCopies, bcPrinter, cdsPrintLabel, BarcodePrint);
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
      Filtered := False;
      Filter := '';
      Locate('LOT_ID', ALotNo, []);
      EnableControls;
      Screen.Cursor := crDefault;
    end; // try/finally
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
  FProjectNo:='';
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

//procedure TfrmMain.DoApplyUpdateData;
//begin
//  if ClientDataSet1.ApplyUpdates(-1) = 0 then exit;
//  with ClientDataSet_Temp do
//  begin
//    Close;
//    params.clear;
//    params.createparam(ftInteger, 'Status', ptinput);
//    params.createparam(ftFloat, 'CUR_BAL', ptinput);
//    params.createparam(ftstring, 'HDO_NO', ptinput);
//    params.createparam(ftstring, 'ITEM_CODE', ptinput);
//    params.createparam(ftstring, 'LOT_ID', ptinput);
//    params.createparam(ftstring, 'STOCKROOM', ptinput);
//    params.createparam(ftstring, 'COMPANY', ptinput);
//    CommandText := ' Update PB_HDO Set Status=:Status,CUR_BAL=:CUR_BAL'
//      + ' where HDO_NO=:HDO_NO and ITEM_CODE=:ITEM_CODE and LOT_ID=:LOT_ID and STOCKROOM=:STOCKROOM and  COMPANY=:COMPANY ';
//    Params.ParamByName('Status').AsInteger := ClientDataSet1.FieldByName('Status').AsInteger;
//    Params.ParamByName('CUR_BAL').AsFloat := ClientDataSet1.FieldByName('CUR_BAL').AsFloat;
//    Params.ParamByName('HDO_NO').AsString := ClientDataSet1.FieldByName('HDO_NO').AsString;
//    Params.ParamByName('ITEM_CODE').AsString := ClientDataSet1.FieldByName('ITEM_CODE').AsString;
//    Params.ParamByName('LOT_ID').AsString := ClientDataSet1.FieldByName('LOT_ID').AsString;
//    Params.ParamByName('STOCKROOM').AsString := ClientDataSet1.FieldByName('STOCKROOM').AsString;
//    Params.ParamByName('COMPANY').AsString := ClientDataSet1.FieldByName('COMPANY').AsString;
//    Execute;
//  end; // with
//end;
//

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
      //LoadFromFile(ExtractFilePath(Application.ExeName) + 'IL.rls');
      LoadFromResourceName(hInstance, 'IL');
      //add Dictionary
      Dictionary.Clear;
      Dictionary.Variables.Insert(0, ' Global');
      Dictionary.Variables['NewRecord'] := FsNew;
      Dictionary.Variables['PrintLabel'] := FsPrintLabel;

      Dictionary.Variables.AsString['FReportTitle'] := GetLanguagesStr(23, 'PH Garment: Initial Label Printing Report');
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
    CommandText := 'select distinct HDO_NO from PB_HDO ORDER BY HDO_NO';
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
      ClientDataSet_Temp.CommandText := 'delete from PB_HDO where HDO_NO=' + QuotedStr(AHDONo);
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
  cxButtonEdit_HDO.Text := ClientDataSet_Temp.FindField('HDO_NO').AsString;
  cxButtonEdit_HDO.SetFocus;
  cxGrid2DBTableView1.DataController.DataSource := nil;
  FilterFINALIDData(cxButtonEdit_HDO.Text);
end;

//function TfrmMain.GetWhereSQL(DataSet: TClientDataSet; HDO_NO: string): string;
//var
//  aSQL: string;
//  iPos: Integer;
//  bHasExists: boolean;
//begin
//  aSQL := '';
//  //if DataSet has Open ,then get the SQL
//  if DataSet.Active then
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
//
//  if aSQL = '' then
//    aSQL := 'WHERE (HDO_NO=' + QuotedStr(HDO_NO) + ')'
//  else
//  begin
//      //whether the new condition is Exists
//    bHasExists := Pos('HDO_NO=' + QuotedStr(HDO_NO), aSQL) > 0;
//    //if the new condition is not Exists
//    if not bHasExists then
//      aSQL := aSQL + ' OR (HDO_NO=' + QuotedStr(HDO_NO) + ')';
//  end;
//  result := aSQL;
//end;
//

//function TfrmMain.GetUpdatedQty(DataSet: TDataSet; ACount: Integer): Variant;
//var
//  vParam: Variant;
//  I: Integer;
//  CompanyNo, Barcode,ItemCode, ST: string;
//begin
//  //1.get the select record's curQty from ERP
//  vParam := VarArrayCreate([0, ACount - 1], varVariant);
//  I := 0;
//  with DataSet do
//  begin
//    First;
//    while not EOF do
//    begin
//      CompanyNo := FieldByName('COMPANY').AsString;
//      Barcode := FieldByName('LOT_ID').AsString;
//      ItemCode := FieldByName('ITEM_CODE').AsString;
//      ST := FieldByName('StockRoom').AsString;
//      vParam[I] := VarArrayOf([CompanyNo, Barcode,ItemCode, ST, 0]);
//      Inc(I);
//      Next;
//    end; // while
//  end; // with
//  //SCN.AppServer.PHGetNewCurrQtyOfPrintLabel(vParam);
//  GetNewCurrQtyOfPrintLabel(vParam);
//  result := vParam;
//end;
//
//procedure TfrmMain.GetNewCurrQtyOfPrintLabel(var vParams: Variant);
//var
//  ASQL, ACONO, ALotNo,AItemCode, AST: string;
//  CurQty: Double;
//  I: Integer;
//  vValues: Variant;
//begin
//  if (VarIsArray(vParams)) then
//  begin
//    //get SQL where
//    ASQL := '';
//    for I := VarArrayLowBound(vParams, 1) to VarArrayHighBound(vParams, 1) do
//    begin
//      ACONO := vParams[I][0];
//      ALotNo := vParams[I][1];
//      AItemCode := vParams[I][2];
//      AST := vParams[I][3];
//      ASQL := ASQL + 'OR (Upper(cono80)=' + QuotedStr(ACONO)
//        + ' and locn80=' + QuotedStr(ALotNo)
//        + ' and pnum80=' + QuotedStr(AItemCode)
//        + ' and strc80=' + QuotedStr(AST)
//        + ') ';
//    end; //for
//    //delete the beginning str'OR'
//    ASQL := Copy(ASQL, 3, MaxInt);
//    if ASQL = '' then
//    begin
//      vParams := 0;
//      exit;
//    end;
//
//    //return the Array of (cono,LotNo,CurQty)
//    with ADOQuery1 do
//    begin
//      Close;
//      SQL.Clear;
//      SQL.Add('select cono80 as cono,strc80 as stockroom,locn80 as LotNo,pnum80 as ItemCode,sphy80 as CurrQty');
//      SQL.Add('from ault2f1.inp80');
//      SQL.Add('where ' + ASQL);
//      Open;
//      if RecordCount = 0 then
//      begin
//        vParams := 0;
//        exit;
//      end
//      else
//        vValues := VarArrayCreate([0, RecordCount - 1], varVariant);
//      First;
//      I := 0;
//      while not Eof do
//      begin
//        ACONO := FieldByName('cono').AsString;
//        ALotNo := FieldByName('LotNo').AsString;
//        AItemCode:= FieldByName('ItemCode').AsString;
//        AST := FieldByName('stockroom').AsString;
//        CurQty := FieldByName('CurrQty').AsFloat;
//        vValues[I] := VarArrayOf([ACONO, ALotNo,AItemCode, AST, CurQty]);
//        Inc(I);
//        Next;
//      end; // while
//    end; //with
//    vParams := vValues;
//  end
//  else
//    vParams := 0;
//end;
//

procedure TfrmMain.FilterFINALIDData(HDO_NO: string);
var
  aSQL, sWhere: string;
  //  aCURR_QTY: Double;
  //  CompanyNo, Barcode, ItemCode, ST: string;
  //  vParam: Variant;
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
      sWhere := bcGetWhereSQL(ClientDataSet1.CommandText, 'HDO_NO', HDO_NO);
      //get the new CUR_BAL from erp
{      Close;
      CommandText := 'SELECT * FROM PB_HDO WHERE (HDO_NO=' + QuotedStr((HDO_NO)) + ')';
      Open;
      if RecordCount <> 0 then
      begin
        vParam := GetUpdatedQty(ClientDataSet1, RecordCount);
        First;
        while not Eof do
        begin
          CompanyNo := FieldByName('COMPANY').AsString;
          Barcode := FieldByName('LOT_ID').AsString;
          ItemCode := FieldByName('ITEM_CODE').AsString;
          ST := FieldByName('StockRoom').AsString;
          aCURR_QTY := GetCurrQtyOfArray(CompanyNo, Barcode,ItemCode, ST, vParam);
          if FieldByName('CUR_BAL').AsFloat <> aCURR_QTY then
          begin
            Edit;
            FieldByName('CUR_BAL').AsFloat := aCURR_QTY;
            Post;
            DoApplyUpdateData;
          end;
          Next;
        end; // while
      end; }
      //3.show data
      Close;
      aSQL := 'SELECT * FROM PB_HDO';
      aSQL := aSQL + ' ' + sWhere;
      aSQL := aSQL + ' ORDER BY HDO_NO';
      CommandText := aSQL;
      Open;
      DoSelectRecord(False);
    finally // wrap up
      EnableControls;
      Screen.Cursor := crDefault;
    end; // try/finally
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
      CommandText := 'select distinct HDO_NO from PB_HDO  ORDER BY HDO_NO';
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
    FilterFINALIDData(cxButtonEdit_HDO.Text);
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
end;

procedure TfrmMain.ClientDataSet1AfterClose(DataSet: TDataSet);
begin
  inherited;
  //  btnPrintLabel.Enabled := False;
  btnReport.Enabled := False;
  btnSelectAll.Enabled := False;
  btnSelectNone.Enabled := False;
  btnClearAll.Enabled := False;
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
  inherited;
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

end.

