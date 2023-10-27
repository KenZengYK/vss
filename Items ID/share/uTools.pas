unit uTools;

interface
uses Windows, Messages, SysUtils, Classes, RM_Common, Forms, Controls, DBClient,
  RM_Class, Registry, Dialogs, cxLookAndFeels, Graphics, ComObj, Variants;

const
  cPHVersion = 1;
  //global
  cHandHeldPath = 'c:\temp\';
  cGlobal = 'GLOBAL';
  cSideProgram = 'PCBarCode';

  //client
  cCreateDLLForm = 'CreateDLLForm'; //the Dll standard export function
  cChangeLanguage = 'ChangeDLLLanguage';
  cChangeLookAndFeel = 'ChangeDLLLookAndFeel';

  cDebugIniFile = 'BCDebug.txt';
  cGroupNodeSQL = ' select a.RID_USE,a.RID,a.GroupID,a.RCaption,a.Description,a.DLLName,'
    + ' a.Dir,a.DLLVersion ,b.GroupName '
    + ' from [PHDB].dbo.ReportNode a Left join [PHDB].dbo.ReportGroup b '
    + ' on (b.GroupID=a.GroupID and b.TypeID=a.TypeID) '
    + ' where a.RID>0  and a.TypeID=2'
    + ' Order by a.GroupID,a.RID ';
  //  cDownLoadDLLSQL = ' select a.RID,a.Dir,a.DLLName,a.DLLFile,a.DLLVersion'
  //    + ' from PB_Node a'
  //    + ' Where a.RID = %s';
   //ini section
  cWinSockSection = 'WinSock';
  cBCserverSection = 'BCserver';
  cPhgconnSection = 'Phgconn';
  cZPHLIBSection = 'ZPHLIB';
  //ini Ident
  cBCserverDefaultServerName = 'BarcodeSvr.PCBarcodeSvr'; //SQL2000(10.2.1.10):dspphg->PHGDB; dspph->PHDB
  cPhgconnDefaultServerName = 'ERP_RPTSERVER.ccn_rptserver'; //SQL2000(10.2.1.10):dspphg->PHGDB; dspph->PHDB  //'IETMUSERVER.ccn_ietmu';
  //ini default value
  cDefaultAddress = '10.2.1.30';
  cDefaultRemoteHost = '10.2.1.30';
  cDefaultPrintHost = '10.2.1.30';
  cDefaultRemotePort = 2351;
  cDefaultPrintPort = 10237;

  cDebugSetion = 'DEBUGINFO';

  carObject = 5;
  carV = 8;
  cClientIniFile = 'Barcode.ini';
  cBarcodePrinter = 'BarcodePrinter';
  cPrinterServer = 'PrinterServer';
  //dll
//  cSTOCKROOM = 'ST';
//  cCOMPANY = 'P1'; //'AA';
  //server
  cFtpLocalDir = 'FtpFile\';
  cFtpServerDir = ''; //'/ERPFTP';
  cFtpServerBakDir = 'BAKUP';
  cServerIniFile = 'BarcodeSvr.ini';

  //user right
  cUrAdmin = 0;
  cUrBrowse = 1;
  cUrFromERP = 2;
  cUrToERP = 3;
  cUrFromHandHeld = 4;
  cUrToHandHeld = 5;
  cUrReport = 6;
  cUrDelete = 7;
  cUrAdd = 8;
  cUrModify = 9;
  cUrPrintLabel = 10;
  cUrSelectMaterial = 11;
  cUrQuery = 12;
  cUrConfirm = 13;
  cUrDeleteIDO = 14;
  cUrDeleteIDODetail = 15;
  cUrUpdateQty = 16;
  cUrRefreshUploadToERP = 17;
  cUrManualFromHandHeld = 18;
  cUrBrowseAllIDO = 19;
  cUrIDOMatching = 20;
  cUrReserveMaterial = 21;
  cUrCancelReserve = 22;
  cUrUpdatePOInfor = 23;
  //color
  clbcNew = clWhite;
  clbcToSystem21_Blank = $00B1C9CB;
  clbcToSystem21_Fail = $00FAB8F7; //$00ACACFF;
  clbcToSystem21_Success = $00FACE87;
  clbcPrintLabel = $00F7EAD9;
  clbcToHandHeld = clAqua; //$009DCCFF;
  clbcFromHandHeld = clYellow; //$008CE6F0;
  clbcIDOAffirm = $00B0FFB0; // $00CBE0A3;
  clbcOther = $00F7EAD9;
  clRecordSelected = $00FF8686;
type
  TarObject = array of TObject;
  TarV = array of Variant;
  TarS = array of string;

  TLoginType = (ltNewLogin, ltChangeLogin, ltChangeLanguage);

  //  TUserRight = (urAdmin, urLabelPrint, urReturnMeterial, urPickingGatePass, urStockTake);
    //              0         1         2         3        4              5               6       7        8
  TUserRight = (urAdmin, urBrowse, urFromERP, urToERP, urFromHandHeld, urToHandHeld, urReport, urDelete, urAdd,
    //   9      10           11                12            13         14          15                16
    urModify, urPrintLabel, urSelectMaterial, urQuery, urConfirm, urDeleteIDO, urDeleteIDODetail, urUpdateQty,
    //      17                18                   19              20
    urRefreshUploadToERP, urManualFromHandHeld, urBrowseAllIDO, urIDOMatching);
  TUserRights = set of TUserRight;

  TarUserRights = array of TUserRights;

  TERPFileType = (ftPB_None, ftPB_HDO, ftPB_FINALID, ftIDO, ftPB_RETURN, ftPB_COUNTSheet, ftPB_COUNTDetail, ftUnplanned);

  //             0          1               2              3             4                5            6
  TbcStatus = (bcsNew, bcsToSystem21, bcsPrintLabel, bcsToHandHeld, bcsFromHandHeld, bcsUnknown5, bcsUnknown6,
    //  7        8               9                10           11               12
    bcsWIP, bcsUnknown8, bcsUpdatedStockCount, bcsStockTaking, bcsUnknown11, bcsRandomChecked,
    //  13                 14                    15            16             17
    bcsRandomChecked13, bcsFinishStockTake, bcsUnknown15, bcsIDOCompleted, bcsProgressing,
    //  18               19                       20              21
    bcsProgressed, bcsPartialPickedAndUploaded, bcsNotPicked, bcsIDOAffirm);

  InvokeHandHeldIn = function(strFileName: string; strPort: string): Integer; stdcall;
  InvokeHandHeldOut = function(strFileName: string; strPort: string): Integer; stdcall;
  InvokeDLLForm = function(arObject: TarObject; arV: TarV; AUserRights: TUserRights): TForm; stdcall;
  InvokeChangeDLLLanguage = function(ALanguageID: Integer): boolean; stdcall;
  InvokeChangeDLLLookAndFeel = function(Kind: TcxLookAndFeelKind; NativeStyle: boolean): boolean; stdcall;

  InvokeRegCOM = function(strFileName: string): Integer; stdcall;
  InvokeUnregCOM = function(strFileName: string): Integer; stdcall;

  InvokePrintServer = function(AData: TStream; APrinter: string): Integer; stdcall;

  FromHandHeldDataType = function(AFileName: string): boolean;
  ToHandHeldDataType = function(AFileName: string): Integer;
  //  PHGetLanguagesStr = function(RID: Integer; sDefautl: string; bGlobal: boolean = False): string;

function PHParseRegRootKey(AStr: string): HKEY;
function PHWriteRegister(const sRootKey, Key, Name, Value: string): boolean;
function PHReadRegister(const sRootKey, Key, Name: string): string;
function bcGetFloatStr(Value: real; iInt: Integer; iDecimal: Integer): string;
function bcGetStringStr(Value: string; iCount: Integer): string;
function bcGetDateStr(DT: TDate): string;
function bcGetStrDate(ADT: string): TDateTime;

function bcGetWhereSQL(ACommandText: string;
  AFieldName, AValue: string; bGetDistinct: boolean = False): string;

function bcStrToFloat(Value: string; iInt: Integer; iDecimal: Integer): real;
//HandHeld
function FromHandHeld(AFileName: string; AComPort: string;
  DoFromHandHeldData: FromHandHeldDataType): Integer;
function ToHandHeld(AFileName: string; AComPort: string;
  DoToHandHeldData: ToHandHeldDataType): Integer;

function SetReportCanDesign(AReport: TRMReport): boolean;
function SetFileReadOnly(FileName: string; bReadOnly: boolean = True): boolean;

function RegisterOle(AFile: string): Integer;
function UnregisterOle(AFile: string): Integer;
function CheckIsRegOle(OleName: string): boolean;

procedure BuildPrinterList(var APrinters: TarS);
function GetBarcodePrinters(var APrinters: TarS): boolean;
function GetBarcodePrinterType(APrinter: string): Integer;
function GetBarcodePrintersFromINI(var APrinters: TarS): boolean;
function GetIPByBarcodePrintersFromINI(APrinter: string): string;
function GetRealPrinter(APrinter: string): string;
//==Read Write Stream===
procedure PHWriteStringToStream(aStream: TStream; const s: string);
function PHReadStringFromStream(aStream: TStream): string;
procedure PHWriteBooleanToStream(aStream: TStream; Value: Boolean);
function PHReadBooleanFromStream(aStream: TStream): Boolean;
function PHReadInt32FromStream(aStream: TStream): Integer;
procedure PHWriteInt32ToStream(aStream: TStream; Value: Integer);
function PHReadWordFromStream(aStream: TStream): Word;
procedure PHWriteWordToStream(aStream: TStream; Value: Word);

function WriteToSocketStream(iCopies: Integer; bCollateCopies: boolean; bcPrinter: string;
  ADataSet: TClientDataSet; BarcodePrintProc: InvokePrintServer): Integer;

function GetErrorCause1(APos: integer): string;
function GetErrorCause(APos: integer; languageID : integer): string;
function GetIDOFullString(AIDO: string; TypeStr: string): string; 
implementation
uses
  WinSpool, SyncObjs, Consts, IniFiles;

function PHReadWordFromStream(aStream: TStream): Word;
begin
  aStream.Read(Result, 2);
end;

procedure PHWriteWordToStream(aStream: TStream; Value: Word);
begin
  aStream.Write(Value, 2);
end;

function PHReadInt32FromStream(aStream: TStream): Integer;
begin
  aStream.Read(Result, 4);
end;

procedure PHWriteInt32ToStream(aStream: TStream; Value: Integer);
begin
  aStream.Write(Value, 4);
end;

function PHReadBooleanFromStream(aStream: TStream): Boolean;
begin
  aStream.Read(Result, 1);
end;

procedure PHWriteBooleanToStream(aStream: TStream; Value: Boolean);
begin
  aStream.Write(Value, 1);
end;

function PHReadStringFromStream(aStream: TStream): string;
var
  s: string;
  n: Word;
begin
  aStream.Read(n, 2);
  SetLength(s, n);
  aStream.Read(s[1], n);
  Result := s;
end;

procedure PHWriteStringToStream(aStream: TStream; const s: string);
var
  n: Word;
begin
  n := Length(s);
  aStream.Write(n, 2);
  aStream.Write(s[1], n);
end;

function GetBarcodePrinterType(APrinter: string): Integer;
begin
  APrinter := UpperCase(APrinter);
  if (Pos('ZEBRA', APrinter) > 0) then
    result := 0
  else if (Pos('MONARCH', APrinter) > 0) then
    result := 1
  else
    result := 0;
end;

function GetBarcodePrinters(var APrinters: TarS): boolean;
var
  I, J: Integer;
  Alist: TarS;
begin
  J := 0;
  BuildPrinterList(Alist);
  for I := 0 to High(Alist) do // Iterate
  begin
    if (Pos('ZEBRA', UpperCase(Alist[I])) > 0) or (Pos('MONARCH', UpperCase(Alist[I])) > 0) then
    begin
      Inc(J);
      SetLength(APrinters, J);
      APrinters[J - 1] := Alist[I];
    end;
  end; // for
  result := J > 0;
end;

function GetRealPrinter(APrinter: string): string;
var
  I: Integer;
  Alist: TarS;
begin
  result := '';
  BuildPrinterList(Alist);
  for I := 0 to High(Alist) do // Iterate
  begin
    if (Pos(UpperCase(APrinter), UpperCase(Alist[I])) > 0) then
    begin
      result := Alist[I];
      exit;
    end;
  end; // for
end;

function GetBarcodePrintersFromINI(var APrinters: TarS): boolean;
var
  //  I: Integer;
  I, J: Integer;
  //  Alist: TarS;
  AIniFile: TIniFile;
  PrinterList: TStringList;
begin
  J := 0;
  PrinterList := TStringList.Create;
  AIniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + cClientIniFile);
  try
    AIniFile.ReadSectionValues(cBarcodePrinter, PrinterList);
    for I := 0 to PrinterList.Count - 1 do // Iterate
    begin
      Inc(J);
      SetLength(APrinters, J);
      APrinters[J - 1] := PrinterList.Names[I]; //PrinterList.ValueFromIndex[I];
    end; // for
    result := J > 0;
  finally // wrap up
    FreeAndNil(AIniFile);
    FreeAndNil(PrinterList);
  end; // try/finally
end;

function GetIPByBarcodePrintersFromINI(APrinter: string): string;
var
  AIniFile: TIniFile;
begin
  AIniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + cClientIniFile);
  try
    result := AIniFile.ReadString(cBarcodePrinter, APrinter, '');
  finally // wrap up
    FreeAndNil(AIniFile);
  end; // try/finally
end;

procedure BuildPrinterList(var APrinters: TarS);
  function FetchStr(var Str: PChar): PChar;
  var
    P: PChar;
  begin
    Result := Str;
    if Str = nil then
      Exit;
    P := Str;
    while P^ = ' ' do
      Inc(P);
    Result := P;
    while (P^ <> #0) and (P^ <> ',') do
      Inc(P);
    if P^ = ',' then
    begin
      P^ := #0;
      Inc(P);
    end;
    Str := P;
  end;
var
  LineCur, Port: PChar;
  Buffer, lPrinterInfo: PChar;
  Flags, Count, NumInfo: DWORD;
  I, J: Integer;
  Level: Byte;
  //  tmp: TRMPrinterInfo;
  str: string;
  //  FLock: TCriticalSection;
begin
  // FLock.Acquire;
  try
    // FreePrinterList;
    //APrinters.Clear;
    J := 0;
    if Win32Platform = VER_PLATFORM_WIN32_NT then
    begin
      Flags := PRINTER_ENUM_CONNECTIONS or PRINTER_ENUM_LOCAL;
      Level := 4;
    end
    else
    begin
      Flags := PRINTER_ENUM_LOCAL;
      Level := 5;
    end;
    Count := 0;
    EnumPrinters(Flags, nil, Level, nil, 0, Count, NumInfo);
    if Count > 0 then
    begin
      GetMem(Buffer, Count);
      try
        if not EnumPrinters(Flags, nil, Level, PByte(Buffer), Count, Count, NumInfo) then
          Exit;

        lPrinterInfo := Buffer;
        for I := 0 to NumInfo - 1 do
        begin
          if Level = 4 then
          begin
            with PPrinterInfo4(lPrinterInfo)^ do
            begin
              Inc(J);
              SetLength(APrinters, J);
              //tmp := TRMPrinterInfo.Create(nil, pPrinterName, nil);
              APrinters[J - 1] := pPrinterName;
              Inc(lPrinterInfo, sizeof(TPrinterInfo4));
            end;
          end
          else
          begin
            with PPrinterInfo5(lPrinterInfo)^ do
            begin
              LineCur := pPortName;
              Port := FetchStr(LineCur);
              while Port^ <> #0 do
              begin
                str := Format(SDeviceOnPort, [pPrinterName, Port]);
                //tmp := TRMPrinterInfo.Create(nil, pPrinterName, Port);

                Inc(J);
                SetLength(APrinters, J);
                //tmp := TRMPrinterInfo.Create(nil, pPrinterName, nil);
                APrinters[J - 1] := str;

                //APrinters.Add(str);
                Port := FetchStr(LineCur);
              end;

              Inc(lPrinterInfo, sizeof(TPrinterInfo5));
            end;
          end;
        end;
      finally
        FreeMem(Buffer, Count);
      end;
    end;

  finally
    // FLock.Release;
  end;
end;

function CheckIsRegOle(OleName: string): boolean;
var
  oClass: Variant;
begin
  try
    try
      oClass := CreateOleObject(OleName);
      result := True;
    except
      result := False;
    end; // try/except
  finally // wrap up
    oClass := Unassigned;
  end; // try/finally
end;

function RegisterOle(AFile: string): Integer;
var
  hDll: THandle;
  RegCOM: InvokeRegCOM;
begin
  result := 0;
  // Register ocx file
  hDll := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + 'ext.dll'));
  if hDll = 0 then exit;
  try
    //0:False;1:True;
    @RegCOM := GetProcAddress(hDll, 'RegCOM');
    result := RegCOM(PChar(AFile));
  finally
    FreeLibrary(hDll);
  end;
end;

function UnregisterOle(AFile: string): Integer;
var
  hDll: THandle;
  UnRegCOM: InvokeUnRegCOM;
begin
  result := 0;
  // Unregister ocx file
  hDll := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + 'ext.dll'));
  if hDll = 0 then exit;
  try
    @UnRegCOM := GetProcAddress(hDll, 'UnRegCOM');
    result := UnRegCOM(PChar(AFile));
  finally
    FreeLibrary(hDll);
  end;
end;

// Parse Reg RootKey from a string                            燡

function PHParseRegRootKey(AStr: string): HKEY;
begin
  if (CompareText(AStr, 'HKEY_CLASSES_ROOT') = 0) or (AStr = '0') then
    result := HKEY_CLASSES_ROOT
  else if (CompareText(AStr, 'HKEY_CURRENT_USER') = 0) or (AStr = '1') then
    result := HKEY_CURRENT_USER
  else if (CompareText(AStr, 'HKEY_LOCAL_MACHINE') = 0) or (AStr = '2') then
    result := HKEY_LOCAL_MACHINE
  else if (CompareText(AStr, 'HKEY_USERS') = 0) or (AStr = '3') then
    result := HKEY_USERS
  else if (CompareText(AStr, 'HKEY_CURRENT_CONFIG') = 0) or (AStr = '5') then
    result := HKEY_CURRENT_CONFIG
  else
    result := HKEY_LOCAL_MACHINE;
end;
//write value to Register

function PHWriteRegister(const sRootKey, Key, Name, Value: string): boolean;
var
  Reg: TRegistry;
  ARootKey: HKEY;
begin
  result := False;
  ARootKey := PHParseRegRootKey(sRootKey);
  //  if ARootKey = Null then exit;

  Reg := TRegistry.Create;
  try
    Reg.RootKey := ARootKey;
    if Reg.OpenKey(Key, True) then
    begin
      Reg.WriteString(Name, Value);
      Reg.CloseKey; //must write this
      result := True;
    end;
  finally
    Reg.Free;
  end;
end;
//read value form Register

function PHReadRegister(const sRootKey, Key, Name: string): string;
var
  Reg: TRegistry;
  ARootKey: HKEY;
begin
  result := '';
  ARootKey := PHParseRegRootKey(sRootKey);
  //  if ARootKey = Null then exit;

  Reg := TRegistry.Create;
  try
    Reg.RootKey := ARootKey;
    if Reg.OpenKey(Key, False) then
    begin
      result := Reg.ReadString(Name);
    end;
  finally
    Reg.Free;
  end;
end;
//set if ReportMachine runtime can Design  stand by Register

function SetReportCanDesign(AReport: TRMReport): boolean;
begin
  result := PHReadRegister('HKEY_LOCAL_MACHINE', '\Software\PH\PCBarcode\1.0', 'DesignReport') = '1';
  if result then
    AReport.PreviewButtons := AReport.PreviewButtons + [pbDesign]
  else
    AReport.PreviewButtons := AReport.PreviewButtons - [pbDesign];
end;

function bcGetDateStr(DT: TDate): string;
var
  sTemp, S1: string;
begin
  sTemp := FormatDateTime('yyyymmdd', DT);
  if Copy(sTemp, 1, 2) = '19' then
    S1 := '0'
  else
    S1 := '1';
  result := S1 + FormatDateTime('yymmdd', DT);
end;

function bcGetStrDate(ADT: string): TDateTime;
var
  sTemp: string;
  yy, mm, dd: word;
begin
  sTemp := IntToStr(19000000 + StrToIntDef(ADT, 0)); // 1050426->20050426
  yy := StrToInt(Copy(sTemp, 1, 4));
  mm := StrToInt(Copy(sTemp, 5, 2));
  dd := StrToInt(Copy(sTemp, 7, 2));
  result := EncodeDate(yy, mm, dd);
end;

function bcGetFloatStr(Value: real; iInt: Integer; iDecimal: Integer): string;
var
  I: Integer;
  sInt, sDecimal, sTemp: string;
begin
  sTemp := '';
  for I := 1 to iInt do // Iterate
  begin
    sTemp := sTemp + '0';
  end; // for
  sInt := FormatFloat(sTemp, Int(Value));
  sTemp := '.';
  for I := 1 to iDecimal do // Iterate
  begin
    sTemp := sTemp + '0';
  end; // for
  sDecimal := FormatFloat(sTemp, Frac(Value));
  result := sInt + Copy(sDecimal, 2, iDecimal);
end;

function bcGetStringStr(Value: string; iCount: Integer): string;
begin
  result := Format('%-' + IntToStr(iCount) + 's', [Value]);
end;

function bcStrToFloat(Value: string; iInt: Integer; iDecimal: Integer): real;
var
  sInt, sDecimal, sTemp: string;
begin
  sInt := Copy(Value, 1, iInt);
  sDecimal := Copy(Value, iInt + 1, iDecimal);
  sTemp := sInt + '.' + sDecimal;
  result := StrToFloatDef(sTemp, 0);
end;

//get data from HandHeld
//result:0:load dll fail, 1: finish, 2:HandHeld is not ready
{$WARNINGS OFF}

function FromHandHeld(AFileName: string; AComPort: string;
  DoFromHandHeldData: FromHandHeldDataType): Integer;
var
  HandHeldIn: InvokeHandHeldIn;
  ADLLName, AName: string;
  ADLLHandle: THandle;
begin
  result := 0;
  ADLLName := ExtractFilePath(Application.ExeName) + 'Hht.dll';
  ADLLHandle := LoadLibrary(PChar(ADLLName));
  Screen.Cursor := crHourGlass;
  try
    if ADLLHandle <> 0 then
    begin
      @HandHeldIn := GetProcAddress(ADLLHandle, 'HhIn');
      if Assigned(HandHeldIn) then
      begin
        if HandHeldIn(AFileName, AComPort) = 0 then
        begin
          AName := cHandHeldPath + AFileName;
          DoFromHandHeldData(AName);
          result := 1;
        end
        else
        begin
          result := 2;
        end;
      end;
    end;
  finally // wrap up
    if ADLLHandle <> 0 then
      FreeLibrary(ADLLHandle);
    Screen.Cursor := crDefault;
  end; // try/finally
end;

//upload data to HandHeld
//result:0:load dll fail, 1: finish, 2:HandHeld is not ready

function ToHandHeld(AFileName: string; AComPort: string;
  DoToHandHeldData: ToHandHeldDataType): Integer;
var
  HandHeldOut: InvokeHandHeldOut;
  ADLLName, AName: string;
  ADLLHandle: THandle;
begin
  result := 0;
  ADLLName := ExtractFilePath(Application.ExeName) + 'Hht.dll';
  ADLLHandle := LoadLibrary(PChar(ADLLName));
  Screen.Cursor := crHourGlass;
  try
    if ADLLHandle <> 0 then
    begin
      @HandHeldOut := GetProcAddress(ADLLHandle, 'HhOut');
      if Assigned(HandHeldOut) then
      begin
        AName := cHandHeldPath + AFileName;
        result := DoToHandHeldData(AName);
        if result = -1 then
        begin
          //error
          Exit;
        end
        else if result = 0 then
        begin
          //ShowMessage('No data');
          Exit;
        end;

        if HandHeldOut(AFileName, AComPort) = 0 then
        begin
          result := 1;
        end
        else
        begin
          result := 2;
        end;
      end;
    end;
  finally // wrap up
    if ADLLHandle <> 0 then
      FreeLibrary(ADLLHandle);
    Screen.Cursor := crDefault;
  end; // try/finally
end;

function bcGetWhereSQL(ACommandText: string;
  AFieldName, AValue: string; bGetDistinct: boolean): string;
var
  aSQL: string;
  iPos: Integer;
  bHasExists: boolean;
begin
  aSQL := '';
  //if DataSet has Open ,then get the SQL
//  if DataSet.Active then
//  begin
  aSQL := UpperCase(ACommandText);
  // whether 'where' is Exists
  iPos := Pos('WHERE', aSQL);
  if iPos > 0 then
  begin
    aSQL := Trim(Copy(aSQL, iPos, MaxInt));
    //whether 'Order by' is Exists
    iPos := Pos('ORDER BY', aSQL);
    if iPos > 0 then aSQL := Trim(Copy(aSQL, 1, iPos - 1));
  end
  else
    aSQL := '';
  //  end;
  if bGetDistinct then
  begin
    if aSQL = '' then
      aSQL := 'where (1=2)';
    result := aSQL;
    exit;
  end;
  if aSQL = '' then
    aSQL := 'WHERE (' + AFieldName + '=' + QuotedStr(AValue) + ')'
  else
  begin
    //whether the new condition is Exists
    bHasExists := Pos(AFieldName + '=' + QuotedStr(AValue), aSQL) > 0;
    //if the new condition is not Exists
    if not bHasExists then
      aSQL := aSQL + ' OR (' + AFieldName + '=' + QuotedStr(AValue) + ')';
  end;
  result := aSQL;
end;

function WriteToSocketStream(iCopies: Integer; bCollateCopies: boolean; bcPrinter: string;
  ADataSet: TClientDataSet; BarcodePrintProc: InvokePrintServer): Integer;
var
  AStream: TMemoryStream;
begin
  AStream := TMemoryStream.Create;
  try
    PHWriteWordToStream(aStream, cPHVersion);
    PHWriteInt32ToStream(AStream, iCopies);
    PHWriteBooleanToStream(AStream, bCollateCopies);
    PHWriteStringToStream(AStream, bcPrinter);
    ADataSet.SaveToStream(AStream);

    result := InvokePrintServer(BarcodePrintProc)(AStream, bcPrinter);
  finally // wrap up
    FreeAndNil(AStream);
  end; // try/finally
end;

{$WARNINGS ON}

function SetFileReadOnly(FileName: string; bReadOnly: boolean): boolean;
var
  Attributes, NewAttributes: Word;
begin
  result := False;
  {$WARN SYMBOL_PLATFORM OFF}

  {$IFDEF MSWINDOWS}
  if FileExists(FileName) then
  begin
    Attributes := FileGetAttr(FileName);
    if bReadOnly then
      NewAttributes := Attributes or SysUtils.faReadOnly
    else
      NewAttributes := Attributes and (not SysUtils.faReadOnly);
    result := True;
    if Attributes <> NewAttributes then
      result := FileSetAttr(FileName, NewAttributes) = 0;
  end;
  {$ENDIF}
end;

function GetErrorCause1(APos: integer): string;
var
  AStr: string;
begin
  case APos of
    1: AStr := 'Invalid Company';
    2: AStr := 'Invalid Work Order';
    3: AStr := 'Invalid Status';
    4: AStr := 'Invalid Date';
    5: AStr := 'Date > System Date';
    6: AStr := 'Invalid Stockroom';
    7: AStr := 'Invalid Component';
    8: AStr := 'No Production Details';
    9: AStr := 'No Stockroom Details';
    10: AStr := 'Not in BOM';
    11: AStr := 'Item Is Lot Controlled but no Lot Number has been supplied';
    12: AStr := 'Invalid Lot Number';
    13: AStr := 'Not Allocated to Order';
    14: AStr := 'Invalid Quantity';
    15: AStr := 'Qty > Lot Balance';
    16: AStr := 'Qty > Stock Balance';
    17: AStr := 'Invalid Unit of Measure';
    18: AStr := 'Invalid Flag';
    19: AStr := 'Reason Must Be Supplied';
    20: AStr := 'Invalid Reason Code';
    21: AStr := 'Material not on Work Order';
    22: AStr := 'System Error (program dump)';
    23: AStr := 'Qty > Locked (Frozen) stock';
  else
    AStr := '';
  end;
  result := AStr;
end;

function GetErrorCause(APos: integer; languageID : integer): string;
var
  AStr: string;
begin

if (languageID = 134) or (languageID = 136) then
begin
	  case APos of
	    1: AStr := '無效的公司代碼';
	    2: AStr := '無效的制單號';
	    3: AStr := '制單狀態已改變';
	    4: AStr := '無效的日期';
	    5: AStr := '發料日期遲過系統日期';
	    6: AStr := '無效的倉庫代碼';
	    7: AStr := '無效的物料';
	    8: AStr := '沒有生產明細';
	    9: AStr := '沒有倉庫明細';
	    10: AStr := '不在BOM中';
	    11: AStr := '物料沒有相應的Lot ID';
	    12: AStr := '無效的Lot ID';
	    13: AStr := '沒有分配給銷售單';
	    14: AStr := '無效數量';
	    15: AStr := '發料數超出Lot數';
	    16: AStr := '發料數超出倉存數';
	    17: AStr := '無效的單位';
	    18: AStr := '無效的Flag';
	    19: AStr := '必須提供原因';
	    20: AStr := '無效的原因代碼';
	    21: AStr := '物料沒有指派給制單';
	    22: AStr := '系統錯誤 (program dump)';
	    23: AStr := '發料數超出鎖住的倉存數';
	  else
	    AStr := '';
	  end;
  end
  else
  begin
	  case APos of
	    1: AStr := 'Invalid Company';
	    2: AStr := 'Invalid Work Order';
	    3: AStr := 'Invalid Status';
	    4: AStr := 'Invalid Date';
	    5: AStr := 'Date > System Date';
	    6: AStr := 'Invalid Stockroom';
	    7: AStr := 'Invalid Component';
	    8: AStr := 'No Production Details';
	    9: AStr := 'No Stockroom Details';
	    10: AStr := 'Not in BOM';
	    11: AStr := 'Item Is Lot Controlled but no Lot Number has been supplied';
	    12: AStr := 'Invalid Lot Number';
	    13: AStr := 'Not Allocated to Order';
	    14: AStr := 'Invalid Quantity';
	    15: AStr := 'Qty > Lot Balance';
	    16: AStr := 'Qty > Stock Balance';
	    17: AStr := 'Invalid Unit of Measure';
	    18: AStr := 'Invalid Flag';
	    19: AStr := 'Reason Must Be Supplied';
	    20: AStr := 'Invalid Reason Code';
	    21: AStr := 'Material not on Work Order';
	    22: AStr := 'System Error (program dump)';
	    23: AStr := 'Qty > Locked (Frozen) stock';
	  else
	    AStr := '';
	  end;
  end;
  result := AStr;
end;

function GetIDOFullString(AIDO: string; TypeStr: string): string; 
var
  sTemp: string;
begin
  if AIDO = '' then
  begin
    result := '';
    exit;
  end;

 result := AIDO; //IDO-0000026
 sTemp := AIDO;
 if Copy(AIDO, 1, 4) = (TypeStr + '-') then sTemp := Copy(AIDO, 5, MaxInt)
 else if Copy(AIDO, 1, 3) = TypeStr then sTemp := Copy(AIDO, 4, MaxInt);
 sTemp := '0000000' + sTemp;
 sTemp := Copy(sTemp, Length(sTemp) - 6, 7);
 result := TypeStr + '-' + sTemp;
 
 {if Copy(AIDO, 1, 4) = 'IDO-' then sTemp := Copy(AIDO, 5, MaxInt)
 else if Copy(AIDO, 1, 3) = 'IDO' then sTemp := Copy(AIDO, 4, MaxInt);
 sTemp := '0000000' + sTemp;
 sTemp := Copy(sTemp, Length(sTemp) - 6, 7);
 result := 'IDO-' + sTemp; }
end;

end.

