unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxLookAndFeels,
  cxContainer, cxEdit, cxTextEdit, cxStyles, cxGroupBox, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, cxRadioGroup, cxPC, cxDBEdit, cxLookAndFeelPainters,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData;
const
  cPBSideProgram = 'PCBarCode';

type
  TfrmMain = class(TForm)
    ADOConnection1: TADOConnection;
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1Level4: TcxGridLevel;
    cxGrid1Level5: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView4: TcxGridDBTableView;
    cxGrid1DBTableView5: TcxGridDBTableView;
    ADOQuery_Module: TADOQuery;
    ADOQuery_Functions: TADOQuery;
    ADOQuery_ModuleFunc: TADOQuery;
    ADOQuery_Power: TADOQuery;
    ADOQuery_User: TADOQuery;
    dsModule: TDataSource;
    dsFunctions: TDataSource;
    dsModuleFunc: TDataSource;
    dsPower: TDataSource;
    dsUser: TDataSource;
    btnOpen: TcxButton;
    btnExit: TcxButton;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxGrid1DBTableView1MID: TcxGridDBColumn;
    cxGrid1DBTableView1MName: TcxGridDBColumn;
    cxGrid1DBTableView2FID: TcxGridDBColumn;
    cxGrid1DBTableView2FName: TcxGridDBColumn;
    cxGrid1DBTableView3RID: TcxGridDBColumn;
    cxGrid1DBTableView3MID: TcxGridDBColumn;
    cxGrid1DBTableView3FID: TcxGridDBColumn;
    cxGrid1DBTableView4UID: TcxGridDBColumn;
    cxGrid1DBTableView4RID: TcxGridDBColumn;
    cxGrid1DBTableView4Enable: TcxGridDBColumn;
    cxGrid1DBTableView5UID: TcxGridDBColumn;
    cxGrid1DBTableView5UPWD: TcxGridDBColumn;
    cxGrid1DBTableView5SITE: TcxGridDBColumn;
    cxGrid1DBTableView5IsAdmin: TcxGridDBColumn;
    cxGrid1DBTableView5Remark: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ADOQuery_Temp: TADOQuery;
    cxGrid1DBTableView4MID: TcxGridDBColumn;
    cxGrid1DBTableView4FID: TcxGridDBColumn;
    btnClose: TcxButton;
    btnRefresh: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label1: TLabel;
    text_Psw: TcxTextEdit;
    btnUpdatePsw: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxLookupComboBox1: TcxLookupComboBox;
    rbAll_Module: TcxRadioButton;
    rbOneModule: TcxRadioButton;
    btnInsertMF: TcxButton;
    cxLookupComboBox_UID: TcxLookupComboBox;
    Label3: TLabel;
    cxGroupBox1: TcxGroupBox;
    rbAllMF_Enable: TcxRadioButton;
    rbOneMF_Enable: TcxRadioButton;
    cxLookupComboBox3: TcxLookupComboBox;
    btnEnablePower: TcxButton;
    btnDisablePower: TcxButton;
    dsMID: TDataSource;
    ADOQuery_MID: TADOQuery;
    ADOQuery_SideUserModule: TADOQuery;
    dsSideUserModule: TDataSource;
    ADOQuery_SideModule: TADOQuery;
    dsSideModule: TDataSource;
    cxGrid1Level6: TcxGridLevel;
    cxGrid1Level7: TcxGridLevel;
    cxGrid1DBTableView6: TcxGridDBTableView;
    cxGrid1DBTableView7: TcxGridDBTableView;
    cxGrid1DBTableView6UID: TcxGridDBColumn;
    cxGrid1DBTableView6ModuleID: TcxGridDBColumn;
    cxGrid1DBTableView7ModuleID: TcxGridDBColumn;
    cxGrid1DBTableView7ModuleName: TcxGridDBColumn;
    cxGrid1DBTableView6ModuleName: TcxGridDBColumn;
    ADOQuery_BarcodeUser: TADOQuery;
    dsBarcodeUser: TDataSource;
    procedure btnExitClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure ADOQuery_UserAfterScroll(DataSet: TDataSet);
    procedure cxGrid1ActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
    procedure cxGrid1DBTableView4MIDGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGrid1DBTableView4FIDGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure btnUpdatePswClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure rbAll_ModuleClick(Sender: TObject);
    procedure btnInsertMFClick(Sender: TObject);
    procedure rbAllMF_EnableClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEnablePowerClick(Sender: TObject);
    procedure btnDisablePowerClick(Sender: TObject);
    procedure cxLookupComboBox3PropertiesInitPopup(Sender: TObject);
  private
    { Private declarations }
    function GetEncryptPassWord(const UnEncryptKey: string): string;
    function GetUnEncryptPassWord(const EncryptKey: string): string;
    procedure PowerEnable(bEnable: boolean);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.btnOpenClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  ADOQuery_Module.DisableControls;
  ADOQuery_Functions.DisableControls;
  ADOQuery_ModuleFunc.DisableControls;
  ADOQuery_Power.DisableControls;
  ADOQuery_User.DisableControls;
  ADOQuery_SideUserModule.DisableControls;
  ADOQuery_SideModule.DisableControls;
  ADOQuery_User.AfterScroll := nil;
  try
    with ADOQuery_Module do
    begin
      Close;
      SQL.Text := 'select * from PB_Module';
      Open;
    end;
    with ADOQuery_Functions do
    begin
      Close;
      SQL.Text := 'select * from PB_Functions';
      Open;
    end;
    with ADOQuery_ModuleFunc do
    begin
      Close;
      SQL.Text := 'select * from PB_ModuleFunc';
      Open;
    end;
    with ADOQuery_Power do
    begin
      Close;
      SQL.Text := 'select * from PB_Power';
      Open;
    end;
    with ADOQuery_User do
    begin
      Close;
      SQL.Text := 'select * from SideProgram_USER';
      Open;
    end;
    with ADOQuery_SideModule do
    begin
      Close;
      SQL.Text := 'select * from SideProgram_Module';
      Open;
    end; // with
    with ADOQuery_SideUserModule do
    begin
      Close;
      SQL.Text := 'select * from SideProgram_UserModule';
      Open;
    end; // with

  finally // wrap up
    ADOQuery_Module.EnableControls;
    ADOQuery_Functions.EnableControls;
    ADOQuery_ModuleFunc.EnableControls;
    ADOQuery_Power.EnableControls;
    ADOQuery_User.EnableControls;
    ADOQuery_SideUserModule.EnableControls;
    ADOQuery_SideModule.EnableControls;
    ADOQuery_User.AfterScroll := ADOQuery_UserAfterScroll;
    ADOQuery_UserAfterScroll(ADOQuery_User);
    cxPageControl1.Visible := ((cxGrid1.ActiveLevel = cxGrid1Level5) and (ADOQuery_User.Active)) ;
    cxPageControl1.ActivePageIndex := 0;
    Screen.Cursor := crDefault;
  end; // try/finally
end;

procedure TfrmMain.ADOQuery_UserAfterScroll(DataSet: TDataSet);
begin
  text_Psw.Text := GetUnEncryptPassWord(DataSet.FieldByName('UPWD').AsString);
  //  cxGroupBox2.Caption := 'Insert Power to ' + QuotedStr(DataSet.FieldByName('UID').AsString);
end;

function TfrmMain.GetEncryptPassWord(const UnEncryptKey: string): string;
begin
  Result := '';
  with ADOQuery_Temp do
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

function TfrmMain.GetUnEncryptPassWord(const EncryptKey: string): string;
begin
  Result := '';
  with ADOQuery_Temp do
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

procedure TfrmMain.cxGrid1ActiveTabChanged(Sender: TcxCustomGrid;
  ALevel: TcxGridLevel);
begin
  cxPageControl1.Visible := ((ALevel = cxGrid1Level5) and (ADOQuery_User.Active))
    or ((ALevel = cxGrid1Level4) and (ADOQuery_Power.Active));

  if ALevel = cxGrid1Level4 then
  begin
    cxPageControl1.ActivePageIndex := 1;
    with ADOQuery_BarcodeUser do
    begin
      Close;
      SQL.Text := 'select B.* from SideProgram_UserModule A,SideProgram_USER B where A.UID=B.UID AND ModuleID=2';
      Open;
    end; // with
  end
  else if ALevel = cxGrid1Level5 then
    cxPageControl1.ActivePageIndex := 0;

end;

procedure TfrmMain.cxGrid1DBTableView4MIDGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
  begin
    if ADOQuery_Module.Locate('MID', StrToIntDef(AText, -1), []) then
      AText := ADOQuery_Module.FieldByName('MName').AsString;
  end;
end;

procedure TfrmMain.cxGrid1DBTableView4FIDGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if AText <> '' then
  begin
    if ADOQuery_Functions.Locate('FID', StrToIntDef(AText, -1), []) then
      AText := ADOQuery_Functions.FieldByName('FName').AsString;
  end;
end;

procedure TfrmMain.btnUpdatePswClick(Sender: TObject);
var
  APsw: string;
begin
  APsw := text_Psw.Text;
  APsw := GetEncryptPassWord(APsw);

  with ADOQuery_User do
  begin
    if not (State in [dsInsert, dsEdit]) then Edit;
    FieldByName('UPWD').AsString := APsw;
    //    Post;
  end; // with
end;

procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
  ADOQuery_Power.Close;
  ADOQuery_ModuleFunc.Close;
  ADOQuery_Module.Close;
  ADOQuery_Functions.Close;
  ADOQuery_User.Close;
  ADOQuery_SideUserModule.Close;
  ADOQuery_SideModule.Close;
  cxPageControl1.Visible := False;
end;

procedure TfrmMain.btnRefreshClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  ADOQuery_Module.DisableControls;
  ADOQuery_Functions.DisableControls;
  ADOQuery_ModuleFunc.DisableControls;
  ADOQuery_Power.DisableControls;
  ADOQuery_User.DisableControls;
  ADOQuery_SideUserModule.DisableControls;
  ADOQuery_SideModule.DisableControls;
  ADOQuery_User.AfterScroll := nil;
  try
    if cxGrid1.ActiveLevel = cxGrid1Level1 then
      with ADOQuery_Module do
      begin
        Close;
        SQL.Text := 'select * from PB_Module';
        Open;
      end;
    if cxGrid1.ActiveLevel = cxGrid1Level2 then
      with ADOQuery_Functions do
      begin
        Close;
        SQL.Text := 'select * from PB_Functions';
        Open;
      end;
    if cxGrid1.ActiveLevel = cxGrid1Level3 then
      with ADOQuery_ModuleFunc do
      begin
        Close;
        SQL.Text := 'select * from PB_ModuleFunc';
        Open;
      end;
    if cxGrid1.ActiveLevel = cxGrid1Level4 then
      with ADOQuery_Power do
      begin
        Close;
        SQL.Text := 'select * from PB_Power';
        Open;
      end;
    if cxGrid1.ActiveLevel = cxGrid1Level5 then
      with ADOQuery_User do
      begin
        Close;
        SQL.Text := 'select * from SideProgram_USER';
        Open;
      end;
    if cxGrid1.ActiveLevel = cxGrid1Level7 then
      with ADOQuery_SideModule do
      begin
        Close;
        SQL.Text := 'select * from SideProgram_Module';
        Open;
      end; // with
    if cxGrid1.ActiveLevel = cxGrid1Level6 then
      with ADOQuery_SideUserModule do
      begin
        Close;
        SQL.Text := 'select * from SideProgram_UserModule';
        Open;
      end; // with
  finally // wrap up
    ADOQuery_Module.EnableControls;
    ADOQuery_Functions.EnableControls;
    ADOQuery_ModuleFunc.EnableControls;
    ADOQuery_Power.EnableControls;
    ADOQuery_User.EnableControls;
    ADOQuery_SideUserModule.EnableControls;
    ADOQuery_SideModule.EnableControls;
    ADOQuery_User.AfterScroll := ADOQuery_UserAfterScroll;
    if cxGrid1.ActiveLevel = cxGrid1Level5 then
      ADOQuery_UserAfterScroll(ADOQuery_User);
    cxPageControl1.Visible := ((cxGrid1.ActiveLevel = cxGrid1Level5) and (ADOQuery_User.Active))
      or ((cxGrid1.ActiveLevel = cxGrid1Level4) and (ADOQuery_Power.Active));
    Screen.Cursor := crDefault;
  end; // try/finally

end;

procedure TfrmMain.rbAll_ModuleClick(Sender: TObject);
begin
  cxLookupComboBox1.Enabled := rbOneModule.Checked;
end;

procedure TfrmMain.btnInsertMFClick(Sender: TObject);
var
  SavePlace: TBookMark;
  RID, MID: Integer;
  UID: string;
begin
  if cxLookupComboBox_UID.EditText = '' then
  begin
    ShowMessage('Please Select a UID!');
    cxLookupComboBox_UID.SetFocus;
    exit;
  end;
  if (rbOneModule.Checked) and (cxLookupComboBox1.Text = '') then
  begin
    ShowMessage('Please Select a Module!');
    cxLookupComboBox1.SetFocus;
    exit;
  end;
  with ADOQuery_ModuleFunc do
  begin
    Screen.Cursor := crSQLWait;
    DisableControls;
    cxGrid1DBTableView4.BeginUpdate;
    ADOQuery_Power.DisableControls;
    SavePlace := GetBookMark;
    try
      UID := cxLookupComboBox_UID.EditValue;
      if rbOneModule.Checked then
      begin
        MID := cxLookupComboBox1.EditValue;
        Filtered := False;
        Filter := 'MID=' + IntToStr(MID);
        Filtered := True;
      end;
      if RecordCount = 0 then
      begin
        ShowMessage('No Record to Insert!');
        exit;
      end;

      First;
      while not Eof do
      begin
        RID := FieldByName('RID').AsInteger;
        with ADOQuery_Power do
        begin
          if not Locate('UID;RID', VarArrayOf([UID, RID]), []) then
          begin
            Append;
            FieldByName('UID').AsString := UID;
            FieldByName('RID').AsInteger := RID;
            FieldByName('Enable').AsBoolean := False;
            Post;
          end;
        end; // with
        Next;
      end; // while
    finally // wrap up
      Filtered := False;
      Filter := '';
      GotoBookMark(SavePlace);
      FreeBookMark(SavePlace);
      EnableControls;
      ADOQuery_Power.EnableControls;
      cxGrid1DBTableView4.EndUpdate;
      Screen.Cursor := crDefault;
    end; // try/finally
  end; // with
end;

procedure TfrmMain.rbAllMF_EnableClick(Sender: TObject);
begin
  cxLookupComboBox3.Enabled := rbOneMF_Enable.Checked;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  cxPageControl1.HideTabs := True;
end;

procedure TfrmMain.PowerEnable(bEnable: boolean);
var
  MID: Integer;
  UID: string;
begin
  if cxLookupComboBox_UID.EditText = '' then
  begin
    ShowMessage('Please Select a UID!');
    cxLookupComboBox_UID.SetFocus;
    exit;
  end;
  if (rbOneMF_Enable.Checked) and (cxLookupComboBox3.Text = '') then
  begin
    ShowMessage('Please Select a Module!');
    cxLookupComboBox3.SetFocus;
    exit;
  end;
  with ADOQuery_Power do
  begin
    Screen.Cursor := crSQLWait;
    Close;
    try
      UID := cxLookupComboBox_UID.EditValue;
      with ADOQuery_Temp do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Update PB_Power set Enable=' + IntToStr(Ord(bEnable)));
        SQL.Add('where UID=' + QuotedStr(UID));
        if rbOneMF_Enable.Checked then
        begin
          MID := cxLookupComboBox3.EditValue;
          SQL.Add('and (RID in (Select RID from PB_ModuleFunc where MID=' + IntToStr(MID) + '))');
        end;
        ExecSQL;
      end; // with
    finally // wrap up
      Open;
      Screen.Cursor := crDefault;
    end; // try/finally
  end; // with
end;

procedure TfrmMain.btnEnablePowerClick(Sender: TObject);
begin
  PowerEnable(True);
end;

procedure TfrmMain.btnDisablePowerClick(Sender: TObject);
begin
  PowerEnable(False);
end;

procedure TfrmMain.cxLookupComboBox3PropertiesInitPopup(Sender: TObject);
var
  UID: string;
begin
  if cxLookupComboBox_UID.EditText = '' then
  begin
    ShowMessage('Please Select a UID!');
    cxLookupComboBox_UID.SetFocus;
    exit;
  end;
  UID := cxLookupComboBox_UID.EditValue;
  with ADOQuery_MID do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select distinct b.MID,b.MName from PB_Power a ,PB_Module b,PB_ModuleFunc c');
    SQL.Add('where b.MID=c.MID and c.RID=a.RID and a.UID=' + QuotedStr(UID));
    Open;
  end; // with
end;

end.

