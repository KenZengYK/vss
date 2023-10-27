unit newcap_custupdated_allformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrmnewcap_custupdated_all = class(TForm)
    xh1: TRadioButton;
    xh2: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    xh3: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_custupdated_all: Tfrmnewcap_custupdated_all;

implementation

uses newcap_custupdatedformu;

{$R *.dfm}

procedure Tfrmnewcap_custupdated_all.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_custupdated_all:=nil;
end;

procedure Tfrmnewcap_custupdated_all.BitBtn1Click(Sender: TObject);
begin
  if xh1.Checked then frmnewcap_custupdated.printreportbyall('1')
  else if xh2.Checked then frmnewcap_custupdated.printreportbyall('2')
  else if xh3.Checked then frmnewcap_custupdated.printreportbyall('3');
end;

end.
