program BarcodeDebug;

uses
  Forms,
  uERPDebug in 'uERPDebug.pas' {frmERPDebug},
  uTools in '..\share\uTools.pas',
  ufrmBase in '..\ClientDLL-AX\ufrmBase.pas' {frmBase},
  ufrmDialog in '..\ClientDLL-AX\Picking\ufrmDialog.pas' {frmDialog},
  ufrmDOOption in '..\ClientDLL-AX\Picking\ufrmDOOption.pas' {frmDOOption},
  ufrmIDO in '..\ClientDLL-AX\Picking\ufrmIDO.pas' {frmIDO},
  ufrmMain in '..\ClientDLL-AX\Picking\ufrmMain.pas' {frmMain};

{$R *.res}
{$R PK.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmERPDebug, frmERPDebug);
  Application.Run;
end.


