unit lineeff_1formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrmlineeff_1 = class(TForm)
    rb1: TRadioButton;
    rb2: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlineeff_1: Tfrmlineeff_1;

implementation

uses lineeffformu;

{$R *.dfm}

procedure Tfrmlineeff_1.BitBtn1Click(Sender: TObject);
begin
  if rb1.checked then
  frmlineeff.chk1.Checked:=true
  else if rb2.Checked then
  frmlineeff.chk1.Checked:=false;
  frmlineeff.Previewclick;
  frmlineeff_1.Close;
end;

procedure Tfrmlineeff_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmlineeff_1:=nil;
end;

end.
