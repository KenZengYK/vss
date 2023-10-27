unit gxxzu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  Tfrmgxxz = class(TForm)
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
  frmgxxz: Tfrmgxxz;

implementation

uses bzgxu, bzgx1u;

{$R *.DFM}

procedure Tfrmgxxz.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmgxxz.BitBtn1Click(Sender: TObject);
begin
  if op1.Checked=true then
  begin
    if frmbzgx=nil then frmbzgx:=tfrmbzgx.create(self);
    frmbzgx.label3.caption:='frmgxfx';
    frmbzgx.show;
  end
  else
  begin
    if frmbzgx1=nil then frmbzgx1:=tfrmbzgx1.create(self);
    frmbzgx1.label3.caption:='frmgxfx';
    frmbzgx1.show;
  end;
  close;
end;

end.
