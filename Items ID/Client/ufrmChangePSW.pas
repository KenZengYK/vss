unit ufrmChangePSW;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, SConnect,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls, cxButtons;

type
  TfrmChangePSW = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    editOldPsw: TcxTextEdit;
    editNewPsw: TcxTextEdit;
    editConfirmNewPsw: TcxTextEdit;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure editOldPswKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editNewPswKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editConfirmNewPswKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FSCN: TSocketConnection;
    FTips, FError: string;
    procedure SetLanguageStr;
    function DoCheckCanLogin(AUserName, APassword: string): boolean;
  public
    { Public declarations }
  end;

var
  frmChangePSW: TfrmChangePSW;
  
function PHChangeThePassword: boolean;

implementation

uses ufrmMain;

{$R *.dfm}

function PHChangeThePassword: boolean;
begin
  result := False;
  frmChangePSW := TfrmChangePSW.Create(nil);
  try
    with frmChangePSW do
    begin
      ShowModal;
    end; // with
  finally // wrap up
    FreeAndNil(frmChangePSW);
  end; // try/finally
end;

procedure TfrmChangePSW.SetLanguageStr;
begin
  with frmMain.bcManage do
  begin
    RUnit := 'Main';
    Caption := GetLanguagesStr(16, 'Change Password');

    Label1.Caption := GetLanguagesStr(8, 'Old Password');
    Label2.Caption := GetLanguagesStr(9, 'New Password');
    Label3.Caption := GetLanguagesStr(10, 'Confirm New Password');

    btnOK.Caption := GetLanguagesStr(10, 'OK', True);
    btnCancel.Caption := GetLanguagesStr(11, 'Cancel', True);
    FTips := GetLanguagesStr(5, 'Tips', True);
    FError := GetLanguagesStr(76, 'Error', True);
  end; // with
end;

procedure TfrmChangePSW.FormShow(Sender: TObject);
begin
  FSCN := frmMain.bcManage.Connections.BCserver;
  SetLanguageStr;
end;

procedure TfrmChangePSW.btnOKClick(Sender: TObject);
var
  AOldPsw, ANewPsw, AConfirmPsw: string;
  bValid: Variant;
begin
  AOldPsw := editOldPsw.Text;
  ANewPsw := editNewPsw.Text;
  AConfirmPsw := editConfirmNewPsw.Text;
  if not DoCheckCanLogin(frmMain.bcManage.UserName, editOldPsw.Text) then
  begin
    Application.MessageBox(PChar(Label1.Caption + ' ' + FError + ' !'), PChar(FTips), MB_OK + MB_ICONINFORMATION);
    editOldPsw.SetFocus;
    exit;
  end;
  if ANewPsw <> AConfirmPsw then
  begin
    Application.MessageBox(PChar(Label2.Caption + ' <> ' + Label3.Caption + ' !'), PChar(FTips), MB_OK + MB_ICONINFORMATION);
    editConfirmNewPsw.SetFocus;
    exit;
  end;
  FSCN.AppServer.PHChangePassword(frmMain.bcManage.UserName, ANewPsw, bValid);
  if bValid then
  begin
    Application.MessageBox(PChar(Caption + ' ' + frmMain.bcManage.GetLanguagesStr(66, 'Success', True)), PChar(FTips), MB_OK + MB_ICONINFORMATION);
    ModalResult := mrOK;
  end
  else
  begin
    Application.MessageBox(PChar(Caption + ' ' + frmMain.bcManage.GetLanguagesStr(63, 'Fail', True)), PChar(FTips), MB_OK + MB_ICONINFORMATION);
    editNewPsw.SetFocus;
  end;
end;

function TfrmChangePSW.DoCheckCanLogin(AUserName, APassword: string): boolean;
var
  //  sPsw: string;
  bValid, bSite: Variant;
begin
  FSCN.AppServer.PHValidate(AUserName, APassword, bSite, bValid);
  result := bValid;
end;

procedure TfrmChangePSW.editOldPswKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
     editNewPsw.SetFocus;
end;

procedure TfrmChangePSW.editNewPswKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
     editConfirmNewPsw.SetFocus;
end;

procedure TfrmChangePSW.editConfirmNewPswKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_RETURN then
     btnOKClick(btnOK);
end;

end.

