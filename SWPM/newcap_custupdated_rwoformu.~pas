unit newcap_custupdated_rwoformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrmnewcap_custupdated_rwo = class(TForm)
    xh1: TRadioButton;
    xh2: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    xh3: TRadioButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_custupdated_rwo: Tfrmnewcap_custupdated_rwo;

implementation

uses newcap_custupdatedformu;

{$R *.dfm}

procedure Tfrmnewcap_custupdated_rwo.BitBtn1Click(Sender: TObject);
begin
  if xh1.Checked then frmnewcap_custupdated.printreportbyrwo('1')
  else if xh2.Checked then frmnewcap_custupdated.printreportbyrwo('2')
  else if xh3.Checked then frmnewcap_custupdated.printreportbyrwo('3');
end;

procedure Tfrmnewcap_custupdated_rwo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_custupdated_rwo:=nil;
end;

end.
