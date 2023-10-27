program BarcodeSvr;

uses
  Forms,
  Windows,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  BarcodeSvr_TLB in 'BarcodeSvr_TLB.pas',
  uRDM in 'uRDM.pas' {PCBarcodeSvr: TRemoteDataModule} {PCBarcodeSvr: CoClass},
  uTools in '..\share\uTools.pas',
  uBarcodeERP in 'uBarcodeERP.pas';

{$R *.TLB}

{$R *.res}

var
  AppTitle: array[0..$100] of Char;
  Mutex: hWnd;
  PrevInstHandle: THandle;
begin
  Application.Initialize;
  Application.Title := 'BarCodeSvr';

  //----------判断程序是否已运行-------------//
  AppTitle := 'BarCodeSvr';
  Mutex := CreateMutex(nil, False, AppTitle);

  if (GetLastError = ERROR_ALREADY_EXISTS) or (Mutex = 0) then
  begin
    //显示已运行的程序
    SetWindowText(Application.Handle, '');

    PrevInstHandle := FindWindow(nil, AppTitle);
    if PrevInstHandle <> 0 then
      if IsIconic(PrevInstHandle) then
        ShowWindow(PrevInstHandle, SW_RESTORE)
      else
        BringWindowToTop(PrevInstHandle);
    SetForegroundWindow(PrevInstHandle);

    //结束程序运行
    Application.Terminate;
    Exit;
  end;
//  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

