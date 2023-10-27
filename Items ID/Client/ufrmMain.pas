//Client main form ,use to create bcs
//Author :peter
//Date: 2005.03.07

unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,
  uPHbcClass, RzPanel, RzStatus, ExtCtrls, ScktComp, uTools,
  Graphics, ShellAPI, cxLookAndFeels, dxUxTheme, IdStack,
  CaptionButton, cbClasses, Menus, ImgList, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient;

type
  TfrmMain = class(TForm)
    RzStatusBar1: TRzStatusBar;
    RzGlyphStatus: TRzGlyphStatus;
    RzClockStatus1: TRzClockStatus;
    RzStatusPane_User: TRzStatusPane;
    RzStatusPane_Language: TRzStatusPane;
    ClientSocket: TClientSocket;
    Timer_Stop: TTimer;
    Timer_Sock: TTimer;
    RzStatusPane_Print: TRzStatusPane;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cbtnEmail: TCaptionButton;
    cbtnLanguage: TCaptionButton;
    cbtnNavigator: TCaptionButton;
    PopupMenu1: TPopupMenu;
    PeterZhou1: TMenuItem;
    CannieLau1: TMenuItem;
    JoeWang1: TMenuItem;
    N1: TMenuItem;
    PeterSimonJoe1: TMenuItem;
    ImageList1: TImageList;
    cbtnUser: TCaptionButton;
    IdTCPClient1: TIdTCPClient;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RzGlyphStatusClick(Sender: TObject);
    procedure RzStatusPane_UserDblClick(Sender: TObject);
    procedure RzStatusPane_LanguageDblClick(Sender: TObject);
    procedure ClientSocketConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocketDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocketError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure Timer_StopTimer(Sender: TObject);
    procedure Timer_SockTimer(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure ClientSocket_PrintConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket_PrintDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket_PrintError(Sender: TObject;
      Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure PeterZhou1Click(Sender: TObject);
    procedure CannieLau1Click(Sender: TObject);
    procedure JoeWang1Click(Sender: TObject);
    procedure PeterSimonJoe1Click(Sender: TObject);
    procedure cbtnUserClick(Sender: TObject);
  private
    { Private declarations }
    ALanguageID: Integer;
    AUserName: string;
    ASite: string;
    AKind: TcxLookAndFeelKind;
    ANativeStyle: boolean;

    FbcManage: TPHbcManage;
    FCount: Integer;
    FLocalIP: string;
    FPrintServerConnected, FPrintServerNotConnected: string;

    procedure DoMSG(MSG: string);
    function GetPartMsgValue(var PartMsg: string; Section: string): string;
    procedure SetLanguageStr;
    procedure SendEmailTo(AEMail: string; AName: string);
    //    function SetXPNativeStyle: boolean;
  public
    { Public declarations }
    property bcManage: TPHbcManage read FbcManage; // write FbcManage;

  published
  end;

var
  frmMain: TfrmMain;
  //function PrintToServer(AStr: string): Integer; stdcall;
function PrintToServer(AData: TStream; APrinter: string): Integer; stdcall;

implementation

uses ufrmLogin, splashform, ufrmChangePSW;

{$R *.dfm}

const
  PeterEmail = 'PeterZhou@phgmt.com.hk';
  SimonEmail = 'SimonZhu@phgmt.com.hk';
  JoeEmail = 'JoeWang@phgmt.com.hk';
  CannieEmail = 'CannieLau@phgmt.com.hk';
  //function PrintToServer(arV: TarV): Integer; stdcall;

//function PrintToServer(AStr: string): Integer; stdcall;
//begin
//  if frmMain.ClientSocket_Print.Active then
//  begin
//    frmMain.ClientSocket_Print.Socket.SendText(frmMain.FLocalIP + #13#10 + AStr);
//    result := 1;
//  end
//  else
//  begin
//    result := 0;
//    Application.MessageBox(PChar(frmMain.FPrintServerNotConnected),
//      PChar('Tips'), MB_OK + MB_ICONInformation);
//  end;
//end;
//

function PrintToServer(AData: TStream; APrinter: string): Integer; stdcall;
var
  ATCPClient: TIdTCPClient;
  AIP: string;
begin
  result := 0;
  AIP := GetIPByBarcodePrintersFromINI(APrinter);
  if AIP = '' then
  begin
    Application.MessageBox(PChar(frmMain.FPrintServerNotConnected),
      PChar('Tips'), MB_OK + MB_ICONInformation);   
    exit;
  end;
  
  ATCPClient := TIdTCPClient.Create(Application);
  try
    with ATCPClient do
    begin
      try
        Host := AIP;
        Port := cDefaultPrintPort;

        Connect;
        WriteStream(AData);
        Disconnect;

        result := 1;
      except
        begin
          result := 0;
          Application.MessageBox(PChar(frmMain.FPrintServerNotConnected),
            PChar('Tips'), MB_OK + MB_ICONInformation);
        end;
      end; // try/except
    end;
  finally // wrap up
    FreeAndNil(ATCPClient);
  end; // try/finally
end;

//String to PChar

function ConvertStrToPChar(AStr: string): PChar;
begin
  if (AStr = '') or (UpperCase(AStr) = 'NIL') or (UpperCase(AStr) = 'NULL') then
    result := nil
  else
    result := PChar(AStr);
end;

//function TfrmMain.SetXPNativeStyle: boolean;
//begin
//  result := IsWindowsXPOrLater and IsThemeLibraryLoaded;
//  with cxLookAndFeelController1 do
//  begin
//    NativeStyle := result;
//    Kind := lfUltraFlat;
//  end; // with
//end;
//

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FLocalIP := GStack.LocalAddress;
  Timer_Stop.Enabled := False;
  Timer_Sock.Enabled := False;
  //  Button_ShowNavigator.Parent := dxStatusBarContainer0;
  FbcManage := TPHbcManage.Create(Self);
  FbcManage.WriteDebugInfo(Self.ClassName, 'TPHbcManage.Create.Finish');
  FbcManage.WriteDebugInfo(Self.ClassName, 'FormCreate');
  Timer_Sock.Enabled := True;
  //Timer_Print.Enabled := True;
  //  SetXPNativeStyle;
    //reg  Barcode Print
//  if not CheckIsRegOle('printlabel2.clsPrintLabel') then
//    RegisterOle(ExtractFilePath(Application.ExeName) + 'PrintLabel2.dll');

  if not UserLogin then
  begin
    Timer_Stop.Enabled := False;
    Timer_Sock.Enabled := False;
    if ClientSocket.Active then ClientSocket.Close;
    FreeAndNil(FbcManage);
    Self.OnShow := nil;
    Application.ShowMainForm := False;
    Application.Terminate;
  end
  else
  begin
    if assigned(frmsplash) then
    begin
      frmsplash.cxLabel1.Caption := 'Material ID Label';
      frmsplash.cxLabel2.Caption := bcManage.UserName + ' Login ...';
      frmsplash.Visible := True;
      frmsplash.Update;
      Application.ProcessMessages;
    end;
    Application.ShowMainForm := True;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  SetLanguageStr;
  with FbcManage do
  begin
    ImageList := ImageList1;
    Connections.arObject[2] := @PrintToServer;
    InitManager;
    NodePage.CreateGroupNodes;
    QueryPage.AddBasePage;
  end; //with
  FbcManage.DockSite.Controller.ActiveDockControl := FbcManage.NodePage.NodePanel;
  FbcManage.WriteDebugInfo(Self.ClassName, 'FormShow');
  Self.WindowState := wsMaximized;

end;

procedure TfrmMain.SetLanguageStr;
begin
  with bcManage do //DataSet_Language
  begin
    RUnit := 'Main';
    RzGlyphStatus.Caption := GetLanguagesStr(1, 'Click here to show Barcode Navigator');
    cbtnNavigator.Hint := RzGlyphStatus.Caption;
    Self.Caption := GetLanguagesStr(37, 'Material ID Label', True);
    RzStatusPane_User.Caption := '  ' + GetLanguagesStr(3, 'Current User') + ' : ' + bcManage.UserName + '  ';
    cbtnUser.Hint := GetLanguagesStr(16, 'Change Password');

    //      + #13#10 + RzStatusPane_User.Caption;
    RzStatusPane_Language.Hint := GetLanguagesStr(2, 'Double Click here to Change Language.');
    cbtnLanguage.Hint := RzStatusPane_Language.Hint;
    FPrintServerNotConnected := GetLanguagesStr(5, 'Print Server Not Connected');
    FPrintServerConnected := GetLanguagesStr(6, 'Label Printer');
    cbtnEmail.Hint := GetLanguagesStr(7, 'Send Email to IT Dept.');
    PeterZhou1.Caption := GetLanguagesStr(18, 'Peter Zhou');
    CannieLau1.Caption := GetLanguagesStr(19, 'CannieLau');
    JoeWang1.Caption := GetLanguagesStr(20, 'Joe Wang');
    PeterSimonJoe1.Caption := GetLanguagesStr(21, 'Peter,Simon,Joe');
    // if ClientSocket_Print.Active then
      // RzStatusPane_Print.Caption := FPrintServerConnected ;
     //else
     //  RzStatusPane_Print.Caption := FPrintServerNotConnected;
  end; // with
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  Timer_Stop.Enabled := False;
  Timer_Sock.Enabled := False;

  if ClientSocket.Active then ClientSocket.Close;

  FreeAndNil(FbcManage);
end;

procedure TfrmMain.RzGlyphStatusClick(Sender: TObject);
begin
  FbcManage.NodePage.NodePanel.Visible := True;
  FbcManage.DockSite.Controller.ActiveDockControl := FbcManage.NodePage.NodePanel;
  //  FbcManage.NodePage.NodePanel.SetFocus;
end;

procedure TfrmMain.RzStatusPane_UserDblClick(Sender: TObject);
begin
  PHChangeThePassword;
  exit;

  if UserLogin(ltChangeLogin) then
  begin
    Screen.Cursor := crHourGlass;
    try
      ALanguageID := FbcManage.LanguageID;
      AUserName := FbcManage.UserName;
      ASite := FbcManage.Site;
      AKind := FbcManage.LookAndFeelKind;
      ANativeStyle := FbcManage.LookAndFeelNativeStyle;

      FbcManage.FreePartClass;
      //      Timer_Stop.Enabled := False;
      //      Timer_Sock.Enabled := False;
      //      ClientSocket.Close;
      FreeAndNil(FbcManage);
      Sleep(1000);
      FbcManage := TPHbcManage.Create(Self);
      //  with FbcManage do
      //  begin
      //    InitManager;
      ////    NodePage.CreateGroupNodes;
      //    QueryPage.AddBasePage;
      //  end; //with
      Sleep(1000);
      FbcManage.LanguageID := ALanguageID;
      FbcManage.UserName := AUserName;
      FbcManage.Site := ASite;
      FbcManage.Login := True;
      SetLanguageStr;
      FbcManage.LookAndFeelKind := AKind;
      FbcManage.LookAndFeelNativeStyle := ANativeStyle;
      with FbcManage do
      begin
        InitManager;
        //        Sleep(500);
        NodePage.CreateGroupNodes;
        QueryPage.AddBasePage;
      end; //with
      FbcManage.DockSite.Controller.ActiveDockControl := FbcManage.NodePage.NodePanel;
    finally // wrap up
      Screen.Cursor := crDefault;
    end; // try/finally
  end;
end;

procedure TfrmMain.RzStatusPane_LanguageDblClick(Sender: TObject);
begin
  if UserLogin(ltChangeLanguage) then
  begin
    Screen.Cursor := crHourGlass;
    try
      SetLanguageStr;
      FbcManage.ChangeLanguage;
      FbcManage.QueryPage.ChangeLookAndFeel;
    finally // wrap up
      Screen.Cursor := crDefault;
    end; // try/finally
  end;
end;

procedure TfrmMain.ClientSocketConnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
  sIP, sCMD, sParam, AText, ALocalName, sTypeID: string;
begin
  RzGlyphStatus.Color := clWhite; // $00DEE2E4;
  Timer_Sock.Enabled := False;
  ALocalName := ClientSocket.Socket.LocalHost;
  sTypeID := '2';

  sIP := 'IP=' + FLocalIP + ';';
  //  sCMD := 'CMD=SendClientAppPath;';
  sCMD := 'CMD=SendClientConnect;';
  sParam := 'PARAM=' + Application.ExeName + ';' + sTypeID + ';' + ALocalName + ';';
  AText := sIP + sCMD + sParam;
  FbcManage.WriteDebugInfo(Self.ClassName, 'SendClientConnect:' + AText);
  ClientSocket.Socket.SendText(AText);
end;

procedure TfrmMain.ClientSocketDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
  sIP, sCMD, sParam, AText, sTypeID: string;
begin
  sTypeID := '2';

  sIP := 'IP=' + FLocalIP + ';';
  sCMD := 'CMD=SendClientDisconnect;';
  sParam := 'PARAM=' + sTypeID + ';';
  AText := sIP + sCMD + sParam;
  FbcManage.WriteDebugInfo(Self.ClassName, 'SendClientDisconnect:' + AText);
  ClientSocket.Socket.SendText(AText);

  RzGlyphStatus.Color := clBtnFace;
  //Timer_Sock.Enabled := True;
end;

procedure TfrmMain.ClientSocketError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
  if not Socket.Connected then
    RzGlyphStatus.Color := clBtnFace;
  //  if ErrorCode<>10055 then
  //Timer_Sock.Enabled := True;
  ErrorCode := 0;
end;

procedure TfrmMain.ClientSocketRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  //do Socket Messages
  DoMSG(Socket.ReceiveText);
end;

function PHExtractSectName(const Fields: string; var Pos: Integer; AChr: Char): string;
var //根據標記AChr取出段落     AAAAA;CDFF;KJHKJH;
  I: Integer;
begin
  I := Pos;
  while (I <= Length(Fields)) and (Fields[I] <> AChr) do
    Inc(I);
  Result := Trim(Copy(Fields, Pos, I - Pos));
  if (I <= Length(Fields)) and (Fields[I] = AChr) then Inc(I);
  Pos := I;
end;

procedure TfrmMain.DoMSG(MSG: string);
var
  RIP, CMD, PARAMs, AStr, sTemp: string;
  AsPARAM: array of string;
  iPos, I, ATypeID: Integer;
begin
  AStr := MSG;
  //1. get IP
  RIP := GetPartMsgValue(AStr, 'IP');
  //  if RIP = '' then exit;

    //2. get command
  CMD := GetPartMsgValue(AStr, 'CMD');
  if CMD = '' then exit;

  //3. get All PARAMs
  PARAMs := GetPartMsgValue(AStr, 'PARAM');
  iPos := 1;
  I := 0;
  while iPos <= Length(PARAMs) do
  begin
    sTemp := PHExtractSectName(PARAMs, iPos, ';');
    if sTemp = '' then Continue;

    Inc(I);
    SetLength(AsPARAM, I);
    AsPARAM[I - 1] := sTemp;
  end;
  {  I := 0;
    iPos := Pos(';', PARAMs);
    while iPos > 0 do
    begin
      Inc(I);
      SetLength(AsPARAM, I);
      AsPARAM[I - 1] := Copy(PARAMs, 1, iPos - 1);

      PARAMs := Copy(PARAMs, iPos + 1, MaxInt);
      iPos := Pos(';', PARAMs);
    end; // while
    if PARAMs <> '' then
    begin
      Inc(I);
      SetLength(AsPARAM, I);
      AsPARAM[I - 1] := PARAMs;
    end;   }
      //========
  //  LocalIP := Powersock1.LocalIP;
  //  if CompareText(RIP, LocalIP) <> 0 then exit;

    //if is Local IP then  Do command:
  if CompareText(CMD, 'CloseClient') = 0 then
  begin //Close exe
    SetLength(AsPARAM, 2);
    FCount := StrToIntDef(AsPARAM[0], 60);
    ATypeID := StrToIntDef(AsPARAM[1], 0);
    if ATypeID <> 2 then exit;

    if FCount = 0 then
    begin
      RzStatusPane_Print.Caption := '';
      Timer_Stop.Enabled := False;
      Timer_Sock.Enabled := False;
      if ClientSocket.Active then ClientSocket.Close;
      FreeAndNil(FbcManage);
      Application.Terminate;
    end
    else
      Timer_Stop.Enabled := True;
  end
  else if CompareText(CMD, 'ClientShellExecute') = 0 then
  begin //Shell Execute
    SetLength(AsPARAM, 7);
    ATypeID := StrToIntDef(AsPARAM[6], 0);
    if ATypeID <> 2 then exit;
    ShellExecute(StrToIntDef(AsPARAM[0], 0), ConvertStrToPChar(AsPARAM[1]),
      ConvertStrToPChar(AsPARAM[2]),
      ConvertStrToPChar(AsPARAM[3]),
      ConvertStrToPChar(AsPARAM[4]),
      StrToIntDef(AsPARAM[5], 1));
    Application.ProcessMessages;
  end
  else if CompareText(CMD, 'SHOWMESSAGE') = 0 then
  begin // SHOWMESSAGE
    SetLength(AsPARAM, 2);
    ATypeID := StrToIntDef(AsPARAM[1], 0);
    if ATypeID <> 2 then exit;
    RzStatusPane_Print.Font.Style := [fsBold];
    RzStatusPane_Print.Caption := AsPARAM[0];
  end
  else if CompareText(CMD, 'RefreshClientSock') = 0 then
  begin //Refresh Client Sock
    SetLength(AsPARAM, 2);
    if ClientSocket.Active then ClientSocket.Close;
    ClientSocket.Port := StrToIntDef(AsPARAM[0], 2351);
    ClientSocket.Address := AsPARAM[0];
    ClientSocket.Active := True;
  end;
end;

function TfrmMain.GetPartMsgValue(var PartMsg: string;
  Section: string): string;
var
  iPos_Equal, iPos_Semicolon: Integer;
  aName: string;
begin
  result := '';
  iPos_Equal := Pos('=', PartMsg);
  if iPos_Equal > 0 then
    aName := Copy(PartMsg, 1, iPos_Equal - 1)
  else
    exit;
  if CompareText(aName, Section) = 0 then //IP=10.2.1.30;CMD=Close;
  begin
    if CompareText(Section, 'Param') = 0 then
      result := Copy(PartMsg, iPos_Equal + 1, MaxInt)
    else
    begin
      iPos_Semicolon := Pos(';', PartMsg);
      //AStr:=Copy(PartMsg,1,iPos_Semicolon-1);
      if iPos_Semicolon > 0 then
        result := Copy(PartMsg, iPos_Equal + 1, iPos_Semicolon - iPos_Equal - 1)
      else
        result := Copy(PartMsg, iPos_Equal + 1, MaxInt);
      PartMsg := Copy(PartMsg, iPos_Semicolon + 1, MaxInt);
    end;
  end
  else
    exit;
end;

procedure TfrmMain.Timer_StopTimer(Sender: TObject);
begin
  Dec(Fcount);
  if Fcount = 0 then
  begin
    RzStatusPane_Print.Caption := '';
    if ClientSocket.Active then ClientSocket.Close;
    FreeAndNil(FbcManage);
    Application.Terminate;
  end
  else
  begin
    RzStatusPane_Print.Font.Style := [fsBold];
    RzStatusPane_Print.Caption := 'Application will Terminate in ' + IntToStr(Fcount) + ' Seconds,please Save your Data.';
  end;
  Application.ProcessMessages;
end;

procedure TfrmMain.Timer_SockTimer(Sender: TObject);
begin //active the sock
  Timer_Sock.Enabled := False;
  RzGlyphStatus.Color := clBtnFace;
  with FbcManage do
  begin
    if ClientSocket.Active then ClientSocket.Close;
    //    if not Active then
    //    begin
    ClientSocket.Port := StrToIntDef(INI.GetINIValue(cWinSockSection, 'RemotePort', IntToStr(cDefaultRemotePort)),
      cDefaultRemotePort);
    ClientSocket.Address := INI.GetINIValue(cWinSockSection, 'RemoteHost', cDefaultRemoteHost);
    ClientSocket.Active := True;
    //    end;
  end; // with
end;

procedure TfrmMain.FormPaint(Sender: TObject);
begin
  if assigned(frmsplash) then
    FreeAndNil(frmsplash);
end;

procedure TfrmMain.ClientSocket_PrintConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  RzStatusPane_Print.Color := clWhite; // $00DEE2E4;
  //RzStatusPane_Print.Caption := FPrintServerConnected;
  FbcManage.WriteDebugInfo(Self.ClassName, 'ClientSocket_PrintConnect');
end;

procedure TfrmMain.ClientSocket_PrintDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  FbcManage.WriteDebugInfo(Self.ClassName, 'ClientSocket_PrintDisconnect');

  //RzStatusPane_Print.Caption := FPrintServerNotConnected;
  RzStatusPane_Print.Color := clBtnFace;
  //Timer_Print.Enabled := True;
end;

procedure TfrmMain.ClientSocket_PrintError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
  if not Socket.Connected then
    RzStatusPane_Print.Color := clBtnFace;
  //  if ErrorCode<>10055 then
  //Timer_Print.Enabled := True;
  ErrorCode := 0;
end;

procedure TfrmMain.SendEmailTo(AEMail: string; AName: string);
const
  EmailSubj = 'About ERP Report:';
var
  ABody, ASubj, AParam, AppName, AppPath: string;
  procedure AdjustMessageBody(ASearchStr, AReplaceStr: string);
  var
    APos: integer;
  begin
    APos := Pos(ASearchStr, ABody);
    while APos <> 0 do
    begin
      Delete(ABody, APos, Length(ASearchStr));
      Insert(AReplaceStr, ABody, APos);
      APos := Pos(ASearchStr, ABody);
    end;
  end;
begin
  Screen.Cursor := crHourGlass;
  try
    ASubj := EmailSubj;
    ABody := 'Dear ' + AName + ': ' + #13#10#13#10 +
      '  Description:'#13#10#13#10 + 'Best Regards,'#13#10
      + '<Your Name>' + #13#10 + FormatDateTime('yyyy''/''mm''/''dd h:nn:ss', Now);
    AdjustMessageBody('%', '$prc$');
    AdjustMessageBody('$prc$', '%25');
    AdjustMessageBody(#13#10, '%0D%0A');
    AdjustMessageBody('&', '%26');
    AdjustMessageBody(' ', '%20');
    //    ShellExecute(Handle, PChar('OPEN'), PChar('mailto:' + AEMail + '?subject=' +
    //      ASubj + '&body=' + ABody), nil, nil, SW_SHOWMAXIMIZED);
    AParam := 'mailto:' + AEMail + '?subject=' + ASubj + '&body=' + ABody;

    AppPath := PHReadRegister('HKEY_LOCAL_MACHINE', '\SOFTWARE\Lotus\Notes', 'Path');
    AppName := PHReadRegister('HKEY_LOCAL_MACHINE', '\SOFTWARE\Lotus\Notes', 'Name');
    if (AppPath <> '') and (AppName <> '') then
    begin
      AppName := AppPath + AppName;
      ShellExecute(Handle, PChar('OPEN'), PChar(AppName), PChar(AParam), nil, SW_SHOWMAXIMIZED);
    end
    else
      ShellExecute(Handle, PChar('OPEN'), PChar(AParam), nil, nil, SW_SHOWMAXIMIZED);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMain.PeterZhou1Click(Sender: TObject);
begin
  SendEmailTo(PeterEmail, 'Peter');
end;

procedure TfrmMain.CannieLau1Click(Sender: TObject);
begin
  SendEmailTo(CannieEmail, 'Simon');
end;

procedure TfrmMain.JoeWang1Click(Sender: TObject);
begin
  SendEmailTo(JoeEmail, 'Joe');
end;

procedure TfrmMain.PeterSimonJoe1Click(Sender: TObject);
begin
  SendEmailTo(PeterEmail + ',' + CannieEmail + ',' + JoeEmail, 'Peter,Simon,Joe');
end;

procedure TfrmMain.cbtnUserClick(Sender: TObject);
begin
  PHChangeThePassword;
end;

end.

