unit dfgxly1u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls, Db, DBTables, ppPrnabl, ppClass, ppCtrls,
  ppDB, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  ppDBBDE, ppVar, ppStrtch, ppRegion, ppMemo, ppViewr, Txcomp, DBClient,
  MConnect, SConnect;

type
  Tfrmdfgxly1 = class(TForm)
    DataSource1: TDataSource;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppRegion1: TppRegion;
    ppRegion2: TppRegion;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppDBText5: TppDBText;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    zygx: TClientDataSet;
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    ppLine4: TppLine;
    ppLine7: TppLine;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure zygxAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdfgxly1: Tfrmdfgxly1;

implementation

uses scgxu, cbgxu, scgxdyu, dlu;

{$R *.DFM}

procedure Tfrmdfgxly1.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppreport1.previewform.windowstate:=wsmaximized;
  tppviewer(ppreport1.previewform.viewer).zoompercentage:=100;
end;

procedure Tfrmdfgxly1.zygxAfterOpen(DataSet: TDataSet);
begin
  (zygx.fieldbyname('mb') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('zsl') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('mbxs') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('wcqj') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('gzxl') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('dj') as tfloatfield).displayformat:='#####0.000;;''';
  (zygx.fieldbyname('sxrs') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('dz') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('sz') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('rz') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('snz') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('jg') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('rs') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('qt') as tfloatfield).displayformat:='#####0.00;;''';
  (zygx.fieldbyname('sdz') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('ssz') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('ssb') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('sjg') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('sdc') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('srs') as tintegerfield).displayformat:='#####0;;''';
  (zygx.fieldbyname('sqt') as tintegerfield).displayformat:='#####0;;''';
end;

end.
