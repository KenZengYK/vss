unit czmsu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, wwriched, wwrichedspell, Buttons;

type
  Tfrmczms = class(TForm)
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
  frmczms: Tfrmczms;

implementation
uses bzgxu, fju;
{$R *.DFM}

procedure Tfrmczms.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmczms.SpeedButton2Click(Sender: TObject);
begin
  if frmfj=nil then frmfj:=tfrmfj.create(self);
  frmfj.label2.caption:='czms';
  frmfj.show;
end;

end.
