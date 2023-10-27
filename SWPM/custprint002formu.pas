unit custprint002formu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, myChkBox, ppStrtch, ppMemo, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  DBClient, ppViewr, ppParameter;

type
  Tfrmcustprint002 = class(TForm)
    Query2: TClientDataSet;
    DataSource2: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel13: TppLabel;
    ppShape2: TppShape;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel29: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel30: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel31: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel62: TppLabel;
    cust03: TppLabel;
    ppLabel63: TppLabel;
    ppLabel66: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine15: TppLine;
    ppLabel74: TppLabel;
    ppLabel44: TppLabel;
    ppLine19: TppLine;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLine20: TppLine;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel110: TppLabel;
    ppLabel93: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel125: TppLabel;
    ppLabel70: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLine24: TppLine;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLine39: TppLine;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel195: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape9: TppShape;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText91: TppDBText;
    ppDBText113: TppDBText;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppDBText22: TppDBText;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppDBText19: TppDBText;
    ppDBText13: TppDBText;
    ppDBText122: TppDBText;
    ppDBText124: TppDBText;
    ppLine28: TppLine;
    ppLine31: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppDBText127: TppDBText;
    ppDBText275: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine27: TppLine;
    title001: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText1: TppDBText;
    ppLabel27: TppLabel;
    ppLabel22: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel28: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine18: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine25: TppLine;
    ppLabel38: TppLabel;
    ppLabel43: TppLabel;
    ppLabel45: TppLabel;
    ppDBText2: TppDBText;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppDBMemo3: TppDBMemo;
    ppDBMemo4: TppDBMemo;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppDBMemo5: TppDBMemo;
    ppDBMemo6: TppDBMemo;
    ppLine26: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine32: TppLine;
    ppLabel67: TppLabel;
    ppLabel75: TppLabel;
    ppDBText16: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLine35: TppLine;
    ppShape1: TppShape;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppDBMemo7: TppDBMemo;
    ppDBMemo8: TppDBMemo;
    ppDBMemo9: TppDBMemo;
    ppDBMemo10: TppDBMemo;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppDBMemo11: TppDBMemo;
    ppDBMemo12: TppDBMemo;
    ppLabel78: TppLabel;
    ppMemo1: TppMemo;
    ppDBText5: TppDBText;
    ppLabel81: TppLabel;
    procedure ppReport2PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcustprint002: Tfrmcustprint002;

implementation

uses mainformu, custprintformu, shv_custformu, custctformu;

{$R *.dfm}

procedure Tfrmcustprint002.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
 