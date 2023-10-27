unit ufrmServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBClient, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMemo, IdBaseComponent, IdComponent, IdTCPServer, StdCtrls,
  SyncObjs, RzStatus, ExtCtrls, RzPanel, IdSocketHandle,
  RM_Class, RM_DsgGridReport, RM_Dataset, RM_AsBarView, RM_Common, RM_GridReport,
  Menus, cbClasses, CaptionButton, FormTrayIcon;

type
  TfrmServer = class(TForm)
    IdTCPServer: TIdTCPServer;
    RzStatusBar1: TRzStatusBar;
    RzStatusPane1: TRzStatusPane;
    FormTrayIcon1: TFormTrayIcon;
    TrayPopupMenu: TPopupMenu;
    Restore1: TMenuItem;
    Minimize1: TMenuItem;
    N1: TMenuItem;
    Close1: TMenuItem;
    RMGridReport1: TRMGridReport;
    procedure IdTCPServerExecute(AThread: TIdPeerThread);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Close1Click(Sender: TObject);
  private
    { Private declarations }
    CS: TCriticalSection;
    FDBNameCount: Integer;

    procedure SetPHDBDataSetName(ARMDBDataSet: TRMDBDataSet);
    //    procedure DoRMReport(ARMGridReport: TRMGridReport; ADataSet: TDataSet; ARMDBDataSet: TRMDBDataSet);
    //    procedure InitRMReport(ARMGridReport: TRMGridReport; iCopies: Integer; bCollateCopies: boolean; APrinter: string);
  public
    { Public declarations }
  end;

var
  frmServer: TfrmServer;

implementation

uses uTools;

{$R *.dfm}

function GetReportResName(APrinter: string): string;
begin
  if Pos('ZEBRA', UpperCase(APrinter)) > 0 then
    result := 'ZebraZ4M'
  else
    result := 'Monarch9850';
end;

procedure TfrmServer.SetPHDBDataSetName(ARMDBDataSet: TRMDBDataSet);
begin
  try
    Inc(FDBNameCount);
    ARMDBDataSet.Name := 'PHDBDataSet_' + IntToStr(FDBNameCount);
  except
    SetPHDBDataSetName(ARMDBDataSet);
  end; // try/except
end;

type
  THackReport = class(TRMReport);

procedure TfrmServer.IdTCPServerExecute(AThread: TIdPeerThread);
var
  APrinter, ARealPrinter, AResName: string;
  AStream: TMemoryStream;
  cdsReport: TClientDataSet;
  AVersion, iCopies: Integer;
  bCollateCopies: boolean;
  ARMGridReport: TRMGridReport;
  ARMDBDataSet: TRMDBDataSet;
  t: TRMView;
begin
  AStream := TMemoryStream.Create;
  cdsReport := TClientDataSet.Create(Self);
  ARMGridReport := TRMGridReport.Create(Self);
  ARMDBDataSet := TRMDBDataSet.Create(Self);
  try
    try
      SetPHDBDataSetName(ARMDBDataSet);

      //DataSource1.DataSet := cdsReport;
      AThread.Connection.ReadStream(AStream, -1, true);
      AStream.Position := 0;

      AVersion := PHReadWordFromStream(AStream);
      iCopies := PHReadInt32FromStream(AStream);
      bCollateCopies := PHReadBooleanFromStream(AStream);
      APrinter := PHReadStringFromStream(AStream);
      ARealPrinter := GetRealPrinter(APrinter);
      //      cxMemo1.Lines.Add('Version=' + IntToStr(AVersion) + ';Copies=' + IntToStr(iCopies)
      //        + ';CollateCopies=' + boolToStr(bCollateCopies, True) + ';Printer=' + APrinter + ',' + ARealPrinter);

      with cdsReport do
      begin
        Close;
        LoadFromStream(AStream);
        Open;
      end;
      //      InitRMReport(ARMGridReport, iCopies, bCollateCopies, ARealPrinter);
      //      DoRMReport(ARMGridReport, cdsReport, ARMDBDataSet);
      with ARMGridReport do
      begin
        AResName := GetReportResName(APrinter);
        LoadFromResourceName(hInstance, AResName);
        //LoadFromFile(ExtractFilePath(Application.ExeName) + AResName + '.rls');

        ARMGridReport.DefaultCopies := iCopies;
        ARMGridReport.DefaultCollate := bCollateCopies;

        ShowProgress := False;
        ShowPrintDialog := False;
        ARMDBDataSet.DataSet := cdsReport;

        Dictionary.Clear;
        Dictionary.Variables.Insert(0, ' Global');
        Dictionary.Variables.AsString['FPHDataSetName'] := ARMDBDataSet.Name;

        t := ARMGridReport.FindObject('MasterData1');
        TRMBandMasterData(t).DataSetName := ARMDBDataSet.Name; // 设置主项数据数据源
        PrinterName := ARealPrinter;
        
        //peter zhou 2006.05.19
        if (AResName='ZebraZ4M') then
          THackReport(ARMGridReport).ScaleFactor:=68;
        //ShowReport;
        PrintReport;
        
      end; // with

    except
      //      on e: Exception do
      //        cxMemo1.Lines.Add('Exception=' + E.Message);
    end; // try/except
  finally // wrap up
    FreeAndNil(AStream);
    FreeAndNil(cdsReport);
    FreeAndNil(ARMGridReport);
    FreeAndNil(ARMDBDataSet);
  end; // try/finally
end;

//procedure TfrmServer.InitRMReport(ARMGridReport: TRMGridReport; iCopies: Integer; bCollateCopies: boolean; APrinter: string);
//begin
//end;

//procedure TfrmServer.DoRMReport(ARMGridReport: TRMGridReport; ADataSet: TDataSet; ARMDBDataSet: TRMDBDataSet);
//begin
//end;

procedure TfrmServer.FormDestroy(Sender: TObject);
begin
  //FreeAndNil(FormTrayIcon1);
  if IdTCPServer.Active then IdTCPServer.Active := False;
  FreeAndNil(CS);
  //  FreeAndNil(FTrayNotifyIcon);
end;

procedure TfrmServer.FormCreate(Sender: TObject);
var
  Binding: TIdSocketHandle;
begin
  FDBNameCount := 0;

  if not assigned(CS) then CS := TCriticalSection.Create;

  IdTCPServer.Bindings.Clear;
  Binding := IdTCPServer.Bindings.Add;
  //Binding.IP := lbIPs.Items.Strings[i];
  Binding.Port := cDefaultPrintPort;

  IdTCPServer.Active := True;
  RzStatusPane1.caption := '[ Active ]';
end;

procedure TfrmServer.Close1Click(Sender: TObject);
begin
  Close;
end;

end.

