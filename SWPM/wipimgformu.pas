unit wipimgformu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppDB, DB, DBClient, ppDBPipe, ppBands, ppClass, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppViewr, ppParameter;

type
  Tfrmwipimg = class(TForm)
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    title001: TppLabel;
    fc01: TppLabel;
    tplant002: TppLabel;
    y01: TppLabel;
    tshop002: TppLabel;
    ppLabel104: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel105: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppShape9: TppShape;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppImage2: TppImage;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText33: TppDBText;
    ppImage1: TppImage;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBPipeline4: TppDBPipeline;
    DataSource4: TDataSource;
    Query7: TClientDataSet;
    y001: TppLabel;
    y002: TppDBText;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmwipimg: Tfrmwipimg;

implementation

uses mainformu;

{$R *.dfm}

procedure Tfrmwipimg.ppDetailBand3BeforePrint(Sender: TObject);
begin
  try
    if not query7.fieldbyname('colimg').isnull then ppimage2.Picture.LoadFromFile(query7.fieldbyname('colimg').value)
    else ppimage2.Picture:=nil;
  except
  end;
end;

procedure Tfrmwipimg.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomPercentage:=100;
end;

procedure Tfrmwipimg.ppGroupHeaderBand2BeforePrint(Sender: TObject);
begin
  try
    if not query7.fieldbyname('chartp').isnull then ppimage1.Picture.LoadFromFile(query7.fieldbyname('chartp').value)
    else ppimage1.Picture:=nil;
  except
  end;
end;

end.
 