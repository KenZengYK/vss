unit helpu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw;

type
  Tfrmhelp = class(TForm)
    WebBrowser1: TWebBrowser;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmhelp: Tfrmhelp;

implementation

{$R *.dfm}

procedure Tfrmhelp.FormShow(Sender: TObject);
begin
  webbrowser1.Navigate(extractfilepath(application.ExeName)+'pshelp.doc');
end;

procedure Tfrmhelp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmhelp:=nil;
end;

end.
