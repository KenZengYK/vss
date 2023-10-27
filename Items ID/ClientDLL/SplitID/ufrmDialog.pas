unit ufrmDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, ComObj,
  cxDBLookupComboBox, cxButtons, cxPC, cxRadioGroup, cxSpinEdit, cxCheckBox,
  cxLookAndFeelPainters;

type
  TfrmDialog = class(TForm)
    btnOK: TcxButton;
    btnCancel: TcxButton;
    cxPageControl: TcxPageControl;
    cxTabSheet_Delete: TcxTabSheet;
    Label1: TLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxTabSheet1: TcxTabSheet;
    cxRadioButton_All: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxLookupComboBox2_1: TcxLookupComboBox;
    Label2: TLabel;
    cxComboBox1: TcxComboBox;
    cxTabSheet2: TcxTabSheet;
    Label3: TLabel;
    Label6: TLabel;
    cxComboBox_Printer: TcxComboBox;
    cxSpinEdit_Copies: TcxSpinEdit;
    cxCheckBox_CollateCopies: TcxCheckBox;
    cxRadioButton1: TcxRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure cxRadioButton_AllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    FPrintType: Integer;
    procedure AddStatusStr;
    function GetStatusID: string;
    procedure _GetBarcodePrinters;
  public
    { Public declarations }
    procedure SetLanguageStr;
  end;

var
  frmDialog: TfrmDialog;
function DoSelectIDONo(var AIDONo: string): boolean;
function DoSelectPrintNo(var AStatus: string; var APrintType: Integer): boolean;
function DoSelectPrinter(var bcPrinter: string; var iCopies: Integer; var bCollateCopies: boolean): boolean;

implementation

uses ufrmMain, uTools;

{$R *.dfm}

function DoSelectIDONo(var AIDONo: string): boolean;
begin
  result := False;
  frmDialog := TfrmDialog.Create(nil);
  with frmDialog do
  begin
    try
      cxPageControl.ActivePageIndex := 0;
      if ShowModal = IDOK then
      begin
        AIDONo := cxLookupComboBox1.Text;
        result := AIDONo <> '';
      end;
    finally // wrap up
      FreeAndNil(frmDialog);
    end; // try/finally
  end; // with
end;

function DoSelectPrintNo(var AStatus: string; var APrintType: Integer): boolean;
begin
  result := False;
  frmDialog := TfrmDialog.Create(nil);
  with frmDialog do
  begin
    try
      cxPageControl.ActivePageIndex := 1;
      AddStatusStr;
      if ShowModal = IDOK then
      begin
        //bPrintAll := cxRadioButton_All.Checked;
        APrintType := FPrintType;
        AStatus := GetStatusID;
        result := True;
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
      cxPageControl.ActivePageIndex := 2;
      _GetBarcodePrinters;
      if ShowModal = IDOK then
      begin
        bcPrinter := cxComboBox_Printer.Text;
        iCopies := cxSpinEdit_Copies.Value;
        bCollateCopies := cxCheckBox_CollateCopies.Checked;
        result := (cxComboBox_Printer.ItemIndex <> -1);
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
    cxComboBox_Printer.Properties.Items.AddObject(sPrinterName, nil);
  end;
  if Length(AList) > 0 then
    cxComboBox_Printer.ItemIndex := 0;
end;

function TfrmDialog.GetStatusID: string;
begin
  result := '';
  if cxComboBox1.ItemIndex <> -1 then
    result := IntToStr(Integer(cxComboBox1.Properties.Items.Objects[cxComboBox1.ItemIndex]));
end;

procedure TfrmDialog.FormCreate(Sender: TObject);
begin
  cxPageControl.HideTabs := True;
  SetLanguageStr;
  FPrintType := 2;
  btnOK.OnClick:=nil;
end;

procedure TfrmDialog.SetLanguageStr;
begin
  Caption := frmMain.pnl_Title.Caption;
  Label1.Caption := frmMain.GetLanguagesStr(18, 'Please select IDO No. :');
  Label2.Caption := frmMain.GetLanguagesStr(19, 'Please select Print Option:');
  btnOK.Caption := frmMain.GetLanguagesStr(10, 'OK', True);
  btnCancel.Caption := frmMain.GetLanguagesStr(11, 'Cancel', True);

  cxRadioButton_All.Caption := frmMain.GetLanguagesStr(20, 'Items shown in the Grid');
  cxRadioButton2.Caption := frmMain.GetLanguagesStr(77, 'Select a Status:');
  cxCheckBox_CollateCopies.Caption := frmMain.GetLanguagesStr(74, 'Collate Copies', True);

  Label3.Caption := frmMain.GetLanguagesStr(2, 'Please select Barcode Printer:');
  Label6.Caption := frmMain.GetLanguagesStr(81, 'Copies');
end; //

procedure TfrmDialog.cxRadioButton_AllClick(Sender: TObject);
begin
  //cxLookupComboBox2.Enabled := cxRadioButton2.Checked;
  cxComboBox1.Enabled := TcxRadioButton(Sender).Tag = 1;
  FPrintType := TcxRadioButton(Sender).Tag;
end;

procedure TfrmDialog.AddStatusStr;
begin
//
end;

procedure TfrmDialog.FormShow(Sender: TObject);
begin
  if cxPageControl.ActivePageIndex = 0 then
  begin
    cxLookupComboBox1.Properties.ListSource := frmMain.DataSource2;
    cxLookupComboBox1.SetFocus;
  end
  else if cxPageControl.ActivePageIndex = 1 then
    cxRadioButton1.Checked := True
  else if cxPageControl.ActivePageIndex = 2 then
  begin
    Caption := frmMain.GetLanguagesStr(82, 'Reprint Label');
    btnOK.SetFocus;
  end;
end;

procedure TfrmDialog.btnOKClick(Sender: TObject);
begin
  if cxComboBox_Printer.Text = '' then
  begin
    Application.MessageBox(PChar(frmMain.GetLanguagesStr(10, 'Please select Barcode Printer')),
      PChar(frmMain.GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONINFORMATION);
    if cxComboBox_Printer.CanFocus then cxComboBox_Printer.SetFocus;
  end
  else
    ModalResult := mrOK;
end;

end.

