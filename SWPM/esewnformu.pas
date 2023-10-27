unit esewnformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, Grids,
  DBGridEh, StdCtrls, Buttons, DBCtrls, ExtCtrls, GridsEh, ppParameter, Menus;

type
  Tfrmesewn = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    Panel2: TPanel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGridEh1: TDBGridEh;
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    Query3: TClientDataSet;
    Query4: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    fty001: TppLabel;
    ppLabel7: TppLabel;
    line001: TppLabel;
    jno001: TppLabel;
    ppLabel2: TppLabel;
    job001: TppLabel;
    rwo001: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    cstyle001: TppLabel;
    ppLabel12: TppLabel;
    acol001: TppLabel;
    ppLabel13: TppLabel;
    scqty001: TppLabel;
    ppLabel14: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel15: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    fccs001: TppLabel;
    ppLabel22: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppFooterBand1: TppFooterBand;
    ppLabel16: TppLabel;
    fdt001: TppLabel;
    ppLabel17: TppLabel;
    cfksrq001: TppLabel;
    ppLabel18: TppLabel;
    tzlcrq001: TppLabel;
    ppLabel20: TppLabel;
    yqlcrq001: TppLabel;
    ppLabel19: TppLabel;
    xc3001: TppLabel;
    Label9: TLabel;
    Query10: TClientDataSet;
    lbl850: TLabel;
    PopupMenu1: TPopupMenu;
    viewlog1: TMenuItem;
    DBText8: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    DBText9: TDBText;
    Label4: TLabel;
    Label12: TLabel;
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FieldChange(Sender: TField);
    procedure Field1Change(Sender: TField);
    procedure DBGridEh1Columns6EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure viewlog1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmesewn: Tfrmesewn;
  userlog:string;

implementation

uses mainformu, worksheet, zktdformu, achievingformu;

{$R *.dfm}

procedure Tfrmesewn.Query1AfterOpen(DataSet: TDataSet);
begin
  {
  query1.fieldbyname('aq1').onchange:=fieldchange;
  query1.fieldbyname('aq2').onchange:=fieldchange;
  query1.fieldbyname('aq3').onchange:=fieldchange;
  query1.fieldbyname('aq4').onchange:=fieldchange;
  query1.fieldbyname('aq5').onchange:=fieldchange;
  query1.fieldbyname('aq6').onchange:=fieldchange;
  query1.fieldbyname('aq7').onchange:=fieldchange;
  query1.fieldbyname('aq8').onchange:=fieldchange;
  query1.fieldbyname('aq9').onchange:=fieldchange;
  query1.fieldbyname('aq10').onchange:=fieldchange;
  query1.fieldbyname('aq11').onchange:=fieldchange;
  query1.fieldbyname('aq12').onchange:=fieldchange;
  query1.fieldbyname('aq13').onchange:=fieldchange;
  query1.fieldbyname('aq14').onchange:=fieldchange;
  query1.fieldbyname('aq15').onchange:=fieldchange;
  query1.fieldbyname('aq16').onchange:=fieldchange;
  query1.fieldbyname('aq17').onchange:=fieldchange;
  query1.fieldbyname('aq18').onchange:=fieldchange;
  query1.fieldbyname('aq19').onchange:=fieldchange;
  query1.fieldbyname('aq20').onchange:=fieldchange;
  }
  query1.fieldbyname('cq1').onchange:=fieldchange;
  query1.fieldbyname('cq2').onchange:=fieldchange;
  query1.fieldbyname('cq3').onchange:=fieldchange;
  query1.fieldbyname('cq4').onchange:=fieldchange;
  query1.fieldbyname('cq5').onchange:=fieldchange;
  query1.fieldbyname('cq6').onchange:=fieldchange;
  query1.fieldbyname('cq7').onchange:=fieldchange;
  query1.fieldbyname('cq8').onchange:=fieldchange;
  query1.fieldbyname('cq9').onchange:=fieldchange;
  query1.fieldbyname('cq10').onchange:=fieldchange;
  query1.fieldbyname('cq11').onchange:=fieldchange;
  query1.fieldbyname('cq12').onchange:=fieldchange;
  query1.fieldbyname('cq13').onchange:=fieldchange;
  query1.fieldbyname('cq14').onchange:=fieldchange;
  query1.fieldbyname('cq15').onchange:=fieldchange;
  query1.fieldbyname('cq16').onchange:=fieldchange;
  query1.fieldbyname('cq17').onchange:=fieldchange;
  query1.fieldbyname('cq18').onchange:=fieldchange;
  query1.fieldbyname('cq19').onchange:=fieldchange;
  query1.fieldbyname('cq20').onchange:=fieldchange;
  query1.fieldbyname('cq21').onchange:=fieldchange;
  query1.fieldbyname('cq22').onchange:=fieldchange;
  query1.fieldbyname('cq23').onchange:=fieldchange;
  query1.fieldbyname('cq24').onchange:=fieldchange;
  query1.fieldbyname('cq25').onchange:=fieldchange;
  query1.fieldbyname('cq26').onchange:=fieldchange;
  query1.fieldbyname('cq27').onchange:=fieldchange;
  query1.fieldbyname('cq28').onchange:=fieldchange;
  query1.fieldbyname('cq29').onchange:=fieldchange;
  query1.fieldbyname('cq30').onchange:=fieldchange;
  query1.fieldbyname('a101').OnChange:=fieldchange;
  query1.fieldbyname('a102').OnChange:=fieldchange;
  query1.fieldbyname('a103').OnChange:=fieldchange;
  query1.fieldbyname('a201').OnChange:=fieldchange;
  query1.fieldbyname('a202').OnChange:=fieldchange;
  query1.fieldbyname('a203').OnChange:=fieldchange;
  query1.fieldbyname('a301').OnChange:=fieldchange;
  query1.fieldbyname('a302').OnChange:=fieldchange;
  query1.fieldbyname('a303').OnChange:=fieldchange;
  query1.fieldbyname('a401').OnChange:=fieldchange;
  query1.fieldbyname('a402').OnChange:=fieldchange;
  query1.fieldbyname('a403').OnChange:=fieldchange;
  query1.fieldbyname('a501').OnChange:=fieldchange;
  query1.fieldbyname('a502').OnChange:=fieldchange;
  query1.fieldbyname('a503').OnChange:=fieldchange;
  query1.fieldbyname('a601').OnChange:=fieldchange;
  query1.fieldbyname('a602').OnChange:=fieldchange;
  query1.fieldbyname('a603').OnChange:=fieldchange;
  query1.fieldbyname('a701').OnChange:=fieldchange;
  query1.fieldbyname('a702').OnChange:=fieldchange;
  query1.fieldbyname('a703').OnChange:=fieldchange;
  query1.fieldbyname('a801').OnChange:=fieldchange;
  query1.fieldbyname('a802').OnChange:=fieldchange;
  query1.fieldbyname('a803').OnChange:=fieldchange;
  query1.fieldbyname('a901').OnChange:=fieldchange;
  query1.fieldbyname('a902').OnChange:=fieldchange;
  query1.fieldbyname('a903').OnChange:=fieldchange;
  query1.fieldbyname('a1001').OnChange:=fieldchange;
  query1.fieldbyname('a1002').OnChange:=fieldchange;
  query1.fieldbyname('a1003').OnChange:=fieldchange;
  query1.fieldbyname('a1101').OnChange:=fieldchange;
  query1.fieldbyname('a1102').OnChange:=fieldchange;
  query1.fieldbyname('a1103').OnChange:=fieldchange;
  query1.fieldbyname('a1201').OnChange:=fieldchange;
  query1.fieldbyname('a1202').OnChange:=fieldchange;
  query1.fieldbyname('a1203').OnChange:=fieldchange;
  query1.fieldbyname('a1301').OnChange:=fieldchange;
  query1.fieldbyname('a1302').OnChange:=fieldchange;
  query1.fieldbyname('a1303').OnChange:=fieldchange;
  query1.fieldbyname('a1401').OnChange:=fieldchange;
  query1.fieldbyname('a1402').OnChange:=fieldchange;
  query1.fieldbyname('a1403').OnChange:=fieldchange;
  query1.fieldbyname('a1501').OnChange:=fieldchange;
  query1.fieldbyname('a1502').OnChange:=fieldchange;
  query1.fieldbyname('a1503').OnChange:=fieldchange;
  query1.fieldbyname('a1601').OnChange:=fieldchange;
  query1.fieldbyname('a1602').OnChange:=fieldchange;
  query1.fieldbyname('a1603').OnChange:=fieldchange;
  query1.fieldbyname('a1701').OnChange:=fieldchange;
  query1.fieldbyname('a1702').OnChange:=fieldchange;
  query1.fieldbyname('a1703').OnChange:=fieldchange;
  query1.fieldbyname('a1801').OnChange:=fieldchange;
  query1.fieldbyname('a1802').OnChange:=fieldchange;
  query1.fieldbyname('a1803').OnChange:=fieldchange;
  query1.fieldbyname('a1901').OnChange:=fieldchange;
  query1.fieldbyname('a1902').OnChange:=fieldchange;
  query1.fieldbyname('a1903').OnChange:=fieldchange;
  query1.fieldbyname('a2001').OnChange:=fieldchange;
  query1.fieldbyname('a2002').OnChange:=fieldchange;
  query1.fieldbyname('a2003').OnChange:=fieldchange;
  query1.fieldbyname('a2101').OnChange:=fieldchange;
  query1.fieldbyname('a2102').OnChange:=fieldchange;
  query1.fieldbyname('a2103').OnChange:=fieldchange;
  query1.fieldbyname('a2201').OnChange:=fieldchange;
  query1.fieldbyname('a2202').OnChange:=fieldchange;
  query1.fieldbyname('a2203').OnChange:=fieldchange;
  query1.fieldbyname('a2301').OnChange:=fieldchange;
  query1.fieldbyname('a2302').OnChange:=fieldchange;
  query1.fieldbyname('a2303').OnChange:=fieldchange;
  query1.fieldbyname('a2401').OnChange:=fieldchange;
  query1.fieldbyname('a2402').OnChange:=fieldchange;
  query1.fieldbyname('a2403').OnChange:=fieldchange;
  query1.fieldbyname('a2501').OnChange:=fieldchange;
  query1.fieldbyname('a2502').OnChange:=fieldchange;
  query1.fieldbyname('a2503').OnChange:=fieldchange;
  query1.fieldbyname('a2601').OnChange:=fieldchange;
  query1.fieldbyname('a2602').OnChange:=fieldchange;
  query1.fieldbyname('a2603').OnChange:=fieldchange;
  query1.fieldbyname('a2701').OnChange:=fieldchange;
  query1.fieldbyname('a2702').OnChange:=fieldchange;
  query1.fieldbyname('a2703').OnChange:=fieldchange;
  query1.fieldbyname('a2801').OnChange:=fieldchange;
  query1.fieldbyname('a2802').OnChange:=fieldchange;
  query1.fieldbyname('a2803').OnChange:=fieldchange;
  query1.fieldbyname('a2901').OnChange:=fieldchange;
  query1.fieldbyname('a2902').OnChange:=fieldchange;
  query1.fieldbyname('a2903').OnChange:=fieldchange;
  query1.fieldbyname('a3001').OnChange:=fieldchange;
  query1.fieldbyname('a3002').OnChange:=fieldchange;
  query1.fieldbyname('a3003').OnChange:=fieldchange;
  query1.fieldbyname('cmps').OnChange:=field1change;
end;

procedure Tfrmesewn.Query1AfterPost(DataSet: TDataSet);
var
  pstr:string;
  str1:string;
  dseq:integer;
begin
  {
  if query1.ApplyUpdates(-1)>0 then begin
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftinteger,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftinteger,'x4',ptinput);
      params.createparam(ftinteger,'x5',ptinput);
      params.createparam(ftinteger,'x6',ptinput);
      params.createparam(ftinteger,'x7',ptinput);
      params.createparam(ftinteger,'x8',ptinput);
      params.createparam(ftinteger,'x9',ptinput);
      params.createparam(ftinteger,'x10',ptinput);
      params.createparam(ftinteger,'x11',ptinput);
      params.createparam(ftinteger,'x12',ptinput);
      params.createparam(ftinteger,'x13',ptinput);
      params.createparam(ftinteger,'x14',ptinput);
      params.createparam(ftinteger,'x15',ptinput);
      params.createparam(ftinteger,'x16',ptinput);
      params.createparam(ftinteger,'x17',ptinput);
      params.createparam(ftinteger,'x18',ptinput);
      params.createparam(ftinteger,'x19',ptinput);
      params.createparam(ftinteger,'x20',ptinput);
      params.createparam(ftinteger,'x21',ptinput);
      params.createparam(ftinteger,'x22',ptinput);
      params.createparam(ftinteger,'x23',ptinput);
      params.createparam(ftinteger,'x24',ptinput);
      params.createparam(ftinteger,'x25',ptinput);
      params.createparam(ftinteger,'x26',ptinput);
      params.createparam(ftinteger,'x27',ptinput);
      params.createparam(ftinteger,'x28',ptinput);
      params.createparam(ftinteger,'x29',ptinput);
      params.createparam(ftinteger,'x30',ptinput);
      params.createparam(ftinteger,'x31',ptinput);
      params.createparam(ftinteger,'x32',ptinput);
      params.createparam(ftinteger,'x33',ptinput);
      params.createparam(ftinteger,'x34',ptinput);
      params.createparam(ftinteger,'x35',ptinput);
      params.createparam(ftinteger,'x36',ptinput);
      params.createparam(ftinteger,'x37',ptinput);
      params.createparam(ftinteger,'x38',ptinput);
      params.createparam(ftinteger,'x39',ptinput);
      params.createparam(ftinteger,'x40',ptinput);
      params.createparam(ftinteger,'x41',ptinput);
      params.createparam(ftinteger,'x42',ptinput);
      params.createparam(ftinteger,'x43',ptinput);
      params.createparam(ftboolean,'x51',ptinput);

      params.createparam(ftinteger,'x52',ptinput);
      params.createparam(ftinteger,'x53',ptinput);
      params.createparam(ftinteger,'x54',ptinput);
      params.createparam(ftinteger,'x55',ptinput);
      params.createparam(ftinteger,'x56',ptinput);
      params.createparam(ftinteger,'x57',ptinput);
      params.createparam(ftinteger,'x58',ptinput);
      params.createparam(ftinteger,'x59',ptinput);
      params.createparam(ftinteger,'x60',ptinput);
      params.createparam(ftinteger,'x61',ptinput);
      params.createparam(ftinteger,'x62',ptinput);
      params.createparam(ftinteger,'x63',ptinput);
      params.createparam(ftinteger,'x64',ptinput);
      params.createparam(ftinteger,'x65',ptinput);
      params.createparam(ftinteger,'x66',ptinput);
      params.createparam(ftinteger,'x67',ptinput);
      params.createparam(ftinteger,'x68',ptinput);
      params.createparam(ftinteger,'x69',ptinput);
      params.createparam(ftinteger,'x70',ptinput);
      params.createparam(ftinteger,'x71',ptinput);
      params.createparam(ftinteger,'x72',ptinput);
      params.createparam(ftinteger,'x73',ptinput);
      params.createparam(ftinteger,'x74',ptinput);
      params.createparam(ftinteger,'x75',ptinput);
      params.createparam(ftinteger,'x76',ptinput);
      params.createparam(ftinteger,'x77',ptinput);
      params.createparam(ftinteger,'x78',ptinput);
      params.createparam(ftinteger,'x79',ptinput);
      params.createparam(ftinteger,'x80',ptinput);
      params.createparam(ftinteger,'x81',ptinput);
      params.createparam(ftinteger,'x82',ptinput);
      params.createparam(ftinteger,'x83',ptinput);
      params.createparam(ftinteger,'x84',ptinput);
      params.createparam(ftinteger,'x85',ptinput);
      params.createparam(ftinteger,'x86',ptinput);
      params.createparam(ftinteger,'x87',ptinput);
      params.createparam(ftinteger,'x88',ptinput);
      params.createparam(ftinteger,'x89',ptinput);
      params.createparam(ftinteger,'x90',ptinput);
      params.createparam(ftinteger,'x91',ptinput);
      params.createparam(ftinteger,'x92',ptinput);
      params.createparam(ftinteger,'x93',ptinput);
      params.createparam(ftinteger,'x94',ptinput);
      params.createparam(ftinteger,'x95',ptinput);
      params.createparam(ftinteger,'x96',ptinput);
      params.createparam(ftinteger,'x97',ptinput);
      params.createparam(ftinteger,'x98',ptinput);
      params.createparam(ftinteger,'x99',ptinput);
      params.createparam(ftinteger,'x100',ptinput);
      params.createparam(ftinteger,'x101',ptinput);
      params.createparam(ftinteger,'x102',ptinput);
      params.createparam(ftinteger,'x103',ptinput);
      params.createparam(ftinteger,'x104',ptinput);
      params.createparam(ftinteger,'x105',ptinput);
      params.createparam(ftinteger,'x106',ptinput);
      params.createparam(ftinteger,'x107',ptinput);
      params.createparam(ftinteger,'x108',ptinput);
      params.createparam(ftinteger,'x109',ptinput);
      params.createparam(ftinteger,'x110',ptinput);
      params.createparam(ftinteger,'x111',ptinput);

      params.createparam(ftstring,'x44',ptinput);
      params.createparam(ftinteger,'x45',ptinput);
      params.createparam(ftstring,'x46',ptinput);
      params.createparam(ftstring,'x47',ptinput);
      params.createparam(ftstring,'x48',ptinput);
      params.createparam(ftstring,'x49',ptinput);
      params.createparam(ftinteger,'x50',ptinput);
      if lbl850.Caption='SPE' then
      commandtext:='update tbl_lwo_sew_sp set aq1=:x1,aq2=:x2,aq3=:x3,aq4=:x4,aq5=:x5,aq6=:x6,aq7=:x7,aq8=:x8,aq9=:x9,aq10=:x10,aq11=:x11,'
                  +'aq12=:x12,aq13=:x13,aq14=:x14,aq15=:x15,aq16=:x16,aq17=:x17,aq18=:x18,aq19=:x19,aq20=:x20,cq1=:x21,cq2=:x22,cq3=:x23,'
                  +'cq4=:x24,cq5=:x25,cq6=:x26,cq7=:x27,cq8=:x28,cq9=:x29,cq10=:x30,cq11=:x31,cq12=:x32,cq13=:x33,cq14=:x34,cq15=:x35,'
                  +'cq16=:x36,cq17=:x37,cq18=:x38,cq19=:x39,cq20=:x40,tsqty=:x41,taqty=:x42,tcqty=:x43,cmps=:x51,'
                  +'a101=:x52,a102=:x53,a103=:x54,a201=:x55,a202=:x56,a203=:x57,a301=:x58,a302=:x59,a303=:x60,a401=:x61,'
                  +'a402=:x62,a403=:x63,a501=:x64,a502=:x65,a503=:x66,a601=:x67,a602=:x68,a603=:x69,a701=:x70,a702=:x71,'
                  +'a703=:x72,a801=:x73,a802=:x74,a803=:x75,a901=:x76,a902=:x77,a903=:x78,a1001=:x79,a1002=:x80,a1003=:x81,'
                  +'a1101=:x82,a1102=:x583,a1103=:x84,a1201=:x85,a1202=:x86,a1203=:x87,a1301=:x88,a1302=:x89,a1303=:x90,a1401=:x91,'
                  +'a1402=:x92,a1403=:x93,a1501=:x94,a1502=:x95,a1503=:x96,a1601=:x97,a1602=:x98,a1603=:x99,a1701=:x100,a1702=:x101,'
                  +'a1703=:x102,a1801=:x103,a1802=:x104,a1803=:x105,a1901=:x106,a1902=:x107,a1903=:x108,a2001=:x109,a2002=:x110,a2003=:x111 '
                  +'where pline=:x44 and seq=:x45 '
                  +'and j_no=:x46 and j2_job=:x47 and rwo=:x48 and acol=:x49 and did=:x50'
      else
      commandtext:='update tbl_lwo_sew set aq1=:x1,aq2=:x2,aq3=:x3,aq4=:x4,aq5=:x5,aq6=:x6,aq7=:x7,aq8=:x8,aq9=:x9,aq10=:x10,aq11=:x11,'
                  +'aq12=:x12,aq13=:x13,aq14=:x14,aq15=:x15,aq16=:x16,aq17=:x17,aq18=:x18,aq19=:x19,aq20=:x20,cq1=:x21,cq2=:x22,cq3=:x23,'
                  +'cq4=:x24,cq5=:x25,cq6=:x26,cq7=:x27,cq8=:x28,cq9=:x29,cq10=:x30,cq11=:x31,cq12=:x32,cq13=:x33,cq14=:x34,cq15=:x35,'
                  +'cq16=:x36,cq17=:x37,cq18=:x38,cq19=:x39,cq20=:x40,tsqty=:x41,taqty=:x42,tcqty=:x43,cmps=:x51,'
                  +'a101=:x52,a102=:x53,a103=:x54,a201=:x55,a202=:x56,a203=:x57,a301=:x58,a302=:x59,a303=:x60,a401=:x61,'
                  +'a402=:x62,a403=:x63,a501=:x64,a502=:x65,a503=:x66,a601=:x67,a602=:x68,a603=:x69,a701=:x70,a702=:x71,'
                  +'a703=:x72,a801=:x73,a802=:x74,a803=:x75,a901=:x76,a902=:x77,a903=:x78,a1001=:x79,a1002=:x80,a1003=:x81,'
                  +'a1101=:x82,a1102=:x583,a1103=:x84,a1201=:x85,a1202=:x86,a1203=:x87,a1301=:x88,a1302=:x89,a1303=:x90,a1401=:x91,'
                  +'a1402=:x92,a1403=:x93,a1501=:x94,a1502=:x95,a1503=:x96,a1601=:x97,a1602=:x98,a1603=:x99,a1701=:x100,a1702=:x101,'
                  +'a1703=:x102,a1801=:x103,a1802=:x104,a1803=:x105,a1901=:x106,a1902=:x107,a1903=:x108,a2001=:x109,a2002=:x110,a2003=:x111 '
                  +'where pline=:x44 and seq=:x45 '
                  +'and j_no=:x46 and j2_job=:x47 and rwo=:x48 and acol=:x49 and did=:x50';

      if not query1.fieldbyname('aq1').isnull then params[0].asinteger:=query1.fieldbyname('aq1').value else params[0].AsInteger:=0;
      if not query1.fieldbyname('aq2').isnull then params[1].asinteger:=query1.fieldbyname('aq2').value else params[1].AsInteger:=0;
      if not query1.fieldbyname('aq3').isnull then params[2].asinteger:=query1.fieldbyname('aq3').value else params[2].AsInteger:=0;
      if not query1.fieldbyname('aq4').isnull then params[3].asinteger:=query1.fieldbyname('aq4').value else params[3].AsInteger:=0;
      if not query1.fieldbyname('aq5').isnull then params[4].asinteger:=query1.fieldbyname('aq5').value else params[4].AsInteger:=0;
      if not query1.fieldbyname('aq6').isnull then params[5].asinteger:=query1.fieldbyname('aq6').value else params[5].AsInteger:=0;
      if not query1.fieldbyname('aq7').isnull then params[6].asinteger:=query1.fieldbyname('aq7').value else params[6].AsInteger:=0;
      if not query1.fieldbyname('aq8').isnull then params[7].asinteger:=query1.fieldbyname('aq8').value else params[7].AsInteger:=0;
      if not query1.fieldbyname('aq9').isnull then params[8].asinteger:=query1.fieldbyname('aq9').value else params[8].AsInteger:=0;
      if not query1.fieldbyname('aq10').isnull then params[9].asinteger:=query1.fieldbyname('aq10').value else params[9].AsInteger:=0;
      if not query1.fieldbyname('aq11').isnull then params[10].asinteger:=query1.fieldbyname('aq11').value else params[10].AsInteger:=0;
      if not query1.fieldbyname('aq12').isnull then params[11].asinteger:=query1.fieldbyname('aq12').value else params[11].AsInteger:=0;
      if not query1.fieldbyname('aq13').isnull then params[12].asinteger:=query1.fieldbyname('aq13').value else params[12].AsInteger:=0;
      if not query1.fieldbyname('aq14').isnull then params[13].asinteger:=query1.fieldbyname('aq14').value else params[13].AsInteger:=0;
      if not query1.fieldbyname('aq15').isnull then params[14].asinteger:=query1.fieldbyname('aq15').value else params[14].AsInteger:=0;
      if not query1.fieldbyname('aq16').isnull then params[15].asinteger:=query1.fieldbyname('aq16').value else params[15].AsInteger:=0;
      if not query1.fieldbyname('aq17').isnull then params[16].asinteger:=query1.fieldbyname('aq17').value else params[16].AsInteger:=0;
      if not query1.fieldbyname('aq18').isnull then params[17].asinteger:=query1.fieldbyname('aq18').value else params[17].AsInteger:=0;
      if not query1.fieldbyname('aq19').isnull then params[18].asinteger:=query1.fieldbyname('aq19').value else params[18].AsInteger:=0;
      if not query1.fieldbyname('aq20').isnull then params[19].asinteger:=query1.fieldbyname('aq20').value else params[19].AsInteger:=0;
      if not query1.fieldbyname('cq1').isnull then params[20].asinteger:=query1.fieldbyname('cq1').value else params[20].AsInteger:=0;
      if not query1.fieldbyname('cq2').isnull then params[21].asinteger:=query1.fieldbyname('cq2').value else params[21].AsInteger:=0;
      if not query1.fieldbyname('cq3').isnull then params[22].asinteger:=query1.fieldbyname('cq3').value else params[22].AsInteger:=0;
      if not query1.fieldbyname('cq4').isnull then params[23].asinteger:=query1.fieldbyname('cq4').value else params[23].AsInteger:=0;
      if not query1.fieldbyname('cq5').isnull then params[24].asinteger:=query1.fieldbyname('cq5').value else params[24].AsInteger:=0;
      if not query1.fieldbyname('cq6').isnull then params[25].asinteger:=query1.fieldbyname('cq6').value else params[25].AsInteger:=0;
      if not query1.fieldbyname('cq7').isnull then params[26].asinteger:=query1.fieldbyname('cq7').value else params[26].AsInteger:=0;
      if not query1.fieldbyname('cq8').isnull then params[27].asinteger:=query1.fieldbyname('cq8').value else params[27].AsInteger:=0;
      if not query1.fieldbyname('cq9').isnull then params[28].asinteger:=query1.fieldbyname('cq9').value else params[28].AsInteger:=0;
      if not query1.fieldbyname('cq10').isnull then params[29].asinteger:=query1.fieldbyname('cq10').value else params[29].AsInteger:=0;
      if not query1.fieldbyname('cq11').isnull then params[30].asinteger:=query1.fieldbyname('cq11').value else params[30].AsInteger:=0;
      if not query1.fieldbyname('cq12').isnull then params[31].asinteger:=query1.fieldbyname('cq12').value else params[31].AsInteger:=0;
      if not query1.fieldbyname('cq13').isnull then params[32].asinteger:=query1.fieldbyname('cq13').value else params[32].AsInteger:=0;
      if not query1.fieldbyname('cq14').isnull then params[33].asinteger:=query1.fieldbyname('cq14').value else params[33].AsInteger:=0;
      if not query1.fieldbyname('cq15').isnull then params[34].asinteger:=query1.fieldbyname('cq15').value else params[34].AsInteger:=0;
      if not query1.fieldbyname('cq16').isnull then params[35].asinteger:=query1.fieldbyname('cq16').value else params[35].AsInteger:=0;
      if not query1.fieldbyname('cq17').isnull then params[36].asinteger:=query1.fieldbyname('cq17').value else params[36].AsInteger:=0;
      if not query1.fieldbyname('cq18').isnull then params[37].asinteger:=query1.fieldbyname('cq18').value else params[37].AsInteger:=0;
      if not query1.fieldbyname('cq19').isnull then params[38].asinteger:=query1.fieldbyname('cq19').value else params[38].AsInteger:=0;
      if not query1.fieldbyname('cq20').isnull then params[39].asinteger:=query1.fieldbyname('cq20').value else params[39].AsInteger:=0;
      params[40].asinteger:=query1.fieldbyname('tsqty').value;
      params[41].asinteger:=query1.fieldbyname('taqty').value;
      params[42].asinteger:=query1.fieldbyname('tcqty').value;
      if not query1.fieldbyname('cmps').isnull then params[43].asboolean:=query1.fieldbyname('cmps').value else params[43].asboolean:=false;
      if not query1.fieldbyname('a101').isnull then params[44].asinteger:=query1.fieldbyname('a101').value else params[44].asinteger:=0;
      if not query1.fieldbyname('a102').isnull then params[45].asinteger:=query1.fieldbyname('a102').value else params[45].asinteger:=0;
      if not query1.fieldbyname('a103').isnull then params[46].asinteger:=query1.fieldbyname('a103').value else params[46].asinteger:=0;
      if not query1.fieldbyname('a201').isnull then params[47].asinteger:=query1.fieldbyname('a201').value else params[47].asinteger:=0;
      if not query1.fieldbyname('a202').isnull then params[48].asinteger:=query1.fieldbyname('a202').value else params[48].asinteger:=0;
      if not query1.fieldbyname('a203').isnull then params[49].asinteger:=query1.fieldbyname('a203').value else params[49].asinteger:=0;
      if not query1.fieldbyname('a301').isnull then params[50].asinteger:=query1.fieldbyname('a301').value else params[50].asinteger:=0;
      if not query1.fieldbyname('a302').isnull then params[51].asinteger:=query1.fieldbyname('a302').value else params[51].asinteger:=0;
      if not query1.fieldbyname('a303').isnull then params[52].asinteger:=query1.fieldbyname('a303').value else params[52].asinteger:=0;
      if not query1.fieldbyname('a401').isnull then params[53].asinteger:=query1.fieldbyname('a401').value else params[53].asinteger:=0;
      if not query1.fieldbyname('a402').isnull then params[54].asinteger:=query1.fieldbyname('a402').value else params[54].asinteger:=0;
      if not query1.fieldbyname('a403').isnull then params[55].asinteger:=query1.fieldbyname('a403').value else params[55].asinteger:=0;
      if not query1.fieldbyname('a501').isnull then params[56].asinteger:=query1.fieldbyname('a501').value else params[56].asinteger:=0;
      if not query1.fieldbyname('a502').isnull then params[57].asinteger:=query1.fieldbyname('a502').value else params[57].asinteger:=0;
      if not query1.fieldbyname('a503').isnull then params[58].asinteger:=query1.fieldbyname('a503').value else params[58].asinteger:=0;
      if not query1.fieldbyname('a601').isnull then params[59].asinteger:=query1.fieldbyname('a601').value else params[59].asinteger:=0;
      if not query1.fieldbyname('a602').isnull then params[60].asinteger:=query1.fieldbyname('a602').value else params[60].asinteger:=0;
      if not query1.fieldbyname('a603').isnull then params[61].asinteger:=query1.fieldbyname('a603').value else params[61].asinteger:=0;
      if not query1.fieldbyname('a701').isnull then params[62].asinteger:=query1.fieldbyname('a701').value else params[62].asinteger:=0;
      if not query1.fieldbyname('a702').isnull then params[63].asinteger:=query1.fieldbyname('a702').value else params[63].asinteger:=0;
      if not query1.fieldbyname('a703').isnull then params[64].asinteger:=query1.fieldbyname('a703').value else params[64].asinteger:=0;
      if not query1.fieldbyname('a801').isnull then params[65].asinteger:=query1.fieldbyname('a801').value else params[65].asinteger:=0;
      if not query1.fieldbyname('a802').isnull then params[66].asinteger:=query1.fieldbyname('a802').value else params[66].asinteger:=0;
      if not query1.fieldbyname('a803').isnull then params[67].asinteger:=query1.fieldbyname('a803').value else params[67].asinteger:=0;
      if not query1.fieldbyname('a901').isnull then params[68].asinteger:=query1.fieldbyname('a901').value else params[68].asinteger:=0;
      if not query1.fieldbyname('a902').isnull then params[69].asinteger:=query1.fieldbyname('a902').value else params[69].asinteger:=0;
      if not query1.fieldbyname('a903').isnull then params[70].asinteger:=query1.fieldbyname('a903').value else params[70].asinteger:=0;
      if not query1.fieldbyname('a1001').isnull then params[71].asinteger:=query1.fieldbyname('a1001').value else params[71].asinteger:=0;
      if not query1.fieldbyname('a1002').isnull then params[72].asinteger:=query1.fieldbyname('a1002').value else params[72].asinteger:=0;
      if not query1.fieldbyname('a1003').isnull then params[73].asinteger:=query1.fieldbyname('a1003').value else params[73].asinteger:=0;
      if not query1.fieldbyname('a1101').isnull then params[74].asinteger:=query1.fieldbyname('a1101').value else params[74].asinteger:=0;
      if not query1.fieldbyname('a1102').isnull then params[75].asinteger:=query1.fieldbyname('a1102').value else params[75].asinteger:=0;
      if not query1.fieldbyname('a1103').isnull then params[76].asinteger:=query1.fieldbyname('a1103').value else params[76].asinteger:=0;
      if not query1.fieldbyname('a1201').isnull then params[77].asinteger:=query1.fieldbyname('a1201').value else params[77].asinteger:=0;
      if not query1.fieldbyname('a1202').isnull then params[78].asinteger:=query1.fieldbyname('a1202').value else params[78].asinteger:=0;
      if not query1.fieldbyname('a1203').isnull then params[79].asinteger:=query1.fieldbyname('a1203').value else params[79].asinteger:=0;
      if not query1.fieldbyname('a1301').isnull then params[80].asinteger:=query1.fieldbyname('a1301').value else params[70].asinteger:=0;
      if not query1.fieldbyname('a1302').isnull then params[81].asinteger:=query1.fieldbyname('a1302').value else params[81].asinteger:=0;
      if not query1.fieldbyname('a1303').isnull then params[82].asinteger:=query1.fieldbyname('a1303').value else params[82].asinteger:=0;
      if not query1.fieldbyname('a1401').isnull then params[83].asinteger:=query1.fieldbyname('a1401').value else params[83].asinteger:=0;
      if not query1.fieldbyname('a1402').isnull then params[84].asinteger:=query1.fieldbyname('a1402').value else params[84].asinteger:=0;
      if not query1.fieldbyname('a1403').isnull then params[85].asinteger:=query1.fieldbyname('a1403').value else params[85].asinteger:=0;
      if not query1.fieldbyname('a1501').isnull then params[86].asinteger:=query1.fieldbyname('a1501').value else params[86].asinteger:=0;
      if not query1.fieldbyname('a1502').isnull then params[87].asinteger:=query1.fieldbyname('a1502').value else params[87].asinteger:=0;
      if not query1.fieldbyname('a1503').isnull then params[88].asinteger:=query1.fieldbyname('a1503').value else params[88].asinteger:=0;
      if not query1.fieldbyname('a1601').isnull then params[89].asinteger:=query1.fieldbyname('a1601').value else params[89].asinteger:=0;
      if not query1.fieldbyname('a1602').isnull then params[90].asinteger:=query1.fieldbyname('a1602').value else params[90].asinteger:=0;
      if not query1.fieldbyname('a1603').isnull then params[91].asinteger:=query1.fieldbyname('a1603').value else params[91].asinteger:=0;
      if not query1.fieldbyname('a1701').isnull then params[92].asinteger:=query1.fieldbyname('a1701').value else params[92].asinteger:=0;
      if not query1.fieldbyname('a1702').isnull then params[93].asinteger:=query1.fieldbyname('a1702').value else params[93].asinteger:=0;
      if not query1.fieldbyname('a1703').isnull then params[94].asinteger:=query1.fieldbyname('a1703').value else params[94].asinteger:=0;
      if not query1.fieldbyname('a1801').isnull then params[95].asinteger:=query1.fieldbyname('a1801').value else params[95].asinteger:=0;
      if not query1.fieldbyname('a1802').isnull then params[96].asinteger:=query1.fieldbyname('a1802').value else params[96].asinteger:=0;
      if not query1.fieldbyname('a1803').isnull then params[97].asinteger:=query1.fieldbyname('a1803').value else params[97].asinteger:=0;
      if not query1.fieldbyname('a1901').isnull then params[98].asinteger:=query1.fieldbyname('a1901').value else params[98].asinteger:=0;
      if not query1.fieldbyname('a1902').isnull then params[99].asinteger:=query1.fieldbyname('a1902').value else params[99].asinteger:=0;
      if not query1.fieldbyname('a1903').isnull then params[100].asinteger:=query1.fieldbyname('a1903').value else params[100].asinteger:=0;
      if not query1.fieldbyname('a2001').isnull then params[101].asinteger:=query1.fieldbyname('a2001').value else params[101].asinteger:=0;
      if not query1.fieldbyname('a2002').isnull then params[102].asinteger:=query1.fieldbyname('a2002').value else params[102].asinteger:=0;
      if not query1.fieldbyname('a2003').isnull then params[103].asinteger:=query1.fieldbyname('a2003').value else params[103].asinteger:=0;
      params[104].asstring:=query1.fieldbyname('pline').value;
      params[105].asinteger:=query1.fieldbyname('seq').value;
      params[106].asstring:=query1.fieldbyname('j_no').value;
      params[107].asstring:=query1.fieldbyname('j2_job').value;
      params[108].asstring:=query1.fieldbyname('rwo').value;
      params[109].asstring:=query1.fieldbyname('acol').value;
      params[110].asinteger:=query1.fieldbyname('did').value;
      execute;
    end;
  end;
  }
      if lbl850.Caption='SPE' then str1:='update tbl_lwo_sew_sp set '
      else str1:='update tbl_lwo_sew set ';
      if not query1.fieldbyname('aq1').isnull then
      str1:=str1+'aq1='+query1.fieldbyname('aq1').asstring+','
      else str1:=str1+'aq1=0,';
      if not query1.fieldbyname('aq2').isnull then
      str1:=str1+'aq2='+query1.fieldbyname('aq2').asstring+','
      else str1:=str1+'aq2=0,';
      if not query1.fieldbyname('aq3').isnull then
      str1:=str1+'aq3='+query1.fieldbyname('aq3').asstring+','
      else str1:=str1+'aq3=0,';
      if not query1.fieldbyname('aq4').isnull then
      str1:=str1+'aq4='+query1.fieldbyname('aq4').asstring+','
      else str1:=str1+'aq4=0,';
      if not query1.fieldbyname('aq5').isnull then
      str1:=str1+'aq5='+query1.fieldbyname('aq5').asstring+','
      else str1:=str1+'aq5=0,';
      if not query1.fieldbyname('aq6').isnull then
      str1:=str1+'aq6='+query1.fieldbyname('aq6').asstring+','
      else str1:=str1+'aq6=0,';
      if not query1.fieldbyname('aq7').isnull then
      str1:=str1+'aq7='+query1.fieldbyname('aq7').asstring+','
      else str1:=str1+'aq7=0,';
      if not query1.fieldbyname('aq8').isnull then
      str1:=str1+'aq8='+query1.fieldbyname('aq8').asstring+','
      else str1:=str1+'aq8=0,';
      if not query1.fieldbyname('aq9').isnull then
      str1:=str1+'aq9='+query1.fieldbyname('aq9').asstring+','
      else str1:=str1+'aq9=0,';
      if not query1.fieldbyname('aq10').isnull then
      str1:=str1+'aq10='+query1.fieldbyname('aq10').asstring+','
      else str1:=str1+'aq10=0,';
      if not query1.fieldbyname('aq11').isnull then
      str1:=str1+'aq11='+query1.fieldbyname('aq11').asstring+','
      else str1:=str1+'aq11=0,';
      if not query1.fieldbyname('aq12').isnull then
      str1:=str1+'aq12='+query1.fieldbyname('aq12').asstring+','
      else str1:=str1+'aq12=0,';
      if not query1.fieldbyname('aq13').isnull then
      str1:=str1+'aq13='+query1.fieldbyname('aq13').asstring+','
      else str1:=str1+'aq13=0,';
      if not query1.fieldbyname('aq14').isnull then
      str1:=str1+'aq14='+query1.fieldbyname('aq14').asstring+','
      else str1:=str1+'aq14=0,';
      if not query1.fieldbyname('aq15').isnull then
      str1:=str1+'aq15='+query1.fieldbyname('aq15').asstring+','
      else str1:=str1+'aq15=0,';
      if not query1.fieldbyname('aq16').isnull then
      str1:=str1+'aq16='+query1.fieldbyname('aq16').asstring+','
      else str1:=str1+'aq16=0,';
      if not query1.fieldbyname('aq17').isnull then
      str1:=str1+'aq17='+query1.fieldbyname('aq17').asstring+','
      else str1:=str1+'aq17=0,';
      if not query1.fieldbyname('aq18').isnull then
      str1:=str1+'aq18='+query1.fieldbyname('aq18').asstring+','
      else str1:=str1+'aq18=0,';
      if not query1.fieldbyname('aq19').isnull then
      str1:=str1+'aq19='+query1.fieldbyname('aq19').asstring+','
      else str1:=str1+'aq19=0,';
      if not query1.fieldbyname('aq20').isnull then
      str1:=str1+'aq20='+query1.fieldbyname('aq20').asstring+','
      else str1:=str1+'aq20=0,';
      if not query1.fieldbyname('aq21').isnull then
      str1:=str1+'aq21='+query1.fieldbyname('aq21').asstring+','
      else str1:=str1+'aq21=0,';
      if not query1.fieldbyname('aq22').isnull then
      str1:=str1+'aq22='+query1.fieldbyname('aq22').asstring+','
      else str1:=str1+'aq22=0,';
      if not query1.fieldbyname('aq23').isnull then
      str1:=str1+'aq23='+query1.fieldbyname('aq23').asstring+','
      else str1:=str1+'aq23=0,';
      if not query1.fieldbyname('aq24').isnull then
      str1:=str1+'aq24='+query1.fieldbyname('aq24').asstring+','
      else str1:=str1+'aq24=0,';
      if not query1.fieldbyname('aq25').isnull then
      str1:=str1+'aq25='+query1.fieldbyname('aq25').asstring+','
      else str1:=str1+'aq25=0,';
      if not query1.fieldbyname('aq26').isnull then
      str1:=str1+'aq26='+query1.fieldbyname('aq26').asstring+','
      else str1:=str1+'aq26=0,';
      if not query1.fieldbyname('aq27').isnull then
      str1:=str1+'aq27='+query1.fieldbyname('aq27').asstring+','
      else str1:=str1+'aq27=0,';
      if not query1.fieldbyname('aq28').isnull then
      str1:=str1+'aq28='+query1.fieldbyname('aq28').asstring+','
      else str1:=str1+'aq28=0,';
      if not query1.fieldbyname('aq29').isnull then
      str1:=str1+'aq29='+query1.fieldbyname('aq29').asstring+','
      else str1:=str1+'aq29=0,';
      if not query1.fieldbyname('aq30').isnull then
      str1:=str1+'aq30='+query1.fieldbyname('aq30').asstring+','
      else str1:=str1+'aq30=0,';
      if not query1.fieldbyname('cq1').isnull then
      str1:=str1+'cq1='+query1.fieldbyname('cq1').asstring+','
      else str1:=str1+'cq1=0,';
      if not query1.fieldbyname('cq2').isnull then
      str1:=str1+'cq2='+query1.fieldbyname('cq2').asstring+','
      else str1:=str1+'cq2=0,';
      if not query1.fieldbyname('cq3').isnull then
      str1:=str1+'cq3='+query1.fieldbyname('cq3').asstring+','
      else str1:=str1+'cq3=0,';
      if not query1.fieldbyname('cq4').isnull then
      str1:=str1+'cq4='+query1.fieldbyname('cq4').asstring+','
      else str1:=str1+'cq4=0,';
      if not query1.fieldbyname('cq5').isnull then
      str1:=str1+'cq5='+query1.fieldbyname('cq5').asstring+','
      else str1:=str1+'cq5=0,';
      if not query1.fieldbyname('cq6').isnull then
      str1:=str1+'cq6='+query1.fieldbyname('cq6').asstring+','
      else str1:=str1+'cq6=0,';
      if not query1.fieldbyname('cq7').isnull then
      str1:=str1+'cq7='+query1.fieldbyname('cq7').asstring+','
      else str1:=str1+'cq7=0,';
      if not query1.fieldbyname('cq8').isnull then
      str1:=str1+'cq8='+query1.fieldbyname('cq8').asstring+','
      else str1:=str1+'cq8=0,';
      if not query1.fieldbyname('cq9').isnull then
      str1:=str1+'cq9='+query1.fieldbyname('cq9').asstring+','
      else str1:=str1+'cq9=0,';
      if not query1.fieldbyname('cq10').isnull then
      str1:=str1+'cq10='+query1.fieldbyname('cq10').asstring+','
      else str1:=str1+'cq10=0,';
      if not query1.fieldbyname('cq11').isnull then
      str1:=str1+'cq11='+query1.fieldbyname('cq11').asstring+','
      else str1:=str1+'cq11=0,';
      if not query1.fieldbyname('cq12').isnull then
      str1:=str1+'cq12='+query1.fieldbyname('cq12').asstring+','
      else str1:=str1+'cq12=0,';
      if not query1.fieldbyname('cq13').isnull then
      str1:=str1+'cq13='+query1.fieldbyname('cq13').asstring+','
      else str1:=str1+'cq13=0,';
      if not query1.fieldbyname('cq14').isnull then
      str1:=str1+'cq14='+query1.fieldbyname('cq14').asstring+','
      else str1:=str1+'cq14=0,';
      if not query1.fieldbyname('cq15').isnull then
      str1:=str1+'cq15='+query1.fieldbyname('cq15').asstring+','
      else str1:=str1+'cq15=0,';
      if not query1.fieldbyname('cq16').isnull then
      str1:=str1+'cq16='+query1.fieldbyname('cq16').asstring+','
      else str1:=str1+'cq16=0,';
      if not query1.fieldbyname('cq17').isnull then
      str1:=str1+'cq17='+query1.fieldbyname('cq17').asstring+','
      else str1:=str1+'cq17=0,';
      if not query1.fieldbyname('cq18').isnull then
      str1:=str1+'cq18='+query1.fieldbyname('cq18').asstring+','
      else str1:=str1+'cq18=0,';
      if not query1.fieldbyname('cq19').isnull then
      str1:=str1+'cq19='+query1.fieldbyname('cq19').asstring+','
      else str1:=str1+'cq19=0,';
      if not query1.fieldbyname('cq20').isnull then
      str1:=str1+'cq20='+query1.fieldbyname('cq20').asstring+','
      else str1:=str1+'cq20=0,';
      if not query1.fieldbyname('cq21').isnull then
      str1:=str1+'cq21='+query1.fieldbyname('cq21').asstring+','
      else str1:=str1+'cq21=0,';
      if not query1.fieldbyname('cq22').isnull then
      str1:=str1+'cq22='+query1.fieldbyname('cq22').asstring+','
      else str1:=str1+'cq22=0,';
      if not query1.fieldbyname('cq23').isnull then
      str1:=str1+'cq23='+query1.fieldbyname('cq23').asstring+','
      else str1:=str1+'cq23=0,';
      if not query1.fieldbyname('cq24').isnull then
      str1:=str1+'cq24='+query1.fieldbyname('cq24').asstring+','
      else str1:=str1+'cq24=0,';
      if not query1.fieldbyname('cq25').isnull then
      str1:=str1+'cq25='+query1.fieldbyname('cq25').asstring+','
      else str1:=str1+'cq25=0,';
      if not query1.fieldbyname('cq26').isnull then
      str1:=str1+'cq26='+query1.fieldbyname('cq26').asstring+','
      else str1:=str1+'cq26=0,';
      if not query1.fieldbyname('cq27').isnull then
      str1:=str1+'cq27='+query1.fieldbyname('cq27').asstring+','
      else str1:=str1+'cq27=0,';
      if not query1.fieldbyname('cq28').isnull then
      str1:=str1+'cq28='+query1.fieldbyname('cq28').asstring+','
      else str1:=str1+'cq28=0,';
      if not query1.fieldbyname('cq29').isnull then
      str1:=str1+'cq29='+query1.fieldbyname('cq29').asstring+','
      else str1:=str1+'cq29=0,';
      if not query1.fieldbyname('cq30').isnull then
      str1:=str1+'cq30='+query1.fieldbyname('cq30').asstring+','
      else str1:=str1+'cq30=0,';
      str1:=str1+'tsqty='+query1.fieldbyname('tsqty').asstring+',';
      str1:=str1+'taqty='+query1.fieldbyname('taqty').asstring+',';
      str1:=str1+'tcqty='+query1.fieldbyname('tcqty').asstring+',';
      if not query1.fieldbyname('cmps').isnull then begin
        if query1.fieldbyname('cmps').value=true then str1:=str1+'cmps=1,'
        else str1:=str1+'cmps=0,';
      end else str1:=str1+'cmps=0,';
      if not query1.fieldbyname('a101').isnull then
      str1:=str1+'a101='+query1.fieldbyname('a101').asstring+','
      else str1:=str1+'a101=0,';
      if not query1.fieldbyname('a102').isnull then
      str1:=str1+'a102='+query1.fieldbyname('a102').asstring+','
      else str1:=str1+'a102=0,';
      if not query1.fieldbyname('a103').isnull then
      str1:=str1+'a103='+query1.fieldbyname('a103').asstring+','
      else str1:=str1+'a103=0,';
      if not query1.fieldbyname('a201').isnull then
      str1:=str1+'a201='+query1.fieldbyname('a201').asstring+','
      else str1:=str1+'a201=0,';
      if not query1.fieldbyname('a202').isnull then
      str1:=str1+'a202='+query1.fieldbyname('a202').asstring+','
      else str1:=str1+'a202=0,';
      if not query1.fieldbyname('a203').isnull then
      str1:=str1+'a203='+query1.fieldbyname('a203').asstring+','
      else str1:=str1+'a203=0,';
      if not query1.fieldbyname('a301').isnull then
      str1:=str1+'a301='+query1.fieldbyname('a301').asstring+','
      else str1:=str1+'a301=0,';
      if not query1.fieldbyname('a302').isnull then
      str1:=str1+'a302='+query1.fieldbyname('a302').asstring+','
      else str1:=str1+'a302=0,';
      if not query1.fieldbyname('a303').isnull then
      str1:=str1+'a303='+query1.fieldbyname('a303').asstring+','
      else str1:=str1+'a303=0,';
      if not query1.fieldbyname('a401').isnull then
      str1:=str1+'a401='+query1.fieldbyname('a401').asstring+','
      else str1:=str1+'a401=0,';
      if not query1.fieldbyname('a402').isnull then
      str1:=str1+'a402='+query1.fieldbyname('a402').asstring+','
      else str1:=str1+'a402=0,';
      if not query1.fieldbyname('a403').isnull then
      str1:=str1+'a403='+query1.fieldbyname('a403').asstring+','
      else str1:=str1+'a403=0,';
      if not query1.fieldbyname('a501').isnull then
      str1:=str1+'a501='+query1.fieldbyname('a501').asstring+','
      else str1:=str1+'a501=0,';
      if not query1.fieldbyname('a502').isnull then
      str1:=str1+'a502='+query1.fieldbyname('a502').asstring+','
      else str1:=str1+'a502=0,';
      if not query1.fieldbyname('a503').isnull then
      str1:=str1+'a503='+query1.fieldbyname('a503').asstring+','
      else str1:=str1+'a503=0,';
      if not query1.fieldbyname('a601').isnull then
      str1:=str1+'a601='+query1.fieldbyname('a601').asstring+','
      else str1:=str1+'a601=0,';
      if not query1.fieldbyname('a602').isnull then
      str1:=str1+'a602='+query1.fieldbyname('a602').asstring+','
      else str1:=str1+'a602=0,';
      if not query1.fieldbyname('a603').isnull then
      str1:=str1+'a603='+query1.fieldbyname('a603').asstring+','
      else str1:=str1+'a603=0,';
      if not query1.fieldbyname('a701').isnull then
      str1:=str1+'a701='+query1.fieldbyname('a701').asstring+','
      else str1:=str1+'a701=0,';
      if not query1.fieldbyname('a702').isnull then
      str1:=str1+'a702='+query1.fieldbyname('a702').asstring+','
      else str1:=str1+'a702=0,';
      if not query1.fieldbyname('a703').isnull then
      str1:=str1+'a703='+query1.fieldbyname('a703').asstring+','
      else str1:=str1+'a703=0,';
      if not query1.fieldbyname('a801').isnull then
      str1:=str1+'a801='+query1.fieldbyname('a801').asstring+','
      else str1:=str1+'a801=0,';
      if not query1.fieldbyname('a802').isnull then
      str1:=str1+'a802='+query1.fieldbyname('a802').asstring+','
      else str1:=str1+'a802=0,';
      if not query1.fieldbyname('a803').isnull then
      str1:=str1+'a803='+query1.fieldbyname('a803').asstring+','
      else str1:=str1+'a803=0,';
      if not query1.fieldbyname('a901').isnull then
      str1:=str1+'a901='+query1.fieldbyname('a901').asstring+','
      else str1:=str1+'a901=0,';
      if not query1.fieldbyname('a902').isnull then
      str1:=str1+'a902='+query1.fieldbyname('a902').asstring+','
      else str1:=str1+'a902=0,';
      if not query1.fieldbyname('a903').isnull then
      str1:=str1+'a903='+query1.fieldbyname('a903').asstring+','
      else str1:=str1+'a903=0,';
      if not query1.fieldbyname('a1001').isnull then
      str1:=str1+'a1001='+query1.fieldbyname('a1001').asstring+','
      else str1:=str1+'a1001=0,';
      if not query1.fieldbyname('a1002').isnull then
      str1:=str1+'a1002='+query1.fieldbyname('a1002').asstring+','
      else str1:=str1+'a1002=0,';
      if not query1.fieldbyname('a1003').isnull then
      str1:=str1+'a1003='+query1.fieldbyname('a1003').asstring+','
      else str1:=str1+'a1003=0,';
      if not query1.fieldbyname('a1101').isnull then
      str1:=str1+'a1101='+query1.fieldbyname('a1101').asstring+','
      else str1:=str1+'a1101=0,';
      if not query1.fieldbyname('a1102').isnull then
      str1:=str1+'a1102='+query1.fieldbyname('a1102').asstring+','
      else str1:=str1+'a1102=0,';
      if not query1.fieldbyname('a1103').isnull then
      str1:=str1+'a1103='+query1.fieldbyname('a1103').asstring+','
      else str1:=str1+'a1103=0,';
      if not query1.fieldbyname('a1201').isnull then
      str1:=str1+'a1201='+query1.fieldbyname('a1201').asstring+','
      else str1:=str1+'a1201=0,';
      if not query1.fieldbyname('a1202').isnull then
      str1:=str1+'a1202='+query1.fieldbyname('a1202').asstring+','
      else str1:=str1+'a1202=0,';
      if not query1.fieldbyname('a1203').isnull then
      str1:=str1+'a1203='+query1.fieldbyname('a1203').asstring+','
      else str1:=str1+'a1203=0,';
      if not query1.fieldbyname('a1301').isnull then
      str1:=str1+'a1301='+query1.fieldbyname('a1301').asstring+','
      else str1:=str1+'a1301=0,';
      if not query1.fieldbyname('a1302').isnull then
      str1:=str1+'a1302='+query1.fieldbyname('a1302').asstring+','
      else str1:=str1+'a1302=0,';
      if not query1.fieldbyname('a1303').isnull then
      str1:=str1+'a1303='+query1.fieldbyname('a1303').asstring+','
      else str1:=str1+'a1303=0,';
      if not query1.fieldbyname('a1401').isnull then
      str1:=str1+'a1401='+query1.fieldbyname('a1401').asstring+','
      else str1:=str1+'a1401=0,';
      if not query1.fieldbyname('a1402').isnull then
      str1:=str1+'a1402='+query1.fieldbyname('a1402').asstring+','
      else str1:=str1+'a1402=0,';
      if not query1.fieldbyname('a1403').isnull then
      str1:=str1+'a1403='+query1.fieldbyname('a1403').asstring+','
      else str1:=str1+'a1403=0,';
      if not query1.fieldbyname('a1501').isnull then
      str1:=str1+'a1501='+query1.fieldbyname('a1501').asstring+','
      else str1:=str1+'a1501=0,';
      if not query1.fieldbyname('a1502').isnull then
      str1:=str1+'a1502='+query1.fieldbyname('a1502').asstring+','
      else str1:=str1+'a1502=0,';
      if not query1.fieldbyname('a1503').isnull then
      str1:=str1+'a1503='+query1.fieldbyname('a1503').asstring+','
      else str1:=str1+'a1503=0,';
      if not query1.fieldbyname('a1601').isnull then
      str1:=str1+'a1601='+query1.fieldbyname('a1601').asstring+','
      else str1:=str1+'a1601=0,';
      if not query1.fieldbyname('a1602').isnull then
      str1:=str1+'a1602='+query1.fieldbyname('a1602').asstring+','
      else str1:=str1+'a1602=0,';
      if not query1.fieldbyname('a1603').isnull then
      str1:=str1+'a1603='+query1.fieldbyname('a1603').asstring+','
      else str1:=str1+'a1603=0,';
      if not query1.fieldbyname('a1701').isnull then
      str1:=str1+'a1701='+query1.fieldbyname('a1701').asstring+','
      else str1:=str1+'a1701=0,';
      if not query1.fieldbyname('a1702').isnull then
      str1:=str1+'a1702='+query1.fieldbyname('a1702').asstring+','
      else str1:=str1+'a1702=0,';
      if not query1.fieldbyname('a1703').isnull then
      str1:=str1+'a1703='+query1.fieldbyname('a1703').asstring+','
      else str1:=str1+'a1703=0,';
      if not query1.fieldbyname('a1801').isnull then
      str1:=str1+'a1801='+query1.fieldbyname('a1801').asstring+','
      else str1:=str1+'a1801=0,';
      if not query1.fieldbyname('a1802').isnull then
      str1:=str1+'a1802='+query1.fieldbyname('a1802').asstring+','
      else str1:=str1+'a1802=0,';
      if not query1.fieldbyname('a1803').isnull then
      str1:=str1+'a1803='+query1.fieldbyname('a1803').asstring+','
      else str1:=str1+'a1803=0,';
      if not query1.fieldbyname('a1901').isnull then
      str1:=str1+'a1901='+query1.fieldbyname('a1901').asstring+','
      else str1:=str1+'a1901=0,';
      if not query1.fieldbyname('a1902').isnull then
      str1:=str1+'a1902='+query1.fieldbyname('a1902').asstring+','
      else str1:=str1+'a1902=0,';
      if not query1.fieldbyname('a1903').isnull then
      str1:=str1+'a1903='+query1.fieldbyname('a1903').asstring+','
      else str1:=str1+'a1903=0,';
      if not query1.fieldbyname('a2001').isnull then
      str1:=str1+'a2001='+query1.fieldbyname('a2001').asstring+','
      else str1:=str1+'a2001=0,';
      if not query1.fieldbyname('a2002').isnull then
      str1:=str1+'a2002='+query1.fieldbyname('a2002').asstring+','
      else str1:=str1+'a2002=0,';
      if not query1.fieldbyname('a2003').isnull then
      str1:=str1+'a2003='+query1.fieldbyname('a2003').asstring+','
      else str1:=str1+'a2003=0,';
      if not query1.fieldbyname('a2101').isnull then
      str1:=str1+'a2101='+query1.fieldbyname('a2101').asstring+','
      else str1:=str1+'a2101=0,';
      if not query1.fieldbyname('a2102').isnull then
      str1:=str1+'a2102='+query1.fieldbyname('a2102').asstring+','
      else str1:=str1+'a2102=0,';
      if not query1.fieldbyname('a2103').isnull then
      str1:=str1+'a2103='+query1.fieldbyname('a2103').asstring+','
      else str1:=str1+'a2103=0,';
      if not query1.fieldbyname('a2201').isnull then
      str1:=str1+'a2201='+query1.fieldbyname('a2201').asstring+','
      else str1:=str1+'a2201=0,';
      if not query1.fieldbyname('a2202').isnull then
      str1:=str1+'a2202='+query1.fieldbyname('a2202').asstring+','
      else str1:=str1+'a2202=0,';
      if not query1.fieldbyname('a2203').isnull then
      str1:=str1+'a2203='+query1.fieldbyname('a2203').asstring+','
      else str1:=str1+'2203=0,';
      if not query1.fieldbyname('a2301').isnull then
      str1:=str1+'a2301='+query1.fieldbyname('a2301').asstring+','
      else str1:=str1+'a2301=0,';
      if not query1.fieldbyname('a2302').isnull then
      str1:=str1+'a2302='+query1.fieldbyname('a2302').asstring+','
      else str1:=str1+'a2302=0,';
      if not query1.fieldbyname('a2303').isnull then
      str1:=str1+'a2303='+query1.fieldbyname('a2303').asstring+','
      else str1:=str1+'a2303=0,';
      if not query1.fieldbyname('a2401').isnull then
      str1:=str1+'a2401='+query1.fieldbyname('a2401').asstring+','
      else str1:=str1+'a2401=0,';
      if not query1.fieldbyname('a2402').isnull then
      str1:=str1+'a2402='+query1.fieldbyname('a2402').asstring+','
      else str1:=str1+'a2402=0,';
      if not query1.fieldbyname('a2403').isnull then
      str1:=str1+'a2403='+query1.fieldbyname('a2403').asstring+','
      else str1:=str1+'a2403=0,';
      if not query1.fieldbyname('a2501').isnull then
      str1:=str1+'a1501='+query1.fieldbyname('a2501').asstring+','
      else str1:=str1+'a2501=0,';
      if not query1.fieldbyname('a2502').isnull then
      str1:=str1+'a2502='+query1.fieldbyname('a2502').asstring+','
      else str1:=str1+'a2502=0,';
      if not query1.fieldbyname('a2503').isnull then
      str1:=str1+'a2503='+query1.fieldbyname('a2503').asstring+','
      else str1:=str1+'a2503=0,';
      if not query1.fieldbyname('a2601').isnull then
      str1:=str1+'a2601='+query1.fieldbyname('a2601').asstring+','
      else str1:=str1+'a2601=0,';
      if not query1.fieldbyname('a2602').isnull then
      str1:=str1+'a2602='+query1.fieldbyname('a2602').asstring+','
      else str1:=str1+'a2602=0,';
      if not query1.fieldbyname('a2603').isnull then
      str1:=str1+'a2603='+query1.fieldbyname('a2603').asstring+','
      else str1:=str1+'a2603=0,';
      if not query1.fieldbyname('a2701').isnull then
      str1:=str1+'a2701='+query1.fieldbyname('a2701').asstring+','
      else str1:=str1+'a2701=0,';
      if not query1.fieldbyname('a2702').isnull then
      str1:=str1+'a2702='+query1.fieldbyname('a2702').asstring+','
      else str1:=str1+'a2702=0,';
      if not query1.fieldbyname('a2703').isnull then
      str1:=str1+'a2703='+query1.fieldbyname('a2703').asstring+','
      else str1:=str1+'a2703=0,';
      if not query1.fieldbyname('a2801').isnull then
      str1:=str1+'a2801='+query1.fieldbyname('a2801').asstring+','
      else str1:=str1+'a2801=0,';
      if not query1.fieldbyname('a2802').isnull then
      str1:=str1+'a2802='+query1.fieldbyname('a2802').asstring+','
      else str1:=str1+'a2802=0,';
      if not query1.fieldbyname('a2803').isnull then
      str1:=str1+'a2803='+query1.fieldbyname('a2803').asstring+','
      else str1:=str1+'a2803=0,';
      if not query1.fieldbyname('a2901').isnull then
      str1:=str1+'a2901='+query1.fieldbyname('a2901').asstring+','
      else str1:=str1+'a2901=0,';
      if not query1.fieldbyname('a2902').isnull then
      str1:=str1+'a2902='+query1.fieldbyname('a2902').asstring+','
      else str1:=str1+'a2902=0,';
      if not query1.fieldbyname('a2903').isnull then
      str1:=str1+'a2903='+query1.fieldbyname('a2903').asstring+','
      else str1:=str1+'a2903=0,';
      if not query1.fieldbyname('a3001').isnull then
      str1:=str1+'a3001='+query1.fieldbyname('a3001').asstring+','
      else str1:=str1+'a3001=0,';
      if not query1.fieldbyname('a3002').isnull then
      str1:=str1+'a3002='+query1.fieldbyname('a3002').asstring+','
      else str1:=str1+'a3002=0,';
      if not query1.fieldbyname('a3003').isnull then
      str1:=str1+'a3003='+query1.fieldbyname('a3003').asstring+' '
      else str1:=str1+'a3003=0 ';
      str1:=str1+'where pline='''+query1.fieldbyname('pline').value+''' ';
      str1:=str1+'and seq='+query1.fieldbyname('seq').asstring+' ';
      str1:=str1+'and j_no='''+query1.fieldbyname('j_no').value+''' ';
      str1:=str1+'and j2_job='''+query1.fieldbyname('j2_job').value+''' ';
      str1:=str1+'and rwo='''+query1.fieldbyname('rwo').value+''' ';
      str1:=str1+'and acol='''+query1.fieldbyname('acol').value+''' ';
      str1:=str1+'and did='+query1.fieldbyname('did').asstring;
      if frmmain.PHService.UpdateLWPM(str1)=0 then showmessage('Can not save!');
  if userlog>'' then begin
    with query2 do begin
      close;
      params.clear;
      commandtext:='select max(dseq) as x1 from tbl_lwo_sew_log';
      open;
      if not fieldbyname('x1').isnull then dseq:=fieldbyname('x1').value+1 else dseq:=1;
    end;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftinteger,'x3',ptinput);
      params.createparam(ftstring,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      commandtext:='insert into tbl_lwo_sew_log(pline,seq,dseq,styp,userlog) values(:x1,:x2,:x3,:x4,:x5)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asinteger:=dseq;
      params[3].asstring:=lbl850.caption;
      params[4].asstring:=userlog;
      execute;
    end;
    userlog:='';
  end;
  label9.Caption:='EDIT';
end;

procedure Tfrmesewn.viewlog1Click(Sender: TObject);
var
  s1:string;
begin
  s1:='';
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftstring,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    params.createparam(ftstring,'x3',ptinput);
    commandtext:='select distinct dseq,userlog from tbl_lwo_sew_log where pline=:x1 and seq=:x2 and styp=:x3 order by dseq';
    params[0].asstring:=query1.fieldbyname('pline').value;
    params[1].asinteger:=query1.fieldbyname('seq').value;
    params[2].asstring:=lbl850.caption;
    open;
    first;
    while not eof do begin
      if s1>'' then s1:=s1+chr(13)+chr(20)+fieldbyname('userlog').value
      else s1:=fieldbyname('userlog').value;
      application.processmessages;
      next;
    end;
  end;
  if s1>'' then showmessage(s1);
end;

procedure Tfrmesewn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if label9.Caption='EDIT' then begin
  if label8.Caption='ZKTD' then begin
    with frmzktd.Query1 do begin
      edit;
      if frmzktd.lbl850.Caption='SPE' then begin
        fieldbyname('aqty_sp').value:=dbgrideh1.Columns[6].Footers[0].SumValue;
        fieldbyname('aqty1_sp').value:=dbgrideh1.Columns[10].Footers[0].SumValue;
      end else begin
        fieldbyname('aqty').value:=dbgrideh1.Columns[6].Footers[0].SumValue;
        fieldbyname('aqty1').value:=dbgrideh1.Columns[10].Footers[0].SumValue;
      end;
      //dbgrideh1.Columns[6].Footers[0].Value;
      post;
    end;
  end else begin
    with frmachieving.Query1 do begin
      edit;
      if frmachieving.lbl850.Caption='SPE' then begin
        fieldbyname('aqty_sp').value:=dbgrideh1.Columns[6].Footers[0].SumValue;
        fieldbyname('aqty1_sp').value:=dbgrideh1.Columns[10].Footers[0].SumValue;
      end else begin
        fieldbyname('aqty').value:=dbgrideh1.Columns[6].Footers[0].SumValue;
        fieldbyname('aqty1').value:=dbgrideh1.Columns[10].Footers[0].SumValue;
      end;
      post;
    end;
  end;
  end;
  action:=cafree;
  frmesewn:=nil;
end;

procedure Tfrmesewn.BitBtn1Click(Sender: TObject);
begin
  if query1.state=dsedit then begin
    query1.post;
    with query2 do begin
      close;
      params.clear;
      params.createparam(ftstring,'x1',ptinput);
      params.createparam(ftinteger,'x2',ptinput);
      params.createparam(ftstring,'x3',ptinput);
      params.createparam(ftdatetime,'x4',ptinput);
      params.createparam(ftstring,'x5',ptinput);
      params.createparam(ftdate,'x6',ptinput);
      commandtext:='insert into tbl_lineaqty(pline,seq,aqty_usr,tm,reasons,dt1) values(:x1,:x2,:x3,:x4,:x5,:x6)';
      params[0].asstring:=query1.fieldbyname('pline').value;
      params[1].asinteger:=query1.fieldbyname('seq').value;
      params[2].asstring:=frmmain.combobox1.text;
      params[3].asdatetime:=now;
      params[4].asstring:='Quantity';
      if label8.Caption='ZKTD' then
      params[5].asdate:=frmzktd.query1.fieldbyname('dt1').value
      else params[5].asdate:=frmachieving.query1.fieldbyname('dt1').value;
      execute;
    end;
  end;
end;

procedure Tfrmesewn.Field1Change(Sender: TField);
var
  zt1:integer;
begin
    if query1.fieldbyname('cmps').value=true then begin
      zt1:=query1.fieldbyname('tsqty').value;
      with query3 do begin
        close;
        params.clear;
        params.createparam(ftstring,'x1',ptinput);
        params.createparam(ftinteger,'x2',ptinput);
        params.createparam(ftstring,'x3',ptinput);
        params.createparam(ftstring,'x4',ptinput);
        params.createparam(ftstring,'x5',ptinput);
        params.createparam(ftstring,'x6',ptinput);
        commandtext:='select s_wr+s_ls as x1 from tbl_lwo_sample where pline=:x1 and seq=:x2 and j2_job=:x3 and rwo=:x4 and acol=:x5 and psiz=:x6';
        params[0].asstring:=query1.fieldbyname('pline').value;
        params[1].asinteger:=query1.fieldbyname('seq').value;
        params[2].asstring:=query1.fieldbyname('j2_job').value;
        params[3].asstring:=query1.fieldbyname('rwo').value;
        params[4].asstring:=query1.fieldbyname('acol').value;
        params[5].asstring:=query1.fieldbyname('psiz').value;
        open;
        if not fieldbyname('x1').isnull then zt1:=zt1+fieldbyname('x1').value;
      end;
      if zt1<>query1.fieldbyname('ttqty').value then begin
        showmessage('數據不平, SEWN不能確認完成!');
        query1.fieldbyname('cmps').value:=false;
      end;
    end;
end;

procedure Tfrmesewn.FieldChange(Sender: TField);
var
  a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,
  a21,a22,a23,a24,a25,a26,a27,a28,a29,a30:integer;
  a101,a102,a103,a201,a202,a203,a301,a302,a303,a401,a402,a403,a501,a502,a503,
  a601,a602,a603,a701,a702,a703,a801,a802,a803,a901,a902,a903,a1001,a1002,a1003:integer;
  a1101,a1102,a1103,a1201,a1202,a1203,a1301,a1302,a1303,a1401,a1402,a1403,a1501,a1502,a1503,
  a1601,a1602,a1603,a1701,a1702,a1703,a1801,a1802,a1803,a1901,a1902,a1903,a2001,a2002,a2003,
  a2101,a2102,a2103,a2201,a2202,a2203,a2301,a2302,a2303,a2401,a2402,a2403,a2501,a2502,a2503,
  a2601,a2602,a2603,a2701,a2702,a2703,a2801,a2802,a2803,a2901,a2902,a2903,a3001,a3002,a3003:integer;

  c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,
  c21,c22,c23,c24,c25,c26,c27,c28,c29,c30:integer;
  ttqty:integer;
begin
  userlog:=frmmain.combobox1.text+' at '+formatdatetime('yy-MM-dd hh:nn:sss',now)+' manually changed quantity';
  if not query1.fieldbyname('a101').isnull then a101:=query1.fieldbyname('a101').value else a101:=0;
  if not query1.fieldbyname('a102').isnull then a102:=query1.fieldbyname('a102').value else a102:=0;
  if not query1.fieldbyname('a103').isnull then a103:=query1.fieldbyname('a103').value else a103:=0;
  if not query1.fieldbyname('a201').isnull then a201:=query1.fieldbyname('a201').value else a201:=0;
  if not query1.fieldbyname('a202').isnull then a202:=query1.fieldbyname('a202').value else a202:=0;
  if not query1.fieldbyname('a203').isnull then a203:=query1.fieldbyname('a203').value else a203:=0;
  if not query1.fieldbyname('a301').isnull then a301:=query1.fieldbyname('a301').value else a301:=0;
  if not query1.fieldbyname('a302').isnull then a302:=query1.fieldbyname('a302').value else a302:=0;
  if not query1.fieldbyname('a303').isnull then a303:=query1.fieldbyname('a303').value else a303:=0;
  if not query1.fieldbyname('a401').isnull then a401:=query1.fieldbyname('a401').value else a401:=0;
  if not query1.fieldbyname('a402').isnull then a402:=query1.fieldbyname('a402').value else a402:=0;
  if not query1.fieldbyname('a403').isnull then a403:=query1.fieldbyname('a403').value else a403:=0;
  if not query1.fieldbyname('a501').isnull then a501:=query1.fieldbyname('a501').value else a501:=0;
  if not query1.fieldbyname('a502').isnull then a502:=query1.fieldbyname('a502').value else a502:=0;
  if not query1.fieldbyname('a503').isnull then a503:=query1.fieldbyname('a503').value else a503:=0;
  if not query1.fieldbyname('a601').isnull then a601:=query1.fieldbyname('a601').value else a601:=0;
  if not query1.fieldbyname('a602').isnull then a602:=query1.fieldbyname('a602').value else a602:=0;
  if not query1.fieldbyname('a603').isnull then a603:=query1.fieldbyname('a603').value else a603:=0;
  if not query1.fieldbyname('a701').isnull then a701:=query1.fieldbyname('a701').value else a701:=0;
  if not query1.fieldbyname('a702').isnull then a702:=query1.fieldbyname('a702').value else a702:=0;
  if not query1.fieldbyname('a703').isnull then a703:=query1.fieldbyname('a703').value else a703:=0;
  if not query1.fieldbyname('a801').isnull then a801:=query1.fieldbyname('a801').value else a801:=0;
  if not query1.fieldbyname('a802').isnull then a802:=query1.fieldbyname('a802').value else a802:=0;
  if not query1.fieldbyname('a803').isnull then a803:=query1.fieldbyname('a803').value else a803:=0;
  if not query1.fieldbyname('a901').isnull then a901:=query1.fieldbyname('a901').value else a901:=0;
  if not query1.fieldbyname('a902').isnull then a902:=query1.fieldbyname('a902').value else a902:=0;
  if not query1.fieldbyname('a903').isnull then a903:=query1.fieldbyname('a903').value else a903:=0;
  if not query1.fieldbyname('a1001').isnull then a1001:=query1.fieldbyname('a1001').value else a1001:=0;
  if not query1.fieldbyname('a1002').isnull then a1002:=query1.fieldbyname('a1002').value else a1002:=0;
  if not query1.fieldbyname('a1003').isnull then a1003:=query1.fieldbyname('a1003').value else a1003:=0;
  if not query1.fieldbyname('a1101').isnull then a1101:=query1.fieldbyname('a1101').value else a1101:=0;
  if not query1.fieldbyname('a1102').isnull then a1102:=query1.fieldbyname('a1102').value else a1102:=0;
  if not query1.fieldbyname('a1103').isnull then a1103:=query1.fieldbyname('a1103').value else a1103:=0;
  if not query1.fieldbyname('a1201').isnull then a1201:=query1.fieldbyname('a1201').value else a1201:=0;
  if not query1.fieldbyname('a1202').isnull then a1202:=query1.fieldbyname('a1202').value else a1202:=0;
  if not query1.fieldbyname('a1203').isnull then a1203:=query1.fieldbyname('a1203').value else a1203:=0;
  if not query1.fieldbyname('a1301').isnull then a1301:=query1.fieldbyname('a1301').value else a1301:=0;
  if not query1.fieldbyname('a1302').isnull then a1302:=query1.fieldbyname('a1302').value else a1302:=0;
  if not query1.fieldbyname('a1303').isnull then a1303:=query1.fieldbyname('a1303').value else a1303:=0;
  if not query1.fieldbyname('a1401').isnull then a1401:=query1.fieldbyname('a1401').value else a1401:=0;
  if not query1.fieldbyname('a1402').isnull then a1402:=query1.fieldbyname('a1402').value else a1402:=0;
  if not query1.fieldbyname('a1403').isnull then a1403:=query1.fieldbyname('a1403').value else a1403:=0;
  if not query1.fieldbyname('a1501').isnull then a1501:=query1.fieldbyname('a1501').value else a1501:=0;
  if not query1.fieldbyname('a1502').isnull then a1502:=query1.fieldbyname('a1502').value else a1502:=0;
  if not query1.fieldbyname('a1503').isnull then a1503:=query1.fieldbyname('a1503').value else a1503:=0;
  if not query1.fieldbyname('a1601').isnull then a1601:=query1.fieldbyname('a1601').value else a1601:=0;
  if not query1.fieldbyname('a1602').isnull then a1602:=query1.fieldbyname('a1602').value else a1602:=0;
  if not query1.fieldbyname('a1603').isnull then a1603:=query1.fieldbyname('a1603').value else a1603:=0;
  if not query1.fieldbyname('a1701').isnull then a1701:=query1.fieldbyname('a1701').value else a1701:=0;
  if not query1.fieldbyname('a1702').isnull then a1702:=query1.fieldbyname('a1702').value else a1702:=0;
  if not query1.fieldbyname('a1703').isnull then a1703:=query1.fieldbyname('a1703').value else a1703:=0;
  if not query1.fieldbyname('a1801').isnull then a1801:=query1.fieldbyname('a1801').value else a1801:=0;
  if not query1.fieldbyname('a1802').isnull then a1802:=query1.fieldbyname('a1802').value else a1802:=0;
  if not query1.fieldbyname('a1803').isnull then a1803:=query1.fieldbyname('a1803').value else a1803:=0;
  if not query1.fieldbyname('a1901').isnull then a1901:=query1.fieldbyname('a1901').value else a1901:=0;
  if not query1.fieldbyname('a1902').isnull then a1902:=query1.fieldbyname('a1902').value else a1902:=0;
  if not query1.fieldbyname('a1903').isnull then a1903:=query1.fieldbyname('a1903').value else a1903:=0;
  if not query1.fieldbyname('a2001').isnull then a2001:=query1.fieldbyname('a2001').value else a2001:=0;
  if not query1.fieldbyname('a2002').isnull then a2002:=query1.fieldbyname('a2002').value else a2002:=0;
  if not query1.fieldbyname('a2003').isnull then a2003:=query1.fieldbyname('a2003').value else a2003:=0;
  if not query1.fieldbyname('a2101').isnull then a2101:=query1.fieldbyname('a2101').value else a2101:=0;
  if not query1.fieldbyname('a2102').isnull then a2102:=query1.fieldbyname('a2102').value else a2102:=0;
  if not query1.fieldbyname('a2103').isnull then a2103:=query1.fieldbyname('a2103').value else a2103:=0;
  if not query1.fieldbyname('a2201').isnull then a2201:=query1.fieldbyname('a2201').value else a2201:=0;
  if not query1.fieldbyname('a2202').isnull then a2202:=query1.fieldbyname('a2202').value else a2202:=0;
  if not query1.fieldbyname('a2203').isnull then a2203:=query1.fieldbyname('a2203').value else a2203:=0;
  if not query1.fieldbyname('a2301').isnull then a2301:=query1.fieldbyname('a2301').value else a2301:=0;
  if not query1.fieldbyname('a2302').isnull then a2302:=query1.fieldbyname('a2302').value else a2302:=0;
  if not query1.fieldbyname('a2303').isnull then a2303:=query1.fieldbyname('a2303').value else a2303:=0;
  if not query1.fieldbyname('a2401').isnull then a2401:=query1.fieldbyname('a2401').value else a2401:=0;
  if not query1.fieldbyname('a2402').isnull then a2402:=query1.fieldbyname('a2402').value else a2402:=0;
  if not query1.fieldbyname('a2403').isnull then a2403:=query1.fieldbyname('a2403').value else a2403:=0;
  if not query1.fieldbyname('a2501').isnull then a2501:=query1.fieldbyname('a2501').value else a2501:=0;
  if not query1.fieldbyname('a2502').isnull then a2502:=query1.fieldbyname('a2502').value else a2502:=0;
  if not query1.fieldbyname('a2503').isnull then a2503:=query1.fieldbyname('a2503').value else a2503:=0;
  if not query1.fieldbyname('a2601').isnull then a2601:=query1.fieldbyname('a2601').value else a2601:=0;
  if not query1.fieldbyname('a2602').isnull then a2602:=query1.fieldbyname('a2602').value else a2602:=0;
  if not query1.fieldbyname('a2603').isnull then a2603:=query1.fieldbyname('a2603').value else a2603:=0;
  if not query1.fieldbyname('a2701').isnull then a2701:=query1.fieldbyname('a2701').value else a2701:=0;
  if not query1.fieldbyname('a2702').isnull then a2702:=query1.fieldbyname('a2702').value else a2702:=0;
  if not query1.fieldbyname('a2703').isnull then a2703:=query1.fieldbyname('a2703').value else a2703:=0;
  if not query1.fieldbyname('a2801').isnull then a2801:=query1.fieldbyname('a2801').value else a2801:=0;
  if not query1.fieldbyname('a2802').isnull then a2802:=query1.fieldbyname('a2802').value else a2802:=0;
  if not query1.fieldbyname('a2803').isnull then a2803:=query1.fieldbyname('a2803').value else a2803:=0;
  if not query1.fieldbyname('a2901').isnull then a2901:=query1.fieldbyname('a2901').value else a2901:=0;
  if not query1.fieldbyname('a2902').isnull then a2902:=query1.fieldbyname('a2902').value else a2902:=0;
  if not query1.fieldbyname('a2903').isnull then a2903:=query1.fieldbyname('a2903').value else a2903:=0;
  if not query1.fieldbyname('a3001').isnull then a3001:=query1.fieldbyname('a3001').value else a3001:=0;
  if not query1.fieldbyname('a3002').isnull then a3002:=query1.fieldbyname('a3002').value else a3002:=0;
  if not query1.fieldbyname('a3003').isnull then a3003:=query1.fieldbyname('a3003').value else a3003:=0;

  query1.fieldbyname('aq1').value:=a101+a102+a103;
  query1.fieldbyname('aq2').value:=a201+a202+a203;
  query1.fieldbyname('aq3').value:=a301+a302+a303;
  query1.fieldbyname('aq4').value:=a401+a402+a403;
  query1.fieldbyname('aq5').value:=a501+a502+a503;
  query1.fieldbyname('aq6').value:=a601+a602+a603;
  query1.fieldbyname('aq7').value:=a701+a702+a703;
  query1.fieldbyname('aq8').value:=a801+a802+a803;
  query1.fieldbyname('aq9').value:=a901+a902+a903;
  query1.fieldbyname('aq10').value:=a1001+a1002+a1003;
  query1.fieldbyname('aq11').value:=a1101+a1102+a1103;
  query1.fieldbyname('aq12').value:=a1201+a1202+a1203;
  query1.fieldbyname('aq13').value:=a1301+a1302+a1303;
  query1.fieldbyname('aq14').value:=a1401+a1402+a1403;
  query1.fieldbyname('aq15').value:=a1501+a1502+a1503;
  query1.fieldbyname('aq16').value:=a1601+a1602+a1603;
  query1.fieldbyname('aq17').value:=a1701+a1702+a1703;
  query1.fieldbyname('aq18').value:=a1801+a1802+a1803;
  query1.fieldbyname('aq19').value:=a1901+a1902+a1903;
  query1.fieldbyname('aq20').value:=a2001+a2002+a2003;
  query1.fieldbyname('aq21').value:=a2101+a2102+a2103;
  query1.fieldbyname('aq22').value:=a2201+a2202+a2203;
  query1.fieldbyname('aq23').value:=a2301+a2302+a2303;
  query1.fieldbyname('aq24').value:=a2401+a2402+a2403;
  query1.fieldbyname('aq25').value:=a2501+a2502+a2503;
  query1.fieldbyname('aq26').value:=a2601+a2602+a2603;
  query1.fieldbyname('aq27').value:=a2701+a2702+a2703;
  query1.fieldbyname('aq28').value:=a2801+a2802+a2803;
  query1.fieldbyname('aq29').value:=a2901+a2902+a2903;
  query1.fieldbyname('aq30').value:=a3001+a3002+a3003;

  a1:=a101+a102+a103;
  a2:=a201+a202+a203;
  a3:=a301+a302+a303;
  a4:=a401+a402+a403;
  a5:=a501+a502+a503;
  a6:=a601+a602+a603;
  a7:=a701+a702+a703;
  a8:=a801+a802+a803;
  a9:=a901+a902+a903;
  a10:=a1001+a1002+a1003;
  a11:=a1101+a1102+a1103;
  a12:=a1201+a1202+a1203;
  a13:=a1301+a1302+a1303;
  a14:=a1401+a1402+a1403;
  a15:=a1501+a1502+a1503;
  a16:=a1601+a1602+a1603;
  a17:=a1701+a1702+a1703;
  a18:=a1801+a1802+a1803;
  a19:=a1901+a1902+a1903;
  a20:=a2001+a2002+a2003;
  a21:=a2101+a2102+a2103;
  a22:=a2201+a2202+a2203;
  a23:=a2301+a2302+a2303;
  a24:=a2401+a2402+a2403;
  a25:=a2501+a2502+a2503;
  a26:=a2601+a2602+a2603;
  a27:=a2701+a2702+a2703;
  a28:=a2801+a2802+a2803;
  a29:=a2901+a2902+a2903;
  a30:=a3001+a3002+a3003;

  if not query1.fieldbyname('cq1').isnull then c1:=query1.fieldbyname('cq1').value else c1:=0;
  if not query1.fieldbyname('cq2').isnull then c2:=query1.fieldbyname('cq2').value else c2:=0;
  if not query1.fieldbyname('cq3').isnull then c3:=query1.fieldbyname('cq3').value else c3:=0;
  if not query1.fieldbyname('cq4').isnull then c4:=query1.fieldbyname('cq4').value else c4:=0;
  if not query1.fieldbyname('cq5').isnull then c5:=query1.fieldbyname('cq5').value else c5:=0;
  if not query1.fieldbyname('cq6').isnull then c6:=query1.fieldbyname('cq6').value else c6:=0;
  if not query1.fieldbyname('cq7').isnull then c7:=query1.fieldbyname('cq7').value else c7:=0;
  if not query1.fieldbyname('cq8').isnull then c8:=query1.fieldbyname('cq8').value else c8:=0;
  if not query1.fieldbyname('cq9').isnull then c9:=query1.fieldbyname('cq9').value else c9:=0;
  if not query1.fieldbyname('cq10').isnull then c10:=query1.fieldbyname('cq10').value else c10:=0;
  if not query1.fieldbyname('cq11').isnull then c11:=query1.fieldbyname('cq11').value else c11:=0;
  if not query1.fieldbyname('cq12').isnull then c12:=query1.fieldbyname('cq12').value else c12:=0;
  if not query1.fieldbyname('cq13').isnull then c13:=query1.fieldbyname('cq13').value else c13:=0;
  if not query1.fieldbyname('cq14').isnull then c14:=query1.fieldbyname('cq14').value else c14:=0;
  if not query1.fieldbyname('cq15').isnull then c15:=query1.fieldbyname('cq15').value else c15:=0;
  if not query1.fieldbyname('cq16').isnull then c16:=query1.fieldbyname('cq16').value else c16:=0;
  if not query1.fieldbyname('cq17').isnull then c17:=query1.fieldbyname('cq17').value else c17:=0;
  if not query1.fieldbyname('cq18').isnull then c18:=query1.fieldbyname('cq18').value else c18:=0;
  if not query1.fieldbyname('cq19').isnull then c19:=query1.fieldbyname('cq19').value else c19:=0;
  if not query1.fieldbyname('cq20').isnull then c20:=query1.fieldbyname('cq20').value else c20:=0;
  if not query1.fieldbyname('cq21').isnull then c21:=query1.fieldbyname('cq21').value else c21:=0;
  if not query1.fieldbyname('cq22').isnull then c22:=query1.fieldbyname('cq22').value else c22:=0;
  if not query1.fieldbyname('cq23').isnull then c23:=query1.fieldbyname('cq23').value else c23:=0;
  if not query1.fieldbyname('cq24').isnull then c24:=query1.fieldbyname('cq24').value else c24:=0;
  if not query1.fieldbyname('cq25').isnull then c25:=query1.fieldbyname('cq25').value else c25:=0;
  if not query1.fieldbyname('cq26').isnull then c26:=query1.fieldbyname('cq26').value else c26:=0;
  if not query1.fieldbyname('cq27').isnull then c27:=query1.fieldbyname('cq27').value else c27:=0;
  if not query1.fieldbyname('cq28').isnull then c28:=query1.fieldbyname('cq28').value else c28:=0;
  if not query1.fieldbyname('cq29').isnull then c29:=query1.fieldbyname('cq29').value else c29:=0;
  if not query1.fieldbyname('cq30').isnull then c30:=query1.fieldbyname('cq30').value else c30:=0;

  ttqty:=query1.fieldbyname('ttqty').value;
  if (a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12+a13+a14+a15+a16+a17+a18+a19+a20+a21+a22+a23+a24+a25+a26+a27+a28+a29+a30+c1+c2+c3+c4+c5+c6+c7+c8+c9+c10+c11+c12+c13+c14+c15+c16+c17+c18+c19+c20+c21+c22+c23+c24+c25+c26+c27+c28+c29+c30>ttqty) then begin
    showmessage('Sewn Qty > T1 Qty!');
    abort;
  end else begin
    query1.fieldbyname('taqty').value:=a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12+a13+a14+a15+a16+a17+a18+a19+a20+a21+a22+a23+a24+a25+a26+a27+a28+a29+a30;
    query1.fieldbyname('tcqty').value:=c1+c2+c3+c4+c5+c6+c7+c8+c9+c10+c11+c12+c13+c14+c15+c16+c17+c18+c19+c20+c21+c22+c23+c24+c25+c26+c27+c28+c29+c30;
    query1.fieldbyname('tsqty').value:=query1.fieldbyname('taqty').value+query1.fieldbyname('tcqty').value;
  end;
end;

procedure Tfrmesewn.DBGridEh1Columns6EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  //
end;

procedure Tfrmesewn.FormShow(Sender: TObject);
begin
  //dbgrideh1.columns[5].caption:='';
  userlog:='';
  if (frmmain.eng_chn01.ItemIndex=1) then begin
    with query10 do begin
      close;
      params.Clear;
      commandtext:='select * from tbl_ver_engchn where f_mod=''GAI'' and f_frm=''QNSEW'' order by f_lbl_grd,f_xh';
      open;
      first;
      while not eof do begin
        if (fieldbyname('f_lbl_grd').value='LABEL') then begin
          if fieldbyname('f_xh').value=1 then frmesewn.label7.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=2 then frmesewn.label1.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=3 then frmesewn.label2.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=4 then frmesewn.label4.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=5 then frmesewn.label5.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=6 then frmesewn.label6.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=7 then frmesewn.bitbtn1.Caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=8 then frmesewn.bitbtn2.Caption:=fieldbyname('f_chn').value
        end else if (fieldbyname('f_lbl_grd').value='GRID') then begin
          if fieldbyname('f_xh').value=1 then frmesewn.DBGridEh1.Columns[0].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=2 then frmesewn.DBGridEh1.Columns[1].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=3 then frmesewn.DBGridEh1.Columns[2].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=4 then frmesewn.DBGridEh1.Columns[3].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=5 then frmesewn.DBGridEh1.Columns[4].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=6 then frmesewn.DBGridEh1.Columns[5].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=7 then frmesewn.DBGridEh1.Columns[6].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=8 then frmesewn.DBGridEh1.Columns[7].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=9 then frmesewn.DBGridEh1.Columns[8].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=10 then frmesewn.DBGridEh1.Columns[9].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=11 then frmesewn.DBGridEh1.Columns[10].Title.caption:=fieldbyname('f_chn').value
          else if fieldbyname('f_xh').value=12 then frmesewn.DBGridEh1.Columns[11].Title.caption:=fieldbyname('f_chn').value;
        end;
        application.ProcessMessages;
        next;
      end;
    end;
  end;
end;

end.
 