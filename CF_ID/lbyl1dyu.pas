unit lbyl1dyu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppMemo, ppCtrls, ppStrtch, ppRegion, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Db,
  DBClient, ppViewr, ppParameter;

type
  Tfrmlbyl1dy = class(TForm)
    lbwlm: TClientDataSet;
    DataSource1: TDataSource;
    ppBDEPipeline3: TppBDEPipeline;
    ppReport2: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel28: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel29: TppLabel;
    ppDBText23: TppDBText;
    ppLabel30: TppLabel;
    ppLabel34: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel74: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel58: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel77: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppRegion2: TppRegion;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape18: TppShape;
    ppShape17: TppShape;
    wl: TppDBText;
    ppShape20: TppShape;
    ppShape5: TppShape;
    ppShape7: TppShape;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppDBMemo3: TppDBMemo;
    ppDBText2: TppDBText;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppShape2: TppShape;
    ppDBText3: TppDBText;
    ppShape3: TppShape;
    ppDBText4: TppDBText;
    ppLabel7: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel10: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    procedure ppReport2PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlbyl1dy: Tfrmlbyl1dy;

implementation
uses dlu, jhmjfxformu;
{$R *.DFM}

procedure Tfrmlbyl1dy.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppreport2.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport2.previewform.viewer).zoompercentage:=100;
end;

end.
