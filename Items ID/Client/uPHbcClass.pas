unit uPHbcClass;

{..$DEFINE DoDebug}

interface

uses
  Windows, SysUtils, Controls, Classes, Forms, DB, dxDockControl, dxDockPanel,
  ComCtrls, SConnect, DBTables, ShellApi, Dialogs, dxNavBar, dxNavBarCollns,
  dxNavBarStyles, DBClient, INIFiles, ExtCtrls, ADODB, Graphics, cxLookAndFeels,
  ComObj, Variants, uTools;

type
  //bc nodes
  PPHNode = ^TPHNode;
  TPHNode = record
    NodeID: Integer;
    NodeID_Use: Integer;
    GroupID: Integer;
    Caption: string;
    DLLName: string;
    FullName: string;
    ImageIndex: Integer;
    Description: string;
    DLLVersion: string;
  end;
  //no use
  PPersistInfo = ^TPersistInfo;
  TPersistInfo = record
    WinControl: TWinControl;
    List: TList;
  end;
  //query condition form
  PPHQuery = ^TPHQuery;
  TPHQuery = record
    NodeID: Integer;
    NodeID_Use: Integer;
    GroupID: Integer;
    Caption: string;
    DLLName: string;
    FullName: string;
    ImageIndex: Integer;
    Description: string;
    DLLVersion: string;
    //----
    DLLHandle: THandle;
    DLLForm: TForm;
    //    Panel: TdxDockPanel; //?
    //    ListItem: TListItem;//20050325 peter
  end;
  //  TarObject = array of TObject;
  //  TarV = array of Variant;

  TPHbcManage = class;

  {TPHQueryPage}
  TPHQueryPage = class(TObject)
  private
    FListQuery: TList;
    FListPanel: TList;
    FOwner: TWinControl;
    FDockControl: TdxCustomDockControl;
    FBasePanel: TdxDockPanel;
    FManage: TPHbcManage;

    function GetPanelByNodeID(ANodeID: Integer): TdxDockPanel;
    function GetPanelCount: Integer;
    procedure ExecuteDLL(PHQuery: PPHQuery; APanel: TdxDockPanel);
    procedure FreePHQuery;
    procedure CloseQueryPage(Sender: TdxCustomDockControl);
    procedure QueryPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  public
    constructor Create(AOwner: TWinControl; ADockControl: TdxCustomDockControl;
      AManage: TPHbcManage);
    destructor Destroy; override;

    property PanelCount: Integer read GetPanelCount;
    //property BasePanel: TdxDockPanel read FBasePanel;
    //property Manage: TPHbcManage read FManage;

    function AddPage(Item: TListItem): TdxDockPanel;
    function AddBasePage: TdxDockPanel;
    procedure DeletePage(ANodeID: Integer);
    procedure ChangeLanguage;
    procedure ChangeLookAndFeel;
  end;

  {TPHbcRights}
  TPHbcRights = class
  private
    //FList: TList;
    FarUserRights: TarUserRights;
    FManage: TPHbcManage;
    FIsAdmin: boolean;
    //FUserName: string;
    FUserRights: TUserRights;
    function GetUserRights(Index: Integer): TUserRights;
    //    procedure SetUserRights(Index: Integer; const Value: TUserRights);
    procedure SetIsAdmin(const Value: boolean);
    procedure GetUserAllRights;
  public
    constructor Create(AManage: TPHbcManage);
    destructor Destroy; override;
    //property UserName: string read FUserName write FUserName;
    property IsAdmin: boolean read FIsAdmin write SetIsAdmin;
    property UserRights[Index: Integer]: TUserRights read GetUserRights; // write SetUserRights;
  end;

  TPHNodePage = class;
  {TPHbcNode}
  TPHbcNode = class(TObject)
  private
    FNodeID: Integer;
    FNodeID_USE: Integer;
    FGroupID: Integer;
    FCaption: string;
    FDir: string;
    FDLLName: string;
    FFullName: string;
    FImageIndex: Integer;
    FDescription: string;
    FDLLVersion: string;
  public
    constructor Create;
    destructor Destroy; override;

    property NodeID: Integer read FNodeID write FNodeID;
    property NodeID_USE: Integer read FNodeID_USE write FNodeID_USE;
    property GroupID: Integer read FGroupID write FGroupID;
    property Caption: string read FCaption write FCaption;
    property Description: string read FDescription write FDescription;
    property Dir: string read FDir write FDir;
    property DLLName: string read FDLLName write FDLLName;
    property FullName: string read FFullName write FFullName;
    property ImageIndex: Integer read FImageIndex write FImageIndex;
    property DLLVersion: string read FDLLVersion write FDLLVersion;
  end;

  {TPHbcNodes}
  TPHbcNodes = class(TObject)
  private
    FList: TList;
    FNodePage: TPHNodePage;

    function GetCount: Integer;
    function GetImageFromDLL(Dir, sDLLName: string): Integer;
    procedure FreePHNode;
    //    function GetNodeByNodeID(ANodeID: Integer): TListItem;
  public
    constructor Create(ANodePage: TPHNodePage);
    destructor Destroy; override;

    property Count: Integer read GetCount;
    //    property Node[Index: Integer]: TPHbcNode read GetNode;
    //    property NodePage: TPHNodePage read FNodePage;

    procedure AddNode;
    procedure DeleteNode(aNodeID: Integer);
    procedure ChangeLanguage;
  end;

  {TPHNodePage}
  TPHNodePage = class(TObject)
  private
    FNodePanel: TdxDockPanel;
    FNodes: TPHbcNodes;
    //    FImageList: TImageList;
    FPoint: TPoint;
    FNavBar: TdxNavBar;
    FDataSet: TClientDataSet;
    FList: TList;
    FOwner: TWinControl;
    FManage: TPHbcManage;

    //    procedure SetImageList(Value: TImageList);
    function GetListView(Index: Integer): TListView;
    function GetListViewCount: Integer;
    procedure ListViewMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ListViewMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FreeListView;
    procedure NavBarGroupExpanded(Sender: TObject);
    function GetDataSet: TClientDataSet;
    function CreateClientDataSet: TClientDataSet;
    //    procedure AddDefaultIcon;
    procedure NodePanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FreeNavBar;
  public
    constructor Create(AOwner: TWinControl; ADockControl: TdxCustomDockControl;
      AManage: TPHbcManage);
    destructor Destroy; override;

    property NodePanel: TdxDockPanel read FNodePanel write FNodePanel; //Dock Panel
    property Nodes: TPHbcNodes read FNodes write FNodes;
    property ListView[Index: Integer]: TListView read GetListView;
    property ListViewCount: Integer read GetListViewCount;
    //    property ImageList: TImageList read FImageList;// write SetImageList;
    property NavBar: TdxNavBar read FNavBar write FNavBar;
    property DataSet: TClientDataSet read GetDataSet; // write SetDataSet;
    property Owner: TWinControl read FOwner;
    property Manage: TPHbcManage read FManage;

    procedure OpenDLLForm(Sender: TObject); // Item: TListItem; Selected: Boolean);
    procedure CreateGroupNodes;
    function GetListViewByGroupID(GroupID: Integer): TListView;
    procedure ChangeLanguage;
  end;

  {TPHIni}
  TPHIni = class(TObject)
  private
    FIniFile: TIniFile;
    FManage: TPHbcManage;
  public
    constructor Create(AManage: TPHbcManage);
    destructor Destroy; override;

    function GetINIValue(const Section, Ident, Default: string): string;
  end;

  {TPHSocketConnection}
  TPHSocketConnection = class(TSocketConnection)
  protected
    procedure DoError(E: Exception); override;
  end;

  {TPHConnections}
  TPHConnections = class(TObject)
  private
    FBCserver: TPHSocketConnection;
    FPhgconn: TPHSocketConnection;
    FZPHLIB: TADOConnection;
    FINI: TPHIni;
    FManage: TPHbcManage;
    FarObject: TarObject;
    FarV: TarV;
    procedure InitSocketConnection;
  public
    constructor Create(AOwner: TWinControl; AINI: TPHIni; AManage: TPHbcManage);
    destructor Destroy; override;

    property BCserver: TPHSocketConnection read FBCserver; // write FMyserver;
    property Phgconn: TPHSocketConnection read FPhgconn; // write FPhgconn;  SQL Server 2000  (Phdb)
    property ZPHLIB: TADOConnection read FZPHLIB; // write FZPHLIB;
    property arObject: TarObject read FarObject write FarObject;
    property arV: TarV read FarV write FarV;
  end;

  {TPHbcManage}
  TPHbcManage = class(TObject)
  private
    FOwner: TWinControl;
    FDockSite: TdxDockSite;
    FNodePage: TPHNodePage;
    FQueryPage: TPHQueryPage;
    FINI: TPHIni;
    FConnections: TPHConnections;
    FDockingManager: TdxDockingManager;
    FImageList: TImageList;
    FDebugCount: Integer;
    FInMainForm: boolean;

    FLanguageID: Integer;
    FUserName: string;
    FLogin: boolean;
    FbcRights: TPHbcRights;
    FIsAdmin: boolean;
    FRUnit: string;
    FSite: string;
    FDataSet_Language: TClientDataSet;
    FLookAndFeelNativeStyle: boolean;
    FLookAndFeelKind: TcxLookAndFeelKind;
    {$IFDEF DoDebug}
    FDebugINI: TIniFile;
    {$ENDIF}
    procedure InitDockingManager;
    procedure AddDefaultIcon;
    function GetDataSet_Language: TClientDataSet;
    function CreateClientDataSet: TClientDataSet;
    procedure SetLogin(Value: boolean);
    procedure SetIsAdmin(Value: boolean);
    procedure SetUserName(Value: string);
    procedure SetLanguageID(Value: Integer);
    procedure SetRUnit(Value: string);
    procedure SetSite(Value: string);
    procedure SetLookAndFeelNativeStyle(Value: boolean);
    procedure SetLookAndFeelKind(Value: TcxLookAndFeelKind);
  public
    constructor Create(AOwner: TWinControl);
    destructor Destroy; override;

    property DockSite: TdxDockSite read FDockSite; // write FDockSite; //Dock site
    property QueryPage: TPHQueryPage read FQueryPage;
    property NodePage: TPHNodePage read FNodePage; // write FNodePage; //the Left Page:have Nodes
    property ImageList: TImageList read FImageList write FImageList;

    property INI: TPHIni read FINI;
    property Connections: TPHConnections read FConnections;
    property DockingManager: TdxDockingManager read FDockingManager; // write FDockingManager;
    property LanguageID: Integer read FLanguageID write SetLanguageID;
    property UserName: string read FUserName write SetUserName;
    property IsAdmin: boolean read FIsAdmin write SetIsAdmin;
    property Site: string read FSite write SetSite;

    property LookAndFeelNativeStyle: boolean read FLookAndFeelNativeStyle write SetLookAndFeelNativeStyle;
    property LookAndFeelKind: TcxLookAndFeelKind read FLookAndFeelKind write SetLookAndFeelKind;

    property DataSet_Language: TClientDataSet read GetDataSet_Language;
    property Login: boolean read FLogin write SetLogin;
    property bcRights: TPHbcRights read FbcRights;
    property RUnit: string read FRUnit write SetRUnit;
    {$IFDEF DoDebug}
    property DebugINI: TIniFile read FDebugINI write FDebugINI;
    {$ENDIF}

    procedure ShowDockControl(Sender: TdxDockSite; AControl: TdxCustomDockControl);
    procedure HideDockControl(Sender: TdxDockSite; AControl: TdxCustomDockControl);

    procedure StartDock(Sender: TdxCustomDockControl; X, Y: Integer);
    procedure EndDock(Sender: TdxCustomDockControl; Zone: TdxZone; X, Y: Integer);
    procedure CreateTabContainer(Sender: TdxCustomDockControl; ATabContainer: TdxTabContainerDockSite);
    procedure CreateSiteContainer(Sender: TdxCustomDockControl; ASideContainer: TdxSideContainerDockSite);
    procedure CreateFloatSite(Sender: TdxCustomDockControl; AFloatSite: TdxFloatDockSite);
    procedure AutoHideChanged(Sender: TdxCustomDockControl);
    procedure AutoHideChanging(Sender: TdxCustomDockControl);

    procedure HookupEvents(Sender: TdxCustomDockControl);
    procedure WriteDebugInfo(ASubSection, AStr: string);
    procedure InitManager;
    procedure GetLanguages;
    function GetLanguagesStr(RID: Integer; sDefautl: string; bGlobal: boolean = False): string;
    procedure FreePartClass;
    procedure ChangeLanguage;
  end;

var
  ADllRegisterServer: function(): Integer; stdcall;

procedure Regsvr32Winsock; //no use

implementation

function FileIsInUse(fName: string): boolean;
var
  HFileRes: HFILE;
  Attributes, NewAttributes: Word;
begin
  Result := false;
  if not FileExists(fName) then exit;

  if FileExists(fName) then
  begin
    Attributes := FileGetAttr(fName);
    //    NewAttributes := Attributes;
    NewAttributes := Attributes and (not SysUtils.faReadOnly);
    // if (Attributes and SysUtils.faReadOnly) = SysUtils.faReadOnly then
    FileSetAttr(fName, NewAttributes);
  end;
  //  Sleep(1000);
  HFileRes := CreateFile(pchar(fName), GENERIC_READ or GENERIC_WRITE,
    0 {this is the trick!}, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
  Result := (HFileRes = INVALID_HANDLE_VALUE);
  if not Result then
    CloseHandle(HFileRes);
end;

//get windows directiory:  C:\winnt

function PHGetWindowsDirectory: string;
var
  pcWindowsDirectory: PChar;
  dwWDSize: DWORD;
begin
  dwWDSize := MAX_PATH + 1;
  GetMem(pcWindowsDirectory, dwWDSize); // allocate memory for the string
  try
    if Windows.GetWindowsDirectory(pcWindowsDirectory, dwWDSize) <> 0 then
      Result := pcWindowsDirectory;
  finally
    FreeMem(pcWindowsDirectory); // now free the memory allocated for the string
  end;
end;
//get system directory:  C:\winnt\system32

function PHGetSystemDirectory: string;
var
  pcSystemDirectory: PChar;
  dwSDSize: DWORD;
begin
  dwSDSize := MAX_PATH + 1;
  GetMem(pcSystemDirectory, dwSDSize); // allocate memory for the string
  try
    if Windows.GetSystemDirectory(pcSystemDirectory, dwSDSize) <> 0 then
      Result := pcSystemDirectory;
  finally
    FreeMem(pcSystemDirectory); // now free the memory allocated for the string
  end;
end;
//get the dll file full path and name

function GetFullDLLName(Dir, DLLName: string): string;
var
  AStr, sDir, FErpPath: string;
  iPos: Integer;
begin
  sDir := Dir;
  if sDir <> '' then
  begin
    if Copy(sDir, Length(sDir), 1) <> '\' then
      sDir := sDir + '\';
  end;

  FErpPath := ExtractFilePath(Application.ExeName);

  if ExtractFileDrive(sDir + DLLName) = '' then //相對路徑
  begin
    if sDir <> '' then
    begin
      iPos := Pos('\', UpperCase(sDir));
      AStr := Copy(sDir, 1, iPos - 1);
      if (CompareText(AStr, 'WINNT') = 0) or (CompareText(AStr, 'WINDOWS') = 0) then
        sDir := PHGetWindowsDirectory + '\' + Copy(sDir, iPos + 1, MaxInt)
      else if (CompareText(AStr, 'system') = 0) or (CompareText(AStr, 'system32') = 0) then
        sDir := PHGetSystemDirectory + '\' + Copy(sDir, iPos + 1, MaxInt)
      else if (CompareText(AStr, 'Program Files') = 0) then
        sDir := ExtractFileDrive(PHGetWindowsDirectory + '\' + DLLName) + '\' + sDir
      else
        sDir := FErpPath + sDir;
    end
    else
      sDir := FErpPath + sDir;
  end;

  result := sDir + DLLName;
end;

//no use:because have bug in win98

procedure Regsvr32Winsock;
var
  oXls: Variant;
  //  oYc: Variant;
  hDll: THandle;

  function _GetShortPathName(const Path: string): string;
  var
    lpszShortPath: PChar; // points to a buffer to receive the null-terminated short form of the path
  begin
    GetMem(lpszShortPath, MAX_PATH + 1);
    try
      Windows.GetShortPathName(PChar(Path), lpszShortPath, MAX_PATH + 1);
      Result := lpszShortPath;
    finally
      FreeMem(lpszShortPath);
    end;
  end;

begin
  Screen.Cursor := crHourGlass;
  try
    try
      oXls := Createoleobject('MSWinsock.Winsock');
      oXls := Unassigned;
    except
      // Register ocx file
      hDll := LoadLibrary(PChar(_GetShortPathName(ExtractFilePath(Application.ExeName)) + 'MSWINSCK.OCX'));
      try
        ADllRegisterServer := GetProcAddress(hDll, 'DllRegisterServer');
        ADllRegisterServer();
      finally // wrap up
        FreeLibrary(hDll);
      end; // try/finally
    end;
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

//get Focuse control

function GetFocusedControl(AWinControl: TWinControl): TWinControl;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to AWinControl.ControlCount - 1 do
    if AWinControl.Controls[i] is TWinControl then
    begin
      Result := GetFocusedControl(TWinControl(AWinControl.Controls[i]));
      if Result <> nil then Exit;
      if TWinControl(AWinControl.Controls[i]).Focused then
      begin
        Result := TWinControl(AWinControl.Controls[i]);
        Exit;
      end;
    end;
end;

//no use

procedure StorePersistentInfo(Sender: TdxCustomDockControl);
var
  I: Integer;
  AWinControl: TWinControl;
  p: PPersistInfo;
  ANode: TPHbcNode;
  PHNode: PPHNode;
  NodeList: TList;
begin
  if Sender.Visible and (Sender.Tag = 0) then
  begin
    AWinControl := GetFocusedControl(Sender);
    if AWinControl <> nil then
    begin
      New(p);
      p^.WinControl := AWinControl;
      if AWinControl is TListView then
      begin
        NodeList := TList.Create;
        for I := 0 to TListView(AWinControl).Items.Count - 1 do // Iterate
        begin
          ANode := TPHbcNode(TListView(AWinControl).Items[I].Data);
          if assigned(ANode) then
          begin
            New(PHNode);
            with PHNode^ do
            begin
              NodeID := ANode.NodeID;
              NodeID_USE := ANode.NodeID_USE;
              Caption := ANode.Caption;
              GroupID := ANode.GroupID;
              Description := ANode.Description;
              DLLName := ANode.DLLName;
              ImageIndex := ANode.ImageIndex;
              DLLVersion := ANode.DLLVersion;
              NodeList.Add(PHNode);
            end;
          end;
        end; // for
        p^.List := NodeList;
      end;
      Sender.Tag := Integer(p);
    end;
  end;
end;

procedure RestorePersistentInfo(Sender: TdxCustomDockControl);
var
  I: Integer;
  ANode: TPHbcNode;
  PHNode: PPHNode;
  AWinControl: TWinControl;
begin
  if Sender.Visible and (Sender.Tag <> 0) then
  begin
    AWinControl := PPersistInfo(Sender.Tag)^.WinControl;
    AWinControl.SetFocus;
    if AWinControl is TListView then
    begin
      for I := TListView(AWinControl).Items.Count - 1 downto 0 do // Iterate
      begin
        ANode := TPHbcNode(TListView(AWinControl).Items[I].Data);
        if assigned(ANode) then
        begin
          PHNode := PPHNode(PPersistInfo(Sender.Tag)^.List[I]);
          with ANode do
          begin
            NodeID := PHNode^.NodeID;
            NodeID_USE := PHNode^.NodeID_USE;
            Caption := PHNode^.Caption;
            GroupID := PHNode^.GroupID;
            Description := PHNode^.Description;
            DLLName := PHNode^.DLLName;
            ImageIndex := PHNode^.ImageIndex;
            DLLVersion := PHNode^.DLLVersion;
            //NodeList.Add(PHNode);
          end;
          Dispose(PHNode);
          PPersistInfo(Sender.Tag)^.List.Delete(I);
        end;
      end; // for
    end;
    PPersistInfo(Sender.Tag)^.List.Free;
    PPersistInfo(Sender.Tag)^.List := nil;
    Dispose(PPersistInfo(Sender.Tag));
    Sender.Tag := 0;
  end;
end;

{ TPHQueryPage }

function TPHQueryPage.AddBasePage: TdxDockPanel;
var
  //  PHNode: PPHNode;
  //  ANode: TPHbcNode;
  PHQuery: PPHQuery;
  APanel: TdxDockPanel;
  //  sCaption, sTitle: PChar;
  //  ANodeID:Integer;
begin
  APanel := TdxDockPanel.Create(FOwner);
  with APanel do
  begin
    Enabled := False;
    Visible := False;
    DockTo(FBasePanel, dtClient, -1);
    Caption := 'BaseDLLForm';
    CaptionButtons := [cbClose]; // [cbClose]; // cbMaximize,
    AllowFloating := False;
    ShowSingleTab := True;
    Dockable := False;
    ImageIndex := 0;
    Visible := False;
    Tag := -1;
    Enabled := True;
    Visible := False;
    OnClose := CloseQueryPage;
  end;
  FListPanel.Add(APanel);

  New(PHQuery);
  with PHQuery^ do
  begin
    NodeID := -1;
    NodeID_USE := -1;
    GroupID := -1;
    Caption := 'BaseDLLForm';
    DLLName := 'BaseDLL.dll';
    FullName := GetFullDLLName('DLL', DLLName);
    ImageIndex := 0;
    Description := 'BaseDLL Form';
    DLLVersion := '1.0.0.1';
    DLLHandle := 0;
    DLLForm := nil;
  end; // with
  FListQuery.Add(PHQuery);
  result := APanel;
  FManage.WriteDebugInfo(Self.ClassName, 'AddBasePage,Create(' + APanel.Caption + ')');
  ExecuteDLL(PHQuery, APanel);
  //    FDockControl.Controller.ActiveDockControl := APanel;
end;

//create a  new DockPanel if not exists,otherwise  active it

function TPHQueryPage.AddPage(Item: TListItem): TdxDockPanel;
var
  //  PHNode: PPHNode;
  ANode: TPHbcNode;
  PHQuery: PPHQuery;
  APanel: TdxDockPanel;
  sCaption, sTitle: PChar;
  //  ANodeID:Integer;
begin
  result := nil;
  if assigned(TPHbcNode(Item.Data)) then
  begin
    ANode := TPHbcNode(Item.Data);
    APanel := GetPanelByNodeID(ANode.NodeID);

    if assigned(APanel) then //active it
    begin
      APanel.Visible := True;
      //FDockControl.Controller.ActiveDockControl := APanel;
      FManage.WriteDebugInfo(Self.ClassName, 'AddPage,ActiveDockControl(' + APanel.Caption + ')');
    end
    else
    begin //create new
      if not (FManage.IsAdmin //(urAdmin in FManage.bcRights.UserRights[ANode.NodeID])
        or (urBrowse in FManage.bcRights.UserRights[ANode.NodeID_USE])
        or ((urBrowse in FManage.bcRights.UserRights[0]) and (ANode.NodeID_USE = 4))
        or ((urBrowse in FManage.bcRights.UserRights[0]) and (ANode.NodeID_USE = 12))) //UserRights[0] is IDO, 4 is IssueMaterial
      then
      begin
        with FManage do
        begin
          //          sCaption := PChar(ANode.Caption);
          sCaption := PChar(GetLanguagesStr(62, 'You do not have the Right to Use this Function', True) + ': [' + ANode.Caption + ']');
          sTitle := PChar(GetLanguagesStr(5, 'Tips', True));
        end; // with
        Application.MessageBox(sCaption, sTitle, MB_OK + MB_ICONInformation);
        exit;
      end;
      APanel := TdxDockPanel.Create(FOwner);
      with APanel do
      begin
        Enabled := False;
        Visible := False;
        DockTo(FBasePanel, dtClient, -1);
        Caption := ANode.Caption;
        CaptionButtons := [cbClose]; // [cbClose]; // cbMaximize,
        AllowFloating := False;
        ShowSingleTab := True;
        Dockable := False;
        ImageIndex := ANode.ImageIndex;
        Visible := True;
        Tag := ANode.NodeID;
        Enabled := True;
        Visible := True;
        OnClose := CloseQueryPage;

        //OnStartDocking := StartDock ;
        //OnEndDocking := EndDock ;
         //OnMouseMove := QueryPanelMouseMove;
      end;
      FListPanel.Add(APanel);

      New(PHQuery);
      with PHQuery^ do
      begin
        NodeID := ANode.NodeID;
        NodeID_USE := ANode.NodeID_USE;
        GroupID := ANode.GroupID;
        Caption := ANode.Caption;
        DLLName := ANode.DLLName;
        FullName := ANode.FullName;
        ImageIndex := ANode.ImageIndex;
        Description := ANode.Description;
        DLLVersion := ANode.DLLVersion;
        DLLHandle := 0;
        DLLForm := nil;
        //        Panel := APanel;
        //        ListItem:=Item;
      end; // with
      FListQuery.Add(PHQuery);
      result := APanel;
      FManage.WriteDebugInfo(Self.ClassName, 'AddPage,Create(' + APanel.Caption + ')');
      ExecuteDLL(PHQuery, APanel);
      FDockControl.Controller.ActiveDockControl := APanel;
      //FQueryPage.PagePanel.OnClose:=CloseQueryPage;
    end;
    FDockControl.Controller.ActiveDockControl := APanel;
  end;
end;

//close a QueryPage

procedure TPHQueryPage.CloseQueryPage(Sender: TdxCustomDockControl);
begin
  //  FManage.WriteDebugInfo(Self.ClassName, 'CloseQueryPage(' + TdxCustomDockControl(Sender).Caption + ')');
  DeletePage(TdxCustomDockControl(Sender).Tag);
end;

//execute the relational dll(open query form)

procedure TPHQueryPage.ExecuteDLL(PHQuery: PPHQuery; APanel: TdxDockPanel);
var
  CreateQueryForm: InvokeDLLForm;
  ADLLName: string;
  ADLLHandle: THandle;
  AForm: TForm;
begin
  //  ADLLName := ExtractFilePath(Application.ExeName) + cDLLDirectory + PHQuery^.DLLName; //+ '.DLL';
  ADLLName := PHQuery^.FullName;
  //  if FileIsInUse(ADLLName) then
  //    Astr := 'File Is InUse'
  //  else
  //    Astr := 'File Is not InUse';
  ADLLHandle := LoadLibrary(PChar(ADLLName));
  if ADLLHandle <> 0 then
  begin
    @CreateQueryForm := GetProcAddress(ADLLHandle, cCreateDLLForm);
    if Assigned(CreateQueryForm) then
    begin
      with FManage.Connections do
      begin
        arV[3] := PHQuery^.Caption;
        AForm := CreateQueryForm(arObject, arV, FManage.bcRights.UserRights[PHQuery^.NodeID_USE]);
      end; // with  \
      //-------
      PHQuery^.DLLHandle := ADLLHandle;
      if assigned(AForm) then
      begin
        PHQuery^.DLLForm := AForm;
        AForm.Tag := PHQuery^.NodeID;
        //======>>
        AForm.BorderStyle := bsNone; //no border  style
//        Windows.SetWindowLong(AForm.Handle, GWL_STYLE, //can have focuse with queryPage
//          (Windows.GetWindowLong(AForm.Handle, GWL_STYLE) or (WS_CHILD)) and (not WS_POPUP));
        Windows.SetWindowLong(AForm.Handle, GWL_STYLE, //can have focuse with queryPage
          (Windows.GetWindowLong(AForm.Handle, GWL_STYLE) or (WS_CHILD)));
        Windows.SetParent(AForm.Handle, APanel.Handle); //parent
        //====do not use follow code=======
        //AForm.Parent:= PagePanel;
        //AForm.Align := alClient;
        AForm.WindowState := wsMaximized; // Max the form
        AForm.Show; //visible
        FManage.WriteDebugInfo(Self.ClassName, 'ExecuteDLL(' + ADLLName + ')');
      end;
    end;
  end;
end;

constructor TPHQueryPage.Create(AOwner: TWinControl;
  ADockControl: TdxCustomDockControl; AManage: TPHbcManage);
begin
  FOwner := AOwner;
  FDockControl := ADockControl;
  FListQuery := TList.Create;
  FListPanel := TList.Create;
  FManage := AManage;
  FOwner := AOwner;
  FManage.WriteDebugInfo(Self.ClassName, 'Create');
  //create the base panel,and invisible it
  FBasePanel := TdxDockPanel.Create(FOwner);
  with FBasePanel do
  begin
    Visible := False;
    Enabled := False;
    DockTo(ADockControl, dtClient, 0);
    AutoHide := False;
    Caption := 'Base';
    CaptionButtons := [cbClose]; // [cbClose];
    AllowFloating := False;
    Enabled := True;
    Visible := False;
    //ShowCaption:=False;
    ShowSingleTab := True;
  end;

  FManage.WriteDebugInfo(Self.ClassName, 'FBasePanel.Create');
end;

//delete the appointed queryPage :free form the dispose pointer

procedure TPHQueryPage.DeletePage(ANodeID: Integer);
var
  I: Integer;
  AForm: TForm;
  ADLLHandle: THandle;
  ARect: TRect;
  //  APanel: TdxDockPanel;
begin
  for I := FListQuery.Count - 1 downto 0 do //Iterate
  begin
    if PPHQuery(FListQuery[I])^.NodeID = ANodeID then
    begin
      AForm := PPHQuery(FListQuery[I])^.DLLForm;
      ADLLHandle := PPHQuery(FListQuery[I])^.DLLHandle;
      //      APanel := TdxDockPanel(FListPanel[I]);
      try
        PPHQuery(FListQuery[I])^.DLLForm := nil;
        PPHQuery(FListQuery[I])^.DLLHandle := 0;

        if assigned(AForm) then
        begin
          ARect.Left := 0;
          ARect.Top := 0;
          AForm.ManualFloat(ARect);
          AForm.Close;
        end;
        FreeAndNil(AForm); //must free the form ,otherwise the exception happen
        FManage.WriteDebugInfo(Self.ClassName, 'DeletePage_DLLForm(' + PPHQuery(FListQuery[I])^.Caption + ')');
      except
      end; // try/except
      try
        if ADLLHandle <> 0 then
          FreeLibrary(ADLLHandle);
        //      if assigned(APanel) then FreeAndNil(APanel);
              //  FListPanel[I] := nil;

        FManage.WriteDebugInfo(Self.ClassName, 'DeletePage_FreeLibraryHandle(' + PPHQuery(FListQuery[I])^.Caption + ')');
        Dispose(PPHQuery(FListQuery[I]));
      except
      end; // try/except
      FListQuery.Delete(I);
      FListPanel.Delete(I);
      Break;
    end;
  end; //for
end;

procedure TPHQueryPage.ChangeLanguage;
var
  I, ANodeID: Integer;
  AStr: string;
  ADLLHandle: THandle;
  //  APanel: TdxDockPanel;
  //  ANode:TPHbcNode;
  DoChangeDLLLanguage: InvokeChangeDLLLanguage;
begin
  for I := FListQuery.Count - 1 downto 0 do //Iterate
  begin
    ADLLHandle := PPHQuery(FListQuery[I])^.DLLHandle;
    ANodeID := PPHQuery(FListQuery[I])^.NodeID;
    if ANodeID = -1 then Continue;


    AStr := FManage.GetLanguagesStr(1000 + ANodeID, PPHQuery(FListQuery[I])^.Caption, True);
    try
      if ADLLHandle <> 0 then
      begin
        @DoChangeDLLLanguage := GetProcAddress(ADLLHandle, cChangeLanguage);
        if Assigned(DoChangeDLLLanguage) then
        begin
          DoChangeDLLLanguage(FManage.LanguageID);
        end;
      end;
      TdxDockPanel(FListPanel[I]).Caption := AStr;
      PPHQuery(FListQuery[I])^.Caption := AStr;
      AStr := FManage.GetLanguagesStr(1100 + ANodeID, PPHQuery(FListQuery[I])^.Description, True);
      PPHQuery(FListQuery[I])^.Description := AStr;
      FManage.WriteDebugInfo(Self.ClassName, 'DoChangeLanguage(' + IntToStr(FManage.LanguageID) + ')');
    except
    end; // try/except
  end; //for
end;

procedure TPHQueryPage.ChangeLookAndFeel;
var
  I, ANodeID: Integer;
  ADLLHandle: THandle;
  DoChangeDLLLookAndFeel: InvokeChangeDLLLookAndFeel;
begin
  for I := FListQuery.Count - 1 downto 0 do //Iterate
  begin
    ADLLHandle := PPHQuery(FListQuery[I])^.DLLHandle;
    ANodeID := PPHQuery(FListQuery[I])^.NodeID;
    if ANodeID = -1 then Continue;
    try
      if ADLLHandle <> 0 then
      begin
        @DoChangeDLLLookAndFeel := GetProcAddress(ADLLHandle, cChangeLookAndFeel);
        if Assigned(DoChangeDLLLookAndFeel) then
        begin
          DoChangeDLLLookAndFeel(FManage.LookAndFeelKind, FManage.LookAndFeelNativeStyle);
        end;
      end;
      //FManage.WriteDebugInfo(Self.ClassName, 'DoChangeDLLLookAndFeel(' + IntToStr(FManage.LanguageID) + ')');
    except
    end; // try/except
  end; //for
end;

procedure TPHQueryPage.FreePHQuery;
var
  I: Integer;
  AForm: TForm;
  ADLLHandle: THandle;
  APanel: TdxDockPanel;
  ARect: TRect;
begin
  for I := FListQuery.Count - 1 downto 0 do //Iterate
  begin
    AForm := PPHQuery(FListQuery[I])^.DLLForm;
    ADLLHandle := PPHQuery(FListQuery[I])^.DLLHandle;
    APanel := TdxDockPanel(FListPanel[I]);
    try
      PPHQuery(FListQuery[I])^.DLLForm := nil;
      PPHQuery(FListQuery[I])^.DLLHandle := 0;

      if assigned(AForm) then
      begin
        ARect.Left := 0;
        ARect.Top := 0;
        //        AForm.ManualFloat(ARect);
        AForm.Close;
      end;
      FreeAndNil(AForm); //must free the form
      FManage.WriteDebugInfo(Self.ClassName, 'FreePHQuery_DLLForm(' + PPHQuery(FListQuery[I])^.Caption + ')');
    except
    end; // try/except
    try
      if ADLLHandle <> 0 then FreeLibrary(ADLLHandle);
      //FListPanel[I] := nil;
      if assigned(APanel) then FreeAndNil(APanel);
      FManage.WriteDebugInfo(Self.ClassName, 'FreePHQuery_FreeLibraryHandle&Panel(' + PPHQuery(FListQuery[I])^.Caption + ')');
      Dispose(PPHQuery(FListQuery[I]));
    except
    end; // try/except
    FListQuery.Delete(I);
    FListPanel.Delete(I);
  end; //for
end;

destructor TPHQueryPage.Destroy;
begin
  FreePHQuery;
  FreeAndNil(FListQuery);
  FreeAndNil(FListPanel);
  FreeAndNil(FBasePanel);
  FManage.WriteDebugInfo(Self.ClassName, 'Destroy');
  inherited;
end;

function TPHQueryPage.GetPanelCount: Integer;
begin
  result := FListPanel.Count;
end;

//Get Panel By NodeID

function TPHQueryPage.GetPanelByNodeID(ANodeID: Integer): TdxDockPanel;
var
  I: Integer;
begin
  result := nil;
  for I := 0 to FListQuery.Count - 1 do // Iterate
  begin
    if PPHQuery(FListQuery[I])^.NodeID = ANodeID then
    begin
      result := TdxDockPanel(FListPanel[I]);
      FManage.WriteDebugInfo(Self.ClassName, 'GetPanelByNodeID(' + IntToStr(ANodeID) + ')');
      Break;
    end;
  end; // for
end;
//not use

procedure TPHQueryPage.QueryPanelMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  FManage.DockingManager.Options := FManage.DockingManager.Options + [doFreeOnClose];
end;

{ TPHbcNode }

constructor TPHbcNode.Create;
begin
  inherited Create;

end;

destructor TPHbcNode.Destroy;
begin

  inherited Destroy;
end;

{ TPHbcNodes }

constructor TPHbcNodes.Create(ANodePage: TPHNodePage);
begin
  FList := TList.Create;
  FNodePage := ANodePage;
  FNodePage.Manage.WriteDebugInfo(Self.ClassName, 'Create');
end;
//get the node icon from dll,if have not find,then use the default

function TPHbcNodes.GetImageFromDLL(Dir, sDLLName: string): Integer;
var
  ADLLName: string;
  ADLLHandle: THandle;
  Hicon: THandle;
  //  AImage: TImage;
  AICON: TICON;
begin
  result := 0;
  //ADLLName := ExtractFilePath(Application.ExeName) + cDLLDirectory + sDLLName;
  ADLLName := GetFullDLLName(Dir, sDLLName);
  FNodePage.Manage.WriteDebugInfo(Self.ClassName, 'GetImageFromDLL(' + sDLLName + ')');
  ADLLHandle := LoadLibrary(PChar(ADLLName));
  try
    if ADLLHandle <> 0 then
    begin
      //AImage := TImage.Create(FNodePage.Owner);
      AICON := TIcon.Create;
      try
        Hicon := Loadicon(ADLLHandle, Pchar('bcICO'));
        if Hicon <> 0 then
        begin
          //AImage.Picture.Icon.Handle := Hicon;
          //result := FNodePage.ImageList.AddIcon(AImage.Picture.Icon);
          AIcon.Handle := Hicon;
          result := FNodePage.Manage.ImageList.AddIcon(AIcon);
        end;
      finally // wrap up
        //FreeAndNil(AImage);
        FreeAndNil(AICON);
      end; // try/finally
    end;
  finally // wrap up
    if ADLLHandle <> 0 then
      FreeLibrary(ADLLHandle);
  end; // try/finally
end;

//create a new node to ListView

procedure TPHbcNodes.ChangeLanguage;
var
  I: Integer;
  ANode: TPHbcNode;
begin
  for I := FList.Count - 1 downto 0 do // Iterate
  begin
    ANode := TPHbcNode(TListItem(FList[I]).Data);
    with ANode do
    begin
      Caption := FNodePage.Manage.GetLanguagesStr(1000 + NodeID, Caption, True); // sCaption;
      Description := FNodePage.Manage.GetLanguagesStr(1100 + NodeID, Description, True);
      TListItem(FList[I]).Caption := Caption;
    end; // with
  end;
end;

procedure TPHbcNodes.AddNode;
var
  AListItem: TListItem;
  ADataSet: TClientDataSet;
  //  PHNode: PPHNode;
  ANode: TPHbcNode;
  //  sCaption: string;
begin
  ADataSet := FNodePage.DataSet;
  if not assigned(ADataSet) then exit;

  ANode := TPHbcNode.Create;
  with ADataSet, ANode do
  begin
    NodeID := FindField('RID').AsInteger;
    NodeID_USE := FindField('RID_USE').AsInteger;
    GroupID := FindField('GroupID').AsInteger;
    //    sCaption := FindField('RCaption').AsString;
    //    if FNodePage.Manage.DataSet_Language.Locate('RID',  1000 + NodeID, []) then sCaption := FNodePage.Manage.DataSet_Language.FieldByName('RCaption').AsString;
    Caption := FNodePage.Manage.GetLanguagesStr(1000 + NodeID, FindField('RCaption').AsString, True); // sCaption;
    //    sCaption := FindField('Description').AsString;
    //    if FNodePage.Manage.DataSet_Language.Locate('RID',  1100 + NodeID, []) then sCaption := FNodePage.Manage.DataSet_Language.FieldByName('RCaption').AsString;
    Description := FNodePage.Manage.GetLanguagesStr(1100 + NodeID, FindField('Description').AsString, True);
    Dir := FindField('Dir').AsString;
    DLLName := FindField('DLLName').AsString;
    FullName := GetFullDLLName(Dir, DLLName);
    ImageIndex := NodeID; // GetImageFromDLL(Dir, DLLName);
    DLLVersion := FindField('DLLVersion').AsString;

    AListItem := FNodePage.ListView[FNodePage.ListViewCount - 1].Items.Add;
    AListItem.Data := ANode;
    AListItem.ImageIndex := ImageIndex; //assign icon
    AListItem.Caption := Caption;
    FList.Add(AListItem);
  end;
  FNodePage.Manage.WriteDebugInfo(Self.ClassName, 'TPHbcNode.Create(' + ANode.Caption + ')');
  //  New(PHNode);
  //  with ADataSet, PHNode^ do
  //  begin
  //    NodeID := FindField('RID').AsInteger;
  //    Caption := FindField('RCaption').AsString;
  //    GroupID := FindField('GroupID').AsInteger;
  //    Description := FindField('Description').AsString;
  //    DLLName := FindField('DLLName').AsString;
  //    ImageIndex := GetImageFromDLL(DLLName);
  //    DLLVersion := FindField('DLLVersion').AsString;
  //
  //    AListItem := FNodePage.ListView[FNodePage.ListViewCount - 1].Items.Add;
  //    AListItem.Data := PHNode;
  //    AListItem.ImageIndex := ImageIndex;
  //    AListItem.Caption := Caption;
  //    FList.Add(AListItem);
  //  end;
end;

procedure TPHbcNodes.FreePHNode;
var
  I: Integer;
  ANode: TPHbcNode;
begin
  for I := FList.Count - 1 downto 0 do // Iterate
  begin
    ANode := TPHbcNode(TListItem(FList[I]).Data);
    //if assigned(PPHNode(TListItem(FList[I]).Data)) then
      //Dispose(PPHNode(TListItem(FList[I]).Data));
    FNodePage.Manage.WriteDebugInfo(Self.ClassName, 'FreePHNode(' + ANode.Caption + ')');
    if assigned(ANode) then
    try
      FreeAndNil(ANode);
    except
      //        on e: exception do
      //          ShowMessage(e.ClassName + '  ' + e.Message);
    end; // try/except
    FList.Delete(I);
  end;
end;

destructor TPHbcNodes.Destroy;
begin
  FreePHNode;
  FreeAndNil(FList);
  FNodePage.Manage.WriteDebugInfo(Self.ClassName, 'Destroy');
  inherited Destroy;
end;

function TPHbcNodes.GetCount: Integer;
begin
  result := FList.Count;
end;
//delete the  appointed node

procedure TPHbcNodes.DeleteNode(aNodeID: Integer);
var
  I: Integer;
  J, AIndex: Integer;
  AListItem: TListItem;
  AListView: TListView;
begin
  AIndex := -1;
  AListItem := nil;
  AListView := nil;
  for I := 0 to FNodePage.ListViewCount - 1 do // Iterate
  begin
    AListView := FNodePage.ListView[I];
    for J := 0 to AListView.Items.Count - 1 do // Iterate
    begin
      AListItem := AListView.Items[J];
      if assigned(TPHbcNode(AListItem.Data)) then
        if TPHbcNode(AListItem.Data).NodeID = ANodeID then
        begin
          FNodePage.Manage.WriteDebugInfo(Self.ClassName, 'DeleteNode(' + TPHbcNode(AListItem.Data).Caption + ')');
          AIndex := J;
          Break;
        end
        else
          AListItem := nil;

    end; // for
  end; // for
  if assigned(AListItem) then
  begin
    //    Dispose(PPHNode(AListItem.Data));
    TPHbcNode(AListItem.Data).Free;
    AListView.Items.Delete(AIndex);
  end;
end;

//function TPHbcNodes.GetNodeByNodeID(ANodeID: Integer): TListItem;
//var
//  I: Integer;
//begin
//  result := nil;
//  for I := 0 to FList.Count - 1 do // Iterate
//  begin
//    if assigned(PPHNode(TListItem(FList[I]).Data)) then
//      if PPHNode(TListItem(FList[I]).Data)^.NodeID = ANodeID then
//      begin
//        result := TListItem(FList[I]);
//        Break;
//      end;
//  end; // for
//end;
//
{ TPHNodePage }

constructor TPHNodePage.Create(AOwner: TWinControl; ADockControl: TdxCustomDockControl;
  AManage: TPHbcManage);
var
  AStyle: TdxNavBarStyleItem;
  //  sCaption: string;
begin
  FList := TList.Create;
  FOwner := AOwner;
  FManage := AManage;
  FManage.WriteDebugInfo(Self.ClassName, 'Create');

  //  FImageList:= TImageList.Create(FOwner);
  //  AddDefaultIcon;

    //create the node panel,which lay the nodes
  //  sCaption := 'BarCode Navigator';
  //  if FManage.DataSet_Language.Locate('RID', 3, []) then sCaption := FManage.DataSet_Language.FieldByName('RCaption').AsString;
  FNodePanel := TdxDockPanel.Create(FOwner);
  with FNodePanel do
  begin
    Enabled := False;
    Visible := False;
    DockTo(ADockControl, dtRight, 0);
    //AllowDock:=[dtLeft];
    AutoHide := True;
    Caption := FManage.GetLanguagesStr(23, 'BarCode Navigator');
    CaptionButtons := []; //cbHide, cbClose];
    AllowFloating := False;
    Enabled := True;
    Visible := True;
    //OnMouseMove := NodePanelMouseMove;
  end;
  FManage.WriteDebugInfo(Self.ClassName, 'FNodePanel.Create');
  //FManage.HookupEvents(FNodePanel);

  //bc navigator
  FNavBar := TdxNavBar.Create(FNodePanel);
  with FNavBar do
  begin
    FNavBar.Parent := FNodePanel;
    View := 10;
    Align := alClient;
    AStyle := FNavBar.Styles.Add;
    with AStyle.Style do
    begin
      BackColor := $00FFB99B;
      BackColor2 := $00FFB99B;
    end;
    FNavBar.StyleBackground := AStyle;
  end; //with
  FManage.WriteDebugInfo(Self.ClassName, 'TdxNavBar.Create');
  FNodes := TPHbcNodes.Create(Self);
  ////  CreateGroupNodes;
end;

procedure TPHNodePage.ChangeLanguage;
var
  I: Integer;
  ANavBarGroup: TdxNavBarGroup;
begin
  FNodePanel.Caption := FManage.GetLanguagesStr(23, 'BarCode Navigator');
  for I := 0 to FNavBar.Groups.Count - 1 do // Iterate
  begin
    ANavBarGroup := FNavBar.Groups.Items[I];
    ANavBarGroup.Caption := FManage.GetLanguagesStr(2000 + ANavBarGroup.Tag, ANavBarGroup.Caption, True);
  end; // for
end;

procedure TPHNodePage.FreeNavBar;
var
  I: Integer;
  ANavBarGroup: TdxNavBarGroup;
begin
  for I := FNavBar.Groups.Count - 1 downto 0 do // Iterate
  begin
    ANavBarGroup := FNavBar.Groups.Items[I];
    FreeAndNil(ANavBarGroup);
  end; // for
end;

destructor TPHNodePage.Destroy;
begin
  FreeAndNil(FNodes);
  FreeListView;
  FreeAndNil(FList);
  //  FreeNavBar;
  FNavBar.Groups.Clear;
  FreeAndNil(FNavBar);
  FreeAndNil(FNodePanel);
  if FDataSet.Active then
    FDataSet.Close;
  FreeAndNil(FDataSet);
  FManage.WriteDebugInfo(Self.ClassName, 'Destroy');
  //  FreeAndNil(FImageList);
  inherited Destroy;
end;

procedure TPHNodePage.FreeListView;
var
  I: Integer;
  AListView: TListView;
begin
  for I := FList.Count - 1 downto 0 do //Iterate
  begin
    AListView := TListView(FList[I]);
    FManage.WriteDebugInfo(Self.ClassName, 'FreeListView(' + IntToStr(AListView.Tag) + ')');
    AListView.OnClick := nil;
    AListView.OnMouseDown := nil;
    AListView.OnMouseMove := nil;
    AListView.Items.Clear;
    FreeAndNil(AListView);
    FList.Delete(I);
  end; //for

end;

function TPHNodePage.GetListView(Index: Integer): TListView;
begin
  result := TListView(FList[Index]);
end;

function TPHNodePage.GetListViewCount: Integer;
begin
  result := FList.Count;
end;
//to show hints

procedure TPHNodePage.ListViewMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FPoint.X := X;
  FPoint.Y := Y;
end;
//show hints

procedure TPHNodePage.ListViewMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  Item: TListItem;
begin
  Item := TListView(Sender).GetItemAt(X, Y);
  TListView(Sender).ShowHint := False;
  TListView(Sender).Hint := '';
  if assigned(Item) then
  begin
    if assigned(TPHbcNode(Item.Data)) then
    begin
      TListView(Sender).Hint := TPHbcNode(Item.Data).Description;
      TListView(Sender).ShowHint := True;
    end;

  end;
end;
//open Query Form:Create new or active

procedure TPHNodePage.OpenDLLForm(Sender: TObject);
var
  Item: TListItem;
begin
  Item := TListView(Sender).GetItemAt(FPoint.X, FPoint.Y);

  if assigned(Item) then
  begin
    if assigned(TPHbcNode(Item.Data)) then
    begin
      FManage.WriteDebugInfo(Self.ClassName, 'OpenDLLForm(' + TPHbcNode(Item.Data).Caption + ')');
      FManage.QueryPage.AddPage(Item);
    end;
  end;
end;

procedure TPHNodePage.NavBarGroupExpanded(Sender: TObject);
var
  I, AIndex: Integer;
begin
  AIndex := TdxNavBarGroup(Sender).Index;
  for I := 0 to FNavBar.Groups.Count - 1 do //Iterate
  begin
    if I <> AIndex then
      FNavBar.Groups.Items[I].Expanded := False;
  end; //for
end;
//create NarBar(ListView) Groups and its Nodes

procedure TPHNodePage.CreateGroupNodes;
var
  GroupID, CurGroupID: Integer;
  ANavBarGroup: TdxNavBarGroup;
  FListView: TListView;
  //  sCaption: string;
begin
  //  if not assigned(FDataSet) then FDataSet:= CreateDataSet;

  //  if not DataSet.Active then
  DataSet.Close;
  DataSet.Open;
  FNavBar.Groups.Clear;

  CurGroupID := -1;
  DataSet.First;
  while not DataSet.Eof do
  begin
    GroupID := DataSet.FindField('GroupID').AsInteger;
    if GroupID <> CurGroupID then
    begin
      ANavBarGroup := FNavBar.Groups.Add; //new NavBar

      //      sCaption := DataSet.FindField('GroupName').AsString;
      //      if FManage.DataSet_Language.Locate('RID', 100 + GroupID, []) then sCaption := FManage.DataSet_Language.FieldByName('RCaption').AsString;
      with ANavBarGroup do
      begin
        Tag := GroupID;
        Caption := FManage.GetLanguagesStr(2000 + GroupID, DataSet.FindField('GroupName').AsString, True);
        UseControl := True;
        ShowControl := True;
        Control.Height := 300;
        Expanded := False;
        Expandable := True;
        OnExpanded := NavBarGroupExpanded;
      end; //with
      FManage.WriteDebugInfo(Self.ClassName, 'CreateGroupNodes.FNavBar(' + ANavBarGroup.Caption + ')');
      //its new ListView
      FListView := TListView.Create(ANavBarGroup.Control);
      FList.Add(FListView);
      with FListView do
      begin
        Parent := ANavBarGroup.Control;
        Ctl3D := False;
        Visible := True;
        ViewStyle := vsIcon;
        LargeImages := FManage.ImageList;
        Align := alClient;
        ShowHint := True;
        //OnChange := nil;
        FListView.ReadOnly := True;
        Tag := DataSet.FindField('GroupID').AsInteger;
      end;
      //assign even
      FListView.OnClick := OpenDLLForm;
      FListView.OnMouseDown := ListViewMouseDown;
      //FListView.OnMouseMove := ListViewMouseMove;
      FManage.WriteDebugInfo(Self.ClassName, 'CreateGroupNodes.FListView(' + IntToStr(FListView.Tag) + ')');
    end;
    FNodes.AddNode; //create node on it
    //    Application.ProcessMessages;
    CurGroupID := GroupID;
    DataSet.Next;
  end; //while
  if FNavBar.Groups.Count > 0 then
    FNavBar.Groups[0].Expanded := True;
end;

//procedure TPHNodePage.SetImageList(Value: TImageList);
//begin
//  FImageList := Value;
//  //FListView.LargeImages := FImageList;
//end;

//create dataset to Group and Node

function TPHNodePage.CreateClientDataSet: TClientDataSet;
var
  AClientDataSet: TClientDataSet;
begin
  AClientDataSet := TClientDataSet.Create(FOwner);
  with AClientDataSet do
  begin
    //RemoteServer := FManage.Connections.BCserver;
    RemoteServer := FManage.Connections.Phgconn;
    ProviderName := 'dspph'; // 'dspPHG';
    CommandText := cGroupNodeSQL;
  end; //with
  FManage.WriteDebugInfo(Self.ClassName, 'CreateClientDataSet(' + AClientDataSet.CommandText + ')');
  result := AClientDataSet;
end;

function TPHNodePage.GetDataSet: TClientDataSet;
begin
  if not assigned(FDataSet) then
  begin
    FDataSet := CreateClientDataSet;
  end;
  result := FDataSet;
end;

function TPHNodePage.GetListViewByGroupID(GroupID: Integer): TListView;
var
  I: Integer;
begin
  result := nil;
  for I := 0 to FList.Count - 1 do // Iterate
  begin
    if TListView(FList[I]).Tag = GroupID then
    begin
      result := TListView(FList[I]);
      Break;
    end;
  end; // for
end;

procedure TPHNodePage.NodePanelMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  FManage.DockingManager.Options := FManage.DockingManager.Options - [doFreeOnClose];
end;

{ TPHIni }

constructor TPHIni.Create(AManage: TPHbcManage);
begin
  FManage := AManage;
  FIniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + cClientIniFile);
  FManage.WriteDebugInfo(Self.ClassName, 'Create(' + cClientIniFile + ')');
end;

destructor TPHIni.Destroy;
begin
  FreeAndNil(FIniFile);
  FManage.WriteDebugInfo(Self.ClassName, 'Destroy(' + cClientIniFile + ')');
  inherited;
end;

function TPHIni.GetINIValue(const Section, Ident, Default: string): string;
var
  AStr: string;
begin
  AStr := FIniFile.ReadString(Section, Ident, '');
  if Trim(AStr) = '' then
  begin
    AStr := Default;
    //FIniFile.WriteString(Section, Ident, Default);
  end;
  FManage.WriteDebugInfo(Self.ClassName, 'GetINIValue(' + AStr + ')');
  result := Trim(AStr);
end;

{ TPHConnection }

constructor TPHConnections.Create(AOwner: TWinControl; AINI: TPHIni; AManage: TPHbcManage);
var
  ACom: string;
begin
  FManage := AManage;
  FINI := AINI;
  FBCserver := TPHSocketConnection.Create(AOwner);
  FPhgconn := TPHSocketConnection.Create(AOwner);
  FManage.WriteDebugInfo(Self.ClassName, 'Create');

  FZPHLIB := TADOConnection.Create(AOwner); //ADO

  InitSocketConnection;
  //======array of TObject====
  SetLength(FarObject, carObject);
  FarObject[0] := FBCserver;
  FarObject[1] := FZPHLIB;
  //FarObject[2] := @PrintToServer;
  //=====array of Variant=====
  SetLength(FarV, carV);
  FarV[0] := '';
  //FarV[2] := 'P' + FINI.GetINIValue('HandHeld', 'COMPort', '1');
  ACom := PHReadRegister('HKEY_LOCAL_MACHINE', '\Software\PH\PCBarcode\1.0', 'HandHeld COMPort');
  if ACom = '' then ACom := '1';
  FarV[2] := 'P' + ACom;
end;

procedure TPHConnections.InitSocketConnection;
  procedure SetSocketConnectionProperty(ASocket: TPHSocketConnection;
    ASection, ADefaultServerName: string);
  begin
    with ASocket, FINI do
    begin
      LoginPrompt := False;
      Host := GetINIValue(ASection, 'Address', cDefaultAddress);
      ServerName := GetINIValue(ASection, 'ServerName', ADefaultServerName);
      //Connected := True;
    end; //with
  end;
  procedure SetADOConnectionProperty(AADO: TADOConnection; ASection: string);
  var
    sProvider, sDataSource, sInitialCatalog: string;
  begin
    with AADO, FINI do
    begin
      sProvider := GetINIValue(ASection, 'Provider', 'MSDASQL.1');
      sDataSource := GetINIValue(ASection, 'DataSource', 'zphlib');
      sInitialCatalog := GetINIValue(ASection, 'InitialCatalog', 'S104BGHM');
      LoginPrompt := False;
      CommandTimeout := StrToIntDef(GetINIValue(ASection, 'CommandTimeout', '60'), 60);
      ConnectionTimeout := StrToIntDef(GetINIValue(ASection, 'ConnectionTimeout', '60'), 60);
      ConnectionString := 'Provider=' + sProvider + ';Password=mq3hx6gc3t;'
        + 'Persist Security Info=True;User ID=ODBC;Data Source=' + sDataSource + ';Initial Catalog=' + sInitialCatalog;
    end;
  end;
begin
  SetSocketConnectionProperty(FBCserver, cBCserverSection, cBCserverDefaultServerName);
  SetSocketConnectionProperty(FPhgconn, cPhgconnSection, cPhgconnDefaultServerName);
  SetADOConnectionProperty(FZPHLIB, cZPHLIBSection); //ADO
  FManage.WriteDebugInfo(Self.ClassName, 'InitSocketConnection');
end;
// 'Provider=MSDASQL.1;Password=mq3hx6gc3t;Persist Security Info=True;User ID=ODBC;Data Source=zphlib'

destructor TPHConnections.Destroy;
begin
  if assigned(FBCserver) then
  begin
    //    if FBCserver.Connected then FBCserver.Close;
    FreeAndNil(FBCserver);
  end;
  if assigned(FPhgconn) then
  begin
    //    if FPhgconn.Connected then FPhgconn.Close;
    FreeAndNil(FPhgconn);
  end;
  if assigned(FZPHLIB) then
  begin
    //    if FZPHLIB.Connected then FZPHLIB.Close;
    FreeAndNil(FZPHLIB);
  end;
  SetLength(FarObject, 0);
  SetLength(FarV, 0);
  FManage.WriteDebugInfo(Self.ClassName, 'Destroy');
  inherited;
end;

{ TPHbcManage }
//write the debug infor to a file

procedure TPHbcManage.WriteDebugInfo(ASubSection, AStr: string);
begin
  {$IFDEF DoDebug}
  Inc(FDebugCount);
  FDebugINI.WriteString(cDebugSetion, IntToStr(FDebugCount), '[' + ASubSection + '] ' + AStr);
  {$ENDIF}
end;

constructor TPHbcManage.Create(AOwner: TWinControl);
var
  AFile: string;
begin
  {$IFDEF DoDebug}
  AFile := ExtractFilePath(Application.ExeName) + cDebugIniFile;
  if FileExists(AFile) then
    DeleteFile(AFile);
  FDebugINI := TIniFile.Create(AFile);
  FDebugCount := 0;
  {$ENDIF}
  try
    if not DirectoryExists(cHandHeldPath) then ForceDirectories(cHandHeldPath);
    AFile := ExtractFilePath(Application.ExeName) + cFtpLocalDir;
    if not DirectoryExists(AFile) then ForceDirectories(AFile);
  except
    //    on e: Exception do
    //      ShowMessage(AFile+' '+e.Message);
  end; // try/except

  FOwner := AOwner;
  //  FInMainForm := bMainForm;
  FINI := TPHIni.Create(Self);
  FConnections := TPHConnections.Create(AOwner, FINI, Self);
  //  FUserRights := [];
  FLogin := False;
  FbcRights := TPHbcRights.Create(Self);
end;

function TPHbcManage.CreateClientDataSet: TClientDataSet;
var
  AClientDataSet: TClientDataSet;
begin
  AClientDataSet := TClientDataSet.Create(FOwner);
  with AClientDataSet do
  begin
    RemoteServer := FConnections.BCserver;
    ProviderName := 'dspPHG';
    //    CommandText := cGroupNodeSQL;
  end; //with
  WriteDebugInfo(Self.ClassName, 'CreateClientDataSet(' + AClientDataSet.CommandText + ')');
  result := AClientDataSet;
end;

function TPHbcManage.GetDataSet_Language: TClientDataSet;
begin
  if not assigned(FDataSet_Language) then
  begin
    FDataSet_Language := CreateClientDataSet;
  end;
  result := FDataSet_Language;
end;

procedure TPHbcManage.GetLanguages;
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

function TPHbcManage.GetLanguagesStr(RID: Integer; sDefautl: string; bGlobal: boolean): string;
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
      if Locate('RUnit;RID', VarArrayOf([FRUnit, RID]), []) then
        result := FieldByName('RCaption').AsString
      else
        result := sDefautl;
    end;
  end;
end;

procedure TPHbcManage.InitManager;
begin
  RUnit := 'Main';
  //  FImageList := TImageList.Create(FOwner);
  //  AddDefaultIcon;

  FDockingManager := TdxDockingManager.Create(FOwner);
  WriteDebugInfo(Self.ClassName, 'DockingManager.Create');
  InitDockingManager;
  //the whole pages Docking in it
  FDockSite := TdxDockSite.Create(FOwner as TCustomForm);
  //HookupEvents(FDockSite);
  with FDockSite do
  begin
    Parent := FOwner;
    Align := alClient;
    Visible := True;
  end; // with
  WriteDebugInfo(Self.ClassName, 'FDockSite.Create');
  //順序不能顛倒
  FQueryPage := TPHQueryPage.Create(FOwner, FDockSite, Self);
  FNodePage := TPHNodePage.Create(FOwner, FDockSite, Self);
end;

procedure TPHbcManage.FreePartClass;
begin
  FreeAndNil(FNodePage);
  FreeAndNil(FQueryPage);
  FreeAndNil(FDockSite);
  FreeAndNil(FDockingManager);
  //  FreeAndNil(FImageList);
  FreeAndNil(FDataSet_Language);
  FreeAndNil(FbcRights);
end;

destructor TPHbcManage.Destroy;
begin
  FreePartClass;
  //  if FInMainForm then
  //  begin

  //    FreeAndNil(FNodePage);
  //    FreeAndNil(FQueryPage);
  //    FreeAndNil(FDockSite);
  //    FreeAndNil(FDockingManager);
  //    FreeAndNil(FImageList);
  //  end;
  FreeAndNil(FINI);
  FreeAndNil(FConnections);
  WriteDebugInfo(Self.ClassName, 'Destroy');
  {$IFDEF DoDebug}
  FreeAndNil(FDebugINI);
  {$ENDIF}
  inherited Destroy;
end;

procedure TPHbcManage.InitDockingManager;
begin
  with FDockingManager do
  begin
    Color := clBtnFace;
    DefaultHorizContainerSiteProperties.Dockable := True;
    DefaultHorizContainerSiteProperties.ImageIndex := -1;
    DefaultVertContainerSiteProperties.Dockable := True;
    DefaultVertContainerSiteProperties.ImageIndex := -1;
    DefaultTabContainerSiteProperties.AllowFloating := False;
    DefaultTabContainerSiteProperties.CaptionButtons := [cbClose]; // [cbClose]; //
    DefaultTabContainerSiteProperties.Dockable := True;
    DefaultTabContainerSiteProperties.ImageIndex := -1;
    Images := FImageList; //
    Options := [doActivateAfterDocking, doFreeOnClose, doTabContainerHasCaption, doSideContainerCanAutoHide, doTabContainerCanInSideContainer];
    ViewStyle := vsNET;
  end;
  WriteDebugInfo(Self.ClassName, 'Init DockingManager');
end;

procedure TPHbcManage.AddDefaultIcon;
var
  AICON: TIcon;
  Hicon: THandle;
begin
  AICON := TIcon.Create;
  try
    Hicon := Loadicon(hinstance, Pchar('SECONDICO'));
    if Hicon <> 0 then
    begin
      AIcon.Handle := Hicon;
      FImageList.AddIcon(AIcon);
    end;
    WriteDebugInfo(Self.ClassName, 'AddDefaultIcon');
    Hicon := Loadicon(hinstance, Pchar('FIRSTICO'));
    if Hicon <> 0 then
    begin
      AIcon.Handle := Hicon;
      FImageList.AddIcon(AIcon);
    end;
  finally // wrap up
    FreeAndNil(AICON);
  end; // try/finally
end;

procedure TPHbcManage.HideDockControl(Sender: TdxDockSite;
  AControl: TdxCustomDockControl);
begin
  //StorePersistentInfo(AControl);
end;

procedure TPHbcManage.ShowDockControl(Sender: TdxDockSite;
  AControl: TdxCustomDockControl);
begin
  //RestorePersistentInfo(AControl);
end;

procedure TPHbcManage.CreateFloatSite(
  Sender: TdxCustomDockControl; AFloatSite: TdxFloatDockSite);
begin
  //HookupEvents(AFloatSite);
end;

procedure TPHbcManage.CreateTabContainer(
  Sender: TdxCustomDockControl; ATabContainer: TdxTabContainerDockSite);
begin
  //HookupEvents(ATabContainer);
end;

procedure TPHbcManage.CreateSiteContainer(
  Sender: TdxCustomDockControl; ASideContainer: TdxSideContainerDockSite);
begin
  //HookupEvents(ASideContainer);
end;

procedure TPHbcManage.StartDock(Sender: TdxCustomDockControl; X,
  Y: Integer);
begin
 // StorePersistentInfo(Sender);
end;

procedure TPHbcManage.EndDock(Sender: TdxCustomDockControl;
  Zone: TdxZone; X, Y: Integer);
begin
  //RestorePersistentInfo(Sender);
end;

procedure TPHbcManage.AutoHideChanged(
  Sender: TdxCustomDockControl);
begin
 // RestorePersistentInfo(Sender);
end;

procedure TPHbcManage.AutoHideChanging(
  Sender: TdxCustomDockControl);
begin
  //StorePersistentInfo(Sender);
end;

procedure TPHbcManage.HookupEvents(Sender: TdxCustomDockControl);
begin
  if Sender is TdxDockSite then
  begin
    TdxDockSite(Sender).OnShowControl := ShowDockControl;
    TdxDockSite(Sender).OnHideControl := HideDockControl;
  end;
  Sender.OnAutoHideChanged := AutoHideChanged;
  Sender.OnAutoHideChanging := AutoHideChanging;
  Sender.OnEndDocking := EndDock;
  Sender.OnStartDocking := StartDock;
  Sender.OnCreateTabContainer := CreateTabContainer;
  Sender.OnCreateSideContainer := CreateSiteContainer;
  Sender.OnCreateFloatSite := CreateFloatSite;
end;

procedure TPHbcManage.SetLogin(Value: boolean);
var
  AClientDataSet: TClientDataSet;
begin
  FLogin := Value;
  if Value then
  begin
    //    FUserRights := [];
    AClientDataSet := TClientDataSet.Create(nil);
    try
      with AClientDataSet do
      begin
        RemoteServer := FConnections.BCserver;
        ProviderName := 'dspPHG';
        Close;
        //        CommandText := 'select * from SideProgram_USER where UID=' + QuotedStr(FUserName)+' and SideProgram='+QuotedStr(UpperCase(cSideProgram));
        CommandText := 'select IsAdmin from SideProgram_USER'
          + ' where UID=' + QuotedStr(FUserName); //+' and SideProgram='+QuotedStr(UpperCase(cSideProgram));
        Open;
        //get IsAdmin:
        if RecordCount = 1 then
        begin
          IsAdmin := FieldByName('IsAdmin').AsBoolean;
          //urAdmin, urLabelPrint, urReturnMeterial, urPickingGatePass, urStockTake
  //          if FieldByName('UR1').AsBoolean then FUserRights := FUserRights + [urAdmin];
  //          if FieldByName('UR2').AsBoolean then FUserRights := FUserRights + [urLabelPrint];
  //          if FieldByName('UR3').AsBoolean then FUserRights := FUserRights + [urReturnMeterial];
  //          if FieldByName('UR4').AsBoolean then FUserRights := FUserRights + [urPickingGatePass];
  //          if FieldByName('UR5').AsBoolean then FUserRights := FUserRights + [urStockTake];
        end
        else
          IsAdmin := False;
        //get all rights:
//        Close;
//        CommandText := 'select * from PB_Power where UID=' + QuotedStr(FUserName);
//        Open;

      end; //with

      bcRights.IsAdmin := IsAdmin;
      //bcRights.UserName := UserName;

      WriteDebugInfo(Self.ClassName, 'GetUserRight(' + AClientDataSet.CommandText + ')');
    finally // wrap up
      FreeAndNil(AClientDataSet);
    end; // try/finally
  end;
end;

procedure TPHbcManage.SetLanguageID(Value: Integer);
begin
  FLanguageID := Value;
  FConnections.arV[1] := FLanguageID;
end;

procedure TPHbcManage.SetUserName(Value: string);
begin
  FUserName := Value;
  FConnections.arV[0] := FUserName;
end;

procedure TPHbcManage.SetRUnit(Value: string);
begin
  FRUnit := UpperCase(Value);
  GetLanguages;
end;

procedure TPHbcManage.ChangeLanguage;
begin
  NodePage.ChangeLanguage;
  NodePage.Nodes.ChangeLanguage;
  QueryPage.ChangeLanguage;
end;

procedure TPHbcManage.SetSite(Value: string);
begin
  FSite := Value;
  FConnections.arV[4] := FSite;
end;

procedure TPHbcManage.SetLookAndFeelKind(Value: TcxLookAndFeelKind);
begin
  FLookAndFeelKind := Value;
  FConnections.arV[5] := FLookAndFeelKind;
end;

procedure TPHbcManage.SetLookAndFeelNativeStyle(Value: boolean);
begin
  FLookAndFeelNativeStyle := Value;
  FConnections.arV[6] := FLookAndFeelNativeStyle;
end;

procedure TPHbcManage.SetIsAdmin(Value: boolean);
begin
  FIsAdmin := Value;
  FConnections.arV[7] := FIsAdmin;
end;

{ TPHbcRights }

constructor TPHbcRights.Create(AManage: TPHbcManage);
begin
  FManage := AManage;
  //  FList := TList.Create;
end;

destructor TPHbcRights.Destroy;
begin
  SetLength(FarUserRights, 0);
  //  FreeAndNil(FList);
  inherited;
end;

function TPHbcRights.GetUserRights(Index: Integer): TUserRights;
begin
  if (Index >= Low(FarUserRights)) and (Index <= High(FarUserRights)) then
    result := TUserRights(FarUserRights[Index])
  else
    result := [];
end;

procedure TPHbcRights.SetIsAdmin(const Value: boolean);
begin
  FIsAdmin := Value;
  GetUserAllRights;
end;

procedure TPHbcRights.GetUserAllRights;
var
  cdsModule, cdsPower: TClientDataSet;
  MID, FID: Integer;
begin
  cdsModule := TClientDataSet.Create(nil);
  cdsPower := TClientDataSet.Create(nil);
  try
    cdsModule.RemoteServer := FManage.Connections.BCserver;
    cdsModule.ProviderName := 'dspPHG';
    cdsPower.RemoteServer := FManage.Connections.BCserver;
    cdsPower.ProviderName := 'dspPHG';
    //get all rights:
    with cdsPower do
    begin
      Close;
      CommandText := 'select b.MID,b.FID from PB_Power a,PB_ModuleFunc b where a.UID=' + QuotedStr(FManage.UserName)
        + ' and a.Enable=1 and a.RID=b.RID';
      Open;
    end; // with
    //    FUserRights := [];
    //    FList.Add(FUserRights); //FList[0]
    with cdsModule do
    begin //while 1
      Close;
      CommandText := 'select MID from PB_Module order by MID';
      Open;
      First;
      while not Eof do
      begin // while 1
        MID := FieldByName('MID').AsInteger;
        FUserRights := [];
        if IsAdmin then
          FUserRights := [urAdmin];
        with cdsPower do
        begin // with 2
          Filtered := False;
          Filter := 'MID=' + IntToStr(MID);
          Filtered := True;
          First;
          while not Eof do
          begin // while 2
            FID := FieldByName('FID').AsInteger;
            FUserRights := FUserRights + [TUserRight(FID)];
            Next;
          end; // while 2
        end; // with 2
        SetLength(FarUserRights, MID + 1);
        FarUserRights[MID] := FUserRights;
        //        FList.Add(FUserRights);
        Next;
      end; // while 1
    end; //with  1
    FManage.WriteDebugInfo(Self.ClassName, 'GetUserAllRights(' + FManage.UserName + ')');
  finally // wrap up
    FreeAndNil(cdsModule);
    FreeAndNil(cdsPower);
  end; // try/finally
end;

{ TPHSocketConnection }

procedure TPHSocketConnection.DoError(E: Exception);
begin
  // inherited;
end;

end.

