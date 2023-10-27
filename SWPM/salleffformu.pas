unit salleffformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppDB, TeEngine, TeeDBEdit, TeeDBCrossTab, Series, ExtCtrls,
  TeeProcs, Chart, DBChart, ppComm, ppRelatv, ppDBPipe, DB, DBClient,
  ppViewr, ppParameter;

type
  Tfrmsalleff = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    DBChart1: TDBChart;
    DBCrossTabSource1: TDBCrossTabSource;
    DBChart2: TDBChart;
    DBChart3: TDBChart;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    title001: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    ppLine1: TppLine;
    x001: TppLabel;
    ppImage2: TppImage;
    ppImage3: TppImage;
    query3: TClientDataSet;
    query4: TClientDataSet;
    Series1: TBarSeries;
    DBCrossTabSource2: TDBCrossTabSource;
    Series2: TBarSeries;
    DBCrossTabSource3: TDBCrossTabSource;
    Series4: TBarSeries;
    DBCrossTabSource4: TDBCrossTabSource;
    x002: TppLabel;
    title002: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsalleff: Tfrmsalleff;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmsalleff.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
