unit lbyldyu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppMemo, ppCtrls, ppStrtch, ppRegion, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Db,
  DBClient, ppViewr, ppParameter;

type
  Tfrmlbyldy = class(TForm)
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
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    utl001: TppLabel;
    Query1: TClientDataSet;
    ppReport1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel11: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel12: TppLabel;
    ppDBText3: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLabel25: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppRegion1: TppRegion;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape6: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape19: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppDBText4: TppDBText;
    ppShape24: TppShape;
    ppDBMemo4: TppDBMemo;
    ppDBMemo5: TppDBMemo;
    ppDBMemo6: TppDBMemo;
    ppDBText5: TppDBText;
    ppDBText11: TppDBText;
    ppDBText20: TppDBText;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable6: TppSystemVariable;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText12: TppDBText;
    ppDBText15: TppDBText;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel24: TppLabel;
    ppLabel32: TppLabel;
    ppLabel35: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    shp001: TppLabel;
    ppShape21: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel23: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel31: TppLabel;
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlbyldy: Tfrmlbyldy;

implementation
uses mainu;
{$R *.DFM}

procedure Tfrmlbyldy.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppreport2.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport2.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmlbyldy.ppDetailBand1BeforePrint(Sender: TObject);
begin
  with query1 do begin
    close;
    params.clear;
    //params.createparam(ftstring,'x1',ptinput);
    //params.createparam(ftstring,'x2',ptinput);
    commandtext:='select sum(ybl*lbzs)/sum(lbzs) as x1 from cut_lbjh1 where prjno='''+lbwlm.fieldbyname('prjno').value+''' and wl='''+lbwlm.fieldbyname('wl').value+''' and lbzs>0';
    //params[0].asstring:=lbwlm.fieldbyname('prjno').value;
    //params[1].asstring:=lbwlm.fieldbyname('wl').value;
    open;
    if not fieldbyname('x1').isnull then utl001.Caption:=formatfloat('0.00',fieldbyname('x1').value)
    else utl001.Caption:='0.00';
  end;
end;

procedure Tfrmlbyldy.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.PreviewForm.WindowState:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmlbyldy.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  shp001.caption:='0.00';
  if ppdbcalc1.value>0 then shp001.caption:=formatfloat('0.00',ppdbcalc4.value*100.00/ppdbcalc1.value);
end;

end.
