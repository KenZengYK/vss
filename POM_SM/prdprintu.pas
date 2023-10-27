unit prdprintu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppClass, ppCtrls, ppPrnabl, ppStrtch, ppRegion, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Db, DBTables, ppViewr;

type
  Tfrmprdprint = class(TForm)
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppRegion5: TppRegion;
    ppShape33: TppShape;
    ppDBText94: TppDBText;
    ldwz: TppDBText;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppLine2: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLine6: TppLine;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppRegion6: TppRegion;
    ppLabel52: TppLabel;
    ppDBText116: TppDBText;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppRegion4: TppRegion;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppShape32: TppShape;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel43: TppLabel;
    ppLabel45: TppLabel;
    ppLabel47: TppLabel;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLine5: TppLine;
    ppLabel28: TppLabel;
    ppDBText59: TppDBText;
    ppLabel29: TppLabel;
    ppDBText60: TppDBText;
    ppLabel30: TppLabel;
    ppDBText61: TppDBText;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprdprint: Tfrmprdprint;

implementation
uses siztblu;
{$R *.DFM}

procedure Tfrmprdprint.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport1.PreviewForm.Viewer).zoompercentage:=100;
end;

end.
