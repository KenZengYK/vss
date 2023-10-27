unit ufrmDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, ComObj,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxLookAndFeels,
  cxDBLookupComboBox, cxButtons, cxPC, cxRadioGroup, cxCurrencyEdit;

type
  TfrmDialog = class(TForm)
    btnOK: TcxButton;
    btnCancel: TcxButton;
    cxPageControl: TcxPageControl;
    cxTabSheet_Delete: TcxTabSheet;
    Label1: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxTabSheet1: TcxTabSheet;
    Label2: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxTabSheet2: TcxTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxLookupComboBox2: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTextEdit1PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure GetCountNo;
    function SelectCountNoData(var CountNO, CONO: string): boolean;
  public
    { Public declarations }
    procedure SetLanguageStr;
  end;

var
  frmDialog: TfrmDialog;
function DoSelectCountNo(var CountNo: string): boolean;
function DoUpdateCountedQty(var CountedQty: real): boolean;
function DoSelectCountNOData(var CountNO, CONO: string): boolean;

implementation

uses ufrmMain;

{$R *.dfm}

function DoSelectCountNo(var CountNo: string): boolean;
begin
  result := False;
  frmDialog := TfrmDialog.Create(nil);
  with frmDialog do
  begin
    try
      cxPageControl.ActivePageIndex := 0;
      if ShowModal = IDOK then
      begin
        CountNo := cxLookupComboBox1.Text;
        result := CountNo <> '';
      end;
    finally // wrap up
      FreeAndNil(frmDialog);
    end; // try/finally
  end; // with
end;

function DoUpdateCountedQty(var CountedQty: real): boolean;
var
  oldCountedQty: real;
begin
  result := False;
  frmDialog := TfrmDialog.Create(nil);
  with frmDialog do
  begin
    try
      cxPageControl.ActivePageIndex := 1;
      oldCountedQty := CountedQty;
      cxCurrencyEdit1.EditValue := CountedQty;
      if ShowModal = IDOK then
      begin
        CountedQty := cxCurrencyEdit1.EditValue;
        result := (oldCountedQty <> CountedQty);
      end;
    finally // wrap up
      FreeAndNil(frmDialog);
    end; // try/finally
  end; // with
end;

function DoSelectCountNOData(var CountNO, CONO: string): boolean;
begin
  result := False;
  frmDialog := TfrmDialog.Create(nil);
  with frmDialog do
  begin
    try
      GetCountNo;
      cxPageControl.ActivePageIndex := 2;
      if ShowModal = IDOK then
      begin
        result := SelectCountNoData(CountNO, CONO);
      end;
    finally // wrap up
      FreeAndNil(frmDialog);
    end; // try/finally
  end; // with
end;

procedure TfrmDialog.FormCreate(Sender: TObject);
begin
  cxPageControl.HideTabs := True;
end;

procedure TfrmDialog.GetCountNo;
var
  CONO: string;
begin
  CONO := cxTextEdit1.Text;
  Screen.Cursor := crSQLWait;
  try
    with frmMain.ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select distinct ctno54 from ault2f1.inp54 ');
      SQL.Add('where Upper(cono54)=' + QuotedStr(CONO));
      Open;
    end; // with
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

function TfrmDialog.SelectCountNoData(var CountNO, CONO: string): boolean;
begin
  result := False;
  Screen.Cursor := crSQLWait;
  try
    CONO := cxTextEdit1.Text;
    CountNO := cxLookupComboBox2.Text;
    if (CONO = '') or (CountNO = '') then exit;
    result := True;
//select distinct cono58,ctno58,strc58,pnum77,ltno77,sphy80,sunt35
//from ault2f1.inp58,ault2f1.inp77,ault2f1.inp80,ault2f1.inp35
//where cono58=cono77 and ctno58=ctno77 and strc58=strc77 and cono58=cono80 and strc58=strc80
//and pnum77=pnum80 and ltno77=locn80 and cono58=cono35 and pnum77=pnum35 and strc77=strc35
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

procedure TfrmDialog.SetLanguageStr;
begin
  Caption := frmMain.pnl_Title.Caption;
  Label1.Caption := frmMain.GetLanguagesStr(5, 'Please select Count No.  :');
  Label2.Caption := frmMain.GetLanguagesStr(6, 'Please Enter Counted Qty :');
  btnOK.Caption := frmMain.GetLanguagesStr(10, 'OK', True);
  btnCancel.Caption := frmMain.GetLanguagesStr(11, 'Cancel', True);

  Label3.Caption := frmMain.GetLanguagesStr(5, 'Please select Count No.  :');
  Label4.Caption := frmMain.GetLanguagesStr(17, 'Company Code', True);
  Label5.Caption := frmMain.GetLanguagesStr(1, 'Count No.');
end; //

procedure TfrmDialog.FormShow(Sender: TObject);
begin
  SetLanguageStr;
  if cxPageControl.ActivePageIndex = 0 then
  begin
    cxLookupComboBox1.Properties.ListSource := frmMain.DataSource2;
    cxLookupComboBox1.SetFocus;
  end
  else if cxPageControl.ActivePageIndex = 1 then
    cxCurrencyEdit1.SetFocus
  else if cxPageControl.ActivePageIndex = 2 then
  begin
    cxLookupComboBox2.Properties.ListSource := frmMain.dsZphlib;
    cxLookupComboBox2.SetFocus;
  end;
end;

procedure TfrmDialog.cxTextEdit1PropertiesEditValueChanged(
  Sender: TObject);
begin
  GetCountNo;
end;

end.

