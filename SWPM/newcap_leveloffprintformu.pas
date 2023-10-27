unit newcap_leveloffprintformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  Tfrmnewcap_leveloffprint = class(TForm)
    rg1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnewcap_leveloffprint: Tfrmnewcap_leveloffprint;

implementation

uses mainformu, newcap_custupdatedformu;

{$R *.dfm}

procedure Tfrmnewcap_leveloffprint.BitBtn1Click(Sender: TObject);
begin
  if rg1.ItemIndex>=0 then begin
    frmnewcap_custupdated.Label3.Caption:=rg1.Items[rg1.ItemIndex];
    frmnewcap_custupdated.Label4.Caption:=inttostr(rg1.ItemIndex+1);
    frmnewcap_custupdated.printleveloff(inttostr(rg1.ItemIndex+1));
  end;
end;

procedure Tfrmnewcap_leveloffprint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmnewcap_leveloffprint:=nil;
end;

end.
