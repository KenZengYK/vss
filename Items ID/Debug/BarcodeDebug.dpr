program BarcodeDebug;

uses
  Forms,
  uERPDebug in 'uERPDebug.pas' {frmERPDebug},
  uTools in '..\share\uTools.pas',
  ufrmBase in '..\ClientDLL\ufrmBase.pas' {frmBase},
  ufrmDialog in '..\ClientDLL\Picking\ufrmDialog.pas' {frmDialog},
  ufrmDOOption in '..\ClientDLL\Picking\ufrmDOOption.pas' {frmDOOption},
  ufrmIDO in '..\ClientDLL\Picking\ufrmIDO.pas' {frmIDO},
  ufrmMain in '..\ClientDLL\Picking\ufrmMain.pas' {frmMain};

{$R *.res}
{$R PK.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmERPDebug, frmERPDebug);
  Application.Run;
end.


