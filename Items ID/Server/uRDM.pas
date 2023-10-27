unit uRDM;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr, Dialogs,
  DBClient, BarcodeSvr_TLB, StdVcl, DB, ADODB, Provider, Forms, uBarcodeERP, INIFiles,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdFTP, IdFTPCommon,
  IdAntiFreezeBase, IdAntiFreeze, Variants, IdFTPList;

type
  TPCBarcodeSvr = class(TRemoteDataModule, IPCBarcodeSvr)
    ADOCN_PHGDB: TADOConnection;
    ADOQuery_BC: TADOQuery;
    dspPHG: TDataSetProvider;
    ADOQuery_FTP: TADOQuery;
    IdAntiFreeze1: TIdAntiFreeze;
    IdFTP: TIdFTP;
    ADOCN_ZPHLIB: TADOConnection;
    dspPHG1: TDataSetProvider;
    dspPHG2: TDataSetProvider;
    ADOQuery_BC1: TADOQuery;
    ADOQuery_BC2: TADOQuery;
    dspPHG_Temp: TDataSetProvider;
    ADOQuery_BC_Temp: TADOQuery;
    procedure IdFTPWorkBegin(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCountMax: Integer);
    procedure IdFTPWorkEnd(Sender: TObject; AWorkMode: TWorkMode);
    procedure ADOCN_PHGDBBeforeConnect(Sender: TObject);
    procedure RemoteDataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FPHDataFile: TPHDataFile;
    FTransferrignData: boolean;
    function FtpFileExists(AName: string; AItemType: TIdDirItemType): boolean;
    procedure ServerQuit;
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    procedure GetDataFromERP(Kind: Integer; var vParams, vData: OleVariant);
      safecall;
    procedure UpdateDataToERP(Kind: Integer; var vParams: OleVariant;
      out bFinish: OleVariant); safecall;
    procedure RefreshFTP(out bOK: OleVariant); safecall;
    procedure PHValidate(const UserID, Psw: WideString; out bSite,
      bValid: OleVariant); safecall;
    procedure PHChangePassword(const UserID, NewPsw: WideString;
      out bValid: OleVariant); safecall;
    procedure PHGetUnEncryptPsw(var Psw: OleVariant); safecall;
    procedure PHGetEncryptPsw(var Psw: OleVariant); safecall;
    procedure PHGetNewCurrQtyOfPrintLabel(var vParams: OleVariant); safecall;
  public
    { Public declarations }
    //property PHDataFile: TPHDataFile read FPHDataFile write FPHDataFile;
    //procedure TestGetDataFromERP(Kind: Integer);
    function InitFTP: boolean;
    procedure InitADOCNConnect;
  end;
//var
//  PCBarcodeSvr: TPCBarcodeSvr;
//  FPHDataFile: TPHDataFile;

implementation

uses uTools;

{$R *.DFM}

class procedure TPCBarcodeSvr.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end
  else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

procedure TPCBarcodeSvr.GetDataFromERP(Kind: Integer; var vParams,
  vData: OleVariant);
var
//  ASourceFile, ADestFile: string;
  I: Integer;
begin
//  bFinish := 0;

  FPHDataFile.ParamsList.Clear;
  if (VarIsArray(vParams)) then
  begin
    for I := VarArrayLowBound(vParams, 1) to VarArrayHighBound(vParams, 1) do
    begin
      FPHDataFile.ParamsList.Add(vParams[I]);
    end;
  end;
  FPHDataFile.DataSetRecord:=vData;
//  ASourceFile := FPHDataFile.GetERPDataFileName(Kind);
//  ADestFile := FPHDataFile.GetLocalDataFileName(Kind);
//  if FtpFileExists(ASourceFile, ditFile) then
//  begin
//    if not IdFTP.Connected then InitFTP;
//    IdFTP.TransferType := ftBinary;
//    IdFTP.Get(ASourceFile, ADestFile, True, False);
  FPHDataFile.RetrieveDataFromERP(Kind);
  vParams[0] := FPHDataFile.UpdateCount;
  vParams[1] := FPHDataFile.InsertCount;

//  bFinish := 1;
//  end;
end;

procedure TPCBarcodeSvr.UpdateDataToERP(Kind: Integer;
  var vParams: OleVariant; out bFinish: OleVariant);
var
  ASourceFile, ADestFile: string;
  I: Integer;
begin
  bFinish := 0;
  try
    if not IdFTP.Connected then
      if not InitFTP then
      begin
        bFinish := -1;
        exit;
      end;

    FPHDataFile.ParamsList.Clear;
    if (VarIsArray(vParams)) then
    begin
      for I := VarArrayLowBound(vParams, 1) to VarArrayHighBound(vParams, 1) do
      begin
        FPHDataFile.ParamsList.Add(vParams[I]);
      end;
    end;
    if not FPHDataFile.UpdateERP(Kind) then exit;

    ASourceFile := FPHDataFile.GetLocalDataFileName(Kind);
    ADestFile := FPHDataFile.GetERPDataFileName(Kind);
    if FileExists(ASourceFile) then
    begin
//      if FtpFileExists(ADestFile, ditFile) then
//        IdFTP.Rename(ADestFile, FPHDataFile.GetBakFileName(Kind));
      IdFTP.TransferType := ftBinary;
      IdFTP.Put(ASourceFile, ADestFile, True);
      bFinish := 1;
    end;
  finally // wrap up
    if IdFTP.Connected then
    begin
      if FTransferrignData then IdFTP.Abort;
      IdFTP.Quit;
    end;
  end; // try/finally
end;

function TPCBarcodeSvr.FtpFileExists(AName: string; AItemType: TIdDirItemType): boolean;
var
  I: Integer;
  LS: TStringList;
  AStr: string;
begin
  result := False;
  LS := TStringList.Create;
  try
    if not IdFTP.Connected then
//      if not InitFTP then
    begin
      exit;
    end;

    IdFTP.ChangeDir(cFtpServerDir);
    IdFTP.TransferType := ftASCII;
    AStr := IdFTP.RetrieveCurrentDir;

    IdFTP.List(LS);
//    LS.Clear;
    for I := 0 to IdFTP.DirectoryListing.Count - 1 do // Iterate
    begin
//      LS.Add(IdFTP.DirectoryListing.Items[I].FileName);
      if IdFTP.DirectoryListing.Items[I].ItemType = AItemType then
        if AnsiCompareText(IdFTP.DirectoryListing.Items[I].FileName, AName) = 0 then
        begin
          result := True;
          Break;
        end;
    end; // for
  finally
    FreeAndNil(LS);
  end;
end;

function TPCBarcodeSvr.InitFTP: boolean;
begin
  result := False;
  with ADOQuery_FTP do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from PB_FTPIP');
    Open;
    if RecordCount > 0 then
    begin
      if IdFTP.Connected then
      begin
        if FTransferrignData then IdFTP.Abort;
        IdFTP.Quit;
      end;
      try
        IdFTP.Host := FieldByName('FTPIP').AsString;
        IdFTP.Port := FieldByName('FTPPORT').AsInteger;
        IdFTP.Username := FieldByName('FTPUSER').AsString;
        IdFTP.Password := FieldByName('FTPPWD').AsString;
        IdFTP.Connect;
        IdFTP.ChangeDir(cFtpServerDir);
        IdFTP.TransferType := ftASCII;
        result := True;
      except
        result := False;
      end; // try/except
    end;
  end; // with
end;
//procedure TPCBarcodeSvr.ADOCN_PHGDBAfterConnect(Sender: TObject);
//begin
//  if not InitFTP then
//  begin
//    exit;
//  end;
//  if not FtpFileExists(cFtpServerBakDir, ditDirectory) then
//  begin
//    IdFTP.MakeDir(cFtpServerBakDir);
//    IdFTP.ChangeDir(cFtpServerDir);
//    IdFTP.TransferType := ftASCII;
//  end;
//end;

procedure TPCBarcodeSvr.RefreshFTP(out bOK: OleVariant);
begin
  bOK := not FTransferrignData;
  if not FTransferrignData then
  begin
    if not InitFTP then
    begin
      exit;
    end;
  end;
end;

procedure TPCBarcodeSvr.IdFTPWorkBegin(Sender: TObject;
  AWorkMode: TWorkMode; const AWorkCountMax: Integer);
begin
  FTransferrignData := True;
end;

procedure TPCBarcodeSvr.IdFTPWorkEnd(Sender: TObject;
  AWorkMode: TWorkMode);
begin
  FTransferrignData := False;
end;

procedure TPCBarcodeSvr.PHValidate(const UserID, Psw: WideString;
  out bSite, bValid: OleVariant);
var
  ASite: string;
begin
  bValid := FPHDataFile.Validate(UserID, Psw, ASite);
  bSite := ASite;
end;

procedure TPCBarcodeSvr.PHChangePassword(const UserID, NewPsw: WideString;
  out bValid: OleVariant);
begin
  bValid := FPHDataFile.ChangeUserPassword(UserID, NewPsw);
end;

procedure TPCBarcodeSvr.PHGetUnEncryptPsw(var Psw: OleVariant);
begin
  Psw := FPHDataFile.GetUnEncryptPassWord(Psw);
end;

procedure TPCBarcodeSvr.PHGetEncryptPsw(var Psw: OleVariant);
begin
  Psw := FPHDataFile.GetEncryptPassWord(Psw);
end;

procedure TPCBarcodeSvr.InitADOCNConnect;
var
  AIniFile: TIniFile;
  sProvider, sDataSource, sInitialCatalog, ASection,userID,password: string;
begin
  if not assigned(FPHDataFile) then
    FPHDataFile := TPHDataFile.Create(ADOCN_PHGDB,ADOCN_ZPHLIB);

  if not ADOCN_PHGDB.Connected then
  begin
    AIniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + cServerIniFile);
    try
      with ADOCN_PHGDB do
      begin
        ASection := 'PHGDB2';
        sProvider := AIniFile.ReadString(ASection, 'Provider', 'SQLOLEDB.1');
        sDataSource := AIniFile.ReadString(ASection, 'DataSource', 'S99VF403');
        sInitialCatalog := AIniFile.ReadString(ASection, 'InitialCatalog', 'PHGDB2');
        userID := AIniFile.ReadString(ASection, 'UserID', 'sa') ;
        password := AIniFile.ReadString(ASection, 'Password', 'teamwork') ;
        LoginPrompt := False;
        CommandTimeout := AIniFile.ReadInteger(ASection, 'CommandTimeout', 60);
        ConnectionTimeout := AIniFile.ReadInteger(ASection, 'ConnectionTimeout', 60);
        ConnectionString := 'Provider=' + sProvider + ';Password='+password+';'
          + 'Persist Security Info=True;User ID='+userID+';Initial Catalog=' + sInitialCatalog + ';Data Source=' + sDataSource;
      end; // with
    finally // wrap up
      FreeAndNil(AIniFile);
    end; // try/finally
  end;
//    if not ADOCN_ZPHLIB.Connected then
//    begin
//       ADOCN_ZPHLIB.LoginPrompt := False;
//       ADOCN_ZPHLIB.Connected:=True;
//    end;
//      with ADOCN_ZPHLIB do
//      begin
////        FPHDataFile.ZPHLIB_ADOCN := ADOCN_ZPHLIB;
//        ASection := 'ZPHLIB';
//        sProvider := AIniFile.ReadString(ASection, 'Provider', 'MSDASQL.1');
//        sDataSource := AIniFile.ReadString(ASection, 'DataSource', 'ZPHLIB');
//        sInitialCatalog := AIniFile.ReadString(ASection, 'InitialCatalog', 'S104BGHM');
//        LoginPrompt := False;
//        CommandTimeout := AIniFile.ReadInteger(ASection, 'CommandTimeout', 60);
//        ConnectionTimeout := AIniFile.ReadInteger(ASection, 'ConnectionTimeout', 60);
//        ConnectionString := 'Provider=' + sProvider + ';Password=mq3hx6gc3t;'
//          + 'Persist Security Info=True;User ID=ODBC;Data Source=' + sDataSource + ';Initial Catalog=' + sInitialCatalog;
//      end;

end;

procedure TPCBarcodeSvr.ADOCN_PHGDBBeforeConnect(Sender: TObject);
begin
  InitADOCNConnect;
end;

procedure TPCBarcodeSvr.ServerQuit;
begin
  try
    if IdFTP.Connected then
    begin
      if FTransferrignData then IdFTP.Abort;
      IdFTP.Quit;
    end;
  finally // wrap up
    FreeAndNil(FPHDataFile);
  end; // try/finally
end;

procedure TPCBarcodeSvr.PHGetNewCurrQtyOfPrintLabel(
  var vParams: OleVariant);
begin
  FPHDataFile.GetNewCurrQtyOfPrintLabel(vParams);
end;

procedure TPCBarcodeSvr.RemoteDataModuleDestroy(Sender: TObject);
begin
  ServerQuit;
end;


initialization
  TComponentFactory.Create(ComServer, TPCBarcodeSvr,
    Class_PCBarcodeSvr, ciMultiInstance, tmApartment);
finalization
   //PCBarcodeSvr.ServerQuit;
end.

