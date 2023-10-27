unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmBase, cxStyles, DB, DBClient, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxEdit, cxGroupBox, StdCtrls,
  cxButtons, ExtCtrls, cxMemo, cxDBEdit, cxTextEdit, cxCheckBox,
  cxMaskEdit, cxDropDownEdit, cxLookAndFeels;

type
  TfrmMain = class(TfrmBase)
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1UID: TcxGridDBColumn;
    cxGrid1DBTableView1UPWD: TcxGridDBColumn;
    cxGrid1DBTableView1Remark: TcxGridDBColumn;
    cxGrid1DBTableView1UR1: TcxGridDBColumn;
    cxGrid1DBTableView1UR2: TcxGridDBColumn;
    cxGrid1DBTableView1UR3: TcxGridDBColumn;
    cxGrid1DBTableView1UR4: TcxGridDBColumn;
    cxGrid1DBTableView1UR5: TcxGridDBColumn;
    cxGrid1DBTableView1UR6: TcxGridDBColumn;
    cxGrid1DBTableView1UR7: TcxGridDBColumn;
    cxGrid1DBTableView1UR8: TcxGridDBColumn;
    cxGrid1DBTableView1UR9: TcxGridDBColumn;
    cxGrid1DBTableView1UR10: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxGroupBox2: TcxGroupBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    btnSelectAll: TcxButton;
    btnSelectNone: TcxButton;
    Label4: TLabel;
    cxTextEdit_Confirm: TcxTextEdit;
    cxGroupBox3: TcxGroupBox;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    btnDelete: TcxButton;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    cxTextEdit_Psw: TcxTextEdit;
    cxGrid1DBTableView1Site: TcxGridDBColumn;
    Label5: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnSelectNoneClick(Sender: TObject);
  private
    { Private declarations }
    FUID: string;
    procedure UpdateDBState;
    procedure DoApplyUpdateData(bAdd: boolean);
    procedure DoSelectPower(bSelect: boolean);

    function GetReadOnlyAll: Boolean;
    procedure SetReadOnlyAll(const Value: Boolean);

    function ChangePassword(Psw: string): boolean;
    function GetUserPassword(Psw: string): string;
  public
    { Public declarations }
    property ReadOnlyAll: Boolean read GetReadOnlyAll write SetReadOnlyAll;
    procedure SetLanguageStr; override;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.UpdateDBState;
begin
  with ClientDataSet1 do
  begin
    btnAdd.Enabled := (State = dsBrowse);
    btnEdit.Enabled := (State in [dsBrowse]) and (RecordCount > 0);
    btnDelete.Enabled := (State in [dsBrowse, dsInActive]) and (not IsEmpty);
    btnSave.Enabled := State in [dsInsert, dsEdit];
    btnCancel.Enabled := State in [dsInsert, dsEdit];
  end; // with

end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  SetLanguageStr;
  with ClientDataSet1 do
  begin
    Close;
    CommandText := 'select * from PB_USER';
    Open;
  end; // with
  UpdateDBState;
  ReadOnlyAll := True;
end;

procedure TfrmMain.SetLanguageStr;
begin
  inherited;
  RUnit := 'System Information';
  cxGrid1DBTableView1Remark.Caption := GetLanguagesStr(10, 'Remark');
  Label3.Caption := GetLanguagesStr(10, 'Remark');
  btnSelectAll.Caption := GetLanguagesStr(11, 'Select All');
  btnSelectNone.Caption := GetLanguagesStr(12, 'Select None');
  cxGroupBox2.Caption := GetLanguagesStr(13, 'Power');
  cxDBCheckBox6.Caption := GetLanguagesStr(14, 'Administrator User');
  cxDBCheckBox1.Caption := GetLanguagesStr(15, 'Label Printing User');
  cxDBCheckBox2.Caption := GetLanguagesStr(16, 'Return Meterial User');
  cxDBCheckBox3.Caption := GetLanguagesStr(17, 'Picking&GatePass User');
  cxDBCheckBox5.Caption := GetLanguagesStr(18, 'Stock Take User');
  Label5.Caption := GetLanguagesStr(19, 'Site');
  cxGrid1DBTableView1Site.Caption := Label5.Caption;

  cxGrid1DBTableView1UID.Caption := GetLanguagesStr(30, 'UserName', True);
  Label1.Caption := GetLanguagesStr(30, 'UserName', True);
  Label2.Caption := GetLanguagesStr(31, 'Password', True);
  Label4.Caption := GetLanguagesStr(32, 'Confirm Password', True);
  btnAdd.Caption := GetLanguagesStr(28, 'Add', True);
  btnEdit.Caption := GetLanguagesStr(29, 'Modify', True);
  btnDelete.Caption := GetLanguagesStr(2, 'Delete', True);
  btnSave.Caption := GetLanguagesStr(27, 'Save', True);
  btnCancel.Caption := GetLanguagesStr(11, 'Cancel', True);

  pnl_Title.Caption  :=  GetLanguagesStr(1000 +Self.Tag, RUnit, True) ;
  Caption := pnl_Title.Caption;
end;

function TfrmMain.GetReadOnlyAll: Boolean;
begin
  Result := not (ClientDataSet1.State in [dsEdit, dsInsert]);
end;

procedure TfrmMain.SetReadOnlyAll(const Value: Boolean);
//var
//  I: Integer;
begin
  cxGrid1.Enabled := Value;

//  for I := 0 to cxGroupBox2.ControlCount - 1 do    // Iterate
//  begin
//     cxGroupBox2.Controls[I].Enabled:= not Value;
//  end;    // for
//  for I := 0 to cxGroupBox1.ControlCount - 1 do    // Iterate
//  begin
//     cxGroupBox1.Controls[I].Enabled:= not Value;
//  end;    // for
  cxGroupBox1.Enabled := not Value;
end;

procedure TfrmMain.btnAddClick(Sender: TObject);
begin
  inherited;
  with ClientDataSet1 do
  begin
    Append;
    FieldByName('UR1').AsBoolean := False;
    FieldByName('UR2').AsBoolean := False;
    FieldByName('UR3').AsBoolean := False;
    FieldByName('UR4').AsBoolean := False;
    FieldByName('UR5').AsBoolean := False;
    FieldByName('UR6').AsBoolean := False;
    FieldByName('UR7').AsBoolean := False;
    FieldByName('UR8').AsBoolean := False;
    FieldByName('UR9').AsBoolean := False;
    FieldByName('UR10').AsBoolean := False;
    cxTextEdit_Psw.Text := '';
    cxTextEdit_Confirm.Text := '';
  end; // with
  UpdateDBState;
  ReadOnlyAll := False;
end;

procedure TfrmMain.btnEditClick(Sender: TObject);
var
  aPassword: Variant;
begin
  inherited;
  ClientDataSet1.Edit;
  FUID := ClientDataSet1.FieldByName('UID').AsString;
  aPassword := ClientDataSet1.FieldByName('UPWD').AsString;
  SCN.AppServer.PHGetUnEncryptPsw(aPassword);
  cxTextEdit_Psw.Text := VarToStr(aPassword);
  cxTextEdit_Confirm.Text := cxTextEdit_Psw.Text;

  UpdateDBState;
  ReadOnlyAll := False;
end;

procedure TfrmMain.btnDeleteClick(Sender: TObject);
var
  AUID: string;
begin
  inherited;
  if (ClientDataSet1.RecordCount = 0) or (ClientDataSet1.IsEmpty) then Exit;
  AUID := ClientDataSet1.FieldByName('UID').AsString;
  if Application.MessageBox(PChar(GetLanguagesStr(35, 'Can you sure to delete this Record?', True)),
    PChar(GetLanguagesStr(9, 'Question', True)), MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    try
      try
        ClientDataSet1.Delete;
      except
      end; // try/except
    finally // wrap up
      with ClientDataSet_Temp do
      begin
        Close;
        CommandText := 'delete from PB_USER where UID=' + QuotedStr(AUID);
        Execute;
      end; // with
      cxTextEdit_Psw.Text := '';
      cxTextEdit_Confirm.Text := '';
    end; // try/finally
  end;
end;

procedure TfrmMain.btnSaveClick(Sender: TObject);
var
  bAdd: boolean;
  UPWD1, UPWD2: string;
  aPassword: Variant;
begin
  inherited;
  bAdd := ClientDataSet1.State in [dsInsert];
  if bAdd then FUID := ClientDataSet1.FieldByName('UID').AsString;
  UPWD1 := cxTextEdit_Psw.Text; // ClientDataSet1.FieldByName('UPWD').AsString;
  UPWD2 := cxTextEdit_Confirm.Text;
  if CompareStr(UPWD1, UPWD2) <> 0 then
  begin
    Application.MessageBox(PChar(GetLanguagesStr(36, 'the Passwords are not identical.', True)),
      PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONINFORMATION);
    cxTextEdit_Confirm.SelectAll;
    cxTextEdit_Confirm.SetFocus;
    exit;
  end;
  if ClientDataSet1.State in [dsEdit, dsInsert] then
  begin
    aPassword := UPWD1;
    SCN.AppServer.PHGetEncryptPsw(aPassword);
    ClientDataSet1.FieldByName('UPWD').AsString := VarToStr(aPassword);
    ClientDataSet1.Post;
    if ClientDataSet1.ApplyUpdates(-1) > 0 then
    begin
      DoApplyUpdateData(bAdd);
    end;
  end;
  cxTextEdit_Psw.Text := '';
  cxTextEdit_Confirm.Text := '';
  UpdateDBState;
  ReadOnlyAll := True;
end;

procedure TfrmMain.btnCancelClick(Sender: TObject);
begin
  inherited;
  if ClientDataSet1.State in [dsEdit, dsInsert] then
    ClientDataSet1.Cancel;
  cxTextEdit_Psw.Text := '';
  cxTextEdit_Confirm.Text := '';
  UpdateDBState;
  ReadOnlyAll := True;
end;

procedure TfrmMain.DoApplyUpdateData(bAdd: boolean);
var
  sSQL: string;
begin
  with ClientDataSet_Temp do
  begin
    close;
    params.clear;
    params.createparam(ftstring, 'UID', ptinput);
    params.createparam(ftstring, 'UPWD', ptinput);
    params.createparam(ftMemo, 'REMARK', ptinput);
    params.createparam(ftBoolean, 'UR1', ptinput);
    params.createparam(ftBoolean, 'UR2', ptinput);
    params.createparam(ftBoolean, 'UR3', ptinput);
    params.createparam(ftBoolean, 'UR4', ptinput);
    params.createparam(ftBoolean, 'UR5', ptinput);
    params.createparam(ftBoolean, 'UR6', ptinput);
    params.createparam(ftBoolean, 'UR7', ptinput);
    params.createparam(ftBoolean, 'UR8', ptinput);
    params.createparam(ftBoolean, 'UR9', ptinput);
    params.createparam(ftBoolean, 'UR10', ptinput);

    if bAdd then
    begin
      sSQL := 'Insert into PB_USER (UID,UPWD,REMARK,UR1,UR2,UR3,UR4,UR5,UR6,UR7,UR8,UR9,UR10)'
        + ' Values(:UID,:UPWD,:REMARK,:UR1,:UR2,:UR3,:UR4,:UR5,:UR6,:UR7,:UR8,:UR9,:UR10)'
    end
    else
    begin
      sSQL := 'update PB_USER set UID=:UID ,UPWD=:UPWD ,REMARK=:REMARK,UR1=:UR1 ,UR2=:UR2 ,UR3=:UR3 ,'
        + 'UR4=:UR4 ,UR5=:UR5 ,UR6=:UR6 ,UR7=:UR7 ,UR8=:UR8 ,UR9=:UR9 ,UR10=:UR10'
        + '  Where UID=' + QuotedStr(FUID);
    end;
    commandtext := sSQL;
    Params.ParamByName('UID').AsString := ClientDataSet1.FieldByName('UID').AsString;
    Params.ParamByName('UPWD').AsString := ClientDataSet1.FieldByName('UPWD').AsString;
    Params.ParamByName('REMARK').AsMemo := ClientDataSet1.FieldByName('REMARK').AsString;
    Params.ParamByName('UR1').AsBoolean := ClientDataSet1.FieldByName('UR1').AsBoolean;
    Params.ParamByName('UR2').AsBoolean := ClientDataSet1.FieldByName('UR2').AsBoolean;
    Params.ParamByName('UR3').AsBoolean := ClientDataSet1.FieldByName('UR3').AsBoolean;
    Params.ParamByName('UR4').AsBoolean := ClientDataSet1.FieldByName('UR4').AsBoolean;
    Params.ParamByName('UR5').AsBoolean := ClientDataSet1.FieldByName('UR5').AsBoolean;
    Params.ParamByName('UR6').AsBoolean := ClientDataSet1.FieldByName('UR6').AsBoolean;
    Params.ParamByName('UR7').AsBoolean := ClientDataSet1.FieldByName('UR7').AsBoolean;
    Params.ParamByName('UR8').AsBoolean := ClientDataSet1.FieldByName('UR8').AsBoolean;
    Params.ParamByName('UR9').AsBoolean := ClientDataSet1.FieldByName('UR9').AsBoolean;
    Params.ParamByName('UR10').AsBoolean := ClientDataSet1.FieldByName('UR10').AsBoolean;
    Execute;
  end;
end;

procedure TfrmMain.DoSelectPower(bSelect: boolean);
begin
  with ClientDataSet1 do
  begin
    if not (State in [dsInsert, dsEdit]) then Edit;
    FieldByName('UR1').AsBoolean := bSelect;
    FieldByName('UR2').AsBoolean := bSelect;
    FieldByName('UR3').AsBoolean := bSelect;
    FieldByName('UR4').AsBoolean := bSelect;
    FieldByName('UR5').AsBoolean := bSelect;
    FieldByName('UR6').AsBoolean := bSelect;
    FieldByName('UR7').AsBoolean := bSelect;
    FieldByName('UR8').AsBoolean := bSelect;
    FieldByName('UR9').AsBoolean := bSelect;
    FieldByName('UR10').AsBoolean := bSelect;
  end; // with
end;

procedure TfrmMain.btnSelectAllClick(Sender: TObject);
begin
  inherited;
  DoSelectPower(True);
end;

procedure TfrmMain.btnSelectNoneClick(Sender: TObject);
begin
  inherited;
  DoSelectPower(False);
end;

function TfrmMain.GetUserPassword(Psw: string): string;
begin

end;

function TfrmMain.ChangePassword(Psw: string): boolean;
var
  bValid: Variant;
begin
  SCN.AppServer.PHChangePassword(FUID, Psw, bValid);
  result := bValid;
end;

end.

