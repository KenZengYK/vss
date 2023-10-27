unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxGroupBox, DB, ADODB,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, cxButtons,
  cxSpinEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData;

type
  TfrmMain = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    cxGroupBox1: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    btnOpen: TcxButton;
    cxGrid1DBTableView1RUnit: TcxGridDBColumn;
    cxGrid1DBTableView1LanguageID: TcxGridDBColumn;
    cxGrid1DBTableView1RID: TcxGridDBColumn;
    cxGrid1DBTableView1RCaption: TcxGridDBColumn;
    cxLookupComboBox1: TcxLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cxGroupBox2: TcxGroupBox;
    cxSpinEdit1: TcxSpinEdit;
    cxSpinEdit2: TcxSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnInsert: TcxButton;
    btnCopy: TcxButton;
    cxLookupComboBox2: TcxLookupComboBox;
    cxComboBox1: TcxComboBox;
    ADOQuery3: TADOQuery;
    procedure btnOpenClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInsertClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btnOpenClick(Sender: TObject);
begin
  ADOConnection1.Close;
  ADOConnection1.Open;
  with ADOQuery2 do
  begin
    Close;
    SQL.Text := 'select * from PB_LanguageType';
    Open;
  end; // with
  with ADOQuery1 do
  begin
    Close;
    SQL.Text := 'select * from PB_Language';
    Open;
  end; // with
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOConnection1.Close;
  with ADOQuery2 do
  begin
    Close;
  end; // with
  with ADOQuery1 do
  begin
    Close;
  end; // with
end;

procedure TfrmMain.btnInsertClick(Sender: TObject);
var
  I: Integer;
  RUnit: string;
  LanguageID, FromRID, ToRID: Integer;
begin
  RUnit := cxComboBox1.Text;
  if RUnit = '' then exit;
  if VarIsNull(cxLookupComboBox1.EditValue) then exit;
  LanguageID := cxLookupComboBox1.EditValue;
  FromRID := cxSpinEdit1.Value;
  ToRID := cxSpinEdit2.Value;
  if ADOQuery1.State in [dsInsert, dsEdit] then ADOQuery1.Post;

  for I := FromRID to ToRID do // Iterate
  begin
    if not ADOQuery1.Locate('RUnit;LanguageID;RID', VarArrayOf([RUnit, LanguageID, I]), []) then
    begin
      ADOQuery1.Append;
      ADOQuery1.FieldByName('RUnit').AsString := RUnit;
      ADOQuery1.FieldByName('LanguageID').AsInteger := LanguageID;
      ADOQuery1.FieldByName('RID').AsInteger := I;
      ADOQuery1.Post;
    end;
     //ADOQuery1.FieldByName('RCaption').AsString:=;
  end; // for
end;

procedure TfrmMain.btnCopyClick(Sender: TObject);
var
  I: Integer;
  RUnit: string;
  LanguageID, FromRID, ToRID, CopyToLanguageID: Integer;
begin
  RUnit := UpperCase(cxComboBox1.Text);
  if RUnit = '' then exit;
  if VarIsNull(cxLookupComboBox1.EditValue) then exit;
  LanguageID := cxLookupComboBox1.EditValue;
  FromRID := cxSpinEdit1.Value;
  ToRID := cxSpinEdit2.Value;
  if VarIsNull(cxLookupComboBox2.EditValue) then exit;
  CopyToLanguageID := cxLookupComboBox2.EditValue;
  if ADOQuery1.State in [dsInsert, dsEdit] then ADOQuery1.Post;
  ADOQuery1.Close;
  try
    try
      ADOQuery3.Close;
      ADOQuery3.SQL.Text := 'Insert into PB_Language(RUnit,LanguageID,RID,RCaption)'
        + ' select RUnit,' + IntToStr(CopyToLanguageID) + ',RID,RCaption from PB_Language '
        + ' where Upper(RUnit)=' + QuotedStr(RUnit) + ' and LanguageID=' + IntToStr(LanguageID)
        + ' and RID >=' + IntToStr(FromRID) + ' and RID<=' + IntToStr(ToRID);
      ADOQuery3.ExecSQL;
    except
      on e: Exception do
        ShowMessage(e.Message);
    end; // try/except
  finally // wrap up
    ADOQuery1.Open;
  end; // try/finally
end;

end.

