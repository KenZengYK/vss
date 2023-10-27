unit cgfxu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppProd, ppClass, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE, Db,
  DBTables, ppStrtch, ppMemo, ppCtrls, ppVar, ppPrnabl, ppBands, ppCache, ppViewr;

type
  Tfrmcgfx = class(TForm)
    Query1: TQuery;
    Query2: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppBDEPipeline2: TppBDEPipeline;
    ppReport1: TppReport;
    ppReport2: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel4: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppShape1: TppShape;
    ppDBText2: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppDBMemo3: TppDBMemo;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText12: TppDBText;
    ppLabel25: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel26: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppShape2: TppShape;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppShape3: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine4: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel35: TppLabel;
    ppDBText21: TppDBText;
    ppLabel36: TppLabel;
    ppDBMemo4: TppDBMemo;
    ppLabel37: TppLabel;
    ppDBText22: TppDBText;
    ppLabel38: TppLabel;
    ppDBText23: TppDBText;
    ppLabel39: TppLabel;
    ppDBText24: TppDBText;
    ppShape4: TppShape;
    ppLabel40: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel45: TppLabel;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLabel44: TppLabel;
    ppLabel46: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppDBText28: TppDBText;
    ppLabel49: TppLabel;
    ppDBText29: TppDBText;
    ppLine24: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcgfx: Tfrmcgfx;

implementation

{$R *.DFM}

procedure Tfrmcgfx.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.WindowState:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmcgfx.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppreport2.previewform.WindowState:=wsmaximized;
  tppviewer(ppreport2.previewform.viewer).zoompercentage:=100;
end;

end.
