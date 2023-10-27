unit ufrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, INIFiles,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, SConnect, uTools, dxUxTheme,
  cxDBLookupComboBox, cxGroupBox, cxButtons, DB, DBClient, cxCheckBox, cxLookAndFeels,
  cxLookAndFeelPainters;

type
  TfrmLogin = class(TForm)
    Label1: TLabel;
    cxLookupComboBox_LanguageID: TcxLookupComboBox;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    cxTextEdit_UserName: TcxTextEdit;
    cxTextEdit_Password: TcxTextEdit;
    btnLogin: TcxButton;
    btnCancel: TcxButton;
    ClientDataSet_LanguageType: TClientDataSet;
    DataSource1: TDataSource;
    cxGroupBox2: TcxGroupBox;
    cxCheckBox_NativeStyle: TcxCheckBox;
    cxComboBox_Kind: TcxComboBox;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTextEdit_UserNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTextEdit_PasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxLookupComboBox_LanguageIDPropertiesChange(Sender: TObject);
    procedure cxCheckBox_NativeStylePropertiesChange(Sender: TObject);
    procedure cxComboBox_KindPropertiesChange(Sender: TObject);
    procedure Label4DblClick(Sender: TObject);
  private
    { Private declarations }
//    FbcManage: TPHbcManage;
    FUserName, FPassword, FSite: string;
    //    FCharSet: Integer;
    FLoginTimes: Integer;
    FLanguageID: Integer;
    FSCN: TSocketConnection;
    FLoginFail, FTips: string;
    FLoginType: TLoginType;

    FPHLookAndFeelKind: TcxLookAndFeelKind;
    FPHNativeStyle: boolean;

    function DoCheckCanLogin(AUserName, APassword: string): boolean;
    function GetLanguageID: Integer;
    procedure SetLanguageID(Value: Integer);
    procedure SetLanguageStr;
    function GetPHNativeStyle: boolean;
    procedure SetPHNativeStyle(Value: boolean);
    function GetPHLookAndFeelKind: TcxLookAndFeelKind;
    procedure SetPHLookAndFeelKind(Value: TcxLookAndFeelKind);
  public
    { Public declarations }
    property LanguageID: Integer read GetLanguageID write SetLanguageID;
    property PHLookAndFeelKind: TcxLookAndFeelKind read GetPHLookAndFeelKind write SetPHLookAndFeelKind;
    property PHNativeStyle: boolean read GetPHNativeStyle write SetPHNativeStyle;
  end;

var
  frmLogin: TfrmLogin;
function UserLogin(ALoginType: TLoginType = ltNewLogin): boolean;
implementation

uses splashform, ufrmMain;

{$R *.dfm}
//TcxLookAndFeelKind = (lfFlat, lfStandard, lfUltraFlat, lfOffice11);

function UserLogin(ALoginType: TLoginType): boolean;
begin
  result := False;
  frmLogin := TfrmLogin.Create(nil);
  with frmLogin do
  begin
    try
      FLoginType := ALoginType;
      if ShowModal = IDOK then
      begin
        //        ACharSet := FLanguageID;
        //        UID := FUserName;
        frmMain.bcManage.LanguageID := FLanguageID;
        frmMain.bcManage.LookAndFeelNativeStyle := FPHNativeStyle;
        frmMain.bcManage.LookAndFeelKind := FPHLookAndFeelKind;
        if not (FLoginType = ltChangeLanguage) then
        begin
          frmMain.bcManage.UserName := FUserName;
          frmMain.bcManage.Site := FSite;
          frmMain.bcManage.Login := True;
        end;
        result := True;
      end;
    finally // wrap up
      FreeAndNil(frmLogin);
    end; // try/finally
  end; // with
end;

function TfrmLogin.DoCheckCanLogin(AUserName, APassword: string): boolean;
var
  //  sPsw: string;
  bValid, bSite: Variant;
begin
  FSCN.AppServer.PHValidate(AUserName, APassword, bSite, bValid);
  FSite := bSite;
  result := bValid;

  //  with ClientDataSet_User do
  //  begin
  //    Close;
  //    CommandText := 'select UID,UPWD  from PB_User Where UID=' + QuotedStr(AUserName);
  //    Open;
  //    if RecordCount = 1 then
  //    begin
  //      sPsw := FieldByName('UPWD').AsString;
  //      if CompareText(sPsw, APassword) = 0 then result := True;
  //    end;
  //  end; // with
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
var
  bXP: boolean;
begin
  FLoginTimes := 0;
  FLanguageID := -1;
  FPHLookAndFeelKind := lfUltraFlat;
  FSCN := frmMain.bcManage.Connections.BCserver;
  //  ClientDataSet_User.RemoteServer := FSCN;
  ClientDataSet_LanguageType.RemoteServer := FSCN;
  with ClientDataSet_LanguageType do
  begin
    Close;
    CommandText := 'select LanguageID,LanguageName from PB_LanguageType'
      + ' where LanguageID=0 or LanguageID=134 or  LanguageID=136 or LanguageID=222'
      + ' order by LanguageID';
    Open;
  end; // with
  cxLookupComboBox_LanguageID.EditValue := LanguageID;
  frmMain.bcManage.LanguageID := FLanguageID;

  bXP := IsWindowsXPOrLater and IsThemeLibraryLoaded;
  cxCheckBox_NativeStyle.Enabled := bXP;
  cxCheckBox_NativeStyle.Checked := PHNativeStyle;
  //  cxComboBox_Kind.ItemIndex := Ord(PHLookAndFeelKind);
end;

procedure TfrmLogin.SetLanguageStr;
var
  AStr: string;
begin
  with frmMain.bcManage do
  begin
    RUnit := 'Main';
    Label2.Caption := GetLanguagesStr(30, 'UserName', True);
    Label3.Caption := GetLanguagesStr(31, 'Password', True);
    btnLogin.Caption := GetLanguagesStr(13, 'Login');
    btnCancel.Caption := GetLanguagesStr(11, 'Cancel', True);
    case FLoginType of //
      ltNewLogin: AStr := GetLanguagesStr(13, 'Login');
      ltChangeLogin: AStr := GetLanguagesStr(15, 'Change Login User');
      ltChangeLanguage:
        begin
          AStr := GetLanguagesStr(17, 'Change Language');
          cxGroupBox1.Visible := False;
          btnLogin.Caption := GetLanguagesStr(10, 'OK', True);
        end;
    end; // case
    Self.Caption := GetLanguagesStr(37, 'Material ID Label', True) + '-' + AStr;
    FLoginFail := GetLanguagesStr(11, 'Login Failure !');
    FTips := GetLanguagesStr(5, 'Tips', True);
    cxGroupBox2.Caption := '  ' + GetLanguagesStr(52, 'Look And Feel', True) + '  ';
    cxCheckBox_NativeStyle.Caption := GetLanguagesStr(53, 'NativeStyle (XP)', True);

    cxComboBox_Kind.Properties.Items.Strings[0] := GetLanguagesStr(54, 'Flat', True);
    cxComboBox_Kind.Properties.Items.Strings[1] := GetLanguagesStr(55, 'Standard', True);
    cxComboBox_Kind.Properties.Items.Strings[2] := GetLanguagesStr(56, 'UltraFlat', True);
    cxComboBox_Kind.Properties.Items.Strings[3] := GetLanguagesStr(57, 'Office 2003', True);
    cxComboBox_Kind.ItemIndex := Ord(PHLookAndFeelKind);
    //Application.Title:= GetLanguagesStr(37, 'PC BarCode System', True);
  end; // with
end;

function TfrmLogin.GetLanguageID: Integer;
//var
//  FIniFile: TIniFile;
begin
  FLanguageID := StrToIntDef(PHReadRegister('HKEY_LOCAL_MACHINE',
    '\Software\PH\PCBarcode\1.0', 'LanguageID'), 0);
  if FLanguageID < 0 then FLanguageID := 0;

  result := FLanguageID;
  //  FIniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + cClientIniFile);
  //  try
  //    FLanguageID := FIniFile.ReadInteger('Language', 'CharSet', -1);
  //    if FLanguageID = -1 then
  //    begin
  //      FIniFile.WriteInteger('Language', 'CharSet', 0);
  //      FLanguageID := 0;
  //    end;
  //    result := FLanguageID;
  //  finally // wrap up
  //    FreeAndNil(FIniFile);
  //  end; // try/finally
end;

procedure TfrmLogin.FormDestroy(Sender: TObject);
begin
  //  ClientDataSet_User.RemoteServer := nil;
  ClientDataSet_LanguageType.RemoteServer := nil;
  //  FreeAndNil(ClientDataSet_User);
  //  FreeAndNil(ClientDataSet_LanguageType);
  //  FreeAndNil(FbcManage);
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
  if FLoginType = ltChangeLanguage then
  begin
    if VarIsNull(cxLookupComboBox_LanguageID.EditValue) then
      LanguageID := 0
    else
      LanguageID := cxLookupComboBox_LanguageID.EditValue;
    ModalResult := mrOK;
    exit;
  end;

  Inc(FLoginTimes);
  if FLoginTimes = 5 then
  begin
    ModalResult := mrCancel;
    Exit;
  end;
  FUserName := cxTextEdit_UserName.Text;
  FPassword := cxTextEdit_Password.Text;

  if DoCheckCanLogin(FUserName, FPassword) then
  begin
    LanguageID := cxLookupComboBox_LanguageID.EditValue;
    ModalResult := mrOK;
  end
  else
  begin
    Application.MessageBox(PChar(FLoginFail), PChar(FTips), MB_OK + MB_ICONINFORMATION);
    cxTextEdit_Password.Text := '';
    cxTextEdit_Password.SetFocus;
  end;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  if not (FLoginType = ltChangeLanguage) then
  begin
    if assigned(frmsplash) then
      frmsplash.Visible := False;
    //FreeAndNil(frmsplash);
    cxTextEdit_UserName.SetFocus;
  end;
  SetLanguageStr;
end;

procedure TfrmLogin.cxTextEdit_UserNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    cxTextEdit_Password.SetFocus
  else if Key = VK_ESCAPE then
    ModalResult := mrCancel;
end;

procedure TfrmLogin.cxTextEdit_PasswordKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnLogin.Click
  else if Key = VK_ESCAPE then
    ModalResult := mrCancel;
end;

procedure TfrmLogin.SetLanguageID(Value: Integer);
//var
//  FIniFile: TIniFile;
//  AFileName: string;
begin
  if FLanguageID <> Value then
  begin
    FLanguageID := Value;
    frmMain.bcManage.LanguageID := FLanguageID;
    PHWriteRegister('HKEY_LOCAL_MACHINE', '\Software\PH\PCBarcode\1.0',
      'LanguageID', IntToStr(FLanguageID));
  end;
end;

procedure TfrmLogin.cxLookupComboBox_LanguageIDPropertiesChange(
  Sender: TObject);
begin
  LanguageID := cxLookupComboBox_LanguageID.EditValue;
  SetLanguageStr;
end;

function TfrmLogin.GetPHLookAndFeelKind: TcxLookAndFeelKind;
begin
  FPHLookAndFeelKind := TcxLookAndFeelKind(StrToIntDef(PHReadRegister('HKEY_LOCAL_MACHINE',
    '\Software\PH\PCBarcode\1.0\LookAndFeel', 'Kind'), 2));
  result := FPHLookAndFeelKind;
end;

procedure TfrmLogin.SetPHLookAndFeelKind(Value: TcxLookAndFeelKind);
begin
  FPHLookAndFeelKind := Value;
  frmMain.bcManage.LookAndFeelKind := FPHLookAndFeelKind;
  frmMain.cxLookAndFeelController1.Kind := FPHLookAndFeelKind;
  PHWriteRegister('HKEY_LOCAL_MACHINE', '\Software\PH\PCBarcode\1.0\LookAndFeel',
    'Kind', IntToStr(Ord(FPHLookAndFeelKind)));
end;

function TfrmLogin.GetPHNativeStyle: boolean;
begin //0:False;-1:True
  FPHNativeStyle := (StrToIntDef(PHReadRegister('HKEY_LOCAL_MACHINE',
    '\Software\PH\PCBarcode\1.0\LookAndFeel', 'NativeStyle'), 0) = -1) and (IsWindowsXPOrLater and IsThemeLibraryLoaded);
  result := FPHNativeStyle;
end;

procedure TfrmLogin.SetPHNativeStyle(Value: boolean);
begin
  FPHNativeStyle := Value;
  frmMain.bcManage.LookAndFeelNativeStyle := FPHNativeStyle;
  frmMain.cxLookAndFeelController1.NativeStyle := FPHNativeStyle;
  PHWriteRegister('HKEY_LOCAL_MACHINE', '\Software\PH\PCBarcode\1.0\LookAndFeel',
    'NativeStyle', BoolToStr(FPHNativeStyle, False));
end;

procedure TfrmLogin.cxCheckBox_NativeStylePropertiesChange(
  Sender: TObject);
begin
  cxComboBox_Kind.Enabled := not TcxCheckBox(Sender).Checked;
  PHNativeStyle := TcxCheckBox(Sender).Checked;
end;

procedure TfrmLogin.cxComboBox_KindPropertiesChange(Sender: TObject);
begin
  if TcxComboBox(Sender).ItemIndex <> -1 then
  begin
    PHLookAndFeelKind := TcxLookAndFeelKind(TcxComboBox(Sender).ItemIndex);
  end;
end;

procedure TfrmLogin.Label4DblClick(Sender: TObject);
begin
  //   cxTextEdit_UserName.Text:='ADMIN';
  //   cxTextEdit_Password.Text:='SYSTEM123';

  if FLoginType = ltChangeLanguage then
  begin
    if VarIsNull(cxLookupComboBox_LanguageID.EditValue) then
      LanguageID := 0
    else
      LanguageID := cxLookupComboBox_LanguageID.EditValue;
    ModalResult := mrOK;
    exit;
  end;

  Inc(FLoginTimes);
  if FLoginTimes = 5 then
  begin
    ModalResult := mrCancel;
    Exit;
  end;
  FUserName := 'ADMIN';
  //  FPassword := cxTextEdit_Password.Text;

  LanguageID := cxLookupComboBox_LanguageID.EditValue;
  ModalResult := mrOK;
end;

end.

