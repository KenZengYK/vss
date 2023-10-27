unit bfdhu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, OleCtrls, StdCtrls, WMPLib_TLB;

type
  Tfrmbfdh = class(TForm)
    Button1: TButton;
    WindowsMediaPlayer1: TWindowsMediaPlayer;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbfdh: Tfrmbfdh;

implementation

{$R *.DFM}

procedure Tfrmbfdh.Button1Click(Sender: TObject);
begin
  close;
end;

end.
