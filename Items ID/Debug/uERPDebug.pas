unit uERPDebug;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, MConnect, SConnect, StdCtrls, ADODB, Grids,
  DBGrids, cxControls, cxContainer, cxEdit, cxProgressBar, cxTextEdit,cxFontNameComboBox,
  cxMemo, DBTables, cxMaskEdit, cxDropDownEdit;

type
  TfrmERPDebug = class(TForm)
    Myserver: TSocketConnection;
    clsschedule: TSocketConnection;
    Phgconn: TSocketConnection;
    ZPHLIB1: TSocketConnection;
    btnDebug: TButton;
    Button1: TButton;
    ADO_ZPHLIB: TADOConnection;
    SocketConnection1: TSocketConnection;
    ClientDataSet1: TClientDataSet;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button2: TButton;
    Edit1: TEdit;
    ADOQuery1: TADOQuery;
    Button3: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery2: TADOQuery;
    cxProgressBar1: TcxProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button4: TButton;
    cxMemo1: TcxMemo;
    ADOConnection2: TADOConnection;
    ADOQuery3: TADOQuery;
    Query1: TQuery;
    cxFontNameComboBox1: TcxFontNameComboBox;
    Database1: TDatabase;
    procedure btnDebugClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cxFontNameComboBox1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmERPDebug: TfrmERPDebug;

implementation

uses ufrmMain, uTools;

{$R *.dfm}

procedure TfrmERPDebug.btnDebugClick(Sender: TObject);
begin
  //  Application.CreateForm(TfrmMain, frmMain);
  frmMain := TfrmMain.Create(Application);
  try
    with frmMain do
    begin
      IsUPI:=false;  // ∂®¡x «IDOﬂÄ «UPI
      UID :='ADMIN' ;//'ADMIN';
      LanguageID := 0;
      ComPort := 'P1';
      DLLTitle := 'Test';
      Site := 'SL';
      //      LookAndFeelKind := lfUltraFlat;
      LookAndFeelNativeStyle := False;

      SCN := SocketConnection1;
      ZPHLIB := ADO_ZPHLIB;

      UserRights := [urADMIN, urBrowse, urToERP, urFromHandHeld, urToHandHeld, urReport, urPrintLabel, urRefreshUploadToERP];
      //UserRights := [urBrowse, urToERP, urFromHandHeld, urToHandHeld, urReport, urPrintLabel, urRefreshUploadToERP];

      ClientDataSet1.RemoteServer := SCN;
      ClientDataSet2.RemoteServer := SCN;
      ClientDataSet_Temp.RemoteServer := SCN;
      ClientDataSet_ServerDate.RemoteServer := SCN;
      DataSet_Language.RemoteServer := SCN;

      ShowModal;
    end; // with
  finally // wrap up
    FreeAndNil(frmMain);
  end; // try/finally
end;

procedure TfrmERPDebug.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmERPDebug.Button2Click(Sender: TObject);
begin
  with ClientDataSet1 do
  begin
    if not Active then Open;

    Filtered := False;
    Filter := Edit1.Text;
    Filtered := True;
  end; // with

end;

procedure TfrmERPDebug.Button3Click(Sender: TObject);
var
  LotID, DREF, ItemCode, StockRoom: string;
  Qty: Double;
begin

  Label2.Caption := 'Start: ' + FormatDateTime('hh:nn:ss', Now);

  Label1.Caption := 'Start select SQL2000.inp71';
  Application.ProcessMessages;
  with ADOQuery2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from INP71');
    Open;
  end; // with
  Label1.Caption := 'Start select ault4f1.inp71';
  Application.ProcessMessages;
  with ADOQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select SREF71 as LotID,DREF71 as DREF,CATN71 as ItemCode,AQTY71 as QTY,LOCD71 as StockRoom from ault4f1.inp71 where cono71=' + QuotedStr('P1'));
    Open;

    Label1.Caption := 'Start Insert Data';
    Application.ProcessMessages;
    cxProgressBar1.Properties.Max := RecordCount;
    cxProgressBar1.Position := 0;
    try
      First;
      while not Eof do
      begin
        cxProgressBar1.Position := cxProgressBar1.Position + 1;

        LotID := FieldByName('LotID').AsString;
        DREF := FieldByName('DREF').AsString;
        ItemCode := FieldByName('ItemCode').AsString;
        QTY := FieldByName('QTY').AsFloat;
        StockRoom := FieldByName('StockRoom').AsString;

        with ADOQuery2 do
        begin
          Append;
          FieldByName('Cono').AsString := 'P1';
          FieldByName('LotID').AsString := LotID;
          FieldByName('DREF').AsString := DREF;
          FieldByName('ItemCode').AsString := ItemCode;
          FieldByName('QTY').AsFloat := QTY;
          FieldByName('StockRoom').AsString := StockRoom;
          Post;
        end; // with
        Next;
      end; // while
    finally // wrap up
      Label1.Caption := 'Start Batch Update to SQL2000';
      Application.ProcessMessages;
    end; // try/finally

  end; // with

  try
    ADOQuery2.UpdateBatch;
    Label1.Caption := 'End Batch Update to SQL2000';
    Label3.Caption := 'End: ' + FormatDateTime('hh:nn:ss', Now);
    ShowMessage('UpdateBatch OK');
  except
    on e: EDatabaseError do
    begin
      ADOQuery2.CancelBatch;
      ShowMessage('UpdateBatch Error');
    end;
  end; // try/except

end;

procedure TfrmERPDebug.Button4Click(Sender: TObject);
begin
  cxMemo1.Lines.Clear;
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from ault2f1.inp40 where cono40=''P1'' '
    +' and  substring(tref40,1,9)=''LMT14881A'' and usgc40=''Z'' order by tlno40');
    Open;
    First;
    while not Eof do
    begin
      ShowMessage(FieldByName('tlin40').Value);
      cxMemo1.Lines.Add(FieldByName('tlin40').Value);
      Next;
    end;    // while
  end; // with
end;

procedure TfrmERPDebug.cxFontNameComboBox1PropertiesChange(
  Sender: TObject);
begin
  cxMemo1.Style.Font.Name:=cxFontNameComboBox1.FontName;
end;

end.

