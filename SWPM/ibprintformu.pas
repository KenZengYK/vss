unit ibprintformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppPrnabl, ppCtrls, ppBands, ppCache, ppViewr, ppVar, ppParameter;

type
  Tfrmibprint = class(TForm)
    Query1: TClientDataSet;
    DataSource1: TDataSource;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    fty001: TppLabel;
    ppLabel4: TppLabel;
    pdn001: TppLabel;
    ppDBPipeline1: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
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
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel25: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
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
    ppLabel26: TppLabel;
    ppDBText12: TppDBText;
    ppLabel27: TppLabel;
    manifest001: TppLabel;
    Query2: TClientDataSet;
    Query3: TClientDataSet;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmibprint: Tfrmibprint;

implementation

uses mainformu, pdnformu;

{$R *.dfm}

procedure Tfrmibprint.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmibprint.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  with query2 do begin
    close;
    params.clear;
    params.createparam(ftinteger,'x1',ptinput);
    params.createparam(ftinteger,'x2',ptinput);
    commandtext:='select voyn from tbl_pdn_voyage_m where seq=:x1 and seq1=:x2';
    params[0].asinteger:=query1.fieldbyname('seq').value;
    params[1].asinteger:=query1.fieldbyname('seq1').value;
    open;
    if not fieldbyname('voyn').isnull then manifest001.Caption:=fieldbyname('voyn').value
    else manifest001.Caption:='';
  end;
end;

end.
 