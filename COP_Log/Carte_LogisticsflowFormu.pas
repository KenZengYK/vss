unit Carte_LogisticsflowFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ADODB, cxGridBandedTableView,
  cxGridDBBandedTableView, StdCtrls, Buttons, RzBckgnd, cxGridExportLink,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls,
  ppPrnabl, ppBands, ppCache, ppParameter, ppVar, ppViewr, ppStrtch, ppRichTx,
  ppSubRpt, Mask, rxToolEdit, DateUtils;

type
  TfrmCarte_Logisticsflow = class(TForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1seq1: TcxGridDBBandedColumn;
    cxGrid1wkday: TcxGridDBBandedColumn;
    cxGrid1org_o: TcxGridDBBandedColumn;
    cxGrid1org_a: TcxGridDBBandedColumn;
    cxGrid1aql_p1: TcxGridDBBandedColumn;
    cxGrid1aql_p2: TcxGridDBBandedColumn;
    cxGrid1aql_f1: TcxGridDBBandedColumn;
    cxGrid1aql_f2: TcxGridDBBandedColumn;
    cxGrid1aql_no: TcxGridDBBandedColumn;
    cxGrid1pak_del: TcxGridDBBandedColumn;
    cxGrid1pak_no: TcxGridDBBandedColumn;
    cxGrid1shp_del1: TcxGridDBBandedColumn;
    cxGrid1shp_del2: TcxGridDBBandedColumn;
    cxGrid1shp_del3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1shp_ttl: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1keycode5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1projectno5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1custpo5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1workorderno5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rwo_wo5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1custstyle5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1phcolor5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1custcolor5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1qty5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pdn_qty: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1act_cmpdt05: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1act_cmpdt5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1prod_site5: TcxGridDBBandedColumn;
    RzBackground2: TRzBackground;
    BitBtn9: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    SaveDialog1: TSaveDialog;
    cxGrid1DBBandedTableView1waql_p: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1waql_f: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wpak_del: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wpak_no: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wshp_del: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wshp_no: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wpdn_short: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wpdn_aqlno: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wpdn_aqlf: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wpdn_pakno: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1wpdn_ttl: TcxGridDBBandedColumn;
    BitBtn4: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape2: TppShape;
    log001: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    prod001: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel8: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    pdx01: TppLabel;
    pdx02: TppLabel;
    pdx03: TppLabel;
    pdx04: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    pdn001: TppLabel;
    wk001: TppLabel;
    fromto001: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel42: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppDBText14: TppDBText;
    ppLine29: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLine36: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLine41: TppLine;
    ppLine37: TppLine;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLine44: TppLine;
    ppLabel68: TppLabel;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLabel69: TppLabel;
    ppLine48: TppLine;
    ppLabel70: TppLabel;
    ppLine49: TppLine;
    ppDBText21: TppDBText;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLine52: TppLine;
    ppLabel73: TppLabel;
    ppLabel75: TppLabel;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLabel76: TppLabel;
    ppLine56: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLabel77: TppLabel;
    ppLine60: TppLine;
    ppDBText23: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLine61: TppLine;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLabel92: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLine70: TppLine;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLine71: TppLine;
    ppLabel104: TppLabel;
    ppLine72: TppLine;
    ppLabel105: TppLabel;
    ppLine73: TppLine;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLine74: TppLine;
    ppDBText27: TppDBText;
    ppShape3: TppShape;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppLabel110: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel111: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    pdnqty001: TppLabel;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    cxGrid1qty15: TcxGridDBBandedColumn;
    ppLine89: TppLine;
    ppLabel36: TppLabel;
    ppRichText1: TppRichText;
    ADODataSet2: TADODataSet;
    DataSource2: TDataSource;
    ppLabel1: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    cxGrid1aql_no1: TcxGridDBBandedColumn;
    ppShape6: TppShape;
    ppShape7: TppShape;
    aqlno001: TppLabel;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ADOQuery2: TADOQuery;
    DataSource3: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    ppLine55: TppLine;
    BitBtn1: TBitBtn;
    cxGrid1pak_no1: TcxGridDBBandedColumn;
    pakno3001: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppHeaderBand2: TppHeaderBand;
    ppLabel74: TppLabel;
    reduceqty001: TppLabel;
    ADODataSet3: TADODataSet;
    DataSource4: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    ppShape12: TppShape;
    ppDBText1: TppDBText;
    ppDBText22: TppDBText;
    ppDBText24: TppDBText;
    ppDBText28: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine115: TppLine;
    ppLine130: TppLine;
    ppDBText65: TppDBText;
    prod002: TppDBText;
    ppDBText67: TppDBText;
    Panel2: TPanel;
    RzBackground1: TRzBackground;
    Label16: TLabel;
    DateEdit4: TDateEdit;
    Label17: TLabel;
    DateEdit5: TDateEdit;
    BitBtn7: TBitBtn;
    title3001: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    BitBtn2: TBitBtn;
    cxGrid1aql_p01: TcxGridDBBandedColumn;
    cxGrid1aql_p02: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid1aql_f01: TcxGridDBBandedColumn;
    cxGrid1aql_f02: TcxGridDBBandedColumn;
    aql_p1001: TppLabel;
    aql_f1001: TppLabel;
    aql_p2001: TppLabel;
    aql_f2001: TppLabel;
    cxGrid1wkday1: TcxGridDBBandedColumn;
    wkday1001: TppLabel;
    ADOQuery3: TADOQuery;
    cxGrid1custpo_qty5: TcxGridDBBandedColumn;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel133: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppShape5: TppShape;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppLine86: TppLine;
    ppLabel41: TppLabel;
    ppLabel43: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape14: TppShape;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLine87: TppLine;
    ppDBText20: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel44: TppLabel;
    ppLabel114: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape4: TppShape;
    keycode001: TppLabel;
    pdnqty002: TppLabel;
    pdnqty2001: TppLabel;
    ppLine57: TppLine;
    ppLine88: TppLine;
    waqlp001: TppLabel;
    wpakdel001: TppLabel;
    wshpdel001: TppLabel;
    aqlno002: TppLabel;
    aql2001: TppLabel;
    aql2002: TppLabel;
    short001: TppLabel;
    wpdn001: TppLabel;
    pdngrade001: TppLabel;
    wpdn3001: TppLabel;
    wpdn3002: TppLabel;
    wpdn3003: TppLabel;
    cxGrid1aduit: TcxGridDBBandedColumn;
    ppLine100: TppLine;
    ppLine116: TppLine;
    ppDBText13: TppDBText;
    ppLine118: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    pdngrd001: TppLabel;
    aql1001: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel116: TppLabel;
    ppLine117: TppLine;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLine119: TppLine;
    ppLine120: TppLine;
    aqlf2002: TppLabel;
    ppRichText2: TppRichText;
    ppRichText3: TppRichText;
    ppLabel115: TppLabel;
    ppDBText15: TppDBText;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLine121: TppLine;
    ppLine122: TppLine;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppDBText45: TppDBText;
    d005: TppLabel;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLine125: TppLine;
    ppLine126: TppLine;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel134: TppLabel;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    d008: TppLabel;
    ppShape13: TppShape;
    ppLine129: TppLine;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppLine134: TppLine;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    paky001: TppDBCalc;
    pakw001: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLabel126: TppLabel;
    ppShape15: TppShape;
    ppLine143: TppLine;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLine144: TppLine;
    ppLine145: TppLine;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppLine146: TppLine;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppLine147: TppLine;
    ppLine150: TppLine;
    ppLine151: TppLine;
    d010: TppLabel;
    d011: TppLabel;
    d012: TppLabel;
    d013: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLine152: TppLine;
    ppLine153: TppLine;
    ppLine154: TppLine;
    ppDBText55: TppDBText;
    sj001: TppDBCalc;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppLine127: TppLine;
    paky002: TppLabel;
    pakw002: TppLabel;
    ppLabel147: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBText56: TppDBText;
    ADOQuery4: TADOQuery;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ADODataSet1AfterOpen(DataSet: TDataSet);
    procedure ADODataSetSHPDELChange(Sender: TField);
    procedure cxGrid1DBBandedTableView1keycode5CompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand3BeforePrint(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_Logisticsflow: TfrmCarte_Logisticsflow;

implementation

uses Carte_MainFormu, Carte_OrdprocessingFormu, Carte_PDNQtyFormu,
Carte_Logisticsflow_rpt1Formu, Carte_Logisticsflow_rpt2Formu, Carte_reducenotepadformu;

{$R *.dfm}

procedure TfrmCarte_Logisticsflow.ADODataSet1AfterOpen(DataSet: TDataSet);
begin
  (adodataset1.FieldByName('act_cmpdt05') as tdatetimefield).DisplayFormat:='mm/dd hh';
  (adodataset1.FieldByName('act_cmpdt5') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('wkday') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('wkday1') as tdatetimefield).DisplayFormat:='mm/dd';
  adodataset1.fieldbyname('shp_del1').onchange:=ADODataSetSHPDELChange;
  adodataset1.fieldbyname('shp_del2').onchange:=ADODataSetSHPDELChange;
  adodataset1.fieldbyname('shp_del3').onchange:=ADODataSetSHPDELChange;
end;

procedure TfrmCarte_Logisticsflow.ADODataSetSHPDELChange(Sender: TField);
var
  del1,del2,del3:integer;
begin
  del1:=0; del2:=0; del3:=0;
  if not adodataset1.fieldbyname('shp_del1').isnull then del1:=adodataset1.fieldbyname('shp_del1').value;
  if not adodataset1.fieldbyname('shp_del2').isnull then del2:=adodataset1.fieldbyname('shp_del2').value;
  if not adodataset1.fieldbyname('shp_del3').isnull then del3:=adodataset1.fieldbyname('shp_del3').value;
  adodataset1.fieldbyname('shp_ttl').value:=del1+del2+del3;
end;

procedure TfrmCarte_Logisticsflow.BitBtn1Click(Sender: TObject);
begin
  if (dateedit4.date>0) and (dateedit5.date>0) then begin
    if frmreduce_notepad=nil then frmreduce_notepad:=tfrmreduce_notepad.create(nil);
    frmreduce_notepad.show;
  end;
end;

procedure TfrmCarte_Logisticsflow.BitBtn3Click(Sender: TObject);
begin
  if adodataset1.state=dsedit then adodataset1.post;
end;

procedure TfrmCarte_Logisticsflow.BitBtn4Click(Sender: TObject);
var
  transfer1:boolean;
  pdnsufix:string;
begin
  screen.cursor:=crSQLWait;
  try
  bitbtn3click(self);
  with adoquery1 do begin
    close;
    sql.text:='select suffix from tbl_carte_pdnsuffix where cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
    open;
    if not fieldbyname('suffix').isnull then
    pdnsufix:=fieldbyname('suffix').value else pdnsufix:='';
  end;
  with adoquery1 do begin
    close;
    sql.text:='exec sp_carte_updatehide_bycust :x0,:x1,:x2';
    parameters[0].value:=frmCarte_Ordprocessing.combobox4.text;
    parameters[1].value:=dateedit4.date;
    parameters[2].value:=dateedit5.date;
    execsql;
  end;
  with adoquery1 do begin
    close;
    sql.text:='select * from tbl_carte_sopc5 where act_cmpdt5>=:x1 and act_cmpdt5<=:x2';
    parameters[0].value:=dateedit4.date;
    parameters[1].value:=dateedit5.date;
    if frmCarte_Ordprocessing.combobox4.text>'' then begin
      if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sql.text:=sql.text+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
    end;
    open;
    first;
    while not eof do begin
      if not fieldbyname('wkday').isnull then begin
        with adoquery3 do begin
          close;
          sql.text:='update tbl_carte_sopc5 set wkday_n=:x1,wkday_y=:x01 where seq=:x2 and seq1=:x3';
          if not adoquery1.fieldbyname('wkday1').isnull then begin
            //if adoquery1.fieldbyname('wkday').value<adoquery1.fieldbyname('wkday1').value then
              parameters[0].value:=formatdatetime('mm/dd',adoquery1.fieldbyname('wkday1').value);
              parameters[1].value:=strtoint(copy(formatdatetime('yyyy/mm/dd',adoquery1.fieldbyname('wkday1').value),1,4));
            //else parameters[0].value:=formatdatetime('mm/dd',adoquery1.fieldbyname('wkday1').value)+'**';
          end else begin
            parameters[0].value:=formatdatetime('mm/dd',adoquery1.fieldbyname('wkday').value);
            parameters[1].value:=strtoint(copy(formatdatetime('yyyy/mm/dd',adoquery1.fieldbyname('wkday').value),1,4));
          end;
          parameters[2].value:=adoquery1.fieldbyname('seq').value;
          parameters[3].value:=adoquery1.fieldbyname('seq1').value;
          execsql;
        end;
      end;
      application.processmessages;
      next;
    end;
  end;
  //transfer1:=false;
  {
  with adoquery1 do begin
    close;
    sql.text:='select * from tbl_carte_sopc5_transfer where act_cmpdt5>=:x1 and act_cmpdt5<=:x2 and wpdn_ttl>0';
    if frmCarte_Ordprocessing.combobox4.text>'' then begin
      if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sql.text:=sql.text+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sql.text:=sql.text+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        sql.text:=sql.text+' and prod_site5 in (''SL'',''PP'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sql.text:=sql.text+' and prod_site5 in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sql.text:=sql.text+' and ((prod_site5 is null) or (prod_site5=''''))';
    end;
    parameters[0].value:=dateedit4.date;
    parameters[1].value:=dateedit5.date;
    open;
    if not fieldbyname('keycode5').isnull then transfer1:=true;
  end;
  if transfer1 then begin
  }
    with adoquery2 do begin
      close;
      {
      sql.text:='select distinct wkday_y,wkday_n,sum(case when org_a>0 then org_a else org_o end) as x1,sum(aql_p1+aql_f1+aql_p01+aql_f01) as x2,'
               +'sum(case when aql_f1+aql_f01>0 then aql_p2+aql_f2+aql_p02+aql_f02 else 0 end) as x030,'
               +'sum(case when aql_f1+aql_f01=0 then aql_p2+aql_f2+aql_p02+aql_f02 else 0 end) as x031,'
               +'count(distinct projectno5) as x4,count(distinct custpo5) as x5,count(distinct custstyle5) as x6,'
               +'count(distinct custcolor5) as x7,sum(shp_ttl) as x8 from tbl_carte_sopc5 '
               +'where hide5=0 and act_cmpdt5>=:x1 and act_cmpdt5<=:x2 and wkday_n is not null';
      }
      sql.text:='select distinct wkday_y,wkday_n,sum(case when org_a>0 then org_a else org_o end) as x1,sum(aql_p1+aql_p01) as x21,sum(aql_f1+aql_f01) as x22,'
               +'sum(case when aql_f1=0 then aql_p2+aql_p02 else 0 end) as x031,'
               +'sum(case when aql_f1=0 then aql_f2 else 0 end) as x032,'
               +'sum(case when aql_f1>0 then aql_p2+aql_p02 else 0 end) as x31,'
               +'sum(case when aql_f1>0 then aql_f2 else 0 end) as x32,'
               +'sum(aql_no) as x4,sum(aql_no1) as x5,sum(pak_del) as x6,sum(pak_no) as x7,sum(pak_no1) as x8,sum(shp_ttl) as x9,'
               +'count(distinct projectno5) as x10,count(distinct custpo5) as x11,count(distinct custstyle5) as x12,'
               +'count(distinct custcolor5) as x13,sum(aql_f01+aql_f02) as x14 from tbl_carte_sopc5 '
               +'where hide5=0 and act_cmpdt5>=:x1 and act_cmpdt5<=:x2 and wkday_n is not null';
      if frmCarte_Ordprocessing.combobox4.text>'' then begin
        if frmCarte_Ordprocessing.combobox4.text<>'All' then
        sql.text:=sql.text+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
      end;
      if frmCarte_Ordprocessing.combobox7.text>'' then begin
        if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
          sql.text:=sql.text+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
        else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
          sql.text:=sql.text+' and prod_site5 in (''SL'',''PP'',''PP2'',''-'')'
        else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
          sql.text:=sql.text+' and prod_site5 in (''GG'',''RX'')'
        else if (frmCarte_Ordprocessing.combobox7.text='未定') then
          sql.text:=sql.text+' and ((prod_site5 is null) or (prod_site5=''''))';
      end;
      sql.text:=sql.text+' group by wkday_y,wkday_n order by wkday_y,wkday_n';
      parameters[0].value:=dateedit4.date;
      parameters[1].value:=dateedit5.date;
      open;
    end;
    with adodataset2 do begin
      close;
      commandtext:='select * from tbl_carte_sopc5 where hide5=0';
      if frmCarte_Ordprocessing.combobox4.text>'' then begin
        if frmCarte_Ordprocessing.combobox4.text<>'All' then
        commandtext:=commandtext+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
      end;
      if frmCarte_Ordprocessing.combobox7.text>'' then begin
        if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
          commandtext:=commandtext+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
        else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
          commandtext:=commandtext+' and prod_site5 in (''SL'',''PP'',''PP2'',''-'')'
        else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
          commandtext:=commandtext+' and prod_site5 in (''GG'',''RX'')'
        else if (frmCarte_Ordprocessing.combobox7.text='未定') then
          commandtext:=commandtext+' and ((prod_site5 is null) or (prod_site5=''''))';
      end;
      commandtext:=commandtext+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2 order by cust5,keycode5';
      parameters[0].value:=dateedit4.date;
      parameters[1].value:=dateedit5.date;
      open;
    end;
    if not adodataset2.fieldbyname('seq').isnull then begin
      pdn001.caption:=copy(formatdatetime('yymmdd',dateedit4.date),1,4)+'-'+copy(adodataset2.fieldbyname('wkno').value,4,2)+pdnsufix;
      wk001.caption:=copy(adodataset2.fieldbyname('wkno').value,4,2);
      fromto001.caption:=formatdatetime('mm/dd',dateedit4.date)+' - '+formatdatetime('mm/dd',dateedit5.date);
      if frmCarte_Ordprocessing.combobox4.text='CRTE' then title3001.caption:='CARTE '
      else title3001.caption:=frmCarte_Ordprocessing.combobox4.text+' ';
      if frmCarte_Ordprocessing.combobox4.text='PVH' then begin
        prod001.visible:=false;
        prod002.visible:=false;
        pdx01.visible:=false;
        pdx02.visible:=false;
        pdx03.visible:=false;
        pdx04.visible:=false;
      end else begin
        prod001.visible:=true;
        prod002.visible:=true;
        pdx01.visible:=true;
        pdx02.visible:=true;
        pdx03.visible:=true;
        pdx04.visible:=true;
      end;
      ppreport1.print;
    end else begin
      if frmCarte_Logisticsflow_rpt2=nil then frmCarte_Logisticsflow_rpt2:=tfrmCarte_Logisticsflow_rpt2.create(nil);
      with frmCarte_Logisticsflow_rpt2.adodataset3 do begin
        close;
        commandtext:='select * from tbl_carte_sopc5_transfer where act_cmpdt5>=:x1 and act_cmpdt5<=:x2 and wpdn_ttl>0';
        if frmCarte_Ordprocessing.combobox7.text>'' then begin
          if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
            commandtext:=commandtext+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
          else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
            commandtext:=commandtext+' and prod_site5 in (''SL'',''PP'',''PP2'',''-'')'
          else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
            commandtext:=commandtext+' and prod_site5 in (''GG'',''RX'')'
          else if (frmCarte_Ordprocessing.combobox7.text='未定') then
            commandtext:=commandtext+' and ((prod_site5 is null) or (prod_site5=''''))';
        end;
        if frmCarte_Ordprocessing.combobox4.text>'' then begin
          if frmCarte_Ordprocessing.combobox4.text<>'All' then
          commandtext:=commandtext+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
        end;
        parameters[0].value:=dateedit4.date;
        parameters[1].value:=dateedit5.date;
        open;
      end;
      frmCarte_Logisticsflow_rpt2.pdn001.caption:=copy(formatdatetime('yymmdd',dateedit4.date),1,4)+'-'+inttostr(weekof(dateedit4.date))+pdnsufix;
      frmCarte_Logisticsflow_rpt2.wk001.caption:=inttostr(weekof(dateedit4.date));
      frmCarte_Logisticsflow_rpt2.fromto001.caption:=formatdatetime('mm/dd',dateedit4.date)+' - '+formatdatetime('mm/dd',dateedit5.date);
      if frmCarte_Ordprocessing.combobox4.text='CRTE' then frmCarte_Logisticsflow_rpt2.title3001.caption:='CARTE '
      else frmCarte_Logisticsflow_rpt2.title3001.caption:=frmCarte_Ordprocessing.combobox4.text+' ';
      if frmCarte_Ordprocessing.combobox4.text='PVH' then begin
        frmCarte_Logisticsflow_rpt2.prod001.visible:=false;
        frmCarte_Logisticsflow_rpt2.pdx01.visible:=false;
        frmCarte_Logisticsflow_rpt2.pdx02.visible:=false;
        frmCarte_Logisticsflow_rpt2.pdx03.visible:=false;
        frmCarte_Logisticsflow_rpt2.pdx04.visible:=false;
      end else begin
        frmCarte_Logisticsflow_rpt2.prod001.visible:=true;
        frmCarte_Logisticsflow_rpt2.pdx01.visible:=true;
        frmCarte_Logisticsflow_rpt2.pdx02.visible:=true;
        frmCarte_Logisticsflow_rpt2.pdx03.visible:=true;
        frmCarte_Logisticsflow_rpt2.pdx04.visible:=true;
      end;
      frmCarte_Logisticsflow_rpt2.ppReport1.print;
      {
      pdn001.caption:=copy(formatdatetime('yymmdd',dateedit4.date),1,4)+'-'+inttostr(weekof(dateedit4.date))+pdnsufix;//copy(adodataset2.fieldbyname('wkno').value,4,2)+pdnsufix;
      wk001.caption:=inttostr(weekof(dateedit4.date));//copy(adodataset2.fieldbyname('wkno').value,4,2);
      fromto001.caption:=formatdatetime('mm/dd',dateedit4.date)+' - '+formatdatetime('mm/dd',dateedit5.date);
      if frmCarte_Ordprocessing.combobox4.text='CRTE' then title3001.caption:='CARTE '
      else title3001.caption:=frmCarte_Ordprocessing.combobox4.text+' ';
      ppreport1.print;
      }
    end;
  {
  end else begin
    if frmCarte_Logisticsflow_rpt1=nil then frmCarte_Logisticsflow_rpt1:=tfrmCarte_Logisticsflow_rpt1.create(nil);
    with frmCarte_Logisticsflow_rpt1.adoquery2 do begin
      close;
      sql.text:='select distinct wkday_n,sum(case when org_a>0 then org_a else org_o end) as x1,sum(aql_p1+aql_f1+aql_p01+aql_f01) as x2,sum(aql_p2+aql_f2+aql_p02+aql_f02) as x3,'
      //sql.text:='select distinct wkday,sum(case when org_a>0 then org_a else org_o end) as x1,sum(aql_p1+aql_f1) as x2,sum(aql_p2+aql_f2) as x3,'
               +'count(distinct projectno5) as x4,count(distinct custpo5) as x5,count(distinct custstyle5) as x6,'
               +'count(distinct custcolor5) as x7,sum(shp_ttl) as x8 from tbl_carte_sopc5 '
               +'where act_cmpdt5>=:x1 and act_cmpdt5<=:x2 and wkday_n is not null';
      if frmCarte_Ordprocessing.combobox4.text>'' then begin
        if frmCarte_Ordprocessing.combobox4.text<>'All' then
        sql.text:=sql.text+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
      end;
      if frmCarte_Ordprocessing.combobox7.text>'' then begin
        if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
          sql.text:=sql.text+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
        else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
          sql.text:=sql.text+' and prod_site5 in (''SL'',''PP'')'
        else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
          sql.text:=sql.text+' and prod_site5 in (''GG'',''RX'')'
        else if (frmCarte_Ordprocessing.combobox7.text='未定') then
          sql.text:=sql.text+' and ((prod_site5 is null) or (prod_site5=''''))';
      end;
      sql.text:=sql.text+' group by wkday_n order by wkday_n';
      parameters[0].value:=dateedit4.date;
      parameters[1].value:=dateedit5.date;
      open;
    end;
    with frmCarte_Logisticsflow_rpt1.adodataset2 do begin
      close;
      commandtext:='select * from tbl_carte_sopc5 where hide5=0';
      if frmCarte_Ordprocessing.combobox4.text>'' then begin
        if frmCarte_Ordprocessing.combobox4.text<>'All' then
        commandtext:=commandtext+'and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
      end;
      if frmCarte_Ordprocessing.combobox7.text>'' then begin
        if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
          commandtext:=commandtext+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
        else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
          commandtext:=commandtext+' and prod_site5 in (''SL'',''PP'')'
        else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
          commandtext:=commandtext+' and prod_site5 in (''GG'',''RX'')'
        else if (frmCarte_Ordprocessing.combobox7.text='未定') then
          commandtext:=commandtext+' and ((prod_site5 is null) or (prod_site5=''''))';
      end;
      commandtext:=commandtext+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2';
      parameters[0].value:=dateedit4.date;
      parameters[1].value:=dateedit5.date;
      open;
    end;
    if not frmCarte_Logisticsflow_rpt1.adodataset2.fieldbyname('seq').isnull then begin
      frmCarte_Logisticsflow_rpt1.pdn001.caption:=copy(formatdatetime('yymmdd',dateedit4.date),1,4)+'-'+copy(frmCarte_Logisticsflow_rpt1.adodataset2.fieldbyname('wkno').value,4,2)+pdnsufix;
      frmCarte_Logisticsflow_rpt1.wk001.caption:=copy(frmCarte_Logisticsflow_rpt1.adodataset2.fieldbyname('wkno').value,4,2);
      frmCarte_Logisticsflow_rpt1.fromto001.caption:=formatdatetime('mm/dd',dateedit4.date)+' - '+formatdatetime('mm/dd',dateedit5.date);
      if frmCarte_Ordprocessing.combobox4.text='CRTE' then frmCarte_Logisticsflow_rpt1.title3001.caption:='CARTE '
      else frmCarte_Logisticsflow_rpt1.title3001.caption:=frmCarte_Ordprocessing.combobox4.text+' ';
      if frmCarte_Ordprocessing.combobox4.text='PVH' then begin
        frmCarte_Logisticsflow_rpt1.prod001.visible:=false;
        frmCarte_Logisticsflow_rpt1.pdx01.visible:=false;
        frmCarte_Logisticsflow_rpt1.pdx02.visible:=false;
        frmCarte_Logisticsflow_rpt1.pdx03.visible:=false;
        frmCarte_Logisticsflow_rpt1.pdx04.visible:=false;
      end else begin
        frmCarte_Logisticsflow_rpt1.prod001.visible:=true;
        frmCarte_Logisticsflow_rpt1.pdx01.visible:=true;
        frmCarte_Logisticsflow_rpt1.pdx02.visible:=true;
        frmCarte_Logisticsflow_rpt1.pdx03.visible:=true;
        frmCarte_Logisticsflow_rpt1.pdx04.visible:=true;
      end;
      frmCarte_Logisticsflow_rpt1.ppreport1.print;
    end;
  end;
  }
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmCarte_Logisticsflow.BitBtn5Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    ExportGridToExcel(savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure TfrmCarte_Logisticsflow.BitBtn7Click(Sender: TObject);
begin
  screen.cursor:=crSQLWait;
  try
  if (dateedit4.date>0) and (dateedit5.date>0) then begin
    with adoquery1 do begin
      close;
      sql.text:='exec sp_carte_logisticsflow_bycust :x0,:x1,:x2';
      parameters[0].value:=frmCarte_Ordprocessing.combobox4.text;
      parameters[1].value:=dateedit4.date;
      parameters[2].value:=dateedit5.date;
      execsql;
    end;
    with adodataset1 do begin
      close;
      commandtext:='select * from tbl_carte_sopc5 where 0=0';
      if frmCarte_Ordprocessing.combobox4.text>'' then begin
        if frmCarte_Ordprocessing.combobox4.text<>'All' then
        commandtext:=commandtext+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
      end;
      if frmCarte_Ordprocessing.combobox7.text>'' then begin
        if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
          commandtext:=commandtext+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
        else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
          commandtext:=commandtext+' and prod_site5 in (''SL'',''PP'',''PP2'',''-'')'
        else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
          commandtext:=commandtext+' and prod_site5 in (''GG'',''RX'')'
        else if (frmCarte_Ordprocessing.combobox7.text='未定') then
          commandtext:=commandtext+' and ((prod_site5 is null) or (prod_site5=''''))';
      end;
      commandtext:=commandtext+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2';
      parameters[0].value:=dateedit4.date;
      parameters[1].value:=dateedit5.date;
      open;
    end;
  end;
  finally
    screen.cursor:=crDefault;
  end;
end;

procedure TfrmCarte_Logisticsflow.BitBtn9Click(Sender: TObject);
begin
  if frmCarte_PDNQty=nil then frmCarte_PDNQty:=tfrmCarte_PDNQty.create(nil);
  frmCarte_PDNQty.edit1.value:=adodataset1.fieldbyname('wpdn_aqlno').value;
  frmCarte_PDNQty.edit2.value:=adodataset1.fieldbyname('wpdn_aqlf').value;
  frmCarte_PDNQty.edit3.value:=adodataset1.fieldbyname('wpdn_pakno').value;
  frmCarte_PDNQty.edit4.value:=adodataset1.fieldbyname('wpdn_ttl').value;
  frmCarte_PDNQty.show;
end;

procedure TfrmCarte_Logisticsflow.cxGrid1DBBandedTableView1keycode5CompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  if ARow1.Values[cxGrid1DBBandedTableView1keycode5.Index] = ARow2.Values[cxGrid1DBBandedTableView1keycode5.Index] then
     AAreEqual := True
   else
     AAreEqual := False;
end;

procedure TfrmCarte_Logisticsflow.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmCarte_Logisticsflow_rpt1<>nil then frmCarte_Logisticsflow_rpt1:=nil;
  if frmCarte_Logisticsflow_rpt2<>nil then frmCarte_Logisticsflow_rpt2:=nil;
  action:=cafree;
  frmCarte_Logisticsflow:=nil;
end;

procedure TfrmCarte_Logisticsflow.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if adodataset2.fieldbyname('org_a').value>0 then pdnqty001.caption:=adodataset2.fieldbyname('org_a').asstring+'*'
  else pdnqty001.caption:=adodataset2.fieldbyname('org_o').asstring;
  //if (adodataset2.fieldbyname('aql_no').value>0) or (adodataset2.fieldbyname('aql_no1').value>0) then begin
  //  if adodataset2.fieldbyname('org_a').value>0 then pdnqty001.caption:=inttostr(adodataset2.fieldbyname('org_a').value-adodataset2.fieldbyname('aql_no').value-adodataset2.fieldbyname('aql_no1').value)+'*'
  //  else pdnqty001.caption:=inttostr(adodataset2.fieldbyname('org_o').value-adodataset2.fieldbyname('aql_no').value-adodataset2.fieldbyname('aql_no1').value)+'*';
  //end;
  if adodataset2.fieldbyname('aql_no1').value>0 then aqlno001.caption:=inttostr(adodataset2.fieldbyname('aql_no').value+adodataset2.fieldbyname('aql_no1').value)+'*'
  else aqlno001.caption:=formatfloat('#0;-#0;''''',adodataset2.fieldbyname('aql_no').value);
  if adodataset2.fieldbyname('pak_no1').value>0 then pakno3001.caption:=inttostr(adodataset2.fieldbyname('pak_no').value+adodataset2.fieldbyname('pak_no1').value)+'*'
  else pakno3001.caption:=formatfloat('#0;-#0;''''',adodataset2.fieldbyname('pak_no').value);
  if adodataset2.fieldbyname('cmp5').value=true then log001.font.style:=[fsBold]
  else log001.font.style:=[];
  aql_p1001.caption:=formatfloat('#0;-#0;''''',adodataset2.fieldbyname('aql_p1').value+adodataset2.fieldbyname('aql_p01').value);
  aql_p2001.caption:=formatfloat('#0;-#0;''''',adodataset2.fieldbyname('aql_p2').value+adodataset2.fieldbyname('aql_p02').value);
  aql_f1001.caption:=formatfloat('#0;-#0;''''',adodataset2.fieldbyname('aql_f1').value+adodataset2.fieldbyname('aql_f01').value);
  aql_f2001.caption:=formatfloat('#0;-#0;''''',adodataset2.fieldbyname('aql_f2').value+adodataset2.fieldbyname('aql_f02').value);
  if adodataset2.fieldbyname('aql_f01').value>0 then aql_f1001.caption:=aql_f1001.caption+'?';
  if adodataset2.fieldbyname('aql_f02').value>0 then aql_f2001.caption:=aql_f2001.caption+'?';
  if adodataset2.fieldbyname('aql_p01').value>0 then aql_p1001.font.color:=clred else aql_p1001.font.color:=clblack;
  if adodataset2.fieldbyname('aql_p02').value>0 then aql_p2001.font.color:=clred else aql_p2001.font.color:=clblack;
  if adodataset2.fieldbyname('aql_f01').value>0 then aql_f1001.font.color:=clred else aql_f1001.font.color:=clblack;
  if adodataset2.fieldbyname('aql_f02').value>0 then aql_f2001.font.color:=clred else aql_f2001.font.color:=clblack;
  if not adodataset2.fieldbyname('wkday1').isnull then begin
    if not adodataset2.fieldbyname('wkday').isnull then begin
      if adodataset2.fieldbyname('wkday1').value>adodataset2.fieldbyname('wkday').value then
        wkday1001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('wkday1').value)+'*'
      else wkday1001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('wkday1').value)+'**';
    end else wkday1001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('wkday1').value);
  end else begin
    if not adodataset2.fieldbyname('wkday').isnull then
    wkday1001.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('wkday').value)
    else wkday1001.caption:='';
  end;
end;

procedure TfrmCarte_Logisticsflow.ppDetailBand2BeforePrint(Sender: TObject);
begin
  //ppmarks001
end;

procedure TfrmCarte_Logisticsflow.ppDetailBand3BeforePrint(Sender: TObject);
begin
  if adoquery2.fieldbyname('x5').value>0 then d005.caption:=adoquery2.fieldbyname('x5').asstring+'*'
  else d005.caption:='0';
  if adoquery2.fieldbyname('x8').value>0 then d008.caption:=adoquery2.fieldbyname('x8').asstring+'*'
  else d008.caption:='0';
end;

procedure TfrmCarte_Logisticsflow.ppGroupFooterBand2BeforePrint(
  Sender: TObject);
begin
  with adoquery4 do begin
    close;
    sql.text:='exec sp_carte_updreducelist :x1,:x2,:x3';
    parameters[0].value:=adodataset2.fieldbyname('cust5').value;
    parameters[1].value:=dateedit4.date;
    parameters[2].value:=dateedit5.date;
    execsql;
  end;
  with adodataset3 do begin
    close;
    //commandtext:='select distinct keycode5,projectno5,custpo5,workorderno5,rwo_wo5,custstyle5,phcolor5,custcolor5,qty5,qty15,prod_site5,wpdn_ttl from tbl_carte_sopc5 where act_cmpdt5>=:x1 and act_cmpdt5<=:x2 and wpdn_ttl>0';
    commandtext:='select * from tbl_carte_sopc5_transfer where act_cmpdt5>=:x1 and act_cmpdt5<=:x2 and wpdn_ttl>0';
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        commandtext:=commandtext+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        commandtext:=commandtext+' and prod_site5 in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        commandtext:=commandtext+' and prod_site5 in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        commandtext:=commandtext+' and ((prod_site5 is null) or (prod_site5=''''))';
    end;
    commandtext:=commandtext+' and cust5='''+adodataset2.fieldbyname('cust5').value+'''';
    parameters[0].value:=dateedit4.date;
    parameters[1].value:=dateedit5.date;
    open;
  end;
end;

procedure TfrmCarte_Logisticsflow.ppGroupFooterBand3BeforePrint(
  Sender: TObject);
var
  cnt,cnt1,qty1,q1,q2,q3,q4,q5,q6,q7,q8,q10,qf1:integer;
  s1,s2,s3:double;
  cmp5:boolean;
  pdnsf:string;
begin
  cnt:=0; qty1:=0; q1:=0; q2:=0; q3:=0; q4:=0; q5:=0; q6:=0; q7:=0; q8:=0; q10:=0;
  with adoquery1 do begin
    close;
    sql.text:='select distinct keycode5,pdn_qty as x1,waql_p,wpak_del,wshp_del,wpdn_short,wpdn_ttl,wpdn_aqlno,wpdn_aqlf,wpdn_pakno from tbl_carte_sopc5 where hide5=0';
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sql.text:=sql.text+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        sql.text:=sql.text+' and prod_site5 in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sql.text:=sql.text+' and prod_site5 in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sql.text:=sql.text+' and ((prod_site5 is null) or (prod_site5=''''))';
    end;
    sql.text:=sql.text+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2';
    //if frmCarte_Ordprocessing.combobox4.text>'' then begin
      //if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sql.text:=sql.text+' and cust5='''+adodataset2.fieldbyname('cust5').value+'''';//frmCarte_Ordprocessing.combobox4.text+'''';
    //end;
    parameters[0].value:=dateedit4.date;
    parameters[1].value:=dateedit5.date;
    open;
    first;
    while not eof do begin
      cnt:=cnt+1;
      qty1:=qty1+fieldbyname('x1').value;
      q1:=q1+fieldbyname('waql_p').value;
      q2:=q2+fieldbyname('wpak_del').value;
      q3:=q3+fieldbyname('wshp_del').value;
      q4:=q4+fieldbyname('wpdn_short').value;
      q10:=q10+fieldbyname('wpdn_ttl').value;
      q6:=q6+fieldbyname('wpdn_aqlno').value;
      q7:=q7+fieldbyname('wpdn_aqlf').value;
      q8:=q8+fieldbyname('wpdn_pakno').value;
      application.processmessages;
      next;
    end;
  end;
  //keycode001.caption:=inttostr(cnt);
  waqlp001.caption:=inttostr(q1);
  wpakdel001.caption:=inttostr(q2);
  wshpdel001.caption:=inttostr(q3);
  short001.caption:=inttostr(q4);
  wpdn001.caption:=inttostr(q10);
  wpdn3001.caption:='('+inttostr(q6);
  wpdn3002.caption:=inttostr(q7);
  wpdn3003.caption:=inttostr(q8)+')';

  q5:=0;
  with adoquery1 do begin
    close;
    sql.text:='select sum(wpdn_ttl) as x1,count(*) as x2 from tbl_carte_sopc5_transfer where 0=0';
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sql.text:=sql.text+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        sql.text:=sql.text+' and prod_site5 in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sql.text:=sql.text+' and prod_site5 in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sql.text:=sql.text+' and ((prod_site5 is null) or (prod_site5=''''))';
    end;
    sql.text:=sql.text+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2';
    //if frmCarte_Ordprocessing.combobox4.text>'' then begin
      //if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sql.text:=sql.text+' and cust5='''+adodataset2.fieldbyname('cust5').value+'''';//frmCarte_Ordprocessing.combobox4.text+'''';
    //end;
    parameters[0].value:=dateedit4.date;
    parameters[1].value:=dateedit5.date;
    open;
    if not fieldbyname('x1').isnull then
    q5:=q5+fieldbyname('x1').value;
    if not fieldbyname('x2').isnull then cnt1:=fieldbyname('x2').value else cnt1:=0;
  end;
  keycode001.caption:=inttostr(cnt+cnt1)+' ('+inttostr(cnt)+' + '+inttostr(cnt1)+')';
  {
  if cnt>0 then begin
    keycode001.caption:=inttostr(cnt);
    ppgroupfooterband4.visible:=true;
  end else ppgroupfooterband4.visible:=false;
  }
  //reduceqty001.caption:=inttostr(q5)+' pcs';
  pdnqty002.caption:=inttostr(qty1+q5);

  cmp5:=true;
  with adoquery1 do begin
    close;
    sql.text:='select distinct cmp5 from tbl_carte_sopc5 where hide5=0 and cmp5=0';
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sql.text:=sql.text+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        sql.text:=sql.text+' and prod_site5 in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sql.text:=sql.text+' and prod_site5 in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sql.text:=sql.text+' and ((prod_site5 is null) or (prod_site5=''''))';
    end;
    sql.text:=sql.text+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2';
    //if frmCarte_Ordprocessing.combobox4.text>'' then begin
      //if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sql.text:=sql.text+' and cust5='''+adodataset2.fieldbyname('cust5').value+'''';//frmCarte_Ordprocessing.combobox4.text+'''';
    //end;
    parameters[0].value:=dateedit4.date;
    parameters[1].value:=dateedit5.date;
    open;
    if not fieldbyname('cmp5').isnull then cmp5:=false;
  end;
  if cmp5=true then begin
    //pdngrade001.caption:='PDN Garding: ';
    if q5>q10 then s1:=(q4+q5)*100.00/((qty1+q5)*1.00)
    else s1:=(q4+q10)*100.00/((qty1+q5)*1.00);
    s2:=100.00-s1;
    pdnsf:='PDN on time = '+formatfloat('0.00%',s2);
    //s1:=(q4+q5)*100.00/((qty1+q5)*1.00);
    if s1<=1.0 then pdngrade001.caption:='PDN Grading: A'
    else if s1<=2.0 then pdngrade001.caption:='PDN Grading: B'
    else if s1<=3.0 then pdngrade001.caption:='PDN Grading: C'
    else if s1<=4.0 then pdngrade001.caption:='PDN Grading: D'
    else if s1<=5.0 then pdngrade001.caption:='PDN Grading: F'
    else pdngrade001.caption:='PDN Grading: U';
    pprichtext1.visible:=false;
    pprichtext2.visible:=true;
    pprichtext3.visible:=false;
  end else begin
    pdngrade001.caption:='';
    if date<dateedit4.date then begin
      pprichtext1.visible:=true;
      pprichtext3.visible:=false;
    end else begin
      pprichtext1.visible:=false;
      pprichtext3.visible:=true;
    end;
    pprichtext2.visible:=false;
  end;

  qty1:=0; q1:=0; q2:=0; q3:=0; qf1:=0;
  with adoquery1 do begin
    close;
    sql.text:='select distinct wkday,sum(case when org_a>0 then org_a else org_o end) as x1,sum(aql_p1+aql_p01) as x2,sum(aql_f1+aql_f01) as x02,'
             +'sum(aql_p2+aql_p02) as x3,sum(aql_f2) as x4,sum(aql_no+aql_no1) as x5 from tbl_carte_sopc5 where hide5=0';
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sql.text:=sql.text+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        sql.text:=sql.text+' and prod_site5 in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sql.text:=sql.text+' and prod_site5 in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sql.text:=sql.text+' and ((prod_site5 is null) or (prod_site5=''''))';
    end;
    //if frmCarte_Ordprocessing.combobox4.text>'' then begin
      //if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sql.text:=sql.text+' and cust5='''+adodataset2.fieldbyname('cust5').value+'''';//frmCarte_Ordprocessing.combobox4.text+'''';
    //end;
    sql.text:=sql.text+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2 group by wkday order by wkday';
    parameters[0].value:=dateedit4.date;
    parameters[1].value:=dateedit5.date;
    open;
    first;
    while not eof do begin
      qty1:=qty1+fieldbyname('x1').value;//-fieldbyname('x5').value;
      q1:=q1+fieldbyname('x2').value;
      qf1:=qf1+fieldbyname('x02').value;
      q2:=q2+fieldbyname('x3').value;
      q3:=q3+fieldbyname('x4').value;
      application.processmessages;
      next;
    end;
  end;
  pdnqty2001.caption:=inttostr(qty1);
  aql1001.caption:=inttostr(q1);
  aql2001.caption:=inttostr(q2);
  aqlf2002.caption:=inttostr(qf1);
  aql2002.caption:=inttostr(q3);

  with adoquery1 do begin
    close;
    sql.text:='exec sp_carte_logistics_py :x1,:x2,:x3';
    parameters[0].value:=adodataset2.fieldbyname('cust5').value;
    parameters[1].value:=dateedit4.date;
    parameters[2].value:=dateedit5.date;
    open;
    if not fieldbyname('fpy').isnull then s1:=fieldbyname('fpy').value else s1:=0;
    if not fieldbyname('spy').isnull then s2:=fieldbyname('spy').value else s2:=0;
    if not fieldbyname('tpy').isnull then s3:=fieldbyname('tpy').value else s3:=0;
  end;

  if (q1+qf1>0) then begin
    //s2:=q1*100.00/(q1+qf1);
    pdnsf:=pdnsf+'   FPY = '+formatfloat('0.00%',s1);
  end;
  if (q2+q3>0) then begin
    //s2:=q2*100.00/(q2+q3);
    //pdnsf:=pdnsf+'   2PY = '+formatfloat('0.00%',s2);
    {
    with adoquery1 do begin
      close;
      sql.text:='exec sp_carte_logistics_py :x1,:x2,:x3';
      parameters[0].value:=adodataset2.fieldbyname('cust5').value;
      parameters[1].value:=dateedit4.date;
      parameters[2].value:=dateedit5.date;
      open;
      if fieldbyname('spy').value>0 then begin
        pdnsf:=pdnsf+'   2PY = '+formatfloat('0.00%',fieldbyname('spy').value);
        if fieldbyname('tpy').value>0 then
        pdnsf:=pdnsf+'   3PY = '+formatfloat('0.00%',fieldbyname('tpy').value);
      end;
    end;
    }
    if s2>0 then pdnsf:=pdnsf+'   2PY = '+formatfloat('0.00%',s2);
    if s3>0 then pdnsf:=pdnsf+'   3PY = '+formatfloat('0.00%',s3);
  end;
  if pdngrade001.caption>'' then begin
    pdngrade001.caption:=pdngrade001.caption+' ('+pdnsf+')';
  end;

  pdngrd001.caption:=pdngrade001.caption;

  q1:=0;
  with adoquery1 do begin
    close;
    sql.text:='select distinct wkday,sum(aql_no+aql_no1) as x2 from tbl_carte_sopc5 a where hide5=0 and wkday=(select max(wkday) from tbl_carte_sopc5 b where a.seq=b.seq and b.wkday<:x0)';
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sql.text:=sql.text+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        sql.text:=sql.text+' and prod_site5 in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sql.text:=sql.text+' and prod_site5 in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sql.text:=sql.text+' and ((prod_site5 is null) or (prod_site5=''''))';
    end;
    //if frmCarte_Ordprocessing.combobox4.text>'' then begin
      //if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sql.text:=sql.text+' and cust5='''+adodataset2.fieldbyname('cust5').value+'''';//frmCarte_Ordprocessing.combobox4.text+'''';
    //end;
    sql.text:=sql.text+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2 group by wkday order by wkday';
    parameters[0].value:=date;
    parameters[1].value:=dateedit4.date;
    parameters[2].value:=dateedit5.date;
    open;
    first;
    while not eof do begin
      q1:=q1+fieldbyname('x2').value;
      application.processmessages;
      next;
    end;
  end;
  aqlno002.caption:=inttostr(q1);
end;

procedure TfrmCarte_Logisticsflow.ppGroupHeaderBand2BeforePrint(
  Sender: TObject);
var
  pdnsufix:string;
begin
  with adoquery1 do begin
    close;
    sql.text:='select suffix from tbl_carte_pdnsuffix where cust='''+adodataset2.fieldbyname('cust5').value+'''';//frmCarte_Ordprocessing.combobox4.text+'''';
    open;
    if not fieldbyname('suffix').isnull then
    pdnsufix:=fieldbyname('suffix').value else pdnsufix:='';
  end;
  pdn001.caption:=copy(formatdatetime('yymmdd',dateedit4.date),1,4)+'-'+copy(adodataset2.fieldbyname('wkno').value,4,2)+pdnsufix;
  wk001.caption:=copy(adodataset2.fieldbyname('wkno').value,4,2);
  fromto001.caption:=formatdatetime('mm/dd',dateedit4.date)+' - '+formatdatetime('mm/dd',dateedit5.date);
end;

procedure TfrmCarte_Logisticsflow.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Logisticsflow.ppSummaryBand3BeforePrint(Sender: TObject);
begin
    with adoquery1 do begin
      close;
      sql.text:='select count(distinct projectno5) as x10,count(distinct custpo5) as x11,count(distinct custstyle5) as x12,'
               +'count(distinct custcolor5) as x13 from tbl_carte_sopc5 '
               +'where hide5=0 and act_cmpdt5>=:x1 and act_cmpdt5<=:x2 and wkday_n is not null';
      if frmCarte_Ordprocessing.combobox4.text>'' then begin
        if frmCarte_Ordprocessing.combobox4.text<>'All' then
        sql.text:=sql.text+' and cust5='''+frmCarte_Ordprocessing.combobox4.text+'''';
      end;
      if frmCarte_Ordprocessing.combobox7.text>'' then begin
        if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
          sql.text:=sql.text+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
        else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
          sql.text:=sql.text+' and prod_site5 in (''SL'',''PP'',''PP2'',''-'')'
        else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
          sql.text:=sql.text+' and prod_site5 in (''GG'',''RX'')'
        else if (frmCarte_Ordprocessing.combobox7.text='未定') then
          sql.text:=sql.text+' and ((prod_site5 is null) or (prod_site5=''''))';
      end;
      parameters[0].value:=dateedit4.date;
      parameters[1].value:=dateedit5.date;
      open;
      if not fieldbyname('x10').isnull then d010.caption:=fieldbyname('x10').asstring else d010.caption:='0';
      if not fieldbyname('x11').isnull then d011.caption:=fieldbyname('x11').asstring else d011.caption:='0';
      if not fieldbyname('x12').isnull then d012.caption:=fieldbyname('x12').asstring else d012.caption:='0';
      if not fieldbyname('x13').isnull then d013.caption:=fieldbyname('x13').asstring else d013.caption:='0';
    end;
    if paky001.value>=sj001.value then begin
      paky002.caption:=inttostr(paky001.value);
      pakw002.caption:=inttostr(pakw001.value);
    end else begin
      paky002.caption:=inttostr(sj001.value);
      pakw002.caption:=inttostr(paky001.value+pakw001.value-sj001.value);
    end;
end;

procedure TfrmCarte_Logisticsflow.ppTitleBand1BeforePrint(Sender: TObject);
var
  q5:integer;
begin
  q5:=0;
  with adoquery1 do begin
    close;
    sql.text:='select sum(wpdn_ttl) as x1 from tbl_carte_sopc5_transfer where 0=0';
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sql.text:=sql.text+' and prod_site5='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        sql.text:=sql.text+' and prod_site5 in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sql.text:=sql.text+' and prod_site5 in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sql.text:=sql.text+' and ((prod_site5 is null) or (prod_site5=''''))';
    end;
    sql.text:=sql.text+' and act_cmpdt5>=:x1 and act_cmpdt5<=:x2';
    //if frmCarte_Ordprocessing.combobox4.text>'' then begin
      //if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sql.text:=sql.text+' and cust5='''+adodataset2.fieldbyname('cust5').value+'''';//frmCarte_Ordprocessing.combobox4.text+'''';
    //end;
    parameters[0].value:=dateedit4.date;
    parameters[1].value:=dateedit5.date;
    open;
    if not fieldbyname('x1').isnull then
    q5:=q5+fieldbyname('x1').value;
  end;
  reduceqty001.caption:='揪出(-)'+inttostr(q5)+' pcs';
end;

end.
