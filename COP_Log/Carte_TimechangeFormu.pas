unit Carte_TimechangeFormu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxDropDownEdit, cxCalendar, cxButtonEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Buttons,
  cxGridExportLink, ADODB, ppComm, ppRelatv, ppDB, ppDBPipe, ppProd, ppClass,
  ppReport, ppViewr, ppParameter, ppCtrls, ppPrnabl, ppBands, ppCache, ppVar,
  DBCtrls, rxToolEdit, RXDBCtrl, Mask, RzBckgnd, Menus;

type
  TfrmCarte_Timechange = class(TForm)
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1BandedTableView1: TcxGridBandedTableView;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1keycode: TcxGridDBBandedColumn;
    cxGrid1ex_o: TcxGridDBBandedColumn;
    cxGrid1ex_r: TcxGridDBBandedColumn;
    cxGrid1ex_rq: TcxGridDBBandedColumn;
    cxGrid1act_cmpdt: TcxGridDBBandedColumn;
    cxGrid1exdiff: TcxGridDBBandedColumn;
    cxGrid1prod_site: TcxGridDBBandedColumn;
    cxGrid1at3diff: TcxGridDBBandedColumn;
    cxGrid1lwdiff: TcxGridDBBandedColumn;
    cxGrid1lwdiff_r: TcxGridDBBandedColumn;
    cxGrid1lwdiff_rq: TcxGridDBBandedColumn;
    cxGrid1at3diff_r: TcxGridDBBandedColumn;
    cxGrid1at3diff_rq: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn10: TBitBtn;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    cxGrid1ex_rq1: TcxGridDBBandedColumn;
    cxGrid1lwdiff_rq1: TcxGridDBBandedColumn;
    cxGrid1at3diff_rq1: TcxGridDBBandedColumn;
    cxGrid1line_tno: TcxGridDBBandedColumn;
    cxGrid1qn_tno: TcxGridDBBandedColumn;
    ADOQuery1: TADOQuery;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel27: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppShape2: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel356: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    title7001: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine23: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText23: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppShape3: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    cxGrid1sp_appdt_o: TcxGridDBBandedColumn;
    cxGrid1sp_appdt_r: TcxGridDBBandedColumn;
    cxGrid1sp_appdt_rq: TcxGridDBBandedColumn;
    cxGrid1sp_appdt_rq1: TcxGridDBBandedColumn;
    cxGrid1ddt: TcxGridDBBandedColumn;
    cxGrid1ddt_rq: TcxGridDBBandedColumn;
    cxGrid1ddt_rq1: TcxGridDBBandedColumn;
    cxGrid1ddt0: TcxGridDBBandedColumn;
    cxGrid1m_ddt: TcxGridDBBandedColumn;
    cxGrid1m_ddt_rq: TcxGridDBBandedColumn;
    cxGrid1m_ddt_rq1: TcxGridDBBandedColumn;
    cxGrid1m_ddt0: TcxGridDBBandedColumn;
    cxGrid1qty1: TcxGridDBBandedColumn;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLabel63: TppLabel;
    ppShape11: TppShape;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel70: TppLabel;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel77: TppLabel;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppDBText27: TppDBText;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppDBText31: TppDBText;
    ppLabel79: TppLabel;
    ppShape12: TppShape;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel86: TppLabel;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLabel87: TppLabel;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLabel10: TppLabel;
    ppLabel88: TppLabel;
    ppLine82: TppLine;
    ppLine83: TppLine;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppDBText41: TppDBText;
    ADODataSet2: TADODataSet;
    DataSource2: TDataSource;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    Panel2: TPanel;
    RzBackground1: TRzBackground;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBCheckBox1: TDBCheckBox;
    ADODataSet3: TADODataSet;
    DataSource3: TDataSource;
    Label6: TLabel;
    DBText2: TDBText;
    ADODataSet4: TADODataSet;
    cxGrid1sp_nlr: TcxGridDBBandedColumn;
    cxGrid1ddt_nlr: TcxGridDBBandedColumn;
    cxGrid1m_ddt_nlr: TcxGridDBBandedColumn;
    cxGrid1clos_nlr: TcxGridDBBandedColumn;
    cxGrid1clos_o: TcxGridDBBandedColumn;
    cxGrid1clos_rq: TcxGridDBBandedColumn;
    cxGrid1clos_rq1: TcxGridDBBandedColumn;
    cxGrid1clos_r: TcxGridDBBandedColumn;
    cxGrid1clos_fl: TcxGridDBBandedColumn;
    cxGrid1lwdiff_nlr: TcxGridDBBandedColumn;
    cxGrid1at3diff_nlr: TcxGridDBBandedColumn;
    cxGrid1ex_nlr: TcxGridDBBandedColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxGrid1fwdt_nlr: TcxGridDBBandedColumn;
    cxGrid1fwdt_o: TcxGridDBBandedColumn;
    cxGrid1fwdt_rq: TcxGridDBBandedColumn;
    cxGrid1fwdt_rq1: TcxGridDBBandedColumn;
    cxGrid1fwdt_r: TcxGridDBBandedColumn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLabel19: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppDBText8: TppDBText;
    ppDBText13: TppDBText;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppDBText43: TppDBText;
    ppLine90: TppLine;
    ppLine91: TppLine;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLine12: TppLine;
    ppDBText44: TppDBText;
    ppLine43: TppLine;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppDBText45: TppDBText;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppDBText46: TppDBText;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppShape4: TppShape;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppShape5: TppShape;
    ppLabel143: TppLabel;
    ADOQuery2: TADOQuery;
    PopupMenu1: TPopupMenu;
    CreateDetail1: TMenuItem;
    ppLabel144: TppLabel;
    ppDBText47: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppDBText48: TppDBText;
    ppLine79: TppLine;
    ppLine104: TppLine;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLine105: TppLine;
    ppLabel153: TppLabel;
    ppLabel155: TppLabel;
    ppLine106: TppLine;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLine107: TppLine;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLine111: TppLine;
    ppDBText49: TppDBText;
    ppLabel163: TppLabel;
    b_rq: TppLabel;
    b_rq1: TppLabel;
    b_r: TppLabel;
    l1_r: TppLabel;
    l1_rq: TppLabel;
    l1_rq1: TppLabel;
    l2_rq: TppLabel;
    l2_rq1: TppLabel;
    l2_r: TppLabel;
    c_rq: TppLabel;
    c_rq1: TppLabel;
    c_r: TppLabel;
    e_rq: TppLabel;
    e_rq1: TppLabel;
    e_r: TppLabel;
    f_rq: TppLabel;
    f_r: TppLabel;
    t_rq: TppLabel;
    t_rq1: TppLabel;
    t_r: TppLabel;
    cl_r: TppLabel;
    cl_rq: TppLabel;
    cl_rq1: TppLabel;
    ppLabel54: TppLabel;
    ppLabel61: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel160: TppLabel;
    ppShape13: TppShape;
    b_o: TppLabel;
    c_o: TppLabel;
    e_o: TppLabel;
    f_o: TppLabel;
    t_o: TppLabel;
    DBCheckBox2: TDBCheckBox;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel12: TppLabel;
    ppLabel35: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel62: TppLabel;
    ppLabel71: TppLabel;
    ppLabel78: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel50: TppLabel;
    ppLabel111: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel122: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel154: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel123: TppLabel;
    ppLabel17: TppLabel;
    ppLabel69: TppLabel;
    ppLabel76: TppLabel;
    ppLabel85: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel26: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel181: TppLabel;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    ppLabel182: TppLabel;
    ppLine24: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLabel183: TppLabel;
    ppLine39: TppLine;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ADOQuery3: TADOQuery;
    BitBtn11: TBitBtn;
    cxGrid1ex_s: TcxGridDBBandedColumn;
    ppLine42: TppLine;
    ppLine48: TppLine;
    ppDBText9: TppDBText;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    Label7: TLabel;
    DBText3: TDBText;
    cxGrid1shpm_nlr: TcxGridDBBandedColumn;
    cxGrid1shpm: TcxGridDBBandedColumn;
    cxGrid1shpm_r: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ADODataSet1AfterOpen(DataSet: TDataSet);
    procedure ADODataSetfwdt_rq1change(Sender: TField);
    procedure ADODataSetex_rq1change(Sender: TField);
    procedure ADODataSetlwdiff_rq1change(Sender: TField);
    procedure ADODataSetat3diff_rq1change(Sender: TField);
    procedure ADODataSetappdt_rq1change(Sender: TField);
    procedure ADODataSetddt_rq1change(Sender: TField);
    procedure ADODataSetmddt_rq1change(Sender: TField);
    procedure ADODataSetclos_rq1change(Sender: TField);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ADODataSet3NewRecord(DataSet: TDataSet);
    procedure ADODataSet3AfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure CreateDetail1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure cxGrid1sp_nlrHeaderClick(Sender: TObject);
    procedure cxGrid1ddt_nlrHeaderClick(Sender: TObject);
    procedure cxGrid1m_ddt_nlrHeaderClick(Sender: TObject);
    procedure cxGrid1fwdt_nlrHeaderClick(Sender: TObject);
    procedure cxGrid1ex_nlrHeaderClick(Sender: TObject);
    procedure cxGrid1clos_nlrHeaderClick(Sender: TObject);
    procedure cxGrid1at3diff_nlrHeaderClick(Sender: TObject);
    procedure ADODataSetfwdtex_rqchange(Sender: TField);
    procedure BitBtn11Click(Sender: TObject);
    procedure cxGrid1shpm_nlrHeaderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarte_Timechange: TfrmCarte_Timechange;

implementation

uses Carte_MainFormu, Carte_OrdprocessingFormu, Carte_ItemchooseFormu,
Carte_ReportsFormu, Carte_LocFormu, Carte_MailFormu;

{$R *.dfm}

procedure TfrmCarte_Timechange.ADODataSet1AfterOpen(DataSet: TDataSet);
begin
  (adodataset1.FieldByName('fwdt_o') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('fwdt_r') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('ex_o') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('ex_r') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('act_cmpdt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('ddt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('m_ddt') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('ddt0') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('m_ddt0') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('sp_appdt_o') as tdatetimefield).DisplayFormat:='mm/dd';
  (adodataset1.FieldByName('sp_appdt_r') as tdatetimefield).DisplayFormat:='mm/dd';
  adodataset1.FieldByName('fwdt_rq').OnChange:=adodatasetfwdtex_rqchange;
  adodataset1.FieldByName('fwdt_rq1').OnChange:=adodatasetfwdtex_rqchange;
  adodataset1.FieldByName('ex_rq').OnChange:=adodatasetfwdtex_rqchange;
  adodataset1.FieldByName('ex_rq1').OnChange:=adodatasetfwdtex_rqchange;
  adodataset1.FieldByName('lwdiff_rq').OnChange:=adodatasetlwdiff_rq1change;
  adodataset1.FieldByName('at3diff_rq1').OnChange:=adodatasetat3diff_rq1change;
  adodataset1.FieldByName('sp_appdt_rq1').OnChange:=adodatasetappdt_rq1change;
  adodataset1.FieldByName('ddt_rq1').OnChange:=adodatasetddt_rq1change;
  adodataset1.FieldByName('m_ddt_rq1').OnChange:=adodatasetmddt_rq1change;
  adodataset1.FieldByName('clos_rq1').OnChange:=adodatasetclos_rq1change;
end;

procedure TfrmCarte_Timechange.ADODataSet3AfterPost(DataSet: TDataSet);
var
  cmp3g,noneed:string;
begin
  if adodataset3.FieldByName('act_cmp3g').Value=true then cmp3g:='*' else cmp3g:='';
  noneed:='0';
  with adoquery2 do begin
    close;
    sql.Text:='select distinct seq from tbl_carte_sopc1 where tc_seqno like ''%'++adodataset3.FieldByName('tc_seq3g').Value+'%''';//:x1';
    //parameters[0].Value:='%'+adodataset3.FieldByName('tc_seq3g').Value+'%';
    open;
    if fieldbyname('seq').isnull then noneed:='1' else begin
      first;
      while not eof do begin
        with adoquery1 do begin
          close;
          sql.Text:='update tbl_carte_sopc1 set tc_seqno=replace(tc_seqno,:x0,:x1) where seq=:x2';
          parameters[0].Value:=adodataset3.FieldByName('tc_seq3g').Value;
          parameters[1].Value:=adodataset3.FieldByName('tc_seq3g').Value+cmp3g;
          parameters[2].Value:=adoquery2.FieldByName('seq').Value;
          execsql;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  if (frmCarte_Ordprocessing.cxGrid1DBBandedTableView1.DataController.filteredrecordcount<=20) and (noneed='1') then begin
    with adodataset4 do begin
      close;
      //commandtext:=frmCarte_Ordprocessing.ADODataSet1.CommandText;
      //if frmCarte_Ordprocessing.cxgrid1dbbandedtableview1.DataController.Filter.FilterText>'' then
      //commandtext:=commandtext+' and '+frmCarte_Ordprocessing.cxgrid1dbbandedtableview1.DataController.Filter.FilterText;
      commandtext:='select a.* from tbl_carte_sopc1 a,tbl_carte_sopc2_tc b where a.seq=b.seq and b.seq3g='+adodataset3.fieldbyname('seq3g').asstring;
      open;
      first;
      while not eof do begin
        with adoquery1 do begin
          close;
          if adodataset4.fieldbyname('tc_seqno').isnull then begin
            sql.Text:='update tbl_carte_sopc1 set tc_seqno=:x1 where seq=:x2';
            parameters[0].Value:=adodataset3.FieldByName('tc_seq3g').Value;
            parameters[1].Value:=adodataset4.FieldByName('seq').Value;
          end else if pos(adodataset3.FieldByName('tc_seq3g').Value,adodataset4.fieldbyname('tc_seqno').value)>0 then begin
            sql.Text:='update tbl_carte_sopc1 set tc_seqno=replace(tc_seqno,:x0,:x1) where seq=:x2';
            parameters[0].Value:=adodataset3.FieldByName('tc_seq3g').Value;
            parameters[1].Value:=adodataset3.FieldByName('tc_seq3g').Value+cmp3g;
            parameters[2].Value:=adodataset4.FieldByName('seq').Value;
          end else begin
            sql.Text:='update tbl_carte_sopc1 set tc_seqno=rtrim(tc_seqno)+'',''+:x1 where seq=:x2';
            parameters[0].Value:=adodataset3.FieldByName('tc_seq3g').Value+cmp3g;
            parameters[1].Value:=adodataset4.FieldByName('seq').Value;
          end;
          execsql;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
  with adoquery1 do begin
    close;
    sql.Text:='update tbl_carte_sopc3_grp set tc_seq3g='''+adodataset3.FieldByName('tc_seq3g').Value+cmp3g+''' where seq3g='+adodataset3.FieldByName('seq3g').asstring;
    execsql;
  end;
end;

procedure TfrmCarte_Timechange.ADODataSet3NewRecord(DataSet: TDataSet);
var
  seq1,grp1:integer;
  yn,sqlstr:string;
begin
  yn:=copy(formatdatetime('yymmdd',date),1,4);
  with adoquery1 do begin
    close;
    //parameters.clear;
    sql.text:='select max(seq3g) as x1 from tbl_carte_sopc3_grp';
    open;
    if not fieldbyname('x1').isnull then seq1:=fieldbyname('x1').Value+1
    else seq1:=1;
  end;
  with adoquery1 do begin
    close;
    sql.Text:='select count(distinct tc_seq3g) as x1 from tbl_carte_sopc3_grp where tc_seq3g like '''+yn+'%''';
    //parameters[0].Value:=yn+'%';
    open;
    if not fieldbyname('x1').isnull then grp1:=fieldbyname('x1').Value+1 else grp1:=1;
  end;
  adodataset3.fieldbyname('seq3g').value:=seq1;
  adodataset3.FieldByName('tc_seq3g').Value:=yn+'-'+copy('0'+inttostr(grp1),length('0'+inttostr(grp1))-1,2);
  adodataset3.FieldByName('act_cmp3g').Value:=false;
  adodataset3.FieldByName('tc_cfm').Value:=false;
  adodataset3.FieldByName('act_start3g').Value:=date;
  adodataset3.FieldByName('act_issue3g').Value:=frmCarte_Main.lbluser.caption;

    sqlstr:='select '+inttostr(seq1)+',seq,cust,projectno,keycode,qty1,case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end,'
           +'case when ddt0 is not null then ddt0 else ddt end,case when m_ddt0 is not null then m_ddt0 else m_ddt end,'
           +'case when fwdt_r is not null then fwdt_r else fwdt_o end,case when ex_r is not null then ex_r else ex_o end,'
           +'act_cmpdt,case when lwdiff_r is not null then lwdiff_r else lwdiff end,case when at3diff_r is not null then at3diff_r else at3diff end,'
           +'prod_site,prod_site1,line_tno,qn_tno,custpo,custstyle,phstyle_a,phcolor,phstyle,workorderno,rwo_wo from tbl_carte_sopc1 where 0=0';
    if frmCarte_Ordprocessing.cxcombobox1.text>'' then sqlstr:=sqlstr+' and charindex(keycode,'''+frmCarte_Ordprocessing.cxcombobox1.text+''')>0';
    if frmCarte_Ordprocessing.combobox2.text>'' then sqlstr:=sqlstr+' and charindex(projectno,'''+frmCarte_Ordprocessing.combobox2.text+''')>0';
    if frmCarte_Ordprocessing.cxcombobox2.text>'' then sqlstr:=sqlstr+' and charindex(booking,'''+frmCarte_Ordprocessing.cxcombobox2.text+''')>0';
    if frmCarte_Ordprocessing.combobox4.text>'' then begin
      if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sqlstr:=sqlstr+' and cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox5.text>'' then sqlstr:=sqlstr+' and qty1_sp='''+frmCarte_Ordprocessing.combobox5.text+'''';
    if frmCarte_Ordprocessing.combobox6.text>'' then sqlstr:=sqlstr+' and custstyle='''+frmCarte_Ordprocessing.combobox6.text+'''';
    if frmCarte_Ordprocessing.combobox3.text>'' then begin
       if frmCarte_Ordprocessing.combobox3.text='未開制單' then sqlstr:=sqlstr+' and ((workorderno is null) or (workorderno=''''))'
       else sqlstr:=sqlstr+' and workorderno='''+frmCarte_Ordprocessing.combobox3.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sqlstr:=sqlstr+' and prod_site='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        sqlstr:=sqlstr+' and prod_site in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sqlstr:=sqlstr+' and prod_site in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sqlstr:=sqlstr+' and ((prod_site is null) or (prod_site=''''))';
    end;
    if frmCarte_Ordprocessing.combobox8.text>'' then sqlstr:=sqlstr+' and div like '''+frmCarte_Ordprocessing.combobox8.text+'%''';
    if frmCarte_Ordprocessing.cbb1.text>'' then begin
      if pos('*',frmCarte_Ordprocessing.cbb1.text)>0 then
        sqlstr:=sqlstr+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=1 and act_item3='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+''')'
                    +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=1 and act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+'''))'
      else sqlstr:=sqlstr+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0 and act_item3='''+frmCarte_Ordprocessing.cbb1.text+''')'
                       +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+'''))';
    end;
    if frmCarte_Ordprocessing.cbb2.text>'' then sqlstr:=sqlstr+' and (exists (select b.seq from tbl_carte_sopc2 b,tbl_carte_sopc3 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and c.act_cmp3=0 and b.act_cnt=1 and act_issue='''+frmCarte_Ordprocessing.cbb2.text+''')'
                                           +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb2.text+'''))';
    if frmCarte_Ordprocessing.dateedit1.date>0 then sqlstr:=sqlstr+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit1.date)+'''';
    if frmCarte_Ordprocessing.dateedit2.date>0 then sqlstr:=sqlstr+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit2.date+1)+'''';
    if frmCarte_Ordprocessing.dateedit3.date>0 then sqlstr:=sqlstr+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit3.date)+''')';
    if frmCarte_Ordprocessing.edit1.text>'' then sqlstr:=sqlstr+' and mex_oe>='+frmCarte_Ordprocessing.edit1.text;
    if frmCarte_Ordprocessing.edit2.text>'' then sqlstr:=sqlstr+' and mex_oe<='+frmCarte_Ordprocessing.edit2.text;
    if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
      if frmCarte_Ordprocessing.dateedit4.date>0 then sqlstr:=sqlstr+' and act_cmpdt>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit4.date)+'''';
      if frmCarte_Ordprocessing.dateedit5.date>0 then sqlstr:=sqlstr+' and act_cmpdt<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit5.date)+'''';
    end else begin
      if frmCarte_Ordprocessing.chk3.checked then sqlstr:=sqlstr+' and ex_a is not null'
      else sqlstr:=sqlstr+' and ex_a is null';
    end;
    if frmCarte_Ordprocessing.chk4.checked then sqlstr:=sqlstr+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0)';
    if frmCarte_Ordprocessing.chk5.checked then begin
      sqlstr:=sqlstr+' and ord_cancel1=''Y''';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr:=sqlstr+' and ((workorderno is null) or (workorderno=''''))';
    end else begin
      sqlstr:=sqlstr+' and ((ord_cancel1='''') or (ord_cancel1 is null))';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr:=sqlstr+' and ((workorderno is null) or (workorderno=''''))'
      else sqlstr:=sqlstr+' and workorderno>''''';
    end;
    if frmCarte_Ordprocessing.cxgrid1dbbandedtableview1.DataController.Filter.FilterText>'' then
    sqlstr:=sqlstr+' and '+frmCarte_Ordprocessing.cxgrid1dbbandedtableview1.DataController.Filter.FilterText;

    //showmessage(inttostr(seq1)+' : '+sqlstr);

    with adoquery3 do begin
      close;
      //parameters.clear;
      sql.text:='exec sp_carte_gentcdetail :x1,:x2';
      parameters[0].Value:=seq1;
      parameters[1].Value:=sqlstr;
      execsql;
    end;

    with adodataset1 do begin
      close;
      //parameters.clear;
      commandtext:='select * from tbl_carte_sopc2_tc where seq3g='+inttostr(seq1);
      //parameters[0].value:=seq1;
      open;
    end;
end;

procedure TfrmCarte_Timechange.ADODataSetappdt_rq1change(Sender: TField);
begin
  if not adodataset1.fieldbyname('sp_appdt_rq1').isnull then begin
    adodataset1.fieldbyname('sp_appdt_r').value:=adodataset1.fieldbyname('sp_appdt_o').value+adodataset1.fieldbyname('sp_appdt_rq1').value;
    //if (adodataset1.fieldbyname('sp_appdt_o').value-adodataset1.fieldbyname('sp_appdt_rq1').value)>adodataset1.fieldbyname('fwdt_o').value then
    //adodataset1.fieldbyname('fwdt_rq').value:=trunc(adodataset1.fieldbyname('fwdt_o').value)-trunc(adodataset1.fieldbyname('sp_appdt_o').value-adodataset1.fieldbyname('sp_appdt_rq1').value)
    //else adodataset1.fieldbyname('fwdt_rq').value:=null;
  end else adodataset1.fieldbyname('sp_appdt_r').value:=null;
end;

procedure TfrmCarte_Timechange.ADODataSetat3diff_rq1change(Sender: TField);
begin
  if not adodataset1.fieldbyname('at3diff_rq1').isnull then
  adodataset1.fieldbyname('at3diff_r').value:=adodataset1.fieldbyname('at3diff').value+adodataset1.fieldbyname('at3diff_rq1').value
  else adodataset1.fieldbyname('at3diff_r').value:=null;
end;

procedure TfrmCarte_Timechange.ADODataSetclos_rq1change(Sender: TField);
begin
  if not adodataset1.fieldbyname('clos_rq1').isnull then begin
    adodataset1.fieldbyname('clos_r').value:=adodataset1.fieldbyname('clos_rq1').value;
    if adodataset1.fieldbyname('ex_rq1').isnull then begin
      //adodataset1.fieldbyname('ex_rq1').value:=0-adodataset1.fieldbyname('clos_rq1').value;
      adodataset1.fieldbyname('ex_r').value:=adodataset1.fieldbyname('ex_o').value-adodataset1.fieldbyname('clos_rq1').value;
    end;
  end else begin
    adodataset1.fieldbyname('clos_r').value:=null;
    if adodataset1.fieldbyname('ex_rq1').isnull then begin
      adodataset1.fieldbyname('ex_r').value:=null;
    end;
  end;
end;

procedure TfrmCarte_Timechange.ADODataSetddt_rq1change(Sender: TField);
begin
  if not adodataset1.fieldbyname('ddt_rq1').isnull then
  adodataset1.fieldbyname('ddt0').value:=adodataset1.fieldbyname('ddt').value+adodataset1.fieldbyname('ddt_rq1').value
  else adodataset1.fieldbyname('ddt0').value:=null;
end;

procedure TfrmCarte_Timechange.ADODataSetex_rq1change(Sender: TField);
begin
  if not adodataset1.fieldbyname('ex_rq1').isnull then
  adodataset1.fieldbyname('ex_r').value:=adodataset1.fieldbyname('ex_o').value+adodataset1.fieldbyname('ex_rq1').value
  else adodataset1.fieldbyname('ex_r').value:=null;
end;

procedure TfrmCarte_Timechange.ADODataSetfwdtex_rqchange(Sender: TField);
var
  t1,t2:tdatetime;
begin
  if not adodataset1.fieldbyname('fwdt_rq').isnull then begin
    t1:=adodataset1.fieldbyname('fwdt_o').value+adodataset1.fieldbyname('fwdt_rq').value;
    if not adodataset1.fieldbyname('ex_rq').isnull then begin
      t2:=adodataset1.fieldbyname('ex_o').value+adodataset1.fieldbyname('ex_rq').value;
    end else t2:=adodataset1.fieldbyname('ex_o').value;
    adodataset1.fieldbyname('lwdiff_rq').value:=trunc(t2)-trunc(t1);

    if not adodataset1.fieldbyname('fwdt_rq1').isnull then begin
      adodataset1.fieldbyname('fwdt_r').value:=adodataset1.fieldbyname('fwdt_o').value+adodataset1.fieldbyname('fwdt_rq1').value;
      t1:=adodataset1.fieldbyname('fwdt_o').value+adodataset1.fieldbyname('fwdt_rq1').value;
      if not adodataset1.fieldbyname('ex_rq1').isnull then begin
        adodataset1.fieldbyname('ex_r').value:=adodataset1.fieldbyname('ex_o').value+adodataset1.fieldbyname('ex_rq1').value;
        t2:=adodataset1.fieldbyname('ex_o').value+adodataset1.fieldbyname('ex_rq1').value;
        adodataset1.fieldbyname('lwdiff_r').value:=trunc(t2)-trunc(t1);
      end else begin
        adodataset1.fieldbyname('ex_r').value:=null;
      end;
    end else begin
      adodataset1.fieldbyname('fwdt_r').value:=null;
      adodataset1.fieldbyname('lwdiff_r').value:=null;
      if not adodataset1.fieldbyname('ex_rq1').isnull then begin
        adodataset1.fieldbyname('ex_r').value:=adodataset1.fieldbyname('ex_o').value+adodataset1.fieldbyname('ex_rq1').value;
      end else begin
        adodataset1.fieldbyname('ex_r').value:=null;
      end;
    end;
  end else if not adodataset1.fieldbyname('ex_rq').isnull then begin
    adodataset1.fieldbyname('fwdt_r').value:=null;
    t1:=adodataset1.fieldbyname('fwdt_o').value;
    if not adodataset1.fieldbyname('ex_rq1').isnull then begin
      adodataset1.fieldbyname('ex_r').value:=adodataset1.fieldbyname('ex_o').value+adodataset1.fieldbyname('ex_rq1').value;
      t2:=adodataset1.fieldbyname('ex_o').value+adodataset1.fieldbyname('ex_rq1').value;
    end else begin
      adodataset1.fieldbyname('ex_r').value:=null;
      t2:=adodataset1.fieldbyname('ex_o').value+adodataset1.fieldbyname('ex_rq').value;
    end;
    adodataset1.fieldbyname('lwdiff_rq').value:=trunc(t2)-trunc(t1);
    adodataset1.fieldbyname('lwdiff_r').value:=null;
  end else begin
    adodataset1.fieldbyname('fwdt_r').value:=null;
    adodataset1.fieldbyname('ex_r').value:=null;
    adodataset1.fieldbyname('lwdiff_rq').value:=null;
    adodataset1.fieldbyname('lwdiff_r').value:=null;
  end;
end;

procedure TfrmCarte_Timechange.ADODataSetfwdt_rq1change(Sender: TField);
begin
  if not adodataset1.fieldbyname('fwdt_rq1').isnull then begin
    adodataset1.fieldbyname('fwdt_r').value:=adodataset1.fieldbyname('fwdt_o').value+adodataset1.fieldbyname('fwdt_rq1').value;
    //if trunc(adodataset1.fieldbyname('ex_o').value)-trunc(adodataset1.fieldbyname('fwdt_o').value-adodataset1.fieldbyname('fwdt_rq1').value)>adodataset1.fieldbyname('lwdiff').value then
    //adodataset1.fieldbyname('lwdiff_rq').value:=trunc(adodataset1.fieldbyname('ex_o').value)-trunc(adodataset1.fieldbyname('fwdt_o').value-adodataset1.fieldbyname('fwdt_rq1').value)-adodataset1.fieldbyname('lwdiff').value
    //else adodataset1.fieldbyname('lwdiff_rq').value:=null;
  end else adodataset1.fieldbyname('fwdt_r').value:=null;
end;

procedure TfrmCarte_Timechange.ADODataSetlwdiff_rq1change(Sender: TField);
begin
  //if not adodataset1.fieldbyname('lwdiff_rq').isnull then
  //adodataset1.fieldbyname('lwdiff_r').value:=adodataset1.fieldbyname('lwdiff').value-adodataset1.fieldbyname('lwdiff_rq').value
  //else adodataset1.fieldbyname('lwdiff_r').value:=null;
end;

procedure TfrmCarte_Timechange.ADODataSetmddt_rq1change(Sender: TField);
begin
  if not adodataset1.fieldbyname('m_ddt_rq1').isnull then begin
    adodataset1.fieldbyname('m_ddt0').value:=adodataset1.fieldbyname('m_ddt').value+adodataset1.fieldbyname('m_ddt_rq1').value;
    //if (adodataset1.fieldbyname('m_ddt').value-adodataset1.fieldbyname('m_ddt_rq1').value)>adodataset1.fieldbyname('fwdt_o').value then
    //adodataset1.fieldbyname('fwdt_rq').value:=trunc(adodataset1.fieldbyname('fwdt_o').value)-trunc(adodataset1.fieldbyname('m_ddt').value-adodataset1.fieldbyname('m_ddt_rq1').value)
    //else adodataset1.fieldbyname('fwdt_rq').value:=null;
  end else adodataset1.fieldbyname('m_ddt0').value:=null;
end;

procedure TfrmCarte_Timechange.BitBtn11Click(Sender: TObject);
begin
  if frmcarte_Mail=nil then frmCarte_Mail:=tfrmCarte_Mail.create(nil);
  frmCarte_Mail.edit4.text:=frmCarte_Main.lblmail.caption;
  frmCarte_Mail.edit5.text:=adodataset3.fieldbyname('act_item3g').value+' - '+adodataset3.fieldbyname('act_subject3g').value+' on [調整時限編號: '+adodataset3.fieldbyname('tc_seq3g').value+', 要求者: '+adodataset3.fieldbyname('act_issue3g').value+']';
  frmCarte_Mail.memo1.lines.clear;
  frmCarte_Mail.memo1.lines.add('');
  frmCarte_Mail.memo1.lines.add('Sender: '+adodataset3.fieldbyname('act_issue3g').value);
  frmCarte_Mail.memo1.lines.add('Date: '+formatdatetime('mm/dd hh:nn',adodataset3.fieldbyname('act_start3g').value));
  //frmCarte_Mail.memo1.lines.add(adodataset1.fieldbyname('act_marks').value);
  frmCarte_Mail.show;
end;

procedure TfrmCarte_Timechange.BitBtn1Click(Sender: TObject);
begin
  if adodataset3.fieldbyname('tc_cfm').value=true then showmessage('已批核, 不能再次批核!')
  else begin
    if application.messagebox('確認批核此時限調整?','提示信息',mb_iconquestion+mb_yesno)=idyes then begin
      if adodataset3.state=dsbrowse then adodataset3.edit;
      adodataset3.fieldbyname('tc_cfm').value:=true;
      adodataset3.fieldbyname('tc_cfmuser').value:=frmCarte_Main.lbluser.caption;
      adodataset3.fieldbyname('tc_cfmdt').value:=date;
      adodataset3.post;
      with adoquery1 do begin
        close;
        sql.text:='exec sp_carte_updtc '+adodataset3.fieldbyname('seq3g').asstring;
        execsql;
      end;
      showmessage('完成批核!');
    end;
  end;
end;

procedure TfrmCarte_Timechange.BitBtn3Click(Sender: TObject);
begin
  //if frmCarte_Ordprocessing.adodataset1.state=dsedit then frmCarte_Ordprocessing.adodataset1.post;
  if (adodataset3.State=dsEdit) or (adodataset3.State=dsInsert) then adodataset3.Post;
  if adodataset1.state=dsedit then adodataset1.post;
end;

procedure TfrmCarte_Timechange.BitBtn4Click(Sender: TObject);
begin
  with adodataset2 do begin
    close;
    commandtext:='select * from tbl_carte_sopc3_grp a,tbl_carte_sopc2_tc b where a.seq3g=b.seq3g';// and a.seq3g=:x1';
    if frmCarte_Ordprocessing.combobox4.text>'' then begin
      if frmCarte_Ordprocessing.combobox4.text<>'All' then commandtext:=commandtext+' and b.cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
    end;
    if adodataset3.active then commandtext:=commandtext+' and a.seq3g='+adodataset3.fieldbyname('seq3g').asstring
    else begin
      if frmCarte_Reports.checkbox3.checked=false then
      commandtext:=commandtext+' and a.act_cmp3g=0';
    end;
    //parameters[0].Value:=adodataset3.FieldByName('seq3g').Value;
    open;
    {
    commandtext:='select * from tbl_carte_sopc1 a,tbl_carte_sopc3_grp b where a.tc_seqno=b.tc_seq3g and b.act_cmp3g=0';
    if frmCarte_Ordprocessing.cxcombobox1.text>'' then commandtext:=commandtext+' and charindex(keycode,'''+frmCarte_Ordprocessing.cxcombobox1.text+''')>0';
    if frmCarte_Ordprocessing.combobox2.text>'' then commandtext:=commandtext+' and charindex(projectno,'''+frmCarte_Ordprocessing.combobox2.text+''')>0';
    if frmCarte_Ordprocessing.cxcombobox2.text>'' then commandtext:=commandtext+' and charindex(booking,'''+frmCarte_Ordprocessing.cxcombobox2.text+''')>0';
    if frmCarte_Ordprocessing.combobox4.text>'' then begin
      if frmCarte_Ordprocessing.combobox4.text<>'All' then
      commandtext:=commandtext+' and cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox5.text>'' then commandtext:=commandtext+' and qty1_sp='''+frmCarte_Ordprocessing.combobox5.text+'''';
    if frmCarte_Ordprocessing.combobox6.text>'' then commandtext:=commandtext+' and custstyle='''+frmCarte_Ordprocessing.combobox6.text+'''';
    if frmCarte_Ordprocessing.combobox3.text>'' then begin
       if frmCarte_Ordprocessing.combobox3.text='未開制單' then commandtext:=commandtext+' and ((workorderno is null) or (workorderno=''''))'
       else commandtext:=commandtext+' and workorderno='''+frmCarte_Ordprocessing.combobox3.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        commandtext:=commandtext+' and prod_site='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        commandtext:=commandtext+' and prod_site in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        commandtext:=commandtext+' and prod_site in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        commandtext:=commandtext+' and ((prod_site is null) or (prod_site=''''))';
    end;
    if frmCarte_Ordprocessing.combobox8.text>'' then commandtext:=commandtext+' and div like '''+frmCarte_Ordprocessing.combobox8.text+'%''';
    if frmCarte_Ordprocessing.cbb1.text>'' then begin
      if pos('*',frmCarte_Ordprocessing.cbb1.text)>0 then
        commandtext:=commandtext+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=1 and act_item3='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+''')'
                    +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=1 and act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+'''))'
      else commandtext:=commandtext+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0 and act_item3='''+frmCarte_Ordprocessing.cbb1.text+''')'
                       +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+'''))';
    end;
    if frmCarte_Ordprocessing.cbb2.text>'' then commandtext:=commandtext+' and (exists (select b.seq from tbl_carte_sopc2 b,tbl_carte_sopc3 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and c.act_cmp3=0 and b.act_cnt=1 and act_issue='''+frmCarte_Ordprocessing.cbb2.text+''')'
                                           +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb2.text+'''))';
    if frmCarte_Ordprocessing.dateedit1.date>0 then commandtext:=commandtext+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit1.date)+'''';
    if frmCarte_Ordprocessing.dateedit2.date>0 then commandtext:=commandtext+' and (case when ex_r is not null then ex_r else ex_o end)<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit2.date)+'''';
    if frmCarte_Ordprocessing.dateedit3.date>0 then commandtext:=commandtext+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit3.date)+''')';
    if frmCarte_Ordprocessing.edit1.text>'' then commandtext:=commandtext+' and mex_oe>='+frmCarte_Ordprocessing.edit1.text;
    if frmCarte_Ordprocessing.edit2.text>'' then commandtext:=commandtext+' and mex_oe<='+frmCarte_Ordprocessing.edit2.text;
    if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
      if frmCarte_Ordprocessing.dateedit4.date>0 then commandtext:=commandtext+' and act_cmpdt>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit4.date)+'''';
      if frmCarte_Ordprocessing.dateedit5.date>0 then commandtext:=commandtext+' and act_cmpdt<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit5.date)+'''';
    end else begin
      if frmCarte_Ordprocessing.chk3.checked then commandtext:=commandtext+' and ex_a is not null'
      else commandtext:=commandtext+' and ex_a is null';
    end;
    if frmCarte_Ordprocessing.chk4.checked then commandtext:=commandtext+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0)';
    if frmCarte_Ordprocessing.chk5.checked then begin
      commandtext:=commandtext+' and ord_cancel1=''Y''';
      if frmCarte_Ordprocessing.chk1.checked then commandtext:=commandtext+' and ((workorderno is null) or (workorderno=''''))';
    end else begin
      commandtext:=commandtext+' and ((ord_cancel1='''') or (ord_cancel1 is null))';
      if frmCarte_Ordprocessing.chk1.checked then commandtext:=commandtext+' and ((workorderno is null) or (workorderno=''''))'
      else commandtext:=commandtext+' and workorderno>''''';
    end;
    if frmCarte_Ordprocessing.cxgrid1dbbandedtableview1.DataController.Filter.FilterText>'' then
    commandtext:=commandtext+' and '+frmCarte_Ordprocessing.cxgrid1dbbandedtableview1.DataController.Filter.FilterText;
    open;
    }
    if not fieldbyname('seq3g').isnull then begin
      title7001.caption:=frmCarte_Ordprocessing.combobox4.text;
      ppReport1.print;
    end;
  end;
end;

procedure TfrmCarte_Timechange.BitBtn5Click(Sender: TObject);
begin
  if frmCarte_Ordprocessing.savedialog1.Execute then begin
    ExportGridToExcel(frmCarte_Ordprocessing.savedialog1.FileName,cxGrid1,false,true,false,'xls');
  end;
end;

procedure TfrmCarte_Timechange.BitBtn6Click(Sender: TObject);
begin
  if frmCarte_Ordprocessing.cxGrid1DBBandedTableView1.DataController.filteredrecordcount<=20 then begin
    adodataset3.append;
  end;
end;

procedure TfrmCarte_Timechange.BitBtn7Click(Sender: TObject);
begin
  if not adodataset3.bof then adodataset3.Prior;
end;

procedure TfrmCarte_Timechange.BitBtn8Click(Sender: TObject);
begin
  if not adodataset3.eof then adodataset3.Next;
end;

procedure TfrmCarte_Timechange.BitBtn9Click(Sender: TObject);
begin
  if (adodataset3.state=dsinsert) or (adodataset3.state=dsedit) then adodataset3.post;
end;

procedure TfrmCarte_Timechange.CreateDetail1Click(Sender: TObject);
var
  sqlstr:string;
begin
    sqlstr:='select '+adodataset3.fieldbyname('seq3g').asstring+',seq,cust,projectno,keycode,qty1,case when sp_appdt_r is not null then sp_appdt_r else sp_appdt_o end,'
           +'case when ddt0 is not null then ddt0 else ddt end,case when m_ddt0 is not null then m_ddt0 else m_ddt end,'
           +'case when fwdt_r is not null then fwdt_r else fwdt_o end,case when ex_r is not null then ex_r else ex_o end,'
           +'act_cmpdt,case when lwdiff_r is not null then lwdiff_r else lwdiff end,case when at3diff_r is not null then at3diff_r else at3diff end,'
           +'prod_site,prod_site1,line_tno,qn_tno,custpo,custstyle,phstyle_a,phcolor,phstyle,workorderno,rwo_wo from tbl_carte_sopc1 where 0=0';
    if frmCarte_Ordprocessing.cxcombobox1.text>'' then sqlstr:=sqlstr+' and charindex(keycode,'''+frmCarte_Ordprocessing.cxcombobox1.text+''')>0';
    if frmCarte_Ordprocessing.combobox2.text>'' then sqlstr:=sqlstr+' and charindex(projectno,'''+frmCarte_Ordprocessing.combobox2.text+''')>0';
    if frmCarte_Ordprocessing.cxcombobox2.text>'' then sqlstr:=sqlstr+' and charindex(booking,'''+frmCarte_Ordprocessing.cxcombobox2.text+''')>0';
    if frmCarte_Ordprocessing.combobox4.text>'' then begin
      if frmCarte_Ordprocessing.combobox4.text<>'All' then
      sqlstr:=sqlstr+' and cust='''+frmCarte_Ordprocessing.combobox4.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox5.text>'' then sqlstr:=sqlstr+' and qty1_sp='''+frmCarte_Ordprocessing.combobox5.text+'''';
    if frmCarte_Ordprocessing.combobox6.text>'' then sqlstr:=sqlstr+' and custstyle='''+frmCarte_Ordprocessing.combobox6.text+'''';
    if frmCarte_Ordprocessing.combobox3.text>'' then begin
       if frmCarte_Ordprocessing.combobox3.text='未開制單' then sqlstr:=sqlstr+' and ((workorderno is null) or (workorderno=''''))'
       else sqlstr:=sqlstr+' and workorderno='''+frmCarte_Ordprocessing.combobox3.text+'''';
    end;
    if frmCarte_Ordprocessing.combobox7.text>'' then begin
      if (frmCarte_Ordprocessing.combobox7.text<>'GD (SL/PP/PP2/-)') and (frmCarte_Ordprocessing.combobox7.text<>'GX (GG/RX)') and (frmCarte_Ordprocessing.combobox7.text<>'未定') then
        sqlstr:=sqlstr+' and prod_site='''+frmCarte_Ordprocessing.combobox7.text+''''
      else if (frmCarte_Ordprocessing.combobox7.text='GD (SL/PP/PP2/-)') then
        sqlstr:=sqlstr+' and prod_site in (''SL'',''PP'',''PP2'',''-'')'
      else if (frmCarte_Ordprocessing.combobox7.text='GX (GG/RX)') then
        sqlstr:=sqlstr+' and prod_site in (''GG'',''RX'')'
      else if (frmCarte_Ordprocessing.combobox7.text='未定') then
        sqlstr:=sqlstr+' and ((prod_site is null) or (prod_site=''''))';
    end;
    if frmCarte_Ordprocessing.combobox8.text>'' then sqlstr:=sqlstr+' and div like '''+frmCarte_Ordprocessing.combobox8.text+'%''';
    if frmCarte_Ordprocessing.cbb1.text>'' then begin
      if pos('*',frmCarte_Ordprocessing.cbb1.text)>0 then
        sqlstr:=sqlstr+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=1 and act_item3='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+''')'
                    +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=1 and act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+'''))'
      else sqlstr:=sqlstr+' and (exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0 and act_item3='''+frmCarte_Ordprocessing.cbb1.text+''')'
                       +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_item3g='''+copy(frmCarte_Ordprocessing.cbb1.text,1,3)+'''))';
    end;
    if frmCarte_Ordprocessing.cbb2.text>'' then sqlstr:=sqlstr+' and (exists (select b.seq from tbl_carte_sopc2 b,tbl_carte_sopc3 c where a.seq=b.seq and a.seq=c.seq and b.seq_i=c.seq_i and c.act_cmp3=0 and b.act_cnt=1 and act_issue='''+frmCarte_Ordprocessing.cbb2.text+''')'
                                           +' or exists (select grp_act3g from tbl_carte_sopc3_grp b where charindex(b.grp_act3g,a.grp_act)>0 and act_cmp3g=0 and act_issue3g='''+frmCarte_Ordprocessing.cbb2.text+'''))';
    if frmCarte_Ordprocessing.dateedit1.date>0 then sqlstr:=sqlstr+' and (case when ex_r is not null then ex_r else ex_o end)>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit1.date)+'''';
    if frmCarte_Ordprocessing.dateedit2.date>0 then sqlstr:=sqlstr+' and (case when ex_r is not null then ex_r else ex_o end)<'''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit2.date+1)+'''';
    if frmCarte_Ordprocessing.dateedit3.date>0 then sqlstr:=sqlstr+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and b.act_cmp3=0 and b.act_cmpdt3<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit3.date)+''')';
    if frmCarte_Ordprocessing.edit1.text>'' then sqlstr:=sqlstr+' and mex_oe>='+frmCarte_Ordprocessing.edit1.text;
    if frmCarte_Ordprocessing.edit2.text>'' then sqlstr:=sqlstr+' and mex_oe<='+frmCarte_Ordprocessing.edit2.text;
    if (frmCarte_Ordprocessing.dateedit4.date>0) or (frmCarte_Ordprocessing.dateedit5.date>0) then begin
      if frmCarte_Ordprocessing.dateedit4.date>0 then sqlstr:=sqlstr+' and act_cmpdt>='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit4.date)+'''';
      if frmCarte_Ordprocessing.dateedit5.date>0 then sqlstr:=sqlstr+' and act_cmpdt<='''+formatdatetime('yyyy-mm-dd',frmCarte_Ordprocessing.dateedit5.date)+'''';
    end else begin
      if frmCarte_Ordprocessing.chk3.checked then sqlstr:=sqlstr+' and ex_a is not null'
      else sqlstr:=sqlstr+' and ex_a is null';
    end;
    if frmCarte_Ordprocessing.chk4.checked then sqlstr:=sqlstr+' and exists (select seq from tbl_carte_sopc3 b where a.seq=b.seq and act_cmp3=0)';
    if frmCarte_Ordprocessing.chk5.checked then begin
      sqlstr:=sqlstr+' and ord_cancel1=''Y''';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr:=sqlstr+' and ((workorderno is null) or (workorderno=''''))';
    end else begin
      sqlstr:=sqlstr+' and ((ord_cancel1='''') or (ord_cancel1 is null))';
      if frmCarte_Ordprocessing.chk1.checked then sqlstr:=sqlstr+' and ((workorderno is null) or (workorderno=''''))'
      else sqlstr:=sqlstr+' and workorderno>''''';
    end;
    if frmCarte_Ordprocessing.cxgrid1dbbandedtableview1.DataController.Filter.FilterText>'' then
    sqlstr:=sqlstr+' and '+frmCarte_Ordprocessing.cxgrid1dbbandedtableview1.DataController.Filter.FilterText;
    with adoquery1 do begin
      close;
      sql.text:='exec sp_carte_gentcdetail :x1,:x2';
      parameters[0].Value:=adodataset3.fieldbyname('seq3g').value;//seq1;
      parameters[1].Value:=sqlstr;
      execsql;
    end;
end;

procedure TfrmCarte_Timechange.cxGrid1at3diff_nlrHeaderClick(Sender: TObject);
begin
  if frmCarte_Loc=nil then frmCarte_Loc:=tfrmCarte_Loc.create(nil);
  frmCarte_Loc.label1.caption:='T3';
  frmCarte_Loc.show;
end;

procedure TfrmCarte_Timechange.cxGrid1clos_nlrHeaderClick(Sender: TObject);
begin
  if frmCarte_Loc=nil then frmCarte_Loc:=tfrmCarte_Loc.create(nil);
  frmCarte_Loc.label1.caption:='CL';
  frmCarte_Loc.show;
end;

procedure TfrmCarte_Timechange.cxGrid1ddt_nlrHeaderClick(Sender: TObject);
begin
  if frmCarte_Loc=nil then frmCarte_Loc:=tfrmCarte_Loc.create(nil);
  frmCarte_Loc.label1.caption:='DT';
  frmCarte_Loc.show;
end;

procedure TfrmCarte_Timechange.cxGrid1ex_nlrHeaderClick(Sender: TObject);
begin
  if frmCarte_Loc=nil then frmCarte_Loc:=tfrmCarte_Loc.create(nil);
  frmCarte_Loc.label1.caption:='EX';
  frmCarte_Loc.show;
end;

procedure TfrmCarte_Timechange.cxGrid1fwdt_nlrHeaderClick(Sender: TObject);
begin
  if frmCarte_Loc=nil then frmCarte_Loc:=tfrmCarte_Loc.create(nil);
  frmCarte_Loc.label1.caption:='FW';
  frmCarte_Loc.show;
end;

procedure TfrmCarte_Timechange.cxGrid1m_ddt_nlrHeaderClick(Sender: TObject);
begin
  if frmCarte_Loc=nil then frmCarte_Loc:=tfrmCarte_Loc.create(nil);
  frmCarte_Loc.label1.caption:='MDT';
  frmCarte_Loc.show;
end;

procedure TfrmCarte_Timechange.cxGrid1shpm_nlrHeaderClick(Sender: TObject);
begin
  if frmCarte_Loc=nil then frmCarte_Loc:=tfrmCarte_Loc.create(nil);
  frmCarte_Loc.label1.caption:='SHP';
  frmCarte_Loc.show;
end;

procedure TfrmCarte_Timechange.cxGrid1sp_nlrHeaderClick(Sender: TObject);
begin
  if frmCarte_Loc=nil then frmCarte_Loc:=tfrmCarte_Loc.create(nil);
  frmCarte_Loc.label1.caption:='SP';
  frmCarte_Loc.show;
end;

procedure TfrmCarte_Timechange.DataSource3DataChange(Sender: TObject;
  Field: TField);
begin
  if adodataset3.state=dsbrowse then begin
    if not adodataset3.fieldbyname('seq3g').isnull then begin
      with adoquery1 do begin
        close;
        sql.text:='exec sp_carte_gentcdetail '+adodataset3.fieldbyname('seq3g').asstring+',''''';
        execsql;
      end;
    end;
    with adodataset1 do begin
      close;
      //parameters.clear;
      commandtext:='select * from tbl_carte_sopc2_tc where seq3g=:x1';
      parameters[0].value:=adodataset3.fieldbyname('seq3g').value;
      open;
    end;
  end;
end;

procedure TfrmCarte_Timechange.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  frmCarte_Timechange:=nil;
end;

procedure TfrmCarte_Timechange.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  seq3g:integer;
begin
 if (adodataset3.State=dsinsert) or (adodataset3.State=dsedit) then begin
   seq3g:=adodataset3.FieldByName('seq3g').Value;
   if application.MessageBox('有資料未保存,是否放棄?','確定',mb_iconquestion+mb_yesno)=idno then canclose:=false
   else if (adodataset3.state=dsinsert) then begin
     with adoquery1 do begin
       close;
       sql.Text:='delete from tbl_carte_sopc2_tc where seq3g='+inttostr(seq3g);
       //parameters[0].Value:=seq3g;
       execsql;
     end;
   end;
 end;
end;

procedure TfrmCarte_Timechange.ppDetailBand1BeforePrint(Sender: TObject);
begin
  b_o.caption:=''; b_rq.caption:='- -'; b_rq1.caption:='- -'; b_r.caption:='- -';
  c_o.caption:=''; l1_rq.caption:='- -'; l1_rq1.caption:='- -'; l1_r.caption:='- -';
  l2_rq.caption:='- -'; l2_rq1.caption:='- -'; l2_r.caption:='- -';
  c_rq.caption:='- -'; c_rq1.caption:='- -'; c_r.caption:='- -';
  e_o.caption:=''; e_rq.caption:='- -'; e_rq1.caption:='- -'; e_r.caption:='- -';
  cl_rq.caption:='- -'; cl_rq1.caption:='- -'; cl_r.caption:='- -';
  f_o.caption:=''; f_rq.caption:='- -'; f_r.caption:='- -';
  t_o.caption:=''; t_rq.caption:='- -'; t_rq1.caption:='- -'; t_r.caption:='- -';
  if not adodataset2.fieldbyname('sp_appdt_o').isnull then begin
    if not adodataset2.fieldbyname('sp_rx').isnull then
    b_o.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('sp_appdt_o').value)+adodataset2.fieldbyname('sp_rx').value
    else b_o.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('sp_appdt_o').value);
  end;

  if not adodataset2.fieldbyname('sp_nlr').isnull then begin
    if adodataset2.fieldbyname('sp_nlr').value='R' then begin
      if not adodataset2.fieldbyname('sp_appdt_rq').isnull then
      b_rq.caption:=adodataset2.fieldbyname('sp_appdt_rq').asstring
      else b_rq.caption:='';
      if not adodataset2.fieldbyname('sp_appdt_rq1').isnull then
      b_rq1.caption:=adodataset2.fieldbyname('sp_appdt_rq1').asstring
      else b_rq1.caption:='';
      if not adodataset2.fieldbyname('sp_appdt_r').isnull then
      b_r.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('sp_appdt_r').value)
      else b_r.caption:='';
    end;
  end else begin
    b_rq.caption:=''; b_rq1.caption:=''; b_r.caption:='';
  end;
  if not adodataset2.fieldbyname('ddt_nlr').isnull then begin
    if adodataset2.fieldbyname('ddt_nlr').value='R' then begin
      if not adodataset2.fieldbyname('ddt_rq').isnull then
      l1_rq.caption:=adodataset2.fieldbyname('ddt_rq').asstring
      else l1_rq.caption:='';
      if not adodataset2.fieldbyname('ddt_rq1').isnull then
      l1_rq1.caption:=adodataset2.fieldbyname('ddt_rq1').asstring
      else l1_rq1.caption:='';
      if not adodataset2.fieldbyname('ddt0').isnull then
      l1_r.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('ddt0').value)
      else l1_r.caption:='';
    end;
  end else begin
    l1_rq.caption:=''; l1_rq1.caption:=''; l1_r.caption:='';
  end;
  if not adodataset2.fieldbyname('m_ddt_nlr').isnull then begin
    if adodataset2.fieldbyname('m_ddt_nlr').value='R' then begin
      if not adodataset2.fieldbyname('m_ddt_rq').isnull then
      l2_rq.caption:=adodataset2.fieldbyname('m_ddt_rq').asstring
      else l2_rq.caption:='';
      if not adodataset2.fieldbyname('m_ddt_rq1').isnull then
      l2_rq1.caption:=adodataset2.fieldbyname('m_ddt_rq1').asstring
      else l2_rq1.caption:='';
      if not adodataset2.fieldbyname('m_ddt0').isnull then
      l2_r.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('m_ddt0').value)
      else l2_r.caption:='';
    end;
  end else begin
    l2_rq.caption:=''; l2_rq1.caption:=''; l2_r.caption:='';
  end;
  if not adodataset2.fieldbyname('fwdt_o').isnull then begin
    if not adodataset2.fieldbyname('fwdt_rx').isnull then
    c_o.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('fwdt_o').value)+adodataset2.fieldbyname('fwdt_rx').value
    else c_o.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('fwdt_o').value);
  end;
  if not adodataset2.fieldbyname('fwdt_nlr').isnull then begin
    if adodataset2.fieldbyname('fwdt_nlr').value='R' then begin
      if not adodataset2.fieldbyname('fwdt_rq').isnull then
      c_rq.caption:=adodataset2.fieldbyname('fwdt_rq').asstring
      else c_rq.caption:='';
      if not adodataset2.fieldbyname('fwdt_rq1').isnull then
      c_rq1.caption:=adodataset2.fieldbyname('fwdt_rq1').asstring
      else c_rq1.caption:='';
      if not adodataset2.fieldbyname('fwdt_r').isnull then
      c_r.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('fwdt_r').value)
      else c_r.caption:='';
    end;
  end else begin
    c_rq.caption:=''; c_rq1.caption:=''; c_r.caption:='';
  end;
  if not adodataset2.fieldbyname('ex_o').isnull then begin
    if not adodataset2.fieldbyname('ex_rx').isnull then
    e_o.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('ex_o').value)+adodataset2.fieldbyname('ex_rx').value
    else e_o.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('ex_o').value);
  end;
  if not adodataset2.fieldbyname('ex_nlr').isnull then begin
    if adodataset2.fieldbyname('ex_nlr').value='R' then begin
      if not adodataset2.fieldbyname('ex_rq').isnull then
      e_rq.caption:=adodataset2.fieldbyname('ex_rq').asstring
      else e_rq.caption:='';
      if not adodataset2.fieldbyname('ex_rq1').isnull then
      e_rq1.caption:=adodataset2.fieldbyname('ex_rq1').asstring
      else e_rq1.caption:='';
      if not adodataset2.fieldbyname('ex_r').isnull then
      e_r.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('ex_r').value)
      else e_r.caption:='';
    end;
  end else begin
    e_rq.caption:=''; e_rq1.caption:=''; e_r.caption:='';
  end;
  if not adodataset2.fieldbyname('clos_nlr').isnull then begin
    if adodataset2.fieldbyname('clos_nlr').value='R' then begin
      if not adodataset2.fieldbyname('clos_rq').isnull then
      cl_rq.caption:=adodataset2.fieldbyname('clos_rq').asstring
      else cl_rq.caption:='';
      if not adodataset2.fieldbyname('clos_rq1').isnull then begin
        cl_rq1.caption:=adodataset2.fieldbyname('clos_rq1').asstring;
        if not adodataset2.fieldbyname('ex_r').isnull then begin
          if (e_r.caption='- -') or (e_r.caption='') then
          e_r.caption:=formatdatetime('mm/dd',adodataset2.fieldbyname('ex_r').value);
        end;
      end else cl_rq1.caption:='';
      if not adodataset2.fieldbyname('clos_r').isnull then
      cl_r.caption:=adodataset2.fieldbyname('clos_r').asstring
      else cl_r.caption:='';
    end;
  end else begin
    cl_rq.caption:=''; cl_rq1.caption:=''; cl_r.caption:='';
  end;
  if not adodataset2.fieldbyname('lwdiff').isnull then begin
    if not adodataset2.fieldbyname('lwdiff_rx').isnull then
    f_o.caption:=adodataset2.fieldbyname('lwdiff').asstring+adodataset2.fieldbyname('lwdiff_rx').value
    else f_o.caption:=adodataset2.fieldbyname('lwdiff').asstring;
  end;
  if not adodataset2.fieldbyname('lwdiff_rq').isnull then
  f_rq.caption:=adodataset2.fieldbyname('lwdiff_rq').asstring;
  if not adodataset2.fieldbyname('lwdiff_r').isnull then
  f_r.caption:=adodataset2.fieldbyname('lwdiff_r').asstring;
  {
  if not adodataset2.fieldbyname('lwdiff_nlr').isnull then begin
    if adodataset2.fieldbyname('lwdiff_nlr').value='R' then begin
      if not adodataset2.fieldbyname('lwdiff_rq').isnull then
      f_rq.caption:=adodataset2.fieldbyname('lwdiff_rq').asstring
      else f_rq.caption:='';
      if not adodataset2.fieldbyname('lwdiff_r').isnull then
      f_r.caption:=adodataset2.fieldbyname('lwdiff_r').asstring
      else f_r.caption:='';
    end;
  end else begin
    f_rq.caption:=''; f_r.caption:='';
  end;
  }
  if not adodataset2.fieldbyname('at3diff').isnull then begin
    if not adodataset2.fieldbyname('at3diff_rx').isnull then
    t_o.caption:=adodataset2.fieldbyname('at3diff').asstring+adodataset2.fieldbyname('at3diff_rx').value
    else t_o.caption:=adodataset2.fieldbyname('at3diff').asstring;
  end;
  if not adodataset2.fieldbyname('at3diff_nlr').isnull then begin
    if adodataset2.fieldbyname('at3diff_nlr').value='R' then begin
      if not adodataset2.fieldbyname('at3diff_rq').isnull then
      t_rq.caption:=adodataset2.fieldbyname('at3diff_rq').asstring
      else t_rq.caption:='';
      if not adodataset2.fieldbyname('at3diff_rq1').isnull then
      t_rq1.caption:=adodataset2.fieldbyname('at3diff_rq1').asstring
      else t_rq1.caption:='';
      if not adodataset2.fieldbyname('at3diff_r').isnull then
      t_r.caption:=adodataset2.fieldbyname('at3diff_r').asstring
      else t_r.caption:='';
    end;
  end else begin
    t_rq.caption:=''; t_rq1.caption:=''; t_r.caption:='';
  end;
end;

procedure TfrmCarte_Timechange.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure TfrmCarte_Timechange.SpeedButton1Click(Sender: TObject);
begin
  if frmCarte_Itemchoose=nil then frmCarte_Itemchoose:=tfrmCarte_Itemchoose.create(nil);
  frmCarte_Itemchoose.Label1.Caption:='Timechange';
  frmCarte_Itemchoose.show;
end;

end.
