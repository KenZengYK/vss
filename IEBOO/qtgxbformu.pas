unit qtgxbformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ppMemo, ppCtrls, ppBands, myChkBox, ppStrtch,
  ppRegion, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppViewr, Txcomp;

type
  Tfrmqtgxb = class(TForm)
    DataSource1: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    zygx: TClientDataSet;
    ClientDataSet1: TClientDataSet;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    title001: TppLabel;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppRegion1: TppRegion;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel13: TppLabel;
    ppLine16: TppLine;
    ppLabel12: TppLabel;
    ppLine4: TppLine;
    ppLabel6: TppLabel;
    ppLabel14: TppLabel;
    ppLabel24: TppLabel;
    ppLine7: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine12: TppLine;
    ppLine50: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel11: TppLabel;
    ppLine51: TppLine;
    ppLabel31: TppLabel;
    ppLine53: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLabel62: TppLabel;
    ppDBText30: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppRegion2: TppRegion;
    ppDBText5: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLine6: TppLine;
    ppDBText10: TppDBText;
    ppLine13: TppLine;
    ppLine17: TppLine;
    ppDBText11: TppDBText;
    ppDBText16: TppDBText;
    ppDBText4: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText8: TppDBText;
    ppLine52: TppLine;
    ppLine56: TppLine;
    ppDBText9: TppDBText;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppRegion3: TppRegion;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine15: TppLine;
    ppLine18: TppLine;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel61: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppRegion4: TppRegion;
    ppLine5: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine14: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel1: TppLabel;
    ppLine22: TppLine;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLine23: TppLine;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmqtgxb: Tfrmqtgxb;

implementation

uses scgxu, cbgxu, scgxdyu, dlu;

{$R *.dfm}

procedure Tfrmqtgxb.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
