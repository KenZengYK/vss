unit uBarcodeERP;

{..$DEFINE TSTUnplanned}

interface
uses SysUtils, ADODB, DB, Variants, Controls, Forms, uTools, Classes, dialogs, DBClient;

// FileType:Integer => 1:APPI1U; 2:APPI2U; 3:APPI3U; 4:APPI4U; 5:APPI5U; 6:APPI6U;

type
  TPHDataFile = class(TObject)
  private
    FPHGDB_ADOCN: TADOConnection;
    FZPHLIB_ADOCN: TADOConnection;
    FADOQuery_Batch: TADOQuery;
    FADOQuery_Temp: TADOQuery;
    FADOQuery_AX: TADOQuery;
    FADOQuery_as400: TADOQuery;

    FDataSetRecord: OleVariant;
    FParamsList: TStringList;

    FUpdateCount, FInsertCount: Integer;
    FHDO, FCONO, FCountNO: string;
    //APPI1U (HDO records): Retrieve data from ERP
    F1CompanyCode: string[2];
    F1HDONumber: string[8];
    F1StockroomCode: string[2];
    F1ItemCode: string[15];
    F1LotNumber: string[15];
    F1OriginalReceiptQty: string[11];
    F1CurrentBalance: string[11];
    F1UoM: string[2];
    F1NumberOfCopies: string[2];
    F1NumberOfRolls: string[11];
    F1MarkerWidth: string[11];
    F1SubpackUoM: string[2];
    F1Location: string[15];
    F1PGMN: string[3];
    F1PHISM: string;
    F1ColorShade: string;
    F1PO: string;
    F1Project: string;
    F1POLine: integer;

    //APPI2U (Final ID label): Retrieve data from ERP
    F2CompanyCode: string[2];
    F2HDONumber: string[8];
    F2StockroomCode: string[2];
    F2ItemCode: string[15];
    F2LotNumber: string[15];
    F2OriginalReceiptQty: string[11];
    F2CurrentBalance: string[11];
    F2UoM: string[2];
    F2NumberOfCopies: string[2];
    F2NumberOfRolls: string[11];
    F2MarkerWidth: string[11];
    F2SubpackUoM: string[2];

    //APPI3U (Material Issued: IDO): Update ERP
    F3CompanyCode: string[2];
    F3WorkOrderNumber: string[7];
    F3IssueDate: string[7];
    F3StockroomCode: string[2];
    F3ItemCode: string[15];
    F3LotNumber: string[15];
    F3IssueQty: string[11];
    F3UoM: string[2];
    F3IssueType: string[1];
    F3MovementReason: string[2];

    //APPI4U (Material Returned): Update ERP
    F4CompanyCode: string[2];
    F4WorkOrderNumber: string[7];
    F4ReturnDate: string[7];
    F4StockroomCode: string[2];
    F4ItemCode: string[15];
    F4LotNumber: string[15];
    F4ReturnQty: string[11];
    F4UoM: string[2];
    FromLocation: string[15];
    ToLocation: string[15];

    //APPI5U (Count sheet): Retrieve data from ERP
    F5CompanyCode: string[2];
    F5Count: string[7];
    F5StockroomCode: string[2];
    F5ItemCode: string[15];
    F5LotNumber: string[15];
    F5ComputerQty: string[11];
    F5UoM: string[2];
    F5Location: string[15];

    //APPI6U (Count Detail): Update ERP
    F6CompanyCode: string[2];
    F6StockroomCode: string[2];
    F6ItemCode: string[15];
    F6LotNumber: string[15];
    F6CountedQty: string[11];
    F6UoM: string[2];

    procedure ReadlnOfFileType(FileType: Integer; var F: TextFile);
    procedure Readln_APPI1U(var F: TextFile);
    procedure Readln_APPI2U(var F: TextFile);
    procedure Writeln_APPI3U(var F: TextFile; isIDO: boolean);
    procedure Writeln_APPI4U(var F: TextFile);
    procedure Readln_APPI5U(var F: TextFile);
    procedure Writeln_APPI6U(var F: TextFile);
    procedure WritelnOfFileType(FileType: Integer; var F: TextFile);

    procedure OpenDataSet(FileType: Integer);
    function GetPB_COUNTDetailWhereSQL: string;
    function GetCOUNTSheetWhereSQL: string;
    function GetPrintLabelWhereSQL: string;
    function GetRETURNWhereSQL: string;
    function GetIDOWhereSQL: string;
    procedure UpdateAPPI1U;

    procedure SetPHGDB_ADOCN(Value: TADOConnection);
    procedure SetZPHLIB_ADOCN(Value: TADOConnection);

    function ADO_UpdateBatch: boolean;
    procedure ADO_BeforePost(DataSet: TDataSet);
    procedure ADO_AfterPost(DataSet: TDataSet);
    procedure ADO_PostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
  public
    property DataSetRecord: OleVariant read FDataSetRecord write FDataSetRecord;
    constructor Create(APHGDB_ADOCN, AZPHLIB_ADOCN: TADOConnection);
    destructor Destroy; override;

    //    property PHGDB_ADOCN: TADOConnection read FPHGDB_ADOCN write SetPHGDB_ADOCN;
    //    property ZPHLIB_ADOCN: TADOConnection read FZPHLIB_ADOCN write SetZPHLIB_ADOCN;

    property ParamsList: TStringList read FParamsList write FParamsList;
    property UpdateCount: Integer read FUpdateCount;
    property InsertCount: Integer read FInsertCount;
    //property ClientDataSet: TClientDataSet read FClientDataSet write FClientDataSet;
    // APPI1U (HDO records);  APPI2U (Final ID label); APPI5U (Count sheet)
    function RetrieveDataFromERP(FileType: Integer): boolean;
    //APPI3U (Material Issued: IDO);  APPI4U (Material Returned); APPI6U (Count Detail)
    function UpdateERP(FileType: Integer): boolean;

    procedure ParseDataFile(FileType: Integer); //parse table field to data
    function GetERPDataFileName(FileType: Integer): string;
    function GetLocalDataFileName(FileType: Integer): string;
    function GetBakFileName(FileType: Integer): string;

    function Validate(const aUserCode, aPassword: string; var ASite: string): boolean;
    function ChangeUserPassword(aUserCode, NewPsw: string): boolean;
    procedure UploadIDOData(ido: string);
    function GetEncryptPassWord(const UnEncryptKey: string): string;
    function GetUnEncryptPassWord(const EncryptKey: string): string;
    procedure GetNewCurrQtyOfPrintLabel(var vParams: OleVariant);
  end;

implementation

{ TPHDataFile }

constructor TPHDataFile.Create(APHGDB_ADOCN, AZPHLIB_ADOCN: TADOConnection);
begin

  FPHGDB_ADOCN := APHGDB_ADOCN;
  FZPHLIB_ADOCN := AZPHLIB_ADOCN;
  FADOQuery_Batch := TADOQuery.Create(nil);
  with FADOQuery_Batch do
  begin
    CacheSize := 1000;
    // BatchUpdate setting=========
    CursorType := ctStatic;
    LockType := ltBatchOptimistic;
    CursorLocation := clUseClient;
    //==========
    Connection := FPHGDB_ADOCN;
    BeforePost := ADO_BeforePost;
    AfterPost := ADO_AfterPost;
    OnPostError := ADO_PostError;
  end; // with
  FADOQuery_Temp := TADOQuery.Create(nil);
  with FADOQuery_Temp do
  begin
    CacheSize := 1000;
    Connection := FPHGDB_ADOCN;
    BeforePost := ADO_BeforePost;
    AfterPost := ADO_AfterPost;
    OnPostError := ADO_PostError;
  end; // with
  FADOQuery_AX := TADOQuery.Create(nil);
  with FADOQuery_AX do
  begin
    CacheSize := 1000;
    Connection := FPHGDB_ADOCN;
    BeforePost := ADO_BeforePost;
    AfterPost := ADO_AfterPost;
    OnPostError := ADO_PostError;
  end; // with
  FADOQuery_as400 := TADOQuery.Create(nil);
  with FADOQuery_as400 do
  begin
    CacheSize := 1000;
    Connection := FZPHLIB_ADOCN;
    CommandTimeout := 0;
  end; // with

  //FClientDataSet:=TClientDataSet.Create(nil);

  FParamsList := TStringList.Create;
end;

destructor TPHDataFile.Destroy;
begin
  FreeAndNil(FADOQuery_Batch);
  FreeAndNil(FADOQuery_Temp);
  FreeAndNil(FADOQuery_AX);
  FreeAndNil(FADOQuery_as400);
  //FreeAndNil(FClientDataSet);
  FreeAndNil(FParamsList);
  inherited;
end;

procedure TPHDataFile.ReadlnOfFileType(FileType: Integer; var F: TextFile);
begin
  case FileType of //
    Ord(ftPB_HDO): Readln_APPI1U(F);
    Ord(ftPB_FINALID): Readln_APPI2U(F);
    //    3: Readln_APPI3U(F);
    //    4: Readln_APPI4U(F);
    Ord(ftPB_COUNTSheet): Readln_APPI5U(F);
    //    6: Readln_APPI6U(F);
    //  else
    //    Readln(F);
          //Seek(F, FileSize(F));
  end; // case
end;

procedure TPHDataFile.WritelnOfFileType(FileType: Integer; var F: TextFile);
begin
  case FileType of //
    //    1: Readln_APPI1U(F);
    //    2: Readln_APPI2U(F);
    Ord(ftIDO): Writeln_APPI3U(F, true);
    Ord(ftUnplanned): Writeln_APPI3U(F, false);
    Ord(ftPB_RETURN): Writeln_APPI4U(F);
    //    5: Readln_APPI5U(F);
    Ord(ftPB_COUNTDetail): Writeln_APPI6U(F);
  else
    Readln;
    //Seek(F, FileSize(F));
  end; // case
end;

function TPHDataFile.GetPB_COUNTDetailWhereSQL: string;
var
  I: Integer;
begin
  result := '';
  for I := 0 to ParamsList.Count - 1 do // Iterate
  begin
    result := result + 'OR COUNT_NO=' + QuotedStr(ParamsList.Strings[I]) + ' ';
  end; // for
  if ParamsList.Count > 0 then
  begin
    result := ' Where (' + Copy(result, 3, MaxInt) + ') and  Status=' + IntToStr(Ord(bcsFromHandHeld));
  end
  else
    result := ' Where   Status=' + IntToStr(Ord(bcsFromHandHeld));
  result := result + ' and COUNTED_QTY>0';
end;

function TPHDataFile.GetPrintLabelWhereSQL: string;
//var
//  HDO, CONO: string;
begin
  FHDO := ParamsList.Strings[0];
  FCONO := ParamsList.Strings[1];
  result := ' where HDO_NO=' + QuotedStr(FHDO) + '  and  Upper(COMPANY)=' + QuotedStr(FCONO);
end;

function TPHDataFile.GetCOUNTSheetWhereSQL: string;
begin
  FCountNO := ParamsList.Strings[0];
  FCONO := ParamsList.Strings[1];
  result := ' where COUNT_NO=' + QuotedStr(FCountNO) + '  and  Upper(COMPANY)=' + QuotedStr(FCONO);
  //    + ' and  Status=' + IntToStr(Ord(bcsFromHandHeld)) + ' and COUNTED_QTY>0  ';
end;

function TPHDataFile.GetRETURNWhereSQL: string;
var
  ABatchNo: string;
begin
  ABatchNo := ParamsList.Strings[0];
  if ABatchNo = '' then
    result := ''
  else
    result := '  and RETURN_NO=' + QuotedStr(ABatchNo);
  result := ' where STATUS=' + IntToStr(Ord(bcsNew)) + result;
end;

function TPHDataFile.GetIDOWhereSQL: string;
var
  AIDO: string;
begin
  AIDO := ParamsList.Strings[0];
  result := ' where IDO=' + QuotedStr(AIDO)
    + ' and  (Status=' + IntToStr(Ord(bcsFromHandHeld))
    + ' or (status=' + IntToStr(Ord(bcsToSystem21)) + ' and ERPSuccess=0))';
end;

procedure TPHDataFile.OpenDataSet(FileType: Integer);
  function GetTableNameSQL(FileType: Integer): string;
  begin
    result := '';
    case FileType of //
      Ord(ftPB_HDO): result := 'select * from PB_HDO ' + GetPrintLabelWhereSQL;
      Ord(ftPB_FINALID): result := 'select * from PB_FINALID ' + GetPrintLabelWhereSQL;
      Ord(ftIDO): result := 'select * from PB_GATEPASS ' + GetIDOWhereSQL;
      Ord(ftUnplanned): result := 'select * from PB_GATEPASS_Unplanned ' + GetIDOWhereSQL;
      Ord(ftPB_RETURN): result := 'select * from PB_RETURN ' + GetRETURNWhereSQL;
      Ord(ftPB_COUNTSheet): result := 'select * from PB_COUNT ' + GetCOUNTSheetWhereSQL;
      Ord(ftPB_COUNTDetail): result := 'select * from PB_COUNT ' + GetPB_COUNTDetailWhereSQL;
    end; // case
  end;
begin
  //1:PB_HDO -R
  //2:PB_FINALID -R
  //3:IDO1/IDO2 -U
  //4:PB_RETURN -U
  //5:PB_COUNT Sheet -R
  //6:PB_COUNT Detail -U
  try
    with FADOQuery_Batch do
    begin
      Close;
      SQL.Clear;
      SQL.Add(GetTableNameSQL(FileType));
      Open;
    end; // with
  except
    Abort;
  end; // try/except
end;

function TPHDataFile.RetrieveDataFromERP(FileType: Integer): boolean;
var
  F: TextFile;
  //  AFileName: string;
begin
  ////  result := False;
  //  AFileName := GetLocalDataFileName(FileType);
  ////  if FileExists(AFileName) then
  ////  begin
  //  AssignFile(F, AFileName);
  //  ReSet(F);
  FUpdateCount := 0;
  FInsertCount := 0;
  try
    OpenDataSet(FileType);
    //    while not EOF(F) do
    //    begin
    ReadlnOfFileType(FileType, F);
    //    end; // while
    result := True;
  finally // wrap up
    //    CloseFile(F);
  end; // try/finally
  //  end;
end;

procedure TPHDataFile.ParseDataFile(FileType: Integer);
begin

end;

function TPHDataFile.GetBakFileName(FileType: Integer): string;
var
  aFiletype: Integer;
begin
  if (FileType = 7) then aFiletype := 3; //ftUnplanned
  result := cFtpServerBakDir + '/' + FormatDateTime('yyyymmddhhnnsszzz', Now) + '.' + IntToStr(FileType) + 'U';

  {$IFDEF TSTUnplanned}
  if (FileType = 7) then
    result := result + 'TST';
  {$ENDIF}
end;

function TPHDataFile.UpdateERP(FileType: Integer): boolean;
var
  F: TextFile;
  AFileName: string;
begin
  result := False;
  AFileName := GetLocalDataFileName(FileType);

  OpenDataSet(FileType);
  if FADOQuery_Batch.RecordCount = 0 then exit;

  AssignFile(F, AFileName);
  ReWrite(F);
  try
    //      while not EOF(F) do
    //      begin
    WritelnOfFileType(FileType, F);
    //      end; // while
    result := True;
  finally // wrap up
    CloseFile(F);
  end; // try/finally
end;

function TPHDataFile.GetERPDataFileName(FileType: Integer): string;
var
  aFiletype: Integer;
begin
  aFiletype := FileType;
  if (FileType = 7) then aFiletype := 3; //ftUnplanned
  result := 'APPI' + IntToStr(aFiletype) + 'U';

  {$IFDEF TSTUnplanned}
  if (FileType = 7) then
    result := result + 'TST';
  {$ENDIF}
end;

function TPHDataFile.GetLocalDataFileName(FileType: Integer): string;
var
  APath: string;
  aFiletype: Integer;
begin
  aFiletype := FileType;
  if (FileType = 7) then aFiletype := 3; //ftUnplanned
  APath := ExtractFilePath(Application.ExeName) + cFtpLocalDir;
  if not DirectoryExists(APath) then ForceDirectories(APath);
  result := APath + 'APPI' + IntToStr(aFiletype) + 'U';

  {$IFDEF TSTUnplanned}
  if (FileType = 7) then
    result := result + 'TST';
  {$ENDIF}
end;

procedure TPHDataFile.UpdateAPPI1U;
begin
  //PB_HDO /PB_FINALID
  with FADOQuery_Batch do
  begin
    if not Locate('HDO_NO;ITEM_CODE;LOT_ID;STOCKROOM;COMPANY',
      VarArrayOf([F1HDONumber, F1ItemCode, F1LotNumber, F1StockroomCode, F1CompanyCode]), []) then
    begin
      //      Edit;
      //      Inc(FUpdateCount);
      Inc(FInsertCount);
      Append;
      FieldByName('HDO_NO').AsString := F1HDONumber;
      FieldByName('ITEM_CODE').AsString := F1ItemCode;
      FieldByName('LOT_ID').AsString := F1LotNumber;
      FieldByName('STOCKROOM').AsString := F1StockroomCode;
      FieldByName('COMPANY').AsString := F1CompanyCode;
      FieldByName('RECORD_CREATED_DATE').AsDateTime := Now;
      FieldByName('STATUS').AsInteger := Ord(bcsNew);
      FieldByName('ORG_QTY').AsFloat := StrToFloatDef(F1OriginalReceiptQty, 0);
      FieldByName('CUR_BAL').AsFloat := StrToFloatDef(F1OriginalReceiptQty, 0);
      FieldByName('UOM').AsString := F1UoM;
      FieldByName('NO_OF_ROLLS').AsFloat := StrToFloatDef(F1NumberOfRolls, 0);
      FieldByName('MARKER_WIDTH').AsFloat := StrToFloatDef(F1MarkerWidth, 0);
      FieldByName('Location').AsString := F1Location;
      FieldByName('pgmn').AsString := F1pgmn;
      FieldByName('PHISM').AsString := F1PHISM;
      FieldByName('ColorShade').AsString := F1ColorShade;
      if (FindField('PO') <> nil) then FieldByName('PO').AsString := F1PO;
      if (FindField('Project') <> nil) then FieldByName('Project').AsString := F1Project;
      if (FindField('POLine') <> nil) then FieldByName('POLine').AsInteger := F1POLine;
      Post;
    end
    else
    begin
      Inc(FUpdateCount);
      Edit;
      FieldByName('PHISM').AsString := F1PHISM;
      FieldByName('ColorShade').AsString := F1ColorShade;
      FieldByName('CUR_BAL').AsFloat := StrToFloatDef(F1OriginalReceiptQty, 0);
      FieldByName('MARKER_WIDTH').AsFloat := StrToFloatDef(F1MarkerWidth, 0);
      if (FindField('PO') <> nil) then FieldByName('PO').AsString := F1PO;
      if (FindField('Project') <> nil) then FieldByName('Project').AsString := F1Project;
      if (FindField('POLine') <> nil) then FieldByName('POLine').AsInteger := F1POLine;
      Post;
    end;
  end; // with
end;

function TPHDataFile.ADO_UpdateBatch: boolean;
begin
  try
    FADOQuery_Batch.UpdateBatch;
    result := True;
  except
    on e: EDatabaseError do
    begin
      FADOQuery_Batch.CancelBatch;
      result := False;
    end;
  end; // try/except
end;

procedure TPHDataFile.Readln_APPI1U(var F: TextFile);
var
  I: Integer;
begin
  if (VarIsArray(FDataSetRecord)) then
  begin
    for I := VarArrayLowBound(FDataSetRecord, 1) to VarArrayHighBound(FDataSetRecord, 1) do
    begin
      F1CompanyCode := (FCONO);
      F1HDONumber := (FHDO);
      F1StockroomCode := FDataSetRecord[I][0]; // (FieldByName('whse65').AsString);
      F1ItemCode := FDataSetRecord[I][1]; // (FieldByName('item65').AsString);
      F1LotNumber := FDataSetRecord[I][2]; // (FieldByName('duml65').AsString);
      F1OriginalReceiptQty := FDataSetRecord[I][3]; // (FieldByName('oqty65').AsString);
      F1CurrentBalance := F1OriginalReceiptQty;
      F1UoM := FDataSetRecord[I][4]; // (FieldByName('ruom65').AsString);
      //      F1NumberOfCopies := FieldByName('').AsString;
      F1NumberOfRolls := FDataSetRecord[I][5]; //(FieldByName('roll65').AsString);
      F1MarkerWidth := FDataSetRecord[I][6]; // (FieldByName('spc235').AsString);
      //      F1SubpackUoM := FieldByName('').AsString;
      F1Location := '';
      F1pgmn := Copy(F1ItemCode, 1, 3);
      F1PHISM := FDataSetRecord[I][7];
      F1ColorShade := ''; // FDataSetRecord[I][8];

      UpdateAPPI1U;
    end; //for
  end;
  ADO_UpdateBatch;
end;

procedure TPHDataFile.Readln_APPI2U(var F: TextFile);
var
  I: Integer;
begin
  if (VarIsArray(FDataSetRecord)) then
  begin
    for I := VarArrayLowBound(FDataSetRecord, 1) to VarArrayHighBound(FDataSetRecord, 1) do
    begin
      F1CompanyCode := (FCONO);
      F1HDONumber := (FHDO);
      F1StockroomCode := FDataSetRecord[I][0]; // (FieldByName('whse65').AsString);
      F1ItemCode := FDataSetRecord[I][1]; // (FieldByName('item65').AsString);
      F1LotNumber := FDataSetRecord[I][2]; // (FieldByName('duml65').AsString);
      F1OriginalReceiptQty := FDataSetRecord[I][3]; // (FieldByName('oqty65').AsString);
      F1CurrentBalance := F1OriginalReceiptQty;
      F1UoM := FDataSetRecord[I][4]; // (FieldByName('ruom65').AsString);
      //      F1NumberOfCopies := FieldByName('').AsString;
      F1NumberOfRolls := FDataSetRecord[I][5]; //(FieldByName('roll65').AsString);
      F1MarkerWidth := FDataSetRecord[I][6]; // (FieldByName('spc235').AsString);
      //      F1SubpackUoM := FieldByName('').AsString;
      F1Location := FDataSetRecord[I][7];
      F1pgmn := FDataSetRecord[I][8];
      F1PHISM := FDataSetRecord[I][9];
      F1ColorShade := FDataSetRecord[I][10];
      F1PO := FDataSetRecord[I][11];
      F1Project := FDataSetRecord[I][12];
      F1POLine := StrToIntDef(FDataSetRecord[I][13], 0);

      UpdateAPPI1U;
    end; //for
  end;
  ADO_UpdateBatch;
end;
//procedure TPHDataFile.Readln_APPI2U(var F: TextFile);
//begin
//  with FADOQuery_as400 do
//  begin
////2:
//    Close;
//    SQL.Clear;
//    SQL.Add('select strc80 as whse65,pnum80 as item65,locn80 as duml65,sphy80 as oqty65,sunt35 as ruom65,1 as roll65,spc235');
//    SQL.Add('from ault4f1.app84,ault2f1.inp80,ault2f1.inp35');
//    sql.add('where cono84=cono80 and lotn84=locn80 and cono84=cono35 and pnum84=pnum35 and pnum84=pnum80 ');
//    SQL.Add('and Upper(cono80)=' + QuotedStr(FCONO) + ' and ch1t84=' + QuotedStr(FHDO));
//    Open;
//    First;
//    while not eof do
//    begin
//      F1CompanyCode := (FCONO);
//      F1HDONumber := (FHDO);
//      F1StockroomCode := (FieldByName('whse65').AsString);
//      F1ItemCode := (FieldByName('item65').AsString);
//      F1LotNumber := (FieldByName('duml65').AsString);
//      F1OriginalReceiptQty := (FieldByName('oqty65').AsString);
//      F1CurrentBalance := F1OriginalReceiptQty;
//      F1UoM := (FieldByName('ruom65').AsString);
////      F1NumberOfCopies := FieldByName('').AsString;
//      F1NumberOfRolls := (FieldByName('roll65').AsString);
//      F1MarkerWidth := (FieldByName('spc235').AsString);
////      F1SubpackUoM := FieldByName('').AsString;
//
//      UpdateAPPI1U;
//      Next;
//    end; // while
//  end; // with
//  ADO_UpdateBatch;
//end;

procedure TPHDataFile.Writeln_APPI3U(var F: TextFile; isIDO: boolean);
var
  bToErpFail: boolean;
  AIDO: string;
begin
  AIDO := ParamsList.Strings[0];

  with FADOQuery_Batch do
  begin
    First;
    while not Eof do
    begin
      
      bToErpFail := (FieldByName('STATUS').AsInteger = Ord(bcsToSystem21))
        and (not FieldByName('ErpSuccess').AsBoolean) and (not FieldByName('ErpSuccess').IsNull);

      {
      F3CompanyCode := bcGetStringstr(FieldByName('COMPANY').AsString, 2);
      F3WorkOrderNumber := bcGetStringstr(FieldByName('WORK_ORDER').AsString, 7);
      if bToErpFail then F3IssueDate := bcGetDateStr(Date)
      else F3IssueDate := bcGetDateStr(FieldByName('ISSUED_DATE').AsDateTime);
      F3StockroomCode := bcGetStringstr(FieldByName('Stockroom').AsString, 2);
      F3ItemCode := bcGetStringstr(FieldByName('ITEM_CODE').AsString, 15);
      F3LotNumber := bcGetStringstr(FieldByName('LOT_ID').AsString, 15);
      F3IssueQty := bcGetFloatStr(FieldByName('ISSUE_QTY').AsFloat, 8, 3);
      F3UoM := bcGetStringstr(FieldByName('UOM').AsString, 2);
      if (isIDO) then F3IssueType := bcGetStringstr('0', 1)
      else F3IssueType := bcGetStringstr('1', 1);
      F3MovementReason := bcGetStringstr(FieldByName('MOVR').AsString, 2); //if isIDO =''

      Writeln(F, F3CompanyCode, F3WorkOrderNumber, F3IssueDate, F3StockroomCode, F3ItemCode,
        F3LotNumber, F3IssueQty, F3UoM, F3IssueType, F3MovementReason);
        }

      //Update Status=1
      Edit;
      FieldByName('STATUS').AsInteger := Ord(bcsToSystem21);
      FieldByName('ErpSuccess').Clear;
      if bToErpFail then FieldByName('ISSUED_DATE').AsDateTime := Date;
      Post;
      Next;
    end; // while
  end; // with
  UploadIDOData(AIDO);
  ADO_UpdateBatch;
end;

procedure TPHDataFile.Writeln_APPI4U(var F: TextFile);
begin
  with FADOQuery_Batch do
  begin
    First;
    while not Eof do
    begin
      F4CompanyCode := bcGetStringstr(FieldByName('COMPANY').AsString, 2);
      F4WorkOrderNumber := bcGetStringstr(FieldByName('WORK_ORDER').AsString, 7);
      F4ReturnDate := bcGetDateStr(FieldByName('RETURN_DATE').AsDateTime);
      F4StockroomCode := bcGetStringstr(FieldByName('STOCKROOM').AsString, 2);
      F4ItemCode := bcGetStringstr(FieldByName('ITEM_CODE').AsString, 15);
      F4LotNumber := bcGetStringstr(FieldByName('LOT_ID').AsString, 15);
      F4ReturnQty := bcGetFloatStr(FieldByName('RETURN_QTY').AsFloat, 8, 3);
      F4UoM := bcGetStringstr(FieldByName('UOM').AsString, 2);
      FromLocation := bcGetStringstr(FieldByName('Location').AsString, 15);
      ToLocation := bcGetStringstr(FieldByName('ToLocation').AsString, 15);

      Writeln(F, F4CompanyCode, F4WorkOrderNumber, F4ReturnDate, F4StockroomCode,
        F4ItemCode, F4LotNumber, F4ReturnQty, F4UoM, FromLocation, ToLocation);
      //Update Status=1
      Edit;
      FieldByName('STATUS').AsInteger := Ord(bcsToSystem21);
      Post;
      Next;
    end; // while
  end; // with
  ADO_UpdateBatch;
end;

procedure TPHDataFile.Readln_APPI5U(var F: TextFile);
  procedure UpdateAPPI5U;
  begin
    with FADOQuery_Batch do
    begin
      if Locate('COUNT_NO;ITEM_CODE;LOT_ID;STOCKROOM;COMPANY',
        VarArrayOf([F5Count, F5ItemCode, F5LotNumber, F5StockroomCode, F5CompanyCode]), []) then
      begin
        if (FieldByName('STATUS').AsInteger = Ord(bcsNew)) or (FieldByName('STATUS').AsInteger = Ord(bcsToHandHeld)) then
        begin
          Edit;
          Inc(FUpdateCount);
        end
        else
          exit;
      end
      else
      begin
        Inc(FInsertCount);
        Append;
        FieldByName('COUNT_NO').AsString := F5Count;
        FieldByName('ITEM_CODE').AsString := F5ItemCode;
        FieldByName('LOT_ID').AsString := F5LotNumber;
        FieldByName('STOCKROOM').AsString := F5StockroomCode;
        FieldByName('COMPANY').AsString := F5CompanyCode;
        FieldByName('STATUS').AsInteger := Ord(bcsNew);
        FieldByName('RECORD_CREATED_DATE').AsDateTime := Now;
        FieldByName('RANDOM_TAKE').AsBoolean := False;
        FieldByName('COUNTED_QTY').AsFloat := StrToFloatDef(F5ComputerQty, 0);
      end;
      FieldByName('COMPUTER_QTY').AsFloat := StrToFloatDef(F5ComputerQty, 0);
      FieldByName('UOM').AsString := F5UoM;
      FieldByName('Location').AsString := F5Location;
      //    FieldByName('COUNT_DATE').AsDateTime:= Now;
      Post;
    end;
  end;
var
  I: Integer;
begin
  if (VarIsArray(FDataSetRecord)) then
  begin
    for I := VarArrayLowBound(FDataSetRecord, 1) to VarArrayHighBound(FDataSetRecord, 1) do
    begin
      F5CompanyCode := (FCONO);
      F5Count := (FCountNO);
      F5StockroomCode := FDataSetRecord[I][0]; // (FieldByName('strc58').AsString);
      F5ItemCode := FDataSetRecord[I][1]; // (FieldByName('pnum77').AsString);
      F5LotNumber := FDataSetRecord[I][2]; // (FieldByName('ltno77').AsString);
      F5ComputerQty := FDataSetRecord[I][3]; // (FieldByName('sphy80').AsString);
      F1UoM := FDataSetRecord[I][4]; // (FieldByName('sunt35').AsString);
      F5Location := FDataSetRecord[I][5];

      UpdateAPPI5U;
    end; // for
  end;
  ADO_UpdateBatch;

  //  with FADOQuery_as400 do
  //  begin
  //    Close;
  //    SQL.Clear;
  //    SQL.Add('select distinct cono58,ctno58,strc58,pnum77,ltno77,sphy80,sunt35');
  //    SQL.Add('from ault2f1.inp58,ault2f1.inp77,ault2f1.inp80,ault2f1.inp35');
  //    SQL.Add('where cono58=cono77 and ctno58=ctno77 and strc58=strc77 and cono58=cono80 and strc58=strc80');
  //    SQL.Add('and pnum77=pnum80 and ltno77=locn80 and cono58=cono35 and pnum77=pnum35 '); //and strc77=strc35
  //    SQL.Add('and Upper(cono58)=' + QuotedStr(FCONO) + ' and ctno58=' + FCountNO);
  //    Open;
  //    First;
  //    while not eof do
  //    begin
  //      F5CompanyCode := (FCONO);
  //      F5Count := (FCountNO);
  //      F5StockroomCode := (FieldByName('strc58').AsString);
  //      F5ItemCode := (FieldByName('pnum77').AsString);
  //      F5LotNumber := (FieldByName('ltno77').AsString);
  //      F5ComputerQty := (FieldByName('sphy80').AsString);
  //      F1UoM := (FieldByName('sunt35').AsString);
  //
  //      UpdateAPPI5U;
  //      Next;
  //    end; // while
  //  end; // with
  //  ADO_UpdateBatch;
  //  Readln(F, F5CompanyCode, F5Count, F5StockroomCode, F5ItemCode, F5LotNumber, F5ComputerQty, F5UoM);
end;

procedure TPHDataFile.Writeln_APPI6U(var F: TextFile);
begin
  with FADOQuery_Batch do
  begin
    First;
    while not Eof do
    begin
      F6CompanyCode := bcGetStringstr(FieldByName('COMPANY').AsString, 2);
      F6StockroomCode := bcGetStringstr(FieldByName('STOCKROOM').AsString, 2);
      F6ItemCode := bcGetStringstr(FieldByName('ITEM_CODE').AsString, 15);
      F6LotNumber := bcGetStringstr(FieldByName('LOT_ID').AsString, 15);
      F6CountedQty := bcGetFloatStr(FieldByName('COUNTED_QTY').AsFloat, 8, 3);
      F6UoM := bcGetStringstr(FieldByName('UOM').AsString, 2);

      Writeln(F, F6CompanyCode, F6StockroomCode, F6ItemCode, F6LotNumber, F6CountedQty, F6UoM);
      //Update Status=1
      Edit;
      FieldByName('STATUS').AsInteger := Ord(bcsToSystem21);
      Post;
      Next;
    end; // while
  end; // with
  ADO_UpdateBatch;
end;

function TPHDataFile.GetEncryptPassWord(const UnEncryptKey: string): string;
begin
  Result := '';
  with FADOQuery_Temp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('EXECUTE EnTryStr :StrPassword');
    Prepared;
    Parameters.ParamByName('StrPassword').Value := UnEncryptKey;
    Open;
    Result := Fields[0].Value;
  end; // with
end;

function TPHDataFile.GetUnEncryptPassWord(const EncryptKey: string): string;
begin
  Result := '';
  with FADOQuery_Temp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('EXECUTE UnEnTryStr :StrPassword');
    Prepared;
    Parameters.ParamByName('StrPassword').Value := EncryptKey;
    Open;
    Result := Fields[0].Value;
  end; // with
end;
//验证用户和密码

function TPHDataFile.Validate(const aUserCode, aPassword: string; var ASite: string): boolean;
var
  Str: string;
  aSQL: string;
  aADOQuery_Temp: TADOQuery;
begin
  result := False;
  Str := '';
  ASite := '';
  if Trim(aPassword) <> '' then
    Str := GetEncryptPassWord(Trim(aPassword));

  aADOQuery_Temp := TADOQuery.Create(nil);
  try
    with aADOQuery_Temp do
    begin
      CacheSize := 1000;
      Connection := FPHGDB_ADOCN;

      aSQL :=
        'select a.UID,a.UPWD,a.Site from SideProgram_USER a,SideProgram_USERModule b,SideProgram_Module c '
        + ' where a.UID=b.UID and b.ModuleID=c.ModuleID'
        + ' and a.UID=' + QuotedStr(aUserCode) + ' and c.ModuleName=' + QuotedStr(cSideProgram);

      Close;
      SQL.Clear;
      SQL.Add(aSQL);
      //SQL.Add('select a.UID,a.UPWD,a.Site from SideProgram_USER a,SideProgram_USERModule b,SideProgram_Module c ');
      //SQL.Add('where a.UID=b.UID and b.ModuleID=c.ModuleID');
      //SQL.Add('and a.UID=' + QuotedStr(aUserCode) + ' and c.ModuleName=' + QuotedStr(cSideProgram));
      Open;
      if RecordCount = 1 then
      begin
        Result := CompareStr(Str, FieldByName('UPWD').AsString) = 0;
        ASite := FieldByName('Site').AsString;
      end;
    end;
  finally
    FreeAndNil(aADOQuery_Temp);
  end;
end;

//修改用户口令

function TPHDataFile.ChangeUserPassword(aUserCode, NewPsw: string): boolean;
var
  APSW: string;
begin
  result := False;
  APSW := GetEncryptPassWord(NewPsw);
  with FADOQuery_Temp do
  begin
    Close;
    SQL.Clear;
    //    SQL.Add('select * from SideProgram_USER where UID=' + QuotedStr(aUserCode)+' and UPPER(SideProgram)='+QuotedStr(UpperCase(cSideProgram)));
    SQL.Add('select * from SideProgram_USER where UID=' + QuotedStr(aUserCode));
    Open;
    if RecordCount = 1 then
    begin
      if CompareStr(NewPsw, FieldByName('UPWD').AsString) = 0 then exit;
      Edit;
      if Trim(NewPsw) = '' then
        FieldByName('UPWD').Clear
      else
        FieldByName('UPWD').AsString := APSW;
      Post;
      result := True;
    end;
  end;
end;

procedure TPHDataFile.UploadIDOData(ido: string);
begin
  with FADOQuery_Temp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('exec [phgdb2].dbo.sp_pb_UploadIDO2AX :IDO');
    Prepared;
    Parameters.ParamByName('IDO').Value := ido;
    ExecSQL;
  end; // with
end;

procedure TPHDataFile.SetPHGDB_ADOCN(Value: TADOConnection);
begin
  //  FPHGDB_ADOCN := Value;
  //
  //  FADOQuery_Batch.Connection := FPHGDB_ADOCN;
  //  FADOQuery_Temp.Connection := FPHGDB_ADOCN;
end;

procedure TPHDataFile.SetZPHLIB_ADOCN(Value: TADOConnection);
begin
  //  FZPHLIB_ADOCN := Value;

  //   FADOQuery_as400.Connection := FZPHLIB_ADOCN;
end;

procedure TPHDataFile.GetNewCurrQtyOfPrintLabel(var vParams: OleVariant);
var
  ASQL, ACONO, ALotNo: string;
  CurQty: Double;
  I: Integer;
  vValues: Variant;
begin
  if (VarIsArray(vParams)) then
  begin
    //get SQL where
    ASQL := '';
    for I := VarArrayLowBound(vParams, 1) to VarArrayHighBound(vParams, 1) do
    begin
      ACONO := vParams[I][0];
      ALotNo := vParams[I][1];
      ASQL := ASQL + 'OR (Upper(cono80)=' + QuotedStr(ACONO) + ' and locn80=' + QuotedStr(ALotNo) + ') ';
    end; //for
    //delete the beginning str'OR'
    ASQL := Copy(ASQL, 3, MaxInt);
    if ASQL = '' then
    begin
      vParams := 0;
      exit;
    end;

    //return the Array of (cono,LotNo,CurQty)
    with FADOQuery_as400 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select cono80 as cono,locn80 as LotNo,sphy80 as CurrQty');
      SQL.Add('from ault2f1.inp80');
      SQL.Add('where ' + ASQL);
      Open;
      if RecordCount = 0 then
      begin
        vParams := 0;
        exit;
      end
      else
        vValues := VarArrayCreate([0, RecordCount - 1], varVariant);
      First;
      I := 0;
      while not Eof do
      begin
        ACONO := FieldByName('cono').AsString;
        ALotNo := FieldByName('LotNo').AsString;
        CurQty := FieldByName('CurrQty').AsFloat;
        vValues[I] := VarArrayOf([ACONO, ALotNo, CurQty]);
        Inc(I);
        Next;
      end; // while
    end; //with
    vParams := vValues;
  end
  else
    vParams := 0;
end;

procedure TPHDataFile.ADO_BeforePost(DataSet: TDataSet);
begin
  if not (FPHGDB_ADOCN.InTransaction) then
    FPHGDB_ADOCN.BeginTrans;
end;

procedure TPHDataFile.ADO_AfterPost(DataSet: TDataSet);
begin
  if (FPHGDB_ADOCN.InTransaction) then
    FPHGDB_ADOCN.CommitTrans;
end;

procedure TPHDataFile.ADO_PostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  if (FPHGDB_ADOCN.InTransaction) then
    FPHGDB_ADOCN.RollbackTrans;
  Action := daAbort;
end;

end.

