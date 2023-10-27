unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmBase, cxStyles, DB, DBClient, uTools, ExtCtrls,
  cxLookAndFeels, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, dxUxTheme,
  cxSpinEdit, cxTimeEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, cxGraphics,
  cxTextEdit, cxContainer, cxEdit, cxGroupBox, cxButtons, ADODB, cxLabel,
  cxLookAndFeelPainters, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxCheckBox, cxCurrencyEdit;

type
  TfrmMain = class(TfrmBase)
    Panel3: TPanel;
    btnGetSplitID: TcxButton;
    cxGroupBox5: TcxGroupBox;
    editCompany: TcxTextEdit;
    cxGroupBox1: TcxGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    editDT_Start: TcxDateEdit;
    editDT_End: TcxDateEdit;
    editTime_Start: TcxTimeEdit;
    editTime_End: TcxTimeEdit;
    Panel4: TPanel;
    btnSelectAll: TcxButton;
    btnSelectNone: TcxButton;
    btnPrintLabel: TcxButton;
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
    cxGridDBTableView1UOM: TcxGridDBColumn;
    cxGridDBTableView1Location: TcxGridDBColumn;
    cxGridDBTableView1HDO_NO: TcxGridDBColumn;
    cxGridDBTableView1PHISM: TcxGridDBColumn;
    cxGridDBTableView1ColorShade: TcxGridDBColumn;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    ClientDataSet_Temp1: TClientDataSet;
    ADOQuery2: TADOQuery;
    btnClearAll: TcxButton;
    btnDefaultSelect: TcxButton;
    cxGridDBTableView1Project: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxGridDBTableView1PO: TcxGridDBColumn;
    cxGridDBTableView1POLine: TcxGridDBColumn;
    ClientDataSet_Data: TClientDataSet;
    cxGroupBox8: TcxGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    editST_From: TcxTextEdit;
    editST_To: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxGridDBTableView1ORG_QTY: TcxGridDBColumn;
    btnSelectPrinted: TcxButton;
    cxGridDBTableView1ParentID: TcxGridDBColumn;
    cxGridDBTableView1PrintDate: TcxGridDBColumn;
    ClientDataSet_Print: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure btnGetSplitIDClick(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnSelectNoneClick(Sender: TObject);
    procedure btnPrintLabelClick(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ADOQuery3AfterClose(DataSet: TDataSet);
    procedure ADOQuery3AfterOpen(DataSet: TDataSet);
    procedure cxGrid1DBTableView1IsCheckPropertiesEditValueChanged(
      Sender: TObject);
    procedure btnClearAllClick(Sender: TObject);
    procedure btnDefaultSelectClick(Sender: TObject);
    procedure ClientDataSet_DataAfterOpen(DataSet: TDataSet);
    procedure ClientDataSet_DataAfterClose(DataSet: TDataSet);
    procedure btnSelectPrintedClick(Sender: TObject);
  private
    { Private declarations }
    FSelectRowCount: Integer;
    fParentList: TStringList;

    procedure SelectIsPrint();
    procedure SetParentNotPrint();
    procedure SelectAllSplit(aValue: Integer);
    function GetORIGQTYFromFinalLabel(CompanyNo, Barcode, SKU, STOCKROOM, HDONO: string): Double;
    procedure LabelPrintERP(iCopies: Integer; bCollateCopies: boolean; bcPrinter: string);
    procedure PB_PrintLabelList();
    procedure SetSelectRowCount(Value: Integer);
    function ConvertToSQLData(sql: string): string;
    procedure SelectPrint(selectHasPrint: boolean);
  public
    { Public declarations }
    property SelectRowCount: Integer read FSelectRowCount write SetSelectRowCount;
    procedure SetLanguageStr; override;
  end;

var
  frmMain: TfrmMain;

implementation

uses ufrmDialog;

{$R *.dfm}

function TfrmMain.ConvertToSQLData(sql: string): string;
var
  s: string;
begin
  s := StringReplace(sql, '''', '''''', [rfReplaceAll]);
  result := s;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  ClientDataSet_Temp1.RemoteServer := SCN;
  ADOQuery2.Connection := ZPHLIB;
  ADOQuery3.Connection := ZPHLIB;
  ClientDataSet_Data.RemoteServer := SCN;

  SetLanguageStr;
  FSelectRowCount := 0;

  editDT_Start.Date := Date;
  editDT_End.Date := Date;
  editTime_Start.Time := StrToTime('00:00:01');
  editTime_End.Time :=StrToTime('23:00:01');// Now;

  cxLabel3.Style.Color := clbcPrintLabel;

  fParentList := TStringList.Create();

end;

procedure TfrmMain.SetLanguageStr;
begin
  RUnit := 'Final Label';
  btnPrintLabel.Caption := GetLanguagesStr(1, 'Print Label');

  cxGroupBox5.Caption := GetLanguagesStr(17, 'Company', True);

  btnSelectAll.Caption := GetLanguagesStr(58, 'Select All', True);
  btnSelectNone.Caption := GetLanguagesStr(59, 'Select None', True);
  btnClearAll.Caption := GetLanguagesStr(60, 'Clear All', True);
  btnDefaultSelect.Caption := GetLanguagesStr(84, 'Select have not Printed', True);
  btnSelectPrinted.Caption := GetLanguagesStr(128, 'Select Printed', True);

  cxGrid1DBTableView1ITEMCODE.Caption := GetLanguagesStr(13, 'Item Code', True);
  cxGrid1DBTableView1LOTID.Caption := GetLanguagesStr(14, 'Lot Number', True);
  cxGridDBTableView1UOM.Caption := GetLanguagesStr(15, 'UOM', True);
  cxGrid1DBTableView1Stock_Room.Caption := GetLanguagesStr(16, 'Stock Room', True);
  //cxGrid1DBTableView1COMPANY.Caption := GetLanguagesStr(17, 'Company Code', True);
  cxGrid1DBTableView1IsCheck.Caption := GetLanguagesStr(39, 'Select', True);

  cxGridDBTableView1HDO_NO.Caption := GetLanguagesStr(2, 'HDO Number');
  cxGridDBTableView1ORG_QTY.Caption := GetLanguagesStr(3, 'Original Qty');
  cxGrid1DBTableView1CurrentQTY.Caption := GetLanguagesStr(4, 'Current Balance');
  //cxGrid1DBTableView1NO_OF_COPIES.Caption := GetLanguagesStr(5, 'No of Copies');
  //cxGrid1DBTableView1NO_OF_ROLLS.Caption := GetLanguagesStr(6, 'No of Rolls');
  //cxGrid1DBTableView1MARKER_WIDTH.Caption := GetLanguagesStr(7, 'Marker Width');
  cxGridDBTableView1Location.Caption := GetLanguagesStr(73, 'Location', True);
  //cxGrid1DBTableView1Pgmn.Caption := GetLanguagesStr(15, 'Material Type');
  cxGridDBTableView1PHISM.Caption := GetLanguagesStr(79, 'Supp Refer No.', True);
  cxGridDBTableView1ColorShade.Caption := GetLanguagesStr(81, 'Color Shade', True);

  cxGridDBTableView1Project.Caption := GetLanguagesStr(129, 'Project No.', True);
  cxGridDBTableView1PO.Caption := GetLanguagesStr(130, 'PO No.', True);
  cxGrid1DBTableView1AllocateQTY.Caption := GetLanguagesStr(24, 'Allocate QTY');
  cxGrid1DBTableView1DTLC.Caption := GetLanguagesStr(25, 'Data Last Changed');
  cxGrid1DBTableView1SDAT.Caption := GetLanguagesStr(26, 'Stock Date');
  cxGrid1DBTableView1STIM.Caption := GetLanguagesStr(27, 'Stock Time');
  cxGridDBTableView1ParentID.Caption := GetLanguagesStr(136, 'Parent ID', True);
  cxGridDBTableView1PrintDate.Caption := GetLanguagesStr(137, 'Print Date', True);

  Label4.Caption := GetLanguagesStr(28, 'Start DateTime');
  Label5.Caption := GetLanguagesStr(29, 'End DateTime');

  cxLabel4.Caption := GetLanguagesStr(102, 'Print Label', True);
  cxLabel1.Caption := cxGrid1DBTableView1Stock_Room.Caption;

  Label21.Caption := GetLanguagesStr(122, 'From', True);
  Label22.Caption := GetLanguagesStr(123, 'To', True);

  //=====
  pnl_Title.Caption := GetLanguagesStr(1000 + Self.Tag, RUnit, True);
  Caption := pnl_Title.Caption;

end;

procedure TfrmMain.btnGetSplitIDClick(Sender: TObject);
var
  aCONO: string;
  dStart, dEnd, tStart, tEnd: Integer;
  dtStart, dtEnd: TDateTime;
  timeStart, timeEnd: TTime;
  DT: Integer;
  tm: string;
  ASQL, sql1, sql2, sql3: string;
  stockroom1, stockroom2: string;
  tempTable, tempTable1: string;
begin
  if not CheckUserRight(cUrBrowse, TButton(Sender).Caption, UserRights) then exit;

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

  stockroom1 := editST_From.Text;
  stockroom2 := editST_To.Text;

  if (stockroom1 = '') then stockroom1 := stockroom2;
  if (stockroom2 = '') then stockroom2 := stockroom1;

  tempTable := '#temp' + FormatDateTime('yyyymmddhhnnsszzz', now);
  tempTable1 := tempTable + '1';

  Screen.Cursor := crSQLWait;
  try
    with ADOQuery2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Call zphlib_aul.sp_IDOSplitIDList_New (' + IntToStr(DT) + ',' + QuotedStr(TM) + ','
        + QuotedStr(aCONO) + ',' + IntToStr(dStart) + ',' + IntToStr(dEnd) + ','
        + IntToStr(tStart) + ',' + IntToStr(tEnd) + ','
        + QuotedStr(stockroom1) + ',' + QuotedStr(stockroom2)
        + ')');
      { Parameters.ParamByName('DT').Value := DT;
       Parameters.ParamByName('TM').Value := TM;
       Parameters.ParamByName('CONO').Value := aCONO;
       Parameters.ParamByName('dStart').Value := dStart;
       Parameters.ParamByName('dEnd').Value := dEnd;
       Parameters.ParamByName('tStart').Value := tStart;
       Parameters.ParamByName('tEnd').Value := tEnd;}
      ExecSQL;
    end; // with
    //ShowMessage('Call OK');
    sql1 := 'select distinct case when DTLC=0 then DTLC else DTLC+19000000 end AS DTLC, '
      + ' case when SDAT=0 then SDAT else SDAT+19000000 end AS SDAT,STIM,Project,'
      + ' CONO,PNUM,STRC,LOCN,ParentID,SPHY,SALC,UOM,Location,HDO_NO,PHISM,ColorShade,IsCheck,IsCheck AS IsPrint,PO,POLine,MARKER_WIDTH'
      + ' from zphlib_aul.IDOSplitIDList where dt=' + IntToStr(dt) + ' and tm=' + QuotedStr(tm) + ' order by LOCN';
    sql1 := ConvertToSQLData(sql1); //110225-S14
    sql1 := 'if object_id(''tempdb.dbo.' + tempTable + ''') is not null drop table ' + tempTable
      + ' SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED'
      + ' select * into ' + tempTable + ' from openquery(AS400,'' ' + sql1 + ' '')';

    sql3 := ' select  a.pnum,a.strc,a.locn ,min(b.LOCN) as PP into ' + tempTable1 + ' from '
      + tempTable + ' a inner join ' + tempTable + ' b'
      + ' on a.PNUM=b.PNUM and a.STRC=b.STRC and SubString(a.LOCN,1,12)=SubString(b.LOCN,1,12) and a.LOCN>b.LOCN  and a.SDAT=b.DTLC'
      + ' group by a.pnum,a.strc,a.locn order by a.locn ';
    sql3 := sql3 + ' update a set a.ParentID=b.PP from ' + tempTable
      + ' a inner join ' + tempTable1 + ' b on a.PNUM=b.PNUM and a.STRC=b.STRC and a.LOCN=b.LOCN';

    sql2 := ' select  a.*,b.Dept,b.WorkOrderNo,b.GarmentColor,b.CustStyleNo,b.OrderLine,'
      + 'Coalesce(b.BuyerSizeCup,substring(a.PNUM,13,3)) as BuyerSizeCup,'
      + 'Coalesce(b.BuyerSizeCups,substring(a.PNUM,13,3)) as BuyerSizeCups,'
      + 'c.ORG_QTY, c.PrintDate'
      + ' from ' + tempTable + ' a left join ('
      + ' select a.Company,a.Dept,b.WorkOrderNo,c.GarmentColor,c.CustStyleNo,b.OrderLine,c.SKU,a.PONO,'
      + ' [PH.POPC].dbo.[GetBuyerSizeCup](a.Company,a.PONO,c.SKU,b.OrderLine) as BuyerSizeCup, '
      + ' [PH.POPC].dbo.[GetBuyerSizeCups](a.Company,a.PONO,c.SKU,b.OrderLine) as BuyerSizeCups '
      + ' FROM       [PH.POPC].[dbo].POHeader          AS a '
      + ' INNER JOIN [PH.POPC].[dbo].PODetail          AS b ON a.Company = b.Company AND a.PONO = b.PONO AND a.Version = b.Version AND a.AmendmentNo = b.AmendmentNo'
      + ' INNER JOIN [PH.POPC].[dbo].POColorSizeDetail AS c ON b.Company = c.Company AND b.PONO = c.PONO AND b.Version = c.Version AND b.AmendmentNo = c.AmendmentNo  And  b.OrderLine=c.OrderLine'
      + ' LEFT JOIN [PH.MIDc].[dbo].Detail AS d ON d.SuppRef=c.SupplierReference '
      + ' where a.VersionFlag=1) b '
      + ' ON  b.Company=a.CONO and b.pono=a.PO and b.SKU=a.PNUM and b.OrderLine=a.POLine';
    sql2 := sql2 + ' LEFT JOIN PHGDB2.dbo.PB_FINALID c '
      + ' ON c.HDO_NO=a.HDO_NO and c.Item_Code=a.PNUM  and c.LOT_ID=a.LOCN and c.STOCKROOM=a.STRC and c.Company=a.CONO'
      + ' order by a.LOCN';

    //CommandText := 'select ORG_QTY from PB_FINALID '
    //  + ' where HDO_NO=:HDO_NO and Item_Code=:Item_Code  and LOT_ID=:LOT_ID and STOCKROOM=:STOCKROOM and Company=:Company';

    //with ADOQuery3 do
    with ClientDataSet_Data do
    begin
      Close;
      Params.Clear;
      CommandText := sql1 + sql3 + sql2;
      //SQL.Add('select distinct case when DTLC=0 then DTLC else DTLC+19000000 end AS DTLC,');
      //SQL.Add('case when SDAT=0 then SDAT else SDAT+19000000 end AS SDAT,STIM,Project,');
      //SQL.Add('CONO,PNUM,STRC,LOCN,SPHY,SALC,UOM,Location,HDO_NO,PHISM,ColorShade,IsCheck,IsCheck AS IsPrint,PO,POLine');
      //SQL.Add('from zphlib_aul.IDOSplitIDList where dt=' + IntToStr(dt) + ' and tm=' + QuotedStr(tm) + ' order by LOCN');
      Open;
      if RecordCount = 0 then
      begin
        Application.MessageBox(PChar(GetLanguagesStr(44, 'No Data', True)),
          PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
        exit;
      end;
    end; // with
    SelectIsPrint();
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

procedure TfrmMain.SelectIsPrint();
var
  CONO, PNUM, STRC, LOCN, ParentID: string;
  DTLC, SDAT, STIM: Integer;
  bIsPrint: boolean;
  cloneCDS: TClientDataSet;
begin
  cloneCDS := TClientDataSet.Create(nil);
  //with ADOQuery3 do
  with ClientDataSet_Data do
  begin
    DisableControls;
    try
      cloneCDS.CloneCursor(ClientDataSet_Data, true);
      //1. check IsPrint
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
        ParentID := Trim(FieldByName('ParentID').AsString);

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
          CommandText := 'select count(*) as II, Max(PrintDate) as PrintDate from pb_PrintLabelList where CONO=:@CONO and PNUM=:@PNUM and STRC=:@STRC'
            + ' and LOCN=:@LOCN and DTLC=:@DTLC and SDAT=:@SDAT and STIM=:@STIM';
          Params.ParamByName('@CONO').AsString := CONO;
          Params.ParamByName('@PNUM').AsString := PNUM;
          Params.ParamByName('@STRC').AsString := STRC;
          Params.ParamByName('@LOCN').AsString := LOCN;
          Params.ParamByName('@DTLC').AsInteger := DTLC;
          Params.ParamByName('@SDAT').AsInteger := SDAT;
          Params.ParamByName('@STIM').AsInteger := STIM;
          Open;
          bIsPrint := FieldByName('II').AsInteger <> 0; // RecordCount <> 0;
        end;

        Edit;
        FieldByName('PrintDate').Clear;
        if (bIsPrint) then
        begin
          FieldByName('IsPrint').AsInteger := 1;
          FieldByName('PrintDate').Value := ClientDataSet_Temp.FieldByName('PrintDate').Value;

        end;
        Post;
        Next;
      end; // while

      // 2. handle Parent ID
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
        ParentID := Trim(FieldByName('ParentID').AsString);
        bIsPrint := FieldByName('IsPrint').AsInteger = 1;

        if (bIsPrint and (ParentID = '')) then
        begin
          if (cloneCDS.Locate('CONO;PNUM;STRC;ParentID', VarArrayOf([CONO, PNUM, STRC, LOCN]), [])) then
          begin
            bIsPrint := cloneCDS.FieldByName('IsPrint').AsInteger = 1;
            if (not bIsPrint) then
            begin
              Edit;
              FieldByName('IsPrint').AsInteger := 0;
              Post;
            end;
          end;
        end;

        Next;
      end; //while

      First;
    finally // wrap up
      FreeAndNil(cloneCDS);
      EnableControls;
    end; // try/finally
  end; //with
end;

procedure TfrmMain.SetParentNotPrint();
var
  CONO, PNUM, STRC, LOCN: string;
  DTLC, SDAT, STIM: Integer;
  bIsPrint: boolean;
  tempDataSet: TClientDataSet;
begin
  tempDataSet := TClientDataSet.Create(nil);

  //with ADOQuery3 do
  with tempDataSet do
  begin
    ClientDataSet_Data.DisableControls;
    try
      tempDataSet.CloneCursor(ClientDataSet_Data, true);
      First;
      while not Eof do
      begin
        bIsPrint := FieldByName('IsPrint').AsInteger = 1;
        if (not bIsPrint) then
        begin

          CONO := FieldByName('CONO').AsString;
          PNUM := FieldByName('PNUM').AsString;
          STRC := FieldByName('STRC').AsString;
          LOCN := Copy(FieldByName('LOCN').AsString, 1, 12) + '-00';
          //070212-S0162-01
          //DTLC := FieldByName('DTLC').AsInteger;
          //SDAT := FieldByName('SDAT').AsInteger;
          //STIM := FieldByName('STIM').AsInteger;

          if (ClientDataSet_Data.Locate('CONO;PNUM;STRC;LOCN', VarArrayOf([CONO, PNUM, STRC, LOCN]), [])) then
          begin
            ClientDataSet_Data.Edit;
            ClientDataSet_Data.FieldByName('IsPrint').AsInteger := 0;
            ClientDataSet_Data.Post;
          end;

        end;

        Next;
      end; // while
      ClientDataSet_Data.First;
    finally // wrap up
      FreeAndNil(tempDataSet);
      ClientDataSet_Data.EnableControls;
    end; // try/finally
  end; //with

end;

procedure TfrmMain.btnSelectAllClick(Sender: TObject);
begin
  inherited;
  SelectAllSplit(1);
end;

procedure TfrmMain.btnSelectNoneClick(Sender: TObject);
begin
  inherited;
  SelectAllSplit(0);
end;

procedure TfrmMain.SelectAllSplit(aValue: Integer);
var
  idno: string;
begin
  //with ADOQuery3 do
  with ClientDataSet_Data do
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
      if aValue = 1 then //Check
        SelectRowCount := RecordCount
      else
        SelectRowCount := 0;
      EnableControls;
    end; // try/finally
  end; // with
end; //

procedure TfrmMain.btnPrintLabelClick(Sender: TObject);
var
  iCopies: Integer;
  bCollateCopies: boolean;
  bcPrinter: string;
begin
  if not CheckUserRight(cUrPrintLabel, TButton(Sender).Caption, UserRights) then exit;

  //with ADOQuery3 do
  with ClientDataSet_Data do
  begin
    DisableControls;
    try
      Filtered := False;
      Filter := 'IsCheck=1';
      Filtered := True;
      if RecordCount = 0 then
      begin
        Application.MessageBox('Please Select Data.',
          PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONINFORMATION);
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

procedure TfrmMain.LabelPrintERP(iCopies: Integer; bCollateCopies: boolean; bcPrinter: string);
var
  ACONO {, LotNo_From, LotNo_To, Location_From, Location_To, HDO_From, HDO_To}: string;
  //  ASQL: string;
  SKU, HDONO, STOCKROOM, Barcode, UOM, PGMN, Location, PHISM, ColorShade, Project, PO, Dept: string;
  ORIG_QTY, CURR_QTY, MarketWidth: double;
  WorkOrderNo, GarmentColor, CustStyleNo, BuyerSizeCups, BuyerSizeCup, SuppColor: string;
begin
  Screen.Cursor := crHourGlass;
  try
    //with ADOQuery3 do
    with ClientDataSet_Data do
    begin
      DisableControls;
      try
        Filtered := False;
        Filter := 'IsCheck=1';
        Filtered := True;
        with ClientDataSet_Print do
        begin
          Close;
          Params.Clear;
          //CommandText := 'select * from PB_FINALID where 1=2';
          CommandText := 'select a.* from PB_PrintLabel a where 1=2 order by LOT_ID';
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
          Project := FieldByName('Project').AsString;
          PO := FieldByName('PO').AsString;

          Dept := FieldByName('Dept').AsString;
          WorkOrderNo := FieldByName('WorkOrderNo').AsString;
          GarmentColor := FieldByName('GarmentColor').AsString;
          CustStyleNo := FieldByName('CustStyleNo').AsString;
          BuyerSizeCups := FieldByName('BuyerSizeCups').AsString;
          BuyerSizeCup := FieldByName('BuyerSizeCup').AsString;
          SuppColor := Copy(SKU, 10, 3); // FieldByName('SuppColor').AsString;
          MarketWidth := FieldByName('MARKER_WIDTH').AsFloat;

          ORIG_QTY := FieldByName('ORG_QTY').AsFloat; // GetORIGQTYFromFinalLabel(ACONO, Barcode, SKU, STOCKROOM, HDONO);
          //ShowMessage(FloatToStr(ORIG_QTY));
          CURR_QTY := FieldByName('SPHY').AsFloat;
          if ORIG_QTY = 0 then ORIG_QTY := CURR_QTY;

          with ClientDataSet_Print do
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
            FieldByName('Project').AsString := Project;
            FieldByName('PO').AsString := PO;
            FieldByName('Dept').AsString := Dept;

            FieldByName('WorkOrderNo').AsString := WorkOrderNo;
            FieldByName('GarmentColor').AsString := GarmentColor;
            FieldByName('CustStyleNo').AsString := CustStyleNo;
            FieldByName('BuyerSizeCups').AsString := BuyerSizeCups;
            FieldByName('BuyerSizeCup').AsString := BuyerSizeCup;
            FieldByName('SuppColor').AsString := Copy(SKU, 10, 3);
            FieldByName('MARKER_WIDTH').AsFloat := MarketWidth;
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
    //index
     //ClientDataSet_Temp.AddIndex(Edit1.Text + 'Index', Edit1.Text, [ixCaseInsensitive],'','',0);
    //ClientDataSet_Temp.IndexName := Edit1.Text + 'Index';

    if WriteToSocketStream(iCopies, bCollateCopies, bcPrinter, ClientDataSet_Print, BarcodePrint) = 1 then
      PB_PrintLabelList();
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
end;

procedure TfrmMain.PB_PrintLabelList();
var
  CONO, PNUM, STRC, LOCN: string;
  DTLC, SDAT, STIM: Integer;
  bIsPrint: boolean;
begin
  //with ADOQuery3 do
  with ClientDataSet_Data do
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
          FieldByName('PrintDate').AsDateTime := Now;
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

function TfrmMain.GetORIGQTYFromFinalLabel(CompanyNo, Barcode, SKU, STOCKROOM, HDONO: string): Double;
var
  LOTID: string;
begin
  if (HDONO = '') then
  begin
    result := 0;
    exit;
  end;
  LOTID := Copy(Barcode, 1, 13) + '00';
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
    Params.ParamByName('LOT_ID').AsString := LOTID;
    Params.ParamByName('STOCKROOM').AsString := STOCKROOM;
    Params.ParamByName('Company').AsString := CompanyNo;
    Open;
    result := FieldByName('ORG_QTY').AsFloat;
  end; // with
end;

procedure TfrmMain.cxGridDBTableView1CustomDrawCell(
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

procedure TfrmMain.ADOQuery3AfterClose(DataSet: TDataSet);
begin
  inherited;
  btnSelectAll.Enabled := False;
  btnSelectNone.Enabled := False;
  btnDefaultSelect.Enabled := False;
  btnPrintLabel.Enabled := False;
  btnSelectPrinted.Enabled := False;
end;

procedure TfrmMain.ADOQuery3AfterOpen(DataSet: TDataSet);
begin
  inherited;
  btnSelectAll.Enabled := True;
  btnSelectNone.Enabled := True;
  btnDefaultSelect.Enabled := True;
  btnSelectPrinted.Enabled := True;
  //btnPrintLabel.Enabled := True;
  SelectRowCount := 0;
end;

procedure TfrmMain.SetSelectRowCount(Value: Integer);
begin
  FSelectRowCount := Value;
  btnPrintLabel.Enabled := FSelectRowCount > 0;
end;

procedure TfrmMain.cxGrid1DBTableView1IsCheckPropertiesEditValueChanged(
  Sender: TObject);
begin
  //if ADOQuery3.FieldByName('IsCheck').AsInteger = 1 then
  if ClientDataSet_Data.FieldByName('IsCheck').AsInteger = 1 then
    Inc(FSelectRowCount)
  else
    Dec(FSelectRowCount);
  SelectRowCount := FSelectRowCount;
end;

procedure TfrmMain.btnClearAllClick(Sender: TObject);
begin
  inherited;
  ClientDataSet_Data.Close;
end;

procedure TfrmMain.ClientDataSet_DataAfterOpen(DataSet: TDataSet);
begin
  inherited;
  btnSelectAll.Enabled := True;
  btnSelectNone.Enabled := True;
  btnDefaultSelect.Enabled := True;
  btnSelectPrinted.Enabled := True;
  //btnPrintLabel.Enabled := True;
  SelectRowCount := 0;
end;

procedure TfrmMain.ClientDataSet_DataAfterClose(DataSet: TDataSet);
begin
  inherited;
  btnSelectAll.Enabled := False;
  btnSelectNone.Enabled := False;
  btnDefaultSelect.Enabled := False;
  btnSelectPrinted.Enabled := False;
  btnPrintLabel.Enabled := False;
end;

procedure TfrmMain.btnDefaultSelectClick(Sender: TObject);
begin
  SelectPrint(false);
end;

procedure TfrmMain.SelectPrint(selectHasPrint: boolean);
var
  isPrint, i, j: integer;
begin
  //with ADOQuery3 do
  with ClientDataSet_Data do
  begin
    //SelectAllSplit(0);
    DisableControls;
    try
      //Filtered := False;
      //Filter := 'IsPrint=0';
      //Filtered := True;
      i := 0;
      First;
      while not eof do
      begin
        isPrint := FieldByName('IsPrint').AsInteger;

        Edit;
        if ( ((isPrint = 0) and (not selectHasPrint)) or ((isPrint = 1) and selectHasPrint) ) then
        begin
          FieldByName('IsCheck').AsInteger := 1;
          i := i + 1;
        end
        else
          FieldByName('IsCheck').AsInteger := 0;
        Post;

        Next;
      end;
      SelectRowCount := i; // RecordCount;
    finally // wrap up
      First;
      //Filtered := False;
      //Filter := '';
      EnableControls;
    end; // try/finally
  end; //withend;
end;

procedure TfrmMain.btnSelectPrintedClick(Sender: TObject);
begin
  SelectPrint(true);

  {
    //with ADOQuery3 do
    with ClientDataSet_Data do
    begin
      SelectAllSplit(0);
      DisableControls;
      try
        Filtered := False;
        Filter := 'IsPrint=1';
        Filtered := True;
        First;
        while not eof do
        begin
          Edit;
          FieldByName('IsCheck').AsInteger := 1;
          Post;
          Next;
        end;
        SelectRowCount := RecordCount;
      finally // wrap up
        First;
        Filtered := False;
        Filter := '';
        EnableControls;
      end; // try/finally
    end; //withend;
  end;   }
end;

end.

