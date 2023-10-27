unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmBase, cxLookAndFeels, cxStyles, DB, DBClient, ExtCtrls,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCurrencyEdit,
  cxCheckBox, cxPC, cxLabel, ADODB, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxRadioGroup, cxLookAndFeelPainters,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  Menus, cxMemo;

type
  TfrmMain = class(TfrmBase)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cxTextEdit_ITEM_CODE: TcxTextEdit;
    cxTextEdit_HDO_NO: TcxTextEdit;
    cxTextEdit_COMPANY: TcxTextEdit;
    cxTextEdit_StockRoom: TcxTextEdit;
    cxTextEdit_LOT_ID: TcxTextEdit;
    cxTextEdit_UOM: TcxTextEdit;
    cxCurrencyEdit_ORIG_QTY: TcxCurrencyEdit;
    cxCurrencyEdit_CURR_QTY: TcxCurrencyEdit;
    cxTextEdit_Location: TcxTextEdit;
    cxTextEdit_PGMN: TcxTextEdit;
    ADOQuery1: TADOQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    btnPrintLabel: TcxButton;
    cxGroupBox2: TcxGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    cxComboBox1: TcxComboBox;
    cxSpinEdit_Copies: TcxSpinEdit;
    cxCheckBox_CollateCopies: TcxCheckBox;
    Panel3: TPanel;
    cxGroupBox5: TcxGroupBox;
    editCompany: TcxTextEdit;
    cxGroupBox3: TcxGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    editLotNo_From: TcxTextEdit;
    editLotNo_To: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    editLoc_From: TcxTextEdit;
    editLoc_To: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxGroupBox6: TcxGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    editHDO_From: TcxTextEdit;
    editHDO_To: TcxTextEdit;
    cxLabel3: TcxLabel;
    DataSource3: TDataSource;
    cxGroupBox7: TcxGroupBox;
    rbDirectPrint: TcxRadioButton;
    rbSelectedPrint: TcxRadioButton;
    btnPrevewData: TcxButton;
    Panel_Grid: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1IsCheck: TcxGridDBColumn;
    cxGrid1DBTableView1HDO_NO: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_CODE: TcxGridDBColumn;
    cxGrid1DBTableView1LOT_ID: TcxGridDBColumn;
    cxGrid1DBTableView1ORG_QTY: TcxGridDBColumn;
    cxGrid1DBTableView1CUR_BAL: TcxGridDBColumn;
    cxGrid1DBTableView1UOM: TcxGridDBColumn;
    cxGrid1DBTableView1STOCKROOM: TcxGridDBColumn;
    cxGrid1DBTableView1COMPANY: TcxGridDBColumn;
    cxGrid1DBTableView1NO_OF_COPIES: TcxGridDBColumn;
    cxGrid1DBTableView1NO_OF_ROLLS: TcxGridDBColumn;
    cxGrid1DBTableView1MARKER_WIDTH: TcxGridDBColumn;
    cxGrid1DBTableView1PURCHASE_UOM: TcxGridDBColumn;
    cxGrid1DBTableView1Location: TcxGridDBColumn;
    cxGrid1DBTableView1pgmn: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1RECORD_CREATED_DATE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel4: TPanel;
    btnSelectAll: TcxButton;
    btnSelectNone: TcxButton;
    cxGrid1DBTableView1PHISM: TcxGridDBColumn;
    Label19: TLabel;
    cxTextEdit_PHISM: TcxTextEdit;
    cxGrid1DBTableView1ColorShade: TcxGridDBColumn;
    Label20: TLabel;
    cxTextEdit_ColorShade: TcxTextEdit;
    cxGroupBox8: TcxGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    editST_From: TcxTextEdit;
    editST_To: TcxTextEdit;
    cxLabel4: TcxLabel;
    ClientDataSet_Temp1: TClientDataSet;
    ADOQuery2: TADOQuery;
    cxGrid1DBTableView1Project: TcxGridDBColumn;
    cxGrid1DBTableView1PO: TcxGridDBColumn;
    Label23: TLabel;
    Label24: TLabel;
    editProject: TcxTextEdit;
    editPO: TcxTextEdit;
    cxGrid1DBTableView1Dept: TcxGridDBColumn;
    ClientDataSet_TempData: TClientDataSet;
    cxGrid1DBTableView1WorkOrderNo: TcxGridDBColumn;
    cxGrid1DBTableView1GarmentColor: TcxGridDBColumn;
    cxGrid1DBTableView1CustStyleNo: TcxGridDBColumn;
    cxGrid1DBTableView1BuyerSizeCups: TcxGridDBColumn;
    cxGrid1DBTableView1BuyerSizeCup: TcxGridDBColumn;
    cxGrid1DBTableView1POLine: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    btnIncludeQty: TMenuItem;
    btnNotIncludeQty: TMenuItem;
    N1: TMenuItem;
    cxMemo1: TcxMemo;
    procedure FormShow(Sender: TObject);
    procedure btnPrintLabelClick(Sender: TObject);
    procedure rbDirectPrintClick(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnSelectNoneClick(Sender: TObject);
    procedure btnPrevewDataClick(Sender: TObject);
    procedure btnIncludeQtyClick(Sender: TObject);
    procedure btnNotIncludeQtyClick(Sender: TObject);
    procedure Label13DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure _GetBarcodePrinters;
    function GetDataFromErpFromTo: boolean;
    procedure FreeLabelPrint(iCopies: Integer; bCollateCopies: boolean; bcPrinter: string);
    procedure DoSelectAllRecord(bAll: Integer; includeQtyZero: boolean = true);
    procedure LabelPrintERP(iCopies: Integer; bCollateCopies: boolean; bcPrinter: string);
    function GetORIGQTYFromFinalLabel(CompanyNo, Barcode, SKU, STOCKROOM, HDONO: string): Double;
    procedure GetPOInformation(CompanyNo, PONO: string; var SuppColor, BuyerSizeCup, BuyerSizeCups, Dept, WO, GarmentColor, CustStyle: string);
    function ValiateLocation(ACono, ALocation: string): boolean;
    function ConvertToSQLData(sql: string): string;
  public
    { Public declarations }
    procedure SetLanguageStr; override;
  end;

var
  frmMain: TfrmMain;

implementation

uses uTools;

{$R *.dfm}

procedure TfrmMain.btnPrintLabelClick(Sender: TObject);
var
  bcPrinter: string;
  iCopies: Integer;
  bCollateCopies: boolean;
begin
  inherited;
  if not CheckUserRight(cUrPrintLabel, TButton(Sender).Caption, UserRights) then exit;

  iCopies := cxSpinEdit_Copies.Value;
  bcPrinter := cxComboBox1.Text;
  if bcPrinter = '' then
  begin
    Application.MessageBox(PChar(GetLanguagesStr(10, 'Please select Barcode Printer')),
      PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONINFORMATION);
    if cxComboBox1.CanFocus then cxComboBox1.SetFocus;
    exit;
  end;
  bCollateCopies := cxCheckBox_CollateCopies.Checked;

  if cxPageControl1.ActivePageIndex = 0 then
    FreeLabelPrint(iCopies, bCollateCopies, bcPrinter)
  else
    LabelPrintERP(iCopies, bCollateCopies, bcPrinter);

  //WriteToSocketStream(iCopies, bCollateCopies, bcPrinter, ClientDataSet_Temp, BarcodePrint);
end;

function TfrmMain.ValiateLocation(ACono, ALocation: string): boolean;
begin
  result := False;
  with ADOQuery2 do
  begin
    close;
    sql.clear;
    sql.add('select Count(*) from ault4f1.app84 ');
    sql.add('where cono84=' + QuotedStr(ACono) + ' and ch9t84=' + QuotedStr(ALocation));
    open;
    result := fields[0].AsInteger > 0;
  end;
end;

procedure TfrmMain.FreeLabelPrint(iCopies: Integer; bCollateCopies: boolean; bcPrinter: string);
var
  SKU, HDONO, CompanyNo, STOCKROOM, ORIG_QTY, Barcode, CURR_QTY, UOM, PGMN, Location, PHISM, ColorShade, Project, PO: string;
begin
  Screen.Cursor := crHourGlass;
  try
    UOM := bcGetStringStr(cxTextEdit_UOM.Text, 2);
    SKU := cxTextEdit_ITEM_CODE.Text;
    HDONO := cxTextEdit_HDO_NO.Text;
    CompanyNo := cxTextEdit_COMPANY.Text;
    STOCKROOM := cxTextEdit_STOCKROOM.Text;
    ORIG_QTY := FormatFloat('#,##0.000', cxCurrencyEdit_ORIG_QTY.Value);
    Barcode := bcGetStringStr(cxTextEdit_LOT_ID.Text, 15);
    CURR_QTY := FormatFloat('#,##0.000', cxCurrencyEdit_CURR_QTY.Value);
    PGMN := cxTextEdit_PGMN.Text;
    Location := cxTextEdit_Location.Text;
    PHISM := cxTextEdit_PHISM.Text;
    ColorShade := cxTextEdit_ColorShade.Text;
    Project := editProject.Text;
    PO := editPO.Text;

    if not (ValiateLocation(CompanyNo, Location)) then
    begin
      Application.MessageBox(PChar(GetLanguagesStr(94, 'this Location is invalid !', true)),
        PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
      cxTextEdit_Location.SetFocus;
      exit;
    end;

    with ClientDataSet_Temp do
    begin
      Close;
      Params.Clear;
      CommandText := 'select a.* from PB_PrintLabel a where 1=2';
      Open;

      Append;
      FieldByName('HDO_NO').AsString := HDONO;
      FieldByName('ITEM_CODE').AsString := SKU;
      FieldByName('LOT_ID').AsString := Barcode;
      FieldByName('ORG_QTY').AsFloat := cxCurrencyEdit_ORIG_QTY.Value;
      FieldByName('CUR_BAL').AsFloat := cxCurrencyEdit_CURR_QTY.Value;
      FieldByName('UOM').AsString := UOM;
      FieldByName('STOCKROOM').AsString := STOCKROOM;
      FieldByName('COMPANY').AsString := CompanyNo;
      FieldByName('NO_OF_ROLLS').AsInteger := 1;
      FieldByName('STATUS').AsInteger := 0;
      FieldByName('RECORD_CREATED_DATE').AsDateTime := Now;
      FieldByName('pgmn').AsString := PGMN;
      FieldByName('Location').AsString := Location;
      FieldByName('PHISM').AsString := PHISM;
      FieldByName('ColorShade').AsString := ColorShade;
      FieldByName('Project').AsString := Project;
      FieldByName('PO').AsString := PO;
      Post;
    end;

    WriteToSocketStream(iCopies, bCollateCopies, bcPrinter, ClientDataSet_Temp, BarcodePrint);
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally
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
    ACONO := editCompany.Text;

    if rbDirectPrint.Checked then
      if not GetDataFromErpFromTo then exit;

    with ClientDataSet_Temp do
    begin
      Close;
      Params.Clear;
      CommandText := 'select a.* from PB_PrintLabel a where 1=2';
      Open;
    end;

    //with ADOQuery1 do
    with ClientDataSet_TempData do
    begin
      DisableControls;
      try
        Filtered := False;
        Filter := 'IsCheck=1';
        Filtered := True;
        if RecordCount = 0 then
        begin
          Application.MessageBox(PChar(GetLanguagesStr(22, 'Please Select Data.')),
            PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONINFORMATION);
          exit;
        end;

        First;
        while not eof do
        begin
          STOCKROOM := Fields[0].AsString;
          SKU := Fields[1].AsString;
          Barcode := bcGetStringStr(Fields[2].AsString, 15);
          UOM := bcGetStringStr(Fields[4].AsString, 2);
          Location := Fields[7].AsString;
          PGMN := Fields[8].AsString;
          HDONO := Fields[9].AsString;
          PHISM := Fields[10].AsString;
          ColorShade := Fields[11].AsString;
          Project := Fields[12].AsString;
          PO := Fields[13].AsString;
          Dept := FieldByName('Dept').AsString;
          WorkOrderNo := FieldByName('WorkOrderNo').AsString;
          GarmentColor := FieldByName('GarmentColor').AsString;
          CustStyleNo := FieldByName('CustStyleNo').AsString;
          BuyerSizeCups := FieldByName('BuyerSizeCups').AsString;
          BuyerSizeCup := FieldByName('BuyerSizeCup').AsString;
          SuppColor := Copy(SKU, 10, 3); // FieldByName('SuppColor').AsString;
          MarketWidth := FieldByName('MARKER_WIDTH').AsFloat;
          //Application.MessageBox(PChar(Dept),
          //PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);

          //ORIG_QTY := Fields[3].AsFloat;
          ORIG_QTY := FieldByName('ORG_QTY').AsFloat; // GetORIGQTYFromFinalLabel(ACONO, Barcode, SKU, STOCKROOM, HDONO);
          CURR_QTY := FieldByName('CUR_BAL').AsFloat; // Fields[3].AsFloat;
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
    //ClientDataSet_Temp.SaveToFile('C:\Label.xml',dfXML);
    //ClientDataSet_Temp.SaveToFile('C:\Label.bin',dfBinary);
    WriteToSocketStream(iCopies, bCollateCopies, bcPrinter, ClientDataSet_Temp, BarcodePrint);
  finally // wrap up
    Screen.Cursor := crDefault;
  end; // try/finally

end;

procedure TfrmMain.GetPOInformation(CompanyNo, PONO: string; var SuppColor, BuyerSizeCup, BuyerSizeCups, Dept, WO, GarmentColor, CustStyle: string);
begin
  with ClientDataSet_Temp1 do
  begin
    Close;
    Params.Clear;
    Params.CreateParam(ftString, 'Company', ptInput);
    Params.CreateParam(ftString, 'PONO', ptInput);
    CommandText := 'select a.Dept FROM [PH.POPC].[dbo].[POHeader] a'
      + ' where a.Company=:Company and a.PONO=:PONO  and a.versionflag=1';
    Params.ParamByName('PONO').AsString := PONO;
    Params.ParamByName('Company').AsString := CompanyNo;
    Open;
    Dept := FieldByName('Dept').AsString;
  end; // with
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

function TfrmMain.GetDataFromErpFromTo: boolean;
  procedure SetADOParam(AParam: string; AValue: string);
  begin
    with ADOQuery1.Parameters do
    begin
      if FindParam(AParam) <> nil then ParamByName(AParam).Value := AValue;
    end; // with
  end;
var
  ACONO, LotNo_From, LotNo_To, Location_From, Location_To, HDO_From, HDO_To, ST_From, ST_To: string;
  ASQL, sql1, sql2, sql11, sql12, tempTable: string;
  ACursor: TCursor;
  //  SKU, HDONO,  STOCKROOM,  Barcode,  UOM, PGMN, Location: string;
  //  ORIG_QTY,CURR_QTY :double;
begin
  ACursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  try
    tempTable := '#temp' + FormatDateTime('yyyymmddhhnnsszzz', now);

    ACONO := editCompany.Text;

    LotNo_From := editLotNo_From.Text;
    LotNo_To := editLotNo_To.Text;
    Location_From := editLoc_From.Text;
    Location_To := editLoc_To.Text;
    HDO_From := editHDO_From.Text;
    HDO_To := editHDO_To.Text;
    ST_From := editST_From.Text;
    ST_To := editST_To.Text;

    ASQL := '';
    if (LotNo_From <> '') and (LotNo_To <> '') then
      ASQL := ASQL + ' AND locn80 Between ' + QuotedStr(LotNo_From) + ' AND ' + QuotedStr(LotNo_To)
    else if (LotNo_From <> '') then
      ASQL := ASQL + ' AND locn80=' + QuotedStr(LotNo_From)
    else if (LotNo_To <> '') then
      ASQL := ASQL + ' AND locn80=' + QuotedStr(LotNo_To);

    if (Location_From <> '') and (Location_To <> '') then
      ASQL := ASQL + ' AND CH9T84 Between ' + QuotedStr(Location_From) + ' AND ' + QuotedStr(Location_To)
    else if (Location_From <> '') then
      ASQL := ASQL + ' AND CH9T84=' + QuotedStr(Location_From)
    else if (Location_To <> '') then
      ASQL := ASQL + ' AND CH9T84=' + QuotedStr(Location_To);

    if (HDO_From <> '') and (HDO_To <> '') then
      ASQL := ASQL + ' AND ch1t84 Between ' + QuotedStr(HDO_From) + ' AND ' + QuotedStr(HDO_To)
    else if (HDO_From <> '') then
      ASQL := ASQL + ' AND ch1t84=' + QuotedStr(HDO_From)
    else if (HDO_To <> '') then
      ASQL := ASQL + ' AND ch1t84=' + QuotedStr(HDO_To);

    if (ST_From <> '') and (ST_To <> '') then
      ASQL := ASQL + ' AND strc80 Between ' + QuotedStr(ST_From) + ' AND ' + QuotedStr(ST_To)
    else if (ST_From <> '') then
      ASQL := ASQL + ' AND strc80=' + QuotedStr(ST_From)
    else if (ST_To <> '') then
      ASQL := ASQL + ' AND strc80=' + QuotedStr(ST_To);

    // with ADOQuery1 do
    with ClientDataSet_TempData do
    begin
      //2:
      Close;
      {*
      SQL.Clear;
      SQL.Add('select * from (');
      //                 0                1                 2               3                4
      SQL.Add('select strc80 as STOCKROOM,pnum80 as ITEM_CODE,locn80 as LOT_ID,sphy80 as ORG_QTY,IUNT35 as UOM,'); //sunt35 modify accordidng to samson  2006-07-04
      //              5       6                7                8               9               10                 11         12                    13
      SQL.Add('1 as IsCheck,spc235,ch9t84 as Location,pgmn35 as pgmn,ch1t84 as HDO_NO,VCAT01 AS PHISM,CH4T84 AS ColorShade,CH3T84 as Project,SubString(CH2T84,1,7) as PO,');
      SQL.Add('locn80,CH9T84,ch1t84,CONO80,strc80   ');
      SQL.Add('from ault2f1.inp80,ault2f1.inp35,AULT2F1.INP60');
      SQL.Add('LEFT JOIN AULT4F1.PMP01 ON (CONO01=CONO60 AND ITEM01=PNUM60 AND VNDR01=SUC160)');
      SQL.Add('LEFT JOIN ault4f1.app84 ON (cono84=cono80 and lotn84=locn80 and pnum84=pnum80)');
      sql.add('where cono80=cono35 and pnum80=pnum35 ');
      SQL.Add('AND CONO80=CONO60 AND PNUM80=PNUM60 AND STRC80=STRC60 and sphy80>0');
      SQL.Add(') aa');
      SQL.Add('where CONO80=' + QuotedStr(ACONO) + ASQL);
*}
      //As400Sql:= 'select * from openquery(AS400,'
      sql1 := 'select *  from ( select strc80 as STOCKROOM,pnum80 as ITEM_CODE,locn80 as LOT_ID,sphy80 as CUR_BAL, IUNT35 as UOM,'
        + ' 1 as IsCheck,spc235,ch9t84 as Location,pgmn35 as pgmn,ch1t84 as HDO_NO,VCAT01 AS PHISM,CH4T84 AS ColorShade,CH3T84 as Project,'
        + ' SubString(CH2T84,1,7) as PO,SubString(CH2T84,8,3) as POLine1,locn80,CH9T84,ch1t84,CONO80,strc80,SPC235 as MARKER_WIDTH '
        + ' from ault2f1.inp80,ault2f1.inp35,AULT2F1.INP60';
      sql1 := sql1 + ' LEFT JOIN AULT4F1.PMP01 ON (CONO01=CONO60 AND ITEM01=PNUM60 AND VNDR01=SUC160)'
        + ' LEFT JOIN ault4f1.app84 ON (cono84=cono80 and lotn84=locn80 and pnum84=pnum80)'
        + ' where cono80=cono35 and pnum80=pnum35'
        + ' AND CONO80=CONO60 AND PNUM80=PNUM60 AND STRC80=STRC60 and sphy80>=0 ) aa ';
      sql1 := sql1 + ' where CONO80= ' + QuotedStr(ACONO) + ASQL;

      sql11 := ConvertToSQLData(sql1); //110225-S14
      sql12 := 'if object_id(''tempdb.dbo.' + tempTable + ''') is not null drop table ' + tempTable
        + ' SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED'
        + ' select *,case when isnumeric(POline1)=0 then ''0'' else POline1 end as POLine into ' + tempTable + ' from openquery(AS400,'' ' + sql11 + ' '')';

      sql2 := ' select  a.*,c.ORG_QTY,b.Dept,b.WorkOrderNo,b.GarmentColor,b.CustStyleNo,b.OrderLine,'
        + 'Coalesce(b.BuyerSizeCup,substring(a.ITEM_CODE,13,3)) as BuyerSizeCup,'
        + 'Coalesce(b.BuyerSizeCups,substring(a.ITEM_CODE,13,3)) as BuyerSizeCups';
      sql2 := sql2 + ' from ' + tempTable + ' a left join ('
        + ' select a.Company,a.Dept,b.WorkOrderNo,c.GarmentColor,c.CustStyleNo,b.OrderLine,c.SKU,a.PONO,'
        + ' [PH.POPC].dbo.[GetBuyerSizeCup](a.Company,a.PONO,c.SKU,b.OrderLine) as BuyerSizeCup, '
        + ' [PH.POPC].dbo.[GetBuyerSizeCups](a.Company,a.PONO,c.SKU,b.OrderLine) as BuyerSizeCups ';
      sql2 := sql2 + ' FROM       [PH.POPC].[dbo].POHeader          AS a '
        + ' INNER JOIN [PH.POPC].[dbo].PODetail          AS b '
        + ' ON a.Company = b.Company AND a.PONO = b.PONO AND a.Version = b.Version AND a.AmendmentNo = b.AmendmentNo'
        + ' INNER JOIN [PH.POPC].[dbo].POColorSizeDetail AS c '
        + ' ON b.Company = c.Company AND b.PONO = c.PONO AND b.Version = c.Version AND b.AmendmentNo = c.AmendmentNo'
        + ' And  b.OrderLine=c.OrderLine'
        + ' LEFT JOIN [PH.MIDc].[dbo].Detail AS d ON d.SuppRef=c.SupplierReference ';
      sql2 := sql2 + ' where a.VersionFlag=1) b '
        + ' ON  b.Company=a.CONO80 and b.pono=a.PO and b.SKU=a.ITEM_CODE and b.OrderLine=a.POLine'
        + ' left join PB_FINALID c on c.HDO_NO=a.HDO_NO and c.Item_Code=a.ITEM_CODE  and c.LOT_ID=a.LOT_ID '
        + ' and c.STOCKROOM=a.STOCKROOM and c.Company=a.CONO80'
        + ' order by a.LOT_ID';

      Params.Clear;
      CommandText := sql12 + sql2;
      cxMemo1.Text:= sql12 + sql2;
      {SetADOParam('LotNo_From', LotNo_From);
      SetADOParam('LotNo_To', LotNo_To);
      SetADOParam('Location_From', Location_From);
      SetADOParam('Location_To', Location_To);
      SetADOParam('HDO_From', HDO_From);
      SetADOParam('HDO_To', HDO_To);
      SetADOParam('ST_From', ST_From);
      SetADOParam('ST_To', ST_To); }
      Open;
      result := RecordCount > 0;
      if not result then
      begin
        Application.MessageBox(PChar(GetLanguagesStr(44, 'No Data', True)),
          PChar(GetLanguagesStr(5, 'Tips', True)), MB_OK + MB_ICONInformation);
      end;
    end; //with
  finally // wrap up
    Screen.Cursor := ACursor;
  end; // try/finally

end;

function TfrmMain.ConvertToSQLData(sql: string): string;
var
  s: string;
begin
  s := StringReplace(sql, '''', '''''', [rfReplaceAll]);
  result := s;
end;

procedure TfrmMain._GetBarcodePrinters;
var
  sPrinterName: Variant;
  I: Integer;
  AList: TarS;
begin
  if not GetBarcodePrintersFromINI(AList) then exit;
  for I := 0 to High(AList) do
  begin
    sPrinterName := AList[I];
    cxComboBox1.Properties.Items.AddObject(sPrinterName, nil);
  end;
  if Length(AList) > 0 then
    cxComboBox1.ItemIndex := 0;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  cxPageControl1.ActivePageIndex := 1;
  ADOQuery1.Connection := ZPHLIB;
  ADOQuery2.Connection := ZPHLIB;
  ClientDataSet_Temp1.RemoteServer := SCN;
  ClientDataSet_TempData.RemoteServer := SCN;
  SetLanguageStr;
  _GetBarcodePrinters;
end;

procedure TfrmMain.SetLanguageStr;
begin
  RUnit := 'Final Label';
  btnPrintLabel.Caption := GetLanguagesStr(1, 'Print Label');
  cxTabSheet1.Caption := GetLanguagesStr(17, 'Free Label Print');
  cxTabSheet2.Caption := GetLanguagesStr(18, 'Label Print From ERP');

  Label1.Caption := GetLanguagesStr(13, 'Item Code', True);
  Label3.Caption := GetLanguagesStr(2, 'HDO Number');
  Label4.Caption := GetLanguagesStr(17, 'Company', True);
  Label5.Caption := GetLanguagesStr(16, 'Stock Room', True);
  Label7.Caption := GetLanguagesStr(3, 'Original Qty');
  Label8.Caption := GetLanguagesStr(4, 'Current Balance');
  Label9.Caption := GetLanguagesStr(14, 'Lot Number', True);
  Label10.Caption := GetLanguagesStr(15, 'UOM', True);
  Label11.Caption := GetLanguagesStr(73, 'Location', True);
  Label12.Caption := GetLanguagesStr(15, 'Material Type');
  Label20.Caption := GetLanguagesStr(81, 'Color Shade', True);
  Label23.Caption := GetLanguagesStr(129, 'Project No.', True);
  cxGrid1DBTableView1Project.Caption := Label23.Caption;
  cxGrid1DBTableView1PO.Caption := GetLanguagesStr(130, 'PO No.', True);
  cxGrid1DBTableView1Dept.Caption := GetLanguagesStr(131, 'Dept', True);
  cxGrid1DBTableView1WorkOrderNo.Caption := GetLanguagesStr(132, 'WO', True);
  cxGrid1DBTableView1GarmentColor.Caption := GetLanguagesStr(133, 'Garment Color', True);
  cxGrid1DBTableView1CustStyleNo.Caption := GetLanguagesStr(134, 'End Cust Style', True);
  cxGrid1DBTableView1BuyerSizeCups.Caption := GetLanguagesStr(135, 'Buyer Size/Cup', True);

  cxLabel1.Caption := Label9.Caption;
  cxLabel2.Caption := Label11.Caption;
  cxLabel3.Caption := Label3.Caption;
  Label13.Caption := GetLanguagesStr(122, 'From', True);
  Label14.Caption := GetLanguagesStr(123, 'To', True);
  Label15.Caption := Label13.Caption;
  Label16.Caption := Label14.Caption;
  Label17.Caption := Label13.Caption;
  Label18.Caption := Label14.Caption;
  Label21.Caption := Label13.Caption;
  Label22.Caption := Label14.Caption;
  cxLabel4.Caption := GetLanguagesStr(16, 'Stock Room', True);
  cxGroupBox5.Caption := Label4.Caption;
  rbDirectPrint.Caption := GetLanguagesStr(19, 'Direct Print');
  rbSelectedPrint.Caption := GetLanguagesStr(20, 'Selected Print');
  btnPrevewData.Caption := GetLanguagesStr(21, 'Prevew');

  Label2.Caption := GetLanguagesStr(10, 'Please select Barcode Printer:');
  Label6.Caption := GetLanguagesStr(5, 'Copies');
  cxCheckBox_CollateCopies.Caption := GetLanguagesStr(74, 'Collate Copies', True);
  cxGrid1DBTableView1PHISM.Caption := GetLanguagesStr(79, 'Supp Refer No.', True);
  Label19.Caption := GetLanguagesStr(79, 'Supp Refer No.', True);

  btnSelectAll.Caption := GetLanguagesStr(58, 'Select All', True);
  btnSelectNone.Caption := GetLanguagesStr(59, 'Select None', True);

  cxGrid1DBTableView1ITEM_CODE.Caption := GetLanguagesStr(13, 'Item Code', True);
  cxGrid1DBTableView1LOT_ID.Caption := GetLanguagesStr(14, 'Lot Number', True);
  cxGrid1DBTableView1UOM.Caption := GetLanguagesStr(15, 'UOM', True);
  cxGrid1DBTableView1STOCKROOM.Caption := GetLanguagesStr(16, 'Stock Room', True);
  cxGrid1DBTableView1COMPANY.Caption := GetLanguagesStr(17, 'Company Code', True);
  cxGrid1DBTableView1IsCheck.Caption := GetLanguagesStr(39, 'Select', True);

  cxGrid1DBTableView1HDO_NO.Caption := GetLanguagesStr(2, 'HDO Number');
  cxGrid1DBTableView1CUR_BAL.Caption := Label8.Caption;
  cxGrid1DBTableView1ORG_QTY.Caption := Label7.Caption; // GetLanguagesStr(3, 'Original Qty');
  cxGrid1DBTableView1NO_OF_COPIES.Caption := GetLanguagesStr(5, 'No of Copies');
  cxGrid1DBTableView1NO_OF_ROLLS.Caption := GetLanguagesStr(6, 'No of Rolls');
  cxGrid1DBTableView1MARKER_WIDTH.Caption := GetLanguagesStr(7, 'Marker Width');
  cxGrid1DBTableView1PURCHASE_UOM.Caption := GetLanguagesStr(8, 'Purchase Uom');
  cxGrid1DBTableView1Location.Caption := GetLanguagesStr(73, 'Location', True);
  cxGrid1DBTableView1Pgmn.Caption := GetLanguagesStr(15, 'Material Type');
  cxGrid1DBTableView1PHISM.Caption := GetLanguagesStr(79, 'Supp Refer No.', True);
  cxGrid1DBTableView1ColorShade.Caption := GetLanguagesStr(81, 'Color Shade', True);

  //=====
  pnl_Title.Caption := GetLanguagesStr(1000 + Self.Tag, RUnit, True);
  Caption := pnl_Title.Caption;

  btnIncludeQty.Caption := GetLanguagesStr(141, 'Include Qty = 0', True);
  btnNotIncludeQty.Caption := GetLanguagesStr(142, 'Not Include Qty = 0', True);
end;

procedure TfrmMain.rbDirectPrintClick(Sender: TObject);
begin
  inherited;
  Panel_Grid.Visible := rbSelectedPrint.Checked;
  btnPrevewData.Visible := rbSelectedPrint.Checked;
end;

procedure TfrmMain.btnSelectAllClick(Sender: TObject);
begin
  inherited;
  //DoSelectAllRecord(1);
end;

procedure TfrmMain.btnSelectNoneClick(Sender: TObject);
begin
  inherited;
  DoSelectAllRecord(0);
end;

procedure TfrmMain.DoSelectAllRecord(bAll: Integer; includeQtyZero: boolean = true);
var
  ALotNumber: string;
  //includeQtyIsZero: boolean;
  qty: Double;
begin
  if (not ClientDataSet_TempData.Active) then exit;
  //with ADOQuery1 do
  with ClientDataSet_TempData do
  begin
    DisableControls;
    ALotNumber := fieldbyname('LOT_ID').AsString;
    try
      First;
      while not Eof do
      begin
        qty := fieldbyname('CUR_BAL').AsFloat;
        Edit;
        if (bAll = 1) then
        begin
          if (includeQtyZero) then
            FieldByName('IsCheck').AsInteger := 1
          else //if (not includeQtyZero) then
          begin
            if (qty <> 0) then
              FieldByName('IsCheck').AsInteger := 1
            else
              FieldByName('IsCheck').AsInteger := 0;
          end;
        end
        else
          FieldByName('IsCheck').AsInteger := bAll;
        Post;
        Next;
      end; // while
    finally // wrap up
      Locate('LOT_ID', ALotNumber, []);
      EnableControls;
    end; // try/finally
  end; // with
end; //

procedure TfrmMain.btnPrevewDataClick(Sender: TObject);
begin
  inherited;
  GetDataFromErpFromTo;
end;

procedure TfrmMain.btnIncludeQtyClick(Sender: TObject);
begin
  inherited;
  DoSelectAllRecord(1, true);
end;

procedure TfrmMain.btnNotIncludeQtyClick(Sender: TObject);
begin
  inherited;
  DoSelectAllRecord(1, false);
end;

procedure TfrmMain.Label13DblClick(Sender: TObject);
begin
  inherited;
  cxMemo1.Visible := not cxMemo1.Visible;
end;

end.

