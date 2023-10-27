program Barcode;

uses
  Forms,
  Windows,
  SysUtils,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  splashform in 'splashform.pas' {frmsplash},
  uPHbcClass in 'uPHbcClass.pas',
  ufrmLogin in 'ufrmLogin.pas' {frmLogin},
  uTools in '..\share\uTools.pas',
  ufrmChangePSW in 'ufrmChangePSW.pas' {frmChangePSW};

{$R *.res}
{$R bcIcon.res}
var
  AppTitle: array[0..$100] of Char;
  Mutex: hWnd;
  PrevInstHandle: THandle;
begin
  Application.Initialize;
  Application.Title := 'PC BarCode';

  //----------判斷程序是否已運行-------------//
  AppTitle := 'PC BarCode';
  Mutex := CreateMutex(nil, False, AppTitle);

  if (GetLastError = ERROR_ALREADY_EXISTS) or (Mutex = 0) then
  begin
    //顯示已運行的程序
    SetWindowText(Application.Handle, '');

    PrevInstHandle := FindWindow(nil, AppTitle);
    if PrevInstHandle <> 0 then
      if IsIconic(PrevInstHandle) then
        ShowWindow(PrevInstHandle, SW_RESTORE)
      else
        BringWindowToTop(PrevInstHandle);
    SetForegroundWindow(PrevInstHandle);

    //結束程序運行
    Application.Terminate;
    Exit;
  end;
  Application.ShowMainForm := False;
  frmsplash := Tfrmsplash.Create(nil);
  try
    frmsplash.Show;
    frmsplash.Update;

    Application.CreateForm(TfrmMain, frmMain);
    //  if not UserLogin then Application.Terminate;
  finally // wrap up
    //FreeAndNil(frmsplash);
  end; // try/finally
//  if not Application.Terminated then
//    Application.ShowMainForm := True;

  Application.Run;
end.

