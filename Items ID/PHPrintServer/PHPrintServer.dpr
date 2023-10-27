program PHPrintServer;

uses
  Forms,
  ufrmServer in 'ufrmServer.pas' {frmServer},
  uTools in '..\share\uTools.pas';

{$R *.res}
{$R PS.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmServer, frmServer);
  Application.Run;
end.
