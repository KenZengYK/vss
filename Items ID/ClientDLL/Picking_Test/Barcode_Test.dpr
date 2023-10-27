program Barcode_Test;

uses
  Forms,
  uERPDebug in 'uERPDebug.pas' {frmERPDebug},
  uTools in '..\..\share\uTools.pas',
  ufrmBase in '..\ufrmBase.pas' {frmBase},
  ufrmDialog in 'ufrmDialog.pas' {frmDialog},
  ufrmIDO in 'ufrmIDO.pas' {frmIDO},
  ufrmMain in 'ufrmMain.pas' {frmMain};

{$R *.res}
{$R PK.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmERPDebug, frmERPDebug);
  Application.Run;
end.


