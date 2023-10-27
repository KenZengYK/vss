unit dzxzu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  Tfrmdzxz = class(TForm)
    op1: TRadioButton;
    op2: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdzxz: Tfrmdzxz;

implementation

uses jxjsbu, zyjsybu;

{$R *.DFM}

procedure Tfrmdzxz.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmdzxz.BitBtn1Click(Sender: TObject);
begin
  if op1.checked=true then
  begin
    if frmcfzyjsb=nil then frmcfzyjsb:=tfrmcfzyjsb.create(self);
    frmcfzyjsb.Label1.caption:='frmgxfxb';
    frmcfzyjsb.show;
  end
  else
  begin
    if frmjxjsb=nil then frmjxjsb:=tfrmjxjsb.create(self);
    frmjxjsb.label1.caption:='frmgxfxb';
    frmjxjsb.show;
  end;
  close;
end;

end.
