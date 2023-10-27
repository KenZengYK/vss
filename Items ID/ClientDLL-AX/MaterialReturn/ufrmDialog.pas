unit ufrmDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtons, cxPC, cxRadioGroup, cxLabel, cxGroupBox,
  cxLookAndFeelPainters;

type
  TfrmDialog = class(TForm)
    btnOK: TcxButton;
    btnCancel: TcxButton;
    cxPageControl: TcxPageControl;
    cxTabSheet_Delete: TcxTabSheet;
    cxTabSheet_Print: TcxTabSheet;
    cxLookupComboBox1: TcxLookupComboBox;
    Label2: TLabel;
    cxRadioButton_All: TcxRadioButton;
    cxRadioButton_One: TcxRadioButton;
    cxLookupComboBox2: TcxLookupComboBox;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxLabel_RETURN_NO: TcxLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    rbDeleteCurr: TcxRadioButton;
    rbDeleteBatch: TcxRadioButton;
    Label1: TLabel;
    Label4: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    procedure cxRadioButton_AllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbDeleteBatchClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetLanguageStr;
  end;

var
  frmDialog: TfrmDialog;
function DoDeleteData(var ABatchNo: string): boolean;
function DoSelectPrintNo(var ABatchNo: string; var bPrintAll: boolean): boolean;
function DoSelectHandHeldNo(var ABatchNo, ACono, AStockRoom: string): boolean;

implementation

uses ufrmMain;

{$R *.dfm}

function DoDeleteData(var ABatchNo: string): boolean;
begin
  result := False;
  frmDialog := TfrmDialog.Create(nil);
  with frmDialog do
  begin
    try
      cxPageControl.ActivePageIndex := 0;
      if ShowModal = IDOK then
      begin
        if rbDeleteCurr.Checked then
        begin
          ABatchNo := '';
          result := True;
        end
        else
        begin
          ABatchNo := Trim(cxLookupComboBox1.Text);
          result := ABatchNo <> '';
        end;
      end;
    finally // wrap up
      FreeAndNil(frmDialog);
    end; // try/finally
  end; // with
end;

function DoSelectPrintNo(var ABatchNo: string; var bPrintAll: boolean): boolean;
begin
  result := False;
  frmDialog := TfrmDialog.Create(nil);
  with frmDialog do
  begin
    try
      cxPageControl.ActivePageIndex := 1;
      if ShowModal = IDOK then
      begin
        bPrintAll := cxRadioButton_All.Checked;
        ABatchNo := cxLookupComboBox2.Text;
        result := (bPrintAll) or (ABatchNo <> '');
      end;
    finally // wrap up
      FreeAndNil(frmDialog);
    end; // try/finally
  end; // with
end;

function DoSelectHandHeldNo(var ABatchNo, ACono, AStockRoom: string): boolean;
begin
  result := False;
  frmDialog := TfrmDialog.Create(nil);
  with frmDialog do
  begin
    try
      cxLabel_RETURN_NO.Caption := frmMain.RETURN_NO;
      cxPageControl.ActivePageIndex := 2;
      if ShowModal = IDOK then
      begin
        if cxRadioButton1.Checked then
          ABatchNo := cxLabel_RETURN_NO.Caption
        else
          ABatchNo := cxLookupComboBox3.Text;
        ACono := cxTextEdit1.Text;
        AStockRoom := cxTextEdit2.Text;
        result := True;
      end;
    finally // wrap up
      FreeAndNil(frmDialog);
    end; // try/finally
  end; // with
end;

procedure TfrmDialog.cxRadioButton_AllClick(Sender: TObject);
begin
  cxLookupComboBox2.Enabled := TcxRadioButton(Sender).Tag = 1;
end;

procedure TfrmDialog.FormCreate(Sender: TObject);
begin
  cxPageControl.HideTabs := True;
  SetLanguageStr;
end;

procedure TfrmDialog.SetLanguageStr;
begin
  Caption := frmMain.pnl_Title.Caption;
  rbDeleteBatch.Caption := frmMain.GetLanguagesStr(33, 'Please select Batch No. for Deletion :');
  rbDeleteCurr.Caption := frmMain.GetLanguagesStr(47, 'Delete Current Record');
  Label2.Caption := frmMain.GetLanguagesStr(34, 'Please select Batch No. for Print :');
  cxRadioButton_All.Caption := frmMain.GetLanguagesStr(35, 'Print All Batch No.');
  cxRadioButton_One.Caption := frmMain.GetLanguagesStr(36, 'Print One');
  btnOK.Caption := frmMain.GetLanguagesStr(37, 'OK');
  btnCancel.Caption := frmMain.GetLanguagesStr(38, 'Cancel');
//  Label3.Caption := frmMain.GetLanguagesStr(42, 'Please select Batch No. for the newly added Record(s):');

  cxGroupBox3.Caption := frmMain.GetLanguagesStr(20, ' Batch No. ');
  cxRadioButton1.Caption := frmMain.GetLanguagesStr(21, 'New Batch No. :');
  cxRadioButton2.Caption := frmMain.GetLanguagesStr(22, 'Exists Batch No.,Please select one :');

  Label1.Caption := frmMain.GetLanguagesStr(17, 'Company', True);
  Label4.Caption := frmMain.GetLanguagesStr(16, 'StockRoom', True);
end; //

procedure TfrmDialog.cxRadioButton1Click(Sender: TObject);
var
  ATag: Integer;
begin
  ATag := TcxRadioButton(Sender).Tag;
  cxLookupComboBox3.Enabled := ATag = 1;
  cxLabel_RETURN_NO.Enabled := ATag = 0;
end;

procedure TfrmDialog.FormShow(Sender: TObject);
begin
  if cxPageControl.ActivePageIndex = 0 then
  begin
    cxLookupComboBox1.Properties.ListSource := frmMain.DataSource2;
    cxLookupComboBox1.SetFocus;
  end
  else if cxPageControl.ActivePageIndex = 1 then
  begin
    cxLookupComboBox2.Properties.ListSource := frmMain.DataSource2;
    cxLookupComboBox2.SetFocus;
  end
  else
  begin
    cxLookupComboBox3.Properties.ListSource := frmMain.DataSource2;
    cxRadioButton1.SetFocus;
  end;
end;

procedure TfrmDialog.rbDeleteBatchClick(Sender: TObject);
begin
  cxLookupComboBox1.Enabled := rbDeleteBatch.Checked;
end;

procedure TfrmDialog.btnOKClick(Sender: TObject);
begin
  case cxPageControl.ActivePageIndex of //
    0:
      begin
        if rbDeleteBatch.Checked and (cxLookupComboBox1.Text = '') then
        begin
          ShowMessage(frmMain.GetLanguagesStr(29, 'Please Select a Batch No.'));
          cxLookupComboBox1.SetFocus;
        end
        else
          ModalResult := mrOK;
      end;
    1:
      begin
        if cxRadioButton_One.Checked and (cxLookupComboBox2.Text = '') then
        begin
          ShowMessage(frmMain.GetLanguagesStr(29, 'Please Select a Batch No.'));
          cxLookupComboBox2.SetFocus;
        end
        else
          ModalResult := mrOK;
      end;
    2:
      begin
        if cxTextEdit1.Text = '' then
        begin
          ShowMessage(frmMain.GetLanguagesStr(46, 'Please Enter COMPANY'));
          cxTextEdit1.SetFocus;
        end
        else if cxTextEdit2.Text = '' then
        begin
          ShowMessage(frmMain.GetLanguagesStr(45, 'Please Enter STOCKROOM'));
          cxTextEdit2.SetFocus;
        end
        else if cxRadioButton2.Checked and (cxLookupComboBox3.Text = '') then
        begin
          ShowMessage(frmMain.GetLanguagesStr(29, 'Please Select a Batch No.'));
          cxLookupComboBox3.SetFocus;
        end
        else
          ModalResult := mrOK;
      end;
  end; // case
end;

end.

