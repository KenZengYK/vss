unit SizeReport2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppMemo, ppBands, ppCtrls, ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache,
  ppComm, ppRelatv, ppProd, ppReport,ppViewr, variants;

type
  TFrmSizeReport2 = class(TForm)
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppRegion1: TppRegion;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppShape2: TppShape;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppLabel311: TppLabel;
    ppLabel312: TppLabel;
    ppLine109: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel129: TppLabel;
    ppLine12: TppLine;
    ppLabel308: TppLabel;
    ppRegion28: TppRegion;
    ppRegion30: TppRegion;
    ppShape60: TppShape;
    ppShape61: TppShape;
    ppShape62: TppShape;
    ppLine32: TppLine;
    ppLabel330: TppLabel;
    ppLabel331: TppLabel;
    ppLabel332: TppLabel;
    ppLabel333: TppLabel;
    ppLabel334: TppLabel;
    ppShape80: TppShape;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppDetailBand1: TppDetailBand;
    ppRegion2: TppRegion;
    ppShape12: TppShape;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppShape13: TppShape;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    ppDBText19: TppDBText;
    ppDBText22: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText98: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppRegion3: TppRegion;
    ppLabel26: TppLabel;
    ppMemo1: TppMemo;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSizeReport2: TFrmSizeReport2;

implementation

uses siztblu, print2u;

{$R *.DFM}

procedure TFrmSizeReport2.ppSummaryBand1BeforePrint(Sender: TObject);
var
  i:integer;
begin
  ppmemo1.Lines.clear;
  for i:=0 to frmsiztbl.DBMemo1.Lines.Count-1 do
  begin
    if not (frmsiztbl.dbmemo1.lines[i]=null) then
    ppmemo1.Lines.add(frmsiztbl.dbmemo1.lines[i]);
  end;
end;

procedure TFrmSizeReport2.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if length(ppdbtext13.text)>4 then ppdbtext13.font.size:=6 else ppdbtext13.font.size:=8;
  if length(ppdbtext16.text)>4 then ppdbtext16.font.size:=6 else ppdbtext16.font.size:=8;
  if length(ppdbtext19.text)>4 then ppdbtext19.font.size:=6 else ppdbtext19.font.size:=8;
  if length(ppdbtext22.text)>4 then ppdbtext22.font.size:=6 else ppdbtext22.font.size:=8;
  if length(ppdbtext47.text)>4 then ppdbtext47.font.size:=6 else ppdbtext47.font.size:=8;
  if length(ppdbtext48.text)>4 then ppdbtext48.font.size:=6 else ppdbtext48.font.size:=8;
  if length(ppdbtext49.text)>4 then ppdbtext49.font.size:=6 else ppdbtext49.font.size:=8;
  if length(ppdbtext50.text)>4 then ppdbtext50.font.size:=6 else ppdbtext50.font.size:=8;
  //if length(ppdbtext51.text)>4 then ppdbtext51.font.size:=6 else ppdbtext51.font.size:=8;
  //if length(ppdbtext52.text)>4 then ppdbtext52.font.size:=6 else ppdbtext52.font.size:=8;
  //if length(ppdbtext53.text)>4 then ppdbtext53.font.size:=6 else ppdbtext53.font.size:=8;
  //if length(ppdbtext54.text)>4 then ppdbtext54.font.size:=6 else ppdbtext54.font.size:=8;
  //if length(ppdbtext55.text)>4 then ppdbtext55.font.size:=6 else ppdbtext55.font.size:=8;
  //if length(ppdbtext56.text)>4 then ppdbtext56.font.size:=6 else ppdbtext56.font.size:=8;
  //if length(ppdbtext57.text)>4 then ppdbtext57.font.size:=6 else ppdbtext57.font.size:=8;
  //if length(ppdbtext58.text)>4 then ppdbtext58.font.size:=6 else ppdbtext58.font.size:=8;
end;

procedure TFrmSizeReport2.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState:=wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).zoompercentage:=100;
end;

end.
