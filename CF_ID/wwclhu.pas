unit wwclhu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppViewr, DBClient;

type
  Tfrmwwclh = class(TForm)
    DataSource1: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand1: TppDetailBand;
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
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    query3: TClientDataSet;
    query4: TClientDataSet;
    query1: TClientDataSet;
    query2: TClientDataSet;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwwclh: Tfrmwwclh;

implementation
uses dlu;
{$R *.DFM}

procedure Tfrmwwclh.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

end.
