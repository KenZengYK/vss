unit wwcmju;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppVar, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Db, DBTables, ppViewr,
  DBClient;

type
  Tfrmwwcmj = class(TForm)
    DataSource1: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
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
  frmwwcmj: Tfrmwwcmj;

implementation
uses dlu;
{$R *.DFM}

procedure Tfrmwwcmj.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

end.
