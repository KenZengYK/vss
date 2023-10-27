unit czms1u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, wwriched, wwrichedspell, Buttons;

type
  Tfrmczms1 = class(TForm)
    wwDBRichEditMSWord1: TwwDBRichEditMSWord;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmczms1: Tfrmczms1;

implementation
uses bzgx1u, fju;
{$R *.DFM}

procedure Tfrmczms1.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmczms1.SpeedButton2Click(Sender: TObject);
begin
  if frmfj=nil then frmfj:=tfrmfj.create(self);
  frmfj.label2.caption:='czms1';
  frmfj.show;
end;

end.
