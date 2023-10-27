library UserAdmin;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils, Windows, Classes, Forms, ShellAPI, Controls, SConnect, ADODB, cxLookAndFeels,
  ufrmBase in '..\ufrmBase.pas' {frmBase},
  ufrmMain in 'ufrmMain.pas' {frmMain},
  uTools in '..\..\share\uTools.pas';

{$R *.res}

function CreateDLLForm(arObject: TarObject; arV: TarV;
  AUserRights: TUserRights): TForm; stdcall;
begin
  result := nil;
  try
    Application.CreateForm(TfrmMain, frmMain);
    with frmMain do
    begin
      UID := arV[0];
      LanguageID := arV[1];
      ComPort := arV[2];
      DLLTitle := arV[3];
      Site := arV[4];
      LookAndFeelKind := arV[5];
      LookAndFeelNativeStyle := arV[6];

      SCN := TSocketConnection(arObject[0]);
      ZPHLIB := TADOConnection(arObject[1]);

      UserRights := AUserRights;

      ClientDataSet1.RemoteServer := SCN;
      ClientDataSet2.RemoteServer := SCN;
      ClientDataSet_Temp.RemoteServer := SCN;
      DataSet_Language.RemoteServer := SCN;
    end; //with

    result := frmMain;
  except
  end; // try/finally
end;

function ChangeDLLLanguage(ALanguageID: Integer): boolean; stdcall;
begin
  with frmMain do
  begin
    LanguageID := ALanguageID;
    SetLanguageStr;
  end;
  result := True;
end;

function ChangeDLLLookAndFeel(Kind: TcxLookAndFeelKind; NativeStyle: boolean): boolean; stdcall;
begin
  with frmMain do
  begin
    LookAndFeelKind := Kind;
    LookAndFeelNativeStyle := NativeStyle;
  end;
  result := True;
end;

exports
  CreateDLLForm,
  ChangeDLLLanguage,
  ChangeDLLLookAndFeel;

begin

end.

