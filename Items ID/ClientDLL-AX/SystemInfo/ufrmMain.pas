unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmBase, cxStyles, DB, DBClient, cxControls, cxContainer, INIFiles,
  cxEdit, cxGroupBox, StdCtrls, cxMaskEdit, cxSpinEdit, cxDBEdit, uTools,
  cxTextEdit, cxButtons, ExtCtrls, cxLookAndFeels;

type
  TfrmMain = class(TfrmBase)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxGroupBox4: TcxGroupBox;
    cxSpinEdit1: TcxSpinEdit;
    Label6: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    FHandHeldCom: Integer;
    procedure DoApplyUpdateData(bAdd: boolean);
    function GetHandHeldCom: Integer;
    procedure SetHandHeldCom(Value: Integer);
  public
    { Public declarations }
    property HandHeldCom: Integer read GetHandHeldCom write SetHandHeldCom;
    procedure SetLanguageStr; override;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  SetLanguageStr;
  with ClientDataSet1 do
  begin
    Close;
    CommandText := 'select * from PB_FTPIP';
    Open;
    if RecordCount = 0 then
    begin
      Append;
      HandHeldCom := 1;
      FieldByName('FTPPORT').AsInteger := 21;
    end
    else
    begin
      Edit;
      cxSpinEdit1.Value := HandHeldCom;
    end;
  end; // with
end;

procedure TfrmMain.SetLanguageStr;
begin
  inherited;
  RUnit := 'System Information';
  cxGroupBox1.Caption := GetLanguagesStr(1, 'Global Setting');
  cxGroupBox3.Caption := GetLanguagesStr(2, 'Return Meterial');
  cxGroupBox4.Caption := GetLanguagesStr(3, 'Apply to this PC only');
  Label1.Caption := GetLanguagesStr(4, 'Server Name :');
  Label2.Caption := GetLanguagesStr(5, 'Port (1-65535) :');
  Label3.Caption := GetLanguagesStr(6, 'UserName :');
  Label4.Caption := GetLanguagesStr(7, 'Password :');
  Label5.Caption := GetLanguagesStr(8, 'Next Batch Number :');
  Label6.Caption := GetLanguagesStr(9, 'HandHeld COM Port :');

//  cxGroupBox2.Caption := GetLanguagesStr(1, 'System 21', True);
  cxButton1.Caption := GetLanguagesStr(27, 'Save', True);
  cxButton2.Caption := GetLanguagesStr(11, 'Cancel', True);

  pnl_Title.Caption := GetLanguagesStr(1000 + Self.Tag, RUnit, True);
  Caption := pnl_Title.Caption;
end;

procedure TfrmMain.cxButton1Click(Sender: TObject);
var
  bAdd: boolean;
  bOK: Variant;
begin
  inherited;
  if ClientDataSet1.Modified then
  begin
    bAdd := ClientDataSet1.State in [dsInsert];
    ClientDataSet1.Post;
    if ClientDataSet1.ApplyUpdates(-1) > 0 then
    begin
      DoApplyUpdateData(bAdd);
      SCN.AppServer.RefreshFTP(bOK);

//      ClientDataSet1.First;
//      ClientDataSet1.Edit;
    end
    else
    begin
//      ClientDataSet1.Append;
//      ClientDataSet1.FieldByName('FTPPORT').AsInteger := 21;
    end;
  end;
  HandHeldCom := cxSpinEdit1.Value;
end;

procedure TfrmMain.DoApplyUpdateData(bAdd: boolean);
var
  sSQL: string;
begin
  with ClientDataSet_Temp do
  begin
    close;
    params.clear;
    params.createparam(ftstring, 'FTPIP', ptinput);
    params.createparam(ftInteger, 'FTPPORT', ptinput);
    params.createparam(ftstring, 'FTPUSER', ptinput);
    params.createparam(ftstring, 'FTPPWD', ptinput);
    params.createparam(ftstring, 'NEXT_RETURN_NO', ptinput);

    if bAdd then
    begin
      sSQL := 'Insert into PB_FTPIP (FTPIP,FTPPORT,FTPUSER,FTPPWD,NEXT_RETURN_NO)'
        + ' Values(:FTPIP,:FTPPORT,:FTPUSER,:FTPPWD,:NEXT_RETURN_NO)'
    end
    else
    begin
      sSQL := 'update PB_FTPIP set FTPIP=:FTPIP,FTPPORT=:FTPPORT,'
        + 'FTPUSER=:FTPUSER,FTPPWD=:FTPPWD,NEXT_RETURN_NO=:NEXT_RETURN_NO';
    end;
    commandtext := sSQL;
    Params.ParamByName('FTPIP').AsString := ClientDataSet1.FieldByName('FTPIP').AsString;
    Params.ParamByName('FTPPORT').AsInteger := ClientDataSet1.FieldByName('FTPPORT').AsInteger;
    Params.ParamByName('FTPUSER').AsString := ClientDataSet1.FieldByName('FTPUSER').AsString;
    Params.ParamByName('FTPPWD').AsString := ClientDataSet1.FieldByName('FTPPWD').AsString;
    Params.ParamByName('NEXT_RETURN_NO').AsString := ClientDataSet1.FieldByName('NEXT_RETURN_NO').AsString;
    Execute;
  end;
end;

function TfrmMain.GetHandHeldCom: Integer;
//var
//  FIniFile: TIniFile;
begin
  FHandHeldCom := StrToIntDef(PHReadRegister('HKEY_LOCAL_MACHINE',
    '\Software\PH\PCBarcode\1.0', 'HandHeld COMPort'), 1);
  result := FHandHeldCom;
//  FIniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + cClientIniFile);
//  try
//    FHandHeldCom := FIniFile.ReadInteger('HandHeld', 'COMPort', 1); //HandHeld COM Port
//    result := FHandHeldCom;
//  finally // wrap up
//    FreeAndNil(FIniFile);
//  end; // try/finally
end;

procedure TfrmMain.SetHandHeldCom(Value: Integer);
//var
//  FIniFile: TIniFile;
begin
  if FHandHeldCom <> Value then
  begin
    FHandHeldCom := Value;
    PHWriteRegister('HKEY_LOCAL_MACHINE', '\Software\PH\PCBarcode\1.0',
      'HandHeld COMPort', IntToStr(FHandHeldCom));
    cxSpinEdit1.Value := FHandHeldCom;
//    FIniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + cClientIniFile);
//    try
//      FIniFile.WriteInteger('HandHeld', 'COMPort', FHandHeldCom); //HandHeld COM Port
//      cxSpinEdit1.Value := FHandHeldCom;
//    finally // wrap up
//      FreeAndNil(FIniFile);
//    end; // try/finally
  end;
end;

procedure TfrmMain.cxButton2Click(Sender: TObject);
var
  AState: TDataSetState;
begin
  inherited;
  AState := ClientDataSet1.State;
  ClientDataSet1.Cancel;
  if AState in [dsInsert] then
  begin
    ClientDataSet1.Append;
    ClientDataSet1.FieldByName('FTPPORT').AsInteger := 21;
  end
  else
    ClientDataSet1.Edit;

  if cxSpinEdit1.Value <> FHandHeldCom then
    cxSpinEdit1.Value := FHandHeldCom;
end;

end.

