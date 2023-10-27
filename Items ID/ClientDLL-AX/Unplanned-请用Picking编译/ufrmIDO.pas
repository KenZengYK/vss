unit ufrmIDO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxPC, ExtCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, DateUtils,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, DB, ADODB, DBClient, dxUxTheme,
  Provider, cxContainer, cxEdit, cxGraphics, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxDropDownEdit, cxCalendar, cxGroupBox, cxSpinEdit, cxTimeEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCheckBox,cxDateUtils,
  cxCurrencyEdit, cxLookAndFeelPainters, ComCtrls, cxGridCustomPopupMenu,
  cxGridPopupMenu;

type
  TfrmIDO = class(TForm)
    cxPageControl: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    btnSelect: TcxButton;
    btnCancel: TcxButton;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn8: TcxGridDBColumn;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ADOQuery2: TADOQuery;
    cxTabSheet2: TcxTabSheet;
    Panel2: TPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Label1: TLabel;
    Label2: TLabel;
    cxGrid2DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn6: TcxGridDBColumn;
    btnOK: TcxButton;
    ClientDataSet_Temp: TClientDataSet;
    DataSource_Temp: TDataSource;
    btnSelectAll: TcxButton;
    btnSelectNone: TcxButton;
    cxGrid1DBTableView1DBColumn9: TcxGridDBColumn;
    Label3: TLabel;
    cxGrid2DBTableView1DBColumn7: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn8: TcxGridDBColumn;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    pnl_select: TPanel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxGrid3DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid3DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid3DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid3DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn10: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn11: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn12: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn9: TcxGridDBColumn;
    btnDefaultSelect: TcxButton;
    cxGrid1DBTableView1DBColumn13: TcxGridDBColumn;
    cxGrid2DBTableView1Jlr: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn14: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn15: TcxGridDBColumn;
    cxTabSheet3: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1IsCheck: TcxGridDBColumn;
    cxGrid1DBTableView1ItemCode: TcxGridDBColumn;
    cxGrid1DBTableView1LOTID: TcxGridDBColumn;
    cxGrid1DBTableView1Stock_Room: TcxGridDBColumn;
    cxGrid1DBTableView1CurrentQTY: TcxGridDBColumn;
    cxGrid1DBTableView1AllocateQTY: TcxGridDBColumn;
    cxGrid1DBTableView1DTLC: TcxGridDBColumn;
    cxGrid1DBTableView1SDAT: TcxGridDBColumn;
    cxGrid1DBTableView1STIM: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel4: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    Panel3: TPanel;
    btnGetSplitID: TcxButton;
    cxButton7: TcxButton;
    cxGroupBox5: TcxGroupBox;
    editCompany: TcxTextEdit;
    cxGroupBox1: TcxGroupBox;
    Label4: TLabel;
    editDT_Start: TcxDateEdit;
    Label5: TLabel;
    editDT_End: TcxDateEdit;
    cxGrid1DBTableView1DBColumn16: TcxGridDBColumn;
    ADOQuery3: TADOQuery;
    DataSource2: TDataSource;
    btnPrintLabel: TcxButton;
    ClientDataSet_Temp1: TClientDataSet;
    cxGridDBTableView1UOM: TcxGridDBColumn;
    cxGridDBTableView1Location: TcxGridDBColumn;
    cxGridDBTableView1HDO_NO: TcxGridDBColumn;
    cxGridDBTableView1PHISM: TcxGridDBColumn;
    cxGridDBTableView1ColorShade: TcxGridDBColumn;
    editTime_Start: TcxTimeEdit;
    editTime_End: TcxTimeEdit;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn10: TcxGridDBColumn;
    editItemCode: TcxTextEdit;
    editProject: TcxTextEdit;
    Label6: TLabel;
    Label7: TLabel;
    cxGrid2DBTableView1DBColumn11: TcxGridDBColumn;
    cxGrid2DBTableView1_IsCheck: TcxGridDBColumn;
    cxGrid2DBTableView1_BStatus: TcxGridDBColumn;
    cxGrid2DBTableView1_CStatus: TcxGridDBColumn;
    cxGrid2DBTableView1_ERPSuccess: TcxGridDBColumn;
    Label8: TLabel;
    btnIDAddA: TcxButton;
    cxGrid1DBTableView1PGMN35: TcxGridDBColumn;
    Panel5: TPanel;
    btnSelectAll_1: TcxButton;
    btnSelectNone_1: TcxButton;
    btnDeleteIDs: TcxButton;
    Label9: TLabel;
    editIDO: TcxTextEdit;
    ClientDataSet_Temp2: TClientDataSet;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1OrigQTY: TcxGridDBColumn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    btnExporttoXLS: TcxButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGroupBox2: TcxGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    date_Issue_From: TcxDateEdit;
    date_Issue_To: TcxDateEdit;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1PARENTWO: TcxGridDBColumn;
    cxGrid2DBTableView1PARENTWO: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure ClientDataSet1AfterOpen(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnSelectNoneClick(Sender: TObject);
    procedure cxGrid3DBTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid1DBTableView1DBColumn9PropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGrid2DBTableView1DBColumn5GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure btnDefaultSelectClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnGetSplitIDClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure btnPrintLabelClick(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxButtonEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid2DBTableView1_BStatusGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGrid2DBTableView1_ERPSuccessGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxGrid2DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnIDAddAClick(Sender: TObject);
    procedure btnSelectAll_1Click(Sender: TObject);
    procedure btnSelectNone_1Click(Sender: TObject);
    procedure btnDeleteIDsClick(Sender: TObject);
    procedure btnExporttoXLSClick(Sender: TObject);
  private
    { Private declarations }
    FCONO, FProjectNo, FWorder, FIssuedSelect: string;
    FCanDbClick: boolean;
    FSelectRowCount: Integer;
    //FIDO2Confirm: boolean;
    FQueryIDO: boolean;
    FIDOMatching: boolean;
    procedure SelectIDOData;
    procedure DoSelectAllRecord(bAll: Integer);
    function SetVisibleAndGetSQL(ButtonEdit: TcxButtonEdit): string;
    procedure SetSelectRowCount(Value: Integer);
    procedure SelectAllSplit(aValue: Integer);
    procedure DoSelectAllRecord_UnlockID(aValue: Integer);
    function GetORIGQTYFromFinalLabel(CompanyNo, Barcode, SKU, STOCKROOM, HDONO: string): Double;
    procedure LabelPrintERP(iCopies: Integer; bCollateCopies: boolean; bcPrinter: string);
    procedure PB_PrintLabelList();
    procedure SelectIsPrint();
    procedure SetQueryIDOVisibleColumn();
    procedure cxGridDBTableView_CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

    procedure OK_IDMatchingClick(Sender: TObject);
    function UnlockID(AIDO, ALOTID, ACONO, AWord, Itemcode, Prjno: string; bIsWarehouse: boolean): boolean;
    procedure IDOMatchingLog(ACONO, AIDO, ALOTID, AWord, APrjno, AUSER: string);
    procedure cxGridSaveAs(cxGrid: TcxGrid; aTag: Integer);
  public
    { Public declarations }
    property SelectRowCount: Integer read FSelectRowCount write SetSelectRowCount;
    procedure SetLanguageStr;
  end;

var
  frmIDO: TfrmIDO;
function DoSelectMaterial(ACONO, AProjectNo, AWorder: string; isAdmin: boolean): boolean;
function DoIDOQuery(bIDO: boolean): boolean;
function DoSplitIDList(): boolean;
function DoIDOMatching: boolean;

implementation

uses ufrmMain, uTools, ufrmDialog, cxExportGrid4Link;

{$R *.dfm}

function DoSelectMaterial(ACONO, AProjectNo, AWorder: string; isAdmin: boolean): boolean; //bIDO2Confirm: boolean;
begin
  result := False;
  frmIDO := TfrmIDO.Create(nil);
  with frmIDO do
  begin
    try
      Caption := frmMain.GetLanguagesStr(24, 'UPI') + '-' + frmMain.GetLanguagesStr(29, 'Select Material');
      //+ frmMain.GetLanguagesStr(89, '(Tips: the Record where BackGround Color is Red Cannot Selected)');
      cxPageControl.ActivePageIndex := 0;
      FCONO := ACONO;
      FProjectNo := AProjectNo;
      FWorder := AWorder;
      //FIDO2Confirm := bIDO2Confirm;
      btnIDAddA.Visible := isAdmin;
      cxGrid1DBTableView1PGMN35.Visible := isAdmin;
      cxGrid1DBTableView1.OnFocusedRecordChanged := cxGrid1DBTableView1FocusedRecordChanged;
      SelectIDOData;
      if ShowModal = IDOK then
      begin
        result := True;
      end;
    finally // wrap up
      FreeAndNil(frmIDO);
    end; // try/finally
  end; // with
end;

function DoIDOQuery(bIDO: boolean): boolean;
begin
  result := False;
  frmIDO := TfrmIDO.Create(nil);
  with frmIDO do
  begin
    try
      FQueryIDO := bIDO;
      SetQueryIDOVisibleColumn;
      if FQueryIDO then
      begin
        cxGrid2DBTableView1.OnCustomDrawCell := cxGridDBTableView_CustomDrawCell;
        cxGrid2DBTableView1.OnFocusedRecordChanged := cxGrid2DBTableView1FocusedRecordChanged;
      end;
      Caption := frmMain.GetLanguagesStr(24, 'UPI') + '-' + frmMain.GetLanguagesStr(30, 'Query');
      cxPageControl.ActivePageIndex := 1;
      if ShowModal = IDOK then
      begin
        result := True;
      end;
    finally // wrap up
      FreeAndNil(frmIDO);
    end; // try/finally
  end; // with
end;

function DoIDOMatching: boolean;
begin
  result := False;
  frmIDO := TfrmIDO.Create(nil);
  with frmIDO do
  begin
    try
      FIDOMatching := True;
      FQueryIDO := True;

      SetQueryIDOVisibleColumn;
      cxGrid2DBTableView1.OnCustomDrawCell := nil;
      cxGrid2DBTableView1.OnFocusedRecordChanged := nil;

      btnOK.OnClick := OK_IDMatchingClick;
      Label8.Visible := False;
      btnDeleteIDs.Visible := True;
      Panel5.Visible := True;

      Caption := 'IDO Matching';
      cxPageControl.ActivePageIndex := 1;
      if ShowModal = IDOK then
      begin
        result := True;
      end;
    finally // wrap up
      FreeAndNil(frmIDO);
    end; // try/finally
  end; // with
end;

function DoSplitIDList(): boolean;
begin
  result := False;
  frmIDO := TfrmIDO.Create(nil);
  with frmIDO do
  begin
    try
      Caption := frmMain.GetLanguagesStr(24, 'UPI') + '-' + frmMain.GetLanguagesStr(90, 'Split ID List');
      cxPageControl.ActivePageIndex := 2;

      editDT_Start.Date := Date;
      editDT_End.Date := Date;
      editTime_Start.Time := StrToTime('00:00:01');
      editTime_End.Time := Now;

      if ShowModal = IDOK then
      begin
        result := True;
      end;
    finally // wrap up
      FreeAndNil(frmIDO);
    end; // try/finally
  end; // with
end;

//select data from as400

procedure TfrmIDO.SelectIDOData;
  function GetTheQty(BH: string): double;
  var
    bHasRecord: boolean;
  begin
    with ClientDataSet_Temp do
    begin
      //      if FIDO2Confirm then
     // begin
      close;
      params.clear;
      params.createparam(ftString, 'zdh', ptinput);
      params.createparam(ftString, 'idno', ptinput);
      params.createparam(ftString, 'BH', ptinput);
      params.createparam(ftString, 'BH1', ptinput);
      params.createparam(ftString, 'sopno1', ptinput);
      params.createparam(ftString, 'BH2', ptinput);
      params.createparam(ftString, 'sopno2', ptinput);
      //commandtext := 'select Count(*) from ido1_Unplanned a,ido2_Unplanned b'
      //  + ' where a.bh=b.bh and b.zdh=:zdh  and b.idno=:idno and ((b.bh=:BH and b.status=' + IntToStr(Ord(bcsIDOAffirm)) + ')'
      //  + '  OR (b.bh<>:bh1 and a.sopno=:sopno ))';
      commandtext := 'select Count(*) from ido1_Unplanned a,ido2_Unplanned b'
        + ' where a.bh=b.bh and b.zdh=:zdh  and b.idno=:idno and ((b.bh=:BH and b.status=' + IntToStr(Ord(bcsIDOAffirm)) + ')'
        + '  OR (b.bh<>:bh1 and a.sopno=:sopno1 and b.status=' + IntToStr(Ord(bcsNew)) + ')'
        + '  OR (b.bh<>:bh2 and a.sopno=:sopno2 and b.status=' + IntToStr(Ord(bcsIDOAffirm))
        + ' and not exists (select * from PB_GATEPASS_Unplanned C where ERPSuccess=1 and B.BH=C.IDO AND B.IDNO=C.LOT_ID'
        + ' AND B.ZDH=C.WORK_ORDER AND B.WL=C.ITEM_CODE AND A.CONO=C.COMPANY AND B.STOCKROOM=C.STOCKROOM)' + ')'
        + ')';

      //+' where (bh=:BH and zdh=:zdh  and idno=:idno  and status=' + IntToStr(Ord(bcsIDOAffirm)) + ')'
      //+'  OR (bh<>:bh1 and zdh=:zdh1 and idno=:idno1 and sopno=:sopno )';
      params[0].AsString := ClientDataSet1.fieldbyname('worder').value;
      params[1].AsString := ClientDataSet1.fieldbyname('idno').value;
      params[2].AsString := BH;
      params[3].AsString := BH;
      params[4].AsString := copy(ClientDataSet1.fieldbyname('sopno').AsString, 1, 7);
      params[5].AsString := BH;
      params[6].AsString := copy(ClientDataSet1.fieldbyname('sopno').AsString, 1, 7);
      Open;
      bHasRecord := Fields[0].AsInteger > 0;
      // end; select Count(*) from ido2_Unplanned where bh<>:bh and sop=:sop and lotid=:lotid and zdh=:zdh

      if bHasRecord then
        result := 0
      else
      begin
        //        close;
        //        params.clear;
        //        params.createparam(ftString, 'zdh', ptinput);
        //        params.createparam(ftString, 'idno', ptinput);
        //        params.createparam(ftString, 'BH', ptinput);
        //        params.createparam(ftString, 'BH1', ptinput);
        //        commandtext := 'select sum(qty) as tqty from ido2_Unplanned a'
        //          + ' where  zdh=:zdh and idno=:idno'
        //          + ' and ((bh<>:bh) or (bh=:BH1 and status=' + IntToStr(Ord(bcsIDOAffirm)) + '))'
        //          + ' and NOT EXISTS(select * from PB_GATEPASS_Unplanned b'
        //          + '   where work_order=zdh and Lot_ID=idno'
        //          + ' and Item_code=wl and b.stockroom=a.stockroom and ERPSuccess=1 and COMPANY=' + QuotedStr(FCONO) + ')';
        //        params[0].AsString := ClientDataSet1.fieldbyname('worder').value;
        //        params[1].AsString := ClientDataSet1.fieldbyname('idno').value;
        //        params[2].AsString := BH;
        //        params[3].AsString := BH;
        //        open;
        //        if fieldbyname('tqty').AsFloat > 0 then
        //          result := (ClientDataSet1.fieldbyname('qty_alloc').AsFloat - fieldbyname('tqty').AsFloat)
        //        else
        result := (ClientDataSet1.fieldbyname('qty_alloc').AsFloat);
      end;
    end;
  end;
  function CheckIsLockByAnotherProject(BH: string; var LockBH: string): boolean;
  begin
    with ClientDataSet_Temp do
    begin
      Close;
      Params.Clear;
      params.createparam(ftString, 'BH', ptinput);
      params.createparam(ftString, 'idno', ptinput);
      params.createparam(ftString, 'sopno', ptinput);
      commandtext := 'select a.* from ido1_Unplanned a,ido2_Unplanned b where a.bh=b.bh and a.bh<>:bh and b.idno=:idno and a.sopno<>:sopno';
      params[0].AsString := BH;
      params[1].AsString := ClientDataSet1.fieldbyname('idno').AsString;
      params[2].AsString := Copy(ClientDataSet1.fieldbyname('SOPNO').AsString, 1, 7);
      Open;
      LockBH := '';
      result := RecordCount > 0;
      if result then
      begin
        First;
        while not eof do
        begin
          LockBH := LockBH + ' ' + FieldByName('BH').AsString;
          Next;
        end;
        LockBH := Trim(LockBH);
      end;
    end; // with
  end;
  procedure UpdateOperdesc;
  begin
    with ClientDataSet_Temp do
    begin
      close;
      params.Clear;
      params.CreateParam(ftString, 'dh', ptinput);
      commandtext := 'select mc from ie_bzgx where dh=:dh';
      params[0].AsString := ClientDataSet1.fieldbyname('opcd').AsString;
      open;
      if (not fieldbyname('mc').isnull) and (fieldbyname('mc').value <> '') then
      begin
        if not (ClientDataSet1.state in [dsEdit, dsInsert]) then
          ClientDataSet1.edit;
        ClientDataSet1.fieldbyname('operdesc').value := fieldbyname('mc').value;
        ClientDataSet1.post;
      end;
    end;
  end;
var
  AQty: Double;
  sopno, BH, LockBH, ASQL: string;
  DT: Integer;
  TM: string;
begin
  Screen.Cursor := crSQLWait;
  try
    dt := StrToInt(FormatDateTime('yyyymmdd', now));
    tm := FormatDateTime('hhnnsszzz', now);
    ASQL := 'Call ZPHLIB_AUL.sp_IDOSelectMaterial_Unplanned_New (' + IntToStr(DT) + ',' + QuotedStr(TM) + ','
      + QuotedStr(FCONO) + ',' + QuotedStr(FProjectNo) + ',' + QuotedStr(FWorder) + ')';
    with ADOQuery2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add(ASQL);
      ExecSQL;
    end; // with
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally

  with ClientDataSet1 do
  begin
    Screen.Cursor := crSQLWait;
    DisableControls;
    ASQL := 'select * from ZPHLIB_AUL.IDOUPI where DT=' + IntToStr(DT) + ' and TM=' + QuotedStr(TM);
    try
      Close;
      Params.Clear;
      CommandText := ASQL;
      Open;

      BH := frmMain.ClientDataSet_ido1.fieldbyname('BH').AsString;
      First;
      while not Eof do
      begin
        if not (state in [dsEdit, dsInsert]) then
          Edit;
        AQty := GetTheQty(BH);
        if AQty > 0 then
        begin
          //CheckIsLockByAnotherProject(BH, LockBH);
          FieldByName('LOCKBH').AsString := ''; // LockBH;
          FieldByName('PGMN35').AsString := '';
          if not fieldbyname('sopno').isnull then
          begin
            sopno := copy(fieldbyname('sopno').AsString, 1, 7);
            fieldbyname('sopno').AsString := sopno;
          end;
          fieldbyname('qty_alloc').AsFloat := AQty; //query1.fieldbyname('qty_alloc').value;
          FieldByName('IsCheck').AsInteger := -1;
          post;
          UpdateOperdesc;
          // Next;
        end
        else
        begin
          //Delete;
          FieldByName('IsCheck').AsInteger := 0;
          post;
        end;
        Next;
      end; // while

      First;
      while not Eof do
      begin
        if FieldByName('IsCheck').AsInteger = 0 then
          Delete
        else
        begin
          //if FieldByName('LOCKBH').AsString <> '' then
          //begin
          //  Edit;
           // FieldByName('IsCheck').AsInteger := 0;
           // Post;
          //end;
          Next;
        end;
      end; // while

      First;
      while not Eof do
      begin
        //if FieldByName('IsCheck').AsInteger = 0 then
       //   Delete
        //else
        //begin
        if FieldByName('LOCKBH').AsString <> '' then
        begin
          Edit;
          FieldByName('IsCheck').AsInteger := 0;
          Post;
        end;
        Next;
        // end;
      end; // while

      btnDefaultSelectClick(nil);
    finally // wrap up
      EnableControls;
      Screen.Cursor := crDefault;
    end; // try/finally
  end; // with
end;

procedure TfrmIDO.FormCreate(Sender: TObject);
begin
  cxPageControl.HideTabs := True;
  ClientDataSet_Temp.RemoteServer := frmMain.SCN;
  ClientDataSet_Temp1.RemoteServer := frmMain.SCN;
  ClientDataSet_Temp2.RemoteServer := frmMain.SCN;
  ADOQuery1.Connection := frmMain.ZPHLIB;
  ADOQuery2.Connection := frmMain.ZPHLIB;
  ADOQuery3.Connection := frmMain.ZPHLIB;
  SetLanguageStr;
  FSelectRowCount := 0;
end;

procedure TfrmIDO.SetLanguageStr;
begin
  inherited;
  FIssuedSelect := frmMain.GetLanguagesStr(83, 'The follow has selected by another IDO:', True);
  Caption := frmMain.pnl_Title.Caption;

  btnSelect.Caption := frmMain.GetLanguagesStr(10, 'OK', True);
  btnCancel.Caption := frmMain.GetLanguagesStr(11, 'Cancel', True);
  btnOK.Caption := frmMain.GetLanguagesStr(10, 'OK', True);
  //cxButton2.Caption := btnCancel.Caption;
  btnSelectAll.Caption := frmMain.GetLanguagesStr(58, 'Select All', True);
  btnSelectNone.Caption := frmMain.GetLanguagesStr(59, 'Select None', True);
  btnSelectAll_1.Caption := btnSelectAll.Caption;
  btnSelectNone_1.Caption := btnSelectNone.Caption;
  cxButton4.Caption := btnSelectAll.Caption;
  cxButton5.Caption := btnSelectNone.Caption;
  btnDefaultSelect.Caption := frmMain.GetLanguagesStr(80, 'Default Select');

  cxGrid1DBTableView1DBColumn1.Caption := frmMain.GetLanguagesStr(38, 'Worder');
  cxGrid1DBTableView1DBColumn2.Caption := frmMain.GetLanguagesStr(47, 'Oper');
  cxGrid1DBTableView1DBColumn3.Caption := frmMain.GetLanguagesStr(41, 'Opdesc');
  cxGrid1DBTableView1DBColumn4.Caption := frmMain.GetLanguagesStr(50, 'Material');
  cxGrid1DBTableView1DBColumn13.Caption := frmMain.GetLanguagesStr(79, 'Supp Refer No.', True);
  cxGrid1DBTableView1DBColumn5.Caption := frmMain.GetLanguagesStr(14, 'LOT Number', True);
  cxGrid1DBTableView1DBColumn6.Caption := frmMain.GetLanguagesStr(85, 'O/S Qty');
  cxGrid1DBTableView1DBColumn7.Caption := frmMain.GetLanguagesStr(15, 'Uom', True);
  cxGrid1DBTableView1DBColumn8.Caption := frmMain.GetLanguagesStr(46, 'Allocate Qty');
  cxGrid1DBTableView1DBColumn9.Caption := frmMain.GetLanguagesStr(39, 'Select', True);
  cxGrid1DBTableView1DBColumn10.Caption := frmMain.GetLanguagesStr(37, 'Project No.');
  cxGrid1DBTableView1DBColumn11.Caption := frmMain.GetLanguagesStr(48, 'SOP No.');
  cxGrid1DBTableView1DBColumn12.Caption := frmMain.GetLanguagesStr(16, 'StockRoom', True);
  cxGrid1DBTableView1DBColumn15.Caption := frmMain.GetLanguagesStr(88, 'Lock By Another SOP');
  cxGrid1DBTableView1DBColumn16.Caption := frmMain.GetLanguagesStr(53, 'Color Shade');
  cxGrid1DBTableView1OrigQTY.Caption := frmMain.GetLanguagesStr(92, 'OrigQTY', True);
  cxGrid2DBTableView1Column1.Caption := frmMain.GetLanguagesStr(56, 'Ufd');
  cxGrid2DBTableView1Column2.Caption := frmMain.GetLanguagesStr(57, 'Mfd');

  cxGrid1DBTableView1PARENTWO.Caption := frmMain.GetLanguagesStr(93, 'Parent WO');
  cxGrid2DBTableView1PARENTWO.Caption := frmMain.GetLanguagesStr(93, 'Parent WO');


  Label1.Caption := frmMain.GetLanguagesStr(14, 'LOT Number', True);
  Label2.Caption := frmMain.GetLanguagesStr(48, 'SOP No.');
  Label3.Caption := frmMain.GetLanguagesStr(7, 'WORK ORDER No.');
  Label6.Caption := frmMain.GetLanguagesStr(13, 'ITEM CODE', True);
  Label7.Caption := frmMain.GetLanguagesStr(37, 'Project No.');

  cxGrid2DBTableView1DBColumn1.Caption := frmMain.GetLanguagesStr(37, 'Project No.');
  //cxGrid2DBTableView1DBColumn2.Caption := GetLanguagesStr(38, 'SOP No.');
  cxGrid2DBTableView1DBColumn3.Caption := frmMain.GetLanguagesStr(38, 'Worder');
  cxGrid2DBTableView1DBColumn4.Caption := frmMain.GetLanguagesStr(6, 'UPI');
  Label9.Caption := cxGrid2DBTableView1DBColumn4.Caption;
  cxGrid2DBTableView1DBColumn11.Caption := frmMain.GetLanguagesStr(13, 'ITEM CODE', True);

  cxGrid2DBTableView1DBColumn6.Caption := frmMain.GetLanguagesStr(38, 'Time', True);
  cxGrid2DBTableView1DBColumn7.Caption := frmMain.GetLanguagesStr(14, 'LOT Number', True);
  cxGrid2DBTableView1DBColumn8.Caption := frmMain.GetLanguagesStr(17, 'COMPANY', True);
  cxGrid2DBTableView1DBColumn9.Caption := frmMain.GetLanguagesStr(16, 'StockRoom', True);
  if FQueryIDO then
  begin
    cxGrid2DBTableView1Jlr.Caption := frmMain.GetLanguagesStr(36, 'Recorder');
    cxGrid2DBTableView1DBColumn5.Caption := frmMain.GetLanguagesStr(23, 'Date', True);
  end
  else
  begin
    cxGrid2DBTableView1Jlr.Caption := frmMain.GetLanguagesStr(30, 'UserName', True);
    cxGrid2DBTableView1DBColumn5.Caption := frmMain.GetLanguagesStr(12, 'Issue Date');
  end;
  cxGrid3DBTableView1DBColumn1.Caption := frmMain.GetLanguagesStr(14, 'LOT Number', True);
  cxGrid3DBTableView1DBColumn2.Caption := frmMain.GetLanguagesStr(48, 'SOP No.');
  cxGrid3DBTableView1DBColumn3.Caption := frmMain.GetLanguagesStr(37, 'Project No.');
  cxGrid3DBTableView1DBColumn4.Caption := frmMain.GetLanguagesStr(7, 'WORK ORDER No.');
  cxButton1.Caption := frmMain.GetLanguagesStr(39, 'Select', True);
  cxButton3.Caption := frmMain.GetLanguagesStr(11, 'Cancel', True);

  cxGroupBox5.Caption := frmMain.GetLanguagesStr(17, 'COMPANY', True);
  cxButton7.Caption := frmMain.GetLanguagesStr(11, 'Cancel', True);
  btnGetSplitID.Caption := frmMain.GetLanguagesStr(10, 'OK', True);
  Label4.Caption := frmMain.GetLanguagesStr(91, 'Start DateTime');
  Label5.Caption := frmMain.GetLanguagesStr(92, 'End DateTime');
  btnPrintLabel.Caption := frmMain.GetLanguagesStr(82, 'Reprint Label');
end;

procedure TfrmIDO.btnSelectClick(Sender: TObject);
  function GetTheQty(aBH, aWORDER, aIDNO: string): Double;
  begin
    with ClientDataSet_Temp do
    begin
      close;
      params.clear;
      params.createparam(ftString, 'zdh', ptinput);
      params.createparam(ftString, 'idno', ptinput);
      params.createparam(ftString, 'BH', ptinput);
      params.createparam(ftString, 'BH1', ptinput);
      //      commandtext := 'select sum(qty) as tqty from ido2_Unplanned '
      //        + ' where  zdh=:zdh and idno=:idno and ((bh<>:bh) or (bh=:BH1 and status=' + IntToStr(Ord(bcsIDOAffirm)) + '))';
      commandtext := 'select sum(qty) as tqty from ido2_Unplanned a'
        + ' where  zdh=:zdh and idno=:idno'
        + ' and ((bh<>:bh) or (bh=:BH1 and status=' + IntToStr(Ord(bcsIDOAffirm)) + '))'
        + ' and NOT EXISTS(select * from PB_GATEPASS_Unplanned b'
        + '   where work_order=zdh and Lot_ID=idno'
        + ' and Item_code=wl and b.stockroom=a.stockroom and ERPSuccess=1 and COMPANY=' + QuotedStr(FCONO) + ')';
      params[0].AsString := aWORDER;
      params[1].AsString := aIDNO;
      params[2].AsString := aBH;
      params[3].AsString := aBH;
      open;
      if fieldbyname('tqty').AsFloat > 0 then
        result := (ClientDataSet1.fieldbyname('qty_alloc').AsFloat - fieldbyname('tqty').AsFloat)
      else
        result := (ClientDataSet1.fieldbyname('qty_alloc').AsFloat);
    end;
  end;
var
  //  oper: Integer;
  BH, idno, pgmn, worder,pwo: string;
  qaresult, ufd, mfd, ColorShade, wz, uwidth, uom, AStockRoom, PHISM, SuppBatch: string;
  cd, AQty: double;
  NotSuccessStr, InspectedFlag, MOVR: string;
begin
  NotSuccessStr := '';

  with ClientDataSet1 do
  begin
    Screen.Cursor := crSQLWait;
    DisableControls;
    try
      //get the checked data
      Filtered := False;
      Filter := 'IsCheck=-1';
      Filtered := True;
      BH := frmMain.ClientDataSet_ido1.fieldbyname('BH').AsString;

      //delete current ido detail(table ido2_Unplanned)of 'BH'
      if (RecordCount > 0) and (frmMain.ClientDataSet_ido2.RecordCount > 0) then
      begin
        frmMain.DoDeleteIDODetail(BH);
        { with ClientDataSet_Temp do
         begin
           close;
           params.clear;
           params.createparam(ftString, 'bh', ptinput);
           commandtext := 'delete from ido2_Unplanned where bh=:bh  and status<>' + IntToStr(Ord(bcsIDOAffirm));
           params[0].AsString := BH;
           execute;
         end;  }
      end;
      //update ido1_Unplanned.sopno
      with frmMain.ClientDataSet_IDO1 do
      begin
        if not (state in [dsEdit, dsInsert]) then edit;

        fieldbyname('cono').AsString := FCONO;
        if (FProjectNo = '') then
          fieldbyname('prjno').AsString := ClientDataSet1.fieldbyname('PRJNO').AsString
        else
          fieldbyname('prjno').AsString := FProjectNo;
        fieldbyname('worder').AsString := FWorder;
        fieldbyname('sopno').AsString := ClientDataSet1.fieldbyname('sopno').AsString;
        post;
      end; // with
      //insert to ido2_Unplanned
      First;
      while not Eof do
      begin
        idno := fieldbyname('idno').AsString;
        worder := ClientDataSet1.fieldbyname('worder').AsString;
        pwo:= fieldbyname('PARENTWO').AsString;
        AStockRoom := fieldbyname('StockRoom').AsString;
        cd := fieldbyname('ch8v84').AsFloat; //useful
        qaresult := fieldbyname('ch6t84').AsString; //pass  15
        ufd := fieldbyname('ch5t84').AsString; //actual width  15
        ColorShade := fieldbyname('ch4t84').AsString; //color shade 15
        wz := fieldbyname('ch9t84').AsString; //location 15
        mfd := fieldbyname('spc235').AsString;  //market width
        uom := fieldbyname('iunt35').AsString; //2
        pgmn := Copy(ClientDataSet1.fieldbyname('mcode').value, 1, 3); //  fieldbyname('pgmn35').AsString; //3
        InspectedFlag := fieldbyname('InspectedFlag').AsString;

        PHISM := fieldbyname('PHISM').AsString;
        SuppBatch := fieldbyname('CH0T84').AsString;
        if not fieldbyname('tlin40').isnull then
          uwidth := fieldbyname('tlin40').AsString
        else
          uwidth := '0.00';
        MOVR := fieldbyname('MOVR').AsString;
        //AQty := GetTheQty(BH, worder, idno);
        AQty := ClientDataSet1.fieldbyname('qty_alloc').AsFloat;
        if AQty > 0 then
        begin
          with ClientDataSet_Temp do
          begin
            close;
            params.clear;
            params.createparam(ftString, 'bh', ptinput);
            params.createparam(ftInteger, 'oper', ptinput);
            params.createparam(ftString, 'idno', ptinput);
            params.createparam(ftString, 'zdh', ptinput);
            params.createparam(ftString, 'wl', ptinput);
            params.createparam(ftString, 'sh', ptinput);
            params.createparam(ftString, 'sz', ptinput);
            params.createparam(ftString, 'qaresult', ptinput);
            params.createparam(ftFloat, 'cd', ptinput);
            params.createparam(ftString, 'ufd', ptinput);
            params.createparam(ftString, 'mfd', ptinput);
            params.createparam(ftFloat, 'qty', ptinput);
            params.createparam(ftString, 'uom', ptinput);
            params.createparam(ftString, 'wz', ptinput);
            params.createparam(ftString, 'opdesc', ptinput);
            params.createparam(ftFloat, 'aqty', ptinput);
            params.createparam(ftString, 'uwidth', ptinput);
            params.createparam(ftString, 'Status', ptinput);
            params.createparam(ftString, 'StockRoom', ptinput);
            params.createparam(ftString, 'pgmn', ptinput);
            params.createparam(ftString, 'PHISM', ptinput);
            params.createparam(ftString, 'SuppBatch', ptinput);
            params.createparam(ftString, 'FUser', ptinput);
            params.createparam(ftString, 'CreateDate', ptinput);
            params.createparam(ftString, 'InspectedFlag', ptinput);
            params.createparam(ftString, 'MOVR', ptinput);
            params.createparam(ftFloat, 'OrigQTY', ptinput);
            params.createparam(ftString, 'PARENTWO', ptinput);
            commandtext := 'insert into ido2_Unplanned(bh,oper,idno,zdh,wl,sh,sz,qaresult,cd,ufd,mfd,qty,uom,wz,opdesc,aqty,uwidth,Status,StockRoom,pgmn,PHISM,SuppBatch,FUser,CreateDate,InspectedFlag,MOVR,OrigQTY,PARENTWO) '
              + 'values(:bh,:oper,:idno,:zdh,:wl,:sh,:sz,:qaresult,:cd,:ufd,:mfd,:qty,:uom,:wz,:opdesc,:aqty,:uwidth,:Status,:StockRoom,:pgmn,:PHISM,:SuppBatch,:FUser,:CreateDate,:InspectedFlag,:MOVR,:OrigQTY,:PARENTWO)';
            Params.ParamByName('bh').AsString := BH;
            Params.ParamByName('oper').AsInteger := ClientDataSet1.fieldbyname('oper').value; //int
            Params.ParamByName('idno').AsString := idno; // ClientDataSet1.fieldbyname('idno').AsString;
            Params.ParamByName('zdh').AsString := worder; // ClientDataSet1.fieldbyname('worder').value; //7
            Params.ParamByName('wl').AsString := ClientDataSet1.fieldbyname('mcode').value;
            Params.ParamByName('sh').AsString := copy(ClientDataSet1.fieldbyname('mcode').value, 10, 3);
            Params.ParamByName('sz').AsString := ColorShade;
            Params.ParamByName('qaresult').AsString := qaresult;
            Params.ParamByName('cd').asfloat := cd;
            Params.ParamByName('ufd').AsString := ufd;
            Params.ParamByName('mfd').AsString := mfd;
            Params.ParamByName('qty').asfloat := AQty; // ClientDataSet1.fieldbyname('QTY_Alloc').value;
            Params.ParamByName('uom').AsString := uom; //2
            Params.ParamByName('wz').AsString := wz;
            Params.ParamByName('opdesc').AsString := ClientDataSet1.fieldbyname('operdesc').value; //30
            Params.ParamByName('aqty').asfloat := AQty; // ClientDataSet1.fieldbyname('QTY_Alloc').value;
            Params.ParamByName('uwidth').AsString := uwidth;
            Params.ParamByName('Status').AsString := IntToStr(Ord(bcsNew));
            Params.ParamByName('StockRoom').AsString := AStockRoom; //2
            Params.ParamByName('pgmn').AsString := pgmn;
            Params.ParamByName('PHISM').AsString := PHISM;
            Params.ParamByName('SuppBatch').AsString := SuppBatch;
            Params.ParamByName('FUser').AsString := frmMain.UID;
            Params.ParamByName('CreateDate').AsString := FormatDateTime('yyyy''-''mm''-''dd hh:nn:ss', now);
            Params.ParamByName('InspectedFlag').AsString := InspectedFlag;
            Params.ParamByName('MOVR').AsString := MOVR;
            Params.ParamByName('OrigQTY').value := ClientDataSet1.fieldbyname('OrigQTY').value;
            Params.ParamByName('PARENTWO').AsString := pwo;
            execute;
          end;

          frmMain.UpdateIDOs2AS400_Exists(FCONO, BH, idno, worder, 'A');

        end
        else
        begin
          NotSuccessStr := NotSuccessStr + #13#10 + 'WorkOrder = ' + worder + ' ; LotID= ' + idno;
        end;
        Next;
      end; // while
      frmMain.ClientDataSet_ido1AfterScroll(frmMain.ClientDataSet_ido1);
    finally // wrap up
      Filtered := False;
      Filter := '';
      EnableControls;
      Screen.Cursor := crDefault;
    end; // try/finally
  end; // with
  if NotSuccessStr <> '' then
  begin
    NotSuccessStr := FIssuedSelect + #13#10 + NotSuccessStr;
    Application.MessageBox(PChar(NotSuccessStr), 'Not Insert Success', MB_OK);
  end;
  ModalResult := IDOK;
end;

procedure TfrmIDO.ClientDataSet1AfterOpen(DataSet: TDataSet);
begin
  SelectRowCount := 0;
  //btnSelect.Enabled := not (DataSet.IsEmpty) and (DataSet.RecordCount > 0);
end;

procedure TfrmIDO.SetSelectRowCount(Value: Integer);
begin
  FSelectRowCount := Value;
  btnSelect.Enabled := FSelectRowCount > 0;
end;

procedure TfrmIDO.btnOKClick(Sender: TObject);
var
  ALotNo, ASopNo, AWorderNo, ASQL, ASQLW, AProject, AItemCode, AIDO, sFormDT, sToDT: string;
  dtFrom, dtTO: TDateTime;
begin
  screen.cursor := crSQLWait;
  with ClientDataSet_Temp do
  begin
    ALotNo := cxButtonEdit1.Text;
    ASopNo := cxButtonEdit2.Text;
    AWorderNo := cxButtonEdit3.Text;
    AProject := editProject.Text;
    AItemCode := editItemCode.Text;
    AIDO := GetIDOFullString(editIDO.Text, 'UPI');
    if AIDO <> '' then editIDO.Text := AIDO;

    dtFrom := date_Issue_From.Date;
    dtTo := date_Issue_To.Date;
    if (dtFrom = NullDate) then dtFrom := dtTo;
    if (dtTo = NullDate) then dtTo := dtFrom;
    sFormDT := '';
    sToDT := '';
    if (dtFrom <> NullDate) then sFormDT := FormatDateTime('yyyy''-''mm''-''dd', dtFrom) ;
    if (dtTo <> NullDate) then sToDT := FormatDateTime('yyyy''-''mm''-''dd', dtTo);

    cxGrid2DBTableView1.OnCustomDrawCell := nil;
    cxGrid2DBTableView1.OnFocusedRecordChanged := nil;
    cxGrid2DBTableView1.DataController.DataSource := nil;
    try
      close;
      params.clear;
      if FQueryIDO then
      begin
        cxGrid2DBTableView1Column1.Visible := True;
        cxGrid2DBTableView1Column2.Visible := True;
        ASQL := 'select a.*,b.idno,b.zdh,b.StockRoom,b.wl,b.Qty, b.status as BStatus,c.status as CStatus,c.erpsuccess, b.status as IsCheck,b.UFD,b.MFD,b.PHISM as SuppRef,b.wz as Location,b.ParentWO '
          + ' from ido1_Unplanned a inner join ido2_Unplanned b on (a.bh=b.bh)'
          + ' left join PB_GATEPASS_Unplanned c on (b.bh=c.ido and b.idno=c.lot_id and b.zdh=c.work_order and b.wl=c.item_code and a.cono=c.company and b.stockroom=c.stockroom)'
          + ' where ';
        ASQL := ASQL + ' (' + QuotedStr(ALotNo) + '='''' or (' + QuotedStr(ALotNo) + '<>'''' and Upper(b.idno) like ' + QuotedStr(ALotNo + '%') + '))';
        //if ALotNo <> '' then ASQL := ASQL + ' and Upper(b.idno) like ' + QuotedStr(ALotNo + '%');
        if ASopNo <> '' then ASQL := ASQL + ' and Upper(a.sopno) like ' + QuotedStr(ASopNo + '%');
        if AWorderNo <> '' then ASQL := ASQL + ' and Upper(b.zdh) like ' + QuotedStr(AWorderNo + '%');
        if AProject <> '' then ASQL := ASQL + ' and Upper(a.Prjno) like ' + QuotedStr(AProject + '%');
        if AItemCode <> '' then ASQL := ASQL + ' and Upper(b.wl) like ' + QuotedStr(AItemCode + '%');
        if AIDO <> '' then ASQL := ASQL + ' and Upper(b.BH) like ' + QuotedStr(AIDO + '%');
        if sFormDT <> '' then ASQL := ASQL + ' and a.rq between ' + QuotedStr(sFormDT) + ' and ' + QuotedStr(sToDT);
      end
      else
      begin
        cxGrid2DBTableView1Column1.Visible := False;
        cxGrid2DBTableView1Column2.Visible := False;
        ASQL := 'select Lot_ID as Idno,Project_NO as Prjno,SOP as sopno,Work_Order as zdh,IDO as bh,  b.UFD,b.MFD,b.status as BStatus,c.status as CStatus,c.erpsuccess,b.Mem,'
          + 'Issued_Date as rq,Company as cono,c.StockRoom,UID as Jlr,ISSUE_QTY as QTY,ITEM_CODE as wl,c.PHISM as SuppRef,c.Location,c.ParentWO'
          + ' from PB_GATEPASS_Unplanned c'
          + ' left join (select b.*,a.cono,a.Mem from ido1_Unplanned a inner join ido2_Unplanned b on (a.bh=b.bh)) b'
          + '   on (b.bh=c.ido and b.idno=c.lot_id and b.zdh=c.work_order and b.wl=c.item_code and b.cono=c.company and b.stockroom=c.stockroom)';
        ASQLW := '';
        if ALotNo <> '' then ASQLW := ASQLW + 'and Lot_ID like ' + QuotedStr(ALotNo + '%') + ' ';
        if ASopNo <> '' then ASQLW := ASQLW + 'and SOP like ' + QuotedStr(ASopNo + '%') + ' ';
        if AWorderNo <> '' then ASQLW := ASQLW + 'and Work_Order like ' + QuotedStr(AWorderNo + '%') + ' ';
        if AProject <> '' then ASQLW := ASQLW + ' and Upper(PROJECT_NO) like ' + QuotedStr(AProject + '%') + ' ';
        if AItemCode <> '' then ASQLW := ASQLW + ' and Upper(ITEM_CODE) like ' + QuotedStr(AItemCode + '%') + ' ';
        if AIDO <> '' then ASQLW := ASQLW + ' and Upper(IDO) like ' + QuotedStr(AIDO + '%');
        if sFormDT <> '' then ASQLW := ASQLW + ' and Issued_Date between ' + QuotedStr(sFormDT) + ' and ' + QuotedStr(sToDT);

        ASQLW := Trim(ASQLW);
        if ASQLW <> '' then ASQL := ASQL + ' where ' + Copy(ASQLW, 4, MaxInt);
        //ShowMessage(ASQLW);
      end;
      commandtext := ASQL;
      open;
      btnExporttoXLS.Enabled := True;
      //if FQueryIDO then
      begin
        cxGrid2DBTableView1.OnCustomDrawCell := frmIDO.cxGridDBTableView_CustomDrawCell;
        cxGrid2DBTableView1.OnFocusedRecordChanged := cxGrid2DBTableView1FocusedRecordChanged;
      end;
    finally
      screen.cursor := crDefault;
      cxGrid2DBTableView1.DataController.DataSource := DataSource_Temp;
    end;
  end;
end;

procedure TfrmIDO.FormDestroy(Sender: TObject);
begin
  cxGrid2DBTableView1.DataController.DataSource := nil;
  ClientDataSet_Temp.RemoteServer := nil;
end;

procedure TfrmIDO.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  //btnOK.Enabled := (cxTextEdit1.Text <> '') or (cxTextEdit2.Text <> '');
end;

procedure TfrmIDO.btnSelectAllClick(Sender: TObject);
begin
  //  cxGrid1DBTableView1.Controller.SelectAllRecords;
  DoSelectAllRecord(-1);
end;

procedure TfrmIDO.DoSelectAllRecord(bAll: Integer);
var
  oper: Integer;
  idno: string;
begin
  with ClientDataSet1 do
  begin
    DisableControls;
    oper := fieldbyname('oper').AsInteger;
    idno := fieldbyname('idno').AsString;
    try
      First;
      while not Eof do
      begin
        if (FieldByName('LOCKBH').AsString = '') then
        begin
          Edit;
          FieldByName('IsCheck').AsInteger := bAll;
          Post;
        end;
        Next;
      end; // while
    finally // wrap up
      Locate('oper;idno', VarArrayOf([oper, idno]), []);
      EnableControls;
      if bAll = -1 then //Check
        SelectRowCount := RecordCount
      else
        SelectRowCount := 0;
    end; // try/finally
  end; // with
end; //

procedure TfrmIDO.btnSelectNoneClick(Sender: TObject);
begin
  //  cxGrid1DBTableView1.Controller.ClearSelection;
  DoSelectAllRecord(0);
end;

procedure TfrmIDO.cxGrid3DBTableView1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //see help ---Grid View Elements--
  FCanDbClick := (Button = mbLeft) and
    (TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y).HitTestCode in [htCell]); //, htIndicator
end;

procedure TfrmIDO.cxGrid3DBTableView1DblClick(Sender: TObject);
begin
  if FCanDbClick then
  begin
    cxButton1Click(Sender);
  end;
end;

procedure TfrmIDO.cxButton1Click(Sender: TObject);
var
  AText: string;
  ButtonEdit: TcxButtonEdit;
begin
  pnl_select.Visible := False;
  AText := frmMain.ClientDataSet_Temp.Fields[0].AsString;
  case pnl_select.Tag of //
    1: ButtonEdit := cxButtonEdit1;
    2: ButtonEdit := cxButtonEdit2;
    3: ButtonEdit := cxButtonEdit3;
  else
    ButtonEdit := cxButtonEdit1;
  end; // case
  ButtonEdit.Text := AText;
  ButtonEdit.SetFocus;

  cxGrid3DBTableView1.DataController.DataSource := nil;
end;

procedure TfrmIDO.cxButton3Click(Sender: TObject);
var
  ButtonEdit: TcxButtonEdit;
begin
  pnl_select.Visible := False;
  case pnl_select.Tag of //
    1: ButtonEdit := cxButtonEdit1;
    2: ButtonEdit := cxButtonEdit2;
    3: ButtonEdit := cxButtonEdit3;
  else
    ButtonEdit := cxButtonEdit1;
  end; // case
  ButtonEdit.SetFocus;
  cxGrid3DBTableView1.DataController.DataSource := nil;
end;

function TfrmIDO.SetVisibleAndGetSQL(ButtonEdit: TcxButtonEdit): string;
var
  AType: Integer;
begin
  AType := TcxButtonEdit(ButtonEdit).Tag;
  cxGrid3DBTableView1DBColumn1.Visible := AType = 1;
  cxGrid3DBTableView1DBColumn2.Visible := AType = 2;
  cxGrid3DBTableView1DBColumn3.Visible := AType = 2;
  cxGrid3DBTableView1DBColumn4.Visible := AType = 3;
  if FQueryIDO then
  begin
    case AType of //
      1: result := 'select distinct b.idno from ido1_Unplanned a,ido2_Unplanned b where a.bh=b.bh order by b.idno';
      2: result := 'select distinct sopno,prjno from ido1_Unplanned   order by sopno';
      3: result := 'select distinct Zdh as worder from ido2_Unplanned   order by worder';
    end; // case
  end
  else
  begin
    case AType of //
      1: result := 'select distinct Lot_ID as idno from PB_GATEPASS_Unplanned order by idno';
      2: result := 'select distinct SOP as sopno,Project_NO as prjno from PB_GATEPASS_Unplanned   order by sopno';
      3: result := 'select distinct Work_Order as worder from PB_GATEPASS_Unplanned   order by worder';
    end; // case
  end;
  pnl_select.Left := TcxButtonEdit(ButtonEdit).Left;
  //pnl_select.Top:= btnDeleteIDs.Top;
  pnl_select.Tag := AType;
  pnl_select.Visible := True;

end;

procedure TfrmIDO.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  ASQL: string;
begin
  ASQL := SetVisibleAndGetSQL(TcxButtonEdit(Sender));
  Application.ProcessMessages;
  Screen.Cursor := crSQLWait;
  cxGrid3DBTableView1.DataController.DataSource := nil;
  try
    with frmMain.ClientDataSet_Temp do
    begin
      Close;
      params.clear;
      CommandText := ASQL;
      Open;
      cxGrid3DBTableView1.DataController.DataSource := frmMain.DataSource_Temp;
    end; // with
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

procedure TfrmIDO.cxGrid1DBTableView1DBColumn9PropertiesEditValueChanged(
  Sender: TObject);
begin
  if ClientDataSet1.FieldByName('IsCheck').AsInteger = -1 then
    Inc(FSelectRowCount)
  else
    Dec(FSelectRowCount);
  SelectRowCount := FSelectRowCount;
end;

procedure TfrmIDO.cxGrid2DBTableView1DBColumn5GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  ADT: TDateTime;
begin
  if AText = '' then exit;
  ADT := StrToDateTimeDef(AText, -700000);
  AText := FormatDateTime('yyyy''/''mm''/''dd', ADT);
end;

procedure TfrmIDO.btnDefaultSelectClick(Sender: TObject);
var
  IDNO: string;
begin
  //BH := frmMain.ClientDataSet_ido1.fieldbyname('BH').AsString;
  with frmMain.ClientDataSet_ido2 do //ClientDataSet1
  begin
    DoSelectAllRecord(0);
    DisableControls;
    ClientDataSet1.DisableControls;
    try
      First;
      while not Eof do
      begin
        if FieldByName('Status').AsInteger = Ord(bcsNew) then
        begin
          IDNO := FieldByName('IDNO').AsString;
          with ClientDataSet1 do
          begin
            if Locate('IDNO', IDNO, []) and (FieldByName('LOCKBH').AsString = '') then
            begin
              Edit;
              FieldByName('IsCheck').AsInteger := -1;
              Post;
            end;
          end; // with
        end;
        Next;
      end; // while
    finally // wrap up
      EnableControls;
      ClientDataSet1.EnableControls;
      SelectRowCount := RecordCount;
    end; // try/finally
  end; // with
end;

procedure TfrmIDO.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARec: TRect;
  ATextToDraw: string;
  LockBH, PGMN35: string;
  AColor: TColor;
  AIndex: Integer;

  procedure SetTextToDraw;
  begin
    ATextToDraw := AViewInfo.GridRecord.DisplayTexts[AViewInfo.Item.Index];
  end;
begin
  inherited;
  //1---Bounds
  SetTextToDraw;
  ARec := AViewInfo.Bounds;
  //2--get Column Index
  LockBH := '';
  PGMN35 := '';
  if TcxGridDBTableView(Sender).GetColumnByFieldName('LOCKBH') <> nil then
  begin
    AIndex := TcxGridDBTableView(Sender).GetColumnByFieldName('LOCKBH').Index;
    if VarIsNull(AViewInfo.GridRecord.Values[AIndex]) then
      LockBH := ''
    else
    begin
      LockBH := VarAsType(AViewInfo.GridRecord.Values[AIndex], varString);
    end;
  end;

  if TcxGridDBTableView(Sender).GetColumnByFieldName('PGMN35') <> nil then
  begin
    AIndex := TcxGridDBTableView(Sender).GetColumnByFieldName('PGMN35').Index;
    if VarIsNull(AViewInfo.GridRecord.Values[AIndex]) then
      PGMN35 := ''
    else
    begin
      PGMN35 := VarAsType(AViewInfo.GridRecord.Values[AIndex], varString);
    end;
  end;
  //3--set color
  if LockBH = '' then AColor := clbcNew
  else
  begin
    if (PGMN35 <> '') then
      AColor := clYellow
    else AColor := clbcToSystem21_Fail
  end;
  ACanvas.Canvas.Font.Color := clWindowText;
  //4--set canvas
  ACanvas.Canvas.Brush.Color := AColor;
  ACanvas.Canvas.FillRect(ARec);
  //5--draw
  SetBkMode(ACanvas.Canvas.Handle, TRANSPARENT);
  ACanvas.DrawText(ATextToDraw, AViewInfo.Bounds, 0);
end;

procedure TfrmIDO.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  cxGrid1DBTableView1DBColumn9.Options.Editing := (ClientDataSet1.FieldByName('LOCKBH').AsString = '');
end;

procedure TfrmIDO.btnGetSplitIDClick(Sender: TObject);
var
  aCONO: string;
  dStart, dEnd, tStart, tEnd: Integer;
  dtStart, dtEnd: TDateTime;
  timeStart, timeEnd: TTime;
  DT: Integer;
  tm: string;
begin
  aCONO := editCompany.Text;
  dtStart := editDT_Start.Date;
  dtEnd := editDT_End.Date;
  timeStart := editTime_Start.Time;
  timeEnd := editTime_End.Time;

  dt := StrToInt(FormatDateTime('yyyymmdd', now));
  tm := FormatDateTime('hhnnsszzz', now);

  dStart := StrToInt(FormatDateTime('yyyymmdd', dtStart)) - 19000000;
  tStart := StrToInt(FormatDateTime('hhnnss', timeStart));

  dEnd := StrToInt(FormatDateTime('yyyymmdd', dtEnd)) - 19000000;
  tEnd := StrToInt(FormatDateTime('hhnnss', timeEnd));

  Screen.Cursor := crSQLWait;
  try
    with ADOQuery2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Call zphlib_aul.sp_IDOSplitIDList (' + IntToStr(DT) + ',' + QuotedStr(TM) + ','
        + QuotedStr(aCONO) + ',' + IntToStr(dStart) + ',' + IntToStr(dEnd) + ',' + IntToStr(tStart) + ',' + IntToStr(tEnd) + ')');
      {Parameters.ParamByName('DT').Value := DT;
      Parameters.ParamByName('TM').Value := TM;
      Parameters.ParamByName('CONO').Value := aCONO;
      Parameters.ParamByName('dStart').Value := dStart;
      Parameters.ParamByName('dEnd').Value := dEnd;
      Parameters.ParamByName('tStart').Value := tStart;
      Parameters.ParamByName('tEnd').Value := tEnd; }
      ExecSQL;
    end; // with
    //ShowMessage('Call OK');
    with ADOQuery3 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select distinct case when DTLC=0 then DTLC else DTLC+19000000 end AS DTLC,');
      SQL.Add('case when SDAT=0 then SDAT else SDAT+19000000 end AS SDAT,STIM,');
      SQL.Add('CONO,PNUM,STRC,LOCN,SPHY,SALC,UOM,Location,HDO_NO,PHISM,ColorShade,IsCheck,IsCheck AS IsPrint');
      SQL.Add('from zphlib_aul.IDOSplitIDList where dt=' + IntToStr(dt) + ' and tm=' + QuotedStr(tm));
      //Parameters.ParamByName('DT').Value := DT;
      //Parameters.ParamByName('TM').Value := TM;
      Open;
      if RecordCount = 0 then
      begin
        Application.MessageBox(PChar(frmMain.GetLanguagesStr(44, 'No Data', True)),
          PChar(frmMain.GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
        exit;
      end;
    end; // with
    cxButton4.Enabled := True;
    cxButton5.Enabled := True;
    btnPrintLabel.Enabled := True;
    SelectIsPrint();
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally

end;

procedure TfrmIDO.SelectAllSplit(aValue: Integer);
var
  idno: string;
begin
  with ADOQuery3 do
  begin
    DisableControls;
    idno := fieldbyname('LOCN').AsString;
    try
      First;
      while not Eof do
      begin
        Edit;
        FieldByName('IsCheck').AsInteger := aValue;
        Post;
        Next;
      end; // while
    finally // wrap up
      Locate('LOCN', idno, []);
      EnableControls;
    end; // try/finally
  end; // with
end; //

procedure TfrmIDO.cxButton4Click(Sender: TObject);
begin
  SelectAllSplit(1);
end;

procedure TfrmIDO.cxButton5Click(Sender: TObject);
begin
  SelectAllSplit(0);
end;

procedure TfrmIDO.SelectIsPrint();
var
  CONO, PNUM, STRC, LOCN: string;
  DTLC, SDAT, STIM: Integer;
  bIsPrint: boolean;
begin
  with ADOQuery3 do
  begin
    DisableControls;
    try
      First;
      while not Eof do
      begin
        CONO := FieldByName('CONO').AsString;
        PNUM := FieldByName('PNUM').AsString;
        STRC := FieldByName('STRC').AsString;
        LOCN := FieldByName('LOCN').AsString;
        DTLC := FieldByName('DTLC').AsInteger;
        SDAT := FieldByName('SDAT').AsInteger;
        STIM := FieldByName('STIM').AsInteger;
        with ClientDataSet_Temp do
        begin
          Close;
          Params.Clear; //CONO,PNUM,STRC,LOCN,DTLC,SDAT,STIM
          Params.CreateParam(ftString, '@CONO', ptInput);
          Params.CreateParam(ftString, '@PNUM', ptInput);
          Params.CreateParam(ftString, '@STRC', ptInput);
          Params.CreateParam(ftString, '@LOCN', ptInput);
          Params.CreateParam(ftInteger, '@DTLC', ptInput);
          Params.CreateParam(ftInteger, '@SDAT', ptInput);
          Params.CreateParam(ftInteger, '@STIM', ptInput);
          CommandText := 'select * from pb_PrintLabelList where CONO=:@CONO and PNUM=:@PNUM and STRC=:@STRC'
            + ' and LOCN=:@LOCN and DTLC=:@DTLC and SDAT=:@SDAT and STIM=:@STIM';
          Params.ParamByName('@CONO').AsString := CONO;
          Params.ParamByName('@PNUM').AsString := PNUM;
          Params.ParamByName('@STRC').AsString := STRC;
          Params.ParamByName('@LOCN').AsString := LOCN;
          Params.ParamByName('@DTLC').AsInteger := DTLC;
          Params.ParamByName('@SDAT').AsInteger := SDAT;
          Params.ParamByName('@STIM').AsInteger := STIM;
          Open;
          bIsPrint := RecordCount <> 0;
        end;

        if (bIsPrint) then
        begin
          Edit;
          FieldByName('IsPrint').AsInteger := 1;
          Post;
        end;
        Next;
      end; // while
      First;
    finally // wrap up
      EnableControls;
    end; // try/finally
  end; //with
end;

procedure TfrmIDO.btnPrintLabelClick(Sender: TObject);
var
  iCopies: Integer;
  bCollateCopies: boolean;
  bcPrinter: string;
begin
  with ADOQuery3 do
  begin
    DisableControls;
    try
      Filtered := False;
      Filter := 'IsCheck=1';
      Filtered := True;
      if RecordCount = 0 then
      begin
        Application.MessageBox('Please Select Data.',
          PChar(frmMain.GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONINFORMATION);
        exit;
      end;
    finally // wrap up
      Filtered := False;
      Filter := '';
      EnableControls;
    end; // try/finally
  end; //with

  if not DoSelectPrinter(bcPrinter, iCopies, bCollateCopies) then exit;
  LabelPrintERP(iCopies, bCollateCopies, bcPrinter);
end;

procedure TfrmIDO.LabelPrintERP(iCopies: Integer; bCollateCopies: boolean; bcPrinter: string);
var
  ACONO {, LotNo_From, LotNo_To, Location_From, Location_To, HDO_From, HDO_To}: string;
  //  ASQL: string;
  SKU, HDONO, STOCKROOM, Barcode, UOM, PGMN, Location, PHISM, ColorShade: string;
  ORIG_QTY, CURR_QTY: double;
begin
  Screen.Cursor := crHourGlass;
  try
    with ADOQuery3 do
    begin
      DisableControls;
      try
        Filtered := False;
        Filter := 'IsCheck=1';
        Filtered := True;
        with ClientDataSet_Temp do
        begin
          Close;
          Params.Clear;
          CommandText := 'select * from PB_FINALID where 1=2';
          Open;
        end;
        First;
        while not eof do
        begin
          ACONO := FieldByName('CONO').AsString;
          STOCKROOM := FieldByName('STRC').AsString;
          SKU := FieldByName('PNUM').AsString;
          Barcode := bcGetStringStr(FieldByName('LOCN').AsString, 15);
          UOM := bcGetStringStr(FieldByName('UOM').AsString, 2);
          Location := FieldByName('Location').AsString;
          PGMN := Copy(FieldByName('PNUM').AsString, 1, 3);
          HDONO := FieldByName('HDO_NO').AsString;
          PHISM := FieldByName('PHISM').AsString;
          ColorShade := FieldByName('ColorShade').AsString;
          ORIG_QTY := GetORIGQTYFromFinalLabel(ACONO, Barcode, SKU, STOCKROOM, HDONO);
          CURR_QTY := FieldByName('SPHY').AsFloat;
          if ORIG_QTY = 0 then ORIG_QTY := CURR_QTY;

          with ClientDataSet_Temp do
          begin
            Append;
            FieldByName('HDO_NO').AsString := HDONO;
            FieldByName('ITEM_CODE').AsString := SKU;
            FieldByName('LOT_ID').AsString := Barcode;
            FieldByName('ORG_QTY').AsFloat := ORIG_QTY;
            FieldByName('CUR_BAL').AsFloat := CURR_QTY;
            FieldByName('UOM').AsString := UOM;
            FieldByName('STOCKROOM').AsString := STOCKROOM;
            FieldByName('COMPANY').AsString := ACONO;
            FieldByName('NO_OF_ROLLS').AsInteger := 1;
            FieldByName('STATUS').AsInteger := 0;
            FieldByName('RECORD_CREATED_DATE').AsDateTime := Now;
            FieldByName('pgmn').AsString := PGMN;
            FieldByName('Location').AsString := Location;
            FieldByName('PHISM').AsString := PHISM;
            FieldByName('ColorShade').AsString := ColorShade;
            Post;
          end;
          Next;
        end; // while
      finally // wrap up
        Filtered := False;
        Filter := '';
        EnableControls;
      end; // try/finally
    end; //with
    WriteToSocketStream(iCopies, bCollateCopies, bcPrinter, ClientDataSet_Temp, frmMain.BarcodePrint);
    PB_PrintLabelList();
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

procedure TfrmIDO.PB_PrintLabelList();
var
  CONO, PNUM, STRC, LOCN: string;
  DTLC, SDAT, STIM: Integer;
  bIsPrint: boolean;
begin
  with ADOQuery3 do
  begin
    DisableControls;
    try
      Filtered := False;
      Filter := 'IsCheck=1';
      Filtered := True;
      First;
      while not eof do
      begin
        CONO := FieldByName('CONO').AsString;
        PNUM := FieldByName('PNUM').AsString;
        STRC := FieldByName('STRC').AsString;
        LOCN := FieldByName('LOCN').AsString;
        DTLC := FieldByName('DTLC').AsInteger;
        SDAT := FieldByName('SDAT').AsInteger;
        STIM := FieldByName('STIM').AsInteger;
        bIsPrint := (FieldByName('IsPrint').AsInteger = 1);

        if not bIsPrint then
        begin
          Edit;
          FieldByName('IsPrint').AsInteger := 1;
          Post;

          with ClientDataSet_Temp1 do
          begin
            Close;
            Params.Clear; //CONO,PNUM,STRC,LOCN,DTLC,SDAT,STIM
            Params.CreateParam(ftString, '@CONO', ptInput);
            Params.CreateParam(ftString, '@PNUM', ptInput);
            Params.CreateParam(ftString, '@STRC', ptInput);
            Params.CreateParam(ftString, '@LOCN', ptInput);
            Params.CreateParam(ftInteger, '@DTLC', ptInput);
            Params.CreateParam(ftInteger, '@SDAT', ptInput);
            Params.CreateParam(ftInteger, '@STIM', ptInput);
            CommandText := 'exec sp_pb_PrintLabelList :@CONO,:@PNUM,:@STRC,:@LOCN,:@DTLC,:@SDAT,:@STIM';
            Params.ParamByName('@CONO').AsString := CONO;
            Params.ParamByName('@PNUM').AsString := PNUM;
            Params.ParamByName('@STRC').AsString := STRC;
            Params.ParamByName('@LOCN').AsString := LOCN;
            Params.ParamByName('@DTLC').AsInteger := DTLC;
            Params.ParamByName('@SDAT').AsInteger := SDAT;
            Params.ParamByName('@STIM').AsInteger := STIM;
            Execute;
          end; // with
        end;
        Next;
      end;
    finally // wrap up
      Filtered := False;
      Filter := '';
      EnableControls;
    end; // try/finally
  end; //with
end;

function TfrmIDO.GetORIGQTYFromFinalLabel(CompanyNo, Barcode, SKU, STOCKROOM, HDONO: string): Double;
begin
  with ClientDataSet_Temp1 do
  begin
    Close;
    Params.Clear;
    Params.CreateParam(ftString, 'HDO_NO', ptInput);
    Params.CreateParam(ftString, 'Item_Code', ptInput);
    Params.CreateParam(ftString, 'LOT_ID', ptInput);
    Params.CreateParam(ftString, 'STOCKROOM', ptInput);
    Params.CreateParam(ftString, 'Company', ptInput);
    CommandText := 'select ORG_QTY from PB_FINALID '
      + ' where HDO_NO=:HDO_NO and Item_Code=:Item_Code  and LOT_ID=:LOT_ID and STOCKROOM=:STOCKROOM and Company=:Company';
    Params.ParamByName('HDO_NO').AsString := HDONO;
    Params.ParamByName('Item_Code').AsString := SKU;
    Params.ParamByName('LOT_ID').AsString := Barcode;
    Params.ParamByName('STOCKROOM').AsString := STOCKROOM;
    Params.ParamByName('Company').AsString := CompanyNo;
    Open;
    result := FieldByName('ORG_QTY').AsFloat;
  end; // with
end;

procedure TfrmIDO.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARec: TRect;
  ATextToDraw: string;
  IsPrint, IsPrint_Index: Integer;
  AColor: TColor;

  procedure SetTextToDraw;
  begin
    ATextToDraw := AViewInfo.GridRecord.DisplayTexts[AViewInfo.Item.Index];
  end;
begin
  inherited;
  //1---Bounds
  SetTextToDraw;
  ARec := AViewInfo.Bounds;

  //2--get Column Index
  IsPrint_Index := TcxGridDBTableView(Sender).GetColumnByFieldName('IsPrint').Index;
  //  ACanvas.Canvas.Brush.Style := bsSolid;
  if VarIsNull(AViewInfo.GridRecord.Values[IsPrint_Index]) then
    IsPrint := 0
  else
    IsPrint := VarAsType(AViewInfo.GridRecord.Values[IsPrint_Index], varInteger);
  //3--set color
  case IsPrint of //
    0: AColor := clbcNew;
    1: AColor := clbcPrintLabel;
  else
    AColor := clbcNew;
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

procedure TfrmIDO.cxButtonEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (Shift = []) then btnOK.Click();
end;

procedure TfrmIDO.SetQueryIDOVisibleColumn;
begin
  Label8.Visible := FQueryIDO;
  //btnDeleteID.Visible := FQueryIDO;
  cxGrid2DBTableView1DBColumn6.Visible := FQueryIDO;
  cxGrid2DBTableView1_IsCheck.Visible := FQueryIDO;
  cxGrid2DBTableView1_BStatus.Visible := FQueryIDO;
  cxGrid2DBTableView1_CStatus.Visible := FQueryIDO;
  cxGrid2DBTableView1_ERPSuccess.Visible := FQueryIDO;
end;

procedure TfrmIDO.cxGrid2DBTableView1_BStatusGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  AInt: Integer;
begin
  inherited;
  AInt := StrToIntDef(AText, -1);
  case TbcStatus(AInt) of //
    bcsNew: AText := frmMain.FsNew;
    bcsToSystem21: AText := frmMain.FsSystem21;
    bcsToHandHeld: AText := frmMain.FsToHandHeld;
    bcsFromHandHeld: AText := frmMain.FsFromHandHeld;
    bcsIDOCompleted: AText := frmMain.FIDOCompleted;
    bcsProgressed: AText := frmMain.FProgressed;
    bcsIDOAffirm: AText := frmMain.FsIDOConfirmed;
  else
    AText := ''; // frmMain.FUnKnown;
  end; // case
end;

procedure TfrmIDO.cxGrid2DBTableView1_ERPSuccessGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := UpperCase(AText);
  if (AText = 'TRUE') then
    AText := frmMain.FsToErpSuccess
  else if (AText = 'FALSE') then
    AText := frmMain.FsToErpFail
  else
    AText := '';
end;

procedure TfrmIDO.cxGridDBTableView_CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARec: TRect;
  ATextToDraw: string;
  BStatus, CStatus, BStatus_Index, CStatus_Index, ErpSuccess_Index, AErpSuccessStatus: Integer;
  AColor: TColor;
  bErpSuccess, bNotOut: boolean;

  procedure SetTextToDraw;
  begin
    ATextToDraw := AViewInfo.GridRecord.DisplayTexts[AViewInfo.Item.Index];
  end;
begin
  inherited;
  //1---Bounds
  SetTextToDraw;
  ARec := AViewInfo.Bounds;

  //2--get Column Index
  BStatus_Index := TcxGridDBTableView(Sender).GetColumnByFieldName('BStatus').Index;
  CStatus_Index := TcxGridDBTableView(Sender).GetColumnByFieldName('CStatus').Index;
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
  if VarIsNull(AViewInfo.GridRecord.Values[BStatus_Index]) then
    BStatus := -1
  else
    BStatus := VarAsType(AViewInfo.GridRecord.Values[BStatus_Index], varInteger);

  if VarIsNull(AViewInfo.GridRecord.Values[CStatus_Index]) then
    CStatus := -1
  else
    CStatus := VarAsType(AViewInfo.GridRecord.Values[CStatus_Index], varInteger);
  {
  bNotOut := (BStatus = Ord(bcsIDOAffirm)) and ((AErpSuccessStatus = 0) or ((CStatus <> -1) and (CStatus <> Ord(bcsToSystem21))));
  if (bNotOut) then AColor := clbcToSystem21_Fail //not out
  else if (AErpSuccessStatus <> 0) and (CStatus = Ord(bcsToSystem21)) then AColor := clbcToSystem21_Success //has outed
  else if (BStatus = Ord(bcsIDOAffirm)) then AColor := clbcIDOAffirm //has confirmed
  else AColor := clbcNew; //new
  }
  case BStatus of //
    Ord(bcsNew): AColor := clbcNew;
    Ord(bcsIDOAffirm):
      begin
        case CStatus of //
          Ord(bcsNew): AColor := clbcIDOAffirm;
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
        else
          AColor := clbcOther;
        end; // case

      end;
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

procedure TfrmIDO.cxGrid2DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  BStatus, CStatus, BStatus_Index, CStatus_Index, ErpSuccess_Index, AErpSuccessStatus: Integer;
  bErpSuccess: boolean;
begin
  BStatus_Index := TcxGridDBTableView(Sender).GetColumnByFieldName('BStatus').Index;
  CStatus_Index := TcxGridDBTableView(Sender).GetColumnByFieldName('CStatus').Index;
  AErpSuccessStatus := -1;
  if TcxGridDBTableView(Sender).GetColumnByFieldName('ErpSuccess') <> nil then
  begin
    ErpSuccess_Index := TcxGridDBTableView(Sender).GetColumnByFieldName('ErpSuccess').Index;
    if VarIsNull(AFocusedRecord.Values[ErpSuccess_Index]) then
      AErpSuccessStatus := -1
    else
    begin
      bErpSuccess := VarAsType(AFocusedRecord.Values[ErpSuccess_Index], varBoolean);
      AErpSuccessStatus := Ord(bErpSuccess);
    end;
  end;
  //  ACanvas.Canvas.Brush.Style := bsSolid;
  if VarIsNull(AFocusedRecord.Values[BStatus_Index]) then
    BStatus := -1
  else
    BStatus := VarAsType(AFocusedRecord.Values[BStatus_Index], varInteger);

  if VarIsNull(AFocusedRecord.Values[CStatus_Index]) then
    CStatus := -1
  else
    CStatus := VarAsType(AFocusedRecord.Values[CStatus_Index], varInteger);

  cxGrid2DBTableView1_IsCheck.Options.Editing := (BStatus = Ord(bcsIDOAffirm)) and ((AErpSuccessStatus = 0) or ((CStatus <> -1) and (CStatus <> Ord(bcsToSystem21))));
end;

procedure TfrmIDO.btnIDAddAClick(Sender: TObject);
var
  idno: string;
begin
  with ClientDataSet1 do
  begin
    Screen.Cursor := crSQLWait;
    DisableControls;
    try
      First;
      while not Eof do
      begin
        if (FieldByName('LOCKBH').AsString <> '')
          and (FieldByName('PGMN35').AsString = '') then
        begin
          idno := FieldByName('Idno').AsString;
          with ClientDataSet_Temp1 do
          begin
            Close;
            Params.Clear;
            Params.CreateParam(ftString, 'idno', ptInput);
            CommandText := 'update ido2_Unplanned set idno=rTrim(idno)+''A'',FUser=isNull(FUser,'''')+' + QuotedStr('UnLock by ' + frmMain.UID) + ' where idno=:idno';
            Params.ParamByName('idno').AsString := idno;
            Execute;
          end; // with
          Edit;
          FieldByName('PGMN35').AsString := 'UnLock';
          Post;
        end;
        Next;
      end; // while
    finally // wrap up
      EnableControls;
      Screen.Cursor := crDefault;
    end; // try/finally
  end; // with

end;

procedure TfrmIDO.OK_IDMatchingClick(Sender: TObject);
var
  ALotNo, ASopNo, AWorderNo, ASQL, ASQLW, AProject, AIDO, AItemCode: string;
begin
  screen.cursor := crSQLWait;
  with ClientDataSet_Temp do
  begin
    ALotNo := cxButtonEdit1.Text;
    ASopNo := cxButtonEdit2.Text;
    AWorderNo := cxButtonEdit3.Text;
    AProject := editProject.Text;
    AItemCode := editItemCode.Text;
    AIDO := GetIDOFullString(editIDO.Text, 'UPI');
    if AIDO <> '' then editIDO.Text := AIDO;

    cxGrid2DBTableView1.OnCustomDrawCell := nil;
    cxGrid2DBTableView1.OnFocusedRecordChanged := nil;
    cxGrid2DBTableView1.DataController.DataSource := nil;

    cxGrid2DBTableView1_IsCheck.Options.Editing := True;
    try
      close;
      params.clear;

      ASQL := 'exec dbo.sp_PB_IDOMatching_Select_Unplanned '
        + QuotedStr(AIDO) + ','
        + QuotedStr(ALotNo) + ','
        + QuotedStr(ASopNo) + ','
        + QuotedStr(AWorderNo) + ','
        + QuotedStr(AProject) + ','
        + QuotedStr(AItemCode);

      CommandText := ASQL;
      open;

      DoSelectAllRecord_UnlockID(0);
      btnSelectAll_1.Enabled := True;
      btnSelectNone_1.Enabled := True;
      btnDeleteIDs.Enabled := True;

      //cxGrid2DBTableView1.OnCustomDrawCell := cxGridDBTableView_CustomDrawCell;
      // cxGrid2DBTableView1.OnFocusedRecordChanged := cxGrid2DBTableView1FocusedRecordChanged;
    finally
      screen.cursor := crDefault;
      cxGrid2DBTableView1.DataController.DataSource := DataSource_Temp;
    end;
  end;
end;

procedure TfrmIDO.DoSelectAllRecord_UnlockID(aValue: Integer);
var
  idno: string;
begin
  with ClientDataSet_Temp do
  begin
    DisableControls;
    try
      First;
      while not Eof do
      begin
        Edit;
        FieldByName('IsCheck').AsInteger := aValue;
        Post;
        Next;
      end; // while
      First;
    finally // wrap up
      EnableControls;
    end; // try/finally
  end; // with
end; //

procedure TfrmIDO.btnSelectAll_1Click(Sender: TObject);
begin
  DoSelectAllRecord_UnlockID(1);
end;

procedure TfrmIDO.btnSelectNone_1Click(Sender: TObject);
begin
  DoSelectAllRecord_UnlockID(0);
end;

procedure TfrmIDO.btnDeleteIDsClick(Sender: TObject);
var
  AIDO, ALOTID, ACONO, AWord, Itemcode, Prjno: string;
  bIsWarehouse: boolean;
begin
  if Application.MessageBox(PChar(frmMain.GetLanguagesStr(94, 'Unlock these Selected ID(s)?')),
    PChar(frmMain.GetLanguagesStr(9, 'Question', True)), MB_YESNO + MB_ICONInformation + MB_DEFBUTTON2) = idNO then
    exit;

  with ClientDataSet_Temp do
  begin
    DisableControls;
    try
      First;
      while not Eof do
      begin
        if (FieldByName('IsCheck').AsInteger <> 1) then
          Next
        else
        begin
          AIDO := FieldByName('BH').AsString;
          ALOTID := FieldByName('IDNO').AsString;
          ACONO := FieldByName('CONO').AsString;
          AWord := FieldByName('ZDH').AsString;
          Itemcode := FieldByName('WL').AsString;
          Prjno := FieldByName('Prjno').AsString;

          bIsWarehouse := not FieldByName('CSTATUS').IsNull;

          if UnlockID(AIDO, ALOTID, ACONO, AWord, Itemcode, Prjno, bIsWarehouse) then
          begin
            frmMain.UpdateIDOs2AS400(ACONO, AIDO, ALOTID, AWord, 'D');
            //IDOMatchingLog(ACONO, AIDO, ALOTID, AWord,Prjno,frmMain.UID);
            Delete;
          end
          else
            Next;
        end;
      end; // while
      First;
    finally // wrap up
      EnableControls;
    end; // try/finally
  end; // with
end;

procedure TfrmIDO.IDOMatchingLog(ACONO, AIDO, ALOTID, AWord, APrjno, AUSER: string);
var
  ASQL: string;
begin
  with ClientDataSet_Temp2 do
  begin
    close;
    params.clear;

    ASQL := 'exec dbo.sp_PB_IDOMatching_Log_Unplanned '
      + QuotedStr(AIDO) + ','
      + QuotedStr(ALOTID) + ','
      + QuotedStr(ACONO) + ','
      + QuotedStr(AWord) + ','
      + QuotedStr(APrjno) + ','
      + QuotedStr(AUSER);

    CommandText := ASQL;
    Execute;
  end;
end;

function TfrmIDO.UnlockID(AIDO, ALOTID, ACONO, AWord, Itemcode, Prjno: string; bIsWarehouse: boolean): boolean;
var
  ASQL: string;
begin
  with ClientDataSet_Temp1 do
  begin
    close;
    params.clear;

    ASQL := 'exec dbo.sp_PB_IDOMatching_Unlock_Unplanned '
      + QuotedStr(AIDO) + ','
      + QuotedStr(ALOTID) + ','
      + QuotedStr(ACONO) + ','
      + QuotedStr(AWord) + ','
      + QuotedStr(Itemcode) + ','
      + QuotedStr(Prjno) + ','
      + QuotedStr(frmMain.UID) + ','
      + IntToStr(Ord(bIsWarehouse));

    CommandText := ASQL;
    Open;
    //IDOMatchingLog(ACONO, AIDO, ALOTID, AWord,Prjno,frmMain.UID);
    result := Fields[0].AsInteger = 1;
  end;
end;

procedure TfrmIDO.cxGridSaveAs(cxGrid: TcxGrid; aTag: Integer);
begin
  if cxGrid = nil then exit;

  with TSaveDialog.Create(nil) do
  begin
    case aTag of //
      0: Filter := 'Excel File(*.xls)|*.XLS';
      1: Filter := 'HTM File(*.html)|*.HTML';
      2: Filter := 'TEXT File(*.txt)|*.TXT';
      3: Filter := 'XML File(*.xml)|*.XML';
    end; // case
    Title := 'Export to...';
    FileName := cxGrid.ActiveLevel.Caption;
    InitialDir := ExtractFilePath(Application.ExeName);
    try
      if Execute then
      begin
        case aTag of //
          0: ExportGrid4ToExcel(FileName, cxGrid, True, True, False);
          1: ExportGrid4ToHTML(FileName, cxGrid);
          2: ExportGrid4ToText(FileName, cxGrid);
          3: ExportGrid4ToXML(FileName, cxGrid);
        end; // case
      end;
    finally // wrap up
      Free;
    end; // try/finally
  end; // with
end;

procedure TfrmIDO.btnExporttoXLSClick(Sender: TObject);
begin
  cxGridSaveAs(cxGrid2, 0);
end;

end.

