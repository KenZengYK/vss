unit ufrmDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, ComObj,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtons, cxPC, cxRadioGroup, cxSpinEdit, cxCheckBox,
  DB, cxLookAndFeelPainters;

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
    cxComboBox1: TcxComboBox;
    cxTabSheet2: TcxTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxLookupComboBox2: TcxLookupComboBox;
    cxSpinEdit_Copies: TcxSpinEdit;
    Label6: TLabel;
    cxCheckBox_CollateCopies: TcxCheckBox;
    DataSource1: TDataSource;
    teHDO: TcxTextEdit;
    rbInput: TcxRadioButton;
    rbERP: TcxRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxLookupComboBox2PropertiesInitPopup(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure rbInputClick(Sender: TObject);
  private
    { Private declarations }
    FCONO: string;
    procedure _GetBarcodePrinters;
    procedure GetHDONo;
    function SelectHDOData(var HDO, CONO: string): boolean;
  public
    { Public declarations }
    procedure SetLanguageStr;
  end;

var
  frmDialog: TfrmDialog;
function DoDeleteData(var AHDONo: string): boolean;
function DoSelectPrinter(var bcPrinter: string; var iCopies: Integer; var bCollateCopies: boolean): boolean;
function DoSelectHDOData(var HDO, CONO: string): boolean;

implementation

uses ufrmMain, uTools;

{$R *.dfm}

function DoDeleteData(var AHDONo: string): boolean;
begin
  result := False;
  frmDialog := TfrmDialog.Create(nil);
  with frmDialog do
  begin
    try
      cxPageControl.ActivePageIndex := 0;
      if ShowModal = IDOK then
      begin
        AHDONo := cxLookupComboBox1.Text;
        result := AHDONo <> '';
      end;
    finally // wrap up
      FreeAndNil(frmDialog);
    end; // try/finally
  end; // with
end;

function DoSelectPrinter(var bcPrinter: string; var iCopies: Integer; var bCollateCopies: boolean): boolean;
begin
  result := False;
  frmDialog := TfrmDialog.Create(nil);
  with frmDialog do
  begin
    try
      btnOK.ModalResult := mrNone;
      btnOK.OnClick := btnOKClick;
      cxPageControl.ActivePageIndex := 1;
      _GetBarcodePrinters;
      if ShowModal = IDOK then
      begin
        bcPrinter := cxComboBox1.Text;
        iCopies := cxSpinEdit_Copies.Value;
        bCollateCopies := cxCheckBox_CollateCopies.Checked;
        result := (cxComboBox1.ItemIndex <> -1);
      end;
    finally // wrap up
      FreeAndNil(frmDialog);
    end; // try/finally
  end; // with
end;

function DoSelectHDOData(var HDO, CONO: string): boolean;
begin
  result := False;
  frmDialog := TfrmDialog.Create(nil);
  with frmDialog do
  begin
    try
      //GetHDONo;
      cxPageControl.ActivePageIndex := 2;
      if ShowModal = IDOK then
      begin
        result := SelectHDOData(HDO, CONO);
      end;
    finally // wrap up
      FreeAndNil(frmDialog);
    end; // try/finally
  end; // with
end;

procedure TfrmDialog._GetBarcodePrinters;
var
  sPrinterName: Variant;
  I: Integer;
  AList: TarS;
begin
  if not GetBarcodePrintersFromINI(AList) then exit;
  for I := 0 to High(AList) do
  begin
    sPrinterName := AList[I];
    cxComboBox1.Properties.Items.AddObject(sPrinterName, nil);
  end;
  if Length(AList) > 0 then
    cxComboBox1.ItemIndex := 0;
end;

procedure TfrmDialog.FormCreate(Sender: TObject);
begin
  cxPageControl.HideTabs := True;
  FCONO := '';
  btnOK.OnClick := nil;
end;

procedure TfrmDialog.SetLanguageStr;
begin
  Caption := frmMain.pnl_Title.Caption;
  Label1.Caption := frmMain.GetLanguagesStr(9, 'Please select HDO Number for Deletion :');
  Label2.Caption := frmMain.GetLanguagesStr(10, 'Please select Barcode Printer:');
  if cxPageControl.ActivePageIndex = 0 then
    btnOK.Caption := frmMain.GetLanguagesStr(10, 'OK', True)
  else if cxPageControl.ActivePageIndex = 1 then
    btnOK.Caption := frmMain.GetLanguagesStr(1, 'Print Label')
  else if cxPageControl.ActivePageIndex = 2 then
    btnOK.Caption := frmMain.GetLanguagesStr(10, 'OK', True);
  btnCancel.Caption := frmMain.GetLanguagesStr(11, 'Cancel', True);
  cxCheckBox_CollateCopies.Caption := frmMain.GetLanguagesStr(74, 'Collate Copies', True);

  Label3.Caption := frmMain.GetLanguagesStr(12, 'Please Select :');
  Label4.Caption := frmMain.GetLanguagesStr(17, 'Company Code', True);
  Label5.Caption := frmMain.GetLanguagesStr(2, 'HDO Number');
  Label6.Caption := frmMain.GetLanguagesStr(5, 'Copies');
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
    cxComboBox1.SetFocus
  else if cxPageControl.ActivePageIndex = 2 then
  begin
    //cxLookupComboBox2.Properties.ListSource := frmMain.dsADO;
    //cxLookupComboBox2.SetFocus;
    teHDO.SetFocus;
  end;
end;

procedure TfrmDialog.GetHDONo;
var
  ACONO: string;
begin
  ACONO := cxTextEdit1.Text;
  if FCONO = ACONO then exit;

  FCONO := ACONO;
  Screen.Cursor := crSQLWait;
  try
    cxLookupComboBox2.Properties.ListSource := nil;
    DataSource1.DataSet := frmMain.ADOQuery1;
    cxLookupComboBox2.Properties.ListSource := DataSource1;
    with frmMain.ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select distinct trim(ch1t84) as pakl64 from ault4f1.app84 ');
      SQL.Add('where Upper(cono84)=' + QuotedStr(ACONO) + ' and substring(ch1t84,1,3)=''HDO'' ');
      //      SQL.Add('select distinct pakl64 from ault4f1.qtp64 ');
      //      SQL.Add('where Upper(cono64)=' + QuotedStr(CONO));
      Open;
    end; // with
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

function TfrmDialog.SelectHDOData(var HDO, CONO: string): boolean;
begin
  result := False;
  Screen.Cursor := crSQLWait;
  try
    CONO := cxTextEdit1.Text;
    if (rbInput.Checked) then
      HDO := teHDO.Text
    else
      HDO := cxLookupComboBox2.Text;
    if (CONO = '') or (HDO = '') then exit;
    result := True;
    //    with frmMain.ADOQuery1 do
    //    begin
    //      Close;
    //      SQL.Clear;
    //      SQL.Add('select whse65,item65,trin09,oqty65,ruom65,roll65,spc235');
    //      SQL.Add('from ault4f1.qtp65,ault4f1.pmp09,ault2f1.inp35');
    //      SQL.Add('where cono65=cono09 and  ordn65=ordn09 and Line65=Line09 and grno65=grno09 and dltf09<>''D'' ');
    //      SQL.Add('and cono65=cono35 and item65=pnum35 and cono65=' + QuotedStr(CONO) + ' and pakl65=' + QuotedStr(HDO));
    //      Open;
    //      result := RecordCount > 0;
    //    end; // with
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

procedure TfrmDialog.cxLookupComboBox2PropertiesInitPopup(Sender: TObject);
begin
  GetHDONo;
end;

procedure TfrmDialog.btnOKClick(Sender: TObject);
begin
  if cxComboBox1.Text = '' then
  begin
    Application.MessageBox(PChar(frmMain.GetLanguagesStr(10, 'Please select Barcode Printer')),
      PChar(frmMain.GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONINFORMATION);
    if cxComboBox1.CanFocus then cxComboBox1.SetFocus;
  end
  else
    ModalResult := mrOK;
end;

procedure TfrmDialog.rbInputClick(Sender: TObject);
var
  bInput: boolean;
begin
  bInput := rbInput.Checked;
  teHDO.Enabled := bInput;
  cxLookupComboBox2.Enabled := not bInput;

end;

end.

