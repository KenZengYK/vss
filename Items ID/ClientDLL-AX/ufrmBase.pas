unit ufrmBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBClient, cxStyles, SConnect, uTools, ExtCtrls, dxUxTheme,
  cxLookAndFeels, cxGridCustomTableView, cxGraphics, cxGridDBTableView;

type
  TfrmBase = class(TForm)
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    ClientDataSet_Temp: TClientDataSet;
    DataSource_Temp: TDataSource;
    DataSet_Language: TClientDataSet;
    pnl_Title: TPanel;
    cxLookAndFeelController1: TcxLookAndFeelController;
    procedure cxGridDBTableView_CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FUID: string;
    FLanguageID: Integer;
    FComPort: string;
    FSCN: TSocketConnection;
    FZPHLIB: TADOConnection;
    FRUnit: string;
    FSite: string;
    FUserRights: TUserRights;
    FDLLTitle: string;
    FLookAndFeelNativeStyle: boolean;
    FLookAndFeelKind: TcxLookAndFeelKind;

    FBarcodePrint: InvokePrintServer;

    procedure SetRUnit(Value: string);
    procedure SetDLLTitle(Value: string);
    //function SetXPNativeStyle: boolean;
    procedure SetLookAndFeelNativeStyle(Value: boolean);
    procedure SetLookAndFeelKind(Value: TcxLookAndFeelKind);

    //声明响应WM_HOTKEY消息的方法
    procedure WMHotKey(var Msg: TWMHotKey); message WM_HOTKEY;
    function GetSysFocus: Integer;

  protected
    procedure SetLanguageStr; virtual;
  public
    { Public declarations }
    property UID: string read FUID write FUID;
    property Site: string read FSite write FSite;
    property LanguageID: Integer read FLanguageID write FLanguageID;

    property LookAndFeelNativeStyle: boolean read FLookAndFeelNativeStyle write SetLookAndFeelNativeStyle;
    property LookAndFeelKind: TcxLookAndFeelKind read FLookAndFeelKind write SetLookAndFeelKind;

    property ComPort: string read FComPort write FComPort;
    property RUnit: string read FRUnit write SetRUnit;
    property SCN: TSocketConnection read FSCN write FSCN;
    property ZPHLIB: TADOConnection read FZPHLIB write FZPHLIB;
    property UserRights: TUserRights read FUserRights write FUserRights;
    property DLLTitle: string read FDLLTitle write SetDLLTitle;

    property BarcodePrint: InvokePrintServer read FBarcodePrint write FBarcodePrint;

    procedure GetLanguages;
    function GetLanguagesStr(RID: Integer; sDefautl: string; bGlobal: boolean = False): string;
    function CheckUserRight(ID: Integer; AFunc: string; AUserRights: TUserRights): boolean;

    //Focus
    procedure WMACTIVATEAPP(var Msg: TMessage); message WM_ACTIVATEAPP;

  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}

{ TfrmBase }
const id_SnapShot = 1115; //定义热键标识符

function TfrmBase.GetLanguagesStr(RID: Integer; sDefautl: string; bGlobal: boolean): string;
begin
  with DataSet_Language do
  begin
    if bGlobal then
    begin
      if Locate('RUnit;RID', VarArrayOf([cGLOBAL, RID]), []) then
        result := FieldByName('RCaption').AsString
      else
        result := sDefautl;
    end
    else
    begin
      if Locate('RUnit;RID', VarArrayOf([RUnit, RID]), []) then
        result := FieldByName('RCaption').AsString
      else
        result := sDefautl;
    end;
  end;
end;

procedure TfrmBase.SetLanguageStr;
begin

end;

procedure TfrmBase.GetLanguages;
begin
  with DataSet_Language do
  begin
    Close;
    CommandText := 'select UPPER(RUnit) as RUnit,RID,RCaption from PB_Language'
      + ' Where  LanguageID=' + IntToStr(FLanguageID)
      + ' and (UPPER(RUnit)=' + QuotedStr(UpperCase(FRUnit))
      + ' or UPPER(RUnit)=' + QuotedStr(UpperCase(cGlobal)) + ')';
    Open;
  end; // with
end;

procedure TfrmBase.SetRUnit(Value: string);
begin
  FRUnit := UpperCase(Value);
  GetLanguages;
end;

procedure TfrmBase.SetDLLTitle(Value: string);
begin
  FDLLTitle := Value;
  Caption := FDLLTitle;
  pnl_Title.Caption := FDLLTitle;
end;

//function TfrmBase.SetXPNativeStyle: boolean;
//begin
//  result := IsWindowsXPOrLater and IsThemeLibraryLoaded;
//  with cxLookAndFeelController1 do
//  begin
//    NativeStyle := result;
//    Kind := lfUltraFlat;
//  end; // with
//end;
//

procedure TfrmBase.SetLookAndFeelKind(Value: TcxLookAndFeelKind);
begin
  FLookAndFeelKind := Value;
  with cxLookAndFeelController1 do
  begin
    Kind := FLookAndFeelKind;
  end; // with
end;

procedure TfrmBase.SetLookAndFeelNativeStyle(Value: boolean);
begin
  FLookAndFeelNativeStyle := Value;
  with cxLookAndFeelController1 do
  begin
    NativeStyle := FLookAndFeelNativeStyle;
  end; // with
end;

function TfrmBase.CheckUserRight(ID: Integer; AFunc: string; AUserRights: TUserRights): boolean;
var
  sCaption, sTitle: PChar;
begin
  if not ((urAdmin in AUserRights) or (TUserRight(ID) in AUserRights)) then
  begin
    result := False;
    sCaption := PChar(GetLanguagesStr(62, 'You have not the Right to Use this Function', True) + ': [' + AFunc + ']');
    sTitle := PChar(GetLanguagesStr(5, 'Tips', True));
    Application.MessageBox(sCaption, sTitle, MB_OK + MB_ICONInformation);
  end
  else
    result := True;
end;

procedure TfrmBase.cxGridDBTableView_CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARec: TRect;
  ATextToDraw: string;
  AStatus, Status_Index, ErpSuccess_Index, AErpSuccessStatus: Integer;
  AColor: TColor;
  bErpSuccess: boolean;

  procedure SetTextToDraw;
  begin
    ATextToDraw := AViewInfo.GridRecord.DisplayTexts[AViewInfo.Item.Index];
  end;
begin
  inherited;
  //1---Bounds
  SetTextToDraw;
  ARec := AViewInfo.Bounds;

  //  if (AViewInfo.Selected) or (AViewInfo.Focused) then
  //  begin
  //    AColor := clRecordSelected;
  //  end
  //  else
  //  begin
    //2--get Column Index
  Status_Index := TcxGridDBTableView(Sender).GetColumnByFieldName('Status').Index;
  AErpSuccessStatus := -1;
  if TcxGridDBTableView(Sender).GetColumnByFieldName('ErpSuccess') <> nil then
  begin
    ErpSuccess_Index := TcxGridDBTableView(Sender).GetColumnByFieldName('ErpSuccess').Index;
    if VarIsNull(AViewInfo.GridRecord.Values[ErpSuccess_Index]) then
      AErpSuccessStatus := -1
    else
    begin
      bErpSuccess := VarAsType(AViewInfo.GridRecord.Values[ErpSuccess_Index], varBoolean);
      AErpSuccessStatus := Ord(bErpSuccess);
    end;
  end;
  //  ACanvas.Canvas.Brush.Style := bsSolid;
  if VarIsNull(AViewInfo.GridRecord.Values[Status_Index]) then
    AStatus := 0
  else
    AStatus := VarAsType(AViewInfo.GridRecord.Values[Status_Index], varInteger);
  //3--set color
  case AStatus of //
    Ord(bcsNew): AColor := clbcNew;
    Ord(bcsToSystem21):
      begin
        case AErpSuccessStatus of //
          -1: AColor := clbcToSystem21_Blank; //is null
          0: AColor := clbcToSystem21_Fail; //false
          1: AColor := clbcToSystem21_Success; //true
        else
          AColor := clbcOther;
        end; // case
      end;
    Ord(bcsPrintLabel): AColor := clbcPrintLabel;
    Ord(bcsToHandHeld): AColor := clbcToHandHeld;
    Ord(bcsFromHandHeld): AColor := clbcFromHandHeld;
    Ord(bcsIDOAffirm): AColor := clbcIDOAffirm;
  else
    AColor := clbcOther;
  end; // case

  ACanvas.Canvas.Font.Color := clWindowText;
  //  end;
    //4--set canvas
  ACanvas.Canvas.Brush.Color := AColor;
  ACanvas.Canvas.FillRect(ARec);
  //5--draw
  SetBkMode(ACanvas.Canvas.Handle, TRANSPARENT);
  ACanvas.DrawText(ATextToDraw, AViewInfo.Bounds, 0);
end;

function TfrmBase.GetSysFocus: Integer;
var
  hOtherWin, OtherThreadID, hFocusWin: integer;
begin
  hOtherWin := GetForegroundWindow;
  OtherThreadID := GetWindowThreadProcessID(hOtherWin, nil);
  if AttachThreadInput(GetcurrentThreadID, OtherThreadID, True) then
  begin
    hFocusWin := GetFocus;
    result := GetFocus;
    if HFocusWin <> 0 then
    try
      SendMessage(GetFocus, WM_COPY, 0, 0); //书上是这么写的
    finally
      AttachThreadInput(GetcurrentThreadID, OtherThreadID, False);
    end;
  end
  else result := GetFocus;
end;

procedure TfrmBase.WMHotKey(var Msg: TWMHotKey);
var
  H: THandle;
begin
  if Msg.HotKey = id_SnapShot then
  begin
    H := GetSysFocus;
    while IsWindow(H) and (H <> Handle) do
    begin
      SendMessage(H, WM_NEXTDLGCTL, 0, 0);
      H := GetParent(H);
    end;
  end;
end;

procedure TfrmBase.WMACTIVATEAPP(var Msg: TMessage);
begin
  if Boolean(Msg.WParam) then
    RegisterHotKey(Handle, id_SnapShot, 0, VK_TAB) //定义热键  在程序得到焦点时
  else
    UnRegisterHotKey(Handle, id_SnapShot); //释放已经登记的热键 在程序失去焦点时
end;

procedure TfrmBase.FormCreate(Sender: TObject);
begin
  // RegisterHotKey(Handle, id_SnapShot, 0, VK_TAB) //定义热键  在程序得到焦点时
end;

end.

