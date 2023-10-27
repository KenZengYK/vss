unit pringjhlu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, ppDBBDE, ppViewr, ppVar, Db, DBTables, ppParameter;

type
  Tfrmpringjhl = class(TForm)
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
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
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
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
    ppDBText12: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText13: TppDBText;
    ppLabel21: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel22: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    pjjhl: TppLabel;
    zhjs: TppDBCalc;
    bcjs: TppDBCalc;
    pjdbxl: TppLabel;
    zjs: TppLabel;
    khtd: TppLabel;
    sctd: TppLabel;
    sclh: TppLabel;
    Query1: TQuery;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDBText14: TppDBText;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    kdjs: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpringjhl: Tfrmpringjhl;

implementation
uses zjhlu;
{$R *.DFM}

procedure Tfrmpringjhl.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).ZoomPercentage:=100;
end;

procedure Tfrmpringjhl.ppSummaryBand1BeforePrint(Sender: TObject);
var
  a,b,c,d,e,f,g:integer;
begin
  with query1 do begin
    close;
    sql.clear;
    sql.add('select sum(phiszjs) as zjs,sum(zktd) as khtd,sum(kdjs) as kdjs,sum(sctd) as sctd,sum(sclhjs) as sclh from tempshedule');
    open;
  end;
  zjs.Caption:=query1.fieldbyname('zjs').value;
  khtd.caption:=query1.fieldbyname('khtd').value;
  kdjs.caption:=query1.fieldbyname('kdjs').value;
  sctd.caption:=query1.fieldbyname('sctd').value;
  sclh.caption:=query1.fieldbyname('sclh').value;
  a:=strtoint(zjs.caption);
  b:=strtoint(khtd.caption);
  c:=strtoint(sctd.caption);
  d:=strtoint(sclh.caption);
  g:=strtoint(kdjs.caption);
  e:=zhjs.value;
  f:=bcjs.Value;
  pjjhl.caption:=formatfloat('#0.0',a*100/(a+b+c+d+g));
  if f>0 then
  pjdbxl.caption:=formatfloat('#0.0',e*100/f)
  else pjdbxl.caption:='0.0';
end;

end.
