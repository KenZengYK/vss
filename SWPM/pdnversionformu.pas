unit pdnversionformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppVar, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, ppViewr, ppParameter;

type
  Tfrmpdnversion = class(TForm)
    Query1: TClientDataSet;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    pdn001: TppLabel;
    ppLabel20: TppLabel;
    exfty001: TppLabel;
    ppLabel21: TppLabel;
    fty001: TppLabel;
    ppLabel22: TppLabel;
    wk001: TppLabel;
    ppLabel23: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel24: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel4: TppLabel;
    voyn001: TppLabel;
    ppDBText1: TppDBText;
    qty001: TppLabel;
    qty002: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpdnversion: Tfrmpdnversion;

implementation

uses mainformu, pdnformu;

{$R *.dfm}

procedure Tfrmpdnversion.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  Tppviewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

end.
 