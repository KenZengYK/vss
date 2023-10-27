unit lineeff_summaryformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppClass, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppVar,
  ppPrnabl, ppCache, ppProd, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient,
  ppViewr, ppParameter;

type
  Tfrmlineeff_summary = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    Query2: TClientDataSet;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    tittle01: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel11: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    dt001: TppLabel;
    title001: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    rk001: TppLabel;
    rk002: TppLabel;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel14: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape2: TppShape;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    lbl002: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel39: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    rk101: TppLabel;
    rk102: TppLabel;
    ppDBText34: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel16: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape3: TppShape;
    ppLabel18: TppLabel;
    ppLabel27: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    lbl003: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    subtitle002: TppLabel;
    ppSubReport5: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppShape7: TppShape;
    ppLabel9: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    lbl004: TppLabel;
    ppLabel92: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel104: TppLabel;
    ppLabel106: TppLabel;
    ppHeaderBand7: TppHeaderBand;
    ppDetailBand7: TppDetailBand;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel15: TppLabel;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    lbl001: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel68: TppLabel;
    ppLabel75: TppLabel;
    ppLabel77: TppLabel;
    ppLabel79: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    Query3: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline2: TppDBPipeline;
    Query4: TClientDataSet;
    DataSource3: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    Query5: TClientDataSet;
    DataSource4: TDataSource;
    ppDBPipeline4: TppDBPipeline;
    ppLabel5: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel21: TppLabel;
    Query6: TClientDataSet;
    DataSource5: TDataSource;
    ppDBPipeline5: TppDBPipeline;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppShape4: TppShape;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand7BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlineeff_summary: Tfrmlineeff_summary;

implementation

uses mainformu, analysisformu;

{$R *.dfm}

procedure Tfrmlineeff_summary.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmlineeff_summary.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if query1.fieldbyname('aqty').value>90.00 then begin
    ppdbtext3.Font.Color:=clGreen;
    ppdbtext4.Font.Color:=clGreen;
    ppdbtext5.Font.Color:=clGreen;
    rk001.Font.color:=clGreen;
    ppdbtext3.Font.Style:=[fsBold];
    ppdbtext4.Font.Style:=[fsBold];
    ppdbtext5.Font.Style:=[fsBold];
    rk001.Font.Style:=[fsBold];
  end else if query1.fieldbyname('aqty').value<75.00 then begin
    ppdbtext3.Font.Color:=clRed;
    ppdbtext4.Font.Color:=clRed;
    ppdbtext5.Font.Color:=clRed;
    rk001.Font.Color:=clRed;
    ppdbtext3.Font.Style:=[];
    ppdbtext4.Font.Style:=[];
    ppdbtext5.Font.Style:=[];
    rk001.Font.Style:=[];
  end else begin
    ppdbtext3.Font.Color:=clBlack;
    ppdbtext4.Font.Color:=clBlack;
    ppdbtext5.Font.Color:=clBlack;
    rk001.Font.Color:=clBlack;
    ppdbtext3.Font.Style:=[];
    ppdbtext4.Font.Style:=[];
    ppdbtext5.Font.Style:=[];
    rk001.Font.Style:=[];
  end;
  if query1.fieldbyname('diff').value>90.00 then begin
    //ppdbtext3.Font.Color:=clGreen;
    //ppdbtext4.Font.Color:=clGreen;
    ppdbtext6.Font.Color:=clGreen;
    rk002.Font.Color:=clGreen;
    //ppdbtext3.Font.Style:=[fsBold];
    //ppdbtext4.Font.Style:=[fsBold];
    ppdbtext6.Font.Style:=[fsBold];
    rk002.Font.Style:=[fsBold];
  end else if query1.fieldbyname('diff').value<75.00 then begin
    ppdbtext6.Font.Color:=clRed;
    rk002.Font.Color:=clRed;
    ppdbtext6.Font.Style:=[];
    rk002.Font.Style:=[];
  end else begin
    ppdbtext6.Font.Color:=clBlack;
    rk002.Font.Color:=clBlack;
    ppdbtext6.Font.Style:=[];
    rk002.Font.Style:=[];
  end;
  
  if query1.fieldbyname('rk1').value<>0 then rk001.Caption:='('+query1.fieldbyname('rk1').asstring+')'
  else rk001.Caption:='';
  if query1.fieldbyname('rk2').value<>0 then rk002.Caption:='('+query1.fieldbyname('rk2').asstring+')'
  else rk002.Caption:='';
end;

procedure Tfrmlineeff_summary.ppDetailBand2BeforePrint(Sender: TObject);
begin
  if query3.fieldbyname('aqty').value>90.00 then begin
    ppdbtext10.Font.Color:=clGreen;
    ppdbtext12.Font.Color:=clGreen;
    rk101.Font.Color:=clGreen;
    ppdbtext10.Font.Style:=[fsBold];
    ppdbtext12.Font.Style:=[fsBold];
    rk101.Font.Style:=[fsBold];
  end else if query3.fieldbyname('aqty').value<75.00 then begin
    ppdbtext10.Font.Color:=clRed;
    ppdbtext12.Font.Color:=clRed;
    rk101.Font.Color:=clRed;
    ppdbtext10.Font.Style:=[];
    ppdbtext12.Font.Style:=[];
    rk101.Font.Style:=[];
  end else begin
    ppdbtext10.Font.Color:=clBlack;
    ppdbtext12.Font.Color:=clBlack;
    rk101.Font.Color:=clBlack;
    ppdbtext10.Font.Style:=[];
    ppdbtext12.Font.Style:=[];
    rk101.Font.Style:=[];
  end;
  if query3.fieldbyname('diff').value>90.00 then begin
    //ppdbtext10.Font.Color:=clGreen;
    ppdbtext13.Font.Color:=clGreen;
    rk102.Font.Color:=clGreen;
    //ppdbtext10.Font.Style:=[fsBold];
    ppdbtext13.Font.Style:=[fsBold];
    rk102.Font.Style:=[fsBold];
  end else if query3.fieldbyname('diff').value<75.00 then begin
    ppdbtext13.Font.Color:=clRed;
    rk102.Font.Color:=clRed;
    ppdbtext13.Font.Style:=[];
    rk102.Font.Style:=[];
  end else begin
    ppdbtext13.Font.Color:=clBlack;
    rk102.Font.Color:=clBlack;
    ppdbtext13.Font.Style:=[];
    rk102.Font.Style:=[];
  end;
  if query3.fieldbyname('rk1').value<>0 then rk101.Caption:='('+query3.fieldbyname('rk1').asstring+')'
  else rk101.Caption:='';
  if query3.fieldbyname('rk2').value<>0 then rk102.Caption:='('+query3.fieldbyname('rk2').asstring+')'
  else rk102.Caption:='';
end;

procedure Tfrmlineeff_summary.ppDetailBand3BeforePrint(Sender: TObject);
begin
  if query4.fieldbyname('aqty').value>90.00 then begin
    ppdbtext16.Font.Color:=clGreen;
    ppdbtext16.Font.Style:=[fsBold];
  end else if query4.fieldbyname('aqty').value<75.00 then begin
    ppdbtext16.Font.Color:=clRed;
    ppdbtext16.Font.Style:=[];
  end else begin
    ppdbtext16.Font.Color:=clBlack;
    ppdbtext16.Font.Style:=[];
  end;
  if query4.fieldbyname('diff').value>90.00 then begin
    ppdbtext17.Font.Color:=clGreen;
    ppdbtext17.Font.Style:=[fsBold];
  end else if query4.fieldbyname('diff').value<75.00 then begin
    ppdbtext17.Font.Color:=clRed;
    ppdbtext17.Font.Style:=[];
  end else begin
    ppdbtext17.Font.Color:=clBlack;
    ppdbtext17.Font.Style:=[];
  end;
end;

procedure Tfrmlineeff_summary.ppDetailBand7BeforePrint(Sender: TObject);
begin
  if query5.fieldbyname('aqty').value>90.00 then begin
    ppdbtext48.Font.Color:=clGreen;
    ppdbtext48.Font.Style:=[fsBold];
  end else if query5.fieldbyname('aqty').value<75.00 then begin
    ppdbtext48.Font.Color:=clRed;
    ppdbtext48.Font.Style:=[];
  end else begin
    ppdbtext48.Font.Color:=clBlack;
    ppdbtext48.Font.Style:=[];
  end;
  if query5.fieldbyname('diff').value>90.00 then begin
    ppdbtext49.Font.Color:=clGreen;
    ppdbtext49.Font.Style:=[fsBold];
  end else if query5.fieldbyname('diff').value<75.00 then begin
    ppdbtext49.Font.Color:=clRed;
    ppdbtext49.Font.Style:=[];
  end else begin
    ppdbtext49.Font.Color:=clBlack;
    ppdbtext49.Font.Style:=[];
  end;
end;

end.
 