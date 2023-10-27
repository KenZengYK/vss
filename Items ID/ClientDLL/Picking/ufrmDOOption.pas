unit ufrmDOOption;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxRadioGroup, StdCtrls, cxButtons, cxCheckBox;

type
  TfrmDOOption = class(TForm)
    editIsDO: TcxRadioGroup;
    editSC: TcxCheckBox;
    btnCancel: TcxButton;
    btnOK: TcxButton;
    editUPI: TcxCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDOOption: TfrmDOOption;
function DoDOOption(var isDO, isSC, isUPI: boolean): boolean;

implementation

{$R *.dfm}

function DoDOOption(var isDO, isSC, isUPI: boolean): boolean;
begin
  result := False;
  frmDOOption := TfrmDOOption.Create(nil);
  with frmDOOption do
  begin
    try
      if (isUPI) then
         Caption:='UPI-Option'
      else    Caption:='IDO-Option';

      if ShowModal = IDOK then
      begin
        isDO := editIsDO.ItemIndex = 1;
        isSc := editSC.Checked;
        isUPI:= editUPI.Checked;
        result := true;
      end;
    finally // wrap up
      FreeAndNil(frmDOOption);
    end; // try/finally
  end; // with
end;

end.

